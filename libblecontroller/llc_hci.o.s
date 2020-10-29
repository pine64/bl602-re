
libblecontroller/llc_hci.o:     file format elf32-littleriscv


Disassembly of section .text.hci_le_set_data_len_cmd_handler:

00000000 <hci_le_set_data_len_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL1>:
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	84ae                	mv	s1,a1
   e:	8936                	mv	s2,a3
  10:	c632                	sw	a2,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ble_ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL1+0xe>

0000001a <.LBB106>:
  1a:	893d                	andi	a0,a0,15

0000001c <.LVL3>:
  1c:	47bd                	li	a5,15
  1e:	08f50763          	beq	a0,a5,ac <.L4>
			1e: R_RISCV_BRANCH	.L4

00000022 <.LBB108>:
  22:	0004d503          	lhu	a0,0(s1)
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	llc_env
			26: R_RISCV_RELAX	*ABS*
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	00251713          	slli	a4,a0,0x2
  32:	97ba                	add	a5,a5,a4
  34:	439c                	lw	a5,0(a5)

00000036 <.LVL4>:
  36:	0527c703          	lbu	a4,82(a5) # 52 <.LVL4+0x1c>
  3a:	ef25                	bnez	a4,b2 <.L5>
			3a: R_RISCV_RVC_BRANCH	.L5
  3c:	0024d583          	lhu	a1,2(s1)
  40:	0e000693          	li	a3,224
  44:	fe558713          	addi	a4,a1,-27
  48:	0742                	slli	a4,a4,0x10
  4a:	8341                	srli	a4,a4,0x10
  4c:	06e6e563          	bltu	a3,a4,b6 <.L8>
			4c: R_RISCV_BRANCH	.L8
  50:	0044d683          	lhu	a3,4(s1)
  54:	70000813          	li	a6,1792
  58:	eb868713          	addi	a4,a3,-328
  5c:	0742                	slli	a4,a4,0x10
  5e:	8341                	srli	a4,a4,0x10
  60:	04e86b63          	bltu	a6,a4,b6 <.L8>
			60: R_RISCV_BRANCH	.L8
  64:	4709                	li	a4,2
  66:	04a76863          	bltu	a4,a0,b6 <.L8>
			66: R_RISCV_BRANCH	.L8
  6a:	0467d703          	lhu	a4,70(a5)
  6e:	4632                	lw	a2,12(sp)
  70:	00b71663          	bne	a4,a1,7c <.L3>
			70: R_RISCV_BRANCH	.L3
  74:	04e7d703          	lhu	a4,78(a5)
  78:	04d70163          	beq	a4,a3,ba <.L9>
			78: R_RISCV_BRANCH	.L9

0000007c <.L3>:
  7c:	85b2                	mv	a1,a2

0000007e <.LBB112>:
  7e:	c7c4                	sw	s1,12(a5)

00000080 <.LBE112>:
  80:	10700513          	li	a0,263
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	ble_ke_msg_send_basic
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LBE112+0x4>

0000008c <.LVL7>:
  8c:	4581                	li	a1,0
  8e:	4405                	li	s0,1

00000090 <.L2>:
  90:	0004d603          	lhu	a2,0(s1)
  94:	854a                	mv	a0,s2
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	llc_common_cmd_complete_send
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.L2+0x6>

0000009e <.LVL9>:
  9e:	8522                	mv	a0,s0
  a0:	40f2                	lw	ra,28(sp)
  a2:	4462                	lw	s0,24(sp)

000000a4 <.LVL10>:
  a4:	44d2                	lw	s1,20(sp)

000000a6 <.LVL11>:
  a6:	4942                	lw	s2,16(sp)
  a8:	6105                	addi	sp,sp,32
  aa:	8082                	ret

000000ac <.L4>:
  ac:	45b1                	li	a1,12

000000ae <.L11>:
  ae:	4401                	li	s0,0
  b0:	b7c5                	j	90 <.L2>
			b0: R_RISCV_RVC_JUMP	.L2

000000b2 <.L5>:
  b2:	45e9                	li	a1,26
  b4:	bfed                	j	ae <.L11>
			b4: R_RISCV_RVC_JUMP	.L11

000000b6 <.L8>:
  b6:	45c9                	li	a1,18
  b8:	bfdd                	j	ae <.L11>
			b8: R_RISCV_RVC_JUMP	.L11

000000ba <.L9>:
  ba:	4581                	li	a1,0
  bc:	bfcd                	j	ae <.L11>
			bc: R_RISCV_RVC_JUMP	.L11

Disassembly of section .text.hci_le_rem_con_param_req_neg_reply_cmd_handler:

