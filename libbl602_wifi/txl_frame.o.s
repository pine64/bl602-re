
libbl602_wifi/txl_frame.o:     file format elf32-littleriscv


Disassembly of section .text.txl_frame_init_desc:

00000000 <txl_frame_init_desc>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	8432                	mv	s0,a2

00000008 <.LVL1>:
   8:	892e                	mv	s2,a1
   a:	2d800613          	li	a2,728

0000000e <.LVL2>:
   e:	4581                	li	a1,0

00000010 <.LVL3>:
  10:	ca26                	sw	s1,20(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	84aa                	mv	s1,a0
  16:	c636                	sw	a3,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	memset
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL3+0x8>

00000020 <.LVL4>:
  20:	cafec7b7          	lui	a5,0xcafec
  24:	abe78793          	addi	a5,a5,-1346 # cafebabe <.LASF862+0xcafe8d80>
  28:	c05c                	sw	a5,4(s0)
  2a:	46b2                	lw	a3,12(sp)
  2c:	14c90793          	addi	a5,s2,332
  30:	c85c                	sw	a5,20(s0)
  32:	badcb7b7          	lui	a5,0xbadcb
  36:	02042023          	sw	zero,32(s0)
  3a:	02042623          	sw	zero,44(s0)
  3e:	02042823          	sw	zero,48(s0)
  42:	02042a23          	sw	zero,52(s0)
  46:	b1e78793          	addi	a5,a5,-1250 # badcab1e <.LASF862+0xbadc7de0>
  4a:	c29c                	sw	a5,0(a3)
  4c:	d4e0                	sw	s0,108(s1)
  4e:	40f2                	lw	ra,28(sp)
  50:	4462                	lw	s0,24(sp)

00000052 <.LVL5>:
  52:	4785                	li	a5,1
  54:	0724a423          	sw	s2,104(s1)
  58:	c8f4                	sw	a3,84(s1)
  5a:	2cf48a23          	sb	a5,724(s1)
  5e:	4942                	lw	s2,16(sp)

00000060 <.LVL6>:
  60:	44d2                	lw	s1,20(sp)

00000062 <.LVL7>:
  62:	6105                	addi	sp,sp,32

00000064 <.LVL8>:
  64:	8082                	ret

Disassembly of section .text.txl_frame_init:

00000000 <txl_frame_init>:
   0:	7139                	addi	sp,sp,-64
   2:	d256                	sw	s5,36(sp)
   4:	00000ab7          	lui	s5,0x0
			4: R_RISCV_HI20	txl_frame_env
			4: R_RISCV_RELAX	*ABS*
   8:	ce5e                	sw	s7,28(sp)
   a:	8baa                	mv	s7,a0
   c:	000a8513          	mv	a0,s5
			c: R_RISCV_LO12_I	txl_frame_env
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL10>:
  10:	de06                	sw	ra,60(sp)
  12:	dc22                	sw	s0,56(sp)
  14:	da26                	sw	s1,52(sp)
  16:	d84a                	sw	s2,48(sp)
  18:	d64e                	sw	s3,44(sp)
  1a:	d452                	sw	s4,40(sp)
  1c:	d05a                	sw	s6,32(sp)
  1e:	cc62                	sw	s8,24(sp)
  20:	ca66                	sw	s9,20(sp)
  22:	c86a                	sw	s10,16(sp)
  24:	c66e                	sw	s11,12(sp)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	co_list_init
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL10+0x16>

0000002e <.LVL11>:
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	txl_frame_env+0x8
			2e: R_RISCV_RELAX	*ABS*+0x8
  32:	00850513          	addi	a0,a0,8 # 8 <txl_frame_init+0x8>
			32: R_RISCV_LO12_I	txl_frame_env+0x8
			32: R_RISCV_RELAX	*ABS*+0x8
  36:	000004b7          	lui	s1,0x0
			36: R_RISCV_HI20	txl_frame_desc
			36: R_RISCV_RELAX	*ABS*
  3a:	00000437          	lui	s0,0x0
			3a: R_RISCV_HI20	txl_frame_hwdesc_pool
			3a: R_RISCV_RELAX	*ABS*
  3e:	000009b7          	lui	s3,0x0
			3e: R_RISCV_HI20	txl_frame_pool
			3e: R_RISCV_RELAX	*ABS*
  42:	00000937          	lui	s2,0x0
			42: R_RISCV_HI20	txl_frame_buf_ctrl
			42: R_RISCV_RELAX	*ABS*

00000046 <.LBB77>:
  46:	00000b37          	lui	s6,0x0
			46: R_RISCV_HI20	txl_frame_hwdesc_cfms
			46: R_RISCV_RELAX	*ABS*
  4a:	cafecc37          	lui	s8,0xcafec
  4e:	badcbcb7          	lui	s9,0xbadcb

00000052 <.LBE77>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	co_list_init
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LBE77>

0000005a <.LVL12>:
  5a:	00048493          	mv	s1,s1
			5a: R_RISCV_LO12_I	txl_frame_desc
			5a: R_RISCV_RELAX	*ABS*
  5e:	00040413          	mv	s0,s0
			5e: R_RISCV_LO12_I	txl_frame_hwdesc_pool
			5e: R_RISCV_RELAX	*ABS*
  62:	00098993          	mv	s3,s3
			62: R_RISCV_LO12_I	txl_frame_pool
			62: R_RISCV_RELAX	*ABS*
  66:	00090913          	mv	s2,s2
			66: R_RISCV_LO12_I	txl_frame_buf_ctrl
			66: R_RISCV_RELAX	*ABS*
  6a:	4a01                	li	s4,0

0000006c <.LBB78>:
  6c:	4d51                	li	s10,20
  6e:	000b0b13          	mv	s6,s6
			6e: R_RISCV_LO12_I	txl_frame_hwdesc_cfms
			6e: R_RISCV_RELAX	*ABS*
  72:	abec0c13          	addi	s8,s8,-1346 # cafebabe <.LASF862+0xcafe8d80>
  76:	b1ec8c93          	addi	s9,s9,-1250 # badcab1e <.LASF862+0xbadc7de0>

0000007a <.LBE78>:
  7a:	4d91                	li	s11,4

0000007c <.L6>:
  7c:	000b8563          	beqz	s7,86 <.L4>
			7c: R_RISCV_BRANCH	.L4
  80:	2d54c783          	lbu	a5,725(s1) # 2d5 <.L93+0x5>
  84:	ebb1                	bnez	a5,d8 <.L5>
			84: R_RISCV_RVC_BRANCH	.L5

00000086 <.L4>:
  86:	4581                	li	a1,0
  88:	2d800613          	li	a2,728
  8c:	8526                	mv	a0,s1
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	memset
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.L4+0x8>

00000096 <.LVL14>:
  96:	03aa07b3          	mul	a5,s4,s10
  9a:	01842223          	sw	s8,4(s0) # 4 <txl_frame_init+0x4>
  9e:	02042023          	sw	zero,32(s0)
  a2:	02042623          	sw	zero,44(s0)
  a6:	02042823          	sw	zero,48(s0)
  aa:	02042a23          	sw	zero,52(s0)
  ae:	01992023          	sw	s9,0(s2) # 0 <txl_frame_init>
  b2:	0734a423          	sw	s3,104(s1)
  b6:	0524aa23          	sw	s2,84(s1)
  ba:	d4e0                	sw	s0,108(s1)
  bc:	97da                	add	a5,a5,s6
  be:	c01c                	sw	a5,0(s0)
  c0:	14c98793          	addi	a5,s3,332 # 14c <.LVL19+0x2e>
  c4:	c85c                	sw	a5,20(s0)
  c6:	2c048a23          	sb	zero,724(s1)
  ca:	85a6                	mv	a1,s1
  cc:	000a8513          	mv	a0,s5
			cc: R_RISCV_LO12_I	txl_frame_env
			cc: R_RISCV_RELAX	*ABS*
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	co_list_push_back
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL14+0x3a>

000000d8 <.L5>:
  d8:	0a05                	addi	s4,s4,1

000000da <.LVL16>:
  da:	2d848493          	addi	s1,s1,728
  de:	04840413          	addi	s0,s0,72
  e2:	24c98993          	addi	s3,s3,588
  e6:	03c90913          	addi	s2,s2,60
  ea:	f9ba19e3          	bne	s4,s11,7c <.L6>
			ea: R_RISCV_BRANCH	.L6
  ee:	00000437          	lui	s0,0x0
			ee: R_RISCV_HI20	txl_buffer_control_24G
			ee: R_RISCV_RELAX	*ABS*
  f2:	badcb9b7          	lui	s3,0xbadcb
  f6:	00040413          	mv	s0,s0
			f6: R_RISCV_LO12_I	txl_buffer_control_24G
			f6: R_RISCV_RELAX	*ABS*
  fa:	b1e98993          	addi	s3,s3,-1250 # badcab1e <.LASF862+0xbadc7de0>
  fe:	01342023          	sw	s3,0(s0) # 0 <txl_frame_init>
 102:	02042a23          	sw	zero,52(s0)
 106:	02042c23          	sw	zero,56(s0)
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	phy_get_ntx
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.LVL16+0x30>

00000112 <.LVL18>:
 112:	053a                	slli	a0,a0,0xe
 114:	c048                	sw	a0,4(s0)
 116:	00000097          	auipc	ra,0x0
			116: R_RISCV_CALL	phy_get_ntx
			116: R_RISCV_RELAX	*ABS*
 11a:	000080e7          	jalr	ra # 116 <.LVL18+0x4>

0000011e <.LVL19>:
 11e:	4485                	li	s1,1
 120:	0505                	addi	a0,a0,1
 122:	00a49533          	sll	a0,s1,a0
 126:	7941                	lui	s2,0xffff0
 128:	70490913          	addi	s2,s2,1796 # ffff0704 <.LASF862+0xfffed9c6>
 12c:	40000793          	li	a5,1024
 130:	157d                	addi	a0,a0,-1
 132:	01242823          	sw	s2,16(s0)
 136:	c85c                	sw	a5,20(s0)
 138:	c408                	sw	a0,8(s0)
 13a:	00042623          	sw	zero,12(s0)
 13e:	00042c23          	sw	zero,24(s0)
 142:	00042e23          	sw	zero,28(s0)
 146:	02042023          	sw	zero,32(s0)
 14a:	02042423          	sw	zero,40(s0)
 14e:	02042623          	sw	zero,44(s0)
 152:	02042823          	sw	zero,48(s0)
 156:	00000437          	lui	s0,0x0
			156: R_RISCV_HI20	txl_buffer_control_5G
			156: R_RISCV_RELAX	*ABS*
 15a:	00040413          	mv	s0,s0
			15a: R_RISCV_LO12_I	txl_buffer_control_5G
			15a: R_RISCV_RELAX	*ABS*
 15e:	01342023          	sw	s3,0(s0) # 0 <txl_frame_init>
 162:	02042a23          	sw	zero,52(s0)
 166:	02042c23          	sw	zero,56(s0)
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	phy_get_ntx
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL19+0x4c>

00000172 <.LVL21>:
 172:	053a                	slli	a0,a0,0xe
 174:	c048                	sw	a0,4(s0)
 176:	00000097          	auipc	ra,0x0
			176: R_RISCV_CALL	phy_get_ntx
			176: R_RISCV_RELAX	*ABS*
 17a:	000080e7          	jalr	ra # 176 <.LVL21+0x4>

0000017e <.LVL22>:
 17e:	0505                	addi	a0,a0,1
 180:	00a494b3          	sll	s1,s1,a0
 184:	14fd                	addi	s1,s1,-1
 186:	c404                	sw	s1,8(s0)
 188:	00042623          	sw	zero,12(s0)
 18c:	01242823          	sw	s2,16(s0)
 190:	01442a23          	sw	s4,20(s0)
 194:	00042c23          	sw	zero,24(s0)
 198:	00042e23          	sw	zero,28(s0)
 19c:	02042023          	sw	zero,32(s0)
 1a0:	02042423          	sw	zero,40(s0)
 1a4:	02042623          	sw	zero,44(s0)
 1a8:	02042823          	sw	zero,48(s0)
 1ac:	50f2                	lw	ra,60(sp)
 1ae:	5462                	lw	s0,56(sp)
 1b0:	54d2                	lw	s1,52(sp)
 1b2:	5942                	lw	s2,48(sp)
 1b4:	59b2                	lw	s3,44(sp)
 1b6:	5a22                	lw	s4,40(sp)

000001b8 <.LVL23>:
 1b8:	5a92                	lw	s5,36(sp)
 1ba:	5b02                	lw	s6,32(sp)
 1bc:	4bf2                	lw	s7,28(sp)
 1be:	4c62                	lw	s8,24(sp)
 1c0:	4cd2                	lw	s9,20(sp)
 1c2:	4d42                	lw	s10,16(sp)
 1c4:	4db2                	lw	s11,12(sp)
 1c6:	6121                	addi	sp,sp,64
 1c8:	8082                	ret

Disassembly of section .text.txl_frame_get:

00000000 <txl_frame_get>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	txl_frame_env
			4: R_RISCV_RELAX	*ABS*
   8:	cc52                	sw	s4,24(sp)
   a:	8a2a                	mv	s4,a0
   c:	00048513          	mv	a0,s1
			c: R_RISCV_LO12_I	txl_frame_env
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL25>:
  10:	d422                	sw	s0,40(sp)
  12:	d606                	sw	ra,44(sp)
  14:	d04a                	sw	s2,32(sp)
  16:	ce4e                	sw	s3,28(sp)
  18:	c62e                	sw	a1,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	co_list_pop_front
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL25+0xa>

00000022 <.LVL26>:
  22:	842a                	mv	s0,a0

00000024 <.LVL27>:
  24:	c165                	beqz	a0,104 <.L13>
			24: R_RISCV_RVC_BRANCH	.L13

00000026 <.LBB80>:
  26:	00000737          	lui	a4,0x0
			26: R_RISCV_HI20	.LANCHOR0
			26: R_RISCV_RELAX	*ABS*
  2a:	00070713          	mv	a4,a4
			2a: R_RISCV_LO12_I	.LANCHOR0
			2a: R_RISCV_RELAX	*ABS*
  2e:	431c                	lw	a5,0(a4)
  30:	4685                	li	a3,1
  32:	45b2                	lw	a1,12(sp)
  34:	04d79e63          	bne	a5,a3,90 <.L14>
			34: R_RISCV_BRANCH	.L14
  38:	00072023          	sw	zero,0(a4) # 0 <txl_frame_get>
  3c:	00000737          	lui	a4,0x0
			3c: R_RISCV_HI20	.LANCHOR1
			3c: R_RISCV_RELAX	*ABS*
  40:	00f70023          	sb	a5,0(a4) # 0 <txl_frame_get>
			40: R_RISCV_LO12_S	.LANCHOR1
			40: R_RISCV_RELAX	*ABS*
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	vTaskEnterCritical
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LBB80+0x1e>

0000004c <.LVL28>:
  4c:	000005b7          	lui	a1,0x0
			4c: R_RISCV_HI20	.LC0
			4c: R_RISCV_RELAX	*ABS*
  50:	00000537          	lui	a0,0x0
			50: R_RISCV_HI20	.LC1
			50: R_RISCV_RELAX	*ABS*
  54:	10b00613          	li	a2,267
  58:	00058593          	mv	a1,a1
			58: R_RISCV_LO12_I	.LC0
			58: R_RISCV_RELAX	*ABS*
  5c:	00050513          	mv	a0,a0
			5c: R_RISCV_LO12_I	.LC1
			5c: R_RISCV_RELAX	*ABS*
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	assert_rec
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL28+0x14>

00000068 <.LVL29>:
  68:	0c800513          	li	a0,200
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	vTaskDelay
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL29+0x4>

00000074 <.LVL30>:
  74:	4401                	li	s0,0

00000076 <.LVL31>:
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	vTaskExitCritical
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL31>

0000007e <.L12>:
  7e:	8522                	mv	a0,s0
  80:	50b2                	lw	ra,44(sp)
  82:	5422                	lw	s0,40(sp)
  84:	5492                	lw	s1,36(sp)
  86:	5902                	lw	s2,32(sp)
  88:	49f2                	lw	s3,28(sp)
  8a:	4a62                	lw	s4,24(sp)

0000008c <.LVL33>:
  8c:	6145                	addi	sp,sp,48

0000008e <.LVL34>:
  8e:	8082                	ret

00000090 <.L14>:
  90:	c399                	beqz	a5,96 <.L16>
			90: R_RISCV_RVC_BRANCH	.L16
  92:	17fd                	addi	a5,a5,-1
  94:	c31c                	sw	a5,0(a4)

00000096 <.L16>:
  96:	5464                	lw	s1,108(s0)

00000098 <.LBB85>:
  98:	06842983          	lw	s3,104(s0)

0000009c <.LBB86>:
  9c:	fff58713          	addi	a4,a1,-1
  a0:	48dc                	lw	a5,20(s1)
  a2:	0591                	addi	a1,a1,4
  a4:	cccc                	sw	a1,28(s1)
  a6:	97ba                	add	a5,a5,a4
  a8:	cc9c                	sw	a5,24(s1)
  aa:	0f098913          	addi	s2,s3,240

000000ae <.LVL38>:
  ae:	000a0b63          	beqz	s4,c4 <.L20>
			ae: R_RISCV_BRANCH	.L20
  b2:	4785                	li	a5,1
  b4:	85ca                	mv	a1,s2
  b6:	00fa1b63          	bne	s4,a5,cc <.L17>
			b6: R_RISCV_BRANCH	.L17
  ba:	000005b7          	lui	a1,0x0
			ba: R_RISCV_HI20	txl_buffer_control_5G
			ba: R_RISCV_RELAX	*ABS*
  be:	00058593          	mv	a1,a1
			be: R_RISCV_LO12_I	txl_buffer_control_5G
			be: R_RISCV_RELAX	*ABS*
  c2:	a029                	j	cc <.L17>
			c2: R_RISCV_RVC_JUMP	.L17

000000c4 <.L20>:
  c4:	000005b7          	lui	a1,0x0
			c4: R_RISCV_HI20	txl_buffer_control_24G
			c4: R_RISCV_RELAX	*ABS*
  c8:	00058593          	mv	a1,a1
			c8: R_RISCV_LO12_I	txl_buffer_control_24G
			c8: R_RISCV_RELAX	*ABS*

000000cc <.L17>:
  cc:	03400613          	li	a2,52
  d0:	854a                	mv	a0,s2
  d2:	00000097          	auipc	ra,0x0
			d2: R_RISCV_CALL	memcpy
			d2: R_RISCV_RELAX	*ABS*
  d6:	000080e7          	jalr	ra # d2 <.L17+0x6>

000000da <.LVL40>:
  da:	1049a503          	lw	a0,260(s3)
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	tpc_get_vif_tx_power_vs_rate
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LVL40+0x4>

000000e6 <.LVL41>:
  e6:	10a9aa23          	sw	a0,276(s3)
  ea:	0324a423          	sw	s2,40(s1) # 28 <.LBB80+0x2>
  ee:	0204a223          	sw	zero,36(s1)
  f2:	0204ae23          	sw	zero,60(s1)
  f6:	0004a823          	sw	zero,16(s1)
  fa:	2c042623          	sw	zero,716(s0)
  fe:	2c042823          	sw	zero,720(s0)

00000102 <.LBE88>:
 102:	bfb5                	j	7e <.L12>
			102: R_RISCV_RVC_JUMP	.L12

00000104 <.L13>:
 104:	000007b7          	lui	a5,0x0
			104: R_RISCV_HI20	.LANCHOR2
			104: R_RISCV_RELAX	*ABS*
 108:	00078793          	mv	a5,a5
			108: R_RISCV_LO12_I	.LANCHOR2
			108: R_RISCV_RELAX	*ABS*
 10c:	4398                	lw	a4,0(a5)
 10e:	46a9                	li	a3,10
 110:	0705                	addi	a4,a4,1
 112:	00d70463          	beq	a4,a3,11a <.L18>
			112: R_RISCV_BRANCH	.L18
 116:	c398                	sw	a4,0(a5)
 118:	b79d                	j	7e <.L12>
			118: R_RISCV_RVC_JUMP	.L12

0000011a <.L18>:
 11a:	4709                	li	a4,2
 11c:	0007a023          	sw	zero,0(a5) # 0 <txl_frame_get>
 120:	00048513          	mv	a0,s1
			120: R_RISCV_LO12_I	txl_frame_env
			120: R_RISCV_RELAX	*ABS*
 124:	000007b7          	lui	a5,0x0
			124: R_RISCV_HI20	.LANCHOR0
			124: R_RISCV_RELAX	*ABS*
 128:	00e7a023          	sw	a4,0(a5) # 0 <txl_frame_get>
			128: R_RISCV_LO12_S	.LANCHOR0
			128: R_RISCV_RELAX	*ABS*

0000012c <.LVL43>:
 12c:	00000097          	auipc	ra,0x0
			12c: R_RISCV_CALL	co_list_cnt
			12c: R_RISCV_RELAX	*ABS*
 130:	000080e7          	jalr	ra # 12c <.LVL43>

00000134 <.LVL44>:
 134:	84aa                	mv	s1,a0

00000136 <.LVL45>:
 136:	00000537          	lui	a0,0x0
			136: R_RISCV_HI20	txl_frame_env+0x8
			136: R_RISCV_RELAX	*ABS*+0x8
 13a:	00850513          	addi	a0,a0,8 # 8 <txl_frame_get+0x8>
			13a: R_RISCV_LO12_I	txl_frame_env+0x8
			13a: R_RISCV_RELAX	*ABS*+0x8
 13e:	00000097          	auipc	ra,0x0
			13e: R_RISCV_CALL	co_list_cnt
			13e: R_RISCV_RELAX	*ABS*
 142:	000080e7          	jalr	ra # 13e <.LVL45+0x8>

00000146 <.LVL46>:
 146:	8d45                	or	a0,a0,s1

00000148 <.LVL47>:
 148:	f91d                	bnez	a0,7e <.L12>
			148: R_RISCV_RVC_BRANCH	.L12
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	txl_cntrl_clear_all_ac
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LVL47+0x2>

00000152 <.LVL48>:
 152:	b735                	j	7e <.L12>
			152: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.txl_frame_push:

00000000 <txl_frame_push>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	5560                	lw	s0,108(a0)

0000000c <.LVL50>:
   c:	84aa                	mv	s1,a0
   e:	892e                	mv	s2,a1
  10:	485c                	lw	a5,20(s0)
  12:	8b85                	andi	a5,a5,1
  14:	cf99                	beqz	a5,32 <.L27>
			14: R_RISCV_RVC_BRANCH	.L27
  16:	000005b7          	lui	a1,0x0
			16: R_RISCV_HI20	.LC2
			16: R_RISCV_RELAX	*ABS*

0000001a <.LVL51>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LC3
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL52>:
  1e:	18200613          	li	a2,386
  22:	00058593          	mv	a1,a1
			22: R_RISCV_LO12_I	.LC2
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC3
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	assert_err
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL52+0xc>

00000032 <.L27>:
  32:	5c5c                	lw	a5,60(s0)
  34:	ff880737          	lui	a4,0xff880
  38:	4854                	lw	a3,20(s0)

0000003a <.LVL54>:
  3a:	177d                	addi	a4,a4,-1
  3c:	8ff9                	and	a5,a5,a4
  3e:	00042423          	sw	zero,8(s0)
  42:	00042623          	sw	zero,12(s0)
  46:	dc5c                	sw	a5,60(s0)
  48:	0046c783          	lbu	a5,4(a3)
  4c:	04042023          	sw	zero,64(s0)
  50:	85ca                	mv	a1,s2
  52:	8b85                	andi	a5,a5,1
  54:	0017b793          	seqz	a5,a5
  58:	07a6                	slli	a5,a5,0x9
  5a:	dc1c                	sw	a5,56(s0)
  5c:	4422                	lw	s0,8(sp)

0000005e <.LVL55>:
  5e:	40b2                	lw	ra,12(sp)
  60:	4902                	lw	s2,0(sp)
  62:	8526                	mv	a0,s1
  64:	4492                	lw	s1,4(sp)

00000066 <.LVL56>:
  66:	0141                	addi	sp,sp,16
  68:	00000317          	auipc	t1,0x0
			68: R_RISCV_CALL	txl_cntrl_push_int
			68: R_RISCV_RELAX	*ABS*
  6c:	00030067          	jr	t1 # 68 <.LVL56+0x2>

Disassembly of section .text.txl_frame_push_force:

00000000 <txl_frame_push_force>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	5560                	lw	s0,108(a0)

0000000c <.LVL59>:
   c:	84aa                	mv	s1,a0
   e:	892e                	mv	s2,a1
  10:	485c                	lw	a5,20(s0)
  12:	8b85                	andi	a5,a5,1
  14:	cf99                	beqz	a5,32 <.L35>
			14: R_RISCV_RVC_BRANCH	.L35
  16:	000005b7          	lui	a1,0x0
			16: R_RISCV_HI20	.LC2
			16: R_RISCV_RELAX	*ABS*

0000001a <.LVL60>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LC3
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL61>:
  1e:	1ad00613          	li	a2,429
  22:	00058593          	mv	a1,a1
			22: R_RISCV_LO12_I	.LC2
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC3
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	assert_err
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL61+0xc>

00000032 <.L35>:
  32:	5c5c                	lw	a5,60(s0)
  34:	ff880737          	lui	a4,0xff880
  38:	4854                	lw	a3,20(s0)

0000003a <.LVL63>:
  3a:	177d                	addi	a4,a4,-1
  3c:	8ff9                	and	a5,a5,a4
  3e:	00042423          	sw	zero,8(s0)
  42:	00042623          	sw	zero,12(s0)
  46:	dc5c                	sw	a5,60(s0)
  48:	0046c783          	lbu	a5,4(a3)
  4c:	04042023          	sw	zero,64(s0)
  50:	85ca                	mv	a1,s2
  52:	8b85                	andi	a5,a5,1
  54:	0017b793          	seqz	a5,a5
  58:	07a6                	slli	a5,a5,0x9
  5a:	dc1c                	sw	a5,56(s0)
  5c:	4422                	lw	s0,8(sp)

0000005e <.LVL64>:
  5e:	40b2                	lw	ra,12(sp)
  60:	4902                	lw	s2,0(sp)
  62:	8526                	mv	a0,s1
  64:	4492                	lw	s1,4(sp)

00000066 <.LVL65>:
  66:	0141                	addi	sp,sp,16
  68:	00000317          	auipc	t1,0x0
			68: R_RISCV_CALL	txl_cntrl_push_int_force
			68: R_RISCV_RELAX	*ABS*
  6c:	00030067          	jr	t1 # 68 <.LVL65+0x2>

Disassembly of section .text.txl_frame_cfm:

00000000 <txl_frame_cfm>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	txl_frame_env+0x8
			2: R_RISCV_RELAX	*ABS*+0x8

00000006 <.LVL68>:
   6:	1141                	addi	sp,sp,-16
   8:	00850513          	addi	a0,a0,8 # 8 <.LVL68+0x2>
			8: R_RISCV_LO12_I	txl_frame_env+0x8
			8: R_RISCV_RELAX	*ABS*+0x8
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	co_list_push_back
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL68+0x8>

00000016 <.LVL69>:
  16:	40b2                	lw	ra,12(sp)
  18:	00020537          	lui	a0,0x20
  1c:	0141                	addi	sp,sp,16
  1e:	00000317          	auipc	t1,0x0
			1e: R_RISCV_CALL	ke_evt_set
			1e: R_RISCV_RELAX	*ABS*
  22:	00030067          	jr	t1 # 1e <.LVL69+0x8>

Disassembly of section .text.txl_frame_release:

00000000 <txl_frame_release>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	2d454783          	lbu	a5,724(a0) # 202d4 <.LASF862+0x1d596>
   c:	842a                	mv	s0,a0
   e:	84ae                	mv	s1,a1
  10:	eb91                	bnez	a5,24 <.L45>
			10: R_RISCV_RVC_BRANCH	.L45
  12:	85aa                	mv	a1,a0

00000014 <.LVL72>:
  14:	00000537          	lui	a0,0x0
			14: R_RISCV_HI20	txl_frame_env
			14: R_RISCV_RELAX	*ABS*

00000018 <.LVL73>:
  18:	00050513          	mv	a0,a0
			18: R_RISCV_LO12_I	txl_frame_env
			18: R_RISCV_RELAX	*ABS*
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	co_list_push_back
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL73+0x4>

00000024 <.L45>:
  24:	cc89                	beqz	s1,3e <.L44>
			24: R_RISCV_RVC_BRANCH	.L44
  26:	2cc42303          	lw	t1,716(s0)
  2a:	00030a63          	beqz	t1,3e <.L44>
			2a: R_RISCV_BRANCH	.L44
  2e:	2d042503          	lw	a0,720(s0)
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL75>:
  34:	40b2                	lw	ra,12(sp)
  36:	4492                	lw	s1,4(sp)
  38:	4581                	li	a1,0
  3a:	0141                	addi	sp,sp,16
  3c:	8302                	jr	t1

0000003e <.L44>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)

