# Vodafone privilege-escalation audit status

The reboot-safe recovery procedure and full working root-shell chain are in
`VODAFONE_ROOT_SHELL_RUNBOOK.md`. After a reboot, run
`./vodafone-root-shell-setup.sh 192.168.100.11 9536`, then
`./vodafone-root-shell.sh 192.168.100.11 9536`.

## Confirmed starting context

- Gibbon command execution runs as UID 1007.
- The NSM D-Bus request sequence can be delivered from UID 1007 with the
  in-memory ARM client.
- `nsm_plugin_start` lacks a caller authorization check, but it selects only
  exact, preconfigured modules and does not accept a command, arguments, or
  environment from the request.

## VCM reconfiguration status (2026-10-04)

- Fresh reboot reliably restores root-owned loopback listeners TCP 2042 and
  2043. A failed `reconfigure_session_manager` attempt terminates VCM, after
  which another reboot is required to restore both listeners.
- The WebSocket transport and fragmentation are confirmed: `vcm.command` with
  `get_backends` returns `["digitalSmith"]` without harming VCM.
- The reconfiguration request requires the complete session-manager object;
  this was confirmed from the offline VCM handler at `0x42c8`.
- The first custom backend had the wrong soft-float ABI. It was rebuilt for
  ARM hard-float/VFP and the device copy was verified byte-for-byte by CRC and
  size (`3645445768`, 3092 bytes).
- Even with the corrected ABI, VCM cannot `dlopen()` the backend from
  `/mnt/datafs/cosmocat` because that writable filesystem is mounted `noexec`.
  No constructor proof or TCP 2323 listener was created.
- Current plan: use the existing UID-1007 DD/in-memory execution primitive to
  create and populate an anonymous executable `memfd`, keep its holder process
  alive, and pass `/proc/<holder-pid>/fd/<memfd-fd>` as the backend `lib_path`.
  This avoids executable mappings from the `noexec` filesystem. The helper is
  `arm_vcm_memfd_host.c` and must be completed/tested before another live VCM
  reconfiguration attempt.
- The memfd holder was subsequently proven working: `/proc/4545/fd/4` exposed
  an exact 3092-byte copy with CRC `3645445768`. A `.so` symlink on datafs to
  that memfd was accepted by the dynamic loader (`--list` succeeded), while a
  raw `/proc/.../fd/...` VCM configuration still ended in controlled failure.
- Offline disassembly at `0x45e0` identified a second backend-contract error:
  VCM calls `backend_init` and treats **zero** as success; the first stub
  returned `1`, causing cleanup and daemon exit. `vcm_backend_shell.c` now
  returns zero. The next attempt must rebuild the hard-float library, populate
  a fresh memfd after reboot, create a `.so` symlink to it, and use the symlink
  as `lib_path`.
- Live retest used the corrected hard-float backend (`backend_init` returns 0),
  a fresh holder at `/proc/3168/fd/4`, and the stable symlink
  `/mnt/datafs/cosmocat/libvcm_backend_memfd.so`. The symlink resolved under
  UID 1007 and matched CRC/size `1641178416 / 3092`; the local dynamic loader
  could inspect it. Root VCM nevertheless exited without creating
  `/tmp/vcm-rootproof` or TCP 2323. Therefore VCM did not reach the library
  constructor. The remaining blocker is cross-process `/proc/<pid>/fd` access
  (procfs/ptrace policy), not ABI, file contents, JSON schema, WebSocket
  framing, or the backend success return. Do not repeat this exact memfd
  symlink request.
- **Current device state after that retest:** VCM ports 2042/2043 are down and
  require a reboot to restore.
- **Current device state:** VCM was stopped by the last failed reconfiguration.
  Reboot the Vodafone box once before the next live test; do not resend the
  filesystem-backed backend request.

## Ruled-out direct routes

