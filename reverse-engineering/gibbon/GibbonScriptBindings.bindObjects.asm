
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

00318c40 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base>:
  318c40:	e59f33e4 	ldr	r3, [pc, #996]	@ 31902c <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x3ec>
  318c44:	e59f23e4 	ldr	r2, [pc, #996]	@ 319030 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x3f0>
  318c48:	e08f3003 	add	r3, pc, r3
  318c4c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  318c50:	e24dd040 	sub	sp, sp, #64	@ 0x40
  318c54:	e793a002 	ldr	sl, [r3, r2]
  318c58:	e1a07000 	mov	r7, r0
  318c5c:	e28d6024 	add	r6, sp, #36	@ 0x24
  318c60:	e59a3000 	ldr	r3, [sl]
  318c64:	e58d303c 	str	r3, [sp, #60]	@ 0x3c
  318c68:	eb0a6895 	bl	5b2ec4 <netflix::ScriptBindings::bindObjects()@@Base>
  318c6c:	eb0009d3 	bl	31b3c0 <netflix::ScriptEngine::engine()@@Base>
  318c70:	e5973000 	ldr	r3, [r7]
  318c74:	e593300c 	ldr	r3, [r3, #12]
  318c78:	e5908000 	ldr	r8, [r0]
  318c7c:	e1a00007 	mov	r0, r7
  318c80:	e12fff33 	blx	r3
  318c84:	e59f13a8 	ldr	r1, [pc, #936]	@ 319034 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x3f4>
  318c88:	e1a0000d 	mov	r0, sp
  318c8c:	e1a02006 	mov	r2, r6
  318c90:	e08f1001 	add	r1, pc, r1
  318c94:	e2888024 	add	r8, r8, #36	@ 0x24
  318c98:	ebfce3a6 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  318c9c:	e28d4034 	add	r4, sp, #52	@ 0x34
  318ca0:	e1a0200d 	mov	r2, sp
  318ca4:	e1a01008 	mov	r1, r8
  318ca8:	e1a00004 	mov	r0, r4
  318cac:	eb0a4a05 	bl	5ab4c8 <netflix::ScriptEngine::Object::find(std::string const&) const@@Base>
  318cb0:	e59d0000 	ldr	r0, [sp]
  318cb4:	e28d502c 	add	r5, sp, #44	@ 0x2c
  318cb8:	e240000c 	sub	r0, r0, #12
  318cbc:	e1a01005 	mov	r1, r5
  318cc0:	ebfcdc34 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318cc4:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  318cc8:	e3530000 	cmp	r3, #0
  318ccc:	0a00000c 	beq	318d04 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0xc4>
  318cd0:	e28d9014 	add	r9, sp, #20
  318cd4:	e1a01004 	mov	r1, r4
  318cd8:	e1a00009 	mov	r0, r9
  318cdc:	eb05d38d 	bl	48db18 <netflix::ScriptEngine::Value::object() const@@Base>
  318ce0:	eb0377d0 	bl	3f6c28 <netflix::gibbon::WidgetBridge::staticClazz()@@Base>
  318ce4:	e1a02000 	mov	r2, r0
  318ce8:	e1a01009 	mov	r1, r9
  318cec:	e1a00007 	mov	r0, r7
  318cf0:	ebffe8a0 	bl	312f78 <netflix::gibbon::GibbonScriptBindings::bindPrototype(netflix::ScriptEngine::Object&&, netflix::NfObject::Class const*)@@Base>
  318cf4:	e1a00009 	mov	r0, r9
  318cf8:	eb05b083 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318cfc:	e1a00009 	mov	r0, r9
  318d00:	eb000f3a 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318d04:	e1a00004 	mov	r0, r4
  318d08:	e28d9004 	add	r9, sp, #4
  318d0c:	eb05cc9d 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318d10:	e59f1320 	ldr	r1, [pc, #800]	@ 319038 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x3f8>
  318d14:	e1a00009 	mov	r0, r9
  318d18:	e1a02006 	mov	r2, r6
  318d1c:	e08f1001 	add	r1, pc, r1
  318d20:	ebfce384 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  318d24:	e1a00004 	mov	r0, r4
  318d28:	e1a01008 	mov	r1, r8
  318d2c:	e1a02009 	mov	r2, r9
  318d30:	eb0a49e4 	bl	5ab4c8 <netflix::ScriptEngine::Object::find(std::string const&) const@@Base>
  318d34:	e59d0004 	ldr	r0, [sp, #4]
  318d38:	e1a01005 	mov	r1, r5
  318d3c:	e240000c 	sub	r0, r0, #12
  318d40:	ebfcdc14 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318d44:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  318d48:	e3530000 	cmp	r3, #0
  318d4c:	0a00000c 	beq	318d84 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x144>
  318d50:	e28d901c 	add	r9, sp, #28
  318d54:	e1a01004 	mov	r1, r4
  318d58:	e1a00009 	mov	r0, r9
  318d5c:	eb05d36d 	bl	48db18 <netflix::ScriptEngine::Value::object() const@@Base>
  318d60:	eb03171d 	bl	3de9dc <netflix::gibbon::ImageBridge::staticClazz()@@Base>
  318d64:	e1a02000 	mov	r2, r0
  318d68:	e1a01009 	mov	r1, r9
  318d6c:	e1a00007 	mov	r0, r7
  318d70:	ebffe880 	bl	312f78 <netflix::gibbon::GibbonScriptBindings::bindPrototype(netflix::ScriptEngine::Object&&, netflix::NfObject::Class const*)@@Base>
  318d74:	e1a00009 	mov	r0, r9
  318d78:	eb05b063 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318d7c:	e1a00009 	mov	r0, r9
  318d80:	eb000f1a 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318d84:	e1a00004 	mov	r0, r4
  318d88:	e28d9008 	add	r9, sp, #8
  318d8c:	eb05cc7d 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318d90:	e59f12a4 	ldr	r1, [pc, #676]	@ 31903c <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x3fc>
  318d94:	e1a00009 	mov	r0, r9
  318d98:	e1a02006 	mov	r2, r6
  318d9c:	e08f1001 	add	r1, pc, r1
  318da0:	ebfce364 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  318da4:	e1a00004 	mov	r0, r4
  318da8:	e1a01008 	mov	r1, r8
  318dac:	e1a02009 	mov	r2, r9
  318db0:	eb0a49c4 	bl	5ab4c8 <netflix::ScriptEngine::Object::find(std::string const&) const@@Base>
  318db4:	e59d0008 	ldr	r0, [sp, #8]
  318db8:	e1a01005 	mov	r1, r5
  318dbc:	e240000c 	sub	r0, r0, #12
  318dc0:	ebfcdbf4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318dc4:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  318dc8:	e3530000 	cmp	r3, #0
  318dcc:	0a00000b 	beq	318e00 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x1c0>
  318dd0:	e1a00006 	mov	r0, r6
  318dd4:	e1a01004 	mov	r1, r4
  318dd8:	eb05d34e 	bl	48db18 <netflix::ScriptEngine::Value::object() const@@Base>
  318ddc:	eb022e41 	bl	3a46e8 <netflix::gibbon::EffectBridge::staticClazz()@@Base>
  318de0:	e1a02000 	mov	r2, r0
  318de4:	e1a01006 	mov	r1, r6
  318de8:	e1a00007 	mov	r0, r7
  318dec:	ebffe861 	bl	312f78 <netflix::gibbon::GibbonScriptBindings::bindPrototype(netflix::ScriptEngine::Object&&, netflix::NfObject::Class const*)@@Base>
  318df0:	e1a00006 	mov	r0, r6
  318df4:	eb05b044 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318df8:	e1a00006 	mov	r0, r6
  318dfc:	eb000efb 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318e00:	e1a00004 	mov	r0, r4
  318e04:	e28d900c 	add	r9, sp, #12
  318e08:	eb05cc5e 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318e0c:	e59f122c 	ldr	r1, [pc, #556]	@ 319040 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x400>
  318e10:	e1a00009 	mov	r0, r9
  318e14:	e1a02006 	mov	r2, r6
  318e18:	e08f1001 	add	r1, pc, r1
  318e1c:	ebfce345 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  318e20:	e1a00004 	mov	r0, r4
  318e24:	e1a01008 	mov	r1, r8
  318e28:	e1a02009 	mov	r2, r9
  318e2c:	eb0a49a5 	bl	5ab4c8 <netflix::ScriptEngine::Object::find(std::string const&) const@@Base>
  318e30:	e59d000c 	ldr	r0, [sp, #12]
  318e34:	e1a01005 	mov	r1, r5
  318e38:	e240000c 	sub	r0, r0, #12
  318e3c:	ebfcdbd5 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318e40:	e59d3034 	ldr	r3, [sp, #52]	@ 0x34
  318e44:	e3530000 	cmp	r3, #0
  318e48:	0a00000b 	beq	318e7c <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x23c>
  318e4c:	e1a00005 	mov	r0, r5
  318e50:	e1a01004 	mov	r1, r4
  318e54:	eb05d32f 	bl	48db18 <netflix::ScriptEngine::Value::object() const@@Base>
  318e58:	eb032491 	bl	3e20a4 <netflix::gibbon::PlayerBridge::staticClazz()@@Base>
  318e5c:	e1a02000 	mov	r2, r0
  318e60:	e1a01005 	mov	r1, r5
  318e64:	e1a00007 	mov	r0, r7
  318e68:	ebffe842 	bl	312f78 <netflix::gibbon::GibbonScriptBindings::bindPrototype(netflix::ScriptEngine::Object&&, netflix::NfObject::Class const*)@@Base>
  318e6c:	e1a00005 	mov	r0, r5
  318e70:	eb05b025 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318e74:	e1a00005 	mov	r0, r5
  318e78:	eb000edc 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318e7c:	e1a00004 	mov	r0, r4
  318e80:	e28d9010 	add	r9, sp, #16
  318e84:	eb05cc3f 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318e88:	e59f11b4 	ldr	r1, [pc, #436]	@ 319044 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x404>
  318e8c:	e1a02006 	mov	r2, r6
  318e90:	e1a00009 	mov	r0, r9
  318e94:	e08f1001 	add	r1, pc, r1
  318e98:	ebfce326 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  318e9c:	e1a00005 	mov	r0, r5
  318ea0:	e1a01008 	mov	r1, r8
  318ea4:	e1a02009 	mov	r2, r9
  318ea8:	eb0a4986 	bl	5ab4c8 <netflix::ScriptEngine::Object::find(std::string const&) const@@Base>
  318eac:	e59d0010 	ldr	r0, [sp, #16]
  318eb0:	e1a01004 	mov	r1, r4
  318eb4:	e240000c 	sub	r0, r0, #12
  318eb8:	ebfcdbb6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318ebc:	e59d302c 	ldr	r3, [sp, #44]	@ 0x2c
  318ec0:	e3530000 	cmp	r3, #0
  318ec4:	0a00000b 	beq	318ef8 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x2b8>
  318ec8:	e1a00004 	mov	r0, r4
  318ecc:	e1a01005 	mov	r1, r5
  318ed0:	eb05d310 	bl	48db18 <netflix::ScriptEngine::Value::object() const@@Base>
  318ed4:	eb034d65 	bl	3ec470 <netflix::gibbon::TextBridge::staticClazz()@@Base>
  318ed8:	e1a02000 	mov	r2, r0
  318edc:	e1a01004 	mov	r1, r4
  318ee0:	e1a00007 	mov	r0, r7
  318ee4:	ebffe823 	bl	312f78 <netflix::gibbon::GibbonScriptBindings::bindPrototype(netflix::ScriptEngine::Object&&, netflix::NfObject::Class const*)@@Base>
  318ee8:	e1a00004 	mov	r0, r4
  318eec:	eb05b006 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318ef0:	e1a00004 	mov	r0, r4
  318ef4:	eb000ebd 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318ef8:	e1a00005 	mov	r0, r5
  318efc:	eb05cc21 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318f00:	e5973000 	ldr	r3, [r7]
  318f04:	e1a00007 	mov	r0, r7
  318f08:	e5933010 	ldr	r3, [r3, #16]
  318f0c:	e12fff33 	blx	r3
  318f10:	e59d203c 	ldr	r2, [sp, #60]	@ 0x3c
  318f14:	e59a3000 	ldr	r3, [sl]
  318f18:	e1520003 	cmp	r2, r3
  318f1c:	1a000001 	bne	318f28 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x2e8>
  318f20:	e28dd040 	add	sp, sp, #64	@ 0x40
  318f24:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  318f28:	ebfcd759 	bl	24ec94 <__stack_chk_fail@plt>
  318f2c:	e1a00004 	mov	r0, r4
  318f30:	eb05aff5 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318f34:	e1a00004 	mov	r0, r4
  318f38:	eb000eac 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318f3c:	e1a00005 	mov	r0, r5
  318f40:	eb05cc10 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318f44:	e5973000 	ldr	r3, [r7]
  318f48:	e1a00007 	mov	r0, r7
  318f4c:	e5933010 	ldr	r3, [r3, #16]
  318f50:	e12fff33 	blx	r3
  318f54:	ebfcdc34 	bl	25002c <__cxa_end_cleanup@plt>
  318f58:	eafffff7 	b	318f3c <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x2fc>
  318f5c:	e59d0010 	ldr	r0, [sp, #16]
  318f60:	e1a01004 	mov	r1, r4
  318f64:	e240000c 	sub	r0, r0, #12
  318f68:	ebfcdb8a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318f6c:	eafffff4 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  318f70:	e1a00005 	mov	r0, r5
  318f74:	eb05afe4 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318f78:	e1a00005 	mov	r0, r5
  318f7c:	eb000e9b 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318f80:	e1a00004 	mov	r0, r4
  318f84:	eb05cbff 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  318f88:	eaffffed 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  318f8c:	eafffffb 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  318f90:	e59d000c 	ldr	r0, [sp, #12]
  318f94:	e1a01005 	mov	r1, r5
  318f98:	e240000c 	sub	r0, r0, #12
  318f9c:	ebfcdb7d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318fa0:	eaffffe7 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  318fa4:	e1a00006 	mov	r0, r6
  318fa8:	eb05afd7 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318fac:	e1a00006 	mov	r0, r6
  318fb0:	eb000e8e 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318fb4:	eafffff1 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  318fb8:	eafffff0 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  318fbc:	e59d0008 	ldr	r0, [sp, #8]
  318fc0:	e1a01005 	mov	r1, r5
  318fc4:	e240000c 	sub	r0, r0, #12
  318fc8:	ebfcdb72 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318fcc:	eaffffdc 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  318fd0:	e1a00009 	mov	r0, r9
  318fd4:	eb05afcc 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  318fd8:	e1a00009 	mov	r0, r9
  318fdc:	eb000e83 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  318fe0:	eaffffe6 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  318fe4:	eaffffe5 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  318fe8:	e59d0004 	ldr	r0, [sp, #4]
  318fec:	e1a01005 	mov	r1, r5
  318ff0:	e240000c 	sub	r0, r0, #12
  318ff4:	ebfcdb67 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  318ff8:	eaffffd1 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  318ffc:	e1a00009 	mov	r0, r9
  319000:	eb05afc1 	bl	484f0c <netflix::ScriptEngine::Object::clear()@@Base>
  319004:	e1a00009 	mov	r0, r9
  319008:	eb000e78 	bl	31c9f0 <netflix::ScriptEngine::ProtectedValueJSC<OpaqueJSValue*>::clear()@@Base>
  31900c:	eaffffdb 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  319010:	eaffffda 	b	318f80 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x340>
  319014:	e59d0000 	ldr	r0, [sp]
  319018:	e28d102c 	add	r1, sp, #44	@ 0x2c
  31901c:	e240000c 	sub	r0, r0, #12
  319020:	ebfcdb5c 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  319024:	eaffffc6 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  319028:	eaffffc5 	b	318f44 <netflix::gibbon::GibbonScriptBindings::bindObjects()@@Base+0x304>
  31902c:	0070e4b8 	ldrhteq	lr, [r0], #-72	@ 0xffffffb8
  319030:	00003440 	andeq	r3, r0, r0, asr #8
  319034:	00632650 	rsbeq	r2, r3, r0, asr r6
  319038:	006325e4 	rsbeq	r2, r3, r4, ror #11
  31903c:	00632580 	rsbeq	r2, r3, r0, lsl #11
  319040:	00632524 	rsbeq	r2, r3, r4, lsr #10
  319044:	006324c8 	rsbeq	r2, r3, r8, asr #9

00319048 <netflix::ScriptEngine::Class::Listener::~Listener()@@Base>:
  319048:	e59f3044 	ldr	r3, [pc, #68]	@ 319094 <netflix::ScriptEngine::Class::Listener::~Listener()@@Base+0x4c>
  31904c:	e59f2044 	ldr	r2, [pc, #68]	@ 319098 <netflix::ScriptEngine::Class::Listener::~Listener()@@Base+0x50>
