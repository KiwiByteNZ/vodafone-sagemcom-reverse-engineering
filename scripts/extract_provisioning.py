#!/usr/bin/env python3
"""Losslessly carve and inventory provisioning material from this SPI image."""

from __future__ import annotations

import hashlib
import json
import re
import sys
from pathlib import Path


REGION_START = 0x147000
REGION_END = 0x160000
WINDOW_END = 0x159000


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def genuine_gsdc(data: bytes) -> list[tuple[int, int, bytes]]:
    found: list[tuple[int, int, bytes]] = []
    pos = REGION_START
    while True:
        pos = data.find(b"GSDC", pos, REGION_END)
        if pos < 0:
            return found
        length = int.from_bytes(data[pos + 0x34 : pos + 0x38], "big")
        value = data[pos + 0x38 : pos + 0x38 + length]
        printable = bool(value) and sum(32 <= b < 127 or b in (9, 10, 13) for b in value) / len(value) >= 0.8
        if 0 < length <= 0x200 and pos + 0x38 + length <= REGION_END and printable:
            found.append((pos, length, value.rstrip(b"\0")))
        pos += 4


def main() -> int:
    if len(sys.argv) not in (2, 3):
        print(f"usage: {Path(sys.argv[0]).name} FLASH [OUTPUT_DIR]", file=sys.stderr)
        return 2
    source = Path(sys.argv[1])
    output = Path(sys.argv[2]) if len(sys.argv) == 3 else Path("MX25L12865E-provisioning")
    data = source.read_bytes()
    if len(data) < REGION_END:
        raise SystemExit("input is shorter than the provisioning region")
    output.mkdir(parents=True, exist_ok=True)

    region = data[REGION_START:REGION_END]
    (output / "provisioning-full-0x147000-0x15ffff.bin").write_bytes(region)

    records = genuine_gsdc(data)
    manifest: dict[str, object] = {
        "source": str(source.resolve()),
        "region": {
            "start": f"0x{REGION_START:06X}",
            "end_exclusive": f"0x{REGION_END:06X}",
            "length": len(region),
            "sha256": sha256(region),
        },
        "boundary_warning": "Per-record files begin at genuine GSDC markers and end at the next genuine marker (last at 0x159000). Outer proprietary record boundaries are not fully decoded; use the full-region carve for lossless evidence.",
        "records": [],
    }

    text_lines: list[str] = []
    for match in re.finditer(rb"[ -~]{8,}", region):
        text_lines.append(f"0x{REGION_START + match.start():06X}\t{match.group().decode('ascii')}")
    (output / "printable-metadata.txt").write_text("\n".join(text_lines) + "\n")

    for index, (start, name_length, name_raw) in enumerate(records, 1):
        end = records[index][0] if index < len(records) else WINDOW_END
        chunk = data[start:end]
        name = name_raw.decode("ascii", "replace")
        record_file = f"record-{index:02d}-0x{start:06x}.bin"
        name_file = f"record-{index:02d}-first-text.bin"
        (output / record_file).write_bytes(chunk)
        (output / name_file).write_bytes(data[start + 0x38 : start + 0x38 + name_length])
        manifest["records"].append(
            {
                "index": index,
                "gsdc_offset": f"0x{start:06X}",
                "window_end_exclusive": f"0x{end:06X}",
                "window_length": len(chunk),
                "window_file": record_file,
                "window_sha256": sha256(chunk),
                "first_text_length": name_length,
                "first_text": name,
                "first_text_file": name_file,
            }
        )

    (output / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(f"wrote {len(records)} GSDC record windows and full region to {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
