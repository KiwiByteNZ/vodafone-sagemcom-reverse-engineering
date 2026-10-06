.syntax unified
.arm
.global _start
.text
_start:
    adr r0, _start
    bic r0, r0, #0xff
    bic r0, r0, #0xf00
    nop
    mov r1, #0xa000
    mov r2, #7
    mov r7, #125
    svc #0
    /* objcopy starts at VMA 0x94: flat entry is 0x530-0x94 = 0x49c. */
    .word 0xea00011d
