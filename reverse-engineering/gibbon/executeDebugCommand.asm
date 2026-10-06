
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

002a8200 <DisplayListCommand::createCompletion() const@@Base+0x3c>:
  2a8200:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a8204:	ebfea64b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a8208:	e1a00006 	mov	r0, r6
  2a820c:	e1a01004 	mov	r1, r4
  2a8210:	eb17fb60 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a8214:	e1a00004 	mov	r0, r4
  2a8218:	ebff0a18 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a821c:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a8220:	e5953000 	ldr	r3, [r5]
  2a8224:	e1a00006 	mov	r0, r6
  2a8228:	e1520003 	cmp	r2, r3
  2a822c:	1a000001 	bne	2a8238 <DisplayListCommand::createCompletion() const@@Base+0x74>
  2a8230:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a8234:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8238:	ebfe9a95 	bl	24ec94 <__stack_chk_fail@plt>
  2a823c:	e1a00004 	mov	r0, r4
  2a8240:	ebff0a0e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8244:	ebfe9f78 	bl	25002c <__cxa_end_cleanup@plt>
  2a8248:	0077ef30 	rsbseq	lr, r7, r0, lsr pc
  2a824c:	00003440 	andeq	r3, r0, r0, asr #8
  2a8250:	0069c2a4 	rsbeq	ip, r9, r4, lsr #5

