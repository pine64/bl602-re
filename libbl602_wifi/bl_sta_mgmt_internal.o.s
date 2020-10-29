
libbl602_wifi/bl_sta_mgmt_internal.o:     file format elf32-littleriscv


Disassembly of section .text.keyMgmtStaRsnSecuredTimeoutHandler:

00000000 <keyMgmtStaRsnSecuredTimeoutHandler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB267>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000010 <.LBE267>:
  10:	3e800793          	li	a5,1000
  14:	84aa                	mv	s1,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR0
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL1>:
  22:	00040613          	mv	a2,s0
			22: R_RISCV_LO12_I	.LANCHOR0
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL1+0x8>

00000032 <.LVL2>:
  32:	cc81                	beqz	s1,4a <.L2>
			32: R_RISCV_RVC_BRANCH	.L2
  34:	5cbc                	lw	a5,120(s1)
  36:	eb91                	bnez	a5,4a <.L2>
			36: R_RISCV_RVC_BRANCH	.L2
  38:	1184a783          	lw	a5,280(s1)
  3c:	45bd                	li	a1,15
  3e:	0017c503          	lbu	a0,1(a5)
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	sm_handle_supplicant_result
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL2+0x10>

0000004a <.L2>:
  4a:	44b007b7          	lui	a5,0x44b00
  4e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000052 <.LBE268>:
  52:	3e800793          	li	a5,1000
  56:	00040613          	mv	a2,s0
			56: R_RISCV_LO12_I	.LANCHOR0
			56: R_RISCV_RELAX	*ABS*
  5a:	02f5d5b3          	divu	a1,a1,a5
  5e:	4422                	lw	s0,8(sp)
  60:	40b2                	lw	ra,12(sp)
  62:	4492                	lw	s1,4(sp)

00000064 <.LVL4>:
  64:	00000537          	lui	a0,0x0
			64: R_RISCV_HI20	.LC1
			64: R_RISCV_RELAX	*ABS*
  68:	00050513          	mv	a0,a0
			68: R_RISCV_LO12_I	.LC1
			68: R_RISCV_RELAX	*ABS*
  6c:	0141                	addi	sp,sp,16
  6e:	00000317          	auipc	t1,0x0
			6e: R_RISCV_CALL	dbg_test_print
			6e: R_RISCV_RELAX	*ABS*
  72:	00030067          	jr	t1 # 6e <.LVL4+0xa>

Disassembly of section .text.supplicantGenerateRand:

00000000 <supplicantGenerateRand>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB278>:
   e:	44b00937          	lui	s2,0x44b00

00000012 <.LBE278>:
  12:	8a2e                	mv	s4,a1

00000014 <.LBB279>:
  14:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF910+0x44afcdc5>

00000018 <.LBE279>:
  18:	3e800413          	li	s0,1000
  1c:	89aa                	mv	s3,a0
  1e:	0285d5b3          	divu	a1,a1,s0
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	.LANCHOR1
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL8>:
  2a:	00048613          	mv	a2,s1
			2a: R_RISCV_LO12_I	.LANCHOR1
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL8+0x8>

0000003a <.LVL9>:
  3a:	85d2                	mv	a1,s4
  3c:	854e                	mv	a0,s3
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	bl_rand_stream
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL9+0x4>

00000046 <.LBB280>:
  46:	12092583          	lw	a1,288(s2)

0000004a <.LBE280>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	4942                	lw	s2,16(sp)
  4e:	0285d5b3          	divu	a1,a1,s0
  52:	4462                	lw	s0,24(sp)
  54:	49b2                	lw	s3,12(sp)

00000056 <.LVL11>:
  56:	4a22                	lw	s4,8(sp)

00000058 <.LVL12>:
  58:	00048613          	mv	a2,s1
			58: R_RISCV_LO12_I	.LANCHOR1
			58: R_RISCV_RELAX	*ABS*
  5c:	44d2                	lw	s1,20(sp)
  5e:	00000537          	lui	a0,0x0
			5e: R_RISCV_HI20	.LC1
			5e: R_RISCV_RELAX	*ABS*
  62:	00050513          	mv	a0,a0
			62: R_RISCV_LO12_I	.LC1
			62: R_RISCV_RELAX	*ABS*
  66:	6105                	addi	sp,sp,32
  68:	00000317          	auipc	t1,0x0
			68: R_RISCV_CALL	dbg_test_print
			68: R_RISCV_RELAX	*ABS*
  6c:	00030067          	jr	t1 # 68 <.LVL12+0x10>

Disassembly of section .text.ComputeEAPOL_MIC:

00000000 <ComputeEAPOL_MIC>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c42e                	sw	a1,8(sp)
   6:	c62a                	sw	a0,12(sp)
   8:	88b2                	mv	a7,a2
   a:	e701                	bnez	a4,12 <.L10>
			a: R_RISCV_RVC_BRANCH	.L10
   c:	00654703          	lbu	a4,6(a0) # 6 <ComputeEAPOL_MIC+0x6>

00000010 <.LVL15>:
  10:	8b1d                	andi	a4,a4,7

00000012 <.L10>:
  12:	4605                	li	a2,1

00000014 <.LVL17>:
  14:	05150793          	addi	a5,a0,81
  18:	00c70e63          	beq	a4,a2,34 <.L11>
			18: R_RISCV_BRANCH	.L11
  1c:	4609                	li	a2,2
  1e:	02c70463          	beq	a4,a2,46 <.L12>
			1e: R_RISCV_BRANCH	.L12
  22:	862e                	mv	a2,a1
  24:	86be                	mv	a3,a5

00000026 <.LVL18>:
  26:	85aa                	mv	a1,a0

00000028 <.LVL19>:
  28:	8546                	mv	a0,a7

0000002a <.LVL20>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	bl_aes_cmac
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL20>

00000032 <.LVL21>:
  32:	a039                	j	40 <.L9>
			32: R_RISCV_RVC_JUMP	.L9

00000034 <.L11>:
  34:	873e                	mv	a4,a5

00000036 <.LVL23>:
  36:	8646                	mv	a2,a7
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	Bl_hmac_md5
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL23+0x2>

00000040 <.L9>:
  40:	40f2                	lw	ra,28(sp)
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L12>:
  46:	8736                	mv	a4,a3

00000048 <.LVL26>:
  48:	4841                	li	a6,16
  4a:	86c6                	mv	a3,a7

0000004c <.LVL27>:
  4c:	4605                	li	a2,1
  4e:	002c                	addi	a1,sp,8

00000050 <.LVL28>:
  50:	0068                	addi	a0,sp,12

00000052 <.LVL29>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	Bl_hmac_sha1
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL29>

0000005a <.LVL30>:
  5a:	b7dd                	j	40 <.L9>
			5a: R_RISCV_RVC_JUMP	.L9

Disassembly of section .text.keyMgmtGetKeySize_internal:

00000000 <keyMgmtGetKeySize_internal>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB290>:
   a:	44b007b7          	lui	a5,0x44b00

0000000e <.LBE290>:
   e:	892e                	mv	s2,a1

00000010 <.LBB291>:
  10:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE291>:
  14:	3e800793          	li	a5,1000
  18:	00000437          	lui	s0,0x0
			18: R_RISCV_HI20	.LANCHOR2
			18: R_RISCV_RELAX	*ABS*
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	84aa                	mv	s1,a0
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL33>:
  26:	00040613          	mv	a2,s0
			26: R_RISCV_LO12_I	.LANCHOR2
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL33+0x8>

00000036 <.LVL34>:
  36:	8622                	mv	a2,s0
  38:	04090263          	beqz	s2,7c <.L18>
			38: R_RISCV_BRANCH	.L18
  3c:	0044c783          	lbu	a5,4(s1) # 4 <keyMgmtGetKeySize_internal+0x4>
  40:	02000413          	li	s0,32
  44:	8ba1                	andi	a5,a5,8
  46:	c391                	beqz	a5,4a <.L19>
			46: R_RISCV_RVC_BRANCH	.L19
  48:	4441                	li	s0,16

0000004a <.L19>:
  4a:	44b007b7          	lui	a5,0x44b00
  4e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000052 <.LBE292>:
  52:	3e800793          	li	a5,1000
  56:	00000537          	lui	a0,0x0
			56: R_RISCV_HI20	.LC1
			56: R_RISCV_RELAX	*ABS*
  5a:	02f5d5b3          	divu	a1,a1,a5
  5e:	00050513          	mv	a0,a0
			5e: R_RISCV_LO12_I	.LC1
			5e: R_RISCV_RELAX	*ABS*
  62:	00060613          	mv	a2,a2
			62: R_RISCV_LO12_I	.LANCHOR2
			62: R_RISCV_RELAX	*ABS*
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	dbg_test_print
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LBE292+0x14>

0000006e <.LVL36>:
  6e:	8522                	mv	a0,s0
  70:	40b2                	lw	ra,12(sp)
  72:	4422                	lw	s0,8(sp)

00000074 <.LVL37>:
  74:	4492                	lw	s1,4(sp)

00000076 <.LVL38>:
  76:	4902                	lw	s2,0(sp)
  78:	0141                	addi	sp,sp,16
  7a:	8082                	ret

0000007c <.L18>:
  7c:	0034c783          	lbu	a5,3(s1)
  80:	4441                	li	s0,16
  82:	0087f713          	andi	a4,a5,8
  86:	f371                	bnez	a4,4a <.L19>
			86: R_RISCV_RVC_BRANCH	.L19
  88:	0027f713          	andi	a4,a5,2
  8c:	4435                	li	s0,13
  8e:	ff55                	bnez	a4,4a <.L19>
			8e: R_RISCV_RVC_BRANCH	.L19
  90:	8b85                	andi	a5,a5,1
  92:	02000413          	li	s0,32
  96:	dbd5                	beqz	a5,4a <.L19>
			96: R_RISCV_RVC_BRANCH	.L19
  98:	4415                	li	s0,5
  9a:	bf45                	j	4a <.L19>
			9a: R_RISCV_RVC_JUMP	.L19

Disassembly of section .text.isApReplayCounterFresh:

00000000 <isApReplayCounterFresh>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)

0000000a <.LBB302>:
   a:	44b007b7          	lui	a5,0x44b00

0000000e <.LBE302>:
   e:	892e                	mv	s2,a1

00000010 <.LBB303>:
  10:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE303>:
  14:	3e800793          	li	a5,1000
  18:	00000437          	lui	s0,0x0
			18: R_RISCV_HI20	.LANCHOR3
			18: R_RISCV_RELAX	*ABS*
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	84aa                	mv	s1,a0
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL42>:
  26:	00040613          	mv	a2,s0
			26: R_RISCV_LO12_I	.LANCHOR3
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL42+0x8>

00000036 <.LVL43>:
  36:	4611                	li	a2,4
  38:	85ca                	mv	a1,s2
  3a:	0028                	addi	a0,sp,8
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	memcpy
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL43+0x6>

00000044 <.LVL44>:
  44:	4611                	li	a2,4
  46:	00490593          	addi	a1,s2,4
  4a:	0068                	addi	a0,sp,12
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memcpy
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL44+0x8>

00000054 <.LVL45>:
  54:	4722                	lw	a4,8(sp)
  56:	00ff0837          	lui	a6,0xff0
  5a:	01871693          	slli	a3,a4,0x18
  5e:	01875793          	srli	a5,a4,0x18
  62:	00871613          	slli	a2,a4,0x8
  66:	00875593          	srli	a1,a4,0x8
  6a:	6741                	lui	a4,0x10
  6c:	01067633          	and	a2,a2,a6
  70:	96be                	add	a3,a3,a5
  72:	f0070513          	addi	a0,a4,-256 # ff00 <.LASF910+0xcba5>
  76:	96b2                	add	a3,a3,a2
  78:	8de9                	and	a1,a1,a0
  7a:	96ae                	add	a3,a3,a1

0000007c <.LVL46>:
  7c:	50ec                	lw	a1,100(s1)
  7e:	8622                	mv	a2,s0
  80:	4405                	li	s0,1
  82:	02d5ef63          	bltu	a1,a3,c0 <.L28>
			82: R_RISCV_BRANCH	.L28
  86:	4401                	li	s0,0
  88:	02d59c63          	bne	a1,a3,c0 <.L28>
			88: R_RISCV_BRANCH	.L28
  8c:	4732                	lw	a4,12(sp)
  8e:	4405                	li	s0,1
  90:	01875693          	srli	a3,a4,0x18

00000094 <.LVL47>:
  94:	01871793          	slli	a5,a4,0x18

00000098 <.LVL48>:
  98:	97b6                	add	a5,a5,a3
  9a:	00871693          	slli	a3,a4,0x8
  9e:	0106f6b3          	and	a3,a3,a6
  a2:	8321                	srli	a4,a4,0x8
  a4:	8f69                	and	a4,a4,a0
  a6:	97b6                	add	a5,a5,a3
  a8:	97ba                	add	a5,a5,a4
  aa:	50b8                	lw	a4,96(s1)
  ac:	00f76a63          	bltu	a4,a5,c0 <.L28>
			ac: R_RISCV_BRANCH	.L28
  b0:	4401                	li	s0,0
  b2:	00f71763          	bne	a4,a5,c0 <.L28>
			b2: R_RISCV_BRANCH	.L28
  b6:	8dd9                	or	a1,a1,a4
  b8:	e581                	bnez	a1,c0 <.L28>
			b8: R_RISCV_RVC_BRANCH	.L28
  ba:	54a0                	lw	s0,104(s1)
  bc:	00143413          	seqz	s0,s0

