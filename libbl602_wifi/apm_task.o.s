
libbl602_wifi/apm_task.o:     file format elf32-littleriscv


Disassembly of section .text.apm_sta_connect_timeout_ind_handler:

00000000 <apm_sta_connect_timeout_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	000004b7          	lui	s1,0x0
			e: R_RISCV_HI20	sta_info_tab
			e: R_RISCV_RELAX	*ABS*
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	xTaskGetTickCount
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <apm_sta_connect_timeout_ind_handler+0x12>

0000001a <.LVL1>:
  1a:	691d                	lui	s2,0x7
  1c:	8a2a                	mv	s4,a0

0000001e <.LVL2>:
  1e:	00048493          	mv	s1,s1
			1e: R_RISCV_LO12_I	sta_info_tab
			1e: R_RISCV_RELAX	*ABS*
  22:	4401                	li	s0,0
  24:	53090913          	addi	s2,s2,1328 # 7530 <.LASF414+0x1b38>
  28:	49b1                	li	s3,12

0000002a <.L3>:
  2a:	1a84a783          	lw	a5,424(s1) # 1a8 <.LASF280+0x7>
  2e:	cb91                	beqz	a5,42 <.L2>
			2e: R_RISCV_RVC_BRANCH	.L2
  30:	40fa07b3          	sub	a5,s4,a5
  34:	00f95763          	bge	s2,a5,42 <.L2>
			34: R_RISCV_BRANCH	.L2
  38:	8522                	mv	a0,s0
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	apm_sta_fw_delete
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.L3+0x10>

00000042 <.L2>:
  42:	0405                	addi	s0,s0,1

00000044 <.LVL5>:
  44:	0ff47413          	andi	s0,s0,255

00000048 <.LVL6>:
  48:	1b048493          	addi	s1,s1,432
  4c:	fd341fe3          	bne	s0,s3,2a <.L3>
			4c: R_RISCV_BRANCH	.L3
  50:	004c5637          	lui	a2,0x4c5
  54:	6509                	lui	a0,0x2
  56:	c0a50513          	addi	a0,a0,-1014 # 1c0a <.LASF1097+0x1a>
  5a:	b4060613          	addi	a2,a2,-1216 # 4c4b40 <.LASF414+0x4bf148>
  5e:	459d                	li	a1,7
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ke_timer_set
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL6+0x18>

00000068 <.LVL7>:
  68:	40f2                	lw	ra,28(sp)
  6a:	4462                	lw	s0,24(sp)

0000006c <.LVL8>:
  6c:	44d2                	lw	s1,20(sp)
  6e:	4942                	lw	s2,16(sp)
  70:	49b2                	lw	s3,12(sp)
  72:	4a22                	lw	s4,8(sp)

00000074 <.LVL9>:
  74:	4501                	li	a0,0
  76:	6105                	addi	sp,sp,32
  78:	8082                	ret

Disassembly of section .text.rxu_mgt_ind_handler:

00000000 <rxu_mgt_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0025d783          	lhu	a5,2(a1)
   8:	04000713          	li	a4,64
   c:	852e                	mv	a0,a1

0000000e <.LVL11>:
   e:	0fc7f793          	andi	a5,a5,252

00000012 <.LVL12>:
  12:	00e79a63          	bne	a5,a4,26 <.L10>
			12: R_RISCV_BRANCH	.L10
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	apm_probe_req_handler
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL12+0x4>

0000001e <.L11>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

00000026 <.L10>:
  26:	0b000713          	li	a4,176
  2a:	00e79763          	bne	a5,a4,38 <.L12>
			2a: R_RISCV_BRANCH	.L12
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	apm_auth_handler
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.L10+0x8>

00000036 <.LVL15>:
  36:	b7e5                	j	1e <.L11>
			36: R_RISCV_RVC_JUMP	.L11

00000038 <.L12>:
  38:	4581                	li	a1,0
  3a:	c791                	beqz	a5,46 <.L18>
			3a: R_RISCV_RVC_BRANCH	.L18
  3c:	02000713          	li	a4,32
  40:	00e79863          	bne	a5,a4,50 <.L14>
			40: R_RISCV_BRANCH	.L14
  44:	4585                	li	a1,1

00000046 <.L18>:
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	apm_assoc_req_handler
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L18>

0000004e <.LVL17>:
  4e:	bfc1                	j	1e <.L11>
			4e: R_RISCV_RVC_JUMP	.L11

00000050 <.L14>:
  50:	0c000713          	li	a4,192
  54:	00e79763          	bne	a5,a4,62 <.L15>
			54: R_RISCV_BRANCH	.L15
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	apm_deauth_handler
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.L14+0x8>

00000060 <.LVL19>:
  60:	bf7d                	j	1e <.L11>
			60: R_RISCV_RVC_JUMP	.L11

00000062 <.L15>:
  62:	0a000713          	li	a4,160
  66:	00e79763          	bne	a5,a4,74 <.L16>
			66: R_RISCV_BRANCH	.L16
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	apm_disassoc_handler
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.L15+0x8>

00000072 <.LVL21>:
  72:	b775                	j	1e <.L11>
			72: R_RISCV_RVC_JUMP	.L11

00000074 <.L16>:
  74:	08000713          	li	a4,128
  78:	fae793e3          	bne	a5,a4,1e <.L11>
			78: R_RISCV_BRANCH	.L11
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	apm_beacon_handler
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L16+0x8>

00000084 <.LVL23>:
  84:	bf69                	j	1e <.L11>
			84: R_RISCV_RVC_JUMP	.L11

Disassembly of section .text.apm_sta_add_cfm_handler:

00000000 <apm_sta_add_cfm_handler>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	uap_conn_info
			0: R_RISCV_RELAX	*ABS*
   4:	0007a703          	lw	a4,0(a5) # 0 <apm_sta_add_cfm_handler>
			4: R_RISCV_LO12_I	uap_conn_info
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	0005c503          	lbu	a0,0(a1)

00000010 <.LVL25>:
  10:	cf11                	beqz	a4,2c <.L20>
			10: R_RISCV_RVC_BRANCH	.L20
  12:	00a700a3          	sb	a0,1(a4)
  16:	0007a503          	lw	a0,0(a5)
			16: R_RISCV_LO12_I	uap_conn_info
			16: R_RISCV_RELAX	*ABS*
  1a:	4581                	li	a1,0

0000001c <.LVL26>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	SendEAPOLMsgUsingBufDesc
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL26>

