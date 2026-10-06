
../vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

0056416c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base>:
  56416c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  564170:	e1a09003 	mov	r9, r3
  564174:	ed2d8b02 	vpush	{d8}
  564178:	e1a06000 	mov	r6, r0
  56417c:	e59f7fc4 	ldr	r7, [pc, #4036]	@ 565148 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfdc>
  564180:	e1a0a002 	mov	sl, r2
  564184:	e59fcfc0 	ldr	ip, [pc, #4032]	@ 56514c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfe0>
  564188:	e08f7007 	add	r7, pc, r7
  56418c:	e24ddf57 	sub	sp, sp, #348	@ 0x15c
  564190:	e28d40b0 	add	r4, sp, #176	@ 0xb0
  564194:	e28db0a4 	add	fp, sp, #164	@ 0xa4
  564198:	e58d101c 	str	r1, [sp, #28]
  56419c:	e797c00c 	ldr	ip, [r7, ip]
  5641a0:	e1a00004 	mov	r0, r4
  5641a4:	e59f1fa4 	ldr	r1, [pc, #4004]	@ 565150 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfe4>
  5641a8:	e1a0200b 	mov	r2, fp
  5641ac:	e59c3000 	ldr	r3, [ip]
  5641b0:	e08f1001 	add	r1, pc, r1
  5641b4:	e58dc014 	str	ip, [sp, #20]
  5641b8:	e58d3154 	str	r3, [sp, #340]	@ 0x154
  5641bc:	ebf3b65d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5641c0:	e5993000 	ldr	r3, [r9]
  5641c4:	e3530003 	cmp	r3, #3
  5641c8:	0a00063f 	beq	565acc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1960>
  5641cc:	e3a01000 	mov	r1, #0
  5641d0:	e58d1020 	str	r1, [sp, #32]
  5641d4:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5641d8:	e28d50a8 	add	r5, sp, #168	@ 0xa8
  5641dc:	e24aa002 	sub	sl, sl, #2
  5641e0:	e240000c 	sub	r0, r0, #12
  5641e4:	e1a01005 	mov	r1, r5
  5641e8:	ebf3aeea 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5641ec:	e35a000a 	cmp	sl, #10
  5641f0:	908ff10a 	addls	pc, pc, sl, lsl #2
  5641f4:	ea00064b 	b	565b28 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x19bc>
  5641f8:	ea000029 	b	5642a4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x138>
  5641fc:	ea00002e 	b	5642bc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x150>
  564200:	ea0000dc 	b	564578 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x40c>
  564204:	ea0005d7 	b	565968 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x17fc>
  564208:	ea0004c1 	b	565514 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x13a8>
  56420c:	ea00054f 	b	565750 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x15e4>
  564210:	ea000322 	b	564ea0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xd34>
  564214:	ea000377 	b	564ff8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xe8c>
  564218:	ea00040d 	b	565254 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10e8>
  56421c:	ea000486 	b	56543c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x12d0>
  564220:	eaffffff 	b	564224 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xb8>
  564224:	e59f3fec 	ldr	r3, [pc, #4076]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  564228:	e1a00004 	mov	r0, r4
  56422c:	e797a003 	ldr	sl, [r7, r3]
  564230:	e59a3000 	ldr	r3, [sl]
  564234:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  564238:	e5913000 	ldr	r3, [r1]
  56423c:	e5933008 	ldr	r3, [r3, #8]
  564240:	e12fff33 	blx	r3
  564244:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  564248:	e5903000 	ldr	r3, [r0]
  56424c:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
  564250:	e12fff33 	blx	r3
  564254:	e1a07000 	mov	r7, r0
  564258:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  56425c:	e3500000 	cmp	r0, #0
  564260:	0a000000 	beq	564268 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfc>
  564264:	ebf419c2 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  564268:	e3570000 	cmp	r7, #0
  56426c:	1a00065d 	bne	565be8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a7c>
  564270:	e3a02006 	mov	r2, #6
  564274:	e3a03001 	mov	r3, #1
  564278:	e5862000 	str	r2, [r6]
  56427c:	e5c63008 	strb	r3, [r6, #8]
  564280:	e59d1014 	ldr	r1, [sp, #20]
  564284:	e1a00006 	mov	r0, r6
  564288:	e59d2154 	ldr	r2, [sp, #340]	@ 0x154
  56428c:	e5913000 	ldr	r3, [r1]
  564290:	e1520003 	cmp	r2, r3
  564294:	1a0006da 	bne	565e04 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1c98>
  564298:	e28ddf57 	add	sp, sp, #348	@ 0x15c
  56429c:	ecbd8b02 	vpop	{d8}
  5642a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  5642a4:	e59f3f6c 	ldr	r3, [pc, #3948]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  5642a8:	e1a01009 	mov	r1, r9
  5642ac:	e7973003 	ldr	r3, [r7, r3]
  5642b0:	e5930000 	ldr	r0, [r3]
  5642b4:	ebff0eea 	bl	527e64 <netflix::NrdApplication::addLibraryInfo(netflix::Variant const&)@@Base>
  5642b8:	eaffffec 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  5642bc:	e59f3e90 	ldr	r3, [pc, #3728]	@ 565154 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfe8>
  5642c0:	e28d90bc 	add	r9, sp, #188	@ 0xbc
  5642c4:	e59fcf4c 	ldr	ip, [pc, #3916]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  5642c8:	e08f3003 	add	r3, pc, r3
  5642cc:	e283300c 	add	r3, r3, #12
  5642d0:	e8930007 	ldm	r3, {r0, r1, r2}
  5642d4:	e8890007 	stm	r9, {r0, r1, r2}
  5642d8:	e3a00020 	mov	r0, #32
  5642dc:	e797a00c 	ldr	sl, [r7, ip]
  5642e0:	e59a1000 	ldr	r1, [sl]
  5642e4:	e58d1018 	str	r1, [sp, #24]
  5642e8:	ebf3aa78 	bl	24ecd0 <operator new(unsigned int)@plt>
  5642ec:	e59f3e64 	ldr	r3, [pc, #3684]	@ 565158 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xfec>
  5642f0:	e3a02ffa 	mov	r2, #1000	@ 0x3e8
  5642f4:	e7973003 	ldr	r3, [r7, r3]
  5642f8:	e2833008 	add	r3, r3, #8
  5642fc:	e5802004 	str	r2, [r0, #4]
  564300:	e1a08000 	mov	r8, r0
  564304:	e5803000 	str	r3, [r0]
  564308:	ebf46dd5 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  56430c:	e59fce48 	ldr	ip, [pc, #3656]	@ 56515c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xff0>
  564310:	e3a03001 	mov	r3, #1
  564314:	e3a02000 	mov	r2, #0
  564318:	e5883010 	str	r3, [r8, #16]
  56431c:	e3a03000 	mov	r3, #0
  564320:	e1c821f8 	strd	r2, [r8, #24]
  564324:	e3a03000 	mov	r3, #0
  564328:	e5883014 	str	r3, [r8, #20]
  56432c:	e1c800f8 	strd	r0, [r8, #8]
  564330:	e3a00010 	mov	r0, #16
  564334:	e797200c 	ldr	r2, [r7, ip]
  564338:	e2822008 	add	r2, r2, #8
  56433c:	e5882000 	str	r2, [r8]
  564340:	e58d80b0 	str	r8, [sp, #176]	@ 0xb0
  564344:	e58d30b4 	str	r3, [sp, #180]	@ 0xb4
  564348:	ebf3aa60 	bl	24ecd0 <operator new(unsigned int)@plt>
  56434c:	e59f2e0c 	ldr	r2, [pc, #3596]	@ 565160 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xff4>
  564350:	e3a03001 	mov	r3, #1
  564354:	e5803004 	str	r3, [r0, #4]
  564358:	e5803008 	str	r3, [r0, #8]
  56435c:	e7973002 	ldr	r3, [r7, r2]
  564360:	e59d2018 	ldr	r2, [sp, #24]
  564364:	e580800c 	str	r8, [r0, #12]
  564368:	e2833008 	add	r3, r3, #8
  56436c:	e5803000 	str	r3, [r0]
  564370:	e58d00b4 	str	r0, [sp, #180]	@ 0xb4
  564374:	e59270b0 	ldr	r7, [r2, #176]	@ 0xb0
  564378:	e3570000 	cmp	r7, #0
  56437c:	0a000009 	beq	5643a8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x23c>
  564380:	ebf3ae7b 	bl	24fd74 <pthread_self@plt>
  564384:	e59730e4 	ldr	r3, [r7, #228]	@ 0xe4
  564388:	e1530000 	cmp	r3, r0
  56438c:	0a000608 	beq	565bb4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a48>
  564390:	e1a00007 	mov	r0, r7
  564394:	e1a01004 	mov	r1, r4
  564398:	eb0cbaa2 	bl	892e28 <netflix::EventLoop::postEvent(std::shared_ptr<netflix::EventLoop::Event> const&)@@Base>
  56439c:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5643a0:	e3500000 	cmp	r0, #0
  5643a4:	0a000000 	beq	5643ac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x240>
  5643a8:	ebf41971 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5643ac:	e3a03000 	mov	r3, #0
  5643b0:	e1a01009 	mov	r1, r9
  5643b4:	e3a02001 	mov	r2, #1
  5643b8:	e59d001c 	ldr	r0, [sp, #28]
  5643bc:	e1cd20f0 	strd	r2, [sp]
  5643c0:	e3a02003 	mov	r2, #3
  5643c4:	ebffe23f 	bl	55ccc8 <netflix::NfObject::propertiesUpdated(int const*, int, netflix::Flags<netflix::NfObject::ResponseFlag>)@@Base>
  5643c8:	e59aa000 	ldr	sl, [sl]
  5643cc:	e59f1d90 	ldr	r1, [pc, #3472]	@ 565164 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xff8>
  5643d0:	e1a0200b 	mov	r2, fp
  5643d4:	e1a00004 	mov	r0, r4
  5643d8:	e08f1001 	add	r1, pc, r1
  5643dc:	e58da024 	str	sl, [sp, #36]	@ 0x24
  5643e0:	ebf3b5d4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5643e4:	e3a03000 	mov	r3, #0
  5643e8:	e58d30c8 	str	r3, [sp, #200]	@ 0xc8
  5643ec:	ebf46d9c 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  5643f0:	e3a03001 	mov	r3, #1
  5643f4:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  5643f8:	e1cd02f8 	strd	r0, [sp, #40]	@ 0x28
  5643fc:	e28d00e8 	add	r0, sp, #232	@ 0xe8
  564400:	e1a01004 	mov	r1, r4
  564404:	ebf3b11e 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  564408:	e28d9f56 	add	r9, sp, #344	@ 0x158
  56440c:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  564410:	e58d3018 	str	r3, [sp, #24]
  564414:	e3a02004 	mov	r2, #4
  564418:	e3a03000 	mov	r3, #0
  56441c:	e58d20f8 	str	r2, [sp, #248]	@ 0xf8
  564420:	e58d30fc 	str	r3, [sp, #252]	@ 0xfc
  564424:	e58d3100 	str	r3, [sp, #256]	@ 0x100
  564428:	e59d1018 	ldr	r1, [sp, #24]
  56442c:	e5293050 	str	r3, [r9, #-80]!	@ 0xffffffb0
  564430:	e1a00009 	mov	r0, r9
  564434:	ebf418a3 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564438:	e28d7f56 	add	r7, sp, #344	@ 0x158
  56443c:	e28da0c8 	add	sl, sp, #200	@ 0xc8
  564440:	e3a03000 	mov	r3, #0
  564444:	e1a0100a 	mov	r1, sl
  564448:	e5273038 	str	r3, [r7, #-56]!	@ 0xffffffc8
  56444c:	e1a00007 	mov	r0, r7
  564450:	ebf4189c 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564454:	e1cd22d8 	ldrd	r2, [sp, #40]	@ 0x28
  564458:	e28dcc02 	add	ip, sp, #512	@ 0x200
  56445c:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  564460:	e59d0018 	ldr	r0, [sp, #24]
  564464:	e14c2cf8 	strd	r2, [ip, #-200]	@ 0xffffff38
  564468:	e3a02000 	mov	r2, #0
  56446c:	e3a03000 	mov	r3, #0
  564470:	e14c2cf0 	strd	r2, [ip, #-192]	@ 0xffffff40
  564474:	e3a03000 	mov	r3, #0
  564478:	e58d3148 	str	r3, [sp, #328]	@ 0x148
  56447c:	ebf4197f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564480:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  564484:	e1a01008 	mov	r1, r8
  564488:	ebff265a 	bl	52ddf8 <netflix::NrdApplication::sendResponse(netflix::Response const&)@@Base>
  56448c:	e1a00007 	mov	r0, r7
  564490:	ebf4197a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564494:	e1a00009 	mov	r0, r9
  564498:	ebf41978 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56449c:	e59d0100 	ldr	r0, [sp, #256]	@ 0x100
  5644a0:	e3500000 	cmp	r0, #0
  5644a4:	0a000000 	beq	5644ac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x340>
  5644a8:	ebf41931 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5644ac:	e1a0000a 	mov	r0, sl
  5644b0:	ebf41972 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5644b4:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5644b8:	e1a01005 	mov	r1, r5
  5644bc:	e240000c 	sub	r0, r0, #12
  5644c0:	ebf3ae34 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5644c4:	e59f1c9c 	ldr	r1, [pc, #3228]	@ 565168 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xffc>
  5644c8:	e1a00004 	mov	r0, r4
  5644cc:	e1a0200b 	mov	r2, fp
  5644d0:	e08f1001 	add	r1, pc, r1
  5644d4:	e3a03000 	mov	r3, #0
  5644d8:	e58d30f8 	str	r3, [sp, #248]	@ 0xf8
  5644dc:	ebf3b595 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5644e0:	e1a00008 	mov	r0, r8
  5644e4:	ebf48dcd 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5644e8:	e1a01004 	mov	r1, r4
  5644ec:	ebf48e6d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5644f0:	e1a07000 	mov	r7, r0
  5644f4:	ebf41961 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5644f8:	e59d1020 	ldr	r1, [sp, #32]
  5644fc:	e3a03000 	mov	r3, #0
  564500:	e587300c 	str	r3, [r7, #12]
  564504:	e3a03004 	mov	r3, #4
  564508:	e5871008 	str	r1, [r7, #8]
  56450c:	e1a01005 	mov	r1, r5
  564510:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  564514:	e5873000 	str	r3, [r7]
  564518:	e240000c 	sub	r0, r0, #12
  56451c:	ebf3ae1d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564520:	e59f1c44 	ldr	r1, [pc, #3140]	@ 56516c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1000>
  564524:	e1a00005 	mov	r0, r5
  564528:	e1a0200b 	mov	r2, fp
  56452c:	e08f1001 	add	r1, pc, r1
  564530:	ebf3b580 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564534:	ebf46d4a 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  564538:	e3a0a000 	mov	sl, #0
  56453c:	e3a0b000 	mov	fp, #0
  564540:	e58d4008 	str	r4, [sp, #8]
  564544:	e1a02008 	mov	r2, r8
  564548:	e1cda0f0 	strd	sl, [sp]
  56454c:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  564550:	e1a01005 	mov	r1, r5
  564554:	e59d001c 	ldr	r0, [sp, #28]
  564558:	ebffd85a 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  56455c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  564560:	e1a01004 	mov	r1, r4
  564564:	e240000c 	sub	r0, r0, #12
  564568:	ebf3ae0a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56456c:	e1a00008 	mov	r0, r8
  564570:	ebf41942 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564574:	eaffff3d 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  564578:	e28d309c 	add	r3, sp, #156	@ 0x9c
  56457c:	e59f1bec 	ldr	r1, [pc, #3052]	@ 565170 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1004>
  564580:	e1a00005 	mov	r0, r5
  564584:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  564588:	e1a02003 	mov	r2, r3
  56458c:	e08f1001 	add	r1, pc, r1
  564590:	ebf3b568 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564594:	e59f3c70 	ldr	r3, [pc, #3184]	@ 56520c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a0>
  564598:	e5992000 	ldr	r2, [r9]
  56459c:	e7973003 	ldr	r3, [r7, r3]
  5645a0:	e3520003 	cmp	r2, #3
  5645a4:	e283300c 	add	r3, r3, #12
  5645a8:	e58d30b0 	str	r3, [sp, #176]	@ 0xb0
  5645ac:	0a0005dd 	beq	565d28 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1bbc>
  5645b0:	e28d003c 	add	r0, sp, #60	@ 0x3c
  5645b4:	e1a01004 	mov	r1, r4
  5645b8:	ebf3b0b1 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  5645bc:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5645c0:	e1a0100b 	mov	r1, fp
  5645c4:	e240000c 	sub	r0, r0, #12
  5645c8:	ebf3adf2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5645cc:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  5645d0:	e1a01004 	mov	r1, r4
  5645d4:	e240000c 	sub	r0, r0, #12
  5645d8:	ebf3adee 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5645dc:	e59d303c 	ldr	r3, [sp, #60]	@ 0x3c
  5645e0:	e513300c 	ldr	r3, [r3, #-12]
  5645e4:	e3530000 	cmp	r3, #0
  5645e8:	0a000553 	beq	565b3c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x19d0>
  5645ec:	e28d8040 	add	r8, sp, #64	@ 0x40
  5645f0:	e59f1b7c 	ldr	r1, [pc, #2940]	@ 565174 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1008>
  5645f4:	e1a02005 	mov	r2, r5
  5645f8:	e3a03000 	mov	r3, #0
  5645fc:	e08f1001 	add	r1, pc, r1
  564600:	e1a00008 	mov	r0, r8
  564604:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  564608:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  56460c:	e58d3018 	str	r3, [sp, #24]
  564610:	ebf3b548 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564614:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  564618:	e58dc018 	str	ip, [sp, #24]
  56461c:	e1a0000c 	mov	r0, ip
  564620:	ebf48d7e 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564624:	e1a01008 	mov	r1, r8
  564628:	ebf48e1e 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  56462c:	e1a08000 	mov	r8, r0
  564630:	ebf41912 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564634:	e59d1020 	ldr	r1, [sp, #32]
  564638:	e3a03000 	mov	r3, #0
  56463c:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  564640:	e3a02004 	mov	r2, #4
  564644:	e588300c 	str	r3, [r8, #12]
  564648:	e5881008 	str	r1, [r8, #8]
  56464c:	e240000c 	sub	r0, r0, #12
  564650:	e1a01004 	mov	r1, r4
  564654:	e5882000 	str	r2, [r8]
  564658:	ebf3adce 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56465c:	e59f3bb4 	ldr	r3, [pc, #2996]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  564660:	e1a00005 	mov	r0, r5
  564664:	e7973003 	ldr	r3, [r7, r3]
  564668:	e5933000 	ldr	r3, [r3]
  56466c:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  564670:	e5913000 	ldr	r3, [r1]
  564674:	e5933008 	ldr	r3, [r3, #8]
  564678:	e12fff33 	blx	r3
  56467c:	e59d10a8 	ldr	r1, [sp, #168]	@ 0xa8
  564680:	e1a00004 	mov	r0, r4
  564684:	e5913000 	ldr	r3, [r1]
  564688:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
  56468c:	e12fff33 	blx	r3
  564690:	e59d00ac 	ldr	r0, [sp, #172]	@ 0xac
  564694:	e3500000 	cmp	r0, #0
  564698:	0a000000 	beq	5646a0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x534>
  56469c:	ebf418b4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5646a0:	e59d70b0 	ldr	r7, [sp, #176]	@ 0xb0
  5646a4:	e59da0b4 	ldr	sl, [sp, #180]	@ 0xb4
  5646a8:	e157000a 	cmp	r7, sl
  5646ac:	0a0001de 	beq	564e2c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xcc0>
  5646b0:	e59d803c 	ldr	r8, [sp, #60]	@ 0x3c
  5646b4:	e518900c 	ldr	r9, [r8, #-12]
  5646b8:	ea000002 	b	5646c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x55c>
  5646bc:	e2877fde 	add	r7, r7, #888	@ 0x378
  5646c0:	e157000a 	cmp	r7, sl
  5646c4:	0a0001d8 	beq	564e2c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xcc0>
  5646c8:	e5970000 	ldr	r0, [r7]
  5646cc:	e510300c 	ldr	r3, [r0, #-12]
  5646d0:	e1530009 	cmp	r3, r9
  5646d4:	1afffff8 	bne	5646bc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x550>
  5646d8:	e1a01008 	mov	r1, r8
  5646dc:	e1a02009 	mov	r2, r9
  5646e0:	ebf3b235 	bl	250fbc <memcmp@plt>
  5646e4:	e3500000 	cmp	r0, #0
  5646e8:	1afffff3 	bne	5646bc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x550>
  5646ec:	e28d9044 	add	r9, sp, #68	@ 0x44
  5646f0:	e59f1a80 	ldr	r1, [pc, #2688]	@ 565178 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x100c>
  5646f4:	e58d00f8 	str	r0, [sp, #248]	@ 0xf8
  5646f8:	e1a0200b 	mov	r2, fp
  5646fc:	e08f1001 	add	r1, pc, r1
  564700:	e1a00009 	mov	r0, r9
  564704:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  564708:	ebf3b50a 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  56470c:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  564710:	e1a00008 	mov	r0, r8
  564714:	ebf48d41 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564718:	e1a01009 	mov	r1, r9
  56471c:	ebf48de1 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564720:	e1a0a000 	mov	sl, r0
  564724:	e2879f72 	add	r9, r7, #456	@ 0x1c8
  564728:	ebf418d4 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56472c:	e1a0000a 	mov	r0, sl
  564730:	e1a01009 	mov	r1, r9
  564734:	ebf417e3 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564738:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  56473c:	e1a01005 	mov	r1, r5
  564740:	e28d9048 	add	r9, sp, #72	@ 0x48
  564744:	e240000c 	sub	r0, r0, #12
  564748:	ebf3ad92 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56474c:	e59f1a28 	ldr	r1, [pc, #2600]	@ 56517c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1010>
  564750:	e1a00009 	mov	r0, r9
  564754:	e1a0200b 	mov	r2, fp
  564758:	e08f1001 	add	r1, pc, r1
  56475c:	ebf3b4f5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564760:	e1a00008 	mov	r0, r8
  564764:	ebf48d2d 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564768:	e1a01009 	mov	r1, r9
  56476c:	ebf48dcd 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564770:	e1a0a000 	mov	sl, r0
  564774:	e2879e1b 	add	r9, r7, #432	@ 0x1b0
  564778:	ebf418c0 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56477c:	e1a0000a 	mov	r0, sl
  564780:	e1a01009 	mov	r1, r9
  564784:	ebf417cf 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564788:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  56478c:	e1a01005 	mov	r1, r5
  564790:	e28d904c 	add	r9, sp, #76	@ 0x4c
  564794:	e240000c 	sub	r0, r0, #12
  564798:	ebf3ad7e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56479c:	e59f19dc 	ldr	r1, [pc, #2524]	@ 565180 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1014>
  5647a0:	e1a00009 	mov	r0, r9
  5647a4:	e1a0200b 	mov	r2, fp
  5647a8:	e08f1001 	add	r1, pc, r1
  5647ac:	ebf3b4e1 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5647b0:	e1a00008 	mov	r0, r8
  5647b4:	ebf48d19 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5647b8:	e1a01009 	mov	r1, r9
  5647bc:	ebf48db9 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5647c0:	e1a0a000 	mov	sl, r0
  5647c4:	e2879f5a 	add	r9, r7, #360	@ 0x168
  5647c8:	ebf418ac 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5647cc:	e1a0000a 	mov	r0, sl
  5647d0:	e1a01009 	mov	r1, r9
  5647d4:	ebf417bb 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5647d8:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  5647dc:	e1a01005 	mov	r1, r5
  5647e0:	e28d9050 	add	r9, sp, #80	@ 0x50
  5647e4:	e240000c 	sub	r0, r0, #12
  5647e8:	ebf3ad6a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5647ec:	e59f1990 	ldr	r1, [pc, #2448]	@ 565184 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1018>
  5647f0:	e1a00009 	mov	r0, r9
  5647f4:	e1a0200b 	mov	r2, fp
  5647f8:	e08f1001 	add	r1, pc, r1
  5647fc:	ebf3b4cd 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564800:	e1a00008 	mov	r0, r8
  564804:	ebf48d05 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564808:	e1a01009 	mov	r1, r9
  56480c:	ebf48da5 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564810:	e1a0a000 	mov	sl, r0
  564814:	e2879e15 	add	r9, r7, #336	@ 0x150
  564818:	ebf41898 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56481c:	e1a0000a 	mov	r0, sl
  564820:	e1a01009 	mov	r1, r9
  564824:	ebf417a7 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564828:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  56482c:	e1a01005 	mov	r1, r5
  564830:	e28d9054 	add	r9, sp, #84	@ 0x54
  564834:	e240000c 	sub	r0, r0, #12
  564838:	ebf3ad56 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56483c:	e59f1944 	ldr	r1, [pc, #2372]	@ 565188 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x101c>
  564840:	e1a00009 	mov	r0, r9
  564844:	e1a0200b 	mov	r2, fp
  564848:	e08f1001 	add	r1, pc, r1
  56484c:	ebf3b4b9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564850:	e1a00008 	mov	r0, r8
  564854:	ebf48cf1 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564858:	e1a01009 	mov	r1, r9
  56485c:	ebf48d91 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564860:	e1a0a000 	mov	sl, r0
  564864:	e2879d06 	add	r9, r7, #384	@ 0x180
  564868:	ebf41884 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56486c:	e1a0000a 	mov	r0, sl
  564870:	e1a01009 	mov	r1, r9
  564874:	ebf41793 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564878:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  56487c:	e1a01005 	mov	r1, r5
  564880:	e28d9058 	add	r9, sp, #88	@ 0x58
  564884:	e240000c 	sub	r0, r0, #12
  564888:	ebf3ad42 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56488c:	e59f18f8 	ldr	r1, [pc, #2296]	@ 56518c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1020>
  564890:	e1a00009 	mov	r0, r9
  564894:	e1a0200b 	mov	r2, fp
  564898:	e08f1001 	add	r1, pc, r1
  56489c:	ebf3b4a5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5648a0:	e1a00008 	mov	r0, r8
  5648a4:	ebf48cdd 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5648a8:	e1a01009 	mov	r1, r9
  5648ac:	ebf48d7d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5648b0:	e1a0a000 	mov	sl, r0
  5648b4:	e2879f66 	add	r9, r7, #408	@ 0x198
  5648b8:	ebf41870 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5648bc:	e1a0000a 	mov	r0, sl
  5648c0:	e1a01009 	mov	r1, r9
  5648c4:	ebf4177f 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5648c8:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  5648cc:	e1a01005 	mov	r1, r5
  5648d0:	e28d905c 	add	r9, sp, #92	@ 0x5c
  5648d4:	e240000c 	sub	r0, r0, #12
  5648d8:	ebf3ad2e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5648dc:	e59f18ac 	ldr	r1, [pc, #2220]	@ 565190 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1024>
  5648e0:	e1a00009 	mov	r0, r9
  5648e4:	e1a0200b 	mov	r2, fp
  5648e8:	e08f1001 	add	r1, pc, r1
  5648ec:	ebf3b491 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5648f0:	e1a00008 	mov	r0, r8
  5648f4:	ebf48cc9 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5648f8:	e1a01009 	mov	r1, r9
  5648fc:	ebf48d69 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564900:	e1a0a000 	mov	sl, r0
  564904:	e2879f4e 	add	r9, r7, #312	@ 0x138
  564908:	ebf4185c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56490c:	e1a0000a 	mov	r0, sl
  564910:	e1a01009 	mov	r1, r9
  564914:	ebf4176b 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564918:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  56491c:	e1a01005 	mov	r1, r5
  564920:	e28d9060 	add	r9, sp, #96	@ 0x60
  564924:	e240000c 	sub	r0, r0, #12
  564928:	ebf3ad1a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56492c:	e59f1860 	ldr	r1, [pc, #2144]	@ 565194 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1028>
  564930:	e1a00009 	mov	r0, r9
  564934:	e1a0200b 	mov	r2, fp
  564938:	e08f1001 	add	r1, pc, r1
  56493c:	ebf3b47d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564940:	e1a00008 	mov	r0, r8
  564944:	ebf48cb5 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564948:	e1a01009 	mov	r1, r9
  56494c:	ebf48d55 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564950:	e1a0a000 	mov	sl, r0
  564954:	e2879e12 	add	r9, r7, #288	@ 0x120
  564958:	ebf41848 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56495c:	e1a0000a 	mov	r0, sl
  564960:	e1a01009 	mov	r1, r9
  564964:	ebf41757 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564968:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  56496c:	e1a01005 	mov	r1, r5
  564970:	e28d9064 	add	r9, sp, #100	@ 0x64
  564974:	e240000c 	sub	r0, r0, #12
  564978:	ebf3ad06 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56497c:	e59f1814 	ldr	r1, [pc, #2068]	@ 565198 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x102c>
  564980:	e1a00009 	mov	r0, r9
  564984:	e1a0200b 	mov	r2, fp
  564988:	e08f1001 	add	r1, pc, r1
  56498c:	ebf3b469 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564990:	e1a00008 	mov	r0, r8
  564994:	ebf48ca1 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564998:	e1a01009 	mov	r1, r9
  56499c:	ebf48d41 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5649a0:	e1a0a000 	mov	sl, r0
  5649a4:	e28790f0 	add	r9, r7, #240	@ 0xf0
  5649a8:	ebf41834 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5649ac:	e1a0000a 	mov	r0, sl
  5649b0:	e1a01009 	mov	r1, r9
  5649b4:	ebf41743 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5649b8:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  5649bc:	e1a01005 	mov	r1, r5
  5649c0:	e28d9068 	add	r9, sp, #104	@ 0x68
  5649c4:	e240000c 	sub	r0, r0, #12
  5649c8:	ebf3acf2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5649cc:	e59f17c8 	ldr	r1, [pc, #1992]	@ 56519c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1030>
  5649d0:	e1a00009 	mov	r0, r9
  5649d4:	e1a0200b 	mov	r2, fp
  5649d8:	e08f1001 	add	r1, pc, r1
  5649dc:	ebf3b455 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5649e0:	e1a00008 	mov	r0, r8
  5649e4:	ebf48c8d 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5649e8:	e1a01009 	mov	r1, r9
  5649ec:	ebf48d2d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5649f0:	e1a0a000 	mov	sl, r0
  5649f4:	e28790d8 	add	r9, r7, #216	@ 0xd8
  5649f8:	ebf41820 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5649fc:	e1a0000a 	mov	r0, sl
  564a00:	e1a01009 	mov	r1, r9
  564a04:	ebf4172f 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564a08:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  564a0c:	e1a01005 	mov	r1, r5
  564a10:	e28d906c 	add	r9, sp, #108	@ 0x6c
  564a14:	e240000c 	sub	r0, r0, #12
  564a18:	ebf3acde 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564a1c:	e59f177c 	ldr	r1, [pc, #1916]	@ 5651a0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1034>
  564a20:	e1a00009 	mov	r0, r9
  564a24:	e1a0200b 	mov	r2, fp
  564a28:	e08f1001 	add	r1, pc, r1
  564a2c:	ebf3b441 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564a30:	e1a00008 	mov	r0, r8
  564a34:	ebf48c79 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564a38:	e1a01009 	mov	r1, r9
  564a3c:	ebf48d19 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564a40:	e1a0a000 	mov	sl, r0
  564a44:	e2879f42 	add	r9, r7, #264	@ 0x108
  564a48:	ebf4180c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564a4c:	e1a0000a 	mov	r0, sl
  564a50:	e1a01009 	mov	r1, r9
  564a54:	ebf4171b 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564a58:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  564a5c:	e1a01005 	mov	r1, r5
  564a60:	e28d9070 	add	r9, sp, #112	@ 0x70
  564a64:	e240000c 	sub	r0, r0, #12
  564a68:	ebf3acca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564a6c:	e59f1730 	ldr	r1, [pc, #1840]	@ 5651a4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1038>
  564a70:	e1a00009 	mov	r0, r9
  564a74:	e1a0200b 	mov	r2, fp
  564a78:	e08f1001 	add	r1, pc, r1
  564a7c:	ebf3b42d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564a80:	e1a00008 	mov	r0, r8
  564a84:	ebf48c65 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564a88:	e1a01009 	mov	r1, r9
  564a8c:	ebf48d05 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564a90:	e1a0a000 	mov	sl, r0
  564a94:	e28790c0 	add	r9, r7, #192	@ 0xc0
  564a98:	ebf417f8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564a9c:	e1a0000a 	mov	r0, sl
  564aa0:	e1a01009 	mov	r1, r9
  564aa4:	ebf41707 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564aa8:	e59d0070 	ldr	r0, [sp, #112]	@ 0x70
  564aac:	e1a01005 	mov	r1, r5
  564ab0:	e28d9074 	add	r9, sp, #116	@ 0x74
  564ab4:	e240000c 	sub	r0, r0, #12
  564ab8:	ebf3acb6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564abc:	e59f16e4 	ldr	r1, [pc, #1764]	@ 5651a8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x103c>
  564ac0:	e1a00009 	mov	r0, r9
  564ac4:	e1a0200b 	mov	r2, fp
  564ac8:	e08f1001 	add	r1, pc, r1
  564acc:	ebf3b419 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564ad0:	e1a00008 	mov	r0, r8
  564ad4:	ebf48c51 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564ad8:	e1a01009 	mov	r1, r9
  564adc:	ebf48cf1 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564ae0:	e1a0a000 	mov	sl, r0
  564ae4:	e2879fd2 	add	r9, r7, #840	@ 0x348
  564ae8:	ebf417e4 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564aec:	e1a0000a 	mov	r0, sl
  564af0:	e1a01009 	mov	r1, r9
  564af4:	ebf416f3 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564af8:	e59d0074 	ldr	r0, [sp, #116]	@ 0x74
  564afc:	e1a01005 	mov	r1, r5
  564b00:	e28d9078 	add	r9, sp, #120	@ 0x78
  564b04:	e240000c 	sub	r0, r0, #12
  564b08:	ebf3aca2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564b0c:	e59f1698 	ldr	r1, [pc, #1688]	@ 5651ac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1040>
  564b10:	e1a00009 	mov	r0, r9
  564b14:	e1a0200b 	mov	r2, fp
  564b18:	e08f1001 	add	r1, pc, r1
  564b1c:	ebf3b405 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564b20:	e1a00008 	mov	r0, r8
  564b24:	ebf48c3d 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564b28:	e1a01009 	mov	r1, r9
  564b2c:	ebf48cdd 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564b30:	e1a0a000 	mov	sl, r0
  564b34:	e2879e2a 	add	r9, r7, #672	@ 0x2a0
  564b38:	ebf417d0 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564b3c:	e1a0000a 	mov	r0, sl
  564b40:	e1a01009 	mov	r1, r9
  564b44:	ebf416df 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564b48:	e59d0078 	ldr	r0, [sp, #120]	@ 0x78
  564b4c:	e1a01005 	mov	r1, r5
  564b50:	e28d907c 	add	r9, sp, #124	@ 0x7c
  564b54:	e240000c 	sub	r0, r0, #12
  564b58:	ebf3ac8e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564b5c:	e59f164c 	ldr	r1, [pc, #1612]	@ 5651b0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1044>
  564b60:	e1a00009 	mov	r0, r9
  564b64:	e1a0200b 	mov	r2, fp
  564b68:	e08f1001 	add	r1, pc, r1
  564b6c:	ebf3b3f1 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564b70:	e1a00008 	mov	r0, r8
  564b74:	ebf48c29 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564b78:	e1a01009 	mov	r1, r9
  564b7c:	ebf48cc9 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564b80:	e1a0a000 	mov	sl, r0
  564b84:	e2879f96 	add	r9, r7, #600	@ 0x258
  564b88:	ebf417bc 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564b8c:	e1a0000a 	mov	r0, sl
  564b90:	e1a01009 	mov	r1, r9
  564b94:	ebf416cb 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564b98:	e59d007c 	ldr	r0, [sp, #124]	@ 0x7c
  564b9c:	e1a01005 	mov	r1, r5
  564ba0:	e28d9080 	add	r9, sp, #128	@ 0x80
  564ba4:	e240000c 	sub	r0, r0, #12
  564ba8:	ebf3ac7a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564bac:	e59f1600 	ldr	r1, [pc, #1536]	@ 5651b4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1048>
  564bb0:	e1a00009 	mov	r0, r9
  564bb4:	e1a0200b 	mov	r2, fp
  564bb8:	e08f1001 	add	r1, pc, r1
  564bbc:	ebf3b3dd 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564bc0:	e1a00008 	mov	r0, r8
  564bc4:	ebf48c15 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564bc8:	e1a01009 	mov	r1, r9
  564bcc:	ebf48cb5 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564bd0:	e1a0a000 	mov	sl, r0
  564bd4:	e2879fae 	add	r9, r7, #696	@ 0x2b8
  564bd8:	ebf417a8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564bdc:	e1a0000a 	mov	r0, sl
  564be0:	e1a01009 	mov	r1, r9
  564be4:	ebf416b7 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564be8:	e59d0080 	ldr	r0, [sp, #128]	@ 0x80
  564bec:	e1a01005 	mov	r1, r5
  564bf0:	e28d9084 	add	r9, sp, #132	@ 0x84
  564bf4:	e240000c 	sub	r0, r0, #12
  564bf8:	ebf3ac66 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564bfc:	e59f15b4 	ldr	r1, [pc, #1460]	@ 5651b8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104c>
  564c00:	e1a00009 	mov	r0, r9
  564c04:	e1a0200b 	mov	r2, fp
  564c08:	e08f1001 	add	r1, pc, r1
  564c0c:	ebf3b3c9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564c10:	e1a00008 	mov	r0, r8
  564c14:	ebf48c01 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564c18:	e1a01009 	mov	r1, r9
  564c1c:	ebf48ca1 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564c20:	e1a0a000 	mov	sl, r0
  564c24:	e2879e2d 	add	r9, r7, #720	@ 0x2d0
  564c28:	ebf41794 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564c2c:	e1a0000a 	mov	r0, sl
  564c30:	e1a01009 	mov	r1, r9
  564c34:	ebf416a3 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564c38:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  564c3c:	e1a01005 	mov	r1, r5
  564c40:	e28d9088 	add	r9, sp, #136	@ 0x88
  564c44:	e240000c 	sub	r0, r0, #12
  564c48:	ebf3ac52 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564c4c:	e59f1568 	ldr	r1, [pc, #1384]	@ 5651bc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1050>
  564c50:	e1a00009 	mov	r0, r9
  564c54:	e1a0200b 	mov	r2, fp
  564c58:	e08f1001 	add	r1, pc, r1
  564c5c:	ebf3b3b5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564c60:	e1a00008 	mov	r0, r8
  564c64:	ebf48bed 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564c68:	e1a01009 	mov	r1, r9
  564c6c:	ebf48c8d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564c70:	e1a0a000 	mov	sl, r0
  564c74:	e2879e27 	add	r9, r7, #624	@ 0x270
  564c78:	ebf41780 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564c7c:	e1a0000a 	mov	r0, sl
  564c80:	e1a01009 	mov	r1, r9
  564c84:	ebf4168f 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564c88:	e59d0088 	ldr	r0, [sp, #136]	@ 0x88
  564c8c:	e1a01005 	mov	r1, r5
  564c90:	e28d908c 	add	r9, sp, #140	@ 0x8c
  564c94:	e240000c 	sub	r0, r0, #12
  564c98:	ebf3ac3e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564c9c:	e59f151c 	ldr	r1, [pc, #1308]	@ 5651c0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1054>
  564ca0:	e1a00009 	mov	r0, r9
  564ca4:	e1a0200b 	mov	r2, fp
  564ca8:	e08f1001 	add	r1, pc, r1
  564cac:	ebf3b3a1 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564cb0:	e1a00008 	mov	r0, r8
  564cb4:	ebf48bd9 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564cb8:	e1a01009 	mov	r1, r9
  564cbc:	ebf48c79 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564cc0:	e1a0a000 	mov	sl, r0
  564cc4:	e2879fba 	add	r9, r7, #744	@ 0x2e8
  564cc8:	ebf4176c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564ccc:	e1a0000a 	mov	r0, sl
  564cd0:	e1a01009 	mov	r1, r9
  564cd4:	ebf4167b 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564cd8:	e59d008c 	ldr	r0, [sp, #140]	@ 0x8c
  564cdc:	e1a01005 	mov	r1, r5
  564ce0:	e28d9090 	add	r9, sp, #144	@ 0x90
  564ce4:	e240000c 	sub	r0, r0, #12
  564ce8:	ebf3ac2a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564cec:	e59f14d0 	ldr	r1, [pc, #1232]	@ 5651c4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1058>
  564cf0:	e1a00009 	mov	r0, r9
  564cf4:	e1a0200b 	mov	r2, fp
  564cf8:	e08f1001 	add	r1, pc, r1
  564cfc:	ebf3b38d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564d00:	e1a00008 	mov	r0, r8
  564d04:	ebf48bc5 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564d08:	e1a01009 	mov	r1, r9
  564d0c:	ebf48c65 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564d10:	e1a0a000 	mov	sl, r0
  564d14:	e2879e33 	add	r9, r7, #816	@ 0x330
  564d18:	ebf41758 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564d1c:	e1a0000a 	mov	r0, sl
  564d20:	e1a01009 	mov	r1, r9
  564d24:	ebf41667 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564d28:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  564d2c:	e1a01005 	mov	r1, r5
  564d30:	e28d2094 	add	r2, sp, #148	@ 0x94
  564d34:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  564d38:	e240000c 	sub	r0, r0, #12
  564d3c:	ebf3ac15 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564d40:	e59f1480 	ldr	r1, [pc, #1152]	@ 5651c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x105c>
  564d44:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  564d48:	e1a0200b 	mov	r2, fp
  564d4c:	e08f1001 	add	r1, pc, r1
  564d50:	ebf3b378 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564d54:	e1a00008 	mov	r0, r8
  564d58:	ebf48bb0 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564d5c:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  564d60:	ebf48c50 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564d64:	e1a0a000 	mov	sl, r0
  564d68:	e2879c03 	add	r9, r7, #768	@ 0x300
  564d6c:	ebf41743 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564d70:	e1a0000a 	mov	r0, sl
  564d74:	e1a01009 	mov	r1, r9
  564d78:	ebf41652 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564d7c:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  564d80:	e1a01005 	mov	r1, r5
  564d84:	e28da098 	add	sl, sp, #152	@ 0x98
  564d88:	e240000c 	sub	r0, r0, #12
  564d8c:	ebf3ac01 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564d90:	e59f1434 	ldr	r1, [pc, #1076]	@ 5651cc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1060>
  564d94:	e1a0000a 	mov	r0, sl
  564d98:	e1a0200b 	mov	r2, fp
  564d9c:	e08f1001 	add	r1, pc, r1
  564da0:	ebf3b364 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564da4:	e1a00008 	mov	r0, r8
  564da8:	ebf48b9c 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564dac:	e1a0100a 	mov	r1, sl
  564db0:	ebf48c3c 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564db4:	e1a09000 	mov	r9, r0
  564db8:	e2877fc6 	add	r7, r7, #792	@ 0x318
  564dbc:	ebf4172f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564dc0:	e1a00009 	mov	r0, r9
  564dc4:	e1a01007 	mov	r1, r7
  564dc8:	ebf4163e 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  564dcc:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  564dd0:	e1a01005 	mov	r1, r5
  564dd4:	e240000c 	sub	r0, r0, #12
  564dd8:	ebf3abee 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564ddc:	e59f13ec 	ldr	r1, [pc, #1004]	@ 5651d0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1064>
  564de0:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  564de4:	e1a0200b 	mov	r2, fp
  564de8:	e08f1001 	add	r1, pc, r1
  564dec:	ebf3b351 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564df0:	e59d0018 	ldr	r0, [sp, #24]
  564df4:	ebf48b89 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564df8:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  564dfc:	ebf48c29 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564e00:	e1a07000 	mov	r7, r0
  564e04:	ebf4171d 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564e08:	e1a00007 	mov	r0, r7
  564e0c:	e1a01008 	mov	r1, r8
  564e10:	ebf46d77 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  564e14:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  564e18:	e1a01005 	mov	r1, r5
  564e1c:	e240000c 	sub	r0, r0, #12
  564e20:	ebf3abdc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564e24:	e1a00008 	mov	r0, r8
  564e28:	ebf41714 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564e2c:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  564e30:	e59f139c 	ldr	r1, [pc, #924]	@ 5651d4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1068>
  564e34:	e1a0200b 	mov	r2, fp
  564e38:	e08f1001 	add	r1, pc, r1
  564e3c:	e1a0000a 	mov	r0, sl
  564e40:	ebf3b33c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564e44:	ebf46b06 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  564e48:	e3a08000 	mov	r8, #0
  564e4c:	e3a09000 	mov	r9, #0
  564e50:	e58d5008 	str	r5, [sp, #8]
  564e54:	e59d2018 	ldr	r2, [sp, #24]
  564e58:	e1cd80f0 	strd	r8, [sp]
  564e5c:	e1cd0af8 	strd	r0, [sp, #168]	@ 0xa8
  564e60:	e1a0100a 	mov	r1, sl
  564e64:	e59d001c 	ldr	r0, [sp, #28]
  564e68:	ebffd616 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  564e6c:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  564e70:	e1a01005 	mov	r1, r5
  564e74:	e240000c 	sub	r0, r0, #12
  564e78:	ebf3abc6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564e7c:	e1a00004 	mov	r0, r4
  564e80:	eb00210f 	bl	56d2c4 <std::vector<netflix::device::NetworkInterface, std::allocator<netflix::device::NetworkInterface> >::~vector()@@Base>
  564e84:	e59d0018 	ldr	r0, [sp, #24]
  564e88:	ebf416fc 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564e8c:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  564e90:	e1a01005 	mov	r1, r5
  564e94:	e240000c 	sub	r0, r0, #12
  564e98:	ebf3abbe 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564e9c:	eafffcf3 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  564ea0:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  564ea4:	e59f132c 	ldr	r1, [pc, #812]	@ 5651d8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x106c>
  564ea8:	e1a02005 	mov	r2, r5
  564eac:	e3a03000 	mov	r3, #0
  564eb0:	e08f1001 	add	r1, pc, r1
  564eb4:	e1a0000a 	mov	r0, sl
  564eb8:	e58d30f8 	str	r3, [sp, #248]	@ 0xf8
  564ebc:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  564ec0:	ebf3b31c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564ec4:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  564ec8:	e1a00008 	mov	r0, r8
  564ecc:	ebf48b53 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564ed0:	e1a0100a 	mov	r1, sl
  564ed4:	ebf48bf3 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564ed8:	e1a09000 	mov	r9, r0
  564edc:	ebf416e7 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564ee0:	e59d3020 	ldr	r3, [sp, #32]
  564ee4:	e1a01004 	mov	r1, r4
  564ee8:	e5893008 	str	r3, [r9, #8]
  564eec:	e3a03000 	mov	r3, #0
  564ef0:	e589300c 	str	r3, [r9, #12]
  564ef4:	e3a03004 	mov	r3, #4
  564ef8:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  564efc:	e5893000 	str	r3, [r9]
  564f00:	e240000c 	sub	r0, r0, #12
  564f04:	ebf3aba3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564f08:	e59f12cc 	ldr	r1, [pc, #716]	@ 5651dc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1070>
  564f0c:	e1a0000b 	mov	r0, fp
  564f10:	e1a0200a 	mov	r2, sl
  564f14:	e08f1001 	add	r1, pc, r1
  564f18:	ebf3b306 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564f1c:	e1a00008 	mov	r0, r8
  564f20:	ebf48b3e 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  564f24:	e1a0100b 	mov	r1, fp
  564f28:	ebf48bde 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  564f2c:	e59f32e4 	ldr	r3, [pc, #740]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  564f30:	e1a09000 	mov	r9, r0
  564f34:	e1a00004 	mov	r0, r4
  564f38:	e7973003 	ldr	r3, [r7, r3]
  564f3c:	e5933000 	ldr	r3, [r3]
  564f40:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  564f44:	e5913000 	ldr	r3, [r1]
  564f48:	e5933008 	ldr	r3, [r3, #8]
  564f4c:	e12fff33 	blx	r3
  564f50:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  564f54:	e5903000 	ldr	r3, [r0]
  564f58:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
  564f5c:	e12fff33 	blx	r3
  564f60:	e1a07000 	mov	r7, r0
  564f64:	e1a00009 	mov	r0, r9
  564f68:	ebf416c4 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564f6c:	e1a03fc7 	asr	r3, r7, #31
  564f70:	e1a02007 	mov	r2, r7
  564f74:	e1c920f8 	strd	r2, [r9, #8]
  564f78:	e3a03004 	mov	r3, #4
  564f7c:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  564f80:	e5893000 	str	r3, [r9]
  564f84:	e3500000 	cmp	r0, #0
  564f88:	0a000000 	beq	564f90 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xe24>
  564f8c:	ebf41678 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  564f90:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  564f94:	e1a01004 	mov	r1, r4
  564f98:	e240000c 	sub	r0, r0, #12
  564f9c:	ebf3ab7d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564fa0:	e59f1238 	ldr	r1, [pc, #568]	@ 5651e0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1074>
  564fa4:	e1a00005 	mov	r0, r5
  564fa8:	e1a0200b 	mov	r2, fp
  564fac:	e08f1001 	add	r1, pc, r1
  564fb0:	ebf3b2e0 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  564fb4:	ebf46aaa 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  564fb8:	e3a0a000 	mov	sl, #0
  564fbc:	e3a0b000 	mov	fp, #0
  564fc0:	e58d4008 	str	r4, [sp, #8]
  564fc4:	e1a02008 	mov	r2, r8
  564fc8:	e1cda0f0 	strd	sl, [sp]
  564fcc:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  564fd0:	e1a01005 	mov	r1, r5
  564fd4:	e59d001c 	ldr	r0, [sp, #28]
  564fd8:	ebffd5ba 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  564fdc:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  564fe0:	e1a01004 	mov	r1, r4
  564fe4:	e240000c 	sub	r0, r0, #12
  564fe8:	ebf3ab6a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  564fec:	e1a00008 	mov	r0, r8
  564ff0:	ebf416a2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  564ff4:	eafffc9d 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  564ff8:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  564ffc:	e59f11e0 	ldr	r1, [pc, #480]	@ 5651e4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1078>
  565000:	e1a02005 	mov	r2, r5
  565004:	e3a03000 	mov	r3, #0
  565008:	e08f1001 	add	r1, pc, r1
  56500c:	e1a0000a 	mov	r0, sl
  565010:	e58d30f8 	str	r3, [sp, #248]	@ 0xf8
  565014:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565018:	ebf3b2c6 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  56501c:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565020:	e1a00008 	mov	r0, r8
  565024:	ebf48afd 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  565028:	e1a0100a 	mov	r1, sl
  56502c:	ebf48b9d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565030:	e1a09000 	mov	r9, r0
  565034:	ebf41691 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565038:	e59d2020 	ldr	r2, [sp, #32]
  56503c:	e3a03000 	mov	r3, #0
  565040:	e589300c 	str	r3, [r9, #12]
  565044:	e1a01004 	mov	r1, r4
  565048:	e3a03004 	mov	r3, #4
  56504c:	e5892008 	str	r2, [r9, #8]
  565050:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  565054:	e5893000 	str	r3, [r9]
  565058:	e240000c 	sub	r0, r0, #12
  56505c:	ebf3ab4d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565060:	e59f1180 	ldr	r1, [pc, #384]	@ 5651e8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x107c>
  565064:	e1a0000b 	mov	r0, fp
  565068:	e1a0200a 	mov	r2, sl
  56506c:	e08f1001 	add	r1, pc, r1
  565070:	ebf3b2b0 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565074:	e1a00008 	mov	r0, r8
  565078:	ebf48ae8 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  56507c:	e1a0100b 	mov	r1, fp
  565080:	ebf48b88 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565084:	e59f318c 	ldr	r3, [pc, #396]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  565088:	e1a09000 	mov	r9, r0
  56508c:	e1a00004 	mov	r0, r4
  565090:	e7973003 	ldr	r3, [r7, r3]
  565094:	e5933000 	ldr	r3, [r3]
  565098:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  56509c:	e5913000 	ldr	r3, [r1]
  5650a0:	e5933008 	ldr	r3, [r3, #8]
  5650a4:	e12fff33 	blx	r3
  5650a8:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5650ac:	e5903000 	ldr	r3, [r0]
  5650b0:	e59330a0 	ldr	r3, [r3, #160]	@ 0xa0
  5650b4:	e12fff33 	blx	r3
  5650b8:	e1a00009 	mov	r0, r9
  5650bc:	eeb08b40 	vmov.f64	d8, d0
  5650c0:	ebf4166e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5650c4:	ed898b02 	vstr	d8, [r9, #8]
  5650c8:	e3a03005 	mov	r3, #5
  5650cc:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5650d0:	e5893000 	str	r3, [r9]
  5650d4:	e3500000 	cmp	r0, #0
  5650d8:	0a000000 	beq	5650e0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0xf74>
  5650dc:	ebf41624 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5650e0:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  5650e4:	e1a01004 	mov	r1, r4
  5650e8:	e240000c 	sub	r0, r0, #12
  5650ec:	ebf3ab29 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5650f0:	e59f10f4 	ldr	r1, [pc, #244]	@ 5651ec <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1080>
  5650f4:	e1a00005 	mov	r0, r5
  5650f8:	e1a0200b 	mov	r2, fp
  5650fc:	e08f1001 	add	r1, pc, r1
  565100:	ebf3b28c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565104:	ebf46a56 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  565108:	e3a0a000 	mov	sl, #0
  56510c:	e3a0b000 	mov	fp, #0
  565110:	e58d4008 	str	r4, [sp, #8]
  565114:	e1a02008 	mov	r2, r8
  565118:	e1cda0f0 	strd	sl, [sp]
  56511c:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  565120:	e1a01005 	mov	r1, r5
  565124:	e59d001c 	ldr	r0, [sp, #28]
  565128:	ebffd566 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  56512c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565130:	e1a01004 	mov	r1, r4
  565134:	e240000c 	sub	r0, r0, #12
  565138:	ebf3ab16 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56513c:	e1a00008 	mov	r0, r8
  565140:	ebf4164e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565144:	eafffc49 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565148:	004c2f78 	subeq	r2, ip, r8, ror pc
  56514c:	00003440 	andeq	r3, r0, r0, asr #8
  565150:	003fb0e8 	eorseq	fp, pc, r8, ror #1
  565154:	003fff08 	eorseq	pc, pc, r8, lsl #30
  565158:	00002e24 	andeq	r2, r0, r4, lsr #28
  56515c:	00001df0 	strdeq	r1, [r0], -r0
  565160:	000026f4 	strdeq	r2, [r0], -r4
  565164:	00400e70 	subeq	r0, r0, r0, ror lr
  565168:	003fadc8 	eorseq	sl, pc, r8, asr #27
  56516c:	00400d1c 	subeq	r0, r0, ip, lsl sp
  565170:	00400d80 	subeq	r0, r0, r0, lsl #27
  565174:	003fac9c 	mlaseq	pc, ip, ip, sl	@ <UNPREDICTABLE>
  565178:	00400d6c 	subeq	r0, r0, ip, ror #26
  56517c:	00400bbc 	strheq	r0, [r0], #-188	@ 0xffffff44
  565180:	00400b7c 	subeq	r0, r0, ip, ror fp
  565184:	00400b38 	subeq	r0, r0, r8, lsr fp
  565188:	00400af0 	strdeq	r0, [r0], #-160	@ 0xffffff60
  56518c:	00400ab0 	strheq	r0, [r0], #-160	@ 0xffffff60
  565190:	00400a70 	subeq	r0, r0, r0, ror sl
  565194:	00400a2c 	subeq	r0, r0, ip, lsr #20
  565198:	004009ec 	subeq	r0, r0, ip, ror #19
  56519c:	004009a8 	subeq	r0, r0, r8, lsr #19
  5651a0:	00400960 	subeq	r0, r0, r0, ror #18
  5651a4:	00400920 	subeq	r0, r0, r0, lsr #18
  5651a8:	004008dc 	ldrdeq	r0, [r0], #-140	@ 0xffffff74
  5651ac:	004008a8 	subeq	r0, r0, r8, lsr #17
  5651b0:	00400870 	subeq	r0, r0, r0, ror r8
  5651b4:	00400830 	subeq	r0, r0, r0, lsr r8
  5651b8:	004007f0 	strdeq	r0, [r0], #-112	@ 0xffffff90
  5651bc:	004007b4 	strheq	r0, [r0], #-116	@ 0xffffff8c
  5651c0:	00400774 	subeq	r0, r0, r4, ror r7
  5651c4:	00400734 	subeq	r0, r0, r4, lsr r7
  5651c8:	004006f4 	strdeq	r0, [r0], #-100	@ 0xffffff9c
  5651cc:	004006b8 	strheq	r0, [r0], #-104	@ 0xffffff98
  5651d0:	003e0e84 	eorseq	r0, lr, r4, lsl #29
  5651d4:	003eb458 	eorseq	fp, lr, r8, asr r4
  5651d8:	003fa3e8 	eorseq	sl, pc, r8, ror #7
  5651dc:	003e0d58 	eorseq	r0, lr, r8, asr sp
  5651e0:	004002d8 	ldrdeq	r0, [r0], #-40	@ 0xffffffd8
  5651e4:	003fa290 	mlaseq	pc, r0, r2, sl	@ <UNPREDICTABLE>
  5651e8:	003e0c00 	eorseq	r0, lr, r0, lsl #24
  5651ec:	00400198 	umaaleq	r0, r0, r8, r1
  5651f0:	00416d40 	subeq	r6, r1, r0, asr #26
  5651f4:	003f9fb8 	ldrhteq	r9, [pc], -r8
  5651f8:	003e092c 	eorseq	r0, lr, ip, lsr #18
  5651fc:	00416bc4 	subeq	r6, r1, r4, asr #23
  565200:	003ffea0 	eorseq	pc, pc, r0, lsr #29
  565204:	003ffe50 	eorseq	pc, pc, r0, asr lr	@ <UNPREDICTABLE>
  565208:	004312c4 	subeq	r1, r3, r4, asr #5
  56520c:	00002278 	andeq	r2, r0, r8, ror r2
  565210:	003f9cfc 	ldrshteq	r9, [pc], -ip
  565214:	003e066c 	eorseq	r0, lr, ip, ror #12
  565218:	0000317c 	andeq	r3, r0, ip, ror r1
  56521c:	00431144 	subeq	r1, r3, r4, asr #2
  565220:	003ffb74 	eorseq	pc, pc, r4, ror fp	@ <UNPREDICTABLE>
  565224:	003ffb30 	eorseq	pc, pc, r0, lsr fp	@ <UNPREDICTABLE>
  565228:	003ffac4 	eorseq	pc, pc, r4, asr #21
  56522c:	003f9a24 	eorseq	r9, pc, r4, lsr #20
  565230:	003e03a0 	eorseq	r0, lr, r0, lsr #7
  565234:	003ff964 	eorseq	pc, pc, r4, ror #18
  565238:	003f9920 	eorseq	r9, pc, r0, lsr #18
  56523c:	003e0288 	eorseq	r0, lr, r8, lsl #5
  565240:	0000317c 	andeq	r3, r0, ip, ror r1
  565244:	003ff7d8 	ldrsbteq	pc, [pc], -r8	@ <UNPREDICTABLE>
  565248:	003ff798 	mlaseq	pc, r8, r7, pc	@ <UNPREDICTABLE>
  56524c:	003ff724 	eorseq	pc, pc, r4, lsr #14
  565250:	003ff708 	eorseq	pc, pc, r8, lsl #14
  565254:	e28da098 	add	sl, sp, #152	@ 0x98
  565258:	e51f1070 	ldr	r1, [pc, #-112]	@ 5651f0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1084>
  56525c:	e1a0200b 	mov	r2, fp
  565260:	e3a03000 	mov	r3, #0
  565264:	e08f1001 	add	r1, pc, r1
  565268:	e1a0000a 	mov	r0, sl
  56526c:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  565270:	ebf3b230 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565274:	e51f3070 	ldr	r3, [pc, #-112]	@ 56520c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a0>
  565278:	e5992000 	ldr	r2, [r9]
  56527c:	e7973003 	ldr	r3, [r7, r3]
  565280:	e3520003 	cmp	r2, #3
  565284:	e283300c 	add	r3, r3, #12
  565288:	e58d30a8 	str	r3, [sp, #168]	@ 0xa8
  56528c:	0a000294 	beq	565ce4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1b78>
  565290:	e28d1094 	add	r1, sp, #148	@ 0x94
  565294:	e58d1028 	str	r1, [sp, #40]	@ 0x28
  565298:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  56529c:	e1a01005 	mov	r1, r5
  5652a0:	ebf3ad77 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  5652a4:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  5652a8:	e1a01004 	mov	r1, r4
  5652ac:	e28d309c 	add	r3, sp, #156	@ 0x9c
  5652b0:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  5652b4:	e240000c 	sub	r0, r0, #12
  5652b8:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  5652bc:	e58dc018 	str	ip, [sp, #24]
  5652c0:	ebf3aab4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5652c4:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  5652c8:	e1a01004 	mov	r1, r4
  5652cc:	e240000c 	sub	r0, r0, #12
  5652d0:	ebf3aab0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5652d4:	e51f10e8 	ldr	r1, [pc, #-232]	@ 5651f4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1088>
  5652d8:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  5652dc:	e1a02005 	mov	r2, r5
  5652e0:	e08f1001 	add	r1, pc, r1
  5652e4:	ebf3b213 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5652e8:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  5652ec:	e58d3018 	str	r3, [sp, #24]
  5652f0:	e1a00003 	mov	r0, r3
  5652f4:	ebf48a49 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5652f8:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  5652fc:	ebf48ae9 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565300:	e1a08000 	mov	r8, r0
  565304:	ebf415dd 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565308:	e59dc020 	ldr	ip, [sp, #32]
  56530c:	e3a03000 	mov	r3, #0
  565310:	e588300c 	str	r3, [r8, #12]
  565314:	e1a01004 	mov	r1, r4
  565318:	e3a03004 	mov	r3, #4
  56531c:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  565320:	e588c008 	str	ip, [r8, #8]
  565324:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  565328:	e5883000 	str	r3, [r8]
  56532c:	e240000c 	sub	r0, r0, #12
  565330:	ebf3aa98 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565334:	e51f1144 	ldr	r1, [pc, #-324]	@ 5651f8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x108c>
  565338:	e1a0000a 	mov	r0, sl
  56533c:	e1a0200b 	mov	r2, fp
  565340:	e08f1001 	add	r1, pc, r1
  565344:	ebf3b1fb 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565348:	e59d0018 	ldr	r0, [sp, #24]
  56534c:	ebf48a33 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  565350:	e1a0100a 	mov	r1, sl
  565354:	ebf48ad3 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565358:	e51f3148 	ldr	r3, [pc, #-328]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  56535c:	e1a09000 	mov	r9, r0
  565360:	e1a00004 	mov	r0, r4
  565364:	e7973003 	ldr	r3, [r7, r3]
  565368:	e5933000 	ldr	r3, [r3]
  56536c:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  565370:	e5913000 	ldr	r3, [r1]
  565374:	e5933008 	ldr	r3, [r3, #8]
  565378:	e12fff33 	blx	r3
  56537c:	e59d10b0 	ldr	r1, [sp, #176]	@ 0xb0
  565380:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565384:	e59d2028 	ldr	r2, [sp, #40]	@ 0x28
  565388:	e1a00008 	mov	r0, r8
  56538c:	e5913000 	ldr	r3, [r1]
  565390:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
  565394:	e12fff33 	blx	r3
  565398:	e1a00009 	mov	r0, r9
  56539c:	ebf415b7 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5653a0:	e1a00009 	mov	r0, r9
  5653a4:	e1a01008 	mov	r1, r8
  5653a8:	ebf46c11 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  5653ac:	e1a00008 	mov	r0, r8
  5653b0:	ebf415b2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5653b4:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5653b8:	e3500000 	cmp	r0, #0
  5653bc:	0a000000 	beq	5653c4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1258>
  5653c0:	ebf4156b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5653c4:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  5653c8:	e1a01004 	mov	r1, r4
  5653cc:	e240000c 	sub	r0, r0, #12
  5653d0:	ebf3aa70 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5653d4:	e51f11e0 	ldr	r1, [pc, #-480]	@ 5651fc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1090>
  5653d8:	e1a0000b 	mov	r0, fp
  5653dc:	e1a02005 	mov	r2, r5
  5653e0:	e08f1001 	add	r1, pc, r1
  5653e4:	ebf3b1d3 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5653e8:	ebf4699d 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  5653ec:	e3a08000 	mov	r8, #0
  5653f0:	e3a09000 	mov	r9, #0
  5653f4:	e58d4008 	str	r4, [sp, #8]
  5653f8:	e59d2018 	ldr	r2, [sp, #24]
  5653fc:	e1cd80f0 	strd	r8, [sp]
  565400:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  565404:	e1a0100b 	mov	r1, fp
  565408:	e59d001c 	ldr	r0, [sp, #28]
  56540c:	ebffd4ad 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  565410:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565414:	e1a01004 	mov	r1, r4
  565418:	e240000c 	sub	r0, r0, #12
  56541c:	ebf3aa5d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565420:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  565424:	e1a01004 	mov	r1, r4
  565428:	e240000c 	sub	r0, r0, #12
  56542c:	ebf3aa59 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565430:	e59d0018 	ldr	r0, [sp, #24]
  565434:	ebf41591 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565438:	eafffb8c 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  56543c:	e51f1244 	ldr	r1, [pc, #-580]	@ 565200 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1094>
  565440:	e28d2098 	add	r2, sp, #152	@ 0x98
  565444:	e1a00005 	mov	r0, r5
  565448:	e08f1001 	add	r1, pc, r1
  56544c:	ebf3b1b9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565450:	e51f324c 	ldr	r3, [pc, #-588]	@ 56520c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a0>
  565454:	e5992000 	ldr	r2, [r9]
  565458:	e7973003 	ldr	r3, [r7, r3]
  56545c:	e3520003 	cmp	r2, #3
  565460:	e283300c 	add	r3, r3, #12
  565464:	e58d30b0 	str	r3, [sp, #176]	@ 0xb0
  565468:	0a00020e 	beq	565ca8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1b3c>
  56546c:	e1a0000b 	mov	r0, fp
  565470:	e1a01004 	mov	r1, r4
  565474:	ebf3ad02 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  565478:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  56547c:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  565480:	e240000c 	sub	r0, r0, #12
  565484:	e1a0100a 	mov	r1, sl
  565488:	ebf3aa42 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56548c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565490:	e1a01004 	mov	r1, r4
  565494:	e240000c 	sub	r0, r0, #12
  565498:	ebf3aa3e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56549c:	e51f12a0 	ldr	r1, [pc, #-672]	@ 565204 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1098>
  5654a0:	e1a0000b 	mov	r0, fp
  5654a4:	e08f1001 	add	r1, pc, r1
  5654a8:	ebf3af3b 	bl	25119c <std::string::compare(char const*) const@plt>
  5654ac:	e3500000 	cmp	r0, #0
  5654b0:	03a02001 	moveq	r2, #1
  5654b4:	1a0001c4 	bne	565bcc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a60>
  5654b8:	e51f32a8 	ldr	r3, [pc, #-680]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  5654bc:	e1a00004 	mov	r0, r4
  5654c0:	e58d20a8 	str	r2, [sp, #168]	@ 0xa8
  5654c4:	e7973003 	ldr	r3, [r7, r3]
  5654c8:	e5933000 	ldr	r3, [r3]
  5654cc:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  5654d0:	e5913000 	ldr	r3, [r1]
  5654d4:	e5933008 	ldr	r3, [r3, #8]
  5654d8:	e12fff33 	blx	r3
  5654dc:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5654e0:	e1a01005 	mov	r1, r5
  5654e4:	e5903000 	ldr	r3, [r0]
  5654e8:	e5933074 	ldr	r3, [r3, #116]	@ 0x74
  5654ec:	e12fff33 	blx	r3
  5654f0:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5654f4:	e3500000 	cmp	r0, #0
  5654f8:	0a000000 	beq	565500 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1394>
  5654fc:	ebf4151c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565500:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565504:	e1a01004 	mov	r1, r4
  565508:	e240000c 	sub	r0, r0, #12
  56550c:	ebf3aa21 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565510:	eafffb56 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565514:	e51f1314 	ldr	r1, [pc, #-788]	@ 565208 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x109c>
  565518:	e28d2094 	add	r2, sp, #148	@ 0x94
  56551c:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  565520:	e1a0200b 	mov	r2, fp
  565524:	e08f1001 	add	r1, pc, r1
  565528:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  56552c:	e3a03000 	mov	r3, #0
  565530:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  565534:	ebf3b17f 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565538:	e51f3334 	ldr	r3, [pc, #-820]	@ 56520c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a0>
  56553c:	e5992000 	ldr	r2, [r9]
  565540:	e7973003 	ldr	r3, [r7, r3]
  565544:	e3520003 	cmp	r2, #3
  565548:	e283300c 	add	r3, r3, #12
  56554c:	e58d30a8 	str	r3, [sp, #168]	@ 0xa8
  565550:	0a0001c4 	beq	565c68 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1afc>
  565554:	e28d9090 	add	r9, sp, #144	@ 0x90
  565558:	e1a01005 	mov	r1, r5
  56555c:	e1a00009 	mov	r0, r9
  565560:	ebf3acc7 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  565564:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565568:	e1a01004 	mov	r1, r4
  56556c:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  565570:	e58d3018 	str	r3, [sp, #24]
  565574:	e240000c 	sub	r0, r0, #12
  565578:	e28da098 	add	sl, sp, #152	@ 0x98
  56557c:	ebf3aa05 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565580:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  565584:	e1a01004 	mov	r1, r4
  565588:	e240000c 	sub	r0, r0, #12
  56558c:	ebf3aa01 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565590:	e51f1388 	ldr	r1, [pc, #-904]	@ 565210 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a4>
  565594:	e1a0000a 	mov	r0, sl
  565598:	e1a02005 	mov	r2, r5
  56559c:	e08f1001 	add	r1, pc, r1
  5655a0:	ebf3b164 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5655a4:	e28d10e0 	add	r1, sp, #224	@ 0xe0
  5655a8:	e58d1018 	str	r1, [sp, #24]
  5655ac:	e1a00001 	mov	r0, r1
  5655b0:	ebf4899a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5655b4:	e1a0100a 	mov	r1, sl
  5655b8:	ebf48a3a 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5655bc:	e1a08000 	mov	r8, r0
  5655c0:	ebf4152e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5655c4:	e59d2020 	ldr	r2, [sp, #32]
  5655c8:	e3a03000 	mov	r3, #0
  5655cc:	e588300c 	str	r3, [r8, #12]
  5655d0:	e1a01004 	mov	r1, r4
  5655d4:	e28d309c 	add	r3, sp, #156	@ 0x9c
  5655d8:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  5655dc:	e5882008 	str	r2, [r8, #8]
  5655e0:	e3a03004 	mov	r3, #4
  5655e4:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  5655e8:	e5883000 	str	r3, [r8]
  5655ec:	e240000c 	sub	r0, r0, #12
  5655f0:	ebf3a9e8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5655f4:	e51f13e8 	ldr	r1, [pc, #-1000]	@ 565214 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10a8>
  5655f8:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  5655fc:	e1a0200b 	mov	r2, fp
  565600:	e08f1001 	add	r1, pc, r1
  565604:	ebf3b14b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565608:	e59d0018 	ldr	r0, [sp, #24]
  56560c:	ebf48983 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  565610:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  565614:	ebf48a23 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565618:	e51f3408 	ldr	r3, [pc, #-1032]	@ 565218 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  56561c:	e1a0a000 	mov	sl, r0
  565620:	e1a00004 	mov	r0, r4
  565624:	e7973003 	ldr	r3, [r7, r3]
  565628:	e5933000 	ldr	r3, [r3]
  56562c:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  565630:	e5913000 	ldr	r3, [r1]
  565634:	e5933008 	ldr	r3, [r3, #8]
  565638:	e12fff33 	blx	r3
  56563c:	e59d10b0 	ldr	r1, [sp, #176]	@ 0xb0
  565640:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565644:	e1a02009 	mov	r2, r9
  565648:	e1a00008 	mov	r0, r8
  56564c:	e5913000 	ldr	r3, [r1]
  565650:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
  565654:	e12fff33 	blx	r3
  565658:	e1a0000a 	mov	r0, sl
  56565c:	ebf41507 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565660:	e1a0000a 	mov	r0, sl
  565664:	e1a01008 	mov	r1, r8
  565668:	ebf46b61 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  56566c:	e1a00008 	mov	r0, r8
  565670:	ebf41502 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565674:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  565678:	e3500000 	cmp	r0, #0
  56567c:	0a000000 	beq	565684 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1518>
  565680:	ebf414bb 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565684:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  565688:	e1a01004 	mov	r1, r4
  56568c:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  565690:	e240000c 	sub	r0, r0, #12
  565694:	ebf3a9bf 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565698:	e51f1484 	ldr	r1, [pc, #-1156]	@ 56521c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10b0>
  56569c:	e1a0000a 	mov	r0, sl
  5656a0:	e1a02005 	mov	r2, r5
  5656a4:	e08f1001 	add	r1, pc, r1
  5656a8:	ebf3b122 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5656ac:	e59d0018 	ldr	r0, [sp, #24]
  5656b0:	ebf4895a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5656b4:	e1a0100a 	mov	r1, sl
  5656b8:	ebf489fa 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5656bc:	e1a07000 	mov	r7, r0
  5656c0:	ebf414ee 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5656c4:	e1a00007 	mov	r0, r7
  5656c8:	e3a03001 	mov	r3, #1
  5656cc:	e1a01009 	mov	r1, r9
  5656d0:	e4803008 	str	r3, [r0], #8
  5656d4:	ebf3ac6a 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  5656d8:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  5656dc:	e1a01004 	mov	r1, r4
  5656e0:	e240000c 	sub	r0, r0, #12
  5656e4:	ebf3a9ab 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5656e8:	e51f14d0 	ldr	r1, [pc, #-1232]	@ 565220 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10b4>
  5656ec:	e1a0000b 	mov	r0, fp
  5656f0:	e1a02005 	mov	r2, r5
  5656f4:	e08f1001 	add	r1, pc, r1
  5656f8:	ebf3b10e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5656fc:	ebf468d8 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  565700:	e3a08000 	mov	r8, #0
  565704:	e3a09000 	mov	r9, #0
  565708:	e58d4008 	str	r4, [sp, #8]
  56570c:	e59d2018 	ldr	r2, [sp, #24]
  565710:	e1cd80f0 	strd	r8, [sp]
  565714:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  565718:	e1a0100b 	mov	r1, fp
  56571c:	e59d001c 	ldr	r0, [sp, #28]
  565720:	ebffd3e8 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  565724:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565728:	e1a01004 	mov	r1, r4
  56572c:	e240000c 	sub	r0, r0, #12
  565730:	ebf3a998 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565734:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  565738:	e1a01004 	mov	r1, r4
  56573c:	e240000c 	sub	r0, r0, #12
  565740:	ebf3a994 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565744:	e59d0018 	ldr	r0, [sp, #24]
  565748:	ebf414cc 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56574c:	eafffac7 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565750:	e51f3518 	ldr	r3, [pc, #-1304]	@ 565240 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10d4>
  565754:	e1a00004 	mov	r0, r4
  565758:	e7973003 	ldr	r3, [r7, r3]
  56575c:	e5933000 	ldr	r3, [r3]
  565760:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  565764:	e5913000 	ldr	r3, [r1]
  565768:	e5933008 	ldr	r3, [r3, #8]
  56576c:	e12fff33 	blx	r3
  565770:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565774:	e28d1094 	add	r1, sp, #148	@ 0x94
  565778:	e28d2098 	add	r2, sp, #152	@ 0x98
  56577c:	e5903000 	ldr	r3, [r0]
  565780:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
  565784:	e12fff33 	blx	r3
  565788:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  56578c:	e3500000 	cmp	r0, #0
  565790:	0a000000 	beq	565798 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x162c>
  565794:	ebf41476 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565798:	e28dc09c 	add	ip, sp, #156	@ 0x9c
  56579c:	e51f1580 	ldr	r1, [pc, #-1408]	@ 565224 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10b8>
  5657a0:	e1a02005 	mov	r2, r5
  5657a4:	e3a03000 	mov	r3, #0
  5657a8:	e08f1001 	add	r1, pc, r1
  5657ac:	e1a0000c 	mov	r0, ip
  5657b0:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  5657b4:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  5657b8:	e58dc024 	str	ip, [sp, #36]	@ 0x24
  5657bc:	e58d3018 	str	r3, [sp, #24]
  5657c0:	ebf3b0dc 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5657c4:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  5657c8:	e58dc018 	str	ip, [sp, #24]
  5657cc:	e1a0000c 	mov	r0, ip
  5657d0:	ebf48912 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5657d4:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  5657d8:	ebf489b2 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5657dc:	e1a07000 	mov	r7, r0
  5657e0:	e59d8094 	ldr	r8, [sp, #148]	@ 0x94
  5657e4:	ebf414a5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5657e8:	e5878008 	str	r8, [r7, #8]
  5657ec:	e3a03000 	mov	r3, #0
  5657f0:	e587300c 	str	r3, [r7, #12]
  5657f4:	e1a01004 	mov	r1, r4
  5657f8:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  5657fc:	e3a03004 	mov	r3, #4
  565800:	e5873000 	str	r3, [r7]
  565804:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  565808:	e240000c 	sub	r0, r0, #12
  56580c:	ebf3a961 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565810:	e51f15f0 	ldr	r1, [pc, #-1520]	@ 565228 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10bc>
  565814:	e1a0000a 	mov	r0, sl
  565818:	e1a02005 	mov	r2, r5
  56581c:	e08f1001 	add	r1, pc, r1
  565820:	ebf3b0c4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565824:	e59d0018 	ldr	r0, [sp, #24]
  565828:	ebf488fc 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  56582c:	e1a0100a 	mov	r1, sl
  565830:	ebf4899c 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565834:	e1a07000 	mov	r7, r0
  565838:	e59d8098 	ldr	r8, [sp, #152]	@ 0x98
  56583c:	ebf4148f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565840:	e5878008 	str	r8, [r7, #8]
  565844:	e3a09000 	mov	r9, #0
  565848:	e587900c 	str	r9, [r7, #12]
  56584c:	e3a03004 	mov	r3, #4
  565850:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  565854:	e1a01004 	mov	r1, r4
  565858:	e5873000 	str	r3, [r7]
  56585c:	e28d8f56 	add	r8, sp, #344	@ 0x158
  565860:	e240000c 	sub	r0, r0, #12
  565864:	ebf3a94b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565868:	e51f1644 	ldr	r1, [pc, #-1604]	@ 56522c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10c0>
  56586c:	e1a0000b 	mov	r0, fp
  565870:	e1a02005 	mov	r2, r5
  565874:	e08f1001 	add	r1, pc, r1
  565878:	e5289060 	str	r9, [r8, #-96]!	@ 0xffffffa0
  56587c:	ebf3b0ad 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565880:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565884:	e1a00008 	mov	r0, r8
  565888:	ebf488e4 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  56588c:	e1a0100b 	mov	r1, fp
  565890:	ebf48984 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  565894:	e1a07000 	mov	r7, r0
  565898:	ebf41478 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56589c:	e59d1020 	ldr	r1, [sp, #32]
  5658a0:	e3a03004 	mov	r3, #4
  5658a4:	e587900c 	str	r9, [r7, #12]
  5658a8:	e5871008 	str	r1, [r7, #8]
  5658ac:	e1a01004 	mov	r1, r4
  5658b0:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  5658b4:	e5873000 	str	r3, [r7]
  5658b8:	e240000c 	sub	r0, r0, #12
  5658bc:	ebf3a935 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5658c0:	e51f1698 	ldr	r1, [pc, #-1688]	@ 565230 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10c4>
  5658c4:	e1a00004 	mov	r0, r4
  5658c8:	e1a0200b 	mov	r2, fp
  5658cc:	e08f1001 	add	r1, pc, r1
  5658d0:	ebf3b098 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5658d4:	e1a00008 	mov	r0, r8
  5658d8:	ebf488d0 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5658dc:	e1a01004 	mov	r1, r4
  5658e0:	ebf48970 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5658e4:	e1a07000 	mov	r7, r0
  5658e8:	ebf41464 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5658ec:	e1a00007 	mov	r0, r7
  5658f0:	e59d1018 	ldr	r1, [sp, #24]
  5658f4:	ebf41373 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5658f8:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5658fc:	e1a01005 	mov	r1, r5
  565900:	e240000c 	sub	r0, r0, #12
  565904:	ebf3a923 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565908:	e51f16dc 	ldr	r1, [pc, #-1756]	@ 565234 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  56590c:	e1a00005 	mov	r0, r5
  565910:	e1a0200b 	mov	r2, fp
  565914:	e08f1001 	add	r1, pc, r1
  565918:	ebf3b086 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  56591c:	ebf46850 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  565920:	e3a0a000 	mov	sl, #0
  565924:	e3a0b000 	mov	fp, #0
  565928:	e58d4008 	str	r4, [sp, #8]
  56592c:	e1a02008 	mov	r2, r8
  565930:	e1cda0f0 	strd	sl, [sp]
  565934:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  565938:	e1a01005 	mov	r1, r5
  56593c:	e59d001c 	ldr	r0, [sp, #28]
  565940:	ebffd360 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  565944:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565948:	e1a01004 	mov	r1, r4
  56594c:	e240000c 	sub	r0, r0, #12
  565950:	ebf3a910 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565954:	e1a00008 	mov	r0, r8
  565958:	ebf41448 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56595c:	e59d0018 	ldr	r0, [sp, #24]
  565960:	ebf41446 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565964:	eafffa41 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565968:	e28da0a0 	add	sl, sp, #160	@ 0xa0
  56596c:	e51f173c 	ldr	r1, [pc, #-1852]	@ 565238 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10cc>
  565970:	e1a02005 	mov	r2, r5
  565974:	e3a03000 	mov	r3, #0
  565978:	e08f1001 	add	r1, pc, r1
  56597c:	e1a0000a 	mov	r0, sl
  565980:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  565984:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  565988:	e58dc018 	str	ip, [sp, #24]
  56598c:	ebf3b069 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565990:	e28d10e0 	add	r1, sp, #224	@ 0xe0
  565994:	e58d1018 	str	r1, [sp, #24]
  565998:	e1a00001 	mov	r0, r1
  56599c:	ebf4889f 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5659a0:	e1a0100a 	mov	r1, sl
  5659a4:	ebf4893f 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5659a8:	e1a08000 	mov	r8, r0
  5659ac:	ebf41433 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5659b0:	e59d2020 	ldr	r2, [sp, #32]
  5659b4:	e3a03000 	mov	r3, #0
  5659b8:	e588300c 	str	r3, [r8, #12]
  5659bc:	e1a01004 	mov	r1, r4
  5659c0:	e3a03004 	mov	r3, #4
  5659c4:	e5882008 	str	r2, [r8, #8]
  5659c8:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  5659cc:	e5883000 	str	r3, [r8]
  5659d0:	e240000c 	sub	r0, r0, #12
  5659d4:	ebf3a8ef 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5659d8:	e51f17a4 	ldr	r1, [pc, #-1956]	@ 56523c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10d0>
  5659dc:	e1a0000b 	mov	r0, fp
  5659e0:	e1a0200a 	mov	r2, sl
  5659e4:	e08f1001 	add	r1, pc, r1
  5659e8:	ebf3b052 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5659ec:	e59d0018 	ldr	r0, [sp, #24]
  5659f0:	ebf4888a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5659f4:	e1a0100b 	mov	r1, fp
  5659f8:	ebf4892a 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5659fc:	e51f37c4 	ldr	r3, [pc, #-1988]	@ 565240 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10d4>
  565a00:	e1a09000 	mov	r9, r0
  565a04:	e1a00004 	mov	r0, r4
  565a08:	e7973003 	ldr	r3, [r7, r3]
  565a0c:	e5933000 	ldr	r3, [r3]
  565a10:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  565a14:	e5913000 	ldr	r3, [r1]
  565a18:	e5933008 	ldr	r3, [r3, #8]
  565a1c:	e12fff33 	blx	r3
  565a20:	e59d10b0 	ldr	r1, [sp, #176]	@ 0xb0
  565a24:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565a28:	e1a00008 	mov	r0, r8
  565a2c:	e5913000 	ldr	r3, [r1]
  565a30:	e5933078 	ldr	r3, [r3, #120]	@ 0x78
  565a34:	e12fff33 	blx	r3
  565a38:	e1a00009 	mov	r0, r9
  565a3c:	ebf4140f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565a40:	e1a00009 	mov	r0, r9
  565a44:	e1a01008 	mov	r1, r8
  565a48:	ebf46a69 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  565a4c:	e1a00008 	mov	r0, r8
  565a50:	ebf4140a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565a54:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  565a58:	e3500000 	cmp	r0, #0
  565a5c:	0a000000 	beq	565a64 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x18f8>
  565a60:	ebf413c3 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565a64:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565a68:	e1a01004 	mov	r1, r4
  565a6c:	e240000c 	sub	r0, r0, #12
  565a70:	ebf3a8c8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565a74:	e51f1838 	ldr	r1, [pc, #-2104]	@ 565244 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10d8>
  565a78:	e1a00005 	mov	r0, r5
  565a7c:	e1a0200b 	mov	r2, fp
  565a80:	e08f1001 	add	r1, pc, r1
  565a84:	ebf3b02b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565a88:	ebf467f5 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  565a8c:	e3a08000 	mov	r8, #0
  565a90:	e3a09000 	mov	r9, #0
  565a94:	e58d4008 	str	r4, [sp, #8]
  565a98:	e59d2018 	ldr	r2, [sp, #24]
  565a9c:	e1cd80f0 	strd	r8, [sp]
  565aa0:	e1cd0bf0 	strd	r0, [sp, #176]	@ 0xb0
  565aa4:	e1a01005 	mov	r1, r5
  565aa8:	e59d001c 	ldr	r0, [sp, #28]
  565aac:	ebffd305 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  565ab0:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565ab4:	e1a01004 	mov	r1, r4
  565ab8:	e240000c 	sub	r0, r0, #12
  565abc:	ebf3a8b5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565ac0:	e59d0018 	ldr	r0, [sp, #24]
  565ac4:	ebf413ed 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565ac8:	eafff9e8 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565acc:	e5990008 	ldr	r0, [r9, #8]
  565ad0:	e1a01004 	mov	r1, r4
  565ad4:	e2800008 	add	r0, r0, #8
  565ad8:	ebf47cef 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565adc:	e5993008 	ldr	r3, [r9, #8]
  565ae0:	e283300c 	add	r3, r3, #12
  565ae4:	e1500003 	cmp	r0, r3
  565ae8:	0afff9b7 	beq	5641cc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x60>
  565aec:	e5903018 	ldr	r3, [r0, #24]
  565af0:	e3530004 	cmp	r3, #4
  565af4:	0a00002b 	beq	565ba8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a3c>
  565af8:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565afc:	e2801018 	add	r1, r0, #24
  565b00:	e3a02004 	mov	r2, #4
  565b04:	e1a00008 	mov	r0, r8
  565b08:	ebf47e3a 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  565b0c:	e59d30f8 	ldr	r3, [sp, #248]	@ 0xf8
  565b10:	e1a00008 	mov	r0, r8
  565b14:	e3530000 	cmp	r3, #0
  565b18:	1a00004f 	bne	565c5c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1af0>
  565b1c:	e58d3020 	str	r3, [sp, #32]
  565b20:	ebf413d6 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565b24:	eafff9aa 	b	5641d4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x68>
  565b28:	e3a02006 	mov	r2, #6
  565b2c:	e3a03000 	mov	r3, #0
  565b30:	e5862000 	str	r2, [r6]
  565b34:	e5c63008 	strb	r3, [r6, #8]
  565b38:	eafff9d0 	b	564280 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x114>
  565b3c:	e59dc01c 	ldr	ip, [sp, #28]
  565b40:	e59c3000 	ldr	r3, [ip]
  565b44:	e1a0000c 	mov	r0, ip
  565b48:	e5933000 	ldr	r3, [r3]
  565b4c:	e12fff33 	blx	r3
  565b50:	e3a01004 	mov	r1, #4
  565b54:	ebffd122 	bl	559fe4 <netflix::NfObject::Class::methodName(int) const@@Base>
  565b58:	e1a01000 	mov	r1, r0
  565b5c:	e28d2038 	add	r2, sp, #56	@ 0x38
  565b60:	e1a0000b 	mov	r0, fp
  565b64:	ebf3aff3 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565b68:	e51f2928 	ldr	r2, [pc, #-2344]	@ 565248 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10dc>
  565b6c:	e1a0100b 	mov	r1, fp
  565b70:	e59d001c 	ldr	r0, [sp, #28]
  565b74:	e08f2002 	add	r2, pc, r2
  565b78:	ebffd350 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  565b7c:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565b80:	e1a01004 	mov	r1, r4
  565b84:	e240000c 	sub	r0, r0, #12
  565b88:	ebf3a882 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565b8c:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  565b90:	e3a03000 	mov	r3, #0
  565b94:	e1a01004 	mov	r1, r4
  565b98:	e240000c 	sub	r0, r0, #12
  565b9c:	e5863000 	str	r3, [r6]
  565ba0:	ebf3a87c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565ba4:	eafff9b5 	b	564280 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x114>
  565ba8:	e5905020 	ldr	r5, [r0, #32]
  565bac:	e58d5020 	str	r5, [sp, #32]
  565bb0:	eafff987 	b	5641d4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x68>
  565bb4:	e5973000 	ldr	r3, [r7]
  565bb8:	e1a00007 	mov	r0, r7
  565bbc:	e1a01004 	mov	r1, r4
  565bc0:	e5933010 	ldr	r3, [r3, #16]
  565bc4:	e12fff33 	blx	r3
  565bc8:	eafff9f3 	b	56439c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x230>
  565bcc:	e51f1988 	ldr	r1, [pc, #-2440]	@ 56524c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10e0>
  565bd0:	e1a0000b 	mov	r0, fp
  565bd4:	e08f1001 	add	r1, pc, r1
  565bd8:	ebf3ad6f 	bl	25119c <std::string::compare(char const*) const@plt>
  565bdc:	e2902000 	adds	r2, r0, #0
  565be0:	13e02000 	mvnne	r2, #0
  565be4:	eafffe33 	b	5654b8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x134c>
  565be8:	e51f19a0 	ldr	r1, [pc, #-2464]	@ 565250 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x10e4>
  565bec:	e1a0200b 	mov	r2, fp
  565bf0:	e1a00004 	mov	r0, r4
  565bf4:	e08f1001 	add	r1, pc, r1
  565bf8:	ebf3afce 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  565bfc:	e5993000 	ldr	r3, [r9]
  565c00:	e3530003 	cmp	r3, #3
  565c04:	0a000056 	beq	565d64 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1bf8>
  565c08:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565c0c:	e1a01005 	mov	r1, r5
  565c10:	eeb78b00 	vmov.f64	d8, #112	@ 0x3f800000  1.0
  565c14:	e240000c 	sub	r0, r0, #12
  565c18:	ebf3a85e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565c1c:	e59a3000 	ldr	r3, [sl]
  565c20:	e1a00004 	mov	r0, r4
  565c24:	e5931110 	ldr	r1, [r3, #272]	@ 0x110
  565c28:	e5913000 	ldr	r3, [r1]
  565c2c:	e5933008 	ldr	r3, [r3, #8]
  565c30:	e12fff33 	blx	r3
  565c34:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565c38:	eeb00b48 	vmov.f64	d0, d8
  565c3c:	e5903000 	ldr	r3, [r0]
  565c40:	e59330ac 	ldr	r3, [r3, #172]	@ 0xac
  565c44:	e12fff33 	blx	r3
  565c48:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  565c4c:	e3500000 	cmp	r0, #0
  565c50:	0afff986 	beq	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565c54:	ebf41346 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565c58:	eafff984 	b	564270 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x104>
  565c5c:	e59d5100 	ldr	r5, [sp, #256]	@ 0x100
  565c60:	ebf41386 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565c64:	eaffffd0 	b	565bac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a40>
  565c68:	e5990008 	ldr	r0, [r9, #8]
  565c6c:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  565c70:	e2800008 	add	r0, r0, #8
  565c74:	ebf47c88 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565c78:	e5993008 	ldr	r3, [r9, #8]
  565c7c:	e283300c 	add	r3, r3, #12
  565c80:	e1500003 	cmp	r0, r3
  565c84:	0afffe32 	beq	565554 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x13e8>
  565c88:	e28d9090 	add	r9, sp, #144	@ 0x90
  565c8c:	e3a02000 	mov	r2, #0
  565c90:	e2801018 	add	r1, r0, #24
  565c94:	e58d2000 	str	r2, [sp]
  565c98:	e1a00009 	mov	r0, r9
  565c9c:	e1a03005 	mov	r3, r5
  565ca0:	ebf4aaee 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  565ca4:	eafffe2e 	b	565564 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x13f8>
  565ca8:	e5990008 	ldr	r0, [r9, #8]
  565cac:	e1a01005 	mov	r1, r5
  565cb0:	e2800008 	add	r0, r0, #8
  565cb4:	ebf47c78 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565cb8:	e5993008 	ldr	r3, [r9, #8]
  565cbc:	e283300c 	add	r3, r3, #12
  565cc0:	e1500003 	cmp	r0, r3
  565cc4:	0afffde8 	beq	56546c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1300>
  565cc8:	e3a02000 	mov	r2, #0
  565ccc:	e2801018 	add	r1, r0, #24
  565cd0:	e58d2000 	str	r2, [sp]
  565cd4:	e1a0000b 	mov	r0, fp
  565cd8:	e1a03004 	mov	r3, r4
  565cdc:	ebf4aadf 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  565ce0:	eafffde4 	b	565478 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x130c>
  565ce4:	e5990008 	ldr	r0, [r9, #8]
  565ce8:	e1a0100a 	mov	r1, sl
  565cec:	e2800008 	add	r0, r0, #8
  565cf0:	ebf47c69 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565cf4:	e5993008 	ldr	r3, [r9, #8]
  565cf8:	e283300c 	add	r3, r3, #12
  565cfc:	e1500003 	cmp	r0, r3
  565d00:	0afffd62 	beq	565290 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1124>
  565d04:	e28d2094 	add	r2, sp, #148	@ 0x94
  565d08:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  565d0c:	e2801018 	add	r1, r0, #24
  565d10:	e3a02000 	mov	r2, #0
  565d14:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  565d18:	e1a03005 	mov	r3, r5
  565d1c:	e58d2000 	str	r2, [sp]
  565d20:	ebf4aace 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  565d24:	eafffd5e 	b	5652a4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1138>
  565d28:	e5990008 	ldr	r0, [r9, #8]
  565d2c:	e1a01005 	mov	r1, r5
  565d30:	e2800008 	add	r0, r0, #8
  565d34:	ebf47c58 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565d38:	e5993008 	ldr	r3, [r9, #8]
  565d3c:	e283300c 	add	r3, r3, #12
  565d40:	e1500003 	cmp	r0, r3
  565d44:	0afffa19 	beq	5645b0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x444>
  565d48:	e3a02000 	mov	r2, #0
  565d4c:	e2801018 	add	r1, r0, #24
  565d50:	e58d2000 	str	r2, [sp]
  565d54:	e28d003c 	add	r0, sp, #60	@ 0x3c
  565d58:	e1a03004 	mov	r3, r4
  565d5c:	ebf4aabf 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  565d60:	eafffa15 	b	5645bc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x450>
  565d64:	e5990008 	ldr	r0, [r9, #8]
  565d68:	e1a01004 	mov	r1, r4
  565d6c:	e2800008 	add	r0, r0, #8
  565d70:	ebf47c49 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  565d74:	e5993008 	ldr	r3, [r9, #8]
  565d78:	e283300c 	add	r3, r3, #12
  565d7c:	e1500003 	cmp	r0, r3
  565d80:	0affffa0 	beq	565c08 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1a9c>
  565d84:	e5903018 	ldr	r3, [r0, #24]
  565d88:	e3530005 	cmp	r3, #5
  565d8c:	1a00000c 	bne	565dc4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1c58>
  565d90:	ed908b08 	vldr	d8, [r0, #32]
  565d94:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565d98:	e1a01005 	mov	r1, r5
  565d9c:	e240000c 	sub	r0, r0, #12
  565da0:	ebf3a7fc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565da4:	eeb58bc0 	vcmpe.f64	d8, #0.0
  565da8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  565dac:	4a000015 	bmi	565e08 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1c9c>
  565db0:	eeb77b00 	vmov.f64	d7, #112	@ 0x3f800000  1.0
  565db4:	eeb48b47 	vcmp.f64	d8, d7
  565db8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  565dbc:	ceb08b47 	vmovgt.f64	d8, d7
  565dc0:	eaffff95 	b	565c1c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ab0>
  565dc4:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  565dc8:	e2801018 	add	r1, r0, #24
  565dcc:	e3a02005 	mov	r2, #5
  565dd0:	e1a00008 	mov	r0, r8
  565dd4:	ebf47d87 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  565dd8:	e59d30f8 	ldr	r3, [sp, #248]	@ 0xf8
  565ddc:	e1a00008 	mov	r0, r8
  565de0:	e3530000 	cmp	r3, #0
  565de4:	1a000009 	bne	565e10 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ca4>
  565de8:	ebf41324 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565dec:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565df0:	e1a01005 	mov	r1, r5
  565df4:	eeb78b00 	vmov.f64	d8, #112	@ 0x3f800000  1.0
  565df8:	e240000c 	sub	r0, r0, #12
  565dfc:	ebf3a7e5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565e00:	eaffff85 	b	565c1c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ab0>
  565e04:	ebf3a3a2 	bl	24ec94 <__stack_chk_fail@plt>
  565e08:	ed9f8bfa 	vldr	d8, [pc, #1000]	@ 5661f8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x208c>
  565e0c:	eaffff82 	b	565c1c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ab0>
  565e10:	ed9d8b40 	vldr	d8, [sp, #256]	@ 0x100
  565e14:	ebf41319 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565e18:	eaffffdd 	b	565d94 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1c28>
  565e1c:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  565e20:	e1a0100b 	mov	r1, fp
  565e24:	e240000c 	sub	r0, r0, #12
  565e28:	ebf3a7da 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565e2c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  565e30:	e28d10a0 	add	r1, sp, #160	@ 0xa0
  565e34:	e240000c 	sub	r0, r0, #12
  565e38:	ebf3a7d6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565e3c:	ebf3a87a 	bl	25002c <__cxa_end_cleanup@plt>
  565e40:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  565e44:	e3500000 	cmp	r0, #0
  565e48:	0a000000 	beq	565e50 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ce4>
  565e4c:	ebf412c8 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565e50:	ebf3a875 	bl	25002c <__cxa_end_cleanup@plt>
  565e54:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  565e58:	e3500000 	cmp	r0, #0
  565e5c:	0a000000 	beq	565e64 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1cf8>
  565e60:	ebf412c3 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  565e64:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  565e68:	e1a01005 	mov	r1, r5
  565e6c:	e240000c 	sub	r0, r0, #12
  565e70:	ebf3a7c8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565e74:	e1a00008 	mov	r0, r8
  565e78:	ebf41300 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565e7c:	ebf3a86a 	bl	25002c <__cxa_end_cleanup@plt>
  565e80:	eafffff7 	b	565e64 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1cf8>
  565e84:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  565e88:	e1a01004 	mov	r1, r4
  565e8c:	e240000c 	sub	r0, r0, #12
  565e90:	ebf3a7c0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565e94:	eafffff6 	b	565e74 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d08>
  565e98:	eafffff5 	b	565e74 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d08>
  565e9c:	e59d007c 	ldr	r0, [sp, #124]	@ 0x7c
  565ea0:	e1a01005 	mov	r1, r5
  565ea4:	e240000c 	sub	r0, r0, #12
  565ea8:	ebf3a7ba 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565eac:	e1a00008 	mov	r0, r8
  565eb0:	ebf412f2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565eb4:	e1a00004 	mov	r0, r4
  565eb8:	eb001d01 	bl	56d2c4 <std::vector<netflix::device::NetworkInterface, std::allocator<netflix::device::NetworkInterface> >::~vector()@@Base>
  565ebc:	e59d0018 	ldr	r0, [sp, #24]
  565ec0:	ebf412ee 	bl	26aa80 <netflix::Variant::clear()@@Base>
  565ec4:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  565ec8:	e28d1030 	add	r1, sp, #48	@ 0x30
  565ecc:	e240000c 	sub	r0, r0, #12
  565ed0:	ebf3a7b0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565ed4:	ebf3a854 	bl	25002c <__cxa_end_cleanup@plt>
  565ed8:	e59d0078 	ldr	r0, [sp, #120]	@ 0x78
  565edc:	e1a01005 	mov	r1, r5
  565ee0:	e240000c 	sub	r0, r0, #12
  565ee4:	ebf3a7ab 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565ee8:	eaffffef 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565eec:	e59d0074 	ldr	r0, [sp, #116]	@ 0x74
  565ef0:	e1a01005 	mov	r1, r5
  565ef4:	e240000c 	sub	r0, r0, #12
  565ef8:	ebf3a7a6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565efc:	eaffffea 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f00:	e59d0070 	ldr	r0, [sp, #112]	@ 0x70
  565f04:	e1a01005 	mov	r1, r5
  565f08:	e240000c 	sub	r0, r0, #12
  565f0c:	ebf3a7a1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f10:	eaffffe5 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f14:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  565f18:	e1a01005 	mov	r1, r5
  565f1c:	e240000c 	sub	r0, r0, #12
  565f20:	ebf3a79c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f24:	eaffffe0 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f28:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  565f2c:	e1a01005 	mov	r1, r5
  565f30:	e240000c 	sub	r0, r0, #12
  565f34:	ebf3a797 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f38:	eaffffdb 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f3c:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  565f40:	e1a01005 	mov	r1, r5
  565f44:	e240000c 	sub	r0, r0, #12
  565f48:	ebf3a792 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f4c:	eaffffd6 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f50:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  565f54:	e1a01005 	mov	r1, r5
  565f58:	e240000c 	sub	r0, r0, #12
  565f5c:	ebf3a78d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f60:	eaffffd1 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f64:	e59d005c 	ldr	r0, [sp, #92]	@ 0x5c
  565f68:	e1a01005 	mov	r1, r5
  565f6c:	e240000c 	sub	r0, r0, #12
  565f70:	ebf3a788 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f74:	eaffffcc 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f78:	e59d0058 	ldr	r0, [sp, #88]	@ 0x58
  565f7c:	e1a01005 	mov	r1, r5
  565f80:	e240000c 	sub	r0, r0, #12
  565f84:	ebf3a783 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f88:	eaffffc7 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565f8c:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  565f90:	e1a01005 	mov	r1, r5
  565f94:	e240000c 	sub	r0, r0, #12
  565f98:	ebf3a77e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565f9c:	eaffffc2 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565fa0:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  565fa4:	e1a01005 	mov	r1, r5
  565fa8:	e240000c 	sub	r0, r0, #12
  565fac:	ebf3a779 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565fb0:	eaffffbd 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565fb4:	e59d004c 	ldr	r0, [sp, #76]	@ 0x4c
  565fb8:	e1a01005 	mov	r1, r5
  565fbc:	e240000c 	sub	r0, r0, #12
  565fc0:	ebf3a774 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565fc4:	eaffffb8 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565fc8:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  565fcc:	e1a01005 	mov	r1, r5
  565fd0:	e240000c 	sub	r0, r0, #12
  565fd4:	ebf3a76f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565fd8:	eaffffb3 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565fdc:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  565fe0:	e1a01005 	mov	r1, r5
  565fe4:	e240000c 	sub	r0, r0, #12
  565fe8:	ebf3a76a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  565fec:	eaffffae 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565ff0:	eaffffad 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  565ff4:	ebf3a3b9 	bl	24eee0 <__cxa_begin_catch@plt>
  565ff8:	e5983000 	ldr	r3, [r8]
  565ffc:	e1a00008 	mov	r0, r8
  566000:	e5933004 	ldr	r3, [r3, #4]
  566004:	e12fff33 	blx	r3
  566008:	ebf3a7bf 	bl	24ff0c <__cxa_rethrow@plt>
  56600c:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  566010:	e1a01005 	mov	r1, r5
  566014:	e240000c 	sub	r0, r0, #12
  566018:	ebf3a75e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56601c:	ebf3a802 	bl	25002c <__cxa_end_cleanup@plt>
  566020:	ebf3ae7c 	bl	251a18 <__cxa_end_catch@plt>
  566024:	ebf3a800 	bl	25002c <__cxa_end_cleanup@plt>
  566028:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  56602c:	e1a01005 	mov	r1, r5
  566030:	e240000c 	sub	r0, r0, #12
  566034:	ebf3a757 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566038:	eaffff9d 	b	565eb4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d48>
  56603c:	eaffff9c 	b	565eb4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d48>
  566040:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  566044:	e1a0100a 	mov	r1, sl
  566048:	e240000c 	sub	r0, r0, #12
  56604c:	ebf3a751 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566050:	ebf3a7f5 	bl	25002c <__cxa_end_cleanup@plt>
  566054:	eaffff79 	b	565e40 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1cd4>
  566058:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  56605c:	e1a01004 	mov	r1, r4
  566060:	e240000c 	sub	r0, r0, #12
  566064:	ebf3a74b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566068:	e1a00008 	mov	r0, r8
  56606c:	ebf41283 	bl	26aa80 <netflix::Variant::clear()@@Base>
  566070:	ebf3a7ed 	bl	25002c <__cxa_end_cleanup@plt>
  566074:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  566078:	e1a01005 	mov	r1, r5
  56607c:	e240000c 	sub	r0, r0, #12
  566080:	ebf3a744 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566084:	eafffff7 	b	566068 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1efc>
  566088:	eafffff6 	b	566068 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1efc>
  56608c:	e1a00008 	mov	r0, r8
  566090:	ebff4aca 	bl	538bc0 <netflix::Response::~Response()@@Base>
  566094:	e1a0000a 	mov	r0, sl
  566098:	ebf41278 	bl	26aa80 <netflix::Variant::clear()@@Base>
  56609c:	eaffffda 	b	56600c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ea0>
  5660a0:	e28d0f42 	add	r0, sp, #264	@ 0x108
  5660a4:	ebf41275 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5660a8:	e59d0100 	ldr	r0, [sp, #256]	@ 0x100
  5660ac:	e3500000 	cmp	r0, #0
  5660b0:	0a000000 	beq	5660b8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f4c>
  5660b4:	ebf4122e 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5660b8:	e59d0018 	ldr	r0, [sp, #24]
  5660bc:	ebf4126f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5660c0:	eafffff3 	b	566094 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f28>
  5660c4:	e28da0c8 	add	sl, sp, #200	@ 0xc8
  5660c8:	eafffff6 	b	5660a8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f3c>
  5660cc:	e28da0c8 	add	sl, sp, #200	@ 0xc8
  5660d0:	eaffffef 	b	566094 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f28>
  5660d4:	eaffff59 	b	565e40 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1cd4>
  5660d8:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  5660dc:	e28d1034 	add	r1, sp, #52	@ 0x34
  5660e0:	e240000c 	sub	r0, r0, #12
  5660e4:	ebf3a72b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5660e8:	eaffff75 	b	565ec4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d58>
  5660ec:	eaffff74 	b	565ec4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d58>
  5660f0:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5660f4:	e3500000 	cmp	r0, #0
  5660f8:	0a000000 	beq	566100 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f94>
  5660fc:	ebf4121c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  566100:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  566104:	e1a01005 	mov	r1, r5
  566108:	e240000c 	sub	r0, r0, #12
  56610c:	ebf3a721 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566110:	e59d0018 	ldr	r0, [sp, #24]
  566114:	ebf41259 	bl	26aa80 <netflix::Variant::clear()@@Base>
  566118:	ebf3a7c3 	bl	25002c <__cxa_end_cleanup@plt>
  56611c:	eafffff7 	b	566100 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1f94>
  566120:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  566124:	e1a01004 	mov	r1, r4
  566128:	e240000c 	sub	r0, r0, #12
  56612c:	ebf3a719 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566130:	eafffff6 	b	566110 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fa4>
  566134:	eafffff5 	b	566110 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fa4>
  566138:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  56613c:	e1a01004 	mov	r1, r4
  566140:	e240000c 	sub	r0, r0, #12
  566144:	ebf3a713 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566148:	e1a00008 	mov	r0, r8
  56614c:	ebf4124b 	bl	26aa80 <netflix::Variant::clear()@@Base>
  566150:	e59d0018 	ldr	r0, [sp, #24]
  566154:	ebf41249 	bl	26aa80 <netflix::Variant::clear()@@Base>
  566158:	ebf3a7b3 	bl	25002c <__cxa_end_cleanup@plt>
  56615c:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  566160:	e1a01005 	mov	r1, r5
  566164:	e240000c 	sub	r0, r0, #12
  566168:	ebf3a70a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56616c:	eafffff5 	b	566148 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fdc>
  566170:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  566174:	e1a01004 	mov	r1, r4
  566178:	e240000c 	sub	r0, r0, #12
  56617c:	ebf3a705 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566180:	eafffff0 	b	566148 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fdc>
  566184:	eaffffef 	b	566148 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fdc>
  566188:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  56618c:	e1a01004 	mov	r1, r4
  566190:	e240000c 	sub	r0, r0, #12
  566194:	ebf3a6ff 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566198:	eaffffec 	b	566150 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fe4>
  56619c:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  5661a0:	e1a01004 	mov	r1, r4
  5661a4:	e240000c 	sub	r0, r0, #12
  5661a8:	ebf3a6fa 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5661ac:	eaffffe7 	b	566150 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fe4>
  5661b0:	eaffffe6 	b	566150 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fe4>
  5661b4:	eaffff21 	b	565e40 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1cd4>
  5661b8:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  5661bc:	e1a01004 	mov	r1, r4
  5661c0:	e240000c 	sub	r0, r0, #12
  5661c4:	ebf3a6f3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5661c8:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  5661cc:	e1a01005 	mov	r1, r5
  5661d0:	e240000c 	sub	r0, r0, #12
  5661d4:	ebf3a6ef 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5661d8:	e59d0018 	ldr	r0, [sp, #24]
  5661dc:	ebf41227 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5661e0:	ebf3a791 	bl	25002c <__cxa_end_cleanup@plt>
  5661e4:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  5661e8:	e1a01004 	mov	r1, r4
  5661ec:	e240000c 	sub	r0, r0, #12
  5661f0:	ebf3a6e8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5661f4:	eafffff3 	b	5661c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x205c>
	...
  566200:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  566204:	e3500000 	cmp	r0, #0
  566208:	0a000000 	beq	566210 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x20a4>
  56620c:	ebf411d8 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  566210:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  566214:	e1a01005 	mov	r1, r5
  566218:	e240000c 	sub	r0, r0, #12
  56621c:	ebf3a6dd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566220:	eaffffe8 	b	5661c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x205c>
  566224:	eafffff9 	b	566210 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x20a4>
  566228:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  56622c:	e1a01005 	mov	r1, r5
  566230:	e240000c 	sub	r0, r0, #12
  566234:	ebf3a6d7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566238:	eaffff1b 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  56623c:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  566240:	e1a01005 	mov	r1, r5
  566244:	e240000c 	sub	r0, r0, #12
  566248:	ebf3a6d2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56624c:	eaffff16 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  566250:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  566254:	e1a01005 	mov	r1, r5
  566258:	e240000c 	sub	r0, r0, #12
  56625c:	ebf3a6cd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566260:	eaffff11 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  566264:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  566268:	e1a01005 	mov	r1, r5
  56626c:	e240000c 	sub	r0, r0, #12
  566270:	ebf3a6c8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566274:	eaffff0c 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  566278:	e59d008c 	ldr	r0, [sp, #140]	@ 0x8c
  56627c:	e1a01005 	mov	r1, r5
  566280:	e240000c 	sub	r0, r0, #12
  566284:	ebf3a6c3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566288:	eaffff07 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  56628c:	e59d0088 	ldr	r0, [sp, #136]	@ 0x88
  566290:	e1a01005 	mov	r1, r5
  566294:	e240000c 	sub	r0, r0, #12
  566298:	ebf3a6be 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56629c:	eaffff02 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  5662a0:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  5662a4:	e1a01005 	mov	r1, r5
  5662a8:	e240000c 	sub	r0, r0, #12
  5662ac:	ebf3a6b9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5662b0:	eafffefd 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  5662b4:	e59d0080 	ldr	r0, [sp, #128]	@ 0x80
  5662b8:	e1a01005 	mov	r1, r5
  5662bc:	e240000c 	sub	r0, r0, #12
  5662c0:	ebf3a6b4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5662c4:	eafffef8 	b	565eac <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d40>
  5662c8:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  5662cc:	e28d10a0 	add	r1, sp, #160	@ 0xa0
  5662d0:	e240000c 	sub	r0, r0, #12
  5662d4:	ebf3a6af 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5662d8:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  5662dc:	e28d109c 	add	r1, sp, #156	@ 0x9c
  5662e0:	e240000c 	sub	r0, r0, #12
  5662e4:	ebf3a6ab 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5662e8:	eafffed8 	b	565e50 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ce4>
  5662ec:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  5662f0:	e58d3018 	str	r3, [sp, #24]
  5662f4:	e59d0018 	ldr	r0, [sp, #24]
  5662f8:	ebf411e0 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5662fc:	ebf3a74a 	bl	25002c <__cxa_end_cleanup@plt>
  566300:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  566304:	e1a01004 	mov	r1, r4
  566308:	e240000c 	sub	r0, r0, #12
  56630c:	ebf3a6a1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566310:	e1a00008 	mov	r0, r8
  566314:	ebf411d9 	bl	26aa80 <netflix::Variant::clear()@@Base>
  566318:	ebf3a743 	bl	25002c <__cxa_end_cleanup@plt>
  56631c:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  566320:	e3500000 	cmp	r0, #0
  566324:	0a000000 	beq	56632c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x21c0>
  566328:	ebf41191 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  56632c:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  566330:	e1a01005 	mov	r1, r5
  566334:	e240000c 	sub	r0, r0, #12
  566338:	ebf3a696 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56633c:	eafffff3 	b	566310 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x21a4>
  566340:	eafffff9 	b	56632c <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x21c0>
  566344:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  566348:	e1a01004 	mov	r1, r4
  56634c:	e240000c 	sub	r0, r0, #12
  566350:	ebf3a690 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566354:	eaffffed 	b	566310 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x21a4>
  566358:	eaffffec 	b	566310 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x21a4>
  56635c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  566360:	e1a01004 	mov	r1, r4
  566364:	e240000c 	sub	r0, r0, #12
  566368:	ebf3a68a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56636c:	eafffec0 	b	565e74 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d08>
  566370:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  566374:	e58dc018 	str	ip, [sp, #24]
  566378:	eaffff96 	b	5661d8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x206c>
  56637c:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  566380:	e3500000 	cmp	r0, #0
  566384:	0affff2d 	beq	566040 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ed4>
  566388:	ebf41179 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  56638c:	eaffff2b 	b	566040 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1ed4>
  566390:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  566394:	e1a01004 	mov	r1, r4
  566398:	e240000c 	sub	r0, r0, #12
  56639c:	ebf3a67d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5663a0:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  5663a4:	e1a01005 	mov	r1, r5
  5663a8:	e240000c 	sub	r0, r0, #12
  5663ac:	ebf3a679 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5663b0:	eaffffcf 	b	5662f4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2188>
  5663b4:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  5663b8:	e3500000 	cmp	r0, #0
  5663bc:	0a000000 	beq	5663c4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2258>
  5663c0:	ebf4116b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5663c4:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  5663c8:	e1a01005 	mov	r1, r5
  5663cc:	e240000c 	sub	r0, r0, #12
  5663d0:	ebf3a670 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5663d4:	eafffff1 	b	5663a0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2234>
  5663d8:	eafffff9 	b	5663c4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2258>
  5663dc:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  5663e0:	e1a01004 	mov	r1, r4
  5663e4:	e240000c 	sub	r0, r0, #12
  5663e8:	ebf3a66a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5663ec:	eaffffeb 	b	5663a0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2234>
  5663f0:	eaffffea 	b	5663a0 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2234>
  5663f4:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  5663f8:	e28d1090 	add	r1, sp, #144	@ 0x90
  5663fc:	e28d20e0 	add	r2, sp, #224	@ 0xe0
  566400:	e58d2018 	str	r2, [sp, #24]
  566404:	e240000c 	sub	r0, r0, #12
  566408:	ebf3a662 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56640c:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  566410:	e1a01004 	mov	r1, r4
  566414:	e240000c 	sub	r0, r0, #12
  566418:	ebf3a65e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56641c:	eaffffb4 	b	5662f4 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x2188>
  566420:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  566424:	e28d10a8 	add	r1, sp, #168	@ 0xa8
  566428:	e240000c 	sub	r0, r0, #12
  56642c:	ebf3a659 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566430:	ebf3a6fd 	bl	25002c <__cxa_end_cleanup@plt>
  566434:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  566438:	e28d108c 	add	r1, sp, #140	@ 0x8c
  56643c:	e28dc0e0 	add	ip, sp, #224	@ 0xe0
  566440:	e58dc018 	str	ip, [sp, #24]
  566444:	e240000c 	sub	r0, r0, #12
  566448:	ebf3a652 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56644c:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  566450:	e1a01004 	mov	r1, r4
  566454:	e240000c 	sub	r0, r0, #12
  566458:	ebf3a64e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  56645c:	eaffff5d 	b	5661d8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x206c>
  566460:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  566464:	e1a01004 	mov	r1, r4
  566468:	e240000c 	sub	r0, r0, #12
  56646c:	ebf3a649 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566470:	eaffff54 	b	5661c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x205c>
  566474:	eaffff53 	b	5661c8 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x205c>
  566478:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  56647c:	e1a01004 	mov	r1, r4
  566480:	e240000c 	sub	r0, r0, #12
  566484:	ebf3a643 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  566488:	eaffff20 	b	566110 <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1fa4>
  56648c:	e59d00ac 	ldr	r0, [sp, #172]	@ 0xac
  566490:	e3500000 	cmp	r0, #0
  566494:	0afffe88 	beq	565ebc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d50>
  566498:	ebf41135 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  56649c:	eafffe86 	b	565ebc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d50>
  5664a0:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  5664a4:	e1a01004 	mov	r1, r4
  5664a8:	e240000c 	sub	r0, r0, #12
  5664ac:	ebf3a639 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5664b0:	eafffe81 	b	565ebc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d50>
  5664b4:	eafffe80 	b	565ebc <netflix::DeviceBridge::invoke(int, netflix::Variant const&)@@Base+0x1d50>