000000c0 <.L28>:
  c0:	44b007b7          	lui	a5,0x44b00
  c4:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000c8 <.LBE304>:
  c8:	3e800793          	li	a5,1000
  cc:	00000537          	lui	a0,0x0
			cc: R_RISCV_HI20	.LC1
			cc: R_RISCV_RELAX	*ABS*

000000d0 <.LVL50>:
  d0:	02f5d5b3          	divu	a1,a1,a5
  d4:	00050513          	mv	a0,a0
			d4: R_RISCV_LO12_I	.LC1
			d4: R_RISCV_RELAX	*ABS*
  d8:	00060613          	mv	a2,a2
			d8: R_RISCV_LO12_I	.LANCHOR3
			d8: R_RISCV_RELAX	*ABS*
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	dbg_test_print
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.LVL50+0xc>

000000e4 <.LVL51>:
  e4:	8522                	mv	a0,s0
  e6:	40f2                	lw	ra,28(sp)
  e8:	4462                	lw	s0,24(sp)

000000ea <.LVL52>:
  ea:	44d2                	lw	s1,20(sp)

000000ec <.LVL53>:
  ec:	4942                	lw	s2,16(sp)

000000ee <.LVL54>:
  ee:	6105                	addi	sp,sp,32
  f0:	8082                	ret

Disassembly of section .text.updateApReplayCounter:

00000000 <updateApReplayCounter>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)

0000000a <.LBB314>:
   a:	44b007b7          	lui	a5,0x44b00

0000000e <.LBE314>:
   e:	892e                	mv	s2,a1

00000010 <.LBB315>:
  10:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE315>:
  14:	3e800793          	li	a5,1000
  18:	84aa                	mv	s1,a0
  1a:	02f5d5b3          	divu	a1,a1,a5
  1e:	00000437          	lui	s0,0x0
			1e: R_RISCV_HI20	.LANCHOR4
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL57>:
  26:	00040613          	mv	a2,s0
			26: R_RISCV_LO12_I	.LANCHOR4
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL57+0x8>

00000036 <.LVL58>:
  36:	4611                	li	a2,4
  38:	85ca                	mv	a1,s2
  3a:	0028                	addi	a0,sp,8
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	memcpy
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL58+0x6>

00000044 <.LVL59>:
  44:	4611                	li	a2,4
  46:	00490593          	addi	a1,s2,4
  4a:	0068                	addi	a0,sp,12
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memcpy
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL59+0x8>

00000054 <.LVL60>:
  54:	46a2                	lw	a3,8(sp)
  56:	00ff0537          	lui	a0,0xff0
  5a:	0186d713          	srli	a4,a3,0x18
  5e:	01869793          	slli	a5,a3,0x18
  62:	00869613          	slli	a2,a3,0x8
  66:	97ba                	add	a5,a5,a4
  68:	8e69                	and	a2,a2,a0
  6a:	0086d593          	srli	a1,a3,0x8
  6e:	66c1                	lui	a3,0x10
  70:	97b2                	add	a5,a5,a2
  72:	f0068613          	addi	a2,a3,-256 # ff00 <.LASF910+0xcba5>
  76:	46b2                	lw	a3,12(sp)
  78:	8df1                	and	a1,a1,a2
  7a:	97ae                	add	a5,a5,a1

0000007c <.LVL61>:
  7c:	01869713          	slli	a4,a3,0x18
  80:	0186d593          	srli	a1,a3,0x18
  84:	972e                	add	a4,a4,a1
  86:	00869593          	slli	a1,a3,0x8
  8a:	8de9                	and	a1,a1,a0
  8c:	82a1                	srli	a3,a3,0x8
  8e:	972e                	add	a4,a4,a1
  90:	8ef1                	and	a3,a3,a2
  92:	9736                	add	a4,a4,a3

00000094 <.LVL62>:
  94:	d0fc                	sw	a5,100(s1)
  96:	d0b8                	sw	a4,96(s1)
  98:	8fd9                	or	a5,a5,a4

0000009a <.LVL63>:
  9a:	e399                	bnez	a5,a0 <.L36>
			9a: R_RISCV_RVC_BRANCH	.L36
  9c:	4785                	li	a5,1
  9e:	d4bc                	sw	a5,104(s1)

000000a0 <.L36>:
  a0:	44b007b7          	lui	a5,0x44b00
  a4:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000a8 <.LBE316>:
  a8:	3e800793          	li	a5,1000
  ac:	00000537          	lui	a0,0x0
			ac: R_RISCV_HI20	.LC1
			ac: R_RISCV_RELAX	*ABS*
  b0:	02f5d5b3          	divu	a1,a1,a5
  b4:	00040613          	mv	a2,s0
			b4: R_RISCV_LO12_I	.LANCHOR4
			b4: R_RISCV_RELAX	*ABS*
  b8:	00050513          	mv	a0,a0
			b8: R_RISCV_LO12_I	.LC1
			b8: R_RISCV_RELAX	*ABS*
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	dbg_test_print
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LBE316+0x14>

000000c4 <.LVL64>:
  c4:	40f2                	lw	ra,28(sp)
  c6:	4462                	lw	s0,24(sp)
  c8:	44d2                	lw	s1,20(sp)

000000ca <.LVL65>:
  ca:	4942                	lw	s2,16(sp)

000000cc <.LVL66>:
  cc:	6105                	addi	sp,sp,32
  ce:	8082                	ret

Disassembly of section .text.formEAPOLEthHdr:

00000000 <formEAPOLEthHdr>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)

00000010 <.LBB326>:
  10:	44b009b7          	lui	s3,0x44b00

00000014 <.LBE326>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB327>:
  16:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF910+0x44afcdc5>

0000001a <.LBE327>:
  1a:	3e800493          	li	s1,1000
  1e:	842a                	mv	s0,a0
  20:	0295d5b3          	divu	a1,a1,s1
  24:	00000937          	lui	s2,0x0
			24: R_RISCV_HI20	.LANCHOR5
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL69>:
  2c:	8a32                	mv	s4,a2
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00090613          	mv	a2,s2
			32: R_RISCV_LO12_I	.LANCHOR5
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL70>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	dbg_test_print
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL70>

0000003e <.LVL71>:
  3e:	85d6                	mv	a1,s5
  40:	4619                	li	a2,6
  42:	8522                	mv	a0,s0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	memcpy
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL71+0x6>

0000004c <.LVL72>:
  4c:	85d2                	mv	a1,s4
  4e:	4619                	li	a2,6
  50:	00640513          	addi	a0,s0,6 # 6 <formEAPOLEthHdr+0x6>
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	memcpy
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL72+0x8>

0000005c <.LVL73>:
  5c:	f8800793          	li	a5,-120
  60:	00f40623          	sb	a5,12(s0)
  64:	f8e00793          	li	a5,-114
  68:	00f406a3          	sb	a5,13(s0)

0000006c <.LBB328>:
  6c:	1209a583          	lw	a1,288(s3)

00000070 <.LBE328>:
  70:	4462                	lw	s0,24(sp)

00000072 <.LVL74>:
  72:	40f2                	lw	ra,28(sp)
  74:	0295d5b3          	divu	a1,a1,s1
  78:	49b2                	lw	s3,12(sp)
  7a:	44d2                	lw	s1,20(sp)
  7c:	4a22                	lw	s4,8(sp)

0000007e <.LVL75>:
  7e:	4a92                	lw	s5,4(sp)

00000080 <.LVL76>:
  80:	00090613          	mv	a2,s2
			80: R_RISCV_LO12_I	.LANCHOR5
			80: R_RISCV_RELAX	*ABS*
  84:	4942                	lw	s2,16(sp)
  86:	00000537          	lui	a0,0x0
			86: R_RISCV_HI20	.LC1
			86: R_RISCV_RELAX	*ABS*
  8a:	00050513          	mv	a0,a0
			8a: R_RISCV_LO12_I	.LC1
			8a: R_RISCV_RELAX	*ABS*
  8e:	6105                	addi	sp,sp,32
  90:	00000317          	auipc	t1,0x0
			90: R_RISCV_CALL	dbg_test_print
			90: R_RISCV_RELAX	*ABS*
  94:	00030067          	jr	t1 # 90 <.LVL76+0x10>

Disassembly of section .text.IsEAPOL_MICValid:

00000000 <IsEAPOL_MICValid>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)

00000010 <.LBB342>:
  10:	44b00a37          	lui	s4,0x44b00

00000014 <.LBE342>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB349>:
  16:	120a2583          	lw	a1,288(s4) # 44b00120 <.LASF910+0x44afcdc5>

0000001a <.LBE349>:
  1a:	3e800913          	li	s2,1000
  1e:	842a                	mv	s0,a0

00000020 <.LBB350>:
  20:	0325d5b3          	divu	a1,a1,s2
  24:	000009b7          	lui	s3,0x0
			24: R_RISCV_HI20	.LANCHOR6
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL80>:
  2c:	00098613          	mv	a2,s3
			2c: R_RISCV_LO12_I	.LANCHOR6
			2c: R_RISCV_RELAX	*ABS*
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	05140493          	addi	s1,s0,81
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	dbg_test_print
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL80+0xc>

00000040 <.LVL81>:
  40:	4641                	li	a2,16
  42:	85a6                	mv	a1,s1
  44:	850a                	mv	a0,sp
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	memcpy
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL81+0x6>

0000004e <.LVL82>:
  4e:	4641                	li	a2,16
  50:	4581                	li	a1,0
  52:	8526                	mv	a0,s1
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	memset
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL82+0x6>

0000005c <.LVL83>:
  5c:	00344783          	lbu	a5,3(s0)
  60:	00244583          	lbu	a1,2(s0)
  64:	8656                	mv	a2,s5
  66:	07a2                	slli	a5,a5,0x8
  68:	8fcd                	or	a5,a5,a1
  6a:	00879593          	slli	a1,a5,0x8
  6e:	83a1                	srli	a5,a5,0x8
  70:	8fcd                	or	a5,a5,a1
  72:	00478593          	addi	a1,a5,4
  76:	05c2                	slli	a1,a1,0x10
  78:	81c1                	srli	a1,a1,0x10
  7a:	8522                	mv	a0,s0
  7c:	4701                	li	a4,0
  7e:	46c1                	li	a3,16
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	ComputeEAPOL_MIC
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL83+0x24>

00000088 <.LVL84>:
  88:	4641                	li	a2,16
  8a:	858a                	mv	a1,sp
  8c:	8526                	mv	a0,s1
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	memcmp
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL84+0x6>

00000096 <.LVL85>:
  96:	e90d                	bnez	a0,c8 <.L42>
			96: R_RISCV_RVC_BRANCH	.L42

00000098 <.LBB351>:
  98:	120a2583          	lw	a1,288(s4)

0000009c <.LBE353>:
  9c:	00000537          	lui	a0,0x0
			9c: R_RISCV_HI20	.LC1
			9c: R_RISCV_RELAX	*ABS*
  a0:	00050513          	mv	a0,a0
			a0: R_RISCV_LO12_I	.LC1
			a0: R_RISCV_RELAX	*ABS*
  a4:	0325d5b3          	divu	a1,a1,s2
  a8:	00098613          	mv	a2,s3
			a8: R_RISCV_LO12_I	.LANCHOR6
			a8: R_RISCV_RELAX	*ABS*
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	dbg_test_print
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LBE353+0x10>

000000b4 <.LVL87>:
  b4:	4505                	li	a0,1

000000b6 <.L40>:
  b6:	50b2                	lw	ra,44(sp)
  b8:	5422                	lw	s0,40(sp)

000000ba <.LVL88>:
  ba:	5492                	lw	s1,36(sp)

000000bc <.LVL89>:
  bc:	5902                	lw	s2,32(sp)
  be:	49f2                	lw	s3,28(sp)
  c0:	4a62                	lw	s4,24(sp)
  c2:	4ad2                	lw	s5,20(sp)

000000c4 <.LVL90>:
  c4:	6145                	addi	sp,sp,48
  c6:	8082                	ret

000000c8 <.L42>:
  c8:	4501                	li	a0,0
  ca:	b7f5                	j	b6 <.L40>
			ca: R_RISCV_RVC_JUMP	.L40

Disassembly of section .text.KeyMgmtSta_PopulateEAPOLLengthMic:

00000000 <KeyMgmtSta_PopulateEAPOLLengthMic>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	ca56                	sw	s5,20(sp)
   e:	c85a                	sw	s6,16(sp)
  10:	d606                	sw	ra,44(sp)
  12:	c636                	sw	a3,12(sp)

00000014 <.LBB365>:
  14:	44b009b7          	lui	s3,0x44b00

00000018 <.LBE365>:
  18:	8aae                	mv	s5,a1

0000001a <.LBB366>:
  1a:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF910+0x44afcdc5>

