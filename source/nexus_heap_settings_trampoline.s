.syntax unified
.thumb
.global _start
.thumb_func
_start:
    nop
    ldr.w pc, cave_ptr
    .align 2
cave_ptr:
    .word 0x004e6203
