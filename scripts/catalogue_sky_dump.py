#!/usr/bin/env python3
"""Read-only exporter for a Kaon/Sky HDD dump."""
import argparse, csv, sqlite3, binascii, re

def text(v):
    if v is None: return ""
    if isinstance(v, str) and len(v) % 2 == 0 and all(c in "0123456789abcdefABCDEF" for c in v):
        try: v = binascii.unhexlify(v)
        except Exception: return v
    if isinstance(v, bytes):
        try:
            raw = v[6:] if len(v) > 6 else v
            return re.sub(r"^\[\[[\da-fA-F]+\]\]", "", raw.decode("utf-8", "replace"))
        except Exception: return v.hex()
    return str(v)

def main():
    p=argparse.ArgumentParser(description="Export readable programme metadata without modifying the dump")
    p.add_argument("dump", help="path to hdd_dump")
    p.add_argument("-o", "--output", default="kaon_recordings.csv")
    a=p.parse_args(); db=sqlite3.connect(a.dump + "/FSN_DATA/PCAT.DB")
    q="""select EVENT_ID,CHANNEL_NAME,LOGICAL_CHANNEL,DURATION,EVENT_NAME,SYNOPSIS,ASSET_URI,THUMBNAIL_URI from ITEM where EVENT_NAME is not null order by START_TIME,EVENT_ID"""
    with open(a.output,"w",newline="",encoding="utf-8") as f:
        w=csv.writer(f); w.writerow(["event_id","channel","channel_number","duration","title","synopsis","asset_uri","thumbnail_uri"])
        for row in db.execute(q): w.writerow([text(x) for x in row])
    print(f"Wrote {a.output}")

if __name__ == "__main__": main()
