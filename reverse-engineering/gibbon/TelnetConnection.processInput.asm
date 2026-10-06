
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

006da168 <netflix::TelnetConnection::processInput()@@Base>:
  6da168:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  6da16c:	e24dd07c 	sub	sp, sp, #124	@ 0x7c
  6da170:	e59f7fe0 	ldr	r7, [pc, #4064]	@ 6db158 <netflix::TelnetConnection::processInput()@@Base+0xff0>
  6da174:	e1a04000 	mov	r4, r0
  6da178:	e59f9fdc 	ldr	r9, [pc, #4060]	@ 6db15c <netflix::TelnetConnection::processInput()@@Base+0xff4>
  6da17c:	e08f7007 	add	r7, pc, r7
  6da180:	e58d7008 	str	r7, [sp, #8]
  6da184:	e59f7fd4 	ldr	r7, [pc, #4052]	@ 6db160 <netflix::TelnetConnection::processInput()@@Base+0xff8>
  6da188:	e08f9009 	add	r9, pc, r9
  6da18c:	e59f3fd0 	ldr	r3, [pc, #4048]	@ 6db164 <netflix::TelnetConnection::processInput()@@Base+0xffc>
  6da190:	e08f7007 	add	r7, pc, r7
  6da194:	e58d7010 	str	r7, [sp, #16]
  6da198:	e59f7fc8 	ldr	r7, [pc, #4040]	@ 6db168 <netflix::TelnetConnection::processInput()@@Base+0x1000>
  6da19c:	e7993003 	ldr	r3, [r9, r3]
  6da1a0:	e08f7007 	add	r7, pc, r7
  6da1a4:	e58d7004 	str	r7, [sp, #4]
  6da1a8:	e59f7fbc 	ldr	r7, [pc, #4028]	@ 6db16c <netflix::TelnetConnection::processInput()@@Base+0x1004>
  6da1ac:	e58d301c 	str	r3, [sp, #28]
  6da1b0:	e08f7007 	add	r7, pc, r7
  6da1b4:	e58d700c 	str	r7, [sp, #12]
  6da1b8:	e59f7fb0 	ldr	r7, [pc, #4016]	@ 6db170 <netflix::TelnetConnection::processInput()@@Base+0x1008>
  6da1bc:	e5933000 	ldr	r3, [r3]
  6da1c0:	e08f7007 	add	r7, pc, r7
  6da1c4:	e58d7020 	str	r7, [sp, #32]
  6da1c8:	e59f7fa4 	ldr	r7, [pc, #4004]	@ 6db174 <netflix::TelnetConnection::processInput()@@Base+0x100c>
  6da1cc:	e58d3074 	str	r3, [sp, #116]	@ 0x74
  6da1d0:	e08f7007 	add	r7, pc, r7
  6da1d4:	e58d7024 	str	r7, [sp, #36]	@ 0x24
  6da1d8:	e5943180 	ldr	r3, [r4, #384]	@ 0x180
  6da1dc:	e513300c 	ldr	r3, [r3, #-12]
  6da1e0:	e3530000 	cmp	r3, #0
  6da1e4:	0a000182 	beq	6da7f4 <netflix::TelnetConnection::processInput()@@Base+0x68c>
  6da1e8:	e5d4b1b4 	ldrb	fp, [r4, #436]	@ 0x1b4
  6da1ec:	e35b0000 	cmp	fp, #0
  6da1f0:	1a000268 	bne	6dab98 <netflix::TelnetConnection::processInput()@@Base+0xa30>
  6da1f4:	e59431a8 	ldr	r3, [r4, #424]	@ 0x1a8
  6da1f8:	e3530000 	cmp	r3, #0
  6da1fc:	ba00017d 	blt	6da7f8 <netflix::TelnetConnection::processInput()@@Base+0x690>
  6da200:	e5d461cd 	ldrb	r6, [r4, #461]	@ 0x1cd
  6da204:	e3560000 	cmp	r6, #0
  6da208:	02845d06 	addeq	r5, r4, #384	@ 0x180
  6da20c:	0a00005a 	beq	6da37c <netflix::TelnetConnection::processInput()@@Base+0x214>
  6da210:	e59fcf60 	ldr	ip, [pc, #3936]	@ 6db178 <netflix::TelnetConnection::processInput()@@Base+0x1010>
  6da214:	e2845d06 	add	r5, r4, #384	@ 0x180
  6da218:	e59d1008 	ldr	r1, [sp, #8]
  6da21c:	e1a0200b 	mov	r2, fp
  6da220:	e1a00005 	mov	r0, r5
  6da224:	e3a03001 	mov	r3, #1
  6da228:	e799c00c 	ldr	ip, [r9, ip]
  6da22c:	e28cc00c 	add	ip, ip, #12
  6da230:	e58dc04c 	str	ip, [sp, #76]	@ 0x4c
  6da234:	ebedde5d 	bl	251bb0 <std::string::find_first_of(char const*, unsigned int, unsigned int) const@plt>
  6da238:	e3700001 	cmn	r0, #1
  6da23c:	e1a07000 	mov	r7, r0
  6da240:	0a000174 	beq	6da818 <netflix::TelnetConnection::processInput()@@Base+0x6b0>
  6da244:	e28d8054 	add	r8, sp, #84	@ 0x54
  6da248:	e3a03000 	mov	r3, #0
  6da24c:	e59d1010 	ldr	r1, [sp, #16]
  6da250:	e28d2048 	add	r2, sp, #72	@ 0x48
  6da254:	e5c431cd 	strb	r3, [r4, #461]	@ 0x1cd
  6da258:	e1a00008 	mov	r0, r8
  6da25c:	ebedde35 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  6da260:	e1a00004 	mov	r0, r4
  6da264:	e1a01008 	mov	r1, r8
  6da268:	eb000bc4 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6da26c:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  6da270:	e28da050 	add	sl, sp, #80	@ 0x50
  6da274:	e240000c 	sub	r0, r0, #12
  6da278:	e1a0100a 	mov	r1, sl
  6da27c:	ebedd6c5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da280:	e1a0000a 	mov	r0, sl
  6da284:	e1a01005 	mov	r1, r5
  6da288:	e3a02000 	mov	r2, #0
  6da28c:	e1a03007 	mov	r3, r7
  6da290:	ebeddf2a 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  6da294:	e28dc04c 	add	ip, sp, #76	@ 0x4c
  6da298:	e1a0100a 	mov	r1, sl
  6da29c:	e58dc000 	str	ip, [sp]
  6da2a0:	e1a0000c 	mov	r0, ip
  6da2a4:	ebeddb98 	bl	25110c <std::string::swap(std::string&)@plt>
  6da2a8:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6da2ac:	e1a01008 	mov	r1, r8
  6da2b0:	e2877001 	add	r7, r7, #1
  6da2b4:	e240000c 	sub	r0, r0, #12
  6da2b8:	ebedd6b6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da2bc:	e5942180 	ldr	r2, [r4, #384]	@ 0x180
  6da2c0:	e3a01000 	mov	r1, #0
  6da2c4:	e1a00005 	mov	r0, r5
  6da2c8:	e1a03001 	mov	r3, r1
  6da2cc:	e512200c 	ldr	r2, [r2, #-12]
  6da2d0:	e1570002 	cmp	r7, r2
  6da2d4:	31a02007 	movcc	r2, r7
  6da2d8:	ebedd3fc 	bl	24f2d0 <std::string::_M_mutate(unsigned int, unsigned int, unsigned int)@plt>
  6da2dc:	e1a00005 	mov	r0, r5
  6da2e0:	e1a01005 	mov	r1, r5
  6da2e4:	ebeddbeb 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da2e8:	e59f3e8c 	ldr	r3, [pc, #3724]	@ 6db17c <netflix::TelnetConnection::processInput()@@Base+0x1014>
  6da2ec:	e7993003 	ldr	r3, [r9, r3]
  6da2f0:	e5933000 	ldr	r3, [r3]
  6da2f4:	e59370d4 	ldr	r7, [r3, #212]	@ 0xd4
  6da2f8:	e59300d0 	ldr	r0, [r3, #208]	@ 0xd0
  6da2fc:	e3570000 	cmp	r7, #0
  6da300:	0a00000b 	beq	6da334 <netflix::TelnetConnection::processInput()@@Base+0x1cc>
  6da304:	e59f2e74 	ldr	r2, [pc, #3700]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da308:	e2873004 	add	r3, r7, #4
  6da30c:	e7992002 	ldr	r2, [r9, r2]
  6da310:	e3520000 	cmp	r2, #0
  6da314:	0a000332 	beq	6dafe4 <netflix::TelnetConnection::processInput()@@Base+0xe7c>
  6da318:	f57ff05f 	dmb	sy
  6da31c:	e193cf9f 	ldrex	r12, [r3]
  6da320:	e28cc001 	add	ip, ip, #1
  6da324:	e1831f9c 	strex	r1, ip, [r3]
  6da328:	e3510000 	cmp	r1, #0
  6da32c:	1afffffa 	bne	6da31c <netflix::TelnetConnection::processInput()@@Base+0x1b4>
  6da330:	f57ff05f 	dmb	sy
  6da334:	e3500000 	cmp	r0, #0
  6da338:	0a000003 	beq	6da34c <netflix::TelnetConnection::processInput()@@Base+0x1e4>
  6da33c:	e5903000 	ldr	r3, [r0]
  6da340:	e59d1000 	ldr	r1, [sp]
  6da344:	e5933014 	ldr	r3, [r3, #20]
  6da348:	e12fff33 	blx	r3
  6da34c:	e3570000 	cmp	r7, #0
  6da350:	0a000001 	beq	6da35c <netflix::TelnetConnection::processInput()@@Base+0x1f4>
  6da354:	e1a00007 	mov	r0, r7
  6da358:	ebee4185 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da35c:	e5943180 	ldr	r3, [r4, #384]	@ 0x180
  6da360:	e28d1054 	add	r1, sp, #84	@ 0x54
  6da364:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6da368:	e513300c 	ldr	r3, [r3, #-12]
  6da36c:	e3530000 	cmp	r3, #0
  6da370:	0a00021f 	beq	6dabf4 <netflix::TelnetConnection::processInput()@@Base+0xa8c>
  6da374:	e240000c 	sub	r0, r0, #12
  6da378:	ebedd686 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da37c:	e1a00005 	mov	r0, r5
  6da380:	e59d1004 	ldr	r1, [sp, #4]
  6da384:	e3a02000 	mov	r2, #0
  6da388:	e3a03002 	mov	r3, #2
  6da38c:	ebedde07 	bl	251bb0 <std::string::find_first_of(char const*, unsigned int, unsigned int) const@plt>
  6da390:	e3700001 	cmn	r0, #1
  6da394:	e1a07000 	mov	r7, r0
  6da398:	0a000115 	beq	6da7f4 <netflix::TelnetConnection::processInput()@@Base+0x68c>
  6da39c:	e28d6038 	add	r6, sp, #56	@ 0x38
  6da3a0:	e1a03000 	mov	r3, r0
  6da3a4:	e1a01005 	mov	r1, r5
  6da3a8:	e3a02000 	mov	r2, #0
  6da3ac:	e1a00006 	mov	r0, r6
  6da3b0:	e2877001 	add	r7, r7, #1
  6da3b4:	ebeddee1 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  6da3b8:	e5942180 	ldr	r2, [r4, #384]	@ 0x180
  6da3bc:	e3a01000 	mov	r1, #0
  6da3c0:	e1a00005 	mov	r0, r5
  6da3c4:	e1a03001 	mov	r3, r1
  6da3c8:	e512200c 	ldr	r2, [r2, #-12]
  6da3cc:	e1570002 	cmp	r7, r2
  6da3d0:	31a02007 	movcc	r2, r7
  6da3d4:	ebedd3bd 	bl	24f2d0 <std::string::_M_mutate(unsigned int, unsigned int, unsigned int)@plt>
  6da3d8:	e59f2d98 	ldr	r2, [pc, #3480]	@ 6db178 <netflix::TelnetConnection::processInput()@@Base+0x1010>
  6da3dc:	e28d8054 	add	r8, sp, #84	@ 0x54
  6da3e0:	e3a03000 	mov	r3, #0
  6da3e4:	e58d3054 	str	r3, [sp, #84]	@ 0x54
  6da3e8:	e58d3058 	str	r3, [sp, #88]	@ 0x58
  6da3ec:	e1a01006 	mov	r1, r6
  6da3f0:	e7995002 	ldr	r5, [r9, r2]
  6da3f4:	e1a00008 	mov	r0, r8
  6da3f8:	e58d3064 	str	r3, [sp, #100]	@ 0x64
  6da3fc:	e285200c 	add	r2, r5, #12
  6da400:	e58d3068 	str	r3, [sp, #104]	@ 0x68
  6da404:	e58d306c 	str	r3, [sp, #108]	@ 0x6c
  6da408:	e58d3070 	str	r3, [sp, #112]	@ 0x70
  6da40c:	e58d205c 	str	r2, [sp, #92]	@ 0x5c
  6da410:	e58d2060 	str	r2, [sp, #96]	@ 0x60
  6da414:	eb072f7e 	bl	8a6214 <netflix::Console::Command::Arguments::parse(std::string const&)@@Base>
  6da418:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6da41c:	e59d7068 	ldr	r7, [sp, #104]	@ 0x68
  6da420:	e0603007 	rsb	r3, r0, r7
  6da424:	e1b03123 	lsrs	r3, r3, #2
  6da428:	1a000055 	bne	6da584 <netflix::TelnetConnection::processInput()@@Base+0x41c>
  6da42c:	e59d3070 	ldr	r3, [sp, #112]	@ 0x70
  6da430:	e3530001 	cmp	r3, #1
  6da434:	0a00002e 	beq	6da4f4 <netflix::TelnetConnection::processInput()@@Base+0x38c>
  6da438:	e1500007 	cmp	r0, r7
  6da43c:	0a000008 	beq	6da464 <netflix::TelnetConnection::processInput()@@Base+0x2fc>
  6da440:	e28d8050 	add	r8, sp, #80	@ 0x50
  6da444:	e1a06000 	mov	r6, r0
  6da448:	e4963004 	ldr	r3, [r6], #4
  6da44c:	e243000c 	sub	r0, r3, #12
  6da450:	e1500005 	cmp	r0, r5
  6da454:	1a000232 	bne	6dad24 <netflix::TelnetConnection::processInput()@@Base+0xbbc>
  6da458:	e1570006 	cmp	r7, r6
  6da45c:	1afffff9 	bne	6da448 <netflix::TelnetConnection::processInput()@@Base+0x2e0>
  6da460:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6da464:	e3500000 	cmp	r0, #0
  6da468:	0a000000 	beq	6da470 <netflix::TelnetConnection::processInput()@@Base+0x308>
  6da46c:	ebedd787 	bl	250290 <operator delete(void*)@plt>
  6da470:	e59d3060 	ldr	r3, [sp, #96]	@ 0x60
  6da474:	e243000c 	sub	r0, r3, #12
  6da478:	e1500005 	cmp	r0, r5
  6da47c:	1a0002ed 	bne	6db038 <netflix::TelnetConnection::processInput()@@Base+0xed0>
  6da480:	e59d305c 	ldr	r3, [sp, #92]	@ 0x5c
  6da484:	e243000c 	sub	r0, r3, #12
  6da488:	e1500005 	cmp	r0, r5
  6da48c:	1a0002d8 	bne	6daff4 <netflix::TelnetConnection::processInput()@@Base+0xe8c>
  6da490:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  6da494:	e3500000 	cmp	r0, #0
  6da498:	0a000000 	beq	6da4a0 <netflix::TelnetConnection::processInput()@@Base+0x338>
  6da49c:	ebee4134 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da4a0:	e59d3038 	ldr	r3, [sp, #56]	@ 0x38
  6da4a4:	e243000c 	sub	r0, r3, #12
  6da4a8:	e1500005 	cmp	r0, r5
  6da4ac:	0affff49 	beq	6da1d8 <netflix::TelnetConnection::processInput()@@Base+0x70>
  6da4b0:	e59f1cc8 	ldr	r1, [pc, #3272]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da4b4:	e2432004 	sub	r2, r3, #4
  6da4b8:	e7991001 	ldr	r1, [r9, r1]
  6da4bc:	e3510000 	cmp	r1, #0
  6da4c0:	0a0002a6 	beq	6daf60 <netflix::TelnetConnection::processInput()@@Base+0xdf8>
  6da4c4:	f57ff05f 	dmb	sy
  6da4c8:	e1923f9f 	ldrex	r3, [r2]
  6da4cc:	e243c001 	sub	ip, r3, #1
  6da4d0:	e1821f9c 	strex	r1, ip, [r2]
  6da4d4:	e3510000 	cmp	r1, #0
  6da4d8:	1afffffa 	bne	6da4c8 <netflix::TelnetConnection::processInput()@@Base+0x360>
  6da4dc:	f57ff05f 	dmb	sy
  6da4e0:	e3530000 	cmp	r3, #0
  6da4e4:	caffff3b 	bgt	6da1d8 <netflix::TelnetConnection::processInput()@@Base+0x70>
  6da4e8:	e28d1050 	add	r1, sp, #80	@ 0x50
  6da4ec:	ebeddbfc 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6da4f0:	eaffff38 	b	6da1d8 <netflix::TelnetConnection::processInput()@@Base+0x70>
  6da4f4:	e59461d4 	ldr	r6, [r4, #468]	@ 0x1d4
  6da4f8:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  6da4fc:	e59431d0 	ldr	r3, [r4, #464]	@ 0x1d0
  6da500:	e1560000 	cmp	r6, r0
  6da504:	e58d3054 	str	r3, [sp, #84]	@ 0x54
  6da508:	0a000012 	beq	6da558 <netflix::TelnetConnection::processInput()@@Base+0x3f0>
  6da50c:	e3560000 	cmp	r6, #0
  6da510:	0a00000c 	beq	6da548 <netflix::TelnetConnection::processInput()@@Base+0x3e0>
  6da514:	e59f2c64 	ldr	r2, [pc, #3172]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da518:	e2863004 	add	r3, r6, #4
  6da51c:	e7992002 	ldr	r2, [r9, r2]
  6da520:	e3520000 	cmp	r2, #0
  6da524:	0a000326 	beq	6db1c4 <netflix::TelnetConnection::processInput()@@Base+0x105c>
  6da528:	f57ff05f 	dmb	sy
  6da52c:	e1932f9f 	ldrex	r2, [r3]
  6da530:	e2822001 	add	r2, r2, #1
  6da534:	e1837f92 	strex	r7, r2, [r3]
  6da538:	e3570000 	cmp	r7, #0
  6da53c:	1afffffa 	bne	6da52c <netflix::TelnetConnection::processInput()@@Base+0x3c4>
  6da540:	f57ff05f 	dmb	sy
  6da544:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  6da548:	e3500000 	cmp	r0, #0
  6da54c:	0a000000 	beq	6da554 <netflix::TelnetConnection::processInput()@@Base+0x3ec>
  6da550:	ebee4107 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da554:	e58d6058 	str	r6, [sp, #88]	@ 0x58
  6da558:	e28d005c 	add	r0, sp, #92	@ 0x5c
  6da55c:	e2841f76 	add	r1, r4, #472	@ 0x1d8
  6da560:	ebeddb4c 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da564:	e28d0060 	add	r0, sp, #96	@ 0x60
  6da568:	e2841f77 	add	r1, r4, #476	@ 0x1dc
  6da56c:	ebeddb49 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da570:	e28d0064 	add	r0, sp, #100	@ 0x64
  6da574:	e2841e1e 	add	r1, r4, #480	@ 0x1e0
  6da578:	ebef8695 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  6da57c:	e59431ec 	ldr	r3, [r4, #492]	@ 0x1ec
  6da580:	e58d3070 	str	r3, [sp, #112]	@ 0x70
  6da584:	e5943178 	ldr	r3, [r4, #376]	@ 0x178
  6da588:	e59d2054 	ldr	r2, [sp, #84]	@ 0x54
  6da58c:	e3530000 	cmp	r3, #0
  6da590:	0a00025c 	beq	6daf08 <netflix::TelnetConnection::processInput()@@Base+0xda0>
  6da594:	e5930004 	ldr	r0, [r3, #4]
  6da598:	e283c004 	add	ip, r3, #4
  6da59c:	e1a01000 	mov	r1, r0
  6da5a0:	e58d004c 	str	r0, [sp, #76]	@ 0x4c
  6da5a4:	e3510000 	cmp	r1, #0
  6da5a8:	0a0002c1 	beq	6db0b4 <netflix::TelnetConnection::processInput()@@Base+0xf4c>
  6da5ac:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6da5b0:	e2811001 	add	r1, r1, #1
  6da5b4:	e28d604c 	add	r6, sp, #76	@ 0x4c
  6da5b8:	f57ff05f 	dmb	sy
  6da5bc:	e19cef9f 	ldrex	r14, [ip]
  6da5c0:	e15e0000 	cmp	lr, r0
  6da5c4:	1a000002 	bne	6da5d4 <netflix::TelnetConnection::processInput()@@Base+0x46c>
  6da5c8:	e18c7f91 	strex	r7, r1, [ip]
  6da5cc:	e3570000 	cmp	r7, #0
  6da5d0:	f57ff05f 	dmb	sy
  6da5d4:	158de04c 	strne	lr, [sp, #76]	@ 0x4c
  6da5d8:	11a0100e 	movne	r1, lr
  6da5dc:	1afffff0 	bne	6da5a4 <netflix::TelnetConnection::processInput()@@Base+0x43c>
  6da5e0:	e5941174 	ldr	r1, [r4, #372]	@ 0x174
  6da5e4:	e5920014 	ldr	r0, [r2, #20]
  6da5e8:	e3510000 	cmp	r1, #0
  6da5ec:	e58d6000 	str	r6, [sp]
  6da5f0:	12811e16 	addne	r1, r1, #352	@ 0x160
  6da5f4:	e3500000 	cmp	r0, #0
  6da5f8:	e5821010 	str	r1, [r2, #16]
  6da5fc:	e5823014 	str	r3, [r2, #20]
  6da600:	0a000000 	beq	6da608 <netflix::TelnetConnection::processInput()@@Base+0x4a0>
  6da604:	ebee40da 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da608:	e59d6058 	ldr	r6, [sp, #88]	@ 0x58
  6da60c:	e59401d4 	ldr	r0, [r4, #468]	@ 0x1d4
  6da610:	e59d3054 	ldr	r3, [sp, #84]	@ 0x54
  6da614:	e1560000 	cmp	r6, r0
  6da618:	e58431d0 	str	r3, [r4, #464]	@ 0x1d0
  6da61c:	0a000012 	beq	6da66c <netflix::TelnetConnection::processInput()@@Base+0x504>
  6da620:	e3560000 	cmp	r6, #0
  6da624:	0a00000c 	beq	6da65c <netflix::TelnetConnection::processInput()@@Base+0x4f4>
  6da628:	e59f2b50 	ldr	r2, [pc, #2896]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da62c:	e2863004 	add	r3, r6, #4
  6da630:	e7992002 	ldr	r2, [r9, r2]
  6da634:	e3520000 	cmp	r2, #0
  6da638:	0a000299 	beq	6db0a4 <netflix::TelnetConnection::processInput()@@Base+0xf3c>
  6da63c:	f57ff05f 	dmb	sy
  6da640:	e193cf9f 	ldrex	r12, [r3]
  6da644:	e28cc001 	add	ip, ip, #1
  6da648:	e1830f9c 	strex	r0, ip, [r3]
  6da64c:	e3500000 	cmp	r0, #0
  6da650:	1afffffa 	bne	6da640 <netflix::TelnetConnection::processInput()@@Base+0x4d8>
  6da654:	f57ff05f 	dmb	sy
  6da658:	e59401d4 	ldr	r0, [r4, #468]	@ 0x1d4
  6da65c:	e3500000 	cmp	r0, #0
  6da660:	0a000000 	beq	6da668 <netflix::TelnetConnection::processInput()@@Base+0x500>
  6da664:	ebee40c2 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da668:	e58461d4 	str	r6, [r4, #468]	@ 0x1d4
  6da66c:	e2840f76 	add	r0, r4, #472	@ 0x1d8
  6da670:	e28d105c 	add	r1, sp, #92	@ 0x5c
  6da674:	ebeddb07 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da678:	e2840f77 	add	r0, r4, #476	@ 0x1dc
  6da67c:	e28d1060 	add	r1, sp, #96	@ 0x60
  6da680:	ebeddb04 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da684:	e2840e1e 	add	r0, r4, #480	@ 0x1e0
  6da688:	e28d1064 	add	r1, sp, #100	@ 0x64
  6da68c:	ebef8650 	bl	2bbfd4 <std::vector<std::string, std::allocator<std::string> >::operator=(std::vector<std::string, std::allocator<std::string> > const&)@@Base>
  6da690:	e59d3070 	ldr	r3, [sp, #112]	@ 0x70
  6da694:	e59d100c 	ldr	r1, [sp, #12]
  6da698:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6da69c:	e58431ec 	str	r3, [r4, #492]	@ 0x1ec
  6da6a0:	ebeddabd 	bl	25119c <std::string::compare(char const*) const@plt>
  6da6a4:	e3500000 	cmp	r0, #0
  6da6a8:	0a000066 	beq	6da848 <netflix::TelnetConnection::processInput()@@Base+0x6e0>
  6da6ac:	e59d3070 	ldr	r3, [sp, #112]	@ 0x70
  6da6b0:	e3530001 	cmp	r3, #1
  6da6b4:	0a0000fb 	beq	6daaa8 <netflix::TelnetConnection::processInput()@@Base+0x940>
  6da6b8:	e59f3abc 	ldr	r3, [pc, #2748]	@ 6db17c <netflix::TelnetConnection::processInput()@@Base+0x1014>
  6da6bc:	e7993003 	ldr	r3, [r9, r3]
  6da6c0:	e5933000 	ldr	r3, [r3]
  6da6c4:	e59360d4 	ldr	r6, [r3, #212]	@ 0xd4
  6da6c8:	e59300d0 	ldr	r0, [r3, #208]	@ 0xd0
  6da6cc:	e3560000 	cmp	r6, #0
  6da6d0:	0a00000b 	beq	6da704 <netflix::TelnetConnection::processInput()@@Base+0x59c>
  6da6d4:	e59f2aa4 	ldr	r2, [pc, #2724]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da6d8:	e2863004 	add	r3, r6, #4
  6da6dc:	e7992002 	ldr	r2, [r9, r2]
  6da6e0:	e3520000 	cmp	r2, #0
  6da6e4:	0a000290 	beq	6db12c <netflix::TelnetConnection::processInput()@@Base+0xfc4>
  6da6e8:	f57ff05f 	dmb	sy
  6da6ec:	e193cf9f 	ldrex	r12, [r3]
  6da6f0:	e28cc001 	add	ip, ip, #1
  6da6f4:	e1831f9c 	strex	r1, ip, [r3]
  6da6f8:	e3510000 	cmp	r1, #0
  6da6fc:	1afffffa 	bne	6da6ec <netflix::TelnetConnection::processInput()@@Base+0x584>
  6da700:	f57ff05f 	dmb	sy
  6da704:	e3500000 	cmp	r0, #0
  6da708:	0a000005 	beq	6da724 <netflix::TelnetConnection::processInput()@@Base+0x5bc>
  6da70c:	e590c000 	ldr	ip, [r0]
  6da710:	e1a01008 	mov	r1, r8
  6da714:	e3a02000 	mov	r2, #0
  6da718:	e3a03000 	mov	r3, #0
  6da71c:	e59cc010 	ldr	ip, [ip, #16]
  6da720:	e12fff3c 	blx	ip
  6da724:	e3560000 	cmp	r6, #0
  6da728:	0a000001 	beq	6da734 <netflix::TelnetConnection::processInput()@@Base+0x5cc>
  6da72c:	e1a00006 	mov	r0, r6
  6da730:	ebee408f 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6da734:	e59d6064 	ldr	r6, [sp, #100]	@ 0x64
  6da738:	e28da050 	add	sl, sp, #80	@ 0x50
  6da73c:	e59d7068 	ldr	r7, [sp, #104]	@ 0x68
  6da740:	e1560007 	cmp	r6, r7
  6da744:	0a000111 	beq	6dab90 <netflix::TelnetConnection::processInput()@@Base+0xa28>
  6da748:	e4963004 	ldr	r3, [r6], #4
  6da74c:	e243000c 	sub	r0, r3, #12
  6da750:	e1500005 	cmp	r0, r5
  6da754:	1a000192 	bne	6dada4 <netflix::TelnetConnection::processInput()@@Base+0xc3c>
  6da758:	e1570006 	cmp	r7, r6
  6da75c:	1afffff9 	bne	6da748 <netflix::TelnetConnection::processInput()@@Base+0x5e0>
  6da760:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6da764:	e3500000 	cmp	r0, #0
  6da768:	0a000000 	beq	6da770 <netflix::TelnetConnection::processInput()@@Base+0x608>
  6da76c:	ebedd6c7 	bl	250290 <operator delete(void*)@plt>
  6da770:	e59d3060 	ldr	r3, [sp, #96]	@ 0x60
  6da774:	e243000c 	sub	r0, r3, #12
  6da778:	e1500005 	cmp	r0, r5
  6da77c:	1a0001c7 	bne	6daea0 <netflix::TelnetConnection::processInput()@@Base+0xd38>
  6da780:	e59d305c 	ldr	r3, [sp, #92]	@ 0x5c
  6da784:	e243000c 	sub	r0, r3, #12
  6da788:	e1500005 	cmp	r0, r5
  6da78c:	1a0001e2 	bne	6daf1c <netflix::TelnetConnection::processInput()@@Base+0xdb4>
  6da790:	e59d6058 	ldr	r6, [sp, #88]	@ 0x58
  6da794:	e3560000 	cmp	r6, #0
  6da798:	0a00000d 	beq	6da7d4 <netflix::TelnetConnection::processInput()@@Base+0x66c>
  6da79c:	e59f29dc 	ldr	r2, [pc, #2524]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6da7a0:	e2863004 	add	r3, r6, #4
  6da7a4:	e7995002 	ldr	r5, [r9, r2]
  6da7a8:	e3550000 	cmp	r5, #0
  6da7ac:	0a0001d6 	beq	6daf0c <netflix::TelnetConnection::processInput()@@Base+0xda4>
  6da7b0:	f57ff05f 	dmb	sy
  6da7b4:	e1932f9f 	ldrex	r2, [r3]
  6da7b8:	e242c001 	sub	ip, r2, #1
  6da7bc:	e1830f9c 	strex	r0, ip, [r3]
  6da7c0:	e3500000 	cmp	r0, #0
  6da7c4:	1afffffa 	bne	6da7b4 <netflix::TelnetConnection::processInput()@@Base+0x64c>
  6da7c8:	f57ff05f 	dmb	sy
  6da7cc:	e3520001 	cmp	r2, #1
  6da7d0:	0a00009f 	beq	6daa54 <netflix::TelnetConnection::processInput()@@Base+0x8ec>
  6da7d4:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  6da7d8:	e1a0100a 	mov	r1, sl
  6da7dc:	e240000c 	sub	r0, r0, #12
  6da7e0:	ebedd56c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da7e4:	e5943180 	ldr	r3, [r4, #384]	@ 0x180
  6da7e8:	e513300c 	ldr	r3, [r3, #-12]
  6da7ec:	e3530000 	cmp	r3, #0
  6da7f0:	1afffe7c 	bne	6da1e8 <netflix::TelnetConnection::processInput()@@Base+0x80>
  6da7f4:	e3a0b001 	mov	fp, #1
  6da7f8:	e59d701c 	ldr	r7, [sp, #28]
  6da7fc:	e1a0000b 	mov	r0, fp
  6da800:	e59d2074 	ldr	r2, [sp, #116]	@ 0x74
  6da804:	e5973000 	ldr	r3, [r7]
  6da808:	e1520003 	cmp	r2, r3
  6da80c:	1a000270 	bne	6db1d4 <netflix::TelnetConnection::processInput()@@Base+0x106c>
  6da810:	e28dd07c 	add	sp, sp, #124	@ 0x7c
  6da814:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  6da818:	e28d704c 	add	r7, sp, #76	@ 0x4c
  6da81c:	e1a01005 	mov	r1, r5
  6da820:	e58d7000 	str	r7, [sp]
  6da824:	e1a00007 	mov	r0, r7
  6da828:	ebedda9a 	bl	251298 <std::string::assign(std::string const&)@plt>
  6da82c:	e5942180 	ldr	r2, [r4, #384]	@ 0x180
  6da830:	e3a01000 	mov	r1, #0
  6da834:	e1a03001 	mov	r3, r1
  6da838:	e1a00005 	mov	r0, r5
  6da83c:	e512200c 	ldr	r2, [r2, #-12]
  6da840:	ebedd2a2 	bl	24f2d0 <std::string::_M_mutate(unsigned int, unsigned int, unsigned int)@plt>
  6da844:	eafffea7 	b	6da2e8 <netflix::TelnetConnection::processInput()@@Base+0x180>
  6da848:	e28d6048 	add	r6, sp, #72	@ 0x48
  6da84c:	e28da050 	add	sl, sp, #80	@ 0x50
  6da850:	e59f192c 	ldr	r1, [pc, #2348]	@ 6db184 <netflix::TelnetConnection::processInput()@@Base+0x101c>
  6da854:	e1a00006 	mov	r0, r6
  6da858:	e1a0200a 	mov	r2, sl
  6da85c:	e08f1001 	add	r1, pc, r1
  6da860:	ebeddcb4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  6da864:	e1a00004 	mov	r0, r4
  6da868:	e1a01006 	mov	r1, r6
  6da86c:	eb000a43 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6da870:	e3500000 	cmp	r0, #0
  6da874:	ba00011f 	blt	6dacf8 <netflix::TelnetConnection::processInput()@@Base+0xb90>
  6da878:	e59d3064 	ldr	r3, [sp, #100]	@ 0x64
  6da87c:	e5930004 	ldr	r0, [r3, #4]
  6da880:	eb084cde 	bl	8edc00 <netflix::Log::stringToLogLevel(char const*)@@Base>
  6da884:	e3500000 	cmp	r0, #0
  6da888:	158401c8 	strne	r0, [r4, #456]	@ 0x1c8
  6da88c:	059401c8 	ldreq	r0, [r4, #456]	@ 0x1c8
  6da890:	03a06001 	moveq	r6, #1
  6da894:	13a06002 	movne	r6, #2
  6da898:	eb084c68 	bl	8eda40 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base>
  6da89c:	e28d703c 	add	r7, sp, #60	@ 0x3c
  6da8a0:	e1a01000 	mov	r1, r0
  6da8a4:	e28d2040 	add	r2, sp, #64	@ 0x40
  6da8a8:	e58d2014 	str	r2, [sp, #20]
  6da8ac:	e1a00007 	mov	r0, r7
  6da8b0:	ebeddca0 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  6da8b4:	e59f28cc 	ldr	r2, [pc, #2252]	@ 6db188 <netflix::TelnetConnection::processInput()@@Base+0x1020>
  6da8b8:	e1a00007 	mov	r0, r7
  6da8bc:	e3a01000 	mov	r1, #0
  6da8c0:	e3a0300a 	mov	r3, #10
  6da8c4:	e08f2002 	add	r2, pc, r2
  6da8c8:	ebedd9be 	bl	250fc8 <std::string::insert(unsigned int, char const*, unsigned int)@plt>
  6da8cc:	e1a03000 	mov	r3, r0
  6da8d0:	e59f18b4 	ldr	r1, [pc, #2228]	@ 6db18c <netflix::TelnetConnection::processInput()@@Base+0x1024>
  6da8d4:	e593e000 	ldr	lr, [r3]
  6da8d8:	e285c00c 	add	ip, r5, #12
  6da8dc:	e1a0000a 	mov	r0, sl
  6da8e0:	e08f1001 	add	r1, pc, r1
  6da8e4:	e3a02001 	mov	r2, #1
  6da8e8:	e58de050 	str	lr, [sp, #80]	@ 0x50
  6da8ec:	e583c000 	str	ip, [r3]
  6da8f0:	ebedd204 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  6da8f4:	e5902000 	ldr	r2, [r0]
  6da8f8:	e285300c 	add	r3, r5, #12
  6da8fc:	e28d7044 	add	r7, sp, #68	@ 0x44
  6da900:	e58d7018 	str	r7, [sp, #24]
  6da904:	e58d204c 	str	r2, [sp, #76]	@ 0x4c
  6da908:	e1a01007 	mov	r1, r7
  6da90c:	e5803000 	str	r3, [r0]
  6da910:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6da914:	e240000c 	sub	r0, r0, #12
  6da918:	ebedd51e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da91c:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  6da920:	e1a0100a 	mov	r1, sl
  6da924:	e240000c 	sub	r0, r0, #12
  6da928:	ebedd51a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da92c:	e1a00004 	mov	r0, r4
  6da930:	e59d1000 	ldr	r1, [sp]
  6da934:	eb000a11 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6da938:	e3500000 	cmp	r0, #0
  6da93c:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6da940:	e1a0100a 	mov	r1, sl
  6da944:	e240000c 	sub	r0, r0, #12
  6da948:	ba0000e9 	blt	6dacf4 <netflix::TelnetConnection::processInput()@@Base+0xb8c>
  6da94c:	ebedd511 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6da950:	e59d1064 	ldr	r1, [sp, #100]	@ 0x64
  6da954:	e59d3068 	ldr	r3, [sp, #104]	@ 0x68
  6da958:	e0613003 	rsb	r3, r1, r3
  6da95c:	e1560143 	cmp	r6, r3, asr #2
  6da960:	31a07106 	lslcc	r7, r6, #2
  6da964:	2a00000a 	bcs	6da994 <netflix::TelnetConnection::processInput()@@Base+0x82c>
  6da968:	e0811007 	add	r1, r1, r7
  6da96c:	e59401c0 	ldr	r0, [r4, #448]	@ 0x1c0
  6da970:	e3a02000 	mov	r2, #0
  6da974:	eb085d32 	bl	8f1e44 <netflix::TraceAreas::apply(std::string const&, netflix::TraceAreas::Mode)@@Base>
  6da978:	e59d1064 	ldr	r1, [sp, #100]	@ 0x64
  6da97c:	e2866001 	add	r6, r6, #1
  6da980:	e59d3068 	ldr	r3, [sp, #104]	@ 0x68
  6da984:	e2877004 	add	r7, r7, #4
  6da988:	e0613003 	rsb	r3, r1, r3
  6da98c:	e1560143 	cmp	r6, r3, asr #2
  6da990:	3afffff4 	bcc	6da968 <netflix::TelnetConnection::processInput()@@Base+0x800>
  6da994:	e28d0040 	add	r0, sp, #64	@ 0x40
  6da998:	e59411c0 	ldr	r1, [r4, #448]	@ 0x1c0
  6da99c:	eb084d75 	bl	8edf78 <netflix::TraceAreas::spec() const@@Base>
  6da9a0:	e59f27e8 	ldr	r2, [pc, #2024]	@ 6db190 <netflix::TelnetConnection::processInput()@@Base+0x1028>
  6da9a4:	e28d0040 	add	r0, sp, #64	@ 0x40
  6da9a8:	e3a01000 	mov	r1, #0
  6da9ac:	e3a0300c 	mov	r3, #12
  6da9b0:	e08f2002 	add	r2, pc, r2
  6da9b4:	ebedd983 	bl	250fc8 <std::string::insert(unsigned int, char const*, unsigned int)@plt>
  6da9b8:	e1a03000 	mov	r3, r0
  6da9bc:	e285c00c 	add	ip, r5, #12
  6da9c0:	e593e000 	ldr	lr, [r3]
  6da9c4:	e3a01001 	mov	r1, #1
  6da9c8:	e59d0000 	ldr	r0, [sp]
  6da9cc:	e3a0200a 	mov	r2, #10
  6da9d0:	e58de04c 	str	lr, [sp, #76]	@ 0x4c
  6da9d4:	e583c000 	str	ip, [r3]
  6da9d8:	ebedcf33 	bl	24e6ac <std::string::append(unsigned int, char)@plt>
  6da9dc:	e1a03000 	mov	r3, r0
  6da9e0:	e285200c 	add	r2, r5, #12
  6da9e4:	e593c000 	ldr	ip, [r3]
  6da9e8:	e1a00004 	mov	r0, r4
  6da9ec:	e1a0100a 	mov	r1, sl
  6da9f0:	e58dc050 	str	ip, [sp, #80]	@ 0x50
  6da9f4:	e5832000 	str	r2, [r3]
  6da9f8:	eb0009e0 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6da9fc:	e1a06000 	mov	r6, r0
  6daa00:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6daa04:	e59d1018 	ldr	r1, [sp, #24]
  6daa08:	e240000c 	sub	r0, r0, #12
  6daa0c:	ebedd4e1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6daa10:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6daa14:	e1a0100a 	mov	r1, sl
  6daa18:	e240000c 	sub	r0, r0, #12
  6daa1c:	ebedd4dd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6daa20:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  6daa24:	e1a0100a 	mov	r1, sl
  6daa28:	e240000c 	sub	r0, r0, #12
  6daa2c:	ebedd4d9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6daa30:	e3560000 	cmp	r6, #0
  6daa34:	ba0000af 	blt	6dacf8 <netflix::TelnetConnection::processInput()@@Base+0xb90>
  6daa38:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  6daa3c:	e1a0100a 	mov	r1, sl
  6daa40:	e240000c 	sub	r0, r0, #12
  6daa44:	ebedd4d3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6daa48:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6daa4c:	e59d7068 	ldr	r7, [sp, #104]	@ 0x68
  6daa50:	eafffe78 	b	6da438 <netflix::TelnetConnection::processInput()@@Base+0x2d0>
  6daa54:	e5963000 	ldr	r3, [r6]
  6daa58:	e1a00006 	mov	r0, r6
  6daa5c:	e5933008 	ldr	r3, [r3, #8]
  6daa60:	e12fff33 	blx	r3
  6daa64:	e3550000 	cmp	r5, #0
  6daa68:	e2863008 	add	r3, r6, #8
  6daa6c:	0a00011c 	beq	6daee4 <netflix::TelnetConnection::processInput()@@Base+0xd7c>
  6daa70:	f57ff05f 	dmb	sy
  6daa74:	e1932f9f 	ldrex	r2, [r3]
  6daa78:	e2421001 	sub	r1, r2, #1
  6daa7c:	e1837f91 	strex	r7, r1, [r3]
  6daa80:	e3570000 	cmp	r7, #0
  6daa84:	1afffffa 	bne	6daa74 <netflix::TelnetConnection::processInput()@@Base+0x90c>
  6daa88:	f57ff05f 	dmb	sy
  6daa8c:	e3520001 	cmp	r2, #1
  6daa90:	1affff4f 	bne	6da7d4 <netflix::TelnetConnection::processInput()@@Base+0x66c>
  6daa94:	e5963000 	ldr	r3, [r6]
  6daa98:	e1a00006 	mov	r0, r6
  6daa9c:	e593300c 	ldr	r3, [r3, #12]
  6daaa0:	e12fff33 	blx	r3
  6daaa4:	eaffff4a 	b	6da7d4 <netflix::TelnetConnection::processInput()@@Base+0x66c>
  6daaa8:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6daaac:	e59d1020 	ldr	r1, [sp, #32]
  6daab0:	ebedd9b9 	bl	25119c <std::string::compare(char const*) const@plt>
  6daab4:	e3500000 	cmp	r0, #0
  6daab8:	1a000038 	bne	6daba0 <netflix::TelnetConnection::processInput()@@Base+0xa38>
  6daabc:	e59d3064 	ldr	r3, [sp, #100]	@ 0x64
  6daac0:	e5930004 	ldr	r0, [r3, #4]
  6daac4:	eb084c4d 	bl	8edc00 <netflix::Log::stringToLogLevel(char const*)@@Base>
  6daac8:	e3500000 	cmp	r0, #0
  6daacc:	158401c8 	strne	r0, [r4, #456]	@ 0x1c8
  6daad0:	059401c8 	ldreq	r0, [r4, #456]	@ 0x1c8
  6daad4:	eb084bd9 	bl	8eda40 <netflix::Log::logLevelToString(netflix::Log::Level)@@Base>
  6daad8:	e28d7044 	add	r7, sp, #68	@ 0x44
  6daadc:	e1a01000 	mov	r1, r0
  6daae0:	e28d2040 	add	r2, sp, #64	@ 0x40
  6daae4:	e58d7018 	str	r7, [sp, #24]
  6daae8:	e1a00007 	mov	r0, r7
  6daaec:	ebeddc11 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  6daaf0:	e59f269c 	ldr	r2, [pc, #1692]	@ 6db194 <netflix::TelnetConnection::processInput()@@Base+0x102c>
  6daaf4:	e3a01000 	mov	r1, #0
  6daaf8:	e59d0018 	ldr	r0, [sp, #24]
  6daafc:	e3a0300a 	mov	r3, #10
  6dab00:	e08f2002 	add	r2, pc, r2
  6dab04:	ebedd92f 	bl	250fc8 <std::string::insert(unsigned int, char const*, unsigned int)@plt>
  6dab08:	e5902000 	ldr	r2, [r0]
  6dab0c:	e28da078 	add	sl, sp, #120	@ 0x78
  6dab10:	e59f1680 	ldr	r1, [pc, #1664]	@ 6db198 <netflix::TelnetConnection::processInput()@@Base+0x1030>
  6dab14:	e285300c 	add	r3, r5, #12
  6dab18:	e52a2028 	str	r2, [sl, #-40]!	@ 0xffffffd8
  6dab1c:	e08f1001 	add	r1, pc, r1
  6dab20:	e5803000 	str	r3, [r0]
  6dab24:	e3a02001 	mov	r2, #1
  6dab28:	e1a0000a 	mov	r0, sl
  6dab2c:	ebedd175 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  6dab30:	e5902000 	ldr	r2, [r0]
  6dab34:	e285300c 	add	r3, r5, #12
  6dab38:	e28d1048 	add	r1, sp, #72	@ 0x48
  6dab3c:	e58d204c 	str	r2, [sp, #76]	@ 0x4c
  6dab40:	e5803000 	str	r3, [r0]
  6dab44:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6dab48:	e240000c 	sub	r0, r0, #12
  6dab4c:	ebedd491 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dab50:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  6dab54:	e1a0100a 	mov	r1, sl
  6dab58:	e240000c 	sub	r0, r0, #12
  6dab5c:	ebedd48d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dab60:	e1a00004 	mov	r0, r4
  6dab64:	e59d1000 	ldr	r1, [sp]
  6dab68:	eb000984 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6dab6c:	e3500000 	cmp	r0, #0
  6dab70:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6dab74:	e1a0100a 	mov	r1, sl
  6dab78:	e240000c 	sub	r0, r0, #12
  6dab7c:	ba0000af 	blt	6dae40 <netflix::TelnetConnection::processInput()@@Base+0xcd8>
  6dab80:	ebedd484 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dab84:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6dab88:	e59d7068 	ldr	r7, [sp, #104]	@ 0x68
  6dab8c:	eafffe29 	b	6da438 <netflix::TelnetConnection::processInput()@@Base+0x2d0>
  6dab90:	e1a00006 	mov	r0, r6
  6dab94:	eafffef2 	b	6da764 <netflix::TelnetConnection::processInput()@@Base+0x5fc>
  6dab98:	e3a0b000 	mov	fp, #0
  6dab9c:	eaffff15 	b	6da7f8 <netflix::TelnetConnection::processInput()@@Base+0x690>
  6daba0:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6daba4:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  6daba8:	ebedd97b 	bl	25119c <std::string::compare(char const*) const@plt>
  6dabac:	e3500000 	cmp	r0, #0
  6dabb0:	1a000013 	bne	6dac04 <netflix::TelnetConnection::processInput()@@Base+0xa9c>
  6dabb4:	e28da050 	add	sl, sp, #80	@ 0x50
  6dabb8:	e59f15dc 	ldr	r1, [pc, #1500]	@ 6db19c <netflix::TelnetConnection::processInput()@@Base+0x1034>
  6dabbc:	e3a03001 	mov	r3, #1
  6dabc0:	e28d2034 	add	r2, sp, #52	@ 0x34
  6dabc4:	e08f1001 	add	r1, pc, r1
  6dabc8:	e1a0000a 	mov	r0, sl
  6dabcc:	e5c431cd 	strb	r3, [r4, #461]	@ 0x1cd
  6dabd0:	ebeddbd8 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  6dabd4:	e1a00004 	mov	r0, r4
  6dabd8:	e1a0100a 	mov	r1, sl
  6dabdc:	eb000967 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6dabe0:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6dabe4:	e59d1000 	ldr	r1, [sp]
  6dabe8:	e240000c 	sub	r0, r0, #12
  6dabec:	ebedd469 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dabf0:	eafffeb0 	b	6da6b8 <netflix::TelnetConnection::processInput()@@Base+0x550>
  6dabf4:	e240000c 	sub	r0, r0, #12
  6dabf8:	e1a0b006 	mov	fp, r6
  6dabfc:	ebedd465 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dac00:	eafffefc 	b	6da7f8 <netflix::TelnetConnection::processInput()@@Base+0x690>
  6dac04:	e59f1594 	ldr	r1, [pc, #1428]	@ 6db1a0 <netflix::TelnetConnection::processInput()@@Base+0x1038>
  6dac08:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6dac0c:	e08f1001 	add	r1, pc, r1
  6dac10:	ebedd961 	bl	25119c <std::string::compare(char const*) const@plt>
  6dac14:	e3500000 	cmp	r0, #0
  6dac18:	1a000052 	bne	6dad68 <netflix::TelnetConnection::processInput()@@Base+0xc00>
  6dac1c:	e59d1064 	ldr	r1, [sp, #100]	@ 0x64
  6dac20:	e59d3068 	ldr	r3, [sp, #104]	@ 0x68
  6dac24:	e0613003 	rsb	r3, r1, r3
  6dac28:	e1a03143 	asr	r3, r3, #2
  6dac2c:	e3530001 	cmp	r3, #1
  6dac30:	0a000058 	beq	6dad98 <netflix::TelnetConnection::processInput()@@Base+0xc30>
  6dac34:	83a06001 	movhi	r6, #1
  6dac38:	9a000009 	bls	6dac64 <netflix::TelnetConnection::processInput()@@Base+0xafc>
  6dac3c:	e0811106 	add	r1, r1, r6, lsl #2
  6dac40:	e59401c0 	ldr	r0, [r4, #448]	@ 0x1c0
  6dac44:	e3a02000 	mov	r2, #0
  6dac48:	eb085c7d 	bl	8f1e44 <netflix::TraceAreas::apply(std::string const&, netflix::TraceAreas::Mode)@@Base>
  6dac4c:	e59d1064 	ldr	r1, [sp, #100]	@ 0x64
  6dac50:	e2866001 	add	r6, r6, #1
  6dac54:	e59d3068 	ldr	r3, [sp, #104]	@ 0x68
  6dac58:	e0613003 	rsb	r3, r1, r3
  6dac5c:	e1560143 	cmp	r6, r3, asr #2
  6dac60:	3afffff5 	bcc	6dac3c <netflix::TelnetConnection::processInput()@@Base+0xad4>
  6dac64:	e28d6048 	add	r6, sp, #72	@ 0x48
  6dac68:	e59411c0 	ldr	r1, [r4, #448]	@ 0x1c0
  6dac6c:	e1a00006 	mov	r0, r6
  6dac70:	eb084cc0 	bl	8edf78 <netflix::TraceAreas::spec() const@@Base>
  6dac74:	e59f2528 	ldr	r2, [pc, #1320]	@ 6db1a4 <netflix::TelnetConnection::processInput()@@Base+0x103c>
  6dac78:	e1a00006 	mov	r0, r6
  6dac7c:	e3a01000 	mov	r1, #0
  6dac80:	e3a0300c 	mov	r3, #12
  6dac84:	e08f2002 	add	r2, pc, r2
  6dac88:	ebedd8ce 	bl	250fc8 <std::string::insert(unsigned int, char const*, unsigned int)@plt>
  6dac8c:	e5902000 	ldr	r2, [r0]
  6dac90:	e28da078 	add	sl, sp, #120	@ 0x78
  6dac94:	e59f150c 	ldr	r1, [pc, #1292]	@ 6db1a8 <netflix::TelnetConnection::processInput()@@Base+0x1040>
  6dac98:	e285300c 	add	r3, r5, #12
  6dac9c:	e52a2028 	str	r2, [sl, #-40]!	@ 0xffffffd8
  6daca0:	e08f1001 	add	r1, pc, r1
  6daca4:	e5803000 	str	r3, [r0]
  6daca8:	e3a02001 	mov	r2, #1
  6dacac:	e1a0000a 	mov	r0, sl
  6dacb0:	ebedd114 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  6dacb4:	e5902000 	ldr	r2, [r0]
  6dacb8:	e285300c 	add	r3, r5, #12
  6dacbc:	e28d1044 	add	r1, sp, #68	@ 0x44
  6dacc0:	e58d204c 	str	r2, [sp, #76]	@ 0x4c
  6dacc4:	e5803000 	str	r3, [r0]
  6dacc8:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6daccc:	e240000c 	sub	r0, r0, #12
  6dacd0:	ebedd430 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dacd4:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  6dacd8:	e1a0100a 	mov	r1, sl
  6dacdc:	e240000c 	sub	r0, r0, #12
  6dace0:	ebedd42c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dace4:	e1a00004 	mov	r0, r4
  6dace8:	e59d1000 	ldr	r1, [sp]
  6dacec:	eb000923 	bl	6dd180 <netflix::TelnetConnection::send(std::string const&)@@Base>
  6dacf0:	eaffff9d 	b	6dab6c <netflix::TelnetConnection::processInput()@@Base+0xa04>
  6dacf4:	ebedd427 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dacf8:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  6dacfc:	e1a0100a 	mov	r1, sl
  6dad00:	e240000c 	sub	r0, r0, #12
  6dad04:	ebedd423 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dad08:	e1a00008 	mov	r0, r8
  6dad0c:	ebef3b6f 	bl	2a9ad0 <netflix::Console::Command::Arguments::~Arguments()@@Base>
  6dad10:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  6dad14:	e1a0100a 	mov	r1, sl
  6dad18:	e240000c 	sub	r0, r0, #12
  6dad1c:	ebedd41d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dad20:	eafffeb4 	b	6da7f8 <netflix::TelnetConnection::processInput()@@Base+0x690>
  6dad24:	e59f1454 	ldr	r1, [pc, #1108]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6dad28:	e2432004 	sub	r2, r3, #4
  6dad2c:	e7991001 	ldr	r1, [r9, r1]
  6dad30:	e3510000 	cmp	r1, #0
  6dad34:	0a000053 	beq	6dae88 <netflix::TelnetConnection::processInput()@@Base+0xd20>
  6dad38:	f57ff05f 	dmb	sy
  6dad3c:	e1923f9f 	ldrex	r3, [r2]
  6dad40:	e243c001 	sub	ip, r3, #1
  6dad44:	e1821f9c 	strex	r1, ip, [r2]
  6dad48:	e3510000 	cmp	r1, #0
  6dad4c:	1afffffa 	bne	6dad3c <netflix::TelnetConnection::processInput()@@Base+0xbd4>
  6dad50:	f57ff05f 	dmb	sy
  6dad54:	e3530000 	cmp	r3, #0
  6dad58:	cafffdbe 	bgt	6da458 <netflix::TelnetConnection::processInput()@@Base+0x2f0>
  6dad5c:	e1a01008 	mov	r1, r8
  6dad60:	ebedd9df 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6dad64:	eafffdbb 	b	6da458 <netflix::TelnetConnection::processInput()@@Base+0x2f0>
  6dad68:	e59f143c 	ldr	r1, [pc, #1084]	@ 6db1ac <netflix::TelnetConnection::processInput()@@Base+0x1044>
  6dad6c:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6dad70:	e08f1001 	add	r1, pc, r1
  6dad74:	ebedd908 	bl	25119c <std::string::compare(char const*) const@plt>
  6dad78:	e3500000 	cmp	r0, #0
  6dad7c:	1afffe4d 	bne	6da6b8 <netflix::TelnetConnection::processInput()@@Base+0x550>
  6dad80:	e5d431ce 	ldrb	r3, [r4, #462]	@ 0x1ce
  6dad84:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  6dad88:	e2233001 	eor	r3, r3, #1
  6dad8c:	e59d7068 	ldr	r7, [sp, #104]	@ 0x68
  6dad90:	e5c431ce 	strb	r3, [r4, #462]	@ 0x1ce
  6dad94:	eafffda7 	b	6da438 <netflix::TelnetConnection::processInput()@@Base+0x2d0>
  6dad98:	e59401c0 	ldr	r0, [r4, #448]	@ 0x1c0
  6dad9c:	eb085536 	bl	8f027c <netflix::TraceAreas::dump()@@Base>
  6dada0:	eaffffaf 	b	6dac64 <netflix::TelnetConnection::processInput()@@Base+0xafc>
  6dada4:	e59f13d4 	ldr	r1, [pc, #980]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6dada8:	e2432004 	sub	r2, r3, #4
  6dadac:	e7991001 	ldr	r1, [r9, r1]
  6dadb0:	e3510000 	cmp	r1, #0
  6dadb4:	0a00001c 	beq	6dae2c <netflix::TelnetConnection::processInput()@@Base+0xcc4>
  6dadb8:	f57ff05f 	dmb	sy
  6dadbc:	e1923f9f 	ldrex	r3, [r2]
  6dadc0:	e243c001 	sub	ip, r3, #1
  6dadc4:	e1821f9c 	strex	r1, ip, [r2]
  6dadc8:	e3510000 	cmp	r1, #0
  6dadcc:	1afffffa 	bne	6dadbc <netflix::TelnetConnection::processInput()@@Base+0xc54>
  6dadd0:	f57ff05f 	dmb	sy
  6dadd4:	e3530000 	cmp	r3, #0
  6dadd8:	cafffe5e 	bgt	6da758 <netflix::TelnetConnection::processInput()@@Base+0x5f0>
  6daddc:	e1a0100a 	mov	r1, sl
  6dade0:	ebedd9bf 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6dade4:	eafffe5b 	b	6da758 <netflix::TelnetConnection::processInput()@@Base+0x5f0>
  6dade8:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6dadec:	e59d1000 	ldr	r1, [sp]
  6dadf0:	e240000c 	sub	r0, r0, #12
  6dadf4:	ebedd3e7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dadf8:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  6dadfc:	e1a0100a 	mov	r1, sl
  6dae00:	e240000c 	sub	r0, r0, #12
  6dae04:	ebedd3e3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae08:	e1a00008 	mov	r0, r8
  6dae0c:	ebef3b2f 	bl	2a9ad0 <netflix::Console::Command::Arguments::~Arguments()@@Base>
  6dae10:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  6dae14:	e28d102c 	add	r1, sp, #44	@ 0x2c
  6dae18:	e240000c 	sub	r0, r0, #12
  6dae1c:	ebedd3dd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae20:	ebedd481 	bl	25002c <__cxa_end_cleanup@plt>
  6dae24:	e28da050 	add	sl, sp, #80	@ 0x50
  6dae28:	eafffff2 	b	6dadf8 <netflix::TelnetConnection::processInput()@@Base+0xc90>
  6dae2c:	e5132004 	ldr	r2, [r3, #-4]
  6dae30:	e2421001 	sub	r1, r2, #1
  6dae34:	e5031004 	str	r1, [r3, #-4]
  6dae38:	e1a03002 	mov	r3, r2
  6dae3c:	eaffffe4 	b	6dadd4 <netflix::TelnetConnection::processInput()@@Base+0xc6c>
  6dae40:	ebedd3d4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae44:	eaffffaf 	b	6dad08 <netflix::TelnetConnection::processInput()@@Base+0xba0>
  6dae48:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6dae4c:	e1a0100a 	mov	r1, sl
  6dae50:	e240000c 	sub	r0, r0, #12
  6dae54:	ebedd3cf 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae58:	eaffffea 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6dae5c:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6dae60:	e59d1000 	ldr	r1, [sp]
  6dae64:	e240000c 	sub	r0, r0, #12
  6dae68:	ebedd3ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae6c:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  6dae70:	e1a0100a 	mov	r1, sl
  6dae74:	e240000c 	sub	r0, r0, #12
  6dae78:	ebedd3c6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dae7c:	eaffffe1 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6dae80:	e28da050 	add	sl, sp, #80	@ 0x50
  6dae84:	eafffff8 	b	6dae6c <netflix::TelnetConnection::processInput()@@Base+0xd04>
  6dae88:	e5132004 	ldr	r2, [r3, #-4]
  6dae8c:	e2421001 	sub	r1, r2, #1
  6dae90:	e5031004 	str	r1, [r3, #-4]
  6dae94:	e1a03002 	mov	r3, r2
  6dae98:	eaffffad 	b	6dad54 <netflix::TelnetConnection::processInput()@@Base+0xbec>
  6dae9c:	eaffffe9 	b	6dae48 <netflix::TelnetConnection::processInput()@@Base+0xce0>
  6daea0:	e59f12d8 	ldr	r1, [pc, #728]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6daea4:	e2432004 	sub	r2, r3, #4
  6daea8:	e7991001 	ldr	r1, [r9, r1]
  6daeac:	e3510000 	cmp	r1, #0
  6daeb0:	0a00000f 	beq	6daef4 <netflix::TelnetConnection::processInput()@@Base+0xd8c>
  6daeb4:	f57ff05f 	dmb	sy
  6daeb8:	e1923f9f 	ldrex	r3, [r2]
  6daebc:	e2437001 	sub	r7, r3, #1
  6daec0:	e182cf97 	strex	ip, r7, [r2]
  6daec4:	e35c0000 	cmp	ip, #0
  6daec8:	1afffffa 	bne	6daeb8 <netflix::TelnetConnection::processInput()@@Base+0xd50>
  6daecc:	f57ff05f 	dmb	sy
  6daed0:	e3530000 	cmp	r3, #0
  6daed4:	cafffe29 	bgt	6da780 <netflix::TelnetConnection::processInput()@@Base+0x618>
  6daed8:	e1a0100a 	mov	r1, sl
  6daedc:	ebedd980 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6daee0:	eafffe26 	b	6da780 <netflix::TelnetConnection::processInput()@@Base+0x618>
  6daee4:	e5962008 	ldr	r2, [r6, #8]
  6daee8:	e2423001 	sub	r3, r2, #1
  6daeec:	e5863008 	str	r3, [r6, #8]
  6daef0:	eafffee5 	b	6daa8c <netflix::TelnetConnection::processInput()@@Base+0x924>
  6daef4:	e5132004 	ldr	r2, [r3, #-4]
  6daef8:	e2421001 	sub	r1, r2, #1
  6daefc:	e5031004 	str	r1, [r3, #-4]
  6daf00:	e1a03002 	mov	r3, r2
  6daf04:	eafffff1 	b	6daed0 <netflix::TelnetConnection::processInput()@@Base+0xd68>
  6daf08:	ebee3dd6 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  6daf0c:	e5962004 	ldr	r2, [r6, #4]
  6daf10:	e2423001 	sub	r3, r2, #1
  6daf14:	e5863004 	str	r3, [r6, #4]
  6daf18:	eafffe2b 	b	6da7cc <netflix::TelnetConnection::processInput()@@Base+0x664>
  6daf1c:	e59f125c 	ldr	r1, [pc, #604]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6daf20:	e2432004 	sub	r2, r3, #4
  6daf24:	e7991001 	ldr	r1, [r9, r1]
  6daf28:	e3510000 	cmp	r1, #0
  6daf2c:	0a000010 	beq	6daf74 <netflix::TelnetConnection::processInput()@@Base+0xe0c>
  6daf30:	f57ff05f 	dmb	sy
  6daf34:	e1923f9f 	ldrex	r3, [r2]
  6daf38:	e2431001 	sub	r1, r3, #1
  6daf3c:	e1827f91 	strex	r7, r1, [r2]
  6daf40:	e3570000 	cmp	r7, #0
  6daf44:	1afffffa 	bne	6daf34 <netflix::TelnetConnection::processInput()@@Base+0xdcc>
  6daf48:	f57ff05f 	dmb	sy
  6daf4c:	e3530000 	cmp	r3, #0
  6daf50:	cafffe0e 	bgt	6da790 <netflix::TelnetConnection::processInput()@@Base+0x628>
  6daf54:	e1a0100a 	mov	r1, sl
  6daf58:	ebedd961 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6daf5c:	eafffe0b 	b	6da790 <netflix::TelnetConnection::processInput()@@Base+0x628>
  6daf60:	e5132004 	ldr	r2, [r3, #-4]
  6daf64:	e2421001 	sub	r1, r2, #1
  6daf68:	e5031004 	str	r1, [r3, #-4]
  6daf6c:	e1a03002 	mov	r3, r2
  6daf70:	eafffd5a 	b	6da4e0 <netflix::TelnetConnection::processInput()@@Base+0x378>
  6daf74:	e5132004 	ldr	r2, [r3, #-4]
  6daf78:	e2421001 	sub	r1, r2, #1
  6daf7c:	e5031004 	str	r1, [r3, #-4]
  6daf80:	e1a03002 	mov	r3, r2
  6daf84:	eafffff0 	b	6daf4c <netflix::TelnetConnection::processInput()@@Base+0xde4>
  6daf88:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6daf8c:	e59d1018 	ldr	r1, [sp, #24]
  6daf90:	e240000c 	sub	r0, r0, #12
  6daf94:	ebedd37f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6daf98:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6daf9c:	e1a0100a 	mov	r1, sl
  6dafa0:	e240000c 	sub	r0, r0, #12
  6dafa4:	ebedd37b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dafa8:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  6dafac:	e1a0100a 	mov	r1, sl
  6dafb0:	e240000c 	sub	r0, r0, #12
  6dafb4:	ebedd377 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dafb8:	eaffff8e 	b	6dadf8 <netflix::TelnetConnection::processInput()@@Base+0xc90>
  6dafbc:	eafffff5 	b	6daf98 <netflix::TelnetConnection::processInput()@@Base+0xe30>
  6dafc0:	e3570000 	cmp	r7, #0
  6dafc4:	0a000001 	beq	6dafd0 <netflix::TelnetConnection::processInput()@@Base+0xe68>
  6dafc8:	e1a00007 	mov	r0, r7
  6dafcc:	ebee3e68 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6dafd0:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6dafd4:	e28d1040 	add	r1, sp, #64	@ 0x40
  6dafd8:	e240000c 	sub	r0, r0, #12
  6dafdc:	ebedd36d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6dafe0:	ebedd411 	bl	25002c <__cxa_end_cleanup@plt>
  6dafe4:	e5973004 	ldr	r3, [r7, #4]
  6dafe8:	e2833001 	add	r3, r3, #1
  6dafec:	e5873004 	str	r3, [r7, #4]
  6daff0:	eafffccf 	b	6da334 <netflix::TelnetConnection::processInput()@@Base+0x1cc>
  6daff4:	e59f1184 	ldr	r1, [pc, #388]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6daff8:	e2432004 	sub	r2, r3, #4
  6daffc:	e7991001 	ldr	r1, [r9, r1]
  6db000:	e3510000 	cmp	r1, #0
  6db004:	0a00001c 	beq	6db07c <netflix::TelnetConnection::processInput()@@Base+0xf14>
  6db008:	f57ff05f 	dmb	sy
  6db00c:	e1923f9f 	ldrex	r3, [r2]
  6db010:	e2431001 	sub	r1, r3, #1
  6db014:	e1827f91 	strex	r7, r1, [r2]
  6db018:	e3570000 	cmp	r7, #0
  6db01c:	1afffffa 	bne	6db00c <netflix::TelnetConnection::processInput()@@Base+0xea4>
  6db020:	f57ff05f 	dmb	sy
  6db024:	e3530000 	cmp	r3, #0
  6db028:	cafffd18 	bgt	6da490 <netflix::TelnetConnection::processInput()@@Base+0x328>
  6db02c:	e28d1050 	add	r1, sp, #80	@ 0x50
  6db030:	ebedd92b 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6db034:	eafffd15 	b	6da490 <netflix::TelnetConnection::processInput()@@Base+0x328>
  6db038:	e59f1140 	ldr	r1, [pc, #320]	@ 6db180 <netflix::TelnetConnection::processInput()@@Base+0x1018>
  6db03c:	e2432004 	sub	r2, r3, #4
  6db040:	e7991001 	ldr	r1, [r9, r1]
  6db044:	e3510000 	cmp	r1, #0
  6db048:	0a000010 	beq	6db090 <netflix::TelnetConnection::processInput()@@Base+0xf28>
  6db04c:	f57ff05f 	dmb	sy
  6db050:	e1923f9f 	ldrex	r3, [r2]
  6db054:	e2437001 	sub	r7, r3, #1
  6db058:	e182cf97 	strex	ip, r7, [r2]
  6db05c:	e35c0000 	cmp	ip, #0
  6db060:	1afffffa 	bne	6db050 <netflix::TelnetConnection::processInput()@@Base+0xee8>
  6db064:	f57ff05f 	dmb	sy
  6db068:	e3530000 	cmp	r3, #0
  6db06c:	cafffd03 	bgt	6da480 <netflix::TelnetConnection::processInput()@@Base+0x318>
  6db070:	e28d1050 	add	r1, sp, #80	@ 0x50
  6db074:	ebedd91a 	bl	2514e4 <std::string::_Rep::_M_destroy(std::allocator<char> const&)@plt>
  6db078:	eafffd00 	b	6da480 <netflix::TelnetConnection::processInput()@@Base+0x318>
  6db07c:	e5132004 	ldr	r2, [r3, #-4]
  6db080:	e2421001 	sub	r1, r2, #1
  6db084:	e5031004 	str	r1, [r3, #-4]
  6db088:	e1a03002 	mov	r3, r2
  6db08c:	eaffffe4 	b	6db024 <netflix::TelnetConnection::processInput()@@Base+0xebc>
  6db090:	e5132004 	ldr	r2, [r3, #-4]
  6db094:	e2421001 	sub	r1, r2, #1
  6db098:	e5031004 	str	r1, [r3, #-4]
  6db09c:	e1a03002 	mov	r3, r2
  6db0a0:	eafffff0 	b	6db068 <netflix::TelnetConnection::processInput()@@Base+0xf00>
  6db0a4:	e5963004 	ldr	r3, [r6, #4]
  6db0a8:	e2833001 	add	r3, r3, #1
  6db0ac:	e5863004 	str	r3, [r6, #4]
  6db0b0:	eafffd69 	b	6da65c <netflix::TelnetConnection::processInput()@@Base+0x4f4>
  6db0b4:	ebee3d6b 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  6db0b8:	eaffff52 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6db0bc:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6db0c0:	e28d1030 	add	r1, sp, #48	@ 0x30
  6db0c4:	e240000c 	sub	r0, r0, #12
  6db0c8:	ebedd332 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db0cc:	eaffff4d 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6db0d0:	e3560000 	cmp	r6, #0
  6db0d4:	0affff4b 	beq	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6db0d8:	e1a00006 	mov	r0, r6
  6db0dc:	ebee3e24 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  6db0e0:	eaffff48 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6db0e4:	eaffffb9 	b	6dafd0 <netflix::TelnetConnection::processInput()@@Base+0xe68>
  6db0e8:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6db0ec:	e1a01008 	mov	r1, r8
  6db0f0:	e240000c 	sub	r0, r0, #12
  6db0f4:	ebedd327 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db0f8:	eaffffb4 	b	6dafd0 <netflix::TelnetConnection::processInput()@@Base+0xe68>
  6db0fc:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  6db100:	e28d1044 	add	r1, sp, #68	@ 0x44
  6db104:	e240000c 	sub	r0, r0, #12
  6db108:	ebedd322 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db10c:	eaffffaf 	b	6dafd0 <netflix::TelnetConnection::processInput()@@Base+0xe68>
  6db110:	eaffff3e 	b	6dae10 <netflix::TelnetConnection::processInput()@@Base+0xca8>
  6db114:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  6db118:	e1a0100a 	mov	r1, sl
  6db11c:	e240000c 	sub	r0, r0, #12
  6db120:	ebedd31c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db124:	eaffff33 	b	6dadf8 <netflix::TelnetConnection::processInput()@@Base+0xc90>
  6db128:	eaffff32 	b	6dadf8 <netflix::TelnetConnection::processInput()@@Base+0xc90>
  6db12c:	e5963004 	ldr	r3, [r6, #4]
  6db130:	e2833001 	add	r3, r3, #1
  6db134:	e5863004 	str	r3, [r6, #4]
  6db138:	eafffd71 	b	6da704 <netflix::TelnetConnection::processInput()@@Base+0x59c>
  6db13c:	eaffff31 	b	6dae08 <netflix::TelnetConnection::processInput()@@Base+0xca0>
  6db140:	eaffff98 	b	6dafa8 <netflix::TelnetConnection::processInput()@@Base+0xe40>
  6db144:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  6db148:	e1a0100a 	mov	r1, sl
  6db14c:	e240000c 	sub	r0, r0, #12
  6db150:	ebedd310 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db154:	eaffff27 	b	6dadf8 <netflix::TelnetConnection::processInput()@@Base+0xc90>
  6db158:	002b987c 	eoreq	r9, fp, ip, ror r8
  6db15c:	0034cf78 	eorseq	ip, r4, r8, ror pc
  6db160:	0029c410 	eoreq	ip, r9, r0, lsl r4
  6db164:	00003440 	andeq	r3, r0, r0, asr #8
  6db168:	0029a4e8 	eoreq	sl, r9, r8, ror #9
  6db16c:	0029c3fc 	strdeq	ip, [r9], -ip	@ <UNPREDICTABLE>
  6db170:	00274340 	eoreq	r4, r7, r0, asr #6
  6db174:	0026a008 	eoreq	sl, r6, r8
  6db178:	00002278 	andeq	r2, r0, r8, ror r2
  6db17c:	000037dc 	ldrdeq	r3, [r0], -ip
  6db180:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  6db184:	0029bd60 	eoreq	fp, r9, r0, ror #26
  6db188:	0029bd08 	eoreq	fp, r9, r8, lsl #26
  6db18c:	0029a2b4 	strhteq	sl, [r9], -r4
  6db190:	0029bc28 	eoreq	fp, r9, r8, lsr #24
  6db194:	0029bacc 	eoreq	fp, r9, ip, asr #21
  6db198:	0029a078 	eoreq	sl, r9, r8, ror r0
  6db19c:	0029ba24 	eoreq	fp, r9, r4, lsr #20
  6db1a0:	002bfd50 	eoreq	pc, fp, r0, asr sp	@ <UNPREDICTABLE>
  6db1a4:	0029b954 	eoreq	fp, r9, r4, asr r9
  6db1a8:	00299ef4 	strdeq	r9, [r9], -r4	@ <UNPREDICTABLE>
  6db1ac:	0029b880 	eoreq	fp, r9, r0, lsl #17
  6db1b0:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  6db1b4:	e59d1000 	ldr	r1, [sp]
  6db1b8:	e240000c 	sub	r0, r0, #12
  6db1bc:	ebedd2f5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  6db1c0:	eaffffd3 	b	6db114 <netflix::TelnetConnection::processInput()@@Base+0xfac>
  6db1c4:	e5963004 	ldr	r3, [r6, #4]
  6db1c8:	e2833001 	add	r3, r3, #1
  6db1cc:	e5863004 	str	r3, [r6, #4]
  6db1d0:	eafffcdc 	b	6da548 <netflix::TelnetConnection::processInput()@@Base+0x3e0>
  6db1d4:	ebedceae 	bl	24ec94 <__stack_chk_fail@plt>
