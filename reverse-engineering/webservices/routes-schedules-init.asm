
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000c718 <wctl_schedules_init@@Base>:
    c718:	e59f3034 	ldr	r3, [pc, #52]	@ c754 <wctl_schedules_init@@Base+0x3c>
    c71c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    c720:	e24dd00c 	sub	sp, sp, #12
    c724:	e59f202c 	ldr	r2, [pc, #44]	@ c758 <wctl_schedules_init@@Base+0x40>
    c728:	e08f3003 	add	r3, pc, r3
    c72c:	e7933002 	ldr	r3, [r3, r2]
    c730:	e5932000 	ldr	r2, [r3]
    c734:	e58d2004 	str	r2, [sp, #4]
    c738:	e59d2004 	ldr	r2, [sp, #4]
    c73c:	e5933000 	ldr	r3, [r3]
    c740:	e1520003 	cmp	r2, r3
    c744:	1a000001 	bne	c750 <wctl_schedules_init@@Base+0x38>
    c748:	e28dd00c 	add	sp, sp, #12
    c74c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    c750:	ebffe8bb 	bl	6a44 <__stack_chk_fail@plt>
    c754:	00025280 	andeq	r5, r2, r0, lsl #5
    c758:	0000060c 	andeq	r0, r0, ip, lsl #12
