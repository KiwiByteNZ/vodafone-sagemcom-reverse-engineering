
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

00009f70 <wctl_eit_init@@Base>:
    9f70:	e59f3034 	ldr	r3, [pc, #52]	@ 9fac <wctl_eit_init@@Base+0x3c>
    9f74:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    9f78:	e24dd00c 	sub	sp, sp, #12
    9f7c:	e59f202c 	ldr	r2, [pc, #44]	@ 9fb0 <wctl_eit_init@@Base+0x40>
    9f80:	e08f3003 	add	r3, pc, r3
    9f84:	e7933002 	ldr	r3, [r3, r2]
    9f88:	e5932000 	ldr	r2, [r3]
    9f8c:	e58d2004 	str	r2, [sp, #4]
    9f90:	e59d2004 	ldr	r2, [sp, #4]
    9f94:	e5933000 	ldr	r3, [r3]
    9f98:	e1520003 	cmp	r2, r3
    9f9c:	1a000001 	bne	9fa8 <wctl_eit_init@@Base+0x38>
    9fa0:	e28dd00c 	add	sp, sp, #12
    9fa4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    9fa8:	ebfff2a5 	bl	6a44 <__stack_chk_fail@plt>
    9fac:	00027a28 	andeq	r7, r2, r8, lsr #20
    9fb0:	0000060c 	andeq	r0, r0, ip, lsl #12