00000042 <.LVL77>:
  42:	4492                	lw	s1,4(sp)
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.txl_frame_evt:

00000000 <txl_frame_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	00020537          	lui	a0,0x20

00000008 <.LVL79>:
   8:	000004b7          	lui	s1,0x0
			8: R_RISCV_HI20	txl_cntrl_env
			8: R_RISCV_RELAX	*ABS*
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	cc22                	sw	s0,24(sp)
  14:	000009b7          	lui	s3,0x0
			14: R_RISCV_HI20	txl_frame_env+0x8
			14: R_RISCV_RELAX	*ABS*+0x8
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_evt_clear
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL79+0x10>

00000020 <.LVL80>:
  20:	00048493          	mv	s1,s1
			20: R_RISCV_LO12_I	txl_cntrl_env
			20: R_RISCV_RELAX	*ABS*
  24:	00000937          	lui	s2,0x0
			24: R_RISCV_HI20	txl_frame_env
			24: R_RISCV_RELAX	*ABS*

00000028 <.L55>:
  28:	30047073          	csrci	mstatus,8

0000002c <.LBE90>:
  2c:	00898513          	addi	a0,s3,8 # 8 <.LVL79>
			2c: R_RISCV_LO12_I	txl_frame_env+0x8
			2c: R_RISCV_RELAX	*ABS*+0x8
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	co_list_pop_front
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LBE90+0x4>

