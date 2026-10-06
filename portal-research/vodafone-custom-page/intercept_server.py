#!/usr/bin/env python3
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from datetime import datetime, timezone
from threading import Lock
from urllib.error import HTTPError, URLError
from urllib.parse import parse_qs, urlsplit
from urllib.request import Request, urlopen
import base64


ROOT = Path(__file__).resolve().parent
LAUNCHER = ROOT / "vodafone-tv" / "index.html"
TEST_VIDEO = ROOT / "test.mp4"
ENCRYPTED_TEST_VIDEO = ROOT / "encrypted-test.mp4"
PLAYREADY_TEST_VIDEO = ROOT / "playready-encrypted-test.mp4"
CAPTURED_MPD = ROOT / "captured-prime.mpd"
LOCAL_DASH = ROOT / "local-dash"
LOCAL_SINGLE = ROOT / "local-single"
BRIDGE_LOG = ROOT / "bridge-output.log"
BRIDGE_LOG_LOCK = Lock()
UPLOAD_DIR = ROOT / "uploads"
LOCAL_SUBSTITUTION_TEST = False

MPD = b'''<?xml version="1.0" encoding="UTF-8"?>
<MPD xmlns="urn:mpeg:dash:schema:mpd:2011"
     profiles="urn:mpeg:dash:profile:isoff-on-demand:2011"
     type="static"
     mediaPresentationDuration="PT5S"
     minBufferTime="PT1S">
  <Period duration="PT5S">
    <AdaptationSet mimeType="video/mp4" contentType="video">
      <Representation id="local-test" bandwidth="500000"
                      codecs="avc1.42c01e" width="640" height="360">
        <BaseURL>http://192.168.0.163:8888/test.mp4</BaseURL>
      </Representation>
    </AdaptationSet>
  </Period>
</MPD>
'''


