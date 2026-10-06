
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