- Gibbon `!` and pipe execution retain UID 1007.
- The port-3030 middleware routes examined so far provide no shell sink.
- `/system/download` is an exact three-entry fixed-file whitelist.
- `AuthPairingRequest` only publishes a `swoosh_pair` event.
- `ws-proxyd` follows its PID-file symlink, but the configured service runs as
  UID 1006 (`middleware`), not root.
- `nxserver_ipc` is world-connectable but requires a 72-byte configured
  credential plus the registered operation identifier.
- `/dev/nexus` mapping is constrained to the BMEM/video aperture; no arbitrary
  kernel-memory primitive has been demonstrated.
- `bioman` imports `system()`, but its only call uses the compiled constant
  `stty 115200 -F /dev/ttyS1`; no caller-controlled command reaches it.
- `sysinfod` retrieves each SC-message caller's credentials and applies
  per-tree permission checks before get/add/modify/delete operations. Its IPC
  surface is not an unauthenticated root file-operation primitive.

## Strongest remaining leads

1. Root TCP port 2043 / VCM capture-source parser. The recovered
   `libvcm_capture_sink.so` binds `tcp://127.0.0.1:2043`. Its connection state
   machine accepts a one-byte mode, reads as many as 4096 pathname bytes into
   a bounded stack buffer, NUL-terminates the result, calls
   `open64(caller_path, O_RDONLY)`, and passes the resulting descriptor into
   the capture/FFmpeg source callbacks. The live listener is owned by UID 0 and
   UID 1007 can connect to loopback. This is a confirmed privileged parser
   boundary: a file created by UID 1007 under `/tmp` can be selected for parsing
   by a root process. The pathname read itself is bounded, but malformed media
   reaches the older FFmpeg 57/codec 57 stack in the privileged process. It
   requires a contained reachability harness and offline format-specific audit;
   blind crashing is inappropriate because the listener belongs to an active
   platform service.

   Live reachability test (2026-10-04): the UID 1007 in-memory ARM probe
   connected successfully, wrote mode `1`, then wrote the complete 23-byte
   pathname `/tmp/vcm2043_canary.txt`. The service sent no response within
   1.5 seconds, and its root-owned listening socket (inode 2408) remained
   healthy afterward. Probe log: `s=3`, `c=0`, `m=1`, `w=0x17`, `p=0`,
   `e=0`, followed by `LISTENER_OK 0 2408`. This confirms unprivileged
   delivery into the protocol but, because it is a one-way interface, does
   not by itself prove that the canary was successfully opened or parsed.
   Harness artifacts are `vcm2043_probe.c`, `vcm2043_probe.elf`, and
   `vodafone-vcm2043-probe.sh`.

   Follow-up test (2026-10-04): replaced the text canary with a minimal valid
   52-byte PCM WAV and repeated the mode-1/path transaction. All writes again
   succeeded and the root listener remained healthy; the protocol still sent
   no acknowledgement. Live library symlinks identify the exact parser ABI as
   `libavformat.so.57.71.100`, `libavcodec.so.57.89.100`,
   `libavutil.so.55.58.100`, and `libswresample.so.2.7.100`.

   An instrumented in-memory file-transfer client successfully opened
   `/usr/lib/libavformat.so.57.71.100` as UID 1007 and verified its size as
   1,412,440 bytes. Extraction to the workstation did not complete because
   outbound TCP from the STB cannot reach the workstation on port 18080:
   `connect()` remained blocked both through the apparent gateway address and
   the workstation's LAN address. No device library was altered. Artifacts:
   `vodafone_file_put.c`, `vodafone-file-put.sh`, and
   `receive_vodafone_file.py`.

   Recovery completed by pulling raw, marker-framed chunks over the established
   Gibbon/direct-shell connection with resumable retries (`vodafone_gibbon_pull.py`).
   Exact recovered files and SHA-256 hashes:

   - `libavformat.so.57.71.100` (1,412,440 bytes):
     `8aa87d618acf65d930d44898b130378b5cd519afebc90d2b74e1b62c3c16d2cc`
   - `libavcodec.so.57.89.100` (3,482,560 bytes):
     `1d8dd7034166b36e4dee1d9789c7f08aa8cb1e80b3b237ae5959c7636ff77be1`

   Both validate as stripped 32-bit ARM EABI5 shared objects. The format
   library has NX stack, GNU RELRO, and immediate binding (`BIND_NOW`).

   Parser reachability mapping is in `VCM_PORT2043_PARSER_MAP.md`. The critical
   result is that `libvcmtools.so.0` calls `av_find_input_format("mp3")` before
   constructing its custom 4096-byte AVIO/ring-buffer source. Port 2043 is
   therefore narrowed to MP3 demuxing, ID3/Xing/VBRI handling, the MPEG-audio
   parser, and the native MP3 decoder. Other compiled-in demuxers are not
   selected by this route.

   Offline sanitizer audit completed (2026-10-04). An ASan/UBSan build of
   official FFmpeg `n3.3` matching the target library ABI was exercised through
   a forced-MP3 demux-and-decode harness. A 5,110-file structured and
   deterministic mutation corpus produced zero sanitizer findings, crashes,
   or timeouts. Details and limitations are in
   `VCM_PORT2043_OFFLINE_AUDIT.md`. Port 2043 remains a confirmed privileged
   parser boundary, but currently has no demonstrated memory-corruption or
   root-code-execution primitive and is deprioritized for generic fuzzing.
