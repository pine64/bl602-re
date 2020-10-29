
libblecontroller/llc.o:     file format elf32-littleriscv


Disassembly of section .text.llc_init:

00000000 <llc_init>:
   0:	000005b7          	lui	a1,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00058593          	mv	a1,a1
			6: R_RISCV_LO12_I	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	4505                	li	a0,1
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ble_ke_task_create
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <llc_init+0xe>

00000016 <.LVL0>:
  16:	07f00593          	li	a1,127
  1a:	4505                	li	a0,1
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_ke_state_set
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL0+0x6>

00000024 <.LVL1>:
  24:	07f00593          	li	a1,127
  28:	10100513          	li	a0,257
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ble_ke_state_set
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL1+0x8>

00000034 <.LVL2>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	ble_memset_ptr
			34: R_RISCV_RELAX	*ABS*
  38:	40b2                	lw	ra,12(sp)
  3a:	0007a303          	lw	t1,0(a5) # 0 <llc_init>
			3a: R_RISCV_LO12_I	ble_memset_ptr
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	llc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	4621                	li	a2,8
  44:	4581                	li	a1,0
  46:	00050513          	mv	a0,a0
			46: R_RISCV_LO12_I	llc_env
			46: R_RISCV_RELAX	*ABS*
  4a:	0141                	addi	sp,sp,16
  4c:	8302                	jr	t1

Disassembly of section .text.llc_stop:

00000000 <llc_stop>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	89aa                	mv	s3,a0
   6:	0522                	slli	a0,a0,0x8

00000008 <.LVL5>:
   8:	00156513          	ori	a0,a0,1
   c:	0542                	slli	a0,a0,0x10
   e:	8141                	srli	a0,a0,0x10
  10:	07f00593          	li	a1,127
  14:	cc22                	sw	s0,24(sp)
  16:	c452                	sw	s4,8(sp)
  18:	ce06                	sw	ra,28(sp)
  1a:	ca26                	sw	s1,20(sp)
  1c:	c84a                	sw	s2,16(sp)
  1e:	c256                	sw	s5,4(sp)
  20:	00000437          	lui	s0,0x0
			20: R_RISCV_HI20	llc_env
			20: R_RISCV_RELAX	*ABS*
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_ke_state_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL5+0x1c>

0000002c <.LVL6>:
  2c:	00040793          	mv	a5,s0
			2c: R_RISCV_LO12_I	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00299a13          	slli	s4,s3,0x2
  34:	97d2                	add	a5,a5,s4
  36:	4398                	lw	a4,0(a5)
  38:	cb29                	beqz	a4,8a <.L3>
			38: R_RISCV_RVC_BRANCH	.L3
  3a:	00040413          	mv	s0,s0
			3a: R_RISCV_LO12_I	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	4901                	li	s2,0

00000040 <.LBB120>:
  40:	84be                	mv	s1,a5
  42:	4a91                	li	s5,4

00000044 <.L6>:
  44:	409c                	lw	a5,0(s1)
  46:	00291713          	slli	a4,s2,0x2
  4a:	97ba                	add	a5,a5,a4
  4c:	4388                	lw	a0,0(a5)
  4e:	c511                	beqz	a0,5a <.L5>
			4e: R_RISCV_RVC_BRANCH	.L5

00000050 <.LBB121>:
  50:	1551                	addi	a0,a0,-12
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	ble_ke_msg_free
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LBB121+0x2>

0000005a <.L5>:
  5a:	0905                	addi	s2,s2,1

0000005c <.LVL10>:
  5c:	ff5914e3          	bne	s2,s5,44 <.L6>
			5c: R_RISCV_BRANCH	.L6

00000060 <.LBE120>:
  60:	9452                	add	s0,s0,s4
  62:	4008                	lw	a0,0(s0)
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	ble_ke_free
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LBE120+0x4>

0000006c <.LVL11>:
  6c:	00042023          	sw	zero,0(s0) # 0 <llc_stop>
  70:	4462                	lw	s0,24(sp)
  72:	40f2                	lw	ra,28(sp)
  74:	44d2                	lw	s1,20(sp)
  76:	4942                	lw	s2,16(sp)
  78:	4a22                	lw	s4,8(sp)
  7a:	4a92                	lw	s5,4(sp)
  7c:	854e                	mv	a0,s3
  7e:	49b2                	lw	s3,12(sp)
  80:	6105                	addi	sp,sp,32
  82:	00000317          	auipc	t1,0x0
			82: R_RISCV_CALL	llm_util_bl_rem
			82: R_RISCV_RELAX	*ABS*
  86:	00030067          	jr	t1 # 82 <.LVL11+0x16>

0000008a <.L3>:
  8a:	40f2                	lw	ra,28(sp)
  8c:	4462                	lw	s0,24(sp)
  8e:	44d2                	lw	s1,20(sp)
  90:	4942                	lw	s2,16(sp)
  92:	49b2                	lw	s3,12(sp)
  94:	4a22                	lw	s4,8(sp)
  96:	4a92                	lw	s5,4(sp)
  98:	6105                	addi	sp,sp,32
  9a:	8082                	ret

Disassembly of section .text.llc_reset:

00000000 <llc_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	4505                	li	a0,1
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ble_ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <llc_reset+0x6>

0000000e <.LVL14>:
   e:	07f00793          	li	a5,127
  12:	00f50763          	beq	a0,a5,20 <.L13>
			12: R_RISCV_BRANCH	.L13
  16:	4501                	li	a0,0
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	llc_stop
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL14+0xa>

00000020 <.L13>:
  20:	10100513          	li	a0,257
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_ke_state_get
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.L13+0x4>

0000002c <.LVL16>:
  2c:	07f00793          	li	a5,127
  30:	00f50963          	beq	a0,a5,42 <.L12>
			30: R_RISCV_BRANCH	.L12
  34:	40b2                	lw	ra,12(sp)
  36:	4505                	li	a0,1
  38:	0141                	addi	sp,sp,16
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	llc_stop
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL16+0xe>

00000042 <.L12>:
  42:	40b2                	lw	ra,12(sp)
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.llc_discon_event_complete_send:

00000000 <llc_discon_event_complete_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	6505                	lui	a0,0x1

