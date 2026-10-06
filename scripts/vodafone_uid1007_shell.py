#!/usr/bin/env python3
"""Client for the persistent UID-1007 ash process running behind Gibbon."""

import re
import shlex
import socket
import sys
import time

HOST = "192.168.100.11"
PORT = 9536
INPUT = "/tmp/voda_shell.in"
OUTPUT = "/tmp/voda_shell.out"
DONE = re.compile(r"__VODA_DONE_(\d+)__")
LOG_VALUE = re.compile(r"SYSTEM\(warn\): \d+: (.*)")


def console(command: str, wait: float = 0.45) -> str:
    with socket.create_connection((HOST, PORT), timeout=4) as sock:
        sock.settimeout(0.25)
        sock.sendall((command + "\r\n").encode())
        time.sleep(wait)
        result = bytearray()
        while True:
            try:
                part = sock.recv(65536)
            except socket.timeout:
                break
            if not part:
                break
            result.extend(part)
    return result.decode("utf-8", "replace")


def inject(shell_command: str) -> None:
    line = "/cat /dev/null | /bin/sh -c " + shlex.quote(shell_command)
    console(line)


def run(command: str) -> tuple[list[str], int]:
    inject("printf %s " + shlex.quote(command) + " >" + INPUT)
    deadline = time.monotonic() + 15
    while time.monotonic() < deadline:
        time.sleep(0.35)
        raw = console("/cat " + OUTPUT)
        values = LOG_VALUE.findall(raw)
        marker = next((DONE.search(value) for value in values if DONE.search(value)), None)
        if marker:
            output = [value for value in values if not DONE.search(value)]
            return output, int(marker.group(1))
    raise TimeoutError("persistent shell did not return a completion marker")


def main() -> int:
    try:
        probe = console("/cat " + OUTPUT)
    except OSError as exc:
        print(f"Gibbon connection failed: {exc}", file=sys.stderr)
        return 1
    if "READY" not in probe and "__VODA_DONE_" not in probe:
        print("persistent remote shell is not running", file=sys.stderr)
        return 1

    while True:
        try:
            command = input("vodafone(uid1007,persistent)$ ")
        except (EOFError, KeyboardInterrupt):
            print()
            return 0
        if command.strip() in {"exit", "quit"}:
            return 0
        if not command.strip():
            continue
        try:
            output, status = run(command)
        except (OSError, TimeoutError) as exc:
            print(f"shell error: {exc}", file=sys.stderr)
            return 1
        for line in output:
            print(line)
        if status:
            print(f"[exit {status}]")


if __name__ == "__main__":
    raise SystemExit(main())
