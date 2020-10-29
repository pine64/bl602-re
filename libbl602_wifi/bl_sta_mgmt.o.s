
libbl602_wifi/bl_sta_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.GetTxEAPOLBuffer:

00000000 <GetTxEAPOLBuffer>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB261>:
   c:	44b007b7          	lui	a5,0x44b00

00000010 <.LBE261>:
  10:	892e                	mv	s2,a1

00000012 <.LBB262>:
  12:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000016 <.LBE262>:
  16:	3e800793          	li	a5,1000
  1a:	89aa                	mv	s3,a0
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	000004b7          	lui	s1,0x0
			20: R_RISCV_HI20	.LANCHOR0
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL2>:
  28:	8432                	mv	s0,a2
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00048613          	mv	a2,s1
			2e: R_RISCV_LO12_I	.LANCHOR0
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL3>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL3>

0000003a <.LVL4>:
  3a:	ec1d                	bnez	s0,78 <.L2>
			3a: R_RISCV_RVC_BRANCH	.L2
  3c:	4531                	li	a0,12
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_malloc
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL4+0x4>

00000046 <.LVL5>:
  46:	842a                	mv	s0,a0
  48:	e911                	bnez	a0,5c <.L3>
			48: R_RISCV_RVC_BRANCH	.L3

0000004a <.L5>:
  4a:	4401                	li	s0,0

0000004c <.L1>:
  4c:	8522                	mv	a0,s0
  4e:	40f2                	lw	ra,28(sp)
  50:	4462                	lw	s0,24(sp)
  52:	44d2                	lw	s1,20(sp)
  54:	4942                	lw	s2,16(sp)

00000056 <.LVL8>:
  56:	49b2                	lw	s3,12(sp)

00000058 <.LVL9>:
  58:	6105                	addi	sp,sp,32
  5a:	8082                	ret

0000005c <.L3>:
  5c:	4631                	li	a2,12
  5e:	4581                	li	a1,0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	memset
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.L3+0x4>

00000068 <.LVL11>:
  68:	20000513          	li	a0,512
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	ke_malloc
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL11+0x4>

00000074 <.LVL12>:
  74:	c408                	sw	a0,8(s0)
  76:	d971                	beqz	a0,4a <.L5>
			76: R_RISCV_RVC_BRANCH	.L5

00000078 <.L2>:
  78:	441c                	lw	a5,8(s0)
  7a:	01342023          	sw	s3,0(s0)
  7e:	00000537          	lui	a0,0x0
			7e: R_RISCV_HI20	.LC1
			7e: R_RISCV_RELAX	*ABS*
  82:	00f92023          	sw	a5,0(s2)

00000086 <.LBB263>:
  86:	44b007b7          	lui	a5,0x44b00
  8a:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000008e <.LBE263>:
  8e:	3e800793          	li	a5,1000
  92:	00048613          	mv	a2,s1
			92: R_RISCV_LO12_I	.LANCHOR0
			92: R_RISCV_RELAX	*ABS*
  96:	02f5d5b3          	divu	a1,a1,a5
  9a:	00050513          	mv	a0,a0
			9a: R_RISCV_LO12_I	.LC1
			9a: R_RISCV_RELAX	*ABS*
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	dbg_test_print
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LBE263+0x10>

000000a6 <.LVL13>:
  a6:	b75d                	j	4c <.L1>
			a6: R_RISCV_RVC_JUMP	.L1

Disassembly of section .text.freeSupplicantData:

00000000 <freeSupplicantData>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB271>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000010 <.LBE271>:
  10:	3e800793          	li	a5,1000
  14:	84aa                	mv	s1,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL15>:
  22:	00040613          	mv	a2,s0
			22: R_RISCV_LO12_I	.LANCHOR1
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL15+0x8>

00000032 <.LVL16>:
  32:	449c                	lw	a5,8(s1)
  34:	c789                	beqz	a5,3e <.L12>
			34: R_RISCV_RVC_BRANCH	.L12
  36:	0007a023          	sw	zero,0(a5)
  3a:	0004a423          	sw	zero,8(s1) # 8 <.LBB271>

0000003e <.L12>:
  3e:	44b007b7          	lui	a5,0x44b00
  42:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000046 <.LBE272>:
  46:	3e800793          	li	a5,1000
  4a:	00040613          	mv	a2,s0
			4a: R_RISCV_LO12_I	.LANCHOR1
			4a: R_RISCV_RELAX	*ABS*
  4e:	02f5d5b3          	divu	a1,a1,a5
  52:	4422                	lw	s0,8(sp)
  54:	40b2                	lw	ra,12(sp)
  56:	4492                	lw	s1,4(sp)

00000058 <.LVL17>:
  58:	00000537          	lui	a0,0x0
			58: R_RISCV_HI20	.LC1
			58: R_RISCV_RELAX	*ABS*
  5c:	00050513          	mv	a0,a0
			5c: R_RISCV_LO12_I	.LC1
			5c: R_RISCV_RELAX	*ABS*
  60:	0141                	addi	sp,sp,16
  62:	00000317          	auipc	t1,0x0
			62: R_RISCV_CALL	dbg_test_print
			62: R_RISCV_RELAX	*ABS*
  66:	00030067          	jr	t1 # 62 <.LVL17+0xa>

Disassembly of section .text.UpdateEAPOLWcbLenAndTransmit:

00000000 <UpdateEAPOLWcbLenAndTransmit>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB282>:
   e:	44b009b7          	lui	s3,0x44b00

00000012 <.LBE282>:
  12:	8a2e                	mv	s4,a1

00000014 <.LBB283>:
  14:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE283>:
  18:	3e800493          	li	s1,1000
  1c:	842a                	mv	s0,a0
  1e:	0295d5b3          	divu	a1,a1,s1
  22:	00000937          	lui	s2,0x0
			22: R_RISCV_HI20	.LANCHOR2
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL21>:
  2a:	00090613          	mv	a2,s2
			2a: R_RISCV_LO12_I	.LANCHOR2
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL21+0x8>

0000003a <.LVL22>:
  3a:	401c                	lw	a5,0(s0)
  3c:	4414                	lw	a3,8(s0)
  3e:	004a0713          	addi	a4,s4,4
  42:	0017c503          	lbu	a0,1(a5)
  46:	4601                	li	a2,0
  48:	4581                	li	a1,0
  4a:	06b9                	addi	a3,a3,14
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	txl_frame_send_eapol_frame
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL22+0x12>

00000054 <.LVL23>:
  54:	4408                	lw	a0,8(s0)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ke_free
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL23+0x2>

0000005e <.LVL24>:
  5e:	8522                	mv	a0,s0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ke_free
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL24+0x2>

00000068 <.LBB284>:
  68:	1209a583          	lw	a1,288(s3)

0000006c <.LBE284>:
  6c:	4462                	lw	s0,24(sp)

0000006e <.LVL26>:
  6e:	40f2                	lw	ra,28(sp)
  70:	0295d5b3          	divu	a1,a1,s1
  74:	49b2                	lw	s3,12(sp)
  76:	44d2                	lw	s1,20(sp)
  78:	4a22                	lw	s4,8(sp)
  7a:	00090613          	mv	a2,s2
			7a: R_RISCV_LO12_I	.LANCHOR2
			7a: R_RISCV_RELAX	*ABS*
  7e:	4942                	lw	s2,16(sp)
  80:	00000537          	lui	a0,0x0
			80: R_RISCV_HI20	.LC1
			80: R_RISCV_RELAX	*ABS*
  84:	00050513          	mv	a0,a0
			84: R_RISCV_LO12_I	.LC1
			84: R_RISCV_RELAX	*ABS*
  88:	6105                	addi	sp,sp,32
  8a:	00000317          	auipc	t1,0x0
			8a: R_RISCV_CALL	dbg_test_print
			8a: R_RISCV_RELAX	*ABS*
  8e:	00030067          	jr	t1 # 8a <.LVL26+0x1c>

Disassembly of section .text.keyMgmtProcessMsgExt:

00000000 <keyMgmtProcessMsgExt>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB292>:
   a:	44b00937          	lui	s2,0x44b00
   e:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000012 <.LBE292>:
  12:	3e800413          	li	s0,1000
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	.LANCHOR3
			16: R_RISCV_RELAX	*ABS*
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL30>:
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR3
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL30+0x8>

00000032 <.LBB293>:
  32:	12092583          	lw	a1,288(s2)

00000036 <.LBE293>:
  36:	00000537          	lui	a0,0x0
			36: R_RISCV_HI20	.LC1
			36: R_RISCV_RELAX	*ABS*
  3a:	00048613          	mv	a2,s1
			3a: R_RISCV_LO12_I	.LANCHOR3
			3a: R_RISCV_RELAX	*ABS*
  3e:	0285d5b3          	divu	a1,a1,s0
  42:	00050513          	mv	a0,a0
			42: R_RISCV_LO12_I	.LC1
			42: R_RISCV_RELAX	*ABS*
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	dbg_test_print
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LBE293+0x10>

0000004e <.LVL32>:
  4e:	40b2                	lw	ra,12(sp)
  50:	4422                	lw	s0,8(sp)
  52:	4492                	lw	s1,4(sp)
  54:	4902                	lw	s2,0(sp)
  56:	4505                	li	a0,1
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

Disassembly of section .text.KeyMgmtInitSta:

00000000 <KeyMgmtInitSta>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB301>:
   c:	44b00937          	lui	s2,0x44b00
  10:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000014 <.LBE301>:
  14:	3e800413          	li	s0,1000
  18:	89aa                	mv	s3,a0
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	.LANCHOR4
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL34>:
  26:	00048613          	mv	a2,s1
			26: R_RISCV_LO12_I	.LANCHOR4
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL34+0x8>

00000036 <.LVL35>:
  36:	0089a503          	lw	a0,8(s3)
  3a:	05450513          	addi	a0,a0,84 # 54 <.LBE302+0xa>
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	KeyMgmtSta_InitSession
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL35+0x8>

00000046 <.LBB302>:
  46:	12092583          	lw	a1,288(s2)

0000004a <.LBE302>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	4942                	lw	s2,16(sp)
  4e:	0285d5b3          	divu	a1,a1,s0
  52:	4462                	lw	s0,24(sp)
  54:	49b2                	lw	s3,12(sp)

00000056 <.LVL37>:
  56:	00048613          	mv	a2,s1
			56: R_RISCV_LO12_I	.LANCHOR4
			56: R_RISCV_RELAX	*ABS*
  5a:	44d2                	lw	s1,20(sp)
  5c:	00000537          	lui	a0,0x0
			5c: R_RISCV_HI20	.LC1
			5c: R_RISCV_RELAX	*ABS*
  60:	00050513          	mv	a0,a0
			60: R_RISCV_LO12_I	.LC1
			60: R_RISCV_RELAX	*ABS*
  64:	6105                	addi	sp,sp,32
  66:	00000317          	auipc	t1,0x0
			66: R_RISCV_CALL	dbg_test_print
			66: R_RISCV_RELAX	*ABS*
  6a:	00030067          	jr	t1 # 66 <.LVL37+0x10>

Disassembly of section .text.keyMgmtSta_StartSession:

00000000 <keyMgmtSta_StartSession>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	c05a                	sw	s6,0(sp)

00000012 <.LBB312>:
  12:	44b009b7          	lui	s3,0x44b00

00000016 <.LBE312>:
  16:	8aae                	mv	s5,a1

00000018 <.LBB313>:
  18:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

0000001c <.LBE313>:
  1c:	3e800493          	li	s1,1000
  20:	842a                	mv	s0,a0
  22:	0295d5b3          	divu	a1,a1,s1
  26:	00000937          	lui	s2,0x0
			26: R_RISCV_HI20	.LANCHOR5
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL41>:
  2e:	8b32                	mv	s6,a2
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00090613          	mv	a2,s2
			34: R_RISCV_LO12_I	.LANCHOR5
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL42>:
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	dbg_test_print
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL42>

00000040 <.LVL43>:
  40:	00842a03          	lw	s4,8(s0) # 8 <keyMgmtSta_StartSession+0x8>

00000044 <.LVL44>:
  44:	85da                	mv	a1,s6
  46:	4619                	li	a2,6
  48:	168a2623          	sw	s0,364(s4)
  4c:	4408                	lw	a0,8(s0)
  4e:	02c50513          	addi	a0,a0,44 # 2c <.LBE313+0x10>
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	memcpy
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL44+0xe>

0000005a <.LVL45>:
  5a:	4408                	lw	a0,8(s0)
  5c:	4619                	li	a2,6
  5e:	85d6                	mv	a1,s5
  60:	02650513          	addi	a0,a0,38
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	memcpy
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL45+0xa>

0000006c <.LVL46>:
  6c:	009895b7          	lui	a1,0x989
  70:	054a0513          	addi	a0,s4,84

00000074 <.LVL47>:
  74:	68058593          	addi	a1,a1,1664 # 989680 <.LASF1134+0x984e5c>
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	keyMgmtSta_StartSession_internal
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL47+0x4>

00000080 <.LBB314>:
  80:	1209a583          	lw	a1,288(s3)

00000084 <.LBE314>:
  84:	4462                	lw	s0,24(sp)

00000086 <.LVL49>:
  86:	40f2                	lw	ra,28(sp)
  88:	0295d5b3          	divu	a1,a1,s1
  8c:	49b2                	lw	s3,12(sp)
  8e:	44d2                	lw	s1,20(sp)
  90:	4a22                	lw	s4,8(sp)

00000092 <.LVL50>:
  92:	4a92                	lw	s5,4(sp)

00000094 <.LVL51>:
  94:	4b02                	lw	s6,0(sp)

00000096 <.LVL52>:
  96:	00090613          	mv	a2,s2
			96: R_RISCV_LO12_I	.LANCHOR5
			96: R_RISCV_RELAX	*ABS*
  9a:	4942                	lw	s2,16(sp)
  9c:	00000537          	lui	a0,0x0
			9c: R_RISCV_HI20	.LC1
			9c: R_RISCV_RELAX	*ABS*
  a0:	00050513          	mv	a0,a0
			a0: R_RISCV_LO12_I	.LC1
			a0: R_RISCV_RELAX	*ABS*
  a4:	6105                	addi	sp,sp,32
  a6:	00000317          	auipc	t1,0x0
			a6: R_RISCV_CALL	dbg_test_print
			a6: R_RISCV_RELAX	*ABS*
  aa:	00030067          	jr	t1 # a6 <.LVL52+0x10>

Disassembly of section .text.init_customApp_mibs:

00000000 <init_customApp_mibs>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB322>:
   c:	44b009b7          	lui	s3,0x44b00
  10:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000014 <.LBE322>:
  14:	3e800493          	li	s1,1000
  18:	842a                	mv	s0,a0
  1a:	0295d5b3          	divu	a1,a1,s1
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR6
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL55>:
  26:	00090613          	mv	a2,s2
			26: R_RISCV_LO12_I	.LANCHOR6
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL55+0x8>

00000036 <.LVL56>:
  36:	460d                	li	a2,3
  38:	4581                	li	a1,0
  3a:	03240513          	addi	a0,s0,50
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	memset
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL56+0x8>

00000046 <.LVL57>:
  46:	4671                	li	a2,28
  48:	4581                	li	a1,0
  4a:	03540513          	addi	a0,s0,53
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memset
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL57+0x8>

00000056 <.LVL58>:
  56:	03645783          	lhu	a5,54(s0)
  5a:	40f2                	lw	ra,28(sp)
  5c:	00090613          	mv	a2,s2
			5c: R_RISCV_LO12_I	.LANCHOR6
			5c: R_RISCV_RELAX	*ABS*
  60:	0017e793          	ori	a5,a5,1
  64:	02f41b23          	sh	a5,54(s0)

00000068 <.LBB323>:
  68:	1209a583          	lw	a1,288(s3)

0000006c <.LBE323>:
  6c:	4462                	lw	s0,24(sp)

0000006e <.LVL59>:
  6e:	4942                	lw	s2,16(sp)
  70:	0295d5b3          	divu	a1,a1,s1
  74:	49b2                	lw	s3,12(sp)
  76:	44d2                	lw	s1,20(sp)
  78:	00000537          	lui	a0,0x0
			78: R_RISCV_HI20	.LC1
			78: R_RISCV_RELAX	*ABS*
  7c:	00050513          	mv	a0,a0
			7c: R_RISCV_LO12_I	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	6105                	addi	sp,sp,32
  82:	00000317          	auipc	t1,0x0
			82: R_RISCV_CALL	dbg_test_print
			82: R_RISCV_RELAX	*ABS*
  86:	00030067          	jr	t1 # 82 <.LVL59+0x14>

