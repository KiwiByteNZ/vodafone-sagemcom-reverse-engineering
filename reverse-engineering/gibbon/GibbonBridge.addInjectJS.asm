
../vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

003b8bcc <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base>:
  3b8bcc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  3b8bd0:	e24dd0b4 	sub	sp, sp, #180	@ 0xb4
  3b8bd4:	e59f77b8 	ldr	r7, [pc, #1976]	@ 3b9394 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7c8>
  3b8bd8:	e28d4054 	add	r4, sp, #84	@ 0x54
  3b8bdc:	e59f37b4 	ldr	r3, [pc, #1972]	@ 3b9398 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7cc>
  3b8be0:	e28da04c 	add	sl, sp, #76	@ 0x4c
  3b8be4:	e08f7007 	add	r7, pc, r7
  3b8be8:	e58d101c 	str	r1, [sp, #28]
  3b8bec:	e59f17a8 	ldr	r1, [pc, #1960]	@ 3b939c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7d0>
  3b8bf0:	e1a08002 	mov	r8, r2
  3b8bf4:	e7973003 	ldr	r3, [r7, r3]
  3b8bf8:	e1a09000 	mov	r9, r0
  3b8bfc:	e1a0200a 	mov	r2, sl
  3b8c00:	e1a00004 	mov	r0, r4
  3b8c04:	e08f1001 	add	r1, pc, r1
  3b8c08:	e3a06000 	mov	r6, #0
  3b8c0c:	e58d3014 	str	r3, [sp, #20]
  3b8c10:	e5933000 	ldr	r3, [r3]
  3b8c14:	e58d30ac 	str	r3, [sp, #172]	@ 0xac
  3b8c18:	ebfa63c6 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8c1c:	e5983000 	ldr	r3, [r8]
  3b8c20:	e58d6090 	str	r6, [sp, #144]	@ 0x90
  3b8c24:	e3530003 	cmp	r3, #3
  3b8c28:	0a00002b 	beq	3b8cdc <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x110>
  3b8c2c:	e28d50b0 	add	r5, sp, #176	@ 0xb0
  3b8c30:	e28d6090 	add	r6, sp, #144	@ 0x90
  3b8c34:	e3a03000 	mov	r3, #0
  3b8c38:	e1a01006 	mov	r1, r6
  3b8c3c:	e5253050 	str	r3, [r5, #-80]!	@ 0xffffffb0
  3b8c40:	e1a00005 	mov	r0, r5
  3b8c44:	ebfac69f 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  3b8c48:	e1a00006 	mov	r0, r6
  3b8c4c:	e28d6050 	add	r6, sp, #80	@ 0x50
  3b8c50:	ebfac78a 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b8c54:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  3b8c58:	e1a01006 	mov	r1, r6
  3b8c5c:	e28d702c 	add	r7, sp, #44	@ 0x2c
  3b8c60:	e240000c 	sub	r0, r0, #12
  3b8c64:	ebfa5c4b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8c68:	e59f1730 	ldr	r1, [pc, #1840]	@ 3b93a0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7d4>
  3b8c6c:	e1a02006 	mov	r2, r6
  3b8c70:	e1a00007 	mov	r0, r7
  3b8c74:	e08f1001 	add	r1, pc, r1
  3b8c78:	e2811e1d 	add	r1, r1, #464	@ 0x1d0
  3b8c7c:	ebfa63ad 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8c80:	e59f271c 	ldr	r2, [pc, #1820]	@ 3b93a4 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7d8>
  3b8c84:	e1a01007 	mov	r1, r7
  3b8c88:	e59d001c 	ldr	r0, [sp, #28]
  3b8c8c:	e08f2002 	add	r2, pc, r2
  3b8c90:	eb06870a 	bl	55a8c0 <netflix::NfObject::invalidArgumentError(std::string const&, char const*)@@Base>
  3b8c94:	e59d002c 	ldr	r0, [sp, #44]	@ 0x2c
  3b8c98:	e1a01004 	mov	r1, r4
  3b8c9c:	e240000c 	sub	r0, r0, #12
  3b8ca0:	ebfa5c3c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8ca4:	e3a02006 	mov	r2, #6
  3b8ca8:	e3a03000 	mov	r3, #0
  3b8cac:	e5892000 	str	r2, [r9]
  3b8cb0:	e5c93008 	strb	r3, [r9, #8]
  3b8cb4:	e1a00005 	mov	r0, r5
  3b8cb8:	ebfac770 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b8cbc:	e59dc014 	ldr	ip, [sp, #20]
  3b8cc0:	e59d20ac 	ldr	r2, [sp, #172]	@ 0xac
  3b8cc4:	e1a00009 	mov	r0, r9
  3b8cc8:	e59c3000 	ldr	r3, [ip]
  3b8ccc:	e1520003 	cmp	r2, r3
  3b8cd0:	1a000159 	bne	3b923c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x670>
  3b8cd4:	e28dd0b4 	add	sp, sp, #180	@ 0xb4
  3b8cd8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  3b8cdc:	e5985008 	ldr	r5, [r8, #8]
  3b8ce0:	e1a01004 	mov	r1, r4
  3b8ce4:	e2850008 	add	r0, r5, #8
  3b8ce8:	e285500c 	add	r5, r5, #12
  3b8cec:	ebfb306a 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b8cf0:	e1500005 	cmp	r0, r5
  3b8cf4:	0affffcc 	beq	3b8c2c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x60>
  3b8cf8:	e28d50b0 	add	r5, sp, #176	@ 0xb0
  3b8cfc:	e2801018 	add	r1, r0, #24
  3b8d00:	e5256050 	str	r6, [r5, #-80]!	@ 0xffffffb0
  3b8d04:	e1a00005 	mov	r0, r5
  3b8d08:	e28d6090 	add	r6, sp, #144	@ 0x90
  3b8d0c:	ebfac66d 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  3b8d10:	e28d6090 	add	r6, sp, #144	@ 0x90
  3b8d14:	e28d1050 	add	r1, sp, #80	@ 0x50
  3b8d18:	e58d1010 	str	r1, [sp, #16]
  3b8d1c:	e1a00006 	mov	r0, r6
  3b8d20:	ebfac756 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b8d24:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  3b8d28:	e28d1050 	add	r1, sp, #80	@ 0x50
  3b8d2c:	e240000c 	sub	r0, r0, #12
  3b8d30:	ebfa5c18 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8d34:	e59d3060 	ldr	r3, [sp, #96]	@ 0x60
  3b8d38:	e3530001 	cmp	r3, #1
  3b8d3c:	0a0000b0 	beq	3b9004 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x438>
  3b8d40:	e28db034 	add	fp, sp, #52	@ 0x34
  3b8d44:	e59f165c 	ldr	r1, [pc, #1628]	@ 3b93a8 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7dc>
  3b8d48:	e28d2050 	add	r2, sp, #80	@ 0x50
  3b8d4c:	e08f1001 	add	r1, pc, r1
  3b8d50:	e1a0000b 	mov	r0, fp
  3b8d54:	ebfa6377 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8d58:	e5982000 	ldr	r2, [r8]
  3b8d5c:	e3a03000 	mov	r3, #0
  3b8d60:	e58d3090 	str	r3, [sp, #144]	@ 0x90
  3b8d64:	e3520003 	cmp	r2, #3
  3b8d68:	0a0000ec 	beq	3b9120 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x554>
  3b8d6c:	e28d80b0 	add	r8, sp, #176	@ 0xb0
  3b8d70:	e3a03000 	mov	r3, #0
  3b8d74:	e1a01006 	mov	r1, r6
  3b8d78:	e5283038 	str	r3, [r8, #-56]!	@ 0xffffffc8
  3b8d7c:	e1a00008 	mov	r0, r8
  3b8d80:	ebfac650 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  3b8d84:	e1a00006 	mov	r0, r6
  3b8d88:	ebfac73c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b8d8c:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
  3b8d90:	e1a01004 	mov	r1, r4
  3b8d94:	e240000c 	sub	r0, r0, #12
  3b8d98:	ebfa5bfe 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8d9c:	e59d3078 	ldr	r3, [sp, #120]	@ 0x78
  3b8da0:	e3530003 	cmp	r3, #3
  3b8da4:	0a000071 	beq	3b8f70 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x3a4>
  3b8da8:	e3a0b000 	mov	fp, #0
  3b8dac:	e58db020 	str	fp, [sp, #32]
  3b8db0:	e28d1044 	add	r1, sp, #68	@ 0x44
  3b8db4:	e58d1018 	str	r1, [sp, #24]
  3b8db8:	e59f15ec 	ldr	r1, [pc, #1516]	@ 3b93ac <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7e0>
  3b8dbc:	e1a0200a 	mov	r2, sl
  3b8dc0:	e28d0044 	add	r0, sp, #68	@ 0x44
  3b8dc4:	e08f1001 	add	r1, pc, r1
  3b8dc8:	ebfa635a 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8dcc:	e1a00005 	mov	r0, r5
  3b8dd0:	ebfb3b92 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  3b8dd4:	e28d1044 	add	r1, sp, #68	@ 0x44
  3b8dd8:	ebfb3c32 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  3b8ddc:	e59fc5cc 	ldr	ip, [pc, #1484]	@ 3b93b0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7e4>
  3b8de0:	e3a03000 	mov	r3, #0
  3b8de4:	e1a01000 	mov	r1, r0
  3b8de8:	e1a02003 	mov	r2, r3
  3b8dec:	e28d0040 	add	r0, sp, #64	@ 0x40
  3b8df0:	e797c00c 	ldr	ip, [r7, ip]
  3b8df4:	e58d3000 	str	r3, [sp]
  3b8df8:	e1a03004 	mov	r3, r4
  3b8dfc:	e28cc00c 	add	ip, ip, #12
  3b8e00:	e58dc054 	str	ip, [sp, #84]	@ 0x54
  3b8e04:	ebfb5e95 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3b8e08:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  3b8e0c:	e28d1050 	add	r1, sp, #80	@ 0x50
  3b8e10:	e240000c 	sub	r0, r0, #12
  3b8e14:	ebfa5bdf 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8e18:	e59d0044 	ldr	r0, [sp, #68]	@ 0x44
  3b8e1c:	e1a01004 	mov	r1, r4
  3b8e20:	e240000c 	sub	r0, r0, #12
  3b8e24:	ebfa5bdb 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8e28:	e59d3040 	ldr	r3, [sp, #64]	@ 0x40
  3b8e2c:	e513300c 	ldr	r3, [r3, #-12]
  3b8e30:	e3530000 	cmp	r3, #0
  3b8e34:	0a000043 	beq	3b8f48 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x37c>
  3b8e38:	e35b0000 	cmp	fp, #0
  3b8e3c:	1a00009b 	bne	3b90b0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x4e4>
  3b8e40:	e59d2020 	ldr	r2, [sp, #32]
  3b8e44:	e3520000 	cmp	r2, #0
  3b8e48:	0a000035 	beq	3b8f24 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x358>
  3b8e4c:	e59dc01c 	ldr	ip, [sp, #28]
  3b8e50:	e59c3150 	ldr	r3, [ip, #336]	@ 0x150
  3b8e54:	e3530002 	cmp	r3, #2
  3b8e58:	0a0000bf 	beq	3b915c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x590>
  3b8e5c:	e59d201c 	ldr	r2, [sp, #28]
  3b8e60:	e1a01005 	mov	r1, r5
  3b8e64:	e2826e15 	add	r6, r2, #336	@ 0x150
  3b8e68:	e1a00006 	mov	r0, r6
  3b8e6c:	ebfb6250 	bl	2917b4 <netflix::Variant& netflix::Variant::push_back<netflix::Variant&>(netflix::Variant&)@@Base>
  3b8e70:	e59f353c 	ldr	r3, [pc, #1340]	@ 3b93b4 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7e8>
  3b8e74:	e28d0050 	add	r0, sp, #80	@ 0x50
  3b8e78:	e1a01006 	mov	r1, r6
  3b8e7c:	e3a02000 	mov	r2, #0
  3b8e80:	e7973003 	ldr	r3, [r7, r3]
  3b8e84:	e5937000 	ldr	r7, [r3]
  3b8e88:	eb14a199 	bl	8e14f4 <netflix::Variant::toJSON(bool) const@@Base>
  3b8e8c:	e59db050 	ldr	fp, [sp, #80]	@ 0x50
  3b8e90:	e3a06000 	mov	r6, #0
  3b8e94:	e58d6058 	str	r6, [sp, #88]	@ 0x58
  3b8e98:	e58d605c 	str	r6, [sp, #92]	@ 0x5c
  3b8e9c:	e51ba00c 	ldr	sl, [fp, #-12]
  3b8ea0:	e58d6054 	str	r6, [sp, #84]	@ 0x54
  3b8ea4:	e15a0006 	cmp	sl, r6
  3b8ea8:	0a000012 	beq	3b8ef8 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x32c>
  3b8eac:	e1a0100a 	mov	r1, sl
  3b8eb0:	e1a00004 	mov	r0, r4
  3b8eb4:	ebfb1bb9 	bl	27fda0 <netflix::DataBuffer::reserveInternal(unsigned int)@@Base>
  3b8eb8:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  3b8ebc:	e59d305c 	ldr	r3, [sp, #92]	@ 0x5c
  3b8ec0:	e1a0200a 	mov	r2, sl
  3b8ec4:	e1a0100b 	mov	r1, fp
  3b8ec8:	e5900014 	ldr	r0, [r0, #20]
  3b8ecc:	e0800003 	add	r0, r0, r3
  3b8ed0:	ebfa5a81 	bl	24f8dc <memcpy@plt>
  3b8ed4:	e59d3054 	ldr	r3, [sp, #84]	@ 0x54
  3b8ed8:	e59d205c 	ldr	r2, [sp, #92]	@ 0x5c
  3b8edc:	e5931014 	ldr	r1, [r3, #20]
  3b8ee0:	e08a2002 	add	r2, sl, r2
  3b8ee4:	e58d205c 	str	r2, [sp, #92]	@ 0x5c
  3b8ee8:	e5930004 	ldr	r0, [r3, #4]
  3b8eec:	e080a00a 	add	sl, r0, sl
  3b8ef0:	e583a004 	str	sl, [r3, #4]
  3b8ef4:	e7c16002 	strb	r6, [r1, r2]
  3b8ef8:	e1a00007 	mov	r0, r7
  3b8efc:	e3a01011 	mov	r1, #17
  3b8f00:	e1a02004 	mov	r2, r4
  3b8f04:	e3a03000 	mov	r3, #0
  3b8f08:	eb05b340 	bl	525c10 <netflix::NrdApplication::writeSystemConfiguration(netflix::NrdApplication::ConfigurationKey, netflix::DataBuffer const&, netflix::NrdApplication::WriteMode)@@Base>
  3b8f0c:	e1a00004 	mov	r0, r4
  3b8f10:	ebffbd3f 	bl	3a8414 <GibbonBridgeTimerCount::describe(void const*) const@@Base+0x138>
  3b8f14:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  3b8f18:	e1a01004 	mov	r1, r4
  3b8f1c:	e240000c 	sub	r0, r0, #12
  3b8f20:	ebfa5b9c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8f24:	e3a03000 	mov	r3, #0
  3b8f28:	e5893000 	str	r3, [r9]
  3b8f2c:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  3b8f30:	e1a01004 	mov	r1, r4
  3b8f34:	e240000c 	sub	r0, r0, #12
  3b8f38:	ebfa5b96 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8f3c:	e1a00008 	mov	r0, r8
  3b8f40:	ebfac6ce 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b8f44:	eaffff5a 	b	3b8cb4 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0xe8>
  3b8f48:	e59f3468 	ldr	r3, [pc, #1128]	@ 3b93b8 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7ec>
  3b8f4c:	e59f1468 	ldr	r1, [pc, #1128]	@ 3b93bc <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7f0>
  3b8f50:	e7970003 	ldr	r0, [r7, r3]
  3b8f54:	e08f1001 	add	r1, pc, r1
  3b8f58:	eb14dabc 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  3b8f5c:	e3a02006 	mov	r2, #6
  3b8f60:	e3a03000 	mov	r3, #0
  3b8f64:	e5892000 	str	r2, [r9]
  3b8f68:	e5c93008 	strb	r3, [r9, #8]
  3b8f6c:	eaffffee 	b	3b8f2c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x360>
  3b8f70:	e28db038 	add	fp, sp, #56	@ 0x38
  3b8f74:	e59f1444 	ldr	r1, [pc, #1092]	@ 3b93c0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7f4>
  3b8f78:	e28d2050 	add	r2, sp, #80	@ 0x50
  3b8f7c:	e08f1001 	add	r1, pc, r1
  3b8f80:	e1a0000b 	mov	r0, fp
  3b8f84:	ebfa62eb 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8f88:	e28d30b0 	add	r3, sp, #176	@ 0xb0
  3b8f8c:	e3a02000 	mov	r2, #0
  3b8f90:	e1a0100b 	mov	r1, fp
  3b8f94:	e58d2000 	str	r2, [sp]
  3b8f98:	e1a00008 	mov	r0, r8
  3b8f9c:	e5632086 	strb	r2, [r3, #-134]!	@ 0xffffff7a
  3b8fa0:	ebfcc1c1 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  3b8fa4:	e58d0020 	str	r0, [sp, #32]
  3b8fa8:	e1a01004 	mov	r1, r4
  3b8fac:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  3b8fb0:	e28db03c 	add	fp, sp, #60	@ 0x3c
  3b8fb4:	e240000c 	sub	r0, r0, #12
  3b8fb8:	ebfa5b76 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b8fbc:	e59f1400 	ldr	r1, [pc, #1024]	@ 3b93c4 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7f8>
  3b8fc0:	e1a0000b 	mov	r0, fp
  3b8fc4:	e28d2050 	add	r2, sp, #80	@ 0x50
  3b8fc8:	e08f1001 	add	r1, pc, r1
  3b8fcc:	ebfa62d9 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b8fd0:	e28d30b0 	add	r3, sp, #176	@ 0xb0
  3b8fd4:	e3a02000 	mov	r2, #0
  3b8fd8:	e1a0100b 	mov	r1, fp
  3b8fdc:	e58d2000 	str	r2, [sp]
  3b8fe0:	e1a00008 	mov	r0, r8
  3b8fe4:	e5632085 	strb	r2, [r3, #-133]!	@ 0xffffff7b
  3b8fe8:	ebfcc1af 	bl	2e96ac <bool netflix::Variant::mapValueImpl<bool>(std::string const&, bool*, bool const&, std::pair<bool, bool> const*) const@@Base>
  3b8fec:	e1a0b000 	mov	fp, r0
  3b8ff0:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  3b8ff4:	e1a01004 	mov	r1, r4
  3b8ff8:	e240000c 	sub	r0, r0, #12
  3b8ffc:	ebfa5b65 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b9000:	eaffff6a 	b	3b8db0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x1e4>
  3b9004:	e59fc3a4 	ldr	ip, [pc, #932]	@ 3b93b0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7e4>
  3b9008:	e3a03000 	mov	r3, #0
  3b900c:	e1a02003 	mov	r2, r3
  3b9010:	e28d0050 	add	r0, sp, #80	@ 0x50
  3b9014:	e1a01005 	mov	r1, r5
  3b9018:	e797c00c 	ldr	ip, [r7, ip]
  3b901c:	e58d3000 	str	r3, [sp]
  3b9020:	e1a03004 	mov	r3, r4
  3b9024:	e28cc00c 	add	ip, ip, #12
  3b9028:	e58dc054 	str	ip, [sp, #84]	@ 0x54
  3b902c:	ebfb5e0b 	bl	290860 <std::string netflix::Variant::valueImpl<std::string>(bool*, std::string const&, std::pair<std::string, std::string> const*) const@@Base>
  3b9030:	e59d0054 	ldr	r0, [sp, #84]	@ 0x54
  3b9034:	e1a0100a 	mov	r1, sl
  3b9038:	e240000c 	sub	r0, r0, #12
  3b903c:	ebfa5b55 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b9040:	e1a00005 	mov	r0, r5
  3b9044:	ebfac68d 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b9048:	e28db030 	add	fp, sp, #48	@ 0x30
  3b904c:	e59f1374 	ldr	r1, [pc, #884]	@ 3b93c8 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7fc>
  3b9050:	e1a0200a 	mov	r2, sl
  3b9054:	e08f1001 	add	r1, pc, r1
  3b9058:	e1a0000b 	mov	r0, fp
  3b905c:	ebfa62b5 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3b9060:	e1a00005 	mov	r0, r5
  3b9064:	ebfb3aed 	bl	287c20 <netflix::Variant::ensureStringMap()@@Base>
  3b9068:	e1a0100b 	mov	r1, fp
  3b906c:	ebfb3b8d 	bl	287ea8 <std::map<std::string, netflix::Variant, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::operator[](std::string const&)@@Base>
  3b9070:	e1a0b000 	mov	fp, r0
  3b9074:	ebfac681 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b9078:	e1a0000b 	mov	r0, fp
  3b907c:	e3a03001 	mov	r3, #1
  3b9080:	e28d1050 	add	r1, sp, #80	@ 0x50
  3b9084:	e4803008 	str	r3, [r0], #8
  3b9088:	ebfa5dfd 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3b908c:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
  3b9090:	e1a01004 	mov	r1, r4
  3b9094:	e240000c 	sub	r0, r0, #12
  3b9098:	ebfa5b3e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b909c:	e59d0050 	ldr	r0, [sp, #80]	@ 0x50
  3b90a0:	e1a01004 	mov	r1, r4
  3b90a4:	e240000c 	sub	r0, r0, #12
  3b90a8:	ebfa5b3a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b90ac:	eaffff23 	b	3b8d40 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x174>
  3b90b0:	e1a00006 	mov	r0, r6
  3b90b4:	e1a01005 	mov	r1, r5
  3b90b8:	e3a03000 	mov	r3, #0
  3b90bc:	e58d3090 	str	r3, [sp, #144]	@ 0x90
  3b90c0:	ebfac580 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  3b90c4:	e3a00000 	mov	r0, #0
  3b90c8:	e1a01006 	mov	r1, r6
  3b90cc:	ebfb58a6 	bl	28f36c <netflix::gibbon::GibbonConfiguration::addInjectJS(netflix::ConfigurationOption::FunctionMode, netflix::Variant&)@@Base>
  3b90d0:	e1a0b000 	mov	fp, r0
  3b90d4:	e1a00006 	mov	r0, r6
  3b90d8:	ebfac668 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3b90dc:	e35b0000 	cmp	fp, #0
  3b90e0:	1affff56 	bne	3b8e40 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x274>
  3b90e4:	e1a0200b 	mov	r2, fp
  3b90e8:	e28d0048 	add	r0, sp, #72	@ 0x48
  3b90ec:	e1a01005 	mov	r1, r5
  3b90f0:	eb14a0ff 	bl	8e14f4 <netflix::Variant::toJSON(bool) const@@Base>
  3b90f4:	e59f32bc 	ldr	r3, [pc, #700]	@ 3b93b8 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x7ec>
  3b90f8:	e59f12cc 	ldr	r1, [pc, #716]	@ 3b93cc <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x800>
  3b90fc:	e59d2048 	ldr	r2, [sp, #72]	@ 0x48
  3b9100:	e08f1001 	add	r1, pc, r1
  3b9104:	e7970003 	ldr	r0, [r7, r3]
  3b9108:	eb14da50 	bl	8efa50 <netflix::Log::error(netflix::TraceArea const&, char const*, ...)@@Base>
  3b910c:	e59d0048 	ldr	r0, [sp, #72]	@ 0x48
  3b9110:	e1a01004 	mov	r1, r4
  3b9114:	e240000c 	sub	r0, r0, #12
  3b9118:	ebfa5b1e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3b911c:	eaffff8e 	b	3b8f5c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x390>
  3b9120:	e5988008 	ldr	r8, [r8, #8]
  3b9124:	e1a0100b 	mov	r1, fp
  3b9128:	e58d300c 	str	r3, [sp, #12]
  3b912c:	e2880008 	add	r0, r8, #8
  3b9130:	e288800c 	add	r8, r8, #12
  3b9134:	ebfb2f58 	bl	284e9c <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::find(std::string const&) const@@Base>
  3b9138:	e59d300c 	ldr	r3, [sp, #12]
  3b913c:	e1500008 	cmp	r0, r8
  3b9140:	0affff09 	beq	3b8d6c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x1a0>
  3b9144:	e28d80b0 	add	r8, sp, #176	@ 0xb0
  3b9148:	e2801018 	add	r1, r0, #24
  3b914c:	e5283038 	str	r3, [r8, #-56]!	@ 0xffffffc8
  3b9150:	e1a00008 	mov	r0, r8
  3b9154:	ebfac55b 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  3b9158:	eaffff09 	b	3b8d84 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x1b8>
  3b915c:	e59c3158 	ldr	r3, [ip, #344]	@ 0x158
  3b9160:	e5936008 	ldr	r6, [r3, #8]
  3b9164:	e593b00c 	ldr	fp, [r3, #12]
  3b9168:	e156000b 	cmp	r6, fp
  3b916c:	0affff3a 	beq	3b8e5c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x290>
  3b9170:	e59f1258 	ldr	r1, [pc, #600]	@ 3b93d0 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x804>
  3b9174:	e28d2048 	add	r2, sp, #72	@ 0x48
  3b9178:	e58d2024 	str	r2, [sp, #36]	@ 0x24
  3b917c:	e08f1001 	add	r1, pc, r1
  3b9180:	e58d1020 	str	r1, [sp, #32]
  3b9184:	ea000002 	b	3b9194 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x5c8>
  3b9188:	e2866018 	add	r6, r6, #24
  3b918c:	e15b0006 	cmp	fp, r6
  3b9190:	0affff31 	beq	3b8e5c <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x290>
  3b9194:	e5963000 	ldr	r3, [r6]
  3b9198:	e3530003 	cmp	r3, #3
  3b919c:	1afffff9 	bne	3b9188 <netflix::gibbon::GibbonBridge::addInjectJS(netflix::Variant const&)@@Base+0x5bc>
