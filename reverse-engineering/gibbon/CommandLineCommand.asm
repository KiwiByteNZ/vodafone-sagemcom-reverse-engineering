
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008b2800 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x30>:
  8b2800:	e7979009 	ldr	r9, [r7, r9]
  8b2804:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8b2808:	e1540008 	cmp	r4, r8
  8b280c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8b2810:	e1a07009 	mov	r7, r9
  8b2814:	e599e000 	ldr	lr, [r9]
  8b2818:	128d8010 	addne	r8, sp, #16
  8b281c:	e58d9004 	str	r9, [sp, #4]
  8b2820:	128d700c 	addne	r7, sp, #12
  8b2824:	12859004 	addne	r9, r5, #4
  8b2828:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8b282c:	e58de014 	str	lr, [sp, #20]
  8b2830:	1a000029 	bne	8b28dc <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x10c>
  8b2834:	ea000037 	b	8b2918 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x148>
  8b2838:	e3a01000 	mov	r1, #0
  8b283c:	ebe735b7 	bl	27ff20 <netflix::DataBuffer::detachInternal(netflix::DataBuffer::DetachMode)@@Base>
  8b2840:	e5950004 	ldr	r0, [r5, #4]
  8b2844:	e9901002 	ldmib	r0, {r1, ip}
  8b2848:	e061100c 	rsb	r1, r1, ip
  8b284c:	e15a0001 	cmp	sl, r1
  8b2850:	9a000009 	bls	8b287c <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0xac>
  8b2854:	e35c0701 	cmp	ip, #262144	@ 0x40000
  8b2858:	e061100a 	rsb	r1, r1, sl
  8b285c:	e1a00009 	mov	r0, r9
  8b2860:	31a0e00c 	movcc	lr, ip
  8b2864:	23a0e701 	movcs	lr, #262144	@ 0x40000
  8b2868:	e151000e 	cmp	r1, lr
  8b286c:	208c1001 	addcs	r1, ip, r1
  8b2870:	308c100e 	addcc	r1, ip, lr
  8b2874:	ebe73549 	bl	27fda0 <netflix::DataBuffer::reserveInternal(unsigned int)@@Base>
  8b2878:	e5950004 	ldr	r0, [r5, #4]
  8b287c:	e590c014 	ldr	ip, [r0, #20]
  8b2880:	e1a0100b 	mov	r1, fp
  8b2884:	e595000c 	ldr	r0, [r5, #12]
  8b2888:	e1a0200a 	mov	r2, sl
  8b288c:	e08c0000 	add	r0, ip, r0
  8b2890:	ebe67411 	bl	24f8dc <memcpy@plt>
  8b2894:	e5952004 	ldr	r2, [r5, #4]
  8b2898:	e595100c 	ldr	r1, [r5, #12]
  8b289c:	e5920014 	ldr	r0, [r2, #20]
  8b28a0:	e08a1001 	add	r1, sl, r1
  8b28a4:	e592c004 	ldr	ip, [r2, #4]
  8b28a8:	e585100c 	str	r1, [r5, #12]
  8b28ac:	e08c300a 	add	r3, ip, sl
  8b28b0:	e5823004 	str	r3, [r2, #4]
  8b28b4:	e3a03000 	mov	r3, #0
  8b28b8:	e7c03001 	strb	r3, [r0, r1]
  8b28bc:	e59db010 	ldr	fp, [sp, #16]
  8b28c0:	e24b000c 	sub	r0, fp, #12
  8b28c4:	e1a01007 	mov	r1, r7
  8b28c8:	ebe67532 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b28cc:	e5963028 	ldr	r3, [r6, #40]	@ 0x28
  8b28d0:	e2844004 	add	r4, r4, #4
  8b28d4:	e1540003 	cmp	r4, r3
  8b28d8:	0a00000e 	beq	8b2918 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x148>
  8b28dc:	e1a00008 	mov	r0, r8
  8b28e0:	e1a01004 	mov	r1, r4
  8b28e4:	ebe677e6 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b28e8:	e59db010 	ldr	fp, [sp, #16]
  8b28ec:	e51ba00c 	ldr	sl, [fp, #-12]
  8b28f0:	e35a0000 	cmp	sl, #0
  8b28f4:	0afffff1 	beq	8b28c0 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0xf0>
  8b28f8:	e5951004 	ldr	r1, [r5, #4]
  8b28fc:	e1a00009 	mov	r0, r9
  8b2900:	e3510000 	cmp	r1, #0
  8b2904:	1affffcb 	bne	8b2838 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x68>
  8b2908:	e1a0100a 	mov	r1, sl
  8b290c:	ebe73523 	bl	27fda0 <netflix::DataBuffer::reserveInternal(unsigned int)@@Base>
  8b2910:	e5950004 	ldr	r0, [r5, #4]
  8b2914:	eaffffd8 	b	8b287c <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0xac>
  8b2918:	e59d7004 	ldr	r7, [sp, #4]
  8b291c:	e3a00001 	mov	r0, #1
  8b2920:	e59d2014 	ldr	r2, [sp, #20]
  8b2924:	e5973000 	ldr	r3, [r7]
  8b2928:	e1520003 	cmp	r2, r3
  8b292c:	1a000001 	bne	8b2938 <ProcessFilter::filter(netflix::LogSink::Format&)@@Base+0x168>
  8b2930:	e28dd01c 	add	sp, sp, #28
  8b2934:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b2938:	ebe670d5 	bl	24ec94 <__stack_chk_fail@plt>
  8b293c:	00174914 	andseq	r4, r7, r4, lsl r9
  8b2940:	00003440 	andeq	r3, r0, r0, asr #8

008b2944 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base>:
  8b2944:	e59f3144 	ldr	r3, [pc, #324]	@ 8b2a90 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x14c>
  8b2948:	e59f2144 	ldr	r2, [pc, #324]	@ 8b2a94 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x150>
  8b294c:	e08f3003 	add	r3, pc, r3
  8b2950:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  8b2954:	e24dd00c 	sub	sp, sp, #12
  8b2958:	e7938002 	ldr	r8, [r3, r2]
  8b295c:	e1a07000 	mov	r7, r0
  8b2960:	e1a04001 	mov	r4, r1
  8b2964:	e3a06000 	mov	r6, #0
  8b2968:	e5983000 	ldr	r3, [r8]
  8b296c:	e58d3004 	str	r3, [sp, #4]
  8b2970:	ebe677c3 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b2974:	e284e004 	add	lr, r4, #4
  8b2978:	e287c004 	add	ip, r7, #4
  8b297c:	e5949028 	ldr	r9, [r4, #40]	@ 0x28
  8b2980:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8b2984:	e5945024 	ldr	r5, [r4, #36]	@ 0x24
  8b2988:	e0655009 	rsb	r5, r5, r9
  8b298c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8b2990:	e1b05145 	asrs	r5, r5, #2
  8b2994:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8b2998:	01a09005 	moveq	r9, r5
  8b299c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8b29a0:	e5876024 	str	r6, [r7, #36]	@ 0x24
  8b29a4:	e5876028 	str	r6, [r7, #40]	@ 0x28
  8b29a8:	e587602c 	str	r6, [r7, #44]	@ 0x2c
  8b29ac:	1a000019 	bne	8b2a18 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xd4>
  8b29b0:	e0895005 	add	r5, r9, r5
  8b29b4:	e5879024 	str	r9, [r7, #36]	@ 0x24
  8b29b8:	e587502c 	str	r5, [r7, #44]	@ 0x2c
  8b29bc:	e5879028 	str	r9, [r7, #40]	@ 0x28
  8b29c0:	e5945024 	ldr	r5, [r4, #36]	@ 0x24
  8b29c4:	e5946028 	ldr	r6, [r4, #40]	@ 0x28
  8b29c8:	e1a04009 	mov	r4, r9
  8b29cc:	e1550006 	cmp	r5, r6
  8b29d0:	0a000008 	beq	8b29f8 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xb4>
  8b29d4:	e3540000 	cmp	r4, #0
  8b29d8:	0a000002 	beq	8b29e8 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xa4>
  8b29dc:	e1a00004 	mov	r0, r4
  8b29e0:	e1a01005 	mov	r1, r5
  8b29e4:	ebe677a6 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b29e8:	e2855004 	add	r5, r5, #4
  8b29ec:	e2844004 	add	r4, r4, #4
  8b29f0:	e1560005 	cmp	r6, r5
  8b29f4:	1afffff6 	bne	8b29d4 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x90>
  8b29f8:	e59d2004 	ldr	r2, [sp, #4]
  8b29fc:	e1a00007 	mov	r0, r7
  8b2a00:	e5983000 	ldr	r3, [r8]
  8b2a04:	e5874028 	str	r4, [r7, #40]	@ 0x28
  8b2a08:	e1520003 	cmp	r2, r3
  8b2a0c:	1a00000e 	bne	8b2a4c <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x108>
  8b2a10:	e28dd00c 	add	sp, sp, #12
  8b2a14:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  8b2a18:	e3750107 	cmn	r5, #-1073741823	@ 0xc0000001
  8b2a1c:	8a000004 	bhi	8b2a34 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xf0>
  8b2a20:	e1a05105 	lsl	r5, r5, #2
  8b2a24:	e1a00005 	mov	r0, r5
  8b2a28:	ebe670a8 	bl	24ecd0 <operator new(unsigned int)@plt>
  8b2a2c:	e1a09000 	mov	r9, r0
  8b2a30:	eaffffde 	b	8b29b0 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x6c>
  8b2a34:	ebe67dcb 	bl	252168 <std::__throw_bad_alloc()@plt>
  8b2a38:	e5970000 	ldr	r0, [r7]
  8b2a3c:	e1a0100d 	mov	r1, sp
  8b2a40:	e240000c 	sub	r0, r0, #12
  8b2a44:	ebe674d3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2a48:	ebe67577 	bl	25002c <__cxa_end_cleanup@plt>
  8b2a4c:	ebe67090 	bl	24ec94 <__stack_chk_fail@plt>
  8b2a50:	ebe67122 	bl	24eee0 <__cxa_begin_catch@plt>
  8b2a54:	e1590004 	cmp	r9, r4
  8b2a58:	0a000005 	beq	8b2a74 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x130>
  8b2a5c:	e4990004 	ldr	r0, [r9], #4
  8b2a60:	e1a0100d 	mov	r1, sp
  8b2a64:	e240000c 	sub	r0, r0, #12
  8b2a68:	ebe674ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2a6c:	e1540009 	cmp	r4, r9
  8b2a70:	1afffff9 	bne	8b2a5c <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0x118>
  8b2a74:	ebe67524 	bl	24ff0c <__cxa_rethrow@plt>
  8b2a78:	ebe67be6 	bl	251a18 <__cxa_end_catch@plt>
  8b2a7c:	e5970024 	ldr	r0, [r7, #36]	@ 0x24
  8b2a80:	e3500000 	cmp	r0, #0
  8b2a84:	0affffeb 	beq	8b2a38 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xf4>
  8b2a88:	ebe67600 	bl	250290 <operator delete(void*)@plt>
  8b2a8c:	eaffffe9 	b	8b2a38 <netflix::LogSink::Format::Format(netflix::LogSink::Format const&)@@Base+0xf4>
  8b2a90:	001747b4 			@ <UNDEFINED> instruction: 0x001747b4
  8b2a94:	00003440 	andeq	r3, r0, r0, asr #8

008b2a98 <netflix::LogSink::Format::defaultFlags()@@Base>:
  8b2a98:	e59fc094 	ldr	ip, [pc, #148]	@ 8b2b34 <netflix::LogSink::Format::defaultFlags()@@Base+0x9c>
  8b2a9c:	e3a02000 	mov	r2, #0
  8b2aa0:	e59f1090 	ldr	r1, [pc, #144]	@ 8b2b38 <netflix::LogSink::Format::defaultFlags()@@Base+0xa0>
  8b2aa4:	e3a03000 	mov	r3, #0
  8b2aa8:	e08fc00c 	add	ip, pc, ip
  8b2aac:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8b2ab0:	e24dd00c 	sub	sp, sp, #12
  8b2ab4:	e79c1001 	ldr	r1, [ip, r1]
  8b2ab8:	e59fe07c 	ldr	lr, [pc, #124]	@ 8b2b3c <netflix::LogSink::Format::defaultFlags()@@Base+0xa4>
  8b2abc:	e1c020f0 	strd	r2, [r0]
  8b2ac0:	e5913000 	ldr	r3, [r1]
  8b2ac4:	e58d3004 	str	r3, [sp, #4]
  8b2ac8:	e79c300e 	ldr	r3, [ip, lr]
  8b2acc:	e5d33000 	ldrb	r3, [r3]
  8b2ad0:	e3530000 	cmp	r3, #0
  8b2ad4:	13a02001 	movne	r2, #1
  8b2ad8:	13a03000 	movne	r3, #0
  8b2adc:	11c020f0 	strdne	r2, [r0]
  8b2ae0:	e59f3058 	ldr	r3, [pc, #88]	@ 8b2b40 <netflix::LogSink::Format::defaultFlags()@@Base+0xa8>
  8b2ae4:	e79c3003 	ldr	r3, [ip, r3]
  8b2ae8:	e5d33000 	ldrb	r3, [r3]
  8b2aec:	e3530000 	cmp	r3, #0
  8b2af0:	11c020d0 	ldrdne	r2, [r0]
  8b2af4:	13822002 	orrne	r2, r2, #2
  8b2af8:	11c020f0 	strdne	r2, [r0]
  8b2afc:	e59f3040 	ldr	r3, [pc, #64]	@ 8b2b44 <netflix::LogSink::Format::defaultFlags()@@Base+0xac>
  8b2b00:	e79c3003 	ldr	r3, [ip, r3]
  8b2b04:	e5d33000 	ldrb	r3, [r3]
  8b2b08:	e3530000 	cmp	r3, #0
  8b2b0c:	11c020d0 	ldrdne	r2, [r0]
  8b2b10:	13822004 	orrne	r2, r2, #4
  8b2b14:	11c020f0 	strdne	r2, [r0]
  8b2b18:	e59d2004 	ldr	r2, [sp, #4]
  8b2b1c:	e5913000 	ldr	r3, [r1]
  8b2b20:	e1520003 	cmp	r2, r3
  8b2b24:	1a000001 	bne	8b2b30 <netflix::LogSink::Format::defaultFlags()@@Base+0x98>
  8b2b28:	e28dd00c 	add	sp, sp, #12
  8b2b2c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8b2b30:	ebe67057 	bl	24ec94 <__stack_chk_fail@plt>
  8b2b34:	00174658 	andseq	r4, r7, r8, asr r6
  8b2b38:	00003440 	andeq	r3, r0, r0, asr #8
  8b2b3c:	00002704 	andeq	r2, r0, r4, lsl #14
  8b2b40:	00002438 	andeq	r2, r0, r8, lsr r4
  8b2b44:	00002294 	muleq	r0, r4, r2

008b2b48 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  8b2b48:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8b2b4c:	e24dd054 	sub	sp, sp, #84	@ 0x54
  8b2b50:	e59fb434 	ldr	fp, [pc, #1076]	@ 8b2f8c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x444>
  8b2b54:	e1a05001 	mov	r5, r1
  8b2b58:	e59f2430 	ldr	r2, [pc, #1072]	@ 8b2f90 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x448>
  8b2b5c:	e08fb00b 	add	fp, pc, fp
  8b2b60:	e59f342c 	ldr	r3, [pc, #1068]	@ 8b2f94 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x44c>
  8b2b64:	e5910010 	ldr	r0, [r1, #16]
  8b2b68:	e79b2002 	ldr	r2, [fp, r2]
  8b2b6c:	e5911014 	ldr	r1, [r1, #20]
  8b2b70:	e58d2008 	str	r2, [sp, #8]
  8b2b74:	e0601001 	rsb	r1, r0, r1
  8b2b78:	e5922000 	ldr	r2, [r2]
  8b2b7c:	e3510007 	cmp	r1, #7
  8b2b80:	e58d204c 	str	r2, [sp, #76]	@ 0x4c
  8b2b84:	e79b3003 	ldr	r3, [fp, r3]
  8b2b88:	e58d300c 	str	r3, [sp, #12]
  8b2b8c:	e283300c 	add	r3, r3, #12
  8b2b90:	e58d3018 	str	r3, [sp, #24]
  8b2b94:	e58d301c 	str	r3, [sp, #28]
  8b2b98:	9a0000d7 	bls	8b2efc <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3b4>
  8b2b9c:	e59f73f4 	ldr	r7, [pc, #1012]	@ 8b2f98 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x450>
  8b2ba0:	e3a09000 	mov	r9, #0
  8b2ba4:	e28d101c 	add	r1, sp, #28
  8b2ba8:	e28da018 	add	sl, sp, #24
  8b2bac:	e08f7007 	add	r7, pc, r7
  8b2bb0:	e58d1004 	str	r1, [sp, #4]
  8b2bb4:	e1a08009 	mov	r8, r9
  8b2bb8:	e3a04001 	mov	r4, #1
  8b2bbc:	ea00000d 	b	8b2bf8 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xb0>
  8b2bc0:	e59d3018 	ldr	r3, [sp, #24]
  8b2bc4:	e5951010 	ldr	r1, [r5, #16]
  8b2bc8:	e513300c 	ldr	r3, [r3, #-12]
  8b2bcc:	e3530000 	cmp	r3, #0
  8b2bd0:	1a000010 	bne	8b2c18 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xd0>
  8b2bd4:	e1a0000a 	mov	r0, sl
  8b2bd8:	e0811006 	add	r1, r1, r6
  8b2bdc:	ebe679ad 	bl	251298 <std::string::assign(std::string const&)@plt>
  8b2be0:	e5950010 	ldr	r0, [r5, #16]
  8b2be4:	e2844001 	add	r4, r4, #1
  8b2be8:	e5953014 	ldr	r3, [r5, #20]
  8b2bec:	e0603003 	rsb	r3, r0, r3
  8b2bf0:	e1540143 	cmp	r4, r3, asr #2
  8b2bf4:	2a00000c 	bcs	8b2c2c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xe4>
  8b2bf8:	e1a06104 	lsl	r6, r4, #2
  8b2bfc:	e1a01007 	mov	r1, r7
  8b2c00:	e0800006 	add	r0, r0, r6
  8b2c04:	ebe67964 	bl	25119c <std::string::compare(char const*) const@plt>
  8b2c08:	e3500000 	cmp	r0, #0
  8b2c0c:	1affffeb 	bne	8b2bc0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x78>
  8b2c10:	e3a08001 	mov	r8, #1
  8b2c14:	eafffff1 	b	8b2be0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x98>
  8b2c18:	e28d001c 	add	r0, sp, #28
  8b2c1c:	e0811006 	add	r1, r1, r6
  8b2c20:	ebe6799c 	bl	251298 <std::string::assign(std::string const&)@plt>
  8b2c24:	e3a09001 	mov	r9, #1
  8b2c28:	eaffffec 	b	8b2be0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x98>
  8b2c2c:	e59d3018 	ldr	r3, [sp, #24]
  8b2c30:	e513300c 	ldr	r3, [r3, #-12]
  8b2c34:	e3530000 	cmp	r3, #0
  8b2c38:	0a000042 	beq	8b2d48 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x200>
  8b2c3c:	e3590000 	cmp	r9, #0
  8b2c40:	0a000040 	beq	8b2d48 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x200>
  8b2c44:	e59f1350 	ldr	r1, [pc, #848]	@ 8b2f9c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x454>
  8b2c48:	e28d0020 	add	r0, sp, #32
  8b2c4c:	e28d2018 	add	r2, sp, #24
  8b2c50:	e3a03000 	mov	r3, #0
  8b2c54:	e08f1001 	add	r1, pc, r1
  8b2c58:	e58d303c 	str	r3, [sp, #60]	@ 0x3c
  8b2c5c:	e58d3040 	str	r3, [sp, #64]	@ 0x40
  8b2c60:	e58d3044 	str	r3, [sp, #68]	@ 0x44
  8b2c64:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  8b2c68:	ebe73b66 	bl	281a08 <std::basic_string<char, std::char_traits<char>, std::allocator<char> > std::operator+<char, std::char_traits<char>, std::allocator<char> >(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)@@Base>
  8b2c6c:	e59d0020 	ldr	r0, [sp, #32]
  8b2c70:	e28d5030 	add	r5, sp, #48	@ 0x30
  8b2c74:	ebe675bb 	bl	250368 <strdup@plt>
  8b2c78:	e59d3020 	ldr	r3, [sp, #32]
  8b2c7c:	e1a01005 	mov	r1, r5
  8b2c80:	e58d0040 	str	r0, [sp, #64]	@ 0x40
  8b2c84:	e243000c 	sub	r0, r3, #12
  8b2c88:	ebe67442 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2c8c:	e59d001c 	ldr	r0, [sp, #28]
  8b2c90:	ebe675b4 	bl	250368 <strdup@plt>
  8b2c94:	e59f3304 	ldr	r3, [pc, #772]	@ 8b2fa0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x458>
  8b2c98:	e3a01003 	mov	r1, #3
  8b2c9c:	e28d203c 	add	r2, sp, #60	@ 0x3c
  8b2ca0:	e58d0044 	str	r0, [sp, #68]	@ 0x44
  8b2ca4:	e79b4003 	ldr	r4, [fp, r3]
  8b2ca8:	e5940000 	ldr	r0, [r4]
  8b2cac:	e5903000 	ldr	r3, [r0]
  8b2cb0:	e5933010 	ldr	r3, [r3, #16]
  8b2cb4:	e12fff33 	blx	r3
  8b2cb8:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  8b2cbc:	ebe672b5 	bl	24f798 <free@plt>
  8b2cc0:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  8b2cc4:	ebe672b3 	bl	24f798 <free@plt>
  8b2cc8:	e3580000 	cmp	r8, #0
  8b2ccc:	1a000022 	bne	8b2d5c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x214>
  8b2cd0:	e5941000 	ldr	r1, [r4]
  8b2cd4:	e1a00005 	mov	r0, r5
  8b2cd8:	e5913000 	ldr	r3, [r1]
  8b2cdc:	e5933014 	ldr	r3, [r3, #20]
  8b2ce0:	e12fff33 	blx	r3
  8b2ce4:	e59d4030 	ldr	r4, [sp, #48]	@ 0x30
  8b2ce8:	e28d7024 	add	r7, sp, #36	@ 0x24
  8b2cec:	e59da034 	ldr	sl, [sp, #52]	@ 0x34
  8b2cf0:	e28d8020 	add	r8, sp, #32
  8b2cf4:	e59f92a8 	ldr	r9, [pc, #680]	@ 8b2fa4 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x45c>
  8b2cf8:	e154000a 	cmp	r4, sl
  8b2cfc:	e08f9009 	add	r9, pc, r9
  8b2d00:	1a00005b 	bne	8b2e74 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x32c>
  8b2d04:	e1a00005 	mov	r0, r5
  8b2d08:	ebe6ded5 	bl	26a864 <std::vector<netflix::ConfigurationOption, std::allocator<netflix::ConfigurationOption> >::~vector()@@Base>
  8b2d0c:	e59d001c 	ldr	r0, [sp, #28]
  8b2d10:	e1a01005 	mov	r1, r5
  8b2d14:	e240000c 	sub	r0, r0, #12
  8b2d18:	ebe6741e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2d1c:	e59d0018 	ldr	r0, [sp, #24]
  8b2d20:	e1a01005 	mov	r1, r5
  8b2d24:	e240000c 	sub	r0, r0, #12
  8b2d28:	ebe6741a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2d2c:	e59dc008 	ldr	ip, [sp, #8]
  8b2d30:	e59d204c 	ldr	r2, [sp, #76]	@ 0x4c
  8b2d34:	e59c3000 	ldr	r3, [ip]
  8b2d38:	e1520003 	cmp	r2, r3
  8b2d3c:	1a000080 	bne	8b2f44 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3fc>
  8b2d40:	e28dd054 	add	sp, sp, #84	@ 0x54
  8b2d44:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b2d48:	e59f3250 	ldr	r3, [pc, #592]	@ 8b2fa0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x458>
  8b2d4c:	e3580000 	cmp	r8, #0
  8b2d50:	e28d5030 	add	r5, sp, #48	@ 0x30
  8b2d54:	e79b4003 	ldr	r4, [fp, r3]
  8b2d58:	0affffdc 	beq	8b2cd0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x188>
  8b2d5c:	e59d3018 	ldr	r3, [sp, #24]
  8b2d60:	e513300c 	ldr	r3, [r3, #-12]
  8b2d64:	e3530000 	cmp	r3, #0
  8b2d68:	1affffd8 	bne	8b2cd0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x188>
  8b2d6c:	e5941000 	ldr	r1, [r4]
  8b2d70:	e1a00005 	mov	r0, r5
  8b2d74:	e59d200c 	ldr	r2, [sp, #12]
  8b2d78:	e282300c 	add	r3, r2, #12
  8b2d7c:	e58d3020 	str	r3, [sp, #32]
  8b2d80:	e5913000 	ldr	r3, [r1]
  8b2d84:	e5933014 	ldr	r3, [r3, #20]
  8b2d88:	e12fff33 	blx	r3
  8b2d8c:	e28d8024 	add	r8, sp, #36	@ 0x24
  8b2d90:	e1a01005 	mov	r1, r5
  8b2d94:	e1a00008 	mov	r0, r8
  8b2d98:	ebffb1c1 	bl	89f4a4 <netflix::Configuration::arguments(std::vector<netflix::ConfigurationOption, std::allocator<netflix::ConfigurationOption> > const&)@@Base>
  8b2d9c:	e1a00005 	mov	r0, r5
  8b2da0:	ebe6deaf 	bl	26a864 <std::vector<netflix::ConfigurationOption, std::allocator<netflix::ConfigurationOption> >::~vector()@@Base>
  8b2da4:	e59d2028 	ldr	r2, [sp, #40]	@ 0x28
  8b2da8:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  8b2dac:	e0612002 	rsb	r2, r1, r2
  8b2db0:	e1b02122 	lsrs	r2, r2, #2
  8b2db4:	0a000015 	beq	8b2e10 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2c8>
  8b2db8:	e59f71e8 	ldr	r7, [pc, #488]	@ 8b2fa8 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x460>
  8b2dbc:	e28d6020 	add	r6, sp, #32
  8b2dc0:	e3a04000 	mov	r4, #0
  8b2dc4:	e08f7007 	add	r7, pc, r7
  8b2dc8:	e59d2020 	ldr	r2, [sp, #32]
  8b2dcc:	e512200c 	ldr	r2, [r2, #-12]
  8b2dd0:	e3520000 	cmp	r2, #0
  8b2dd4:	0a000004 	beq	8b2dec <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2a4>
  8b2dd8:	e1a00006 	mov	r0, r6
  8b2ddc:	e1a01007 	mov	r1, r7
  8b2de0:	e3a02001 	mov	r2, #1
  8b2de4:	ebe670c7 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  8b2de8:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  8b2dec:	e0811104 	add	r1, r1, r4, lsl #2
  8b2df0:	e1a00006 	mov	r0, r6
  8b2df4:	ebe67ca2 	bl	252084 <std::string::append(std::string const&)@plt>
  8b2df8:	e59d2028 	ldr	r2, [sp, #40]	@ 0x28
  8b2dfc:	e2844001 	add	r4, r4, #1
  8b2e00:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  8b2e04:	e0612002 	rsb	r2, r1, r2
  8b2e08:	e1540142 	cmp	r4, r2, asr #2
  8b2e0c:	3affffed 	bcc	8b2dc8 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x280>
  8b2e10:	e59f3194 	ldr	r3, [pc, #404]	@ 8b2fac <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x464>
  8b2e14:	e59f1194 	ldr	r1, [pc, #404]	@ 8b2fb0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x468>
  8b2e18:	e59d2020 	ldr	r2, [sp, #32]
  8b2e1c:	e08f1001 	add	r1, pc, r1
  8b2e20:	e79b0003 	ldr	r0, [fp, r3]
  8b2e24:	eb00f2d6 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8b2e28:	e1a00008 	mov	r0, r8
  8b2e2c:	ebe73a2a 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8b2e30:	e59d0020 	ldr	r0, [sp, #32]
  8b2e34:	e1a01005 	mov	r1, r5
  8b2e38:	e240000c 	sub	r0, r0, #12
  8b2e3c:	ebe673d5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2e40:	eaffffb1 	b	8b2d0c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1c4>
  8b2e44:	e5941004 	ldr	r1, [r4, #4]
  8b2e48:	e511200c 	ldr	r2, [r1, #-12]
  8b2e4c:	e1560002 	cmp	r6, r2
  8b2e50:	0a00001d 	beq	8b2ecc <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x384>
  8b2e54:	e5d42000 	ldrb	r2, [r4]
  8b2e58:	e3520000 	cmp	r2, #0
  8b2e5c:	0a000001 	beq	8b2e68 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x320>
  8b2e60:	e3560001 	cmp	r6, #1
  8b2e64:	0a000020 	beq	8b2eec <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3a4>
  8b2e68:	e2844020 	add	r4, r4, #32
  8b2e6c:	e154000a 	cmp	r4, sl
  8b2e70:	0affffa3 	beq	8b2d04 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1bc>
  8b2e74:	e5943018 	ldr	r3, [r4, #24]
  8b2e78:	e3530000 	cmp	r3, #0
  8b2e7c:	0afffff9 	beq	8b2e68 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x320>
  8b2e80:	e59d3018 	ldr	r3, [sp, #24]
  8b2e84:	e513600c 	ldr	r6, [r3, #-12]
  8b2e88:	e3560000 	cmp	r6, #0
  8b2e8c:	1affffec 	bne	8b2e44 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2fc>
  8b2e90:	e1a00007 	mov	r0, r7
  8b2e94:	e1a01004 	mov	r1, r4
  8b2e98:	e3a02000 	mov	r2, #0
  8b2e9c:	ebffab28 	bl	89db44 <netflix::ConfigurationOption::dump(bool) const@@Base>
  8b2ea0:	e59f3104 	ldr	r3, [pc, #260]	@ 8b2fac <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x464>
  8b2ea4:	e1a01009 	mov	r1, r9
  8b2ea8:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  8b2eac:	e79b0003 	ldr	r0, [fp, r3]
  8b2eb0:	eb00f2b3 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8b2eb4:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8b2eb8:	e1a01008 	mov	r1, r8
  8b2ebc:	e240000c 	sub	r0, r0, #12
  8b2ec0:	ebe673b4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2ec4:	e59da034 	ldr	sl, [sp, #52]	@ 0x34
  8b2ec8:	eaffffe6 	b	8b2e68 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x320>
  8b2ecc:	e1a00003 	mov	r0, r3
  8b2ed0:	e1a02006 	mov	r2, r6
  8b2ed4:	e58d3000 	str	r3, [sp]
  8b2ed8:	ebe67837 	bl	250fbc <memcmp@plt>
  8b2edc:	e59d3000 	ldr	r3, [sp]
  8b2ee0:	e3500000 	cmp	r0, #0
  8b2ee4:	1affffda 	bne	8b2e54 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x30c>
  8b2ee8:	eaffffe8 	b	8b2e90 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x348>
  8b2eec:	e5d33000 	ldrb	r3, [r3]
  8b2ef0:	e1530002 	cmp	r3, r2
  8b2ef4:	1affffdb 	bne	8b2e68 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x320>
  8b2ef8:	eaffffe4 	b	8b2e90 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x348>
  8b2efc:	e59f309c 	ldr	r3, [pc, #156]	@ 8b2fa0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x458>
  8b2f00:	e28d5030 	add	r5, sp, #48	@ 0x30
  8b2f04:	e79b4003 	ldr	r4, [fp, r3]
  8b2f08:	eaffff70 	b	8b2cd0 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x188>
  8b2f0c:	e1a00005 	mov	r0, r5
  8b2f10:	e28d4014 	add	r4, sp, #20
  8b2f14:	ebe6de52 	bl	26a864 <std::vector<netflix::ConfigurationOption, std::allocator<netflix::ConfigurationOption> >::~vector()@@Base>
  8b2f18:	e59d001c 	ldr	r0, [sp, #28]
  8b2f1c:	e1a01004 	mov	r1, r4
  8b2f20:	e240000c 	sub	r0, r0, #12
  8b2f24:	ebe6739b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2f28:	e59d0018 	ldr	r0, [sp, #24]
  8b2f2c:	e1a01004 	mov	r1, r4
  8b2f30:	e240000c 	sub	r0, r0, #12
  8b2f34:	ebe67397 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2f38:	ebe6743b 	bl	25002c <__cxa_end_cleanup@plt>
  8b2f3c:	e28d4014 	add	r4, sp, #20
  8b2f40:	eafffff4 	b	8b2f18 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3d0>
  8b2f44:	ebe66f52 	bl	24ec94 <__stack_chk_fail@plt>
  8b2f48:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8b2f4c:	e28d1020 	add	r1, sp, #32
  8b2f50:	e240000c 	sub	r0, r0, #12
  8b2f54:	ebe6738f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2f58:	eaffffeb 	b	8b2f0c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3c4>
  8b2f5c:	e59d0020 	ldr	r0, [sp, #32]
  8b2f60:	e28d4014 	add	r4, sp, #20
  8b2f64:	e240000c 	sub	r0, r0, #12
  8b2f68:	e1a01004 	mov	r1, r4
  8b2f6c:	ebe67389 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b2f70:	eaffffe8 	b	8b2f18 <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3d0>
  8b2f74:	e1a00005 	mov	r0, r5
  8b2f78:	ebe6de39 	bl	26a864 <std::vector<netflix::ConfigurationOption, std::allocator<netflix::ConfigurationOption> >::~vector()@@Base>
  8b2f7c:	eafffff6 	b	8b2f5c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x414>
  8b2f80:	e1a00008 	mov	r0, r8
  8b2f84:	ebe739d4 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8b2f88:	eafffff3 	b	8b2f5c <CommandLineCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x414>
  8b2f8c:	001745a4 	andseq	r4, r7, r4, lsr #11
  8b2f90:	00003440 	andeq	r3, r0, r0, asr #8
  8b2f94:	00002278 	andeq	r2, r0, r8, ror r2
  8b2f98:	00093cb0 			@ <UNDEFINED> instruction: 0x00093cb0
  8b2f9c:	00091534 	andeq	r1, r9, r4, lsr r5
  8b2fa0:	000037dc 	ldrdeq	r3, [r0], -ip
  8b2fa4:	000e0fc8 	andeq	r0, lr, r8, asr #31
  8b2fa8:	000e67ec 	andeq	r6, lr, ip, ror #15
  8b2fac:	00001b7c 	andeq	r1, r0, ip, ror fp
  8b2fb0:	000e750c 	andeq	r7, lr, ip, lsl #10

008b2fb4 <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base>:
  8b2fb4:	e59f20e0 	ldr	r2, [pc, #224]	@ 8b309c <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0xe8>
  8b2fb8:	e2813030 	add	r3, r1, #48	@ 0x30
  8b2fbc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  8b2fc0:	e1a08000 	mov	r8, r0
  8b2fc4:	e59f00d4 	ldr	r0, [pc, #212]	@ 8b30a0 <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0xec>
  8b2fc8:	e08f2002 	add	r2, pc, r2
  8b2fcc:	e5984004 	ldr	r4, [r8, #4]
  8b2fd0:	e24dd00c 	sub	sp, sp, #12
  8b2fd4:	e1a07001 	mov	r7, r1
  8b2fd8:	e7929000 	ldr	r9, [r2, r0]
  8b2fdc:	e1530004 	cmp	r3, r4
  8b2fe0:	e5992000 	ldr	r2, [r9]
  8b2fe4:	e58d2004 	str	r2, [sp, #4]
  8b2fe8:	0a00001b 	beq	8b305c <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0xa8>
  8b2fec:	e0633004 	rsb	r3, r3, r4
  8b2ff0:	e1a03243 	asr	r3, r3, #4
  8b2ff4:	e0835103 	add	r5, r3, r3, lsl #2
  8b2ff8:	e0855205 	add	r5, r5, r5, lsl #4
  8b2ffc:	e0855405 	add	r5, r5, r5, lsl #8
  8b3000:	e0855805 	add	r5, r5, r5, lsl #16
  8b3004:	e0835085 	add	r5, r3, r5, lsl #1
  8b3008:	e3550000 	cmp	r5, #0
  8b300c:	da000012 	ble	8b305c <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0xa8>
  8b3010:	e2814024 	add	r4, r1, #36	@ 0x24
  8b3014:	ea000000 	b	8b301c <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0x68>
  8b3018:	e1a04006 	mov	r4, r6
  8b301c:	e284100c 	add	r1, r4, #12
  8b3020:	e2440024 	sub	r0, r4, #36	@ 0x24
  8b3024:	ebe6789b 	bl	251298 <std::string::assign(std::string const&)@plt>
  8b3028:	e284e010 	add	lr, r4, #16
  8b302c:	e244c020 	sub	ip, r4, #32
  8b3030:	e2846030 	add	r6, r4, #48	@ 0x30
  8b3034:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8b3038:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8b303c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8b3040:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8b3044:	e1a00004 	mov	r0, r4
  8b3048:	e1a01006 	mov	r1, r6
  8b304c:	ebe823e0 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  8b3050:	e2555001 	subs	r5, r5, #1
  8b3054:	1affffef 	bne	8b3018 <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0x64>
  8b3058:	e5984004 	ldr	r4, [r8, #4]
  8b305c:	e2443030 	sub	r3, r4, #48	@ 0x30
  8b3060:	e244000c 	sub	r0, r4, #12
  8b3064:	e5883004 	str	r3, [r8, #4]
  8b3068:	ebe7399b 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8b306c:	e5140030 	ldr	r0, [r4, #-48]	@ 0xffffffd0
  8b3070:	e1a0100d 	mov	r1, sp
  8b3074:	e240000c 	sub	r0, r0, #12
  8b3078:	ebe67346 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b307c:	e59d2004 	ldr	r2, [sp, #4]
  8b3080:	e5993000 	ldr	r3, [r9]
  8b3084:	e1a00007 	mov	r0, r7
  8b3088:	e1520003 	cmp	r2, r3
  8b308c:	1a000001 	bne	8b3098 <std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> >::erase(__gnu_cxx::__normal_iterator<netflix::LogSink::Format*, std::vector<netflix::LogSink::Format, std::allocator<netflix::LogSink::Format> > >)@@Base+0xe4>
  8b3090:	e28dd00c 	add	sp, sp, #12
  8b3094:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  8b3098:	ebe66efd 	bl	24ec94 <__stack_chk_fail@plt>
  8b309c:	00174138 	andseq	r4, r7, r8, lsr r1
  8b30a0:	00003440 	andeq	r3, r0, r0, asr #8

008b30a4 <TailFilter::filter(netflix::LogSink::Format&)@@Base>:
  8b30a4:	e59f30ec 	ldr	r3, [pc, #236]	@ 8b3198 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0xf4>
  8b30a8:	e59f20ec 	ldr	r2, [pc, #236]	@ 8b319c <TailFilter::filter(netflix::LogSink::Format&)@@Base+0xf8>
  8b30ac:	e08f3003 	add	r3, pc, r3
  8b30b0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  8b30b4:	e24dd00c 	sub	sp, sp, #12
  8b30b8:	e7937002 	ldr	r7, [r3, r2]
  8b30bc:	e1a04000 	mov	r4, r0
  8b30c0:	e5905010 	ldr	r5, [r0, #16]
  8b30c4:	e1a06001 	mov	r6, r1
  8b30c8:	e5973000 	ldr	r3, [r7]
  8b30cc:	e3550000 	cmp	r5, #0
  8b30d0:	e58d3004 	str	r3, [sp, #4]
  8b30d4:	0a00000e 	beq	8b3114 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0x70>
  8b30d8:	e5909014 	ldr	r9, [r0, #20]
  8b30dc:	e590000c 	ldr	r0, [r0, #12]
  8b30e0:	e1a01009 	mov	r1, r9
  8b30e4:	e2800001 	add	r0, r0, #1
  8b30e8:	ebe67ada 	bl	251c58 <__aeabi_uidivmod@plt>
  8b30ec:	e5943008 	ldr	r3, [r4, #8]
  8b30f0:	e1510003 	cmp	r1, r3
  8b30f4:	e1a08001 	mov	r8, r1
  8b30f8:	e584100c 	str	r1, [r4, #12]
  8b30fc:	0a00001d 	beq	8b3178 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0xd4>
  8b3100:	e0818081 	add	r8, r1, r1, lsl #1
  8b3104:	e2855001 	add	r5, r5, #1
  8b3108:	e5845010 	str	r5, [r4, #16]
  8b310c:	e1a05208 	lsl	r5, r8, #4
  8b3110:	ea000003 	b	8b3124 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0x80>
  8b3114:	e3a03001 	mov	r3, #1
  8b3118:	e580500c 	str	r5, [r0, #12]
  8b311c:	e5805008 	str	r5, [r0, #8]
  8b3120:	e5803010 	str	r3, [r0, #16]
  8b3124:	e5943004 	ldr	r3, [r4, #4]
  8b3128:	e1a01006 	mov	r1, r6
  8b312c:	e0835005 	add	r5, r3, r5
  8b3130:	e1a00005 	mov	r0, r5
  8b3134:	ebe67857 	bl	251298 <std::string::assign(std::string const&)@plt>
  8b3138:	e286e004 	add	lr, r6, #4
  8b313c:	e285c004 	add	ip, r5, #4
  8b3140:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8b3144:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8b3148:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8b314c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8b3150:	e2850024 	add	r0, r5, #36	@ 0x24
  8b3154:	e2861024 	add	r1, r6, #36	@ 0x24
  8b3158:	ebe8239d 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  8b315c:	e59d2004 	ldr	r2, [sp, #4]
  8b3160:	e5973000 	ldr	r3, [r7]
  8b3164:	e3a00001 	mov	r0, #1
  8b3168:	e1520003 	cmp	r2, r3
  8b316c:	1a000008 	bne	8b3194 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0xf0>
  8b3170:	e28dd00c 	add	sp, sp, #12
  8b3174:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  8b3178:	e2880001 	add	r0, r8, #1
  8b317c:	e1a01009 	mov	r1, r9
  8b3180:	ebe67ab4 	bl	251c58 <__aeabi_uidivmod@plt>
  8b3184:	e0888088 	add	r8, r8, r8, lsl #1
  8b3188:	e1a05208 	lsl	r5, r8, #4
  8b318c:	e5841008 	str	r1, [r4, #8]
  8b3190:	eaffffe3 	b	8b3124 <TailFilter::filter(netflix::LogSink::Format&)@@Base+0x80>
  8b3194:	ebe66ebe 	bl	24ec94 <__stack_chk_fail@plt>
  8b3198:	00174054 	andseq	r4, r7, r4, asr r0
  8b319c:	00003440 	andeq	r3, r0, r0, asr #8

008b31a0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base>:
  8b31a0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8b31a4:	e24dd01c 	sub	sp, sp, #28
  8b31a8:	e59f4258 	ldr	r4, [pc, #600]	@ 8b3408 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x268>
  8b31ac:	e1a06000 	mov	r6, r0
  8b31b0:	e59f3254 	ldr	r3, [pc, #596]	@ 8b340c <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x26c>
  8b31b4:	e08f4004 	add	r4, pc, r4
  8b31b8:	e58d1004 	str	r1, [sp, #4]
  8b31bc:	e5902010 	ldr	r2, [r0, #16]
  8b31c0:	e7943003 	ldr	r3, [r4, r3]
  8b31c4:	e1510002 	cmp	r1, r2
  8b31c8:	e58d3008 	str	r3, [sp, #8]
  8b31cc:	e5933000 	ldr	r3, [r3]
  8b31d0:	e58d3014 	str	r3, [sp, #20]
  8b31d4:	0a000032 	beq	8b32a4 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x104>
  8b31d8:	e3510000 	cmp	r1, #0
  8b31dc:	e5909000 	ldr	r9, [r0]
  8b31e0:	1a000036 	bne	8b32c0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x120>
  8b31e4:	e59d3004 	ldr	r3, [sp, #4]
  8b31e8:	e5803000 	str	r3, [r0]
  8b31ec:	e580300c 	str	r3, [r0, #12]
  8b31f0:	e3590000 	cmp	r9, #0
  8b31f4:	0a000024 	beq	8b328c <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0xec>
  8b31f8:	e519b004 	ldr	fp, [r9, #-4]
  8b31fc:	e08bb08b 	add	fp, fp, fp, lsl #1
  8b3200:	e089320b 	add	r3, r9, fp, lsl #4
  8b3204:	e1590003 	cmp	r9, r3
  8b3208:	0a00001d 	beq	8b3284 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0xe4>
  8b320c:	e243a00c 	sub	sl, r3, #12
  8b3210:	e28d5010 	add	r5, sp, #16
  8b3214:	e1a07003 	mov	r7, r3
  8b3218:	e1a0b003 	mov	fp, r3
  8b321c:	e58d600c 	str	r6, [sp, #12]
  8b3220:	e2477030 	sub	r7, r7, #48	@ 0x30
  8b3224:	e06b8007 	rsb	r8, fp, r7
  8b3228:	e088200a 	add	r2, r8, sl
  8b322c:	e5926030 	ldr	r6, [r2, #48]	@ 0x30
  8b3230:	e5924034 	ldr	r4, [r2, #52]	@ 0x34
  8b3234:	e1560004 	cmp	r6, r4
  8b3238:	0a000005 	beq	8b3254 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0xb4>
  8b323c:	e4960004 	ldr	r0, [r6], #4
  8b3240:	e1a01005 	mov	r1, r5
  8b3244:	e240000c 	sub	r0, r0, #12
  8b3248:	ebe672d2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b324c:	e1540006 	cmp	r4, r6
  8b3250:	1afffff9 	bne	8b323c <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x9c>
  8b3254:	e088800a 	add	r8, r8, sl
  8b3258:	e5980030 	ldr	r0, [r8, #48]	@ 0x30
  8b325c:	e3500000 	cmp	r0, #0
  8b3260:	0a000000 	beq	8b3268 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0xc8>
  8b3264:	ebe67409 	bl	250290 <operator delete(void*)@plt>
  8b3268:	e5970000 	ldr	r0, [r7]
  8b326c:	e1a01005 	mov	r1, r5
  8b3270:	e240000c 	sub	r0, r0, #12
  8b3274:	ebe672c7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3278:	e1590007 	cmp	r9, r7
  8b327c:	1affffe7 	bne	8b3220 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x80>
  8b3280:	e59d600c 	ldr	r6, [sp, #12]
  8b3284:	e2490008 	sub	r0, r9, #8
  8b3288:	ebe66f5c 	bl	24f000 <operator delete[](void*)@plt>
  8b328c:	e59d1004 	ldr	r1, [sp, #4]
  8b3290:	e3a02000 	mov	r2, #0
  8b3294:	e596300c 	ldr	r3, [r6, #12]
  8b3298:	e5861010 	str	r1, [r6, #16]
  8b329c:	e2433001 	sub	r3, r3, #1
  8b32a0:	e986000c 	stmib	r6, {r2, r3}
  8b32a4:	e59d1008 	ldr	r1, [sp, #8]
  8b32a8:	e59d2014 	ldr	r2, [sp, #20]
  8b32ac:	e5913000 	ldr	r3, [r1]
  8b32b0:	e1520003 	cmp	r2, r3
  8b32b4:	1a000052 	bne	8b3404 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x264>
  8b32b8:	e28dd01c 	add	sp, sp, #28
  8b32bc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b32c0:	e35107aa 	cmp	r1, #44564480	@ 0x2a80000
  8b32c4:	90810081 	addls	r0, r1, r1, lsl #1
  8b32c8:	83e00000 	mvnhi	r0, #0
  8b32cc:	91a00200 	lslls	r0, r0, #4
  8b32d0:	92800008 	addls	r0, r0, #8
  8b32d4:	ebe66bef 	bl	24e298 <operator new[](unsigned int)@plt>
  8b32d8:	e59f3130 	ldr	r3, [pc, #304]	@ 8b3410 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x270>
  8b32dc:	e59d1004 	ldr	r1, [sp, #4]
  8b32e0:	e3a02030 	mov	r2, #48	@ 0x30
  8b32e4:	e3a0c000 	mov	ip, #0
  8b32e8:	e5801004 	str	r1, [r0, #4]
  8b32ec:	e280a008 	add	sl, r0, #8
  8b32f0:	e5802000 	str	r2, [r0]
  8b32f4:	e2801010 	add	r1, r0, #16
  8b32f8:	e794b003 	ldr	fp, [r4, r3]
  8b32fc:	e2802018 	add	r2, r0, #24
  8b3300:	e58d900c 	str	r9, [sp, #12]
  8b3304:	e280400c 	add	r4, r0, #12
  8b3308:	e59d9004 	ldr	r9, [sp, #4]
  8b330c:	e280e02c 	add	lr, r0, #44	@ 0x2c
  8b3310:	e28bb00c 	add	fp, fp, #12
  8b3314:	e1a0300c 	mov	r3, ip
  8b3318:	e0640001 	rsb	r0, r4, r1
  8b331c:	e0645002 	rsb	r5, r4, r2
  8b3320:	e28cc001 	add	ip, ip, #1
  8b3324:	e080800a 	add	r8, r0, sl
  8b3328:	e08e5005 	add	r5, lr, r5
  8b332c:	e080700e 	add	r7, r0, lr
  8b3330:	e15c0009 	cmp	ip, r9
  8b3334:	e508b004 	str	fp, [r8, #-4]
  8b3338:	e2811030 	add	r1, r1, #48	@ 0x30
  8b333c:	e5823010 	str	r3, [r2, #16]
  8b3340:	e582300c 	str	r3, [r2, #12]
  8b3344:	e2822030 	add	r2, r2, #48	@ 0x30
  8b3348:	e5023028 	str	r3, [r2, #-40]	@ 0xffffffd8
  8b334c:	e502302c 	str	r3, [r2, #-44]	@ 0xffffffd4
  8b3350:	e5013028 	str	r3, [r1, #-40]	@ 0xffffffd8
  8b3354:	e501302c 	str	r3, [r1, #-44]	@ 0xffffffd4
  8b3358:	e5023038 	str	r3, [r2, #-56]	@ 0xffffffc8
  8b335c:	e502303c 	str	r3, [r2, #-60]	@ 0xffffffc4
  8b3360:	e5073004 	str	r3, [r7, #-4]
  8b3364:	e780300e 	str	r3, [r0, lr]
  8b3368:	e5053004 	str	r3, [r5, #-4]
  8b336c:	1affffe9 	bne	8b3318 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x178>
  8b3370:	e596300c 	ldr	r3, [r6, #12]
  8b3374:	e59d2004 	ldr	r2, [sp, #4]
  8b3378:	e59d900c 	ldr	r9, [sp, #12]
  8b337c:	e1520003 	cmp	r2, r3
  8b3380:	e586a000 	str	sl, [r6]
  8b3384:	31a03002 	movcc	r3, r2
  8b3388:	e3530000 	cmp	r3, #0
  8b338c:	e586300c 	str	r3, [r6, #12]
  8b3390:	13a07000 	movne	r7, #0
  8b3394:	11a04007 	movne	r4, r7
  8b3398:	0affff94 	beq	8b31f0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x50>
  8b339c:	e5960004 	ldr	r0, [r6, #4]
  8b33a0:	e5961010 	ldr	r1, [r6, #16]
  8b33a4:	e0840000 	add	r0, r4, r0
  8b33a8:	e5965000 	ldr	r5, [r6]
  8b33ac:	ebe67a29 	bl	251c58 <__aeabi_uidivmod@plt>
  8b33b0:	e2844001 	add	r4, r4, #1
  8b33b4:	e0855007 	add	r5, r5, r7
  8b33b8:	e2877030 	add	r7, r7, #48	@ 0x30
  8b33bc:	e1a00005 	mov	r0, r5
  8b33c0:	e0811081 	add	r1, r1, r1, lsl #1
  8b33c4:	e0898201 	add	r8, r9, r1, lsl #4
  8b33c8:	e1a01008 	mov	r1, r8
  8b33cc:	ebe677b1 	bl	251298 <std::string::assign(std::string const&)@plt>
  8b33d0:	e288e004 	add	lr, r8, #4
  8b33d4:	e285c004 	add	ip, r5, #4
  8b33d8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8b33dc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8b33e0:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8b33e4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8b33e8:	e2881024 	add	r1, r8, #36	@ 0x24
  8b33ec:	e2850024 	add	r0, r5, #36	@ 0x24
  8b33f0:	ebe822f7 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  8b33f4:	e596300c 	ldr	r3, [r6, #12]
  8b33f8:	e1530004 	cmp	r3, r4
  8b33fc:	8affffe6 	bhi	8b339c <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x1fc>
  8b3400:	eaffff7a 	b	8b31f0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base+0x50>
  8b3404:	ebe66e22 	bl	24ec94 <__stack_chk_fail@plt>
  8b3408:	00173f4c 	andseq	r3, r7, ip, asr #30
  8b340c:	00003440 	andeq	r3, r0, r0, asr #8
  8b3410:	00002278 	andeq	r2, r0, r8, ror r2

008b3414 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base>:
  8b3414:	e59f3254 	ldr	r3, [pc, #596]	@ 8b3670 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x25c>
  8b3418:	e59f2254 	ldr	r2, [pc, #596]	@ 8b3674 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x260>
  8b341c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8b3420:	e08f3003 	add	r3, pc, r3
  8b3424:	e24dd034 	sub	sp, sp, #52	@ 0x34
  8b3428:	e591b000 	ldr	fp, [r1]
  8b342c:	e1a06001 	mov	r6, r1
  8b3430:	e5911004 	ldr	r1, [r1, #4]
  8b3434:	e58d0004 	str	r0, [sp, #4]
  8b3438:	e7932002 	ldr	r2, [r3, r2]
  8b343c:	e06b3001 	rsb	r3, fp, r1
  8b3440:	e1b03123 	lsrs	r3, r3, #2
  8b3444:	e5923000 	ldr	r3, [r2]
  8b3448:	e58d2014 	str	r2, [sp, #20]
  8b344c:	e58d302c 	str	r3, [sp, #44]	@ 0x2c
  8b3450:	0a000075 	beq	8b362c <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x218>
  8b3454:	e59f721c 	ldr	r7, [pc, #540]	@ 8b3678 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x264>
  8b3458:	e28d1018 	add	r1, sp, #24
  8b345c:	e28d201c 	add	r2, sp, #28
  8b3460:	e28d3020 	add	r3, sp, #32
  8b3464:	e08f7007 	add	r7, pc, r7
  8b3468:	e28da024 	add	sl, sp, #36	@ 0x24
  8b346c:	e58d1008 	str	r1, [sp, #8]
  8b3470:	e28d8028 	add	r8, sp, #40	@ 0x28
  8b3474:	e58d200c 	str	r2, [sp, #12]
  8b3478:	e3a04000 	mov	r4, #0
  8b347c:	e58d3010 	str	r3, [sp, #16]
  8b3480:	ea00000f 	b	8b34c4 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0xb0>
  8b3484:	e5963000 	ldr	r3, [r6]
  8b3488:	e3a0200a 	mov	r2, #10
  8b348c:	e2844001 	add	r4, r4, #1
  8b3490:	e0839009 	add	r9, r3, r9
  8b3494:	e5990004 	ldr	r0, [r9, #4]
  8b3498:	ebe678c5 	bl	2517b4 <strtol@plt>
  8b349c:	e59d2004 	ldr	r2, [sp, #4]
  8b34a0:	e1a01000 	mov	r1, r0
  8b34a4:	e2820004 	add	r0, r2, #4
  8b34a8:	ebffff3c 	bl	8b31a0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base>
  8b34ac:	e596b000 	ldr	fp, [r6]
  8b34b0:	e2844001 	add	r4, r4, #1
  8b34b4:	e5963004 	ldr	r3, [r6, #4]
  8b34b8:	e06b3003 	rsb	r3, fp, r3
  8b34bc:	e1540143 	cmp	r4, r3, asr #2
  8b34c0:	2a000059 	bcs	8b362c <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x218>
  8b34c4:	e1a09104 	lsl	r9, r4, #2
  8b34c8:	e1a01007 	mov	r1, r7
  8b34cc:	e08b5009 	add	r5, fp, r9
  8b34d0:	e1a00005 	mov	r0, r5
  8b34d4:	ebe67730 	bl	25119c <std::string::compare(char const*) const@plt>
  8b34d8:	e2501000 	subs	r1, r0, #0
  8b34dc:	0affffe8 	beq	8b3484 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x70>
  8b34e0:	e1a01007 	mov	r1, r7
  8b34e4:	e28d2018 	add	r2, sp, #24
  8b34e8:	e1a0000a 	mov	r0, sl
  8b34ec:	ebe67991 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  8b34f0:	e59d9024 	ldr	r9, [sp, #36]	@ 0x24
  8b34f4:	e79b1104 	ldr	r1, [fp, r4, lsl #2]
  8b34f8:	e1a00008 	mov	r0, r8
  8b34fc:	e28d201c 	add	r2, sp, #28
  8b3500:	e519b00c 	ldr	fp, [r9, #-12]
  8b3504:	ebe6798b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  8b3508:	e59d3028 	ldr	r3, [sp, #40]	@ 0x28
  8b350c:	e1a01009 	mov	r1, r9
  8b3510:	e1a0200b 	mov	r2, fp
  8b3514:	e1a00003 	mov	r0, r3
  8b3518:	e58d3000 	str	r3, [sp]
  8b351c:	ebe66d4c 	bl	24ea54 <strncmp@plt>
  8b3520:	e59d3000 	ldr	r3, [sp]
  8b3524:	e28d1020 	add	r1, sp, #32
  8b3528:	e1a09000 	mov	r9, r0
  8b352c:	e243000c 	sub	r0, r3, #12
  8b3530:	ebe67218 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3534:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8b3538:	e1a01008 	mov	r1, r8
  8b353c:	e240000c 	sub	r0, r0, #12
  8b3540:	ebe67214 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3544:	e3590000 	cmp	r9, #0
  8b3548:	e5953000 	ldr	r3, [r5]
  8b354c:	0a00000a 	beq	8b357c <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x168>
  8b3550:	e5d32000 	ldrb	r2, [r3]
  8b3554:	e352002d 	cmp	r2, #45	@ 0x2d
  8b3558:	0a00001d 	beq	8b35d4 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x1c0>
  8b355c:	e3a00000 	mov	r0, #0
  8b3560:	e59d1014 	ldr	r1, [sp, #20]
  8b3564:	e59d202c 	ldr	r2, [sp, #44]	@ 0x2c
  8b3568:	e5913000 	ldr	r3, [r1]
  8b356c:	e1520003 	cmp	r2, r3
  8b3570:	1a000032 	bne	8b3640 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x22c>
  8b3574:	e28dd034 	add	sp, sp, #52	@ 0x34
  8b3578:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b357c:	e513300c 	ldr	r3, [r3, #-12]
  8b3580:	e59d1004 	ldr	r1, [sp, #4]
  8b3584:	e3530001 	cmp	r3, #1
  8b3588:	e281b004 	add	fp, r1, #4
  8b358c:	9a000028 	bls	8b3634 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x220>
  8b3590:	e1a01005 	mov	r1, r5
  8b3594:	e3a02002 	mov	r2, #2
  8b3598:	e3e03000 	mvn	r3, #0
  8b359c:	e1a00008 	mov	r0, r8
  8b35a0:	ebe67a66 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  8b35a4:	e1a01009 	mov	r1, r9
  8b35a8:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8b35ac:	e3a0200a 	mov	r2, #10
  8b35b0:	ebe6787f 	bl	2517b4 <strtol@plt>
  8b35b4:	e1a01000 	mov	r1, r0
  8b35b8:	e1a0000b 	mov	r0, fp
  8b35bc:	ebfffef7 	bl	8b31a0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base>
  8b35c0:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8b35c4:	e1a0100a 	mov	r1, sl
  8b35c8:	e240000c 	sub	r0, r0, #12
  8b35cc:	ebe671f1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b35d0:	eaffffb5 	b	8b34ac <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x98>
  8b35d4:	e5d32001 	ldrb	r2, [r3, #1]
  8b35d8:	e2422030 	sub	r2, r2, #48	@ 0x30
  8b35dc:	e3520009 	cmp	r2, #9
  8b35e0:	8affffdd 	bhi	8b355c <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x148>
  8b35e4:	e513300c 	ldr	r3, [r3, #-12]
  8b35e8:	e59d2004 	ldr	r2, [sp, #4]
  8b35ec:	e3530000 	cmp	r3, #0
  8b35f0:	e2829004 	add	r9, r2, #4
  8b35f4:	0a00000e 	beq	8b3634 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x220>
  8b35f8:	e1a01005 	mov	r1, r5
  8b35fc:	e3a02001 	mov	r2, #1
  8b3600:	e3e03000 	mvn	r3, #0
  8b3604:	e1a00008 	mov	r0, r8
  8b3608:	ebe67a4c 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  8b360c:	e3a01000 	mov	r1, #0
  8b3610:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8b3614:	e3a0200a 	mov	r2, #10
  8b3618:	ebe67865 	bl	2517b4 <strtol@plt>
  8b361c:	e1a01000 	mov	r1, r0
  8b3620:	e1a00009 	mov	r0, r9
  8b3624:	ebfffedd 	bl	8b31a0 <netflix::CircularBuffer<netflix::LogSink::Format>::resize(unsigned int)@@Base>
  8b3628:	eaffffe4 	b	8b35c0 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x1ac>
  8b362c:	e3a00001 	mov	r0, #1
  8b3630:	eaffffca 	b	8b3560 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x14c>
  8b3634:	e59f0040 	ldr	r0, [pc, #64]	@ 8b367c <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x268>
  8b3638:	e08f0000 	add	r0, pc, r0
  8b363c:	ebe67331 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8b3640:	ebe66d93 	bl	24ec94 <__stack_chk_fail@plt>
  8b3644:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8b3648:	e28d1020 	add	r1, sp, #32
  8b364c:	e240000c 	sub	r0, r0, #12
  8b3650:	ebe671d0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3654:	ebe67274 	bl	25002c <__cxa_end_cleanup@plt>
  8b3658:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8b365c:	e1a0100a 	mov	r1, sl
  8b3660:	e240000c 	sub	r0, r0, #12
  8b3664:	ebe671cb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3668:	ebe6726f 	bl	25002c <__cxa_end_cleanup@plt>
  8b366c:	eafffff9 	b	8b3658 <TailFilter::init(std::vector<std::string, std::allocator<std::string> > const&)@@Base+0x244>
  8b3670:	00173ce0 	andseq	r3, r7, r0, ror #25
  8b3674:	00003440 	andeq	r3, r0, r0, asr #8
  8b3678:	000e6ed4 	ldrdeq	r6, [lr], -r4
  8b367c:	00091fa4 	andeq	r1, r9, r4, lsr #31

008b3680 <HeadFilter::filter(netflix::LogSink::Format&)@@Base>:
  8b3680:	e59f2088 	ldr	r2, [pc, #136]	@ 8b3710 <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x90>
  8b3684:	e92d4030 	push	{r4, r5, lr}
  8b3688:	e1a05000 	mov	r5, r0
  8b368c:	e59f0080 	ldr	r0, [pc, #128]	@ 8b3714 <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x94>
  8b3690:	e08f2002 	add	r2, pc, r2
  8b3694:	e5953004 	ldr	r3, [r5, #4]
  8b3698:	e24dd00c 	sub	sp, sp, #12
  8b369c:	e7924000 	ldr	r4, [r2, r0]
  8b36a0:	e3530000 	cmp	r3, #0
  8b36a4:	03a00001 	moveq	r0, #1
  8b36a8:	e5942000 	ldr	r2, [r4]
  8b36ac:	e58d2004 	str	r2, [sp, #4]
  8b36b0:	0a000008 	beq	8b36d8 <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x58>
  8b36b4:	e591c024 	ldr	ip, [r1, #36]	@ 0x24
  8b36b8:	e5912028 	ldr	r2, [r1, #40]	@ 0x28
  8b36bc:	e06c0002 	rsb	r0, ip, r2
  8b36c0:	e1a00140 	asr	r0, r0, #2
  8b36c4:	e1530000 	cmp	r3, r0
  8b36c8:	3a000008 	bcc	8b36f0 <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x70>
  8b36cc:	e0603003 	rsb	r3, r0, r3
  8b36d0:	e3a00000 	mov	r0, #0
  8b36d4:	e5853004 	str	r3, [r5, #4]
  8b36d8:	e59d2004 	ldr	r2, [sp, #4]
  8b36dc:	e5943000 	ldr	r3, [r4]
  8b36e0:	e1520003 	cmp	r2, r3
  8b36e4:	1a000008 	bne	8b370c <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x8c>
  8b36e8:	e28dd00c 	add	sp, sp, #12
  8b36ec:	e8bd8030 	pop	{r4, r5, pc}
  8b36f0:	e2810024 	add	r0, r1, #36	@ 0x24
  8b36f4:	e08c1103 	add	r1, ip, r3, lsl #2
  8b36f8:	ebe7c6a2 	bl	2a5188 <std::vector<std::string, std::allocator<std::string> >::erase(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string> > >)@@Base>
  8b36fc:	e3a03000 	mov	r3, #0
  8b3700:	e1a00003 	mov	r0, r3
  8b3704:	e5853004 	str	r3, [r5, #4]
  8b3708:	eafffff2 	b	8b36d8 <HeadFilter::filter(netflix::LogSink::Format&)@@Base+0x58>
  8b370c:	ebe66d60 	bl	24ec94 <__stack_chk_fail@plt>
  8b3710:	00173a70 	andseq	r3, r7, r0, ror sl
  8b3714:	00003440 	andeq	r3, r0, r0, asr #8

008b3718 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base>:
  8b3718:	e59f310c 	ldr	r3, [pc, #268]	@ 8b382c <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x114>
  8b371c:	e59fc10c 	ldr	ip, [pc, #268]	@ 8b3830 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x118>
  8b3720:	e08f3003 	add	r3, pc, r3
  8b3724:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  8b3728:	e1a05001 	mov	r5, r1
  8b372c:	e1a06002 	mov	r6, r2
  8b3730:	e0612002 	rsb	r2, r1, r2
  8b3734:	e1a01003 	mov	r1, r3
  8b3738:	e24dd00c 	sub	sp, sp, #12
  8b373c:	e791900c 	ldr	r9, [r1, ip]
  8b3740:	e1b04142 	asrs	r4, r2, #2
  8b3744:	e3a03000 	mov	r3, #0
  8b3748:	e1a07000 	mov	r7, r0
  8b374c:	e5803004 	str	r3, [r0, #4]
  8b3750:	01a08004 	moveq	r8, r4
  8b3754:	e5992000 	ldr	r2, [r9]
  8b3758:	e5803008 	str	r3, [r0, #8]
  8b375c:	e5803000 	str	r3, [r0]
  8b3760:	e58d2004 	str	r2, [sp, #4]
  8b3764:	1a000016 	bne	8b37c4 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xac>
  8b3768:	e1560005 	cmp	r6, r5
  8b376c:	e0884004 	add	r4, r8, r4
  8b3770:	e5878000 	str	r8, [r7]
  8b3774:	e5874008 	str	r4, [r7, #8]
  8b3778:	e1a04008 	mov	r4, r8
  8b377c:	0a000008 	beq	8b37a4 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x8c>
  8b3780:	e3540000 	cmp	r4, #0
  8b3784:	0a000002 	beq	8b3794 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x7c>
  8b3788:	e1a00004 	mov	r0, r4
  8b378c:	e1a01005 	mov	r1, r5
  8b3790:	ebe6743b 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b3794:	e2855004 	add	r5, r5, #4
  8b3798:	e2844004 	add	r4, r4, #4
  8b379c:	e1560005 	cmp	r6, r5
  8b37a0:	1afffff6 	bne	8b3780 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x68>
  8b37a4:	e59d2004 	ldr	r2, [sp, #4]
  8b37a8:	e1a00007 	mov	r0, r7
  8b37ac:	e5993000 	ldr	r3, [r9]
  8b37b0:	e5874004 	str	r4, [r7, #4]
  8b37b4:	e1520003 	cmp	r2, r3
  8b37b8:	1a00000e 	bne	8b37f8 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xe0>
  8b37bc:	e28dd00c 	add	sp, sp, #12
  8b37c0:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  8b37c4:	e3740107 	cmn	r4, #-1073741823	@ 0xc0000001
  8b37c8:	8a000004 	bhi	8b37e0 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xc8>
  8b37cc:	e1a04104 	lsl	r4, r4, #2
  8b37d0:	e1a00004 	mov	r0, r4
  8b37d4:	ebe66d3d 	bl	24ecd0 <operator new(unsigned int)@plt>
  8b37d8:	e1a08000 	mov	r8, r0
  8b37dc:	eaffffe1 	b	8b3768 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x50>
  8b37e0:	ebe67a60 	bl	252168 <std::__throw_bad_alloc()@plt>
  8b37e4:	e5970000 	ldr	r0, [r7]
  8b37e8:	e3500000 	cmp	r0, #0
  8b37ec:	0a000000 	beq	8b37f4 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xdc>
  8b37f0:	ebe672a6 	bl	250290 <operator delete(void*)@plt>
  8b37f4:	ebe6720c 	bl	25002c <__cxa_end_cleanup@plt>
  8b37f8:	ebe66d25 	bl	24ec94 <__stack_chk_fail@plt>
  8b37fc:	ebe66db7 	bl	24eee0 <__cxa_begin_catch@plt>
  8b3800:	e1540008 	cmp	r4, r8
  8b3804:	0a000005 	beq	8b3820 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0x108>
  8b3808:	e4980004 	ldr	r0, [r8], #4
  8b380c:	e1a0100d 	mov	r1, sp
  8b3810:	e240000c 	sub	r0, r0, #12
  8b3814:	ebe6715f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b3818:	e1540008 	cmp	r4, r8
  8b381c:	1afffff9 	bne	8b3808 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xf0>
  8b3820:	ebe671b9 	bl	24ff0c <__cxa_rethrow@plt>
  8b3824:	ebe6787b 	bl	251a18 <__cxa_end_catch@plt>
  8b3828:	eaffffed 	b	8b37e4 <std::vector<std::string, std::allocator<std::string> >::vector<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, void>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::allocator<std::string> const&)@@Base+0xcc>
  8b382c:	001739e0 	andseq	r3, r7, r0, ror #19
  8b3830:	00003440 	andeq	r3, r0, r0, asr #8

008b3834 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base>:
  8b3834:	e59f3068 	ldr	r3, [pc, #104]	@ 8b38a4 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x70>
  8b3838:	e59f2068 	ldr	r2, [pc, #104]	@ 8b38a8 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x74>
  8b383c:	e08f3003 	add	r3, pc, r3
  8b3840:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  8b3844:	e2514000 	subs	r4, r1, #0
  8b3848:	e7937002 	ldr	r7, [r3, r2]
  8b384c:	e24dd00c 	sub	sp, sp, #12
  8b3850:	e1a06000 	mov	r6, r0
  8b3854:	e5973000 	ldr	r3, [r7]
  8b3858:	e58d3004 	str	r3, [sp, #4]
  8b385c:	1a000001 	bne	8b3868 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x34>
  8b3860:	ea000008 	b	8b3888 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x54>
  8b3864:	e1a04005 	mov	r4, r5
  8b3868:	e1a00006 	mov	r0, r6
  8b386c:	e594100c 	ldr	r1, [r4, #12]
  8b3870:	ebffffef 	bl	8b3834 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base>
  8b3874:	e5945008 	ldr	r5, [r4, #8]
  8b3878:	e1a00004 	mov	r0, r4
  8b387c:	ebe67283 	bl	250290 <operator delete(void*)@plt>
  8b3880:	e3550000 	cmp	r5, #0
  8b3884:	1afffff6 	bne	8b3864 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x30>
  8b3888:	e59d2004 	ldr	r2, [sp, #4]
  8b388c:	e5973000 	ldr	r3, [r7]
  8b3890:	e1520003 	cmp	r2, r3
  8b3894:	1a000001 	bne	8b38a0 <std::_Rb_tree<netflix::MutexRankType, std::pair<netflix::MutexRankType const, unsigned int>, std::_Select1st<std::pair<netflix::MutexRankType const, unsigned int> >, std::less<netflix::MutexRankType>, std::allocator<std::pair<netflix::MutexRankType const, unsigned int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::MutexRankType const, unsigned int> >*)@@Base+0x6c>
  8b3898:	e28dd00c 	add	sp, sp, #12
  8b389c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  8b38a0:	ebe66cfb 	bl	24ec94 <__stack_chk_fail@plt>
  8b38a4:	001738c4 	andseq	r3, r7, r4, asr #17
  8b38a8:	00003440 	andeq	r3, r0, r0, asr #8

008b38ac <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  8b38ac:	e59f30c8 	ldr	r3, [pc, #200]	@ 8b397c <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xd0>
  8b38b0:	e59f10c8 	ldr	r1, [pc, #200]	@ 8b3980 <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xd4>
  8b38b4:	e08f3003 	add	r3, pc, r3
  8b38b8:	e59f20c4 	ldr	r2, [pc, #196]	@ 8b3984 <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xd8>
  8b38bc:	e92d4030 	push	{r4, r5, lr}
  8b38c0:	e24dd00c 	sub	sp, sp, #12
  8b38c4:	e7935001 	ldr	r5, [r3, r1]
  8b38c8:	e5951000 	ldr	r1, [r5]
  8b38cc:	e58d1004 	str	r1, [sp, #4]
  8b38d0:	e7932002 	ldr	r2, [r3, r2]
  8b38d4:	e5922000 	ldr	r2, [r2]
  8b38d8:	e59240b4 	ldr	r4, [r2, #180]	@ 0xb4
  8b38dc:	e59200b0 	ldr	r0, [r2, #176]	@ 0xb0
  8b38e0:	e3540000 	cmp	r4, #0
  8b38e4:	0a00000b 	beq	8b3918 <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x6c>
  8b38e8:	e59f1098 	ldr	r1, [pc, #152]	@ 8b3988 <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xdc>
  8b38ec:	e2842004 	add	r2, r4, #4
  8b38f0:	e7933001 	ldr	r3, [r3, r1]
  8b38f4:	e3530000 	cmp	r3, #0
  8b38f8:	0a000016 	beq	8b3958 <TimersCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xac>
  8b38fc:	f57ff05f 	dmb	sy
