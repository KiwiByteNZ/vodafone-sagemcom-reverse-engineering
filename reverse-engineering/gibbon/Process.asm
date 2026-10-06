
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

009118d4 <netflix::Process::kill(int)@@Base>:
  9118d4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  9118d8:	e2808068 	add	r8, r0, #104	@ 0x68
  9118dc:	e59f50c0 	ldr	r5, [pc, #192]	@ 9119a4 <netflix::Process::kill(int)@@Base+0xd0>
  9118e0:	e24dd008 	sub	sp, sp, #8
  9118e4:	e59f30bc 	ldr	r3, [pc, #188]	@ 9119a8 <netflix::Process::kill(int)@@Base+0xd4>
  9118e8:	e1a04000 	mov	r4, r0
  9118ec:	e08f5005 	add	r5, pc, r5
  9118f0:	e1a07001 	mov	r7, r1
  9118f4:	e1a00008 	mov	r0, r8
  9118f8:	e3a01001 	mov	r1, #1
  9118fc:	e7956003 	ldr	r6, [r5, r3]
  911900:	e5963000 	ldr	r3, [r6]
  911904:	e58d3004 	str	r3, [sp, #4]
  911908:	ebffae1e 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  91190c:	e1c42cd0 	ldrd	r2, [r4, #192]	@ 0xc0
  911910:	e3a03000 	mov	r3, #0
  911914:	e2022003 	and	r2, r2, #3
  911918:	e1921003 	orrs	r1, r2, r3
  91191c:	0a00000f 	beq	911960 <netflix::Process::kill(int)@@Base+0x8c>
  911920:	e5944024 	ldr	r4, [r4, #36]	@ 0x24
  911924:	e3a01001 	mov	r1, #1
  911928:	e1a00008 	mov	r0, r8
  91192c:	ebffae4a 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  911930:	e1a01007 	mov	r1, r7
  911934:	e1a00004 	mov	r0, r4
  911938:	ebe4fa5a 	bl	2502a8 <kill@plt>
  91193c:	e3700001 	cmn	r0, #1
  911940:	13a00001 	movne	r0, #1
  911944:	0a00000a 	beq	911974 <netflix::Process::kill(int)@@Base+0xa0>
  911948:	e59d2004 	ldr	r2, [sp, #4]
  91194c:	e5963000 	ldr	r3, [r6]
  911950:	e1520003 	cmp	r2, r3
  911954:	1a000011 	bne	9119a0 <netflix::Process::kill(int)@@Base+0xcc>
  911958:	e28dd008 	add	sp, sp, #8
  91195c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  911960:	e1a00008 	mov	r0, r8
  911964:	e3a01001 	mov	r1, #1
  911968:	ebffae3b 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  91196c:	e3a00000 	mov	r0, #0
  911970:	eafffff4 	b	911948 <netflix::Process::kill(int)@@Base+0x74>
  911974:	ebe4f61f 	bl	24f1f8 <__errno_location@plt>
  911978:	e59f302c 	ldr	r3, [pc, #44]	@ 9119ac <netflix::Process::kill(int)@@Base+0xd8>
  91197c:	e59f102c 	ldr	r1, [pc, #44]	@ 9119b0 <netflix::Process::kill(int)@@Base+0xdc>
  911980:	e1a02004 	mov	r2, r4
  911984:	e795c003 	ldr	ip, [r5, r3]
  911988:	e08f1001 	add	r1, pc, r1
  91198c:	e5903000 	ldr	r3, [r0]
  911990:	e1a0000c 	mov	r0, ip
  911994:	ebff782d 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  911998:	e3a00000 	mov	r0, #0
  91199c:	eaffffe9 	b	911948 <netflix::Process::kill(int)@@Base+0x74>
  9119a0:	ebe4f4bb 	bl	24ec94 <__stack_chk_fail@plt>
  9119a4:	00115814 	andseq	r5, r1, r4, lsl r8
  9119a8:	00003440 	andeq	r3, r0, r0, asr #8
  9119ac:	00001b7c 	andeq	r1, r0, ip, ror fp
  9119b0:	0008d290 	muleq	r8, r0, r2

009119b4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base>:
  9119b4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  9119b8:	e24dd054 	sub	sp, sp, #84	@ 0x54
  9119bc:	e59f6614 	ldr	r6, [pc, #1556]	@ 911fd8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x624>
  9119c0:	e30d2e83 	movw	r2, #56963	@ 0xde83
  9119c4:	e59f3610 	ldr	r3, [pc, #1552]	@ 911fdc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x628>
  9119c8:	e344231b 	movt	r2, #17179	@ 0x431b
  9119cc:	e08f6006 	add	r6, pc, r6
  9119d0:	e58d000c 	str	r0, [sp, #12]
  9119d4:	e58d1010 	str	r1, [sp, #16]
  9119d8:	e2800068 	add	r0, r0, #104	@ 0x68
  9119dc:	e58d0014 	str	r0, [sp, #20]
  9119e0:	e3a01001 	mov	r1, #1
  9119e4:	e7963003 	ldr	r3, [r6, r3]
  9119e8:	e28dc044 	add	ip, sp, #68	@ 0x44
  9119ec:	e58d201c 	str	r2, [sp, #28]
  9119f0:	e28de030 	add	lr, sp, #48	@ 0x30
  9119f4:	e58dc008 	str	ip, [sp, #8]
  9119f8:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  9119fc:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  911a00:	e59d300c 	ldr	r3, [sp, #12]
  911a04:	e58de020 	str	lr, [sp, #32]
  911a08:	e2833090 	add	r3, r3, #144	@ 0x90
  911a0c:	e58d3018 	str	r3, [sp, #24]
  911a10:	e5923000 	ldr	r3, [r2]
  911a14:	e58d304c 	str	r3, [sp, #76]	@ 0x4c
  911a18:	ebffadda 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  911a1c:	e59dc010 	ldr	ip, [sp, #16]
  911a20:	e59de00c 	ldr	lr, [sp, #12]
  911a24:	e1cc20d0 	ldrd	r2, [ip]
  911a28:	e1ce0cd0 	ldrd	r0, [lr, #192]	@ 0xc0
  911a2c:	e1cd22f8 	strd	r2, [sp, #40]	@ 0x28
  911a30:	ea00000c 	b	911a68 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0xb4>
  911a34:	e1cd22d8 	ldrd	r2, [sp, #40]	@ 0x28
  911a38:	e192c003 	orrs	ip, r2, r3
  911a3c:	03a032cf 	moveq	r3, #-268435444	@ 0xf000000c
  911a40:	058d3044 	streq	r3, [sp, #68]	@ 0x44
  911a44:	1a00006b 	bne	911bf8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x244>
  911a48:	e59d8044 	ldr	r8, [sp, #68]	@ 0x44
  911a4c:	e24882cf 	sub	r8, r8, #-268435444	@ 0xf000000c
  911a50:	e16f8f18 	clz	r8, r8
  911a54:	e1a082a8 	lsr	r8, r8, #5
  911a58:	e58d8004 	str	r8, [sp, #4]
  911a5c:	e59d3004 	ldr	r3, [sp, #4]
  911a60:	e3530000 	cmp	r3, #0
  911a64:	1a000054 	bne	911bbc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x208>
  911a68:	e2004003 	and	r4, r0, #3
  911a6c:	e3a05000 	mov	r5, #0
  911a70:	e194c005 	orrs	ip, r4, r5
  911a74:	0a000052 	beq	911bc4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x210>
  911a78:	e59d2010 	ldr	r2, [sp, #16]
  911a7c:	e1c240d0 	ldrd	r4, [r2]
  911a80:	e1943005 	orrs	r3, r4, r5
  911a84:	1affffea 	bne	911a34 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x80>
  911a88:	e28d0044 	add	r0, sp, #68	@ 0x44
  911a8c:	e59d1018 	ldr	r1, [sp, #24]
  911a90:	e59d2014 	ldr	r2, [sp, #20]
  911a94:	e28d3030 	add	r3, sp, #48	@ 0x30
  911a98:	e1cd43f0 	strd	r4, [sp, #48]	@ 0x30
  911a9c:	ebe5c995 	bl	2840f8 <netflix::ConditionVariable::wait(netflix::Mutex*, netflix::Time const&)@@Base>
  911aa0:	e59db048 	ldr	fp, [sp, #72]	@ 0x48
  911aa4:	e35b0000 	cmp	fp, #0
  911aa8:	0a000107 	beq	911ecc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x518>
  911aac:	e89b0480 	ldm	fp, {r7, sl}
  911ab0:	e15a0007 	cmp	sl, r7
  911ab4:	e51a1008 	ldr	r1, [sl, #-8]
  911ab8:	e5918004 	ldr	r8, [r1, #4]
  911abc:	e24882cf 	sub	r8, r8, #-268435444	@ 0xf000000c
  911ac0:	e16f8f18 	clz	r8, r8
  911ac4:	e1a082a8 	lsr	r8, r8, #5
  911ac8:	e58d8004 	str	r8, [sp, #4]
  911acc:	0a000031 	beq	911b98 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x1e4>
  911ad0:	e2878004 	add	r8, r7, #4
  911ad4:	e1a04007 	mov	r4, r7
  911ad8:	ea000002 	b	911ae8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x134>
  911adc:	e2844008 	add	r4, r4, #8
  911ae0:	e15a0004 	cmp	sl, r4
  911ae4:	0a000028 	beq	911b8c <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x1d8>
  911ae8:	e0673004 	rsb	r3, r7, r4
  911aec:	e7985003 	ldr	r5, [r8, r3]
  911af0:	e3550000 	cmp	r5, #0
  911af4:	0afffff8 	beq	911adc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x128>
  911af8:	e59f24e0 	ldr	r2, [pc, #1248]	@ 911fe0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x62c>
  911afc:	e2853004 	add	r3, r5, #4
  911b00:	e7969002 	ldr	r9, [r6, r2]
  911b04:	e3590000 	cmp	r9, #0
  911b08:	0a0000f2 	beq	911ed8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x524>
  911b0c:	f57ff05f 	dmb	sy
  911b10:	e1932f9f 	ldrex	r2, [r3]
  911b14:	e242c001 	sub	ip, r2, #1
  911b18:	e183ef9c 	strex	lr, ip, [r3]
  911b1c:	e35e0000 	cmp	lr, #0
  911b20:	1afffffa 	bne	911b10 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x15c>
  911b24:	f57ff05f 	dmb	sy
  911b28:	e3520001 	cmp	r2, #1
  911b2c:	1affffea 	bne	911adc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x128>
  911b30:	e5953000 	ldr	r3, [r5]
  911b34:	e1a00005 	mov	r0, r5
  911b38:	e5933008 	ldr	r3, [r3, #8]
  911b3c:	e12fff33 	blx	r3
  911b40:	e3590000 	cmp	r9, #0
  911b44:	e2853008 	add	r3, r5, #8
  911b48:	0a0000ea 	beq	911ef8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x544>
  911b4c:	f57ff05f 	dmb	sy
  911b50:	e1932f9f 	ldrex	r2, [r3]
  911b54:	e2420001 	sub	r0, r2, #1
  911b58:	e1831f90 	strex	r1, r0, [r3]
  911b5c:	e3510000 	cmp	r1, #0
  911b60:	1afffffa 	bne	911b50 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x19c>
  911b64:	f57ff05f 	dmb	sy
  911b68:	e3520001 	cmp	r2, #1
  911b6c:	1affffda 	bne	911adc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x128>
  911b70:	e5953000 	ldr	r3, [r5]
  911b74:	e1a00005 	mov	r0, r5
  911b78:	e2844008 	add	r4, r4, #8
  911b7c:	e593300c 	ldr	r3, [r3, #12]
  911b80:	e12fff33 	blx	r3
  911b84:	e15a0004 	cmp	sl, r4
  911b88:	1affffd6 	bne	911ae8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x134>
  911b8c:	e59ba000 	ldr	sl, [fp]
  911b90:	e35a0000 	cmp	sl, #0
  911b94:	0a000001 	beq	911ba0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x1ec>
  911b98:	e1a0000a 	mov	r0, sl
  911b9c:	ebe4f9bb 	bl	250290 <operator delete(void*)@plt>
  911ba0:	e1a0000b 	mov	r0, fp
  911ba4:	ebe4f9b9 	bl	250290 <operator delete(void*)@plt>
  911ba8:	e59d3004 	ldr	r3, [sp, #4]
  911bac:	e59d200c 	ldr	r2, [sp, #12]
  911bb0:	e3530000 	cmp	r3, #0
  911bb4:	e1c20cd0 	ldrd	r0, [r2, #192]	@ 0xc0
  911bb8:	0affffaa 	beq	911a68 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0xb4>
  911bbc:	e2004003 	and	r4, r0, #3
  911bc0:	e3a05000 	mov	r5, #0
  911bc4:	e59d0014 	ldr	r0, [sp, #20]
  911bc8:	e3a01001 	mov	r1, #1
  911bcc:	ebffada2 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  911bd0:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  911bd4:	e194e005 	orrs	lr, r4, r5
  911bd8:	e59d204c 	ldr	r2, [sp, #76]	@ 0x4c
  911bdc:	e5903000 	ldr	r3, [r0]
  911be0:	03a00001 	moveq	r0, #1
  911be4:	13a00000 	movne	r0, #0
  911be8:	e1520003 	cmp	r2, r3
  911bec:	1a0000f3 	bne	911fc0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x60c>
  911bf0:	e28dd054 	add	sp, sp, #84	@ 0x54
  911bf4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  911bf8:	e28d1044 	add	r1, sp, #68	@ 0x44
  911bfc:	e3a00004 	mov	r0, #4
  911c00:	ebe4f63f 	bl	24f504 <clock_gettime@plt>
  911c04:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  911c08:	e59dc01c 	ldr	ip, [sp, #28]
  911c0c:	e3a0effa 	mov	lr, #1000	@ 0x3e8
  911c10:	e59f03cc 	ldr	r0, [pc, #972]	@ 911fe4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x630>
  911c14:	e59d1044 	ldr	r1, [sp, #68]	@ 0x44
  911c18:	e0c2c39c 	smull	ip, r2, ip, r3
  911c1c:	e1a03fc3 	asr	r3, r3, #31
  911c20:	e7969000 	ldr	r9, [r6, r0]
  911c24:	e1c940d0 	ldrd	r4, [r9]
  911c28:	e0632942 	rsb	r2, r3, r2, asr #18
  911c2c:	e3540000 	cmp	r4, #0
  911c30:	e1a03fc2 	asr	r3, r2, #31
  911c34:	e0e3219e 	smlal	r2, r3, lr, r1
  911c38:	01a0a002 	moveq	sl, r2
  911c3c:	01a0b003 	moveq	fp, r3
  911c40:	1a0000b4 	bne	911f18 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x564>
  911c44:	e28d803c 	add	r8, sp, #60	@ 0x3c
  911c48:	e59d1018 	ldr	r1, [sp, #24]
  911c4c:	e59d2014 	ldr	r2, [sp, #20]
  911c50:	e28d3028 	add	r3, sp, #40	@ 0x28
  911c54:	e1a00008 	mov	r0, r8
  911c58:	ebe5c926 	bl	2840f8 <netflix::ConditionVariable::wait(netflix::Mutex*, netflix::Time const&)@@Base>
  911c5c:	e28d1044 	add	r1, sp, #68	@ 0x44
  911c60:	e3a00004 	mov	r0, #4
  911c64:	ebe4f626 	bl	24f504 <clock_gettime@plt>
  911c68:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  911c6c:	e59d001c 	ldr	r0, [sp, #28]
  911c70:	e3a0cffa 	mov	ip, #1000	@ 0x3e8
  911c74:	e59d1044 	ldr	r1, [sp, #68]	@ 0x44
  911c78:	e1c940d0 	ldrd	r4, [r9]
  911c7c:	e0c20390 	smull	r0, r2, r0, r3
  911c80:	e1a03fc3 	asr	r3, r3, #31
  911c84:	e3540000 	cmp	r4, #0
  911c88:	e0632942 	rsb	r2, r3, r2, asr #18
  911c8c:	e1a03fc2 	asr	r3, r2, #31
  911c90:	e0e3219c 	smlal	r2, r3, ip, r1
  911c94:	01a00002 	moveq	r0, r2
  911c98:	01a01003 	moveq	r1, r3
  911c9c:	1a0000b7 	bne	911f80 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x5cc>
  911ca0:	e15b0001 	cmp	fp, r1
  911ca4:	015a0000 	cmpeq	sl, r0
  911ca8:	9a000008 	bls	911cd0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x31c>
  911cac:	e1cd02d8 	ldrd	r0, [sp, #40]	@ 0x28
  911cb0:	e190e001 	orrs	lr, r0, r1
  911cb4:	13a02000 	movne	r2, #0
  911cb8:	13a03000 	movne	r3, #0
  911cbc:	1a000009 	bne	911ce8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x334>
  911cc0:	e3a02000 	mov	r2, #0
  911cc4:	e3a03000 	mov	r3, #0
  911cc8:	e1cd22f8 	strd	r2, [sp, #40]	@ 0x28
  911ccc:	ea000008 	b	911cf4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x340>
  911cd0:	e050200a 	subs	r2, r0, sl
  911cd4:	e0c1300b 	sbc	r3, r1, fp
  911cd8:	e1cd02d8 	ldrd	r0, [sp, #40]	@ 0x28
  911cdc:	e1530001 	cmp	r3, r1
  911ce0:	01520000 	cmpeq	r2, r0
  911ce4:	2afffff5 	bcs	911cc0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x30c>
  911ce8:	e0502002 	subs	r2, r0, r2
  911cec:	e0c13003 	sbc	r3, r1, r3
  911cf0:	e1cd22f8 	strd	r2, [sp, #40]	@ 0x28
  911cf4:	e59d1040 	ldr	r1, [sp, #64]	@ 0x40
  911cf8:	e3a02000 	mov	r2, #0
  911cfc:	e59d303c 	ldr	r3, [sp, #60]	@ 0x3c
  911d00:	e1510002 	cmp	r1, r2
  911d04:	e58d2048 	str	r2, [sp, #72]	@ 0x48
  911d08:	e58d3044 	str	r3, [sp, #68]	@ 0x44
  911d0c:	0a00006e 	beq	911ecc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x518>
  911d10:	e3a0000c 	mov	r0, #12
  911d14:	ebe4f3ed 	bl	24ecd0 <operator new(unsigned int)@plt>
  911d18:	e59d4040 	ldr	r4, [sp, #64]	@ 0x40
  911d1c:	e3a03000 	mov	r3, #0
  911d20:	e1a0b000 	mov	fp, r0
  911d24:	e8940024 	ldm	r4, {r2, r5}
  911d28:	e5803000 	str	r3, [r0]
  911d2c:	e0625005 	rsb	r5, r2, r5
  911d30:	e5803004 	str	r3, [r0, #4]
  911d34:	e5803008 	str	r3, [r0, #8]
  911d38:	e1b051c5 	asrs	r5, r5, #3
  911d3c:	01a00005 	moveq	r0, r5
  911d40:	1a00005b 	bne	911eb4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x500>
  911d44:	e0805005 	add	r5, r0, r5
  911d48:	e58b0000 	str	r0, [fp]
  911d4c:	e98b0021 	stmib	fp, {r0, r5}
  911d50:	e8941008 	ldm	r4, {r3, ip}
  911d54:	e153000c 	cmp	r3, ip
  911d58:	0a000017 	beq	911dbc <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x408>
  911d5c:	e3500000 	cmp	r0, #0
  911d60:	0a000011 	beq	911dac <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x3f8>
  911d64:	e5932000 	ldr	r2, [r3]
  911d68:	e5802000 	str	r2, [r0]
  911d6c:	e5932004 	ldr	r2, [r3, #4]
  911d70:	e3520000 	cmp	r2, #0
  911d74:	e5802004 	str	r2, [r0, #4]
  911d78:	0a00000b 	beq	911dac <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x3f8>
  911d7c:	e59fe25c 	ldr	lr, [pc, #604]	@ 911fe0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x62c>
  911d80:	e2821004 	add	r1, r2, #4
  911d84:	e796e00e 	ldr	lr, [r6, lr]
  911d88:	e35e0000 	cmp	lr, #0
  911d8c:	0a000055 	beq	911ee8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x534>
  911d90:	f57ff05f 	dmb	sy
  911d94:	e191ef9f 	ldrex	r14, [r1]
  911d98:	e28ee001 	add	lr, lr, #1
  911d9c:	e1812f9e 	strex	r2, lr, [r1]
  911da0:	e3520000 	cmp	r2, #0
  911da4:	1afffffa 	bne	911d94 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x3e0>
  911da8:	f57ff05f 	dmb	sy
  911dac:	e2833008 	add	r3, r3, #8
  911db0:	e2800008 	add	r0, r0, #8
  911db4:	e15c0003 	cmp	ip, r3
  911db8:	1affffe7 	bne	911d5c <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x3a8>
  911dbc:	e59d7040 	ldr	r7, [sp, #64]	@ 0x40
  911dc0:	e58b0004 	str	r0, [fp, #4]
  911dc4:	e3570000 	cmp	r7, #0
  911dc8:	e58db048 	str	fp, [sp, #72]	@ 0x48
  911dcc:	0affff36 	beq	911aac <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0xf8>
  911dd0:	e8970a00 	ldm	r7, {r9, fp}
  911dd4:	e159000b 	cmp	r9, fp
  911dd8:	1289a004 	addne	sl, r9, #4
  911ddc:	11a04009 	movne	r4, r9
  911de0:	1a000003 	bne	911df4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x440>
  911de4:	ea00002b 	b	911e98 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x4e4>
  911de8:	e2844008 	add	r4, r4, #8
  911dec:	e15b0004 	cmp	fp, r4
  911df0:	0a000028 	beq	911e98 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x4e4>
  911df4:	e0693004 	rsb	r3, r9, r4
  911df8:	e79a5003 	ldr	r5, [sl, r3]
  911dfc:	e3550000 	cmp	r5, #0
  911e00:	0afffff8 	beq	911de8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x434>
  911e04:	e59f21d4 	ldr	r2, [pc, #468]	@ 911fe0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x62c>
  911e08:	e2853004 	add	r3, r5, #4
  911e0c:	e7968002 	ldr	r8, [r6, r2]
  911e10:	e3580000 	cmp	r8, #0
  911e14:	0a00003b 	beq	911f08 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x554>
  911e18:	f57ff05f 	dmb	sy
  911e1c:	e1932f9f 	ldrex	r2, [r3]
  911e20:	e242c001 	sub	ip, r2, #1
  911e24:	e183ef9c 	strex	lr, ip, [r3]
  911e28:	e35e0000 	cmp	lr, #0
  911e2c:	1afffffa 	bne	911e1c <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x468>
  911e30:	f57ff05f 	dmb	sy
  911e34:	e3520001 	cmp	r2, #1
  911e38:	1affffea 	bne	911de8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x434>
  911e3c:	e5953000 	ldr	r3, [r5]
  911e40:	e1a00005 	mov	r0, r5
  911e44:	e5933008 	ldr	r3, [r3, #8]
  911e48:	e12fff33 	blx	r3
  911e4c:	e3580000 	cmp	r8, #0
  911e50:	e2853008 	add	r3, r5, #8
  911e54:	0a00005b 	beq	911fc8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x614>
  911e58:	f57ff05f 	dmb	sy
  911e5c:	e1932f9f 	ldrex	r2, [r3]
  911e60:	e2420001 	sub	r0, r2, #1
  911e64:	e1831f90 	strex	r1, r0, [r3]
  911e68:	e3510000 	cmp	r1, #0
  911e6c:	1afffffa 	bne	911e5c <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x4a8>
  911e70:	f57ff05f 	dmb	sy
  911e74:	e3520001 	cmp	r2, #1
  911e78:	1affffda 	bne	911de8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x434>
  911e7c:	e5953000 	ldr	r3, [r5]
  911e80:	e1a00005 	mov	r0, r5
  911e84:	e2844008 	add	r4, r4, #8
  911e88:	e593300c 	ldr	r3, [r3, #12]
  911e8c:	e12fff33 	blx	r3
  911e90:	e15b0004 	cmp	fp, r4
  911e94:	1affffd6 	bne	911df4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x440>
  911e98:	e5970000 	ldr	r0, [r7]
  911e9c:	e3500000 	cmp	r0, #0
  911ea0:	0a000000 	beq	911ea8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x4f4>
  911ea4:	ebe4f8f9 	bl	250290 <operator delete(void*)@plt>
  911ea8:	e1a00007 	mov	r0, r7
  911eac:	ebe4f8f7 	bl	250290 <operator delete(void*)@plt>
  911eb0:	eafffefa 	b	911aa0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0xec>
  911eb4:	e375021e 	cmn	r5, #-536870911	@ 0xe0000001
  911eb8:	8a00002f 	bhi	911f7c <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x5c8>
  911ebc:	e1a05185 	lsl	r5, r5, #3
  911ec0:	e1a00005 	mov	r0, r5
  911ec4:	ebe4f381 	bl	24ecd0 <operator new(unsigned int)@plt>
  911ec8:	eaffff9d 	b	911d44 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x390>
  911ecc:	e59d200c 	ldr	r2, [sp, #12]
  911ed0:	e1c20cd0 	ldrd	r0, [r2, #192]	@ 0xc0
  911ed4:	eafffedb 	b	911a48 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x94>
  911ed8:	e5952004 	ldr	r2, [r5, #4]
  911edc:	e2423001 	sub	r3, r2, #1
  911ee0:	e5853004 	str	r3, [r5, #4]
  911ee4:	eaffff0f 	b	911b28 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x174>
  911ee8:	e5921004 	ldr	r1, [r2, #4]
  911eec:	e2811001 	add	r1, r1, #1
  911ef0:	e5821004 	str	r1, [r2, #4]
  911ef4:	eaffffac 	b	911dac <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x3f8>
  911ef8:	e5952008 	ldr	r2, [r5, #8]
  911efc:	e2423001 	sub	r3, r2, #1
  911f00:	e5853008 	str	r3, [r5, #8]
  911f04:	eaffff17 	b	911b68 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x1b4>
  911f08:	e5952004 	ldr	r2, [r5, #4]
  911f0c:	e2423001 	sub	r3, r2, #1
  911f10:	e5853004 	str	r3, [r5, #4]
  911f14:	eaffffc6 	b	911e34 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x480>
  911f18:	e59f10c8 	ldr	r1, [pc, #200]	@ 911fe8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x634>
  911f1c:	e7961001 	ldr	r1, [r6, r1]
  911f20:	e1c100d0 	ldrd	r0, [r1]
  911f24:	e0520000 	subs	r0, r2, r0
  911f28:	e0c31001 	sbc	r1, r3, r1
  911f2c:	ebe4f301 	bl	24eb38 <__aeabi_ul2d@plt>
  911f30:	e59f30b4 	ldr	r3, [pc, #180]	@ 911fec <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x638>
  911f34:	e7963003 	ldr	r3, [r6, r3]
  911f38:	ed937b00 	vldr	d7, [r3]
  911f3c:	ec410b16 	vmov	d6, r0, r1
  911f40:	ee266b07 	vmul.f64	d6, d6, d7
  911f44:	ec510b16 	vmov	r0, r1, d6
  911f48:	ebe4f2f7 	bl	24eb2c <__aeabi_d2lz@plt>
  911f4c:	e090a004 	adds	sl, r0, r4
  911f50:	e0a1b005 	adc	fp, r1, r5
  911f54:	eaffff3a 	b	911c44 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x290>
  911f58:	e1a00008 	mov	r0, r8
  911f5c:	ebe5c691 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  911f60:	e3a01001 	mov	r1, #1
  911f64:	e59d0014 	ldr	r0, [sp, #20]
  911f68:	ebffacbb 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  911f6c:	ebe4f82e 	bl	25002c <__cxa_end_cleanup@plt>
  911f70:	e1a0000b 	mov	r0, fp
  911f74:	ebe4f8c5 	bl	250290 <operator delete(void*)@plt>
  911f78:	eafffff6 	b	911f58 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x5a4>
  911f7c:	ebe50079 	bl	252168 <std::__throw_bad_alloc()@plt>
  911f80:	e59f1060 	ldr	r1, [pc, #96]	@ 911fe8 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x634>
  911f84:	e7961001 	ldr	r1, [r6, r1]
  911f88:	e1c100d0 	ldrd	r0, [r1]
  911f8c:	e0520000 	subs	r0, r2, r0
  911f90:	e0c31001 	sbc	r1, r3, r1
  911f94:	ebe4f2e7 	bl	24eb38 <__aeabi_ul2d@plt>
  911f98:	e59f304c 	ldr	r3, [pc, #76]	@ 911fec <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x638>
  911f9c:	e7963003 	ldr	r3, [r6, r3]
  911fa0:	ed937b00 	vldr	d7, [r3]
  911fa4:	ec410b16 	vmov	d6, r0, r1
  911fa8:	ee266b07 	vmul.f64	d6, d6, d7
  911fac:	ec510b16 	vmov	r0, r1, d6
  911fb0:	ebe4f2dd 	bl	24eb2c <__aeabi_d2lz@plt>
  911fb4:	e0900004 	adds	r0, r0, r4
  911fb8:	e0a11005 	adc	r1, r1, r5
  911fbc:	eaffff37 	b	911ca0 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x2ec>
  911fc0:	ebe4f333 	bl	24ec94 <__stack_chk_fail@plt>
  911fc4:	eaffffe5 	b	911f60 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x5ac>
  911fc8:	e5952008 	ldr	r2, [r5, #8]
  911fcc:	e2423001 	sub	r3, r2, #1
  911fd0:	e5853008 	str	r3, [r5, #8]
  911fd4:	eaffffa6 	b	911e74 <netflix::Process::waitForFinished(netflix::Time const&)@@Base+0x4c0>
  911fd8:	00115734 	andseq	r5, r1, r4, lsr r7
  911fdc:	00003440 	andeq	r3, r0, r0, asr #8
  911fe0:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  911fe4:	00001ac8 	andeq	r1, r0, r8, asr #21
  911fe8:	00002940 	andeq	r2, r0, r0, asr #18
  911fec:	00002250 	andeq	r2, r0, r0, asr r2

00911ff0 <netflix::Process::Process()@@Base>:
  911ff0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  911ff4:	e24dd008 	sub	sp, sp, #8
  911ff8:	e59f5194 	ldr	r5, [pc, #404]	@ 912194 <netflix::Process::Process()@@Base+0x1a4>
  911ffc:	e1a04000 	mov	r4, r0
  912000:	e59f2190 	ldr	r2, [pc, #400]	@ 912198 <netflix::Process::Process()@@Base+0x1a8>
  912004:	e3a0c000 	mov	ip, #0
  912008:	e08f5005 	add	r5, pc, r5
  91200c:	e59f7188 	ldr	r7, [pc, #392]	@ 91219c <netflix::Process::Process()@@Base+0x1ac>
  912010:	e3e0e102 	mvn	lr, #-2147483648	@ 0x80000000
  912014:	e1a0300c 	mov	r3, ip
  912018:	e7956002 	ldr	r6, [r5, r2]
  91201c:	e2800068 	add	r0, r0, #104	@ 0x68
  912020:	e584c004 	str	ip, [r4, #4]
  912024:	e3a01010 	mov	r1, #16
  912028:	e584c008 	str	ip, [r4, #8]
  91202c:	e5968000 	ldr	r8, [r6]
  912030:	e59f2168 	ldr	r2, [pc, #360]	@ 9121a0 <netflix::Process::Process()@@Base+0x1b0>
  912034:	e58d8004 	str	r8, [sp, #4]
  912038:	e08f2002 	add	r2, pc, r2
  91203c:	e7957007 	ldr	r7, [r5, r7]
  912040:	e584c00c 	str	ip, [r4, #12]
  912044:	e2877008 	add	r7, r7, #8
  912048:	e584c010 	str	ip, [r4, #16]
  91204c:	e5847000 	str	r7, [r4]
  912050:	e584c014 	str	ip, [r4, #20]
  912054:	e584c018 	str	ip, [r4, #24]
  912058:	e584c01c 	str	ip, [r4, #28]
  91205c:	e584c024 	str	ip, [r4, #36]	@ 0x24
  912060:	e584c028 	str	ip, [r4, #40]	@ 0x28
  912064:	e584c02c 	str	ip, [r4, #44]	@ 0x2c
  912068:	e584c030 	str	ip, [r4, #48]	@ 0x30
  91206c:	e584c034 	str	ip, [r4, #52]	@ 0x34
  912070:	e584c038 	str	ip, [r4, #56]	@ 0x38
  912074:	e584c03c 	str	ip, [r4, #60]	@ 0x3c
  912078:	e584c040 	str	ip, [r4, #64]	@ 0x40
  91207c:	e584c044 	str	ip, [r4, #68]	@ 0x44
  912080:	e584c048 	str	ip, [r4, #72]	@ 0x48
  912084:	e584c04c 	str	ip, [r4, #76]	@ 0x4c
  912088:	e584c050 	str	ip, [r4, #80]	@ 0x50
  91208c:	e584c054 	str	ip, [r4, #84]	@ 0x54
  912090:	e584c058 	str	ip, [r4, #88]	@ 0x58
  912094:	e584c05c 	str	ip, [r4, #92]	@ 0x5c
  912098:	e584c060 	str	ip, [r4, #96]	@ 0x60
  91209c:	e584c064 	str	ip, [r4, #100]	@ 0x64
  9120a0:	e584e020 	str	lr, [r4, #32]
  9120a4:	ebffabea 	bl	8fd054 <netflix::Mutex::Mutex(netflix::MutexRankType, char const*, netflix::Mutex::Mode)@@Base>
  9120a8:	e3a01000 	mov	r1, #0
  9120ac:	e2840090 	add	r0, r4, #144	@ 0x90
  9120b0:	ebe4f852 	bl	250200 <pthread_cond_init@plt>
  9120b4:	e59dc004 	ldr	ip, [sp, #4]
  9120b8:	e5961000 	ldr	r1, [r6]
  9120bc:	e3a02000 	mov	r2, #0
  9120c0:	e3a03000 	mov	r3, #0
  9120c4:	e1a00004 	mov	r0, r4
  9120c8:	e15c0001 	cmp	ip, r1
  9120cc:	e1c42cf0 	strd	r2, [r4, #192]	@ 0xc0
  9120d0:	1a000001 	bne	9120dc <netflix::Process::Process()@@Base+0xec>
  9120d4:	e28dd008 	add	sp, sp, #8
  9120d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  9120dc:	ebe4f2ec 	bl	24ec94 <__stack_chk_fail@plt>
  9120e0:	e5940064 	ldr	r0, [r4, #100]	@ 0x64
  9120e4:	e3500000 	cmp	r0, #0
  9120e8:	0a000000 	beq	9120f0 <netflix::Process::Process()@@Base+0x100>
  9120ec:	ebe56220 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9120f0:	e594005c 	ldr	r0, [r4, #92]	@ 0x5c
  9120f4:	e3500000 	cmp	r0, #0
  9120f8:	0a000000 	beq	912100 <netflix::Process::Process()@@Base+0x110>
  9120fc:	ebe5621c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  912100:	e5940054 	ldr	r0, [r4, #84]	@ 0x54
  912104:	e3500000 	cmp	r0, #0
  912108:	0a000000 	beq	912110 <netflix::Process::Process()@@Base+0x120>
  91210c:	ebe56218 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  912110:	e2840040 	add	r0, r4, #64	@ 0x40
  912114:	ebfffb1b 	bl	910d88 <netflix::TimeMultiplier::advance(unsigned long long)@@Base+0x94>
  912118:	e2840034 	add	r0, r4, #52	@ 0x34
  91211c:	ebfffb19 	bl	910d88 <netflix::TimeMultiplier::advance(unsigned long long)@@Base+0x94>
  912120:	e2840028 	add	r0, r4, #40	@ 0x28
  912124:	ebfffb17 	bl	910d88 <netflix::TimeMultiplier::advance(unsigned long long)@@Base+0x94>
  912128:	e284000c 	add	r0, r4, #12
  91212c:	ebe5bd6a 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  912130:	e5940008 	ldr	r0, [r4, #8]
  912134:	e3500000 	cmp	r0, #0
  912138:	0a000010 	beq	912180 <netflix::Process::Process()@@Base+0x190>
  91213c:	e59f2060 	ldr	r2, [pc, #96]	@ 9121a4 <netflix::Process::Process()@@Base+0x1b4>
  912140:	e2803008 	add	r3, r0, #8
  912144:	e7952002 	ldr	r2, [r5, r2]
  912148:	e3520000 	cmp	r2, #0
  91214c:	0a00000c 	beq	912184 <netflix::Process::Process()@@Base+0x194>
  912150:	f57ff05f 	dmb	sy
  912154:	e1932f9f 	ldrex	r2, [r3]
  912158:	e2421001 	sub	r1, r2, #1
  91215c:	e183cf91 	strex	ip, r1, [r3]
  912160:	e35c0000 	cmp	ip, #0
  912164:	1afffffa 	bne	912154 <netflix::Process::Process()@@Base+0x164>
  912168:	f57ff05f 	dmb	sy
  91216c:	e3520001 	cmp	r2, #1
  912170:	1a000002 	bne	912180 <netflix::Process::Process()@@Base+0x190>
  912174:	e5903000 	ldr	r3, [r0]
  912178:	e593300c 	ldr	r3, [r3, #12]
  91217c:	e12fff33 	blx	r3
  912180:	ebe4f7a9 	bl	25002c <__cxa_end_cleanup@plt>
  912184:	e5902008 	ldr	r2, [r0, #8]
  912188:	e2423001 	sub	r3, r2, #1
  91218c:	e5803008 	str	r3, [r0, #8]
  912190:	eafffff5 	b	91216c <netflix::Process::Process()@@Base+0x17c>
  912194:	001150f8 	ldrsheq	r5, [r1], -r8
  912198:	00003440 	andeq	r3, r0, r0, asr #8
  91219c:	00003270 	andeq	r3, r0, r0, ror r2
  9121a0:	0008cc08 	andeq	ip, r8, r8, lsl #24
  9121a4:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4

009121a8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base>:
  9121a8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  9121ac:	e24dd074 	sub	sp, sp, #116	@ 0x74
  9121b0:	e59f6904 	ldr	r6, [pc, #2308]	@ 912abc <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x914>
  9121b4:	e1a09002 	mov	r9, r2
  9121b8:	e59f3900 	ldr	r3, [pc, #2304]	@ 912ac0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x918>
  9121bc:	e1a05000 	mov	r5, r0
  9121c0:	e08f6006 	add	r6, pc, r6
  9121c4:	e5928008 	ldr	r8, [r2, #8]
  9121c8:	e1a0a001 	mov	sl, r1
  9121cc:	e7963003 	ldr	r3, [r6, r3]
  9121d0:	e3580000 	cmp	r8, #0
  9121d4:	e58d3010 	str	r3, [sp, #16]
  9121d8:	e5933000 	ldr	r3, [r3]
  9121dc:	e58d306c 	str	r3, [sp, #108]	@ 0x6c
  9121e0:	0a0000c0 	beq	9124e8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x340>
  9121e4:	e59f18d8 	ldr	r1, [pc, #2264]	@ 912ac4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x91c>
  9121e8:	e28d004c 	add	r0, sp, #76	@ 0x4c
  9121ec:	e3a02002 	mov	r2, #2
  9121f0:	e3a03000 	mov	r3, #0
  9121f4:	e08f1001 	add	r1, pc, r1
  9121f8:	ebffbfdc 	bl	902170 <netflix::Pipe::create(char const*, netflix::Flags<netflix::Pipe::Flag>)@@Base>
  9121fc:	e59d404c 	ldr	r4, [sp, #76]	@ 0x4c
  912200:	e59d8050 	ldr	r8, [sp, #80]	@ 0x50
  912204:	e59f18bc 	ldr	r1, [pc, #2236]	@ 912ac8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x920>
  912208:	e28d0054 	add	r0, sp, #84	@ 0x54
  91220c:	e3a02001 	mov	r2, #1
  912210:	e3a03000 	mov	r3, #0
  912214:	e08f1001 	add	r1, pc, r1
  912218:	ebffbfd4 	bl	902170 <netflix::Pipe::create(char const*, netflix::Flags<netflix::Pipe::Flag>)@@Base>
  91221c:	e59f18a8 	ldr	r1, [pc, #2216]	@ 912acc <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x924>
  912220:	e28d005c 	add	r0, sp, #92	@ 0x5c
  912224:	e3a02001 	mov	r2, #1
  912228:	e3a03000 	mov	r3, #0
  91222c:	e08f1001 	add	r1, pc, r1
  912230:	ebffbfce 	bl	902170 <netflix::Pipe::create(char const*, netflix::Flags<netflix::Pipe::Flag>)@@Base>
  912234:	e59f1894 	ldr	r1, [pc, #2196]	@ 912ad0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x928>
  912238:	e28d0064 	add	r0, sp, #100	@ 0x64
  91223c:	e3a02000 	mov	r2, #0
  912240:	e3a03000 	mov	r3, #0
  912244:	e08f1001 	add	r1, pc, r1
  912248:	ebffbfc8 	bl	902170 <netflix::Pipe::create(char const*, netflix::Flags<netflix::Pipe::Flag>)@@Base>
  91224c:	ebe4f70d 	bl	24fe88 <fork@plt>
  912250:	e3700001 	cmn	r0, #1
  912254:	e1a07000 	mov	r7, r0
  912258:	0a000189 	beq	912884 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x6dc>
  91225c:	e3500000 	cmp	r0, #0
  912260:	0a0000a2 	beq	9124f0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x348>
  912264:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  912268:	e3a01001 	mov	r1, #1
  91226c:	ebffbf5c 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912270:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  912274:	e28d104c 	add	r1, sp, #76	@ 0x4c
  912278:	e3a02004 	mov	r2, #4
  91227c:	ebffbf37 	bl	901f60 <netflix::Pipe::read(void*, unsigned int)@@Base>
  912280:	e3500000 	cmp	r0, #0
  912284:	1a00012d 	bne	912740 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x598>
  912288:	e2851068 	add	r1, r5, #104	@ 0x68
  91228c:	e58d1018 	str	r1, [sp, #24]
  912290:	e59d0018 	ldr	r0, [sp, #24]
  912294:	e3a01001 	mov	r1, #1
  912298:	ebffabba 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  91229c:	e1a0100a 	mov	r1, sl
  9122a0:	e285000c 	add	r0, r5, #12
  9122a4:	ebe6a74a 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  9122a8:	e3a02003 	mov	r2, #3
  9122ac:	e3a03000 	mov	r3, #0
  9122b0:	e3a00e16 	mov	r0, #352	@ 0x160
  9122b4:	e1c52cf0 	strd	r2, [r5, #192]	@ 0xc0
  9122b8:	ebe4f284 	bl	24ecd0 <operator new(unsigned int)@plt>
  9122bc:	e59f2810 	ldr	r2, [pc, #2064]	@ 912ad4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x92c>
  9122c0:	e28da070 	add	sl, sp, #112	@ 0x70
  9122c4:	e59f380c 	ldr	r3, [pc, #2060]	@ 912ad8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x930>
  9122c8:	e1a0b000 	mov	fp, r0
  9122cc:	e7962002 	ldr	r2, [r6, r2]
  9122d0:	e58d201c 	str	r2, [sp, #28]
  9122d4:	e282200c 	add	r2, r2, #12
  9122d8:	e52a202c 	str	r2, [sl, #-44]!	@ 0xffffffd4
  9122dc:	e1a0200a 	mov	r2, sl
  9122e0:	e7961003 	ldr	r1, [r6, r3]
  9122e4:	ebffc17d 	bl	9028e0 <netflix::Thread::Thread(netflix::ThreadConfig*, std::string const&)@@Base>
  9122e8:	e28d2048 	add	r2, sp, #72	@ 0x48
  9122ec:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  9122f0:	e58d2014 	str	r2, [sp, #20]
  9122f4:	e240000c 	sub	r0, r0, #12
  9122f8:	e1a01002 	mov	r1, r2
  9122fc:	ebe4f6a5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912300:	e59f37d4 	ldr	r3, [pc, #2004]	@ 912adc <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x934>
  912304:	e5950054 	ldr	r0, [r5, #84]	@ 0x54
  912308:	e7963003 	ldr	r3, [r6, r3]
  91230c:	e3500000 	cmp	r0, #0
  912310:	e58b515c 	str	r5, [fp, #348]	@ 0x15c
  912314:	e2833008 	add	r3, r3, #8
  912318:	e58b3000 	str	r3, [fp]
  91231c:	e585b018 	str	fp, [r5, #24]
  912320:	e5854050 	str	r4, [r5, #80]	@ 0x50
  912324:	e5858054 	str	r8, [r5, #84]	@ 0x54
  912328:	0a000000 	beq	912330 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x188>
  91232c:	ebe56190 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  912330:	e595005c 	ldr	r0, [r5, #92]	@ 0x5c
  912334:	e3a03000 	mov	r3, #0
  912338:	e59d2054 	ldr	r2, [sp, #84]	@ 0x54
  91233c:	e59d1058 	ldr	r1, [sp, #88]	@ 0x58
  912340:	e1500003 	cmp	r0, r3
  912344:	e58d3058 	str	r3, [sp, #88]	@ 0x58
  912348:	e5852058 	str	r2, [r5, #88]	@ 0x58
  91234c:	01a00002 	moveq	r0, r2
  912350:	e585105c 	str	r1, [r5, #92]	@ 0x5c
  912354:	e58d3054 	str	r3, [sp, #84]	@ 0x54
  912358:	0a000001 	beq	912364 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x1bc>
  91235c:	ebe56184 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  912360:	e5950058 	ldr	r0, [r5, #88]	@ 0x58
  912364:	e3a01001 	mov	r1, #1
  912368:	ebffbf1d 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  91236c:	e5950064 	ldr	r0, [r5, #100]	@ 0x64
  912370:	e3a03000 	mov	r3, #0
  912374:	e59d205c 	ldr	r2, [sp, #92]	@ 0x5c
  912378:	e59d1060 	ldr	r1, [sp, #96]	@ 0x60
  91237c:	e1500003 	cmp	r0, r3
  912380:	e58d3060 	str	r3, [sp, #96]	@ 0x60
  912384:	e5852060 	str	r2, [r5, #96]	@ 0x60
  912388:	01a00002 	moveq	r0, r2
  91238c:	e5851064 	str	r1, [r5, #100]	@ 0x64
  912390:	e58d305c 	str	r3, [sp, #92]	@ 0x5c
  912394:	0a000001 	beq	9123a0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x1f8>
  912398:	ebe56175 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91239c:	e5950060 	ldr	r0, [r5, #96]	@ 0x60
  9123a0:	e3a01001 	mov	r1, #1
  9123a4:	ebffbf0e 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  9123a8:	e5953050 	ldr	r3, [r5, #80]	@ 0x50
  9123ac:	e5857024 	str	r7, [r5, #36]	@ 0x24
  9123b0:	e3530000 	cmp	r3, #0
  9123b4:	0a000012 	beq	912404 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x25c>
  9123b8:	e2850028 	add	r0, r5, #40	@ 0x28
  9123bc:	ebfffa71 	bl	910d88 <netflix::TimeMultiplier::advance(unsigned long long)@@Base+0x94>
  9123c0:	e5993000 	ldr	r3, [r9]
  9123c4:	e9990006 	ldmib	r9, {r1, r2}
  9123c8:	e3530000 	cmp	r3, #0
  9123cc:	e5853028 	str	r3, [r5, #40]	@ 0x28
  9123d0:	e585102c 	str	r1, [r5, #44]	@ 0x2c
  9123d4:	e5852030 	str	r2, [r5, #48]	@ 0x30
  9123d8:	0a000006 	beq	9123f8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x250>
  9123dc:	f57ff05f 	dmb	sy
  9123e0:	e1932f9f 	ldrex	r2, [r3]
  9123e4:	e2822001 	add	r2, r2, #1
  9123e8:	e1831f92 	strex	r1, r2, [r3]
  9123ec:	e3510000 	cmp	r1, #0
  9123f0:	1afffffa 	bne	9123e0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x238>
  9123f4:	f57ff05f 	dmb	sy
  9123f8:	e5950050 	ldr	r0, [r5, #80]	@ 0x50
  9123fc:	e3a01000 	mov	r1, #0
  912400:	ebffbef7 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912404:	e3a00e16 	mov	r0, #352	@ 0x160
  912408:	ebe4f230 	bl	24ecd0 <operator new(unsigned int)@plt>
  91240c:	e59f36cc 	ldr	r3, [pc, #1740]	@ 912ae0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x938>
  912410:	e1a04000 	mov	r4, r0
  912414:	e59d101c 	ldr	r1, [sp, #28]
  912418:	e281200c 	add	r2, r1, #12
  91241c:	e58d2048 	str	r2, [sp, #72]	@ 0x48
  912420:	e59d2014 	ldr	r2, [sp, #20]
  912424:	e7961003 	ldr	r1, [r6, r3]
  912428:	ebffc12c 	bl	9028e0 <netflix::Thread::Thread(netflix::ThreadConfig*, std::string const&)@@Base>
  91242c:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  912430:	e1a0100a 	mov	r1, sl
  912434:	e240000c 	sub	r0, r0, #12
  912438:	ebe4f656 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  91243c:	e5950018 	ldr	r0, [r5, #24]
  912440:	e59f269c 	ldr	r2, [pc, #1692]	@ 912ae4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x93c>
  912444:	e5903000 	ldr	r3, [r0]
  912448:	e7962002 	ldr	r2, [r6, r2]
  91244c:	e584515c 	str	r5, [r4, #348]	@ 0x15c
  912450:	e2822008 	add	r2, r2, #8
  912454:	e5842000 	str	r2, [r4]
  912458:	e585401c 	str	r4, [r5, #28]
  91245c:	e5933008 	ldr	r3, [r3, #8]
  912460:	e12fff33 	blx	r3
  912464:	e595001c 	ldr	r0, [r5, #28]
  912468:	e5903000 	ldr	r3, [r0]
  91246c:	e5933008 	ldr	r3, [r3, #8]
  912470:	e12fff33 	blx	r3
  912474:	e59d0018 	ldr	r0, [sp, #24]
  912478:	e3a01001 	mov	r1, #1
  91247c:	ebffab76 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  912480:	e3a08000 	mov	r8, #0
  912484:	e3a04001 	mov	r4, #1
  912488:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  91248c:	e3500000 	cmp	r0, #0
  912490:	0a000000 	beq	912498 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x2f0>
  912494:	ebe56136 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  912498:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  91249c:	e3500000 	cmp	r0, #0
  9124a0:	0a000000 	beq	9124a8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x300>
  9124a4:	ebe56132 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9124a8:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  9124ac:	e3500000 	cmp	r0, #0
  9124b0:	0a000000 	beq	9124b8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x310>
  9124b4:	ebe5612e 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9124b8:	e3580000 	cmp	r8, #0
  9124bc:	0a000001 	beq	9124c8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x320>
  9124c0:	e1a00008 	mov	r0, r8
  9124c4:	ebe5612a 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9124c8:	e59d1010 	ldr	r1, [sp, #16]
  9124cc:	e1a00004 	mov	r0, r4
  9124d0:	e59d206c 	ldr	r2, [sp, #108]	@ 0x6c
  9124d4:	e5913000 	ldr	r3, [r1]
  9124d8:	e1520003 	cmp	r2, r3
  9124dc:	1a000156 	bne	912a3c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x894>
  9124e0:	e28dd074 	add	sp, sp, #116	@ 0x74
  9124e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  9124e8:	e1a04008 	mov	r4, r8
  9124ec:	eaffff44 	b	912204 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x5c>
  9124f0:	e1a01000 	mov	r1, r0
  9124f4:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  9124f8:	ebffbeb9 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  9124fc:	e59d3064 	ldr	r3, [sp, #100]	@ 0x64
  912500:	e5935004 	ldr	r5, [r3, #4]
  912504:	ea000003 	b	912518 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x370>
  912508:	ebe4f33a 	bl	24f1f8 <__errno_location@plt>
  91250c:	e5903000 	ldr	r3, [r0]
  912510:	e3530004 	cmp	r3, #4
  912514:	1a0000c2 	bne	912824 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x67c>
  912518:	e1a00005 	mov	r0, r5
  91251c:	e3a01001 	mov	r1, #1
  912520:	e3a02000 	mov	r2, #0
  912524:	ebe4f16b 	bl	24ead8 <fcntl@plt>
  912528:	e3700001 	cmn	r0, #1
  91252c:	0afffff5 	beq	912508 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x360>
  912530:	e3807001 	orr	r7, r0, #1
  912534:	ea000003 	b	912548 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3a0>
  912538:	ebe4f32e 	bl	24f1f8 <__errno_location@plt>
  91253c:	e5903000 	ldr	r3, [r0]
  912540:	e3530004 	cmp	r3, #4
  912544:	1a0000c2 	bne	912854 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x6ac>
  912548:	e1a00005 	mov	r0, r5
  91254c:	e3a01002 	mov	r1, #2
  912550:	e1a02007 	mov	r2, r7
  912554:	ebe4f15f 	bl	24ead8 <fcntl@plt>
  912558:	e3700001 	cmn	r0, #1
  91255c:	0afffff5 	beq	912538 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x390>
  912560:	e3540000 	cmp	r4, #0
  912564:	0a000002 	beq	912574 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3cc>
  912568:	e1a00004 	mov	r0, r4
  91256c:	e3a01001 	mov	r1, #1
  912570:	ebffbe9b 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912574:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  912578:	e3a01000 	mov	r1, #0
  91257c:	ebffbe98 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912580:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  912584:	e3a01000 	mov	r1, #0
  912588:	ebffbe95 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  91258c:	ea000003 	b	9125a0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3f8>
  912590:	ebe4f318 	bl	24f1f8 <__errno_location@plt>
  912594:	e5903000 	ldr	r3, [r0]
  912598:	e3530004 	cmp	r3, #4
  91259c:	1a000009 	bne	9125c8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x420>
  9125a0:	e3a00000 	mov	r0, #0
  9125a4:	ebe4f49c 	bl	24f81c <close@plt>
  9125a8:	e3700001 	cmn	r0, #1
  9125ac:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  9125b0:	0afffff6 	beq	912590 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3e8>
  9125b4:	ea000003 	b	9125c8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x420>
  9125b8:	ebe4f30e 	bl	24f1f8 <__errno_location@plt>
  9125bc:	e5903000 	ldr	r3, [r0]
  9125c0:	e3530004 	cmp	r3, #4
  9125c4:	1a000009 	bne	9125f0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x448>
  9125c8:	e3a00001 	mov	r0, #1
  9125cc:	ebe4f492 	bl	24f81c <close@plt>
  9125d0:	e3700001 	cmn	r0, #1
  9125d4:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  9125d8:	0afffff6 	beq	9125b8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x410>
  9125dc:	ea000003 	b	9125f0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x448>
  9125e0:	ebe4f304 	bl	24f1f8 <__errno_location@plt>
  9125e4:	e5903000 	ldr	r3, [r0]
  9125e8:	e3530004 	cmp	r3, #4
  9125ec:	1a000004 	bne	912604 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x45c>
  9125f0:	e3a00002 	mov	r0, #2
  9125f4:	ebe4f488 	bl	24f81c <close@plt>
  9125f8:	e3700001 	cmn	r0, #1
  9125fc:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  912600:	0afffff6 	beq	9125e0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x438>
  912604:	e3540000 	cmp	r4, #0
  912608:	1a000004 	bne	912620 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x478>
  91260c:	ea000011 	b	912658 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4b0>
  912610:	ebe4f2f8 	bl	24f1f8 <__errno_location@plt>
  912614:	e5903000 	ldr	r3, [r0]
  912618:	e3530004 	cmp	r3, #4
  91261c:	1a000005 	bne	912638 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x490>
  912620:	e5940000 	ldr	r0, [r4]
  912624:	e3a01000 	mov	r1, #0
  912628:	ebe4fda8 	bl	251cd0 <dup2@plt>
  91262c:	e3700001 	cmn	r0, #1
  912630:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  912634:	0afffff5 	beq	912610 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x468>
  912638:	e1a00004 	mov	r0, r4
  91263c:	e3a01000 	mov	r1, #0
  912640:	ebffbe67 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912644:	ea000003 	b	912658 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4b0>
  912648:	ebe4f2ea 	bl	24f1f8 <__errno_location@plt>
  91264c:	e5903000 	ldr	r3, [r0]
  912650:	e3530004 	cmp	r3, #4
  912654:	1a000006 	bne	912674 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4cc>
  912658:	e59d3054 	ldr	r3, [sp, #84]	@ 0x54
  91265c:	e3a01001 	mov	r1, #1
  912660:	e5930004 	ldr	r0, [r3, #4]
  912664:	ebe4fd99 	bl	251cd0 <dup2@plt>
  912668:	e3700001 	cmn	r0, #1
  91266c:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  912670:	0afffff4 	beq	912648 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4a0>
  912674:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  912678:	e3a01001 	mov	r1, #1
  91267c:	ebffbe58 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912680:	ea000003 	b	912694 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4ec>
  912684:	ebe4f2db 	bl	24f1f8 <__errno_location@plt>
  912688:	e5903000 	ldr	r3, [r0]
  91268c:	e3530004 	cmp	r3, #4
  912690:	1a000006 	bne	9126b0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x508>
  912694:	e59d305c 	ldr	r3, [sp, #92]	@ 0x5c
  912698:	e3a01002 	mov	r1, #2
  91269c:	e5930004 	ldr	r0, [r3, #4]
  9126a0:	ebe4fd8a 	bl	251cd0 <dup2@plt>
  9126a4:	e3700001 	cmn	r0, #1
  9126a8:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  9126ac:	0afffff4 	beq	912684 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x4dc>
  9126b0:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  9126b4:	e3a01001 	mov	r1, #1
  9126b8:	ebffbe49 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  9126bc:	e59a4000 	ldr	r4, [sl]
  9126c0:	e3a01004 	mov	r1, #4
  9126c4:	e59a5004 	ldr	r5, [sl, #4]
  9126c8:	e0640005 	rsb	r0, r4, r5
  9126cc:	e1a00140 	asr	r0, r0, #2
  9126d0:	e2800001 	add	r0, r0, #1
  9126d4:	ebe4fd0e 	bl	251b14 <calloc@plt>
  9126d8:	e1540005 	cmp	r4, r5
  9126dc:	e1a06000 	mov	r6, r0
  9126e0:	0a000007 	beq	912704 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x55c>
  9126e4:	e2405004 	sub	r5, r0, #4
  9126e8:	e4940004 	ldr	r0, [r4], #4
  9126ec:	ebe4f71d 	bl	250368 <strdup@plt>
  9126f0:	e5a50004 	str	r0, [r5, #4]!
  9126f4:	e59a3004 	ldr	r3, [sl, #4]
  9126f8:	e1530004 	cmp	r3, r4
  9126fc:	1afffff9 	bne	9126e8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x540>
  912700:	e59a4000 	ldr	r4, [sl]
  912704:	e1a01006 	mov	r1, r6
  912708:	e5940000 	ldr	r0, [r4]
  91270c:	ebe4efbf 	bl	24e610 <execvp@plt>
  912710:	ebe4f2b8 	bl	24f1f8 <__errno_location@plt>
  912714:	e28d1040 	add	r1, sp, #64	@ 0x40
  912718:	e3a02004 	mov	r2, #4
  91271c:	e5903000 	ldr	r3, [r0]
  912720:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  912724:	e58d3040 	str	r3, [sp, #64]	@ 0x40
  912728:	ebffbdeb 	bl	901edc <netflix::Pipe::write(void const*, unsigned int)@@Base>
  91272c:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  912730:	e3a01001 	mov	r1, #1
  912734:	ebffbe2a 	bl	901fe4 <netflix::Pipe::close(netflix::Pipe::End)@@Base>
  912738:	e3a00001 	mov	r0, #1
  91273c:	ebe4f310 	bl	24f384 <_exit@plt>
  912740:	e28d9038 	add	r9, sp, #56	@ 0x38
  912744:	e59f139c 	ldr	r1, [pc, #924]	@ 912ae8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x940>
  912748:	e28d2044 	add	r2, sp, #68	@ 0x44
  91274c:	e08f1001 	add	r1, pc, r1
  912750:	e1a00009 	mov	r0, r9
  912754:	ebe4fcf7 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  912758:	e89a000a 	ldm	sl, {r1, r3}
  91275c:	e59f2370 	ldr	r2, [pc, #880]	@ 912ad4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x92c>
  912760:	e0617003 	rsb	r7, r1, r3
  912764:	e1a07147 	asr	r7, r7, #2
  912768:	e7965002 	ldr	r5, [r6, r2]
  91276c:	e3570000 	cmp	r7, #0
  912770:	e285500c 	add	r5, r5, #12
  912774:	e58d503c 	str	r5, [sp, #60]	@ 0x3c
  912778:	da000012 	ble	9127c8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x620>
  91277c:	e3a04000 	mov	r4, #0
  912780:	e28d503c 	add	r5, sp, #60	@ 0x3c
  912784:	ea000005 	b	9127a0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x5f8>
  912788:	e3540000 	cmp	r4, #0
  91278c:	0a000002 	beq	91279c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x5f4>
  912790:	e1a00005 	mov	r0, r5
  912794:	e1a01009 	mov	r1, r9
  912798:	ebe4fe39 	bl	252084 <std::string::append(std::string const&)@plt>
  91279c:	e89a000a 	ldm	sl, {r1, r3}
  9127a0:	e0613003 	rsb	r3, r1, r3
  9127a4:	e1540143 	cmp	r4, r3, asr #2
  9127a8:	2a00007c 	bcs	9129a0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7f8>
  9127ac:	e0811104 	add	r1, r1, r4, lsl #2
  9127b0:	e1a00005 	mov	r0, r5
  9127b4:	ebe4fe32 	bl	252084 <std::string::append(std::string const&)@plt>
  9127b8:	e2844001 	add	r4, r4, #1
  9127bc:	e1540007 	cmp	r4, r7
  9127c0:	1afffff0 	bne	912788 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x5e0>
  9127c4:	e59d503c 	ldr	r5, [sp, #60]	@ 0x3c
  9127c8:	e59d404c 	ldr	r4, [sp, #76]	@ 0x4c
  9127cc:	e1a00004 	mov	r0, r4
  9127d0:	ebe4f1a1 	bl	24ee5c <strerror@plt>
  9127d4:	e59fc310 	ldr	ip, [pc, #784]	@ 912aec <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x944>
  9127d8:	e59f1310 	ldr	r1, [pc, #784]	@ 912af0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x948>
  9127dc:	e1a03004 	mov	r3, r4
  9127e0:	e1a02005 	mov	r2, r5
  9127e4:	e796c00c 	ldr	ip, [r6, ip]
  9127e8:	e08f1001 	add	r1, pc, r1
  9127ec:	e58d0000 	str	r0, [sp]
  9127f0:	e1a0000c 	mov	r0, ip
  9127f4:	ebff7495 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  9127f8:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  9127fc:	e28d5048 	add	r5, sp, #72	@ 0x48
  912800:	e3a04000 	mov	r4, #0
  912804:	e1a01005 	mov	r1, r5
  912808:	e240000c 	sub	r0, r0, #12
  91280c:	ebe4f561 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912810:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  912814:	e1a01005 	mov	r1, r5
  912818:	e240000c 	sub	r0, r0, #12
  91281c:	ebe4f55d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912820:	eaffff18 	b	912488 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x2e0>
  912824:	e59f12c8 	ldr	r1, [pc, #712]	@ 912af4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x94c>
  912828:	e1a02005 	mov	r2, r5
  91282c:	e3a0e002 	mov	lr, #2
  912830:	e3a05001 	mov	r5, #1
  912834:	e3a0c000 	mov	ip, #0
  912838:	e7960001 	ldr	r0, [r6, r1]
  91283c:	e59f12b4 	ldr	r1, [pc, #692]	@ 912af8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x950>
  912840:	e88d4020 	stm	sp, {r5, lr}
  912844:	e08f1001 	add	r1, pc, r1
  912848:	e58dc008 	str	ip, [sp, #8]
  91284c:	ebff747f 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  912850:	eaffff42 	b	912560 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3b8>
  912854:	e59f1298 	ldr	r1, [pc, #664]	@ 912af4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x94c>
  912858:	e1a02005 	mov	r2, r5
  91285c:	e3a0e002 	mov	lr, #2
  912860:	e3a05001 	mov	r5, #1
  912864:	e3a0c000 	mov	ip, #0
  912868:	e7960001 	ldr	r0, [r6, r1]
  91286c:	e59f1288 	ldr	r1, [pc, #648]	@ 912afc <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x954>
  912870:	e88d4020 	stm	sp, {r5, lr}
  912874:	e08f1001 	add	r1, pc, r1
  912878:	e58dc008 	str	ip, [sp, #8]
  91287c:	ebff7473 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  912880:	eaffff36 	b	912560 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x3b8>
  912884:	e28d9030 	add	r9, sp, #48	@ 0x30
  912888:	e59f1270 	ldr	r1, [pc, #624]	@ 912b00 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x958>
  91288c:	e28d2048 	add	r2, sp, #72	@ 0x48
  912890:	e08f1001 	add	r1, pc, r1
  912894:	e1a00009 	mov	r0, r9
  912898:	ebe4fca6 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  91289c:	e89a000a 	ldm	sl, {r1, r3}
  9128a0:	e59f222c 	ldr	r2, [pc, #556]	@ 912ad4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x92c>
  9128a4:	e0617003 	rsb	r7, r1, r3
  9128a8:	e1a07147 	asr	r7, r7, #2
  9128ac:	e7964002 	ldr	r4, [r6, r2]
  9128b0:	e3570000 	cmp	r7, #0
  9128b4:	e284400c 	add	r4, r4, #12
  9128b8:	e58d4034 	str	r4, [sp, #52]	@ 0x34
  9128bc:	da000012 	ble	91290c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x764>
  9128c0:	e3a04000 	mov	r4, #0
  9128c4:	e28d5034 	add	r5, sp, #52	@ 0x34
  9128c8:	ea000005 	b	9128e4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x73c>
  9128cc:	e3540000 	cmp	r4, #0
  9128d0:	0a000002 	beq	9128e0 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x738>
  9128d4:	e1a00005 	mov	r0, r5
  9128d8:	e1a01009 	mov	r1, r9
  9128dc:	ebe4fde8 	bl	252084 <std::string::append(std::string const&)@plt>
  9128e0:	e89a000a 	ldm	sl, {r1, r3}
  9128e4:	e0613003 	rsb	r3, r1, r3
  9128e8:	e1540143 	cmp	r4, r3, asr #2
  9128ec:	2a000039 	bcs	9129d8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x830>
  9128f0:	e0811104 	add	r1, r1, r4, lsl #2
  9128f4:	e1a00005 	mov	r0, r5
  9128f8:	ebe4fde1 	bl	252084 <std::string::append(std::string const&)@plt>
  9128fc:	e2844001 	add	r4, r4, #1
  912900:	e1540007 	cmp	r4, r7
  912904:	1afffff0 	bne	9128cc <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x724>
  912908:	e59d4034 	ldr	r4, [sp, #52]	@ 0x34
  91290c:	ebe4f239 	bl	24f1f8 <__errno_location@plt>
  912910:	e59f31d4 	ldr	r3, [pc, #468]	@ 912aec <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x944>
  912914:	e59f11e8 	ldr	r1, [pc, #488]	@ 912b04 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x95c>
  912918:	e1a02004 	mov	r2, r4
  91291c:	e796c003 	ldr	ip, [r6, r3]
  912920:	e08f1001 	add	r1, pc, r1
  912924:	e5903000 	ldr	r3, [r0]
  912928:	e1a0000c 	mov	r0, ip
  91292c:	ebff7447 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  912930:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  912934:	e28d504c 	add	r5, sp, #76	@ 0x4c
  912938:	e3a04000 	mov	r4, #0
  91293c:	e1a01005 	mov	r1, r5
  912940:	e240000c 	sub	r0, r0, #12
  912944:	ebe4f513 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912948:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  91294c:	e1a01005 	mov	r1, r5
  912950:	e240000c 	sub	r0, r0, #12
  912954:	ebe4f50f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912958:	eafffeca 	b	912488 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x2e0>
  91295c:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  912960:	e3500000 	cmp	r0, #0
  912964:	0a000000 	beq	91296c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7c4>
  912968:	ebe56001 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91296c:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  912970:	e3500000 	cmp	r0, #0
  912974:	0a000000 	beq	91297c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7d4>
  912978:	ebe55ffd 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91297c:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  912980:	e3500000 	cmp	r0, #0
  912984:	0a000000 	beq	91298c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7e4>
  912988:	ebe55ff9 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91298c:	e3580000 	cmp	r8, #0
  912990:	0a000001 	beq	91299c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7f4>
  912994:	e1a00008 	mov	r0, r8
  912998:	ebe55ff5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91299c:	ebe4f5a2 	bl	25002c <__cxa_end_cleanup@plt>
  9129a0:	e59f0160 	ldr	r0, [pc, #352]	@ 912b08 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x960>
  9129a4:	e08f0000 	add	r0, pc, r0
  9129a8:	ebe4f656 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  9129ac:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  9129b0:	e28d102c 	add	r1, sp, #44	@ 0x2c
  9129b4:	e28d2048 	add	r2, sp, #72	@ 0x48
  9129b8:	e58d2014 	str	r2, [sp, #20]
  9129bc:	e240000c 	sub	r0, r0, #12
  9129c0:	ebe4f4f4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  9129c4:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  9129c8:	e59d1014 	ldr	r1, [sp, #20]
  9129cc:	e240000c 	sub	r0, r0, #12
  9129d0:	ebe4f4f0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  9129d4:	eaffffe0 	b	91295c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7b4>
  9129d8:	e59f012c 	ldr	r0, [pc, #300]	@ 912b0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x964>
  9129dc:	e08f0000 	add	r0, pc, r0
  9129e0:	ebe4f648 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  9129e4:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  9129e8:	e28d1020 	add	r1, sp, #32
  9129ec:	e28d404c 	add	r4, sp, #76	@ 0x4c
  9129f0:	e240000c 	sub	r0, r0, #12
  9129f4:	ebe4f4e7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  9129f8:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  9129fc:	e1a01004 	mov	r1, r4
  912a00:	e240000c 	sub	r0, r0, #12
  912a04:	ebe4f4e3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912a08:	eaffffd3 	b	91295c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7b4>
  912a0c:	e3a08000 	mov	r8, #0
  912a10:	e59d0018 	ldr	r0, [sp, #24]
  912a14:	e3a01001 	mov	r1, #1
  912a18:	ebffaa0f 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  912a1c:	eaffffce 	b	91295c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7b4>
  912a20:	eafffff9 	b	912a0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x864>
  912a24:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  912a28:	e28d404c 	add	r4, sp, #76	@ 0x4c
  912a2c:	e240000c 	sub	r0, r0, #12
  912a30:	e1a01004 	mov	r1, r4
  912a34:	ebe4f4d7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912a38:	eaffffee 	b	9129f8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x850>
  912a3c:	ebe4f094 	bl	24ec94 <__stack_chk_fail@plt>
  912a40:	eafffff2 	b	912a10 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x868>
  912a44:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  912a48:	e28d1024 	add	r1, sp, #36	@ 0x24
  912a4c:	e240000c 	sub	r0, r0, #12
  912a50:	ebe4f4d0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912a54:	e1a0000b 	mov	r0, fp
  912a58:	ebe4f60c 	bl	250290 <operator delete(void*)@plt>
  912a5c:	eaffffeb 	b	912a10 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x868>
  912a60:	eaffffe9 	b	912a0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x864>
  912a64:	eaffffe8 	b	912a0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x864>
  912a68:	eaffffbf 	b	91296c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7c4>
  912a6c:	eaffffc2 	b	91297c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7d4>
  912a70:	e28d2048 	add	r2, sp, #72	@ 0x48
  912a74:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  912a78:	e58d2014 	str	r2, [sp, #20]
  912a7c:	e240000c 	sub	r0, r0, #12
  912a80:	e1a01002 	mov	r1, r2
  912a84:	ebe4f4c3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912a88:	eaffffcd 	b	9129c4 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x81c>
  912a8c:	eaffffde 	b	912a0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x864>
  912a90:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  912a94:	e28d1028 	add	r1, sp, #40	@ 0x28
  912a98:	e3a08000 	mov	r8, #0
  912a9c:	e240000c 	sub	r0, r0, #12
  912aa0:	ebe4f4bc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  912aa4:	e1a00004 	mov	r0, r4
  912aa8:	ebe4f5f8 	bl	250290 <operator delete(void*)@plt>
  912aac:	eaffffd7 	b	912a10 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x868>
  912ab0:	eaffffd5 	b	912a0c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x864>
  912ab4:	eaffffb4 	b	91298c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7e4>
  912ab8:	eaffffb7 	b	91299c <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base+0x7f4>
  912abc:	00114f40 	andseq	r4, r1, r0, asr #30
  912ac0:	00003440 	andeq	r3, r0, r0, asr #8
  912ac4:	0008ca5c 	andeq	ip, r8, ip, asr sl
  912ac8:	0008ca4c 	andeq	ip, r8, ip, asr #20
  912acc:	0008ca44 	andeq	ip, r8, r4, asr #20
  912ad0:	0008ca3c 	andeq	ip, r8, ip, lsr sl
  912ad4:	00002278 	andeq	r2, r0, r8, ror r2
  912ad8:	00001eb8 			@ <UNDEFINED> instruction: 0x00001eb8
  912adc:	00003c3c 	andeq	r3, r0, ip, lsr ip
  912ae0:	00003084 	andeq	r3, r0, r4, lsl #1
  912ae4:	00002544 	andeq	r2, r0, r4, asr #10
  912ae8:	00086e64 	andeq	r6, r8, r4, ror #28
  912aec:	00001b7c 	andeq	r1, r0, ip, ror fp
  912af0:	0008c4c0 	andeq	ip, r8, r0, asr #9
  912af4:	00003514 	andeq	r3, r0, r4, lsl r5
  912af8:	00063ca8 	andeq	r3, r6, r8, lsr #25
  912afc:	00063cbc 			@ <UNDEFINED> instruction: 0x00063cbc
  912b00:	00086d20 	andeq	r6, r8, r0, lsr #26
  912b04:	0008c368 	andeq	ip, r8, r8, ror #6
  912b08:	0002fb88 	andeq	pc, r2, r8, lsl #23
  912b0c:	0002fb50 	andeq	pc, r2, r0, asr fp	@ <UNPREDICTABLE>

00912b10 <netflix::Process::finish()@@Base>:
  912b10:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  912b14:	e24dd054 	sub	sp, sp, #84	@ 0x54
  912b18:	e59f75f4 	ldr	r7, [pc, #1524]	@ 913114 <netflix::Process::finish()@@Base+0x604>
  912b1c:	e59f35f4 	ldr	r3, [pc, #1524]	@ 913118 <netflix::Process::finish()@@Base+0x608>
  912b20:	e08f7007 	add	r7, pc, r7
  912b24:	e5908008 	ldr	r8, [r0, #8]
  912b28:	e7973003 	ldr	r3, [r7, r3]
  912b2c:	e3580000 	cmp	r8, #0
  912b30:	e58d300c 	str	r3, [sp, #12]
  912b34:	e5933000 	ldr	r3, [r3]
  912b38:	e58d304c 	str	r3, [sp, #76]	@ 0x4c
  912b3c:	0a000114 	beq	912f94 <netflix::Process::finish()@@Base+0x484>
  912b40:	e5982004 	ldr	r2, [r8, #4]
  912b44:	e2889004 	add	r9, r8, #4
  912b48:	e1a03002 	mov	r3, r2
  912b4c:	e58d201c 	str	r2, [sp, #28]
  912b50:	e3530000 	cmp	r3, #0
  912b54:	0a00010e 	beq	912f94 <netflix::Process::finish()@@Base+0x484>
  912b58:	e59d201c 	ldr	r2, [sp, #28]
  912b5c:	e2831001 	add	r1, r3, #1
  912b60:	e28da01c 	add	sl, sp, #28
  912b64:	f57ff05f 	dmb	sy
  912b68:	e1993f9f 	ldrex	r3, [r9]
  912b6c:	e1530002 	cmp	r3, r2
  912b70:	1a000002 	bne	912b80 <netflix::Process::finish()@@Base+0x70>
  912b74:	e189cf91 	strex	ip, r1, [r9]
  912b78:	e35c0000 	cmp	ip, #0
  912b7c:	f57ff05f 	dmb	sy
  912b80:	1a0000b3 	bne	912e54 <netflix::Process::finish()@@Base+0x344>
  912b84:	e59f2590 	ldr	r2, [pc, #1424]	@ 91311c <netflix::Process::finish()@@Base+0x60c>
  912b88:	e59f3590 	ldr	r3, [pc, #1424]	@ 913120 <netflix::Process::finish()@@Base+0x610>
  912b8c:	e5904004 	ldr	r4, [r0, #4]
  912b90:	e7972002 	ldr	r2, [r7, r2]
  912b94:	e3520000 	cmp	r2, #0
  912b98:	e58d2004 	str	r2, [sp, #4]
  912b9c:	e7973003 	ldr	r3, [r7, r3]
  912ba0:	e5933000 	ldr	r3, [r3]
  912ba4:	0a000104 	beq	912fbc <netflix::Process::finish()@@Base+0x4ac>
  912ba8:	f57ff05f 	dmb	sy
  912bac:	e199ef9f 	ldrex	r14, [r9]
  912bb0:	e28ee001 	add	lr, lr, #1
  912bb4:	e1890f9e 	strex	r0, lr, [r9]
  912bb8:	e3500000 	cmp	r0, #0
  912bbc:	1afffffa 	bne	912bac <netflix::Process::finish()@@Base+0x9c>
  912bc0:	f57ff05f 	dmb	sy
  912bc4:	e593b0b0 	ldr	fp, [r3, #176]	@ 0xb0
  912bc8:	e35b0000 	cmp	fp, #0
  912bcc:	0a0000a2 	beq	912e5c <netflix::Process::finish()@@Base+0x34c>
  912bd0:	e3a00008 	mov	r0, #8
  912bd4:	e3a03000 	mov	r3, #0
  912bd8:	e58d3044 	str	r3, [sp, #68]	@ 0x44
  912bdc:	ebe4f03b 	bl	24ecd0 <operator new(unsigned int)@plt>
  912be0:	e1a03000 	mov	r3, r0
  912be4:	e59fc538 	ldr	ip, [pc, #1336]	@ 913124 <netflix::Process::finish()@@Base+0x614>
  912be8:	e59f1538 	ldr	r1, [pc, #1336]	@ 913128 <netflix::Process::finish()@@Base+0x618>
  912bec:	e3a00048 	mov	r0, #72	@ 0x48
  912bf0:	e8830110 	stm	r3, {r4, r8}
  912bf4:	e08fc00c 	add	ip, pc, ip
  912bf8:	e3a02000 	mov	r2, #0
  912bfc:	e08f1001 	add	r1, pc, r1
  912c00:	e58d303c 	str	r3, [sp, #60]	@ 0x3c
  912c04:	e58dc048 	str	ip, [sp, #72]	@ 0x48
  912c08:	e58d1044 	str	r1, [sp, #68]	@ 0x44
  912c0c:	e58d2034 	str	r2, [sp, #52]	@ 0x34
  912c10:	ebe4f02e 	bl	24ecd0 <operator new(unsigned int)@plt>
  912c14:	e59f3510 	ldr	r3, [pc, #1296]	@ 91312c <netflix::Process::finish()@@Base+0x61c>
  912c18:	e1a06000 	mov	r6, r0
  912c1c:	e3e02000 	mvn	r2, #0
  912c20:	e1a0100a 	mov	r1, sl
  912c24:	e3a00004 	mov	r0, #4
  912c28:	e7973003 	ldr	r3, [r7, r3]
  912c2c:	e5862004 	str	r2, [r6, #4]
  912c30:	e2833008 	add	r3, r3, #8
  912c34:	e5863000 	str	r3, [r6]
  912c38:	ebe4f231 	bl	24f504 <clock_gettime@plt>
  912c3c:	e59d3020 	ldr	r3, [sp, #32]
  912c40:	e30d2e83 	movw	r2, #56963	@ 0xde83
  912c44:	e59f04e4 	ldr	r0, [pc, #1252]	@ 913130 <netflix::Process::finish()@@Base+0x620>
  912c48:	e344231b 	movt	r2, #17179	@ 0x431b
  912c4c:	e59d101c 	ldr	r1, [sp, #28]
  912c50:	e0c2c392 	smull	ip, r2, r2, r3
  912c54:	e1a03fc3 	asr	r3, r3, #31
  912c58:	e797c000 	ldr	ip, [r7, r0]
  912c5c:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
  912c60:	e1cc40d0 	ldrd	r4, [ip]
  912c64:	e0632942 	rsb	r2, r3, r2, asr #18
  912c68:	e3540000 	cmp	r4, #0
  912c6c:	e1a03fc2 	asr	r3, r2, #31
  912c70:	e0e32190 	smlal	r2, r3, r0, r1
  912c74:	01a00002 	moveq	r0, r2
  912c78:	01a01003 	moveq	r1, r3
  912c7c:	1a0000d2 	bne	912fcc <netflix::Process::finish()@@Base+0x4bc>
  912c80:	e28d203c 	add	r2, sp, #60	@ 0x3c
  912c84:	e59fe4a8 	ldr	lr, [pc, #1192]	@ 913134 <netflix::Process::finish()@@Base+0x624>
  912c88:	e1c600f8 	strd	r0, [r6, #8]
  912c8c:	e3a0c000 	mov	ip, #0
  912c90:	e8920003 	ldm	r2, {r0, r1}
  912c94:	e3a03001 	mov	r3, #1
  912c98:	e586c014 	str	ip, [r6, #20]
  912c9c:	e28d402c 	add	r4, sp, #44	@ 0x2c
  912ca0:	e5863010 	str	r3, [r6, #16]
  912ca4:	e3a03000 	mov	r3, #0
  912ca8:	e58d2008 	str	r2, [sp, #8]
  912cac:	e3a02000 	mov	r2, #0
  912cb0:	e1c621f8 	strd	r2, [r6, #24]
  912cb4:	e28d3024 	add	r3, sp, #36	@ 0x24
  912cb8:	e797500e 	ldr	r5, [r7, lr]
  912cbc:	e1a02006 	mov	r2, r6
  912cc0:	e8830003 	stm	r3, {r0, r1}
  912cc4:	e286e030 	add	lr, r6, #48	@ 0x30
  912cc8:	e2855008 	add	r5, r5, #8
  912ccc:	e58de000 	str	lr, [sp]
  912cd0:	e4825020 	str	r5, [r2], #32
  912cd4:	e59de008 	ldr	lr, [sp, #8]
  912cd8:	e8920003 	ldm	r2, {r0, r1}
  912cdc:	e59d5044 	ldr	r5, [sp, #68]	@ 0x44
  912ce0:	e58dc044 	str	ip, [sp, #68]	@ 0x44
  912ce4:	e88e0003 	stm	lr, {r0, r1}
  912ce8:	e8930003 	ldm	r3, {r0, r1}
  912cec:	e59de048 	ldr	lr, [sp, #72]	@ 0x48
  912cf0:	e8820003 	stm	r2, {r0, r1}
  912cf4:	e8940003 	ldm	r4, {r0, r1}
  912cf8:	e596202c 	ldr	r2, [r6, #44]	@ 0x2c
  912cfc:	e586e02c 	str	lr, [r6, #44]	@ 0x2c
  912d00:	e59de000 	ldr	lr, [sp]
  912d04:	e5865028 	str	r5, [r6, #40]	@ 0x28
  912d08:	e8830003 	stm	r3, {r0, r1}
  912d0c:	e89e0003 	ldm	lr, {r0, r1}
  912d10:	e58d2048 	str	r2, [sp, #72]	@ 0x48
  912d14:	e59f241c 	ldr	r2, [pc, #1052]	@ 913138 <netflix::Process::finish()@@Base+0x628>
  912d18:	e8840003 	stm	r4, {r0, r1}
  912d1c:	e8930003 	ldm	r3, {r0, r1}
  912d20:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  912d24:	e58dc034 	str	ip, [sp, #52]	@ 0x34
  912d28:	e88e0003 	stm	lr, {r0, r1}
  912d2c:	e3a00010 	mov	r0, #16
  912d30:	e596e03c 	ldr	lr, [r6, #60]	@ 0x3c
  912d34:	e59d1038 	ldr	r1, [sp, #56]	@ 0x38
  912d38:	e5863038 	str	r3, [r6, #56]	@ 0x38
  912d3c:	e58de038 	str	lr, [sp, #56]	@ 0x38
  912d40:	e586103c 	str	r1, [r6, #60]	@ 0x3c
  912d44:	e7975002 	ldr	r5, [r7, r2]
  912d48:	e285300c 	add	r3, r5, #12
  912d4c:	e5863040 	str	r3, [r6, #64]	@ 0x40
  912d50:	e58dc020 	str	ip, [sp, #32]
  912d54:	e58d601c 	str	r6, [sp, #28]
  912d58:	ebe4efdc 	bl	24ecd0 <operator new(unsigned int)@plt>
  912d5c:	e59fc3d8 	ldr	ip, [pc, #984]	@ 91313c <netflix::Process::finish()@@Base+0x62c>
  912d60:	e1a03000 	mov	r3, r0
  912d64:	e3a02001 	mov	r2, #1
  912d68:	e5832004 	str	r2, [r3, #4]
  912d6c:	e5832008 	str	r2, [r3, #8]
  912d70:	e1a0000b 	mov	r0, fp
  912d74:	e797200c 	ldr	r2, [r7, ip]
  912d78:	e1a0100a 	mov	r1, sl
  912d7c:	e583600c 	str	r6, [r3, #12]
  912d80:	e2822008 	add	r2, r2, #8
  912d84:	e5832000 	str	r2, [r3]
  912d88:	e58d3020 	str	r3, [sp, #32]
  912d8c:	ebfdf5c8 	bl	8904b4 <netflix::EventLoop::postEvent(std::shared_ptr<netflix::EventLoop::Event>&&)@@Base>
  912d90:	e59d5020 	ldr	r5, [sp, #32]
  912d94:	e3550000 	cmp	r5, #0
  912d98:	0a00000c 	beq	912dd0 <netflix::Process::finish()@@Base+0x2c0>
  912d9c:	e59d0004 	ldr	r0, [sp, #4]
  912da0:	e2853004 	add	r3, r5, #4
  912da4:	e3500000 	cmp	r0, #0
  912da8:	0a000097 	beq	91300c <netflix::Process::finish()@@Base+0x4fc>
  912dac:	f57ff05f 	dmb	sy
  912db0:	e1932f9f 	ldrex	r2, [r3]
  912db4:	e2421001 	sub	r1, r2, #1
  912db8:	e183cf91 	strex	ip, r1, [r3]
  912dbc:	e35c0000 	cmp	ip, #0
  912dc0:	1afffffa 	bne	912db0 <netflix::Process::finish()@@Base+0x2a0>
  912dc4:	f57ff05f 	dmb	sy
  912dc8:	e3520001 	cmp	r2, #1
  912dcc:	0a000044 	beq	912ee4 <netflix::Process::finish()@@Base+0x3d4>
  912dd0:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  912dd4:	e3530000 	cmp	r3, #0
  912dd8:	0a000003 	beq	912dec <netflix::Process::finish()@@Base+0x2dc>
  912ddc:	e1a00004 	mov	r0, r4
  912de0:	e3a02003 	mov	r2, #3
  912de4:	e1a01004 	mov	r1, r4
  912de8:	e12fff33 	blx	r3
  912dec:	e59d3044 	ldr	r3, [sp, #68]	@ 0x44
  912df0:	e3530000 	cmp	r3, #0
  912df4:	0a000003 	beq	912e08 <netflix::Process::finish()@@Base+0x2f8>
  912df8:	e28d003c 	add	r0, sp, #60	@ 0x3c
  912dfc:	e3a02003 	mov	r2, #3
  912e00:	e1a01000 	mov	r1, r0
  912e04:	e12fff33 	blx	r3
  912e08:	e59d2004 	ldr	r2, [sp, #4]
  912e0c:	e3520000 	cmp	r2, #0
  912e10:	0a000065 	beq	912fac <netflix::Process::finish()@@Base+0x49c>
  912e14:	f57ff05f 	dmb	sy
  912e18:	e1993f9f 	ldrex	r3, [r9]
  912e1c:	e243c001 	sub	ip, r3, #1
  912e20:	e189ef9c 	strex	lr, ip, [r9]
  912e24:	e35e0000 	cmp	lr, #0
  912e28:	1afffffa 	bne	912e18 <netflix::Process::finish()@@Base+0x308>
  912e2c:	f57ff05f 	dmb	sy
  912e30:	e3530001 	cmp	r3, #1
  912e34:	0a000040 	beq	912f3c <netflix::Process::finish()@@Base+0x42c>
  912e38:	e59d000c 	ldr	r0, [sp, #12]
  912e3c:	e59d204c 	ldr	r2, [sp, #76]	@ 0x4c
  912e40:	e5903000 	ldr	r3, [r0]
  912e44:	e1520003 	cmp	r2, r3
  912e48:	1a000052 	bne	912f98 <netflix::Process::finish()@@Base+0x488>
  912e4c:	e28dd054 	add	sp, sp, #84	@ 0x54
  912e50:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  912e54:	e58d301c 	str	r3, [sp, #28]
  912e58:	eaffff3c 	b	912b50 <netflix::Process::finish()@@Base+0x40>
  912e5c:	e59de004 	ldr	lr, [sp, #4]
  912e60:	e35e0000 	cmp	lr, #0
  912e64:	0a00004c 	beq	912f9c <netflix::Process::finish()@@Base+0x48c>
  912e68:	f57ff05f 	dmb	sy
  912e6c:	e1993f9f 	ldrex	r3, [r9]
  912e70:	e2432001 	sub	r2, r3, #1
  912e74:	e189cf92 	strex	ip, r2, [r9]
  912e78:	e35c0000 	cmp	ip, #0
  912e7c:	1afffffa 	bne	912e6c <netflix::Process::finish()@@Base+0x35c>
  912e80:	f57ff05f 	dmb	sy
  912e84:	e3530001 	cmp	r3, #1
  912e88:	1affffde 	bne	912e08 <netflix::Process::finish()@@Base+0x2f8>
  912e8c:	e5983000 	ldr	r3, [r8]
  912e90:	e1a00008 	mov	r0, r8
  912e94:	e5933008 	ldr	r3, [r3, #8]
  912e98:	e12fff33 	blx	r3
  912e9c:	e59de004 	ldr	lr, [sp, #4]
  912ea0:	e2883008 	add	r3, r8, #8
  912ea4:	e35e0000 	cmp	lr, #0
  912ea8:	0a00005f 	beq	91302c <netflix::Process::finish()@@Base+0x51c>
  912eac:	f57ff05f 	dmb	sy
  912eb0:	e1932f9f 	ldrex	r2, [r3]
  912eb4:	e2420001 	sub	r0, r2, #1
  912eb8:	e1831f90 	strex	r1, r0, [r3]
  912ebc:	e3510000 	cmp	r1, #0
  912ec0:	1afffffa 	bne	912eb0 <netflix::Process::finish()@@Base+0x3a0>
  912ec4:	f57ff05f 	dmb	sy
  912ec8:	e3520001 	cmp	r2, #1
  912ecc:	1affffcd 	bne	912e08 <netflix::Process::finish()@@Base+0x2f8>
  912ed0:	e5983000 	ldr	r3, [r8]
  912ed4:	e1a00008 	mov	r0, r8
  912ed8:	e593300c 	ldr	r3, [r3, #12]
  912edc:	e12fff33 	blx	r3
  912ee0:	eaffffc8 	b	912e08 <netflix::Process::finish()@@Base+0x2f8>
  912ee4:	e5953000 	ldr	r3, [r5]
  912ee8:	e1a00005 	mov	r0, r5
  912eec:	e5933008 	ldr	r3, [r3, #8]
  912ef0:	e12fff33 	blx	r3
  912ef4:	e59de004 	ldr	lr, [sp, #4]
  912ef8:	e2853008 	add	r3, r5, #8
  912efc:	e35e0000 	cmp	lr, #0
  912f00:	0a000074 	beq	9130d8 <netflix::Process::finish()@@Base+0x5c8>
  912f04:	f57ff05f 	dmb	sy
  912f08:	e1932f9f 	ldrex	r2, [r3]
  912f0c:	e2420001 	sub	r0, r2, #1
  912f10:	e1831f90 	strex	r1, r0, [r3]
  912f14:	e3510000 	cmp	r1, #0
  912f18:	1afffffa 	bne	912f08 <netflix::Process::finish()@@Base+0x3f8>
  912f1c:	f57ff05f 	dmb	sy
  912f20:	e3520001 	cmp	r2, #1
  912f24:	1affffa9 	bne	912dd0 <netflix::Process::finish()@@Base+0x2c0>
  912f28:	e5953000 	ldr	r3, [r5]
  912f2c:	e1a00005 	mov	r0, r5
  912f30:	e593300c 	ldr	r3, [r3, #12]
  912f34:	e12fff33 	blx	r3
  912f38:	eaffffa4 	b	912dd0 <netflix::Process::finish()@@Base+0x2c0>
  912f3c:	e5983000 	ldr	r3, [r8]
  912f40:	e1a00008 	mov	r0, r8
  912f44:	e5933008 	ldr	r3, [r3, #8]
  912f48:	e12fff33 	blx	r3
  912f4c:	e59d0004 	ldr	r0, [sp, #4]
  912f50:	e2883008 	add	r3, r8, #8
  912f54:	e3500000 	cmp	r0, #0
  912f58:	0a00002f 	beq	91301c <netflix::Process::finish()@@Base+0x50c>
  912f5c:	f57ff05f 	dmb	sy
  912f60:	e1932f9f 	ldrex	r2, [r3]
  912f64:	e2421001 	sub	r1, r2, #1
  912f68:	e183cf91 	strex	ip, r1, [r3]
  912f6c:	e35c0000 	cmp	ip, #0
  912f70:	1afffffa 	bne	912f60 <netflix::Process::finish()@@Base+0x450>
  912f74:	f57ff05f 	dmb	sy
  912f78:	e3520001 	cmp	r2, #1
  912f7c:	1affffad 	bne	912e38 <netflix::Process::finish()@@Base+0x328>
  912f80:	e5983000 	ldr	r3, [r8]
  912f84:	e1a00008 	mov	r0, r8
  912f88:	e593300c 	ldr	r3, [r3, #12]
  912f8c:	e12fff33 	blx	r3
  912f90:	eaffffa8 	b	912e38 <netflix::Process::finish()@@Base+0x328>
  912f94:	ebe55db3 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  912f98:	ebe4ef3d 	bl	24ec94 <__stack_chk_fail@plt>
  912f9c:	e5983004 	ldr	r3, [r8, #4]
  912fa0:	e2432001 	sub	r2, r3, #1
  912fa4:	e5882004 	str	r2, [r8, #4]
  912fa8:	eaffffb5 	b	912e84 <netflix::Process::finish()@@Base+0x374>
  912fac:	e5983004 	ldr	r3, [r8, #4]
  912fb0:	e2432001 	sub	r2, r3, #1
  912fb4:	e5882004 	str	r2, [r8, #4]
  912fb8:	eaffff9c 	b	912e30 <netflix::Process::finish()@@Base+0x320>
  912fbc:	e5982004 	ldr	r2, [r8, #4]
  912fc0:	e2822001 	add	r2, r2, #1
  912fc4:	e5882004 	str	r2, [r8, #4]
  912fc8:	eafffefd 	b	912bc4 <netflix::Process::finish()@@Base+0xb4>
  912fcc:	e59f116c 	ldr	r1, [pc, #364]	@ 913140 <netflix::Process::finish()@@Base+0x630>
  912fd0:	e7971001 	ldr	r1, [r7, r1]
  912fd4:	e1c100d0 	ldrd	r0, [r1]
  912fd8:	e0520000 	subs	r0, r2, r0
  912fdc:	e0c31001 	sbc	r1, r3, r1
  912fe0:	ebe4eed4 	bl	24eb38 <__aeabi_ul2d@plt>
  912fe4:	e59f3158 	ldr	r3, [pc, #344]	@ 913144 <netflix::Process::finish()@@Base+0x634>
  912fe8:	e7973003 	ldr	r3, [r7, r3]
  912fec:	ed937b00 	vldr	d7, [r3]
  912ff0:	ec410b16 	vmov	d6, r0, r1
  912ff4:	ee266b07 	vmul.f64	d6, d6, d7
  912ff8:	ec510b16 	vmov	r0, r1, d6
  912ffc:	ebe4eeca 	bl	24eb2c <__aeabi_d2lz@plt>
  913000:	e0900004 	adds	r0, r0, r4
  913004:	e0a11005 	adc	r1, r1, r5
  913008:	eaffff1c 	b	912c80 <netflix::Process::finish()@@Base+0x170>
  91300c:	e5952004 	ldr	r2, [r5, #4]
  913010:	e2423001 	sub	r3, r2, #1
  913014:	e5853004 	str	r3, [r5, #4]
  913018:	eaffff6a 	b	912dc8 <netflix::Process::finish()@@Base+0x2b8>
  91301c:	e5982008 	ldr	r2, [r8, #8]
  913020:	e2423001 	sub	r3, r2, #1
  913024:	e5883008 	str	r3, [r8, #8]
  913028:	eaffffd2 	b	912f78 <netflix::Process::finish()@@Base+0x468>
  91302c:	e5982008 	ldr	r2, [r8, #8]
  913030:	e2423001 	sub	r3, r2, #1
  913034:	e5883008 	str	r3, [r8, #8]
  913038:	eaffffa2 	b	912ec8 <netflix::Process::finish()@@Base+0x3b8>
  91303c:	e59d0020 	ldr	r0, [sp, #32]
  913040:	e3500000 	cmp	r0, #0
  913044:	0a000000 	beq	91304c <netflix::Process::finish()@@Base+0x53c>
  913048:	ebe55e49 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  91304c:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  913050:	e3530000 	cmp	r3, #0
  913054:	0a000003 	beq	913068 <netflix::Process::finish()@@Base+0x558>
  913058:	e28d002c 	add	r0, sp, #44	@ 0x2c
  91305c:	e3a02003 	mov	r2, #3
  913060:	e1a01000 	mov	r1, r0
  913064:	e12fff33 	blx	r3
  913068:	e59d3044 	ldr	r3, [sp, #68]	@ 0x44
  91306c:	e3530000 	cmp	r3, #0
  913070:	0a000003 	beq	913084 <netflix::Process::finish()@@Base+0x574>
  913074:	e28d003c 	add	r0, sp, #60	@ 0x3c
  913078:	e3a02003 	mov	r2, #3
  91307c:	e1a01000 	mov	r1, r0
  913080:	e12fff33 	blx	r3
  913084:	e1a00005 	mov	r0, r5
  913088:	e28d1018 	add	r1, sp, #24
  91308c:	ebe4f341 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  913090:	e1a00005 	mov	r0, r5
  913094:	e28d1014 	add	r1, sp, #20
  913098:	ebe4f33e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  91309c:	e1a00008 	mov	r0, r8
  9130a0:	ebe55e33 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9130a4:	ebe4f3e0 	bl	25002c <__cxa_end_cleanup@plt>
  9130a8:	e59d3044 	ldr	r3, [sp, #68]	@ 0x44
  9130ac:	e3530000 	cmp	r3, #0
  9130b0:	0a000003 	beq	9130c4 <netflix::Process::finish()@@Base+0x5b4>
  9130b4:	e28d003c 	add	r0, sp, #60	@ 0x3c
  9130b8:	e3a02003 	mov	r2, #3
  9130bc:	e1a01000 	mov	r1, r0
  9130c0:	e12fff33 	blx	r3
  9130c4:	e1a00008 	mov	r0, r8
  9130c8:	ebe55e29 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  9130cc:	e59f3064 	ldr	r3, [pc, #100]	@ 913138 <netflix::Process::finish()@@Base+0x628>
  9130d0:	e7975003 	ldr	r5, [r7, r3]
  9130d4:	eaffffea 	b	913084 <netflix::Process::finish()@@Base+0x574>
  9130d8:	e5952008 	ldr	r2, [r5, #8]
  9130dc:	e2423001 	sub	r3, r2, #1
  9130e0:	e5853008 	str	r3, [r5, #8]
  9130e4:	eaffff8d 	b	912f20 <netflix::Process::finish()@@Base+0x410>
  9130e8:	e59f3048 	ldr	r3, [pc, #72]	@ 913138 <netflix::Process::finish()@@Base+0x628>
  9130ec:	e7975003 	ldr	r5, [r7, r3]
  9130f0:	eaffffd5 	b	91304c <netflix::Process::finish()@@Base+0x53c>
  9130f4:	ebe4ef79 	bl	24eee0 <__cxa_begin_catch@plt>
  9130f8:	e5963000 	ldr	r3, [r6]
  9130fc:	e1a00006 	mov	r0, r6
  913100:	e5933004 	ldr	r3, [r3, #4]
  913104:	e12fff33 	blx	r3
  913108:	ebe4f37f 	bl	24ff0c <__cxa_rethrow@plt>
  91310c:	ebe4fa41 	bl	251a18 <__cxa_end_catch@plt>
  913110:	eaffffcd 	b	91304c <netflix::Process::finish()@@Base+0x53c>
  913114:	001145e0 	andseq	r4, r1, r0, ror #11
  913118:	00003440 	andeq	r3, r0, r0, asr #8
  91311c:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  913120:	000037dc 	ldrdeq	r3, [r0], -ip
  913124:	ffffe240 			@ <UNDEFINED> instruction: 0xffffe240
  913128:	ffffe5d4 			@ <UNDEFINED> instruction: 0xffffe5d4
  91312c:	00002e24 	andeq	r2, r0, r4, lsr #28
  913130:	00001ac8 	andeq	r1, r0, r8, asr #21
  913134:	000017b4 			@ <UNDEFINED> instruction: 0x000017b4
  913138:	00002278 	andeq	r2, r0, r8, ror r2
  91313c:	000026f4 	strdeq	r2, [r0], -r4
  913140:	00002940 	andeq	r2, r0, r0, asr #18
  913144:	00002250 	andeq	r2, r0, r0, asr r2

00913148 <netflix::Process::onFinished()@@Base>:
  913148:	e59f3034 	ldr	r3, [pc, #52]	@ 913184 <netflix::Process::onFinished()@@Base+0x3c>
  91314c:	e59f2034 	ldr	r2, [pc, #52]	@ 913188 <netflix::Process::onFinished()@@Base+0x40>
  913150:	e08f3003 	add	r3, pc, r3
  913154:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  913158:	e24dd00c 	sub	sp, sp, #12
  91315c:	e7933002 	ldr	r3, [r3, r2]
  913160:	e5932000 	ldr	r2, [r3]
  913164:	e58d2004 	str	r2, [sp, #4]
  913168:	e59d2004 	ldr	r2, [sp, #4]
  91316c:	e5933000 	ldr	r3, [r3]
  913170:	e1520003 	cmp	r2, r3
  913174:	1a000001 	bne	913180 <netflix::Process::onFinished()@@Base+0x38>
  913178:	e28dd00c 	add	sp, sp, #12
  91317c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  913180:	ebe4eec3 	bl	24ec94 <__stack_chk_fail@plt>
  913184:	00113fb0 			@ <UNDEFINED> instruction: 0x00113fb0
  913188:	00003440 	andeq	r3, r0, r0, asr #8

0091318c <netflix::ProcessIOThread::~ProcessIOThread()@@Base>:
  91318c:	e59f3050 	ldr	r3, [pc, #80]	@ 9131e4 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x58>
  913190:	e59f1050 	ldr	r1, [pc, #80]	@ 9131e8 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x5c>
  913194:	e08f3003 	add	r3, pc, r3
  913198:	e59f204c 	ldr	r2, [pc, #76]	@ 9131ec <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x60>
  91319c:	e92d4030 	push	{r4, r5, lr}
  9131a0:	e24dd00c 	sub	sp, sp, #12
  9131a4:	e7934001 	ldr	r4, [r3, r1]
  9131a8:	e1a05000 	mov	r5, r0
  9131ac:	e5941000 	ldr	r1, [r4]
  9131b0:	e58d1004 	str	r1, [sp, #4]
  9131b4:	e7933002 	ldr	r3, [r3, r2]
  9131b8:	e2833008 	add	r3, r3, #8
  9131bc:	e5803000 	str	r3, [r0]
  9131c0:	ebffc5cc 	bl	9048f8 <netflix::Thread::~Thread()@@Base>
  9131c4:	e59d2004 	ldr	r2, [sp, #4]
  9131c8:	e5943000 	ldr	r3, [r4]
  9131cc:	e1520003 	cmp	r2, r3
  9131d0:	1a000002 	bne	9131e0 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x54>
  9131d4:	e1a00005 	mov	r0, r5
  9131d8:	e28dd00c 	add	sp, sp, #12
  9131dc:	e8bd8030 	pop	{r4, r5, pc}
  9131e0:	ebe4eeab 	bl	24ec94 <__stack_chk_fail@plt>
  9131e4:	00113f6c 	andseq	r3, r1, ip, ror #30
  9131e8:	00003440 	andeq	r3, r0, r0, asr #8
  9131ec:	00002544 	andeq	r2, r0, r4, asr #10

009131f0 <netflix::ProcessIOThread::~ProcessIOThread()@@Base>:
  9131f0:	e59f3058 	ldr	r3, [pc, #88]	@ 913250 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x60>
  9131f4:	e59f1058 	ldr	r1, [pc, #88]	@ 913254 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x64>
  9131f8:	e08f3003 	add	r3, pc, r3
  9131fc:	e59f2054 	ldr	r2, [pc, #84]	@ 913258 <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x68>
  913200:	e92d4030 	push	{r4, r5, lr}
  913204:	e24dd00c 	sub	sp, sp, #12
  913208:	e7935001 	ldr	r5, [r3, r1]
  91320c:	e1a04000 	mov	r4, r0
  913210:	e5951000 	ldr	r1, [r5]
  913214:	e58d1004 	str	r1, [sp, #4]
  913218:	e7933002 	ldr	r3, [r3, r2]
  91321c:	e2833008 	add	r3, r3, #8
  913220:	e5803000 	str	r3, [r0]
  913224:	ebffc5b3 	bl	9048f8 <netflix::Thread::~Thread()@@Base>
  913228:	e1a00004 	mov	r0, r4
  91322c:	ebe4f417 	bl	250290 <operator delete(void*)@plt>
  913230:	e59d2004 	ldr	r2, [sp, #4]
  913234:	e5953000 	ldr	r3, [r5]
  913238:	e1520003 	cmp	r2, r3
  91323c:	1a000002 	bne	91324c <netflix::ProcessIOThread::~ProcessIOThread()@@Base+0x5c>
  913240:	e1a00004 	mov	r0, r4
  913244:	e28dd00c 	add	sp, sp, #12
  913248:	e8bd8030 	pop	{r4, r5, pc}
  91324c:	ebe4ee90 	bl	24ec94 <__stack_chk_fail@plt>
  913250:	00113f08 	andseq	r3, r1, r8, lsl #30
  913254:	00003440 	andeq	r3, r0, r0, asr #8
  913258:	00002544 	andeq	r2, r0, r4, asr #10

0091325c <netflix::WaitPidThread::~WaitPidThread()@@Base>:
  91325c:	e59f3050 	ldr	r3, [pc, #80]	@ 9132b4 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x58>
  913260:	e59f1050 	ldr	r1, [pc, #80]	@ 9132b8 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x5c>
  913264:	e08f3003 	add	r3, pc, r3
  913268:	e59f204c 	ldr	r2, [pc, #76]	@ 9132bc <netflix::WaitPidThread::~WaitPidThread()@@Base+0x60>
  91326c:	e92d4030 	push	{r4, r5, lr}
  913270:	e24dd00c 	sub	sp, sp, #12
  913274:	e7934001 	ldr	r4, [r3, r1]
  913278:	e1a05000 	mov	r5, r0
  91327c:	e5941000 	ldr	r1, [r4]
  913280:	e58d1004 	str	r1, [sp, #4]
  913284:	e7933002 	ldr	r3, [r3, r2]
  913288:	e2833008 	add	r3, r3, #8
  91328c:	e5803000 	str	r3, [r0]
  913290:	ebffc598 	bl	9048f8 <netflix::Thread::~Thread()@@Base>
  913294:	e59d2004 	ldr	r2, [sp, #4]
  913298:	e5943000 	ldr	r3, [r4]
  91329c:	e1520003 	cmp	r2, r3
  9132a0:	1a000002 	bne	9132b0 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x54>
  9132a4:	e1a00005 	mov	r0, r5
  9132a8:	e28dd00c 	add	sp, sp, #12
  9132ac:	e8bd8030 	pop	{r4, r5, pc}
  9132b0:	ebe4ee77 	bl	24ec94 <__stack_chk_fail@plt>
  9132b4:	00113e9c 	mulseq	r1, ip, lr
  9132b8:	00003440 	andeq	r3, r0, r0, asr #8
  9132bc:	00003c3c 	andeq	r3, r0, ip, lsr ip

009132c0 <netflix::WaitPidThread::~WaitPidThread()@@Base>:
  9132c0:	e59f3058 	ldr	r3, [pc, #88]	@ 913320 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x60>
  9132c4:	e59f1058 	ldr	r1, [pc, #88]	@ 913324 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x64>
  9132c8:	e08f3003 	add	r3, pc, r3
  9132cc:	e59f2054 	ldr	r2, [pc, #84]	@ 913328 <netflix::WaitPidThread::~WaitPidThread()@@Base+0x68>
  9132d0:	e92d4030 	push	{r4, r5, lr}
  9132d4:	e24dd00c 	sub	sp, sp, #12
  9132d8:	e7935001 	ldr	r5, [r3, r1]
  9132dc:	e1a04000 	mov	r4, r0
  9132e0:	e5951000 	ldr	r1, [r5]
  9132e4:	e58d1004 	str	r1, [sp, #4]
  9132e8:	e7933002 	ldr	r3, [r3, r2]
  9132ec:	e2833008 	add	r3, r3, #8
  9132f0:	e5803000 	str	r3, [r0]
  9132f4:	ebffc57f 	bl	9048f8 <netflix::Thread::~Thread()@@Base>
  9132f8:	e1a00004 	mov	r0, r4
  9132fc:	ebe4f3e3 	bl	250290 <operator delete(void*)@plt>
