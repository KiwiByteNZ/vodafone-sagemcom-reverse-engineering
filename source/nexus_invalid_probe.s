.syntax unified
.arm
.arch armv7-a
.fpu vfpv4-d16
.eabi_attribute 28, 1
.global _start

.section .text
_start:
    ldr r0, =device
    mov r1, #2                  @ O_RDWR
    mov r2, #0
    mov r7, #5                  @ __NR_open
    svc #0
    cmp r0, #0
    blt open_failed

    mov r4, r0
    ldr r1, =0x0065ffff         @ deliberately invalid NEXUS operation
    ldr r2, =argument
    mov r7, #54                 @ __NR_ioctl
    svc #0
    cmp r0, #0
    beq unexpected_success

    rsb r0, r0, #0             @ exit with errno
    and r0, r0, #255
    mov r7, #1                  @ __NR_exit
    svc #0

open_failed:
    rsb r0, r0, #0
    add r0, r0, #100
    and r0, r0, #255
    mov r7, #1
    svc #0

unexpected_success:
    mov r0, #99
    mov r7, #1
    svc #0

.section .rodata
device:
    .asciz "/dev/nexus"

.section .bss
.balign 16
argument:
    .space 4096
