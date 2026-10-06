
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000d144 <wctl_signal_init@@Base>:
    d144:	e59f3034 	ldr	r3, [pc, #52]	@ d180 <wctl_signal_init@@Base+0x3c>
    d148:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    d14c:	e24dd00c 	sub	sp, sp, #12
    d150:	e59f202c 	ldr	r2, [pc, #44]	@ d184 <wctl_signal_init@@Base+0x40>
    d154:	e08f3003 	add	r3, pc, r3
    d158:	e7933002 	ldr	r3, [r3, r2]
    d15c:	e5932000 	ldr	r2, [r3]
    d160:	e58d2004 	str	r2, [sp, #4]
    d164:	e59d2004 	ldr	r2, [sp, #4]
    d168:	e5933000 	ldr	r3, [r3]
    d16c:	e1520003 	cmp	r2, r3
    d170:	1a000001 	bne	d17c <wctl_signal_init@@Base+0x38>
    d174:	e28dd00c 	add	sp, sp, #12
    d178:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    d17c:	ebffe630 	bl	6a44 <__stack_chk_fail@plt>
    d180:	00024854 	andeq	r4, r2, r4, asr r8
    d184:	0000060c 	andeq	r0, r0, ip, lsl #12
