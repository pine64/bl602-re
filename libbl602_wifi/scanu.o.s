
libbl602_wifi/scanu.o:     file format elf32-littleriscv


Disassembly of section .text.scanu_confirm:

00000000 <scanu_confirm>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	scanu_env
			4: R_RISCV_RELAX	*ABS*
   8:	c64e                	sw	s3,12(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	scanu_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	ca26                	sw	s1,20(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	1687d583          	lhu	a1,360(a5)
  18:	16a7c783          	lbu	a5,362(a5)
  1c:	89aa                	mv	s3,a0
  1e:	00040413          	mv	s0,s0
			1e: R_RISCV_LO12_I	scanu_env
			1e: R_RISCV_RELAX	*ABS*
  22:	4685                	li	a3,1
  24:	4611                	li	a2,4
  26:	c7b5                	beqz	a5,92 <.L2>
			26: R_RISCV_RVC_BRANCH	.L2
  28:	6485                	lui	s1,0x1
  2a:	00348513          	addi	a0,s1,3 # 1003 <.LASF294+0x3>

0000002e <.LVL1>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ke_msg_alloc
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL1>

00000036 <.LVL2>:
  36:	892a                	mv	s2,a0

00000038 <.LVL3>:
  38:	4685                	li	a3,1
  3a:	00348513          	addi	a0,s1,3

0000003e <.LVL4>:
  3e:	4611                	li	a2,4
  40:	45b5                	li	a1,13
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ke_msg_alloc
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL4+0x4>

0000004a <.LVL5>:
  4a:	84aa                	mv	s1,a0

0000004c <.L3>:
  4c:	01390023          	sb	s3,0(s2)

00000050 <.LBB90>:
  50:	4008                	lw	a0,0(s0)

00000052 <.LBE90>:
  52:	1551                	addi	a0,a0,-12
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	ke_msg_free
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LBE90+0x2>

0000005c <.LVL8>:
  5c:	854a                	mv	a0,s2
  5e:	00042023          	sw	zero,0(s0) # 0 <scanu_confirm>
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	ke_msg_send
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL8+0x6>

0000006a <.LVL9>:
  6a:	c881                	beqz	s1,7a <.L4>
			6a: R_RISCV_RVC_BRANCH	.L4
  6c:	01348023          	sb	s3,0(s1)
  70:	8526                	mv	a0,s1
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	ke_msg_send
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL9+0x8>

0000007a <.L4>:
  7a:	4462                	lw	s0,24(sp)
  7c:	40f2                	lw	ra,28(sp)
  7e:	44d2                	lw	s1,20(sp)

00000080 <.LVL11>:
  80:	4942                	lw	s2,16(sp)

00000082 <.LVL12>:
  82:	49b2                	lw	s3,12(sp)
  84:	4581                	li	a1,0
  86:	4511                	li	a0,4
  88:	6105                	addi	sp,sp,32
  8a:	00000317          	auipc	t1,0x0
			8a: R_RISCV_CALL	ke_state_set
			8a: R_RISCV_RELAX	*ABS*
  8e:	00030067          	jr	t1 # 8a <.LVL12+0x8>

00000092 <.L2>:
  92:	6505                	lui	a0,0x1

00000094 <.LVL14>:
  94:	0505                	addi	a0,a0,1
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	ke_msg_alloc
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LVL14+0x2>

0000009e <.LVL15>:
  9e:	892a                	mv	s2,a0

000000a0 <.LVL16>:
  a0:	4481                	li	s1,0
  a2:	b76d                	j	4c <.L3>
			a2: R_RISCV_RVC_JUMP	.L3

Disassembly of section .text.scanu_raw_send_cfm:

00000000 <scanu_raw_send_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	6505                	lui	a0,0x1

00000008 <.LVL18>:
   8:	4691                	li	a3,4
   a:	4611                	li	a2,4
   c:	0519                	addi	a0,a0,6
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_msg_alloc
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL18+0x8>

00000018 <.LVL19>:
  18:	c100                	sw	s0,0(a0)
  1a:	4422                	lw	s0,8(sp)
  1c:	40b2                	lw	ra,12(sp)
  1e:	0141                	addi	sp,sp,16
  20:	00000317          	auipc	t1,0x0
			20: R_RISCV_CALL	ke_msg_send
			20: R_RISCV_RELAX	*ABS*
  24:	00030067          	jr	t1 # 20 <.LVL19+0x8>

Disassembly of section .text.scanu_init:

00000000 <scanu_init>:
   0:	1141                	addi	sp,sp,-16
   2:	4581                	li	a1,0
   4:	4511                	li	a0,4
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ke_state_set
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <scanu_init+0xa>

00000012 <.LVL22>:
  12:	00000437          	lui	s0,0x0
			12: R_RISCV_HI20	scanu_env
			12: R_RISCV_RELAX	*ABS*
  16:	00040513          	mv	a0,s0
			16: R_RISCV_LO12_I	scanu_env
			16: R_RISCV_RELAX	*ABS*
  1a:	19400613          	li	a2,404
  1e:	4581                	li	a1,0
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	memset
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL22+0xe>

00000028 <.LVL23>:
  28:	00000737          	lui	a4,0x0
			28: R_RISCV_HI20	scanu_dma_cb
			28: R_RISCV_RELAX	*ABS*
  2c:	00040793          	mv	a5,s0
			2c: R_RISCV_LO12_I	scanu_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00070713          	mv	a4,a4
			30: R_RISCV_LO12_I	scanu_dma_cb
			30: R_RISCV_RELAX	*ABS*
  34:	c7d8                	sw	a4,12(a5)
  36:	00000737          	lui	a4,0x0
			36: R_RISCV_HI20	scanu_add_ie
			36: R_RISCV_RELAX	*ABS*
  3a:	00070713          	mv	a4,a4
			3a: R_RISCV_LO12_I	scanu_add_ie
			3a: R_RISCV_RELAX	*ABS*
  3e:	0007a823          	sw	zero,16(a5)
  42:	c798                	sw	a4,8(a5)
  44:	000007b7          	lui	a5,0x0
			44: R_RISCV_HI20	scanu_add_ie+0x10
			44: R_RISCV_RELAX	*ABS*+0x10
  48:	01078793          	addi	a5,a5,16 # 10 <scanu_init+0x10>
			48: R_RISCV_LO12_I	scanu_add_ie+0x10
			48: R_RISCV_RELAX	*ABS*+0x10
  4c:	c35c                	sw	a5,4(a4)
  4e:	40b2                	lw	ra,12(sp)
  50:	4422                	lw	s0,8(sp)
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.scanu_find_result:

00000000 <scanu_find_result>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	scanu_env+0x18
			0: R_RISCV_RELAX	*ABS*+0x18
   4:	000006b7          	lui	a3,0x0
			4: R_RISCV_HI20	scanu_env+0x168
			4: R_RISCV_RELAX	*ABS*+0x168
   8:	872a                	mv	a4,a0
   a:	01878793          	addi	a5,a5,24 # 18 <.LVL26>
			a: R_RISCV_LO12_I	scanu_env+0x18
			a: R_RISCV_RELAX	*ABS*+0x18
   e:	16868693          	addi	a3,a3,360 # 168 <.LASF512>
			e: R_RISCV_LO12_I	scanu_env+0x168
			e: R_RISCV_RELAX	*ABS*+0x168

00000012 <.L17>:
  12:	0347c603          	lbu	a2,52(a5)
  16:	853e                	mv	a0,a5

00000018 <.LVL26>:
  18:	c631                	beqz	a2,64 <.L14>
			18: R_RISCV_RVC_BRANCH	.L14
  1a:	0007c803          	lbu	a6,0(a5)
  1e:	00074603          	lbu	a2,0(a4) # 0 <scanu_find_result>
  22:	04c81263          	bne	a6,a2,66 <.L15>
			22: R_RISCV_BRANCH	.L15
  26:	0017c803          	lbu	a6,1(a5)
  2a:	00174603          	lbu	a2,1(a4)
  2e:	02c81c63          	bne	a6,a2,66 <.L15>
			2e: R_RISCV_BRANCH	.L15
  32:	0027c803          	lbu	a6,2(a5)
  36:	00274603          	lbu	a2,2(a4)
  3a:	02c81663          	bne	a6,a2,66 <.L15>
			3a: R_RISCV_BRANCH	.L15
  3e:	0037c803          	lbu	a6,3(a5)
  42:	00374603          	lbu	a2,3(a4)
  46:	02c81063          	bne	a6,a2,66 <.L15>
			46: R_RISCV_BRANCH	.L15
  4a:	0047c803          	lbu	a6,4(a5)
  4e:	00474603          	lbu	a2,4(a4)
  52:	00c81a63          	bne	a6,a2,66 <.L15>
			52: R_RISCV_BRANCH	.L15
  56:	0057c803          	lbu	a6,5(a5)
  5a:	00574603          	lbu	a2,5(a4)
  5e:	00c81463          	bne	a6,a2,66 <.L15>
			5e: R_RISCV_BRANCH	.L15
  62:	8082                	ret

00000064 <.L14>:
  64:	e591                	bnez	a1,70 <.L13>
			64: R_RISCV_RVC_BRANCH	.L13

00000066 <.L15>:
  66:	03878793          	addi	a5,a5,56

0000006a <.LBE92>:
  6a:	fad794e3          	bne	a5,a3,12 <.L17>
			6a: R_RISCV_BRANCH	.L17
  6e:	4501                	li	a0,0

00000070 <.L13>:
  70:	8082                	ret

Disassembly of section .text.scanu_frame_handler:

00000000 <scanu_frame_handler>:
   0:	7175                	addi	sp,sp,-144
   2:	c522                	sw	s0,136(sp)
   4:	dcd2                	sw	s4,120(sp)
   6:	d8da                	sw	s6,112(sp)
   8:	c706                	sw	ra,140(sp)
   a:	c326                	sw	s1,132(sp)
   c:	c14a                	sw	s2,128(sp)
   e:	dece                	sw	s3,124(sp)
  10:	dad6                	sw	s5,116(sp)
  12:	d6de                	sw	s7,108(sp)
  14:	d4e2                	sw	s8,104(sp)
  16:	d2e6                	sw	s9,100(sp)
  18:	d0ea                	sw	s10,96(sp)
  1a:	ceee                	sw	s11,92(sp)
  1c:	00055583          	lhu	a1,0(a0) # 1000 <.LASF294>
  20:	00000a37          	lui	s4,0x0
			20: R_RISCV_HI20	scanu_env
			20: R_RISCV_RELAX	*ABS*
  24:	000a2783          	lw	a5,0(s4) # 0 <scanu_frame_handler>
			24: R_RISCV_LO12_I	scanu_env
			24: R_RISCV_RELAX	*ABS*
  28:	fdc58593          	addi	a1,a1,-36
  2c:	04050b13          	addi	s6,a0,64
  30:	05c2                	slli	a1,a1,0x10
  32:	842a                	mv	s0,a0
  34:	4601                	li	a2,0
  36:	81c1                	srli	a1,a1,0x10
  38:	855a                	mv	a0,s6

0000003a <.LVL29>:
  3a:	c23e                	sw	a5,4(sp)

0000003c <.LVL30>:
  3c:	14e7ca83          	lbu	s5,334(a5)

00000040 <.LVL31>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	mac_ie_find
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL31>

00000048 <.LVL32>:
  48:	000a0a13          	mv	s4,s4
			48: R_RISCV_LO12_I	scanu_env
			48: R_RISCV_RELAX	*ABS*
  4c:	c91d                	beqz	a0,82 <.L20>
			4c: R_RISCV_RVC_BRANCH	.L20

0000004e <.LBB145>:
  4e:	00154783          	lbu	a5,1(a0)

00000052 <.LBE146>:
  52:	02000713          	li	a4,32
  56:	14f76863          	bltu	a4,a5,1a6 <.L65>
			56: R_RISCV_BRANCH	.L65
  5a:	c785                	beqz	a5,82 <.L20>
			5a: R_RISCV_RVC_BRANCH	.L20

0000005c <.L21>:
  5c:	00254703          	lbu	a4,2(a0)
  60:	00250693          	addi	a3,a0,2
  64:	cf19                	beqz	a4,82 <.L20>
			64: R_RISCV_RVC_BRANCH	.L20
  66:	02f10623          	sb	a5,44(sp)

0000006a <.LBB148>:
  6a:	1078                	addi	a4,sp,44
  6c:	567d                	li	a2,-1

0000006e <.L22>:
  6e:	17fd                	addi	a5,a5,-1
  70:	0705                	addi	a4,a4,1
  72:	12c79d63          	bne	a5,a2,1ac <.L23>
			72: R_RISCV_BRANCH	.L23

00000076 <.LBE148>:
  76:	02c14783          	lbu	a5,44(sp)
  7a:	0898                	addi	a4,sp,80
  7c:	97ba                	add	a5,a5,a4
  7e:	fc078ea3          	sb	zero,-35(a5)

00000082 <.L20>:
  82:	4511                	li	a0,4

00000084 <.LVL40>:
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	ke_state_get
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL40>

0000008c <.LVL41>:
  8c:	4785                	li	a5,1
  8e:	7af51963          	bne	a0,a5,840 <.L25>
			8e: R_RISCV_BRANCH	.L25
  92:	4585                	li	a1,1
  94:	02c40513          	addi	a0,s0,44 # 2c <scanu_frame_handler+0x2c>
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	scanu_find_result
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL41+0xc>

000000a0 <.LVL42>:
  a0:	8c2a                	mv	s8,a0

000000a2 <.LVL43>:
  a2:	78050f63          	beqz	a0,840 <.L25>
			a2: R_RISCV_BRANCH	.L25
  a6:	16ca4783          	lbu	a5,364(s4)
  aa:	0017f713          	andi	a4,a5,1
  ae:	e339                	bnez	a4,f4 <.L27>
			ae: R_RISCV_RVC_BRANCH	.L27
  b0:	02c44703          	lbu	a4,44(s0)
  b4:	78f71663          	bne	a4,a5,840 <.L25>
			b4: R_RISCV_BRANCH	.L25
  b8:	02d44703          	lbu	a4,45(s0)
  bc:	16da4783          	lbu	a5,365(s4)
  c0:	78f71063          	bne	a4,a5,840 <.L25>
			c0: R_RISCV_BRANCH	.L25
  c4:	02e44703          	lbu	a4,46(s0)
  c8:	16ea4783          	lbu	a5,366(s4)
  cc:	76f71a63          	bne	a4,a5,840 <.L25>
			cc: R_RISCV_BRANCH	.L25
  d0:	02f44703          	lbu	a4,47(s0)
  d4:	16fa4783          	lbu	a5,367(s4)
  d8:	76f71463          	bne	a4,a5,840 <.L25>
			d8: R_RISCV_BRANCH	.L25
  dc:	03044703          	lbu	a4,48(s0)
  e0:	170a4783          	lbu	a5,368(s4)
  e4:	74f71e63          	bne	a4,a5,840 <.L25>
			e4: R_RISCV_BRANCH	.L25
  e8:	03144703          	lbu	a4,49(s0)
  ec:	171a4783          	lbu	a5,369(s4)
  f0:	74f71863          	bne	a4,a5,840 <.L25>
			f0: R_RISCV_BRANCH	.L25

000000f4 <.L27>:
  f4:	02c45783          	lhu	a5,44(s0)
  f8:	00fc1023          	sh	a5,0(s8)
  fc:	02e45783          	lhu	a5,46(s0)
 100:	00fc1123          	sh	a5,2(s8)
 104:	03045783          	lhu	a5,48(s0)
 108:	00fc1223          	sh	a5,4(s8)
 10c:	03d44783          	lbu	a5,61(s0)
 110:	03c44703          	lbu	a4,60(s0)
 114:	07a2                	slli	a5,a5,0x8
 116:	8fd9                	or	a5,a5,a4
 118:	02fc1823          	sh	a5,48(s8)
 11c:	03f44783          	lbu	a5,63(s0)
 120:	03e44703          	lbu	a4,62(s0)
 124:	07a2                	slli	a5,a5,0x8
 126:	8fd9                	or	a5,a5,a4
 128:	02fc1923          	sh	a5,50(s8)
 12c:	8b85                	andi	a5,a5,1
 12e:	e391                	bnez	a5,132 <.L28>
			12e: R_RISCV_RVC_BRANCH	.L28
 130:	4789                	li	a5,2

00000132 <.L28>:
 132:	02fc1423          	sh	a5,40(s8)

00000136 <.LVL44>:
 136:	00045903          	lhu	s2,0(s0)

0000013a <.LVL45>:
 13a:	4601                	li	a2,0
 13c:	855a                	mv	a0,s6

0000013e <.LVL46>:
 13e:	fdc90913          	addi	s2,s2,-36

00000142 <.LVL47>:
 142:	0942                	slli	s2,s2,0x10

00000144 <.LVL48>:
 144:	01095913          	srli	s2,s2,0x10
 148:	85ca                	mv	a1,s2
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	mac_ie_find
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LVL48+0x6>

00000152 <.LVL49>:
 152:	c949                	beqz	a0,1e4 <.L29>
			152: R_RISCV_RVC_BRANCH	.L29

00000154 <.LBB154>:
 154:	00154783          	lbu	a5,1(a0)

00000158 <.LBE155>:
 158:	02000713          	li	a4,32
 15c:	04f76e63          	bltu	a4,a5,1b8 <.L66>
			15c: R_RISCV_BRANCH	.L66
 160:	efb1                	bnez	a5,1bc <.L30>
			160: R_RISCV_RVC_BRANCH	.L30

00000162 <.L31>:
 162:	01a40783          	lb	a5,26(s0)
 166:	02fc0b23          	sb	a5,54(s8)
 16a:	01940783          	lb	a5,25(s0)
 16e:	02fc0ba3          	sb	a5,55(s8)
 172:	4792                	lw	a5,4(sp)
 174:	1507c783          	lbu	a5,336(a5)
 178:	c7d1                	beqz	a5,204 <.L35>
			178: R_RISCV_RVC_BRANCH	.L35
 17a:	4792                	lw	a5,4(sp)
 17c:	4481                	li	s1,0

0000017e <.LBB163>:
 17e:	007c0b93          	addi	s7,s8,7
 182:	0fc78993          	addi	s3,a5,252

00000186 <.L36>:
 186:	4792                	lw	a5,4(sp)
 188:	1507c783          	lbu	a5,336(a5)
 18c:	06f4d763          	bge	s1,a5,1fa <.L42>
			18c: R_RISCV_BRANCH	.L42

00000190 <.LBB164>:
 190:	0009c783          	lbu	a5,0(s3)
 194:	cba5                	beqz	a5,204 <.L35>
			194: R_RISCV_RVC_BRANCH	.L35
 196:	006c4603          	lbu	a2,6(s8)
 19a:	04f60863          	beq	a2,a5,1ea <.L39>
			19a: R_RISCV_BRANCH	.L39

0000019e <.L40>:
 19e:	0485                	addi	s1,s1,1

000001a0 <.LVL55>:
 1a0:	02298993          	addi	s3,s3,34
 1a4:	b7cd                	j	186 <.L36>
			1a4: R_RISCV_RVC_JUMP	.L36

000001a6 <.L65>:
 1a6:	02000793          	li	a5,32
 1aa:	bd4d                	j	5c <.L21>
			1aa: R_RISCV_RVC_JUMP	.L21

000001ac <.L23>:
 1ac:	0006c583          	lbu	a1,0(a3)
 1b0:	0685                	addi	a3,a3,1

000001b2 <.LVL58>:
 1b2:	00b70023          	sb	a1,0(a4)
 1b6:	bd65                	j	6e <.L22>
			1b6: R_RISCV_RVC_JUMP	.L22

000001b8 <.L66>:
 1b8:	02000793          	li	a5,32

000001bc <.L30>:
 1bc:	00254683          	lbu	a3,2(a0)
 1c0:	00250713          	addi	a4,a0,2
 1c4:	ded9                	beqz	a3,162 <.L31>
			1c4: R_RISCV_RVC_BRANCH	.L31
 1c6:	00fc0323          	sb	a5,6(s8)
 1ca:	007c0693          	addi	a3,s8,7

000001ce <.LBB157>:
 1ce:	567d                	li	a2,-1

000001d0 <.L33>:
 1d0:	17fd                	addi	a5,a5,-1
 1d2:	f8c788e3          	beq	a5,a2,162 <.L31>
			1d2: R_RISCV_BRANCH	.L31

000001d6 <.LBB159>:
 1d6:	00074583          	lbu	a1,0(a4)

000001da <.LBE159>:
 1da:	0685                	addi	a3,a3,1

000001dc <.LBB162>:
 1dc:	0705                	addi	a4,a4,1

000001de <.LBE162>:
 1de:	feb68fa3          	sb	a1,-1(a3)
 1e2:	b7fd                	j	1d0 <.L33>
			1e2: R_RISCV_RVC_JUMP	.L33

000001e4 <.L29>:
 1e4:	000c0323          	sb	zero,6(s8)
 1e8:	bfad                	j	162 <.L31>
			1e8: R_RISCV_RVC_JUMP	.L31

000001ea <.L39>:
 1ea:	85de                	mv	a1,s7
 1ec:	00198513          	addi	a0,s3,1
 1f0:	00000097          	auipc	ra,0x0
			1f0: R_RISCV_CALL	memcmp
			1f0: R_RISCV_RELAX	*ABS*
 1f4:	000080e7          	jalr	ra # 1f0 <.L39+0x6>

000001f8 <.LVL69>:
 1f8:	f15d                	bnez	a0,19e <.L40>
			1f8: R_RISCV_RVC_BRANCH	.L40

000001fa <.L42>:
 1fa:	4792                	lw	a5,4(sp)
 1fc:	1507c783          	lbu	a5,336(a5)
 200:	64978063          	beq	a5,s1,840 <.L25>
			200: R_RISCV_BRANCH	.L25

00000204 <.L35>:
 204:	460d                	li	a2,3
 206:	85ca                	mv	a1,s2
 208:	855a                	mv	a0,s6
 20a:	00000097          	auipc	ra,0x0
			20a: R_RISCV_CALL	mac_ie_find
			20a: R_RISCV_RELAX	*ABS*
 20e:	000080e7          	jalr	ra # 20a <.L35+0x6>

00000212 <.LVL72>:
 212:	50050163          	beqz	a0,714 <.L113>
			212: R_RISCV_BRANCH	.L113

00000216 <.LBB168>:
 216:	00254583          	lbu	a1,2(a0)

0000021a <.LBE169>:
 21a:	00644503          	lbu	a0,6(s0)

0000021e <.LBB171>:
 21e:	4c051363          	bnez	a0,6e4 <.L43>
			21e: R_RISCV_BRANCH	.L43
 222:	fff58793          	addi	a5,a1,-1
 226:	4735                	li	a4,13
 228:	4ef76363          	bltu	a4,a5,70e <.L70>
			228: R_RISCV_BRANCH	.L70
 22c:	47b9                	li	a5,14
 22e:	4cf58c63          	beq	a1,a5,706 <.L68>
			22e: R_RISCV_BRANCH	.L68
 232:	4795                	li	a5,5
 234:	02f585b3          	mul	a1,a1,a5

00000238 <.LVL76>:
 238:	6785                	lui	a5,0x1
 23a:	96778793          	addi	a5,a5,-1689 # 967 <.LASF655+0x4>
 23e:	95be                	add	a1,a1,a5
 240:	05c2                	slli	a1,a1,0x10
 242:	81c1                	srli	a1,a1,0x10

00000244 <.L44>:
 244:	00000097          	auipc	ra,0x0
			244: R_RISCV_CALL	me_freq_to_chan_ptr
			244: R_RISCV_RELAX	*ABS*
 248:	000080e7          	jalr	ra # 244 <.L44>

0000024c <.LVL78>:
 24c:	02ac2623          	sw	a0,44(s8)
 250:	01840783          	lb	a5,24(s0)
 254:	035c0703          	lb	a4,53(s8)
 258:	00f75463          	bge	a4,a5,260 <.L46>
			258: R_RISCV_BRANCH	.L46

0000025c <.L115>:
 25c:	02fc0aa3          	sb	a5,53(s8)

00000260 <.L46>:
 260:	16aa4783          	lbu	a5,362(s4)
 264:	5a078f63          	beqz	a5,822 <.L48>
			264: R_RISCV_BRANCH	.L48

00000268 <.LBB175>:
 268:	5d800993          	li	s3,1496
 26c:	033a89b3          	mul	s3,s5,s3
 270:	000004b7          	lui	s1,0x0
			270: R_RISCV_HI20	vif_info_tab
			270: R_RISCV_RELAX	*ABS*
 274:	00048d93          	mv	s11,s1
			274: R_RISCV_LO12_I	vif_info_tab
			274: R_RISCV_RELAX	*ABS*
 278:	02200613          	li	a2,34
 27c:	006c0593          	addi	a1,s8,6
 280:	00048493          	mv	s1,s1
			280: R_RISCV_LO12_I	vif_info_tab
			280: R_RISCV_RELAX	*ABS*
 284:	35898c93          	addi	s9,s3,856
 288:	01bc87b3          	add	a5,s9,s11
 28c:	c43e                	sw	a5,8(sp)

0000028e <.LVL79>:
 28e:	028c5783          	lhu	a5,40(s8)

00000292 <.LVL80>:
 292:	013d8bb3          	add	s7,s11,s3
 296:	37eb8513          	addi	a0,s7,894
 29a:	3afb9023          	sh	a5,928(s7)
 29e:	000c2783          	lw	a5,0(s8)
 2a2:	3b098d13          	addi	s10,s3,944
 2a6:	9d6e                	add	s10,s10,s11
 2a8:	36fbac23          	sw	a5,888(s7)
 2ac:	004c5783          	lhu	a5,4(s8)
 2b0:	36fb9e23          	sh	a5,892(s7)
 2b4:	032c5783          	lhu	a5,50(s8)
 2b8:	3afb9723          	sh	a5,942(s7)
 2bc:	030c5783          	lhu	a5,48(s8)
 2c0:	3afb9623          	sh	a5,940(s7)
 2c4:	00000097          	auipc	ra,0x0
			2c4: R_RISCV_CALL	memcpy
			2c4: R_RISCV_RELAX	*ABS*
 2c8:	000080e7          	jalr	ra # 2c4 <.LVL80+0x32>

000002cc <.LVL81>:
 2cc:	02cc2783          	lw	a5,44(s8)
 2d0:	3e0ba023          	sw	zero,992(s7)
 2d4:	866a                	mv	a2,s10
 2d6:	3afba223          	sw	a5,932(s7)
 2da:	036c0783          	lb	a5,54(s8)
 2de:	85ca                	mv	a1,s2
 2e0:	855a                	mv	a0,s6
 2e2:	3cfb8aa3          	sb	a5,981(s7)
 2e6:	037c0783          	lb	a5,55(s8)
 2ea:	3cfb8b23          	sb	a5,982(s7)
 2ee:	00000097          	auipc	ra,0x0
			2ee: R_RISCV_CALL	me_extract_rate_set
			2ee: R_RISCV_RELAX	*ABS*
 2f2:	000080e7          	jalr	ra # 2ee <.LVL81+0x22>

000002f6 <.LVL82>:
 2f6:	02cc2783          	lw	a5,44(s8)
 2fa:	0027c783          	lbu	a5,2(a5)
 2fe:	e39d                	bnez	a5,324 <.L49>
			2fe: R_RISCV_RVC_BRANCH	.L49

00000300 <.LBB176>:
 300:	4585                	li	a1,1
 302:	856a                	mv	a0,s10
 304:	00000097          	auipc	ra,0x0
			304: R_RISCV_CALL	me_legacy_rate_bitfield_build
			304: R_RISCV_RELAX	*ABS*
 308:	000080e7          	jalr	ra # 304 <.LBB176+0x4>

0000030c <.LVL83>:
 30c:	893d                	andi	a0,a0,15

0000030e <.LVL84>:
 30e:	42050663          	beqz	a0,73a <.L50>
			30e: R_RISCV_BRANCH	.L50

00000312 <.LBB177>:
 312:	00000097          	auipc	ra,0x0
			312: R_RISCV_CALL	__clzsi2
			312: R_RISCV_RELAX	*ABS*
 316:	000080e7          	jalr	ra # 312 <.LBB177>

0000031a <.LBE177>:
 31a:	47fd                	li	a5,31
 31c:	40a78533          	sub	a0,a5,a0
 320:	3cab8ba3          	sb	a0,983(s7)

00000324 <.L49>:
 324:	00000637          	lui	a2,0x0
			324: R_RISCV_HI20	.LC0
			324: R_RISCV_RELAX	*ABS*
 328:	4695                	li	a3,5
 32a:	00060613          	mv	a2,a2
			32a: R_RISCV_LO12_I	.LC0
			32a: R_RISCV_RELAX	*ABS*
 32e:	85ca                	mv	a1,s2
 330:	855a                	mv	a0,s6
 332:	00000097          	auipc	ra,0x0
			332: R_RISCV_CALL	mac_vsie_find
			332: R_RISCV_RELAX	*ABS*
 336:	000080e7          	jalr	ra # 332 <.L49+0xe>

0000033a <.LVL87>:
 33a:	40050463          	beqz	a0,742 <.L51>
			33a: R_RISCV_BRANCH	.L51

0000033e <.LBB179>:
 33e:	5d800793          	li	a5,1496
 342:	02fa87b3          	mul	a5,s5,a5

00000346 <.LBB182>:
 346:	00854703          	lbu	a4,8(a0)

0000034a <.LBE182>:
 34a:	97a6                	add	a5,a5,s1
 34c:	3ce78023          	sb	a4,960(a5)
 350:	3ae7d703          	lhu	a4,942(a5)
 354:	20076713          	ori	a4,a4,512
 358:	3ae79723          	sh	a4,942(a5)

0000035c <.LBB183>:
 35c:	00b54703          	lbu	a4,11(a0)
 360:	00a54683          	lbu	a3,10(a0)
 364:	0722                	slli	a4,a4,0x8
 366:	8f55                	or	a4,a4,a3
 368:	00c54683          	lbu	a3,12(a0)
 36c:	06c2                	slli	a3,a3,0x10
 36e:	8f55                	or	a4,a4,a3
 370:	00d54683          	lbu	a3,13(a0)
 374:	06e2                	slli	a3,a3,0x18
 376:	8ed9                	or	a3,a3,a4

00000378 <.LBB216>:
 378:	0086d613          	srli	a2,a3,0x8
 37c:	0036d713          	srli	a4,a3,0x3
 380:	0612                	slli	a2,a2,0x4
 382:	8abd                	andi	a3,a3,15

00000384 <.LVL92>:
 384:	00277593          	andi	a1,a4,2
 388:	8ed1                	or	a3,a3,a2
 38a:	3cb780a3          	sb	a1,961(a5)

0000038e <.LVL93>:
 38e:	3cd7a423          	sw	a3,968(a5)

00000392 <.LBB185>:
 392:	00f54603          	lbu	a2,15(a0)
 396:	00e54683          	lbu	a3,14(a0)
 39a:	0622                	slli	a2,a2,0x8
 39c:	8e55                	or	a2,a2,a3
 39e:	01054683          	lbu	a3,16(a0)
 3a2:	06c2                	slli	a3,a3,0x10
 3a4:	8e55                	or	a2,a2,a3
 3a6:	01154683          	lbu	a3,17(a0)
 3aa:	06e2                	slli	a3,a3,0x18
 3ac:	8ed1                	or	a3,a3,a2

000003ae <.LBB217>:
 3ae:	0046d713          	srli	a4,a3,0x4
 3b2:	0086d613          	srli	a2,a3,0x8
 3b6:	0612                	slli	a2,a2,0x4
 3b8:	8b05                	andi	a4,a4,1
 3ba:	8abd                	andi	a3,a3,15

000003bc <.LVL96>:
 3bc:	8ed1                	or	a3,a3,a2
 3be:	8f4d                	or	a4,a4,a1
 3c0:	3ce780a3          	sb	a4,961(a5)

000003c4 <.LVL97>:
 3c4:	3cd7a223          	sw	a3,964(a5)

000003c8 <.LBB187>:
 3c8:	01354603          	lbu	a2,19(a0)
 3cc:	01254683          	lbu	a3,18(a0)
 3d0:	0622                	slli	a2,a2,0x8
 3d2:	8e55                	or	a2,a2,a3
 3d4:	01454683          	lbu	a3,20(a0)
 3d8:	06c2                	slli	a3,a3,0x10
 3da:	8e55                	or	a2,a2,a3
 3dc:	01554683          	lbu	a3,21(a0)
 3e0:	06e2                	slli	a3,a3,0x18
 3e2:	8ed1                	or	a3,a3,a2

000003e4 <.LBB218>:
 3e4:	0026d613          	srli	a2,a3,0x2
 3e8:	8a11                	andi	a2,a2,4
 3ea:	8f51                	or	a4,a4,a2
 3ec:	0086d613          	srli	a2,a3,0x8
 3f0:	0612                	slli	a2,a2,0x4
 3f2:	8abd                	andi	a3,a3,15

000003f4 <.LVL100>:
 3f4:	8ed1                	or	a3,a3,a2
 3f6:	3ce780a3          	sb	a4,961(a5)

000003fa <.LVL101>:
 3fa:	3cd7a623          	sw	a3,972(a5)

000003fe <.LBB189>:
 3fe:	01754603          	lbu	a2,23(a0)
 402:	01654683          	lbu	a3,22(a0)
 406:	0622                	slli	a2,a2,0x8
 408:	8e55                	or	a2,a2,a3
 40a:	01854683          	lbu	a3,24(a0)
 40e:	06c2                	slli	a3,a3,0x10
 410:	8e55                	or	a2,a2,a3
 412:	01954683          	lbu	a3,25(a0)
 416:	06e2                	slli	a3,a3,0x18
 418:	8ed1                	or	a3,a3,a2

0000041a <.LBB219>:
 41a:	0016d613          	srli	a2,a3,0x1
 41e:	8a21                	andi	a2,a2,8
 420:	8f51                	or	a4,a4,a2
 422:	3ce780a3          	sb	a4,961(a5)
 426:	0086d713          	srli	a4,a3,0x8
 42a:	0712                	slli	a4,a4,0x4
 42c:	8abd                	andi	a3,a3,15

0000042e <.LVL104>:
 42e:	8ed9                	or	a3,a3,a4
 430:	3e07a703          	lw	a4,992(a5)
 434:	3cd7a823          	sw	a3,976(a5)
 438:	00176713          	ori	a4,a4,1
 43c:	3ee7a023          	sw	a4,992(a5)

00000440 <.L52>:
 440:	000007b7          	lui	a5,0x0
			440: R_RISCV_HI20	me_env+0x2e
			440: R_RISCV_RELAX	*ABS*+0x2e
 444:	02e7c783          	lbu	a5,46(a5) # 2e <scanu_frame_handler+0x2e>
			444: R_RISCV_LO12_I	me_env+0x2e
			444: R_RISCV_RELAX	*ABS*+0x2e

00000448 <.LBE219>:
 448:	4d01                	li	s10,0

0000044a <.LBB220>:
 44a:	cbdd                	beqz	a5,500 <.L53>
			44a: R_RISCV_RVC_BRANCH	.L53
 44c:	5d800b93          	li	s7,1496
 450:	037a8bb3          	mul	s7,s5,s7
 454:	9ba6                	add	s7,s7,s1
 456:	3e0bad03          	lw	s10,992(s7)
 45a:	001d7d13          	andi	s10,s10,1
 45e:	0a0d0163          	beqz	s10,500 <.L53>
			45e: R_RISCV_BRANCH	.L53
 462:	02d00613          	li	a2,45
 466:	85ca                	mv	a1,s2
 468:	855a                	mv	a0,s6

0000046a <.LVL105>:
 46a:	00000097          	auipc	ra,0x0
			46a: R_RISCV_CALL	mac_ie_find
			46a: R_RISCV_RELAX	*ABS*
 46e:	000080e7          	jalr	ra # 46a <.LVL105>

00000472 <.LVL106>:
 472:	cd35                	beqz	a0,4ee <.L54>
			472: R_RISCV_RVC_BRANCH	.L54

00000474 <.LBB191>:
 474:	00354783          	lbu	a5,3(a0)
 478:	00254703          	lbu	a4,2(a0)
 47c:	35b98593          	addi	a1,s3,859
 480:	07a2                	slli	a5,a5,0x8
 482:	8fd9                	or	a5,a5,a4

00000484 <.LBB221>:
 484:	34fb9c23          	sh	a5,856(s7)

00000488 <.LBB193>:
 488:	00454783          	lbu	a5,4(a0)

0000048c <.LBE193>:
 48c:	00550893          	addi	a7,a0,5

00000490 <.LBB195>:
 490:	46c1                	li	a3,16

00000492 <.LBE195>:
 492:	34fb8d23          	sb	a5,858(s7)

00000496 <.LBB201>:
 496:	4781                	li	a5,0

00000498 <.L55>:
 498:	00f88733          	add	a4,a7,a5
 49c:	00074603          	lbu	a2,0(a4)

000004a0 <.LBE197>:
 4a0:	00b78733          	add	a4,a5,a1
 4a4:	9726                	add	a4,a4,s1
 4a6:	00c70023          	sb	a2,0(a4)
 4aa:	0785                	addi	a5,a5,1

000004ac <.LVL114>:
 4ac:	fed796e3          	bne	a5,a3,498 <.L55>
			4ac: R_RISCV_BRANCH	.L55

000004b0 <.LBB203>:
 4b0:	01654703          	lbu	a4,22(a0)
 4b4:	01554783          	lbu	a5,21(a0)
 4b8:	0722                	slli	a4,a4,0x8
 4ba:	8f5d                	or	a4,a4,a5

000004bc <.LBB222>:
 4bc:	5d800793          	li	a5,1496
 4c0:	02fa87b3          	mul	a5,s5,a5
 4c4:	97a6                	add	a5,a5,s1
 4c6:	36e79623          	sh	a4,876(a5)

000004ca <.LBB205>:
 4ca:	01854703          	lbu	a4,24(a0)
 4ce:	01754683          	lbu	a3,23(a0)
 4d2:	0722                	slli	a4,a4,0x8

000004d4 <.LBE208>:
 4d4:	8f55                	or	a4,a4,a3
 4d6:	36e7a823          	sw	a4,880(a5)

000004da <.LBB209>:
 4da:	01b54703          	lbu	a4,27(a0)

000004de <.LBE209>:
 4de:	36e78a23          	sb	a4,884(a5)
 4e2:	3e07a703          	lw	a4,992(a5)
 4e6:	00276713          	ori	a4,a4,2
 4ea:	3ee7a023          	sw	a4,992(a5)

000004ee <.L54>:
 4ee:	03d00613          	li	a2,61
 4f2:	85ca                	mv	a1,s2
 4f4:	855a                	mv	a0,s6

000004f6 <.LVL120>:
 4f6:	00000097          	auipc	ra,0x0
			4f6: R_RISCV_CALL	mac_ie_find
			4f6: R_RISCV_RELAX	*ABS*
 4fa:	000080e7          	jalr	ra # 4f6 <.LVL120>

000004fe <.LVL121>:
 4fe:	8d2a                	mv	s10,a0

00000500 <.L53>:
 500:	5d800893          	li	a7,1496
 504:	031a88b3          	mul	a7,s5,a7
 508:	00000737          	lui	a4,0x0
			508: R_RISCV_HI20	sm_env
			508: R_RISCV_RELAX	*ABS*
 50c:	00072783          	lw	a5,0(a4) # 0 <scanu_frame_handler>
			50c: R_RISCV_LO12_I	sm_env
			50c: R_RISCV_RELAX	*ABS*
 510:	00070713          	mv	a4,a4
			510: R_RISCV_LO12_I	sm_env
			510: R_RISCV_RELAX	*ABS*
 514:	cc3a                	sw	a4,24(sp)
 516:	1407c783          	lbu	a5,320(a5)
 51a:	01148cb3          	add	s9,s1,a7
 51e:	3efc8423          	sb	a5,1000(s9)
 522:	2a078863          	beqz	a5,7d2 <.L56>
			522: R_RISCV_BRANCH	.L56
 526:	3e0ca783          	lw	a5,992(s9)
 52a:	2a07c463          	bltz	a5,7d2 <.L56>
			52a: R_RISCV_BRANCH	.L56
 52e:	3e998713          	addi	a4,s3,1001
 532:	9726                	add	a4,a4,s1
 534:	853a                	mv	a0,a4
 536:	4609                	li	a2,2
 538:	4581                	li	a1,0
 53a:	ce3a                	sw	a4,28(sp)
 53c:	00000097          	auipc	ra,0x0
			53c: R_RISCV_CALL	memset
			53c: R_RISCV_RELAX	*ABS*
 540:	000080e7          	jalr	ra # 53c <.L53+0x3c>

00000544 <.LVL123>:
 544:	3ed98793          	addi	a5,s3,1005
 548:	97a6                	add	a5,a5,s1
 54a:	853e                	mv	a0,a5
 54c:	4605                	li	a2,1
 54e:	4581                	li	a1,0
 550:	3ee98d93          	addi	s11,s3,1006
 554:	c63e                	sw	a5,12(sp)
 556:	9da6                	add	s11,s11,s1
 558:	00000097          	auipc	ra,0x0
			558: R_RISCV_CALL	memset
			558: R_RISCV_RELAX	*ABS*
 55c:	000080e7          	jalr	ra # 558 <.LVL123+0x14>

00000560 <.LVL124>:
 560:	4605                	li	a2,1
 562:	4581                	li	a1,0
 564:	856e                	mv	a0,s11
 566:	00000097          	auipc	ra,0x0
			566: R_RISCV_CALL	memset
			566: R_RISCV_RELAX	*ABS*
 56a:	000080e7          	jalr	ra # 566 <.LVL124+0x6>

0000056e <.LVL125>:
 56e:	3eb98793          	addi	a5,s3,1003
 572:	97a6                	add	a5,a5,s1
 574:	4605                	li	a2,1
 576:	4581                	li	a1,0
 578:	853e                	mv	a0,a5
 57a:	c83e                	sw	a5,16(sp)
 57c:	00000097          	auipc	ra,0x0
			57c: R_RISCV_CALL	memset
			57c: R_RISCV_RELAX	*ABS*
 580:	000080e7          	jalr	ra # 57c <.LVL125+0xe>

00000584 <.LVL126>:
 584:	3ec98793          	addi	a5,s3,1004
 588:	97a6                	add	a5,a5,s1
 58a:	4605                	li	a2,1
 58c:	4581                	li	a1,0
 58e:	853e                	mv	a0,a5
 590:	ca3e                	sw	a5,20(sp)
 592:	00000097          	auipc	ra,0x0
			592: R_RISCV_CALL	memset
			592: R_RISCV_RELAX	*ABS*
 596:	000080e7          	jalr	ra # 592 <.LVL126+0xe>

0000059a <.LVL127>:
 59a:	85ca                	mv	a1,s2
 59c:	400c88a3          	sb	zero,1041(s9)
 5a0:	3e0c87a3          	sb	zero,1007(s9)
 5a4:	3e0c8823          	sb	zero,1008(s9)
 5a8:	03000613          	li	a2,48
 5ac:	855a                	mv	a0,s6
 5ae:	00000097          	auipc	ra,0x0
			5ae: R_RISCV_CALL	mac_ie_find
			5ae: R_RISCV_RELAX	*ABS*
 5b2:	000080e7          	jalr	ra # 5ae <.LVL127+0x14>

000005b6 <.LVL128>:
 5b6:	3f198b93          	addi	s7,s3,1009
 5ba:	85aa                	mv	a1,a0

000005bc <.LVL129>:
 5bc:	9ba6                	add	s7,s7,s1
 5be:	c145                	beqz	a0,65e <.L57>
			5be: R_RISCV_RVC_BRANCH	.L57

000005c0 <.LBB211>:
 5c0:	00154603          	lbu	a2,1(a0)
 5c4:	855e                	mv	a0,s7

000005c6 <.LVL131>:
 5c6:	0609                	addi	a2,a2,2
 5c8:	0ff67613          	andi	a2,a2,255
 5cc:	40cc88a3          	sb	a2,1041(s9)
 5d0:	00000097          	auipc	ra,0x0
			5d0: R_RISCV_CALL	memcpy
			5d0: R_RISCV_RELAX	*ABS*
 5d4:	000080e7          	jalr	ra # 5d0 <.LVL131+0xa>

000005d8 <.LVL132>:
 5d8:	3f0cc783          	lbu	a5,1008(s9)
 5dc:	4772                	lw	a4,28(sp)
 5de:	45b2                	lw	a1,12(sp)
 5e0:	3ef98693          	addi	a3,s3,1007
 5e4:	96a6                	add	a3,a3,s1
 5e6:	866e                	mv	a2,s11
 5e8:	855e                	mv	a0,s7
 5ea:	00000097          	auipc	ra,0x0
			5ea: R_RISCV_CALL	process_rsn_ie
			5ea: R_RISCV_RELAX	*ABS*
 5ee:	000080e7          	jalr	ra # 5ea <.LVL132+0x12>

000005f2 <.LVL133>:
 5f2:	3ecca583          	lw	a1,1004(s9)
 5f6:	40ac88a3          	sb	a0,1041(s9)
 5fa:	00000537          	lui	a0,0x0
			5fa: R_RISCV_HI20	.LC1
			5fa: R_RISCV_RELAX	*ABS*
 5fe:	0105d713          	srli	a4,a1,0x10
 602:	0115d693          	srli	a3,a1,0x11
 606:	0125d613          	srli	a2,a1,0x12
 60a:	81cd                	srli	a1,a1,0x13
 60c:	8b05                	andi	a4,a4,1
 60e:	8a85                	andi	a3,a3,1
 610:	8a05                	andi	a2,a2,1
 612:	8985                	andi	a1,a1,1
 614:	00050513          	mv	a0,a0
			614: R_RISCV_LO12_I	.LC1
			614: R_RISCV_RELAX	*ABS*
 618:	00000097          	auipc	ra,0x0
			618: R_RISCV_CALL	printf
			618: R_RISCV_RELAX	*ABS*
 61c:	000080e7          	jalr	ra # 618 <.LVL133+0x26>

00000620 <.LVL134>:
 620:	3ecca583          	lw	a1,1004(s9)
 624:	00000537          	lui	a0,0x0
			624: R_RISCV_HI20	.LC2
			624: R_RISCV_RELAX	*ABS*
 628:	00050513          	mv	a0,a0
			628: R_RISCV_LO12_I	.LC2
			628: R_RISCV_RELAX	*ABS*
 62c:	0085d713          	srli	a4,a1,0x8
 630:	0095d693          	srli	a3,a1,0x9
 634:	00a5d613          	srli	a2,a1,0xa
 638:	81ad                	srli	a1,a1,0xb
 63a:	8985                	andi	a1,a1,1
 63c:	8b05                	andi	a4,a4,1
 63e:	8a85                	andi	a3,a3,1
 640:	8a05                	andi	a2,a2,1
 642:	00000097          	auipc	ra,0x0
			642: R_RISCV_CALL	printf
			642: R_RISCV_RELAX	*ABS*
 646:	000080e7          	jalr	ra # 642 <.LVL134+0x22>

0000064a <.LVL135>:
 64a:	3efcc583          	lbu	a1,1007(s9)
 64e:	00000537          	lui	a0,0x0
			64e: R_RISCV_HI20	.LC3
			64e: R_RISCV_RELAX	*ABS*
 652:	00050513          	mv	a0,a0
			652: R_RISCV_LO12_I	.LC3
			652: R_RISCV_RELAX	*ABS*
 656:	00000097          	auipc	ra,0x0
			656: R_RISCV_CALL	printf
			656: R_RISCV_RELAX	*ABS*
 65a:	000080e7          	jalr	ra # 656 <.LVL135+0xc>

0000065e <.L57>:
 65e:	00000637          	lui	a2,0x0
			65e: R_RISCV_HI20	.LC4
			65e: R_RISCV_RELAX	*ABS*
 662:	85ca                	mv	a1,s2
 664:	4691                	li	a3,4
 666:	00060613          	mv	a2,a2
			666: R_RISCV_LO12_I	.LC4
			666: R_RISCV_RELAX	*ABS*
 66a:	855a                	mv	a0,s6
 66c:	00000097          	auipc	ra,0x0
			66c: R_RISCV_CALL	mac_vsie_find
			66c: R_RISCV_RELAX	*ABS*
 670:	000080e7          	jalr	ra # 66c <.L57+0xe>

00000674 <.LVL137>:
 674:	85aa                	mv	a1,a0

00000676 <.LVL138>:
 676:	c521                	beqz	a0,6be <.L59>
			676: R_RISCV_RVC_BRANCH	.L59
 678:	5d800993          	li	s3,1496
 67c:	033a89b3          	mul	s3,s5,s3
 680:	99a6                	add	s3,s3,s1
 682:	3e99c783          	lbu	a5,1001(s3)
 686:	0087e793          	ori	a5,a5,8
 68a:	3ef984a3          	sb	a5,1001(s3)

0000068e <.LVL139>:
 68e:	4119c783          	lbu	a5,1041(s3)
 692:	e795                	bnez	a5,6be <.L59>
			692: R_RISCV_RVC_BRANCH	.L59

00000694 <.LBB213>:
 694:	00154603          	lbu	a2,1(a0) # 1 <scanu_frame_handler+0x1>
 698:	855e                	mv	a0,s7

0000069a <.LVL141>:
 69a:	0609                	addi	a2,a2,2
 69c:	0ff67613          	andi	a2,a2,255
 6a0:	40c988a3          	sb	a2,1041(s3)
 6a4:	00000097          	auipc	ra,0x0
			6a4: R_RISCV_CALL	memcpy
			6a4: R_RISCV_RELAX	*ABS*
 6a8:	000080e7          	jalr	ra # 6a4 <.LVL141+0xa>

000006ac <.LVL142>:
 6ac:	4652                	lw	a2,20(sp)
 6ae:	45c2                	lw	a1,16(sp)
 6b0:	855e                	mv	a0,s7
 6b2:	00000097          	auipc	ra,0x0
			6b2: R_RISCV_CALL	process_wpa_ie
			6b2: R_RISCV_RELAX	*ABS*
 6b6:	000080e7          	jalr	ra # 6b2 <.LVL142+0x6>

000006ba <.LVL143>:
 6ba:	40a988a3          	sb	a0,1041(s3)

000006be <.L59>:
 6be:	47e2                	lw	a5,24(sp)
 6c0:	66cd                	lui	a3,0x13
 6c2:	80068693          	addi	a3,a3,-2048 # 12800 <.LASF438+0xfa85>
 6c6:	4388                	lw	a0,0(a5)
 6c8:	5d800793          	li	a5,1496

000006cc <.LVL144>:
 6cc:	02fa87b3          	mul	a5,s5,a5

000006d0 <.LVL145>:
 6d0:	02052823          	sw	zero,48(a0)
 6d4:	97a6                	add	a5,a5,s1
 6d6:	3e87a703          	lw	a4,1000(a5)
 6da:	8f75                	and	a4,a4,a3
 6dc:	c741                	beqz	a4,764 <.L61>
			6dc: R_RISCV_RVC_BRANCH	.L61
 6de:	47a5                	li	a5,9

000006e0 <.L116>:
 6e0:	d91c                	sw	a5,48(a0)
 6e2:	a879                	j	780 <.L62>
			6e2: R_RISCV_RVC_JUMP	.L62

000006e4 <.L43>:
 6e4:	4785                	li	a5,1
 6e6:	02f51463          	bne	a0,a5,70e <.L70>
			6e6: R_RISCV_BRANCH	.L70
 6ea:	fff58793          	addi	a5,a1,-1
 6ee:	0a400713          	li	a4,164
 6f2:	00f76e63          	bltu	a4,a5,70e <.L70>
			6f2: R_RISCV_BRANCH	.L70
 6f6:	4795                	li	a5,5
 6f8:	02f585b3          	mul	a1,a1,a5

000006fc <.LVL147>:
 6fc:	6785                	lui	a5,0x1
 6fe:	38878793          	addi	a5,a5,904 # 1388 <.LASF301+0x3>
 702:	95be                	add	a1,a1,a5

00000704 <.LVL148>:
 704:	b681                	j	244 <.L44>
			704: R_RISCV_RVC_JUMP	.L44

00000706 <.L68>:
 706:	6585                	lui	a1,0x1

00000708 <.LVL150>:
 708:	9b458593          	addi	a1,a1,-1612 # 9b4 <.LASF339+0x2>
 70c:	be25                	j	244 <.L44>
			70c: R_RISCV_RVC_JUMP	.L44

0000070e <.L70>:
 70e:	65c1                	lui	a1,0x10

00000710 <.LVL152>:
 710:	15fd                	addi	a1,a1,-1
 712:	be0d                	j	244 <.L44>
			712: R_RISCV_RVC_JUMP	.L44

00000714 <.L113>:
 714:	01840703          	lb	a4,24(s0)
 718:	035c0783          	lb	a5,53(s8)
 71c:	b4e7d2e3          	bge	a5,a4,260 <.L46>
			71c: R_RISCV_BRANCH	.L46
 720:	00445583          	lhu	a1,4(s0)
 724:	00644503          	lbu	a0,6(s0)

00000728 <.LVL154>:
 728:	00000097          	auipc	ra,0x0
			728: R_RISCV_CALL	me_freq_to_chan_ptr
			728: R_RISCV_RELAX	*ABS*
 72c:	000080e7          	jalr	ra # 728 <.LVL154>

00000730 <.LVL155>:
 730:	02ac2623          	sw	a0,44(s8)
 734:	01840783          	lb	a5,24(s0)
 738:	b615                	j	25c <.L115>
			738: R_RISCV_RVC_JUMP	.L115

0000073a <.L50>:
 73a:	4785                	li	a5,1
 73c:	3cfb8ba3          	sb	a5,983(s7)
 740:	b6d5                	j	324 <.L49>
			740: R_RISCV_RVC_JUMP	.L49

00000742 <.L51>:
 742:	5d800793          	li	a5,1496
 746:	02fa87b3          	mul	a5,s5,a5
 74a:	6705                	lui	a4,0x1
 74c:	a4370713          	addi	a4,a4,-1469 # a43 <.LASF116+0x4>
 750:	97a6                	add	a5,a5,s1
 752:	3ce7a223          	sw	a4,964(a5)
 756:	3ce7a423          	sw	a4,968(a5)
 75a:	3ce7a623          	sw	a4,972(a5)
 75e:	3ce7a823          	sw	a4,976(a5)
 762:	b9f9                	j	440 <.L52>
			762: R_RISCV_RVC_JUMP	.L52

00000764 <.L61>:
 764:	3ae7d703          	lhu	a4,942(a5)
 768:	8b41                	andi	a4,a4,16
 76a:	10070463          	beqz	a4,872 <.L63>
			76a: R_RISCV_BRANCH	.L63
 76e:	3e97c703          	lbu	a4,1001(a5)
 772:	00276713          	ori	a4,a4,2
 776:	3ee784a3          	sb	a4,1001(a5)
 77a:	4785                	li	a5,1
 77c:	02f50da3          	sb	a5,59(a0)

00000780 <.L62>:
 780:	5d800993          	li	s3,1496

00000784 <.LVL159>:
 784:	033a89b3          	mul	s3,s5,s3

00000788 <.LVL160>:
 788:	85de                	mv	a1,s7
 78a:	04050513          	addi	a0,a0,64
 78e:	99a6                	add	s3,s3,s1
 790:	4119c603          	lbu	a2,1041(s3)
 794:	00000097          	auipc	ra,0x0
			794: R_RISCV_CALL	memcpy
			794: R_RISCV_RELAX	*ABS*
 798:	000080e7          	jalr	ra # 794 <.LVL160+0xc>

0000079c <.LVL161>:
 79c:	47e2                	lw	a5,24(sp)
 79e:	4119c703          	lbu	a4,1041(s3)
 7a2:	00000537          	lui	a0,0x0
			7a2: R_RISCV_HI20	.LC5
			7a2: R_RISCV_RELAX	*ABS*
 7a6:	439c                	lw	a5,0(a5)
 7a8:	00050513          	mv	a0,a0
			7a8: R_RISCV_LO12_I	.LC5
			7a8: R_RISCV_RELAX	*ABS*
 7ac:	02e79b23          	sh	a4,54(a5)
 7b0:	3e89a583          	lw	a1,1000(s3)
 7b4:	0105d713          	srli	a4,a1,0x10
 7b8:	00d5d693          	srli	a3,a1,0xd
 7bc:	00b5d613          	srli	a2,a1,0xb
 7c0:	81a5                	srli	a1,a1,0x9
 7c2:	8b05                	andi	a4,a4,1
 7c4:	8a85                	andi	a3,a3,1
 7c6:	8a05                	andi	a2,a2,1
 7c8:	8985                	andi	a1,a1,1
 7ca:	00000097          	auipc	ra,0x0
			7ca: R_RISCV_CALL	printf
			7ca: R_RISCV_RELAX	*ABS*
 7ce:	000080e7          	jalr	ra # 7ca <.LVL161+0x2e>

000007d2 <.L56>:
 7d2:	4622                	lw	a2,8(sp)
 7d4:	4581                	li	a1,0
 7d6:	856a                	mv	a0,s10
 7d8:	00000097          	auipc	ra,0x0
			7d8: R_RISCV_CALL	me_bw_check
			7d8: R_RISCV_RELAX	*ABS*
 7dc:	000080e7          	jalr	ra # 7d8 <.L56+0x6>

000007e0 <.LVL163>:
 7e0:	4622                	lw	a2,8(sp)
 7e2:	85ca                	mv	a1,s2
 7e4:	855a                	mv	a0,s6
 7e6:	00000097          	auipc	ra,0x0
			7e6: R_RISCV_CALL	me_extract_power_constraint
			7e6: R_RISCV_RELAX	*ABS*
 7ea:	000080e7          	jalr	ra # 7e6 <.LVL163+0x6>

000007ee <.LVL164>:
 7ee:	4622                	lw	a2,8(sp)
 7f0:	85ca                	mv	a1,s2
 7f2:	855a                	mv	a0,s6
 7f4:	00000097          	auipc	ra,0x0
			7f4: R_RISCV_CALL	me_extract_country_reg
			7f4: R_RISCV_RELAX	*ABS*
 7f8:	000080e7          	jalr	ra # 7f4 <.LVL164+0x6>

000007fc <.LVL165>:
 7fc:	4622                	lw	a2,8(sp)
 7fe:	85ca                	mv	a1,s2
 800:	855a                	mv	a0,s6
 802:	00000097          	auipc	ra,0x0
			802: R_RISCV_CALL	me_extract_mobility_domain
			802: R_RISCV_RELAX	*ABS*
 806:	000080e7          	jalr	ra # 802 <.LVL165+0x6>

0000080a <.LVL166>:
 80a:	5d800793          	li	a5,1496

0000080e <.LVL167>:
 80e:	02fa8ab3          	mul	s5,s5,a5

00000812 <.LVL168>:
 812:	80000737          	lui	a4,0x80000
 816:	94d6                	add	s1,s1,s5
 818:	3e04a783          	lw	a5,992(s1) # 3e0 <.LBB187+0x18>
 81c:	8fd9                	or	a5,a5,a4
 81e:	3ef4a023          	sw	a5,992(s1)

00000822 <.L48>:
 822:	034c4783          	lbu	a5,52(s8)
 826:	e791                	bnez	a5,832 <.L64>
			826: R_RISCV_RVC_BRANCH	.L64
 828:	014a5783          	lhu	a5,20(s4)
 82c:	0785                	addi	a5,a5,1
 82e:	00fa1a23          	sh	a5,20(s4)

00000832 <.L64>:
 832:	4792                	lw	a5,4(sp)
 834:	1507c783          	lbu	a5,336(a5)
 838:	c781                	beqz	a5,840 <.L25>
			838: R_RISCV_RVC_BRANCH	.L25
 83a:	4785                	li	a5,1
 83c:	02fc0a23          	sb	a5,52(s8)

00000840 <.L25>:
 840:	6585                	lui	a1,0x1
 842:	8522                	mv	a0,s0
 844:	4691                	li	a3,4
 846:	4635                	li	a2,13
 848:	0591                	addi	a1,a1,4
 84a:	00000097          	auipc	ra,0x0
			84a: R_RISCV_CALL	ke_msg_forward_and_change_id
			84a: R_RISCV_RELAX	*ABS*
 84e:	000080e7          	jalr	ra # 84a <.L25+0xa>

00000852 <.LVL171>:
 852:	40ba                	lw	ra,140(sp)
 854:	442a                	lw	s0,136(sp)

00000856 <.LVL172>:
 856:	449a                	lw	s1,132(sp)
 858:	490a                	lw	s2,128(sp)
 85a:	59f6                	lw	s3,124(sp)
 85c:	5a66                	lw	s4,120(sp)
 85e:	5ad6                	lw	s5,116(sp)
 860:	5b46                	lw	s6,112(sp)

00000862 <.LVL173>:
 862:	5bb6                	lw	s7,108(sp)
 864:	5c26                	lw	s8,104(sp)
 866:	5c96                	lw	s9,100(sp)
 868:	5d06                	lw	s10,96(sp)
 86a:	4df6                	lw	s11,92(sp)
 86c:	4505                	li	a0,1
 86e:	6149                	addi	sp,sp,144
 870:	8082                	ret

00000872 <.L63>:
 872:	4789                	li	a5,2
 874:	b5b5                	j	6e0 <.L116>
			874: R_RISCV_RVC_JUMP	.L116

Disassembly of section .text.scanu_search_by_bssid:

00000000 <scanu_search_by_bssid>:
   0:	4581                	li	a1,0
   2:	00000317          	auipc	t1,0x0
			2: R_RISCV_CALL	scanu_find_result
			2: R_RISCV_RELAX	*ABS*
   6:	00030067          	jr	t1 # 2 <scanu_search_by_bssid+0x2>

Disassembly of section .text.scanu_search_by_ssid:

00000000 <scanu_search_by_ssid>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	00054783          	lbu	a5,0(a0) # 0 <scanu_search_by_ssid>
  18:	4981                	li	s3,0
  1a:	cfb1                	beqz	a5,76 <.L118>
			1a: R_RISCV_RVC_BRANCH	.L118
  1c:	00000437          	lui	s0,0x0
			1c: R_RISCV_HI20	scanu_env
			1c: R_RISCV_RELAX	*ABS*
  20:	8a2e                	mv	s4,a1
  22:	84aa                	mv	s1,a0
  24:	00040413          	mv	s0,s0
			24: R_RISCV_LO12_I	scanu_env
			24: R_RISCV_RELAX	*ABS*
  28:	4901                	li	s2,0
  2a:	4981                	li	s3,0
  2c:	f8000a93          	li	s5,-128

00000030 <.LBB227>:
  30:	00150b93          	addi	s7,a0,1

00000034 <.LBE227>:
  34:	4b19                	li	s6,6

00000036 <.L121>:
  36:	04c44783          	lbu	a5,76(s0) # 4c <.L121+0x16>
  3a:	cf95                	beqz	a5,76 <.L118>
			3a: R_RISCV_RVC_BRANCH	.L118
  3c:	04d40783          	lb	a5,77(s0)
  40:	02fad663          	bge	s5,a5,6c <.L120>
			40: R_RISCV_BRANCH	.L120
  44:	01e44783          	lbu	a5,30(s0)
  48:	0004c603          	lbu	a2,0(s1)
  4c:	02f61063          	bne	a2,a5,6c <.L120>
			4c: R_RISCV_BRANCH	.L120
  50:	85de                	mv	a1,s7
  52:	01f40513          	addi	a0,s0,31
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	memcmp
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.L121+0x20>

0000005e <.LVL179>:
  5e:	e519                	bnez	a0,6c <.L120>
			5e: R_RISCV_RVC_BRANCH	.L120
  60:	04d40a83          	lb	s5,77(s0)

00000064 <.LVL180>:
  64:	01840993          	addi	s3,s0,24

00000068 <.LVL181>:
  68:	012a2023          	sw	s2,0(s4)

0000006c <.L120>:
  6c:	0905                	addi	s2,s2,1

0000006e <.LVL183>:
  6e:	03840413          	addi	s0,s0,56

00000072 <.LBE228>:
  72:	fd6912e3          	bne	s2,s6,36 <.L121>
			72: R_RISCV_BRANCH	.L121

00000076 <.L118>:
  76:	50b2                	lw	ra,44(sp)
  78:	5422                	lw	s0,40(sp)
  7a:	854e                	mv	a0,s3
  7c:	5492                	lw	s1,36(sp)
  7e:	5902                	lw	s2,32(sp)
  80:	49f2                	lw	s3,28(sp)
  82:	4a62                	lw	s4,24(sp)
  84:	4ad2                	lw	s5,20(sp)
  86:	4b42                	lw	s6,16(sp)
  88:	4bb2                	lw	s7,12(sp)
  8a:	6145                	addi	sp,sp,48
  8c:	8082                	ret

Disassembly of section .text.scanu_rm_exist_ssid:

00000000 <scanu_rm_exist_ssid>:
   0:	0605c863          	bltz	a1,70 <.L139>
			0: R_RISCV_BRANCH	.L139
   4:	c535                	beqz	a0,70 <.L139>
			4: R_RISCV_RVC_BRANCH	.L139

00000006 <.LVL186>:
   6:	1141                	addi	sp,sp,-16
   8:	c422                	sw	s0,8(sp)
   a:	03800413          	li	s0,56
   e:	02858433          	mul	s0,a1,s0
  12:	c226                	sw	s1,4(sp)
  14:	000004b7          	lui	s1,0x0
			14: R_RISCV_HI20	scanu_env
			14: R_RISCV_RELAX	*ABS*
  18:	00048493          	mv	s1,s1
			18: R_RISCV_LO12_I	scanu_env
			18: R_RISCV_RELAX	*ABS*
  1c:	c606                	sw	ra,12(sp)
  1e:	008487b3          	add	a5,s1,s0
  22:	04c7c703          	lbu	a4,76(a5)
  26:	c321                	beqz	a4,66 <.L128>
			26: R_RISCV_RVC_BRANCH	.L128
  28:	01e7c783          	lbu	a5,30(a5)
  2c:	00054603          	lbu	a2,0(a0)
  30:	02f61b63          	bne	a2,a5,66 <.L128>
			30: R_RISCV_BRANCH	.L128
  34:	01f40793          	addi	a5,s0,31
  38:	00150593          	addi	a1,a0,1

0000003c <.LVL187>:
  3c:	00f48533          	add	a0,s1,a5

00000040 <.LVL188>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memcmp
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL188>

00000048 <.LVL189>:
  48:	ed19                	bnez	a0,66 <.L128>
			48: R_RISCV_RVC_BRANCH	.L128
  4a:	01840513          	addi	a0,s0,24
  4e:	4422                	lw	s0,8(sp)
  50:	40b2                	lw	ra,12(sp)
  52:	9526                	add	a0,a0,s1
  54:	4492                	lw	s1,4(sp)
  56:	03800613          	li	a2,56
  5a:	4581                	li	a1,0
  5c:	0141                	addi	sp,sp,16
  5e:	00000317          	auipc	t1,0x0
			5e: R_RISCV_CALL	memset
			5e: R_RISCV_RELAX	*ABS*
  62:	00030067          	jr	t1 # 5e <.LVL189+0x16>

00000066 <.L128>:
  66:	40b2                	lw	ra,12(sp)
  68:	4422                	lw	s0,8(sp)
  6a:	4492                	lw	s1,4(sp)
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

00000070 <.L139>:
  70:	8082                	ret

Disassembly of section .text.scanu_scan_next:

00000000 <scanu_scan_next>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	scanu_env
			4: R_RISCV_RELAX	*ABS*
   8:	ca26                	sw	s1,20(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	00092483          	lw	s1,0(s2) # 0 <scanu_scan_next>
			c: R_RISCV_LO12_I	scanu_env
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL192>:
  10:	cc22                	sw	s0,24(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	c256                	sw	s5,4(sp)
  18:	00090913          	mv	s2,s2
			18: R_RISCV_LO12_I	scanu_env
			18: R_RISCV_RELAX	*ABS*
  1c:	4605                	li	a2,1

0000001e <.L147>:
  1e:	16b94783          	lbu	a5,363(s2)
  22:	28f66c63          	bltu	a2,a5,2ba <.L143>
			22: R_RISCV_BRANCH	.L143
  26:	14f4c683          	lbu	a3,335(s1) # 14f <.LBE323+0x1>
  2a:	00248713          	addi	a4,s1,2
  2e:	4981                	li	s3,0

00000030 <.L144>:
  30:	00d9c863          	blt	s3,a3,40 <.L146>
			30: R_RISCV_BRANCH	.L146
  34:	01369d63          	bne	a3,s3,4e <.L145>
			34: R_RISCV_BRANCH	.L145
  38:	0785                	addi	a5,a5,1
  3a:	16f905a3          	sb	a5,363(s2)
  3e:	b7c5                	j	1e <.L147>
			3e: R_RISCV_RVC_JUMP	.L147

00000040 <.L146>:
  40:	0719                	addi	a4,a4,6
  42:	ffa74583          	lbu	a1,-6(a4) # 7ffffffa <.LASF438+0x7fffd27f>
  46:	00f58463          	beq	a1,a5,4e <.L145>
			46: R_RISCV_BRANCH	.L145
  4a:	0985                	addi	s3,s3,1
  4c:	b7d5                	j	30 <.L144>
			4c: R_RISCV_RVC_JUMP	.L144

0000004e <.L145>:
  4e:	6505                	lui	a0,0x1
  50:	15400693          	li	a3,340
  54:	4611                	li	a2,4
  56:	4589                	li	a1,2
  58:	80050513          	addi	a0,a0,-2048 # 800 <.LVL165+0x4>
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	ke_msg_alloc
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.L145+0xe>

00000064 <.LVL195>:
  64:	14e4c783          	lbu	a5,334(s1)
  68:	842a                	mv	s0,a0

0000006a <.LVL196>:
  6a:	4a99                	li	s5,6
  6c:	14f50723          	sb	a5,334(a0)
  70:	1404a783          	lw	a5,320(s1)
  74:	14f52023          	sw	a5,320(a0)
  78:	1444d783          	lhu	a5,324(s1)
  7c:	14f51223          	sh	a5,324(a0)
  80:	1504c783          	lbu	a5,336(s1)
  84:	14f50823          	sb	a5,336(a0)
  88:	1514c783          	lbu	a5,337(s1)
  8c:	14f508a3          	sb	a5,337(a0)

00000090 <.L148>:
  90:	14f4c783          	lbu	a5,335(s1)
  94:	18f9ce63          	blt	s3,a5,230 <.L150>
			94: R_RISCV_BRANCH	.L150
  98:	0fc00993          	li	s3,252

0000009c <.LVL197>:
  9c:	4a01                	li	s4,0

0000009e <.L151>:
  9e:	1504c783          	lbu	a5,336(s1)
  a2:	1afa4f63          	blt	s4,a5,260 <.L152>
			a2: R_RISCV_BRANCH	.L152

000000a6 <.LBB285>:
  a6:	00092703          	lw	a4,0(s2)

000000aa <.LVL199>:
  aa:	000007b7          	lui	a5,0x0
			aa: R_RISCV_HI20	scan_probe_req_ie+0x24
			aa: R_RISCV_RELAX	*ABS*+0x24
  ae:	00000637          	lui	a2,0x0
			ae: R_RISCV_HI20	scanu_add_ie+0x10
			ae: R_RISCV_RELAX	*ABS*+0x10
  b2:	14c75683          	lhu	a3,332(a4)
  b6:	02478893          	addi	a7,a5,36 # 24 <.L147+0x6>
			b6: R_RISCV_LO12_I	scan_probe_req_ie+0x24
			b6: R_RISCV_RELAX	*ABS*+0x24
  ba:	0c800793          	li	a5,200
  be:	01060613          	addi	a2,a2,16 # 10 <.LVL192>
			be: R_RISCV_LO12_I	scanu_add_ie+0x10
			be: R_RISCV_RELAX	*ABS*+0x10

000000c2 <.LVL200>:
  c2:	00d7f363          	bgeu	a5,a3,c8 <.L153>
			c2: R_RISCV_BRANCH	.L153

000000c6 <.LVL201>:
  c6:	4681                	li	a3,0

000000c8 <.L153>:
  c8:	16b94583          	lbu	a1,363(s2)
  cc:	4785                	li	a5,1
  ce:	1af58763          	beq	a1,a5,27c <.L172>
			ce: R_RISCV_BRANCH	.L172
  d2:	15174783          	lbu	a5,337(a4)
  d6:	1a079363          	bnez	a5,27c <.L172>
			d6: R_RISCV_BRANCH	.L172
  da:	4301                	li	t1,0
  dc:	4731                	li	a4,12

000000de <.L154>:
  de:	000007b7          	lui	a5,0x0
			de: R_RISCV_HI20	scan_probe_req_ie+0x24
			de: R_RISCV_RELAX	*ABS*+0x24
  e2:	4585                	li	a1,1
  e4:	02b78223          	sb	a1,36(a5) # 24 <.L147+0x6>
			e4: R_RISCV_LO12_S	scan_probe_req_ie+0x24
			e4: R_RISCV_RELAX	*ABS*+0x24

000000e8 <.LBB289>:
  e8:	000005b7          	lui	a1,0x0
			e8: R_RISCV_HI20	mac_id2rate
			e8: R_RISCV_RELAX	*ABS*

000000ec <.LBB305>:
  ec:	47a1                	li	a5,8

000000ee <.LBB306>:
  ee:	00058513          	mv	a0,a1
			ee: R_RISCV_LO12_I	mac_id2rate
			ee: R_RISCV_RELAX	*ABS*

000000f2 <.LBB296>:
  f2:	000005b7          	lui	a1,0x0
			f2: R_RISCV_HI20	scan_probe_req_ie+0x26
			f2: R_RISCV_RELAX	*ABS*+0x26

000000f6 <.LBB307>:
  f6:	00f880a3          	sb	a5,1(a7)

000000fa <.LBB300>:
  fa:	02658593          	addi	a1,a1,38 # 26 <.L147+0x8>
			fa: R_RISCV_LO12_I	scan_probe_req_ie+0x26
			fa: R_RISCV_RELAX	*ABS*+0x26

000000fe <.LBB309>:
  fe:	4781                	li	a5,0

00000100 <.LBB310>:
 100:	4e21                	li	t3,8

00000102 <.L155>:
 102:	00f30833          	add	a6,t1,a5
 106:	982a                	add	a6,a6,a0
 108:	00084e83          	lbu	t4,0(a6)

0000010c <.LBB301>:
 10c:	00b78833          	add	a6,a5,a1
 110:	0785                	addi	a5,a5,1
 112:	01d80023          	sb	t4,0(a6)

00000116 <.LBE301>:
 116:	ffc796e3          	bne	a5,t3,102 <.L155>
			116: R_RISCV_BRANCH	.L155

0000011a <.LBE310>:
 11a:	00a88793          	addi	a5,a7,10

0000011e <.LVL210>:
 11e:	ce8d                	beqz	a3,158 <.L156>
			11e: R_RISCV_RVC_BRANCH	.L156

00000120 <.LBB311>:
 120:	00000837          	lui	a6,0x0
			120: R_RISCV_HI20	scanu_add_ie
			120: R_RISCV_RELAX	*ABS*
 124:	00080593          	mv	a1,a6
			124: R_RISCV_LO12_I	scanu_add_ie
			124: R_RISCV_RELAX	*ABS*

00000128 <.LBE311>:
 128:	0105c303          	lbu	t1,16(a1)
 12c:	45a9                	li	a1,10
 12e:	02b31563          	bne	t1,a1,158 <.L156>
			12e: R_RISCV_BRANCH	.L156

00000132 <.LBB313>:
 132:	00164583          	lbu	a1,1(a2)
 136:	8e3e                	mv	t3,a5
 138:	00080813          	mv	a6,a6
			138: R_RISCV_LO12_I	scanu_add_ie
			138: R_RISCV_RELAX	*ABS*
 13c:	0589                	addi	a1,a1,2
 13e:	0ff5f593          	andi	a1,a1,255

00000142 <.LBB315>:
 142:	832e                	mv	t1,a1

00000144 <.LBB323>:
 144:	5efd                	li	t4,-1

00000146 <.L157>:
 146:	137d                	addi	t1,t1,-1
 148:	0805                	addi	a6,a6,1

0000014a <.LVL216>:
 14a:	13d31c63          	bne	t1,t4,282 <.L158>
			14a: R_RISCV_BRANCH	.L158

0000014e <.LBE323>:
 14e:	8e8d                	sub	a3,a3,a1
 150:	06c2                	slli	a3,a3,0x10
 152:	97ae                	add	a5,a5,a1
 154:	962e                	add	a2,a2,a1
 156:	82c1                	srli	a3,a3,0x10

00000158 <.L156>:
 158:	45a1                	li	a1,8
 15a:	02b70663          	beq	a4,a1,186 <.L159>
			15a: R_RISCV_BRANCH	.L159
 15e:	1761                	addi	a4,a4,-8

00000160 <.LVL221>:
 160:	0ff77713          	andi	a4,a4,255

00000164 <.LBB324>:
 164:	03200593          	li	a1,50
 168:	00b78023          	sb	a1,0(a5)

0000016c <.LBB326>:
 16c:	00e780a3          	sb	a4,1(a5)

00000170 <.LBE326>:
 170:	85aa                	mv	a1,a0
 172:	00270313          	addi	t1,a4,2

00000176 <.LBB328>:
 176:	00278813          	addi	a6,a5,2

0000017a <.LVL226>:
 17a:	557d                	li	a0,-1

0000017c <.L160>:
 17c:	177d                	addi	a4,a4,-1
 17e:	0585                	addi	a1,a1,1

00000180 <.LVL229>:
 180:	10a71763          	bne	a4,a0,28e <.L161>
			180: R_RISCV_BRANCH	.L161

00000184 <.LBE328>:
 184:	979a                	add	a5,a5,t1

00000186 <.L159>:
 186:	16b94703          	lbu	a4,363(s2)
 18a:	eb01                	bnez	a4,19a <.L162>
			18a: R_RISCV_RVC_BRANCH	.L162

0000018c <.LBB333>:
 18c:	470d                	li	a4,3
 18e:	00e78023          	sb	a4,0(a5)

00000192 <.LBB335>:
 192:	4705                	li	a4,1
 194:	00e780a3          	sb	a4,1(a5)

00000198 <.LBE335>:
 198:	078d                	addi	a5,a5,3

0000019a <.L162>:
 19a:	c685                	beqz	a3,1c2 <.L163>
			19a: R_RISCV_RVC_BRANCH	.L163

0000019c <.LBB337>:
 19c:	00064583          	lbu	a1,0(a2)
 1a0:	03b00713          	li	a4,59
 1a4:	00e59f63          	bne	a1,a4,1c2 <.L163>
			1a4: R_RISCV_BRANCH	.L163

000001a8 <.LBB339>:
 1a8:	00164703          	lbu	a4,1(a2)
 1ac:	4581                	li	a1,0
 1ae:	0709                	addi	a4,a4,2
 1b0:	0ff77713          	andi	a4,a4,255

000001b4 <.L164>:
 1b4:	0eb71363          	bne	a4,a1,29a <.L165>
			1b4: R_RISCV_BRANCH	.L165

000001b8 <.LBE341>:
 1b8:	8e99                	sub	a3,a3,a4
 1ba:	06c2                	slli	a3,a3,0x10
 1bc:	97ba                	add	a5,a5,a4
 1be:	963a                	add	a2,a2,a4
 1c0:	82c1                	srli	a3,a3,0x10

000001c2 <.L163>:
 1c2:	00000737          	lui	a4,0x0
			1c2: R_RISCV_HI20	me_env
			1c2: R_RISCV_RELAX	*ABS*
 1c6:	00070593          	mv	a1,a4
			1c6: R_RISCV_LO12_I	me_env
			1c6: R_RISCV_RELAX	*ABS*
 1ca:	02e5c583          	lbu	a1,46(a1)
 1ce:	c185                	beqz	a1,1ee <.L166>
			1ce: R_RISCV_RVC_BRANCH	.L166

000001d0 <.LBB348>:
 1d0:	02d00593          	li	a1,45
 1d4:	00b78023          	sb	a1,0(a5)

000001d8 <.LBB350>:
 1d8:	45e9                	li	a1,26
 1da:	00b780a3          	sb	a1,1(a5)

000001de <.LBB353>:
 1de:	00070713          	mv	a4,a4
			1de: R_RISCV_LO12_I	me_env
			1de: R_RISCV_RELAX	*ABS*
 1e2:	01c78593          	addi	a1,a5,28

000001e6 <.LBB359>:
 1e6:	0789                	addi	a5,a5,2

000001e8 <.L167>:
 1e8:	0705                	addi	a4,a4,1

000001ea <.LBB360>:
 1ea:	0cf59263          	bne	a1,a5,2ae <.L168>
			1ea: R_RISCV_BRANCH	.L168

000001ee <.L166>:
 1ee:	ce91                	beqz	a3,20a <.L169>
			1ee: R_RISCV_RVC_BRANCH	.L169

000001f0 <.LBB361>:
 1f0:	4701                	li	a4,0

000001f2 <.L170>:
 1f2:	00e605b3          	add	a1,a2,a4

000001f6 <.LVL250>:
 1f6:	0005c503          	lbu	a0,0(a1)

000001fa <.LBB365>:
 1fa:	00e785b3          	add	a1,a5,a4

000001fe <.LVL252>:
 1fe:	0705                	addi	a4,a4,1

00000200 <.LVL253>:
 200:	00a58023          	sb	a0,0(a1)

00000204 <.LBE365>:
 204:	fee697e3          	bne	a3,a4,1f2 <.L170>
			204: R_RISCV_BRANCH	.L170

00000208 <.LBE368>:
 208:	97b6                	add	a5,a5,a3

0000020a <.L169>:
 20a:	411787b3          	sub	a5,a5,a7

0000020e <.LBE285>:
 20e:	14f41623          	sh	a5,332(s0)
 212:	14042423          	sw	zero,328(s0)
 216:	8522                	mv	a0,s0
 218:	4462                	lw	s0,24(sp)

0000021a <.LVL256>:
 21a:	40f2                	lw	ra,28(sp)
 21c:	44d2                	lw	s1,20(sp)

0000021e <.LVL257>:
 21e:	4942                	lw	s2,16(sp)
 220:	49b2                	lw	s3,12(sp)
 222:	4a22                	lw	s4,8(sp)

00000224 <.LVL258>:
 224:	4a92                	lw	s5,4(sp)
 226:	6105                	addi	sp,sp,32
 228:	00000317          	auipc	t1,0x0
			228: R_RISCV_CALL	ke_msg_send
			228: R_RISCV_RELAX	*ABS*
 22c:	00030067          	jr	t1 # 228 <.LVL258+0x4>

00000230 <.L150>:
 230:	035985b3          	mul	a1,s3,s5
 234:	16b94783          	lbu	a5,363(s2)
 238:	95a6                	add	a1,a1,s1
 23a:	0025c703          	lbu	a4,2(a1)
 23e:	00f71f63          	bne	a4,a5,25c <.L149>
			23e: R_RISCV_BRANCH	.L149
 242:	14f44a03          	lbu	s4,335(s0)
 246:	4619                	li	a2,6
 248:	035a0533          	mul	a0,s4,s5
 24c:	0a05                	addi	s4,s4,1
 24e:	9522                	add	a0,a0,s0
 250:	00000097          	auipc	ra,0x0
			250: R_RISCV_CALL	memcpy
			250: R_RISCV_RELAX	*ABS*
 254:	000080e7          	jalr	ra # 250 <.L150+0x20>

00000258 <.LVL260>:
 258:	154407a3          	sb	s4,335(s0)

0000025c <.L149>:
 25c:	0985                	addi	s3,s3,1
 25e:	bd0d                	j	90 <.L148>
			25e: R_RISCV_RVC_JUMP	.L148

00000260 <.L152>:
 260:	013485b3          	add	a1,s1,s3
 264:	01340533          	add	a0,s0,s3
 268:	02200613          	li	a2,34
 26c:	00000097          	auipc	ra,0x0
			26c: R_RISCV_CALL	memcpy
			26c: R_RISCV_RELAX	*ABS*
 270:	000080e7          	jalr	ra # 26c <.L152+0xc>

00000274 <.LVL263>:
 274:	0a05                	addi	s4,s4,1
 276:	02298993          	addi	s3,s3,34
 27a:	b515                	j	9e <.L151>
			27a: R_RISCV_RVC_JUMP	.L151

0000027c <.L172>:
 27c:	4311                	li	t1,4
 27e:	4721                	li	a4,8

00000280 <.LVL266>:
 280:	bdb9                	j	de <.L154>
			280: R_RISCV_RVC_JUMP	.L154

00000282 <.L158>:
 282:	00f84f03          	lbu	t5,15(a6) # f <scanu_scan_next+0xf>

00000286 <.LBB319>:
 286:	0e05                	addi	t3,t3,1
 288:	ffee0fa3          	sb	t5,-1(t3)
 28c:	bd6d                	j	146 <.L157>
			28c: R_RISCV_RVC_JUMP	.L157

0000028e <.L161>:
 28e:	0075ce03          	lbu	t3,7(a1)

00000292 <.LBB330>:
 292:	0805                	addi	a6,a6,1
 294:	ffc80fa3          	sb	t3,-1(a6)
 298:	b5d5                	j	17c <.L160>
			298: R_RISCV_RVC_JUMP	.L160

0000029a <.L165>:
 29a:	00b60533          	add	a0,a2,a1
 29e:	00054803          	lbu	a6,0(a0)

000002a2 <.LBB345>:
 2a2:	00b78533          	add	a0,a5,a1
 2a6:	0585                	addi	a1,a1,1

000002a8 <.LVL273>:
 2a8:	01050023          	sb	a6,0(a0)
 2ac:	b721                	j	1b4 <.L164>
			2ac: R_RISCV_RVC_JUMP	.L164

000002ae <.L168>:
 2ae:	00b74503          	lbu	a0,11(a4) # b <scanu_scan_next+0xb>

000002b2 <.LBB355>:
 2b2:	0785                	addi	a5,a5,1

000002b4 <.LVL276>:
 2b4:	fea78fa3          	sb	a0,-1(a5)
 2b8:	bf05                	j	1e8 <.L167>
			2b8: R_RISCV_RVC_JUMP	.L167

000002ba <.L143>:
 2ba:	4462                	lw	s0,24(sp)
 2bc:	40f2                	lw	ra,28(sp)
 2be:	44d2                	lw	s1,20(sp)

000002c0 <.LVL278>:
 2c0:	4942                	lw	s2,16(sp)
 2c2:	49b2                	lw	s3,12(sp)
 2c4:	4a22                	lw	s4,8(sp)
 2c6:	4a92                	lw	s5,4(sp)
 2c8:	4501                	li	a0,0
 2ca:	6105                	addi	sp,sp,32
 2cc:	00000317          	auipc	t1,0x0
			2cc: R_RISCV_CALL	scanu_confirm
			2cc: R_RISCV_RELAX	*ABS*
 2d0:	00030067          	jr	t1 # 2cc <.LVL278+0xc>

Disassembly of section .text.scanu_dma_cb:

00000000 <scanu_dma_cb>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	scanu_scan_next
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <scanu_dma_cb>

Disassembly of section .text.scanu_start:

00000000 <scanu_start>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	scanu_env
			2: R_RISCV_RELAX	*ABS*
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	00078713          	mv	a4,a5
			a: R_RISCV_LO12_I	scanu_env
			a: R_RISCV_RELAX	*ABS*
   e:	16a74703          	lbu	a4,362(a4)
  12:	00078413          	mv	s0,a5
			12: R_RISCV_LO12_I	scanu_env
			12: R_RISCV_RELAX	*ABS*
  16:	e30d                	bnez	a4,38 <.L190>
			16: R_RISCV_RVC_BRANCH	.L190
  18:	00078793          	mv	a5,a5
			18: R_RISCV_LO12_I	scanu_env
			18: R_RISCV_RELAX	*ABS*
  1c:	15040713          	addi	a4,s0,336
  20:	f8000693          	li	a3,-128

00000024 <.L191>:
  24:	04078623          	sb	zero,76(a5) # 4c <.LVL284+0x6>
  28:	04d786a3          	sb	a3,77(a5)
  2c:	03878793          	addi	a5,a5,56
  30:	fee79ae3          	bne	a5,a4,24 <.L191>
			30: R_RISCV_BRANCH	.L191
  34:	00041a23          	sh	zero,20(s0)

00000038 <.L190>:
  38:	4585                	li	a1,1
  3a:	4511                	li	a0,4
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ke_state_set
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.L190+0x4>

00000044 <.LBB377>:
  44:	401c                	lw	a5,0(s0)

00000046 <.LVL284>:
  46:	1487a683          	lw	a3,328(a5)
  4a:	c699                	beqz	a3,58 <.L192>
			4a: R_RISCV_RVC_BRANCH	.L192
  4c:	14c7d703          	lhu	a4,332(a5)
  50:	0c800793          	li	a5,200

00000054 <.LVL285>:
  54:	00e7f963          	bgeu	a5,a4,66 <.L193>
			54: R_RISCV_BRANCH	.L193

00000058 <.L192>:
  58:	4422                	lw	s0,8(sp)
  5a:	40b2                	lw	ra,12(sp)
  5c:	0141                	addi	sp,sp,16

0000005e <.LBB383>:
  5e:	00000317          	auipc	t1,0x0
			5e: R_RISCV_CALL	scanu_scan_next
			5e: R_RISCV_RELAX	*ABS*
  62:	00030067          	jr	t1 # 5e <.LBB383>

00000066 <.L193>:
  66:	000007b7          	lui	a5,0x0
			66: R_RISCV_HI20	scanu_add_ie
			66: R_RISCV_RELAX	*ABS*
  6a:	00078793          	mv	a5,a5
			6a: R_RISCV_LO12_I	scanu_add_ie
			6a: R_RISCV_RELAX	*ABS*
  6e:	c394                	sw	a3,0(a5)
  70:	00e79423          	sh	a4,8(a5) # 8 <scanu_start+0x8>

00000074 <.LBE383>:
  74:	4422                	lw	s0,8(sp)
  76:	40b2                	lw	ra,12(sp)

00000078 <.LBB384>:
  78:	00000537          	lui	a0,0x0
			78: R_RISCV_HI20	scanu_env+0x4
			78: R_RISCV_RELAX	*ABS*+0x4

0000007c <.LBB385>:
  7c:	4581                	li	a1,0
  7e:	00450513          	addi	a0,a0,4 # 4 <scanu_start+0x4>
			7e: R_RISCV_LO12_I	scanu_env+0x4
			7e: R_RISCV_RELAX	*ABS*+0x4

00000082 <.LBE385>:
  82:	0141                	addi	sp,sp,16

00000084 <.LBB386>:
  84:	00000317          	auipc	t1,0x0
			84: R_RISCV_CALL	hal_dma_push
			84: R_RISCV_RELAX	*ABS*
  88:	00030067          	jr	t1 # 84 <.LBB386>
