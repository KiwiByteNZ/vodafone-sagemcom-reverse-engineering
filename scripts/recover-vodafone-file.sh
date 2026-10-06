#!/bin/sh
set -eu

remote=$1
output=$2
size=$3
host=${4:-192.168.100.11}
raw="${output}.raw"
err="${output}.stderr"

mkdir -p "$(dirname "$output")"
{
    sleep 3
    printf '/bin/cat %s; echo RAWEND; exit\n' "$remote"
    sleep 3
} | timeout 18 ./vodafone-direct-shell.sh "$host" 9536 >"$raw" 2>"$err" || true

python3 - "$raw" "$output" "$size" <<'PY'
from pathlib import Path
import sys

raw, output, expected = sys.argv[1], sys.argv[2], int(sys.argv[3])
data = Path(raw).read_bytes()
offset = data.find(b"\x7fELF")
if offset < 0 or len(data) < offset + expected:
    raise SystemExit(f"incomplete transfer: bytes={len(data)} ELF={offset} expected={expected}")
Path(output).write_bytes(data[offset:offset + expected])
print(f"recovered {output}: offset={offset} size={expected}")
PY
