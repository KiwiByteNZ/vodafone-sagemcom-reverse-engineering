#!/bin/ash
while true; do
    if test -s /tmp/root-shell.in; then
        IFS= read -r cmd </tmp/root-shell.in
        : >/tmp/root-shell.in
        eval "$cmd" >/tmp/root-shell.out 2>&1
    fi
    /bin/sleep 1
done
