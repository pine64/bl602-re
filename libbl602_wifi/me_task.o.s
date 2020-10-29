
libbl602_wifi/me_task.o:     file format elf32-littleriscv


Disassembly of section .text.me_rc_set_rate_req_handler:

00000000 <me_rc_set_rate_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	0005c903          	lbu	s2,0(a1)
  10:	1b000693          	li	a3,432

00000014 <.LVL2>:
  14:	000007b7          	lui	a5,0x0
			14: R_RISCV_HI20	sta_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	02d906b3          	mul	a3,s2,a3
  1c:	00078713          	mv	a4,a5
			1c: R_RISCV_LO12_I	sta_info_tab
			1c: R_RISCV_RELAX	*ABS*
  20:	89ae                	mv	s3,a1
  22:	00078493          	mv	s1,a5
			22: R_RISCV_LO12_I	sta_info_tab
			22: R_RISCV_RELAX	*ABS*
  26:	9736                	add	a4,a4,a3
  28:	11072403          	lw	s0,272(a4)

0000002c <.LVL3>:
  2c:	ec19                	bnez	s0,4a <.L2>
			2c: R_RISCV_RVC_BRANCH	.L2
  2e:	000005b7          	lui	a1,0x0
			2e: R_RISCV_HI20	.LC0
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL4>:
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	.LC1
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL5>:
  36:	31d00613          	li	a2,797

0000003a <.LVL6>:
  3a:	00058593          	mv	a1,a1
			3a: R_RISCV_LO12_I	.LC0
			3a: R_RISCV_RELAX	*ABS*
  3e:	00050513          	mv	a0,a0
			3e: R_RISCV_LO12_I	.LC1
			3e: R_RISCV_RELAX	*ABS*
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	assert_err
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL6+0x8>

0000004a <.L2>:
  4a:	0029d983          	lhu	s3,2(s3)

0000004e <.LVL8>:
  4e:	67c1                	lui	a5,0x10
  50:	17fd                	addi	a5,a5,-1
  52:	02f98b63          	beq	s3,a5,88 <.L3>
			52: R_RISCV_BRANCH	.L3
  56:	85ce                	mv	a1,s3
  58:	8522                	mv	a0,s0
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	rc_check_fixed_rate_config
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL8+0xc>

00000062 <.LVL9>:
  62:	c919                	beqz	a0,78 <.L4>
			62: R_RISCV_RVC_BRANCH	.L4
  64:	0af44783          	lbu	a5,175(s0)
  68:	0d341323          	sh	s3,198(s0)
  6c:	f9f7f793          	andi	a5,a5,-97
  70:	0207e793          	ori	a5,a5,32
  74:	0af407a3          	sb	a5,175(s0)

00000078 <.L4>:
  78:	40f2                	lw	ra,28(sp)
  7a:	4462                	lw	s0,24(sp)

0000007c <.LVL10>:
  7c:	44d2                	lw	s1,20(sp)
  7e:	4942                	lw	s2,16(sp)
  80:	49b2                	lw	s3,12(sp)

00000082 <.LVL12>:
  82:	4501                	li	a0,0
  84:	6105                	addi	sp,sp,32
  86:	8082                	ret

00000088 <.L3>:
  88:	57fd                	li	a5,-1
  8a:	0cf41323          	sh	a5,198(s0)
  8e:	0af44783          	lbu	a5,175(s0)
  92:	0bc44603          	lbu	a2,188(s0)
  96:	0bb44583          	lbu	a1,187(s0)
  9a:	f9f7f793          	andi	a5,a5,-97
  9e:	0af407a3          	sb	a5,175(s0)
  a2:	1b000793          	li	a5,432
  a6:	02f907b3          	mul	a5,s2,a5
  aa:	97a6                	add	a5,a5,s1
  ac:	01b7c503          	lbu	a0,27(a5) # 1001b <.LASF497+0xca7e>
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	rc_update_bw_nss_max
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.L3+0x28>

000000b8 <.LVL14>:
  b8:	b7c1                	j	78 <.L4>
			b8: R_RISCV_RVC_JUMP	.L4

Disassembly of section .text.me_rc_stats_req_handler:

00000000 <me_rc_stats_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	6505                	lui	a0,0x1

00000004 <.LVL16>:
   4:	c226                	sw	s1,4(sp)
   6:	40f50513          	addi	a0,a0,1039 # 140f <.LASF380+0x4>
   a:	84ae                	mv	s1,a1
   c:	85b6                	mv	a1,a3

0000000e <.LVL17>:
   e:	0d000693          	li	a3,208

