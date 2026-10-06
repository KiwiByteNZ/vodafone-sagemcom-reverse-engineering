
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008ed000 <netflix::ConsoleSink::reparseTraceAreas()@@Base+0x170>:
  8ed000:	ebe5f65b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ed004:	ebe58c08 	bl	25002c <__cxa_end_cleanup@plt>
  8ed008:	0013a260 	andseq	sl, r3, r0, ror #4
  8ed00c:	00003440 	andeq	r3, r0, r0, asr #8
  8ed010:	000037dc 	ldrdeq	r3, [r0], -ip
  8ed014:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4

008ed018 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base>:
  8ed018:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8ed01c:	e24dd074 	sub	sp, sp, #116	@ 0x74
  8ed020:	e59f868c 	ldr	r8, [pc, #1676]	@ 8ed6b4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x69c>
  8ed024:	e1a04001 	mov	r4, r1
  8ed028:	e59f3688 	ldr	r3, [pc, #1672]	@ 8ed6b8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6a0>
  8ed02c:	e1a05000 	mov	r5, r0
  8ed030:	e08f8008 	add	r8, pc, r8
  8ed034:	e59f2680 	ldr	r2, [pc, #1664]	@ 8ed6bc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6a4>
  8ed038:	e28d701c 	add	r7, sp, #28
  8ed03c:	e59f967c 	ldr	r9, [pc, #1660]	@ 8ed6c0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6a8>
  8ed040:	e7983003 	ldr	r3, [r8, r3]
  8ed044:	e1a0c007 	mov	ip, r7
  8ed048:	e59f6674 	ldr	r6, [pc, #1652]	@ 8ed6c4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6ac>
  8ed04c:	e58d3010 	str	r3, [sp, #16]
  8ed050:	e5933000 	ldr	r3, [r3]
  8ed054:	e58d306c 	str	r3, [sp, #108]	@ 0x6c
  8ed058:	e798e002 	ldr	lr, [r8, r2]
  8ed05c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8ed060:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
  8ed064:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8ed068:	e88c000f 	stm	ip, {r0, r1, r2, r3}
  8ed06c:	e7982009 	ldr	r2, [r8, r9]
  8ed070:	e7983006 	ldr	r3, [r8, r6]
  8ed074:	e28d603c 	add	r6, sp, #60	@ 0x3c
  8ed078:	e5d21000 	ldrb	r1, [r2]
  8ed07c:	e1a00006 	mov	r0, r6
  8ed080:	e5d32000 	ldrb	r2, [r3]
  8ed084:	e3a03000 	mov	r3, #0
  8ed088:	e3510000 	cmp	r1, #0
  8ed08c:	e59f1634 	ldr	r1, [pc, #1588]	@ 8ed6c8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6b0>
  8ed090:	13822002 	orrne	r2, r2, #2
  8ed094:	e7981001 	ldr	r1, [r8, r1]
  8ed098:	e5d11000 	ldrb	r1, [r1]
  8ed09c:	e3510000 	cmp	r1, #0
  8ed0a0:	e1a01004 	mov	r1, r4
  8ed0a4:	13822004 	orrne	r2, r2, #4
  8ed0a8:	e1cd20f0 	strd	r2, [sp]
  8ed0ac:	e1a02007 	mov	r2, r7
  8ed0b0:	eb001cd4 	bl	8f4408 <netflix::LogSink::Format::Format(netflix::Log::Message const&, netflix::Configuration::ColorScheme const&, netflix::Flags<netflix::LogSink::Format::Flag>)@@Base>
  8ed0b4:	e59f3610 	ldr	r3, [pc, #1552]	@ 8ed6cc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6b4>
  8ed0b8:	e5942018 	ldr	r2, [r4, #24]
  8ed0bc:	e7983003 	ldr	r3, [r8, r3]
  8ed0c0:	e1520003 	cmp	r2, r3
  8ed0c4:	0a000042 	beq	8ed1d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1bc>
  8ed0c8:	e5953000 	ldr	r3, [r5]
  8ed0cc:	e1a01004 	mov	r1, r4
  8ed0d0:	e1a00005 	mov	r0, r5
  8ed0d4:	e5933010 	ldr	r3, [r3, #16]
  8ed0d8:	e12fff33 	blx	r3
  8ed0dc:	e3500000 	cmp	r0, #0
  8ed0e0:	0a00003b 	beq	8ed1d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1bc>
  8ed0e4:	e59f35e4 	ldr	r3, [pc, #1508]	@ 8ed6d0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6b8>
  8ed0e8:	e7983003 	ldr	r3, [r8, r3]
  8ed0ec:	e5933000 	ldr	r3, [r3]
  8ed0f0:	e3530000 	cmp	r3, #0
  8ed0f4:	0a0000a3 	beq	8ed388 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x370>
  8ed0f8:	e593a0d4 	ldr	sl, [r3, #212]	@ 0xd4
  8ed0fc:	e59310d0 	ldr	r1, [r3, #208]	@ 0xd0
  8ed100:	e35a0000 	cmp	sl, #0
  8ed104:	0a00000b 	beq	8ed138 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x120>
  8ed108:	e59f05c4 	ldr	r0, [pc, #1476]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed10c:	e28a2004 	add	r2, sl, #4
  8ed110:	e7980000 	ldr	r0, [r8, r0]
  8ed114:	e3500000 	cmp	r0, #0
  8ed118:	0a00012b 	beq	8ed5cc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5b4>
  8ed11c:	f57ff05f 	dmb	sy
  8ed120:	e1920f9f 	ldrex	r0, [r2]
  8ed124:	e2800001 	add	r0, r0, #1
  8ed128:	e182cf90 	strex	ip, r0, [r2]
  8ed12c:	e35c0000 	cmp	ip, #0
  8ed130:	1afffffa 	bne	8ed120 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x108>
  8ed134:	f57ff05f 	dmb	sy
  8ed138:	e3510000 	cmp	r1, #0
  8ed13c:	0a0000a6 	beq	8ed3dc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3c4>
  8ed140:	e593b0d4 	ldr	fp, [r3, #212]	@ 0xd4
  8ed144:	e59390d0 	ldr	r9, [r3, #208]	@ 0xd0
  8ed148:	e35b0000 	cmp	fp, #0
  8ed14c:	0a00000b 	beq	8ed180 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x168>
  8ed150:	e59f257c 	ldr	r2, [pc, #1404]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed154:	e28b3004 	add	r3, fp, #4
  8ed158:	e7982002 	ldr	r2, [r8, r2]
  8ed15c:	e3520000 	cmp	r2, #0
  8ed160:	0a000136 	beq	8ed640 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x628>
  8ed164:	f57ff05f 	dmb	sy
  8ed168:	e193ef9f 	ldrex	r14, [r3]
  8ed16c:	e28ee001 	add	lr, lr, #1
  8ed170:	e1830f9e 	strex	r0, lr, [r3]
  8ed174:	e3500000 	cmp	r0, #0
  8ed178:	1afffffa 	bne	8ed168 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x150>
  8ed17c:	f57ff05f 	dmb	sy
  8ed180:	e5953018 	ldr	r3, [r5, #24]
  8ed184:	e3530000 	cmp	r3, #0
  8ed188:	0a000130 	beq	8ed650 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x638>
  8ed18c:	e5931004 	ldr	r1, [r3, #4]
  8ed190:	e2830004 	add	r0, r3, #4
  8ed194:	e1a02001 	mov	r2, r1
  8ed198:	e58d101c 	str	r1, [sp, #28]
  8ed19c:	e3520000 	cmp	r2, #0
  8ed1a0:	0a00012b 	beq	8ed654 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x63c>
  8ed1a4:	e5971000 	ldr	r1, [r7]
  8ed1a8:	e282c001 	add	ip, r2, #1
  8ed1ac:	f57ff05f 	dmb	sy
  8ed1b0:	e1902f9f 	ldrex	r2, [r0]
  8ed1b4:	e1520001 	cmp	r2, r1
  8ed1b8:	1a000002 	bne	8ed1c8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1b0>
  8ed1bc:	e180ef9c 	strex	lr, ip, [r0]
  8ed1c0:	e35e0000 	cmp	lr, #0
  8ed1c4:	f57ff05f 	dmb	sy
  8ed1c8:	0a00001d 	beq	8ed244 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x22c>
  8ed1cc:	e5872000 	str	r2, [r7]
  8ed1d0:	eafffff1 	b	8ed19c <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x184>
  8ed1d4:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ed1d8:	e59d9064 	ldr	r9, [sp, #100]	@ 0x64
  8ed1dc:	e59f34f4 	ldr	r3, [pc, #1268]	@ 8ed6d8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6c0>
  8ed1e0:	e1590000 	cmp	r9, r0
  8ed1e4:	11a04000 	movne	r4, r0
  8ed1e8:	17985003 	ldrne	r5, [r8, r3]
  8ed1ec:	0a00007e 	beq	8ed3ec <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3d4>
  8ed1f0:	e4943004 	ldr	r3, [r4], #4
  8ed1f4:	e243000c 	sub	r0, r3, #12
  8ed1f8:	e1500005 	cmp	r0, r5
  8ed1fc:	1a0000c7 	bne	8ed520 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x508>
  8ed200:	e1590004 	cmp	r9, r4
  8ed204:	1afffff9 	bne	8ed1f0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1d8>
  8ed208:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ed20c:	e3500000 	cmp	r0, #0
  8ed210:	0a000000 	beq	8ed218 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x200>
  8ed214:	ebe58c1d 	bl	250290 <operator delete(void*)@plt>
  8ed218:	e59d303c 	ldr	r3, [sp, #60]	@ 0x3c
  8ed21c:	e243000c 	sub	r0, r3, #12
  8ed220:	e1500005 	cmp	r0, r5
  8ed224:	1a0000d7 	bne	8ed588 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x570>
  8ed228:	e59dc010 	ldr	ip, [sp, #16]
  8ed22c:	e59d206c 	ldr	r2, [sp, #108]	@ 0x6c
  8ed230:	e59c3000 	ldr	r3, [ip]
  8ed234:	e1520003 	cmp	r2, r3
  8ed238:	1a0000f7 	bne	8ed61c <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x604>
  8ed23c:	e28dd074 	add	sp, sp, #116	@ 0x74
  8ed240:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8ed244:	e5952014 	ldr	r2, [r5, #20]
  8ed248:	e289000c 	add	r0, r9, #12
  8ed24c:	e3a01001 	mov	r1, #1
  8ed250:	e58d0014 	str	r0, [sp, #20]
  8ed254:	e58d3020 	str	r3, [sp, #32]
  8ed258:	e58d201c 	str	r2, [sp, #28]
  8ed25c:	eb003fc9 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8ed260:	e5993044 	ldr	r3, [r9, #68]	@ 0x44
  8ed264:	e3530000 	cmp	r3, #0
  8ed268:	0a000056 	beq	8ed3c8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3b0>
  8ed26c:	e599403c 	ldr	r4, [r9, #60]	@ 0x3c
  8ed270:	e2899034 	add	r9, r9, #52	@ 0x34
  8ed274:	e1540009 	cmp	r4, r9
  8ed278:	1a000005 	bne	8ed294 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x27c>
  8ed27c:	ea000051 	b	8ed3c8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3b0>
  8ed280:	e1a00004 	mov	r0, r4
  8ed284:	ebe58ebf 	bl	250d88 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)@plt>
  8ed288:	e1500009 	cmp	r0, r9
  8ed28c:	e1a04000 	mov	r4, r0
  8ed290:	0a00004c 	beq	8ed3c8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3b0>
  8ed294:	e5940010 	ldr	r0, [r4, #16]
  8ed298:	e1a01007 	mov	r1, r7
  8ed29c:	e1a02006 	mov	r2, r6
  8ed2a0:	ebfedbac 	bl	8a4158 <netflix::Console::Filters::filter(std::shared_ptr<netflix::LogSink> const&, netflix::LogSink::Format&) const@@Base>
  8ed2a4:	e3500000 	cmp	r0, #0
  8ed2a8:	0afffff4 	beq	8ed280 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x268>
  8ed2ac:	e59d0014 	ldr	r0, [sp, #20]
  8ed2b0:	e3a01001 	mov	r1, #1
  8ed2b4:	eb003fe8 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ed2b8:	e3a03000 	mov	r3, #0
  8ed2bc:	e59d9020 	ldr	r9, [sp, #32]
  8ed2c0:	e3590000 	cmp	r9, #0
  8ed2c4:	0a00000d 	beq	8ed300 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2e8>
  8ed2c8:	e59f1404 	ldr	r1, [pc, #1028]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed2cc:	e2892004 	add	r2, r9, #4
  8ed2d0:	e7984001 	ldr	r4, [r8, r1]
  8ed2d4:	e3540000 	cmp	r4, #0
  8ed2d8:	0a0000f0 	beq	8ed6a0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x688>
  8ed2dc:	f57ff05f 	dmb	sy
  8ed2e0:	e1921f9f 	ldrex	r1, [r2]
  8ed2e4:	e241c001 	sub	ip, r1, #1
  8ed2e8:	e182ef9c 	strex	lr, ip, [r2]
  8ed2ec:	e35e0000 	cmp	lr, #0
  8ed2f0:	1afffffa 	bne	8ed2e0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2c8>
  8ed2f4:	f57ff05f 	dmb	sy
  8ed2f8:	e3510001 	cmp	r1, #1
  8ed2fc:	0a00006e 	beq	8ed4bc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x4a4>
  8ed300:	e35b0000 	cmp	fp, #0
  8ed304:	0a00000d 	beq	8ed340 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x328>
  8ed308:	e59f13c4 	ldr	r1, [pc, #964]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed30c:	e28b2004 	add	r2, fp, #4
  8ed310:	e7984001 	ldr	r4, [r8, r1]
  8ed314:	e3540000 	cmp	r4, #0
  8ed318:	0a0000b4 	beq	8ed5f0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5d8>
  8ed31c:	f57ff05f 	dmb	sy
  8ed320:	e1921f9f 	ldrex	r1, [r2]
  8ed324:	e241e001 	sub	lr, r1, #1
  8ed328:	e1820f9e 	strex	r0, lr, [r2]
  8ed32c:	e3500000 	cmp	r0, #0
  8ed330:	1afffffa 	bne	8ed320 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x308>
  8ed334:	f57ff05f 	dmb	sy
  8ed338:	e3510001 	cmp	r1, #1
  8ed33c:	0a000045 	beq	8ed458 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x440>
  8ed340:	e35a0000 	cmp	sl, #0
  8ed344:	0a00000d 	beq	8ed380 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x368>
  8ed348:	e59f1384 	ldr	r1, [pc, #900]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed34c:	e28a2004 	add	r2, sl, #4
  8ed350:	e7984001 	ldr	r4, [r8, r1]
  8ed354:	e3540000 	cmp	r4, #0
  8ed358:	0a0000a8 	beq	8ed600 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5e8>
  8ed35c:	f57ff05f 	dmb	sy
  8ed360:	e1921f9f 	ldrex	r1, [r2]
  8ed364:	e2410001 	sub	r0, r1, #1
  8ed368:	e182cf90 	strex	ip, r0, [r2]
  8ed36c:	e35c0000 	cmp	ip, #0
  8ed370:	1afffffa 	bne	8ed360 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x348>
  8ed374:	f57ff05f 	dmb	sy
  8ed378:	e3510001 	cmp	r1, #1
  8ed37c:	0a00001c 	beq	8ed3f4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3dc>
  8ed380:	e3530000 	cmp	r3, #0
  8ed384:	0affff92 	beq	8ed1d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1bc>
  8ed388:	e59d4060 	ldr	r4, [sp, #96]	@ 0x60
  8ed38c:	e59d3064 	ldr	r3, [sp, #100]	@ 0x64
  8ed390:	e1540003 	cmp	r4, r3
  8ed394:	0a000012 	beq	8ed3e4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x3cc>
  8ed398:	e5953000 	ldr	r3, [r5]
  8ed39c:	e1a00005 	mov	r0, r5
  8ed3a0:	e1a01006 	mov	r1, r6
  8ed3a4:	e1a02004 	mov	r2, r4
  8ed3a8:	e5933008 	ldr	r3, [r3, #8]
  8ed3ac:	e12fff33 	blx	r3
  8ed3b0:	e59d9064 	ldr	r9, [sp, #100]	@ 0x64
  8ed3b4:	e2844004 	add	r4, r4, #4
  8ed3b8:	e1540009 	cmp	r4, r9
  8ed3bc:	1afffff5 	bne	8ed398 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x380>
  8ed3c0:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ed3c4:	eaffff84 	b	8ed1dc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1c4>
  8ed3c8:	e59d0014 	ldr	r0, [sp, #20]
  8ed3cc:	e3a01001 	mov	r1, #1
  8ed3d0:	eb003fa1 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ed3d4:	e3a03001 	mov	r3, #1
  8ed3d8:	eaffffb7 	b	8ed2bc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2a4>
  8ed3dc:	e3a03001 	mov	r3, #1
  8ed3e0:	eaffffd6 	b	8ed340 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x328>
  8ed3e4:	e59f32ec 	ldr	r3, [pc, #748]	@ 8ed6d8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6c0>
  8ed3e8:	e1a00004 	mov	r0, r4
  8ed3ec:	e7985003 	ldr	r5, [r8, r3]
  8ed3f0:	eaffff85 	b	8ed20c <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1f4>
  8ed3f4:	e59a2000 	ldr	r2, [sl]
  8ed3f8:	e1a0000a 	mov	r0, sl
  8ed3fc:	e5922008 	ldr	r2, [r2, #8]
  8ed400:	e58d300c 	str	r3, [sp, #12]
  8ed404:	e12fff32 	blx	r2
  8ed408:	e3540000 	cmp	r4, #0
  8ed40c:	e28a2008 	add	r2, sl, #8
  8ed410:	e59d300c 	ldr	r3, [sp, #12]
  8ed414:	0a000052 	beq	8ed564 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x54c>
  8ed418:	f57ff05f 	dmb	sy
  8ed41c:	e1921f9f 	ldrex	r1, [r2]
  8ed420:	e241e001 	sub	lr, r1, #1
  8ed424:	e1820f9e 	strex	r0, lr, [r2]
  8ed428:	e3500000 	cmp	r0, #0
  8ed42c:	1afffffa 	bne	8ed41c <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x404>
  8ed430:	f57ff05f 	dmb	sy
  8ed434:	e3510001 	cmp	r1, #1
  8ed438:	1affffd0 	bne	8ed380 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x368>
  8ed43c:	e59a2000 	ldr	r2, [sl]
  8ed440:	e1a0000a 	mov	r0, sl
  8ed444:	e592200c 	ldr	r2, [r2, #12]
  8ed448:	e58d300c 	str	r3, [sp, #12]
  8ed44c:	e12fff32 	blx	r2
  8ed450:	e59d300c 	ldr	r3, [sp, #12]
  8ed454:	eaffffc9 	b	8ed380 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x368>
  8ed458:	e59b2000 	ldr	r2, [fp]
  8ed45c:	e1a0000b 	mov	r0, fp
  8ed460:	e5922008 	ldr	r2, [r2, #8]
  8ed464:	e58d300c 	str	r3, [sp, #12]
  8ed468:	e12fff32 	blx	r2
  8ed46c:	e3540000 	cmp	r4, #0
  8ed470:	e28b2008 	add	r2, fp, #8
  8ed474:	e59d300c 	ldr	r3, [sp, #12]
  8ed478:	0a00006c 	beq	8ed630 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x618>
  8ed47c:	f57ff05f 	dmb	sy
  8ed480:	e1921f9f 	ldrex	r1, [r2]
  8ed484:	e241c001 	sub	ip, r1, #1
  8ed488:	e182ef9c 	strex	lr, ip, [r2]
  8ed48c:	e35e0000 	cmp	lr, #0
  8ed490:	1afffffa 	bne	8ed480 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x468>
  8ed494:	f57ff05f 	dmb	sy
  8ed498:	e3510001 	cmp	r1, #1
  8ed49c:	1affffa7 	bne	8ed340 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x328>
  8ed4a0:	e59b2000 	ldr	r2, [fp]
  8ed4a4:	e1a0000b 	mov	r0, fp
  8ed4a8:	e592200c 	ldr	r2, [r2, #12]
  8ed4ac:	e58d300c 	str	r3, [sp, #12]
  8ed4b0:	e12fff32 	blx	r2
  8ed4b4:	e59d300c 	ldr	r3, [sp, #12]
  8ed4b8:	eaffffa0 	b	8ed340 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x328>
  8ed4bc:	e5992000 	ldr	r2, [r9]
  8ed4c0:	e1a00009 	mov	r0, r9
  8ed4c4:	e5922008 	ldr	r2, [r2, #8]
  8ed4c8:	e58d300c 	str	r3, [sp, #12]
  8ed4cc:	e12fff32 	blx	r2
  8ed4d0:	e3540000 	cmp	r4, #0
  8ed4d4:	e2892008 	add	r2, r9, #8
  8ed4d8:	e59d300c 	ldr	r3, [sp, #12]
  8ed4dc:	0a00004f 	beq	8ed620 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x608>
  8ed4e0:	f57ff05f 	dmb	sy
  8ed4e4:	e1921f9f 	ldrex	r1, [r2]
  8ed4e8:	e2410001 	sub	r0, r1, #1
  8ed4ec:	e182cf90 	strex	ip, r0, [r2]
  8ed4f0:	e35c0000 	cmp	ip, #0
  8ed4f4:	1afffffa 	bne	8ed4e4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x4cc>
  8ed4f8:	f57ff05f 	dmb	sy
  8ed4fc:	e3510001 	cmp	r1, #1
  8ed500:	1affff7e 	bne	8ed300 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2e8>
  8ed504:	e5992000 	ldr	r2, [r9]
  8ed508:	e1a00009 	mov	r0, r9
  8ed50c:	e592200c 	ldr	r2, [r2, #12]
  8ed510:	e58d300c 	str	r3, [sp, #12]
  8ed514:	e12fff32 	blx	r2
  8ed518:	e59d300c 	ldr	r3, [sp, #12]
  8ed51c:	eaffff77 	b	8ed300 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2e8>
  8ed520:	e59f11ac 	ldr	r1, [pc, #428]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed524:	e2432004 	sub	r2, r3, #4
  8ed528:	e7981001 	ldr	r1, [r8, r1]
  8ed52c:	e3510000 	cmp	r1, #0
  8ed530:	0a00000f 	beq	8ed574 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x55c>
  8ed534:	f57ff05f 	dmb	sy
  8ed538:	e1923f9f 	ldrex	r3, [r2]
  8ed53c:	e2431001 	sub	r1, r3, #1
  8ed540:	e182cf91 	strex	ip, r1, [r2]
  8ed544:	e35c0000 	cmp	ip, #0
  8ed548:	1afffffa 	bne	8ed538 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x520>
  8ed54c:	f57ff05f 	dmb	sy
  8ed550:	e3530000 	cmp	r3, #0
  8ed554:	caffff29 	bgt	8ed200 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1e8>
  8ed558:	e1a01007 	mov	r1, r7
  8ed55c:	ebe58fe0 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  8ed560:	eaffff26 	b	8ed200 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x1e8>
  8ed564:	e59a1008 	ldr	r1, [sl, #8]
  8ed568:	e2412001 	sub	r2, r1, #1
  8ed56c:	e58a2008 	str	r2, [sl, #8]
  8ed570:	eaffffaf 	b	8ed434 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x41c>
  8ed574:	e5132004 	ldr	r2, [r3, #-4]
  8ed578:	e2421001 	sub	r1, r2, #1
  8ed57c:	e5031004 	str	r1, [r3, #-4]
  8ed580:	e1a03002 	mov	r3, r2
  8ed584:	eafffff1 	b	8ed550 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x538>
  8ed588:	e59f1144 	ldr	r1, [pc, #324]	@ 8ed6d4 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x6bc>
  8ed58c:	e2432004 	sub	r2, r3, #4
  8ed590:	e7981001 	ldr	r1, [r8, r1]
  8ed594:	e3510000 	cmp	r1, #0
  8ed598:	0a00000f 	beq	8ed5dc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5c4>
  8ed59c:	f57ff05f 	dmb	sy
  8ed5a0:	e1923f9f 	ldrex	r3, [r2]
  8ed5a4:	e243e001 	sub	lr, r3, #1
  8ed5a8:	e1821f9e 	strex	r1, lr, [r2]
  8ed5ac:	e3510000 	cmp	r1, #0
  8ed5b0:	1afffffa 	bne	8ed5a0 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x588>
  8ed5b4:	f57ff05f 	dmb	sy
  8ed5b8:	e3530000 	cmp	r3, #0
  8ed5bc:	caffff19 	bgt	8ed228 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x210>
  8ed5c0:	e1a01007 	mov	r1, r7
  8ed5c4:	ebe58fc6 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  8ed5c8:	eaffff16 	b	8ed228 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x210>
  8ed5cc:	e59a2004 	ldr	r2, [sl, #4]
  8ed5d0:	e2822001 	add	r2, r2, #1
  8ed5d4:	e58a2004 	str	r2, [sl, #4]
  8ed5d8:	eafffed6 	b	8ed138 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x120>
  8ed5dc:	e5132004 	ldr	r2, [r3, #-4]
  8ed5e0:	e2421001 	sub	r1, r2, #1
  8ed5e4:	e5031004 	str	r1, [r3, #-4]
  8ed5e8:	e1a03002 	mov	r3, r2
  8ed5ec:	eafffff1 	b	8ed5b8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5a0>
  8ed5f0:	e59b1004 	ldr	r1, [fp, #4]
  8ed5f4:	e2412001 	sub	r2, r1, #1
  8ed5f8:	e58b2004 	str	r2, [fp, #4]
  8ed5fc:	eaffff4d 	b	8ed338 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x320>
  8ed600:	e59a1004 	ldr	r1, [sl, #4]
  8ed604:	e2412001 	sub	r2, r1, #1
  8ed608:	e58a2004 	str	r2, [sl, #4]
  8ed60c:	eaffff59 	b	8ed378 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x360>
  8ed610:	e1a00006 	mov	r0, r6
  8ed614:	ebe6dc40 	bl	2a471c <netflix::LogSink::Format::~Format()@@Base>
  8ed618:	ebe58a83 	bl	25002c <__cxa_end_cleanup@plt>
  8ed61c:	ebe5859c 	bl	24ec94 <__stack_chk_fail@plt>
  8ed620:	e5991008 	ldr	r1, [r9, #8]
  8ed624:	e2412001 	sub	r2, r1, #1
  8ed628:	e5892008 	str	r2, [r9, #8]
  8ed62c:	eaffffb2 	b	8ed4fc <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x4e4>
  8ed630:	e59b1008 	ldr	r1, [fp, #8]
  8ed634:	e2412001 	sub	r2, r1, #1
  8ed638:	e58b2008 	str	r2, [fp, #8]
  8ed63c:	eaffff95 	b	8ed498 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x480>
  8ed640:	e59b3004 	ldr	r3, [fp, #4]
  8ed644:	e2833001 	add	r3, r3, #1
  8ed648:	e58b3004 	str	r3, [fp, #4]
  8ed64c:	eafffecb 	b	8ed180 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x168>
  8ed650:	ebe5f404 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  8ed654:	ebe5f403 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  8ed658:	e59d0014 	ldr	r0, [sp, #20]
  8ed65c:	e3a01001 	mov	r1, #1
  8ed660:	eb003efd 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ed664:	e59d0020 	ldr	r0, [sp, #32]
  8ed668:	e3500000 	cmp	r0, #0
  8ed66c:	0a000000 	beq	8ed674 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x65c>
  8ed670:	ebe5f4bf 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ed674:	e35b0000 	cmp	fp, #0
  8ed678:	0a000001 	beq	8ed684 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x66c>
  8ed67c:	e1a0000b 	mov	r0, fp
  8ed680:	ebe5f4bb 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ed684:	e35a0000 	cmp	sl, #0
  8ed688:	0affffe0 	beq	8ed610 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5f8>
  8ed68c:	e1a0000a 	mov	r0, sl
  8ed690:	ebe5f4b7 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ed694:	eaffffdd 	b	8ed610 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x5f8>
  8ed698:	eafffff1 	b	8ed664 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x64c>
  8ed69c:	eafffff4 	b	8ed674 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x65c>
  8ed6a0:	e5991004 	ldr	r1, [r9, #4]
  8ed6a4:	e2412001 	sub	r2, r1, #1
  8ed6a8:	e5892004 	str	r2, [r9, #4]
  8ed6ac:	eaffff11 	b	8ed2f8 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x2e0>
  8ed6b0:	eaffffef 	b	8ed674 <netflix::ConsoleSink::receive(netflix::Log::Message const&)@@Base+0x65c>
  8ed6b4:	0013a0d0 	ldrsbeq	sl, [r3], -r0
  8ed6b8:	00003440 	andeq	r3, r0, r0, asr #8
  8ed6bc:	00001b3c 	andeq	r1, r0, ip, lsr fp
  8ed6c0:	00002438 	andeq	r2, r0, r8, lsr r4
  8ed6c4:	00002704 	andeq	r2, r0, r4, lsl #14
  8ed6c8:	00002294 	muleq	r0, r4, r2
  8ed6cc:	0000236c 	andeq	r2, r0, ip, ror #6
  8ed6d0:	000037dc 	ldrdeq	r3, [r0], -ip
  8ed6d4:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  8ed6d8:	00002278 	andeq	r2, r0, r8, ror r2

008ed6dc <netflix::ConsoleSink::~ConsoleSink()@@Base>:
  8ed6dc:	e92d4070 	push	{r4, r5, r6, lr}
  8ed6e0:	e24dd008 	sub	sp, sp, #8
  8ed6e4:	e59f40bc 	ldr	r4, [pc, #188]	@ 8ed7a8 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xcc>
  8ed6e8:	e1a05000 	mov	r5, r0
  8ed6ec:	e59f20b8 	ldr	r2, [pc, #184]	@ 8ed7ac <netflix::ConsoleSink::~ConsoleSink()@@Base+0xd0>
  8ed6f0:	e08f4004 	add	r4, pc, r4
  8ed6f4:	e59f30b4 	ldr	r3, [pc, #180]	@ 8ed7b0 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xd4>
  8ed6f8:	e7946002 	ldr	r6, [r4, r2]
  8ed6fc:	e5962000 	ldr	r2, [r6]
  8ed700:	e58d2004 	str	r2, [sp, #4]
  8ed704:	e7943003 	ldr	r3, [r4, r3]
  8ed708:	e2833008 	add	r3, r3, #8
  8ed70c:	e480301c 	str	r3, [r0], #28
  8ed710:	eb003e7d 	bl	8fd10c <netflix::Mutex::~Mutex()@@Base>
  8ed714:	e5950018 	ldr	r0, [r5, #24]
  8ed718:	e3500000 	cmp	r0, #0
  8ed71c:	0a00000d 	beq	8ed758 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x7c>
  8ed720:	e59f208c 	ldr	r2, [pc, #140]	@ 8ed7b4 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xd8>
  8ed724:	e2803008 	add	r3, r0, #8
  8ed728:	e7942002 	ldr	r2, [r4, r2]
  8ed72c:	e3520000 	cmp	r2, #0
  8ed730:	0a000018 	beq	8ed798 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xbc>
  8ed734:	f57ff05f 	dmb	sy
  8ed738:	e1932f9f 	ldrex	r2, [r3]
  8ed73c:	e2421001 	sub	r1, r2, #1
  8ed740:	e183cf91 	strex	ip, r1, [r3]
  8ed744:	e35c0000 	cmp	ip, #0
  8ed748:	1afffffa 	bne	8ed738 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x5c>
  8ed74c:	f57ff05f 	dmb	sy
  8ed750:	e3520001 	cmp	r2, #1
  8ed754:	0a00000a 	beq	8ed784 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xa8>
  8ed758:	e59f3058 	ldr	r3, [pc, #88]	@ 8ed7b8 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xdc>
  8ed75c:	e1a00005 	mov	r0, r5
  8ed760:	e59d1004 	ldr	r1, [sp, #4]
  8ed764:	e5962000 	ldr	r2, [r6]
  8ed768:	e7943003 	ldr	r3, [r4, r3]
  8ed76c:	e1510002 	cmp	r1, r2
  8ed770:	e2833008 	add	r3, r3, #8
  8ed774:	e5853000 	str	r3, [r5]
  8ed778:	1a000005 	bne	8ed794 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xb8>
  8ed77c:	e28dd008 	add	sp, sp, #8
  8ed780:	e8bd8070 	pop	{r4, r5, r6, pc}
  8ed784:	e5903000 	ldr	r3, [r0]
  8ed788:	e593300c 	ldr	r3, [r3, #12]
  8ed78c:	e12fff33 	blx	r3
  8ed790:	eafffff0 	b	8ed758 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x7c>
  8ed794:	ebe5853e 	bl	24ec94 <__stack_chk_fail@plt>
  8ed798:	e5902008 	ldr	r2, [r0, #8]
  8ed79c:	e2423001 	sub	r3, r2, #1
  8ed7a0:	e5803008 	str	r3, [r0, #8]
  8ed7a4:	eaffffe9 	b	8ed750 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x74>
  8ed7a8:	00139a10 	andseq	r9, r3, r0, lsl sl
  8ed7ac:	00003440 	andeq	r3, r0, r0, asr #8
  8ed7b0:	00003d88 	andeq	r3, r0, r8, lsl #27
  8ed7b4:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  8ed7b8:	00001838 	andeq	r1, r0, r8, lsr r8

008ed7bc <netflix::ConsoleSink::~ConsoleSink()@@Base>:
  8ed7bc:	e92d4070 	push	{r4, r5, r6, lr}
  8ed7c0:	e24dd008 	sub	sp, sp, #8
  8ed7c4:	e59f50c4 	ldr	r5, [pc, #196]	@ 8ed890 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xd4>
  8ed7c8:	e1a04000 	mov	r4, r0
  8ed7cc:	e59f20c0 	ldr	r2, [pc, #192]	@ 8ed894 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xd8>
  8ed7d0:	e08f5005 	add	r5, pc, r5
  8ed7d4:	e59f30bc 	ldr	r3, [pc, #188]	@ 8ed898 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xdc>
  8ed7d8:	e7956002 	ldr	r6, [r5, r2]
  8ed7dc:	e5962000 	ldr	r2, [r6]
  8ed7e0:	e58d2004 	str	r2, [sp, #4]
  8ed7e4:	e7953003 	ldr	r3, [r5, r3]
  8ed7e8:	e2833008 	add	r3, r3, #8
  8ed7ec:	e480301c 	str	r3, [r0], #28
  8ed7f0:	eb003e45 	bl	8fd10c <netflix::Mutex::~Mutex()@@Base>
  8ed7f4:	e5940018 	ldr	r0, [r4, #24]
  8ed7f8:	e3500000 	cmp	r0, #0
  8ed7fc:	0a00000d 	beq	8ed838 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x7c>
  8ed800:	e59f2094 	ldr	r2, [pc, #148]	@ 8ed89c <netflix::ConsoleSink::~ConsoleSink()@@Base+0xe0>
  8ed804:	e2803008 	add	r3, r0, #8
  8ed808:	e7952002 	ldr	r2, [r5, r2]
  8ed80c:	e3520000 	cmp	r2, #0
  8ed810:	0a00001a 	beq	8ed880 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xc4>
  8ed814:	f57ff05f 	dmb	sy
  8ed818:	e1932f9f 	ldrex	r2, [r3]
  8ed81c:	e2421001 	sub	r1, r2, #1
  8ed820:	e183cf91 	strex	ip, r1, [r3]
  8ed824:	e35c0000 	cmp	ip, #0
  8ed828:	1afffffa 	bne	8ed818 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x5c>
  8ed82c:	f57ff05f 	dmb	sy
  8ed830:	e3520001 	cmp	r2, #1
  8ed834:	0a00000c 	beq	8ed86c <netflix::ConsoleSink::~ConsoleSink()@@Base+0xb0>
  8ed838:	e59f3060 	ldr	r3, [pc, #96]	@ 8ed8a0 <netflix::ConsoleSink::~ConsoleSink()@@Base+0xe4>
  8ed83c:	e1a00004 	mov	r0, r4
  8ed840:	e7953003 	ldr	r3, [r5, r3]
  8ed844:	e2833008 	add	r3, r3, #8
  8ed848:	e5843000 	str	r3, [r4]
  8ed84c:	ebe58a8f 	bl	250290 <operator delete(void*)@plt>
  8ed850:	e59d2004 	ldr	r2, [sp, #4]
  8ed854:	e5963000 	ldr	r3, [r6]
  8ed858:	e1a00004 	mov	r0, r4
  8ed85c:	e1520003 	cmp	r2, r3
  8ed860:	1a000005 	bne	8ed87c <netflix::ConsoleSink::~ConsoleSink()@@Base+0xc0>
  8ed864:	e28dd008 	add	sp, sp, #8
  8ed868:	e8bd8070 	pop	{r4, r5, r6, pc}
  8ed86c:	e5903000 	ldr	r3, [r0]
  8ed870:	e593300c 	ldr	r3, [r3, #12]
  8ed874:	e12fff33 	blx	r3
  8ed878:	eaffffee 	b	8ed838 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x7c>
  8ed87c:	ebe58504 	bl	24ec94 <__stack_chk_fail@plt>
  8ed880:	e5902008 	ldr	r2, [r0, #8]
  8ed884:	e2423001 	sub	r3, r2, #1
  8ed888:	e5803008 	str	r3, [r0, #8]
  8ed88c:	eaffffe7 	b	8ed830 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x74>
  8ed890:	00139930 	andseq	r9, r3, r0, lsr r9
  8ed894:	00003440 	andeq	r3, r0, r0, asr #8
  8ed898:	00003d88 	andeq	r3, r0, r8, lsl #27
  8ed89c:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  8ed8a0:	00001838 	andeq	r1, r0, r8, lsr r8
  8ed8a4:	e59f3088 	ldr	r3, [pc, #136]	@ 8ed934 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x178>
  8ed8a8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  8ed8ac:	e2504000 	subs	r4, r0, #0
  8ed8b0:	e59f0080 	ldr	r0, [pc, #128]	@ 8ed938 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x17c>
  8ed8b4:	e08f3003 	add	r3, pc, r3
  8ed8b8:	e24dd00c 	sub	sp, sp, #12
  8ed8bc:	e1a08001 	mov	r8, r1
  8ed8c0:	e7939000 	ldr	r9, [r3, r0]
  8ed8c4:	e5993000 	ldr	r3, [r9]
  8ed8c8:	e58d3004 	str	r3, [sp, #4]
  8ed8cc:	0a000010 	beq	8ed914 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x158>
  8ed8d0:	e5927000 	ldr	r7, [r2]
  8ed8d4:	e517600c 	ldr	r6, [r7, #-12]
  8ed8d8:	e5940010 	ldr	r0, [r4, #16]
  8ed8dc:	e1a01007 	mov	r1, r7
  8ed8e0:	e510500c 	ldr	r5, [r0, #-12]
  8ed8e4:	e1550006 	cmp	r5, r6
  8ed8e8:	31a02005 	movcc	r2, r5
  8ed8ec:	21a02006 	movcs	r2, r6
  8ed8f0:	ebe58db1 	bl	250fbc <memcmp@plt>
  8ed8f4:	e3500000 	cmp	r0, #0
  8ed8f8:	00660005 	rsbeq	r0, r6, r5
  8ed8fc:	e3500000 	cmp	r0, #0
  8ed900:	a1a08004 	movge	r8, r4
  8ed904:	b594400c 	ldrlt	r4, [r4, #12]
  8ed908:	a5944008 	ldrge	r4, [r4, #8]
  8ed90c:	e3540000 	cmp	r4, #0
  8ed910:	1afffff0 	bne	8ed8d8 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x11c>
  8ed914:	e59d2004 	ldr	r2, [sp, #4]
  8ed918:	e1a00008 	mov	r0, r8
  8ed91c:	e5993000 	ldr	r3, [r9]
  8ed920:	e1520003 	cmp	r2, r3
  8ed924:	1a000001 	bne	8ed930 <netflix::ConsoleSink::~ConsoleSink()@@Base+0x174>
  8ed928:	e28dd00c 	add	sp, sp, #12
  8ed92c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  8ed930:	ebe584d7 	bl	24ec94 <__stack_chk_fail@plt>
  8ed934:	0013984c 	andseq	r9, r3, ip, asr #16
  8ed938:	00003440 	andeq	r3, r0, r0, asr #8

008ed93c <netflix::Log::tag(std::string const&, std::string const&)@@Base>:
  8ed93c:	e59f3070 	ldr	r3, [pc, #112]	@ 8ed9b4 <netflix::Log::tag(std::string const&, std::string const&)@@Base+0x78>
  8ed940:	e59fc070 	ldr	ip, [pc, #112]	@ 8ed9b8 <netflix::Log::tag(std::string const&, std::string const&)@@Base+0x7c>
  8ed944:	e08f3003 	add	r3, pc, r3
  8ed948:	e92d4070 	push	{r4, r5, r6, lr}
  8ed94c:	e1a06002 	mov	r6, r2
  8ed950:	e793500c 	ldr	r5, [r3, ip]
  8ed954:	e24dd008 	sub	sp, sp, #8
  8ed958:	e59f205c 	ldr	r2, [pc, #92]	@ 8ed9bc <netflix::Log::tag(std::string const&, std::string const&)@@Base+0x80>
  8ed95c:	e1a04000 	mov	r4, r0
  8ed960:	e595c000 	ldr	ip, [r5]
  8ed964:	e58dc004 	str	ip, [sp, #4]
  8ed968:	e7933002 	ldr	r3, [r3, r2]
  8ed96c:	e283300c 	add	r3, r3, #12
  8ed970:	e5803000 	str	r3, [r0]
  8ed974:	e5803004 	str	r3, [r0, #4]
  8ed978:	ebe58e46 	bl	251298 <std::string::assign(std::string const&)@plt>
  8ed97c:	e1a01006 	mov	r1, r6
  8ed980:	e2840004 	add	r0, r4, #4
  8ed984:	ebe58e43 	bl	251298 <std::string::assign(std::string const&)@plt>
  8ed988:	e59d2004 	ldr	r2, [sp, #4]
  8ed98c:	e1a00004 	mov	r0, r4
  8ed990:	e5953000 	ldr	r3, [r5]
  8ed994:	e1520003 	cmp	r2, r3
  8ed998:	1a000001 	bne	8ed9a4 <netflix::Log::tag(std::string const&, std::string const&)@@Base+0x68>
  8ed99c:	e28dd008 	add	sp, sp, #8
  8ed9a0:	e8bd8070 	pop	{r4, r5, r6, pc}
  8ed9a4:	ebe584ba 	bl	24ec94 <__stack_chk_fail@plt>
  8ed9a8:	e1a00004 	mov	r0, r4
  8ed9ac:	ebf19802 	bl	5539bc <netflix::Log::Stream::Tag::~Tag()@@Base>
  8ed9b0:	ebe5899d 	bl	25002c <__cxa_end_cleanup@plt>
  8ed9b4:	001397bc 			@ <UNDEFINED> instruction: 0x001397bc
  8ed9b8:	00003440 	andeq	r3, r0, r0, asr #8
  8ed9bc:	00002278 	andeq	r2, r0, r8, ror r2

008ed9c0 <netflix::Log::printf(char const*, ...)@@Base>:
  8ed9c0:	e92d000f 	push	{r0, r1, r2, r3}
  8ed9c4:	e3a01001 	mov	r1, #1
  8ed9c8:	e59f0064 	ldr	r0, [pc, #100]	@ 8eda34 <netflix::Log::printf(char const*, ...)@@Base+0x74>
  8ed9cc:	e92d4030 	push	{r4, r5, lr}
  8ed9d0:	e08f0000 	add	r0, pc, r0
  8ed9d4:	e59f405c 	ldr	r4, [pc, #92]	@ 8eda38 <netflix::Log::printf(char const*, ...)@@Base+0x78>
  8ed9d8:	e24dd00c 	sub	sp, sp, #12
  8ed9dc:	e28dc01c 	add	ip, sp, #28
  8ed9e0:	e59fe054 	ldr	lr, [pc, #84]	@ 8eda3c <netflix::Log::printf(char const*, ...)@@Base+0x7c>
  8ed9e4:	e59d2018 	ldr	r2, [sp, #24]
  8ed9e8:	e7904004 	ldr	r4, [r0, r4]
  8ed9ec:	e1a0300c 	mov	r3, ip
  8ed9f0:	e58dc000 	str	ip, [sp]
  8ed9f4:	e594c000 	ldr	ip, [r4]
  8ed9f8:	e58dc004 	str	ip, [sp, #4]
  8ed9fc:	e790500e 	ldr	r5, [r0, lr]
  8eda00:	e5950000 	ldr	r0, [r5]
  8eda04:	ebe589df 	bl	250188 <__vfprintf_chk@plt>
  8eda08:	e5950000 	ldr	r0, [r5]
  8eda0c:	ebe58c47 	bl	250b30 <fflush@plt>
  8eda10:	e59d2004 	ldr	r2, [sp, #4]
  8eda14:	e5943000 	ldr	r3, [r4]
  8eda18:	e1520003 	cmp	r2, r3
  8eda1c:	1a000003 	bne	8eda30 <netflix::Log::printf(char const*, ...)@@Base+0x70>
  8eda20:	e28dd00c 	add	sp, sp, #12
  8eda24:	e8bd4030 	pop	{r4, r5, lr}
  8eda28:	e28dd010 	add	sp, sp, #16
  8eda2c:	e12fff1e 	bx	lr
  8eda30:	ebe58497 	bl	24ec94 <__stack_chk_fail@plt>
  8eda34:	00139730 	andseq	r9, r3, r0, lsr r7
  8eda38:	00003440 	andeq	r3, r0, r0, asr #8
  8eda3c:	00002ce8 	andeq	r2, r0, r8, ror #25

008eda40 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base>:
  8eda40:	e59f318c 	ldr	r3, [pc, #396]	@ 8edbd4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x194>
  8eda44:	e2400005 	sub	r0, r0, #5
  8eda48:	e59f2188 	ldr	r2, [pc, #392]	@ 8edbd8 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x198>
  8eda4c:	e08f3003 	add	r3, pc, r3
  8eda50:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8eda54:	e24dd00c 	sub	sp, sp, #12
  8eda58:	e7933002 	ldr	r3, [r3, r2]
  8eda5c:	e5932000 	ldr	r2, [r3]
  8eda60:	e58d2004 	str	r2, [sp, #4]
  8eda64:	e3500037 	cmp	r0, #55	@ 0x37
  8eda68:	908ff100 	addls	pc, pc, r0, lsl #2
  8eda6c:	ea000054 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda70:	ea000050 	b	8edbb8 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x178>
  8eda74:	ea000052 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda78:	ea000051 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda7c:	ea000050 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda80:	ea00004f 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda84:	ea000031 	b	8edb50 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x110>
  8eda88:	ea00004d 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda8c:	ea00004c 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda90:	ea00004b 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda94:	ea00004a 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda98:	ea000049 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8eda9c:	ea000048 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaa0:	ea000047 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaa4:	ea000046 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaa8:	ea000045 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaac:	ea00002f 	b	8edb70 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x130>
  8edab0:	ea000043 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edab4:	ea000042 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edab8:	ea000041 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edabc:	ea000040 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edac0:	ea00003f 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edac4:	ea00003e 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edac8:	ea00003d 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edacc:	ea00003c 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edad0:	ea00003b 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edad4:	ea000028 	b	8edb7c <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x13c>
  8edad8:	ea000039 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edadc:	ea000038 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edae0:	ea000037 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edae4:	ea000036 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edae8:	ea000035 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaec:	ea000034 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaf0:	ea000033 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaf4:	ea000032 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edaf8:	ea000031 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edafc:	ea000021 	b	8edb88 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x148>
  8edb00:	ea00002f 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb04:	ea00002e 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb08:	ea00002d 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb0c:	ea00002c 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb10:	ea00002b 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb14:	ea00002a 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb18:	ea000029 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb1c:	ea000028 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb20:	ea000027 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb24:	ea00001a 	b	8edb94 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x154>
  8edb28:	ea000025 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb2c:	ea000024 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb30:	ea000023 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb34:	ea000022 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb38:	ea000018 	b	8edba0 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x160>
  8edb3c:	ea000020 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb40:	ea00001f 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb44:	ea00001e 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb48:	ea00001d 	b	8edbc4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x184>
  8edb4c:	ea000016 	b	8edbac <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x16c>
  8edb50:	e59f0084 	ldr	r0, [pc, #132]	@ 8edbdc <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x19c>
  8edb54:	e08f0000 	add	r0, pc, r0
  8edb58:	e59d2004 	ldr	r2, [sp, #4]
  8edb5c:	e5933000 	ldr	r3, [r3]
  8edb60:	e1520003 	cmp	r2, r3
  8edb64:	1a000019 	bne	8edbd0 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x190>
  8edb68:	e28dd00c 	add	sp, sp, #12
  8edb6c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8edb70:	e59f0068 	ldr	r0, [pc, #104]	@ 8edbe0 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1a0>
  8edb74:	e08f0000 	add	r0, pc, r0
  8edb78:	eafffff6 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edb7c:	e59f0060 	ldr	r0, [pc, #96]	@ 8edbe4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1a4>
  8edb80:	e08f0000 	add	r0, pc, r0
  8edb84:	eafffff3 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edb88:	e59f0058 	ldr	r0, [pc, #88]	@ 8edbe8 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1a8>
  8edb8c:	e08f0000 	add	r0, pc, r0
  8edb90:	eafffff0 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edb94:	e59f0050 	ldr	r0, [pc, #80]	@ 8edbec <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1ac>
  8edb98:	e08f0000 	add	r0, pc, r0
  8edb9c:	eaffffed 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edba0:	e59f0048 	ldr	r0, [pc, #72]	@ 8edbf0 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1b0>
  8edba4:	e08f0000 	add	r0, pc, r0
  8edba8:	eaffffea 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edbac:	e59f0040 	ldr	r0, [pc, #64]	@ 8edbf4 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1b4>
  8edbb0:	e08f0000 	add	r0, pc, r0
  8edbb4:	eaffffe7 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edbb8:	e59f0038 	ldr	r0, [pc, #56]	@ 8edbf8 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1b8>
  8edbbc:	e08f0000 	add	r0, pc, r0
  8edbc0:	eaffffe4 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edbc4:	e59f0030 	ldr	r0, [pc, #48]	@ 8edbfc <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x1bc>
  8edbc8:	e08f0000 	add	r0, pc, r0
  8edbcc:	eaffffe1 	b	8edb58 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base+0x118>
  8edbd0:	ebe5842f 	bl	24ec94 <__stack_chk_fail@plt>
  8edbd4:	001396b4 			@ <UNDEFINED> instruction: 0x001396b4
  8edbd8:	00003440 	andeq	r3, r0, r0, asr #8
  8edbdc:	000ace08 	andeq	ip, sl, r8, lsl #28
  8edbe0:	00056ca4 	andeq	r6, r5, r4, lsr #25
  8edbe4:	00062e6c 	andeq	r2, r6, ip, ror #28
  8edbe8:	000587b0 			@ <UNDEFINED> instruction: 0x000587b0
  8edbec:	000b1224 	andeq	r1, fp, r4, lsr #4
  8edbf0:	00062cc4 	andeq	r2, r6, r4, asr #25
  8edbf4:	0007827c 	andeq	r8, r7, ip, ror r2
  8edbf8:	0005657c 	andeq	r6, r5, ip, ror r5
  8edbfc:	000a61c4 	andeq	r6, sl, r4, asr #3

008edc00 <netflix::Log::stringToLogLevel(char const*)@@Base>:
  8edc00:	e59f3118 	ldr	r3, [pc, #280]	@ 8edd20 <netflix::Log::stringToLogLevel(char const*)@@Base+0x120>
  8edc04:	e59f2118 	ldr	r2, [pc, #280]	@ 8edd24 <netflix::Log::stringToLogLevel(char const*)@@Base+0x124>
  8edc08:	e08f3003 	add	r3, pc, r3
  8edc0c:	e59f1114 	ldr	r1, [pc, #276]	@ 8edd28 <netflix::Log::stringToLogLevel(char const*)@@Base+0x128>
  8edc10:	e92d4030 	push	{r4, r5, lr}
  8edc14:	e24dd00c 	sub	sp, sp, #12
  8edc18:	e7934002 	ldr	r4, [r3, r2]
  8edc1c:	e08f1001 	add	r1, pc, r1
  8edc20:	e1a05000 	mov	r5, r0
  8edc24:	e5943000 	ldr	r3, [r4]
  8edc28:	e58d3004 	str	r3, [sp, #4]
  8edc2c:	ebe58ff4 	bl	251c04 <strcasecmp@plt>
  8edc30:	e3500000 	cmp	r0, #0
  8edc34:	03a00005 	moveq	r0, #5
  8edc38:	1a000005 	bne	8edc54 <netflix::Log::stringToLogLevel(char const*)@@Base+0x54>
  8edc3c:	e59d2004 	ldr	r2, [sp, #4]
  8edc40:	e5943000 	ldr	r3, [r4]
  8edc44:	e1520003 	cmp	r2, r3
  8edc48:	1a000033 	bne	8edd1c <netflix::Log::stringToLogLevel(char const*)@@Base+0x11c>
  8edc4c:	e28dd00c 	add	sp, sp, #12
  8edc50:	e8bd8030 	pop	{r4, r5, pc}
  8edc54:	e59f10d0 	ldr	r1, [pc, #208]	@ 8edd2c <netflix::Log::stringToLogLevel(char const*)@@Base+0x12c>
  8edc58:	e1a00005 	mov	r0, r5
  8edc5c:	e08f1001 	add	r1, pc, r1
  8edc60:	ebe58fe7 	bl	251c04 <strcasecmp@plt>
  8edc64:	e3500000 	cmp	r0, #0
  8edc68:	03a0000a 	moveq	r0, #10
  8edc6c:	0afffff2 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edc70:	e59f10b8 	ldr	r1, [pc, #184]	@ 8edd30 <netflix::Log::stringToLogLevel(char const*)@@Base+0x130>
  8edc74:	e1a00005 	mov	r0, r5
  8edc78:	e08f1001 	add	r1, pc, r1
  8edc7c:	ebe58fe0 	bl	251c04 <strcasecmp@plt>
  8edc80:	e3500000 	cmp	r0, #0
  8edc84:	03a00014 	moveq	r0, #20
  8edc88:	0affffeb 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edc8c:	e59f10a0 	ldr	r1, [pc, #160]	@ 8edd34 <netflix::Log::stringToLogLevel(char const*)@@Base+0x134>
  8edc90:	e1a00005 	mov	r0, r5
  8edc94:	e08f1001 	add	r1, pc, r1
  8edc98:	ebe58fd9 	bl	251c04 <strcasecmp@plt>
  8edc9c:	e3500000 	cmp	r0, #0
  8edca0:	03a0001e 	moveq	r0, #30
  8edca4:	0affffe4 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edca8:	e59f1088 	ldr	r1, [pc, #136]	@ 8edd38 <netflix::Log::stringToLogLevel(char const*)@@Base+0x138>
  8edcac:	e1a00005 	mov	r0, r5
  8edcb0:	e08f1001 	add	r1, pc, r1
  8edcb4:	ebe58fd2 	bl	251c04 <strcasecmp@plt>
  8edcb8:	e3500000 	cmp	r0, #0
  8edcbc:	03a00028 	moveq	r0, #40	@ 0x28
  8edcc0:	0affffdd 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edcc4:	e59f1070 	ldr	r1, [pc, #112]	@ 8edd3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x13c>
  8edcc8:	e1a00005 	mov	r0, r5
  8edccc:	e08f1001 	add	r1, pc, r1
  8edcd0:	ebe58fcb 	bl	251c04 <strcasecmp@plt>
  8edcd4:	e3500000 	cmp	r0, #0
  8edcd8:	03a00032 	moveq	r0, #50	@ 0x32
  8edcdc:	0affffd6 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edce0:	e59f1058 	ldr	r1, [pc, #88]	@ 8edd40 <netflix::Log::stringToLogLevel(char const*)@@Base+0x140>
  8edce4:	e1a00005 	mov	r0, r5
  8edce8:	e08f1001 	add	r1, pc, r1
  8edcec:	ebe58fc4 	bl	251c04 <strcasecmp@plt>
  8edcf0:	e3500000 	cmp	r0, #0
  8edcf4:	03a00037 	moveq	r0, #55	@ 0x37
  8edcf8:	0affffcf 	beq	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edcfc:	e59f1040 	ldr	r1, [pc, #64]	@ 8edd44 <netflix::Log::stringToLogLevel(char const*)@@Base+0x144>
  8edd00:	e1a00005 	mov	r0, r5
  8edd04:	e08f1001 	add	r1, pc, r1
  8edd08:	ebe58fbd 	bl	251c04 <strcasecmp@plt>
  8edd0c:	e3500000 	cmp	r0, #0
  8edd10:	03a0003c 	moveq	r0, #60	@ 0x3c
  8edd14:	13a00000 	movne	r0, #0
  8edd18:	eaffffc7 	b	8edc3c <netflix::Log::stringToLogLevel(char const*)@@Base+0x3c>
  8edd1c:	ebe583dc 	bl	24ec94 <__stack_chk_fail@plt>
  8edd20:	001394f8 			@ <UNDEFINED> instruction: 0x001394f8
  8edd24:	00003440 	andeq	r3, r0, r0, asr #8
  8edd28:	0005651c 	andeq	r6, r5, ip, lsl r5
  8edd2c:	000acd00 	andeq	ip, sl, r0, lsl #26
  8edd30:	00056ba0 	andeq	r6, r5, r0, lsr #23
  8edd34:	00062d58 	andeq	r2, r6, r8, asr sp
  8edd38:	0005868c 	andeq	r8, r5, ip, lsl #13
  8edd3c:	000b10f0 	strdeq	r1, [fp], -r0
  8edd40:	00062b80 	andeq	r2, r6, r0, lsl #23
  8edd44:	00078128 	andeq	r8, r7, r8, lsr #2

008edd48 <netflix::Log::mutex()@@Base>:
  8edd48:	e59f303c 	ldr	r3, [pc, #60]	@ 8edd8c <netflix::Log::mutex()@@Base+0x44>
  8edd4c:	e59f203c 	ldr	r2, [pc, #60]	@ 8edd90 <netflix::Log::mutex()@@Base+0x48>
  8edd50:	e08f3003 	add	r3, pc, r3
  8edd54:	e59f0038 	ldr	r0, [pc, #56]	@ 8edd94 <netflix::Log::mutex()@@Base+0x4c>
  8edd58:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8edd5c:	e24dd00c 	sub	sp, sp, #12
  8edd60:	e7933002 	ldr	r3, [r3, r2]
  8edd64:	e08f0000 	add	r0, pc, r0
  8edd68:	e5932000 	ldr	r2, [r3]
  8edd6c:	e58d2004 	str	r2, [sp, #4]
  8edd70:	e59d2004 	ldr	r2, [sp, #4]
  8edd74:	e5933000 	ldr	r3, [r3]
  8edd78:	e1520003 	cmp	r2, r3
  8edd7c:	1a000001 	bne	8edd88 <netflix::Log::mutex()@@Base+0x40>
  8edd80:	e28dd00c 	add	sp, sp, #12
  8edd84:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8edd88:	ebe583c1 	bl	24ec94 <__stack_chk_fail@plt>
  8edd8c:	001393b0 			@ <UNDEFINED> instruction: 0x001393b0
  8edd90:	00003440 	andeq	r3, r0, r0, asr #8
  8edd94:	0014d3ec 	andseq	sp, r4, ip, ror #7

008edd98 <netflix::TraceAreas::hasGroup(std::string const&)@@Base>:
  8edd98:	e59f30d8 	ldr	r3, [pc, #216]	@ 8ede78 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xe0>
  8edd9c:	e3a01001 	mov	r1, #1
  8edda0:	e59f20d4 	ldr	r2, [pc, #212]	@ 8ede7c <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xe4>
  8edda4:	e08f3003 	add	r3, pc, r3
  8edda8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8eddac:	e24dd00c 	sub	sp, sp, #12
  8eddb0:	e7938002 	ldr	r8, [r3, r2]
  8eddb4:	e1a0a000 	mov	sl, r0
  8eddb8:	e59f40c0 	ldr	r4, [pc, #192]	@ 8ede80 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xe8>
  8eddbc:	e5983000 	ldr	r3, [r8]
  8eddc0:	e08f4004 	add	r4, pc, r4
  8eddc4:	e1a00004 	mov	r0, r4
  8eddc8:	e58d3004 	str	r3, [sp, #4]
  8eddcc:	eb003ced 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8eddd0:	e5943024 	ldr	r3, [r4, #36]	@ 0x24
  8eddd4:	e2839004 	add	r9, r3, #4
  8eddd8:	e5934008 	ldr	r4, [r3, #8]
  8edddc:	e3540000 	cmp	r4, #0
  8edde0:	0a000018 	beq	8ede48 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xb0>
  8edde4:	e59a6000 	ldr	r6, [sl]
  8edde8:	e1a07009 	mov	r7, r9
  8eddec:	e516b00c 	ldr	fp, [r6, #-12]
  8eddf0:	e5940010 	ldr	r0, [r4, #16]
  8eddf4:	e1a01006 	mov	r1, r6
  8eddf8:	e510500c 	ldr	r5, [r0, #-12]
  8eddfc:	e15b0005 	cmp	fp, r5
  8ede00:	31a0200b 	movcc	r2, fp
  8ede04:	21a02005 	movcs	r2, r5
  8ede08:	ebe58c6b 	bl	250fbc <memcmp@plt>
  8ede0c:	e3500000 	cmp	r0, #0
  8ede10:	006b0005 	rsbeq	r0, fp, r5
  8ede14:	e3500000 	cmp	r0, #0
  8ede18:	a1a07004 	movge	r7, r4
  8ede1c:	b594400c 	ldrlt	r4, [r4, #12]
  8ede20:	a5944008 	ldrge	r4, [r4, #8]
  8ede24:	e3540000 	cmp	r4, #0
  8ede28:	1afffff0 	bne	8eddf0 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0x58>
  8ede2c:	e1590007 	cmp	r9, r7
  8ede30:	0a000004 	beq	8ede48 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xb0>
  8ede34:	e1a0000a 	mov	r0, sl
  8ede38:	e2871010 	add	r1, r7, #16
  8ede3c:	ebe5855c 	bl	24f3b4 <std::string::compare(std::string const&) const@plt>
  8ede40:	e1e04000 	mvn	r4, r0
  8ede44:	e1a04fa4 	lsr	r4, r4, #31
  8ede48:	e59f0034 	ldr	r0, [pc, #52]	@ 8ede84 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xec>
  8ede4c:	e3a01001 	mov	r1, #1
  8ede50:	e08f0000 	add	r0, pc, r0
  8ede54:	eb003d00 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ede58:	e59d2004 	ldr	r2, [sp, #4]
  8ede5c:	e5983000 	ldr	r3, [r8]
  8ede60:	e1a00004 	mov	r0, r4
  8ede64:	e1520003 	cmp	r2, r3
  8ede68:	1a000001 	bne	8ede74 <netflix::TraceAreas::hasGroup(std::string const&)@@Base+0xdc>
  8ede6c:	e28dd00c 	add	sp, sp, #12
  8ede70:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8ede74:	ebe58386 	bl	24ec94 <__stack_chk_fail@plt>
  8ede78:	0013935c 	andseq	r9, r3, ip, asr r3
  8ede7c:	00003440 	andeq	r3, r0, r0, asr #8
  8ede80:	0014d390 	mulseq	r4, r0, r3
  8ede84:	0014d300 	andseq	sp, r4, r0, lsl #6

008ede88 <netflix::TraceAreas::count()@@Base>:
  8ede88:	e59f306c 	ldr	r3, [pc, #108]	@ 8edefc <netflix::TraceAreas::count()@@Base+0x74>
  8ede8c:	e3a01001 	mov	r1, #1
  8ede90:	e59f2068 	ldr	r2, [pc, #104]	@ 8edf00 <netflix::TraceAreas::count()@@Base+0x78>
  8ede94:	e08f3003 	add	r3, pc, r3
  8ede98:	e92d4030 	push	{r4, r5, lr}
  8ede9c:	e24dd00c 	sub	sp, sp, #12
  8edea0:	e7934002 	ldr	r4, [r3, r2]
  8edea4:	e59f5058 	ldr	r5, [pc, #88]	@ 8edf04 <netflix::TraceAreas::count()@@Base+0x7c>
  8edea8:	e5943000 	ldr	r3, [r4]
  8edeac:	e08f5005 	add	r5, pc, r5
  8edeb0:	e1a00005 	mov	r0, r5
  8edeb4:	e58d3004 	str	r3, [sp, #4]
  8edeb8:	eb003cb2 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8edebc:	e5950028 	ldr	r0, [r5, #40]	@ 0x28
  8edec0:	e3a01001 	mov	r1, #1
  8edec4:	e3500000 	cmp	r0, #0
  8edec8:	15905014 	ldrne	r5, [r0, #20]
  8edecc:	01a05000 	moveq	r5, r0
  8eded0:	e59f0030 	ldr	r0, [pc, #48]	@ 8edf08 <netflix::TraceAreas::count()@@Base+0x80>
  8eded4:	e08f0000 	add	r0, pc, r0
  8eded8:	eb003cdf 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ededc:	e59d2004 	ldr	r2, [sp, #4]
  8edee0:	e5943000 	ldr	r3, [r4]
  8edee4:	e1a00005 	mov	r0, r5
  8edee8:	e1520003 	cmp	r2, r3
  8edeec:	1a000001 	bne	8edef8 <netflix::TraceAreas::count()@@Base+0x70>
  8edef0:	e28dd00c 	add	sp, sp, #12
  8edef4:	e8bd8030 	pop	{r4, r5, pc}
  8edef8:	ebe58365 	bl	24ec94 <__stack_chk_fail@plt>
  8edefc:	0013926c 	andseq	r9, r3, ip, ror #4
  8edf00:	00003440 	andeq	r3, r0, r0, asr #8
  8edf04:	0014d2a4 	andseq	sp, r4, r4, lsr #5
  8edf08:	0014d27c 	andseq	sp, r4, ip, ror r2

008edf0c <netflix::TraceAreas::TraceAreas()@@Base>:
  8edf0c:	e59f105c 	ldr	r1, [pc, #92]	@ 8edf70 <netflix::TraceAreas::TraceAreas()@@Base+0x64>
  8edf10:	e280c010 	add	ip, r0, #16
  8edf14:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8edf18:	e08f1001 	add	r1, pc, r1
  8edf1c:	e59fe050 	ldr	lr, [pc, #80]	@ 8edf74 <netflix::TraceAreas::TraceAreas()@@Base+0x68>
  8edf20:	e24dd00c 	sub	sp, sp, #12
  8edf24:	e3a02000 	mov	r2, #0
  8edf28:	e791100e 	ldr	r1, [r1, lr]
  8edf2c:	e580c018 	str	ip, [r0, #24]
  8edf30:	e580c01c 	str	ip, [r0, #28]
  8edf34:	e591c000 	ldr	ip, [r1]
  8edf38:	e5802004 	str	r2, [r0, #4]
  8edf3c:	e5802000 	str	r2, [r0]
  8edf40:	e58dc004 	str	ip, [sp, #4]
  8edf44:	e59dc004 	ldr	ip, [sp, #4]
  8edf48:	e5911000 	ldr	r1, [r1]
  8edf4c:	e5802008 	str	r2, [r0, #8]
  8edf50:	e15c0001 	cmp	ip, r1
  8edf54:	e5802010 	str	r2, [r0, #16]
  8edf58:	e5802014 	str	r2, [r0, #20]
  8edf5c:	e5802020 	str	r2, [r0, #32]
  8edf60:	1a000001 	bne	8edf6c <netflix::TraceAreas::TraceAreas()@@Base+0x60>
  8edf64:	e28dd00c 	add	sp, sp, #12
  8edf68:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8edf6c:	ebe58348 	bl	24ec94 <__stack_chk_fail@plt>
  8edf70:	001391e8 	andseq	r9, r3, r8, ror #3
  8edf74:	00003440 	andeq	r3, r0, r0, asr #8

008edf78 <netflix::TraceAreas::spec() const@@Base>:
  8edf78:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8edf7c:	e24dd024 	sub	sp, sp, #36	@ 0x24
  8edf80:	e59f61b0 	ldr	r6, [pc, #432]	@ 8ee138 <netflix::TraceAreas::spec() const@@Base+0x1c0>
  8edf84:	e1a05000 	mov	r5, r0
  8edf88:	e59f31ac 	ldr	r3, [pc, #428]	@ 8ee13c <netflix::TraceAreas::spec() const@@Base+0x1c4>
  8edf8c:	e1a04001 	mov	r4, r1
  8edf90:	e08f6006 	add	r6, pc, r6
  8edf94:	e59f01a4 	ldr	r0, [pc, #420]	@ 8ee140 <netflix::TraceAreas::spec() const@@Base+0x1c8>
  8edf98:	e3a01001 	mov	r1, #1
  8edf9c:	e2848010 	add	r8, r4, #16
  8edfa0:	e7963003 	ldr	r3, [r6, r3]
  8edfa4:	e08f0000 	add	r0, pc, r0
  8edfa8:	e58d3004 	str	r3, [sp, #4]
  8edfac:	e5933000 	ldr	r3, [r3]
  8edfb0:	e58d301c 	str	r3, [sp, #28]
  8edfb4:	eb003c73 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8edfb8:	e59f3184 	ldr	r3, [pc, #388]	@ 8ee144 <netflix::TraceAreas::spec() const@@Base+0x1cc>
  8edfbc:	e5944018 	ldr	r4, [r4, #24]
  8edfc0:	e7963003 	ldr	r3, [r6, r3]
  8edfc4:	e1540008 	cmp	r4, r8
  8edfc8:	e58d3000 	str	r3, [sp]
  8edfcc:	e283300c 	add	r3, r3, #12
  8edfd0:	e5853000 	str	r3, [r5]
  8edfd4:	0a000035 	beq	8ee0b0 <netflix::TraceAreas::spec() const@@Base+0x138>
  8edfd8:	e59fb168 	ldr	fp, [pc, #360]	@ 8ee148 <netflix::TraceAreas::spec() const@@Base+0x1d0>
  8edfdc:	e28d7014 	add	r7, sp, #20
  8edfe0:	e59fa164 	ldr	sl, [pc, #356]	@ 8ee14c <netflix::TraceAreas::spec() const@@Base+0x1d4>
  8edfe4:	e28d900c 	add	r9, sp, #12
  8edfe8:	e08fb00b 	add	fp, pc, fp
  8edfec:	e08fa00a 	add	sl, pc, sl
  8edff0:	ea000000 	b	8edff8 <netflix::TraceAreas::spec() const@@Base+0x80>
  8edff4:	e5953000 	ldr	r3, [r5]
  8edff8:	e513300c 	ldr	r3, [r3, #-12]
  8edffc:	e3530000 	cmp	r3, #0