00000024 <.L21>:
  24:	40b2                	lw	ra,12(sp)
  26:	4501                	li	a0,0
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

0000002c <.L20>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	apm_sta_add
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.L20>

00000034 <.LVL29>:
  34:	bfc5                	j	24 <.L21>
			34: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.apm_sta_del_req_handler:

00000000 <apm_sta_del_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	6509                	lui	a0,0x2

00000004 <.LVL31>:
   4:	c226                	sw	s1,4(sp)
   6:	c0c50513          	addi	a0,a0,-1012 # 1c0c <.LASF65>
   a:	84ae                	mv	s1,a1
   c:	85b6                	mv	a1,a3

0000000e <.LVL32>:
   e:	468d                	li	a3,3

00000010 <.LVL33>:
  10:	c422                	sw	s0,8(sp)
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_msg_alloc
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL33+0x4>

0000001c <.LVL34>:
  1c:	842a                	mv	s0,a0

0000001e <.LBB31>:
  1e:	0004c503          	lbu	a0,0(s1)
  22:	5d800713          	li	a4,1496
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	vif_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	02e50733          	mul	a4,a0,a4
  2e:	00078793          	mv	a5,a5
			2e: R_RISCV_LO12_I	vif_info_tab
			2e: R_RISCV_RELAX	*ABS*
  32:	97ba                	add	a5,a5,a4
  34:	0567c703          	lbu	a4,86(a5) # 56 <.L27+0x2>
  38:	4789                	li	a5,2
  3a:	02f71863          	bne	a4,a5,6a <.L24>
			3a: R_RISCV_BRANCH	.L24
  3e:	0014c583          	lbu	a1,1(s1)
  42:	47b1                	li	a5,12
  44:	02b7e363          	bltu	a5,a1,6a <.L24>
			44: R_RISCV_BRANCH	.L24
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	apm_sta_remove
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LBB31+0x2a>

00000050 <.LVL37>:
  50:	00040023          	sb	zero,0(s0)

00000054 <.L27>:
  54:	8522                	mv	a0,s0
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ke_msg_send
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.L27+0x2>

0000005e <.LVL38>:
  5e:	40b2                	lw	ra,12(sp)
  60:	4422                	lw	s0,8(sp)

00000062 <.LVL39>:
  62:	4492                	lw	s1,4(sp)

00000064 <.LVL40>:
  64:	4501                	li	a0,0
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

0000006a <.L24>:
  6a:	57fd                	li	a5,-1
  6c:	00f40023          	sb	a5,0(s0)
  70:	b7d5                	j	54 <.L27>
			70: R_RISCV_RVC_JUMP	.L27

Disassembly of section .text.apm_stop_cac_req_handler:

00000000 <apm_stop_cac_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)

00000008 <.LBB37>:
   8:	0005c703          	lbu	a4,0(a1)

0000000c <.LBE37>:
   c:	84b6                	mv	s1,a3

0000000e <.LBB38>:
   e:	5d800693          	li	a3,1496

00000012 <.LVL45>:
  12:	02d70733          	mul	a4,a4,a3
  16:	000007b7          	lui	a5,0x0
			16: R_RISCV_HI20	vif_info_tab
			16: R_RISCV_RELAX	*ABS*
  1a:	00078793          	mv	a5,a5
			1a: R_RISCV_LO12_I	vif_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	97ba                	add	a5,a5,a4
  20:	0567c683          	lbu	a3,86(a5) # 56 <.LBE33+0x4>
  24:	4709                	li	a4,2
  26:	04e69063          	bne	a3,a4,66 <.L30>
			26: R_RISCV_BRANCH	.L30
  2a:	0587c783          	lbu	a5,88(a5)
  2e:	ef85                	bnez	a5,66 <.L30>
			2e: R_RISCV_RVC_BRANCH	.L30
  30:	451d                	li	a0,7

00000032 <.LVL47>:
  32:	c632                	sw	a2,12(sp)
  34:	842e                	mv	s0,a1
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	ke_state_get
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL47+0x4>

0000003e <.LVL48>:
  3e:	4632                	lw	a2,12(sp)
  40:	e11d                	bnez	a0,66 <.L30>
			40: R_RISCV_RVC_BRANCH	.L30
  42:	00044503          	lbu	a0,0(s0)
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	chan_ctxt_unlink
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL48+0x8>

0000004e <.LBB33>:
  4e:	30047073          	csrci	mstatus,8

00000052 <.LBE33>:
  52:	000007b7          	lui	a5,0x0
			52: R_RISCV_HI20	ps_env
			52: R_RISCV_RELAX	*ABS*
  56:	00078793          	mv	a5,a5
			56: R_RISCV_LO12_I	ps_env
			56: R_RISCV_RELAX	*ABS*
  5a:	43d8                	lw	a4,4(a5)
  5c:	9b3d                	andi	a4,a4,-17
  5e:	c3d8                	sw	a4,4(a5)

00000060 <.LBB35>:
  60:	30046073          	csrsi	mstatus,8
  64:	4632                	lw	a2,12(sp)

00000066 <.L30>:
  66:	6509                	lui	a0,0x2
  68:	85a6                	mv	a1,s1
  6a:	c0750513          	addi	a0,a0,-1017 # 1c07 <.LASF1097+0x17>
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_send_basic
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L30+0x8>

00000076 <.LVL51>:
  76:	40f2                	lw	ra,28(sp)
  78:	4462                	lw	s0,24(sp)
  7a:	44d2                	lw	s1,20(sp)
  7c:	4501                	li	a0,0
  7e:	6105                	addi	sp,sp,32
  80:	8082                	ret

Disassembly of section .text.apm_conf_max_sta_req_handler:

00000000 <apm_conf_max_sta_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0005c703          	lbu	a4,0(a1)
   8:	45b1                	li	a1,12

0000000a <.LVL53>:
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	apm_env
			a: R_RISCV_RELAX	*ABS*
   e:	00e5f363          	bgeu	a1,a4,14 <.L34>
			e: R_RISCV_BRANCH	.L34
  12:	4731                	li	a4,12

00000014 <.L34>:
  14:	6509                	lui	a0,0x2

00000016 <.LVL54>:
  16:	00078793          	mv	a5,a5
			16: R_RISCV_LO12_I	apm_env
			16: R_RISCV_RELAX	*ABS*
  1a:	c0e50513          	addi	a0,a0,-1010 # 1c0e <.LASF65+0x2>
  1e:	85b6                	mv	a1,a3
  20:	00e78ba3          	sb	a4,23(a5) # 17 <.LVL54+0x1>
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ke_msg_send_basic
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL54+0xe>

