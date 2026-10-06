
vodafone-custom-page/uploads/middleware:     file format elf32-littlearm


Disassembly of section .text:

00004f24 <middleware_init_lapin@@Base>:
    4f24:	e59f3040 	ldr	r3, [pc, #64]	@ 4f6c <middleware_init_lapin@@Base+0x48>
    4f28:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    4f2c:	e24dd00c 	sub	sp, sp, #12
    4f30:	e59f2038 	ldr	r2, [pc, #56]	@ 4f70 <middleware_init_lapin@@Base+0x4c>
    4f34:	e08f3003 	add	r3, pc, r3
    4f38:	e7933002 	ldr	r3, [r3, r2]
    4f3c:	e5932000 	ldr	r2, [r3]
    4f40:	e58d2004 	str	r2, [sp, #4]
    4f44:	e59d2004 	ldr	r2, [sp, #4]
    4f48:	e5933000 	ldr	r3, [r3]
    4f4c:	e1520003 	cmp	r2, r3
    4f50:	1a000004 	bne	4f68 <middleware_init_lapin@@Base+0x44>
    4f54:	e30f0ba7 	movw	r0, #64423	@ 0xfba7
    4f58:	e34007fe 	movt	r0, #2046	@ 0x7fe
    4f5c:	e28dd00c 	add	sp, sp, #12
    4f60:	e49de004 	pop	{lr}		@ (ldr lr, [sp], #4)
    4f64:	eafffc7d 	b	4160 <LAPIN_Init@plt>
    4f68:	ebfffc2b 	bl	401c <__stack_chk_fail@plt>
    4f6c:	0001ada0 	andeq	sl, r1, r0, lsr #27
    4f70:	00000310 	andeq	r0, r0, r0, lsl r3
    4f74:	e59f307c 	ldr	r3, [pc, #124]	@ 4ff8 <middleware_init_lapin@@Base+0xd4>
    4f78:	e16d40fc 	strd	r4, [sp, #-12]!
    4f7c:	e1a01000 	mov	r1, r0
    4f80:	e59fc074 	ldr	ip, [pc, #116]	@ 4ffc <middleware_init_lapin@@Base+0xd8>
    4f84:	e58de008 	str	lr, [sp, #8]
    4f88:	e24dd064 	sub	sp, sp, #100	@ 0x64
    4f8c:	e1a05000 	mov	r5, r0
    4f90:	e1a0200d 	mov	r2, sp
    4f94:	e3a00003 	mov	r0, #3
    4f98:	e08f3003 	add	r3, pc, r3
    4f9c:	e793400c 	ldr	r4, [r3, ip]
    4fa0:	e5943000 	ldr	r3, [r4]
    4fa4:	e58d305c 	str	r3, [sp, #92]	@ 0x5c
    4fa8:	ebfffc69 	bl	4154 <__xstat@plt>
    4fac:	e3500000 	cmp	r0, #0
    4fb0:	13a00000 	movne	r0, #0
    4fb4:	1a000004 	bne	4fcc <middleware_init_lapin@@Base+0xa8>
    4fb8:	e59d3010 	ldr	r3, [sp, #16]
    4fbc:	e1a00005 	mov	r0, r5
    4fc0:	e3130901 	tst	r3, #16384	@ 0x4000
    4fc4:	0a000008 	beq	4fec <middleware_init_lapin@@Base+0xc8>
    4fc8:	ebfffd93 	bl	461c <rmdir@plt>
    4fcc:	e59d205c 	ldr	r2, [sp, #92]	@ 0x5c
    4fd0:	e5943000 	ldr	r3, [r4]
    4fd4:	e1520003 	cmp	r2, r3
    4fd8:	1a000005 	bne	4ff4 <middleware_init_lapin@@Base+0xd0>
    4fdc:	e28dd064 	add	sp, sp, #100	@ 0x64
    4fe0:	e1cd40d0 	ldrd	r4, [sp]
    4fe4:	e28dd008 	add	sp, sp, #8
    4fe8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    4fec:	ebfffc8b 	bl	4220 <unlink@plt>
    4ff0:	eafffff5 	b	4fcc <middleware_init_lapin@@Base+0xa8>
    4ff4:	ebfffc08 	bl	401c <__stack_chk_fail@plt>
    4ff8:	0001ad3c 	andeq	sl, r1, ip, lsr sp
    4ffc:	00000310 	andeq	r0, r0, r0, lsl r3
    5000:	e59f3084 	ldr	r3, [pc, #132]	@ 508c <middleware_init_lapin@@Base+0x168>
    5004:	e16d40fc 	strd	r4, [sp, #-12]!
    5008:	e1a05001 	mov	r5, r1
    500c:	e59fc07c 	ldr	ip, [pc, #124]	@ 5090 <middleware_init_lapin@@Base+0x16c>
    5010:	e58de008 	str	lr, [sp, #8]
    5014:	e24dd074 	sub	sp, sp, #116	@ 0x74
    5018:	e1a01000 	mov	r1, r0
    501c:	e1a0200d 	mov	r2, sp
    5020:	e3a00003 	mov	r0, #3
    5024:	e08f3003 	add	r3, pc, r3
    5028:	e793400c 	ldr	r4, [r3, ip]
    502c:	e5943000 	ldr	r3, [r4]
    5030:	e58d306c 	str	r3, [sp, #108]	@ 0x6c
    5034:	ebfffbf5 	bl	4010 <__xstat64@plt>
    5038:	e3500000 	cmp	r0, #0
    503c:	1a000002 	bne	504c <middleware_init_lapin@@Base+0x128>
    5040:	e59d3010 	ldr	r3, [sp, #16]
    5044:	e3130901 	tst	r3, #16384	@ 0x4000
    5048:	0a000008 	beq	5070 <middleware_init_lapin@@Base+0x14c>
    504c:	e59d206c 	ldr	r2, [sp, #108]	@ 0x6c
    5050:	e3a00000 	mov	r0, #0
    5054:	e5943000 	ldr	r3, [r4]
    5058:	e1520003 	cmp	r2, r3
    505c:	1a000009 	bne	5088 <middleware_init_lapin@@Base+0x164>
    5060:	e28dd074 	add	sp, sp, #116	@ 0x74
    5064:	e1cd40d0 	ldrd	r4, [sp]
    5068:	e28dd008 	add	sp, sp, #8
    506c:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    5070:	e1c500d0 	ldrd	r0, [r5]
    5074:	e1cd23d0 	ldrd	r2, [sp, #48]	@ 0x30
    5078:	e0922000 	adds	r2, r2, r0
    507c:	e0a33001 	adc	r3, r3, r1
    5080:	e1c520f0 	strd	r2, [r5]
    5084:	eafffff0 	b	504c <middleware_init_lapin@@Base+0x128>
    5088:	ebfffbe3 	bl	401c <__stack_chk_fail@plt>
    508c:	0001acb0 			@ <UNDEFINED> instruction: 0x0001acb0
    5090:	00000310 	andeq	r0, r0, r0, lsl r3
    5094:	e59f31a4 	ldr	r3, [pc, #420]	@ 5240 <middleware_init_lapin@@Base+0x31c>
    5098:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
    509c:	e1cda1f8 	strd	sl, [sp, #24]
    50a0:	e1a0b002 	mov	fp, r2
    50a4:	e59f2198 	ldr	r2, [pc, #408]	@ 5244 <middleware_init_lapin@@Base+0x320>
    50a8:	e1cd81f0 	strd	r8, [sp, #16]
    50ac:	e1a0a001 	mov	sl, r1
    50b0:	e1a09000 	mov	r9, r0
    50b4:	e1cd60f8 	strd	r6, [sp, #8]
    50b8:	e08f3003 	add	r3, pc, r3
    50bc:	e58de020 	str	lr, [sp, #32]
    50c0:	e24dd094 	sub	sp, sp, #148	@ 0x94
    50c4:	e7932002 	ldr	r2, [r3, r2]
    50c8:	e5923000 	ldr	r3, [r2]
    50cc:	e58d2014 	str	r2, [sp, #20]
    50d0:	e58d308c 	str	r3, [sp, #140]	@ 0x8c
    50d4:	ebfffba0 	bl	3f5c <opendir@plt>
    50d8:	e2505000 	subs	r5, r0, #0
    50dc:	0a000054 	beq	5234 <middleware_init_lapin@@Base+0x310>
    50e0:	e59f6160 	ldr	r6, [pc, #352]	@ 5248 <middleware_init_lapin@@Base+0x324>
    50e4:	e28d1020 	add	r1, sp, #32
    50e8:	e59f715c 	ldr	r7, [pc, #348]	@ 524c <middleware_init_lapin@@Base+0x328>
    50ec:	e59f215c 	ldr	r2, [pc, #348]	@ 5250 <middleware_init_lapin@@Base+0x32c>
    50f0:	e58d101c 	str	r1, [sp, #28]
    50f4:	e08f6006 	add	r6, pc, r6
    50f8:	e08f7007 	add	r7, pc, r7
    50fc:	e08f2002 	add	r2, pc, r2
    5100:	e58d2018 	str	r2, [sp, #24]
    5104:	e1a00005 	mov	r0, r5
    5108:	ebfffb96 	bl	3f68 <readdir@plt>
    510c:	e3500000 	cmp	r0, #0
    5110:	0a00002e 	beq	51d0 <middleware_init_lapin@@Base+0x2ac>
    5114:	e280400b 	add	r4, r0, #11
    5118:	e1a01006 	mov	r1, r6
    511c:	e1a00004 	mov	r0, r4
    5120:	ebfffd3a 	bl	4610 <strcasecmp@plt>
    5124:	e3500000 	cmp	r0, #0
    5128:	0afffff5 	beq	5104 <middleware_init_lapin@@Base+0x1e0>
    512c:	e1a00004 	mov	r0, r4
    5130:	e1a01007 	mov	r1, r7
    5134:	ebfffd35 	bl	4610 <strcasecmp@plt>
    5138:	e3500000 	cmp	r0, #0
    513c:	0afffff0 	beq	5104 <middleware_init_lapin@@Base+0x1e0>
    5140:	e1a00009 	mov	r0, r9
    5144:	ebfffc6e 	bl	4304 <strlen@plt>
    5148:	e1a08000 	mov	r8, r0
    514c:	e1a00004 	mov	r0, r4
    5150:	ebfffc6b 	bl	4304 <strlen@plt>
    5154:	e0880000 	add	r0, r8, r0
    5158:	e2801002 	add	r1, r0, #2
    515c:	e1a00001 	mov	r0, r1
    5160:	e58d1010 	str	r1, [sp, #16]
    5164:	ebfffc4b 	bl	4298 <malloc@plt>
    5168:	e59d3018 	ldr	r3, [sp, #24]
    516c:	e1a08000 	mov	r8, r0
    5170:	e3a02001 	mov	r2, #1
    5174:	e59d1010 	ldr	r1, [sp, #16]
    5178:	e58d9004 	str	r9, [sp, #4]
    517c:	e58d4008 	str	r4, [sp, #8]
    5180:	e58d3000 	str	r3, [sp]
    5184:	e3e03000 	mvn	r3, #0
    5188:	ebfffcc0 	bl	4490 <__snprintf_chk@plt>
    518c:	e1a01008 	mov	r1, r8
    5190:	e3a00003 	mov	r0, #3
    5194:	e28d2020 	add	r2, sp, #32
    5198:	ebfffb9c 	bl	4010 <__xstat64@plt>
    519c:	e3500000 	cmp	r0, #0
    51a0:	1a00001b 	bne	5214 <middleware_init_lapin@@Base+0x2f0>
    51a4:	e59d3030 	ldr	r3, [sp, #48]	@ 0x30
    51a8:	e1a00008 	mov	r0, r8
    51ac:	e3130901 	tst	r3, #16384	@ 0x4000
    51b0:	1a00001a 	bne	5220 <middleware_init_lapin@@Base+0x2fc>
    51b4:	e1a0100b 	mov	r1, fp
    51b8:	e12fff3a 	blx	sl
    51bc:	e1a04000 	mov	r4, r0
    51c0:	e1a00008 	mov	r0, r8
    51c4:	ebfffbfa 	bl	41b4 <free@plt>
    51c8:	e3540000 	cmp	r4, #0
    51cc:	0affffcc 	beq	5104 <middleware_init_lapin@@Base+0x1e0>
    51d0:	e1a00005 	mov	r0, r5
    51d4:	ebfffc62 	bl	4364 <closedir@plt>
    51d8:	e1a00009 	mov	r0, r9
    51dc:	e1a0100b 	mov	r1, fp
    51e0:	e12fff3a 	blx	sl
    51e4:	e59d1014 	ldr	r1, [sp, #20]
    51e8:	e59d208c 	ldr	r2, [sp, #140]	@ 0x8c
    51ec:	e5913000 	ldr	r3, [r1]
    51f0:	e1520003 	cmp	r2, r3
    51f4:	1a000010 	bne	523c <middleware_init_lapin@@Base+0x318>
    51f8:	e28dd094 	add	sp, sp, #148	@ 0x94
    51fc:	e1cd40d0 	ldrd	r4, [sp]
    5200:	e1cd60d8 	ldrd	r6, [sp, #8]
    5204:	e1cd81d0 	ldrd	r8, [sp, #16]
    5208:	e1cda1d8 	ldrd	sl, [sp, #24]
    520c:	e28dd020 	add	sp, sp, #32
    5210:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    5214:	e1a00008 	mov	r0, r8
    5218:	ebfffbe5 	bl	41b4 <free@plt>
    521c:	eaffffb8 	b	5104 <middleware_init_lapin@@Base+0x1e0>
    5220:	e1a0100a 	mov	r1, sl
    5224:	e1a0200b 	mov	r2, fp
    5228:	ebffff99 	bl	5094 <middleware_init_lapin@@Base+0x170>
    522c:	e1a04000 	mov	r4, r0
    5230:	eaffffe2 	b	51c0 <middleware_init_lapin@@Base+0x29c>
    5234:	e3e00000 	mvn	r0, #0
    5238:	eaffffe9 	b	51e4 <middleware_init_lapin@@Base+0x2c0>
    523c:	ebfffb76 	bl	401c <__stack_chk_fail@plt>
    5240:	0001ac1c 	andeq	sl, r1, ip, lsl ip
    5244:	00000310 	andeq	r0, r0, r0, lsl r3
    5248:	00009218 	andeq	r9, r0, r8, lsl r2
    524c:	00009218 	andeq	r9, r0, r8, lsl r2
    5250:	00009218 	andeq	r9, r0, r8, lsl r2