0000001e <.LBE366>:
  1e:	3e800493          	li	s1,1000
  22:	842a                	mv	s0,a0
  24:	0295d5b3          	divu	a1,a1,s1
  28:	00000937          	lui	s2,0x0
			28: R_RISCV_HI20	.LANCHOR7
			28: R_RISCV_RELAX	*ABS*
  2c:	00000537          	lui	a0,0x0
			2c: R_RISCV_HI20	.LC0
			2c: R_RISCV_RELAX	*ABS*

00000030 <.LVL94>:
  30:	8b32                	mv	s6,a2
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	00090613          	mv	a2,s2
			36: R_RISCV_LO12_I	.LANCHOR7
			36: R_RISCV_RELAX	*ABS*

0000003a <.LVL95>:
  3a:	4a01                	li	s4,0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	dbg_test_print
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL95+0x2>

00000044 <.LVL96>:
  44:	c441                	beqz	s0,cc <.L45>
			44: R_RISCV_RVC_BRANCH	.L45

00000046 <.LVL97>:
  46:	07044583          	lbu	a1,112(s0)
  4a:	06f44783          	lbu	a5,111(s0)
  4e:	4732                	lw	a4,12(sp)
  50:	05a2                	slli	a1,a1,0x8
  52:	8ddd                	or	a1,a1,a5
  54:	05f58a13          	addi	s4,a1,95
  58:	0a42                	slli	s4,s4,0x10
  5a:	010a5a13          	srli	s4,s4,0x10

0000005e <.LVL98>:
  5e:	478d                	li	a5,3
  60:	00f407a3          	sb	a5,15(s0)
  64:	008a5693          	srli	a3,s4,0x8
  68:	008a1793          	slli	a5,s4,0x8
  6c:	8fd5                	or	a5,a5,a3
  6e:	07c2                	slli	a5,a5,0x10
  70:	83c1                	srli	a5,a5,0x10
  72:	00f40823          	sb	a5,16(s0)
  76:	83a1                	srli	a5,a5,0x8
  78:	0085d693          	srli	a3,a1,0x8
  7c:	00f408a3          	sb	a5,17(s0)
  80:	00859793          	slli	a5,a1,0x8
  84:	8fd5                	or	a5,a5,a3
  86:	07c2                	slli	a5,a5,0x10
  88:	83c1                	srli	a5,a5,0x10
  8a:	06358593          	addi	a1,a1,99
  8e:	06f407a3          	sb	a5,111(s0)
  92:	05c2                	slli	a1,a1,0x10
  94:	83a1                	srli	a5,a5,0x8
  96:	8656                	mv	a2,s5
  98:	81c1                	srli	a1,a1,0x10
  9a:	00e40513          	addi	a0,s0,14
  9e:	01640723          	sb	s6,14(s0)
  a2:	06f40823          	sb	a5,112(s0)
  a6:	46c1                	li	a3,16
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	ComputeEAPOL_MIC
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL98+0x4a>

000000b0 <.LBB367>:
  b0:	1209a583          	lw	a1,288(s3)

000000b4 <.LBE367>:
  b4:	00000537          	lui	a0,0x0
			b4: R_RISCV_HI20	.LC1
			b4: R_RISCV_RELAX	*ABS*
  b8:	00090613          	mv	a2,s2
			b8: R_RISCV_LO12_I	.LANCHOR7
			b8: R_RISCV_RELAX	*ABS*
  bc:	0295d5b3          	divu	a1,a1,s1
  c0:	00050513          	mv	a0,a0
			c0: R_RISCV_LO12_I	.LC1
			c0: R_RISCV_RELAX	*ABS*
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	dbg_test_print
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LBE367+0x10>

000000cc <.L45>:
  cc:	50b2                	lw	ra,44(sp)
  ce:	5422                	lw	s0,40(sp)

000000d0 <.LVL101>:
  d0:	8552                	mv	a0,s4
  d2:	5492                	lw	s1,36(sp)
  d4:	5902                	lw	s2,32(sp)
  d6:	49f2                	lw	s3,28(sp)
  d8:	4a62                	lw	s4,24(sp)
  da:	4ad2                	lw	s5,20(sp)

000000dc <.LVL102>:
  dc:	4b42                	lw	s6,16(sp)
  de:	6145                	addi	sp,sp,48
  e0:	8082                	ret

Disassembly of section .text.parseKeyKDE:

00000000 <parseKeyKDE>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB375>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000010 <.LBE375>:
  10:	3e800793          	li	a5,1000
  14:	842a                	mv	s0,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	000004b7          	lui	s1,0x0
			1a: R_RISCV_HI20	.LANCHOR8
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL104>:
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR8
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL104+0x8>

00000032 <.LVL105>:
  32:	00044703          	lbu	a4,0(s0)
  36:	0dd00793          	li	a5,221
  3a:	02f70b63          	beq	a4,a5,70 <.L49>
			3a: R_RISCV_BRANCH	.L49

0000003e <.L51>:
  3e:	44b007b7          	lui	a5,0x44b00
  42:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000046 <.LBE376>:
  46:	3e800793          	li	a5,1000
  4a:	00000537          	lui	a0,0x0
			4a: R_RISCV_HI20	.LC1
			4a: R_RISCV_RELAX	*ABS*
  4e:	02f5d5b3          	divu	a1,a1,a5
  52:	00048613          	mv	a2,s1
			52: R_RISCV_LO12_I	.LANCHOR8
			52: R_RISCV_RELAX	*ABS*
  56:	00050513          	mv	a0,a0
			56: R_RISCV_LO12_I	.LC1
			56: R_RISCV_RELAX	*ABS*
  5a:	4401                	li	s0,0

0000005c <.LVL107>:
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	dbg_test_print
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL107>

00000064 <.L50>:
  64:	8522                	mv	a0,s0
  66:	40b2                	lw	ra,12(sp)
  68:	4422                	lw	s0,8(sp)
  6a:	4492                	lw	s1,4(sp)
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

00000070 <.L49>:
  70:	00144703          	lbu	a4,1(s0)
  74:	479d                	li	a5,7
  76:	fce7f4e3          	bgeu	a5,a4,3e <.L51>
			76: R_RISCV_BRANCH	.L51
  7a:	000005b7          	lui	a1,0x0
			7a: R_RISCV_HI20	.LANCHOR9
			7a: R_RISCV_RELAX	*ABS*
  7e:	460d                	li	a2,3
  80:	00058593          	mv	a1,a1
			80: R_RISCV_LO12_I	.LANCHOR9
			80: R_RISCV_RELAX	*ABS*
  84:	00240513          	addi	a0,s0,2
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	memcmp
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.L49+0x18>

00000090 <.LVL110>:
  90:	d971                	beqz	a0,64 <.L50>
			90: R_RISCV_RVC_BRANCH	.L50
  92:	b775                	j	3e <.L51>
			92: R_RISCV_RVC_JUMP	.L51

Disassembly of section .text.parseKeyKDE_DataType:

00000000 <parseKeyKDE_DataType>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	ca56                	sw	s5,20(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d226                	sw	s1,36(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)

00000014 <.LBB397>:
  14:	44b007b7          	lui	a5,0x44b00

00000018 <.LBE397>:
  18:	89ae                	mv	s3,a1

0000001a <.LBB398>:
  1a:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

0000001e <.LBE398>:
  1e:	3e800793          	li	a5,1000
  22:	842a                	mv	s0,a0
  24:	02f5d5b3          	divu	a1,a1,a5
  28:	00000937          	lui	s2,0x0
			28: R_RISCV_HI20	.LANCHOR10
			28: R_RISCV_RELAX	*ABS*
  2c:	00000537          	lui	a0,0x0
			2c: R_RISCV_HI20	.LC0
			2c: R_RISCV_RELAX	*ABS*

00000030 <.LVL113>:
  30:	8ab2                	mv	s5,a2
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	00090613          	mv	a2,s2
			36: R_RISCV_LO12_I	.LANCHOR10
			36: R_RISCV_RELAX	*ABS*

0000003a <.LVL114>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL114>

00000042 <.LVL115>:
  42:	c81d                	beqz	s0,78 <.L54>
			42: R_RISCV_RVC_BRANCH	.L54
  44:	84a2                	mv	s1,s0

00000046 <.LBB399>:
  46:	4a09                	li	s4,2
  48:	0dd00b13          	li	s6,221
  4c:	5bf9                	li	s7,-2

0000004e <.L55>:
  4e:	053a4163          	blt	s4,s3,90 <.L58>
			4e: R_RISCV_BRANCH	.L58

00000052 <.LBB401>:
  52:	44b007b7          	lui	a5,0x44b00
  56:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

0000005a <.LBE401>:
  5a:	3e800793          	li	a5,1000
  5e:	00000537          	lui	a0,0x0
			5e: R_RISCV_HI20	.LC1
			5e: R_RISCV_RELAX	*ABS*
  62:	02f5d5b3          	divu	a1,a1,a5
  66:	00090613          	mv	a2,s2
			66: R_RISCV_LO12_I	.LANCHOR10
			66: R_RISCV_RELAX	*ABS*
  6a:	00050513          	mv	a0,a0
			6a: R_RISCV_LO12_I	.LC1
			6a: R_RISCV_RELAX	*ABS*
  6e:	4401                	li	s0,0
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	dbg_test_print
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LBE401+0x16>

00000078 <.L54>:
  78:	8522                	mv	a0,s0
  7a:	50b2                	lw	ra,44(sp)
  7c:	5422                	lw	s0,40(sp)
  7e:	5492                	lw	s1,36(sp)
  80:	5902                	lw	s2,32(sp)
  82:	49f2                	lw	s3,28(sp)
  84:	4a62                	lw	s4,24(sp)
  86:	4ad2                	lw	s5,20(sp)
  88:	4b42                	lw	s6,16(sp)
  8a:	4bb2                	lw	s7,12(sp)
  8c:	6145                	addi	sp,sp,48
  8e:	8082                	ret

00000090 <.L58>:
  90:	0004c783          	lbu	a5,0(s1) # 0 <parseKeyKDE_DataType>
  94:	03679163          	bne	a5,s6,b6 <.L56>
			94: R_RISCV_BRANCH	.L56
  98:	8526                	mv	a0,s1
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	parseKeyKDE
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.L58+0xa>

000000a2 <.LVL119>:
  a2:	842a                	mv	s0,a0

000000a4 <.LVL120>:
  a4:	c509                	beqz	a0,ae <.L57>
			a4: R_RISCV_RVC_BRANCH	.L57
  a6:	00554783          	lbu	a5,5(a0) # 5 <parseKeyKDE_DataType+0x5>
  aa:	fd5787e3          	beq	a5,s5,78 <.L54>
			aa: R_RISCV_BRANCH	.L54

000000ae <.L57>:
  ae:	0014c783          	lbu	a5,1(s1)
  b2:	e391                	bnez	a5,b6 <.L56>
			b2: R_RISCV_RVC_BRANCH	.L56
  b4:	4989                	li	s3,2

000000b6 <.L56>:
  b6:	0014c783          	lbu	a5,1(s1)
  ba:	40fb8733          	sub	a4,s7,a5
  be:	0789                	addi	a5,a5,2
  c0:	99ba                	add	s3,s3,a4
  c2:	94be                	add	s1,s1,a5

000000c4 <.LVL123>:
  c4:	b769                	j	4e <.L55>
			c4: R_RISCV_RVC_JUMP	.L55

Disassembly of section .text.parseKeyDataGTK:

00000000 <parseKeyDataGTK>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)

0000000c <.LBB415>:
   c:	44b007b7          	lui	a5,0x44b00

00000010 <.LBE415>:
  10:	89ae                	mv	s3,a1

00000012 <.LBB416>:
  12:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE416>:
  16:	3e800793          	li	a5,1000
  1a:	84aa                	mv	s1,a0
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LANCHOR11
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL126>:
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	8432                	mv	s0,a2
  2e:	00090613          	mv	a2,s2
			2e: R_RISCV_LO12_I	.LANCHOR11
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL127>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL127>

0000003a <.LVL128>:
  3a:	8526                	mv	a0,s1
  3c:	4605                	li	a2,1
  3e:	85ce                	mv	a1,s3
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	parseKeyKDE_DataType
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL128+0x6>

00000048 <.LVL129>:
  48:	84aa                	mv	s1,a0

0000004a <.LVL130>:
  4a:	c921                	beqz	a0,9a <.L67>
			4a: R_RISCV_RVC_BRANCH	.L67

0000004c <.LVL131>:
  4c:	00154603          	lbu	a2,1(a0) # 1 <parseKeyDataGTK+0x1>
  50:	00850593          	addi	a1,a0,8
  54:	8522                	mv	a0,s0
  56:	1669                	addi	a2,a2,-6
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	memcpy
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL131+0xc>

00000060 <.LVL132>:
  60:	0064c783          	lbu	a5,6(s1)
  64:	01840993          	addi	s3,s0,24
  68:	4621                	li	a2,8
  6a:	8b8d                	andi	a5,a5,3
  6c:	02f41323          	sh	a5,38(s0)
  70:	85ce                	mv	a1,s3
  72:	0028                	addi	a0,sp,8
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	memcpy
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL132+0x14>

0000007c <.LVL133>:
  7c:	0441                	addi	s0,s0,16

0000007e <.LVL134>:
  7e:	4621                	li	a2,8
  80:	85a2                	mv	a1,s0
  82:	854e                	mv	a0,s3
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	memcpy
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL134+0x6>

