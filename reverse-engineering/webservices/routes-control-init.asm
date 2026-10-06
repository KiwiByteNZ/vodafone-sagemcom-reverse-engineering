
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

00009280 <wctl_control_init@@Base>:
    9280:	e59f3034 	ldr	r3, [pc, #52]	@ 92bc <wctl_control_init@@Base+0x3c>
    9284:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    9288:	e24dd00c 	sub	sp, sp, #12
    928c:	e59f202c 	ldr	r2, [pc, #44]	@ 92c0 <wctl_control_init@@Base+0x40>
    9290:	e08f3003 	add	r3, pc, r3
    9294:	e7933002 	ldr	r3, [r3, r2]
    9298:	e5932000 	ldr	r2, [r3]
    929c:	e58d2004 	str	r2, [sp, #4]
    92a0:	e59d2004 	ldr	r2, [sp, #4]
    92a4:	e5933000 	ldr	r3, [r3]
    92a8:	e1520003 	cmp	r2, r3
    92ac:	1a000001 	bne	92b8 <wctl_control_init@@Base+0x38>
    92b0:	e28dd00c 	add	sp, sp, #12
    92b4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    92b8:	ebfff5e1 	bl	6a44 <__stack_chk_fail@plt>
    92bc:	00028718 	andeq	r8, r2, r8, lsl r7
    92c0:	0000060c 	andeq	r0, r0, ip, lsl #12
