
libbl602_wifi/mm.o:     file format elf32-littleriscv


Disassembly of section .text.mm_rx_filter_set:

00000000 <mm_rx_filter_set>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	mm_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	mm_env
			4: R_RISCV_RELAX	*ABS*
   8:	4398                	lw	a4,0(a5)
   a:	43dc                	lw	a5,4(a5)
   c:	8fd9                	or	a5,a5,a4

0000000e <.LBB278>:
   e:	44b00737          	lui	a4,0x44b00
  12:	d33c                	sw	a5,96(a4)

00000014 <.LBE278>:
  14:	8082                	ret

Disassembly of section .text.element_notify_status_enabled:

00000000 <element_notify_status_enabled>:
   0:	4501                	li	a0,0

00000002 <.LVL3>:
   2:	8082                	ret

Disassembly of section .text.blmac_ap_setf:

00000000 <blmac_ap_setf>:
   0:	44b00737          	lui	a4,0x44b00
   4:	477c                	lw	a5,76(a4)
   6:	0506                	slli	a0,a0,0x1

00000008 <.LVL5>:
   8:	9bf5                	andi	a5,a5,-3
   a:	8d5d                	or	a0,a0,a5
   c:	c768                	sw	a0,76(a4)
   e:	8082                	ret

Disassembly of section .text.ascii_to_hex:

00000000 <ascii_to_hex>:
   0:	87aa                	mv	a5,a0
   2:	fd050513          	addi	a0,a0,-48

00000006 <.LVL7>:
   6:	0ff57513          	andi	a0,a0,255
   a:	4725                	li	a4,9
   c:	00a77d63          	bgeu	a4,a0,26 <.L5>
			c: R_RISCV_BRANCH	.L5
  10:	f9f78713          	addi	a4,a5,-97 # ffffff9f <.LASF415+0xffff9c31>
  14:	0ff77713          	andi	a4,a4,255
  18:	4695                	li	a3,5
  1a:	00e6e763          	bltu	a3,a4,28 <.L6>
			1a: R_RISCV_BRANCH	.L6
  1e:	fa978793          	addi	a5,a5,-87

00000022 <.L8>:
  22:	0ff7f513          	andi	a0,a5,255

00000026 <.L5>:
  26:	8082                	ret

00000028 <.L6>:
  28:	fbf78713          	addi	a4,a5,-65
  2c:	0ff77713          	andi	a4,a4,255
  30:	4501                	li	a0,0
  32:	fee6eae3          	bltu	a3,a4,26 <.L5>
			32: R_RISCV_BRANCH	.L5
  36:	fc978793          	addi	a5,a5,-55

0000003a <.LVL10>:
  3a:	b7e5                	j	22 <.L8>
			3a: R_RISCV_RVC_JUMP	.L8

Disassembly of section .text.element_notify_time_last_received_set:

00000000 <element_notify_time_last_received_set>:
   0:	4501                	li	a0,0
   2:	8082                	ret

Disassembly of section .text.blmac_encr_cntrl_pack.constprop.8:

00000000 <blmac_encr_cntrl_pack.constprop.8>:
   0:	7179                	addi	sp,sp,-48
   2:	c85a                	sw	s6,16(sp)
   4:	00471b13          	slli	s6,a4,0x4
   8:	d422                	sw	s0,40(sp)
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	ca56                	sw	s5,20(sp)
  14:	c65e                	sw	s7,12(sp)
  16:	84be                	mv	s1,a5
  18:	d606                	sw	ra,44(sp)
  1a:	f0fb7793          	andi	a5,s6,-241

0000001e <.LVL12>:
  1e:	842a                	mv	s0,a0
  20:	8942                	mv	s2,a6
  22:	8bc6                	mv	s7,a7
  24:	01e59993          	slli	s3,a1,0x1e
  28:	01061a13          	slli	s4,a2,0x10
  2c:	00869a93          	slli	s5,a3,0x8
  30:	c385                	beqz	a5,50 <.L11>
			30: R_RISCV_RVC_BRANCH	.L11
  32:	6609                	lui	a2,0x2

00000034 <.LVL13>:
  34:	000005b7          	lui	a1,0x0
			34: R_RISCV_HI20	.LC0
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL14>:
  38:	00000537          	lui	a0,0x0
			38: R_RISCV_HI20	.LC1
			38: R_RISCV_RELAX	*ABS*

0000003c <.LVL15>:
  3c:	87360613          	addi	a2,a2,-1933 # 1873 <.LASF1589+0x11>
  40:	00058593          	mv	a1,a1
			40: R_RISCV_LO12_I	.LC0
			40: R_RISCV_RELAX	*ABS*
  44:	00050513          	mv	a0,a0
			44: R_RISCV_LO12_I	.LC1
			44: R_RISCV_RELAX	*ABS*
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	assert_err
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL15+0xc>

00000050 <.L11>:
  50:	048a                	slli	s1,s1,0x2
  52:	ff34f793          	andi	a5,s1,-13
  56:	c385                	beqz	a5,76 <.L12>
			56: R_RISCV_RVC_BRANCH	.L12
  58:	6609                	lui	a2,0x2
  5a:	000005b7          	lui	a1,0x0
			5a: R_RISCV_HI20	.LC0
			5a: R_RISCV_RELAX	*ABS*
  5e:	00000537          	lui	a0,0x0
			5e: R_RISCV_HI20	.LC2
			5e: R_RISCV_RELAX	*ABS*
  62:	87460613          	addi	a2,a2,-1932 # 1874 <.LASF1589+0x12>
  66:	00058593          	mv	a1,a1
			66: R_RISCV_LO12_I	.LC0
			66: R_RISCV_RELAX	*ABS*
  6a:	00050513          	mv	a0,a0
			6a: R_RISCV_LO12_I	.LC2
			6a: R_RISCV_RELAX	*ABS*
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	assert_err
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L11+0x1e>

00000076 <.L12>:
  76:	047e                	slli	s0,s0,0x1f
  78:	00191593          	slli	a1,s2,0x1
  7c:	01746433          	or	s0,s0,s7
  80:	8c4d                	or	s0,s0,a1
  82:	009465b3          	or	a1,s0,s1
  86:	0165e5b3          	or	a1,a1,s6
  8a:	0155e5b3          	or	a1,a1,s5
  8e:	0145e5b3          	or	a1,a1,s4
  92:	0135e5b3          	or	a1,a1,s3
  96:	44b007b7          	lui	a5,0x44b00
  9a:	0cb7a223          	sw	a1,196(a5) # 44b000c4 <.LASF415+0x44af9d56>
  9e:	50b2                	lw	ra,44(sp)
  a0:	5422                	lw	s0,40(sp)
  a2:	5492                	lw	s1,36(sp)
  a4:	5902                	lw	s2,32(sp)
  a6:	49f2                	lw	s3,28(sp)
  a8:	4a62                	lw	s4,24(sp)
  aa:	4ad2                	lw	s5,20(sp)
  ac:	4b42                	lw	s6,16(sp)
  ae:	4bb2                	lw	s7,12(sp)
  b0:	6145                	addi	sp,sp,48
  b2:	8082                	ret

Disassembly of section .text.element_notify_keepalive_received:

00000000 <element_notify_keepalive_received>:
   0:	4501                	li	a0,0
   2:	8082                	ret

Disassembly of section .text.hal_machw_rx_duration:

00000000 <hal_machw_rx_duration>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)
   a:	5518                	lw	a4,40(a0)
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	rxv2macrate
			c: R_RISCV_RELAX	*ABS*
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	rxv2macrate
			10: R_RISCV_RELAX	*ABS*
  14:	8331                	srli	a4,a4,0xc
  16:	8b3d                	andi	a4,a4,15
  18:	97ba                	add	a5,a5,a4

0000001a <.LBB304>:
  1a:	0007c483          	lbu	s1,0(a5) # 0 <hal_machw_rx_duration>

0000001e <.LBE304>:
  1e:	842a                	mv	s0,a0

00000020 <.LBB308>:
  20:	892e                	mv	s2,a1

00000022 <.LBB309>:
  22:	f804f793          	andi	a5,s1,-128
  26:	c385                	beqz	a5,46 <.L22>
			26: R_RISCV_RVC_BRANCH	.L22
  28:	6609                	lui	a2,0x2
  2a:	000005b7          	lui	a1,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL20>:
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	.LC3
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL21>:
  32:	a9960613          	addi	a2,a2,-1383 # 1a99 <.LASF617+0xa>
  36:	00058593          	mv	a1,a1
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00050513          	mv	a0,a0
			3a: R_RISCV_LO12_I	.LC3
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	assert_err
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL21+0xc>

00000046 <.L22>:
  46:	44b087b7          	lui	a5,0x44b08
  4a:	1697a223          	sw	s1,356(a5) # 44b08164 <.LASF415+0x44b01df6>

0000004e <.LBB310>:
  4e:	544c                	lw	a1,44(s0)

00000050 <.LBB313>:
  50:	80000737          	lui	a4,0x80000

00000054 <.LBE313>:
  54:	81bd                	srli	a1,a1,0xf

00000056 <.LBB316>:
  56:	8985                	andi	a1,a1,1
  58:	05e2                	slli	a1,a1,0x18
  5a:	0125e5b3          	or	a1,a1,s2
  5e:	16b7a023          	sw	a1,352(a5)

00000062 <.LBB317>:
  62:	16e7a423          	sw	a4,360(a5)

00000066 <.LBB318>:
  66:	44b08737          	lui	a4,0x44b08

0000006a <.L23>:
  6a:	16872683          	lw	a3,360(a4) # 44b08168 <.LASF415+0x44b01dfa>
  6e:	16870793          	addi	a5,a4,360

00000072 <.LBE321>:
  72:	00169613          	slli	a2,a3,0x1
  76:	fe065ae3          	bgez	a2,6a <.L23>
			76: R_RISCV_BRANCH	.L23

0000007a <.LBB322>:
  7a:	4398                	lw	a4,0(a5)

0000007c <.LBE322>:
  7c:	00171693          	slli	a3,a4,0x1
  80:	0206c863          	bltz	a3,b0 <.L24>
			80: R_RISCV_BRANCH	.L24

00000084 <.LBB324>:
  84:	000005b7          	lui	a1,0x0
			84: R_RISCV_HI20	.LC0
			84: R_RISCV_RELAX	*ABS*
  88:	00000537          	lui	a0,0x0
			88: R_RISCV_HI20	.LC4
			88: R_RISCV_RELAX	*ABS*
  8c:	00050513          	mv	a0,a0
			8c: R_RISCV_LO12_I	.LC4
			8c: R_RISCV_RELAX	*ABS*
  90:	10500613          	li	a2,261
  94:	00058593          	mv	a1,a1
			94: R_RISCV_LO12_I	.LC0
			94: R_RISCV_RELAX	*ABS*
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	assert_rec
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LBB324+0x14>

000000a0 <.LVL28>:
  a0:	1f400513          	li	a0,500

000000a4 <.L21>:
  a4:	40b2                	lw	ra,12(sp)
  a6:	4422                	lw	s0,8(sp)

000000a8 <.LVL29>:
  a8:	4492                	lw	s1,4(sp)
  aa:	4902                	lw	s2,0(sp)
  ac:	0141                	addi	sp,sp,16
  ae:	8082                	ret

000000b0 <.L24>:
  b0:	4388                	lw	a0,0(a5)
  b2:	0542                	slli	a0,a0,0x10
  b4:	8141                	srli	a0,a0,0x10

000000b6 <.LBE326>:
  b6:	b7fd                	j	a4 <.L21>
			b6: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.mm_env_max_ampdu_duration_set:

00000000 <mm_env_max_ampdu_duration_set>:
   0:	44b006b7          	lui	a3,0x44b00
   4:	2006a703          	lw	a4,512(a3) # 44b00200 <.LASF415+0x44af9e92>

00000008 <.LBE328>:
   8:	09600793          	li	a5,150

0000000c <.LBB331>:
   c:	8331                	srli	a4,a4,0xc

0000000e <.LBE331>:
   e:	0742                	slli	a4,a4,0x10
  10:	8341                	srli	a4,a4,0x10
  12:	cf09                	beqz	a4,2c <.L33>
			12: R_RISCV_RVC_BRANCH	.L33

00000014 <.LBB332>:
  14:	2006a703          	lw	a4,512(a3)
  18:	8331                	srli	a4,a4,0xc

0000001a <.LBE332>:
  1a:	0742                	slli	a4,a4,0x10
  1c:	8341                	srli	a4,a4,0x10
  1e:	00e7e763          	bltu	a5,a4,2c <.L33>
			1e: R_RISCV_BRANCH	.L33

00000022 <.LBB334>:
  22:	2006a783          	lw	a5,512(a3)

00000026 <.LVL34>:
  26:	83b1                	srli	a5,a5,0xc

00000028 <.LVL35>:
  28:	07c2                	slli	a5,a5,0x10
  2a:	83c1                	srli	a5,a5,0x10

0000002c <.L33>:
  2c:	00000737          	lui	a4,0x0
			2c: R_RISCV_HI20	mm_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00070693          	mv	a3,a4
			30: R_RISCV_LO12_I	mm_env
			30: R_RISCV_RELAX	*ABS*
  34:	00f69423          	sh	a5,8(a3)

00000038 <.LBB336>:
  38:	44b00637          	lui	a2,0x44b00
  3c:	20462683          	lw	a3,516(a2) # 44b00204 <.LASF415+0x44af9e96>
  40:	00070713          	mv	a4,a4
			40: R_RISCV_LO12_I	mm_env
			40: R_RISCV_RELAX	*ABS*

00000044 <.LBE336>:
  44:	09600793          	li	a5,150

00000048 <.LBB339>:
  48:	82b1                	srli	a3,a3,0xc

0000004a <.LBE339>:
  4a:	06c2                	slli	a3,a3,0x10
  4c:	82c1                	srli	a3,a3,0x10
  4e:	ce89                	beqz	a3,68 <.L34>
			4e: R_RISCV_RVC_BRANCH	.L34

00000050 <.LBB340>:
  50:	20462683          	lw	a3,516(a2)
  54:	82b1                	srli	a3,a3,0xc

00000056 <.LBE340>:
  56:	06c2                	slli	a3,a3,0x10
  58:	82c1                	srli	a3,a3,0x10
  5a:	00d7e763          	bltu	a5,a3,68 <.L34>
			5a: R_RISCV_BRANCH	.L34

0000005e <.LBB342>:
  5e:	20462783          	lw	a5,516(a2)

00000062 <.LVL38>:
  62:	83b1                	srli	a5,a5,0xc

00000064 <.LVL39>:
  64:	07c2                	slli	a5,a5,0x10
  66:	83c1                	srli	a5,a5,0x10

00000068 <.L34>:
  68:	00f71523          	sh	a5,10(a4) # a <.LBE328+0x2>

0000006c <.LBB344>:
  6c:	44b00637          	lui	a2,0x44b00
  70:	20862683          	lw	a3,520(a2) # 44b00208 <.LASF415+0x44af9e9a>

00000074 <.LBE344>:
  74:	09600793          	li	a5,150

00000078 <.LBB347>:
  78:	82b1                	srli	a3,a3,0xc

0000007a <.LBE347>:
  7a:	06c2                	slli	a3,a3,0x10
  7c:	82c1                	srli	a3,a3,0x10
  7e:	ce89                	beqz	a3,98 <.L35>
			7e: R_RISCV_RVC_BRANCH	.L35

00000080 <.LBB348>:
  80:	20862683          	lw	a3,520(a2)
  84:	82b1                	srli	a3,a3,0xc

00000086 <.LBE348>:
  86:	06c2                	slli	a3,a3,0x10
  88:	82c1                	srli	a3,a3,0x10
  8a:	00d7e763          	bltu	a5,a3,98 <.L35>
			8a: R_RISCV_BRANCH	.L35

0000008e <.LBB350>:
  8e:	20862783          	lw	a5,520(a2)

00000092 <.LVL42>:
  92:	83b1                	srli	a5,a5,0xc

00000094 <.LVL43>:
  94:	07c2                	slli	a5,a5,0x10
  96:	83c1                	srli	a5,a5,0x10

