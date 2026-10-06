.syntax unified
.arm
.global _start
.text
_start:
    mov r0, #2
    adr r1, marker
    mov r2, #14
    mov r7, #4
    svc #0
    mov r0, #0
    mov r7, #1
    svc #0
marker:
    .ascii "DDEXEC_ARM_OK\n"