2. Memory-safety audit of root `bioman` WebSocket/SC-message Bluetooth and
   firmware request handlers. Command injection is ruled out, but complex
   attacker-controlled structures reach native code.
3. Recover the live Nexus kernel module or its firmware copy and inspect the
   generated ioctl handlers for handle/index validation bugs.
4. Audit other root NSM services with accessible IPC, prioritizing services
   that parse variable-length messages or write caller-influenced paths.
5. Revisit NSM only if a configured root module is found whose fixed command
   is present and itself exposes a useful privileged interface. The missing
   `/usr/sbin/telnetd` prevents the current `telnet` module from yielding a
   shell.

## Additional live filesystem findings

The following root-owned runtime directories and files are world-writable:

- `/tmp/factorydata/*`
- `/tmp/hdcp/*.bin`
- `/tmp/playready3/drm.bin`
- `/tmp/widevine/drm.bin`

This is serious integrity exposure for device identity and DRM state, but no
consumer has yet been shown to interpret their contents as executable code or
a command. They are not being modified during the audit.

## UID 1007 / `datafs` writable-surface inventory (2026-10-04)

UID 1007 has supplementary groups `1002 1004 1006 1007 1011 1012 1013`.
GID 1002 is `datafs`, so root:`datafs` mode `0660` files and mode `0770`
directories are writable by the existing Gibbon shell even when they are not
world-writable.

### Already tested or substantially audited

- `/tmp/nxserver_ipc`: recovered and reversed the real root `nxserver` binary,
  proved UID-1007 connectability, reconstructed its 16-byte framing and
  credential checks, and found no unauthenticated shell primitive. Full result
  is in `NXSERVER_IPC_AUDIT.md`.
- `/mnt/datafs/flash/etc/vcm.cfg`: extensively exercised through the root VCM
  2042/2043 service. Filesystem `noexec` and cross-process `/proc/<pid>/fd`
  restrictions prevented loading the custom backend. Do not repeat the exact
  memfd-symlink request recorded above.
- `/mnt/datafs/flash/users.db`: the HTTP `AuthPairingRequest` path was checked
  and did not create users or modify this database. This rules out that pairing
  request as a write/elevation route, but is not a complete audit of every
  native database consumer.
- `/mnt/datafs/MAINTENANCE_CRASH_TIMEOUT`: recovered as an exact 720-byte file
  (`923410690af9af7e52c15fde4d338889b64fbd20821899ed6f3d97e9b5302a60`).
  It contains nine fixed 80-byte binary maintenance/crash records. The exact
  consumer is `/usr/lib/libcustom_voda4k.so.2.2.31`, which was also recovered
  (`360b680762c2807949e9879cd310c6b40ec59ae263872ee04012779cdc4e4e57`).
  Static inspection shows `a+` history-file handling and maintenance/watchdog
  logic, not command, executable, or library-path interpretation. No direct
  shell route is demonstrated.