00000098 <.L35>:
  98:	00f71623          	sh	a5,12(a4)

0000009c <.LBB352>:
  9c:	44b00637          	lui	a2,0x44b00
  a0:	20c62683          	lw	a3,524(a2) # 44b0020c <.LASF415+0x44af9e9e>

000000a4 <.LBE352>:
  a4:	09600793          	li	a5,150

000000a8 <.LBB355>:
  a8:	82b1                	srli	a3,a3,0xc

000000aa <.LBE355>:
  aa:	06c2                	slli	a3,a3,0x10
  ac:	82c1                	srli	a3,a3,0x10
  ae:	ce89                	beqz	a3,c8 <.L36>
			ae: R_RISCV_RVC_BRANCH	.L36

000000b0 <.LBB356>:
  b0:	20c62683          	lw	a3,524(a2)
  b4:	82b1                	srli	a3,a3,0xc

000000b6 <.LBE356>:
  b6:	06c2                	slli	a3,a3,0x10
  b8:	82c1                	srli	a3,a3,0x10
  ba:	00d7e763          	bltu	a5,a3,c8 <.L36>
			ba: R_RISCV_BRANCH	.L36

000000be <.LBB358>:
  be:	20c62783          	lw	a5,524(a2)

000000c2 <.LVL46>:
  c2:	83b1                	srli	a5,a5,0xc

000000c4 <.LVL47>:
  c4:	07c2                	slli	a5,a5,0x10
  c6:	83c1                	srli	a5,a5,0x10

000000c8 <.L36>:
  c8:	00f71723          	sh	a5,14(a4)
  cc:	00f71823          	sh	a5,16(a4)
  d0:	8082                	ret

Disassembly of section .text.mm_env_init:

00000000 <mm_env_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	mm_env
			4: R_RISCV_RELAX	*ABS*
   8:	02c00613          	li	a2,44
   c:	4581                	li	a1,0
   e:	00040513          	mv	a0,s0
			e: R_RISCV_LO12_I	mm_env
			e: R_RISCV_RELAX	*ABS*
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	memset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <mm_env_init+0x14>

0000001c <.LVL48>:
  1c:	00040793          	mv	a5,s0
			1c: R_RISCV_LO12_I	mm_env
			1c: R_RISCV_RELAX	*ABS*
  20:	10100713          	li	a4,257
  24:	02e79123          	sh	a4,34(a5)

00000028 <.LBB360>:
  28:	80000737          	lui	a4,0x80000
  2c:	fde74713          	xori	a4,a4,-34

00000030 <.LBE360>:
  30:	00079923          	sh	zero,18(a5)
  34:	0007a223          	sw	zero,4(a5)

00000038 <.LBB363>:
  38:	c398                	sw	a4,0(a5)
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	mm_rx_filter_set
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBB363+0x2>

00000042 <.LBE363>:
  42:	4422                	lw	s0,8(sp)
  44:	40b2                	lw	ra,12(sp)
  46:	0141                	addi	sp,sp,16
  48:	00000317          	auipc	t1,0x0
			48: R_RISCV_CALL	mm_env_max_ampdu_duration_set
			48: R_RISCV_RELAX	*ABS*
  4c:	00030067          	jr	t1 # 48 <.LBE363+0x6>

Disassembly of section .text.mm_init:

00000000 <mm_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	hal_machw_init
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <mm_init+0x4>

0000000c <.LVL52>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	mm_env_init
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL52>

00000014 <.LVL53>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	vif_mgmt_init
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL53>

0000001c <.LVL54>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	sta_mgmt_init
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL54>

00000024 <.LVL55>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	td_init
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL55>

0000002c <.LVL56>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ps_init
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL56>

00000034 <.LVL57>:
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	txl_cntrl_init
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL57>

0000003c <.LVL58>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	rxl_init
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL58>

00000044 <.LVL59>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	mm_timer_init
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL59>

0000004c <.LVL60>:
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	scan_init
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL60>

00000054 <.LVL61>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	chan_init
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL61>

0000005c <.LVL62>:
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	hal_dma_init
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL62>

00000064 <.LVL63>:
  64:	40b2                	lw	ra,12(sp)
  66:	0141                	addi	sp,sp,16
  68:	00000317          	auipc	t1,0x0
			68: R_RISCV_CALL	mm_bcn_init
			68: R_RISCV_RELAX	*ABS*
  6c:	00030067          	jr	t1 # 68 <.LVL63+0x4>

Disassembly of section .text.mm_active:

00000000 <mm_active>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	03000713          	li	a4,48
   8:	df98                	sw	a4,56(a5)

0000000a <.LBE366>:
   a:	4585                	li	a1,1
   c:	4501                	li	a0,0
   e:	00000317          	auipc	t1,0x0
			e: R_RISCV_CALL	ke_state_set
			e: R_RISCV_RELAX	*ABS*
  12:	00030067          	jr	t1 # e <.LBE366+0x4>

Disassembly of section .text.mm_reset:

00000000 <mm_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <mm_reset+0x6>

0000000e <.LVL68>:
   e:	4785                	li	a5,1
  10:	00f51863          	bne	a0,a5,20 <.L55>
			10: R_RISCV_BRANCH	.L55
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16
  18:	00000317          	auipc	t1,0x0
			18: R_RISCV_CALL	mm_active
			18: R_RISCV_RELAX	*ABS*
  1c:	00030067          	jr	t1 # 18 <.LVL68+0xa>

00000020 <.L55>:
  20:	40b2                	lw	ra,12(sp)
  22:	4581                	li	a1,0
  24:	4501                	li	a0,0
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
			28: R_RISCV_CALL	ke_state_set
			28: R_RISCV_RELAX	*ABS*
  2c:	00030067          	jr	t1 # 28 <.L55+0x8>

Disassembly of section .text.mm_tbtt_evt:

00000000 <mm_tbtt_evt>:
   0:	1101                	addi	sp,sp,-32

00000002 <.LBB389>:
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	ke_env
			2: R_RISCV_RELAX	*ABS*

00000006 <.LBE389>:
   6:	cc22                	sw	s0,24(sp)

00000008 <.LBB390>:
   8:	0007a403          	lw	s0,0(a5) # 0 <mm_tbtt_evt>
			8: R_RISCV_LO12_I	ke_env
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE390>:
   c:	006007b7          	lui	a5,0x600
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	8c7d                	and	s0,s0,a5

0000001a <.LVL72>:
  1a:	02f41063          	bne	s0,a5,3a <.L58>
			1a: R_RISCV_BRANCH	.L58
  1e:	000005b7          	lui	a1,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC5
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL73>:
  26:	32100613          	li	a2,801
  2a:	00058593          	mv	a1,a1
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC5
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	assert_err
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL73+0xc>

0000003a <.L58>:
  3a:	8522                	mv	a0,s0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ke_evt_clear
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.L58+0x2>

00000044 <.LBB391>:
  44:	000007b7          	lui	a5,0x0
			44: R_RISCV_HI20	vif_mgmt_env+0x8
			44: R_RISCV_RELAX	*ABS*+0x8
  48:	0087a403          	lw	s0,8(a5) # 8 <.LBB390>
			48: R_RISCV_LO12_I	vif_mgmt_env+0x8
			48: R_RISCV_RELAX	*ABS*+0x8

0000004c <.LBB393>:
  4c:	30047073          	csrci	mstatus,8

00000050 <.LBE393>:
  50:	4511                	li	a0,4
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	txl_cntrl_halt_ac
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LBE393+0x2>

0000005a <.LVL77>:
  5a:	400005b7          	lui	a1,0x40000
  5e:	4511                	li	a0,4
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	txl_cntrl_flush_ac
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL77+0x6>

00000068 <.LBB395>:
  68:	30046073          	csrsi	mstatus,8

0000006c <.LBE395>:
  6c:	4489                	li	s1,2

0000006e <.LBB397>:
  6e:	44b00937          	lui	s2,0x44b00

00000072 <.LBB408>:
  72:	44b089b7          	lui	s3,0x44b08

00000076 <.L59>:
  76:	e819                	bnez	s0,8c <.L63>
			76: R_RISCV_RVC_BRANCH	.L63

00000078 <.LBE421>:
  78:	4462                	lw	s0,24(sp)

0000007a <.LVL79>:
  7a:	40f2                	lw	ra,28(sp)
  7c:	44d2                	lw	s1,20(sp)
  7e:	4942                	lw	s2,16(sp)
  80:	49b2                	lw	s3,12(sp)
  82:	6105                	addi	sp,sp,32

00000084 <.LBB422>:
  84:	00000317          	auipc	t1,0x0
			84: R_RISCV_CALL	mm_bcn_transmit
			84: R_RISCV_RELAX	*ABS*
  88:	00030067          	jr	t1 # 84 <.LBB422>

0000008c <.L63>:
  8c:	05644783          	lbu	a5,86(s0) # 56 <.LBE393+0x6>
  90:	04979463          	bne	a5,s1,d8 <.L61>
			90: R_RISCV_BRANCH	.L61

00000094 <.LBB414>:
  94:	34144783          	lbu	a5,833(s0)
  98:	17fd                	addi	a5,a5,-1
  9a:	0ff7f793          	andi	a5,a5,255
  9e:	34f400a3          	sb	a5,833(s0)
  a2:	eb9d                	bnez	a5,d8 <.L61>
			a2: R_RISCV_RVC_BRANCH	.L61
  a4:	34044783          	lbu	a5,832(s0)
  a8:	8522                	mv	a0,s0
  aa:	34f400a3          	sb	a5,833(s0)
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	vif_mgmt_bcn_to_prog
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LBB414+0x1a>

000000b6 <.LBB411>:
  b6:	4034                	lw	a3,64(s0)

000000b8 <.LBB412>:
  b8:	12092703          	lw	a4,288(s2) # 44b00120 <.LASF415+0x44af9db2>

000000bc <.LBB413>:
  bc:	0409a783          	lw	a5,64(s3) # 44b08040 <.LASF415+0x44b01cd2>

000000c0 <.LBE413>:
  c0:	ce81                	beqz	a3,d8 <.L61>
			c0: R_RISCV_RVC_BRANCH	.L61
  c2:	33e45583          	lhu	a1,830(s0)
  c6:	0796                	slli	a5,a5,0x5

000000c8 <.LVL83>:
  c8:	97ba                	add	a5,a5,a4

000000ca <.LVL84>:
  ca:	05aa                	slli	a1,a1,0xa
  cc:	95be                	add	a1,a1,a5
  ce:	8522                	mv	a0,s0
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	chan_tbtt_switch_update
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL84+0x6>

000000d8 <.L61>:
  d8:	4000                	lw	s0,0(s0)

000000da <.LBE416>:
  da:	bf71                	j	76 <.L59>
			da: R_RISCV_RVC_JUMP	.L59

Disassembly of section .text.mm_sec_machwaddr_wr:

00000000 <mm_sec_machwaddr_wr>:
   0:	1141                	addi	sp,sp,-16
   2:	1b000713          	li	a4,432
   6:	c422                	sw	s0,8(sp)
   8:	00850413          	addi	s0,a0,8 # 8 <mm_sec_machwaddr_wr+0x8>
   c:	02e50533          	mul	a0,a0,a4

00000010 <.LVL88>:
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	sta_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	c606                	sw	ra,12(sp)
  1a:	0ff47413          	andi	s0,s0,255

0000001e <.LVL89>:
  1e:	4881                	li	a7,0
  20:	4805                	li	a6,1
  22:	4681                	li	a3,0
  24:	8622                	mv	a2,s0
  26:	953e                	add	a0,a0,a5
  28:	02055703          	lhu	a4,32(a0)
  2c:	01e55783          	lhu	a5,30(a0)
  30:	0742                	slli	a4,a4,0x10
  32:	8f5d                	or	a4,a4,a5

00000034 <.LBB438>:
  34:	44b007b7          	lui	a5,0x44b00
  38:	0ae7ae23          	sw	a4,188(a5) # 44b000bc <.LASF415+0x44af9d4e>

0000003c <.LBE438>:
  3c:	02255703          	lhu	a4,34(a0)

00000040 <.LBB440>:
  40:	4501                	li	a0,0

00000042 <.LBB443>:
  42:	0ce7a023          	sw	a4,192(a5)

00000046 <.LBB444>:
  46:	0a07a623          	sw	zero,172(a5)

0000004a <.LBB446>:
  4a:	0a07a823          	sw	zero,176(a5)

0000004e <.LBB448>:
  4e:	0a07aa23          	sw	zero,180(a5)

00000052 <.LBB450>:
  52:	872e                	mv	a4,a1

00000054 <.LBB453>:
  54:	0a07ac23          	sw	zero,184(a5)

00000058 <.LBE453>:
  58:	4585                	li	a1,1

0000005a <.LVL98>:
  5a:	4781                	li	a5,0
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	blmac_encr_cntrl_pack.constprop.8
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL98+0x2>

00000064 <.LBB454>:
  64:	44b00737          	lui	a4,0x44b00

00000068 <.L69>:
  68:	0c472783          	lw	a5,196(a4) # 44b000c4 <.LASF415+0x44af9d56>

0000006c <.LBE457>:
  6c:	00179693          	slli	a3,a5,0x1
  70:	fe06cce3          	bltz	a3,68 <.L69>
			70: R_RISCV_BRANCH	.L69
  74:	8522                	mv	a0,s0
  76:	40b2                	lw	ra,12(sp)
  78:	4422                	lw	s0,8(sp)

0000007a <.LVL101>:
  7a:	0141                	addi	sp,sp,16
  7c:	8082                	ret

Disassembly of section .text.mm_sec_keydump:

00000000 <mm_sec_keydump>:
   0:	711d                	addi	sp,sp,-96
   2:	ce86                	sw	ra,92(sp)
   4:	caa6                	sw	s1,84(sp)
   6:	c8ca                	sw	s2,80(sp)
   8:	c6ce                	sw	s3,76(sp)
   a:	c4d2                	sw	s4,72(sp)
   c:	c2d6                	sw	s5,68(sp)
   e:	c0da                	sw	s6,64(sp)
  10:	de5e                	sw	s7,60(sp)
  12:	dc62                	sw	s8,56(sp)
  14:	cca2                	sw	s0,88(sp)

00000016 <.LBB499>:
  16:	44b004b7          	lui	s1,0x44b00
  1a:	0d84a403          	lw	s0,216(s1) # 44b000d8 <.LASF415+0x44af9d6a>

0000001e <.LBB500>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC8
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC8
			22: R_RISCV_RELAX	*ABS*
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	puts
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBB500+0x8>

0000002e <.LVL104>:
  2e:	01045693          	srli	a3,s0,0x10
  32:	00845613          	srli	a2,s0,0x8
  36:	00000537          	lui	a0,0x0
			36: R_RISCV_HI20	.LC9
			36: R_RISCV_RELAX	*ABS*
  3a:	01845713          	srli	a4,s0,0x18
  3e:	0ff6f693          	andi	a3,a3,255
  42:	0ff67613          	andi	a2,a2,255
  46:	0ff47593          	andi	a1,s0,255
  4a:	00050513          	mv	a0,a0
			4a: R_RISCV_LO12_I	.LC9
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	printf
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL104+0x20>

00000056 <.LBE500>:
  56:	00000537          	lui	a0,0x0
			56: R_RISCV_HI20	.LC10
			56: R_RISCV_RELAX	*ABS*
  5a:	00050513          	mv	a0,a0
			5a: R_RISCV_LO12_I	.LC10
			5a: R_RISCV_RELAX	*ABS*
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	puts
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBE500+0x8>

00000066 <.LBB502>:
  66:	0d84a483          	lw	s1,216(s1)

0000006a <.LBE502>:
  6a:	00000537          	lui	a0,0x0
			6a: R_RISCV_HI20	.LC11
			6a: R_RISCV_RELAX	*ABS*
  6e:	00050513          	mv	a0,a0
			6e: R_RISCV_LO12_I	.LC11
			6e: R_RISCV_RELAX	*ABS*

00000072 <.LBB505>:
  72:	80a1                	srli	s1,s1,0x8