Disassembly of section .text.supplicantIsEnabled:

00000000 <supplicantIsEnabled>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB337>:
   c:	44b009b7          	lui	s3,0x44b00
  10:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000014 <.LBE337>:
  14:	3e800493          	li	s1,1000
  18:	842a                	mv	s0,a0

0000001a <.LBB342>:
  1a:	0295d5b3          	divu	a1,a1,s1
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR7
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL63>:
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00090613          	mv	a2,s2
			2a: R_RISCV_LO12_I	.LANCHOR7
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL63+0x8>

00000036 <.LVL64>:
  36:	441c                	lw	a5,8(s0)
  38:	4501                	li	a0,0
  3a:	c39d                	beqz	a5,60 <.L28>
			3a: R_RISCV_RVC_BRANCH	.L28

0000003c <.LBB343>:
  3c:	1209a583          	lw	a1,288(s3)

00000040 <.LBE345>:
  40:	00000537          	lui	a0,0x0
			40: R_RISCV_HI20	.LC1
			40: R_RISCV_RELAX	*ABS*
  44:	00050513          	mv	a0,a0
			44: R_RISCV_LO12_I	.LC1
			44: R_RISCV_RELAX	*ABS*
  48:	0295d5b3          	divu	a1,a1,s1
  4c:	00090613          	mv	a2,s2
			4c: R_RISCV_LO12_I	.LANCHOR7
			4c: R_RISCV_RELAX	*ABS*
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	dbg_test_print
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LBE345+0x10>

00000058 <.LVL66>:
  58:	441c                	lw	a5,8(s0)
  5a:	5bc8                	lw	a0,52(a5)
  5c:	8121                	srli	a0,a0,0x8
  5e:	8905                	andi	a0,a0,1

00000060 <.L28>:
  60:	40f2                	lw	ra,28(sp)
  62:	4462                	lw	s0,24(sp)

00000064 <.LVL68>:
  64:	44d2                	lw	s1,20(sp)
  66:	4942                	lw	s2,16(sp)
  68:	49b2                	lw	s3,12(sp)
  6a:	6105                	addi	sp,sp,32
  6c:	8082                	ret

Disassembly of section .text.supplicantInitSession:

00000000 <supplicantInitSession>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	ce06                	sw	ra,28(sp)

00000010 <.LBB357>:
  10:	44b007b7          	lui	a5,0x44b00

00000014 <.LBE357>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB358>:
  16:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000001a <.LBE358>:
  1a:	3e800793          	li	a5,1000
  1e:	842a                	mv	s0,a0
  20:	02f5d5b3          	divu	a1,a1,a5
  24:	000004b7          	lui	s1,0x0
			24: R_RISCV_HI20	.LANCHOR8
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL71>:
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	8932                	mv	s2,a2
  32:	00048613          	mv	a2,s1
			32: R_RISCV_LO12_I	.LANCHOR8
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL72>:
  36:	89b6                	mv	s3,a3
  38:	8a3a                	mv	s4,a4
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL72+0x4>

00000042 <.LVL73>:
  42:	8522                	mv	a0,s0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	supplicantIsEnabled
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL73+0x2>

0000004c <.LVL74>:
  4c:	c905                	beqz	a0,7c <.L32>
			4c: R_RISCV_RVC_BRANCH	.L32
  4e:	8522                	mv	a0,s0
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	KeyMgmtInitSta
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL74+0x4>

00000058 <.LVL75>:
  58:	4408                	lw	a0,8(s0)
  5a:	864a                	mv	a2,s2
  5c:	85d6                	mv	a1,s5
  5e:	0519                	addi	a0,a0,6
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	memcpy
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL75+0x8>

00000068 <.LVL76>:
  68:	441c                	lw	a5,8(s0)
  6a:	8652                	mv	a2,s4
  6c:	85ce                	mv	a1,s3
  6e:	012782a3          	sb	s2,5(a5)
  72:	8522                	mv	a0,s0
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	keyMgmtSta_StartSession
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL76+0xc>

0000007c <.L32>:
  7c:	44b007b7          	lui	a5,0x44b00
  80:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000084 <.LBE359>:
  84:	3e800793          	li	a5,1000
  88:	4462                	lw	s0,24(sp)

0000008a <.LVL78>:
  8a:	02f5d5b3          	divu	a1,a1,a5
  8e:	40f2                	lw	ra,28(sp)
  90:	4942                	lw	s2,16(sp)
  92:	49b2                	lw	s3,12(sp)

00000094 <.LVL79>:
  94:	4a22                	lw	s4,8(sp)

00000096 <.LVL80>:
  96:	4a92                	lw	s5,4(sp)

00000098 <.LVL81>:
  98:	00048613          	mv	a2,s1
			98: R_RISCV_LO12_I	.LANCHOR8
			98: R_RISCV_RELAX	*ABS*
  9c:	44d2                	lw	s1,20(sp)
  9e:	00000537          	lui	a0,0x0
			9e: R_RISCV_HI20	.LC1
			9e: R_RISCV_RELAX	*ABS*
  a2:	00050513          	mv	a0,a0
			a2: R_RISCV_LO12_I	.LC1
			a2: R_RISCV_RELAX	*ABS*
  a6:	6105                	addi	sp,sp,32
  a8:	00000317          	auipc	t1,0x0
			a8: R_RISCV_CALL	dbg_test_print
			a8: R_RISCV_RELAX	*ABS*
  ac:	00030067          	jr	t1 # a8 <.LVL81+0x10>

Disassembly of section .text.supplicantDisable:

00000000 <supplicantDisable>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB367>:
   c:	44b009b7          	lui	s3,0x44b00
  10:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000014 <.LBE367>:
  14:	3e800493          	li	s1,1000
  18:	842a                	mv	s0,a0
  1a:	0295d5b3          	divu	a1,a1,s1
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR9
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL84>:
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00090613          	mv	a2,s2
			2a: R_RISCV_LO12_I	.LANCHOR9
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL84+0x8>

00000036 <.LVL85>:
  36:	8522                	mv	a0,s0
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	supplicantIsEnabled
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL85+0x2>

00000040 <.LVL86>:
  40:	c539                	beqz	a0,8e <.L37>
			40: R_RISCV_RVC_BRANCH	.L37
  42:	4408                	lw	a0,8(s0)
  44:	15c50513          	addi	a0,a0,348 # 15c <.LVL378+0x4>
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	mm_timer_clear
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL86+0x8>

00000050 <.LVL87>:
  50:	4418                	lw	a4,8(s0)
  52:	03574783          	lbu	a5,53(a4)
  56:	9bf9                	andi	a5,a5,-2
  58:	02f70aa3          	sb	a5,53(a4)
  5c:	4408                	lw	a0,8(s0)
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	init_customApp_mibs
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL87+0xe>

00000066 <.LBB368>:
  66:	1209a583          	lw	a1,288(s3)

0000006a <.LBE368>:
  6a:	4462                	lw	s0,24(sp)

0000006c <.LVL89>:
  6c:	40f2                	lw	ra,28(sp)
  6e:	0295d5b3          	divu	a1,a1,s1
  72:	49b2                	lw	s3,12(sp)
  74:	44d2                	lw	s1,20(sp)
  76:	00090613          	mv	a2,s2
			76: R_RISCV_LO12_I	.LANCHOR9
			76: R_RISCV_RELAX	*ABS*
  7a:	4942                	lw	s2,16(sp)
  7c:	00000537          	lui	a0,0x0
			7c: R_RISCV_HI20	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	00050513          	mv	a0,a0
			80: R_RISCV_LO12_I	.LC1
			80: R_RISCV_RELAX	*ABS*
  84:	6105                	addi	sp,sp,32
  86:	00000317          	auipc	t1,0x0
			86: R_RISCV_CALL	dbg_test_print
			86: R_RISCV_RELAX	*ABS*
  8a:	00030067          	jr	t1 # 86 <.LVL89+0x1a>

0000008e <.L37>:
  8e:	40f2                	lw	ra,28(sp)
  90:	4462                	lw	s0,24(sp)

00000092 <.LVL91>:
  92:	44d2                	lw	s1,20(sp)
  94:	4942                	lw	s2,16(sp)
  96:	49b2                	lw	s3,12(sp)
  98:	6105                	addi	sp,sp,32
  9a:	8082                	ret

Disassembly of section .text.supplicantEnable:

00000000 <supplicantEnable>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	c05a                	sw	s6,0(sp)
  10:	ce06                	sw	ra,28(sp)

00000012 <.LBB371>:
  12:	44b007b7          	lui	a5,0x44b00

00000016 <.LBE371>:
  16:	8b2e                	mv	s6,a1

00000018 <.LBB378>:
  18:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000001c <.LBE378>:
  1c:	3e800793          	li	a5,1000
  20:	842a                	mv	s0,a0

00000022 <.LBB379>:
  22:	02f5d5b3          	divu	a1,a1,a5
  26:	000004b7          	lui	s1,0x0
			26: R_RISCV_HI20	.LANCHOR10
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL95>:
  2e:	8ab2                	mv	s5,a2
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00048613          	mv	a2,s1
			34: R_RISCV_LO12_I	.LANCHOR10
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL96>:
  38:	8a3a                	mv	s4,a4
  3a:	89b6                	mv	s3,a3
  3c:	4909                	li	s2,2
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	dbg_test_print
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL96+0x6>

00000046 <.LVL97>:
  46:	4418                	lw	a4,8(s0)
  48:	03574783          	lbu	a5,53(a4)
  4c:	0017e793          	ori	a5,a5,1
  50:	02f70aa3          	sb	a5,53(a4)

00000054 <.LVL98>:
  54:	ffcb0793          	addi	a5,s6,-4
  58:	0af96963          	bltu	s2,a5,10a <.L41>
			58: R_RISCV_BRANCH	.L41
  5c:	4418                	lw	a4,8(s0)
  5e:	4605                	li	a2,1
  60:	85d6                	mv	a1,s5
  62:	03675783          	lhu	a5,54(a4)
  66:	0207e793          	ori	a5,a5,32
  6a:	02f71b23          	sh	a5,54(a4)
  6e:	4418                	lw	a4,8(s0)
  70:	03574783          	lbu	a5,53(a4)
  74:	0047e793          	ori	a5,a5,4
  78:	02f70aa3          	sb	a5,53(a4)
  7c:	4418                	lw	a4,8(s0)
  7e:	04e75783          	lhu	a5,78(a4)
  82:	0017e793          	ori	a5,a5,1
  86:	04f71723          	sh	a5,78(a4)
  8a:	4408                	lw	a0,8(s0)
  8c:	03850513          	addi	a0,a0,56 # 38 <.LVL96>
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	memcpy
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL98+0x3c>

00000098 <.LVL99>:
  98:	4408                	lw	a0,8(s0)
  9a:	4605                	li	a2,1
  9c:	85ce                	mv	a1,s3
  9e:	03950513          	addi	a0,a0,57
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	memcpy
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL99+0xa>

000000aa <.LVL100>:
  aa:	441c                	lw	a5,8(s0)
  ac:	040a0c63          	beqz	s4,104 <.L42>
			ac: R_RISCV_BRANCH	.L42
  b0:	4719                	li	a4,6
  b2:	02e78ea3          	sb	a4,61(a5)

000000b6 <.L43>:
  b6:	4408                	lw	a0,8(s0)
  b8:	000005b7          	lui	a1,0x0
			b8: R_RISCV_HI20	kde_oui
			b8: R_RISCV_RELAX	*ABS*
  bc:	460d                	li	a2,3
  be:	00058593          	mv	a1,a1
			be: R_RISCV_LO12_I	kde_oui
			be: R_RISCV_RELAX	*ABS*

000000c2 <.L46>:
  c2:	03a50513          	addi	a0,a0,58
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	memcpy
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.L46+0x4>

000000ce <.L44>:
  ce:	44b007b7          	lui	a5,0x44b00
  d2:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

000000d6 <.LBE380>:
  d6:	3e800793          	li	a5,1000
  da:	4462                	lw	s0,24(sp)

000000dc <.LVL102>:
  dc:	02f5d5b3          	divu	a1,a1,a5
  e0:	40f2                	lw	ra,28(sp)
  e2:	4942                	lw	s2,16(sp)
  e4:	49b2                	lw	s3,12(sp)

000000e6 <.LVL103>:
  e6:	4a22                	lw	s4,8(sp)
  e8:	4a92                	lw	s5,4(sp)

000000ea <.LVL104>:
  ea:	4b02                	lw	s6,0(sp)

000000ec <.LVL105>:
  ec:	00048613          	mv	a2,s1
			ec: R_RISCV_LO12_I	.LANCHOR10
			ec: R_RISCV_RELAX	*ABS*
  f0:	44d2                	lw	s1,20(sp)
  f2:	00000537          	lui	a0,0x0
			f2: R_RISCV_HI20	.LC1
			f2: R_RISCV_RELAX	*ABS*
  f6:	00050513          	mv	a0,a0
			f6: R_RISCV_LO12_I	.LC1
			f6: R_RISCV_RELAX	*ABS*
  fa:	6105                	addi	sp,sp,32
  fc:	00000317          	auipc	t1,0x0
			fc: R_RISCV_CALL	dbg_test_print
			fc: R_RISCV_RELAX	*ABS*
 100:	00030067          	jr	t1 # fc <.LVL105+0x10>

00000104 <.L42>:
 104:	03278ea3          	sb	s2,61(a5)
 108:	b77d                	j	b6 <.L43>
			108: R_RISCV_RVC_JUMP	.L43

0000010a <.L41>:
 10a:	478d                	li	a5,3
 10c:	fcfb11e3          	bne	s6,a5,ce <.L44>
			10c: R_RISCV_BRANCH	.L44
 110:	4418                	lw	a4,8(s0)
 112:	4605                	li	a2,1
 114:	85d6                	mv	a1,s5
 116:	03675783          	lhu	a5,54(a4)
 11a:	0087e793          	ori	a5,a5,8
 11e:	02f71b23          	sh	a5,54(a4)
 122:	4408                	lw	a0,8(s0)
 124:	03850513          	addi	a0,a0,56 # 38 <.LVL96>
 128:	00000097          	auipc	ra,0x0
			128: R_RISCV_CALL	memcpy
			128: R_RISCV_RELAX	*ABS*
 12c:	000080e7          	jalr	ra # 128 <.L41+0x1e>

00000130 <.LVL107>:
 130:	4408                	lw	a0,8(s0)
 132:	4605                	li	a2,1
 134:	85ce                	mv	a1,s3
 136:	03950513          	addi	a0,a0,57
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	memcpy
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL107+0xa>

00000142 <.LVL108>:
 142:	441c                	lw	a5,8(s0)
 144:	000005b7          	lui	a1,0x0
			144: R_RISCV_HI20	wpa_oui
			144: R_RISCV_RELAX	*ABS*
 148:	460d                	li	a2,3
 14a:	03278ea3          	sb	s2,61(a5)
 14e:	4408                	lw	a0,8(s0)
 150:	00058593          	mv	a1,a1
			150: R_RISCV_LO12_I	wpa_oui
			150: R_RISCV_RELAX	*ABS*
 154:	b7bd                	j	c2 <.L46>
			154: R_RISCV_RVC_JUMP	.L46

Disassembly of section .text.keyMgmtFormatWpaRsnIe:

00000000 <keyMgmtFormatWpaRsnIe>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB390>:
   e:	44b00937          	lui	s2,0x44b00

00000012 <.LBE390>:
  12:	8a2e                	mv	s4,a1

00000014 <.LBB391>:
  14:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE391>:
  18:	3e800413          	li	s0,1000
  1c:	89aa                	mv	s3,a0
  1e:	0285d5b3          	divu	a1,a1,s0
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	.LANCHOR11
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL111>:
  2a:	00048613          	mv	a2,s1
			2a: R_RISCV_LO12_I	.LANCHOR11
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL112>:
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL112+0x4>

0000003a <.LBB392>:
  3a:	12092583          	lw	a1,288(s2)