00000012 <.LVL18>:
  12:	c422                	sw	s0,8(sp)
  14:	c606                	sw	ra,12(sp)
  16:	c04a                	sw	s2,0(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL18+0x6>

00000020 <.LVL19>:
  20:	0004c683          	lbu	a3,0(s1)
  24:	1b000713          	li	a4,432
  28:	000007b7          	lui	a5,0x0
			28: R_RISCV_HI20	sta_info_tab
			28: R_RISCV_RELAX	*ABS*
  2c:	02e68733          	mul	a4,a3,a4
  30:	00078793          	mv	a5,a5
			30: R_RISCV_LO12_I	sta_info_tab
			30: R_RISCV_RELAX	*ABS*
  34:	842a                	mv	s0,a0

00000036 <.LVL20>:
  36:	97ba                	add	a5,a5,a4
  38:	1107a483          	lw	s1,272(a5) # 110 <.L87+0x10>

0000003c <.LVL21>:
  3c:	00d50023          	sb	a3,0(a0)
  40:	ccd1                	beqz	s1,dc <.L10>
			40: R_RISCV_RVC_BRANCH	.L10
  42:	0c04d783          	lhu	a5,192(s1)
  46:	02000613          	li	a2,32
  4a:	07c48593          	addi	a1,s1,124
  4e:	00f51123          	sh	a5,2(a0)
  52:	0a44d783          	lhu	a5,164(s1)
  56:	0541                	addi	a0,a0,16
  58:	4901                	li	s2,0
  5a:	fef51a23          	sh	a5,-12(a0)
  5e:	0a64d783          	lhu	a5,166(s1)
  62:	fef51b23          	sh	a5,-10(a0)
  66:	0a84a783          	lw	a5,168(s1)
  6a:	fef52c23          	sw	a5,-8(a0)
  6e:	0b04c783          	lbu	a5,176(s1)
  72:	fef50e23          	sb	a5,-4(a0)
  76:	0ac4c783          	lbu	a5,172(s1)
  7a:	fef50ea3          	sb	a5,-3(a0)
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	memcpy
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL21+0x42>

00000086 <.LVL22>:
  86:	07800613          	li	a2,120
  8a:	00448593          	addi	a1,s1,4
  8e:	03040513          	addi	a0,s0,48
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	memcpy
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL22+0xc>

0000009a <.L11>:
  9a:	0c04d783          	lhu	a5,192(s1)
  9e:	00f96e63          	bltu	s2,a5,ba <.L12>
			9e: R_RISCV_BRANCH	.L12

000000a2 <.L13>:
  a2:	8522                	mv	a0,s0
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	ke_msg_send
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.L13+0x2>

000000ac <.LVL25>:
  ac:	40b2                	lw	ra,12(sp)
  ae:	4422                	lw	s0,8(sp)

000000b0 <.LVL26>:
  b0:	4492                	lw	s1,4(sp)

000000b2 <.LVL27>:
  b2:	4902                	lw	s2,0(sp)
  b4:	4501                	li	a0,0
  b6:	0141                	addi	sp,sp,16
  b8:	8082                	ret

000000ba <.L12>:
  ba:	0ff97593          	andi	a1,s2,255
  be:	8526                	mv	a0,s1
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	rc_calc_tp
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.L12+0x6>

000000c8 <.LVL29>:
  c8:	02890793          	addi	a5,s2,40
  cc:	078a                	slli	a5,a5,0x2
  ce:	0905                	addi	s2,s2,1

000000d0 <.LVL30>:
  d0:	97a2                	add	a5,a5,s0
  d2:	0942                	slli	s2,s2,0x10
  d4:	c788                	sw	a0,8(a5)
  d6:	01095913          	srli	s2,s2,0x10

000000da <.LVL31>:
  da:	b7c1                	j	9a <.L11>
			da: R_RISCV_RVC_JUMP	.L11

000000dc <.L10>:
  dc:	00051123          	sh	zero,2(a0)
  e0:	b7c9                	j	a2 <.L13>
			e0: R_RISCV_RVC_JUMP	.L13

Disassembly of section .text.me_traffic_ind_req_handler:

00000000 <me_traffic_ind_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	0005c483          	lbu	s1,0(a1) # 0 <me_traffic_ind_req_handler>
  12:	1b000793          	li	a5,432
  16:	00000437          	lui	s0,0x0
			16: R_RISCV_HI20	sta_info_tab
			16: R_RISCV_RELAX	*ABS*
  1a:	02f487b3          	mul	a5,s1,a5
  1e:	8a32                	mv	s4,a2
  20:	0025c603          	lbu	a2,2(a1)

00000024 <.LVL35>:
  24:	00040713          	mv	a4,s0
			24: R_RISCV_LO12_I	sta_info_tab
			24: R_RISCV_RELAX	*ABS*
  28:	89b6                	mv	s3,a3
  2a:	892e                	mv	s2,a1
  2c:	0015c683          	lbu	a3,1(a1)

00000030 <.LVL36>:
  30:	00040413          	mv	s0,s0
			30: R_RISCV_LO12_I	sta_info_tab
			30: R_RISCV_RELAX	*ABS*
  34:	973e                	add	a4,a4,a5
  36:	03274783          	lbu	a5,50(a4)
  3a:	c251                	beqz	a2,be <.L16>
			3a: R_RISCV_RVC_BRANCH	.L16
  3c:	0fb7f713          	andi	a4,a5,251
  40:	c299                	beqz	a3,46 <.L18>
			40: R_RISCV_RVC_BRANCH	.L18
  42:	0047e713          	ori	a4,a5,4

00000046 <.L18>:
  46:	1b000793          	li	a5,432
  4a:	02f487b3          	mul	a5,s1,a5
  4e:	97a2                	add	a5,a5,s0
  50:	02e78923          	sb	a4,50(a5)
  54:	0f27c703          	lbu	a4,242(a5)
  58:	47bd                	li	a5,15
  5a:	04f71063          	bne	a4,a5,9a <.L19>
			5a: R_RISCV_BRANCH	.L19

0000005e <.L20>:
  5e:	4691                	li	a3,4
  60:	4615                	li	a2,5
  62:	4581                	li	a1,0

00000064 <.LVL37>:
  64:	04100513          	li	a0,65

00000068 <.LVL38>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	ke_msg_alloc
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL38>

00000070 <.LVL39>:
  70:	1b000713          	li	a4,432
  74:	02e484b3          	mul	s1,s1,a4
  78:	9426                	add	s0,s0,s1
  7a:	01845703          	lhu	a4,24(s0) # 18 <me_traffic_ind_req_handler+0x18>
  7e:	00e51023          	sh	a4,0(a0)
  82:	01a44703          	lbu	a4,26(s0)
  86:	00e501a3          	sb	a4,3(a0)
  8a:	00194703          	lbu	a4,1(s2)
  8e:	00e50123          	sb	a4,2(a0)
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	ke_msg_send
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL39+0x22>

0000009a <.L19>:
  9a:	6505                	lui	a0,0x1
  9c:	8652                	mv	a2,s4
  9e:	85ce                	mv	a1,s3
  a0:	40d50513          	addi	a0,a0,1037 # 140d <.LASF380+0x2>
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	ke_msg_send_basic
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.L19+0xa>

000000ac <.LVL42>:
  ac:	40f2                	lw	ra,28(sp)
  ae:	4462                	lw	s0,24(sp)
  b0:	44d2                	lw	s1,20(sp)
  b2:	4942                	lw	s2,16(sp)

000000b4 <.LVL43>:
  b4:	49b2                	lw	s3,12(sp)
  b6:	4a22                	lw	s4,8(sp)
  b8:	4501                	li	a0,0
  ba:	6105                	addi	sp,sp,32
  bc:	8082                	ret

000000be <.L16>:
  be:	c691                	beqz	a3,ca <.L21>
			be: R_RISCV_RVC_BRANCH	.L21
  c0:	0017e793          	ori	a5,a5,1

000000c4 <.L23>:
  c4:	02f70923          	sb	a5,50(a4)
  c8:	bf59                	j	5e <.L20>
			c8: R_RISCV_RVC_JUMP	.L20

000000ca <.L21>:
  ca:	9bf9                	andi	a5,a5,-2
  cc:	bfe5                	j	c4 <.L23>
			cc: R_RISCV_RVC_JUMP	.L23

Disassembly of section .text.me_sta_del_req_handler:

00000000 <me_sta_del_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842e                	mv	s0,a1
   8:	c04a                	sw	s2,0(sp)
   a:	4581                	li	a1,0

0000000c <.LVL46>:
   c:	8932                	mv	s2,a2
   e:	84b6                	mv	s1,a3
  10:	4615                	li	a2,5

00000012 <.LVL47>:
  12:	4685                	li	a3,1

00000014 <.LVL48>:
  14:	4531                	li	a0,12

00000016 <.LVL49>:
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL49+0x2>

00000020 <.LVL50>:
  20:	00044783          	lbu	a5,0(s0)
  24:	00f50023          	sb	a5,0(a0)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ke_msg_send
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL50+0x8>

00000030 <.LVL51>:
  30:	00144783          	lbu	a5,1(s0)
  34:	c3a1                	beqz	a5,74 <.L25>
			34: R_RISCV_RVC_BRANCH	.L25

00000036 <.LBB23>:
  36:	6505                	lui	a0,0x1
  38:	4619                	li	a2,6
  3a:	4689                	li	a3,2
  3c:	4595                	li	a1,5
  3e:	41350513          	addi	a0,a0,1043 # 1413 <.LASF380+0x8>
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ke_msg_alloc
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LBB23+0xc>

0000004a <.LVL52>:
  4a:	00050023          	sb	zero,0(a0)

0000004e <.LBB24>:
  4e:	00044703          	lbu	a4,0(s0)
  52:	1b000613          	li	a2,432
  56:	000007b7          	lui	a5,0x0
			56: R_RISCV_HI20	sta_info_tab
			56: R_RISCV_RELAX	*ABS*
  5a:	02c70733          	mul	a4,a4,a2
  5e:	00078793          	mv	a5,a5
			5e: R_RISCV_LO12_I	sta_info_tab
			5e: R_RISCV_RELAX	*ABS*
  62:	97ba                	add	a5,a5,a4
  64:	01a7c783          	lbu	a5,26(a5) # 1a <.LVL49+0x4>

00000068 <.LBE24>:
  68:	00f500a3          	sb	a5,1(a0)
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	ke_msg_send
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE24+0x4>

00000074 <.L25>:
  74:	6505                	lui	a0,0x1
  76:	864a                	mv	a2,s2
  78:	85a6                	mv	a1,s1
  7a:	40a50513          	addi	a0,a0,1034 # 140a <.LASF204+0x7>
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	ke_msg_send_basic
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.L25+0xa>

00000086 <.LVL56>:
  86:	40b2                	lw	ra,12(sp)
  88:	4422                	lw	s0,8(sp)

0000008a <.LVL57>:
  8a:	4492                	lw	s1,4(sp)
  8c:	4902                	lw	s2,0(sp)
  8e:	4501                	li	a0,0
  90:	0141                	addi	sp,sp,16
  92:	8082                	ret

Disassembly of section .text.me_set_control_port_req_handler:

00000000 <me_set_control_port_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)
   a:	0005c783          	lbu	a5,0(a1)
   e:	1b000713          	li	a4,432
  12:	00000437          	lui	s0,0x0
			12: R_RISCV_HI20	sta_info_tab
			12: R_RISCV_RELAX	*ABS*
  16:	02e787b3          	mul	a5,a5,a4
  1a:	00040413          	mv	s0,s0
			1a: R_RISCV_LO12_I	sta_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	84b6                	mv	s1,a3
  20:	8932                	mv	s2,a2
  22:	5d800613          	li	a2,1496

