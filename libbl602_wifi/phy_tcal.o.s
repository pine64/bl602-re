
libbl602_wifi/phy_tcal.o:     file format elf32-littleriscv


Disassembly of section .text.phy_tcal_reset:

00000000 <phy_tcal_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*
   6:	c422                	sw	s0,8(sp)
   8:	03800613          	li	a2,56
   c:	00050413          	mv	s0,a0
			c: R_RISCV_LO12_I	.LANCHOR0
			c: R_RISCV_RELAX	*ABS*
  10:	4581                	li	a1,0
  12:	00050513          	mv	a0,a0
			12: R_RISCV_LO12_I	.LANCHOR0
			12: R_RISCV_RELAX	*ABS*
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	memset
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <phy_tcal_reset+0x18>

00000020 <.LVL0>:
  20:	47e5                	li	a5,25
  22:	c85c                	sw	a5,20(s0)

00000024 <.LVL1>:
  24:	cc1c                	sw	a5,24(s0)

00000026 <.LVL2>:
  26:	cc5c                	sw	a5,28(s0)

00000028 <.LVL3>:
  28:	d01c                	sw	a5,32(s0)

0000002a <.LVL4>:
  2a:	00f41023          	sh	a5,0(s0)
  2e:	4785                	li	a5,1
  30:	02f40a23          	sb	a5,52(s0)
  34:	40b2                	lw	ra,12(sp)
  36:	4422                	lw	s0,8(sp)
  38:	0141                	addi	sp,sp,16
  3a:	8082                	ret

Disassembly of section .text.phy_tcal_start:

00000000 <phy_tcal_start>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x34
			0: R_RISCV_RELAX	*ABS*+0x34
   4:	4705                	li	a4,1
   6:	02e78a23          	sb	a4,52(a5) # 34 <.LASF215+0x4>
			6: R_RISCV_LO12_S	.LANCHOR0+0x34
			6: R_RISCV_RELAX	*ABS*+0x34
   a:	8082                	ret

Disassembly of section .text.phy_tcal_stop:

00000000 <phy_tcal_stop>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x34
			0: R_RISCV_RELAX	*ABS*+0x34
   4:	02078a23          	sb	zero,52(a5) # 34 <.LASF215+0x4>
			4: R_RISCV_LO12_S	.LANCHOR0+0x34
			4: R_RISCV_RELAX	*ABS*+0x34
   8:	8082                	ret

Disassembly of section .text.phy_tcal_txpwr:

00000000 <phy_tcal_txpwr>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	rf_pri_tx_gain_comp
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <phy_tcal_txpwr+0x8>

00000010 <.LVL6>:
  10:	01841513          	slli	a0,s0,0x18
  14:	4422                	lw	s0,8(sp)
  16:	40b2                	lw	ra,12(sp)
  18:	8561                	srai	a0,a0,0x18
  1a:	0141                	addi	sp,sp,16
  1c:	00000317          	auipc	t1,0x0
			1c: R_RISCV_CALL	trpc_update_vs_temperature
			1c: R_RISCV_RELAX	*ABS*
  20:	00030067          	jr	t1 # 1c <.LVL6+0xc>

Disassembly of section .text.phy_tcal_handle:

00000000 <phy_tcal_handle>:
   0:	1101                	addi	sp,sp,-32
   2:	00e10513          	addi	a0,sp,14
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	hal_get_temperature
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <phy_tcal_handle+0xe>

00000016 <.LVL8>:
  16:	c541                	beqz	a0,9e <.L7>
			16: R_RISCV_RVC_BRANCH	.L7
  18:	00e11503          	lh	a0,14(sp)

0000001c <.LVL9>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	phy_tcal_txpwr
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL9>

00000024 <.LVL10>:
  24:	00e15783          	lhu	a5,14(sp)
  28:	07d00713          	li	a4,125
  2c:	01079693          	slli	a3,a5,0x10
  30:	86c1                	srai	a3,a3,0x10
  32:	00d75463          	bge	a4,a3,3a <.L10>
			32: R_RISCV_BRANCH	.L10
  36:	07d00793          	li	a5,125

