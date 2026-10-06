# `dsldiagd` reverse-engineering notes

## Sample identity

- Path: `/home/user/Documents/Netcomm/Netcom_18/backup_mtd/extracted/bin/dsldiagd`
- SHA-256: `123c6daeb075e17e45cc2ad111ccd9fc7737cf4aa5e1ce29b92e4fc0f93e22f0`
- Size: 12,760 bytes
- Format: ELF32, big-endian MIPS32 o32, dynamically linked, non-PIE
- Interpreter: `/lib/ld-uClibc.so.0`
- Entry point: `0x401250`
- `main`: `0x400f70` (724 bytes)
- Section headers have been removed, but the dynamic symbol table remains recoverable.

## Purpose

`dsldiagd` is a Broadcom xDSL diagnostic transport daemon. It does not implement most DSL diagnostics itself. Instead, it creates or reconnects three network channels and passes received frames into `libxdslctl.so`. Code in `LogClientInit` uses `connect()`, so these are primarily destination ports on the diagnostic server, not necessarily listeners on the router:

1. GDB/debug channel: TCP port 5098 (`0x13ea`)
2. GUI channel: TCP port 5099 (`0x13eb`)
3. Diagnostic channel: TCP port 5100 (`0x13ec`)

The process multiplexes the three descriptors with `select()` and dispatches readable channels through:

- `BcmAdslCtl_ProcessGdbFrames`
- `BcmAdslCtl_ProcessGuiFrames`
- `BcmAdslCtl_ProcessDiagsFrames`

Its exported socket accessors are:

- `BcmAdslCtl_GetGdbSocket` at `0x402194`
- `BcmAdslCtl_GetGuiSocket` at `0x40217c`
- `BcmAdslCtl_GetDiagsSocket` at `0x4021c8`

## Startup and main loop

Approximate pseudocode:

```c
int main(void) {
    if (fork() < 0) {
        puts("cannot fork dsldiagd!");
        return -1;
    }

    if (fork_result != 0)
        exit(0);                 // parent exits

    setsid();                    // daemonize
    clear(fd_sets);

    for (;;) {
        gui  = BcmAdslCtl_GetGuiSocket();
        gdb  = BcmAdslCtl_GetGdbSocket();
        diag = BcmAdslCtl_GetDiagsSocket();

        add_valid_fds_to_read_set();
        rc = select(max_fd + 1, &read_set, NULL, NULL, NULL);

        if (rc == 0)
            XdslConnectionCheck();
        if (gui_is_readable)
            BcmAdslCtl_ProcessGuiFrames();
        if (gdb_is_readable)
            BcmAdslCtl_ProcessGdbFrames();
        if (diag_is_readable)
            BcmAdslCtl_ProcessDiagsFrames();
    }
}
```

`XdslConnectionCheck` (`0x402128`) calls the three channel handlers to establish or repair their connections.

## Notable internal functions

| Address | Recovered/exported name | Role |
|---|---|---|
| `0x400f70` | `main` | Daemonization and `select()` event loop |
| `0x4013e0` | internal | Reads routing data and derives the gateway/client address |
| `0x4017f8` | internal GUI handler | Establishes/processes TCP 5099 frames |
| `0x401c40` | internal diagnostics handler | Establishes/processes TCP 5100 frames |
| `0x401edc` | internal GDB handler | Establishes/processes TCP 5098 frames; recognizes GDB negotiation data |
| `0x402128` | `XdslConnectionCheck` | Runs all three connection handlers |
| `0x40217c` | `BcmAdslCtl_GetGuiSocket` | Returns GUI socket descriptor |
| `0x402194` | `BcmAdslCtl_GetGdbSocket` | Returns GDB socket descriptor |
| `0x4021ac` | `BcmAdslCtl_ProcessGdbFrames` | Dispatch wrapper |
| `0x4021c8` | `BcmAdslCtl_GetDiagsSocket` | Returns diagnostic socket descriptor |
| `0x4021e0` | `BcmAdslCtl_ProcessDiagsFrames` | Dispatch wrapper |
| `0x4021fc` | `BcmAdslCtl_ProcessGuiFrames` | Dispatch wrapper |
| `0x402220` | `LogRecvWithTimeout` | `select()`-based receive helper with millisecond timeout |
| `0x402378` | `LogListen` | Listen/accept helper |
| `0x4024dc` | `LogConnect` | Connect helper with retry handling |
| `0x40258c` | `LogClientInit` | Creates/configures sockets and initializes logging transport |