0000002c <.LVL55>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4501                	li	a0,0
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.apm_start_cac_req_handler:

00000000 <apm_start_cac_req_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)

0000000c <.LBB39>:
   c:	0115c703          	lbu	a4,17(a1)

00000010 <.LBE39>:
  10:	8936                	mv	s2,a3

00000012 <.LBB44>:
  12:	5d800693          	li	a3,1496

00000016 <.LVL57>:
  16:	02d70733          	mul	a4,a4,a3
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	vif_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	00078793          	mv	a5,a5
			1e: R_RISCV_LO12_I	vif_info_tab
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LBE44>:
  22:	000101a3          	sb	zero,3(sp)

00000026 <.LBB45>:
  26:	89b2                	mv	s3,a2

00000028 <.LBB46>:
  28:	4491                	li	s1,4
  2a:	97ba                	add	a5,a5,a4
  2c:	0567c683          	lbu	a3,86(a5) # 56 <.LVL61+0x4>
  30:	4709                	li	a4,2
  32:	00e69663          	bne	a3,a4,3e <.L40>
			32: R_RISCV_BRANCH	.L40
  36:	0587c783          	lbu	a5,88(a5)
  3a:	cf95                	beqz	a5,76 <.L38>
			3a: R_RISCV_RVC_BRANCH	.L38

0000003c <.L39>:
  3c:	44a1                	li	s1,8

0000003e <.L40>:
  3e:	6509                	lui	a0,0x2
  40:	864e                	mv	a2,s3
  42:	85ca                	mv	a1,s2
  44:	4689                	li	a3,2
  46:	c0550513          	addi	a0,a0,-1019 # 1c05 <.LASF1097+0x15>
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ke_msg_alloc
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.L40+0xc>

00000052 <.LVL61>:
  52:	00950023          	sb	s1,0(a0)
  56:	00314703          	lbu	a4,3(sp)
  5a:	00e500a3          	sb	a4,1(a0)
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	ke_msg_send
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL61+0xc>

00000066 <.LVL62>:
  66:	50b2                	lw	ra,44(sp)
  68:	5422                	lw	s0,40(sp)
  6a:	5492                	lw	s1,36(sp)

0000006c <.LVL63>:
  6c:	5902                	lw	s2,32(sp)
  6e:	49f2                	lw	s3,28(sp)
  70:	4501                	li	a0,0
  72:	6145                	addi	sp,sp,48
  74:	8082                	ret

00000076 <.L38>:
  76:	451d                	li	a0,7

00000078 <.LVL65>:
  78:	842e                	mv	s0,a1
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	ke_state_get
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL65+0x2>

00000082 <.LVL66>:
  82:	fd4d                	bnez	a0,3c <.L39>
			82: R_RISCV_RVC_BRANCH	.L39
  84:	00244783          	lbu	a5,2(s0)
  88:	00310593          	addi	a1,sp,3
  8c:	0048                	addi	a0,sp,4
  8e:	00f10223          	sb	a5,4(sp)
  92:	01044783          	lbu	a5,16(s0)
  96:	00f102a3          	sb	a5,5(sp)
  9a:	00045783          	lhu	a5,0(s0)
  9e:	00f11323          	sh	a5,6(sp)
  a2:	441c                	lw	a5,8(s0)
  a4:	00f11423          	sh	a5,8(sp)
  a8:	445c                	lw	a5,12(s0)
  aa:	00f11523          	sh	a5,10(sp)
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	chan_ctxt_add
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL66+0x2c>

000000b6 <.LVL67>:
  b6:	84aa                	mv	s1,a0
  b8:	e515                	bnez	a0,e4 <.L42>
			b8: R_RISCV_RVC_BRANCH	.L42
  ba:	00314583          	lbu	a1,3(sp)
  be:	01144503          	lbu	a0,17(s0)
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	chan_ctxt_link
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL67+0xc>

000000ca <.LBB40>:
  ca:	30047073          	csrci	mstatus,8

000000ce <.LBE40>:
  ce:	000007b7          	lui	a5,0x0
			ce: R_RISCV_HI20	ps_env
			ce: R_RISCV_RELAX	*ABS*
  d2:	00078793          	mv	a5,a5
			d2: R_RISCV_LO12_I	ps_env
			d2: R_RISCV_RELAX	*ABS*
  d6:	43d8                	lw	a4,4(a5)
  d8:	01076713          	ori	a4,a4,16
  dc:	c3d8                	sw	a4,4(a5)

000000de <.LBB42>:
  de:	30046073          	csrsi	mstatus,8

000000e2 <.LBE42>:
  e2:	bfb1                	j	3e <.L40>
			e2: R_RISCV_RVC_JUMP	.L40

000000e4 <.L42>:
  e4:	4485                	li	s1,1

000000e6 <.LVL69>:
  e6:	bfa1                	j	3e <.L40>
			e6: R_RISCV_RVC_JUMP	.L40

Disassembly of section .text.me_set_ps_disable_cfm_handler:

00000000 <me_set_ps_disable_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	451d                	li	a0,7

00000004 <.LVL71>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL71+0x2>

0000000e <.LVL72>:
   e:	4785                	li	a5,1
  10:	02f50663          	beq	a0,a5,3c <.L46>
			10: R_RISCV_BRANCH	.L46
  14:	451d                	li	a0,7
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL72+0x8>

0000001e <.LVL73>:
  1e:	cd19                	beqz	a0,3c <.L46>
			1e: R_RISCV_RVC_BRANCH	.L46
  20:	000005b7          	lui	a1,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC1
			24: R_RISCV_RELAX	*ABS*
  28:	0ee00613          	li	a2,238
  2c:	00058593          	mv	a1,a1
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC1
			30: R_RISCV_RELAX	*ABS*
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	assert_err
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL73+0x16>

0000003c <.L46>:
  3c:	451d                	li	a0,7
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_state_get
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L46+0x2>

00000046 <.LVL75>:
  46:	4785                	li	a5,1
  48:	00f51663          	bne	a0,a5,54 <.L48>
			48: R_RISCV_BRANCH	.L48
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	apm_send_next_bss_param
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL75+0x6>

00000054 <.L48>:
  54:	40b2                	lw	ra,12(sp)
  56:	4501                	li	a0,0
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

Disassembly of section .text.mm_bss_param_setting_handler:

