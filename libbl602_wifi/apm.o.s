
libbl602_wifi/apm.o:     file format elf32-littleriscv


Disassembly of section .text._aid_list_delete:

00000000 <_aid_list_delete>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	apm_env
			2: R_RISCV_RELAX	*ABS*
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c256                	sw	s5,4(sp)
   e:	c05a                	sw	s6,0(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	8b2a                	mv	s6,a0
  18:	00078913          	mv	s2,a5
			18: R_RISCV_LO12_I	apm_env
			18: R_RISCV_RELAX	*ABS*
  1c:	4401                	li	s0,0
  1e:	00078493          	mv	s1,a5
			1e: R_RISCV_LO12_I	apm_env
			1e: R_RISCV_RELAX	*ABS*
  22:	4aa9                	li	s5,10

00000024 <.L4>:
  24:	01e94783          	lbu	a5,30(s2)
  28:	c7a1                	beqz	a5,70 <.L2>
			28: R_RISCV_RVC_BRANCH	.L2
  2a:	01890a13          	addi	s4,s2,24
  2e:	4619                	li	a2,6
  30:	85da                	mv	a1,s6
  32:	8552                	mv	a0,s4
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	memcmp
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.L4+0x10>

0000003c <.LVL2>:
  3c:	89aa                	mv	s3,a0
  3e:	e90d                	bnez	a0,70 <.L2>
			3e: R_RISCV_RVC_BRANCH	.L2
  40:	4619                	li	a2,6
  42:	4581                	li	a1,0
  44:	8552                	mv	a0,s4
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	memset
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL2+0xa>

0000004e <.LVL3>:
  4e:	479d                	li	a5,7
  50:	02f40433          	mul	s0,s0,a5

00000054 <.LVL4>:
  54:	9426                	add	s0,s0,s1
  56:	00040f23          	sb	zero,30(s0)

0000005a <.L1>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	4462                	lw	s0,24(sp)
  5e:	854e                	mv	a0,s3
  60:	44d2                	lw	s1,20(sp)
  62:	4942                	lw	s2,16(sp)
  64:	49b2                	lw	s3,12(sp)
  66:	4a22                	lw	s4,8(sp)
  68:	4a92                	lw	s5,4(sp)
  6a:	4b02                	lw	s6,0(sp)

0000006c <.LVL5>:
  6c:	6105                	addi	sp,sp,32
  6e:	8082                	ret

00000070 <.L2>:
  70:	0405                	addi	s0,s0,1
  72:	091d                	addi	s2,s2,7
  74:	fb5418e3          	bne	s0,s5,24 <.L4>
			74: R_RISCV_BRANCH	.L4
  78:	59fd                	li	s3,-1
  7a:	b7c5                	j	5a <.L1>
			7a: R_RISCV_RVC_JUMP	.L1

Disassembly of section .text.apm_sta_delete:

00000000 <apm_sta_delete>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	6505                	lui	a0,0x1

00000008 <.LVL9>:
   8:	c64e                	sw	s3,12(sp)
   a:	4689                	li	a3,2
   c:	89ae                	mv	s3,a1
   e:	461d                	li	a2,7
  10:	4595                	li	a1,5

00000012 <.LVL10>:
  12:	40950513          	addi	a0,a0,1033 # 1409 <.LASF990+0x4>
  16:	ce06                	sw	ra,28(sp)
  18:	cc22                	sw	s0,24(sp)
  1a:	c84a                	sw	s2,16(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ke_msg_alloc
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL10+0xa>

00000024 <.LVL11>:
  24:	842a                	mv	s0,a0

00000026 <.LVL12>:
  26:	6509                	lui	a0,0x2
  28:	4685                	li	a3,1
  2a:	461d                	li	a2,7
  2c:	45b5                	li	a1,13
  2e:	c0950513          	addi	a0,a0,-1015 # 1c09 <.LASF1297>
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	ke_msg_alloc
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL12+0xc>

0000003a <.LVL13>:
  3a:	892a                	mv	s2,a0

0000003c <.LVL14>:
  3c:	854e                	mv	a0,s3

0000003e <.LVL15>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	_aid_list_delete
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL15>

00000046 <.LVL16>:
  46:	00848513          	addi	a0,s1,8
  4a:	0ff57513          	andi	a0,a0,255
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	mm_sec_machwkey_del
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL16+0x8>

00000056 <.LVL17>:
  56:	000007b7          	lui	a5,0x0
			56: R_RISCV_HI20	apm_env
			56: R_RISCV_RELAX	*ABS*
  5a:	00078793          	mv	a5,a5
			5a: R_RISCV_LO12_I	apm_env
			5a: R_RISCV_RELAX	*ABS*
  5e:	0167c703          	lbu	a4,22(a5) # 16 <.LVL10+0x4>
  62:	854a                	mv	a0,s2
  64:	177d                	addi	a4,a4,-1
  66:	00e78b23          	sb	a4,22(a5)
  6a:	00990023          	sb	s1,0(s2)
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_send
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL17+0x18>

00000076 <.LVL18>:
  76:	00940023          	sb	s1,0(s0)
  7a:	000400a3          	sb	zero,1(s0)
  7e:	8522                	mv	a0,s0
  80:	4462                	lw	s0,24(sp)

00000082 <.LVL19>:
  82:	40f2                	lw	ra,28(sp)
  84:	44d2                	lw	s1,20(sp)
  86:	4942                	lw	s2,16(sp)

00000088 <.LVL20>:
  88:	49b2                	lw	s3,12(sp)

0000008a <.LVL21>:
  8a:	6105                	addi	sp,sp,32
  8c:	00000317          	auipc	t1,0x0
			8c: R_RISCV_CALL	ke_msg_send
			8c: R_RISCV_RELAX	*ABS*
  90:	00030067          	jr	t1 # 8c <.LVL21+0x2>

Disassembly of section .text.apm_tx_cfm_handler:

00000000 <apm_tx_cfm_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	00859793          	slli	a5,a1,0x8
   a:	842a                	mv	s0,a0
   c:	0207d463          	bgez	a5,34 <.L13>
			c: R_RISCV_BRANCH	.L13
  10:	04455703          	lhu	a4,68(a0)
  14:	cb01                	beqz	a4,24 <.L14>
			14: R_RISCV_RVC_BRANCH	.L14
  16:	4462                	lw	s0,24(sp)
  18:	40f2                	lw	ra,28(sp)
  1a:	6105                	addi	sp,sp,32
  1c:	00000317          	auipc	t1,0x0
			1c: R_RISCV_CALL	ke_msg_send
			1c: R_RISCV_RELAX	*ABS*
  20:	00030067          	jr	t1 # 1c <apm_tx_cfm_handler+0x1c>

00000024 <.L14>:
  24:	4462                	lw	s0,24(sp)

00000026 <.LVL25>:
  26:	40f2                	lw	ra,28(sp)
  28:	1551                	addi	a0,a0,-12

0000002a <.LVL26>:
  2a:	6105                	addi	sp,sp,32
  2c:	00000317          	auipc	t1,0x0
			2c: R_RISCV_CALL	ke_msg_free
			2c: R_RISCV_RELAX	*ABS*
  30:	00030067          	jr	t1 # 2c <.LVL26+0x2>

00000034 <.L13>:
  34:	c62e                	sw	a1,12(sp)

00000036 <.LBB101>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	_aid_list_delete
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LBB101>

0000003e <.LBB103>:
  3e:	ff440513          	addi	a0,s0,-12
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ke_msg_free
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LBB103+0x4>

0000004a <.LVL30>:
  4a:	04445603          	lhu	a2,68(s0)
  4e:	45b2                	lw	a1,12(sp)
  50:	00000537          	lui	a0,0x0
			50: R_RISCV_HI20	.LC0
			50: R_RISCV_RELAX	*ABS*
  54:	00050513          	mv	a0,a0
			54: R_RISCV_LO12_I	.LC0
			54: R_RISCV_RELAX	*ABS*
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	printf
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL30+0xe>

00000060 <.LVL31>:
  60:	000007b7          	lui	a5,0x0
			60: R_RISCV_HI20	apm_env
			60: R_RISCV_RELAX	*ABS*
  64:	00078793          	mv	a5,a5
			64: R_RISCV_LO12_I	apm_env
			64: R_RISCV_RELAX	*ABS*
  68:	0167c703          	lbu	a4,22(a5) # 16 <apm_tx_cfm_handler+0x16>
  6c:	177d                	addi	a4,a4,-1
  6e:	00e78b23          	sb	a4,22(a5)

00000072 <.LBE101>:
  72:	40f2                	lw	ra,28(sp)
  74:	4462                	lw	s0,24(sp)

00000076 <.LVL32>:
  76:	6105                	addi	sp,sp,32

00000078 <.LVL33>:
  78:	8082                	ret

Disassembly of section .text.apm_init:

00000000 <apm_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	apm_env
			4: R_RISCV_RELAX	*ABS*
   8:	4581                	li	a1,0
   a:	00040513          	mv	a0,s0
			a: R_RISCV_LO12_I	apm_env
			a: R_RISCV_RELAX	*ABS*
   e:	06000613          	li	a2,96
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	memset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <apm_init+0x14>

0000001c <.LVL34>:
  1c:	6785                	lui	a5,0x1
  1e:	00040413          	mv	s0,s0
			1e: R_RISCV_LO12_I	apm_env
			1e: R_RISCV_RELAX	*ABS*
  22:	c0078793          	addi	a5,a5,-1024 # c00 <.LASF987+0x6>
  26:	00040623          	sb	zero,12(s0) # c <apm_init+0xc>
  2a:	00f41b23          	sh	a5,22(s0)
  2e:	4422                	lw	s0,8(sp)
  30:	40b2                	lw	ra,12(sp)
  32:	4581                	li	a1,0
  34:	451d                	li	a0,7
  36:	0141                	addi	sp,sp,16
  38:	00000317          	auipc	t1,0x0
			38: R_RISCV_CALL	ke_state_set
			38: R_RISCV_RELAX	*ABS*
  3c:	00030067          	jr	t1 # 38 <.LVL34+0x1c>

Disassembly of section .text.apm_start_cfm:

00000000 <apm_start_cfm>:
   0:	7179                	addi	sp,sp,-48
   2:	c85a                	sw	s6,16(sp)
   4:	8b2a                	mv	s6,a0
   6:	6509                	lui	a0,0x2

00000008 <.LVL37>:
   8:	cc52                	sw	s4,24(sp)
   a:	4691                	li	a3,4
   c:	00000a37          	lui	s4,0x0
			c: R_RISCV_HI20	apm_env
			c: R_RISCV_RELAX	*ABS*
  10:	461d                	li	a2,7
  12:	45b5                	li	a1,13
  14:	c0150513          	addi	a0,a0,-1023 # 1c01 <.LASF424+0xf>
  18:	d04a                	sw	s2,32(sp)
  1a:	ce4e                	sw	s3,28(sp)
  1c:	000a2903          	lw	s2,0(s4) # 0 <apm_start_cfm>
			1c: R_RISCV_LO12_I	apm_env
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LVL38>:
  20:	d606                	sw	ra,44(sp)
  22:	d422                	sw	s0,40(sp)
  24:	d226                	sw	s1,36(sp)
  26:	ca56                	sw	s5,20(sp)
  28:	c65e                	sw	s7,12(sp)
  2a:	c462                	sw	s8,8(sp)
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ke_msg_alloc
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL38+0xc>

00000034 <.LVL39>:
  34:	89aa                	mv	s3,a0

00000036 <.LVL40>:
  36:	000a0a13          	mv	s4,s4
			36: R_RISCV_LO12_I	apm_env
			36: R_RISCV_RELAX	*ABS*
  3a:	0a0b1c63          	bnez	s6,f2 <.L19>
			3a: R_RISCV_BRANCH	.L19

0000003e <.LBB105>:
  3e:	4691                	li	a3,4
  40:	03394a83          	lbu	s5,51(s2)
  44:	461d                	li	a2,7
  46:	4581                	li	a1,0
  48:	4579                	li	a0,30

0000004a <.LVL42>:
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ke_msg_alloc
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL42>

00000052 <.LVL43>:
  52:	5d800713          	li	a4,1496
  56:	00aa8b93          	addi	s7,s5,10

0000005a <.LVL44>:
  5a:	02ea8ab3          	mul	s5,s5,a4
  5e:	000004b7          	lui	s1,0x0
			5e: R_RISCV_HI20	vif_info_tab
			5e: R_RISCV_RELAX	*ABS*
  62:	4c05                	li	s8,1
  64:	00048493          	mv	s1,s1
			64: R_RISCV_LO12_I	vif_info_tab
			64: R_RISCV_RELAX	*ABS*
  68:	01850123          	sb	s8,2(a0)
  6c:	00000437          	lui	s0,0x0
			6c: R_RISCV_HI20	sta_info_tab
			6c: R_RISCV_RELAX	*ABS*
  70:	00040413          	mv	s0,s0
			70: R_RISCV_LO12_I	sta_info_tab
			70: R_RISCV_RELAX	*ABS*
  74:	94d6                	add	s1,s1,s5
  76:	0574c703          	lbu	a4,87(s1) # 57 <.LVL43+0x5>
  7a:	00e501a3          	sb	a4,3(a0)
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	ke_msg_send
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL44+0x24>

00000086 <.LVL46>:
  86:	02c92783          	lw	a5,44(s2)
  8a:	4635                	li	a2,13
  8c:	85ca                	mv	a1,s2
  8e:	5cf4a223          	sw	a5,1476(s1)
  92:	03095783          	lhu	a5,48(s2)
  96:	34048523          	sb	zero,842(s1)
  9a:	34f49623          	sh	a5,844(s1)
  9e:	40bc                	lw	a5,64(s1)
  a0:	0177c783          	lbu	a5,23(a5)
  a4:	00f98123          	sb	a5,2(s3)
  a8:	03394783          	lbu	a5,51(s2)
  ac:	07a9                	addi	a5,a5,10
  ae:	00f981a3          	sb	a5,3(s3)
  b2:	1b000793          	li	a5,432
  b6:	02fb8bb3          	mul	s7,s7,a5
  ba:	945e                	add	s0,s0,s7
  bc:	0b040513          	addi	a0,s0,176 # b0 <.LVL46+0x2a>
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	memcpy
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.LVL46+0x3a>

000000c8 <.LVL48>:
  c8:	4789                	li	a5,2
  ca:	02f408a3          	sb	a5,49(s0)
  ce:	8522                	mv	a0,s0
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	me_init_bcmc_rate
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL48+0x8>

000000d8 <.LVL49>:
  d8:	11a44783          	lbu	a5,282(s0)
  dc:	01841f23          	sh	s8,30(s0)
  e0:	0107e793          	ori	a5,a5,16
  e4:	10f40d23          	sb	a5,282(s0)
  e8:	03394783          	lbu	a5,51(s2)
  ec:	07a9                	addi	a5,a5,10
  ee:	00f40da3          	sb	a5,27(s0)

000000f2 <.L19>:
  f2:	01698023          	sb	s6,0(s3)
  f6:	03394783          	lbu	a5,51(s2)
  fa:	004c5637          	lui	a2,0x4c5
  fe:	6509                	lui	a0,0x2
 100:	00f980a3          	sb	a5,1(s3)
 104:	459d                	li	a1,7
 106:	b4060613          	addi	a2,a2,-1216 # 4c4b40 <.LASF402+0x4bef43>
 10a:	c0a50513          	addi	a0,a0,-1014 # 1c0a <.LASF1297+0x1>
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	ke_timer_set
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.L19+0x1c>

00000116 <.LVL50>:
 116:	854e                	mv	a0,s3
 118:	00000097          	auipc	ra,0x0
			118: R_RISCV_CALL	ke_msg_send
			118: R_RISCV_RELAX	*ABS*
 11c:	000080e7          	jalr	ra # 118 <.LVL50+0x2>

00000120 <.LBB106>:
 120:	ff490513          	addi	a0,s2,-12
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	ke_msg_free
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.LBB106+0x4>

0000012c <.LVL52>:
 12c:	5422                	lw	s0,40(sp)
 12e:	000a2023          	sw	zero,0(s4)
 132:	50b2                	lw	ra,44(sp)
 134:	5492                	lw	s1,36(sp)
 136:	5902                	lw	s2,32(sp)

00000138 <.LVL53>:
 138:	49f2                	lw	s3,28(sp)

0000013a <.LVL54>:
 13a:	4a62                	lw	s4,24(sp)
 13c:	4ad2                	lw	s5,20(sp)
 13e:	4b42                	lw	s6,16(sp)
 140:	4bb2                	lw	s7,12(sp)
 142:	4c22                	lw	s8,8(sp)
 144:	4581                	li	a1,0
 146:	451d                	li	a0,7
 148:	6145                	addi	sp,sp,48
 14a:	00000317          	auipc	t1,0x0
			14a: R_RISCV_CALL	ke_state_set
			14a: R_RISCV_RELAX	*ABS*
 14e:	00030067          	jr	t1 # 14a <.LVL54+0x10>

Disassembly of section .text.apm_send_next_bss_param:

00000000 <apm_send_next_bss_param>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	apm_env+0x4
			0: R_RISCV_RELAX	*ABS*+0x4
   4:	1141                	addi	sp,sp,-16
   6:	00450513          	addi	a0,a0,4 # 4 <apm_send_next_bss_param+0x4>
			6: R_RISCV_LO12_I	apm_env+0x4
			6: R_RISCV_RELAX	*ABS*+0x4
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	co_list_pop_front
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <apm_send_next_bss_param+0xe>

00000016 <.LVL56>:
  16:	842a                	mv	s0,a0

00000018 <.LVL57>:
  18:	ed19                	bnez	a0,36 <.L22>
			18: R_RISCV_RVC_BRANCH	.L22
  1a:	000005b7          	lui	a1,0x0
			1a: R_RISCV_HI20	.LC1
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC2
			1e: R_RISCV_RELAX	*ABS*
  22:	0bf00613          	li	a2,191
  26:	00058593          	mv	a1,a1
			26: R_RISCV_LO12_I	.LC1
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC2
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	assert_err
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL57+0x16>

00000036 <.L22>:
  36:	00c40513          	addi	a0,s0,12
  3a:	4422                	lw	s0,8(sp)

0000003c <.LVL59>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	0141                	addi	sp,sp,16
  40:	00000317          	auipc	t1,0x0
			40: R_RISCV_CALL	ke_msg_send
			40: R_RISCV_RELAX	*ABS*
  44:	00030067          	jr	t1 # 40 <.LVL59+0x4>

Disassembly of section .text.apm_set_bss_param:

00000000 <apm_set_bss_param>:
   0:	7179                	addi	sp,sp,-48
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	apm_env
			2: R_RISCV_RELAX	*ABS*
   6:	d422                	sw	s0,40(sp)
   8:	0007a403          	lw	s0,0(a5) # 0 <apm_set_bss_param>
			8: R_RISCV_LO12_I	apm_env
			8: R_RISCV_RELAX	*ABS*

0000000c <.LVL61>:
   c:	d226                	sw	s1,36(sp)
   e:	6485                	lui	s1,0x1
  10:	d606                	sw	ra,44(sp)
  12:	d04a                	sw	s2,32(sp)
  14:	ce4e                	sw	s3,28(sp)
  16:	cc52                	sw	s4,24(sp)
  18:	ca56                	sw	s5,20(sp)
  1a:	c85a                	sw	s6,16(sp)
  1c:	c462                	sw	s8,8(sp)
  1e:	c65e                	sw	s7,12(sp)
  20:	4689                	li	a3,2
  22:	461d                	li	a2,7
  24:	4595                	li	a1,5
  26:	41348513          	addi	a0,s1,1043 # 1413 <.LASF1304>
  2a:	03344b83          	lbu	s7,51(s0)
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ke_msg_alloc
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL61+0x22>

00000036 <.LVL63>:
  36:	892a                	mv	s2,a0

00000038 <.LVL64>:
  38:	469d                	li	a3,7
  3a:	461d                	li	a2,7
  3c:	4581                	li	a1,0
  3e:	4561                	li	a0,24

00000040 <.LVL65>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	ke_msg_alloc
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL65>

00000048 <.LVL66>:
  48:	8b2a                	mv	s6,a0

0000004a <.LVL67>:
  4a:	46a1                	li	a3,8
  4c:	461d                	li	a2,7
  4e:	4581                	li	a1,0
  50:	4559                	li	a0,22

00000052 <.LVL68>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	ke_msg_alloc
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL68>

0000005a <.LVL69>:
  5a:	89aa                	mv	s3,a0

0000005c <.LVL70>:
  5c:	4691                	li	a3,4
  5e:	461d                	li	a2,7
  60:	4581                	li	a1,0
  62:	4551                	li	a0,20

00000064 <.LVL71>:
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	ke_msg_alloc
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL71>

0000006c <.LVL72>:
  6c:	4689                	li	a3,2
  6e:	8aaa                	mv	s5,a0

00000070 <.LVL73>:
  70:	461d                	li	a2,7
  72:	4595                	li	a1,5
  74:	41148513          	addi	a0,s1,1041

00000078 <.LVL74>:
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	ke_msg_alloc
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL74>

00000080 <.LVL75>:
  80:	5d800793          	li	a5,1496
  84:	02fb8bb3          	mul	s7,s7,a5
  88:	000004b7          	lui	s1,0x0
			88: R_RISCV_HI20	vif_info_tab
			88: R_RISCV_RELAX	*ABS*
  8c:	4c05                	li	s8,1
  8e:	00048493          	mv	s1,s1
			8e: R_RISCV_LO12_I	vif_info_tab
			8e: R_RISCV_RELAX	*ABS*
  92:	01890023          	sb	s8,0(s2)

00000096 <.LBB120>:
  96:	ff490593          	addi	a1,s2,-12

0000009a <.LBE120>:
  9a:	8a2a                	mv	s4,a0

0000009c <.LVL77>:
  9c:	94de                	add	s1,s1,s7
  9e:	0574c783          	lbu	a5,87(s1) # 57 <.LVL68+0x5>
  a2:	00f900a3          	sb	a5,1(s2)

000000a6 <.LBB124>:
  a6:	00000937          	lui	s2,0x0
			a6: R_RISCV_HI20	apm_env+0x4
			a6: R_RISCV_RELAX	*ABS*+0x4

000000aa <.LVL79>:
  aa:	00490513          	addi	a0,s2,4 # 4 <apm_set_bss_param+0x4>
			aa: R_RISCV_LO12_I	apm_env+0x4
			aa: R_RISCV_RELAX	*ABS*+0x4

000000ae <.LVL80>:
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	co_list_push_back
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL80>

000000b6 <.LBE125>:
  b6:	4619                	li	a2,6
  b8:	05048593          	addi	a1,s1,80
  bc:	855a                	mv	a0,s6
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	memcpy
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LBE125+0x8>

000000c6 <.LVL82>:
  c6:	03344783          	lbu	a5,51(s0)

000000ca <.LBB126>:
  ca:	ff4b0593          	addi	a1,s6,-12
  ce:	00490513          	addi	a0,s2,4
			ce: R_RISCV_LO12_I	apm_env+0x4
			ce: R_RISCV_RELAX	*ABS*+0x4

000000d2 <.LBE126>:
  d2:	00fb0323          	sb	a5,6(s6)

000000d6 <.LBB130>:
  d6:	00000097          	auipc	ra,0x0
			d6: R_RISCV_CALL	co_list_push_back
			d6: R_RISCV_RELAX	*ABS*
  da:	000080e7          	jalr	ra # d6 <.LBB130>

000000de <.LBE131>:
  de:	01044783          	lbu	a5,16(s0)
  e2:	4585                	li	a1,1
  e4:	8522                	mv	a0,s0
  e6:	00f982a3          	sb	a5,5(s3)
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	me_legacy_rate_bitfield_build
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LBE131+0xc>

000000f2 <.LVL85>:
  f2:	00a9a023          	sw	a0,0(s3)
  f6:	03344783          	lbu	a5,51(s0)

000000fa <.LBB132>:
  fa:	ff498593          	addi	a1,s3,-12
  fe:	00490513          	addi	a0,s2,4
			fe: R_RISCV_LO12_I	apm_env+0x4
			fe: R_RISCV_RELAX	*ABS*+0x4

00000102 <.LBE132>:
 102:	00f98223          	sb	a5,4(s3)

00000106 <.LBB136>:
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	co_list_push_back
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LBB136>

0000010e <.LBE137>:
 10e:	02845783          	lhu	a5,40(s0)

00000112 <.LBB138>:
 112:	ff4a8593          	addi	a1,s5,-12
 116:	00490513          	addi	a0,s2,4
			116: R_RISCV_LO12_I	apm_env+0x4
			116: R_RISCV_RELAX	*ABS*+0x4

0000011a <.LBE138>:
 11a:	00fa9023          	sh	a5,0(s5)
 11e:	03344783          	lbu	a5,51(s0)
 122:	00fa8123          	sb	a5,2(s5)

00000126 <.LBB142>:
 126:	00000097          	auipc	ra,0x0
			126: R_RISCV_CALL	co_list_push_back
			126: R_RISCV_RELAX	*ABS*
 12a:	000080e7          	jalr	ra # 126 <.LBB142>

0000012e <.LBE143>:
 12e:	018a0023          	sb	s8,0(s4)
 132:	03344783          	lbu	a5,51(s0)

00000136 <.LBB144>:
 136:	ff4a0593          	addi	a1,s4,-12
 13a:	00490513          	addi	a0,s2,4
			13a: R_RISCV_LO12_I	apm_env+0x4
			13a: R_RISCV_RELAX	*ABS*+0x4

0000013e <.LBE144>:
 13e:	00fa00a3          	sb	a5,1(s4)

00000142 <.LBB148>:
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	co_list_push_back
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.LBB148>

0000014a <.LBE149>:
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	apm_send_next_bss_param
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LBE149>

00000152 <.LVL92>:
 152:	5422                	lw	s0,40(sp)

00000154 <.LVL93>:
 154:	50b2                	lw	ra,44(sp)
 156:	5492                	lw	s1,36(sp)
 158:	5902                	lw	s2,32(sp)
 15a:	49f2                	lw	s3,28(sp)

0000015c <.LVL94>:
 15c:	4a62                	lw	s4,24(sp)

0000015e <.LVL95>:
 15e:	4ad2                	lw	s5,20(sp)

00000160 <.LVL96>:
 160:	4b42                	lw	s6,16(sp)

00000162 <.LVL97>:
 162:	4bb2                	lw	s7,12(sp)
 164:	4c22                	lw	s8,8(sp)
 166:	4585                	li	a1,1
 168:	451d                	li	a0,7
 16a:	6145                	addi	sp,sp,48
 16c:	00000317          	auipc	t1,0x0
			16c: R_RISCV_CALL	ke_state_set
			16c: R_RISCV_RELAX	*ABS*
 170:	00030067          	jr	t1 # 16c <.LVL97+0xa>

Disassembly of section .text.apm_stop:

00000000 <apm_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	6485                	lui	s1,0x1
   6:	c422                	sw	s0,8(sp)
   8:	4689                	li	a3,2
   a:	842a                	mv	s0,a0
   c:	461d                	li	a2,7
   e:	4595                	li	a1,5
  10:	41348513          	addi	a0,s1,1043 # 1413 <.LASF1304>

00000014 <.LVL100>:
  14:	c606                	sw	ra,12(sp)
  16:	c04a                	sw	s2,0(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL100+0x4>

00000020 <.LVL101>:
  20:	892a                	mv	s2,a0

00000022 <.LVL102>:
  22:	4689                	li	a3,2
  24:	461d                	li	a2,7
  26:	4595                	li	a1,5
  28:	41148513          	addi	a0,s1,1041

0000002c <.LVL103>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ke_msg_alloc
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL103>

00000034 <.LVL104>:
  34:	84aa                	mv	s1,a0

00000036 <.LVL105>:
  36:	6509                	lui	a0,0x2
  38:	459d                	li	a1,7
  3a:	c0a50513          	addi	a0,a0,-1014 # 1c0a <.LASF1297+0x1>
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_timer_clear
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL105+0x8>

00000046 <.LVL106>:
  46:	00090023          	sb	zero,0(s2)
  4a:	05744783          	lbu	a5,87(s0)
  4e:	854a                	mv	a0,s2
  50:	00f900a3          	sb	a5,1(s2)
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	ke_msg_send
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL106+0xe>

0000005c <.LVL107>:
  5c:	05844783          	lbu	a5,88(s0)
  60:	c39d                	beqz	a5,86 <.L27>
			60: R_RISCV_RVC_BRANCH	.L27

00000062 <.LBB150>:
  62:	4691                	li	a3,4
  64:	461d                	li	a2,7
  66:	4581                	li	a1,0
  68:	4579                	li	a0,30
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	ke_msg_alloc
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LBB150+0x8>

00000072 <.LVL108>:
  72:	00050123          	sb	zero,2(a0)
  76:	05744703          	lbu	a4,87(s0)
  7a:	00e501a3          	sb	a4,3(a0)
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	ke_msg_send
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL108+0xc>

00000086 <.L27>:
  86:	403c                	lw	a5,64(s0)
  88:	c799                	beqz	a5,96 <.L28>
			88: R_RISCV_RVC_BRANCH	.L28
  8a:	05744503          	lbu	a0,87(s0)
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	chan_ctxt_unlink
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.L27+0x8>

00000096 <.L28>:
  96:	00048023          	sb	zero,0(s1)
  9a:	05744783          	lbu	a5,87(s0)
  9e:	8526                	mv	a0,s1
  a0:	00f480a3          	sb	a5,1(s1)
  a4:	4422                	lw	s0,8(sp)

000000a6 <.LVL111>:
  a6:	40b2                	lw	ra,12(sp)
  a8:	4492                	lw	s1,4(sp)

000000aa <.LVL112>:
  aa:	4902                	lw	s2,0(sp)

000000ac <.LVL113>:
  ac:	0141                	addi	sp,sp,16
  ae:	00000317          	auipc	t1,0x0
			ae: R_RISCV_CALL	ke_msg_send
			ae: R_RISCV_RELAX	*ABS*
  b2:	00030067          	jr	t1 # ae <.LVL113+0x2>

Disassembly of section .text.apm_tx_int_ps_check:

00000000 <apm_tx_int_ps_check>:
   0:	02f54703          	lbu	a4,47(a0)
   4:	5d800693          	li	a3,1496
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	vif_info_tab
			8: R_RISCV_RELAX	*ABS*
   c:	02d70733          	mul	a4,a4,a3
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	vif_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	97ba                	add	a5,a5,a4
  16:	0567c703          	lbu	a4,86(a5) # 56 <apm_tx_int_ps_check+0x56>
  1a:	4789                	li	a5,2
  1c:	04f71163          	bne	a4,a5,5e <.L38>
			1c: R_RISCV_BRANCH	.L38
  20:	03054683          	lbu	a3,48(a0)
  24:	47ad                	li	a5,11
  26:	4705                	li	a4,1
  28:	02d7e963          	bltu	a5,a3,5a <.L37>
			28: R_RISCV_BRANCH	.L37
  2c:	1b000613          	li	a2,432
  30:	02c686b3          	mul	a3,a3,a2
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	sta_info_tab
			34: R_RISCV_RELAX	*ABS*
  38:	00078793          	mv	a5,a5
			38: R_RISCV_LO12_I	sta_info_tab
			38: R_RISCV_RELAX	*ABS*
  3c:	97b6                	add	a5,a5,a3
  3e:	01c7c683          	lbu	a3,28(a5) # 1c <apm_tx_int_ps_check+0x1c>
  42:	00e69c63          	bne	a3,a4,5a <.L37>
			42: R_RISCV_BRANCH	.L37
  46:	5bdc                	lw	a5,52(a5)
  48:	8b8d                	andi	a5,a5,3
  4a:	eb81                	bnez	a5,5a <.L37>
			4a: R_RISCV_RVC_BRANCH	.L37
  4c:	03255783          	lhu	a5,50(a0)
  50:	6705                	lui	a4,0x1
  52:	8fd9                	or	a5,a5,a4
  54:	02f51923          	sh	a5,50(a0)
  58:	4701                	li	a4,0

0000005a <.L37>:
  5a:	853a                	mv	a0,a4

0000005c <.LVL117>:
  5c:	8082                	ret

0000005e <.L38>:
  5e:	4705                	li	a4,1
  60:	bfed                	j	5a <.L37>
			60: R_RISCV_RVC_JUMP	.L37

Disassembly of section .text.apm_tx_int_ps_postpone:

00000000 <apm_tx_int_ps_postpone>:
   0:	03255783          	lhu	a5,50(a0)
   4:	01379713          	slli	a4,a5,0x13
   8:	02075863          	bgez	a4,38 <.L42>
			8: R_RISCV_BRANCH	.L42

0000000c <.LBB151>:
   c:	02e54603          	lbu	a2,46(a0)
  10:	00000737          	lui	a4,0x0
			10: R_RISCV_HI20	mac_ac2uapsd
			10: R_RISCV_RELAX	*ABS*
  14:	00070813          	mv	a6,a4
			14: R_RISCV_LO12_I	mac_ac2uapsd
			14: R_RISCV_RELAX	*ABS*
  18:	9642                	add	a2,a2,a6
  1a:	0f25c683          	lbu	a3,242(a1) # f2 <.L19>
  1e:	00064603          	lbu	a2,0(a2)
  22:	0325c783          	lbu	a5,50(a1)
  26:	00070713          	mv	a4,a4
			26: R_RISCV_LO12_I	mac_ac2uapsd
			26: R_RISCV_RELAX	*ABS*
  2a:	8e75                	and	a2,a2,a3
  2c:	c619                	beqz	a2,3a <.L45>
			2c: R_RISCV_RVC_BRANCH	.L45
  2e:	0087f613          	andi	a2,a5,8
  32:	0087e793          	ori	a5,a5,8
  36:	c619                	beqz	a2,44 <.L54>
			36: R_RISCV_RVC_BRANCH	.L54

00000038 <.L42>:
  38:	8082                	ret

0000003a <.L45>:
  3a:	0027f613          	andi	a2,a5,2
  3e:	fe6d                	bnez	a2,38 <.L42>
			3e: R_RISCV_RVC_BRANCH	.L42
  40:	0027e793          	ori	a5,a5,2

00000044 <.L54>:
  44:	02f58923          	sb	a5,50(a1)
  48:	02e54783          	lbu	a5,46(a0)
  4c:	973e                	add	a4,a4,a5
  4e:	00074783          	lbu	a5,0(a4) # 0 <apm_tx_int_ps_postpone>
  52:	8ff5                	and	a5,a5,a3
  54:	c781                	beqz	a5,5c <.L48>
			54: R_RISCV_RVC_BRANCH	.L48
  56:	47bd                	li	a5,15
  58:	fef690e3          	bne	a3,a5,38 <.L42>
			58: R_RISCV_BRANCH	.L42

0000005c <.L48>:
  5c:	1141                	addi	sp,sp,-16
  5e:	c422                	sw	s0,8(sp)

00000060 <.LBB155>:
  60:	4691                	li	a3,4
  62:	842e                	mv	s0,a1
  64:	4615                	li	a2,5
  66:	4581                	li	a1,0

00000068 <.LVL123>:
  68:	04100513          	li	a0,65

0000006c <.LBE155>:
  6c:	c606                	sw	ra,12(sp)

0000006e <.LBB156>:
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_alloc
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LBB156>

00000076 <.LVL125>:
  76:	01845703          	lhu	a4,24(s0)
  7a:	00e51023          	sh	a4,0(a0)
  7e:	01a44703          	lbu	a4,26(s0)
  82:	00e501a3          	sb	a4,3(a0)
  86:	4705                	li	a4,1
  88:	00e50123          	sb	a4,2(a0)

0000008c <.LBE156>:
  8c:	4422                	lw	s0,8(sp)

0000008e <.LVL126>:
  8e:	40b2                	lw	ra,12(sp)
  90:	0141                	addi	sp,sp,16

00000092 <.LBB157>:
  92:	00000317          	auipc	t1,0x0
			92: R_RISCV_CALL	ke_msg_send
			92: R_RISCV_RELAX	*ABS*
  96:	00030067          	jr	t1 # 92 <.LBB157>

Disassembly of section .text.apm_tx_int_ps_get_postpone:

00000000 <apm_tx_int_ps_get_postpone>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	c05a                	sw	s6,0(sp)
  12:	05654903          	lbu	s2,86(a0)
  16:	4789                	li	a5,2
  18:	00f91463          	bne	s2,a5,20 <.L56>
			18: R_RISCV_BRANCH	.L56
  1c:	59dc                	lw	a5,52(a1)
  1e:	ef99                	bnez	a5,3c <.L57>
			1e: R_RISCV_RVC_BRANCH	.L57

00000020 <.L56>:
  20:	00062023          	sw	zero,0(a2)

00000024 <.L81>:
  24:	4481                	li	s1,0

00000026 <.L55>:
  26:	40f2                	lw	ra,28(sp)
  28:	4462                	lw	s0,24(sp)
  2a:	8526                	mv	a0,s1
  2c:	4942                	lw	s2,16(sp)
  2e:	44d2                	lw	s1,20(sp)
  30:	49b2                	lw	s3,12(sp)
  32:	4a22                	lw	s4,8(sp)
  34:	4a92                	lw	s5,4(sp)
  36:	4b02                	lw	s6,0(sp)
  38:	6105                	addi	sp,sp,32
  3a:	8082                	ret

0000003c <.L57>:
  3c:	0017f713          	andi	a4,a5,1
  40:	4a05                	li	s4,1
  42:	e319                	bnez	a4,48 <.L59>
			42: R_RISCV_RVC_BRANCH	.L59
  44:	4a11                	li	s4,4
  46:	4921                	li	s2,8

00000048 <.L59>:
  48:	0325c703          	lbu	a4,50(a1)
  4c:	00e97733          	and	a4,s2,a4
  50:	e701                	bnez	a4,58 <.L60>
			50: R_RISCV_RVC_BRANCH	.L60
  52:	4785                	li	a5,1
  54:	c21c                	sw	a5,0(a2)
  56:	b7f9                	j	24 <.L81>
			56: R_RISCV_RVC_JUMP	.L81

00000058 <.L60>:
  58:	19c5a483          	lw	s1,412(a1)
  5c:	00000ab7          	lui	s5,0x0
			5c: R_RISCV_HI20	mac_ac2uapsd
			5c: R_RISCV_RELAX	*ABS*
  60:	17f9                	addi	a5,a5,-2
  62:	89b2                	mv	s3,a2
  64:	842e                	mv	s0,a1

00000066 <.LVL132>:
  66:	4b01                	li	s6,0
  68:	000a8a93          	mv	s5,s5
			68: R_RISCV_LO12_I	mac_ac2uapsd
			68: R_RISCV_RELAX	*ABS*
  6c:	0017b793          	seqz	a5,a5

00000070 <.L61>:
  70:	e09d                	bnez	s1,96 <.L63>
			70: R_RISCV_RVC_BRANCH	.L63
  72:	000005b7          	lui	a1,0x0
			72: R_RISCV_HI20	.LC1
			72: R_RISCV_RELAX	*ABS*
  76:	00000537          	lui	a0,0x0
			76: R_RISCV_HI20	.LC3
			76: R_RISCV_RELAX	*ABS*

0000007a <.LVL134>:
  7a:	16f00613          	li	a2,367

0000007e <.LVL135>:
  7e:	00058593          	mv	a1,a1
			7e: R_RISCV_LO12_I	.LC1
			7e: R_RISCV_RELAX	*ABS*
  82:	00050513          	mv	a0,a0
			82: R_RISCV_LO12_I	.LC3
			82: R_RISCV_RELAX	*ABS*
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	assert_warn
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL135+0x8>

0000008e <.LVL136>:
  8e:	4785                	li	a5,1
  90:	00f9a023          	sw	a5,0(s3)
  94:	bf49                	j	26 <.L55>
			94: R_RISCV_RVC_JUMP	.L55

00000096 <.L63>:
  96:	02e4c703          	lbu	a4,46(s1)
  9a:	0f244683          	lbu	a3,242(s0)
  9e:	9756                	add	a4,a4,s5
  a0:	00074703          	lbu	a4,0(a4)
  a4:	8f75                	and	a4,a4,a3
  a6:	00173713          	seqz	a4,a4
  aa:	08f71d63          	bne	a4,a5,144 <.L62>
			aa: R_RISCV_BRANCH	.L62

000000ae <.LVL138>:
  ae:	8b26                	mv	s6,s1
  b0:	4084                	lw	s1,0(s1)

000000b2 <.LVL139>:
  b2:	bf7d                	j	70 <.L61>
			b2: R_RISCV_RVC_JUMP	.L61

000000b4 <.L79>:
  b4:	000b2783          	lw	a5,0(s6)

000000b8 <.L67>:
  b8:	ef85                	bnez	a5,f0 <.L69>
			b8: R_RISCV_RVC_BRANCH	.L69
  ba:	03244783          	lbu	a5,50(s0)

000000be <.LVL142>:
  be:	fff94913          	not	s2,s2

000000c2 <.LVL143>:
  c2:	00f97933          	and	s2,s2,a5
  c6:	03240923          	sb	s2,50(s0)

000000ca <.LVL144>:
  ca:	01497933          	and	s2,s2,s4

000000ce <.LVL145>:
  ce:	04090363          	beqz	s2,114 <.L78>
			ce: R_RISCV_BRANCH	.L78

000000d2 <.L68>:
  d2:	54b8                	lw	a4,104(s1)

000000d4 <.LBB162>:
  d4:	14d74783          	lbu	a5,333(a4)
  d8:	14c74683          	lbu	a3,332(a4)
  dc:	07a2                	slli	a5,a5,0x8
  de:	8fd5                	or	a5,a5,a3
  e0:	6689                	lui	a3,0x2
  e2:	8fd5                	or	a5,a5,a3
  e4:	14f70623          	sb	a5,332(a4)
  e8:	83a1                	srli	a5,a5,0x8
  ea:	14f706a3          	sb	a5,333(a4)

000000ee <.LBE163>:
  ee:	bf25                	j	26 <.L55>
			ee: R_RISCV_RVC_JUMP	.L55

000000f0 <.L69>:
  f0:	02e7c703          	lbu	a4,46(a5)
  f4:	9756                	add	a4,a4,s5
  f6:	00074683          	lbu	a3,0(a4)
  fa:	0f244703          	lbu	a4,242(s0)
  fe:	8ef9                	and	a3,a3,a4
 100:	5858                	lw	a4,52(s0)
 102:	0016b693          	seqz	a3,a3
 106:	1779                	addi	a4,a4,-2
 108:	00173713          	seqz	a4,a4
 10c:	fce693e3          	bne	a3,a4,d2 <.L68>
			10c: R_RISCV_BRANCH	.L68
 110:	439c                	lw	a5,0(a5)
 112:	b75d                	j	b8 <.L67>
			112: R_RISCV_RVC_JUMP	.L67

00000114 <.L78>:
 114:	4691                	li	a3,4
 116:	4615                	li	a2,5
 118:	4581                	li	a1,0
 11a:	04100513          	li	a0,65
 11e:	00000097          	auipc	ra,0x0
			11e: R_RISCV_CALL	ke_msg_alloc
			11e: R_RISCV_RELAX	*ABS*
 122:	000080e7          	jalr	ra # 11e <.L78+0xa>

00000126 <.LVL151>:
 126:	01845703          	lhu	a4,24(s0)
 12a:	00e51023          	sh	a4,0(a0) # 0 <apm_tx_int_ps_get_postpone>
 12e:	01a44703          	lbu	a4,26(s0)
 132:	00050123          	sb	zero,2(a0)
 136:	00e501a3          	sb	a4,3(a0)
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	ke_msg_send
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL151+0x14>

00000142 <.LVL152>:
 142:	b5d5                	j	26 <.L55>
			142: R_RISCV_RVC_JUMP	.L55

00000144 <.L62>:
 144:	8626                	mv	a2,s1

00000146 <.LVL154>:
 146:	85da                	mv	a1,s6
 148:	19c40513          	addi	a0,s0,412

0000014c <.LVL155>:
 14c:	00000097          	auipc	ra,0x0
			14c: R_RISCV_CALL	co_list_remove
			14c: R_RISCV_RELAX	*ABS*
 150:	000080e7          	jalr	ra # 14c <.LVL155>

00000154 <.LVL156>:
 154:	585c                	lw	a5,52(s0)
 156:	8ba1                	andi	a5,a5,8
 158:	00f037b3          	snez	a5,a5
 15c:	078d                	addi	a5,a5,3
 15e:	02f48723          	sb	a5,46(s1)
 162:	f40b19e3          	bnez	s6,b4 <.L79>
			162: R_RISCV_BRANCH	.L79
 166:	19c42783          	lw	a5,412(s0)

0000016a <.LVL157>:
 16a:	b7b9                	j	b8 <.L67>
			16a: R_RISCV_RVC_JUMP	.L67

Disassembly of section .text.apm_tx_int_ps_clear:

00000000 <apm_tx_int_ps_clear>:
   0:	05654703          	lbu	a4,86(a0)
   4:	4789                	li	a5,2
   6:	06f71c63          	bne	a4,a5,7e <.L90>
			6: R_RISCV_BRANCH	.L90
   a:	1141                	addi	sp,sp,-16
   c:	c422                	sw	s0,8(sp)
   e:	1b000413          	li	s0,432
  12:	02858433          	mul	s0,a1,s0
  16:	000005b7          	lui	a1,0x0
			16: R_RISCV_HI20	sta_info_tab
			16: R_RISCV_RELAX	*ABS*

0000001a <.LVL159>:
  1a:	00058593          	mv	a1,a1
			1a: R_RISCV_LO12_I	sta_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	4601                	li	a2,0
  20:	c606                	sw	ra,12(sp)
  22:	942e                	add	s0,s0,a1
  24:	85a2                	mv	a1,s0
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	sta_mgmt_send_postponed_frame
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL159+0xc>

0000002e <.LVL160>:
  2e:	03244783          	lbu	a5,50(s0)
  32:	00a7f713          	andi	a4,a5,10
  36:	c321                	beqz	a4,76 <.L82>
			36: R_RISCV_RVC_BRANCH	.L82
  38:	0f57f793          	andi	a5,a5,245
  3c:	02f40923          	sb	a5,50(s0)
  40:	eb9d                	bnez	a5,76 <.L82>
			40: R_RISCV_RVC_BRANCH	.L82

00000042 <.LBB165>:
  42:	4691                	li	a3,4
  44:	4615                	li	a2,5
  46:	4581                	li	a1,0
  48:	04100513          	li	a0,65
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	ke_msg_alloc
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LBB165+0xa>

00000054 <.LVL161>:
  54:	01845703          	lhu	a4,24(s0)
  58:	00e51023          	sh	a4,0(a0)
  5c:	01a44703          	lbu	a4,26(s0)
  60:	00050123          	sb	zero,2(a0)
  64:	00e501a3          	sb	a4,3(a0)

00000068 <.LBE165>:
  68:	4422                	lw	s0,8(sp)
  6a:	40b2                	lw	ra,12(sp)
  6c:	0141                	addi	sp,sp,16

0000006e <.LBB166>:
  6e:	00000317          	auipc	t1,0x0
			6e: R_RISCV_CALL	ke_msg_send
			6e: R_RISCV_RELAX	*ABS*
  72:	00030067          	jr	t1 # 6e <.LBB166>

00000076 <.L82>:
  76:	40b2                	lw	ra,12(sp)
  78:	4422                	lw	s0,8(sp)
  7a:	0141                	addi	sp,sp,16
  7c:	8082                	ret

0000007e <.L90>:
  7e:	8082                	ret

Disassembly of section .text.apm_sta_fw_delete:

00000000 <apm_sta_fw_delete>:
   0:	1b000793          	li	a5,432
   4:	02f507b3          	mul	a5,a0,a5
   8:	000005b7          	lui	a1,0x0
			8: R_RISCV_HI20	sta_info_tab
			8: R_RISCV_RELAX	*ABS*
   c:	00058593          	mv	a1,a1
			c: R_RISCV_LO12_I	sta_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	07f9                	addi	a5,a5,30
  12:	95be                	add	a1,a1,a5
  14:	00000317          	auipc	t1,0x0
			14: R_RISCV_CALL	apm_sta_delete
			14: R_RISCV_RELAX	*ABS*
  18:	00030067          	jr	t1 # 14 <apm_sta_fw_delete+0x14>

Disassembly of section .text.apm_sta_add:

00000000 <apm_sta_add>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	892a                	mv	s2,a0
   6:	6509                	lui	a0,0x2

00000008 <.LVL167>:
   8:	46f1                	li	a3,28
   a:	461d                	li	a2,7
   c:	45b5                	li	a1,13
   e:	c0850513          	addi	a0,a0,-1016 # 1c08 <.LASF424+0x16>
  12:	c606                	sw	ra,12(sp)
  14:	c422                	sw	s0,8(sp)
  16:	c226                	sw	s1,4(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL167+0x10>

00000020 <.LVL168>:
  20:	1b000793          	li	a5,432
  24:	02f90933          	mul	s2,s2,a5
  28:	00000437          	lui	s0,0x0
			28: R_RISCV_HI20	sta_info_tab
			28: R_RISCV_RELAX	*ABS*
  2c:	00040413          	mv	s0,s0
			2c: R_RISCV_LO12_I	sta_info_tab
			2c: R_RISCV_RELAX	*ABS*
  30:	4789                	li	a5,2
  32:	84aa                	mv	s1,a0

00000034 <.LVL169>:
  34:	4619                	li	a2,6
  36:	0511                	addi	a0,a0,4
  38:	944a                	add	s0,s0,s2
  3a:	02f408a3          	sb	a5,49(s0) # 31 <.LVL168+0x11>
  3e:	0ec42783          	lw	a5,236(s0)
  42:	01e40593          	addi	a1,s0,30
  46:	fef52e23          	sw	a5,-4(a0)
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	memcpy
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL169+0x16>

00000052 <.LVL170>:
  52:	01b44783          	lbu	a5,27(s0)
  56:	8526                	mv	a0,s1
  58:	00f485a3          	sb	a5,11(s1)
  5c:	01a44783          	lbu	a5,26(s0)
  60:	00f48523          	sb	a5,10(s1)
  64:	02440783          	lb	a5,36(s0)
  68:	00f48623          	sb	a5,12(s1)
  6c:	541c                	lw	a5,40(s0)
  6e:	c89c                	sw	a5,16(s1)
  70:	545c                	lw	a5,44(s0)
  72:	c8dc                	sw	a5,20(s1)
  74:	03044783          	lbu	a5,48(s0)
  78:	00f48c23          	sb	a5,24(s1)
  7c:	4422                	lw	s0,8(sp)
  7e:	40b2                	lw	ra,12(sp)
  80:	4492                	lw	s1,4(sp)

00000082 <.LVL171>:
  82:	4902                	lw	s2,0(sp)
  84:	0141                	addi	sp,sp,16
  86:	00000317          	auipc	t1,0x0
			86: R_RISCV_CALL	ke_msg_send
			86: R_RISCV_RELAX	*ABS*
  8a:	00030067          	jr	t1 # 86 <.LVL171+0x4>

Disassembly of section .text.apm_send_mlme:

00000000 <apm_send_mlme>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)

00000004 <.LVL174>:
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	ca56                	sw	s5,20(sp)
   a:	c85a                	sw	s6,16(sp)
   c:	c65e                	sw	s7,12(sp)
   e:	d606                	sw	ra,44(sp)
  10:	d422                	sw	s0,40(sp)
  12:	cc52                	sw	s4,24(sp)
  14:	8abe                	mv	s5,a5
  16:	3a452783          	lw	a5,932(a0)

0000001a <.LVL175>:
  1a:	84aa                	mv	s1,a0
  1c:	8b2e                	mv	s6,a1
  1e:	0027c503          	lbu	a0,2(a5)

00000022 <.LVL176>:
  22:	10000593          	li	a1,256

00000026 <.LVL177>:
  26:	8bb2                	mv	s7,a2
  28:	00a03533          	snez	a0,a0
  2c:	89b6                	mv	s3,a3
  2e:	893a                	mv	s2,a4
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	txl_frame_get
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL177+0xa>

00000038 <.LVL178>:
  38:	12050d63          	beqz	a0,172 <.L96>
			38: R_RISCV_BRANCH	.L96

0000003c <.LBB172>:
  3c:	5520                	lw	s0,104(a0)

0000003e <.LBE173>:
  3e:	008b5793          	srli	a5,s6,0x8
  42:	85de                	mv	a1,s7
  44:	14f406a3          	sb	a5,333(s0)
  48:	4619                	li	a2,6
  4a:	8a2a                	mv	s4,a0

0000004c <.LBB177>:
  4c:	15640623          	sb	s6,332(s0)
  50:	14040723          	sb	zero,334(s0)
  54:	140407a3          	sb	zero,335(s0)
  58:	15040513          	addi	a0,s0,336

0000005c <.LVL180>:
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	memcpy
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL180>

00000064 <.LVL181>:
  64:	05048b93          	addi	s7,s1,80

00000068 <.LVL182>:
  68:	4619                	li	a2,6
  6a:	85de                	mv	a1,s7
  6c:	15640513          	addi	a0,s0,342
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	memcpy
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL182+0x8>

00000078 <.LVL183>:
  78:	4619                	li	a2,6
  7a:	85de                	mv	a1,s7
  7c:	15c40513          	addi	a0,s0,348
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	memcpy
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL183+0x8>

00000088 <.LBB179>:
  88:	000007b7          	lui	a5,0x0
			88: R_RISCV_HI20	txl_cntrl_env
			88: R_RISCV_RELAX	*ABS*
  8c:	00078793          	mv	a5,a5
			8c: R_RISCV_LO12_I	txl_cntrl_env
			8c: R_RISCV_RELAX	*ABS*
  90:	0547d703          	lhu	a4,84(a5) # 54 <.LBB177+0x8>
  94:	0705                	addi	a4,a4,1
  96:	0742                	slli	a4,a4,0x10
  98:	8341                	srli	a4,a4,0x10
  9a:	04e79a23          	sh	a4,84(a5)
  9e:	0712                	slli	a4,a4,0x4

000000a0 <.LBE179>:
  a0:	0742                	slli	a4,a4,0x10
  a2:	8341                	srli	a4,a4,0x10
  a4:	16e40123          	sb	a4,354(s0)
  a8:	8321                	srli	a4,a4,0x8
  aa:	16e401a3          	sb	a4,355(s0)

000000ae <.LVL185>:
  ae:	0b000793          	li	a5,176
  b2:	06fb1663          	bne	s6,a5,11e <.L98>
			b2: R_RISCV_BRANCH	.L98
  b6:	4701                	li	a4,0
  b8:	4681                	li	a3,0
  ba:	4609                	li	a2,2
  bc:	4581                	li	a1,0
  be:	16440513          	addi	a0,s0,356
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	me_build_authenticate
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL185+0x14>

000000ca <.L104>:
  ca:	0561                	addi	a0,a0,24
  cc:	0542                	slli	a0,a0,0x10
  ce:	8141                	srli	a0,a0,0x10

000000d0 <.L99>:
  d0:	06ca2703          	lw	a4,108(s4)

000000d4 <.LVL188>:
  d4:	458d                	li	a1,3
  d6:	4b5c                	lw	a5,20(a4)
  d8:	17fd                	addi	a5,a5,-1
  da:	97aa                	add	a5,a5,a0
  dc:	0511                	addi	a0,a0,4

000000de <.LVL189>:
  de:	cf48                	sw	a0,28(a4)
  e0:	cf1c                	sw	a5,24(a4)
  e2:	0574c783          	lbu	a5,87(s1)
  e6:	040a0f23          	sb	zero,94(s4)
  ea:	060a0023          	sb	zero,96(s4)
  ee:	02fa07a3          	sb	a5,47(s4)
  f2:	57fd                	li	a5,-1
  f4:	02fa0823          	sb	a5,48(s4)
  f8:	2d3a2623          	sw	s3,716(s4)
  fc:	2d2a2823          	sw	s2,720(s4)

00000100 <.LBE181>:
 100:	5422                	lw	s0,40(sp)

00000102 <.LVL190>:
 102:	50b2                	lw	ra,44(sp)
 104:	5492                	lw	s1,36(sp)

00000106 <.LVL191>:
 106:	5902                	lw	s2,32(sp)

00000108 <.LVL192>:
 108:	49f2                	lw	s3,28(sp)

0000010a <.LVL193>:
 10a:	4ad2                	lw	s5,20(sp)
 10c:	4b42                	lw	s6,16(sp)
 10e:	4bb2                	lw	s7,12(sp)

00000110 <.LBB182>:
 110:	8552                	mv	a0,s4

00000112 <.LBE182>:
 112:	4a62                	lw	s4,24(sp)

00000114 <.LVL195>:
 114:	6145                	addi	sp,sp,48

00000116 <.LBB183>:
 116:	00000317          	auipc	t1,0x0
			116: R_RISCV_CALL	txl_frame_push
			116: R_RISCV_RELAX	*ABS*
 11a:	00030067          	jr	t1 # 116 <.LBB183>

0000011e <.L98>:
 11e:	0c000793          	li	a5,192
 122:	00fb1a63          	bne	s6,a5,136 <.L100>
			122: R_RISCV_BRANCH	.L100
 126:	85d6                	mv	a1,s5
 128:	16440513          	addi	a0,s0,356
 12c:	00000097          	auipc	ra,0x0
			12c: R_RISCV_CALL	me_build_deauthenticate
			12c: R_RISCV_RELAX	*ABS*
 130:	000080e7          	jalr	ra # 12c <.L98+0xe>

00000134 <.LVL197>:
 134:	bf59                	j	ca <.L104>
			134: R_RISCV_RVC_JUMP	.L104

00000136 <.L100>:
 136:	05000793          	li	a5,80
 13a:	00fb1b63          	bne	s6,a5,150 <.L101>
			13a: R_RISCV_BRANCH	.L101
 13e:	0574c583          	lbu	a1,87(s1)
 142:	16440513          	addi	a0,s0,356
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	me_build_probe_rsp
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.L100+0x10>

0000014e <.LVL198>:
 14e:	bfb5                	j	ca <.L104>
			14e: R_RISCV_RVC_JUMP	.L104

00000150 <.L101>:
 150:	fdfb7b13          	andi	s6,s6,-33
 154:	47c1                	li	a5,16
 156:	4561                	li	a0,24
 158:	f6fb1ce3          	bne	s6,a5,d0 <.L99>
			158: R_RISCV_BRANCH	.L99
 15c:	0574c583          	lbu	a1,87(s1)
 160:	86ca                	mv	a3,s2
 162:	8656                	mv	a2,s5
 164:	16440513          	addi	a0,s0,356
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	me_build_associate_rsp
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.L101+0x18>

00000170 <.LVL199>:
 170:	bfa9                	j	ca <.L104>
			170: R_RISCV_RVC_JUMP	.L104

00000172 <.L96>:
 172:	50b2                	lw	ra,44(sp)
 174:	5422                	lw	s0,40(sp)
 176:	5492                	lw	s1,36(sp)

00000178 <.LVL201>:
 178:	5902                	lw	s2,32(sp)

0000017a <.LVL202>:
 17a:	49f2                	lw	s3,28(sp)

0000017c <.LVL203>:
 17c:	4a62                	lw	s4,24(sp)
 17e:	4ad2                	lw	s5,20(sp)
 180:	4b42                	lw	s6,16(sp)
 182:	4bb2                	lw	s7,12(sp)

00000184 <.LVL204>:
 184:	6145                	addi	sp,sp,48
 186:	8082                	ret

Disassembly of section .text.apm_embedded_enabled:

00000000 <apm_embedded_enabled>:
   0:	cd09                	beqz	a0,1a <.L106>
			0: R_RISCV_RVC_BRANCH	.L106
   2:	05654703          	lbu	a4,86(a0)
   6:	4789                	li	a5,2
   8:	4501                	li	a0,0

0000000a <.LVL206>:
   a:	00f71663          	bne	a4,a5,16 <.L107>
			a: R_RISCV_BRANCH	.L107
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	apm_env+0x14
			e: R_RISCV_RELAX	*ABS*+0x14
  12:	0147c503          	lbu	a0,20(a5) # 14 <.LVL206+0xa>
			12: R_RISCV_LO12_I	apm_env+0x14
			12: R_RISCV_RELAX	*ABS*+0x14

00000016 <.L107>:
  16:	8905                	andi	a0,a0,1
  18:	8082                	ret

0000001a <.L106>:
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	apm_env+0x14
			1a: R_RISCV_RELAX	*ABS*+0x14
  1e:	0147c503          	lbu	a0,20(a5) # 14 <.LVL206+0xa>
			1e: R_RISCV_LO12_I	apm_env+0x14
			1e: R_RISCV_RELAX	*ABS*+0x14

00000022 <.LVL208>:
  22:	8082                	ret

Disassembly of section .text.apm_bcn_set:

00000000 <apm_bcn_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	apm_env
			4: R_RISCV_RELAX	*ABS*
   8:	00090913          	mv	s2,s2
			8: R_RISCV_LO12_I	apm_env
			8: R_RISCV_RELAX	*ABS*
   c:	c422                	sw	s0,8(sp)
   e:	00092403          	lw	s0,0(s2) # 0 <apm_bcn_set>

00000012 <.LVL209>:
  12:	c606                	sw	ra,12(sp)
  14:	c226                	sw	s1,4(sp)
  16:	02445683          	lhu	a3,36(s0)
  1a:	461d                	li	a2,7
  1c:	4581                	li	a1,0
  1e:	06b1                	addi	a3,a3,12
  20:	06c2                	slli	a3,a3,0x10
  22:	82c1                	srli	a3,a3,0x10
  24:	03f00513          	li	a0,63
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ke_msg_alloc
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL209+0x16>

00000030 <.LVL210>:
  30:	501c                	lw	a5,32(s0)
  32:	84aa                	mv	s1,a0

00000034 <.LVL211>:
  34:	c11c                	sw	a5,0(a0)
  36:	02445783          	lhu	a5,36(s0)
  3a:	00f51223          	sh	a5,4(a0)
  3e:	02645783          	lhu	a5,38(s0)
  42:	00f51323          	sh	a5,6(a0)
  46:	03244783          	lbu	a5,50(s0)
  4a:	00f50423          	sb	a5,8(a0)
  4e:	03344503          	lbu	a0,51(s0)
  52:	5d800793          	li	a5,1496
  56:	00a484a3          	sb	a0,9(s1)
  5a:	02f50533          	mul	a0,a0,a5
  5e:	000007b7          	lui	a5,0x0
			5e: R_RISCV_HI20	vif_info_tab
			5e: R_RISCV_RELAX	*ABS*
  62:	00078793          	mv	a5,a5
			62: R_RISCV_LO12_I	vif_info_tab
			62: R_RISCV_RELAX	*ABS*
  66:	953e                	add	a0,a0,a5
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	apm_embedded_enabled
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL211+0x34>

00000070 <.LVL212>:
  70:	02445603          	lhu	a2,36(s0)
  74:	00c48793          	addi	a5,s1,12
  78:	c121                	beqz	a0,b8 <.L111>
			78: R_RISCV_RVC_BRANCH	.L111
  7a:	01092583          	lw	a1,16(s2)
  7e:	853e                	mv	a0,a5
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	memcpy
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL212+0x10>

00000088 <.LVL213>:
  88:	01092503          	lw	a0,16(s2)
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	ke_free
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LVL213+0x4>

00000094 <.LVL214>:
  94:	00092823          	sw	zero,16(s2)

00000098 <.L112>:
  98:	8526                	mv	a0,s1
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	ke_msg_send
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.L112+0x2>

000000a2 <.LVL215>:
  a2:	4422                	lw	s0,8(sp)

000000a4 <.LVL216>:
  a4:	40b2                	lw	ra,12(sp)
  a6:	4492                	lw	s1,4(sp)

000000a8 <.LVL217>:
  a8:	4902                	lw	s2,0(sp)
  aa:	4589                	li	a1,2
  ac:	451d                	li	a0,7
  ae:	0141                	addi	sp,sp,16
  b0:	00000317          	auipc	t1,0x0
			b0: R_RISCV_CALL	ke_state_set
			b0: R_RISCV_RELAX	*ABS*
  b4:	00030067          	jr	t1 # b0 <.LVL217+0x8>

000000b8 <.L111>:
  b8:	0a740593          	addi	a1,s0,167
  bc:	853e                	mv	a0,a5
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	memcpy
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.L111+0x6>

000000c6 <.LVL219>:
  c6:	bfc9                	j	98 <.L112>
			c6: R_RISCV_RVC_JUMP	.L112

Disassembly of section .text.apm_probe_req_handler:

00000000 <apm_probe_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	00854403          	lbu	s0,8(a0)
   e:	0ff00793          	li	a5,255
  12:	84aa                	mv	s1,a0
  14:	08f40563          	beq	s0,a5,9e <.L115>
			14: R_RISCV_BRANCH	.L115
  18:	5d800793          	li	a5,1496
  1c:	02f40433          	mul	s0,s0,a5
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	vif_info_tab
			20: R_RISCV_RELAX	*ABS*
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	vif_info_tab
			24: R_RISCV_RELAX	*ABS*
  28:	943e                	add	s0,s0,a5

0000002a <.L116>:
  2a:	0004d583          	lhu	a1,0(s1)
  2e:	03448913          	addi	s2,s1,52
  32:	4601                	li	a2,0
  34:	15a1                	addi	a1,a1,-24
  36:	05c2                	slli	a1,a1,0x10
  38:	81c1                	srli	a1,a1,0x10
  3a:	854a                	mv	a0,s2
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	mac_ie_find
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.L116+0x12>

00000044 <.LVL222>:
  44:	c92d                	beqz	a0,b6 <.L118>
			44: R_RISCV_RVC_BRANCH	.L118

00000046 <.LBB192>:
  46:	00154783          	lbu	a5,1(a0)

0000004a <.LBE193>:
  4a:	c7b5                	beqz	a5,b6 <.L118>
			4a: R_RISCV_RVC_BRANCH	.L118
  4c:	37e44603          	lbu	a2,894(s0)
  50:	04f61d63          	bne	a2,a5,aa <.L114>
			50: R_RISCV_BRANCH	.L114
  54:	37f40593          	addi	a1,s0,895
  58:	0509                	addi	a0,a0,2

0000005a <.LVL225>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	memcmp
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL225>

00000062 <.LVL226>:
  62:	e521                	bnez	a0,aa <.L114>
			62: R_RISCV_RVC_BRANCH	.L114

00000064 <.L122>:
  64:	0004d583          	lhu	a1,0(s1)
  68:	460d                	li	a2,3
  6a:	854a                	mv	a0,s2
  6c:	15a1                	addi	a1,a1,-24
  6e:	05c2                	slli	a1,a1,0x10
  70:	81c1                	srli	a1,a1,0x10
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	mac_ie_find
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L122+0xe>

0000007a <.LVL227>:
  7a:	e521                	bnez	a0,c2 <.L120>
			7a: R_RISCV_RVC_BRANCH	.L120

0000007c <.L121>:
  7c:	8522                	mv	a0,s0
  7e:	4422                	lw	s0,8(sp)

00000080 <.LVL229>:
  80:	40b2                	lw	ra,12(sp)
  82:	4902                	lw	s2,0(sp)
  84:	02648613          	addi	a2,s1,38
  88:	4492                	lw	s1,4(sp)

0000008a <.LVL230>:
  8a:	4781                	li	a5,0
  8c:	4701                	li	a4,0
  8e:	4681                	li	a3,0
  90:	05000593          	li	a1,80
  94:	0141                	addi	sp,sp,16
  96:	00000317          	auipc	t1,0x0
			96: R_RISCV_CALL	apm_send_mlme
			96: R_RISCV_RELAX	*ABS*
  9a:	00030067          	jr	t1 # 96 <.LVL230+0xc>

0000009e <.L115>:
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	vif_mgmt_get_first_ap_inf
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.L115>

000000a6 <.LVL232>:
  a6:	842a                	mv	s0,a0

000000a8 <.LVL233>:
  a8:	f149                	bnez	a0,2a <.L116>
			a8: R_RISCV_RVC_BRANCH	.L116

000000aa <.L114>:
  aa:	40b2                	lw	ra,12(sp)
  ac:	4422                	lw	s0,8(sp)

000000ae <.LVL234>:
  ae:	4492                	lw	s1,4(sp)

000000b0 <.LVL235>:
  b0:	4902                	lw	s2,0(sp)
  b2:	0141                	addi	sp,sp,16
  b4:	8082                	ret

000000b6 <.L118>:
  b6:	000007b7          	lui	a5,0x0
			b6: R_RISCV_HI20	apm_env+0x15
			b6: R_RISCV_RELAX	*ABS*+0x15
  ba:	0157c783          	lbu	a5,21(a5) # 15 <apm_probe_req_handler+0x15>
			ba: R_RISCV_LO12_I	apm_env+0x15
			ba: R_RISCV_RELAX	*ABS*+0x15
  be:	d3dd                	beqz	a5,64 <.L122>
			be: R_RISCV_RVC_BRANCH	.L122
  c0:	b7ed                	j	aa <.L114>
			c0: R_RISCV_RVC_JUMP	.L114

000000c2 <.L120>:
  c2:	3a442783          	lw	a5,932(s0)
  c6:	00254583          	lbu	a1,2(a0)
  ca:	0027c683          	lbu	a3,2(a5)
  ce:	0007d703          	lhu	a4,0(a5)

000000d2 <.LBB199>:
  d2:	ea9d                	bnez	a3,108 <.L123>
			d2: R_RISCV_RVC_BRANCH	.L123
  d4:	767d                	lui	a2,0xfffff
  d6:	69460693          	addi	a3,a2,1684 # fffff694 <.LASF402+0xffff9a97>

000000da <.LVL239>:
  da:	96ba                	add	a3,a3,a4
  dc:	06c2                	slli	a3,a3,0x10
  de:	82c1                	srli	a3,a3,0x10
  e0:	04800513          	li	a0,72

000000e4 <.LVL240>:
  e4:	4781                	li	a5,0

000000e6 <.LVL241>:
  e6:	00d56e63          	bltu	a0,a3,102 <.L124>
			e6: R_RISCV_BRANCH	.L124
  ea:	6685                	lui	a3,0x1
  ec:	9b468693          	addi	a3,a3,-1612 # 9b4 <.LASF930+0xa>
  f0:	47b9                	li	a5,14
  f2:	00d70863          	beq	a4,a3,102 <.L124>
			f2: R_RISCV_BRANCH	.L124
  f6:	69960793          	addi	a5,a2,1689

000000fa <.L136>:
  fa:	973e                	add	a4,a4,a5

000000fc <.LVL242>:
  fc:	4795                	li	a5,5
  fe:	02f747b3          	div	a5,a4,a5

00000102 <.L124>:
 102:	faf594e3          	bne	a1,a5,aa <.L114>
			102: R_RISCV_BRANCH	.L114
 106:	bf9d                	j	7c <.L121>
			106: R_RISCV_RVC_JUMP	.L121

00000108 <.L123>:
 108:	4605                	li	a2,1
 10a:	4781                	li	a5,0
 10c:	fec69be3          	bne	a3,a2,102 <.L124>
			10c: R_RISCV_BRANCH	.L124
 110:	767d                	lui	a2,0xfffff
 112:	c7360693          	addi	a3,a2,-909 # ffffec73 <.LASF402+0xffff9076>

00000116 <.LVL245>:
 116:	96ba                	add	a3,a3,a4
 118:	06c2                	slli	a3,a3,0x10
 11a:	82c1                	srli	a3,a3,0x10
 11c:	33400513          	li	a0,820

00000120 <.LVL246>:
 120:	fed561e3          	bltu	a0,a3,102 <.L124>
			120: R_RISCV_BRANCH	.L124
 124:	c7860793          	addi	a5,a2,-904
 128:	bfc9                	j	fa <.L136>
			128: R_RISCV_RVC_JUMP	.L136

Disassembly of section .text.apm_auth_handler:

00000000 <apm_auth_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	00854783          	lbu	a5,8(a0)
   e:	0ff00913          	li	s2,255
  12:	05278963          	beq	a5,s2,64 <.L137>
			12: R_RISCV_BRANCH	.L137
  16:	5d800493          	li	s1,1496
  1a:	029787b3          	mul	a5,a5,s1
  1e:	02650413          	addi	s0,a0,38
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	vif_info_tab
			22: R_RISCV_RELAX	*ABS*
  26:	00048493          	mv	s1,s1
			26: R_RISCV_LO12_I	vif_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	8522                	mv	a0,s0

0000002c <.LVL248>:
  2c:	94be                	add	s1,s1,a5

0000002e <.LVL249>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	hal_machw_search_addr
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL249>

00000036 <.LVL250>:
  36:	01250763          	beq	a0,s2,44 <.L139>
			36: R_RISCV_BRANCH	.L139
  3a:	85a2                	mv	a1,s0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	apm_sta_delete
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL250+0x6>

00000044 <.L139>:
  44:	8622                	mv	a2,s0
  46:	4422                	lw	s0,8(sp)

00000048 <.LVL252>:
  48:	40b2                	lw	ra,12(sp)
  4a:	4902                	lw	s2,0(sp)
  4c:	8526                	mv	a0,s1
  4e:	4492                	lw	s1,4(sp)

00000050 <.LVL253>:
  50:	4781                	li	a5,0
  52:	4701                	li	a4,0
  54:	4681                	li	a3,0
  56:	0b000593          	li	a1,176
  5a:	0141                	addi	sp,sp,16
  5c:	00000317          	auipc	t1,0x0
			5c: R_RISCV_CALL	apm_send_mlme
			5c: R_RISCV_RELAX	*ABS*
  60:	00030067          	jr	t1 # 5c <.LVL253+0xc>

00000064 <.L137>:
  64:	40b2                	lw	ra,12(sp)
  66:	4422                	lw	s0,8(sp)
  68:	4492                	lw	s1,4(sp)
  6a:	4902                	lw	s2,0(sp)
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

Disassembly of section .text.apm_assoc_req_handler:

00000000 <apm_assoc_req_handler>:
   0:	711d                	addi	sp,sp,-96
   2:	ce86                	sw	ra,92(sp)
   4:	cca2                	sw	s0,88(sp)
   6:	caa6                	sw	s1,84(sp)
   8:	c8ca                	sw	s2,80(sp)
   a:	c6ce                	sw	s3,76(sp)
   c:	c4d2                	sw	s4,72(sp)
   e:	c2d6                	sw	s5,68(sp)
  10:	c0da                	sw	s6,64(sp)
  12:	de5e                	sw	s7,60(sp)
  14:	dc62                	sw	s8,56(sp)
  16:	da66                	sw	s9,52(sp)
  18:	d86a                	sw	s10,48(sp)
  1a:	d66e                	sw	s11,44(sp)
  1c:	00854c03          	lbu	s8,8(a0)
  20:	0ff00793          	li	a5,255
  24:	0efc0063          	beq	s8,a5,104 <.L141>
			24: R_RISCV_BRANCH	.L141
  28:	84aa                	mv	s1,a0
  2a:	6505                	lui	a0,0x1

0000002c <.LVL256>:
  2c:	05800693          	li	a3,88
  30:	461d                	li	a2,7
  32:	8aae                	mv	s5,a1
  34:	40750513          	addi	a0,a0,1031 # 1407 <.LASF990+0x2>
  38:	4595                	li	a1,5

0000003a <.LVL257>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	ke_msg_alloc
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL257>

00000042 <.LVL258>:
  42:	05800613          	li	a2,88
  46:	4581                	li	a1,0
  48:	842a                	mv	s0,a0
  4a:	02648a13          	addi	s4,s1,38 # 26 <apm_assoc_req_handler+0x26>
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memset
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL258+0xc>

00000056 <.LVL259>:
  56:	4619                	li	a2,6
  58:	85d2                	mv	a1,s4
  5a:	8522                	mv	a0,s0
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	memcpy
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL259+0x6>

00000064 <.LVL260>:
  64:	0084c783          	lbu	a5,8(s1)
  68:	5d800b93          	li	s7,1496
  6c:	037c0bb3          	mul	s7,s8,s7
  70:	04f404a3          	sb	a5,73(s0)
  74:	489c                	lw	a5,16(s1)
  76:	000009b7          	lui	s3,0x0
			76: R_RISCV_HI20	vif_info_tab
			76: R_RISCV_RELAX	*ABS*
  7a:	00098b13          	mv	s6,s3
			7a: R_RISCV_LO12_I	vif_info_tab
			7a: R_RISCV_RELAX	*ABS*
  7e:	c47c                	sw	a5,76(s0)
  80:	48dc                	lw	a5,20(s1)
  82:	00098993          	mv	s3,s3
			82: R_RISCV_LO12_I	vif_info_tab
			82: R_RISCV_RELAX	*ABS*
  86:	c83c                	sw	a5,80(s0)
  88:	01848783          	lb	a5,24(s1)
  8c:	9b5e                	add	s6,s6,s7

0000008e <.LVL261>:
  8e:	04f40a23          	sb	a5,84(s0)
  92:	01b4c783          	lbu	a5,27(s1)
  96:	04f40aa3          	sb	a5,85(s0)
  9a:	0374c783          	lbu	a5,55(s1)
  9e:	0364c703          	lbu	a4,54(s1)
  a2:	0004d903          	lhu	s2,0(s1)

000000a6 <.LBB248>:
  a6:	07a2                	slli	a5,a5,0x8
  a8:	8f5d                	or	a4,a4,a5

000000aa <.LBE248>:
  aa:	060a8c63          	beqz	s5,122 <.L143>
			aa: R_RISCV_BRANCH	.L143

000000ae <.LBB251>:
  ae:	03e48493          	addi	s1,s1,62

000000b2 <.LVL263>:
  b2:	fde90913          	addi	s2,s2,-34

000000b6 <.L144>:
  b6:	5d800c93          	li	s9,1496
  ba:	039c0cb3          	mul	s9,s8,s9
  be:	03300793          	li	a5,51
  c2:	9cce                	add	s9,s9,s3
  c4:	416cd683          	lhu	a3,1046(s9)
  c8:	00e6ee63          	bltu	a3,a4,e4 <.L145>
			c8: R_RISCV_BRANCH	.L145
  cc:	0942                	slli	s2,s2,0x10

000000ce <.LVL265>:
  ce:	01095913          	srli	s2,s2,0x10
  d2:	4601                	li	a2,0
  d4:	85ca                	mv	a1,s2
  d6:	8526                	mv	a0,s1
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	mac_ie_find
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL265+0xa>

000000e0 <.LVL266>:
  e0:	e529                	bnez	a0,12a <.L146>
			e0: R_RISCV_RVC_BRANCH	.L146

000000e2 <.L147>:
  e2:	4785                	li	a5,1

000000e4 <.L145>:
  e4:	000006b7          	lui	a3,0x0
			e4: R_RISCV_HI20	apm_tx_cfm_handler
			e4: R_RISCV_RELAX	*ABS*
  e8:	8722                	mv	a4,s0
  ea:	00068693          	mv	a3,a3
			ea: R_RISCV_LO12_I	apm_tx_cfm_handler
			ea: R_RISCV_RELAX	*ABS*
  ee:	8652                	mv	a2,s4
  f0:	03000593          	li	a1,48
  f4:	000a9363          	bnez	s5,fa <.L195>
			f4: R_RISCV_BRANCH	.L195

000000f8 <.LVL269>:
  f8:	45c1                	li	a1,16

000000fa <.L195>:
  fa:	855a                	mv	a0,s6
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	apm_send_mlme
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.L195+0x2>

00000104 <.L141>:
 104:	40f6                	lw	ra,92(sp)
 106:	4466                	lw	s0,88(sp)
 108:	44d6                	lw	s1,84(sp)
 10a:	4946                	lw	s2,80(sp)
 10c:	49b6                	lw	s3,76(sp)
 10e:	4a26                	lw	s4,72(sp)
 110:	4a96                	lw	s5,68(sp)
 112:	4b06                	lw	s6,64(sp)
 114:	5bf2                	lw	s7,60(sp)
 116:	5c62                	lw	s8,56(sp)
 118:	5cd2                	lw	s9,52(sp)
 11a:	5d42                	lw	s10,48(sp)
 11c:	5db2                	lw	s11,44(sp)
 11e:	6125                	addi	sp,sp,96
 120:	8082                	ret

00000122 <.L143>:
 122:	03848493          	addi	s1,s1,56

00000126 <.LVL272>:
 126:	1911                	addi	s2,s2,-28

00000128 <.LVL273>:
 128:	b779                	j	b6 <.L144>
			128: R_RISCV_RVC_JUMP	.L144

0000012a <.L146>:
 12a:	00154783          	lbu	a5,1(a0)

0000012e <.LBE259>:
 12e:	37ecc603          	lbu	a2,894(s9)
 132:	faf618e3          	bne	a2,a5,e2 <.L147>
			132: R_RISCV_BRANCH	.L147
 136:	37fb8593          	addi	a1,s7,895
 13a:	95ce                	add	a1,a1,s3
 13c:	0509                	addi	a0,a0,2

0000013e <.LVL276>:
 13e:	00000097          	auipc	ra,0x0
			13e: R_RISCV_CALL	memcmp
			13e: R_RISCV_RELAX	*ABS*
 142:	000080e7          	jalr	ra # 13e <.LVL276>

00000146 <.LVL277>:
 146:	8baa                	mv	s7,a0
 148:	fd49                	bnez	a0,e2 <.L147>
			148: R_RISCV_RVC_BRANCH	.L147

0000014a <.LBE258>:
 14a:	4605                	li	a2,1
 14c:	85ca                	mv	a1,s2
 14e:	8526                	mv	a0,s1
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	mac_ie_find
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.LBE258+0x6>

00000158 <.LVL278>:
 158:	47c9                	li	a5,18
 15a:	d549                	beqz	a0,e4 <.L145>
			15a: R_RISCV_RVC_BRANCH	.L145

0000015c <.LBB261>:
 15c:	00154783          	lbu	a5,1(a0)

00000160 <.LVL280>:
 160:	0818                	addi	a4,sp,16

00000162 <.LBE262>:
 162:	0509                	addi	a0,a0,2

00000164 <.LVL281>:
 164:	00f10823          	sb	a5,16(sp)

00000168 <.LBB264>:
 168:	8cba                	mv	s9,a4
 16a:	56fd                	li	a3,-1

0000016c <.L148>:
 16c:	17fd                	addi	a5,a5,-1
 16e:	0705                	addi	a4,a4,1
 170:	18d79963          	bne	a5,a3,302 <.L149>
			170: R_RISCV_BRANCH	.L149

00000174 <.LBE264>:
 174:	03200613          	li	a2,50
 178:	85ca                	mv	a1,s2
 17a:	8526                	mv	a0,s1
 17c:	00000097          	auipc	ra,0x0
			17c: R_RISCV_CALL	mac_ie_find
			17c: R_RISCV_RELAX	*ABS*
 180:	000080e7          	jalr	ra # 17c <.LBE264+0x8>

00000184 <.LVL286>:
 184:	cd11                	beqz	a0,1a0 <.L150>
			184: R_RISCV_RVC_BRANCH	.L150

00000186 <.LBB269>:
 186:	01014603          	lbu	a2,16(sp)

0000018a <.LBB273>:
 18a:	00154703          	lbu	a4,1(a0)

0000018e <.LBE273>:
 18e:	4781                	li	a5,0
 190:	0509                	addi	a0,a0,2

00000192 <.L151>:
 192:	16f71e63          	bne	a4,a5,30e <.L152>
			192: R_RISCV_BRANCH	.L152

00000196 <.LBE274>:
 196:	01014783          	lbu	a5,16(sp)
 19a:	973e                	add	a4,a4,a5

0000019c <.LVL291>:
 19c:	00e10823          	sb	a4,16(sp)

000001a0 <.L150>:
 1a0:	4581                	li	a1,0
 1a2:	8566                	mv	a0,s9
 1a4:	00000097          	auipc	ra,0x0
			1a4: R_RISCV_CALL	me_legacy_rate_bitfield_build
			1a4: R_RISCV_RELAX	*ABS*
 1a8:	000080e7          	jalr	ra # 1a4 <.L150+0x4>

000001ac <.LBB280>:
 1ac:	5d800793          	li	a5,1496
 1b0:	02fc0c33          	mul	s8,s8,a5

000001b4 <.LBE280>:
 1b4:	8daa                	mv	s11,a0

000001b6 <.LVL295>:
 1b6:	00040323          	sb	zero,6(s0)

000001ba <.LBB281>:
 1ba:	4d01                	li	s10,0
 1bc:	99e2                	add	s3,s3,s8

000001be <.L153>:
 1be:	3b09c783          	lbu	a5,944(s3) # 3b0 <.L168>
 1c2:	16fd6363          	bltu	s10,a5,328 <.L156>
			1c2: R_RISCV_BRANCH	.L156

000001c6 <.LBE261>:
 1c6:	02d00613          	li	a2,45
 1ca:	85ca                	mv	a1,s2
 1cc:	8526                	mv	a0,s1
 1ce:	00000097          	auipc	ra,0x0
			1ce: R_RISCV_CALL	mac_ie_find
			1ce: R_RISCV_RELAX	*ABS*
 1d2:	000080e7          	jalr	ra # 1ce <.LBE261+0x8>

000001d6 <.LVL298>:
 1d6:	cd21                	beqz	a0,22e <.L157>
			1d6: R_RISCV_RVC_BRANCH	.L157

000001d8 <.LBB285>:
 1d8:	00354783          	lbu	a5,3(a0)
 1dc:	00254703          	lbu	a4,2(a0)
 1e0:	02740693          	addi	a3,s0,39
 1e4:	07a2                	slli	a5,a5,0x8
 1e6:	8fd9                	or	a5,a5,a4

000001e8 <.LBE285>:
 1e8:	00f41a23          	sh	a5,20(s0)

000001ec <.LBB287>:
 1ec:	00454783          	lbu	a5,4(a0)

000001f0 <.LBE287>:
 1f0:	00550713          	addi	a4,a0,5
 1f4:	00f40b23          	sb	a5,22(s0)
 1f8:	01740793          	addi	a5,s0,23

000001fc <.L158>:
 1fc:	16d79763          	bne	a5,a3,36a <.L159>
			1fc: R_RISCV_BRANCH	.L159

00000200 <.LBB296>:
 200:	01654783          	lbu	a5,22(a0)
 204:	01554703          	lbu	a4,21(a0)
 208:	07a2                	slli	a5,a5,0x8
 20a:	8fd9                	or	a5,a5,a4

0000020c <.LBE296>:
 20c:	02f41423          	sh	a5,40(s0)

00000210 <.LBB298>:
 210:	01854783          	lbu	a5,24(a0)
 214:	01754703          	lbu	a4,23(a0)
 218:	07a2                	slli	a5,a5,0x8

0000021a <.LBE301>:
 21a:	8fd9                	or	a5,a5,a4
 21c:	d45c                	sw	a5,44(s0)

0000021e <.LBB302>:
 21e:	01b54783          	lbu	a5,27(a0)

00000222 <.LBE302>:
 222:	02f40823          	sb	a5,48(s0)
 226:	403c                	lw	a5,64(s0)
 228:	0027e793          	ori	a5,a5,2
 22c:	c03c                	sw	a5,64(s0)

0000022e <.L157>:
 22e:	00000637          	lui	a2,0x0
			22e: R_RISCV_HI20	.LC4
			22e: R_RISCV_RELAX	*ABS*
 232:	4691                	li	a3,4
 234:	00060613          	mv	a2,a2
			234: R_RISCV_LO12_I	.LC4
			234: R_RISCV_RELAX	*ABS*
 238:	85ca                	mv	a1,s2
 23a:	8526                	mv	a0,s1

0000023c <.LVL309>:
 23c:	00000097          	auipc	ra,0x0
			23c: R_RISCV_CALL	mac_vsie_find
			23c: R_RISCV_RELAX	*ABS*
 240:	000080e7          	jalr	ra # 23c <.LVL309>

00000244 <.LVL310>:
 244:	cd19                	beqz	a0,262 <.L160>
			244: R_RISCV_RVC_BRANCH	.L160

00000246 <.LBB304>:
 246:	4038                	lw	a4,64(s0)

00000248 <.LBB308>:
 248:	00854783          	lbu	a5,8(a0)

0000024c <.LBE308>:
 24c:	00176713          	ori	a4,a4,1
 250:	c038                	sw	a4,64(s0)
 252:	00f7f713          	andi	a4,a5,15
 256:	8391                	srli	a5,a5,0x4

00000258 <.LVL313>:
 258:	8b99                	andi	a5,a5,6
 25a:	04e40323          	sb	a4,70(s0)
 25e:	04f403a3          	sb	a5,71(s0)

00000262 <.L160>:
 262:	4609                	li	a2,2
 264:	4581                	li	a1,0
 266:	8566                	mv	a0,s9

00000268 <.LVL314>:
 268:	00000097          	auipc	ra,0x0
			268: R_RISCV_CALL	memset
			268: R_RISCV_RELAX	*ABS*
 26c:	000080e7          	jalr	ra # 268 <.LVL314>

00000270 <.LVL315>:
 270:	4605                	li	a2,1
 272:	4581                	li	a1,0
 274:	0068                	addi	a0,sp,12
 276:	00000097          	auipc	ra,0x0
			276: R_RISCV_CALL	memset
			276: R_RISCV_RELAX	*ABS*
 27a:	000080e7          	jalr	ra # 276 <.LVL315+0x6>

0000027e <.LVL316>:
 27e:	03000613          	li	a2,48
 282:	85ca                	mv	a1,s2
 284:	8526                	mv	a0,s1
 286:	00000097          	auipc	ra,0x0
			286: R_RISCV_CALL	mac_ie_find
			286: R_RISCV_RELAX	*ABS*
 28a:	000080e7          	jalr	ra # 286 <.LVL316+0x8>

0000028e <.LVL317>:
 28e:	c56d                	beqz	a0,378 <.L161>
			28e: R_RISCV_RVC_BRANCH	.L161
 290:	01015783          	lhu	a5,16(sp)
 294:	0207e793          	ori	a5,a5,32
 298:	00f11823          	sh	a5,16(sp)
 29c:	00c14783          	lbu	a5,12(sp)
 2a0:	0087e793          	ori	a5,a5,8

000002a4 <.L194>:
 2a4:	00f10623          	sb	a5,12(sp)

000002a8 <.L162>:
 2a8:	000004b7          	lui	s1,0x0
			2a8: R_RISCV_HI20	uap_conn_info
			2a8: R_RISCV_RELAX	*ABS*

000002ac <.LVL318>:
 2ac:	0004a503          	lw	a0,0(s1) # 0 <apm_assoc_req_handler>
			2ac: R_RISCV_LO12_I	uap_conn_info
			2ac: R_RISCV_RELAX	*ABS*

000002b0 <.LVL319>:
 2b0:	c90d                	beqz	a0,2e2 <.L163>
			2b0: R_RISCV_RVC_BRANCH	.L163
 2b2:	01014703          	lbu	a4,16(sp)
 2b6:	02e00793          	li	a5,46
 2ba:	02877713          	andi	a4,a4,40
 2be:	e20703e3          	beqz	a4,e4 <.L145>
			2be: R_RISCV_BRANCH	.L145
 2c2:	0070                	addi	a2,sp,12
 2c4:	85e6                	mv	a1,s9
 2c6:	4701                	li	a4,0
 2c8:	4681                	li	a3,0
 2ca:	00000097          	auipc	ra,0x0
			2ca: R_RISCV_CALL	InitStaKeyInfo
			2ca: R_RISCV_RELAX	*ABS*
 2ce:	000080e7          	jalr	ra # 2ca <.LVL319+0x1a>

000002d2 <.LVL320>:
 2d2:	0004a503          	lw	a0,0(s1)
			2d2: R_RISCV_LO12_I	uap_conn_info
			2d2: R_RISCV_RELAX	*ABS*
 2d6:	8622                	mv	a2,s0
 2d8:	4581                	li	a1,0
 2da:	00000097          	auipc	ra,0x0
			2da: R_RISCV_CALL	cm_SetPeerAddr
			2da: R_RISCV_RELAX	*ABS*
 2de:	000080e7          	jalr	ra # 2da <.LVL320+0x8>

000002e2 <.L163>:
 2e2:	00000937          	lui	s2,0x0
			2e2: R_RISCV_HI20	apm_env
			2e2: R_RISCV_RELAX	*ABS*
 2e6:	00090793          	mv	a5,s2
			2e6: R_RISCV_LO12_I	apm_env
			2e6: R_RISCV_RELAX	*ABS*
 2ea:	0167c703          	lbu	a4,22(a5)
 2ee:	0177c783          	lbu	a5,23(a5)
 2f2:	04041223          	sh	zero,68(s0)
 2f6:	00090993          	mv	s3,s2
			2f6: R_RISCV_LO12_I	apm_env
			2f6: R_RISCV_RELAX	*ABS*
 2fa:	0af76663          	bltu	a4,a5,3a6 <.L164>
			2fa: R_RISCV_BRANCH	.L164

000002fe <.L169>:
 2fe:	47c5                	li	a5,17
 300:	b3d5                	j	e4 <.L145>
			300: R_RISCV_RVC_JUMP	.L145

00000302 <.L149>:
 302:	00054603          	lbu	a2,0(a0)

00000306 <.LVL323>:
 306:	0505                	addi	a0,a0,1

00000308 <.LBE266>:
 308:	00c70023          	sb	a2,0(a4)
 30c:	b585                	j	16c <.L148>
			30c: R_RISCV_RVC_JUMP	.L148

0000030e <.L152>:
 30e:	00f506b3          	add	a3,a0,a5
 312:	0006c583          	lbu	a1,0(a3) # 0 <apm_assoc_req_handler>

00000316 <.LBE276>:
 316:	01110813          	addi	a6,sp,17
 31a:	00f606b3          	add	a3,a2,a5
 31e:	96c2                	add	a3,a3,a6
 320:	00b68023          	sb	a1,0(a3)
 324:	0785                	addi	a5,a5,1

00000326 <.LVL327>:
 326:	b5b5                	j	192 <.L151>
			326: R_RISCV_RVC_JUMP	.L151

00000328 <.L156>:
 328:	01a98c33          	add	s8,s3,s10
 32c:	3b1c4503          	lbu	a0,945(s8)
 330:	00000097          	auipc	ra,0x0
			330: R_RISCV_CALL	me_rate_translate
			330: R_RISCV_RELAX	*ABS*
 334:	000080e7          	jalr	ra # 330 <.L156+0x8>

00000338 <.LVL329>:
 338:	40add533          	sra	a0,s11,a0
 33c:	8905                	andi	a0,a0,1
 33e:	c105                	beqz	a0,35e <.L154>
			33e: R_RISCV_RVC_BRANCH	.L154
 340:	00644783          	lbu	a5,6(s0)
 344:	3b1c4683          	lbu	a3,945(s8)
 348:	00f40733          	add	a4,s0,a5
 34c:	00d703a3          	sb	a3,7(a4)
 350:	0785                	addi	a5,a5,1
 352:	00f40323          	sb	a5,6(s0)

00000356 <.L155>:
 356:	0d05                	addi	s10,s10,1

00000358 <.LVL330>:
 358:	0ffd7d13          	andi	s10,s10,255

0000035c <.LVL331>:
 35c:	b58d                	j	1be <.L153>
			35c: R_RISCV_RVC_JUMP	.L153

0000035e <.L154>:
 35e:	3b1c0783          	lb	a5,945(s8)
 362:	fe07dae3          	bgez	a5,356 <.L155>
			362: R_RISCV_BRANCH	.L155

00000366 <.LVL332>:
 366:	47c9                	li	a5,18
 368:	bbb5                	j	e4 <.L145>
			368: R_RISCV_RVC_JUMP	.L145

0000036a <.L159>:
 36a:	00074603          	lbu	a2,0(a4)

0000036e <.LBE291>:
 36e:	0785                	addi	a5,a5,1

00000370 <.LBB294>:
 370:	0705                	addi	a4,a4,1

00000372 <.LBE294>:
 372:	fec78fa3          	sb	a2,-1(a5)
 376:	b559                	j	1fc <.L158>
			376: R_RISCV_RVC_JUMP	.L158

00000378 <.L161>:
 378:	00000637          	lui	a2,0x0
			378: R_RISCV_HI20	.LC5
			378: R_RISCV_RELAX	*ABS*
 37c:	4691                	li	a3,4
 37e:	00060613          	mv	a2,a2
			37e: R_RISCV_LO12_I	.LC5
			37e: R_RISCV_RELAX	*ABS*
 382:	85ca                	mv	a1,s2
 384:	8526                	mv	a0,s1

00000386 <.LVL336>:
 386:	00000097          	auipc	ra,0x0
			386: R_RISCV_CALL	mac_vsie_find
			386: R_RISCV_RELAX	*ABS*
 38a:	000080e7          	jalr	ra # 386 <.LVL336>

0000038e <.LVL337>:
 38e:	dd09                	beqz	a0,2a8 <.L162>
			38e: R_RISCV_RVC_BRANCH	.L162
 390:	01015783          	lhu	a5,16(sp)
 394:	0087e793          	ori	a5,a5,8
 398:	00f11823          	sh	a5,16(sp)
 39c:	00c14783          	lbu	a5,12(sp)
 3a0:	0047e793          	ori	a5,a5,4
 3a4:	b701                	j	2a4 <.L194>
			3a4: R_RISCV_RVC_JUMP	.L194

000003a6 <.L164>:
 3a6:	00090913          	mv	s2,s2
			3a6: R_RISCV_LO12_I	apm_env
			3a6: R_RISCV_RELAX	*ABS*

000003aa <.LBB311>:
 3aa:	54fd                	li	s1,-1
 3ac:	5cfd                	li	s9,-1
 3ae:	4c29                	li	s8,10

000003b0 <.L168>:
 3b0:	01e94783          	lbu	a5,30(s2) # 1e <apm_assoc_req_handler+0x1e>
 3b4:	cf85                	beqz	a5,3ec <.L165>
			3b4: R_RISCV_RVC_BRANCH	.L165
 3b6:	4619                	li	a2,6
 3b8:	85d2                	mv	a1,s4
 3ba:	01890513          	addi	a0,s2,24
 3be:	00000097          	auipc	ra,0x0
			3be: R_RISCV_CALL	memcmp
			3be: R_RISCV_RELAX	*ABS*
 3c2:	000080e7          	jalr	ra # 3be <.L168+0xe>

000003c6 <.LVL340>:
 3c6:	e515                	bnez	a0,3f2 <.L166>
			3c6: R_RISCV_RVC_BRANCH	.L166
 3c8:	479d                	li	a5,7
 3ca:	02fb87b3          	mul	a5,s7,a5
 3ce:	4705                	li	a4,1
 3d0:	84de                	mv	s1,s7

000003d2 <.LVL341>:
 3d2:	97ce                	add	a5,a5,s3
 3d4:	00e78f23          	sb	a4,30(a5)

000003d8 <.L167>:
 3d8:	0169c783          	lbu	a5,22(s3)
 3dc:	0485                	addi	s1,s1,1

000003de <.LVL343>:
 3de:	04941223          	sh	s1,68(s0)
 3e2:	0785                	addi	a5,a5,1
 3e4:	00f98b23          	sb	a5,22(s3)
 3e8:	4781                	li	a5,0
 3ea:	b9ed                	j	e4 <.L145>
			3ea: R_RISCV_RVC_JUMP	.L145

000003ec <.L165>:
 3ec:	01949363          	bne	s1,s9,3f2 <.L166>
			3ec: R_RISCV_BRANCH	.L166
 3f0:	84de                	mv	s1,s7

000003f2 <.L166>:
 3f2:	0b85                	addi	s7,s7,1
 3f4:	091d                	addi	s2,s2,7
 3f6:	fb8b9de3          	bne	s7,s8,3b0 <.L168>
			3f6: R_RISCV_BRANCH	.L168
 3fa:	57fd                	li	a5,-1
 3fc:	f0f481e3          	beq	s1,a5,2fe <.L169>
			3fc: R_RISCV_BRANCH	.L169
 400:	491d                	li	s2,7
 402:	03248933          	mul	s2,s1,s2
 406:	4619                	li	a2,6
 408:	85d2                	mv	a1,s4
 40a:	01890513          	addi	a0,s2,24
 40e:	954e                	add	a0,a0,s3
 410:	00000097          	auipc	ra,0x0
			410: R_RISCV_CALL	memcpy
			410: R_RISCV_RELAX	*ABS*
 414:	000080e7          	jalr	ra # 410 <.L166+0x1e>

00000418 <.LVL347>:
 418:	994e                	add	s2,s2,s3
 41a:	4785                	li	a5,1
 41c:	00f90f23          	sb	a5,30(s2)
 420:	bf65                	j	3d8 <.L167>
			420: R_RISCV_RVC_JUMP	.L167

Disassembly of section .text.apm_deauth_handler:

00000000 <apm_deauth_handler>:
   0:	00854703          	lbu	a4,8(a0)
   4:	0ff00793          	li	a5,255
   8:	85aa                	mv	a1,a0
   a:	00f70c63          	beq	a4,a5,22 <.L196>
			a: R_RISCV_BRANCH	.L196
   e:	00754503          	lbu	a0,7(a0)

00000012 <.LVL349>:
  12:	00f50863          	beq	a0,a5,22 <.L196>
			12: R_RISCV_BRANCH	.L196
  16:	02658593          	addi	a1,a1,38 # 26 <.LVL12>

0000001a <.LVL350>:
  1a:	00000317          	auipc	t1,0x0
			1a: R_RISCV_CALL	apm_sta_delete
			1a: R_RISCV_RELAX	*ABS*
  1e:	00030067          	jr	t1 # 1a <.LVL350>

00000022 <.L196>:
  22:	8082                	ret

Disassembly of section .text.apm_disassoc_handler:

00000000 <apm_disassoc_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	00854403          	lbu	s0,8(a0)
   a:	0ff00793          	li	a5,255
   e:	04f40563          	beq	s0,a5,58 <.L198>
			e: R_RISCV_BRANCH	.L198
  12:	862a                	mv	a2,a0
  14:	00754503          	lbu	a0,7(a0)

00000018 <.LVL353>:
  18:	04f50063          	beq	a0,a5,58 <.L198>
			18: R_RISCV_BRANCH	.L198
  1c:	02660613          	addi	a2,a2,38 # 26 <.LVL355+0x6>

00000020 <.LVL355>:
  20:	85b2                	mv	a1,a2
  22:	c632                	sw	a2,12(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	apm_sta_delete
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL355+0x4>

0000002c <.LVL356>:
  2c:	5d800513          	li	a0,1496
  30:	02a40433          	mul	s0,s0,a0
  34:	00000537          	lui	a0,0x0
			34: R_RISCV_HI20	vif_info_tab
			34: R_RISCV_RELAX	*ABS*
  38:	00050513          	mv	a0,a0
			38: R_RISCV_LO12_I	vif_info_tab
			38: R_RISCV_RELAX	*ABS*
  3c:	4632                	lw	a2,12(sp)
  3e:	40f2                	lw	ra,28(sp)
  40:	4789                	li	a5,2
  42:	4701                	li	a4,0
  44:	4681                	li	a3,0
  46:	0c000593          	li	a1,192
  4a:	9522                	add	a0,a0,s0
  4c:	4462                	lw	s0,24(sp)
  4e:	6105                	addi	sp,sp,32

00000050 <.LVL358>:
  50:	00000317          	auipc	t1,0x0
			50: R_RISCV_CALL	apm_send_mlme
			50: R_RISCV_RELAX	*ABS*
  54:	00030067          	jr	t1 # 50 <.LVL358>

00000058 <.L198>:
  58:	40f2                	lw	ra,28(sp)
  5a:	4462                	lw	s0,24(sp)
  5c:	6105                	addi	sp,sp,32
  5e:	8082                	ret

Disassembly of section .text.apm_beacon_handler:

00000000 <apm_beacon_handler>:
   0:	8082                	ret

Disassembly of section .text.apm_sta_remove:

00000000 <apm_sta_remove>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	1b000413          	li	s0,432
   8:	02858433          	mul	s0,a1,s0
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	sta_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	00000837          	lui	a6,0x0
			14: R_RISCV_HI20	vif_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	00080813          	mv	a6,a6
			18: R_RISCV_LO12_I	vif_info_tab
			18: R_RISCV_RELAX	*ABS*
  1c:	c226                	sw	s1,4(sp)
  1e:	4701                	li	a4,0
  20:	84ae                	mv	s1,a1
  22:	4681                	li	a3,0
  24:	0c000593          	li	a1,192

00000028 <.LVL362>:
  28:	0479                	addi	s0,s0,30
  2a:	943e                	add	s0,s0,a5
  2c:	5d800793          	li	a5,1496
  30:	02f50533          	mul	a0,a0,a5

00000034 <.LVL363>:
  34:	8622                	mv	a2,s0
  36:	4789                	li	a5,2
  38:	c606                	sw	ra,12(sp)
  3a:	9542                	add	a0,a0,a6
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	apm_send_mlme
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL363+0x8>

00000044 <.LVL364>:
  44:	85a2                	mv	a1,s0
  46:	4422                	lw	s0,8(sp)
  48:	40b2                	lw	ra,12(sp)
  4a:	8526                	mv	a0,s1
  4c:	4492                	lw	s1,4(sp)
  4e:	0141                	addi	sp,sp,16
  50:	00000317          	auipc	t1,0x0
			50: R_RISCV_CALL	apm_sta_delete
			50: R_RISCV_RELAX	*ABS*
  54:	00030067          	jr	t1 # 50 <.LVL364+0xc>
