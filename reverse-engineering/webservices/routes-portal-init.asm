
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000bdf8 <wctl_portal_init@@Base>:
    bdf8:	e59f3034 	ldr	r3, [pc, #52]	@ be34 <wctl_portal_init@@Base+0x3c>
    bdfc:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    be00:	e24dd00c 	sub	sp, sp, #12
    be04:	e59f202c 	ldr	r2, [pc, #44]	@ be38 <wctl_portal_init@@Base+0x40>
    be08:	e08f3003 	add	r3, pc, r3
    be0c:	e7933002 	ldr	r3, [r3, r2]
    be10:	e5932000 	ldr	r2, [r3]
    be14:	e58d2004 	str	r2, [sp, #4]
    be18:	e59d2004 	ldr	r2, [sp, #4]
    be1c:	e5933000 	ldr	r3, [r3]
    be20:	e1520003 	cmp	r2, r3
    be24:	1a000001 	bne	be30 <wctl_portal_init@@Base+0x38>
    be28:	e28dd00c 	add	sp, sp, #12
    be2c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    be30:	ebffeb03 	bl	6a44 <__stack_chk_fail@plt>
    be34:	00025ba0 	andeq	r5, r2, r0, lsr #23
    be38:	0000060c 	andeq	r0, r0, ip, lsl #12
