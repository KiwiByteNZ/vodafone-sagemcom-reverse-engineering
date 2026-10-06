#!/usr/bin/env python3
import ssl

from intercept_server import Handler, ThreadingHTTPServer


server = ThreadingHTTPServer(("192.168.0.163", 8443), Handler)
context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
context.load_cert_chain("codex-assets.crt", "codex-assets.key")
server.socket = context.wrap_socket(server.socket, server_side=True)
print("HTTPS interception test listening on 192.168.0.163:8443", flush=True)
server.serve_forever()
