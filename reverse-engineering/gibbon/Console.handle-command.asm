
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008ae000 <netflix::Console::handleHelp(std::string const&)@@Base+0x1c8>:
  8ae000:	e1a00004 	mov	r0, r4
  8ae004:	e58d3020 	str	r3, [sp, #32]
  8ae008:	e1a01009 	mov	r1, r9
  8ae00c:	e3a02000 	mov	r2, #0
  8ae010:	e3a03000 	mov	r3, #0
  8ae014:	e59cc010 	ldr	ip, [ip, #16]
  8ae018:	e12fff3c 	blx	ip
  8ae01c:	e28d0014 	add	r0, sp, #20
  8ae020:	ebe74dad 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8ae024:	e59d0010 	ldr	r0, [sp, #16]
  8ae028:	e1a0100d 	mov	r1, sp
  8ae02c:	e240000c 	sub	r0, r0, #12
  8ae030:	ebe68758 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8ae034:	e59d000c 	ldr	r0, [sp, #12]
  8ae038:	e1a0100d 	mov	r1, sp
  8ae03c:	e240000c 	sub	r0, r0, #12
  8ae040:	ebe68754 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8ae044:	e59d0008 	ldr	r0, [sp, #8]
  8ae048:	e3500000 	cmp	r0, #0
  8ae04c:	0affffd4 	beq	8adfa4 <netflix::Console::handleHelp(std::string const&)@@Base+0x16c>
  8ae050:	ebe6f247 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae054:	eaffffd2 	b	8adfa4 <netflix::Console::handleHelp(std::string const&)@@Base+0x16c>
  8ae058:	e2864080 	add	r4, r6, #128	@ 0x80
  8ae05c:	e1a00006 	mov	r0, r6
  8ae060:	e3a02000 	mov	r2, #0
  8ae064:	e1a01004 	mov	r1, r4
  8ae068:	eb00395e 	bl	8bc5e8 <void std::__insertion_sort<__gnu_cxx::__normal_iterator<std::shared_ptr<netflix::Console::Command>*, std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > > >, pred>(__gnu_cxx::__normal_iterator<std::shared_ptr<netflix::Console::Command>*, std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > > >, __gnu_cxx::__normal_iterator<std::shared_ptr<netflix::Console::Command>*, std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > > >, pred)@@Base>
  8ae06c:	e1550004 	cmp	r5, r4
  8ae070:	0affff9e 	beq	8adef0 <netflix::Console::handleHelp(std::string const&)@@Base+0xb8>
  8ae074:	e1a00004 	mov	r0, r4
  8ae078:	e3a01000 	mov	r1, #0
  8ae07c:	e2844008 	add	r4, r4, #8
  8ae080:	eb00390b 	bl	8bc4b4 <void std::__unguarded_linear_insert<__gnu_cxx::__normal_iterator<std::shared_ptr<netflix::Console::Command>*, std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > > >, pred>(__gnu_cxx::__normal_iterator<std::shared_ptr<netflix::Console::Command>*, std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > > >, pred)@@Base>
  8ae084:	e1550004 	cmp	r5, r4
  8ae088:	1afffff9 	bne	8ae074 <netflix::Console::handleHelp(std::string const&)@@Base+0x23c>
  8ae08c:	eaffff97 	b	8adef0 <netflix::Console::handleHelp(std::string const&)@@Base+0xb8>
  8ae090:	e1a06004 	mov	r6, r4
  8ae094:	eaffffbe 	b	8adf94 <netflix::Console::handleHelp(std::string const&)@@Base+0x15c>
  8ae098:	e1a00009 	mov	r0, r9
  8ae09c:	ebe7ee8b 	bl	2a9ad0 <netflix::Console::Command::Arguments::~Arguments()@@Base>
  8ae0a0:	ebe687e1 	bl	25002c <__cxa_end_cleanup@plt>
  8ae0a4:	ebe682fa 	bl	24ec94 <__stack_chk_fail@plt>
  8ae0a8:	e1a00005 	mov	r0, r5
  8ae0ac:	e3a01001 	mov	r1, #1
  8ae0b0:	eb013c69 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ae0b4:	e1a00009 	mov	r0, r9
  8ae0b8:	ebf22c8f 	bl	5392fc <std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > >::~vector()@@Base>
  8ae0bc:	ebe687da 	bl	25002c <__cxa_end_cleanup@plt>
  8ae0c0:	eafffffb 	b	8ae0b4 <netflix::Console::handleHelp(std::string const&)@@Base+0x27c>
  8ae0c4:	001792b4 			@ <UNDEFINED> instruction: 0x001792b4
  8ae0c8:	00003440 	andeq	r3, r0, r0, asr #8
  8ae0cc:	000eda10 	andeq	sp, lr, r0, lsl sl
  8ae0d0:	00001b7c 	andeq	r1, r0, ip, ror fp
  8ae0d4:	00002278 	andeq	r2, r0, r8, ror r2

008ae0d8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base>:
  8ae0d8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8ae0dc:	e1a06001 	mov	r6, r1
  8ae0e0:	e59f7994 	ldr	r7, [pc, #2452]	@ 8aea7c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9a4>
  8ae0e4:	e24dd06c 	sub	sp, sp, #108	@ 0x6c
  8ae0e8:	e59f1990 	ldr	r1, [pc, #2448]	@ 8aea80 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9a8>
  8ae0ec:	e1a04002 	mov	r4, r2
  8ae0f0:	e08f7007 	add	r7, pc, r7
  8ae0f4:	e58d000c 	str	r0, [sp, #12]
  8ae0f8:	e5960008 	ldr	r0, [r6, #8]
  8ae0fc:	e7971001 	ldr	r1, [r7, r1]
  8ae100:	e510200c 	ldr	r2, [r0, #-12]
  8ae104:	e5913000 	ldr	r3, [r1]
  8ae108:	e3520000 	cmp	r2, #0
  8ae10c:	e58d1008 	str	r1, [sp, #8]
  8ae110:	e58d3064 	str	r3, [sp, #100]	@ 0x64
  8ae114:	03a03001 	moveq	r3, #1
  8ae118:	058d3010 	streq	r3, [sp, #16]
  8ae11c:	1a000007 	bne	8ae140 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x68>
  8ae120:	e59dc008 	ldr	ip, [sp, #8]
  8ae124:	e59d2064 	ldr	r2, [sp, #100]	@ 0x64
  8ae128:	e59d0010 	ldr	r0, [sp, #16]
  8ae12c:	e59c3000 	ldr	r3, [ip]
  8ae130:	e1520003 	cmp	r2, r3
  8ae134:	1a000203 	bne	8ae948 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x870>
  8ae138:	e28dd06c 	add	sp, sp, #108	@ 0x6c
  8ae13c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8ae140:	e59d000c 	ldr	r0, [sp, #12]
  8ae144:	e5908008 	ldr	r8, [r0, #8]
  8ae148:	e3580000 	cmp	r8, #0
  8ae14c:	0a0001fe 	beq	8ae94c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x874>
  8ae150:	e5982004 	ldr	r2, [r8, #4]
  8ae154:	e2889004 	add	r9, r8, #4
  8ae158:	e1a03002 	mov	r3, r2
  8ae15c:	e58d2054 	str	r2, [sp, #84]	@ 0x54
  8ae160:	e3530000 	cmp	r3, #0
  8ae164:	0a0001f8 	beq	8ae94c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x874>
  8ae168:	e28d1054 	add	r1, sp, #84	@ 0x54
  8ae16c:	e59d2054 	ldr	r2, [sp, #84]	@ 0x54
  8ae170:	e58d1018 	str	r1, [sp, #24]
  8ae174:	e2833001 	add	r3, r3, #1
  8ae178:	f57ff05f 	dmb	sy
  8ae17c:	e1991f9f 	ldrex	r1, [r9]
  8ae180:	e1510002 	cmp	r1, r2
  8ae184:	1a000002 	bne	8ae194 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0xbc>
  8ae188:	e189cf93 	strex	ip, r3, [r9]
  8ae18c:	e35c0000 	cmp	ip, #0
  8ae190:	f57ff05f 	dmb	sy
  8ae194:	03a03001 	moveq	r3, #1
  8ae198:	13a03000 	movne	r3, #0
  8ae19c:	158d1054 	strne	r1, [sp, #84]	@ 0x54
  8ae1a0:	e3530000 	cmp	r3, #0
  8ae1a4:	0a0001e9 	beq	8ae950 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x878>
  8ae1a8:	e59d000c 	ldr	r0, [sp, #12]
  8ae1ac:	e58d3010 	str	r3, [sp, #16]
  8ae1b0:	e590a004 	ldr	sl, [r0, #4]
  8ae1b4:	eb015494 	bl	90340c <netflix::Thread::currentThreadPtr()@@Base>
  8ae1b8:	e5962000 	ldr	r2, [r6]
  8ae1bc:	e3a03000 	mov	r3, #0
  8ae1c0:	e58d3054 	str	r3, [sp, #84]	@ 0x54
  8ae1c4:	e1a0b000 	mov	fp, r0
  8ae1c8:	e58d3058 	str	r3, [sp, #88]	@ 0x58
  8ae1cc:	e58d305c 	str	r3, [sp, #92]	@ 0x5c
  8ae1d0:	e58d3060 	str	r3, [sp, #96]	@ 0x60
  8ae1d4:	e5923010 	ldr	r3, [r2, #16]
  8ae1d8:	e3530000 	cmp	r3, #0
  8ae1dc:	0a000091 	beq	8ae428 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x350>
  8ae1e0:	e59f389c 	ldr	r3, [pc, #2204]	@ 8aea84 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9ac>
  8ae1e4:	e58da054 	str	sl, [sp, #84]	@ 0x54
  8ae1e8:	e797a003 	ldr	sl, [r7, r3]
  8ae1ec:	e35a0000 	cmp	sl, #0
  8ae1f0:	0a000210 	beq	8aea38 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x960>
  8ae1f4:	f57ff05f 	dmb	sy
  8ae1f8:	e1991f9f 	ldrex	r1, [r9]
  8ae1fc:	e2811001 	add	r1, r1, #1
  8ae200:	e1892f91 	strex	r2, r1, [r9]
  8ae204:	e3520000 	cmp	r2, #0
  8ae208:	1afffffa 	bne	8ae1f8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x120>
  8ae20c:	f57ff05f 	dmb	sy
  8ae210:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  8ae214:	e3500000 	cmp	r0, #0
  8ae218:	0a000000 	beq	8ae220 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x148>
  8ae21c:	ebe6f1d4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae220:	e5969004 	ldr	r9, [r6, #4]
  8ae224:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ae228:	e5963000 	ldr	r3, [r6]
  8ae22c:	e1590000 	cmp	r9, r0
  8ae230:	e58d8058 	str	r8, [sp, #88]	@ 0x58
  8ae234:	e58d305c 	str	r3, [sp, #92]	@ 0x5c
  8ae238:	0a000135 	beq	8ae714 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x63c>
  8ae23c:	e3590000 	cmp	r9, #0
  8ae240:	0a00000a 	beq	8ae270 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x198>
  8ae244:	e35a0000 	cmp	sl, #0
  8ae248:	e2893004 	add	r3, r9, #4
  8ae24c:	0a0001ff 	beq	8aea50 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x978>
  8ae250:	f57ff05f 	dmb	sy
  8ae254:	e193cf9f 	ldrex	r12, [r3]
  8ae258:	e28cc001 	add	ip, ip, #1
  8ae25c:	e1830f9c 	strex	r0, ip, [r3]
  8ae260:	e3500000 	cmp	r0, #0
  8ae264:	1afffffa 	bne	8ae254 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x17c>
  8ae268:	f57ff05f 	dmb	sy
  8ae26c:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ae270:	e3500000 	cmp	r0, #0
  8ae274:	0a000000 	beq	8ae27c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1a4>
  8ae278:	ebe6f1bd 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae27c:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  8ae280:	e58d9060 	str	r9, [sp, #96]	@ 0x60
  8ae284:	e28d1054 	add	r1, sp, #84	@ 0x54
  8ae288:	eb00207d 	bl	8b6484 <netflix::Console::Filters::begin(std::shared_ptr<netflix::Console> const&)@@Base>
  8ae28c:	e59d305c 	ldr	r3, [sp, #92]	@ 0x5c
  8ae290:	e583b00c 	str	fp, [r3, #12]
  8ae294:	e1a00008 	mov	r0, r8
  8ae298:	ebe6f1b5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae29c:	e596301c 	ldr	r3, [r6, #28]
  8ae2a0:	e3530002 	cmp	r3, #2
  8ae2a4:	0a000064 	beq	8ae43c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x364>
  8ae2a8:	e3530001 	cmp	r3, #1
  8ae2ac:	0a0000d2 	beq	8ae5fc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x524>
  8ae2b0:	e3530003 	cmp	r3, #3
  8ae2b4:	0a00000d 	beq	8ae2f0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x218>
  8ae2b8:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  8ae2bc:	e3500000 	cmp	r0, #0
  8ae2c0:	0a000001 	beq	8ae2cc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1f4>
  8ae2c4:	e28d1054 	add	r1, sp, #84	@ 0x54
  8ae2c8:	ebe8a0be 	bl	2d65c8 <netflix::Console::Filters::end(std::shared_ptr<netflix::Console> const&)@@Base>
  8ae2cc:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8ae2d0:	e3500000 	cmp	r0, #0
  8ae2d4:	0a000000 	beq	8ae2dc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x204>
  8ae2d8:	ebe6f1a5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae2dc:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  8ae2e0:	e3500000 	cmp	r0, #0
  8ae2e4:	0affff8d 	beq	8ae120 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x48>
  8ae2e8:	ebe6f1a1 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae2ec:	eaffff8b 	b	8ae120 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x48>
  8ae2f0:	e2044002 	and	r4, r4, #2
  8ae2f4:	e3a05000 	mov	r5, #0
  8ae2f8:	e1943005 	orrs	r3, r4, r5
  8ae2fc:	1a00003f 	bne	8ae400 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x328>
  8ae300:	e3a000c8 	mov	r0, #200	@ 0xc8
  8ae304:	ebe68271 	bl	24ecd0 <operator new(unsigned int)@plt>
  8ae308:	e1a04000 	mov	r4, r0
  8ae30c:	eb018f37 	bl	911ff0 <netflix::Process::Process()@@Base>
  8ae310:	e3a00010 	mov	r0, #16
  8ae314:	ebe6826d 	bl	24ecd0 <operator new(unsigned int)@plt>
  8ae318:	e59f2768 	ldr	r2, [pc, #1896]	@ 8aea88 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b0>
  8ae31c:	e3a03001 	mov	r3, #1
  8ae320:	e3540000 	cmp	r4, #0
  8ae324:	e5803004 	str	r3, [r0, #4]
  8ae328:	e5803008 	str	r3, [r0, #8]
  8ae32c:	e1a05000 	mov	r5, r0
  8ae330:	e7973002 	ldr	r3, [r7, r2]
  8ae334:	e580400c 	str	r4, [r0, #12]
  8ae338:	e2833008 	add	r3, r3, #8
  8ae33c:	e5803000 	str	r3, [r0]
  8ae340:	0a00001c 	beq	8ae3b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2e0>
  8ae344:	e59f3738 	ldr	r3, [pc, #1848]	@ 8aea84 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9ac>
  8ae348:	e5844004 	str	r4, [r4, #4]
  8ae34c:	e797a003 	ldr	sl, [r7, r3]
  8ae350:	e35a0000 	cmp	sl, #0
  8ae354:	0a0001a8 	beq	8ae9fc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x924>
  8ae358:	e2803008 	add	r3, r0, #8
  8ae35c:	f57ff05f 	dmb	sy
  8ae360:	e193cf9f 	ldrex	r12, [r3]
  8ae364:	e28cc001 	add	ip, ip, #1
  8ae368:	e1830f9c 	strex	r0, ip, [r3]
  8ae36c:	e3500000 	cmp	r0, #0
  8ae370:	1afffffa 	bne	8ae360 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x288>
  8ae374:	f57ff05f 	dmb	sy
  8ae378:	e5940008 	ldr	r0, [r4, #8]
  8ae37c:	e3500000 	cmp	r0, #0
  8ae380:	0a00000b 	beq	8ae3b4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2dc>
  8ae384:	e35a0000 	cmp	sl, #0
  8ae388:	e2803008 	add	r3, r0, #8
  8ae38c:	0a000175 	beq	8ae968 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x890>
  8ae390:	f57ff05f 	dmb	sy
  8ae394:	e1932f9f 	ldrex	r2, [r3]
  8ae398:	e2421001 	sub	r1, r2, #1
  8ae39c:	e183cf91 	strex	ip, r1, [r3]
  8ae3a0:	e35c0000 	cmp	ip, #0
  8ae3a4:	1afffffa 	bne	8ae394 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2bc>
  8ae3a8:	f57ff05f 	dmb	sy
  8ae3ac:	e3520001 	cmp	r2, #1
  8ae3b0:	0a000159 	beq	8ae91c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x844>
  8ae3b4:	e5845008 	str	r5, [r4, #8]
  8ae3b8:	e28d0048 	add	r0, sp, #72	@ 0x48
  8ae3bc:	e58d0014 	str	r0, [sp, #20]
  8ae3c0:	e2861010 	add	r1, r6, #16
  8ae3c4:	e1a00004 	mov	r0, r4
  8ae3c8:	e59d2014 	ldr	r2, [sp, #20]
  8ae3cc:	e3a03000 	mov	r3, #0
  8ae3d0:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  8ae3d4:	e58d304c 	str	r3, [sp, #76]	@ 0x4c
  8ae3d8:	e58d3050 	str	r3, [sp, #80]	@ 0x50
  8ae3dc:	eb018f71 	bl	9121a8 <netflix::Process::launch(std::vector<std::string, std::allocator<std::string> > const&, netflix::DataBuffer const&)@@Base>
  8ae3e0:	e58d0010 	str	r0, [sp, #16]
  8ae3e4:	e59d0014 	ldr	r0, [sp, #20]
  8ae3e8:	ebffd72d 	bl	8a40a4 <netflix::Console::StaticCompletion::dump(_IO_FILE*, int) const@@Base+0xf0>
  8ae3ec:	e59d1010 	ldr	r1, [sp, #16]
  8ae3f0:	e3510000 	cmp	r1, #0
  8ae3f4:	1a0000c8 	bne	8ae71c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x644>
  8ae3f8:	e1a00005 	mov	r0, r5
  8ae3fc:	ebe6f15c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae400:	e59f2684 	ldr	r2, [pc, #1668]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae404:	e5963010 	ldr	r3, [r6, #16]
  8ae408:	e59f1680 	ldr	r1, [pc, #1664]	@ 8aea90 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b8>
  8ae40c:	e7970002 	ldr	r0, [r7, r2]
  8ae410:	e08f1001 	add	r1, pc, r1
  8ae414:	e5932000 	ldr	r2, [r3]
  8ae418:	eb01058c 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae41c:	e3a02000 	mov	r2, #0
  8ae420:	e58d2010 	str	r2, [sp, #16]
  8ae424:	eaffffa3 	b	8ae2b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1e0>
  8ae428:	e5921018 	ldr	r1, [r2, #24]
  8ae42c:	e592301c 	ldr	r3, [r2, #28]
  8ae430:	e1510003 	cmp	r1, r3
  8ae434:	1affff69 	bne	8ae1e0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x108>
  8ae438:	eaffff95 	b	8ae294 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1bc>
  8ae43c:	e28d103c 	add	r1, sp, #60	@ 0x3c
  8ae440:	e5962010 	ldr	r2, [r6, #16]
  8ae444:	e58d1034 	str	r1, [sp, #52]	@ 0x34
  8ae448:	e28d003c 	add	r0, sp, #60	@ 0x3c
  8ae44c:	e59d100c 	ldr	r1, [sp, #12]
  8ae450:	ebffdd17 	bl	8a58b4 <netflix::Console::findCommands(std::string const&) const@@Base>
  8ae454:	e59db03c 	ldr	fp, [sp, #60]	@ 0x3c
  8ae458:	e59d3040 	ldr	r3, [sp, #64]	@ 0x40
  8ae45c:	e15b0003 	cmp	fp, r3
  8ae460:	0a000060 	beq	8ae5e8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x510>
  8ae464:	e59f2628 	ldr	r2, [pc, #1576]	@ 8aea94 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9bc>
  8ae468:	e28b8004 	add	r8, fp, #4
  8ae46c:	e59f3624 	ldr	r3, [pc, #1572]	@ 8aea98 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9c0>
  8ae470:	e1a0500b 	mov	r5, fp
  8ae474:	e08f2002 	add	r2, pc, r2
  8ae478:	e59fc61c 	ldr	ip, [pc, #1564]	@ 8aea9c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9c4>
  8ae47c:	e58d2030 	str	r2, [sp, #48]	@ 0x30
  8ae480:	e08f3003 	add	r3, pc, r3
  8ae484:	e59f0614 	ldr	r0, [pc, #1556]	@ 8aeaa0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9c8>
  8ae488:	e08fc00c 	add	ip, pc, ip
  8ae48c:	e59f1610 	ldr	r1, [pc, #1552]	@ 8aeaa4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9cc>
  8ae490:	e59f2610 	ldr	r2, [pc, #1552]	@ 8aeaa8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9d0>
  8ae494:	e08f0000 	add	r0, pc, r0
  8ae498:	e08f1001 	add	r1, pc, r1
  8ae49c:	e58d301c 	str	r3, [sp, #28]
  8ae4a0:	e08f2002 	add	r2, pc, r2
  8ae4a4:	e58dc020 	str	ip, [sp, #32]
  8ae4a8:	e58d0024 	str	r0, [sp, #36]	@ 0x24
  8ae4ac:	e58d1028 	str	r1, [sp, #40]	@ 0x28
  8ae4b0:	e58d202c 	str	r2, [sp, #44]	@ 0x2c
  8ae4b4:	ea000007 	b	8ae4d8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x400>
  8ae4b8:	e3590000 	cmp	r9, #0
  8ae4bc:	0a000001 	beq	8ae4c8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x3f0>
  8ae4c0:	e1a00009 	mov	r0, r9
  8ae4c4:	ebe6f12a 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae4c8:	e59d3040 	ldr	r3, [sp, #64]	@ 0x40
  8ae4cc:	e2855008 	add	r5, r5, #8
  8ae4d0:	e1530005 	cmp	r3, r5
  8ae4d4:	0a000043 	beq	8ae5e8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x510>
  8ae4d8:	e06b3005 	rsb	r3, fp, r5
  8ae4dc:	e595a000 	ldr	sl, [r5]
  8ae4e0:	e7989003 	ldr	r9, [r8, r3]
  8ae4e4:	e3590000 	cmp	r9, #0
  8ae4e8:	0a00000b 	beq	8ae51c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x444>
  8ae4ec:	e59f2590 	ldr	r2, [pc, #1424]	@ 8aea84 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9ac>
  8ae4f0:	e2893004 	add	r3, r9, #4
  8ae4f4:	e7972002 	ldr	r2, [r7, r2]
  8ae4f8:	e3520000 	cmp	r2, #0
  8ae4fc:	0a00010d 	beq	8ae938 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x860>
  8ae500:	f57ff05f 	dmb	sy
  8ae504:	e193cf9f 	ldrex	r12, [r3]
  8ae508:	e28cc001 	add	ip, ip, #1
  8ae50c:	e1830f9c 	strex	r0, ip, [r3]
  8ae510:	e3500000 	cmp	r0, #0
  8ae514:	1afffffa 	bne	8ae504 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x42c>
  8ae518:	f57ff05f 	dmb	sy
  8ae51c:	e596301c 	ldr	r3, [r6, #28]
  8ae520:	e3530002 	cmp	r3, #2
  8ae524:	1affffe3 	bne	8ae4b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x3e0>
  8ae528:	e59a3000 	ldr	r3, [sl]
  8ae52c:	e28d1048 	add	r1, sp, #72	@ 0x48
  8ae530:	e58d1014 	str	r1, [sp, #20]
  8ae534:	e1a0100a 	mov	r1, sl
  8ae538:	e59d0014 	ldr	r0, [sp, #20]
  8ae53c:	e5933010 	ldr	r3, [r3, #16]
  8ae540:	e12fff33 	blx	r3
  8ae544:	e59d2048 	ldr	r2, [sp, #72]	@ 0x48
  8ae548:	e59d304c 	ldr	r3, [sp, #76]	@ 0x4c
  8ae54c:	e1520003 	cmp	r2, r3
  8ae550:	0a000066 	beq	8ae6f0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x618>
  8ae554:	e59d303c 	ldr	r3, [sp, #60]	@ 0x3c
  8ae558:	e1530005 	cmp	r3, r5
  8ae55c:	e59f3528 	ldr	r3, [pc, #1320]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae560:	0a000023 	beq	8ae5f4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x51c>
  8ae564:	e7974003 	ldr	r4, [r7, r3]
  8ae568:	e59d1030 	ldr	r1, [sp, #48]	@ 0x30
  8ae56c:	e1a00004 	mov	r0, r4
  8ae570:	eb010503 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae574:	e1a00004 	mov	r0, r4
  8ae578:	e59d101c 	ldr	r1, [sp, #28]
  8ae57c:	e59a2010 	ldr	r2, [sl, #16]
  8ae580:	eb0104ff 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae584:	e1a00004 	mov	r0, r4
  8ae588:	e59d1020 	ldr	r1, [sp, #32]
  8ae58c:	eb0104fc 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae590:	e1a00004 	mov	r0, r4
  8ae594:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  8ae598:	e59a200c 	ldr	r2, [sl, #12]
  8ae59c:	eb0104f8 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae5a0:	e1a00004 	mov	r0, r4
  8ae5a4:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  8ae5a8:	eb0104f5 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae5ac:	e1a00004 	mov	r0, r4
  8ae5b0:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  8ae5b4:	eb0104f2 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae5b8:	e59f14ec 	ldr	r1, [pc, #1260]	@ 8aeaac <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9d4>
  8ae5bc:	e1a00004 	mov	r0, r4
  8ae5c0:	e08f1001 	add	r1, pc, r1
  8ae5c4:	eb0104ee 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae5c8:	e59d000c 	ldr	r0, [sp, #12]
  8ae5cc:	e1a01006 	mov	r1, r6
  8ae5d0:	e59d2014 	ldr	r2, [sp, #20]
  8ae5d4:	e3a03000 	mov	r3, #0
  8ae5d8:	ebffd719 	bl	8a4244 <netflix::Console::dump(netflix::Console::Command::Arguments const&, std::vector<netflix::Console::Command::Help, std::allocator<netflix::Console::Command::Help> > const&, int)@@Base>
  8ae5dc:	e59d0014 	ldr	r0, [sp, #20]
  8ae5e0:	ebe7d91b 	bl	2a4a54 <std::vector<netflix::Console::Command::Help, std::allocator<netflix::Console::Command::Help> >::~vector()@@Base>
  8ae5e4:	eaffffb3 	b	8ae4b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x3e0>
  8ae5e8:	e28d003c 	add	r0, sp, #60	@ 0x3c
  8ae5ec:	ebf22b42 	bl	5392fc <std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > >::~vector()@@Base>
  8ae5f0:	eaffff30 	b	8ae2b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1e0>
  8ae5f4:	e7974003 	ldr	r4, [r7, r3]
  8ae5f8:	eaffffdd 	b	8ae574 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x49c>
  8ae5fc:	e28d2048 	add	r2, sp, #72	@ 0x48
  8ae600:	e58d2014 	str	r2, [sp, #20]
  8ae604:	e59d100c 	ldr	r1, [sp, #12]
  8ae608:	e5962010 	ldr	r2, [r6, #16]
  8ae60c:	e59d0014 	ldr	r0, [sp, #20]
  8ae610:	ebffdca7 	bl	8a58b4 <netflix::Console::findCommands(std::string const&) const@@Base>
  8ae614:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  8ae618:	e59d204c 	ldr	r2, [sp, #76]	@ 0x4c
  8ae61c:	e1530002 	cmp	r3, r2
  8ae620:	0a0000c1 	beq	8ae92c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x854>
  8ae624:	e0632002 	rsb	r2, r3, r2
  8ae628:	e352000f 	cmp	r2, #15
  8ae62c:	9a0000a8 	bls	8ae8d4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x7fc>
  8ae630:	e59f3454 	ldr	r3, [pc, #1108]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae634:	e59f1474 	ldr	r1, [pc, #1140]	@ 8aeab0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9d8>
  8ae638:	e5962008 	ldr	r2, [r6, #8]
  8ae63c:	e7974003 	ldr	r4, [r7, r3]
  8ae640:	e08f1001 	add	r1, pc, r1
  8ae644:	e1a00004 	mov	r0, r4
  8ae648:	eb010500 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae64c:	e59d9048 	ldr	r9, [sp, #72]	@ 0x48
  8ae650:	e59d304c 	ldr	r3, [sp, #76]	@ 0x4c
  8ae654:	e1590003 	cmp	r9, r3
  8ae658:	0a000021 	beq	8ae6e4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x60c>
  8ae65c:	e59fb450 	ldr	fp, [pc, #1104]	@ 8aeab4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9dc>
  8ae660:	e289a004 	add	sl, r9, #4
  8ae664:	e1a05009 	mov	r5, r9
  8ae668:	e08fb00b 	add	fp, pc, fp
  8ae66c:	e0692005 	rsb	r2, r9, r5
  8ae670:	e5953000 	ldr	r3, [r5]
  8ae674:	e79a6002 	ldr	r6, [sl, r2]
  8ae678:	e3560000 	cmp	r6, #0
  8ae67c:	0a00000b 	beq	8ae6b0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x5d8>
  8ae680:	e59f13fc 	ldr	r1, [pc, #1020]	@ 8aea84 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9ac>
  8ae684:	e2862004 	add	r2, r6, #4
  8ae688:	e7971001 	ldr	r1, [r7, r1]
  8ae68c:	e3510000 	cmp	r1, #0
  8ae690:	0a0000b0 	beq	8ae958 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x880>
  8ae694:	f57ff05f 	dmb	sy
  8ae698:	e192cf9f 	ldrex	r12, [r2]
  8ae69c:	e28cc001 	add	ip, ip, #1
  8ae6a0:	e1820f9c 	strex	r0, ip, [r2]
  8ae6a4:	e3500000 	cmp	r0, #0
  8ae6a8:	1afffffa 	bne	8ae698 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x5c0>
  8ae6ac:	f57ff05f 	dmb	sy
  8ae6b0:	e593200c 	ldr	r2, [r3, #12]
  8ae6b4:	e1a00004 	mov	r0, r4
  8ae6b8:	e1a0100b 	mov	r1, fp
  8ae6bc:	e5933010 	ldr	r3, [r3, #16]
  8ae6c0:	eb0104af 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae6c4:	e3560000 	cmp	r6, #0
  8ae6c8:	0a000001 	beq	8ae6d4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x5fc>
  8ae6cc:	e1a00006 	mov	r0, r6
  8ae6d0:	ebe6f0a7 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae6d4:	e59d304c 	ldr	r3, [sp, #76]	@ 0x4c
  8ae6d8:	e2855008 	add	r5, r5, #8
  8ae6dc:	e1530005 	cmp	r3, r5
  8ae6e0:	1affffe1 	bne	8ae66c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x594>
  8ae6e4:	e59d0014 	ldr	r0, [sp, #20]
  8ae6e8:	ebf22b03 	bl	5392fc <std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > >::~vector()@@Base>
  8ae6ec:	eafffef1 	b	8ae2b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1e0>
  8ae6f0:	e59f3394 	ldr	r3, [pc, #916]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae6f4:	e59f13bc 	ldr	r1, [pc, #956]	@ 8aeab8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9e0>
  8ae6f8:	e59a200c 	ldr	r2, [sl, #12]
  8ae6fc:	e7974003 	ldr	r4, [r7, r3]
  8ae700:	e08f1001 	add	r1, pc, r1
  8ae704:	e59a3010 	ldr	r3, [sl, #16]
  8ae708:	e1a00004 	mov	r0, r4
  8ae70c:	eb01049c 	bl	8ef984 <netflix::Log::warn(netflix::TraceArea const&, char const*, ...)@@Base>
  8ae710:	eaffffb1 	b	8ae5dc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x504>
  8ae714:	e1a00003 	mov	r0, r3
  8ae718:	eafffed9 	b	8ae284 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1ac>
  8ae71c:	e1a00004 	mov	r0, r4
  8ae720:	e59d1014 	ldr	r1, [sp, #20]
  8ae724:	e3a02000 	mov	r2, #0
  8ae728:	e3a03000 	mov	r3, #0
  8ae72c:	e1cd24f8 	strd	r2, [sp, #72]	@ 0x48
  8ae730:	eb018c9f 	bl	9119b4 <netflix::Process::waitForFinished(netflix::Time const&)@@Base>
  8ae734:	e2846068 	add	r6, r4, #104	@ 0x68
  8ae738:	e3a01001 	mov	r1, #1
  8ae73c:	e1a00006 	mov	r0, r6
  8ae740:	eb013a90 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8ae744:	e5943040 	ldr	r3, [r4, #64]	@ 0x40
  8ae748:	e5941044 	ldr	r1, [r4, #68]	@ 0x44
  8ae74c:	e5942048 	ldr	r2, [r4, #72]	@ 0x48
  8ae750:	e3530000 	cmp	r3, #0
  8ae754:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  8ae758:	e58d104c 	str	r1, [sp, #76]	@ 0x4c
  8ae75c:	e58d2050 	str	r2, [sp, #80]	@ 0x50
  8ae760:	0a000006 	beq	8ae780 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x6a8>
  8ae764:	f57ff05f 	dmb	sy
  8ae768:	e1932f9f 	ldrex	r2, [r3]
  8ae76c:	e2822001 	add	r2, r2, #1
  8ae770:	e183cf92 	strex	ip, r2, [r3]
  8ae774:	e35c0000 	cmp	ip, #0
  8ae778:	1afffffa 	bne	8ae768 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x690>
  8ae77c:	f57ff05f 	dmb	sy
  8ae780:	e1a00006 	mov	r0, r6
  8ae784:	e3a01001 	mov	r1, #1
  8ae788:	eb013ab3 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ae78c:	e59d3050 	ldr	r3, [sp, #80]	@ 0x50
  8ae790:	e3530000 	cmp	r3, #0
  8ae794:	0a000017 	beq	8ae7f8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x720>
  8ae798:	e1a00006 	mov	r0, r6
  8ae79c:	e3a01001 	mov	r1, #1
  8ae7a0:	eb013a78 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8ae7a4:	e3a01001 	mov	r1, #1
  8ae7a8:	e1a00006 	mov	r0, r6
  8ae7ac:	e5949020 	ldr	r9, [r4, #32]
  8ae7b0:	eb013aa9 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ae7b4:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  8ae7b8:	e3a02004 	mov	r2, #4
  8ae7bc:	e3590000 	cmp	r9, #0
  8ae7c0:	e59f02c4 	ldr	r0, [pc, #708]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae7c4:	e59fc2f0 	ldr	ip, [pc, #752]	@ 8aeabc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9e4>
  8ae7c8:	03a01037 	moveq	r1, #55	@ 0x37
  8ae7cc:	13a01032 	movne	r1, #50	@ 0x32
  8ae7d0:	e3530000 	cmp	r3, #0
  8ae7d4:	e08fc00c 	add	ip, pc, ip
  8ae7d8:	e7970000 	ldr	r0, [r7, r0]
  8ae7dc:	1593e014 	ldrne	lr, [r3, #20]
  8ae7e0:	01a0e003 	moveq	lr, r3
  8ae7e4:	159d304c 	ldrne	r3, [sp, #76]	@ 0x4c
  8ae7e8:	108ee003 	addne	lr, lr, r3
  8ae7ec:	e3a03000 	mov	r3, #0
  8ae7f0:	e88d5000 	stm	sp, {ip, lr}
  8ae7f4:	eb010336 	bl	8ef4d4 <netflix::Log::log(netflix::TraceArea const&, netflix::Log::Level, netflix::Flags<netflix::Log::Message::Flag>, char const*, ...)@@Base>
  8ae7f8:	e59d0014 	ldr	r0, [sp, #20]
  8ae7fc:	ebffd628 	bl	8a40a4 <netflix::Console::StaticCompletion::dump(_IO_FILE*, int) const@@Base+0xf0>
  8ae800:	e1a00006 	mov	r0, r6
  8ae804:	e3a01001 	mov	r1, #1
  8ae808:	eb013a5e 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8ae80c:	e5943034 	ldr	r3, [r4, #52]	@ 0x34
  8ae810:	e5941038 	ldr	r1, [r4, #56]	@ 0x38
  8ae814:	e594203c 	ldr	r2, [r4, #60]	@ 0x3c
  8ae818:	e3530000 	cmp	r3, #0
  8ae81c:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  8ae820:	e58d104c 	str	r1, [sp, #76]	@ 0x4c
  8ae824:	e58d2050 	str	r2, [sp, #80]	@ 0x50
  8ae828:	0a000006 	beq	8ae848 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x770>
  8ae82c:	f57ff05f 	dmb	sy
  8ae830:	e1930f9f 	ldrex	r0, [r3]
  8ae834:	e2800001 	add	r0, r0, #1
  8ae838:	e1831f90 	strex	r1, r0, [r3]
  8ae83c:	e3510000 	cmp	r1, #0
  8ae840:	1afffffa 	bne	8ae830 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x758>
  8ae844:	f57ff05f 	dmb	sy
  8ae848:	e1a00006 	mov	r0, r6
  8ae84c:	e3a01001 	mov	r1, #1
  8ae850:	eb013a81 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ae854:	e59d3050 	ldr	r3, [sp, #80]	@ 0x50
  8ae858:	e3530000 	cmp	r3, #0
  8ae85c:	0a000017 	beq	8ae8c0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x7e8>
  8ae860:	e1a00006 	mov	r0, r6
  8ae864:	e3a01001 	mov	r1, #1
  8ae868:	eb013a46 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8ae86c:	e3a01001 	mov	r1, #1
  8ae870:	e1a00006 	mov	r0, r6
  8ae874:	e5944020 	ldr	r4, [r4, #32]
  8ae878:	eb013a77 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8ae87c:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  8ae880:	e3a02004 	mov	r2, #4
  8ae884:	e3540000 	cmp	r4, #0
  8ae888:	e59f01fc 	ldr	r0, [pc, #508]	@ 8aea8c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9b4>
  8ae88c:	e59fc22c 	ldr	ip, [pc, #556]	@ 8aeac0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9e8>
  8ae890:	03a01037 	moveq	r1, #55	@ 0x37
  8ae894:	13a01032 	movne	r1, #50	@ 0x32
  8ae898:	e3530000 	cmp	r3, #0
  8ae89c:	e08fc00c 	add	ip, pc, ip
  8ae8a0:	e7970000 	ldr	r0, [r7, r0]
  8ae8a4:	1593e014 	ldrne	lr, [r3, #20]
  8ae8a8:	01a0e003 	moveq	lr, r3
  8ae8ac:	159d304c 	ldrne	r3, [sp, #76]	@ 0x4c
  8ae8b0:	108ee003 	addne	lr, lr, r3
  8ae8b4:	e3a03000 	mov	r3, #0
  8ae8b8:	e88d5000 	stm	sp, {ip, lr}
  8ae8bc:	eb010304 	bl	8ef4d4 <netflix::Log::log(netflix::TraceArea const&, netflix::Log::Level, netflix::Flags<netflix::Log::Message::Flag>, char const*, ...)@@Base>
  8ae8c0:	e59d0014 	ldr	r0, [sp, #20]
  8ae8c4:	ebffd5f6 	bl	8a40a4 <netflix::Console::StaticCompletion::dump(_IO_FILE*, int) const@@Base+0xf0>
  8ae8c8:	e1a00005 	mov	r0, r5
  8ae8cc:	ebe6f028 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae8d0:	eafffe78 	b	8ae2b8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x1e0>
  8ae8d4:	e5930000 	ldr	r0, [r3]
  8ae8d8:	e1a01006 	mov	r1, r6
  8ae8dc:	e5903000 	ldr	r3, [r0]
  8ae8e0:	e593300c 	ldr	r3, [r3, #12]
  8ae8e4:	e12fff33 	blx	r3
  8ae8e8:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  8ae8ec:	e5933000 	ldr	r3, [r3]
  8ae8f0:	e1c323d0 	ldrd	r2, [r3, #48]	@ 0x30
  8ae8f4:	e3a03000 	mov	r3, #0
  8ae8f8:	e2022001 	and	r2, r2, #1
  8ae8fc:	e1921003 	orrs	r1, r2, r3
  8ae900:	1affff77 	bne	8ae6e4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x60c>
  8ae904:	e59f31b8 	ldr	r3, [pc, #440]	@ 8aeac4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x9ec>
  8ae908:	e1a01006 	mov	r1, r6
  8ae90c:	e7973003 	ldr	r3, [r7, r3]
  8ae910:	e5930000 	ldr	r0, [r3]
  8ae914:	ebff4d6d 	bl	881ed0 <netflix::Application::executed(netflix::Console::Command::Arguments const&)@@Base>
  8ae918:	eaffff71 	b	8ae6e4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x60c>
  8ae91c:	e5903000 	ldr	r3, [r0]
  8ae920:	e593300c 	ldr	r3, [r3, #12]
  8ae924:	e12fff33 	blx	r3
  8ae928:	eafffea1 	b	8ae3b4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2dc>
  8ae92c:	e3a02000 	mov	r2, #0
  8ae930:	e58d2010 	str	r2, [sp, #16]
  8ae934:	eaffff6a 	b	8ae6e4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x60c>
  8ae938:	e5993004 	ldr	r3, [r9, #4]
  8ae93c:	e2833001 	add	r3, r3, #1
  8ae940:	e5893004 	str	r3, [r9, #4]
  8ae944:	eafffef4 	b	8ae51c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x444>
  8ae948:	ebe680d1 	bl	24ec94 <__stack_chk_fail@plt>
  8ae94c:	ebe6ef45 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  8ae950:	e59d3054 	ldr	r3, [sp, #84]	@ 0x54
  8ae954:	eafffe01 	b	8ae160 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x88>
  8ae958:	e5962004 	ldr	r2, [r6, #4]
  8ae95c:	e2822001 	add	r2, r2, #1
  8ae960:	e5862004 	str	r2, [r6, #4]
  8ae964:	eaffff51 	b	8ae6b0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x5d8>
  8ae968:	e5902008 	ldr	r2, [r0, #8]
  8ae96c:	e2423001 	sub	r3, r2, #1
  8ae970:	e5803008 	str	r3, [r0, #8]
  8ae974:	eafffe8c 	b	8ae3ac <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2d4>
  8ae978:	e28d0054 	add	r0, sp, #84	@ 0x54
  8ae97c:	eb003e11 	bl	8be1c8 <netflix::Console::Filters::Scope::~Scope()@@Base>
  8ae980:	ebe685a9 	bl	25002c <__cxa_end_cleanup@plt>
  8ae984:	e59d0014 	ldr	r0, [sp, #20]
  8ae988:	ebe7d831 	bl	2a4a54 <std::vector<netflix::Console::Command::Help, std::allocator<netflix::Console::Command::Help> >::~vector()@@Base>
  8ae98c:	e3590000 	cmp	r9, #0
  8ae990:	0a000001 	beq	8ae99c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8c4>
  8ae994:	e1a00009 	mov	r0, r9
  8ae998:	ebe6eff5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae99c:	e28d003c 	add	r0, sp, #60	@ 0x3c
  8ae9a0:	ebf22a55 	bl	5392fc <std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > >::~vector()@@Base>
  8ae9a4:	eafffff3 	b	8ae978 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8a0>
  8ae9a8:	e59d0014 	ldr	r0, [sp, #20]
  8ae9ac:	ebffd5bc 	bl	8a40a4 <netflix::Console::StaticCompletion::dump(_IO_FILE*, int) const@@Base+0xf0>
  8ae9b0:	e1a00005 	mov	r0, r5
  8ae9b4:	ebe6efee 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8ae9b8:	eaffffee 	b	8ae978 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8a0>
  8ae9bc:	e59d0014 	ldr	r0, [sp, #20]
  8ae9c0:	ebf22a4d 	bl	5392fc <std::vector<std::shared_ptr<netflix::Console::Command>, std::allocator<std::shared_ptr<netflix::Console::Command> > >::~vector()@@Base>
  8ae9c4:	eaffffeb 	b	8ae978 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8a0>
  8ae9c8:	ebe68144 	bl	24eee0 <__cxa_begin_catch@plt>
  8ae9cc:	e3540000 	cmp	r4, #0
  8ae9d0:	0a000003 	beq	8ae9e4 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x90c>
  8ae9d4:	e5943000 	ldr	r3, [r4]
  8ae9d8:	e1a00004 	mov	r0, r4
  8ae9dc:	e5933004 	ldr	r3, [r3, #4]
  8ae9e0:	e12fff33 	blx	r3
  8ae9e4:	ebe68548 	bl	24ff0c <__cxa_rethrow@plt>
  8ae9e8:	e1a00004 	mov	r0, r4
  8ae9ec:	ebe68627 	bl	250290 <operator delete(void*)@plt>
  8ae9f0:	eaffffe0 	b	8ae978 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8a0>
  8ae9f4:	ebe68c07 	bl	251a18 <__cxa_end_catch@plt>
  8ae9f8:	eaffffde 	b	8ae978 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8a0>
  8ae9fc:	e3a03002 	mov	r3, #2
  8aea00:	e5803008 	str	r3, [r0, #8]
  8aea04:	eafffe5b 	b	8ae378 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x2a0>
  8aea08:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  8aea0c:	e3500000 	cmp	r0, #0
  8aea10:	0a000000 	beq	8aea18 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x940>
  8aea14:	ebe6efd6 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8aea18:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  8aea1c:	e3500000 	cmp	r0, #0
  8aea20:	0a000000 	beq	8aea28 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x950>
  8aea24:	ebe6efd2 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8aea28:	e1a00008 	mov	r0, r8
  8aea2c:	ebe6efd0 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8aea30:	ebe6857d 	bl	25002c <__cxa_end_cleanup@plt>
  8aea34:	eafffffb 	b	8aea28 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x950>
  8aea38:	e5983004 	ldr	r3, [r8, #4]
  8aea3c:	e2833001 	add	r3, r3, #1
  8aea40:	e5883004 	str	r3, [r8, #4]
  8aea44:	eafffdf1 	b	8ae210 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x138>
  8aea48:	eaffffd8 	b	8ae9b0 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8d8>
  8aea4c:	eaffffd5 	b	8ae9a8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8d0>
  8aea50:	e5993004 	ldr	r3, [r9, #4]
  8aea54:	e2833001 	add	r3, r3, #1
  8aea58:	e5893004 	str	r3, [r9, #4]
  8aea5c:	eafffe03 	b	8ae270 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x198>
  8aea60:	eaffffd0 	b	8ae9a8 <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8d0>
  8aea64:	e3560000 	cmp	r6, #0
  8aea68:	0affffd3 	beq	8ae9bc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8e4>
  8aea6c:	e1a00006 	mov	r0, r6
  8aea70:	ebe6efbf 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8aea74:	eaffffd0 	b	8ae9bc <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8e4>
  8aea78:	eaffffc3 	b	8ae98c <netflix::Console::handleCommand(netflix::Console::Command::Arguments const&, netflix::Flags<netflix::Console::Flag>)@@Base+0x8b4>
  8aea7c:	00179010 	andseq	r9, r7, r0, lsl r0
  8aea80:	00003440 	andeq	r3, r0, r0, asr #8
  8aea84:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  8aea88:	000022fc 	strdeq	r2, [r0], -ip
  8aea8c:	00001b7c 	andeq	r1, r0, ip, ror fp
  8aea90:	000ed4ec 	andeq	sp, lr, ip, ror #9
  8aea94:	000eb13c 	andeq	fp, lr, ip, lsr r1
  8aea98:	000e5844 	andeq	r5, lr, r4, asr #16
  8aea9c:	000ed4a8 	andeq	sp, lr, r8, lsr #9
  8aeaa0:	000ed4bc 			@ <UNDEFINED> instruction: 0x000ed4bc
  8aeaa4:	000ed498 	muleq	lr, r8, r4
  8aeaa8:	000ed4c0 	andeq	sp, lr, r0, asr #9
  8aeaac:	000eaff0 	strdeq	sl, [lr], -r0
  8aeab0:	000ed32c 	andeq	sp, lr, ip, lsr #6
  8aeab4:	000ed2ac 	andeq	sp, lr, ip, lsr #5
  8aeab8:	000ed214 	andeq	sp, lr, r4, lsl r2
  8aeabc:	000e54f0 	strdeq	r5, [lr], -r0
  8aeac0:	000e5428 	andeq	r5, lr, r8, lsr #8
  8aeac4:	000037dc 	ldrdeq	r3, [r0], -ip

008aeac8 <netflix::Console::Filter::~Filter()@@Base>:
  8aeac8:	e59f3044 	ldr	r3, [pc, #68]	@ 8aeb14 <netflix::Console::Filter::~Filter()@@Base+0x4c>
  8aeacc:	e59f2044 	ldr	r2, [pc, #68]	@ 8aeb18 <netflix::Console::Filter::~Filter()@@Base+0x50>
  8aead0:	e08f3003 	add	r3, pc, r3
  8aead4:	e59f1040 	ldr	r1, [pc, #64]	@ 8aeb1c <netflix::Console::Filter::~Filter()@@Base+0x54>
  8aead8:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aeadc:	e24dd00c 	sub	sp, sp, #12
  8aeae0:	e7932002 	ldr	r2, [r3, r2]
  8aeae4:	e592c000 	ldr	ip, [r2]
  8aeae8:	e58dc004 	str	ip, [sp, #4]
  8aeaec:	e7933001 	ldr	r3, [r3, r1]
  8aeaf0:	e59d1004 	ldr	r1, [sp, #4]
  8aeaf4:	e2833008 	add	r3, r3, #8
  8aeaf8:	e5803000 	str	r3, [r0]
  8aeafc:	e5923000 	ldr	r3, [r2]
  8aeb00:	e1510003 	cmp	r1, r3
  8aeb04:	1a000001 	bne	8aeb10 <netflix::Console::Filter::~Filter()@@Base+0x48>
  8aeb08:	e28dd00c 	add	sp, sp, #12
  8aeb0c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aeb10:	ebe6805f 	bl	24ec94 <__stack_chk_fail@plt>
  8aeb14:	00178630 	andseq	r8, r7, r0, lsr r6
  8aeb18:	00003440 	andeq	r3, r0, r0, asr #8
  8aeb1c:	00002154 	andeq	r2, r0, r4, asr r1

008aeb20 <netflix::Console::Filter::finish()@@Base>:
  8aeb20:	e59f1044 	ldr	r1, [pc, #68]	@ 8aeb6c <netflix::Console::Filter::finish()@@Base+0x4c>
  8aeb24:	e3a02000 	mov	r2, #0
  8aeb28:	e59fc040 	ldr	ip, [pc, #64]	@ 8aeb70 <netflix::Console::Filter::finish()@@Base+0x50>
  8aeb2c:	e08f1001 	add	r1, pc, r1
  8aeb30:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aeb34:	e24dd00c 	sub	sp, sp, #12
  8aeb38:	e791100c 	ldr	r1, [r1, ip]
  8aeb3c:	e5802004 	str	r2, [r0, #4]
  8aeb40:	e5802008 	str	r2, [r0, #8]
  8aeb44:	e591c000 	ldr	ip, [r1]
  8aeb48:	e5802000 	str	r2, [r0]
  8aeb4c:	e58dc004 	str	ip, [sp, #4]
  8aeb50:	e59d2004 	ldr	r2, [sp, #4]
  8aeb54:	e5913000 	ldr	r3, [r1]
  8aeb58:	e1520003 	cmp	r2, r3
  8aeb5c:	1a000001 	bne	8aeb68 <netflix::Console::Filter::finish()@@Base+0x48>
  8aeb60:	e28dd00c 	add	sp, sp, #12
  8aeb64:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aeb68:	ebe68049 	bl	24ec94 <__stack_chk_fail@plt>
  8aeb6c:	001785d4 			@ <UNDEFINED> instruction: 0x001785d4
  8aeb70:	00003440 	andeq	r3, r0, r0, asr #8

008aeb74 <netflix::Console::Filter::describe() const@@Base>:
  8aeb74:	e59f3044 	ldr	r3, [pc, #68]	@ 8aebc0 <netflix::Console::Filter::describe() const@@Base+0x4c>
  8aeb78:	e59f2044 	ldr	r2, [pc, #68]	@ 8aebc4 <netflix::Console::Filter::describe() const@@Base+0x50>
  8aeb7c:	e08f3003 	add	r3, pc, r3
  8aeb80:	e59f1040 	ldr	r1, [pc, #64]	@ 8aebc8 <netflix::Console::Filter::describe() const@@Base+0x54>
  8aeb84:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aeb88:	e24dd00c 	sub	sp, sp, #12
  8aeb8c:	e7932002 	ldr	r2, [r3, r2]
  8aeb90:	e592c000 	ldr	ip, [r2]
  8aeb94:	e58dc004 	str	ip, [sp, #4]
  8aeb98:	e7933001 	ldr	r3, [r3, r1]
  8aeb9c:	e59d1004 	ldr	r1, [sp, #4]
  8aeba0:	e283300c 	add	r3, r3, #12
  8aeba4:	e5803000 	str	r3, [r0]
  8aeba8:	e5923000 	ldr	r3, [r2]
  8aebac:	e1510003 	cmp	r1, r3
  8aebb0:	1a000001 	bne	8aebbc <netflix::Console::Filter::describe() const@@Base+0x48>
  8aebb4:	e28dd00c 	add	sp, sp, #12
  8aebb8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aebbc:	ebe68034 	bl	24ec94 <__stack_chk_fail@plt>
  8aebc0:	00178584 	andseq	r8, r7, r4, lsl #11
  8aebc4:	00003440 	andeq	r3, r0, r0, asr #8
  8aebc8:	00002278 	andeq	r2, r0, r8, ror r2

008aebcc <netflix::Console::Completion::dump(_IO_FILE*, int) const@@Base>:
  8aebcc:	e59f3034 	ldr	r3, [pc, #52]	@ 8aec08 <netflix::Console::Completion::dump(_IO_FILE*, int) const@@Base+0x3c>
  8aebd0:	e59f2034 	ldr	r2, [pc, #52]	@ 8aec0c <netflix::Console::Completion::dump(_IO_FILE*, int) const@@Base+0x40>
  8aebd4:	e08f3003 	add	r3, pc, r3
  8aebd8:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aebdc:	e24dd00c 	sub	sp, sp, #12
  8aebe0:	e7933002 	ldr	r3, [r3, r2]
  8aebe4:	e5932000 	ldr	r2, [r3]
  8aebe8:	e58d2004 	str	r2, [sp, #4]
  8aebec:	e59d2004 	ldr	r2, [sp, #4]
  8aebf0:	e5933000 	ldr	r3, [r3]
  8aebf4:	e1520003 	cmp	r2, r3
  8aebf8:	1a000001 	bne	8aec04 <netflix::Console::Completion::dump(_IO_FILE*, int) const@@Base+0x38>
  8aebfc:	e28dd00c 	add	sp, sp, #12
  8aec00:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aec04:	ebe68022 	bl	24ec94 <__stack_chk_fail@plt>
  8aec08:	0017852c 	andseq	r8, r7, ip, lsr #10
  8aec0c:	00003440 	andeq	r3, r0, r0, asr #8

008aec10 <netflix::Console::handleSequence(std::string const&)@@Base>:
  8aec10:	e59f3038 	ldr	r3, [pc, #56]	@ 8aec50 <netflix::Console::handleSequence(std::string const&)@@Base+0x40>
  8aec14:	e3a00000 	mov	r0, #0
  8aec18:	e59f2034 	ldr	r2, [pc, #52]	@ 8aec54 <netflix::Console::handleSequence(std::string const&)@@Base+0x44>
  8aec1c:	e08f3003 	add	r3, pc, r3
  8aec20:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aec24:	e24dd00c 	sub	sp, sp, #12
  8aec28:	e7933002 	ldr	r3, [r3, r2]
  8aec2c:	e5932000 	ldr	r2, [r3]
  8aec30:	e58d2004 	str	r2, [sp, #4]
  8aec34:	e59d2004 	ldr	r2, [sp, #4]
  8aec38:	e5933000 	ldr	r3, [r3]
  8aec3c:	e1520003 	cmp	r2, r3
  8aec40:	1a000001 	bne	8aec4c <netflix::Console::handleSequence(std::string const&)@@Base+0x3c>
  8aec44:	e28dd00c 	add	sp, sp, #12
  8aec48:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aec4c:	ebe68010 	bl	24ec94 <__stack_chk_fail@plt>
  8aec50:	001784e4 	andseq	r8, r7, r4, ror #9
  8aec54:	00003440 	andeq	r3, r0, r0, asr #8

008aec58 <netflix::Console::updateCompletions()@@Base>:
  8aec58:	e59f3034 	ldr	r3, [pc, #52]	@ 8aec94 <netflix::Console::updateCompletions()@@Base+0x3c>
  8aec5c:	e59f2034 	ldr	r2, [pc, #52]	@ 8aec98 <netflix::Console::updateCompletions()@@Base+0x40>
  8aec60:	e08f3003 	add	r3, pc, r3
  8aec64:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aec68:	e24dd00c 	sub	sp, sp, #12
  8aec6c:	e7933002 	ldr	r3, [r3, r2]
  8aec70:	e5932000 	ldr	r2, [r3]
  8aec74:	e58d2004 	str	r2, [sp, #4]
  8aec78:	e59d2004 	ldr	r2, [sp, #4]
  8aec7c:	e5933000 	ldr	r3, [r3]
  8aec80:	e1520003 	cmp	r2, r3
  8aec84:	1a000001 	bne	8aec90 <netflix::Console::updateCompletions()@@Base+0x38>
  8aec88:	e28dd00c 	add	sp, sp, #12
  8aec8c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aec90:	ebe67fff 	bl	24ec94 <__stack_chk_fail@plt>
  8aec94:	001784a0 	andseq	r8, r7, r0, lsr #9
  8aec98:	00003440 	andeq	r3, r0, r0, asr #8

008aec9c <WordCountFilter::filter(netflix::LogSink::Format&)@@Base>:
  8aec9c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8aeca0:	e281e004 	add	lr, r1, #4
  8aeca4:	e1a06001 	mov	r6, r1
  8aeca8:	e1a05000 	mov	r5, r0
  8aecac:	e59f708c 	ldr	r7, [pc, #140]	@ 8aed40 <WordCountFilter::filter(netflix::LogSink::Format&)@@Base+0xa4>
  8aecb0:	e285400c 	add	r4, r5, #12
  8aecb4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
  8aecb8:	e08f7007 	add	r7, pc, r7
  8aecbc:	e59f9080 	ldr	r9, [pc, #128]	@ 8aed44 <WordCountFilter::filter(netflix::LogSink::Format&)@@Base+0xa8>
  8aecc0:	e24dd00c 	sub	sp, sp, #12
  8aecc4:	e596c024 	ldr	ip, [r6, #36]	@ 0x24
  8aecc8:	e5968000 	ldr	r8, [r6]
  8aeccc:	e7977009 	ldr	r7, [r7, r9]
  8aecd0:	e8a4000f 	stmia	r4!, {r0, r1, r2, r3}
  8aecd4:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
  8aecd8:	e596e028 	ldr	lr, [r6, #40]	@ 0x28
  8aecdc:	e5976000 	ldr	r6, [r7]
  8aece0:	e9950600 	ldmib	r5, {r9, sl}
  8aece4:	e06cb00e 	rsb	fp, ip, lr
  8aece8:	e518800c 	ldr	r8, [r8, #-12]
  8aecec:	e15c000e 	cmp	ip, lr
  8aecf0:	e884000f 	stm	r4, {r0, r1, r2, r3}
  8aecf4:	e08aa14b 	add	sl, sl, fp, asr #2
  8aecf8:	e0893008 	add	r3, r9, r8
  8aecfc:	e58d6004 	str	r6, [sp, #4]
  8aed00:	e9850408 	stmib	r5, {r3, sl}
  8aed04:	0a000005 	beq	8aed20 <WordCountFilter::filter(netflix::LogSink::Format&)@@Base+0x84>
  8aed08:	e49c2004 	ldr	r2, [ip], #4
  8aed0c:	e15e000c 	cmp	lr, ip
  8aed10:	e512200c 	ldr	r2, [r2, #-12]
  8aed14:	e0833002 	add	r3, r3, r2
  8aed18:	1afffffa 	bne	8aed08 <WordCountFilter::filter(netflix::LogSink::Format&)@@Base+0x6c>
  8aed1c:	e5853004 	str	r3, [r5, #4]
  8aed20:	e59d2004 	ldr	r2, [sp, #4]
  8aed24:	e3a00001 	mov	r0, #1
  8aed28:	e5973000 	ldr	r3, [r7]
  8aed2c:	e1520003 	cmp	r2, r3
  8aed30:	1a000001 	bne	8aed3c <WordCountFilter::filter(netflix::LogSink::Format&)@@Base+0xa0>
  8aed34:	e28dd00c 	add	sp, sp, #12
  8aed38:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8aed3c:	ebe67fd4 	bl	24ec94 <__stack_chk_fail@plt>
  8aed40:	00178448 	andseq	r8, r7, r8, asr #8
  8aed44:	00003440 	andeq	r3, r0, r0, asr #8

008aed48 <SingleCoreCommand::help() const@@Base>:
  8aed48:	e59f1044 	ldr	r1, [pc, #68]	@ 8aed94 <SingleCoreCommand::help() const@@Base+0x4c>
  8aed4c:	e3a02000 	mov	r2, #0
  8aed50:	e59fc040 	ldr	ip, [pc, #64]	@ 8aed98 <SingleCoreCommand::help() const@@Base+0x50>
  8aed54:	e08f1001 	add	r1, pc, r1
  8aed58:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aed5c:	e24dd00c 	sub	sp, sp, #12
  8aed60:	e791100c 	ldr	r1, [r1, ip]
  8aed64:	e5802004 	str	r2, [r0, #4]
  8aed68:	e5802008 	str	r2, [r0, #8]
  8aed6c:	e591c000 	ldr	ip, [r1]
  8aed70:	e5802000 	str	r2, [r0]
  8aed74:	e58dc004 	str	ip, [sp, #4]
  8aed78:	e59d2004 	ldr	r2, [sp, #4]
  8aed7c:	e5913000 	ldr	r3, [r1]
  8aed80:	e1520003 	cmp	r2, r3
  8aed84:	1a000001 	bne	8aed90 <SingleCoreCommand::help() const@@Base+0x48>
  8aed88:	e28dd00c 	add	sp, sp, #12
  8aed8c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aed90:	ebe67fbf 	bl	24ec94 <__stack_chk_fail@plt>
  8aed94:	001783ac 	andseq	r8, r7, ip, lsr #7
  8aed98:	00003440 	andeq	r3, r0, r0, asr #8

008aed9c <WordCountFilter::~WordCountFilter()@@Base>:
  8aed9c:	e59f3044 	ldr	r3, [pc, #68]	@ 8aede8 <WordCountFilter::~WordCountFilter()@@Base+0x4c>
  8aeda0:	e59f2044 	ldr	r2, [pc, #68]	@ 8aedec <WordCountFilter::~WordCountFilter()@@Base+0x50>
  8aeda4:	e08f3003 	add	r3, pc, r3
  8aeda8:	e59f1040 	ldr	r1, [pc, #64]	@ 8aedf0 <WordCountFilter::~WordCountFilter()@@Base+0x54>
  8aedac:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aedb0:	e24dd00c 	sub	sp, sp, #12
  8aedb4:	e7932002 	ldr	r2, [r3, r2]
  8aedb8:	e592c000 	ldr	ip, [r2]
  8aedbc:	e58dc004 	str	ip, [sp, #4]
  8aedc0:	e7933001 	ldr	r3, [r3, r1]
  8aedc4:	e59d1004 	ldr	r1, [sp, #4]
  8aedc8:	e2833008 	add	r3, r3, #8
  8aedcc:	e5803000 	str	r3, [r0]
  8aedd0:	e5923000 	ldr	r3, [r2]
  8aedd4:	e1510003 	cmp	r1, r3
  8aedd8:	1a000001 	bne	8aede4 <WordCountFilter::~WordCountFilter()@@Base+0x48>
  8aeddc:	e28dd00c 	add	sp, sp, #12
  8aede0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aede4:	ebe67faa 	bl	24ec94 <__stack_chk_fail@plt>
  8aede8:	0017835c 	andseq	r8, r7, ip, asr r3
  8aedec:	00003440 	andeq	r3, r0, r0, asr #8
  8aedf0:	00002154 	andeq	r2, r0, r4, asr r1

008aedf4 <HeadFilter::~HeadFilter()@@Base>:
  8aedf4:	e59f3044 	ldr	r3, [pc, #68]	@ 8aee40 <HeadFilter::~HeadFilter()@@Base+0x4c>
  8aedf8:	e59f2044 	ldr	r2, [pc, #68]	@ 8aee44 <HeadFilter::~HeadFilter()@@Base+0x50>
  8aedfc:	e08f3003 	add	r3, pc, r3
  8aee00:	e59f1040 	ldr	r1, [pc, #64]	@ 8aee48 <HeadFilter::~HeadFilter()@@Base+0x54>
  8aee04:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aee08:	e24dd00c 	sub	sp, sp, #12
  8aee0c:	e7932002 	ldr	r2, [r3, r2]
  8aee10:	e592c000 	ldr	ip, [r2]
  8aee14:	e58dc004 	str	ip, [sp, #4]
  8aee18:	e7933001 	ldr	r3, [r3, r1]
  8aee1c:	e59d1004 	ldr	r1, [sp, #4]
  8aee20:	e2833008 	add	r3, r3, #8
  8aee24:	e5803000 	str	r3, [r0]
  8aee28:	e5923000 	ldr	r3, [r2]
  8aee2c:	e1510003 	cmp	r1, r3
  8aee30:	1a000001 	bne	8aee3c <HeadFilter::~HeadFilter()@@Base+0x48>
  8aee34:	e28dd00c 	add	sp, sp, #12
  8aee38:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aee3c:	ebe67f94 	bl	24ec94 <__stack_chk_fail@plt>
  8aee40:	00178304 	andseq	r8, r7, r4, lsl #6
  8aee44:	00003440 	andeq	r3, r0, r0, asr #8
  8aee48:	00002154 	andeq	r2, r0, r4, asr r1

008aee4c <std::_Sp_counted_ptr<ProcessFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8aee4c:	e59f3044 	ldr	r3, [pc, #68]	@ 8aee98 <std::_Sp_counted_ptr<ProcessFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8aee50:	e59f2044 	ldr	r2, [pc, #68]	@ 8aee9c <std::_Sp_counted_ptr<ProcessFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8aee54:	e08f3003 	add	r3, pc, r3
  8aee58:	e59fc040 	ldr	ip, [pc, #64]	@ 8aeea0 <std::_Sp_counted_ptr<ProcessFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8aee5c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aee60:	e24dd00c 	sub	sp, sp, #12
  8aee64:	e7932002 	ldr	r2, [r3, r2]
  8aee68:	e5921000 	ldr	r1, [r2]
  8aee6c:	e58d1004 	str	r1, [sp, #4]
  8aee70:	e59d1004 	ldr	r1, [sp, #4]
  8aee74:	e5922000 	ldr	r2, [r2]
  8aee78:	e793300c 	ldr	r3, [r3, ip]
  8aee7c:	e1510002 	cmp	r1, r2
  8aee80:	e2833008 	add	r3, r3, #8
  8aee84:	e5803000 	str	r3, [r0]
  8aee88:	1a000001 	bne	8aee94 <std::_Sp_counted_ptr<ProcessFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8aee8c:	e28dd00c 	add	sp, sp, #12
  8aee90:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aee94:	ebe67f7e 	bl	24ec94 <__stack_chk_fail@plt>
  8aee98:	001782ac 	andseq	r8, r7, ip, lsr #5
  8aee9c:	00003440 	andeq	r3, r0, r0, asr #8
  8aeea0:	00003d84 	andeq	r3, r0, r4, lsl #27

008aeea4 <std::_Sp_counted_ptr<TailFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8aeea4:	e59f3044 	ldr	r3, [pc, #68]	@ 8aeef0 <std::_Sp_counted_ptr<TailFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8aeea8:	e59f2044 	ldr	r2, [pc, #68]	@ 8aeef4 <std::_Sp_counted_ptr<TailFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8aeeac:	e08f3003 	add	r3, pc, r3
  8aeeb0:	e59fc040 	ldr	ip, [pc, #64]	@ 8aeef8 <std::_Sp_counted_ptr<TailFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8aeeb4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aeeb8:	e24dd00c 	sub	sp, sp, #12
  8aeebc:	e7932002 	ldr	r2, [r3, r2]
  8aeec0:	e5921000 	ldr	r1, [r2]
  8aeec4:	e58d1004 	str	r1, [sp, #4]
  8aeec8:	e59d1004 	ldr	r1, [sp, #4]
  8aeecc:	e5922000 	ldr	r2, [r2]
  8aeed0:	e793300c 	ldr	r3, [r3, ip]
  8aeed4:	e1510002 	cmp	r1, r2
  8aeed8:	e2833008 	add	r3, r3, #8
  8aeedc:	e5803000 	str	r3, [r0]
  8aeee0:	1a000001 	bne	8aeeec <std::_Sp_counted_ptr<TailFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8aeee4:	e28dd00c 	add	sp, sp, #12
  8aeee8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aeeec:	ebe67f68 	bl	24ec94 <__stack_chk_fail@plt>
  8aeef0:	00178254 	andseq	r8, r7, r4, asr r2
  8aeef4:	00003440 	andeq	r3, r0, r0, asr #8
  8aeef8:	00003d84 	andeq	r3, r0, r4, lsl #27

008aeefc <std::_Sp_counted_ptr<HeadFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8aeefc:	e59f3044 	ldr	r3, [pc, #68]	@ 8aef48 <std::_Sp_counted_ptr<HeadFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8aef00:	e59f2044 	ldr	r2, [pc, #68]	@ 8aef4c <std::_Sp_counted_ptr<HeadFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8aef04:	e08f3003 	add	r3, pc, r3
  8aef08:	e59fc040 	ldr	ip, [pc, #64]	@ 8aef50 <std::_Sp_counted_ptr<HeadFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8aef0c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aef10:	e24dd00c 	sub	sp, sp, #12
  8aef14:	e7932002 	ldr	r2, [r3, r2]
  8aef18:	e5921000 	ldr	r1, [r2]
  8aef1c:	e58d1004 	str	r1, [sp, #4]
  8aef20:	e59d1004 	ldr	r1, [sp, #4]
  8aef24:	e5922000 	ldr	r2, [r2]
  8aef28:	e793300c 	ldr	r3, [r3, ip]
  8aef2c:	e1510002 	cmp	r1, r2
  8aef30:	e2833008 	add	r3, r3, #8
  8aef34:	e5803000 	str	r3, [r0]
  8aef38:	1a000001 	bne	8aef44 <std::_Sp_counted_ptr<HeadFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8aef3c:	e28dd00c 	add	sp, sp, #12
  8aef40:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aef44:	ebe67f52 	bl	24ec94 <__stack_chk_fail@plt>
  8aef48:	001781fc 			@ <UNDEFINED> instruction: 0x001781fc
  8aef4c:	00003440 	andeq	r3, r0, r0, asr #8
  8aef50:	00003d84 	andeq	r3, r0, r4, lsl #27

008aef54 <std::_Sp_counted_ptr<WordCountFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8aef54:	e59f3044 	ldr	r3, [pc, #68]	@ 8aefa0 <std::_Sp_counted_ptr<WordCountFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8aef58:	e59f2044 	ldr	r2, [pc, #68]	@ 8aefa4 <std::_Sp_counted_ptr<WordCountFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8aef5c:	e08f3003 	add	r3, pc, r3
  8aef60:	e59fc040 	ldr	ip, [pc, #64]	@ 8aefa8 <std::_Sp_counted_ptr<WordCountFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8aef64:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aef68:	e24dd00c 	sub	sp, sp, #12
  8aef6c:	e7932002 	ldr	r2, [r3, r2]
  8aef70:	e5921000 	ldr	r1, [r2]
  8aef74:	e58d1004 	str	r1, [sp, #4]
  8aef78:	e59d1004 	ldr	r1, [sp, #4]
  8aef7c:	e5922000 	ldr	r2, [r2]
  8aef80:	e793300c 	ldr	r3, [r3, ip]
  8aef84:	e1510002 	cmp	r1, r2
  8aef88:	e2833008 	add	r3, r3, #8
  8aef8c:	e5803000 	str	r3, [r0]
  8aef90:	1a000001 	bne	8aef9c <std::_Sp_counted_ptr<WordCountFilter*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8aef94:	e28dd00c 	add	sp, sp, #12
  8aef98:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aef9c:	ebe67f3c 	bl	24ec94 <__stack_chk_fail@plt>
  8aefa0:	001781a4 	andseq	r8, r7, r4, lsr #3
  8aefa4:	00003440 	andeq	r3, r0, r0, asr #8
  8aefa8:	00003d84 	andeq	r3, r0, r4, lsl #27

008aefac <std::_Sp_counted_ptr<netflix::Grep*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8aefac:	e59f3044 	ldr	r3, [pc, #68]	@ 8aeff8 <std::_Sp_counted_ptr<netflix::Grep*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8aefb0:	e59f2044 	ldr	r2, [pc, #68]	@ 8aeffc <std::_Sp_counted_ptr<netflix::Grep*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8aefb4:	e08f3003 	add	r3, pc, r3
  8aefb8:	e59fc040 	ldr	ip, [pc, #64]	@ 8af000 <std::_Sp_counted_ptr<netflix::Grep*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8aefbc:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8aefc0:	e24dd00c 	sub	sp, sp, #12
  8aefc4:	e7932002 	ldr	r2, [r3, r2]
  8aefc8:	e5921000 	ldr	r1, [r2]
  8aefcc:	e58d1004 	str	r1, [sp, #4]
  8aefd0:	e59d1004 	ldr	r1, [sp, #4]
  8aefd4:	e5922000 	ldr	r2, [r2]
  8aefd8:	e793300c 	ldr	r3, [r3, ip]
  8aefdc:	e1510002 	cmp	r1, r2
  8aefe0:	e2833008 	add	r3, r3, #8
  8aefe4:	e5803000 	str	r3, [r0]
  8aefe8:	1a000001 	bne	8aeff4 <std::_Sp_counted_ptr<netflix::Grep*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8aefec:	e28dd00c 	add	sp, sp, #12
  8aeff0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8aeff4:	ebe67f26 	bl	24ec94 <__stack_chk_fail@plt>
  8aeff8:	0017814c 	andseq	r8, r7, ip, asr #2
  8aeffc:	00003440 	andeq	r3, r0, r0, asr #8
  8af000:	00003d84 	andeq	r3, r0, r4, lsl #27

008af004 <std::_Sp_counted_ptr<CommandLineCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af004:	e59f3044 	ldr	r3, [pc, #68]	@ 8af050 <std::_Sp_counted_ptr<CommandLineCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af008:	e59f2044 	ldr	r2, [pc, #68]	@ 8af054 <std::_Sp_counted_ptr<CommandLineCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af00c:	e08f3003 	add	r3, pc, r3
  8af010:	e59fc040 	ldr	ip, [pc, #64]	@ 8af058 <std::_Sp_counted_ptr<CommandLineCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af014:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af018:	e24dd00c 	sub	sp, sp, #12
  8af01c:	e7932002 	ldr	r2, [r3, r2]
  8af020:	e5921000 	ldr	r1, [r2]
  8af024:	e58d1004 	str	r1, [sp, #4]
  8af028:	e59d1004 	ldr	r1, [sp, #4]
  8af02c:	e5922000 	ldr	r2, [r2]
  8af030:	e793300c 	ldr	r3, [r3, ip]
  8af034:	e1510002 	cmp	r1, r2
  8af038:	e2833008 	add	r3, r3, #8
  8af03c:	e5803000 	str	r3, [r0]
  8af040:	1a000001 	bne	8af04c <std::_Sp_counted_ptr<CommandLineCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af044:	e28dd00c 	add	sp, sp, #12
  8af048:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af04c:	ebe67f10 	bl	24ec94 <__stack_chk_fail@plt>
  8af050:	001780f4 	ldrsheq	r8, [r7], -r4
  8af054:	00003440 	andeq	r3, r0, r0, asr #8
  8af058:	00003d84 	andeq	r3, r0, r4, lsl #27

008af05c <std::_Sp_counted_ptr<LocksCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af05c:	e59f3044 	ldr	r3, [pc, #68]	@ 8af0a8 <std::_Sp_counted_ptr<LocksCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af060:	e59f2044 	ldr	r2, [pc, #68]	@ 8af0ac <std::_Sp_counted_ptr<LocksCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af064:	e08f3003 	add	r3, pc, r3
  8af068:	e59fc040 	ldr	ip, [pc, #64]	@ 8af0b0 <std::_Sp_counted_ptr<LocksCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af06c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af070:	e24dd00c 	sub	sp, sp, #12
  8af074:	e7932002 	ldr	r2, [r3, r2]
  8af078:	e5921000 	ldr	r1, [r2]
  8af07c:	e58d1004 	str	r1, [sp, #4]
  8af080:	e59d1004 	ldr	r1, [sp, #4]
  8af084:	e5922000 	ldr	r2, [r2]
  8af088:	e793300c 	ldr	r3, [r3, ip]
  8af08c:	e1510002 	cmp	r1, r2
  8af090:	e2833008 	add	r3, r3, #8
  8af094:	e5803000 	str	r3, [r0]
  8af098:	1a000001 	bne	8af0a4 <std::_Sp_counted_ptr<LocksCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af09c:	e28dd00c 	add	sp, sp, #12
  8af0a0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af0a4:	ebe67efa 	bl	24ec94 <__stack_chk_fail@plt>
  8af0a8:	0017809c 	mulseq	r7, ip, r0
  8af0ac:	00003440 	andeq	r3, r0, r0, asr #8
  8af0b0:	00003d84 	andeq	r3, r0, r4, lsl #27

008af0b4 <std::_Sp_counted_ptr<EnvCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af0b4:	e59f3044 	ldr	r3, [pc, #68]	@ 8af100 <std::_Sp_counted_ptr<EnvCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af0b8:	e59f2044 	ldr	r2, [pc, #68]	@ 8af104 <std::_Sp_counted_ptr<EnvCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af0bc:	e08f3003 	add	r3, pc, r3
  8af0c0:	e59fc040 	ldr	ip, [pc, #64]	@ 8af108 <std::_Sp_counted_ptr<EnvCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af0c4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af0c8:	e24dd00c 	sub	sp, sp, #12
  8af0cc:	e7932002 	ldr	r2, [r3, r2]
  8af0d0:	e5921000 	ldr	r1, [r2]
  8af0d4:	e58d1004 	str	r1, [sp, #4]
  8af0d8:	e59d1004 	ldr	r1, [sp, #4]
  8af0dc:	e5922000 	ldr	r2, [r2]
  8af0e0:	e793300c 	ldr	r3, [r3, ip]
  8af0e4:	e1510002 	cmp	r1, r2
  8af0e8:	e2833008 	add	r3, r3, #8
  8af0ec:	e5803000 	str	r3, [r0]
  8af0f0:	1a000001 	bne	8af0fc <std::_Sp_counted_ptr<EnvCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af0f4:	e28dd00c 	add	sp, sp, #12
  8af0f8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af0fc:	ebe67ee4 	bl	24ec94 <__stack_chk_fail@plt>
  8af100:	00178044 	andseq	r8, r7, r4, asr #32
  8af104:	00003440 	andeq	r3, r0, r0, asr #8
  8af108:	00003d84 	andeq	r3, r0, r4, lsl #27

008af10c <std::_Sp_counted_ptr<ColorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af10c:	e59f3044 	ldr	r3, [pc, #68]	@ 8af158 <std::_Sp_counted_ptr<ColorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af110:	e59f2044 	ldr	r2, [pc, #68]	@ 8af15c <std::_Sp_counted_ptr<ColorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af114:	e08f3003 	add	r3, pc, r3
  8af118:	e59fc040 	ldr	ip, [pc, #64]	@ 8af160 <std::_Sp_counted_ptr<ColorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af11c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af120:	e24dd00c 	sub	sp, sp, #12
  8af124:	e7932002 	ldr	r2, [r3, r2]
  8af128:	e5921000 	ldr	r1, [r2]
  8af12c:	e58d1004 	str	r1, [sp, #4]
  8af130:	e59d1004 	ldr	r1, [sp, #4]
  8af134:	e5922000 	ldr	r2, [r2]
  8af138:	e793300c 	ldr	r3, [r3, ip]
  8af13c:	e1510002 	cmp	r1, r2
  8af140:	e2833008 	add	r3, r3, #8
  8af144:	e5803000 	str	r3, [r0]
  8af148:	1a000001 	bne	8af154 <std::_Sp_counted_ptr<ColorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af14c:	e28dd00c 	add	sp, sp, #12
  8af150:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af154:	ebe67ece 	bl	24ec94 <__stack_chk_fail@plt>
  8af158:	00177fec 	andseq	r7, r7, ip, ror #31
  8af15c:	00003440 	andeq	r3, r0, r0, asr #8
  8af160:	00003d84 	andeq	r3, r0, r4, lsl #27

008af164 <std::_Sp_counted_ptr<GrepCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af164:	e59f3044 	ldr	r3, [pc, #68]	@ 8af1b0 <std::_Sp_counted_ptr<GrepCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af168:	e59f2044 	ldr	r2, [pc, #68]	@ 8af1b4 <std::_Sp_counted_ptr<GrepCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af16c:	e08f3003 	add	r3, pc, r3
  8af170:	e59fc040 	ldr	ip, [pc, #64]	@ 8af1b8 <std::_Sp_counted_ptr<GrepCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af174:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af178:	e24dd00c 	sub	sp, sp, #12
  8af17c:	e7932002 	ldr	r2, [r3, r2]
  8af180:	e5921000 	ldr	r1, [r2]
  8af184:	e58d1004 	str	r1, [sp, #4]
  8af188:	e59d1004 	ldr	r1, [sp, #4]
  8af18c:	e5922000 	ldr	r2, [r2]
  8af190:	e793300c 	ldr	r3, [r3, ip]
  8af194:	e1510002 	cmp	r1, r2
  8af198:	e2833008 	add	r3, r3, #8
  8af19c:	e5803000 	str	r3, [r0]
  8af1a0:	1a000001 	bne	8af1ac <std::_Sp_counted_ptr<GrepCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af1a4:	e28dd00c 	add	sp, sp, #12
  8af1a8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af1ac:	ebe67eb8 	bl	24ec94 <__stack_chk_fail@plt>
  8af1b0:	00177f94 	mulseq	r7, r4, pc	@ <UNPREDICTABLE>
  8af1b4:	00003440 	andeq	r3, r0, r0, asr #8
  8af1b8:	00003d84 	andeq	r3, r0, r4, lsl #27

008af1bc <std::_Sp_counted_ptr<TimersCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af1bc:	e59f3044 	ldr	r3, [pc, #68]	@ 8af208 <std::_Sp_counted_ptr<TimersCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af1c0:	e59f2044 	ldr	r2, [pc, #68]	@ 8af20c <std::_Sp_counted_ptr<TimersCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af1c4:	e08f3003 	add	r3, pc, r3
  8af1c8:	e59fc040 	ldr	ip, [pc, #64]	@ 8af210 <std::_Sp_counted_ptr<TimersCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af1cc:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af1d0:	e24dd00c 	sub	sp, sp, #12
  8af1d4:	e7932002 	ldr	r2, [r3, r2]
  8af1d8:	e5921000 	ldr	r1, [r2]
  8af1dc:	e58d1004 	str	r1, [sp, #4]
  8af1e0:	e59d1004 	ldr	r1, [sp, #4]
  8af1e4:	e5922000 	ldr	r2, [r2]
  8af1e8:	e793300c 	ldr	r3, [r3, ip]
  8af1ec:	e1510002 	cmp	r1, r2
  8af1f0:	e2833008 	add	r3, r3, #8
  8af1f4:	e5803000 	str	r3, [r0]
  8af1f8:	1a000001 	bne	8af204 <std::_Sp_counted_ptr<TimersCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af1fc:	e28dd00c 	add	sp, sp, #12
  8af200:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af204:	ebe67ea2 	bl	24ec94 <__stack_chk_fail@plt>
  8af208:	00177f3c 	andseq	r7, r7, ip, lsr pc
  8af20c:	00003440 	andeq	r3, r0, r0, asr #8
  8af210:	00003d84 	andeq	r3, r0, r4, lsl #27

008af214 <std::_Sp_counted_ptr<ThreadsCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af214:	e59f3044 	ldr	r3, [pc, #68]	@ 8af260 <std::_Sp_counted_ptr<ThreadsCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af218:	e59f2044 	ldr	r2, [pc, #68]	@ 8af264 <std::_Sp_counted_ptr<ThreadsCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af21c:	e08f3003 	add	r3, pc, r3
  8af220:	e59fc040 	ldr	ip, [pc, #64]	@ 8af268 <std::_Sp_counted_ptr<ThreadsCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af224:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af228:	e24dd00c 	sub	sp, sp, #12
  8af22c:	e7932002 	ldr	r2, [r3, r2]
  8af230:	e5921000 	ldr	r1, [r2]
  8af234:	e58d1004 	str	r1, [sp, #4]
  8af238:	e59d1004 	ldr	r1, [sp, #4]
  8af23c:	e5922000 	ldr	r2, [r2]
  8af240:	e793300c 	ldr	r3, [r3, ip]
  8af244:	e1510002 	cmp	r1, r2
  8af248:	e2833008 	add	r3, r3, #8
  8af24c:	e5803000 	str	r3, [r0]
  8af250:	1a000001 	bne	8af25c <std::_Sp_counted_ptr<ThreadsCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af254:	e28dd00c 	add	sp, sp, #12
  8af258:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af25c:	ebe67e8c 	bl	24ec94 <__stack_chk_fail@plt>
  8af260:	00177ee4 	andseq	r7, r7, r4, ror #29
  8af264:	00003440 	andeq	r3, r0, r0, asr #8
  8af268:	00003d84 	andeq	r3, r0, r4, lsl #27

008af26c <std::_Sp_counted_ptr<SingleCoreCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af26c:	e59f3044 	ldr	r3, [pc, #68]	@ 8af2b8 <std::_Sp_counted_ptr<SingleCoreCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af270:	e59f2044 	ldr	r2, [pc, #68]	@ 8af2bc <std::_Sp_counted_ptr<SingleCoreCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af274:	e08f3003 	add	r3, pc, r3
  8af278:	e59fc040 	ldr	ip, [pc, #64]	@ 8af2c0 <std::_Sp_counted_ptr<SingleCoreCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af27c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af280:	e24dd00c 	sub	sp, sp, #12
  8af284:	e7932002 	ldr	r2, [r3, r2]
  8af288:	e5921000 	ldr	r1, [r2]
  8af28c:	e58d1004 	str	r1, [sp, #4]
  8af290:	e59d1004 	ldr	r1, [sp, #4]
  8af294:	e5922000 	ldr	r2, [r2]
  8af298:	e793300c 	ldr	r3, [r3, ip]
  8af29c:	e1510002 	cmp	r1, r2
  8af2a0:	e2833008 	add	r3, r3, #8
  8af2a4:	e5803000 	str	r3, [r0]
  8af2a8:	1a000001 	bne	8af2b4 <std::_Sp_counted_ptr<SingleCoreCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af2ac:	e28dd00c 	add	sp, sp, #12
  8af2b0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af2b4:	ebe67e76 	bl	24ec94 <__stack_chk_fail@plt>
  8af2b8:	00177e8c 	andseq	r7, r7, ip, lsl #29
  8af2bc:	00003440 	andeq	r3, r0, r0, asr #8
  8af2c0:	00003d84 	andeq	r3, r0, r4, lsl #27

008af2c4 <std::_Sp_counted_ptr<TimeCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af2c4:	e59f3044 	ldr	r3, [pc, #68]	@ 8af310 <std::_Sp_counted_ptr<TimeCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af2c8:	e59f2044 	ldr	r2, [pc, #68]	@ 8af314 <std::_Sp_counted_ptr<TimeCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af2cc:	e08f3003 	add	r3, pc, r3
  8af2d0:	e59fc040 	ldr	ip, [pc, #64]	@ 8af318 <std::_Sp_counted_ptr<TimeCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af2d4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af2d8:	e24dd00c 	sub	sp, sp, #12
  8af2dc:	e7932002 	ldr	r2, [r3, r2]
  8af2e0:	e5921000 	ldr	r1, [r2]
  8af2e4:	e58d1004 	str	r1, [sp, #4]
  8af2e8:	e59d1004 	ldr	r1, [sp, #4]
  8af2ec:	e5922000 	ldr	r2, [r2]
  8af2f0:	e793300c 	ldr	r3, [r3, ip]
  8af2f4:	e1510002 	cmp	r1, r2
  8af2f8:	e2833008 	add	r3, r3, #8
  8af2fc:	e5803000 	str	r3, [r0]
  8af300:	1a000001 	bne	8af30c <std::_Sp_counted_ptr<TimeCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af304:	e28dd00c 	add	sp, sp, #12
  8af308:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af30c:	ebe67e60 	bl	24ec94 <__stack_chk_fail@plt>
  8af310:	00177e34 	andseq	r7, r7, r4, lsr lr
  8af314:	00003440 	andeq	r3, r0, r0, asr #8
  8af318:	00003d84 	andeq	r3, r0, r4, lsl #27

008af31c <std::_Sp_counted_ptr<UlimitCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af31c:	e59f3044 	ldr	r3, [pc, #68]	@ 8af368 <std::_Sp_counted_ptr<UlimitCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af320:	e59f2044 	ldr	r2, [pc, #68]	@ 8af36c <std::_Sp_counted_ptr<UlimitCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af324:	e08f3003 	add	r3, pc, r3
  8af328:	e59fc040 	ldr	ip, [pc, #64]	@ 8af370 <std::_Sp_counted_ptr<UlimitCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af32c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af330:	e24dd00c 	sub	sp, sp, #12
  8af334:	e7932002 	ldr	r2, [r3, r2]
  8af338:	e5921000 	ldr	r1, [r2]
  8af33c:	e58d1004 	str	r1, [sp, #4]
  8af340:	e59d1004 	ldr	r1, [sp, #4]
  8af344:	e5922000 	ldr	r2, [r2]
  8af348:	e793300c 	ldr	r3, [r3, ip]
  8af34c:	e1510002 	cmp	r1, r2
  8af350:	e2833008 	add	r3, r3, #8
  8af354:	e5803000 	str	r3, [r0]
  8af358:	1a000001 	bne	8af364 <std::_Sp_counted_ptr<UlimitCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af35c:	e28dd00c 	add	sp, sp, #12
  8af360:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af364:	ebe67e4a 	bl	24ec94 <__stack_chk_fail@plt>
  8af368:	00177ddc 			@ <UNDEFINED> instruction: 0x00177ddc
  8af36c:	00003440 	andeq	r3, r0, r0, asr #8
  8af370:	00003d84 	andeq	r3, r0, r4, lsl #27

008af374 <std::_Sp_counted_ptr<CatCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af374:	e59f3044 	ldr	r3, [pc, #68]	@ 8af3c0 <std::_Sp_counted_ptr<CatCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af378:	e59f2044 	ldr	r2, [pc, #68]	@ 8af3c4 <std::_Sp_counted_ptr<CatCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af37c:	e08f3003 	add	r3, pc, r3
  8af380:	e59fc040 	ldr	ip, [pc, #64]	@ 8af3c8 <std::_Sp_counted_ptr<CatCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af384:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af388:	e24dd00c 	sub	sp, sp, #12
  8af38c:	e7932002 	ldr	r2, [r3, r2]
  8af390:	e5921000 	ldr	r1, [r2]
  8af394:	e58d1004 	str	r1, [sp, #4]
  8af398:	e59d1004 	ldr	r1, [sp, #4]
  8af39c:	e5922000 	ldr	r2, [r2]
  8af3a0:	e793300c 	ldr	r3, [r3, ip]
  8af3a4:	e1510002 	cmp	r1, r2
  8af3a8:	e2833008 	add	r3, r3, #8
  8af3ac:	e5803000 	str	r3, [r0]
  8af3b0:	1a000001 	bne	8af3bc <std::_Sp_counted_ptr<CatCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af3b4:	e28dd00c 	add	sp, sp, #12
  8af3b8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af3bc:	ebe67e34 	bl	24ec94 <__stack_chk_fail@plt>
  8af3c0:	00177d84 	andseq	r7, r7, r4, lsl #27
  8af3c4:	00003440 	andeq	r3, r0, r0, asr #8
  8af3c8:	00003d84 	andeq	r3, r0, r4, lsl #27

008af3cc <std::_Sp_counted_ptr<CPUThiefCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af3cc:	e59f3044 	ldr	r3, [pc, #68]	@ 8af418 <std::_Sp_counted_ptr<CPUThiefCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af3d0:	e59f2044 	ldr	r2, [pc, #68]	@ 8af41c <std::_Sp_counted_ptr<CPUThiefCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af3d4:	e08f3003 	add	r3, pc, r3
  8af3d8:	e59fc040 	ldr	ip, [pc, #64]	@ 8af420 <std::_Sp_counted_ptr<CPUThiefCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af3dc:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af3e0:	e24dd00c 	sub	sp, sp, #12
  8af3e4:	e7932002 	ldr	r2, [r3, r2]
  8af3e8:	e5921000 	ldr	r1, [r2]
  8af3ec:	e58d1004 	str	r1, [sp, #4]
  8af3f0:	e59d1004 	ldr	r1, [sp, #4]
  8af3f4:	e5922000 	ldr	r2, [r2]
  8af3f8:	e793300c 	ldr	r3, [r3, ip]
  8af3fc:	e1510002 	cmp	r1, r2
  8af400:	e2833008 	add	r3, r3, #8
  8af404:	e5803000 	str	r3, [r0]
  8af408:	1a000001 	bne	8af414 <std::_Sp_counted_ptr<CPUThiefCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af40c:	e28dd00c 	add	sp, sp, #12
  8af410:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af414:	ebe67e1e 	bl	24ec94 <__stack_chk_fail@plt>
  8af418:	00177d2c 	andseq	r7, r7, ip, lsr #26
  8af41c:	00003440 	andeq	r3, r0, r0, asr #8
  8af420:	00003d84 	andeq	r3, r0, r4, lsl #27

008af424 <std::_Sp_counted_ptr<LogFileCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af424:	e59f3044 	ldr	r3, [pc, #68]	@ 8af470 <std::_Sp_counted_ptr<LogFileCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af428:	e59f2044 	ldr	r2, [pc, #68]	@ 8af474 <std::_Sp_counted_ptr<LogFileCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af42c:	e08f3003 	add	r3, pc, r3
  8af430:	e59fc040 	ldr	ip, [pc, #64]	@ 8af478 <std::_Sp_counted_ptr<LogFileCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af434:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af438:	e24dd00c 	sub	sp, sp, #12
  8af43c:	e7932002 	ldr	r2, [r3, r2]
  8af440:	e5921000 	ldr	r1, [r2]
  8af444:	e58d1004 	str	r1, [sp, #4]
  8af448:	e59d1004 	ldr	r1, [sp, #4]
  8af44c:	e5922000 	ldr	r2, [r2]
  8af450:	e793300c 	ldr	r3, [r3, ip]
  8af454:	e1510002 	cmp	r1, r2
  8af458:	e2833008 	add	r3, r3, #8
  8af45c:	e5803000 	str	r3, [r0]
  8af460:	1a000001 	bne	8af46c <std::_Sp_counted_ptr<LogFileCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af464:	e28dd00c 	add	sp, sp, #12
  8af468:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af46c:	ebe67e08 	bl	24ec94 <__stack_chk_fail@plt>
  8af470:	00177cd4 			@ <UNDEFINED> instruction: 0x00177cd4
  8af474:	00003440 	andeq	r3, r0, r0, asr #8
  8af478:	00003d84 	andeq	r3, r0, r4, lsl #27

008af47c <std::_Sp_counted_ptr<SeparatorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af47c:	e59f3044 	ldr	r3, [pc, #68]	@ 8af4c8 <std::_Sp_counted_ptr<SeparatorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af480:	e59f2044 	ldr	r2, [pc, #68]	@ 8af4cc <std::_Sp_counted_ptr<SeparatorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af484:	e08f3003 	add	r3, pc, r3
  8af488:	e59fc040 	ldr	ip, [pc, #64]	@ 8af4d0 <std::_Sp_counted_ptr<SeparatorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af48c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af490:	e24dd00c 	sub	sp, sp, #12
  8af494:	e7932002 	ldr	r2, [r3, r2]
  8af498:	e5921000 	ldr	r1, [r2]
  8af49c:	e58d1004 	str	r1, [sp, #4]
  8af4a0:	e59d1004 	ldr	r1, [sp, #4]
  8af4a4:	e5922000 	ldr	r2, [r2]
  8af4a8:	e793300c 	ldr	r3, [r3, ip]
  8af4ac:	e1510002 	cmp	r1, r2
  8af4b0:	e2833008 	add	r3, r3, #8
  8af4b4:	e5803000 	str	r3, [r0]
  8af4b8:	1a000001 	bne	8af4c4 <std::_Sp_counted_ptr<SeparatorCommand*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  8af4bc:	e28dd00c 	add	sp, sp, #12
  8af4c0:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  8af4c4:	ebe67df2 	bl	24ec94 <__stack_chk_fail@plt>
  8af4c8:	00177c7c 	andseq	r7, r7, ip, ror ip
  8af4cc:	00003440 	andeq	r3, r0, r0, asr #8
  8af4d0:	00003d84 	andeq	r3, r0, r4, lsl #27

008af4d4 <std::_Sp_counted_ptr<netflix::Console::Filters*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  8af4d4:	e59f3044 	ldr	r3, [pc, #68]	@ 8af520 <std::_Sp_counted_ptr<netflix::Console::Filters*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  8af4d8:	e59f2044 	ldr	r2, [pc, #68]	@ 8af524 <std::_Sp_counted_ptr<netflix::Console::Filters*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  8af4dc:	e08f3003 	add	r3, pc, r3
  8af4e0:	e59fc040 	ldr	ip, [pc, #64]	@ 8af528 <std::_Sp_counted_ptr<netflix::Console::Filters*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  8af4e4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  8af4e8:	e24dd00c 	sub	sp, sp, #12
  8af4ec:	e7932002 	ldr	r2, [r3, r2]
  8af4f0:	e5921000 	ldr	r1, [r2]
  8af4f4:	e58d1004 	str	r1, [sp, #4]
  8af4f8:	e59d1004 	ldr	r1, [sp, #4]
  8af4fc:	e5922000 	ldr	r2, [r2]
