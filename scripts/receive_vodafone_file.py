#!/usr/bin/env python3
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

OUT = Path(__file__).resolve().parent / "vodafone-custom-page" / "uploads"
ALLOWED = {
    "/libavformat.so.57.71.100": "libavformat.so.57.71.100",
    "/libavcodec.so.57.89.100": "libavcodec.so.57.89.100",
}


class Handler(BaseHTTPRequestHandler):
    def do_PUT(self):
        name = ALLOWED.get(self.path)
        length = int(self.headers.get("Content-Length", "-1"))
        if name is None or length < 0 or length > 32 * 1024 * 1024:
            self.send_error(400)
            return
        data = self.rfile.read(length)
        if len(data) != length:
            self.send_error(400)
            return
        (OUT / name).write_bytes(data)
        self.send_response(201)
        self.end_headers()

    def log_message(self, fmt, *args):
        print(fmt % args, flush=True)


ThreadingHTTPServer(("0.0.0.0", 18080), Handler).serve_forever()