0000003e <.LBE392>:
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	.LC1
			3e: R_RISCV_RELAX	*ABS*
  42:	00048613          	mv	a2,s1
			42: R_RISCV_LO12_I	.LANCHOR11
			42: R_RISCV_RELAX	*ABS*
  46:	0285d5b3          	divu	a1,a1,s0
  4a:	00050513          	mv	a0,a0
			4a: R_RISCV_LO12_I	.LC1
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	dbg_test_print
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LBE392+0x10>

00000056 <.LVL114>:
  56:	4462                	lw	s0,24(sp)
  58:	0019c503          	lbu	a0,1(s3)
  5c:	40f2                	lw	ra,28(sp)
  5e:	44d2                	lw	s1,20(sp)
  60:	4942                	lw	s2,16(sp)
  62:	49b2                	lw	s3,12(sp)

00000064 <.LVL115>:
  64:	85d2                	mv	a1,s4
  66:	4a22                	lw	s4,8(sp)

00000068 <.LVL116>:
  68:	6105                	addi	sp,sp,32
  6a:	00000317          	auipc	t1,0x0
			6a: R_RISCV_CALL	mm_get_rsn_wpa_ie
			6a: R_RISCV_RELAX	*ABS*
  6e:	00030067          	jr	t1 # 6a <.LVL116+0x2>

Disassembly of section .text.GeneratePWKMsg2:

00000000 <GeneratePWKMsg2>:
   0:	7139                	addi	sp,sp,-64
   2:	da26                	sw	s1,52(sp)
   4:	d84a                	sw	s2,48(sp)
   6:	d64e                	sw	s3,44(sp)
   8:	d452                	sw	s4,40(sp)
   a:	d256                	sw	s5,36(sp)
   c:	d05a                	sw	s6,32(sp)
   e:	de06                	sw	ra,60(sp)
  10:	dc22                	sw	s0,56(sp)
  12:	c62e                	sw	a1,12(sp)

00000014 <.LBB400>:
  14:	44b007b7          	lui	a5,0x44b00
  18:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000001c <.LBE400>:
  1c:	3e800793          	li	a5,1000
  20:	892a                	mv	s2,a0
  22:	02f5d5b3          	divu	a1,a1,a5
  26:	000009b7          	lui	s3,0x0
			26: R_RISCV_HI20	.LANCHOR12
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL120>:
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	8a32                	mv	s4,a2
  34:	00098613          	mv	a2,s3
			34: R_RISCV_LO12_I	.LANCHOR12
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL121>:
  38:	8ab6                	mv	s5,a3
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL121+0x2>

00000042 <.LVL122>:
  42:	00092483          	lw	s1,0(s2)

00000046 <.LVL123>:
  46:	4601                	li	a2,0
  48:	086c                	addi	a1,sp,28
  4a:	8526                	mv	a0,s1
  4c:	00892b03          	lw	s6,8(s2)

00000050 <.LVL124>:
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	GetTxEAPOLBuffer
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL124>

00000058 <.LVL125>:
  58:	c155                	beqz	a0,fc <.L52>
			58: R_RISCV_RVC_BRANCH	.L52
  5a:	4490                	lw	a2,8(s1)
  5c:	4732                	lw	a4,12(sp)
  5e:	892a                	mv	s2,a0

00000060 <.LVL126>:
  60:	4572                	lw	a0,28(sp)

00000062 <.LVL127>:
  62:	02c60693          	addi	a3,a2,44
  66:	85da                	mv	a1,s6
  68:	02660613          	addi	a2,a2,38
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	KeyMgmtSta_PrepareEAPOLFrame
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL127+0xa>

00000074 <.LVL128>:
  74:	4472                	lw	s0,28(sp)
  76:	4785                	li	a5,1
  78:	01244703          	lbu	a4,18(s0)
  7c:	02f70563          	beq	a4,a5,a6 <.L51>
			7c: R_RISCV_BRANCH	.L51
  80:	4490                	lw	a2,8(s1)
  82:	4781                	li	a5,0
  84:	4701                	li	a4,0
  86:	02c60693          	addi	a3,a2,44
  8a:	07140593          	addi	a1,s0,113
  8e:	02660613          	addi	a2,a2,38
  92:	8526                	mv	a0,s1
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	keyMgmtFormatWpaRsnIe
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL128+0x20>

0000009c <.LVL129>:
  9c:	06a407a3          	sb	a0,111(s0)
  a0:	8121                	srli	a0,a0,0x8
  a2:	06a40823          	sb	a0,112(s0)

000000a6 <.L51>:
  a6:	4572                	lw	a0,28(sp)
  a8:	86d6                	mv	a3,s5
  aa:	4605                	li	a2,1
  ac:	85d2                	mv	a1,s4
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	KeyMgmtSta_PopulateEAPOLLengthMic
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L51+0x8>

000000b6 <.LVL130>:
  b6:	85aa                	mv	a1,a0
  b8:	854a                	mv	a0,s2

000000ba <.LVL131>:
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	UpdateEAPOLWcbLenAndTransmit
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.LVL131>

000000c2 <.LBB401>:
  c2:	44b007b7          	lui	a5,0x44b00
  c6:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

000000ca <.LBE401>:
  ca:	3e800793          	li	a5,1000
  ce:	00000537          	lui	a0,0x0
			ce: R_RISCV_HI20	.LC1
			ce: R_RISCV_RELAX	*ABS*
  d2:	02f5d5b3          	divu	a1,a1,a5
  d6:	00050513          	mv	a0,a0
			d6: R_RISCV_LO12_I	.LC1
			d6: R_RISCV_RELAX	*ABS*
  da:	00098613          	mv	a2,s3
			da: R_RISCV_LO12_I	.LANCHOR12
			da: R_RISCV_RELAX	*ABS*
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	dbg_test_print
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LBE401+0x14>

000000e6 <.LVL133>:
  e6:	4501                	li	a0,0

000000e8 <.L50>:
  e8:	50f2                	lw	ra,60(sp)
  ea:	5462                	lw	s0,56(sp)
  ec:	54d2                	lw	s1,52(sp)

000000ee <.LVL135>:
  ee:	5942                	lw	s2,48(sp)
  f0:	59b2                	lw	s3,44(sp)
  f2:	5a22                	lw	s4,40(sp)

000000f4 <.LVL136>:
  f4:	5a92                	lw	s5,36(sp)
  f6:	5b02                	lw	s6,32(sp)

000000f8 <.LVL137>:
  f8:	6121                	addi	sp,sp,64

000000fa <.LVL138>:
  fa:	8082                	ret

000000fc <.L52>:
  fc:	4505                	li	a0,1

000000fe <.LVL140>:
  fe:	b7ed                	j	e8 <.L50>
			fe: R_RISCV_RVC_JUMP	.L50

Disassembly of section .text.KeyMgmtStaHsk_Recvd_PWKMsg1:

00000000 <KeyMgmtStaHsk_Recvd_PWKMsg1>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	d64e                	sw	s3,44(sp)
   6:	d452                	sw	s4,40(sp)
   8:	d05a                	sw	s6,32(sp)
   a:	ce5e                	sw	s7,28(sp)
   c:	cc62                	sw	s8,24(sp)
   e:	de06                	sw	ra,60(sp)
  10:	da26                	sw	s1,52(sp)
  12:	d84a                	sw	s2,48(sp)
  14:	d256                	sw	s5,36(sp)

00000016 <.LBB404>:
  16:	44b007b7          	lui	a5,0x44b00

0000001a <.LBE404>:
  1a:	8c2e                	mv	s8,a1

0000001c <.LBB411>:
  1c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000020 <.LBE411>:
  20:	3e800793          	li	a5,1000
  24:	00052903          	lw	s2,0(a0) # 0 <KeyMgmtStaHsk_Recvd_PWKMsg1>

00000028 <.LBB412>:
  28:	02f5d5b3          	divu	a1,a1,a5
  2c:	8a2a                	mv	s4,a0
  2e:	00000b37          	lui	s6,0x0
			2e: R_RISCV_HI20	.LANCHOR13
			2e: R_RISCV_RELAX	*ABS*
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	.LC0
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL144>:
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	8bb2                	mv	s7,a2
  3c:	000b0613          	mv	a2,s6
			3c: R_RISCV_LO12_I	.LANCHOR13
			3c: R_RISCV_RELAX	*ABS*

00000040 <.LVL145>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	dbg_test_print
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL145>

00000048 <.LVL146>:
  48:	00892403          	lw	s0,8(s2)
  4c:	8552                	mv	a0,s4
  4e:	05440993          	addi	s3,s0,84

00000052 <.LVL147>:
  52:	85ce                	mv	a1,s3
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	GetKeyMsgNonceFromEAPOL
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL147+0x2>

0000005c <.LVL148>:
  5c:	ed19                	bnez	a0,7a <.L55>
			5c: R_RISCV_RVC_BRANCH	.L55

0000005e <.L58>:
  5e:	4481                	li	s1,0

00000060 <.L54>:
  60:	50f2                	lw	ra,60(sp)
  62:	5462                	lw	s0,56(sp)
  64:	8526                	mv	a0,s1
  66:	5942                	lw	s2,48(sp)

00000068 <.LVL151>:
  68:	54d2                	lw	s1,52(sp)
  6a:	59b2                	lw	s3,44(sp)

0000006c <.LVL152>:
  6c:	5a22                	lw	s4,40(sp)

0000006e <.LVL153>:
  6e:	5a92                	lw	s5,36(sp)
  70:	5b02                	lw	s6,32(sp)
  72:	4bf2                	lw	s7,28(sp)

00000074 <.LVL154>:
  74:	4c62                	lw	s8,24(sp)

00000076 <.LVL155>:
  76:	6121                	addi	sp,sp,64
  78:	8082                	ret

0000007a <.L55>:
  7a:	8aaa                	mv	s5,a0
  7c:	00892503          	lw	a0,8(s2)

00000080 <.LVL157>:
  80:	03a50513          	addi	a0,a0,58 # 3a <.LVL144+0x4>
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	supplicantAkmIsWpaWpa2
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL157+0x4>

0000008c <.LVL158>:
  8c:	84aa                	mv	s1,a0
  8e:	cd39                	beqz	a0,ec <.L57>
			8e: R_RISCV_RVC_BRANCH	.L57
  90:	00892503          	lw	a0,8(s2)
  94:	03a50513          	addi	a0,a0,58
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	supplicantAkmIsWpaWpa2Psk
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL158+0xc>

000000a0 <.LVL159>:
  a0:	dd5d                	beqz	a0,5e <.L58>
			a0: R_RISCV_RVC_BRANCH	.L58
  a2:	00892503          	lw	a0,8(s2)
  a6:	00554583          	lbu	a1,5(a0)
  aa:	0519                	addi	a0,a0,6
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	pmkCacheFindPSK
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL159+0xc>

000000b4 <.LVL160>:
  b4:	84aa                	mv	s1,a0

000000b6 <.LVL161>:
  b6:	d545                	beqz	a0,5e <.L58>
			b6: R_RISCV_RVC_BRANCH	.L58
  b8:	00892503          	lw	a0,8(s2)
  bc:	03a50513          	addi	a0,a0,58
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	supplicantAkmUsesKdf
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.LVL161+0xa>

000000c8 <.LVL162>:
  c8:	c02a                	sw	a0,0(sp)
  ca:	12840893          	addi	a7,s0,296
  ce:	8526                	mv	a0,s1
  d0:	0a440813          	addi	a6,s0,164
  d4:	09440793          	addi	a5,s0,148
  d8:	07440713          	addi	a4,s0,116
  dc:	86ce                	mv	a3,s3
  de:	8662                	mv	a2,s8
  e0:	85de                	mv	a1,s7
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	KeyMgmtSta_DeriveKeys
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL162+0x1a>

000000ea <.LVL163>:
  ea:	4485                	li	s1,1

000000ec <.L57>:
  ec:	4681                	li	a3,0
  ee:	09440613          	addi	a2,s0,148
  f2:	07440593          	addi	a1,s0,116
  f6:	8552                	mv	a0,s4
  f8:	00000097          	auipc	ra,0x0
			f8: R_RISCV_CALL	GeneratePWKMsg2
			f8: R_RISCV_RELAX	*ABS*
  fc:	000080e7          	jalr	ra # f8 <.L57+0xc>

00000100 <.LVL165>:
 100:	e121                	bnez	a0,140 <.L60>
			100: R_RISCV_RVC_BRANCH	.L60
 102:	4785                	li	a5,1
 104:	00f49b63          	bne	s1,a5,11a <.L59>
			104: R_RISCV_BRANCH	.L59

00000108 <.LVL166>:
 108:	009a8593          	addi	a1,s5,9
 10c:	854e                	mv	a0,s3
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	updateApReplayCounter
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.LVL166+0x6>

00000116 <.LVL167>:
 116:	0c042623          	sw	zero,204(s0)

0000011a <.L59>:
 11a:	44b007b7          	lui	a5,0x44b00
 11e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000122 <.LBE413>:
 122:	3e800793          	li	a5,1000
 126:	00000537          	lui	a0,0x0
			126: R_RISCV_HI20	.LC1
			126: R_RISCV_RELAX	*ABS*
 12a:	02f5d5b3          	divu	a1,a1,a5
 12e:	000b0613          	mv	a2,s6
			12e: R_RISCV_LO12_I	.LANCHOR13
			12e: R_RISCV_RELAX	*ABS*
 132:	00050513          	mv	a0,a0
			132: R_RISCV_LO12_I	.LC1
			132: R_RISCV_RELAX	*ABS*
 136:	00000097          	auipc	ra,0x0
			136: R_RISCV_CALL	dbg_test_print
			136: R_RISCV_RELAX	*ABS*
 13a:	000080e7          	jalr	ra # 136 <.LBE413+0x14>

0000013e <.LVL169>:
 13e:	b70d                	j	60 <.L54>
			13e: R_RISCV_RVC_JUMP	.L54

00000140 <.L60>:
 140:	4481                	li	s1,0

00000142 <.LVL171>:
 142:	bfe1                	j	11a <.L59>
			142: R_RISCV_RVC_JUMP	.L59

Disassembly of section .text.supplicantInit:

00000000 <supplicantInit>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB421>:
   e:	44b009b7          	lui	s3,0x44b00
  12:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000016 <.LBE421>:
  16:	3e800493          	li	s1,1000
  1a:	842a                	mv	s0,a0
  1c:	0295d5b3          	divu	a1,a1,s1
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LANCHOR14
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL173>:
  28:	00090613          	mv	a2,s2
			28: R_RISCV_LO12_I	.LANCHOR14
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	05440a13          	addi	s4,s0,84
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	dbg_test_print
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL173+0xc>

0000003c <.LVL174>:
  3c:	8522                	mv	a0,s0
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	init_customApp_mibs
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL174+0x2>

00000046 <.LVL175>:
  46:	4611                	li	a2,4
  48:	0ff00593          	li	a1,255
  4c:	19840513          	addi	a0,s0,408
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	memset
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL175+0xa>

00000058 <.LVL176>:
  58:	14400613          	li	a2,324
  5c:	4581                	li	a1,0
  5e:	8552                	mv	a0,s4
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	memset
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL176+0x8>

00000068 <.LVL177>:
  68:	4785                	li	a5,1
  6a:	8552                	mv	a0,s4
  6c:	14042c23          	sw	zero,344(s0)
  70:	14f42a23          	sw	a5,340(s0)
  74:	14040823          	sb	zero,336(s0)
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	KeyMgmtResetCounter
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL177+0x10>

00000080 <.LBB422>:
  80:	1209a583          	lw	a1,288(s3)

00000084 <.LBE422>:
  84:	4462                	lw	s0,24(sp)

00000086 <.LVL179>:
  86:	40f2                	lw	ra,28(sp)
  88:	0295d5b3          	divu	a1,a1,s1
  8c:	49b2                	lw	s3,12(sp)
  8e:	44d2                	lw	s1,20(sp)
  90:	4a22                	lw	s4,8(sp)

