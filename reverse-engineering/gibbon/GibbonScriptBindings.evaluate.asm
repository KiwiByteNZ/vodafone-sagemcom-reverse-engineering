
vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

00315050 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base>:
  315050:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  315054:	e24ddf57 	sub	sp, sp, #348	@ 0x15c
  315058:	e59f7acc 	ldr	r7, [pc, #2764]	@ 315b2c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xadc>
  31505c:	e1a06000 	mov	r6, r0
  315060:	e1a05002 	mov	r5, r2
  315064:	e59f0ac4 	ldr	r0, [pc, #2756]	@ 315b30 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xae0>
  315068:	e59d2180 	ldr	r2, [sp, #384]	@ 0x180
  31506c:	e08f7007 	add	r7, pc, r7
  315070:	e58d302c 	str	r3, [sp, #44]	@ 0x2c
  315074:	e1a08001 	mov	r8, r1
  315078:	e59f1ab4 	ldr	r1, [pc, #2740]	@ 315b34 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xae4>
  31507c:	e58d2028 	str	r2, [sp, #40]	@ 0x28
  315080:	e7970000 	ldr	r0, [r7, r0]
  315084:	e5903000 	ldr	r3, [r0]
  315088:	e58d0024 	str	r0, [sp, #36]	@ 0x24
  31508c:	e58d3154 	str	r3, [sp, #340]	@ 0x154
  315090:	e7971001 	ldr	r1, [r7, r1]
  315094:	e58d1020 	str	r1, [sp, #32]
  315098:	f57ff05f 	dmb	sy
  31509c:	e5d13000 	ldrb	r3, [r1]
  3150a0:	f57ff05f 	dmb	sy
  3150a4:	e3530000 	cmp	r3, #0
  3150a8:	028d90a0 	addeq	r9, sp, #160	@ 0xa0
  3150ac:	0a0000d3 	beq	315400 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x3b0>
  3150b0:	ebfdaa6b 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  3150b4:	e28d2048 	add	r2, sp, #72	@ 0x48
  3150b8:	e28db064 	add	fp, sp, #100	@ 0x64
  3150bc:	e1cd03f0 	strd	r0, [sp, #48]	@ 0x30
  3150c0:	e28d0060 	add	r0, sp, #96	@ 0x60
  3150c4:	e59f1a6c 	ldr	r1, [pc, #2668]	@ 315b38 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xae8>
  3150c8:	e08f1001 	add	r1, pc, r1
  3150cc:	ebfcf299 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  3150d0:	e5983000 	ldr	r3, [r8]
  3150d4:	e59f1a60 	ldr	r1, [pc, #2656]	@ 315b3c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xaec>
  3150d8:	e1a0000b 	mov	r0, fp
  3150dc:	e3530000 	cmp	r3, #0
  3150e0:	e08f1001 	add	r1, pc, r1
  3150e4:	15932014 	ldrne	r2, [r3, #20]
  3150e8:	15983004 	ldrne	r3, [r8, #4]
  3150ec:	10823003 	addne	r3, r2, r3
  3150f0:	e59d2060 	ldr	r2, [sp, #96]	@ 0x60
  3150f4:	ebfdc9be 	bl	2877f4 <netflix::StringFormatterBase<std::string>::sformat(char const*, ...)@@Base>
  3150f8:	e59f1a40 	ldr	r1, [pc, #2624]	@ 315b40 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xaf0>
  3150fc:	e28d0068 	add	r0, sp, #104	@ 0x68
  315100:	e28d204c 	add	r2, sp, #76	@ 0x4c
  315104:	e08f1001 	add	r1, pc, r1
  315108:	ebfcf28a 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  31510c:	e28d00e8 	add	r0, sp, #232	@ 0xe8
  315110:	e2851004 	add	r1, r5, #4
  315114:	e3a03001 	mov	r3, #1
  315118:	e58d30e0 	str	r3, [sp, #224]	@ 0xe0
  31511c:	ebfcedd8 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  315120:	e3a00020 	mov	r0, #32
  315124:	e3a03003 	mov	r3, #3
  315128:	e5984008 	ldr	r4, [r8, #8]
  31512c:	e58d30f8 	str	r3, [sp, #248]	@ 0xf8
  315130:	e3a03000 	mov	r3, #0
  315134:	e58d308c 	str	r3, [sp, #140]	@ 0x8c
  315138:	e58d3090 	str	r3, [sp, #144]	@ 0x90
  31513c:	e58d309c 	str	r3, [sp, #156]	@ 0x9c
  315140:	e28d308c 	add	r3, sp, #140	@ 0x8c
  315144:	e58d3094 	str	r3, [sp, #148]	@ 0x94
  315148:	e58d3098 	str	r3, [sp, #152]	@ 0x98
  31514c:	ebfce6df 	bl	24ecd0 <operator new(unsigned int)@plt>
  315150:	e59f19ec 	ldr	r1, [pc, #2540]	@ 315b44 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xaf4>
  315154:	e1a0a000 	mov	sl, r0
  315158:	e59f39e8 	ldr	r3, [pc, #2536]	@ 315b48 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xaf8>
  31515c:	e3a02001 	mov	r2, #1
  315160:	e28d9088 	add	r9, sp, #136	@ 0x88
  315164:	e7971001 	ldr	r1, [r7, r1]
  315168:	e58a2004 	str	r2, [sl, #4]
  31516c:	e58d103c 	str	r1, [sp, #60]	@ 0x3c
  315170:	e1a01009 	mov	r1, r9
  315174:	e7973003 	ldr	r3, [r7, r3]
  315178:	e58d301c 	str	r3, [sp, #28]
  31517c:	e2833008 	add	r3, r3, #8
  315180:	e4803008 	str	r3, [r0], #8
  315184:	ebfdf0a5 	bl	291420 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_Rb_tree(std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > > const&)@@Base>
  315188:	e1a00009 	mov	r0, r9
  31518c:	e59d1090 	ldr	r1, [sp, #144]	@ 0x90
  315190:	e58da100 	str	sl, [sp, #256]	@ 0x100
  315194:	ebfd587f 	bl	26b398 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, netflix::Variant> >*)@@Base>
  315198:	e59d1068 	ldr	r1, [sp, #104]	@ 0x68
  31519c:	e28d30e0 	add	r3, sp, #224	@ 0xe0
  3151a0:	e59f29a4 	ldr	r2, [pc, #2468]	@ 315b4c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xafc>
  3151a4:	e28d9f46 	add	r9, sp, #280	@ 0x118
  3151a8:	e58d3038 	str	r3, [sp, #56]	@ 0x38
  3151ac:	e28dae11 	add	sl, sp, #272	@ 0x110
  3151b0:	e58d1110 	str	r1, [sp, #272]	@ 0x110
  3151b4:	e1a00009 	mov	r0, r9
  3151b8:	e7972002 	ldr	r2, [r7, r2]
  3151bc:	e59d3100 	ldr	r3, [sp, #256]	@ 0x100
  3151c0:	e59d1038 	ldr	r1, [sp, #56]	@ 0x38
  3151c4:	e58d2010 	str	r2, [sp, #16]
  3151c8:	e3a02000 	mov	r2, #0
  3151cc:	e59dc010 	ldr	ip, [sp, #16]
  3151d0:	e58d2118 	str	r2, [sp, #280]	@ 0x118
  3151d4:	e58d300c 	str	r3, [sp, #12]
  3151d8:	e28c200c 	add	r2, ip, #12
  3151dc:	e58d2068 	str	r2, [sp, #104]	@ 0x68
  3151e0:	ebfdac83 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  3151e4:	e59d300c 	ldr	r3, [sp, #12]
  3151e8:	e1a0200a 	mov	r2, sl
  3151ec:	e28d0070 	add	r0, sp, #112	@ 0x70
  3151f0:	e2831008 	add	r1, r3, #8
  3151f4:	ebfe9224 	bl	2b9a8c <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, netflix::Variant> >, bool> std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_insert_unique<std::pair<std::string, netflix::Variant> >(std::pair<std::string, netflix::Variant>&&)@@Base>
  3151f8:	e1a00009 	mov	r0, r9
  3151fc:	e28d90a0 	add	r9, sp, #160	@ 0xa0
  315200:	ebfd561e 	bl	26aa80 <netflix::Variant::clear()@@Base>
  315204:	e59d0110 	ldr	r0, [sp, #272]	@ 0x110
  315208:	e1a01009 	mov	r1, r9
  31520c:	e240000c 	sub	r0, r0, #12
  315210:	ebfceae0 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315214:	e59f1934 	ldr	r1, [pc, #2356]	@ 315b50 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb00>
  315218:	e28d006c 	add	r0, sp, #108	@ 0x6c
  31521c:	e28d2058 	add	r2, sp, #88	@ 0x58
  315220:	e08f1001 	add	r1, pc, r1
  315224:	ebfcf243 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  315228:	e59d30f8 	ldr	r3, [sp, #248]	@ 0xf8
  31522c:	e3a02000 	mov	r2, #0
  315230:	e3a01004 	mov	r1, #4
  315234:	e58d4118 	str	r4, [sp, #280]	@ 0x118
  315238:	e1530002 	cmp	r3, r2
  31523c:	e58d1110 	str	r1, [sp, #272]	@ 0x110
  315240:	e58d211c 	str	r2, [sp, #284]	@ 0x11c
  315244:	0a00018e 	beq	315884 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x834>
  315248:	e3530003 	cmp	r3, #3
  31524c:	0a000189 	beq	315878 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x828>
  315250:	e59d206c 	ldr	r2, [sp, #108]	@ 0x6c
  315254:	e28d4f4e 	add	r4, sp, #312	@ 0x138
  315258:	e59d3100 	ldr	r3, [sp, #256]	@ 0x100
  31525c:	e28dce13 	add	ip, sp, #304	@ 0x130
  315260:	e58dc01c 	str	ip, [sp, #28]
  315264:	e1a00004 	mov	r0, r4
  315268:	e59dc010 	ldr	ip, [sp, #16]
  31526c:	e1a0100a 	mov	r1, sl
  315270:	e58d2130 	str	r2, [sp, #304]	@ 0x130
  315274:	e58d300c 	str	r3, [sp, #12]
  315278:	e28c200c 	add	r2, ip, #12
  31527c:	e58d206c 	str	r2, [sp, #108]	@ 0x6c
  315280:	e3a02000 	mov	r2, #0
  315284:	e58d2138 	str	r2, [sp, #312]	@ 0x138
  315288:	ebfdac59 	bl	2803f4 <netflix::Variant::take(netflix::Variant&&)@@Base>
  31528c:	e59d300c 	ldr	r3, [sp, #12]
  315290:	e28d2e13 	add	r2, sp, #304	@ 0x130
  315294:	e28d0078 	add	r0, sp, #120	@ 0x78
  315298:	e2831008 	add	r1, r3, #8
  31529c:	ebfe91fa 	bl	2b9a8c <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, netflix::Variant> >, bool> std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_insert_unique<std::pair<std::string, netflix::Variant> >(std::pair<std::string, netflix::Variant>&&)@@Base>
  3152a0:	e1a00004 	mov	r0, r4
  3152a4:	ebfd55f5 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3152a8:	e59d0130 	ldr	r0, [sp, #304]	@ 0x130
  3152ac:	e1a01009 	mov	r1, r9
  3152b0:	e240000c 	sub	r0, r0, #12
  3152b4:	ebfceab7 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3152b8:	e1a0000a 	mov	r0, sl
  3152bc:	ebfd55ef 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3152c0:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  3152c4:	e1a01009 	mov	r1, r9
  3152c8:	e240000c 	sub	r0, r0, #12
  3152cc:	ebfceab1 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3152d0:	e3a00060 	mov	r0, #96	@ 0x60
  3152d4:	ebfce67d 	bl	24ecd0 <operator new(unsigned int)@plt>
  3152d8:	e59f3874 	ldr	r3, [pc, #2164]	@ 315b54 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb04>
  3152dc:	e1a0a000 	mov	sl, r0
  3152e0:	e1cd03d0 	ldrd	r0, [sp, #48]	@ 0x30
  3152e4:	e7973003 	ldr	r3, [r7, r3]
  3152e8:	e1ca00f8 	strd	r0, [sl, #8]
  3152ec:	e2833008 	add	r3, r3, #8
  3152f0:	e58a3000 	str	r3, [sl]
  3152f4:	eb17b85e 	bl	903474 <netflix::Thread::currentThreadId()@@Base>
  3152f8:	e58a0010 	str	r0, [sl, #16]
  3152fc:	e3a03001 	mov	r3, #1
  315300:	e1a0100b 	mov	r1, fp
  315304:	e58a3014 	str	r3, [sl, #20]
  315308:	e28a0018 	add	r0, sl, #24
  31530c:	ebfced5c 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  315310:	e28db0f8 	add	fp, sp, #248	@ 0xf8
  315314:	e1a0000a 	mov	r0, sl
  315318:	e3a03000 	mov	r3, #0
  31531c:	e5a03020 	str	r3, [r0, #32]!
  315320:	e1a0100b 	mov	r1, fp
  315324:	ebfd54e7 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  315328:	e59d2010 	ldr	r2, [sp, #16]
  31532c:	e3a01000 	mov	r1, #0
  315330:	e3a00010 	mov	r0, #16
  315334:	e58a1038 	str	r1, [sl, #56]	@ 0x38
  315338:	e282300c 	add	r3, r2, #12
  31533c:	e58a1058 	str	r1, [sl, #88]	@ 0x58
  315340:	e58a3048 	str	r3, [sl, #72]	@ 0x48
  315344:	e3a02000 	mov	r2, #0
  315348:	e3a03000 	mov	r3, #0
  31534c:	e58a105c 	str	r1, [sl, #92]	@ 0x5c
  315350:	e1ca24f0 	strd	r2, [sl, #64]	@ 0x40
  315354:	e3a02001 	mov	r2, #1
  315358:	e3a03000 	mov	r3, #0
  31535c:	e1ca25f0 	strd	r2, [sl, #80]	@ 0x50
  315360:	e58d1084 	str	r1, [sp, #132]	@ 0x84
  315364:	e58da080 	str	sl, [sp, #128]	@ 0x80
  315368:	ebfce658 	bl	24ecd0 <operator new(unsigned int)@plt>
  31536c:	e59f37e4 	ldr	r3, [pc, #2020]	@ 315b58 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb08>
  315370:	e3a01001 	mov	r1, #1
  315374:	e28d4f56 	add	r4, sp, #344	@ 0x158
  315378:	e5801004 	str	r1, [r0, #4]
  31537c:	e5801008 	str	r1, [r0, #8]
  315380:	e3a02000 	mov	r2, #0
  315384:	e7973003 	ldr	r3, [r7, r3]
  315388:	e580a00c 	str	sl, [r0, #12]
  31538c:	e2833008 	add	r3, r3, #8
  315390:	e5803000 	str	r3, [r0]
  315394:	e58d0084 	str	r0, [sp, #132]	@ 0x84
  315398:	e3a03000 	mov	r3, #0
  31539c:	e534c0d8 	ldr	ip, [r4, #-216]!	@ 0xffffff28
  3153a0:	e58c1038 	str	r1, [ip, #56]	@ 0x38
  3153a4:	e1a00004 	mov	r0, r4
  3153a8:	e1cc24f0 	strd	r2, [ip, #64]	@ 0x40
  3153ac:	ebfd5749 	bl	26b0d8 <netflix::instrumentation::push_back(std::shared_ptr<netflix::instrumentation::Event> const&)@@Base>
  3153b0:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  3153b4:	e3500000 	cmp	r0, #0
  3153b8:	0a000000 	beq	3153c0 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x370>
  3153bc:	ebfd556c 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3153c0:	e1a0000b 	mov	r0, fp
  3153c4:	ebfd55ad 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3153c8:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  3153cc:	ebfd55ab 	bl	26aa80 <netflix::Variant::clear()@@Base>
  3153d0:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  3153d4:	e1a01009 	mov	r1, r9
  3153d8:	e240000c 	sub	r0, r0, #12
  3153dc:	ebfcea6d 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3153e0:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  3153e4:	e1a01009 	mov	r1, r9
  3153e8:	e240000c 	sub	r0, r0, #12
  3153ec:	ebfcea69 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3153f0:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  3153f4:	e1a01009 	mov	r1, r9
  3153f8:	e240000c 	sub	r0, r0, #12
  3153fc:	ebfcea65 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315400:	e5963000 	ldr	r3, [r6]
  315404:	e1a00006 	mov	r0, r6
  315408:	e593300c 	ldr	r3, [r3, #12]
  31540c:	e12fff33 	blx	r3
  315410:	ebfda993 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  315414:	e3a02040 	mov	r2, #64	@ 0x40
  315418:	e1cd01f0 	strd	r0, [sp, #16]
  31541c:	e1a00009 	mov	r0, r9
  315420:	e3a01000 	mov	r1, #0
  315424:	ebfcef23 	bl	2510b8 <memset@plt>
  315428:	e28d0040 	add	r0, sp, #64	@ 0x40
  31542c:	e3a03001 	mov	r3, #1
  315430:	e5cd30d8 	strb	r3, [sp, #216]	@ 0xd8
  315434:	eb15b2fe 	bl	882034 <netflix::Application::timeSinceApplicationStarted()@@Base>
  315438:	e30f3ee8 	movw	r3, #65256	@ 0xfee8
  31543c:	e1a01005 	mov	r1, r5
  315440:	e28dcf56 	add	ip, sp, #344	@ 0x158
  315444:	e4d10004 	ldrb	r0, [r1], #4
  315448:	e34f3fff 	movt	r3, #65535	@ 0xffff
  31544c:	e28da0b4 	add	sl, sp, #180	@ 0xb4
  315450:	e18320dc 	ldrd	r2, [r3, ip]
  315454:	e5cd00b0 	strb	r0, [sp, #176]	@ 0xb0
  315458:	e1a0000a 	mov	r0, sl
  31545c:	e1cd2af0 	strd	r2, [sp, #160]	@ 0xa0
  315460:	ebfced07 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  315464:	e59641d0 	ldr	r4, [r6, #464]	@ 0x1d0
  315468:	e59631d4 	ldr	r3, [r6, #468]	@ 0x1d4
  31546c:	e5952008 	ldr	r2, [r5, #8]
  315470:	e5951010 	ldr	r1, [r5, #16]
  315474:	e1540003 	cmp	r4, r3
  315478:	e595300c 	ldr	r3, [r5, #12]
  31547c:	e58d20b8 	str	r2, [sp, #184]	@ 0xb8
  315480:	e58d10c0 	str	r1, [sp, #192]	@ 0xc0
  315484:	e5952014 	ldr	r2, [r5, #20]
  315488:	e595101c 	ldr	r1, [r5, #28]
  31548c:	e58d30bc 	str	r3, [sp, #188]	@ 0xbc
  315490:	e5953018 	ldr	r3, [r5, #24]
  315494:	e596b1cc 	ldr	fp, [r6, #460]	@ 0x1cc
  315498:	e58d20c4 	str	r2, [sp, #196]	@ 0xc4
  31549c:	e58d30c8 	str	r3, [sp, #200]	@ 0xc8
  3154a0:	e06bb004 	rsb	fp, fp, r4
  3154a4:	e1d522b0 	ldrh	r2, [r5, #32]
  3154a8:	e5d53022 	ldrb	r3, [r5, #34]	@ 0x22
  3154ac:	e1a0b34b 	asr	fp, fp, #6
  3154b0:	e58d10cc 	str	r1, [sp, #204]	@ 0xcc
  3154b4:	e5981008 	ldr	r1, [r8, #8]
  3154b8:	e1cd2db0 	strh	r2, [sp, #208]	@ 0xd0
  3154bc:	e5cd30d2 	strb	r3, [sp, #210]	@ 0xd2
  3154c0:	e58d10d4 	str	r1, [sp, #212]	@ 0xd4
  3154c4:	0a000105 	beq	3158e0 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x890>
  3154c8:	e3540000 	cmp	r4, #0
  3154cc:	0a00001e 	beq	31554c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x4fc>
  3154d0:	e1cd2ad8 	ldrd	r2, [sp, #168]	@ 0xa8
  3154d4:	e1a0100a 	mov	r1, sl
  3154d8:	e5ddc0b0 	ldrb	ip, [sp, #176]	@ 0xb0
  3154dc:	e2840014 	add	r0, r4, #20
  3154e0:	e1c420f8 	strd	r2, [r4, #8]
  3154e4:	e1cd2ad0 	ldrd	r2, [sp, #160]	@ 0xa0
  3154e8:	e5c4c010 	strb	ip, [r4, #16]
  3154ec:	e1c420f0 	strd	r2, [r4]
  3154f0:	ebfcece3 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3154f4:	e59d20b8 	ldr	r2, [sp, #184]	@ 0xb8
  3154f8:	e59d30c0 	ldr	r3, [sp, #192]	@ 0xc0
  3154fc:	e59d10c8 	ldr	r1, [sp, #200]	@ 0xc8
  315500:	e59dc0bc 	ldr	ip, [sp, #188]	@ 0xbc
  315504:	e59d00c4 	ldr	r0, [sp, #196]	@ 0xc4
  315508:	e5842018 	str	r2, [r4, #24]
  31550c:	e59d20cc 	ldr	r2, [sp, #204]	@ 0xcc
  315510:	e5843020 	str	r3, [r4, #32]
  315514:	e5dd30d2 	ldrb	r3, [sp, #210]	@ 0xd2
  315518:	e584c01c 	str	ip, [r4, #28]
  31551c:	e584202c 	str	r2, [r4, #44]	@ 0x2c
  315520:	e5840024 	str	r0, [r4, #36]	@ 0x24
  315524:	e5841028 	str	r1, [r4, #40]	@ 0x28
  315528:	e59d10d4 	ldr	r1, [sp, #212]	@ 0xd4
  31552c:	e1dd2db0 	ldrh	r2, [sp, #208]	@ 0xd0
  315530:	e5c43032 	strb	r3, [r4, #50]	@ 0x32
  315534:	e5dd30d8 	ldrb	r3, [sp, #216]	@ 0xd8
  315538:	e5841034 	str	r1, [r4, #52]	@ 0x34
  31553c:	e1c423b0 	strh	r2, [r4, #48]	@ 0x30
  315540:	e5c43038 	strb	r3, [r4, #56]	@ 0x38
  315544:	e5981008 	ldr	r1, [r8, #8]
  315548:	e59641d0 	ldr	r4, [r6, #464]	@ 0x1d0
  31554c:	e2844040 	add	r4, r4, #64	@ 0x40
  315550:	e58641d0 	str	r4, [r6, #464]	@ 0x1d0
  315554:	e3510000 	cmp	r1, #0
  315558:	e3a03000 	mov	r3, #0
  31555c:	028d9088 	addeq	r9, sp, #136	@ 0x88
  315560:	e58d3088 	str	r3, [sp, #136]	@ 0x88
  315564:	e58d308c 	str	r3, [sp, #140]	@ 0x8c
  315568:	e58d3090 	str	r3, [sp, #144]	@ 0x90
  31556c:	0a000009 	beq	315598 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x548>
  315570:	e5980000 	ldr	r0, [r8]
  315574:	e28d9088 	add	r9, sp, #136	@ 0x88
  315578:	e3500000 	cmp	r0, #0
  31557c:	15900014 	ldrne	r0, [r0, #20]
  315580:	15983004 	ldrne	r3, [r8, #4]
  315584:	10800003 	addne	r0, r0, r3
  315588:	eb172503 	bl	8de99c <netflix::StringCompressor::detect(unsigned char const*, unsigned int)@@Base>
  31558c:	e3500000 	cmp	r0, #0
  315590:	e28d9088 	add	r9, sp, #136	@ 0x88
  315594:	1a00009e 	bne	315814 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x7c4>
  315598:	e1a02008 	mov	r2, r8
  31559c:	e5964038 	ldr	r4, [r6, #56]	@ 0x38
  3155a0:	e5961034 	ldr	r1, [r6, #52]	@ 0x34
  3155a4:	e3540000 	cmp	r4, #0
  3155a8:	0a000005 	beq	3155c4 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x574>
  3155ac:	e1a00004 	mov	r0, r4
  3155b0:	e58d1008 	str	r1, [sp, #8]
  3155b4:	e58d200c 	str	r2, [sp, #12]
  3155b8:	ebfdbe15 	bl	284e14 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()@@Base>
  3155bc:	e59d200c 	ldr	r2, [sp, #12]
  3155c0:	e59d1008 	ldr	r1, [sp, #8]
  3155c4:	e59d302c 	ldr	r3, [sp, #44]	@ 0x2c
  3155c8:	e28da078 	add	sl, sp, #120	@ 0x78
  3155cc:	e1a0000a 	mov	r0, sl
  3155d0:	e58d3000 	str	r3, [sp]
  3155d4:	e1a03005 	mov	r3, r5
  3155d8:	eb059cb5 	bl	47c8b4 <netflix::ScriptEngine::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*)@@Base>
  3155dc:	e3540000 	cmp	r4, #0
  3155e0:	0a000001 	beq	3155ec <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x59c>
  3155e4:	e1a00004 	mov	r0, r4
  3155e8:	ebfd54e1 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3155ec:	e59dc028 	ldr	ip, [sp, #40]	@ 0x28
  3155f0:	e35c0000 	cmp	ip, #0
  3155f4:	0a000002 	beq	315604 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x5b4>
  3155f8:	e1a0000c 	mov	r0, ip
  3155fc:	e1a0100a 	mov	r1, sl
  315600:	eb05daa7 	bl	48c0a4 <netflix::ScriptEngine::Value::operator=(netflix::ScriptEngine::Value&&)@@Base>
  315604:	ebfda916 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  315608:	e1cd21d0 	ldrd	r2, [sp, #16]
  31560c:	e1530001 	cmp	r3, r1
  315610:	01520000 	cmpeq	r2, r0
  315614:	83a02000 	movhi	r2, #0
  315618:	83a03000 	movhi	r3, #0
  31561c:	8a000001 	bhi	315628 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x5d8>
  315620:	e0502002 	subs	r2, r0, r2
  315624:	e0c13003 	sbc	r3, r1, r3
  315628:	e596c1cc 	ldr	ip, [r6, #460]	@ 0x1cc
  31562c:	e3a01000 	mov	r1, #0
  315630:	e1a00006 	mov	r0, r6
  315634:	e08cb30b 	add	fp, ip, fp, lsl #6
  315638:	e1cb20f8 	strd	r2, [fp, #8]
  31563c:	e5cb1038 	strb	r1, [fp, #56]	@ 0x38
  315640:	ebfff061 	bl	3117cc <netflix::gibbon::GibbonScriptBindings::dirtyGCTimer()@@Base>
  315644:	f57ff05f 	dmb	sy
  315648:	e59dc020 	ldr	ip, [sp, #32]
  31564c:	e5dc3000 	ldrb	r3, [ip]
  315650:	f57ff05f 	dmb	sy
  315654:	e3530000 	cmp	r3, #0
  315658:	028d4080 	addeq	r4, sp, #128	@ 0x80
  31565c:	0a000059 	beq	3157c8 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x778>
  315660:	ebfda8ff 	bl	27fa64 <netflix::Time::monoMS()@@Base>
  315664:	e28d2060 	add	r2, sp, #96	@ 0x60
  315668:	e1a05001 	mov	r5, r1
  31566c:	e59f14e8 	ldr	r1, [pc, #1256]	@ 315b5c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb0c>
  315670:	e1a04000 	mov	r4, r0
  315674:	e28d006c 	add	r0, sp, #108	@ 0x6c
  315678:	e08f1001 	add	r1, pc, r1
  31567c:	ebfcf12d 	bl	251b38 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)@plt>
  315680:	e5983000 	ldr	r3, [r8]
  315684:	e28db070 	add	fp, sp, #112	@ 0x70
  315688:	e59f14d0 	ldr	r1, [pc, #1232]	@ 315b60 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb10>
  31568c:	e3530000 	cmp	r3, #0
  315690:	e1a0000b 	mov	r0, fp
  315694:	e08f1001 	add	r1, pc, r1
  315698:	15932014 	ldrne	r2, [r3, #20]
  31569c:	15983004 	ldrne	r3, [r8, #4]
  3156a0:	10823003 	addne	r3, r2, r3
  3156a4:	e59d206c 	ldr	r2, [sp, #108]	@ 0x6c
  3156a8:	ebfdc851 	bl	2877f4 <netflix::StringFormatterBase<std::string>::sformat(char const*, ...)@@Base>
  3156ac:	e59f34b0 	ldr	r3, [pc, #1200]	@ 315b64 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb14>
  3156b0:	e7978003 	ldr	r8, [r7, r3]
  3156b4:	e5983000 	ldr	r3, [r8]
  3156b8:	e2133001 	ands	r3, r3, #1
  3156bc:	0a00005b 	beq	315830 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x7e0>
  3156c0:	e3a00060 	mov	r0, #96	@ 0x60
  3156c4:	ebfce581 	bl	24ecd0 <operator new(unsigned int)@plt>
  3156c8:	e59f3484 	ldr	r3, [pc, #1156]	@ 315b54 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb04>
  3156cc:	e1a08000 	mov	r8, r0
  3156d0:	e7973003 	ldr	r3, [r7, r3]
  3156d4:	e1c040f8 	strd	r4, [r0, #8]
  3156d8:	e2833008 	add	r3, r3, #8
  3156dc:	e5803000 	str	r3, [r0]
  3156e0:	eb17b763 	bl	903474 <netflix::Thread::currentThreadId()@@Base>
  3156e4:	e5880010 	str	r0, [r8, #16]
  3156e8:	e3a03001 	mov	r3, #1
  3156ec:	e1a0100b 	mov	r1, fp
  3156f0:	e2880018 	add	r0, r8, #24
  3156f4:	e5883014 	str	r3, [r8, #20]
  3156f8:	ebfcec61 	bl	250884 <std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&)@plt>
  3156fc:	e59f3464 	ldr	r3, [pc, #1124]	@ 315b68 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb18>
  315700:	e1a00008 	mov	r0, r8
  315704:	e3a02000 	mov	r2, #0
  315708:	e5a02020 	str	r2, [r0, #32]!
  31570c:	e7971003 	ldr	r1, [r7, r3]
  315710:	ebfd53ec 	bl	26a6c8 <netflix::Variant::copy(netflix::Variant const&)@@Base>
  315714:	e59f0430 	ldr	r0, [pc, #1072]	@ 315b4c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xafc>
  315718:	e3a01000 	mov	r1, #0
  31571c:	e3a02000 	mov	r2, #0
  315720:	e5881038 	str	r1, [r8, #56]	@ 0x38
  315724:	e3a03000 	mov	r3, #0
  315728:	e1c824f0 	strd	r2, [r8, #64]	@ 0x40
  31572c:	e797c000 	ldr	ip, [r7, r0]
  315730:	e3a02001 	mov	r2, #1
  315734:	e5881058 	str	r1, [r8, #88]	@ 0x58
  315738:	e3a03000 	mov	r3, #0
  31573c:	e588105c 	str	r1, [r8, #92]	@ 0x5c
  315740:	e28cc00c 	add	ip, ip, #12
  315744:	e1c825f0 	strd	r2, [r8, #80]	@ 0x50
  315748:	e3a00010 	mov	r0, #16
  31574c:	e588c048 	str	ip, [r8, #72]	@ 0x48
  315750:	e58d1084 	str	r1, [sp, #132]	@ 0x84
  315754:	e58d8080 	str	r8, [sp, #128]	@ 0x80
  315758:	ebfce55c 	bl	24ecd0 <operator new(unsigned int)@plt>
  31575c:	e59f13f4 	ldr	r1, [pc, #1012]	@ 315b58 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb08>
  315760:	e3a03001 	mov	r3, #1
  315764:	e28d4f56 	add	r4, sp, #344	@ 0x158
  315768:	e5803004 	str	r3, [r0, #4]
  31576c:	e5803008 	str	r3, [r0, #8]
  315770:	e3a02006 	mov	r2, #6
  315774:	e7973001 	ldr	r3, [r7, r1]
  315778:	e580800c 	str	r8, [r0, #12]
  31577c:	e2833008 	add	r3, r3, #8
  315780:	e5803000 	str	r3, [r0]
  315784:	e58d0084 	str	r0, [sp, #132]	@ 0x84
  315788:	e53430d8 	ldr	r3, [r4, #-216]!	@ 0xffffff28
  31578c:	e5832038 	str	r2, [r3, #56]	@ 0x38
  315790:	e1a00004 	mov	r0, r4
  315794:	ebfd564f 	bl	26b0d8 <netflix::instrumentation::push_back(std::shared_ptr<netflix::instrumentation::Event> const&)@@Base>
  315798:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  31579c:	e3500000 	cmp	r0, #0
  3157a0:	0a000000 	beq	3157a8 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x758>
  3157a4:	ebfd5472 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3157a8:	e59d0070 	ldr	r0, [sp, #112]	@ 0x70
  3157ac:	e1a01004 	mov	r1, r4
  3157b0:	e240000c 	sub	r0, r0, #12
  3157b4:	ebfce977 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3157b8:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  3157bc:	e1a01004 	mov	r1, r4
  3157c0:	e240000c 	sub	r0, r0, #12
  3157c4:	ebfce973 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3157c8:	e1a0000a 	mov	r0, sl
  3157cc:	eb05d9ed 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  3157d0:	e1a00009 	mov	r0, r9
  3157d4:	ebffee03 	bl	310fe8 <ScreenRenderEvent::eventFired()@@Base+0xe8>
  3157d8:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  3157dc:	e1a01004 	mov	r1, r4
  3157e0:	e240000c 	sub	r0, r0, #12
  3157e4:	ebfce96b 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3157e8:	e5963000 	ldr	r3, [r6]
  3157ec:	e1a00006 	mov	r0, r6
  3157f0:	e5933010 	ldr	r3, [r3, #16]
  3157f4:	e12fff33 	blx	r3
  3157f8:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
  3157fc:	e59d2154 	ldr	r2, [sp, #340]	@ 0x154
  315800:	e5903000 	ldr	r3, [r0]
  315804:	e1520003 	cmp	r2, r3
  315808:	1a000039 	bne	3158f4 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8a4>
  31580c:	e28ddf57 	add	sp, sp, #348	@ 0x15c
  315810:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  315814:	e1a02008 	mov	r2, r8
  315818:	e1a01009 	mov	r1, r9
  31581c:	eb1721f9 	bl	8de008 <netflix::StringCompressor::decompress(netflix::StringCompressor::Method, netflix::DataBuffer&, netflix::DataBuffer const&)@@Base>
  315820:	e3500000 	cmp	r0, #0
  315824:	0affff5b 	beq	315598 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x548>
  315828:	e1a02009 	mov	r2, r9
  31582c:	eaffff5a 	b	31559c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x54c>
  315830:	e1a00008 	mov	r0, r8
  315834:	e58d300c 	str	r3, [sp, #12]
  315838:	ebfcead6 	bl	250398 <__cxa_guard_acquire@plt>
  31583c:	e59d300c 	ldr	r3, [sp, #12]
  315840:	e3500000 	cmp	r0, #0
  315844:	0affff9d 	beq	3156c0 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x670>
  315848:	e59f2318 	ldr	r2, [pc, #792]	@ 315b68 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb18>
  31584c:	e1a00008 	mov	r0, r8
  315850:	e7978002 	ldr	r8, [r7, r2]
  315854:	e5883000 	str	r3, [r8]
  315858:	ebfcf191 	bl	251ea4 <__cxa_guard_release@plt>
  31585c:	e59f3308 	ldr	r3, [pc, #776]	@ 315b6c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb1c>
  315860:	e1a00008 	mov	r0, r8
  315864:	e59f2304 	ldr	r2, [pc, #772]	@ 315b70 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xb20>
  315868:	e7971003 	ldr	r1, [r7, r3]
  31586c:	e08f2002 	add	r2, pc, r2
  315870:	ebfce828 	bl	24f918 <__aeabi_atexit@plt>
  315874:	eaffff91 	b	3156c0 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x670>
  315878:	e28d00f8 	add	r0, sp, #248	@ 0xf8
  31587c:	ebfdef16 	bl	2914dc <netflix::Variant::detach()@@Base>
  315880:	eafffe72 	b	315250 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x200>
  315884:	e3a00020 	mov	r0, #32
  315888:	e58d30a4 	str	r3, [sp, #164]	@ 0xa4
  31588c:	e58d30a8 	str	r3, [sp, #168]	@ 0xa8
  315890:	e58d30b4 	str	r3, [sp, #180]	@ 0xb4
  315894:	e3a03003 	mov	r3, #3
  315898:	e58d30f8 	str	r3, [sp, #248]	@ 0xf8
  31589c:	e28d30a4 	add	r3, sp, #164	@ 0xa4
  3158a0:	e58d30ac 	str	r3, [sp, #172]	@ 0xac
  3158a4:	e58d30b0 	str	r3, [sp, #176]	@ 0xb0
  3158a8:	ebfce508 	bl	24ecd0 <operator new(unsigned int)@plt>
  3158ac:	e59d101c 	ldr	r1, [sp, #28]
  3158b0:	e1a04000 	mov	r4, r0
  3158b4:	e3a03001 	mov	r3, #1
  3158b8:	e5843004 	str	r3, [r4, #4]
  3158bc:	e2812008 	add	r2, r1, #8
  3158c0:	e1a01009 	mov	r1, r9
  3158c4:	e4802008 	str	r2, [r0], #8
  3158c8:	ebfdeed4 	bl	291420 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_Rb_tree(std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > > const&)@@Base>
  3158cc:	e1a00009 	mov	r0, r9
  3158d0:	e59d10a8 	ldr	r1, [sp, #168]	@ 0xa8
  3158d4:	e58d4100 	str	r4, [sp, #256]	@ 0x100
  3158d8:	ebfd56ae 	bl	26b398 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, netflix::Variant> >*)@@Base>
  3158dc:	eafffe5b 	b	315250 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x200>
  3158e0:	e1a01009 	mov	r1, r9
  3158e4:	e2860f73 	add	r0, r6, #460	@ 0x1cc
  3158e8:	eb002071 	bl	31dab4 <void std::vector<netflix::gibbon::GibbonScriptBindings::ScriptLoad, std::allocator<netflix::gibbon::GibbonScriptBindings::ScriptLoad> >::_M_emplace_back_aux<netflix::gibbon::GibbonScriptBindings::ScriptLoad const&>(netflix::gibbon::GibbonScriptBindings::ScriptLoad const&)@@Base>
  3158ec:	e5981008 	ldr	r1, [r8, #8]
  3158f0:	eaffff17 	b	315554 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x504>
  3158f4:	ebfce4e6 	bl	24ec94 <__stack_chk_fail@plt>
  3158f8:	e59d203c 	ldr	r2, [sp, #60]	@ 0x3c
  3158fc:	e1a00004 	mov	r0, r4
  315900:	e2823008 	add	r3, r2, #8
  315904:	e5843000 	str	r3, [r4]
  315908:	ebfcea60 	bl	250290 <operator delete(void*)@plt>
  31590c:	e1a00009 	mov	r0, r9
  315910:	e59d10a8 	ldr	r1, [sp, #168]	@ 0xa8
  315914:	ebfd569f 	bl	26b398 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, netflix::Variant> >*)@@Base>
  315918:	e1a0000a 	mov	r0, sl
  31591c:	ebfd5457 	bl	26aa80 <netflix::Variant::clear()@@Base>
  315920:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  315924:	e28d1054 	add	r1, sp, #84	@ 0x54
  315928:	e240000c 	sub	r0, r0, #12
  31592c:	ebfce919 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315930:	e59d0038 	ldr	r0, [sp, #56]	@ 0x38
  315934:	ebfd5451 	bl	26aa80 <netflix::Variant::clear()@@Base>
  315938:	e59d0068 	ldr	r0, [sp, #104]	@ 0x68
  31593c:	e28d4050 	add	r4, sp, #80	@ 0x50
  315940:	e240000c 	sub	r0, r0, #12
  315944:	e1a01004 	mov	r1, r4
  315948:	ebfce912 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  31594c:	e59d0064 	ldr	r0, [sp, #100]	@ 0x64
  315950:	e1a01004 	mov	r1, r4
  315954:	e240000c 	sub	r0, r0, #12
  315958:	ebfce90e 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  31595c:	e59d0060 	ldr	r0, [sp, #96]	@ 0x60
  315960:	e1a01004 	mov	r1, r4
  315964:	e240000c 	sub	r0, r0, #12
  315968:	ebfce90a 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  31596c:	ebfce9ae 	bl	25002c <__cxa_end_cleanup@plt>
  315970:	eaffffe5 	b	31590c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8bc>
  315974:	eaffffe7 	b	315918 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8c8>
  315978:	e28db0f8 	add	fp, sp, #248	@ 0xf8
  31597c:	e1a0000a 	mov	r0, sl
  315980:	ebfcea42 	bl	250290 <operator delete(void*)@plt>
  315984:	e1a0000b 	mov	r0, fp
  315988:	ebfd543c 	bl	26aa80 <netflix::Variant::clear()@@Base>
  31598c:	eaffffe7 	b	315930 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8e0>
  315990:	e59a0018 	ldr	r0, [sl, #24]
  315994:	e28d105c 	add	r1, sp, #92	@ 0x5c
  315998:	e240000c 	sub	r0, r0, #12
  31599c:	ebfce8fd 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3159a0:	eafffff5 	b	31597c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x92c>
  3159a4:	ebfce54d 	bl	24eee0 <__cxa_begin_catch@plt>
  3159a8:	e59a3000 	ldr	r3, [sl]
  3159ac:	e1a0000a 	mov	r0, sl
  3159b0:	e5933004 	ldr	r3, [r3, #4]
  3159b4:	e12fff33 	blx	r3
  3159b8:	ebfce953 	bl	24ff0c <__cxa_rethrow@plt>
  3159bc:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  3159c0:	e3500000 	cmp	r0, #0
  3159c4:	0affffee 	beq	315984 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x934>
  3159c8:	ebfd53e9 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  3159cc:	eaffffec 	b	315984 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x934>
  3159d0:	ebfcf010 	bl	251a18 <__cxa_end_catch@plt>
  3159d4:	eaffffea 	b	315984 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x934>
  3159d8:	e28db064 	add	fp, sp, #100	@ 0x64
  3159dc:	e1a0000a 	mov	r0, sl
  3159e0:	eb05d968 	bl	48bf88 <netflix::ScriptEngine::Value::~Value()@@Base>
  3159e4:	e1a00009 	mov	r0, r9
  3159e8:	ebffed7e 	bl	310fe8 <ScreenRenderEvent::eventFired()@@Base+0xe8>
  3159ec:	e59d00b4 	ldr	r0, [sp, #180]	@ 0xb4
  3159f0:	e1a0100b 	mov	r1, fp
  3159f4:	e240000c 	sub	r0, r0, #12
  3159f8:	ebfce8e6 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  3159fc:	e5963000 	ldr	r3, [r6]
  315a00:	e1a00006 	mov	r0, r6
  315a04:	e5933010 	ldr	r3, [r3, #16]
  315a08:	e12fff33 	blx	r3
  315a0c:	ebfce986 	bl	25002c <__cxa_end_cleanup@plt>
  315a10:	e59d0084 	ldr	r0, [sp, #132]	@ 0x84
  315a14:	e3500000 	cmp	r0, #0
  315a18:	0a000000 	beq	315a20 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9d0>
  315a1c:	ebfd53d4 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  315a20:	e59d0070 	ldr	r0, [sp, #112]	@ 0x70
  315a24:	e28db064 	add	fp, sp, #100	@ 0x64
  315a28:	e240000c 	sub	r0, r0, #12
  315a2c:	e1a0100b 	mov	r1, fp
  315a30:	ebfce8d8 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315a34:	e59d006c 	ldr	r0, [sp, #108]	@ 0x6c
  315a38:	e1a0100b 	mov	r1, fp
  315a3c:	e240000c 	sub	r0, r0, #12
  315a40:	ebfce8d4 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315a44:	eaffffe4 	b	3159dc <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x98c>
  315a48:	ebfce524 	bl	24eee0 <__cxa_begin_catch@plt>
  315a4c:	e5983000 	ldr	r3, [r8]
  315a50:	e1a00008 	mov	r0, r8
  315a54:	e5933004 	ldr	r3, [r3, #4]
  315a58:	e12fff33 	blx	r3
  315a5c:	ebfce92a 	bl	24ff0c <__cxa_rethrow@plt>
  315a60:	e5980018 	ldr	r0, [r8, #24]
  315a64:	e28d1068 	add	r1, sp, #104	@ 0x68
  315a68:	e240000c 	sub	r0, r0, #12
  315a6c:	ebfce8c9 	bl	24fd98 <std::string::_Rep::_M_dispose(std::allocator<char> const&)@plt>
  315a70:	e1a00008 	mov	r0, r8
  315a74:	ebfcea05 	bl	250290 <operator delete(void*)@plt>
  315a78:	eaffffe8 	b	315a20 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9d0>
  315a7c:	ebfcefe5 	bl	251a18 <__cxa_end_catch@plt>
  315a80:	eaffffe6 	b	315a20 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9d0>
  315a84:	e28db064 	add	fp, sp, #100	@ 0x64
  315a88:	eaffffd7 	b	3159ec <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x99c>
  315a8c:	eaffffda 	b	3159fc <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9ac>
  315a90:	e28d4050 	add	r4, sp, #80	@ 0x50
  315a94:	eaffffb0 	b	31595c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x90c>
  315a98:	eaffffa6 	b	315938 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8e8>
  315a9c:	e28d0e13 	add	r0, sp, #304	@ 0x130
  315aa0:	ebfe4ac3 	bl	2a85b4 <std::pair<std::string, netflix::Variant>::~pair()@@Base>
  315aa4:	eaffff9b 	b	315918 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8c8>
  315aa8:	e28db0f8 	add	fp, sp, #248	@ 0xf8
  315aac:	eaffffb4 	b	315984 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x934>
  315ab0:	e28db064 	add	fp, sp, #100	@ 0x64
  315ab4:	eaffffca 	b	3159e4 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x994>
  315ab8:	eaffffec 	b	315a70 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xa20>
  315abc:	e28d4050 	add	r4, sp, #80	@ 0x50
  315ac0:	eaffffa1 	b	31594c <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8fc>
  315ac4:	eaffff99 	b	315930 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8e0>
  315ac8:	e1a0000a 	mov	r0, sl
  315acc:	ebfe4ab8 	bl	2a85b4 <std::pair<std::string, netflix::Variant>::~pair()@@Base>
  315ad0:	eaffff96 	b	315930 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8e0>
  315ad4:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  315ad8:	e2803008 	add	r3, r0, #8
  315adc:	e1a0000a 	mov	r0, sl
  315ae0:	e58a3000 	str	r3, [sl]
  315ae4:	ebfce9e9 	bl	250290 <operator delete(void*)@plt>
  315ae8:	e59d1090 	ldr	r1, [sp, #144]	@ 0x90
  315aec:	e1a00009 	mov	r0, r9
  315af0:	ebfd5628 	bl	26b398 <std::_Rb_tree<std::string, std::pair<std::string const, netflix::Variant>, std::_Select1st<std::pair<std::string const, netflix::Variant> >, std::less<std::string>, std::allocator<std::pair<std::string const, netflix::Variant> > >::_M_erase(std::_Rb_tree_node<std::pair<std::string const, netflix::Variant> >*)@@Base>
  315af4:	e28d10e0 	add	r1, sp, #224	@ 0xe0
  315af8:	e58d1038 	str	r1, [sp, #56]	@ 0x38
  315afc:	eaffff8b 	b	315930 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x8e0>
  315b00:	e28d9088 	add	r9, sp, #136	@ 0x88
  315b04:	eafffff7 	b	315ae8 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xa98>
  315b08:	e3540000 	cmp	r4, #0
  315b0c:	0affffe7 	beq	315ab0 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0xa60>
  315b10:	e1a00004 	mov	r0, r4
  315b14:	e28db064 	add	fp, sp, #100	@ 0x64
  315b18:	ebfd5395 	bl	26a974 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()@@Base>
  315b1c:	eaffffb0 	b	3159e4 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x994>
  315b20:	eaffffbe 	b	315a20 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9d0>
  315b24:	e28db064 	add	fp, sp, #100	@ 0x64
  315b28:	eaffffc1 	b	315a34 <netflix::gibbon::GibbonScriptBindings::evaluate(netflix::DataBuffer const&, netflix::Url const&, netflix::ScriptEngine::Value*, netflix::ScriptEngine::Value*)@@Base+0x9e4>
  315b2c:	00712094 			@ <UNDEFINED> instruction: 0x00712094
  315b30:	00003440 	andeq	r3, r0, r0, asr #8
  315b34:	00003384 	andeq	r3, r0, r4, lsl #7
  315b38:	00635cec 	rsbeq	r5, r3, ip, ror #25
  315b3c:	00630684 	rsbeq	r0, r3, r4, lsl #13
  315b40:	0064da78 	rsbeq	sp, r4, r8, ror sl
  315b44:	00003dc0 	andeq	r3, r0, r0, asr #27
  315b48:	000021c0 	andeq	r2, r0, r0, asr #3
  315b4c:	00002278 	andeq	r2, r0, r8, ror r2
  315b50:	00651964 	rsbeq	r1, r5, r4, ror #18
  315b54:	00001988 	andeq	r1, r0, r8, lsl #19
  315b58:	00003278 	andeq	r3, r0, r8, ror r2
  315b5c:	0063573c 	rsbeq	r5, r3, ip, lsr r7
  315b60:	006300d0 	ldrdeq	r0, [r3], #-0	@ <UNPREDICTABLE>
  315b64:	000032ec 	andeq	r3, r0, ip, ror #5
  315b68:	00002384 	andeq	r2, r0, r4, lsl #7
  315b6c:	00003740 	andeq	r3, r0, r0, asr #14
  315b70:	00715790 			@ <UNDEFINED> instruction: 0x00715790
