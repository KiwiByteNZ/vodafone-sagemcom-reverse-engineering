
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

003ad900 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x120>:
  3ad900:	0affffd0 	beq	3ad848 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x68>
  3ad904:	e59f30bc 	ldr	r3, [pc, #188]	@ 3ad9c8 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x1e8>
  3ad908:	e1a00004 	mov	r0, r4
  3ad90c:	e7954003 	ldr	r4, [r5, r3]
  3ad910:	e584b000 	str	fp, [r4]
  3ad914:	ebfa9162 	bl	251ea4 <__cxa_guard_release@plt>
  3ad918:	e59f30b4 	ldr	r3, [pc, #180]	@ 3ad9d4 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x1f4>
  3ad91c:	e1a00004 	mov	r0, r4
  3ad920:	e59f20b0 	ldr	r2, [pc, #176]	@ 3ad9d8 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x1f8>
  3ad924:	e7951003 	ldr	r1, [r5, r3]
  3ad928:	e08f2002 	add	r2, pc, r2
  3ad92c:	ebfa87f9 	bl	24f918 <__aeabi_atexit@plt>
  3ad930:	e1a01004 	mov	r1, r4
  3ad934:	eaffffc5 	b	3ad850 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x70>
  3ad938:	e59f309c 	ldr	r3, [pc, #156]	@ 3ad9dc <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x1fc>
  3ad93c:	e1a01004 	mov	r1, r4
  3ad940:	e7953003 	ldr	r3, [r5, r3]
  3ad944:	e5930000 	ldr	r0, [r3]
  3ad948:	ebfafccb 	bl	26cc7c <netflix::gibbon::GibbonApplication::addSocketizerConditions(netflix::Variant const&)@@Base>
  3ad94c:	e3a03000 	mov	r3, #0
  3ad950:	e5863000 	str	r3, [r6]
  3ad954:	eaffffdd 	b	3ad8d0 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0xf0>
  3ad958:	e5940008 	ldr	r0, [r4, #8]
  3ad95c:	e1a01007 	mov	r1, r7
  3ad960:	e2800008 	add	r0, r0, #8
  3ad964:	ebfb5d4c 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3ad968:	e5943008 	ldr	r3, [r4, #8]
  3ad96c:	e283300c 	add	r3, r3, #12
  3ad970:	e1500003 	cmp	r0, r3
  3ad974:	12801018 	addne	r1, r0, #24
  3ad978:	1affffb4 	bne	3ad850 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x70>
  3ad97c:	eaffffac 	b	3ad834 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x54>
  3ad980:	ebfa84c3 	bl	24ec94 <__stack_chk_fail@plt>
  3ad984:	e59d000c 	ldr	r0, [sp, #12]
  3ad988:	e1a0100b 	mov	r1, fp
  3ad98c:	e240000c 	sub	r0, r0, #12
  3ad990:	ebfa8900 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ad994:	e1a00004 	mov	r0, r4
  3ad998:	ebfaf438 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3ad99c:	ebfa89a2 	bl	25002c <__cxa_end_cleanup@plt>
  3ad9a0:	eafffffb 	b	3ad994 <netflix::gibbon::GibbonBridge::addSocketizerConditions(netflix::Variant const&)@@Base+0x1b4>
  3ad9a4:	e59d000c 	ldr	r0, [sp, #12]
  3ad9a8:	e28d1008 	add	r1, sp, #8
  3ad9ac:	e240000c 	sub	r0, r0, #12
  3ad9b0:	ebfa88f8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ad9b4:	ebfa899c 	bl	25002c <__cxa_end_cleanup@plt>
  3ad9b8:	00679908 	rsbeq	r9, r7, r8, lsl #18
  3ad9bc:	00003440 	andeq	r3, r0, r0, asr #8
  3ad9c0:	005a2d58 	subseq	r2, sl, r8, asr sp
  3ad9c4:	000032ec 	andeq	r3, r0, ip, ror #5
  3ad9c8:	00002384 	andeq	r2, r0, r4, lsl #7
  3ad9cc:	005a245c 	subseq	r2, sl, ip, asr r4
  3ad9d0:	005a2cc8 	subseq	r2, sl, r8, asr #25
  3ad9d4:	00003740 	andeq	r3, r0, r0, asr #14
  3ad9d8:	0067d6d4 	ldrdeq	sp, [r7], #-100	@ 0xffffff9c	@ <UNPREDICTABLE>
  3ad9dc:	000022a0 	andeq	r2, r0, r0, lsr #5

003ad9e0 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base>:
  3ad9e0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
  3ad9e4:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
  3ad9e8:	e59f4160 	ldr	r4, [pc, #352]	@ 3adb50 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x170>
  3ad9ec:	e28d9014 	add	r9, sp, #20
  3ad9f0:	e59f315c 	ldr	r3, [pc, #348]	@ 3adb54 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x174>
  3ad9f4:	e1a08002 	mov	r8, r2
  3ad9f8:	e08f4004 	add	r4, pc, r4
  3ad9fc:	e59f1154 	ldr	r1, [pc, #340]	@ 3adb58 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x178>
  3ada00:	e28d2008 	add	r2, sp, #8
  3ada04:	e1a05000 	mov	r5, r0
  3ada08:	e7947003 	ldr	r7, [r4, r3]
  3ada0c:	e1a00009 	mov	r0, r9
  3ada10:	e08f1001 	add	r1, pc, r1
  3ada14:	e5973000 	ldr	r3, [r7]
  3ada18:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  3ada1c:	ebfa9045 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3ada20:	e59f2134 	ldr	r2, [pc, #308]	@ 3adb5c <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x17c>
  3ada24:	e5983000 	ldr	r3, [r8]
  3ada28:	e7946002 	ldr	r6, [r4, r2]
  3ada2c:	e3530003 	cmp	r3, #3
  3ada30:	e286300c 	add	r3, r6, #12
  3ada34:	e58d3020 	str	r3, [sp, #32]
  3ada38:	0a000024 	beq	3adad0 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0xf0>
  3ada3c:	e28d9018 	add	r9, sp, #24
  3ada40:	e28d4020 	add	r4, sp, #32
  3ada44:	e1a00009 	mov	r0, r9
  3ada48:	e1a01004 	mov	r1, r4
  3ada4c:	ebfa8b8c 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3ada50:	e59d0020 	ldr	r0, [sp, #32]
  3ada54:	e28d801c 	add	r8, sp, #28
  3ada58:	e240000c 	sub	r0, r0, #12
  3ada5c:	e1a01008 	mov	r1, r8
  3ada60:	ebfa88cc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ada64:	e1a00008 	mov	r0, r8
  3ada68:	e1a01009 	mov	r1, r9
  3ada6c:	eb01d968 	bl	424014 <netflix::gibbon::TextLayout::directionForText(std::string const&)@@Base>
  3ada70:	e59d301c 	ldr	r3, [sp, #28]
  3ada74:	e3a02001 	mov	r2, #1
  3ada78:	e1a00006 	mov	r0, r6
  3ada7c:	e5852000 	str	r2, [r5]
  3ada80:	e1a01004 	mov	r1, r4
  3ada84:	e286600c 	add	r6, r6, #12
  3ada88:	e5853008 	str	r3, [r5, #8]
  3ada8c:	e58d601c 	str	r6, [sp, #28]
  3ada90:	ebfa88c0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ada94:	e59d0018 	ldr	r0, [sp, #24]
  3ada98:	e1a01004 	mov	r1, r4
  3ada9c:	e240000c 	sub	r0, r0, #12
  3adaa0:	ebfa88bc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adaa4:	e59d0014 	ldr	r0, [sp, #20]
  3adaa8:	e1a01004 	mov	r1, r4
  3adaac:	e240000c 	sub	r0, r0, #12
  3adab0:	ebfa88b8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adab4:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  3adab8:	e5973000 	ldr	r3, [r7]
  3adabc:	e1a00005 	mov	r0, r5
  3adac0:	e1520003 	cmp	r2, r3
  3adac4:	1a000012 	bne	3adb14 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x134>
  3adac8:	e28dd02c 	add	sp, sp, #44	@ 0x2c
  3adacc:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  3adad0:	e5980008 	ldr	r0, [r8, #8]
  3adad4:	e1a01009 	mov	r1, r9
  3adad8:	e2800008 	add	r0, r0, #8
  3adadc:	ebfb5cee 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3adae0:	e5983008 	ldr	r3, [r8, #8]
  3adae4:	e283300c 	add	r3, r3, #12
  3adae8:	e1500003 	cmp	r0, r3
  3adaec:	0affffd2 	beq	3ada3c <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x5c>
  3adaf0:	e28d9018 	add	r9, sp, #24
  3adaf4:	e28d4020 	add	r4, sp, #32
  3adaf8:	e3a02000 	mov	r2, #0
  3adafc:	e2801018 	add	r1, r0, #24
  3adb00:	e1a03004 	mov	r3, r4
  3adb04:	e1a00009 	mov	r0, r9
  3adb08:	e58d2000 	str	r2, [sp]
  3adb0c:	ebfb8b53 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3adb10:	eaffffce 	b	3ada50 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x70>
  3adb14:	ebfa845e 	bl	24ec94 <__stack_chk_fail@plt>
  3adb18:	e59d0018 	ldr	r0, [sp, #24]
  3adb1c:	e1a01004 	mov	r1, r4
  3adb20:	e240000c 	sub	r0, r0, #12
  3adb24:	ebfa889b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adb28:	e59d0014 	ldr	r0, [sp, #20]
  3adb2c:	e28d100c 	add	r1, sp, #12
  3adb30:	e240000c 	sub	r0, r0, #12
  3adb34:	ebfa8897 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adb38:	ebfa893b 	bl	25002c <__cxa_end_cleanup@plt>
  3adb3c:	e59d0020 	ldr	r0, [sp, #32]
  3adb40:	e28d1010 	add	r1, sp, #16
  3adb44:	e240000c 	sub	r0, r0, #12
  3adb48:	ebfa8892 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adb4c:	eafffff5 	b	3adb28 <netflix::gibbon::GibbonBridge::directionForText(netflix::Variant const&)@@Base+0x148>
  3adb50:	00679708 	rsbeq	r9, r7, r8, lsl #14
  3adb54:	00003440 	andeq	r3, r0, r0, asr #8
  3adb58:	005972b8 	ldrheq	r7, [r9], #-40	@ 0xffffffd8
  3adb5c:	00002278 	andeq	r2, r0, r8, ror r2

003adb60 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base>:
  3adb60:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  3adb64:	e24dd04c 	sub	sp, sp, #76	@ 0x4c
  3adb68:	e59f6314 	ldr	r6, [pc, #788]	@ 3ade84 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x324>
  3adb6c:	e28d4020 	add	r4, sp, #32
  3adb70:	e59f3310 	ldr	r3, [pc, #784]	@ 3ade88 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x328>
  3adb74:	e1a08001 	mov	r8, r1
  3adb78:	e08f6006 	add	r6, pc, r6
  3adb7c:	e59f1308 	ldr	r1, [pc, #776]	@ 3ade8c <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x32c>
  3adb80:	e1a05002 	mov	r5, r2
  3adb84:	e1a07000 	mov	r7, r0
  3adb88:	e7963003 	ldr	r3, [r6, r3]
  3adb8c:	e28d2010 	add	r2, sp, #16
  3adb90:	e1a00004 	mov	r0, r4
  3adb94:	e08f1001 	add	r1, pc, r1
  3adb98:	e28d901c 	add	r9, sp, #28
  3adb9c:	e58d3008 	str	r3, [sp, #8]
  3adba0:	e5933000 	ldr	r3, [r3]
  3adba4:	e58d3044 	str	r3, [sp, #68]	@ 0x44
  3adba8:	ebfa8fe2 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3adbac:	e59f22dc 	ldr	r2, [pc, #732]	@ 3ade90 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x330>
  3adbb0:	e5953000 	ldr	r3, [r5]
  3adbb4:	e7962002 	ldr	r2, [r6, r2]
  3adbb8:	e3530003 	cmp	r3, #3
  3adbbc:	e282300c 	add	r3, r2, #12
  3adbc0:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  3adbc4:	e58d200c 	str	r2, [sp, #12]
  3adbc8:	0a00007b 	beq	3addbc <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x25c>
  3adbcc:	e28d5024 	add	r5, sp, #36	@ 0x24
  3adbd0:	e1a00009 	mov	r0, r9
  3adbd4:	e3a03000 	mov	r3, #0
  3adbd8:	e5cd301b 	strb	r3, [sp, #27]
  3adbdc:	e1a01005 	mov	r1, r5
  3adbe0:	ebfa8b27 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3adbe4:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  3adbe8:	e28db018 	add	fp, sp, #24
  3adbec:	e240000c 	sub	r0, r0, #12
  3adbf0:	e1a0100b 	mov	r1, fp
  3adbf4:	ebfa8867 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adbf8:	e59d0020 	ldr	r0, [sp, #32]
  3adbfc:	e1a01005 	mov	r1, r5
  3adc00:	e240000c 	sub	r0, r0, #12
  3adc04:	ebfa8863 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adc08:	e5dd301b 	ldrb	r3, [sp, #27]
  3adc0c:	e3530000 	cmp	r3, #0
  3adc10:	0a000055 	beq	3add6c <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x20c>
  3adc14:	e59f3278 	ldr	r3, [pc, #632]	@ 3ade94 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x334>
  3adc18:	e7963003 	ldr	r3, [r6, r3]
  3adc1c:	e5933000 	ldr	r3, [r3]
  3adc20:	e59380d4 	ldr	r8, [r3, #212]	@ 0xd4
  3adc24:	e593a0d0 	ldr	sl, [r3, #208]	@ 0xd0
  3adc28:	e3580000 	cmp	r8, #0
  3adc2c:	0a00000b 	beq	3adc60 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x100>
  3adc30:	e59f2260 	ldr	r2, [pc, #608]	@ 3ade98 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x338>
  3adc34:	e2883004 	add	r3, r8, #4
  3adc38:	e7962002 	ldr	r2, [r6, r2]
  3adc3c:	e3520000 	cmp	r2, #0
  3adc40:	0a00008a 	beq	3ade70 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x310>
  3adc44:	f57ff05f 	dmb	sy
  3adc48:	e1931f9f 	ldrex	r1, [r3]
  3adc4c:	e2811001 	add	r1, r1, #1
  3adc50:	e1832f91 	strex	r2, r1, [r3]
  3adc54:	e3520000 	cmp	r2, #0
  3adc58:	1afffffa 	bne	3adc48 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0xe8>
  3adc5c:	f57ff05f 	dmb	sy
  3adc60:	e35a0000 	cmp	sl, #0
  3adc64:	0a00002e 	beq	3add24 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x1c4>
  3adc68:	e59d300c 	ldr	r3, [sp, #12]
  3adc6c:	e1a01009 	mov	r1, r9
  3adc70:	e1a00005 	mov	r0, r5
  3adc74:	e283200c 	add	r2, r3, #12
  3adc78:	e3a03000 	mov	r3, #0
  3adc7c:	e58d202c 	str	r2, [sp, #44]	@ 0x2c
  3adc80:	e58d2030 	str	r2, [sp, #48]	@ 0x30
  3adc84:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  3adc88:	e58d3028 	str	r3, [sp, #40]	@ 0x28
  3adc8c:	e58d3034 	str	r3, [sp, #52]	@ 0x34
  3adc90:	e58d3038 	str	r3, [sp, #56]	@ 0x38
  3adc94:	e58d303c 	str	r3, [sp, #60]	@ 0x3c
  3adc98:	e58d3040 	str	r3, [sp, #64]	@ 0x40
  3adc9c:	eb13e15c 	bl	8a6214 <netflix::Console::Command::Arguments::parse(std::string const&)@@Base>
  3adca0:	e59ac000 	ldr	ip, [sl]
  3adca4:	e1a0000a 	mov	r0, sl
  3adca8:	e1a01005 	mov	r1, r5
  3adcac:	e3a02003 	mov	r2, #3
  3adcb0:	e3a03000 	mov	r3, #0
  3adcb4:	e59cc010 	ldr	ip, [ip, #16]
  3adcb8:	e12fff3c 	blx	ip
  3adcbc:	e59d6034 	ldr	r6, [sp, #52]	@ 0x34
  3adcc0:	e59d9038 	ldr	r9, [sp, #56]	@ 0x38
  3adcc4:	e1560009 	cmp	r6, r9
  3adcc8:	0a00004c 	beq	3ade00 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x2a0>
  3adccc:	e4960004 	ldr	r0, [r6], #4
  3adcd0:	e1a01004 	mov	r1, r4
  3adcd4:	e240000c 	sub	r0, r0, #12
  3adcd8:	ebfa882e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adcdc:	e1590006 	cmp	r9, r6
  3adce0:	1afffff9 	bne	3adccc <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x16c>
  3adce4:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  3adce8:	e3500000 	cmp	r0, #0
  3adcec:	0a000000 	beq	3adcf4 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x194>
  3adcf0:	ebfa8966 	bl	250290 <operator delete(void*)@plt>
  3adcf4:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  3adcf8:	e1a01004 	mov	r1, r4
  3adcfc:	e240000c 	sub	r0, r0, #12
  3add00:	ebfa8824 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3add04:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  3add08:	e1a01004 	mov	r1, r4
  3add0c:	e240000c 	sub	r0, r0, #12
  3add10:	ebfa8820 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3add14:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  3add18:	e3500000 	cmp	r0, #0
  3add1c:	0a000000 	beq	3add24 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x1c4>
  3add20:	ebfaf313 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3add24:	e3580000 	cmp	r8, #0
  3add28:	0a000001 	beq	3add34 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x1d4>
  3add2c:	e1a00008 	mov	r0, r8
  3add30:	ebfaf30f 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3add34:	e3a03000 	mov	r3, #0
  3add38:	e5873000 	str	r3, [r7]
  3add3c:	e59d001c 	ldr	r0, [sp, #28]
  3add40:	e1a01005 	mov	r1, r5
  3add44:	e240000c 	sub	r0, r0, #12
  3add48:	ebfa8812 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3add4c:	e59dc008 	ldr	ip, [sp, #8]
  3add50:	e59d2044 	ldr	r2, [sp, #68]	@ 0x44
  3add54:	e1a00007 	mov	r0, r7
  3add58:	e59c3000 	ldr	r3, [ip]
  3add5c:	e1520003 	cmp	r2, r3
  3add60:	1a000028 	bne	3ade08 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x2a8>
  3add64:	e28dd04c 	add	sp, sp, #76	@ 0x4c
  3add68:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  3add6c:	e59f1128 	ldr	r1, [pc, #296]	@ 3ade9c <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x33c>
  3add70:	e1a00004 	mov	r0, r4
  3add74:	e1a0200b 	mov	r2, fp
  3add78:	e08f1001 	add	r1, pc, r1
  3add7c:	e2811018 	add	r1, r1, #24
  3add80:	ebfa8f6c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3add84:	e59f2114 	ldr	r2, [pc, #276]	@ 3adea0 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x340>
  3add88:	e1a00008 	mov	r0, r8
  3add8c:	e1a01004 	mov	r1, r4
  3add90:	e08f2002 	add	r2, pc, r2
  3add94:	eb06b2c9 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3add98:	e59d0020 	ldr	r0, [sp, #32]
  3add9c:	e1a01005 	mov	r1, r5
  3adda0:	e240000c 	sub	r0, r0, #12
  3adda4:	ebfa87fb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3adda8:	e3a02006 	mov	r2, #6
  3addac:	e3a03000 	mov	r3, #0
  3addb0:	e5872000 	str	r2, [r7]
  3addb4:	e5c73008 	strb	r3, [r7, #8]
  3addb8:	eaffffdf 	b	3add3c <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x1dc>
  3addbc:	e5950008 	ldr	r0, [r5, #8]
  3addc0:	e1a01004 	mov	r1, r4
  3addc4:	e2800008 	add	r0, r0, #8
  3addc8:	ebfb5c33 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3addcc:	e5953008 	ldr	r3, [r5, #8]
  3addd0:	e283300c 	add	r3, r3, #12
  3addd4:	e1500003 	cmp	r0, r3
  3addd8:	0affff7b 	beq	3adbcc <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x6c>
  3adddc:	e28d5024 	add	r5, sp, #36	@ 0x24
  3adde0:	e3a02000 	mov	r2, #0
  3adde4:	e2801018 	add	r1, r0, #24
  3adde8:	e58d2000 	str	r2, [sp]
  3addec:	e1a00009 	mov	r0, r9
  3addf0:	e1a03005 	mov	r3, r5
  3addf4:	e28d201b 	add	r2, sp, #27
  3addf8:	ebfb8a98 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3addfc:	eaffff78 	b	3adbe4 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x84>
  3ade00:	e1a00006 	mov	r0, r6
  3ade04:	eaffffb7 	b	3adce8 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x188>
  3ade08:	ebfa83a1 	bl	24ec94 <__stack_chk_fail@plt>
  3ade0c:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  3ade10:	e28d1018 	add	r1, sp, #24
  3ade14:	e240000c 	sub	r0, r0, #12
  3ade18:	ebfa87de 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ade1c:	e59d0020 	ldr	r0, [sp, #32]
  3ade20:	e28d1014 	add	r1, sp, #20
  3ade24:	e240000c 	sub	r0, r0, #12
  3ade28:	ebfa87da 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ade2c:	ebfa887e 	bl	25002c <__cxa_end_cleanup@plt>
  3ade30:	e1a00005 	mov	r0, r5
  3ade34:	ebfbef25 	bl	2a9ad0 <netflix::Console::Command::Arguments::~Arguments()@@Base>
  3ade38:	e3580000 	cmp	r8, #0
  3ade3c:	0a000001 	beq	3ade48 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x2e8>
  3ade40:	e1a00008 	mov	r0, r8
  3ade44:	ebfaf2ca 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3ade48:	e59d001c 	ldr	r0, [sp, #28]
  3ade4c:	e1a0100b 	mov	r1, fp
  3ade50:	e240000c 	sub	r0, r0, #12
  3ade54:	ebfa87cf 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ade58:	ebfa8873 	bl	25002c <__cxa_end_cleanup@plt>
  3ade5c:	e59d0020 	ldr	r0, [sp, #32]
  3ade60:	e1a01005 	mov	r1, r5
  3ade64:	e240000c 	sub	r0, r0, #12
  3ade68:	ebfa87ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3ade6c:	eafffff5 	b	3ade48 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x2e8>
  3ade70:	e5983004 	ldr	r3, [r8, #4]
  3ade74:	e2833001 	add	r3, r3, #1
  3ade78:	e5883004 	str	r3, [r8, #4]
  3ade7c:	eaffff77 	b	3adc60 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x100>
  3ade80:	eafffff0 	b	3ade48 <netflix::gibbon::GibbonBridge::runConsole(netflix::Variant const&)@@Base+0x2e8>
  3ade84:	00679588 	rsbeq	r9, r7, r8, lsl #11
  3ade88:	00003440 	andeq	r3, r0, r0, asr #8
  3ade8c:	005a29e8 	subseq	r2, sl, r8, ror #19
  3ade90:	00002278 	andeq	r2, r0, r8, ror r2
  3ade94:	000037dc 	ldrdeq	r3, [r0], -ip
  3ade98:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  3ade9c:	005a1f78 	subseq	r1, sl, r8, ror pc
  3adea0:	005a27ec 	subseq	r2, sl, ip, ror #15