00000000 <mm_bss_param_setting_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	451d                	li	a0,7

00000004 <.LVL78>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL78+0x2>

0000000e <.LVL79>:
   e:	4785                	li	a5,1
  10:	02f50063          	beq	a0,a5,30 <.L54>
			10: R_RISCV_BRANCH	.L54
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC2
			18: R_RISCV_RELAX	*ABS*
  1c:	11000613          	li	a2,272
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC2
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL79+0x1a>

00000030 <.L54>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	apm_send_next_bss_param
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L54>

00000038 <.LVL81>:
  38:	40b2                	lw	ra,12(sp)
  3a:	4501                	li	a0,0
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.mm_bcn_change_cfm_handler:

00000000 <mm_bcn_change_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	451d                	li	a0,7

00000004 <.LVL83>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL83+0x2>

0000000e <.LVL84>:
   e:	4789                	li	a5,2
  10:	02f50063          	beq	a0,a5,30 <.L57>
			10: R_RISCV_BRANCH	.L57
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC3
			18: R_RISCV_RELAX	*ABS*
  1c:	15600613          	li	a2,342
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC3
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL84+0x1a>

00000030 <.L57>:
  30:	4501                	li	a0,0
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	apm_start_cfm
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.L57+0x2>

0000003a <.LVL86>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4501                	li	a0,0
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

Disassembly of section .text.apm_stop_req_handler:

00000000 <apm_stop_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)

0000000c <.LBB49>:
   c:	0005c403          	lbu	s0,0(a1) # 0 <apm_stop_req_handler>
  10:	5d800713          	li	a4,1496
  14:	00000537          	lui	a0,0x0
			14: R_RISCV_HI20	vif_info_tab
			14: R_RISCV_RELAX	*ABS*

00000018 <.LVL89>:
  18:	02e40733          	mul	a4,s0,a4
  1c:	00050793          	mv	a5,a0
			1c: R_RISCV_LO12_I	vif_info_tab
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LBE49>:
  20:	8936                	mv	s2,a3
  22:	89b2                	mv	s3,a2

00000024 <.LBB50>:
  24:	97ba                	add	a5,a5,a4
  26:	0567c683          	lbu	a3,86(a5) # 56 <.LVL91+0x12>

0000002a <.LVL90>:
  2a:	4709                	li	a4,2
  2c:	06e69163          	bne	a3,a4,8e <.L63>
			2c: R_RISCV_BRANCH	.L63
  30:	0587c783          	lbu	a5,88(a5)
  34:	cfa9                	beqz	a5,8e <.L63>
			34: R_RISCV_RVC_BRANCH	.L63
  36:	00050493          	mv	s1,a0
			36: R_RISCV_LO12_I	vif_info_tab
			36: R_RISCV_RELAX	*ABS*
  3a:	451d                	li	a0,7
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ke_state_get
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL90+0x12>

00000044 <.LVL91>:
  44:	4789                	li	a5,2
  46:	ed31                	bnez	a0,a2 <.L59>
			46: R_RISCV_RVC_BRANCH	.L59
  48:	000007b7          	lui	a5,0x0
			48: R_RISCV_HI20	apm_env
			48: R_RISCV_RELAX	*ABS*
  4c:	00078793          	mv	a5,a5
			4c: R_RISCV_LO12_I	apm_env
			4c: R_RISCV_RELAX	*ABS*
  50:	0147c703          	lbu	a4,20(a5) # 14 <.LBB49+0x8>
  54:	c319                	beqz	a4,5a <.L62>
			54: R_RISCV_RVC_BRANCH	.L62
  56:	00078a23          	sb	zero,20(a5)

0000005a <.L62>:
  5a:	5d800513          	li	a0,1496
  5e:	02a40533          	mul	a0,s0,a0
  62:	00000437          	lui	s0,0x0
			62: R_RISCV_HI20	uap_conn_info
			62: R_RISCV_RELAX	*ABS*
  66:	9526                	add	a0,a0,s1
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	apm_stop
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L62+0xe>

00000070 <.LVL93>:
  70:	00042503          	lw	a0,0(s0) # 0 <apm_stop_req_handler>
			70: R_RISCV_LO12_I	uap_conn_info
			70: R_RISCV_RELAX	*ABS*
  74:	cd09                	beqz	a0,8e <.L63>
			74: R_RISCV_RVC_BRANCH	.L63
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	RemoveAPKeyInfo
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL93+0x6>

0000007e <.LVL94>:
  7e:	00042503          	lw	a0,0(s0)
			7e: R_RISCV_LO12_I	uap_conn_info
			7e: R_RISCV_RELAX	*ABS*
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	cm_DeleteConnection
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL94+0x4>

0000008a <.LVL95>:
  8a:	00042023          	sw	zero,0(s0)
			8a: R_RISCV_LO12_S	uap_conn_info
			8a: R_RISCV_RELAX	*ABS*

0000008e <.L63>:
  8e:	6509                	lui	a0,0x2
  90:	864e                	mv	a2,s3
  92:	85ca                	mv	a1,s2
  94:	c0350513          	addi	a0,a0,-1021 # 1c03 <.LASF1097+0x13>
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	ke_msg_send_basic
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.L63+0xa>

000000a0 <.LVL96>:
  a0:	4781                	li	a5,0

000000a2 <.L59>:
  a2:	40f2                	lw	ra,28(sp)
  a4:	4462                	lw	s0,24(sp)
  a6:	44d2                	lw	s1,20(sp)
  a8:	4942                	lw	s2,16(sp)
  aa:	49b2                	lw	s3,12(sp)
  ac:	853e                	mv	a0,a5
  ae:	6105                	addi	sp,sp,32
  b0:	8082                	ret

Disassembly of section .text.apm_start_req_handler:

00000000 <apm_start_req_handler>:
   0:	7139                	addi	sp,sp,-64
   2:	ce5e                	sw	s7,28(sp)
   4:	00000537          	lui	a0,0x0
			4: R_RISCV_HI20	.LC4
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL98>:
   8:	00000bb7          	lui	s7,0x0
			8: R_RISCV_HI20	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	dc22                	sw	s0,56(sp)
   e:	cc62                	sw	s8,24(sp)
  10:	842e                	mv	s0,a1
  12:	8c32                	mv	s8,a2
  14:	000b8593          	mv	a1,s7
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*

00000018 <.LVL99>:
  18:	04c00613          	li	a2,76