0000003a <.L10>:
  3a:	01079713          	slli	a4,a5,0x10
  3e:	8741                	srai	a4,a4,0x10
  40:	fd800693          	li	a3,-40
  44:	00d75463          	bge	a4,a3,4c <.L11>
			44: R_RISCV_BRANCH	.L11
  48:	fd800793          	li	a5,-40

0000004c <.L11>:
  4c:	01079913          	slli	s2,a5,0x10
  50:	00f11723          	sh	a5,14(sp)

00000054 <.LBB16>:
  54:	179d                	addi	a5,a5,-25

00000056 <.LVL12>:
  56:	07c2                	slli	a5,a5,0x10
  58:	87c1                	srai	a5,a5,0x10

0000005a <.LBE16>:
  5a:	41095913          	srai	s2,s2,0x10

0000005e <.LBB24>:
  5e:	04f04663          	bgtz	a5,aa <.L12>
			5e: R_RISCV_BRANCH	.L12
  62:	5469                	li	s0,-6
  64:	028787b3          	mul	a5,a5,s0

00000068 <.LVL14>:
  68:	4087d413          	srai	s0,a5,0x8

0000006c <.L13>:
  6c:	000004b7          	lui	s1,0x0
			6c: R_RISCV_HI20	.LANCHOR0
			6c: R_RISCV_RELAX	*ABS*
  70:	00048793          	mv	a5,s1
			70: R_RISCV_LO12_I	.LANCHOR0
			70: R_RISCV_RELAX	*ABS*
  74:	57dc                	lw	a5,44(a5)
  76:	00048493          	mv	s1,s1
			76: R_RISCV_LO12_I	.LANCHOR0
			76: R_RISCV_RELAX	*ABS*
  7a:	00f40e63          	beq	s0,a5,96 <.L14>
			7a: R_RISCV_BRANCH	.L14

0000007e <.LBB18>:
  7e:	30047073          	csrci	mstatus,8

00000082 <.LBE18>:
  82:	8522                	mv	a0,s0
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	phy_config_rxgain
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LBE18+0x2>

0000008c <.LBB20>:
  8c:	30046073          	csrsi	mstatus,8

00000090 <.LBE20>:
  90:	0124ae23          	sw	s2,28(s1) # 1c <.LVL9>
  94:	d4c0                	sw	s0,44(s1)

00000096 <.L14>:
  96:	00e15783          	lhu	a5,14(sp)
  9a:	00f49023          	sh	a5,0(s1)

0000009e <.L7>:
  9e:	40f2                	lw	ra,28(sp)
  a0:	4462                	lw	s0,24(sp)
  a2:	44d2                	lw	s1,20(sp)
  a4:	4942                	lw	s2,16(sp)
  a6:	6105                	addi	sp,sp,32
  a8:	8082                	ret

000000aa <.L12>:
  aa:	4419                	li	s0,6
  ac:	02878433          	mul	s0,a5,s0
  b0:	8421                	srai	s0,s0,0x8
  b2:	40800433          	neg	s0,s0
  b6:	0442                	slli	s0,s0,0x10
  b8:	8441                	srai	s0,s0,0x10
  ba:	bf4d                	j	6c <.L13>
			ba: R_RISCV_RVC_JUMP	.L13

Disassembly of section .text.phy_tcal_callback:

00000000 <phy_tcal_callback>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	hal_set_temperature
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <phy_tcal_callback+0x4>

0000000c <.LVL21>:
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	.LANCHOR0+0x34
			c: R_RISCV_RELAX	*ABS*+0x34
  10:	0347c783          	lbu	a5,52(a5) # 34 <.LASF215+0x4>
			10: R_RISCV_LO12_I	.LANCHOR0+0x34
			10: R_RISCV_RELAX	*ABS*+0x34
  14:	c799                	beqz	a5,22 <.L16>
			14: R_RISCV_RVC_BRANCH	.L16
  16:	40b2                	lw	ra,12(sp)
  18:	0141                	addi	sp,sp,16
  1a:	00000317          	auipc	t1,0x0
			1a: R_RISCV_CALL	phy_tcal_handle
			1a: R_RISCV_RELAX	*ABS*
  1e:	00030067          	jr	t1 # 1a <.LVL21+0xe>

00000022 <.L16>:
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret
