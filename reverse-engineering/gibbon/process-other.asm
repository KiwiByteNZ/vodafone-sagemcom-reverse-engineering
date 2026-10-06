
../vodafone-custom-page/uploads/netflix.bin:     file format elf32-littlearm


Disassembly of section .text:

00869f00 <Curl_input_ntlm@@Base+0xfc>:
  869f00:	e3a00000 	mov	r0, #0
  869f04:	e5883000 	str	r3, [r8]
  869f08:	eaffffe9 	b	869eb4 <Curl_input_ntlm@@Base+0xb0>
  869f0c:	e1a00007 	mov	r0, r7
  869f10:	ebffffa0 	bl	869d98 <Curl_http_ntlm_cleanup@@Base>
  869f14:	e3a03000 	mov	r3, #0
  869f18:	e3a00009 	mov	r0, #9
  869f1c:	e5883000 	str	r3, [r8]
  869f20:	eaffffe3 	b	869eb4 <Curl_input_ntlm@@Base+0xb0>
  869f24:	e1a00007 	mov	r0, r7
  869f28:	ebffff9a 	bl	869d98 <Curl_http_ntlm_cleanup@@Base>
  869f2c:	eafffff2 	b	869efc <Curl_input_ntlm@@Base+0xf8>
  869f30:	ebe79357 	bl	24ec94 <__stack_chk_fail@plt>
  869f34:	001bd2cc 	andseq	sp, fp, ip, asr #5
  869f38:	00003440 	andeq	r3, r0, r0, asr #8
  869f3c:	000f85ec 	andeq	r8, pc, ip, ror #11
  869f40:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
  869f44:	e59f5488 	ldr	r5, [pc, #1160]	@ 86a3d4 <Curl_input_ntlm@@Base+0x5d0>
  869f48:	e59f2488 	ldr	r2, [pc, #1160]	@ 86a3d8 <Curl_input_ntlm@@Base+0x5d4>
  869f4c:	e1cd60f8 	strd	r6, [sp, #8]
  869f50:	e1a07000 	mov	r7, r0
  869f54:	e1cd81f0 	strd	r8, [sp, #16]
  869f58:	e5903344 	ldr	r3, [r0, #836]	@ 0x344
  869f5c:	e1cda1f8 	strd	sl, [sp, #24]
  869f60:	e08f5005 	add	r5, pc, r5
  869f64:	e58de020 	str	lr, [sp, #32]
  869f68:	e24ddd11 	sub	sp, sp, #1088	@ 0x440
  869f6c:	e7956002 	ldr	r6, [r5, r2]
  869f70:	e24dd00c 	sub	sp, sp, #12
  869f74:	e3730001 	cmn	r3, #1
  869f78:	e5963000 	ldr	r3, [r6]
  869f7c:	e58d3444 	str	r3, [sp, #1092]	@ 0x444
  869f80:	0a00000c 	beq	869fb8 <Curl_input_ntlm@@Base+0x1b4>
  869f84:	e3a00000 	mov	r0, #0
  869f88:	e59d2444 	ldr	r2, [sp, #1092]	@ 0x444
  869f8c:	e5963000 	ldr	r3, [r6]
  869f90:	e1520003 	cmp	r2, r3
  869f94:	1a0000ff 	bne	86a398 <Curl_input_ntlm@@Base+0x594>
  869f98:	e28ddd11 	add	sp, sp, #1088	@ 0x440
  869f9c:	e28dd00c 	add	sp, sp, #12
  869fa0:	e1cd40d0 	ldrd	r4, [sp]
  869fa4:	e1cd60d8 	ldrd	r6, [sp, #8]
  869fa8:	e1cd81d0 	ldrd	r8, [sp, #16]
  869fac:	e1cda1d8 	ldrd	sl, [sp, #24]
  869fb0:	e28dd020 	add	sp, sp, #32
  869fb4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
  869fb8:	e5903348 	ldr	r3, [r0, #840]	@ 0x348
  869fbc:	e3530000 	cmp	r3, #0
  869fc0:	1affffef 	bne	869f84 <Curl_input_ntlm@@Base+0x180>
  869fc4:	e3510000 	cmp	r1, #0
  869fc8:	e1a08001 	mov	r8, r1
  869fcc:	0a000035 	beq	86a0a8 <Curl_input_ntlm@@Base+0x2a4>
  869fd0:	e5d13000 	ldrb	r3, [r1]
  869fd4:	e3530000 	cmp	r3, #0
  869fd8:	0a000032 	beq	86a0a8 <Curl_input_ntlm@@Base+0x2a4>
  869fdc:	e1a04008 	mov	r4, r8
  869fe0:	ea000004 	b	869ff8 <Curl_input_ntlm@@Base+0x1f4>
  869fe4:	e353002f 	cmp	r3, #47	@ 0x2f
  869fe8:	0a000004 	beq	86a000 <Curl_input_ntlm@@Base+0x1fc>
  869fec:	e5f43001 	ldrb	r3, [r4, #1]!
  869ff0:	e3530000 	cmp	r3, #0
  869ff4:	0a000056 	beq	86a154 <Curl_input_ntlm@@Base+0x350>
  869ff8:	e353005c 	cmp	r3, #92	@ 0x5c
  869ffc:	1afffff8 	bne	869fe4 <Curl_input_ntlm@@Base+0x1e0>
  86a000:	e59f33d4 	ldr	r3, [pc, #980]	@ 86a3dc <Curl_input_ntlm@@Base+0x5d8>
  86a004:	e1a00008 	mov	r0, r8
  86a008:	e7953003 	ldr	r3, [r5, r3]
  86a00c:	e5933000 	ldr	r3, [r3]
  86a010:	e12fff33 	blx	r3
  86a014:	e2509000 	subs	r9, r0, #0
  86a018:	0a00009e 	beq	86a298 <Curl_input_ntlm@@Base+0x494>
  86a01c:	e0684004 	rsb	r4, r8, r4
  86a020:	e3a02000 	mov	r2, #0
  86a024:	e2843001 	add	r3, r4, #1
  86a028:	e0888003 	add	r8, r8, r3
  86a02c:	e7c92004 	strb	r2, [r9, r4]
  86a030:	e59f43a8 	ldr	r4, [pc, #936]	@ 86a3e0 <Curl_input_ntlm@@Base+0x5dc>
  86a034:	e3a01001 	mov	r1, #1
  86a038:	e08f4004 	add	r4, pc, r4
  86a03c:	e1a00004 	mov	r0, r4
  86a040:	ebe7969d 	bl	24fabc <access@plt>
  86a044:	e2502000 	subs	r2, r0, #0
  86a048:	0a000043 	beq	86a15c <Curl_input_ntlm@@Base+0x358>
  86a04c:	ebe79469 	bl	24f1f8 <__errno_location@plt>
  86a050:	e5908000 	ldr	r8, [r0]
  86a054:	e1a00007 	mov	r0, r7
  86a058:	e5977000 	ldr	r7, [r7]
  86a05c:	e1a01008 	mov	r1, r8
  86a060:	ebff68bf 	bl	844364 <Curl_strerror@@Base>
  86a064:	e59f1378 	ldr	r1, [pc, #888]	@ 86a3e4 <Curl_input_ntlm@@Base+0x5e0>
  86a068:	e58d0000 	str	r0, [sp]
  86a06c:	e1a03008 	mov	r3, r8
  86a070:	e1a00007 	mov	r0, r7
  86a074:	e1a02004 	mov	r2, r4
  86a078:	e08f1001 	add	r1, pc, r1
  86a07c:	ebffb81e 	bl	8580fc <Curl_failf@@Base>
  86a080:	e59f3360 	ldr	r3, [pc, #864]	@ 86a3e8 <Curl_input_ntlm@@Base+0x5e4>
  86a084:	e1a00009 	mov	r0, r9
  86a088:	e7954003 	ldr	r4, [r5, r3]
  86a08c:	e5943000 	ldr	r3, [r4]
  86a090:	e12fff33 	blx	r3
  86a094:	e3a00000 	mov	r0, #0
  86a098:	e5943000 	ldr	r3, [r4]
  86a09c:	e12fff33 	blx	r3
  86a0a0:	e3a00009 	mov	r0, #9
  86a0a4:	eaffffb7 	b	869f88 <Curl_input_ntlm@@Base+0x184>
  86a0a8:	e59f033c 	ldr	r0, [pc, #828]	@ 86a3ec <Curl_input_ntlm@@Base+0x5e8>
  86a0ac:	e08f0000 	add	r0, pc, r0
  86a0b0:	ebe79c4b 	bl	2511e4 <getenv@plt>
  86a0b4:	e3500000 	cmp	r0, #0
  86a0b8:	0a000004 	beq	86a0d0 <Curl_input_ntlm@@Base+0x2cc>
  86a0bc:	e5d03000 	ldrb	r3, [r0]
  86a0c0:	e3530000 	cmp	r3, #0
  86a0c4:	0a000001 	beq	86a0d0 <Curl_input_ntlm@@Base+0x2cc>
  86a0c8:	e1a08000 	mov	r8, r0
  86a0cc:	eaffffc2 	b	869fdc <Curl_input_ntlm@@Base+0x1d8>
  86a0d0:	e59f0318 	ldr	r0, [pc, #792]	@ 86a3f0 <Curl_input_ntlm@@Base+0x5ec>
  86a0d4:	e08f0000 	add	r0, pc, r0
  86a0d8:	ebe79c41 	bl	2511e4 <getenv@plt>
  86a0dc:	e3500000 	cmp	r0, #0
  86a0e0:	0a000002 	beq	86a0f0 <Curl_input_ntlm@@Base+0x2ec>
  86a0e4:	e5d03000 	ldrb	r3, [r0]
  86a0e8:	e3530000 	cmp	r3, #0
  86a0ec:	1afffff5 	bne	86a0c8 <Curl_input_ntlm@@Base+0x2c4>
  86a0f0:	e59f02fc 	ldr	r0, [pc, #764]	@ 86a3f4 <Curl_input_ntlm@@Base+0x5f0>
  86a0f4:	e08f0000 	add	r0, pc, r0
  86a0f8:	ebe79c39 	bl	2511e4 <getenv@plt>
  86a0fc:	e2504000 	subs	r4, r0, #0
  86a100:	0a000002 	beq	86a110 <Curl_input_ntlm@@Base+0x30c>
  86a104:	e5d43000 	ldrb	r3, [r4]
  86a108:	e3530000 	cmp	r3, #0
  86a10c:	1a000028 	bne	86a1b4 <Curl_input_ntlm@@Base+0x3b0>
  86a110:	ebe79fd8 	bl	252078 <geteuid@plt>
  86a114:	e28dc01c 	add	ip, sp, #28
  86a118:	e28d1020 	add	r1, sp, #32
  86a11c:	e28d2044 	add	r2, sp, #68	@ 0x44
  86a120:	e3a03b01 	mov	r3, #1024	@ 0x400
  86a124:	e58dc000 	str	ip, [sp]
  86a128:	ebe7973e 	bl	24fe28 <getpwuid_r@plt>
  86a12c:	e3500000 	cmp	r0, #0
  86a130:	1a000002 	bne	86a140 <Curl_input_ntlm@@Base+0x33c>
  86a134:	e59d301c 	ldr	r3, [sp, #28]
  86a138:	e3530000 	cmp	r3, #0
  86a13c:	159d4020 	ldrne	r4, [sp, #32]
  86a140:	e3540000 	cmp	r4, #0
  86a144:	1a000017 	bne	86a1a8 <Curl_input_ntlm@@Base+0x3a4>
  86a148:	e5d83000 	ldrb	r3, [r8]
  86a14c:	e3530000 	cmp	r3, #0
  86a150:	1affffa1 	bne	869fdc <Curl_input_ntlm@@Base+0x1d8>
  86a154:	e1a09003 	mov	r9, r3
  86a158:	eaffffb4 	b	86a030 <Curl_input_ntlm@@Base+0x22c>
  86a15c:	e3a00001 	mov	r0, #1
  86a160:	e28d303c 	add	r3, sp, #60	@ 0x3c
  86a164:	e1a01000 	mov	r1, r0
  86a168:	ebe79e99 	bl	251bd4 <socketpair@plt>
  86a16c:	e250b000 	subs	fp, r0, #0
  86a170:	0a000011 	beq	86a1bc <Curl_input_ntlm@@Base+0x3b8>
  86a174:	ebe7941f 	bl	24f1f8 <__errno_location@plt>
  86a178:	e5904000 	ldr	r4, [r0]
  86a17c:	e1a00007 	mov	r0, r7
  86a180:	e5977000 	ldr	r7, [r7]
  86a184:	e1a01004 	mov	r1, r4
  86a188:	ebff6875 	bl	844364 <Curl_strerror@@Base>
  86a18c:	e59f1264 	ldr	r1, [pc, #612]	@ 86a3f8 <Curl_input_ntlm@@Base+0x5f4>
  86a190:	e1a03000 	mov	r3, r0
  86a194:	e1a02004 	mov	r2, r4
  86a198:	e1a00007 	mov	r0, r7
  86a19c:	e08f1001 	add	r1, pc, r1
  86a1a0:	ebffb7d5 	bl	8580fc <Curl_failf@@Base>
  86a1a4:	eaffffb5 	b	86a080 <Curl_input_ntlm@@Base+0x27c>
  86a1a8:	e5d43000 	ldrb	r3, [r4]
  86a1ac:	e3530000 	cmp	r3, #0
  86a1b0:	0affffe4 	beq	86a148 <Curl_input_ntlm@@Base+0x344>
  86a1b4:	e1a08004 	mov	r8, r4
  86a1b8:	eaffff87 	b	869fdc <Curl_input_ntlm@@Base+0x1d8>
  86a1bc:	ebe79731 	bl	24fe88 <fork@plt>
  86a1c0:	e3700001 	cmn	r0, #1
  86a1c4:	e1a0a000 	mov	sl, r0
  86a1c8:	0a000043 	beq	86a2dc <Curl_input_ntlm@@Base+0x4d8>
  86a1cc:	e3500000 	cmp	r0, #0
  86a1d0:	1a000032 	bne	86a2a0 <Curl_input_ntlm@@Base+0x49c>
  86a1d4:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  86a1d8:	ebe7958f 	bl	24f81c <close@plt>
  86a1dc:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  86a1e0:	e1a0100a 	mov	r1, sl
  86a1e4:	ebe79eb9 	bl	251cd0 <dup2@plt>
  86a1e8:	e3700001 	cmn	r0, #1
  86a1ec:	0a00006a 	beq	86a39c <Curl_input_ntlm@@Base+0x598>
  86a1f0:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  86a1f4:	e3a01001 	mov	r1, #1
  86a1f8:	ebe79eb4 	bl	251cd0 <dup2@plt>
  86a1fc:	e3700001 	cmn	r0, #1
  86a200:	0a000046 	beq	86a320 <Curl_input_ntlm@@Base+0x51c>
  86a204:	e3590000 	cmp	r9, #0
  86a208:	0a000052 	beq	86a358 <Curl_input_ntlm@@Base+0x554>
  86a20c:	e59f31e8 	ldr	r3, [pc, #488]	@ 86a3fc <Curl_input_ntlm@@Base+0x5f8>
  86a210:	e1a00004 	mov	r0, r4
  86a214:	e58d8008 	str	r8, [sp, #8]
  86a218:	e59fe1e0 	ldr	lr, [pc, #480]	@ 86a400 <Curl_input_ntlm@@Base+0x5fc>
  86a21c:	e58d9010 	str	r9, [sp, #16]
  86a220:	e1a01004 	mov	r1, r4
  86a224:	e59fc1d8 	ldr	ip, [pc, #472]	@ 86a404 <Curl_input_ntlm@@Base+0x600>
  86a228:	e58da014 	str	sl, [sp, #20]
  86a22c:	e59f21d4 	ldr	r2, [pc, #468]	@ 86a408 <Curl_input_ntlm@@Base+0x604>
  86a230:	e08f3003 	add	r3, pc, r3
  86a234:	e08fe00e 	add	lr, pc, lr
  86a238:	e58d3000 	str	r3, [sp]
  86a23c:	e59f31c8 	ldr	r3, [pc, #456]	@ 86a40c <Curl_input_ntlm@@Base+0x608>
  86a240:	e08fc00c 	add	ip, pc, ip
  86a244:	e08f2002 	add	r2, pc, r2
  86a248:	e58de004 	str	lr, [sp, #4]
  86a24c:	e58dc00c 	str	ip, [sp, #12]
  86a250:	e08f3003 	add	r3, pc, r3
  86a254:	ebe79dd4 	bl	2519ac <execl@plt>
  86a258:	ebe793e6 	bl	24f1f8 <__errno_location@plt>
  86a25c:	e5904000 	ldr	r4, [r0]
  86a260:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  86a264:	ebe7956c 	bl	24f81c <close@plt>
  86a268:	e1a00007 	mov	r0, r7
  86a26c:	e5975000 	ldr	r5, [r7]
  86a270:	e1a01004 	mov	r1, r4
  86a274:	ebff683a 	bl	844364 <Curl_strerror@@Base>
  86a278:	e59f1190 	ldr	r1, [pc, #400]	@ 86a410 <Curl_input_ntlm@@Base+0x60c>
  86a27c:	e1a03000 	mov	r3, r0
  86a280:	e1a02004 	mov	r2, r4
  86a284:	e1a00005 	mov	r0, r5
  86a288:	e08f1001 	add	r1, pc, r1
  86a28c:	ebffb79a 	bl	8580fc <Curl_failf@@Base>
  86a290:	e3a00001 	mov	r0, #1
  86a294:	ebe79dd0 	bl	2519dc <exit@plt>
  86a298:	e3a0001b 	mov	r0, #27
  86a29c:	eaffff39 	b	869f88 <Curl_input_ntlm@@Base+0x184>
  86a2a0:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  86a2a4:	ebe7955c 	bl	24f81c <close@plt>
  86a2a8:	e59d203c 	ldr	r2, [sp, #60]	@ 0x3c
  86a2ac:	e587a348 	str	sl, [r7, #840]	@ 0x348
  86a2b0:	e1a00009 	mov	r0, r9
  86a2b4:	e59f312c 	ldr	r3, [pc, #300]	@ 86a3e8 <Curl_input_ntlm@@Base+0x5e4>
  86a2b8:	e5872344 	str	r2, [r7, #836]	@ 0x344
  86a2bc:	e7954003 	ldr	r4, [r5, r3]
  86a2c0:	e5943000 	ldr	r3, [r4]
  86a2c4:	e12fff33 	blx	r3
  86a2c8:	e1a0000b 	mov	r0, fp
  86a2cc:	e5943000 	ldr	r3, [r4]
  86a2d0:	e12fff33 	blx	r3
  86a2d4:	e1a0000b 	mov	r0, fp
  86a2d8:	eaffff2a 	b	869f88 <Curl_input_ntlm@@Base+0x184>
  86a2dc:	ebe793c5 	bl	24f1f8 <__errno_location@plt>
  86a2e0:	e5904000 	ldr	r4, [r0]
  86a2e4:	e59d003c 	ldr	r0, [sp, #60]	@ 0x3c
  86a2e8:	ebe7954b 	bl	24f81c <close@plt>
  86a2ec:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
  86a2f0:	ebe79549 	bl	24f81c <close@plt>
  86a2f4:	e1a01004 	mov	r1, r4
  86a2f8:	e1a00007 	mov	r0, r7
  86a2fc:	e5978000 	ldr	r8, [r7]
  86a300:	ebff6817 	bl	844364 <Curl_strerror@@Base>
  86a304:	e59f1108 	ldr	r1, [pc, #264]	@ 86a414 <Curl_input_ntlm@@Base+0x610>
  86a308:	e1a03000 	mov	r3, r0
  86a30c:	e1a02004 	mov	r2, r4
  86a310:	e1a00008 	mov	r0, r8
  86a314:	e08f1001 	add	r1, pc, r1
  86a318:	ebffb777 	bl	8580fc <Curl_failf@@Base>
  86a31c:	eaffff57 	b	86a080 <Curl_input_ntlm@@Base+0x27c>
  86a320:	ebe793b4 	bl	24f1f8 <__errno_location@plt>
  86a324:	e5904000 	ldr	r4, [r0]
  86a328:	e1a00007 	mov	r0, r7
  86a32c:	e5975000 	ldr	r5, [r7]
  86a330:	e1a01004 	mov	r1, r4
  86a334:	ebff680a 	bl	844364 <Curl_strerror@@Base>
  86a338:	e59f10d8 	ldr	r1, [pc, #216]	@ 86a418 <Curl_input_ntlm@@Base+0x614>
  86a33c:	e1a03000 	mov	r3, r0
  86a340:	e1a02004 	mov	r2, r4
  86a344:	e1a00005 	mov	r0, r5
  86a348:	e08f1001 	add	r1, pc, r1
  86a34c:	ebffb76a 	bl	8580fc <Curl_failf@@Base>
  86a350:	e3a00001 	mov	r0, #1
  86a354:	ebe79da0 	bl	2519dc <exit@plt>
  86a358:	e59fe0bc 	ldr	lr, [pc, #188]	@ 86a41c <Curl_input_ntlm@@Base+0x618>
  86a35c:	e1a00004 	mov	r0, r4
  86a360:	e58d8008 	str	r8, [sp, #8]
  86a364:	e59fc0b4 	ldr	ip, [pc, #180]	@ 86a420 <Curl_input_ntlm@@Base+0x61c>
  86a368:	e58d900c 	str	r9, [sp, #12]
  86a36c:	e1a01004 	mov	r1, r4
  86a370:	e59f20ac 	ldr	r2, [pc, #172]	@ 86a424 <Curl_input_ntlm@@Base+0x620>
  86a374:	e59f30ac 	ldr	r3, [pc, #172]	@ 86a428 <Curl_input_ntlm@@Base+0x624>
  86a378:	e08fe00e 	add	lr, pc, lr
  86a37c:	e08fc00c 	add	ip, pc, ip
  86a380:	e08f2002 	add	r2, pc, r2
  86a384:	e58de000 	str	lr, [sp]
  86a388:	e08f3003 	add	r3, pc, r3
  86a38c:	e58dc004 	str	ip, [sp, #4]
  86a390:	ebe79d85 	bl	2519ac <execl@plt>
  86a394:	eaffffaf 	b	86a258 <Curl_input_ntlm@@Base+0x454>
  86a398:	ebe7923d 	bl	24ec94 <__stack_chk_fail@plt>
  86a39c:	ebe79395 	bl	24f1f8 <__errno_location@plt>
  86a3a0:	e5904000 	ldr	r4, [r0]
  86a3a4:	e1a00007 	mov	r0, r7
  86a3a8:	e5975000 	ldr	r5, [r7]
  86a3ac:	e1a01004 	mov	r1, r4
  86a3b0:	ebff67eb 	bl	844364 <Curl_strerror@@Base>
  86a3b4:	e59f1070 	ldr	r1, [pc, #112]	@ 86a42c <Curl_input_ntlm@@Base+0x628>
  86a3b8:	e1a03000 	mov	r3, r0
  86a3bc:	e1a02004 	mov	r2, r4
  86a3c0:	e1a00005 	mov	r0, r5
  86a3c4:	e08f1001 	add	r1, pc, r1
  86a3c8:	ebffb74b 	bl	8580fc <Curl_failf@@Base>
  86a3cc:	e3a00001 	mov	r0, #1
  86a3d0:	ebe79d81 	bl	2519dc <exit@plt>
  86a3d4:	001bd1a0 	andseq	sp, fp, r0, lsr #3
  86a3d8:	00003440 	andeq	r3, r0, r0, asr #8
  86a3dc:	000037c4 	andeq	r3, r0, r4, asr #15
  86a3e0:	0012ba64 	andseq	fp, r2, r4, ror #20
  86a3e4:	0012ba38 	andseq	fp, r2, r8, lsr sl
  86a3e8:	00003210 	andeq	r3, r0, r0, lsl r2
  86a3ec:	0012b9dc 			@ <UNDEFINED> instruction: 0x0012b9dc
  86a3f0:	0012b9c0 	andseq	fp, r2, r0, asr #19
  86a3f4:	0012b998 	mulseq	r2, r8, r9
  86a3f8:	0012b940 	andseq	fp, r2, r0, asr #18
  86a3fc:	0012b980 	andseq	fp, r2, r0, lsl #19
  86a400:	0012b990 	mulseq	r2, r0, r9
  86a404:	0012b990 	mulseq	r2, r0, r9
  86a408:	0012b944 	andseq	fp, r2, r4, asr #18
  86a40c:	0012b94c 	andseq	fp, r2, ip, asr #18
  86a410:	0012b954 	andseq	fp, r2, r4, asr r9
  86a414:	0012b7f4 			@ <UNDEFINED> instruction: 0x0012b7f4
  86a418:	0012b810 	andseq	fp, r2, r0, lsl r8
  86a41c:	0012b838 	andseq	fp, r2, r8, lsr r8
  86a420:	0012b848 	andseq	fp, r2, r8, asr #16
  86a424:	0012b808 	andseq	fp, r2, r8, lsl #16
  86a428:	0012b814 	andseq	fp, r2, r4, lsl r8
  86a42c:	0012b764 	andseq	fp, r2, r4, ror #14
  86a430:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
  86a434:	e1a05002 	mov	r5, r2
  86a438:	e59f2220 	ldr	r2, [pc, #544]	@ 86a660 <Curl_input_ntlm@@Base+0x85c>
  86a43c:	e1cd60f8 	strd	r6, [sp, #8]
  86a440:	e59f621c 	ldr	r6, [pc, #540]	@ 86a664 <Curl_input_ntlm@@Base+0x860>
  86a444:	e1cda1f8 	strd	sl, [sp, #24]
  86a448:	e1a0b001 	mov	fp, r1
  86a44c:	e1a0a003 	mov	sl, r3
  86a450:	e1cd81f0 	strd	r8, [sp, #16]
  86a454:	e59f120c 	ldr	r1, [pc, #524]	@ 86a668 <Curl_input_ntlm@@Base+0x864>
  86a458:	e1a08000 	mov	r8, r0
  86a45c:	e58de020 	str	lr, [sp, #32]
  86a460:	e24dd00c 	sub	sp, sp, #12
  86a464:	e3a00b01 	mov	r0, #1024	@ 0x400
  86a468:	e08f6006 	add	r6, pc, r6
  86a46c:	e7969002 	ldr	r9, [r6, r2]
  86a470:	e5993000 	ldr	r3, [r9]
  86a474:	e58d3004 	str	r3, [sp, #4]
  86a478:	e7963001 	ldr	r3, [r6, r1]
  86a47c:	e5933000 	ldr	r3, [r3]
  86a480:	e12fff33 	blx	r3
  86a484:	e1a07000 	mov	r7, r0
  86a488:	e1a00005 	mov	r0, r5
  86a48c:	ebe797c7 	bl	2503b0 <strlen@plt>
  86a490:	e3570000 	cmp	r7, #0
  86a494:	11a04000 	movne	r4, r0
  86a498:	0a00001f 	beq	86a51c <Curl_input_ntlm@@Base+0x718>
  86a49c:	e3540000 	cmp	r4, #0
  86a4a0:	0a00001f 	beq	86a524 <Curl_input_ntlm@@Base+0x720>
  86a4a4:	e1a01005 	mov	r1, r5
  86a4a8:	e1a02004 	mov	r2, r4
  86a4ac:	e5980000 	ldr	r0, [r8]
  86a4b0:	e3a03901 	mov	r3, #16384	@ 0x4000
  86a4b4:	ebe7908b 	bl	24e6e8 <send@plt>
  86a4b8:	e3700001 	cmn	r0, #1
  86a4bc:	10855000 	addne	r5, r5, r0
  86a4c0:	10604004 	rsbne	r4, r0, r4
  86a4c4:	1afffff4 	bne	86a49c <Curl_input_ntlm@@Base+0x698>
  86a4c8:	ebe7934a 	bl	24f1f8 <__errno_location@plt>
  86a4cc:	e5903000 	ldr	r3, [r0]
  86a4d0:	e3530004 	cmp	r3, #4
  86a4d4:	0afffff0 	beq	86a49c <Curl_input_ntlm@@Base+0x698>
  86a4d8:	e59f318c 	ldr	r3, [pc, #396]	@ 86a66c <Curl_input_ntlm@@Base+0x868>
  86a4dc:	e1a00007 	mov	r0, r7
  86a4e0:	e7963003 	ldr	r3, [r6, r3]
  86a4e4:	e5933000 	ldr	r3, [r3]
  86a4e8:	e12fff33 	blx	r3
  86a4ec:	e3a00009 	mov	r0, #9
  86a4f0:	e59d2004 	ldr	r2, [sp, #4]
  86a4f4:	e5993000 	ldr	r3, [r9]
  86a4f8:	e1520003 	cmp	r2, r3
  86a4fc:	1a00004b 	bne	86a630 <Curl_input_ntlm@@Base+0x82c>