00000006 <.LVL19>:
   6:	8432                	mv	s0,a2
   8:	c226                	sw	s1,4(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	84b6                	mv	s1,a3
   e:	892e                	mv	s2,a1
  10:	4699                	li	a3,6

00000012 <.LVL20>:
  12:	85a2                	mv	a1,s0

00000014 <.LVL21>:
  14:	4615                	li	a2,5

00000016 <.LVL22>:
  16:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  1a:	c606                	sw	ra,12(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_ke_msg_alloc
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL22+0x6>

00000024 <.LVL23>:
  24:	01250023          	sb	s2,0(a0)
  28:	00950223          	sb	s1,4(a0)
  2c:	00851123          	sh	s0,2(a0)
  30:	4422                	lw	s0,8(sp)
  32:	40b2                	lw	ra,12(sp)
  34:	4492                	lw	s1,4(sp)
  36:	4902                	lw	s2,0(sp)
  38:	0141                	addi	sp,sp,16
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	hci_send_2_host
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL23+0x16>

Disassembly of section .text.llc_le_con_cmp_evt_send:

00000000 <llc_le_con_cmp_evt_send>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	892a                	mv	s2,a0
   6:	4501                	li	a0,0

00000008 <.LVL27>:
   8:	ca26                	sw	s1,20(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	c452                	sw	s4,8(sp)
  12:	c256                	sw	s5,4(sp)
  14:	89ae                	mv	s3,a1
  16:	84b2                	mv	s1,a2
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	llm_util_check_evt_mask
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL27+0x10>

00000020 <.LVL28>:
  20:	c57d                	beqz	a0,10e <.L19>
			20: R_RISCV_RVC_BRANCH	.L19

00000022 <.L22>:
  22:	4525                	li	a0,9
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	llm_util_check_evt_mask
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.L22+0x2>

0000002c <.LVL29>:
  2c:	16051663          	bnez	a0,198 <.L20>
			2c: R_RISCV_BRANCH	.L20

00000030 <.LBB123>:
  30:	6505                	lui	a0,0x1
  32:	46d1                	li	a3,20
  34:	4601                	li	a2,0
  36:	85ce                	mv	a1,s3
  38:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ble_ke_msg_alloc
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBB123+0xc>

00000044 <.LVL30>:
  44:	4785                	li	a5,1
  46:	00f50023          	sb	a5,0(a0)
  4a:	012500a3          	sb	s2,1(a0)
  4e:	01351123          	sh	s3,2(a0)
  52:	842a                	mv	s0,a0

00000054 <.LBB143>:
  54:	10091663          	bnez	s2,160 <.L24>
			54: R_RISCV_BRANCH	.L24

00000058 <.LBB124>:
  58:	854e                	mv	a0,s3
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	lld_get_mode
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LBB124+0x2>

00000062 <.LVL33>:
  62:	1575                	addi	a0,a0,-3
  64:	00a03533          	snez	a0,a0
  68:	00a40223          	sb	a0,4(s0)
  6c:	0064d783          	lhu	a5,6(s1)
  70:	00640913          	addi	s2,s0,6
  74:	000009b7          	lui	s3,0x0
			74: R_RISCV_HI20	ble_memcpy_ptr
			74: R_RISCV_RELAX	*ABS*
  78:	c3f1                	beqz	a5,13c <.L25>
			78: R_RISCV_RVC_BRANCH	.L25

0000007a <.LBB125>:
  7a:	03400713          	li	a4,52
  7e:	dd278793          	addi	a5,a5,-558

00000082 <.LVL35>:
  82:	02e7d7b3          	divu	a5,a5,a4

00000086 <.LVL36>:
  86:	0ff7f793          	andi	a5,a5,255

0000008a <.LBB129>:
  8a:	02e787b3          	mul	a5,a5,a4
  8e:	28008737          	lui	a4,0x28008
  92:	22e70713          	addi	a4,a4,558 # 2800822e <.LASF808+0x28003ff3>
  96:	97ba                	add	a5,a5,a4
  98:	0007d703          	lhu	a4,0(a5)

0000009c <.LVL37>:
  9c:	8305                	srli	a4,a4,0x1

0000009e <.LBE129>:
  9e:	8b05                	andi	a4,a4,1
  a0:	cf51                	beqz	a4,13c <.L25>
			a0: R_RISCV_RVC_BRANCH	.L25
  a2:	0114c703          	lbu	a4,17(s1)
  a6:	c711                	beqz	a4,b2 <.L26>
			a6: R_RISCV_RVC_BRANCH	.L26

000000a8 <.LBB130>:
  a8:	0007d783          	lhu	a5,0(a5)

000000ac <.LVL39>:
  ac:	838d                	srli	a5,a5,0x3

000000ae <.LBE130>:
  ae:	8b85                	andi	a5,a5,1
  b0:	cfb5                	beqz	a5,12c <.L27>
			b0: R_RISCV_RVC_BRANCH	.L27

000000b2 <.L26>:
  b2:	4785                	li	a5,1
  b4:	00f402a3          	sb	a5,5(s0)

000000b8 <.LBB132>:
  b8:	0064d783          	lhu	a5,6(s1)

000000bc <.LBB136>:
  bc:	0009a703          	lw	a4,0(s3) # 0 <llc_le_con_cmp_evt_send>
			bc: R_RISCV_LO12_I	ble_memcpy_ptr
			bc: R_RISCV_RELAX	*ABS*
  c0:	280085b7          	lui	a1,0x28008

000000c4 <.LBE136>:
  c4:	07c9                	addi	a5,a5,18

000000c6 <.LBB137>:
  c6:	07c2                	slli	a5,a5,0x10
  c8:	83c1                	srli	a5,a5,0x10
  ca:	4619                	li	a2,6
  cc:	95be                	add	a1,a1,a5
  ce:	854a                	mv	a0,s2
  d0:	9702                	jalr	a4

000000d2 <.L28>:
  d2:	0004d783          	lhu	a5,0(s1)

000000d6 <.LBB139>:
  d6:	00f41623          	sh	a5,12(s0)
  da:	0024d783          	lhu	a5,2(s1)

000000de <.LBB140>:
  de:	00f41723          	sh	a5,14(s0)
  e2:	0044d783          	lhu	a5,4(s1)

000000e6 <.LBB141>:
  e6:	00f41823          	sh	a5,16(s0)
  ea:	00444783          	lbu	a5,4(s0)
  ee:	e7a5                	bnez	a5,156 <.L29>
			ee: R_RISCV_RVC_BRANCH	.L29
  f0:	00040923          	sb	zero,18(s0)

000000f4 <.L41>:
  f4:	8522                	mv	a0,s0

000000f6 <.LBE147>:
  f6:	4462                	lw	s0,24(sp)
  f8:	40f2                	lw	ra,28(sp)
  fa:	44d2                	lw	s1,20(sp)
  fc:	4942                	lw	s2,16(sp)
  fe:	49b2                	lw	s3,12(sp)
 100:	4a22                	lw	s4,8(sp)
 102:	4a92                	lw	s5,4(sp)
 104:	6105                	addi	sp,sp,32

00000106 <.LBB170>:
 106:	00000317          	auipc	t1,0x0
			106: R_RISCV_CALL	hci_send_2_host
			106: R_RISCV_RELAX	*ABS*
 10a:	00030067          	jr	t1 # 106 <.LBB170>

0000010e <.L19>:
 10e:	4525                	li	a0,9
 110:	00000097          	auipc	ra,0x0
			110: R_RISCV_CALL	llm_util_check_evt_mask
			110: R_RISCV_RELAX	*ABS*
 114:	000080e7          	jalr	ra # 110 <.L19+0x2>

00000118 <.LVL47>:
 118:	f509                	bnez	a0,22 <.L22>
			118: R_RISCV_RVC_BRANCH	.L22
 11a:	40f2                	lw	ra,28(sp)
 11c:	4462                	lw	s0,24(sp)
 11e:	44d2                	lw	s1,20(sp)

00000120 <.LVL48>:
 120:	4942                	lw	s2,16(sp)
 122:	49b2                	lw	s3,12(sp)
 124:	4a22                	lw	s4,8(sp)
 126:	4a92                	lw	s5,4(sp)
 128:	6105                	addi	sp,sp,32
 12a:	8082                	ret

0000012c <.L27>:
 12c:	000007b7          	lui	a5,0x0
			12c: R_RISCV_HI20	ble_memset_ptr
			12c: R_RISCV_RELAX	*ABS*
 130:	0007a783          	lw	a5,0(a5) # 0 <llc_le_con_cmp_evt_send>
			130: R_RISCV_LO12_I	ble_memset_ptr
			130: R_RISCV_RELAX	*ABS*
 134:	4619                	li	a2,6
 136:	4581                	li	a1,0
 138:	854a                	mv	a0,s2
 13a:	9782                	jalr	a5

0000013c <.L25>:
 13c:	00e4c783          	lbu	a5,14(s1)
 140:	4619                	li	a2,6
 142:	00848593          	addi	a1,s1,8
 146:	8b85                	andi	a5,a5,1
 148:	00f402a3          	sb	a5,5(s0)
 14c:	0009a783          	lw	a5,0(s3)
			14c: R_RISCV_LO12_I	ble_memcpy_ptr
			14c: R_RISCV_RELAX	*ABS*
 150:	854a                	mv	a0,s2
 152:	9782                	jalr	a5

00000154 <.LVL51>:
 154:	bfbd                	j	d2 <.L28>
			154: R_RISCV_RVC_JUMP	.L28

00000156 <.L29>:
 156:	0104c783          	lbu	a5,16(s1)
 15a:	00f40923          	sb	a5,18(s0)
 15e:	bf59                	j	f4 <.L41>
			15e: R_RISCV_RVC_JUMP	.L41

00000160 <.L24>:
 160:	03c00713          	li	a4,60
 164:	f8e918e3          	bne	s2,a4,f4 <.L41>
			164: R_RISCV_BRANCH	.L41
 168:	00f50223          	sb	a5,4(a0)
 16c:	00e4c783          	lbu	a5,14(s1)
 170:	00051123          	sh	zero,2(a0)
 174:	00051623          	sh	zero,12(a0)
 178:	00f502a3          	sb	a5,5(a0)
 17c:	000007b7          	lui	a5,0x0
			17c: R_RISCV_HI20	ble_memcpy_ptr
			17c: R_RISCV_RELAX	*ABS*
 180:	0007a783          	lw	a5,0(a5) # 0 <llc_le_con_cmp_evt_send>
			180: R_RISCV_LO12_I	ble_memcpy_ptr
			180: R_RISCV_RELAX	*ABS*
 184:	00051723          	sh	zero,14(a0)
 188:	00051823          	sh	zero,16(a0)
 18c:	4619                	li	a2,6
 18e:	00848593          	addi	a1,s1,8
 192:	0519                	addi	a0,a0,6

00000194 <.L59>:
 194:	9782                	jalr	a5
 196:	bfb9                	j	f4 <.L41>
			196: R_RISCV_RVC_JUMP	.L41

00000198 <.L20>:
 198:	6505                	lui	a0,0x1
 19a:	02000693          	li	a3,32
 19e:	4601                	li	a2,0
 1a0:	85ce                	mv	a1,s3
 1a2:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
 1a6:	00000097          	auipc	ra,0x0
			1a6: R_RISCV_CALL	ble_ke_msg_alloc
			1a6: R_RISCV_RELAX	*ABS*
 1aa:	000080e7          	jalr	ra # 1a6 <.L20+0xe>

000001ae <.LVL56>:
 1ae:	47a9                	li	a5,10
 1b0:	00f50023          	sb	a5,0(a0)
 1b4:	012500a3          	sb	s2,1(a0)
 1b8:	01351123          	sh	s3,2(a0)
 1bc:	842a                	mv	s0,a0

000001be <.LBB173>:
 1be:	12091c63          	bnez	s2,2f6 <.L31>
			1be: R_RISCV_BRANCH	.L31
 1c2:	854e                	mv	a0,s3
 1c4:	00000097          	auipc	ra,0x0
			1c4: R_RISCV_CALL	lld_get_mode
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	000080e7          	jalr	ra # 1c4 <.LBB173+0x6>

000001cc <.LVL58>:
 1cc:	1575                	addi	a0,a0,-3
 1ce:	00a03533          	snez	a0,a0
 1d2:	00a40223          	sb	a0,4(s0)
 1d6:	0064d583          	lhu	a1,6(s1)
 1da:	01240a93          	addi	s5,s0,18
 1de:	00c40993          	addi	s3,s0,12
 1e2:	00000a37          	lui	s4,0x0
			1e2: R_RISCV_HI20	ble_memcpy_ptr
			1e2: R_RISCV_RELAX	*ABS*
 1e6:	c5ed                	beqz	a1,2d0 <.L32>
			1e6: R_RISCV_RVC_BRANCH	.L32

000001e8 <.LBB148>:
 1e8:	03400793          	li	a5,52
 1ec:	dd258913          	addi	s2,a1,-558 # 28007dd2 <.LASF808+0x28003b97>
 1f0:	02f95933          	divu	s2,s2,a5
 1f4:	0ff97913          	andi	s2,s2,255

000001f8 <.LBB152>:
 1f8:	02f90933          	mul	s2,s2,a5
 1fc:	280087b7          	lui	a5,0x28008
 200:	22e78793          	addi	a5,a5,558 # 2800822e <.LASF808+0x28003ff3>
 204:	993e                	add	s2,s2,a5
 206:	00095783          	lhu	a5,0(s2)

0000020a <.LVL60>:
 20a:	8385                	srli	a5,a5,0x1

0000020c <.LBE152>:
 20c:	8b85                	andi	a5,a5,1
 20e:	cfb1                	beqz	a5,26a <.L33>
			20e: R_RISCV_RVC_BRANCH	.L33
 210:	0114c783          	lbu	a5,17(s1)
 214:	c791                	beqz	a5,220 <.L34>
			214: R_RISCV_RVC_BRANCH	.L34

00000216 <.LBB153>:
 216:	00095783          	lhu	a5,0(s2)

0000021a <.LVL62>:
 21a:	838d                	srli	a5,a5,0x3

0000021c <.LBE153>:
 21c:	8b85                	andi	a5,a5,1
 21e:	c7b1                	beqz	a5,26a <.L33>
			21e: R_RISCV_RVC_BRANCH	.L33

00000220 <.L34>:
 220:	05c9                	addi	a1,a1,18

00000222 <.LBB158>:
 222:	05c2                	slli	a1,a1,0x10

00000224 <.LVL65>:
 224:	000a2783          	lw	a5,0(s4) # 0 <llc_le_con_cmp_evt_send>
			224: R_RISCV_LO12_I	ble_memcpy_ptr
			224: R_RISCV_RELAX	*ABS*
 228:	81c1                	srli	a1,a1,0x10
 22a:	28008737          	lui	a4,0x28008
 22e:	4619                	li	a2,6
 230:	95ba                	add	a1,a1,a4

00000232 <.L57>:
 232:	8556                	mv	a0,s5
 234:	9782                	jalr	a5

00000236 <.LBB159>:
 236:	00095783          	lhu	a5,0(s2)
 23a:	8395                	srli	a5,a5,0x5

0000023c <.LBE159>:
 23c:	8b85                	andi	a5,a5,1
 23e:	cf89                	beqz	a5,258 <.L37>
			23e: R_RISCV_RVC_BRANCH	.L37
 240:	00444703          	lbu	a4,4(s0)
 244:	4785                	li	a5,1
 246:	02f71963          	bne	a4,a5,278 <.L38>
			246: R_RISCV_BRANCH	.L38

0000024a <.LBB161>:
 24a:	280087b7          	lui	a5,0x28008
 24e:	1547d783          	lhu	a5,340(a5) # 28008154 <.LASF808+0x28003f19>

00000252 <.LVL70>:
 252:	8389                	srli	a5,a5,0x2

00000254 <.LBE161>:
 254:	8b85                	andi	a5,a5,1
 256:	e38d                	bnez	a5,278 <.L38>
			256: R_RISCV_RVC_BRANCH	.L38

00000258 <.L37>:
 258:	000007b7          	lui	a5,0x0
			258: R_RISCV_HI20	ble_memset_ptr
			258: R_RISCV_RELAX	*ABS*
 25c:	0007a783          	lw	a5,0(a5) # 0 <llc_le_con_cmp_evt_send>
			25c: R_RISCV_LO12_I	ble_memset_ptr
			25c: R_RISCV_RELAX	*ABS*
 260:	4619                	li	a2,6
 262:	4581                	li	a1,0
 264:	854e                	mv	a0,s3

00000266 <.L58>:
 266:	9782                	jalr	a5
 268:	a035                	j	294 <.L39>
			268: R_RISCV_RVC_JUMP	.L39

0000026a <.L33>:
 26a:	000007b7          	lui	a5,0x0
			26a: R_RISCV_HI20	ble_memset_ptr
			26a: R_RISCV_RELAX	*ABS*
 26e:	0007a783          	lw	a5,0(a5) # 0 <llc_le_con_cmp_evt_send>
			26e: R_RISCV_LO12_I	ble_memset_ptr
			26e: R_RISCV_RELAX	*ABS*
 272:	4619                	li	a2,6
 274:	4581                	li	a1,0

00000276 <.LVL73>:
 276:	bf75                	j	232 <.L57>
			276: R_RISCV_RVC_JUMP	.L57

00000278 <.L38>:
 278:	0064d783          	lhu	a5,6(s1)

0000027c <.LBB167>:
 27c:	000a2703          	lw	a4,0(s4)
			27c: R_RISCV_LO12_I	ble_memcpy_ptr
			27c: R_RISCV_RELAX	*ABS*
 280:	280085b7          	lui	a1,0x28008

00000284 <.LBE167>:
 284:	02e78793          	addi	a5,a5,46

00000288 <.LBB168>:
 288:	07c2                	slli	a5,a5,0x10
 28a:	83c1                	srli	a5,a5,0x10
 28c:	4619                	li	a2,6
 28e:	95be                	add	a1,a1,a5
 290:	854e                	mv	a0,s3
 292:	9702                	jalr	a4

00000294 <.L39>:
 294:	00e4c783          	lbu	a5,14(s1)
 298:	4619                	li	a2,6
 29a:	00848593          	addi	a1,s1,8
 29e:	00f402a3          	sb	a5,5(s0)
 2a2:	000a2783          	lw	a5,0(s4)
			2a2: R_RISCV_LO12_I	ble_memcpy_ptr
			2a2: R_RISCV_RELAX	*ABS*
 2a6:	00640513          	addi	a0,s0,6
 2aa:	9782                	jalr	a5

000002ac <.LVL76>:
 2ac:	0004d783          	lhu	a5,0(s1)

000002b0 <.LBB174>:
 2b0:	00f41c23          	sh	a5,24(s0)
 2b4:	0024d783          	lhu	a5,2(s1)

000002b8 <.LBB175>:
 2b8:	00f41d23          	sh	a5,26(s0)
 2bc:	0044d783          	lhu	a5,4(s1)

000002c0 <.LBB176>:
 2c0:	00f41e23          	sh	a5,28(s0)
 2c4:	00444783          	lbu	a5,4(s0)
 2c8:	e395                	bnez	a5,2ec <.L40>
			2c8: R_RISCV_RVC_BRANCH	.L40
 2ca:	00040f23          	sb	zero,30(s0)
 2ce:	b51d                	j	f4 <.L41>
			2ce: R_RISCV_RVC_JUMP	.L41

000002d0 <.L32>:
 2d0:	00000937          	lui	s2,0x0
			2d0: R_RISCV_HI20	ble_memset_ptr
			2d0: R_RISCV_RELAX	*ABS*
 2d4:	00092783          	lw	a5,0(s2) # 0 <llc_le_con_cmp_evt_send>
			2d4: R_RISCV_LO12_I	ble_memset_ptr
			2d4: R_RISCV_RELAX	*ABS*
 2d8:	4619                	li	a2,6
 2da:	4581                	li	a1,0
 2dc:	854e                	mv	a0,s3
 2de:	9782                	jalr	a5

000002e0 <.LVL80>:
 2e0:	00092783          	lw	a5,0(s2)
			2e0: R_RISCV_LO12_I	ble_memset_ptr
			2e0: R_RISCV_RELAX	*ABS*
 2e4:	4619                	li	a2,6
 2e6:	4581                	li	a1,0
 2e8:	8556                	mv	a0,s5
 2ea:	bfb5                	j	266 <.L58>
			2ea: R_RISCV_RVC_JUMP	.L58

000002ec <.L40>:
 2ec:	0104c783          	lbu	a5,16(s1)
 2f0:	00f40f23          	sb	a5,30(s0)
 2f4:	b501                	j	f4 <.L41>
			2f4: R_RISCV_RVC_JUMP	.L41

000002f6 <.L31>:
 2f6:	03c00793          	li	a5,60
 2fa:	def91de3          	bne	s2,a5,f4 <.L41>
			2fa: R_RISCV_BRANCH	.L41
 2fe:	4785                	li	a5,1
 300:	00f50223          	sb	a5,4(a0)
 304:	00e4c783          	lbu	a5,14(s1)
 308:	00051123          	sh	zero,2(a0)
 30c:	00848593          	addi	a1,s1,8
 310:	00f502a3          	sb	a5,5(a0)
 314:	000007b7          	lui	a5,0x0
			314: R_RISCV_HI20	ble_memcpy_ptr
			314: R_RISCV_RELAX	*ABS*
 318:	0007a783          	lw	a5,0(a5) # 0 <llc_le_con_cmp_evt_send>
			318: R_RISCV_LO12_I	ble_memcpy_ptr
			318: R_RISCV_RELAX	*ABS*
 31c:	00051c23          	sh	zero,24(a0)
 320:	00051d23          	sh	zero,26(a0)
 324:	00051e23          	sh	zero,28(a0)
 328:	4619                	li	a2,6
 32a:	0519                	addi	a0,a0,6
 32c:	9782                	jalr	a5

0000032e <.LVL81>:
 32e:	000004b7          	lui	s1,0x0
			32e: R_RISCV_HI20	ble_memset_ptr
			32e: R_RISCV_RELAX	*ABS*

00000332 <.LVL82>:
 332:	0004a783          	lw	a5,0(s1) # 0 <llc_le_con_cmp_evt_send>
			332: R_RISCV_LO12_I	ble_memset_ptr
			332: R_RISCV_RELAX	*ABS*
 336:	4619                	li	a2,6
 338:	4581                	li	a1,0
 33a:	01240513          	addi	a0,s0,18
 33e:	9782                	jalr	a5

00000340 <.LVL83>:
 340:	0004a783          	lw	a5,0(s1)
			340: R_RISCV_LO12_I	ble_memset_ptr
			340: R_RISCV_RELAX	*ABS*
 344:	4619                	li	a2,6
 346:	4581                	li	a1,0
 348:	00c40513          	addi	a0,s0,12
 34c:	b5a1                	j	194 <.L59>
			34c: R_RISCV_RVC_JUMP	.L59

Disassembly of section .text.llc_le_ch_sel_algo_evt_send:

00000000 <llc_le_ch_sel_algo_evt_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0
   6:	454d                	li	a0,19

00000008 <.LVL85>:
   8:	c422                	sw	s0,8(sp)
   a:	c606                	sw	ra,12(sp)
   c:	842e                	mv	s0,a1
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	llm_util_check_evt_mask
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL85+0x6>

00000016 <.LVL86>:
  16:	c915                	beqz	a0,4a <.L60>
			16: R_RISCV_RVC_BRANCH	.L60

00000018 <.LBB180>:
  18:	6505                	lui	a0,0x1
  1a:	85a2                	mv	a1,s0
  1c:	4699                	li	a3,6
  1e:	4601                	li	a2,0
  20:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_ke_msg_alloc
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LBB180+0xc>

0000002c <.LVL88>:
  2c:	4751                	li	a4,20
  2e:	00e50023          	sb	a4,0(a0)
  32:	00950223          	sb	s1,4(a0)

00000036 <.LBB184>:
  36:	00851123          	sh	s0,2(a0)

0000003a <.LBE184>:
  3a:	4422                	lw	s0,8(sp)

0000003c <.LVL90>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4492                	lw	s1,4(sp)

00000040 <.LVL91>:
  40:	0141                	addi	sp,sp,16

00000042 <.LBB185>:
  42:	00000317          	auipc	t1,0x0
			42: R_RISCV_CALL	hci_send_2_host
			42: R_RISCV_RELAX	*ABS*
  46:	00030067          	jr	t1 # 42 <.LBB185>

0000004a <.L60>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)
  4e:	4492                	lw	s1,4(sp)
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

Disassembly of section .text.llc_start:

00000000 <llc_start>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ca56                	sw	s5,20(sp)
   a:	c85a                	sw	s6,16(sp)
   c:	c65e                	sw	s7,12(sp)
   e:	c462                	sw	s8,8(sp)
  10:	d606                	sw	ra,44(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	cc52                	sw	s4,24(sp)
  16:	c266                	sw	s9,4(sp)
  18:	c06a                	sw	s10,0(sp)
  1a:	0745da03          	lhu	s4,116(a1) # 28008074 <.LASF808+0x28003e39>
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00048413          	mv	s0,s1
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	002a1c13          	slli	s8,s4,0x2
  2a:	9462                	add	s0,s0,s8
  2c:	008a1913          	slli	s2,s4,0x8
  30:	401c                	lw	a5,0(s0)
  32:	00196913          	ori	s2,s2,1
  36:	0942                	slli	s2,s2,0x10
  38:	8aaa                	mv	s5,a0
  3a:	8b2e                	mv	s6,a1
  3c:	02858b93          	addi	s7,a1,40

00000040 <.LVL94>:
  40:	01095913          	srli	s2,s2,0x10

00000044 <.LVL95>:
  44:	00048493          	mv	s1,s1
			44: R_RISCV_LO12_I	llc_env
			44: R_RISCV_RELAX	*ABS*
  48:	eb89                	bnez	a5,5a <.L64>
			48: R_RISCV_RVC_BRANCH	.L64
  4a:	4581                	li	a1,0

0000004c <.LVL96>:
  4c:	0a800513          	li	a0,168

00000050 <.LVL97>:
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ble_ke_malloc
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL97>

00000058 <.LVL98>:
  58:	c008                	sw	a0,0(s0)

0000005a <.L64>:
  5a:	018487b3          	add	a5,s1,s8
  5e:	4380                	lw	s0,0(a5)

00000060 <.LVL99>:
  60:	00000d37          	lui	s10,0x0
			60: R_RISCV_HI20	ble_memset_ptr
			60: R_RISCV_RELAX	*ABS*
  64:	000d2783          	lw	a5,0(s10) # 0 <llc_start>
			64: R_RISCV_LO12_I	ble_memset_ptr
			64: R_RISCV_RELAX	*ABS*
  68:	4c85                	li	s9,1
  6a:	4619                	li	a2,6
  6c:	4581                	li	a1,0
  6e:	0b940323          	sb	s9,166(s0)
  72:	03c40513          	addi	a0,s0,60
  76:	9782                	jalr	a5

00000078 <.LVL100>:
  78:	05e40513          	addi	a0,s0,94
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	llm_util_get_channel_map
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL100+0x4>

00000084 <.LVL101>:
  84:	06340513          	addi	a0,s0,99
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	llm_util_get_channel_map
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL101+0x4>

00000090 <.LVL102>:
  90:	07bb4703          	lbu	a4,123(s6)
  94:	000009b7          	lui	s3,0x0
			94: R_RISCV_HI20	llm_le_env
			94: R_RISCV_RELAX	*ABS*
  98:	478d                	li	a5,3
  9a:	00098993          	mv	s3,s3
			9a: R_RISCV_LO12_I	llm_le_env
			9a: R_RISCV_RELAX	*ABS*
  9e:	02f71d63          	bne	a4,a5,d8 <.L65>
			9e: R_RISCV_BRANCH	.L65
  a2:	000d2783          	lw	a5,0(s10)
			a2: R_RISCV_LO12_I	ble_memset_ptr
			a2: R_RISCV_RELAX	*ABS*
  a6:	02800613          	li	a2,40
  aa:	4581                	li	a1,0
  ac:	01440513          	addi	a0,s0,20
  b0:	9782                	jalr	a5

000000b2 <.LBB186>:
  b2:	0319c783          	lbu	a5,49(s3) # 31 <llc_start+0x31>
  b6:	02c9d603          	lhu	a2,44(s3)
  ba:	85ca                	mv	a1,s2
  bc:	02f40d23          	sb	a5,58(s0)

000000c0 <.LBB188>:
  c0:	10500513          	li	a0,261
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	ble_ke_timer_set
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LBB188+0x4>

000000cc <.LVL104>:
  cc:	05eb5783          	lhu	a5,94(s6)
  d0:	12fcf263          	bgeu	s9,a5,1f4 <.L66>
			d0: R_RISCV_BRANCH	.L66
  d4:	03940ca3          	sb	s9,57(s0)

000000d8 <.L65>:
  d8:	01642823          	sw	s6,16(s0)
  dc:	004ad603          	lhu	a2,4(s5)
  e0:	85ca                	mv	a1,s2
  e2:	10100513          	li	a0,257
  e6:	04c41a23          	sh	a2,84(s0)
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	ble_ke_timer_set
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.L65+0x12>

000000f2 <.LVL105>:
  f2:	47a1                	li	a5,8
  f4:	0af400a3          	sb	a5,161(s0)
  f8:	06940513          	addi	a0,s0,105
  fc:	04041e23          	sh	zero,92(s0)
 100:	0a040123          	sb	zero,162(s0)
 104:	00000097          	auipc	ra,0x0
			104: R_RISCV_CALL	llm_util_get_supp_features
			104: R_RISCV_RELAX	*ABS*
 108:	000080e7          	jalr	ra # 104 <.LVL105+0x12>

0000010c <.LBB190>:
 10c:	4581                	li	a1,0
 10e:	854a                	mv	a0,s2

00000110 <.LBB191>:
 110:	00042023          	sw	zero,0(s0)

00000114 <.LVL107>:
 114:	00042223          	sw	zero,4(s0)

00000118 <.LVL108>:
 118:	00042423          	sw	zero,8(s0)

0000011c <.LVL109>:
 11c:	00042623          	sw	zero,12(s0)

00000120 <.LBE191>:
 120:	00000097          	auipc	ra,0x0
			120: R_RISCV_CALL	ble_ke_state_set
			120: R_RISCV_RELAX	*ABS*
 124:	000080e7          	jalr	ra # 120 <.LBE191>

00000128 <.LVL111>:
 128:	94e2                	add	s1,s1,s8
 12a:	409c                	lw	a5,0(s1)
 12c:	6705                	lui	a4,0x1
 12e:	bb870713          	addi	a4,a4,-1096 # bb8 <.LASF313+0x4>
 132:	04e79c23          	sh	a4,88(a5)
 136:	855e                	mv	a0,s7
 138:	0a0781a3          	sb	zero,163(a5)
 13c:	0a078223          	sb	zero,164(a5)
 140:	00000097          	auipc	ra,0x0
			140: R_RISCV_CALL	llc_util_set_auth_payl_to_margin
			140: R_RISCV_RELAX	*ABS*
 144:	000080e7          	jalr	ra # 140 <.LVL111+0x18>

00000148 <.LVL112>:
 148:	0209d783          	lhu	a5,32(s3)
 14c:	04040923          	sb	zero,82(s0)
 150:	8656                	mv	a2,s5
 152:	04f41123          	sh	a5,66(s0)
 156:	0229d783          	lhu	a5,34(s3)
 15a:	85d2                	mv	a1,s4
 15c:	4501                	li	a0,0
 15e:	04f41523          	sh	a5,74(s0)
 162:	001b07b7          	lui	a5,0x1b0
 166:	0fb78793          	addi	a5,a5,251 # 1b00fb <.LASF808+0x1abec0>
 16a:	c07c                	sw	a5,68(s0)
 16c:	47ed                	li	a5,27
 16e:	04f41423          	sh	a5,72(s0)
 172:	014817b7          	lui	a5,0x1481
 176:	84878793          	addi	a5,a5,-1976 # 1480848 <.LASF808+0x147c60d>
 17a:	c47c                	sw	a5,76(s0)
 17c:	14800793          	li	a5,328
 180:	04f41823          	sh	a5,80(s0)
 184:	05344783          	lbu	a5,83(s0)
 188:	9bf9                	andi	a5,a5,-2
 18a:	0027e793          	ori	a5,a5,2
 18e:	04f409a3          	sb	a5,83(s0)

00000192 <.LBB192>:
 192:	409c                	lw	a5,0(s1)

00000194 <.LVL114>:
 194:	0007a023          	sw	zero,0(a5)

00000198 <.LBB194>:
 198:	409c                	lw	a5,0(s1)

0000019a <.LVL116>:
 19a:	0007a223          	sw	zero,4(a5)

0000019e <.LBB196>:
 19e:	409c                	lw	a5,0(s1)

000001a0 <.LVL118>:
 1a0:	0007a423          	sw	zero,8(a5)

000001a4 <.LBB198>:
 1a4:	0007a623          	sw	zero,12(a5)

000001a8 <.LBE198>:
 1a8:	0a0782a3          	sb	zero,165(a5)
 1ac:	00000097          	auipc	ra,0x0
			1ac: R_RISCV_CALL	llc_le_con_cmp_evt_send
			1ac: R_RISCV_RELAX	*ABS*
 1b0:	000080e7          	jalr	ra # 1ac <.LBE198+0x4>

000001b4 <.LBB200>:
 1b4:	05c00793          	li	a5,92
 1b8:	02fa07b3          	mul	a5,s4,a5
 1bc:	28008737          	lui	a4,0x28008
 1c0:	09e70713          	addi	a4,a4,158 # 2800809e <.LASF808+0x28003e63>

000001c4 <.LBE200>:
 1c4:	5422                	lw	s0,40(sp)

000001c6 <.LVL122>:
 1c6:	50b2                	lw	ra,44(sp)
 1c8:	5492                	lw	s1,36(sp)
 1ca:	5902                	lw	s2,32(sp)

000001cc <.LVL123>:
 1cc:	49f2                	lw	s3,28(sp)
 1ce:	4b42                	lw	s6,16(sp)

000001d0 <.LVL124>:
 1d0:	4bb2                	lw	s7,12(sp)

000001d2 <.LBB203>:
 1d2:	97ba                	add	a5,a5,a4
 1d4:	0007d503          	lhu	a0,0(a5)

000001d8 <.LBE203>:
 1d8:	4c22                	lw	s8,8(sp)
 1da:	4c92                	lw	s9,4(sp)
 1dc:	4d02                	lw	s10,0(sp)
 1de:	8656                	mv	a2,s5
 1e0:	85d2                	mv	a1,s4
 1e2:	4ad2                	lw	s5,20(sp)

000001e4 <.LVL127>:
 1e4:	4a62                	lw	s4,24(sp)

000001e6 <.LVL128>:
 1e6:	8139                	srli	a0,a0,0xe

000001e8 <.LVL129>:
 1e8:	8905                	andi	a0,a0,1
 1ea:	6145                	addi	sp,sp,48
 1ec:	00000317          	auipc	t1,0x0
			1ec: R_RISCV_CALL	llc_le_ch_sel_algo_evt_send
			1ec: R_RISCV_RELAX	*ABS*
 1f0:	00030067          	jr	t1 # 1ec <.LVL129+0x4>

000001f4 <.L66>:
 1f4:	02040ca3          	sb	zero,57(s0)
 1f8:	b5c5                	j	d8 <.L65>
			1f8: R_RISCV_RVC_JUMP	.L65

Disassembly of section .text.llc_con_update_complete_send:

00000000 <llc_con_update_complete_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	892a                	mv	s2,a0
   6:	6505                	lui	a0,0x1

00000008 <.LVL132>:
   8:	c226                	sw	s1,4(sp)
   a:	46a9                	li	a3,10
   c:	84b2                	mv	s1,a2
   e:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
  12:	4601                	li	a2,0

00000014 <.LVL133>:
  14:	c422                	sw	s0,8(sp)
  16:	c606                	sw	ra,12(sp)
  18:	842e                	mv	s0,a1
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_msg_alloc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL133+0x6>

00000022 <.LVL134>:
  22:	478d                	li	a5,3
  24:	00f50023          	sb	a5,0(a0)
  28:	00851123          	sh	s0,2(a0)
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	012500a3          	sb	s2,1(a0)
  34:	00078793          	mv	a5,a5
			34: R_RISCV_LO12_I	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	040a                	slli	s0,s0,0x2
  3a:	c895                	beqz	s1,6e <.L69>
			3a: R_RISCV_RVC_BRANCH	.L69
  3c:	0504d703          	lhu	a4,80(s1) # 50 <.LVL134+0x2e>
  40:	97a2                	add	a5,a5,s0
  42:	8305                	srli	a4,a4,0x1
  44:	00e51223          	sh	a4,4(a0)
  48:	0364d703          	lhu	a4,54(s1)
  4c:	177d                	addi	a4,a4,-1
  4e:	00e51323          	sh	a4,6(a0)
  52:	439c                	lw	a5,0(a5)
  54:	0547d783          	lhu	a5,84(a5) # 54 <.LVL134+0x32>

00000058 <.L73>:
  58:	00f51423          	sh	a5,8(a0)

0000005c <.L70>:
  5c:	4422                	lw	s0,8(sp)
  5e:	40b2                	lw	ra,12(sp)
  60:	4492                	lw	s1,4(sp)

00000062 <.LVL139>:
  62:	4902                	lw	s2,0(sp)
  64:	0141                	addi	sp,sp,16
  66:	00000317          	auipc	t1,0x0
			66: R_RISCV_CALL	hci_send_2_host
			66: R_RISCV_RELAX	*ABS*
  6a:	00030067          	jr	t1 # 66 <.LVL139+0x4>

0000006e <.L69>:
  6e:	97a2                	add	a5,a5,s0
  70:	439c                	lw	a5,0(a5)
  72:	439c                	lw	a5,0(a5)

00000074 <.LBE205>:
  74:	cf81                	beqz	a5,8c <.L71>
			74: R_RISCV_RVC_BRANCH	.L71
  76:	00e7d703          	lhu	a4,14(a5)
  7a:	00e51223          	sh	a4,4(a0)
  7e:	0067d703          	lhu	a4,6(a5)
  82:	00e51323          	sh	a4,6(a0)
  86:	0087d783          	lhu	a5,8(a5)

0000008a <.LVL142>:
  8a:	b7f9                	j	58 <.L73>
			8a: R_RISCV_RVC_JUMP	.L73

0000008c <.L71>:
  8c:	00051223          	sh	zero,4(a0)
  90:	00051323          	sh	zero,6(a0)
  94:	00051423          	sh	zero,8(a0)
  98:	b7d1                	j	5c <.L70>
			98: R_RISCV_RVC_JUMP	.L70

Disassembly of section .text.llc_ltk_req_send:

00000000 <llc_ltk_req_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	84ae                	mv	s1,a1
   8:	892a                	mv	s2,a0
   a:	85aa                	mv	a1,a0

0000000c <.LVL145>:
   c:	6505                	lui	a0,0x1

0000000e <.LVL146>:
   e:	46b9                	li	a3,14
  10:	4601                	li	a2,0
  12:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
  16:	c606                	sw	ra,12(sp)
  18:	c422                	sw	s0,8(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_msg_alloc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL146+0xc>

00000022 <.LVL147>:
  22:	4795                	li	a5,5
  24:	01251123          	sh	s2,2(a0)
  28:	00f50023          	sb	a5,0(a0)

0000002c <.LBB208>:
  2c:	00a4c783          	lbu	a5,10(s1)
  30:	0094c703          	lbu	a4,9(s1)

00000034 <.LBE208>:
  34:	842a                	mv	s0,a0

00000036 <.LBB211>:
  36:	07a2                	slli	a5,a5,0x8
  38:	8fd9                	or	a5,a5,a4

0000003a <.LBE211>:
  3a:	00f51623          	sh	a5,12(a0)
  3e:	000007b7          	lui	a5,0x0
			3e: R_RISCV_HI20	ble_memcpy_ptr
			3e: R_RISCV_RELAX	*ABS*
  42:	0007a783          	lw	a5,0(a5) # 0 <llc_ltk_req_send>
			42: R_RISCV_LO12_I	ble_memcpy_ptr
			42: R_RISCV_RELAX	*ABS*
  46:	00148593          	addi	a1,s1,1
  4a:	4621                	li	a2,8
  4c:	0511                	addi	a0,a0,4
  4e:	9782                	jalr	a5

00000050 <.LVL149>:
  50:	8522                	mv	a0,s0
  52:	4422                	lw	s0,8(sp)

00000054 <.LVL150>:
  54:	40b2                	lw	ra,12(sp)
  56:	4492                	lw	s1,4(sp)

00000058 <.LVL151>:
  58:	4902                	lw	s2,0(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	00000317          	auipc	t1,0x0
			5c: R_RISCV_CALL	hci_send_2_host
			5c: R_RISCV_RELAX	*ABS*
  60:	00030067          	jr	t1 # 5c <.LVL151+0x4>

Disassembly of section .text.llc_feats_rd_event_send:

00000000 <llc_feats_rd_event_send>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	89aa                	mv	s3,a0
   6:	450d                	li	a0,3

00000008 <.LVL154>:
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	84ae                	mv	s1,a1
  12:	8932                	mv	s2,a2
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	llm_util_check_evt_mask
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL154+0xc>

0000001c <.LVL155>:
  1c:	c531                	beqz	a0,68 <.L76>
			1c: R_RISCV_RVC_BRANCH	.L76

0000001e <.LBB212>:
  1e:	6505                	lui	a0,0x1
  20:	85a6                	mv	a1,s1
  22:	46b1                	li	a3,12
  24:	4601                	li	a2,0
  26:	80450513          	addi	a0,a0,-2044 # 804 <.LASF240+0x2>
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_msg_alloc
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LBB212+0xc>

00000032 <.LVL156>:
  32:	4791                	li	a5,4
  34:	00f50023          	sb	a5,0(a0)
  38:	013500a3          	sb	s3,1(a0)
  3c:	00951123          	sh	s1,2(a0)
  40:	000007b7          	lui	a5,0x0
			40: R_RISCV_HI20	ble_memcpy_ptr
			40: R_RISCV_RELAX	*ABS*
  44:	0007a783          	lw	a5,0(a5) # 0 <llc_feats_rd_event_send>
			44: R_RISCV_LO12_I	ble_memcpy_ptr
			44: R_RISCV_RELAX	*ABS*
  48:	842a                	mv	s0,a0

0000004a <.LVL157>:
  4a:	85ca                	mv	a1,s2
  4c:	4621                	li	a2,8
  4e:	0511                	addi	a0,a0,4
  50:	9782                	jalr	a5

00000052 <.LVL158>:
  52:	8522                	mv	a0,s0

00000054 <.LBE212>:
  54:	4462                	lw	s0,24(sp)

00000056 <.LVL159>:
  56:	40f2                	lw	ra,28(sp)
  58:	44d2                	lw	s1,20(sp)
  5a:	4942                	lw	s2,16(sp)

0000005c <.LVL160>:
  5c:	49b2                	lw	s3,12(sp)
  5e:	6105                	addi	sp,sp,32

00000060 <.LBB213>:
  60:	00000317          	auipc	t1,0x0
			60: R_RISCV_CALL	hci_send_2_host
			60: R_RISCV_RELAX	*ABS*
  64:	00030067          	jr	t1 # 60 <.LBB213>

00000068 <.L76>:
  68:	40f2                	lw	ra,28(sp)
  6a:	4462                	lw	s0,24(sp)
  6c:	44d2                	lw	s1,20(sp)
  6e:	4942                	lw	s2,16(sp)

00000070 <.LVL162>:
  70:	49b2                	lw	s3,12(sp)
  72:	6105                	addi	sp,sp,32
  74:	8082                	ret

Disassembly of section .text.llc_version_rd_event_send:

00000000 <llc_version_rd_event_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0
   6:	6505                	lui	a0,0x1

00000008 <.LVL164>:
   8:	46a9                	li	a3,10
   a:	4631                	li	a2,12
   c:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  10:	c422                	sw	s0,8(sp)
  12:	c606                	sw	ra,12(sp)
  14:	842e                	mv	s0,a1
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_msg_alloc
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL164+0xe>

0000001e <.LVL165>:
  1e:	000005b7          	lui	a1,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00851123          	sh	s0,2(a0)
  26:	00058593          	mv	a1,a1
			26: R_RISCV_LO12_I	llc_env
			26: R_RISCV_RELAX	*ABS*
  2a:	040a                	slli	s0,s0,0x2
  2c:	00950023          	sb	s1,0(a0)
  30:	95a2                	add	a1,a1,s0
  32:	4198                	lw	a4,0(a1)
  34:	03e75703          	lhu	a4,62(a4)
  38:	00e51323          	sh	a4,6(a0)
  3c:	4198                	lw	a4,0(a1)
  3e:	04075683          	lhu	a3,64(a4)
  42:	00d51423          	sh	a3,8(a0)
  46:	03c74703          	lbu	a4,60(a4)
  4a:	00e50223          	sb	a4,4(a0)
  4e:	4422                	lw	s0,8(sp)
  50:	40b2                	lw	ra,12(sp)
  52:	4492                	lw	s1,4(sp)
  54:	0141                	addi	sp,sp,16
  56:	00000317          	auipc	t1,0x0
			56: R_RISCV_CALL	hci_send_2_host
			56: R_RISCV_RELAX	*ABS*
  5a:	00030067          	jr	t1 # 56 <.LVL165+0x38>

Disassembly of section .text.llc_common_cmd_complete_send:

00000000 <llc_common_cmd_complete_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	8432                	mv	s0,a2
   6:	862a                	mv	a2,a0

00000008 <.LVL170>:
   8:	6505                	lui	a0,0x1

0000000a <.LVL171>:
   a:	c226                	sw	s1,4(sp)
   c:	4691                	li	a3,4
   e:	84ae                	mv	s1,a1
  10:	80150513          	addi	a0,a0,-2047 # 801 <.LASF607+0x4>
  14:	85a2                	mv	a1,s0

00000016 <.LVL172>:
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL172+0x2>

00000020 <.LVL173>:
  20:	00950023          	sb	s1,0(a0)
  24:	00851123          	sh	s0,2(a0)
  28:	4422                	lw	s0,8(sp)
  2a:	40b2                	lw	ra,12(sp)
  2c:	4492                	lw	s1,4(sp)
  2e:	0141                	addi	sp,sp,16
  30:	00000317          	auipc	t1,0x0
			30: R_RISCV_CALL	hci_send_2_host
			30: R_RISCV_RELAX	*ABS*
  34:	00030067          	jr	t1 # 30 <.LVL173+0x10>

Disassembly of section .text.llc_common_cmd_status_send:

00000000 <llc_common_cmd_status_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842e                	mv	s0,a1
   6:	85b2                	mv	a1,a2

00000008 <.LVL177>:
   8:	862a                	mv	a2,a0

0000000a <.LVL178>:
   a:	6505                	lui	a0,0x1

0000000c <.LVL179>:
   c:	4685                	li	a3,1
   e:	80250513          	addi	a0,a0,-2046 # 802 <.LASF240>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_msg_alloc
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL179+0x8>

0000001c <.LVL180>:
  1c:	00850023          	sb	s0,0(a0)
  20:	4422                	lw	s0,8(sp)
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
			26: R_RISCV_CALL	hci_send_2_host
			26: R_RISCV_RELAX	*ABS*
  2a:	00030067          	jr	t1 # 26 <.LVL180+0xa>

Disassembly of section .text.llc_common_flush_occurred_send:

00000000 <llc_common_flush_occurred_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	85aa                	mv	a1,a0
   6:	842a                	mv	s0,a0
   8:	6505                	lui	a0,0x1

0000000a <.LVL183>:
   a:	4689                	li	a3,2
   c:	4645                	li	a2,17
   e:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_msg_alloc
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL183+0xa>

0000001c <.LVL184>:
  1c:	00851023          	sh	s0,0(a0)
  20:	4422                	lw	s0,8(sp)
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
			26: R_RISCV_CALL	hci_send_2_host
			26: R_RISCV_RELAX	*ABS*
  2a:	00030067          	jr	t1 # 26 <.LVL184+0xa>

Disassembly of section .text.llc_common_enc_key_ref_comp_evt_send:

00000000 <llc_common_enc_key_ref_comp_evt_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842a                	mv	s0,a0
   8:	84ae                	mv	s1,a1
   a:	85aa                	mv	a1,a0

0000000c <.LVL187>:
   c:	6505                	lui	a0,0x1

0000000e <.LVL188>:
   e:	4691                	li	a3,4
  10:	03000613          	li	a2,48
  14:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  18:	c606                	sw	ra,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_msg_alloc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL188+0xc>

00000022 <.LVL189>:
  22:	00851123          	sh	s0,2(a0)
  26:	00950023          	sb	s1,0(a0)
  2a:	4422                	lw	s0,8(sp)
  2c:	40b2                	lw	ra,12(sp)
  2e:	4492                	lw	s1,4(sp)
  30:	0141                	addi	sp,sp,16
  32:	00000317          	auipc	t1,0x0
			32: R_RISCV_CALL	hci_send_2_host
			32: R_RISCV_RELAX	*ABS*
  36:	00030067          	jr	t1 # 32 <.LVL189+0x10>

Disassembly of section .text.llc_common_enc_change_evt_send:

00000000 <llc_common_enc_change_evt_send>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00851413          	slli	s0,a0,0x8
   8:	00146413          	ori	s0,s0,1
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c452                	sw	s4,8(sp)
  12:	0442                	slli	s0,s0,0x10
  14:	ce06                	sw	ra,28(sp)
  16:	ca26                	sw	s1,20(sp)
  18:	892a                	mv	s2,a0
  1a:	89ae                	mv	s3,a1
  1c:	8a32                	mv	s4,a2
  1e:	8041                	srli	s0,s0,0x10

00000020 <.LVL192>:
  20:	c9b5                	beqz	a1,94 <.L90>
			20: R_RISCV_RVC_BRANCH	.L90
  22:	000007b7          	lui	a5,0x0
			22: R_RISCV_HI20	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00251493          	slli	s1,a0,0x2
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	94be                	add	s1,s1,a5
  30:	409c                	lw	a5,0(s1)
  32:	85a2                	mv	a1,s0

00000034 <.LVL193>:
  34:	10300513          	li	a0,259

00000038 <.LVL194>:
  38:	0587d603          	lhu	a2,88(a5) # 58 <.LVL196+0xe>

0000003c <.LVL195>:
  3c:	05a7d783          	lhu	a5,90(a5)
  40:	8e1d                	sub	a2,a2,a5
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ble_ke_timer_set
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL195+0x6>

0000004a <.LVL196>:
  4a:	409c                	lw	a5,0(s1)
  4c:	85a2                	mv	a1,s0
  4e:	10400513          	li	a0,260
  52:	0587d603          	lhu	a2,88(a5)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ble_ke_timer_set
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL196+0xc>

0000005e <.L91>:
  5e:	6505                	lui	a0,0x1
  60:	85ca                	mv	a1,s2
  62:	4699                	li	a3,6
  64:	4621                	li	a2,8
  66:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	ble_ke_msg_alloc
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.L91+0xc>

00000072 <.LVL198>:
  72:	01251123          	sh	s2,2(a0)
  76:	01350223          	sb	s3,4(a0)
  7a:	01450023          	sb	s4,0(a0)
  7e:	4462                	lw	s0,24(sp)

00000080 <.LVL199>:
  80:	40f2                	lw	ra,28(sp)
  82:	44d2                	lw	s1,20(sp)
  84:	4942                	lw	s2,16(sp)

00000086 <.LVL200>:
  86:	49b2                	lw	s3,12(sp)
  88:	4a22                	lw	s4,8(sp)
  8a:	6105                	addi	sp,sp,32
  8c:	00000317          	auipc	t1,0x0
			8c: R_RISCV_CALL	hci_send_2_host
			8c: R_RISCV_RELAX	*ABS*
  90:	00030067          	jr	t1 # 8c <.LVL200+0x6>

00000094 <.L90>:
  94:	85a2                	mv	a1,s0

00000096 <.LVL202>:
  96:	10300513          	li	a0,259

0000009a <.LVL203>:
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	ble_ke_timer_clear
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL203>

000000a2 <.LVL204>:
  a2:	85a2                	mv	a1,s0
  a4:	10400513          	li	a0,260
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	ble_ke_timer_clear
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL204+0x6>

000000b0 <.LVL205>:
  b0:	b77d                	j	5e <.L91>
			b0: R_RISCV_RVC_JUMP	.L91

Disassembly of section .text.llc_common_nb_of_pkt_comp_evt_send:

00000000 <llc_common_nb_of_pkt_comp_evt_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842a                	mv	s0,a0
   8:	84ae                	mv	s1,a1
   a:	85aa                	mv	a1,a0

0000000c <.LVL207>:
   c:	6505                	lui	a0,0x1

0000000e <.LVL208>:
   e:	4699                	li	a3,6
  10:	464d                	li	a2,19
  12:	80350513          	addi	a0,a0,-2045 # 803 <.LASF240+0x1>
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL208+0xa>

00000020 <.LVL209>:
  20:	4705                	li	a4,1
  22:	00851123          	sh	s0,2(a0)
  26:	00951223          	sh	s1,4(a0)
  2a:	00e50023          	sb	a4,0(a0)
  2e:	4422                	lw	s0,8(sp)
  30:	40b2                	lw	ra,12(sp)
  32:	4492                	lw	s1,4(sp)
  34:	0141                	addi	sp,sp,16
  36:	00000317          	auipc	t1,0x0
			36: R_RISCV_CALL	hci_send_2_host
			36: R_RISCV_RELAX	*ABS*
  3a:	00030067          	jr	t1 # 36 <.LVL209+0x16>

Disassembly of section .text.llc_con_update_ind:

00000000 <llc_con_update_ind>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	llc_env
			2: R_RISCV_RELAX	*ABS*
   6:	c84a                	sw	s2,16(sp)
   8:	00078713          	mv	a4,a5
			8: R_RISCV_LO12_I	llc_env
			8: R_RISCV_RELAX	*ABS*
   c:	00251913          	slli	s2,a0,0x2
  10:	cc22                	sw	s0,24(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	974a                	add	a4,a4,s2
  1a:	4314                	lw	a3,0(a4)
  1c:	84ae                	mv	s1,a1
  1e:	00078413          	mv	s0,a5
			1e: R_RISCV_LO12_I	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	05c6d703          	lhu	a4,92(a3)
  26:	0c077613          	andi	a2,a4,192
  2a:	c605                	beqz	a2,52 <.L97>
			2a: R_RISCV_RVC_BRANCH	.L97
  2c:	f3f77713          	andi	a4,a4,-193
  30:	89aa                	mv	s3,a0
  32:	04e69e23          	sh	a4,92(a3)
  36:	4509                	li	a0,2

00000038 <.LVL213>:
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	llm_util_check_evt_mask
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL213>

00000040 <.LVL214>:
  40:	c909                	beqz	a0,52 <.L97>
			40: R_RISCV_RVC_BRANCH	.L97
  42:	02848613          	addi	a2,s1,40
  46:	85ce                	mv	a1,s3
  48:	4501                	li	a0,0
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	llc_con_update_complete_send
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL214+0xa>

00000052 <.L97>:
  52:	05e4d683          	lhu	a3,94(s1)
  56:	012407b3          	add	a5,s0,s2
  5a:	4705                	li	a4,1
  5c:	439c                	lw	a5,0(a5)
  5e:	00d77b63          	bgeu	a4,a3,74 <.L99>
			5e: R_RISCV_BRANCH	.L99
  62:	02e78ca3          	sb	a4,57(a5) # 39 <.LVL213+0x1>

00000066 <.L95>:
  66:	40f2                	lw	ra,28(sp)
  68:	4462                	lw	s0,24(sp)
  6a:	44d2                	lw	s1,20(sp)

0000006c <.LVL216>:
  6c:	4942                	lw	s2,16(sp)
  6e:	49b2                	lw	s3,12(sp)
  70:	6105                	addi	sp,sp,32
  72:	8082                	ret

00000074 <.L99>:
  74:	02078ca3          	sb	zero,57(a5)
  78:	b7fd                	j	66 <.L95>
			78: R_RISCV_RVC_JUMP	.L95

Disassembly of section .text.llc_lsto_con_update:

00000000 <llc_lsto_con_update>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	c422                	sw	s0,8(sp)
  12:	97ba                	add	a5,a5,a4
  14:	4380                	lw	s0,0(a5)

00000016 <.LBB214>:
  16:	05645783          	lhu	a5,86(s0)

0000001a <.LBB217>:
  1a:	05445603          	lhu	a2,84(s0)
  1e:	00f67363          	bgeu	a2,a5,24 <.L106>
			1e: R_RISCV_BRANCH	.L106
  22:	863e                	mv	a2,a5

00000024 <.L106>:
  24:	00851593          	slli	a1,a0,0x8
  28:	0606                	slli	a2,a2,0x1
  2a:	0642                	slli	a2,a2,0x10
  2c:	0015e593          	ori	a1,a1,1
  30:	8241                	srli	a2,a2,0x10

00000032 <.LVL220>:
  32:	05c2                	slli	a1,a1,0x10
  34:	04c41a23          	sh	a2,84(s0)
  38:	81c1                	srli	a1,a1,0x10
  3a:	10100513          	li	a0,257

0000003e <.LVL221>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ble_ke_timer_set
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL221>

00000046 <.LVL222>:
  46:	05c45783          	lhu	a5,92(s0)
  4a:	0207e793          	ori	a5,a5,32
  4e:	04f41e23          	sh	a5,92(s0)
  52:	40b2                	lw	ra,12(sp)
  54:	4422                	lw	s0,8(sp)

00000056 <.LVL223>:
  56:	0141                	addi	sp,sp,16
  58:	8082                	ret

Disassembly of section .text.llc_map_update_ind:

00000000 <llc_map_update_ind>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	c422                	sw	s0,8(sp)
  12:	c04a                	sw	s2,0(sp)
  14:	c226                	sw	s1,4(sp)
  16:	97ba                	add	a5,a5,a4
  18:	4384                	lw	s1,0(a5)

0000001a <.LVL225>:
  1a:	842a                	mv	s0,a0
  1c:	4595                	li	a1,5
  1e:	06348913          	addi	s2,s1,99
  22:	854a                	mv	a0,s2

00000024 <.LVL226>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	llm_util_check_map_validity
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL226>

0000002c <.LBB218>:
  2c:	0644c683          	lbu	a3,100(s1)
  30:	0634c783          	lbu	a5,99(s1)

00000034 <.LBB221>:
  34:	28008737          	lui	a4,0x28008

00000038 <.LBB225>:
  38:	06a2                	slli	a3,a3,0x8
  3a:	8edd                	or	a3,a3,a5

0000003c <.LBB226>:
  3c:	05c00793          	li	a5,92
  40:	02f407b3          	mul	a5,s0,a5
  44:	0aa70613          	addi	a2,a4,170 # 280080aa <.LASF808+0x28003e6f>

00000048 <.LBE226>:
  48:	0522                	slli	a0,a0,0x8

0000004a <.LVL229>:
  4a:	85ca                	mv	a1,s2

0000004c <.LBB227>:
  4c:	963e                	add	a2,a2,a5
  4e:	00d61023          	sh	a3,0(a2)

00000052 <.LBB228>:
  52:	0664c683          	lbu	a3,102(s1)
  56:	0654c603          	lbu	a2,101(s1)
  5a:	06a2                	slli	a3,a3,0x8
  5c:	8ed1                	or	a3,a3,a2

0000005e <.LBB230>:
  5e:	0ac70613          	addi	a2,a4,172
  62:	963e                	add	a2,a2,a5
  64:	00d61023          	sh	a3,0(a2)

00000068 <.LBE230>:
  68:	0674c683          	lbu	a3,103(s1)

0000006c <.LBB232>:
  6c:	0ae70713          	addi	a4,a4,174
  70:	97ba                	add	a5,a5,a4

00000072 <.LBE232>:
  72:	8d55                	or	a0,a0,a3
  74:	0542                	slli	a0,a0,0x10
  76:	8141                	srli	a0,a0,0x10

00000078 <.LBB235>:
  78:	00a79023          	sh	a0,0(a5) # 0 <llc_map_update_ind>

0000007c <.LBE235>:
  7c:	4615                	li	a2,5
  7e:	05e48513          	addi	a0,s1,94
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	memcpy
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LBE235+0x6>

0000008a <.LVL235>:
  8a:	40b2                	lw	ra,12(sp)
  8c:	4422                	lw	s0,8(sp)
  8e:	4492                	lw	s1,4(sp)

00000090 <.LVL236>:
  90:	4902                	lw	s2,0(sp)

00000092 <.LVL237>:
  92:	0141                	addi	sp,sp,16
  94:	8082                	ret

Disassembly of section .text.llc_con_update_finished:

00000000 <llc_con_update_finished>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	00851493          	slli	s1,a0,0x8
   8:	0014e493          	ori	s1,s1,1
   c:	04c2                	slli	s1,s1,0x10
   e:	80c1                	srli	s1,s1,0x10

00000010 <.LVL239>:
  10:	c84a                	sw	s2,16(sp)
  12:	892a                	mv	s2,a0
  14:	8526                	mv	a0,s1

00000016 <.LVL240>:
  16:	ce06                	sw	ra,28(sp)
  18:	cc22                	sw	s0,24(sp)
  1a:	c64e                	sw	s3,12(sp)
  1c:	c452                	sw	s4,8(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_ke_state_get
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL240+0x8>

00000026 <.LBB236>:
  26:	00f57713          	andi	a4,a0,15
  2a:	47bd                	li	a5,15
  2c:	04f70263          	beq	a4,a5,70 <.L110>
			2c: R_RISCV_BRANCH	.L110
  30:	89aa                	mv	s3,a0
  32:	854a                	mv	a0,s2

00000034 <.LVL242>:
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	lld_get_mode
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL242>

0000003c <.LVL243>:
  3c:	00000437          	lui	s0,0x0
			3c: R_RISCV_HI20	llc_env
			3c: R_RISCV_RELAX	*ABS*
  40:	478d                	li	a5,3
  42:	00040413          	mv	s0,s0
			42: R_RISCV_LO12_I	llc_env
			42: R_RISCV_RELAX	*ABS*
  46:	00291a13          	slli	s4,s2,0x2
  4a:	02f51b63          	bne	a0,a5,80 <.L112>
			4a: R_RISCV_BRANCH	.L112
  4e:	4581                	li	a1,0
  50:	854a                	mv	a0,s2
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	llc_util_clear_operation_ptr
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL243+0x16>

0000005a <.LBB238>:
  5a:	0fe9f593          	andi	a1,s3,254
  5e:	8526                	mv	a0,s1
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ble_ke_state_set
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LBB238+0x6>

00000068 <.LBE238>:
  68:	9452                	add	s0,s0,s4
  6a:	401c                	lw	a5,0(s0)
  6c:	0a0781a3          	sb	zero,163(a5)

00000070 <.L110>:
  70:	40f2                	lw	ra,28(sp)
  72:	4462                	lw	s0,24(sp)
  74:	44d2                	lw	s1,20(sp)

00000076 <.LVL247>:
  76:	4942                	lw	s2,16(sp)

00000078 <.LVL248>:
  78:	49b2                	lw	s3,12(sp)
  7a:	4a22                	lw	s4,8(sp)
  7c:	6105                	addi	sp,sp,32
  7e:	8082                	ret

00000080 <.L112>:
  80:	9452                	add	s0,s0,s4
  82:	4014                	lw	a3,0(s0)
  84:	05c6d783          	lhu	a5,92(a3)
  88:	4007f713          	andi	a4,a5,1024
  8c:	c315                	beqz	a4,b0 <.L113>
			8c: R_RISCV_RVC_BRANCH	.L113

0000008e <.LBB240>:
  8e:	0fd9f593          	andi	a1,s3,253
  92:	8526                	mv	a0,s1
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	ble_ke_state_set
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LBB240+0x6>

0000009c <.LBE240>:
  9c:	401c                	lw	a5,0(s0)
  9e:	05c7d703          	lhu	a4,92(a5)
  a2:	0a078223          	sb	zero,164(a5)
  a6:	bff77713          	andi	a4,a4,-1025
  aa:	04e79e23          	sh	a4,92(a5)
  ae:	b7c9                	j	70 <.L110>
			ae: R_RISCV_RVC_JUMP	.L110

000000b0 <.L113>:
  b0:	6705                	lui	a4,0x1
  b2:	80070713          	addi	a4,a4,-2048 # 800 <.LASF607+0x3>
  b6:	8fd9                	or	a5,a5,a4
  b8:	04f69e23          	sh	a5,92(a3)
  bc:	bf55                	j	70 <.L110>
			bc: R_RISCV_RVC_JUMP	.L110

Disassembly of section .text.llc_map_update_finished:

00000000 <llc_map_update_finished>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	00851493          	slli	s1,a0,0x8
   8:	0014e493          	ori	s1,s1,1
   c:	04c2                	slli	s1,s1,0x10
   e:	80c1                	srli	s1,s1,0x10

00000010 <.LVL254>:
  10:	c84a                	sw	s2,16(sp)
  12:	892a                	mv	s2,a0
  14:	8526                	mv	a0,s1

00000016 <.LVL255>:
  16:	ce06                	sw	ra,28(sp)
  18:	cc22                	sw	s0,24(sp)
  1a:	c64e                	sw	s3,12(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_ke_state_get
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL255+0x6>

00000024 <.LBB242>:
  24:	00f57713          	andi	a4,a0,15
  28:	47bd                	li	a5,15
  2a:	02f70b63          	beq	a4,a5,60 <.L115>
			2a: R_RISCV_BRANCH	.L115
  2e:	89aa                	mv	s3,a0
  30:	854a                	mv	a0,s2

00000032 <.LVL257>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	lld_get_mode
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL257>

0000003a <.LVL258>:
  3a:	00000437          	lui	s0,0x0
			3a: R_RISCV_HI20	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	478d                	li	a5,3
  40:	00040413          	mv	s0,s0
			40: R_RISCV_LO12_I	llc_env
			40: R_RISCV_RELAX	*ABS*
  44:	090a                	slli	s2,s2,0x2
  46:	02f51463          	bne	a0,a5,6e <.L117>
			46: R_RISCV_BRANCH	.L117

0000004a <.LBB244>:
  4a:	0fe9f593          	andi	a1,s3,254
  4e:	8526                	mv	a0,s1
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ble_ke_state_set
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LBB244+0x6>

00000058 <.LBE244>:
  58:	944a                	add	s0,s0,s2
  5a:	401c                	lw	a5,0(s0)
  5c:	0a0781a3          	sb	zero,163(a5)

00000060 <.L115>:
  60:	40f2                	lw	ra,28(sp)
  62:	4462                	lw	s0,24(sp)
  64:	44d2                	lw	s1,20(sp)

00000066 <.LVL262>:
  66:	4942                	lw	s2,16(sp)
  68:	49b2                	lw	s3,12(sp)
  6a:	6105                	addi	sp,sp,32
  6c:	8082                	ret

0000006e <.L117>:
  6e:	944a                	add	s0,s0,s2
  70:	4014                	lw	a3,0(s0)
  72:	05c6d783          	lhu	a5,92(a3)
  76:	4007f713          	andi	a4,a5,1024
  7a:	c315                	beqz	a4,9e <.L118>
			7a: R_RISCV_RVC_BRANCH	.L118

0000007c <.LBB246>:
  7c:	0fd9f593          	andi	a1,s3,253
  80:	8526                	mv	a0,s1
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	ble_ke_state_set
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LBB246+0x6>

0000008a <.LBE246>:
  8a:	401c                	lw	a5,0(s0)
  8c:	05c7d703          	lhu	a4,92(a5)
  90:	0a078223          	sb	zero,164(a5)
  94:	bff77713          	andi	a4,a4,-1025
  98:	04e79e23          	sh	a4,92(a5)
  9c:	b7d1                	j	60 <.L115>
			9c: R_RISCV_RVC_JUMP	.L115

0000009e <.L118>:
  9e:	6705                	lui	a4,0x1
  a0:	80070713          	addi	a4,a4,-2048 # 800 <.LASF607+0x3>
  a4:	8fd9                	or	a5,a5,a4
  a6:	04f69e23          	sh	a5,92(a3)
  aa:	bf5d                	j	60 <.L115>
			aa: R_RISCV_RVC_JUMP	.L115
