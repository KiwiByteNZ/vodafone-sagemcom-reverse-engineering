
vodafone-custom-page/uploads/libwebservices.so.1.1.1:     file format elf32-littlearm


Disassembly of section .text:

0000f958 <wctl_system_init@@Base>:
    f958:	e59f3048 	ldr	r3, [pc, #72]	@ f9a8 <wctl_system_init@@Base+0x50>
    f95c:	e52d4008 	str	r4, [sp, #-8]!
    f960:	e59f2044 	ldr	r2, [pc, #68]	@ f9ac <wctl_system_init@@Base+0x54>
    f964:	e58de004 	str	lr, [sp, #4]
    f968:	e24dd008 	sub	sp, sp, #8
    f96c:	e08f3003 	add	r3, pc, r3
    f970:	e7934002 	ldr	r4, [r3, r2]
    f974:	e5943000 	ldr	r3, [r4]
    f978:	e58d3004 	str	r3, [sp, #4]
    f97c:	ebffda68 	bl	6324 <wctl_active_session_listen_event@plt>
    f980:	e59d2004 	ldr	r2, [sp, #4]
    f984:	e5943000 	ldr	r3, [r4]
    f988:	e1520003 	cmp	r2, r3
    f98c:	1a000004 	bne	f9a4 <wctl_system_init@@Base+0x4c>
    f990:	e28dd008 	add	sp, sp, #8
    f994:	e59d4000 	ldr	r4, [sp]
    f998:	e59de004 	ldr	lr, [sp, #4]
    f99c:	e28dd008 	add	sp, sp, #8
    f9a0:	eaffda7d 	b	639c <wctl_init_active_session_list@plt>
    f9a4:	ebffdc26 	bl	6a44 <__stack_chk_fail@plt>
    f9a8:	0002203c 	andeq	r2, r2, ip, lsr r0
    f9ac:	0000060c 	andeq	r0, r0, ip, lsl #12