### Identified but not yet consumer-mapped

- `/tmp/playready/drm.bin` (root, `0666`, 7280 bytes)
- `/tmp/playready3/drm.bin` (root, `0666`, 2096 bytes)
- `/tmp/widevine/drm.bin` (root, `0666`, 784 bytes)
- `/tmp/hdcp/drm.bin`, `/tmp/hdcp/hdcp1x.bin`, and
  `/tmp/hdcp/hdcp22.bin` (root, `0666`)
- `/tmp/scnpm.pid` and `/tmp/scnpm/.scnpm.ipc` (accessible through the `nsm`
  supplementary group)
- `/tmp/ntp.cfg` -> `/etc/sc_net/ntp_diw387_nz.cfg`
- `/mnt/datafs/flash/etc/directive.conf`
- `/mnt/datafs/flash/etc/avio.cfg`
- `/mnt/datafs/flash/etc/nvmcfg.txt` and `nvmcfg.sav`
- `/mnt/datafs/flash/etc/sink.cfg`
- `/mnt/datafs/flash/etc/digitalSmith.cfg`
- `/mnt/datafs/data_reporting/epg_update` and `firmware_update`
- `/mnt/datafs/random-seed`
- `/mnt/datafs/flash/alarms.sq3`, `record.sq3`, and
  `bluetooth/NetApp.db`
- `/mnt/datafs/playready/datastore3x.hds` and `keyhistory3x.dat`
- root:`datafs` Amazon application state and the Opera browser profile under
  `/mnt/datafs/flash/opera_home_default`

These entries are writable integrity/parser surfaces only. None should be
described as a privilege-escalation path until a root consumer is shown to use
attacker-controlled content as a command, executable path, dynamic-library
path, unsafe pathname, or demonstrably vulnerable native input.

### Audit-created files, not original platform leads

- `/mnt/datafs/nsm-client` (5364 bytes, recent audit timestamp)
- `/mnt/datafs/pipeline-test` (14 bytes, recent audit timestamp)
- `/mnt/datafs/cosmocat/codex.cfg`, `arm_ws_rpc`, `librootshell.so`,
  `libvcm_backend_codex.so`, and `libvcm_backend_memfd.so`

Do not treat these as vendor-provided privileged inputs. They were created by
the ongoing audit unless a clean factory image proves otherwise.

There is no `/tmp/player3`; the actual runtime directory is
`/tmp/playready3`.

## `directive.conf` and data-reporting audit (2026-10-04)

### Root `sc-directive` plugin configuration

`/flash` is a symlink to `/mnt/datafs/flash`. Therefore UID 1007 can modify
the live `/flash/etc/directive.conf` through its `datafs` supplementary group.
The current JSON manifest sets `plugins.path` to `/usr/lib/`, disables the AVS
and Nuance plugins, and enables `libscdirective_plugin_digitalSmith.so`.

The exact `/usr/bin/sc-directive` executable was recovered (21,864 bytes,
SHA-256 `c10faecdddb7d4df4950af81b7ad629f390a62c41ba7f7fb402bd3fae85c6b48`).
It accepts `-c <path to configuration file>`, parses `.plugins.path`,
`.plugins.files`, `.enable`, `.name`, `.file`, and `.config`, constructs the
load target as `plugins.path + file`, and calls:

```text
dlopen(attacker_selected_path, RTLD_NOW | RTLD_GLOBAL)
```

It then resolves/calls the plugin interface symbols
`sc_directive_plugin_version`, `sc_directive_init`,
`sc_directive_format_to_sc`, `sc_directive_format_from_sc`,
`sc_directive_command`, and `sc_directive_uninit`. The root-owned mode-0600
`/tmp/directive.pid` supports that this service is launched as root; there is
no dedicated directive account in `/etc/passwd`.

