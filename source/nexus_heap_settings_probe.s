.syntax unified
.thumb
.short 0
.global _start
.thumb_func
_start:
    @ Preserve every interrupted register and keep a separate result frame.
    stmdb sp!, {r0-r12, lr}
    sub.w sp, sp, #136

    @ Restore the worker instructions before making the read-only ioctl.
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

    @ Result layout: signed ioctl return value, followed by 128 output bytes.
    add r3, sp, #4
    movs r0, #0
    movs r1, #32
zero_settings:
    str r0, [r3], #4
    subs r1, #1
    bne zero_settings

    @ Use the exported ARM function. It constructs the driver's required
    @ one-word wrapper around this output pointer before issuing the ioctl.
    add r0, sp, #4
    ldr r4, get_default_heap_settings_function
    blx r4
    movs r0, #0
    str r0, [sp]

    adr r0, result_path
    ldr r1, open_flags
    movs r2, #192
    lsls r2, r2, #1
    movs r7, #5
    svc #0
    mov r5, r0
    mov r0, r5
    mov r1, sp
    movs r2, #132
    movs r7, #4
    svc #0
    mov r0, r5
    movs r7, #6
    svc #0

    add.w sp, sp, #136
    ldmia sp!, {r0-r12, lr}
    ldr pc, resume_site

.align 2
worker_site:                    .word 0xb55e33e2
resume_site:                    .word 0xb55e33e3
get_default_heap_settings_function: .word 0xb66fe2b8
open_flags:                    .word 0x00000241
original_bytes:                .byte 0x07,0x46,0x60,0x46,0x08,0xf0,0x09,0xff,0x38,0x46,0x5d,0xf8
self_mem:                      .asciz "/proc/self/mem"
result_path:                   .asciz "/tmp/nexus_heap_settings"
