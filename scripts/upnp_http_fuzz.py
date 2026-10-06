#!/usr/bin/env python3
import socket
import urllib.request

HOST = "192.168.50.131"
PORT = 49153

CASES = [
    ("baseline", b"GET /description0.xml HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("head", b"HEAD /description0.xml HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("options", b"OPTIONS / HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("trace", b"TRACE / HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("put", b"PUT /probe HTTP/1.1\r\nHost: box\r\nContent-Length: 1\r\nConnection: close\r\n\r\nx"),
    ("delete", b"DELETE /description0.xml HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("patch", b"PATCH /probe HTTP/1.1\r\nHost: box\r\nContent-Length: 0\r\nConnection: close\r\n\r\n"),
    ("connect", b"CONNECT 127.0.0.1:80 HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("absolute-form", b"GET http://example.invalid/ HTTP/1.1\r\nHost: example.invalid\r\nConnection: close\r\n\r\n"),
    ("http10-no-host", b"GET /description0.xml HTTP/1.0\r\nConnection: close\r\n\r\n"),
    ("http11-no-host", b"GET /description0.xml HTTP/1.1\r\nConnection: close\r\n\r\n"),
    ("duplicate-host", b"GET /description0.xml HTTP/1.1\r\nHost: one\r\nHost: two\r\nConnection: close\r\n\r\n"),
    ("invalid-percent", b"GET /%zz HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("encoded-nul", b"GET /%00 HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("double-slash", b"GET //etc/passwd HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("long-path-4k", b"GET /" + b"A" * 4096 + b" HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
    ("long-header-8k", b"GET / HTTP/1.1\r\nHost: box\r\nX-Probe: " + b"A" * 8192 + b"\r\nConnection: close\r\n\r\n"),
    ("duplicate-cl-equal", b"POST /probe HTTP/1.1\r\nHost: box\r\nContent-Length: 0\r\nContent-Length: 0\r\nConnection: close\r\n\r\n"),
    ("duplicate-cl-conflict", b"POST /probe HTTP/1.1\r\nHost: box\r\nContent-Length: 0\r\nContent-Length: 1\r\nConnection: close\r\n\r\nx"),
    ("empty-chunked", b"POST /probe HTTP/1.1\r\nHost: box\r\nTransfer-Encoding: chunked\r\nConnection: close\r\n\r\n0\r\n\r\n"),
    ("cl-and-chunked", b"POST /probe HTTP/1.1\r\nHost: box\r\nContent-Length: 5\r\nTransfer-Encoding: chunked\r\nConnection: close\r\n\r\n0\r\n\r\n"),
    ("lf-only", b"GET /description0.xml HTTP/1.1\nHost: box\nConnection: close\n\n"),
    ("unknown-method", b"FROB / HTTP/1.1\r\nHost: box\r\nConnection: close\r\n\r\n"),
]


def transact(request):
    with socket.create_connection((HOST, PORT), timeout=3) as sock:
        sock.settimeout(3)
        sock.sendall(request)
        data = b""
        while len(data) < 65536:
            try:
                block = sock.recv(4096)
            except socket.timeout:
                break
            if not block:
                break
            data += block
        return data


for index, (name, request) in enumerate(CASES, 1):
    try:
        response = transact(request)
        first_line = response.splitlines()[0] if response else b"no-response"
        print(f"{index:02d} {name:24s} bytes={len(response):5d} status={first_line[:100].decode('latin1', 'replace')}")
    except Exception as error:
        print(f"{index:02d} {name:24s} REQUEST_FAILURE={error}")
    with urllib.request.urlopen(f"http://{HOST}:{PORT}/description0.xml", timeout=3) as health:
        print(f"   health HTTP={health.status} bytes={len(health.read())}")

print(f"completed {len(CASES)} cases")