0000008c <.LVL135>:
  8c:	4621                	li	a2,8
  8e:	002c                	addi	a1,sp,8
  90:	8522                	mv	a0,s0
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	memcpy
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL135+0x6>

0000009a <.L67>:
  9a:	44b007b7          	lui	a5,0x44b00
  9e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000a2 <.LBE417>:
  a2:	3e800793          	li	a5,1000
  a6:	00000537          	lui	a0,0x0
			a6: R_RISCV_HI20	.LC1
			a6: R_RISCV_RELAX	*ABS*
  aa:	02f5d5b3          	divu	a1,a1,a5
  ae:	00090613          	mv	a2,s2
			ae: R_RISCV_LO12_I	.LANCHOR11
			ae: R_RISCV_RELAX	*ABS*
  b2:	00050513          	mv	a0,a0
			b2: R_RISCV_LO12_I	.LC1
			b2: R_RISCV_RELAX	*ABS*
  b6:	00000097          	auipc	ra,0x0
			b6: R_RISCV_CALL	dbg_test_print
			b6: R_RISCV_RELAX	*ABS*
  ba:	000080e7          	jalr	ra # b6 <.LBE417+0x14>

000000be <.LVL137>:
  be:	50b2                	lw	ra,44(sp)
  c0:	5422                	lw	s0,40(sp)
  c2:	8526                	mv	a0,s1
  c4:	5902                	lw	s2,32(sp)
  c6:	5492                	lw	s1,36(sp)

000000c8 <.LVL138>:
  c8:	49f2                	lw	s3,28(sp)
  ca:	6145                	addi	sp,sp,48
  cc:	8082                	ret

Disassembly of section .text.KeyMgmtSta_ApplyKEK:

00000000 <KeyMgmtSta_ApplyKEK>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB427>:
   c:	44b007b7          	lui	a5,0x44b00

00000010 <.LBE427>:
  10:	892e                	mv	s2,a1

00000012 <.LBB428>:
  12:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE428>:
  16:	3e800793          	li	a5,1000
  1a:	842a                	mv	s0,a0
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	000004b7          	lui	s1,0x0
			20: R_RISCV_HI20	.LANCHOR12
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL141>:
  28:	89b2                	mv	s3,a2
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00048613          	mv	a2,s1
			2e: R_RISCV_LO12_I	.LANCHOR12
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL142>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL142>

0000003a <.LVL143>:
  3a:	04244783          	lbu	a5,66(s0)
  3e:	4605                	li	a2,1
  40:	06340693          	addi	a3,s0,99
  44:	07a2                	slli	a5,a5,0x8
  46:	02f91223          	sh	a5,36(s2) # 24 <.LBE428+0xe>
  4a:	04144703          	lbu	a4,65(s0)
  4e:	8fd9                	or	a5,a5,a4
  50:	02f91223          	sh	a5,36(s2)
  54:	57fd                	li	a5,-1
  56:	02f92023          	sw	a5,32(s2)
  5a:	06244783          	lbu	a5,98(s0)
  5e:	06144703          	lbu	a4,97(s0)
  62:	07a2                	slli	a5,a5,0x8
  64:	8fd9                	or	a5,a5,a4
  66:	00879713          	slli	a4,a5,0x8
  6a:	83a1                	srli	a5,a5,0x8
  6c:	8f5d                	or	a4,a4,a5
  6e:	0742                	slli	a4,a4,0x10
  70:	8341                	srli	a4,a4,0x10
  72:	00875793          	srli	a5,a4,0x8
  76:	06f40123          	sb	a5,98(s0)
  7a:	00644783          	lbu	a5,6(s0)
  7e:	06e400a3          	sb	a4,97(s0)
  82:	8b9d                	andi	a5,a5,7
  84:	04c79463          	bne	a5,a2,cc <.L73>
			84: R_RISCV_BRANCH	.L73
  88:	10000793          	li	a5,256
  8c:	4641                	li	a2,16
  8e:	03140593          	addi	a1,s0,49
  92:	854e                	mv	a0,s3
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	RC4_Encrypt
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL143+0x5a>

0000009c <.L74>:
  9c:	44b007b7          	lui	a5,0x44b00
  a0:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000a4 <.LBE429>:
  a4:	3e800793          	li	a5,1000
  a8:	4462                	lw	s0,24(sp)

000000aa <.LVL145>:
  aa:	02f5d5b3          	divu	a1,a1,a5
  ae:	40f2                	lw	ra,28(sp)
  b0:	4942                	lw	s2,16(sp)

000000b2 <.LVL146>:
  b2:	49b2                	lw	s3,12(sp)

000000b4 <.LVL147>:
  b4:	00048613          	mv	a2,s1
			b4: R_RISCV_LO12_I	.LANCHOR12
			b4: R_RISCV_RELAX	*ABS*
  b8:	44d2                	lw	s1,20(sp)
  ba:	00000537          	lui	a0,0x0
			ba: R_RISCV_HI20	.LC1
			ba: R_RISCV_RELAX	*ABS*
  be:	00050513          	mv	a0,a0
			be: R_RISCV_LO12_I	.LC1
			be: R_RISCV_RELAX	*ABS*
  c2:	6105                	addi	sp,sp,32
  c4:	00000317          	auipc	t1,0x0
			c4: R_RISCV_CALL	dbg_test_print
			c4: R_RISCV_RELAX	*ABS*
  c8:	00030067          	jr	t1 # c4 <.LVL147+0x10>

000000cc <.L73>:
  cc:	00375613          	srli	a2,a4,0x3
  d0:	87b6                	mv	a5,a3
  d2:	4701                	li	a4,0
  d4:	167d                	addi	a2,a2,-1
  d6:	4589                	li	a1,2
  d8:	854e                	mv	a0,s3
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	BL_AesUnWrap
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.L73+0xe>

000000e2 <.LVL149>:
  e2:	06244783          	lbu	a5,98(s0)
  e6:	06144703          	lbu	a4,97(s0)
  ea:	07a2                	slli	a5,a5,0x8
  ec:	8fd9                	or	a5,a5,a4
  ee:	17e1                	addi	a5,a5,-8
  f0:	07c2                	slli	a5,a5,0x10
  f2:	83c1                	srli	a5,a5,0x10
  f4:	06f400a3          	sb	a5,97(s0)
  f8:	83a1                	srli	a5,a5,0x8
  fa:	06f40123          	sb	a5,98(s0)
  fe:	bf79                	j	9c <.L74>
			fe: R_RISCV_RVC_JUMP	.L74

Disassembly of section .text.KeyMgmtSta_IsRxEAPOLValid:

00000000 <KeyMgmtSta_IsRxEAPOLValid>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB450>:
   a:	44b007b7          	lui	a5,0x44b00

0000000e <.LBE450>:
   e:	842e                	mv	s0,a1

00000010 <.LBB451>:
  10:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE451>:
  14:	3e800793          	li	a5,1000
  18:	84aa                	mv	s1,a0
  1a:	02f5d5b3          	divu	a1,a1,a5
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR13
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL152>:
  26:	00090613          	mv	a2,s2
			26: R_RISCV_LO12_I	.LANCHOR13
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL152+0x8>

00000036 <.LVL153>:
  36:	e881                	bnez	s1,46 <.L77>
			36: R_RISCV_RVC_BRANCH	.L77

00000038 <.L79>:
  38:	4501                	li	a0,0

0000003a <.L76>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)

0000003e <.LVL154>:
  3e:	4492                	lw	s1,4(sp)

00000040 <.LVL155>:
  40:	4902                	lw	s2,0(sp)
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

00000046 <.L77>:
  46:	d86d                	beqz	s0,38 <.L79>
			46: R_RISCV_RVC_BRANCH	.L79
  48:	00940593          	addi	a1,s0,9
  4c:	8526                	mv	a0,s1
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	isApReplayCounterFresh
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L77+0x8>

00000056 <.LVL157>:
  56:	d16d                	beqz	a0,38 <.L79>
			56: R_RISCV_RVC_BRANCH	.L79

00000058 <.LBB452>:
  58:	00544783          	lbu	a5,5(s0)
  5c:	8b85                	andi	a5,a5,1
  5e:	e78d                	bnez	a5,88 <.L80>
			5e: R_RISCV_RVC_BRANCH	.L80

00000060 <.L82>:
  60:	44b007b7          	lui	a5,0x44b00
  64:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000068 <.LBE454>:
  68:	3e800793          	li	a5,1000
  6c:	00000537          	lui	a0,0x0
			6c: R_RISCV_HI20	.LC1
			6c: R_RISCV_RELAX	*ABS*
  70:	02f5d5b3          	divu	a1,a1,a5
  74:	00050513          	mv	a0,a0
			74: R_RISCV_LO12_I	.LC1
			74: R_RISCV_RELAX	*ABS*
  78:	00090613          	mv	a2,s2
			78: R_RISCV_LO12_I	.LANCHOR13
			78: R_RISCV_RELAX	*ABS*
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	dbg_test_print
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LBE454+0x14>

00000084 <.LVL159>:
  84:	4505                	li	a0,1
  86:	bf55                	j	3a <.L76>
			86: R_RISCV_RVC_JUMP	.L76

00000088 <.L80>:
  88:	00644783          	lbu	a5,6(s0)
  8c:	8ba1                	andi	a5,a5,8
  8e:	eb91                	bnez	a5,a2 <.L81>
			8e: R_RISCV_RVC_BRANCH	.L81

00000090 <.L83>:
  90:	04048593          	addi	a1,s1,64 # 40 <.LVL155>
  94:	8522                	mv	a0,s0
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	IsEAPOL_MICValid
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.L83+0x6>

0000009e <.LVL160>:
  9e:	f169                	bnez	a0,60 <.L82>
			9e: R_RISCV_RVC_BRANCH	.L82
  a0:	bf61                	j	38 <.L79>
			a0: R_RISCV_RVC_JUMP	.L79

000000a2 <.L81>:
  a2:	02000613          	li	a2,32
  a6:	85a6                	mv	a1,s1
  a8:	01140513          	addi	a0,s0,17
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	memcmp
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.L81+0xa>

000000b4 <.LVL161>:
  b4:	dd71                	beqz	a0,90 <.L83>
			b4: R_RISCV_RVC_BRANCH	.L83
  b6:	b749                	j	38 <.L79>
			b6: R_RISCV_RVC_JUMP	.L79

Disassembly of section .text.KeyMgmtSta_PrepareEAPOLFrame:

00000000 <KeyMgmtSta_PrepareEAPOLFrame>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	ce06                	sw	ra,28(sp)

00000010 <.LBB466>:
  10:	44b007b7          	lui	a5,0x44b00

00000014 <.LBE466>:
  14:	84ae                	mv	s1,a1

00000016 <.LBB467>:
  16:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

0000001a <.LBE467>:
  1a:	3e800793          	li	a5,1000
  1e:	842a                	mv	s0,a0
  20:	02f5d5b3          	divu	a1,a1,a5
  24:	00000937          	lui	s2,0x0
			24: R_RISCV_HI20	.LANCHOR14
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL164>:
  2c:	8a32                	mv	s4,a2
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00090613          	mv	a2,s2
			32: R_RISCV_LO12_I	.LANCHOR14
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL165>:
  36:	8ab6                	mv	s5,a3
  38:	89ba                	mv	s3,a4
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL165+0x4>

00000042 <.LVL166>:
  42:	12040063          	beqz	s0,162 <.L94>
			42: R_RISCV_BRANCH	.L94
  46:	10048e63          	beqz	s1,162 <.L94>
			46: R_RISCV_BRANCH	.L94
  4a:	07200613          	li	a2,114
  4e:	4581                	li	a1,0
  50:	8522                	mv	a0,s0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	memset
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL166+0x10>

0000005a <.LVL167>:
  5a:	8656                	mv	a2,s5
  5c:	85d2                	mv	a1,s4
  5e:	8522                	mv	a0,s0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	formEAPOLEthHdr
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL167+0x6>