00000074 <.LBE505>:
  74:	00000937          	lui	s2,0x0
			74: R_RISCV_HI20	.LC6
			74: R_RISCV_RELAX	*ABS*
  78:	000009b7          	lui	s3,0x0
			78: R_RISCV_HI20	.LC7
			78: R_RISCV_RELAX	*ABS*
  7c:	0ff4f493          	andi	s1,s1,255

00000080 <.LVL108>:
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	puts
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL108>

00000088 <.LVL109>:
  88:	4c01                	li	s8,0
  8a:	00000a37          	lui	s4,0x0
			8a: R_RISCV_HI20	.LC12
			8a: R_RISCV_RELAX	*ABS*
  8e:	00090913          	mv	s2,s2
			8e: R_RISCV_LO12_I	.LC6
			8e: R_RISCV_RELAX	*ABS*
  92:	00098993          	mv	s3,s3
			92: R_RISCV_LO12_I	.LC7
			92: R_RISCV_RELAX	*ABS*
  96:	00000ab7          	lui	s5,0x0
			96: R_RISCV_HI20	.LC13
			96: R_RISCV_RELAX	*ABS*
  9a:	00000b37          	lui	s6,0x0
			9a: R_RISCV_HI20	.LC14
			9a: R_RISCV_RELAX	*ABS*
  9e:	00000bb7          	lui	s7,0x0
			9e: R_RISCV_HI20	.LC15
			9e: R_RISCV_RELAX	*ABS*

000000a2 <.L73>:
  a2:	129c4363          	blt	s8,s1,1c8 <.L76>
			a2: R_RISCV_BRANCH	.L76
  a6:	00000537          	lui	a0,0x0
			a6: R_RISCV_HI20	.LC18
			a6: R_RISCV_RELAX	*ABS*
  aa:	00050513          	mv	a0,a0
			aa: R_RISCV_LO12_I	.LC18
			aa: R_RISCV_RELAX	*ABS*
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	puts
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L73+0xc>

000000b6 <.LBB506>:
  b6:	44b00437          	lui	s0,0x44b00
  ba:	480c                	lw	a1,16(s0)

000000bc <.LBB508>:
  bc:	485c                	lw	a5,20(s0)

000000be <.LBE508>:
  be:	00000537          	lui	a0,0x0
			be: R_RISCV_HI20	.LC19
			be: R_RISCV_RELAX	*ABS*
  c2:	0105d693          	srli	a3,a1,0x10
  c6:	0087d813          	srli	a6,a5,0x8
  ca:	0085d613          	srli	a2,a1,0x8
  ce:	0185d713          	srli	a4,a1,0x18
  d2:	0ff87813          	andi	a6,a6,255
  d6:	0ff7f793          	andi	a5,a5,255

000000da <.LVL114>:
  da:	0ff6f693          	andi	a3,a3,255
  de:	0ff67613          	andi	a2,a2,255
  e2:	0ff5f593          	andi	a1,a1,255

000000e6 <.LVL115>:
  e6:	00050513          	mv	a0,a0
			e6: R_RISCV_LO12_I	.LC19
			e6: R_RISCV_RELAX	*ABS*
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	printf
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL115+0x4>

000000f2 <.LBB510>:
  f2:	4c0c                	lw	a1,24(s0)

000000f4 <.LBB512>:
  f4:	4c5c                	lw	a5,28(s0)

000000f6 <.LBE512>:
  f6:	00000937          	lui	s2,0x0
			f6: R_RISCV_HI20	.LC20
			f6: R_RISCV_RELAX	*ABS*
  fa:	0105d693          	srli	a3,a1,0x10
  fe:	0087d813          	srli	a6,a5,0x8
 102:	0085d613          	srli	a2,a1,0x8
 106:	0185d713          	srli	a4,a1,0x18
 10a:	0ff87813          	andi	a6,a6,255
 10e:	0ff7f793          	andi	a5,a5,255

00000112 <.LVL119>:
 112:	0ff6f693          	andi	a3,a3,255
 116:	0ff67613          	andi	a2,a2,255
 11a:	0ff5f593          	andi	a1,a1,255

0000011e <.LVL120>:
 11e:	00090513          	mv	a0,s2
			11e: R_RISCV_LO12_I	.LC20
			11e: R_RISCV_RELAX	*ABS*
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	printf
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.LVL120+0x4>

0000012a <.LVL121>:
 12a:	000004b7          	lui	s1,0x0
			12a: R_RISCV_HI20	.LC17
			12a: R_RISCV_RELAX	*ABS*

0000012e <.LVL122>:
 12e:	00048513          	mv	a0,s1
			12e: R_RISCV_LO12_I	.LC17
			12e: R_RISCV_RELAX	*ABS*
 132:	00000097          	auipc	ra,0x0
			132: R_RISCV_CALL	puts
			132: R_RISCV_RELAX	*ABS*
 136:	000080e7          	jalr	ra # 132 <.LVL122+0x4>

0000013a <.LBB514>:
 13a:	500c                	lw	a1,32(s0)

0000013c <.LBB516>:
 13c:	505c                	lw	a5,36(s0)

0000013e <.LBE516>:
 13e:	00000537          	lui	a0,0x0
			13e: R_RISCV_HI20	.LC21
			13e: R_RISCV_RELAX	*ABS*
 142:	0105d693          	srli	a3,a1,0x10
 146:	0087d813          	srli	a6,a5,0x8
 14a:	0085d613          	srli	a2,a1,0x8
 14e:	0185d713          	srli	a4,a1,0x18
 152:	0ff87813          	andi	a6,a6,255
 156:	0ff7f793          	andi	a5,a5,255

0000015a <.LVL126>:
 15a:	0ff6f693          	andi	a3,a3,255
 15e:	0ff67613          	andi	a2,a2,255
 162:	0ff5f593          	andi	a1,a1,255

00000166 <.LVL127>:
 166:	00050513          	mv	a0,a0
			166: R_RISCV_LO12_I	.LC21
			166: R_RISCV_RELAX	*ABS*
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	printf
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL127+0x4>

00000172 <.LBB518>:
 172:	540c                	lw	a1,40(s0)

00000174 <.LBB520>:
 174:	545c                	lw	a5,44(s0)

00000176 <.LBE520>:
 176:	00090513          	mv	a0,s2
			176: R_RISCV_LO12_I	.LC20
			176: R_RISCV_RELAX	*ABS*
 17a:	0105d693          	srli	a3,a1,0x10
 17e:	0087d813          	srli	a6,a5,0x8
 182:	0085d613          	srli	a2,a1,0x8
 186:	0185d713          	srli	a4,a1,0x18
 18a:	0ff87813          	andi	a6,a6,255
 18e:	0ff7f793          	andi	a5,a5,255

00000192 <.LVL131>:
 192:	0ff6f693          	andi	a3,a3,255
 196:	0ff67613          	andi	a2,a2,255
 19a:	0ff5f593          	andi	a1,a1,255

0000019e <.LVL132>:
 19e:	00000097          	auipc	ra,0x0
			19e: R_RISCV_CALL	printf
			19e: R_RISCV_RELAX	*ABS*
 1a2:	000080e7          	jalr	ra # 19e <.LVL132>

000001a6 <.LVL133>:
 1a6:	4466                	lw	s0,88(sp)
 1a8:	40f6                	lw	ra,92(sp)
 1aa:	4946                	lw	s2,80(sp)
 1ac:	49b6                	lw	s3,76(sp)
 1ae:	4a26                	lw	s4,72(sp)
 1b0:	4a96                	lw	s5,68(sp)
 1b2:	4b06                	lw	s6,64(sp)
 1b4:	5bf2                	lw	s7,60(sp)
 1b6:	5c62                	lw	s8,56(sp)

000001b8 <.LVL134>:
 1b8:	00048513          	mv	a0,s1
			1b8: R_RISCV_LO12_I	.LC17
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	44d6                	lw	s1,84(sp)
 1be:	6125                	addi	sp,sp,96
 1c0:	00000317          	auipc	t1,0x0
			1c0: R_RISCV_CALL	puts
			1c0: R_RISCV_RELAX	*ABS*
 1c4:	00030067          	jr	t1 # 1c0 <.LVL134+0x8>

000001c8 <.L76>:
 1c8:	010c1613          	slli	a2,s8,0x10
 1cc:	4781                	li	a5,0
 1ce:	4881                	li	a7,0
 1d0:	4801                	li	a6,0
 1d2:	4701                	li	a4,0
 1d4:	4681                	li	a3,0
 1d6:	8241                	srli	a2,a2,0x10
 1d8:	4581                	li	a1,0
 1da:	4505                	li	a0,1
 1dc:	00000097          	auipc	ra,0x0
			1dc: R_RISCV_CALL	blmac_encr_cntrl_pack.constprop.8
			1dc: R_RISCV_RELAX	*ABS*
 1e0:	000080e7          	jalr	ra # 1dc <.L76+0x14>

000001e4 <.LBB522>:
 1e4:	44b007b7          	lui	a5,0x44b00

000001e8 <.L74>:
 1e8:	0c47a703          	lw	a4,196(a5) # 44b000c4 <.LASF415+0x44af9d56>
 1ec:	0c478413          	addi	s0,a5,196

000001f0 <.LBE525>:
 1f0:	fe074ce3          	bltz	a4,1e8 <.L74>
			1f0: R_RISCV_BRANCH	.L74
 1f4:	0bc7a603          	lw	a2,188(a5)

000001f8 <.LVL138>:
 1f8:	0c07a803          	lw	a6,192(a5)

000001fc <.LVL139>:
 1fc:	85e2                	mv	a1,s8
 1fe:	01065713          	srli	a4,a2,0x10
 202:	00885893          	srli	a7,a6,0x8
 206:	00865693          	srli	a3,a2,0x8
 20a:	01865793          	srli	a5,a2,0x18
 20e:	0ff8f893          	andi	a7,a7,255
 212:	0ff87813          	andi	a6,a6,255

00000216 <.LVL140>:
 216:	0ff77713          	andi	a4,a4,255
 21a:	0ff6f693          	andi	a3,a3,255
 21e:	0ff67613          	andi	a2,a2,255

00000222 <.LVL141>:
 222:	000a0513          	mv	a0,s4
			222: R_RISCV_LO12_I	.LC12
			222: R_RISCV_RELAX	*ABS*
 226:	00000097          	auipc	ra,0x0
			226: R_RISCV_CALL	printf
			226: R_RISCV_RELAX	*ABS*
 22a:	000080e7          	jalr	ra # 226 <.LVL141+0x4>

0000022e <.LBB526>:
 22e:	401c                	lw	a5,0(s0)

00000230 <.LBE526>:
 230:	85ca                	mv	a1,s2
 232:	8b85                	andi	a5,a5,1
 234:	e391                	bnez	a5,238 <.L75>
			234: R_RISCV_RVC_BRANCH	.L75
 236:	85ce                	mv	a1,s3

00000238 <.L75>:
 238:	000a8513          	mv	a0,s5
			238: R_RISCV_LO12_I	.LC13
			238: R_RISCV_RELAX	*ABS*
 23c:	00000097          	auipc	ra,0x0
			23c: R_RISCV_CALL	printf
			23c: R_RISCV_RELAX	*ABS*
 240:	000080e7          	jalr	ra # 23c <.L75+0x4>

00000244 <.LBB528>:
 244:	44b00437          	lui	s0,0x44b00
 248:	0c442583          	lw	a1,196(s0) # 44b000c4 <.LASF415+0x44af9d56>

0000024c <.LBE528>:
 24c:	000b0513          	mv	a0,s6
			24c: R_RISCV_LO12_I	.LC14
			24c: R_RISCV_RELAX	*ABS*
 250:	0c05                	addi	s8,s8,1

00000252 <.LBB531>:
 252:	8191                	srli	a1,a1,0x4

00000254 <.LBE531>:
 254:	89bd                	andi	a1,a1,15
 256:	00000097          	auipc	ra,0x0
			256: R_RISCV_CALL	printf
			256: R_RISCV_RELAX	*ABS*
 25a:	000080e7          	jalr	ra # 256 <.LBE531+0x2>

0000025e <.LBB532>:
 25e:	0c442583          	lw	a1,196(s0)

00000262 <.LBE532>:
 262:	000b8513          	mv	a0,s7
			262: R_RISCV_LO12_I	.LC15
			262: R_RISCV_RELAX	*ABS*

00000266 <.LBB535>:
 266:	8185                	srli	a1,a1,0x1

00000268 <.LBE535>:
 268:	8985                	andi	a1,a1,1
 26a:	00000097          	auipc	ra,0x0
			26a: R_RISCV_CALL	printf
			26a: R_RISCV_RELAX	*ABS*
 26e:	000080e7          	jalr	ra # 26a <.LBE535+0x2>

00000272 <.LBB536>:
 272:	0ac42583          	lw	a1,172(s0)

00000276 <.LBB538>:
 276:	0b042783          	lw	a5,176(s0)

0000027a <.LBB540>:
 27a:	0b442703          	lw	a4,180(s0)

0000027e <.LBB542>:
 27e:	0b842503          	lw	a0,184(s0)

00000282 <.LBE542>:
 282:	0107d893          	srli	a7,a5,0x10
 286:	0087d813          	srli	a6,a5,0x8
 28a:	01855313          	srli	t1,a0,0x18
 28e:	d01a                	sw	t1,32(sp)
 290:	01055313          	srli	t1,a0,0x10
 294:	0ff37313          	andi	t1,t1,255
 298:	ce1a                	sw	t1,28(sp)
 29a:	00855313          	srli	t1,a0,0x8
 29e:	0ff57513          	andi	a0,a0,255
 2a2:	ca2a                	sw	a0,20(sp)
 2a4:	01875513          	srli	a0,a4,0x18
 2a8:	c82a                	sw	a0,16(sp)
 2aa:	01075513          	srli	a0,a4,0x10
 2ae:	0ff57513          	andi	a0,a0,255
 2b2:	c62a                	sw	a0,12(sp)
 2b4:	00875513          	srli	a0,a4,0x8
 2b8:	0ff57513          	andi	a0,a0,255
 2bc:	0ff77713          	andi	a4,a4,255
 2c0:	0ff37313          	andi	t1,t1,255
 2c4:	0105d693          	srli	a3,a1,0x10
 2c8:	0085d613          	srli	a2,a1,0x8
 2cc:	c42a                	sw	a0,8(sp)
 2ce:	c23a                	sw	a4,4(sp)
 2d0:	00000537          	lui	a0,0x0
			2d0: R_RISCV_HI20	.LC16
			2d0: R_RISCV_RELAX	*ABS*
 2d4:	0187d713          	srli	a4,a5,0x18
 2d8:	cc1a                	sw	t1,24(sp)
 2da:	c03a                	sw	a4,0(sp)
 2dc:	0ff8f893          	andi	a7,a7,255
 2e0:	0185d713          	srli	a4,a1,0x18
 2e4:	0ff87813          	andi	a6,a6,255
 2e8:	0ff7f793          	andi	a5,a5,255
 2ec:	0ff6f693          	andi	a3,a3,255
 2f0:	0ff67613          	andi	a2,a2,255
 2f4:	0ff5f593          	andi	a1,a1,255
 2f8:	00050513          	mv	a0,a0
			2f8: R_RISCV_LO12_I	.LC16
			2f8: R_RISCV_RELAX	*ABS*
 2fc:	00000097          	auipc	ra,0x0
			2fc: R_RISCV_CALL	printf
			2fc: R_RISCV_RELAX	*ABS*
 300:	000080e7          	jalr	ra # 2fc <.LBE542+0x7a>

00000304 <.LVL151>:
 304:	00000537          	lui	a0,0x0
			304: R_RISCV_HI20	.LC17
			304: R_RISCV_RELAX	*ABS*
 308:	00050513          	mv	a0,a0
			308: R_RISCV_LO12_I	.LC17
			308: R_RISCV_RELAX	*ABS*
 30c:	00000097          	auipc	ra,0x0
			30c: R_RISCV_CALL	puts
			30c: R_RISCV_RELAX	*ABS*
 310:	000080e7          	jalr	ra # 30c <.LVL151+0x8>