This is a confirmed root dynamic-library-path control primitive. It is not yet
root code execution because every UID-1007-writable filesystem mounted on the
box is `noexec`: `/tmp`, `/dev/shm`, `/mnt/datafs` (and `/flash`), USB,
`/mnt/sda2`, and the writable portal overlay. The squashfs containing
`/usr/lib` is read-only. The already-tested cross-process memfd/symlink route
is additionally blocked by `hidepid=2`/procfs access. The live manifest was not
modified during this audit.

### Data-reporting timestamps

The two files contain only one 25-byte `ctime()` line:

```text
/mnt/datafs/data_reporting/epg_update       Sun Oct  4 19:49:30 2026
/mnt/datafs/data_reporting/firmware_update  Fri Mar  4 02:08:34 2022
```

Their exact consumer is `/usr/bin/data-reporting`, recovered as 54,588 bytes
with SHA-256
`a040f0eb31f2aa6ce0c0b4110c691a8c105cb1ff2c5a92803a70d8b0ffcc2233`.
The service PID file is owned by UID 1006 (`middleware`) rather than root, and
the recorded PID was stale during inspection. Offline disassembly shows
bounded `fgets` reads and timestamp/string conversion. The executable imports
no `system`, `popen`, or `execve`; these two files are status/telemetry inputs,
not command files and not a root boundary.

### Built-in directive plugin follow-up

All three configured plugin libraries were recovered and inspected:

- DigitalSmith: SHA-256
  `cab73597308be33c32f128f164869038ef93f6e44b97e4174d56e505dbe79be8`
- Nuance: SHA-256
  `ba15bb9b900fe450ab28daf6f36d8a712552a8efe973c4b2ca7432542e9cb0e1`
- AVS: SHA-256
  `cb3b809822228e60d496dcfe3ae5b75ce5399974d575041db0d3d5df9cb8df9a`

None imports `system`, `popen`, `execve`, file-opening, sockets, or `dlopen`.
DigitalSmith's plugin initializer merely allocates four bytes and does not use
the attacker-controlled plugin `config` object. AVS initialization is inert,
and Nuance initialization allocates/initializes NLU state. Enabling these
existing plugins or changing their manifest `config` does not provide a shell
or bypass the writable-filesystem `noexec` restriction.

The related VCM backend
`/usr/lib/libvcm_backend_digitalSmith.so.0.0.0` was recovered (SHA-256
`c1a4ba09985277b0f361d7667a8aa6bfea9c2a84420e8751f3fbd7bc54246970`).
It consumes the writable DigitalSmith configuration fields (`protocol`,
`host`, `port`, `path`, `args`, command labels, TLS material, codec,
`rxbuffsz`, and timeouts) through libwebsockets and VCM configuration helpers.
It has no command-execution imports. This is a root network/JSON/parser and
allocation surface, not shell command injection; `rxbuffsz` deserves bounds
review if this backend is revisited.

## Complete writable-input follow-up (2026-10-04)

A fresh live `find` of `/mnt/datafs` and `/tmp` identified three configuration
files omitted from the earlier shortlist:

- `/mnt/datafs/flash/etc/avplayer.cfg` (root:`datafs`, `0660`)
- `/mnt/datafs/flash/etc/playlist1.db` (root:`datafs`, `0660`)
- `/mnt/datafs/flash/etc/rsm/rsm.cfg` (`rsm`:`datafs`, `0660`)

These do not cross the root boundary. NSM launches `aviod` as UID/GID
`middleware` (1006) and `rsm_core` as UID/GID `rsm` (1005). `playlist1.db`
contains media channel/URL definitions and is consumed in the media stack.
The writable keyman asset list and blob are likewise owned and consumed by
UID 1006; `/etc/nsm/nsm_keyman.cfg` explicitly launches keyman as
`middleware:datafs`. Writable Opera profiles, service-worker data, and cached
JavaScript execute in the browser account, not as root.

