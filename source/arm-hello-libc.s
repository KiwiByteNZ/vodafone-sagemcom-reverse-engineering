    .syntax unified
    .arm
    .global _start
    .extern write
    .extern _exit

_start:
    mov r0, #1
    adr r1, message
    mov r2, #17
    bl write

    mov r0, #0
    bl _exit

message:
    .ascii "ARM_ELF_HELLO_OK\n"