00000092 <.LVL180>:
  92:	00090613          	mv	a2,s2
			92: R_RISCV_LO12_I	.LANCHOR14
			92: R_RISCV_RELAX	*ABS*
  96:	4942                	lw	s2,16(sp)
  98:	00000537          	lui	a0,0x0
			98: R_RISCV_HI20	.LC1
			98: R_RISCV_RELAX	*ABS*
  9c:	00050513          	mv	a0,a0
			9c: R_RISCV_LO12_I	.LC1
			9c: R_RISCV_RELAX	*ABS*
  a0:	6105                	addi	sp,sp,32
  a2:	00000317          	auipc	t1,0x0
			a2: R_RISCV_CALL	dbg_test_print
			a2: R_RISCV_RELAX	*ABS*
  a6:	00030067          	jr	t1 # a2 <.LVL180+0x10>

Disassembly of section .text.allocSupplicantData:

00000000 <allocSupplicantData>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c226                	sw	s1,4(sp)

0000000a <.LBB430>:
   a:	44b007b7          	lui	a5,0x44b00
   e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000012 <.LBE430>:
  12:	3e800793          	li	a5,1000
  16:	892a                	mv	s2,a0
  18:	02f5d5b3          	divu	a1,a1,a5
  1c:	00000437          	lui	s0,0x0
			1c: R_RISCV_HI20	.LANCHOR15
			1c: R_RISCV_RELAX	*ABS*
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*

00000024 <.LVL183>:
  24:	00040613          	mv	a2,s0
			24: R_RISCV_LO12_I	.LANCHOR15
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	dbg_test_print
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL183+0x8>

00000034 <.LVL184>:
  34:	00892783          	lw	a5,8(s2) # 8 <allocSupplicantData+0x8>
  38:	efa1                	bnez	a5,90 <.L73>
			38: R_RISCV_RVC_BRANCH	.L73
  3a:	00094783          	lbu	a5,0(s2)
  3e:	cb85                	beqz	a5,6e <.L75>
			3e: R_RISCV_RVC_BRANCH	.L75

00000040 <.L76>:
  40:	44b007b7          	lui	a5,0x44b00
  44:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000048 <.LBE431>:
  48:	3e800793          	li	a5,1000
  4c:	00040613          	mv	a2,s0
			4c: R_RISCV_LO12_I	.LANCHOR15
			4c: R_RISCV_RELAX	*ABS*
  50:	02f5d5b3          	divu	a1,a1,a5
  54:	4422                	lw	s0,8(sp)
  56:	40b2                	lw	ra,12(sp)
  58:	4492                	lw	s1,4(sp)
  5a:	4902                	lw	s2,0(sp)

0000005c <.LVL185>:
  5c:	00000537          	lui	a0,0x0
			5c: R_RISCV_HI20	.LC1
			5c: R_RISCV_RELAX	*ABS*
  60:	00050513          	mv	a0,a0
			60: R_RISCV_LO12_I	.LC1
			60: R_RISCV_RELAX	*ABS*
  64:	0141                	addi	sp,sp,16
  66:	00000317          	auipc	t1,0x0
			66: R_RISCV_CALL	dbg_test_print
			66: R_RISCV_RELAX	*ABS*
  6a:	00030067          	jr	t1 # 66 <.LVL185+0xa>

0000006e <.L75>:
  6e:	00000537          	lui	a0,0x0
			6e: R_RISCV_HI20	.LANCHOR16
			6e: R_RISCV_RELAX	*ABS*
  72:	00050493          	mv	s1,a0
			72: R_RISCV_LO12_I	.LANCHOR16
			72: R_RISCV_RELAX	*ABS*
  76:	409c                	lw	a5,0(s1)
  78:	f7e1                	bnez	a5,40 <.L76>
			78: R_RISCV_RVC_BRANCH	.L76
  7a:	4785                	li	a5,1
  7c:	00050513          	mv	a0,a0
			7c: R_RISCV_LO12_I	.LANCHOR16
			7c: R_RISCV_RELAX	*ABS*
  80:	c09c                	sw	a5,0(s1)
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	supplicantInit
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.L75+0x14>

0000008a <.LVL187>:
  8a:	00992423          	sw	s1,8(s2)
  8e:	bf4d                	j	40 <.L76>
			8e: R_RISCV_RVC_JUMP	.L76

00000090 <.L73>:
  90:	40b2                	lw	ra,12(sp)
  92:	4422                	lw	s0,8(sp)
  94:	4492                	lw	s1,4(sp)
  96:	4902                	lw	s2,0(sp)

00000098 <.LVL189>:
  98:	0141                	addi	sp,sp,16
  9a:	8082                	ret

Disassembly of section .text.keyMgmtGetKeySize:

00000000 <keyMgmtGetKeySize>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB441>:
   e:	44b00937          	lui	s2,0x44b00

00000012 <.LBE441>:
  12:	89ae                	mv	s3,a1

00000014 <.LBB442>:
  14:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE442>:
  18:	3e800413          	li	s0,1000
  1c:	8a2a                	mv	s4,a0
  1e:	0285d5b3          	divu	a1,a1,s0
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	.LANCHOR17
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL192>:
  2a:	00048613          	mv	a2,s1
			2a: R_RISCV_LO12_I	.LANCHOR17
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL192+0x8>

0000003a <.LBB443>:
  3a:	12092583          	lw	a1,288(s2)

0000003e <.LBE443>:
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	.LC1
			3e: R_RISCV_RELAX	*ABS*
  42:	00048613          	mv	a2,s1
			42: R_RISCV_LO12_I	.LANCHOR17
			42: R_RISCV_RELAX	*ABS*
  46:	0285d5b3          	divu	a1,a1,s0
  4a:	00050513          	mv	a0,a0
			4a: R_RISCV_LO12_I	.LC1
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	dbg_test_print
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LBE443+0x10>

00000056 <.LVL194>:
  56:	008a2503          	lw	a0,8(s4)
  5a:	4462                	lw	s0,24(sp)
  5c:	40f2                	lw	ra,28(sp)
  5e:	44d2                	lw	s1,20(sp)
  60:	4942                	lw	s2,16(sp)
  62:	4a22                	lw	s4,8(sp)

00000064 <.LVL195>:
  64:	85ce                	mv	a1,s3
  66:	49b2                	lw	s3,12(sp)
  68:	03550513          	addi	a0,a0,53 # 35 <.LVL192+0xb>
  6c:	6105                	addi	sp,sp,32
  6e:	00000317          	auipc	t1,0x0
			6e: R_RISCV_CALL	keyMgmtGetKeySize_internal
			6e: R_RISCV_RELAX	*ABS*
  72:	00030067          	jr	t1 # 6e <.LVL195+0xa>

Disassembly of section .text.add_key_to_mac:

00000000 <add_key_to_mac>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	d84a                	sw	s2,48(sp)
   8:	de06                	sw	ra,60(sp)
   a:	00054783          	lbu	a5,0(a0)
   e:	84aa                	mv	s1,a0
  10:	892e                	mv	s2,a1
  12:	4441                	li	s0,16
  14:	e799                	bnez	a5,22 <.L82>
			14: R_RISCV_RVC_BRANCH	.L82
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	keyMgmtGetKeySize
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <add_key_to_mac+0x16>

0000001e <.LVL198>:
  1e:	0ff57413          	andi	s0,a0,255

00000022 <.L82>:
  22:	02c00613          	li	a2,44
  26:	4581                	li	a1,0
  28:	0048                	addi	a0,sp,4
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	memset
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.L82+0x8>

00000032 <.LVL200>:
  32:	012037b3          	snez	a5,s2
  36:	02f107a3          	sb	a5,47(sp)
  3a:	0024c703          	lbu	a4,2(s1) # 2 <add_key_to_mac+0x2>
  3e:	0004c783          	lbu	a5,0(s1)
  42:	02090f63          	beqz	s2,80 <.L83>
			42: R_RISCV_BRANCH	.L83
  46:	0014c683          	lbu	a3,1(s1)
  4a:	02e106a3          	sb	a4,45(sp)
  4e:	00d102a3          	sb	a3,5(sp)
  52:	e39d                	bnez	a5,78 <.L84>
			52: R_RISCV_RVC_BRANCH	.L84
  54:	448c                	lw	a1,8(s1)
  56:	8622                	mv	a2,s0
  58:	0d858593          	addi	a1,a1,216 # d8 <.LVL205+0x8>

0000005c <.L98>:
  5c:	0068                	addi	a0,sp,12
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	memcpy
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.L98+0x2>

00000066 <.LBE446>:
  66:	47c1                	li	a5,16
  68:	00810423          	sb	s0,8(sp)
  6c:	04f41663          	bne	s0,a5,b8 <.L87>
			6c: R_RISCV_BRANCH	.L87
  70:	4789                	li	a5,2

00000072 <.L99>:
  72:	02f10623          	sb	a5,44(sp)
  76:	a095                	j	da <.L88>
			76: R_RISCV_RVC_JUMP	.L88

00000078 <.L84>:
  78:	8622                	mv	a2,s0
  7a:	0c448593          	addi	a1,s1,196
  7e:	bff9                	j	5c <.L98>
			7e: R_RISCV_RVC_JUMP	.L98

00000080 <.L83>:
  80:	56fd                	li	a3,-1
  82:	00d102a3          	sb	a3,5(sp)
  86:	02e106a3          	sb	a4,45(sp)
  8a:	eb91                	bnez	a5,9e <.L86>
			8a: R_RISCV_RVC_BRANCH	.L86
  8c:	448c                	lw	a1,8(s1)
  8e:	8622                	mv	a2,s0
  90:	1265d783          	lhu	a5,294(a1)
  94:	10058593          	addi	a1,a1,256
  98:	00f10223          	sb	a5,4(sp)
  9c:	b7c1                	j	5c <.L98>
			9c: R_RISCV_RVC_JUMP	.L98

0000009e <.L86>:
  9e:	8526                	mv	a0,s1
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	cm_GetApInfo
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.L86+0x2>

000000a8 <.LVL202>:
  a8:	0f255783          	lhu	a5,242(a0)
  ac:	8622                	mv	a2,s0
  ae:	0cc50593          	addi	a1,a0,204
  b2:	00f10223          	sb	a5,4(sp)
  b6:	b75d                	j	5c <.L98>
			b6: R_RISCV_RVC_JUMP	.L98

000000b8 <.L87>:
  b8:	02000793          	li	a5,32
  bc:	04f41c63          	bne	s0,a5,114 <.L89>
			bc: R_RISCV_BRANCH	.L89
  c0:	4785                	li	a5,1
  c2:	02f10623          	sb	a5,44(sp)
  c6:	00090a63          	beqz	s2,da <.L88>
			c6: R_RISCV_BRANCH	.L88

000000ca <.LBB448>:
  ca:	5692                	lw	a3,36(sp)
  cc:	4772                	lw	a4,28(sp)

000000ce <.LVL204>:
  ce:	5782                	lw	a5,32(sp)

000000d0 <.LVL205>:
  d0:	ce36                	sw	a3,28(sp)
  d2:	56a2                	lw	a3,40(sp)
  d4:	d23a                	sw	a4,36(sp)
  d6:	d43e                	sw	a5,40(sp)
  d8:	d036                	sw	a3,32(sp)

000000da <.L88>:
  da:	00814783          	lbu	a5,8(sp)
  de:	02c14703          	lbu	a4,44(sp)
  e2:	00414683          	lbu	a3,4(sp)
  e6:	02d14603          	lbu	a2,45(sp)
  ea:	00514583          	lbu	a1,5(sp)
  ee:	00000537          	lui	a0,0x0
			ee: R_RISCV_HI20	.LC4
			ee: R_RISCV_RELAX	*ABS*
  f2:	00050513          	mv	a0,a0
			f2: R_RISCV_LO12_I	.LC4
			f2: R_RISCV_RELAX	*ABS*
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	printf
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.L88+0x1c>

000000fe <.LVL207>:
  fe:	0048                	addi	a0,sp,4
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	mm_sec_machwkey_wr
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.LVL207+0x2>

00000108 <.LVL208>:
 108:	50f2                	lw	ra,60(sp)
 10a:	5462                	lw	s0,56(sp)

0000010c <.LVL209>:
 10c:	54d2                	lw	s1,52(sp)

0000010e <.LVL210>:
 10e:	5942                	lw	s2,48(sp)
 110:	6121                	addi	sp,sp,64
 112:	8082                	ret

00000114 <.L89>:
 114:	47b5                	li	a5,13
 116:	00f41463          	bne	s0,a5,11e <.L90>
			116: R_RISCV_BRANCH	.L90
 11a:	478d                	li	a5,3
 11c:	bf99                	j	72 <.L99>
			11c: R_RISCV_RVC_JUMP	.L99

0000011e <.L90>:
 11e:	4795                	li	a5,5
 120:	00f41563          	bne	s0,a5,12a <.L91>
			120: R_RISCV_BRANCH	.L91
 124:	02010623          	sb	zero,44(sp)
 128:	bf4d                	j	da <.L88>
			128: R_RISCV_RVC_JUMP	.L88

0000012a <.L91>:
 12a:	000005b7          	lui	a1,0x0
			12a: R_RISCV_HI20	.LC2
			12a: R_RISCV_RELAX	*ABS*
 12e:	00000537          	lui	a0,0x0
			12e: R_RISCV_HI20	.LC3
			12e: R_RISCV_RELAX	*ABS*
 132:	78300613          	li	a2,1923
 136:	00058593          	mv	a1,a1
			136: R_RISCV_LO12_I	.LC2
			136: R_RISCV_RELAX	*ABS*
 13a:	00050513          	mv	a0,a0
			13a: R_RISCV_LO12_I	.LC3
			13a: R_RISCV_RELAX	*ABS*
 13e:	00000097          	auipc	ra,0x0
			13e: R_RISCV_CALL	assert_err
			13e: R_RISCV_RELAX	*ABS*
 142:	000080e7          	jalr	ra # 13e <.L91+0x14>

00000146 <.LVL212>:
 146:	bf51                	j	da <.L88>
			146: R_RISCV_RVC_JUMP	.L88

Disassembly of section .text.keyMgmtKeyGroupTxDone.isra.1:

00000000 <keyMgmtKeyGroupTxDone.isra.1>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB454>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000010 <.LBE454>:
  10:	3e800793          	li	a5,1000
  14:	842a                	mv	s0,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	000004b7          	lui	s1,0x0
			1a: R_RISCV_HI20	.LANCHOR18
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC0
			22: R_RISCV_RELAX	*ABS*
  26:	00048613          	mv	a2,s1
			26: R_RISCV_LO12_I	.LANCHOR18
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LBE454+0x1a>

00000032 <.LVL213>:
  32:	4000                	lw	s0,0(s0)

00000034 <.LVL214>:
  34:	0ff00793          	li	a5,255
  38:	00344503          	lbu	a0,3(s0) # 3 <keyMgmtKeyGroupTxDone.isra.1+0x3>
  3c:	00f50663          	beq	a0,a5,48 <.L101>
			3c: R_RISCV_BRANCH	.L101
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	mm_sec_machwkey_del
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL214+0xc>

00000048 <.L101>:
  48:	4581                	li	a1,0
  4a:	8522                	mv	a0,s0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	add_key_to_mac
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.L101+0x4>

00000054 <.LVL216>:
  54:	441c                	lw	a5,8(s0)
  56:	00a401a3          	sb	a0,3(s0)
  5a:	4705                	li	a4,1
  5c:	0ce7a423          	sw	a4,200(a5)
  60:	441c                	lw	a5,8(s0)
  62:	0cc7a683          	lw	a3,204(a5)
  66:	ea91                	bnez	a3,7a <.L102>
			66: R_RISCV_RVC_BRANCH	.L102
  68:	0ce7a623          	sw	a4,204(a5)
  6c:	00144503          	lbu	a0,1(s0)
  70:	4581                	li	a1,0
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	sm_handle_supplicant_result
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL216+0x1e>

0000007a <.L102>:
  7a:	44b007b7          	lui	a5,0x44b00
  7e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000082 <.LBE455>:
  82:	3e800793          	li	a5,1000
  86:	00000537          	lui	a0,0x0
			86: R_RISCV_HI20	.LC1
			86: R_RISCV_RELAX	*ABS*
  8a:	02f5d5b3          	divu	a1,a1,a5
  8e:	00048613          	mv	a2,s1
			8e: R_RISCV_LO12_I	.LANCHOR18
			8e: R_RISCV_RELAX	*ABS*
  92:	00050513          	mv	a0,a0
			92: R_RISCV_LO12_I	.LC1
			92: R_RISCV_RELAX	*ABS*
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	dbg_test_print
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LBE455+0x14>

