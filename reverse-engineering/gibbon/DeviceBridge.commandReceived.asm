
../vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

00563594 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base>:
  563594:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  563598:	e24dd04c 	sub	sp, sp, #76	@ 0x4c
  56359c:	e59f422c 	ldr	r4, [pc, #556]	@ 5637d0 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x23c>
  5635a0:	e1a07000 	mov	r7, r0
  5635a4:	e59f2228 	ldr	r2, [pc, #552]	@ 5637d4 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x240>
  5635a8:	e1a0a001 	mov	sl, r1
  5635ac:	e08f4004 	add	r4, pc, r4
  5635b0:	e59f3220 	ldr	r3, [pc, #544]	@ 5637d8 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x244>
  5635b4:	e3a01001 	mov	r1, #1
  5635b8:	e7949002 	ldr	r9, [r4, r2]
  5635bc:	e5992000 	ldr	r2, [r9]
  5635c0:	e58d2044 	str	r2, [sp, #68]	@ 0x44
  5635c4:	e7945003 	ldr	r5, [r4, r3]
  5635c8:	e1a00005 	mov	r0, r5
  5635cc:	eb0e66ed 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  5635d0:	e5976010 	ldr	r6, [r7, #16]
  5635d4:	e3560000 	cmp	r6, #0
  5635d8:	0a000014 	beq	563630 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x9c>
  5635dc:	e5963004 	ldr	r3, [r6, #4]
  5635e0:	e3530000 	cmp	r3, #0
  5635e4:	0a000011 	beq	563630 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x9c>
  5635e8:	e5963004 	ldr	r3, [r6, #4]
  5635ec:	e2862004 	add	r2, r6, #4
  5635f0:	e1a08003 	mov	r8, r3
  5635f4:	e58d301c 	str	r3, [sp, #28]
  5635f8:	e3580000 	cmp	r8, #0
  5635fc:	0a00005d 	beq	563778 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x1e4>
  563600:	e59d301c 	ldr	r3, [sp, #28]
  563604:	e2881001 	add	r1, r8, #1
  563608:	f57ff05f 	dmb	sy
  56360c:	e1928f9f 	ldrex	r8, [r2]
  563610:	e1580003 	cmp	r8, r3
  563614:	1a000002 	bne	563624 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x90>
  563618:	e1820f91 	strex	r0, r1, [r2]
  56361c:	e3500000 	cmp	r0, #0
  563620:	f57ff05f 	dmb	sy
  563624:	1a000040 	bne	56372c <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x198>
  563628:	e597800c 	ldr	r8, [r7, #12]
  56362c:	ea000001 	b	563638 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0xa4>
  563630:	e3a06000 	mov	r6, #0
  563634:	e1a08006 	mov	r8, r6
  563638:	e3a01001 	mov	r1, #1
  56363c:	e1a00005 	mov	r0, r5
  563640:	eb0e6705 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  563644:	e28d7018 	add	r7, sp, #24
  563648:	e59f118c 	ldr	r1, [pc, #396]	@ 5637dc <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x248>
  56364c:	e28d2014 	add	r2, sp, #20
  563650:	e1a00007 	mov	r0, r7
  563654:	e08f1001 	add	r1, pc, r1
  563658:	ebf3b936 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  56365c:	e1a0100a 	mov	r1, sl
  563660:	e28d0030 	add	r0, sp, #48	@ 0x30
  563664:	e3a03001 	mov	r3, #1
  563668:	e58d3028 	str	r3, [sp, #40]	@ 0x28
  56366c:	ebf3b484 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  563670:	e28d5020 	add	r5, sp, #32
  563674:	e3a00004 	mov	r0, #4
  563678:	e1a01005 	mov	r1, r5
  56367c:	ebf3afa0 	bl	24f504 <clock_gettime@plt>
  563680:	e59d3024 	ldr	r3, [sp, #36]	@ 0x24
  563684:	e30d2e83 	movw	r2, #56963	@ 0xde83
  563688:	e59f0150 	ldr	r0, [pc, #336]	@ 5637e0 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x24c>
  56368c:	e344231b 	movt	r2, #17179	@ 0x431b
  563690:	e59d1020 	ldr	r1, [sp, #32]
  563694:	e0c2c392 	smull	ip, r2, r2, r3
  563698:	e1a03fc3 	asr	r3, r3, #31
  56369c:	e794c000 	ldr	ip, [r4, r0]
  5636a0:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
  5636a4:	e1cca0d0 	ldrd	sl, [ip]
  5636a8:	e0632942 	rsb	r2, r3, r2, asr #18
  5636ac:	e35a0000 	cmp	sl, #0
  5636b0:	e1a03fc2 	asr	r3, r2, #31
  5636b4:	e0e32190 	smlal	r2, r3, r0, r1
  5636b8:	01a0a002 	moveq	sl, r2
  5636bc:	01a0b003 	moveq	fp, r3
  5636c0:	1a00001b 	bne	563734 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x1a0>
  5636c4:	e28d4028 	add	r4, sp, #40	@ 0x28
  5636c8:	e3a02000 	mov	r2, #0
  5636cc:	e3a03000 	mov	r3, #0
  5636d0:	e58d5008 	str	r5, [sp, #8]
  5636d4:	e1cd20f0 	strd	r2, [sp]
  5636d8:	e1a00008 	mov	r0, r8
  5636dc:	e1a01007 	mov	r1, r7
  5636e0:	e1a02004 	mov	r2, r4
  5636e4:	e1cda2f0 	strd	sl, [sp, #32]
  5636e8:	ebffdbf6 	bl	55a6c8 <netflix::NfObject::sendEvent(std::string const&, netflix::Variant const&, netflix::Flags<netflix::NfObject::ResponseFlag>, netflix::Time const&)@@Base>
  5636ec:	e1a00004 	mov	r0, r4
  5636f0:	ebf41ce2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5636f4:	e59d0018 	ldr	r0, [sp, #24]
  5636f8:	e1a01005 	mov	r1, r5
  5636fc:	e240000c 	sub	r0, r0, #12
  563700:	ebf3b1a4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  563704:	e3560000 	cmp	r6, #0
  563708:	0a000001 	beq	563714 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x180>
  56370c:	e1a00006 	mov	r0, r6
  563710:	ebf41c97 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  563714:	e59d2044 	ldr	r2, [sp, #68]	@ 0x44
  563718:	e5993000 	ldr	r3, [r9]
  56371c:	e1520003 	cmp	r2, r3
  563720:	1a000013 	bne	563774 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x1e0>
  563724:	e28dd04c 	add	sp, sp, #76	@ 0x4c
  563728:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  56372c:	e58d801c 	str	r8, [sp, #28]
  563730:	eaffffb0 	b	5635f8 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x64>
  563734:	e59f10a8 	ldr	r1, [pc, #168]	@ 5637e4 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x250>
  563738:	e7941001 	ldr	r1, [r4, r1]
  56373c:	e1c100d0 	ldrd	r0, [r1]
  563740:	e0520000 	subs	r0, r2, r0
  563744:	e0c31001 	sbc	r1, r3, r1
  563748:	ebf3acfa 	bl	24eb38 <__aeabi_ul2d@plt>
  56374c:	e59f3094 	ldr	r3, [pc, #148]	@ 5637e8 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x254>
  563750:	e7943003 	ldr	r3, [r4, r3]
  563754:	ed937b00 	vldr	d7, [r3]
  563758:	ec410b16 	vmov	d6, r0, r1
  56375c:	ee266b07 	vmul.f64	d6, d6, d7
  563760:	ec510b16 	vmov	r0, r1, d6
  563764:	ebf3acf0 	bl	24eb2c <__aeabi_d2lz@plt>
  563768:	e09aa000 	adds	sl, sl, r0
  56376c:	e0abb001 	adc	fp, fp, r1
  563770:	eaffffd3 	b	5636c4 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x130>
  563774:	ebf3ad46 	bl	24ec94 <__stack_chk_fail@plt>
  563778:	ebf41bba 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  56377c:	e3510001 	cmp	r1, #1
  563780:	0a00000b 	beq	5637b4 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x220>
  563784:	ebf3adae 	bl	24ee44 <std::terminate()@plt>
  563788:	e1a00004 	mov	r0, r4
  56378c:	ebf41cbb 	bl	26aa80 <netflix::Variant::clear()@@Base>
  563790:	e59d0018 	ldr	r0, [sp, #24]
  563794:	e1a01005 	mov	r1, r5
  563798:	e240000c 	sub	r0, r0, #12
  56379c:	ebf3b17d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5637a0:	e3560000 	cmp	r6, #0
  5637a4:	0a000001 	beq	5637b0 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x21c>
  5637a8:	e1a00006 	mov	r0, r6
  5637ac:	ebf41c70 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5637b0:	ebf3b21d 	bl	25002c <__cxa_end_cleanup@plt>
  5637b4:	ebf3adc9 	bl	24eee0 <__cxa_begin_catch@plt>
  5637b8:	e1a06008 	mov	r6, r8
  5637bc:	ebf3b895 	bl	251a18 <__cxa_end_catch@plt>
  5637c0:	eaffff9c 	b	563638 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0xa4>
  5637c4:	e28d5020 	add	r5, sp, #32
  5637c8:	eafffff0 	b	563790 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x1fc>
  5637cc:	eafffff3 	b	5637a0 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base+0x20c>
  5637d0:	004c3b54 	subeq	r3, ip, r4, asr fp
  5637d4:	00003440 	andeq	r3, r0, r0, asr #8
  5637d8:	00002b84 	andeq	r2, r0, r4, lsl #23
  5637dc:	00401c74 	subeq	r1, r0, r4, ror ip
  5637e0:	00001ac8 	andeq	r1, r0, r8, asr #21
  5637e4:	00002940 	andeq	r2, r0, r0, asr #18
  5637e8:	00002250 	andeq	r2, r0, r0, asr r2

005637ec <non-virtual thunk to netflix::DeviceBridge::commandReceived(std::string const&)@@Base>:
  5637ec:	e2400080 	sub	r0, r0, #128	@ 0x80
  5637f0:	eaffff67 	b	563594 <netflix::DeviceBridge::commandReceived(std::string const&)@@Base>

005637f4 <netflix::DeviceBridge::start()@@Base>:
  5637f4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  5637f8:	e24dd010 	sub	sp, sp, #16
  5637fc:	e59f615c 	ldr	r6, [pc, #348]	@ 563960 <netflix::DeviceBridge::start()@@Base+0x16c>
  563800:	e59f315c 	ldr	r3, [pc, #348]	@ 563964 <netflix::DeviceBridge::start()@@Base+0x170>
  563804:	e08f6006 	add	r6, pc, r6
  563808:	e5904008 	ldr	r4, [r0, #8]
  56380c:	e7967003 	ldr	r7, [r6, r3]
  563810:	e3540000 	cmp	r4, #0
  563814:	e5973000 	ldr	r3, [r7]
  563818:	e58d300c 	str	r3, [sp, #12]
  56381c:	0a00003e 	beq	56391c <netflix::DeviceBridge::start()@@Base+0x128>
  563820:	e5942004 	ldr	r2, [r4, #4]
  563824:	e2845004 	add	r5, r4, #4
  563828:	e1a03002 	mov	r3, r2
  56382c:	e58d2004 	str	r2, [sp, #4]
  563830:	e3530000 	cmp	r3, #0
  563834:	0a000038 	beq	56391c <netflix::DeviceBridge::start()@@Base+0x128>
  563838:	e59d2004 	ldr	r2, [sp, #4]
  56383c:	e2831001 	add	r1, r3, #1
  563840:	e28da004 	add	sl, sp, #4
  563844:	f57ff05f 	dmb	sy
  563848:	e1953f9f 	ldrex	r3, [r5]
  56384c:	e1530002 	cmp	r3, r2
