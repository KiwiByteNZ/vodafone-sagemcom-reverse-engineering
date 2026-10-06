
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

00008000 <wctl_authorization_init@@Base>:
    8000:	e59f3048 	ldr	r3, [pc, #72]	@ 8050 <wctl_authorization_init@@Base+0x50>
    8004:	e52d4008 	str	r4, [sp, #-8]!
    8008:	e59f2044 	ldr	r2, [pc, #68]	@ 8054 <wctl_authorization_init@@Base+0x54>
    800c:	e58de004 	str	lr, [sp, #4]
    8010:	e24dd008 	sub	sp, sp, #8
    8014:	e08f3003 	add	r3, pc, r3
    8018:	e7934002 	ldr	r4, [r3, r2]
    801c:	e5943000 	ldr	r3, [r4]
    8020:	e58d3004 	str	r3, [sp, #4]
    8024:	ebfffbca 	bl	6f54 <wctl_user_init@plt>
    8028:	e59d2004 	ldr	r2, [sp, #4]
    802c:	e5943000 	ldr	r3, [r4]
    8030:	e1520003 	cmp	r2, r3
    8034:	1a000004 	bne	804c <wctl_authorization_init@@Base+0x4c>
    8038:	e28dd008 	add	sp, sp, #8
    803c:	e59d4000 	ldr	r4, [sp]
    8040:	e59de004 	ldr	lr, [sp, #4]
    8044:	e28dd008 	add	sp, sp, #8
    8048:	eafffbac 	b	6f00 <wctl_user_listen_database_change@plt>
    804c:	ebfffa7c 	bl	6a44 <__stack_chk_fail@plt>
    8050:	00029994 	muleq	r2, r4, r9
    8054:	0000060c 	andeq	r0, r0, ip, lsl #12

00008058 <wctl_authorization_uninit@@Base>:
    8058:	e59f3034 	ldr	r3, [pc, #52]	@ 8094 <wctl_authorization_uninit@@Base+0x3c>
    805c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    8060:	e24dd00c 	sub	sp, sp, #12
    8064:	e59f202c 	ldr	r2, [pc, #44]	@ 8098 <wctl_authorization_uninit@@Base+0x40>
    8068:	e08f3003 	add	r3, pc, r3
    806c:	e7933002 	ldr	r3, [r3, r2]
    8070:	e5932000 	ldr	r2, [r3]
    8074:	e58d2004 	str	r2, [sp, #4]
    8078:	e59d2004 	ldr	r2, [sp, #4]
    807c:	e5933000 	ldr	r3, [r3]
    8080:	e1520003 	cmp	r2, r3
    8084:	1a000001 	bne	8090 <wctl_authorization_uninit@@Base+0x38>
    8088:	e28dd00c 	add	sp, sp, #12
    808c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    8090:	ebfffa6b 	bl	6a44 <__stack_chk_fail@plt>
    8094:	00029940 	andeq	r9, r2, r0, asr #18
    8098:	0000060c 	andeq	r0, r0, ip, lsl #12

0000809c <wctl_authorization_user_reload_async@@Base>:
    809c:	e59f3070 	ldr	r3, [pc, #112]	@ 8114 <wctl_authorization_user_reload_async@@Base+0x78>
    80a0:	e52d4008 	str	r4, [sp, #-8]!
    80a4:	e3a00002 	mov	r0, #2
    80a8:	e59f2068 	ldr	r2, [pc, #104]	@ 8118 <wctl_authorization_user_reload_async@@Base+0x7c>
    80ac:	e58de004 	str	lr, [sp, #4]
    80b0:	e24dd008 	sub	sp, sp, #8
    80b4:	e3a01000 	mov	r1, #0
    80b8:	e08f3003 	add	r3, pc, r3
    80bc:	e7934002 	ldr	r4, [r3, r2]
    80c0:	e5943000 	ldr	r3, [r4]
    80c4:	e58d3004 	str	r3, [sp, #4]
    80c8:	ebfff7d2 	bl	6018 <wctl_async_create@plt>
    80cc:	e3500000 	cmp	r0, #0
    80d0:	e59d2004 	ldr	r2, [sp, #4]
    80d4:	e5943000 	ldr	r3, [r4]
    80d8:	0a000006 	beq	80f8 <wctl_authorization_user_reload_async@@Base+0x5c>
    80dc:	e1520003 	cmp	r2, r3
    80e0:	1a00000a 	bne	8110 <wctl_authorization_user_reload_async@@Base+0x74>
    80e4:	e28dd008 	add	sp, sp, #8
    80e8:	e59d4000 	ldr	r4, [sp]
    80ec:	e59de004 	ldr	lr, [sp, #4]
    80f0:	e28dd008 	add	sp, sp, #8
    80f4:	eafffa7c 	b	6aec <wctl_async_operation@plt>
    80f8:	e1520003 	cmp	r2, r3
    80fc:	1a000003 	bne	8110 <wctl_authorization_user_reload_async@@Base+0x74>
    8100:	e28dd008 	add	sp, sp, #8
    8104:	e59d4000 	ldr	r4, [sp]
    8108:	e28dd004 	add	sp, sp, #4
    810c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    8110:	ebfffa4b 	bl	6a44 <__stack_chk_fail@plt>
    8114:	000298f0 	strdeq	r9, [r2], -r0
    8118:	0000060c 	andeq	r0, r0, ip, lsl #12

0000811c <wctl_authorization_user_autoclean@@Base>:
    811c:	e59f30f4 	ldr	r3, [pc, #244]	@ 8218 <wctl_authorization_user_autoclean@@Base+0xfc>
    8120:	e16d41f4 	strd	r4, [sp, #-20]!	@ 0xffffffec
    8124:	e3a00000 	mov	r0, #0
    8128:	e59f20ec 	ldr	r2, [pc, #236]	@ 821c <wctl_authorization_user_autoclean@@Base+0x100>
    812c:	e1cd60f8 	strd	r6, [sp, #8]
    8130:	e58de010 	str	lr, [sp, #16]
    8134:	e24dd00c 	sub	sp, sp, #12
    8138:	e08f3003 	add	r3, pc, r3
    813c:	e7936002 	ldr	r6, [r3, r2]
    8140:	e5963000 	ldr	r3, [r6]
    8144:	e58d3004 	str	r3, [sp, #4]
    8148:	ebfffa16 	bl	69a8 <time@plt>
    814c:	e1a07000 	mov	r7, r0
    8150:	ebfffb0a 	bl	6d80 <wctl_user_get_list@plt>
    8154:	e2505000 	subs	r5, r0, #0
    8158:	0a00001a 	beq	81c8 <wctl_authorization_user_autoclean@@Base+0xac>
    815c:	e5950004 	ldr	r0, [r5, #4]
    8160:	e1550000 	cmp	r5, r0
    8164:	e5904004 	ldr	r4, [r0, #4]
    8168:	0a000016 	beq	81c8 <wctl_authorization_user_autoclean@@Base+0xac>
    816c:	e3a01000 	mov	r1, #0
    8170:	ea000004 	b	8188 <wctl_authorization_user_autoclean@@Base+0x6c>
    8174:	e1550004 	cmp	r5, r4
    8178:	e5943004 	ldr	r3, [r4, #4]
    817c:	0a00000f 	beq	81c0 <wctl_authorization_user_autoclean@@Base+0xa4>
    8180:	e1a00004 	mov	r0, r4
    8184:	e1a04003 	mov	r4, r3
    8188:	e5903260 	ldr	r3, [r0, #608]	@ 0x260
    818c:	e2433001 	sub	r3, r3, #1
    8190:	e3530002 	cmp	r3, #2
    8194:	9afffff6 	bls	8174 <wctl_authorization_user_autoclean@@Base+0x58>
    8198:	e5902268 	ldr	r2, [r0, #616]	@ 0x268
    819c:	e5903250 	ldr	r3, [r0, #592]	@ 0x250
    81a0:	e0823003 	add	r3, r2, r3
    81a4:	e1570003 	cmp	r7, r3
    81a8:	bafffff1 	blt	8174 <wctl_authorization_user_autoclean@@Base+0x58>
    81ac:	ebfffeec 	bl	7d64 <wctl_async_destroy@@Base+0x158>
    81b0:	e1550004 	cmp	r5, r4
    81b4:	e3a01001 	mov	r1, #1
    81b8:	e5943004 	ldr	r3, [r4, #4]
    81bc:	1affffef 	bne	8180 <wctl_authorization_user_autoclean@@Base+0x64>
    81c0:	e3510001 	cmp	r1, #1
    81c4:	0a000008 	beq	81ec <wctl_authorization_user_autoclean@@Base+0xd0>
    81c8:	e59d2004 	ldr	r2, [sp, #4]
    81cc:	e5963000 	ldr	r3, [r6]
    81d0:	e1520003 	cmp	r2, r3
    81d4:	1a00000e 	bne	8214 <wctl_authorization_user_autoclean@@Base+0xf8>
    81d8:	e28dd00c 	add	sp, sp, #12
    81dc:	e1cd40d0 	ldrd	r4, [sp]
    81e0:	e1cd60d8 	ldrd	r6, [sp, #8]
    81e4:	e28dd010 	add	sp, sp, #16
    81e8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    81ec:	e59d2004 	ldr	r2, [sp, #4]
    81f0:	e5963000 	ldr	r3, [r6]
    81f4:	e1520003 	cmp	r2, r3
    81f8:	1a000005 	bne	8214 <wctl_authorization_user_autoclean@@Base+0xf8>
    81fc:	e28dd00c 	add	sp, sp, #12
    8200:	e1cd40d0 	ldrd	r4, [sp]
    8204:	e1cd60d8 	ldrd	r6, [sp, #8]
    8208:	e59de010 	ldr	lr, [sp, #16]
    820c:	e28dd014 	add	sp, sp, #20
    8210:	eafff777 	b	5ff4 <wctl_user_notify_db_change@plt>
    8214:	ebfffa0a 	bl	6a44 <__stack_chk_fail@plt>
    8218:	00029870 	andeq	r9, r2, r0, ror r8
    821c:	0000060c 	andeq	r0, r0, ip, lsl #12

00008220 <wctl_authorization_control_set@@Base>:
    8220:	e59f3040 	ldr	r3, [pc, #64]	@ 8268 <wctl_authorization_control_set@@Base+0x48>
    8224:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    8228:	e24dd00c 	sub	sp, sp, #12
    822c:	e59f1038 	ldr	r1, [pc, #56]	@ 826c <wctl_authorization_control_set@@Base+0x4c>
    8230:	e59f2038 	ldr	r2, [pc, #56]	@ 8270 <wctl_authorization_control_set@@Base+0x50>
    8234:	e08f3003 	add	r3, pc, r3
    8238:	e7933001 	ldr	r3, [r3, r1]
    823c:	e08f2002 	add	r2, pc, r2
    8240:	e5820000 	str	r0, [r2]
    8244:	e5932000 	ldr	r2, [r3]
    8248:	e58d2004 	str	r2, [sp, #4]
    824c:	e59d2004 	ldr	r2, [sp, #4]
    8250:	e5933000 	ldr	r3, [r3]
    8254:	e1520003 	cmp	r2, r3
    8258:	1a000001 	bne	8264 <wctl_authorization_control_set@@Base+0x44>
    825c:	e28dd00c 	add	sp, sp, #12
    8260:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    8264:	ebfff9f6 	bl	6a44 <__stack_chk_fail@plt>
    8268:	00029774 	andeq	r9, r2, r4, ror r7
    826c:	0000060c 	andeq	r0, r0, ip, lsl #12
    8270:	00029ec8 	andeq	r9, r2, r8, asr #29

00008274 <wctl_authorization_get_user@@Base>:
    8274:	e59f30ac 	ldr	r3, [pc, #172]	@ 8328 <wctl_authorization_get_user@@Base+0xb4>
    8278:	e16d41f4 	strd	r4, [sp, #-20]!	@ 0xffffffec
    827c:	e3500000 	cmp	r0, #0
    8280:	e59f20a4 	ldr	r2, [pc, #164]	@ 832c <wctl_authorization_get_user@@Base+0xb8>
    8284:	e1cd60f8 	strd	r6, [sp, #8]
    8288:	e58de010 	str	lr, [sp, #16]
    828c:	e24dd00c 	sub	sp, sp, #12
    8290:	e08f3003 	add	r3, pc, r3
    8294:	e7937002 	ldr	r7, [r3, r2]
    8298:	e5973000 	ldr	r3, [r7]
    829c:	e58d3004 	str	r3, [sp, #4]
    82a0:	0a000015 	beq	82fc <wctl_authorization_get_user@@Base+0x88>
    82a4:	e59f1084 	ldr	r1, [pc, #132]	@ 8330 <wctl_authorization_get_user@@Base+0xbc>
    82a8:	e5900018 	ldr	r0, [r0, #24]
    82ac:	e08f1001 	add	r1, pc, r1
    82b0:	ebfff96e 	bl	6870 <evhtp_kv_find@plt>
    82b4:	e2506000 	subs	r6, r0, #0
    82b8:	0a00000f 	beq	82fc <wctl_authorization_get_user@@Base+0x88>
    82bc:	ebfffaaf 	bl	6d80 <wctl_user_get_list@plt>
    82c0:	e5904004 	ldr	r4, [r0, #4]
    82c4:	e1a05000 	mov	r5, r0
    82c8:	e1500004 	cmp	r0, r4
    82cc:	1a000003 	bne	82e0 <wctl_authorization_get_user@@Base+0x6c>
    82d0:	ea000009 	b	82fc <wctl_authorization_get_user@@Base+0x88>
    82d4:	e5944004 	ldr	r4, [r4, #4]
    82d8:	e1550004 	cmp	r5, r4
    82dc:	0a000006 	beq	82fc <wctl_authorization_get_user@@Base+0x88>
    82e0:	e2840030 	add	r0, r4, #48	@ 0x30
    82e4:	e1a01006 	mov	r1, r6
    82e8:	ebfffb10 	bl	6f30 <strcmp@plt>
    82ec:	e3500000 	cmp	r0, #0
    82f0:	1afffff7 	bne	82d4 <wctl_authorization_get_user@@Base+0x60>
    82f4:	e1a00004 	mov	r0, r4
    82f8:	ea000000 	b	8300 <wctl_authorization_get_user@@Base+0x8c>
    82fc:	e3a00000 	mov	r0, #0
    8300:	e59d2004 	ldr	r2, [sp, #4]
    8304:	e5973000 	ldr	r3, [r7]
    8308:	e1520003 	cmp	r2, r3
    830c:	1a000004 	bne	8324 <wctl_authorization_get_user@@Base+0xb0>
    8310:	e28dd00c 	add	sp, sp, #12
    8314:	e1cd40d0 	ldrd	r4, [sp]
    8318:	e1cd60d8 	ldrd	r6, [sp, #8]
    831c:	e28dd010 	add	sp, sp, #16
    8320:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    8324:	ebfff9c6 	bl	6a44 <__stack_chk_fail@plt>
    8328:	00029718 	andeq	r9, r2, r8, lsl r7
    832c:	0000060c 	andeq	r0, r0, ip, lsl #12
    8330:	00016eac 	andeq	r6, r1, ip, lsr #29

00008334 <wctl_authorization_check@@Base>:
    8334:	e59f3110 	ldr	r3, [pc, #272]	@ 844c <wctl_authorization_check@@Base+0x118>
    8338:	e16d41fc 	strd	r4, [sp, #-28]!	@ 0xffffffe4
    833c:	e59f110c 	ldr	r1, [pc, #268]	@ 8450 <wctl_authorization_check@@Base+0x11c>
    8340:	e1cd60f8 	strd	r6, [sp, #8]
    8344:	e59f2108 	ldr	r2, [pc, #264]	@ 8454 <wctl_authorization_check@@Base+0x120>
    8348:	e1cd81f0 	strd	r8, [sp, #16]
    834c:	e58de018 	str	lr, [sp, #24]
    8350:	e24dd00c 	sub	sp, sp, #12
    8354:	e08f3003 	add	r3, pc, r3
    8358:	e7934001 	ldr	r4, [r3, r1]
    835c:	e08f2002 	add	r2, pc, r2
    8360:	e5922000 	ldr	r2, [r2]
    8364:	e5943000 	ldr	r3, [r4]
    8368:	e3520001 	cmp	r2, #1
    836c:	13a00003 	movne	r0, #3
    8370:	e58d3004 	str	r3, [sp, #4]
    8374:	0a000009 	beq	83a0 <wctl_authorization_check@@Base+0x6c>
    8378:	e59d2004 	ldr	r2, [sp, #4]
    837c:	e5943000 	ldr	r3, [r4]
    8380:	e1520003 	cmp	r2, r3
    8384:	1a00002f 	bne	8448 <wctl_authorization_check@@Base+0x114>
    8388:	e28dd00c 	add	sp, sp, #12
    838c:	e1cd40d0 	ldrd	r4, [sp]
    8390:	e1cd60d8 	ldrd	r6, [sp, #8]
    8394:	e1cd81d0 	ldrd	r8, [sp, #16]
    8398:	e28dd018 	add	sp, sp, #24
    839c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    83a0:	e3500000 	cmp	r0, #0
    83a4:	e1a05000 	mov	r5, r0
    83a8:	0a00000c 	beq	83e0 <wctl_authorization_check@@Base+0xac>
    83ac:	e59f10a4 	ldr	r1, [pc, #164]	@ 8458 <wctl_authorization_check@@Base+0x124>
    83b0:	e5900018 	ldr	r0, [r0, #24]
    83b4:	e08f1001 	add	r1, pc, r1
    83b8:	ebfff92c 	bl	6870 <evhtp_kv_find@plt>
    83bc:	e59f1098 	ldr	r1, [pc, #152]	@ 845c <wctl_authorization_check@@Base+0x128>
    83c0:	e1a08000 	mov	r8, r0
    83c4:	e5950018 	ldr	r0, [r5, #24]
    83c8:	e08f1001 	add	r1, pc, r1
    83cc:	ebfff927 	bl	6870 <evhtp_kv_find@plt>
    83d0:	e3580000 	cmp	r8, #0
    83d4:	13500000 	cmpne	r0, #0
    83d8:	e1a09000 	mov	r9, r0
    83dc:	1a000002 	bne	83ec <wctl_authorization_check@@Base+0xb8>
    83e0:	e3a06001 	mov	r6, #1
    83e4:	e1a00006 	mov	r0, r6
    83e8:	eaffffe2 	b	8378 <wctl_authorization_check@@Base+0x44>
    83ec:	ebfffa63 	bl	6d80 <wctl_user_get_list@plt>
    83f0:	e5905004 	ldr	r5, [r0, #4]
    83f4:	e1a07000 	mov	r7, r0
    83f8:	e1500005 	cmp	r0, r5
    83fc:	1a000003 	bne	8410 <wctl_authorization_check@@Base+0xdc>
    8400:	eafffff6 	b	83e0 <wctl_authorization_check@@Base+0xac>
    8404:	e5955004 	ldr	r5, [r5, #4]
    8408:	e1570005 	cmp	r7, r5
    840c:	0afffff3 	beq	83e0 <wctl_authorization_check@@Base+0xac>
    8410:	e5956260 	ldr	r6, [r5, #608]	@ 0x260
    8414:	e3560003 	cmp	r6, #3
    8418:	1afffff9 	bne	8404 <wctl_authorization_check@@Base+0xd0>
    841c:	e2850030 	add	r0, r5, #48	@ 0x30
    8420:	e1a01008 	mov	r1, r8
    8424:	ebfffac1 	bl	6f30 <strcmp@plt>
    8428:	e3500000 	cmp	r0, #0
    842c:	1afffff4 	bne	8404 <wctl_authorization_check@@Base+0xd0>
    8430:	e2850e15 	add	r0, r5, #336	@ 0x150
    8434:	e1a01009 	mov	r1, r9
    8438:	ebfffabc 	bl	6f30 <strcmp@plt>
    843c:	e3500000 	cmp	r0, #0
    8440:	0affffe7 	beq	83e4 <wctl_authorization_check@@Base+0xb0>
    8444:	eaffffee 	b	8404 <wctl_authorization_check@@Base+0xd0>
    8448:	ebfff97d 	bl	6a44 <__stack_chk_fail@plt>
    844c:	00029654 	andeq	r9, r2, r4, asr r6
    8450:	0000060c 	andeq	r0, r0, ip, lsl #12
    8454:	00029da8 	andeq	r9, r2, r8, lsr #27
    8458:	00016da4 	andeq	r6, r1, r4, lsr #27
    845c:	00016da0 	andeq	r6, r1, r0, lsr #27

00008460 <wctl_authorization_token_cb@@Base>:
    8460:	e59fc6e8 	ldr	ip, [pc, #1768]	@ 8b50 <wctl_authorization_token_cb@@Base+0x6f0>
    8464:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
    8468:	e1a04000 	mov	r4, r0
    846c:	e58de020 	str	lr, [sp, #32]
    8470:	e59fe6dc 	ldr	lr, [pc, #1756]	@ 8b54 <wctl_authorization_token_cb@@Base+0x6f4>
    8474:	e3a05000 	mov	r5, #0
    8478:	e1cd60f8 	strd	r6, [sp, #8]
    847c:	e59f16d4 	ldr	r1, [pc, #1748]	@ 8b58 <wctl_authorization_token_cb@@Base+0x6f8>
    8480:	e1a02005 	mov	r2, r5
    8484:	e1cd81f0 	strd	r8, [sp, #16]
    8488:	e590701c 	ldr	r7, [r0, #28]
    848c:	e1a03005 	mov	r3, r5
    8490:	e08fc00c 	add	ip, pc, ip
    8494:	e1cda1f8 	strd	sl, [sp, #24]
    8498:	e59f06bc 	ldr	r0, [pc, #1724]	@ 8b5c <wctl_authorization_token_cb@@Base+0x6fc>
    849c:	e79c600e 	ldr	r6, [ip, lr]
    84a0:	e24dd014 	sub	sp, sp, #20
    84a4:	e08f1001 	add	r1, pc, r1
    84a8:	e58d5008 	str	r5, [sp, #8]
    84ac:	e08f0000 	add	r0, pc, r0
    84b0:	e596c000 	ldr	ip, [r6]
    84b4:	e58dc00c 	str	ip, [sp, #12]
    84b8:	ebfff991 	bl	6b04 <evhtp_kv_new@plt>
    84bc:	e1a01000 	mov	r1, r0
    84c0:	e1a00007 	mov	r0, r7
    84c4:	ebfff8ef 	bl	6888 <evhtp_kvs_add_kv@plt>
    84c8:	e59f0690 	ldr	r0, [pc, #1680]	@ 8b60 <wctl_authorization_token_cb@@Base+0x700>
    84cc:	e1a02005 	mov	r2, r5
    84d0:	e59f168c 	ldr	r1, [pc, #1676]	@ 8b64 <wctl_authorization_token_cb@@Base+0x704>
    84d4:	e1a03002 	mov	r3, r2
    84d8:	e594501c 	ldr	r5, [r4, #28]
    84dc:	e08f0000 	add	r0, pc, r0
    84e0:	e08f1001 	add	r1, pc, r1
    84e4:	ebfff986 	bl	6b04 <evhtp_kv_new@plt>
    84e8:	e1a01000 	mov	r1, r0
    84ec:	e1a00005 	mov	r0, r5
    84f0:	ebfff8e4 	bl	6888 <evhtp_kvs_add_kv@plt>
    84f4:	e5943024 	ldr	r3, [r4, #36]	@ 0x24
    84f8:	e3530000 	cmp	r3, #0
    84fc:	1a000061 	bne	8688 <wctl_authorization_token_cb@@Base+0x228>
    8500:	e59f1660 	ldr	r1, [pc, #1632]	@ 8b68 <wctl_authorization_token_cb@@Base+0x708>
    8504:	e5940018 	ldr	r0, [r4, #24]
    8508:	e08f1001 	add	r1, pc, r1
    850c:	ebfff8d7 	bl	6870 <evhtp_kv_find@plt>
    8510:	e59f1654 	ldr	r1, [pc, #1620]	@ 8b6c <wctl_authorization_token_cb@@Base+0x70c>
    8514:	e1a0b000 	mov	fp, r0
    8518:	e5940018 	ldr	r0, [r4, #24]
    851c:	e08f1001 	add	r1, pc, r1
    8520:	ebfff8d2 	bl	6870 <evhtp_kv_find@plt>
    8524:	e59f1644 	ldr	r1, [pc, #1604]	@ 8b70 <wctl_authorization_token_cb@@Base+0x710>
    8528:	e1a08000 	mov	r8, r0
    852c:	e5940018 	ldr	r0, [r4, #24]
    8530:	e08f1001 	add	r1, pc, r1
    8534:	ebfff8cd 	bl	6870 <evhtp_kv_find@plt>
    8538:	e594300c 	ldr	r3, [r4, #12]
    853c:	e1a0a000 	mov	sl, r0
    8540:	e59f162c 	ldr	r1, [pc, #1580]	@ 8b74 <wctl_authorization_token_cb@@Base+0x714>
    8544:	e5935010 	ldr	r5, [r3, #16]
    8548:	e08f1001 	add	r1, pc, r1
    854c:	e1a00005 	mov	r0, r5
    8550:	ebfff8c6 	bl	6870 <evhtp_kv_find@plt>
    8554:	e59f161c 	ldr	r1, [pc, #1564]	@ 8b78 <wctl_authorization_token_cb@@Base+0x718>
    8558:	e1a07000 	mov	r7, r0
    855c:	e1a00005 	mov	r0, r5
    8560:	e08f1001 	add	r1, pc, r1
    8564:	ebfff8c1 	bl	6870 <evhtp_kv_find@plt>
    8568:	e3570000 	cmp	r7, #0
    856c:	e1a09000 	mov	r9, r0
    8570:	0a000057 	beq	86d4 <wctl_authorization_token_cb@@Base+0x274>
    8574:	e5d73000 	ldrb	r3, [r7]
    8578:	e3530000 	cmp	r3, #0
    857c:	0a000024 	beq	8614 <wctl_authorization_token_cb@@Base+0x1b4>
    8580:	ebfff9fe 	bl	6d80 <wctl_user_get_list@plt>
    8584:	e5905004 	ldr	r5, [r0, #4]
    8588:	e1a08000 	mov	r8, r0
    858c:	e1500005 	cmp	r0, r5
    8590:	0a000038 	beq	8678 <wctl_authorization_token_cb@@Base+0x218>
    8594:	e59fa5e0 	ldr	sl, [pc, #1504]	@ 8b7c <wctl_authorization_token_cb@@Base+0x71c>
    8598:	e08fa00a 	add	sl, pc, sl
    859c:	e2850010 	add	r0, r5, #16
    85a0:	e1a01007 	mov	r1, r7
    85a4:	e58d5008 	str	r5, [sp, #8]
    85a8:	ebfffa60 	bl	6f30 <strcmp@plt>
    85ac:	e3500000 	cmp	r0, #0
    85b0:	1a00002d 	bne	866c <wctl_authorization_token_cb@@Base+0x20c>
    85b4:	e3590000 	cmp	r9, #0
    85b8:	0a000023 	beq	864c <wctl_authorization_token_cb@@Base+0x1ec>
    85bc:	e1a00009 	mov	r0, r9
    85c0:	e1a0100a 	mov	r1, sl
    85c4:	ebfffa59 	bl	6f30 <strcmp@plt>
    85c8:	e3500000 	cmp	r0, #0
    85cc:	1a00001e 	bne	864c <wctl_authorization_token_cb@@Base+0x1ec>
    85d0:	e3a03003 	mov	r3, #3
    85d4:	e5853260 	str	r3, [r5, #608]	@ 0x260
    85d8:	e5d57030 	ldrb	r7, [r5, #48]	@ 0x30
    85dc:	e3570000 	cmp	r7, #0
    85e0:	1a00000b 	bne	8614 <wctl_authorization_token_cb@@Base+0x1b4>
    85e4:	e2850030 	add	r0, r5, #48	@ 0x30
    85e8:	e3a01080 	mov	r1, #128	@ 0x80
    85ec:	ebfff67a 	bl	5fdc <wctl_generate_uid@plt>
    85f0:	e59d0008 	ldr	r0, [sp, #8]
    85f4:	e5807250 	str	r7, [r0, #592]	@ 0x250
    85f8:	ebfff8e4 	bl	6990 <wctl_user_save@plt>
    85fc:	e3500000 	cmp	r0, #0
    8600:	aa00002f 	bge	86c4 <wctl_authorization_token_cb@@Base+0x264>
    8604:	e1a00004 	mov	r0, r4
    8608:	e3a01f7d 	mov	r1, #500	@ 0x1f4
    860c:	ebfff7c5 	bl	6528 <evhtp_send_reply@plt>
    8610:	ea000002 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    8614:	e1a00004 	mov	r0, r4
    8618:	e3a01e19 	mov	r1, #400	@ 0x190
    861c:	ebfff7c1 	bl	6528 <evhtp_send_reply@plt>
    8620:	e59d200c 	ldr	r2, [sp, #12]
    8624:	e5963000 	ldr	r3, [r6]
    8628:	e1520003 	cmp	r2, r3
    862c:	1a0000f9 	bne	8a18 <wctl_authorization_token_cb@@Base+0x5b8>
    8630:	e28dd014 	add	sp, sp, #20
    8634:	e1cd40d0 	ldrd	r4, [sp]
    8638:	e1cd60d8 	ldrd	r6, [sp, #8]
    863c:	e1cd81d0 	ldrd	r8, [sp, #16]
    8640:	e1cda1d8 	ldrd	sl, [sp, #24]
    8644:	e28dd020 	add	sp, sp, #32
    8648:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    864c:	e5953260 	ldr	r3, [r5, #608]	@ 0x260
    8650:	e3530003 	cmp	r3, #3
    8654:	908ff103 	addls	pc, pc, r3, lsl #2
    8658:	ea000003 	b	866c <wctl_authorization_token_cb@@Base+0x20c>
    865c:	ea000014 	b	86b4 <wctl_authorization_token_cb@@Base+0x254>
    8660:	ea00000c 	b	8698 <wctl_authorization_token_cb@@Base+0x238>
    8664:	ea000012 	b	86b4 <wctl_authorization_token_cb@@Base+0x254>
    8668:	eaffffda 	b	85d8 <wctl_authorization_token_cb@@Base+0x178>
    866c:	e5955004 	ldr	r5, [r5, #4]
    8670:	e1580005 	cmp	r8, r5
    8674:	1affffc8 	bne	859c <wctl_authorization_token_cb@@Base+0x13c>
    8678:	e1a00004 	mov	r0, r4
    867c:	e3001193 	movw	r1, #403	@ 0x193
    8680:	ebfff7a8 	bl	6528 <evhtp_send_reply@plt>
    8684:	eaffffe5 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    8688:	e1a00004 	mov	r0, r4
    868c:	e3001195 	movw	r1, #405	@ 0x195
    8690:	ebfff7a4 	bl	6528 <evhtp_send_reply@plt>
    8694:	eaffffe1 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    8698:	e1a00005 	mov	r0, r5
    869c:	ebfffdb0 	bl	7d64 <wctl_async_destroy@@Base+0x158>
    86a0:	ebfff653 	bl	5ff4 <wctl_user_notify_db_change@plt>
    86a4:	e1a00004 	mov	r0, r4
    86a8:	e3a01e19 	mov	r1, #400	@ 0x190
    86ac:	ebfff79d 	bl	6528 <evhtp_send_reply@plt>
    86b0:	eaffffda 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    86b4:	e1a00004 	mov	r0, r4
    86b8:	e3001191 	movw	r1, #401	@ 0x191
    86bc:	ebfff799 	bl	6528 <evhtp_send_reply@plt>
    86c0:	eaffffd6 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    86c4:	e1a00004 	mov	r0, r4
    86c8:	e59d1008 	ldr	r1, [sp, #8]
    86cc:	ebfffdd2 	bl	7e1c <wctl_async_destroy@@Base+0x210>
    86d0:	eaffffd2 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    86d4:	e59f14a4 	ldr	r1, [pc, #1188]	@ 8b80 <wctl_authorization_token_cb@@Base+0x720>
    86d8:	e5940018 	ldr	r0, [r4, #24]
    86dc:	e08f1001 	add	r1, pc, r1
    86e0:	ebfff862 	bl	6870 <evhtp_kv_find@plt>
    86e4:	e3500000 	cmp	r0, #0
    86e8:	0a000007 	beq	870c <wctl_authorization_token_cb@@Base+0x2ac>
    86ec:	e1a00004 	mov	r0, r4
    86f0:	ebfff6db 	bl	6264 <wctl_authorization_check@plt>
    86f4:	e3500003 	cmp	r0, #3
    86f8:	e1a00004 	mov	r0, r4
    86fc:	1affffed 	bne	86b8 <wctl_authorization_token_cb@@Base+0x258>
    8700:	e3a010cc 	mov	r1, #204	@ 0xcc
    8704:	ebfff787 	bl	6528 <evhtp_send_reply@plt>
    8708:	eaffffc4 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    870c:	ebfff6f8 	bl	62f4 <wctl_pairing_is_ready@plt>
    8710:	e3500000 	cmp	r0, #0
    8714:	0affffd7 	beq	8678 <wctl_authorization_token_cb@@Base+0x218>
    8718:	ebfff69b 	bl	618c <wctl_authorization_user_autoclean@plt>
    871c:	e35b0000 	cmp	fp, #0
    8720:	158db004 	strne	fp, [sp, #4]
    8724:	0a0000bf 	beq	8a28 <wctl_authorization_token_cb@@Base+0x5c8>
    8728:	e35a0000 	cmp	sl, #0
    872c:	11a0700a 	movne	r7, sl
    8730:	0a0000b9 	beq	8a1c <wctl_authorization_token_cb@@Base+0x5bc>
    8734:	ebfff991 	bl	6d80 <wctl_user_get_list@plt>
    8738:	e2505000 	subs	r5, r0, #0
    873c:	0a00000f 	beq	8780 <wctl_authorization_token_cb@@Base+0x320>
    8740:	e5959004 	ldr	r9, [r5, #4]
    8744:	e1550009 	cmp	r5, r9
    8748:	0a00000c 	beq	8780 <wctl_authorization_token_cb@@Base+0x320>
    874c:	e2890e15 	add	r0, r9, #336	@ 0x150
    8750:	e1a01007 	mov	r1, r7
    8754:	ebfff9f5 	bl	6f30 <strcmp@plt>
    8758:	e3500000 	cmp	r0, #0
    875c:	1a000004 	bne	8774 <wctl_authorization_token_cb@@Base+0x314>
    8760:	e28900b0 	add	r0, r9, #176	@ 0xb0
    8764:	e59d1004 	ldr	r1, [sp, #4]
    8768:	ebfff9f0 	bl	6f30 <strcmp@plt>
    876c:	e3500000 	cmp	r0, #0
    8770:	0a00006f 	beq	8934 <wctl_authorization_token_cb@@Base+0x4d4>
    8774:	e5999004 	ldr	r9, [r9, #4]
    8778:	e1550009 	cmp	r5, r9
    877c:	1afffff2 	bne	874c <wctl_authorization_token_cb@@Base+0x2ec>
    8780:	ebfff97e 	bl	6d80 <wctl_user_get_list@plt>
    8784:	e3500000 	cmp	r0, #0
    8788:	0a00000b 	beq	87bc <wctl_authorization_token_cb@@Base+0x35c>
    878c:	e5903004 	ldr	r3, [r0, #4]
    8790:	e1500003 	cmp	r0, r3
    8794:	0a000008 	beq	87bc <wctl_authorization_token_cb@@Base+0x35c>
    8798:	e3a01000 	mov	r1, #0
    879c:	e5932260 	ldr	r2, [r3, #608]	@ 0x260
    87a0:	e5933004 	ldr	r3, [r3, #4]
    87a4:	e3520001 	cmp	r2, #1
    87a8:	12811001 	addne	r1, r1, #1
    87ac:	e1500003 	cmp	r0, r3
    87b0:	1afffff9 	bne	879c <wctl_authorization_token_cb@@Base+0x33c>
    87b4:	e3510009 	cmp	r1, #9
    87b8:	ca000059 	bgt	8924 <wctl_authorization_token_cb@@Base+0x4c4>
    87bc:	e28d0008 	add	r0, sp, #8
    87c0:	ebfff6a4 	bl	6258 <wctl_user_create@plt>
    87c4:	e3500000 	cmp	r0, #0
    87c8:	baffff8d 	blt	8604 <wctl_authorization_token_cb@@Base+0x1a4>
    87cc:	e3580000 	cmp	r8, #0
    87d0:	0a000098 	beq	8a38 <wctl_authorization_token_cb@@Base+0x5d8>
    87d4:	e35b0000 	cmp	fp, #0
    87d8:	e59d0008 	ldr	r0, [sp, #8]
    87dc:	0a0000a3 	beq	8a70 <wctl_authorization_token_cb@@Base+0x610>
    87e0:	e1a0100b 	mov	r1, fp
    87e4:	e3a02080 	mov	r2, #128	@ 0x80
    87e8:	e28000b0 	add	r0, r0, #176	@ 0xb0
    87ec:	ebfff65d 	bl	6168 <strncpy@plt>
    87f0:	e59d5008 	ldr	r5, [sp, #8]
    87f4:	e3a03000 	mov	r3, #0
    87f8:	e3580000 	cmp	r8, #0
    87fc:	e5c5312f 	strb	r3, [r5, #303]	@ 0x12f
    8800:	0a000097 	beq	8a64 <wctl_authorization_token_cb@@Base+0x604>
    8804:	e5d87000 	ldrb	r7, [r8]
    8808:	e3570069 	cmp	r7, #105	@ 0x69
    880c:	1a00004b 	bne	8940 <wctl_authorization_token_cb@@Base+0x4e0>
    8810:	e5d83001 	ldrb	r3, [r8, #1]
    8814:	e353006f 	cmp	r3, #111	@ 0x6f
    8818:	1a000048 	bne	8940 <wctl_authorization_token_cb@@Base+0x4e0>
    881c:	e5d83002 	ldrb	r3, [r8, #2]
    8820:	e3530073 	cmp	r3, #115	@ 0x73
    8824:	1a000045 	bne	8940 <wctl_authorization_token_cb@@Base+0x4e0>
    8828:	e5d83003 	ldrb	r3, [r8, #3]
    882c:	e3530000 	cmp	r3, #0
    8830:	1a000042 	bne	8940 <wctl_authorization_token_cb@@Base+0x4e0>
    8834:	e2850e13 	add	r0, r5, #304	@ 0x130
    8838:	e1a01008 	mov	r1, r8
    883c:	e3a02020 	mov	r2, #32
    8840:	ebfff648 	bl	6168 <strncpy@plt>
    8844:	e59d0008 	ldr	r0, [sp, #8]
    8848:	e3a03000 	mov	r3, #0
    884c:	e35a0000 	cmp	sl, #0
    8850:	e5c0314f 	strb	r3, [r0, #335]	@ 0x14f
    8854:	e2800e15 	add	r0, r0, #336	@ 0x150
    8858:	0a00008a 	beq	8a88 <wctl_authorization_token_cb@@Base+0x628>
    885c:	e1a0100a 	mov	r1, sl
    8860:	e3a020ff 	mov	r2, #255	@ 0xff
    8864:	ebfff63f 	bl	6168 <strncpy@plt>
    8868:	e59d8008 	ldr	r8, [sp, #8]
    886c:	e3a03000 	mov	r3, #0
    8870:	e5c8324e 	strb	r3, [r8, #590]	@ 0x24e
    8874:	ebfff941 	bl	6d80 <wctl_user_get_list@plt>
    8878:	e2505000 	subs	r5, r0, #0
    887c:	0a000063 	beq	8a10 <wctl_authorization_token_cb@@Base+0x5b0>
    8880:	e5d83130 	ldrb	r3, [r8, #304]	@ 0x130
    8884:	e3530069 	cmp	r3, #105	@ 0x69
    8888:	1a000046 	bne	89a8 <wctl_authorization_token_cb@@Base+0x548>
    888c:	e5d83131 	ldrb	r3, [r8, #305]	@ 0x131
    8890:	e353006f 	cmp	r3, #111	@ 0x6f
    8894:	1a000043 	bne	89a8 <wctl_authorization_token_cb@@Base+0x548>
    8898:	e5d83132 	ldrb	r3, [r8, #306]	@ 0x132
    889c:	e3530073 	cmp	r3, #115	@ 0x73
    88a0:	1a000040 	bne	89a8 <wctl_authorization_token_cb@@Base+0x548>
    88a4:	e5d83133 	ldrb	r3, [r8, #307]	@ 0x133
    88a8:	e3530000 	cmp	r3, #0
    88ac:	1a00003d 	bne	89a8 <wctl_authorization_token_cb@@Base+0x548>
    88b0:	e5953004 	ldr	r3, [r5, #4]
    88b4:	e1550003 	cmp	r5, r3
    88b8:	0a000054 	beq	8a10 <wctl_authorization_token_cb@@Base+0x5b0>
    88bc:	e3a0c000 	mov	ip, #0
    88c0:	e5932260 	ldr	r2, [r3, #608]	@ 0x260
    88c4:	e3520001 	cmp	r2, #1
    88c8:	0a000002 	beq	88d8 <wctl_authorization_token_cb@@Base+0x478>
    88cc:	e5932254 	ldr	r2, [r3, #596]	@ 0x254
    88d0:	e152000c 	cmp	r2, ip
    88d4:	a282c001 	addge	ip, r2, #1
    88d8:	e5933004 	ldr	r3, [r3, #4]
    88dc:	e1550003 	cmp	r5, r3
    88e0:	1afffff6 	bne	88c0 <wctl_authorization_token_cb@@Base+0x460>
    88e4:	e59d0008 	ldr	r0, [sp, #8]
    88e8:	e3a01020 	mov	r1, #32
    88ec:	e580c254 	str	ip, [r0, #596]	@ 0x254
    88f0:	e2800010 	add	r0, r0, #16
    88f4:	ebfff5b8 	bl	5fdc <wctl_generate_uid@plt>
    88f8:	e59d0008 	ldr	r0, [sp, #8]
    88fc:	ebfff823 	bl	6990 <wctl_user_save@plt>
    8900:	e3500000 	cmp	r0, #0
    8904:	baffff3e 	blt	8604 <wctl_authorization_token_cb@@Base+0x1a4>
    8908:	ebfff5b9 	bl	5ff4 <wctl_user_notify_db_change@plt>
    890c:	e59d0008 	ldr	r0, [sp, #8]
    8910:	ebfff770 	bl	66d8 <wctl_user_notify_change_info@plt>
    8914:	e1a00004 	mov	r0, r4
    8918:	e59d1008 	ldr	r1, [sp, #8]
    891c:	ebfffd3e 	bl	7e1c <wctl_async_destroy@@Base+0x210>
    8920:	eaffff3e 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    8924:	e1a00004 	mov	r0, r4
    8928:	e30011f7 	movw	r1, #503	@ 0x1f7
    892c:	ebfff6fd 	bl	6528 <evhtp_send_reply@plt>
    8930:	eaffff3a 	b	8620 <wctl_authorization_token_cb@@Base+0x1c0>
    8934:	e1a00009 	mov	r0, r9
    8938:	ebfffd09 	bl	7d64 <wctl_async_destroy@@Base+0x158>
    893c:	eaffff8f 	b	8780 <wctl_authorization_token_cb@@Base+0x320>
    8940:	e59f123c 	ldr	r1, [pc, #572]	@ 8b84 <wctl_authorization_token_cb@@Base+0x724>
    8944:	e1a00008 	mov	r0, r8
    8948:	e08f1001 	add	r1, pc, r1
    894c:	ebfff977 	bl	6f30 <strcmp@plt>
    8950:	e3500000 	cmp	r0, #0
    8954:	0affffb6 	beq	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8958:	e59f1228 	ldr	r1, [pc, #552]	@ 8b88 <wctl_authorization_token_cb@@Base+0x728>
    895c:	e1a00008 	mov	r0, r8
    8960:	e08f1001 	add	r1, pc, r1
    8964:	ebfff971 	bl	6f30 <strcmp@plt>
    8968:	e3500000 	cmp	r0, #0
    896c:	0affffb0 	beq	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8970:	e3570073 	cmp	r7, #115	@ 0x73
    8974:	1a00004b 	bne	8aa8 <wctl_authorization_token_cb@@Base+0x648>
    8978:	e5d83001 	ldrb	r3, [r8, #1]
    897c:	e3530074 	cmp	r3, #116	@ 0x74
    8980:	1a000045 	bne	8a9c <wctl_authorization_token_cb@@Base+0x63c>
    8984:	e5d83002 	ldrb	r3, [r8, #2]
    8988:	e3530062 	cmp	r3, #98	@ 0x62
    898c:	1a000051 	bne	8ad8 <wctl_authorization_token_cb@@Base+0x678>
    8990:	e5d83003 	ldrb	r3, [r8, #3]
    8994:	e3530000 	cmp	r3, #0
    8998:	0affffa5 	beq	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    899c:	e59f81e8 	ldr	r8, [pc, #488]	@ 8b8c <wctl_authorization_token_cb@@Base+0x72c>
    89a0:	e08f8008 	add	r8, pc, r8
    89a4:	eaffffa2 	b	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    89a8:	e59f11e0 	ldr	r1, [pc, #480]	@ 8b90 <wctl_authorization_token_cb@@Base+0x730>
    89ac:	e2887e13 	add	r7, r8, #304	@ 0x130
    89b0:	e1a00007 	mov	r0, r7
    89b4:	e08f1001 	add	r1, pc, r1
    89b8:	ebfff95c 	bl	6f30 <strcmp@plt>
    89bc:	e3500000 	cmp	r0, #0
    89c0:	0affffba 	beq	88b0 <wctl_authorization_token_cb@@Base+0x450>
    89c4:	e59f11c8 	ldr	r1, [pc, #456]	@ 8b94 <wctl_authorization_token_cb@@Base+0x734>
    89c8:	e1a00007 	mov	r0, r7
    89cc:	e08f1001 	add	r1, pc, r1
    89d0:	ebfff956 	bl	6f30 <strcmp@plt>
    89d4:	e3500000 	cmp	r0, #0
    89d8:	0affffb4 	beq	88b0 <wctl_authorization_token_cb@@Base+0x450>
    89dc:	e5957004 	ldr	r7, [r5, #4]
    89e0:	e1550007 	cmp	r5, r7
    89e4:	0a000009 	beq	8a10 <wctl_authorization_token_cb@@Base+0x5b0>
    89e8:	e1580007 	cmp	r8, r7
    89ec:	0a000004 	beq	8a04 <wctl_authorization_token_cb@@Base+0x5a4>
    89f0:	e5973254 	ldr	r3, [r7, #596]	@ 0x254
    89f4:	e1a00007 	mov	r0, r7
    89f8:	e2833001 	add	r3, r3, #1
    89fc:	e5873254 	str	r3, [r7, #596]	@ 0x254
    8a00:	ebfff7e2 	bl	6990 <wctl_user_save@plt>
    8a04:	e5977004 	ldr	r7, [r7, #4]
    8a08:	e1550007 	cmp	r5, r7
    8a0c:	1afffff5 	bne	89e8 <wctl_authorization_token_cb@@Base+0x588>
    8a10:	e3a0c000 	mov	ip, #0
    8a14:	eaffffb2 	b	88e4 <wctl_authorization_token_cb@@Base+0x484>
    8a18:	ebfff809 	bl	6a44 <__stack_chk_fail@plt>
    8a1c:	e59f7174 	ldr	r7, [pc, #372]	@ 8b98 <wctl_authorization_token_cb@@Base+0x738>
    8a20:	e08f7007 	add	r7, pc, r7
    8a24:	eaffff42 	b	8734 <wctl_authorization_token_cb@@Base+0x2d4>
    8a28:	e59f316c 	ldr	r3, [pc, #364]	@ 8b9c <wctl_authorization_token_cb@@Base+0x73c>
    8a2c:	e08f3003 	add	r3, pc, r3
    8a30:	e58d3004 	str	r3, [sp, #4]
    8a34:	eaffff3b 	b	8728 <wctl_authorization_token_cb@@Base+0x2c8>
    8a38:	e35a0000 	cmp	sl, #0
    8a3c:	0affff64 	beq	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8a40:	e59f1158 	ldr	r1, [pc, #344]	@ 8ba0 <wctl_authorization_token_cb@@Base+0x740>
    8a44:	e1a0000a 	mov	r0, sl
    8a48:	e08f1001 	add	r1, pc, r1
    8a4c:	ebfff7ab 	bl	6900 <strstr@plt>
    8a50:	e3500000 	cmp	r0, #0
    8a54:	0a000016 	beq	8ab4 <wctl_authorization_token_cb@@Base+0x654>
    8a58:	e59f8144 	ldr	r8, [pc, #324]	@ 8ba4 <wctl_authorization_token_cb@@Base+0x744>
    8a5c:	e08f8008 	add	r8, pc, r8
    8a60:	eaffff5b 	b	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8a64:	e59f813c 	ldr	r8, [pc, #316]	@ 8ba8 <wctl_authorization_token_cb@@Base+0x748>
    8a68:	e08f8008 	add	r8, pc, r8
    8a6c:	eaffff70 	b	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8a70:	e59f1134 	ldr	r1, [pc, #308]	@ 8bac <wctl_authorization_token_cb@@Base+0x74c>
    8a74:	e3a02080 	mov	r2, #128	@ 0x80
    8a78:	e28000b0 	add	r0, r0, #176	@ 0xb0
    8a7c:	e08f1001 	add	r1, pc, r1
    8a80:	ebfff5b8 	bl	6168 <strncpy@plt>
    8a84:	eaffff59 	b	87f0 <wctl_authorization_token_cb@@Base+0x390>
    8a88:	e59f1120 	ldr	r1, [pc, #288]	@ 8bb0 <wctl_authorization_token_cb@@Base+0x750>
    8a8c:	e3a020ff 	mov	r2, #255	@ 0xff
    8a90:	e08f1001 	add	r1, pc, r1
    8a94:	ebfff5b3 	bl	6168 <strncpy@plt>
    8a98:	eaffff72 	b	8868 <wctl_authorization_token_cb@@Base+0x408>
    8a9c:	e59f8110 	ldr	r8, [pc, #272]	@ 8bb4 <wctl_authorization_token_cb@@Base+0x754>
    8aa0:	e08f8008 	add	r8, pc, r8
    8aa4:	eaffff62 	b	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8aa8:	e59f8108 	ldr	r8, [pc, #264]	@ 8bb8 <wctl_authorization_token_cb@@Base+0x758>
    8aac:	e08f8008 	add	r8, pc, r8
    8ab0:	eaffff5f 	b	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8ab4:	e59f1100 	ldr	r1, [pc, #256]	@ 8bbc <wctl_authorization_token_cb@@Base+0x75c>
    8ab8:	e1a0000a 	mov	r0, sl
    8abc:	e08f1001 	add	r1, pc, r1
    8ac0:	ebfff78e 	bl	6900 <strstr@plt>
    8ac4:	e3500000 	cmp	r0, #0
    8ac8:	0a000005 	beq	8ae4 <wctl_authorization_token_cb@@Base+0x684>
    8acc:	e59f80ec 	ldr	r8, [pc, #236]	@ 8bc0 <wctl_authorization_token_cb@@Base+0x760>
    8ad0:	e08f8008 	add	r8, pc, r8
    8ad4:	eaffff3e 	b	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8ad8:	e59f80e4 	ldr	r8, [pc, #228]	@ 8bc4 <wctl_authorization_token_cb@@Base+0x764>
    8adc:	e08f8008 	add	r8, pc, r8
    8ae0:	eaffff53 	b	8834 <wctl_authorization_token_cb@@Base+0x3d4>
    8ae4:	e59f10dc 	ldr	r1, [pc, #220]	@ 8bc8 <wctl_authorization_token_cb@@Base+0x768>
    8ae8:	e1a0000a 	mov	r0, sl
    8aec:	e08f1001 	add	r1, pc, r1
    8af0:	ebfff782 	bl	6900 <strstr@plt>
    8af4:	e3500000 	cmp	r0, #0
    8af8:	0a000002 	beq	8b08 <wctl_authorization_token_cb@@Base+0x6a8>
    8afc:	e59f80c8 	ldr	r8, [pc, #200]	@ 8bcc <wctl_authorization_token_cb@@Base+0x76c>
    8b00:	e08f8008 	add	r8, pc, r8
    8b04:	eaffff32 	b	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8b08:	e59f10c0 	ldr	r1, [pc, #192]	@ 8bd0 <wctl_authorization_token_cb@@Base+0x770>
    8b0c:	e1a0000a 	mov	r0, sl
    8b10:	e08f1001 	add	r1, pc, r1
    8b14:	ebfff779 	bl	6900 <strstr@plt>
    8b18:	e3500000 	cmp	r0, #0
    8b1c:	0a000002 	beq	8b2c <wctl_authorization_token_cb@@Base+0x6cc>
    8b20:	e59f80ac 	ldr	r8, [pc, #172]	@ 8bd4 <wctl_authorization_token_cb@@Base+0x774>
    8b24:	e08f8008 	add	r8, pc, r8
    8b28:	eaffff29 	b	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8b2c:	e59f10a4 	ldr	r1, [pc, #164]	@ 8bd8 <wctl_authorization_token_cb@@Base+0x778>
    8b30:	e1a0000a 	mov	r0, sl
    8b34:	e08f1001 	add	r1, pc, r1
    8b38:	ebfff770 	bl	6900 <strstr@plt>
    8b3c:	e3500000 	cmp	r0, #0
    8b40:	0affff23 	beq	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8b44:	e59f8090 	ldr	r8, [pc, #144]	@ 8bdc <wctl_authorization_token_cb@@Base+0x77c>
    8b48:	e08f8008 	add	r8, pc, r8
    8b4c:	eaffff20 	b	87d4 <wctl_authorization_token_cb@@Base+0x374>
    8b50:	00029518 	andeq	r9, r2, r8, lsl r5
    8b54:	0000060c 	andeq	r0, r0, ip, lsl #12
    8b58:	00016cf4 	strdeq	r6, [r1], -r4
    8b5c:	00016ce4 	andeq	r6, r1, r4, ror #25
    8b60:	00016ccc 	andeq	r6, r1, ip, asr #25
    8b64:	00016cd8 	ldrdeq	r6, [r1], -r8
    8b68:	00016cc4 	andeq	r6, r1, r4, asr #25
    8b6c:	00016cb8 			@ <UNDEFINED> instruction: 0x00016cb8
    8b70:	00016c38 	andeq	r6, r1, r8, lsr ip
    8b74:	00016918 	andeq	r6, r1, r8, lsl r9
    8b78:	00016c80 	andeq	r6, r1, r0, lsl #25
    8b7c:	00016c78 	andeq	r6, r1, r8, ror ip
    8b80:	00016a7c 	andeq	r6, r1, ip, ror sl
    8b84:	00016838 	andeq	r6, r1, r8, lsr r8
    8b88:	00016818 	andeq	r6, r1, r8, lsl r8
    8b8c:	000167e8 	andeq	r6, r1, r8, ror #15
    8b90:	000167cc 	andeq	r6, r1, ip, asr #15
    8b94:	000167ac 	andeq	r6, r1, ip, lsr #15
    8b98:	00016c4c 	andeq	r6, r1, ip, asr #24
    8b9c:	00016c40 	andeq	r6, r1, r0, asr #24
    8ba0:	000167a0 	andeq	r6, r1, r0, lsr #15
    8ba4:	00016718 	andeq	r6, r1, r8, lsl r7
    8ba8:	00016720 	andeq	r6, r1, r0, lsr #14
    8bac:	00016bf0 	strdeq	r6, [r1], -r0
    8bb0:	00016bdc 	ldrdeq	r6, [r1], -ip
    8bb4:	000166e8 	andeq	r6, r1, r8, ror #13
    8bb8:	000166dc 	ldrdeq	r6, [r1], -ip
    8bbc:	00016734 	andeq	r6, r1, r4, lsr r7
    8bc0:	000166a4 	andeq	r6, r1, r4, lsr #13
    8bc4:	000166ac 	andeq	r6, r1, ip, lsr #13
    8bc8:	0001670c 	andeq	r6, r1, ip, lsl #14
    8bcc:	00016674 	andeq	r6, r1, r4, ror r6
    8bd0:	000166f0 	strdeq	r6, [r1], -r0
    8bd4:	0001665c 	andeq	r6, r1, ip, asr r6
    8bd8:	000166d4 	ldrdeq	r6, [r1], -r4
    8bdc:	00016630 	andeq	r6, r1, r0, lsr r6

00008be0 <wctl_authorization_users_cb@@Base>:
    8be0:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
    8be4:	e59fc600 	ldr	ip, [pc, #1536]	@ 91ec <wctl_authorization_users_cb@@Base+0x60c>
    8be8:	e1a05000 	mov	r5, r0
    8bec:	e1cd60f8 	strd	r6, [sp, #8]
    8bf0:	e59f75f8 	ldr	r7, [pc, #1528]	@ 91f0 <wctl_authorization_users_cb@@Base+0x610>
    8bf4:	e3a02000 	mov	r2, #0
    8bf8:	e58de020 	str	lr, [sp, #32]
    8bfc:	e590401c 	ldr	r4, [r0, #28]
    8c00:	e1a03002 	mov	r3, r2
    8c04:	e1cd81f0 	strd	r8, [sp, #16]
    8c08:	e59f05e4 	ldr	r0, [pc, #1508]	@ 91f4 <wctl_authorization_users_cb@@Base+0x614>
    8c0c:	e1cda1f8 	strd	sl, [sp, #24]
    8c10:	e59f15e0 	ldr	r1, [pc, #1504]	@ 91f8 <wctl_authorization_users_cb@@Base+0x618>
    8c14:	e24dd0fc 	sub	sp, sp, #252	@ 0xfc
    8c18:	e08f7007 	add	r7, pc, r7
    8c1c:	e797a00c 	ldr	sl, [r7, ip]
    8c20:	e08f0000 	add	r0, pc, r0
    8c24:	e08f1001 	add	r1, pc, r1
    8c28:	e59ac000 	ldr	ip, [sl]
    8c2c:	e58dc0f4 	str	ip, [sp, #244]	@ 0xf4
    8c30:	ebfff7b3 	bl	6b04 <evhtp_kv_new@plt>
    8c34:	e1a01000 	mov	r1, r0
    8c38:	e1a00004 	mov	r0, r4
    8c3c:	ebfff711 	bl	6888 <evhtp_kvs_add_kv@plt>
    8c40:	e59f05b4 	ldr	r0, [pc, #1460]	@ 91fc <wctl_authorization_users_cb@@Base+0x61c>
    8c44:	e3a02000 	mov	r2, #0
    8c48:	e59f15b0 	ldr	r1, [pc, #1456]	@ 9200 <wctl_authorization_users_cb@@Base+0x620>
    8c4c:	e1a03002 	mov	r3, r2
    8c50:	e595401c 	ldr	r4, [r5, #28]
    8c54:	e08f0000 	add	r0, pc, r0
    8c58:	e08f1001 	add	r1, pc, r1
    8c5c:	ebfff7a8 	bl	6b04 <evhtp_kv_new@plt>
    8c60:	e1a01000 	mov	r1, r0
    8c64:	e1a00004 	mov	r0, r4
    8c68:	ebfff706 	bl	6888 <evhtp_kvs_add_kv@plt>
    8c6c:	e5953024 	ldr	r3, [r5, #36]	@ 0x24
    8c70:	e3530000 	cmp	r3, #0
    8c74:	1a000027 	bne	8d18 <wctl_authorization_users_cb@@Base+0x138>
    8c78:	e595300c 	ldr	r3, [r5, #12]
    8c7c:	e59f1580 	ldr	r1, [pc, #1408]	@ 9204 <wctl_authorization_users_cb@@Base+0x624>
    8c80:	e5936010 	ldr	r6, [r3, #16]
    8c84:	e08f1001 	add	r1, pc, r1
    8c88:	e1a00006 	mov	r0, r6
    8c8c:	ebfff6f7 	bl	6870 <evhtp_kv_find@plt>
    8c90:	e59f1570 	ldr	r1, [pc, #1392]	@ 9208 <wctl_authorization_users_cb@@Base+0x628>
    8c94:	e1a04000 	mov	r4, r0
    8c98:	e1a00006 	mov	r0, r6
    8c9c:	e08f1001 	add	r1, pc, r1
    8ca0:	ebfff6f2 	bl	6870 <evhtp_kv_find@plt>
    8ca4:	e3540000 	cmp	r4, #0
    8ca8:	0a000021 	beq	8d34 <wctl_authorization_users_cb@@Base+0x154>
    8cac:	e59f1558 	ldr	r1, [pc, #1368]	@ 920c <wctl_authorization_users_cb@@Base+0x62c>
    8cb0:	e1a00004 	mov	r0, r4
    8cb4:	e08f1001 	add	r1, pc, r1
    8cb8:	ebfff89c 	bl	6f30 <strcmp@plt>
    8cbc:	e3500000 	cmp	r0, #0
    8cc0:	0a000018 	beq	8d28 <wctl_authorization_users_cb@@Base+0x148>
    8cc4:	e59f1544 	ldr	r1, [pc, #1348]	@ 9210 <wctl_authorization_users_cb@@Base+0x630>
    8cc8:	e1a00004 	mov	r0, r4
    8ccc:	e08f1001 	add	r1, pc, r1
    8cd0:	ebfff896 	bl	6f30 <strcmp@plt>
    8cd4:	e3500000 	cmp	r0, #0
    8cd8:	1a000000 	bne	8ce0 <wctl_authorization_users_cb@@Base+0x100>
    8cdc:	ebfff563 	bl	6270 <wctl_authorization_control_set@plt>
    8ce0:	e1a00005 	mov	r0, r5
    8ce4:	e3a010cc 	mov	r1, #204	@ 0xcc
    8ce8:	ebfff60e 	bl	6528 <evhtp_send_reply@plt>
    8cec:	e59d20f4 	ldr	r2, [sp, #244]	@ 0xf4
    8cf0:	e59a3000 	ldr	r3, [sl]
    8cf4:	e1520003 	cmp	r2, r3
    8cf8:	1a00013a 	bne	91e8 <wctl_authorization_users_cb@@Base+0x608>
    8cfc:	e28dd0fc 	add	sp, sp, #252	@ 0xfc
    8d00:	e1cd40d0 	ldrd	r4, [sp]
    8d04:	e1cd60d8 	ldrd	r6, [sp, #8]
    8d08:	e1cd81d0 	ldrd	r8, [sp, #16]
    8d0c:	e1cda1d8 	ldrd	sl, [sp, #24]
    8d10:	e28dd020 	add	sp, sp, #32
    8d14:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    8d18:	e1a00005 	mov	r0, r5
    8d1c:	e3001195 	movw	r1, #405	@ 0x195
    8d20:	ebfff600 	bl	6528 <evhtp_send_reply@plt>
    8d24:	eafffff0 	b	8cec <wctl_authorization_users_cb@@Base+0x10c>
    8d28:	e3a00001 	mov	r0, #1
    8d2c:	ebfff54f 	bl	6270 <wctl_authorization_control_set@plt>
    8d30:	eaffffea 	b	8ce0 <wctl_authorization_users_cb@@Base+0x100>
    8d34:	e3500000 	cmp	r0, #0
    8d38:	0a000004 	beq	8d50 <wctl_authorization_users_cb@@Base+0x170>
    8d3c:	e59f14d0 	ldr	r1, [pc, #1232]	@ 9214 <wctl_authorization_users_cb@@Base+0x634>
    8d40:	e08f1001 	add	r1, pc, r1
    8d44:	ebfff879 	bl	6f30 <strcmp@plt>
    8d48:	e3500000 	cmp	r0, #0
    8d4c:	0a000120 	beq	91d4 <wctl_authorization_users_cb@@Base+0x5f4>
    8d50:	e1a00005 	mov	r0, r5
    8d54:	ebfff542 	bl	6264 <wctl_authorization_check@plt>
    8d58:	e3500003 	cmp	r0, #3
    8d5c:	0a000003 	beq	8d70 <wctl_authorization_users_cb@@Base+0x190>
    8d60:	e1a00005 	mov	r0, r5
    8d64:	e3001191 	movw	r1, #401	@ 0x191
    8d68:	ebfff5ee 	bl	6528 <evhtp_send_reply@plt>
    8d6c:	eaffffde 	b	8cec <wctl_authorization_users_cb@@Base+0x10c>
    8d70:	ebfff505 	bl	618c <wctl_authorization_user_autoclean@plt>
    8d74:	ebfff801 	bl	6d80 <wctl_user_get_list@plt>
    8d78:	e58d0008 	str	r0, [sp, #8]
    8d7c:	ebfff712 	bl	69cc <cson_value_new_object@plt>
    8d80:	e58d0028 	str	r0, [sp, #40]	@ 0x28
    8d84:	ebfff770 	bl	6b4c <cson_value_get_object@plt>
    8d88:	e1a06000 	mov	r6, r0
    8d8c:	ebfff549 	bl	62b8 <cson_value_new_array@plt>
    8d90:	e59f1480 	ldr	r1, [pc, #1152]	@ 9218 <wctl_authorization_users_cb@@Base+0x638>
    8d94:	e1a04000 	mov	r4, r0
    8d98:	e1a00006 	mov	r0, r6
    8d9c:	e1a02004 	mov	r2, r4
    8da0:	e08f1001 	add	r1, pc, r1
    8da4:	ebfff702 	bl	69b4 <cson_object_set@plt>
    8da8:	e1a00004 	mov	r0, r4
    8dac:	ebfff4d8 	bl	6114 <cson_value_get_array@plt>
    8db0:	e59d2008 	ldr	r2, [sp, #8]
    8db4:	e58d000c 	str	r0, [sp, #12]
    8db8:	e5924004 	ldr	r4, [r2, #4]
    8dbc:	e1520004 	cmp	r2, r4
    8dc0:	0a000105 	beq	91dc <wctl_authorization_users_cb@@Base+0x5fc>
    8dc4:	e59f3450 	ldr	r3, [pc, #1104]	@ 921c <wctl_authorization_users_cb@@Base+0x63c>
    8dc8:	e3a02000 	mov	r2, #0
    8dcc:	e28d9048 	add	r9, sp, #72	@ 0x48
    8dd0:	e28d8074 	add	r8, sp, #116	@ 0x74
    8dd4:	e58d502c 	str	r5, [sp, #44]	@ 0x2c
    8dd8:	e58d2004 	str	r2, [sp, #4]
    8ddc:	e59f243c 	ldr	r2, [pc, #1084]	@ 9220 <wctl_authorization_users_cb@@Base+0x640>
    8de0:	e58d7030 	str	r7, [sp, #48]	@ 0x30
    8de4:	e08f3003 	add	r3, pc, r3
    8de8:	e58da034 	str	sl, [sp, #52]	@ 0x34
    8dec:	e58d3010 	str	r3, [sp, #16]
    8df0:	e59f342c 	ldr	r3, [pc, #1068]	@ 9224 <wctl_authorization_users_cb@@Base+0x644>
    8df4:	e08f2002 	add	r2, pc, r2
    8df8:	e58d2018 	str	r2, [sp, #24]
    8dfc:	e59f2424 	ldr	r2, [pc, #1060]	@ 9228 <wctl_authorization_users_cb@@Base+0x648>
    8e00:	e08f3003 	add	r3, pc, r3
    8e04:	e58d3014 	str	r3, [sp, #20]
    8e08:	e59f341c 	ldr	r3, [pc, #1052]	@ 922c <wctl_authorization_users_cb@@Base+0x64c>
    8e0c:	e08f2002 	add	r2, pc, r2
    8e10:	e58d2020 	str	r2, [sp, #32]
    8e14:	e08f3003 	add	r3, pc, r3
    8e18:	e58d301c 	str	r3, [sp, #28]
    8e1c:	e59f340c 	ldr	r3, [pc, #1036]	@ 9230 <wctl_authorization_users_cb@@Base+0x650>
    8e20:	e08f3003 	add	r3, pc, r3
    8e24:	e58d3024 	str	r3, [sp, #36]	@ 0x24
    8e28:	ebfff6e7 	bl	69cc <cson_value_new_object@plt>
    8e2c:	e1a07000 	mov	r7, r0
    8e30:	e284a010 	add	sl, r4, #16
    8e34:	ebfff744 	bl	6b4c <cson_value_get_object@plt>
    8e38:	e1a05000 	mov	r5, r0
    8e3c:	e1c400d8 	ldrd	r0, [r4, #8]
    8e40:	e2846030 	add	r6, r4, #48	@ 0x30
    8e44:	ebfff77c 	bl	6c3c <cson_value_new_integer@plt>
    8e48:	e1a02000 	mov	r2, r0
    8e4c:	e59d1010 	ldr	r1, [sp, #16]
    8e50:	e1a00005 	mov	r0, r5
    8e54:	ebfff6d6 	bl	69b4 <cson_object_set@plt>
    8e58:	e1a0000a 	mov	r0, sl
    8e5c:	e284b0b0 	add	fp, r4, #176	@ 0xb0
    8e60:	ebfff5e6 	bl	6600 <strlen@plt>
    8e64:	e1a01000 	mov	r1, r0
    8e68:	e1a0000a 	mov	r0, sl
    8e6c:	ebfff71b 	bl	6ae0 <cson_value_new_string@plt>
    8e70:	e1a02000 	mov	r2, r0
    8e74:	e59d1014 	ldr	r1, [sp, #20]
    8e78:	e1a00005 	mov	r0, r5
    8e7c:	ebfff6cc 	bl	69b4 <cson_object_set@plt>
    8e80:	e5940250 	ldr	r0, [r4, #592]	@ 0x250
    8e84:	e284ae13 	add	sl, r4, #304	@ 0x130
    8e88:	e1a01fc0 	asr	r1, r0, #31
    8e8c:	ebfff76a 	bl	6c3c <cson_value_new_integer@plt>
    8e90:	e1a02000 	mov	r2, r0
    8e94:	e59d1018 	ldr	r1, [sp, #24]
    8e98:	e1a00005 	mov	r0, r5
    8e9c:	ebfff6c4 	bl	69b4 <cson_object_set@plt>
    8ea0:	e1a00006 	mov	r0, r6
    8ea4:	ebfff5d5 	bl	6600 <strlen@plt>
    8ea8:	e1a01000 	mov	r1, r0
    8eac:	e1a00006 	mov	r0, r6
    8eb0:	ebfff70a 	bl	6ae0 <cson_value_new_string@plt>
    8eb4:	e1a02000 	mov	r2, r0
    8eb8:	e59d101c 	ldr	r1, [sp, #28]
    8ebc:	e1a00005 	mov	r0, r5
    8ec0:	ebfff6bb 	bl	69b4 <cson_object_set@plt>
    8ec4:	e1a0000b 	mov	r0, fp
    8ec8:	ebfff5cc 	bl	6600 <strlen@plt>
    8ecc:	e1a01000 	mov	r1, r0
    8ed0:	e1a0000b 	mov	r0, fp
    8ed4:	ebfff701 	bl	6ae0 <cson_value_new_string@plt>
    8ed8:	e1a02000 	mov	r2, r0
    8edc:	e59d1020 	ldr	r1, [sp, #32]
    8ee0:	e1a00005 	mov	r0, r5
    8ee4:	ebfff6b2 	bl	69b4 <cson_object_set@plt>
    8ee8:	e1a0000a 	mov	r0, sl
    8eec:	e284be15 	add	fp, r4, #336	@ 0x150
    8ef0:	ebfff5c2 	bl	6600 <strlen@plt>
    8ef4:	e1a01000 	mov	r1, r0
    8ef8:	e1a0000a 	mov	r0, sl
    8efc:	ebfff6f7 	bl	6ae0 <cson_value_new_string@plt>
    8f00:	e1a02000 	mov	r2, r0
    8f04:	e59d1024 	ldr	r1, [sp, #36]	@ 0x24
    8f08:	e1a00005 	mov	r0, r5
    8f0c:	ebfff6a8 	bl	69b4 <cson_object_set@plt>
    8f10:	e1a0000b 	mov	r0, fp
    8f14:	ebfff5b9 	bl	6600 <strlen@plt>
    8f18:	e1a01000 	mov	r1, r0
    8f1c:	e1a0000b 	mov	r0, fp
    8f20:	ebfff6ee 	bl	6ae0 <cson_value_new_string@plt>
    8f24:	e59f1308 	ldr	r1, [pc, #776]	@ 9234 <wctl_authorization_users_cb@@Base+0x654>
    8f28:	e1a02000 	mov	r2, r0
    8f2c:	e1a00005 	mov	r0, r5
    8f30:	e08f1001 	add	r1, pc, r1
    8f34:	ebfff69e 	bl	69b4 <cson_object_set@plt>
    8f38:	e5940254 	ldr	r0, [r4, #596]	@ 0x254
    8f3c:	e1a01fc0 	asr	r1, r0, #31
    8f40:	ebfff73d 	bl	6c3c <cson_value_new_integer@plt>
    8f44:	e59f12ec 	ldr	r1, [pc, #748]	@ 9238 <wctl_authorization_users_cb@@Base+0x658>
    8f48:	e1a02000 	mov	r2, r0
    8f4c:	e1a00005 	mov	r0, r5
    8f50:	e08f1001 	add	r1, pc, r1
    8f54:	ebfff696 	bl	69b4 <cson_object_set@plt>
    8f58:	e594025c 	ldr	r0, [r4, #604]	@ 0x25c
    8f5c:	e1a01fc0 	asr	r1, r0, #31
    8f60:	ebfff735 	bl	6c3c <cson_value_new_integer@plt>
    8f64:	e59f12d0 	ldr	r1, [pc, #720]	@ 923c <wctl_authorization_users_cb@@Base+0x65c>
    8f68:	e1a02000 	mov	r2, r0
    8f6c:	e1a00005 	mov	r0, r5
    8f70:	e08f1001 	add	r1, pc, r1
    8f74:	ebfff68e 	bl	69b4 <cson_object_set@plt>
    8f78:	e5d40258 	ldrb	r0, [r4, #600]	@ 0x258
    8f7c:	ebfff49a 	bl	61ec <cson_value_new_bool@plt>
    8f80:	e59f12b8 	ldr	r1, [pc, #696]	@ 9240 <wctl_authorization_users_cb@@Base+0x660>
    8f84:	e1a02000 	mov	r2, r0
    8f88:	e1a00005 	mov	r0, r5
    8f8c:	e08f1001 	add	r1, pc, r1
    8f90:	ebfff687 	bl	69b4 <cson_object_set@plt>
    8f94:	e5940260 	ldr	r0, [r4, #608]	@ 0x260
    8f98:	e2400003 	sub	r0, r0, #3
    8f9c:	e16f0f10 	clz	r0, r0
    8fa0:	e1a002a0 	lsr	r0, r0, #5
    8fa4:	ebfff490 	bl	61ec <cson_value_new_bool@plt>
    8fa8:	e59f1294 	ldr	r1, [pc, #660]	@ 9244 <wctl_authorization_users_cb@@Base+0x664>
    8fac:	e1a02000 	mov	r2, r0
    8fb0:	e1a00005 	mov	r0, r5
    8fb4:	e08f1001 	add	r1, pc, r1
    8fb8:	ebfff67d 	bl	69b4 <cson_object_set@plt>
    8fbc:	e5943260 	ldr	r3, [r4, #608]	@ 0x260
    8fc0:	e3530003 	cmp	r3, #3
    8fc4:	908ff103 	addls	pc, pc, r3, lsl #2
    8fc8:	ea00007d 	b	91c4 <wctl_authorization_users_cb@@Base+0x5e4>
    8fcc:	ea000070 	b	9194 <wctl_authorization_users_cb@@Base+0x5b4>
    8fd0:	ea000001 	b	8fdc <wctl_authorization_users_cb@@Base+0x3fc>
    8fd4:	ea000076 	b	91b4 <wctl_authorization_users_cb@@Base+0x5d4>
    8fd8:	ea000071 	b	91a4 <wctl_authorization_users_cb@@Base+0x5c4>
    8fdc:	e59f0264 	ldr	r0, [pc, #612]	@ 9248 <wctl_authorization_users_cb@@Base+0x668>
    8fe0:	e3a01009 	mov	r1, #9
    8fe4:	e08f0000 	add	r0, pc, r0
    8fe8:	ebfff6bc 	bl	6ae0 <cson_value_new_string@plt>
    8fec:	e59d3004 	ldr	r3, [sp, #4]
    8ff0:	e1a02000 	mov	r2, r0
    8ff4:	e1a00005 	mov	r0, r5
    8ff8:	e59f124c 	ldr	r1, [pc, #588]	@ 924c <wctl_authorization_users_cb@@Base+0x66c>
    8ffc:	e59fa24c 	ldr	sl, [pc, #588]	@ 9250 <wctl_authorization_users_cb@@Base+0x670>
    9000:	e2833001 	add	r3, r3, #1
    9004:	e08f1001 	add	r1, pc, r1
    9008:	e58d3004 	str	r3, [sp, #4]
    900c:	e08fa00a 	add	sl, pc, sl
    9010:	ebfff667 	bl	69b4 <cson_object_set@plt>
    9014:	e2840f9a 	add	r0, r4, #616	@ 0x268
    9018:	e1a01009 	mov	r1, r9
    901c:	ebfff3d6 	bl	5f7c <localtime_r@plt>
    9020:	e1a03009 	mov	r3, r9
    9024:	e1a0200a 	mov	r2, sl
    9028:	e3a01080 	mov	r1, #128	@ 0x80
    902c:	e1a00008 	mov	r0, r8
    9030:	ebfff6ec 	bl	6be8 <strftime@plt>
    9034:	e1a00008 	mov	r0, r8
    9038:	ebfff570 	bl	6600 <strlen@plt>
    903c:	e1a01000 	mov	r1, r0
    9040:	e1a00008 	mov	r0, r8
    9044:	ebfff6a5 	bl	6ae0 <cson_value_new_string@plt>
    9048:	e59f1204 	ldr	r1, [pc, #516]	@ 9254 <wctl_authorization_users_cb@@Base+0x674>
    904c:	e1a02000 	mov	r2, r0
    9050:	e1a00005 	mov	r0, r5
    9054:	e08f1001 	add	r1, pc, r1
    9058:	ebfff655 	bl	69b4 <cson_object_set@plt>
    905c:	e2840f9b 	add	r0, r4, #620	@ 0x26c
    9060:	e1a01009 	mov	r1, r9
    9064:	ebfff3c4 	bl	5f7c <localtime_r@plt>
    9068:	e1a03009 	mov	r3, r9
    906c:	e1a0200a 	mov	r2, sl
    9070:	e3a01080 	mov	r1, #128	@ 0x80
    9074:	e1a00008 	mov	r0, r8
    9078:	ebfff6da 	bl	6be8 <strftime@plt>
    907c:	e1a00008 	mov	r0, r8
    9080:	ebfff55e 	bl	6600 <strlen@plt>
    9084:	e1a01000 	mov	r1, r0
    9088:	e1a00008 	mov	r0, r8
    908c:	ebfff693 	bl	6ae0 <cson_value_new_string@plt>
    9090:	e59f11c0 	ldr	r1, [pc, #448]	@ 9258 <wctl_authorization_users_cb@@Base+0x678>
    9094:	e1a02000 	mov	r2, r0
    9098:	e1a00005 	mov	r0, r5
    909c:	e08f1001 	add	r1, pc, r1
    90a0:	ebfff643 	bl	69b4 <cson_object_set@plt>
    90a4:	e59d000c 	ldr	r0, [sp, #12]
    90a8:	e1a01007 	mov	r1, r7
    90ac:	ebfff727 	bl	6d50 <cson_array_append@plt>
    90b0:	e5944004 	ldr	r4, [r4, #4]
    90b4:	e59d2008 	ldr	r2, [sp, #8]
    90b8:	e1520004 	cmp	r2, r4
    90bc:	1affff59 	bne	8e28 <wctl_authorization_users_cb@@Base+0x248>
    90c0:	e59d2004 	ldr	r2, [sp, #4]
    90c4:	e28d502c 	add	r5, sp, #44	@ 0x2c
    90c8:	e89504a0 	ldm	r5, {r5, r7, sl}
    90cc:	e1a03fc2 	asr	r3, r2, #31
    90d0:	e1a08002 	mov	r8, r2
    90d4:	e1a09003 	mov	r9, r3
    90d8:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
    90dc:	ebfff69a 	bl	6b4c <cson_value_get_object@plt>
    90e0:	e1a04000 	mov	r4, r0
    90e4:	e1a01009 	mov	r1, r9
    90e8:	e1a00008 	mov	r0, r8
    90ec:	ebfff6d2 	bl	6c3c <cson_value_new_integer@plt>
    90f0:	e59f1164 	ldr	r1, [pc, #356]	@ 925c <wctl_authorization_users_cb@@Base+0x67c>
    90f4:	e1a02000 	mov	r2, r0
    90f8:	e1a00004 	mov	r0, r4
    90fc:	e28d4038 	add	r4, sp, #56	@ 0x38
    9100:	e08f1001 	add	r1, pc, r1
    9104:	ebfff62a 	bl	69b4 <cson_object_set@plt>
    9108:	e59f3150 	ldr	r3, [pc, #336]	@ 9260 <wctl_authorization_users_cb@@Base+0x680>
    910c:	e1a01004 	mov	r1, r4
    9110:	e3a02000 	mov	r2, #0
    9114:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
    9118:	e7973003 	ldr	r3, [r7, r3]
    911c:	e1c360d0 	ldrd	r6, [r3]
    9120:	e1c380d8 	ldrd	r8, [r3, #8]
    9124:	e1cd63f8 	strd	r6, [sp, #56]	@ 0x38
    9128:	e1c480f8 	strd	r8, [r4, #8]
    912c:	ebfff63e 	bl	6a2c <cson_output_buffer@plt>
    9130:	e59f012c 	ldr	r0, [pc, #300]	@ 9264 <wctl_authorization_users_cb@@Base+0x684>
    9134:	e3a02000 	mov	r2, #0
    9138:	e59f1128 	ldr	r1, [pc, #296]	@ 9268 <wctl_authorization_users_cb@@Base+0x688>
    913c:	e1a03002 	mov	r3, r2
    9140:	e595601c 	ldr	r6, [r5, #28]
    9144:	e08f0000 	add	r0, pc, r0
    9148:	e08f1001 	add	r1, pc, r1
    914c:	ebfff66c 	bl	6b04 <evhtp_kv_new@plt>
    9150:	e1a01000 	mov	r1, r0
    9154:	e1a00006 	mov	r0, r6
    9158:	ebfff5ca 	bl	6888 <evhtp_kvs_add_kv@plt>
    915c:	e59f1108 	ldr	r1, [pc, #264]	@ 926c <wctl_authorization_users_cb@@Base+0x68c>
    9160:	e59d2044 	ldr	r2, [sp, #68]	@ 0x44
    9164:	e5950014 	ldr	r0, [r5, #20]
    9168:	e08f1001 	add	r1, pc, r1
    916c:	ebfff649 	bl	6a98 <evbuffer_add_printf@plt>
    9170:	e1a00005 	mov	r0, r5
    9174:	e3a010c8 	mov	r1, #200	@ 0xc8
    9178:	ebfff4ea 	bl	6528 <evhtp_send_reply@plt>
    917c:	e1a00004 	mov	r0, r4
    9180:	e3a01000 	mov	r1, #0
    9184:	ebfff39d 	bl	6000 <cson_buffer_reserve@plt>
    9188:	e59d0028 	ldr	r0, [sp, #40]	@ 0x28
    918c:	ebfff689 	bl	6bb8 <cson_value_free@plt>
    9190:	eafffed5 	b	8cec <wctl_authorization_users_cb@@Base+0x10c>
    9194:	e59f00d4 	ldr	r0, [pc, #212]	@ 9270 <wctl_authorization_users_cb@@Base+0x690>
    9198:	e3a01007 	mov	r1, #7
    919c:	e08f0000 	add	r0, pc, r0
    91a0:	eaffff90 	b	8fe8 <wctl_authorization_users_cb@@Base+0x408>
    91a4:	e59f00c8 	ldr	r0, [pc, #200]	@ 9274 <wctl_authorization_users_cb@@Base+0x694>
    91a8:	e3a01007 	mov	r1, #7
    91ac:	e08f0000 	add	r0, pc, r0
    91b0:	eaffff8c 	b	8fe8 <wctl_authorization_users_cb@@Base+0x408>
    91b4:	e59f00bc 	ldr	r0, [pc, #188]	@ 9278 <wctl_authorization_users_cb@@Base+0x698>
    91b8:	e3a01007 	mov	r1, #7
    91bc:	e08f0000 	add	r0, pc, r0
    91c0:	eaffff88 	b	8fe8 <wctl_authorization_users_cb@@Base+0x408>
    91c4:	e59f00b0 	ldr	r0, [pc, #176]	@ 927c <wctl_authorization_users_cb@@Base+0x69c>
    91c8:	e3a01007 	mov	r1, #7
    91cc:	e08f0000 	add	r0, pc, r0
    91d0:	eaffff84 	b	8fe8 <wctl_authorization_users_cb@@Base+0x408>
    91d4:	ebfff590 	bl	681c <wctl_user_reload@plt>
    91d8:	eafffedc 	b	8d50 <wctl_authorization_users_cb@@Base+0x170>
    91dc:	e3a08000 	mov	r8, #0
    91e0:	e3a09000 	mov	r9, #0
    91e4:	eaffffbb 	b	90d8 <wctl_authorization_users_cb@@Base+0x4f8>
    91e8:	ebfff615 	bl	6a44 <__stack_chk_fail@plt>
    91ec:	0000060c 	andeq	r0, r0, ip, lsl #12
    91f0:	00028d90 	muleq	r2, r0, sp
    91f4:	00016570 	andeq	r6, r1, r0, ror r5
    91f8:	00016574 	andeq	r6, r1, r4, ror r5
    91fc:	00016554 	andeq	r6, r1, r4, asr r5
    9200:	00016560 	andeq	r6, r1, r0, ror #10
    9204:	000165b8 			@ <UNDEFINED> instruction: 0x000165b8
    9208:	000165a8 	andeq	r6, r1, r8, lsr #11
    920c:	0001655c 	andeq	r6, r1, ip, asr r5
    9210:	00016580 	andeq	r6, r1, r0, lsl #11
    9214:	000164d0 	ldrdeq	r6, [r1], -r0
    9218:	000164b4 			@ <UNDEFINED> instruction: 0x000164b4
    921c:	0001775c 	andeq	r7, r1, ip, asr r7
    9220:	00016310 	andeq	r6, r1, r0, lsl r3
    9224:	00016060 	andeq	r6, r1, r0, rrx
    9228:	00017748 	andeq	r7, r1, r8, asr #14
    922c:	000162e8 	andeq	r6, r1, r8, ror #5
    9230:	0001643c 	andeq	r6, r1, ip, lsr r4
    9234:	00016334 	andeq	r6, r1, r4, lsr r3
    9238:	00016320 	andeq	r6, r1, r0, lsr #6
    923c:	0001630c 	andeq	r6, r1, ip, lsl #6
    9240:	000162f4 	strdeq	r6, [r1], -r4
    9244:	000162dc 	ldrdeq	r6, [r1], -ip
    9248:	0001623c 	andeq	r6, r1, ip, lsr r2
    924c:	00015eb4 			@ <UNDEFINED> instruction: 0x00015eb4
    9250:	0001628c 	andeq	r6, r1, ip, lsl #5
    9254:	00016258 	andeq	r6, r1, r8, asr r2
    9258:	0001621c 	andeq	r6, r1, ip, lsl r2
    925c:	000161c4 	andeq	r6, r1, r4, asr #3
    9260:	000005c8 	andeq	r0, r0, r8, asr #11
    9264:	00015fcc 	andeq	r5, r1, ip, asr #31
    9268:	00015fd8 	ldrdeq	r5, [r1], -r8
    926c:	00015fec 	andeq	r5, r1, ip, ror #31
    9270:	0001607c 	andeq	r6, r1, ip, ror r0
    9274:	00016088 	andeq	r6, r1, r8, lsl #1
    9278:	00016070 	andeq	r6, r1, r0, ror r0
    927c:	00015fbc 			@ <UNDEFINED> instruction: 0x00015fbc

00009280 <wctl_control_init@@Base>:
    9280:	e59f3034 	ldr	r3, [pc, #52]	@ 92bc <wctl_control_init@@Base+0x3c>
    9284:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    9288:	e24dd00c 	sub	sp, sp, #12
    928c:	e59f202c 	ldr	r2, [pc, #44]	@ 92c0 <wctl_control_init@@Base+0x40>
    9290:	e08f3003 	add	r3, pc, r3
    9294:	e7933002 	ldr	r3, [r3, r2]
    9298:	e5932000 	ldr	r2, [r3]
    929c:	e58d2004 	str	r2, [sp, #4]
    92a0:	e59d2004 	ldr	r2, [sp, #4]
    92a4:	e5933000 	ldr	r3, [r3]
    92a8:	e1520003 	cmp	r2, r3
    92ac:	1a000001 	bne	92b8 <wctl_control_init@@Base+0x38>
    92b0:	e28dd00c 	add	sp, sp, #12
    92b4:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    92b8:	ebfff5e1 	bl	6a44 <__stack_chk_fail@plt>
    92bc:	00028718 	andeq	r8, r2, r8, lsl r7
    92c0:	0000060c 	andeq	r0, r0, ip, lsl #12

000092c4 <wctl_control_uninit@@Base>:
    92c4:	e59f3034 	ldr	r3, [pc, #52]	@ 9300 <wctl_control_uninit@@Base+0x3c>
    92c8:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    92cc:	e24dd00c 	sub	sp, sp, #12
    92d0:	e59f202c 	ldr	r2, [pc, #44]	@ 9304 <wctl_control_uninit@@Base+0x40>
    92d4:	e08f3003 	add	r3, pc, r3
    92d8:	e7933002 	ldr	r3, [r3, r2]
    92dc:	e5932000 	ldr	r2, [r3]
    92e0:	e58d2004 	str	r2, [sp, #4]
    92e4:	e59d2004 	ldr	r2, [sp, #4]
    92e8:	e5933000 	ldr	r3, [r3]
    92ec:	e1520003 	cmp	r2, r3
    92f0:	1a000001 	bne	92fc <wctl_control_uninit@@Base+0x38>
    92f4:	e28dd00c 	add	sp, sp, #12
    92f8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    92fc:	ebfff5d0 	bl	6a44 <__stack_chk_fail@plt>