## Dynamic dependencies

- `libxdslctl.so`: core DSL diagnostic command/frame handling
- `libcms_util.so`, `libcms_msg.so`: Broadcom CMS infrastructure
- `libcms_boardctl.so`: board control
- `libbcm_flashutil.so`, `libbcm_crc.so`: firmware/flash support
- `libcrypt.so.0`, `libgcc_s.so.1`, `libc.so.0`

Important imported APIs include `xdslCtl_DiagProcessCommandFrame`, `parseAdslInfo`, `prctl_runCommandInShellBlocking`, socket APIs, `select`, `recvfrom`, `send`, and `sendto`.

## Embedded commands and protocol markers

The executable contains these fixed shell commands:

```text
route > /var/adslgw
rm /var/adslgw
cat /proc/net/arp > /var/arp_table
rm /var/arp_table
```

It parses a `default` route and ARP MAC addresses using `%x:%x:%x:%x:%x:%x`.

The GDB channel contains:

```text
*** GDB reconnected
$qSupported#37
```

This indicates a GDB remote-protocol bridge or reconnect path on TCP 5098.

## Security observations

1. **Unauthenticated diagnostic transport is likely.** No authentication or cryptographic API is visible in this executable's network paths. Any access control would need to be supplied by firewall rules, connection/session checks in the kernel module, or the diagnostic server. Diagnostic traffic to ports 5098-5100 should remain on an isolated network.

2. **GDB/debug exposure is high risk.** TCP 5098 handles GDB remote-protocol traffic. Depending on the linked library and target implementation, this may permit memory inspection or control. Confirm by observing the live service and analyzing `libxdslctl.so`.

3. **Predictable privileged temporary files.** The daemon runs shell commands that overwrite `/var/adslgw` and `/var/arp_table`, then opens and deletes them. If the daemon runs as root and `/var` is writable by an attacker, symlink/file-race attacks may be possible. Actual impact depends on permissions and shell redirection behavior.

4. **No modern ELF hardening is evident.** The executable is fixed-address/non-PIE, has a writable/executable dynamic segment, and has no section metadata from which stack-canary/RELRO state can be reliably reported. Imports do not show `__stack_chk_fail`.

5. **Large externally supplied frames reach proprietary code.** Receive buffers are approximately 1,400 bytes, after which frames are dispatched to `libxdslctl`. The most important memory-safety audit target is therefore `libxdslctl.so`, especially `xdslCtl_DiagProcessCommandFrame` and the three frame processors.

## Recommended next analysis

1. Reverse `libxdslctl.so`; most command parsing and the meaningful attack surface reside there.
2. On the isolated test network, inspect listeners with `netstat -lntup` and test ports 5098-5100 from the LAN only.
3. Capture traffic while using the router's DSL diagnostics UI to recover message formats.
4. Check startup scripts and firewall rules to establish which interfaces expose the three ports and which UID runs `dsldiagd`.
5. Import the binary as big-endian MIPS32/o32 in Ghidra at image base `0x400000`, then apply the recovered function names above.

## Continued analysis: `libxdslctl.so`

Sample:

- Path: `/home/user/Documents/Netcomm/Netcom_18/backup_mtd/extracted/lib/libxdslctl.so`
- SHA-256: `fc8c5e17a45e56b0cedc74e5bc9cdb0cc8241586471c21cc700f8ba00af26c34`
- Size: 25,008 bytes
- Format: ELF32 big-endian MIPS shared object, section headers removed

