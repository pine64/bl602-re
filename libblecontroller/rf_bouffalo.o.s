
libblecontroller/rf_bouffalo.o:     file format elf32-littleriscv


Disassembly of section .text.rf_force_agc_enable:

00000000 <rf_force_agc_enable>:
   0:	8082                	ret

Disassembly of section .text.rf_txpwr_dbm_get:

00000000 <rf_txpwr_dbm_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	0007c503          	lbu	a0,0(a5) # 0 <rf_txpwr_dbm_get>
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL2>:
   8:	8082                	ret

Disassembly of section .text.rf_rssi_convert:

00000000 <rf_rssi_convert>:
   0:	4789                	li	a5,2
   2:	40a78533          	sub	a0,a5,a0

00000006 <.LVL4>:
   6:	0562                	slli	a0,a0,0x18
   8:	8561                	srai	a0,a0,0x18
   a:	8082                	ret

Disassembly of section .text.rf_reg_rd:

00000000 <rf_reg_rd>:
   0:	4501                	li	a0,0

00000002 <.LVL6>:
   2:	8082                	ret

Disassembly of section .text.rf_reg_wr:

00000000 <rf_reg_wr>:
   0:	8082                	ret

Disassembly of section .text.rf_sleep:

00000000 <rf_sleep>:
   0:	28000737          	lui	a4,0x28000
   4:	5b1c                	lw	a5,48(a4)

00000006 <.LBE20>:
   6:	0077e793          	ori	a5,a5,7

0000000a <.LBB22>:
   a:	db1c                	sw	a5,48(a4)

0000000c <.LBE22>:
   c:	8082                	ret

Disassembly of section .text.rf_txpwr_dec:

00000000 <rf_txpwr_dec>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	00040703          	lb	a4,0(s0) # 0 <rf_txpwr_dec>
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	.LANCHOR1
			10: R_RISCV_RELAX	*ABS*
  14:	c226                	sw	s1,4(sp)
  16:	8f09                	sub	a4,a4,a0
  18:	84aa                	mv	s1,a0
  1a:	00078503          	lb	a0,0(a5) # 0 <rf_txpwr_dec>
			1a: R_RISCV_LO12_I	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL11>:
  1e:	c606                	sw	ra,12(sp)
  20:	953a                	add	a0,a0,a4
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	rfc_config_power_ble
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL11+0x4>

0000002a <.LVL12>:
  2a:	c511                	beqz	a0,36 <.L8>
			2a: R_RISCV_RVC_BRANCH	.L8
  2c:	00044783          	lbu	a5,0(s0)
  30:	8f85                	sub	a5,a5,s1
  32:	00f40023          	sb	a5,0(s0)

