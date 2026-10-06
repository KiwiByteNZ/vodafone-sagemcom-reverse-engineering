#!/bin/sh
set -eu

host="${1:-192.168.100.11}"
port="${2:-9536}"

echo "Persistent Vodafone root command shell ($host)" >&2
echo "Verified through /proc: UID 0, GID 1013, group 0, full capabilities." >&2

while printf 'root# ' >&2 && IFS= read -r command; do
    case "$command" in
        exit|quit) exit 0 ;;
        '') continue ;;
    esac

    octal=$(printf '%s\n' "$command" | od -An -v -to1 |
        tr -s ' ' '\n' | sed '/^$/d;s/^/\\/' | tr -d '\n')

    {
        sleep 1
        printf "printf '%s' >/tmp/root-shell.in\n" "$octal"
        sleep 2
        printf "echo __CODEX_ROOT_BEGIN__; /bin/cat /tmp/root-shell.out; echo __CODEX_ROOT_END__\n"
        sleep 1
    } | timeout 8 ./vodafone-direct-shell.sh "$host" "$port" 2>/dev/null |
        sed -n '/__CODEX_ROOT_BEGIN__/,/__CODEX_ROOT_END__/ {
            /__CODEX_ROOT_BEGIN__/d
            /__CODEX_ROOT_END__/d
            /\/usr\/local\/bin\/netflix \$/d
            p
        }'
done