00000038 <.LVL81>:
  38:	842a                	mv	s0,a0

0000003a <.LBB92>:
  3a:	30046073          	csrsi	mstatus,8

0000003e <.LBE92>:
  3e:	cd0d                	beqz	a0,78 <.L54>
			3e: R_RISCV_RVC_BRANCH	.L54
  40:	48bc                	lw	a5,80(s1)
  42:	17fd                	addi	a5,a5,-1
  44:	c8bc                	sw	a5,80(s1)
  46:	2cc52783          	lw	a5,716(a0) # 202cc <.LASF862+0x1d58e>
  4a:	cf81                	beqz	a5,62 <.L57>
			4a: R_RISCV_RVC_BRANCH	.L57
  4c:	5578                	lw	a4,108(a0)
  4e:	2d052503          	lw	a0,720(a0)
  52:	432c                	lw	a1,64(a4)
  54:	9782                	jalr	a5
  56:	2d644783          	lbu	a5,726(s0)
  5a:	c781                	beqz	a5,62 <.L57>
			5a: R_RISCV_RVC_BRANCH	.L57
  5c:	2c040b23          	sb	zero,726(s0)
  60:	b7e1                	j	28 <.L55>
			60: R_RISCV_RVC_JUMP	.L55

00000062 <.L57>:
  62:	2d444783          	lbu	a5,724(s0)
  66:	f3e9                	bnez	a5,28 <.L55>
			66: R_RISCV_RVC_BRANCH	.L55
  68:	85a2                	mv	a1,s0
  6a:	00090513          	mv	a0,s2
			6a: R_RISCV_LO12_I	txl_frame_env
			6a: R_RISCV_RELAX	*ABS*
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	co_list_push_back
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L57+0xc>