00000314 <.LVL152>:
 314:	b379                	j	a2 <.L73>
			314: R_RISCV_RVC_JUMP	.L73

Disassembly of section .text.mm_sec_machwkey_wr:

00000000 <mm_sec_machwkey_wr>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	00154903          	lbu	s2,1(a0) # 1 <mm_sec_machwkey_wr+0x1>

00000010 <.LVL154>:
  10:	0ff00793          	li	a5,255
  14:	84aa                	mv	s1,a0
  16:	02954983          	lbu	s3,41(a0)

0000001a <.LVL155>:
  1a:	0af91163          	bne	s2,a5,bc <.L81>
			1a: R_RISCV_BRANCH	.L81
  1e:	00054783          	lbu	a5,0(a0)
  22:	00299413          	slli	s0,s3,0x2

00000026 <.LBB563>:
  26:	577d                	li	a4,-1

00000028 <.LBE563>:
  28:	943e                	add	s0,s0,a5

0000002a <.LBB567>:
  2a:	44b007b7          	lui	a5,0x44b00

0000002e <.LBE567>:
  2e:	0ff47413          	andi	s0,s0,255

00000032 <.LBB568>:
  32:	0ae7ae23          	sw	a4,188(a5) # 44b000bc <.LASF415+0x44af9d4e>

00000036 <.LBB569>:
  36:	0ce7a023          	sw	a4,192(a5)

0000003a <.LBE569>:
  3a:	85a2                	mv	a1,s0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	vif_mgmt_add_key
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBE569+0x2>

00000044 <.L82>:
  44:	0284c683          	lbu	a3,40(s1) # 28 <.LBE563>
  48:	478d                	li	a5,3
  4a:	0cd7ec63          	bltu	a5,a3,122 <.L84>
			4a: R_RISCV_BRANCH	.L84
  4e:	00000737          	lui	a4,0x0
			4e: R_RISCV_HI20	.LANCHOR0
			4e: R_RISCV_RELAX	*ABS*
  52:	000007b7          	lui	a5,0x0
			52: R_RISCV_HI20	.LANCHOR1
			52: R_RISCV_RELAX	*ABS*
  56:	00070713          	mv	a4,a4
			56: R_RISCV_LO12_I	.LANCHOR0
			56: R_RISCV_RELAX	*ABS*
  5a:	00078793          	mv	a5,a5
			5a: R_RISCV_LO12_I	.LANCHOR1
			5a: R_RISCV_RELAX	*ABS*
  5e:	9736                	add	a4,a4,a3
  60:	97b6                	add	a5,a5,a3
  62:	00074883          	lbu	a7,0(a4) # 0 <mm_sec_machwkey_wr>
  66:	0007c683          	lbu	a3,0(a5) # 0 <mm_sec_machwkey_wr>

0000006a <.L85>:
  6a:	4498                	lw	a4,8(s1)

0000006c <.LBB571>:
  6c:	44b007b7          	lui	a5,0x44b00

00000070 <.LBE571>:
  70:	4801                	li	a6,0

00000072 <.LBB574>:
  72:	0ae7a623          	sw	a4,172(a5) # 44b000ac <.LASF415+0x44af9d3e>

00000076 <.LBE574>:
  76:	44d8                	lw	a4,12(s1)

00000078 <.LBB575>:
  78:	8622                	mv	a2,s0
  7a:	4585                	li	a1,1

0000007c <.LBB578>:
  7c:	0ae7a823          	sw	a4,176(a5)

00000080 <.LBE578>:
  80:	4898                	lw	a4,16(s1)

00000082 <.LBB579>:
  82:	4501                	li	a0,0

00000084 <.LBB582>:
  84:	0ae7aa23          	sw	a4,180(a5)

00000088 <.LBE582>:
  88:	48d8                	lw	a4,20(s1)

0000008a <.LBB583>:
  8a:	0ae7ac23          	sw	a4,184(a5)

0000008e <.LBE583>:
  8e:	02a4c783          	lbu	a5,42(s1)
  92:	874e                	mv	a4,s3
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	blmac_encr_cntrl_pack.constprop.8
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LBE583+0x6>

0000009c <.LBB585>:
  9c:	44b00737          	lui	a4,0x44b00

000000a0 <.L86>:
  a0:	0c472783          	lw	a5,196(a4) # 44b000c4 <.LASF415+0x44af9d56>

000000a4 <.LBE588>:
  a4:	00179693          	slli	a3,a5,0x1
  a8:	fe06cce3          	bltz	a3,a0 <.L86>
			a8: R_RISCV_BRANCH	.L86
  ac:	8522                	mv	a0,s0
  ae:	40f2                	lw	ra,28(sp)
  b0:	4462                	lw	s0,24(sp)

000000b2 <.LVL171>:
  b2:	44d2                	lw	s1,20(sp)

000000b4 <.LVL172>:
  b4:	4942                	lw	s2,16(sp)
  b6:	49b2                	lw	s3,12(sp)

000000b8 <.LVL173>:
  b8:	6105                	addi	sp,sp,32
  ba:	8082                	ret

000000bc <.L81>:
  bc:	47ad                	li	a5,11
  be:	0327f063          	bgeu	a5,s2,de <.L83>
			be: R_RISCV_BRANCH	.L83
  c2:	000005b7          	lui	a1,0x0
			c2: R_RISCV_HI20	.LC0
			c2: R_RISCV_RELAX	*ABS*
  c6:	00000537          	lui	a0,0x0
			c6: R_RISCV_HI20	.LC22
			c6: R_RISCV_RELAX	*ABS*
  ca:	3e400613          	li	a2,996
  ce:	00058593          	mv	a1,a1
			ce: R_RISCV_LO12_I	.LC0
			ce: R_RISCV_RELAX	*ABS*
  d2:	00050513          	mv	a0,a0
			d2: R_RISCV_LO12_I	.LC22
			d2: R_RISCV_RELAX	*ABS*
  d6:	00000097          	auipc	ra,0x0
			d6: R_RISCV_CALL	assert_err
			d6: R_RISCV_RELAX	*ABS*
  da:	000080e7          	jalr	ra # d6 <.L81+0x1a>

000000de <.L83>:
  de:	00890413          	addi	s0,s2,8 # 8 <mm_sec_machwkey_wr+0x8>
  e2:	0ff47413          	andi	s0,s0,255

000000e6 <.LVL176>:
  e6:	85a2                	mv	a1,s0
  e8:	8526                	mv	a0,s1
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	sta_mgmt_add_key
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL176+0x4>

000000f2 <.LVL177>:
  f2:	1b000713          	li	a4,432
  f6:	02e90933          	mul	s2,s2,a4

000000fa <.LVL178>:
  fa:	000007b7          	lui	a5,0x0
			fa: R_RISCV_HI20	sta_info_tab
			fa: R_RISCV_RELAX	*ABS*
  fe:	00078793          	mv	a5,a5
			fe: R_RISCV_LO12_I	sta_info_tab
			fe: R_RISCV_RELAX	*ABS*
 102:	97ca                	add	a5,a5,s2
 104:	0207d703          	lhu	a4,32(a5) # 20 <.LVL155+0x6>
 108:	01e7d683          	lhu	a3,30(a5)
 10c:	0742                	slli	a4,a4,0x10
 10e:	8f55                	or	a4,a4,a3

00000110 <.LBB590>:
 110:	44b006b7          	lui	a3,0x44b00
 114:	0ae6ae23          	sw	a4,188(a3) # 44b000bc <.LASF415+0x44af9d4e>

00000118 <.LBE590>:
 118:	0227d783          	lhu	a5,34(a5)

0000011c <.LBB592>:
 11c:	0cf6a023          	sw	a5,192(a3)
 120:	b715                	j	44 <.L82>
			120: R_RISCV_RVC_JUMP	.L82

00000122 <.L84>:
 122:	000005b7          	lui	a1,0x0
			122: R_RISCV_HI20	.LC0
			122: R_RISCV_RELAX	*ABS*
 126:	00000537          	lui	a0,0x0
			126: R_RISCV_HI20	.LC23
			126: R_RISCV_RELAX	*ABS*
 12a:	42900613          	li	a2,1065
 12e:	00058593          	mv	a1,a1
			12e: R_RISCV_LO12_I	.LC0
			12e: R_RISCV_RELAX	*ABS*
 132:	00050513          	mv	a0,a0
			132: R_RISCV_LO12_I	.LC23
			132: R_RISCV_RELAX	*ABS*
 136:	00000097          	auipc	ra,0x0
			136: R_RISCV_CALL	assert_err
			136: R_RISCV_RELAX	*ABS*
 13a:	000080e7          	jalr	ra # 136 <.L84+0x14>

0000013e <.LVL183>:
 13e:	4681                	li	a3,0
 140:	4885                	li	a7,1
 142:	b725                	j	6a <.L85>
			142: R_RISCV_RVC_JUMP	.L85

Disassembly of section .text.mm_sec_machwkey_del:

00000000 <mm_sec_machwkey_del>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	479d                	li	a5,7
   8:	842a                	mv	s0,a0
   a:	08a7f363          	bgeu	a5,a0,90 <.L90>
			a: R_RISCV_BRANCH	.L90

0000000e <.LBB613>:
   e:	ff850793          	addi	a5,a0,-8 # fffffff8 <.LASF415+0xffff9c8a>
  12:	1b000713          	li	a4,432
  16:	0ff7f793          	andi	a5,a5,255

0000001a <.LVL185>:
  1a:	02e787b3          	mul	a5,a5,a4

0000001e <.LVL186>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	sta_info_tab
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL187>:
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	sta_info_tab
			22: R_RISCV_RELAX	*ABS*
  26:	953e                	add	a0,a0,a5
  28:	02055783          	lhu	a5,32(a0) # 20 <.LVL186+0x2>
  2c:	01e55703          	lhu	a4,30(a0)
  30:	07c2                	slli	a5,a5,0x10
  32:	8fd9                	or	a5,a5,a4

00000034 <.LBB614>:
  34:	44b00737          	lui	a4,0x44b00
  38:	0af72e23          	sw	a5,188(a4) # 44b000bc <.LASF415+0x44af9d4e>

0000003c <.LBE614>:
  3c:	02255783          	lhu	a5,34(a0)

00000040 <.LBB616>:
  40:	0cf72023          	sw	a5,192(a4)

00000044 <.LBE616>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	sta_mgmt_del_key
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LBE616>

0000004c <.L91>:
  4c:	44b007b7          	lui	a5,0x44b00
  50:	0a07a623          	sw	zero,172(a5) # 44b000ac <.LASF415+0x44af9d3e>

00000054 <.LBB620>:
  54:	0a07a823          	sw	zero,176(a5)

00000058 <.LBB622>:
  58:	0a07aa23          	sw	zero,180(a5)

0000005c <.LBB624>:
  5c:	0a07ac23          	sw	zero,184(a5)

00000060 <.LBE624>:
  60:	4701                	li	a4,0
  62:	4881                	li	a7,0
  64:	4801                	li	a6,0
  66:	4781                	li	a5,0
  68:	4681                	li	a3,0
  6a:	8622                	mv	a2,s0
  6c:	4585                	li	a1,1
  6e:	4501                	li	a0,0
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	blmac_encr_cntrl_pack.constprop.8
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LBE624+0x10>

00000078 <.LBB626>:
  78:	44b00737          	lui	a4,0x44b00

0000007c <.L92>:
  7c:	0c472783          	lw	a5,196(a4) # 44b000c4 <.LASF415+0x44af9d56>

00000080 <.LBE629>:
  80:	00179693          	slli	a3,a5,0x1
  84:	fe06cce3          	bltz	a3,7c <.L92>
			84: R_RISCV_BRANCH	.L92
  88:	40b2                	lw	ra,12(sp)
  8a:	4422                	lw	s0,8(sp)
  8c:	0141                	addi	sp,sp,16
  8e:	8082                	ret

00000090 <.L90>:
  90:	44b007b7          	lui	a5,0x44b00
  94:	577d                	li	a4,-1
  96:	0ae7ae23          	sw	a4,188(a5) # 44b000bc <.LASF415+0x44af9d4e>

0000009a <.LBB632>:
  9a:	0ce7a023          	sw	a4,192(a5)

0000009e <.LBE632>:
  9e:	40255793          	srai	a5,a0,0x2
  a2:	5d800513          	li	a0,1496

000000a6 <.LVL202>:
  a6:	02a787b3          	mul	a5,a5,a0
  aa:	00000537          	lui	a0,0x0
			aa: R_RISCV_HI20	vif_info_tab
			aa: R_RISCV_RELAX	*ABS*
  ae:	00050513          	mv	a0,a0
			ae: R_RISCV_LO12_I	vif_info_tab
			ae: R_RISCV_RELAX	*ABS*
  b2:	00347593          	andi	a1,s0,3
  b6:	953e                	add	a0,a0,a5
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	vif_mgmt_del_key
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL202+0x12>

000000c0 <.LVL203>:
  c0:	b771                	j	4c <.L91>
			c0: R_RISCV_RVC_JUMP	.L91

Disassembly of section .text.mm_sec_machwaddr_del:

00000000 <mm_sec_machwaddr_del>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB651>:
   4:	44b007b7          	lui	a5,0x44b00
   8:	577d                	li	a4,-1
   a:	0ae7ae23          	sw	a4,188(a5) # 44b000bc <.LASF415+0x44af9d4e>

0000000e <.LBB652>:
   e:	0ce7a023          	sw	a4,192(a5)

00000012 <.LBB654>:
  12:	0a07a623          	sw	zero,172(a5)

00000016 <.LBB656>:
  16:	0a07a823          	sw	zero,176(a5)

0000001a <.LBB658>:
  1a:	0a07aa23          	sw	zero,180(a5)

0000001e <.LBB660>:
  1e:	00850613          	addi	a2,a0,8 # 8 <.LBB651+0x4>

00000022 <.LBB663>:
  22:	0a07ac23          	sw	zero,184(a5)

00000026 <.LBE663>:
  26:	4701                	li	a4,0
  28:	4881                	li	a7,0
  2a:	4801                	li	a6,0
  2c:	4781                	li	a5,0
  2e:	4681                	li	a3,0
  30:	0ff67613          	andi	a2,a2,255
  34:	4585                	li	a1,1
  36:	4501                	li	a0,0

00000038 <.LVL211>:
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	blmac_encr_cntrl_pack.constprop.8
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL211>

00000040 <.LBB664>:
  40:	44b00737          	lui	a4,0x44b00

00000044 <.L96>:
  44:	0c472783          	lw	a5,196(a4) # 44b000c4 <.LASF415+0x44af9d56>

00000048 <.LBE667>:
  48:	00179693          	slli	a3,a5,0x1
  4c:	fe06cce3          	bltz	a3,44 <.L96>
			4c: R_RISCV_BRANCH	.L96
  50:	40b2                	lw	ra,12(sp)
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.mm_hw_idle_evt:

00000000 <mm_hw_idle_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	00800537          	lui	a0,0x800

00000006 <.LVL215>:
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ke_evt_clear
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL215+0x2>

00000010 <.LVL216>:
  10:	40b2                	lw	ra,12(sp)
  12:	4581                	li	a1,0
  14:	4501                	li	a0,0
  16:	0141                	addi	sp,sp,16
  18:	00000317          	auipc	t1,0x0
			18: R_RISCV_CALL	ke_state_set
			18: R_RISCV_RELAX	*ABS*
  1c:	00030067          	jr	t1 # 18 <.LVL216+0x8>

Disassembly of section .text.mm_hw_info_set:

00000000 <mm_hw_info_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	4501                	li	a0,0

00000008 <.LVL219>:
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	blmac_ap_setf
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL219+0x2>

00000012 <.LBB686>:
  12:	44b007b7          	lui	a5,0x44b00
  16:	47f8                	lw	a4,76(a5)
  18:	00176713          	ori	a4,a4,1
  1c:	c7f8                	sw	a4,76(a5)

0000001e <.LBB688>:
  1e:	10000713          	li	a4,256
  22:	cfd8                	sw	a4,28(a5)