0000001c <.LVL100>:
  1c:	00050513          	mv	a0,a0
			1c: R_RISCV_LO12_I	.LC4
			1c: R_RISCV_RELAX	*ABS*
  20:	da26                	sw	s1,52(sp)
  22:	d84a                	sw	s2,48(sp)
  24:	d64e                	sw	s3,44(sp)
  26:	d452                	sw	s4,40(sp)
  28:	d256                	sw	s5,36(sp)
  2a:	de06                	sw	ra,60(sp)
  2c:	d05a                	sw	s6,32(sp)
  2e:	ca66                	sw	s9,20(sp)
  30:	8ab6                	mv	s5,a3
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	printf
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL100+0x16>

0000003a <.LBB51>:
  3a:	03344983          	lbu	s3,51(s0)
  3e:	5d800793          	li	a5,1496
  42:	00000937          	lui	s2,0x0
			42: R_RISCV_HI20	vif_info_tab
			42: R_RISCV_RELAX	*ABS*
  46:	02f987b3          	mul	a5,s3,a5
  4a:	00090493          	mv	s1,s2
			4a: R_RISCV_LO12_I	vif_info_tab
			4a: R_RISCV_RELAX	*ABS*
  4e:	4a11                	li	s4,4
  50:	94be                	add	s1,s1,a5
  52:	0564c703          	lbu	a4,86(s1)
  56:	4789                	li	a5,2
  58:	30f71d63          	bne	a4,a5,372 <.L76>
			58: R_RISCV_BRANCH	.L76
  5c:	451d                	li	a0,7
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	ke_state_get
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBB51+0x24>

00000066 <.LVL103>:
  66:	30051563          	bnez	a0,370 <.L87>
			66: R_RISCV_BRANCH	.L87
  6a:	0584c783          	lbu	a5,88(s1)
  6e:	34079463          	bnez	a5,3b6 <.L88>
			6e: R_RISCV_BRANCH	.L88
  72:	40bc                	lw	a5,64(s1)
  74:	00090913          	mv	s2,s2
			74: R_RISCV_LO12_I	vif_info_tab
			74: R_RISCV_RELAX	*ABS*
  78:	cf99                	beqz	a5,96 <.L77>
			78: R_RISCV_RVC_BRANCH	.L77
  7a:	000005b7          	lui	a1,0x0
			7a: R_RISCV_HI20	.LC0
			7a: R_RISCV_RELAX	*ABS*
  7e:	00000537          	lui	a0,0x0
			7e: R_RISCV_HI20	.LC5
			7e: R_RISCV_RELAX	*ABS*
  82:	06700613          	li	a2,103
  86:	00058593          	mv	a1,a1
			86: R_RISCV_LO12_I	.LC0
			86: R_RISCV_RELAX	*ABS*
  8a:	00050513          	mv	a0,a0
			8a: R_RISCV_LO12_I	.LC5
			8a: R_RISCV_RELAX	*ABS*
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	assert_err
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL103+0x28>

00000096 <.L77>:
  96:	01c44703          	lbu	a4,28(s0)
  9a:	4c14                	lw	a3,24(s0)
  9c:	4850                	lw	a2,20(s0)
  9e:	00000b37          	lui	s6,0x0
			9e: R_RISCV_HI20	apm_env
			9e: R_RISCV_RELAX	*ABS*
  a2:	00e40593          	addi	a1,s0,14
  a6:	00d10513          	addi	a0,sp,13
  aa:	008b2023          	sw	s0,0(s6) # 0 <apm_start_req_handler>
			aa: R_RISCV_LO12_S	apm_env
			aa: R_RISCV_RELAX	*ABS*
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	me_add_chan_ctx
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L77+0x18>

000000b6 <.LVL105>:
  b6:	000b0b13          	mv	s6,s6
			b6: R_RISCV_LO12_I	apm_env
			b6: R_RISCV_RELAX	*ABS*
  ba:	4a05                	li	s4,1
  bc:	2a051b63          	bnez	a0,372 <.L76>
			bc: R_RISCV_BRANCH	.L76

000000c0 <.LBB52>:
  c0:	00e45583          	lhu	a1,14(s0)
  c4:	01044503          	lbu	a0,16(s0)
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	me_freq_to_chan_ptr
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.LBB52+0x8>

000000d0 <.LVL107>:
  d0:	5d800793          	li	a5,1496
  d4:	02f987b3          	mul	a5,s3,a5
  d8:	97ca                	add	a5,a5,s2
  da:	3aa7a223          	sw	a0,932(a5)
  de:	01240703          	lb	a4,18(s0)
  e2:	00e50223          	sb	a4,4(a0) # 4 <apm_start_req_handler+0x4>
  e6:	4858                	lw	a4,20(s0)
  e8:	3ae79423          	sh	a4,936(a5)
  ec:	4c18                	lw	a4,24(s0)
  ee:	3ae79523          	sh	a4,938(a5)
  f2:	01c44783          	lbu	a5,28(s0)

000000f6 <.LBB53>:
  f6:	4711                	li	a4,4
  f8:	00e79363          	bne	a5,a4,fe <.L78>
			f8: R_RISCV_BRANCH	.L78
  fc:	478d                	li	a5,3

000000fe <.L78>:
  fe:	5d800a13          	li	s4,1496
 102:	03498a33          	mul	s4,s3,s4

00000106 <.LBE53>:
 106:	00d14583          	lbu	a1,13(sp)

0000010a <.LBE52>:
 10a:	01490ab3          	add	s5,s2,s4

0000010e <.LBB67>:
 10e:	3cfa8d23          	sb	a5,986(s5)
 112:	01c44783          	lbu	a5,28(s0)
 116:	3c0a8e23          	sb	zero,988(s5)
 11a:	3cfa8da3          	sb	a5,987(s5)
 11e:	03344503          	lbu	a0,51(s0)
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	chan_ctxt_link
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.LBB67+0x14>

0000012a <.LVL111>:
 12a:	03444783          	lbu	a5,52(s0)
 12e:	8556                	mv	a0,s5
 130:	00fb0a23          	sb	a5,20(s6)
 134:	01d44783          	lbu	a5,29(s0)
 138:	00fb0aa3          	sb	a5,21(s6)
 13c:	00000097          	auipc	ra,0x0
			13c: R_RISCV_CALL	apm_embedded_enabled
			13c: R_RISCV_RELAX	*ABS*
 140:	000080e7          	jalr	ra # 13c <.LVL111+0x12>