`xdslCtl_DiagProcessCommandFrame` is at `0x2d3c`. It opens `/dev/bcmadsl0`, transforms the received wire frame into a 24-byte driver argument, and issues ioctl `0x4018d009`. It returns `0` on success or Broadcom/CMS error `9002` on failure.

Approximate driver argument:

```c
struct adsl_diag_ioctl_arg {
    uint32_t command;      // low 30 bits command; high 2 bits channel/client
    void    *payload;
    uint32_t payload_len;
    uint32_t scalar_or_ip;
    uint32_t extra;
    uint32_t result;
};
```

Two frame formats are accepted:

- Normal frame: command byte at offset `3`, payload begins at offset `4`.
- Extended frame (`frame[3] == 0xff`): requires at least 58 bytes, first sends command `0xe5` with 38 bytes from offset `20`, then submits fields copied from offsets `4..19`.
- Command `0xfc` is handled specially as a cleanup/free operation for a per-line staging buffer.
- Normal payloads are accumulated in a per-line 1,396-byte kernel buffer before dispatch.

The user-space function does not validate the semantic command. The kernel module performs the dispatch.

## Continued analysis: `adsldd.ko`

Sample:

- Path: `/home/user/Documents/Netcomm/Netcom_18/backup_mtd/extracted/lib/modules/3.4.11-rt19/extra/adsldd.ko`
- SHA-256: `ab501eaf8073550adfed42c323d3a381eb1cb1fac93c7fcebf3a3e02c678f842`
- Size: 419,720 bytes
- Format: unstripped ELF32 big-endian MIPS kernel module
- Kernel family: Linux `3.4.11-rt19`

The complete path is:

```text
network frame
  -> dsldiagd
  -> libxdslctl.so:xdslCtl_DiagProcessCommandFrame
  -> ioctl(/dev/bcmadsl0, 0x4018d009, arg)
  -> adsldd.ko:adsl_unlocked_ioctl
  -> adsldd.ko:adsl_ioctl
  -> adsldd.ko:DoDiagCommand
  -> adsldd.ko:BcmAdsl_DiagCommand
  -> adsldd.ko:BcmAdslCoreDiagCmd
```

Relevant kernel functions:

| Address | Function | Role |
|---|---|---|
| `0x2ea5c` | `DoDiagCommand` | Copies the 24-byte ioctl structure from user space, stages up to 1,396 bytes, and dispatches it |
| `0x2f8f8` | `adsl_ioctl` | Selects one of 24 ioctl handlers |
| `0x2f9dc` | `adsl_unlocked_ioctl` | Serializes ioctl calls with a mutex |
| `0x3255c` | `BcmAdslCoreDiagCmd` | Main diagnostic command dispatcher |
| `0x0ff8c` | `BcmAdslCoreDebugCmd` | Separate debug-command dispatcher |
| `0x30a48` | `BcmAdslCoreDebugReadMem` | Reads memory and sends it back in chunks of up to 480 bytes |

### Primary command dispatch

`BcmAdslCoreDiagCmd` masks off the upper two channel bits and contains a jump table for commands `0xe5` through `0xff`. Confirmed entries include:

| Command | Target | Observed role |
|---|---:|---|
| `0xe5` | `0x32920` | Copies a 38-byte `diagConnectInfo` structure containing server/network information |
| `0xe6` | `0x32d78` | Diagnostic client/channel setup path |
| `0xe7` | `0x32b54` | Diagnostic data/client allocation path |
| `0xef` | `0x32d24` | Dispatches a secondary command numbered `0..40` |
| `0xfa` | `0x329b4` | Diagnostic status/availability response |
| `0xfc` | `0x32a30` | Disconnect/session teardown path |
| `0xff` | `0x32630` | Connection/session initialization path |

### High-risk `0xef` secondary commands

The `0xef` handler treats the first 16-bit payload field as a subcommand and dispatches values `0..40`. Several operations provide kernel-level debugging primitives:

