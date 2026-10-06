
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000a5d8 <wctl_events_init@@Base>:
    a5d8:	e59f30d8 	ldr	r3, [pc, #216]	@ a6b8 <wctl_events_init@@Base+0xe0>
    a5dc:	e16d41f4 	strd	r4, [sp, #-20]!	@ 0xffffffec
    a5e0:	e3a01010 	mov	r1, #16
    a5e4:	e59f20d0 	ldr	r2, [pc, #208]	@ a6bc <wctl_events_init@@Base+0xe4>
    a5e8:	e1cd60f8 	strd	r6, [sp, #8]
    a5ec:	e1a06000 	mov	r6, r0
    a5f0:	e58de010 	str	lr, [sp, #16]
    a5f4:	e59f40c4 	ldr	r4, [pc, #196]	@ a6c0 <wctl_events_init@@Base+0xe8>
    a5f8:	e24dd01c 	sub	sp, sp, #28
    a5fc:	e3a05000 	mov	r5, #0
    a600:	e08f3003 	add	r3, pc, r3
    a604:	e7937002 	ldr	r7, [r3, r2]
    a608:	e08f4004 	add	r4, pc, r4
    a60c:	e2840008 	add	r0, r4, #8
    a610:	e5973000 	ldr	r3, [r7]
    a614:	e58d3014 	str	r3, [sp, #20]
    a618:	ebffee6f 	bl	5fdc <wctl_generate_uid@plt>
    a61c:	e284201c 	add	r2, r4, #28
    a620:	e3e03000 	mvn	r3, #0
    a624:	e5844000 	str	r4, [r4]
    a628:	e28d000c 	add	r0, sp, #12
    a62c:	e5844004 	str	r4, [r4, #4]
    a630:	e584201c 	str	r2, [r4, #28]
    a634:	e5842020 	str	r2, [r4, #32]
    a638:	e5845018 	str	r5, [r4, #24]
    a63c:	e5843024 	str	r3, [r4, #36]	@ 0x24
    a640:	e5843028 	str	r3, [r4, #40]	@ 0x28
    a644:	ebfff20c 	bl	6e7c <pipe@plt>
    a648:	e3700001 	cmn	r0, #1
    a64c:	0a00000f 	beq	a690 <wctl_events_init@@Base+0xb8>
    a650:	e59dc00c 	ldr	ip, [sp, #12]
    a654:	e3a02012 	mov	r2, #18
    a658:	e59de010 	ldr	lr, [sp, #16]
    a65c:	e59f3060 	ldr	r3, [pc, #96]	@ a6c4 <wctl_events_init@@Base+0xec>
    a660:	e5960008 	ldr	r0, [r6, #8]
    a664:	e58d6000 	str	r6, [sp]
    a668:	e1a0100c 	mov	r1, ip
    a66c:	e584c024 	str	ip, [r4, #36]	@ 0x24
    a670:	e584e028 	str	lr, [r4, #40]	@ 0x28
    a674:	e08f3003 	add	r3, pc, r3
    a678:	ebfff1cf 	bl	6dbc <event_new@plt>
    a67c:	e1a01005 	mov	r1, r5
    a680:	ebfff06b 	bl	6834 <event_add@plt>
    a684:	e1a00006 	mov	r0, r6
    a688:	ebfff0bd 	bl	6984 <wctl_dvb_listen_event@plt>
    a68c:	e1a00005 	mov	r0, r5
    a690:	e59d2014 	ldr	r2, [sp, #20]
    a694:	e5973000 	ldr	r3, [r7]
    a698:	e1520003 	cmp	r2, r3
    a69c:	1a000004 	bne	a6b4 <wctl_events_init@@Base+0xdc>
    a6a0:	e28dd01c 	add	sp, sp, #28
    a6a4:	e1cd40d0 	ldrd	r4, [sp]
    a6a8:	e1cd60d8 	ldrd	r6, [sp, #8]
    a6ac:	e28dd010 	add	sp, sp, #16
    a6b0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    a6b4:	ebfff0e2 	bl	6a44 <__stack_chk_fail@plt>
    a6b8:	000273a8 	andeq	r7, r2, r8, lsr #7
    a6bc:	0000060c 	andeq	r0, r0, ip, lsl #12
    a6c0:	00027b04 	andeq	r7, r2, r4, lsl #22
    a6c4:	0000026c 	andeq	r0, r0, ip, ror #4
