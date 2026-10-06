
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

008a5d48 <netflix::Console::shellTokenize(std::string const&)@@Base>:
  8a5d48:	e59f3498 	ldr	r3, [pc, #1176]	@ 8a61e8 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4a0>
  8a5d4c:	e59f2498 	ldr	r2, [pc, #1176]	@ 8a61ec <netflix::Console::shellTokenize(std::string const&)@@Base+0x4a4>
  8a5d50:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  8a5d54:	e08f3003 	add	r3, pc, r3
  8a5d58:	e24dd03c 	sub	sp, sp, #60	@ 0x3c
  8a5d5c:	e3a0a000 	mov	sl, #0
  8a5d60:	e28d9020 	add	r9, sp, #32
  8a5d64:	e58d0004 	str	r0, [sp, #4]
  8a5d68:	e7932002 	ldr	r2, [r3, r2]
  8a5d6c:	e1a00009 	mov	r0, r9
  8a5d70:	e5923000 	ldr	r3, [r2]
  8a5d74:	e58d2014 	str	r2, [sp, #20]
  8a5d78:	e58d3034 	str	r3, [sp, #52]	@ 0x34
  8a5d7c:	ebe6aac0 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  8a5d80:	e59d0020 	ldr	r0, [sp, #32]
  8a5d84:	e59d1004 	ldr	r1, [sp, #4]
  8a5d88:	e510500c 	ldr	r5, [r0, #-12]
  8a5d8c:	e581a000 	str	sl, [r1]
  8a5d90:	e155000a 	cmp	r5, sl
  8a5d94:	e581a004 	str	sl, [r1, #4]
  8a5d98:	e581a008 	str	sl, [r1, #8]
  8a5d9c:	da0000dc 	ble	8a6114 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3cc>
  8a5da0:	e59f2448 	ldr	r2, [pc, #1096]	@ 8a61f0 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4a8>
  8a5da4:	e28d302c 	add	r3, sp, #44	@ 0x2c
  8a5da8:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a5dac:	e1a0b000 	mov	fp, r0
  8a5db0:	e08f2002 	add	r2, pc, r2
  8a5db4:	e58d300c 	str	r3, [sp, #12]
  8a5db8:	e58d2010 	str	r2, [sp, #16]
  8a5dbc:	e1a0400a 	mov	r4, sl
  8a5dc0:	e58d1008 	str	r1, [sp, #8]
  8a5dc4:	e3e07000 	mvn	r7, #0
  8a5dc8:	ea000026 	b	8a5e68 <netflix::Console::shellTokenize(std::string const&)@@Base+0x120>
  8a5dcc:	e3770001 	cmn	r7, #1
  8a5dd0:	0a00000f 	beq	8a5e14 <netflix::Console::shellTokenize(std::string const&)@@Base+0xcc>
  8a5dd4:	e51b200c 	ldr	r2, [fp, #-12]
  8a5dd8:	e0673004 	rsb	r3, r7, r4
  8a5ddc:	e1570002 	cmp	r7, r2
  8a5de0:	8a0000e9 	bhi	8a618c <netflix::Console::shellTokenize(std::string const&)@@Base+0x444>
  8a5de4:	e28d6024 	add	r6, sp, #36	@ 0x24
  8a5de8:	e1a02007 	mov	r2, r7
  8a5dec:	e1a01009 	mov	r1, r9
  8a5df0:	e1a00006 	mov	r0, r6
  8a5df4:	ebe6b051 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  8a5df8:	e59d0004 	ldr	r0, [sp, #4]
  8a5dfc:	e1a01006 	mov	r1, r6
  8a5e00:	ebed7f8b 	bl	405c34 <void std::vector<std::string, std::allocator<std::string> >::emplace_back<std::string>(std::string&&)@@Base>
  8a5e04:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8a5e08:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a5e0c:	e240000c 	sub	r0, r0, #12
  8a5e10:	ebe6a7e0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a5e14:	e28d6028 	add	r6, sp, #40	@ 0x28
  8a5e18:	e59d1010 	ldr	r1, [sp, #16]
  8a5e1c:	e28d202c 	add	r2, sp, #44	@ 0x2c
  8a5e20:	e1a00006 	mov	r0, r6
  8a5e24:	ebe6af43 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  8a5e28:	e59d0004 	ldr	r0, [sp, #4]
  8a5e2c:	e1a01006 	mov	r1, r6
  8a5e30:	ebed7f7f 	bl	405c34 <void std::vector<std::string, std::allocator<std::string> >::emplace_back<std::string>(std::string&&)@@Base>
  8a5e34:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8a5e38:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a5e3c:	e2844001 	add	r4, r4, #1
  8a5e40:	e3e07000 	mvn	r7, #0
  8a5e44:	e240000c 	sub	r0, r0, #12
  8a5e48:	ebe6a7d2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a5e4c:	e1540005 	cmp	r4, r5
  8a5e50:	aa000090 	bge	8a6098 <netflix::Console::shellTokenize(std::string const&)@@Base+0x350>
  8a5e54:	e59db020 	ldr	fp, [sp, #32]
  8a5e58:	e1a0a004 	mov	sl, r4
  8a5e5c:	e51b200c 	ldr	r2, [fp, #-12]
  8a5e60:	e1540002 	cmp	r4, r2
  8a5e64:	2a0000b6 	bcs	8a6144 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3fc>
  8a5e68:	e51b2004 	ldr	r2, [fp, #-4]
  8a5e6c:	e3520000 	cmp	r2, #0
  8a5e70:	ba000002 	blt	8a5e80 <netflix::Console::shellTokenize(std::string const&)@@Base+0x138>
  8a5e74:	e1a00009 	mov	r0, r9
  8a5e78:	ebe6a2d7 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a5e7c:	e59db020 	ldr	fp, [sp, #32]
  8a5e80:	e7db800a 	ldrb	r8, [fp, sl]
  8a5e84:	e358007c 	cmp	r8, #124	@ 0x7c
  8a5e88:	0affffcf 	beq	8a5dcc <netflix::Console::shellTokenize(std::string const&)@@Base+0x84>
  8a5e8c:	e51b200c 	ldr	r2, [fp, #-12]
  8a5e90:	e15a0002 	cmp	sl, r2
  8a5e94:	2a0000c9 	bcs	8a61c0 <netflix::Console::shellTokenize(std::string const&)@@Base+0x478>
  8a5e98:	e51b2004 	ldr	r2, [fp, #-4]
  8a5e9c:	e3520000 	cmp	r2, #0
  8a5ea0:	ba000003 	blt	8a5eb4 <netflix::Console::shellTokenize(std::string const&)@@Base+0x16c>
  8a5ea4:	e1a00009 	mov	r0, r9
  8a5ea8:	ebe6a2cb 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a5eac:	e59db020 	ldr	fp, [sp, #32]
  8a5eb0:	e7db800a 	ldrb	r8, [fp, sl]
  8a5eb4:	e1a00008 	mov	r0, r8
  8a5eb8:	ebe6a70e 	bl	24faf8 <isspace@plt>
  8a5ebc:	e3500000 	cmp	r0, #0
  8a5ec0:	0a000017 	beq	8a5f24 <netflix::Console::shellTokenize(std::string const&)@@Base+0x1dc>
  8a5ec4:	e3770001 	cmn	r7, #1
  8a5ec8:	0a00000e 	beq	8a5f08 <netflix::Console::shellTokenize(std::string const&)@@Base+0x1c0>
  8a5ecc:	e51b200c 	ldr	r2, [fp, #-12]
  8a5ed0:	e0673004 	rsb	r3, r7, r4
  8a5ed4:	e1570002 	cmp	r7, r2
  8a5ed8:	8a0000b5 	bhi	8a61b4 <netflix::Console::shellTokenize(std::string const&)@@Base+0x46c>
  8a5edc:	e1a02007 	mov	r2, r7
  8a5ee0:	e28d002c 	add	r0, sp, #44	@ 0x2c
  8a5ee4:	e1a01009 	mov	r1, r9
  8a5ee8:	ebe6b014 	bl	251f40 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned int, unsigned int)@plt>
  8a5eec:	e59d0004 	ldr	r0, [sp, #4]
  8a5ef0:	e28d102c 	add	r1, sp, #44	@ 0x2c
  8a5ef4:	ebed7f4e 	bl	405c34 <void std::vector<std::string, std::allocator<std::string> >::emplace_back<std::string>(std::string&&)@@Base>
  8a5ef8:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  8a5efc:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a5f00:	e240000c 	sub	r0, r0, #12
  8a5f04:	ebe6a7a3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a5f08:	e2844001 	add	r4, r4, #1
  8a5f0c:	e1540005 	cmp	r4, r5
  8a5f10:	ba000015 	blt	8a5f6c <netflix::Console::shellTokenize(std::string const&)@@Base+0x224>
  8a5f14:	e1540005 	cmp	r4, r5
  8a5f18:	0a00009e 	beq	8a6198 <netflix::Console::shellTokenize(std::string const&)@@Base+0x450>
  8a5f1c:	e3e07000 	mvn	r7, #0
  8a5f20:	eaffffc9 	b	8a5e4c <netflix::Console::shellTokenize(std::string const&)@@Base+0x104>
  8a5f24:	e51b200c 	ldr	r2, [fp, #-12]
  8a5f28:	e15a0002 	cmp	sl, r2
  8a5f2c:	2a0000aa 	bcs	8a61dc <netflix::Console::shellTokenize(std::string const&)@@Base+0x494>
  8a5f30:	e51b2004 	ldr	r2, [fp, #-4]
  8a5f34:	e3520000 	cmp	r2, #0
  8a5f38:	ba000003 	blt	8a5f4c <netflix::Console::shellTokenize(std::string const&)@@Base+0x204>
  8a5f3c:	e1a00009 	mov	r0, r9
  8a5f40:	ebe6a2a5 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a5f44:	e59db020 	ldr	fp, [sp, #32]
  8a5f48:	e7db800a 	ldrb	r8, [fp, sl]
  8a5f4c:	e3580022 	cmp	r8, #34	@ 0x22
  8a5f50:	0a000023 	beq	8a5fe4 <netflix::Console::shellTokenize(std::string const&)@@Base+0x29c>
  8a5f54:	e3580027 	cmp	r8, #39	@ 0x27
  8a5f58:	0a000021 	beq	8a5fe4 <netflix::Console::shellTokenize(std::string const&)@@Base+0x29c>
  8a5f5c:	e3770001 	cmn	r7, #1
  8a5f60:	01a07004 	moveq	r7, r4
  8a5f64:	e2844001 	add	r4, r4, #1
  8a5f68:	eaffffb7 	b	8a5e4c <netflix::Console::shellTokenize(std::string const&)@@Base+0x104>
  8a5f6c:	e59db020 	ldr	fp, [sp, #32]
  8a5f70:	e51b200c 	ldr	r2, [fp, #-12]
  8a5f74:	e1540002 	cmp	r4, r2
  8a5f78:	2a000067 	bcs	8a611c <netflix::Console::shellTokenize(std::string const&)@@Base+0x3d4>
  8a5f7c:	e51b2004 	ldr	r2, [fp, #-4]
  8a5f80:	e3520000 	cmp	r2, #0
  8a5f84:	ba000002 	blt	8a5f94 <netflix::Console::shellTokenize(std::string const&)@@Base+0x24c>
  8a5f88:	e1a00009 	mov	r0, r9
  8a5f8c:	ebe6a292 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a5f90:	e59db020 	ldr	fp, [sp, #32]
  8a5f94:	e7db0004 	ldrb	r0, [fp, r4]
  8a5f98:	ebe6a6d6 	bl	24faf8 <isspace@plt>
  8a5f9c:	e3500000 	cmp	r0, #0
  8a5fa0:	0affffdb 	beq	8a5f14 <netflix::Console::shellTokenize(std::string const&)@@Base+0x1cc>
  8a5fa4:	e2844001 	add	r4, r4, #1
  8a5fa8:	e1540005 	cmp	r4, r5
  8a5fac:	1affffef 	bne	8a5f70 <netflix::Console::shellTokenize(std::string const&)@@Base+0x228>
  8a5fb0:	e28d4030 	add	r4, sp, #48	@ 0x30
  8a5fb4:	e1a0000b 	mov	r0, fp
  8a5fb8:	e240000c 	sub	r0, r0, #12
  8a5fbc:	e1a01004 	mov	r1, r4
  8a5fc0:	ebe6a774 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a5fc4:	e59d1014 	ldr	r1, [sp, #20]
  8a5fc8:	e59d2034 	ldr	r2, [sp, #52]	@ 0x34
  8a5fcc:	e59d0004 	ldr	r0, [sp, #4]
  8a5fd0:	e5913000 	ldr	r3, [r1]
  8a5fd4:	e1520003 	cmp	r2, r3
  8a5fd8:	1a00007e 	bne	8a61d8 <netflix::Console::shellTokenize(std::string const&)@@Base+0x490>
  8a5fdc:	e28dd03c 	add	sp, sp, #60	@ 0x3c
  8a5fe0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  8a5fe4:	e3770001 	cmn	r7, #1
  8a5fe8:	e51b200c 	ldr	r2, [fp, #-12]
  8a5fec:	01a07004 	moveq	r7, r4
  8a5ff0:	e15a0002 	cmp	sl, r2
  8a5ff4:	2a000074 	bcs	8a61cc <netflix::Console::shellTokenize(std::string const&)@@Base+0x484>
  8a5ff8:	e51b2004 	ldr	r2, [fp, #-4]
  8a5ffc:	e3520000 	cmp	r2, #0
  8a6000:	ba000003 	blt	8a6014 <netflix::Console::shellTokenize(std::string const&)@@Base+0x2cc>
  8a6004:	e1a00009 	mov	r0, r9
  8a6008:	ebe6a273 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a600c:	e59db020 	ldr	fp, [sp, #32]
  8a6010:	e7db800a 	ldrb	r8, [fp, sl]
  8a6014:	e3a02000 	mov	r2, #0
  8a6018:	e58d2000 	str	r2, [sp]
  8a601c:	ea000004 	b	8a6034 <netflix::Console::shellTokenize(std::string const&)@@Base+0x2ec>
  8a6020:	e1520008 	cmp	r2, r8
  8a6024:	13a02000 	movne	r2, #0
  8a6028:	158d2000 	strne	r2, [sp]
  8a602c:	0a000013 	beq	8a6080 <netflix::Console::shellTokenize(std::string const&)@@Base+0x338>
  8a6030:	e1a04006 	mov	r4, r6
  8a6034:	e2846001 	add	r6, r4, #1
  8a6038:	e1560005 	cmp	r6, r5
  8a603c:	aa000015 	bge	8a6098 <netflix::Console::shellTokenize(std::string const&)@@Base+0x350>
  8a6040:	e51b200c 	ldr	r2, [fp, #-12]
  8a6044:	e1560002 	cmp	r6, r2
  8a6048:	2a00002d 	bcs	8a6104 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3bc>
  8a604c:	e51b2004 	ldr	r2, [fp, #-4]
  8a6050:	e3520000 	cmp	r2, #0
  8a6054:	ba000002 	blt	8a6064 <netflix::Console::shellTokenize(std::string const&)@@Base+0x31c>
  8a6058:	e1a00009 	mov	r0, r9
  8a605c:	ebe6a25e 	bl	24e9dc <std::string::_M_leak_hard()@plt>
  8a6060:	e59db020 	ldr	fp, [sp, #32]
  8a6064:	e7db2006 	ldrb	r2, [fp, r6]
  8a6068:	e352005c 	cmp	r2, #92	@ 0x5c
  8a606c:	1affffeb 	bne	8a6020 <netflix::Console::shellTokenize(std::string const&)@@Base+0x2d8>
  8a6070:	e59d3000 	ldr	r3, [sp]
  8a6074:	e2833001 	add	r3, r3, #1
  8a6078:	e58d3000 	str	r3, [sp]
  8a607c:	eaffffeb 	b	8a6030 <netflix::Console::shellTokenize(std::string const&)@@Base+0x2e8>
  8a6080:	e59d1000 	ldr	r1, [sp]
  8a6084:	e3110001 	tst	r1, #1
  8a6088:	0a000013 	beq	8a60dc <netflix::Console::shellTokenize(std::string const&)@@Base+0x394>
  8a608c:	e3a03000 	mov	r3, #0
  8a6090:	e58d3000 	str	r3, [sp]
  8a6094:	eaffffe5 	b	8a6030 <netflix::Console::shellTokenize(std::string const&)@@Base+0x2e8>
  8a6098:	e3770001 	cmn	r7, #1
  8a609c:	0a00001b 	beq	8a6110 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3c8>
  8a60a0:	e28d4030 	add	r4, sp, #48	@ 0x30
  8a60a4:	e1a01009 	mov	r1, r9
  8a60a8:	e1a02007 	mov	r2, r7
  8a60ac:	e3e03000 	mvn	r3, #0
  8a60b0:	e1a00004 	mov	r0, r4
  8a60b4:	ebe6ae90 	bl	251afc <std::string::substr(unsigned int, unsigned int) const@plt>
  8a60b8:	e59d0004 	ldr	r0, [sp, #4]
  8a60bc:	e1a01004 	mov	r1, r4
  8a60c0:	ebed7edb 	bl	405c34 <void std::vector<std::string, std::allocator<std::string> >::emplace_back<std::string>(std::string&&)@@Base>
  8a60c4:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  8a60c8:	e28d102c 	add	r1, sp, #44	@ 0x2c
  8a60cc:	e240000c 	sub	r0, r0, #12
  8a60d0:	ebe6a730 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a60d4:	e59d0020 	ldr	r0, [sp, #32]
  8a60d8:	eaffffb6 	b	8a5fb8 <netflix::Console::shellTokenize(std::string const&)@@Base+0x270>
  8a60dc:	e1a01006 	mov	r1, r6
  8a60e0:	e1a00009 	mov	r0, r9
  8a60e4:	e3a02001 	mov	r2, #1
  8a60e8:	ebe6ad75 	bl	2516c4 <std::string::erase(unsigned int, unsigned int)@plt>
  8a60ec:	e1a00009 	mov	r0, r9
  8a60f0:	e1a0100a 	mov	r1, sl
  8a60f4:	e3a02001 	mov	r2, #1
  8a60f8:	ebe6ad71 	bl	2516c4 <std::string::erase(unsigned int, unsigned int)@plt>
  8a60fc:	e2455002 	sub	r5, r5, #2
  8a6100:	eaffff51 	b	8a5e4c <netflix::Console::shellTokenize(std::string const&)@@Base+0x104>
  8a6104:	e59f00e8 	ldr	r0, [pc, #232]	@ 8a61f4 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4ac>
  8a6108:	e08f0000 	add	r0, pc, r0
  8a610c:	ebe6a87d 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a6110:	e59d0020 	ldr	r0, [sp, #32]
  8a6114:	e28d4030 	add	r4, sp, #48	@ 0x30
  8a6118:	eaffffa6 	b	8a5fb8 <netflix::Console::shellTokenize(std::string const&)@@Base+0x270>
  8a611c:	e59f00d4 	ldr	r0, [pc, #212]	@ 8a61f8 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4b0>
  8a6120:	e08f0000 	add	r0, pc, r0
  8a6124:	ebe6a877 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a6128:	e59d0004 	ldr	r0, [sp, #4]
  8a612c:	ebe76d6a 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  8a6130:	e59d0020 	ldr	r0, [sp, #32]
  8a6134:	e28d101c 	add	r1, sp, #28
  8a6138:	e240000c 	sub	r0, r0, #12
  8a613c:	ebe6a715 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a6140:	ebe6a7b9 	bl	25002c <__cxa_end_cleanup@plt>
  8a6144:	e59f00b0 	ldr	r0, [pc, #176]	@ 8a61fc <netflix::Console::shellTokenize(std::string const&)@@Base+0x4b4>
  8a6148:	e08f0000 	add	r0, pc, r0
  8a614c:	ebe6a86d 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a6150:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  8a6154:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a6158:	e240000c 	sub	r0, r0, #12
  8a615c:	ebe6a70d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a6160:	eafffff0 	b	8a6128 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3e0>
  8a6164:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  8a6168:	e28d102c 	add	r1, sp, #44	@ 0x2c
  8a616c:	e240000c 	sub	r0, r0, #12
  8a6170:	ebe6a708 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a6174:	eaffffeb 	b	8a6128 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3e0>
  8a6178:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  8a617c:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a6180:	e240000c 	sub	r0, r0, #12
  8a6184:	ebe6a703 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a6188:	eaffffe6 	b	8a6128 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3e0>
  8a618c:	e59f006c 	ldr	r0, [pc, #108]	@ 8a6200 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4b8>
  8a6190:	e08f0000 	add	r0, pc, r0
  8a6194:	ebe6a85b 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a6198:	e59db020 	ldr	fp, [sp, #32]
  8a619c:	eaffff83 	b	8a5fb0 <netflix::Console::shellTokenize(std::string const&)@@Base+0x268>
  8a61a0:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  8a61a4:	e28d1030 	add	r1, sp, #48	@ 0x30
  8a61a8:	e240000c 	sub	r0, r0, #12
  8a61ac:	ebe6a6f9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  8a61b0:	eaffffdc 	b	8a6128 <netflix::Console::shellTokenize(std::string const&)@@Base+0x3e0>
  8a61b4:	e59f0048 	ldr	r0, [pc, #72]	@ 8a6204 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4bc>
  8a61b8:	e08f0000 	add	r0, pc, r0
  8a61bc:	ebe6a851 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a61c0:	e59f0040 	ldr	r0, [pc, #64]	@ 8a6208 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4c0>
  8a61c4:	e08f0000 	add	r0, pc, r0
  8a61c8:	ebe6a84e 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a61cc:	e59f0038 	ldr	r0, [pc, #56]	@ 8a620c <netflix::Console::shellTokenize(std::string const&)@@Base+0x4c4>
  8a61d0:	e08f0000 	add	r0, pc, r0
  8a61d4:	ebe6a84b 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a61d8:	ebe6a2ad 	bl	24ec94 <__stack_chk_fail@plt>
  8a61dc:	e59f002c 	ldr	r0, [pc, #44]	@ 8a6210 <netflix::Console::shellTokenize(std::string const&)@@Base+0x4c8>
  8a61e0:	e08f0000 	add	r0, pc, r0
  8a61e4:	ebe6a847 	bl	250308 <std::__throw_out_of_range(char const*)@plt>
  8a61e8:	001813ac 	andseq	r1, r8, ip, lsr #7
  8a61ec:	00003440 	andeq	r3, r0, r0, asr #8
  8a61f0:	000a80e8 	andeq	r8, sl, r8, ror #1
  8a61f4:	0009a7b0 			@ <UNDEFINED> instruction: 0x0009a7b0
  8a61f8:	0009a798 	muleq	r9, r8, r7
  8a61fc:	0009a770 	andeq	sl, r9, r0, ror r7
  8a6200:	0009f44c 	andeq	pc, r9, ip, asr #8
  8a6204:	0009f424 	andeq	pc, r9, r4, lsr #8
  8a6208:	0009a6f4 	strdeq	sl, [r9], -r4
  8a620c:	0009a6e8 	andeq	sl, r9, r8, ror #13
  8a6210:	0009a6d8 	ldrdeq	sl, [r9], -r8