The NVM files (`nvmcfg.txt` and `nvmcfg.sav`) contain typed network, UI,
parental-control, media, upgrade, and maintenance values. The only path-like
values observed in the live files are the local portal homepage, an empty
timeshift mount path, and an `UPGRADE/TFTP_UPGRADE_URL` value of `empty`.
There is no command, executable, or library-path field in the current schema.

### Root SCNPM IPC audit

`/usr/bin/scnpmd` is launched by NSM as `root:nsm`; its Unix socket
`/tmp/scnpm/.scnpm.ipc` is mode `0770` and UID 1007 is in the `nsm` group.
The exact executable and protocol libraries were recovered:

- `scnpmd`: 26,036 bytes, SHA-256
  `79e7c11e9b544c9883c855e5c9634247f99a3702eb4da5e84e3a6555165e2117`
- `libscnpm.so.2`: 58,568 bytes, SHA-256
  `7b2ad9aa03a66fc80a3293e1d7fb26befdb9a542022079bdf1e5df3fe1324a6d`
- `libscmsg.so.2`: 287,992 bytes, SHA-256
  `26121aa827b139f97057e55d82aa9195b48e0bb54759ca40a2235838ec6d543f`

The interface exposes `npm_set_config`, `npm_enter_state`, `npm_get_state`,
client registration/acceptance, and power-state notifications. Callback
disassembly shows `scmsg_get_credentials()` and `getpwuid()` calls, but their
result is not used as an authorization decision. This is therefore an
accessible, weakly authorized root power-management interface. Its serialized
types contain booleans and bounded power-state/event integers, not strings or
paths. The daemon imports no `system`, `popen`, `execve`, or `dlopen`; its
storage operations use the fixed configured `/dev/mmcblk0` target. No shell,
path injection, or useful memory-corruption primitive was identified, so it
is not currently a privilege-escalation route.

The live IPC permission map also showed that `.scm_mw_api` and `nxserver_ipc`
are world-connectable, while `custom.ipc`, the cosmocat `keyman`/`thor`
sockets, and `sc_bus` are reachable through UID 1007's supplementary groups.
Except for root `nxserver` and root `scnpmd` (audited above), those services
run as non-root platform accounts and do not themselves provide root code
execution.

## Root `sc_net` NTP command-construction lead (2026-10-04)

The complete NSM root-service pass found a new, high-priority candidate in
`/usr/bin/sc_net`. NSM runs it as `root:sc_net`; UID 1007 is a member of the
`sc_net` supplementary group, although the daemon's direct `/tmp/sc_net`
monitor directory is root-only mode `0700`. The exact 202,356-byte executable
was recovered with SHA-256
`26783eb2918004a7742f999b5e2ae24fcda2ea50135662f55fc2fed396bed9ea`.

Static disassembly confirms that its NTP update path allocates a command
starting with the literal:

```text
/usr/bin/ntpdate -p 1 
```

It iterates the configured NTP-server list and appends each server string
without shell-character validation, then passes the finished string to
`net_client_popen`. Reversing `libnet_client.so.4` confirmed that it sends the
string unchanged as IPC message type 13 to root `networkd`; `networkd` imports
libc `popen`, so the downstream execution path has shell semantics.

The caller-controlled transport is also mapped. The recovered
`libsc_net_api_jsx.so.2.1.96` (62,608 bytes) exposes `Set("NETWORK", "SNTP",
server1[, server2])`. Its setter accepts one or two arbitrary strings, copies
each with a 512-byte bound into a fixed 2,148-byte RPC structure, and invokes
the root network service's NTP-set method. The Vodafone portal wraps this as
the native global `sagem.Set`; its JavaScript `wtv.networkManager` uses the
same generic `sagem.Get`/`sagem.Set` bridge. The currently active Netflix
Gibbon context did not load the `sagem` global, so no live payload or config
mutation was performed yet.

The wrapper disassembly also provides a native fallback: after
`sc_bus_init(1, 2, 0)`, it resolves service
`com.sagemcom.stb.network`, then calls vtable offset `0xa8` with the NTP-set
request and method value `0xc00`. Netflix itself already links
`libsc_bus.so.1.1.0`, so a small in-memory UID-1007 client can reach the same
RPC without executing a file from a noexec mount. Before using this route,
recover/audit `libnet_client.so.4` and verify the shell semantics. That audit
is complete as described above.