0000009e <.LVL218>:
  9e:	40b2                	lw	ra,12(sp)
  a0:	4422                	lw	s0,8(sp)

000000a2 <.LVL219>:
  a2:	4492                	lw	s1,4(sp)
  a4:	4501                	li	a0,0
  a6:	0141                	addi	sp,sp,16
  a8:	8082                	ret

Disassembly of section .text.GenerateGrpMsg2:

00000000 <GenerateGrpMsg2>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	d84a                	sw	s2,48(sp)
   8:	d64e                	sw	s3,44(sp)
   a:	d452                	sw	s4,40(sp)
   c:	d256                	sw	s5,36(sp)
   e:	d05a                	sw	s6,32(sp)
  10:	de06                	sw	ra,60(sp)

00000012 <.LBB465>:
  12:	44b009b7          	lui	s3,0x44b00

00000016 <.LBE465>:
  16:	8aae                	mv	s5,a1

00000018 <.LBB466>:
  18:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

0000001c <.LBE466>:
  1c:	3e800493          	li	s1,1000
  20:	842a                	mv	s0,a0
  22:	0295d5b3          	divu	a1,a1,s1
  26:	00000937          	lui	s2,0x0
			26: R_RISCV_HI20	.LANCHOR19
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL222>:
  2e:	00090613          	mv	a2,s2
			2e: R_RISCV_LO12_I	.LANCHOR19
			2e: R_RISCV_RELAX	*ABS*
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	dbg_test_print
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL222+0x8>

0000003e <.LVL223>:
  3e:	00042a03          	lw	s4,0(s0)

00000042 <.LVL224>:
  42:	4601                	li	a2,0
  44:	086c                	addi	a1,sp,28
  46:	8552                	mv	a0,s4
  48:	00842b03          	lw	s6,8(s0)

0000004c <.LVL225>:
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	GetTxEAPOLBuffer
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL225>

00000054 <.LVL226>:
  54:	cd2d                	beqz	a0,ce <.L106>
			54: R_RISCV_RVC_BRANCH	.L106
  56:	008a2603          	lw	a2,8(s4)
  5a:	842a                	mv	s0,a0

0000005c <.LVL227>:
  5c:	4572                	lw	a0,28(sp)

0000005e <.LVL228>:
  5e:	4701                	li	a4,0
  60:	02c60693          	addi	a3,a2,44
  64:	85da                	mv	a1,s6
  66:	02660613          	addi	a2,a2,38
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	KeyMgmtSta_PrepareEAPOLFrame
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LVL228+0xc>

00000072 <.LVL229>:
  72:	4572                	lw	a0,28(sp)
  74:	4681                	li	a3,0
  76:	4605                	li	a2,1
  78:	040a8593          	addi	a1,s5,64
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	KeyMgmtSta_PopulateEAPOLLengthMic
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL229+0xa>

00000084 <.LVL230>:
  84:	c62a                	sw	a0,12(sp)

00000086 <.LVL231>:
  86:	8522                	mv	a0,s0
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	keyMgmtKeyGroupTxDone.isra.1
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL231+0x2>

00000090 <.LVL232>:
  90:	45b2                	lw	a1,12(sp)
  92:	8522                	mv	a0,s0
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	UpdateEAPOLWcbLenAndTransmit
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL232+0x4>

0000009c <.LBB467>:
  9c:	1209a583          	lw	a1,288(s3)

000000a0 <.LBE467>:
  a0:	00000537          	lui	a0,0x0
			a0: R_RISCV_HI20	.LC1
			a0: R_RISCV_RELAX	*ABS*
  a4:	00050513          	mv	a0,a0
			a4: R_RISCV_LO12_I	.LC1
			a4: R_RISCV_RELAX	*ABS*
  a8:	0295d5b3          	divu	a1,a1,s1
  ac:	00090613          	mv	a2,s2
			ac: R_RISCV_LO12_I	.LANCHOR19
			ac: R_RISCV_RELAX	*ABS*
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	dbg_test_print
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LBE467+0x10>

000000b8 <.LVL234>:
  b8:	4501                	li	a0,0

000000ba <.L105>:
  ba:	50f2                	lw	ra,60(sp)
  bc:	5462                	lw	s0,56(sp)
  be:	54d2                	lw	s1,52(sp)
  c0:	5942                	lw	s2,48(sp)
  c2:	59b2                	lw	s3,44(sp)
  c4:	5a22                	lw	s4,40(sp)

000000c6 <.LVL236>:
  c6:	5a92                	lw	s5,36(sp)

000000c8 <.LVL237>:
  c8:	5b02                	lw	s6,32(sp)

000000ca <.LVL238>:
  ca:	6121                	addi	sp,sp,64
  cc:	8082                	ret

000000ce <.L106>:
  ce:	4505                	li	a0,1

000000d0 <.LVL240>:
  d0:	b7ed                	j	ba <.L105>
			d0: R_RISCV_RVC_JUMP	.L105

Disassembly of section .text.KeyMgmtStaHsk_Recvd_GrpMsg1:

00000000 <KeyMgmtStaHsk_Recvd_GrpMsg1>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)

00000004 <.LVL242>:
   4:	c64e                	sw	s3,12(sp)
   6:	c452                	sw	s4,8(sp)
   8:	c256                	sw	s5,4(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)

00000010 <.LBB470>:
  10:	44b00ab7          	lui	s5,0x44b00
  14:	120aa583          	lw	a1,288(s5) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE470>:
  18:	3e800993          	li	s3,1000
  1c:	411c                	lw	a5,0(a0)
  1e:	0335d5b3          	divu	a1,a1,s3
  22:	892a                	mv	s2,a0
  24:	4780                	lw	s0,8(a5)
  26:	00000a37          	lui	s4,0x0
			26: R_RISCV_HI20	.LANCHOR20
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL243>:
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	000a0613          	mv	a2,s4
			32: R_RISCV_LO12_I	.LANCHOR20
			32: R_RISCV_RELAX	*ABS*
  36:	05440413          	addi	s0,s0,84

0000003a <.LBB475>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBB475>

00000042 <.LVL245>:
  42:	85a2                	mv	a1,s0
  44:	854a                	mv	a0,s2
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	ProcessRxEAPOL_GrpMsg1
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL245+0x4>

0000004e <.LVL246>:
  4e:	ed01                	bnez	a0,66 <.L109>
			4e: R_RISCV_RVC_BRANCH	.L109

00000050 <.L111>:
  50:	4481                	li	s1,0

00000052 <.L108>:
  52:	40f2                	lw	ra,28(sp)
  54:	4462                	lw	s0,24(sp)

00000056 <.LVL248>:
  56:	8526                	mv	a0,s1
  58:	4942                	lw	s2,16(sp)

0000005a <.LVL249>:
  5a:	44d2                	lw	s1,20(sp)
  5c:	49b2                	lw	s3,12(sp)
  5e:	4a22                	lw	s4,8(sp)
  60:	4a92                	lw	s5,4(sp)
  62:	6105                	addi	sp,sp,32
  64:	8082                	ret

00000066 <.L109>:
  66:	84aa                	mv	s1,a0
  68:	85a2                	mv	a1,s0
  6a:	854a                	mv	a0,s2

0000006c <.LVL251>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	GenerateGrpMsg2
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL251>

00000074 <.LVL252>:
  74:	fd71                	bnez	a0,50 <.L111>
			74: R_RISCV_RVC_BRANCH	.L111
  76:	00948593          	addi	a1,s1,9 # 9 <.LVL242+0x5>
  7a:	8522                	mv	a0,s0
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	updateApReplayCounter
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL252+0x8>

00000084 <.LBB476>:
  84:	120aa583          	lw	a1,288(s5)

00000088 <.LBE476>:
  88:	00000537          	lui	a0,0x0
			88: R_RISCV_HI20	.LC1
			88: R_RISCV_RELAX	*ABS*
  8c:	000a0613          	mv	a2,s4
			8c: R_RISCV_LO12_I	.LANCHOR20
			8c: R_RISCV_RELAX	*ABS*
  90:	0335d5b3          	divu	a1,a1,s3
  94:	00050513          	mv	a0,a0
			94: R_RISCV_LO12_I	.LC1
			94: R_RISCV_RELAX	*ABS*
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	dbg_test_print
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LBE476+0x10>

000000a0 <.LVL254>:
  a0:	bf4d                	j	52 <.L108>
			a0: R_RISCV_RVC_JUMP	.L108

Disassembly of section .text.add_mfp_key_to_mac:

00000000 <add_mfp_key_to_mac>:
   0:	7139                	addi	sp,sp,-64
   2:	de06                	sw	ra,60(sp)
   4:	dc22                	sw	s0,56(sp)
   6:	da26                	sw	s1,52(sp)
   8:	842a                	mv	s0,a0
   a:	d84a                	sw	s2,48(sp)
   c:	892e                	mv	s2,a1
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	keyMgmtGetKeySize
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <add_mfp_key_to_mac+0xe>

00000016 <.LVL256>:
  16:	0ff57493          	andi	s1,a0,255

0000001a <.LVL257>:
  1a:	02c00613          	li	a2,44
  1e:	4581                	li	a1,0
  20:	0048                	addi	a0,sp,4
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	memset
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL257+0x8>

0000002a <.LVL258>:
  2a:	00244783          	lbu	a5,2(s0)
  2e:	00910423          	sb	s1,8(sp)
  32:	02f106a3          	sb	a5,45(sp)
  36:	4795                	li	a5,5
  38:	02f10623          	sb	a5,44(sp)
  3c:	f0400793          	li	a5,-252
  40:	00f11223          	sh	a5,4(sp)
  44:	00044783          	lbu	a5,0(s0)
  48:	06090463          	beqz	s2,b0 <.L114>
			48: R_RISCV_BRANCH	.L114
  4c:	eb91                	bnez	a5,60 <.L115>
			4c: R_RISCV_RVC_BRANCH	.L115
  4e:	440c                	lw	a1,8(s0)
  50:	8626                	mv	a2,s1
  52:	0d858593          	addi	a1,a1,216 # d8 <.LVL348>

00000056 <.L117>:
  56:	0068                	addi	a0,sp,12
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	memcpy
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.L117+0x2>

00000060 <.L115>:
  60:	00814783          	lbu	a5,8(sp)
  64:	02c14703          	lbu	a4,44(sp)
  68:	00414683          	lbu	a3,4(sp)
  6c:	02d14603          	lbu	a2,45(sp)
  70:	00514583          	lbu	a1,5(sp)
  74:	00000537          	lui	a0,0x0
			74: R_RISCV_HI20	.LC5
			74: R_RISCV_RELAX	*ABS*
  78:	00050513          	mv	a0,a0
			78: R_RISCV_LO12_I	.LC5
			78: R_RISCV_RELAX	*ABS*
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	printf
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L115+0x1c>

00000084 <.LVL260>:
  84:	0048                	addi	a0,sp,4
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	mm_sec_machwkey_wr
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL260+0x2>

0000008e <.LVL261>:
  8e:	842a                	mv	s0,a0

00000090 <.LVL262>:
  90:	85aa                	mv	a1,a0
  92:	00000537          	lui	a0,0x0
			92: R_RISCV_HI20	.LC6
			92: R_RISCV_RELAX	*ABS*

00000096 <.LVL263>:
  96:	00050513          	mv	a0,a0
			96: R_RISCV_LO12_I	.LC6
			96: R_RISCV_RELAX	*ABS*
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	printf
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL263+0x4>

000000a2 <.LVL264>:
  a2:	8522                	mv	a0,s0
  a4:	50f2                	lw	ra,60(sp)
  a6:	5462                	lw	s0,56(sp)
  a8:	54d2                	lw	s1,52(sp)

000000aa <.LVL265>:
  aa:	5942                	lw	s2,48(sp)
  ac:	6121                	addi	sp,sp,64
  ae:	8082                	ret

000000b0 <.L114>:
  b0:	fbc5                	bnez	a5,60 <.L115>
			b0: R_RISCV_RVC_BRANCH	.L115
  b2:	440c                	lw	a1,8(s0)
  b4:	8626                	mv	a2,s1
  b6:	10058593          	addi	a1,a1,256
  ba:	bf71                	j	56 <.L117>
			ba: R_RISCV_RVC_JUMP	.L117

Disassembly of section .text.keyMgmtPlumbPairwiseKey:

00000000 <keyMgmtPlumbPairwiseKey>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)

00000008 <.LBB484>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000010 <.LBE484>:
  10:	3e800793          	li	a5,1000
  14:	842a                	mv	s0,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	000004b7          	lui	s1,0x0
			1a: R_RISCV_HI20	.LANCHOR21
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL268>:
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR21
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL268+0x8>

00000032 <.LVL269>:
  32:	4408                	lw	a0,8(s0)
  34:	02800613          	li	a2,40
  38:	12850593          	addi	a1,a0,296 # 128 <.LVL376>
  3c:	0d850513          	addi	a0,a0,216
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memcpy
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL269+0xe>

00000048 <.LVL270>:
  48:	4585                	li	a1,1
  4a:	8522                	mv	a0,s0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	add_key_to_mac
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL270+0x4>

00000054 <.LVL271>:
  54:	441c                	lw	a5,8(s0)
  56:	00a40223          	sb	a0,4(s0)
  5a:	03d7c703          	lbu	a4,61(a5)
  5e:	4799                	li	a5,6
  60:	00f71a63          	bne	a4,a5,74 <.L119>
			60: R_RISCV_BRANCH	.L119
  64:	4585                	li	a1,1
  66:	8522                	mv	a0,s0
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	add_mfp_key_to_mac
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL271+0x14>

00000070 <.LVL272>:
  70:	00a402a3          	sb	a0,5(s0)

00000074 <.L119>:
  74:	44b007b7          	lui	a5,0x44b00
  78:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000007c <.LBE485>:
  7c:	3e800793          	li	a5,1000
  80:	4422                	lw	s0,8(sp)

00000082 <.LVL273>:
  82:	02f5d5b3          	divu	a1,a1,a5
  86:	40b2                	lw	ra,12(sp)
  88:	00048613          	mv	a2,s1
			88: R_RISCV_LO12_I	.LANCHOR21
			88: R_RISCV_RELAX	*ABS*
  8c:	4492                	lw	s1,4(sp)
  8e:	00000537          	lui	a0,0x0
			8e: R_RISCV_HI20	.LC1
			8e: R_RISCV_RELAX	*ABS*
  92:	00050513          	mv	a0,a0
			92: R_RISCV_LO12_I	.LC1
			92: R_RISCV_RELAX	*ABS*
  96:	0141                	addi	sp,sp,16
  98:	00000317          	auipc	t1,0x0
			98: R_RISCV_CALL	dbg_test_print
			98: R_RISCV_RELAX	*ABS*
  9c:	00030067          	jr	t1 # 98 <.LVL273+0x16>

Disassembly of section .text.keyMgmtKeyPairwiseTxDone.isra.2:

00000000 <keyMgmtKeyPairwiseTxDone.isra.2>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB493>:
   c:	44b00937          	lui	s2,0x44b00
  10:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000014 <.LBE493>:
  14:	3e800413          	li	s0,1000
  18:	000004b7          	lui	s1,0x0
			18: R_RISCV_HI20	.LANCHOR22
			18: R_RISCV_RELAX	*ABS*
  1c:	0285d5b3          	divu	a1,a1,s0
  20:	89aa                	mv	s3,a0
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*
  26:	00048613          	mv	a2,s1
			26: R_RISCV_LO12_I	.LANCHOR22
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LBE493+0x1a>

00000036 <.LVL275>:
  36:	0009a983          	lw	s3,0(s3)

0000003a <.LVL276>:
  3a:	854e                	mv	a0,s3
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	keyMgmtPlumbPairwiseKey
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL276+0x2>

00000044 <.LVL277>:
  44:	0089a783          	lw	a5,8(s3)
  48:	4705                	li	a4,1
  4a:	00000537          	lui	a0,0x0
			4a: R_RISCV_HI20	.LC1
			4a: R_RISCV_RELAX	*ABS*
  4e:	0ce7a823          	sw	a4,208(a5)

00000052 <.LBB494>:
  52:	12092583          	lw	a1,288(s2)

