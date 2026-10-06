#!/usr/bin/env python3
import pathlib
import random
import struct
import zlib

OUT = pathlib.Path("corpus/generated")
SEED = pathlib.Path("corpus/seed.mp3").read_bytes()


def syncsafe(value):
    return bytes(((value >> 21) & 0x7f, (value >> 14) & 0x7f,
                  (value >> 7) & 0x7f, value & 0x7f))


def tag(version, body, flags=0):
    return b"ID3" + bytes((version, 0, flags)) + syncsafe(len(body)) + body


def frame23(name, payload, flags=0):
    return name + struct.pack(">I", len(payload)) + struct.pack(">H", flags) + payload


def frame24(name, payload, flags=0):
    return name + syncsafe(len(payload)) + struct.pack(">H", flags) + payload


def write(name, data):
    (OUT / name).write_bytes(data[:131072])


OUT.mkdir(parents=True, exist_ok=True)
audio = SEED[SEED.find(b"\xff\xfb"):]
if not audio:
    audio = SEED

# Exercise compressed-ID3 handling with contradictory, but bounded, expanded sizes.
for declared in (0, 1, 4, 31, 255, 4096, 32768, 65536):
    compressed = zlib.compress(b"A" * 64)
    payload = struct.pack(">I", declared) + compressed
    write(f"compressed_{declared}.mp3",
          tag(3, frame23(b"TIT2", payload, 0x0080)) + audio)

# Later-fixed USLT and PRIV error paths, including short and missing delimiters.
uslt_payloads = (b"", b"\x00", b"\x00eng", b"\x01eng\xff",
                 b"\x03engtitle\x00lyrics", b"\xffeng" + b"A" * 257)
for index, payload in enumerate(uslt_payloads):
    write(f"uslt_{index}.mp3", tag(4, frame24(b"USLT", payload)) + audio)
for index, payload in enumerate((b"", b"owner", b"owner\x00", b"owner\x00data")):
    write(f"priv_{index}.mp3", tag(4, frame24(b"PRIV", payload)) + audio)

# MPEG/Xing/VBRI and truncation boundary cases.
for length in range(0, min(len(SEED), 512), 7):
    write(f"truncate_{length:04d}.mp3", SEED[:length])
for marker in (b"Xing", b"Info", b"VBRI"):
    for offset in (4, 13, 21, 32, 36, 120):
        data = bytearray(audio[:512])
        if len(data) < offset + 64:
            data.extend(b"\x00" * (offset + 64 - len(data)))
        data[offset:offset + 4] = marker
        data[offset + 4:offset + 64] = b"\xff" * 60
        write(f"{marker.decode().lower()}_{offset}.mp3", bytes(data))

# Reproducible mutations retain enough valid structure to reach deep parsing.
rng = random.Random(0x2043)
for case in range(5000):
    data = bytearray(SEED)
    for _ in range(1 + rng.randrange(12)):
        operation = rng.randrange(4)
        position = rng.randrange(max(1, len(data)))
        if operation == 0 and data:
            data[position] ^= 1 << rng.randrange(8)
        elif operation == 1 and data:
            data[position] = rng.randrange(256)
        elif operation == 2:
            data[position:position] = bytes(rng.randrange(256)
                                             for _ in range(rng.randrange(1, 33)))
        elif data:
            del data[position:position + rng.randrange(1, 33)]
    write(f"mutation_{case:04d}.mp3", bytes(data))

print(len(list(OUT.glob("*.mp3"))))
