# Vodafone TV / Sagemcom reverse-engineering

Research notes, source code, scripts, activation tooling, and selected
static-analysis output for the legacy Vodafone TV Sagemcom set-top-box
platform.

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
