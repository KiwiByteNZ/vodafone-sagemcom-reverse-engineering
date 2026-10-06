
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000b6e4 <wctl_network_init@@Base>:
    b6e4:	e59f3034 	ldr	r3, [pc, #52]	@ b720 <wctl_network_init@@Base+0x3c>
    b6e8:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    b6ec:	e24dd00c 	sub	sp, sp, #12
    b6f0:	e59f202c 	ldr	r2, [pc, #44]	@ b724 <wctl_network_init@@Base+0x40>
    b6f4:	e08f3003 	add	r3, pc, r3
    b6f8:	e7933002 	ldr	r3, [r3, r2]
    b6fc:	e5932000 	ldr	r2, [r3]
    b700:	e58d2004 	str	r2, [sp, #4]
    b704:	e59d2004 	ldr	r2, [sp, #4]
    b708:	e5933000 	ldr	r3, [r3]
    b70c:	e1520003 	cmp	r2, r3
    b710:	1a000001 	bne	b71c <wctl_network_init@@Base+0x38>
    b714:	e28dd00c 	add	sp, sp, #12
    b718:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    b71c:	ebffecc8 	bl	6a44 <__stack_chk_fail@plt>
    b720:	000262b4 			@ <UNDEFINED> instruction: 0x000262b4
    b724:	0000060c 	andeq	r0, r0, ip, lsl #12