00000076 <.LVL84>:
  76:	bf4d                	j	28 <.L55>
			76: R_RISCV_RVC_JUMP	.L55

00000078 <.L54>:
  78:	40f2                	lw	ra,28(sp)
  7a:	4462                	lw	s0,24(sp)

0000007c <.LVL85>:
  7c:	44d2                	lw	s1,20(sp)
  7e:	4942                	lw	s2,16(sp)
  80:	49b2                	lw	s3,12(sp)
  82:	6105                	addi	sp,sp,32
  84:	8082                	ret

Disassembly of section .text.txl_frame_send_null_frame:

00000000 <txl_frame_send_null_frame>:
   0:	1b000793          	li	a5,432
   4:	02f507b3          	mul	a5,a0,a5
   8:	7139                	addi	sp,sp,-64
   a:	d84a                	sw	s2,48(sp)
   c:	00000937          	lui	s2,0x0
			c: R_RISCV_HI20	sta_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	00090913          	mv	s2,s2
			10: R_RISCV_LO12_I	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	d64e                	sw	s3,44(sp)
  16:	d452                	sw	s4,40(sp)
  18:	d256                	sw	s5,36(sp)
  1a:	de06                	sw	ra,60(sp)
  1c:	dc22                	sw	s0,56(sp)
  1e:	da26                	sw	s1,52(sp)
  20:	d05a                	sw	s6,32(sp)
  22:	ce5e                	sw	s7,28(sp)
  24:	993e                	add	s2,s2,a5
  26:	89aa                	mv	s3,a0
  28:	8aae                	mv	s5,a1
  2a:	0028                	addi	a0,sp,8

0000002c <.LVL87>:
  2c:	4581                	li	a1,0

0000002e <.LVL88>:
  2e:	8a32                	mv	s4,a2
  30:	01a94b03          	lbu	s6,26(s2) # 1a <txl_frame_send_null_frame+0x1a>
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	phy_get_channel
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL88+0x6>

0000003c <.LVL90>:
  3c:	00814503          	lbu	a0,8(sp)
  40:	45e1                	li	a1,24
  42:	00a03533          	snez	a0,a0
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	txl_frame_get
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL90+0xa>

0000004e <.LVL91>:
  4e:	c579                	beqz	a0,11c <.L68>
			4e: R_RISCV_RVC_BRANCH	.L68
  50:	5d800793          	li	a5,1496
  54:	02fb0b33          	mul	s6,s6,a5
  58:	000007b7          	lui	a5,0x0
			58: R_RISCV_HI20	vif_info_tab
			58: R_RISCV_RELAX	*ABS*
  5c:	00078793          	mv	a5,a5
			5c: R_RISCV_LO12_I	vif_info_tab
			5c: R_RISCV_RELAX	*ABS*
  60:	84aa                	mv	s1,a0
  62:	85aa                	mv	a1,a0
  64:	01e90b93          	addi	s7,s2,30
  68:	9b3e                	add	s6,s6,a5
  6a:	855a                	mv	a0,s6

0000006c <.LVL93>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	tpc_update_frame_tx_power
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL93>

00000074 <.LBB98>:
  74:	54a0                	lw	s0,104(s1)

00000076 <.LBB101>:
  76:	04800793          	li	a5,72
  7a:	4619                	li	a2,6
  7c:	14f40623          	sb	a5,332(s0)
  80:	4785                	li	a5,1
  82:	14f406a3          	sb	a5,333(s0)
  86:	85de                	mv	a1,s7
  88:	14040723          	sb	zero,334(s0)
  8c:	140407a3          	sb	zero,335(s0)
  90:	15040513          	addi	a0,s0,336
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	memcpy
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LBB101+0x1e>

0000009c <.LVL96>:
  9c:	4619                	li	a2,6
  9e:	050b0593          	addi	a1,s6,80 # 50 <.LVL91+0x2>
  a2:	15640513          	addi	a0,s0,342
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	memcpy
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL96+0xa>

000000ae <.LVL97>:
  ae:	4619                	li	a2,6
  b0:	85de                	mv	a1,s7
  b2:	15c40513          	addi	a0,s0,348
  b6:	00000097          	auipc	ra,0x0
			b6: R_RISCV_CALL	memcpy
			b6: R_RISCV_RELAX	*ABS*
  ba:	000080e7          	jalr	ra # b6 <.LVL97+0x8>

000000be <.LBB102>:
  be:	00000737          	lui	a4,0x0
			be: R_RISCV_HI20	txl_cntrl_env
			be: R_RISCV_RELAX	*ABS*
  c2:	00070713          	mv	a4,a4
			c2: R_RISCV_LO12_I	txl_cntrl_env
			c2: R_RISCV_RELAX	*ABS*
  c6:	05475783          	lhu	a5,84(a4) # 54 <.LVL91+0x6>

000000ca <.LBE102>:
  ca:	458d                	li	a1,3
  cc:	8526                	mv	a0,s1

000000ce <.LBB105>:
  ce:	0785                	addi	a5,a5,1
  d0:	07c2                	slli	a5,a5,0x10
  d2:	83c1                	srli	a5,a5,0x10
  d4:	04f71a23          	sh	a5,84(a4)
  d8:	0792                	slli	a5,a5,0x4

000000da <.LBE105>:
  da:	07c2                	slli	a5,a5,0x10
  dc:	83c1                	srli	a5,a5,0x10
  de:	16f40123          	sb	a5,354(s0)
  e2:	83a1                	srli	a5,a5,0x8
  e4:	16f401a3          	sb	a5,355(s0)
  e8:	2d54a623          	sw	s5,716(s1) # 2cc <.LLST69+0x6>
  ec:	2d44a823          	sw	s4,720(s1)
  f0:	01a94783          	lbu	a5,26(s2)
  f4:	03348823          	sb	s3,48(s1)
  f8:	02f487a3          	sb	a5,47(s1)
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	txl_frame_push
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LBE105+0x22>

00000104 <.LVL99>:
 104:	4501                	li	a0,0

00000106 <.L67>:
 106:	50f2                	lw	ra,60(sp)
 108:	5462                	lw	s0,56(sp)
 10a:	54d2                	lw	s1,52(sp)
 10c:	5942                	lw	s2,48(sp)
 10e:	59b2                	lw	s3,44(sp)
 110:	5a22                	lw	s4,40(sp)

00000112 <.LVL102>:
 112:	5a92                	lw	s5,36(sp)

00000114 <.LVL103>:
 114:	5b02                	lw	s6,32(sp)
 116:	4bf2                	lw	s7,28(sp)
 118:	6121                	addi	sp,sp,64
 11a:	8082                	ret