00000068 <.LVL168>:
  68:	0044c783          	lbu	a5,4(s1)
  6c:	00f40923          	sb	a5,18(s0)
  70:	0064c783          	lbu	a5,6(s1)
  74:	0087f713          	andi	a4,a5,8
  78:	01444783          	lbu	a5,20(s0)
  7c:	9bdd                	andi	a5,a5,-9
  7e:	8fd9                	or	a5,a5,a4
  80:	01344703          	lbu	a4,19(s0)
  84:	00f40a23          	sb	a5,20(s0)
  88:	9be1                	andi	a5,a5,-8
  8a:	00176713          	ori	a4,a4,1
  8e:	00e409a3          	sb	a4,19(s0)
  92:	0054c683          	lbu	a3,5(s1)
  96:	9b75                	andi	a4,a4,-3
  98:	8a89                	andi	a3,a3,2
  9a:	8f55                	or	a4,a4,a3
  9c:	00e409a3          	sb	a4,19(s0)
  a0:	00a4c703          	lbu	a4,10(s1)
  a4:	0094c683          	lbu	a3,9(s1)
  a8:	0722                	slli	a4,a4,0x8
  aa:	8f55                	or	a4,a4,a3
  ac:	00b4c683          	lbu	a3,11(s1)
  b0:	06c2                	slli	a3,a3,0x10
  b2:	8f55                	or	a4,a4,a3
  b4:	00c4c683          	lbu	a3,12(s1)
  b8:	06e2                	slli	a3,a3,0x18
  ba:	8ed9                	or	a3,a3,a4
  bc:	0086d713          	srli	a4,a3,0x8
  c0:	00d40ba3          	sb	a3,23(s0)
  c4:	00e40c23          	sb	a4,24(s0)
  c8:	0106d713          	srli	a4,a3,0x10
  cc:	82e1                	srli	a3,a3,0x18
  ce:	00e40ca3          	sb	a4,25(s0)
  d2:	00d40d23          	sb	a3,26(s0)
  d6:	00e4c703          	lbu	a4,14(s1)
  da:	00d4c683          	lbu	a3,13(s1)
  de:	0722                	slli	a4,a4,0x8
  e0:	8f55                	or	a4,a4,a3
  e2:	00f4c683          	lbu	a3,15(s1)
  e6:	06c2                	slli	a3,a3,0x10
  e8:	8f55                	or	a4,a4,a3
  ea:	0104c683          	lbu	a3,16(s1)
  ee:	06e2                	slli	a3,a3,0x18
  f0:	8ed9                	or	a3,a3,a4
  f2:	0086d713          	srli	a4,a3,0x8
  f6:	00d40da3          	sb	a3,27(s0)
  fa:	00e40e23          	sb	a4,28(s0)
  fe:	0106d713          	srli	a4,a3,0x10
 102:	82e1                	srli	a3,a3,0x18
 104:	00e40ea3          	sb	a4,29(s0)
 108:	00d40f23          	sb	a3,30(s0)
 10c:	0064c703          	lbu	a4,6(s1)
 110:	8b1d                	andi	a4,a4,7
 112:	8fd9                	or	a5,a5,a4
 114:	00f40a23          	sb	a5,20(s0)
 118:	00098b63          	beqz	s3,12e <.L96>
			118: R_RISCV_BRANCH	.L96
 11c:	02000613          	li	a2,32
 120:	85ce                	mv	a1,s3
 122:	01f40513          	addi	a0,s0,31
 126:	00000097          	auipc	ra,0x0
			126: R_RISCV_CALL	memcpy
			126: R_RISCV_RELAX	*ABS*
 12a:	000080e7          	jalr	ra # 126 <.LVL168+0xbe>

0000012e <.L96>:
 12e:	44b007b7          	lui	a5,0x44b00
 132:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000136 <.LBE468>:
 136:	3e800793          	li	a5,1000
 13a:	4462                	lw	s0,24(sp)

0000013c <.LVL170>:
 13c:	02f5d5b3          	divu	a1,a1,a5
 140:	40f2                	lw	ra,28(sp)
 142:	44d2                	lw	s1,20(sp)

00000144 <.LVL171>:
 144:	49b2                	lw	s3,12(sp)

00000146 <.LVL172>:
 146:	4a22                	lw	s4,8(sp)

00000148 <.LVL173>:
 148:	4a92                	lw	s5,4(sp)

0000014a <.LVL174>:
 14a:	00090613          	mv	a2,s2
			14a: R_RISCV_LO12_I	.LANCHOR14
			14a: R_RISCV_RELAX	*ABS*
 14e:	4942                	lw	s2,16(sp)
 150:	00000537          	lui	a0,0x0
			150: R_RISCV_HI20	.LC1
			150: R_RISCV_RELAX	*ABS*
 154:	00050513          	mv	a0,a0
			154: R_RISCV_LO12_I	.LC1
			154: R_RISCV_RELAX	*ABS*
 158:	6105                	addi	sp,sp,32
 15a:	00000317          	auipc	t1,0x0
			15a: R_RISCV_CALL	dbg_test_print
			15a: R_RISCV_RELAX	*ABS*
 15e:	00030067          	jr	t1 # 15a <.LVL174+0x10>

00000162 <.L94>:
 162:	40f2                	lw	ra,28(sp)
 164:	4462                	lw	s0,24(sp)

00000166 <.LVL176>:
 166:	44d2                	lw	s1,20(sp)

00000168 <.LVL177>:
 168:	4942                	lw	s2,16(sp)
 16a:	49b2                	lw	s3,12(sp)

0000016c <.LVL178>:
 16c:	4a22                	lw	s4,8(sp)

0000016e <.LVL179>:
 16e:	4a92                	lw	s5,4(sp)

00000170 <.LVL180>:
 170:	6105                	addi	sp,sp,32
 172:	8082                	ret

Disassembly of section .text.supplicantAkmIsWpaWpa2:

00000000 <supplicantAkmIsWpaWpa2>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB487>:
   c:	44b00937          	lui	s2,0x44b00
  10:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE487>:
  14:	3e800413          	li	s0,1000
  18:	89aa                	mv	s3,a0
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	.LANCHOR15
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL182>:
  26:	00048613          	mv	a2,s1
			26: R_RISCV_LO12_I	.LANCHOR15
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL182+0x8>

00000036 <.LVL183>:
  36:	000005b7          	lui	a1,0x0
			36: R_RISCV_HI20	.LANCHOR16
			36: R_RISCV_RELAX	*ABS*
  3a:	460d                	li	a2,3
  3c:	00058593          	mv	a1,a1
			3c: R_RISCV_LO12_I	.LANCHOR16
			3c: R_RISCV_RELAX	*ABS*
  40:	854e                	mv	a0,s3
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	memcmp
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL183+0xc>

0000004a <.LVL184>:
  4a:	e909                	bnez	a0,5c <.L108>
			4a: R_RISCV_RVC_BRANCH	.L108

0000004c <.L110>:
  4c:	4505                	li	a0,1

0000004e <.L107>:
  4e:	40f2                	lw	ra,28(sp)
  50:	4462                	lw	s0,24(sp)
  52:	44d2                	lw	s1,20(sp)
  54:	4942                	lw	s2,16(sp)
  56:	49b2                	lw	s3,12(sp)

00000058 <.LVL185>:
  58:	6105                	addi	sp,sp,32
  5a:	8082                	ret

0000005c <.L108>:
  5c:	000005b7          	lui	a1,0x0
			5c: R_RISCV_HI20	.LANCHOR9
			5c: R_RISCV_RELAX	*ABS*
  60:	460d                	li	a2,3
  62:	00058593          	mv	a1,a1
			62: R_RISCV_LO12_I	.LANCHOR9
			62: R_RISCV_RELAX	*ABS*
  66:	854e                	mv	a0,s3
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	memcmp
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L108+0xc>

00000070 <.LVL187>:
  70:	dd71                	beqz	a0,4c <.L110>
			70: R_RISCV_RVC_BRANCH	.L110

00000072 <.LBB488>:
  72:	12092583          	lw	a1,288(s2)

00000076 <.LBE490>:
  76:	00000537          	lui	a0,0x0
			76: R_RISCV_HI20	.LC1
			76: R_RISCV_RELAX	*ABS*
  7a:	00050513          	mv	a0,a0
			7a: R_RISCV_LO12_I	.LC1
			7a: R_RISCV_RELAX	*ABS*
  7e:	0285d5b3          	divu	a1,a1,s0
  82:	00048613          	mv	a2,s1
			82: R_RISCV_LO12_I	.LANCHOR15
			82: R_RISCV_RELAX	*ABS*
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	dbg_test_print
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LBE490+0x10>

0000008e <.LVL189>:
  8e:	4501                	li	a0,0
  90:	bf7d                	j	4e <.L107>
			90: R_RISCV_RVC_JUMP	.L107

Disassembly of section .text.supplicantAkmIsWpa2:

00000000 <supplicantAkmIsWpa2>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB511>:
   c:	44b00937          	lui	s2,0x44b00
  10:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE511>:
  14:	3e800413          	li	s0,1000
  18:	89aa                	mv	s3,a0
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	.LANCHOR17
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL191>:
  26:	00048613          	mv	a2,s1
			26: R_RISCV_LO12_I	.LANCHOR17
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL191+0x8>

00000036 <.LVL192>:
  36:	000005b7          	lui	a1,0x0
			36: R_RISCV_HI20	.LANCHOR9
			36: R_RISCV_RELAX	*ABS*
  3a:	460d                	li	a2,3
  3c:	00058593          	mv	a1,a1
			3c: R_RISCV_LO12_I	.LANCHOR9
			3c: R_RISCV_RELAX	*ABS*
  40:	854e                	mv	a0,s3
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	memcmp
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL192+0xc>

0000004a <.LVL193>:
  4a:	c51d                	beqz	a0,78 <.L117>
			4a: R_RISCV_RVC_BRANCH	.L117

0000004c <.LBB512>:
  4c:	12092583          	lw	a1,288(s2)

00000050 <.LBE514>:
  50:	00000537          	lui	a0,0x0
			50: R_RISCV_HI20	.LC1
			50: R_RISCV_RELAX	*ABS*
  54:	00050513          	mv	a0,a0
			54: R_RISCV_LO12_I	.LC1
			54: R_RISCV_RELAX	*ABS*
  58:	0285d5b3          	divu	a1,a1,s0
  5c:	00048613          	mv	a2,s1
			5c: R_RISCV_LO12_I	.LANCHOR17
			5c: R_RISCV_RELAX	*ABS*
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	dbg_test_print
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LBE514+0x10>

00000068 <.LVL195>:
  68:	4501                	li	a0,0

0000006a <.L115>:
  6a:	40f2                	lw	ra,28(sp)
  6c:	4462                	lw	s0,24(sp)
  6e:	44d2                	lw	s1,20(sp)
  70:	4942                	lw	s2,16(sp)
  72:	49b2                	lw	s3,12(sp)

00000074 <.LVL196>:
  74:	6105                	addi	sp,sp,32
  76:	8082                	ret

00000078 <.L117>:
  78:	4505                	li	a0,1
  7a:	bfc5                	j	6a <.L115>
			7a: R_RISCV_RVC_JUMP	.L115

Disassembly of section .text.supplicantAkmIsWpaWpa2Psk:

00000000 <supplicantAkmIsWpaWpa2Psk>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)

0000000e <.LBB524>:
   e:	44b009b7          	lui	s3,0x44b00
  12:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE524>:
  16:	3e800493          	li	s1,1000
  1a:	8a2a                	mv	s4,a0
  1c:	0295d5b3          	divu	a1,a1,s1
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LANCHOR18
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL199>:
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	00090613          	mv	a2,s2
			2c: R_RISCV_LO12_I	.LANCHOR18
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	dbg_test_print
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL199+0x8>

00000038 <.LVL200>:
  38:	8552                	mv	a0,s4
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	supplicantAkmIsWpaWpa2
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL200+0x2>

00000042 <.LVL201>:
  42:	c515                	beqz	a0,6e <.L120>
			42: R_RISCV_RVC_BRANCH	.L120
  44:	003a4783          	lbu	a5,3(s4)
  48:	4709                	li	a4,2
  4a:	4405                	li	s0,1
  4c:	0fb7f693          	andi	a3,a5,251
  50:	00e68663          	beq	a3,a4,5c <.L119>
			50: R_RISCV_BRANCH	.L119
  54:	ffc78413          	addi	s0,a5,-4
  58:	00143413          	seqz	s0,s0

0000005c <.L119>:
  5c:	8522                	mv	a0,s0
  5e:	40f2                	lw	ra,28(sp)
  60:	4462                	lw	s0,24(sp)
  62:	44d2                	lw	s1,20(sp)
  64:	4942                	lw	s2,16(sp)
  66:	49b2                	lw	s3,12(sp)
  68:	4a22                	lw	s4,8(sp)

0000006a <.LVL202>:
  6a:	6105                	addi	sp,sp,32
  6c:	8082                	ret

0000006e <.L120>:
  6e:	1209a583          	lw	a1,288(s3)
  72:	842a                	mv	s0,a0

00000074 <.LBB530>:
  74:	00000537          	lui	a0,0x0
			74: R_RISCV_HI20	.LC1
			74: R_RISCV_RELAX	*ABS*
  78:	0295d5b3          	divu	a1,a1,s1
  7c:	00090613          	mv	a2,s2
			7c: R_RISCV_LO12_I	.LANCHOR18
			7c: R_RISCV_RELAX	*ABS*
  80:	00050513          	mv	a0,a0
			80: R_RISCV_LO12_I	.LC1
			80: R_RISCV_RELAX	*ABS*
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	dbg_test_print
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LBB530+0x10>

0000008c <.LVL204>:
  8c:	bfc1                	j	5c <.L119>
			8c: R_RISCV_RVC_JUMP	.L119

Disassembly of section .text.supplicantAkmUsesKdf:

00000000 <supplicantAkmUsesKdf>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB536>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000010 <.LBE536>:
  10:	3e800793          	li	a5,1000
  14:	84aa                	mv	s1,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR19
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL206>:
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC0
			22: R_RISCV_RELAX	*ABS*
  26:	00040613          	mv	a2,s0
			26: R_RISCV_LO12_I	.LANCHOR19
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL206+0x8>

00000032 <.LVL207>:
  32:	8526                	mv	a0,s1
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	supplicantAkmIsWpa2
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL207+0x2>

