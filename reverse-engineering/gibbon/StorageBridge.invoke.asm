
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

0057de90 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base>:
  57de90:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  57de94:	e24ddfdf 	sub	sp, sp, #892	@ 0x37c
  57de98:	e59fbf9c 	ldr	fp, [pc, #3996]	@ 57ee3c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfac>
  57de9c:	e1a07003 	mov	r7, r3
  57dea0:	e59fcf98 	ldr	ip, [pc, #3992]	@ 57ee40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfb0>
  57dea4:	e28d4e2d 	add	r4, sp, #720	@ 0x2d0
  57dea8:	e08fb00b 	add	fp, pc, fp
  57deac:	e58d0014 	str	r0, [sp, #20]
  57deb0:	e28d8fab 	add	r8, sp, #684	@ 0x2ac
  57deb4:	e1a09001 	mov	r9, r1
  57deb8:	e79bc00c 	ldr	ip, [fp, ip]
  57debc:	e1a05002 	mov	r5, r2
  57dec0:	e59f1f7c 	ldr	r1, [pc, #3964]	@ 57ee44 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfb4>
  57dec4:	e1a00004 	mov	r0, r4
  57dec8:	e1a02008 	mov	r2, r8
  57decc:	e59c3000 	ldr	r3, [ip]
  57ded0:	e08f1001 	add	r1, pc, r1
  57ded4:	e58dc024 	str	ip, [sp, #36]	@ 0x24
  57ded8:	e58d3374 	str	r3, [sp, #884]	@ 0x374
  57dedc:	ebf34f15 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57dee0:	e5973000 	ldr	r3, [r7]
  57dee4:	e3530003 	cmp	r3, #3
  57dee8:	0a000731 	beq	57fbb4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1d24>
  57deec:	e3e06000 	mvn	r6, #0
  57def0:	e58d6020 	str	r6, [sp, #32]
  57def4:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57def8:	e28d6fae 	add	r6, sp, #696	@ 0x2b8
  57defc:	e240000c 	sub	r0, r0, #12
  57df00:	e1a01006 	mov	r1, r6
  57df04:	ebf347a3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57df08:	e2453002 	sub	r3, r5, #2
  57df0c:	e3a02000 	mov	r2, #0
  57df10:	e58d2328 	str	r2, [sp, #808]	@ 0x328
  57df14:	e353000f 	cmp	r3, #15
  57df18:	908ff103 	addls	pc, pc, r3, lsl #2
  57df1c:	ea00073c 	b	57fc14 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1d84>
  57df20:	ea000062 	b	57e0b0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x220>
  57df24:	ea0000a0 	b	57e1ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x31c>
  57df28:	ea0001ab 	b	57e5dc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x74c>
  57df2c:	ea00021e 	b	57e7ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x91c>
  57df30:	ea00026b 	b	57e8e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xa54>
  57df34:	ea0002d0 	b	57ea7c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbec>
  57df38:	ea000314 	b	57eb90 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xd00>
  57df3c:	ea000372 	b	57ed0c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe7c>
  57df40:	ea000405 	b	57ef5c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10cc>
  57df44:	ea000456 	b	57f0a4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1214>
  57df48:	ea000552 	b	57f498 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1608>
  57df4c:	ea0005ac 	b	57f604 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1774>
  57df50:	ea000609 	b	57f77c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x18ec>
  57df54:	ea000677 	b	57f938 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1aa8>
  57df58:	ea000710 	b	57fba0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1d10>
  57df5c:	eaffffff 	b	57df60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xd0>
  57df60:	e28d6fa2 	add	r6, sp, #648	@ 0x288
  57df64:	e5991080 	ldr	r1, [r9, #128]	@ 0x80
  57df68:	e58d602c 	str	r6, [sp, #44]	@ 0x2c
  57df6c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57df70:	e1a00006 	mov	r0, r6
  57df74:	eb016f5b 	bl	5d9ce8 <netflix::DiskStore::allFiles() const@@Base>
  57df78:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57df7c:	e1a00005 	mov	r0, r5
  57df80:	ebf3b2be 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57df84:	e3a00014 	mov	r0, #20
  57df88:	e3a03000 	mov	r3, #0
  57df8c:	e3a02002 	mov	r2, #2
  57df90:	e58d32a0 	str	r3, [sp, #672]	@ 0x2a0
  57df94:	e58d2328 	str	r2, [sp, #808]	@ 0x328
  57df98:	e58d32a4 	str	r3, [sp, #676]	@ 0x2a4
  57df9c:	e58d32a8 	str	r3, [sp, #680]	@ 0x2a8
  57dfa0:	ebf3434a 	bl	24ecd0 <operator new(unsigned int)@plt>
  57dfa4:	e59f1e9c 	ldr	r1, [pc, #3740]	@ 57ee48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfb8>
  57dfa8:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  57dfac:	e58d7018 	str	r7, [sp, #24]
  57dfb0:	e1a04000 	mov	r4, r0
  57dfb4:	e59f3e90 	ldr	r3, [pc, #3728]	@ 57ee4c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfbc>
  57dfb8:	e3a02001 	mov	r2, #1
  57dfbc:	e79b1001 	ldr	r1, [fp, r1]
  57dfc0:	e5842004 	str	r2, [r4, #4]
  57dfc4:	e58d1020 	str	r1, [sp, #32]
  57dfc8:	e1a01007 	mov	r1, r7
  57dfcc:	e79b3003 	ldr	r3, [fp, r3]
  57dfd0:	e2833008 	add	r3, r3, #8
  57dfd4:	e4803008 	str	r3, [r0], #8
  57dfd8:	ebf44960 	bl	290560 <std::vector<netflix::Variant, std::allocator<netflix::Variant> >::vector(std::vector<netflix::Variant, std::allocator<netflix::Variant> > const&)@@Base>
  57dfdc:	e59d0018 	ldr	r0, [sp, #24]
  57dfe0:	e58d4330 	str	r4, [sp, #816]	@ 0x330
  57dfe4:	ebf448ba 	bl	2902d4 <std::vector<netflix::Variant, std::allocator<netflix::Variant> >::~vector()@@Base>
  57dfe8:	e59d9330 	ldr	r9, [sp, #816]	@ 0x330
  57dfec:	e59d4288 	ldr	r4, [sp, #648]	@ 0x288
  57dff0:	e59d028c 	ldr	r0, [sp, #652]	@ 0x28c
  57dff4:	e599c008 	ldr	ip, [r9, #8]
  57dff8:	e599600c 	ldr	r6, [r9, #12]
  57dffc:	e0642000 	rsb	r2, r4, r0
  57e000:	e06c3006 	rsb	r3, ip, r6
  57e004:	e1a02142 	asr	r2, r2, #2
  57e008:	e1a031c3 	asr	r3, r3, #3
  57e00c:	e0831103 	add	r1, r3, r3, lsl #2
  57e010:	e0811201 	add	r1, r1, r1, lsl #4
  57e014:	e0811401 	add	r1, r1, r1, lsl #8
  57e018:	e0811801 	add	r1, r1, r1, lsl #16
  57e01c:	e0831081 	add	r1, r3, r1, lsl #1
  57e020:	e1520001 	cmp	r2, r1
  57e024:	8a00080b 	bhi	580058 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x21c8>
  57e028:	2a00000c 	bcs	57e060 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1d0>
  57e02c:	e0822082 	add	r2, r2, r2, lsl #1
  57e030:	e08c7182 	add	r7, ip, r2, lsl #3
  57e034:	e1560007 	cmp	r6, r7
  57e038:	0a000007 	beq	57e05c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1cc>
  57e03c:	e1a04007 	mov	r4, r7
  57e040:	e1a00004 	mov	r0, r4
  57e044:	e2844018 	add	r4, r4, #24
  57e048:	ebf3b28c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57e04c:	e1560004 	cmp	r6, r4
  57e050:	1afffffa 	bne	57e040 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1b0>
  57e054:	e59d4288 	ldr	r4, [sp, #648]	@ 0x288
  57e058:	e59d028c 	ldr	r0, [sp, #652]	@ 0x28c
  57e05c:	e589700c 	str	r7, [r9, #12]
  57e060:	e1540000 	cmp	r4, r0
  57e064:	13a06000 	movne	r6, #0
  57e068:	13a0a001 	movne	sl, #1
  57e06c:	0a00000c 	beq	57e0a4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x214>
  57e070:	e5998008 	ldr	r8, [r9, #8]
  57e074:	e0887006 	add	r7, r8, r6
  57e078:	e1a00007 	mov	r0, r7
  57e07c:	ebf3b27f 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57e080:	e788a006 	str	sl, [r8, r6]
  57e084:	e2870008 	add	r0, r7, #8
  57e088:	e1a01004 	mov	r1, r4
  57e08c:	ebf349fc 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  57e090:	e59d328c 	ldr	r3, [sp, #652]	@ 0x28c
  57e094:	e2844004 	add	r4, r4, #4
  57e098:	e2866018 	add	r6, r6, #24
  57e09c:	e1540003 	cmp	r4, r3
  57e0a0:	1afffff2 	bne	57e070 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1e0>
  57e0a4:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  57e0a8:	ebf40d8b 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  57e0ac:	ea0003e4 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57e0b0:	e28da088 	add	sl, sp, #136	@ 0x88
  57e0b4:	e59f1d94 	ldr	r1, [pc, #3476]	@ 57ee50 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfc0>
  57e0b8:	e1a02006 	mov	r2, r6
  57e0bc:	e58da018 	str	sl, [sp, #24]
  57e0c0:	e08f1001 	add	r1, pc, r1
  57e0c4:	e1a0000a 	mov	r0, sl
  57e0c8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e0cc:	ebf34e99 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e0d0:	e28daf9e 	add	sl, sp, #632	@ 0x278
  57e0d4:	e58da020 	str	sl, [sp, #32]
  57e0d8:	e28da06b 	add	sl, sp, #107	@ 0x6b
  57e0dc:	e28d2088 	add	r2, sp, #136	@ 0x88
  57e0e0:	e1a01007 	mov	r1, r7
  57e0e4:	e59d0020 	ldr	r0, [sp, #32]
  57e0e8:	e1a0300a 	mov	r3, sl
  57e0ec:	ebf93759 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57e0f0:	e59d0088 	ldr	r0, [sp, #136]	@ 0x88
  57e0f4:	e1a01004 	mov	r1, r4
  57e0f8:	e240000c 	sub	r0, r0, #12
  57e0fc:	ebf34725 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e100:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57e104:	e3530000 	cmp	r3, #0
  57e108:	0a0006ff 	beq	57fd0c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1e7c>
  57e10c:	e28d508c 	add	r5, sp, #140	@ 0x8c
  57e110:	e59f1d3c 	ldr	r1, [pc, #3388]	@ 57ee54 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfc4>
  57e114:	e1a02006 	mov	r2, r6
  57e118:	e08f1001 	add	r1, pc, r1
  57e11c:	e1a00005 	mov	r0, r5
  57e120:	ebf34e84 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e124:	e28dcd0a 	add	ip, sp, #640	@ 0x280
  57e128:	e1a02005 	mov	r2, r5
  57e12c:	e1a0300a 	mov	r3, sl
  57e130:	e1a01007 	mov	r1, r7
  57e134:	e1a0000c 	mov	r0, ip
  57e138:	e58dc028 	str	ip, [sp, #40]	@ 0x28
  57e13c:	ebf93745 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57e140:	e59d008c 	ldr	r0, [sp, #140]	@ 0x8c
  57e144:	e1a01004 	mov	r1, r4
  57e148:	e240000c 	sub	r0, r0, #12
  57e14c:	ebf34711 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e150:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57e154:	e3530000 	cmp	r3, #0
  57e158:	1a000853 	bne	5802ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x241c>
  57e15c:	e59f2cf4 	ldr	r2, [pc, #3316]	@ 57ee58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfc8>
  57e160:	e1a00009 	mov	r0, r9
  57e164:	e3a01002 	mov	r1, #2
  57e168:	e08f2002 	add	r2, pc, r2
  57e16c:	ebf97749 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57e170:	e59d7014 	ldr	r7, [sp, #20]
  57e174:	e3a02006 	mov	r2, #6
  57e178:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  57e17c:	e3a03000 	mov	r3, #0
  57e180:	e1a01006 	mov	r1, r6
  57e184:	e5872000 	str	r2, [r7]
  57e188:	e240000c 	sub	r0, r0, #12
  57e18c:	e5c73008 	strb	r3, [r7, #8]
  57e190:	ebf34700 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e194:	e59d0278 	ldr	r0, [sp, #632]	@ 0x278
  57e198:	e1a01006 	mov	r1, r6
  57e19c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e1a0:	e240000c 	sub	r0, r0, #12
  57e1a4:	ebf346fb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e1a8:	ea0003b3 	b	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  57e1ac:	e28da0a4 	add	sl, sp, #164	@ 0xa4
  57e1b0:	e59f1ca4 	ldr	r1, [pc, #3236]	@ 57ee5c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfcc>
  57e1b4:	e1a02008 	mov	r2, r8
  57e1b8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e1bc:	e08f1001 	add	r1, pc, r1
  57e1c0:	e1a0000a 	mov	r0, sl
  57e1c4:	ebf34e5b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e1c8:	e1a00006 	mov	r0, r6
  57e1cc:	e1a01007 	mov	r1, r7
  57e1d0:	e1a0200a 	mov	r2, sl
  57e1d4:	ebf5aa02 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e1d8:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  57e1dc:	e1a01004 	mov	r1, r4
  57e1e0:	e240000c 	sub	r0, r0, #12
  57e1e4:	ebf346eb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e1e8:	e59d32b8 	ldr	r3, [sp, #696]	@ 0x2b8
  57e1ec:	e513300c 	ldr	r3, [r3, #-12]
  57e1f0:	e3530000 	cmp	r3, #0
  57e1f4:	0a000691 	beq	57fc40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1db0>
  57e1f8:	e28da0b0 	add	sl, sp, #176	@ 0xb0
  57e1fc:	e59f1c5c 	ldr	r1, [pc, #3164]	@ 57ee60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfd0>
  57e200:	e1a02008 	mov	r2, r8
  57e204:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e208:	e08f1001 	add	r1, pc, r1
  57e20c:	e1a0000a 	mov	r0, sl
  57e210:	ebf34e48 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e214:	e28d3fde 	add	r3, sp, #888	@ 0x378
  57e218:	e3a02000 	mov	r2, #0
  57e21c:	e1a0100a 	mov	r1, sl
  57e220:	e58d2000 	str	r2, [sp]
  57e224:	e1a00007 	mov	r0, r7
  57e228:	e5232170 	str	r2, [r3, #-368]!	@ 0xfffffe90
  57e22c:	ebf93f69 	bl	3cdfd8 <int netflix::Variant::mapValueImpl<int>(std::string const&, bool*, int const&, std::pair<int, int> const*) const@@Base>
  57e230:	e58d0028 	str	r0, [sp, #40]	@ 0x28
  57e234:	e1a01004 	mov	r1, r4
  57e238:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  57e23c:	e240000c 	sub	r0, r0, #12
  57e240:	ebf346d4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e244:	e59da028 	ldr	sl, [sp, #40]	@ 0x28
  57e248:	e35a0000 	cmp	sl, #0
  57e24c:	da000a15 	ble	580aa8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2c18>
  57e250:	e28da0bc 	add	sl, sp, #188	@ 0xbc
  57e254:	e59f1c08 	ldr	r1, [pc, #3080]	@ 57ee64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfd4>
  57e258:	e1a02008 	mov	r2, r8
  57e25c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e260:	e08f1001 	add	r1, pc, r1
  57e264:	e1a0000a 	mov	r0, sl
  57e268:	ebf34e32 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e26c:	e28d3fde 	add	r3, sp, #888	@ 0x378
  57e270:	e3a02000 	mov	r2, #0
  57e274:	e1a0100a 	mov	r1, sl
  57e278:	e58d2000 	str	r2, [sp]
  57e27c:	e1a00007 	mov	r0, r7
  57e280:	e563230c 	strb	r2, [r3, #-780]!	@ 0xfffffcf4
  57e284:	ebf5ad08 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e288:	e1a05000 	mov	r5, r0
  57e28c:	e59d00bc 	ldr	r0, [sp, #188]	@ 0xbc
  57e290:	e1a01004 	mov	r1, r4
  57e294:	e28da0c0 	add	sl, sp, #192	@ 0xc0
  57e298:	e240000c 	sub	r0, r0, #12
  57e29c:	ebf346bd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e2a0:	e3550000 	cmp	r5, #0
  57e2a4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e2a8:	03a00020 	moveq	r0, #32
  57e2ac:	03a01000 	moveq	r1, #0
  57e2b0:	13a02022 	movne	r2, #34	@ 0x22
  57e2b4:	13a03000 	movne	r3, #0
  57e2b8:	01cd01f8 	strdeq	r0, [sp, #24]
  57e2bc:	e1a0000a 	mov	r0, sl
  57e2c0:	e59f1ba0 	ldr	r1, [pc, #2976]	@ 57ee68 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfd8>
  57e2c4:	11cd21f8 	strdne	r2, [sp, #24]
  57e2c8:	e1a02008 	mov	r2, r8
  57e2cc:	e08f1001 	add	r1, pc, r1
  57e2d0:	ebf34e18 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e2d4:	e3a0c000 	mov	ip, #0
  57e2d8:	e28d3070 	add	r3, sp, #112	@ 0x70
  57e2dc:	e1a0100a 	mov	r1, sl
  57e2e0:	e58d3020 	str	r3, [sp, #32]
  57e2e4:	e58dc000 	str	ip, [sp]
  57e2e8:	e1a0200c 	mov	r2, ip
  57e2ec:	e2433003 	sub	r3, r3, #3
  57e2f0:	e1a00007 	mov	r0, r7
  57e2f4:	e5cdc06d 	strb	ip, [sp, #109]	@ 0x6d
  57e2f8:	ebf5aceb 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e2fc:	e1a05000 	mov	r5, r0
  57e300:	e59d00c0 	ldr	r0, [sp, #192]	@ 0xc0
  57e304:	e1a01004 	mov	r1, r4
  57e308:	e28da0c4 	add	sl, sp, #196	@ 0xc4
  57e30c:	e240000c 	sub	r0, r0, #12
  57e310:	ebf346a0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e314:	e3550000 	cmp	r5, #0
  57e318:	e1a02008 	mov	r2, r8
  57e31c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e320:	11cd01d8 	ldrdne	r0, [sp, #24]
  57e324:	13800001 	orrne	r0, r0, #1
  57e328:	11cd01f8 	strdne	r0, [sp, #24]
  57e32c:	e59f1b38 	ldr	r1, [pc, #2872]	@ 57ee6c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfdc>
  57e330:	e1a0000a 	mov	r0, sl
  57e334:	e08f1001 	add	r1, pc, r1
  57e338:	ebf34dfe 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e33c:	e3a0c000 	mov	ip, #0
  57e340:	e1a0100a 	mov	r1, sl
  57e344:	e28da070 	add	sl, sp, #112	@ 0x70
  57e348:	e58dc000 	str	ip, [sp]
  57e34c:	e1a0200c 	mov	r2, ip
  57e350:	e1a00007 	mov	r0, r7
  57e354:	e24a3002 	sub	r3, sl, #2
  57e358:	e5cdc06e 	strb	ip, [sp, #110]	@ 0x6e
  57e35c:	ebf5acd2 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e360:	e1a05000 	mov	r5, r0
  57e364:	e59d00c4 	ldr	r0, [sp, #196]	@ 0xc4
  57e368:	e1a01004 	mov	r1, r4
  57e36c:	e28da0c8 	add	sl, sp, #200	@ 0xc8
  57e370:	e240000c 	sub	r0, r0, #12
  57e374:	ebf34687 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e378:	e3550000 	cmp	r5, #0
  57e37c:	e1a02008 	mov	r2, r8
  57e380:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e384:	11cd01d8 	ldrdne	r0, [sp, #24]
  57e388:	13800040 	orrne	r0, r0, #64	@ 0x40
  57e38c:	11cd01f8 	strdne	r0, [sp, #24]
  57e390:	e59f1ad8 	ldr	r1, [pc, #2776]	@ 57ee70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfe0>
  57e394:	e1a0000a 	mov	r0, sl
  57e398:	e08f1001 	add	r1, pc, r1
  57e39c:	ebf34de5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e3a0:	e3a0c000 	mov	ip, #0
  57e3a4:	e1a0100a 	mov	r1, sl
  57e3a8:	e28da070 	add	sl, sp, #112	@ 0x70
  57e3ac:	e58dc000 	str	ip, [sp]
  57e3b0:	e1a0200c 	mov	r2, ip
  57e3b4:	e1a00007 	mov	r0, r7
  57e3b8:	e24a3001 	sub	r3, sl, #1
  57e3bc:	e5cdc06f 	strb	ip, [sp, #111]	@ 0x6f
  57e3c0:	ebf5acb9 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e3c4:	e1a05000 	mov	r5, r0
  57e3c8:	e59d00c8 	ldr	r0, [sp, #200]	@ 0xc8
  57e3cc:	e1a01004 	mov	r1, r4
  57e3d0:	e28da0cc 	add	sl, sp, #204	@ 0xcc
  57e3d4:	e240000c 	sub	r0, r0, #12
  57e3d8:	ebf3466e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e3dc:	e3550000 	cmp	r5, #0
  57e3e0:	e1a02008 	mov	r2, r8
  57e3e4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e3e8:	11cd01d8 	ldrdne	r0, [sp, #24]
  57e3ec:	13800080 	orrne	r0, r0, #128	@ 0x80
  57e3f0:	11cd01f8 	strdne	r0, [sp, #24]
  57e3f4:	e59f1a78 	ldr	r1, [pc, #2680]	@ 57ee74 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfe4>
  57e3f8:	e1a0000a 	mov	r0, sl
  57e3fc:	e08f1001 	add	r1, pc, r1
  57e400:	ebf34dcc 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e404:	e3a0c000 	mov	ip, #0
  57e408:	e1a0100a 	mov	r1, sl
  57e40c:	e28d3070 	add	r3, sp, #112	@ 0x70
  57e410:	e58dc000 	str	ip, [sp]
  57e414:	e1a0200c 	mov	r2, ip
  57e418:	e1a00007 	mov	r0, r7
  57e41c:	e5cdc070 	strb	ip, [sp, #112]	@ 0x70
  57e420:	ebf5aca1 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e424:	e1a05000 	mov	r5, r0
  57e428:	e59d00cc 	ldr	r0, [sp, #204]	@ 0xcc
  57e42c:	e1a01004 	mov	r1, r4
  57e430:	e28da0d0 	add	sl, sp, #208	@ 0xd0
  57e434:	e240000c 	sub	r0, r0, #12
  57e438:	ebf34656 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e43c:	e3550000 	cmp	r5, #0
  57e440:	e59f1a30 	ldr	r1, [pc, #2608]	@ 57ee78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfe8>
  57e444:	e1a0000a 	mov	r0, sl
  57e448:	11cd21d8 	ldrdne	r2, [sp, #24]
  57e44c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e450:	e08f1001 	add	r1, pc, r1
  57e454:	13822004 	orrne	r2, r2, #4
  57e458:	11cd21f8 	strdne	r2, [sp, #24]
  57e45c:	e1a02008 	mov	r2, r8
  57e460:	ebf34db4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e464:	e3a0c000 	mov	ip, #0
  57e468:	e1a0100a 	mov	r1, sl
  57e46c:	e58dc000 	str	ip, [sp]
  57e470:	e1a0200c 	mov	r2, ip
  57e474:	e28d3071 	add	r3, sp, #113	@ 0x71
  57e478:	e1a00007 	mov	r0, r7
  57e47c:	e5cdc071 	strb	ip, [sp, #113]	@ 0x71
  57e480:	ebf5ac89 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57e484:	e1a05000 	mov	r5, r0
  57e488:	e59d00d0 	ldr	r0, [sp, #208]	@ 0xd0
  57e48c:	e1a01004 	mov	r1, r4
  57e490:	e28da0d4 	add	sl, sp, #212	@ 0xd4
  57e494:	e240000c 	sub	r0, r0, #12
  57e498:	ebf3463e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e49c:	e3550000 	cmp	r5, #0
  57e4a0:	e1a02008 	mov	r2, r8
  57e4a4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e4a8:	11cd01d8 	ldrdne	r0, [sp, #24]
  57e4ac:	13800c01 	orrne	r0, r0, #256	@ 0x100
  57e4b0:	11cd01f8 	strdne	r0, [sp, #24]
  57e4b4:	e59f19c0 	ldr	r1, [pc, #2496]	@ 57ee7c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xfec>
  57e4b8:	e1a0000a 	mov	r0, sl
  57e4bc:	e08f1001 	add	r1, pc, r1
  57e4c0:	ebf34d9c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e4c4:	e28d3fde 	add	r3, sp, #888	@ 0x378
  57e4c8:	e3a0c000 	mov	ip, #0
  57e4cc:	e1a00007 	mov	r0, r7
  57e4d0:	e58dc000 	str	ip, [sp]
  57e4d4:	e1a0100a 	mov	r1, sl
  57e4d8:	e1a0200c 	mov	r2, ip
  57e4dc:	e523c16c 	str	ip, [r3, #-364]!	@ 0xfffffe94
  57e4e0:	ebf93ebc 	bl	3cdfd8 <int netflix::Variant::mapValueImpl<int>(std::string const&, bool*, int const&, std::pair<int, int> const*) const@@Base>
  57e4e4:	e2505000 	subs	r5, r0, #0
  57e4e8:	da000a90 	ble	580f30 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30a0>
  57e4ec:	e1cd21d8 	ldrd	r2, [sp, #24]
  57e4f0:	e1a01004 	mov	r1, r4
  57e4f4:	e59d00d4 	ldr	r0, [sp, #212]	@ 0xd4
  57e4f8:	e3822010 	orr	r2, r2, #16
  57e4fc:	e240000c 	sub	r0, r0, #12
  57e500:	e1cd21f8 	strd	r2, [sp, #24]
  57e504:	ebf34623 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e508:	e1a0c005 	mov	ip, r5
  57e50c:	e59fea44 	ldr	lr, [pc, #2628]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57e510:	e1a02006 	mov	r2, r6
  57e514:	e1cd61d8 	ldrd	r6, [sp, #24]
  57e518:	e28d0e23 	add	r0, sp, #560	@ 0x230
  57e51c:	e5991080 	ldr	r1, [r9, #128]	@ 0x80
  57e520:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e524:	e79be00e 	ldr	lr, [fp, lr]
  57e528:	e59d3028 	ldr	r3, [sp, #40]	@ 0x28
  57e52c:	e58dc008 	str	ip, [sp, #8]
  57e530:	e28ec00c 	add	ip, lr, #12
  57e534:	e1cd60f0 	strd	r6, [sp]
  57e538:	e58d400c 	str	r4, [sp, #12]
  57e53c:	e58dc2d0 	str	ip, [sp, #720]	@ 0x2d0
  57e540:	eb017fa8 	bl	5de3e8 <netflix::DiskStore::createContext(std::string const&, int, netflix::Flags<netflix::DiskStore::Flag>, unsigned int, std::string*)@@Base>
  57e544:	e59d0234 	ldr	r0, [sp, #564]	@ 0x234
  57e548:	e59d5230 	ldr	r5, [sp, #560]	@ 0x230
  57e54c:	e3500000 	cmp	r0, #0
  57e550:	0a000000 	beq	57e558 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x6c8>
  57e554:	ebf3b106 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57e558:	e3550000 	cmp	r5, #0
  57e55c:	0a000b93 	beq	5813b0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3520>
  57e560:	e28d40d8 	add	r4, sp, #216	@ 0xd8
  57e564:	e59f1914 	ldr	r1, [pc, #2324]	@ 57ee80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xff0>
  57e568:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  57e56c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e570:	e08f1001 	add	r1, pc, r1
  57e574:	e1a00004 	mov	r0, r4
  57e578:	ebf34d6e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e57c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e580:	e1a00005 	mov	r0, r5
  57e584:	ebf425a5 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57e588:	e1a01004 	mov	r1, r4
  57e58c:	ebf42645 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57e590:	e1a04000 	mov	r4, r0
  57e594:	ebf3b139 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57e598:	e59d00d8 	ldr	r0, [sp, #216]	@ 0xd8
  57e59c:	e3a02006 	mov	r2, #6
  57e5a0:	e3a03001 	mov	r3, #1
  57e5a4:	e5842000 	str	r2, [r4]
  57e5a8:	e240000c 	sub	r0, r0, #12
  57e5ac:	e5c43008 	strb	r3, [r4, #8]
  57e5b0:	e1a01008 	mov	r1, r8
  57e5b4:	ebf345f7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e5b8:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57e5bc:	e1a01008 	mov	r1, r8
  57e5c0:	e240000c 	sub	r0, r0, #12
  57e5c4:	ebf345f3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e5c8:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  57e5cc:	e1a01008 	mov	r1, r8
  57e5d0:	e240000c 	sub	r0, r0, #12
  57e5d4:	ebf345ef 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e5d8:	ea000299 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57e5dc:	e28da0e4 	add	sl, sp, #228	@ 0xe4
  57e5e0:	e59f189c 	ldr	r1, [pc, #2204]	@ 57ee84 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xff4>
  57e5e4:	e1a02008 	mov	r2, r8
  57e5e8:	e5999080 	ldr	r9, [r9, #128]	@ 0x80
  57e5ec:	e08f1001 	add	r1, pc, r1
  57e5f0:	e1a0000a 	mov	r0, sl
  57e5f4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e5f8:	ebf34d4e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e5fc:	e28d50e8 	add	r5, sp, #232	@ 0xe8
  57e600:	e1a0200a 	mov	r2, sl
  57e604:	e1a01007 	mov	r1, r7
  57e608:	e1a00005 	mov	r0, r5
  57e60c:	ebf5a8f4 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e610:	e1a00006 	mov	r0, r6
  57e614:	e1a01009 	mov	r1, r9
  57e618:	e1a02005 	mov	r2, r5
  57e61c:	eb0166ed 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57e620:	e59d00e8 	ldr	r0, [sp, #232]	@ 0xe8
  57e624:	e1a01004 	mov	r1, r4
  57e628:	e240000c 	sub	r0, r0, #12
  57e62c:	ebf345d9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e630:	e59d00e4 	ldr	r0, [sp, #228]	@ 0xe4
  57e634:	e1a01004 	mov	r1, r4
  57e638:	e240000c 	sub	r0, r0, #12
  57e63c:	ebf345d5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e640:	e59d12b8 	ldr	r1, [sp, #696]	@ 0x2b8
  57e644:	e3510000 	cmp	r1, #0
  57e648:	0a00083b 	beq	58073c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x28ac>
  57e64c:	e28d0058 	add	r0, sp, #88	@ 0x58
  57e650:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e654:	eb015ea5 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  57e658:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  57e65c:	e28dafde 	add	sl, sp, #888	@ 0x378
  57e660:	e34f3fff 	movt	r3, #65535	@ 0xffff
  57e664:	e18320da 	ldrd	r2, [r3, sl]
  57e668:	e3a03000 	mov	r3, #0
  57e66c:	e2022020 	and	r2, r2, #32
  57e670:	e192c003 	orrs	ip, r2, r3
  57e674:	1a0005fa 	bne	57fe64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1fd4>
  57e678:	e28d60fc 	add	r6, sp, #252	@ 0xfc
  57e67c:	e59f1804 	ldr	r1, [pc, #2052]	@ 57ee88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xff8>
  57e680:	e1a02008 	mov	r2, r8
  57e684:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e688:	e08f1001 	add	r1, pc, r1
  57e68c:	e1a00006 	mov	r0, r6
  57e690:	ebf34d28 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e694:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e698:	e1a00005 	mov	r0, r5
  57e69c:	ebf4255f 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57e6a0:	e1a01006 	mov	r1, r6
  57e6a4:	ebf425ff 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57e6a8:	e1a09000 	mov	r9, r0
  57e6ac:	ebf3b0f3 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57e6b0:	e59d00fc 	ldr	r0, [sp, #252]	@ 0xfc
  57e6b4:	e3a02006 	mov	r2, #6
  57e6b8:	e3a03000 	mov	r3, #0
  57e6bc:	e5892000 	str	r2, [r9]
  57e6c0:	e240000c 	sub	r0, r0, #12
  57e6c4:	e1a01004 	mov	r1, r4
  57e6c8:	e5c93008 	strb	r3, [r9, #8]
  57e6cc:	e28d6c01 	add	r6, sp, #256	@ 0x100
  57e6d0:	ebf345b0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e6d4:	e59f17b0 	ldr	r1, [pc, #1968]	@ 57ee8c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xffc>
  57e6d8:	e1a00006 	mov	r0, r6
  57e6dc:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  57e6e0:	e08f1001 	add	r1, pc, r1
  57e6e4:	ebf34d13 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e6e8:	e1a00005 	mov	r0, r5
  57e6ec:	ebf4254b 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57e6f0:	e1a01006 	mov	r1, r6
  57e6f4:	ebf425eb 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57e6f8:	e28d9f41 	add	r9, sp, #260	@ 0x104
  57e6fc:	e59f178c 	ldr	r1, [pc, #1932]	@ 57ee90 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1000>
  57e700:	e1a06000 	mov	r6, r0
  57e704:	e1a02008 	mov	r2, r8
  57e708:	e08f1001 	add	r1, pc, r1
  57e70c:	e1a00009 	mov	r0, r9
  57e710:	ebf34d08 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e714:	e28d8f42 	add	r8, sp, #264	@ 0x108
  57e718:	e1a01007 	mov	r1, r7
  57e71c:	e1a02009 	mov	r2, r9
  57e720:	e1a00008 	mov	r0, r8
  57e724:	ebf5a8ae 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e728:	e59f2764 	ldr	r2, [pc, #1892]	@ 57ee94 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1004>
  57e72c:	e1a00008 	mov	r0, r8
  57e730:	e3a01000 	mov	r1, #0
  57e734:	e3a03022 	mov	r3, #34	@ 0x22
  57e738:	e08f2002 	add	r2, pc, r2
  57e73c:	ebf34a21 	bl	250fc8 <std::string::insert(unsigned int, char const*, unsigned int)@plt>
  57e740:	e59f2810 	ldr	r2, [pc, #2064]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57e744:	e1a03000 	mov	r3, r0
  57e748:	e5938000 	ldr	r8, [r3]
  57e74c:	e1a00006 	mov	r0, r6
  57e750:	e79b7002 	ldr	r7, [fp, r2]
  57e754:	e287200c 	add	r2, r7, #12
  57e758:	e5832000 	str	r2, [r3]
  57e75c:	ebf3b0c7 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57e760:	e3a03001 	mov	r3, #1
  57e764:	e1a00007 	mov	r0, r7
  57e768:	e5863000 	str	r3, [r6]
  57e76c:	e1a01004 	mov	r1, r4
  57e770:	e5868008 	str	r8, [r6, #8]
  57e774:	ebf34587 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e778:	e59d0108 	ldr	r0, [sp, #264]	@ 0x108
  57e77c:	e1a01004 	mov	r1, r4
  57e780:	e240000c 	sub	r0, r0, #12
  57e784:	ebf34583 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e788:	e59d0104 	ldr	r0, [sp, #260]	@ 0x104
  57e78c:	e1a01004 	mov	r1, r4
  57e790:	e240000c 	sub	r0, r0, #12
  57e794:	ebf3457f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e798:	e59d0100 	ldr	r0, [sp, #256]	@ 0x100
  57e79c:	e1a01004 	mov	r1, r4
  57e7a0:	e240000c 	sub	r0, r0, #12
  57e7a4:	ebf3457b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e7a8:	ea0005c3 	b	57febc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x202c>
  57e7ac:	e28dae17 	add	sl, sp, #368	@ 0x170
  57e7b0:	e59f16e0 	ldr	r1, [pc, #1760]	@ 57ee98 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1008>
  57e7b4:	e5993080 	ldr	r3, [r9, #128]	@ 0x80
  57e7b8:	e1a02006 	mov	r2, r6
  57e7bc:	e08f1001 	add	r1, pc, r1
  57e7c0:	e1a0000a 	mov	r0, sl
  57e7c4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e7c8:	e58d3028 	str	r3, [sp, #40]	@ 0x28
  57e7cc:	ebf34cd9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e7d0:	e28d5f5d 	add	r5, sp, #372	@ 0x174
  57e7d4:	e1a0200a 	mov	r2, sl
  57e7d8:	e1a01007 	mov	r1, r7
  57e7dc:	e1a00005 	mov	r0, r5
  57e7e0:	ebf5a87f 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e7e4:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57e7e8:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  57e7ec:	e1a02005 	mov	r2, r5
  57e7f0:	e58da018 	str	sl, [sp, #24]
  57e7f4:	e1a0000a 	mov	r0, sl
  57e7f8:	eb016676 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57e7fc:	e59d0174 	ldr	r0, [sp, #372]	@ 0x174
  57e800:	e1a01004 	mov	r1, r4
  57e804:	e240000c 	sub	r0, r0, #12
  57e808:	ebf34562 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e80c:	e59d0170 	ldr	r0, [sp, #368]	@ 0x170
  57e810:	e1a01004 	mov	r1, r4
  57e814:	e240000c 	sub	r0, r0, #12
  57e818:	ebf3455e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e81c:	e59d32a0 	ldr	r3, [sp, #672]	@ 0x2a0
  57e820:	e3530000 	cmp	r3, #0
  57e824:	0a00088e 	beq	580a64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2bd4>
  57e828:	e28d5f5e 	add	r5, sp, #376	@ 0x178
  57e82c:	e59f1668 	ldr	r1, [pc, #1640]	@ 57ee9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x100c>
  57e830:	e1a02006 	mov	r2, r6
  57e834:	e08f1001 	add	r1, pc, r1
  57e838:	e1a00005 	mov	r0, r5
  57e83c:	ebf34cbd 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e840:	e28dafa2 	add	sl, sp, #648	@ 0x288
  57e844:	e58da02c 	str	sl, [sp, #44]	@ 0x2c
  57e848:	e28da06b 	add	sl, sp, #107	@ 0x6b
  57e84c:	e1a02005 	mov	r2, r5
  57e850:	e1a01007 	mov	r1, r7
  57e854:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  57e858:	e1a0300a 	mov	r3, sl
  57e85c:	ebf9357d 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57e860:	e59d0178 	ldr	r0, [sp, #376]	@ 0x178
  57e864:	e1a01004 	mov	r1, r4
  57e868:	e240000c 	sub	r0, r0, #12
  57e86c:	ebf34549 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e870:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57e874:	e3530000 	cmp	r3, #0
  57e878:	0a0005c3 	beq	57ff8c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x20fc>
  57e87c:	e28d5f5f 	add	r5, sp, #380	@ 0x17c
  57e880:	e59f1618 	ldr	r1, [pc, #1560]	@ 57eea0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1010>
  57e884:	e1a02006 	mov	r2, r6
  57e888:	e08f1001 	add	r1, pc, r1
  57e88c:	e1a00005 	mov	r0, r5
  57e890:	ebf34ca8 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e894:	e28dcfa5 	add	ip, sp, #660	@ 0x294
  57e898:	e1a02005 	mov	r2, r5
  57e89c:	e1a01007 	mov	r1, r7
  57e8a0:	e1a0300a 	mov	r3, sl
  57e8a4:	e1a0000c 	mov	r0, ip
  57e8a8:	e58dc030 	str	ip, [sp, #48]	@ 0x30
  57e8ac:	ebf93569 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57e8b0:	e59d017c 	ldr	r0, [sp, #380]	@ 0x17c
  57e8b4:	e1a01004 	mov	r1, r4
  57e8b8:	e240000c 	sub	r0, r0, #12
  57e8bc:	ebf34535 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e8c0:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57e8c4:	e3530000 	cmp	r3, #0
  57e8c8:	1a00072c 	bne	580580 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26f0>
  57e8cc:	e59f25d0 	ldr	r2, [pc, #1488]	@ 57eea4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1014>
  57e8d0:	e1a00009 	mov	r0, r9
  57e8d4:	e3a01005 	mov	r1, #5
  57e8d8:	e08f2002 	add	r2, pc, r2
  57e8dc:	ebf9756d 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57e8e0:	ea0000f7 	b	57ecc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe34>
  57e8e4:	e28da074 	add	sl, sp, #116	@ 0x74
  57e8e8:	e59f15b8 	ldr	r1, [pc, #1464]	@ 57eea8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1018>
  57e8ec:	e599c080 	ldr	ip, [r9, #128]	@ 0x80
  57e8f0:	e1a02006 	mov	r2, r6
  57e8f4:	e08f1001 	add	r1, pc, r1
  57e8f8:	e1a0000a 	mov	r0, sl
  57e8fc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57e900:	e58dc018 	str	ip, [sp, #24]
  57e904:	ebf34c8b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e908:	e28d5078 	add	r5, sp, #120	@ 0x78
  57e90c:	e1a0200a 	mov	r2, sl
  57e910:	e1a01007 	mov	r1, r7
  57e914:	e1a00005 	mov	r0, r5
  57e918:	ebf5a831 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e91c:	e1a00008 	mov	r0, r8
  57e920:	e59d1018 	ldr	r1, [sp, #24]
  57e924:	e1a02005 	mov	r2, r5
  57e928:	eb01662a 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57e92c:	e59d0078 	ldr	r0, [sp, #120]	@ 0x78
  57e930:	e1a01004 	mov	r1, r4
  57e934:	e240000c 	sub	r0, r0, #12
  57e938:	ebf34516 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e93c:	e59d0074 	ldr	r0, [sp, #116]	@ 0x74
  57e940:	e1a01004 	mov	r1, r4
  57e944:	e240000c 	sub	r0, r0, #12
  57e948:	ebf34512 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e94c:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  57e950:	e3530000 	cmp	r3, #0
  57e954:	0a0007c4 	beq	58086c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x29dc>
  57e958:	e28d507c 	add	r5, sp, #124	@ 0x7c
  57e95c:	e59f1548 	ldr	r1, [pc, #1352]	@ 57eeac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x101c>
  57e960:	e1a02006 	mov	r2, r6
  57e964:	e08f1001 	add	r1, pc, r1
  57e968:	e1a00005 	mov	r0, r5
  57e96c:	ebf34c71 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57e970:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57e974:	e1a01007 	mov	r1, r7
  57e978:	e1a02005 	mov	r2, r5
  57e97c:	e58da018 	str	sl, [sp, #24]
  57e980:	e1a0000a 	mov	r0, sl
  57e984:	ebf5a816 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57e988:	e59d007c 	ldr	r0, [sp, #124]	@ 0x7c
  57e98c:	e1a01004 	mov	r1, r4
  57e990:	e240000c 	sub	r0, r0, #12
  57e994:	ebf344ff 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57e998:	e28d0058 	add	r0, sp, #88	@ 0x58
  57e99c:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  57e9a0:	eb015dd2 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  57e9a4:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  57e9a8:	e28dcfde 	add	ip, sp, #888	@ 0x378
  57e9ac:	e34f3fff 	movt	r3, #65535	@ 0xffff
  57e9b0:	e18320dc 	ldrd	r2, [r3, ip]
  57e9b4:	e3a03000 	mov	r3, #0
  57e9b8:	e2022010 	and	r2, r2, #16
  57e9bc:	e192e003 	orrs	lr, r2, r3
  57e9c0:	e59f3590 	ldr	r3, [pc, #1424]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57e9c4:	1a000506 	bne	57fde4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1f54>
  57e9c8:	e28d5e22 	add	r5, sp, #544	@ 0x220
  57e9cc:	e79b3003 	ldr	r3, [fp, r3]
  57e9d0:	e59d1018 	ldr	r1, [sp, #24]
  57e9d4:	e1a02004 	mov	r2, r4
  57e9d8:	e1a00005 	mov	r0, r5
  57e9dc:	e283300c 	add	r3, r3, #12
  57e9e0:	e58d32d0 	str	r3, [sp, #720]	@ 0x2d0
  57e9e4:	eb001168 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  57e9e8:	e58d5000 	str	r5, [sp]
  57e9ec:	e1a00006 	mov	r0, r6
  57e9f0:	e1a01009 	mov	r1, r9
  57e9f4:	e59d2020 	ldr	r2, [sp, #32]
  57e9f8:	e3a03002 	mov	r3, #2
  57e9fc:	ebfff771 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  57ea00:	e1a00005 	mov	r0, r5
  57ea04:	ebfee0a8 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  57ea08:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57ea0c:	e28d1fa5 	add	r1, sp, #660	@ 0x294
  57ea10:	e240000c 	sub	r0, r0, #12
  57ea14:	ebf344df 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ea18:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  57ea1c:	e59d22b8 	ldr	r2, [sp, #696]	@ 0x2b8
  57ea20:	e3500000 	cmp	r0, #0
  57ea24:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  57ea28:	e58d02d4 	str	r0, [sp, #724]	@ 0x2d4
  57ea2c:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  57ea30:	0a000000 	beq	57ea38 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xba8>
  57ea34:	ebf418f6 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  57ea38:	e1a00005 	mov	r0, r5
  57ea3c:	e1a01004 	mov	r1, r4
  57ea40:	eb016712 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  57ea44:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  57ea48:	e3500000 	cmp	r0, #0
  57ea4c:	0a000000 	beq	57ea54 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbc4>
  57ea50:	ebf3afc7 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57ea54:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  57ea58:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ea5c:	e3500000 	cmp	r0, #0
  57ea60:	0a000000 	beq	57ea68 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbd8>
  57ea64:	ebf3afc2 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57ea68:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  57ea6c:	e1a01004 	mov	r1, r4
  57ea70:	e240000c 	sub	r0, r0, #12
  57ea74:	ebf344c7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ea78:	ea0000eb 	b	57ee2c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf9c>
  57ea7c:	e5990080 	ldr	r0, [r9, #128]	@ 0x80
  57ea80:	e28da080 	add	sl, sp, #128	@ 0x80
  57ea84:	e59f1424 	ldr	r1, [pc, #1060]	@ 57eeb0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1020>
  57ea88:	e1a02006 	mov	r2, r6
  57ea8c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ea90:	e58d0018 	str	r0, [sp, #24]
  57ea94:	e08f1001 	add	r1, pc, r1
  57ea98:	e1a0000a 	mov	r0, sl
  57ea9c:	ebf34c25 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57eaa0:	e28d5084 	add	r5, sp, #132	@ 0x84
  57eaa4:	e1a01007 	mov	r1, r7
  57eaa8:	e1a0200a 	mov	r2, sl
  57eaac:	e1a00005 	mov	r0, r5
  57eab0:	ebf5a7cb 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57eab4:	e1a00008 	mov	r0, r8
  57eab8:	e59d1018 	ldr	r1, [sp, #24]
  57eabc:	e1a02005 	mov	r2, r5
  57eac0:	eb0165c4 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57eac4:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  57eac8:	e1a01004 	mov	r1, r4
  57eacc:	e240000c 	sub	r0, r0, #12
  57ead0:	ebf344b0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ead4:	e59d0080 	ldr	r0, [sp, #128]	@ 0x80
  57ead8:	e1a01004 	mov	r1, r4
  57eadc:	e240000c 	sub	r0, r0, #12
  57eae0:	ebf344ac 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57eae4:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  57eae8:	e3510000 	cmp	r1, #0
  57eaec:	0a00076d 	beq	5808a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a18>
  57eaf0:	e28d0058 	add	r0, sp, #88	@ 0x58
  57eaf4:	eb015d7d 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  57eaf8:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  57eafc:	e28d7fde 	add	r7, sp, #888	@ 0x378
  57eb00:	e34f3fff 	movt	r3, #65535	@ 0xffff
  57eb04:	e18320d7 	ldrd	r2, [r3, r7]
  57eb08:	e3a03000 	mov	r3, #0
  57eb0c:	e2022010 	and	r2, r2, #16
  57eb10:	e192a003 	orrs	sl, r2, r3
  57eb14:	1a0004f7 	bne	57fef8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2068>
  57eb18:	e59fc438 	ldr	ip, [pc, #1080]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57eb1c:	e1a01009 	mov	r1, r9
  57eb20:	e59d2020 	ldr	r2, [sp, #32]
  57eb24:	e28d0f8a 	add	r0, sp, #552	@ 0x228
  57eb28:	e3a03001 	mov	r3, #1
  57eb2c:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  57eb30:	e79bc00c 	ldr	ip, [fp, ip]
  57eb34:	e58d6000 	str	r6, [sp]
  57eb38:	e28cc00c 	add	ip, ip, #12
  57eb3c:	e58dc2b8 	str	ip, [sp, #696]	@ 0x2b8
  57eb40:	e58dc2bc 	str	ip, [sp, #700]	@ 0x2bc
  57eb44:	ebfff71f 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  57eb48:	e59dc228 	ldr	ip, [sp, #552]	@ 0x228
  57eb4c:	e1a00005 	mov	r0, r5
  57eb50:	e59d222c 	ldr	r2, [sp, #556]	@ 0x22c
  57eb54:	e1a01004 	mov	r1, r4
  57eb58:	e3a03000 	mov	r3, #0
  57eb5c:	e58d322c 	str	r3, [sp, #556]	@ 0x22c
  57eb60:	e58dc2d0 	str	ip, [sp, #720]	@ 0x2d0
  57eb64:	e58d22d4 	str	r2, [sp, #724]	@ 0x2d4
  57eb68:	e58d3228 	str	r3, [sp, #552]	@ 0x228
  57eb6c:	eb0166c7 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  57eb70:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  57eb74:	e3500000 	cmp	r0, #0
  57eb78:	0a000000 	beq	57eb80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xcf0>
  57eb7c:	ebf3af7c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57eb80:	e59d022c 	ldr	r0, [sp, #556]	@ 0x22c
  57eb84:	e3500000 	cmp	r0, #0
  57eb88:	1a0000a3 	bne	57ee1c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf8c>
  57eb8c:	ea0000a3 	b	57ee20 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf90>
  57eb90:	e28daf56 	add	sl, sp, #344	@ 0x158
  57eb94:	e59f1318 	ldr	r1, [pc, #792]	@ 57eeb4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1024>
  57eb98:	e599c080 	ldr	ip, [r9, #128]	@ 0x80
  57eb9c:	e1a02006 	mov	r2, r6
  57eba0:	e08f1001 	add	r1, pc, r1
  57eba4:	e1a0000a 	mov	r0, sl
  57eba8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ebac:	e58dc028 	str	ip, [sp, #40]	@ 0x28
  57ebb0:	ebf34be0 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ebb4:	e28d5f57 	add	r5, sp, #348	@ 0x15c
  57ebb8:	e1a0200a 	mov	r2, sl
  57ebbc:	e1a01007 	mov	r1, r7
  57ebc0:	e1a00005 	mov	r0, r5
  57ebc4:	ebf5a786 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57ebc8:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57ebcc:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  57ebd0:	e1a02005 	mov	r2, r5
  57ebd4:	e58da018 	str	sl, [sp, #24]
  57ebd8:	e1a0000a 	mov	r0, sl
  57ebdc:	eb01657d 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57ebe0:	e59d015c 	ldr	r0, [sp, #348]	@ 0x15c
  57ebe4:	e1a01004 	mov	r1, r4
  57ebe8:	e240000c 	sub	r0, r0, #12
  57ebec:	ebf34469 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ebf0:	e59d0158 	ldr	r0, [sp, #344]	@ 0x158
  57ebf4:	e1a01004 	mov	r1, r4
  57ebf8:	e240000c 	sub	r0, r0, #12
  57ebfc:	ebf34465 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ec00:	e59d32a0 	ldr	r3, [sp, #672]	@ 0x2a0
  57ec04:	e3530000 	cmp	r3, #0
  57ec08:	0a000743 	beq	58091c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a8c>
  57ec0c:	e28d5e16 	add	r5, sp, #352	@ 0x160
  57ec10:	e59f12a0 	ldr	r1, [pc, #672]	@ 57eeb8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1028>
  57ec14:	e1a02006 	mov	r2, r6
  57ec18:	e08f1001 	add	r1, pc, r1
  57ec1c:	e1a00005 	mov	r0, r5
  57ec20:	ebf34bc4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ec24:	e28dafa2 	add	sl, sp, #648	@ 0x288
  57ec28:	e58da02c 	str	sl, [sp, #44]	@ 0x2c
  57ec2c:	e28da06b 	add	sl, sp, #107	@ 0x6b
  57ec30:	e1a02005 	mov	r2, r5
  57ec34:	e1a01007 	mov	r1, r7
  57ec38:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  57ec3c:	e1a0300a 	mov	r3, sl
  57ec40:	ebf93484 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57ec44:	e59d0160 	ldr	r0, [sp, #352]	@ 0x160
  57ec48:	e1a01004 	mov	r1, r4
  57ec4c:	e240000c 	sub	r0, r0, #12
  57ec50:	ebf34450 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ec54:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57ec58:	e3530000 	cmp	r3, #0
  57ec5c:	0a0004bf 	beq	57ff60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x20d0>
  57ec60:	e28d5f59 	add	r5, sp, #356	@ 0x164
  57ec64:	e59f1250 	ldr	r1, [pc, #592]	@ 57eebc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x102c>
  57ec68:	e1a02006 	mov	r2, r6
  57ec6c:	e08f1001 	add	r1, pc, r1
  57ec70:	e1a00005 	mov	r0, r5
  57ec74:	ebf34baf 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ec78:	e28dcfa5 	add	ip, sp, #660	@ 0x294
  57ec7c:	e1a02005 	mov	r2, r5
  57ec80:	e1a01007 	mov	r1, r7
  57ec84:	e1a0300a 	mov	r3, sl
  57ec88:	e1a0000c 	mov	r0, ip
  57ec8c:	e58dc030 	str	ip, [sp, #48]	@ 0x30
  57ec90:	ebf93470 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57ec94:	e59d0164 	ldr	r0, [sp, #356]	@ 0x164
  57ec98:	e1a01004 	mov	r1, r4
  57ec9c:	e240000c 	sub	r0, r0, #12
  57eca0:	ebf3443c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57eca4:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57eca8:	e3530000 	cmp	r3, #0
  57ecac:	1a00060c 	bne	5804e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2654>
  57ecb0:	e59f2208 	ldr	r2, [pc, #520]	@ 57eec0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1030>
  57ecb4:	e1a00009 	mov	r0, r9
  57ecb8:	e3a01008 	mov	r1, #8
  57ecbc:	e08f2002 	add	r2, pc, r2
  57ecc0:	ebf97474 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57ecc4:	e59d7014 	ldr	r7, [sp, #20]
  57ecc8:	e3a02006 	mov	r2, #6
  57eccc:	e3a03000 	mov	r3, #0
  57ecd0:	e5872000 	str	r2, [r7]
  57ecd4:	e5c73008 	strb	r3, [r7, #8]
  57ecd8:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  57ecdc:	e1a01006 	mov	r1, r6
  57ece0:	e240000c 	sub	r0, r0, #12
  57ece4:	ebf3442b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ece8:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  57ecec:	e1a01006 	mov	r1, r6
  57ecf0:	e240000c 	sub	r0, r0, #12
  57ecf4:	ebf34427 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ecf8:	e59d02a4 	ldr	r0, [sp, #676]	@ 0x2a4
  57ecfc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ed00:	e3500000 	cmp	r0, #0
  57ed04:	1a00029a 	bne	57f774 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x18e4>
  57ed08:	ea0000db 	b	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  57ed0c:	e28dae1d 	add	sl, sp, #464	@ 0x1d0
  57ed10:	e59f11ac 	ldr	r1, [pc, #428]	@ 57eec4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1034>
  57ed14:	e5993080 	ldr	r3, [r9, #128]	@ 0x80
  57ed18:	e1a02006 	mov	r2, r6
  57ed1c:	e08f1001 	add	r1, pc, r1
  57ed20:	e1a0000a 	mov	r0, sl
  57ed24:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ed28:	e58d3018 	str	r3, [sp, #24]
  57ed2c:	ebf34b81 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ed30:	e28d5f75 	add	r5, sp, #468	@ 0x1d4
  57ed34:	e1a01007 	mov	r1, r7
  57ed38:	e1a0200a 	mov	r2, sl
  57ed3c:	e1a00005 	mov	r0, r5
  57ed40:	ebf5a727 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57ed44:	e1a00008 	mov	r0, r8
  57ed48:	e59d1018 	ldr	r1, [sp, #24]
  57ed4c:	e1a02005 	mov	r2, r5
  57ed50:	eb016520 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57ed54:	e59d01d4 	ldr	r0, [sp, #468]	@ 0x1d4
  57ed58:	e1a01004 	mov	r1, r4
  57ed5c:	e240000c 	sub	r0, r0, #12
  57ed60:	ebf3440c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ed64:	e59d01d0 	ldr	r0, [sp, #464]	@ 0x1d0
  57ed68:	e1a01004 	mov	r1, r4
  57ed6c:	e240000c 	sub	r0, r0, #12
  57ed70:	ebf34408 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57ed74:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  57ed78:	e3510000 	cmp	r1, #0
  57ed7c:	0a0006cf 	beq	5808c0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a30>
  57ed80:	e28d0058 	add	r0, sp, #88	@ 0x58
  57ed84:	eb015cd9 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  57ed88:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  57ed8c:	e28d7fde 	add	r7, sp, #888	@ 0x378
  57ed90:	e34f3fff 	movt	r3, #65535	@ 0xffff
  57ed94:	e18320d7 	ldrd	r2, [r3, r7]
  57ed98:	e3a03000 	mov	r3, #0
  57ed9c:	e2022010 	and	r2, r2, #16
  57eda0:	e192a003 	orrs	sl, r2, r3
  57eda4:	1a0003ee 	bne	57fd64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1ed4>
  57eda8:	e59fc1a8 	ldr	ip, [pc, #424]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57edac:	e1a01009 	mov	r1, r9
  57edb0:	e59d2020 	ldr	r2, [sp, #32]
  57edb4:	e28d0f9e 	add	r0, sp, #632	@ 0x278
  57edb8:	e3a03007 	mov	r3, #7
  57edbc:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  57edc0:	e79bc00c 	ldr	ip, [fp, ip]
  57edc4:	e58d6000 	str	r6, [sp]
  57edc8:	e28cc00c 	add	ip, ip, #12
  57edcc:	e58dc2b8 	str	ip, [sp, #696]	@ 0x2b8
  57edd0:	e58dc2bc 	str	ip, [sp, #700]	@ 0x2bc
  57edd4:	ebfff67b 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  57edd8:	e59dc278 	ldr	ip, [sp, #632]	@ 0x278
  57eddc:	e1a00005 	mov	r0, r5
  57ede0:	e59d227c 	ldr	r2, [sp, #636]	@ 0x27c
  57ede4:	e1a01004 	mov	r1, r4
  57ede8:	e3a03000 	mov	r3, #0
  57edec:	e58d327c 	str	r3, [sp, #636]	@ 0x27c
  57edf0:	e58dc2d0 	str	ip, [sp, #720]	@ 0x2d0
  57edf4:	e58d22d4 	str	r2, [sp, #724]	@ 0x2d4
  57edf8:	e58d3278 	str	r3, [sp, #632]	@ 0x278
  57edfc:	eb016623 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  57ee00:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  57ee04:	e3500000 	cmp	r0, #0
  57ee08:	0a000000 	beq	57ee10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf80>
  57ee0c:	ebf3aed8 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57ee10:	e59d027c 	ldr	r0, [sp, #636]	@ 0x27c
  57ee14:	e3500000 	cmp	r0, #0
  57ee18:	0a000000 	beq	57ee20 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf90>
  57ee1c:	ebf3aed4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57ee20:	e1a00006 	mov	r0, r6
  57ee24:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ee28:	ebfedf9f 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  57ee2c:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  57ee30:	e3500000 	cmp	r0, #0
  57ee34:	1a000081 	bne	57f040 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b0>
  57ee38:	ea000081 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57ee3c:	004a9258 	subeq	r9, sl, r8, asr r2
  57ee40:	00003440 	andeq	r3, r0, r0, asr #8
  57ee44:	003e13c8 	eorseq	r1, lr, r8, asr #7
  57ee48:	00003dc0 	andeq	r3, r0, r0, asr #27
  57ee4c:	00003464 	andeq	r3, r0, r4, ror #8
  57ee50:	004003a4 	subeq	r0, r0, r4, lsr #7
  57ee54:	00400388 	subeq	r0, r0, r8, lsl #7
  57ee58:	00400338 	subeq	r0, r0, r8, lsr r3
  57ee5c:	003e89b8 	ldrhteq	r8, [lr], -r8
  57ee60:	003e897c 	eorseq	r8, lr, ip, ror r9
  57ee64:	003e8838 	eorseq	r8, lr, r8, lsr r8
  57ee68:	003e87d8 	ldrsbteq	r8, [lr], -r8
  57ee6c:	003e877c 	eorseq	r8, lr, ip, ror r7
  57ee70:	003e8728 	eorseq	r8, lr, r8, lsr #14
  57ee74:	003e86e0 	eorseq	r8, lr, r0, ror #13
  57ee78:	003e867c 	eorseq	r8, lr, ip, ror r6
  57ee7c:	003e862c 	eorseq	r8, lr, ip, lsr #12
  57ee80:	003d22f8 	ldrshteq	r2, [sp], -r8
  57ee84:	003e8588 	eorseq	r8, lr, r8, lsl #11
  57ee88:	003d21e0 	eorseq	r2, sp, r0, ror #3
  57ee8c:	004206dc 	ldrdeq	r0, [r2], #-108	@ 0xffffff94
  57ee90:	003e846c 	eorseq	r8, lr, ip, ror #8
  57ee94:	003e8468 	eorseq	r8, lr, r8, ror #8
  57ee98:	003e83b8 	ldrhteq	r8, [lr], -r8
  57ee9c:	003e82c0 	eorseq	r8, lr, r0, asr #5
  57eea0:	00417f60 	subeq	r7, r1, r0, ror #30
  57eea4:	00417f10 	subeq	r7, r1, r0, lsl pc
  57eea8:	003e8280 	eorseq	r8, lr, r0, lsl #5
  57eeac:	003e8190 	mlaseq	lr, r0, r1, r8
  57eeb0:	003e80e0 	eorseq	r8, lr, r0, ror #1
  57eeb4:	003e7fd4 	ldrsbteq	r7, [lr], -r4
  57eeb8:	003e7edc 	ldrsbteq	r7, [lr], -ip
  57eebc:	00417b7c 	subeq	r7, r1, ip, ror fp
  57eec0:	00417b2c 	subeq	r7, r1, ip, lsr #22
  57eec4:	003e7e58 	eorseq	r7, lr, r8, asr lr
  57eec8:	003e7c08 	eorseq	r7, lr, r8, lsl #24
  57eecc:	003d188c 	eorseq	r1, sp, ip, lsl #17
  57eed0:	003e7ac0 	eorseq	r7, lr, r0, asr #21
  57eed4:	003e79d0 	ldrsbteq	r7, [lr], -r0
  57eed8:	003e7a64 	eorseq	r7, lr, r4, ror #20
  57eedc:	003e7a34 	eorseq	r7, lr, r4, lsr sl
  57eee0:	003e78bc 	ldrhteq	r7, [lr], -ip
  57eee4:	003e7930 	eorseq	r7, lr, r0, lsr r9
  57eee8:	00417588 	subeq	r7, r1, r8, lsl #11
  57eeec:	003d17bc 	ldrhteq	r1, [sp], -ip
  57eef0:	003e7960 	eorseq	r7, lr, r0, ror #18
  57eef4:	003e76cc 	eorseq	r7, lr, ip, asr #13
  57eef8:	003e75d4 	ldrsbteq	r7, [lr], -r4
  57eefc:	00417274 	subeq	r7, r1, r4, ror r2
  57ef00:	00417224 	subeq	r7, r1, r4, lsr #4
  57ef04:	003e7560 	eorseq	r7, lr, r0, ror #10
  57ef08:	003e7470 	eorseq	r7, lr, r0, ror r4
  57ef0c:	00417110 	subeq	r7, r1, r0, lsl r1
  57ef10:	004170c0 	subeq	r7, r1, r0, asr #1
  57ef14:	003e73e8 	eorseq	r7, lr, r8, ror #7
  57ef18:	003e7384 	eorseq	r7, lr, r4, lsl #7
  57ef1c:	003d0fdc 	ldrsbteq	r0, [sp], -ip
  57ef20:	0041f4d8 	ldrdeq	pc, [r1], #-72	@ 0xffffffb8
  57ef24:	0000317c 	andeq	r3, r0, ip, ror r1
  57ef28:	00002fb4 			@ <UNDEFINED> instruction: 0x00002fb4
  57ef2c:	003e7184 	eorseq	r7, lr, r4, lsl #3
  57ef30:	003c4abc 	ldrhteq	r4, [ip], -ip
  57ef34:	003df79c 	mlaseq	sp, ip, r7, pc	@ <UNPREDICTABLE>
  57ef38:	003d0e94 	mlaseq	sp, r4, lr, r0
  57ef3c:	003d0c18 	eorseq	r0, sp, r8, lsl ip
  57ef40:	0041f114 	subeq	pc, r1, r4, lsl r1	@ <UNPREDICTABLE>
  57ef44:	003e6e94 	mlaseq	lr, r4, lr, r6
  57ef48:	003e6e74 	eorseq	r6, lr, r4, ror lr
  57ef4c:	003fe74c 	eorseq	lr, pc, ip, asr #14
  57ef50:	003e6db0 	ldrhteq	r6, [lr], -r0
  57ef54:	003e6c1c 	eorseq	r6, lr, ip, lsl ip
  57ef58:	00002278 	andeq	r2, r0, r8, ror r2
  57ef5c:	e28daf43 	add	sl, sp, #268	@ 0x10c
  57ef60:	e51f10a0 	ldr	r1, [pc, #-160]	@ 57eec8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1038>
  57ef64:	e1a02008 	mov	r2, r8
  57ef68:	e5999080 	ldr	r9, [r9, #128]	@ 0x80
  57ef6c:	e08f1001 	add	r1, pc, r1
  57ef70:	e1a0000a 	mov	r0, sl
  57ef74:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ef78:	ebf34aee 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ef7c:	e28d5e11 	add	r5, sp, #272	@ 0x110
  57ef80:	e1a0200a 	mov	r2, sl
  57ef84:	e1a01007 	mov	r1, r7
  57ef88:	e1a00005 	mov	r0, r5
  57ef8c:	ebf5a694 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57ef90:	e1a00004 	mov	r0, r4
  57ef94:	e1a01009 	mov	r1, r9
  57ef98:	e1a02005 	mov	r2, r5
  57ef9c:	eb01648d 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57efa0:	e59d0110 	ldr	r0, [sp, #272]	@ 0x110
  57efa4:	e1a01006 	mov	r1, r6
  57efa8:	e240000c 	sub	r0, r0, #12
  57efac:	ebf34379 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57efb0:	e59d010c 	ldr	r0, [sp, #268]	@ 0x10c
  57efb4:	e1a01006 	mov	r1, r6
  57efb8:	e240000c 	sub	r0, r0, #12
  57efbc:	ebf34375 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57efc0:	e59d32d0 	ldr	r3, [sp, #720]	@ 0x2d0
  57efc4:	e3530000 	cmp	r3, #0
  57efc8:	0a00058f 	beq	58060c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x277c>
  57efcc:	e28d4f49 	add	r4, sp, #292	@ 0x124
  57efd0:	e51f110c 	ldr	r1, [pc, #-268]	@ 57eecc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x103c>
  57efd4:	e1a02008 	mov	r2, r8
  57efd8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57efdc:	e08f1001 	add	r1, pc, r1
  57efe0:	e1a00004 	mov	r0, r4
  57efe4:	ebf34ad3 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57efe8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57efec:	e1a00005 	mov	r0, r5
  57eff0:	ebf4230a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57eff4:	e1a01004 	mov	r1, r4
  57eff8:	ebf423aa 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57effc:	e1a04000 	mov	r4, r0
  57f000:	ebf3ae9e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f004:	e59d0124 	ldr	r0, [sp, #292]	@ 0x124
  57f008:	e3a02006 	mov	r2, #6
  57f00c:	e1a01006 	mov	r1, r6
  57f010:	e3a03001 	mov	r3, #1
  57f014:	e240000c 	sub	r0, r0, #12
  57f018:	e5842000 	str	r2, [r4]
  57f01c:	e5c43008 	strb	r3, [r4, #8]
  57f020:	ebf3435c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f024:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57f028:	e1a01005 	mov	r1, r5
  57f02c:	e3a02000 	mov	r2, #0
  57f030:	eb017436 	bl	5dc110 <netflix::DiskStore::Context::setupVariant(netflix::Variant*, netflix::DiskStore::Context::OperationType) const@@Base>
  57f034:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  57f038:	e3500000 	cmp	r0, #0
  57f03c:	0a000000 	beq	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57f040:	ebf3ae4b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57f044:	e59d3328 	ldr	r3, [sp, #808]	@ 0x328
  57f048:	e3530000 	cmp	r3, #0
  57f04c:	1a000005 	bne	57f068 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11d8>
  57f050:	e1a00005 	mov	r0, r5
  57f054:	ebf3ae89 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f058:	e3a02006 	mov	r2, #6
  57f05c:	e3a03001 	mov	r3, #1
  57f060:	e58d2328 	str	r2, [sp, #808]	@ 0x328
  57f064:	e5cd3330 	strb	r3, [sp, #816]	@ 0x330
  57f068:	e59d0014 	ldr	r0, [sp, #20]
  57f06c:	e3a03000 	mov	r3, #0
  57f070:	e1a01005 	mov	r1, r5
  57f074:	e5803000 	str	r3, [r0]
  57f078:	ebf404dd 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  57f07c:	e1a00005 	mov	r0, r5
  57f080:	ebf3ae7e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f084:	e59d6024 	ldr	r6, [sp, #36]	@ 0x24
  57f088:	e59d2374 	ldr	r2, [sp, #884]	@ 0x374
  57f08c:	e59d0014 	ldr	r0, [sp, #20]
  57f090:	e5963000 	ldr	r3, [r6]
  57f094:	e1520003 	cmp	r2, r3
  57f098:	1a000a26 	bne	581938 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3aa8>
  57f09c:	e28ddfdf 	add	sp, sp, #892	@ 0x37c
  57f0a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  57f0a4:	e28daf76 	add	sl, sp, #472	@ 0x1d8
  57f0a8:	e51f11e0 	ldr	r1, [pc, #-480]	@ 57eed0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1040>
  57f0ac:	e599c080 	ldr	ip, [r9, #128]	@ 0x80
  57f0b0:	e1a02006 	mov	r2, r6
  57f0b4:	e08f1001 	add	r1, pc, r1
  57f0b8:	e1a0000a 	mov	r0, sl
  57f0bc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f0c0:	e58dc018 	str	ip, [sp, #24]
  57f0c4:	ebf34a9b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f0c8:	e28d5f77 	add	r5, sp, #476	@ 0x1dc
  57f0cc:	e1a0200a 	mov	r2, sl
  57f0d0:	e1a01007 	mov	r1, r7
  57f0d4:	e1a00005 	mov	r0, r5
  57f0d8:	ebf5a641 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f0dc:	e1a00008 	mov	r0, r8
  57f0e0:	e59d1018 	ldr	r1, [sp, #24]
  57f0e4:	e1a02005 	mov	r2, r5
  57f0e8:	eb01643a 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57f0ec:	e59d01dc 	ldr	r0, [sp, #476]	@ 0x1dc
  57f0f0:	e1a01004 	mov	r1, r4
  57f0f4:	e240000c 	sub	r0, r0, #12
  57f0f8:	ebf34326 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f0fc:	e59d01d8 	ldr	r0, [sp, #472]	@ 0x1d8
  57f100:	e1a01004 	mov	r1, r4
  57f104:	e240000c 	sub	r0, r0, #12
  57f108:	ebf34322 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f10c:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  57f110:	e3530000 	cmp	r3, #0
  57f114:	0a0005ef 	beq	5808d8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a48>
  57f118:	e28d5e1e 	add	r5, sp, #480	@ 0x1e0
  57f11c:	e51f1250 	ldr	r1, [pc, #-592]	@ 57eed4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1044>
  57f120:	e1a02006 	mov	r2, r6
  57f124:	e08f1001 	add	r1, pc, r1
  57f128:	e1a00005 	mov	r0, r5
  57f12c:	ebf34a81 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f130:	e1a02005 	mov	r2, r5
  57f134:	e28d0fa2 	add	r0, sp, #648	@ 0x288
  57f138:	e1a01007 	mov	r1, r7
  57f13c:	ebf5a628 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f140:	e59d01e0 	ldr	r0, [sp, #480]	@ 0x1e0
  57f144:	e1a01004 	mov	r1, r4
  57f148:	e28d5f79 	add	r5, sp, #484	@ 0x1e4
  57f14c:	e240000c 	sub	r0, r0, #12
  57f150:	ebf34310 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f154:	e51f1284 	ldr	r1, [pc, #-644]	@ 57eed8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1048>
  57f158:	e1a00005 	mov	r0, r5
  57f15c:	e1a02006 	mov	r2, r6
  57f160:	e08f1001 	add	r1, pc, r1
  57f164:	ebf34a73 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f168:	e1a02005 	mov	r2, r5
  57f16c:	e28d0fa5 	add	r0, sp, #660	@ 0x294
  57f170:	e1a01007 	mov	r1, r7
  57f174:	ebf5a61a 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f178:	e59d01e4 	ldr	r0, [sp, #484]	@ 0x1e4
  57f17c:	e1a01004 	mov	r1, r4
  57f180:	e28d5f7a 	add	r5, sp, #488	@ 0x1e8
  57f184:	e240000c 	sub	r0, r0, #12
  57f188:	ebf34302 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f18c:	e51f12b8 	ldr	r1, [pc, #-696]	@ 57eedc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x104c>
  57f190:	e1a00005 	mov	r0, r5
  57f194:	e1a02006 	mov	r2, r6
  57f198:	e08f1001 	add	r1, pc, r1
  57f19c:	ebf34a65 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f1a0:	e3a0c000 	mov	ip, #0
  57f1a4:	e1a00007 	mov	r0, r7
  57f1a8:	e1a01005 	mov	r1, r5
  57f1ac:	e58dc000 	str	ip, [sp]
  57f1b0:	e1a0200c 	mov	r2, ip
  57f1b4:	e28d3073 	add	r3, sp, #115	@ 0x73
  57f1b8:	e5cdc073 	strb	ip, [sp, #115]	@ 0x73
  57f1bc:	ebf5a93a 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57f1c0:	e58d0020 	str	r0, [sp, #32]
  57f1c4:	e1a01004 	mov	r1, r4
  57f1c8:	e59d01e8 	ldr	r0, [sp, #488]	@ 0x1e8
  57f1cc:	e240000c 	sub	r0, r0, #12
  57f1d0:	ebf342f0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f1d4:	e1a00006 	mov	r0, r6
  57f1d8:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  57f1dc:	eb016e23 	bl	5daa70 <netflix::DiskStore::Context::keys() const@@Base>
  57f1e0:	e28d7d0d 	add	r7, sp, #832	@ 0x340
  57f1e4:	e3a01003 	mov	r1, #3
  57f1e8:	e58d7034 	str	r7, [sp, #52]	@ 0x34
  57f1ec:	e1a00007 	mov	r0, r7
  57f1f0:	ebf56f6c 	bl	2dafa8 <netflix::Variant::Variant(netflix::Variant::Type)@@Base>
  57f1f4:	e28d0058 	add	r0, sp, #88	@ 0x58
  57f1f8:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  57f1fc:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57f200:	e58da018 	str	sl, [sp, #24]
  57f204:	eb015bb9 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  57f208:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  57f20c:	e28d1fde 	add	r1, sp, #888	@ 0x378
  57f210:	e59d52c4 	ldr	r5, [sp, #708]	@ 0x2c4
  57f214:	e34f3fff 	movt	r3, #65535	@ 0xffff
  57f218:	e28d7faf 	add	r7, sp, #700	@ 0x2bc
  57f21c:	e18100d3 	ldrd	r0, [r1, r3]
  57f220:	e1550007 	cmp	r5, r7
  57f224:	e1cd04f0 	strd	r0, [sp, #64]	@ 0x40
  57f228:	0a000390 	beq	580070 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x21e0>
  57f22c:	e51fa354 	ldr	sl, [pc, #-852]	@ 57eee0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1050>
  57f230:	e1cd04d0 	ldrd	r0, [sp, #64]	@ 0x40
  57f234:	e3a01000 	mov	r1, #0
  57f238:	e08fa00a 	add	sl, pc, sl
  57f23c:	e58da02c 	str	sl, [sp, #44]	@ 0x2c
  57f240:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57f244:	e58da018 	str	sl, [sp, #24]
  57f248:	e51fa36c 	ldr	sl, [pc, #-876]	@ 57eee4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1054>
  57f24c:	e2000010 	and	r0, r0, #16
  57f250:	e1cd03f8 	strd	r0, [sp, #56]	@ 0x38
  57f254:	e08fa00a 	add	sl, pc, sl
  57f258:	e58da048 	str	sl, [sp, #72]	@ 0x48
  57f25c:	e51fa37c 	ldr	sl, [pc, #-892]	@ 57eee8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1058>
  57f260:	e08fa00a 	add	sl, pc, sl
  57f264:	e58da04c 	str	sl, [sp, #76]	@ 0x4c
  57f268:	e51fa384 	ldr	sl, [pc, #-900]	@ 57eeec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x105c>
  57f26c:	e08fa00a 	add	sl, pc, sl
  57f270:	e58da050 	str	sl, [sp, #80]	@ 0x50
  57f274:	e51fa38c 	ldr	sl, [pc, #-908]	@ 57eef0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1060>
  57f278:	e08fa00a 	add	sl, pc, sl
  57f27c:	e58da054 	str	sl, [sp, #84]	@ 0x54
  57f280:	ea000008 	b	57f2a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1418>
  57f284:	e5951010 	ldr	r1, [r5, #16]
  57f288:	e511300c 	ldr	r3, [r1, #-12]
  57f28c:	e1520003 	cmp	r2, r3
  57f290:	0a0003b5 	beq	58016c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x22dc>
  57f294:	e1a00005 	mov	r0, r5
  57f298:	ebf346ba 	bl	250d88 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)@plt>
  57f29c:	e1500007 	cmp	r0, r7
  57f2a0:	e1a05000 	mov	r5, r0
  57f2a4:	0a000373 	beq	580078 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x21e8>
  57f2a8:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  57f2ac:	e510200c 	ldr	r2, [r0, #-12]
  57f2b0:	e3520000 	cmp	r2, #0
  57f2b4:	1afffff2 	bne	57f284 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x13f4>
  57f2b8:	e59d8294 	ldr	r8, [sp, #660]	@ 0x294
  57f2bc:	e518900c 	ldr	r9, [r8, #-12]
  57f2c0:	e3590000 	cmp	r9, #0
  57f2c4:	1a00038a 	bne	5800f4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2264>
  57f2c8:	e59da020 	ldr	sl, [sp, #32]
  57f2cc:	e35a0000 	cmp	sl, #0
  57f2d0:	1a000399 	bne	58013c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x22ac>
  57f2d4:	e28d8f7b 	add	r8, sp, #492	@ 0x1ec
  57f2d8:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  57f2dc:	e59d2018 	ldr	r2, [sp, #24]
  57f2e0:	e3a03000 	mov	r3, #0
  57f2e4:	e1a00008 	mov	r0, r8
  57f2e8:	e58d3358 	str	r3, [sp, #856]	@ 0x358
  57f2ec:	e28dafd6 	add	sl, sp, #856	@ 0x358
  57f2f0:	ebf34a10 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f2f4:	e28dafd6 	add	sl, sp, #856	@ 0x358
  57f2f8:	e1a0000a 	mov	r0, sl
  57f2fc:	ebf42247 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f300:	e1a01008 	mov	r1, r8
  57f304:	ebf422e7 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f308:	e285c010 	add	ip, r5, #16
  57f30c:	e1a08000 	mov	r8, r0
  57f310:	e58dc030 	str	ip, [sp, #48]	@ 0x30
  57f314:	ebf3add9 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f318:	e1a00008 	mov	r0, r8
  57f31c:	e3a03001 	mov	r3, #1
  57f320:	e59d1030 	ldr	r1, [sp, #48]	@ 0x30
  57f324:	e4803008 	str	r3, [r0], #8
  57f328:	ebf34555 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  57f32c:	e59d01ec 	ldr	r0, [sp, #492]	@ 0x1ec
  57f330:	e28d8e1f 	add	r8, sp, #496	@ 0x1f0
  57f334:	e1a01004 	mov	r1, r4
  57f338:	e240000c 	sub	r0, r0, #12
  57f33c:	ebf34295 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f340:	e1a00008 	mov	r0, r8
  57f344:	e59d1048 	ldr	r1, [sp, #72]	@ 0x48
  57f348:	e59d2018 	ldr	r2, [sp, #24]
  57f34c:	ebf349f9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f350:	e1a0000a 	mov	r0, sl
  57f354:	ebf42231 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f358:	e1a01008 	mov	r1, r8
  57f35c:	ebf422d1 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f360:	e1a08000 	mov	r8, r0
  57f364:	e5959018 	ldr	r9, [r5, #24]
  57f368:	ebf3adc4 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f36c:	e59d01f0 	ldr	r0, [sp, #496]	@ 0x1f0
  57f370:	e3a03004 	mov	r3, #4
  57f374:	e1a02009 	mov	r2, r9
  57f378:	e5883000 	str	r3, [r8]
  57f37c:	e240000c 	sub	r0, r0, #12
  57f380:	e1a03fc9 	asr	r3, r9, #31
  57f384:	e1a01004 	mov	r1, r4
  57f388:	e1c820f8 	strd	r2, [r8, #8]
  57f38c:	ebf34281 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f390:	e1cd03d8 	ldrd	r0, [sp, #56]	@ 0x38
  57f394:	e1901001 	orrs	r1, r0, r1
  57f398:	0a000382 	beq	5801a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2318>
  57f39c:	e59d3288 	ldr	r3, [sp, #648]	@ 0x288
  57f3a0:	e513300c 	ldr	r3, [r3, #-12]
  57f3a4:	e3530000 	cmp	r3, #0
  57f3a8:	1a000373 	bne	58017c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x22ec>
  57f3ac:	e28d8f7e 	add	r8, sp, #504	@ 0x1f8
  57f3b0:	e59d104c 	ldr	r1, [sp, #76]	@ 0x4c
  57f3b4:	e59d2018 	ldr	r2, [sp, #24]
  57f3b8:	e1a00008 	mov	r0, r8
  57f3bc:	ebf349dd 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f3c0:	e1a0000a 	mov	r0, sl
  57f3c4:	ebf42215 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f3c8:	e1a01008 	mov	r1, r8
  57f3cc:	ebf422b5 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f3d0:	e1a08000 	mov	r8, r0
  57f3d4:	e2859014 	add	r9, r5, #20
  57f3d8:	ebf3ada8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f3dc:	e1a00008 	mov	r0, r8
  57f3e0:	e3a03001 	mov	r3, #1
  57f3e4:	e1a01009 	mov	r1, r9
  57f3e8:	e4803008 	str	r3, [r0], #8
  57f3ec:	ebf34524 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  57f3f0:	e59d01f8 	ldr	r0, [sp, #504]	@ 0x1f8
  57f3f4:	e28d8f7f 	add	r8, sp, #508	@ 0x1fc
  57f3f8:	e1a01004 	mov	r1, r4
  57f3fc:	e240000c 	sub	r0, r0, #12
  57f400:	ebf34264 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f404:	e59d1030 	ldr	r1, [sp, #48]	@ 0x30
  57f408:	e1a00008 	mov	r0, r8
  57f40c:	ebf3451c 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  57f410:	e1a00008 	mov	r0, r8
  57f414:	e3a01001 	mov	r1, #1
  57f418:	e3a0205f 	mov	r2, #95	@ 0x5f
  57f41c:	ebf33ca2 	bl	24e6ac <std::string::append(unsigned int, char)@plt>
  57f420:	e1a00008 	mov	r0, r8
  57f424:	e1a01009 	mov	r1, r9
  57f428:	ebf34b15 	bl	252084 <std::string::append(std::string const&)@plt>
  57f42c:	e1a03000 	mov	r3, r0
  57f430:	e51f24e0 	ldr	r2, [pc, #-1248]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57f434:	e5931000 	ldr	r1, [r3]
  57f438:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  57f43c:	e58d12d0 	str	r1, [sp, #720]	@ 0x2d0
  57f440:	e79b2002 	ldr	r2, [fp, r2]
  57f444:	e282200c 	add	r2, r2, #12
  57f448:	e5832000 	str	r2, [r3]
  57f44c:	ebf421f3 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f450:	e1a01004 	mov	r1, r4
  57f454:	ebf42293 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f458:	e1a08000 	mov	r8, r0
  57f45c:	ebf3ad87 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f460:	e1a00008 	mov	r0, r8
  57f464:	e1a0100a 	mov	r1, sl
  57f468:	ebf3ac96 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  57f46c:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57f470:	e59d1018 	ldr	r1, [sp, #24]
  57f474:	e240000c 	sub	r0, r0, #12
  57f478:	ebf34246 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f47c:	e59d01fc 	ldr	r0, [sp, #508]	@ 0x1fc
  57f480:	e1a01004 	mov	r1, r4
  57f484:	e240000c 	sub	r0, r0, #12
  57f488:	ebf34242 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f48c:	e1a0000a 	mov	r0, sl
  57f490:	ebf3ad7a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f494:	eaffff7e 	b	57f294 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1404>
  57f498:	e28daf65 	add	sl, sp, #404	@ 0x194
  57f49c:	e51f15b0 	ldr	r1, [pc, #-1456]	@ 57eef4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1064>
  57f4a0:	e599c080 	ldr	ip, [r9, #128]	@ 0x80
  57f4a4:	e1a02006 	mov	r2, r6
  57f4a8:	e08f1001 	add	r1, pc, r1
  57f4ac:	e1a0000a 	mov	r0, sl
  57f4b0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f4b4:	e58dc028 	str	ip, [sp, #40]	@ 0x28
  57f4b8:	ebf3499e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f4bc:	e28d5f66 	add	r5, sp, #408	@ 0x198
  57f4c0:	e1a0200a 	mov	r2, sl
  57f4c4:	e1a01007 	mov	r1, r7
  57f4c8:	e1a00005 	mov	r0, r5
  57f4cc:	ebf5a544 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f4d0:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57f4d4:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  57f4d8:	e1a02005 	mov	r2, r5
  57f4dc:	e58da018 	str	sl, [sp, #24]
  57f4e0:	e1a0000a 	mov	r0, sl
  57f4e4:	eb01633b 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57f4e8:	e59d0198 	ldr	r0, [sp, #408]	@ 0x198
  57f4ec:	e1a01004 	mov	r1, r4
  57f4f0:	e240000c 	sub	r0, r0, #12
  57f4f4:	ebf34227 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f4f8:	e59d0194 	ldr	r0, [sp, #404]	@ 0x194
  57f4fc:	e1a01004 	mov	r1, r4
  57f500:	e240000c 	sub	r0, r0, #12
  57f504:	ebf34223 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f508:	e59d32a0 	ldr	r3, [sp, #672]	@ 0x2a0
  57f50c:	e3530000 	cmp	r3, #0
  57f510:	0a0004f6 	beq	5808f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a60>
  57f514:	e28d5f67 	add	r5, sp, #412	@ 0x19c
  57f518:	e51f1628 	ldr	r1, [pc, #-1576]	@ 57eef8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1068>
  57f51c:	e1a02006 	mov	r2, r6
  57f520:	e08f1001 	add	r1, pc, r1
  57f524:	e1a00005 	mov	r0, r5
  57f528:	ebf34982 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f52c:	e28dad0a 	add	sl, sp, #640	@ 0x280
  57f530:	e58da028 	str	sl, [sp, #40]	@ 0x28
  57f534:	e28da06b 	add	sl, sp, #107	@ 0x6b
  57f538:	e1a02005 	mov	r2, r5
  57f53c:	e1a01007 	mov	r1, r7
  57f540:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  57f544:	e1a0300a 	mov	r3, sl
  57f548:	ebf93242 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57f54c:	e59d019c 	ldr	r0, [sp, #412]	@ 0x19c
  57f550:	e1a01004 	mov	r1, r4
  57f554:	e240000c 	sub	r0, r0, #12
  57f558:	ebf3420e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f55c:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57f560:	e3530000 	cmp	r3, #0
  57f564:	0a000258 	beq	57fecc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x203c>
  57f568:	e28d5e1a 	add	r5, sp, #416	@ 0x1a0
  57f56c:	e51f1678 	ldr	r1, [pc, #-1656]	@ 57eefc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x106c>
  57f570:	e1a02006 	mov	r2, r6
  57f574:	e08f1001 	add	r1, pc, r1
  57f578:	e1a00005 	mov	r0, r5
  57f57c:	ebf3496d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f580:	e28dcfa2 	add	ip, sp, #648	@ 0x288
  57f584:	e1a02005 	mov	r2, r5
  57f588:	e1a01007 	mov	r1, r7
  57f58c:	e1a0300a 	mov	r3, sl
  57f590:	e1a0000c 	mov	r0, ip
  57f594:	e58dc02c 	str	ip, [sp, #44]	@ 0x2c
  57f598:	ebf9322e 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57f59c:	e59d01a0 	ldr	r0, [sp, #416]	@ 0x1a0
  57f5a0:	e1a01004 	mov	r1, r4
  57f5a4:	e240000c 	sub	r0, r0, #12
  57f5a8:	ebf341fa 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f5ac:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57f5b0:	e3530000 	cmp	r3, #0
  57f5b4:	1a000374 	bne	58038c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x24fc>
  57f5b8:	e51f26c0 	ldr	r2, [pc, #-1728]	@ 57ef00 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1070>
  57f5bc:	e1a00009 	mov	r0, r9
  57f5c0:	e3a0100c 	mov	r1, #12
  57f5c4:	e08f2002 	add	r2, pc, r2
  57f5c8:	ebf97232 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57f5cc:	e59d6014 	ldr	r6, [sp, #20]
  57f5d0:	e3a02006 	mov	r2, #6
  57f5d4:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  57f5d8:	e3a03000 	mov	r3, #0
  57f5dc:	e1a01004 	mov	r1, r4
  57f5e0:	e5862000 	str	r2, [r6]
  57f5e4:	e240000c 	sub	r0, r0, #12
  57f5e8:	e5c63008 	strb	r3, [r6, #8]
  57f5ec:	ebf341e9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f5f0:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  57f5f4:	e1a01004 	mov	r1, r4
  57f5f8:	e240000c 	sub	r0, r0, #12
  57f5fc:	ebf341e5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f600:	eafffdbc 	b	57ecf8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe68>
  57f604:	e28daf61 	add	sl, sp, #388	@ 0x184
  57f608:	e51f170c 	ldr	r1, [pc, #-1804]	@ 57ef04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1074>
  57f60c:	e5993080 	ldr	r3, [r9, #128]	@ 0x80
  57f610:	e1a02006 	mov	r2, r6
  57f614:	e08f1001 	add	r1, pc, r1
  57f618:	e1a0000a 	mov	r0, sl
  57f61c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f620:	e58d3018 	str	r3, [sp, #24]
  57f624:	ebf34943 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f628:	e28d5f62 	add	r5, sp, #392	@ 0x188
  57f62c:	e1a0200a 	mov	r2, sl
  57f630:	e1a01007 	mov	r1, r7
  57f634:	e1a00005 	mov	r0, r5
  57f638:	ebf5a4e9 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f63c:	e1a00008 	mov	r0, r8
  57f640:	e59d1018 	ldr	r1, [sp, #24]
  57f644:	e1a02005 	mov	r2, r5
  57f648:	eb0162e2 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57f64c:	e59d0188 	ldr	r0, [sp, #392]	@ 0x188
  57f650:	e1a01004 	mov	r1, r4
  57f654:	e240000c 	sub	r0, r0, #12
  57f658:	ebf341ce 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f65c:	e59d0184 	ldr	r0, [sp, #388]	@ 0x184
  57f660:	e1a01004 	mov	r1, r4
  57f664:	e240000c 	sub	r0, r0, #12
  57f668:	ebf341ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f66c:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  57f670:	e3530000 	cmp	r3, #0
  57f674:	0a000500 	beq	580a7c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2bec>
  57f678:	e28d5f63 	add	r5, sp, #396	@ 0x18c
  57f67c:	e51f177c 	ldr	r1, [pc, #-1916]	@ 57ef08 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1078>
  57f680:	e1a02006 	mov	r2, r6
  57f684:	e08f1001 	add	r1, pc, r1
  57f688:	e1a00005 	mov	r0, r5
  57f68c:	ebf34929 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f690:	e28dafa5 	add	sl, sp, #660	@ 0x294
  57f694:	e58da030 	str	sl, [sp, #48]	@ 0x30
  57f698:	e28da06b 	add	sl, sp, #107	@ 0x6b
  57f69c:	e1a02005 	mov	r2, r5
  57f6a0:	e1a01007 	mov	r1, r7
  57f6a4:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  57f6a8:	e1a0300a 	mov	r3, sl
  57f6ac:	ebf931e9 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57f6b0:	e59d018c 	ldr	r0, [sp, #396]	@ 0x18c
  57f6b4:	e1a01004 	mov	r1, r4
  57f6b8:	e240000c 	sub	r0, r0, #12
  57f6bc:	ebf341b5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f6c0:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57f6c4:	e3530000 	cmp	r3, #0
  57f6c8:	0a00019a 	beq	57fd38 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1ea8>
  57f6cc:	e28d5e19 	add	r5, sp, #400	@ 0x190
  57f6d0:	e51f17cc 	ldr	r1, [pc, #-1996]	@ 57ef0c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x107c>
  57f6d4:	e1a02006 	mov	r2, r6
  57f6d8:	e08f1001 	add	r1, pc, r1
  57f6dc:	e1a00005 	mov	r0, r5
  57f6e0:	ebf34914 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f6e4:	e28dce2a 	add	ip, sp, #672	@ 0x2a0
  57f6e8:	e1a01007 	mov	r1, r7
  57f6ec:	e1a02005 	mov	r2, r5
  57f6f0:	e1a0300a 	mov	r3, sl
  57f6f4:	e1a0000c 	mov	r0, ip
  57f6f8:	e58dc018 	str	ip, [sp, #24]
  57f6fc:	ebf931d5 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57f700:	e59d0190 	ldr	r0, [sp, #400]	@ 0x190
  57f704:	e1a01004 	mov	r1, r4
  57f708:	e240000c 	sub	r0, r0, #12
  57f70c:	ebf341a1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f710:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57f714:	e3530000 	cmp	r3, #0
  57f718:	1a000337 	bne	5803fc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x256c>
  57f71c:	e51f2814 	ldr	r2, [pc, #-2068]	@ 57ef10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1080>
  57f720:	e1a00009 	mov	r0, r9
  57f724:	e3a0100d 	mov	r1, #13
  57f728:	e08f2002 	add	r2, pc, r2
  57f72c:	ebf971d9 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57f730:	e59d6014 	ldr	r6, [sp, #20]
  57f734:	e3a02006 	mov	r2, #6
  57f738:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  57f73c:	e3a03000 	mov	r3, #0
  57f740:	e1a01004 	mov	r1, r4
  57f744:	e5862000 	str	r2, [r6]
  57f748:	e240000c 	sub	r0, r0, #12
  57f74c:	e5c63008 	strb	r3, [r6, #8]
  57f750:	ebf34190 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f754:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  57f758:	e1a01004 	mov	r1, r4
  57f75c:	e240000c 	sub	r0, r0, #12
  57f760:	ebf3418c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f764:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  57f768:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f76c:	e3500000 	cmp	r0, #0
  57f770:	0afffe41 	beq	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  57f774:	ebf3ac7e 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57f778:	eafffe3f 	b	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  57f77c:	e28daf4a 	add	sl, sp, #296	@ 0x128
  57f780:	e51f1874 	ldr	r1, [pc, #-2164]	@ 57ef14 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1084>
  57f784:	e599e080 	ldr	lr, [r9, #128]	@ 0x80
  57f788:	e1a02008 	mov	r2, r8
  57f78c:	e08f1001 	add	r1, pc, r1
  57f790:	e1a0000a 	mov	r0, sl
  57f794:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f798:	e58de018 	str	lr, [sp, #24]
  57f79c:	ebf348e5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f7a0:	e28d5f4b 	add	r5, sp, #300	@ 0x12c
  57f7a4:	e1a0200a 	mov	r2, sl
  57f7a8:	e1a01007 	mov	r1, r7
  57f7ac:	e1a00005 	mov	r0, r5
  57f7b0:	ebf5a48b 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  57f7b4:	e1a00004 	mov	r0, r4
  57f7b8:	e59d1018 	ldr	r1, [sp, #24]
  57f7bc:	e1a02005 	mov	r2, r5
  57f7c0:	eb016284 	bl	5d81d8 <netflix::DiskStore::findContext(std::string const&) const@@Base>
  57f7c4:	e59d012c 	ldr	r0, [sp, #300]	@ 0x12c
  57f7c8:	e1a01006 	mov	r1, r6
  57f7cc:	e240000c 	sub	r0, r0, #12
  57f7d0:	ebf34170 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f7d4:	e59d0128 	ldr	r0, [sp, #296]	@ 0x128
  57f7d8:	e1a01006 	mov	r1, r6
  57f7dc:	e240000c 	sub	r0, r0, #12
  57f7e0:	ebf3416c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f7e4:	e59d32d0 	ldr	r3, [sp, #720]	@ 0x2d0
  57f7e8:	e3530000 	cmp	r3, #0
  57f7ec:	0a000450 	beq	580934 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2aa4>
  57f7f0:	e28d4d05 	add	r4, sp, #320	@ 0x140
  57f7f4:	e51f18e4 	ldr	r1, [pc, #-2276]	@ 57ef18 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1088>
  57f7f8:	e1a02008 	mov	r2, r8
  57f7fc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f800:	e08f1001 	add	r1, pc, r1
  57f804:	e1a00004 	mov	r0, r4
  57f808:	ebf348ca 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f80c:	e28d3fde 	add	r3, sp, #888	@ 0x378
  57f810:	e3a0c000 	mov	ip, #0
  57f814:	e1a00007 	mov	r0, r7
  57f818:	e58dc000 	str	ip, [sp]
  57f81c:	e1a01004 	mov	r1, r4
  57f820:	e1a0200c 	mov	r2, ip
  57f824:	e523c168 	str	ip, [r3, #-360]!	@ 0xfffffe98
  57f828:	ebf939ea 	bl	3cdfd8 <int netflix::Variant::mapValueImpl<int>(std::string const&, bool*, int const&, std::pair<int, int> const*) const@@Base>
  57f82c:	e1a04000 	mov	r4, r0
  57f830:	e59d0140 	ldr	r0, [sp, #320]	@ 0x140
  57f834:	e1a01006 	mov	r1, r6
  57f838:	e240000c 	sub	r0, r0, #12
  57f83c:	ebf34155 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f840:	e3540000 	cmp	r4, #0
  57f844:	da0001d6 	ble	57ffa4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2114>
  57f848:	e51f38f8 	ldr	r3, [pc, #-2296]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57f84c:	e1a01004 	mov	r1, r4
  57f850:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57f854:	e1a02006 	mov	r2, r6
  57f858:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f85c:	e79b3003 	ldr	r3, [fp, r3]
  57f860:	e283300c 	add	r3, r3, #12
  57f864:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  57f868:	eb017ed7 	bl	5df3cc <netflix::DiskStore::Context::resize(int, std::string*)@@Base>
  57f86c:	e3500000 	cmp	r0, #0
  57f870:	1a000276 	bne	580250 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x23c0>
  57f874:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  57f878:	e28d4f53 	add	r4, sp, #332	@ 0x14c
  57f87c:	e51f1968 	ldr	r1, [pc, #-2408]	@ 57ef1c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x108c>
  57f880:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f884:	e1a00004 	mov	r0, r4
  57f888:	e1a02007 	mov	r2, r7
  57f88c:	e08f1001 	add	r1, pc, r1
  57f890:	e58d7018 	str	r7, [sp, #24]
  57f894:	ebf348a7 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f898:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57f89c:	e1a00005 	mov	r0, r5
  57f8a0:	ebf420de 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f8a4:	e1a01004 	mov	r1, r4
  57f8a8:	ebf4217e 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f8ac:	e1a07000 	mov	r7, r0
  57f8b0:	ebf3ac72 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57f8b4:	e59d014c 	ldr	r0, [sp, #332]	@ 0x14c
  57f8b8:	e3a02006 	mov	r2, #6
  57f8bc:	e3a03000 	mov	r3, #0
  57f8c0:	e5872000 	str	r2, [r7]
  57f8c4:	e240000c 	sub	r0, r0, #12
  57f8c8:	e1a01008 	mov	r1, r8
  57f8cc:	e5c73008 	strb	r3, [r7, #8]
  57f8d0:	e28d4e15 	add	r4, sp, #336	@ 0x150
  57f8d4:	ebf3412f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f8d8:	e51f19c0 	ldr	r1, [pc, #-2496]	@ 57ef20 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1090>
  57f8dc:	e59d2018 	ldr	r2, [sp, #24]
  57f8e0:	e1a00004 	mov	r0, r4
  57f8e4:	e08f1001 	add	r1, pc, r1
  57f8e8:	ebf34892 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57f8ec:	e1a00005 	mov	r0, r5
  57f8f0:	ebf420ca 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57f8f4:	e1a01004 	mov	r1, r4
  57f8f8:	ebf4216a 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57f8fc:	e1a01006 	mov	r1, r6
  57f900:	ebf92f26 	bl	3cb5a0 <netflix::Variant::operator=(std::string const&)@@Base>
  57f904:	e59d0150 	ldr	r0, [sp, #336]	@ 0x150
  57f908:	e1a01008 	mov	r1, r8
  57f90c:	e240000c 	sub	r0, r0, #12
  57f910:	ebf34120 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f914:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57f918:	e1a01005 	mov	r1, r5
  57f91c:	e3a02000 	mov	r2, #0
  57f920:	eb0171fa 	bl	5dc110 <netflix::DiskStore::Context::setupVariant(netflix::Variant*, netflix::DiskStore::Context::OperationType) const@@Base>
  57f924:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  57f928:	e1a01008 	mov	r1, r8
  57f92c:	e240000c 	sub	r0, r0, #12
  57f930:	ebf34118 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57f934:	eafffdbe 	b	57f034 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11a4>
  57f938:	e51f3a1c 	ldr	r3, [pc, #-2588]	@ 57ef24 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1094>
  57f93c:	e3a02000 	mov	r2, #0
  57f940:	e58d2358 	str	r2, [sp, #856]	@ 0x358
  57f944:	e79b3003 	ldr	r3, [fp, r3]
  57f948:	e5933000 	ldr	r3, [r3]
  57f94c:	e593512c 	ldr	r5, [r3, #300]	@ 0x12c
  57f950:	e5939128 	ldr	r9, [r3, #296]	@ 0x128
  57f954:	e1550002 	cmp	r5, r2
  57f958:	0a00000b 	beq	57f98c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1afc>
  57f95c:	e51f2a3c 	ldr	r2, [pc, #-2620]	@ 57ef28 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1098>
  57f960:	e2853004 	add	r3, r5, #4
  57f964:	e79b2002 	ldr	r2, [fp, r2]
  57f968:	e3520000 	cmp	r2, #0
  57f96c:	0a000a19 	beq	5821d8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4348>
  57f970:	f57ff05f 	dmb	sy
  57f974:	e193af9f 	ldrex	r10, [r3]
  57f978:	e28aa001 	add	sl, sl, #1
  57f97c:	e183cf9a 	strex	ip, sl, [r3]
  57f980:	e35c0000 	cmp	ip, #0
  57f984:	1afffffa 	bne	57f974 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1ae4>
  57f988:	f57ff05f 	dmb	sy
  57f98c:	e3590000 	cmp	r9, #0
  57f990:	028dafd6 	addeq	sl, sp, #856	@ 0x358
  57f994:	0a000050 	beq	57fadc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1c4c>
  57f998:	e289a040 	add	sl, r9, #64	@ 0x40
  57f99c:	e3a01001 	mov	r1, #1
  57f9a0:	e58da028 	str	sl, [sp, #40]	@ 0x28
  57f9a4:	e1a0000a 	mov	r0, sl
  57f9a8:	eb0df5f6 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  57f9ac:	e51f3a5c 	ldr	r3, [pc, #-2652]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57f9b0:	e28dad07 	add	sl, sp, #448	@ 0x1c0
  57f9b4:	e58da02c 	str	sl, [sp, #44]	@ 0x2c
  57f9b8:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  57f9bc:	e58da018 	str	sl, [sp, #24]
  57f9c0:	e3a0c000 	mov	ip, #0
  57f9c4:	e79b3003 	ldr	r3, [fp, r3]
  57f9c8:	e1a0200a 	mov	r2, sl
  57f9cc:	e58dc2d4 	str	ip, [sp, #724]	@ 0x2d4
  57f9d0:	e3e0c000 	mvn	ip, #0
  57f9d4:	e51f1ab0 	ldr	r1, [pc, #-2736]	@ 57ef2c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x109c>
  57f9d8:	e283300c 	add	r3, r3, #12
  57f9dc:	e58dc2d8 	str	ip, [sp, #728]	@ 0x2d8
  57f9e0:	e28dcc02 	add	ip, sp, #512	@ 0x200
  57f9e4:	e58d32d0 	str	r3, [sp, #720]	@ 0x2d0
  57f9e8:	e3a0a000 	mov	sl, #0
  57f9ec:	e3a0b000 	mov	fp, #0
  57f9f0:	e08f1001 	add	r1, pc, r1
  57f9f4:	e28d0d07 	add	r0, sp, #448	@ 0x1c0
  57f9f8:	e1ccaef0 	strd	sl, [ip, #224]	@ 0xe0
  57f9fc:	ebf3484d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fa00:	e1a00006 	mov	r0, r6
  57fa04:	e1a01007 	mov	r1, r7
  57fa08:	e28d2d07 	add	r2, sp, #448	@ 0x1c0
  57fa0c:	e28d306b 	add	r3, sp, #107	@ 0x6b
  57fa10:	ebf93110 	bl	3cbe58 <std::string netflix::Variant::mapValue<std::string>(std::string const&, bool*) const@@Base>
  57fa14:	e59d01c0 	ldr	r0, [sp, #448]	@ 0x1c0
  57fa18:	e1a01008 	mov	r1, r8
  57fa1c:	e240000c 	sub	r0, r0, #12
  57fa20:	ebf340dc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fa24:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  57fa28:	e3530000 	cmp	r3, #0
  57fa2c:	0a000003 	beq	57fa40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1bb0>
  57fa30:	e1a00004 	mov	r0, r4
  57fa34:	e1a01006 	mov	r1, r6
  57fa38:	e28dafd6 	add	sl, sp, #856	@ 0x358
  57fa3c:	ebf34615 	bl	251298 <std::string::assign(std::string const&)@plt>
  57fa40:	e28dafd6 	add	sl, sp, #856	@ 0x358
  57fa44:	e1a00009 	mov	r0, r9
  57fa48:	e1a01004 	mov	r1, r4
  57fa4c:	e1a0200a 	mov	r2, sl
  57fa50:	eb019482 	bl	5e4c60 <netflix::DiskStore::dump(netflix::DumpInfo const&, netflix::Variant*) const@@Base>
  57fa54:	e28dbf71 	add	fp, sp, #452	@ 0x1c4
  57fa58:	e51f1b30 	ldr	r1, [pc, #-2864]	@ 57ef30 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10a0>
  57fa5c:	e59d2018 	ldr	r2, [sp, #24]
  57fa60:	e08f1001 	add	r1, pc, r1
  57fa64:	e1a0000b 	mov	r0, fp
  57fa68:	ebf34832 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fa6c:	e3a0c000 	mov	ip, #0
  57fa70:	e1a00007 	mov	r0, r7
  57fa74:	e1a0100b 	mov	r1, fp
  57fa78:	e58dc000 	str	ip, [sp]
  57fa7c:	e28d3072 	add	r3, sp, #114	@ 0x72
  57fa80:	e1a0200c 	mov	r2, ip
  57fa84:	e5cdc072 	strb	ip, [sp, #114]	@ 0x72
  57fa88:	ebf5a707 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  57fa8c:	e1a07000 	mov	r7, r0
  57fa90:	e59d01c4 	ldr	r0, [sp, #452]	@ 0x1c4
  57fa94:	e1a01008 	mov	r1, r8
  57fa98:	e240000c 	sub	r0, r0, #12
  57fa9c:	ebf340bd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57faa0:	e3570000 	cmp	r7, #0
  57faa4:	0a000001 	beq	57fab0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1c20>
  57faa8:	e1a00009 	mov	r0, r9
  57faac:	eb015869 	bl	5d5c58 <netflix::DiskStore::clearStats()@@Base>
  57fab0:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  57fab4:	e1a01008 	mov	r1, r8
  57fab8:	e240000c 	sub	r0, r0, #12
  57fabc:	ebf340b5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fac0:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  57fac4:	e1a01008 	mov	r1, r8
  57fac8:	e240000c 	sub	r0, r0, #12
  57facc:	ebf340b1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fad0:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  57fad4:	e3a01001 	mov	r1, #1
  57fad8:	eb0df5df 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  57fadc:	e3550000 	cmp	r5, #0
  57fae0:	0a000001 	beq	57faec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1c5c>
  57fae4:	e1a00005 	mov	r0, r5
  57fae8:	ebf3aba1 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  57faec:	e28d7f72 	add	r7, sp, #456	@ 0x1c8
  57faf0:	e51f1bc4 	ldr	r1, [pc, #-3012]	@ 57ef34 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10a4>
  57faf4:	e1a02006 	mov	r2, r6
  57faf8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fafc:	e08f1001 	add	r1, pc, r1
  57fb00:	e1a00007 	mov	r0, r7
  57fb04:	ebf3480b 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fb08:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fb0c:	e1a00005 	mov	r0, r5
  57fb10:	ebf42042 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57fb14:	e1a01007 	mov	r1, r7
  57fb18:	ebf420e2 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57fb1c:	e1a08000 	mov	r8, r0
  57fb20:	ebf3abd6 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fb24:	e59d2020 	ldr	r2, [sp, #32]
  57fb28:	e3a01004 	mov	r1, #4
  57fb2c:	e59d01c8 	ldr	r0, [sp, #456]	@ 0x1c8
  57fb30:	e28d7f73 	add	r7, sp, #460	@ 0x1cc
  57fb34:	e5881000 	str	r1, [r8]
  57fb38:	e1a01004 	mov	r1, r4
  57fb3c:	e1a03fc2 	asr	r3, r2, #31
  57fb40:	e240000c 	sub	r0, r0, #12
  57fb44:	e1c820f8 	strd	r2, [r8, #8]
  57fb48:	ebf34092 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fb4c:	e51f1c1c 	ldr	r1, [pc, #-3100]	@ 57ef38 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10a8>
  57fb50:	e1a02006 	mov	r2, r6
  57fb54:	e1a00007 	mov	r0, r7
  57fb58:	e08f1001 	add	r1, pc, r1
  57fb5c:	ebf347f5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fb60:	e1a00005 	mov	r0, r5
  57fb64:	ebf4202d 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57fb68:	e1a01007 	mov	r1, r7
  57fb6c:	ebf420cd 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57fb70:	e1a06000 	mov	r6, r0
  57fb74:	ebf3abc1 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fb78:	e1a00006 	mov	r0, r6
  57fb7c:	e1a0100a 	mov	r1, sl
  57fb80:	ebf3aad0 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  57fb84:	e59d01cc 	ldr	r0, [sp, #460]	@ 0x1cc
  57fb88:	e1a01004 	mov	r1, r4
  57fb8c:	e240000c 	sub	r0, r0, #12
  57fb90:	ebf34080 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fb94:	e1a0000a 	mov	r0, sl
  57fb98:	ebf3abb8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fb9c:	eafffd28 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57fba0:	e5990080 	ldr	r0, [r9, #128]	@ 0x80
  57fba4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fba8:	eb018d72 	bl	5e3178 <netflix::DiskStore::flushAll()@@Base>
  57fbac:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fbb0:	eafffd23 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57fbb4:	e5970008 	ldr	r0, [r7, #8]
  57fbb8:	e1a01004 	mov	r1, r4
  57fbbc:	e2800008 	add	r0, r0, #8
  57fbc0:	ebf414b5 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  57fbc4:	e5973008 	ldr	r3, [r7, #8]
  57fbc8:	e283300c 	add	r3, r3, #12
  57fbcc:	e1500003 	cmp	r0, r3
  57fbd0:	0afff8c5 	beq	57deec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x5c>
  57fbd4:	e5903018 	ldr	r3, [r0, #24]
  57fbd8:	e3530004 	cmp	r3, #4
  57fbdc:	0a000014 	beq	57fc34 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1da4>
  57fbe0:	e28dafd6 	add	sl, sp, #856	@ 0x358
  57fbe4:	e2801018 	add	r1, r0, #24
  57fbe8:	e3a02004 	mov	r2, #4
  57fbec:	e1a0000a 	mov	r0, sl
  57fbf0:	ebf41600 	bl	2853f8 <netflix::Variant::convert(netflix::Variant::Type) const@@Base>
  57fbf4:	e59d3358 	ldr	r3, [sp, #856]	@ 0x358
  57fbf8:	e1a0000a 	mov	r0, sl
  57fbfc:	e3530000 	cmp	r3, #0
  57fc00:	1a00027e 	bne	580600 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2770>
  57fc04:	e3e0a000 	mvn	sl, #0
  57fc08:	e58da020 	str	sl, [sp, #32]
  57fc0c:	ebf3ab9b 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fc10:	eafff8b7 	b	57def4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x64>
  57fc14:	e1a02005 	mov	r2, r5
  57fc18:	e1a01009 	mov	r1, r9
  57fc1c:	e1a03007 	mov	r3, r7
  57fc20:	e59d0014 	ldr	r0, [sp, #20]
  57fc24:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fc28:	ebff6bec 	bl	55abe0 <netflix::NfObject::invoke(int, netflix::Variant const&)@@Base>
  57fc2c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fc30:	eafffd11 	b	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  57fc34:	e5906020 	ldr	r6, [r0, #32]
  57fc38:	e58d6020 	str	r6, [sp, #32]
  57fc3c:	eafff8ac 	b	57def4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x64>
  57fc40:	e28d60a8 	add	r6, sp, #168	@ 0xa8
  57fc44:	e51f1d10 	ldr	r1, [pc, #-3344]	@ 57ef3c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10ac>
  57fc48:	e1a02008 	mov	r2, r8
  57fc4c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fc50:	e08f1001 	add	r1, pc, r1
  57fc54:	e1a00006 	mov	r0, r6
  57fc58:	ebf347b6 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fc5c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fc60:	e1a00005 	mov	r0, r5
  57fc64:	ebf41fed 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57fc68:	e1a01006 	mov	r1, r6
  57fc6c:	ebf4208d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57fc70:	e1a07000 	mov	r7, r0
  57fc74:	ebf3ab81 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fc78:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  57fc7c:	e3a02006 	mov	r2, #6
  57fc80:	e3a03000 	mov	r3, #0
  57fc84:	e5872000 	str	r2, [r7]
  57fc88:	e240000c 	sub	r0, r0, #12
  57fc8c:	e1a01004 	mov	r1, r4
  57fc90:	e5c73008 	strb	r3, [r7, #8]
  57fc94:	e28d60ac 	add	r6, sp, #172	@ 0xac
  57fc98:	ebf3403e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fc9c:	e51f1d64 	ldr	r1, [pc, #-3428]	@ 57ef40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10b0>
  57fca0:	e1a00006 	mov	r0, r6
  57fca4:	e1a02008 	mov	r2, r8
  57fca8:	e08f1001 	add	r1, pc, r1
  57fcac:	ebf347a1 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fcb0:	e1a00005 	mov	r0, r5
  57fcb4:	ebf41fd9 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57fcb8:	e1a01006 	mov	r1, r6
  57fcbc:	ebf42079 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57fcc0:	e1a06000 	mov	r6, r0
  57fcc4:	ebf3ab6d 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57fcc8:	e51f1d8c 	ldr	r1, [pc, #-3468]	@ 57ef44 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10b4>
  57fccc:	e1a00006 	mov	r0, r6
  57fcd0:	e3a03001 	mov	r3, #1
  57fcd4:	e28d2060 	add	r2, sp, #96	@ 0x60
  57fcd8:	e08f1001 	add	r1, pc, r1
  57fcdc:	e4803008 	str	r3, [r0], #8
  57fce0:	ebf34794 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57fce4:	e59d00ac 	ldr	r0, [sp, #172]	@ 0xac
  57fce8:	e1a01004 	mov	r1, r4
  57fcec:	e240000c 	sub	r0, r0, #12
  57fcf0:	ebf34028 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fcf4:	e51f2db4 	ldr	r2, [pc, #-3508]	@ 57ef48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10b8>
  57fcf8:	e1a00009 	mov	r0, r9
  57fcfc:	e3a01003 	mov	r1, #3
  57fd00:	e08f2002 	add	r2, pc, r2
  57fd04:	ebf97063 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57fd08:	eafffa2e 	b	57e5c8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x738>
  57fd0c:	e51f2dc8 	ldr	r2, [pc, #-3528]	@ 57ef4c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10bc>
  57fd10:	e1a00009 	mov	r0, r9
  57fd14:	e3a01002 	mov	r1, #2
  57fd18:	e08f2002 	add	r2, pc, r2
  57fd1c:	ebf9705d 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57fd20:	e59db014 	ldr	fp, [sp, #20]
  57fd24:	e3a02006 	mov	r2, #6
  57fd28:	e3a03000 	mov	r3, #0
  57fd2c:	e58b2000 	str	r2, [fp]
  57fd30:	e5cb3008 	strb	r3, [fp, #8]
  57fd34:	eafff916 	b	57e194 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x304>
  57fd38:	e51f2df0 	ldr	r2, [pc, #-3568]	@ 57ef50 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c0>
  57fd3c:	e1a00009 	mov	r0, r9
  57fd40:	e3a0100d 	mov	r1, #13
  57fd44:	e08f2002 	add	r2, pc, r2
  57fd48:	ebf97052 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57fd4c:	e59db014 	ldr	fp, [sp, #20]
  57fd50:	e3a02006 	mov	r2, #6
  57fd54:	e3a03000 	mov	r3, #0
  57fd58:	e58b2000 	str	r2, [fp]
  57fd5c:	e5cb3008 	strb	r3, [fp, #8]
  57fd60:	eafffe7b 	b	57f754 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x18c4>
  57fd64:	e51f3e14 	ldr	r3, [pc, #-3604]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57fd68:	e3a01001 	mov	r1, #1
  57fd6c:	e59d72ac 	ldr	r7, [sp, #684]	@ 0x2ac
  57fd70:	e79b3003 	ldr	r3, [fp, r3]
  57fd74:	e283300c 	add	r3, r3, #12
  57fd78:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  57fd7c:	e597500c 	ldr	r5, [r7, #12]
  57fd80:	e2855040 	add	r5, r5, #64	@ 0x40
  57fd84:	e1a00005 	mov	r0, r5
  57fd88:	eb0df4fe 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  57fd8c:	e1a00004 	mov	r0, r4
  57fd90:	e1a01007 	mov	r1, r7
  57fd94:	e1a02006 	mov	r2, r6
  57fd98:	eb0189ec 	bl	5e2550 <netflix::DiskStore::Context::flushImpl(std::string*)@@Base>
  57fd9c:	e1a00005 	mov	r0, r5
  57fda0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fda4:	e3a01001 	mov	r1, #1
  57fda8:	eb0df52b 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  57fdac:	e3a0c007 	mov	ip, #7
  57fdb0:	e1a02006 	mov	r2, r6
  57fdb4:	e1a03008 	mov	r3, r8
  57fdb8:	e1a00005 	mov	r0, r5
  57fdbc:	e1a01004 	mov	r1, r4
  57fdc0:	e58dc000 	str	ip, [sp]
  57fdc4:	ebfff519 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  57fdc8:	e1a00004 	mov	r0, r4
  57fdcc:	ebf40ef5 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  57fdd0:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  57fdd4:	e28d1e2a 	add	r1, sp, #672	@ 0x2a0
  57fdd8:	e240000c 	sub	r0, r0, #12
  57fddc:	ebf33fed 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fde0:	eafffc11 	b	57ee2c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xf9c>
  57fde4:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  57fde8:	e3a01001 	mov	r1, #1
  57fdec:	e79b3003 	ldr	r3, [fp, r3]
  57fdf0:	e283300c 	add	r3, r3, #12
  57fdf4:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  57fdf8:	e595700c 	ldr	r7, [r5, #12]
  57fdfc:	e2877040 	add	r7, r7, #64	@ 0x40
  57fe00:	e1a00007 	mov	r0, r7
  57fe04:	eb0df4df 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  57fe08:	e1a00004 	mov	r0, r4
  57fe0c:	e1a01005 	mov	r1, r5
  57fe10:	e59d2018 	ldr	r2, [sp, #24]
  57fe14:	e1a03006 	mov	r3, r6
  57fe18:	eb0180d8 	bl	5e0180 <netflix::DiskStore::Context::clearImpl(std::string const&, std::string*)@@Base>
  57fe1c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fe20:	e3a01001 	mov	r1, #1
  57fe24:	e1a00007 	mov	r0, r7
  57fe28:	eb0df50b 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  57fe2c:	e3a0c002 	mov	ip, #2
  57fe30:	e1a02006 	mov	r2, r6
  57fe34:	e1a03008 	mov	r3, r8
  57fe38:	e1a00005 	mov	r0, r5
  57fe3c:	e1a01004 	mov	r1, r4
  57fe40:	e58dc000 	str	ip, [sp]
  57fe44:	ebfff4f9 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  57fe48:	e1a00004 	mov	r0, r4
  57fe4c:	ebf40ed5 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  57fe50:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  57fe54:	e28d1fa5 	add	r1, sp, #660	@ 0x294
  57fe58:	e240000c 	sub	r0, r0, #12
  57fe5c:	ebf33fcd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57fe60:	eafffb00 	b	57ea68 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbd8>
  57fe64:	e51f3f14 	ldr	r3, [pc, #-3860]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57fe68:	e1a00004 	mov	r0, r4
  57fe6c:	e59d12b8 	ldr	r1, [sp, #696]	@ 0x2b8
  57fe70:	e1a02008 	mov	r2, r8
  57fe74:	e79b3003 	ldr	r3, [fp, r3]
  57fe78:	e283300c 	add	r3, r3, #12
  57fe7c:	e58d32ac 	str	r3, [sp, #684]	@ 0x2ac
  57fe80:	eb0186e6 	bl	5e1a20 <netflix::DiskStore::Context::destroy(std::string*)@@Base>
  57fe84:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57fe88:	e3a01000 	mov	r1, #0
  57fe8c:	e1a02008 	mov	r2, r8
  57fe90:	e58d1000 	str	r1, [sp]
  57fe94:	e1a03006 	mov	r3, r6
  57fe98:	e1a00005 	mov	r0, r5
  57fe9c:	e1a01004 	mov	r1, r4
  57fea0:	ebfff4e2 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  57fea4:	e1a00004 	mov	r0, r4
  57fea8:	ebf40ebe 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  57feac:	e59d02ac 	ldr	r0, [sp, #684]	@ 0x2ac
  57feb0:	e28d1e2a 	add	r1, sp, #672	@ 0x2a0
  57feb4:	e240000c 	sub	r0, r0, #12
  57feb8:	ebf33fb6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  57febc:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  57fec0:	e3500000 	cmp	r0, #0
  57fec4:	1afffc5d 	bne	57f040 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b0>
  57fec8:	eafffc5d 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  57fecc:	e51f2f80 	ldr	r2, [pc, #-3968]	@ 57ef54 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c4>
  57fed0:	e1a00009 	mov	r0, r9
  57fed4:	e3a0100c 	mov	r1, #12
  57fed8:	e08f2002 	add	r2, pc, r2
  57fedc:	ebf96fed 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57fee0:	e59db014 	ldr	fp, [sp, #20]
  57fee4:	e3a02006 	mov	r2, #6
  57fee8:	e3a03000 	mov	r3, #0
  57feec:	e58b2000 	str	r2, [fp]
  57fef0:	e5cb3008 	strb	r3, [fp, #8]
  57fef4:	eafffdbd 	b	57f5f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1760>
  57fef8:	e51f3fa8 	ldr	r3, [pc, #-4008]	@ 57ef58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x10c8>
  57fefc:	e3a01001 	mov	r1, #1
  57ff00:	e59d72ac 	ldr	r7, [sp, #684]	@ 0x2ac
  57ff04:	e79b3003 	ldr	r3, [fp, r3]
  57ff08:	e283300c 	add	r3, r3, #12
  57ff0c:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  57ff10:	e597500c 	ldr	r5, [r7, #12]
  57ff14:	e2855040 	add	r5, r5, #64	@ 0x40
  57ff18:	e1a00005 	mov	r0, r5
  57ff1c:	eb0df499 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  57ff20:	e1a00004 	mov	r0, r4
  57ff24:	e1a01007 	mov	r1, r7
  57ff28:	e1a02006 	mov	r2, r6
  57ff2c:	eb017e35 	bl	5df808 <netflix::DiskStore::Context::clearAllImpl(std::string*)@@Base>
  57ff30:	e1a00005 	mov	r0, r5
  57ff34:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ff38:	e3a01001 	mov	r1, #1
  57ff3c:	eb0df4c6 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  57ff40:	e3a0c001 	mov	ip, #1
  57ff44:	e1a02006 	mov	r2, r6
  57ff48:	e1a03008 	mov	r3, r8
  57ff4c:	e1a00005 	mov	r0, r5
  57ff50:	e1a01004 	mov	r1, r4
  57ff54:	e58dc000 	str	ip, [sp]
  57ff58:	ebfff4b4 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  57ff5c:	eaffff99 	b	57fdc8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1f38>
  57ff60:	e59f2fe0 	ldr	r2, [pc, #4064]	@ 580f48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30b8>
  57ff64:	e1a00009 	mov	r0, r9
  57ff68:	e3a01008 	mov	r1, #8
  57ff6c:	e08f2002 	add	r2, pc, r2
  57ff70:	ebf96fc8 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57ff74:	e59db014 	ldr	fp, [sp, #20]
  57ff78:	e3a02006 	mov	r2, #6
  57ff7c:	e3a03000 	mov	r3, #0
  57ff80:	e58b2000 	str	r2, [fp]
  57ff84:	e5cb3008 	strb	r3, [fp, #8]
  57ff88:	eafffb56 	b	57ece8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe58>
  57ff8c:	e59f2fb8 	ldr	r2, [pc, #4024]	@ 580f4c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30bc>
  57ff90:	e1a00009 	mov	r0, r9
  57ff94:	e3a01005 	mov	r1, #5
  57ff98:	e08f2002 	add	r2, pc, r2
  57ff9c:	ebf96fbd 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  57ffa0:	eafffff3 	b	57ff74 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x20e4>
  57ffa4:	e28d4f51 	add	r4, sp, #324	@ 0x144
  57ffa8:	e59f1fa0 	ldr	r1, [pc, #4000]	@ 580f50 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30c0>
  57ffac:	e1a02008 	mov	r2, r8
  57ffb0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ffb4:	e08f1001 	add	r1, pc, r1
  57ffb8:	e1a00004 	mov	r0, r4
  57ffbc:	ebf346dd 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  57ffc0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  57ffc4:	e1a00005 	mov	r0, r5
  57ffc8:	ebf41f14 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  57ffcc:	e1a01004 	mov	r1, r4
  57ffd0:	ebf41fb4 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  57ffd4:	e1a07000 	mov	r7, r0
  57ffd8:	ebf3aaa8 	bl	26aa80 <netflix::Variant::clear()@@Base>
  57ffdc:	e59d0144 	ldr	r0, [sp, #324]	@ 0x144
  57ffe0:	e3a02006 	mov	r2, #6
  57ffe4:	e3a03000 	mov	r3, #0
  57ffe8:	e5872000 	str	r2, [r7]
  57ffec:	e240000c 	sub	r0, r0, #12
  57fff0:	e1a01006 	mov	r1, r6
  57fff4:	e5c73008 	strb	r3, [r7, #8]
  57fff8:	e28d4f52 	add	r4, sp, #328	@ 0x148
  57fffc:	ebf33f65 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580000:	e59f1f4c 	ldr	r1, [pc, #3916]	@ 580f54 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30c4>
  580004:	e1a02008 	mov	r2, r8
  580008:	e1a00004 	mov	r0, r4
  58000c:	e08f1001 	add	r1, pc, r1
  580010:	ebf346c8 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580014:	e1a00005 	mov	r0, r5
  580018:	ebf41f00 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  58001c:	e1a01004 	mov	r1, r4
  580020:	ebf41fa0 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580024:	e59f1f2c 	ldr	r1, [pc, #3884]	@ 580f58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30c8>
  580028:	e08f1001 	add	r1, pc, r1
  58002c:	ebf92d75 	bl	3cb608 <netflix::Variant::operator=(char const*)@@Base>
  580030:	e59d0148 	ldr	r0, [sp, #328]	@ 0x148
  580034:	e1a01006 	mov	r1, r6
  580038:	e240000c 	sub	r0, r0, #12
  58003c:	ebf33f55 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580040:	e59f2f14 	ldr	r2, [pc, #3860]	@ 580f5c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30cc>
  580044:	e1a00009 	mov	r0, r9
  580048:	e3a0100e 	mov	r1, #14
  58004c:	e08f2002 	add	r2, pc, r2
  580050:	ebf96f90 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580054:	eafffbf6 	b	57f034 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11a4>
  580058:	e0611002 	rsb	r1, r1, r2
  58005c:	e2890008 	add	r0, r9, #8
  580060:	ebf4426d 	bl	290a1c <std::vector<netflix::Variant, std::allocator<netflix::Variant> >::_M_default_append(unsigned int)@@Base>
  580064:	e59d028c 	ldr	r0, [sp, #652]	@ 0x28c
  580068:	e59d4288 	ldr	r4, [sp, #648]	@ 0x288
  58006c:	eafff7fb 	b	57e060 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1d0>
  580070:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  580074:	e58d7018 	str	r7, [sp, #24]
  580078:	e28d7c02 	add	r7, sp, #512	@ 0x200
  58007c:	e59f1edc 	ldr	r1, [pc, #3804]	@ 580f60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30d0>
  580080:	e59d2018 	ldr	r2, [sp, #24]
  580084:	e08f1001 	add	r1, pc, r1
  580088:	e1a00007 	mov	r0, r7
  58008c:	ebf346a9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580090:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580094:	e1a00005 	mov	r0, r5
  580098:	ebf41ee0 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  58009c:	e1a01007 	mov	r1, r7
  5800a0:	ebf41f80 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5800a4:	e1a07000 	mov	r7, r0
  5800a8:	ebf3aa74 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5800ac:	e1a00007 	mov	r0, r7
  5800b0:	e59d1034 	ldr	r1, [sp, #52]	@ 0x34
  5800b4:	ebf3a983 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5800b8:	e59d0200 	ldr	r0, [sp, #512]	@ 0x200
  5800bc:	e1a01004 	mov	r1, r4
  5800c0:	e240000c 	sub	r0, r0, #12
  5800c4:	ebf33f33 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5800c8:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  5800cc:	ebf3aa6b 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5800d0:	e1a00006 	mov	r0, r6
  5800d4:	e59d12c0 	ldr	r1, [sp, #704]	@ 0x2c0
  5800d8:	eb000d8d 	bl	583714 <std::_Rb_tree<netflix::DiskStore::Key, std::pair<netflix::DiskStore::Key const, int>, std::_Select1st<std::pair<netflix::DiskStore::Key const, int> >, std::less<netflix::DiskStore::Key>, std::allocator<std::pair<netflix::DiskStore::Key const, int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::DiskStore::Key const, int> >*)@@Base>
  5800dc:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  5800e0:	e1a01004 	mov	r1, r4
  5800e4:	e240000c 	sub	r0, r0, #12
  5800e8:	ebf33f2a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5800ec:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  5800f0:	eafffa5d 	b	57ea6c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbdc>
  5800f4:	e28d0f87 	add	r0, sp, #540	@ 0x21c
  5800f8:	e5951014 	ldr	r1, [r5, #20]
  5800fc:	e28d2064 	add	r2, sp, #100	@ 0x64
  580100:	ebf3468c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580104:	e59da21c 	ldr	sl, [sp, #540]	@ 0x21c
  580108:	e1a01008 	mov	r1, r8
  58010c:	e1a02009 	mov	r2, r9
  580110:	e1a0000a 	mov	r0, sl
  580114:	ebf33a4e 	bl	24ea54 <strncmp@plt>
  580118:	e1a01004 	mov	r1, r4
  58011c:	e1a08000 	mov	r8, r0
  580120:	e24a000c 	sub	r0, sl, #12
  580124:	ebf33f1b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580128:	e3580000 	cmp	r8, #0
  58012c:	1afffc58 	bne	57f294 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1404>
  580130:	e59da020 	ldr	sl, [sp, #32]
  580134:	e35a0000 	cmp	sl, #0
  580138:	0afffc65 	beq	57f2d4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1444>
  58013c:	e28dad0a 	add	sl, sp, #640	@ 0x280
  580140:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  580144:	e2852010 	add	r2, r5, #16
  580148:	e58da028 	str	sl, [sp, #40]	@ 0x28
  58014c:	e1a0000a 	mov	r0, sl
  580150:	eb018417 	bl	5e11b4 <netflix::DiskStore::Context::validate(netflix::DiskStore::Key const&)@@Base>
  580154:	e59d3280 	ldr	r3, [sp, #640]	@ 0x280
  580158:	e3530001 	cmp	r3, #1
  58015c:	0a000035 	beq	580238 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x23a8>
  580160:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  580164:	ebf40e0f 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  580168:	eafffc49 	b	57f294 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1404>
  58016c:	ebf34392 	bl	250fbc <memcmp@plt>
  580170:	e3500000 	cmp	r0, #0
  580174:	1afffc46 	bne	57f294 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1404>
  580178:	eafffc4e 	b	57f2b8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1428>
  58017c:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  580180:	e2858014 	add	r8, r5, #20
  580184:	ebf41ea5 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580188:	e1a01008 	mov	r1, r8
  58018c:	ebf41f45 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580190:	e1a08000 	mov	r8, r0
  580194:	ebf3aa39 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580198:	e1a00008 	mov	r0, r8
  58019c:	e1a0100a 	mov	r1, sl
  5801a0:	ebf3a948 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  5801a4:	eafffcb8 	b	57f48c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x15fc>
  5801a8:	e59d0018 	ldr	r0, [sp, #24]
  5801ac:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  5801b0:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  5801b4:	eb01666d 	bl	5d9b70 <netflix::DiskStore::Context::fileName(netflix::DiskStore::Key const&) const@@Base>
  5801b8:	e1cd24d0 	ldrd	r2, [sp, #64]	@ 0x40
  5801bc:	e3a03000 	mov	r3, #0
  5801c0:	e2022c01 	and	r2, r2, #256	@ 0x100
  5801c4:	e192c003 	orrs	ip, r2, r3
  5801c8:	0a000005 	beq	5801e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2354>
  5801cc:	e3a00003 	mov	r0, #3
  5801d0:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  5801d4:	e1a02004 	mov	r2, r4
  5801d8:	ebf33d1d 	bl	24f654 <__xstat@plt>
  5801dc:	e3500000 	cmp	r0, #0
  5801e0:	1a00025d 	bne	580b5c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2ccc>
  5801e4:	e28d8f7d 	add	r8, sp, #500	@ 0x1f4
  5801e8:	e28d2d0a 	add	r2, sp, #640	@ 0x280
  5801ec:	e59d1050 	ldr	r1, [sp, #80]	@ 0x50
  5801f0:	e1a00008 	mov	r0, r8
  5801f4:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  5801f8:	ebf3464e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5801fc:	e1a0000a 	mov	r0, sl
  580200:	ebf41e86 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580204:	e1a01008 	mov	r1, r8
  580208:	ebf41f26 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  58020c:	e59d1018 	ldr	r1, [sp, #24]
  580210:	ebf92ce2 	bl	3cb5a0 <netflix::Variant::operator=(std::string const&)@@Base>
  580214:	e59d01f4 	ldr	r0, [sp, #500]	@ 0x1f4
  580218:	e1a01004 	mov	r1, r4
  58021c:	e240000c 	sub	r0, r0, #12
  580220:	ebf33edc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580224:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  580228:	e1a01004 	mov	r1, r4
  58022c:	e240000c 	sub	r0, r0, #12
  580230:	ebf33ed8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580234:	eafffc58 	b	57f39c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x150c>
  580238:	e59d3284 	ldr	r3, [sp, #644]	@ 0x284
  58023c:	e3530000 	cmp	r3, #0
  580240:	1affffc6 	bne	580160 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x22d0>
  580244:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  580248:	ebf40dd6 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  58024c:	eafffc20 	b	57f2d4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1444>
  580250:	e28d4f55 	add	r4, sp, #340	@ 0x154
  580254:	e59f1d08 	ldr	r1, [pc, #3336]	@ 580f64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30d4>
  580258:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  58025c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580260:	e08f1001 	add	r1, pc, r1
  580264:	e1a00004 	mov	r0, r4
  580268:	ebf34632 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  58026c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580270:	e1a00005 	mov	r0, r5
  580274:	ebf41e69 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580278:	e1a01004 	mov	r1, r4
  58027c:	ebf41f09 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580280:	e1a04000 	mov	r4, r0
  580284:	ebf3a9fd 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580288:	e59d0154 	ldr	r0, [sp, #340]	@ 0x154
  58028c:	e3a02006 	mov	r2, #6
  580290:	e3a03001 	mov	r3, #1
  580294:	e5842000 	str	r2, [r4]
  580298:	e240000c 	sub	r0, r0, #12
  58029c:	e5c43008 	strb	r3, [r4, #8]
  5802a0:	e1a01008 	mov	r1, r8
  5802a4:	ebf33ebb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5802a8:	eafffd99 	b	57f914 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1a84>
  5802ac:	e28dafa5 	add	sl, sp, #660	@ 0x294
  5802b0:	e5991080 	ldr	r1, [r9, #128]	@ 0x80
  5802b4:	e58da030 	str	sl, [sp, #48]	@ 0x30
  5802b8:	e1a0000a 	mov	r0, sl
  5802bc:	eb016689 	bl	5d9ce8 <netflix::DiskStore::allFiles() const@@Base>
  5802c0:	e59d2020 	ldr	r2, [sp, #32]
  5802c4:	e3a03000 	mov	r3, #0
  5802c8:	e59d1298 	ldr	r1, [sp, #664]	@ 0x298
  5802cc:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  5802d0:	ebf442c2 	bl	290de0 <__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > > std::__find<__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::string>(__gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string, std::allocator<std::string> > >, std::string const&, std::random_access_iterator_tag)@@Base>
  5802d4:	e59d5298 	ldr	r5, [sp, #664]	@ 0x298
  5802d8:	e1a0a000 	mov	sl, r0
  5802dc:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  5802e0:	ebf404fd 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  5802e4:	e15a0005 	cmp	sl, r5
  5802e8:	1a000230 	bne	580bb0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2d20>
  5802ec:	e28d7090 	add	r7, sp, #144	@ 0x90
  5802f0:	e59f1c70 	ldr	r1, [pc, #3184]	@ 580f68 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30d8>
  5802f4:	e3a03003 	mov	r3, #3
  5802f8:	e59d2278 	ldr	r2, [sp, #632]	@ 0x278
  5802fc:	e08f1001 	add	r1, pc, r1
  580300:	e1a00007 	mov	r0, r7
  580304:	e34f3005 	movt	r3, #61445	@ 0xf005
  580308:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  58030c:	e3a03000 	mov	r3, #0
  580310:	e58d32bc 	str	r3, [sp, #700]	@ 0x2bc
  580314:	eb000cd9 	bl	583680 <std::string netflix::StringFormatterBase<std::string>::sformat<1024>(char const*, ...)@@Base>
  580318:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58031c:	e3a0c000 	mov	ip, #0
  580320:	e1a02007 	mov	r2, r7
  580324:	e1a01006 	mov	r1, r6
  580328:	e1a00005 	mov	r0, r5
  58032c:	e58dc000 	str	ip, [sp]
  580330:	e1a03004 	mov	r3, r4
  580334:	e58dc2d0 	str	ip, [sp, #720]	@ 0x2d0
  580338:	e58dc2d4 	str	ip, [sp, #724]	@ 0x2d4
  58033c:	ebfff3bb 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  580340:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  580344:	e3500000 	cmp	r0, #0
  580348:	0a000000 	beq	580350 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x24c0>
  58034c:	ebf3a988 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  580350:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  580354:	e1a01004 	mov	r1, r4
  580358:	e240000c 	sub	r0, r0, #12
  58035c:	ebf33e8d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580360:	e1a00006 	mov	r0, r6
  580364:	ebf40d8f 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  580368:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  58036c:	e1a01006 	mov	r1, r6
  580370:	e240000c 	sub	r0, r0, #12
  580374:	ebf33e87 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580378:	e59d0278 	ldr	r0, [sp, #632]	@ 0x278
  58037c:	e1a01006 	mov	r1, r6
  580380:	e240000c 	sub	r0, r0, #12
  580384:	ebf33e83 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580388:	eafffb2d 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  58038c:	e28d5f69 	add	r5, sp, #420	@ 0x1a4
  580390:	e59f1bd4 	ldr	r1, [pc, #3028]	@ 580f6c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30dc>
  580394:	e1a02006 	mov	r2, r6
  580398:	e08f1001 	add	r1, pc, r1
  58039c:	e1a00005 	mov	r0, r5
  5803a0:	ebf345e4 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5803a4:	e28d3fde 	add	r3, sp, #888	@ 0x378
  5803a8:	e3a02000 	mov	r2, #0
  5803ac:	e1a01005 	mov	r1, r5
  5803b0:	e1a00007 	mov	r0, r7
  5803b4:	e5232164 	str	r2, [r3, #-356]!	@ 0xfffffe9c
  5803b8:	e58d2000 	str	r2, [sp]
  5803bc:	e1a0200a 	mov	r2, sl
  5803c0:	ebf93704 	bl	3cdfd8 <int netflix::Variant::mapValueImpl<int>(std::string const&, bool*, int const&, std::pair<int, int> const*) const@@Base>
  5803c4:	e58d0030 	str	r0, [sp, #48]	@ 0x30
  5803c8:	e1a01004 	mov	r1, r4
  5803cc:	e59d01a4 	ldr	r0, [sp, #420]	@ 0x1a4
  5803d0:	e240000c 	sub	r0, r0, #12
  5803d4:	ebf33e6f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5803d8:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  5803dc:	e3530000 	cmp	r3, #0
  5803e0:	1a00021e 	bne	580c60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2dd0>
  5803e4:	e59f2b84 	ldr	r2, [pc, #2948]	@ 580f70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30e0>
  5803e8:	e1a00009 	mov	r0, r9
  5803ec:	e3a0100c 	mov	r1, #12
  5803f0:	e08f2002 	add	r2, pc, r2
  5803f4:	ebf96ea7 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  5803f8:	eafffc73 	b	57f5cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x173c>
  5803fc:	e28d0058 	add	r0, sp, #88	@ 0x58
  580400:	e59d12ac 	ldr	r1, [sp, #684]	@ 0x2ac
  580404:	eb015739 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  580408:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  58040c:	e28d7fde 	add	r7, sp, #888	@ 0x378
  580410:	e34f3fff 	movt	r3, #65535	@ 0xffff
  580414:	e18320d7 	ldrd	r2, [r3, r7]
  580418:	e3a03000 	mov	r3, #0
  58041c:	e2022010 	and	r2, r2, #16
  580420:	e192a003 	orrs	sl, r2, r3
  580424:	0a000271 	beq	580df0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f60>
  580428:	e59f3be0 	ldr	r3, [pc, #3040]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  58042c:	e28d7f96 	add	r7, sp, #600	@ 0x258
  580430:	e59d1030 	ldr	r1, [sp, #48]	@ 0x30
  580434:	e59d2018 	ldr	r2, [sp, #24]
  580438:	e1a00007 	mov	r0, r7
  58043c:	e79b3003 	ldr	r3, [fp, r3]
  580440:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  580444:	e283300c 	add	r3, r3, #12
  580448:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  58044c:	eb000ace 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  580450:	e595900c 	ldr	r9, [r5, #12]
  580454:	e3a01001 	mov	r1, #1
  580458:	e2899040 	add	r9, r9, #64	@ 0x40
  58045c:	e1a00009 	mov	r0, r9
  580460:	eb0df348 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  580464:	e1c5a3d8 	ldrd	sl, [r5, #56]	@ 0x38
  580468:	e1a01005 	mov	r1, r5
  58046c:	e58d6008 	str	r6, [sp, #8]
  580470:	e1a00004 	mov	r0, r4
  580474:	e1a02007 	mov	r2, r7
  580478:	e1cda0f0 	strd	sl, [sp]
  58047c:	eb017d85 	bl	5dfa98 <netflix::DiskStore::Context::removeImpl(netflix::DiskStore::Key const&, netflix::Flags<netflix::DiskStore::Flag>, std::string*)@@Base>
  580480:	e3a01001 	mov	r1, #1
  580484:	e1a00009 	mov	r0, r9
  580488:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58048c:	eb0df372 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  580490:	e1a00007 	mov	r0, r7
  580494:	ebfeda04 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  580498:	e3a0c005 	mov	ip, #5
  58049c:	e1a02006 	mov	r2, r6
  5804a0:	e1a03008 	mov	r3, r8
  5804a4:	e1a00005 	mov	r0, r5
  5804a8:	e1a01004 	mov	r1, r4
  5804ac:	e58dc000 	str	ip, [sp]
  5804b0:	ebfff35e 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  5804b4:	e1a00004 	mov	r0, r4
  5804b8:	ebf40d3a 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  5804bc:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  5804c0:	e28d1fa2 	add	r1, sp, #648	@ 0x288
  5804c4:	e240000c 	sub	r0, r0, #12
  5804c8:	ebf33e32 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5804cc:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  5804d0:	e1a01004 	mov	r1, r4
  5804d4:	e240000c 	sub	r0, r0, #12
  5804d8:	ebf33e2e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5804dc:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  5804e0:	eafff961 	b	57ea6c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xbdc>
  5804e4:	e28dcd0a 	add	ip, sp, #640	@ 0x280
  5804e8:	e28d5f5a 	add	r5, sp, #360	@ 0x168
  5804ec:	e59f1a80 	ldr	r1, [pc, #2688]	@ 580f74 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30e4>
  5804f0:	e1a00005 	mov	r0, r5
  5804f4:	e1a0200c 	mov	r2, ip
  5804f8:	e08f1001 	add	r1, pc, r1
  5804fc:	e58dc028 	str	ip, [sp, #40]	@ 0x28
  580500:	ebf3458c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580504:	e5972000 	ldr	r2, [r7]
  580508:	e3a03000 	mov	r3, #0
  58050c:	e58d32ac 	str	r3, [sp, #684]	@ 0x2ac
  580510:	e3520003 	cmp	r2, #3
  580514:	e58d32b0 	str	r3, [sp, #688]	@ 0x2b0
  580518:	e58d32b4 	str	r3, [sp, #692]	@ 0x2b4
  58051c:	0a0003f0 	beq	5814e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3654>
  580520:	e5cd306b 	strb	r3, [sp, #107]	@ 0x6b
  580524:	e58d32d0 	str	r3, [sp, #720]	@ 0x2d0
  580528:	e58d32d4 	str	r3, [sp, #724]	@ 0x2d4
  58052c:	e58d32d8 	str	r3, [sp, #728]	@ 0x2d8
  580530:	e59d0168 	ldr	r0, [sp, #360]	@ 0x168
  580534:	e1a01006 	mov	r1, r6
  580538:	e240000c 	sub	r0, r0, #12
  58053c:	ebf33e15 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580540:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  580544:	e3530000 	cmp	r3, #0
  580548:	1a0001e0 	bne	580cd0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2e40>
  58054c:	e59f2a24 	ldr	r2, [pc, #2596]	@ 580f78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30e8>
  580550:	e1a00009 	mov	r0, r9
  580554:	e3a01008 	mov	r1, #8
  580558:	e08f2002 	add	r2, pc, r2
  58055c:	ebf96e4d 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580560:	e59d7014 	ldr	r7, [sp, #20]
  580564:	e3a02006 	mov	r2, #6
  580568:	e3a03000 	mov	r3, #0
  58056c:	e1a00004 	mov	r0, r4
  580570:	e5872000 	str	r2, [r7]
  580574:	e5c73008 	strb	r3, [r7, #8]
  580578:	ebffeae9 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  58057c:	eafff9d5 	b	57ecd8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe48>
  580580:	e28dcd0a 	add	ip, sp, #640	@ 0x280
  580584:	e28d5d06 	add	r5, sp, #384	@ 0x180
  580588:	e59f19ec 	ldr	r1, [pc, #2540]	@ 580f7c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30ec>
  58058c:	e1a00005 	mov	r0, r5
  580590:	e1a0200c 	mov	r2, ip
  580594:	e08f1001 	add	r1, pc, r1
  580598:	e58dc028 	str	ip, [sp, #40]	@ 0x28
  58059c:	ebf34565 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5805a0:	e5972000 	ldr	r2, [r7]
  5805a4:	e3a03000 	mov	r3, #0
  5805a8:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  5805ac:	e3520003 	cmp	r2, #3
  5805b0:	e58d32bc 	str	r3, [sp, #700]	@ 0x2bc
  5805b4:	e58d32c0 	str	r3, [sp, #704]	@ 0x2c0
  5805b8:	0a0003a5 	beq	581454 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x35c4>
  5805bc:	e5cd306b 	strb	r3, [sp, #107]	@ 0x6b
  5805c0:	e58d32d0 	str	r3, [sp, #720]	@ 0x2d0
  5805c4:	e58d32d4 	str	r3, [sp, #724]	@ 0x2d4
  5805c8:	e58d32d8 	str	r3, [sp, #728]	@ 0x2d8
  5805cc:	e59d0180 	ldr	r0, [sp, #384]	@ 0x180
  5805d0:	e1a01006 	mov	r1, r6
  5805d4:	e240000c 	sub	r0, r0, #12
  5805d8:	ebf33dee 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5805dc:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  5805e0:	e3530000 	cmp	r3, #0
  5805e4:	1a000223 	bne	580e78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2fe8>
  5805e8:	e59f2990 	ldr	r2, [pc, #2448]	@ 580f80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30f0>
  5805ec:	e1a00009 	mov	r0, r9
  5805f0:	e3a01005 	mov	r1, #5
  5805f4:	e08f2002 	add	r2, pc, r2
  5805f8:	ebf96e26 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  5805fc:	eaffffd7 	b	580560 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26d0>
  580600:	e59d6360 	ldr	r6, [sp, #864]	@ 0x360
  580604:	ebf3a91d 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580608:	eafffd8a 	b	57fc38 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1da8>
  58060c:	e28d4f45 	add	r4, sp, #276	@ 0x114
  580610:	e59f196c 	ldr	r1, [pc, #2412]	@ 580f84 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30f4>
  580614:	e1a02008 	mov	r2, r8
  580618:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58061c:	e08f1001 	add	r1, pc, r1
  580620:	e1a00004 	mov	r0, r4
  580624:	ebf34543 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580628:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58062c:	e1a00005 	mov	r0, r5
  580630:	ebf41d7a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580634:	e1a01004 	mov	r1, r4
  580638:	ebf41e1a 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  58063c:	e1a09000 	mov	r9, r0
  580640:	ebf3a90e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580644:	e59d0114 	ldr	r0, [sp, #276]	@ 0x114
  580648:	e3a02006 	mov	r2, #6
  58064c:	e3a03000 	mov	r3, #0
  580650:	e5892000 	str	r2, [r9]
  580654:	e240000c 	sub	r0, r0, #12
  580658:	e1a01006 	mov	r1, r6
  58065c:	e5c93008 	strb	r3, [r9, #8]
  580660:	e28d4f46 	add	r4, sp, #280	@ 0x118
  580664:	ebf33dcb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580668:	e59f1918 	ldr	r1, [pc, #2328]	@ 580f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30f8>
  58066c:	e1a00004 	mov	r0, r4
  580670:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  580674:	e08f1001 	add	r1, pc, r1
  580678:	ebf3452e 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  58067c:	e1a00005 	mov	r0, r5
  580680:	ebf41d66 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580684:	e1a01004 	mov	r1, r4
  580688:	ebf41e06 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  58068c:	e28d9f47 	add	r9, sp, #284	@ 0x11c
  580690:	e59f18f4 	ldr	r1, [pc, #2292]	@ 580f8c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x30fc>
  580694:	e1a04000 	mov	r4, r0
  580698:	e1a02008 	mov	r2, r8
  58069c:	e08f1001 	add	r1, pc, r1
  5806a0:	e1a00009 	mov	r0, r9
  5806a4:	ebf34523 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5806a8:	e28d8e12 	add	r8, sp, #288	@ 0x120
  5806ac:	e1a01007 	mov	r1, r7
  5806b0:	e1a02009 	mov	r2, r9
  5806b4:	e1a00008 	mov	r0, r8
  5806b8:	ebf5a0c9 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  5806bc:	e59f28cc 	ldr	r2, [pc, #2252]	@ 580f90 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3100>
  5806c0:	e1a00008 	mov	r0, r8
  5806c4:	e3a01000 	mov	r1, #0
  5806c8:	e08f2002 	add	r2, pc, r2
  5806cc:	ebf33ec8 	bl	2501f4 <std::string::insert(unsigned int, char const*)@plt>
  5806d0:	e59f2938 	ldr	r2, [pc, #2360]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  5806d4:	e1a03000 	mov	r3, r0
  5806d8:	e5938000 	ldr	r8, [r3]
  5806dc:	e1a00004 	mov	r0, r4
  5806e0:	e79b7002 	ldr	r7, [fp, r2]
  5806e4:	e287200c 	add	r2, r7, #12
  5806e8:	e5832000 	str	r2, [r3]
  5806ec:	ebf3a8e3 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5806f0:	e3a03001 	mov	r3, #1
  5806f4:	e1a00007 	mov	r0, r7
  5806f8:	e5843000 	str	r3, [r4]
  5806fc:	e1a01006 	mov	r1, r6
  580700:	e5848008 	str	r8, [r4, #8]
  580704:	ebf33da3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580708:	e59d0120 	ldr	r0, [sp, #288]	@ 0x120
  58070c:	e1a01006 	mov	r1, r6
  580710:	e240000c 	sub	r0, r0, #12
  580714:	ebf33d9f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580718:	e59d011c 	ldr	r0, [sp, #284]	@ 0x11c
  58071c:	e1a01006 	mov	r1, r6
  580720:	e240000c 	sub	r0, r0, #12
  580724:	ebf33d9b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580728:	e59d0118 	ldr	r0, [sp, #280]	@ 0x118
  58072c:	e1a01006 	mov	r1, r6
  580730:	e240000c 	sub	r0, r0, #12
  580734:	ebf33d97 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580738:	eafffa3d 	b	57f034 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11a4>
  58073c:	e28d60ec 	add	r6, sp, #236	@ 0xec
  580740:	e59f184c 	ldr	r1, [pc, #2124]	@ 580f94 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3104>
  580744:	e1a02008 	mov	r2, r8
  580748:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58074c:	e08f1001 	add	r1, pc, r1
  580750:	e1a00006 	mov	r0, r6
  580754:	ebf344f7 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580758:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58075c:	e1a00005 	mov	r0, r5
  580760:	ebf41d2e 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580764:	e1a01006 	mov	r1, r6
  580768:	ebf41dce 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  58076c:	e1a09000 	mov	r9, r0
  580770:	ebf3a8c2 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580774:	e59d00ec 	ldr	r0, [sp, #236]	@ 0xec
  580778:	e3a02006 	mov	r2, #6
  58077c:	e3a03000 	mov	r3, #0
  580780:	e5892000 	str	r2, [r9]
  580784:	e240000c 	sub	r0, r0, #12
  580788:	e1a01004 	mov	r1, r4
  58078c:	e5c93008 	strb	r3, [r9, #8]
  580790:	e28d60f0 	add	r6, sp, #240	@ 0xf0
  580794:	ebf33d7f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580798:	e59f17f8 	ldr	r1, [pc, #2040]	@ 580f98 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3108>
  58079c:	e1a00006 	mov	r0, r6
  5807a0:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  5807a4:	e08f1001 	add	r1, pc, r1
  5807a8:	ebf344e2 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5807ac:	e1a00005 	mov	r0, r5
  5807b0:	ebf41d1a 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5807b4:	e1a01006 	mov	r1, r6
  5807b8:	ebf41dba 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5807bc:	e28d90f4 	add	r9, sp, #244	@ 0xf4
  5807c0:	e59f17d4 	ldr	r1, [pc, #2004]	@ 580f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x310c>
  5807c4:	e1a06000 	mov	r6, r0
  5807c8:	e1a02008 	mov	r2, r8
  5807cc:	e08f1001 	add	r1, pc, r1
  5807d0:	e1a00009 	mov	r0, r9
  5807d4:	ebf344d7 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5807d8:	e28d80f8 	add	r8, sp, #248	@ 0xf8
  5807dc:	e1a01007 	mov	r1, r7
  5807e0:	e1a02009 	mov	r2, r9
  5807e4:	e1a00008 	mov	r0, r8
  5807e8:	ebf5a07d 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  5807ec:	e59f27ac 	ldr	r2, [pc, #1964]	@ 580fa0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3110>
  5807f0:	e1a00008 	mov	r0, r8
  5807f4:	e3a01000 	mov	r1, #0
  5807f8:	e08f2002 	add	r2, pc, r2
  5807fc:	ebf33e7c 	bl	2501f4 <std::string::insert(unsigned int, char const*)@plt>
  580800:	e59f2808 	ldr	r2, [pc, #2056]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  580804:	e1a03000 	mov	r3, r0
  580808:	e5938000 	ldr	r8, [r3]
  58080c:	e1a00006 	mov	r0, r6
  580810:	e79b7002 	ldr	r7, [fp, r2]
  580814:	e287200c 	add	r2, r7, #12
  580818:	e5832000 	str	r2, [r3]
  58081c:	ebf3a897 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580820:	e3a03001 	mov	r3, #1
  580824:	e1a00007 	mov	r0, r7
  580828:	e5863000 	str	r3, [r6]
  58082c:	e1a01004 	mov	r1, r4
  580830:	e5868008 	str	r8, [r6, #8]
  580834:	ebf33d57 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580838:	e59d00f8 	ldr	r0, [sp, #248]	@ 0xf8
  58083c:	e1a01004 	mov	r1, r4
  580840:	e240000c 	sub	r0, r0, #12
  580844:	ebf33d53 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580848:	e59d00f4 	ldr	r0, [sp, #244]	@ 0xf4
  58084c:	e1a01004 	mov	r1, r4
  580850:	e240000c 	sub	r0, r0, #12
  580854:	ebf33d4f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580858:	e59d00f0 	ldr	r0, [sp, #240]	@ 0xf0
  58085c:	e1a01004 	mov	r1, r4
  580860:	e240000c 	sub	r0, r0, #12
  580864:	ebf33d4b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580868:	eafffd93 	b	57febc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x202c>
  58086c:	e59f2730 	ldr	r2, [pc, #1840]	@ 580fa4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3114>
  580870:	e1a00009 	mov	r0, r9
  580874:	e3a01006 	mov	r1, #6
  580878:	e08f2002 	add	r2, pc, r2
  58087c:	ebf96d85 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580880:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  580884:	e3a03000 	mov	r3, #0
  580888:	e59d6014 	ldr	r6, [sp, #20]
  58088c:	e3a02006 	mov	r2, #6
  580890:	e1500003 	cmp	r0, r3
  580894:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580898:	e5862000 	str	r2, [r6]
  58089c:	e5c63008 	strb	r3, [r6, #8]
  5808a0:	1afffbb3 	bne	57f774 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x18e4>
  5808a4:	eafff9f4 	b	57f07c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11ec>
  5808a8:	e59f26f8 	ldr	r2, [pc, #1784]	@ 580fa8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3118>
  5808ac:	e1a00009 	mov	r0, r9
  5808b0:	e3a01007 	mov	r1, #7
  5808b4:	e08f2002 	add	r2, pc, r2
  5808b8:	ebf96d76 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  5808bc:	eaffffef 	b	580880 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x29f0>
  5808c0:	e59f26e4 	ldr	r2, [pc, #1764]	@ 580fac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x311c>
  5808c4:	e1a00009 	mov	r0, r9
  5808c8:	e3a01009 	mov	r1, #9
  5808cc:	e08f2002 	add	r2, pc, r2
  5808d0:	ebf96d70 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  5808d4:	eaffffe9 	b	580880 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x29f0>
  5808d8:	e59f26d0 	ldr	r2, [pc, #1744]	@ 580fb0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3120>
  5808dc:	e1a00009 	mov	r0, r9
  5808e0:	e3a0100b 	mov	r1, #11
  5808e4:	e08f2002 	add	r2, pc, r2
  5808e8:	ebf96d6a 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  5808ec:	eaffffe3 	b	580880 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x29f0>
  5808f0:	e59f26bc 	ldr	r2, [pc, #1724]	@ 580fb4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3124>
  5808f4:	e1a00009 	mov	r0, r9
  5808f8:	e3a0100c 	mov	r1, #12
  5808fc:	e08f2002 	add	r2, pc, r2
  580900:	ebf96d64 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580904:	e59db014 	ldr	fp, [sp, #20]
  580908:	e3a02006 	mov	r2, #6
  58090c:	e3a03000 	mov	r3, #0
  580910:	e58b2000 	str	r2, [fp]
  580914:	e5cb3008 	strb	r3, [fp, #8]
  580918:	eafff8f6 	b	57ecf8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0xe68>
  58091c:	e59f2694 	ldr	r2, [pc, #1684]	@ 580fb8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3128>
  580920:	e1a00009 	mov	r0, r9
  580924:	e3a01008 	mov	r1, #8
  580928:	e08f2002 	add	r2, pc, r2
  58092c:	ebf96d59 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580930:	eafffff3 	b	580904 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a74>
  580934:	e28d4e13 	add	r4, sp, #304	@ 0x130
  580938:	e59f167c 	ldr	r1, [pc, #1660]	@ 580fbc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x312c>
  58093c:	e1a02008 	mov	r2, r8
  580940:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580944:	e08f1001 	add	r1, pc, r1
  580948:	e1a00004 	mov	r0, r4
  58094c:	ebf34479 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580950:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580954:	e1a00005 	mov	r0, r5
  580958:	ebf41cb0 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  58095c:	e1a01004 	mov	r1, r4
  580960:	ebf41d50 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580964:	e1a09000 	mov	r9, r0
  580968:	ebf3a844 	bl	26aa80 <netflix::Variant::clear()@@Base>
  58096c:	e59d0130 	ldr	r0, [sp, #304]	@ 0x130
  580970:	e3a02006 	mov	r2, #6
  580974:	e3a03000 	mov	r3, #0
  580978:	e5892000 	str	r2, [r9]
  58097c:	e240000c 	sub	r0, r0, #12
  580980:	e1a01006 	mov	r1, r6
  580984:	e5c93008 	strb	r3, [r9, #8]
  580988:	e28d4f4d 	add	r4, sp, #308	@ 0x134
  58098c:	ebf33d01 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580990:	e59f1628 	ldr	r1, [pc, #1576]	@ 580fc0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3130>
  580994:	e1a00004 	mov	r0, r4
  580998:	e28d2e2a 	add	r2, sp, #672	@ 0x2a0
  58099c:	e08f1001 	add	r1, pc, r1
  5809a0:	ebf34464 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5809a4:	e1a00005 	mov	r0, r5
  5809a8:	ebf41c9c 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5809ac:	e1a01004 	mov	r1, r4
  5809b0:	ebf41d3c 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5809b4:	e28d9f4e 	add	r9, sp, #312	@ 0x138
  5809b8:	e59f1604 	ldr	r1, [pc, #1540]	@ 580fc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3134>
  5809bc:	e1a04000 	mov	r4, r0
  5809c0:	e1a02008 	mov	r2, r8
  5809c4:	e08f1001 	add	r1, pc, r1
  5809c8:	e1a00009 	mov	r0, r9
  5809cc:	ebf34459 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5809d0:	e28d8f4f 	add	r8, sp, #316	@ 0x13c
  5809d4:	e1a01007 	mov	r1, r7
  5809d8:	e1a02009 	mov	r2, r9
  5809dc:	e1a00008 	mov	r0, r8
  5809e0:	ebf59fff 	bl	2e89e4 <std::string netflix::Variant::mapValue<std::string>(std::string const&) const@@Base>
  5809e4:	e59f25dc 	ldr	r2, [pc, #1500]	@ 580fc8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3138>
  5809e8:	e1a00008 	mov	r0, r8
  5809ec:	e3a01000 	mov	r1, #0
  5809f0:	e08f2002 	add	r2, pc, r2
  5809f4:	ebf33dfe 	bl	2501f4 <std::string::insert(unsigned int, char const*)@plt>
  5809f8:	e59f2610 	ldr	r2, [pc, #1552]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  5809fc:	e1a03000 	mov	r3, r0
  580a00:	e5938000 	ldr	r8, [r3]
  580a04:	e1a00004 	mov	r0, r4
  580a08:	e79b7002 	ldr	r7, [fp, r2]
  580a0c:	e287200c 	add	r2, r7, #12
  580a10:	e5832000 	str	r2, [r3]
  580a14:	ebf3a819 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580a18:	e3a03001 	mov	r3, #1
  580a1c:	e1a00007 	mov	r0, r7
  580a20:	e5843000 	str	r3, [r4]
  580a24:	e1a01006 	mov	r1, r6
  580a28:	e5848008 	str	r8, [r4, #8]
  580a2c:	ebf33cd9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580a30:	e59d013c 	ldr	r0, [sp, #316]	@ 0x13c
  580a34:	e1a01006 	mov	r1, r6
  580a38:	e240000c 	sub	r0, r0, #12
  580a3c:	ebf33cd5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580a40:	e59d0138 	ldr	r0, [sp, #312]	@ 0x138
  580a44:	e1a01006 	mov	r1, r6
  580a48:	e240000c 	sub	r0, r0, #12
  580a4c:	ebf33cd1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580a50:	e59d0134 	ldr	r0, [sp, #308]	@ 0x134
  580a54:	e1a01006 	mov	r1, r6
  580a58:	e240000c 	sub	r0, r0, #12
  580a5c:	ebf33ccd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580a60:	eafff973 	b	57f034 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11a4>
  580a64:	e59f2560 	ldr	r2, [pc, #1376]	@ 580fcc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x313c>
  580a68:	e1a00009 	mov	r0, r9
  580a6c:	e3a01005 	mov	r1, #5
  580a70:	e08f2002 	add	r2, pc, r2
  580a74:	ebf96d07 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580a78:	eaffffa1 	b	580904 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2a74>
  580a7c:	e59f254c 	ldr	r2, [pc, #1356]	@ 580fd0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3140>
  580a80:	e1a00009 	mov	r0, r9
  580a84:	e3a0100d 	mov	r1, #13
  580a88:	e08f2002 	add	r2, pc, r2
  580a8c:	ebf96d01 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580a90:	e59d6014 	ldr	r6, [sp, #20]
  580a94:	e3a02006 	mov	r2, #6
  580a98:	e3a03000 	mov	r3, #0
  580a9c:	e5862000 	str	r2, [r6]
  580aa0:	e5c63008 	strb	r3, [r6, #8]
  580aa4:	eafffb2e 	b	57f764 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x18d4>
  580aa8:	e28d60b4 	add	r6, sp, #180	@ 0xb4
  580aac:	e59f1520 	ldr	r1, [pc, #1312]	@ 580fd4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3144>
  580ab0:	e1a02008 	mov	r2, r8
  580ab4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580ab8:	e08f1001 	add	r1, pc, r1
  580abc:	e1a00006 	mov	r0, r6
  580ac0:	ebf3441c 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580ac4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580ac8:	e1a00005 	mov	r0, r5
  580acc:	ebf41c53 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580ad0:	e1a01006 	mov	r1, r6
  580ad4:	ebf41cf3 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580ad8:	e1a07000 	mov	r7, r0
  580adc:	ebf3a7e7 	bl	26aa80 <netflix::Variant::clear()@@Base>
  580ae0:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  580ae4:	e3a02006 	mov	r2, #6
  580ae8:	e3a03000 	mov	r3, #0
  580aec:	e5872000 	str	r2, [r7]
  580af0:	e240000c 	sub	r0, r0, #12
  580af4:	e1a01004 	mov	r1, r4
  580af8:	e5c73008 	strb	r3, [r7, #8]
  580afc:	e28d60b8 	add	r6, sp, #184	@ 0xb8
  580b00:	ebf33ca4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580b04:	e59f14cc 	ldr	r1, [pc, #1228]	@ 580fd8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3148>
  580b08:	e1a00006 	mov	r0, r6
  580b0c:	e1a02008 	mov	r2, r8
  580b10:	e08f1001 	add	r1, pc, r1
  580b14:	ebf34407 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580b18:	e1a00005 	mov	r0, r5
  580b1c:	ebf41c3f 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  580b20:	e1a01006 	mov	r1, r6
  580b24:	ebf41cdf 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  580b28:	e59f14ac 	ldr	r1, [pc, #1196]	@ 580fdc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x314c>
  580b2c:	e08f1001 	add	r1, pc, r1
  580b30:	ebf92ab4 	bl	3cb608 <netflix::Variant::operator=(char const*)@@Base>
  580b34:	e59d00b8 	ldr	r0, [sp, #184]	@ 0xb8
  580b38:	e1a01004 	mov	r1, r4
  580b3c:	e240000c 	sub	r0, r0, #12
  580b40:	ebf33c94 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580b44:	e59f2494 	ldr	r2, [pc, #1172]	@ 580fe0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3150>
  580b48:	e1a00009 	mov	r0, r9
  580b4c:	e3a01003 	mov	r1, #3
  580b50:	e08f2002 	add	r2, pc, r2
  580b54:	ebf96ccf 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580b58:	eafff69a 	b	57e5c8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x738>
  580b5c:	e59d0018 	ldr	r0, [sp, #24]
  580b60:	e3a02002 	mov	r2, #2
  580b64:	e59d1054 	ldr	r1, [sp, #84]	@ 0x54
  580b68:	e28ded0a 	add	lr, sp, #640	@ 0x280
  580b6c:	e58de028 	str	lr, [sp, #40]	@ 0x28
  580b70:	ebf33964 	bl	24f108 <std::string::append(char const*, unsigned int)@plt>
  580b74:	e3a00003 	mov	r0, #3
  580b78:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  580b7c:	e1a02004 	mov	r2, r4
  580b80:	ebf33ab3 	bl	24f654 <__xstat@plt>
  580b84:	e3500000 	cmp	r0, #0
  580b88:	0afffd95 	beq	5801e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2354>
  580b8c:	e59d32a0 	ldr	r3, [sp, #672]	@ 0x2a0
  580b90:	e28d1d0a 	add	r1, sp, #640	@ 0x280
  580b94:	e58d1028 	str	r1, [sp, #40]	@ 0x28
  580b98:	e3a02000 	mov	r2, #0
  580b9c:	e59d0018 	ldr	r0, [sp, #24]
  580ba0:	e513100c 	ldr	r1, [r3, #-12]
  580ba4:	e2411002 	sub	r1, r1, #2
  580ba8:	ebf33df7 	bl	25038c <std::string::resize(unsigned int, char)@plt>
  580bac:	eafffd8c 	b	5801e4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2354>
  580bb0:	e1a02004 	mov	r2, r4
  580bb4:	e3a00003 	mov	r0, #3
  580bb8:	e59d1278 	ldr	r1, [sp, #632]	@ 0x278
  580bbc:	ebf33aa4 	bl	24f654 <__xstat@plt>
  580bc0:	e3500000 	cmp	r0, #0
  580bc4:	1a000003 	bne	580bd8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2d48>
  580bc8:	e59d32e0 	ldr	r3, [sp, #736]	@ 0x2e0
  580bcc:	e2033a0f 	and	r3, r3, #61440	@ 0xf000
  580bd0:	e3530902 	cmp	r3, #32768	@ 0x8000
  580bd4:	0a0002bc 	beq	5816cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x383c>
  580bd8:	e3a03003 	mov	r3, #3
  580bdc:	e3a02000 	mov	r2, #0
  580be0:	e34f3005 	movt	r3, #61445	@ 0xf005
  580be4:	e58d22b0 	str	r2, [sp, #688]	@ 0x2b0
  580be8:	e58d32ac 	str	r3, [sp, #684]	@ 0x2ac
  580bec:	ebf33981 	bl	24f1f8 <__errno_location@plt>
  580bf0:	e28d4094 	add	r4, sp, #148	@ 0x94
  580bf4:	e59f13e8 	ldr	r1, [pc, #1000]	@ 580fe4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3154>
  580bf8:	e59d2278 	ldr	r2, [sp, #632]	@ 0x278
  580bfc:	e08f1001 	add	r1, pc, r1
  580c00:	e5903000 	ldr	r3, [r0]
  580c04:	e1a00004 	mov	r0, r4
  580c08:	eb000a9c 	bl	583680 <std::string netflix::StringFormatterBase<std::string>::sformat<1024>(char const*, ...)@@Base>
  580c0c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580c10:	e3a0c000 	mov	ip, #0
  580c14:	e1a02004 	mov	r2, r4
  580c18:	e1a01008 	mov	r1, r8
  580c1c:	e1a00005 	mov	r0, r5
  580c20:	e58dc000 	str	ip, [sp]
  580c24:	e1a03006 	mov	r3, r6
  580c28:	e58dc2b8 	str	ip, [sp, #696]	@ 0x2b8
  580c2c:	e58dc2bc 	str	ip, [sp, #700]	@ 0x2bc
  580c30:	ebfff17e 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  580c34:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  580c38:	e3500000 	cmp	r0, #0
  580c3c:	0a000000 	beq	580c44 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2db4>
  580c40:	ebf3a74b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  580c44:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  580c48:	e1a01006 	mov	r1, r6
  580c4c:	e240000c 	sub	r0, r0, #12
  580c50:	ebf33c50 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580c54:	e1a00008 	mov	r0, r8
  580c58:	ebf40b52 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  580c5c:	eafffdc1 	b	580368 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x24d8>
  580c60:	e28d5f6a 	add	r5, sp, #424	@ 0x1a8
  580c64:	e59f137c 	ldr	r1, [pc, #892]	@ 580fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3158>
  580c68:	e1a02006 	mov	r2, r6
  580c6c:	e08f1001 	add	r1, pc, r1
  580c70:	e1a00005 	mov	r0, r5
  580c74:	ebf343af 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  580c78:	e28d3fde 	add	r3, sp, #888	@ 0x378
  580c7c:	e3a0c000 	mov	ip, #0
  580c80:	e1a00007 	mov	r0, r7
  580c84:	e1a01005 	mov	r1, r5
  580c88:	e523c160 	str	ip, [r3, #-352]!	@ 0xfffffea0
  580c8c:	e1a0200a 	mov	r2, sl
  580c90:	e58dc000 	str	ip, [sp]
  580c94:	ebf934cf 	bl	3cdfd8 <int netflix::Variant::mapValueImpl<int>(std::string const&, bool*, int const&, std::pair<int, int> const*) const@@Base>
  580c98:	e58d0034 	str	r0, [sp, #52]	@ 0x34
  580c9c:	e1a01004 	mov	r1, r4
  580ca0:	e59d01a8 	ldr	r0, [sp, #424]	@ 0x1a8
  580ca4:	e240000c 	sub	r0, r0, #12
  580ca8:	ebf33c3a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580cac:	e5dd306b 	ldrb	r3, [sp, #107]	@ 0x6b
  580cb0:	e3530000 	cmp	r3, #0
  580cb4:	1a000113 	bne	581108 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3278>
  580cb8:	e59f232c 	ldr	r2, [pc, #812]	@ 580fec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x315c>
  580cbc:	e1a00009 	mov	r0, r9
  580cc0:	e3a0100c 	mov	r1, #12
  580cc4:	e08f2002 	add	r2, pc, r2
  580cc8:	ebf96c72 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  580ccc:	eafffa3e 	b	57f5cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x173c>
  580cd0:	e28da058 	add	sl, sp, #88	@ 0x58
  580cd4:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  580cd8:	e58da048 	str	sl, [sp, #72]	@ 0x48
  580cdc:	e1a0000a 	mov	r0, sl
  580ce0:	eb015502 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  580ce4:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  580ce8:	e28dcfde 	add	ip, sp, #888	@ 0x378
  580cec:	e34f3fff 	movt	r3, #65535	@ 0xffff
  580cf0:	e18320dc 	ldrd	r2, [r3, ip]
  580cf4:	e3a03000 	mov	r3, #0
  580cf8:	e2022010 	and	r2, r2, #16
  580cfc:	e192e003 	orrs	lr, r2, r3
  580d00:	0a00017f 	beq	581304 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3474>
  580d04:	e59f3304 	ldr	r3, [pc, #772]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  580d08:	e28d5f8e 	add	r5, sp, #568	@ 0x238
  580d0c:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  580d10:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  580d14:	e1a00005 	mov	r0, r5
  580d18:	e79b3003 	ldr	r3, [fp, r3]
  580d1c:	e59d92a0 	ldr	r9, [sp, #672]	@ 0x2a0
  580d20:	e283300c 	add	r3, r3, #12
  580d24:	e58d32ac 	str	r3, [sp, #684]	@ 0x2ac
  580d28:	eb000897 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  580d2c:	e599700c 	ldr	r7, [r9, #12]
  580d30:	e3a01001 	mov	r1, #1
  580d34:	e2877040 	add	r7, r7, #64	@ 0x40
  580d38:	e1a00007 	mov	r0, r7
  580d3c:	eb0df111 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  580d40:	e1c9a3d8 	ldrd	sl, [r9, #56]	@ 0x38
  580d44:	e1a01009 	mov	r1, r9
  580d48:	e58d8008 	str	r8, [sp, #8]
  580d4c:	e1a00006 	mov	r0, r6
  580d50:	e1a02005 	mov	r2, r5
  580d54:	e1a03004 	mov	r3, r4
  580d58:	e1cda0f0 	strd	sl, [sp]
  580d5c:	eb0183b8 	bl	5e1c44 <netflix::DiskStore::Context::createImpl(netflix::DiskStore::Key const&, netflix::DataBuffer const&, netflix::Flags<netflix::DiskStore::Flag>, std::string*)@@Base>
  580d60:	e3a01001 	mov	r1, #1
  580d64:	e1a00007 	mov	r0, r7
  580d68:	eb0df13b 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  580d6c:	e1a00005 	mov	r0, r5
  580d70:	ebfed7cd 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  580d74:	e59d32b8 	ldr	r3, [sp, #696]	@ 0x2b8
  580d78:	e3530001 	cmp	r3, #1
  580d7c:	0a00022c 	beq	581634 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x37a4>
  580d80:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580d84:	e3a01003 	mov	r1, #3
  580d88:	e1a02008 	mov	r2, r8
  580d8c:	e58d1000 	str	r1, [sp]
  580d90:	e59d3018 	ldr	r3, [sp, #24]
  580d94:	e1a00005 	mov	r0, r5
  580d98:	e1a01006 	mov	r1, r6
  580d9c:	ebfff123 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  580da0:	e1a00006 	mov	r0, r6
  580da4:	ebf40aff 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  580da8:	e59d02ac 	ldr	r0, [sp, #684]	@ 0x2ac
  580dac:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  580db0:	e240000c 	sub	r0, r0, #12
  580db4:	ebf33bf7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580db8:	e1a00004 	mov	r0, r4
  580dbc:	ebffe8d8 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  580dc0:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  580dc4:	e1a01006 	mov	r1, r6
  580dc8:	e240000c 	sub	r0, r0, #12
  580dcc:	ebf33bf1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580dd0:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  580dd4:	e1a01006 	mov	r1, r6
  580dd8:	e240000c 	sub	r0, r0, #12
  580ddc:	ebf33bed 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580de0:	e59d02a4 	ldr	r0, [sp, #676]	@ 0x2a4
  580de4:	e3500000 	cmp	r0, #0
  580de8:	1afff894 	bne	57f040 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b0>
  580dec:	eafff894 	b	57f044 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x11b4>
  580df0:	e28d5e26 	add	r5, sp, #608	@ 0x260
  580df4:	e59d1030 	ldr	r1, [sp, #48]	@ 0x30
  580df8:	e59d2018 	ldr	r2, [sp, #24]
  580dfc:	e1a00005 	mov	r0, r5
  580e00:	eb000861 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  580e04:	e58d5000 	str	r5, [sp]
  580e08:	e1a00006 	mov	r0, r6
  580e0c:	e1a01009 	mov	r1, r9
  580e10:	e59d2020 	ldr	r2, [sp, #32]
  580e14:	e3a03005 	mov	r3, #5
  580e18:	ebffee6a 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  580e1c:	e1a00005 	mov	r0, r5
  580e20:	ebfed7a1 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  580e24:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  580e28:	e59d22b8 	ldr	r2, [sp, #696]	@ 0x2b8
  580e2c:	e3500000 	cmp	r0, #0
  580e30:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  580e34:	e58d02d4 	str	r0, [sp, #724]	@ 0x2d4
  580e38:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  580e3c:	0a000000 	beq	580e44 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2fb4>
  580e40:	ebf40ff3 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  580e44:	e1a00005 	mov	r0, r5
  580e48:	e1a01004 	mov	r1, r4
  580e4c:	eb015e0f 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  580e50:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  580e54:	e3500000 	cmp	r0, #0
  580e58:	0a000000 	beq	580e60 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2fd0>
  580e5c:	ebf3a6c4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  580e60:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  580e64:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580e68:	e3500000 	cmp	r0, #0
  580e6c:	0afffd96 	beq	5804cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x263c>
  580e70:	ebf3a6bf 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  580e74:	eafffd94 	b	5804cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x263c>
  580e78:	e28d0058 	add	r0, sp, #88	@ 0x58
  580e7c:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  580e80:	eb01549a 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  580e84:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  580e88:	e28dafde 	add	sl, sp, #888	@ 0x378
  580e8c:	e34f3fff 	movt	r3, #65535	@ 0xffff
  580e90:	e18320da 	ldrd	r2, [r3, sl]
  580e94:	e3a03000 	mov	r3, #0
  580e98:	e2022010 	and	r2, r2, #16
  580e9c:	e192c003 	orrs	ip, r2, r3
  580ea0:	0a000064 	beq	581038 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x31a8>
  580ea4:	e59f3164 	ldr	r3, [pc, #356]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  580ea8:	e28d7f92 	add	r7, sp, #584	@ 0x248
  580eac:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  580eb0:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  580eb4:	e1a00007 	mov	r0, r7
  580eb8:	e79b3003 	ldr	r3, [fp, r3]
  580ebc:	e59d52a0 	ldr	r5, [sp, #672]	@ 0x2a0
  580ec0:	e283300c 	add	r3, r3, #12
  580ec4:	e58d32ac 	str	r3, [sp, #684]	@ 0x2ac
  580ec8:	eb00082f 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  580ecc:	e595900c 	ldr	r9, [r5, #12]
  580ed0:	e3a01001 	mov	r1, #1
  580ed4:	e2899040 	add	r9, r9, #64	@ 0x40
  580ed8:	e1a00009 	mov	r0, r9
  580edc:	eb0df0a9 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  580ee0:	e58d8000 	str	r8, [sp]
  580ee4:	e1a01005 	mov	r1, r5
  580ee8:	e1a00006 	mov	r0, r6
  580eec:	e1a02007 	mov	r2, r7
  580ef0:	e1a03004 	mov	r3, r4
  580ef4:	eb018ace 	bl	5e3a34 <netflix::DiskStore::Context::appendImpl(netflix::DiskStore::Key const&, netflix::DataBuffer const&, std::string*)@@Base>
  580ef8:	e3a01001 	mov	r1, #1
  580efc:	e1a00009 	mov	r0, r9
  580f00:	e28d5fca 	add	r5, sp, #808	@ 0x328
  580f04:	eb0df0d4 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  580f08:	e1a00007 	mov	r0, r7
  580f0c:	ebfed766 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  580f10:	e3a02004 	mov	r2, #4
  580f14:	e59d3018 	ldr	r3, [sp, #24]
  580f18:	e1a00005 	mov	r0, r5
  580f1c:	e58d2000 	str	r2, [sp]
  580f20:	e1a01006 	mov	r1, r6
  580f24:	e1a02008 	mov	r2, r8
  580f28:	ebfff0c0 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  580f2c:	eaffff9b 	b	580da0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f10>
  580f30:	e59d00d4 	ldr	r0, [sp, #212]	@ 0xd4
  580f34:	e1a01004 	mov	r1, r4
  580f38:	e240000c 	sub	r0, r0, #12
  580f3c:	ebf33b95 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  580f40:	e3a0c000 	mov	ip, #0
  580f44:	eafff570 	b	57e50c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x67c>
  580f48:	003e6b88 	eorseq	r6, lr, r8, lsl #23
  580f4c:	003e6b5c 	eorseq	r6, lr, ip, asr fp
  580f50:	003d08b4 	ldrhteq	r0, [sp], -r4
  580f54:	0041edb0 	strheq	lr, [r1], #-208	@ 0xffffff30
  580f58:	003e6b54 	eorseq	r6, lr, r4, asr fp
  580f5c:	003e6b38 	eorseq	r6, lr, r8, lsr fp
  580f60:	003e15a0 	eorseq	r1, lr, r0, lsr #11
  580f64:	003d0608 	eorseq	r0, sp, r8, lsl #12
  580f68:	003e6808 	eorseq	r6, lr, r8, lsl #16
  580f6c:	003d0fbc 	ldrhteq	r0, [sp], -ip
  580f70:	003d0f64 	eorseq	r0, sp, r4, ror #30
  580f74:	003dd684 	eorseq	sp, sp, r4, lsl #13
  580f78:	003dd624 	eorseq	sp, sp, r4, lsr #12
  580f7c:	003dd5e8 	eorseq	sp, sp, r8, ror #11
  580f80:	003dd588 	eorseq	sp, sp, r8, lsl #11
  580f84:	003d024c 	eorseq	r0, sp, ip, asr #4
  580f88:	0041e748 	subeq	lr, r1, r8, asr #14
  580f8c:	003e64d8 	ldrsbteq	r6, [lr], -r8
  580f90:	003e64c4 	eorseq	r6, lr, r4, asr #9
  580f94:	003d011c 	eorseq	r0, sp, ip, lsl r1
  580f98:	0041e618 	subeq	lr, r1, r8, lsl r6
  580f9c:	003e63a8 	eorseq	r6, lr, r8, lsr #7
  580fa0:	003e6394 	mlaseq	lr, r4, r3, r6
  580fa4:	003e62fc 	ldrshteq	r6, [lr], -ip
  580fa8:	003e62c0 	eorseq	r6, lr, r0, asr #5
  580fac:	003e62a8 	eorseq	r6, lr, r8, lsr #5
  580fb0:	003e6290 	mlaseq	lr, r0, r2, r6
  580fb4:	003e6278 	eorseq	r6, lr, r8, ror r2
  580fb8:	003e624c 	eorseq	r6, lr, ip, asr #4
  580fbc:	003cff24 	eorseq	pc, ip, r4, lsr #30
  580fc0:	0041e420 	subeq	lr, r1, r0, lsr #8
  580fc4:	003e61b0 	ldrhteq	r6, [lr], -r0
  580fc8:	003e619c 	mlaseq	lr, ip, r1, r6
  580fcc:	003e6104 	eorseq	r6, lr, r4, lsl #2
  580fd0:	003e60ec 	eorseq	r6, lr, ip, ror #1
  580fd4:	003cfdb0 	ldrhteq	pc, [ip], -r0	@ <UNPREDICTABLE>
  580fd8:	0041e2ac 	subeq	lr, r1, ip, lsr #5
  580fdc:	003e6050 	eorseq	r6, lr, r0, asr r0
  580fe0:	003e6034 	eorseq	r6, lr, r4, lsr r0
  580fe4:	003e5fe0 	eorseq	r5, lr, r0, ror #31
  580fe8:	003fd7c0 	eorseq	sp, pc, r0, asr #15
  580fec:	003fd768 	eorseq	sp, pc, r8, ror #14
  580ff0:	003d0144 	eorseq	r0, sp, r4, asr #2
  580ff4:	003fd1bc 	ldrhteq	sp, [pc], -ip
  580ff8:	003cf4a0 	eorseq	pc, ip, r0, lsr #9
  580ffc:	0041d99c 	umaaleq	sp, r1, ip, r9
  581000:	003cf1e8 	eorseq	pc, ip, r8, ror #3
  581004:	003d14b8 	ldrhteq	r1, [sp], -r8
  581008:	003e539c 	mlaseq	lr, ip, r3, r5
  58100c:	003e5388 	eorseq	r5, lr, r8, lsl #7
  581010:	00002278 	andeq	r2, r0, r8, ror r2
  581014:	003e5314 	eorseq	r5, lr, r4, lsl r3
  581018:	003e528c 	eorseq	r5, lr, ip, lsl #5
  58101c:	003c275c 	eorseq	r2, ip, ip, asr r7
  581020:	003e514c 	eorseq	r5, lr, ip, asr #2
  581024:	003e5120 	eorseq	r5, lr, r0, lsr #2
  581028:	003cedbc 	ldrhteq	lr, [ip], -ip
  58102c:	003dc020 	eorseq	ip, sp, r0, lsr #32
  581030:	003fc838 	eorseq	ip, pc, r8, lsr r8	@ <UNPREDICTABLE>
  581034:	003dbde4 	eorseq	fp, sp, r4, ror #27
  581038:	e28d5e25 	add	r5, sp, #592	@ 0x250
  58103c:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  581040:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  581044:	e1a00005 	mov	r0, r5
  581048:	eb0007cf 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  58104c:	e58d5000 	str	r5, [sp]
  581050:	e1a01009 	mov	r1, r9
  581054:	e59d2020 	ldr	r2, [sp, #32]
  581058:	e1a00008 	mov	r0, r8
  58105c:	e3a03004 	mov	r3, #4
  581060:	ebffedd8 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  581064:	e1a00005 	mov	r0, r5
  581068:	ebfed70f 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  58106c:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  581070:	e285000c 	add	r0, r5, #12
  581074:	ebffe82a 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  581078:	e59d32d0 	ldr	r3, [sp, #720]	@ 0x2d0
  58107c:	e59d12d4 	ldr	r1, [sp, #724]	@ 0x2d4
  581080:	e59d22d8 	ldr	r2, [sp, #728]	@ 0x2d8
  581084:	e3530000 	cmp	r3, #0
  581088:	e585300c 	str	r3, [r5, #12]
  58108c:	e5851010 	str	r1, [r5, #16]
  581090:	e5852014 	str	r2, [r5, #20]
  581094:	0a000006 	beq	5810b4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3224>
  581098:	f57ff05f 	dmb	sy
  58109c:	e193ef9f 	ldrex	r14, [r3]
  5810a0:	e28ee001 	add	lr, lr, #1
  5810a4:	e1830f9e 	strex	r0, lr, [r3]
  5810a8:	e3500000 	cmp	r0, #0
  5810ac:	1afffffa 	bne	58109c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x320c>
  5810b0:	f57ff05f 	dmb	sy
  5810b4:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  5810b8:	e59d22ac 	ldr	r2, [sp, #684]	@ 0x2ac
  5810bc:	e3500000 	cmp	r0, #0
  5810c0:	e59d52a0 	ldr	r5, [sp, #672]	@ 0x2a0
  5810c4:	e58d02bc 	str	r0, [sp, #700]	@ 0x2bc
  5810c8:	e58d22b8 	str	r2, [sp, #696]	@ 0x2b8
  5810cc:	0a000000 	beq	5810d4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3244>
  5810d0:	ebf40f4f 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  5810d4:	e1a00005 	mov	r0, r5
  5810d8:	e1a01006 	mov	r1, r6
  5810dc:	eb015d6b 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  5810e0:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5810e4:	e3500000 	cmp	r0, #0
  5810e8:	0a000000 	beq	5810f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3260>
  5810ec:	ebf3a620 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5810f0:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  5810f4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5810f8:	e3500000 	cmp	r0, #0
  5810fc:	0affff2d 	beq	580db8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f28>
  581100:	ebf3a61b 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  581104:	eaffff2b 	b	580db8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f28>
  581108:	e28d7058 	add	r7, sp, #88	@ 0x58
  58110c:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  581110:	e58d7048 	str	r7, [sp, #72]	@ 0x48
  581114:	e1a00007 	mov	r0, r7
  581118:	eb0153f4 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  58111c:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  581120:	e28dcfde 	add	ip, sp, #888	@ 0x378
  581124:	e34f3fff 	movt	r3, #65535	@ 0xffff
  581128:	e59da030 	ldr	sl, [sp, #48]	@ 0x30
  58112c:	e18320dc 	ldrd	r2, [r3, ip]
  581130:	e3a03000 	mov	r3, #0
  581134:	e2022010 	and	r2, r2, #16
  581138:	e1caafca 	bic	sl, sl, sl, asr #31
  58113c:	e192e003 	orrs	lr, r2, r3
  581140:	e58da038 	str	sl, [sp, #56]	@ 0x38
  581144:	0a00010a 	beq	581574 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x36e4>
  581148:	e51f3140 	ldr	r3, [pc, #-320]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  58114c:	e28d9f9a 	add	r9, sp, #616	@ 0x268
  581150:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  581154:	e59d202c 	ldr	r2, [sp, #44]	@ 0x2c
  581158:	e1a00009 	mov	r0, r9
  58115c:	e79bc003 	ldr	ip, [fp, r3]
  581160:	e3a03000 	mov	r3, #0
  581164:	e59d72a0 	ldr	r7, [sp, #672]	@ 0x2a0
  581168:	e28cc00c 	add	ip, ip, #12
  58116c:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  581170:	e58d32bc 	str	r3, [sp, #700]	@ 0x2bc
  581174:	e58dc294 	str	ip, [sp, #660]	@ 0x294
  581178:	e58d32c0 	str	r3, [sp, #704]	@ 0x2c0
  58117c:	eb000782 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  581180:	e597500c 	ldr	r5, [r7, #12]
  581184:	e3a01001 	mov	r1, #1
  581188:	e2855040 	add	r5, r5, #64	@ 0x40
  58118c:	e1a00005 	mov	r0, r5
  581190:	eb0deffc 	bl	8fd188 <netflix::Mutex::lock(bool)@@Base>
  581194:	e1c7a3d8 	ldrd	sl, [r7, #56]	@ 0x38
  581198:	e1a01007 	mov	r1, r7
  58119c:	e1a00008 	mov	r0, r8
  5811a0:	e1a02009 	mov	r2, r9
  5811a4:	e1a03006 	mov	r3, r6
  5811a8:	e1cda0f0 	strd	sl, [sp]
  5811ac:	e28dbfa5 	add	fp, sp, #660	@ 0x294
  5811b0:	e58db008 	str	fp, [sp, #8]
  5811b4:	e58db030 	str	fp, [sp, #48]	@ 0x30
  5811b8:	eb017c76 	bl	5e0398 <netflix::DiskStore::Context::readImpl(netflix::DiskStore::Key const&, netflix::DataBuffer&, netflix::Flags<netflix::DiskStore::Flag>, std::string*)@@Base>
  5811bc:	e3a01001 	mov	r1, #1
  5811c0:	e1a00005 	mov	r0, r5
  5811c4:	eb0df024 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  5811c8:	e1a00009 	mov	r0, r9
  5811cc:	ebfed6b6 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5811d0:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  5811d4:	e3530001 	cmp	r3, #1
  5811d8:	0a00021e 	beq	581a58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3bc8>
  5811dc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5811e0:	e3a03006 	mov	r3, #6
  5811e4:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  5811e8:	e1a01008 	mov	r1, r8
  5811ec:	e58d3000 	str	r3, [sp]
  5811f0:	e1a00005 	mov	r0, r5
  5811f4:	e59d3018 	ldr	r3, [sp, #24]
  5811f8:	ebfff00c 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  5811fc:	e28d7f9e 	add	r7, sp, #632	@ 0x278
  581200:	e58d7020 	str	r7, [sp, #32]
  581204:	e28d7e1b 	add	r7, sp, #432	@ 0x1b0
  581208:	e51f1220 	ldr	r1, [pc, #-544]	@ 580ff0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3160>
  58120c:	e59d2020 	ldr	r2, [sp, #32]
  581210:	e08f1001 	add	r1, pc, r1
  581214:	e1a00007 	mov	r0, r7
  581218:	ebf34246 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  58121c:	e1a00005 	mov	r0, r5
  581220:	ebf41a7e 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581224:	e1a01007 	mov	r1, r7
  581228:	ebf41b1e 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  58122c:	e1a07000 	mov	r7, r0
  581230:	ebf3a612 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581234:	e59da038 	ldr	sl, [sp, #56]	@ 0x38
  581238:	e3a03004 	mov	r3, #4
  58123c:	e59d01b0 	ldr	r0, [sp, #432]	@ 0x1b0
  581240:	e1a01004 	mov	r1, r4
  581244:	e5873000 	str	r3, [r7]
  581248:	e28d9f6d 	add	r9, sp, #436	@ 0x1b4
  58124c:	e1a0bfca 	asr	fp, sl, #31
  581250:	e1a0200a 	mov	r2, sl
  581254:	e240000c 	sub	r0, r0, #12
  581258:	e1a0300b 	mov	r3, fp
  58125c:	e1c720f8 	strd	r2, [r7, #8]
  581260:	ebf33acc 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581264:	e51f1278 	ldr	r1, [pc, #-632]	@ 580ff4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3164>
  581268:	e1a00009 	mov	r0, r9
  58126c:	e59d2020 	ldr	r2, [sp, #32]
  581270:	e08f1001 	add	r1, pc, r1
  581274:	ebf3422f 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581278:	e1a00005 	mov	r0, r5
  58127c:	ebf41a67 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581280:	e1a01009 	mov	r1, r9
  581284:	ebf41b07 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  581288:	e1a07000 	mov	r7, r0
  58128c:	ebf3a5fb 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581290:	e59da034 	ldr	sl, [sp, #52]	@ 0x34
  581294:	e3a03004 	mov	r3, #4
  581298:	e59d01b4 	ldr	r0, [sp, #436]	@ 0x1b4
  58129c:	e1a01004 	mov	r1, r4
  5812a0:	e5873000 	str	r3, [r7]
  5812a4:	e1a0bfca 	asr	fp, sl, #31
  5812a8:	e1a0200a 	mov	r2, sl
  5812ac:	e240000c 	sub	r0, r0, #12
  5812b0:	e1a0300b 	mov	r3, fp
  5812b4:	e1c720f8 	strd	r2, [r7, #8]
  5812b8:	ebf33ab6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5812bc:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  5812c0:	e3530001 	cmp	r3, #1
  5812c4:	0a00020b 	beq	581af8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3c68>
  5812c8:	e1a00008 	mov	r0, r8
  5812cc:	ebf409b5 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  5812d0:	e1a00006 	mov	r0, r6
  5812d4:	ebffe792 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  5812d8:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  5812dc:	e1a01004 	mov	r1, r4
  5812e0:	e240000c 	sub	r0, r0, #12
  5812e4:	ebf33aab 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5812e8:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  5812ec:	e1a01004 	mov	r1, r4
  5812f0:	e240000c 	sub	r0, r0, #12
  5812f4:	ebf33aa7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5812f8:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  5812fc:	e1a01004 	mov	r1, r4
  581300:	eafffeb4 	b	580dd8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f48>
  581304:	e28d5d09 	add	r5, sp, #576	@ 0x240
  581308:	e59d102c 	ldr	r1, [sp, #44]	@ 0x2c
  58130c:	e59d2030 	ldr	r2, [sp, #48]	@ 0x30
  581310:	e1a00005 	mov	r0, r5
  581314:	eb00071c 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  581318:	e58d5000 	str	r5, [sp]
  58131c:	e1a00008 	mov	r0, r8
  581320:	e1a01009 	mov	r1, r9
  581324:	e59d2020 	ldr	r2, [sp, #32]
  581328:	e3a03003 	mov	r3, #3
  58132c:	ebffed25 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  581330:	e1a00005 	mov	r0, r5
  581334:	ebfed65c 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  581338:	e59d52ac 	ldr	r5, [sp, #684]	@ 0x2ac
  58133c:	e285000c 	add	r0, r5, #12
  581340:	ebffe777 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  581344:	e59d32d0 	ldr	r3, [sp, #720]	@ 0x2d0
  581348:	e59d12d4 	ldr	r1, [sp, #724]	@ 0x2d4
  58134c:	e59d22d8 	ldr	r2, [sp, #728]	@ 0x2d8
  581350:	e3530000 	cmp	r3, #0
  581354:	e585300c 	str	r3, [r5, #12]
  581358:	e5851010 	str	r1, [r5, #16]
  58135c:	e5852014 	str	r2, [r5, #20]
  581360:	0a000006 	beq	581380 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x34f0>
  581364:	f57ff05f 	dmb	sy
  581368:	e1930f9f 	ldrex	r0, [r3]
  58136c:	e2800001 	add	r0, r0, #1
  581370:	e1831f90 	strex	r1, r0, [r3]
  581374:	e3510000 	cmp	r1, #0
  581378:	1afffffa 	bne	581368 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x34d8>
  58137c:	f57ff05f 	dmb	sy
  581380:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  581384:	e59d22ac 	ldr	r2, [sp, #684]	@ 0x2ac
  581388:	e3500000 	cmp	r0, #0
  58138c:	e59d52a0 	ldr	r5, [sp, #672]	@ 0x2a0
  581390:	e58d02bc 	str	r0, [sp, #700]	@ 0x2bc
  581394:	e58d22b8 	str	r2, [sp, #696]	@ 0x2b8
  581398:	0a000000 	beq	5813a0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3510>
  58139c:	ebf40e9c 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  5813a0:	e1a00005 	mov	r0, r5
  5813a4:	e1a01006 	mov	r1, r6
  5813a8:	eb015cb8 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  5813ac:	eaffff4b 	b	5810e0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3250>
  5813b0:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  5813b4:	e28d60dc 	add	r6, sp, #220	@ 0xdc
  5813b8:	e51f13c8 	ldr	r1, [pc, #-968]	@ 580ff8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3168>
  5813bc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5813c0:	e1a00006 	mov	r0, r6
  5813c4:	e1a02007 	mov	r2, r7
  5813c8:	e08f1001 	add	r1, pc, r1
  5813cc:	e58d7018 	str	r7, [sp, #24]
  5813d0:	ebf341d8 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5813d4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5813d8:	e1a00005 	mov	r0, r5
  5813dc:	ebf41a0f 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  5813e0:	e1a01006 	mov	r1, r6
  5813e4:	ebf41aaf 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5813e8:	e1a07000 	mov	r7, r0
  5813ec:	ebf3a5a3 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5813f0:	e59d00dc 	ldr	r0, [sp, #220]	@ 0xdc
  5813f4:	e3a02006 	mov	r2, #6
  5813f8:	e3a03000 	mov	r3, #0
  5813fc:	e5872000 	str	r2, [r7]
  581400:	e240000c 	sub	r0, r0, #12
  581404:	e1a01008 	mov	r1, r8
  581408:	e5c73008 	strb	r3, [r7, #8]
  58140c:	e28d60e0 	add	r6, sp, #224	@ 0xe0
  581410:	ebf33a60 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581414:	e51f1420 	ldr	r1, [pc, #-1056]	@ 580ffc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x316c>
  581418:	e59d2018 	ldr	r2, [sp, #24]
  58141c:	e1a00006 	mov	r0, r6
  581420:	e08f1001 	add	r1, pc, r1
  581424:	ebf341c3 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581428:	e1a00005 	mov	r0, r5
  58142c:	ebf419fb 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581430:	e1a01006 	mov	r1, r6
  581434:	ebf41a9b 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  581438:	e1a01004 	mov	r1, r4
  58143c:	ebf92857 	bl	3cb5a0 <netflix::Variant::operator=(std::string const&)@@Base>
  581440:	e59d00e0 	ldr	r0, [sp, #224]	@ 0xe0
  581444:	e1a01008 	mov	r1, r8
  581448:	e240000c 	sub	r0, r0, #12
  58144c:	ebf33a51 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581450:	eafff458 	b	57e5b8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x728>
  581454:	e5970008 	ldr	r0, [r7, #8]
  581458:	e1a01005 	mov	r1, r5
  58145c:	e58d3010 	str	r3, [sp, #16]
  581460:	e2800008 	add	r0, r0, #8
  581464:	ebf40e8c 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  581468:	e5972008 	ldr	r2, [r7, #8]
  58146c:	e59d3010 	ldr	r3, [sp, #16]
  581470:	e282200c 	add	r2, r2, #12
  581474:	e1500002 	cmp	r0, r2
  581478:	0a000140 	beq	581980 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3af0>
  58147c:	e58d3000 	str	r3, [sp]
  581480:	e2801018 	add	r1, r0, #24
  581484:	e1a0200a 	mov	r2, sl
  581488:	e1a00004 	mov	r0, r4
  58148c:	e1a03006 	mov	r3, r6
  581490:	ebf40eed 	bl	28504c <netflix::DataBuffer netflix::Variant::valueImpl<netflix::DataBuffer>(bool*, netflix::DataBuffer const&, std::pair<netflix::DataBuffer, netflix::DataBuffer> const*) const@@Base>
  581494:	e59d32b8 	ldr	r3, [sp, #696]	@ 0x2b8
  581498:	e3530000 	cmp	r3, #0
  58149c:	0afffc4a 	beq	5805cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x273c>
  5814a0:	f57ff05f 	dmb	sy
  5814a4:	e1932f9f 	ldrex	r2, [r3]
  5814a8:	e2422001 	sub	r2, r2, #1
  5814ac:	e1831f92 	strex	r1, r2, [r3]
  5814b0:	e3510000 	cmp	r1, #0
  5814b4:	1afffffa 	bne	5814a4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3614>
  5814b8:	e3520000 	cmp	r2, #0
  5814bc:	f57ff05f 	dmb	sy
  5814c0:	1afffc41 	bne	5805cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x273c>
  5814c4:	e59d32b8 	ldr	r3, [sp, #696]	@ 0x2b8
  5814c8:	e5932010 	ldr	r2, [r3, #16]
  5814cc:	e2422003 	sub	r2, r2, #3
  5814d0:	e3520001 	cmp	r2, #1
  5814d4:	9a00004c 	bls	58160c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x377c>
  5814d8:	e1a00003 	mov	r0, r3
  5814dc:	ebf338ad 	bl	24f798 <free@plt>
  5814e0:	eafffc39 	b	5805cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x273c>
  5814e4:	e5970008 	ldr	r0, [r7, #8]
  5814e8:	e1a01005 	mov	r1, r5
  5814ec:	e58d3010 	str	r3, [sp, #16]
  5814f0:	e2800008 	add	r0, r0, #8
  5814f4:	ebf40e68 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  5814f8:	e5972008 	ldr	r2, [r7, #8]
  5814fc:	e59d3010 	ldr	r3, [sp, #16]
  581500:	e282200c 	add	r2, r2, #12
  581504:	e1500002 	cmp	r0, r2
  581508:	0a00010b 	beq	58193c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3aac>
  58150c:	e58d3000 	str	r3, [sp]
  581510:	e2801018 	add	r1, r0, #24
  581514:	e1a0200a 	mov	r2, sl
  581518:	e1a00004 	mov	r0, r4
  58151c:	e1a03008 	mov	r3, r8
  581520:	ebf40ec9 	bl	28504c <netflix::DataBuffer netflix::Variant::valueImpl<netflix::DataBuffer>(bool*, netflix::DataBuffer const&, std::pair<netflix::DataBuffer, netflix::DataBuffer> const*) const@@Base>
  581524:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  581528:	e3530000 	cmp	r3, #0
  58152c:	0afffbff 	beq	580530 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26a0>
  581530:	f57ff05f 	dmb	sy
  581534:	e1932f9f 	ldrex	r2, [r3]
  581538:	e2422001 	sub	r2, r2, #1
  58153c:	e1831f92 	strex	r1, r2, [r3]
  581540:	e3510000 	cmp	r1, #0
  581544:	1afffffa 	bne	581534 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x36a4>
  581548:	e3520000 	cmp	r2, #0
  58154c:	f57ff05f 	dmb	sy
  581550:	1afffbf6 	bne	580530 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26a0>
  581554:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  581558:	e5932010 	ldr	r2, [r3, #16]
  58155c:	e2422003 	sub	r2, r2, #3
  581560:	e3520001 	cmp	r2, #1
  581564:	9a00002d 	bls	581620 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3790>
  581568:	e1a00003 	mov	r0, r3
  58156c:	ebf33889 	bl	24f798 <free@plt>
  581570:	eafffbee 	b	580530 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26a0>
  581574:	e28d5e27 	add	r5, sp, #624	@ 0x270
  581578:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  58157c:	e59d202c 	ldr	r2, [sp, #44]	@ 0x2c
  581580:	e1a00005 	mov	r0, r5
  581584:	eb000680 	bl	582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>
  581588:	e58d5000 	str	r5, [sp]
  58158c:	e1a00006 	mov	r0, r6
  581590:	e1a01009 	mov	r1, r9
  581594:	e59d2020 	ldr	r2, [sp, #32]
  581598:	e3a03006 	mov	r3, #6
  58159c:	ebffec89 	bl	57c7c8 <netflix::StorageBridge::createOperation(int, netflix::DiskStore::Context::OperationType, netflix::DiskStore::Key const&)@@Base>
  5815a0:	e1a00005 	mov	r0, r5
  5815a4:	ebfed5c0 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5815a8:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5815ac:	e59d22b8 	ldr	r2, [sp, #696]	@ 0x2b8
  5815b0:	e59d6038 	ldr	r6, [sp, #56]	@ 0x38
  5815b4:	e3500000 	cmp	r0, #0
  5815b8:	e59d7034 	ldr	r7, [sp, #52]	@ 0x34
  5815bc:	e59d52a0 	ldr	r5, [sp, #672]	@ 0x2a0
  5815c0:	e5826038 	str	r6, [r2, #56]	@ 0x38
  5815c4:	e582703c 	str	r7, [r2, #60]	@ 0x3c
  5815c8:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  5815cc:	e58d02d4 	str	r0, [sp, #724]	@ 0x2d4
  5815d0:	0a000000 	beq	5815d8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3748>
  5815d4:	ebf40e0e 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  5815d8:	e1a00005 	mov	r0, r5
  5815dc:	e1a01004 	mov	r1, r4
  5815e0:	eb015c2a 	bl	5d8690 <netflix::DiskStore::Context::post(std::shared_ptr<netflix::DiskStore::Context::Operation> const&)@@Base>
  5815e4:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  5815e8:	e3500000 	cmp	r0, #0
  5815ec:	0a000000 	beq	5815f4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3764>
  5815f0:	ebf3a4df 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5815f4:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5815f8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5815fc:	e3500000 	cmp	r0, #0
  581600:	0affff38 	beq	5812e8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3458>
  581604:	ebf3a4da 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  581608:	eaffff36 	b	5812e8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3458>
  58160c:	e5930014 	ldr	r0, [r3, #20]
  581610:	e5931004 	ldr	r1, [r3, #4]
  581614:	ebf33d1e 	bl	250a94 <munmap@plt>
  581618:	e59d32b8 	ldr	r3, [sp, #696]	@ 0x2b8
  58161c:	eaffffad 	b	5814d8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3648>
  581620:	e5930014 	ldr	r0, [r3, #20]
  581624:	e5931004 	ldr	r1, [r3, #4]
  581628:	ebf33d19 	bl	250a94 <munmap@plt>
  58162c:	e59d32ac 	ldr	r3, [sp, #684]	@ 0x2ac
  581630:	eaffffcc 	b	581568 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x36d8>
  581634:	e59d32bc 	ldr	r3, [sp, #700]	@ 0x2bc
  581638:	e3530000 	cmp	r3, #0
  58163c:	1afffdcf 	bne	580d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2ef0>
  581640:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  581644:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581648:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  58164c:	eb0152a7 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  581650:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  581654:	e28d7fde 	add	r7, sp, #888	@ 0x378
  581658:	e34f3fff 	movt	r3, #65535	@ 0xffff
  58165c:	e18320d7 	ldrd	r2, [r3, r7]
  581660:	e3a03000 	mov	r3, #0
  581664:	e2022040 	and	r2, r2, #64	@ 0x40
  581668:	e192a003 	orrs	sl, r2, r3
  58166c:	0afffdc3 	beq	580d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2ef0>
  581670:	e28d7f5b 	add	r7, sp, #364	@ 0x16c
  581674:	e51f167c 	ldr	r1, [pc, #-1660]	@ 581000 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3170>
  581678:	e28d2f9e 	add	r2, sp, #632	@ 0x278
  58167c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581680:	e08f1001 	add	r1, pc, r1
  581684:	e1a00007 	mov	r0, r7
  581688:	ebf3412a 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  58168c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581690:	e1a00005 	mov	r0, r5
  581694:	ebf41961 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581698:	e1a01007 	mov	r1, r7
  58169c:	ebf41a01 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  5816a0:	e1a07000 	mov	r7, r0
  5816a4:	ebf3a4f5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5816a8:	e59d016c 	ldr	r0, [sp, #364]	@ 0x16c
  5816ac:	e3a02006 	mov	r2, #6
  5816b0:	e3a03001 	mov	r3, #1
  5816b4:	e5872000 	str	r2, [r7]
  5816b8:	e240000c 	sub	r0, r0, #12
  5816bc:	e5c73008 	strb	r3, [r7, #8]
  5816c0:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  5816c4:	ebf339b3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5816c8:	eafffdb4 	b	580da0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2f10>
  5816cc:	e51f16d0 	ldr	r1, [pc, #-1744]	@ 581004 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3174>
  5816d0:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  5816d4:	e08f1001 	add	r1, pc, r1
  5816d8:	ebf33eaf 	bl	25119c <std::string::compare(char const*) const@plt>
  5816dc:	e3500000 	cmp	r0, #0
  5816e0:	1a000028 	bne	581788 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x38f8>
  5816e4:	e59d0278 	ldr	r0, [sp, #632]	@ 0x278
  5816e8:	ebf33956 	bl	24fc48 <unlink@plt>
  5816ec:	e16f4f10 	clz	r4, r0
  5816f0:	e1a042a4 	lsr	r4, r4, #5
  5816f4:	e51f36ec 	ldr	r3, [pc, #-1772]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  5816f8:	e3540000 	cmp	r4, #0
  5816fc:	e3a0e001 	mov	lr, #1
  581700:	e3a02000 	mov	r2, #0
  581704:	128d7fa2 	addne	r7, sp, #648	@ 0x288
  581708:	e79b3003 	ldr	r3, [fp, r3]
  58170c:	e58de2a0 	str	lr, [sp, #672]	@ 0x2a0
  581710:	e283300c 	add	r3, r3, #12
  581714:	e58d22a4 	str	r2, [sp, #676]	@ 0x2a4
  581718:	e58d3288 	str	r3, [sp, #648]	@ 0x288
  58171c:	158d702c 	strne	r7, [sp, #44]	@ 0x2c
  581720:	0a00003f 	beq	581824 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3994>
  581724:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581728:	e3a0c000 	mov	ip, #0
  58172c:	e59d202c 	ldr	r2, [sp, #44]	@ 0x2c
  581730:	e1a01008 	mov	r1, r8
  581734:	e1a00005 	mov	r0, r5
  581738:	e58dc000 	str	ip, [sp]
  58173c:	e1a03006 	mov	r3, r6
  581740:	e58de2ac 	str	lr, [sp, #684]	@ 0x2ac
  581744:	e58dc2b0 	str	ip, [sp, #688]	@ 0x2b0
  581748:	e58dc2b8 	str	ip, [sp, #696]	@ 0x2b8
  58174c:	e58dc2bc 	str	ip, [sp, #700]	@ 0x2bc
  581750:	ebffeeb6 	bl	57d230 <netflix::StorageBridge::getProperty(int, netflix::Variant*) const@@Base+0x904>
  581754:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  581758:	e3500000 	cmp	r0, #0
  58175c:	0a000000 	beq	581764 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x38d4>
  581760:	ebf3a483 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  581764:	e1a00008 	mov	r0, r8
  581768:	ebf4088e 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  58176c:	e28d0e2a 	add	r0, sp, #672	@ 0x2a0
  581770:	ebf4088c 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  581774:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  581778:	e1a01006 	mov	r1, r6
  58177c:	e240000c 	sub	r0, r0, #12
  581780:	ebf33984 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581784:	eafffaf7 	b	580368 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x24d8>
  581788:	e51f1788 	ldr	r1, [pc, #-1928]	@ 581008 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3178>
  58178c:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  581790:	e08f1001 	add	r1, pc, r1
  581794:	ebf33e80 	bl	25119c <std::string::compare(char const*) const@plt>
  581798:	e3500000 	cmp	r0, #0
  58179c:	1a000041 	bne	5818a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a18>
  5817a0:	e28d4098 	add	r4, sp, #152	@ 0x98
  5817a4:	e51f17a0 	ldr	r1, [pc, #-1952]	@ 58100c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x317c>
  5817a8:	e1a02008 	mov	r2, r8
  5817ac:	e59d5278 	ldr	r5, [sp, #632]	@ 0x278
  5817b0:	e08f1001 	add	r1, pc, r1
  5817b4:	e1a00004 	mov	r0, r4
  5817b8:	ebf340de 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  5817bc:	e59dc2fc 	ldr	ip, [sp, #764]	@ 0x2fc
  5817c0:	e3a02000 	mov	r2, #0
  5817c4:	e1a00007 	mov	r0, r7
  5817c8:	e1a01004 	mov	r1, r4
  5817cc:	e58d2000 	str	r2, [sp]
  5817d0:	e1a03006 	mov	r3, r6
  5817d4:	e24cc001 	sub	ip, ip, #1
  5817d8:	e58dc2b8 	str	ip, [sp, #696]	@ 0x2b8
  5817dc:	ebf4d363 	bl	2b6570 <unsigned int netflix::Variant::mapValueImpl<unsigned int>(std::string const&, bool*, unsigned int const&, std::pair<unsigned int, unsigned int> const*) const@@Base>
  5817e0:	e1a01000 	mov	r1, r0
  5817e4:	e1a00005 	mov	r0, r5
  5817e8:	ebf33ea4 	bl	251280 <truncate@plt>
  5817ec:	e59d3098 	ldr	r3, [sp, #152]	@ 0x98
  5817f0:	e16f4f10 	clz	r4, r0
  5817f4:	e1a01006 	mov	r1, r6
  5817f8:	e243000c 	sub	r0, r3, #12
  5817fc:	e1a042a4 	lsr	r4, r4, #5
  581800:	ebf33964 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581804:	eaffffba 	b	5816f4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3864>
  581808:	e51f3800 	ldr	r3, [pc, #-2048]	@ 581010 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3180>
  58180c:	e3a02001 	mov	r2, #1
  581810:	e79b3003 	ldr	r3, [fp, r3]
  581814:	e58d52a4 	str	r5, [sp, #676]	@ 0x2a4
  581818:	e283300c 	add	r3, r3, #12
  58181c:	e58d22a0 	str	r2, [sp, #672]	@ 0x2a0
  581820:	e58d3288 	str	r3, [sp, #648]	@ 0x288
  581824:	ebf33673 	bl	24f1f8 <__errno_location@plt>
  581828:	e28d40a0 	add	r4, sp, #160	@ 0xa0
  58182c:	e51f1820 	ldr	r1, [pc, #-2080]	@ 581014 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3184>
  581830:	e59d2280 	ldr	r2, [sp, #640]	@ 0x280
  581834:	e59d3278 	ldr	r3, [sp, #632]	@ 0x278
  581838:	e08f1001 	add	r1, pc, r1
  58183c:	e590c000 	ldr	ip, [r0]
  581840:	e1a00004 	mov	r0, r4
  581844:	e58dc000 	str	ip, [sp]
  581848:	eb00078c 	bl	583680 <std::string netflix::StringFormatterBase<std::string>::sformat<1024>(char const*, ...)@@Base>
  58184c:	e28dbfa2 	add	fp, sp, #648	@ 0x288
  581850:	e1a01004 	mov	r1, r4
  581854:	e58db02c 	str	fp, [sp, #44]	@ 0x2c
  581858:	e1a0000b 	mov	r0, fp
  58185c:	ebf33e2a 	bl	25110c <std::string::swap(std::string&)@plt>
  581860:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  581864:	e1a01006 	mov	r1, r6
  581868:	e240000c 	sub	r0, r0, #12
  58186c:	ebf33949 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581870:	e59d42a4 	ldr	r4, [sp, #676]	@ 0x2a4
  581874:	e3a02000 	mov	r2, #0
  581878:	e3a0321f 	mov	r3, #-268435455	@ 0xf0000001
  58187c:	e1540002 	cmp	r4, r2
  581880:	e58d32b8 	str	r3, [sp, #696]	@ 0x2b8
  581884:	e58d22bc 	str	r2, [sp, #700]	@ 0x2bc
  581888:	1a00004d 	bne	5819c4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3b34>
  58188c:	e59d22a0 	ldr	r2, [sp, #672]	@ 0x2a0
  581890:	e1520003 	cmp	r2, r3
  581894:	158d32a0 	strne	r3, [sp, #672]	@ 0x2a0
  581898:	e1a00006 	mov	r0, r6
  58189c:	ebf40841 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  5818a0:	e3a0e21f 	mov	lr, #-268435455	@ 0xf0000001
  5818a4:	eaffff9e 	b	581724 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3894>
  5818a8:	e51f1898 	ldr	r1, [pc, #-2200]	@ 581018 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3188>
  5818ac:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  5818b0:	e08f1001 	add	r1, pc, r1
  5818b4:	ebf33e38 	bl	25119c <std::string::compare(char const*) const@plt>
  5818b8:	e3500000 	cmp	r0, #0
  5818bc:	1a00004b 	bne	5819f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3b60>
  5818c0:	e51f18ac 	ldr	r1, [pc, #-2220]	@ 58101c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x318c>
  5818c4:	e59d0278 	ldr	r0, [sp, #632]	@ 0x278
  5818c8:	e08f1001 	add	r1, pc, r1
  5818cc:	ebf341a4 	bl	251f64 <fopen@plt>
  5818d0:	e2505000 	subs	r5, r0, #0
  5818d4:	0affffcb 	beq	581808 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3978>
  5818d8:	e59d42fc 	ldr	r4, [sp, #764]	@ 0x2fc
  5818dc:	e3540000 	cmp	r4, #0
  5818e0:	0a000003 	beq	5818f4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a64>
  5818e4:	eb0005dd 	bl	583060 <unsigned int netflix::Application::rand<unsigned int>()@@Base>
  5818e8:	e59d12fc 	ldr	r1, [sp, #764]	@ 0x2fc
  5818ec:	ebf340d9 	bl	251c58 <__aeabi_uidivmod@plt>
  5818f0:	e1a04001 	mov	r4, r1
  5818f4:	e1a00005 	mov	r0, r5
  5818f8:	e1a01004 	mov	r1, r4
  5818fc:	e3a02000 	mov	r2, #0
  581900:	ebf3353a 	bl	24edf0 <fseek@plt>
  581904:	e3500000 	cmp	r0, #0
  581908:	1a000006 	bne	581928 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a98>
  58190c:	e3a01001 	mov	r1, #1
  581910:	e1a00006 	mov	r0, r6
  581914:	e1a02001 	mov	r2, r1
  581918:	e1a03005 	mov	r3, r5
  58191c:	ebf33f2f 	bl	2515e0 <fread@plt>
  581920:	e3500000 	cmp	r0, #0
  581924:	1a00015d 	bne	581ea0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4010>
  581928:	e3a04000 	mov	r4, #0
  58192c:	e1a00005 	mov	r0, r5
  581930:	ebf333ae 	bl	24e7f0 <fclose@plt>
  581934:	eaffff6e 	b	5816f4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3864>
  581938:	ebf334d5 	bl	24ec94 <__stack_chk_fail@plt>
  58193c:	e59d22ac 	ldr	r2, [sp, #684]	@ 0x2ac
  581940:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  581944:	e59d12b4 	ldr	r1, [sp, #692]	@ 0x2b4
  581948:	e3520000 	cmp	r2, #0
  58194c:	e5cd306b 	strb	r3, [sp, #107]	@ 0x6b
  581950:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  581954:	e58d02d4 	str	r0, [sp, #724]	@ 0x2d4
  581958:	e58d12d8 	str	r1, [sp, #728]	@ 0x2d8
  58195c:	0afffaf3 	beq	580530 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x26a0>
  581960:	f57ff05f 	dmb	sy
  581964:	e192ef9f 	ldrex	r14, [r2]
  581968:	e28ee001 	add	lr, lr, #1
  58196c:	e1820f9e 	strex	r0, lr, [r2]
  581970:	e3500000 	cmp	r0, #0
  581974:	1afffffa 	bne	581964 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ad4>
  581978:	f57ff05f 	dmb	sy
  58197c:	eafffee8 	b	581524 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3694>
  581980:	e59d22b8 	ldr	r2, [sp, #696]	@ 0x2b8
  581984:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  581988:	e59d12c0 	ldr	r1, [sp, #704]	@ 0x2c0
  58198c:	e3520000 	cmp	r2, #0
  581990:	e5cd306b 	strb	r3, [sp, #107]	@ 0x6b
  581994:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  581998:	e58d02d4 	str	r0, [sp, #724]	@ 0x2d4
  58199c:	e58d12d8 	str	r1, [sp, #728]	@ 0x2d8
  5819a0:	0afffb09 	beq	5805cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x273c>
  5819a4:	f57ff05f 	dmb	sy
  5819a8:	e192ef9f 	ldrex	r14, [r2]
  5819ac:	e28ee001 	add	lr, lr, #1
  5819b0:	e1820f9e 	strex	r0, lr, [r2]
  5819b4:	e3500000 	cmp	r0, #0
  5819b8:	1afffffa 	bne	5819a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3b18>
  5819bc:	f57ff05f 	dmb	sy
  5819c0:	eafffeb3 	b	581494 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3604>
  5819c4:	e5947004 	ldr	r7, [r4, #4]
  5819c8:	e5945000 	ldr	r5, [r4]
  5819cc:	e58d32a0 	str	r3, [sp, #672]	@ 0x2a0
  5819d0:	e1570005 	cmp	r7, r5
  5819d4:	0a00011b 	beq	581e48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fb8>
  5819d8:	e5950004 	ldr	r0, [r5, #4]
  5819dc:	e3500000 	cmp	r0, #0
  5819e0:	0a000000 	beq	5819e8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3b58>
  5819e4:	ebf3a3e2 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5819e8:	e2855008 	add	r5, r5, #8
  5819ec:	eafffff7 	b	5819d0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3b40>
  5819f0:	e51f19d8 	ldr	r1, [pc, #-2520]	@ 581020 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3190>
  5819f4:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  5819f8:	e08f1001 	add	r1, pc, r1
  5819fc:	ebf33de6 	bl	25119c <std::string::compare(char const*) const@plt>
  581a00:	e3500000 	cmp	r0, #0
  581a04:	1a000094 	bne	581c5c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3dcc>
  581a08:	e28d409c 	add	r4, sp, #156	@ 0x9c
  581a0c:	e51f19f0 	ldr	r1, [pc, #-2544]	@ 581024 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3194>
  581a10:	e1a02008 	mov	r2, r8
  581a14:	e59d5278 	ldr	r5, [sp, #632]	@ 0x278
  581a18:	e08f1001 	add	r1, pc, r1
  581a1c:	e1a00004 	mov	r0, r4
  581a20:	ebf34044 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581a24:	e28d3fde 	add	r3, sp, #888	@ 0x378
  581a28:	e3a0c000 	mov	ip, #0
  581a2c:	e1a00007 	mov	r0, r7
  581a30:	e58dc000 	str	ip, [sp]
  581a34:	e1a01004 	mov	r1, r4
  581a38:	e1a0200c 	mov	r2, ip
  581a3c:	e523c174 	str	ip, [r3, #-372]!	@ 0xfffffe8c
  581a40:	ebf4d2ca 	bl	2b6570 <unsigned int netflix::Variant::mapValueImpl<unsigned int>(std::string const&, bool*, unsigned int const&, std::pair<unsigned int, unsigned int> const*) const@@Base>
  581a44:	e1a01000 	mov	r1, r0
  581a48:	e1a00005 	mov	r0, r5
  581a4c:	ebf33a93 	bl	2504a0 <chmod@plt>
  581a50:	e59d309c 	ldr	r3, [sp, #156]	@ 0x9c
  581a54:	eaffff65 	b	5817f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3960>
  581a58:	e59d32b0 	ldr	r3, [sp, #688]	@ 0x2b0
  581a5c:	e3530000 	cmp	r3, #0
  581a60:	1afffddd 	bne	5811dc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x334c>
  581a64:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  581a68:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581a6c:	e59d12a0 	ldr	r1, [sp, #672]	@ 0x2a0
  581a70:	eb01519e 	bl	5d60f0 <netflix::DiskStore::Context::flags() const@@Base>
  581a74:	e30f3ce0 	movw	r3, #64736	@ 0xfce0
  581a78:	e28dbfde 	add	fp, sp, #888	@ 0x378
  581a7c:	e34f3fff 	movt	r3, #65535	@ 0xffff
  581a80:	e18320db 	ldrd	r2, [r3, fp]
  581a84:	e3a03000 	mov	r3, #0
  581a88:	e2022040 	and	r2, r2, #64	@ 0x40
  581a8c:	e192c003 	orrs	ip, r2, r3
  581a90:	0afffdd1 	beq	5811dc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x334c>
  581a94:	e28daf9e 	add	sl, sp, #632	@ 0x278
  581a98:	e28d7f6b 	add	r7, sp, #428	@ 0x1ac
  581a9c:	e51f1a7c 	ldr	r1, [pc, #-2684]	@ 581028 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3198>
  581aa0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581aa4:	e1a00007 	mov	r0, r7
  581aa8:	e1a0200a 	mov	r2, sl
  581aac:	e08f1001 	add	r1, pc, r1
  581ab0:	e58da020 	str	sl, [sp, #32]
  581ab4:	ebf3401f 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581ab8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581abc:	e1a00005 	mov	r0, r5
  581ac0:	ebf41856 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581ac4:	e1a01007 	mov	r1, r7
  581ac8:	ebf418f6 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  581acc:	e1a07000 	mov	r7, r0
  581ad0:	ebf3a3ea 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581ad4:	e59d01ac 	ldr	r0, [sp, #428]	@ 0x1ac
  581ad8:	e3a03006 	mov	r3, #6
  581adc:	e1a01004 	mov	r1, r4
  581ae0:	e5873000 	str	r3, [r7]
  581ae4:	e240000c 	sub	r0, r0, #12
  581ae8:	e3a03001 	mov	r3, #1
  581aec:	e5c73008 	strb	r3, [r7, #8]
  581af0:	ebf338a8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581af4:	eafffdc2 	b	581204 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3374>
  581af8:	e59d32b0 	ldr	r3, [sp, #688]	@ 0x2b0
  581afc:	e3530000 	cmp	r3, #0
  581b00:	1afffdf0 	bne	5812c8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3438>
  581b04:	e59d7034 	ldr	r7, [sp, #52]	@ 0x34
  581b08:	e3770001 	cmn	r7, #1
  581b0c:	059db2c0 	ldreq	fp, [sp, #704]	@ 0x2c0
  581b10:	058db034 	streq	fp, [sp, #52]	@ 0x34
  581b14:	e59d7038 	ldr	r7, [sp, #56]	@ 0x38
  581b18:	e3570000 	cmp	r7, #0
  581b1c:	1a00000b 	bne	581b50 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3cc0>
  581b20:	e59d3328 	ldr	r3, [sp, #808]	@ 0x328
  581b24:	e2433001 	sub	r3, r3, #1
  581b28:	e3530006 	cmp	r3, #6
  581b2c:	908ff103 	addls	pc, pc, r3, lsl #2
  581b30:	ea0000c2 	b	581e40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fb0>
  581b34:	ea0000be 	b	581e34 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fa4>
  581b38:	ea0000af 	b	581dfc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3f6c>
  581b3c:	ea00008d 	b	581d78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ee8>
  581b40:	ea0000be 	b	581e40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fb0>
  581b44:	ea0000bd 	b	581e40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fb0>
  581b48:	ea0000bc 	b	581e40 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fb0>
  581b4c:	ea00023d 	b	582448 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x45b8>
  581b50:	e28d7f6e 	add	r7, sp, #440	@ 0x1b8
  581b54:	e51f1b30 	ldr	r1, [pc, #-2864]	@ 58102c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x319c>
  581b58:	e59d2020 	ldr	r2, [sp, #32]
  581b5c:	e08f1001 	add	r1, pc, r1
  581b60:	e1a00007 	mov	r0, r7
  581b64:	ebf33ff3 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581b68:	e1a00005 	mov	r0, r5
  581b6c:	ebf4182b 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581b70:	e1a01007 	mov	r1, r7
  581b74:	ebf418cb 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  581b78:	e59db034 	ldr	fp, [sp, #52]	@ 0x34
  581b7c:	e1a07000 	mov	r7, r0
  581b80:	e59da038 	ldr	sl, [sp, #56]	@ 0x38
  581b84:	e59d22c0 	ldr	r2, [sp, #704]	@ 0x2c0
  581b88:	e06a300b 	rsb	r3, sl, fp
  581b8c:	e3730001 	cmn	r3, #1
  581b90:	0a000003 	beq	581ba4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3d14>
  581b94:	e59db038 	ldr	fp, [sp, #56]	@ 0x38
  581b98:	e083100b 	add	r1, r3, fp
  581b9c:	e1510002 	cmp	r1, r2
  581ba0:	9a000004 	bls	581bb8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3d28>
  581ba4:	e59da038 	ldr	sl, [sp, #56]	@ 0x38
  581ba8:	e15a0002 	cmp	sl, r2
  581bac:	959db038 	ldrls	fp, [sp, #56]	@ 0x38
  581bb0:	906b3002 	rsbls	r3, fp, r2
  581bb4:	8a000023 	bhi	581c48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3db8>
  581bb8:	e59d22b8 	ldr	r2, [sp, #696]	@ 0x2b8
  581bbc:	e3520000 	cmp	r2, #0
  581bc0:	0a000006 	beq	581be0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3d50>
  581bc4:	f57ff05f 	dmb	sy
  581bc8:	e192cf9f 	ldrex	r12, [r2]
  581bcc:	e28cc001 	add	ip, ip, #1
  581bd0:	e182ef9c 	strex	lr, ip, [r2]
  581bd4:	e35e0000 	cmp	lr, #0
  581bd8:	1afffffa 	bne	581bc8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3d38>
  581bdc:	f57ff05f 	dmb	sy
  581be0:	e59d12bc 	ldr	r1, [sp, #700]	@ 0x2bc
  581be4:	e59da038 	ldr	sl, [sp, #56]	@ 0x38
  581be8:	e58d32d8 	str	r3, [sp, #728]	@ 0x2d8
  581bec:	e58d22d0 	str	r2, [sp, #720]	@ 0x2d0
  581bf0:	e08a3001 	add	r3, sl, r1
  581bf4:	e58d32d4 	str	r3, [sp, #724]	@ 0x2d4
  581bf8:	e28dbd0d 	add	fp, sp, #832	@ 0x340
  581bfc:	e59d2018 	ldr	r2, [sp, #24]
  581c00:	e1a01004 	mov	r1, r4
  581c04:	e58db034 	str	fp, [sp, #52]	@ 0x34
  581c08:	e1a0000b 	mov	r0, fp
  581c0c:	ebffe571 	bl	57b1d8 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x350>
  581c10:	e1a00007 	mov	r0, r7
  581c14:	ebf3a399 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581c18:	e59d1034 	ldr	r1, [sp, #52]	@ 0x34
  581c1c:	e1a00007 	mov	r0, r7
  581c20:	ebf3f9f3 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  581c24:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  581c28:	ebf3a394 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581c2c:	e1a00004 	mov	r0, r4
  581c30:	ebffe53b 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  581c34:	e59d01b8 	ldr	r0, [sp, #440]	@ 0x1b8
  581c38:	e1a01004 	mov	r1, r4
  581c3c:	e240000c 	sub	r0, r0, #12
  581c40:	ebf33854 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581c44:	eafffd9f 	b	5812c8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3438>
  581c48:	e3a03000 	mov	r3, #0
  581c4c:	e58d32d0 	str	r3, [sp, #720]	@ 0x2d0
  581c50:	e58d32d4 	str	r3, [sp, #724]	@ 0x2d4
  581c54:	e58d32d8 	str	r3, [sp, #728]	@ 0x2d8
  581c58:	eaffffe6 	b	581bf8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3d68>
  581c5c:	e51f2c34 	ldr	r2, [pc, #-3124]	@ 581030 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x31a0>
  581c60:	e1a00009 	mov	r0, r9
  581c64:	e3a01002 	mov	r1, #2
  581c68:	e08f2002 	add	r2, pc, r2
  581c6c:	ebf96889 	bl	3dbe98 <netflix::NfObject::invalidArgumentError(int, char const*)@@Base>
  581c70:	eafff13e 	b	57e170 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x2e0>
  581c74:	e59d009c 	ldr	r0, [sp, #156]	@ 0x9c
  581c78:	e1a01006 	mov	r1, r6
  581c7c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581c80:	e240000c 	sub	r0, r0, #12
  581c84:	ebf33843 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581c88:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  581c8c:	e1a01006 	mov	r1, r6
  581c90:	e240000c 	sub	r0, r0, #12
  581c94:	ebf3383f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581c98:	e59d0278 	ldr	r0, [sp, #632]	@ 0x278
  581c9c:	e1a01006 	mov	r1, r6
  581ca0:	e240000c 	sub	r0, r0, #12
  581ca4:	ebf3383b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581ca8:	e1a00005 	mov	r0, r5
  581cac:	ebf3a373 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581cb0:	ebf338dd 	bl	25002c <__cxa_end_cleanup@plt>
  581cb4:	e59d01b4 	ldr	r0, [sp, #436]	@ 0x1b4
  581cb8:	e1a01004 	mov	r1, r4
  581cbc:	e240000c 	sub	r0, r0, #12
  581cc0:	ebf33834 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581cc4:	e1a00008 	mov	r0, r8
  581cc8:	ebf40736 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  581ccc:	e1a00006 	mov	r0, r6
  581cd0:	ebffe513 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  581cd4:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  581cd8:	e1a01004 	mov	r1, r4
  581cdc:	e240000c 	sub	r0, r0, #12
  581ce0:	ebf3382c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581ce4:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  581ce8:	e1a01004 	mov	r1, r4
  581cec:	e240000c 	sub	r0, r0, #12
  581cf0:	ebf33828 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581cf4:	e59d0280 	ldr	r0, [sp, #640]	@ 0x280
  581cf8:	e1a01004 	mov	r1, r4
  581cfc:	e240000c 	sub	r0, r0, #12
  581d00:	ebf33824 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581d04:	e59d02a4 	ldr	r0, [sp, #676]	@ 0x2a4
  581d08:	e3500000 	cmp	r0, #0
  581d0c:	0affffe5 	beq	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581d10:	ebf3a317 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  581d14:	eaffffe3 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581d18:	e59d01b0 	ldr	r0, [sp, #432]	@ 0x1b0
  581d1c:	e1a01004 	mov	r1, r4
  581d20:	e240000c 	sub	r0, r0, #12
  581d24:	ebf3381b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581d28:	eaffffe5 	b	581cc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e34>
  581d2c:	e59d0110 	ldr	r0, [sp, #272]	@ 0x110
  581d30:	e1a01006 	mov	r1, r6
  581d34:	e240000c 	sub	r0, r0, #12
  581d38:	ebf33816 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581d3c:	e59d010c 	ldr	r0, [sp, #268]	@ 0x10c
  581d40:	e1a01006 	mov	r1, r6
  581d44:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581d48:	e240000c 	sub	r0, r0, #12
  581d4c:	ebf33811 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581d50:	eaffffd4 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581d54:	eafffff8 	b	581d3c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3eac>
  581d58:	e59d0160 	ldr	r0, [sp, #352]	@ 0x160
  581d5c:	e1a01004 	mov	r1, r4
  581d60:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581d64:	e240000c 	sub	r0, r0, #12
  581d68:	ebf3380a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581d6c:	eaffffe4 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  581d70:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581d74:	eaffffe2 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  581d78:	e59d3330 	ldr	r3, [sp, #816]	@ 0x330
  581d7c:	e593301c 	ldr	r3, [r3, #28]
  581d80:	e59da034 	ldr	sl, [sp, #52]	@ 0x34
  581d84:	e153000a 	cmp	r3, sl
  581d88:	1affff70 	bne	581b50 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3cc0>
  581d8c:	e28d7f6f 	add	r7, sp, #444	@ 0x1bc
  581d90:	e51f1d64 	ldr	r1, [pc, #-3428]	@ 581034 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x31a4>
  581d94:	e59d2020 	ldr	r2, [sp, #32]
  581d98:	e08f1001 	add	r1, pc, r1
  581d9c:	e1a00007 	mov	r0, r7
  581da0:	ebf33f64 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  581da4:	e1a00005 	mov	r0, r5
  581da8:	ebf4179c 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  581dac:	e1a01007 	mov	r1, r7
  581db0:	ebf4183c 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  581db4:	e28dafd6 	add	sl, sp, #856	@ 0x358
  581db8:	e1a07000 	mov	r7, r0
  581dbc:	e59d2018 	ldr	r2, [sp, #24]
  581dc0:	e1a01006 	mov	r1, r6
  581dc4:	e1a0000a 	mov	r0, sl
  581dc8:	ebffe502 	bl	57b1d8 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x350>
  581dcc:	e1a00007 	mov	r0, r7
  581dd0:	ebf3a32a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581dd4:	e1a0100a 	mov	r1, sl
  581dd8:	e1a00007 	mov	r0, r7
  581ddc:	ebf3f984 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  581de0:	e1a0000a 	mov	r0, sl
  581de4:	ebf3a325 	bl	26aa80 <netflix::Variant::clear()@@Base>
  581de8:	e59d01bc 	ldr	r0, [sp, #444]	@ 0x1bc
  581dec:	e1a01004 	mov	r1, r4
  581df0:	e240000c 	sub	r0, r0, #12
  581df4:	ebf337e7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581df8:	eafffd32 	b	5812c8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3438>
  581dfc:	e59d2330 	ldr	r2, [sp, #816]	@ 0x330
  581e00:	e30a3aab 	movw	r3, #43691	@ 0xaaab
  581e04:	e34a3aaa 	movt	r3, #43690	@ 0xaaaa
  581e08:	e592100c 	ldr	r1, [r2, #12]
  581e0c:	e5922008 	ldr	r2, [r2, #8]
  581e10:	e0622001 	rsb	r2, r2, r1
  581e14:	e1a021c2 	asr	r2, r2, #3
  581e18:	e0030293 	mul	r3, r3, r2
  581e1c:	eaffffd7 	b	581d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ef0>
  581e20:	e59d01bc 	ldr	r0, [sp, #444]	@ 0x1bc
  581e24:	e1a01004 	mov	r1, r4
  581e28:	e240000c 	sub	r0, r0, #12
  581e2c:	ebf337d9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581e30:	eaffffa3 	b	581cc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e34>
  581e34:	e59d3330 	ldr	r3, [sp, #816]	@ 0x330
  581e38:	e513300c 	ldr	r3, [r3, #-12]
  581e3c:	eaffffcf 	b	581d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ef0>
  581e40:	e3a03000 	mov	r3, #0
  581e44:	eaffffcd 	b	581d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ef0>
  581e48:	e5940000 	ldr	r0, [r4]
  581e4c:	e3500000 	cmp	r0, #0
  581e50:	0a000000 	beq	581e58 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fc8>
  581e54:	ebf3390d 	bl	250290 <operator delete(void*)@plt>
  581e58:	e1a00004 	mov	r0, r4
  581e5c:	ebf3390b 	bl	250290 <operator delete(void*)@plt>
  581e60:	e3a03000 	mov	r3, #0
  581e64:	e58d32a4 	str	r3, [sp, #676]	@ 0x2a4
  581e68:	eafffe8a 	b	581898 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a08>
  581e6c:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  581e70:	e3500000 	cmp	r0, #0
  581e74:	0a000000 	beq	581e7c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3fec>
  581e78:	ebf3a2bd 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  581e7c:	e1a00008 	mov	r0, r8
  581e80:	ebf406c8 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  581e84:	e28d0e2a 	add	r0, sp, #672	@ 0x2a0
  581e88:	ebf406c6 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  581e8c:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  581e90:	e1a01006 	mov	r1, r6
  581e94:	e240000c 	sub	r0, r0, #12
  581e98:	ebf337be 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581e9c:	eaffff79 	b	581c88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3df8>
  581ea0:	e1a01004 	mov	r1, r4
  581ea4:	e1a00005 	mov	r0, r5
  581ea8:	e3a02000 	mov	r2, #0
  581eac:	ebf333cf 	bl	24edf0 <fseek@plt>
  581eb0:	e3500000 	cmp	r0, #0
  581eb4:	1afffe9b 	bne	581928 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a98>
  581eb8:	e5ddc2b8 	ldrb	ip, [sp, #696]	@ 0x2b8
  581ebc:	e3a01001 	mov	r1, #1
  581ec0:	e1a02001 	mov	r2, r1
  581ec4:	e1a00006 	mov	r0, r6
  581ec8:	e1a03005 	mov	r3, r5
  581ecc:	e08cc001 	add	ip, ip, r1
  581ed0:	e5cdc2b8 	strb	ip, [sp, #696]	@ 0x2b8
  581ed4:	ebf33092 	bl	24e124 <fwrite@plt>
  581ed8:	e2904000 	adds	r4, r0, #0
  581edc:	13a04001 	movne	r4, #1
  581ee0:	eafffe91 	b	58192c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3a9c>
  581ee4:	e1a00006 	mov	r0, r6
  581ee8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581eec:	ebffe48c 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  581ef0:	e59d0180 	ldr	r0, [sp, #384]	@ 0x180
  581ef4:	e1a01008 	mov	r1, r8
  581ef8:	e240000c 	sub	r0, r0, #12
  581efc:	ebf337a5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f00:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  581f04:	e1a01008 	mov	r1, r8
  581f08:	e240000c 	sub	r0, r0, #12
  581f0c:	ebf337a1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f10:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  581f14:	e1a01008 	mov	r1, r8
  581f18:	e240000c 	sub	r0, r0, #12
  581f1c:	ebf3379d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f20:	eaffff77 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  581f24:	e59d0098 	ldr	r0, [sp, #152]	@ 0x98
  581f28:	e1a01006 	mov	r1, r6
  581f2c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581f30:	e240000c 	sub	r0, r0, #12
  581f34:	ebf33797 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f38:	eaffff52 	b	581c88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3df8>
  581f3c:	e59d00a0 	ldr	r0, [sp, #160]	@ 0xa0
  581f40:	e1a01006 	mov	r1, r6
  581f44:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581f48:	e240000c 	sub	r0, r0, #12
  581f4c:	ebf33791 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f50:	eaffffcb 	b	581e84 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ff4>
  581f54:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581f58:	eaffffc9 	b	581e84 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ff4>
  581f5c:	e1a00005 	mov	r0, r5
  581f60:	ebfed351 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  581f64:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  581f68:	e28d1fa5 	add	r1, sp, #660	@ 0x294
  581f6c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  581f70:	e240000c 	sub	r0, r0, #12
  581f74:	ebf33787 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f78:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  581f7c:	e1a01004 	mov	r1, r4
  581f80:	e240000c 	sub	r0, r0, #12
  581f84:	ebf33783 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581f88:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  581f8c:	e3500000 	cmp	r0, #0
  581f90:	1affff5e 	bne	581d10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e80>
  581f94:	eaffff43 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581f98:	eafffff1 	b	581f64 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40d4>
  581f9c:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  581fa0:	e3500000 	cmp	r0, #0
  581fa4:	1affff59 	bne	581d10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e80>
  581fa8:	eaffff3e 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581fac:	e248000c 	sub	r0, r8, #12
  581fb0:	e1a01006 	mov	r1, r6
  581fb4:	ebf33777 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581fb8:	e59d0120 	ldr	r0, [sp, #288]	@ 0x120
  581fbc:	e1a01006 	mov	r1, r6
  581fc0:	e240000c 	sub	r0, r0, #12
  581fc4:	ebf33773 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581fc8:	e59d011c 	ldr	r0, [sp, #284]	@ 0x11c
  581fcc:	e1a01006 	mov	r1, r6
  581fd0:	e240000c 	sub	r0, r0, #12
  581fd4:	ebf3376f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581fd8:	e59d0118 	ldr	r0, [sp, #280]	@ 0x118
  581fdc:	e1a01006 	mov	r1, r6
  581fe0:	e240000c 	sub	r0, r0, #12
  581fe4:	ebf3376b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  581fe8:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  581fec:	e3500000 	cmp	r0, #0
  581ff0:	1affff46 	bne	581d10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e80>
  581ff4:	eaffff2b 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  581ff8:	eaffffee 	b	581fb8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4128>
  581ffc:	eafffff1 	b	581fc8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4138>
  582000:	eafffff4 	b	581fd8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4148>
  582004:	e59d0114 	ldr	r0, [sp, #276]	@ 0x114
  582008:	e1a01006 	mov	r1, r6
  58200c:	e240000c 	sub	r0, r0, #12
  582010:	ebf33760 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582014:	eafffff3 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  582018:	e59d007c 	ldr	r0, [sp, #124]	@ 0x7c
  58201c:	e1a01004 	mov	r1, r4
  582020:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582024:	e240000c 	sub	r0, r0, #12
  582028:	ebf3375a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58202c:	eaffffd5 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582030:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582034:	eaffffd3 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582038:	e59d0078 	ldr	r0, [sp, #120]	@ 0x78
  58203c:	e1a01004 	mov	r1, r4
  582040:	e240000c 	sub	r0, r0, #12
  582044:	ebf33753 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582048:	e59d0074 	ldr	r0, [sp, #116]	@ 0x74
  58204c:	e1a01004 	mov	r1, r4
  582050:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582054:	e240000c 	sub	r0, r0, #12
  582058:	ebf3374e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58205c:	eaffff11 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582060:	e248000c 	sub	r0, r8, #12
  582064:	e1a01004 	mov	r1, r4
  582068:	ebf3374a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58206c:	e59d00f8 	ldr	r0, [sp, #248]	@ 0xf8
  582070:	e1a01004 	mov	r1, r4
  582074:	e240000c 	sub	r0, r0, #12
  582078:	ebf33746 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58207c:	e59d00f4 	ldr	r0, [sp, #244]	@ 0xf4
  582080:	e1a01004 	mov	r1, r4
  582084:	e240000c 	sub	r0, r0, #12
  582088:	ebf33742 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58208c:	e59d00f0 	ldr	r0, [sp, #240]	@ 0xf0
  582090:	e1a01004 	mov	r1, r4
  582094:	e240000c 	sub	r0, r0, #12
  582098:	ebf3373e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58209c:	eaffffbe 	b	581f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x410c>
  5820a0:	eafffff1 	b	58206c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41dc>
  5820a4:	eafffff4 	b	58207c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41ec>
  5820a8:	eafffff7 	b	58208c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41fc>
  5820ac:	e59d00ec 	ldr	r0, [sp, #236]	@ 0xec
  5820b0:	e1a01004 	mov	r1, r4
  5820b4:	e240000c 	sub	r0, r0, #12
  5820b8:	ebf33736 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5820bc:	eaffffb6 	b	581f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x410c>
  5820c0:	e59d0194 	ldr	r0, [sp, #404]	@ 0x194
  5820c4:	e1a01004 	mov	r1, r4
  5820c8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5820cc:	e240000c 	sub	r0, r0, #12
  5820d0:	ebf33730 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5820d4:	eafffef3 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  5820d8:	e59d0200 	ldr	r0, [sp, #512]	@ 0x200
  5820dc:	e1a01004 	mov	r1, r4
  5820e0:	e240000c 	sub	r0, r0, #12
  5820e4:	ebf3372b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5820e8:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  5820ec:	ebf3a263 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5820f0:	e1a00006 	mov	r0, r6
  5820f4:	e59d12c0 	ldr	r1, [sp, #704]	@ 0x2c0
  5820f8:	eb000585 	bl	583714 <std::_Rb_tree<netflix::DiskStore::Key, std::pair<netflix::DiskStore::Key const, int>, std::_Select1st<std::pair<netflix::DiskStore::Key const, int> >, std::less<netflix::DiskStore::Key>, std::allocator<std::pair<netflix::DiskStore::Key const, int> > >::_M_erase(std::_Rb_tree_node<std::pair<netflix::DiskStore::Key const, int> >*)@@Base>
  5820fc:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  582100:	e59d1018 	ldr	r1, [sp, #24]
  582104:	e240000c 	sub	r0, r0, #12
  582108:	ebf33722 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58210c:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  582110:	e59d1018 	ldr	r1, [sp, #24]
  582114:	e240000c 	sub	r0, r0, #12
  582118:	ebf3371e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58211c:	eaffff99 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582120:	e59d01ec 	ldr	r0, [sp, #492]	@ 0x1ec
  582124:	e1a01004 	mov	r1, r4
  582128:	e240000c 	sub	r0, r0, #12
  58212c:	ebf33719 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582130:	e1a0000a 	mov	r0, sl
  582134:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582138:	ebf3a250 	bl	26aa80 <netflix::Variant::clear()@@Base>
  58213c:	eaffffe9 	b	5820e8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4258>
  582140:	eafffffa 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  582144:	e59d01f4 	ldr	r0, [sp, #500]	@ 0x1f4
  582148:	e1a01004 	mov	r1, r4
  58214c:	e240000c 	sub	r0, r0, #12
  582150:	ebf33710 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582154:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  582158:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  58215c:	e240000c 	sub	r0, r0, #12
  582160:	ebf3370c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582164:	eafffff1 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  582168:	eafffff9 	b	582154 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42c4>
  58216c:	e59d00b8 	ldr	r0, [sp, #184]	@ 0xb8
  582170:	e1a01004 	mov	r1, r4
  582174:	e240000c 	sub	r0, r0, #12
  582178:	ebf33706 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58217c:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  582180:	e1a01008 	mov	r1, r8
  582184:	e240000c 	sub	r0, r0, #12
  582188:	ebf33702 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58218c:	eafffec5 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582190:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  582194:	e1a01004 	mov	r1, r4
  582198:	e240000c 	sub	r0, r0, #12
  58219c:	ebf336fd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5821a0:	eafffff5 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  5821a4:	e59d01cc 	ldr	r0, [sp, #460]	@ 0x1cc
  5821a8:	e1a01004 	mov	r1, r4
  5821ac:	e240000c 	sub	r0, r0, #12
  5821b0:	ebf336f8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5821b4:	e1a0000a 	mov	r0, sl
  5821b8:	ebf3a230 	bl	26aa80 <netflix::Variant::clear()@@Base>
  5821bc:	eafffeb9 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  5821c0:	e59d01c8 	ldr	r0, [sp, #456]	@ 0x1c8
  5821c4:	e1a01004 	mov	r1, r4
  5821c8:	e240000c 	sub	r0, r0, #12
  5821cc:	ebf336f1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5821d0:	eafffff7 	b	5821b4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4324>
  5821d4:	eafffff6 	b	5821b4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4324>
  5821d8:	e5953004 	ldr	r3, [r5, #4]
  5821dc:	e2833001 	add	r3, r3, #1
  5821e0:	e5853004 	str	r3, [r5, #4]
  5821e4:	eafff5e8 	b	57f98c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x1afc>
  5821e8:	e59d00a4 	ldr	r0, [sp, #164]	@ 0xa4
  5821ec:	e1a01004 	mov	r1, r4
  5821f0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5821f4:	e240000c 	sub	r0, r0, #12
  5821f8:	ebf336e6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5821fc:	eafffea9 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582200:	e59d0088 	ldr	r0, [sp, #136]	@ 0x88
  582204:	e1a01004 	mov	r1, r4
  582208:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58220c:	e240000c 	sub	r0, r0, #12
  582210:	ebf336e0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582214:	eafffea3 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582218:	e59d00ac 	ldr	r0, [sp, #172]	@ 0xac
  58221c:	e1a01004 	mov	r1, r4
  582220:	e240000c 	sub	r0, r0, #12
  582224:	ebf336db 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582228:	eaffffd3 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  58222c:	e59d00a8 	ldr	r0, [sp, #168]	@ 0xa8
  582230:	e1a01004 	mov	r1, r4
  582234:	e240000c 	sub	r0, r0, #12
  582238:	ebf336d6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58223c:	eaffffce 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582240:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  582244:	e1a01008 	mov	r1, r8
  582248:	e240000c 	sub	r0, r0, #12
  58224c:	ebf336d1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582250:	eaffffc9 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582254:	eaffffc8 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582258:	e59d00d4 	ldr	r0, [sp, #212]	@ 0xd4
  58225c:	e1a01004 	mov	r1, r4
  582260:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582264:	e240000c 	sub	r0, r0, #12
  582268:	ebf336ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58226c:	eaffffc2 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582270:	e1a00006 	mov	r0, r6
  582274:	ebf405cb 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  582278:	e59d02ac 	ldr	r0, [sp, #684]	@ 0x2ac
  58227c:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  582280:	e240000c 	sub	r0, r0, #12
  582284:	ebf336c3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582288:	e1a00004 	mov	r0, r4
  58228c:	ebffe3a4 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  582290:	eaffff1a 	b	581f00 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4070>
  582294:	e1a00009 	mov	r0, r9
  582298:	e3a01001 	mov	r1, #1
  58229c:	eb0debee 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  5822a0:	e1a00007 	mov	r0, r7
  5822a4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5822a8:	ebfed27f 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5822ac:	eafffff1 	b	582278 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43e8>
  5822b0:	eafffffa 	b	5822a0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4410>
  5822b4:	e59d00e0 	ldr	r0, [sp, #224]	@ 0xe0
  5822b8:	e1a01008 	mov	r1, r8
  5822bc:	e240000c 	sub	r0, r0, #12
  5822c0:	ebf336b4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5822c4:	eaffffdd 	b	582240 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43b0>
  5822c8:	e59d00dc 	ldr	r0, [sp, #220]	@ 0xdc
  5822cc:	e1a01008 	mov	r1, r8
  5822d0:	e240000c 	sub	r0, r0, #12
  5822d4:	ebf336af 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5822d8:	eaffffd8 	b	582240 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43b0>
  5822dc:	e59d0174 	ldr	r0, [sp, #372]	@ 0x174
  5822e0:	e1a01004 	mov	r1, r4
  5822e4:	e240000c 	sub	r0, r0, #12
  5822e8:	ebf336aa 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5822ec:	e59d0170 	ldr	r0, [sp, #368]	@ 0x170
  5822f0:	e1a01004 	mov	r1, r4
  5822f4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5822f8:	e240000c 	sub	r0, r0, #12
  5822fc:	ebf336a5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582300:	eafffe68 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582304:	eafffff8 	b	5822ec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x445c>
  582308:	eafffe98 	b	581d70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ee0>
  58230c:	e248000c 	sub	r0, r8, #12
  582310:	e1a01006 	mov	r1, r6
  582314:	ebf3369f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582318:	e59d013c 	ldr	r0, [sp, #316]	@ 0x13c
  58231c:	e1a01006 	mov	r1, r6
  582320:	e240000c 	sub	r0, r0, #12
  582324:	ebf3369b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582328:	e59d0138 	ldr	r0, [sp, #312]	@ 0x138
  58232c:	e1a01006 	mov	r1, r6
  582330:	e240000c 	sub	r0, r0, #12
  582334:	ebf33697 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582338:	e59d0134 	ldr	r0, [sp, #308]	@ 0x134
  58233c:	e1a01006 	mov	r1, r6
  582340:	e240000c 	sub	r0, r0, #12
  582344:	ebf33693 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582348:	eaffff26 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  58234c:	eafffff1 	b	582318 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4488>
  582350:	eafffff4 	b	582328 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4498>
  582354:	eafffff7 	b	582338 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44a8>
  582358:	e59d0130 	ldr	r0, [sp, #304]	@ 0x130
  58235c:	e1a01006 	mov	r1, r6
  582360:	e240000c 	sub	r0, r0, #12
  582364:	ebf3368b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582368:	eaffff1e 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  58236c:	e1a00005 	mov	r0, r5
  582370:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582374:	ebfed24c 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  582378:	e1a00004 	mov	r0, r4
  58237c:	ebffe368 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  582380:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  582384:	e1a01006 	mov	r1, r6
  582388:	e240000c 	sub	r0, r0, #12
  58238c:	ebf33681 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582390:	e59d0288 	ldr	r0, [sp, #648]	@ 0x288
  582394:	e1a01006 	mov	r1, r6
  582398:	e240000c 	sub	r0, r0, #12
  58239c:	ebf3367d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5823a0:	eafffe57 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  5823a4:	e59d01a8 	ldr	r0, [sp, #424]	@ 0x1a8
  5823a8:	e1a01004 	mov	r1, r4
  5823ac:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5823b0:	e240000c 	sub	r0, r0, #12
  5823b4:	ebf33677 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5823b8:	eafffe49 	b	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  5823bc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5823c0:	eafffece 	b	581f00 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4070>
  5823c4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5823c8:	eaffffea 	b	582378 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44e8>
  5823cc:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  5823d0:	e3500000 	cmp	r0, #0
  5823d4:	0a000000 	beq	5823dc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x454c>
  5823d8:	ebf3a165 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5823dc:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5823e0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5823e4:	e3500000 	cmp	r0, #0
  5823e8:	0a000000 	beq	5823f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4560>
  5823ec:	ebf3a160 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5823f0:	e59d02a0 	ldr	r0, [sp, #672]	@ 0x2a0
  5823f4:	e1a01004 	mov	r1, r4
  5823f8:	e240000c 	sub	r0, r0, #12
  5823fc:	ebf33665 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582400:	e59d0294 	ldr	r0, [sp, #660]	@ 0x294
  582404:	e1a01004 	mov	r1, r4
  582408:	e240000c 	sub	r0, r0, #12
  58240c:	ebf33661 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582410:	eafffedc 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582414:	e1a00005 	mov	r0, r5
  582418:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58241c:	ebfed222 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  582420:	eafffff2 	b	5823f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4560>
  582424:	e1a00005 	mov	r0, r5
  582428:	e3a01001 	mov	r1, #1
  58242c:	eb0deb8a 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  582430:	e1a00009 	mov	r0, r9
  582434:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582438:	ebfed21b 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  58243c:	eafffe22 	b	581ccc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e3c>
  582440:	eafffffa 	b	582430 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x45a0>
  582444:	eafffe1e 	b	581cc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e34>
  582448:	e59d3338 	ldr	r3, [sp, #824]	@ 0x338
  58244c:	eafffe4b 	b	581d80 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ef0>
  582450:	e59d01b8 	ldr	r0, [sp, #440]	@ 0x1b8
  582454:	e1a01004 	mov	r1, r4
  582458:	e240000c 	sub	r0, r0, #12
  58245c:	ebf3364d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582460:	eafffe17 	b	581cc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e34>
  582464:	e1a00004 	mov	r0, r4
  582468:	ebffe32d 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  58246c:	eafffff7 	b	582450 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x45c0>
  582470:	e59d0124 	ldr	r0, [sp, #292]	@ 0x124
  582474:	e1a01006 	mov	r1, r6
  582478:	e240000c 	sub	r0, r0, #12
  58247c:	ebf33645 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582480:	eafffed8 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  582484:	e1a00008 	mov	r0, r8
  582488:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58248c:	ebffe324 	bl	57b124 <netflix::Variant& netflix::Variant::operator=<bool>(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool> > > const&)@@Base+0x29c>
  582490:	e59d0168 	ldr	r0, [sp, #360]	@ 0x168
  582494:	e1a01006 	mov	r1, r6
  582498:	e240000c 	sub	r0, r0, #12
  58249c:	ebf3363d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5824a0:	eaffffb6 	b	582380 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44f0>
  5824a4:	e1a00005 	mov	r0, r5
  5824a8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5824ac:	ebfed1fe 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5824b0:	eafffe0b 	b	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  5824b4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5824b8:	eaffff6e 	b	582278 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43e8>
  5824bc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5824c0:	eafffe01 	b	581ccc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e3c>
  5824c4:	e1a00006 	mov	r0, r6
  5824c8:	ebf40536 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  5824cc:	e59d02ac 	ldr	r0, [sp, #684]	@ 0x2ac
  5824d0:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  5824d4:	e240000c 	sub	r0, r0, #12
  5824d8:	ebf3362e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5824dc:	eaffffa5 	b	582378 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44e8>
  5824e0:	e1a00009 	mov	r0, r9
  5824e4:	e3a01001 	mov	r1, #1
  5824e8:	eb0deb5b 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  5824ec:	e1a00007 	mov	r0, r7
  5824f0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5824f4:	ebfed1ec 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5824f8:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  5824fc:	e28d1fa2 	add	r1, sp, #648	@ 0x288
  582500:	e240000c 	sub	r0, r0, #12
  582504:	ebf33623 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582508:	eaffffb8 	b	5823f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4560>
  58250c:	eafffff6 	b	5824ec <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x465c>
  582510:	e1a00007 	mov	r0, r7
  582514:	e3a01001 	mov	r1, #1
  582518:	eb0deb4f 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  58251c:	e1a00005 	mov	r0, r5
  582520:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582524:	ebfed1e0 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  582528:	eaffffe7 	b	5824cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x463c>
  58252c:	eafffffa 	b	58251c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x468c>
  582530:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582534:	eaffffe4 	b	5824cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x463c>
  582538:	e59d01ac 	ldr	r0, [sp, #428]	@ 0x1ac
  58253c:	e1a01004 	mov	r1, r4
  582540:	e240000c 	sub	r0, r0, #12
  582544:	ebf33613 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582548:	eafffddd 	b	581cc4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e34>
  58254c:	e59d015c 	ldr	r0, [sp, #348]	@ 0x15c
  582550:	e1a01004 	mov	r1, r4
  582554:	e240000c 	sub	r0, r0, #12
  582558:	ebf3360e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58255c:	e59d0158 	ldr	r0, [sp, #344]	@ 0x158
  582560:	e1a01004 	mov	r1, r4
  582564:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582568:	e240000c 	sub	r0, r0, #12
  58256c:	ebf33609 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582570:	eafffdcc 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582574:	e59d012c 	ldr	r0, [sp, #300]	@ 0x12c
  582578:	e1a01006 	mov	r1, r6
  58257c:	e240000c 	sub	r0, r0, #12
  582580:	ebf33604 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582584:	e59d0128 	ldr	r0, [sp, #296]	@ 0x128
  582588:	e1a01006 	mov	r1, r6
  58258c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582590:	e240000c 	sub	r0, r0, #12
  582594:	ebf335ff 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582598:	eafffdc2 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  58259c:	e59d0140 	ldr	r0, [sp, #320]	@ 0x140
  5825a0:	e1a01006 	mov	r1, r6
  5825a4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5825a8:	e240000c 	sub	r0, r0, #12
  5825ac:	ebf335f9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5825b0:	eafffe8c 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  5825b4:	eafffe8b 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  5825b8:	e59d01f8 	ldr	r0, [sp, #504]	@ 0x1f8
  5825bc:	e1a01004 	mov	r1, r4
  5825c0:	e240000c 	sub	r0, r0, #12
  5825c4:	ebf335f3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5825c8:	eafffed8 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  5825cc:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  5825d0:	e1a01008 	mov	r1, r8
  5825d4:	e240000c 	sub	r0, r0, #12
  5825d8:	ebf335ee 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5825dc:	eafffe81 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  5825e0:	e59d0150 	ldr	r0, [sp, #336]	@ 0x150
  5825e4:	e1a01008 	mov	r1, r8
  5825e8:	e240000c 	sub	r0, r0, #12
  5825ec:	ebf335e9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5825f0:	eafffff5 	b	5825cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x473c>
  5825f4:	e59d014c 	ldr	r0, [sp, #332]	@ 0x14c
  5825f8:	e1a01008 	mov	r1, r8
  5825fc:	e240000c 	sub	r0, r0, #12
  582600:	ebf335e4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582604:	eafffff0 	b	5825cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x473c>
  582608:	e59d01fc 	ldr	r0, [sp, #508]	@ 0x1fc
  58260c:	e1a01004 	mov	r1, r4
  582610:	e240000c 	sub	r0, r0, #12
  582614:	ebf335df 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582618:	eafffec4 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  58261c:	e59d01fc 	ldr	r0, [sp, #508]	@ 0x1fc
  582620:	e28d1068 	add	r1, sp, #104	@ 0x68
  582624:	e240000c 	sub	r0, r0, #12
  582628:	ebf335da 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58262c:	eafffebf 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  582630:	e59d0148 	ldr	r0, [sp, #328]	@ 0x148
  582634:	e1a01006 	mov	r1, r6
  582638:	e240000c 	sub	r0, r0, #12
  58263c:	ebf335d5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582640:	eafffe68 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  582644:	e59d0144 	ldr	r0, [sp, #324]	@ 0x144
  582648:	e1a01006 	mov	r1, r6
  58264c:	e240000c 	sub	r0, r0, #12
  582650:	ebf335d0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582654:	eafffe63 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  582658:	e59d008c 	ldr	r0, [sp, #140]	@ 0x8c
  58265c:	e1a01004 	mov	r1, r4
  582660:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582664:	e240000c 	sub	r0, r0, #12
  582668:	ebf335ca 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58266c:	eafffd89 	b	581c98 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e08>
  582670:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582674:	eafffd87 	b	581c98 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e08>
  582678:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58267c:	eafffd81 	b	581c88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3df8>
  582680:	e59d0154 	ldr	r0, [sp, #340]	@ 0x154
  582684:	e1a01008 	mov	r1, r8
  582688:	e240000c 	sub	r0, r0, #12
  58268c:	ebf335c1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582690:	eaffffcd 	b	5825cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x473c>
  582694:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582698:	eaffff54 	b	5823f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4560>
  58269c:	eafffe51 	b	581fe8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4158>
  5826a0:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  5826a4:	e3500000 	cmp	r0, #0
  5826a8:	0a000000 	beq	5826b0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4820>
  5826ac:	ebf3a0b0 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5826b0:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5826b4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5826b8:	e3500000 	cmp	r0, #0
  5826bc:	0afffd88 	beq	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  5826c0:	ebf3a0ab 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5826c4:	eafffd86 	b	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  5826c8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5826cc:	eaffff89 	b	5824f8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4668>
  5826d0:	e59d0164 	ldr	r0, [sp, #356]	@ 0x164
  5826d4:	e1a01004 	mov	r1, r4
  5826d8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5826dc:	e240000c 	sub	r0, r0, #12
  5826e0:	ebf335ac 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5826e4:	eaffff29 	b	582390 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4500>
  5826e8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5826ec:	eaffff27 	b	582390 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4500>
  5826f0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5826f4:	eaffff21 	b	582380 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44f0>
  5826f8:	e1a00004 	mov	r0, r4
  5826fc:	ebf404a9 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  582700:	eaffff7c 	b	5824f8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4668>
  582704:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  582708:	e3500000 	cmp	r0, #0
  58270c:	0a000000 	beq	582714 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4884>
  582710:	ebf3a097 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582714:	e59d0094 	ldr	r0, [sp, #148]	@ 0x94
  582718:	e1a01006 	mov	r1, r6
  58271c:	e240000c 	sub	r0, r0, #12
  582720:	ebf3359c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582724:	e1a00008 	mov	r0, r8
  582728:	ebf4049e 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  58272c:	eafffd55 	b	581c88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3df8>
  582730:	e59d01a4 	ldr	r0, [sp, #420]	@ 0x1a4
  582734:	e1a01004 	mov	r1, r4
  582738:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58273c:	e240000c 	sub	r0, r0, #12
  582740:	ebf33594 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582744:	eafffd66 	b	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  582748:	e59d0190 	ldr	r0, [sp, #400]	@ 0x190
  58274c:	e1a01004 	mov	r1, r4
  582750:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582754:	e240000c 	sub	r0, r0, #12
  582758:	ebf3358e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58275c:	eaffff27 	b	582400 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4570>
  582760:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582764:	eaffff25 	b	582400 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4570>
  582768:	e59d0188 	ldr	r0, [sp, #392]	@ 0x188
  58276c:	e1a01004 	mov	r1, r4
  582770:	e240000c 	sub	r0, r0, #12
  582774:	ebf33587 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582778:	e59d0184 	ldr	r0, [sp, #388]	@ 0x184
  58277c:	e1a01004 	mov	r1, r4
  582780:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582784:	e240000c 	sub	r0, r0, #12
  582788:	ebf33582 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58278c:	eafffd45 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582790:	eafffff8 	b	582778 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x48e8>
  582794:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582798:	eaffffe1 	b	582724 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4894>
  58279c:	e59d016c 	ldr	r0, [sp, #364]	@ 0x16c
  5827a0:	e59d1028 	ldr	r1, [sp, #40]	@ 0x28
  5827a4:	e240000c 	sub	r0, r0, #12
  5827a8:	ebf3357a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5827ac:	eaffff44 	b	5824c4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4634>
  5827b0:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  5827b4:	e3500000 	cmp	r0, #0
  5827b8:	0a000000 	beq	5827c0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4930>
  5827bc:	ebf3a06c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5827c0:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  5827c4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5827c8:	e3500000 	cmp	r0, #0
  5827cc:	0afffead 	beq	582288 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43f8>
  5827d0:	ebf3a067 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5827d4:	eafffeab 	b	582288 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43f8>
  5827d8:	e1a00005 	mov	r0, r5
  5827dc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5827e0:	ebfed131 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5827e4:	eafffea7 	b	582288 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43f8>
  5827e8:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  5827ec:	e28d1fae 	add	r1, sp, #696	@ 0x2b8
  5827f0:	e240000c 	sub	r0, r0, #12
  5827f4:	ebf33567 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5827f8:	ebf3360b 	bl	25002c <__cxa_end_cleanup@plt>
  5827fc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582800:	eafffea0 	b	582288 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43f8>
  582804:	e28d6e2a 	add	r6, sp, #672	@ 0x2a0
  582808:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58280c:	e58d6018 	str	r6, [sp, #24]
  582810:	eafffe39 	b	5820fc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x426c>
  582814:	e59d01e4 	ldr	r0, [sp, #484]	@ 0x1e4
  582818:	e1a01004 	mov	r1, r4
  58281c:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  582820:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582824:	e240000c 	sub	r0, r0, #12
  582828:	e58d7018 	str	r7, [sp, #24]
  58282c:	ebf33559 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582830:	eafffe35 	b	58210c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x427c>
  582834:	e28d7e2a 	add	r7, sp, #672	@ 0x2a0
  582838:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58283c:	e58d7018 	str	r7, [sp, #24]
  582840:	eafffe31 	b	58210c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x427c>
  582844:	e59d01e0 	ldr	r0, [sp, #480]	@ 0x1e0
  582848:	e1a01004 	mov	r1, r4
  58284c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582850:	e240000c 	sub	r0, r0, #12
  582854:	ebf3354f 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582858:	eafffdca 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  58285c:	e1a00007 	mov	r0, r7
  582860:	e3a01001 	mov	r1, #1
  582864:	eb0dea7c 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  582868:	e28d5fca 	add	r5, sp, #808	@ 0x328
  58286c:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  582870:	e28d1fa5 	add	r1, sp, #660	@ 0x294
  582874:	e240000c 	sub	r0, r0, #12
  582878:	ebf33546 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  58287c:	eafffdbd 	b	581f78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40e8>
  582880:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582884:	eafffff8 	b	58286c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x49dc>
  582888:	e1a00004 	mov	r0, r4
  58288c:	ebf40445 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  582890:	eafffff5 	b	58286c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x49dc>
  582894:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  582898:	e59d1018 	ldr	r1, [sp, #24]
  58289c:	e240000c 	sub	r0, r0, #12
  5828a0:	ebf3353c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5828a4:	eaffff57 	b	582608 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4778>
  5828a8:	e59d019c 	ldr	r0, [sp, #412]	@ 0x19c
  5828ac:	e1a01004 	mov	r1, r4
  5828b0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5828b4:	e240000c 	sub	r0, r0, #12
  5828b8:	ebf33536 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5828bc:	eafffd10 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  5828c0:	eafffd2a 	b	581d70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3ee0>
  5828c4:	e1a00004 	mov	r0, r4
  5828c8:	ebf40436 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  5828cc:	e59d02ac 	ldr	r0, [sp, #684]	@ 0x2ac
  5828d0:	e28d1e2a 	add	r1, sp, #672	@ 0x2a0
  5828d4:	e240000c 	sub	r0, r0, #12
  5828d8:	ebf3352e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5828dc:	eafffdae 	b	581f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x410c>
  5828e0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5828e4:	eafffff8 	b	5828cc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4a3c>
  5828e8:	e59d01f0 	ldr	r0, [sp, #496]	@ 0x1f0
  5828ec:	e1a01004 	mov	r1, r4
  5828f0:	e240000c 	sub	r0, r0, #12
  5828f4:	ebf33527 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5828f8:	eafffe0c 	b	582130 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42a0>
  5828fc:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582900:	e1a00006 	mov	r0, r6
  582904:	ebf40427 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  582908:	eafffcde 	b	581c88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3df8>
  58290c:	e59d017c 	ldr	r0, [sp, #380]	@ 0x17c
  582910:	e1a01004 	mov	r1, r4
  582914:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582918:	e240000c 	sub	r0, r0, #12
  58291c:	ebf3351d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582920:	eafffd7a 	b	581f10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4080>
  582924:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582928:	eafffd78 	b	581f10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4080>
  58292c:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  582930:	e3500000 	cmp	r0, #0
  582934:	0a000000 	beq	58293c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4aac>
  582938:	ebf3a00d 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  58293c:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  582940:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582944:	e3500000 	cmp	r0, #0
  582948:	0afffd8a 	beq	581f78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40e8>
  58294c:	ebf3a008 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582950:	eafffd88 	b	581f78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40e8>
  582954:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582958:	eafffd86 	b	581f78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40e8>
  58295c:	e59d018c 	ldr	r0, [sp, #396]	@ 0x18c
  582960:	e1a01004 	mov	r1, r4
  582964:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582968:	e240000c 	sub	r0, r0, #12
  58296c:	ebf33509 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582970:	eafffd84 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582974:	e59d0080 	ldr	r0, [sp, #128]	@ 0x80
  582978:	e1a01004 	mov	r1, r4
  58297c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582980:	e240000c 	sub	r0, r0, #12
  582984:	ebf33503 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582988:	eafffcc6 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  58298c:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  582990:	e3500000 	cmp	r0, #0
  582994:	0a000000 	beq	58299c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b0c>
  582998:	ebf39ff5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  58299c:	e59d027c 	ldr	r0, [sp, #636]	@ 0x27c
  5829a0:	e3500000 	cmp	r0, #0
  5829a4:	0a000000 	beq	5829ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b1c>
  5829a8:	ebf39ff1 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  5829ac:	e1a00006 	mov	r0, r6
  5829b0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  5829b4:	ebfed0bc 	bl	536cac <netflix::DiskStore::Key::~Key()@@Base>
  5829b8:	eafffd72 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  5829bc:	eafffffa 	b	5829ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b1c>
  5829c0:	eafffeef 	b	582584 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x46f4>
  5829c4:	e248000c 	sub	r0, r8, #12
  5829c8:	e1a01004 	mov	r1, r4
  5829cc:	ebf334f1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5829d0:	e59d0108 	ldr	r0, [sp, #264]	@ 0x108
  5829d4:	e1a01004 	mov	r1, r4
  5829d8:	e240000c 	sub	r0, r0, #12
  5829dc:	ebf334ed 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5829e0:	e59d0104 	ldr	r0, [sp, #260]	@ 0x104
  5829e4:	e1a01004 	mov	r1, r4
  5829e8:	e240000c 	sub	r0, r0, #12
  5829ec:	ebf334e9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  5829f0:	e59d0100 	ldr	r0, [sp, #256]	@ 0x100
  5829f4:	e1a01004 	mov	r1, r4
  5829f8:	e240000c 	sub	r0, r0, #12
  5829fc:	ebf334e5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a00:	eafffd65 	b	581f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x410c>
  582a04:	eafffff1 	b	5829d0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b40>
  582a08:	eafffff4 	b	5829e0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b50>
  582a0c:	eafffff7 	b	5829f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b60>
  582a10:	e59d00fc 	ldr	r0, [sp, #252]	@ 0xfc
  582a14:	e1a01004 	mov	r1, r4
  582a18:	e240000c 	sub	r0, r0, #12
  582a1c:	ebf334dd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a20:	eafffd5d 	b	581f9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x410c>
  582a24:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  582a28:	e1a01004 	mov	r1, r4
  582a2c:	e240000c 	sub	r0, r0, #12
  582a30:	ebf334d8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a34:	eaffffce 	b	582974 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4ae4>
  582a38:	eafffd7c 	b	582030 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41a0>
  582a3c:	e59d01d4 	ldr	r0, [sp, #468]	@ 0x1d4
  582a40:	e1a01004 	mov	r1, r4
  582a44:	e240000c 	sub	r0, r0, #12
  582a48:	ebf334d2 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a4c:	e59d01d0 	ldr	r0, [sp, #464]	@ 0x1d0
  582a50:	e1a01004 	mov	r1, r4
  582a54:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582a58:	e240000c 	sub	r0, r0, #12
  582a5c:	ebf334cd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a60:	eafffc90 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582a64:	eafffff8 	b	582a4c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4bbc>
  582a68:	e1a00004 	mov	r0, r4
  582a6c:	ebf403cd 	bl	2839a8 <netflix::NFErrorStack::~NFErrorStack()@@Base>
  582a70:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  582a74:	e28d1e2a 	add	r1, sp, #672	@ 0x2a0
  582a78:	e240000c 	sub	r0, r0, #12
  582a7c:	ebf334c5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582a80:	eafffd40 	b	581f88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x40f8>
  582a84:	eafffff7 	b	582a68 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4bd8>
  582a88:	e1a00005 	mov	r0, r5
  582a8c:	e3a01001 	mov	r1, #1
  582a90:	eb0de9f1 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  582a94:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582a98:	eafffff4 	b	582a70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4be0>
  582a9c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582aa0:	eafffff2 	b	582a70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4be0>
  582aa4:	e59d01c0 	ldr	r0, [sp, #448]	@ 0x1c0
  582aa8:	e1a01008 	mov	r1, r8
  582aac:	e28dafd6 	add	sl, sp, #856	@ 0x358
  582ab0:	e240000c 	sub	r0, r0, #12
  582ab4:	ebf334b7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582ab8:	e59d02d0 	ldr	r0, [sp, #720]	@ 0x2d0
  582abc:	e1a01008 	mov	r1, r8
  582ac0:	e240000c 	sub	r0, r0, #12
  582ac4:	ebf334b3 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582ac8:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
  582acc:	e3a01001 	mov	r1, #1
  582ad0:	eb0de9e1 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  582ad4:	e3550000 	cmp	r5, #0
  582ad8:	028d5fca 	addeq	r5, sp, #808	@ 0x328
  582adc:	0afffdb4 	beq	5821b4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4324>
  582ae0:	e1a00005 	mov	r0, r5
  582ae4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582ae8:	ebf39fa1 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582aec:	eafffdb0 	b	5821b4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4324>
  582af0:	e28dafd6 	add	sl, sp, #856	@ 0x358
  582af4:	eaffffef 	b	582ab8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c28>
  582af8:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  582afc:	e3500000 	cmp	r0, #0
  582b00:	0a000000 	beq	582b08 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c78>
  582b04:	ebf39f9a 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582b08:	e59d022c 	ldr	r0, [sp, #556]	@ 0x22c
  582b0c:	e3500000 	cmp	r0, #0
  582b10:	1affffa4 	bne	5829a8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b18>
  582b14:	eaffffa4 	b	5829ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b1c>
  582b18:	eafffd44 	b	582030 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41a0>
  582b1c:	e59d02d4 	ldr	r0, [sp, #724]	@ 0x2d4
  582b20:	e3500000 	cmp	r0, #0
  582b24:	0a000000 	beq	582b2c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c9c>
  582b28:	ebf39f91 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582b2c:	e59d0090 	ldr	r0, [sp, #144]	@ 0x90
  582b30:	e1a01004 	mov	r1, r4
  582b34:	e240000c 	sub	r0, r0, #12
  582b38:	ebf33496 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582b3c:	eaffff6f 	b	582900 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4a70>
  582b40:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582b44:	eafffc66 	b	581ce4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e54>
  582b48:	e59d01a0 	ldr	r0, [sp, #416]	@ 0x1a0
  582b4c:	e1a01004 	mov	r1, r4
  582b50:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582b54:	e240000c 	sub	r0, r0, #12
  582b58:	ebf3348e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582b5c:	eafffc64 	b	581cf4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e64>
  582b60:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582b64:	eafffc62 	b	581cf4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e64>
  582b68:	e59d01dc 	ldr	r0, [sp, #476]	@ 0x1dc
  582b6c:	e1a01004 	mov	r1, r4
  582b70:	e240000c 	sub	r0, r0, #12
  582b74:	ebf33487 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582b78:	e59d01d8 	ldr	r0, [sp, #472]	@ 0x1d8
  582b7c:	e1a01004 	mov	r1, r4
  582b80:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582b84:	e240000c 	sub	r0, r0, #12
  582b88:	ebf33482 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582b8c:	eafffc45 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582b90:	eafffff8 	b	582b78 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4ce8>
  582b94:	eaffff84 	b	5829ac <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4b1c>
  582b98:	eafffe6f 	b	58255c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x46cc>
  582b9c:	eafffd29 	b	582048 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41b8>
  582ba0:	e59d0178 	ldr	r0, [sp, #376]	@ 0x178
  582ba4:	e1a01004 	mov	r1, r4
  582ba8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582bac:	e240000c 	sub	r0, r0, #12
  582bb0:	ebf33478 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582bb4:	eafffc52 	b	581d04 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e74>
  582bb8:	e1a00005 	mov	r0, r5
  582bbc:	e3a01001 	mov	r1, #1
  582bc0:	eb0de9a5 	bl	8fd25c <netflix::Mutex::unlock(bool)@@Base>
  582bc4:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582bc8:	eaffffa8 	b	582a70 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4be0>
  582bcc:	eaffffb2 	b	582a9c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c0c>
  582bd0:	eafffd16 	b	582030 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41a0>
  582bd4:	e59d0198 	ldr	r0, [sp, #408]	@ 0x198
  582bd8:	e1a01004 	mov	r1, r4
  582bdc:	e240000c 	sub	r0, r0, #12
  582be0:	ebf3346c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582be4:	eafffd35 	b	5820c0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4230>
  582be8:	e28dbe2a 	add	fp, sp, #672	@ 0x2a0
  582bec:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582bf0:	e58db018 	str	fp, [sp, #24]
  582bf4:	eafffd3d 	b	5820f0 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4260>
  582bf8:	e59d01e8 	ldr	r0, [sp, #488]	@ 0x1e8
  582bfc:	e1a01004 	mov	r1, r4
  582c00:	e28dae2a 	add	sl, sp, #672	@ 0x2a0
  582c04:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582c08:	e240000c 	sub	r0, r0, #12
  582c0c:	e58da018 	str	sl, [sp, #24]
  582c10:	ebf33460 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582c14:	eafffd38 	b	5820fc <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x426c>
  582c18:	e59da020 	ldr	sl, [sp, #32]
  582c1c:	e1a00004 	mov	r0, r4
  582c20:	e28a3008 	add	r3, sl, #8
  582c24:	e5843000 	str	r3, [r4]
  582c28:	ebf33598 	bl	250290 <operator delete(void*)@plt>
  582c2c:	e59d0018 	ldr	r0, [sp, #24]
  582c30:	ebf435a7 	bl	2902d4 <std::vector<netflix::Variant, std::allocator<netflix::Variant> >::~vector()@@Base>
  582c34:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  582c38:	ebf3faa7 	bl	2816dc <std::vector<std::string, std::allocator<std::string> >::~vector()@@Base>
  582c3c:	eafffc19 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582c40:	e28dbe2a 	add	fp, sp, #672	@ 0x2a0
  582c44:	e58db018 	str	fp, [sp, #24]
  582c48:	eafffff7 	b	582c2c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4d9c>
  582c4c:	eafffff8 	b	582c34 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4da4>
  582c50:	eafffc14 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582c54:	eafffcf5 	b	582030 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x41a0>
  582c58:	e59d00b0 	ldr	r0, [sp, #176]	@ 0xb0
  582c5c:	e1a01004 	mov	r1, r4
  582c60:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582c64:	e240000c 	sub	r0, r0, #12
  582c68:	ebf3344a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582c6c:	eafffd42 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582c70:	e59d00c0 	ldr	r0, [sp, #192]	@ 0xc0
  582c74:	e1a01004 	mov	r1, r4
  582c78:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582c7c:	e240000c 	sub	r0, r0, #12
  582c80:	ebf33444 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582c84:	eafffd3c 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582c88:	e59d00bc 	ldr	r0, [sp, #188]	@ 0xbc
  582c8c:	e1a01004 	mov	r1, r4
  582c90:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582c94:	e240000c 	sub	r0, r0, #12
  582c98:	ebf3343e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582c9c:	eafffd36 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582ca0:	e59d00d0 	ldr	r0, [sp, #208]	@ 0xd0
  582ca4:	e1a01004 	mov	r1, r4
  582ca8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582cac:	e240000c 	sub	r0, r0, #12
  582cb0:	ebf33438 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582cb4:	eafffd30 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582cb8:	e59d00cc 	ldr	r0, [sp, #204]	@ 0xcc
  582cbc:	e1a01004 	mov	r1, r4
  582cc0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582cc4:	e240000c 	sub	r0, r0, #12
  582cc8:	ebf33432 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582ccc:	eafffd2a 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582cd0:	e59d00c8 	ldr	r0, [sp, #200]	@ 0xc8
  582cd4:	e1a01004 	mov	r1, r4
  582cd8:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582cdc:	e240000c 	sub	r0, r0, #12
  582ce0:	ebf3342c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582ce4:	eafffd24 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582ce8:	e59d00c4 	ldr	r0, [sp, #196]	@ 0xc4
  582cec:	e1a01004 	mov	r1, r4
  582cf0:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582cf4:	e240000c 	sub	r0, r0, #12
  582cf8:	ebf33426 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582cfc:	eafffd1e 	b	58217c <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x42ec>
  582d00:	e59d01c4 	ldr	r0, [sp, #452]	@ 0x1c4
  582d04:	e1a01008 	mov	r1, r8
  582d08:	e240000c 	sub	r0, r0, #12
  582d0c:	ebf33421 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582d10:	e59d02b8 	ldr	r0, [sp, #696]	@ 0x2b8
  582d14:	e1a01008 	mov	r1, r8
  582d18:	e240000c 	sub	r0, r0, #12
  582d1c:	ebf3341d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582d20:	eaffff64 	b	582ab8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c28>
  582d24:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582d28:	eafffcee 	b	5820e8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4258>
  582d2c:	e28dafd6 	add	sl, sp, #856	@ 0x358
  582d30:	eaffff67 	b	582ad4 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4c44>
  582d34:	eafffff5 	b	582d10 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4e80>
  582d38:	e59d00e8 	ldr	r0, [sp, #232]	@ 0xe8
  582d3c:	e1a01004 	mov	r1, r4
  582d40:	e240000c 	sub	r0, r0, #12
  582d44:	ebf33413 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582d48:	e59d00e4 	ldr	r0, [sp, #228]	@ 0xe4
  582d4c:	e1a01004 	mov	r1, r4
  582d50:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582d54:	e240000c 	sub	r0, r0, #12
  582d58:	ebf3340e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582d5c:	eafffbd1 	b	581ca8 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x3e18>
  582d60:	eafffff8 	b	582d48 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4eb8>
  582d64:	e59d00d8 	ldr	r0, [sp, #216]	@ 0xd8
  582d68:	e1a01008 	mov	r1, r8
  582d6c:	e240000c 	sub	r0, r0, #12
  582d70:	ebf33408 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582d74:	eafffd31 	b	582240 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x43b0>
  582d78:	e59d02bc 	ldr	r0, [sp, #700]	@ 0x2bc
  582d7c:	e3500000 	cmp	r0, #0
  582d80:	0a000000 	beq	582d88 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x4ef8>
  582d84:	ebf39efa 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582d88:	e59d02b0 	ldr	r0, [sp, #688]	@ 0x2b0
  582d8c:	e28d5fca 	add	r5, sp, #808	@ 0x328
  582d90:	e3500000 	cmp	r0, #0
  582d94:	0afffd77 	beq	582378 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44e8>
  582d98:	ebf39ef5 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  582d9c:	eafffd75 	b	582378 <netflix::StorageBridge::invoke(int, netflix::Variant const&)@@Base+0x44e8>

00582da0 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  582da0:	e59f3044 	ldr	r3, [pc, #68]	@ 582dec <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x4c>
  582da4:	e59f2044 	ldr	r2, [pc, #68]	@ 582df0 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x50>
  582da8:	e08f3003 	add	r3, pc, r3
  582dac:	e59fc040 	ldr	ip, [pc, #64]	@ 582df4 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  582db0:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  582db4:	e24dd00c 	sub	sp, sp, #12
  582db8:	e7932002 	ldr	r2, [r3, r2]
  582dbc:	e5921000 	ldr	r1, [r2]
  582dc0:	e58d1004 	str	r1, [sp, #4]
  582dc4:	e59d1004 	ldr	r1, [sp, #4]
  582dc8:	e5922000 	ldr	r2, [r2]
  582dcc:	e793300c 	ldr	r3, [r3, ip]
  582dd0:	e1510002 	cmp	r1, r2
  582dd4:	e2833008 	add	r3, r3, #8
  582dd8:	e5803000 	str	r3, [r0]
  582ddc:	1a000001 	bne	582de8 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x48>
  582de0:	e28dd00c 	add	sp, sp, #12
  582de4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  582de8:	ebf32fa9 	bl	24ec94 <__stack_chk_fail@plt>
  582dec:	004a4358 	subeq	r4, sl, r8, asr r3
  582df0:	00003440 	andeq	r3, r0, r0, asr #8
  582df4:	00003d84 	andeq	r3, r0, r4, lsl #27

00582df8 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base>:
  582df8:	e59f305c 	ldr	r3, [pc, #92]	@ 582e5c <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base+0x64>
  582dfc:	e59f205c 	ldr	r2, [pc, #92]	@ 582e60 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base+0x68>
  582e00:	e08f3003 	add	r3, pc, r3
  582e04:	e590000c 	ldr	r0, [r0, #12]
  582e08:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  582e0c:	e24dd00c 	sub	sp, sp, #12
  582e10:	e7933002 	ldr	r3, [r3, r2]
  582e14:	e3500000 	cmp	r0, #0
  582e18:	e5932000 	ldr	r2, [r3]
  582e1c:	e58d2004 	str	r2, [sp, #4]
  582e20:	e59d2004 	ldr	r2, [sp, #4]
  582e24:	e5933000 	ldr	r3, [r3]
  582e28:	0a000006 	beq	582e48 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base+0x50>
  582e2c:	e1520003 	cmp	r2, r3
  582e30:	1a000008 	bne	582e58 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base+0x60>
  582e34:	e5903000 	ldr	r3, [r0]
  582e38:	e5933004 	ldr	r3, [r3, #4]
  582e3c:	e28dd00c 	add	sp, sp, #12
  582e40:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
  582e44:	e12fff13 	bx	r3
  582e48:	e1520003 	cmp	r2, r3
  582e4c:	1a000001 	bne	582e58 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_dispose()@@Base+0x60>
  582e50:	e28dd00c 	add	sp, sp, #12
  582e54:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  582e58:	ebf32f8d 	bl	24ec94 <__stack_chk_fail@plt>
  582e5c:	004a4300 	subeq	r4, sl, r0, lsl #6
  582e60:	00003440 	andeq	r3, r0, r0, asr #8

00582e64 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)@@Base>:
  582e64:	e59f3038 	ldr	r3, [pc, #56]	@ 582ea4 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)@@Base+0x40>
  582e68:	e3a00000 	mov	r0, #0
  582e6c:	e59f2034 	ldr	r2, [pc, #52]	@ 582ea8 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)@@Base+0x44>
  582e70:	e08f3003 	add	r3, pc, r3
  582e74:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  582e78:	e24dd00c 	sub	sp, sp, #12
  582e7c:	e7933002 	ldr	r3, [r3, r2]
  582e80:	e5932000 	ldr	r2, [r3]
  582e84:	e58d2004 	str	r2, [sp, #4]
  582e88:	e59d2004 	ldr	r2, [sp, #4]
  582e8c:	e5933000 	ldr	r3, [r3]
  582e90:	e1520003 	cmp	r2, r3
  582e94:	1a000001 	bne	582ea0 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)@@Base+0x3c>
  582e98:	e28dd00c 	add	sp, sp, #12
  582e9c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  582ea0:	ebf32f7b 	bl	24ec94 <__stack_chk_fail@plt>
  582ea4:	004a4290 	umaaleq	r4, sl, r0, r2
  582ea8:	00003440 	andeq	r3, r0, r0, asr #8

00582eac <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base>:
  582eac:	e59f3050 	ldr	r3, [pc, #80]	@ 582f04 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x58>
  582eb0:	e59f1050 	ldr	r1, [pc, #80]	@ 582f08 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x5c>
  582eb4:	e08f3003 	add	r3, pc, r3
  582eb8:	e59f204c 	ldr	r2, [pc, #76]	@ 582f0c <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x60>
  582ebc:	e92d4030 	push	{r4, r5, lr}
  582ec0:	e24dd00c 	sub	sp, sp, #12
  582ec4:	e7934001 	ldr	r4, [r3, r1]
  582ec8:	e1a05000 	mov	r5, r0
  582ecc:	e5941000 	ldr	r1, [r4]
  582ed0:	e58d1004 	str	r1, [sp, #4]
  582ed4:	e7933002 	ldr	r3, [r3, r2]
  582ed8:	e2833008 	add	r3, r3, #8
  582edc:	e5803000 	str	r3, [r0]
  582ee0:	ebf334ea 	bl	250290 <operator delete(void*)@plt>
  582ee4:	e59d2004 	ldr	r2, [sp, #4]
  582ee8:	e5943000 	ldr	r3, [r4]
  582eec:	e1520003 	cmp	r2, r3
  582ef0:	1a000002 	bne	582f00 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr()@@Base+0x54>
  582ef4:	e1a00005 	mov	r0, r5
  582ef8:	e28dd00c 	add	sp, sp, #12
  582efc:	e8bd8030 	pop	{r4, r5, pc}
  582f00:	ebf32f63 	bl	24ec94 <__stack_chk_fail@plt>
  582f04:	004a424c 	subeq	r4, sl, ip, asr #4
  582f08:	00003440 	andeq	r3, r0, r0, asr #8
  582f0c:	00003d84 	andeq	r3, r0, r4, lsl #27

00582f10 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base>:
  582f10:	e59f3068 	ldr	r3, [pc, #104]	@ 582f80 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x70>
  582f14:	e250c000 	subs	ip, r0, #0
  582f18:	e59f2064 	ldr	r2, [pc, #100]	@ 582f84 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x74>
  582f1c:	e08f3003 	add	r3, pc, r3
  582f20:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
  582f24:	e24dd00c 	sub	sp, sp, #12
  582f28:	e7932002 	ldr	r2, [r3, r2]
  582f2c:	e5921000 	ldr	r1, [r2]
  582f30:	e58d1004 	str	r1, [sp, #4]
  582f34:	0a00000a 	beq	582f64 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x54>
  582f38:	e59fe048 	ldr	lr, [pc, #72]	@ 582f88 <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x78>
  582f3c:	e59d1004 	ldr	r1, [sp, #4]
  582f40:	e5922000 	ldr	r2, [r2]
  582f44:	e793300e 	ldr	r3, [r3, lr]
  582f48:	e1510002 	cmp	r1, r2
  582f4c:	e2833008 	add	r3, r3, #8
  582f50:	e58c3000 	str	r3, [ip]
  582f54:	1a000008 	bne	582f7c <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x6c>
  582f58:	e28dd00c 	add	sp, sp, #12
  582f5c:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
  582f60:	eaf334ca 	b	250290 <operator delete(void*)@plt>
  582f64:	e59d1004 	ldr	r1, [sp, #4]
  582f68:	e5923000 	ldr	r3, [r2]
  582f6c:	e1510003 	cmp	r1, r3
  582f70:	1a000001 	bne	582f7c <std::_Sp_counted_ptr<netflix::StorageBridge::DiskStoreOperation*, (__gnu_cxx::_Lock_policy)2>::_M_destroy()@@Base+0x6c>
  582f74:	e28dd00c 	add	sp, sp, #12
  582f78:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  582f7c:	ebf32f44 	bl	24ec94 <__stack_chk_fail@plt>
  582f80:	004a41e4 	subeq	r4, sl, r4, ror #3
  582f84:	00003440 	andeq	r3, r0, r0, asr #8
  582f88:	00003d84 	andeq	r3, r0, r4, lsl #27

00582f8c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base>:
  582f8c:	e59f3078 	ldr	r3, [pc, #120]	@ 58300c <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base+0x80>
  582f90:	e92d4030 	push	{r4, r5, lr}
  582f94:	e08f3003 	add	r3, pc, r3
  582f98:	e59fe070 	ldr	lr, [pc, #112]	@ 583010 <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base+0x84>
  582f9c:	e24dd00c 	sub	sp, sp, #12
  582fa0:	e59fc06c 	ldr	ip, [pc, #108]	@ 583014 <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base+0x88>
  582fa4:	e1a04000 	mov	r4, r0
  582fa8:	e793500e 	ldr	r5, [r3, lr]
  582fac:	e595e000 	ldr	lr, [r5]
  582fb0:	e58de004 	str	lr, [sp, #4]
  582fb4:	e793300c 	ldr	r3, [r3, ip]
  582fb8:	e283300c 	add	r3, r3, #12
  582fbc:	e5803000 	str	r3, [r0]
  582fc0:	e5803004 	str	r3, [r0, #4]
  582fc4:	eb014dec 	bl	5d677c <netflix::DiskStore::Key::set(std::string const&, std::string const&)@@Base>
  582fc8:	e59d2004 	ldr	r2, [sp, #4]
  582fcc:	e1a00004 	mov	r0, r4
  582fd0:	e5953000 	ldr	r3, [r5]
  582fd4:	e1520003 	cmp	r2, r3
  582fd8:	1a000001 	bne	582fe4 <netflix::DiskStore::Key::Key(std::string const&, std::string const&)@@Base+0x58>
  582fdc:	e28dd00c 	add	sp, sp, #12
  582fe0:	e8bd8030 	pop	{r4, r5, pc}
  582fe4:	ebf32f2a 	bl	24ec94 <__stack_chk_fail@plt>
  582fe8:	e5940004 	ldr	r0, [r4, #4]
  582fec:	e1a0100d 	mov	r1, sp
  582ff0:	e240000c 	sub	r0, r0, #12
  582ff4:	ebf33367 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  582ff8:	e5940000 	ldr	r0, [r4]
  582ffc:	e1a0100d 	mov	r1, sp
  583000:	e240000c 	sub	r0, r0, #12
  583004:	ebf33363 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  583008:	ebf33407 	bl	25002c <__cxa_end_cleanup@plt>
  58300c:	004a416c 	subeq	r4, sl, ip, ror #2
  583010:	00003440 	andeq	r3, r0, r0, asr #8
  583014:	00002278 	andeq	r2, r0, r8, ror r2
