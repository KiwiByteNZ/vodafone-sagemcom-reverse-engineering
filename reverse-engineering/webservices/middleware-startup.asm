
vodafone-custom-page/uploads/middleware:     file format elf32-littlearm


Disassembly of section .text:

000046f4 <main@@Base>:
    46f4:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
    46f8:	e59f4258 	ldr	r4, [pc, #600]	@ 4958 <main@@Base+0x264>
    46fc:	e1cd60f8 	strd	r6, [sp, #8]
    4700:	e1a06001 	mov	r6, r1
    4704:	e59f1250 	ldr	r1, [pc, #592]	@ 495c <main@@Base+0x268>
    4708:	e59f3250 	ldr	r3, [pc, #592]	@ 4960 <main@@Base+0x26c>
    470c:	e1cd81f0 	strd	r8, [sp, #16]
    4710:	e1a07000 	mov	r7, r0
    4714:	e1cda1f8 	strd	sl, [sp, #24]
    4718:	e3a0b000 	mov	fp, #0
    471c:	e59f2240 	ldr	r2, [pc, #576]	@ 4964 <main@@Base+0x270>
    4720:	e58de020 	str	lr, [sp, #32]
    4724:	e24dd0bc 	sub	sp, sp, #188	@ 0xbc
    4728:	e08f4004 	add	r4, pc, r4
    472c:	e08f1001 	add	r1, pc, r1
    4730:	e59f8230 	ldr	r8, [pc, #560]	@ 4968 <main@@Base+0x274>
    4734:	e1a0a00b 	mov	sl, fp
    4738:	e58db00c 	str	fp, [sp, #12]
    473c:	e28d9018 	add	r9, sp, #24
    4740:	e58d1010 	str	r1, [sp, #16]
    4744:	e7943003 	ldr	r3, [r4, r3]
    4748:	e08f8008 	add	r8, pc, r8
    474c:	e58d3008 	str	r3, [sp, #8]
    4750:	e59f3214 	ldr	r3, [pc, #532]	@ 496c <main@@Base+0x278>
    4754:	e59d1008 	ldr	r1, [sp, #8]
    4758:	e08f3003 	add	r3, pc, r3
    475c:	e58d3014 	str	r3, [sp, #20]
    4760:	e5913000 	ldr	r3, [r1]
    4764:	e58d30b4 	str	r3, [sp, #180]	@ 0xb4
    4768:	e7945002 	ldr	r5, [r4, r2]
    476c:	e58d9000 	str	r9, [sp]
    4770:	e1a00007 	mov	r0, r7
    4774:	e1a01006 	mov	r1, r6
    4778:	e1a02008 	mov	r2, r8
    477c:	e1a03005 	mov	r3, r5
    4780:	e58da018 	str	sl, [sp, #24]
    4784:	ebfffe15 	bl	3fe0 <getopt_long@plt>
    4788:	e3700001 	cmn	r0, #1
    478c:	0a000029 	beq	4838 <main@@Base+0x144>
    4790:	e3500064 	cmp	r0, #100	@ 0x64
    4794:	0a00001b 	beq	4808 <main@@Base+0x114>
    4798:	da00000a 	ble	47c8 <main@@Base+0xd4>
    479c:	e3500070 	cmp	r0, #112	@ 0x70
    47a0:	0a00001f 	beq	4824 <main@@Base+0x130>
    47a4:	e3500076 	cmp	r0, #118	@ 0x76
    47a8:	1a000018 	bne	4810 <main@@Base+0x11c>
    47ac:	e59f31bc 	ldr	r3, [pc, #444]	@ 4970 <main@@Base+0x27c>
    47b0:	e3a01000 	mov	r1, #0
    47b4:	e3a0200a 	mov	r2, #10
    47b8:	e7943003 	ldr	r3, [r4, r3]
    47bc:	e5930000 	ldr	r0, [r3]
    47c0:	ebffff62 	bl	4550 <strtol@plt>
    47c4:	eaffffe8 	b	476c <main@@Base+0x78>
    47c8:	e3500000 	cmp	r0, #0
    47cc:	1a00000f 	bne	4810 <main@@Base+0x11c>
    47d0:	e59d3018 	ldr	r3, [sp, #24]
    47d4:	e3a00001 	mov	r0, #1
    47d8:	e59d1010 	ldr	r1, [sp, #16]
    47dc:	e7952203 	ldr	r2, [r5, r3, lsl #4]
    47e0:	ebffff3f 	bl	44e4 <__printf_chk@plt>
    47e4:	e59f3184 	ldr	r3, [pc, #388]	@ 4970 <main@@Base+0x27c>
    47e8:	e7943003 	ldr	r3, [r4, r3]
    47ec:	e5932000 	ldr	r2, [r3]
    47f0:	e3520000 	cmp	r2, #0
    47f4:	0affffdc 	beq	476c <main@@Base+0x78>
    47f8:	e59d1014 	ldr	r1, [sp, #20]
    47fc:	e3a00001 	mov	r0, #1
    4800:	ebffff37 	bl	44e4 <__printf_chk@plt>
    4804:	eaffffd8 	b	476c <main@@Base+0x78>
    4808:	e3a0b001 	mov	fp, #1
    480c:	eaffffd6 	b	476c <main@@Base+0x78>
    4810:	e59f015c 	ldr	r0, [pc, #348]	@ 4974 <main@@Base+0x280>
    4814:	e08f0000 	add	r0, pc, r0
    4818:	ebfffe14 	bl	4070 <puts@plt>
    481c:	e3a00001 	mov	r0, #1
    4820:	ebffff5c 	bl	4598 <exit@plt>
    4824:	e59f3144 	ldr	r3, [pc, #324]	@ 4970 <main@@Base+0x27c>
    4828:	e7943003 	ldr	r3, [r4, r3]
    482c:	e5933000 	ldr	r3, [r3]
    4830:	e58d300c 	str	r3, [sp, #12]
    4834:	eaffffcc 	b	476c <main@@Base+0x78>
    4838:	e35b0001 	cmp	fp, #1
    483c:	0a000034 	beq	4914 <main@@Base+0x220>
    4840:	ebffff8d 	bl	467c <jioloop_init@plt>
    4844:	e3500000 	cmp	r0, #0
    4848:	ba00001c 	blt	48c0 <main@@Base+0x1cc>
    484c:	e3a02000 	mov	r2, #0
    4850:	e3a01001 	mov	r1, #1
    4854:	e1a03002 	mov	r3, r2
    4858:	e3a00005 	mov	r0, #5
    485c:	ebffff44 	bl	4574 <jioloop_signal_handle@plt>
    4860:	e3a02000 	mov	r2, #0
    4864:	e3a01001 	mov	r1, #1
    4868:	e1a03002 	mov	r3, r2
    486c:	e3a00006 	mov	r0, #6
    4870:	ebffff3f 	bl	4574 <jioloop_signal_handle@plt>
    4874:	e3a02000 	mov	r2, #0
    4878:	e3a01001 	mov	r1, #1
    487c:	e1a03002 	mov	r3, r2
    4880:	e3a0000d 	mov	r0, #13
    4884:	ebffff3a 	bl	4574 <jioloop_signal_handle@plt>
    4888:	ebfffd7d 	bl	3e84 <getuid@plt>
    488c:	e3500000 	cmp	r0, #0
    4890:	0a000017 	beq	48f4 <main@@Base+0x200>
    4894:	eb0001a2 	bl	4f24 <middleware_init_lapin@@Base>
    4898:	e1a01006 	mov	r1, r6
    489c:	e1a00007 	mov	r0, r7
    48a0:	eb0000bf 	bl	4ba4 <start_middleware@@Base>
    48a4:	e59f10cc 	ldr	r1, [pc, #204]	@ 4978 <main@@Base+0x284>
    48a8:	e3a0000f 	mov	r0, #15
    48ac:	e08f1001 	add	r1, pc, r1
    48b0:	ebffff0e 	bl	44f0 <prctl@plt>
    48b4:	ebfffde4 	bl	404c <jioloop_loop@plt>
    48b8:	e3500000 	cmp	r0, #0
    48bc:	aa000023 	bge	4950 <main@@Base+0x25c>
    48c0:	e59d1008 	ldr	r1, [sp, #8]
    48c4:	e3e00000 	mvn	r0, #0
    48c8:	e59d20b4 	ldr	r2, [sp, #180]	@ 0xb4
    48cc:	e5913000 	ldr	r3, [r1]
    48d0:	e1520003 	cmp	r2, r3
    48d4:	1a00001c 	bne	494c <main@@Base+0x258>
    48d8:	e28dd0bc 	add	sp, sp, #188	@ 0xbc
    48dc:	e1cd40d0 	ldrd	r4, [sp]
    48e0:	e1cd60d8 	ldrd	r6, [sp, #8]
    48e4:	e1cd81d0 	ldrd	r8, [sp, #16]
    48e8:	e1cda1d8 	ldrd	sl, [sp, #24]
    48ec:	e28dd020 	add	sp, sp, #32
    48f0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    48f4:	e59f0080 	ldr	r0, [pc, #128]	@ 497c <main@@Base+0x288>
    48f8:	e3a03019 	mov	r3, #25
    48fc:	e28d20b8 	add	r2, sp, #184	@ 0xb8
    4900:	e3a01001 	mov	r1, #1
    4904:	e522309c 	str	r3, [r2, #-156]!	@ 0xffffff64
    4908:	e08f0000 	add	r0, pc, r0
    490c:	eb000cbc 	bl	7c04 <drop_root_privileges@@Base>
    4910:	eaffffdf 	b	4894 <main@@Base+0x1a0>
    4914:	e1a0000b 	mov	r0, fp
    4918:	e1a0100b 	mov	r1, fp
    491c:	ebfffd82 	bl	3f2c <daemon@plt>
    4920:	e59d300c 	ldr	r3, [sp, #12]
    4924:	e3530000 	cmp	r3, #0
    4928:	0a000003 	beq	493c <main@@Base+0x248>
    492c:	e59d000c 	ldr	r0, [sp, #12]
    4930:	eb000061 	bl	4abc <_start@@Base+0x138>
    4934:	e3500000 	cmp	r0, #0
    4938:	aaffffc0 	bge	4840 <main@@Base+0x14c>
    493c:	e59f003c 	ldr	r0, [pc, #60]	@ 4980 <main@@Base+0x28c>
    4940:	e08f0000 	add	r0, pc, r0
    4944:	eb00005c 	bl	4abc <_start@@Base+0x138>
    4948:	eaffffbc 	b	4840 <main@@Base+0x14c>
    494c:	ebfffdb2 	bl	401c <__stack_chk_fail@plt>
    4950:	e3a00000 	mov	r0, #0
    4954:	ebffff0f 	bl	4598 <exit@plt>
    4958:	0001b5ac 	andeq	fp, r1, ip, lsr #11
    495c:	00009a54 	andeq	r9, r0, r4, asr sl
    4960:	00000310 	andeq	r0, r0, r0, lsl r3
    4964:	000002f0 	strdeq	r0, [r0], -r0	@ <UNPREDICTABLE>
    4968:	00009a30 	andeq	r9, r0, r0, lsr sl
    496c:	00009a34 	andeq	r9, r0, r4, lsr sl
    4970:	00000320 	andeq	r0, r0, r0, lsr #6
    4974:	00009988 	andeq	r9, r0, r8, lsl #19
    4978:	000099c8 	andeq	r9, r0, r8, asr #19
    497c:	00009960 	andeq	r9, r0, r0, ror #18
    4980:	00009910 	andeq	r9, r0, r0, lsl r9

00004984 <_start@@Base>:
    4984:	f04f 0b00 	mov.w	fp, #0
    4988:	f04f 0e00 	mov.w	lr, #0
    498c:	bc02      	pop	{r1}
    498e:	466a      	mov	r2, sp
    4990:	b404      	push	{r2}
    4992:	b401      	push	{r0}
    4994:	f8df a024 	ldr.w	sl, [pc, #36]	@ 49bc <_start@@Base+0x38>
    4998:	a308      	add	r3, pc, #32	@ (adr r3, 49bc <_start@@Base+0x38>)
    499a:	449a      	add	sl, r3
    499c:	f8df c020 	ldr.w	ip, [pc, #32]	@ 49c0 <_start@@Base+0x3c>
    49a0:	f85a c00c 	ldr.w	ip, [sl, ip]
    49a4:	f84d cd04 	str.w	ip, [sp, #-4]!
    49a8:	4b06      	ldr	r3, [pc, #24]	@ (49c4 <_start@@Base+0x40>)
    49aa:	f85a 3003 	ldr.w	r3, [sl, r3]
    49ae:	4806      	ldr	r0, [pc, #24]	@ (49c8 <_start@@Base+0x44>)
    49b0:	f85a 0000 	ldr.w	r0, [sl, r0]
    49b4:	f7ff eb62 	blx	407c <__libc_start_main@plt>
    49b8:	f7ff edc4 	blx	4544 <abort@plt>
    49bc:	b320      	cbz	r0, 4a08 <_start@@Base+0x84>
    49be:	0001      	movs	r1, r0
    49c0:	02ec      	lsls	r4, r5, #11
    49c2:	0000      	movs	r0, r0
    49c4:	0308      	lsls	r0, r1, #12
    49c6:	0000      	movs	r0, r0
    49c8:	02e4      	lsls	r4, r4, #11
    49ca:	0000      	movs	r0, r0
    49cc:	3014      	adds	r0, #20
    49ce:	e59f      	b.n	4510 <fread@plt+0x8>
    49d0:	2014      	movs	r0, #20
    49d2:	e59f      	b.n	4514 <__fprintf_chk@plt>
    49d4:	3003      	adds	r0, #3
    49d6:	e08f      	b.n	4af8 <_start@@Base+0x174>
    49d8:	2002      	movs	r0, #2
    49da:	e793      	b.n	4904 <main@@Base+0x210>
    49dc:	0000      	movs	r0, r0
    49de:	e352      	b.n	5086 <middleware_init_lapin@@Base+0x162>
    49e0:	ff1e 012f 	vrhadd.u16	d0, d14, d31
    49e4:	fda7 eaff 	stc2	10, cr14, [r7, #1020]!	@ 0x3fc	@ <UNPREDICTABLE>
    49e8:	b300      	cbz	r0, 4a2c <_start@@Base+0xa8>
    49ea:	0001      	movs	r1, r0
    49ec:	02fc      	lsls	r4, r7, #11
    49ee:	0000      	movs	r0, r0
    49f0:	4a07      	ldr	r2, [pc, #28]	@ (4a10 <_start@@Base+0x8c>)
    49f2:	4808      	ldr	r0, [pc, #32]	@ (4a14 <_start@@Base+0x90>)
    49f4:	447a      	add	r2, pc
    49f6:	4b08      	ldr	r3, [pc, #32]	@ (4a18 <_start@@Base+0x94>)
    49f8:	4478      	add	r0, pc
    49fa:	3203      	adds	r2, #3
    49fc:	1a12      	subs	r2, r2, r0
    49fe:	447b      	add	r3, pc
    4a00:	2a06      	cmp	r2, #6
    4a02:	d903      	bls.n	4a0c <_start@@Base+0x88>
    4a04:	4a05      	ldr	r2, [pc, #20]	@ (4a1c <_start@@Base+0x98>)
    4a06:	589b      	ldr	r3, [r3, r2]
    4a08:	b103      	cbz	r3, 4a0c <_start@@Base+0x88>
    4a0a:	4718      	bx	r3
    4a0c:	4770      	bx	lr
    4a0e:	bf00      	nop
    4a10:	b690      			@ <UNDEFINED> instruction: 0xb690
    4a12:	0001      	movs	r1, r0
    4a14:	b68c      			@ <UNDEFINED> instruction: 0xb68c
    4a16:	0001      	movs	r1, r0
    4a18:	b2da      	uxtb	r2, r3
    4a1a:	0001      	movs	r1, r0
    4a1c:	02e8      	lsls	r0, r5, #11
    4a1e:	0000      	movs	r0, r0
    4a20:	4808      	ldr	r0, [pc, #32]	@ (4a44 <_start@@Base+0xc0>)
    4a22:	4909      	ldr	r1, [pc, #36]	@ (4a48 <_start@@Base+0xc4>)
    4a24:	4478      	add	r0, pc
    4a26:	4b09      	ldr	r3, [pc, #36]	@ (4a4c <_start@@Base+0xc8>)
    4a28:	4479      	add	r1, pc
    4a2a:	1a09      	subs	r1, r1, r0
    4a2c:	447b      	add	r3, pc
    4a2e:	1089      	asrs	r1, r1, #2
    4a30:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
    4a34:	1049      	asrs	r1, r1, #1
    4a36:	d003      	beq.n	4a40 <_start@@Base+0xbc>
    4a38:	4a05      	ldr	r2, [pc, #20]	@ (4a50 <_start@@Base+0xcc>)
    4a3a:	589b      	ldr	r3, [r3, r2]
    4a3c:	b103      	cbz	r3, 4a40 <_start@@Base+0xbc>
    4a3e:	4718      	bx	r3
    4a40:	4770      	bx	lr
    4a42:	bf00      	nop
    4a44:	b660      	cpsie	
    4a46:	0001      	movs	r1, r0
    4a48:	b65c      			@ <UNDEFINED> instruction: 0xb65c
    4a4a:	0001      	movs	r1, r0
    4a4c:	b2ac      	uxth	r4, r5
    4a4e:	0001      	movs	r1, r0
    4a50:	0318      	lsls	r0, r3, #12
    4a52:	0000      	movs	r0, r0
    4a54:	4a0a      	ldr	r2, [pc, #40]	@ (4a80 <_start@@Base+0xfc>)
    4a56:	b508      	push	{r3, lr}
    4a58:	447a      	add	r2, pc
    4a5a:	4b0a      	ldr	r3, [pc, #40]	@ (4a84 <_start@@Base+0x100>)
    4a5c:	7812      	ldrb	r2, [r2, #0]
    4a5e:	447b      	add	r3, pc
    4a60:	b96a      	cbnz	r2, 4a7e <_start@@Base+0xfa>
    4a62:	4a09      	ldr	r2, [pc, #36]	@ (4a88 <_start@@Base+0x104>)
    4a64:	589b      	ldr	r3, [r3, r2]
    4a66:	b123      	cbz	r3, 4a72 <_start@@Base+0xee>
    4a68:	4b08      	ldr	r3, [pc, #32]	@ (4a8c <_start@@Base+0x108>)
    4a6a:	447b      	add	r3, pc
    4a6c:	6818      	ldr	r0, [r3, #0]
    4a6e:	f7ff ebf6 	blx	425c <__cxa_finalize@plt>
    4a72:	f7ff ffbd 	bl	49f0 <_start@@Base+0x6c>
    4a76:	4b06      	ldr	r3, [pc, #24]	@ (4a90 <_start@@Base+0x10c>)
    4a78:	2201      	movs	r2, #1
    4a7a:	447b      	add	r3, pc
    4a7c:	701a      	strb	r2, [r3, #0]
    4a7e:	bd08      	pop	{r3, pc}
    4a80:	b62c      			@ <UNDEFINED> instruction: 0xb62c
    4a82:	0001      	movs	r1, r0
    4a84:	b27a      	sxtb	r2, r7
    4a86:	0001      	movs	r1, r0
    4a88:	0304      	lsls	r4, r0, #12
    4a8a:	0000      	movs	r0, r0
    4a8c:	b596      	push	{r1, r2, r4, r7, lr}
    4a8e:	0001      	movs	r1, r0
    4a90:	b60a      			@ <UNDEFINED> instruction: 0xb60a
    4a92:	0001      	movs	r1, r0
    4a94:	4806      	ldr	r0, [pc, #24]	@ (4ab0 <_start@@Base+0x12c>)
    4a96:	b508      	push	{r3, lr}
    4a98:	4478      	add	r0, pc
    4a9a:	4b06      	ldr	r3, [pc, #24]	@ (4ab4 <_start@@Base+0x130>)
    4a9c:	6802      	ldr	r2, [r0, #0]
    4a9e:	447b      	add	r3, pc
    4aa0:	b11a      	cbz	r2, 4aaa <_start@@Base+0x126>
    4aa2:	4a05      	ldr	r2, [pc, #20]	@ (4ab8 <_start@@Base+0x134>)
    4aa4:	589b      	ldr	r3, [r3, r2]
    4aa6:	b103      	cbz	r3, 4aaa <_start@@Base+0x126>
    4aa8:	4798      	blx	r3
    4aaa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    4aae:	e7b7      	b.n	4a20 <_start@@Base+0x9c>
    4ab0:	ae00      	add	r6, sp, #0
    4ab2:	0001      	movs	r1, r0
    4ab4:	b23a      	sxth	r2, r7
    4ab6:	0001      	movs	r1, r0
    4ab8:	0300      	lsls	r0, r0, #12
    4aba:	0000      	movs	r0, r0
    4abc:	3084      	adds	r0, #132	@ 0x84
    4abe:	e59f      	b.n	4600 <setmntent@plt+0x8>
    4ac0:	40fc      	lsrs	r4, r7
    4ac2:	e16d      	b.n	4da0 <start_middleware@@Base+0x1fc>
    4ac4:	2080      	movs	r0, #128	@ 0x80
    4ac6:	e59f      	b.n	4608 <sendfile64@plt+0x4>
    4ac8:	e008      	b.n	4adc <_start@@Base+0x158>
    4aca:	e58d      	b.n	45e8 <cap_set_proc@plt+0x8>
    4acc:	d00c      	beq.n	4ae8 <_start@@Base+0x164>
    4ace:	e24d      	b.n	4f6c <middleware_init_lapin@@Base+0x48>
    4ad0:	1078      	asrs	r0, r7, #1
    4ad2:	e59f      	b.n	4614 <strcasecmp@plt+0x4>
    4ad4:	3003      	adds	r0, #3
    4ad6:	e08f      	b.n	4bf8 <start_middleware@@Base+0x54>
    4ad8:	4002      	ands	r2, r0
    4ada:	e793      	b.n	4a04 <_start@@Base+0x80>
    4adc:	1001      	asrs	r1, r0, #32
    4ade:	e08f      	b.n	4c00 <start_middleware@@Base+0x5c>
    4ae0:	3000      	adds	r0, #0
    4ae2:	e594      	b.n	460e <sendfile64@plt+0xa>
    4ae4:	3004      	adds	r0, #4
    4ae6:	e58d      	b.n	4604 <sendfile64@plt>
    4ae8:	fee6 ebff 	mcr2	11, 7, lr, cr6, cr15, {7}	@ <UNPREDICTABLE>
    4aec:	5000      	str	r0, [r0, r0]
    4aee:	e250      	b.n	4f92 <middleware_init_lapin@@Base+0x6e>
    4af0:	0011      	movs	r1, r2
    4af2:	0a00      	lsrs	r0, r0, #8
    4af4:	fe23 ebff 	mcr2	11, 1, lr, cr3, cr15, {7}	@ <UNPREDICTABLE>
    4af8:	2054      	movs	r0, #84	@ 0x54
    4afa:	e59f      	b.n	463c <endmntent@plt+0x8>
    4afc:	3000      	adds	r0, #0
    4afe:	e1a0      	b.n	4e42 <start_middleware@@Base+0x29e>
    4b00:	1001      	asrs	r1, r0, #32
    4b02:	e3a0      	b.n	5246 <middleware_init_lapin@@Base+0x322>
    4b04:	0005      	movs	r5, r0
    4b06:	e1a0      	b.n	4e4a <start_middleware@@Base+0x2a6>
    4b08:	2002      	movs	r0, #2
    4b0a:	e08f      	b.n	4c2c <start_middleware@@Base+0x88>
    4b0c:	fe80 ebff 	mcr2	11, 4, lr, cr0, cr15, {7}	@ <UNPREDICTABLE>
    4b10:	0005      	movs	r5, r0
    4b12:	e1a0      	b.n	4e56 <start_middleware@@Base+0x2b2>
    4b14:	fd16 ebff 	ldc2	11, cr14, [r6, #-1020]	@ 0xfffffc04	@ <UNPREDICTABLE>
    4b18:	0000      	movs	r0, r0
    4b1a:	e3a0      	b.n	525e <CFS_init@@Base+0xa>
    4b1c:	2004      	movs	r0, #4
    4b1e:	e59d      	b.n	465c <pthread_attr_destroy@plt+0x4>
    4b20:	3000      	adds	r0, #0
    4b22:	e594      	b.n	464e <strtok@plt+0x2>
    4b24:	0003      	movs	r3, r0
    4b26:	e152      	b.n	4dce <start_middleware@@Base+0x22a>
    4b28:	0005      	movs	r5, r0
    4b2a:	1a00      	subs	r0, r0, r0
    4b2c:	d00c      	beq.n	4b48 <_start@@Base+0x1c4>
    4b2e:	e28d      	b.n	504c <middleware_init_lapin@@Base+0x128>
    4b30:	40d0      	lsrs	r0, r2
    4b32:	e1cd      	b.n	4ed0 <start_middleware@@Base+0x32c>
    4b34:	d008      	beq.n	4b48 <_start@@Base+0x1c4>
    4b36:	e28d      	b.n	5054 <middleware_init_lapin@@Base+0x130>
    4b38:	f004 e49d 	bfcsel	0, 5474 <CFS_read@@Base+0x8c>, 2, ne
    4b3c:	0000      	movs	r0, r0
    4b3e:	e3e0      	b.n	5302 <CFS_open@@Base+0x42>
    4b40:	fff5 eaff 			@ <UNDEFINED> instruction: 0xfff5eaff
    4b44:	fd34 ebff 	ldc2	11, cr14, [r4, #-1020]!	@ 0xfffffc04	@ <UNPREDICTABLE>
    4b48:	b200      	sxth	r0, r0
    4b4a:	0001      	movs	r1, r0
    4b4c:	0310      	lsls	r0, r2, #12
    4b4e:	0000      	movs	r0, r0
    4b50:	9694      	str	r6, [sp, #592]	@ 0x250
    4b52:	0000      	movs	r0, r0
    4b54:	966c      	str	r6, [sp, #432]	@ 0x1b0
    4b56:	0000      	movs	r0, r0
    4b58:	303c      	adds	r0, #60	@ 0x3c
    4b5a:	e59f      	b.n	469c <pthread_mutex_init@plt+0x8>
    4b5c:	e004      	b.n	4b68 <_start@@Base+0x1e4>
    4b5e:	e52d      	b.n	45bc <BRWEVENT_Send@plt>
    4b60:	d00c      	beq.n	4b7c <_start@@Base+0x1f8>
    4b62:	e24d      	b.n	5000 <middleware_init_lapin@@Base+0xdc>
    4b64:	2034      	movs	r0, #52	@ 0x34
    4b66:	e59f      	b.n	46a8 <HASH_Get@plt+0x8>
    4b68:	3003      	adds	r0, #3
    4b6a:	e08f      	b.n	4c8c <start_middleware@@Base+0xe8>
    4b6c:	3002      	adds	r0, #2
    4b6e:	e793      	b.n	4a98 <_start@@Base+0x114>
    4b70:	2000      	movs	r0, #0
    4b72:	e593      	b.n	469c <pthread_mutex_init@plt+0x8>
    4b74:	2004      	movs	r0, #4
    4b76:	e58d      	b.n	4694 <pthread_mutex_init@plt>
    4b78:	2004      	movs	r0, #4
    4b7a:	e59d      	b.n	46b8 <mapi_api_brwplugin_var_init@plt>
    4b7c:	3000      	adds	r0, #0
    4b7e:	e593      	b.n	46a8 <HASH_Get@plt+0x8>
    4b80:	0003      	movs	r3, r0
    4b82:	e152      	b.n	4e2a <start_middleware@@Base+0x286>
    4b84:	0003      	movs	r3, r0
    4b86:	1a00      	subs	r0, r0, r0
    4b88:	0000      	movs	r0, r0
    4b8a:	e3a0      	b.n	52ce <CFS_open@@Base+0xe>
    4b8c:	d00c      	beq.n	4ba8 <start_middleware@@Base+0x4>
    4b8e:	e28d      	b.n	50ac <middleware_init_lapin@@Base+0x188>
    4b90:	e004      	b.n	4b9c <_start@@Base+0x218>
    4b92:	e49d      	b.n	44d0 <setgroups@plt+0x4>
    4b94:	fe19 eaff 	mrc2	10, 0, lr, cr9, cr15, {7}	@ <UNPREDICTABLE>
    4b98:	fd1f ebff 	ldc2	11, cr14, [pc, #-1020]	@ 47a0 <main@@Base+0xac>	@ <UNPREDICTABLE>
    4b9c:	b16c      	cbz	r4, 4bba <start_middleware@@Base+0x16>
    4b9e:	0001      	movs	r1, r0
    4ba0:	0310      	lsls	r0, r2, #12
	...

00004ba4 <start_middleware@@Base>:
    4ba4:	e59f3350 	ldr	r3, [pc, #848]	@ 4efc <start_middleware@@Base+0x358>
    4ba8:	e16d42f0 	strd	r4, [sp, #-32]!	@ 0xffffffe0
    4bac:	e59f234c 	ldr	r2, [pc, #844]	@ 4f00 <start_middleware@@Base+0x35c>
    4bb0:	e58de01c 	str	lr, [sp, #28]
    4bb4:	e1cd60f8 	strd	r6, [sp, #8]
    4bb8:	e1cd81f0 	strd	r8, [sp, #16]
    4bbc:	e58da018 	str	sl, [sp, #24]
    4bc0:	e24dd058 	sub	sp, sp, #88	@ 0x58
    4bc4:	e08f3003 	add	r3, pc, r3
    4bc8:	e58d1008 	str	r1, [sp, #8]
    4bcc:	e58d000c 	str	r0, [sp, #12]
    4bd0:	e7939002 	ldr	r9, [r3, r2]
    4bd4:	e5993000 	ldr	r3, [r9]
    4bd8:	e58d3054 	str	r3, [sp, #84]	@ 0x54
    4bdc:	ebfffdfb 	bl	43d0 <HDD_Monit@plt>
    4be0:	e1a08000 	mov	r8, r0
    4be4:	e28d1008 	add	r1, sp, #8
    4be8:	e28d000c 	add	r0, sp, #12
    4bec:	ebfffde8 	bl	4394 <DirectFBInit@plt>
    4bf0:	ebfffdff 	bl	43f4 <LOG_Init@plt>
    4bf4:	ebfffca5 	bl	3e90 <mapi_init@plt>
    4bf8:	e3500000 	cmp	r0, #0
    4bfc:	13e08000 	mvnne	r8, #0
    4c00:	1a000001 	bne	4c0c <start_middleware@@Base+0x68>
    4c04:	e2988000 	adds	r8, r8, #0
    4c08:	13e08000 	mvnne	r8, #0
    4c0c:	e59f42f0 	ldr	r4, [pc, #752]	@ 4f04 <start_middleware@@Base+0x360>
    4c10:	e3a07014 	mov	r7, #20
    4c14:	e59f62ec 	ldr	r6, [pc, #748]	@ 4f08 <start_middleware@@Base+0x364>
    4c18:	e08da007 	add	sl, sp, r7
    4c1c:	e59f52e8 	ldr	r5, [pc, #744]	@ 4f0c <start_middleware@@Base+0x368>
    4c20:	e08f4004 	add	r4, pc, r4
    4c24:	e08f6006 	add	r6, pc, r6
    4c28:	e08f5005 	add	r5, pc, r5
    4c2c:	e1a00004 	mov	r0, r4
    4c30:	e1a01006 	mov	r1, r6
    4c34:	e1a02004 	mov	r2, r4
    4c38:	e1a03005 	mov	r3, r5
    4c3c:	ebfffe64 	bl	45d4 <dbus_message_new_method_call@plt>
    4c40:	e3500000 	cmp	r0, #0
    4c44:	0afffff8 	beq	4c2c <start_middleware@@Base+0x88>
    4c48:	e3a01000 	mov	r1, #0
    4c4c:	e1a0300a 	mov	r3, sl
    4c50:	e1a02001 	mov	r2, r1
    4c54:	ebfffe9a 	bl	46c4 <sc_bus_method_call@plt>
    4c58:	e3500000 	cmp	r0, #0
    4c5c:	aa000099 	bge	4ec8 <start_middleware@@Base+0x324>
    4c60:	e2577001 	subs	r7, r7, #1
    4c64:	0a000002 	beq	4c74 <start_middleware@@Base+0xd0>
    4c68:	e3a00001 	mov	r0, #1
    4c6c:	ebfffcab 	bl	3f20 <sleep@plt>
    4c70:	eaffffed 	b	4c2c <start_middleware@@Base+0x88>
    4c74:	e28d501c 	add	r5, sp, #28
    4c78:	e3a04000 	mov	r4, #0
    4c7c:	e59f628c 	ldr	r6, [pc, #652]	@ 4f10 <start_middleware@@Base+0x36c>
    4c80:	ebfffdcf 	bl	43c4 <custom_init@plt>
    4c84:	e1500004 	cmp	r0, r4
    4c88:	e1a01005 	mov	r1, r5
    4c8c:	e58d401c 	str	r4, [sp, #28]
    4c90:	e1a00004 	mov	r0, r4
    4c94:	13e08000 	mvnne	r8, #0
    4c98:	e59f7274 	ldr	r7, [pc, #628]	@ 4f14 <start_middleware@@Base+0x370>
    4c9c:	ebfffdbf 	bl	43a0 <custom_send_info@plt>
    4ca0:	eb00016b 	bl	5254 <CFS_init@@Base>
    4ca4:	e1500004 	cmp	r0, r4
    4ca8:	e08f6006 	add	r6, pc, r6
    4cac:	13e08000 	mvnne	r8, #0
    4cb0:	e08f7007 	add	r7, pc, r7
    4cb4:	ebfffdec 	bl	446c <stbtools_init@plt>
    4cb8:	e1500004 	cmp	r0, r4
    4cbc:	e59f0254 	ldr	r0, [pc, #596]	@ 4f18 <start_middleware@@Base+0x374>
    4cc0:	13e08000 	mvnne	r8, #0
    4cc4:	e08f0000 	add	r0, pc, r0
    4cc8:	eb001185 	bl	92e4 <NVMCFG_init@@Base>
    4ccc:	ebfffc72 	bl	3e9c <Ver_GetSoftwareVersion@plt>
    4cd0:	e59f1244 	ldr	r1, [pc, #580]	@ 4f1c <start_middleware@@Base+0x378>
    4cd4:	e1a02004 	mov	r2, r4
    4cd8:	e1a03007 	mov	r3, r7
    4cdc:	e58d0000 	str	r0, [sp]
    4ce0:	e1a00006 	mov	r0, r6
    4ce4:	e08f1001 	add	r1, pc, r1
    4ce8:	eb00131e 	bl	9968 <NVMCFG_Set_Value@@Base>
    4cec:	ebfffcf4 	bl	40c4 <Ver_GetSagemVersion@plt>
    4cf0:	e59f1228 	ldr	r1, [pc, #552]	@ 4f20 <start_middleware@@Base+0x37c>
    4cf4:	e3a02001 	mov	r2, #1
    4cf8:	e1a03007 	mov	r3, r7
    4cfc:	e58d0000 	str	r0, [sp]
    4d00:	e1a00006 	mov	r0, r6
    4d04:	e08f1001 	add	r1, pc, r1
    4d08:	eb001316 	bl	9968 <NVMCFG_Set_Value@@Base>
    4d0c:	eb0013e1 	bl	9c98 <TRACETIME_Init@@Base>
    4d10:	e3a03001 	mov	r3, #1
    4d14:	e1a01005 	mov	r1, r5
    4d18:	e1a00004 	mov	r0, r4
    4d1c:	e58d301c 	str	r3, [sp, #28]
    4d20:	ebfffd9e 	bl	43a0 <custom_send_info@plt>
    4d24:	ebfffdeb 	bl	44d8 <Rsm_Init@plt>
    4d28:	e1500004 	cmp	r0, r4
    4d2c:	13e08000 	mvnne	r8, #0
    4d30:	ebfffc5c 	bl	3ea8 <Power_Init@plt>
    4d34:	e1500004 	cmp	r0, r4
    4d38:	13e08000 	mvnne	r8, #0
    4d3c:	ebfffd43 	bl	4250 <custom_event_init@plt>
    4d40:	ebfffd6c 	bl	42f8 <custom_fpn_lkey_init@plt>
    4d44:	ebfffc72 	bl	3f14 <custom_menu_language_file_init@plt>
    4d48:	ebfffc7d 	bl	3f44 <CAS_API_Init@plt>
    4d4c:	eb001a3c 	bl	b644 <TIMEZ_Init@@Base>
    4d50:	eb001efe 	bl	c950 <time_manager_init@@Base>
    4d54:	e1500004 	cmp	r0, r4
    4d58:	13e08000 	mvnne	r8, #0
    4d5c:	ebfffd59 	bl	42c8 <Avplayer_Init@plt>
    4d60:	e3a03002 	mov	r3, #2
    4d64:	e1500004 	cmp	r0, r4
    4d68:	e1a01005 	mov	r1, r5
    4d6c:	e1a00004 	mov	r0, r4
    4d70:	13e08000 	mvnne	r8, #0
    4d74:	e58d301c 	str	r3, [sp, #28]
    4d78:	ebfffd88 	bl	43a0 <custom_send_info@plt>
    4d7c:	ebfffc7f 	bl	3f80 <netutils_init@plt>
    4d80:	ebfffced 	bl	413c <netproto_init@plt>
    4d84:	e3a03003 	mov	r3, #3
    4d88:	e1a01005 	mov	r1, r5
    4d8c:	e1a00004 	mov	r0, r4
    4d90:	e58d301c 	str	r3, [sp, #28]
    4d94:	ebfffd81 	bl	43a0 <custom_send_info@plt>
    4d98:	ebfffd1d 	bl	4214 <custom_fpn_power_init@plt>
    4d9c:	e3a03004 	mov	r3, #4
    4da0:	e1a01005 	mov	r1, r5
    4da4:	e1a00004 	mov	r0, r4
    4da8:	e58d301c 	str	r3, [sp, #28]
    4dac:	ebfffd7b 	bl	43a0 <custom_send_info@plt>
    4db0:	ebfffcf3 	bl	4184 <graphics_init@plt>
    4db4:	e3a03005 	mov	r3, #5
    4db8:	e1500004 	cmp	r0, r4
    4dbc:	e1a01005 	mov	r1, r5
    4dc0:	e1a00004 	mov	r0, r4
    4dc4:	13e08000 	mvnne	r8, #0
    4dc8:	e58d301c 	str	r3, [sp, #28]
    4dcc:	ebfffd73 	bl	43a0 <custom_send_info@plt>
    4dd0:	ebfffd0c 	bl	4208 <dvb_init@plt>
    4dd4:	e3a03006 	mov	r3, #6
    4dd8:	e1a01005 	mov	r1, r5
    4ddc:	e1a00004 	mov	r0, r4
    4de0:	e58d301c 	str	r3, [sp, #28]
    4de4:	ebfffd6d 	bl	43a0 <custom_send_info@plt>
    4de8:	ebfffc37 	bl	3ecc <time_source_init@plt>
    4dec:	e1500004 	cmp	r0, r4
    4df0:	13e08000 	mvnne	r8, #0
    4df4:	ebfffd51 	bl	4340 <pvr_init@plt>
    4df8:	ebfffd35 	bl	42d4 <custom_fpn_pvr_init@plt>
    4dfc:	e3a03007 	mov	r3, #7
    4e00:	e1a01005 	mov	r1, r5
    4e04:	e1a00004 	mov	r0, r4
    4e08:	e58d301c 	str	r3, [sp, #28]
    4e0c:	ebfffd63 	bl	43a0 <custom_send_info@plt>
    4e10:	e3a03008 	mov	r3, #8
    4e14:	e1a01005 	mov	r1, r5
    4e18:	e1a00004 	mov	r0, r4
    4e1c:	e58d301c 	str	r3, [sp, #28]
    4e20:	ebfffd5e 	bl	43a0 <custom_send_info@plt>
    4e24:	e3a03009 	mov	r3, #9
    4e28:	e1a01005 	mov	r1, r5
    4e2c:	e1a00004 	mov	r0, r4
    4e30:	e58d301c 	str	r3, [sp, #28]
    4e34:	ebfffd59 	bl	43a0 <custom_send_info@plt>
    4e38:	ebfffc80 	bl	4040 <rsm_api_jsx_init@plt>
    4e3c:	ebfffc28 	bl	3ee4 <netutils_api_jsx_init@plt>
    4e40:	ebfffc24 	bl	3ed8 <netproto_api_jsx_init@plt>
    4e44:	ebfffd28 	bl	42ec <avio_api_jsx_init@plt>
    4e48:	ebfffd3f 	bl	434c <avplayer_api_jsx_init@plt>
    4e4c:	ebfffcf6 	bl	422c <mapi_api_brwplugin_channel_init@plt>
    4e50:	ebfffe18 	bl	46b8 <mapi_api_brwplugin_var_init@plt>
    4e54:	ebfffd8a 	bl	4484 <dvb_api_brwplugin_fe_init@plt>
    4e58:	ebfffdc2 	bl	4568 <avplayer_api_brwplugin_init@plt>
    4e5c:	ebfffda6 	bl	44fc <mapi_api_jsx_init@plt>
    4e60:	ebfffc61 	bl	3fec <JSX_CAS_Init@plt>
    4e64:	ebfffc7e 	bl	4064 <power_api_jsx_init@plt>
    4e68:	ebfffd04 	bl	4280 <dvb_api_jsx_init@plt>
    4e6c:	ebfffc4f 	bl	3fb0 <custom_api_jsx_init@plt>
    4e70:	e3a0300a 	mov	r3, #10
    4e74:	e1a01005 	mov	r1, r5
    4e78:	e1a00004 	mov	r0, r4
    4e7c:	e58d301c 	str	r3, [sp, #28]
    4e80:	ebfffd46 	bl	43a0 <custom_send_info@plt>
    4e84:	e3a0300b 	mov	r3, #11
    4e88:	e1a00004 	mov	r0, r4
    4e8c:	e1a01005 	mov	r1, r5
    4e90:	e58d301c 	str	r3, [sp, #28]
    4e94:	ebfffd41 	bl	43a0 <custom_send_info@plt>
    4e98:	e59d2054 	ldr	r2, [sp, #84]	@ 0x54
    4e9c:	e1a00008 	mov	r0, r8
    4ea0:	e5993000 	ldr	r3, [r9]
    4ea4:	e1520003 	cmp	r2, r3
    4ea8:	1a000012 	bne	4ef8 <start_middleware@@Base+0x354>
    4eac:	e28dd058 	add	sp, sp, #88	@ 0x58
    4eb0:	e1cd40d0 	ldrd	r4, [sp]
    4eb4:	e1cd60d8 	ldrd	r6, [sp, #8]
    4eb8:	e1cd81d0 	ldrd	r8, [sp, #16]
    4ebc:	e59da018 	ldr	sl, [sp, #24]
    4ec0:	e28dd01c 	add	sp, sp, #28
    4ec4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    4ec8:	e28d501c 	add	r5, sp, #28
    4ecc:	e59d0014 	ldr	r0, [sp, #20]
    4ed0:	e1a01005 	mov	r1, r5
    4ed4:	ebfffbf6 	bl	3eb4 <dbus_message_iter_init@plt>
    4ed8:	e1a00005 	mov	r0, r5
    4edc:	e28d1018 	add	r1, sp, #24
    4ee0:	ebfffcc5 	bl	41fc <dbus_message_iter_get_basic@plt>
    4ee4:	e1a00005 	mov	r0, r5
    4ee8:	ebfffc2a 	bl	3f98 <dbus_message_iter_next@plt>
    4eec:	e59d0014 	ldr	r0, [sp, #20]
    4ef0:	ebfffc40 	bl	3ff8 <dbus_message_unref@plt>
    4ef4:	eaffff5f 	b	4c78 <start_middleware@@Base+0xd4>
    4ef8:	ebfffc47 	bl	401c <__stack_chk_fail@plt>
    4efc:	0001b110 	andeq	fp, r1, r0, lsl r1
    4f00:	00000310 	andeq	r0, r0, r0, lsl r3
    4f04:	00009680 	andeq	r9, r0, r0, lsl #13
    4f08:	00009694 	muleq	r0, r4, r6
    4f0c:	000096a8 	andeq	r9, r0, r8, lsr #13
    4f10:	00009630 	andeq	r9, r0, r0, lsr r6
    4f14:	00009644 	andeq	r9, r0, r4, asr #12
    4f18:	fffffe8c 			@ <UNDEFINED> instruction: 0xfffffe8c
    4f1c:	00009600 	andeq	r9, r0, r0, lsl #12
    4f20:	000095f8 	strdeq	r9, [r0], -r8

00004f24 <middleware_init_lapin@@Base>:
    4f24:	e59f3040 	ldr	r3, [pc, #64]	@ 4f6c <middleware_init_lapin@@Base+0x48>
    4f28:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    4f2c:	e24dd00c 	sub	sp, sp, #12
    4f30:	e59f2038 	ldr	r2, [pc, #56]	@ 4f70 <middleware_init_lapin@@Base+0x4c>
    4f34:	e08f3003 	add	r3, pc, r3
    4f38:	e7933002 	ldr	r3, [r3, r2]
    4f3c:	e5932000 	ldr	r2, [r3]
    4f40:	e58d2004 	str	r2, [sp, #4]
    4f44:	e59d2004 	ldr	r2, [sp, #4]
    4f48:	e5933000 	ldr	r3, [r3]
    4f4c:	e1520003 	cmp	r2, r3
    4f50:	1a000004 	bne	4f68 <middleware_init_lapin@@Base+0x44>
    4f54:	e30f0ba7 	movw	r0, #64423	@ 0xfba7
    4f58:	e34007fe 	movt	r0, #2046	@ 0x7fe
    4f5c:	e28dd00c 	add	sp, sp, #12
    4f60:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
    4f64:	eafffc7d 	b	4160 <LAPIN_Init@plt>
    4f68:	ebfffc2b 	bl	401c <__stack_chk_fail@plt>
    4f6c:	0001ada0 	andeq	sl, r1, r0, lsr #27
    4f70:	00000310 	andeq	r0, r0, r0, lsl r3
