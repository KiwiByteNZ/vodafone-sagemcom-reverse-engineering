# Lab notes and current save point

Saved: 2026-10-05 UTC

## Network

- Emulator PC: `192.168.0.163:8080`
- Mercku router: `192.168.0.2`, routing `192.168.100.0/24`
- Activated box: `192.168.100.11`
- Target box: `192.168.100.180`
- Target MAC: `<TARGET_MAC>`
- Target UDID: `<TARGET_UDID>`

The target reaches the emulator successfully and downloads `/dms/apps.json`.
This proves the PC firewall and route are not blocking activation traffic.

## Implemented responses

- GetConfig and local gateway URLs
- LoginWithPIN and RefreshAccessToken
- Device/domain/user bootstrap calls
- Exact activated-box application catalogue
- GetMenu Apps node recovered from activated-box offline cache:
  - name: `Applications`
  - channel ID: `50343720`
- Runtime feature state matched to activated box:
  - `APPS=true`
  - `APPS_IN_VOD=false`

## Current state

Activation and the Apps rail now work. `GetChannelMultiFilter` for channel
`50343720` returns the ten captured Application records.

The target's lab address was `192.168.50.180`. Its device-specific MAC address
has been replaced with `<TARGET_MAC>` in the shared repository.

Live Mercku rules were added for the target, but these are runtime iptables
rules and may be lost when the router reboots. The router's FORWARD policy is
DROP. Its older explicit rules cover only the activated box at
`192.168.100.11`.

On the target, TCP `3030` and `9536` are open. TCP `9080` is closed and `9222`
is filtered.

The root workflow succeeded through port `9536`. Final verification returned:

```text
Uid:    0 0 0 0
Gid:    1013 1013 1013 1013
Groups: 0
CapEff: 0000003fffffffff
```

The persistent file-backed root command channel is available with:

```sh
./vodafone-root-shell.sh 192.168.50.180 9536
```

Interactive telnet was not started because `/mnt/usb0/busybox-armv7l` was
absent. A compressed BusyBox transfer was stopped at user request. The partial
file `/tmp/busybox.gz` is 279,744 bytes; the complete gzip would be 279,847
bytes, so it must not be decompressed or trusted. `/tmp` content disappears on
reboot.

The activated box itself reports `ERRDISABLED` for the live dynamic Apps rail;
its useful cached rail was recovered as:

```json
{"name":"apps.apps","data":[{"url":"50343720","i18nKey":"Applications"}]}
```

## Root workflow after Netflix starts

Netflix opened Gibbon port `9536`, and the existing root workflow succeeded:

```sh
./vodafone-root-telnet-oneclick.sh 192.168.100.180
```

The UID-0 file-backed shell is the verified access method. Telnet remains an
optional future step after supplying a complete ARM BusyBox.