00000144 <.LVL112>:
 144:	18050163          	beqz	a0,2c6 <.L79>
			144: R_RISCV_BRANCH	.L79
 148:	03540c93          	addi	s9,s0,53
 14c:	85a2                	mv	a1,s0
 14e:	8566                	mv	a0,s9
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	me_get_basic_rates
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.LVL112+0xc>

00000158 <.LVL113>:
 158:	04344783          	lbu	a5,67(s0)
 15c:	c799                	beqz	a5,16a <.L80>
			15c: R_RISCV_RVC_BRANCH	.L80
 15e:	3e0aa783          	lw	a5,992(s5)
 162:	0017e793          	ori	a5,a5,1
 166:	3efaa023          	sw	a5,992(s5)

0000016a <.L80>:
 16a:	000007b7          	lui	a5,0x0
			16a: R_RISCV_HI20	me_env+0x2e
			16a: R_RISCV_RELAX	*ABS*+0x2e
 16e:	02e7c783          	lbu	a5,46(a5) # 2e <.LVL100+0x12>
			16e: R_RISCV_LO12_I	me_env+0x2e
			16e: R_RISCV_RELAX	*ABS*+0x2e
 172:	cf81                	beqz	a5,18a <.L81>
			172: R_RISCV_RVC_BRANCH	.L81
 174:	5d800793          	li	a5,1496
 178:	02f987b3          	mul	a5,s3,a5
 17c:	97ca                	add	a5,a5,s2
 17e:	3e07a703          	lw	a4,992(a5)
 182:	00276713          	ori	a4,a4,2
 186:	3ee7a023          	sw	a4,992(a5)

0000018a <.L81>:
 18a:	5d800c13          	li	s8,1496
 18e:	03898c33          	mul	s8,s3,s8
 192:	02845783          	lhu	a5,40(s0)
 196:	02200613          	li	a2,34
 19a:	04440593          	addi	a1,s0,68
 19e:	018904b3          	add	s1,s2,s8
 1a2:	40f49923          	sh	a5,1042(s1)
 1a6:	04244783          	lbu	a5,66(s0)
 1aa:	37e48513          	addi	a0,s1,894
 1ae:	3af49623          	sh	a5,940(s1)
 1b2:	06644783          	lbu	a5,102(s0)
 1b6:	40f48c23          	sb	a5,1048(s1)
 1ba:	00000097          	auipc	ra,0x0
			1ba: R_RISCV_CALL	memcpy
			1ba: R_RISCV_RELAX	*ABS*
 1be:	000080e7          	jalr	ra # 1ba <.L81+0x30>

000001c2 <.LVL114>:
 1c2:	37e4c783          	lbu	a5,894(s1)
 1c6:	4635                	li	a2,13
 1c8:	85e6                	mv	a1,s9
 1ca:	97a6                	add	a5,a5,s1
 1cc:	36078fa3          	sb	zero,895(a5)
 1d0:	48bc                	lw	a5,80(s1)
 1d2:	3b048513          	addi	a0,s1,944
 1d6:	36f4ac23          	sw	a5,888(s1)
 1da:	0544d783          	lhu	a5,84(s1)
 1de:	36f49e23          	sh	a5,892(s1)
 1e2:	00000097          	auipc	ra,0x0
			1e2: R_RISCV_CALL	memcpy
			1e2: R_RISCV_RELAX	*ABS*
 1e6:	000080e7          	jalr	ra # 1e2 <.LVL114+0x20>

000001ea <.LBB55>:
 1ea:	44b007b7          	lui	a5,0x44b00
 1ee:	2007a703          	lw	a4,512(a5) # 44b00200 <.LASF414+0x44afa808>

000001f2 <.LBE55>:
 1f2:	14d00513          	li	a0,333
 1f6:	c498                	sw	a4,8(s1)

000001f8 <.LBB57>:
 1f8:	2047a703          	lw	a4,516(a5)

000001fc <.LBE57>:
 1fc:	c4d8                	sw	a4,12(s1)

000001fe <.LBB59>:
 1fe:	2087a703          	lw	a4,520(a5)

00000202 <.LBE59>:
 202:	c898                	sw	a4,16(s1)

00000204 <.LBB61>:
 204:	20c7a783          	lw	a5,524(a5)

00000208 <.LBE61>:
 208:	3c048023          	sb	zero,960(s1)
 20c:	c8dc                	sw	a5,20(s1)
 20e:	000007b7          	lui	a5,0x0
			20e: R_RISCV_HI20	vif_info_tab+0x400
			20e: R_RISCV_RELAX	*ABS*+0x400
 212:	40078793          	addi	a5,a5,1024 # 400 <.LASF512+0xc>
			212: R_RISCV_LO12_I	vif_info_tab+0x400
			212: R_RISCV_RELAX	*ABS*+0x400
 216:	9c3e                	add	s8,s8,a5
 218:	77c1                	lui	a5,0xffff0
 21a:	00fc2a23          	sw	a5,20(s8)
 21e:	00000097          	auipc	ra,0x0
			21e: R_RISCV_CALL	ke_malloc
			21e: R_RISCV_RELAX	*ABS*
 222:	000080e7          	jalr	ra # 21e <.LBE61+0x16>

00000226 <.LVL116>:
 226:	0574c583          	lbu	a1,87(s1)
 22a:	015b4703          	lbu	a4,21(s6)
 22e:	03240693          	addi	a3,s0,50
 232:	02640613          	addi	a2,s0,38
 236:	00ab2823          	sw	a0,16(s6)
 23a:	00000097          	auipc	ra,0x0
			23a: R_RISCV_CALL	me_build_beacon
			23a: R_RISCV_RELAX	*ABS*
 23e:	000080e7          	jalr	ra # 23a <.LVL116+0x14>

00000242 <.LVL117>:
 242:	06644783          	lbu	a5,102(s0)
 246:	02a41223          	sh	a0,36(s0)
 24a:	000004b7          	lui	s1,0x0
			24a: R_RISCV_HI20	uap_conn_info
			24a: R_RISCV_RELAX	*ABS*
 24e:	10078563          	beqz	a5,358 <.L82>
			24e: R_RISCV_BRANCH	.L82
 252:	378a0693          	addi	a3,s4,888
 256:	4801                	li	a6,0
 258:	4781                	li	a5,0
 25a:	4701                	li	a4,0
 25c:	96ca                	add	a3,a3,s2
 25e:	4601                	li	a2,0
 260:	4581                	li	a1,0
 262:	4509                	li	a0,2
 264:	37fa0b13          	addi	s6,s4,895
 268:	00000097          	auipc	ra,0x0
			268: R_RISCV_CALL	cm_InitConnection
			268: R_RISCV_RELAX	*ABS*
 26c:	000080e7          	jalr	ra # 268 <.LVL117+0x26>