00000056 <.LBE494>:
  56:	00048613          	mv	a2,s1
			56: R_RISCV_LO12_I	.LANCHOR22
			56: R_RISCV_RELAX	*ABS*
  5a:	00050513          	mv	a0,a0
			5a: R_RISCV_LO12_I	.LC1
			5a: R_RISCV_RELAX	*ABS*
  5e:	0285d5b3          	divu	a1,a1,s0
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	dbg_test_print
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LBE494+0xc>

0000006a <.LVL278>:
  6a:	40f2                	lw	ra,28(sp)
  6c:	4462                	lw	s0,24(sp)
  6e:	44d2                	lw	s1,20(sp)
  70:	4942                	lw	s2,16(sp)
  72:	49b2                	lw	s3,12(sp)

00000074 <.LVL279>:
  74:	4501                	li	a0,0
  76:	6105                	addi	sp,sp,32
  78:	8082                	ret

Disassembly of section .text.GeneratePWKMsg4:

00000000 <GeneratePWKMsg4>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	d84a                	sw	s2,48(sp)
   8:	d452                	sw	s4,40(sp)
   a:	d256                	sw	s5,36(sp)
   c:	d05a                	sw	s6,32(sp)
   e:	ce5e                	sw	s7,28(sp)
  10:	cc62                	sw	s8,24(sp)
  12:	ca66                	sw	s9,20(sp)
  14:	de06                	sw	ra,60(sp)
  16:	d64e                	sw	s3,44(sp)

00000018 <.LBB518>:
  18:	44b00937          	lui	s2,0x44b00

0000001c <.LBE518>:
  1c:	8c2e                	mv	s8,a1

0000001e <.LBB519>:
  1e:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF1134+0x44afb8fc>

00000022 <.LBE519>:
  22:	3e800493          	li	s1,1000
  26:	00000b37          	lui	s6,0x0
			26: R_RISCV_HI20	.LANCHOR23
			26: R_RISCV_RELAX	*ABS*
  2a:	0295d5b3          	divu	a1,a1,s1
  2e:	00000ab7          	lui	s5,0x0
			2e: R_RISCV_HI20	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	842a                	mv	s0,a0
  34:	8bb2                	mv	s7,a2
  36:	000a8513          	mv	a0,s5
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*

0000003a <.LVL282>:
  3a:	000b0613          	mv	a2,s6
			3a: R_RISCV_LO12_I	.LANCHOR23
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LVL283>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	dbg_test_print
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL283>

00000046 <.LVL284>:
  46:	00042a03          	lw	s4,0(s0)

0000004a <.LVL285>:
  4a:	4601                	li	a2,0
  4c:	006c                	addi	a1,sp,12
  4e:	8552                	mv	a0,s4
  50:	00842c83          	lw	s9,8(s0)

00000054 <.LVL286>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	GetTxEAPOLBuffer
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL286>

0000005c <.LVL287>:
  5c:	c971                	beqz	a0,130 <.L127>
			5c: R_RISCV_RVC_BRANCH	.L127
  5e:	008a2603          	lw	a2,8(s4) # 8 <GeneratePWKMsg4+0x8>
  62:	89aa                	mv	s3,a0
  64:	4532                	lw	a0,12(sp)

00000066 <.LVL288>:
  66:	4701                	li	a4,0
  68:	02c60693          	addi	a3,a2,44
  6c:	85e6                	mv	a1,s9
  6e:	02660613          	addi	a2,a2,38
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	KeyMgmtSta_PrepareEAPOLFrame
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL288+0xc>

0000007a <.LVL289>:
  7a:	4532                	lw	a0,12(sp)
  7c:	4681                	li	a3,0
  7e:	4605                	li	a2,1
  80:	040c0593          	addi	a1,s8,64
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	KeyMgmtSta_PopulateEAPOLLengthMic
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL289+0xa>

0000008c <.LVL290>:
  8c:	85aa                	mv	a1,a0
  8e:	854e                	mv	a0,s3

00000090 <.LVL291>:
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	UpdateEAPOLWcbLenAndTransmit
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL291>

00000098 <.LVL292>:
  98:	000009b7          	lui	s3,0x0
			98: R_RISCV_HI20	.LC1
			98: R_RISCV_RELAX	*ABS*

0000009c <.LVL293>:
  9c:	080b8463          	beqz	s7,124 <.L125>
			9c: R_RISCV_BRANCH	.L125

000000a0 <.LBB520>:
  a0:	12092583          	lw	a1,288(s2)

000000a4 <.LBE522>:
  a4:	00000a37          	lui	s4,0x0
			a4: R_RISCV_HI20	.LANCHOR24
			a4: R_RISCV_RELAX	*ABS*

000000a8 <.LVL295>:
  a8:	000a0613          	mv	a2,s4
			a8: R_RISCV_LO12_I	.LANCHOR24
			a8: R_RISCV_RELAX	*ABS*
  ac:	0295d5b3          	divu	a1,a1,s1
  b0:	000a8513          	mv	a0,s5
			b0: R_RISCV_LO12_I	.LC0
			b0: R_RISCV_RELAX	*ABS*
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	dbg_test_print
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL295+0xc>

000000bc <.LVL296>:
  bc:	8522                	mv	a0,s0
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	keyMgmtKeyPairwiseTxDone.isra.2
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL296+0x2>

000000c6 <.LVL297>:
  c6:	8522                	mv	a0,s0
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	keyMgmtKeyGroupTxDone.isra.1
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.LVL297+0x2>

000000d0 <.LBB525>:
  d0:	12092583          	lw	a1,288(s2)

000000d4 <.LBE525>:
  d4:	000a0613          	mv	a2,s4
			d4: R_RISCV_LO12_I	.LANCHOR24
			d4: R_RISCV_RELAX	*ABS*
  d8:	00098513          	mv	a0,s3
			d8: R_RISCV_LO12_I	.LC1
			d8: R_RISCV_RELAX	*ABS*
  dc:	0295d5b3          	divu	a1,a1,s1
  e0:	00000097          	auipc	ra,0x0
			e0: R_RISCV_CALL	dbg_test_print
			e0: R_RISCV_RELAX	*ABS*
  e4:	000080e7          	jalr	ra # e0 <.LBE525+0xc>

000000e8 <.L126>:
  e8:	44b007b7          	lui	a5,0x44b00
  ec:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

000000f0 <.LBE532>:
  f0:	3e800793          	li	a5,1000
  f4:	00098513          	mv	a0,s3
			f4: R_RISCV_LO12_I	.LC1
			f4: R_RISCV_RELAX	*ABS*
  f8:	02f5d5b3          	divu	a1,a1,a5
  fc:	000b0613          	mv	a2,s6
			fc: R_RISCV_LO12_I	.LANCHOR23
			fc: R_RISCV_RELAX	*ABS*
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	dbg_test_print
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.LBE532+0x10>

00000108 <.LVL300>:
 108:	4501                	li	a0,0

0000010a <.L124>:
 10a:	50f2                	lw	ra,60(sp)
 10c:	5462                	lw	s0,56(sp)

0000010e <.LVL301>:
 10e:	54d2                	lw	s1,52(sp)
 110:	5942                	lw	s2,48(sp)
 112:	59b2                	lw	s3,44(sp)
 114:	5a22                	lw	s4,40(sp)
 116:	5a92                	lw	s5,36(sp)
 118:	5b02                	lw	s6,32(sp)
 11a:	4bf2                	lw	s7,28(sp)

0000011c <.LVL302>:
 11c:	4c62                	lw	s8,24(sp)

0000011e <.LVL303>:
 11e:	4cd2                	lw	s9,20(sp)

00000120 <.LVL304>:
 120:	6121                	addi	sp,sp,64
 122:	8082                	ret

00000124 <.L125>:
 124:	8522                	mv	a0,s0
 126:	00000097          	auipc	ra,0x0
			126: R_RISCV_CALL	keyMgmtKeyPairwiseTxDone.isra.2
			126: R_RISCV_RELAX	*ABS*
 12a:	000080e7          	jalr	ra # 126 <.L125+0x2>

0000012e <.LVL306>:
 12e:	bf6d                	j	e8 <.L126>
			12e: R_RISCV_RVC_JUMP	.L126

00000130 <.L127>:
 130:	4505                	li	a0,1

00000132 <.LVL308>:
 132:	bfe1                	j	10a <.L124>
			132: R_RISCV_RVC_JUMP	.L124

Disassembly of section .text.KeyMgmtStaHsk_Recvd_PWKMsg3:

00000000 <KeyMgmtStaHsk_Recvd_PWKMsg3>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	cc22                	sw	s0,24(sp)

00000010 <.LBB535>:
  10:	44b00ab7          	lui	s5,0x44b00
  14:	120aa583          	lw	a1,288(s5) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE535>:
  18:	3e800993          	li	s3,1000
  1c:	4100                	lw	s0,0(a0)

0000001e <.LBB540>:
  1e:	0335d5b3          	divu	a1,a1,s3
  22:	892a                	mv	s2,a0
  24:	00000a37          	lui	s4,0x0
			24: R_RISCV_HI20	.LANCHOR25
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL311>:
  2c:	000a0613          	mv	a2,s4
			2c: R_RISCV_LO12_I	.LANCHOR25
			2c: R_RISCV_RELAX	*ABS*
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	dbg_test_print
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL311+0x8>

0000003c <.LVL312>:
  3c:	4404                	lw	s1,8(s0)
  3e:	854a                	mv	a0,s2
  40:	05448493          	addi	s1,s1,84 # 54 <.LVL315+0x4>

00000044 <.LVL313>:
  44:	85a6                	mv	a1,s1
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	ProcessRxEAPOL_PwkMsg3
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL313+0x2>

0000004e <.LVL314>:
  4e:	842a                	mv	s0,a0

00000050 <.LVL315>:
  50:	c139                	beqz	a0,96 <.L129>
			50: R_RISCV_RVC_BRANCH	.L129
  52:	00454603          	lbu	a2,4(a0) # 4 <KeyMgmtStaHsk_Recvd_PWKMsg3+0x4>
  56:	85a6                	mv	a1,s1
  58:	854a                	mv	a0,s2
  5a:	1679                	addi	a2,a2,-2
  5c:	00163613          	seqz	a2,a2
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	GeneratePWKMsg4
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL315+0x10>

00000068 <.LVL316>:
  68:	e51d                	bnez	a0,96 <.L129>
			68: R_RISCV_RVC_BRANCH	.L129
  6a:	00940593          	addi	a1,s0,9
  6e:	8526                	mv	a0,s1
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	updateApReplayCounter
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL316+0x8>

00000078 <.LBB541>:
  78:	120aa583          	lw	a1,288(s5)

0000007c <.LBE541>:
  7c:	00000537          	lui	a0,0x0
			7c: R_RISCV_HI20	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	000a0613          	mv	a2,s4
			80: R_RISCV_LO12_I	.LANCHOR25
			80: R_RISCV_RELAX	*ABS*
  84:	0335d5b3          	divu	a1,a1,s3
  88:	00050513          	mv	a0,a0
			88: R_RISCV_LO12_I	.LC1
			88: R_RISCV_RELAX	*ABS*
  8c:	4401                	li	s0,0

0000008e <.LVL318>:
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	dbg_test_print
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL318>

00000096 <.L129>:
  96:	8522                	mv	a0,s0
  98:	40f2                	lw	ra,28(sp)
  9a:	4462                	lw	s0,24(sp)
  9c:	44d2                	lw	s1,20(sp)

0000009e <.LVL320>:
  9e:	4942                	lw	s2,16(sp)

000000a0 <.LVL321>:
  a0:	49b2                	lw	s3,12(sp)
  a2:	4a22                	lw	s4,8(sp)
  a4:	4a92                	lw	s5,4(sp)
  a6:	6105                	addi	sp,sp,32
  a8:	8082                	ret

Disassembly of section .text.ProcessKeyMgmtDataSta:

00000000 <ProcessKeyMgmtDataSta>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	c84a                	sw	s2,16(sp)

0000000e <.LBB544>:
   e:	44b007b7          	lui	a5,0x44b00

00000012 <.LBE544>:
  12:	89ae                	mv	s3,a1

00000014 <.LBB551>:
  14:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000018 <.LBE551>:
  18:	3e800793          	li	a5,1000
  1c:	00852903          	lw	s2,8(a0) # 8 <ProcessKeyMgmtDataSta+0x8>

00000020 <.LBB552>:
  20:	02f5d5b3          	divu	a1,a1,a5
  24:	84aa                	mv	s1,a0
  26:	00000437          	lui	s0,0x0
			26: R_RISCV_HI20	.LANCHOR26
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL325>:
  2e:	8a32                	mv	s4,a2
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00040613          	mv	a2,s0
			34: R_RISCV_LO12_I	.LANCHOR26
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL326>:
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	dbg_test_print
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL326>

00000040 <.LVL327>:
  40:	00694783          	lbu	a5,6(s2)
  44:	8ba1                	andi	a5,a5,8
  46:	cbb9                	beqz	a5,9c <.L136>
			46: R_RISCV_RVC_BRANCH	.L136
  48:	00594783          	lbu	a5,5(s2)
  4c:	8b85                	andi	a5,a5,1
  4e:	cf9d                	beqz	a5,8c <.L137>
			4e: R_RISCV_RVC_BRANCH	.L137
  50:	8526                	mv	a0,s1
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	KeyMgmtStaHsk_Recvd_PWKMsg3
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL327+0x12>

0000005a <.L138>:
  5a:	44b007b7          	lui	a5,0x44b00
  5e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

00000062 <.LBE553>:
  62:	3e800793          	li	a5,1000
  66:	00040613          	mv	a2,s0
			66: R_RISCV_LO12_I	.LANCHOR26
			66: R_RISCV_RELAX	*ABS*
  6a:	02f5d5b3          	divu	a1,a1,a5
  6e:	4462                	lw	s0,24(sp)
  70:	40f2                	lw	ra,28(sp)
  72:	44d2                	lw	s1,20(sp)

00000074 <.LVL329>:
  74:	4942                	lw	s2,16(sp)

00000076 <.LVL330>:
  76:	49b2                	lw	s3,12(sp)

00000078 <.LVL331>:
  78:	4a22                	lw	s4,8(sp)

0000007a <.LVL332>:
  7a:	00000537          	lui	a0,0x0
			7a: R_RISCV_HI20	.LC1
			7a: R_RISCV_RELAX	*ABS*
  7e:	00050513          	mv	a0,a0
			7e: R_RISCV_LO12_I	.LC1
			7e: R_RISCV_RELAX	*ABS*
  82:	6105                	addi	sp,sp,32
  84:	00000317          	auipc	t1,0x0
			84: R_RISCV_CALL	dbg_test_print
			84: R_RISCV_RELAX	*ABS*
  88:	00030067          	jr	t1 # 84 <.LVL332+0xa>

0000008c <.L137>:
  8c:	8652                	mv	a2,s4
  8e:	85ce                	mv	a1,s3
  90:	8526                	mv	a0,s1
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	KeyMgmtStaHsk_Recvd_PWKMsg1
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.L137+0x6>

0000009a <.LVL334>:
  9a:	b7c1                	j	5a <.L138>
			9a: R_RISCV_RVC_JUMP	.L138

0000009c <.L136>:
  9c:	8526                	mv	a0,s1
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	KeyMgmtStaHsk_Recvd_GrpMsg1
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.L136+0x2>

000000a6 <.LVL335>:
  a6:	bf55                	j	5a <.L138>
			a6: R_RISCV_RVC_JUMP	.L138

Disassembly of section .text.ProcessEAPoLPkt:

00000000 <ProcessEAPoLPkt>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	ca56                	sw	s5,20(sp)
   e:	c85a                	sw	s6,16(sp)
  10:	c65e                	sw	s7,12(sp)
  12:	d606                	sw	ra,44(sp)

00000014 <.LBB577>:
  14:	44b00437          	lui	s0,0x44b00

00000018 <.LBE577>:
  18:	8b2e                	mv	s6,a1

0000001a <.LBB578>:
  1a:	12042583          	lw	a1,288(s0) # 44b00120 <.LASF1134+0x44afb8fc>

