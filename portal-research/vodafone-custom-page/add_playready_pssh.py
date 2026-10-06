#!/usr/bin/env python3
"""Add a top-level PlayReady PSSH box to the local CENC control sample."""

import struct
from pathlib import Path


root = Path(__file__).resolve().parent
source = (root / "encrypted-test.mp4").read_bytes()
xml = (
    '<WRMHEADER xmlns="http://schemas.microsoft.com/DRM/2007/03/PlayReadyHeader" '
    'version="4.0.0.0"><DATA><PROTECTINFO><KEYLEN>16</KEYLEN>'
    '<ALGID>AESCTR</ALGID></PROTECTINFO>'
    '<KID>MyIRAFVEd2aImaq7zN3u/w==</KID>'
    '<CHECKSUM>KpOvXRLUXfs=</CHECKSUM>'
    '<LA_URL>http://192.168.0.163:8888/license</LA_URL>'
    '</DATA></WRMHEADER>'
)
xml_utf16 = xml.encode("utf-16le")
pro = (
    struct.pack("<I", 10 + len(xml_utf16))
    + struct.pack("<HHH", 1, 1, len(xml_utf16))
    + xml_utf16
)
system_id = bytes.fromhex("9a04f07998404286ab92e65be0885f95")
payload = b"\0\0\0\0" + system_id + struct.pack(">I", len(pro)) + pro
pssh = struct.pack(">I4s", 8 + len(payload), b"pssh") + payload

ftyp_size = struct.unpack(">I", source[:4])[0]
if source[4:8] != b"ftyp" or ftyp_size < 8:
    raise SystemExit("unexpected MP4 layout")
(root / "playready-encrypted-test.mp4").write_bytes(
    source[:ftyp_size] + pssh + source[ftyp_size:]
)
print(f"PSSH={len(pssh)} bytes, PRO={len(pro)} bytes, XML={len(xml_utf16)} bytes")