00000026 <.LVL61>:
  26:	00000737          	lui	a4,0x0
			26: R_RISCV_HI20	vif_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	00070713          	mv	a4,a4
			2a: R_RISCV_LO12_I	vif_info_tab
			2a: R_RISCV_RELAX	*ABS*
  2e:	943e                	add	s0,s0,a5
  30:	01a44683          	lbu	a3,26(s0) # 1a <me_set_control_port_req_handler+0x1a>

00000034 <.LVL62>:
  34:	0015c783          	lbu	a5,1(a1)
  38:	02c686b3          	mul	a3,a3,a2
  3c:	00f037b3          	snez	a5,a5
  40:	0785                	addi	a5,a5,1
  42:	02f408a3          	sb	a5,49(s0)
  46:	9736                	add	a4,a4,a3
  48:	05674703          	lbu	a4,86(a4) # 56 <.LVL65>
  4c:	eb05                	bnez	a4,7c <.L32>
			4c: R_RISCV_RVC_BRANCH	.L32
  4e:	4709                	li	a4,2
  50:	02e79663          	bne	a5,a4,7c <.L32>
			50: R_RISCV_BRANCH	.L32

00000054 <.LBB26>:
  54:	6505                	lui	a0,0x1

00000056 <.LVL65>:
  56:	4689                	li	a3,2
  58:	4619                	li	a2,6
  5a:	4595                	li	a1,5

0000005c <.LVL66>:
  5c:	41350513          	addi	a0,a0,1043 # 1413 <.LASF380+0x8>
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ke_msg_alloc
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL66+0x4>

00000068 <.LVL67>:
  68:	00050023          	sb	zero,0(a0)
  6c:	01a44703          	lbu	a4,26(s0)
  70:	00e500a3          	sb	a4,1(a0)
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	ke_msg_send
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL67+0xc>

0000007c <.L32>:
  7c:	6505                	lui	a0,0x1
  7e:	864a                	mv	a2,s2
  80:	85a6                	mv	a1,s1
  82:	40550513          	addi	a0,a0,1029 # 1405 <.LASF204+0x2>
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	ke_msg_send_basic
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.L32+0xa>

0000008e <.LVL69>:
  8e:	40b2                	lw	ra,12(sp)
  90:	4422                	lw	s0,8(sp)
  92:	4492                	lw	s1,4(sp)
  94:	4902                	lw	s2,0(sp)
  96:	4501                	li	a0,0
  98:	0141                	addi	sp,sp,16
  9a:	8082                	ret

Disassembly of section .text.me_chan_config_req_handler:

00000000 <me_chan_config_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	me_env+0x30
			2: R_RISCV_RELAX	*ABS*+0x30

00000006 <.LVL71>:
   6:	cc22                	sw	s0,24(sp)
   8:	03050513          	addi	a0,a0,48 # 30 <.LVL73+0x12>
			8: R_RISCV_LO12_I	me_env+0x30
			8: R_RISCV_RELAX	*ABS*+0x30
   c:	8432                	mv	s0,a2
   e:	0fe00613          	li	a2,254

00000012 <.LVL72>:
  12:	ce06                	sw	ra,28(sp)
  14:	c636                	sw	a3,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	memcpy
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL72+0x4>

