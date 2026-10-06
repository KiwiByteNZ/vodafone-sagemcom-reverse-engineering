# Save point: activation, Apps and root confirmed

Target: `192.168.50.180`

- Apps catalogue visible and open.
- Netflix/Gibbon TCP `9536` open.
- `vodafone-root-telnet-oneclick.sh` reached UID 0.
- Verified UID 0, GID 1013, group 0, full effective capabilities.
- File-backed root shell works through `9536`.
- Telnet `9080` is not running because a complete ARM BusyBox was unavailable.
- The interrupted `/tmp/busybox.gz` is incomplete by 103 bytes and unusable.

See the parent `NOTES.md` for the full handoff.