002a8254 <UpdateCommand::createCompletion() const@@Base>:
  2a8254:	e59f307c 	ldr	r3, [pc, #124]	@ 2a82d8 <UpdateCommand::createCompletion() const@@Base+0x84>
  2a8258:	e3a0c001 	mov	ip, #1
  2a825c:	e92d4070 	push	{r4, r5, r6, lr}
  2a8260:	e08f3003 	add	r3, pc, r3
  2a8264:	e59fe070 	ldr	lr, [pc, #112]	@ 2a82dc <UpdateCommand::createCompletion() const@@Base+0x88>
  2a8268:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a826c:	e59f106c 	ldr	r1, [pc, #108]	@ 2a82e0 <UpdateCommand::createCompletion() const@@Base+0x8c>
  2a8270:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a8274:	e1a06000 	mov	r6, r0
  2a8278:	e28d2004 	add	r2, sp, #4
  2a827c:	e793500e 	ldr	r5, [r3, lr]
  2a8280:	e08f1001 	add	r1, pc, r1
  2a8284:	e28d0010 	add	r0, sp, #16
  2a8288:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a828c:	e5953000 	ldr	r3, [r5]
  2a8290:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a8294:	ebfea627 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a8298:	e1a00006 	mov	r0, r6
  2a829c:	e1a01004 	mov	r1, r4
  2a82a0:	eb17fb3c 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a82a4:	e1a00004 	mov	r0, r4
  2a82a8:	ebff09f4 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a82ac:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a82b0:	e5953000 	ldr	r3, [r5]
  2a82b4:	e1a00006 	mov	r0, r6
  2a82b8:	e1520003 	cmp	r2, r3
  2a82bc:	1a000001 	bne	2a82c8 <UpdateCommand::createCompletion() const@@Base+0x74>
  2a82c0:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a82c4:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a82c8:	ebfe9a71 	bl	24ec94 <__stack_chk_fail@plt>
  2a82cc:	e1a00004 	mov	r0, r4
  2a82d0:	ebff09ea 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a82d4:	ebfe9f54 	bl	25002c <__cxa_end_cleanup@plt>
  2a82d8:	0077eea0 	rsbseq	lr, r7, r0, lsr #29
  2a82dc:	00003440 	andeq	r3, r0, r0, asr #8
  2a82e0:	0069c23c 	rsbeq	ip, r9, ip, lsr r2

002a82e4 <ViewsCommand::createCompletion() const@@Base>:
  2a82e4:	e59f307c 	ldr	r3, [pc, #124]	@ 2a8368 <ViewsCommand::createCompletion() const@@Base+0x84>
  2a82e8:	e3a0c001 	mov	ip, #1
  2a82ec:	e92d4070 	push	{r4, r5, r6, lr}
  2a82f0:	e08f3003 	add	r3, pc, r3
  2a82f4:	e59fe070 	ldr	lr, [pc, #112]	@ 2a836c <ViewsCommand::createCompletion() const@@Base+0x88>
  2a82f8:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a82fc:	e59f106c 	ldr	r1, [pc, #108]	@ 2a8370 <ViewsCommand::createCompletion() const@@Base+0x8c>
  2a8300:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a8304:	e1a06000 	mov	r6, r0
  2a8308:	e28d2004 	add	r2, sp, #4
  2a830c:	e793500e 	ldr	r5, [r3, lr]
  2a8310:	e08f1001 	add	r1, pc, r1
  2a8314:	e28d0010 	add	r0, sp, #16
  2a8318:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a831c:	e5953000 	ldr	r3, [r5]
  2a8320:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a8324:	ebfea603 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a8328:	e1a00006 	mov	r0, r6
  2a832c:	e1a01004 	mov	r1, r4
  2a8330:	eb17fb18 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a8334:	e1a00004 	mov	r0, r4
  2a8338:	ebff09d0 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a833c:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a8340:	e5953000 	ldr	r3, [r5]
  2a8344:	e1a00006 	mov	r0, r6
  2a8348:	e1520003 	cmp	r2, r3
  2a834c:	1a000001 	bne	2a8358 <ViewsCommand::createCompletion() const@@Base+0x74>
  2a8350:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a8354:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8358:	ebfe9a4d 	bl	24ec94 <__stack_chk_fail@plt>
  2a835c:	e1a00004 	mov	r0, r4
  2a8360:	ebff09c6 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8364:	ebfe9f30 	bl	25002c <__cxa_end_cleanup@plt>
  2a8368:	0077ee10 	rsbseq	lr, r7, r0, lsl lr
  2a836c:	00003440 	andeq	r3, r0, r0, asr #8
  2a8370:	0069c1b4 	strhteq	ip, [r9], #-20	@ 0xffffffec

002a8374 <SurfaceCommand::createCompletion() const@@Base>:
  2a8374:	e59f307c 	ldr	r3, [pc, #124]	@ 2a83f8 <SurfaceCommand::createCompletion() const@@Base+0x84>
  2a8378:	e3a0c001 	mov	ip, #1
  2a837c:	e92d4070 	push	{r4, r5, r6, lr}
  2a8380:	e08f3003 	add	r3, pc, r3
  2a8384:	e59fe070 	ldr	lr, [pc, #112]	@ 2a83fc <SurfaceCommand::createCompletion() const@@Base+0x88>
  2a8388:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a838c:	e59f106c 	ldr	r1, [pc, #108]	@ 2a8400 <SurfaceCommand::createCompletion() const@@Base+0x8c>
  2a8390:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a8394:	e1a06000 	mov	r6, r0
  2a8398:	e28d2004 	add	r2, sp, #4
  2a839c:	e793500e 	ldr	r5, [r3, lr]
  2a83a0:	e08f1001 	add	r1, pc, r1
  2a83a4:	e28d0010 	add	r0, sp, #16
  2a83a8:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a83ac:	e5953000 	ldr	r3, [r5]
  2a83b0:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a83b4:	ebfea5df 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a83b8:	e1a00006 	mov	r0, r6
  2a83bc:	e1a01004 	mov	r1, r4
  2a83c0:	eb17faf4 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a83c4:	e1a00004 	mov	r0, r4
  2a83c8:	ebff09ac 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a83cc:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a83d0:	e5953000 	ldr	r3, [r5]
  2a83d4:	e1a00006 	mov	r0, r6
  2a83d8:	e1520003 	cmp	r2, r3
  2a83dc:	1a000001 	bne	2a83e8 <SurfaceCommand::createCompletion() const@@Base+0x74>
  2a83e0:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a83e4:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a83e8:	ebfe9a29 	bl	24ec94 <__stack_chk_fail@plt>
  2a83ec:	e1a00004 	mov	r0, r4
  2a83f0:	ebff09a2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a83f4:	ebfe9f0c 	bl	25002c <__cxa_end_cleanup@plt>
  2a83f8:	0077ed80 	rsbseq	lr, r7, r0, lsl #27
  2a83fc:	00003440 	andeq	r3, r0, r0, asr #8
  2a8400:	0069c15c 	rsbeq	ip, r9, ip, asr r1

002a8404 <OverlayCommand::createCompletion() const@@Base>:
  2a8404:	e59f307c 	ldr	r3, [pc, #124]	@ 2a8488 <OverlayCommand::createCompletion() const@@Base+0x84>
  2a8408:	e3a0c001 	mov	ip, #1
  2a840c:	e92d4070 	push	{r4, r5, r6, lr}
  2a8410:	e08f3003 	add	r3, pc, r3
  2a8414:	e59fe070 	ldr	lr, [pc, #112]	@ 2a848c <OverlayCommand::createCompletion() const@@Base+0x88>
  2a8418:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a841c:	e59f106c 	ldr	r1, [pc, #108]	@ 2a8490 <OverlayCommand::createCompletion() const@@Base+0x8c>
  2a8420:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a8424:	e1a06000 	mov	r6, r0
  2a8428:	e28d2004 	add	r2, sp, #4
  2a842c:	e793500e 	ldr	r5, [r3, lr]
  2a8430:	e08f1001 	add	r1, pc, r1
  2a8434:	e28d0010 	add	r0, sp, #16
  2a8438:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a843c:	e5953000 	ldr	r3, [r5]
  2a8440:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a8444:	ebfea5bb 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a8448:	e1a00006 	mov	r0, r6
  2a844c:	e1a01004 	mov	r1, r4
  2a8450:	eb17fad0 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a8454:	e1a00004 	mov	r0, r4
  2a8458:	ebff0988 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a845c:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a8460:	e5953000 	ldr	r3, [r5]
  2a8464:	e1a00006 	mov	r0, r6
  2a8468:	e1520003 	cmp	r2, r3
  2a846c:	1a000001 	bne	2a8478 <OverlayCommand::createCompletion() const@@Base+0x74>
  2a8470:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a8474:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8478:	ebfe9a05 	bl	24ec94 <__stack_chk_fail@plt>
  2a847c:	e1a00004 	mov	r0, r4
  2a8480:	ebff097e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8484:	ebfe9ee8 	bl	25002c <__cxa_end_cleanup@plt>
  2a8488:	0077ecf0 	ldrshteq	lr, [r7], #-192	@ 0xffffff40
  2a848c:	00003440 	andeq	r3, r0, r0, asr #8
  2a8490:	0069c0ec 	rsbeq	ip, r9, ip, ror #1

002a8494 <ScriptHashCommand::createCompletion() const@@Base>:
  2a8494:	e59f307c 	ldr	r3, [pc, #124]	@ 2a8518 <ScriptHashCommand::createCompletion() const@@Base+0x84>
  2a8498:	e3a0c001 	mov	ip, #1
  2a849c:	e92d4070 	push	{r4, r5, r6, lr}
  2a84a0:	e08f3003 	add	r3, pc, r3
  2a84a4:	e59fe070 	ldr	lr, [pc, #112]	@ 2a851c <ScriptHashCommand::createCompletion() const@@Base+0x88>
  2a84a8:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a84ac:	e59f106c 	ldr	r1, [pc, #108]	@ 2a8520 <ScriptHashCommand::createCompletion() const@@Base+0x8c>
  2a84b0:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a84b4:	e1a06000 	mov	r6, r0
  2a84b8:	e28d2004 	add	r2, sp, #4
  2a84bc:	e793500e 	ldr	r5, [r3, lr]
  2a84c0:	e08f1001 	add	r1, pc, r1
  2a84c4:	e28d0010 	add	r0, sp, #16
  2a84c8:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a84cc:	e5953000 	ldr	r3, [r5]
  2a84d0:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a84d4:	ebfea597 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a84d8:	e1a00006 	mov	r0, r6
  2a84dc:	e1a01004 	mov	r1, r4
  2a84e0:	eb17faac 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a84e4:	e1a00004 	mov	r0, r4
  2a84e8:	ebff0964 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a84ec:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a84f0:	e5953000 	ldr	r3, [r5]
  2a84f4:	e1a00006 	mov	r0, r6
  2a84f8:	e1520003 	cmp	r2, r3
  2a84fc:	1a000001 	bne	2a8508 <ScriptHashCommand::createCompletion() const@@Base+0x74>
  2a8500:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a8504:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8508:	ebfe99e1 	bl	24ec94 <__stack_chk_fail@plt>
  2a850c:	e1a00004 	mov	r0, r4
  2a8510:	ebff095a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8514:	ebfe9ec4 	bl	25002c <__cxa_end_cleanup@plt>
  2a8518:	0077ec60 	rsbseq	lr, r7, r0, ror #24
  2a851c:	00003440 	andeq	r3, r0, r0, asr #8
  2a8520:	0069c064 	rsbeq	ip, r9, r4, rrx

002a8524 <EventLoopCheckerCommand::createCompletion() const@@Base>:
  2a8524:	e59f307c 	ldr	r3, [pc, #124]	@ 2a85a8 <EventLoopCheckerCommand::createCompletion() const@@Base+0x84>
  2a8528:	e3a0c001 	mov	ip, #1
  2a852c:	e92d4070 	push	{r4, r5, r6, lr}
  2a8530:	e08f3003 	add	r3, pc, r3
  2a8534:	e59fe070 	ldr	lr, [pc, #112]	@ 2a85ac <EventLoopCheckerCommand::createCompletion() const@@Base+0x88>
  2a8538:	e24dd028 	sub	sp, sp, #40	@ 0x28
  2a853c:	e59f106c 	ldr	r1, [pc, #108]	@ 2a85b0 <EventLoopCheckerCommand::createCompletion() const@@Base+0x8c>
  2a8540:	e28d4028 	add	r4, sp, #40	@ 0x28
  2a8544:	e1a06000 	mov	r6, r0
  2a8548:	e28d2004 	add	r2, sp, #4
  2a854c:	e793500e 	ldr	r5, [r3, lr]
  2a8550:	e08f1001 	add	r1, pc, r1
  2a8554:	e28d0010 	add	r0, sp, #16
  2a8558:	e524c020 	str	ip, [r4, #-32]!	@ 0xffffffe0
  2a855c:	e5953000 	ldr	r3, [r5]
  2a8560:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  2a8564:	ebfea573 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  2a8568:	e1a00006 	mov	r0, r6
  2a856c:	e1a01004 	mov	r1, r4
  2a8570:	eb17fa88 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a8574:	e1a00004 	mov	r0, r4
  2a8578:	ebff0940 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a857c:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a8580:	e5953000 	ldr	r3, [r5]
  2a8584:	e1a00006 	mov	r0, r6
  2a8588:	e1520003 	cmp	r2, r3
  2a858c:	1a000001 	bne	2a8598 <EventLoopCheckerCommand::createCompletion() const@@Base+0x74>
  2a8590:	e28dd028 	add	sp, sp, #40	@ 0x28
  2a8594:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8598:	ebfe99bd 	bl	24ec94 <__stack_chk_fail@plt>
  2a859c:	e1a00004 	mov	r0, r4
  2a85a0:	ebff0936 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a85a4:	ebfe9ea0 	bl	25002c <__cxa_end_cleanup@plt>
  2a85a8:	0077ebd0 	ldrsbteq	lr, [r7], #-176	@ 0xffffff50
  2a85ac:	00003440 	andeq	r3, r0, r0, asr #8
  2a85b0:	006c0248 	rsbeq	r0, ip, r8, asr #4

002a85b4 <std::pair<std::string, netflix::Variant>::~pair()@@Base>:
  2a85b4:	e59f3054 	ldr	r3, [pc, #84]	@ 2a8610 <std::pair<std::string, netflix::Variant>::~pair()@@Base+0x5c>
  2a85b8:	e59f2054 	ldr	r2, [pc, #84]	@ 2a8614 <std::pair<std::string, netflix::Variant>::~pair()@@Base+0x60>
  2a85bc:	e08f3003 	add	r3, pc, r3
  2a85c0:	e92d4030 	push	{r4, r5, lr}
  2a85c4:	e24dd00c 	sub	sp, sp, #12
  2a85c8:	e7935002 	ldr	r5, [r3, r2]
  2a85cc:	e1a04000 	mov	r4, r0
  2a85d0:	e2800008 	add	r0, r0, #8
  2a85d4:	e5953000 	ldr	r3, [r5]
  2a85d8:	e58d3004 	str	r3, [sp, #4]
  2a85dc:	ebff0927 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a85e0:	e5940000 	ldr	r0, [r4]
  2a85e4:	e1a0100d 	mov	r1, sp
  2a85e8:	e240000c 	sub	r0, r0, #12
  2a85ec:	ebfe9de9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a85f0:	e59d2004 	ldr	r2, [sp, #4]
  2a85f4:	e5953000 	ldr	r3, [r5]
  2a85f8:	e1520003 	cmp	r2, r3
  2a85fc:	1a000002 	bne	2a860c <std::pair<std::string, netflix::Variant>::~pair()@@Base+0x58>
  2a8600:	e1a00004 	mov	r0, r4
  2a8604:	e28dd00c 	add	sp, sp, #12
  2a8608:	e8bd8030 	pop	{r4, r5, pc}
  2a860c:	ebfe99a0 	bl	24ec94 <__stack_chk_fail@plt>
  2a8610:	0077eb44 	rsbseq	lr, r7, r4, asr #22
  2a8614:	00003440 	andeq	r3, r0, r0, asr #8

002a8618 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base>:
  2a8618:	e59f312c 	ldr	r3, [pc, #300]	@ 2a874c <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x134>
  2a861c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  2a8620:	e1a06000 	mov	r6, r0
  2a8624:	e59f0124 	ldr	r0, [pc, #292]	@ 2a8750 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x138>
  2a8628:	e08f3003 	add	r3, pc, r3
  2a862c:	e1a04001 	mov	r4, r1
  2a8630:	e5962014 	ldr	r2, [r6, #20]
  2a8634:	e5961010 	ldr	r1, [r6, #16]
  2a8638:	e284c001 	add	ip, r4, #1
  2a863c:	e793b000 	ldr	fp, [r3, r0]
  2a8640:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
  2a8644:	e0612002 	rsb	r2, r1, r2
  2a8648:	e59b0000 	ldr	r0, [fp]
  2a864c:	e1a02142 	asr	r2, r2, #2
  2a8650:	e15c0002 	cmp	ip, r2
  2a8654:	e58d0024 	str	r0, [sp, #36]	@ 0x24
  2a8658:	8a00001f 	bhi	2a86dc <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0xc4>
  2a865c:	e1540002 	cmp	r4, r2
  2a8660:	31a05104 	lslcc	r5, r4, #2
  2a8664:	328d8004 	addcc	r8, sp, #4
  2a8668:	328d7008 	addcc	r7, sp, #8
  2a866c:	33a0a000 	movcc	sl, #0
  2a8670:	2a000013 	bcs	2a86c4 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0xac>
  2a8674:	e0811005 	add	r1, r1, r5
  2a8678:	e1a00008 	mov	r0, r8
  2a867c:	ebfea080 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  2a8680:	e1a00008 	mov	r0, r8
  2a8684:	e1a01007 	mov	r1, r7
  2a8688:	e58da008 	str	sl, [sp, #8]
  2a868c:	eb1793f1 	bl	88d658 <netflix::Debug::setProperty(std::string, netflix::Variant)@@Base>
  2a8690:	e1a00007 	mov	r0, r7
  2a8694:	e2844001 	add	r4, r4, #1
  2a8698:	ebff08f8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a869c:	e59d0004 	ldr	r0, [sp, #4]
  2a86a0:	e1a0100d 	mov	r1, sp
  2a86a4:	e2855004 	add	r5, r5, #4
  2a86a8:	e240000c 	sub	r0, r0, #12
  2a86ac:	ebfe9db9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a86b0:	e5961010 	ldr	r1, [r6, #16]
  2a86b4:	e5963014 	ldr	r3, [r6, #20]
  2a86b8:	e0613003 	rsb	r3, r1, r3
  2a86bc:	e1540143 	cmp	r4, r3, asr #2
  2a86c0:	3affffeb 	bcc	2a8674 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x5c>
  2a86c4:	e59d2024 	ldr	r2, [sp, #36]	@ 0x24
  2a86c8:	e59b3000 	ldr	r3, [fp]
  2a86cc:	e1520003 	cmp	r2, r3
  2a86d0:	1a000019 	bne	2a873c <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x124>
  2a86d4:	e28dd02c 	add	sp, sp, #44	@ 0x2c
  2a86d8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  2a86dc:	e59fc070 	ldr	ip, [pc, #112]	@ 2a8754 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x13c>
  2a86e0:	e28d7008 	add	r7, sp, #8
  2a86e4:	e28d0004 	add	r0, sp, #4
  2a86e8:	e3a02000 	mov	r2, #0
  2a86ec:	e1a01007 	mov	r1, r7
  2a86f0:	e793300c 	ldr	r3, [r3, ip]
  2a86f4:	e58d2008 	str	r2, [sp, #8]
  2a86f8:	e283300c 	add	r3, r3, #12
  2a86fc:	e58d3004 	str	r3, [sp, #4]
  2a8700:	eb1793d4 	bl	88d658 <netflix::Debug::setProperty(std::string, netflix::Variant)@@Base>
  2a8704:	e1a00007 	mov	r0, r7
  2a8708:	ebff08dc 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a870c:	e59d0004 	ldr	r0, [sp, #4]
  2a8710:	e1a0100d 	mov	r1, sp
  2a8714:	e240000c 	sub	r0, r0, #12
  2a8718:	ebfe9d9e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a871c:	eaffffe8 	b	2a86c4 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0xac>
  2a8720:	e1a00007 	mov	r0, r7
  2a8724:	ebff08d5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8728:	e59d0004 	ldr	r0, [sp, #4]
  2a872c:	e1a0100d 	mov	r1, sp
  2a8730:	e240000c 	sub	r0, r0, #12
  2a8734:	ebfe9d97 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a8738:	ebfe9e3b 	bl	25002c <__cxa_end_cleanup@plt>
  2a873c:	ebfe9954 	bl	24ec94 <__stack_chk_fail@plt>
  2a8740:	e1a00007 	mov	r0, r7
  2a8744:	ebff08cd 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8748:	eafffff6 	b	2a8728 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base+0x110>
  2a874c:	0077ead8 	ldrsbteq	lr, [r7], #-168	@ 0xffffff58
  2a8750:	00003440 	andeq	r3, r0, r0, asr #8
  2a8754:	00002278 	andeq	r2, r0, r8, ror r2

002a8758 <DebugCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  2a8758:	e59f3040 	ldr	r3, [pc, #64]	@ 2a87a0 <DebugCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x48>
  2a875c:	e59f2040 	ldr	r2, [pc, #64]	@ 2a87a4 <DebugCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x4c>
  2a8760:	e08f3003 	add	r3, pc, r3
  2a8764:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  2a8768:	e24dd00c 	sub	sp, sp, #12
  2a876c:	e7933002 	ldr	r3, [r3, r2]
  2a8770:	e5932000 	ldr	r2, [r3]
  2a8774:	e58d2004 	str	r2, [sp, #4]
  2a8778:	e59d2004 	ldr	r2, [sp, #4]
  2a877c:	e5933000 	ldr	r3, [r3]
  2a8780:	e1520003 	cmp	r2, r3
  2a8784:	1a000004 	bne	2a879c <DebugCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x44>
  2a8788:	e1a00001 	mov	r0, r1
  2a878c:	e3a01001 	mov	r1, #1
  2a8790:	e28dd00c 	add	sp, sp, #12
  2a8794:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
  2a8798:	eaffff9e 	b	2a8618 <executeDebugCommand(netflix::Console::Command::Arguments const&, unsigned int)@@Base>
  2a879c:	ebfe993c 	bl	24ec94 <__stack_chk_fail@plt>
  2a87a0:	0077e9a0 	rsbseq	lr, r7, r0, lsr #19
  2a87a4:	00003440 	andeq	r3, r0, r0, asr #8

002a87a8 <DebugCommand::createCompletion() const@@Base>:
  2a87a8:	e59f3064 	ldr	r3, [pc, #100]	@ 2a8814 <DebugCommand::createCompletion() const@@Base+0x6c>
  2a87ac:	e59f2064 	ldr	r2, [pc, #100]	@ 2a8818 <DebugCommand::createCompletion() const@@Base+0x70>
  2a87b0:	e08f3003 	add	r3, pc, r3
  2a87b4:	e92d4070 	push	{r4, r5, r6, lr}
  2a87b8:	e24dd020 	sub	sp, sp, #32
  2a87bc:	e7935002 	ldr	r5, [r3, r2]
  2a87c0:	e1a06000 	mov	r6, r0
  2a87c4:	e1a0000d 	mov	r0, sp
  2a87c8:	e5953000 	ldr	r3, [r5]
  2a87cc:	e58d301c 	str	r3, [sp, #28]
  2a87d0:	ebffa706 	bl	2923f0 <netflix::gibbon::GibbonConsoleSink::GibbonConsoleSink()@@Base+0x64>
  2a87d4:	e1a00006 	mov	r0, r6
  2a87d8:	e1a0100d 	mov	r1, sp
  2a87dc:	eb17f9ed 	bl	8a6f98 <netflix::Console::Command::staticCompletions(netflix::Variant const&)@@Base>
  2a87e0:	e1a0000d 	mov	r0, sp
  2a87e4:	ebff08a5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a87e8:	e59d201c 	ldr	r2, [sp, #28]
  2a87ec:	e5953000 	ldr	r3, [r5]
  2a87f0:	e1a00006 	mov	r0, r6
  2a87f4:	e1520003 	cmp	r2, r3
  2a87f8:	1a000001 	bne	2a8804 <DebugCommand::createCompletion() const@@Base+0x5c>
  2a87fc:	e28dd020 	add	sp, sp, #32
  2a8800:	e8bd8070 	pop	{r4, r5, r6, pc}
  2a8804:	ebfe9922 	bl	24ec94 <__stack_chk_fail@plt>
  2a8808:	e1a0000d 	mov	r0, sp
  2a880c:	ebff089b 	bl	26aa80 <netflix::Variant::clear()@@Base>
  2a8810:	ebfe9e05 	bl	25002c <__cxa_end_cleanup@plt>
  2a8814:	0077e950 	rsbseq	lr, r7, r0, asr r9
  2a8818:	00003440 	andeq	r3, r0, r0, asr #8

002a881c <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  2a881c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
  2a8820:	e24dd01c 	sub	sp, sp, #28
  2a8824:	e59f4188 	ldr	r4, [pc, #392]	@ 2a89b4 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x198>
  2a8828:	e1a07001 	mov	r7, r1
  2a882c:	e59f2184 	ldr	r2, [pc, #388]	@ 2a89b8 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x19c>
  2a8830:	e3a01001 	mov	r1, #1
  2a8834:	e08f4004 	add	r4, pc, r4
  2a8838:	e59f317c 	ldr	r3, [pc, #380]	@ 2a89bc <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1a0>
  2a883c:	e7946002 	ldr	r6, [r4, r2]
  2a8840:	e5962000 	ldr	r2, [r6]
  2a8844:	e58d2014 	str	r2, [sp, #20]
  2a8848:	e7945003 	ldr	r5, [r4, r3]
  2a884c:	e1a00005 	mov	r0, r5
  2a8850:	eb19524c 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  2a8854:	e5971010 	ldr	r1, [r7, #16]
  2a8858:	e5973014 	ldr	r3, [r7, #20]
  2a885c:	e0613003 	rsb	r3, r1, r3
  2a8860:	e3530007 	cmp	r3, #7
  2a8864:	e59f3154 	ldr	r3, [pc, #340]	@ 2a89c0 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1a4>
  2a8868:	9a000020 	bls	2a88f0 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xd4>
  2a886c:	e28d7008 	add	r7, sp, #8
  2a8870:	e7943003 	ldr	r3, [r4, r3]
  2a8874:	e2811004 	add	r1, r1, #4
  2a8878:	e1a00007 	mov	r0, r7
  2a887c:	e5934000 	ldr	r4, [r3]
  2a8880:	ebfe9fff 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  2a8884:	e1a01004 	mov	r1, r4
  2a8888:	e1a02007 	mov	r2, r7
  2a888c:	e28d000c 	add	r0, sp, #12
  2a8890:	ebff1f14 	bl	2704e8 <netflix::gibbon::GibbonApplication::findWidget(std::string) const@@Base>
  2a8894:	e59d0008 	ldr	r0, [sp, #8]
  2a8898:	e28d1004 	add	r1, sp, #4
  2a889c:	e240000c 	sub	r0, r0, #12
  2a88a0:	ebfe9d3c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a88a4:	e59d000c 	ldr	r0, [sp, #12]
  2a88a8:	e3500000 	cmp	r0, #0
  2a88ac:	0a000002 	beq	2a88bc <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xa0>
  2a88b0:	e3a02003 	mov	r2, #3
  2a88b4:	e3a03000 	mov	r3, #0
  2a88b8:	eb03b5a8 	bl	395f60 <netflix::gibbon::Widget::layout(netflix::Flags<netflix::gibbon::Widget::LayoutFlag>) const@@Base>
  2a88bc:	e59d0010 	ldr	r0, [sp, #16]
  2a88c0:	e3500000 	cmp	r0, #0
  2a88c4:	0a000000 	beq	2a88cc <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xb0>
  2a88c8:	ebff0829 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  2a88cc:	e1a00005 	mov	r0, r5
  2a88d0:	e3a01001 	mov	r1, #1
  2a88d4:	eb195260 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  2a88d8:	e59d2014 	ldr	r2, [sp, #20]
  2a88dc:	e5963000 	ldr	r3, [r6]
  2a88e0:	e1520003 	cmp	r2, r3
  2a88e4:	1a00001a 	bne	2a8954 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x138>
  2a88e8:	e28dd01c 	add	sp, sp, #28
  2a88ec:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  2a88f0:	e7943003 	ldr	r3, [r4, r3]
  2a88f4:	e5933000 	ldr	r3, [r3]
  2a88f8:	e5937280 	ldr	r7, [r3, #640]	@ 0x280
  2a88fc:	e593127c 	ldr	r1, [r3, #636]	@ 0x27c
  2a8900:	e3570000 	cmp	r7, #0
  2a8904:	0a00000b 	beq	2a8938 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x11c>
  2a8908:	e59f20b4 	ldr	r2, [pc, #180]	@ 2a89c4 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1a8>
  2a890c:	e2873004 	add	r3, r7, #4
  2a8910:	e7942002 	ldr	r2, [r4, r2]
  2a8914:	e3520000 	cmp	r2, #0
  2a8918:	0a00000e 	beq	2a8958 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x13c>
  2a891c:	f57ff05f 	dmb	sy
  2a8920:	e1930f9f 	ldrex	r0, [r3]
  2a8924:	e2800001 	add	r0, r0, #1
  2a8928:	e1832f90 	strex	r2, r0, [r3]
  2a892c:	e3520000 	cmp	r2, #0
  2a8930:	1afffffa 	bne	2a8920 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x104>
  2a8934:	f57ff05f 	dmb	sy
  2a8938:	e28d000c 	add	r0, sp, #12
  2a893c:	eb0162fa 	bl	30152c <netflix::gibbon::Screen::root() const@@Base>
  2a8940:	e3570000 	cmp	r7, #0
  2a8944:	0affffd6 	beq	2a88a4 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x88>
  2a8948:	e1a00007 	mov	r0, r7
  2a894c:	ebff0808 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  2a8950:	eaffffd3 	b	2a88a4 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x88>
  2a8954:	ebfe98ce 	bl	24ec94 <__stack_chk_fail@plt>
  2a8958:	e5973004 	ldr	r3, [r7, #4]
  2a895c:	e2833001 	add	r3, r3, #1
  2a8960:	e5873004 	str	r3, [r7, #4]
  2a8964:	eafffff3 	b	2a8938 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x11c>
  2a8968:	e59d0010 	ldr	r0, [sp, #16]
  2a896c:	e3500000 	cmp	r0, #0
  2a8970:	0a000000 	beq	2a8978 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x15c>
  2a8974:	ebff07fe 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  2a8978:	e3a01001 	mov	r1, #1
  2a897c:	e1a00005 	mov	r0, r5
  2a8980:	eb195235 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  2a8984:	ebfe9da8 	bl	25002c <__cxa_end_cleanup@plt>
  2a8988:	e3570000 	cmp	r7, #0
  2a898c:	0afffff9 	beq	2a8978 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x15c>
  2a8990:	e1a00007 	mov	r0, r7
  2a8994:	ebff07f6 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  2a8998:	eafffff6 	b	2a8978 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x15c>
  2a899c:	e59d0008 	ldr	r0, [sp, #8]
  2a89a0:	e28d1004 	add	r1, sp, #4
  2a89a4:	e240000c 	sub	r0, r0, #12
  2a89a8:	ebfe9cfa 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  2a89ac:	eafffff1 	b	2a8978 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x15c>
  2a89b0:	eafffff0 	b	2a8978 <LayoutCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x15c>
  2a89b4:	0077e8cc 	rsbseq	lr, r7, ip, asr #17
  2a89b8:	00003440 	andeq	r3, r0, r0, asr #8
  2a89bc:	000030f0 	strdeq	r3, [r0], -r0
  2a89c0:	000022a0 	andeq	r2, r0, r0, lsr #5
  2a89c4:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4

002a89c8 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base>:
  2a89c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  2a89cc:	e24dd020 	sub	sp, sp, #32
  2a89d0:	e59f520c 	ldr	r5, [pc, #524]	@ 2a8be4 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x21c>
  2a89d4:	e28d0008 	add	r0, sp, #8
  2a89d8:	e59f3208 	ldr	r3, [pc, #520]	@ 2a8be8 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x220>
  2a89dc:	e1a06001 	mov	r6, r1
  2a89e0:	e08f5005 	add	r5, pc, r5
  2a89e4:	e7957003 	ldr	r7, [r5, r3]
  2a89e8:	e5973000 	ldr	r3, [r7]
  2a89ec:	e58d301c 	str	r3, [sp, #28]
  2a89f0:	eb0c2257 	bl	5b1354 <netflix::ScriptBindings::current()@@Base>
  2a89f4:	e59d3008 	ldr	r3, [sp, #8]
  2a89f8:	e5934038 	ldr	r4, [r3, #56]	@ 0x38
  2a89fc:	e5938034 	ldr	r8, [r3, #52]	@ 0x34
  2a8a00:	e3540000 	cmp	r4, #0
  2a8a04:	0a00000b 	beq	2a8a38 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x70>
  2a8a08:	e59f21dc 	ldr	r2, [pc, #476]	@ 2a8bec <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x224>
  2a8a0c:	e2843004 	add	r3, r4, #4
  2a8a10:	e7952002 	ldr	r2, [r5, r2]
  2a8a14:	e3520000 	cmp	r2, #0
  2a8a18:	0a00005c 	beq	2a8b90 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x1c8>
  2a8a1c:	f57ff05f 	dmb	sy
  2a8a20:	e1931f9f 	ldrex	r1, [r3]
  2a8a24:	e2811001 	add	r1, r1, #1
  2a8a28:	e1832f91 	strex	r2, r1, [r3]
  2a8a2c:	e3520000 	cmp	r2, #0
  2a8a30:	1afffffa 	bne	2a8a20 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x58>
  2a8a34:	f57ff05f 	dmb	sy
  2a8a38:	e5960010 	ldr	r0, [r6, #16]
  2a8a3c:	e5962014 	ldr	r2, [r6, #20]
  2a8a40:	e0602002 	rsb	r2, r0, r2
  2a8a44:	e3520007 	cmp	r2, #7
  2a8a48:	9a000038 	bls	2a8b30 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x168>
  2a8a4c:	e59f119c 	ldr	r1, [pc, #412]	@ 2a8bf0 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x228>
  2a8a50:	e2800004 	add	r0, r0, #4
  2a8a54:	e08f1001 	add	r1, pc, r1
  2a8a58:	ebfea1cf 	bl	25119c <std::string::compare(char const*) const@plt>
  2a8a5c:	e3500000 	cmp	r0, #0
  2a8a60:	0a000040 	beq	2a8b68 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x1a0>
  2a8a64:	e5960010 	ldr	r0, [r6, #16]
  2a8a68:	e59f1184 	ldr	r1, [pc, #388]	@ 2a8bf4 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x22c>
  2a8a6c:	e2800004 	add	r0, r0, #4
  2a8a70:	e08f1001 	add	r1, pc, r1
  2a8a74:	ebfea1c8 	bl	25119c <std::string::compare(char const*) const@plt>
  2a8a78:	e3500000 	cmp	r0, #0
  2a8a7c:	1a00002b 	bne	2a8b30 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x168>
  2a8a80:	e59f3170 	ldr	r3, [pc, #368]	@ 2a8bf8 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x230>
  2a8a84:	e5961010 	ldr	r1, [r6, #16]
  2a8a88:	e5962014 	ldr	r2, [r6, #20]
  2a8a8c:	e7953003 	ldr	r3, [r5, r3]
  2a8a90:	e0612002 	rsb	r2, r1, r2
  2a8a94:	e352000b 	cmp	r2, #11
  2a8a98:	e283300c 	add	r3, r3, #12
  2a8a9c:	e58d3004 	str	r3, [sp, #4]
  2a8aa0:	9a000033 	bls	2a8b74 <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x1ac>
  2a8aa4:	e2811008 	add	r1, r1, #8
  2a8aa8:	e28d0004 	add	r0, sp, #4
  2a8aac:	ebfea1f9 	bl	251298 <std::string::assign(std::string const&)@plt>
  2a8ab0:	e28d6010 	add	r6, sp, #16
  2a8ab4:	e1a01008 	mov	r1, r8
  2a8ab8:	e1a00006 	mov	r0, r6
  2a8abc:	eb074f51 	bl	47c808 <netflix::ScriptEngine::stopProfiling()@@Base>
  2a8ac0:	e59f1134 	ldr	r1, [pc, #308]	@ 2a8bfc <ProfileCommand::invokeOnCurrentThread(netflix::Console::Command::Arguments const&) const@@Base+0x234>
  2a8ac4:	e59d0004 	ldr	r0, [sp, #4]
  2a8ac8:	e08f1001 	add	r1, pc, r1
  2a8acc:	ebfea524 	bl	251f64 <fopen@plt>
  2a8ad0:	e1a08000 	mov	r8, r0
  2a8ad4:	e59d0010 	ldr	r0, [sp, #16]
  2a8ad8:	e59d1018 	ldr	r1, [sp, #24]
  2a8adc:	e3a02001 	mov	r2, #1
  2a8ae0:	e3500000 	cmp	r0, #0
  2a8ae4:	159d3014 	ldrne	r3, [sp, #20]
  2a8ae8:	15900014 	ldrne	r0, [r0, #20]
  2a8aec:	10800003 	addne	r0, r0, r3
  2a8af0:	e1a03008 	mov	r3, r8
  2a8af4:	ebfe958a 	bl	24e124 <fwrite@plt>
  2a8af8:	e1a00008 	mov	r0, r8
  2a8afc:	ebfe973b 	bl	24e7f0 <fclose@plt>
