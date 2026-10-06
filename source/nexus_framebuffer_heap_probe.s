.syntax unified
.thumb
.short 0
.global _start
.thumb_func
_start:
    stmdb sp!, {r0-r12, lr}
    sub sp, #8

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

    @ NEXUS_Platform_GetFramebufferHeap(0), ARM entry point.
    movs r0, #0
    ldr r4, get_framebuffer_heap_function
    blx r4
    str r0, [sp, #4]

    adr r0, result_path
    ldr r1, open_flags
    movs r2, #192
    lsls r2, r2, #1
    movs r7, #5
    svc #0
    mov r5, r0
    mov r0, r5
    mov r1, sp
    movs r2, #8
    movs r7, #4
    svc #0
    mov r0, r5
    movs r7, #6
    svc #0

    add sp, #8
    ldmia sp!, {r0-r12, lr}
    ldr pc, resume_site

.align 2
worker_site:                  .word 0xb558f3e2
resume_site:                  .word 0xb558f3e3
get_framebuffer_heap_function: .word 0xb66aa58c
open_flags:                  .word 0x00000241
original_bytes:              .byte 0x07,0x46,0x60,0x46,0x08,0xf0,0x09,0xff,0x38,0x46,0x5d,0xf8
self_mem:                    .asciz "/proc/self/mem"
result_path:                 .asciz "/tmp/nexus_framebuffer_heap"