0000011c <.L68>:
 11c:	4505                	li	a0,1

0000011e <.LVL105>:
 11e:	b7e5                	j	106 <.L67>
			11e: R_RISCV_RVC_JUMP	.L67

Disassembly of section .text.txl_frame_send_qosnull_frame:

00000000 <txl_frame_send_qosnull_frame>:
   0:	1b000793          	li	a5,432
   4:	02f507b3          	mul	a5,a0,a5
   8:	7139                	addi	sp,sp,-64
   a:	d452                	sw	s4,40(sp)
   c:	00000a37          	lui	s4,0x0
			c: R_RISCV_HI20	sta_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	d84a                	sw	s2,48(sp)
  12:	000a0913          	mv	s2,s4
			12: R_RISCV_LO12_I	sta_info_tab
			12: R_RISCV_RELAX	*ABS*
  16:	d256                	sw	s5,36(sp)
  18:	d05a                	sw	s6,32(sp)
  1a:	ce5e                	sw	s7,28(sp)
  1c:	cc62                	sw	s8,24(sp)
  1e:	de06                	sw	ra,60(sp)
  20:	dc22                	sw	s0,56(sp)
  22:	da26                	sw	s1,52(sp)
  24:	d64e                	sw	s3,44(sp)
  26:	ca66                	sw	s9,20(sp)
  28:	c86a                	sw	s10,16(sp)
  2a:	993e                	add	s2,s2,a5
  2c:	8b2a                	mv	s6,a0
  2e:	8aae                	mv	s5,a1
  30:	0028                	addi	a0,sp,8

00000032 <.LVL107>:
  32:	4581                	li	a1,0

00000034 <.LVL108>:
  34:	8c32                	mv	s8,a2
  36:	8bb6                	mv	s7,a3
  38:	01a94983          	lbu	s3,26(s2)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	phy_get_channel
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL108+0x8>

00000044 <.LVL110>:
  44:	00814503          	lbu	a0,8(sp)
  48:	45e9                	li	a1,26
  4a:	00a03533          	snez	a0,a0
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	txl_frame_get
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL110+0xa>

00000056 <.LVL111>:
  56:	c56d                	beqz	a0,140 <.L74>
			56: R_RISCV_RVC_BRANCH	.L74
  58:	5d800793          	li	a5,1496
  5c:	02f989b3          	mul	s3,s3,a5
  60:	000007b7          	lui	a5,0x0
			60: R_RISCV_HI20	vif_info_tab
			60: R_RISCV_RELAX	*ABS*
  64:	00078793          	mv	a5,a5
			64: R_RISCV_LO12_I	vif_info_tab
			64: R_RISCV_RELAX	*ABS*
  68:	85aa                	mv	a1,a0
  6a:	84aa                	mv	s1,a0
  6c:	fc800c93          	li	s9,-56
  70:	0979                	addi	s2,s2,30
  72:	000a0a13          	mv	s4,s4
			72: R_RISCV_LO12_I	sta_info_tab
			72: R_RISCV_RELAX	*ABS*
  76:	99be                	add	s3,s3,a5
  78:	854e                	mv	a0,s3

0000007a <.LVL113>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	tpc_update_frame_tx_power
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL113>

00000082 <.LBB106>:
  82:	54a0                	lw	s0,104(s1)

00000084 <.LBB109>:
  84:	4619                	li	a2,6
  86:	85ca                	mv	a1,s2
  88:	15940623          	sb	s9,332(s0)
  8c:	140406a3          	sb	zero,333(s0)
  90:	14040723          	sb	zero,334(s0)
  94:	140407a3          	sb	zero,335(s0)
  98:	15040513          	addi	a0,s0,336
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	memcpy
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LBB109+0x18>

000000a4 <.LVL116>:
  a4:	05098d13          	addi	s10,s3,80
  a8:	4619                	li	a2,6
  aa:	85ea                	mv	a1,s10
  ac:	15640513          	addi	a0,s0,342
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	memcpy
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL116+0xc>

000000b8 <.LVL117>:
  b8:	0569c783          	lbu	a5,86(s3)
  bc:	15940623          	sb	s9,332(s0)
  c0:	15c40513          	addi	a0,s0,348
  c4:	eba5                	bnez	a5,134 <.L72>
			c4: R_RISCV_RVC_BRANCH	.L72
  c6:	4785                	li	a5,1
  c8:	14f406a3          	sb	a5,333(s0)
  cc:	4619                	li	a2,6
  ce:	85ca                	mv	a1,s2

000000d0 <.L76>:
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	memcpy
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.L76>

000000d8 <.LVL118>:
  d8:	1b000793          	li	a5,432
  dc:	02fb07b3          	mul	a5,s6,a5
  e0:	17540223          	sb	s5,356(s0)
  e4:	008ada93          	srli	s5,s5,0x8
  e8:	16040123          	sb	zero,354(s0)
  ec:	160401a3          	sb	zero,355(s0)
  f0:	175402a3          	sb	s5,357(s0)
  f4:	2d84a623          	sw	s8,716(s1)
  f8:	2d74a823          	sw	s7,720(s1)
  fc:	458d                	li	a1,3
  fe:	8526                	mv	a0,s1
 100:	9a3e                	add	s4,s4,a5
 102:	01aa4783          	lbu	a5,26(s4) # 1a <txl_frame_send_qosnull_frame+0x1a>
 106:	03648823          	sb	s6,48(s1)
 10a:	02f487a3          	sb	a5,47(s1)
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	txl_frame_push
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.LVL118+0x36>

00000116 <.LVL119>:
 116:	4501                	li	a0,0

00000118 <.L71>:
 118:	50f2                	lw	ra,60(sp)
 11a:	5462                	lw	s0,56(sp)
 11c:	54d2                	lw	s1,52(sp)
 11e:	5942                	lw	s2,48(sp)
 120:	59b2                	lw	s3,44(sp)
 122:	5a22                	lw	s4,40(sp)
 124:	5a92                	lw	s5,36(sp)
 126:	5b02                	lw	s6,32(sp)
 128:	4bf2                	lw	s7,28(sp)

0000012a <.LVL122>:
 12a:	4c62                	lw	s8,24(sp)

0000012c <.LVL123>:
 12c:	4cd2                	lw	s9,20(sp)
 12e:	4d42                	lw	s10,16(sp)
 130:	6121                	addi	sp,sp,64
 132:	8082                	ret

00000134 <.L72>:
 134:	4789                	li	a5,2
 136:	14f406a3          	sb	a5,333(s0)
 13a:	4619                	li	a2,6
 13c:	85ea                	mv	a1,s10
 13e:	bf49                	j	d0 <.L76>
			13e: R_RISCV_RVC_JUMP	.L76

00000140 <.L74>:
 140:	4505                	li	a0,1

00000142 <.LVL126>:
 142:	bfd9                	j	118 <.L71>
			142: R_RISCV_RVC_JUMP	.L71

Disassembly of section .text.txl_frame_send_eapol_frame:

00000000 <txl_frame_send_eapol_frame>:
   0:	7159                	addi	sp,sp,-112
   2:	d2a6                	sw	s1,100(sp)

00000004 <.LBB147>:
   4:	1b000493          	li	s1,432
   8:	029504b3          	mul	s1,a0,s1

0000000c <.LBE147>:
   c:	cece                	sw	s3,92(sp)

0000000e <.LBB148>:
   e:	000009b7          	lui	s3,0x0
			e: R_RISCV_HI20	sta_info_tab
			e: R_RISCV_RELAX	*ABS*

00000012 <.LBE148>:
  12:	ccd2                	sw	s4,88(sp)

00000014 <.LBB149>:
  14:	00098a13          	mv	s4,s3
			14: R_RISCV_LO12_I	sta_info_tab
			14: R_RISCV_RELAX	*ABS*

00000018 <.LBE149>:
  18:	cad6                	sw	s5,84(sp)
  1a:	c8da                	sw	s6,80(sp)
  1c:	c6de                	sw	s7,76(sp)
  1e:	d686                	sw	ra,108(sp)
  20:	d4a2                	sw	s0,104(sp)
  22:	d0ca                	sw	s2,96(sp)
  24:	c4e2                	sw	s8,72(sp)
  26:	c2e6                	sw	s9,68(sp)
  28:	c0ea                	sw	s10,64(sp)
  2a:	de6e                	sw	s11,60(sp)
  2c:	8aaa                	mv	s5,a0
  2e:	8bae                	mv	s7,a1
  30:	0828                	addi	a0,sp,24

00000032 <.LVL128>:
  32:	4581                	li	a1,0

00000034 <.LBB150>:
  34:	9a26                	add	s4,s4,s1

00000036 <.LBE150>:
  36:	c432                	sw	a2,8(sp)
  38:	c636                	sw	a3,12(sp)
  3a:	8b3a                	mv	s6,a4

0000003c <.LBB151>:
  3c:	01aa4d83          	lbu	s11,26(s4)

00000040 <.LBE151>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	phy_get_channel
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LBE151>

00000048 <.LVL131>:
  48:	01814503          	lbu	a0,24(sp)
  4c:	10000593          	li	a1,256
  50:	00a03533          	snez	a0,a0
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	txl_frame_get
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL131+0xc>

0000005c <.LVL132>:
  5c:	38050063          	beqz	a0,3dc <.L78>
			5c: R_RISCV_BRANCH	.L78

00000060 <.LBB152>:
  60:	03b507a3          	sb	s11,47(a0)
  64:	03550823          	sb	s5,48(a0)
  68:	02050723          	sb	zero,46(a0)

0000006c <.LBB153>:
  6c:	0f8a5703          	lhu	a4,248(s4)
  70:	00098993          	mv	s3,s3
			70: R_RISCV_LO12_I	sta_info_tab
			70: R_RISCV_RELAX	*ABS*

