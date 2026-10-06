
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

003b0304 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base>:
  3b0304:	e59f3294 	ldr	r3, [pc, #660]	@ 3b05a0 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x29c>
  3b0308:	e59fc294 	ldr	ip, [pc, #660]	@ 3b05a4 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2a0>
  3b030c:	e08f3003 	add	r3, pc, r3
  3b0310:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  3b0314:	e24dd03c 	sub	sp, sp, #60	@ 0x3c
  3b0318:	e793500c 	ldr	r5, [r3, ip]
  3b031c:	e28d6014 	add	r6, sp, #20
  3b0320:	e28d800c 	add	r8, sp, #12
  3b0324:	e1a0a001 	mov	sl, r1
  3b0328:	e59f1278 	ldr	r1, [pc, #632]	@ 3b05a8 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2a4>
  3b032c:	e1a09002 	mov	r9, r2
  3b0330:	e5953000 	ldr	r3, [r5]
  3b0334:	e1a04000 	mov	r4, r0
  3b0338:	e1a02008 	mov	r2, r8
  3b033c:	e1a00006 	mov	r0, r6
  3b0340:	e08f1001 	add	r1, pc, r1
  3b0344:	e58d3034 	str	r3, [sp, #52]	@ 0x34
  3b0348:	ebfa85fa 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b034c:	e5993000 	ldr	r3, [r9]
  3b0350:	e3530003 	cmp	r3, #3
  3b0354:	0a00001e 	beq	3b03d4 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0xd0>
  3b0358:	e59d0014 	ldr	r0, [sp, #20]
  3b035c:	e28d7010 	add	r7, sp, #16
  3b0360:	e240000c 	sub	r0, r0, #12
  3b0364:	e1a01007 	mov	r1, r7
  3b0368:	ebfa7e8a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b036c:	e59f1238 	ldr	r1, [pc, #568]	@ 3b05ac <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2a8>
  3b0370:	e1a02008 	mov	r2, r8
  3b0374:	e1a00006 	mov	r0, r6
  3b0378:	e08f1001 	add	r1, pc, r1
  3b037c:	e281108c 	add	r1, r1, #140	@ 0x8c
  3b0380:	ebfa85ec 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b0384:	e59f2224 	ldr	r2, [pc, #548]	@ 3b05b0 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2ac>
  3b0388:	e1a0000a 	mov	r0, sl
  3b038c:	e1a01006 	mov	r1, r6
  3b0390:	e08f2002 	add	r2, pc, r2
  3b0394:	eb06a949 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3b0398:	e59d0014 	ldr	r0, [sp, #20]
  3b039c:	e1a01007 	mov	r1, r7
  3b03a0:	e240000c 	sub	r0, r0, #12
  3b03a4:	ebfa7e7b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b03a8:	e3a02006 	mov	r2, #6
  3b03ac:	e3a03000 	mov	r3, #0
  3b03b0:	e5842000 	str	r2, [r4]
  3b03b4:	e5c43008 	strb	r3, [r4, #8]
  3b03b8:	e59d2034 	ldr	r2, [sp, #52]	@ 0x34
  3b03bc:	e1a00004 	mov	r0, r4
  3b03c0:	e5953000 	ldr	r3, [r5]
  3b03c4:	e1520003 	cmp	r2, r3
  3b03c8:	1a000067 	bne	3b056c <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x268>
  3b03cc:	e28dd03c 	add	sp, sp, #60	@ 0x3c
  3b03d0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  3b03d4:	e5990008 	ldr	r0, [r9, #8]
  3b03d8:	e1a01006 	mov	r1, r6
  3b03dc:	e2800008 	add	r0, r0, #8
  3b03e0:	ebfb52ad 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b03e4:	e5993008 	ldr	r3, [r9, #8]
  3b03e8:	e283300c 	add	r3, r3, #12
  3b03ec:	e1500003 	cmp	r0, r3
  3b03f0:	0affffd8 	beq	3b0358 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x54>
  3b03f4:	e5903018 	ldr	r3, [r0, #24]
  3b03f8:	e3530004 	cmp	r3, #4
  3b03fc:	0a00000f 	beq	3b0440 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x13c>
  3b0400:	e28db018 	add	fp, sp, #24
  3b0404:	e2801018 	add	r1, r0, #24
  3b0408:	e3a02004 	mov	r2, #4
  3b040c:	e1a0000b 	mov	r0, fp
  3b0410:	ebfb53f8 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  3b0414:	e59d3018 	ldr	r3, [sp, #24]
  3b0418:	e1a0000b 	mov	r0, fp
  3b041c:	e3530000 	cmp	r3, #0
  3b0420:	1a00004a 	bne	3b0550 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x24c>
  3b0424:	ebfae995 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b0428:	e28d7010 	add	r7, sp, #16
  3b042c:	e59d0014 	ldr	r0, [sp, #20]
  3b0430:	e1a01007 	mov	r1, r7
  3b0434:	e240000c 	sub	r0, r0, #12
  3b0438:	ebfa7e56 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b043c:	eaffffca 	b	3b036c <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x68>
  3b0440:	e5900020 	ldr	r0, [r0, #32]
  3b0444:	e58d0004 	str	r0, [sp, #4]
  3b0448:	e59d0014 	ldr	r0, [sp, #20]
  3b044c:	e28d7010 	add	r7, sp, #16
  3b0450:	e240000c 	sub	r0, r0, #12
  3b0454:	e1a01007 	mov	r1, r7
  3b0458:	ebfa7e4e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b045c:	e59f1150 	ldr	r1, [pc, #336]	@ 3b05b4 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2b0>
  3b0460:	e1a00006 	mov	r0, r6
  3b0464:	e1a02008 	mov	r2, r8
  3b0468:	e08f1001 	add	r1, pc, r1
  3b046c:	ebfa85b1 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b0470:	e5993000 	ldr	r3, [r9]
  3b0474:	e3530003 	cmp	r3, #3
  3b0478:	0a00000f 	beq	3b04bc <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x1b8>
  3b047c:	e59d0014 	ldr	r0, [sp, #20]
  3b0480:	e1a01007 	mov	r1, r7
  3b0484:	e240000c 	sub	r0, r0, #12
  3b0488:	ebfa7e42 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b048c:	e59f1124 	ldr	r1, [pc, #292]	@ 3b05b8 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2b4>
  3b0490:	e1a02008 	mov	r2, r8
  3b0494:	e1a00006 	mov	r0, r6
  3b0498:	e08f1001 	add	r1, pc, r1
  3b049c:	e281108c 	add	r1, r1, #140	@ 0x8c
  3b04a0:	ebfa85a4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b04a4:	e59f2110 	ldr	r2, [pc, #272]	@ 3b05bc <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x2b8>
  3b04a8:	e1a0000a 	mov	r0, sl
  3b04ac:	e1a01006 	mov	r1, r6
  3b04b0:	e08f2002 	add	r2, pc, r2
  3b04b4:	eb06a901 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3b04b8:	eaffffb6 	b	3b0398 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x94>
  3b04bc:	e5990008 	ldr	r0, [r9, #8]
  3b04c0:	e1a01006 	mov	r1, r6
  3b04c4:	e2800008 	add	r0, r0, #8
  3b04c8:	ebfb5273 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b04cc:	e5993008 	ldr	r3, [r9, #8]
  3b04d0:	e283300c 	add	r3, r3, #12
  3b04d4:	e1500003 	cmp	r0, r3
  3b04d8:	0affffe7 	beq	3b047c <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x178>
  3b04dc:	e5903018 	ldr	r3, [r0, #24]
  3b04e0:	e3530004 	cmp	r3, #4
  3b04e4:	1a00000a 	bne	3b0514 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x210>
  3b04e8:	e5906020 	ldr	r6, [r0, #32]
  3b04ec:	e59d0014 	ldr	r0, [sp, #20]
  3b04f0:	e1a01007 	mov	r1, r7
  3b04f4:	e240000c 	sub	r0, r0, #12
  3b04f8:	ebfa7e26 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b04fc:	e59d0004 	ldr	r0, [sp, #4]
  3b0500:	e1a01006 	mov	r1, r6
  3b0504:	eb01582d 	bl	4065c0 <netflix::gibbon::Font::setGlyphCacheSize(int, int)@@Base>
  3b0508:	e3a03000 	mov	r3, #0
  3b050c:	e5843000 	str	r3, [r4]
  3b0510:	eaffffa8 	b	3b03b8 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0xb4>
  3b0514:	e28db018 	add	fp, sp, #24
  3b0518:	e2801018 	add	r1, r0, #24
  3b051c:	e3a02004 	mov	r2, #4
  3b0520:	e1a0000b 	mov	r0, fp
  3b0524:	ebfb53b3 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  3b0528:	e59d3018 	ldr	r3, [sp, #24]
  3b052c:	e1a0000b 	mov	r0, fp
  3b0530:	e3530000 	cmp	r3, #0
  3b0534:	1a000009 	bne	3b0560 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x25c>
  3b0538:	ebfae950 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b053c:	e59d0014 	ldr	r0, [sp, #20]
  3b0540:	e1a01007 	mov	r1, r7
  3b0544:	e240000c 	sub	r0, r0, #12
  3b0548:	ebfa7e12 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b054c:	eaffffce 	b	3b048c <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x188>
  3b0550:	e59d3020 	ldr	r3, [sp, #32]
  3b0554:	e58d3004 	str	r3, [sp, #4]
  3b0558:	ebfae948 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b055c:	eaffffb9 	b	3b0448 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x144>
  3b0560:	e59d6020 	ldr	r6, [sp, #32]
  3b0564:	ebfae945 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b0568:	eaffffdf 	b	3b04ec <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x1e8>
  3b056c:	ebfa79c8 	bl	24ec94 <__stack_chk_fail@plt>
  3b0570:	e59d0014 	ldr	r0, [sp, #20]
  3b0574:	e1a01007 	mov	r1, r7
  3b0578:	e240000c 	sub	r0, r0, #12
  3b057c:	ebfa7e05 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0580:	ebfa7ea9 	bl	25002c <__cxa_end_cleanup@plt>
  3b0584:	eafffff9 	b	3b0570 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x26c>
  3b0588:	eafffff8 	b	3b0570 <netflix::gibbon::GibbonBridge::setGlyphAtlasSize(netflix::Variant const&)@@Base+0x26c>
  3b058c:	e59d0014 	ldr	r0, [sp, #20]
  3b0590:	e28d1010 	add	r1, sp, #16
  3b0594:	e240000c 	sub	r0, r0, #12
  3b0598:	ebfa7dfe 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b059c:	ebfa7ea2 	bl	25002c <__cxa_end_cleanup@plt>
  3b05a0:	00676df4 	strdeq	r6, [r7], #-212	@ 0xffffff2c	@ <UNPREDICTABLE>
  3b05a4:	00003440 	andeq	r3, r0, r0, asr #8
  3b05a8:	00591150 	subseq	r1, r9, r0, asr r1
  3b05ac:	0059f978 	subseq	pc, r9, r8, ror r9	@ <UNPREDICTABLE>
  3b05b0:	00591100 	subseq	r1, r9, r0, lsl #2
  3b05b4:	00591cb4 	ldrheq	r1, [r9], #-196	@ 0xffffff3c
  3b05b8:	0059f858 	subseq	pc, r9, r8, asr r8	@ <UNPREDICTABLE>
  3b05bc:	00591c6c 	subseq	r1, r9, ip, ror #24

003b05c0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base>:
  3b05c0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  3b05c4:	e24dd0ac 	sub	sp, sp, #172	@ 0xac
  3b05c8:	e59f56d4 	ldr	r5, [pc, #1748]	@ 3b0ca4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6e4>
  3b05cc:	e28d6040 	add	r6, sp, #64	@ 0x40
  3b05d0:	e59f36d0 	ldr	r3, [pc, #1744]	@ 3b0ca8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6e8>
  3b05d4:	e28d902c 	add	r9, sp, #44	@ 0x2c
  3b05d8:	e08f5005 	add	r5, pc, r5
  3b05dc:	e58d1018 	str	r1, [sp, #24]
  3b05e0:	e59f16c4 	ldr	r1, [pc, #1732]	@ 3b0cac <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6ec>
  3b05e4:	e1a07002 	mov	r7, r2
  3b05e8:	e7953003 	ldr	r3, [r5, r3]
  3b05ec:	e1a02009 	mov	r2, r9
  3b05f0:	e1a08000 	mov	r8, r0
  3b05f4:	e08f1001 	add	r1, pc, r1
  3b05f8:	e1a00006 	mov	r0, r6
  3b05fc:	e58d3010 	str	r3, [sp, #16]
  3b0600:	e5933000 	ldr	r3, [r3]
  3b0604:	e58d30a4 	str	r3, [sp, #164]	@ 0xa4
  3b0608:	ebfa854a 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b060c:	e59f369c 	ldr	r3, [pc, #1692]	@ 3b0cb0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6f0>
  3b0610:	e5972000 	ldr	r2, [r7]
  3b0614:	e7953003 	ldr	r3, [r5, r3]
  3b0618:	e3520003 	cmp	r2, #3
  3b061c:	e283300c 	add	r3, r3, #12
  3b0620:	e58d3064 	str	r3, [sp, #100]	@ 0x64
  3b0624:	0a00003c 	beq	3b071c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x15c>
  3b0628:	e28d2024 	add	r2, sp, #36	@ 0x24
  3b062c:	e28d4064 	add	r4, sp, #100	@ 0x64
  3b0630:	e3a03000 	mov	r3, #0
  3b0634:	e58d2014 	str	r2, [sp, #20]
  3b0638:	e1a00002 	mov	r0, r2
  3b063c:	e1a01004 	mov	r1, r4
  3b0640:	e5cd3023 	strb	r3, [sp, #35]	@ 0x23
  3b0644:	ebfa808e 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3b0648:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  3b064c:	e28da034 	add	sl, sp, #52	@ 0x34
  3b0650:	e28db028 	add	fp, sp, #40	@ 0x28
  3b0654:	e240000c 	sub	r0, r0, #12
  3b0658:	e1a0100a 	mov	r1, sl
  3b065c:	ebfa7dcd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0660:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  3b0664:	e1a01004 	mov	r1, r4
  3b0668:	e240000c 	sub	r0, r0, #12
  3b066c:	ebfa7dc9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0670:	e59f163c 	ldr	r1, [pc, #1596]	@ 3b0cb4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6f4>
  3b0674:	e1a0000b 	mov	r0, fp
  3b0678:	e1a02006 	mov	r2, r6
  3b067c:	e08f1001 	add	r1, pc, r1
  3b0680:	ebfa852c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b0684:	e5973000 	ldr	r3, [r7]
  3b0688:	e3530003 	cmp	r3, #3
  3b068c:	0a000035 	beq	3b0768 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x1a8>
  3b0690:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  3b0694:	e1a01004 	mov	r1, r4
  3b0698:	e240000c 	sub	r0, r0, #12
  3b069c:	ebfa7dbd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b06a0:	e59f1610 	ldr	r1, [pc, #1552]	@ 3b0cb8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6f8>
  3b06a4:	e1a02006 	mov	r2, r6
  3b06a8:	e1a00009 	mov	r0, r9
  3b06ac:	e08f1001 	add	r1, pc, r1
  3b06b0:	e28110a0 	add	r1, r1, #160	@ 0xa0
  3b06b4:	ebfa851f 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b06b8:	e59f25fc 	ldr	r2, [pc, #1532]	@ 3b0cbc <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x6fc>
  3b06bc:	e1a01009 	mov	r1, r9
  3b06c0:	e59d0018 	ldr	r0, [sp, #24]
  3b06c4:	e08f2002 	add	r2, pc, r2
  3b06c8:	eb06a87c 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3b06cc:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  3b06d0:	e1a01004 	mov	r1, r4
  3b06d4:	e240000c 	sub	r0, r0, #12
  3b06d8:	ebfa7dae 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b06dc:	e3a02006 	mov	r2, #6
  3b06e0:	e3a03000 	mov	r3, #0
  3b06e4:	e5882000 	str	r2, [r8]
  3b06e8:	e5c83008 	strb	r3, [r8, #8]
  3b06ec:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  3b06f0:	e1a01004 	mov	r1, r4
  3b06f4:	e240000c 	sub	r0, r0, #12
  3b06f8:	ebfa7da6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b06fc:	e59dc010 	ldr	ip, [sp, #16]
  3b0700:	e59d20a4 	ldr	r2, [sp, #164]	@ 0xa4
  3b0704:	e1a00008 	mov	r0, r8
  3b0708:	e59c3000 	ldr	r3, [ip]
  3b070c:	e1520003 	cmp	r2, r3
  3b0710:	1a00011c 	bne	3b0b88 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5c8>
  3b0714:	e28dd0ac 	add	sp, sp, #172	@ 0xac
  3b0718:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  3b071c:	e5970008 	ldr	r0, [r7, #8]
  3b0720:	e1a01006 	mov	r1, r6
  3b0724:	e2800008 	add	r0, r0, #8
  3b0728:	ebfb51db 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b072c:	e5973008 	ldr	r3, [r7, #8]
  3b0730:	e283300c 	add	r3, r3, #12
  3b0734:	e1500003 	cmp	r0, r3
  3b0738:	0affffba 	beq	3b0628 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x68>
  3b073c:	e28d4064 	add	r4, sp, #100	@ 0x64
  3b0740:	e28d1024 	add	r1, sp, #36	@ 0x24
  3b0744:	e58d1014 	str	r1, [sp, #20]
  3b0748:	e3a02000 	mov	r2, #0
  3b074c:	e2801018 	add	r1, r0, #24
  3b0750:	e58d2000 	str	r2, [sp]
  3b0754:	e59d0014 	ldr	r0, [sp, #20]
  3b0758:	e1a03004 	mov	r3, r4
  3b075c:	e28d2023 	add	r2, sp, #35	@ 0x23
  3b0760:	ebfb803e 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3b0764:	eaffffb7 	b	3b0648 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x88>
  3b0768:	e5970008 	ldr	r0, [r7, #8]
  3b076c:	e1a0100b 	mov	r1, fp
  3b0770:	e2800008 	add	r0, r0, #8
  3b0774:	ebfb51c8 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b0778:	e597b008 	ldr	fp, [r7, #8]
  3b077c:	e1a01004 	mov	r1, r4
  3b0780:	e28bb00c 	add	fp, fp, #12
  3b0784:	e1a03000 	mov	r3, r0
  3b0788:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  3b078c:	e58d3008 	str	r3, [sp, #8]
  3b0790:	e240000c 	sub	r0, r0, #12
  3b0794:	ebfa7d7f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0798:	e59d3008 	ldr	r3, [sp, #8]
  3b079c:	e153000b 	cmp	r3, fp
  3b07a0:	0affffbe 	beq	3b06a0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0xe0>
  3b07a4:	e28d9030 	add	r9, sp, #48	@ 0x30
  3b07a8:	e59f1510 	ldr	r1, [pc, #1296]	@ 3b0cc0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x700>
  3b07ac:	e1a02006 	mov	r2, r6
  3b07b0:	e08f1001 	add	r1, pc, r1
  3b07b4:	e1a00009 	mov	r0, r9
  3b07b8:	ebfa84de 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b07bc:	e5973000 	ldr	r3, [r7]
  3b07c0:	e3530003 	cmp	r3, #3
  3b07c4:	0a00002a 	beq	3b0874 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x2b4>
  3b07c8:	e59f34f4 	ldr	r3, [pc, #1268]	@ 3b0cc4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x704>
  3b07cc:	e7957003 	ldr	r7, [r5, r3]
  3b07d0:	e5973000 	ldr	r3, [r7]
  3b07d4:	e213b001 	ands	fp, r3, #1
  3b07d8:	0a000015 	beq	3b0834 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x274>
  3b07dc:	e59f34e4 	ldr	r3, [pc, #1252]	@ 3b0cc8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x708>
  3b07e0:	e7957003 	ldr	r7, [r5, r3]
  3b07e4:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  3b07e8:	e1a01004 	mov	r1, r4
  3b07ec:	e240000c 	sub	r0, r0, #12
  3b07f0:	ebfa7d68 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b07f4:	e3a03000 	mov	r3, #0
  3b07f8:	e58d3088 	str	r3, [sp, #136]	@ 0x88
  3b07fc:	e5971000 	ldr	r1, [r7]
  3b0800:	e3510007 	cmp	r1, #7
  3b0804:	0a000024 	beq	3b089c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x2dc>
  3b0808:	e3510001 	cmp	r1, #1
  3b080c:	128d5088 	addne	r5, sp, #136	@ 0x88
  3b0810:	0a00005f 	beq	3b0994 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x3d4>
  3b0814:	e3a03000 	mov	r3, #0
  3b0818:	e1a00008 	mov	r0, r8
  3b081c:	e5883000 	str	r3, [r8]
  3b0820:	e1a01005 	mov	r1, r5
  3b0824:	ebfb3ef2 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  3b0828:	e1a00005 	mov	r0, r5
  3b082c:	ebfae893 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b0830:	eaffffad 	b	3b06ec <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x12c>
  3b0834:	e1a00007 	mov	r0, r7
  3b0838:	ebfa7ed6 	bl	250398 <__cxa_guard_acquire@plt>
  3b083c:	e3500000 	cmp	r0, #0
  3b0840:	0affffe5 	beq	3b07dc <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x21c>
  3b0844:	e59f347c 	ldr	r3, [pc, #1148]	@ 3b0cc8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x708>
  3b0848:	e1a00007 	mov	r0, r7
  3b084c:	e7957003 	ldr	r7, [r5, r3]
  3b0850:	e587b000 	str	fp, [r7]
  3b0854:	ebfa8592 	bl	251ea4 <__cxa_guard_release@plt>
  3b0858:	e59f346c 	ldr	r3, [pc, #1132]	@ 3b0ccc <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x70c>
  3b085c:	e1a00007 	mov	r0, r7
  3b0860:	e59f2468 	ldr	r2, [pc, #1128]	@ 3b0cd0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x710>
  3b0864:	e7951003 	ldr	r1, [r5, r3]
  3b0868:	e08f2002 	add	r2, pc, r2
  3b086c:	ebfa7c29 	bl	24f918 <__aeabi_atexit@plt>
  3b0870:	eaffffdb 	b	3b07e4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x224>
  3b0874:	e5970008 	ldr	r0, [r7, #8]
  3b0878:	e1a01009 	mov	r1, r9
  3b087c:	e2800008 	add	r0, r0, #8
  3b0880:	ebfb5185 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b0884:	e5973008 	ldr	r3, [r7, #8]
  3b0888:	e283300c 	add	r3, r3, #12
  3b088c:	e1500003 	cmp	r0, r3
  3b0890:	12807018 	addne	r7, r0, #24
  3b0894:	1affffd2 	bne	3b07e4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x224>
  3b0898:	eaffffca 	b	3b07c8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x208>
  3b089c:	e59f3430 	ldr	r3, [pc, #1072]	@ 3b0cd4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x714>
  3b08a0:	e3a01001 	mov	r1, #1
  3b08a4:	e7953003 	ldr	r3, [r5, r3]
  3b08a8:	e593b000 	ldr	fp, [r3]
  3b08ac:	e28b3e2b 	add	r3, fp, #688	@ 0x2b0
  3b08b0:	e58d301c 	str	r3, [sp, #28]
  3b08b4:	e1a00003 	mov	r0, r3
  3b08b8:	eb153232 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  3b08bc:	e59bc2d8 	ldr	ip, [fp, #728]	@ 0x2d8
  3b08c0:	e59bb2d4 	ldr	fp, [fp, #724]	@ 0x2d4
  3b08c4:	e35c0000 	cmp	ip, #0
  3b08c8:	e58dc018 	str	ip, [sp, #24]
  3b08cc:	0a00000b 	beq	3b0900 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x340>
  3b08d0:	e59f2400 	ldr	r2, [pc, #1024]	@ 3b0cd8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x718>
  3b08d4:	e28c3004 	add	r3, ip, #4
  3b08d8:	e7952002 	ldr	r2, [r5, r2]
  3b08dc:	e3520000 	cmp	r2, #0
  3b08e0:	0a0000d9 	beq	3b0c4c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x68c>
  3b08e4:	f57ff05f 	dmb	sy
  3b08e8:	e1931f9f 	ldrex	r1, [r3]
  3b08ec:	e2811001 	add	r1, r1, #1
  3b08f0:	e1832f91 	strex	r2, r1, [r3]
  3b08f4:	e3520000 	cmp	r2, #0
  3b08f8:	1afffffa 	bne	3b08e8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x328>
  3b08fc:	f57ff05f 	dmb	sy
  3b0900:	e3a01001 	mov	r1, #1
  3b0904:	e59d001c 	ldr	r0, [sp, #28]
  3b0908:	eb153253 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  3b090c:	e3a0c000 	mov	ip, #0
  3b0910:	e1a01007 	mov	r1, r7
  3b0914:	e58dc000 	str	ip, [sp]
  3b0918:	e1a0200c 	mov	r2, ip
  3b091c:	e1a0000a 	mov	r0, sl
  3b0920:	e1a03004 	mov	r3, r4
  3b0924:	e58dc064 	str	ip, [sp, #100]	@ 0x64
  3b0928:	e58dc068 	str	ip, [sp, #104]	@ 0x68
  3b092c:	e58dc06c 	str	ip, [sp, #108]	@ 0x6c
  3b0930:	ebfb51c5 	bl	28504c <netflix::DataBuffer netflix::Variant::valueImpl<netflix::DataBuffer>(bool*, netflix::DataBuffer const&, std::pair<netflix::DataBuffer, netflix::DataBuffer> const*) const@@Base>
  3b0934:	e1a00006 	mov	r0, r6
  3b0938:	e59d1014 	ldr	r1, [sp, #20]
  3b093c:	eb0cddb3 	bl	6e8010 <netflix::Url::Url(std::string const&)@@Base>
  3b0940:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0944:	e1a0000b 	mov	r0, fp
  3b0948:	e1a02006 	mov	r2, r6
  3b094c:	e1a0100a 	mov	r1, sl
  3b0950:	e58d5000 	str	r5, [sp]
  3b0954:	e3a03000 	mov	r3, #0
  3b0958:	eb006b61 	bl	3cb6e4 <netflix::ScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::Variant*, netflix::Variant*)@@Base>
  3b095c:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b0960:	e1a01009 	mov	r1, r9
  3b0964:	e240000c 	sub	r0, r0, #12
  3b0968:	ebfa7d0a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b096c:	e1a0000a 	mov	r0, sl
  3b0970:	ebffdea7 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b0974:	e1a00004 	mov	r0, r4
  3b0978:	ebffdea5 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b097c:	e59d1018 	ldr	r1, [sp, #24]
  3b0980:	e3510000 	cmp	r1, #0
  3b0984:	0affffa2 	beq	3b0814 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x254>
  3b0988:	e1a00001 	mov	r0, r1
  3b098c:	ebfae7f8 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3b0990:	eaffff9f 	b	3b0814 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x254>
  3b0994:	e59f3338 	ldr	r3, [pc, #824]	@ 3b0cd4 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x714>
  3b0998:	e7953003 	ldr	r3, [r5, r3]
  3b099c:	e5939000 	ldr	r9, [r3]
  3b09a0:	e2892e2b 	add	r2, r9, #688	@ 0x2b0
  3b09a4:	e58d2018 	str	r2, [sp, #24]
  3b09a8:	e1a00002 	mov	r0, r2
  3b09ac:	eb1531f5 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  3b09b0:	e599b2d8 	ldr	fp, [r9, #728]	@ 0x2d8
  3b09b4:	e59992d4 	ldr	r9, [r9, #724]	@ 0x2d4
  3b09b8:	e35b0000 	cmp	fp, #0
  3b09bc:	0a00000b 	beq	3b09f0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x430>
  3b09c0:	e59f2310 	ldr	r2, [pc, #784]	@ 3b0cd8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x718>
  3b09c4:	e28b3004 	add	r3, fp, #4
  3b09c8:	e7952002 	ldr	r2, [r5, r2]
  3b09cc:	e3520000 	cmp	r2, #0
  3b09d0:	0a00006d 	beq	3b0b8c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5cc>
  3b09d4:	f57ff05f 	dmb	sy
  3b09d8:	e193cf9f 	ldrex	r12, [r3]
  3b09dc:	e28cc001 	add	ip, ip, #1
  3b09e0:	e1831f9c 	strex	r1, ip, [r3]
  3b09e4:	e3510000 	cmp	r1, #0
  3b09e8:	1afffffa 	bne	3b09d8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x418>
  3b09ec:	f57ff05f 	dmb	sy
  3b09f0:	e59d0018 	ldr	r0, [sp, #24]
  3b09f4:	e3a01001 	mov	r1, #1
  3b09f8:	eb153217 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  3b09fc:	e5973000 	ldr	r3, [r7]
  3b0a00:	e3530001 	cmp	r3, #1
  3b0a04:	0a000042 	beq	3b0b14 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x554>
  3b0a08:	e3530007 	cmp	r3, #7
  3b0a0c:	1a00004a 	bne	3b0b3c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x57c>
  3b0a10:	e5973008 	ldr	r3, [r7, #8]
  3b0a14:	e3530000 	cmp	r3, #0
  3b0a18:	0a000057 	beq	3b0b7c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5bc>
  3b0a1c:	e5932014 	ldr	r2, [r3, #20]
  3b0a20:	e597300c 	ldr	r3, [r7, #12]
  3b0a24:	e0823003 	add	r3, r2, r3
  3b0a28:	e3530000 	cmp	r3, #0
  3b0a2c:	13a01001 	movne	r1, #1
  3b0a30:	03a01000 	moveq	r1, #0
  3b0a34:	03a02001 	moveq	r2, #1
  3b0a38:	13a02000 	movne	r2, #0
  3b0a3c:	e5975010 	ldr	r5, [r7, #16]
  3b0a40:	e3750001 	cmn	r5, #1
  3b0a44:	13a00000 	movne	r0, #0
  3b0a48:	03a00001 	moveq	r0, #1
  3b0a4c:	e0011000 	and	r1, r1, r0
  3b0a50:	e3510000 	cmp	r1, #0
  3b0a54:	0a000006 	beq	3b0a74 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x4b4>
  3b0a58:	e1a00003 	mov	r0, r3
  3b0a5c:	e58d200c 	str	r2, [sp, #12]
  3b0a60:	e58d3008 	str	r3, [sp, #8]
  3b0a64:	ebfa7e51 	bl	2503b0 <strlen@plt>
  3b0a68:	e59d3008 	ldr	r3, [sp, #8]
  3b0a6c:	e59d200c 	ldr	r2, [sp, #12]
  3b0a70:	e1a05000 	mov	r5, r0
  3b0a74:	e3550000 	cmp	r5, #0
  3b0a78:	11a01002 	movne	r1, r2
  3b0a7c:	03821001 	orreq	r1, r2, #1
  3b0a80:	e3a02000 	mov	r2, #0
  3b0a84:	e1510002 	cmp	r1, r2
  3b0a88:	e58d2040 	str	r2, [sp, #64]	@ 0x40
  3b0a8c:	e58d2044 	str	r2, [sp, #68]	@ 0x44
  3b0a90:	e58d2048 	str	r2, [sp, #72]	@ 0x48
  3b0a94:	1a000009 	bne	3b0ac0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x500>
  3b0a98:	e1a00006 	mov	r0, r6
  3b0a9c:	e58d3008 	str	r3, [sp, #8]
  3b0aa0:	ebfb3c48 	bl	27fbc8 <netflix::DataBuffer::alloc(unsigned int)@@Base>
  3b0aa4:	e59d2040 	ldr	r2, [sp, #64]	@ 0x40
  3b0aa8:	e59d3008 	ldr	r3, [sp, #8]
  3b0aac:	e3a01001 	mov	r1, #1
  3b0ab0:	e5821010 	str	r1, [r2, #16]
  3b0ab4:	e5823014 	str	r3, [r2, #20]
  3b0ab8:	e58d5048 	str	r5, [sp, #72]	@ 0x48
  3b0abc:	e5825004 	str	r5, [r2, #4]
  3b0ac0:	e59d1014 	ldr	r1, [sp, #20]
  3b0ac4:	e1a00004 	mov	r0, r4
  3b0ac8:	eb0cdd50 	bl	6e8010 <netflix::Url::Url(std::string const&)@@Base>
  3b0acc:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0ad0:	e1a00009 	mov	r0, r9
  3b0ad4:	e1a01006 	mov	r1, r6
  3b0ad8:	e58d5000 	str	r5, [sp]
  3b0adc:	e1a02004 	mov	r2, r4
  3b0ae0:	e3a03000 	mov	r3, #0
  3b0ae4:	eb006afe 	bl	3cb6e4 <netflix::ScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::Variant*, netflix::Variant*)@@Base>
  3b0ae8:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  3b0aec:	e1a0100a 	mov	r1, sl
  3b0af0:	e240000c 	sub	r0, r0, #12
  3b0af4:	ebfa7ca7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0af8:	e1a00006 	mov	r0, r6
  3b0afc:	ebffde44 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b0b00:	e35b0000 	cmp	fp, #0
  3b0b04:	0affff42 	beq	3b0814 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x254>
  3b0b08:	e1a0000b 	mov	r0, fp
  3b0b0c:	ebfae798 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3b0b10:	eaffff3f 	b	3b0814 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x254>
  3b0b14:	e5972008 	ldr	r2, [r7, #8]
  3b0b18:	e1a03002 	mov	r3, r2
  3b0b1c:	e2931000 	adds	r1, r3, #0
  3b0b20:	e512500c 	ldr	r5, [r2, #-12]
  3b0b24:	e16f2f13 	clz	r2, r3
  3b0b28:	13a01001 	movne	r1, #1
  3b0b2c:	e3750001 	cmn	r5, #1
  3b0b30:	e1a022a2 	lsr	r2, r2, #5
  3b0b34:	13a01000 	movne	r1, #0
  3b0b38:	eaffffc4 	b	3b0a50 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x490>
  3b0b3c:	e2433001 	sub	r3, r3, #1
  3b0b40:	e3530006 	cmp	r3, #6
  3b0b44:	908ff103 	addls	pc, pc, r3, lsl #2
  3b0b48:	ea000006 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b4c:	ea000016 	b	3b0bac <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5ec>
  3b0b50:	ea000004 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b54:	ea000003 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b58:	ea000002 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b5c:	ea000001 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b60:	ea000000 	b	3b0b68 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5a8>
  3b0b64:	ea00000c 	b	3b0b9c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x5dc>
  3b0b68:	e3a03000 	mov	r3, #0
  3b0b6c:	e58d3040 	str	r3, [sp, #64]	@ 0x40
  3b0b70:	e58d3044 	str	r3, [sp, #68]	@ 0x44
  3b0b74:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  3b0b78:	eaffffd0 	b	3b0ac0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x500>
  3b0b7c:	e1a01003 	mov	r1, r3
  3b0b80:	e3a02001 	mov	r2, #1
  3b0b84:	eaffffac 	b	3b0a3c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x47c>
  3b0b88:	ebfa7841 	bl	24ec94 <__stack_chk_fail@plt>
  3b0b8c:	e59b3004 	ldr	r3, [fp, #4]
  3b0b90:	e2833001 	add	r3, r3, #1
  3b0b94:	e58b3004 	str	r3, [fp, #4]
  3b0b98:	eaffff94 	b	3b09f0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x430>
  3b0b9c:	e3a01000 	mov	r1, #0
  3b0ba0:	e3a02001 	mov	r2, #1
  3b0ba4:	e1a03001 	mov	r3, r1
  3b0ba8:	eaffffa3 	b	3b0a3c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x47c>
  3b0bac:	e5972008 	ldr	r2, [r7, #8]
  3b0bb0:	e3a03000 	mov	r3, #0
  3b0bb4:	eaffffd8 	b	3b0b1c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x55c>
  3b0bb8:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  3b0bbc:	e1a0100a 	mov	r1, sl
  3b0bc0:	e240000c 	sub	r0, r0, #12
  3b0bc4:	ebfa7c73 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0bc8:	e1a00006 	mov	r0, r6
  3b0bcc:	ebffde10 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b0bd0:	e35b0000 	cmp	fp, #0
  3b0bd4:	0a000001 	beq	3b0be0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x620>
  3b0bd8:	e1a0000b 	mov	r0, fp
  3b0bdc:	ebfae764 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3b0be0:	e1a00005 	mov	r0, r5
  3b0be4:	ebfae7a5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b0be8:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  3b0bec:	e28d1020 	add	r1, sp, #32
  3b0bf0:	e240000c 	sub	r0, r0, #12
  3b0bf4:	ebfa7c67 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0bf8:	ebfa7d0b 	bl	25002c <__cxa_end_cleanup@plt>
  3b0bfc:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0c00:	eafffff0 	b	3b0bc8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x608>
  3b0c04:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b0c08:	e1a01009 	mov	r1, r9
  3b0c0c:	e240000c 	sub	r0, r0, #12
  3b0c10:	ebfa7c60 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0c14:	e1a0000a 	mov	r0, sl
  3b0c18:	ebffddfd 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b0c1c:	e1a00004 	mov	r0, r4
  3b0c20:	ebffddfb 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b0c24:	e59d1018 	ldr	r1, [sp, #24]
  3b0c28:	e3510000 	cmp	r1, #0
  3b0c2c:	0affffeb 	beq	3b0be0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x620>
  3b0c30:	e1a00001 	mov	r0, r1
  3b0c34:	ebfae74e 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3b0c38:	eaffffe8 	b	3b0be0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x620>
  3b0c3c:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0c40:	eafffff3 	b	3b0c14 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x654>
  3b0c44:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0c48:	eafffff3 	b	3b0c1c <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x65c>
  3b0c4c:	e59dc018 	ldr	ip, [sp, #24]
  3b0c50:	e59c3004 	ldr	r3, [ip, #4]
  3b0c54:	e2833001 	add	r3, r3, #1
  3b0c58:	e58c3004 	str	r3, [ip, #4]
  3b0c5c:	eaffff27 	b	3b0900 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x340>
  3b0c60:	e28d5088 	add	r5, sp, #136	@ 0x88
  3b0c64:	eaffffdd 	b	3b0be0 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x620>
  3b0c68:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  3b0c6c:	e1a01004 	mov	r1, r4
  3b0c70:	e240000c 	sub	r0, r0, #12
  3b0c74:	ebfa7c47 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0c78:	eaffffda 	b	3b0be8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x628>
  3b0c7c:	eaffffd9 	b	3b0be8 <netflix::gibbon::GibbonBridge::eval(netflix::Variant const&)@@Base+0x628>
  3b0c80:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  3b0c84:	e28d1034 	add	r1, sp, #52	@ 0x34
  3b0c88:	e240000c 	sub	r0, r0, #12
  3b0c8c:	ebfa7c41 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0c90:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  3b0c94:	e28d1030 	add	r1, sp, #48	@ 0x30
  3b0c98:	e240000c 	sub	r0, r0, #12
  3b0c9c:	ebfa7c3d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b0ca0:	ebfa7ce1 	bl	25002c <__cxa_end_cleanup@plt>
  3b0ca4:	00676b28 	rsbeq	r6, r7, r8, lsr #22
  3b0ca8:	00003440 	andeq	r3, r0, r0, asr #8
  3b0cac:	005cde70 	subseq	sp, ip, r0, ror lr
  3b0cb0:	00002278 	andeq	r2, r0, r8, ror r2
  3b0cb4:	00593c1c 	subseq	r3, r9, ip, lsl ip
  3b0cb8:	0059f644 	subseq	pc, r9, r4, asr #12
  3b0cbc:	00593bd4 	ldrsbeq	r3, [r9], #-180	@ 0xffffff4c
  3b0cc0:	00593ae8 	subseq	r3, r9, r8, ror #21
  3b0cc4:	000032ec 	andeq	r3, r0, ip, ror #5
  3b0cc8:	00002384 	andeq	r2, r0, r4, lsl #7
  3b0ccc:	00003740 	andeq	r3, r0, r0, asr #14
  3b0cd0:	0067a794 	mlseq	r7, r4, r7, sl
  3b0cd4:	000022a0 	andeq	r2, r0, r0, lsr #5
  3b0cd8:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