class Handler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def send_bytes(self, status, content_type, body):
        self.send_response(status)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()
        if self.command != "HEAD":
            self.wfile.write(body)

    def do_HEAD(self):
        self.do_GET()

    def do_POST(self):
        request_url = urlsplit(self.path)
        if request_url.path != "/upload":
            self.send_bytes(404, "text/plain; charset=utf-8", b"Not found\n")
            return
        try:
            length = int(self.headers.get("Content-Length", "0"))
        except ValueError:
            self.send_bytes(400, "text/plain; charset=utf-8", b"Bad length\n")
            return
        if length < 0 or length > 64 * 1024 * 1024:
            self.send_bytes(413, "text/plain; charset=utf-8", b"Upload too large\n")
            return
        body = self.rfile.read(length)
        name = parse_qs(request_url.query).get("name", ["upload.bin"])[0]
        name = Path(name).name
        UPLOAD_DIR.mkdir(exist_ok=True)
        target = UPLOAD_DIR / name
        target.write_bytes(body)
        print(f"UPLOADED {len(body)} bytes to {target}", flush=True)
        self.send_bytes(200, "text/plain; charset=utf-8", b"saved\n")

    def relay_upstream(self, host, save_mpd=False):
        upstream_url = f"http://{host}{self.path}"
        headers = {
            "User-Agent": self.headers.get("User-Agent", "Mozilla/5.0"),
            "Accept": self.headers.get("Accept", "*/*"),
        }
        if self.headers.get("Range"):
            headers["Range"] = self.headers["Range"]
        try:
            request = Request(upstream_url, headers=headers, method=self.command)
            with urlopen(request, timeout=20) as response:
                body = response.read() if self.command != "HEAD" else b""
                if save_mpd and self.command != "HEAD" and body:
                    CAPTURED_MPD.write_bytes(body)
                    print(
                        f"CAPTURED {len(body)} bytes to {CAPTURED_MPD}",
                        flush=True,
                    )
                self.send_response(response.status)
                self.send_header(
                    "Content-Type",
                    response.headers.get("Content-Type", "application/octet-stream"),
                )
                self.send_header("Content-Length", str(len(body)))
                for name in ("Content-Range", "Accept-Ranges", "ETag", "Last-Modified"):
                    if response.headers.get(name):
                        self.send_header(name, response.headers[name])
                self.end_headers()
                if self.command != "HEAD":
                    self.wfile.write(body)
        except HTTPError as error:
            body = error.read()
            print(f"UPSTREAM HTTP ERROR {error.code} {upstream_url}", flush=True)
            self.send_bytes(error.code, "text/plain; charset=utf-8", body)
        except URLError as error:
            print(f"UPSTREAM ERROR {error} {upstream_url}", flush=True)
            self.send_bytes(502, "text/plain; charset=utf-8", b"Upstream fetch failed\n")

    def do_GET(self):
        host = self.headers.get("Host", "").split(":", 1)[0].lower()
        request_url = urlsplit(self.path)
        path = request_url.path
        print(f"INTERCEPT host={host} path={path}", flush=True)

        if path == "/upload-chunk":
            fields = parse_qs(request_url.query, keep_blank_values=True)
            name = Path(fields.get("name", ["upload.bin"])[0]).name
            index = int(fields.get("index", ["0"])[0])
            data = fields.get("data", [""])[0]
            chunk_dir = UPLOAD_DIR / (name + ".parts")
            chunk_dir.mkdir(parents=True, exist_ok=True)
            (chunk_dir / f"{index:06d}").write_text(data, encoding="ascii")
            self.send_bytes(204, "text/plain", b"")
            return

        if host == "assets.nflxext.com":
            self.send_bytes(200, "application/octet-stream", (ROOT / "nsm_dbus_client.so").read_bytes())
            return

        if host == "localcontrol.netflix.com" and path == "/js/boot.js":
            self.send_bytes(200, "application/octet-stream", (ROOT / "nsm_dbus_client.so").read_bytes())
            return

        if path == "/nsm_dbus_client.so":
            self.send_bytes(200, "application/octet-stream", (ROOT / "nsm_dbus_client.so").read_bytes())
            return

        if path == "/nexus_cap_probe.so":
            self.send_bytes(200, "application/octet-stream", (ROOT / "nexus_cap_probe.so").read_bytes())
            return

        if path == "/nsm-header":
            payload = base64.b64encode((ROOT / "nsm_dbus_client.so").read_bytes()).decode("ascii")
            self.send_response(200)
            self.send_header("X-Codex-Payload", payload)
            self.send_header("Content-Length", "0")
            self.end_headers()
            return

        if path == "/cert-header":
            payload = base64.b64encode((ROOT / "codex-assets.crt").read_bytes()).decode("ascii")
            self.send_response(200)
            self.send_header("X-Codex-Cert", payload)
            self.send_header("Content-Length", "0")
            self.end_headers()
            return

        if path in ("/report", "/bridge-log", "/native-canary"):
            fields = parse_qs(request_url.query, keep_blank_values=True)
            timestamp = datetime.now(timezone.utc).isoformat()
            values = []
            for name, entries in fields.items():
                for value in entries:
                    values.append(f"{name}={value}")
            line = f"{timestamp} client={self.client_address[0]} path={path} " + " | ".join(values)
            with BRIDGE_LOG_LOCK:
                with BRIDGE_LOG.open("a", encoding="utf-8") as log:
                    log.write(line + "\n")
            print(f"BRIDGE {line}", flush=True)
            self.send_bytes(204, "text/plain", b"")
            return

        if path.lower().endswith(".mpd"):
            if LOCAL_SUBSTITUTION_TEST:
                self.send_bytes(
                    200,
                    "application/dash+xml",
                    (LOCAL_SINGLE / "compatible.mpd").read_bytes(),
                )
                print("SUBSTITUTED local DASH manifest", flush=True)
                return
            self.relay_upstream(host, save_mpd=True)
            return

        if path.startswith("/local-dash/"):
            target = LOCAL_DASH / Path(path).name
            if target.is_file():
                content_type = "video/iso.segment" if target.suffix == ".m4s" else "application/octet-stream"
                self.send_bytes(200, content_type, target.read_bytes())
            else:
                self.send_bytes(404, "text/plain; charset=utf-8", b"Not found\n")
            return

        if path.startswith("/local-single/"):
            target = LOCAL_SINGLE / Path(path).name
            if target.is_file():
                self.send_bytes(200, "video/mp4", target.read_bytes())
            else:
                self.send_bytes(404, "text/plain; charset=utf-8", b"Not found\n")
            return

        if host.endswith("akamaized.net") or host.endswith("fastly-edge.com"):
            self.relay_upstream(host)
            return

        if path == "/test.mp4" and TEST_VIDEO.exists():
            body = TEST_VIDEO.read_bytes()
            self.send_bytes(200, "video/mp4", body)
            return

        if path == "/encrypted-test.mp4" and ENCRYPTED_TEST_VIDEO.exists():
            body = ENCRYPTED_TEST_VIDEO.read_bytes()
            self.send_bytes(200, "video/mp4", body)
            return

        if path == "/playready-encrypted-test.mp4" and PLAYREADY_TEST_VIDEO.exists():
            body = PLAYREADY_TEST_VIDEO.read_bytes()
            self.send_bytes(200, "video/mp4", body)
            return

        if path == "/probe.apk":
            self.send_bytes(
                200,
                "application/vnd.android.package-archive",
                b"CODEx invalid APK installer handoff probe\n",
            )
            return

        if path == "/nexus-invalid-probe.b64":
            self.send_bytes(
                200,
                "text/plain; charset=us-ascii",
                (ROOT / "nexus_invalid_probe.b64").read_bytes(),
            )
            return

        if path == "/probe-download.apk":
            body = b"CODEx invalid APK download-manager handoff probe\n"
            self.send_response(200)
            self.send_header("Content-Type", "application/vnd.android.package-archive")
            self.send_header("Content-Disposition", 'attachment; filename="probe.apk"')
            self.send_header("Content-Length", str(len(body)))
            self.end_headers()
            self.wfile.write(body)
            return

        if path == "/vodafone-tv/index.html":
            self.send_bytes(200, "text/html; charset=utf-8", LAUNCHER.read_bytes())
            return

        if path == "/vodafone-tv/cve1646-probe.html":
            self.send_bytes(200, "text/html; charset=utf-8", (ROOT / "vodafone-tv" / "cve1646-probe.html").read_bytes())
            return

        if path == "/vodafone-tv/cve1646-full.html":
            self.send_bytes(200, "text/html; charset=utf-8", (ROOT / "vodafone-tv" / "cve1646-full.html").read_bytes())
            return

        if path == "/vodafone-tv/cve1653-probe.html":
            self.send_bytes(200, "text/html; charset=utf-8", (ROOT / "vodafone-tv" / "cve1653-probe.html").read_bytes())
            return

        if path == "/":
            self.send_bytes(200, "text/html; charset=utf-8", (ROOT / "index.html").read_bytes())
            return

        if path in ("/lifecycle.html", "/bridge-child.html"):
            self.send_bytes(200, "text/html; charset=utf-8", (ROOT / Path(path).name).read_bytes())
            return

        self.send_bytes(404, "text/plain; charset=utf-8", b"Not found\n")


if __name__ == "__main__":
    ThreadingHTTPServer(("192.168.0.163", 8888), Handler).serve_forever()