00000000 <hci_le_rem_con_param_req_neg_reply_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL15>:
   4:	cc22                	sw	s0,24(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	842e                	mv	s0,a1
   c:	ce06                	sw	ra,28(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	8a32                	mv	s4,a2
  14:	89b6                	mv	s3,a3
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL15+0x12>

0000001e <.LBB114>:
  1e:	00f57713          	andi	a4,a0,15
  22:	47bd                	li	a5,15
  24:	45b1                	li	a1,12
  26:	06f70963          	beq	a4,a5,98 <.L13>
			26: R_RISCV_BRANCH	.L13
  2a:	00257793          	andi	a5,a0,2
  2e:	892a                	mv	s2,a0

00000030 <.LBB116>:
  30:	c7a5                	beqz	a5,98 <.L13>
			30: R_RISCV_RVC_BRANCH	.L13
  32:	00045503          	lhu	a0,0(s0)

00000036 <.LVL18>:
  36:	000004b7          	lui	s1,0x0
			36: R_RISCV_HI20	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	00048493          	mv	s1,s1
			3a: R_RISCV_LO12_I	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	00251793          	slli	a5,a0,0x2
  42:	97a6                	add	a5,a5,s1
  44:	439c                	lw	a5,0(a5)
  46:	0a47c703          	lbu	a4,164(a5)
  4a:	4789                	li	a5,2
  4c:	04f71663          	bne	a4,a5,98 <.L13>
			4c: R_RISCV_BRANCH	.L13
  50:	00244703          	lbu	a4,2(s0)
  54:	03b00793          	li	a5,59
  58:	45c9                	li	a1,18
  5a:	02f71f63          	bne	a4,a5,98 <.L13>
			5a: R_RISCV_BRANCH	.L13
  5e:	4585                	li	a1,1
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	llc_util_clear_operation_ptr
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL18+0x2a>

00000068 <.LBB118>:
  68:	0fd97593          	andi	a1,s2,253
  6c:	8552                	mv	a0,s4
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ble_ke_state_set
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LBB118+0x6>

00000076 <.LBE118>:
  76:	00045783          	lhu	a5,0(s0)
  7a:	45bd                	li	a1,15
  7c:	078a                	slli	a5,a5,0x2
  7e:	94be                	add	s1,s1,a5
  80:	409c                	lw	a5,0(s1)
  82:	0a078223          	sb	zero,164(a5)

00000086 <.LVL21>:
  86:	00244603          	lbu	a2,2(s0)
  8a:	00045503          	lhu	a0,0(s0)
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL21+0x8>

00000096 <.LVL22>:
  96:	4581                	li	a1,0

00000098 <.L13>:
  98:	00045603          	lhu	a2,0(s0)
  9c:	854e                	mv	a0,s3
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	llc_common_cmd_complete_send
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.L13+0x6>

000000a6 <.LVL24>:
  a6:	40f2                	lw	ra,28(sp)
  a8:	4462                	lw	s0,24(sp)

000000aa <.LVL25>:
  aa:	44d2                	lw	s1,20(sp)
  ac:	4942                	lw	s2,16(sp)
  ae:	49b2                	lw	s3,12(sp)
  b0:	4a22                	lw	s4,8(sp)
  b2:	4501                	li	a0,0
  b4:	6105                	addi	sp,sp,32
  b6:	8082                	ret

Disassembly of section .text.hci_le_rem_con_param_req_reply_cmd_handler:

00000000 <hci_le_rem_con_param_req_reply_cmd_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	8532                	mv	a0,a2

00000004 <.LVL27>:
   4:	d422                	sw	s0,40(sp)
   6:	cc52                	sw	s4,24(sp)
   8:	ca56                	sw	s5,20(sp)
   a:	c65e                	sw	s7,12(sp)
   c:	d606                	sw	ra,44(sp)
   e:	d226                	sw	s1,36(sp)
  10:	d04a                	sw	s2,32(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	c85a                	sw	s6,16(sp)
  16:	c462                	sw	s8,8(sp)
  18:	c266                	sw	s9,4(sp)
  1a:	842e                	mv	s0,a1
  1c:	8ab2                	mv	s5,a2
  1e:	8bb6                	mv	s7,a3
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ble_ke_state_get
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL27+0x1c>

00000028 <.LBB120>:
  28:	00f57713          	andi	a4,a0,15
  2c:	47bd                	li	a5,15
  2e:	4a31                	li	s4,12
  30:	0af70963          	beq	a4,a5,e2 <.L21>
			30: R_RISCV_BRANCH	.L21
  34:	00257793          	andi	a5,a0,2
  38:	8b2a                	mv	s6,a0

0000003a <.LBB122>:
  3a:	c7c5                	beqz	a5,e2 <.L21>
			3a: R_RISCV_RVC_BRANCH	.L21
  3c:	00045503          	lhu	a0,0(s0)

00000040 <.LBB124>:
  40:	00000937          	lui	s2,0x0
			40: R_RISCV_HI20	llc_env
			40: R_RISCV_RELAX	*ABS*
  44:	00090793          	mv	a5,s2
			44: R_RISCV_LO12_I	llc_env
			44: R_RISCV_RELAX	*ABS*
  48:	00251713          	slli	a4,a0,0x2
  4c:	97ba                	add	a5,a5,a4
  4e:	0007a983          	lw	s3,0(a5)

00000052 <.LVL31>:
  52:	4789                	li	a5,2
  54:	00090913          	mv	s2,s2
			54: R_RISCV_LO12_I	llc_env
			54: R_RISCV_RELAX	*ABS*
  58:	0a49cc83          	lbu	s9,164(s3)
  5c:	08fc9363          	bne	s9,a5,e2 <.L21>
			5c: R_RISCV_BRANCH	.L21

00000060 <.LBB125>:
  60:	0049a483          	lw	s1,4(s3)

00000064 <.LBE126>:
  64:	4c0d                	li	s8,3
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	lld_get_mode
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LBE126+0x2>

0000006e <.LVL34>:
  6e:	0b851063          	bne	a0,s8,10e <.L22>
			6e: R_RISCV_BRANCH	.L22
  72:	01948023          	sb	s9,0(s1) # 0 <hci_le_rem_con_param_req_reply_cmd_handler>

00000076 <.LBB128>:
  76:	00245703          	lhu	a4,2(s0)

0000007a <.LBB131>:
  7a:	00e4d783          	lhu	a5,14(s1)
  7e:	00f77363          	bgeu	a4,a5,84 <.L23>
			7e: R_RISCV_BRANCH	.L23
  82:	87ba                	mv	a5,a4

00000084 <.L23>:
  84:	00f49723          	sh	a5,14(s1)

00000088 <.LBB132>:
  88:	00445703          	lhu	a4,4(s0)

0000008c <.LBB135>:
  8c:	0104d783          	lhu	a5,16(s1)
  90:	00e7f363          	bgeu	a5,a4,96 <.L24>
			90: R_RISCV_BRANCH	.L24
  94:	87ba                	mv	a5,a4

00000096 <.L24>:
  96:	00f49823          	sh	a5,16(s1)
  9a:	00645783          	lhu	a5,6(s0)
  9e:	00f49323          	sh	a5,6(s1)

000000a2 <.LBB136>:
  a2:	00845703          	lhu	a4,8(s0)

000000a6 <.LBB139>:
  a6:	0084d783          	lhu	a5,8(s1)
  aa:	00e7f363          	bgeu	a5,a4,b0 <.L25>
			aa: R_RISCV_BRANCH	.L25
  ae:	87ba                	mv	a5,a4

000000b0 <.L25>:
  b0:	00f49423          	sh	a5,8(s1)
  b4:	8526                	mv	a0,s1
  b6:	00000097          	auipc	ra,0x0
			b6: R_RISCV_CALL	ble_ke_msg_send
			b6: R_RISCV_RELAX	*ABS*
  ba:	000080e7          	jalr	ra # b6 <.L25+0x6>

000000be <.LBB140>:
  be:	0fdb7593          	andi	a1,s6,253
  c2:	8556                	mv	a0,s5
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	ble_ke_state_set
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LBB140+0x6>

000000cc <.LBE140>:
  cc:	0a098223          	sb	zero,164(s3)

000000d0 <.LBB142>:
  d0:	00045783          	lhu	a5,0(s0)

000000d4 <.LBE142>:
  d4:	4a01                	li	s4,0

000000d6 <.LBB145>:
  d6:	078a                	slli	a5,a5,0x2
  d8:	993e                	add	s2,s2,a5
  da:	00092783          	lw	a5,0(s2) # 0 <hci_le_rem_con_param_req_reply_cmd_handler>

000000de <.LVL41>:
  de:	0007a223          	sw	zero,4(a5)

000000e2 <.L21>:
  e2:	00045603          	lhu	a2,0(s0)
  e6:	855e                	mv	a0,s7
  e8:	85d2                	mv	a1,s4
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	llc_common_cmd_complete_send
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.L21+0x8>

000000f2 <.LVL43>:
  f2:	50b2                	lw	ra,44(sp)
  f4:	5422                	lw	s0,40(sp)

000000f6 <.LVL44>:
  f6:	5492                	lw	s1,36(sp)
  f8:	5902                	lw	s2,32(sp)
  fa:	49f2                	lw	s3,28(sp)
  fc:	4a62                	lw	s4,24(sp)

000000fe <.LVL45>:
  fe:	4ad2                	lw	s5,20(sp)
 100:	4b42                	lw	s6,16(sp)
 102:	4bb2                	lw	s7,12(sp)
 104:	4c22                	lw	s8,8(sp)
 106:	4c92                	lw	s9,4(sp)
 108:	4501                	li	a0,0
 10a:	6145                	addi	sp,sp,48
 10c:	8082                	ret

0000010e <.L22>:
 10e:	00045503          	lhu	a0,0(s0)
 112:	4a01                	li	s4,0
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	lld_get_mode
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.L22+0x6>

0000011c <.LVL47>:
 11c:	4791                	li	a5,4
 11e:	fcf512e3          	bne	a0,a5,e2 <.L21>
			11e: R_RISCV_BRANCH	.L21
 122:	00245783          	lhu	a5,2(s0)
 126:	8626                	mv	a2,s1
 128:	00f49723          	sh	a5,14(s1)
 12c:	00445783          	lhu	a5,4(s0)
 130:	00f49823          	sh	a5,16(s1)
 134:	00645783          	lhu	a5,6(s0)
 138:	00f49323          	sh	a5,6(s1)
 13c:	00845783          	lhu	a5,8(s0)
 140:	00f49423          	sh	a5,8(s1)
 144:	0109a583          	lw	a1,16(s3)
 148:	00045503          	lhu	a0,0(s0)
 14c:	00000097          	auipc	ra,0x0
			14c: R_RISCV_CALL	lld_con_param_rsp
			14c: R_RISCV_RELAX	*ABS*
 150:	000080e7          	jalr	ra # 14c <.LVL47+0x30>

00000154 <.LVL48>:
 154:	0b898223          	sb	s8,164(s3)
 158:	00045503          	lhu	a0,0(s0)
 15c:	85a6                	mv	a1,s1
 15e:	00000097          	auipc	ra,0x0
			15e: R_RISCV_CALL	llc_llcp_con_param_rsp_pdu_send
			15e: R_RISCV_RELAX	*ABS*
 162:	000080e7          	jalr	ra # 15e <.LVL48+0xa>

00000166 <.LVL49>:
 166:	6605                	lui	a2,0x1
 168:	85d6                	mv	a1,s5
 16a:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST67+0x2>
 16e:	10200513          	li	a0,258
 172:	00000097          	auipc	ra,0x0
			172: R_RISCV_CALL	ble_ke_timer_set
			172: R_RISCV_RELAX	*ABS*
 176:	000080e7          	jalr	ra # 172 <.LVL49+0xc>

0000017a <.LVL50>:
 17a:	00045503          	lhu	a0,0(s0)
 17e:	4585                	li	a1,1
 180:	00000097          	auipc	ra,0x0
			180: R_RISCV_CALL	llc_util_clear_operation_ptr
			180: R_RISCV_RELAX	*ABS*
 184:	000080e7          	jalr	ra # 180 <.LVL50+0x6>

00000188 <.LVL51>:
 188:	bfa9                	j	e2 <.L21>
			188: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.hci_le_ltk_req_neg_reply_cmd_handler:

00000000 <hci_le_ltk_req_neg_reply_cmd_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	8532                	mv	a0,a2

00000004 <.LVL53>:
   4:	d422                	sw	s0,40(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	d606                	sw	ra,44(sp)
   c:	89b6                	mv	s3,a3
   e:	d226                	sw	s1,36(sp)
  10:	892e                	mv	s2,a1
  12:	c632                	sw	a2,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL53+0x10>

0000001c <.LBB148>:
  1c:	00f57693          	andi	a3,a0,15
  20:	473d                	li	a4,15
  22:	4431                	li	s0,12
  24:	04e68263          	beq	a3,a4,68 <.L33>
			24: R_RISCV_BRANCH	.L33
  28:	00257713          	andi	a4,a0,2
  2c:	87aa                	mv	a5,a0

0000002e <.LBB150>:
  2e:	cf0d                	beqz	a4,68 <.L33>
			2e: R_RISCV_RVC_BRANCH	.L33
  30:	00095503          	lhu	a0,0(s2)

00000034 <.LVL56>:
  34:	000004b7          	lui	s1,0x0
			34: R_RISCV_HI20	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	00048713          	mv	a4,s1
			38: R_RISCV_LO12_I	llc_env
			38: R_RISCV_RELAX	*ABS*
  3c:	00251693          	slli	a3,a0,0x2
  40:	9736                	add	a4,a4,a3
  42:	4318                	lw	a4,0(a4)
  44:	46a5                	li	a3,9
  46:	00048493          	mv	s1,s1
			46: R_RISCV_LO12_I	llc_env
			46: R_RISCV_RELAX	*ABS*
  4a:	0a474603          	lbu	a2,164(a4)
  4e:	45b2                	lw	a1,12(sp)
  50:	00d61c63          	bne	a2,a3,68 <.L33>
			50: R_RISCV_BRANCH	.L33
  54:	0a574403          	lbu	s0,165(a4)
  58:	8841                	andi	s0,s0,16
  5a:	c41d                	beqz	s0,88 <.L34>
			5a: R_RISCV_RVC_BRANCH	.L34
  5c:	4599                	li	a1,6
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	llc_llcp_terminate_ind_pdu_send
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL56+0x2a>

00000066 <.LVL57>:
  66:	4401                	li	s0,0

00000068 <.L33>:
  68:	00095603          	lhu	a2,0(s2)
  6c:	854e                	mv	a0,s3
  6e:	85a2                	mv	a1,s0
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	llc_common_cmd_complete_send
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.L33+0x8>

00000078 <.LVL59>:
  78:	50b2                	lw	ra,44(sp)
  7a:	5422                	lw	s0,40(sp)

0000007c <.LVL60>:
  7c:	5492                	lw	s1,36(sp)
  7e:	5902                	lw	s2,32(sp)

00000080 <.LVL61>:
  80:	49f2                	lw	s3,28(sp)
  82:	4501                	li	a0,0
  84:	6145                	addi	sp,sp,48
  86:	8082                	ret

00000088 <.L34>:
  88:	8b85                	andi	a5,a5,1
  8a:	cb91                	beqz	a5,9e <.L35>
			8a: R_RISCV_RVC_BRANCH	.L35
  8c:	6605                	lui	a2,0x1
  8e:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST67+0x2>
  92:	10200513          	li	a0,258
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	ble_ke_timer_set
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.L34+0xe>

0000009e <.L35>:
  9e:	00095783          	lhu	a5,0(s2)
  a2:	4735                	li	a4,13
  a4:	078a                	slli	a5,a5,0x2
  a6:	97a6                	add	a5,a5,s1
  a8:	439c                	lw	a5,0(a5)
  aa:	0ae78223          	sb	a4,164(a5)

000000ae <.LBB154>:
  ae:	300026f3          	csrr	a3,mstatus

000000b2 <.LBB156>:
  b2:	300477f3          	csrrci	a5,mstatus,8

000000b6 <.LBE156>:
  b6:	00095783          	lhu	a5,0(s2)
  ba:	078a                	slli	a5,a5,0x2
  bc:	94be                	add	s1,s1,a5
  be:	4098                	lw	a4,0(s1)
  c0:	0a574783          	lbu	a5,165(a4)
  c4:	9bdd                	andi	a5,a5,-9
  c6:	0af702a3          	sb	a5,165(a4)
  ca:	30069073          	csrw	mstatus,a3

000000ce <.LBE154>:
  ce:	00095503          	lhu	a0,0(s2)
  d2:	4619                	li	a2,6
  d4:	458d                	li	a1,3
  d6:	00000097          	auipc	ra,0x0
			d6: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			d6: R_RISCV_RELAX	*ABS*
  da:	000080e7          	jalr	ra # d6 <.LBE154+0x8>

000000de <.LVL66>:
  de:	b769                	j	68 <.L33>
			de: R_RISCV_RVC_JUMP	.L33

Disassembly of section .text.hci_le_ltk_req_reply_cmd_handler:

00000000 <hci_le_ltk_req_reply_cmd_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	8532                	mv	a0,a2

00000004 <.LVL68>:
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	84ae                	mv	s1,a1
   a:	d606                	sw	ra,44(sp)
   c:	d422                	sw	s0,40(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	8936                	mv	s2,a3
  14:	c632                	sw	a2,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL68+0x12>

0000001e <.LBB157>:
  1e:	00f57713          	andi	a4,a0,15
  22:	47bd                	li	a5,15
  24:	45b1                	li	a1,12
  26:	06f70f63          	beq	a4,a5,a4 <.L45>
			26: R_RISCV_BRANCH	.L45

0000002a <.LBB159>:
  2a:	8909                	andi	a0,a0,2

0000002c <.LVL71>:
  2c:	cd25                	beqz	a0,a4 <.L45>
			2c: R_RISCV_RVC_BRANCH	.L45
  2e:	0004d783          	lhu	a5,0(s1) # 0 <hci_le_ltk_req_reply_cmd_handler>
  32:	00000437          	lui	s0,0x0
			32: R_RISCV_HI20	llc_env
			32: R_RISCV_RELAX	*ABS*
  36:	00040413          	mv	s0,s0
			36: R_RISCV_LO12_I	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	078a                	slli	a5,a5,0x2
  3c:	97a2                	add	a5,a5,s0
  3e:	439c                	lw	a5,0(a5)
  40:	4632                	lw	a2,12(sp)
  42:	0a47c703          	lbu	a4,164(a5)
  46:	47a5                	li	a5,9
  48:	04f71e63          	bne	a4,a5,a4 <.L45>
			48: R_RISCV_BRANCH	.L45

0000004c <.LBB161>:
  4c:	02000693          	li	a3,32
  50:	4581                	li	a1,0
  52:	4511                	li	a0,4
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	ble_ke_msg_alloc
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LBB161+0x8>

0000005c <.LVL72>:
  5c:	00000a37          	lui	s4,0x0
			5c: R_RISCV_HI20	ble_memcpy_ptr
			5c: R_RISCV_RELAX	*ABS*
  60:	000a2783          	lw	a5,0(s4) # 0 <hci_le_ltk_req_reply_cmd_handler>
			60: R_RISCV_LO12_I	ble_memcpy_ptr
			60: R_RISCV_RELAX	*ABS*
  64:	4641                	li	a2,16
  66:	00248593          	addi	a1,s1,2
  6a:	89aa                	mv	s3,a0

0000006c <.LVL73>:
  6c:	9782                	jalr	a5

0000006e <.LVL74>:
  6e:	0004d783          	lhu	a5,0(s1)
  72:	4641                	li	a2,16
  74:	01098513          	addi	a0,s3,16
  78:	078a                	slli	a5,a5,0x2
  7a:	97a2                	add	a5,a5,s0
  7c:	438c                	lw	a1,0(a5)
  7e:	000a2783          	lw	a5,0(s4)
			7e: R_RISCV_LO12_I	ble_memcpy_ptr
			7e: R_RISCV_RELAX	*ABS*
  82:	07158593          	addi	a1,a1,113
  86:	9782                	jalr	a5

00000088 <.LVL75>:
  88:	854e                	mv	a0,s3
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	ble_ke_msg_send
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.LVL75+0x2>

00000092 <.LVL76>:
  92:	0004d783          	lhu	a5,0(s1)
  96:	4729                	li	a4,10
  98:	4581                	li	a1,0
  9a:	078a                	slli	a5,a5,0x2
  9c:	943e                	add	s0,s0,a5
  9e:	401c                	lw	a5,0(s0)
  a0:	0ae78223          	sb	a4,164(a5)

000000a4 <.L45>:
  a4:	0004d603          	lhu	a2,0(s1)
  a8:	854a                	mv	a0,s2
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	llc_common_cmd_complete_send
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.L45+0x6>

000000b2 <.LVL78>:
  b2:	50b2                	lw	ra,44(sp)
  b4:	5422                	lw	s0,40(sp)
  b6:	5492                	lw	s1,36(sp)

000000b8 <.LVL79>:
  b8:	5902                	lw	s2,32(sp)
  ba:	49f2                	lw	s3,28(sp)
  bc:	4a62                	lw	s4,24(sp)
  be:	4501                	li	a0,0
  c0:	6145                	addi	sp,sp,48
  c2:	8082                	ret

Disassembly of section .text.hci_disconnect_cmd_handler:

00000000 <hci_disconnect_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL81>:
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	84ae                	mv	s1,a1
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	8936                	mv	s2,a3
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL81+0xc>

00000018 <.LBB162>:
  18:	893d                	andi	a0,a0,15

0000001a <.LVL83>:
  1a:	47bd                	li	a5,15
  1c:	45b1                	li	a1,12
  1e:	04f50663          	beq	a0,a5,6a <.L52>
			1e: R_RISCV_BRANCH	.L52

00000022 <.LBB164>:
  22:	151417b7          	lui	a5,0x15141
  26:	30578793          	addi	a5,a5,773 # 15141305 <.LASF1021+0x1513b427>
  2a:	c43e                	sw	a5,8(sp)
  2c:	678d                	lui	a5,0x3
  2e:	91a78793          	addi	a5,a5,-1766 # 291a <.LASF974+0x9>

00000032 <.LBE164>:
  32:	0024c583          	lbu	a1,2(s1)

00000036 <.LBB169>:
  36:	00f11623          	sh	a5,12(sp)
  3a:	03b00793          	li	a5,59
  3e:	00f10723          	sb	a5,14(sp)

00000042 <.LBB166>:
  42:	471d                	li	a4,7

00000044 <.LBE166>:
  44:	4781                	li	a5,0

00000046 <.L54>:
  46:	0034                	addi	a3,sp,8
  48:	96be                	add	a3,a3,a5
  4a:	0006c683          	lbu	a3,0(a3)
  4e:	00b68763          	beq	a3,a1,5c <.L53>
			4e: R_RISCV_BRANCH	.L53

00000052 <.LVL87>:
  52:	0785                	addi	a5,a5,1

00000054 <.LVL88>:
  54:	fee799e3          	bne	a5,a4,46 <.L54>
			54: R_RISCV_BRANCH	.L54

00000058 <.LBE167>:
  58:	45c9                	li	a1,18
  5a:	a801                	j	6a <.L52>
			5a: R_RISCV_RVC_JUMP	.L52

0000005c <.L53>:
  5c:	0004d503          	lhu	a0,0(s1)
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	llc_llcp_terminate_ind_pdu_send
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.L53+0x4>

00000068 <.LVL91>:
  68:	4581                	li	a1,0

0000006a <.L52>:
  6a:	0004d603          	lhu	a2,0(s1)
  6e:	00000437          	lui	s0,0x0
			6e: R_RISCV_HI20	llc_env
			6e: R_RISCV_RELAX	*ABS*
  72:	00040793          	mv	a5,s0
			72: R_RISCV_LO12_I	llc_env
			72: R_RISCV_RELAX	*ABS*
  76:	00261713          	slli	a4,a2,0x2
  7a:	97ba                	add	a5,a5,a4
  7c:	439c                	lw	a5,0(a5)
  7e:	00040413          	mv	s0,s0
			7e: R_RISCV_LO12_I	llc_env
			7e: R_RISCV_RELAX	*ABS*
  82:	0a27c783          	lbu	a5,162(a5)
  86:	ef91                	bnez	a5,a2 <.L56>
			86: R_RISCV_RVC_BRANCH	.L56
  88:	854a                	mv	a0,s2
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	llc_common_cmd_status_send
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.L52+0x20>

00000092 <.LVL93>:
  92:	0004d783          	lhu	a5,0(s1)
  96:	4705                	li	a4,1
  98:	078a                	slli	a5,a5,0x2
  9a:	97a2                	add	a5,a5,s0
  9c:	439c                	lw	a5,0(a5)
  9e:	0ae78123          	sb	a4,162(a5)

000000a2 <.L56>:
  a2:	0004d783          	lhu	a5,0(s1)
  a6:	4501                	li	a0,0
  a8:	078a                	slli	a5,a5,0x2
  aa:	943e                	add	s0,s0,a5
  ac:	401c                	lw	a5,0(s0)
  ae:	0a078123          	sb	zero,162(a5)
  b2:	40f2                	lw	ra,28(sp)
  b4:	4462                	lw	s0,24(sp)
  b6:	44d2                	lw	s1,20(sp)

000000b8 <.LVL94>:
  b8:	4942                	lw	s2,16(sp)
  ba:	6105                	addi	sp,sp,32
  bc:	8082                	ret

Disassembly of section .text.hci_le_start_enc_cmd_handler:

00000000 <hci_le_start_enc_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL96>:
   4:	c64e                	sw	s3,12(sp)
   6:	c452                	sw	s4,8(sp)
   8:	c256                	sw	s5,4(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	8a2e                	mv	s4,a1
  14:	89b2                	mv	s3,a2
  16:	8ab6                	mv	s5,a3
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL96+0x14>

00000020 <.LBB170>:
  20:	00f57713          	andi	a4,a0,15
  24:	47bd                	li	a5,15
  26:	00f71663          	bne	a4,a5,32 <.L63>
			26: R_RISCV_BRANCH	.L63
  2a:	000a5603          	lhu	a2,0(s4)

0000002e <.L66>:
  2e:	45b1                	li	a1,12
  30:	a809                	j	42 <.L72>
			30: R_RISCV_RVC_JUMP	.L72

00000032 <.L63>:
  32:	00457793          	andi	a5,a0,4
  36:	892a                	mv	s2,a0

00000038 <.LBB172>:
  38:	c785                	beqz	a5,60 <.L65>
			38: R_RISCV_RVC_BRANCH	.L65
  3a:	000a5603          	lhu	a2,0(s4)
  3e:	03a00593          	li	a1,58

00000042 <.L72>:
  42:	8556                	mv	a0,s5
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	llc_common_cmd_status_send
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L72+0x2>

0000004c <.LVL102>:
  4c:	4501                	li	a0,0

0000004e <.L62>:
  4e:	40f2                	lw	ra,28(sp)
  50:	4462                	lw	s0,24(sp)
  52:	44d2                	lw	s1,20(sp)
  54:	4942                	lw	s2,16(sp)
  56:	49b2                	lw	s3,12(sp)
  58:	4a22                	lw	s4,8(sp)

0000005a <.LVL104>:
  5a:	4a92                	lw	s5,4(sp)
  5c:	6105                	addi	sp,sp,32
  5e:	8082                	ret

00000060 <.L65>:
  60:	00157793          	andi	a5,a0,1
  64:	4509                	li	a0,2

00000066 <.LVL106>:
  66:	f7e5                	bnez	a5,4e <.L62>
			66: R_RISCV_RVC_BRANCH	.L62
  68:	0089d493          	srli	s1,s3,0x8
  6c:	8526                	mv	a0,s1
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	lld_get_mode
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL106+0x8>

00000076 <.LVL107>:
  76:	478d                	li	a5,3
  78:	000a5603          	lhu	a2,0(s4)
  7c:	faf519e3          	bne	a0,a5,2e <.L66>
			7c: R_RISCV_BRANCH	.L66
  80:	00000437          	lui	s0,0x0
			80: R_RISCV_HI20	llc_env
			80: R_RISCV_RELAX	*ABS*
  84:	00040793          	mv	a5,s0
			84: R_RISCV_LO12_I	llc_env
			84: R_RISCV_RELAX	*ABS*
  88:	00261713          	slli	a4,a2,0x2
  8c:	97ba                	add	a5,a5,a4
  8e:	439c                	lw	a5,0(a5)
  90:	00040413          	mv	s0,s0
			90: R_RISCV_LO12_I	llc_env
			90: R_RISCV_RELAX	*ABS*
  94:	0697c783          	lbu	a5,105(a5)
  98:	8b85                	andi	a5,a5,1
  9a:	dbd1                	beqz	a5,2e <.L66>
			9a: R_RISCV_RVC_BRANCH	.L66

0000009c <.LBB176>:
  9c:	8556                	mv	a0,s5
  9e:	4581                	li	a1,0
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	llc_common_cmd_status_send
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LBB176+0x4>

000000a8 <.LBB177>:
  a8:	00196593          	ori	a1,s2,1
  ac:	854e                	mv	a0,s3
  ae:	0ff5f593          	andi	a1,a1,255
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	ble_ke_state_set
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LBB177+0xa>

000000ba <.LBB179>:
  ba:	00596593          	ori	a1,s2,5
  be:	0ff5f593          	andi	a1,a1,255
  c2:	854e                	mv	a0,s3

000000c4 <.LBE179>:
  c4:	048a                	slli	s1,s1,0x2

000000c6 <.LBB182>:
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	ble_ke_state_set
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.LBB182>

000000ce <.LBE182>:
  ce:	94a2                	add	s1,s1,s0
  d0:	409c                	lw	a5,0(s1)
  d2:	4729                	li	a4,10
  d4:	0ae781a3          	sb	a4,163(a5)

000000d8 <.LBB183>:
  d8:	30002973          	csrr	s2,mstatus

000000dc <.LBB185>:
  dc:	30047773          	csrrci	a4,mstatus,8

000000e0 <.LBE185>:
  e0:	0a57c703          	lbu	a4,165(a5)
  e4:	4b88                	lw	a0,16(a5)
  e6:	00476713          	ori	a4,a4,4
  ea:	0ae782a3          	sb	a4,165(a5)
  ee:	00000097          	auipc	ra,0x0
			ee: R_RISCV_CALL	lld_util_get_tx_pkt_cnt
			ee: R_RISCV_RELAX	*ABS*
  f2:	000080e7          	jalr	ra # ee <.LBE185+0xe>

000000f6 <.LVL113>:
  f6:	30091073          	csrw	mstatus,s2

000000fa <.LBE183>:
  fa:	c10d                	beqz	a0,11c <.L68>
			fa: R_RISCV_RVC_BRANCH	.L68
  fc:	4098                	lw	a4,0(s1)
  fe:	05c75783          	lhu	a5,92(a4)
 102:	0047e793          	ori	a5,a5,4
 106:	04f71e23          	sh	a5,92(a4)

0000010a <.L69>:
 10a:	000a5783          	lhu	a5,0(s4)

0000010e <.LBE186>:
 10e:	4505                	li	a0,1

00000110 <.LBB189>:
 110:	078a                	slli	a5,a5,0x2
 112:	943e                	add	s0,s0,a5
 114:	401c                	lw	a5,0(s0)

00000116 <.LVL115>:
 116:	0147a423          	sw	s4,8(a5)

0000011a <.LBE189>:
 11a:	bf15                	j	4e <.L62>
			11a: R_RISCV_RVC_JUMP	.L62

0000011c <.L68>:
 11c:	864e                	mv	a2,s3
 11e:	85ce                	mv	a1,s3
 120:	10600513          	li	a0,262

00000124 <.LVL118>:
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	ble_ke_msg_send_basic
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.LVL118>

0000012c <.LVL119>:
 12c:	bff9                	j	10a <.L69>
			12c: R_RISCV_RVC_JUMP	.L69

Disassembly of section .text.hci_le_rd_rem_used_feats_cmd_handler:

00000000 <hci_le_rd_rem_used_feats_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL121>:
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c256                	sw	s5,4(sp)
  12:	84ae                	mv	s1,a1
  14:	89b2                	mv	s3,a2
  16:	8a36                	mv	s4,a3
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL121+0x14>

00000020 <.LBB190>:
  20:	00000437          	lui	s0,0x0
			20: R_RISCV_HI20	llc_env
			20: R_RISCV_RELAX	*ABS*

00000024 <.LBE190>:
  24:	00f57713          	andi	a4,a0,15
  28:	47bd                	li	a5,15
  2a:	00040413          	mv	s0,s0
			2a: R_RISCV_LO12_I	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	0af70563          	beq	a4,a5,d8 <.L76>
			2e: R_RISCV_BRANCH	.L76
  32:	0004d783          	lhu	a5,0(s1)
  36:	078a                	slli	a5,a5,0x2
  38:	97a2                	add	a5,a5,s0
  3a:	439c                	lw	a5,0(a5)
  3c:	05c7d783          	lhu	a5,92(a5)
  40:	8b85                	andi	a5,a5,1
  42:	efc9                	bnez	a5,dc <.L77>
			42: R_RISCV_RVC_BRANCH	.L77
  44:	00557913          	andi	s2,a0,5
  48:	4a89                	li	s5,2
  4a:	06091d63          	bnez	s2,c4 <.L73>
			4a: R_RISCV_BRANCH	.L73

0000004e <.LBB192>:
  4e:	00156593          	ori	a1,a0,1
  52:	0ff5f593          	andi	a1,a1,255
  56:	854e                	mv	a0,s3

00000058 <.LVL125>:
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	ble_ke_state_set
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL125>

00000060 <.LBE192>:
  60:	0004d783          	lhu	a5,0(s1)
  64:	4705                	li	a4,1
  66:	078a                	slli	a5,a5,0x2
  68:	97a2                	add	a5,a5,s0
  6a:	439c                	lw	a5,0(a5)
  6c:	0ae781a3          	sb	a4,163(a5)
  70:	0004d503          	lhu	a0,0(s1)
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	llc_llcp_feats_req_pdu_send
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LBE192+0x14>

0000007c <.LVL127>:
  7c:	6605                	lui	a2,0x1
  7e:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST67+0x2>
  82:	85ce                	mv	a1,s3
  84:	10200513          	li	a0,258
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	ble_ke_timer_set
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL127+0xc>

00000090 <.L74>:
  90:	0004d603          	lhu	a2,0(s1)
  94:	85ca                	mv	a1,s2
  96:	8552                	mv	a0,s4
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	llc_common_cmd_status_send
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.L74+0x8>

000000a0 <.LVL129>:
  a0:	0004d583          	lhu	a1,0(s1)
  a4:	4a81                	li	s5,0
  a6:	00259793          	slli	a5,a1,0x2
  aa:	943e                	add	s0,s0,a5
  ac:	4010                	lw	a2,0(s0)
  ae:	05c65783          	lhu	a5,92(a2)
  b2:	8b85                	andi	a5,a5,1
  b4:	cb81                	beqz	a5,c4 <.L73>
			b4: R_RISCV_RVC_BRANCH	.L73
  b6:	06960613          	addi	a2,a2,105
  ba:	4501                	li	a0,0
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	llc_feats_rd_event_send
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL129+0x1c>

000000c4 <.L73>:
  c4:	40f2                	lw	ra,28(sp)
  c6:	4462                	lw	s0,24(sp)
  c8:	8556                	mv	a0,s5
  ca:	44d2                	lw	s1,20(sp)

000000cc <.LVL131>:
  cc:	4942                	lw	s2,16(sp)
  ce:	49b2                	lw	s3,12(sp)
  d0:	4a22                	lw	s4,8(sp)
  d2:	4a92                	lw	s5,4(sp)
  d4:	6105                	addi	sp,sp,32
  d6:	8082                	ret

000000d8 <.L76>:
  d8:	4931                	li	s2,12
  da:	bf5d                	j	90 <.L74>
			da: R_RISCV_RVC_JUMP	.L74

000000dc <.L77>:
  dc:	4901                	li	s2,0
  de:	bf4d                	j	90 <.L74>
			de: R_RISCV_RVC_JUMP	.L74

Disassembly of section .text.hci_le_rd_chnl_map_cmd_handler:

00000000 <hci_le_rd_chnl_map_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	84ae                	mv	s1,a1
   c:	0005d583          	lhu	a1,0(a1)

00000010 <.LVL134>:
  10:	8932                	mv	s2,a2
  12:	6505                	lui	a0,0x1

00000014 <.LVL135>:
  14:	6609                	lui	a2,0x2

00000016 <.LVL136>:
  16:	46a9                	li	a3,10

00000018 <.LVL137>:
  18:	0655                	addi	a2,a2,21
  1a:	80150513          	addi	a0,a0,-2047 # 801 <.LASF797+0xa>
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_ke_msg_alloc
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL137+0x6>

00000026 <.LVL138>:
  26:	842a                	mv	s0,a0

00000028 <.LVL139>:
  28:	854a                	mv	a0,s2
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_state_get
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL139+0x2>

00000032 <.LBB194>:
  32:	893d                	andi	a0,a0,15

00000034 <.LVL141>:
  34:	473d                	li	a4,15
  36:	47b1                	li	a5,12
  38:	02e50663          	beq	a0,a4,64 <.L83>
			38: R_RISCV_BRANCH	.L83
  3c:	0004d703          	lhu	a4,0(s1)
  40:	000007b7          	lui	a5,0x0
			40: R_RISCV_HI20	llc_env
			40: R_RISCV_RELAX	*ABS*
  44:	00078793          	mv	a5,a5
			44: R_RISCV_LO12_I	llc_env
			44: R_RISCV_RELAX	*ABS*
  48:	070a                	slli	a4,a4,0x2
  4a:	97ba                	add	a5,a5,a4
  4c:	438c                	lw	a1,0(a5)
  4e:	000007b7          	lui	a5,0x0
			4e: R_RISCV_HI20	ble_memcpy_ptr
			4e: R_RISCV_RELAX	*ABS*
  52:	0007a783          	lw	a5,0(a5) # 0 <hci_le_rd_chnl_map_cmd_handler>
			52: R_RISCV_LO12_I	ble_memcpy_ptr
			52: R_RISCV_RELAX	*ABS*
  56:	4615                	li	a2,5
  58:	05e58593          	addi	a1,a1,94
  5c:	00440513          	addi	a0,s0,4 # 4 <hci_le_rd_chnl_map_cmd_handler+0x4>
  60:	9782                	jalr	a5

00000062 <.LVL142>:
  62:	4781                	li	a5,0

00000064 <.L83>:
  64:	00f40023          	sb	a5,0(s0)
  68:	0004d783          	lhu	a5,0(s1)

0000006c <.LVL144>:
  6c:	8522                	mv	a0,s0
  6e:	00f41123          	sh	a5,2(s0)
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	hci_send_2_host
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL144+0x6>

0000007a <.LVL145>:
  7a:	40b2                	lw	ra,12(sp)
  7c:	4422                	lw	s0,8(sp)

0000007e <.LVL146>:
  7e:	4492                	lw	s1,4(sp)

00000080 <.LVL147>:
  80:	4902                	lw	s2,0(sp)
  82:	4501                	li	a0,0
  84:	0141                	addi	sp,sp,16
  86:	8082                	ret

Disassembly of section .text.hci_rd_auth_payl_to_cmd_handler:

00000000 <hci_rd_auth_payl_to_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL149>:
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	8432                	mv	s0,a2
   e:	892e                	mv	s2,a1
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL149+0xc>

00000018 <.LVL150>:
  18:	00095583          	lhu	a1,0(s2)
  1c:	84aa                	mv	s1,a0

0000001e <.LVL151>:
  1e:	6505                	lui	a0,0x1
  20:	c7b50613          	addi	a2,a0,-901 # c7b <.LASF83+0xd>
  24:	4699                	li	a3,6
  26:	80150513          	addi	a0,a0,-2047
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_msg_alloc
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL151+0xc>

00000032 <.LBB196>:
  32:	88bd                	andi	s1,s1,15

00000034 <.LVL153>:
  34:	47bd                	li	a5,15
  36:	02f49463          	bne	s1,a5,5e <.L88>
			36: R_RISCV_BRANCH	.L88
  3a:	47b1                	li	a5,12
  3c:	00f50023          	sb	a5,0(a0)

00000040 <.L89>:
  40:	00095783          	lhu	a5,0(s2)
  44:	00f51123          	sh	a5,2(a0)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	hci_send_2_host
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L89+0x8>

00000050 <.LVL155>:
  50:	40b2                	lw	ra,12(sp)
  52:	4422                	lw	s0,8(sp)
  54:	4492                	lw	s1,4(sp)
  56:	4902                	lw	s2,0(sp)

00000058 <.LVL156>:
  58:	4501                	li	a0,0
  5a:	0141                	addi	sp,sp,16
  5c:	8082                	ret

0000005e <.L88>:
  5e:	000007b7          	lui	a5,0x0
			5e: R_RISCV_HI20	llc_env
			5e: R_RISCV_RELAX	*ABS*
  62:	8021                	srli	s0,s0,0x8

00000064 <.LVL158>:
  64:	00078793          	mv	a5,a5
			64: R_RISCV_LO12_I	llc_env
			64: R_RISCV_RELAX	*ABS*
  68:	040a                	slli	s0,s0,0x2
  6a:	00050023          	sb	zero,0(a0)
  6e:	943e                	add	s0,s0,a5
  70:	401c                	lw	a5,0(s0)
  72:	0587d783          	lhu	a5,88(a5) # 58 <.LVL156>
  76:	00f51223          	sh	a5,4(a0)
  7a:	b7d9                	j	40 <.L89>
			7a: R_RISCV_RVC_JUMP	.L89

Disassembly of section .text.hci_rd_rssi_cmd_handler:

00000000 <hci_rd_rssi_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	84ae                	mv	s1,a1
   c:	0005d583          	lhu	a1,0(a1)

00000010 <.LVL160>:
  10:	6505                	lui	a0,0x1

00000012 <.LVL161>:
  12:	8932                	mv	s2,a2
  14:	4699                	li	a3,6

00000016 <.LVL162>:
  16:	40550613          	addi	a2,a0,1029 # 1405 <.LLST124+0x17>

0000001a <.LVL163>:
  1a:	80150513          	addi	a0,a0,-2047
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_ke_msg_alloc
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL163+0x4>

00000026 <.LVL164>:
  26:	842a                	mv	s0,a0

00000028 <.LVL165>:
  28:	854a                	mv	a0,s2
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_state_get
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL165+0x2>

00000032 <.LBB198>:
  32:	893d                	andi	a0,a0,15

00000034 <.LVL167>:
  34:	47bd                	li	a5,15
  36:	02f51763          	bne	a0,a5,64 <.L92>
			36: R_RISCV_BRANCH	.L92
  3a:	47b1                	li	a5,12
  3c:	00f40023          	sb	a5,0(s0)
  40:	00040223          	sb	zero,4(s0)

00000044 <.L93>:
  44:	0004d783          	lhu	a5,0(s1)
  48:	8522                	mv	a0,s0
  4a:	00f41123          	sh	a5,2(s0)
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	hci_send_2_host
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L93+0xa>

00000056 <.LVL168>:
  56:	40b2                	lw	ra,12(sp)
  58:	4422                	lw	s0,8(sp)

0000005a <.LVL169>:
  5a:	4492                	lw	s1,4(sp)

0000005c <.LVL170>:
  5c:	4902                	lw	s2,0(sp)
  5e:	4501                	li	a0,0
  60:	0141                	addi	sp,sp,16
  62:	8082                	ret

00000064 <.L92>:
  64:	00040023          	sb	zero,0(s0)
  68:	0004d703          	lhu	a4,0(s1)
  6c:	000007b7          	lui	a5,0x0
			6c: R_RISCV_HI20	llc_env
			6c: R_RISCV_RELAX	*ABS*
  70:	00078793          	mv	a5,a5
			70: R_RISCV_LO12_I	llc_env
			70: R_RISCV_RELAX	*ABS*
  74:	070a                	slli	a4,a4,0x2
  76:	97ba                	add	a5,a5,a4
  78:	439c                	lw	a5,0(a5)
  7a:	06878783          	lb	a5,104(a5) # 68 <.L92+0x4>
  7e:	00f40223          	sb	a5,4(s0)
  82:	b7c9                	j	44 <.L93>
			82: R_RISCV_RVC_JUMP	.L93

Disassembly of section .text.hci_rd_tx_pwr_lvl_cmd_handler:

00000000 <hci_rd_tx_pwr_lvl_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	84ae                	mv	s1,a1
   c:	0005d583          	lhu	a1,0(a1)

00000010 <.LVL173>:
  10:	6505                	lui	a0,0x1

00000012 <.LVL174>:
  12:	8932                	mv	s2,a2
  14:	4699                	li	a3,6

00000016 <.LVL175>:
  16:	c2d50613          	addi	a2,a0,-979 # c2d <.LASF445+0xb>

0000001a <.LVL176>:
  1a:	80150513          	addi	a0,a0,-2047
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_ke_msg_alloc
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL176+0x4>

00000026 <.LVL177>:
  26:	842a                	mv	s0,a0

00000028 <.LVL178>:
  28:	854a                	mv	a0,s2
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_state_get
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL178+0x2>

00000032 <.LBB200>:
  32:	893d                	andi	a0,a0,15

00000034 <.LVL180>:
  34:	47bd                	li	a5,15
  36:	00f51863          	bne	a0,a5,46 <.L96>
			36: R_RISCV_BRANCH	.L96
  3a:	47b1                	li	a5,12

0000003c <.L103>:
  3c:	00f40023          	sb	a5,0(s0)
  40:	00040223          	sb	zero,4(s0)
  44:	a091                	j	88 <.L97>
			44: R_RISCV_RVC_JUMP	.L97

00000046 <.L96>:
  46:	00040023          	sb	zero,0(s0)
  4a:	0024c783          	lbu	a5,2(s1)
  4e:	c791                	beqz	a5,5a <.L98>
			4e: R_RISCV_RVC_BRANCH	.L98
  50:	4705                	li	a4,1
  52:	04e78b63          	beq	a5,a4,a8 <.L99>
			52: R_RISCV_BRANCH	.L99
  56:	47c9                	li	a5,18
  58:	b7d5                	j	3c <.L103>
			58: R_RISCV_RVC_JUMP	.L103

0000005a <.L98>:
  5a:	0004d783          	lhu	a5,0(s1)

0000005e <.LBB206>:
  5e:	05c00713          	li	a4,92

00000062 <.LBE206>:
  62:	4585                	li	a1,1

00000064 <.LBB207>:
  64:	02e787b3          	mul	a5,a5,a4

00000068 <.LVL183>:
  68:	28008737          	lui	a4,0x28008
  6c:	0a070713          	addi	a4,a4,160 # 280080a0 <.LASF1021+0x280021c2>
  70:	97ba                	add	a5,a5,a4
  72:	0007d503          	lhu	a0,0(a5)

00000076 <.LBE207>:
  76:	000007b7          	lui	a5,0x0
			76: R_RISCV_HI20	rwip_rf+0x14
			76: R_RISCV_RELAX	*ABS*+0x14
  7a:	0147a783          	lw	a5,20(a5) # 14 <.LVL174+0x2>
			7a: R_RISCV_LO12_I	rwip_rf+0x14
			7a: R_RISCV_RELAX	*ABS*+0x14
  7e:	0ff57513          	andi	a0,a0,255
  82:	9782                	jalr	a5

00000084 <.L104>:
  84:	00a40223          	sb	a0,4(s0)

00000088 <.L97>:
  88:	0004d783          	lhu	a5,0(s1)
  8c:	8522                	mv	a0,s0
  8e:	00f41123          	sh	a5,2(s0)
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	hci_send_2_host
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.L97+0xa>

0000009a <.LVL186>:
  9a:	40b2                	lw	ra,12(sp)
  9c:	4422                	lw	s0,8(sp)

0000009e <.LVL187>:
  9e:	4492                	lw	s1,4(sp)

000000a0 <.LVL188>:
  a0:	4902                	lw	s2,0(sp)
  a2:	4501                	li	a0,0
  a4:	0141                	addi	sp,sp,16
  a6:	8082                	ret

000000a8 <.L99>:
  a8:	000007b7          	lui	a5,0x0
			a8: R_RISCV_HI20	rwip_rf
			a8: R_RISCV_RELAX	*ABS*
  ac:	00078793          	mv	a5,a5
			ac: R_RISCV_LO12_I	rwip_rf
			ac: R_RISCV_RELAX	*ABS*
  b0:	4bd8                	lw	a4,20(a5)
  b2:	02c7c503          	lbu	a0,44(a5) # 2c <.LVL178+0x4>
  b6:	4585                	li	a1,1
  b8:	9702                	jalr	a4

000000ba <.LVL190>:
  ba:	b7e9                	j	84 <.L104>
			ba: R_RISCV_RVC_JUMP	.L104

Disassembly of section .text.hci_le_con_update_cmd_handler:

00000000 <hci_le_con_update_cmd_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	8532                	mv	a0,a2

00000004 <.LVL192>:
   4:	d422                	sw	s0,40(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	842e                	mv	s0,a1
  14:	89b6                	mv	s3,a3
  16:	c632                	sw	a2,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL192+0x14>

00000020 <.LBB208>:
  20:	893d                	andi	a0,a0,15

00000022 <.LVL194>:
  22:	47bd                	li	a5,15
  24:	12f50b63          	beq	a0,a5,15a <.L111>
			24: R_RISCV_BRANCH	.L111
  28:	00045503          	lhu	a0,0(s0)
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00078793          	mv	a5,a5
			30: R_RISCV_LO12_I	llc_env
			30: R_RISCV_RELAX	*ABS*
  34:	00251713          	slli	a4,a0,0x2
  38:	97ba                	add	a5,a5,a4
  3a:	0007a903          	lw	s2,0(a5) # 0 <hci_le_con_update_cmd_handler>
  3e:	01092a83          	lw	s5,16(s2)
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	lld_get_mode
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL194+0x20>

0000004a <.LVL195>:
  4a:	4791                	li	a5,4
  4c:	028a8a13          	addi	s4,s5,40

00000050 <.LVL196>:
  50:	4632                	lw	a2,12(sp)
  52:	00f51f63          	bne	a0,a5,70 <.L107>
			52: R_RISCV_BRANCH	.L107
  56:	05c95783          	lhu	a5,92(s2)
  5a:	8b85                	andi	a5,a5,1
  5c:	c791                	beqz	a5,68 <.L108>
			5c: R_RISCV_RVC_BRANCH	.L108
  5e:	06994583          	lbu	a1,105(s2)
  62:	44e9                	li	s1,26
  64:	8989                	andi	a1,a1,2
  66:	cdf5                	beqz	a1,162 <.L106>
			66: R_RISCV_RVC_BRANCH	.L106

00000068 <.L108>:
  68:	0a694783          	lbu	a5,166(s2)
  6c:	12078e63          	beqz	a5,1a8 <.L113>
			6c: R_RISCV_BRANCH	.L113

00000070 <.L107>:
  70:	00245503          	lhu	a0,2(s0)
  74:	00445703          	lhu	a4,4(s0)
  78:	12a76a63          	bltu	a4,a0,1ac <.L120>
			78: R_RISCV_BRANCH	.L120
  7c:	00a45303          	lhu	t1,10(s0)
  80:	00c45883          	lhu	a7,12(s0)
  84:	1268e463          	bltu	a7,t1,1ac <.L120>
			84: R_RISCV_BRANCH	.L120
  88:	6785                	lui	a5,0x1
  8a:	c8078693          	addi	a3,a5,-896 # c80 <.LLST30+0x2>
  8e:	10e6ef63          	bltu	a3,a4,1ac <.L120>
			8e: R_RISCV_BRANCH	.L120
  92:	4695                	li	a3,5
  94:	10a6fc63          	bgeu	a3,a0,1ac <.L120>
			94: R_RISCV_BRANCH	.L120
  98:	00645683          	lhu	a3,6(s0)
  9c:	1f300593          	li	a1,499
  a0:	10d5e663          	bltu	a1,a3,1ac <.L120>
			a0: R_RISCV_BRANCH	.L120
  a4:	00845583          	lhu	a1,8(s0)
  a8:	c7678793          	addi	a5,a5,-906
  ac:	ff658813          	addi	a6,a1,-10
  b0:	0842                	slli	a6,a6,0x10
  b2:	01085813          	srli	a6,a6,0x10
  b6:	0f07eb63          	bltu	a5,a6,1ac <.L120>
			b6: R_RISCV_BRANCH	.L120
  ba:	00168793          	addi	a5,a3,1
  be:	02e787b3          	mul	a5,a5,a4
  c2:	00259813          	slli	a6,a1,0x2
  c6:	0f07f363          	bgeu	a5,a6,1ac <.L120>
			c6: R_RISCV_BRANCH	.L120
  ca:	078ad783          	lhu	a5,120(s5)
  ce:	8385                	srli	a5,a5,0x1
  d0:	02a7ea63          	bltu	a5,a0,104 <.L109>
			d0: R_RISCV_BRANCH	.L109
  d4:	02f76863          	bltu	a4,a5,104 <.L109>
			d4: R_RISCV_BRANCH	.L109
  d8:	01092783          	lw	a5,16(s2)
  dc:	4e200713          	li	a4,1250
  e0:	0127d783          	lhu	a5,18(a5)
  e4:	02e7d7b3          	divu	a5,a5,a4
  e8:	0067ee63          	bltu	a5,t1,104 <.L109>
			e8: R_RISCV_BRANCH	.L109
  ec:	00f8ec63          	bltu	a7,a5,104 <.L109>
			ec: R_RISCV_BRANCH	.L109
  f0:	05495783          	lhu	a5,84(s2)
  f4:	00b79863          	bne	a5,a1,104 <.L109>
			f4: R_RISCV_BRANCH	.L109
  f8:	05ead783          	lhu	a5,94(s5)
  fc:	4481                	li	s1,0
  fe:	17fd                	addi	a5,a5,-1
 100:	04d78b63          	beq	a5,a3,156 <.L130>
			100: R_RISCV_BRANCH	.L130

00000104 <.L109>:
 104:	02200693          	li	a3,34
 108:	85b2                	mv	a1,a2
 10a:	10900513          	li	a0,265
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	ble_ke_msg_alloc
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.L109+0xa>

00000116 <.LVL197>:
 116:	00050023          	sb	zero,0(a0)
 11a:	00245703          	lhu	a4,2(s0)

0000011e <.LBE210>:
 11e:	0ff00493          	li	s1,255

00000122 <.LBB211>:
 122:	00e51123          	sh	a4,2(a0)
 126:	00445703          	lhu	a4,4(s0)
 12a:	00e51223          	sh	a4,4(a0)
 12e:	00645703          	lhu	a4,6(s0)
 132:	00e51323          	sh	a4,6(a0)
 136:	00845703          	lhu	a4,8(s0)
 13a:	00e51423          	sh	a4,8(a0)
 13e:	00a45703          	lhu	a4,10(s0)
 142:	00e51523          	sh	a4,10(a0)
 146:	00c45703          	lhu	a4,12(s0)
 14a:	00e51623          	sh	a4,12(a0)
 14e:	00000097          	auipc	ra,0x0
			14e: R_RISCV_CALL	ble_ke_msg_send
			14e: R_RISCV_RELAX	*ABS*
 152:	000080e7          	jalr	ra # 14e <.LBB211+0x2c>

00000156 <.L130>:
 156:	4581                	li	a1,0
 158:	a029                	j	162 <.L106>
			158: R_RISCV_RVC_JUMP	.L106

0000015a <.L111>:
 15a:	4a01                	li	s4,0
 15c:	0ff00493          	li	s1,255
 160:	45b1                	li	a1,12

00000162 <.L106>:
 162:	00045603          	lhu	a2,0(s0)
 166:	854e                	mv	a0,s3
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	llc_common_cmd_status_send
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.L106+0x6>

00000170 <.LVL201>:
 170:	4509                	li	a0,2
 172:	00000097          	auipc	ra,0x0
			172: R_RISCV_CALL	llm_util_check_evt_mask
			172: R_RISCV_RELAX	*ABS*
 176:	000080e7          	jalr	ra # 172 <.LVL201+0x2>

0000017a <.LVL202>:
 17a:	cd09                	beqz	a0,194 <.L110>
			17a: R_RISCV_RVC_BRANCH	.L110
 17c:	0ff00793          	li	a5,255
 180:	00f48a63          	beq	s1,a5,194 <.L110>
			180: R_RISCV_BRANCH	.L110
 184:	00045583          	lhu	a1,0(s0)
 188:	8652                	mv	a2,s4
 18a:	8526                	mv	a0,s1
 18c:	00000097          	auipc	ra,0x0
			18c: R_RISCV_CALL	llc_con_update_complete_send
			18c: R_RISCV_RELAX	*ABS*
 190:	000080e7          	jalr	ra # 18c <.LVL202+0x12>

00000194 <.L110>:
 194:	50b2                	lw	ra,44(sp)
 196:	5422                	lw	s0,40(sp)

00000198 <.LVL204>:
 198:	5492                	lw	s1,36(sp)

0000019a <.LVL205>:
 19a:	5902                	lw	s2,32(sp)
 19c:	49f2                	lw	s3,28(sp)
 19e:	4a62                	lw	s4,24(sp)

000001a0 <.LVL206>:
 1a0:	4ad2                	lw	s5,20(sp)
 1a2:	4501                	li	a0,0
 1a4:	6145                	addi	sp,sp,48
 1a6:	8082                	ret

000001a8 <.L113>:
 1a8:	44e9                	li	s1,26
 1aa:	b775                	j	156 <.L130>
			1aa: R_RISCV_RVC_JUMP	.L130

000001ac <.L120>:
 1ac:	0ff00493          	li	s1,255
 1b0:	45c9                	li	a1,18
 1b2:	bf45                	j	162 <.L106>
			1b2: R_RISCV_RVC_JUMP	.L106

Disassembly of section .text.hci_wr_auth_payl_to_cmd_handler:

00000000 <hci_wr_auth_payl_to_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL209>:
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	892e                	mv	s2,a1
  10:	89b2                	mv	s3,a2
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ble_ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL209+0xe>

0000001a <.LVL210>:
  1a:	00095583          	lhu	a1,0(s2)
  1e:	842a                	mv	s0,a0

00000020 <.LVL211>:
  20:	6505                	lui	a0,0x1
  22:	c7c50613          	addi	a2,a0,-900 # c7c <.LASF83+0xe>
  26:	4691                	li	a3,4
  28:	80150513          	addi	a0,a0,-2047
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ble_ke_msg_alloc
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL211+0xc>

00000034 <.LVL212>:
  34:	883d                	andi	s0,s0,15

00000036 <.LVL213>:
  36:	47bd                	li	a5,15
  38:	84aa                	mv	s1,a0

0000003a <.LBB212>:
  3a:	00f41663          	bne	s0,a5,46 <.L132>
			3a: R_RISCV_BRANCH	.L132
  3e:	47b1                	li	a5,12

00000040 <.L136>:
  40:	00f48023          	sb	a5,0(s1)
  44:	a049                	j	c6 <.L133>
			44: R_RISCV_RVC_JUMP	.L133

00000046 <.L132>:
  46:	0089d793          	srli	a5,s3,0x8
  4a:	00000437          	lui	s0,0x0
			4a: R_RISCV_HI20	llc_env
			4a: R_RISCV_RELAX	*ABS*
  4e:	078a                	slli	a5,a5,0x2
  50:	00040413          	mv	s0,s0
			50: R_RISCV_LO12_I	llc_env
			50: R_RISCV_RELAX	*ABS*
  54:	943e                	add	s0,s0,a5
  56:	401c                	lw	a5,0(s0)
  58:	00295703          	lhu	a4,2(s2)
  5c:	4b94                	lw	a3,16(a5)

0000005e <.LVL215>:
  5e:	0712                	slli	a4,a4,0x4
  60:	0786d783          	lhu	a5,120(a3)
  64:	05e6d683          	lhu	a3,94(a3)

00000068 <.LVL216>:
  68:	02d787b3          	mul	a5,a5,a3
  6c:	06f76e63          	bltu	a4,a5,e8 <.L134>
			6c: R_RISCV_BRANCH	.L134
  70:	00050023          	sb	zero,0(a0)

00000074 <.LVL217>:
  74:	401c                	lw	a5,0(s0)
  76:	00295703          	lhu	a4,2(s2)
  7a:	4b88                	lw	a0,16(a5)
  7c:	04e79c23          	sh	a4,88(a5)
  80:	02850513          	addi	a0,a0,40
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	llc_util_set_auth_payl_to_margin
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL217+0x10>

0000008c <.LVL218>:
  8c:	401c                	lw	a5,0(s0)
  8e:	468d                	li	a3,3
  90:	0a57c703          	lbu	a4,165(a5)
  94:	8b0d                	andi	a4,a4,3
  96:	02d71863          	bne	a4,a3,c6 <.L133>
			96: R_RISCV_BRANCH	.L133
  9a:	0587d603          	lhu	a2,88(a5)
  9e:	05a7d783          	lhu	a5,90(a5)
  a2:	85ce                	mv	a1,s3
  a4:	10300513          	li	a0,259
  a8:	8e1d                	sub	a2,a2,a5
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	ble_ke_timer_set
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LVL218+0x1e>

000000b2 <.LVL219>:
  b2:	401c                	lw	a5,0(s0)
  b4:	85ce                	mv	a1,s3
  b6:	10400513          	li	a0,260
  ba:	0587d603          	lhu	a2,88(a5)
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	ble_ke_timer_set
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL219+0xc>

000000c6 <.L133>:
  c6:	00095783          	lhu	a5,0(s2)
  ca:	8526                	mv	a0,s1
  cc:	00f49123          	sh	a5,2(s1)
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	hci_send_2_host
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.L133+0xa>

000000d8 <.LVL221>:
  d8:	40f2                	lw	ra,28(sp)
  da:	4462                	lw	s0,24(sp)
  dc:	44d2                	lw	s1,20(sp)

000000de <.LVL222>:
  de:	4942                	lw	s2,16(sp)

000000e0 <.LVL223>:
  e0:	49b2                	lw	s3,12(sp)

000000e2 <.LVL224>:
  e2:	4501                	li	a0,0
  e4:	6105                	addi	sp,sp,32
  e6:	8082                	ret

000000e8 <.L134>:
  e8:	47c9                	li	a5,18
  ea:	bf99                	j	40 <.L136>
			ea: R_RISCV_RVC_JUMP	.L136

Disassembly of section .text.hci_flush_cmd_handler:

00000000 <hci_flush_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c422                	sw	s0,8(sp)
   8:	0005d403          	lhu	s0,0(a1)

0000000c <.LVL227>:
   c:	6505                	lui	a0,0x1

0000000e <.LVL228>:
   e:	c0850613          	addi	a2,a0,-1016 # c08 <.LASF358+0xa>

00000012 <.LVL229>:
  12:	85a2                	mv	a1,s0

00000014 <.LVL230>:
  14:	4691                	li	a3,4

00000016 <.LVL231>:
  16:	80150513          	addi	a0,a0,-2047
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_msg_alloc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL231+0x4>

00000022 <.LVL232>:
  22:	84aa                	mv	s1,a0

00000024 <.LVL233>:
  24:	8522                	mv	a0,s0
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	llc_common_flush_occurred_send
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL233+0x2>

0000002e <.LVL234>:
  2e:	000007b7          	lui	a5,0x0
			2e: R_RISCV_HI20	llc_env
			2e: R_RISCV_RELAX	*ABS*
  32:	00241713          	slli	a4,s0,0x2
  36:	00078793          	mv	a5,a5
			36: R_RISCV_LO12_I	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	97ba                	add	a5,a5,a4
  3c:	439c                	lw	a5,0(a5)
  3e:	4b88                	lw	a0,16(a5)
  40:	02850513          	addi	a0,a0,40
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	lld_pdu_tx_flush
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL234+0x16>

0000004c <.LVL235>:
  4c:	8526                	mv	a0,s1
  4e:	00849123          	sh	s0,2(s1)
  52:	00048023          	sb	zero,0(s1)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	hci_send_2_host
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL235+0xa>

0000005e <.LVL236>:
  5e:	40b2                	lw	ra,12(sp)
  60:	4422                	lw	s0,8(sp)

00000062 <.LVL237>:
  62:	4492                	lw	s1,4(sp)

00000064 <.LVL238>:
  64:	4501                	li	a0,0
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

Disassembly of section .text.hci_rd_rem_ver_info_cmd_handler:

00000000 <hci_rd_rem_ver_info_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL240>:
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	892e                	mv	s2,a1
  12:	89b2                	mv	s3,a2
  14:	8a36                	mv	s4,a3
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL240+0x12>

0000001e <.LBB216>:
  1e:	00f57713          	andi	a4,a0,15
  22:	47bd                	li	a5,15
  24:	00f71b63          	bne	a4,a5,3a <.L140>
			24: R_RISCV_BRANCH	.L140
  28:	00095603          	lhu	a2,0(s2)
  2c:	45b1                	li	a1,12

0000002e <.L145>:
  2e:	8552                	mv	a0,s4
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	llc_common_cmd_status_send
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L145+0x2>

00000038 <.LVL243>:
  38:	a82d                	j	72 <.L146>
			38: R_RISCV_RVC_JUMP	.L146

0000003a <.L140>:
  3a:	0089d493          	srli	s1,s3,0x8
  3e:	000007b7          	lui	a5,0x0
			3e: R_RISCV_HI20	llc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	00078793          	mv	a5,a5
			42: R_RISCV_LO12_I	llc_env
			42: R_RISCV_RELAX	*ABS*
  46:	00249413          	slli	s0,s1,0x2
  4a:	943e                	add	s0,s0,a5
  4c:	401c                	lw	a5,0(s0)
  4e:	05c7d783          	lhu	a5,92(a5) # 5c <.L140+0x22>
  52:	8b89                	andi	a5,a5,2
  54:	cb8d                	beqz	a5,86 <.L142>
			54: R_RISCV_RVC_BRANCH	.L142
  56:	00095603          	lhu	a2,0(s2)
  5a:	4581                	li	a1,0
  5c:	8552                	mv	a0,s4

0000005e <.LVL245>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	llc_common_cmd_status_send
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL245>

00000066 <.LVL246>:
  66:	85a6                	mv	a1,s1
  68:	4501                	li	a0,0
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	llc_version_rd_event_send
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LVL246+0x4>

00000072 <.L146>:
  72:	4481                	li	s1,0

00000074 <.L139>:
  74:	40f2                	lw	ra,28(sp)
  76:	4462                	lw	s0,24(sp)
  78:	8526                	mv	a0,s1
  7a:	4942                	lw	s2,16(sp)

0000007c <.LVL248>:
  7c:	44d2                	lw	s1,20(sp)
  7e:	49b2                	lw	s3,12(sp)

00000080 <.LVL249>:
  80:	4a22                	lw	s4,8(sp)
  82:	6105                	addi	sp,sp,32
  84:	8082                	ret

00000086 <.L142>:
  86:	00557793          	andi	a5,a0,5
  8a:	4489                	li	s1,2
  8c:	f7e5                	bnez	a5,74 <.L139>
			8c: R_RISCV_RVC_BRANCH	.L139

0000008e <.LBB218>:
  8e:	00156593          	ori	a1,a0,1
  92:	0ff5f593          	andi	a1,a1,255
  96:	854e                	mv	a0,s3

00000098 <.LVL252>:
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	ble_ke_state_set
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL252>

000000a0 <.LBE218>:
  a0:	401c                	lw	a5,0(s0)
  a2:	0a9781a3          	sb	s1,163(a5)
  a6:	00095503          	lhu	a0,0(s2)
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	llc_llcp_version_ind_pdu_send
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LBE218+0xa>

000000b2 <.LVL254>:
  b2:	6605                	lui	a2,0x1
  b4:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST67+0x2>
  b8:	85ce                	mv	a1,s3
  ba:	10200513          	li	a0,258
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	ble_ke_timer_set
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL254+0xc>

000000c6 <.LVL255>:
  c6:	00095603          	lhu	a2,0(s2)
  ca:	4581                	li	a1,0
  cc:	b78d                	j	2e <.L145>
			cc: R_RISCV_RVC_JUMP	.L145

Disassembly of section .text.llc_hci_command_handler:

00000000 <llc_hci_command_handler>:
   0:	00000737          	lui	a4,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00070513          	mv	a0,a4
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL257>:
   8:	4781                	li	a5,0
   a:	00070713          	mv	a4,a4
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	4841                	li	a6,16

00000010 <.L150>:
  10:	00055883          	lhu	a7,0(a0)
  14:	00d89a63          	bne	a7,a3,28 <.L148>
			14: R_RISCV_BRANCH	.L148
  18:	078e                	slli	a5,a5,0x3

0000001a <.LVL259>:
  1a:	97ba                	add	a5,a5,a4
  1c:	0047a303          	lw	t1,4(a5)
  20:	00030863          	beqz	t1,30 <.L147>
			20: R_RISCV_BRANCH	.L147
  24:	8536                	mv	a0,a3
  26:	8302                	jr	t1

00000028 <.L148>:
  28:	0785                	addi	a5,a5,1
  2a:	0521                	addi	a0,a0,8
  2c:	ff0792e3          	bne	a5,a6,10 <.L150>
			2c: R_RISCV_BRANCH	.L150

00000030 <.L147>:
  30:	4501                	li	a0,0
  32:	8082                	ret

Disassembly of section .text.llc_hci_acl_data_tx_handler:

00000000 <llc_hci_acl_data_tx_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL264>:
   4:	c422                	sw	s0,8(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c226                	sw	s1,4(sp)
   a:	842e                	mv	s0,a1
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	ble_ke_state_get
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL264+0x8>

00000014 <.LBB221>:
  14:	893d                	andi	a0,a0,15

00000016 <.LVL266>:
  16:	47bd                	li	a5,15
  18:	00f50563          	beq	a0,a5,22 <.L155>
			18: R_RISCV_BRANCH	.L155
  1c:	00445783          	lhu	a5,4(s0) # 4 <.LVL264>
  20:	e7b9                	bnez	a5,6e <.L156>
			20: R_RISCV_RVC_BRANCH	.L156

00000022 <.L155>:
  22:	300024f3          	csrr	s1,mstatus

00000026 <.LBB225>:
  26:	300477f3          	csrrci	a5,mstatus,8

0000002a <.LBB226>:
  2a:	441c                	lw	a5,8(s0)

0000002c <.LBB229>:
  2c:	000005b7          	lui	a1,0x0
			2c: R_RISCV_HI20	em_buf_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00058593          	mv	a1,a1
			30: R_RISCV_LO12_I	em_buf_env
			30: R_RISCV_RELAX	*ABS*
  34:	0047d783          	lhu	a5,4(a5)
  38:	00000537          	lui	a0,0x0
			38: R_RISCV_HI20	em_buf_env+0x8
			38: R_RISCV_RELAX	*ABS*+0x8
  3c:	00850513          	addi	a0,a0,8 # 8 <.LVL264+0x4>
			3c: R_RISCV_LO12_I	em_buf_env+0x8
			3c: R_RISCV_RELAX	*ABS*+0x8
  40:	02978793          	addi	a5,a5,41
  44:	078e                	slli	a5,a5,0x3
  46:	95be                	add	a1,a1,a5
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	ble_co_list_push_back
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LBB229+0x1c>

00000050 <.LBE229>:
  50:	30049073          	csrw	mstatus,s1

00000054 <.LBE223>:
  54:	00045503          	lhu	a0,0(s0)
  58:	4585                	li	a1,1
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	llc_common_nb_of_pkt_comp_evt_send
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LBE223+0x6>

00000062 <.L157>:
  62:	40b2                	lw	ra,12(sp)
  64:	4422                	lw	s0,8(sp)

00000066 <.LVL271>:
  66:	4492                	lw	s1,4(sp)
  68:	4501                	li	a0,0
  6a:	0141                	addi	sp,sp,16
  6c:	8082                	ret

0000006e <.L156>:
  6e:	8522                	mv	a0,s0
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	lld_pdu_data_send
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.L156+0x2>

00000078 <.LVL273>:
  78:	e901                	bnez	a0,88 <.L158>
			78: R_RISCV_RVC_BRANCH	.L158
  7a:	00045503          	lhu	a0,0(s0)

0000007e <.LVL274>:
  7e:	4585                	li	a1,1
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	llc_common_nb_of_pkt_comp_evt_send
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL274+0x2>

00000088 <.L158>:
  88:	00045703          	lhu	a4,0(s0)
  8c:	000007b7          	lui	a5,0x0
			8c: R_RISCV_HI20	llc_env
			8c: R_RISCV_RELAX	*ABS*
  90:	00078793          	mv	a5,a5
			90: R_RISCV_LO12_I	llc_env
			90: R_RISCV_RELAX	*ABS*
  94:	070a                	slli	a4,a4,0x2
  96:	97ba                	add	a5,a5,a4
  98:	439c                	lw	a5,0(a5)
  9a:	4b88                	lw	a0,16(a5)
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	lld_evt_schedule_next
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.L158+0x14>

000000a4 <.LVL276>:
  a4:	bf7d                	j	62 <.L157>
			a4: R_RISCV_RVC_JUMP	.L157
