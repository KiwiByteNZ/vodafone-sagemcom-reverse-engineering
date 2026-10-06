# Vodafone TV / Sagemcom reverse-engineering

Research notes, source code, scripts, activation tooling, and selected
static-analysis output for the legacy Vodafone TV Sagemcom set-top-box
platform.

## How to use a Vodafone TV box after decommissioning

Vodafone TV service in New Zealand has been decommissioned, but the hardware
can still be studied and used in a private lab. This repository documents a
local DMS activation emulator, the box's portal and JavaScript interfaces,
device-control tools, and experiments with locally supplied media.

The most complete reusable path is the
[`activation-server/`](activation-server/) project. It lets an owner point a
box at a local server through the hidden `4242` configuration menu. It does not
restore Vodafone's discontinued service, paid channels, or third-party service
entitlements.

## Bypassing Vodafone TV Error SA005

Error `SA005` is associated with the retired activation path. The local
activation-server research replaces that network dependency for controlled
testing on an owned box. Generate a new per-device reference rather than
copying another unit's token, run the emulator, and configure the local DMS URL
as described in [`activation-server/README.md`](activation-server/README.md).

Results vary by firmware and application catalogue. Reaching the home screen
does not guarantee that discontinued or externally hosted applications will
work. Sanitized results are welcome under the process in
[`CONTRIBUTING.md`](CONTRIBUTING.md).

## Sagemcom DTIW384 UART Pinout and Serial Bootlogs

The target hardware is the Sagemcom DIW/DTIW384 Vodafone TV UHD set-top box.
The public repository currently focuses on software, provisioning-flash, and
network research; an independently verified UART pinout and sanitized serial
bootlog have not yet been published here. Contributions are welcome if they
identify voltage, ground, transmit, and receive pins safely and remove device
identifiers or credentials from boot output.

Do not connect an unknown header directly to an RS-232 port. Confirm the logic
voltage and pin functions with appropriate test equipment first.

## Repository layout

- `notes/` — checkpoints, protocol notes, and audit reports
- `scripts/` — device interaction, probing, test, and root-shell tooling
- `source/` — C, assembly, headers, and analysis helpers
- `reverse-engineering/gibbon/` — Gibbon/JavaScript bridge and console analysis
- `reverse-engineering/webservices/` — middleware and web-service analysis
- `activation-server/` — complete private activation-server implementation
- `portal-research/` — sanitized portal/UI test pages and supporting source
- `ffmpeg-research/` — source for the legacy FFmpeg ASan test harness

## Per-device setup

The activation server includes the application catalogue but not the owner's
live token. Each tester runs `activation-server/setup_device.py` to create a
unique local token using identifiers from their own box. Generated private
references are ignored by Git.

## Private archive

Packet captures, device tokens, additional configurations, certificates and keys,
recovered firmware/proprietary binaries, large generated disassemblies, logs,
and compiled artifacts remain in the larger local private archive:

`../vodafone-reverse-engineering-archive-20261006/vodafone-tv/`

## Responsible use

Use this material only on equipment you own or are authorized to assess. Do not
deploy the test tooling against third-party systems or networks.

See [CONTRIBUTING.md](CONTRIBUTING.md) for the activation test procedure and a
list of useful, safely sanitized results contributors can report.