00000074 <.LBE153>:
  74:	5d800913          	li	s2,1496

00000078 <.LBB157>:
  78:	00170793          	addi	a5,a4,1
  7c:	07d2                	slli	a5,a5,0x14
  7e:	83d1                	srli	a5,a5,0x14
  80:	0efa1c23          	sh	a5,248(s4)

00000084 <.LBE157>:
  84:	77e5                	lui	a5,0xffff9
  86:	e8878793          	addi	a5,a5,-376 # ffff8e88 <.LASF862+0xffff614a>
  8a:	02f51023          	sh	a5,32(a0)

0000008e <.LBB158>:
  8e:	01e48793          	addi	a5,s1,30

00000092 <.LBE158>:
  92:	02e51523          	sh	a4,42(a0)

00000096 <.LBB162>:
  96:	01378cb3          	add	s9,a5,s3

0000009a <.LBE162>:
  9a:	000cd703          	lhu	a4,0(s9)
  9e:	032d8933          	mul	s2,s11,s2

000000a2 <.LBB163>:
  a2:	00000a37          	lui	s4,0x0
			a2: R_RISCV_HI20	vif_info_tab
			a2: R_RISCV_RELAX	*ABS*

000000a6 <.LBE165>:
  a6:	00e51a23          	sh	a4,20(a0)

000000aa <.LBB215>:
  aa:	002cd703          	lhu	a4,2(s9)
  ae:	842a                	mv	s0,a0
  b0:	85aa                	mv	a1,a0
  b2:	00e51b23          	sh	a4,22(a0)

000000b6 <.LBB216>:
  b6:	004cd703          	lhu	a4,4(s9)

000000ba <.LBB169>:
  ba:	05090693          	addi	a3,s2,80

000000be <.LBE169>:
  be:	00e51c23          	sh	a4,24(a0)

000000c2 <.LBB170>:
  c2:	000a0713          	mv	a4,s4
			c2: R_RISCV_LO12_I	vif_info_tab
			c2: R_RISCV_RELAX	*ABS*
  c6:	00e68d33          	add	s10,a3,a4

000000ca <.LBE170>:
  ca:	000d5603          	lhu	a2,0(s10)
  ce:	993a                	add	s2,s2,a4

000000d0 <.LVL139>:
  d0:	000a0a13          	mv	s4,s4
			d0: R_RISCV_LO12_I	vif_info_tab
			d0: R_RISCV_RELAX	*ABS*
  d4:	00c51d23          	sh	a2,26(a0)

000000d8 <.LBB217>:
  d8:	002d5603          	lhu	a2,2(s10)
  dc:	00c51e23          	sh	a2,28(a0)

000000e0 <.LBB218>:
  e0:	004d5603          	lhu	a2,4(s10)
  e4:	00c51f23          	sh	a2,30(a0)
  e8:	854a                	mv	a0,s2

000000ea <.LVL142>:
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	tpc_update_frame_tx_power
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL142>

000000f2 <.LBB171>:
  f2:	3e092703          	lw	a4,992(s2)

000000f6 <.LBB175>:
  f6:	5424                	lw	s1,104(s0)

000000f8 <.LBB176>:
  f8:	8b05                	andi	a4,a4,1
  fa:	30070163          	beqz	a4,3fc <.L79>
			fa: R_RISCV_BRANCH	.L79
  fe:	f8800713          	li	a4,-120
 102:	14e48623          	sb	a4,332(s1)
 106:	140486a3          	sb	zero,333(s1)
 10a:	02a45703          	lhu	a4,42(s0)
 10e:	16648913          	addi	s2,s1,358

00000112 <.LVL145>:
 112:	022b0a93          	addi	s5,s6,34
 116:	0712                	slli	a4,a4,0x4
 118:	0742                	slli	a4,a4,0x10
 11a:	8341                	srli	a4,a4,0x10
 11c:	16e48123          	sb	a4,354(s1)
 120:	8321                	srli	a4,a4,0x8
 122:	16e481a3          	sb	a4,355(s1)
 126:	02e44703          	lbu	a4,46(s0)
 12a:	160482a3          	sb	zero,357(s1)

0000012e <.LVL146>:
 12e:	16e48223          	sb	a4,356(s1)

00000132 <.L80>:
 132:	10000713          	li	a4,256
 136:	03577063          	bgeu	a4,s5,156 <.L81>
			136: R_RISCV_BRANCH	.L81
 13a:	000005b7          	lui	a1,0x0
			13a: R_RISCV_HI20	.LC2
			13a: R_RISCV_RELAX	*ABS*
 13e:	00000537          	lui	a0,0x0
			13e: R_RISCV_HI20	.LC4
			13e: R_RISCV_RELAX	*ABS*
 142:	59100613          	li	a2,1425
 146:	00058593          	mv	a1,a1
			146: R_RISCV_LO12_I	.LC2
			146: R_RISCV_RELAX	*ABS*
 14a:	00050513          	mv	a0,a0
			14a: R_RISCV_LO12_I	.LC4
			14a: R_RISCV_RELAX	*ABS*
 14e:	00000097          	auipc	ra,0x0
			14e: R_RISCV_CALL	assert_err
			14e: R_RISCV_RELAX	*ABS*
 152:	000080e7          	jalr	ra # 14e <.L80+0x1c>

00000156 <.L81>:
 156:	14d4c703          	lbu	a4,333(s1)
 15a:	14c4c603          	lbu	a2,332(s1)

0000015e <.LBE177>:
 15e:	4589                	li	a1,2
 160:	0722                	slli	a4,a4,0x8
 162:	8f51                	or	a4,a4,a2

00000164 <.LBB180>:
 164:	5d800613          	li	a2,1496
 168:	02cd8633          	mul	a2,s11,a2
 16c:	9652                	add	a2,a2,s4

0000016e <.LBE180>:
 16e:	05664503          	lbu	a0,86(a2)
 172:	10076613          	ori	a2,a4,256
 176:	00b51463          	bne	a0,a1,17e <.L83>
			176: R_RISCV_BRANCH	.L83
 17a:	20076613          	ori	a2,a4,512

0000017e <.L83>:
 17e:	14c48623          	sb	a2,332(s1)
 182:	8221                	srli	a2,a2,0x8
 184:	14c486a3          	sb	a2,333(s1)
 188:	14048723          	sb	zero,334(s1)
 18c:	140487a3          	sb	zero,335(s1)

00000190 <.LBB220>:
 190:	000cd703          	lhu	a4,0(s9)
 194:	14e49823          	sh	a4,336(s1)

00000198 <.LBB221>:
 198:	002cd703          	lhu	a4,2(s9)
 19c:	14e49923          	sh	a4,338(s1)

000001a0 <.LBB222>:
 1a0:	004cd703          	lhu	a4,4(s9)
 1a4:	14e49a23          	sh	a4,340(s1)

000001a8 <.LBB223>:
 1a8:	000d5703          	lhu	a4,0(s10)
 1ac:	14e49b23          	sh	a4,342(s1)

000001b0 <.LBB224>:
 1b0:	002d5703          	lhu	a4,2(s10)
 1b4:	14e49c23          	sh	a4,344(s1)

000001b8 <.LBB225>:
 1b8:	004d5703          	lhu	a4,4(s10)
 1bc:	14e49d23          	sh	a4,346(s1)

000001c0 <.LBB181>:
 1c0:	5d800713          	li	a4,1496
 1c4:	02ed8db3          	mul	s11,s11,a4

000001c8 <.LBE181>:
 1c8:	4709                	li	a4,2

000001ca <.LBB184>:
 1ca:	9dd2                	add	s11,s11,s4

000001cc <.LBE184>:
 1cc:	056dc603          	lbu	a2,86(s11)
 1d0:	26e61363          	bne	a2,a4,436 <.L84>
			1d0: R_RISCV_BRANCH	.L84

000001d4 <.LBB226>:
 1d4:	000d5783          	lhu	a5,0(s10)
 1d8:	14f49e23          	sh	a5,348(s1)

000001dc <.LBB227>:
 1dc:	002d5783          	lhu	a5,2(s10)
 1e0:	14f49f23          	sh	a5,350(s1)

000001e4 <.LBB228>:
 1e4:	004d5783          	lhu	a5,4(s10)

000001e8 <.L123>:
 1e8:	16f49023          	sh	a5,352(s1)

000001ec <.LBB185>:
 1ec:	02f44783          	lbu	a5,47(s0)
 1f0:	5d800713          	li	a4,1496
 1f4:	4d81                	li	s11,0
 1f6:	02e787b3          	mul	a5,a5,a4
 1fa:	97d2                	add	a5,a5,s4
 1fc:	0567c783          	lbu	a5,86(a5)
 200:	10079163          	bnez	a5,302 <.L86>
			200: R_RISCV_BRANCH	.L86
 204:	03044783          	lbu	a5,48(s0)
 208:	1b000713          	li	a4,432
 20c:	4689                	li	a3,2
 20e:	02e787b3          	mul	a5,a5,a4
 212:	97ce                	add	a5,a5,s3
 214:	0317c703          	lbu	a4,49(a5)
 218:	0ed71563          	bne	a4,a3,302 <.L86>
			218: R_RISCV_BRANCH	.L86
 21c:	0ac7a783          	lw	a5,172(a5)
 220:	4685                	li	a3,1
 222:	438c                	lw	a1,0(a5)
 224:	0605c783          	lbu	a5,96(a1) # 60 <.LBB152>
 228:	22d78263          	beq	a5,a3,44c <.L87>
			228: R_RISCV_BRANCH	.L87
 22c:	c791                	beqz	a5,238 <.L88>
			22c: R_RISCV_RVC_BRANCH	.L88
 22e:	24e78463          	beq	a5,a4,476 <.L89>
			22e: R_RISCV_BRANCH	.L89
 232:	470d                	li	a4,3
 234:	26e79563          	bne	a5,a4,49e <.L101>
			234: R_RISCV_BRANCH	.L101