00000024 <.LBB690>:
  24:	44b08737          	lui	a4,0x44b08
  28:	0a072223          	sw	zero,164(a4) # 44b080a4 <.LASF415+0x44b01d36>

0000002c <.LBB692>:
  2c:	0a072423          	sw	zero,168(a4)

00000030 <.LBE692>:
  30:	00144683          	lbu	a3,1(s0)
  34:	00044703          	lbu	a4,0(s0)
  38:	06a2                	slli	a3,a3,0x8
  3a:	8ed9                	or	a3,a3,a4
  3c:	00244703          	lbu	a4,2(s0)
  40:	0742                	slli	a4,a4,0x10
  42:	8ed9                	or	a3,a3,a4
  44:	00344703          	lbu	a4,3(s0)
  48:	0762                	slli	a4,a4,0x18
  4a:	8f55                	or	a4,a4,a3

0000004c <.LBB694>:
  4c:	cb98                	sw	a4,16(a5)

0000004e <.LBE694>:
  4e:	00544703          	lbu	a4,5(s0)
  52:	00444683          	lbu	a3,4(s0)
  56:	0722                	slli	a4,a4,0x8
  58:	8f55                	or	a4,a4,a3

0000005a <.LBB696>:
  5a:	cbd8                	sw	a4,20(a5)

0000005c <.LBB698>:
  5c:	47f8                	lw	a4,76(a5)

0000005e <.LBE698>:
  5e:	8ff77713          	andi	a4,a4,-1793

00000062 <.LBB700>:
  62:	c7f8                	sw	a4,76(a5)

00000064 <.LBB702>:
  64:	4422                	lw	s0,8(sp)

00000066 <.LBB707>:
  66:	350387b7          	lui	a5,0x35038

0000006a <.LBE707>:
  6a:	40b2                	lw	ra,12(sp)

0000006c <.LBB708>:
  6c:	00000737          	lui	a4,0x0
			6c: R_RISCV_HI20	mm_env
			6c: R_RISCV_RELAX	*ABS*
  70:	58c78793          	addi	a5,a5,1420 # 3503858c <.LASF415+0x3503221e>
  74:	00f72023          	sw	a5,0(a4) # 0 <mm_hw_info_set>
			74: R_RISCV_LO12_S	mm_env
			74: R_RISCV_RELAX	*ABS*

00000078 <.LBE708>:
  78:	0141                	addi	sp,sp,16

0000007a <.LBB709>:
  7a:	00000317          	auipc	t1,0x0
			7a: R_RISCV_CALL	mm_rx_filter_set
			7a: R_RISCV_RELAX	*ABS*
  7e:	00030067          	jr	t1 # 7a <.LBB709>

Disassembly of section .text.mm_hw_ap_info_set:

00000000 <mm_hw_ap_info_set>:
   0:	1141                	addi	sp,sp,-16
   2:	4505                	li	a0,1
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	blmac_ap_setf
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <mm_hw_ap_info_set+0x6>

0000000e <.LBB710>:
   e:	3507a7b7          	lui	a5,0x3507a
  12:	00000737          	lui	a4,0x0
			12: R_RISCV_HI20	mm_env
			12: R_RISCV_RELAX	*ABS*
  16:	58c78793          	addi	a5,a5,1420 # 3507a58c <.LASF415+0x3507421e>
  1a:	00f72023          	sw	a5,0(a4) # 0 <mm_hw_ap_info_set>
			1a: R_RISCV_LO12_S	mm_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	mm_rx_filter_set
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LBB710+0x10>

00000026 <.LBB712>:
  26:	000407b7          	lui	a5,0x40
  2a:	44b08737          	lui	a4,0x44b08
  2e:	0785                	addi	a5,a5,1
  30:	db3c                	sw	a5,112(a4)

00000032 <.LBB714>:
  32:	5b74                	lw	a3,116(a4)

00000034 <.LBE714>:
  34:	8fd5                	or	a5,a5,a3

00000036 <.LBB716>:
  36:	db7c                	sw	a5,116(a4)

