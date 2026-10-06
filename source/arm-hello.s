    .syntax unified
    .arm
    .global _start

_start:
    mov r0, #1
    adr r1, message
    mov r2, #17
    mov r7, #4
    svc #0

    mov r0, #0
    mov r7, #1
    svc #0

message:
    .ascii "ARM_ELF_HELLO_OK\n"