00000270 <.LVL118>:
 270:	9b4a                	add	s6,s6,s2
 272:	06740613          	addi	a2,s0,103
 276:	85da                	mv	a1,s6
 278:	00a4a023          	sw	a0,0(s1) # 0 <apm_start_req_handler>
			278: R_RISCV_LO12_S	uap_conn_info
			278: R_RISCV_RELAX	*ABS*
 27c:	00000097          	auipc	ra,0x0
			27c: R_RISCV_CALL	ap_setpsk
			27c: R_RISCV_RELAX	*ABS*
 280:	000080e7          	jalr	ra # 27c <.LVL118+0xc>

00000284 <.LVL119>:
 284:	0004a503          	lw	a0,0(s1)
			284: R_RISCV_LO12_I	uap_conn_info
			284: R_RISCV_RELAX	*ABS*
 288:	85da                	mv	a1,s6
 28a:	00000097          	auipc	ra,0x0
			28a: R_RISCV_CALL	cm_SetComData
			28a: R_RISCV_RELAX	*ABS*
 28e:	000080e7          	jalr	ra # 28a <.LVL119+0x6>

00000292 <.LVL120>:
 292:	0004a783          	lw	a5,0(s1)
			292: R_RISCV_LO12_I	uap_conn_info
			292: R_RISCV_RELAX	*ABS*
 296:	03344703          	lbu	a4,51(s0)
 29a:	00000537          	lui	a0,0x0
			29a: R_RISCV_HI20	.LC6
			29a: R_RISCV_RELAX	*ABS*
 29e:	000b8593          	mv	a1,s7
			29e: R_RISCV_LO12_I	.LANCHOR0
			29e: R_RISCV_RELAX	*ABS*
 2a2:	00e78123          	sb	a4,2(a5) # ffff0002 <.LASF414+0xfffea60a>
 2a6:	0004a783          	lw	a5,0(s1)
			2a6: R_RISCV_LO12_I	uap_conn_info
			2a6: R_RISCV_RELAX	*ABS*
 2aa:	00050513          	mv	a0,a0
			2aa: R_RISCV_LO12_I	.LC6
			2aa: R_RISCV_RELAX	*ABS*
 2ae:	0027c603          	lbu	a2,2(a5)
 2b2:	00000097          	auipc	ra,0x0
			2b2: R_RISCV_CALL	printf
			2b2: R_RISCV_RELAX	*ABS*
 2b6:	000080e7          	jalr	ra # 2b2 <.LVL120+0x20>

000002ba <.LVL121>:
 2ba:	0004a503          	lw	a0,0(s1)
			2ba: R_RISCV_LO12_I	uap_conn_info
			2ba: R_RISCV_RELAX	*ABS*
 2be:	00000097          	auipc	ra,0x0
			2be: R_RISCV_CALL	InitGroupKey
			2be: R_RISCV_RELAX	*ABS*
 2c2:	000080e7          	jalr	ra # 2be <.LVL121+0x4>

000002c6 <.L79>:
 2c6:	01044783          	lbu	a5,16(s0)
 2ca:	eb8d                	bnez	a5,2fc <.L83>
			2ca: R_RISCV_RVC_BRANCH	.L83

000002cc <.LBB63>:
 2cc:	3b0a0513          	addi	a0,s4,944
 2d0:	4585                	li	a1,1
 2d2:	954a                	add	a0,a0,s2
 2d4:	00000097          	auipc	ra,0x0
			2d4: R_RISCV_CALL	me_legacy_rate_bitfield_build
			2d4: R_RISCV_RELAX	*ABS*
 2d8:	000080e7          	jalr	ra # 2d4 <.LBB63+0x8>

000002dc <.LVL123>:
 2dc:	893d                	andi	a0,a0,15

000002de <.LVL124>:
 2de:	c141                	beqz	a0,35e <.L84>
			2de: R_RISCV_RVC_BRANCH	.L84

000002e0 <.LBB64>:
 2e0:	00000097          	auipc	ra,0x0
			2e0: R_RISCV_CALL	__clzsi2
			2e0: R_RISCV_RELAX	*ABS*
 2e4:	000080e7          	jalr	ra # 2e0 <.LBB64>

000002e8 <.LBE64>:
 2e8:	5d800793          	li	a5,1496
 2ec:	02f987b3          	mul	a5,s3,a5
 2f0:	477d                	li	a4,31
 2f2:	40a70533          	sub	a0,a4,a0
 2f6:	97ca                	add	a5,a5,s2
 2f8:	3ca78ba3          	sb	a0,983(a5)

000002fc <.L83>:
 2fc:	00000097          	auipc	ra,0x0
			2fc: R_RISCV_CALL	apm_set_bss_param
			2fc: R_RISCV_RELAX	*ABS*
 300:	000080e7          	jalr	ra # 2fc <.L83>

00000304 <.LVL127>:
 304:	5d800793          	li	a5,1496
 308:	02f989b3          	mul	s3,s3,a5
 30c:	00f10613          	addi	a2,sp,15
 310:	00e10593          	addi	a1,sp,14
 314:	8556                	mv	a0,s5
 316:	994e                	add	s2,s2,s3
 318:	3a492783          	lw	a5,932(s2) # 3a4 <.LVL137+0x6>
 31c:	0047c783          	lbu	a5,4(a5)
 320:	00f10723          	sb	a5,14(sp)
 324:	00000097          	auipc	ra,0x0
			324: R_RISCV_CALL	tpc_update_vif_tx_power
			324: R_RISCV_RELAX	*ABS*
 328:	000080e7          	jalr	ra # 324 <.LVL127+0x20>

0000032c <.LBE67>:
 32c:	00000537          	lui	a0,0x0
			32c: R_RISCV_HI20	.LC7
			32c: R_RISCV_RELAX	*ABS*
 330:	00050513          	mv	a0,a0
			330: R_RISCV_LO12_I	.LC7
			330: R_RISCV_RELAX	*ABS*
 334:	00000097          	auipc	ra,0x0
			334: R_RISCV_CALL	printf
			334: R_RISCV_RELAX	*ABS*
 338:	000080e7          	jalr	ra # 334 <.LBE67+0x8>

