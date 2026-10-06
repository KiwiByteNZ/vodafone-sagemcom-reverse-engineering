#!/usr/bin/env python3
"""Continuously watch TCP ports and record short-lived listeners."""

import argparse
import datetime as dt
import socket
import sys
import time


def timestamp():
    return dt.datetime.now(dt.timezone.utc).isoformat(timespec="milliseconds")


def printable(data):
    text = "".join(chr(byte) if 32 <= byte < 127 else "." for byte in data)
    return text[:300]


def emit(message, log_handle=None):
    line = f"{timestamp()} {message}"
    print(line, flush=True)
    if log_handle:
        log_handle.write(line + "\n")
        log_handle.flush()


def check_port(host, port, timeout, probe):
    with socket.create_connection((host, port), timeout=timeout) as connection:
        connection.settimeout(timeout)
        if probe == "http":
            connection.sendall(
                b"GET / HTTP/1.0\r\n"
                + f"Host: {host}\r\n".encode()
                + b"Connection: close\r\n\r\n"
            )
        if probe == "none":
            return b""
        try:
            return connection.recv(1024)
        except socket.timeout:
            return b""


def parse_args():
    parser = argparse.ArgumentParser(
        description="Continuously monitor TCP ports and log open/closed transitions."
    )
    parser.add_argument("--host", default="192.168.50.131")
    parser.add_argument("--ports", nargs="+", type=int, default=[33207, 49834])
    parser.add_argument("--interval", type=float, default=0.25,
                        help="Seconds between scan rounds (default: 0.25)")
    parser.add_argument("--timeout", type=float, default=0.20,
                        help="Per-connection timeout in seconds (default: 0.20)")
    parser.add_argument("--probe", choices=["none", "banner", "http"], default="banner",
                        help="Action after connecting (default: passive banner read)")
    parser.add_argument("--log", help="Append events to this log file")
    parser.add_argument("--heartbeat", type=float, default=60,
                        help="Heartbeat interval in seconds; 0 disables it")
    return parser.parse_args()


def main():
    args = parse_args()
    if args.interval <= 0 or args.timeout <= 0:
        raise SystemExit("--interval and --timeout must be positive")
    for port in args.ports:
        if not 1 <= port <= 65535:
            raise SystemExit(f"invalid TCP port: {port}")

    log_handle = open(args.log, "a", encoding="utf-8") if args.log else None
    states = {port: False for port in args.ports}
    openings = {port: 0 for port in args.ports}
    checks = 0
    started = time.monotonic()
    next_heartbeat = started + args.heartbeat if args.heartbeat else float("inf")

    emit(
        f"START host={args.host} ports={','.join(map(str, args.ports))} "
        f"interval={args.interval}s timeout={args.timeout}s probe={args.probe}",
        log_handle,
    )

    try:
        while True:
            round_started = time.monotonic()
            checks += 1
            for port in args.ports:
                try:
                    banner = check_port(args.host, port, args.timeout, args.probe)
                    is_open = True
                except OSError:
                    banner = b""
                    is_open = False

                if is_open and not states[port]:
                    openings[port] += 1
                    emit(
                        f"OPEN host={args.host} port={port} occurrence={openings[port]} "
                        f"banner_bytes={len(banner)} banner={printable(banner)!r} "
                        f"hex={banner[:64].hex()}",
                        log_handle,
                    )
                elif not is_open and states[port]:
                    emit(f"CLOSED host={args.host} port={port}", log_handle)

                states[port] = is_open

            now = time.monotonic()
            if now >= next_heartbeat:
                elapsed = round(now - started, 1)
                summary = ",".join(
                    f"{port}:{'open' if states[port] else 'closed'} "
                    f"openings={openings[port]}" for port in args.ports
                )
                emit(f"HEARTBEAT elapsed={elapsed}s checks={checks} {summary}", log_handle)
                next_heartbeat = now + args.heartbeat

            delay = args.interval - (time.monotonic() - round_started)
            if delay > 0:
                time.sleep(delay)
    except KeyboardInterrupt:
        elapsed = round(time.monotonic() - started, 1)
        summary = ",".join(f"{port}:{openings[port]}" for port in args.ports)
        emit(f"STOP elapsed={elapsed}s checks={checks} openings={summary}", log_handle)
        return 0
    finally:
        if log_handle:
            log_handle.close()


if __name__ == "__main__":
    sys.exit(main())