0000001e <.LBE578>:
  1e:	3e800993          	li	s3,1000
  22:	00000a37          	lui	s4,0x0
			22: R_RISCV_HI20	.LANCHOR27
			22: R_RISCV_RELAX	*ABS*
  26:	0335d5b3          	divu	a1,a1,s3
  2a:	00000937          	lui	s2,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	84aa                	mv	s1,a0
  30:	8bb2                	mv	s7,a2
  32:	00090513          	mv	a0,s2
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL338>:
  36:	000a0613          	mv	a2,s4
			36: R_RISCV_LO12_I	.LANCHOR27
			36: R_RISCV_RELAX	*ABS*

0000003a <.LVL339>:
  3a:	00000ab7          	lui	s5,0x0
			3a: R_RISCV_HI20	.LC1
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	dbg_test_print
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL339+0x4>

00000046 <.LVL340>:
  46:	449c                	lw	a5,8(s1)
  48:	0017c703          	lbu	a4,1(a5)
  4c:	478d                	li	a5,3
  4e:	0af71063          	bne	a4,a5,ee <.L144>
			4e: R_RISCV_BRANCH	.L144

00000052 <.LBB579>:
  52:	12042583          	lw	a1,288(s0)

00000056 <.LBE581>:
  56:	00000437          	lui	s0,0x0
			56: R_RISCV_HI20	.LANCHOR28
			56: R_RISCV_RELAX	*ABS*
  5a:	00040613          	mv	a2,s0
			5a: R_RISCV_LO12_I	.LANCHOR28
			5a: R_RISCV_RELAX	*ABS*
  5e:	0335d5b3          	divu	a1,a1,s3
  62:	00090513          	mv	a0,s2
			62: R_RISCV_LO12_I	.LC0
			62: R_RISCV_RELAX	*ABS*
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	dbg_test_print
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LBE581+0x10>

0000006e <.LVL342>:
  6e:	409c                	lw	a5,0(s1)
  70:	0007c703          	lbu	a4,0(a5)
  74:	4789                	li	a5,2
  76:	06f71463          	bne	a4,a5,de <.L142>
			76: R_RISCV_BRANCH	.L142
  7a:	8526                	mv	a0,s1
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	ProcessKeyMgmtDataAp
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL342+0xe>

00000084 <.L143>:
  84:	44b007b7          	lui	a5,0x44b00
  88:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

0000008c <.LBE584>:
  8c:	3e800793          	li	a5,1000
  90:	00040613          	mv	a2,s0
			90: R_RISCV_LO12_I	.LANCHOR28
			90: R_RISCV_RELAX	*ABS*
  94:	02f5d5b3          	divu	a1,a1,a5
  98:	000a8513          	mv	a0,s5
			98: R_RISCV_LO12_I	.LC1
			98: R_RISCV_RELAX	*ABS*

0000009c <.LBE592>:
  9c:	4405                	li	s0,1

0000009e <.LBB593>:
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	dbg_test_print
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LBB593>

000000a6 <.L141>:
  a6:	44b007b7          	lui	a5,0x44b00
  aa:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF1134+0x44afb8fc>

000000ae <.LBE594>:
  ae:	3e800793          	li	a5,1000
  b2:	000a8513          	mv	a0,s5
			b2: R_RISCV_LO12_I	.LC1
			b2: R_RISCV_RELAX	*ABS*
  b6:	02f5d5b3          	divu	a1,a1,a5
  ba:	000a0613          	mv	a2,s4
			ba: R_RISCV_LO12_I	.LANCHOR27
			ba: R_RISCV_RELAX	*ABS*
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	dbg_test_print
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LBE594+0x10>

000000c6 <.LVL345>:
  c6:	8522                	mv	a0,s0
  c8:	50b2                	lw	ra,44(sp)
  ca:	5422                	lw	s0,40(sp)

000000cc <.LVL346>:
  cc:	5492                	lw	s1,36(sp)

000000ce <.LVL347>:
  ce:	5902                	lw	s2,32(sp)
  d0:	49f2                	lw	s3,28(sp)
  d2:	4a62                	lw	s4,24(sp)
  d4:	4ad2                	lw	s5,20(sp)
  d6:	4b42                	lw	s6,16(sp)

000000d8 <.LVL348>:
  d8:	4bb2                	lw	s7,12(sp)

000000da <.LVL349>:
  da:	6145                	addi	sp,sp,48
  dc:	8082                	ret

000000de <.L142>:
  de:	865e                	mv	a2,s7
  e0:	85da                	mv	a1,s6
  e2:	8526                	mv	a0,s1
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	ProcessKeyMgmtDataSta
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.L142+0x6>

000000ec <.LVL351>:
  ec:	bf61                	j	84 <.L143>
			ec: R_RISCV_RVC_JUMP	.L143

000000ee <.L144>:
  ee:	4401                	li	s0,0
  f0:	bf5d                	j	a6 <.L141>
			f0: R_RISCV_RVC_JUMP	.L141

Disassembly of section .text.supplicantRemoveKeyInfo:

00000000 <supplicantRemoveKeyInfo>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB603>:
   e:	44b009b7          	lui	s3,0x44b00
  12:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF1134+0x44afb8fc>

00000016 <.LBE603>:
  16:	3e800493          	li	s1,1000
  1a:	842a                	mv	s0,a0
  1c:	0295d5b3          	divu	a1,a1,s1
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LANCHOR29
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL354>:
  28:	00090613          	mv	a2,s2
			28: R_RISCV_LO12_I	.LANCHOR29
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	5a7d                	li	s4,-1
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL354+0xa>

0000003a <.LVL355>:
  3a:	00444503          	lbu	a0,4(s0) # 4 <supplicantRemoveKeyInfo+0x4>
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	mm_sec_machwkey_del
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL355+0x4>

00000046 <.LVL356>:
  46:	00344503          	lbu	a0,3(s0)
  4a:	01440223          	sb	s4,4(s0)
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	mm_sec_machwkey_del
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL356+0x8>

00000056 <.LVL357>:
  56:	01440223          	sb	s4,4(s0)

0000005a <.LBB604>:
  5a:	1209a583          	lw	a1,288(s3)

0000005e <.LBE604>:
  5e:	4462                	lw	s0,24(sp)

00000060 <.LVL358>:
  60:	40f2                	lw	ra,28(sp)
  62:	0295d5b3          	divu	a1,a1,s1
  66:	49b2                	lw	s3,12(sp)
  68:	44d2                	lw	s1,20(sp)
  6a:	4a22                	lw	s4,8(sp)
  6c:	00090613          	mv	a2,s2
			6c: R_RISCV_LO12_I	.LANCHOR29
			6c: R_RISCV_RELAX	*ABS*
  70:	4942                	lw	s2,16(sp)
  72:	00000537          	lui	a0,0x0
			72: R_RISCV_HI20	.LC1
			72: R_RISCV_RELAX	*ABS*
  76:	00050513          	mv	a0,a0
			76: R_RISCV_LO12_I	.LC1
			76: R_RISCV_RELAX	*ABS*
  7a:	6105                	addi	sp,sp,32
  7c:	00000317          	auipc	t1,0x0
			7c: R_RISCV_CALL	dbg_test_print
			7c: R_RISCV_RELAX	*ABS*
  80:	00030067          	jr	t1 # 7c <.LVL358+0x1c>

Disassembly of section .text.process_rsn_ie:

