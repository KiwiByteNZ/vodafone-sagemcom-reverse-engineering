# Vodafone TV / Sagemcom reverse-engineering

Research notes, source code, scripts, activation tooling, and selected
static-analysis output for the legacy Vodafone TV Sagemcom set-top-box
platform.

## How this research started

After several years of trying to understand these Vodafone TV boxes, I still
could not get past the network activation screen. I dumped the boot ROM and
eMMC, but that did not immediately provide a way forward because much of the
firmware appeared to be encrypted or otherwise protected.

I kept watching Facebook Marketplace, second-hand dealers, and Trade Me—the
New Zealand equivalent of eBay—for more hardware. I must have bought at least
ten Vodafone TV boxes, but every one I tried was stuck at activation. Recently,
I finally obtained a box that had already been activated. Its applications no
longer worked, but it could get past the network setup screen and reach the
main interface. That made it much more useful for comparing behaviour and
studying what a successfully activated box retained.

I ran an Nmap scan and noticed TCP port `9536` was open. Connecting to it with
Netcat exposed a JavaScript-based command console. After a great deal of trial
and error, I found the `/help` menu. It listed commands including `/cat`,
`/env`, `/text`, and `/screen`, along with controls for screen resolution and
other functions.

The `/cat` command was the breakthrough. I tried:

```text
/cat /etc/passwd
```

The console returned the contents of the file. I then began testing the limits
of the restricted command environment and discovered that the `/cat` command
could be followed by a shell pipe. The command-injection pattern was:

```sh
/cat /dev/null | /bin/sh -c 'COMMAND'
```

I was able to turn this command-injection primitive into an interactive shell.
It was not root—the process inherited the Netflix/Gibbon user identity, UID
`1007`—but it was finally a foot in the door.

After a few more long nights of tracing services and testing the boundaries
between UID 1007 and the privileged system components, I managed to turn that
initial access into a root Telnet shell. That was roughly where my active work
on the boxes stopped. I am releasing my notes, scripts, and research in the
hope that they help someone else continue the work and find new ways to
repurpose this discontinued hardware instead of letting it become e-waste.

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