0000003c <.LVL208>:
  3c:	c911                	beqz	a0,50 <.L125>
			3c: R_RISCV_RVC_BRANCH	.L125
  3e:	0034c783          	lbu	a5,3(s1) # 3 <supplicantAkmUsesKdf+0x3>
  42:	470d                	li	a4,3
  44:	4505                	li	a0,1
  46:	17f5                	addi	a5,a5,-3
  48:	0ff7f793          	andi	a5,a5,255
  4c:	02f77563          	bgeu	a4,a5,76 <.L124>
			4c: R_RISCV_BRANCH	.L124

00000050 <.L125>:
  50:	44b007b7          	lui	a5,0x44b00
  54:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000058 <.LBE537>:
  58:	3e800793          	li	a5,1000
  5c:	00000537          	lui	a0,0x0
			5c: R_RISCV_HI20	.LC1
			5c: R_RISCV_RELAX	*ABS*
  60:	02f5d5b3          	divu	a1,a1,a5
  64:	00050513          	mv	a0,a0
			64: R_RISCV_LO12_I	.LC1
			64: R_RISCV_RELAX	*ABS*
  68:	00040613          	mv	a2,s0
			68: R_RISCV_LO12_I	.LANCHOR19
			68: R_RISCV_RELAX	*ABS*
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	dbg_test_print
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE537+0x14>

00000074 <.LVL209>:
  74:	4501                	li	a0,0

00000076 <.L124>:
  76:	40b2                	lw	ra,12(sp)
  78:	4422                	lw	s0,8(sp)
  7a:	4492                	lw	s1,4(sp)

0000007c <.LVL210>:
  7c:	0141                	addi	sp,sp,16
  7e:	8082                	ret

Disassembly of section .text.supplicantConstructContext:

00000000 <supplicantConstructContext>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	c05a                	sw	s6,0(sp)

00000012 <.LBB547>:
  12:	44b007b7          	lui	a5,0x44b00

00000016 <.LBE547>:
  16:	8aae                	mv	s5,a1

00000018 <.LBB548>:
  18:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

0000001c <.LBE548>:
  1c:	3e800793          	li	a5,1000
  20:	8a2a                	mv	s4,a0
  22:	02f5d5b3          	divu	a1,a1,a5
  26:	000004b7          	lui	s1,0x0
			26: R_RISCV_HI20	.LANCHOR20
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL213>:
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	8932                	mv	s2,a2
  34:	00048613          	mv	a2,s1
			34: R_RISCV_LO12_I	.LANCHOR20
			34: R_RISCV_RELAX	*ABS*

00000038 <.LVL214>:
  38:	843a                	mv	s0,a4
  3a:	89b6                	mv	s3,a3
  3c:	00640b13          	addi	s6,s0,6 # 6 <supplicantConstructContext+0x6>
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	dbg_test_print
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL214+0x8>

00000048 <.LVL215>:
  48:	4619                	li	a2,6
  4a:	85d6                	mv	a1,s5
  4c:	8552                	mv	a0,s4
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memcmp
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL215+0x6>

00000056 <.LVL216>:
  56:	4619                	li	a2,6
  58:	08055863          	bgez	a0,e8 <.L133>
			58: R_RISCV_BRANCH	.L133
  5c:	85d2                	mv	a1,s4
  5e:	8522                	mv	a0,s0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	memcpy
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL216+0xa>

00000068 <.LVL217>:
  68:	4619                	li	a2,6
  6a:	85d6                	mv	a1,s5

0000006c <.L138>:
  6c:	855a                	mv	a0,s6
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	memcpy
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L138+0x2>

00000076 <.LVL218>:
  76:	02000613          	li	a2,32
  7a:	85ce                	mv	a1,s3
  7c:	854a                	mv	a0,s2
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	memcmp
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL218+0x8>

00000086 <.LVL219>:
  86:	00c40793          	addi	a5,s0,12
  8a:	02000613          	li	a2,32
  8e:	02c40413          	addi	s0,s0,44

00000092 <.LVL220>:
  92:	06055463          	bgez	a0,fa <.L135>
			92: R_RISCV_BRANCH	.L135
  96:	85ca                	mv	a1,s2
  98:	853e                	mv	a0,a5
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	memcpy
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL220+0x8>

000000a2 <.LVL221>:
  a2:	02000613          	li	a2,32
  a6:	85ce                	mv	a1,s3

000000a8 <.L139>:
  a8:	8522                	mv	a0,s0
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	memcpy
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.L139+0x2>

000000b2 <.LBB549>:
  b2:	44b007b7          	lui	a5,0x44b00
  b6:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000ba <.LBE549>:
  ba:	3e800793          	li	a5,1000
  be:	4462                	lw	s0,24(sp)

000000c0 <.LVL223>:
  c0:	02f5d5b3          	divu	a1,a1,a5
  c4:	40f2                	lw	ra,28(sp)
  c6:	4942                	lw	s2,16(sp)

000000c8 <.LVL224>:
  c8:	49b2                	lw	s3,12(sp)

000000ca <.LVL225>:
  ca:	4a22                	lw	s4,8(sp)

000000cc <.LVL226>:
  cc:	4a92                	lw	s5,4(sp)

000000ce <.LVL227>:
  ce:	4b02                	lw	s6,0(sp)

000000d0 <.LVL228>:
  d0:	00048613          	mv	a2,s1
			d0: R_RISCV_LO12_I	.LANCHOR20
			d0: R_RISCV_RELAX	*ABS*
  d4:	44d2                	lw	s1,20(sp)
  d6:	00000537          	lui	a0,0x0
			d6: R_RISCV_HI20	.LC1
			d6: R_RISCV_RELAX	*ABS*
  da:	00050513          	mv	a0,a0
			da: R_RISCV_LO12_I	.LC1
			da: R_RISCV_RELAX	*ABS*
  de:	6105                	addi	sp,sp,32
  e0:	00000317          	auipc	t1,0x0
			e0: R_RISCV_CALL	dbg_test_print
			e0: R_RISCV_RELAX	*ABS*
  e4:	00030067          	jr	t1 # e0 <.LVL228+0x10>

000000e8 <.L133>:
  e8:	85d6                	mv	a1,s5
  ea:	8522                	mv	a0,s0
  ec:	00000097          	auipc	ra,0x0
			ec: R_RISCV_CALL	memcpy
			ec: R_RISCV_RELAX	*ABS*
  f0:	000080e7          	jalr	ra # ec <.L133+0x4>

000000f4 <.LVL230>:
  f4:	4619                	li	a2,6
  f6:	85d2                	mv	a1,s4
  f8:	bf95                	j	6c <.L138>
			f8: R_RISCV_RVC_JUMP	.L138

000000fa <.L135>:
  fa:	85ce                	mv	a1,s3
  fc:	853e                	mv	a0,a5
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	memcpy
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.L135+0x4>

00000106 <.LVL232>:
 106:	02000613          	li	a2,32
 10a:	85ca                	mv	a1,s2
 10c:	bf71                	j	a8 <.L139>
			10c: R_RISCV_RVC_JUMP	.L139

Disassembly of section .text.KeyMgmt_DerivePTK:

00000000 <KeyMgmt_DerivePTK>:
   0:	7179                	addi	sp,sp,-48
   2:	c442                	sw	a6,8(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	c636                	sw	a3,12(sp)
  16:	89be                	mv	s3,a5

00000018 <.LBB559>:
  18:	44b007b7          	lui	a5,0x44b00

0000001c <.LBE559>:
  1c:	8aae                	mv	s5,a1

0000001e <.LBB560>:
  1e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000022 <.LBE560>:
  22:	3e800793          	li	a5,1000
  26:	8a2a                	mv	s4,a0
  28:	02f5d5b3          	divu	a1,a1,a5
  2c:	00000437          	lui	s0,0x0
			2c: R_RISCV_HI20	.LANCHOR21
			2c: R_RISCV_RELAX	*ABS*
  30:	00000537          	lui	a0,0x0
			30: R_RISCV_HI20	.LC0
			30: R_RISCV_RELAX	*ABS*

00000034 <.LVL236>:
  34:	8b32                	mv	s6,a2
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00040613          	mv	a2,s0
			3a: R_RISCV_LO12_I	.LANCHOR21
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LVL237>:
  3e:	893a                	mv	s2,a4
  40:	0c890493          	addi	s1,s2,200 # c8 <.L141+0xa>
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	dbg_test_print
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL237+0x6>

0000004c <.LVL238>:
  4c:	46b2                	lw	a3,12(sp)
  4e:	865a                	mv	a2,s6
  50:	8726                	mv	a4,s1
  52:	85d6                	mv	a1,s5
  54:	8552                	mv	a0,s4
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	supplicantConstructContext
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL238+0xa>

0000005e <.LVL239>:
  5e:	4822                	lw	a6,8(sp)
  60:	00000637          	lui	a2,0x0
			60: R_RISCV_HI20	.LC2
			60: R_RISCV_RELAX	*ABS*
  64:	04080d63          	beqz	a6,be <.L141>
			64: R_RISCV_BRANCH	.L141
  68:	18000893          	li	a7,384
  6c:	884a                	mv	a6,s2
  6e:	04c00793          	li	a5,76
  72:	8726                	mv	a4,s1
  74:	46d9                	li	a3,22
  76:	00060613          	mv	a2,a2
			76: R_RISCV_LO12_I	.LC2
			76: R_RISCV_RELAX	*ABS*
  7a:	02000593          	li	a1,32
  7e:	854e                	mv	a0,s3
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	bl_sha256_crypto_kdf
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL239+0x22>

00000088 <.L142>:
  88:	44b007b7          	lui	a5,0x44b00
  8c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000090 <.LBE561>:
  90:	3e800793          	li	a5,1000
  94:	00040613          	mv	a2,s0
			94: R_RISCV_LO12_I	.LANCHOR21
			94: R_RISCV_RELAX	*ABS*
  98:	02f5d5b3          	divu	a1,a1,a5
  9c:	5422                	lw	s0,40(sp)
  9e:	50b2                	lw	ra,44(sp)
  a0:	5492                	lw	s1,36(sp)

000000a2 <.LVL241>:
  a2:	5902                	lw	s2,32(sp)

000000a4 <.LVL242>:
  a4:	49f2                	lw	s3,28(sp)

000000a6 <.LVL243>:
  a6:	4a62                	lw	s4,24(sp)

000000a8 <.LVL244>:
  a8:	4ad2                	lw	s5,20(sp)

000000aa <.LVL245>:
  aa:	4b42                	lw	s6,16(sp)

000000ac <.LVL246>:
  ac:	00000537          	lui	a0,0x0
			ac: R_RISCV_HI20	.LC1
			ac: R_RISCV_RELAX	*ABS*
  b0:	00050513          	mv	a0,a0
			b0: R_RISCV_LO12_I	.LC1
			b0: R_RISCV_RELAX	*ABS*
  b4:	6145                	addi	sp,sp,48

000000b6 <.LVL247>:
  b6:	00000317          	auipc	t1,0x0
			b6: R_RISCV_CALL	dbg_test_print
			b6: R_RISCV_RELAX	*ABS*
  ba:	00030067          	jr	t1 # b6 <.LVL247>

000000be <.L141>:
  be:	04000893          	li	a7,64
  c2:	884a                	mv	a6,s2
  c4:	04c00793          	li	a5,76
  c8:	8726                	mv	a4,s1
  ca:	46d9                	li	a3,22
  cc:	00060613          	mv	a2,a2
			cc: R_RISCV_LO12_I	.LC2
			cc: R_RISCV_RELAX	*ABS*
  d0:	02000593          	li	a1,32
  d4:	854e                	mv	a0,s3
  d6:	00000097          	auipc	ra,0x0
			d6: R_RISCV_CALL	Bl_PRF
			d6: R_RISCV_RELAX	*ABS*
  da:	000080e7          	jalr	ra # d6 <.L141+0x18>

000000de <.LVL249>:
  de:	b76d                	j	88 <.L142>
			de: R_RISCV_RVC_JUMP	.L142

Disassembly of section .text.KeyMgmtSta_DeriveKeys:

00000000 <KeyMgmtSta_DeriveKeys>:
   0:	dc010113          	addi	sp,sp,-576
   4:	22812c23          	sw	s0,568(sp)
   8:	22912a23          	sw	s1,564(sp)
   c:	23212823          	sw	s2,560(sp)
  10:	23312623          	sw	s3,556(sp)
  14:	23412423          	sw	s4,552(sp)
  18:	23512223          	sw	s5,548(sp)
  1c:	23612023          	sw	s6,544(sp)
  20:	21712e23          	sw	s7,540(sp)
  24:	21812c23          	sw	s8,536(sp)
  28:	21912a23          	sw	s9,532(sp)
  2c:	22112e23          	sw	ra,572(sp)
  30:	c63a                	sw	a4,12(sp)

00000032 <.LBB571>:
  32:	44b009b7          	lui	s3,0x44b00

00000036 <.LBE571>:
  36:	8c2e                	mv	s8,a1

00000038 <.LBB572>:
  38:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF910+0x44afcdc5>

0000003c <.LBE572>:
  3c:	3e800493          	li	s1,1000
  40:	8aaa                	mv	s5,a0
  42:	0295d5b3          	divu	a1,a1,s1
  46:	00000937          	lui	s2,0x0
			46: R_RISCV_HI20	.LANCHOR22
			46: R_RISCV_RELAX	*ABS*
  4a:	00000537          	lui	a0,0x0
			4a: R_RISCV_HI20	.LC0
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL252>:
  4e:	8bb2                	mv	s7,a2
  50:	00050513          	mv	a0,a0
			50: R_RISCV_LO12_I	.LC0
			50: R_RISCV_RELAX	*ABS*
  54:	00090613          	mv	a2,s2
			54: R_RISCV_LO12_I	.LANCHOR22
			54: R_RISCV_RELAX	*ABS*

00000058 <.LVL253>:
  58:	8cb6                	mv	s9,a3
  5a:	8a3e                	mv	s4,a5
  5c:	8b42                	mv	s6,a6
  5e:	8446                	mv	s0,a7
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	dbg_test_print
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL253+0x8>

00000068 <.LVL254>:
  68:	080a8463          	beqz	s5,f0 <.L144>
			68: R_RISCV_BRANCH	.L144
  6c:	080a0263          	beqz	s4,f0 <.L144>
			6c: R_RISCV_BRANCH	.L144
  70:	c041                	beqz	s0,f0 <.L144>
			70: R_RISCV_RVC_BRANCH	.L144

00000072 <.LVL255>:
  72:	24012803          	lw	a6,576(sp)
  76:	46b2                	lw	a3,12(sp)
  78:	87d6                	mv	a5,s5
  7a:	0878                	addi	a4,sp,28

0000007c <.LVL256>:
  7c:	8666                	mv	a2,s9
  7e:	85e2                	mv	a1,s8
  80:	855e                	mv	a0,s7
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	KeyMgmt_DerivePTK
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL256+0x6>

0000008a <.LVL257>:
  8a:	4641                	li	a2,16
  8c:	086c                	addi	a1,sp,28

0000008e <.LVL258>:
  8e:	8552                	mv	a0,s4
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	memcpy
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL258+0x2>

00000098 <.LVL259>:
  98:	4641                	li	a2,16
  9a:	106c                	addi	a1,sp,44
  9c:	855a                	mv	a0,s6
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	memcpy
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LVL259+0x6>

000000a6 <.LVL260>:
  a6:	4641                	li	a2,16
  a8:	186c                	addi	a1,sp,60
  aa:	8522                	mv	a0,s0
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	memcpy
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL260+0x6>

000000b4 <.LVL261>:
  b4:	4621                	li	a2,8
  b6:	00ec                	addi	a1,sp,76
  b8:	01040513          	addi	a0,s0,16 # 10 <KeyMgmtSta_DeriveKeys+0x10>
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	memcpy
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL261+0x8>

000000c4 <.LVL262>:
  c4:	4621                	li	a2,8
  c6:	08cc                	addi	a1,sp,84
  c8:	01840513          	addi	a0,s0,24
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	memcpy
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.LVL262+0x8>

000000d4 <.LBB573>:
  d4:	1209a583          	lw	a1,288(s3)

000000d8 <.LBE573>:
  d8:	00000537          	lui	a0,0x0
			d8: R_RISCV_HI20	.LC1
			d8: R_RISCV_RELAX	*ABS*
  dc:	00090613          	mv	a2,s2
			dc: R_RISCV_LO12_I	.LANCHOR22
			dc: R_RISCV_RELAX	*ABS*
  e0:	0295d5b3          	divu	a1,a1,s1
  e4:	00050513          	mv	a0,a0
			e4: R_RISCV_LO12_I	.LC1
			e4: R_RISCV_RELAX	*ABS*
  e8:	00000097          	auipc	ra,0x0
			e8: R_RISCV_CALL	dbg_test_print
			e8: R_RISCV_RELAX	*ABS*
  ec:	000080e7          	jalr	ra # e8 <.LBE573+0x10>

000000f0 <.L144>:
  f0:	23c12083          	lw	ra,572(sp)
  f4:	23812403          	lw	s0,568(sp)

000000f8 <.LVL265>:
  f8:	23412483          	lw	s1,564(sp)
  fc:	23012903          	lw	s2,560(sp)
 100:	22c12983          	lw	s3,556(sp)
 104:	22812a03          	lw	s4,552(sp)

00000108 <.LVL266>:
 108:	22412a83          	lw	s5,548(sp)

0000010c <.LVL267>:
 10c:	22012b03          	lw	s6,544(sp)

00000110 <.LVL268>:
 110:	21c12b83          	lw	s7,540(sp)

00000114 <.LVL269>:
 114:	21812c03          	lw	s8,536(sp)

00000118 <.LVL270>:
 118:	21412c83          	lw	s9,532(sp)

0000011c <.LVL271>:
 11c:	24010113          	addi	sp,sp,576

00000120 <.LVL272>:
 120:	8082                	ret

Disassembly of section .text.SetEAPOLKeyDescTypeVersion:

00000000 <SetEAPOLKeyDescTypeVersion>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)

