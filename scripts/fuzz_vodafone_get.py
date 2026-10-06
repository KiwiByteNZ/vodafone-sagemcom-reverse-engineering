#!/usr/bin/env python3
"""Bounded read-only endpoint and query discovery for the local Vodafone STB."""

from __future__ import annotations

import http.client
import json
import time
from pathlib import Path
from urllib.parse import urlencode


HOST = "192.168.50.181"
PORT = 3030
QUERY_ENDPOINTS = ["/eit/present", "/eit/follow", "/signal/info", "/system/logo", "/system/download"]
PARAMETERS = [
    "id", "uid", "index", "service", "service_id", "serviceId", "channel",
    "channel_id", "channelId", "event", "event_id", "eventId", "source",
    "frontend", "tuner", "tuner_id", "network", "network_id", "frequency",
    "name", "type", "format", "size", "width", "height", "position",
    "stream_position", "path", "file", "resource",
]
VALUES = ["0", "__INVALID__"]
READ_ONLY_PATHS = [
    "/system/info", "/system/device", "/system/model", "/system/release",
    "/system/uptime", "/system/health", "/system/capabilities",
    "/system/config", "/system/settings", "/system/network",
    "/network/status", "/network/info", "/network/devices", "/network/wifi",
    "/signal", "/signal/status", "/signal/quality", "/signal/strength",
    "/eit", "/eit/services", "/eit/channels", "/eit/events", "/eit/now",
    "/eit/next", "/schedules", "/schedules/status", "/recordings",
    "/media", "/media/current", "/playback/status", "/control/status",
    "/control", "/volume", "/rcu", "/logs", "/logs/status",
    "/authorization", "/authorization/status", "/events/status",
    "/api", "/api/version", "/health", "/status", "/version",
]


def get(path: str) -> dict[str, object]:
    conn = http.client.HTTPConnection(HOST, PORT, timeout=3)
    try:
        conn.request("GET", path, headers={"Accept": "application/json, */*"})
        response = conn.getresponse()
        body = response.read(65536)
        return {
            "path": path,
            "status": response.status,
            "reason": response.reason,
            "headers": dict(response.getheaders()),
            "body": body.decode("utf-8", "replace"),
        }
    except Exception as exc:
        return {"path": path, "error": f"{type(exc).__name__}: {exc}"}
    finally:
        conn.close()


def healthy() -> bool:
    return get("/system/version").get("status") == 200


def main() -> int:
    results: list[dict[str, object]] = []
    baselines = {endpoint: get(endpoint).get("status") for endpoint in QUERY_ENDPOINTS}
    for endpoint in QUERY_ENDPOINTS:
        for parameter in PARAMETERS:
            for value in VALUES:
                path = endpoint + "?" + urlencode({parameter: value})
                result = get(path)
                results.append(result)
                if result.get("status") != baselines[endpoint]:
                    print("QUERY DIFFERENTIAL", path, "=>", result.get("status", result.get("error")), repr(result.get("body", "")[:200]))
                time.sleep(0.015)
        if not healthy():
            print("STOP: health check failed after", endpoint)
            Path("vodafone-get-fuzz.json").write_text(json.dumps(results, indent=2) + "\n")
            return 2

    for path in READ_ONLY_PATHS:
        result = get(path)
        results.append(result)
        if result.get("status") != 404:
            print("PATH HIT", path, "=>", result.get("status", result.get("error")), repr(result.get("body", "")[:300]))
        time.sleep(0.02)
    Path("vodafone-get-fuzz.json").write_text(json.dumps(results, indent=2) + "\n")
    print("requests", len(results), "healthy", healthy())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
