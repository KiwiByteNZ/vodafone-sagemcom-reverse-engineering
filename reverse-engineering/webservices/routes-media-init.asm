
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000afd8 <wctl_media_init@@Base>:
    afd8:	e59f3034 	ldr	r3, [pc, #52]	@ b014 <wctl_media_init@@Base+0x3c>
    afdc:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    afe0:	e24dd00c 	sub	sp, sp, #12
    afe4:	e59f202c 	ldr	r2, [pc, #44]	@ b018 <wctl_media_init@@Base+0x40>
    afe8:	e08f3003 	add	r3, pc, r3
    afec:	e7933002 	ldr	r3, [r3, r2]
    aff0:	e5932000 	ldr	r2, [r3]
    aff4:	e58d2004 	str	r2, [sp, #4]
    aff8:	e59d2004 	ldr	r2, [sp, #4]
    affc:	e5933000 	ldr	r3, [r3]
    b000:	e1520003 	cmp	r2, r3
    b004:	1a000001 	bne	b010 <wctl_media_init@@Base+0x38>
    b008:	e28dd00c 	add	sp, sp, #12
    b00c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    b010:	ebffee8b 	bl	6a44 <__stack_chk_fail@plt>
    b014:	000269c0 	andeq	r6, r2, r0, asr #19
    b018:	0000060c 	andeq	r0, r0, ip, lsl #12