Live-test status (2026-10-04): a syscall-only ARM D-Bus client successfully
authenticated to `/tmp/sc_bus/sc_bus`, completed `Hello` and `RequestName`, and
sent `NTP_SetConfig` with an `a{sv}` body. The first setter caused
`com.sagemcom.stb.network`/`sc_net` to disappear and did not create the intended
`/tmp/scnet-root-proof` marker. The subsequent restoration call therefore
could not reach the service. Treat this as a service crash or incompatible
setter schema, not as confirmed command execution. Reboot before any further
live test, decode the D-Bus error/reply body, and validate a benign unchanged
server setter before retrying metacharacters.

Follow-up after reboot: the client was rebuilt to send only the unchanged
legitimate value `ntp1.vodafone.co.nz`, with no shell metacharacters and no
second mutation. That benign `NTP_SetConfig` call also made the network service
name disappear. Its 288-byte method message matches GDBus's canonical
`a{sv}` encoding and the daemon itself advertises the `a{sv}` signature. The
first packet read after the call was merely the queued `NameAcquired` signal,
not the method reply. Therefore the immediate blocker is daemon behavior in
the setter (missing caller/session contract or an application bug), not shell
escaping. Do not retry an injection until the setter handler/caller contract
has been recovered statically.

Confirmed root command execution (2026-10-04): static analysis of the real
handler at ELF VMA `0x1d364` showed that `NTP_SetConfig` first consumes a
separate scalar ID and then an array. The correct D-Bus signature is therefore
`ua{sv}`, not `a{sv}`. Sending ID `1` followed by the existing entry returned
status `0` and left `sc_net` healthy. A controlled server value containing a
redirection created `/tmp/scnet-root-proof` as `root:sc_net`, mode `0600`, and
the client then restored `ntp1.vodafone.co.nz`; `NTP_GetList` confirmed the
restored value. This establishes root shell command execution through
`sc_net`/`networkd`.

Shell transport findings: the firmware BusyBox has `ash`/`sh` but no `nc`,
`telnetd`, or `chmod`. Root can open `/mnt/usb0/busybox-armv7l`, but invoking it
through `/lib/ld-linux-armhf.so.3` fails with `failed to map segment from shared
object: Operation not permitted` because the USB filesystem is `noexec`.
Consequently the next implementation step is a root-context in-memory TCP
shell payload (reuse the `/proc/<pid>/mem` BusyBox-child technique), not direct
execution of the USB BusyBox.

The same root-service pass established that configured `bgdld-daemon` and
`mum-daemon` executables are absent from this image. They are inert config
stanzas, not live update-service attack surfaces.
## Root shell achieved (2026-10-04)

- The `sc_net` NTP `system()` injection plus `/proc/<pid>/mem` bootstrap now launches a persistent root command worker.
- `/tmp/root-file-shell.sh` polls the UID-1007-owned `/tmp/root-shell.in`, evaluates each command as the root `sc_net` context, and writes output to `/tmp/root-shell.out`.
- Verified from `/proc/self/status`: `Uid: 0 0 0 0`, `Gid: 1013 1013 1013 1013`, supplementary group `0`, and `CapEff: 0000003fffffffff`.
- Interactive client: `./vodafone-root-shell.sh 192.168.100.11 9536` (`exit` or `quit` to leave).
- The direct reverse-shell payload itself executes as UID 0, but new STB-initiated TCP flows are blocked upstream: `/proc/net/tcp` showed UID-0 sockets stuck in `SYN_SENT` toward both laptop addresses. The file-backed channel avoids that routing/firewall constraint.
- Bootstrap branch correction: branching from offset `0x20` to payload offset `0x24` requires ARM word `0xeaffffff`; the earlier `0xeafffffd` looped back into the `mprotect` syscall.