00000238 <.L88>:
 238:	45bc                	lw	a5,72(a1)
 23a:	45f4                	lw	a3,76(a1)
 23c:	4611                	li	a2,4
 23e:	00178713          	addi	a4,a5,1
 242:	00f737b3          	sltu	a5,a4,a5
 246:	97b6                	add	a5,a5,a3
 248:	c5fc                	sw	a5,76(a1)
 24a:	c5b8                	sw	a4,72(a1)
 24c:	02240513          	addi	a0,s0,34
 250:	04858593          	addi	a1,a1,72
 254:	00000097          	auipc	ra,0x0
			254: R_RISCV_CALL	memcpy
			254: R_RISCV_RELAX	*ABS*
 258:	000080e7          	jalr	ra # 254 <.L88+0x1c>

0000025c <.LVL162>:
 25c:	4791                	li	a5,4
 25e:	4d91                	li	s11,4

00000260 <.L90>:
 260:	9dbe                	add	s11,s11,a5

00000262 <.LBE185>:
 262:	0a0d8063          	beqz	s11,302 <.L86>
			262: R_RISCV_BRANCH	.L86
 266:	14d4c783          	lbu	a5,333(s1)
 26a:	14c4c703          	lbu	a4,332(s1)
 26e:	9aee                	add	s5,s5,s11

00000270 <.LVL165>:
 270:	07a2                	slli	a5,a5,0x8
 272:	8fd9                	or	a5,a5,a4
 274:	6711                	lui	a4,0x4
 276:	8fd9                	or	a5,a5,a4
 278:	14f48623          	sb	a5,332(s1)
 27c:	83a1                	srli	a5,a5,0x8
 27e:	14f486a3          	sb	a5,333(s1)

00000282 <.LBB188>:
 282:	02f44783          	lbu	a5,47(s0)
 286:	5d800713          	li	a4,1496
 28a:	02e787b3          	mul	a5,a5,a4
 28e:	9a3e                	add	s4,s4,a5
 290:	056a4703          	lbu	a4,86(s4) # 56 <.LVL131+0xe>
 294:	26071363          	bnez	a4,4fa <.L102>
			294: R_RISCV_BRANCH	.L102
 298:	03044783          	lbu	a5,48(s0)
 29c:	1b000693          	li	a3,432
 2a0:	02d787b3          	mul	a5,a5,a3
 2a4:	4689                	li	a3,2
 2a6:	97ce                	add	a5,a5,s3
 2a8:	0317c603          	lbu	a2,49(a5)
 2ac:	04d61963          	bne	a2,a3,2fe <.L91>
			2ac: R_RISCV_BRANCH	.L91
 2b0:	0ac7a783          	lw	a5,172(a5)
 2b4:	4505                	li	a0,1
 2b6:	4394                	lw	a3,0(a5)
 2b8:	547c                	lw	a5,108(s0)
 2ba:	578c                	lw	a1,40(a5)
 2bc:	0606c783          	lbu	a5,96(a3)
 2c0:	1ea78263          	beq	a5,a0,4a4 <.L92>
			2c0: R_RISCV_BRANCH	.L92
 2c4:	c791                	beqz	a5,2d0 <.L93>
			2c4: R_RISCV_RVC_BRANCH	.L93
 2c6:	22c78063          	beq	a5,a2,4e6 <.L94>
			2c6: R_RISCV_BRANCH	.L94
 2ca:	460d                	li	a2,3
 2cc:	00c79f63          	bne	a5,a2,2ea <.L95>
			2cc: R_RISCV_BRANCH	.L95

000002d0 <.L93>:
 2d0:	02245783          	lhu	a5,34(s0)
 2d4:	00f91023          	sh	a5,0(s2)

000002d8 <.LVL168>:
 2d8:	0616c783          	lbu	a5,97(a3)
 2dc:	02445703          	lhu	a4,36(s0)
 2e0:	07ba                	slli	a5,a5,0xe
 2e2:	8fd9                	or	a5,a5,a4
 2e4:	00f91123          	sh	a5,2(s2)
 2e8:	4711                	li	a4,4

000002ea <.L95>:
 2ea:	45dc                	lw	a5,12(a1)
 2ec:	0626c683          	lbu	a3,98(a3)
 2f0:	00100637          	lui	a2,0x100
 2f4:	c0060613          	addi	a2,a2,-1024 # ffc00 <.LASF862+0xfcec2>
 2f8:	8ff1                	and	a5,a5,a2
 2fa:	8fd5                	or	a5,a5,a3
 2fc:	c5dc                	sw	a5,12(a1)

000002fe <.L91>:
 2fe:	993a                	add	s2,s2,a4

00000300 <.LVL171>:
 300:	8c4a                	mv	s8,s2

00000302 <.L86>:
 302:	77ed                	lui	a5,0xffffb
 304:	aaa78793          	addi	a5,a5,-1366 # ffffaaaa <.LASF862+0xffff7d6c>
 308:	00f91023          	sh	a5,0(s2)
 30c:	478d                	li	a5,3
 30e:	00f91123          	sh	a5,2(s2)
 312:	00091223          	sh	zero,4(s2)
 316:	02045783          	lhu	a5,32(s0)
 31a:	45b2                	lw	a1,12(sp)
 31c:	865a                	mv	a2,s6
 31e:	00f91323          	sh	a5,6(s2)

00000322 <.LVL173>:
 322:	00890513          	addi	a0,s2,8
 326:	00000097          	auipc	ra,0x0
			326: R_RISCV_CALL	memcpy
			326: R_RISCV_RELAX	*ABS*
 32a:	000080e7          	jalr	ra # 326 <.LVL173+0x4>

0000032e <.LVL174>:
 32e:	060d8a63          	beqz	s11,3a2 <.L96>
			32e: R_RISCV_BRANCH	.L96

00000332 <.LBB191>:
 332:	03044783          	lbu	a5,48(s0)
 336:	1b000713          	li	a4,432
 33a:	02e787b3          	mul	a5,a5,a4
 33e:	99be                	add	s3,s3,a5
 340:	0ac9a783          	lw	a5,172(s3) # ac <.LBB215+0x2>
 344:	438c                	lw	a1,0(a5)

00000346 <.LVL176>:
 346:	4785                	li	a5,1
 348:	0605c703          	lbu	a4,96(a1)
 34c:	04f71b63          	bne	a4,a5,3a2 <.L96>
			34c: R_RISCV_BRANCH	.L96

00000350 <.LBB193>:
 350:	02e44703          	lbu	a4,46(s0)
 354:	01a40693          	addi	a3,s0,26
 358:	01440613          	addi	a2,s0,20
 35c:	05058593          	addi	a1,a1,80

00000360 <.LVL177>:
 360:	1008                	addi	a0,sp,32
 362:	00000097          	auipc	ra,0x0
			362: R_RISCV_CALL	me_mic_init
			362: R_RISCV_RELAX	*ABS*
 366:	000080e7          	jalr	ra # 362 <.LVL177+0x2>

0000036a <.LBE191>:
 36a:	0b21                	addi	s6,s6,8

0000036c <.LBB200>:
 36c:	865a                	mv	a2,s6
 36e:	85e2                	mv	a1,s8
 370:	1008                	addi	a0,sp,32
 372:	00000097          	auipc	ra,0x0
			372: R_RISCV_CALL	me_mic_calc
			372: R_RISCV_RELAX	*ABS*
 376:	000080e7          	jalr	ra # 372 <.LBB200+0x6>

0000037a <.LVL180>:
 37a:	1008                	addi	a0,sp,32
 37c:	00000097          	auipc	ra,0x0
			37c: R_RISCV_CALL	me_mic_end
			37c: R_RISCV_RELAX	*ABS*
 380:	000080e7          	jalr	ra # 37c <.LVL180+0x2>

00000384 <.LVL181>:
 384:	018b04b3          	add	s1,s6,s8

00000388 <.LVL182>:
 388:	4781                	li	a5,0

0000038a <.LBB194>:
 38a:	4721                	li	a4,8

0000038c <.L97>:
 38c:	1014                	addi	a3,sp,32

0000038e <.LVL184>:
 38e:	96be                	add	a3,a3,a5

00000390 <.LVL185>:
 390:	0006c603          	lbu	a2,0(a3)

00000394 <.LBB198>:
 394:	00f486b3          	add	a3,s1,a5

00000398 <.LVL187>:
 398:	0785                	addi	a5,a5,1

0000039a <.LVL188>:
 39a:	00c68023          	sb	a2,0(a3)

0000039e <.LBE198>:
 39e:	fee797e3          	bne	a5,a4,38c <.L97>
			39e: R_RISCV_BRANCH	.L97

000003a2 <.L96>:
 3a2:	5478                	lw	a4,108(s0)

000003a4 <.LVL190>:
 3a4:	4b5c                	lw	a5,20(a4)
 3a6:	17fd                	addi	a5,a5,-1
 3a8:	97d6                	add	a5,a5,s5
 3aa:	0a91                	addi	s5,s5,4

000003ac <.LVL191>:
 3ac:	cf1c                	sw	a5,24(a4)
 3ae:	01572e23          	sw	s5,28(a4) # 401c <.LASF862+0x12de>
 3b2:	000b8763          	beqz	s7,3c0 <.L98>
			3b2: R_RISCV_BRANCH	.L98
 3b6:	47a2                	lw	a5,8(sp)
 3b8:	2d742623          	sw	s7,716(s0)
 3bc:	2cf42823          	sw	a5,720(s0)

000003c0 <.L98>:
 3c0:	02e44703          	lbu	a4,46(s0)

