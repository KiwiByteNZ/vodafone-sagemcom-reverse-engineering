# bioman message-parser audit

Target binaries:

- `bioman`: SHA-256 `c3d165aef49fea53223f0243cdfc77ab63fe138c04fdb91f640c7d01646db916`
- `libnetapp.so`: SHA-256 `3a4e15b01f4e8a95878f31b803e9e2c3bf7811ff6cdad15f8bfd65b62e93e564`

This pass was static/offline. No malformed Bluetooth traffic was sent to the box.

## Result

No confirmed memory-corruption or UID-changing primitive was found in `bioman` itself. Its exposed JSON-RPC methods delegate most Bluetooth parsing to `libnetapp.so`. The obvious variable-length copies in `bioman` use `__memcpy_chk`; oversized inputs terminate the process rather than overwriting adjacent memory, making those paths denial-of-service candidates only.

## `libnetapp.so` copy review

### HID descriptor callback: missing local length validation

At virtual address `0x1d51c`, the `BSA_HH_GET_DSCPINFO_EVT` handler performs:

```c
memcpy(saved_device + 304, event + 18, event->descriptor_length);
saved_device->descriptor_length = event->descriptor_length;
```

The length is an unchecked 16-bit field read from `event + 16`. The destination descriptor area is 804 bytes. The surrounding BSA HID structures also use an 804-byte descriptor maximum, so a well-formed event is safe. This becomes an overwrite only if the lower BSA Bluetooth stack can supply an inconsistent length greater than 804. Consequently this is a genuine missing defense-in-depth check, but not yet a demonstrated remotely reachable overflow.

Recommended fix:

```c
if (event->descriptor_length > 804)
    reject_event();
```

The source object must also be proven to contain at least `descriptor_length` bytes before copying.

### BLE configuration copies at `0x101a8` and `0x101bc`

These raw `memcpy` calls initially appeared attacker-sized. Reconstruction shows the second length is locally set to 40 bytes. The first is an attribute-count-derived copy assembled inside a zeroed 160-byte temporary record and used to populate a BSA configuration structure. No unbounded remote length reaches either copy.

### Structure copy at `0x14328`

This is a fixed 240-byte copy into a 4432-byte device record. It is not an overflow.

## Other reviewed paths

- Incoming NetApp notification: 16-bit length copied with `__memcpy_chk(..., 1020)`; oversize aborts.
- HID input path: copied with `__memcpy_chk(..., 38)`; oversize aborts.
- BLE write helper: copied with `__memcpy_chk(..., 184)`; oversize aborts.
- Public HID setters reject lengths greater than 638 before fortified copies.
- Fixed 4432-byte device-record copies have matching allocations.

## Security conclusion

This audit does not establish a privilege-escalation route and does not change the process UID. The best remaining lead is below `bioman`: determine whether the BSA daemon/protocol validates the HID descriptor length before constructing `BSA_HH_GET_DSCPINFO_EVT`. A live test should only follow after recovering that boundary or building an isolated harness; blindly sending an oversized descriptor risks merely rebooting or wedging the Bluetooth service.