0000001e <.LVL73>:
  1e:	46b2                	lw	a3,12(sp)
  20:	6505                	lui	a0,0x1
  22:	8622                	mv	a2,s0
  24:	40350513          	addi	a0,a0,1027 # 1403 <.LASF204>
  28:	85b6                	mv	a1,a3
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ke_msg_send_basic
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL73+0xc>

00000032 <.LVL74>:
  32:	40f2                	lw	ra,28(sp)
  34:	4462                	lw	s0,24(sp)
  36:	4501                	li	a0,0
  38:	6105                	addi	sp,sp,32
  3a:	8082                	ret

Disassembly of section .text.mm_set_ps_mode_cfm_handler:

00000000 <mm_set_ps_mode_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL76>:
   4:	c422                	sw	s0,8(sp)
   6:	c606                	sw	ra,12(sp)
   8:	8432                	mv	s0,a2
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ke_state_get
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL76+0x6>

00000012 <.LVL77>:
  12:	4785                	li	a5,1
  14:	02f50063          	beq	a0,a5,34 <.L38>
			14: R_RISCV_BRANCH	.L38
  18:	000005b7          	lui	a1,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC2
			1c: R_RISCV_RELAX	*ABS*
  20:	2bb00613          	li	a2,699
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC2
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	assert_err
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL77+0x1a>

00000034 <.L38>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	me_env+0x8
			34: R_RISCV_RELAX	*ABS*+0x8
  38:	0087d583          	lhu	a1,8(a5) # 8 <.LVL76+0x4>
			38: R_RISCV_LO12_I	me_env+0x8
			38: R_RISCV_RELAX	*ABS*+0x8
  3c:	0ff00793          	li	a5,255
  40:	00f58a63          	beq	a1,a5,54 <.L39>
			40: R_RISCV_BRANCH	.L39
  44:	6505                	lui	a0,0x1
  46:	8622                	mv	a2,s0
  48:	41450513          	addi	a0,a0,1044 # 1414 <.LASF380+0x9>
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	ke_msg_send_basic
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.L38+0x18>

00000054 <.L39>:
  54:	8522                	mv	a0,s0
  56:	4581                	li	a1,0
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	ke_state_set
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.L39+0x4>

00000060 <.LVL80>:
  60:	40b2                	lw	ra,12(sp)
  62:	4422                	lw	s0,8(sp)
  64:	4501                	li	a0,0
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

Disassembly of section .text.mm_set_idle_cfm_handler:

00000000 <mm_set_idle_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL82>:
   4:	c422                	sw	s0,8(sp)
   6:	c606                	sw	ra,12(sp)
   8:	8432                	mv	s0,a2
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ke_state_get
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL82+0x6>

00000012 <.LVL83>:
  12:	4785                	li	a5,1
  14:	02f50063          	beq	a0,a5,34 <.L42>
			14: R_RISCV_BRANCH	.L42
  18:	000005b7          	lui	a1,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC2
			1c: R_RISCV_RELAX	*ABS*
  20:	25200613          	li	a2,594
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC2
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	assert_err
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL83+0x1a>

00000034 <.L42>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	me_env+0x8
			34: R_RISCV_RELAX	*ABS*+0x8
  38:	0087d583          	lhu	a1,8(a5) # 8 <.LVL82+0x4>
			38: R_RISCV_LO12_I	me_env+0x8
			38: R_RISCV_RELAX	*ABS*+0x8
  3c:	0ff00793          	li	a5,255
  40:	00f58a63          	beq	a1,a5,54 <.L43>
			40: R_RISCV_BRANCH	.L43
  44:	6505                	lui	a0,0x1
  46:	8622                	mv	a2,s0
  48:	41250513          	addi	a0,a0,1042 # 1412 <.LASF380+0x7>
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	ke_msg_send_basic
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.L42+0x18>

00000054 <.L43>:
  54:	8522                	mv	a0,s0
  56:	4581                	li	a1,0
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	ke_state_set
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.L43+0x4>

00000060 <.LVL86>:
  60:	40b2                	lw	ra,12(sp)
  62:	4422                	lw	s0,8(sp)
  64:	4501                	li	a0,0
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

Disassembly of section .text.me_config_req_handler:

00000000 <me_config_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c452                	sw	s4,8(sp)
   6:	84ae                	mv	s1,a1
   8:	c256                	sw	s5,4(sp)
   a:	8a36                	mv	s4,a3
   c:	8ab2                	mv	s5,a2
   e:	4685                	li	a3,1

00000010 <.LVL88>:
  10:	4615                	li	a2,5

00000012 <.LVL89>:
  12:	4581                	li	a1,0

00000014 <.LVL90>:
  14:	03100513          	li	a0,49