00000000 <process_rsn_ie>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	c2a6                	sw	s1,68(sp)
   6:	c0ca                	sw	s2,64(sp)
   8:	dc52                	sw	s4,56(sp)
   a:	da56                	sw	s5,52(sp)
   c:	d85a                	sw	s6,48(sp)
   e:	d65e                	sw	s7,44(sp)
  10:	d462                	sw	s8,40(sp)
  12:	c686                	sw	ra,76(sp)
  14:	de4e                	sw	s3,60(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	ce6e                	sw	s11,28(sp)
  1c:	8bbe                	mv	s7,a5
  1e:	00954783          	lbu	a5,9(a0) # 9 <process_rsn_ie+0x9>

00000022 <.LVL361>:
  22:	893a                	mv	s2,a4
  24:	00854703          	lbu	a4,8(a0)

00000028 <.LVL362>:
  28:	07a2                	slli	a5,a5,0x8
  2a:	842a                	mv	s0,a0
  2c:	8fd9                	or	a5,a5,a4
  2e:	4709                	li	a4,2
  30:	84ae                	mv	s1,a1
  32:	8ab2                	mv	s5,a2
  34:	8c36                	mv	s8,a3
  36:	00e50a13          	addi	s4,a0,14
  3a:	00a50b13          	addi	s6,a0,10
  3e:	04e79663          	bne	a5,a4,8a <.L149>
			3e: R_RISCV_BRANCH	.L149
  42:	00154783          	lbu	a5,1(a0)
  46:	000005b7          	lui	a1,0x0
			46: R_RISCV_HI20	wpa2_oui04
			46: R_RISCV_RELAX	*ABS*

0000004a <.LVL363>:
  4a:	000504a3          	sb	zero,9(a0)
  4e:	17f1                	addi	a5,a5,-4
  50:	00f500a3          	sb	a5,1(a0)
  54:	4785                	li	a5,1
  56:	00f50423          	sb	a5,8(a0)
  5a:	4611                	li	a2,4

0000005c <.LVL364>:
  5c:	00058593          	mv	a1,a1
			5c: R_RISCV_LO12_I	wpa2_oui04
			5c: R_RISCV_RELAX	*ABS*
  60:	8552                	mv	a0,s4

00000062 <.LVL365>:
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	memcmp
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL365>

0000006a <.LVL366>:
  6a:	e901                	bnez	a0,7a <.L150>
			6a: R_RISCV_RVC_BRANCH	.L150
  6c:	4611                	li	a2,4
  6e:	85d2                	mv	a1,s4
  70:	855a                	mv	a0,s6
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	memcpy
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL366+0x8>

0000007a <.L150>:
  7a:	4631                	li	a2,12
  7c:	01240593          	addi	a1,s0,18
  80:	8552                	mv	a0,s4
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	memcpy
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.L150+0x8>

0000008a <.L149>:
  8a:	4609                	li	a2,2
  8c:	85d2                	mv	a1,s4
  8e:	00e10513          	addi	a0,sp,14
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	memcpy
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.L149+0x8>

0000009a <.LBB607>:
  9a:	4781                	li	a5,0

0000009c <.LBB608>:
  9c:	00000cb7          	lui	s9,0x0
			9c: R_RISCV_HI20	wpa2_oui02
			9c: R_RISCV_RELAX	*ABS*
  a0:	00000d37          	lui	s10,0x0
			a0: R_RISCV_HI20	wpa2_oui08
			a0: R_RISCV_RELAX	*ABS*

000000a4 <.L151>:
  a4:	00e15703          	lhu	a4,14(sp)
  a8:	12e7e363          	bltu	a5,a4,1ce <.L154>
			a8: R_RISCV_BRANCH	.L154

000000ac <.LBE607>:
  ac:	4789                	li	a5,2

000000ae <.LVL371>:
  ae:	04f71f63          	bne	a4,a5,10c <.L155>
			ae: R_RISCV_BRANCH	.L155
  b2:	47d1                	li	a5,20
  b4:	00f400a3          	sb	a5,1(s0)
  b8:	4609                	li	a2,2
  ba:	4785                	li	a5,1
  bc:	00e10593          	addi	a1,sp,14
  c0:	8552                	mv	a0,s4
  c2:	00f11723          	sh	a5,14(sp)
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	memcpy
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.LVL371+0x18>

000000ce <.LVL372>:
  ce:	01440993          	addi	s3,s0,20
  d2:	4611                	li	a2,4
  d4:	140b8563          	beqz	s7,21e <.L156>
			d4: R_RISCV_BRANCH	.L156
  d8:	000005b7          	lui	a1,0x0
			d8: R_RISCV_HI20	wpa2_oui02
			d8: R_RISCV_RELAX	*ABS*
  dc:	00058593          	mv	a1,a1
			dc: R_RISCV_LO12_I	wpa2_oui02
			dc: R_RISCV_RELAX	*ABS*

000000e0 <.L179>:
  e0:	854e                	mv	a0,s3
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	memcmp
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.L179+0x2>

000000ea <.LVL373>:
  ea:	e909                	bnez	a0,fc <.L158>
			ea: R_RISCV_RVC_BRANCH	.L158
  ec:	4619                	li	a2,6
  ee:	85ce                	mv	a1,s3
  f0:	01040513          	addi	a0,s0,16
  f4:	00000097          	auipc	ra,0x0
			f4: R_RISCV_CALL	memcpy
			f4: R_RISCV_RELAX	*ABS*
  f8:	000080e7          	jalr	ra # f4 <.LVL373+0xa>

000000fc <.L158>:
  fc:	4609                	li	a2,2
  fe:	01840593          	addi	a1,s0,24
 102:	854e                	mv	a0,s3
 104:	00000097          	auipc	ra,0x0
			104: R_RISCV_CALL	memcpy
			104: R_RISCV_RELAX	*ABS*
 108:	000080e7          	jalr	ra # 104 <.L158+0x8>

0000010c <.L155>:
 10c:	00194783          	lbu	a5,1(s2) # 1 <process_rsn_ie+0x1>
 110:	8b85                	andi	a5,a5,1
 112:	cba1                	beqz	a5,162 <.L160>
			112: R_RISCV_RVC_BRANCH	.L160
 114:	00094783          	lbu	a5,0(s2)
 118:	0207f793          	andi	a5,a5,32
 11c:	c399                	beqz	a5,122 <.L161>
			11c: R_RISCV_RVC_BRANCH	.L161
 11e:	040b9263          	bnez	s7,162 <.L160>
			11e: R_RISCV_BRANCH	.L160

00000122 <.L161>:
 122:	4785                	li	a5,1
 124:	00fc0023          	sb	a5,0(s8)

00000128 <.LVL376>:
 128:	fc000793          	li	a5,-64
 12c:	00f40a23          	sb	a5,20(s0)

00000130 <.LVL377>:
 130:	00144783          	lbu	a5,1(s0)
 134:	000005b7          	lui	a1,0x0
			134: R_RISCV_HI20	wpa2_oui06
			134: R_RISCV_RELAX	*ABS*
 138:	00040b23          	sb	zero,22(s0)
 13c:	0789                	addi	a5,a5,2
 13e:	00f400a3          	sb	a5,1(s0)
 142:	00040ba3          	sb	zero,23(s0)
 146:	4611                	li	a2,4
 148:	00058593          	mv	a1,a1
			148: R_RISCV_LO12_I	wpa2_oui06
			148: R_RISCV_RELAX	*ABS*
 14c:	01840513          	addi	a0,s0,24
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	memcpy
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.LVL377+0x20>

00000158 <.LVL378>:
 158:	00144783          	lbu	a5,1(s0)
 15c:	0791                	addi	a5,a5,4
 15e:	00f400a3          	sb	a5,1(s0)

00000162 <.L160>:
 162:	000009b7          	lui	s3,0x0
			162: R_RISCV_HI20	wpa2_oui04
			162: R_RISCV_RELAX	*ABS*
 166:	4611                	li	a2,4
 168:	00098593          	mv	a1,s3
			168: R_RISCV_LO12_I	wpa2_oui04
			168: R_RISCV_RELAX	*ABS*
 16c:	855a                	mv	a0,s6
 16e:	00000097          	auipc	ra,0x0
			16e: R_RISCV_CALL	memcmp
			16e: R_RISCV_RELAX	*ABS*
 172:	000080e7          	jalr	ra # 16e <.L160+0xc>

00000176 <.LVL380>:
 176:	e94d                	bnez	a0,228 <.L162>
			176: R_RISCV_RVC_BRANCH	.L162
 178:	000ac783          	lbu	a5,0(s5) # 0 <process_rsn_ie>
 17c:	0087e793          	ori	a5,a5,8

00000180 <.L176>:
 180:	00fa8023          	sb	a5,0(s5)

00000184 <.L163>:
 184:	00440913          	addi	s2,s0,4

00000188 <.LVL381>:
 188:	4611                	li	a2,4
 18a:	00098593          	mv	a1,s3
			18a: R_RISCV_LO12_I	wpa2_oui04
			18a: R_RISCV_RELAX	*ABS*
 18e:	854a                	mv	a0,s2
 190:	00000097          	auipc	ra,0x0
			190: R_RISCV_CALL	memcmp
			190: R_RISCV_RELAX	*ABS*
 194:	000080e7          	jalr	ra # 190 <.LVL381+0x8>

00000198 <.LVL382>:
 198:	e945                	bnez	a0,248 <.L164>
			198: R_RISCV_RVC_BRANCH	.L164
 19a:	0004c783          	lbu	a5,0(s1)
 19e:	0087e793          	ori	a5,a5,8

000001a2 <.L177>:
 1a2:	00f48023          	sb	a5,0(s1)

000001a6 <.L165>:
 1a6:	00144503          	lbu	a0,1(s0)
 1aa:	40b6                	lw	ra,76(sp)
 1ac:	4426                	lw	s0,72(sp)

000001ae <.LVL383>:
 1ae:	0509                	addi	a0,a0,2
 1b0:	4496                	lw	s1,68(sp)

000001b2 <.LVL384>:
 1b2:	4906                	lw	s2,64(sp)

000001b4 <.LVL385>:
 1b4:	59f2                	lw	s3,60(sp)
 1b6:	5a62                	lw	s4,56(sp)
 1b8:	5ad2                	lw	s5,52(sp)

000001ba <.LVL386>:
 1ba:	5b42                	lw	s6,48(sp)

000001bc <.LVL387>:
 1bc:	5bb2                	lw	s7,44(sp)
 1be:	5c22                	lw	s8,40(sp)

000001c0 <.LVL388>:
 1c0:	5c92                	lw	s9,36(sp)
 1c2:	5d02                	lw	s10,32(sp)
 1c4:	4df2                	lw	s11,28(sp)
 1c6:	0ff57513          	andi	a0,a0,255
 1ca:	6161                	addi	sp,sp,80
 1cc:	8082                	ret

000001ce <.L154>:
 1ce:	00178993          	addi	s3,a5,1
 1d2:	00299d93          	slli	s11,s3,0x2
 1d6:	0d89                	addi	s11,s11,2
 1d8:	9dda                	add	s11,s11,s6

000001da <.LVL390>:
 1da:	4611                	li	a2,4
 1dc:	000c8593          	mv	a1,s9
			1dc: R_RISCV_LO12_I	wpa2_oui02
			1dc: R_RISCV_RELAX	*ABS*
 1e0:	856e                	mv	a0,s11
 1e2:	00000097          	auipc	ra,0x0
			1e2: R_RISCV_CALL	memcmp
			1e2: R_RISCV_RELAX	*ABS*
 1e6:	000080e7          	jalr	ra # 1e2 <.LVL390+0x8>

000001ea <.LVL391>:
 1ea:	e911                	bnez	a0,1fe <.L152>
			1ea: R_RISCV_RVC_BRANCH	.L152
 1ec:	00094783          	lbu	a5,0(s2)
 1f0:	0207e793          	ori	a5,a5,32
 1f4:	00f90023          	sb	a5,0(s2)

000001f8 <.L153>:
 1f8:	0ff9f793          	andi	a5,s3,255

000001fc <.LVL392>:
 1fc:	b565                	j	a4 <.L151>
			1fc: R_RISCV_RVC_JUMP	.L151

000001fe <.L152>:
 1fe:	4611                	li	a2,4
 200:	000d0593          	mv	a1,s10
			200: R_RISCV_LO12_I	wpa2_oui08
			200: R_RISCV_RELAX	*ABS*
 204:	856e                	mv	a0,s11
 206:	00000097          	auipc	ra,0x0
			206: R_RISCV_CALL	memcmp
			206: R_RISCV_RELAX	*ABS*
 20a:	000080e7          	jalr	ra # 206 <.L152+0x8>

0000020e <.LVL394>:
 20e:	f56d                	bnez	a0,1f8 <.L153>
			20e: R_RISCV_RVC_BRANCH	.L153
 210:	00194783          	lbu	a5,1(s2)
 214:	0017e793          	ori	a5,a5,1
 218:	00f900a3          	sb	a5,1(s2)
 21c:	bff1                	j	1f8 <.L153>
			21c: R_RISCV_RVC_JUMP	.L153

0000021e <.L156>:
 21e:	000005b7          	lui	a1,0x0
			21e: R_RISCV_HI20	wpa2_oui08
			21e: R_RISCV_RELAX	*ABS*
 222:	00058593          	mv	a1,a1
			222: R_RISCV_LO12_I	wpa2_oui08
			222: R_RISCV_RELAX	*ABS*
 226:	bd6d                	j	e0 <.L179>
			226: R_RISCV_RVC_JUMP	.L179

00000228 <.L162>:
 228:	000005b7          	lui	a1,0x0
			228: R_RISCV_HI20	wpa2_oui02
			228: R_RISCV_RELAX	*ABS*
 22c:	4611                	li	a2,4
 22e:	00058593          	mv	a1,a1
			22e: R_RISCV_LO12_I	wpa2_oui02
			22e: R_RISCV_RELAX	*ABS*
 232:	855a                	mv	a0,s6
 234:	00000097          	auipc	ra,0x0
			234: R_RISCV_CALL	memcmp
			234: R_RISCV_RELAX	*ABS*
 238:	000080e7          	jalr	ra # 234 <.L162+0xc>

0000023c <.LVL396>:
 23c:	f521                	bnez	a0,184 <.L163>
			23c: R_RISCV_RVC_BRANCH	.L163
 23e:	000ac783          	lbu	a5,0(s5)
 242:	0047e793          	ori	a5,a5,4
 246:	bf2d                	j	180 <.L176>
			246: R_RISCV_RVC_JUMP	.L176

00000248 <.L164>:
 248:	000005b7          	lui	a1,0x0
			248: R_RISCV_HI20	wpa2_oui02
			248: R_RISCV_RELAX	*ABS*
 24c:	4611                	li	a2,4
 24e:	00058593          	mv	a1,a1
			24e: R_RISCV_LO12_I	wpa2_oui02
			24e: R_RISCV_RELAX	*ABS*
 252:	854a                	mv	a0,s2
 254:	00000097          	auipc	ra,0x0
			254: R_RISCV_CALL	memcmp
			254: R_RISCV_RELAX	*ABS*
 258:	000080e7          	jalr	ra # 254 <.L164+0xc>

0000025c <.LVL398>:
 25c:	e511                	bnez	a0,268 <.L166>
			25c: R_RISCV_RVC_BRANCH	.L166
 25e:	0004c783          	lbu	a5,0(s1)
 262:	0047e793          	ori	a5,a5,4
 266:	bf35                	j	1a2 <.L177>
			266: R_RISCV_RVC_JUMP	.L177

00000268 <.L166>:
 268:	000005b7          	lui	a1,0x0
			268: R_RISCV_HI20	wpa2_oui05
			268: R_RISCV_RELAX	*ABS*
 26c:	4611                	li	a2,4
 26e:	00058593          	mv	a1,a1
			26e: R_RISCV_LO12_I	wpa2_oui05
			26e: R_RISCV_RELAX	*ABS*
 272:	854a                	mv	a0,s2
 274:	00000097          	auipc	ra,0x0
			274: R_RISCV_CALL	memcmp
			274: R_RISCV_RELAX	*ABS*
 278:	000080e7          	jalr	ra # 274 <.L166+0xc>

0000027c <.LVL399>:
 27c:	e511                	bnez	a0,288 <.L167>
			27c: R_RISCV_RVC_BRANCH	.L167
 27e:	0004c783          	lbu	a5,0(s1)
 282:	0027e793          	ori	a5,a5,2
 286:	bf31                	j	1a2 <.L177>
			286: R_RISCV_RVC_JUMP	.L177

00000288 <.L167>:
 288:	000005b7          	lui	a1,0x0
			288: R_RISCV_HI20	wpa2_oui01
			288: R_RISCV_RELAX	*ABS*
 28c:	4611                	li	a2,4
 28e:	00058593          	mv	a1,a1
			28e: R_RISCV_LO12_I	wpa2_oui01
			28e: R_RISCV_RELAX	*ABS*
 292:	854a                	mv	a0,s2
 294:	00000097          	auipc	ra,0x0
			294: R_RISCV_CALL	memcmp
			294: R_RISCV_RELAX	*ABS*
 298:	000080e7          	jalr	ra # 294 <.L167+0xc>

0000029c <.LVL400>:
 29c:	f509                	bnez	a0,1a6 <.L165>
			29c: R_RISCV_RVC_BRANCH	.L165
 29e:	0004c783          	lbu	a5,0(s1)
 2a2:	0017e793          	ori	a5,a5,1
 2a6:	bdf5                	j	1a2 <.L177>
			2a6: R_RISCV_RVC_JUMP	.L177

Disassembly of section .text.process_wpa_ie:

00000000 <process_wpa_ie>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c256                	sw	s5,4(sp)
  10:	00d54783          	lbu	a5,13(a0)
  14:	00c54703          	lbu	a4,12(a0)
  18:	842a                	mv	s0,a0
  1a:	07a2                	slli	a5,a5,0x8
  1c:	8fd9                	or	a5,a5,a4
  1e:	4709                	li	a4,2
  20:	84ae                	mv	s1,a1
  22:	8932                	mv	s2,a2
  24:	00e50a13          	addi	s4,a0,14
  28:	000009b7          	lui	s3,0x0
			28: R_RISCV_HI20	wpa_oui04
			28: R_RISCV_RELAX	*ABS*
  2c:	04e79463          	bne	a5,a4,74 <.L181>
			2c: R_RISCV_BRANCH	.L181
  30:	47d9                	li	a5,22
  32:	00f500a3          	sb	a5,1(a0)
  36:	01250a93          	addi	s5,a0,18
  3a:	4785                	li	a5,1
  3c:	00f50623          	sb	a5,12(a0)
  40:	000506a3          	sb	zero,13(a0)
  44:	4611                	li	a2,4

00000046 <.LVL402>:
  46:	00098593          	mv	a1,s3
			46: R_RISCV_LO12_I	wpa_oui04
			46: R_RISCV_RELAX	*ABS*

0000004a <.LVL403>:
  4a:	8556                	mv	a0,s5

0000004c <.LVL404>:
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memcmp
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL404>

00000054 <.LVL405>:
  54:	e901                	bnez	a0,64 <.L182>
			54: R_RISCV_RVC_BRANCH	.L182
  56:	4611                	li	a2,4
  58:	85d6                	mv	a1,s5
  5a:	8552                	mv	a0,s4
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	memcpy
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL405+0x8>

00000064 <.L182>:
  64:	4621                	li	a2,8
  66:	01640593          	addi	a1,s0,22
  6a:	8556                	mv	a0,s5
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	memcpy
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.L182+0x8>

00000074 <.L181>:
  74:	4611                	li	a2,4
  76:	00098593          	mv	a1,s3
			76: R_RISCV_LO12_I	wpa_oui04
			76: R_RISCV_RELAX	*ABS*
  7a:	8552                	mv	a0,s4
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	memcmp
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L181+0x8>

00000084 <.LVL408>:
  84:	e531                	bnez	a0,d0 <.L183>
			84: R_RISCV_RVC_BRANCH	.L183
  86:	00094783          	lbu	a5,0(s2)
  8a:	0087e793          	ori	a5,a5,8

0000008e <.L190>:
  8e:	00f90023          	sb	a5,0(s2)

00000092 <.L184>:
  92:	00840913          	addi	s2,s0,8

00000096 <.LVL409>:
  96:	4611                	li	a2,4
  98:	00098593          	mv	a1,s3
			98: R_RISCV_LO12_I	wpa_oui04
			98: R_RISCV_RELAX	*ABS*
  9c:	854a                	mv	a0,s2
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	memcmp
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LVL409+0x8>

000000a6 <.LVL410>:
  a6:	e529                	bnez	a0,f0 <.L185>
			a6: R_RISCV_RVC_BRANCH	.L185
  a8:	0004c783          	lbu	a5,0(s1)
  ac:	0087e793          	ori	a5,a5,8

000000b0 <.L191>:
  b0:	00f48023          	sb	a5,0(s1)

000000b4 <.L186>:
  b4:	00144503          	lbu	a0,1(s0)
  b8:	40f2                	lw	ra,28(sp)
  ba:	4462                	lw	s0,24(sp)

000000bc <.LVL411>:
  bc:	0509                	addi	a0,a0,2
  be:	44d2                	lw	s1,20(sp)

000000c0 <.LVL412>:
  c0:	4942                	lw	s2,16(sp)

000000c2 <.LVL413>:
  c2:	49b2                	lw	s3,12(sp)
  c4:	4a22                	lw	s4,8(sp)

000000c6 <.LVL414>:
  c6:	4a92                	lw	s5,4(sp)
  c8:	0ff57513          	andi	a0,a0,255
  cc:	6105                	addi	sp,sp,32
  ce:	8082                	ret

000000d0 <.L183>:
  d0:	000005b7          	lui	a1,0x0
			d0: R_RISCV_HI20	wpa_oui02
			d0: R_RISCV_RELAX	*ABS*
  d4:	4611                	li	a2,4
  d6:	00058593          	mv	a1,a1
			d6: R_RISCV_LO12_I	wpa_oui02
			d6: R_RISCV_RELAX	*ABS*
  da:	8552                	mv	a0,s4
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	memcmp
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.L183+0xc>

000000e4 <.LVL416>:
  e4:	f55d                	bnez	a0,92 <.L184>
			e4: R_RISCV_RVC_BRANCH	.L184
  e6:	00094783          	lbu	a5,0(s2)
  ea:	0047e793          	ori	a5,a5,4
  ee:	b745                	j	8e <.L190>
			ee: R_RISCV_RVC_JUMP	.L190

000000f0 <.L185>:
  f0:	000005b7          	lui	a1,0x0
			f0: R_RISCV_HI20	wpa_oui02
			f0: R_RISCV_RELAX	*ABS*
  f4:	4611                	li	a2,4
  f6:	00058593          	mv	a1,a1
			f6: R_RISCV_LO12_I	wpa_oui02
			f6: R_RISCV_RELAX	*ABS*
  fa:	854a                	mv	a0,s2
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	memcmp
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.L185+0xc>

00000104 <.LVL418>:
 104:	e511                	bnez	a0,110 <.L187>
			104: R_RISCV_RVC_BRANCH	.L187
 106:	0004c783          	lbu	a5,0(s1)
 10a:	0047e793          	ori	a5,a5,4
 10e:	b74d                	j	b0 <.L191>
			10e: R_RISCV_RVC_JUMP	.L191

00000110 <.L187>:
 110:	000005b7          	lui	a1,0x0
			110: R_RISCV_HI20	wpa_oui05
			110: R_RISCV_RELAX	*ABS*
 114:	4611                	li	a2,4
 116:	00058593          	mv	a1,a1
			116: R_RISCV_LO12_I	wpa_oui05
			116: R_RISCV_RELAX	*ABS*
 11a:	854a                	mv	a0,s2
 11c:	00000097          	auipc	ra,0x0
			11c: R_RISCV_CALL	memcmp
			11c: R_RISCV_RELAX	*ABS*
 120:	000080e7          	jalr	ra # 11c <.L187+0xc>

00000124 <.LVL419>:
 124:	e511                	bnez	a0,130 <.L188>
			124: R_RISCV_RVC_BRANCH	.L188
 126:	0004c783          	lbu	a5,0(s1)
 12a:	0027e793          	ori	a5,a5,2
 12e:	b749                	j	b0 <.L191>
			12e: R_RISCV_RVC_JUMP	.L191

00000130 <.L188>:
 130:	000005b7          	lui	a1,0x0
			130: R_RISCV_HI20	wpa_oui01
			130: R_RISCV_RELAX	*ABS*
 134:	4611                	li	a2,4
 136:	00058593          	mv	a1,a1
			136: R_RISCV_LO12_I	wpa_oui01
			136: R_RISCV_RELAX	*ABS*
 13a:	854a                	mv	a0,s2
 13c:	00000097          	auipc	ra,0x0
			13c: R_RISCV_CALL	memcmp
			13c: R_RISCV_RELAX	*ABS*
 140:	000080e7          	jalr	ra # 13c <.L188+0xc>

00000144 <.LVL420>:
 144:	f925                	bnez	a0,b4 <.L186>
			144: R_RISCV_RVC_BRANCH	.L186
 146:	0004c783          	lbu	a5,0(s1)
 14a:	0017e793          	ori	a5,a5,1
 14e:	b78d                	j	b0 <.L191>
			14e: R_RISCV_RVC_JUMP	.L191
