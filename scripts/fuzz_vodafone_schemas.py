#!/usr/bin/env python3
"""Bounded differential schema discovery across advertised Vodafone STB routes."""

from __future__ import annotations

import http.client
import itertools
import json
import time
from pathlib import Path
from urllib.parse import urlencode

HOST, PORT = "192.168.50.181", 3030
ENDPOINTS = [
    "/logs/debug", "/logs/streaming", "/authorization/users",
    "/control/rcu", "/control/volume", "/events", "/eit/epgdb",
    "/eit/present", "/eit/follow", "/signal/info", "/schedules/recordings",
    "/network/interfaces", "/system/version", "/system/parentalcode",
    "/system/logo", "/system/download", "/system/time", "/system/requests",
    "/system/status", "/desc.xml", "/currentmedia",
]
QUERY_KEYS = [
    "id", "uid", "index", "service", "service_id", "serviceId", "channel",
    "channel_id", "channelId", "event", "event_id", "eventId", "source",
    "frontend", "tuner", "tuner_id", "network", "network_id", "frequency",
    "name", "type", "format", "position", "stream_position", "cursor",
    "offset", "limit", "path", "file", "resource", "command", "value",
    "code", "token", "user", "user_id", "device", "device_id",
]
BODY_KEYS = [
    "command", "value", "key", "keycode", "code", "token", "id", "uid",
    "type", "action", "state", "volume", "level", "user", "user_id",
    "device", "device_id", "position", "stream_position", "name",
]
SENTINEL = "__INVALID__"


def request(method: str, path: str, payload: dict[str, str] | None = None) -> dict[str, object]:
    conn = http.client.HTTPConnection(HOST, PORT, timeout=3)
    raw = None if payload is None else json.dumps(payload, separators=(",", ":")).encode()
    headers = {"Accept": "application/json, */*"}
    if raw is not None:
        headers["Content-Type"] = "application/json"
    try:
        conn.request(method, path, raw, headers)
        response = conn.getresponse()
        body = response.read(65536)
        return {
            "method": method, "path": path, "payload": payload,
            "status": response.status, "reason": response.reason,
            "headers": dict(response.getheaders()),
            "body": body.decode("utf-8", "replace"),
        }
    except Exception as exc:
        return {"method": method, "path": path, "payload": payload, "error": f"{type(exc).__name__}: {exc}"}
    finally:
        conn.close()


def signature(result: dict[str, object]) -> tuple[object, object]:
    return result.get("status", result.get("error")), result.get("body", "")


def healthy() -> bool:
    return request("GET", "/system/version").get("status") == 200


def main() -> int:
    results: list[dict[str, object]] = []
    differentials: list[dict[str, object]] = []
    get_base = {path: request("GET", path) for path in ENDPOINTS}
    post_base = {path: request("POST", path, {}) for path in ENDPOINTS}

    count = 0
    for endpoint in ENDPOINTS:
        for key in QUERY_KEYS:
            path = endpoint + "?" + urlencode({key: SENTINEL})
            result = request("GET", path)
            results.append(result); count += 1
            if signature(result) != signature(get_base[endpoint]):
                differentials.append(result)
                print("GET DIFF", path, "=>", result.get("status", result.get("error")), repr(result.get("body", "")[:160]))
        if not healthy():
            print("STOP: unhealthy after GET", endpoint); break
    else:
        # POST only where an empty POST does not produce 404/405. Root is not in ENDPOINTS.
        post_targets = [p for p in ENDPOINTS if post_base[p].get("status") not in (404, 405)]
        for endpoint in post_targets:
            for key in BODY_KEYS:
                result = request("POST", endpoint, {key: SENTINEL})
                results.append(result); count += 1
                if signature(result) != signature(post_base[endpoint]):
                    differentials.append(result)
                    print("POST DIFF", endpoint, {key: SENTINEL}, "=>", result.get("status", result.get("error")), repr(result.get("body", "")[:160]))
            # Pair every candidate with command, token, or uid to expose multi-field schemas.
            pairs = set()
            for anchor in ("command", "token", "uid"):
                for other in BODY_KEYS:
                    if anchor != other:
                        pairs.add(tuple(sorted((anchor, other))))
            for first, second in sorted(pairs):
                payload = {first: SENTINEL, second: SENTINEL}
                result = request("POST", endpoint, payload)
                results.append(result); count += 1
                if signature(result) != signature(post_base[endpoint]):
                    differentials.append(result)
                    print("POST DIFF", endpoint, payload, "=>", result.get("status", result.get("error")), repr(result.get("body", "")[:160]))
            if not healthy():
                print("STOP: unhealthy after POST", endpoint); break
            time.sleep(0.03)

    output = {
        "host": HOST, "port": PORT, "request_count": count,
        "get_baselines": get_base, "post_baselines": post_base,
        "differentials": differentials, "results": results,
        "healthy_at_end": healthy(),
    }
    Path("vodafone-schema-fuzz.json").write_text(json.dumps(output, indent=2) + "\n")
    print("requests", count, "differentials", len(differentials), "healthy", output["healthy_at_end"])
    return 0 if output["healthy_at_end"] else 2


if __name__ == "__main__":
    raise SystemExit(main())