0000000e <.LBB581>:
   e:	44b00a37          	lui	s4,0x44b00
  12:	120a2583          	lw	a1,288(s4) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE581>:
  16:	3e800913          	li	s2,1000
  1a:	84aa                	mv	s1,a0
  1c:	0325d5b3          	divu	a1,a1,s2
  20:	000009b7          	lui	s3,0x0
			20: R_RISCV_HI20	.LANCHOR23
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL275>:
  28:	8432                	mv	s0,a2
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00098613          	mv	a2,s3
			2e: R_RISCV_LO12_I	.LANCHOR23
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL276>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL276>

0000003a <.LVL277>:
  3a:	0144c603          	lbu	a2,20(s1) # 14 <.LBB581+0x6>
  3e:	4789                	li	a5,2
  40:	00f48923          	sb	a5,18(s1)
  44:	008037b3          	snez	a5,s0
  48:	0789                	addi	a5,a5,2
  4a:	9a61                	andi	a2,a2,-8
  4c:	8e5d                	or	a2,a2,a5
  4e:	00c48a23          	sb	a2,20(s1)

00000052 <.LBB582>:
  52:	120a2583          	lw	a1,288(s4)

00000056 <.LBE582>:
  56:	4462                	lw	s0,24(sp)

00000058 <.LVL278>:
  58:	40f2                	lw	ra,28(sp)
  5a:	0325d5b3          	divu	a1,a1,s2
  5e:	44d2                	lw	s1,20(sp)

00000060 <.LVL279>:
  60:	4942                	lw	s2,16(sp)
  62:	4a22                	lw	s4,8(sp)
  64:	00098613          	mv	a2,s3
			64: R_RISCV_LO12_I	.LANCHOR23
			64: R_RISCV_RELAX	*ABS*
  68:	49b2                	lw	s3,12(sp)
  6a:	00000537          	lui	a0,0x0
			6a: R_RISCV_HI20	.LC1
			6a: R_RISCV_RELAX	*ABS*
  6e:	00050513          	mv	a0,a0
			6e: R_RISCV_LO12_I	.LC1
			6e: R_RISCV_RELAX	*ABS*
  72:	6105                	addi	sp,sp,32
  74:	00000317          	auipc	t1,0x0
			74: R_RISCV_CALL	dbg_test_print
			74: R_RISCV_RELAX	*ABS*
  78:	00030067          	jr	t1 # 74 <.LVL279+0x14>

Disassembly of section .text.GetKeyMsgNonceFromEAPOL:

00000000 <GetKeyMsgNonceFromEAPOL>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB592>:
   a:	44b007b7          	lui	a5,0x44b00

0000000e <.LBE592>:
   e:	892e                	mv	s2,a1

00000010 <.LBB593>:
  10:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE593>:
  14:	3e800793          	li	a5,1000
  18:	842a                	mv	s0,a0
  1a:	02f5d5b3          	divu	a1,a1,a5
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	.LANCHOR24
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL283>:
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00048613          	mv	a2,s1
			2a: R_RISCV_LO12_I	.LANCHOR24
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL283+0x8>

00000036 <.LVL284>:
  36:	4400                	lw	s0,8(s0)

00000038 <.LVL285>:
  38:	854a                	mv	a0,s2
  3a:	85a2                	mv	a1,s0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	KeyMgmtSta_IsRxEAPOLValid
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL285+0x4>

00000044 <.LVL286>:
  44:	cd39                	beqz	a0,a2 <.L162>
			44: R_RISCV_RVC_BRANCH	.L162
  46:	00544783          	lbu	a5,5(s0)
  4a:	8b85                	andi	a5,a5,1
  4c:	e395                	bnez	a5,70 <.L161>
			4c: R_RISCV_RVC_BRANCH	.L161
  4e:	01140593          	addi	a1,s0,17
  52:	02000613          	li	a2,32
  56:	854a                	mv	a0,s2
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	memcpy
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL286+0x14>

00000060 <.LVL287>:
  60:	02000593          	li	a1,32
  64:	02090513          	addi	a0,s2,32 # 20 <.LBE593+0xc>
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	supplicantGenerateRand
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL287+0x8>

00000070 <.L161>:
  70:	44b007b7          	lui	a5,0x44b00
  74:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000078 <.LBE594>:
  78:	3e800793          	li	a5,1000
  7c:	00000537          	lui	a0,0x0
			7c: R_RISCV_HI20	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	02f5d5b3          	divu	a1,a1,a5
  84:	00048613          	mv	a2,s1
			84: R_RISCV_LO12_I	.LANCHOR24
			84: R_RISCV_RELAX	*ABS*
  88:	00050513          	mv	a0,a0
			88: R_RISCV_LO12_I	.LC1
			88: R_RISCV_RELAX	*ABS*
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	dbg_test_print
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LBE594+0x14>

00000094 <.L159>:
  94:	8522                	mv	a0,s0
  96:	40b2                	lw	ra,12(sp)
  98:	4422                	lw	s0,8(sp)
  9a:	4492                	lw	s1,4(sp)
  9c:	4902                	lw	s2,0(sp)

0000009e <.LVL290>:
  9e:	0141                	addi	sp,sp,16
  a0:	8082                	ret

000000a2 <.L162>:
  a2:	4401                	li	s0,0

000000a4 <.LVL292>:
  a4:	bfc5                	j	94 <.L159>
			a4: R_RISCV_RVC_JUMP	.L159

Disassembly of section .text.ProcessRxEAPOL_PwkMsg3:

00000000 <ProcessRxEAPOL_PwkMsg3>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB604>:
   c:	44b007b7          	lui	a5,0x44b00

00000010 <.LBE604>:
  10:	84ae                	mv	s1,a1

00000012 <.LBB605>:
  12:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE605>:
  16:	3e800793          	li	a5,1000
  1a:	842a                	mv	s0,a0
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LANCHOR25
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL295>:
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	00090613          	mv	a2,s2
			2c: R_RISCV_LO12_I	.LANCHOR25
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	dbg_test_print
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL295+0x8>

00000038 <.LVL296>:
  38:	85a6                	mv	a1,s1
  3a:	8522                	mv	a0,s0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	GetKeyMsgNonceFromEAPOL
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL296+0x4>

00000044 <.LVL297>:
  44:	e911                	bnez	a0,58 <.L165>
			44: R_RISCV_RVC_BRANCH	.L165

00000046 <.L168>:
  46:	4401                	li	s0,0

00000048 <.L164>:
  48:	8522                	mv	a0,s0
  4a:	40f2                	lw	ra,28(sp)
  4c:	4462                	lw	s0,24(sp)
  4e:	44d2                	lw	s1,20(sp)

00000050 <.LVL299>:
  50:	4942                	lw	s2,16(sp)
  52:	49b2                	lw	s3,12(sp)
  54:	6105                	addi	sp,sp,32
  56:	8082                	ret

00000058 <.L165>:
  58:	4785                	li	a5,1
  5a:	0ef49c23          	sh	a5,248(s1) # f8 <.LVL265>
  5e:	0e04aa23          	sw	zero,244(s1)
  62:	00554783          	lbu	a5,5(a0) # 5 <ProcessRxEAPOL_PwkMsg3+0x5>
  66:	842a                	mv	s0,a0

00000068 <.LVL301>:
  68:	8bc1                	andi	a5,a5,16
  6a:	c7a9                	beqz	a5,b4 <.L167>
			6a: R_RISCV_RVC_BRANCH	.L167

0000006c <.LVL302>:
  6c:	10848513          	addi	a0,s1,264
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	mm_timer_clear
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL302+0x4>

00000078 <.LVL303>:
  78:	0ac48993          	addi	s3,s1,172
  7c:	85ce                	mv	a1,s3
  7e:	8522                	mv	a0,s0
  80:	05048613          	addi	a2,s1,80
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	KeyMgmtSta_ApplyKEK
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL303+0xc>

0000008c <.LVL304>:
  8c:	85a2                	mv	a1,s0
  8e:	8526                	mv	a0,s1
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	keyMgmtProcessMsgExt
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL304+0x4>

00000098 <.LVL305>:
  98:	d55d                	beqz	a0,46 <.L168>
			98: R_RISCV_RVC_BRANCH	.L168
  9a:	06244783          	lbu	a5,98(s0)
  9e:	06144583          	lbu	a1,97(s0)
  a2:	864e                	mv	a2,s3
  a4:	07a2                	slli	a5,a5,0x8
  a6:	8ddd                	or	a1,a1,a5
  a8:	06340513          	addi	a0,s0,99
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	parseKeyDataGTK
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL305+0x14>

