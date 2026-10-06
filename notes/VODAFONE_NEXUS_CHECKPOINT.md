# Vodafone `/dev/nexus` checkpoint

Saved: 2026-10-03 01:25:26 UTC

## Stable findings

- Vodafone box: `192.168.100.11`
- Gibbon debug service: TCP `9536`
- Workstation route required after reboot:
  `192.168.100.0/24 via 192.168.0.2 dev enp14s0`
- The Netflix/Gibbon process owns `/dev/nexus` as FD 5.
- Kernel cmdline reserves `bmem=860m@382m`, physical
  `0x17e00000..0x4da00000`.
- Gibbon's existing `/dev/nexus` mappings exactly cover that BMEM range. This
  does not include ordinary system RAM or kernel credentials.
- `NEXUS_Platform_P_MapMemory` is at `libnexus.so + 0x40e94`.
- Netflix code-cave offset used by the payload is executable base `+ 0x10202`.
- Mapper ABI recovered from disassembly:
  - `r0`: offset low
  - `r1`: offset high
  - `r2`: length
  - `r3`: zero
- Test mapping offset: `0xf0400000`, length `4096`, read-only validation after mapping.
- The probe now checks both `NULL` and `0xffffffff` before dereferencing the returned pointer.

## Last execution

The last boot used these values. They are recorded for diagnosis only and **must not
be reused after a reboot**:

- PID: `2136`
- Netflix base: `0x004ff000`
- Code cave: `0x0050f202`; Thumb entry `0x0050f203`
- libnexus base: `0xb660a000`
- Correct mapper address: `0xb664ae94`
- Worker TID: `2170`
- Worker site: `0xb552d3e2`
- Original 12 bytes: `0746604608f009ff38465df8`

All constants were asserted in the compiled binaries before staging. The remote
code-cave checksum matched the local payload exactly. The guarded trampoline was
written successfully. Port 9536 remained open five seconds after execution, showing
that the corrected mapper address did not cause the previous immediate invalid-call
crash. Gibbon then shut down before the result could be retrieved.

## Current diagnosis

The remaining delayed shutdown is probably caused by the payload ending with ARM
`sys_exit`, which kills the selected animation worker. Gibbon appears to terminate
after detecting that worker's death. Do not repeat the current payload unchanged.

Later return-safe and map-only variants also terminated Gibbon when passed
`0xf0400000`. The reason is now established: that offset is outside the permitted
BMEM range. The direct mmap route is not an arbitrary physical-memory primitive
and should not be pursued for credential modification.

### Default heap-settings probe (2026-10-03)

After a clean reboot, a direct `ioctl(5, 0x0065000d, buffer)` was tried once
with a return-safe worker trampoline. Gibbon terminated and TCP 9536 closed.
Do **not** repeat that argument shape.

Subsequent ARM disassembly of
`NEXUS_Platform_GetDefaultCreateHeapSettings` at `libnexus.so + 0x3e2b8`
confirmed that the proxy passes a pointer to a one-word wrapper on its stack;
that word contains the caller's settings pointer. The failed raw request instead
made the first zeroed settings word serve as the nested pointer. The next safe
attempt should call the exported library function itself, or pass an accurately
marshalled wrapper, rather than issuing the raw ioctl with a direct buffer.

That exported-function variant was then attempted once after another clean reboot.
All fresh addresses, the 12 original worker bytes, the staged payload checksum,
and the ARM function address (`libnexus.so + 0x3e2b8`) were verified. The worker
remained blocked in its normal read for roughly 15 seconds, then woke and Gibbon
terminated before creating the result file. TCP 9536 closed. Do **not** retry the
exported call. This establishes that request `0x0065000d` itself is unsafe in the
running Netflix client context, not merely that the first probe used the wrong
wrapper shape. Continue by static recovery of the structure/handler or choose a
different read-only Nexus request.

The next payload must:

1. Restore the 12 overwritten worker bytes before invoking the mapper.
2. Preserve the worker's stack and callee-saved registers.
3. Save the 16-byte result without terminating the worker.
4. Return or branch safely through the restored original instruction path.
5. Retrieve `/tmp/nexus_map_result` immediately while port 9536 remains available.

## Resume procedure

1. Reboot the Vodafone box and wait for TCP 9536.
2. Confirm the workstation route with `ip route get 192.168.100.11`.
3. Recover the fresh Netflix PID and executable/libnexus mapping bases.
4. Compute addresses programmatically:
   - `mapper = libnexus_base + 0x40e94`
   - `cave = netflix_base + 0x10202`
   - `cave_thumb = cave + 1`
5. Select a current isolated `GIBBON_ANIMATIO` worker and capture its live PC.
6. Verify its exact original 12 bytes before any write.
7. Rebuild and assert every embedded constant and checksum.
8. Use a return-safe payload; do not use the current `sys_exit` ending.

## Saved artifacts

- `nexus_map_probe.s`
- `nexus_map_probe.bin`
- `nexus_trampoline.s`
- `nexus_trampoline.bin`
- `NEXUS_IOCTL_ANALYSIS.md`

Checksums at checkpoint time:

```text
5635cae1f6b2ba331b50f04f9cdbafea  nexus_map_probe.s
1b9af96dd69272929ac2cacfaf6d4ca6  nexus_map_probe.bin
838674f558a6164cdf4ed97b9f7b687c  nexus_trampoline.s
98eb23353b6626e86a81b44c78b2c805  nexus_trampoline.bin
```

## ARM in-memory execution proof (UID 1007)

On 2026-10-04, `vodafone-ddexec-arm-test.sh` successfully demonstrated an
ARM adaptation of the DDexec technique against a disposable BusyBox `dd`
process. It stopped the child, derived its randomized base from `/proc/PID/maps`,
wrote a 48-byte syscall-only marker into cold executable padding through
`/proc/PID/mem`, redirected the child's `read` and `write` GOT entries through
the same interface, and resumed it. The child printed `DDEXEC_ARM_OK` and exited
with status 0. No Gibbon code or persistent target file was modified.

This proves reliable same-UID in-memory code execution despite `/tmp` being
`noexec`; it does not change UID or provide root privileges by itself.

Artifacts:

- `ddexec-arm-marker.s`
- `ddexec-arm-marker.bin`
- `vodafone-ddexec-arm-test.sh`