00000018 <.LVL91>:
  18:	ce06                	sw	ra,28(sp)
  1a:	cc22                	sw	s0,24(sp)
  1c:	c84a                	sw	s2,16(sp)
  1e:	c64e                	sw	s3,12(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ke_msg_alloc
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL91+0x8>

00000028 <.LVL92>:
  28:	02e4c783          	lbu	a5,46(s1)
  2c:	00000437          	lui	s0,0x0
			2c: R_RISCV_HI20	me_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00040913          	mv	s2,s0
			30: R_RISCV_LO12_I	me_env
			30: R_RISCV_RELAX	*ABS*
  34:	02000613          	li	a2,32
  38:	85a6                	mv	a1,s1
  3a:	89aa                	mv	s3,a0

0000003c <.LVL93>:
  3c:	00c90513          	addi	a0,s2,12

00000040 <.LVL94>:
  40:	02f90723          	sb	a5,46(s2)
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	memcpy
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL94+0x4>

0000004c <.LVL95>:
  4c:	6505                	lui	a0,0x1
  4e:	8656                	mv	a2,s5
  50:	85d2                	mv	a1,s4
  52:	40150513          	addi	a0,a0,1025 # 1401 <.LASF166+0x9>
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ke_msg_send_basic
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL95+0xa>

0000005e <.LVL96>:
  5e:	02e94783          	lbu	a5,46(s2)
  62:	00040413          	mv	s0,s0
			62: R_RISCV_LO12_I	me_env
			62: R_RISCV_RELAX	*ABS*
  66:	c7a5                	beqz	a5,ce <.L46>
			66: R_RISCV_RVC_BRANCH	.L46

00000068 <.LBB27>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	phy_get_nss
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LBB27>

00000070 <.LVL98>:
  70:	00c45783          	lhu	a5,12(s0) # c <me_config_req_handler+0xc>
  74:	0505                	addi	a0,a0,1
  76:	8505                	srai	a0,a0,0x1
  78:	8385                	srli	a5,a5,0x1
  7a:	8b85                	andi	a5,a5,1
  7c:	12a40723          	sb	a0,302(s0)

00000080 <.LVL99>:
  80:	12f407a3          	sb	a5,303(s0)

00000084 <.L47>:
  84:	02c4d783          	lhu	a5,44(s1)
  88:	02f41623          	sh	a5,44(s0)
  8c:	0304c783          	lbu	a5,48(s1)
  90:	12f40823          	sb	a5,304(s0)
  94:	c39d                	beqz	a5,ba <.L48>
			94: R_RISCV_RVC_BRANCH	.L48
  96:	0ff00793          	li	a5,255
  9a:	00f41423          	sh	a5,8(s0)
  9e:	4789                	li	a5,2
  a0:	854e                	mv	a0,s3
  a2:	00f98023          	sb	a5,0(s3)
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	ke_msg_send
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.L47+0x22>

000000ae <.LVL101>:
  ae:	4585                	li	a1,1
  b0:	4515                	li	a0,5
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	ke_state_set
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL101+0x4>

000000ba <.L48>:
  ba:	40f2                	lw	ra,28(sp)
  bc:	4462                	lw	s0,24(sp)
  be:	44d2                	lw	s1,20(sp)

000000c0 <.LVL103>:
  c0:	4942                	lw	s2,16(sp)
  c2:	49b2                	lw	s3,12(sp)

000000c4 <.LVL104>:
  c4:	4a22                	lw	s4,8(sp)
  c6:	4a92                	lw	s5,4(sp)
  c8:	4501                	li	a0,0
  ca:	6105                	addi	sp,sp,32
  cc:	8082                	ret

000000ce <.L46>:
  ce:	12041723          	sh	zero,302(s0)
  d2:	bf4d                	j	84 <.L47>
			d2: R_RISCV_RVC_JUMP	.L47

Disassembly of section .text.me_set_ps_disable_req_handler:

00000000 <me_set_ps_disable_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	me_env
			4: R_RISCV_RELAX	*ABS*
   8:	c452                	sw	s4,8(sp)
   a:	00040a13          	mv	s4,s0
			a: R_RISCV_LO12_I	me_env
			a: R_RISCV_RELAX	*ABS*
   e:	130a4783          	lbu	a5,304(s4)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	ce06                	sw	ra,28(sp)
  18:	c64e                	sw	s3,12(sp)
  1a:	84b2                	mv	s1,a2
  1c:	8936                	mv	s2,a3
  1e:	e785                	bnez	a5,46 <.L54>
			1e: R_RISCV_RVC_BRANCH	.L54

00000020 <.L59>:
  20:	6505                	lui	a0,0x1
  22:	8626                	mv	a2,s1
  24:	85ca                	mv	a1,s2
  26:	41450513          	addi	a0,a0,1044 # 1414 <.LASF380+0x9>
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ke_msg_send_basic
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.L59+0xa>

00000032 <.L69>:
  32:	4701                	li	a4,0

00000034 <.L53>:
  34:	40f2                	lw	ra,28(sp)
  36:	4462                	lw	s0,24(sp)
  38:	44d2                	lw	s1,20(sp)
  3a:	4942                	lw	s2,16(sp)
  3c:	49b2                	lw	s3,12(sp)
  3e:	4a22                	lw	s4,8(sp)
  40:	853a                	mv	a0,a4
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L54>:
  46:	4515                	li	a0,5

00000048 <.LVL110>:
  48:	89ae                	mv	s3,a1
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ke_state_get
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL110+0x2>

00000052 <.LVL111>:
  52:	4785                	li	a5,1
  54:	4709                	li	a4,2
  56:	fcf50fe3          	beq	a0,a5,34 <.L53>
			56: R_RISCV_BRANCH	.L53

0000005a <.LBB37>:
  5a:	004a2703          	lw	a4,4(s4)
  5e:	00040413          	mv	s0,s0
			5e: R_RISCV_LO12_I	me_env
			5e: R_RISCV_RELAX	*ABS*
  62:	0009c683          	lbu	a3,0(s3)
  66:	cb21                	beqz	a4,b6 <.L56>
			66: R_RISCV_RVC_BRANCH	.L56
  68:	e2ad                	bnez	a3,ca <.L57>
			68: R_RISCV_RVC_BRANCH	.L57

0000006a <.L58>:
  6a:	4685                	li	a3,1
  6c:	8626                	mv	a2,s1
  6e:	4581                	li	a1,0
  70:	03100513          	li	a0,49
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	ke_msg_alloc
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.L58+0xa>

0000007c <.LVL113>:
  7c:	0009c783          	lbu	a5,0(s3)
  80:	0019c703          	lbu	a4,1(s3)
  84:	cb9d                	beqz	a5,ba <.L60>
			84: R_RISCV_RVC_BRANCH	.L60
  86:	4785                	li	a5,1
  88:	00e797b3          	sll	a5,a5,a4
  8c:	4058                	lw	a4,4(s0)
  8e:	8fd9                	or	a5,a5,a4

00000090 <.L61>:
  90:	c05c                	sw	a5,4(s0)
  92:	0017b793          	seqz	a5,a5
  96:	01241423          	sh	s2,8(s0) # 8 <me_set_ps_disable_req_handler+0x8>
  9a:	0786                	slli	a5,a5,0x1
  9c:	00f50023          	sb	a5,0(a0)
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	ke_msg_send
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.L61+0x10>

000000a8 <.LVL114>:
  a8:	4585                	li	a1,1
  aa:	8526                	mv	a0,s1
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	ke_state_set
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL114+0x4>

000000b4 <.LVL115>:
  b4:	bfbd                	j	32 <.L69>
			b4: R_RISCV_RVC_JUMP	.L69

000000b6 <.L56>:
  b6:	d6ad                	beqz	a3,20 <.L59>
			b6: R_RISCV_RVC_BRANCH	.L59
  b8:	bf4d                	j	6a <.L58>
			b8: R_RISCV_RVC_JUMP	.L58

000000ba <.L60>:
  ba:	4785                	li	a5,1
  bc:	00e797b3          	sll	a5,a5,a4
  c0:	4058                	lw	a4,4(s0)
  c2:	fff7c793          	not	a5,a5
  c6:	8ff9                	and	a5,a5,a4
  c8:	b7e1                	j	90 <.L61>
			c8: R_RISCV_RVC_JUMP	.L61

000000ca <.L57>:
  ca:	0019c683          	lbu	a3,1(s3)
  ce:	00d797b3          	sll	a5,a5,a3
  d2:	8fd9                	or	a5,a5,a4
  d4:	00fa2223          	sw	a5,4(s4)
  d8:	b7a1                	j	20 <.L59>
			d8: R_RISCV_RVC_JUMP	.L59

Disassembly of section .text.me_set_active_req_handler:

00000000 <me_set_active_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4515                	li	a0,5

00000004 <.LVL119>:
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	89ae                	mv	s3,a1
  10:	84b2                	mv	s1,a2
  12:	8936                	mv	s2,a3
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL119+0x10>

0000001c <.LVL120>:
  1c:	4785                	li	a5,1
  1e:	4709                	li	a4,2
  20:	06f50d63          	beq	a0,a5,9a <.L70>
			20: R_RISCV_BRANCH	.L70
  24:	00000437          	lui	s0,0x0
			24: R_RISCV_HI20	me_env
			24: R_RISCV_RELAX	*ABS*
  28:	00040713          	mv	a4,s0
			28: R_RISCV_LO12_I	me_env
			28: R_RISCV_RELAX	*ABS*
  2c:	4314                	lw	a3,0(a4)
  2e:	0009c603          	lbu	a2,0(s3)
  32:	00040413          	mv	s0,s0
			32: R_RISCV_LO12_I	me_env
			32: R_RISCV_RELAX	*ABS*
  36:	c6b9                	beqz	a3,84 <.L72>
			36: R_RISCV_RVC_BRANCH	.L72
  38:	e249                	bnez	a2,ba <.L73>
			38: R_RISCV_RVC_BRANCH	.L73

0000003a <.L74>:
  3a:	4685                	li	a3,1
  3c:	8626                	mv	a2,s1
  3e:	4581                	li	a1,0
  40:	02200513          	li	a0,34
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ke_msg_alloc
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L74+0xa>

0000004c <.LVL122>:
  4c:	0009c783          	lbu	a5,0(s3)
  50:	0019c703          	lbu	a4,1(s3)
  54:	cbb9                	beqz	a5,aa <.L75>
			54: R_RISCV_RVC_BRANCH	.L75
  56:	4785                	li	a5,1
  58:	00e797b3          	sll	a5,a5,a4
  5c:	4018                	lw	a4,0(s0)
  5e:	8fd9                	or	a5,a5,a4

00000060 <.L76>:
  60:	c01c                	sw	a5,0(s0)
  62:	01241423          	sh	s2,8(s0) # 8 <.LVL119+0x4>
  66:	0017b793          	seqz	a5,a5
  6a:	00f50023          	sb	a5,0(a0)
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_send
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L76+0xe>

00000076 <.LVL123>:
  76:	4585                	li	a1,1
  78:	8526                	mv	a0,s1
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	ke_state_set
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL123+0x4>

00000082 <.LVL124>:
  82:	a819                	j	98 <.L80>
			82: R_RISCV_RVC_JUMP	.L80

00000084 <.L72>:
  84:	fa5d                	bnez	a2,3a <.L74>
			84: R_RISCV_RVC_BRANCH	.L74

00000086 <.L77>:
  86:	6505                	lui	a0,0x1
  88:	8626                	mv	a2,s1
  8a:	85ca                	mv	a1,s2
  8c:	41250513          	addi	a0,a0,1042 # 1412 <.LASF380+0x7>
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	ke_msg_send_basic
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L77+0xa>

00000098 <.L80>:
  98:	4701                	li	a4,0

0000009a <.L70>:
  9a:	40f2                	lw	ra,28(sp)
  9c:	4462                	lw	s0,24(sp)
  9e:	44d2                	lw	s1,20(sp)
  a0:	4942                	lw	s2,16(sp)
  a2:	49b2                	lw	s3,12(sp)

000000a4 <.LVL127>:
  a4:	853a                	mv	a0,a4
  a6:	6105                	addi	sp,sp,32
  a8:	8082                	ret

000000aa <.L75>:
  aa:	4785                	li	a5,1
  ac:	00e797b3          	sll	a5,a5,a4
  b0:	4018                	lw	a4,0(s0)
  b2:	fff7c793          	not	a5,a5
  b6:	8ff9                	and	a5,a5,a4
  b8:	b765                	j	60 <.L76>
			b8: R_RISCV_RVC_JUMP	.L76

000000ba <.L73>:
  ba:	0019c603          	lbu	a2,1(s3)
  be:	00c797b3          	sll	a5,a5,a2
  c2:	8fd5                	or	a5,a5,a3
  c4:	c31c                	sw	a5,0(a4)
  c6:	b7c1                	j	86 <.L77>
			c6: R_RISCV_RVC_JUMP	.L77

Disassembly of section .text.me_sta_add_req_handler:

00000000 <me_sta_add_req_handler>:
   0:	711d                	addi	sp,sp,-96
   2:	6505                	lui	a0,0x1

00000004 <.LVL131>:
   4:	cca2                	sw	s0,88(sp)
   6:	40850513          	addi	a0,a0,1032 # 1408 <.LASF204+0x5>
   a:	842e                	mv	s0,a1
   c:	85b6                	mv	a1,a3

0000000e <.LVL132>:
   e:	468d                	li	a3,3

00000010 <.LVL133>:
  10:	ce86                	sw	ra,92(sp)
  12:	c4d2                	sw	s4,72(sp)
  14:	c2d6                	sw	s5,68(sp)
  16:	c0da                	sw	s6,64(sp)
  18:	caa6                	sw	s1,84(sp)
  1a:	c8ca                	sw	s2,80(sp)
  1c:	c6ce                	sw	s3,76(sp)
  1e:	de5e                	sw	s7,60(sp)
  20:	dc62                	sw	s8,56(sp)
  22:	da66                	sw	s9,52(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ke_msg_alloc
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL133+0x14>

0000002c <.LVL134>:
  2c:	8aaa                	mv	s5,a0

0000002e <.LVL135>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	rxu_cntrl_get_pm
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL135>

00000036 <.LVL136>:
  36:	403c                	lw	a5,64(s0)
  38:	8b2a                	mv	s6,a0

0000003a <.LVL137>:
  3a:	04944a03          	lbu	s4,73(s0)
  3e:	8b89                	andi	a5,a5,2
  40:	1e078b63          	beqz	a5,236 <.L94>
			40: R_RISCV_BRANCH	.L94

00000044 <.LBB57>:
  44:	01644783          	lbu	a5,22(s0)
  48:	4709                	li	a4,2
  4a:	4905                	li	s2,1
  4c:	0037f493          	andi	s1,a5,3

00000050 <.LVL139>:
  50:	8789                	srai	a5,a5,0x2
  52:	8b9d                	andi	a5,a5,7

00000054 <.LVL140>:
  54:	00f75763          	bge	a4,a5,62 <.L83>
			54: R_RISCV_BRANCH	.L83
  58:	17f5                	addi	a5,a5,-3

0000005a <.LVL141>:
  5a:	00f917b3          	sll	a5,s2,a5

0000005e <.LVL142>:
  5e:	0ff7f913          	andi	s2,a5,255

00000062 <.L83>:
  62:	00d48793          	addi	a5,s1,13
  66:	4485                	li	s1,1

00000068 <.LVL144>:
  68:	00f494b3          	sll	s1,s1,a5
  6c:	14fd                	addi	s1,s1,-1
  6e:	04c2                	slli	s1,s1,0x10
  70:	80c1                	srli	s1,s1,0x10

00000072 <.L82>:
  72:	4619                	li	a2,6
  74:	85a2                	mv	a1,s0
  76:	01a10513          	addi	a0,sp,26
  7a:	ca02                	sw	zero,20(sp)
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	memcpy
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L82+0xa>

00000084 <.LVL146>:
  84:	05444783          	lbu	a5,84(s0)
  88:	00f10613          	addi	a2,sp,15
  8c:	85d6                	mv	a1,s5
  8e:	02f101a3          	sb	a5,35(sp)
  92:	447c                	lw	a5,76(s0)
  94:	0808                	addi	a0,sp,16
  96:	00911c23          	sh	s1,24(sp)
  9a:	d23e                	sw	a5,36(sp)
  9c:	483c                	lw	a5,80(s0)
  9e:	c802                	sw	zero,16(sp)
  a0:	03210023          	sb	s2,32(sp)
  a4:	d43e                	sw	a5,40(sp)
  a6:	05544783          	lbu	a5,85(s0)
  aa:	034100a3          	sb	s4,33(sp)
  ae:	02f10623          	sb	a5,44(sp)
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	mm_sta_add
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL146+0x2e>

000000ba <.LVL147>:
  ba:	00aa80a3          	sb	a0,1(s5)
  be:	14051963          	bnez	a0,210 <.L85>
			be: R_RISCV_BRANCH	.L85

000000c2 <.LBB58>:
  c2:	000ac483          	lbu	s1,0(s5)

000000c6 <.LVL148>:
  c6:	1b000913          	li	s2,432

000000ca <.LVL149>:
  ca:	000009b7          	lui	s3,0x0
			ca: R_RISCV_HI20	sta_info_tab
			ca: R_RISCV_RELAX	*ABS*
  ce:	03248933          	mul	s2,s1,s2
  d2:	00098793          	mv	a5,s3
			d2: R_RISCV_LO12_I	sta_info_tab
			d2: R_RISCV_RELAX	*ABS*
  d6:	4635                	li	a2,13
  d8:	00640593          	addi	a1,s0,6
  dc:	00000bb7          	lui	s7,0x0
			dc: R_RISCV_HI20	vif_info_tab
			dc: R_RISCV_RELAX	*ABS*
  e0:	00098993          	mv	s3,s3
			e0: R_RISCV_LO12_I	sta_info_tab
			e0: R_RISCV_RELAX	*ABS*
  e4:	000b8b93          	mv	s7,s7
			e4: R_RISCV_LO12_I	vif_info_tab
			e4: R_RISCV_RELAX	*ABS*
  e8:	993e                	add	s2,s2,a5

000000ea <.LVL150>:
  ea:	0b090513          	addi	a0,s2,176
  ee:	00000097          	auipc	ra,0x0
			ee: R_RISCV_CALL	memcpy
			ee: R_RISCV_RELAX	*ABS*
  f2:	000080e7          	jalr	ra # ee <.LVL150+0x4>

000000f6 <.LVL151>:
  f6:	403c                	lw	a5,64(s0)
  f8:	8b85                	andi	a5,a5,1
  fa:	14079163          	bnez	a5,23c <.L86>
			fa: R_RISCV_BRANCH	.L86

000000fe <.L88>:
  fe:	4c81                	li	s9,0

00000100 <.L87>:
 100:	1b000c13          	li	s8,432
 104:	03848c33          	mul	s8,s1,s8
 108:	04644783          	lbu	a5,70(s0)
 10c:	854a                	mv	a0,s2
 10e:	9c4e                	add	s8,s8,s3
 110:	0efc0923          	sb	a5,242(s8)
 114:	04744783          	lbu	a5,71(s0)
 118:	0efc09a3          	sb	a5,243(s8)
 11c:	04445783          	lhu	a5,68(s0)
 120:	00fc1c23          	sh	a5,24(s8)
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	me_init_rate
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.L87+0x24>

0000012c <.LVL153>:
 12c:	403c                	lw	a5,64(s0)
 12e:	8bc1                	andi	a5,a5,16
 130:	c38d                	beqz	a5,152 <.L89>
			130: R_RISCV_RVC_BRANCH	.L89
 132:	04844583          	lbu	a1,72(s0)
 136:	01859793          	slli	a5,a1,0x18
 13a:	87e1                	srai	a5,a5,0x18
 13c:	0007cb63          	bltz	a5,152 <.L89>
			13c: R_RISCV_BRANCH	.L89

00000140 <.LBB59>:
 140:	01bc4503          	lbu	a0,27(s8)
 144:	0045d613          	srli	a2,a1,0x4
 148:	898d                	andi	a1,a1,3

0000014a <.LVL155>:
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	me_sta_bw_nss_max_upd
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LVL155>

00000152 <.L89>:
 152:	020c8063          	beqz	s9,172 <.L90>
			152: R_RISCV_BRANCH	.L90
 156:	1b000793          	li	a5,432
 15a:	02f487b3          	mul	a5,s1,a5
 15e:	4601                	li	a2,0
 160:	0ff00593          	li	a1,255
 164:	97ce                	add	a5,a5,s3
 166:	01b7c503          	lbu	a0,27(a5)
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	me_sta_bw_nss_max_upd
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.L89+0x18>

00000172 <.L90>:
 172:	1b000913          	li	s2,432

00000176 <.LVL158>:
 176:	032487b3          	mul	a5,s1,s2
 17a:	97ce                	add	a5,a5,s3
 17c:	11a7c703          	lbu	a4,282(a5)
 180:	01076713          	ori	a4,a4,16
 184:	10e78d23          	sb	a4,282(a5)
 188:	5d800713          	li	a4,1496
 18c:	02ea0733          	mul	a4,s4,a4
 190:	975e                	add	a4,a4,s7
 192:	5c472683          	lw	a3,1476(a4)
 196:	8a85                	andi	a3,a3,1
 198:	0016b693          	seqz	a3,a3
 19c:	0685                	addi	a3,a3,1
 19e:	02d788a3          	sb	a3,49(a5)
 1a2:	34c75683          	lhu	a3,844(a4)

000001a6 <.LBB60>:
 1a6:	00869613          	slli	a2,a3,0x8
 1aa:	82a1                	srli	a3,a3,0x8
 1ac:	8ed1                	or	a3,a3,a2

000001ae <.LBE60>:
 1ae:	02d79c23          	sh	a3,56(a5)
 1b2:	016a8123          	sb	s6,2(s5)
 1b6:	040b0d63          	beqz	s6,210 <.L85>
			1b6: R_RISCV_BRANCH	.L85
 1ba:	01678e23          	sb	s6,28(a5)
 1be:	34a74783          	lbu	a5,842(a4)
 1c2:	ef8d                	bnez	a5,1fc <.L93>
			1c2: R_RISCV_RVC_BRANCH	.L93
 1c4:	05774403          	lbu	s0,87(a4)

000001c8 <.LBB64>:
 1c8:	4689                	li	a3,2
 1ca:	4601                	li	a2,0

000001cc <.LBE64>:
 1cc:	0429                	addi	s0,s0,10
 1ce:	0ff47413          	andi	s0,s0,255

000001d2 <.LBB69>:
 1d2:	03240933          	mul	s2,s0,s2

000001d6 <.LVL162>:
 1d6:	45b5                	li	a1,13
 1d8:	04900513          	li	a0,73
 1dc:	00000097          	auipc	ra,0x0
			1dc: R_RISCV_CALL	ke_msg_alloc
			1dc: R_RISCV_RELAX	*ABS*
 1e0:	000080e7          	jalr	ra # 1dc <.LVL162+0x6>

000001e4 <.LVL163>:
 1e4:	4705                	li	a4,1
 1e6:	99ca                	add	s3,s3,s2

000001e8 <.LVL164>:
 1e8:	00e98e23          	sb	a4,28(s3) # 1c <.LVL133+0xc>
 1ec:	00850023          	sb	s0,0(a0)
 1f0:	00e500a3          	sb	a4,1(a0)
 1f4:	00000097          	auipc	ra,0x0
			1f4: R_RISCV_CALL	ke_msg_send
			1f4: R_RISCV_RELAX	*ABS*
 1f8:	000080e7          	jalr	ra # 1f4 <.LVL164+0xc>

000001fc <.L93>:
 1fc:	5d800793          	li	a5,1496
 200:	02fa0a33          	mul	s4,s4,a5
 204:	9bd2                	add	s7,s7,s4
 206:	34abc783          	lbu	a5,842(s7) # 34a <.LASF8+0x2>
 20a:	0785                	addi	a5,a5,1
 20c:	34fb8523          	sb	a5,842(s7)

00000210 <.L85>:
 210:	8556                	mv	a0,s5
 212:	00000097          	auipc	ra,0x0
			212: R_RISCV_CALL	ke_msg_send
			212: R_RISCV_RELAX	*ABS*
 216:	000080e7          	jalr	ra # 212 <.L85+0x2>

0000021a <.LVL168>:
 21a:	40f6                	lw	ra,92(sp)
 21c:	4466                	lw	s0,88(sp)
 21e:	44d6                	lw	s1,84(sp)
 220:	4946                	lw	s2,80(sp)
 222:	49b6                	lw	s3,76(sp)
 224:	4a26                	lw	s4,72(sp)
 226:	4a96                	lw	s5,68(sp)

00000228 <.LVL169>:
 228:	4b06                	lw	s6,64(sp)

0000022a <.LVL170>:
 22a:	5bf2                	lw	s7,60(sp)
 22c:	5c62                	lw	s8,56(sp)
 22e:	5cd2                	lw	s9,52(sp)
 230:	4501                	li	a0,0
 232:	6125                	addi	sp,sp,96
 234:	8082                	ret

00000236 <.L94>:
 236:	4901                	li	s2,0
 238:	4481                	li	s1,0
 23a:	bd25                	j	72 <.L82>
			23a: R_RISCV_RVC_JUMP	.L82

0000023c <.L86>:
 23c:	0ec92783          	lw	a5,236(s2)
 240:	0017e713          	ori	a4,a5,1
 244:	0ee92623          	sw	a4,236(s2)
 248:	4038                	lw	a4,64(s0)
 24a:	8b09                	andi	a4,a4,2
 24c:	ea0709e3          	beqz	a4,fe <.L88>
			24c: R_RISCV_BRANCH	.L88
 250:	00000737          	lui	a4,0x0
			250: R_RISCV_HI20	me_env+0x2e
			250: R_RISCV_RELAX	*ABS*+0x2e
 254:	02e74703          	lbu	a4,46(a4) # 2e <.LVL135>
			254: R_RISCV_LO12_I	me_env+0x2e
			254: R_RISCV_RELAX	*ABS*+0x2e
 258:	ea0703e3          	beqz	a4,fe <.L88>
			258: R_RISCV_BRANCH	.L88
 25c:	0037e793          	ori	a5,a5,3
 260:	0ef92623          	sw	a5,236(s2)
 264:	02000613          	li	a2,32
 268:	01440593          	addi	a1,s0,20
 26c:	0c090513          	addi	a0,s2,192
 270:	00000097          	auipc	ra,0x0
			270: R_RISCV_CALL	memcpy
			270: R_RISCV_RELAX	*ABS*
 274:	000080e7          	jalr	ra # 270 <.L86+0x34>

00000278 <.LVL173>:
 278:	5d800593          	li	a1,1496
 27c:	02ba05b3          	mul	a1,s4,a1
 280:	854a                	mv	a0,s2
 282:	35858593          	addi	a1,a1,856 # 358 <.LASF674+0x7>
 286:	95de                	add	a1,a1,s7
 288:	00000097          	auipc	ra,0x0
			288: R_RISCV_CALL	me_set_sta_ht_vht_param
			288: R_RISCV_RELAX	*ABS*
 28c:	000080e7          	jalr	ra # 288 <.LVL173+0x10>

00000290 <.LVL174>:
 290:	8caa                	mv	s9,a0

00000292 <.LVL175>:
 292:	b5bd                	j	100 <.L87>
			292: R_RISCV_RVC_JUMP	.L87