00000036 <.L8>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)
  3a:	4492                	lw	s1,4(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.rf_txpwr_inc:

00000000 <rf_txpwr_inc>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	00040783          	lb	a5,0(s0) # 0 <rf_txpwr_inc>
  10:	00000737          	lui	a4,0x0
			10: R_RISCV_HI20	.LANCHOR1
			10: R_RISCV_RELAX	*ABS*
  14:	c226                	sw	s1,4(sp)
  16:	97aa                	add	a5,a5,a0
  18:	84aa                	mv	s1,a0
  1a:	00070503          	lb	a0,0(a4) # 0 <rf_txpwr_inc>
			1a: R_RISCV_LO12_I	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL14>:
  1e:	c606                	sw	ra,12(sp)
  20:	953e                	add	a0,a0,a5
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	rfc_config_power_ble
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL14+0x4>

0000002a <.LVL15>:
  2a:	c511                	beqz	a0,36 <.L14>
			2a: R_RISCV_RVC_BRANCH	.L14
  2c:	00044783          	lbu	a5,0(s0)
  30:	94be                	add	s1,s1,a5
  32:	00940023          	sb	s1,0(s0)

00000036 <.L14>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)
  3a:	4492                	lw	s1,4(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.rf_txpwr_max_set:

00000000 <rf_txpwr_max_set>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078683          	lb	a3,0(a5) # 0 <rf_txpwr_max_set>
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	07f00713          	li	a4,127
  12:	00078793          	mv	a5,a5
			12: R_RISCV_LO12_I	.LANCHOR0
			12: R_RISCV_RELAX	*ABS*
  16:	00e69363          	bne	a3,a4,1c <.L20>
			16: R_RISCV_BRANCH	.L20
  1a:	453d                	li	a0,15

0000001c <.L20>:
  1c:	00000437          	lui	s0,0x0
			1c: R_RISCV_HI20	.LANCHOR1
			1c: R_RISCV_RELAX	*ABS*
  20:	00040413          	mv	s0,s0
			20: R_RISCV_LO12_I	.LANCHOR1
			20: R_RISCV_RELAX	*ABS*
  24:	00a78023          	sb	a0,0(a5)
  28:	00040783          	lb	a5,0(s0) # 0 <rf_txpwr_max_set>
  2c:	953e                	add	a0,a0,a5
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	rfc_config_power_ble
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.L20+0x12>

00000036 <.LVL18>:
  36:	e919                	bnez	a0,4c <.L19>
			36: R_RISCV_RVC_BRANCH	.L19

00000038 <.LBB26>:
  38:	00040503          	lb	a0,0(s0)

0000003c <.LBE26>:
  3c:	4422                	lw	s0,8(sp)
  3e:	40b2                	lw	ra,12(sp)

00000040 <.LBB30>:
  40:	053d                	addi	a0,a0,15

00000042 <.LBE30>:
  42:	0141                	addi	sp,sp,16

00000044 <.LBB31>:
  44:	00000317          	auipc	t1,0x0
			44: R_RISCV_CALL	rfc_config_power_ble
			44: R_RISCV_RELAX	*ABS*
  48:	00030067          	jr	t1 # 44 <.LBB31>

0000004c <.L19>:
  4c:	40b2                	lw	ra,12(sp)
  4e:	4422                	lw	s0,8(sp)
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

Disassembly of section .text.rf_reset:

00000000 <rf_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB36>:
   4:	280007b7          	lui	a5,0x28000
   8:	0807a703          	lw	a4,128(a5) # 28000080 <.LASF95+0x27fff3ce>

0000000c <.LBB37>:
   c:	76c1                	lui	a3,0xffff0
   e:	0ff68693          	addi	a3,a3,255 # ffff00ff <.LASF95+0xfffef44d>

00000012 <.LBB40>:
  12:	f0077713          	andi	a4,a4,-256
  16:	04276713          	ori	a4,a4,66
  1a:	08e7a023          	sw	a4,128(a5)

0000001e <.LBB41>:
  1e:	0807a703          	lw	a4,128(a5)
  22:	8f75                	and	a4,a4,a3
  24:	08e7a023          	sw	a4,128(a5)

00000028 <.LBB42>:
  28:	0807a703          	lw	a4,128(a5)
  2c:	ff0106b7          	lui	a3,0xff010
  30:	16fd                	addi	a3,a3,-1
  32:	8f75                	and	a4,a4,a3
  34:	003c06b7          	lui	a3,0x3c0
  38:	8f55                	or	a4,a4,a3
  3a:	08e7a023          	sw	a4,128(a5)

0000003e <.LBB44>:
  3e:	0807a703          	lw	a4,128(a5)
  42:	810006b7          	lui	a3,0x81000
  46:	16fd                	addi	a3,a3,-1
  48:	8f75                	and	a4,a4,a3
  4a:	08e7a023          	sw	a4,128(a5)

0000004e <.LBB46>:
  4e:	4729                	li	a4,10
  50:	1ae7a223          	sw	a4,420(a5)

00000054 <.LBB48>:
  54:	07d00713          	li	a4,125
  58:	1ae7a423          	sw	a4,424(a5)

0000005c <.LBB50>:
  5c:	1ac7a703          	lw	a4,428(a5)
  60:	fc077713          	andi	a4,a4,-64
  64:	02876713          	ori	a4,a4,40
  68:	1ae7a623          	sw	a4,428(a5)

0000006c <.LBE50>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	bz_phy_reset
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE50>

00000074 <.LVL30>:
  74:	000007b7          	lui	a5,0x0
			74: R_RISCV_HI20	.LANCHOR0
			74: R_RISCV_RELAX	*ABS*
  78:	40b2                	lw	ra,12(sp)
  7a:	00078503          	lb	a0,0(a5) # 0 <rf_reset>
			7a: R_RISCV_LO12_I	.LANCHOR0
			7a: R_RISCV_RELAX	*ABS*
  7e:	0141                	addi	sp,sp,16
  80:	00000317          	auipc	t1,0x0
			80: R_RISCV_CALL	rf_txpwr_max_set
			80: R_RISCV_RELAX	*ABS*
  84:	00030067          	jr	t1 # 80 <.LVL30+0xc>

Disassembly of section .text.ble_rf_set_pwr_offset:

00000000 <ble_rf_set_pwr_offset>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	00a78023          	sb	a0,0(a5) # 0 <ble_rf_set_pwr_offset>
			4: R_RISCV_LO12_S	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	8082                	ret

Disassembly of section .text.ble_controller_set_tx_pwr:

00000000 <ble_controller_set_tx_pwr>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	0562                	slli	a0,a0,0x18

00000006 <.LVL34>:
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	.LANCHOR1
			6: R_RISCV_RELAX	*ABS*
   a:	8561                	srai	a0,a0,0x18
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	.LANCHOR0
			c: R_RISCV_RELAX	*ABS*
  10:	00040413          	mv	s0,s0
			10: R_RISCV_LO12_I	.LANCHOR1
			10: R_RISCV_RELAX	*ABS*
  14:	00a78023          	sb	a0,0(a5) # 0 <ble_controller_set_tx_pwr>
			14: R_RISCV_LO12_S	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	00040783          	lb	a5,0(s0) # 0 <ble_controller_set_tx_pwr>
  1c:	c606                	sw	ra,12(sp)
  1e:	953e                	add	a0,a0,a5
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	rfc_config_power_ble
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL34+0x1a>

00000028 <.LVL35>:
  28:	e919                	bnez	a0,3e <.L27>
			28: R_RISCV_RVC_BRANCH	.L27
  2a:	00040503          	lb	a0,0(s0)

0000002e <.LVL36>:
  2e:	4422                	lw	s0,8(sp)
  30:	40b2                	lw	ra,12(sp)
  32:	053d                	addi	a0,a0,15
  34:	0141                	addi	sp,sp,16
  36:	00000317          	auipc	t1,0x0
			36: R_RISCV_CALL	rfc_config_power_ble
			36: R_RISCV_RELAX	*ABS*
  3a:	00030067          	jr	t1 # 36 <.LVL36+0x8>

0000003e <.L27>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

Disassembly of section .text.ble_rf_init:

00000000 <ble_rf_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	rf_reg_rd
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	rf_reg_rd
			4: R_RISCV_RELAX	*ABS*
   8:	d11c                	sw	a5,32(a0)
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	rf_reg_wr
			a: R_RISCV_RELAX	*ABS*
   e:	00078793          	mv	a5,a5
			e: R_RISCV_LO12_I	rf_reg_wr
			e: R_RISCV_RELAX	*ABS*
  12:	d15c                	sw	a5,36(a0)
  14:	000007b7          	lui	a5,0x0
			14: R_RISCV_HI20	rf_txpwr_dbm_get
			14: R_RISCV_RELAX	*ABS*
  18:	00078793          	mv	a5,a5
			18: R_RISCV_LO12_I	rf_txpwr_dbm_get
			18: R_RISCV_RELAX	*ABS*
  1c:	c95c                	sw	a5,20(a0)
  1e:	47bd                	li	a5,15
  20:	02f50623          	sb	a5,44(a0)
  24:	000007b7          	lui	a5,0x0
			24: R_RISCV_HI20	rf_txpwr_max_set
			24: R_RISCV_RELAX	*ABS*
  28:	00078793          	mv	a5,a5
			28: R_RISCV_LO12_I	rf_txpwr_max_set
			28: R_RISCV_RELAX	*ABS*
  2c:	c91c                	sw	a5,16(a0)
  2e:	000007b7          	lui	a5,0x0
			2e: R_RISCV_HI20	rf_txpwr_inc
			2e: R_RISCV_RELAX	*ABS*
  32:	00078793          	mv	a5,a5
			32: R_RISCV_LO12_I	rf_txpwr_inc
			32: R_RISCV_RELAX	*ABS*
  36:	c55c                	sw	a5,12(a0)
  38:	000007b7          	lui	a5,0x0
			38: R_RISCV_HI20	rf_txpwr_dec
			38: R_RISCV_RELAX	*ABS*
  3c:	00078793          	mv	a5,a5
			3c: R_RISCV_LO12_I	rf_txpwr_dec
			3c: R_RISCV_RELAX	*ABS*
  40:	c51c                	sw	a5,8(a0)
  42:	000007b7          	lui	a5,0x0
			42: R_RISCV_HI20	rf_sleep
			42: R_RISCV_RELAX	*ABS*
  46:	00078793          	mv	a5,a5
			46: R_RISCV_LO12_I	rf_sleep
			46: R_RISCV_RELAX	*ABS*
  4a:	d51c                	sw	a5,40(a0)
  4c:	000007b7          	lui	a5,0x0
			4c: R_RISCV_HI20	rf_reset
			4c: R_RISCV_RELAX	*ABS*
  50:	00078793          	mv	a5,a5
			50: R_RISCV_LO12_I	rf_reset
			50: R_RISCV_RELAX	*ABS*
  54:	c11c                	sw	a5,0(a0)
  56:	000007b7          	lui	a5,0x0
			56: R_RISCV_HI20	rf_force_agc_enable
			56: R_RISCV_RELAX	*ABS*
  5a:	00078793          	mv	a5,a5
			5a: R_RISCV_LO12_I	rf_force_agc_enable
			5a: R_RISCV_RELAX	*ABS*
  5e:	c15c                	sw	a5,4(a0)
  60:	000007b7          	lui	a5,0x0
			60: R_RISCV_HI20	rf_rssi_convert
			60: R_RISCV_RELAX	*ABS*
  64:	00078793          	mv	a5,a5
			64: R_RISCV_LO12_I	rf_rssi_convert
			64: R_RISCV_RELAX	*ABS*
  68:	cd5c                	sw	a5,28(a0)
  6a:	8082                	ret