00000038 <.LBE716>:
  38:	40b2                	lw	ra,12(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

Disassembly of section .text.mm_hw_ap_info_reset:

00000000 <mm_hw_ap_info_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	blmac_ap_setf
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <mm_hw_ap_info_reset+0x6>

0000000e <.LBB718>:
   e:	350387b7          	lui	a5,0x35038
  12:	00000737          	lui	a4,0x0
			12: R_RISCV_HI20	mm_env
			12: R_RISCV_RELAX	*ABS*
  16:	58c78793          	addi	a5,a5,1420 # 3503858c <.LASF415+0x3503221e>
  1a:	00f72023          	sw	a5,0(a4) # 0 <mm_hw_ap_info_reset>
			1a: R_RISCV_LO12_S	mm_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	mm_rx_filter_set
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LBB718+0x10>

00000026 <.LBB720>:
  26:	00040737          	lui	a4,0x40
  2a:	44b087b7          	lui	a5,0x44b08
  2e:	0705                	addi	a4,a4,1
  30:	dbb8                	sw	a4,112(a5)

00000032 <.LBB722>:
  32:	5bf8                	lw	a4,116(a5)

00000034 <.LBE722>:
  34:	fffc06b7          	lui	a3,0xfffc0
  38:	16f9                	addi	a3,a3,-2
  3a:	8f75                	and	a4,a4,a3

0000003c <.LBB724>:
  3c:	dbf8                	sw	a4,116(a5)

0000003e <.LBE724>:
  3e:	40b2                	lw	ra,12(sp)
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

Disassembly of section .text.mm_back_to_host_idle:

00000000 <mm_back_to_host_idle>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <mm_back_to_host_idle+0x6>

0000000e <.LVL243>:
   e:	478d                	li	a5,3
  10:	02f50063          	beq	a0,a5,30 <.L108>
			10: R_RISCV_BRANCH	.L108
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC24
			18: R_RISCV_RELAX	*ABS*
  1c:	52a00613          	li	a2,1322
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC24
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL243+0x1a>

00000030 <.L108>:
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	mm_env+0x22
			30: R_RISCV_RELAX	*ABS*+0x22
  34:	0227c783          	lbu	a5,34(a5) # 22 <.LVL243+0x14>
			34: R_RISCV_LO12_I	mm_env+0x22
			34: R_RISCV_RELAX	*ABS*+0x22
  38:	e799                	bnez	a5,46 <.L109>
			38: R_RISCV_RVC_BRANCH	.L109
  3a:	40b2                	lw	ra,12(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	00000317          	auipc	t1,0x0
			3e: R_RISCV_CALL	mm_active
			3e: R_RISCV_RELAX	*ABS*
  42:	00030067          	jr	t1 # 3e <.L108+0xe>

00000046 <.L109>:
  46:	40b2                	lw	ra,12(sp)
  48:	4581                	li	a1,0
  4a:	4501                	li	a0,0
  4c:	0141                	addi	sp,sp,16
  4e:	00000317          	auipc	t1,0x0
			4e: R_RISCV_CALL	ke_state_set
			4e: R_RISCV_RELAX	*ABS*
  52:	00030067          	jr	t1 # 4e <.L109+0x8>

Disassembly of section .text.mm_force_idle_req:

00000000 <mm_force_idle_req>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB729>:
   4:	30047073          	csrci	mstatus,8

00000008 <.LBE729>:
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	hal_machw_reset
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LBE729>

00000010 <.LVL247>:
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	rxl_reset
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL247>

00000018 <.LVL248>:
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	txl_reset
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL248>

00000020 <.LVL249>:
  20:	458d                	li	a1,3
  22:	4501                	li	a0,0
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ke_state_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL249+0x4>

0000002c <.LVL250>:
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	mm_env+0x12
			2c: R_RISCV_RELAX	*ABS*+0x12
  30:	00079923          	sh	zero,18(a5) # 12 <.LVL247+0x2>
			30: R_RISCV_LO12_S	mm_env+0x12
			30: R_RISCV_RELAX	*ABS*+0x12

00000034 <.LBB730>:
  34:	30046073          	csrsi	mstatus,8

00000038 <.LBE730>:
  38:	40b2                	lw	ra,12(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

Disassembly of section .text.mm_sta_add:

00000000 <mm_sta_add>:
   0:	711d                	addi	sp,sp,-96
   2:	cca2                	sw	s0,88(sp)
   4:	c8ca                	sw	s2,80(sp)
   6:	c6ce                	sw	s3,76(sp)
   8:	de5e                	sw	s7,60(sp)
   a:	ce86                	sw	ra,92(sp)
   c:	caa6                	sw	s1,84(sp)
   e:	c4d2                	sw	s4,72(sp)
  10:	c2d6                	sw	s5,68(sp)
  12:	c0da                	sw	s6,64(sp)
  14:	dc62                	sw	s8,56(sp)
  16:	8baa                	mv	s7,a0
  18:	89ae                	mv	s3,a1
  1a:	8432                	mv	s0,a2
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	sta_mgmt_register
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <mm_sta_add+0x1c>

00000024 <.LVL252>:
  24:	892a                	mv	s2,a0

00000026 <.LVL253>:
  26:	e539                	bnez	a0,74 <.L114>
			26: R_RISCV_RVC_BRANCH	.L114

00000028 <.LBB736>:
  28:	011bc483          	lbu	s1,17(s7) # 11 <mm_sta_add+0x11>
  2c:	0009c503          	lbu	a0,0(s3) # 0 <mm_sta_add>

00000030 <.LVL255>:
  30:	85a6                	mv	a1,s1
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	mm_sec_machwaddr_wr
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL255+0x2>

0000003a <.LVL256>:
  3a:	00a40023          	sb	a0,0(s0)
  3e:	5d800513          	li	a0,1496
  42:	02a48533          	mul	a0,s1,a0
  46:	00000437          	lui	s0,0x0
			46: R_RISCV_HI20	vif_info_tab
			46: R_RISCV_RELAX	*ABS*

0000004a <.LVL257>:
  4a:	00040793          	mv	a5,s0
			4a: R_RISCV_LO12_I	vif_info_tab
			4a: R_RISCV_RELAX	*ABS*
  4e:	00040413          	mv	s0,s0
			4e: R_RISCV_LO12_I	vif_info_tab
			4e: R_RISCV_RELAX	*ABS*
  52:	97aa                	add	a5,a5,a0
  54:	0567c703          	lbu	a4,86(a5)
  58:	ef11                	bnez	a4,74 <.L114>
			58: R_RISCV_RVC_BRANCH	.L114
  5a:	3e87c703          	lbu	a4,1000(a5)
  5e:	eb05                	bnez	a4,8e <.L116>
			5e: R_RISCV_RVC_BRANCH	.L116

00000060 <.L133>:
  60:	5d800793          	li	a5,1496
  64:	02f484b3          	mul	s1,s1,a5
  68:	0009c703          	lbu	a4,0(s3)
  6c:	4901                	li	s2,0
  6e:	9426                	add	s0,s0,s1
  70:	06e40023          	sb	a4,96(s0) # 60 <.L133>

00000074 <.L114>:
  74:	40f6                	lw	ra,92(sp)
  76:	4466                	lw	s0,88(sp)
  78:	854a                	mv	a0,s2
  7a:	44d6                	lw	s1,84(sp)
  7c:	4946                	lw	s2,80(sp)
  7e:	49b6                	lw	s3,76(sp)

00000080 <.LVL260>:
  80:	4a26                	lw	s4,72(sp)
  82:	4a96                	lw	s5,68(sp)
  84:	4b06                	lw	s6,64(sp)
  86:	5bf2                	lw	s7,60(sp)
  88:	5c62                	lw	s8,56(sp)
  8a:	6125                	addi	sp,sp,96
  8c:	8082                	ret

0000008e <.L116>:
  8e:	0009c683          	lbu	a3,0(s3)

00000092 <.LBB744>:
  92:	00000a37          	lui	s4,0x0
			92: R_RISCV_HI20	sta_conn_info
			92: R_RISCV_RELAX	*ABS*
  96:	000a0713          	mv	a4,s4
			96: R_RISCV_LO12_I	sta_conn_info
			96: R_RISCV_RELAX	*ABS*
  9a:	00d700a3          	sb	a3,1(a4) # 40001 <.LASF415+0x39c93>
  9e:	3e87a703          	lw	a4,1000(a5)
  a2:	66cd                	lui	a3,0x13
  a4:	80068693          	addi	a3,a3,-2048 # 12800 <.LASF415+0xc492>
  a8:	8f75                	and	a4,a4,a3
  aa:	cb35                	beqz	a4,11e <.L117>
			aa: R_RISCV_RVC_BRANCH	.L117
  ac:	00000737          	lui	a4,0x0
			ac: R_RISCV_HI20	sm_env
			ac: R_RISCV_RELAX	*ABS*
  b0:	00072603          	lw	a2,0(a4) # 0 <mm_sta_add>
			b0: R_RISCV_LO12_I	sm_env
			b0: R_RISCV_RELAX	*ABS*
  b4:	37e7c583          	lbu	a1,894(a5)
  b8:	37f50513          	addi	a0,a0,895 # 37f <.LASF1171+0x18>
  bc:	18164783          	lbu	a5,385(a2)
  c0:	9522                	add	a0,a0,s0
  c2:	cbb9                	beqz	a5,118 <.L118>
			c2: R_RISCV_RVC_BRANCH	.L118
  c4:	18160613          	addi	a2,a2,385

000000c8 <.L151>:
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	set_psk
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.L151>

000000d0 <.L119>:
  d0:	5d800613          	li	a2,1496
  d4:	02c48633          	mul	a2,s1,a2
  d8:	6749                	lui	a4,0x12
  da:	00c407b3          	add	a5,s0,a2
  de:	3e87a683          	lw	a3,1000(a5)
  e2:	8f75                	and	a4,a4,a3
  e4:	18070263          	beqz	a4,268 <.L131>
			e4: R_RISCV_BRANCH	.L131
  e8:	3ef7c703          	lbu	a4,1007(a5)
  ec:	3ee60693          	addi	a3,a2,1006
  f0:	3ed60613          	addi	a2,a2,1005
  f4:	96a2                	add	a3,a3,s0
  f6:	9622                	add	a2,a2,s0
  f8:	4591                	li	a1,4

000000fa <.L153>:
  fa:	000a0513          	mv	a0,s4
			fa: R_RISCV_LO12_I	sta_conn_info
			fa: R_RISCV_RELAX	*ABS*
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	supplicantEnable
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.L153+0x4>

00000106 <.L132>:
 106:	5d800793          	li	a5,1496
 10a:	02f487b3          	mul	a5,s1,a5
 10e:	97a2                	add	a5,a5,s0
 110:	0567c783          	lbu	a5,86(a5)
 114:	d7b1                	beqz	a5,60 <.L133>
			114: R_RISCV_RVC_BRANCH	.L133
 116:	bfb9                	j	74 <.L114>
			116: R_RISCV_RVC_JUMP	.L114

00000118 <.L118>:
 118:	14160613          	addi	a2,a2,321
 11c:	b775                	j	c8 <.L151>
			11c: R_RISCV_RVC_JUMP	.L151

0000011e <.L117>:
 11e:	3e97c783          	lbu	a5,1001(a5)
 122:	8b89                	andi	a5,a5,2
 124:	d7d5                	beqz	a5,d0 <.L119>
			124: R_RISCV_RVC_BRANCH	.L119

00000126 <.LBB737>:
 126:	00000ab7          	lui	s5,0x0
			126: R_RISCV_HI20	sm_env
			126: R_RISCV_RELAX	*ABS*
 12a:	000a8b13          	mv	s6,s5
			12a: R_RISCV_LO12_I	sm_env
			12a: R_RISCV_RELAX	*ABS*
 12e:	000b2503          	lw	a0,0(s6) # 0 <mm_sta_add>
 132:	000a8a93          	mv	s5,s5
			132: R_RISCV_LO12_I	sm_env
			132: R_RISCV_RELAX	*ABS*
 136:	14150513          	addi	a0,a0,321
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	strlen
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LBB737+0x14>

00000142 <.LVL265>:
 142:	000b2603          	lw	a2,0(s6)
 146:	85aa                	mv	a1,a0
 148:	00000537          	lui	a0,0x0
			148: R_RISCV_HI20	.LC25
			148: R_RISCV_RELAX	*ABS*
 14c:	14160613          	addi	a2,a2,321
 150:	00050513          	mv	a0,a0
			150: R_RISCV_LO12_I	.LC25
			150: R_RISCV_RELAX	*ABS*
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	printf
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LVL265+0x12>

0000015c <.LVL266>:
 15c:	02c00613          	li	a2,44
 160:	4581                	li	a1,0
 162:	0048                	addi	a0,sp,4
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	memset
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.LVL266+0x8>

0000016c <.LVL267>:
 16c:	011bc783          	lbu	a5,17(s7)
 170:	000b2503          	lw	a0,0(s6)
 174:	02f106a3          	sb	a5,45(sp)
 178:	14150513          	addi	a0,a0,321 # 141 <.LBB737+0x1b>
 17c:	f0000793          	li	a5,-256
 180:	00f11223          	sh	a5,4(sp)
 184:	00000097          	auipc	ra,0x0
			184: R_RISCV_CALL	strlen
			184: R_RISCV_RELAX	*ABS*
 188:	000080e7          	jalr	ra # 184 <.LVL267+0x18>

0000018c <.LVL268>:
 18c:	0ff57793          	andi	a5,a0,255
 190:	00f10423          	sb	a5,8(sp)
 194:	4715                	li	a4,5
 196:	00e78963          	beq	a5,a4,1a8 <.L120>
			196: R_RISCV_BRANCH	.L120
 19a:	4735                	li	a4,13
 19c:	02e79d63          	bne	a5,a4,1d6 <.L149>
			19c: R_RISCV_BRANCH	.L149
 1a0:	478d                	li	a5,3
 1a2:	02f10623          	sb	a5,44(sp)
 1a6:	a019                	j	1ac <.L123>
			1a6: R_RISCV_RVC_JUMP	.L123

000001a8 <.L120>:
 1a8:	02010623          	sb	zero,44(sp)

000001ac <.L123>:
 1ac:	000aa583          	lw	a1,0(s5) # 0 <mm_sta_add>
 1b0:	0ff57613          	andi	a2,a0,255
 1b4:	0068                	addi	a0,sp,12
 1b6:	14158593          	addi	a1,a1,321 # 141 <.LBB737+0x1b>
 1ba:	00000097          	auipc	ra,0x0
			1ba: R_RISCV_CALL	memcpy
			1ba: R_RISCV_RELAX	*ABS*
 1be:	000080e7          	jalr	ra # 1ba <.L123+0xe>

000001c2 <.L152>:
 1c2:	0048                	addi	a0,sp,4
 1c4:	00000097          	auipc	ra,0x0
			1c4: R_RISCV_CALL	mm_sec_machwkey_wr
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	000080e7          	jalr	ra # 1c4 <.L152+0x2>

000001cc <.LVL270>:
 1cc:	000007b7          	lui	a5,0x0
			1cc: R_RISCV_HI20	.LANCHOR2
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	00a78023          	sb	a0,0(a5) # 0 <mm_sta_add>
			1d0: R_RISCV_LO12_S	.LANCHOR2
			1d0: R_RISCV_RELAX	*ABS*
 1d4:	bdf5                	j	d0 <.L119>
			1d4: R_RISCV_RVC_JUMP	.L119

000001d6 <.L149>:
 1d6:	4729                	li	a4,10
 1d8:	02e78763          	beq	a5,a4,206 <.L135>
			1d8: R_RISCV_BRANCH	.L135
 1dc:	4769                	li	a4,26
 1de:	06e79563          	bne	a5,a4,248 <.L126>
			1de: R_RISCV_BRANCH	.L126
 1e2:	478d                	li	a5,3

000001e4 <.L125>:
 1e4:	02f10623          	sb	a5,44(sp)

000001e8 <.LBB738>:
 1e8:	00157793          	andi	a5,a0,1

000001ec <.LBE738>:
 1ec:	0ff57c13          	andi	s8,a0,255

000001f0 <.LBB742>:
 1f0:	c399                	beqz	a5,1f6 <.L127>
			1f0: R_RISCV_RVC_BRANCH	.L127
 1f2:	0fe57c13          	andi	s8,a0,254

000001f6 <.L127>:
 1f6:	000c1a63          	bnez	s8,20a <.L128>
			1f6: R_RISCV_BRANCH	.L128

000001fa <.L130>:
 1fa:	00814783          	lbu	a5,8(sp)
 1fe:	8385                	srli	a5,a5,0x1
 200:	00f10423          	sb	a5,8(sp)
 204:	bf7d                	j	1c2 <.L152>
			204: R_RISCV_RVC_JUMP	.L152

00000206 <.L135>:
 206:	4781                	li	a5,0
 208:	bff1                	j	1e4 <.L125>
			208: R_RISCV_RVC_JUMP	.L125

0000020a <.L128>:
 20a:	000aaa83          	lw	s5,0(s5)

0000020e <.LBB743>:
 20e:	4b81                	li	s7,0

00000210 <.LVL277>:
 210:	141a8a93          	addi	s5,s5,321

00000214 <.L129>:
 214:	000ac503          	lbu	a0,0(s5)
 218:	0a89                	addi	s5,s5,2
 21a:	00000097          	auipc	ra,0x0
			21a: R_RISCV_CALL	ascii_to_hex
			21a: R_RISCV_RELAX	*ABS*
 21e:	000080e7          	jalr	ra # 21a <.L129+0x6>

00000222 <.LVL279>:
 222:	8b2a                	mv	s6,a0

00000224 <.LVL280>:
 224:	fffac503          	lbu	a0,-1(s5)
 228:	0b12                	slli	s6,s6,0x4

0000022a <.LVL281>:
 22a:	00000097          	auipc	ra,0x0
			22a: R_RISCV_CALL	ascii_to_hex
			22a: R_RISCV_RELAX	*ABS*
 22e:	000080e7          	jalr	ra # 22a <.LVL281>

00000232 <.LVL282>:
 232:	401bd793          	srai	a5,s7,0x1
 236:	1818                	addi	a4,sp,48
 238:	97ba                	add	a5,a5,a4
 23a:	9b2a                	add	s6,s6,a0
 23c:	fd678e23          	sb	s6,-36(a5)
 240:	0b89                	addi	s7,s7,2
 242:	fd8bc9e3          	blt	s7,s8,214 <.L129>
			242: R_RISCV_BRANCH	.L129
 246:	bf55                	j	1fa <.L130>
			246: R_RISCV_RVC_JUMP	.L130

00000248 <.L126>:
 248:	00000537          	lui	a0,0x0
			248: R_RISCV_HI20	.LC26
			248: R_RISCV_RELAX	*ABS*
 24c:	00050513          	mv	a0,a0
			24c: R_RISCV_LO12_I	.LC26
			24c: R_RISCV_RELAX	*ABS*
 250:	00000097          	auipc	ra,0x0
			250: R_RISCV_CALL	printf
			250: R_RISCV_RELAX	*ABS*
 254:	000080e7          	jalr	ra # 250 <.L126+0x8>

00000258 <.LVL285>:
 258:	0009c503          	lbu	a0,0(s3)
 25c:	4905                	li	s2,1
 25e:	00000097          	auipc	ra,0x0
			25e: R_RISCV_CALL	sta_mgmt_unregister
			25e: R_RISCV_RELAX	*ABS*
 262:	000080e7          	jalr	ra # 25e <.LVL285+0x6>

00000266 <.LVL286>:
 266:	b539                	j	74 <.L114>
			266: R_RISCV_RVC_JUMP	.L114

00000268 <.L131>:
 268:	3e97c703          	lbu	a4,1001(a5)
 26c:	8b21                	andi	a4,a4,8
 26e:	e8070ce3          	beqz	a4,106 <.L132>
			26e: R_RISCV_BRANCH	.L132
 272:	3ec60693          	addi	a3,a2,1004
 276:	3eb60613          	addi	a2,a2,1003
 27a:	3ef7c703          	lbu	a4,1007(a5)
 27e:	96a2                	add	a3,a3,s0
 280:	9622                	add	a2,a2,s0
 282:	458d                	li	a1,3
 284:	bd9d                	j	fa <.L153>
			284: R_RISCV_RVC_JUMP	.L153

Disassembly of section .text.mm_sta_del:

00000000 <mm_sta_del>:
   0:	1101                	addi	sp,sp,-32
   2:	c256                	sw	s5,4(sp)
   4:	1b000a93          	li	s5,432
   8:	035507b3          	mul	a5,a0,s5
   c:	c84a                	sw	s2,16(sp)
   e:	00000937          	lui	s2,0x0
			e: R_RISCV_HI20	sta_info_tab
			e: R_RISCV_RELAX	*ABS*
  12:	00090913          	mv	s2,s2
			12: R_RISCV_LO12_I	sta_info_tab
			12: R_RISCV_RELAX	*ABS*
  16:	cc22                	sw	s0,24(sp)
  18:	ca26                	sw	s1,20(sp)
  1a:	c64e                	sw	s3,12(sp)
  1c:	c452                	sw	s4,8(sp)
  1e:	ce06                	sw	ra,28(sp)
  20:	c05a                	sw	s6,0(sp)
  22:	97ca                	add	a5,a5,s2
  24:	01a7cb03          	lbu	s6,26(a5)
  28:	5d800a13          	li	s4,1496
  2c:	000004b7          	lui	s1,0x0
			2c: R_RISCV_HI20	vif_info_tab
			2c: R_RISCV_RELAX	*ABS*
  30:	034b0a33          	mul	s4,s6,s4
  34:	00048413          	mv	s0,s1
			34: R_RISCV_LO12_I	vif_info_tab
			34: R_RISCV_RELAX	*ABS*
  38:	89aa                	mv	s3,a0
  3a:	9452                	add	s0,s0,s4
  3c:	05644703          	lbu	a4,86(s0)
  40:	eb71                	bnez	a4,114 <.L155>
			40: R_RISCV_RVC_BRANCH	.L155
  42:	57fd                	li	a5,-1
  44:	06f40023          	sb	a5,96(s0)
  48:	3e844783          	lbu	a5,1000(s0)
  4c:	c3c1                	beqz	a5,cc <.L157>
			4c: R_RISCV_RVC_BRANCH	.L157
  4e:	3e842783          	lw	a5,1000(s0)
  52:	674d                	lui	a4,0x13
  54:	80070713          	addi	a4,a4,-2048 # 12800 <.LASF415+0xc492>
  58:	8ff9                	and	a5,a5,a4
  5a:	00048493          	mv	s1,s1
			5a: R_RISCV_LO12_I	vif_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	cbd1                	beqz	a5,f2 <.L158>
			5e: R_RISCV_RVC_BRANCH	.L158

00000060 <.LBB749>:
  60:	00000ab7          	lui	s5,0x0
			60: R_RISCV_HI20	sta_conn_info
			60: R_RISCV_RELAX	*ABS*
  64:	000a8913          	mv	s2,s5
			64: R_RISCV_LO12_I	sta_conn_info
			64: R_RISCV_RELAX	*ABS*
  68:	00494503          	lbu	a0,4(s2) # 4 <mm_sta_del+0x4>

0000006c <.LVL290>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	mm_sec_machwkey_del
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL290>

00000074 <.LVL291>:
  74:	00394503          	lbu	a0,3(s2)
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	mm_sec_machwkey_del
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL291+0x4>

00000080 <.LVL292>:
  80:	00594503          	lbu	a0,5(s2)
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	mm_sec_machwkey_del
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL292+0x4>

0000008c <.LVL293>:
  8c:	000a8513          	mv	a0,s5
			8c: R_RISCV_LO12_I	sta_conn_info
			8c: R_RISCV_RELAX	*ABS*
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	supplicantDisable
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL293+0x4>

00000098 <.LVL294>:
  98:	00892503          	lw	a0,8(s2)
  9c:	4581                	li	a1,0
  9e:	02200613          	li	a2,34
  a2:	0511                	addi	a0,a0,4
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	memset
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL294+0xc>

000000ac <.LVL295>:
  ac:	37e44583          	lbu	a1,894(s0)
  b0:	37fa0513          	addi	a0,s4,895 # 37f <.LASF1171+0x18>
  b4:	9526                	add	a0,a0,s1
  b6:	00000097          	auipc	ra,0x0
			b6: R_RISCV_CALL	remove_psk
			b6: R_RISCV_RELAX	*ABS*
  ba:	000080e7          	jalr	ra # b6 <.LVL295+0xa>

000000be <.L159>:
  be:	5d800793          	li	a5,1496
  c2:	02fb0b33          	mul	s6,s6,a5
  c6:	94da                	add	s1,s1,s6
  c8:	3e048423          	sb	zero,1000(s1) # 3e8 <.LASF1165+0x1>

000000cc <.L157>:
  cc:	854e                	mv	a0,s3
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	mm_sec_machwaddr_del
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.L157+0x2>

000000d6 <.LVL297>:
  d6:	4462                	lw	s0,24(sp)
  d8:	40f2                	lw	ra,28(sp)
  da:	44d2                	lw	s1,20(sp)
  dc:	4942                	lw	s2,16(sp)
  de:	4a22                	lw	s4,8(sp)
  e0:	4a92                	lw	s5,4(sp)
  e2:	4b02                	lw	s6,0(sp)
  e4:	854e                	mv	a0,s3
  e6:	49b2                	lw	s3,12(sp)
  e8:	6105                	addi	sp,sp,32
  ea:	00000317          	auipc	t1,0x0
			ea: R_RISCV_CALL	sta_mgmt_unregister
			ea: R_RISCV_RELAX	*ABS*
  ee:	00030067          	jr	t1 # ea <.LVL297+0x14>

000000f2 <.L158>:
  f2:	3e944783          	lbu	a5,1001(s0)
  f6:	8b89                	andi	a5,a5,2
  f8:	d3f9                	beqz	a5,be <.L159>
			f8: R_RISCV_RVC_BRANCH	.L159
  fa:	000007b7          	lui	a5,0x0
			fa: R_RISCV_HI20	.LANCHOR2
			fa: R_RISCV_RELAX	*ABS*
  fe:	0007c503          	lbu	a0,0(a5) # 0 <mm_sta_del>
			fe: R_RISCV_LO12_I	.LANCHOR2
			fe: R_RISCV_RELAX	*ABS*

00000102 <.LVL301>:
 102:	0ff00793          	li	a5,255
 106:	faf50ce3          	beq	a0,a5,be <.L159>
			106: R_RISCV_BRANCH	.L159
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	mm_sec_machwkey_del
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.LVL301+0x8>

00000112 <.LVL302>:
 112:	b775                	j	be <.L159>
			112: R_RISCV_RVC_JUMP	.L159

00000114 <.L155>:
 114:	01c7c703          	lbu	a4,28(a5)
 118:	4785                	li	a5,1
 11a:	faf719e3          	bne	a4,a5,cc <.L157>
			11a: R_RISCV_BRANCH	.L157
 11e:	34a44783          	lbu	a5,842(s0)
 122:	17fd                	addi	a5,a5,-1
 124:	0ff7f793          	andi	a5,a5,255
 128:	34f40523          	sb	a5,842(s0)
 12c:	f3c5                	bnez	a5,cc <.L157>
			12c: R_RISCV_RVC_BRANCH	.L157
 12e:	05744483          	lbu	s1,87(s0)

00000132 <.LBB750>:
 132:	4689                	li	a3,2
 134:	4601                	li	a2,0

00000136 <.LBE750>:
 136:	04a9                	addi	s1,s1,10
 138:	0ff4f493          	andi	s1,s1,255

0000013c <.LBB755>:
 13c:	03548ab3          	mul	s5,s1,s5
 140:	45b5                	li	a1,13
 142:	04900513          	li	a0,73

00000146 <.LVL305>:
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	ke_msg_alloc
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.LVL305>

0000014e <.LVL306>:
 14e:	9956                	add	s2,s2,s5
 150:	00090e23          	sb	zero,28(s2)
 154:	00950023          	sb	s1,0(a0) # 0 <mm_sta_del>
 158:	000500a3          	sb	zero,1(a0)
 15c:	00000097          	auipc	ra,0x0
			15c: R_RISCV_CALL	ke_msg_send
			15c: R_RISCV_RELAX	*ABS*
 160:	000080e7          	jalr	ra # 15c <.LVL306+0xe>

00000164 <.LBE755>:
 164:	05744583          	lbu	a1,87(s0)
 168:	8522                	mv	a0,s0
 16a:	05a9                	addi	a1,a1,10
 16c:	0ff5f593          	andi	a1,a1,255
 170:	00000097          	auipc	ra,0x0
			170: R_RISCV_CALL	apm_tx_int_ps_clear
			170: R_RISCV_RELAX	*ABS*
 174:	000080e7          	jalr	ra # 170 <.LBE755+0xc>

00000178 <.LVL308>:
 178:	bf91                	j	cc <.L157>
			178: R_RISCV_RVC_JUMP	.L157

Disassembly of section .text.mm_cfg_element_keepalive_timestamp_update:

00000000 <mm_cfg_element_keepalive_timestamp_update>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	xTaskGetTickCount
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <mm_cfg_element_keepalive_timestamp_update+0x4>

0000000c <.LVL309>:
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	mm_env
			c: R_RISCV_RELAX	*ABS*
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	mm_env
			10: R_RISCV_RELAX	*ABS*
  14:	53d8                	lw	a4,36(a5)
  16:	d788                	sw	a0,40(a5)
  18:	0705                	addi	a4,a4,1
  1a:	d3d8                	sw	a4,36(a5)
  1c:	40b2                	lw	ra,12(sp)
  1e:	0141                	addi	sp,sp,16
  20:	8082                	ret

Disassembly of section .text.mm_send_connection_loss_ind:

00000000 <mm_send_connection_loss_ind>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	4685                	li	a3,1
   6:	842a                	mv	s0,a0
   8:	4601                	li	a2,0
   a:	4599                	li	a1,6
   c:	04300513          	li	a0,67

00000010 <.LVL311>:
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ke_msg_alloc
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL311+0x2>

0000001a <.LVL312>:
  1a:	05744783          	lbu	a5,87(s0)
  1e:	00f50023          	sb	a5,0(a0)
  22:	4422                	lw	s0,8(sp)

00000024 <.LVL313>:
  24:	40b2                	lw	ra,12(sp)
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
			28: R_RISCV_CALL	ke_msg_send
			28: R_RISCV_RELAX	*ABS*
  2c:	00030067          	jr	t1 # 28 <.LVL313+0x4>

Disassembly of section .text.mm_ap_probe_cfm:

00000000 <mm_ap_probe_cfm>:
   0:	00859713          	slli	a4,a1,0x8
   4:	00075563          	bgez	a4,e <.L170>
			4: R_RISCV_BRANCH	.L170
   8:	06050a23          	sb	zero,116(a0)
   c:	8082                	ret

0000000e <.L170>:
   e:	00000317          	auipc	t1,0x0
			e: R_RISCV_CALL	mm_send_connection_loss_ind
			e: R_RISCV_RELAX	*ABS*
  12:	00030067          	jr	t1 # e <.L170>

Disassembly of section .text.mm_check_rssi:

00000000 <mm_check_rssi>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	ce4e                	sw	s3,28(sp)
   6:	cc52                	sw	s4,24(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	07550b03          	lb	s6,117(a0)

00000016 <.LVL318>:
  16:	07650483          	lb	s1,118(a0)

0000001a <.LVL319>:
  1a:	07754a83          	lbu	s5,119(a0)

0000001e <.LVL320>:
  1e:	07854903          	lbu	s2,120(a0)

00000022 <.LVL321>:
  22:	4781                	li	a5,0
  24:	4801                	li	a6,0
  26:	06b50aa3          	sb	a1,117(a0)
  2a:	842a                	mv	s0,a0
  2c:	00000a37          	lui	s4,0x0
			2c: R_RISCV_HI20	.LANCHOR3
			2c: R_RISCV_RELAX	*ABS*
  30:	0028                	addi	a0,sp,8

00000032 <.LVL322>:
  32:	89ae                	mv	s3,a1
  34:	c43e                	sw	a5,8(sp)
  36:	c642                	sw	a6,12(sp)
  38:	000a0a13          	mv	s4,s4
			38: R_RISCV_LO12_I	.LANCHOR3
			38: R_RISCV_RELAX	*ABS*
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	bl60x_current_time_us
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL322+0xa>

00000044 <.LVL323>:
  44:	020b0763          	beqz	s6,72 <.L174>
			44: R_RISCV_BRANCH	.L174
  48:	46a2                	lw	a3,8(sp)
  4a:	000a2703          	lw	a4,0(s4) # 0 <mm_check_rssi>
  4e:	004a2603          	lw	a2,4(s4)
  52:	47b2                	lw	a5,12(sp)
  54:	40e68733          	sub	a4,a3,a4
  58:	00e6b6b3          	sltu	a3,a3,a4
  5c:	8f91                	sub	a5,a5,a2
  5e:	8f95                	sub	a5,a5,a3
  60:	00f04963          	bgtz	a5,72 <.L174>
			60: R_RISCV_BRANCH	.L174
  64:	e3b1                	bnez	a5,a8 <.L175>
			64: R_RISCV_RVC_BRANCH	.L175
  66:	001e87b7          	lui	a5,0x1e8
  6a:	48078793          	addi	a5,a5,1152 # 1e8480 <.LASF415+0x1e2112>
  6e:	02e7fd63          	bgeu	a5,a4,a8 <.L175>
			6e: R_RISCV_BRANCH	.L175

00000072 <.L174>:
  72:	468d                	li	a3,3
  74:	4601                	li	a2,0
  76:	45b5                	li	a1,13
  78:	05700513          	li	a0,87
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	ke_msg_alloc
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L174+0xa>

00000084 <.LVL324>:
  84:	05744703          	lbu	a4,87(s0)
  88:	012500a3          	sb	s2,1(a0)
  8c:	01350123          	sb	s3,2(a0)
  90:	00e50023          	sb	a4,0(a0)
  94:	4722                	lw	a4,8(sp)
  96:	47b2                	lw	a5,12(sp)
  98:	00ea2023          	sw	a4,0(s4)
  9c:	00fa2223          	sw	a5,4(s4)
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	ke_msg_send
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL324+0x1c>

000000a8 <.L175>:
  a8:	c4b1                	beqz	s1,f4 <.L173>
			a8: R_RISCV_RVC_BRANCH	.L173
  aa:	018a9793          	slli	a5,s5,0x18
  ae:	87e1                	srai	a5,a5,0x18
  b0:	04091c63          	bnez	s2,108 <.L179>
			b0: R_RISCV_BRANCH	.L179
  b4:	0169d563          	bge	s3,s6,be <.L180>
			b4: R_RISCV_BRANCH	.L180
  b8:	8c9d                	sub	s1,s1,a5

000000ba <.LVL326>:
  ba:	0099a933          	slt	s2,s3,s1

000000be <.L180>:
  be:	07844783          	lbu	a5,120(s0)
  c2:	03278763          	beq	a5,s2,f0 <.L181>
			c2: R_RISCV_BRANCH	.L181

000000c6 <.LBB757>:
  c6:	468d                	li	a3,3
  c8:	4601                	li	a2,0
  ca:	45b5                	li	a1,13
  cc:	05700513          	li	a0,87
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	ke_msg_alloc
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LBB757+0xa>

000000d8 <.LVL328>:
  d8:	05744703          	lbu	a4,87(s0)
  dc:	012500a3          	sb	s2,1(a0)
  e0:	01350123          	sb	s3,2(a0)
  e4:	00e50023          	sb	a4,0(a0)
  e8:	00000097          	auipc	ra,0x0
			e8: R_RISCV_CALL	ke_msg_send
			e8: R_RISCV_RELAX	*ABS*
  ec:	000080e7          	jalr	ra # e8 <.LVL328+0x10>

000000f0 <.L181>:
  f0:	07240c23          	sb	s2,120(s0)

000000f4 <.L173>:
  f4:	50b2                	lw	ra,44(sp)
  f6:	5422                	lw	s0,40(sp)

000000f8 <.LVL330>:
  f8:	5492                	lw	s1,36(sp)
  fa:	5902                	lw	s2,32(sp)

000000fc <.LVL331>:
  fc:	49f2                	lw	s3,28(sp)
  fe:	4a62                	lw	s4,24(sp)
 100:	4ad2                	lw	s5,20(sp)

00000102 <.LVL332>:
 102:	4b42                	lw	s6,16(sp)

00000104 <.LVL333>:
 104:	6145                	addi	sp,sp,48
 106:	8082                	ret

00000108 <.L179>:
 108:	fb3b5be3          	bge	s6,s3,be <.L180>
			108: R_RISCV_BRANCH	.L180
 10c:	94be                	add	s1,s1,a5

0000010e <.LVL335>:
 10e:	0134a4b3          	slt	s1,s1,s3
 112:	0014c913          	xori	s2,s1,1

00000116 <.LVL336>:
 116:	b765                	j	be <.L180>
			116: R_RISCV_RVC_JUMP	.L180

Disassembly of section .text.mm_send_csa_traffic_ind:

00000000 <mm_send_csa_traffic_ind>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842e                	mv	s0,a1
   8:	84aa                	mv	s1,a0
   a:	4689                	li	a3,2
   c:	4601                	li	a2,0
   e:	45b5                	li	a1,13

00000010 <.LVL338>:
  10:	05900513          	li	a0,89

00000014 <.LVL339>:
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_msg_alloc
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL339+0x2>

0000001e <.LVL340>:
  1e:	00950023          	sb	s1,0(a0)
  22:	008500a3          	sb	s0,1(a0)
  26:	4422                	lw	s0,8(sp)
  28:	40b2                	lw	ra,12(sp)
  2a:	4492                	lw	s1,4(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	ke_msg_send
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <.LVL340+0x10>

Disassembly of section .text.mm_check_beacon:

00000000 <mm_check_beacon>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	de4e                	sw	s3,60(sp)
   6:	da56                	sw	s5,52(sp)
   8:	d85a                	sw	s6,48(sp)
   a:	c686                	sw	ra,76(sp)
   c:	c2a6                	sw	s1,68(sp)
   e:	c0ca                	sw	s2,64(sp)
  10:	dc52                	sw	s4,56(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	d462                	sw	s8,40(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	ce6e                	sw	s11,28(sp)
  1c:	451c                	lw	a5,8(a0)
  1e:	01c55b83          	lhu	s7,28(a0)
  22:	8aaa                	mv	s5,a0
  24:	0087a903          	lw	s2,8(a5)
  28:	000007b7          	lui	a5,0x0
			28: R_RISCV_HI20	.LANCHOR4
			28: R_RISCV_RELAX	*ABS*
  2c:	00078793          	mv	a5,a5
			2c: R_RISCV_LO12_I	.LANCHOR4
			2c: R_RISCV_RELAX	*ABS*
  30:	4398                	lw	a4,0(a5)
  32:	06058a23          	sb	zero,116(a1)
  36:	842e                	mv	s0,a1

00000038 <.LVL343>:
  38:	0705                	addi	a4,a4,1
  3a:	c398                	sw	a4,0(a5)
  3c:	07a5c783          	lbu	a5,122(a1)
  40:	89b2                	mv	s3,a2
  42:	8b36                	mv	s6,a3
  44:	0705aa03          	lw	s4,112(a1)

00000048 <.LVL344>:
  48:	cb91                	beqz	a5,5c <.L189>
			48: R_RISCV_RVC_BRANCH	.L189
  4a:	05744503          	lbu	a0,87(s0)

0000004e <.LVL345>:
  4e:	4585                	li	a1,1

00000050 <.LVL346>:
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	mm_send_csa_traffic_ind
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL346>

00000058 <.LVL347>:
  58:	06040d23          	sb	zero,122(s0)

0000005c <.L189>:
  5c:	44b004b7          	lui	s1,0x44b00
  60:	1204a703          	lw	a4,288(s1) # 44b00120 <.LASF415+0x44af9db2>

00000064 <.LBB799>:
  64:	01c9c7b7          	lui	a5,0x1c9c
  68:	38078793          	addi	a5,a5,896 # 1c9c380 <.LASF415+0x1c96012>
  6c:	8f99                	sub	a5,a5,a4
  6e:	5478                	lw	a4,108(s0)
  70:	97ba                	add	a5,a5,a4

00000072 <.LBE794>:
  72:	0207d363          	bgez	a5,98 <.L191>
			72: R_RISCV_BRANCH	.L191
  76:	000007b7          	lui	a5,0x0
			76: R_RISCV_HI20	mm_env+0x23
			76: R_RISCV_RELAX	*ABS*+0x23
  7a:	0237c783          	lbu	a5,35(a5) # 23 <mm_check_beacon+0x23>
			7a: R_RISCV_LO12_I	mm_env+0x23
			7a: R_RISCV_RELAX	*ABS*+0x23
  7e:	cf89                	beqz	a5,98 <.L191>
			7e: R_RISCV_RVC_BRANCH	.L191
  80:	06044503          	lbu	a0,96(s0)
  84:	4601                	li	a2,0
  86:	4581                	li	a1,0
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	txl_frame_send_null_frame
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LBE794+0x16>

00000090 <.LVL350>:
  90:	e501                	bnez	a0,98 <.L191>
			90: R_RISCV_RVC_BRANCH	.L191

00000092 <.LBB801>:
  92:	1204a783          	lw	a5,288(s1)

00000096 <.LBE801>:
  96:	d47c                	sw	a5,108(s0)

00000098 <.L191>:
  98:	033a8583          	lb	a1,51(s5) # 33 <mm_check_beacon+0x33>
  9c:	8522                	mv	a0,s0

0000009e <.LBB805>:
  9e:	fdcb8493          	addi	s1,s7,-36

000000a2 <.LBE805>:
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	mm_check_rssi
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LBE805>

000000aa <.LBB819>:
  aa:	4601                	li	a2,0
  ac:	4591                	li	a1,4
  ae:	02090513          	addi	a0,s2,32
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	co_crc32
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LBB819+0x8>

000000ba <.LVL353>:
  ba:	04c2                	slli	s1,s1,0x10
  bc:	02490c13          	addi	s8,s2,36

000000c0 <.LVL354>:
  c0:	80c1                	srli	s1,s1,0x10

000000c2 <.LVL355>:
  c2:	000b2023          	sw	zero,0(s6)
  c6:	4d85                	li	s11,1

000000c8 <.LBB807>:
  c8:	4795                	li	a5,5
  ca:	5779                	li	a4,-2

000000cc <.L193>:
  cc:	149dec63          	bltu	s11,s1,224 <.L197>
			cc: R_RISCV_BRANCH	.L197

000000d0 <.L194>:
  d0:	d828                	sw	a0,112(s0)

000000d2 <.LBB820>:
  d2:	01994703          	lbu	a4,25(s2)

000000d6 <.LBE820>:
  d6:	0169dc83          	lhu	s9,22(s3)

000000da <.LBB851>:
  da:	01894983          	lbu	s3,24(s2)

000000de <.LVL358>:
  de:	0722                	slli	a4,a4,0x8
  e0:	01c94c03          	lbu	s8,28(s2)
  e4:	01376733          	or	a4,a4,s3
  e8:	01a94983          	lbu	s3,26(s2)
  ec:	02194483          	lbu	s1,33(s2)
  f0:	02094783          	lbu	a5,32(s2)
  f4:	09c2                	slli	s3,s3,0x10
  f6:	00e9e733          	or	a4,s3,a4
  fa:	01b94983          	lbu	s3,27(s2)
  fe:	04a2                	slli	s1,s1,0x8
 100:	8cdd                	or	s1,s1,a5
 102:	09e2                	slli	s3,s3,0x18
 104:	00e9e9b3          	or	s3,s3,a4
 108:	01d94703          	lbu	a4,29(s2)
 10c:	020aad03          	lw	s10,32(s5)

00000110 <.LVL359>:
 110:	04aa                	slli	s1,s1,0xa
 112:	0722                	slli	a4,a4,0x8
 114:	01876733          	or	a4,a4,s8
 118:	01e94c03          	lbu	s8,30(s2)
 11c:	0c42                	slli	s8,s8,0x10
 11e:	00ec6733          	or	a4,s8,a4
 122:	01f94c03          	lbu	s8,31(s2)
 126:	05c45903          	lhu	s2,92(s0)

0000012a <.LVL360>:
 12a:	0c62                	slli	s8,s8,0x18
 12c:	00ec6c33          	or	s8,s8,a4

00000130 <.LVL361>:
 130:	00091c63          	bnez	s2,148 <.L198>
			130: R_RISCV_BRANCH	.L198

00000134 <.LBE851>:
 134:	000b2783          	lw	a5,0(s6)

00000138 <.LBB852>:
 138:	4905                	li	s2,1
 13a:	c799                	beqz	a5,148 <.L198>
			13a: R_RISCV_RVC_BRANCH	.L198

0000013c <.LBB822>:
 13c:	0027c903          	lbu	s2,2(a5)

00000140 <.LVL363>:
 140:	00091463          	bnez	s2,148 <.L198>
			140: R_RISCV_BRANCH	.L198

00000144 <.LBB824>:
 144:	0037c903          	lbu	s2,3(a5)

00000148 <.L198>:
 148:	85de                	mv	a1,s7
 14a:	8556                	mv	a0,s5
 14c:	00000097          	auipc	ra,0x0
			14c: R_RISCV_CALL	hal_machw_rx_duration
			14c: R_RISCV_RELAX	*ABS*
 150:	000080e7          	jalr	ra # 14c <.L198+0x4>

00000154 <.LVL366>:
 154:	45e1                	li	a1,24
 156:	8b2a                	mv	s6,a0

00000158 <.LVL367>:
 158:	8556                	mv	a0,s5

0000015a <.LVL368>:
 15a:	00000097          	auipc	ra,0x0
			15a: R_RISCV_CALL	hal_machw_rx_duration
			15a: R_RISCV_RELAX	*ABS*
 15e:	000080e7          	jalr	ra # 15a <.LVL368>

00000162 <.LVL369>:
 162:	8aaa                	mv	s5,a0

00000164 <.LVL370>:
 164:	41f4d693          	srai	a3,s1,0x1f
 168:	85e2                	mv	a1,s8
 16a:	8626                	mv	a2,s1
 16c:	854e                	mv	a0,s3

0000016e <.LVL371>:
 16e:	00000097          	auipc	ra,0x0
			16e: R_RISCV_CALL	__udivdi3
			16e: R_RISCV_RELAX	*ABS*
 172:	000080e7          	jalr	ra # 16e <.LVL371>
 176:	029585b3          	mul	a1,a1,s1
 17a:	415987b3          	sub	a5,s3,s5
 17e:	00f9b6b3          	sltu	a3,s3,a5
 182:	40dc0c33          	sub	s8,s8,a3

00000186 <.LVL373>:
 186:	02950733          	mul	a4,a0,s1
 18a:	02953533          	mulhu	a0,a0,s1
 18e:	95aa                	add	a1,a1,a0
 190:	0185e663          	bltu	a1,s8,19c <.L200>
			190: R_RISCV_BRANCH	.L200
 194:	00bc1563          	bne	s8,a1,19e <.L199>
			194: R_RISCV_BRANCH	.L199
 198:	00f77363          	bgeu	a4,a5,19e <.L199>
			198: R_RISCV_BRANCH	.L199

0000019c <.L200>:
 19c:	87ba                	mv	a5,a4

0000019e <.L199>:
 19e:	02990733          	mul	a4,s2,s1
 1a2:	415b0b33          	sub	s6,s6,s5

000001a6 <.LVL375>:
 1a6:	41a989b3          	sub	s3,s3,s10
 1aa:	99da                	add	s3,s3,s6
 1ac:	032c8933          	mul	s2,s9,s2

000001b0 <.LVL376>:
 1b0:	97ba                	add	a5,a5,a4

000001b2 <.LBB826>:
 1b2:	44b00737          	lui	a4,0x44b00
 1b6:	12072603          	lw	a2,288(a4) # 44b00120 <.LASF415+0x44af9db2>

000001ba <.LBB832>:
 1ba:	777d                	lui	a4,0xfffff

000001bc <.LBE826>:
 1bc:	413787b3          	sub	a5,a5,s3

000001c0 <.LBB836>:
 1c0:	38070713          	addi	a4,a4,896 # fffff380 <.LASF415+0xffff9012>
 1c4:	8f11                	sub	a4,a4,a2

000001c6 <.LBE836>:
 1c6:	412787b3          	sub	a5,a5,s2
 1ca:	e7078693          	addi	a3,a5,-400

000001ce <.LBB837>:
 1ce:	97ba                	add	a5,a5,a4

000001d0 <.LBE838>:
 1d0:	0007d363          	bgez	a5,1d6 <.L201>
			1d0: R_RISCV_BRANCH	.L201
 1d4:	96a6                	add	a3,a3,s1

000001d6 <.L201>:
 1d6:	44b007b7          	lui	a5,0x44b00
 1da:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF415+0x44af9db2>

000001de <.LBB845>:
 1de:	44b087b7          	lui	a5,0x44b08
 1e2:	0a47a783          	lw	a5,164(a5) # 44b080a4 <.LASF415+0x44b01d36>

000001e6 <.LBE845>:
 1e6:	8d9d                	sub	a1,a1,a5
 1e8:	505c                	lw	a5,36(s0)
 1ea:	95b6                	add	a1,a1,a3

000001ec <.LVL379>:
 1ec:	00f58863          	beq	a1,a5,1fc <.L202>
			1ec: R_RISCV_BRANCH	.L202
 1f0:	01840513          	addi	a0,s0,24
 1f4:	00000097          	auipc	ra,0x0
			1f4: R_RISCV_CALL	mm_timer_set
			1f4: R_RISCV_RELAX	*ABS*
 1f8:	000080e7          	jalr	ra # 1f4 <.LVL379+0x8>

000001fc <.L202>:
 1fc:	5828                	lw	a0,112(s0)
 1fe:	40b6                	lw	ra,76(sp)
 200:	4426                	lw	s0,72(sp)

00000202 <.LVL381>:
 202:	41450533          	sub	a0,a0,s4
 206:	4496                	lw	s1,68(sp)
 208:	4906                	lw	s2,64(sp)
 20a:	59f2                	lw	s3,60(sp)
 20c:	5a62                	lw	s4,56(sp)

0000020e <.LVL382>:
 20e:	5ad2                	lw	s5,52(sp)
 210:	5b42                	lw	s6,48(sp)
 212:	5bb2                	lw	s7,44(sp)

00000214 <.LVL383>:
 214:	5c22                	lw	s8,40(sp)
 216:	5c92                	lw	s9,36(sp)
 218:	5d02                	lw	s10,32(sp)
 21a:	4df2                	lw	s11,28(sp)
 21c:	00a03533          	snez	a0,a0
 220:	6161                	addi	sp,sp,80
 222:	8082                	ret

00000224 <.L197>:
 224:	001c4c83          	lbu	s9,1(s8)

00000228 <.LBB814>:
 228:	000c4683          	lbu	a3,0(s8)

0000022c <.LBE814>:
 22c:	002c0d13          	addi	s10,s8,2

00000230 <.LBB815>:
 230:	001c8613          	addi	a2,s9,1
 234:	e8965ee3          	bge	a2,s1,d0 <.L194>
			234: R_RISCV_BRANCH	.L194
 238:	00f69c63          	bne	a3,a5,250 <.L195>
			238: R_RISCV_BRANCH	.L195
 23c:	018b2023          	sw	s8,0(s6)

00000240 <.L196>:
 240:	419706b3          	sub	a3,a4,s9
 244:	94b6                	add	s1,s1,a3

00000246 <.LVL388>:
 246:	04c2                	slli	s1,s1,0x10
 248:	80c1                	srli	s1,s1,0x10

0000024a <.LVL389>:
 24a:	019d0c33          	add	s8,s10,s9

0000024e <.LVL390>:
 24e:	bdbd                	j	cc <.L193>
			24e: R_RISCV_RVC_JUMP	.L193

00000250 <.L195>:
 250:	862a                	mv	a2,a0
 252:	85e6                	mv	a1,s9
 254:	856a                	mv	a0,s10

00000256 <.LVL392>:
 256:	c63a                	sw	a4,12(sp)
 258:	00000097          	auipc	ra,0x0
			258: R_RISCV_CALL	co_crc32
			258: R_RISCV_RELAX	*ABS*
 25c:	000080e7          	jalr	ra # 258 <.LVL392+0x2>

00000260 <.LVL393>:
 260:	4732                	lw	a4,12(sp)
 262:	4795                	li	a5,5

00000264 <.LVL394>:
 264:	bff1                	j	240 <.L196>
			264: R_RISCV_RVC_JUMP	.L196

Disassembly of section .text.mm_sta_tbtt:

00000000 <mm_sta_tbtt>:
   0:	05854783          	lbu	a5,88(a0)
   4:	c7fd                	beqz	a5,f2 <.L225>
			4: R_RISCV_RVC_BRANCH	.L225
   6:	1141                	addi	sp,sp,-16
   8:	c422                	sw	s0,8(sp)
   a:	c606                	sw	ra,12(sp)
   c:	c226                	sw	s1,4(sp)
   e:	07954783          	lbu	a5,121(a0)
  12:	842a                	mv	s0,a0
  14:	cb9d                	beqz	a5,4a <.L216>
			14: R_RISCV_RVC_BRANCH	.L216
  16:	17fd                	addi	a5,a5,-1
  18:	0ff7f793          	andi	a5,a5,255
  1c:	06f50ca3          	sb	a5,121(a0)
  20:	4705                	li	a4,1
  22:	00f76a63          	bltu	a4,a5,36 <.L217>
			22: R_RISCV_BRANCH	.L217
  26:	4422                	lw	s0,8(sp)
  28:	40b2                	lw	ra,12(sp)
  2a:	4492                	lw	s1,4(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	vif_mgmt_switch_channel
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <mm_sta_tbtt+0x2e>

00000036 <.L217>:
  36:	4709                	li	a4,2
  38:	00e79963          	bne	a5,a4,4a <.L216>
			38: R_RISCV_BRANCH	.L216
  3c:	05754503          	lbu	a0,87(a0)
  40:	4581                	li	a1,0
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	mm_send_csa_traffic_ind
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.L217+0xc>

0000004a <.L216>:
  4a:	06044703          	lbu	a4,96(s0)
  4e:	1b000693          	li	a3,432
  52:	000007b7          	lui	a5,0x0
			52: R_RISCV_HI20	sta_info_tab
			52: R_RISCV_RELAX	*ABS*
  56:	02d70733          	mul	a4,a4,a3
  5a:	00078793          	mv	a5,a5
			5a: R_RISCV_LO12_I	sta_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	01840513          	addi	a0,s0,24
  62:	97ba                	add	a5,a5,a4
  64:	43c4                	lw	s1,4(a5)
  66:	505c                	lw	a5,36(s0)
  68:	94be                	add	s1,s1,a5

0000006a <.LVL398>:
  6a:	85a6                	mv	a1,s1
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	mm_timer_set
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL398+0x2>

00000074 <.LVL399>:
  74:	8522                	mv	a0,s0
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	vif_mgmt_bcn_to_prog
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL399+0x2>

0000007e <.LVL400>:
  7e:	8522                	mv	a0,s0
  80:	85a6                	mv	a1,s1
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	chan_tbtt_switch_update
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL400+0x4>

0000008a <.LVL401>:
  8a:	8522                	mv	a0,s0
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	chan_is_on_channel
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LVL401+0x2>

00000094 <.LVL402>:
  94:	c931                	beqz	a0,e8 <.L212>
			94: R_RISCV_RVC_BRANCH	.L212
  96:	405c                	lw	a5,4(s0)
  98:	06400713          	li	a4,100
  9c:	0017e793          	ori	a5,a5,1
  a0:	c05c                	sw	a5,4(s0)
  a2:	07444783          	lbu	a5,116(s0)
  a6:	0785                	addi	a5,a5,1
  a8:	0ff7f793          	andi	a5,a5,255
  ac:	06f40a23          	sb	a5,116(s0)
  b0:	02f77163          	bgeu	a4,a5,d2 <.L220>
			b0: R_RISCV_BRANCH	.L220
  b4:	06044503          	lbu	a0,96(s0)
  b8:	8622                	mv	a2,s0
  ba:	4422                	lw	s0,8(sp)

000000bc <.LVL403>:
  bc:	40b2                	lw	ra,12(sp)
  be:	4492                	lw	s1,4(sp)

000000c0 <.LVL404>:
  c0:	000005b7          	lui	a1,0x0
			c0: R_RISCV_HI20	mm_ap_probe_cfm
			c0: R_RISCV_RELAX	*ABS*
  c4:	00058593          	mv	a1,a1
			c4: R_RISCV_LO12_I	mm_ap_probe_cfm
			c4: R_RISCV_RELAX	*ABS*
  c8:	0141                	addi	sp,sp,16
  ca:	00000317          	auipc	t1,0x0
			ca: R_RISCV_CALL	txl_frame_send_null_frame
			ca: R_RISCV_RELAX	*ABS*
  ce:	00030067          	jr	t1 # ca <.LVL404+0xa>

000000d2 <.L220>:
  d2:	00e79b63          	bne	a5,a4,e8 <.L212>
			d2: R_RISCV_BRANCH	.L212
  d6:	8522                	mv	a0,s0
  d8:	4422                	lw	s0,8(sp)

000000da <.LVL406>:
  da:	40b2                	lw	ra,12(sp)
  dc:	4492                	lw	s1,4(sp)

000000de <.LVL407>:
  de:	0141                	addi	sp,sp,16
  e0:	00000317          	auipc	t1,0x0
			e0: R_RISCV_CALL	chan_bcn_detect_start
			e0: R_RISCV_RELAX	*ABS*
  e4:	00030067          	jr	t1 # e0 <.LVL407+0x2>

000000e8 <.L212>:
  e8:	40b2                	lw	ra,12(sp)
  ea:	4422                	lw	s0,8(sp)

000000ec <.LVL409>:
  ec:	4492                	lw	s1,4(sp)

000000ee <.LVL410>:
  ee:	0141                	addi	sp,sp,16
  f0:	8082                	ret

000000f2 <.L225>:
  f2:	8082                	ret

Disassembly of section .text.mm_get_rsn_wpa_ie:

00000000 <mm_get_rsn_wpa_ie>:
   0:	1b000713          	li	a4,432
   4:	02e50533          	mul	a0,a0,a4

00000008 <.LVL413>:
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	sta_info_tab
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE856>:
   c:	1141                	addi	sp,sp,-16

0000000e <.LBB860>:
   e:	00078793          	mv	a5,a5
			e: R_RISCV_LO12_I	sta_info_tab
			e: R_RISCV_RELAX	*ABS*

00000012 <.LBE860>:
  12:	c422                	sw	s0,8(sp)
  14:	c606                	sw	ra,12(sp)
  16:	5d800713          	li	a4,1496
  1a:	86ae                	mv	a3,a1
  1c:	000005b7          	lui	a1,0x0
			1c: R_RISCV_HI20	vif_info_tab
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LVL414>:
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	vif_info_tab
			20: R_RISCV_RELAX	*ABS*

00000024 <.LBB861>:
  24:	97aa                	add	a5,a5,a0
  26:	01a7c783          	lbu	a5,26(a5) # 1a <.LBE860+0x8>

0000002a <.LBE861>:
  2a:	8536                	mv	a0,a3
  2c:	02e787b3          	mul	a5,a5,a4

00000030 <.LVL416>:
  30:	00f58433          	add	s0,a1,a5
  34:	41144603          	lbu	a2,1041(s0)
  38:	3f178793          	addi	a5,a5,1009
  3c:	95be                	add	a1,a1,a5
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	memcpy
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL416+0xe>

00000046 <.LVL417>:
  46:	41144503          	lbu	a0,1041(s0)
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)
  4e:	0141                	addi	sp,sp,16
  50:	8082                	ret
