.syntax unified
.arm
.arch armv7-a
.fpu vfpv4-d16
.eabi_attribute 28, 1
.global _start

/*
 * /dev/nexus register read/write probe.
 * Build with NEXUS_ADDRESS set to a confirmed valid register address.
 * Output (stdout): six little-endian uint32 values:
 *   read_syscall_rc, read_value, read_arg0, write_syscall_rc,
 *   verify_syscall_rc, verify_value
 */
.equ NEXUS_ADDRESS, 0xffffffff

.section .text
_start:
    ldr r0, =device
    mov r1, #2                  @ O_RDWR
    mov r2, #0
    mov r7, #5                  @ open
    svc #0
    cmp r0, #0
    blt exit_error
    mov r4, r0

    ldr r5, =argument
    ldr r6, =NEXUS_ADDRESS
    str r6, [r5]
    ldr r9, =read_value
    str r9, [r5, #4]            @ uint32_t *out

    mov r0, r4
    ldr r1, =0x00650025         @ NEXUS_Platform_ReadRegister
    mov r2, r5
    mov r7, #54                 @ ioctl
    svc #0

    ldr r8, =result
    str r0, [r8]
    ldr r10, [r9]
    str r10, [r8, #4]
    ldr r11, [r5]
    str r11, [r8, #8]
    cmp r0, #0
    bne emit

    @ Preserve the effective value: write back exactly what the read returned.
    str r6, [r5]
    str r10, [r5, #4]
    mov r0, r4
    ldr r1, =0x00650035         @ NEXUS_Platform_WriteRegister
    mov r2, r5
    mov r7, #54
    svc #0
    str r0, [r8, #12]
    cmp r0, #0
    bne emit

    str r6, [r5]
    ldr r9, =verify_value
    str r9, [r5, #4]
    mov r0, r4
    ldr r1, =0x00650025
    mov r2, r5
    mov r7, #54
    svc #0
    str r0, [r8, #16]
    ldr r0, [r9]
    str r0, [r8, #20]

emit:
    mov r0, #1                  @ stdout
    mov r1, r8
    mov r2, #24
    mov r7, #4                  @ write
    svc #0
    mov r0, r4
    mov r7, #6                  @ close
    svc #0
    mov r0, #0
    mov r7, #1                  @ exit
    svc #0

exit_error:
    rsb r0, r0, #0
    and r0, r0, #255
    mov r7, #1
    svc #0

.section .rodata
device: .asciz "/dev/nexus"

.section .bss
.balign 16
argument: .space 8
result:   .space 24
read_value: .space 4
verify_value: .space 4
