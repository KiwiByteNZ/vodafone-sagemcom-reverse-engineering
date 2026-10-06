
../vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

003b1d10 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base>:
  3b1d10:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  3b1d14:	e24dd05c 	sub	sp, sp, #92	@ 0x5c
  3b1d18:	e59f8464 	ldr	r8, [pc, #1124]	@ 3b2184 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x474>
  3b1d1c:	e28db044 	add	fp, sp, #68	@ 0x44
  3b1d20:	e59f3460 	ldr	r3, [pc, #1120]	@ 3b2188 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x478>
  3b1d24:	e28da038 	add	sl, sp, #56	@ 0x38
  3b1d28:	e08f8008 	add	r8, pc, r8
  3b1d2c:	e58d1018 	str	r1, [sp, #24]
  3b1d30:	e59f1454 	ldr	r1, [pc, #1108]	@ 3b218c <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x47c>
  3b1d34:	e1a05002 	mov	r5, r2
  3b1d38:	e7983003 	ldr	r3, [r8, r3]
  3b1d3c:	e1a0200a 	mov	r2, sl
  3b1d40:	e1a09000 	mov	r9, r0
  3b1d44:	e08f1001 	add	r1, pc, r1
  3b1d48:	e1a0000b 	mov	r0, fp
  3b1d4c:	e58d3010 	str	r3, [sp, #16]
  3b1d50:	e5933000 	ldr	r3, [r3]
  3b1d54:	e58d3054 	str	r3, [sp, #84]	@ 0x54
  3b1d58:	ebfa7f76 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b1d5c:	e59f242c 	ldr	r2, [pc, #1068]	@ 3b2190 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x480>
  3b1d60:	e5953000 	ldr	r3, [r5]
  3b1d64:	e7984002 	ldr	r4, [r8, r2]
  3b1d68:	e3530003 	cmp	r3, #3
  3b1d6c:	e284300c 	add	r3, r4, #12
  3b1d70:	e58d3048 	str	r3, [sp, #72]	@ 0x48
  3b1d74:	0a00003a 	beq	3b1e64 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x154>
  3b1d78:	e28d5034 	add	r5, sp, #52	@ 0x34
  3b1d7c:	e28d7048 	add	r7, sp, #72	@ 0x48
  3b1d80:	e3a03000 	mov	r3, #0
  3b1d84:	e5cd3033 	strb	r3, [sp, #51]	@ 0x33
  3b1d88:	e1a00005 	mov	r0, r5
  3b1d8c:	e1a01007 	mov	r1, r7
  3b1d90:	ebfa7abb 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3b1d94:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b1d98:	e28d1040 	add	r1, sp, #64	@ 0x40
  3b1d9c:	e58d1014 	str	r1, [sp, #20]
  3b1da0:	e240000c 	sub	r0, r0, #12
  3b1da4:	ebfa77fb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1da8:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b1dac:	e1a01007 	mov	r1, r7
  3b1db0:	e240000c 	sub	r0, r0, #12
  3b1db4:	ebfa77f7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1db8:	e5dd3033 	ldrb	r3, [sp, #51]	@ 0x33
  3b1dbc:	e3530000 	cmp	r3, #0
  3b1dc0:	1a00001e 	bne	3b1e40 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x130>
  3b1dc4:	e59f13c8 	ldr	r1, [pc, #968]	@ 3b2194 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x484>
  3b1dc8:	e1a0200b 	mov	r2, fp
  3b1dcc:	e1a0000a 	mov	r0, sl
  3b1dd0:	e08f1001 	add	r1, pc, r1
  3b1dd4:	e28110a8 	add	r1, r1, #168	@ 0xa8
  3b1dd8:	ebfa7f56 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b1ddc:	e59f23b4 	ldr	r2, [pc, #948]	@ 3b2198 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x488>
  3b1de0:	e1a0100a 	mov	r1, sl
  3b1de4:	e59d0018 	ldr	r0, [sp, #24]
  3b1de8:	e08f2002 	add	r2, pc, r2
  3b1dec:	eb06a2b3 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3b1df0:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  3b1df4:	e1a01007 	mov	r1, r7
  3b1df8:	e240000c 	sub	r0, r0, #12
  3b1dfc:	ebfa77e5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1e00:	e3a02006 	mov	r2, #6
  3b1e04:	e3a03000 	mov	r3, #0
  3b1e08:	e5892000 	str	r2, [r9]
  3b1e0c:	e5c93008 	strb	r3, [r9, #8]
  3b1e10:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  3b1e14:	e1a01007 	mov	r1, r7
  3b1e18:	e240000c 	sub	r0, r0, #12
  3b1e1c:	ebfa77dd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1e20:	e59dc010 	ldr	ip, [sp, #16]
  3b1e24:	e59d2054 	ldr	r2, [sp, #84]	@ 0x54
  3b1e28:	e1a00009 	mov	r0, r9
  3b1e2c:	e59c3000 	ldr	r3, [ip]
  3b1e30:	e1520003 	cmp	r2, r3
  3b1e34:	1a0000ae 	bne	3b20f4 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x3e4>
  3b1e38:	e28dd05c 	add	sp, sp, #92	@ 0x5c
  3b1e3c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  3b1e40:	e1a00005 	mov	r0, r5
  3b1e44:	ebfb74af 	bl	28f108 <netflix::gibbon::GibbonConfiguration::removeInjectJS(std::string const&)@@Base>
  3b1e48:	e59d2018 	ldr	r2, [sp, #24]
  3b1e4c:	e5923150 	ldr	r3, [r2, #336]	@ 0x150
  3b1e50:	e3530002 	cmp	r3, #2
  3b1e54:	0a000014 	beq	3b1eac <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x19c>
  3b1e58:	e3a03000 	mov	r3, #0
  3b1e5c:	e5893000 	str	r3, [r9]
  3b1e60:	eaffffea 	b	3b1e10 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x100>
  3b1e64:	e5950008 	ldr	r0, [r5, #8]
  3b1e68:	e1a0100b 	mov	r1, fp
  3b1e6c:	e2800008 	add	r0, r0, #8
  3b1e70:	ebfb4c09 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b1e74:	e5953008 	ldr	r3, [r5, #8]
  3b1e78:	e283300c 	add	r3, r3, #12
  3b1e7c:	e1500003 	cmp	r0, r3
  3b1e80:	0affffbc 	beq	3b1d78 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x68>
  3b1e84:	e28d5034 	add	r5, sp, #52	@ 0x34
  3b1e88:	e28d7048 	add	r7, sp, #72	@ 0x48
  3b1e8c:	e3a02000 	mov	r2, #0
  3b1e90:	e2801018 	add	r1, r0, #24
  3b1e94:	e58d2000 	str	r2, [sp]
  3b1e98:	e1a00005 	mov	r0, r5
  3b1e9c:	e1a03007 	mov	r3, r7
  3b1ea0:	e28d2033 	add	r2, sp, #51	@ 0x33
  3b1ea4:	ebfb7a6d 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3b1ea8:	eaffffb9 	b	3b1d94 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x84>
  3b1eac:	e5923158 	ldr	r3, [r2, #344]	@ 0x158
  3b1eb0:	e5935008 	ldr	r5, [r3, #8]
  3b1eb4:	e593300c 	ldr	r3, [r3, #12]
  3b1eb8:	e1550003 	cmp	r5, r3
  3b1ebc:	e58d300c 	str	r3, [sp, #12]
  3b1ec0:	0affffe4 	beq	3b1e58 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x148>
  3b1ec4:	e59f32d0 	ldr	r3, [pc, #720]	@ 3b219c <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x48c>
  3b1ec8:	e284400c 	add	r4, r4, #12
  3b1ecc:	e28dc03c 	add	ip, sp, #60	@ 0x3c
  3b1ed0:	e58d4024 	str	r4, [sp, #36]	@ 0x24
  3b1ed4:	e08f3003 	add	r3, pc, r3
  3b1ed8:	e3a06000 	mov	r6, #0
  3b1edc:	e58d3020 	str	r3, [sp, #32]
  3b1ee0:	e2854018 	add	r4, r5, #24
  3b1ee4:	e58dc01c 	str	ip, [sp, #28]
  3b1ee8:	ea000005 	b	3b1f04 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x1f4>
  3b1eec:	e59d200c 	ldr	r2, [sp, #12]
  3b1ef0:	e2855018 	add	r5, r5, #24
  3b1ef4:	e2866001 	add	r6, r6, #1
  3b1ef8:	e2844018 	add	r4, r4, #24
  3b1efc:	e1520005 	cmp	r2, r5
  3b1f00:	0affffd4 	beq	3b1e58 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x148>
  3b1f04:	e5143018 	ldr	r3, [r4, #-24]	@ 0xffffffe8
  3b1f08:	e3530003 	cmp	r3, #3
  3b1f0c:	1afffff6 	bne	3b1eec <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x1dc>
  3b1f10:	e28d003c 	add	r0, sp, #60	@ 0x3c
  3b1f14:	e59d1020 	ldr	r1, [sp, #32]
  3b1f18:	e1a0200a 	mov	r2, sl
  3b1f1c:	ebfa7f05 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b1f20:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
  3b1f24:	e58d1048 	str	r1, [sp, #72]	@ 0x48
  3b1f28:	e5143018 	ldr	r3, [r4, #-24]	@ 0xffffffe8
  3b1f2c:	e3530003 	cmp	r3, #3
  3b1f30:	0a000057 	beq	3b2094 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x384>
  3b1f34:	e28d0040 	add	r0, sp, #64	@ 0x40
  3b1f38:	e1a01007 	mov	r1, r7
  3b1f3c:	ebfa7a50 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3b1f40:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b1f44:	e1a0100b 	mov	r1, fp
  3b1f48:	e240000c 	sub	r0, r0, #12
  3b1f4c:	ebfa7791 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1f50:	e59d3040 	ldr	r3, [sp, #64]	@ 0x40
  3b1f54:	e59d1034 	ldr	r1, [sp, #52]	@ 0x34
  3b1f58:	e513200c 	ldr	r2, [r3, #-12]
  3b1f5c:	e511000c 	ldr	r0, [r1, #-12]
  3b1f60:	e1520000 	cmp	r2, r0
  3b1f64:	0a000007 	beq	3b1f88 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x278>
  3b1f68:	e243000c 	sub	r0, r3, #12
  3b1f6c:	e1a01007 	mov	r1, r7
  3b1f70:	ebfa7788 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1f74:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  3b1f78:	e1a01007 	mov	r1, r7
  3b1f7c:	e240000c 	sub	r0, r0, #12
  3b1f80:	ebfa7784 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1f84:	eaffffd8 	b	3b1eec <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x1dc>
  3b1f88:	e1a00003 	mov	r0, r3
  3b1f8c:	e58d3008 	str	r3, [sp, #8]
  3b1f90:	ebfa7c09 	bl	250fbc <memcmp@plt>
  3b1f94:	e59d3008 	ldr	r3, [sp, #8]
  3b1f98:	e1a01007 	mov	r1, r7
  3b1f9c:	e1a02000 	mov	r2, r0
  3b1fa0:	e243000c 	sub	r0, r3, #12
  3b1fa4:	e58d2008 	str	r2, [sp, #8]
  3b1fa8:	ebfa777a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1fac:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  3b1fb0:	e1a01007 	mov	r1, r7
  3b1fb4:	e240000c 	sub	r0, r0, #12
  3b1fb8:	ebfa7776 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b1fbc:	e59d2008 	ldr	r2, [sp, #8]
  3b1fc0:	e3520000 	cmp	r2, #0
  3b1fc4:	1affffc8 	bne	3b1eec <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x1dc>
  3b1fc8:	e59dc018 	ldr	ip, [sp, #24]
  3b1fcc:	e28c4e15 	add	r4, ip, #336	@ 0x150
  3b1fd0:	e59c3150 	ldr	r3, [ip, #336]	@ 0x150
  3b1fd4:	e3530002 	cmp	r3, #2
  3b1fd8:	0a00003c 	beq	3b20d0 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x3c0>
  3b1fdc:	e59f31bc 	ldr	r3, [pc, #444]	@ 3b21a0 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x490>
  3b1fe0:	e1a0000b 	mov	r0, fp
  3b1fe4:	e1a01004 	mov	r1, r4
  3b1fe8:	e3a02000 	mov	r2, #0
  3b1fec:	e7983003 	ldr	r3, [r8, r3]
  3b1ff0:	e5938000 	ldr	r8, [r3]
  3b1ff4:	eb14bd3e 	bl	8e14f4 <netflix::Variant::toJSON(bool) const@@Base>
  3b1ff8:	e59d6044 	ldr	r6, [sp, #68]	@ 0x44
  3b1ffc:	e3a04000 	mov	r4, #0
  3b2000:	e58d404c 	str	r4, [sp, #76]	@ 0x4c
  3b2004:	e58d4050 	str	r4, [sp, #80]	@ 0x50
  3b2008:	e516500c 	ldr	r5, [r6, #-12]
  3b200c:	e58d4048 	str	r4, [sp, #72]	@ 0x48
  3b2010:	e1550004 	cmp	r5, r4
  3b2014:	0a000012 	beq	3b2064 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x354>
  3b2018:	e1a01005 	mov	r1, r5
  3b201c:	e1a00007 	mov	r0, r7
  3b2020:	ebfb375e 	bl	27fda0 <netflix::DataBuffer::reserveInternal(unsigned int)@@Base>
  3b2024:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b2028:	e59d3050 	ldr	r3, [sp, #80]	@ 0x50
  3b202c:	e1a02005 	mov	r2, r5
  3b2030:	e1a01006 	mov	r1, r6
  3b2034:	e5900014 	ldr	r0, [r0, #20]
  3b2038:	e0800003 	add	r0, r0, r3
  3b203c:	ebfa7626 	bl	24f8dc <memcpy@plt>
  3b2040:	e59d3048 	ldr	r3, [sp, #72]	@ 0x48
  3b2044:	e59d2050 	ldr	r2, [sp, #80]	@ 0x50
  3b2048:	e5931014 	ldr	r1, [r3, #20]
  3b204c:	e0852002 	add	r2, r5, r2
  3b2050:	e58d2050 	str	r2, [sp, #80]	@ 0x50
  3b2054:	e5930004 	ldr	r0, [r3, #4]
  3b2058:	e0805005 	add	r5, r0, r5
  3b205c:	e5835004 	str	r5, [r3, #4]
  3b2060:	e7c14002 	strb	r4, [r1, r2]
  3b2064:	e1a00008 	mov	r0, r8
  3b2068:	e3a01011 	mov	r1, #17
  3b206c:	e1a02007 	mov	r2, r7
  3b2070:	e3a03000 	mov	r3, #0
  3b2074:	eb05cee5 	bl	525c10 <netflix::NrdApplication::writeSystemConfiguration(netflix::NrdApplication::ConfigurationKey, netflix::DataBuffer const&, netflix::NrdApplication::WriteMode)@@Base>
  3b2078:	e1a00007 	mov	r0, r7
  3b207c:	ebffd8e4 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b2080:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b2084:	e1a01007 	mov	r1, r7
  3b2088:	e240000c 	sub	r0, r0, #12
  3b208c:	ebfa7741 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b2090:	eaffff70 	b	3b1e58 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x148>
  3b2094:	e5950008 	ldr	r0, [r5, #8]
  3b2098:	e28d103c 	add	r1, sp, #60	@ 0x3c
  3b209c:	e2800008 	add	r0, r0, #8
  3b20a0:	ebfb4b7d 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b20a4:	e5953008 	ldr	r3, [r5, #8]
  3b20a8:	e283300c 	add	r3, r3, #12
  3b20ac:	e1500003 	cmp	r0, r3
  3b20b0:	0affff9f 	beq	3b1f34 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x224>
  3b20b4:	e3a02000 	mov	r2, #0
  3b20b8:	e2801018 	add	r1, r0, #24
  3b20bc:	e58d2000 	str	r2, [sp]
  3b20c0:	e28d0040 	add	r0, sp, #64	@ 0x40
  3b20c4:	e1a03007 	mov	r3, r7
  3b20c8:	ebfb79e4 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3b20cc:	eaffff9b 	b	3b1f40 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x230>
  3b20d0:	e1a00004 	mov	r0, r4
  3b20d4:	ebfb7d00 	bl	2914dc <netflix::Variant::detach()@@Base>
  3b20d8:	e59d1018 	ldr	r1, [sp, #24]
  3b20dc:	e0866086 	add	r6, r6, r6, lsl #1
  3b20e0:	e5910158 	ldr	r0, [r1, #344]	@ 0x158
  3b20e4:	e5b01008 	ldr	r1, [r0, #8]!
  3b20e8:	e0811186 	add	r1, r1, r6, lsl #3
  3b20ec:	ebfb7899 	bl	290358 <std::vector<netflix::Variant, std::allocator<netflix::Variant> >::erase(__gnu_cxx::__normal_iterator<netflix::Variant*, std::vector<netflix::Variant, std::allocator<netflix::Variant> > >)@@Base>
  3b20f0:	eaffffb9 	b	3b1fdc <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x2cc>
  3b20f4:	ebfa72e6 	bl	24ec94 <__stack_chk_fail@plt>
  3b20f8:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  3b20fc:	e28d102c 	add	r1, sp, #44	@ 0x2c
  3b2100:	e240000c 	sub	r0, r0, #12
  3b2104:	ebfa7723 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b2108:	ebfa77c7 	bl	25002c <__cxa_end_cleanup@plt>
  3b210c:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b2110:	e28d1030 	add	r1, sp, #48	@ 0x30
  3b2114:	e240000c 	sub	r0, r0, #12
  3b2118:	ebfa771e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b211c:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  3b2120:	e1a0100b 	mov	r1, fp
  3b2124:	e240000c 	sub	r0, r0, #12
  3b2128:	ebfa771a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b212c:	eafffff1 	b	3b20f8 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x3e8>
  3b2130:	e1a00007 	mov	r0, r7
  3b2134:	ebffd8b6 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b2138:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b213c:	e1a01007 	mov	r1, r7
  3b2140:	e240000c 	sub	r0, r0, #12
  3b2144:	ebfa7713 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b2148:	eaffffea 	b	3b20f8 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x3e8>
  3b214c:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b2150:	e28d1040 	add	r1, sp, #64	@ 0x40
  3b2154:	e240000c 	sub	r0, r0, #12
  3b2158:	ebfa770e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b215c:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b2160:	e28d103c 	add	r1, sp, #60	@ 0x3c
  3b2164:	e240000c 	sub	r0, r0, #12
  3b2168:	ebfa770a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b216c:	ebfa77ae 	bl	25002c <__cxa_end_cleanup@plt>
  3b2170:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  3b2174:	e1a01007 	mov	r1, r7
  3b2178:	e240000c 	sub	r0, r0, #12
  3b217c:	ebfa7705 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b2180:	eaffffdc 	b	3b20f8 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x3e8>
  3b2184:	006753d8 	ldrdeq	r5, [r7], #-56	@ 0xffffffc8	@ <UNPREDICTABLE>
  3b2188:	00003440 	andeq	r3, r0, r0, asr #8
  3b218c:	005b0e38 	subseq	r0, fp, r8, lsr lr
  3b2190:	00002278 	andeq	r2, r0, r8, ror r2
  3b2194:	0059df20 	subseq	sp, r9, r0, lsr #30
  3b2198:	005b0d94 			@ <UNDEFINED> instruction: 0x005b0d94
  3b219c:	005b0ca8 	subseq	r0, fp, r8, lsr #25
  3b21a0:	000022a0 	andeq	r2, r0, r0, lsr #5
  3b21a4:	e59f357c 	ldr	r3, [pc, #1404]	@ 3b2728 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0xa18>
  3b21a8:	e3110001 	tst	r1, #1
  3b21ac:	e59f2578 	ldr	r2, [pc, #1400]	@ 3b272c <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0xa1c>
  3b21b0:	e08f3003 	add	r3, pc, r3
  3b21b4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  3b21b8:	e24dd098 	sub	sp, sp, #152	@ 0x98
  3b21bc:	e7937002 	ldr	r7, [r3, r2]
  3b21c0:	e1a06001 	mov	r6, r1
  3b21c4:	e1a04000 	mov	r4, r0
  3b21c8:	e3a01000 	mov	r1, #0
  3b21cc:	e5973000 	ldr	r3, [r7]
  3b21d0:	e5801000 	str	r1, [r0]
  3b21d4:	e58d3094 	str	r3, [sp, #148]	@ 0x94
  3b21d8:	1a00005a 	bne	3b2348 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x638>
  3b21dc:	e3160002 	tst	r6, #2
  3b21e0:	1a000045 	bne	3b22fc <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x5ec>
  3b21e4:	e3160004 	tst	r6, #4
  3b21e8:	1a000030 	bne	3b22b0 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x5a0>
  3b21ec:	e3160008 	tst	r6, #8
  3b21f0:	1a00001b 	bne	3b2264 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x554>
  3b21f4:	e3160010 	tst	r6, #16
  3b21f8:	1a000006 	bne	3b2218 <netflix::gibbon::GibbonBridge::removeInjectJS(netflix::Variant const&)@@Base+0x508>
  3b21fc:	e59d2094 	ldr	r2, [sp, #148]	@ 0x94
