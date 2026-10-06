.syntax unified
.thumb
.short 0                    @ discarded; _start linked at address 2 mod 4
.global _start
.thumb_func
_start:
    sub sp, #24

    @ Restore the eight-byte trampoline through /proc/self/mem.
    adr r0, self_mem
    movs r1, #2
    movs r2, #0
    movs r7, #5              @ open
    svc #0
    mov r6, r0
    mov r0, r6
    adr r1, original_bytes
    movs r2, #12
    movs r3, #0              @ ARM EABI alignment pad
    ldr r4, worker_site
    movs r5, #0
    movs r7, #181            @ pwrite64
    svc #0
    str r0, [sp, #16]        @ restoration return value

    @ Read one register using Gibbon's initialized Nexus descriptor.
    ldr r0, target_address
    str r0, [sp, #0]
    movs r1, #0
    str r1, [sp, #4]
    movs r0, #5
    ldr r1, read_ioctl
    mov r2, sp
    movs r7, #54
    svc #0
    str r0, [sp, #8]
    ldr r3, [sp, #0]         @ inline return value
    str r3, [sp, #4]
    ldr r3, target_address
    str r3, [sp, #0]

    adr r0, result_path
    ldr r1, open_flags
    movs r2, #192
    lsls r2, r2, #1         @ 0600
    movs r7, #5
    svc #0
    mov r5, r0
    mov r0, r5
    mov r1, sp
    movs r2, #20            @ addr, value, ioctl rc, spare, restore rc
    movs r7, #4
    svc #0

    movs r0, #0
    movs r7, #1             @ exit only this worker thread
    svc #0

.align 2
worker_site:     .word 0xb55e43e2
target_address:  .word 0xbf569640
read_ioctl:      .word 0x00650025
open_flags:      .word 0x00000241
original_bytes:  .byte 0x07,0x46,0x60,0x46,0x08,0xf0,0x09,0xff
                 .byte 0x38,0x46,0x5d,0xf8
self_mem:        .asciz "/proc/self/mem"
result_path:     .asciz "/tmp/nexus_memread_result"
