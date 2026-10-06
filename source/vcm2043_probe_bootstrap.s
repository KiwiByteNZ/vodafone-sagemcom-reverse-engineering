.syntax unified
.arm
.global _start
.text
_start:
    adr r0, _start
    bic r0, r0, #0xff
    bic r0, r0, #0xf00
    add r0, r0, #0x1000
    mov r1, #0x1000
    mov r2, #7
    mov r7, #125
    svc #0
    /* objcopy starts at VMA 0xd4: flat entry is 0x3d8-0xd4 = 0x304. */
    .word 0xea0000b7
