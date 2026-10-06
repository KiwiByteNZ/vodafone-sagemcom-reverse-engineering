#!/usr/bin/env python3
"""Bounded, non-destructive POST schema probe for the local Vodafone STB."""

from __future__ import annotations

import http.client
import json
import time
from pathlib import Path


HOST = "192.168.50.181"
PORT = 3030
ENDPOINTS = ["/control/rcu", "/control/volume", "/currentmedia", "/"]
PAYLOADS = [
    {"command": "value/string"},
    {"command": "__INVALID__"},
    {"command": "noop"},
    {"command": "status"},
    {"command": "get"},
    {"command": ""},
    {"command": {"value": "__INVALID__"}},
    {"command": ["__INVALID__"]},
    {"command": None},
    {"commands": ["__INVALID__"]},
    {"field": "value"},
    {"value": "__INVALID__"},
    {"action": "__INVALID__"},
    {"type": "__INVALID__", "value": "__INVALID__"},
]


def send(path: str, payload: object, content_type: str = "application/json") -> dict[str, object]:
    raw = json.dumps(payload, separators=(",", ":")).encode()
    conn = http.client.HTTPConnection(HOST, PORT, timeout=4)
    try:
        conn.request("POST", path, raw, {"Content-Type": content_type, "Accept": "application/json, */*"})
        response = conn.getresponse()
        body = response.read(65536)
        return {
            "endpoint": path,
            "content_type": content_type,
            "payload": payload,
            "status": response.status,
            "reason": response.reason,
            "headers": dict(response.getheaders()),
            "body": body.decode("utf-8", "replace"),
        }
    except Exception as exc:
        return {"endpoint": path, "content_type": content_type, "payload": payload, "error": f"{type(exc).__name__}: {exc}"}
    finally:
        conn.close()


def main() -> int:
    results = []
    for endpoint in ENDPOINTS:
        for payload in PAYLOADS:
            result = send(endpoint, payload)
            results.append(result)
            print(endpoint, json.dumps(payload, separators=(",", ":")), "=>", result.get("status", result.get("error")))
            time.sleep(0.05)
    # Content-type differential for the exact user-supplied shape only.
    for content_type in ("text/plain", "application/x-www-form-urlencoded", "application/json; charset=utf-8"):
        result = send("/control/rcu", {"command": "value/string"}, content_type)
        results.append(result)
        print("/control/rcu", content_type, "=>", result.get("status", result.get("error")))
    Path("vodafone-post-fuzz.json").write_text(json.dumps(results, indent=2) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
