#!/usr/bin/env python3
"""Read-only DIAL app/settings inventory; never sends DELETE or POST."""

from __future__ import annotations

import http.client
import json
import argparse
from pathlib import Path
from urllib.parse import quote


HOST = "192.168.50.181"
APPS = [
    "Netflix", "YouTube", "YouTubeKids", "YouTubeTV", "PrimeVideo",
    "AmazonVideo", "DisneyPlus", "Disney", "AppleTV", "AppleTVPlus",
    "Stan", "Neon", "TVNZ", "TVNZOnDemand", "ThreeNow", "SkyGo",
    "Sky", "Freeview", "BBCiPlayer", "ITV", "Hulu", "HBO", "Max",
    "ParamountPlus", "Twitch", "Spotify", "Vevo", "Plex", "Kodi",
    "VLC", "GooglePlayMovies", "GoogleCast", "Chromecast", "Miracast",
]
PATHS = [
    "/dd.xml", "/apps/", "/device-desc.xml", "/description.xml",
    "/device-description.xml", "/ssdp/device-desc.xml", "/ssdp/dd.xml",
    "/info", "/device-info", "/status", "/health", "/version", "/settings",
    "/config", "/configuration", "/discovery", "/dial", "/dial/", "/upnp",
    "/upnp/", "/upnpdev/desc.xml", "/rootDesc.xml", "/xml/device.xml",
]


def get(port: int, path: str, origin: str | None = None) -> dict[str, object]:
    conn = http.client.HTTPConnection(HOST, port, timeout=3)
    headers = {"Accept": "application/json, text/xml, */*"}
    if origin:
        headers["Origin"] = origin
    try:
        conn.request("GET", path, headers=headers)
        response = conn.getresponse()
        body = response.read(65536)
        return {
            "port": port, "path": path, "status": response.status,
            "headers": dict(response.getheaders()),
            "body": body.decode("utf-8", "replace"),
        }
    except Exception as exc:
        return {"port": port, "path": path, "error": f"{type(exc).__name__}: {exc}"}
    finally:
        conn.close()


def main() -> int:
    global HOST
    parser = argparse.ArgumentParser()
    parser.add_argument("--host", default=HOST)
    parser.add_argument("--output", default="vodafone-dial-app-settings-probe.json")
    args = parser.parse_args()
    HOST = args.host
    results: list[dict[str, object]] = []
    for port in (56789, 56790):
        for path in PATHS:
            result = get(port, path)
            results.append(result)
            if result.get("status") not in (404, 405):
                print("PATH", port, path, result.get("status", result.get("error")))
        for app in APPS:
            path = "/apps/" + quote(app, safe="")
            result = get(port, path)
            results.append(result)
            if result.get("status") != 404:
                print("APP", port, app, result.get("status", result.get("error")), repr(result.get("body", "")[:180]))
        # CORS check only on read-only metadata.
        for origin in ("https://attacker.example", "null"):
            result = get(port, "/apps/Netflix" if port == 56789 else "/dd.xml", origin)
            results.append(result)
            print("CORS", port, origin, result.get("headers", {}).get("Access-Control-Allow-Origin"))
    Path(args.output).write_text(json.dumps(results, indent=2) + "\n")
    print("requests", len(results))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
