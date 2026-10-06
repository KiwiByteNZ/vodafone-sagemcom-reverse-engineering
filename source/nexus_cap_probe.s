.syntax unified
.arm
.arch armv7-a
.fpu vfpv4-d16
.global _start

.section .text
_start:
    ldr r0, =device
    mov r1, #2
    mov r2, #0
    mov r7, #5
    svc #0
    mov r4, r0
    cmp r4, #0
    blt finish

    ldr r5, =output
    ldr r6, =argument
    mov r0, #4096
    str r0, [r6]
    str r5, [r6, #4]
    mov r0, r4
    ldr r1, =0x00650002
    mov r2, r6
    mov r7, #54
    svc #0
    mov r8, r0
    mov r0, r4
    mov r7, #6
    svc #0

    ldr r0, =result_path
    ldr r1, =0x241
    ldr r2, =0666
    mov r7, #5
    svc #0
    cmp r0, #0
    blt finish
    mov r4, r0
    ldr r1, =return_value
    str r8, [r1]
    mov r0, r4
    mov r2, #4
    mov r7, #4
    svc #0
    mov r0, r4
    mov r1, r5
    mov r2, #4096
    mov r7, #4
    svc #0
    mov r0, r4
    mov r7, #6
    svc #0
finish:
    mov r0, #0
    mov r7, #1
    svc #0

.section .rodata
device: .asciz "/dev/nexus"
result_path: .asciz "/tmp/nexus_cap_result"

.section .bss
.balign 16
argument: .space 8
return_value: .space 4
output: .space 4096
