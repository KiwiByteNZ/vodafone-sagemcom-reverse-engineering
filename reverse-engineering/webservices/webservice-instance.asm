
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0001e604 <wctl_create@@Base>:
   1e604:	e59f3080 	ldr	r3, [pc, #128]	@ 1e68c <wctl_create@@Base+0x88>
   1e608:	e16d41f0 	strd	r4, [sp, #-16]!
   1e60c:	e1a05000 	mov	r5, r0
   1e610:	e59f2078 	ldr	r2, [pc, #120]	@ 1e690 <wctl_create@@Base+0x8c>
   1e614:	e58d6008 	str	r6, [sp, #8]
   1e618:	e3a00010 	mov	r0, #16
   1e61c:	e58de00c 	str	lr, [sp, #12]
   1e620:	e24dd008 	sub	sp, sp, #8
   1e624:	e1a06001 	mov	r6, r1
   1e628:	e08f3003 	add	r3, pc, r3
   1e62c:	e7934002 	ldr	r4, [r3, r2]
   1e630:	e5943000 	ldr	r3, [r4]
   1e634:	e58d3004 	str	r3, [sp, #4]
   1e638:	ebffa0f8 	bl	6a20 <malloc@plt>
   1e63c:	e2503000 	subs	r3, r0, #0
   1e640:	0a00000e 	beq	1e680 <wctl_create@@Base+0x7c>
   1e644:	e3a02000 	mov	r2, #0
   1e648:	e5853000 	str	r3, [r5]
   1e64c:	e1a00002 	mov	r0, r2
   1e650:	e5833000 	str	r3, [r3]
   1e654:	e9830048 	stmib	r3, {r3, r6}
   1e658:	e583200c 	str	r2, [r3, #12]
   1e65c:	e59d2004 	ldr	r2, [sp, #4]
   1e660:	e5943000 	ldr	r3, [r4]
   1e664:	e1520003 	cmp	r2, r3
   1e668:	1a000006 	bne	1e688 <wctl_create@@Base+0x84>
   1e66c:	e28dd008 	add	sp, sp, #8
   1e670:	e1cd40d0 	ldrd	r4, [sp]
   1e674:	e59d6008 	ldr	r6, [sp, #8]
   1e678:	e28dd00c 	add	sp, sp, #12
   1e67c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e680:	e3e0000b 	mvn	r0, #11
   1e684:	eafffff4 	b	1e65c <wctl_create@@Base+0x58>
   1e688:	ebffa0ed 	bl	6a44 <__stack_chk_fail@plt>
   1e68c:	00013380 	andeq	r3, r1, r0, lsl #7
   1e690:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e694 <wctl_set_userdata@@Base>:
   1e694:	e59f3038 	ldr	r3, [pc, #56]	@ 1e6d4 <wctl_set_userdata@@Base+0x40>
   1e698:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1e69c:	e24dd00c 	sub	sp, sp, #12
   1e6a0:	e59f2030 	ldr	r2, [pc, #48]	@ 1e6d8 <wctl_set_userdata@@Base+0x44>
   1e6a4:	e08f3003 	add	r3, pc, r3
   1e6a8:	e7933002 	ldr	r3, [r3, r2]
   1e6ac:	e580100c 	str	r1, [r0, #12]
   1e6b0:	e5932000 	ldr	r2, [r3]
   1e6b4:	e58d2004 	str	r2, [sp, #4]
   1e6b8:	e59d2004 	ldr	r2, [sp, #4]
   1e6bc:	e5933000 	ldr	r3, [r3]
   1e6c0:	e1520003 	cmp	r2, r3
   1e6c4:	1a000001 	bne	1e6d0 <wctl_set_userdata@@Base+0x3c>
   1e6c8:	e28dd00c 	add	sp, sp, #12
   1e6cc:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e6d0:	ebffa0db 	bl	6a44 <__stack_chk_fail@plt>
   1e6d4:	00013304 	andeq	r3, r1, r4, lsl #6
   1e6d8:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e6dc <wctl_get_userdata@@Base>:
   1e6dc:	e59f3038 	ldr	r3, [pc, #56]	@ 1e71c <wctl_get_userdata@@Base+0x40>
   1e6e0:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1e6e4:	e24dd00c 	sub	sp, sp, #12
   1e6e8:	e59f2030 	ldr	r2, [pc, #48]	@ 1e720 <wctl_get_userdata@@Base+0x44>
   1e6ec:	e590000c 	ldr	r0, [r0, #12]
   1e6f0:	e08f3003 	add	r3, pc, r3
   1e6f4:	e7933002 	ldr	r3, [r3, r2]
   1e6f8:	e5932000 	ldr	r2, [r3]
   1e6fc:	e58d2004 	str	r2, [sp, #4]
   1e700:	e59d2004 	ldr	r2, [sp, #4]
   1e704:	e5933000 	ldr	r3, [r3]
   1e708:	e1520003 	cmp	r2, r3
   1e70c:	1a000001 	bne	1e718 <wctl_get_userdata@@Base+0x3c>
   1e710:	e28dd00c 	add	sp, sp, #12
   1e714:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e718:	ebffa0c9 	bl	6a44 <__stack_chk_fail@plt>
   1e71c:	000132b8 			@ <UNDEFINED> instruction: 0x000132b8
   1e720:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e724 <wctl_create_instance@@Base>:
   1e724:	e59f30f8 	ldr	r3, [pc, #248]	@ 1e824 <wctl_create_instance@@Base+0x100>
   1e728:	e16d41f8 	strd	r4, [sp, #-24]!	@ 0xffffffe8
   1e72c:	e1a05001 	mov	r5, r1
   1e730:	e59fc0f0 	ldr	ip, [pc, #240]	@ 1e828 <wctl_create_instance@@Base+0x104>
   1e734:	e1cd60f8 	strd	r6, [sp, #8]
   1e738:	e1a07002 	mov	r7, r2
   1e73c:	e58d8010 	str	r8, [sp, #16]
   1e740:	e1a08000 	mov	r8, r0
   1e744:	e3a00054 	mov	r0, #84	@ 0x54
   1e748:	e58de014 	str	lr, [sp, #20]
   1e74c:	e24dd008 	sub	sp, sp, #8
   1e750:	e08f3003 	add	r3, pc, r3
   1e754:	e793600c 	ldr	r6, [r3, ip]
   1e758:	e5963000 	ldr	r3, [r6]
   1e75c:	e58d3004 	str	r3, [sp, #4]
   1e760:	ebffa0ae 	bl	6a20 <malloc@plt>
   1e764:	e2504000 	subs	r4, r0, #0
   1e768:	0a000026 	beq	1e808 <wctl_create_instance@@Base+0xe4>
   1e76c:	e3a02054 	mov	r2, #84	@ 0x54
   1e770:	e3a01000 	mov	r1, #0
   1e774:	ebff9ec0 	bl	627c <memset@plt>
   1e778:	e3a01000 	mov	r1, #0
   1e77c:	e5950008 	ldr	r0, [r5, #8]
   1e780:	ebffa121 	bl	6c0c <evhtp_new@plt>
   1e784:	e3500000 	cmp	r0, #0
   1e788:	e3a03000 	mov	r3, #0
   1e78c:	e584000c 	str	r0, [r4, #12]
   1e790:	e300176c 	movw	r1, #1900	@ 0x76c
   1e794:	e3002708 	movw	r2, #1800	@ 0x708
   1e798:	e5843020 	str	r3, [r4, #32]
   1e79c:	e5843028 	str	r3, [r4, #40]	@ 0x28
   1e7a0:	e5843050 	str	r3, [r4, #80]	@ 0x50
   1e7a4:	e5841034 	str	r1, [r4, #52]	@ 0x34
   1e7a8:	e5842038 	str	r2, [r4, #56]	@ 0x38
   1e7ac:	0a000017 	beq	1e810 <wctl_create_instance@@Base+0xec>
   1e7b0:	e3570000 	cmp	r7, #0
   1e7b4:	0a000001 	beq	1e7c0 <wctl_create_instance@@Base+0x9c>
   1e7b8:	e1a01007 	mov	r1, r7
   1e7bc:	ebff9e24 	bl	6054 <evhtp_ssl_init@plt>
   1e7c0:	e5884000 	str	r4, [r8]
   1e7c4:	e5953000 	ldr	r3, [r5]
   1e7c8:	e3a00000 	mov	r0, #0
   1e7cc:	e5854000 	str	r4, [r5]
   1e7d0:	e5845004 	str	r5, [r4, #4]
   1e7d4:	e5834004 	str	r4, [r3, #4]
   1e7d8:	e5843000 	str	r3, [r4]
   1e7dc:	e5845008 	str	r5, [r4, #8]
   1e7e0:	e59d2004 	ldr	r2, [sp, #4]
   1e7e4:	e5963000 	ldr	r3, [r6]
   1e7e8:	e1520003 	cmp	r2, r3
   1e7ec:	1a00000b 	bne	1e820 <wctl_create_instance@@Base+0xfc>
   1e7f0:	e28dd008 	add	sp, sp, #8
   1e7f4:	e1cd40d0 	ldrd	r4, [sp]
   1e7f8:	e1cd60d8 	ldrd	r6, [sp, #8]
   1e7fc:	e59d8010 	ldr	r8, [sp, #16]
   1e800:	e28dd014 	add	sp, sp, #20
   1e804:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e808:	e3e0000b 	mvn	r0, #11
   1e80c:	eafffff3 	b	1e7e0 <wctl_create_instance@@Base+0xbc>
   1e810:	e1a00004 	mov	r0, r4
   1e814:	ebff9efb 	bl	6408 <free@plt>
   1e818:	e3e0000b 	mvn	r0, #11
   1e81c:	eaffffef 	b	1e7e0 <wctl_create_instance@@Base+0xbc>
   1e820:	ebffa087 	bl	6a44 <__stack_chk_fail@plt>
   1e824:	00013258 	andeq	r3, r1, r8, asr r2
   1e828:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e82c <wctl_set_ssdp_port@@Base>:
   1e82c:	e59f3038 	ldr	r3, [pc, #56]	@ 1e86c <wctl_set_ssdp_port@@Base+0x40>
   1e830:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1e834:	e24dd00c 	sub	sp, sp, #12
   1e838:	e59f2030 	ldr	r2, [pc, #48]	@ 1e870 <wctl_set_ssdp_port@@Base+0x44>
   1e83c:	e08f3003 	add	r3, pc, r3
   1e840:	e7933002 	ldr	r3, [r3, r2]
   1e844:	e5801034 	str	r1, [r0, #52]	@ 0x34
   1e848:	e5932000 	ldr	r2, [r3]
   1e84c:	e58d2004 	str	r2, [sp, #4]
   1e850:	e59d2004 	ldr	r2, [sp, #4]
   1e854:	e5933000 	ldr	r3, [r3]
   1e858:	e1520003 	cmp	r2, r3
   1e85c:	1a000001 	bne	1e868 <wctl_set_ssdp_port@@Base+0x3c>
   1e860:	e28dd00c 	add	sp, sp, #12
   1e864:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e868:	ebffa075 	bl	6a44 <__stack_chk_fail@plt>
   1e86c:	0001316c 	andeq	r3, r1, ip, ror #2
   1e870:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e874 <wctl_set_ssdp_path@@Base>:
   1e874:	e59f306c 	ldr	r3, [pc, #108]	@ 1e8e8 <wctl_set_ssdp_path@@Base+0x74>
   1e878:	e16d41f0 	strd	r4, [sp, #-16]!
   1e87c:	e1a05000 	mov	r5, r0
   1e880:	e58d6008 	str	r6, [sp, #8]
   1e884:	e1a06001 	mov	r6, r1
   1e888:	e59f105c 	ldr	r1, [pc, #92]	@ 1e8ec <wctl_set_ssdp_path@@Base+0x78>
   1e88c:	e58de00c 	str	lr, [sp, #12]
   1e890:	e590003c 	ldr	r0, [r0, #60]	@ 0x3c
   1e894:	e24dd008 	sub	sp, sp, #8
   1e898:	e08f3003 	add	r3, pc, r3
   1e89c:	e7934001 	ldr	r4, [r3, r1]
   1e8a0:	e3500000 	cmp	r0, #0
   1e8a4:	e5943000 	ldr	r3, [r4]
   1e8a8:	e58d3004 	str	r3, [sp, #4]
   1e8ac:	0a000000 	beq	1e8b4 <wctl_set_ssdp_path@@Base+0x40>
   1e8b0:	ebff9ed4 	bl	6408 <free@plt>
   1e8b4:	e1a00006 	mov	r0, r6
   1e8b8:	ebffa172 	bl	6e88 <__strdup@plt>
   1e8bc:	e59d3004 	ldr	r3, [sp, #4]
   1e8c0:	e585003c 	str	r0, [r5, #60]	@ 0x3c
   1e8c4:	e5942000 	ldr	r2, [r4]
   1e8c8:	e1530002 	cmp	r3, r2
   1e8cc:	1a000004 	bne	1e8e4 <wctl_set_ssdp_path@@Base+0x70>
   1e8d0:	e28dd008 	add	sp, sp, #8
   1e8d4:	e1cd40d0 	ldrd	r4, [sp]
   1e8d8:	e59d6008 	ldr	r6, [sp, #8]
   1e8dc:	e28dd00c 	add	sp, sp, #12
   1e8e0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e8e4:	ebffa056 	bl	6a44 <__stack_chk_fail@plt>
   1e8e8:	00013110 	andeq	r3, r1, r0, lsl r1
   1e8ec:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e8f0 <wctl_set_ssdp_name@@Base>:
   1e8f0:	e59f306c 	ldr	r3, [pc, #108]	@ 1e964 <wctl_set_ssdp_name@@Base+0x74>
   1e8f4:	e16d41f0 	strd	r4, [sp, #-16]!
   1e8f8:	e1a05000 	mov	r5, r0
   1e8fc:	e58d6008 	str	r6, [sp, #8]
   1e900:	e1a06001 	mov	r6, r1
   1e904:	e59f105c 	ldr	r1, [pc, #92]	@ 1e968 <wctl_set_ssdp_name@@Base+0x78>
   1e908:	e58de00c 	str	lr, [sp, #12]
   1e90c:	e5900040 	ldr	r0, [r0, #64]	@ 0x40
   1e910:	e24dd008 	sub	sp, sp, #8
   1e914:	e08f3003 	add	r3, pc, r3
   1e918:	e7934001 	ldr	r4, [r3, r1]
   1e91c:	e3500000 	cmp	r0, #0
   1e920:	e5943000 	ldr	r3, [r4]
   1e924:	e58d3004 	str	r3, [sp, #4]
   1e928:	0a000000 	beq	1e930 <wctl_set_ssdp_name@@Base+0x40>
   1e92c:	ebff9eb5 	bl	6408 <free@plt>
   1e930:	e1a00006 	mov	r0, r6
   1e934:	ebffa153 	bl	6e88 <__strdup@plt>
   1e938:	e59d3004 	ldr	r3, [sp, #4]
   1e93c:	e5850040 	str	r0, [r5, #64]	@ 0x40
   1e940:	e5942000 	ldr	r2, [r4]
   1e944:	e1530002 	cmp	r3, r2
   1e948:	1a000004 	bne	1e960 <wctl_set_ssdp_name@@Base+0x70>
   1e94c:	e28dd008 	add	sp, sp, #8
   1e950:	e1cd40d0 	ldrd	r4, [sp]
   1e954:	e59d6008 	ldr	r6, [sp, #8]
   1e958:	e28dd00c 	add	sp, sp, #12
   1e95c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e960:	ebffa037 	bl	6a44 <__stack_chk_fail@plt>
   1e964:	00013094 	muleq	r1, r4, r0
   1e968:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e96c <wctl_set_ssdp_description@@Base>:
   1e96c:	e59f306c 	ldr	r3, [pc, #108]	@ 1e9e0 <wctl_set_ssdp_description@@Base+0x74>
   1e970:	e16d41f0 	strd	r4, [sp, #-16]!
   1e974:	e1a05000 	mov	r5, r0
   1e978:	e58d6008 	str	r6, [sp, #8]
   1e97c:	e1a06001 	mov	r6, r1
   1e980:	e59f105c 	ldr	r1, [pc, #92]	@ 1e9e4 <wctl_set_ssdp_description@@Base+0x78>
   1e984:	e58de00c 	str	lr, [sp, #12]
   1e988:	e5900044 	ldr	r0, [r0, #68]	@ 0x44
   1e98c:	e24dd008 	sub	sp, sp, #8
   1e990:	e08f3003 	add	r3, pc, r3
   1e994:	e7934001 	ldr	r4, [r3, r1]
   1e998:	e3500000 	cmp	r0, #0
   1e99c:	e5943000 	ldr	r3, [r4]
   1e9a0:	e58d3004 	str	r3, [sp, #4]
   1e9a4:	0a000000 	beq	1e9ac <wctl_set_ssdp_description@@Base+0x40>
   1e9a8:	ebff9e96 	bl	6408 <free@plt>
   1e9ac:	e1a00006 	mov	r0, r6
   1e9b0:	ebffa134 	bl	6e88 <__strdup@plt>
   1e9b4:	e59d3004 	ldr	r3, [sp, #4]
   1e9b8:	e5850044 	str	r0, [r5, #68]	@ 0x44
   1e9bc:	e5942000 	ldr	r2, [r4]
   1e9c0:	e1530002 	cmp	r3, r2
   1e9c4:	1a000004 	bne	1e9dc <wctl_set_ssdp_description@@Base+0x70>
   1e9c8:	e28dd008 	add	sp, sp, #8
   1e9cc:	e1cd40d0 	ldrd	r4, [sp]
   1e9d0:	e59d6008 	ldr	r6, [sp, #8]
   1e9d4:	e28dd00c 	add	sp, sp, #12
   1e9d8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1e9dc:	ebffa018 	bl	6a44 <__stack_chk_fail@plt>
   1e9e0:	00013018 	andeq	r3, r1, r8, lsl r0
   1e9e4:	0000060c 	andeq	r0, r0, ip, lsl #12

0001e9e8 <wctl_set_ssdp_urn@@Base>:
   1e9e8:	e59f306c 	ldr	r3, [pc, #108]	@ 1ea5c <wctl_set_ssdp_urn@@Base+0x74>
   1e9ec:	e16d41f0 	strd	r4, [sp, #-16]!
   1e9f0:	e1a05000 	mov	r5, r0
   1e9f4:	e58d6008 	str	r6, [sp, #8]
   1e9f8:	e1a06001 	mov	r6, r1
   1e9fc:	e59f105c 	ldr	r1, [pc, #92]	@ 1ea60 <wctl_set_ssdp_urn@@Base+0x78>
   1ea00:	e58de00c 	str	lr, [sp, #12]
   1ea04:	e5900048 	ldr	r0, [r0, #72]	@ 0x48
   1ea08:	e24dd008 	sub	sp, sp, #8
   1ea0c:	e08f3003 	add	r3, pc, r3
   1ea10:	e7934001 	ldr	r4, [r3, r1]
   1ea14:	e3500000 	cmp	r0, #0
   1ea18:	e5943000 	ldr	r3, [r4]
   1ea1c:	e58d3004 	str	r3, [sp, #4]
   1ea20:	0a000000 	beq	1ea28 <wctl_set_ssdp_urn@@Base+0x40>
   1ea24:	ebff9e77 	bl	6408 <free@plt>
   1ea28:	e1a00006 	mov	r0, r6
   1ea2c:	ebffa115 	bl	6e88 <__strdup@plt>
   1ea30:	e59d3004 	ldr	r3, [sp, #4]
   1ea34:	e5850048 	str	r0, [r5, #72]	@ 0x48
   1ea38:	e5942000 	ldr	r2, [r4]
   1ea3c:	e1530002 	cmp	r3, r2
   1ea40:	1a000004 	bne	1ea58 <wctl_set_ssdp_urn@@Base+0x70>
   1ea44:	e28dd008 	add	sp, sp, #8
   1ea48:	e1cd40d0 	ldrd	r4, [sp]
   1ea4c:	e59d6008 	ldr	r6, [sp, #8]
   1ea50:	e28dd00c 	add	sp, sp, #12
   1ea54:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1ea58:	ebff9ff9 	bl	6a44 <__stack_chk_fail@plt>
   1ea5c:	00012f9c 	muleq	r1, ip, pc	@ <UNPREDICTABLE>
   1ea60:	0000060c 	andeq	r0, r0, ip, lsl #12

0001ea64 <wctl_set_ssdp_uuid@@Base>:
   1ea64:	e59f306c 	ldr	r3, [pc, #108]	@ 1ead8 <wctl_set_ssdp_uuid@@Base+0x74>
   1ea68:	e16d41f0 	strd	r4, [sp, #-16]!
   1ea6c:	e1a05000 	mov	r5, r0
   1ea70:	e58d6008 	str	r6, [sp, #8]
   1ea74:	e1a06001 	mov	r6, r1
   1ea78:	e59f105c 	ldr	r1, [pc, #92]	@ 1eadc <wctl_set_ssdp_uuid@@Base+0x78>
   1ea7c:	e58de00c 	str	lr, [sp, #12]
   1ea80:	e590004c 	ldr	r0, [r0, #76]	@ 0x4c
   1ea84:	e24dd008 	sub	sp, sp, #8
   1ea88:	e08f3003 	add	r3, pc, r3
   1ea8c:	e7934001 	ldr	r4, [r3, r1]
   1ea90:	e3500000 	cmp	r0, #0
   1ea94:	e5943000 	ldr	r3, [r4]
   1ea98:	e58d3004 	str	r3, [sp, #4]
   1ea9c:	0a000000 	beq	1eaa4 <wctl_set_ssdp_uuid@@Base+0x40>
   1eaa0:	ebff9e58 	bl	6408 <free@plt>
   1eaa4:	e1a00006 	mov	r0, r6
   1eaa8:	ebffa0f6 	bl	6e88 <__strdup@plt>
   1eaac:	e59d3004 	ldr	r3, [sp, #4]
   1eab0:	e585004c 	str	r0, [r5, #76]	@ 0x4c
   1eab4:	e5942000 	ldr	r2, [r4]
   1eab8:	e1530002 	cmp	r3, r2
   1eabc:	1a000004 	bne	1ead4 <wctl_set_ssdp_uuid@@Base+0x70>
   1eac0:	e28dd008 	add	sp, sp, #8
   1eac4:	e1cd40d0 	ldrd	r4, [sp]
   1eac8:	e59d6008 	ldr	r6, [sp, #8]
   1eacc:	e28dd00c 	add	sp, sp, #12
   1ead0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1ead4:	ebff9fda 	bl	6a44 <__stack_chk_fail@plt>
   1ead8:	00012f20 	andeq	r2, r1, r0, lsr #30
   1eadc:	0000060c 	andeq	r0, r0, ip, lsl #12

0001eae0 <wctl_set_ssdp_maxage@@Base>:
   1eae0:	e59f3038 	ldr	r3, [pc, #56]	@ 1eb20 <wctl_set_ssdp_maxage@@Base+0x40>
   1eae4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1eae8:	e24dd00c 	sub	sp, sp, #12
   1eaec:	e59f2030 	ldr	r2, [pc, #48]	@ 1eb24 <wctl_set_ssdp_maxage@@Base+0x44>
   1eaf0:	e08f3003 	add	r3, pc, r3
   1eaf4:	e7933002 	ldr	r3, [r3, r2]
   1eaf8:	e5801038 	str	r1, [r0, #56]	@ 0x38
   1eafc:	e5932000 	ldr	r2, [r3]
   1eb00:	e58d2004 	str	r2, [sp, #4]
   1eb04:	e59d2004 	ldr	r2, [sp, #4]
   1eb08:	e5933000 	ldr	r3, [r3]
   1eb0c:	e1520003 	cmp	r2, r3
   1eb10:	1a000001 	bne	1eb1c <wctl_set_ssdp_maxage@@Base+0x3c>
   1eb14:	e28dd00c 	add	sp, sp, #12
   1eb18:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1eb1c:	ebff9fc8 	bl	6a44 <__stack_chk_fail@plt>
   1eb20:	00012eb8 			@ <UNDEFINED> instruction: 0x00012eb8
   1eb24:	0000060c 	andeq	r0, r0, ip, lsl #12

0001eb28 <wctl_ssdp_enable@@Base>:
   1eb28:	e59f3038 	ldr	r3, [pc, #56]	@ 1eb68 <wctl_ssdp_enable@@Base+0x40>
   1eb2c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1eb30:	e24dd00c 	sub	sp, sp, #12
   1eb34:	e59f2030 	ldr	r2, [pc, #48]	@ 1eb6c <wctl_ssdp_enable@@Base+0x44>
   1eb38:	e08f3003 	add	r3, pc, r3
   1eb3c:	e7933002 	ldr	r3, [r3, r2]
   1eb40:	e5801028 	str	r1, [r0, #40]	@ 0x28
   1eb44:	e5932000 	ldr	r2, [r3]
   1eb48:	e58d2004 	str	r2, [sp, #4]
   1eb4c:	e59d2004 	ldr	r2, [sp, #4]
   1eb50:	e5933000 	ldr	r3, [r3]
   1eb54:	e1520003 	cmp	r2, r3
   1eb58:	1a000001 	bne	1eb64 <wctl_ssdp_enable@@Base+0x3c>
   1eb5c:	e28dd00c 	add	sp, sp, #12
   1eb60:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1eb64:	ebff9fb6 	bl	6a44 <__stack_chk_fail@plt>
   1eb68:	00012e70 	andeq	r2, r1, r0, ror lr
   1eb6c:	0000060c 	andeq	r0, r0, ip, lsl #12

0001eb70 <wctl_ssdp_set_callback@@Base>:
   1eb70:	e59f303c 	ldr	r3, [pc, #60]	@ 1ebb4 <wctl_ssdp_set_callback@@Base+0x44>
   1eb74:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
   1eb78:	e24dd00c 	sub	sp, sp, #12
   1eb7c:	e59fc034 	ldr	ip, [pc, #52]	@ 1ebb8 <wctl_ssdp_set_callback@@Base+0x48>
   1eb80:	e08f3003 	add	r3, pc, r3
   1eb84:	e793300c 	ldr	r3, [r3, ip]
   1eb88:	e5802030 	str	r2, [r0, #48]	@ 0x30
   1eb8c:	e580102c 	str	r1, [r0, #44]	@ 0x2c
   1eb90:	e5932000 	ldr	r2, [r3]
   1eb94:	e58d2004 	str	r2, [sp, #4]
   1eb98:	e59d2004 	ldr	r2, [sp, #4]
   1eb9c:	e5933000 	ldr	r3, [r3]
   1eba0:	e1520003 	cmp	r2, r3
   1eba4:	1a000001 	bne	1ebb0 <wctl_ssdp_set_callback@@Base+0x40>
   1eba8:	e28dd00c 	add	sp, sp, #12
   1ebac:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
   1ebb0:	ebff9fa3 	bl	6a44 <__stack_chk_fail@plt>
   1ebb4:	00012e28 	andeq	r2, r1, r8, lsr #28
   1ebb8:	0000060c 	andeq	r0, r0, ip, lsl #12

0001ebbc <wctl_destroy_instance@@Base>:
   1ebbc:	e59f20c0 	ldr	r2, [pc, #192]	@ 1ec84 <wctl_destroy_instance@@Base+0xc8>
   1ebc0:	e16d40fc 	strd	r4, [sp, #-12]!
   1ebc4:	e1a04000 	mov	r4, r0
   1ebc8:	e59fc0b8 	ldr	ip, [pc, #184]	@ 1ec88 <wctl_destroy_instance@@Base+0xcc>
   1ebcc:	e58de008 	str	lr, [sp, #8]
   1ebd0:	e24dd00c 	sub	sp, sp, #12
   1ebd4:	e5903000 	ldr	r3, [r0]
   1ebd8:	e5901004 	ldr	r1, [r0, #4]
   1ebdc:	e08f2002 	add	r2, pc, r2
   1ebe0:	e792500c 	ldr	r5, [r2, ip]
   1ebe4:	e5831004 	str	r1, [r3, #4]
   1ebe8:	e5901004 	ldr	r1, [r0, #4]
   1ebec:	e5952000 	ldr	r2, [r5]
   1ebf0:	e5813000 	str	r3, [r1]
   1ebf4:	e58d2004 	str	r2, [sp, #4]
   1ebf8:	ebff9e32 	bl	64c8 <wctl_stop_instance@plt>
   1ebfc:	e594000c 	ldr	r0, [r4, #12]
   1ec00:	ebff9e54 	bl	6558 <evhtp_free@plt>
   1ec04:	e5940040 	ldr	r0, [r4, #64]	@ 0x40
   1ec08:	e3500000 	cmp	r0, #0
   1ec0c:	0a000000 	beq	1ec14 <wctl_destroy_instance@@Base+0x58>
   1ec10:	ebff9dfc 	bl	6408 <free@plt>
   1ec14:	e5940044 	ldr	r0, [r4, #68]	@ 0x44
   1ec18:	e3500000 	cmp	r0, #0
   1ec1c:	0a000000 	beq	1ec24 <wctl_destroy_instance@@Base+0x68>
   1ec20:	ebff9df8 	bl	6408 <free@plt>
   1ec24:	e5940048 	ldr	r0, [r4, #72]	@ 0x48
   1ec28:	e3500000 	cmp	r0, #0
   1ec2c:	0a000000 	beq	1ec34 <wctl_destroy_instance@@Base+0x78>
   1ec30:	ebff9df4 	bl	6408 <free@plt>
   1ec34:	e594004c 	ldr	r0, [r4, #76]	@ 0x4c
   1ec38:	e3500000 	cmp	r0, #0
   1ec3c:	0a000000 	beq	1ec44 <wctl_destroy_instance@@Base+0x88>
   1ec40:	ebff9df0 	bl	6408 <free@plt>
   1ec44:	e59d1004 	ldr	r1, [sp, #4]
   1ec48:	e3a03000 	mov	r3, #0
   1ec4c:	e5952000 	ldr	r2, [r5]
   1ec50:	e5843040 	str	r3, [r4, #64]	@ 0x40
   1ec54:	e5843044 	str	r3, [r4, #68]	@ 0x44
   1ec58:	e5843048 	str	r3, [r4, #72]	@ 0x48
   1ec5c:	e1510002 	cmp	r1, r2
   1ec60:	e584304c 	str	r3, [r4, #76]	@ 0x4c
   1ec64:	1a000005 	bne	1ec80 <wctl_destroy_instance@@Base+0xc4>
   1ec68:	e1a00004 	mov	r0, r4
   1ec6c:	e28dd00c 	add	sp, sp, #12
   1ec70:	e1cd40d0 	ldrd	r4, [sp]
   1ec74:	e59de008 	ldr	lr, [sp, #8]
   1ec78:	e28dd00c 	add	sp, sp, #12
   1ec7c:	eaff9de1 	b	6408 <free@plt>
   1ec80:	ebff9f6f 	bl	6a44 <__stack_chk_fail@plt>
   1ec84:	00012dcc 	andeq	r2, r1, ip, asr #27
   1ec88:	0000060c 	andeq	r0, r0, ip, lsl #12