000003c4 <.LVL192>:
 3c4:	000007b7          	lui	a5,0x0
			3c4: R_RISCV_HI20	mac_tid2ac
			3c4: R_RISCV_RELAX	*ABS*
 3c8:	00078793          	mv	a5,a5
			3c8: R_RISCV_LO12_I	mac_tid2ac
			3c8: R_RISCV_RELAX	*ABS*
 3cc:	97ba                	add	a5,a5,a4
 3ce:	0007c583          	lbu	a1,0(a5) # 0 <txl_frame_send_eapol_frame>
 3d2:	8522                	mv	a0,s0
 3d4:	00000097          	auipc	ra,0x0
			3d4: R_RISCV_CALL	txl_frame_push
			3d4: R_RISCV_RELAX	*ABS*
 3d8:	000080e7          	jalr	ra # 3d4 <.LVL192+0x10>

000003dc <.L78>:
 3dc:	50b6                	lw	ra,108(sp)
 3de:	5426                	lw	s0,104(sp)
 3e0:	5496                	lw	s1,100(sp)
 3e2:	5906                	lw	s2,96(sp)
 3e4:	49f6                	lw	s3,92(sp)
 3e6:	4a66                	lw	s4,88(sp)
 3e8:	4ad6                	lw	s5,84(sp)
 3ea:	4b46                	lw	s6,80(sp)
 3ec:	4bb6                	lw	s7,76(sp)

000003ee <.LVL194>:
 3ee:	4c26                	lw	s8,72(sp)
 3f0:	4c96                	lw	s9,68(sp)
 3f2:	4d06                	lw	s10,64(sp)
 3f4:	5df2                	lw	s11,60(sp)
 3f6:	4501                	li	a0,0
 3f8:	6165                	addi	sp,sp,112

000003fa <.LVL195>:
 3fa:	8082                	ret

000003fc <.L79>:
 3fc:	00000637          	lui	a2,0x0
			3fc: R_RISCV_HI20	txl_cntrl_env
			3fc: R_RISCV_RELAX	*ABS*

00000400 <.LBE203>:
 400:	4721                	li	a4,8

00000402 <.LBB209>:
 402:	00060613          	mv	a2,a2
			402: R_RISCV_LO12_I	txl_cntrl_env
			402: R_RISCV_RELAX	*ABS*

00000406 <.LBE209>:
 406:	14e48623          	sb	a4,332(s1)

0000040a <.LBB210>:
 40a:	05465703          	lhu	a4,84(a2) # 54 <.LVL131+0xc>

0000040e <.LBE210>:
 40e:	140486a3          	sb	zero,333(s1)

00000412 <.LBB211>:
 412:	16448913          	addi	s2,s1,356

00000416 <.LBB212>:
 416:	0705                	addi	a4,a4,1
 418:	0742                	slli	a4,a4,0x10
 41a:	8341                	srli	a4,a4,0x10
 41c:	04e61a23          	sh	a4,84(a2)
 420:	0712                	slli	a4,a4,0x4

00000422 <.LBE212>:
 422:	0742                	slli	a4,a4,0x10
 424:	8341                	srli	a4,a4,0x10
 426:	16e48123          	sb	a4,354(s1)
 42a:	8321                	srli	a4,a4,0x8
 42c:	16e481a3          	sb	a4,355(s1)

00000430 <.LVL198>:
 430:	020b0a93          	addi	s5,s6,32

00000434 <.LVL199>:
 434:	b9fd                	j	132 <.L80>
			434: R_RISCV_RVC_JUMP	.L80

00000436 <.L84>:
 436:	000cd703          	lhu	a4,0(s9)
 43a:	14e49e23          	sh	a4,348(s1)

0000043e <.LBB231>:
 43e:	002cd703          	lhu	a4,2(s9)
 442:	14e49f23          	sh	a4,350(s1)

00000446 <.LBB232>:
 446:	004cd783          	lhu	a5,4(s9)
 44a:	bb79                	j	1e8 <.L123>
			44a: R_RISCV_RVC_JUMP	.L123

0000044c <.L87>:
 44c:	45bc                	lw	a5,72(a1)
 44e:	45f4                	lw	a3,76(a1)
 450:	4619                	li	a2,6
 452:	00178713          	addi	a4,a5,1
 456:	00f737b3          	sltu	a5,a4,a5
 45a:	97b6                	add	a5,a5,a3
 45c:	c5fc                	sw	a5,76(a1)
 45e:	c5b8                	sw	a4,72(a1)
 460:	02240513          	addi	a0,s0,34
 464:	04858593          	addi	a1,a1,72
 468:	00000097          	auipc	ra,0x0
			468: R_RISCV_CALL	memcpy
			468: R_RISCV_RELAX	*ABS*
 46c:	000080e7          	jalr	ra # 468 <.L87+0x1c>

00000470 <.LVL205>:
 470:	47b1                	li	a5,12

00000472 <.L124>:
 472:	4da1                	li	s11,8
 474:	b3f5                	j	260 <.L90>
			474: R_RISCV_RVC_JUMP	.L90

00000476 <.L89>:
 476:	45bc                	lw	a5,72(a1)
 478:	45f4                	lw	a3,76(a1)
 47a:	4619                	li	a2,6
 47c:	00178713          	addi	a4,a5,1
 480:	00f737b3          	sltu	a5,a4,a5
 484:	97b6                	add	a5,a5,a3
 486:	c5fc                	sw	a5,76(a1)
 488:	c5b8                	sw	a4,72(a1)
 48a:	02240513          	addi	a0,s0,34
 48e:	04858593          	addi	a1,a1,72
 492:	00000097          	auipc	ra,0x0
			492: R_RISCV_CALL	memcpy
			492: R_RISCV_RELAX	*ABS*
 496:	000080e7          	jalr	ra # 492 <.L89+0x1c>

0000049a <.LVL209>:
 49a:	47a1                	li	a5,8
 49c:	bfd9                	j	472 <.L124>
			49c: R_RISCV_RVC_JUMP	.L124

0000049e <.L101>:
 49e:	4781                	li	a5,0
 4a0:	4d81                	li	s11,0
 4a2:	bb7d                	j	260 <.L90>
			4a2: R_RISCV_RVC_JUMP	.L90

000004a4 <.L92>:
 4a4:	02245603          	lhu	a2,34(s0)
 4a8:	6809                	lui	a6,0x2
 4aa:	6521                	lui	a0,0x8
 4ac:	01066733          	or	a4,a2,a6
 4b0:	f0050513          	addi	a0,a0,-256 # 7f00 <.LASF862+0x51c2>
 4b4:	8f69                	and	a4,a4,a0
 4b6:	8221                	srli	a2,a2,0x8
 4b8:	8f51                	or	a4,a4,a2
 4ba:	00e91023          	sh	a4,0(s2)

000004be <.LVL212>:
 4be:	0616c703          	lbu	a4,97(a3)
 4c2:	02244783          	lbu	a5,34(s0)
 4c6:	073a                	slli	a4,a4,0xe
 4c8:	8fd9                	or	a5,a5,a4
 4ca:	0107e7b3          	or	a5,a5,a6

000004ce <.L125>:
 4ce:	00f91123          	sh	a5,2(s2)
 4d2:	02445783          	lhu	a5,36(s0)
 4d6:	4721                	li	a4,8
 4d8:	00f91223          	sh	a5,4(s2)
 4dc:	02645783          	lhu	a5,38(s0)
 4e0:	00f91323          	sh	a5,6(s2)
 4e4:	b519                	j	2ea <.L95>
			4e4: R_RISCV_RVC_JUMP	.L95

000004e6 <.L94>:
 4e6:	02245783          	lhu	a5,34(s0)
 4ea:	6709                	lui	a4,0x2
 4ec:	00f91023          	sh	a5,0(s2)

000004f0 <.LVL214>:
 4f0:	0616c783          	lbu	a5,97(a3)
 4f4:	07ba                	slli	a5,a5,0xe
 4f6:	8fd9                	or	a5,a5,a4
 4f8:	bfd9                	j	4ce <.L125>
			4f8: R_RISCV_RVC_JUMP	.L125

000004fa <.L102>:
 4fa:	4701                	li	a4,0
 4fc:	b509                	j	2fe <.L91>
			4fc: R_RISCV_RVC_JUMP	.L91

Disassembly of section .text.txl_frame_dump:

00000000 <txl_frame_dump>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	txl_frame_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040513          	mv	a0,s0
			8: R_RISCV_LO12_I	txl_frame_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	co_list_cnt
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <txl_frame_dump+0xe>

00000016 <.LVL217>:
  16:	c909                	beqz	a0,28 <.L126>
			16: R_RISCV_RVC_BRANCH	.L126
  18:	00042703          	lw	a4,0(s0) # 0 <txl_frame_dump>
			18: R_RISCV_LO12_I	txl_frame_env
			18: R_RISCV_RELAX	*ABS*
  1c:	87a2                	mv	a5,s0

0000001e <.L128>:
  1e:	eb09                	bnez	a4,30 <.L129>
			1e: R_RISCV_RVC_BRANCH	.L129
  20:	00078793          	mv	a5,a5
			20: R_RISCV_LO12_I	txl_frame_env
			20: R_RISCV_RELAX	*ABS*
  24:	479c                	lw	a5,8(a5)

00000026 <.L130>:
  26:	e799                	bnez	a5,34 <.L131>
			26: R_RISCV_RVC_BRANCH	.L131

00000028 <.L126>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4422                	lw	s0,8(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

00000030 <.L129>:
  30:	4318                	lw	a4,0(a4)
  32:	b7f5                	j	1e <.L128>
			32: R_RISCV_RVC_JUMP	.L128

00000034 <.L131>:
  34:	439c                	lw	a5,0(a5)
  36:	bfc5                	j	26 <.L130>
			36: R_RISCV_RVC_JUMP	.L130
