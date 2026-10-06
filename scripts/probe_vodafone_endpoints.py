#!/usr/bin/env python3
"""Read-only inventory of the Vodafone STB HTTP service."""

from __future__ import annotations

import http.client
import json
import sys
import argparse
from pathlib import Path


HOST = "192.168.50.181"
PORT = 3030
TIMEOUT = 3
MAX_BODY = 1024 * 1024
ENDPOINTS = [
    "/logs/debug", "/logs/streaming", "/authorization/token",
    "/authorization/users", "/control/rcu", "/control/volume", "/events",
    "/eit/epgdb", "/eit/present", "/eit/follow", "/signal/info",
    "/schedules/recordings", "/network/interfaces", "/system/version",
    "/system/parentalcode", "/system/logo", "/system/download",
    "/system/time", "/system/requests", "/system/status", "/desc.xml",
    "/currentmedia", "/",
]


def request(method: str, path: str) -> dict[str, object]:
    conn = http.client.HTTPConnection(HOST, PORT, timeout=TIMEOUT)
    result: dict[str, object] = {"method": method, "path": path}
    try:
        conn.request(method, path, headers={"Accept": "application/json, */*"})
        response = conn.getresponse()
        body = response.read(MAX_BODY)
        result.update(
            status=response.status,
            reason=response.reason,
            headers=dict(response.getheaders()),
            body_length=len(body),
            body=body.decode("utf-8", "replace"),
            truncated=len(body) == MAX_BODY,
        )
    except Exception as exc:
        result["error"] = f"{type(exc).__name__}: {exc}"
    finally:
        conn.close()
    return result


def main() -> int:
    global HOST
    parser = argparse.ArgumentParser()
    parser.add_argument("--host", default=HOST)
    parser.add_argument("--output", default="vodafone-endpoint-probe.json")
    parser.add_argument("--include-token", action="store_true")
    args = parser.parse_args()
    HOST = args.host
    output = Path(args.output)
    results = []
    endpoints = ENDPOINTS if args.include_token else [p for p in ENDPOINTS if p != "/authorization/token"]
    for path in endpoints:
        for method in ("GET", "HEAD", "OPTIONS"):
            item = request(method, path)
            results.append(item)
            print(method, path, item.get("status", item.get("error")))
    output.write_text(json.dumps({"host": HOST, "port": PORT, "results": results}, indent=2) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
