
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008b5f48 <GrepCommand::GrepCommand(std::string const&)@@Base>:
  8b5f48:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  8b5f4c:	e24dd010 	sub	sp, sp, #16
  8b5f50:	e59f5100 	ldr	r5, [pc, #256]	@ 8b6058 <GrepCommand::GrepCommand(std::string const&)@@Base+0x110>
  8b5f54:	e1a08001 	mov	r8, r1
  8b5f58:	e59f30fc 	ldr	r3, [pc, #252]	@ 8b605c <GrepCommand::GrepCommand(std::string const&)@@Base+0x114>
  8b5f5c:	e28d6008 	add	r6, sp, #8
  8b5f60:	e08f5005 	add	r5, pc, r5
  8b5f64:	e59f10f4 	ldr	r1, [pc, #244]	@ 8b6060 <GrepCommand::GrepCommand(std::string const&)@@Base+0x118>
  8b5f68:	e1a04000 	mov	r4, r0
  8b5f6c:	e1a0200d 	mov	r2, sp
  8b5f70:	e7957003 	ldr	r7, [r5, r3]
  8b5f74:	e08f1001 	add	r1, pc, r1
  8b5f78:	e1a00006 	mov	r0, r6
  8b5f7c:	e5973000 	ldr	r3, [r7]
  8b5f80:	e58d300c 	str	r3, [sp, #12]
  8b5f84:	ebe66eeb 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  8b5f88:	e59f20d4 	ldr	r2, [pc, #212]	@ 8b6064 <GrepCommand::GrepCommand(std::string const&)@@Base+0x11c>
  8b5f8c:	e3a03000 	mov	r3, #0
  8b5f90:	e5843004 	str	r3, [r4, #4]
  8b5f94:	e1a00004 	mov	r0, r4
  8b5f98:	e5843008 	str	r3, [r4, #8]
  8b5f9c:	e1a01008 	mov	r1, r8
  8b5fa0:	e7953002 	ldr	r3, [r5, r2]
  8b5fa4:	e2833008 	add	r3, r3, #8
  8b5fa8:	e480300c 	str	r3, [r0], #12
  8b5fac:	ebe66a34 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b5fb0:	e1a01006 	mov	r1, r6
  8b5fb4:	e2840010 	add	r0, r4, #16
  8b5fb8:	ebe66a31 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b5fbc:	e59d0008 	ldr	r0, [sp, #8]
  8b5fc0:	e3a06000 	mov	r6, #0
  8b5fc4:	e3a02000 	mov	r2, #0
  8b5fc8:	e3a03000 	mov	r3, #0
  8b5fcc:	e240000c 	sub	r0, r0, #12
  8b5fd0:	e1c423f0 	strd	r2, [r4, #48]	@ 0x30
  8b5fd4:	e28d1004 	add	r1, sp, #4
  8b5fd8:	e5846018 	str	r6, [r4, #24]
  8b5fdc:	ebe6676d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b5fe0:	e59f3080 	ldr	r3, [pc, #128]	@ 8b6068 <GrepCommand::GrepCommand(std::string const&)@@Base+0x120>
  8b5fe4:	e59d100c 	ldr	r1, [sp, #12]
  8b5fe8:	e1a00004 	mov	r0, r4
  8b5fec:	e5972000 	ldr	r2, [r7]
  8b5ff0:	e7953003 	ldr	r3, [r5, r3]
  8b5ff4:	e1510002 	cmp	r1, r2
  8b5ff8:	e5846038 	str	r6, [r4, #56]	@ 0x38
  8b5ffc:	e2833008 	add	r3, r3, #8
  8b6000:	e584603c 	str	r6, [r4, #60]	@ 0x3c
  8b6004:	e5843000 	str	r3, [r4]
  8b6008:	1a000001 	bne	8b6014 <GrepCommand::GrepCommand(std::string const&)@@Base+0xcc>
  8b600c:	e28dd010 	add	sp, sp, #16
  8b6010:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  8b6014:	ebe6631e 	bl	24ec94 <__stack_chk_fail@plt>
  8b6018:	e594000c 	ldr	r0, [r4, #12]
  8b601c:	e28d5004 	add	r5, sp, #4
  8b6020:	e240000c 	sub	r0, r0, #12
  8b6024:	e1a01005 	mov	r1, r5
  8b6028:	ebe6675a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b602c:	e5940008 	ldr	r0, [r4, #8]
  8b6030:	e3500000 	cmp	r0, #0
  8b6034:	0a000000 	beq	8b603c <GrepCommand::GrepCommand(std::string const&)@@Base+0xf4>
  8b6038:	ebe6d4ab 	bl	26b2ec <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release()@@Base>
  8b603c:	e59d0008 	ldr	r0, [sp, #8]
  8b6040:	e1a01005 	mov	r1, r5
  8b6044:	e240000c 	sub	r0, r0, #12
  8b6048:	ebe66752 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b604c:	ebe667f6 	bl	25002c <__cxa_end_cleanup@plt>
  8b6050:	e28d5004 	add	r5, sp, #4
  8b6054:	eafffff4 	b	8b602c <GrepCommand::GrepCommand(std::string const&)@@Base+0xe4>
  8b6058:	001711a0 	andseq	r1, r7, r0, lsr #3
  8b605c:	00003440 	andeq	r3, r0, r0, asr #8
  8b6060:	000e43d4 	ldrdeq	r4, [lr], -r4	@ <UNPREDICTABLE>
  8b6064:	00001a60 	andeq	r1, r0, r0, ror #20
  8b6068:	00002b14 	andeq	r2, r0, r4, lsl fp

008b606c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  8b606c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8b6070:	e1a06001 	mov	r6, r1
  8b6074:	e59fa208 	ldr	sl, [pc, #520]	@ 8b6284 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x218>
  8b6078:	e24dd054 	sub	sp, sp, #84	@ 0x54
  8b607c:	e59f2204 	ldr	r2, [pc, #516]	@ 8b6288 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x21c>
  8b6080:	e08fa00a 	add	sl, pc, sl
  8b6084:	e59f3200 	ldr	r3, [pc, #512]	@ 8b628c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x220>
  8b6088:	e5911010 	ldr	r1, [r1, #16]
  8b608c:	e79ab002 	ldr	fp, [sl, r2]
  8b6090:	e5960014 	ldr	r0, [r6, #20]
  8b6094:	e59b2000 	ldr	r2, [fp]
  8b6098:	e0610000 	rsb	r0, r1, r0
  8b609c:	e3500007 	cmp	r0, #7
  8b60a0:	e58d204c 	str	r2, [sp, #76]	@ 0x4c
  8b60a4:	e79a3003 	ldr	r3, [sl, r3]
  8b60a8:	e58d3004 	str	r3, [sp, #4]
  8b60ac:	e283300c 	add	r3, r3, #12
  8b60b0:	e58d3010 	str	r3, [sp, #16]
  8b60b4:	9a000054 	bls	8b620c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1a0>
  8b60b8:	e2811004 	add	r1, r1, #4
  8b60bc:	e28d0020 	add	r0, sp, #32
  8b60c0:	e3a03001 	mov	r3, #1
  8b60c4:	e58d3018 	str	r3, [sp, #24]
  8b60c8:	ebe669ed 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8b60cc:	e59d3018 	ldr	r3, [sp, #24]
  8b60d0:	e3530004 	cmp	r3, #4
  8b60d4:	0a000043 	beq	8b61e8 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x17c>
  8b60d8:	e28d4030 	add	r4, sp, #48	@ 0x30
  8b60dc:	e28d5018 	add	r5, sp, #24
  8b60e0:	e3a02004 	mov	r2, #4
  8b60e4:	e1a00004 	mov	r0, r4
  8b60e8:	e1a01005 	mov	r1, r5
  8b60ec:	ebe73cc1 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  8b60f0:	e59d3030 	ldr	r3, [sp, #48]	@ 0x30
  8b60f4:	e1a00004 	mov	r0, r4
  8b60f8:	e3530000 	cmp	r3, #0
  8b60fc:	1a00004c 	bne	8b6234 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1c8>
  8b6100:	ebe6d25e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  8b6104:	e1a00005 	mov	r0, r5
  8b6108:	ebe6d25c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  8b610c:	e3a04001 	mov	r4, #1
  8b6110:	e3a09007 	mov	r9, #7
  8b6114:	e59f8174 	ldr	r8, [pc, #372]	@ 8b6290 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x224>
  8b6118:	e1a05104 	lsl	r5, r4, #2
  8b611c:	e28d7010 	add	r7, sp, #16
  8b6120:	e08f8008 	add	r8, pc, r8
  8b6124:	ea000007 	b	8b6148 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xdc>
  8b6128:	e0811005 	add	r1, r1, r5
  8b612c:	e1a00007 	mov	r0, r7
  8b6130:	e2844001 	add	r4, r4, #1
  8b6134:	ebe66fd2 	bl	252084 <std::string::append(std::string const&)@plt>
  8b6138:	e1a01008 	mov	r1, r8
  8b613c:	e3a02001 	mov	r2, #1
  8b6140:	ebe663f0 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  8b6144:	e2855004 	add	r5, r5, #4
  8b6148:	e5961010 	ldr	r1, [r6, #16]
  8b614c:	e5963014 	ldr	r3, [r6, #20]
  8b6150:	e0613003 	rsb	r3, r1, r3
  8b6154:	e1540143 	cmp	r4, r3, asr #2
  8b6158:	3afffff2 	bcc	8b6128 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xbc>
  8b615c:	e59d3004 	ldr	r3, [sp, #4]
  8b6160:	e3590000 	cmp	r9, #0
  8b6164:	e283200c 	add	r2, r3, #12
  8b6168:	e58d2014 	str	r2, [sp, #20]
  8b616c:	0a000008 	beq	8b6194 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x128>
  8b6170:	e28d5014 	add	r5, sp, #20
  8b6174:	e3a04000 	mov	r4, #0
  8b6178:	e1a00005 	mov	r0, r5
  8b617c:	e3a0100a 	mov	r1, #10
  8b6180:	ebe66f71 	bl	251f4c <std::string::push_back(char)@plt>
  8b6184:	e2844001 	add	r4, r4, #1
  8b6188:	e1540009 	cmp	r4, r9
  8b618c:	1afffff9 	bne	8b6178 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x10c>
  8b6190:	e59d2014 	ldr	r2, [sp, #20]
  8b6194:	e59f00f8 	ldr	r0, [pc, #248]	@ 8b6294 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x228>
  8b6198:	e59f10f8 	ldr	r1, [pc, #248]	@ 8b6298 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x22c>
  8b619c:	e59d3010 	ldr	r3, [sp, #16]
  8b61a0:	e08f1001 	add	r1, pc, r1
  8b61a4:	e79a0000 	ldr	r0, [sl, r0]
  8b61a8:	eb00e5f5 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8b61ac:	e59d0014 	ldr	r0, [sp, #20]
  8b61b0:	e28d400c 	add	r4, sp, #12
  8b61b4:	e240000c 	sub	r0, r0, #12
  8b61b8:	e1a01004 	mov	r1, r4
  8b61bc:	ebe666f5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b61c0:	e59d0010 	ldr	r0, [sp, #16]
  8b61c4:	e1a01004 	mov	r1, r4
  8b61c8:	e240000c 	sub	r0, r0, #12
  8b61cc:	ebe666f1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b61d0:	e59d204c 	ldr	r2, [sp, #76]	@ 0x4c
  8b61d4:	e59b3000 	ldr	r3, [fp]
  8b61d8:	e1520003 	cmp	r2, r3
  8b61dc:	1a000025 	bne	8b6278 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x20c>
  8b61e0:	e28dd054 	add	sp, sp, #84	@ 0x54
  8b61e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b61e8:	e59d9020 	ldr	r9, [sp, #32]
  8b61ec:	e28d5018 	add	r5, sp, #24
  8b61f0:	e1a00005 	mov	r0, r5
  8b61f4:	ebe6d221 	bl	26aa80 <netflix::Variant::clear()@@Base>
  8b61f8:	e3590000 	cmp	r9, #0
  8b61fc:	a3a04002 	movge	r4, #2
  8b6200:	b3a04001 	movlt	r4, #1
  8b6204:	b3a09007 	movlt	r9, #7
  8b6208:	eaffffc1 	b	8b6114 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xa8>
  8b620c:	e59f1088 	ldr	r1, [pc, #136]	@ 8b629c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x230>
  8b6210:	e28d0010 	add	r0, sp, #16
  8b6214:	e3a02001 	mov	r2, #1
  8b6218:	e08f1001 	add	r1, pc, r1
  8b621c:	ebe667a9 	bl	2500c8 <std::string::assign(char const*, unsigned int)@plt>
  8b6220:	e59d2004 	ldr	r2, [sp, #4]
  8b6224:	e3a09007 	mov	r9, #7
  8b6228:	e282300c 	add	r3, r2, #12
  8b622c:	e58d3014 	str	r3, [sp, #20]
  8b6230:	eaffffce 	b	8b6170 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x104>
  8b6234:	e59d9038 	ldr	r9, [sp, #56]	@ 0x38
  8b6238:	ebe6d210 	bl	26aa80 <netflix::Variant::clear()@@Base>
  8b623c:	eaffffeb 	b	8b61f0 <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x184>
  8b6240:	e1a00005 	mov	r0, r5
  8b6244:	e28d400c 	add	r4, sp, #12
  8b6248:	ebe6d20c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  8b624c:	e59d0010 	ldr	r0, [sp, #16]
  8b6250:	e1a01004 	mov	r1, r4
  8b6254:	e240000c 	sub	r0, r0, #12
  8b6258:	ebe666ce 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b625c:	ebe66772 	bl	25002c <__cxa_end_cleanup@plt>
  8b6260:	e59d0014 	ldr	r0, [sp, #20]
  8b6264:	e28d400c 	add	r4, sp, #12
  8b6268:	e240000c 	sub	r0, r0, #12
  8b626c:	e1a01004 	mov	r1, r4
  8b6270:	ebe666c8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8b6274:	eafffff4 	b	8b624c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1e0>
  8b6278:	ebe66285 	bl	24ec94 <__stack_chk_fail@plt>
  8b627c:	e28d400c 	add	r4, sp, #12
  8b6280:	eafffff1 	b	8b624c <SeparatorCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1e0>
  8b6284:	00171080 	andseq	r1, r7, r0, lsl #1
  8b6288:	00003440 	andeq	r3, r0, r0, asr #8
  8b628c:	00002278 	andeq	r2, r0, r8, ror r2
  8b6290:	000e3490 	muleq	lr, r0, r4
  8b6294:	00001b7c 	andeq	r1, r0, ip, ror fp
  8b6298:	00095968 	andeq	r5, r9, r8, ror #18
  8b629c:	000e3398 	muleq	lr, r8, r3

008b62a0 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base>:
  8b62a0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8b62a4:	e1a07001 	mov	r7, r1
  8b62a8:	e59f41c8 	ldr	r4, [pc, #456]	@ 8b6478 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1d8>
  8b62ac:	e24dd014 	sub	sp, sp, #20
  8b62b0:	e59f21c4 	ldr	r2, [pc, #452]	@ 8b647c <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1dc>
  8b62b4:	e1a06000 	mov	r6, r0
  8b62b8:	e08f4004 	add	r4, pc, r4
  8b62bc:	e5901004 	ldr	r1, [r0, #4]
  8b62c0:	e5903000 	ldr	r3, [r0]
  8b62c4:	e7942002 	ldr	r2, [r4, r2]
  8b62c8:	e0633001 	rsb	r3, r3, r1
  8b62cc:	e58d2000 	str	r2, [sp]
  8b62d0:	e1b031c3 	asrs	r3, r3, #3
  8b62d4:	e5922000 	ldr	r2, [r2]
  8b62d8:	03a01008 	moveq	r1, #8
  8b62dc:	058d1004 	streq	r1, [sp, #4]
  8b62e0:	e58d200c 	str	r2, [sp, #12]
  8b62e4:	1a000051 	bne	8b6430 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x190>
  8b62e8:	e59d0004 	ldr	r0, [sp, #4]
  8b62ec:	ebe66277 	bl	24ecd0 <operator new(unsigned int)@plt>
  8b62f0:	e5968000 	ldr	r8, [r6]
  8b62f4:	e5969004 	ldr	r9, [r6, #4]
  8b62f8:	e0682009 	rsb	r2, r8, r9
  8b62fc:	e1a021c2 	asr	r2, r2, #3
  8b6300:	e1a0a000 	mov	sl, r0
  8b6304:	e2805008 	add	r5, r0, #8
  8b6308:	e0900182 	adds	r0, r0, r2, lsl #3
  8b630c:	0a000011 	beq	8b6358 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0xb8>
  8b6310:	e897000a 	ldm	r7, {r1, r3}
  8b6314:	e3530000 	cmp	r3, #0
  8b6318:	e78a1182 	str	r1, [sl, r2, lsl #3]
  8b631c:	e5803004 	str	r3, [r0, #4]
  8b6320:	0a00000c 	beq	8b6358 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0xb8>
  8b6324:	e59f1154 	ldr	r1, [pc, #340]	@ 8b6480 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1e0>
  8b6328:	e2832004 	add	r2, r3, #4
  8b632c:	e7941001 	ldr	r1, [r4, r1]
  8b6330:	e3510000 	cmp	r1, #0
  8b6334:	0a00004b 	beq	8b6468 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1c8>
  8b6338:	f57ff05f 	dmb	sy
  8b633c:	e1923f9f 	ldrex	r3, [r2]
  8b6340:	e2833001 	add	r3, r3, #1
  8b6344:	e1820f93 	strex	r0, r3, [r2]
  8b6348:	e3500000 	cmp	r0, #0
  8b634c:	1afffffa 	bne	8b633c <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x9c>
  8b6350:	f57ff05f 	dmb	sy
  8b6354:	e8960300 	ldm	r6, {r8, r9}
  8b6358:	e1580009 	cmp	r8, r9
  8b635c:	0a00003e 	beq	8b645c <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1bc>
  8b6360:	e288b008 	add	fp, r8, #8
  8b6364:	e2884004 	add	r4, r8, #4
  8b6368:	e1a02008 	mov	r2, r8
  8b636c:	e1a0300a 	mov	r3, sl
  8b6370:	e1a0100b 	mov	r1, fp
  8b6374:	e3a0c000 	mov	ip, #0
  8b6378:	e3530000 	cmp	r3, #0
  8b637c:	0a000009 	beq	8b63a8 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x108>
  8b6380:	e5117008 	ldr	r7, [r1, #-8]
  8b6384:	e06ae003 	rsb	lr, sl, r3
  8b6388:	e28a0004 	add	r0, sl, #4
  8b638c:	e0685002 	rsb	r5, r8, r2
  8b6390:	e5837000 	str	r7, [r3]
  8b6394:	e78ec000 	str	ip, [lr, r0]
  8b6398:	e7957004 	ldr	r7, [r5, r4]
  8b639c:	e785c004 	str	ip, [r5, r4]
  8b63a0:	e78e7000 	str	r7, [lr, r0]
  8b63a4:	e501c008 	str	ip, [r1, #-8]
  8b63a8:	e2822008 	add	r2, r2, #8
  8b63ac:	e2833008 	add	r3, r3, #8
  8b63b0:	e1520009 	cmp	r2, r9
  8b63b4:	e2811008 	add	r1, r1, #8
  8b63b8:	1affffee 	bne	8b6378 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0xd8>
  8b63bc:	e06b5009 	rsb	r5, fp, r9
  8b63c0:	e1a07008 	mov	r7, r8
  8b63c4:	e3c55007 	bic	r5, r5, #7
  8b63c8:	e08a5005 	add	r5, sl, r5
  8b63cc:	e2855010 	add	r5, r5, #16
  8b63d0:	e0683007 	rsb	r3, r8, r7
  8b63d4:	e7940003 	ldr	r0, [r4, r3]
  8b63d8:	e3500000 	cmp	r0, #0
  8b63dc:	0a000000 	beq	8b63e4 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x144>
  8b63e0:	ebe6d163 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8b63e4:	e2877008 	add	r7, r7, #8
  8b63e8:	e1570009 	cmp	r7, r9
  8b63ec:	1afffff7 	bne	8b63d0 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x130>
  8b63f0:	e5960000 	ldr	r0, [r6]
  8b63f4:	e3500000 	cmp	r0, #0
  8b63f8:	0a000000 	beq	8b6400 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x160>
  8b63fc:	ebe667a3 	bl	250290 <operator delete(void*)@plt>
  8b6400:	e59d0000 	ldr	r0, [sp]
  8b6404:	e59d3004 	ldr	r3, [sp, #4]
  8b6408:	e59d200c 	ldr	r2, [sp, #12]
  8b640c:	e08a1003 	add	r1, sl, r3
  8b6410:	e5903000 	ldr	r3, [r0]
  8b6414:	e5861008 	str	r1, [r6, #8]
  8b6418:	e1520003 	cmp	r2, r3
  8b641c:	e586a000 	str	sl, [r6]
  8b6420:	e5865004 	str	r5, [r6, #4]
  8b6424:	1a00000e 	bne	8b6464 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x1c4>
  8b6428:	e28dd014 	add	sp, sp, #20
  8b642c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8b6430:	e1a02083 	lsl	r2, r3, #1
  8b6434:	e1530002 	cmp	r3, r2
  8b6438:	83e03007 	mvnhi	r3, #7
  8b643c:	858d3004 	strhi	r3, [sp, #4]
  8b6440:	8affffa8 	bhi	8b62e8 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base+0x48>
  8b6444:	e372021e 	cmn	r2, #-536870911	@ 0xe0000001
  8b6448:	91a03203 	lslls	r3, r3, #4
  8b644c:	958d3004 	strls	r3, [sp, #4]
