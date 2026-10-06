#!/bin/sh
set -eu

mkdir -p findings/logs
tested=0
crashes=0
timeouts=0

for sample in corpus/generated/*.mp3; do
    tested=$((tested + 1))
    name=${sample##*/}
    log="findings/logs/$name.log"
    status=0
    ASAN_OPTIONS=detect_leaks=0:abort_on_error=1:symbolize=1 \
        UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1 \
        timeout 3 ./mp3_asan_harness "$sample" >"$log" 2>&1 || status=$?
    if [ "$status" -eq 124 ]; then
        timeouts=$((timeouts + 1))
        cp "$sample" "findings/timeout-$name"
    elif [ "$status" -ge 128 ] || grep -Eq \
        'AddressSanitizer|runtime error:|UndefinedBehaviorSanitizer' "$log"; then
        crashes=$((crashes + 1))
        cp "$sample" "findings/crash-$name"
    elif [ "$status" -eq 0 ] || [ "$status" -eq 1 ]; then
        rm -f "$log"
    fi
done

printf 'tested=%d crashes=%d timeouts=%d\n' "$tested" "$crashes" "$timeouts"