| Subcommand | Target | Primitive |
|---:|---:|---|
| `1` | `0x32e7c` -> `BcmAdslCoreDebugReadMem` | Reads caller-selected mapped memory and returns it in 480-byte chunks |
| `2` | `0x32eb0` | Converts a supplied address and stores a supplied 32-bit value there |
| `5` | `0x32e98` | Sets the DSL watchdog timer to 1,000 units |
| `6` | `0x33188` | Loads a function pointer from the frame and calls it with another supplied value |
| `8` | `0x330cc` | Opens/sends a file-like diagnostic object using a caller-provided address and length |
| `23` | `0x330b4` | Prints diagnostic statistics |
| `26` | `0x32f70` | Logging/stat-save control selector |
| `37` | `0x32f60` | Enables a diagnostic/regression flag |
| `38` | `0x32f4c` | Clears diagnostic/regression flags |
| `40` | `0x32ecc` | Physical-memory/dump-buffer processing path |

Subcommands `1`, `2`, and `6` are particularly important. If a remote party can establish an accepted diagnostic session and send command `0xef`, the module appears to expose arbitrary kernel memory read, 32-bit kernel memory write, and indirect kernel function-call capabilities. This is intentional factory/debug functionality, but from a security perspective it is equivalent to a powerful privileged backdoor. The exact preconditions still need live validation: the dispatcher checks diagnostic session state, client registration, and in some paths the server IP/session owner.

### Additional debug command dispatcher

`BcmAdslCoreDebugCmd` accepts command IDs `3..45`. Recovered operations include:

- connection and PHY reset;
- enable/disable overhead-message printing;
- enter DSL diagnostic mode;
- start diagnostic logging;
- set OEM parameters;
- set L2 timeout;
- read/write BCM6306 SPI registers;
- update diagnostic synchronization time.

This dispatcher is separate from the `0xef` subcommand table but reinforces that the firmware intentionally exposes deep hardware and kernel debug controls.

## Revised security assessment

The main risk is not a conventional parsing bug in the 12 KB daemon. It is an undocumented privileged diagnostic protocol implemented by the DSL kernel driver. The protocol contains explicit memory-access and function-call primitives. Exposure depends on whether an attacker can control or impersonate the diagnostic server selected by `dsldiagd`, satisfy the driver's session checks, or access `/dev/bcmadsl0` locally.

Recommended containment:

1. Do not permit untrusted hosts to receive the router's outbound TCP connections to ports 5098-5100.
2. Restrict local access to `/dev/bcmadsl0` and inspect its device-node mode/owner.
3. Disable `dsldiagd` outside isolated testing if DSL diagnostic collection is not required.
4. Capture a legitimate connection handshake before attempting any active protocol testing; avoid memory-write and indirect-call commands on hardware that matters.

## Live validation on the NF18ACV test unit

Read-only checks were performed through the existing Telnet management session:

- `dsldiagd` is running automatically as PID 1696.
- `/proc/1696/status` reports real/effective/saved/filesystem UID and GID all equal to `0`; the daemon is fully root-privileged.
- `/proc/1696/exe` points to `/bin/dsldiagd`.
- `/dev/bcmadsl0` is `crw-rw-r--`, owner `admin`, group `root`, major/minor `208:0`.
- The live management account named `admin` is UID 0 on this image.
- At the time of inspection, `netstat` showed no TCP listener or established connection using ports 5098, 5099, or 5100. This supports the static finding that the daemon initiates connections only when a diagnostic session/server is configured or discovered.

Consequently, anyone who obtains this firmware's `admin` shell already has direct permission to issue DSL ioctls as root. The remote attack question is narrower: whether an untrusted network peer can cause or hijack a diagnostic-server connection and pass the kernel session checks.

## DSL PHY CPU and `adsl_phy.bin`

The object of interest for reversing the dedicated DSL processor is:

- Path: `/home/user/Documents/Netcomm/Netcom_18/backup_mtd/extracted/etc/adsl/adsl_phy.bin`
- SHA-256: `1546b06515c1017d9f2c24b8fdbcc8ee770da39c4dde61bb43a85694f4884330`
- Size: `0xF9A3C` (1,022,524 bytes)
- Version string: `Broadcom DSL Version A2pv6F039v`
- Build date: `02/02/2016 15:11:32`
- Instruction set: big-endian MIPS32, compatible with MIPS32 Release 1 disassembly

