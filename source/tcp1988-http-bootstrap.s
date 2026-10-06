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
    /* Branch from flat offset 0x20 (PC 0x28) to entry offset 0x364. */
    .word 0xea0000cf
