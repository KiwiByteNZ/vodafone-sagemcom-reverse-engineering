#!/usr/bin/env python3
"""Small CLI for the Vodafone/Sagemcom STB HTTP service on port 3030."""

from __future__ import annotations

import argparse
import http.client
import json
import sys
from urllib.parse import urlencode


def request(host: str, port: int, method: str, path: str, body: object | None, timeout: float) -> int:
    raw = None if body is None else json.dumps(body).encode()
    headers = {"Accept": "application/json, */*"}
    if raw is not None:
        headers["Content-Type"] = "application/json"
    conn = http.client.HTTPConnection(host, port, timeout=timeout)
    try:
        conn.request(method, path, body=raw, headers=headers)
        response = conn.getresponse()
        payload = response.read()
        print(f"HTTP {response.status} {response.reason}")
        for key, value in response.getheaders():
            print(f"{key}: {value}")
        print()
        if payload:
            try:
                print(json.dumps(json.loads(payload), indent=2))
            except (json.JSONDecodeError, UnicodeDecodeError):
                sys.stdout.buffer.write(payload)
                if not payload.endswith(b"\n"):
                    print()
        return 0 if response.status < 400 else 1
    finally:
        conn.close()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--host", default="192.168.50.181")
    parser.add_argument("--port", type=int, default=3030)
    parser.add_argument("--timeout", type=float, default=10)
    sub = parser.add_subparsers(dest="command", required=True)
    get = sub.add_parser("get")
    get.add_argument("path")
    get.add_argument("--query", action="append", default=[], metavar="KEY=VALUE")
    post = sub.add_parser("post")
    post.add_argument("path")
    post.add_argument("json_body", help="JSON object or array")
    events = sub.add_parser("events")
    events.add_argument("cursor", nargs="?")
    args = parser.parse_args()

    if args.command == "get":
        pairs = [item.split("=", 1) for item in args.query]
        path = args.path + (("?" + urlencode(pairs)) if pairs else "")
        return request(args.host, args.port, "GET", path, None, args.timeout)
    if args.command == "post":
        return request(args.host, args.port, "POST", args.path, json.loads(args.json_body), args.timeout)
    path = "/events"
    if args.cursor:
        path += "?" + urlencode({"stream_position": args.cursor})
    return request(args.host, args.port, "GET", path, None, args.timeout)


if __name__ == "__main__":
    raise SystemExit(main())
