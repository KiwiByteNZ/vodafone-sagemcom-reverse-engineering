
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008bdc08 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base>:
  8bdc08:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  8bdc0c:	e1a08000 	mov	r8, r0
  8bdc10:	e59f7594 	ldr	r7, [pc, #1428]	@ 8be1ac <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5a4>
  8bdc14:	e24dd030 	sub	sp, sp, #48	@ 0x30
  8bdc18:	e59f3590 	ldr	r3, [pc, #1424]	@ 8be1b0 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5a8>
  8bdc1c:	e1a04001 	mov	r4, r1
  8bdc20:	e08f7007 	add	r7, pc, r7
  8bdc24:	e5900038 	ldr	r0, [r0, #56]	@ 0x38
  8bdc28:	e7979003 	ldr	r9, [r7, r3]
  8bdc2c:	e3500000 	cmp	r0, #0
  8bdc30:	e5993000 	ldr	r3, [r9]
  8bdc34:	e58d302c 	str	r3, [sp, #44]	@ 0x2c
  8bdc38:	0a000021 	beq	8bdcc4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xbc>
  8bdc3c:	e59f3570 	ldr	r3, [pc, #1392]	@ 8be1b4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5ac>
  8bdc40:	e7973003 	ldr	r3, [r7, r3]
  8bdc44:	e5933000 	ldr	r3, [r3]
  8bdc48:	e59320d0 	ldr	r2, [r3, #208]	@ 0xd0
  8bdc4c:	e58d2020 	str	r2, [sp, #32]
  8bdc50:	e59330d4 	ldr	r3, [r3, #212]	@ 0xd4
  8bdc54:	e3530000 	cmp	r3, #0
  8bdc58:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  8bdc5c:	0a00000b 	beq	8bdc90 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x88>
  8bdc60:	e59f1550 	ldr	r1, [pc, #1360]	@ 8be1b8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5b0>
  8bdc64:	e2832004 	add	r2, r3, #4
  8bdc68:	e7971001 	ldr	r1, [r7, r1]
  8bdc6c:	e3510000 	cmp	r1, #0
  8bdc70:	0a0000fa 	beq	8be060 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x458>
  8bdc74:	f57ff05f 	dmb	sy
  8bdc78:	e1921f9f 	ldrex	r1, [r2]
  8bdc7c:	e2811001 	add	r1, r1, #1
  8bdc80:	e1823f91 	strex	r3, r1, [r2]
  8bdc84:	e3530000 	cmp	r3, #0
  8bdc88:	1afffffa 	bne	8bdc78 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x70>
  8bdc8c:	f57ff05f 	dmb	sy
  8bdc90:	e28d1020 	add	r1, sp, #32
  8bdc94:	ebe8624b 	bl	2d65c8 <netflix::Console::Filters::end(std::shared_ptr<netflix::Console> const&)@@Base>
  8bdc98:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8bdc9c:	e3500000 	cmp	r0, #0
  8bdca0:	0a000000 	beq	8bdca8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xa0>
  8bdca4:	ebe6b332 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdca8:	e598003c 	ldr	r0, [r8, #60]	@ 0x3c
  8bdcac:	e3a03000 	mov	r3, #0
  8bdcb0:	e5883038 	str	r3, [r8, #56]	@ 0x38
  8bdcb4:	e1500003 	cmp	r0, r3
  8bdcb8:	e588303c 	str	r3, [r8, #60]	@ 0x3c
  8bdcbc:	0a000000 	beq	8bdcc4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0xbc>
  8bdcc0:	ebe6b32b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdcc4:	e5943010 	ldr	r3, [r4, #16]
  8bdcc8:	e5942014 	ldr	r2, [r4, #20]
  8bdccc:	e0632002 	rsb	r2, r3, r2
  8bdcd0:	e1a02142 	asr	r2, r2, #2
  8bdcd4:	e3520001 	cmp	r2, #1
  8bdcd8:	9a0000a0 	bls	8bdf60 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x358>
  8bdcdc:	e5933004 	ldr	r3, [r3, #4]
  8bdce0:	e513300c 	ldr	r3, [r3, #-12]
  8bdce4:	e3530000 	cmp	r3, #0
  8bdce8:	0a00009c 	beq	8bdf60 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x358>
  8bdcec:	e3720107 	cmn	r2, #-1073741823	@ 0xc0000001
  8bdcf0:	e3a03000 	mov	r3, #0
  8bdcf4:	e58d3020 	str	r3, [sp, #32]
  8bdcf8:	e58d3024 	str	r3, [sp, #36]	@ 0x24
  8bdcfc:	e58d3028 	str	r3, [sp, #40]	@ 0x28
  8bdd00:	8a0000db 	bhi	8be074 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x46c>
  8bdd04:	e1a06102 	lsl	r6, r2, #2
  8bdd08:	e1a00006 	mov	r0, r6
  8bdd0c:	ebe643ef 	bl	24ecd0 <operator new(unsigned int)@plt>
  8bdd10:	e5945010 	ldr	r5, [r4, #16]
  8bdd14:	e0802006 	add	r2, r0, r6
  8bdd18:	e5946014 	ldr	r6, [r4, #20]
  8bdd1c:	e1a0a000 	mov	sl, r0
  8bdd20:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  8bdd24:	e1550006 	cmp	r5, r6
  8bdd28:	e1a04000 	mov	r4, r0
  8bdd2c:	e58d0020 	str	r0, [sp, #32]
  8bdd30:	e58d0024 	str	r0, [sp, #36]	@ 0x24
  8bdd34:	0a000008 	beq	8bdd5c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x154>
  8bdd38:	e3540000 	cmp	r4, #0
  8bdd3c:	0a000002 	beq	8bdd4c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x144>
  8bdd40:	e1a00004 	mov	r0, r4
  8bdd44:	e1a01005 	mov	r1, r5
  8bdd48:	ebe64acd 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8bdd4c:	e2855004 	add	r5, r5, #4
  8bdd50:	e2844004 	add	r4, r4, #4
  8bdd54:	e1560005 	cmp	r6, r5
  8bdd58:	1afffff6 	bne	8bdd38 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x130>
  8bdd5c:	e59f3450 	ldr	r3, [pc, #1104]	@ 8be1b4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5ac>
  8bdd60:	e58d4024 	str	r4, [sp, #36]	@ 0x24
  8bdd64:	e7976003 	ldr	r6, [r7, r3]
  8bdd68:	e5963000 	ldr	r3, [r6]
  8bdd6c:	e59350d4 	ldr	r5, [r3, #212]	@ 0xd4
  8bdd70:	e59310d0 	ldr	r1, [r3, #208]	@ 0xd0
  8bdd74:	e3550000 	cmp	r5, #0
  8bdd78:	01a03004 	moveq	r3, r4
  8bdd7c:	0a00000c 	beq	8bddb4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1ac>
  8bdd80:	e59f2430 	ldr	r2, [pc, #1072]	@ 8be1b8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5b0>
  8bdd84:	e2853004 	add	r3, r5, #4
  8bdd88:	e7972002 	ldr	r2, [r7, r2]
  8bdd8c:	e3520000 	cmp	r2, #0
  8bdd90:	0a0000e0 	beq	8be118 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x510>
  8bdd94:	f57ff05f 	dmb	sy
  8bdd98:	e193cf9f 	ldrex	r12, [r3]
  8bdd9c:	e28cc001 	add	ip, ip, #1
  8bdda0:	e1830f9c 	strex	r0, ip, [r3]
  8bdda4:	e3500000 	cmp	r0, #0
  8bdda8:	1afffffa 	bne	8bdd98 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x190>
  8bddac:	f57ff05f 	dmb	sy
  8bddb0:	e59d3024 	ldr	r3, [sp, #36]	@ 0x24
  8bddb4:	e591c000 	ldr	ip, [r1]
  8bddb8:	e28da008 	add	sl, sp, #8
  8bddbc:	e59d2020 	ldr	r2, [sp, #32]
  8bddc0:	e1a0000a 	mov	r0, sl
  8bddc4:	e59cc008 	ldr	ip, [ip, #8]
  8bddc8:	e12fff3c 	blx	ip
  8bddcc:	e3550000 	cmp	r5, #0
  8bddd0:	0a000001 	beq	8bdddc <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1d4>
  8bddd4:	e1a00005 	mov	r0, r5
  8bddd8:	ebe6b2e5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdddc:	e59d3008 	ldr	r3, [sp, #8]
  8bdde0:	e3530000 	cmp	r3, #0
  8bdde4:	0a00008a 	beq	8be014 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x40c>
  8bdde8:	e3a00024 	mov	r0, #36	@ 0x24
  8bddec:	ebe643b7 	bl	24ecd0 <operator new(unsigned int)@plt>
  8bddf0:	e2805018 	add	r5, r0, #24
  8bddf4:	e1a04000 	mov	r4, r0
  8bddf8:	e3a03000 	mov	r3, #0
  8bddfc:	e1a0100a 	mov	r1, sl
  8bde00:	e1a00005 	mov	r0, r5
  8bde04:	e5843000 	str	r3, [r4]
  8bde08:	e5843004 	str	r3, [r4, #4]
  8bde0c:	e5c43008 	strb	r3, [r4, #8]
  8bde10:	e584300c 	str	r3, [r4, #12]
  8bde14:	e5843010 	str	r3, [r4, #16]
  8bde18:	e5843014 	str	r3, [r4, #20]
  8bde1c:	e5843018 	str	r3, [r4, #24]
  8bde20:	e584301c 	str	r3, [r4, #28]
  8bde24:	e5843020 	str	r3, [r4, #32]
  8bde28:	ebffe11c 	bl	8b62a0 <void std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::_M_emplace_back_aux<std::shared_ptr<netflix::Console::Filter> const&>(std::shared_ptr<netflix::Console::Filter> const&)@@Base>
  8bde2c:	e3a00010 	mov	r0, #16
  8bde30:	ebe643a6 	bl	24ecd0 <operator new(unsigned int)@plt>
  8bde34:	e59f1380 	ldr	r1, [pc, #896]	@ 8be1bc <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5b4>
  8bde38:	e3a03001 	mov	r3, #1
  8bde3c:	e59f2374 	ldr	r2, [pc, #884]	@ 8be1b8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5b0>
  8bde40:	e1a05000 	mov	r5, r0
  8bde44:	e5803004 	str	r3, [r0, #4]
  8bde48:	e5803008 	str	r3, [r0, #8]
  8bde4c:	e7973001 	ldr	r3, [r7, r1]
  8bde50:	e580400c 	str	r4, [r0, #12]
  8bde54:	e2833008 	add	r3, r3, #8
  8bde58:	e5803000 	str	r3, [r0]
  8bde5c:	e5844000 	str	r4, [r4]
  8bde60:	e7977002 	ldr	r7, [r7, r2]
  8bde64:	e3570000 	cmp	r7, #0
  8bde68:	0a00009c 	beq	8be0e0 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x4d8>
  8bde6c:	e2803008 	add	r3, r0, #8
  8bde70:	f57ff05f 	dmb	sy
  8bde74:	e1931f9f 	ldrex	r1, [r3]
  8bde78:	e2811001 	add	r1, r1, #1
  8bde7c:	e1832f91 	strex	r2, r1, [r3]
  8bde80:	e3520000 	cmp	r2, #0
  8bde84:	1afffffa 	bne	8bde74 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x26c>
  8bde88:	f57ff05f 	dmb	sy
  8bde8c:	e5940004 	ldr	r0, [r4, #4]
  8bde90:	e3500000 	cmp	r0, #0
  8bde94:	0a00000b 	beq	8bdec8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2c0>
  8bde98:	e3570000 	cmp	r7, #0
  8bde9c:	e2803008 	add	r3, r0, #8
  8bdea0:	0a000065 	beq	8be03c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x434>
  8bdea4:	f57ff05f 	dmb	sy
  8bdea8:	e1932f9f 	ldrex	r2, [r3]
  8bdeac:	e242c001 	sub	ip, r2, #1
  8bdeb0:	e1831f9c 	strex	r1, ip, [r3]
  8bdeb4:	e3510000 	cmp	r1, #0
  8bdeb8:	1afffffa 	bne	8bdea8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2a0>
  8bdebc:	f57ff05f 	dmb	sy
  8bdec0:	e3520001 	cmp	r2, #1
  8bdec4:	0a000058 	beq	8be02c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x424>
  8bdec8:	e598003c 	ldr	r0, [r8, #60]	@ 0x3c
  8bdecc:	e5845004 	str	r5, [r4, #4]
  8bded0:	e3500000 	cmp	r0, #0
  8bded4:	e5884038 	str	r4, [r8, #56]	@ 0x38
  8bded8:	e588503c 	str	r5, [r8, #60]	@ 0x3c
  8bdedc:	0a000001 	beq	8bdee8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2e0>
  8bdee0:	ebe6b2a3 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdee4:	e5984038 	ldr	r4, [r8, #56]	@ 0x38
  8bdee8:	e5963000 	ldr	r3, [r6]
  8bdeec:	e59350d4 	ldr	r5, [r3, #212]	@ 0xd4
  8bdef0:	e59360d0 	ldr	r6, [r3, #208]	@ 0xd0
  8bdef4:	e3550000 	cmp	r5, #0
  8bdef8:	0a000009 	beq	8bdf24 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x31c>
  8bdefc:	e3570000 	cmp	r7, #0
  8bdf00:	e2853004 	add	r3, r5, #4
  8bdf04:	0a0000a3 	beq	8be198 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x590>
  8bdf08:	f57ff05f 	dmb	sy
  8bdf0c:	e1932f9f 	ldrex	r2, [r3]
  8bdf10:	e2822001 	add	r2, r2, #1
  8bdf14:	e183cf92 	strex	ip, r2, [r3]
  8bdf18:	e35c0000 	cmp	ip, #0
  8bdf1c:	1afffffa 	bne	8bdf0c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x304>
  8bdf20:	f57ff05f 	dmb	sy
  8bdf24:	e5d43008 	ldrb	r3, [r4, #8]
  8bdf28:	e3530000 	cmp	r3, #0
  8bdf2c:	e2833001 	add	r3, r3, #1
  8bdf30:	e5c43008 	strb	r3, [r4, #8]
  8bdf34:	0a00000f 	beq	8bdf78 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x370>
  8bdf38:	e3550000 	cmp	r5, #0
  8bdf3c:	0a000001 	beq	8bdf48 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x340>
  8bdf40:	e1a00005 	mov	r0, r5
  8bdf44:	ebe6b28a 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdf48:	e59d000c 	ldr	r0, [sp, #12]
  8bdf4c:	e3500000 	cmp	r0, #0
  8bdf50:	0a000000 	beq	8bdf58 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x350>
  8bdf54:	ebe6b286 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8bdf58:	e28d0020 	add	r0, sp, #32
  8bdf5c:	ebe70dde 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8bdf60:	e59d202c 	ldr	r2, [sp, #44]	@ 0x2c
  8bdf64:	e5993000 	ldr	r3, [r9]
  8bdf68:	e1520003 	cmp	r2, r3
  8bdf6c:	1a00003f 	bne	8be070 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x468>
  8bdf70:	e28dd030 	add	sp, sp, #48	@ 0x30
  8bdf74:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  8bdf78:	e5943004 	ldr	r3, [r4, #4]
  8bdf7c:	e3530000 	cmp	r3, #0
  8bdf80:	e58d3014 	str	r3, [sp, #20]
  8bdf84:	0a000082 	beq	8be194 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x58c>
  8bdf88:	e5931004 	ldr	r1, [r3, #4]
  8bdf8c:	e2833004 	add	r3, r3, #4
  8bdf90:	e1a02001 	mov	r2, r1
  8bdf94:	e58d1004 	str	r1, [sp, #4]
  8bdf98:	e3520000 	cmp	r2, #0
  8bdf9c:	0a00007b 	beq	8be190 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x588>
  8bdfa0:	e59d1004 	ldr	r1, [sp, #4]
  8bdfa4:	e2820001 	add	r0, r2, #1
  8bdfa8:	f57ff05f 	dmb	sy
  8bdfac:	e1932f9f 	ldrex	r2, [r3]
  8bdfb0:	e1520001 	cmp	r2, r1
  8bdfb4:	1a000002 	bne	8bdfc4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x3bc>
  8bdfb8:	e183cf90 	strex	ip, r0, [r3]
  8bdfbc:	e35c0000 	cmp	ip, #0
  8bdfc0:	f57ff05f 	dmb	sy
  8bdfc4:	158d2004 	strne	r2, [sp, #4]
  8bdfc8:	1afffff2 	bne	8bdf98 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x390>
  8bdfcc:	e5943000 	ldr	r3, [r4]
  8bdfd0:	e286400c 	add	r4, r6, #12
  8bdfd4:	e3a01001 	mov	r1, #1
  8bdfd8:	e1a00004 	mov	r0, r4
  8bdfdc:	e58d3010 	str	r3, [sp, #16]
  8bdfe0:	eb00fc68 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  8bdfe4:	e2861030 	add	r1, r6, #48	@ 0x30
  8bdfe8:	e28d0018 	add	r0, sp, #24
  8bdfec:	e28d2010 	add	r2, sp, #16
  8bdff0:	ebe7c5a9 	bl	2af69c <std::pair<std::_Rb_tree_iterator<std::shared_ptr<netflix::Console::Filters> >, bool> std::_Rb_tree<std::shared_ptr<netflix::Console::Filters>, std::shared_ptr<netflix::Console::Filters>, std::_Identity<std::shared_ptr<netflix::Console::Filters> >, std::less<std::shared_ptr<netflix::Console::Filters> >, std::allocator<std::shared_ptr<netflix::Console::Filters> > >::_M_insert_unique<std::shared_ptr<netflix::Console::Filters> const&>(std::shared_ptr<netflix::Console::Filters> const&)@@Base>
  8bdff4:	e1a00004 	mov	r0, r4
  8bdff8:	e3a01001 	mov	r1, #1
  8bdffc:	eb00fc96 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8be000:	e59d0014 	ldr	r0, [sp, #20]
  8be004:	e3500000 	cmp	r0, #0
  8be008:	0affffca 	beq	8bdf38 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x330>
  8be00c:	ebe6b258 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be010:	eaffffc8 	b	8bdf38 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x330>
  8be014:	e59f31a4 	ldr	r3, [pc, #420]	@ 8be1c0 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5b8>
  8be018:	e59f11a4 	ldr	r1, [pc, #420]	@ 8be1c4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x5bc>
  8be01c:	e7970003 	ldr	r0, [r7, r3]
  8be020:	e08f1001 	add	r1, pc, r1
  8be024:	eb00c689 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  8be028:	eaffffc6 	b	8bdf48 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x340>
  8be02c:	e5903000 	ldr	r3, [r0]
  8be030:	e593300c 	ldr	r3, [r3, #12]
  8be034:	e12fff33 	blx	r3
  8be038:	eaffffa2 	b	8bdec8 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2c0>
  8be03c:	e5902008 	ldr	r2, [r0, #8]
  8be040:	e2423001 	sub	r3, r2, #1
  8be044:	e5803008 	str	r3, [r0, #8]
  8be048:	eaffff9c 	b	8bdec0 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x2b8>
  8be04c:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8be050:	e3500000 	cmp	r0, #0
  8be054:	0a000000 	beq	8be05c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x454>
  8be058:	ebe6b245 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be05c:	ebe647f2 	bl	25002c <__cxa_end_cleanup@plt>
  8be060:	e5932004 	ldr	r2, [r3, #4]
  8be064:	e2822001 	add	r2, r2, #1
  8be068:	e5832004 	str	r2, [r3, #4]
  8be06c:	eaffff07 	b	8bdc90 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x88>
  8be070:	ebe64307 	bl	24ec94 <__stack_chk_fail@plt>
  8be074:	ebe6503b 	bl	252168 <std::__throw_bad_alloc()@plt>
  8be078:	e59d000c 	ldr	r0, [sp, #12]
  8be07c:	e3500000 	cmp	r0, #0
  8be080:	0a000000 	beq	8be088 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x480>
  8be084:	ebe6b23a 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be088:	e28d0020 	add	r0, sp, #32
  8be08c:	ebe70d92 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8be090:	eafffff1 	b	8be05c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x454>
  8be094:	e1a00005 	mov	r0, r5
  8be098:	ebffdbdb 	bl	8b500c <std::vector<std::shared_ptr<netflix::Console::Filter>, std::allocator<std::shared_ptr<netflix::Console::Filter> > >::~vector()@@Base>
  8be09c:	e5940014 	ldr	r0, [r4, #20]
  8be0a0:	e3500000 	cmp	r0, #0
  8be0a4:	0a000000 	beq	8be0ac <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x4a4>
  8be0a8:	ebe6b231 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be0ac:	e5940004 	ldr	r0, [r4, #4]
  8be0b0:	e3500000 	cmp	r0, #0
  8be0b4:	0a000000 	beq	8be0bc <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x4b4>
  8be0b8:	ebe6b48b 	bl	26b2ec <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_weak_release()@@Base>
  8be0bc:	e1a00004 	mov	r0, r4
  8be0c0:	ebe64872 	bl	250290 <operator delete(void*)@plt>
  8be0c4:	eaffffeb 	b	8be078 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x470>
  8be0c8:	ebe64384 	bl	24eee0 <__cxa_begin_catch@plt>
  8be0cc:	e1a00004 	mov	r0, r4
  8be0d0:	ebffdbf3 	bl	8b50a4 <netflix::Console::Filters::~Filters()@@Base>
  8be0d4:	e1a00004 	mov	r0, r4
  8be0d8:	ebe6486c 	bl	250290 <operator delete(void*)@plt>
  8be0dc:	ebe6478a 	bl	24ff0c <__cxa_rethrow@plt>
  8be0e0:	e3a03002 	mov	r3, #2
  8be0e4:	e5803008 	str	r3, [r0, #8]
  8be0e8:	eaffff67 	b	8bde8c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x284>
  8be0ec:	ebe64e49 	bl	251a18 <__cxa_end_catch@plt>
  8be0f0:	eaffffe0 	b	8be078 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x470>
  8be0f4:	ebe64379 	bl	24eee0 <__cxa_begin_catch@plt>
  8be0f8:	e28d5018 	add	r5, sp, #24
  8be0fc:	e154000a 	cmp	r4, sl
  8be100:	0a000009 	beq	8be12c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x524>
  8be104:	e49a0004 	ldr	r0, [sl], #4
  8be108:	e1a01005 	mov	r1, r5
  8be10c:	e240000c 	sub	r0, r0, #12
  8be110:	ebe64720 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8be114:	eafffff8 	b	8be0fc <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x4f4>
  8be118:	e5952004 	ldr	r2, [r5, #4]
  8be11c:	e1a03004 	mov	r3, r4
  8be120:	e2822001 	add	r2, r2, #1
  8be124:	e5852004 	str	r2, [r5, #4]
  8be128:	eaffff21 	b	8bddb4 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x1ac>
  8be12c:	ebe64776 	bl	24ff0c <__cxa_rethrow@plt>
  8be130:	e3550000 	cmp	r5, #0
  8be134:	0affffd3 	beq	8be088 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x480>
  8be138:	e1a00005 	mov	r0, r5
  8be13c:	ebe6b20c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be140:	eaffffd0 	b	8be088 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x480>
  8be144:	e1a00004 	mov	r0, r4
  8be148:	e3a01001 	mov	r1, #1
  8be14c:	eb00fc42 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  8be150:	e59d0014 	ldr	r0, [sp, #20]
  8be154:	e3500000 	cmp	r0, #0
  8be158:	0a000000 	beq	8be160 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x558>
  8be15c:	ebe6b204 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be160:	e3550000 	cmp	r5, #0
  8be164:	0affffc3 	beq	8be078 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x470>
  8be168:	e1a00005 	mov	r0, r5
  8be16c:	ebe6b200 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be170:	eaffffc0 	b	8be078 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x470>
  8be174:	ebe64e27 	bl	251a18 <__cxa_end_catch@plt>
  8be178:	e59d0020 	ldr	r0, [sp, #32]
  8be17c:	e3500000 	cmp	r0, #0
  8be180:	0affffb5 	beq	8be05c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x454>
  8be184:	ebe64841 	bl	250290 <operator delete(void*)@plt>
  8be188:	eaffffb3 	b	8be05c <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x454>
  8be18c:	eaffffef 	b	8be150 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x548>
  8be190:	ebe6b134 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  8be194:	ebe6b133 	bl	26a668 <std::__throw_bad_weak_ptr()@@Base>
  8be198:	e5953004 	ldr	r3, [r5, #4]
  8be19c:	e2833001 	add	r3, r3, #1
  8be1a0:	e5853004 	str	r3, [r5, #4]
  8be1a4:	eaffff5e 	b	8bdf24 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x31c>
  8be1a8:	eaffffec 	b	8be160 <GrepCommand::invoke(netflix::Console::Command::Arguments const&) const@@Base+0x558>
  8be1ac:	001694e0 	andseq	r9, r6, r0, ror #9
  8be1b0:	00003440 	andeq	r3, r0, r0, asr #8
  8be1b4:	000037dc 	ldrdeq	r3, [r0], -ip
  8be1b8:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  8be1bc:	0000235c 	andeq	r2, r0, ip, asr r3
  8be1c0:	00001b7c 	andeq	r1, r0, ip, ror fp
  8be1c4:	000dd900 	andeq	sp, sp, r0, lsl #18

008be1c8 <netflix::Console::Filters::Scope::~Scope()@@Base>:
  8be1c8:	e59f3070 	ldr	r3, [pc, #112]	@ 8be240 <netflix::Console::Filters::Scope::~Scope()@@Base+0x78>
  8be1cc:	e59f2070 	ldr	r2, [pc, #112]	@ 8be244 <netflix::Console::Filters::Scope::~Scope()@@Base+0x7c>
  8be1d0:	e08f3003 	add	r3, pc, r3
  8be1d4:	e92d4030 	push	{r4, r5, lr}
  8be1d8:	e1a04000 	mov	r4, r0
  8be1dc:	e7935002 	ldr	r5, [r3, r2]
  8be1e0:	e24dd00c 	sub	sp, sp, #12
  8be1e4:	e5900008 	ldr	r0, [r0, #8]
  8be1e8:	e5953000 	ldr	r3, [r5]
  8be1ec:	e3500000 	cmp	r0, #0
  8be1f0:	e58d3004 	str	r3, [sp, #4]
  8be1f4:	0a000001 	beq	8be200 <netflix::Console::Filters::Scope::~Scope()@@Base+0x38>
  8be1f8:	e1a01004 	mov	r1, r4
  8be1fc:	ebe860f1 	bl	2d65c8 <netflix::Console::Filters::end(std::shared_ptr<netflix::Console> const&)@@Base>
  8be200:	e594000c 	ldr	r0, [r4, #12]
  8be204:	e3500000 	cmp	r0, #0
  8be208:	0a000000 	beq	8be210 <netflix::Console::Filters::Scope::~Scope()@@Base+0x48>
  8be20c:	ebe6b1d8 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be210:	e5940004 	ldr	r0, [r4, #4]
  8be214:	e3500000 	cmp	r0, #0
  8be218:	0a000000 	beq	8be220 <netflix::Console::Filters::Scope::~Scope()@@Base+0x58>
  8be21c:	ebe6b1d4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  8be220:	e59d2004 	ldr	r2, [sp, #4]
  8be224:	e1a00004 	mov	r0, r4
  8be228:	e5953000 	ldr	r3, [r5]
  8be22c:	e1520003 	cmp	r2, r3
  8be230:	1a000001 	bne	8be23c <netflix::Console::Filters::Scope::~Scope()@@Base+0x74>
  8be234:	e28dd00c 	add	sp, sp, #12
  8be238:	e8bd8030 	pop	{r4, r5, pc}
  8be23c:	ebe64294 	bl	24ec94 <__stack_chk_fail@plt>
  8be240:	00168f30 	andseq	r8, r6, r0, lsr pc
  8be244:	00003440 	andeq	r3, r0, r0, asr #8