000000b4 <.L167>:
  b4:	44b007b7          	lui	a5,0x44b00
  b8:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000bc <.LBE606>:
  bc:	3e800793          	li	a5,1000
  c0:	00000537          	lui	a0,0x0
			c0: R_RISCV_HI20	.LC1
			c0: R_RISCV_RELAX	*ABS*
  c4:	02f5d5b3          	divu	a1,a1,a5
  c8:	00090613          	mv	a2,s2
			c8: R_RISCV_LO12_I	.LANCHOR25
			c8: R_RISCV_RELAX	*ABS*
  cc:	00050513          	mv	a0,a0
			cc: R_RISCV_LO12_I	.LC1
			cc: R_RISCV_RELAX	*ABS*
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	dbg_test_print
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LBE606+0x14>

000000d8 <.LVL307>:
  d8:	bf85                	j	48 <.L164>
			d8: R_RISCV_RVC_JUMP	.L164

Disassembly of section .text.ProcessRxEAPOL_GrpMsg1:

00000000 <ProcessRxEAPOL_GrpMsg1>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	d606                	sw	ra,44(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	84ae                	mv	s1,a1
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	GetKeyMsgNonceFromEAPOL
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <ProcessRxEAPOL_GrpMsg1+0x10>

00000018 <.LBB609>:
  18:	44b007b7          	lui	a5,0x44b00
  1c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000020 <.LBE609>:
  20:	3e800793          	li	a5,1000
  24:	842a                	mv	s0,a0

00000026 <.LBB614>:
  26:	02f5d5b3          	divu	a1,a1,a5
  2a:	00000937          	lui	s2,0x0
			2a: R_RISCV_HI20	.LANCHOR26
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00090613          	mv	a2,s2
			32: R_RISCV_LO12_I	.LANCHOR26
			32: R_RISCV_RELAX	*ABS*
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBB614+0x14>

00000042 <.LVL311>:
  42:	e819                	bnez	s0,58 <.L177>
			42: R_RISCV_RVC_BRANCH	.L177

00000044 <.L180>:
  44:	4401                	li	s0,0

00000046 <.L176>:
  46:	8522                	mv	a0,s0
  48:	50b2                	lw	ra,44(sp)
  4a:	5422                	lw	s0,40(sp)
  4c:	5492                	lw	s1,36(sp)

0000004e <.LVL313>:
  4e:	5902                	lw	s2,32(sp)
  50:	49f2                	lw	s3,28(sp)
  52:	4a62                	lw	s4,24(sp)
  54:	6145                	addi	sp,sp,48
  56:	8082                	ret

00000058 <.L177>:
  58:	0ac48993          	addi	s3,s1,172
  5c:	05048613          	addi	a2,s1,80
  60:	85ce                	mv	a1,s3
  62:	8522                	mv	a0,s0
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	KeyMgmtSta_ApplyKEK
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.L177+0xc>

0000006c <.LVL315>:
  6c:	4785                	li	a5,1
  6e:	d8fc                	sw	a5,116(s1)
  70:	10848513          	addi	a0,s1,264
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	mm_timer_clear
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL315+0x8>

0000007c <.LVL316>:
  7c:	00444683          	lbu	a3,4(s0)
  80:	4709                	li	a4,2
  82:	06340513          	addi	a0,s0,99
  86:	06144783          	lbu	a5,97(s0)
  8a:	06244603          	lbu	a2,98(s0)
  8e:	04e69463          	bne	a3,a4,d6 <.L179>
			8e: R_RISCV_BRANCH	.L179
  92:	00861593          	slli	a1,a2,0x8
  96:	8ddd                	or	a1,a1,a5
  98:	864e                	mv	a2,s3
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	parseKeyDataGTK
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL316+0x1e>

000000a2 <.LVL317>:
  a2:	85a2                	mv	a1,s0
  a4:	8526                	mv	a0,s1
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	keyMgmtProcessMsgExt
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL317+0x4>

000000ae <.LVL318>:
  ae:	d959                	beqz	a0,44 <.L180>
			ae: R_RISCV_RVC_BRANCH	.L180

000000b0 <.L181>:
  b0:	44b007b7          	lui	a5,0x44b00
  b4:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

000000b8 <.LBE615>:
  b8:	3e800793          	li	a5,1000
  bc:	00000537          	lui	a0,0x0
			bc: R_RISCV_HI20	.LC1
			bc: R_RISCV_RELAX	*ABS*
  c0:	02f5d5b3          	divu	a1,a1,a5
  c4:	00090613          	mv	a2,s2
			c4: R_RISCV_LO12_I	.LANCHOR26
			c4: R_RISCV_RELAX	*ABS*
  c8:	00050513          	mv	a0,a0
			c8: R_RISCV_LO12_I	.LC1
			c8: R_RISCV_RELAX	*ABS*
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	dbg_test_print
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.LBE615+0x14>

000000d4 <.LVL319>:
  d4:	bf8d                	j	46 <.L176>
			d4: R_RISCV_RVC_JUMP	.L176

000000d6 <.L179>:
  d6:	0622                	slli	a2,a2,0x8
  d8:	8e5d                	or	a2,a2,a5
  da:	85aa                	mv	a1,a0
  dc:	854e                	mv	a0,s3
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	memcpy
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.L179+0x8>

000000e6 <.LVL320>:
  e6:	0c448a13          	addi	s4,s1,196
  ea:	4621                	li	a2,8
  ec:	85d2                	mv	a1,s4
  ee:	0028                	addi	a0,sp,8
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	memcpy
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.LVL320+0xa>

000000f8 <.LVL321>:
  f8:	0bc48993          	addi	s3,s1,188
  fc:	4621                	li	a2,8
  fe:	85ce                	mv	a1,s3
 100:	8552                	mv	a0,s4
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	memcpy
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.LVL321+0xa>

0000010a <.LVL322>:
 10a:	4621                	li	a2,8
 10c:	002c                	addi	a1,sp,8
 10e:	854e                	mv	a0,s3
 110:	00000097          	auipc	ra,0x0
			110: R_RISCV_CALL	memcpy
			110: R_RISCV_RELAX	*ABS*
 114:	000080e7          	jalr	ra # 110 <.LVL322+0x6>

00000118 <.LVL323>:
 118:	00644783          	lbu	a5,6(s0)
 11c:	8391                	srli	a5,a5,0x4
 11e:	8b8d                	andi	a5,a5,3
 120:	0cf49923          	sh	a5,210(s1)
 124:	b771                	j	b0 <.L181>
			124: R_RISCV_RVC_JUMP	.L181

Disassembly of section .text.KeyMgmtResetCounter:

00000000 <KeyMgmtResetCounter>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB623>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000010 <.LBE623>:
  10:	3e800793          	li	a5,1000
  14:	84aa                	mv	s1,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR27
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL325>:
  22:	00040613          	mv	a2,s0
			22: R_RISCV_LO12_I	.LANCHOR27
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL325+0x8>

00000032 <.LVL326>:
  32:	c489                	beqz	s1,3c <.L187>
			32: R_RISCV_RVC_BRANCH	.L187
  34:	0604a823          	sw	zero,112(s1)
  38:	0604a623          	sw	zero,108(s1)

0000003c <.L187>:
  3c:	44b007b7          	lui	a5,0x44b00
  40:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000044 <.LBE624>:
  44:	3e800793          	li	a5,1000
  48:	00040613          	mv	a2,s0
			48: R_RISCV_LO12_I	.LANCHOR27
			48: R_RISCV_RELAX	*ABS*
  4c:	02f5d5b3          	divu	a1,a1,a5
  50:	4422                	lw	s0,8(sp)
  52:	40b2                	lw	ra,12(sp)
  54:	4492                	lw	s1,4(sp)

00000056 <.LVL327>:
  56:	00000537          	lui	a0,0x0
			56: R_RISCV_HI20	.LC1
			56: R_RISCV_RELAX	*ABS*
  5a:	00050513          	mv	a0,a0
			5a: R_RISCV_LO12_I	.LC1
			5a: R_RISCV_RELAX	*ABS*
  5e:	0141                	addi	sp,sp,16
  60:	00000317          	auipc	t1,0x0
			60: R_RISCV_CALL	dbg_test_print
			60: R_RISCV_RELAX	*ABS*
  64:	00030067          	jr	t1 # 60 <.LVL327+0xa>

Disassembly of section .text.keyMgmtSta_StartSession_internal:

00000000 <keyMgmtSta_StartSession_internal>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB634>:
   c:	44b00937          	lui	s2,0x44b00

00000010 <.LBE634>:
  10:	89ae                	mv	s3,a1

00000012 <.LBB635>:
  12:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF910+0x44afcdc5>

00000016 <.LBE635>:
  16:	3e800793          	li	a5,1000
  1a:	842a                	mv	s0,a0
  1c:	02f5d5b3          	divu	a1,a1,a5
  20:	000004b7          	lui	s1,0x0
			20: R_RISCV_HI20	.LANCHOR28
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL331>:
  28:	00048613          	mv	a2,s1
			28: R_RISCV_LO12_I	.LANCHOR28
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	dbg_test_print
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL331+0x8>

00000038 <.LVL332>:
  38:	10442783          	lw	a5,260(s0) # 104 <.LASF795+0x3>
  3c:	eb91                	bnez	a5,50 <.L193>
			3c: R_RISCV_RVC_BRANCH	.L193

0000003e <.LBB636>:
  3e:	12092583          	lw	a1,288(s2)

00000042 <.LBE636>:
  42:	10840513          	addi	a0,s0,264
  46:	95ce                	add	a1,a1,s3
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	mm_timer_set
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LBE636+0x6>

00000050 <.L193>:
  50:	06042023          	sw	zero,96(s0)
  54:	06042223          	sw	zero,100(s0)
  58:	06042423          	sw	zero,104(s0)

0000005c <.LBB639>:
  5c:	44b007b7          	lui	a5,0x44b00
  60:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF910+0x44afcdc5>

00000064 <.LBE639>:
  64:	3e800793          	li	a5,1000
  68:	4462                	lw	s0,24(sp)

0000006a <.LVL334>:
  6a:	02f5d5b3          	divu	a1,a1,a5
  6e:	40f2                	lw	ra,28(sp)
  70:	4942                	lw	s2,16(sp)
  72:	49b2                	lw	s3,12(sp)

00000074 <.LVL335>:
  74:	00048613          	mv	a2,s1
			74: R_RISCV_LO12_I	.LANCHOR28
			74: R_RISCV_RELAX	*ABS*
  78:	44d2                	lw	s1,20(sp)
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
  88:	00030067          	jr	t1 # 84 <.LVL335+0x10>

Disassembly of section .text.KeyMgmtSta_InitSession:

00000000 <KeyMgmtSta_InitSession>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB647>:
   c:	44b009b7          	lui	s3,0x44b00
  10:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF910+0x44afcdc5>

00000014 <.LBE647>:
  14:	3e800493          	li	s1,1000
  18:	842a                	mv	s0,a0
  1a:	0295d5b3          	divu	a1,a1,s1
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR29
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL338>:
  26:	00090613          	mv	a2,s2
			26: R_RISCV_LO12_I	.LANCHOR29
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL338+0x8>

00000036 <.LVL339>:
  36:	000007b7          	lui	a5,0x0
			36: R_RISCV_HI20	keyMgmtStaRsnSecuredTimeoutHandler
			36: R_RISCV_RELAX	*ABS*
  3a:	00078793          	mv	a5,a5
			3a: R_RISCV_LO12_I	keyMgmtStaRsnSecuredTimeoutHandler
			3a: R_RISCV_RELAX	*ABS*
  3e:	06042a23          	sw	zero,116(s0)
  42:	06042c23          	sw	zero,120(s0)
  46:	08042023          	sw	zero,128(s0)
  4a:	06042e23          	sw	zero,124(s0)
  4e:	10f42623          	sw	a5,268(s0)
  52:	10842823          	sw	s0,272(s0)

00000056 <.LBB648>:
  56:	1209a583          	lw	a1,288(s3)

0000005a <.LBE648>:
  5a:	4462                	lw	s0,24(sp)

0000005c <.LVL340>:
  5c:	40f2                	lw	ra,28(sp)
  5e:	0295d5b3          	divu	a1,a1,s1
  62:	49b2                	lw	s3,12(sp)
  64:	44d2                	lw	s1,20(sp)
  66:	00090613          	mv	a2,s2
			66: R_RISCV_LO12_I	.LANCHOR29
			66: R_RISCV_RELAX	*ABS*
  6a:	4942                	lw	s2,16(sp)
  6c:	00000537          	lui	a0,0x0
			6c: R_RISCV_HI20	.LC1
			6c: R_RISCV_RELAX	*ABS*
  70:	00050513          	mv	a0,a0
			70: R_RISCV_LO12_I	.LC1
			70: R_RISCV_RELAX	*ABS*
  74:	6105                	addi	sp,sp,32
  76:	00000317          	auipc	t1,0x0
			76: R_RISCV_CALL	dbg_test_print
			76: R_RISCV_RELAX	*ABS*
  7a:	00030067          	jr	t1 # 76 <.LVL340+0x1a>