This is firmware for a dedicated DSL MIPS processor controlled by the host CPU through `adsldd.ko`. It is not an ELF file and contains no symbol table.

### Container layout recovered from `AdslFileLoadImage`

The loader reads the first 32 bytes as an outer header:

```text
offset 0x00: 0x41200000   header/magic or image attributes
offset 0x04: 0x00000020   offset of 16-byte LMEM descriptor
offset 0x08: 0x000021D8   LMEM data length
offset 0x0C: 0x000021F8   SDRAM image file offset
offset 0x10: 0x000F7844   SDRAM image length
offset 0x14: 0x00000000
offset 0x18: 0x00000000
offset 0x1C: 0x00000000
```

The size relationship is exact:

```text
0x21F8 + 0xF7844 = 0xF9A3C (complete file size)
```

At file offset `0x20`, the loader reads a 16-byte LMEM descriptor. Its third word is `0x100CE000`, which is passed to `AdslCoreSetSdramImageAddr` as the PHY SDRAM link/load address.

The descriptor is:

```text
0x0A400009  j 0x09000024
0x00000000  nop
0x100CE000  SDRAM link/load address
0x00000000  flags/reserved
```

After reading this descriptor, the loader copies `0x21D8` bytes beginning at file offset `0x30` into PHY LMEM. The LMEM code is linked at `0x09000000`, giving this mapping:

```text
file offset 0x30 -> PHY LMEM address 0x09000000
file offset F    -> PHY LMEM address 0x09000000 + (F - 0x30)
```

The descriptor's jump to `0x09000024` therefore lands at file offset `0x54`, immediately after the initial hardware-wait code. The LMEM bootstrap clears registers, configures CP0/cache state, calls fixed boot-ROM/hardware routines in the `0xB9000000` region, and uses `$k0 = 0x100D08A0` as a return/exception entry address in SDRAM.

The large image begins at file offset `0x21F8` and maps as:

```text
file offset 0x21F8 -> PHY address 0x100CE000
file offset F      -> PHY address 0x100CE000 + (F - 0x21F8)
PHY address A      -> file offset 0x21F8 + (A - 0x100CE000)
```

For raw disassembly with GNU binutils:

```bash
mips-linux-gnu-objdump -D -b binary -m mips:isa32 -EB \
  --adjust-vma=0x100cbe08 adsl_phy.bin
```

`0x100CBE08` is `0x100CE000 - 0x21F8`; therefore addresses printed for the SDRAM region match the PHY's linked addresses.

### SDRAM reset trampoline

The first three words of the SDRAM image decode as:

```asm
0x100CE000:  wait
0x100CE004:  j 0x100CE000    # value present in the file initially
0x100CE008:  nop
```

`AdslCoreRunPhyMipsInSDRAM` writes a runtime trampoline through the host mapping:

```asm
wait                  # 0x42000020
j <PHY entry alias>   # driver writes 0x08040000
nop
```

It then sets control-register bits `0..2` to release/start the DSL MIPS. The jump target depends on the MIPS segment alias at which the reset trampoline executes, so it should not be interpreted from the file address alone.

### Host/PHY address conversion

`BcmAdslCoreDiagAddrConv` translates diagnostic addresses before kernel memory access:

1. Addresses whose masked region is `0x19000000` are reduced to 24 bits and mapped at host alias `0xB0780000`.
2. Addresses in PHY region `0x10000000` are translated relative to `adslCorePhyDesc.sdramPhyAddr` and the host SDRAM mapping.
3. If no dynamic mapping is present, the fallback host base is `0xA06CE000` plus the translated offset.
4. Other addresses are returned unchanged.

This conversion explains why diagnostic memory addresses are PHY/link addresses while the host kernel reads them through `0xA...`/`0xB...` uncached mappings.

### Loader-related kernel functions

