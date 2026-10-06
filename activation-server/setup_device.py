#!/usr/bin/env python3
"""Create a local, per-installation Vodafone TV activation reference."""

import argparse
import json
from pathlib import Path
import secrets


OUTPUT = Path(__file__).with_name("vodafone-reference-private.json")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--serial", required=True, help="serial printed by the box")
    parser.add_argument("--udid", required=True, help="UDID reported by the box")
    args = parser.parse_args()

    reference = {
        "serial": args.serial,
        "udid": args.udid,
        "tokens": {
            "refresh": {
                "expiration": "2256574249",
                "token": secrets.token_hex(16),
            }
        },
    }
    OUTPUT.write_text(json.dumps(reference, indent=2) + "\n")
    OUTPUT.chmod(0o600)
    print(f"Created private local activation reference: {OUTPUT}")


if __name__ == "__main__":
    main()
