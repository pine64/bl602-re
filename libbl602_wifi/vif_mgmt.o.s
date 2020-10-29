
libbl602_wifi/vif_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.vif_mgmt_bcn_to_evt:

00000000 <vif_mgmt_bcn_to_evt>:
   0:	413c                	lw	a5,64(a0)
   2:	c789                	beqz	a5,c <.L1>
			2: R_RISCV_RVC_BRANCH	.L1
   4:	00000317          	auipc	t1,0x0
			4: R_RISCV_CALL	chan_bcn_to_evt
			4: R_RISCV_RELAX	*ABS*
   8:	00030067          	jr	t1 # 4 <vif_mgmt_bcn_to_evt+0x4>

0000000c <.L1>:
   c:	8082                	ret

Disassembly of section .text.vif_mgmt_init:

00000000 <vif_mgmt_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	vif_mgmt_env
			4: R_RISCV_RELAX	*ABS*
   8:	4651                	li	a2,20
   a:	4581                	li	a1,0
   c:	00048513          	mv	a0,s1
			c: R_RISCV_LO12_I	vif_mgmt_env
			c: R_RISCV_RELAX	*ABS*
  10:	ce06                	sw	ra,28(sp)
  12:	cc22                	sw	s0,24(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	c256                	sw	s5,4(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	memset
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <vif_mgmt_init+0x1c>

00000024 <.LVL2>:
  24:	00048513          	mv	a0,s1
			24: R_RISCV_LO12_I	vif_mgmt_env
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	co_list_init
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL2+0x4>

00000030 <.LVL3>:
  30:	00000537          	lui	a0,0x0
			30: R_RISCV_HI20	vif_mgmt_env+0x8
			30: R_RISCV_RELAX	*ABS*+0x8
  34:	00850513          	addi	a0,a0,8 # 8 <vif_mgmt_init+0x8>
			34: R_RISCV_LO12_I	vif_mgmt_env+0x8
			34: R_RISCV_RELAX	*ABS*+0x8
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	co_list_init
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL3+0x8>

00000040 <.LBB68>:
  40:	00000a37          	lui	s4,0x0
			40: R_RISCV_HI20	vif_info_tab
			40: R_RISCV_RELAX	*ABS*
  44:	5d800613          	li	a2,1496
  48:	4581                	li	a1,0
  4a:	000a0513          	mv	a0,s4
			4a: R_RISCV_LO12_I	vif_info_tab
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memset
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LBB68+0xe>

00000056 <.LVL5>:
  56:	00000937          	lui	s2,0x0
			56: R_RISCV_HI20	vif_mgmt_bcn_to_evt
			56: R_RISCV_RELAX	*ABS*
  5a:	000a0413          	mv	s0,s4
			5a: R_RISCV_LO12_I	vif_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	07f00993          	li	s3,127
  62:	4a91                	li	s5,4
  64:	00090913          	mv	s2,s2
			64: R_RISCV_LO12_I	vif_mgmt_bcn_to_evt
			64: R_RISCV_RELAX	*ABS*

00000068 <.LBE69>:
  68:	000a0593          	mv	a1,s4
			68: R_RISCV_LO12_I	vif_info_tab
			68: R_RISCV_RELAX	*ABS*
  6c:	00048513          	mv	a0,s1
			6c: R_RISCV_LO12_I	vif_mgmt_env
			6c: R_RISCV_RELAX	*ABS*

00000070 <.LBB73>:
  70:	00000a37          	lui	s4,0x0
			70: R_RISCV_HI20	vif_info_tab+0x5d8
			70: R_RISCV_RELAX	*ABS*+0x5d8
  74:	05540b23          	sb	s5,86(s0)
  78:	05340ca3          	sb	s3,89(s0)
  7c:	05340d23          	sb	s3,90(s0)
  80:	03242623          	sw	s2,44(s0)
  84:	d800                	sw	s0,48(s0)

00000086 <.LBE73>:
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	co_list_push_back
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LBE73>

0000008e <.LBB74>:
  8e:	4581                	li	a1,0
  90:	5d8a0513          	addi	a0,s4,1496 # 5d8 <.LASF233+0x1>
			90: R_RISCV_LO12_I	vif_info_tab+0x5d8
			90: R_RISCV_RELAX	*ABS*+0x5d8
  94:	5d800613          	li	a2,1496
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	memset
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LBB74+0xa>

000000a0 <.LVL8>:
  a0:	5d8a0793          	addi	a5,s4,1496
			a0: R_RISCV_LO12_I	vif_info_tab+0x5d8
			a0: R_RISCV_RELAX	*ABS*+0x5d8
  a4:	63540723          	sb	s5,1582(s0)
  a8:	633408a3          	sb	s3,1585(s0)
  ac:	63340923          	sb	s3,1586(s0)
  b0:	61242223          	sw	s2,1540(s0)
  b4:	60f42423          	sw	a5,1544(s0)

000000b8 <.LBE68>:
  b8:	4462                	lw	s0,24(sp)
  ba:	40f2                	lw	ra,28(sp)
  bc:	4942                	lw	s2,16(sp)
  be:	49b2                	lw	s3,12(sp)
  c0:	4a92                	lw	s5,4(sp)

000000c2 <.LBB75>:
  c2:	5d8a0593          	addi	a1,s4,1496
			c2: R_RISCV_LO12_I	vif_info_tab+0x5d8
			c2: R_RISCV_RELAX	*ABS*+0x5d8
  c6:	00048513          	mv	a0,s1
			c6: R_RISCV_LO12_I	vif_mgmt_env
			c6: R_RISCV_RELAX	*ABS*

000000ca <.LBE75>:
  ca:	4a22                	lw	s4,8(sp)
  cc:	44d2                	lw	s1,20(sp)
  ce:	6105                	addi	sp,sp,32

000000d0 <.LBB76>:
  d0:	00000317          	auipc	t1,0x0
			d0: R_RISCV_CALL	co_list_push_back
			d0: R_RISCV_RELAX	*ABS*
  d4:	00030067          	jr	t1 # d0 <.LBB76>

Disassembly of section .text.vif_mgmt_register:

00000000 <vif_mgmt_register>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	vif_mgmt_env
			4: R_RISCV_RELAX	*ABS*
   8:	00042783          	lw	a5,0(s0) # 0 <vif_mgmt_register>
			8: R_RISCV_LO12_I	vif_mgmt_env
			8: R_RISCV_RELAX	*ABS*
   c:	ce06                	sw	ra,28(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	16078963          	beqz	a5,188 <.L13>
			16: R_RISCV_BRANCH	.L13
  1a:	00040793          	mv	a5,s0
			1a: R_RISCV_LO12_I	vif_mgmt_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	479c                	lw	a5,8(a5)
  20:	84aa                	mv	s1,a0
  22:	89b6                	mv	s3,a3
  24:	892e                	mv	s2,a1
  26:	00040a13          	mv	s4,s0
			26: R_RISCV_LO12_I	vif_mgmt_env
			26: R_RISCV_RELAX	*ABS*
  2a:	efcd                	bnez	a5,e4 <.L7>
			2a: R_RISCV_RVC_BRANCH	.L7
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	mm_hw_info_set
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <vif_mgmt_register+0x2c>

00000034 <.L8>:
  34:	00040513          	mv	a0,s0
			34: R_RISCV_LO12_I	vif_mgmt_env
			34: R_RISCV_RELAX	*ABS*
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	co_list_pop_front
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.L8+0x4>

00000040 <.LVL14>:
  40:	842a                	mv	s0,a0

00000042 <.LVL15>:
  42:	05250b23          	sb	s2,86(a0)
  46:	4619                	li	a2,6
  48:	85a6                	mv	a1,s1
  4a:	05050513          	addi	a0,a0,80
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memcpy
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL15+0xc>

00000056 <.LVL16>:
  56:	000007b7          	lui	a5,0x0
			56: R_RISCV_HI20	vif_info_tab
			56: R_RISCV_RELAX	*ABS*
  5a:	00078793          	mv	a5,a5
			5a: R_RISCV_LO12_I	vif_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	40f407b3          	sub	a5,s0,a5
  62:	a18a4737          	lui	a4,0xa18a4
  66:	47370713          	addi	a4,a4,1139 # a18a4473 <.LASF480+0xa18a10f8>
  6a:	878d                	srai	a5,a5,0x3
  6c:	02e787b3          	mul	a5,a5,a4
  70:	6705                	lui	a4,0x1
  72:	a4770693          	addi	a3,a4,-1465 # a47 <.LASF485+0xc>
  76:	a4370713          	addi	a4,a4,-1469
  7a:	c458                	sw	a4,12(s0)
  7c:	0005e737          	lui	a4,0x5e
  80:	43270713          	addi	a4,a4,1074 # 5e432 <.LASF480+0x5b0b7>
  84:	c818                	sw	a4,16(s0)
  86:	0002f737          	lui	a4,0x2f
  8a:	32270713          	addi	a4,a4,802 # 2f322 <.LASF480+0x2bfa7>
  8e:	0ff7f793          	andi	a5,a5,255
  92:	04f40ba3          	sb	a5,87(s0)
  96:	c414                	sw	a3,8(s0)
  98:	c858                	sw	a4,20(s0)
  9a:	04042023          	sw	zero,64(s0)
  9e:	04f40623          	sb	a5,76(s0)
  a2:	08090e63          	beqz	s2,13e <.L9>
			a2: R_RISCV_BRANCH	.L9
  a6:	4789                	li	a5,2
  a8:	0af90e63          	beq	s2,a5,164 <.L10>
			a8: R_RISCV_BRANCH	.L10

000000ac <.L11>:
  ac:	05744503          	lbu	a0,87(s0)
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	td_start
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.L11+0x4>

000000b8 <.LVL17>:
  b8:	05744783          	lbu	a5,87(s0)
  bc:	00000537          	lui	a0,0x0
			bc: R_RISCV_HI20	vif_mgmt_env+0x8
			bc: R_RISCV_RELAX	*ABS*+0x8
  c0:	00850513          	addi	a0,a0,8 # 8 <vif_mgmt_register+0x8>
			c0: R_RISCV_LO12_I	vif_mgmt_env+0x8
			c0: R_RISCV_RELAX	*ABS*+0x8
  c4:	00f98023          	sb	a5,0(s3)
  c8:	85a2                	mv	a1,s0
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	co_list_push_back
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.LVL17+0x12>

000000d2 <.LVL18>:
  d2:	4501                	li	a0,0

000000d4 <.L6>:
  d4:	40f2                	lw	ra,28(sp)
  d6:	4462                	lw	s0,24(sp)
  d8:	44d2                	lw	s1,20(sp)
  da:	4942                	lw	s2,16(sp)
  dc:	49b2                	lw	s3,12(sp)
  de:	4a22                	lw	s4,8(sp)
  e0:	6105                	addi	sp,sp,32
  e2:	8082                	ret

000000e4 <.L7>:
  e4:	00154703          	lbu	a4,1(a0)
  e8:	00054783          	lbu	a5,0(a0)

000000ec <.LBB95>:
  ec:	44b006b7          	lui	a3,0x44b00

000000f0 <.LBE95>:
  f0:	0722                	slli	a4,a4,0x8
  f2:	8f5d                	or	a4,a4,a5
  f4:	00254783          	lbu	a5,2(a0)

000000f8 <.LBB96>:
  f8:	4a90                	lw	a2,16(a3)

000000fa <.LBE96>:
  fa:	07c2                	slli	a5,a5,0x10
  fc:	8f5d                	or	a4,a4,a5
  fe:	00354783          	lbu	a5,3(a0)

00000102 <.LBE90>:
 102:	4505                	li	a0,1

00000104 <.LBB109>:
 104:	07e2                	slli	a5,a5,0x18
 106:	8fd9                	or	a5,a5,a4
 108:	fcc796e3          	bne	a5,a2,d4 <.L6>
			108: R_RISCV_BRANCH	.L6

0000010c <.LBB97>:
 10c:	0054c783          	lbu	a5,5(s1) # 5 <vif_mgmt_register+0x5>
 110:	0044c583          	lbu	a1,4(s1)

00000114 <.LBB100>:
 114:	4ad0                	lw	a2,20(a3)

00000116 <.LBB101>:
 116:	4ed8                	lw	a4,28(a3)

00000118 <.LBE101>:
 118:	07a2                	slli	a5,a5,0x8
 11a:	8fcd                	or	a5,a5,a1
 11c:	8fb1                	xor	a5,a5,a2
 11e:	fff74713          	not	a4,a4
 122:	8ff9                	and	a5,a5,a4
 124:	fbc5                	bnez	a5,d4 <.L6>
			124: R_RISCV_RVC_BRANCH	.L6

00000126 <.LBB103>:
 126:	00000737          	lui	a4,0x0
			126: R_RISCV_HI20	mm_env
			126: R_RISCV_RELAX	*ABS*
 12a:	00070713          	mv	a4,a4
			12a: R_RISCV_LO12_I	mm_env
			12a: R_RISCV_RELAX	*ABS*
 12e:	435c                	lw	a5,4(a4)
 130:	0107e793          	ori	a5,a5,16
 134:	c35c                	sw	a5,4(a4)

00000136 <.LBB105>:
 136:	4318                	lw	a4,0(a4)
 138:	8fd9                	or	a5,a5,a4

0000013a <.LBB107>:
 13a:	d2bc                	sw	a5,96(a3)

0000013c <.LVL27>:
 13c:	bde5                	j	34 <.L8>
			13c: R_RISCV_RVC_JUMP	.L8

0000013e <.L9>:
 13e:	010a4783          	lbu	a5,16(s4)
 142:	d000                	sw	s0,32(s0)
 144:	06040ca3          	sb	zero,121(s0)
 148:	0785                	addi	a5,a5,1
 14a:	00fa0823          	sb	a5,16(s4)
 14e:	000007b7          	lui	a5,0x0
			14e: R_RISCV_HI20	mm_sta_tbtt
			14e: R_RISCV_RELAX	*ABS*
 152:	00078793          	mv	a5,a5
			152: R_RISCV_LO12_I	mm_sta_tbtt
			152: R_RISCV_RELAX	*ABS*
 156:	cc5c                	sw	a5,28(s0)
 158:	57fd                	li	a5,-1
 15a:	06f40023          	sb	a5,96(s0)
 15e:	06040d23          	sb	zero,122(s0)
 162:	b7a9                	j	ac <.L11>
			162: R_RISCV_RVC_JUMP	.L11

00000164 <.L10>:
 164:	011a4783          	lbu	a5,17(s4)
 168:	e789                	bnez	a5,172 <.L12>
			168: R_RISCV_RVC_BRANCH	.L12
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	mm_hw_ap_info_set
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.L10+0x6>

00000172 <.L12>:
 172:	011a4783          	lbu	a5,17(s4)
 176:	8522                	mv	a0,s0
 178:	0785                	addi	a5,a5,1
 17a:	00fa08a3          	sb	a5,17(s4)
 17e:	00000097          	auipc	ra,0x0
			17e: R_RISCV_CALL	mm_bcn_init_vif
			17e: R_RISCV_RELAX	*ABS*
 182:	000080e7          	jalr	ra # 17e <.L12+0xc>

00000186 <.LVL30>:
 186:	b71d                	j	ac <.L11>
			186: R_RISCV_RVC_JUMP	.L11

00000188 <.L13>:
 188:	4505                	li	a0,1

0000018a <.LVL32>:
 18a:	b7a9                	j	d4 <.L6>
			18a: R_RISCV_RVC_JUMP	.L6

Disassembly of section .text.vif_mgmt_unregister:

00000000 <vif_mgmt_unregister>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	5d800913          	li	s2,1496
   8:	03250933          	mul	s2,a0,s2
   c:	cc22                	sw	s0,24(sp)
   e:	00000437          	lui	s0,0x0
			e: R_RISCV_HI20	vif_info_tab
			e: R_RISCV_RELAX	*ABS*
  12:	ca26                	sw	s1,20(sp)
  14:	00040493          	mv	s1,s0
			14: R_RISCV_LO12_I	vif_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	c256                	sw	s5,4(sp)
  1a:	8aaa                	mv	s5,a0
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	vif_mgmt_env+0x8
			1c: R_RISCV_RELAX	*ABS*+0x8

00000020 <.LVL34>:
  20:	00850513          	addi	a0,a0,8 # 8 <vif_mgmt_unregister+0x8>
			20: R_RISCV_LO12_I	vif_mgmt_env+0x8
			20: R_RISCV_RELAX	*ABS*+0x8
  24:	c64e                	sw	s3,12(sp)
  26:	94ca                	add	s1,s1,s2

00000028 <.LVL35>:
  28:	85a6                	mv	a1,s1
  2a:	c452                	sw	s4,8(sp)
  2c:	ce06                	sw	ra,28(sp)
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	co_list_extract
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL35+0x6>

00000036 <.LVL36>:
  36:	0564c783          	lbu	a5,86(s1)
  3a:	00000a37          	lui	s4,0x0
			3a: R_RISCV_HI20	vif_mgmt_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	00040413          	mv	s0,s0
			3e: R_RISCV_LO12_I	vif_info_tab
			3e: R_RISCV_RELAX	*ABS*
  42:	000a0993          	mv	s3,s4
			42: R_RISCV_LO12_I	vif_mgmt_env
			42: R_RISCV_RELAX	*ABS*
  46:	cfe1                	beqz	a5,11e <.L18>
			46: R_RISCV_RVC_BRANCH	.L18
  48:	4709                	li	a4,2
  4a:	0ee78063          	beq	a5,a4,12a <.L19>
			4a: R_RISCV_BRANCH	.L19

0000004e <.L20>:
  4e:	0109c703          	lbu	a4,16(s3)
  52:	0119c783          	lbu	a5,17(s3)
  56:	97ba                	add	a5,a5,a4

00000058 <.LBE125>:
  58:	4705                	li	a4,1
  5a:	02e79563          	bne	a5,a4,84 <.L21>
			5a: R_RISCV_BRANCH	.L21

0000005e <.LBB127>:
  5e:	00000737          	lui	a4,0x0
			5e: R_RISCV_HI20	mm_env
			5e: R_RISCV_RELAX	*ABS*
  62:	00070713          	mv	a4,a4
			62: R_RISCV_LO12_I	mm_env
			62: R_RISCV_RELAX	*ABS*
  66:	435c                	lw	a5,4(a4)

00000068 <.LBE128>:
  68:	0089a683          	lw	a3,8(s3)

0000006c <.LBB135>:
  6c:	9bbd                	andi	a5,a5,-17
  6e:	c35c                	sw	a5,4(a4)

00000070 <.LBB130>:
  70:	4318                	lw	a4,0(a4)
  72:	8fd9                	or	a5,a5,a4

00000074 <.LBB132>:
  74:	44b00737          	lui	a4,0x44b00
  78:	d33c                	sw	a5,96(a4)

0000007a <.LBE130>:
  7a:	5e9c                	lw	a5,56(a3)

0000007c <.LBB136>:
  7c:	d31c                	sw	a5,32(a4)

0000007e <.LBB138>:
  7e:	03c6d783          	lhu	a5,60(a3) # 44b0003c <.LASF480+0x44afccc1>
  82:	d35c                	sw	a5,36(a4)

00000084 <.L21>:
  84:	5d800793          	li	a5,1496
  88:	02fa87b3          	mul	a5,s5,a5
  8c:	97a2                	add	a5,a5,s0
  8e:	0567c703          	lbu	a4,86(a5) # 56 <.L20+0x8>
  92:	4789                	li	a5,2
  94:	00f71663          	bne	a4,a5,a0 <.L22>
			94: R_RISCV_BRANCH	.L22
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	txl_cntrl_clear_bcn_ac
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.L21+0x14>

000000a0 <.L22>:
  a0:	01890513          	addi	a0,s2,24 # 18 <vif_mgmt_unregister+0x18>
  a4:	9522                	add	a0,a0,s0
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	mm_timer_clear
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.L22+0x6>

000000ae <.LVL44>:
  ae:	02890513          	addi	a0,s2,40
  b2:	9522                	add	a0,a0,s0
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	mm_timer_clear
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL44+0x6>

000000bc <.LVL45>:
  bc:	5d800793          	li	a5,1496
  c0:	02fa8ab3          	mul	s5,s5,a5
  c4:	9456                	add	s0,s0,s5
  c6:	05744503          	lbu	a0,87(s0) # 57 <.L20+0x9>
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	td_reset
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.LVL45+0xe>

000000d2 <.LBB141>:
  d2:	4581                	li	a1,0
  d4:	8526                	mv	a0,s1
  d6:	5d800613          	li	a2,1496
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	memset
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.LBB141+0x8>

000000e2 <.LVL47>:
  e2:	4791                	li	a5,4
  e4:	04f40b23          	sb	a5,86(s0)
  e8:	07f00793          	li	a5,127
  ec:	04f40ca3          	sb	a5,89(s0)
  f0:	04f40d23          	sb	a5,90(s0)
  f4:	000007b7          	lui	a5,0x0
			f4: R_RISCV_HI20	vif_mgmt_bcn_to_evt
			f4: R_RISCV_RELAX	*ABS*
  f8:	00078793          	mv	a5,a5
			f8: R_RISCV_LO12_I	vif_mgmt_bcn_to_evt
			f8: R_RISCV_RELAX	*ABS*
  fc:	d45c                	sw	a5,44(s0)
  fe:	d804                	sw	s1,48(s0)

00000100 <.LBE141>:
 100:	4462                	lw	s0,24(sp)
 102:	40f2                	lw	ra,28(sp)
 104:	4942                	lw	s2,16(sp)
 106:	49b2                	lw	s3,12(sp)
 108:	4a92                	lw	s5,4(sp)
 10a:	85a6                	mv	a1,s1
 10c:	000a0513          	mv	a0,s4
			10c: R_RISCV_LO12_I	vif_mgmt_env
			10c: R_RISCV_RELAX	*ABS*
 110:	44d2                	lw	s1,20(sp)

00000112 <.LVL49>:
 112:	4a22                	lw	s4,8(sp)
 114:	6105                	addi	sp,sp,32
 116:	00000317          	auipc	t1,0x0
			116: R_RISCV_CALL	co_list_push_back
			116: R_RISCV_RELAX	*ABS*
 11a:	00030067          	jr	t1 # 116 <.LVL49+0x4>

0000011e <.L18>:
 11e:	0109c783          	lbu	a5,16(s3)
 122:	17fd                	addi	a5,a5,-1
 124:	00f98823          	sb	a5,16(s3)
 128:	b71d                	j	4e <.L20>
			128: R_RISCV_RVC_JUMP	.L20

0000012a <.L19>:
 12a:	0119c783          	lbu	a5,17(s3)
 12e:	17fd                	addi	a5,a5,-1
 130:	0ff7f793          	andi	a5,a5,255
 134:	00f988a3          	sb	a5,17(s3)
 138:	fb99                	bnez	a5,4e <.L20>
			138: R_RISCV_RVC_BRANCH	.L20
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	mm_hw_ap_info_reset
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.L19+0x10>

00000142 <.LVL51>:
 142:	b731                	j	4e <.L20>
			142: R_RISCV_RVC_JUMP	.L20

Disassembly of section .text.vif_mgmt_add_key:

00000000 <vif_mgmt_add_key>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c452                	sw	s4,8(sp)
   8:	c256                	sw	s5,4(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	02954983          	lbu	s3,41(a0)

00000014 <.LVL53>:
  14:	00054483          	lbu	s1,0(a0)
  18:	06800413          	li	s0,104
  1c:	5d800693          	li	a3,1496
  20:	02848433          	mul	s0,s1,s0
  24:	00000ab7          	lui	s5,0x0
			24: R_RISCV_HI20	vif_info_tab
			24: R_RISCV_RELAX	*ABS*
  28:	892a                	mv	s2,a0
  2a:	04800613          	li	a2,72
  2e:	02d986b3          	mul	a3,s3,a3
  32:	96a2                	add	a3,a3,s0
  34:	42068a13          	addi	s4,a3,1056
  38:	000a8413          	mv	s0,s5
			38: R_RISCV_LO12_I	vif_info_tab
			38: R_RISCV_RELAX	*ABS*
  3c:	9a22                	add	s4,s4,s0

0000003e <.LVL54>:
  3e:	9436                	add	s0,s0,a3
  40:	48b40123          	sb	a1,1154(s0)
  44:	02854783          	lbu	a5,40(a0)
  48:	4581                	li	a1,0

0000004a <.LVL55>:
  4a:	48f40023          	sb	a5,1152(s0)
  4e:	00054783          	lbu	a5,0(a0)
  52:	8552                	mv	a0,s4

00000054 <.LVL56>:
  54:	48f400a3          	sb	a5,1153(s0)
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	memset
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL56+0x4>

00000060 <.LVL57>:
  60:	48044703          	lbu	a4,1152(s0)
  64:	4685                	li	a3,1
  66:	000a8793          	mv	a5,s5
			66: R_RISCV_LO12_I	vif_info_tab
			66: R_RISCV_RELAX	*ABS*
  6a:	06d70e63          	beq	a4,a3,e6 <.L25>
			6a: R_RISCV_BRANCH	.L25
  6e:	c701                	beqz	a4,76 <.L26>
			6e: R_RISCV_RVC_BRANCH	.L26
  70:	468d                	li	a3,3
  72:	0ad71163          	bne	a4,a3,114 <.L27>
			72: R_RISCV_BRANCH	.L27

00000076 <.L26>:
  76:	00000737          	lui	a4,0x0
			76: R_RISCV_HI20	.LANCHOR0
			76: R_RISCV_RELAX	*ABS*
  7a:	00070713          	mv	a4,a4
			7a: R_RISCV_LO12_I	.LANCHOR0
			7a: R_RISCV_RELAX	*ABS*
  7e:	4314                	lw	a3,0(a4)
  80:	41c65637          	lui	a2,0x41c65
  84:	e6d60613          	addi	a2,a2,-403 # 41c64e6d <.LASF480+0x41c61af2>
  88:	02c686b3          	mul	a3,a3,a2
  8c:	660d                	lui	a2,0x3
  8e:	03960613          	addi	a2,a2,57 # 3039 <.LASF865+0x4>
  92:	96b2                	add	a3,a3,a2
  94:	c314                	sw	a3,0(a4)

00000096 <.LBE147>:
  96:	5d800613          	li	a2,1496
  9a:	06800713          	li	a4,104
  9e:	02e48733          	mul	a4,s1,a4

000000a2 <.LBB152>:
  a2:	82c1                	srli	a3,a3,0x10

000000a4 <.LBE152>:
  a4:	02c98633          	mul	a2,s3,a2
  a8:	9732                	add	a4,a4,a2
  aa:	973e                	add	a4,a4,a5
  ac:	46d72423          	sw	a3,1128(a4) # 468 <.LASF677+0x6>
  b0:	46072623          	sw	zero,1132(a4)

000000b4 <.L28>:
  b4:	06800713          	li	a4,104
  b8:	02e484b3          	mul	s1,s1,a4
  bc:	5d800713          	li	a4,1496
  c0:	4685                	li	a3,1
  c2:	02e98733          	mul	a4,s3,a4
  c6:	94ba                	add	s1,s1,a4
  c8:	94be                	add	s1,s1,a5
  ca:	97ba                	add	a5,a5,a4
  cc:	48d481a3          	sb	a3,1155(s1)
  d0:	5d47a023          	sw	s4,1472(a5) # 5c0 <.LASF314+0x8>
  d4:	40f2                	lw	ra,28(sp)
  d6:	4462                	lw	s0,24(sp)
  d8:	44d2                	lw	s1,20(sp)
  da:	4942                	lw	s2,16(sp)

000000dc <.LVL58>:
  dc:	49b2                	lw	s3,12(sp)

000000de <.LVL59>:
  de:	4a22                	lw	s4,8(sp)

000000e0 <.LVL60>:
  e0:	4a92                	lw	s5,4(sp)
  e2:	6105                	addi	sp,sp,32
  e4:	8082                	ret

000000e6 <.L25>:
  e6:	4701                	li	a4,0
  e8:	4681                	li	a3,0
  ea:	46d42423          	sw	a3,1128(s0)
  ee:	46e42623          	sw	a4,1132(s0)
  f2:	01892703          	lw	a4,24(s2)
  f6:	46e42823          	sw	a4,1136(s0)
  fa:	01c92703          	lw	a4,28(s2)
  fe:	46e42a23          	sw	a4,1140(s0)
 102:	02092703          	lw	a4,32(s2)
 106:	46e42c23          	sw	a4,1144(s0)
 10a:	02492703          	lw	a4,36(s2)
 10e:	46e42e23          	sw	a4,1148(s0)
 112:	b74d                	j	b4 <.L28>
			112: R_RISCV_RVC_JUMP	.L28

00000114 <.L27>:
 114:	4681                	li	a3,0
 116:	4701                	li	a4,0
 118:	46d42423          	sw	a3,1128(s0)
 11c:	46e42623          	sw	a4,1132(s0)
 120:	bf51                	j	b4 <.L28>
			120: R_RISCV_RVC_JUMP	.L28

Disassembly of section .text.vif_mgmt_del_key:

00000000 <vif_mgmt_del_key>:
   0:	06800793          	li	a5,104
   4:	02f585b3          	mul	a1,a1,a5

00000008 <.LVL63>:
   8:	00b507b3          	add	a5,a0,a1
   c:	480781a3          	sb	zero,1155(a5)
  10:	5c052783          	lw	a5,1472(a0)
  14:	42058593          	addi	a1,a1,1056
  18:	95aa                	add	a1,a1,a0
  1a:	02b79a63          	bne	a5,a1,4e <.L33>
			1a: R_RISCV_BRANCH	.L33
  1e:	5c052023          	sw	zero,1472(a0)

00000022 <.LVL64>:
  22:	48350713          	addi	a4,a0,1155
  26:	4781                	li	a5,0
  28:	4691                	li	a3,4

0000002a <.L37>:
  2a:	00074603          	lbu	a2,0(a4)
  2e:	ca19                	beqz	a2,44 <.L35>
			2e: R_RISCV_RVC_BRANCH	.L35
  30:	06800713          	li	a4,104
  34:	02e787b3          	mul	a5,a5,a4

00000038 <.LVL66>:
  38:	42078793          	addi	a5,a5,1056
  3c:	97aa                	add	a5,a5,a0
  3e:	5cf52023          	sw	a5,1472(a0)
  42:	8082                	ret

00000044 <.L35>:
  44:	0785                	addi	a5,a5,1

00000046 <.LVL68>:
  46:	06870713          	addi	a4,a4,104
  4a:	fed790e3          	bne	a5,a3,2a <.L37>
			4a: R_RISCV_BRANCH	.L37

0000004e <.L33>:
  4e:	8082                	ret

Disassembly of section .text.vif_mgmt_send_postponed_frame:

00000000 <vif_mgmt_send_postponed_frame>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	35052403          	lw	s0,848(a0)

0000000c <.LVL71>:
   c:	84aa                	mv	s1,a0

0000000e <.L40>:
   e:	e411                	bnez	s0,1a <.L41>
			e: R_RISCV_RVC_BRANCH	.L41
  10:	40b2                	lw	ra,12(sp)
  12:	4422                	lw	s0,8(sp)

00000014 <.LVL73>:
  14:	4492                	lw	s1,4(sp)

00000016 <.LVL74>:
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

0000001a <.L41>:
  1a:	85a2                	mv	a1,s0
  1c:	4601                	li	a2,0
  1e:	8526                	mv	a0,s1
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	sta_mgmt_send_postponed_frame
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L41+0x6>

00000028 <.LVL76>:
  28:	4000                	lw	s0,0(s0)
  2a:	b7d5                	j	e <.L40>
			2a: R_RISCV_RVC_JUMP	.L40

Disassembly of section .text.vif_mgmt_reset:

00000000 <vif_mgmt_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	vif_mgmt_env+0x8
			2: R_RISCV_RELAX	*ABS*+0x8
   6:	c422                	sw	s0,8(sp)
   8:	0087a403          	lw	s0,8(a5) # 8 <vif_mgmt_reset+0x8>
			8: R_RISCV_LO12_I	vif_mgmt_env+0x8
			8: R_RISCV_RELAX	*ABS*+0x8

0000000c <.LVL78>:
   c:	c606                	sw	ra,12(sp)

0000000e <.L44>:
   e:	e409                	bnez	s0,18 <.L45>
			e: R_RISCV_RVC_BRANCH	.L45
  10:	40b2                	lw	ra,12(sp)
  12:	4422                	lw	s0,8(sp)

00000014 <.LVL79>:
  14:	0141                	addi	sp,sp,16
  16:	8082                	ret

00000018 <.L45>:
  18:	8522                	mv	a0,s0
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	vif_mgmt_send_postponed_frame
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.L45+0x2>

00000022 <.LVL81>:
  22:	4000                	lw	s0,0(s0)
  24:	b7ed                	j	e <.L44>
			24: R_RISCV_RVC_JUMP	.L44

Disassembly of section .text.vif_mgmt_bcn_to_prog:

00000000 <vif_mgmt_bcn_to_prog>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF480+0x44afcda5>

00000008 <.LBE153>:
   8:	6789                	lui	a5,0x2
   a:	71078793          	addi	a5,a5,1808 # 2710 <.LASF904+0x1>
   e:	95be                	add	a1,a1,a5
  10:	02850513          	addi	a0,a0,40

00000014 <.LVL84>:
  14:	00000317          	auipc	t1,0x0
			14: R_RISCV_CALL	mm_timer_set
			14: R_RISCV_RELAX	*ABS*
  18:	00030067          	jr	t1 # 14 <.LVL84>

Disassembly of section .text.vif_mgmt_bcn_recv:

00000000 <vif_mgmt_bcn_recv>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ps_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	0007c703          	lbu	a4,0(a5) # 0 <vif_mgmt_bcn_recv>
   c:	cb05                	beqz	a4,3c <.L48>
			c: R_RISCV_RVC_BRANCH	.L48
   e:	43dc                	lw	a5,4(a5)
  10:	8ba1                	andi	a5,a5,8
  12:	e78d                	bnez	a5,3c <.L48>
			12: R_RISCV_RVC_BRANCH	.L48
  14:	415c                	lw	a5,4(a0)
  16:	e39d                	bnez	a5,3c <.L48>
			16: R_RISCV_RVC_BRANCH	.L48
  18:	1141                	addi	sp,sp,-16
  1a:	c422                	sw	s0,8(sp)
  1c:	842a                	mv	s0,a0
  1e:	02850513          	addi	a0,a0,40

00000022 <.LVL87>:
  22:	c606                	sw	ra,12(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	mm_timer_clear
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL87+0x2>

0000002c <.LVL88>:
  2c:	8522                	mv	a0,s0
  2e:	4422                	lw	s0,8(sp)

00000030 <.LVL89>:
  30:	40b2                	lw	ra,12(sp)
  32:	0141                	addi	sp,sp,16
  34:	00000317          	auipc	t1,0x0
			34: R_RISCV_CALL	vif_mgmt_bcn_to_evt
			34: R_RISCV_RELAX	*ABS*
  38:	00030067          	jr	t1 # 34 <.LVL89+0x4>

0000003c <.L48>:
  3c:	8082                	ret

Disassembly of section .text.vif_mgmt_set_ap_bcn_int:

00000000 <vif_mgmt_set_ap_bcn_int>:
   0:	32b51f23          	sh	a1,830(a0)

00000004 <.LBB165>:
   4:	30047073          	csrci	mstatus,8

00000008 <.LBE165>:
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	vif_mgmt_env
			8: R_RISCV_RELAX	*ABS*
   c:	00078713          	mv	a4,a5
			c: R_RISCV_LO12_I	vif_mgmt_env
			c: R_RISCV_RELAX	*ABS*
  10:	01174603          	lbu	a2,17(a4)
  14:	4685                	li	a3,1
  16:	00078793          	mv	a5,a5
			16: R_RISCV_LO12_I	vif_mgmt_env
			16: R_RISCV_RELAX	*ABS*
  1a:	04c6fd63          	bgeu	a3,a2,74 <.L57>
			1a: R_RISCV_BRANCH	.L57

0000001e <.LBB167>:
  1e:	0127c683          	lbu	a3,18(a5) # 12 <.LBE165+0xa>
  22:	5d800613          	li	a2,1496
  26:	00000737          	lui	a4,0x0
			26: R_RISCV_HI20	vif_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	02c686b3          	mul	a3,a3,a2
  2e:	00070713          	mv	a4,a4
			2e: R_RISCV_LO12_I	vif_info_tab
			2e: R_RISCV_RELAX	*ABS*
  32:	9736                	add	a4,a4,a3
  34:	33e75703          	lhu	a4,830(a4) # 33e <.LASF784+0x1>

00000038 <.LVL92>:
  38:	00e5f763          	bgeu	a1,a4,46 <.L58>
			38: R_RISCV_BRANCH	.L58
  3c:	05754703          	lbu	a4,87(a0)

00000040 <.LVL93>:
  40:	00e78923          	sb	a4,18(a5)
  44:	872e                	mv	a4,a1

00000046 <.L58>:
  46:	479c                	lw	a5,8(a5)

00000048 <.LBB168>:
  48:	4605                	li	a2,1

0000004a <.L59>:
  4a:	eb99                	bnez	a5,60 <.L60>
			4a: R_RISCV_RVC_BRANCH	.L60

0000004c <.L61>:
  4c:	44b006b7          	lui	a3,0x44b00
  50:	52fc                	lw	a5,100(a3)
  52:	7641                	lui	a2,0xffff0
  54:	8ff1                	and	a5,a5,a2
  56:	8fd9                	or	a5,a5,a4
  58:	d2fc                	sw	a5,100(a3)

0000005a <.LBB173>:
  5a:	30046073          	csrsi	mstatus,8

0000005e <.LBE173>:
  5e:	8082                	ret

00000060 <.L60>:
  60:	33e7d683          	lhu	a3,830(a5)
  64:	34c780a3          	sb	a2,833(a5)
  68:	02e6d6b3          	divu	a3,a3,a4
  6c:	34d78023          	sb	a3,832(a5)
  70:	439c                	lw	a5,0(a5)

00000072 <.LVL100>:
  72:	bfe1                	j	4a <.L59>
			72: R_RISCV_RVC_JUMP	.L59

00000074 <.L57>:
  74:	05754783          	lbu	a5,87(a0)
  78:	00f70923          	sb	a5,18(a4)
  7c:	10100793          	li	a5,257
  80:	34f51023          	sh	a5,832(a0)
  84:	872e                	mv	a4,a1
  86:	b7d9                	j	4c <.L61>
			86: R_RISCV_RVC_JUMP	.L61

Disassembly of section .text.vif_mgmt_switch_channel:

00000000 <vif_mgmt_switch_channel>:
   0:	1101                	addi	sp,sp,-32
   2:	468d                	li	a3,3
   4:	4601                	li	a2,0
   6:	45b5                	li	a1,13
   8:	cc22                	sw	s0,24(sp)
   a:	842a                	mv	s0,a0
   c:	05800513          	li	a0,88

00000010 <.LVL103>:
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_msg_alloc
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL103+0x6>

0000001e <.LVL104>:
  1e:	84aa                	mv	s1,a0

00000020 <.LVL105>:
  20:	05744503          	lbu	a0,87(s0)
  24:	57fd                	li	a5,-1
  26:	00f107a3          	sb	a5,15(sp)
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	chan_ctxt_unlink
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL105+0xa>

00000032 <.LVL106>:
  32:	5ca45583          	lhu	a1,1482(s0)
  36:	5c844503          	lbu	a0,1480(s0)
  3a:	5c840913          	addi	s2,s0,1480

0000003e <.LVL107>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	me_freq_to_chan_ptr
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL107>

00000046 <.LVL108>:
  46:	5cc45783          	lhu	a5,1484(s0)
  4a:	3aa42223          	sw	a0,932(s0)

0000004e <.LBB176>:
  4e:	4711                	li	a4,4

00000050 <.LBE176>:
  50:	3af41423          	sh	a5,936(s0)
  54:	5ce45783          	lhu	a5,1486(s0)
  58:	3af41523          	sh	a5,938(s0)
  5c:	5c944783          	lbu	a5,1481(s0)
  60:	3cf40da3          	sb	a5,987(s0)

00000064 <.LBB179>:
  64:	00e79363          	bne	a5,a4,6a <.L63>
			64: R_RISCV_BRANCH	.L63
  68:	478d                	li	a5,3

0000006a <.L63>:
  6a:	3cf40d23          	sb	a5,986(s0)
  6e:	c539                	beqz	a0,bc <.L64>
			6e: R_RISCV_RVC_BRANCH	.L64
  70:	00450783          	lb	a5,4(a0)
  74:	00f10593          	addi	a1,sp,15
  78:	854a                	mv	a0,s2
  7a:	5cf40823          	sb	a5,1488(s0)
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	chan_ctxt_add
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.L63+0x14>

00000086 <.LVL111>:
  86:	00f14583          	lbu	a1,15(sp)
  8a:	00a480a3          	sb	a0,1(s1)
  8e:	00b48123          	sb	a1,2(s1)
  92:	05644783          	lbu	a5,86(s0)
  96:	c795                	beqz	a5,c2 <.L65>
			96: R_RISCV_RVC_BRANCH	.L65
  98:	4709                	li	a4,2
  9a:	06e79f63          	bne	a5,a4,118 <.L68>
			9a: R_RISCV_BRANCH	.L68
  9e:	340403a3          	sb	zero,839(s0)
  a2:	e93d                	bnez	a0,118 <.L68>
			a2: R_RISCV_RVC_BRANCH	.L68
  a4:	05744503          	lbu	a0,87(s0)

000000a8 <.LVL112>:
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	chan_ctxt_link
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL112>

000000b0 <.LVL113>:
  b0:	000007b7          	lui	a5,0x0
			b0: R_RISCV_HI20	mm_bcn_env+0x9
			b0: R_RISCV_RELAX	*ABS*+0x9
  b4:	4705                	li	a4,1
  b6:	00e784a3          	sb	a4,9(a5) # 9 <vif_mgmt_switch_channel+0x9>
			b6: R_RISCV_LO12_S	mm_bcn_env+0x9
			b6: R_RISCV_RELAX	*ABS*+0x9
  ba:	a8b9                	j	118 <.L68>
			ba: R_RISCV_RVC_JUMP	.L68

000000bc <.L64>:
  bc:	00404783          	lbu	a5,4(zero) # 4 <vif_mgmt_switch_channel+0x4>
  c0:	9002                	ebreak

000000c2 <.L65>:
  c2:	06040ca3          	sb	zero,121(s0)
  c6:	e525                	bnez	a0,12e <.L67>
			c6: R_RISCV_RVC_BRANCH	.L67

000000c8 <.LBB180>:
  c8:	05744503          	lbu	a0,87(s0)

000000cc <.LVL115>:
  cc:	06044903          	lbu	s2,96(s0)

000000d0 <.LVL116>:
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	chan_ctxt_link
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL116>

000000d8 <.LVL117>:
  d8:	02840513          	addi	a0,s0,40
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	mm_timer_clear
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.LVL117+0x4>

000000e4 <.LBB181>:
  e4:	1b000713          	li	a4,432
  e8:	02e90933          	mul	s2,s2,a4

000000ec <.LBB188>:
  ec:	44b007b7          	lui	a5,0x44b00
  f0:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF480+0x44afcda5>

000000f4 <.LBE188>:
  f4:	000007b7          	lui	a5,0x0
			f4: R_RISCV_HI20	sta_info_tab
			f4: R_RISCV_RELAX	*ABS*
  f8:	00078793          	mv	a5,a5
			f8: R_RISCV_LO12_I	sta_info_tab
			f8: R_RISCV_RELAX	*ABS*
  fc:	01840513          	addi	a0,s0,24
 100:	97ca                	add	a5,a5,s2
 102:	43dc                	lw	a5,4(a5)
 104:	95be                	add	a1,a1,a5
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	mm_timer_set
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LBE188+0x12>

0000010e <.LVL120>:
 10e:	4785                	li	a5,1
 110:	06040a23          	sb	zero,116(s0)
 114:	06f40d23          	sb	a5,122(s0)

00000118 <.L68>:
 118:	8526                	mv	a0,s1
 11a:	00000097          	auipc	ra,0x0
			11a: R_RISCV_CALL	ke_msg_send
			11a: R_RISCV_RELAX	*ABS*
 11e:	000080e7          	jalr	ra # 11a <.L68+0x2>

00000122 <.LVL121>:
 122:	40f2                	lw	ra,28(sp)
 124:	4462                	lw	s0,24(sp)

00000126 <.LVL122>:
 126:	44d2                	lw	s1,20(sp)

00000128 <.LVL123>:
 128:	4942                	lw	s2,16(sp)
 12a:	6105                	addi	sp,sp,32
 12c:	8082                	ret

0000012e <.L67>:
 12e:	8522                	mv	a0,s0

00000130 <.LVL125>:
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	mm_send_connection_loss_ind
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL125>

00000138 <.LVL126>:
 138:	b7c5                	j	118 <.L68>
			138: R_RISCV_RVC_JUMP	.L68

Disassembly of section .text.vif_mgmt_get_first_ap_inf:

00000000 <vif_mgmt_get_first_ap_inf>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	vif_mgmt_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	vif_mgmt_env
			4: R_RISCV_RELAX	*ABS*
   8:	0117c703          	lbu	a4,17(a5) # 11 <vif_mgmt_get_first_ap_inf+0x11>
   c:	4501                	li	a0,0
   e:	c701                	beqz	a4,16 <.L73>
			e: R_RISCV_RVC_BRANCH	.L73
  10:	4788                	lw	a0,8(a5)

00000012 <.LVL128>:
  12:	4789                	li	a5,2

00000014 <.L75>:
  14:	e111                	bnez	a0,18 <.L76>
			14: R_RISCV_RVC_BRANCH	.L76

00000016 <.L73>:
  16:	8082                	ret

00000018 <.L76>:
  18:	05654703          	lbu	a4,86(a0)
  1c:	fef70de3          	beq	a4,a5,16 <.L73>
			1c: R_RISCV_BRANCH	.L73
  20:	4108                	lw	a0,0(a0)
  22:	bfcd                	j	14 <.L75>
			22: R_RISCV_RVC_JUMP	.L75
