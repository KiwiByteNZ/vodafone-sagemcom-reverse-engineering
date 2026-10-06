
vodafone-custom-page/uploads/middleware:     file format elf32-littlearm


Disassembly of section .text:

00007c04 <drop_root_privileges@@Base>:
    7c04:	e16d42f4 	strd	r4, [sp, #-36]!	@ 0xffffffdc
    7c08:	e3a03000 	mov	r3, #0
    7c0c:	e1cd81f0 	strd	r8, [sp, #16]
    7c10:	e59f86c0 	ldr	r8, [pc, #1728]	@ 82d8 <drop_root_privileges@@Base+0x6d4>
    7c14:	e2509000 	subs	r9, r0, #0
    7c18:	e59f06bc 	ldr	r0, [pc, #1724]	@ 82dc <drop_root_privileges@@Base+0x6d8>
    7c1c:	e1cda1f8 	strd	sl, [sp, #24]
    7c20:	e28db020 	add	fp, sp, #32
    7c24:	e1cd60f8 	strd	r6, [sp, #8]
    7c28:	e58de020 	str	lr, [sp, #32]
    7c2c:	e24dd0e4 	sub	sp, sp, #228	@ 0xe4
    7c30:	e08f8008 	add	r8, pc, r8
    7c34:	e7980000 	ldr	r0, [r8, r0]
    7c38:	e50b30e0 	str	r3, [fp, #-224]	@ 0xffffff20
    7c3c:	e5903000 	ldr	r3, [r0]
    7c40:	e50b00ec 	str	r0, [fp, #-236]	@ 0xffffff14
    7c44:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
    7c48:	0a000116 	beq	80a8 <drop_root_privileges@@Base+0x4a4>
    7c4c:	e3510000 	cmp	r1, #0
    7c50:	e1a04001 	mov	r4, r1
    7c54:	e1a05002 	mov	r5, r2
    7c58:	0a000039 	beq	7d44 <drop_root_privileges@@Base+0x140>
    7c5c:	e3520000 	cmp	r2, #0
    7c60:	0a000138 	beq	8148 <drop_root_privileges@@Base+0x544>
    7c64:	e3510024 	cmp	r1, #36	@ 0x24
    7c68:	8a000091 	bhi	7eb4 <drop_root_privileges@@Base+0x2b0>
    7c6c:	ebfff18c 	bl	42a4 <cap_get_proc@plt>
    7c70:	e2507000 	subs	r7, r0, #0
    7c74:	0a00011f 	beq	80f8 <drop_root_privileges@@Base+0x4f4>
    7c78:	ebfff09c 	bl	3ef0 <cap_clear@plt>
    7c7c:	e3500000 	cmp	r0, #0
    7c80:	01a03000 	moveq	r3, r0
    7c84:	024b20c8 	subeq	r2, fp, #200	@ 0xc8
    7c88:	01a0c003 	moveq	ip, r3
    7c8c:	1a0000b5 	bne	7f68 <drop_root_privileges@@Base+0x364>
    7c90:	e7951103 	ldr	r1, [r5, r3, lsl #2]
    7c94:	e28cc001 	add	ip, ip, #1
    7c98:	e15c0004 	cmp	ip, r4
    7c9c:	e1a0300c 	mov	r3, ip
    7ca0:	e5a21004 	str	r1, [r2, #4]!
    7ca4:	1afffff9 	bne	7c90 <drop_root_privileges@@Base+0x8c>
    7ca8:	e24be024 	sub	lr, fp, #36	@ 0x24
    7cac:	e3a06001 	mov	r6, #1
    7cb0:	e08e310c 	add	r3, lr, ip, lsl #2
    7cb4:	e28cc002 	add	ip, ip, #2
    7cb8:	e3a00006 	mov	r0, #6
    7cbc:	e58d6000 	str	r6, [sp]
    7cc0:	e1a0e003 	mov	lr, r3
    7cc4:	e50bc0f0 	str	ip, [fp, #-240]	@ 0xffffff10
    7cc8:	e1a0200c 	mov	r2, ip
    7ccc:	e3a0c007 	mov	ip, #7
    7cd0:	e24ba0c4 	sub	sl, fp, #196	@ 0xc4
    7cd4:	e50300a0 	str	r0, [r3, #-160]	@ 0xffffff60
    7cd8:	e1a01006 	mov	r1, r6
    7cdc:	e1a0300a 	mov	r3, sl
    7ce0:	e1a00007 	mov	r0, r7
    7ce4:	e50ec09c 	str	ip, [lr, #-156]	@ 0xffffff64
    7ce8:	ebfff0fe 	bl	40e8 <cap_set_flag@plt>
    7cec:	e2501000 	subs	r1, r0, #0
    7cf0:	1a00008b 	bne	7f24 <drop_root_privileges@@Base+0x320>
    7cf4:	e58d6000 	str	r6, [sp]
    7cf8:	e51b20f0 	ldr	r2, [fp, #-240]	@ 0xffffff10
    7cfc:	e1a0300a 	mov	r3, sl
    7d00:	e1a00007 	mov	r0, r7
    7d04:	ebfff0f7 	bl	40e8 <cap_set_flag@plt>
    7d08:	e3500000 	cmp	r0, #0
    7d0c:	1a00009f 	bne	7f90 <drop_root_privileges@@Base+0x38c>
    7d10:	e1a00007 	mov	r0, r7
    7d14:	ebfff231 	bl	45e0 <cap_set_proc@plt>
    7d18:	e3500000 	cmp	r0, #0
    7d1c:	1a0000eb 	bne	80d0 <drop_root_privileges@@Base+0x4cc>
    7d20:	e1a00007 	mov	r0, r7
    7d24:	ebfff0e0 	bl	40ac <cap_free@plt>
    7d28:	e3700001 	cmn	r0, #1
    7d2c:	0a000123 	beq	81c0 <drop_root_privileges@@Base+0x5bc>
    7d30:	e3a00008 	mov	r0, #8
    7d34:	e1a01006 	mov	r1, r6
    7d38:	ebfff1ec 	bl	44f0 <prctl@plt>
    7d3c:	e3700001 	cmn	r0, #1
    7d40:	0a0000ce 	beq	8080 <drop_root_privileges@@Base+0x47c>
    7d44:	e1a00009 	mov	r0, r9
    7d48:	ebfff215 	bl	45a4 <getpwnam@plt>
    7d4c:	e2503000 	subs	r3, r0, #0
    7d50:	0a0000f2 	beq	8120 <drop_root_privileges@@Base+0x51c>
    7d54:	e1a00009 	mov	r0, r9
    7d58:	e5936008 	ldr	r6, [r3, #8]
    7d5c:	ebfff252 	bl	46ac <getgrnam@plt>
    7d60:	e3500000 	cmp	r0, #0
    7d64:	0a000101 	beq	8170 <drop_root_privileges@@Base+0x56c>
    7d68:	e5907008 	ldr	r7, [r0, #8]
    7d6c:	e24ba0e0 	sub	sl, fp, #224	@ 0xe0
    7d70:	e1a00009 	mov	r0, r9
    7d74:	e1a0300a 	mov	r3, sl
    7d78:	e3a02000 	mov	r2, #0
    7d7c:	e1a01007 	mov	r1, r7
    7d80:	ebfff141 	bl	428c <getgrouplist@plt>
    7d84:	e51b30e0 	ldr	r3, [fp, #-224]	@ 0xffffff20
    7d88:	e3530000 	cmp	r3, #0
    7d8c:	da000010 	ble	7dd4 <drop_root_privileges@@Base+0x1d0>
    7d90:	e1a02103 	lsl	r2, r3, #2
    7d94:	e1a00009 	mov	r0, r9
    7d98:	e1a0300a 	mov	r3, sl
    7d9c:	e282200e 	add	r2, r2, #14
    7da0:	e1a01007 	mov	r1, r7
    7da4:	e3c22007 	bic	r2, r2, #7
    7da8:	e04dd002 	sub	sp, sp, r2
    7dac:	e28d9008 	add	r9, sp, #8
    7db0:	e1a02009 	mov	r2, r9
    7db4:	ebfff134 	bl	428c <getgrouplist@plt>
    7db8:	e3700001 	cmn	r0, #1
    7dbc:	0a0000f5 	beq	8198 <drop_root_privileges@@Base+0x594>
    7dc0:	e1a01009 	mov	r1, r9
    7dc4:	e51b00e0 	ldr	r0, [fp, #-224]	@ 0xffffff20
    7dc8:	ebfff1bf 	bl	44cc <setgroups@plt>
    7dcc:	e3500000 	cmp	r0, #0
    7dd0:	1a0000a0 	bne	8058 <drop_root_privileges@@Base+0x454>
    7dd4:	e24b30c8 	sub	r3, fp, #200	@ 0xc8
    7dd8:	e24bc0dc 	sub	ip, fp, #220	@ 0xdc
    7ddc:	e24ba0d0 	sub	sl, fp, #208	@ 0xd0
    7de0:	e24b90cc 	sub	r9, fp, #204	@ 0xcc
    7de4:	e50b30e8 	str	r3, [fp, #-232]	@ 0xffffff18
    7de8:	e24b30d8 	sub	r3, fp, #216	@ 0xd8
    7dec:	e50bc0f0 	str	ip, [fp, #-240]	@ 0xffffff10
    7df0:	e24bc0d4 	sub	ip, fp, #212	@ 0xd4
    7df4:	e50b30f4 	str	r3, [fp, #-244]	@ 0xffffff0c
    7df8:	e50bc0f8 	str	ip, [fp, #-248]	@ 0xffffff08
    7dfc:	e1a00007 	mov	r0, r7
    7e00:	e1a01007 	mov	r1, r7
    7e04:	e1a02007 	mov	r2, r7
    7e08:	ebfff0b0 	bl	40d0 <setresgid@plt>
    7e0c:	e3500000 	cmp	r0, #0
    7e10:	1a000068 	bne	7fb8 <drop_root_privileges@@Base+0x3b4>
    7e14:	e1a00006 	mov	r0, r6
    7e18:	e1a01006 	mov	r1, r6
    7e1c:	e1a02006 	mov	r2, r6
    7e20:	ebfff155 	bl	437c <setresuid@plt>
    7e24:	e3500000 	cmp	r0, #0
    7e28:	1a00006c 	bne	7fe0 <drop_root_privileges@@Base+0x3dc>
    7e2c:	e1a0000a 	mov	r0, sl
    7e30:	e1a01009 	mov	r1, r9
    7e34:	e24b20c8 	sub	r2, fp, #200	@ 0xc8
    7e38:	ebfff044 	bl	3f50 <getresgid@plt>
    7e3c:	e3500000 	cmp	r0, #0
    7e40:	1a000070 	bne	8008 <drop_root_privileges@@Base+0x404>
    7e44:	e24b00dc 	sub	r0, fp, #220	@ 0xdc
    7e48:	e24b10d8 	sub	r1, fp, #216	@ 0xd8
    7e4c:	e24b20d4 	sub	r2, fp, #212	@ 0xd4
    7e50:	ebfff155 	bl	43ac <getresuid@plt>
    7e54:	e3500000 	cmp	r0, #0
    7e58:	1a000074 	bne	8030 <drop_root_privileges@@Base+0x42c>
    7e5c:	e51b30dc 	ldr	r3, [fp, #-220]	@ 0xffffff24
    7e60:	e1560003 	cmp	r6, r3
    7e64:	1affffe4 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7e68:	e51b30d8 	ldr	r3, [fp, #-216]	@ 0xffffff28
    7e6c:	e1560003 	cmp	r6, r3
    7e70:	1affffe1 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7e74:	e51b30d4 	ldr	r3, [fp, #-212]	@ 0xffffff2c
    7e78:	e1560003 	cmp	r6, r3
    7e7c:	1affffde 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7e80:	e51b30d0 	ldr	r3, [fp, #-208]	@ 0xffffff30
    7e84:	e1570003 	cmp	r7, r3
    7e88:	1affffdb 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7e8c:	e51b30cc 	ldr	r3, [fp, #-204]	@ 0xffffff34
    7e90:	e1570003 	cmp	r7, r3
    7e94:	1affffd8 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7e98:	e51b30c8 	ldr	r3, [fp, #-200]	@ 0xffffff38
    7e9c:	e1570003 	cmp	r7, r3
    7ea0:	1affffd5 	bne	7dfc <drop_root_privileges@@Base+0x1f8>
    7ea4:	e3540000 	cmp	r4, #0
    7ea8:	1a0000cf 	bne	81ec <drop_root_privileges@@Base+0x5e8>
    7eac:	e3a00000 	mov	r0, #0
    7eb0:	ea00000f 	b	7ef4 <drop_root_privileges@@Base+0x2f0>
    7eb4:	e59f3424 	ldr	r3, [pc, #1060]	@ 82e0 <drop_root_privileges@@Base+0x6dc>
    7eb8:	e300e1c6 	movw	lr, #454	@ 0x1c6
    7ebc:	e3a01001 	mov	r1, #1
    7ec0:	e59fc41c 	ldr	ip, [pc, #1052]	@ 82e4 <drop_root_privileges@@Base+0x6e0>
    7ec4:	e59f241c 	ldr	r2, [pc, #1052]	@ 82e8 <drop_root_privileges@@Base+0x6e4>
    7ec8:	e59f041c 	ldr	r0, [pc, #1052]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7ecc:	e08f3003 	add	r3, pc, r3
    7ed0:	e08fc00c 	add	ip, pc, ip
    7ed4:	e08f2002 	add	r2, pc, r2
    7ed8:	e7980000 	ldr	r0, [r8, r0]
    7edc:	e283301c 	add	r3, r3, #28
    7ee0:	e58de004 	str	lr, [sp, #4]
    7ee4:	e58dc000 	str	ip, [sp]
    7ee8:	e5900000 	ldr	r0, [r0]
    7eec:	ebfff188 	bl	4514 <__fprintf_chk@plt>
    7ef0:	e3a00001 	mov	r0, #1
    7ef4:	e51bc0ec 	ldr	ip, [fp, #-236]	@ 0xffffff14
    7ef8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
    7efc:	e59c3000 	ldr	r3, [ip]
    7f00:	e1520003 	cmp	r2, r3
    7f04:	1a0000b7 	bne	81e8 <drop_root_privileges@@Base+0x5e4>
    7f08:	e24bd020 	sub	sp, fp, #32
    7f0c:	e1cd40d0 	ldrd	r4, [sp]
    7f10:	e1cd60d8 	ldrd	r6, [sp, #8]
    7f14:	e1cd81d0 	ldrd	r8, [sp, #16]
    7f18:	e1cda1d8 	ldrd	sl, [sp, #24]
    7f1c:	e28dd020 	add	sp, sp, #32
    7f20:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    7f24:	e59f33c4 	ldr	r3, [pc, #964]	@ 82f0 <drop_root_privileges@@Base+0x6ec>
    7f28:	e3a0ef75 	mov	lr, #468	@ 0x1d4
    7f2c:	e1a01006 	mov	r1, r6
    7f30:	e59fc3bc 	ldr	ip, [pc, #956]	@ 82f4 <drop_root_privileges@@Base+0x6f0>
    7f34:	e59f23bc 	ldr	r2, [pc, #956]	@ 82f8 <drop_root_privileges@@Base+0x6f4>
    7f38:	e59f03ac 	ldr	r0, [pc, #940]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7f3c:	e08f3003 	add	r3, pc, r3
    7f40:	e08fc00c 	add	ip, pc, ip
    7f44:	e08f2002 	add	r2, pc, r2
    7f48:	e7980000 	ldr	r0, [r8, r0]
    7f4c:	e283301c 	add	r3, r3, #28
    7f50:	e58de004 	str	lr, [sp, #4]
    7f54:	e58dc000 	str	ip, [sp]
    7f58:	e5900000 	ldr	r0, [r0]
    7f5c:	ebfff16c 	bl	4514 <__fprintf_chk@plt>
    7f60:	e1a00006 	mov	r0, r6
    7f64:	eaffffe2 	b	7ef4 <drop_root_privileges@@Base+0x2f0>
    7f68:	e59f338c 	ldr	r3, [pc, #908]	@ 82fc <drop_root_privileges@@Base+0x6f8>
    7f6c:	e300e1cb 	movw	lr, #459	@ 0x1cb
    7f70:	e3a01001 	mov	r1, #1
    7f74:	e59fc384 	ldr	ip, [pc, #900]	@ 8300 <drop_root_privileges@@Base+0x6fc>
    7f78:	e59f2384 	ldr	r2, [pc, #900]	@ 8304 <drop_root_privileges@@Base+0x700>
    7f7c:	e59f0368 	ldr	r0, [pc, #872]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7f80:	e08f3003 	add	r3, pc, r3
    7f84:	e08fc00c 	add	ip, pc, ip
    7f88:	e08f2002 	add	r2, pc, r2
    7f8c:	eaffffd1 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    7f90:	e59f3370 	ldr	r3, [pc, #880]	@ 8308 <drop_root_privileges@@Base+0x704>
    7f94:	e300e1d6 	movw	lr, #470	@ 0x1d6
    7f98:	e1a01006 	mov	r1, r6
    7f9c:	e59fc368 	ldr	ip, [pc, #872]	@ 830c <drop_root_privileges@@Base+0x708>
    7fa0:	e59f2368 	ldr	r2, [pc, #872]	@ 8310 <drop_root_privileges@@Base+0x70c>
    7fa4:	e59f0340 	ldr	r0, [pc, #832]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7fa8:	e08f3003 	add	r3, pc, r3
    7fac:	e08fc00c 	add	ip, pc, ip
    7fb0:	e08f2002 	add	r2, pc, r2
    7fb4:	eaffffe3 	b	7f48 <drop_root_privileges@@Base+0x344>
    7fb8:	e59f3354 	ldr	r3, [pc, #852]	@ 8314 <drop_root_privileges@@Base+0x710>
    7fbc:	e300e1f5 	movw	lr, #501	@ 0x1f5
    7fc0:	e3a01001 	mov	r1, #1
    7fc4:	e59fc34c 	ldr	ip, [pc, #844]	@ 8318 <drop_root_privileges@@Base+0x714>
    7fc8:	e59f234c 	ldr	r2, [pc, #844]	@ 831c <drop_root_privileges@@Base+0x718>
    7fcc:	e59f0318 	ldr	r0, [pc, #792]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7fd0:	e08f3003 	add	r3, pc, r3
    7fd4:	e08fc00c 	add	ip, pc, ip
    7fd8:	e08f2002 	add	r2, pc, r2
    7fdc:	eaffffbd 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    7fe0:	e59f3338 	ldr	r3, [pc, #824]	@ 8320 <drop_root_privileges@@Base+0x71c>
    7fe4:	e3a0ef7e 	mov	lr, #504	@ 0x1f8
    7fe8:	e3a01001 	mov	r1, #1
    7fec:	e59fc330 	ldr	ip, [pc, #816]	@ 8324 <drop_root_privileges@@Base+0x720>
    7ff0:	e59f2330 	ldr	r2, [pc, #816]	@ 8328 <drop_root_privileges@@Base+0x724>
    7ff4:	e59f02f0 	ldr	r0, [pc, #752]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    7ff8:	e08f3003 	add	r3, pc, r3
    7ffc:	e08fc00c 	add	ip, pc, ip
    8000:	e08f2002 	add	r2, pc, r2
    8004:	eaffffb3 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8008:	e59f331c 	ldr	r3, [pc, #796]	@ 832c <drop_root_privileges@@Base+0x728>
    800c:	e300e1fb 	movw	lr, #507	@ 0x1fb
    8010:	e3a01001 	mov	r1, #1
    8014:	e59fc314 	ldr	ip, [pc, #788]	@ 8330 <drop_root_privileges@@Base+0x72c>
    8018:	e59f2314 	ldr	r2, [pc, #788]	@ 8334 <drop_root_privileges@@Base+0x730>
    801c:	e59f02c8 	ldr	r0, [pc, #712]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8020:	e08f3003 	add	r3, pc, r3
    8024:	e08fc00c 	add	ip, pc, ip
    8028:	e08f2002 	add	r2, pc, r2
    802c:	eaffffa9 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8030:	e59f3300 	ldr	r3, [pc, #768]	@ 8338 <drop_root_privileges@@Base+0x734>
    8034:	e300e1fe 	movw	lr, #510	@ 0x1fe
    8038:	e3a01001 	mov	r1, #1
    803c:	e59fc2f8 	ldr	ip, [pc, #760]	@ 833c <drop_root_privileges@@Base+0x738>
    8040:	e59f22f8 	ldr	r2, [pc, #760]	@ 8340 <drop_root_privileges@@Base+0x73c>
    8044:	e59f02a0 	ldr	r0, [pc, #672]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8048:	e08f3003 	add	r3, pc, r3
    804c:	e08fc00c 	add	ip, pc, ip
    8050:	e08f2002 	add	r2, pc, r2
    8054:	eaffff9f 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8058:	e59f32e4 	ldr	r3, [pc, #740]	@ 8344 <drop_root_privileges@@Base+0x740>
    805c:	e300e1ef 	movw	lr, #495	@ 0x1ef
    8060:	e3a01001 	mov	r1, #1
    8064:	e59fc2dc 	ldr	ip, [pc, #732]	@ 8348 <drop_root_privileges@@Base+0x744>
    8068:	e59f22dc 	ldr	r2, [pc, #732]	@ 834c <drop_root_privileges@@Base+0x748>
    806c:	e59f0278 	ldr	r0, [pc, #632]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8070:	e08f3003 	add	r3, pc, r3
    8074:	e08fc00c 	add	ip, pc, ip
    8078:	e08f2002 	add	r2, pc, r2
    807c:	eaffff95 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8080:	e59f32c8 	ldr	r3, [pc, #712]	@ 8350 <drop_root_privileges@@Base+0x74c>
    8084:	e300e1dd 	movw	lr, #477	@ 0x1dd
    8088:	e1a01006 	mov	r1, r6
    808c:	e59fc2c0 	ldr	ip, [pc, #704]	@ 8354 <drop_root_privileges@@Base+0x750>
    8090:	e59f22c0 	ldr	r2, [pc, #704]	@ 8358 <drop_root_privileges@@Base+0x754>
    8094:	e59f0250 	ldr	r0, [pc, #592]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8098:	e08f3003 	add	r3, pc, r3
    809c:	e08fc00c 	add	ip, pc, ip
    80a0:	e08f2002 	add	r2, pc, r2
    80a4:	eaffffa7 	b	7f48 <drop_root_privileges@@Base+0x344>
    80a8:	e59f32ac 	ldr	r3, [pc, #684]	@ 835c <drop_root_privileges@@Base+0x758>
    80ac:	e300e1c2 	movw	lr, #450	@ 0x1c2
    80b0:	e3a01001 	mov	r1, #1
    80b4:	e59fc2a4 	ldr	ip, [pc, #676]	@ 8360 <drop_root_privileges@@Base+0x75c>
    80b8:	e59f22a4 	ldr	r2, [pc, #676]	@ 8364 <drop_root_privileges@@Base+0x760>
    80bc:	e59f0228 	ldr	r0, [pc, #552]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    80c0:	e08f3003 	add	r3, pc, r3
    80c4:	e08fc00c 	add	ip, pc, ip
    80c8:	e08f2002 	add	r2, pc, r2
    80cc:	eaffff81 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    80d0:	e59f3290 	ldr	r3, [pc, #656]	@ 8368 <drop_root_privileges@@Base+0x764>
    80d4:	e3a0ef76 	mov	lr, #472	@ 0x1d8
    80d8:	e1a01006 	mov	r1, r6
    80dc:	e59fc288 	ldr	ip, [pc, #648]	@ 836c <drop_root_privileges@@Base+0x768>
    80e0:	e59f2288 	ldr	r2, [pc, #648]	@ 8370 <drop_root_privileges@@Base+0x76c>
    80e4:	e59f0200 	ldr	r0, [pc, #512]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    80e8:	e08f3003 	add	r3, pc, r3
    80ec:	e08fc00c 	add	ip, pc, ip
    80f0:	e08f2002 	add	r2, pc, r2
    80f4:	eaffff93 	b	7f48 <drop_root_privileges@@Base+0x344>
    80f8:	e59f3274 	ldr	r3, [pc, #628]	@ 8374 <drop_root_privileges@@Base+0x770>
    80fc:	e300e1c9 	movw	lr, #457	@ 0x1c9
    8100:	e3a01001 	mov	r1, #1
    8104:	e59fc26c 	ldr	ip, [pc, #620]	@ 8378 <drop_root_privileges@@Base+0x774>
    8108:	e59f226c 	ldr	r2, [pc, #620]	@ 837c <drop_root_privileges@@Base+0x778>
    810c:	e59f01d8 	ldr	r0, [pc, #472]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8110:	e08f3003 	add	r3, pc, r3
    8114:	e08fc00c 	add	ip, pc, ip
    8118:	e08f2002 	add	r2, pc, r2
    811c:	eaffff6d 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8120:	e59f3258 	ldr	r3, [pc, #600]	@ 8380 <drop_root_privileges@@Base+0x77c>
    8124:	e300e1e1 	movw	lr, #481	@ 0x1e1
    8128:	e3a01001 	mov	r1, #1
    812c:	e59fc250 	ldr	ip, [pc, #592]	@ 8384 <drop_root_privileges@@Base+0x780>
    8130:	e59f2250 	ldr	r2, [pc, #592]	@ 8388 <drop_root_privileges@@Base+0x784>
    8134:	e59f01b0 	ldr	r0, [pc, #432]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8138:	e08f3003 	add	r3, pc, r3
    813c:	e08fc00c 	add	ip, pc, ip
    8140:	e08f2002 	add	r2, pc, r2
    8144:	eaffff63 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8148:	e59f323c 	ldr	r3, [pc, #572]	@ 838c <drop_root_privileges@@Base+0x788>
    814c:	e300e1c5 	movw	lr, #453	@ 0x1c5
    8150:	e3a01001 	mov	r1, #1
    8154:	e59fc234 	ldr	ip, [pc, #564]	@ 8390 <drop_root_privileges@@Base+0x78c>
    8158:	e59f2234 	ldr	r2, [pc, #564]	@ 8394 <drop_root_privileges@@Base+0x790>
    815c:	e59f0188 	ldr	r0, [pc, #392]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8160:	e08f3003 	add	r3, pc, r3
    8164:	e08fc00c 	add	ip, pc, ip
    8168:	e08f2002 	add	r2, pc, r2
    816c:	eaffff59 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8170:	e59f3220 	ldr	r3, [pc, #544]	@ 8398 <drop_root_privileges@@Base+0x794>
    8174:	e300e1e5 	movw	lr, #485	@ 0x1e5
    8178:	e3a01001 	mov	r1, #1
    817c:	e59fc218 	ldr	ip, [pc, #536]	@ 839c <drop_root_privileges@@Base+0x798>
    8180:	e59f2218 	ldr	r2, [pc, #536]	@ 83a0 <drop_root_privileges@@Base+0x79c>
    8184:	e59f0160 	ldr	r0, [pc, #352]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8188:	e08f3003 	add	r3, pc, r3
    818c:	e08fc00c 	add	ip, pc, ip
    8190:	e08f2002 	add	r2, pc, r2
    8194:	eaffff4f 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8198:	e59f3204 	ldr	r3, [pc, #516]	@ 83a4 <drop_root_privileges@@Base+0x7a0>
    819c:	e300e1ed 	movw	lr, #493	@ 0x1ed
    81a0:	e3a01001 	mov	r1, #1
    81a4:	e59fc1fc 	ldr	ip, [pc, #508]	@ 83a8 <drop_root_privileges@@Base+0x7a4>
    81a8:	e59f21fc 	ldr	r2, [pc, #508]	@ 83ac <drop_root_privileges@@Base+0x7a8>
    81ac:	e59f0138 	ldr	r0, [pc, #312]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    81b0:	e08f3003 	add	r3, pc, r3
    81b4:	e08fc00c 	add	ip, pc, ip
    81b8:	e08f2002 	add	r2, pc, r2
    81bc:	eaffff45 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    81c0:	e59f31e8 	ldr	r3, [pc, #488]	@ 83b0 <drop_root_privileges@@Base+0x7ac>
    81c4:	e300e1da 	movw	lr, #474	@ 0x1da
    81c8:	e1a01006 	mov	r1, r6
    81cc:	e59fc1e0 	ldr	ip, [pc, #480]	@ 83b4 <drop_root_privileges@@Base+0x7b0>
    81d0:	e59f21e0 	ldr	r2, [pc, #480]	@ 83b8 <drop_root_privileges@@Base+0x7b4>
    81d4:	e59f0110 	ldr	r0, [pc, #272]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    81d8:	e08f3003 	add	r3, pc, r3
    81dc:	e08fc00c 	add	ip, pc, ip
    81e0:	e08f2002 	add	r2, pc, r2
    81e4:	eaffff57 	b	7f48 <drop_root_privileges@@Base+0x344>
    81e8:	ebffef8b 	bl	401c <__stack_chk_fail@plt>
    81ec:	ebfff02c 	bl	42a4 <cap_get_proc@plt>
    81f0:	e2507000 	subs	r7, r0, #0
    81f4:	0a000019 	beq	8260 <drop_root_privileges@@Base+0x65c>
    81f8:	e3a06001 	mov	r6, #1
    81fc:	e1a02004 	mov	r2, r4
    8200:	e1a03005 	mov	r3, r5
    8204:	e3a01000 	mov	r1, #0
    8208:	e58d6000 	str	r6, [sp]
    820c:	ebffefb5 	bl	40e8 <cap_set_flag@plt>
    8210:	e3700001 	cmn	r0, #1
    8214:	0a000025 	beq	82b0 <drop_root_privileges@@Base+0x6ac>
    8218:	e1a00007 	mov	r0, r7
    821c:	ebfff0ef 	bl	45e0 <cap_set_proc@plt>
    8220:	e3700001 	cmn	r0, #1
    8224:	0a000017 	beq	8288 <drop_root_privileges@@Base+0x684>
    8228:	e1a00007 	mov	r0, r7
    822c:	ebffef9e 	bl	40ac <cap_free@plt>
    8230:	e3700001 	cmn	r0, #1
    8234:	1affff1c 	bne	7eac <drop_root_privileges@@Base+0x2a8>
    8238:	e59f317c 	ldr	r3, [pc, #380]	@ 83bc <drop_root_privileges@@Base+0x7b8>
    823c:	e300e20d 	movw	lr, #525	@ 0x20d
    8240:	e1a01006 	mov	r1, r6
    8244:	e59fc174 	ldr	ip, [pc, #372]	@ 83c0 <drop_root_privileges@@Base+0x7bc>
    8248:	e59f2174 	ldr	r2, [pc, #372]	@ 83c4 <drop_root_privileges@@Base+0x7c0>
    824c:	e59f0098 	ldr	r0, [pc, #152]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8250:	e08f3003 	add	r3, pc, r3
    8254:	e08fc00c 	add	ip, pc, ip
    8258:	e08f2002 	add	r2, pc, r2
    825c:	eaffff39 	b	7f48 <drop_root_privileges@@Base+0x344>
    8260:	e59f3160 	ldr	r3, [pc, #352]	@ 83c8 <drop_root_privileges@@Base+0x7c4>
    8264:	e300e206 	movw	lr, #518	@ 0x206
    8268:	e3a01001 	mov	r1, #1
    826c:	e59fc158 	ldr	ip, [pc, #344]	@ 83cc <drop_root_privileges@@Base+0x7c8>
    8270:	e59f2158 	ldr	r2, [pc, #344]	@ 83d0 <drop_root_privileges@@Base+0x7cc>
    8274:	e59f0070 	ldr	r0, [pc, #112]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    8278:	e08f3003 	add	r3, pc, r3
    827c:	e08fc00c 	add	ip, pc, ip
    8280:	e08f2002 	add	r2, pc, r2
    8284:	eaffff13 	b	7ed8 <drop_root_privileges@@Base+0x2d4>
    8288:	e59f3144 	ldr	r3, [pc, #324]	@ 83d4 <drop_root_privileges@@Base+0x7d0>
    828c:	e300e20b 	movw	lr, #523	@ 0x20b
    8290:	e1a01006 	mov	r1, r6
    8294:	e59fc13c 	ldr	ip, [pc, #316]	@ 83d8 <drop_root_privileges@@Base+0x7d4>
    8298:	e59f213c 	ldr	r2, [pc, #316]	@ 83dc <drop_root_privileges@@Base+0x7d8>
    829c:	e59f0048 	ldr	r0, [pc, #72]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    82a0:	e08f3003 	add	r3, pc, r3
    82a4:	e08fc00c 	add	ip, pc, ip
    82a8:	e08f2002 	add	r2, pc, r2
    82ac:	eaffff25 	b	7f48 <drop_root_privileges@@Base+0x344>
    82b0:	e59f3128 	ldr	r3, [pc, #296]	@ 83e0 <drop_root_privileges@@Base+0x7dc>
    82b4:	e300e209 	movw	lr, #521	@ 0x209
    82b8:	e1a01006 	mov	r1, r6
    82bc:	e59fc120 	ldr	ip, [pc, #288]	@ 83e4 <drop_root_privileges@@Base+0x7e0>
    82c0:	e59f2120 	ldr	r2, [pc, #288]	@ 83e8 <drop_root_privileges@@Base+0x7e4>
    82c4:	e59f0020 	ldr	r0, [pc, #32]	@ 82ec <drop_root_privileges@@Base+0x6e8>
    82c8:	e08f3003 	add	r3, pc, r3
    82cc:	e08fc00c 	add	ip, pc, ip
    82d0:	e08f2002 	add	r2, pc, r2
    82d4:	eaffff1b 	b	7f48 <drop_root_privileges@@Base+0x344>
    82d8:	000180a4 	andeq	r8, r1, r4, lsr #1
    82dc:	00000310 	andeq	r0, r0, r0, lsl r3
    82e0:	0000648c 	andeq	r6, r0, ip, lsl #9
    82e4:	000066a0 	andeq	r6, r0, r0, lsr #13
    82e8:	000064cc 	andeq	r6, r0, ip, asr #9
    82ec:	0000031c 	andeq	r0, r0, ip, lsl r3
    82f0:	0000641c 	andeq	r6, r0, ip, lsl r4
    82f4:	000064c0 	andeq	r6, r0, r0, asr #9
    82f8:	0000645c 	andeq	r6, r0, ip, asr r4
    82fc:	000063d8 	ldrdeq	r6, [r0], -r8
    8300:	0000647c 	andeq	r6, r0, ip, ror r4
    8304:	00006418 	andeq	r6, r0, r8, lsl r4
    8308:	000063b0 			@ <UNDEFINED> instruction: 0x000063b0
    830c:	00006454 	andeq	r6, r0, r4, asr r4
    8310:	000063f0 	strdeq	r6, [r0], -r0
    8314:	00006388 	andeq	r6, r0, r8, lsl #7
    8318:	0000642c 	andeq	r6, r0, ip, lsr #8
    831c:	000063c8 	andeq	r6, r0, r8, asr #7
    8320:	00006360 	andeq	r6, r0, r0, ror #6
    8324:	00006404 	andeq	r6, r0, r4, lsl #8
    8328:	000063a0 	andeq	r6, r0, r0, lsr #7
    832c:	00006338 	andeq	r6, r0, r8, lsr r3
    8330:	000063dc 	ldrdeq	r6, [r0], -ip
    8334:	00006378 	andeq	r6, r0, r8, ror r3
    8338:	00006310 	andeq	r6, r0, r0, lsl r3
    833c:	000063b4 			@ <UNDEFINED> instruction: 0x000063b4
    8340:	00006350 	andeq	r6, r0, r0, asr r3
    8344:	000062e8 	andeq	r6, r0, r8, ror #5
    8348:	0000638c 	andeq	r6, r0, ip, lsl #7
    834c:	00006328 	andeq	r6, r0, r8, lsr #6
    8350:	000062c0 	andeq	r6, r0, r0, asr #5
    8354:	00006358 	andeq	r6, r0, r8, asr r3
    8358:	00006300 	andeq	r6, r0, r0, lsl #6
    835c:	00006298 	muleq	r0, r8, r2
    8360:	00006308 	andeq	r6, r0, r8, lsl #6
    8364:	000062d8 	ldrdeq	r6, [r0], -r8
    8368:	00006270 	andeq	r6, r0, r0, ror r2
    836c:	00006314 	andeq	r6, r0, r4, lsl r3
    8370:	000062b0 			@ <UNDEFINED> instruction: 0x000062b0
    8374:	00006248 	andeq	r6, r0, r8, asr #4
    8378:	00006474 	andeq	r6, r0, r4, ror r4
    837c:	00006288 	andeq	r6, r0, r8, lsl #5
    8380:	00006220 	andeq	r6, r0, r0, lsr #4
    8384:	000062a0 	andeq	r6, r0, r0, lsr #5
    8388:	00006260 	andeq	r6, r0, r0, ror #4
    838c:	000061f8 	strdeq	r6, [r0], -r8
    8390:	000063f8 	strdeq	r6, [r0], -r8
    8394:	00006238 	andeq	r6, r0, r8, lsr r2
    8398:	000061d0 	ldrdeq	r6, [r0], -r0
    839c:	0000625c 	andeq	r6, r0, ip, asr r2
    83a0:	00006210 	andeq	r6, r0, r0, lsl r2
    83a4:	000061a8 	andeq	r6, r0, r8, lsr #3
    83a8:	00006240 	andeq	r6, r0, r0, asr #4
    83ac:	000061e8 	andeq	r6, r0, r8, ror #3
    83b0:	00006180 	andeq	r6, r0, r0, lsl #3
    83b4:	00006218 	andeq	r6, r0, r8, lsl r2
    83b8:	000061c0 	andeq	r6, r0, r0, asr #3
    83bc:	00006108 	andeq	r6, r0, r8, lsl #2
    83c0:	000061a0 	andeq	r6, r0, r0, lsr #3
    83c4:	00006148 	andeq	r6, r0, r8, asr #2
    83c8:	000060e0 	andeq	r6, r0, r0, ror #1
    83cc:	0000630c 	andeq	r6, r0, ip, lsl #6
    83d0:	00006120 	andeq	r6, r0, r0, lsr #2
    83d4:	000060b8 	strheq	r6, [r0], -r8
    83d8:	00006150 	andeq	r6, r0, r0, asr r1
    83dc:	000060f8 	strdeq	r6, [r0], -r8
    83e0:	00006090 	muleq	r0, r0, r0
    83e4:	00006128 	andeq	r6, r0, r8, lsr #2
    83e8:	000060d0 	ldrdeq	r6, [r0], -r0