| Address | Function | Role |
|---:|---|---|
| `0x1768` | `AdslCoreSetXfaceOffset` | Reads an 8-byte interface marker at the end of the LMEM block and derives `adslPhyXfaceOffset` |
| `0x17EC` | `AdslCoreSetSdramImageAddr` | Allocates/selects the host SDRAM window and records PHY/host bases and image size |
| `0x35A4` | `AdslCoreRunPhyMipsInSDRAM` | Programs reset trampoline and releases the PHY MIPS |
| `0x36B8` | `AdslCoreSetSDRAMBaseAddr` | Aligns the host SDRAM base and converts it to an uncached `0xA...` mapping |
| `0x35780` | `AdslFileLoadImage` | Parses this container and loads the LMEM and SDRAM portions |
| `0x2FAFC` | `BcmAdslCoreDiagAddrConv` | Converts PHY diagnostic addresses into host-accessible addresses |

### Practical reversing setup

Import only the bytes from file offset `0x21F8` as a raw big-endian MIPS32 image with base `0x100CE000`. The earlier LMEM block should be imported as a separate memory region once its runtime destination is recovered from `adslCorePhyDesc`; treating the entire file as one flat image produces incorrect cross-references.

The firmware uses `$k1` as a global/static-data base register in much of the SDRAM code. Loads such as `lw t9, offset(k1)` are therefore global-data or function-table accesses, not kernel-mode exception handling. Recovering the initialized `$k1` value from the LMEM bootstrap is the next major step toward resolving globals and indirect calls.

The image itself never writes `$k1` after initially clearing it. It calls a fixed routine at `0xB900018C`, which appears to initialize architectural/runtime state before returning through `$k0`. Based on direct references to `0x1904xxxx` and the range of signed `$k1` offsets, the likely runtime value is:

```text
$k1 ~= 0x19050000
```

For example, `lw t9,-32176(k1)` would resolve to `0x19048250`, matching the directly referenced global-data region around `0x190477E0`. This value is a strong inference, not yet a live register capture. In a disassembler, setting `$k1` to `0x19050000` is a useful first approximation for resolving static RAM references.

## Live validation: access to the main CPU address space

On 2026-09-24, a read-only test invoked ioctl `0x4018D009` on
`/dev/bcmadsl0` with diagnostic command `0xEF`, subcommand `1`, address
`0xC02ED000`, and length `16`. `/proc/modules` and sysfs identified that
address as the runtime `.text` base of `adsldd.ko`.

The kernel log reported:

```text
BcmAdslCoreDiagCmd: Executing dbgcmd=1 -1070673920 16
DebugReadMem: Addr 0xC02ED000 - 0xC02ED010(0xC02ED010)

03 E0 00 08 00 00 00 00 27 BD FF E0 AF B0 00 14
```

Those bytes exactly match file offset `0x60`, the first 16 bytes of the
module image's `.text` section. This proves that the DSL diagnostic ioctl can
read ordinary main-CPU kernel virtual memory, not only DSL-PHY memory. The
address converter passes this `0xC...` kernel address through unchanged.

The test helper is `dsldiag_read_probe.c`. It contains no diagnostic write or
indirect-call request. Static analysis still shows that `0xEF` subcommand `2`
performs a 32-bit store and subcommand `6` performs an indirect function call;
those paths were deliberately not exercised live.

### Live validation of the 32-bit write command

The write path was subsequently tested against the final four bytes of linker
padding in `adsldd.ko`'s `.bss`, rather than an allocated symbol. The section is
`0x15bb0` bytes long and its last symbol ends at offset `0x15bac`. With the live
`.bss` base at `0xC032AE80`, the test word was therefore `0xC0340A2C`.

The reversible sequence was:

```text
read:             00 00 00 00
write 0xA5C35A7E: status 0
read-back:        A5 C3 5A 7E
restore 0:        status 0
final read:       00 00 00 00
```

This confirms live main-CPU kernel-memory writes through diagnostic command
`0xEF`, subcommand `2`. The original value was successfully restored and the
router remained stable.
