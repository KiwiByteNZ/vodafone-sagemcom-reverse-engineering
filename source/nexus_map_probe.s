.syntax unified
.thumb
.short 0
.global _start
.thumb_func
_start:
    @ Preserve the interrupted worker context. The 16-byte result buffer is
    @ separate from the saved register frame and is discarded before resume.
    stmdb sp!, {r0-r12, lr}
    sub sp, #16

    @ Restore the temporary worker trampoline first.
    adr r0, self_mem
    movs r1, #2
    movs r2, #0
    movs r7, #5
    svc #0
    mov r6, r0
    mov r0, r6
    adr r1, original_bytes
    movs r2, #12
    movs r3, #0
    ldr r4, worker_site
    movs r5, #0
    movs r7, #181
    svc #0
    str r0, [sp, #0]

    @ NEXUS_Platform_P_MapMemory(offset_low, offset_high, length, 0).
    ldr r0, map_offset
    movs r1, #0
    movw r2, #4096
    movs r3, #0
    ldr r4, map_function
    blx r4
    str r0, [sp, #4]
    cmp r0, #0
    beq map_failed
    adds r1, r0, #1
    beq map_failed
    @ Map-only probe: do not touch the returned virtual address. Some device
    @ mappings fault only when accessed even though mmap itself succeeds.
    movs r1, #0
    str r1, [sp, #8]
    movs r1, #1
    str r1, [sp, #12]
    b save_result
map_failed:
    movs r1, #0
    str r1, [sp, #8]
    str r1, [sp, #12]

save_result:
    adr r0, result_path
    ldr r1, open_flags
    movs r2, #192
    lsls r2, r2, #1
    movs r7, #5
    svc #0
    mov r5, r0
    mov r0, r5
    mov r1, sp
    movs r2, #16
    movs r7, #4
    svc #0
    @ Resume the worker instead of terminating its thread. The trampoline was
    @ restored before the mapper call, so execution continues at the original
    @ first instruction with the interrupted register state intact.
    add sp, #16
    ldmia sp!, {r0-r12, lr}
    ldr pc, resume_site

.align 2
worker_site:     .word 0xb559e3e2
resume_site:     .word 0xb559e3e3
map_function:    .word 0xb66bbe94
map_offset:      .word 0xf0400000
open_flags:      .word 0x00000241
original_bytes:  .byte 0x07,0x46,0x60,0x46,0x08,0xf0,0x09,0xff,0x38,0x46,0x5d,0xf8
self_mem:        .asciz "/proc/self/mem"
result_path:     .asciz "/tmp/nexus_map_result"
