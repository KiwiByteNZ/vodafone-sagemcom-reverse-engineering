
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000dc04 <wctl_streaming_init@@Base>:
    dc04:	e59f1058 	ldr	r1, [pc, #88]	@ dc64 <wctl_streaming_init@@Base+0x60>
    dc08:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    dc0c:	e24dd00c 	sub	sp, sp, #12
    dc10:	e59f0050 	ldr	r0, [pc, #80]	@ dc68 <wctl_streaming_init@@Base+0x64>
    dc14:	e3a02000 	mov	r2, #0
    dc18:	e59f304c 	ldr	r3, [pc, #76]	@ dc6c <wctl_streaming_init@@Base+0x68>
    dc1c:	e08f1001 	add	r1, pc, r1
    dc20:	e7911000 	ldr	r1, [r1, r0]
    dc24:	e08f3003 	add	r3, pc, r3
    dc28:	e283000c 	add	r0, r3, #12
    dc2c:	e5832000 	str	r2, [r3]
    dc30:	e591c000 	ldr	ip, [r1]
    dc34:	e5832004 	str	r2, [r3, #4]
    dc38:	e5832008 	str	r2, [r3, #8]
    dc3c:	e583000c 	str	r0, [r3, #12]
    dc40:	e5830010 	str	r0, [r3, #16]
    dc44:	e58dc004 	str	ip, [sp, #4]
    dc48:	e59d2004 	ldr	r2, [sp, #4]
    dc4c:	e5913000 	ldr	r3, [r1]
    dc50:	e1520003 	cmp	r2, r3
    dc54:	1a000001 	bne	dc60 <wctl_streaming_init@@Base+0x5c>
    dc58:	e28dd00c 	add	sp, sp, #12
    dc5c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    dc60:	ebffe377 	bl	6a44 <__stack_chk_fail@plt>
    dc64:	00023d8c 	andeq	r3, r2, ip, lsl #27
    dc68:	0000060c 	andeq	r0, r0, ip, lsl #12
    dc6c:	00024514 	andeq	r4, r2, r4, lsl r5

0000dc70 <wctl_streaming_uninit@@Base>:
    dc70:	e59f3034 	ldr	r3, [pc, #52]	@ dcac <wctl_streaming_uninit@@Base+0x3c>
    dc74:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    dc78:	e24dd00c 	sub	sp, sp, #12
    dc7c:	e59f202c 	ldr	r2, [pc, #44]	@ dcb0 <wctl_streaming_uninit@@Base+0x40>
    dc80:	e08f3003 	add	r3, pc, r3
    dc84:	e7933002 	ldr	r3, [r3, r2]
    dc88:	e5932000 	ldr	r2, [r3]
    dc8c:	e58d2004 	str	r2, [sp, #4]
    dc90:	e59d2004 	ldr	r2, [sp, #4]
    dc94:	e5933000 	ldr	r3, [r3]
    dc98:	e1520003 	cmp	r2, r3
    dc9c:	1a000001 	bne	dca8 <wctl_streaming_uninit@@Base+0x38>
    dca0:	e28dd00c 	add	sp, sp, #12
    dca4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    dca8:	ebffe365 	bl	6a44 <__stack_chk_fail@plt>
    dcac:	00023d28 	andeq	r3, r2, r8, lsr #26
    dcb0:	0000060c 	andeq	r0, r0, ip, lsl #12
