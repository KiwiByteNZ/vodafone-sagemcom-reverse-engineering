#!/usr/bin/env python3
"""Pull a readable STB file through the existing Gibbon/direct-shell socket."""

import argparse
import select
import subprocess
import time
from pathlib import Path

def run_direct(command: str, marker: bytes, host: str, port: int) -> bytes:
    proc = subprocess.Popen(
        ["./vodafone-direct-shell.sh", host, str(port)],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
    )
    assert proc.stdin is not None and proc.stdout is not None
    proc.stdin.write(command.encode())
    proc.stdin.flush()
    data = bytearray()
    deadline = time.monotonic() + 15
    try:
        while marker not in data:
            if time.monotonic() >= deadline:
                raise TimeoutError(f"did not receive {marker!r}")
            ready, _, _ = select.select([proc.stdout], [], [], 0.5)
            if ready:
                part = proc.stdout.read1(65536)
                if not part:
                    raise ConnectionError("direct shell closed")
                data.extend(part)
        return bytes(data)
    finally:
        proc.kill()
        proc.wait()


def pull(host: str, port: int, remote: str, output: Path, size: int) -> None:
    chunk_size = 65536
    offset = output.stat().st_size if output.exists() else 0
    if offset > size:
        raise RuntimeError(f"existing output is larger than requested size: {offset}")
    with output.open("ab") as dst:
        while offset < size:
            count = min(chunk_size, size - offset)
            begin = f"__PULL_BEGIN_{offset}_{count}__".encode()
            marker = f"__PULL_END_{offset}_{count}__".encode()
            command = (
                f"/bin/echo {begin.decode()}; "
                f"/bin/dd if={remote} bs=1 skip={offset} count={count} 2>/dev/null; "
                f"/bin/echo {marker.decode()}\n"
            )
            last_error = None
            for attempt in range(3):
                try:
                    raw = run_direct(command, marker, host, port)
                    break
                except (TimeoutError, ConnectionError) as exc:
                    last_error = exc
                    time.sleep(0.5)
            else:
                raise last_error
            start = raw.find(begin)
            if start < 0:
                raise RuntimeError(f"chunk {offset}: start marker missing")
            start += len(begin)
            if raw[start:start + 2] == b"\r\n":
                start += 2
            elif raw[start:start + 1] == b"\n":
                start += 1
            end = raw.find(marker, start)
            decoded = raw[start:end]
            if len(decoded) != count:
                raise RuntimeError(
                    f"chunk {offset}: expected {count} bytes, decoded {len(decoded)}"
                )
            dst.write(decoded)
            offset += count
            print(f"{offset}/{size}", flush=True)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("remote")
    parser.add_argument("output", type=Path)
    parser.add_argument("size", type=int)
    parser.add_argument("--host", default="192.168.100.11")
    parser.add_argument("--port", type=int, default=9536)
    args = parser.parse_args()
    pull(args.host, args.port, args.remote, args.output, args.size)


if __name__ == "__main__":
    main()