0000033c <.LVL130>:
 33c:	4505                	li	a0,1

0000033e <.L75>:
 33e:	50f2                	lw	ra,60(sp)
 340:	5462                	lw	s0,56(sp)

00000342 <.LVL131>:
 342:	54d2                	lw	s1,52(sp)
 344:	5942                	lw	s2,48(sp)
 346:	59b2                	lw	s3,44(sp)
 348:	5a22                	lw	s4,40(sp)
 34a:	5a92                	lw	s5,36(sp)
 34c:	5b02                	lw	s6,32(sp)
 34e:	4bf2                	lw	s7,28(sp)
 350:	4c62                	lw	s8,24(sp)
 352:	4cd2                	lw	s9,20(sp)
 354:	6121                	addi	sp,sp,64
 356:	8082                	ret

00000358 <.L82>:
 358:	0004a023          	sw	zero,0(s1)
			358: R_RISCV_LO12_S	uap_conn_info
			358: R_RISCV_RELAX	*ABS*
 35c:	b7ad                	j	2c6 <.L79>
			35c: R_RISCV_RVC_JUMP	.L79

0000035e <.L84>:
 35e:	5d800793          	li	a5,1496
 362:	02f987b3          	mul	a5,s3,a5
 366:	4705                	li	a4,1
 368:	97ca                	add	a5,a5,s2
 36a:	3ce78ba3          	sb	a4,983(a5)
 36e:	b779                	j	2fc <.L83>
			36e: R_RISCV_RVC_JUMP	.L83

00000370 <.L87>:
 370:	4a21                	li	s4,8

00000372 <.L76>:
 372:	00000537          	lui	a0,0x0
			372: R_RISCV_HI20	.LC8
			372: R_RISCV_RELAX	*ABS*
 376:	0cc00613          	li	a2,204
 37a:	000b8593          	mv	a1,s7
			37a: R_RISCV_LO12_I	.LANCHOR0
			37a: R_RISCV_RELAX	*ABS*
 37e:	00050513          	mv	a0,a0
			37e: R_RISCV_LO12_I	.LC8
			37e: R_RISCV_RELAX	*ABS*
 382:	00000097          	auipc	ra,0x0
			382: R_RISCV_CALL	printf
			382: R_RISCV_RELAX	*ABS*
 386:	000080e7          	jalr	ra # 382 <.L76+0x10>

0000038a <.LVL136>:
 38a:	6509                	lui	a0,0x2
 38c:	4691                	li	a3,4
 38e:	8662                	mv	a2,s8
 390:	85d6                	mv	a1,s5
 392:	c0150513          	addi	a0,a0,-1023 # 1c01 <.LASF1097+0x11>
 396:	00000097          	auipc	ra,0x0
			396: R_RISCV_CALL	ke_msg_alloc
			396: R_RISCV_RELAX	*ABS*
 39a:	000080e7          	jalr	ra # 396 <.LVL136+0xc>

0000039e <.LVL137>:
 39e:	01450023          	sb	s4,0(a0)
 3a2:	03344703          	lbu	a4,51(s0)
 3a6:	00e500a3          	sb	a4,1(a0)
 3aa:	00000097          	auipc	ra,0x0
			3aa: R_RISCV_CALL	ke_msg_send
			3aa: R_RISCV_RELAX	*ABS*
 3ae:	000080e7          	jalr	ra # 3aa <.LVL137+0xc>

000003b2 <.LVL138>:
 3b2:	4501                	li	a0,0
 3b4:	b769                	j	33e <.L75>
			3b4: R_RISCV_RVC_JUMP	.L75

000003b6 <.L88>:
 3b6:	4a25                	li	s4,9
 3b8:	bf6d                	j	372 <.L76>
			3b8: R_RISCV_RVC_JUMP	.L76

Disassembly of section .text.me_set_active_cfm_handler:

00000000 <me_set_active_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	451d                	li	a0,7

00000004 <.LVL141>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL141+0x2>

0000000e <.LVL142>:
   e:	4785                	li	a5,1
  10:	02f50663          	beq	a0,a5,3c <.L105>
			10: R_RISCV_BRANCH	.L105
  14:	451d                	li	a0,7
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL142+0x8>

0000001e <.LVL143>:
  1e:	cd19                	beqz	a0,3c <.L105>
			1e: R_RISCV_RVC_BRANCH	.L105
  20:	000005b7          	lui	a1,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC1
			24: R_RISCV_RELAX	*ABS*
  28:	12f00613          	li	a2,303
  2c:	00058593          	mv	a1,a1
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC1
			30: R_RISCV_RELAX	*ABS*
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	assert_err
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL143+0x16>

0000003c <.L105>:
  3c:	451d                	li	a0,7
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_state_get
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L105+0x2>

00000046 <.LVL145>:
  46:	4785                	li	a5,1
  48:	02f51963          	bne	a0,a5,7a <.L107>
			48: R_RISCV_BRANCH	.L107

0000004c <.LBB75>:
  4c:	000007b7          	lui	a5,0x0
			4c: R_RISCV_HI20	apm_env+0x4
			4c: R_RISCV_RELAX	*ABS*+0x4
  50:	0047a783          	lw	a5,4(a5) # 4 <.LVL141>
			50: R_RISCV_LO12_I	apm_env+0x4
			50: R_RISCV_RELAX	*ABS*+0x4
  54:	cf99                	beqz	a5,72 <.L108>
			54: R_RISCV_RVC_BRANCH	.L108
  56:	000005b7          	lui	a1,0x0
			56: R_RISCV_HI20	.LC0
			56: R_RISCV_RELAX	*ABS*
  5a:	00000537          	lui	a0,0x0
			5a: R_RISCV_HI20	.LC9
			5a: R_RISCV_RELAX	*ABS*
  5e:	13500613          	li	a2,309
  62:	00058593          	mv	a1,a1
			62: R_RISCV_LO12_I	.LC0
			62: R_RISCV_RELAX	*ABS*
  66:	00050513          	mv	a0,a0
			66: R_RISCV_LO12_I	.LC9
			66: R_RISCV_RELAX	*ABS*
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	assert_err
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LBB75+0x1e>

00000072 <.L108>:
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	apm_bcn_set
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L108>

0000007a <.L107>:
  7a:	40b2                	lw	ra,12(sp)
  7c:	4501                	li	a0,0
  7e:	0141                	addi	sp,sp,16
  80:	8082                	ret
