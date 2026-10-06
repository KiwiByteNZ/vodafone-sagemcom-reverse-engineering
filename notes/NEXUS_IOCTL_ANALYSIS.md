# `/dev/nexus` memory-path analysis

## Confirmed behavior

- Gibbon owns an initialized `/dev/nexus` descriptor as FD 5.
- `NEXUS_Platform_ReadRegister` uses request `0x00650025`.
- A read of MMIO base `0xf0400000` completed successfully and returned zero.
- Passing kernel virtual address `0xbf569640` terminates Gibbon; this request is not a safe arbitrary kernel-virtual read.
- The loaded `nexus` kernel module is 5,365,012 bytes with `.text` at
  `0xbf55a000`; `nexus_driver_mmap` is visible in kallsyms at `0xbf574eac`
  on the observed boot.
- Kernel cmdline reserves `bmem=860m@382m`, i.e. physical
  `0x17e00000..0x4da00000`.
- Gibbon's two legitimate `/dev/nexus` mappings exactly cover that aperture:
  `0x17e00000..0x3ee00000` and `0x3ee00000..0x4da00000`.
- Therefore the Nexus mmap path exposes the reserved BMEM/video region, not
  ordinary system RAM containing kernel tasks or credentials.
- Attempting to map `0xf0400000` is outside the BMEM aperture and terminates
  Gibbon. This must not be repeated.

## Highest-priority primitive

`NEXUS_Platform_P_MapMemory` at `libnexus.so + 0x40e94` directly calls:

```text
mmap64(NULL, length, PROT_READ|PROT_WRITE, MAP_SHARED,
       nexus_fd, caller_controlled_64_bit_offset)
```

ABI recovered from the ARM disassembly:

```text
r0 = offset low
r1 = offset high
r2 = mapping length
r3 = must be zero
return = mapped userspace pointer, or NULL on failure
```

The kernel driver's `mmap` callback is constrained to the BMEM aperture on this
build. This is useful for Nexus/video buffers but is not an arbitrary physical
read/write primitive and cannot directly reach kernel credential structures.

## Memory-object ioctl family

The most relevant generated requests are:

| Request | Wrapper | Marshalled words |
|---|---|---:|
| `0x00650005` | `NEXUS_Platform_CreateHeap_proxy` | 1 |
| `0x00653e19` | `NEXUS_MemoryBlock_Allocate_driver` | 6 |
| `0x00653e1a` | `NEXUS_MemoryBlock_Free_driver` | 1 |
| `0x00653e1c` | `NEXUS_MemoryBlock_GetProperties` | 2 |
| `0x00653e1d` | `NEXUS_MemoryBlock_GetUserState` | 2 |
| `0x00653e1e` | `NEXUS_MemoryBlock_LockOffset` | 2 |
| `0x00653e1f` | `NEXUS_MemoryBlock_SetUserState` | 2 |
| `0x00653e20` | `NEXUS_MemoryBlock_UnlockOffset` | 1 |

`NEXUS_MemoryBlock_Lock` obtains an offset with `LockOffset`, then either converts it through `NEXUS_OffsetToCachedAddr` or passes it to `NEXUS_P_MemoryMap_Map`. Handles and offsets are therefore the next validation surface if direct arbitrary mapping is rejected.

## Reconstructed proxy ABI

The generated commands are not ordinary Linux `_IO`, `_IOR`, `_IOW`, or
`_IOWR` values: the direction and structure size bits are zero. For example,
`0x00653e19` does not tell the kernel that its argument is 24 bytes. Both sides
instead rely on a fixed, generated interface ABI. All pointers and handles below
are 32-bit words.

The compilable reconstruction is in `nexus_ioctl_abi.h`.

### Platform heap requests

| Request | Argument words before ioctl | Success-side behavior |
|---|---|---|
| `0x00650005` CreateHeap | `[settings_ptr]` | word 0 becomes the heap handle |
| `0x00650006` DestroyHeap | `[heap]` | no value consumed by proxy |
| `0x0065000d` GetDefaultCreateHeapSettings | `[settings_out_ptr]` | driver fills the nested output object |
| `0x00650013` GetFramebufferHeap | `[index]` | word 0 becomes the heap handle |
| `0x00650014` GetHeapRuntimeSettings | `[heap, settings_out_ptr]` | driver fills the nested output object |
| `0x00650015` GetHeapStatus | `[heap, status_out_ptr, 0, 0]` | word 0 becomes a result code; words 2–3 become a 64-bit Nexus offset |

After `GetHeapStatus`, the proxy converts words 2–3 with
`NEXUS_P_ProxyCall_OffsetToAddr` and stores that userspace address at offset
`0x18` in the caller's status object. This is userspace post-processing, not an
extra pointer returned directly by the driver.

`NEXUS_Platform_CreateHeap` accesses its public settings object at offsets
`0x00`, `0x04`, `0x08`, and `0x14`. The exact public field names cannot be
recovered from this stripped binary, so they should not yet be labelled as a
physical base/size tuple without corroborating headers.

### MemoryBlock requests

| Request | Argument words before ioctl | Success-side behavior |
|---|---|---|
| `0x00653e19` Allocate | `[heap, size, option, flags_or_zero, file_ptr, line]` | word 0 becomes the block handle |
| `0x00653e1a` Free | `[block]` | no value consumed by proxy |
| `0x00653e1b` GetDefaultAllocationSettings | `[settings_out_ptr]` | fills nested output object |
| `0x00653e1c` GetProperties | `[block, properties_out_ptr]` | fills nested output object |
| `0x00653e1d` GetUserState | `[block, user_state_out_ptr]` | word 0 becomes a result code; fills nested output word |
| `0x00653e1e` LockOffset | `[block, offset64_out_ptr]` | word 0 becomes a result code; fills nested 64-bit offset |
| `0x00653e1f` SetUserState | `[block, opaque_value]` | no value consumed by proxy |
| `0x00653e20` UnlockOffset | `[block]` | no value consumed by proxy |

The six-word Allocate transport is exact. Names for words 2 and 3 are still
provisional. `NEXUS_MemoryBlock_Allocate_tagged` proves that words 4 and 5 are a
source filename pointer and source line number used for allocation tagging.

### Meaning of `userState`

`userState` is intentionally an opaque 32-bit value, not a kernel address
returned to userspace. The local mapping layer allocates a userspace bookkeeping
node and calls `NEXUS_MemoryBlock_SetUserState(block, node_pointer)`. Later,
`GetUserState` retrieves that same userspace pointer. Therefore the ability to
store an arbitrary `userState` value is expected API behavior and is not by
itself an arbitrary kernel-write primitive.

### Properties and lock path

The local allocation path copies two returned property words into its mapping
node. `NEXUS_MemoryBlock_Lock` treats property word 0 as flags and property word
1 as the mapping length. It then obtains a 64-bit offset through LockOffset:

1. If flag `0x80` is clear, it passes the offset to
   `NEXUS_OffsetToCachedAddr`.
2. If flag `0x80` is set, it maps the offset and property word 1 through
   `NEXUS_Platform_P_MapMemory`.
3. Flag `0x40` rejects normal locking for that block.

This confirms that LockOffset returns a Nexus/BMEM offset, not a kernel virtual
pointer.

## Missing artifact

The workspace contains the 6.8 MB userspace `libnexus.so`, but no `nexus.ko` or dump of the kernel module around `0xbf569640`. Consequently, `copy_from_user`, `copy_to_user`, and bounds checks in the actual kernel handlers cannot be inspected statically yet. A successful mapping primitive could provide the missing kernel image; otherwise the module must be recovered from firmware storage or live kernel memory.
