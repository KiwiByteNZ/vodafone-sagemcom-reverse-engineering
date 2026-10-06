.syntax unified
.arm
.arch armv7-a
.fpu vfpv4-d16
.global _start

/* Read-only test of NEXUS_Platform_ReadRegister against a known module
 * text address. Writes three uint32 values to /tmp/nexus_kernel_read_result:
 * ioctl return code, returned value, requested address.
 */
.equ TEST_ADDRESS, 0xbf569640

.section .text
_start:
    ldr r0, =device
    mov r1, #2
    mov r2, #0
    mov r7, #5
    svc #0
    cmp r0, #0
    blt finish
    mov r4, r0

    ldr r5, =argument
    ldr r6, =TEST_ADDRESS
    str r6, [r5]
    ldr r8, =read_value
    str r8, [r5, #4]

    mov r0, r4
    ldr r1, =0x00650025
    mov r2, r5
    mov r7, #54
    svc #0

    ldr r9, =result
    str r0, [r9]
    ldr r10, [r8]
    str r10, [r9, #4]
    str r6, [r9, #8]

    mov r0, r4
    mov r7, #6
    svc #0

    ldr r0, =result_path
    ldr r1, =0x241
    ldr r2, =0600
    mov r7, #5
    svc #0
    cmp r0, #0
    blt finish
    mov r4, r0
    mov r1, r9
    mov r2, #12
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
result_path: .asciz "/tmp/nexus_kernel_read_result"

.section .bss
.balign 16
argument: .space 8
read_value: .space 4
result: .space 12
