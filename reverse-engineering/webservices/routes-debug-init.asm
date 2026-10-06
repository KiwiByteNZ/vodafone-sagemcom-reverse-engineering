
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

00009a18 <wctl_debug_init@@Base>:
    9a18:	e59f3034 	ldr	r3, [pc, #52]	@ 9a54 <wctl_debug_init@@Base+0x3c>
    9a1c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    9a20:	e24dd00c 	sub	sp, sp, #12
    9a24:	e59f202c 	ldr	r2, [pc, #44]	@ 9a58 <wctl_debug_init@@Base+0x40>
    9a28:	e08f3003 	add	r3, pc, r3
    9a2c:	e7933002 	ldr	r3, [r3, r2]
    9a30:	e5932000 	ldr	r2, [r3]
    9a34:	e58d2004 	str	r2, [sp, #4]
    9a38:	e59d2004 	ldr	r2, [sp, #4]
    9a3c:	e5933000 	ldr	r3, [r3]
    9a40:	e1520003 	cmp	r2, r3
    9a44:	1a000001 	bne	9a50 <wctl_debug_init@@Base+0x38>
    9a48:	e28dd00c 	add	sp, sp, #12
    9a4c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    9a50:	ebfff3fb 	bl	6a44 <__stack_chk_fail@plt>
    9a54:	00027f80 	andeq	r7, r2, r0, lsl #31
    9a58:	0000060c 	andeq	r0, r0, ip, lsl #12
