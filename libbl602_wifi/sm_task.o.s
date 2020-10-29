
libbl602_wifi/sm_task.o:     file format elf32-littleriscv


Disassembly of section .text.me_set_ps_disable_cfm_handler:

00000000 <me_set_ps_disable_cfm_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4519                	li	a0,6

00000004 <.LVL1>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL1+0x2>

0000000e <.LVL2>:
   e:	4791                	li	a5,4
  10:	02f50e63          	beq	a0,a5,4c <.L3>
			10: R_RISCV_BRANCH	.L3
  14:	4519                	li	a0,6
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL2+0x8>

0000001e <.LVL3>:
  1e:	c51d                	beqz	a0,4c <.L3>
			1e: R_RISCV_RVC_BRANCH	.L3
  20:	4519                	li	a0,6
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	ke_state_get
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL3+0x4>

0000002a <.LVL4>:
  2a:	47a1                	li	a5,8
  2c:	02f50063          	beq	a0,a5,4c <.L3>
			2c: R_RISCV_BRANCH	.L3
  30:	000005b7          	lui	a1,0x0
			30: R_RISCV_HI20	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00000537          	lui	a0,0x0
			34: R_RISCV_HI20	.LC1
			34: R_RISCV_RELAX	*ABS*
  38:	1db00613          	li	a2,475
  3c:	00058593          	mv	a1,a1
			3c: R_RISCV_LO12_I	.LC0
			3c: R_RISCV_RELAX	*ABS*
  40:	00050513          	mv	a0,a0
			40: R_RISCV_LO12_I	.LC1
			40: R_RISCV_RELAX	*ABS*
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	assert_err
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL4+0x1a>

0000004c <.L3>:
  4c:	4519                	li	a0,6
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ke_state_get
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L3+0x2>

00000056 <.LVL6>:
  56:	4791                	li	a5,4
  58:	00f51663          	bne	a0,a5,64 <.L5>
			58: R_RISCV_BRANCH	.L5
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	sm_send_next_bss_param
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL6+0x6>

00000064 <.L5>:
  64:	40b2                	lw	ra,12(sp)
  66:	4501                	li	a0,0
  68:	0141                	addi	sp,sp,16
  6a:	8082                	ret

Disassembly of section .text.mm_bss_param_setting_handler:

00000000 <mm_bss_param_setting_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4519                	li	a0,6

00000004 <.LVL9>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL9+0x2>

0000000e <.LVL10>:
   e:	4791                	li	a5,4
  10:	02f50063          	beq	a0,a5,30 <.L11>
			10: R_RISCV_BRANCH	.L11
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC2
			18: R_RISCV_RELAX	*ABS*
  1c:	1fa00613          	li	a2,506
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC2
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL10+0x1a>

00000030 <.L11>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	sm_send_next_bss_param
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L11>

00000038 <.LVL12>:
  38:	40b2                	lw	ra,12(sp)
  3a:	4501                	li	a0,0
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.sm_rsp_timeout_ind_handler:

00000000 <sm_rsp_timeout_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4519                	li	a0,6

00000004 <.LVL14>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL14+0x2>

0000000e <.LVL15>:
   e:	4795                	li	a5,5
  10:	00f51b63          	bne	a0,a5,26 <.L14>
			10: R_RISCV_BRANCH	.L14

00000014 <.L16>:
  14:	452d                	li	a0,11
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	sm_connect_ind
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.L16+0x2>

0000001e <.L15>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

00000026 <.L14>:
  26:	4519                	li	a0,6
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ke_state_get
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.L14+0x2>

00000030 <.LVL17>:
  30:	4799                	li	a5,6
  32:	fef501e3          	beq	a0,a5,14 <.L16>
			32: R_RISCV_BRANCH	.L16
  36:	b7e5                	j	1e <.L15>
			36: R_RISCV_RVC_JUMP	.L15

Disassembly of section .text.scanu_start_cfm_handler:

00000000 <scanu_start_cfm_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4519                	li	a0,6

00000004 <.LVL19>:
   4:	ce06                	sw	ra,28(sp)
   6:	c402                	sw	zero,8(sp)
   8:	c602                	sw	zero,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ke_state_get
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL19+0x6>

00000012 <.LVL20>:
  12:	4785                	li	a5,1
  14:	02f50063          	beq	a0,a5,34 <.L19>
			14: R_RISCV_BRANCH	.L19
  18:	000005b7          	lui	a1,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC3
			1c: R_RISCV_RELAX	*ABS*
  20:	10a00613          	li	a2,266
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC3
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	assert_err
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL20+0x1a>

00000034 <.L19>:
  34:	0028                	addi	a0,sp,8
  36:	006c                	addi	a1,sp,12
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	sm_get_bss_params
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.L19+0x4>

00000040 <.LVL22>:
  40:	4522                	lw	a0,8(sp)
  42:	cd01                	beqz	a0,5a <.L20>
			42: R_RISCV_RVC_BRANCH	.L20
  44:	45b2                	lw	a1,12(sp)
  46:	c991                	beqz	a1,5a <.L20>
			46: R_RISCV_RVC_BRANCH	.L20
  48:	4601                	li	a2,0
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	sm_join_bss
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL22+0xa>

00000052 <.L21>:
  52:	40f2                	lw	ra,28(sp)
  54:	4501                	li	a0,0
  56:	6105                	addi	sp,sp,32
  58:	8082                	ret

0000005a <.L20>:
  5a:	4531                	li	a0,12
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	sm_connect_ind
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.L20+0x2>

00000064 <.LVL24>:
  64:	b7fd                	j	52 <.L21>
			64: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.mm_connection_loss_ind_handler:

00000000 <mm_connection_loss_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	4519                	li	a0,6

0000000c <.LVL26>:
   c:	0005c903          	lbu	s2,0(a1) # 0 <mm_connection_loss_ind_handler>
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL26+0x4>

00000018 <.LVL28>:
  18:	4489                	li	s1,2
  1a:	ed0d                	bnez	a0,54 <.L29>
			1a: R_RISCV_RVC_BRANCH	.L29
  1c:	5d800793          	li	a5,1496
  20:	02f90933          	mul	s2,s2,a5
  24:	00000437          	lui	s0,0x0
			24: R_RISCV_HI20	vif_info_tab
			24: R_RISCV_RELAX	*ABS*
  28:	00040413          	mv	s0,s0
			28: R_RISCV_LO12_I	vif_info_tab
			28: R_RISCV_RELAX	*ABS*
  2c:	4481                	li	s1,0
  2e:	944a                	add	s0,s0,s2
  30:	05644783          	lbu	a5,86(s0) # 56 <.L29+0x2>
  34:	e385                	bnez	a5,54 <.L29>
			34: R_RISCV_RVC_BRANCH	.L29
  36:	05844783          	lbu	a5,88(s0)
  3a:	cf89                	beqz	a5,54 <.L29>
			3a: R_RISCV_RVC_BRANCH	.L29
  3c:	45a1                	li	a1,8
  3e:	4519                	li	a0,6
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	ke_state_set
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL28+0x28>

00000048 <.LVL30>:
  48:	45c1                	li	a1,16
  4a:	8522                	mv	a0,s0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	sm_disconnect_process
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL30+0x4>

00000054 <.L29>:
  54:	40b2                	lw	ra,12(sp)
  56:	4422                	lw	s0,8(sp)
  58:	8526                	mv	a0,s1
  5a:	4902                	lw	s2,0(sp)
  5c:	4492                	lw	s1,4(sp)
  5e:	0141                	addi	sp,sp,16
  60:	8082                	ret

Disassembly of section .text.scanu_join_cfm_handler:

00000000 <scanu_join_cfm_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	4519                	li	a0,6

00000006 <.LVL33>:
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	sm_env
			6: R_RISCV_RELAX	*ABS*
   a:	ce4e                	sw	s3,28(sp)
   c:	d606                	sw	ra,44(sp)
   e:	00042983          	lw	s3,0(s0) # 0 <scanu_join_cfm_handler>
			e: R_RISCV_LO12_I	sm_env
			e: R_RISCV_RELAX	*ABS*

00000012 <.LVL34>:
  12:	d226                	sw	s1,36(sp)
  14:	d04a                	sw	s2,32(sp)
  16:	cc52                	sw	s4,24(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL34+0x6>

00000020 <.LVL35>:
  20:	4789                	li	a5,2
  22:	00040413          	mv	s0,s0
			22: R_RISCV_LO12_I	sm_env
			22: R_RISCV_RELAX	*ABS*
  26:	02f50063          	beq	a0,a5,46 <.L37>
			26: R_RISCV_BRANCH	.L37
  2a:	000005b7          	lui	a1,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	.LC4
			2e: R_RISCV_RELAX	*ABS*
  32:	13400613          	li	a2,308
  36:	00058593          	mv	a1,a1
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00050513          	mv	a0,a0
			3a: R_RISCV_LO12_I	.LC4
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	assert_err
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL35+0x1e>

00000046 <.L37>:
  46:	03d9ca03          	lbu	s4,61(s3)
  4a:	5d800793          	li	a5,1496
  4e:	00000937          	lui	s2,0x0
			4e: R_RISCV_HI20	vif_info_tab
			4e: R_RISCV_RELAX	*ABS*
  52:	02fa07b3          	mul	a5,s4,a5
  56:	00090513          	mv	a0,s2
			56: R_RISCV_LO12_I	vif_info_tab
			56: R_RISCV_RELAX	*ABS*
  5a:	00090913          	mv	s2,s2
			5a: R_RISCV_LO12_I	vif_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	00f504b3          	add	s1,a0,a5
  62:	3e04a703          	lw	a4,992(s1)
  66:	0e075563          	bgez	a4,150 <.L38>
			66: R_RISCV_BRANCH	.L38

0000006a <.LBB23>:
  6a:	00f10513          	addi	a0,sp,15
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	sm_add_chan_ctx
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LBB23+0x4>

00000076 <.LVL38>:
  76:	e579                	bnez	a0,144 <.L39>
			76: R_RISCV_RVC_BRANCH	.L39

00000078 <.LBB24>:
  78:	02000693          	li	a3,32
  7c:	4619                	li	a2,6
  7e:	4581                	li	a1,0
  80:	4529                	li	a0,10
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	ke_msg_alloc
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LBB24+0xa>

0000008a <.LVL39>:
  8a:	842a                	mv	s0,a0

0000008c <.LVL40>:
  8c:	00f14583          	lbu	a1,15(sp)
  90:	03d9c503          	lbu	a0,61(s3)
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	chan_ctxt_link
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL40+0x8>

0000009c <.LVL41>:
  9c:	03d9c783          	lbu	a5,61(s3)
  a0:	4619                	li	a2,6
  a2:	37848593          	addi	a1,s1,888
  a6:	00f408a3          	sb	a5,17(s0)
  aa:	00a40513          	addi	a0,s0,10
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	memcpy
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL41+0x12>

000000b6 <.LVL42>:
  b6:	00040923          	sb	zero,18(s0)
  ba:	3e04a783          	lw	a5,992(s1)
  be:	8b89                	andi	a5,a5,2
  c0:	cb95                	beqz	a5,f4 <.L40>
			c0: R_RISCV_RVC_BRANCH	.L40

000000c2 <.LBB25>:
  c2:	35a4c783          	lbu	a5,858(s1)
  c6:	4609                	li	a2,2
  c8:	4705                	li	a4,1
  ca:	0037f693          	andi	a3,a5,3

000000ce <.LVL43>:
  ce:	8789                	srai	a5,a5,0x2
  d0:	8b9d                	andi	a5,a5,7

000000d2 <.LVL44>:
  d2:	00f65763          	bge	a2,a5,e0 <.L41>
			d2: R_RISCV_BRANCH	.L41
  d6:	17f5                	addi	a5,a5,-3

000000d8 <.LVL45>:
  d8:	00f717b3          	sll	a5,a4,a5

000000dc <.LVL46>:
  dc:	0ff7f713          	andi	a4,a5,255

000000e0 <.L41>:
  e0:	00e40823          	sb	a4,16(s0)

000000e4 <.LVL47>:
  e4:	4785                	li	a5,1
  e6:	00d68713          	addi	a4,a3,13
  ea:	00e797b3          	sll	a5,a5,a4
  ee:	17fd                	addi	a5,a5,-1
  f0:	00f41423          	sh	a5,8(s0)

000000f4 <.L40>:
  f4:	8522                	mv	a0,s0
  f6:	00042223          	sw	zero,4(s0)
  fa:	00000097          	auipc	ra,0x0
			fa: R_RISCV_CALL	ke_msg_send
			fa: R_RISCV_RELAX	*ABS*
  fe:	000080e7          	jalr	ra # fa <.L40+0x6>

00000102 <.LVL49>:
 102:	458d                	li	a1,3
 104:	4519                	li	a0,6
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	ke_state_set
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LVL49+0x4>

0000010e <.L42>:
 10e:	5d800793          	li	a5,1496
 112:	02fa07b3          	mul	a5,s4,a5
 116:	0309a703          	lw	a4,48(s3)
 11a:	97ca                	add	a5,a5,s2
 11c:	5ce7a223          	sw	a4,1476(a5)
 120:	0309a703          	lw	a4,48(s3)
 124:	8b11                	andi	a4,a4,4
 126:	c711                	beqz	a4,132 <.L44>
			126: R_RISCV_RVC_BRANCH	.L44
 128:	3e07a703          	lw	a4,992(a5)
 12c:	9b65                	andi	a4,a4,-7
 12e:	3ee7a023          	sw	a4,992(a5)

00000132 <.L44>:
 132:	50b2                	lw	ra,44(sp)
 134:	5422                	lw	s0,40(sp)
 136:	5492                	lw	s1,36(sp)
 138:	5902                	lw	s2,32(sp)
 13a:	49f2                	lw	s3,28(sp)

0000013c <.LVL51>:
 13c:	4a62                	lw	s4,24(sp)
 13e:	4501                	li	a0,0
 140:	6145                	addi	sp,sp,48
 142:	8082                	ret

00000144 <.L39>:
 144:	4535                	li	a0,13
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	sm_connect_ind
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.L39+0x2>

0000014e <.LVL54>:
 14e:	b7c1                	j	10e <.L42>
			14e: R_RISCV_RVC_JUMP	.L42

00000150 <.L38>:
 150:	01044703          	lbu	a4,16(s0)
 154:	cf01                	beqz	a4,16c <.L45>
			154: R_RISCV_RVC_BRANCH	.L45
 156:	3a44a583          	lw	a1,932(s1)
 15a:	37878793          	addi	a5,a5,888
 15e:	4605                	li	a2,1
 160:	953e                	add	a0,a0,a5
 162:	00000097          	auipc	ra,0x0
			162: R_RISCV_CALL	sm_join_bss
			162: R_RISCV_RELAX	*ABS*
 166:	000080e7          	jalr	ra # 162 <.L38+0x12>

0000016a <.LVL55>:
 16a:	b7e1                	j	132 <.L44>
			16a: R_RISCV_RVC_JUMP	.L44

0000016c <.L45>:
 16c:	4539                	li	a0,14
 16e:	00000097          	auipc	ra,0x0
			16e: R_RISCV_CALL	sm_connect_ind
			16e: R_RISCV_RELAX	*ABS*
 172:	000080e7          	jalr	ra # 16e <.L45+0x2>

00000176 <.LVL56>:
 176:	bf75                	j	132 <.L44>
			176: R_RISCV_RVC_JUMP	.L44

Disassembly of section .text.sm_connect_req_handler:

00000000 <sm_connect_req_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	ca56                	sw	s5,20(sp)
   8:	c85a                	sw	s6,16(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)

00000012 <.LBB27>:
  12:	4519                	li	a0,6

00000014 <.LBE27>:
  14:	842e                	mv	s0,a1
  16:	8b32                	mv	s6,a2
  18:	8ab6                	mv	s5,a3
  1a:	c402                	sw	zero,8(sp)
  1c:	c602                	sw	zero,12(sp)

0000001e <.LBB28>:
  1e:	03d5c983          	lbu	s3,61(a1) # 3d <.LVL61+0x13>
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	ke_state_get
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LBB28+0x4>

0000002a <.LVL61>:
  2a:	47a1                	li	a5,8
  2c:	4489                	li	s1,2
  2e:	12f50e63          	beq	a0,a5,16a <.L54>
			2e: R_RISCV_BRANCH	.L54
  32:	6509                	lui	a0,0x2
  34:	4685                	li	a3,1
  36:	865a                	mv	a2,s6
  38:	85d6                	mv	a1,s5
  3a:	80150513          	addi	a0,a0,-2047 # 1801 <.LASF655+0x3>
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_msg_alloc
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL61+0x14>

00000046 <.LVL62>:
  46:	8a2a                	mv	s4,a0

00000048 <.LVL63>:
  48:	4519                	li	a0,6

0000004a <.LVL64>:
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ke_state_get
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL64>

00000052 <.LVL65>:
  52:	1c051863          	bnez	a0,222 <.L69>
			52: R_RISCV_BRANCH	.L69
  56:	5d800713          	li	a4,1496
  5a:	02e98733          	mul	a4,s3,a4
  5e:	00000937          	lui	s2,0x0
			5e: R_RISCV_HI20	vif_info_tab
			5e: R_RISCV_RELAX	*ABS*
  62:	00090793          	mv	a5,s2
			62: R_RISCV_LO12_I	vif_info_tab
			62: R_RISCV_RELAX	*ABS*
  66:	03b44683          	lbu	a3,59(s0)
  6a:	00090913          	mv	s2,s2
			6a: R_RISCV_LO12_I	vif_info_tab
			6a: R_RISCV_RELAX	*ABS*
  6e:	97ba                	add	a5,a5,a4
  70:	0567c703          	lbu	a4,86(a5)
  74:	e709                	bnez	a4,7e <.L57>
			74: R_RISCV_RVC_BRANCH	.L57
  76:	0587c703          	lbu	a4,88(a5)
  7a:	10070363          	beqz	a4,180 <.L58>
			7a: R_RISCV_BRANCH	.L58

0000007e <.L57>:
  7e:	4789                	li	a5,2
  80:	1af69463          	bne	a3,a5,228 <.L70>
			80: R_RISCV_BRANCH	.L70

00000084 <.L59>:
  84:	000004b7          	lui	s1,0x0
			84: R_RISCV_HI20	sm_env
			84: R_RISCV_RELAX	*ABS*
  88:	0004a783          	lw	a5,0(s1) # 0 <sm_connect_req_handler>
			88: R_RISCV_LO12_I	sm_env
			88: R_RISCV_RELAX	*ABS*
  8c:	00048493          	mv	s1,s1
			8c: R_RISCV_LO12_I	sm_env
			8c: R_RISCV_RELAX	*ABS*
  90:	cf99                	beqz	a5,ae <.L62>
			90: R_RISCV_RVC_BRANCH	.L62
  92:	000005b7          	lui	a1,0x0
			92: R_RISCV_HI20	.LC0
			92: R_RISCV_RELAX	*ABS*
  96:	00000537          	lui	a0,0x0
			96: R_RISCV_HI20	.LC7
			96: R_RISCV_RELAX	*ABS*
  9a:	05d00613          	li	a2,93
  9e:	00058593          	mv	a1,a1
			9e: R_RISCV_LO12_I	.LC0
			9e: R_RISCV_RELAX	*ABS*
  a2:	00050513          	mv	a0,a0
			a2: R_RISCV_LO12_I	.LC7
			a2: R_RISCV_RELAX	*ABS*
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	assert_err
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.L59+0x22>

000000ae <.L62>:
  ae:	40dc                	lw	a5,4(s1)
  b0:	c080                	sw	s0,0(s1)
  b2:	cf99                	beqz	a5,d0 <.L63>
			b2: R_RISCV_RVC_BRANCH	.L63
  b4:	000005b7          	lui	a1,0x0
			b4: R_RISCV_HI20	.LC0
			b4: R_RISCV_RELAX	*ABS*
  b8:	00000537          	lui	a0,0x0
			b8: R_RISCV_HI20	.LC8
			b8: R_RISCV_RELAX	*ABS*
  bc:	06100613          	li	a2,97
  c0:	00058593          	mv	a1,a1
			c0: R_RISCV_LO12_I	.LC0
			c0: R_RISCV_RELAX	*ABS*
  c4:	00050513          	mv	a0,a0
			c4: R_RISCV_LO12_I	.LC8
			c4: R_RISCV_RELAX	*ABS*
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	assert_err
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.L62+0x1a>

000000d0 <.L63>:
  d0:	6509                	lui	a0,0x2
  d2:	35400693          	li	a3,852
  d6:	865a                	mv	a2,s6
  d8:	85d6                	mv	a1,s5
  da:	80250513          	addi	a0,a0,-2046 # 1802 <.LASF655+0x4>
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	ke_msg_alloc
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.L63+0xe>

000000e6 <.LVL69>:
  e6:	03d44583          	lbu	a1,61(s0)
  ea:	c0c8                	sw	a0,4(s1)
  ec:	00000537          	lui	a0,0x0
			ec: R_RISCV_HI20	.LC9
			ec: R_RISCV_RELAX	*ABS*
  f0:	57fd                	li	a5,-1
  f2:	00050513          	mv	a0,a0
			f2: R_RISCV_LO12_I	.LC9
			f2: R_RISCV_RELAX	*ABS*
  f6:	c8dc                	sw	a5,20(s1)
  f8:	000488a3          	sb	zero,17(s1)
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	printf
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL69+0x16>

00000104 <.LVL70>:
 104:	03b44703          	lbu	a4,59(s0)
 108:	4789                	li	a5,2
 10a:	0cf71a63          	bne	a4,a5,1de <.L64>
			10a: R_RISCV_BRANCH	.L64
 10e:	03d44583          	lbu	a1,61(s0)
 112:	4785                	li	a5,1
 114:	00f488a3          	sb	a5,17(s1)
 118:	5d800493          	li	s1,1496
 11c:	029585b3          	mul	a1,a1,s1
 120:	00000537          	lui	a0,0x0
			120: R_RISCV_HI20	sm_env+0x18
			120: R_RISCV_RELAX	*ABS*+0x18
 124:	4619                	li	a2,6
 126:	01850513          	addi	a0,a0,24 # 18 <.LBE27+0x4>
			126: R_RISCV_LO12_I	sm_env+0x18
			126: R_RISCV_RELAX	*ABS*+0x18
 12a:	03858593          	addi	a1,a1,56 # 38 <.LVL61+0xe>
 12e:	95ca                	add	a1,a1,s2
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	memcpy
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL70+0x2c>

00000138 <.LVL71>:
 138:	45a1                	li	a1,8
 13a:	4519                	li	a0,6
 13c:	00000097          	auipc	ra,0x0
			13c: R_RISCV_CALL	ke_state_set
			13c: R_RISCV_RELAX	*ABS*
 140:	000080e7          	jalr	ra # 13c <.LVL71+0x4>

00000144 <.LVL72>:
 144:	03d44503          	lbu	a0,61(s0)
 148:	4581                	li	a1,0
 14a:	02950533          	mul	a0,a0,s1
 14e:	954a                	add	a0,a0,s2
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	sm_disconnect_process
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.LVL72+0xc>

00000158 <.L88>:
 158:	4485                	li	s1,1
 15a:	4781                	li	a5,0

0000015c <.L56>:
 15c:	00fa0023          	sb	a5,0(s4)
 160:	8552                	mv	a0,s4
 162:	00000097          	auipc	ra,0x0
			162: R_RISCV_CALL	ke_msg_send
			162: R_RISCV_RELAX	*ABS*
 166:	000080e7          	jalr	ra # 162 <.L56+0x6>

0000016a <.L54>:
 16a:	50b2                	lw	ra,44(sp)
 16c:	5422                	lw	s0,40(sp)
 16e:	8526                	mv	a0,s1
 170:	5902                	lw	s2,32(sp)
 172:	5492                	lw	s1,36(sp)
 174:	49f2                	lw	s3,28(sp)
 176:	4a62                	lw	s4,24(sp)
 178:	4ad2                	lw	s5,20(sp)
 17a:	4b42                	lw	s6,16(sp)
 17c:	6145                	addi	sp,sp,48
 17e:	8082                	ret

00000180 <.L58>:
 180:	4709                	li	a4,2
 182:	f0e681e3          	beq	a3,a4,84 <.L59>
			182: R_RISCV_BRANCH	.L59
 186:	0607c703          	lbu	a4,96(a5)
 18a:	0ff00793          	li	a5,255
 18e:	02f70063          	beq	a4,a5,1ae <.L61>
			18e: R_RISCV_BRANCH	.L61
 192:	000005b7          	lui	a1,0x0
			192: R_RISCV_HI20	.LC0
			192: R_RISCV_RELAX	*ABS*
 196:	00000537          	lui	a0,0x0
			196: R_RISCV_HI20	.LC5
			196: R_RISCV_RELAX	*ABS*
 19a:	05900613          	li	a2,89
 19e:	00058593          	mv	a1,a1
			19e: R_RISCV_LO12_I	.LC0
			19e: R_RISCV_RELAX	*ABS*
 1a2:	00050513          	mv	a0,a0
			1a2: R_RISCV_LO12_I	.LC5
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	00000097          	auipc	ra,0x0
			1a6: R_RISCV_CALL	assert_err
			1a6: R_RISCV_RELAX	*ABS*
 1aa:	000080e7          	jalr	ra # 1a6 <.L58+0x26>

000001ae <.L61>:
 1ae:	5d800793          	li	a5,1496
 1b2:	02f989b3          	mul	s3,s3,a5
 1b6:	99ca                	add	s3,s3,s2
 1b8:	0409a783          	lw	a5,64(s3)
 1bc:	ec0784e3          	beqz	a5,84 <.L59>
			1bc: R_RISCV_BRANCH	.L59
 1c0:	000005b7          	lui	a1,0x0
			1c0: R_RISCV_HI20	.LC0
			1c0: R_RISCV_RELAX	*ABS*
 1c4:	00000537          	lui	a0,0x0
			1c4: R_RISCV_HI20	.LC6
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	05a00613          	li	a2,90
 1cc:	00058593          	mv	a1,a1
			1cc: R_RISCV_LO12_I	.LC0
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	00050513          	mv	a0,a0
			1d0: R_RISCV_LO12_I	.LC6
			1d0: R_RISCV_RELAX	*ABS*
 1d4:	00000097          	auipc	ra,0x0
			1d4: R_RISCV_CALL	assert_err
			1d4: R_RISCV_RELAX	*ABS*
 1d8:	000080e7          	jalr	ra # 1d4 <.L61+0x26>

000001dc <.LVL79>:
 1dc:	b565                	j	84 <.L59>
			1dc: R_RISCV_RVC_JUMP	.L59

000001de <.L64>:
 1de:	02845703          	lhu	a4,40(s0)
 1e2:	67c1                	lui	a5,0x10
 1e4:	17fd                	addi	a5,a5,-1
 1e6:	02f70263          	beq	a4,a5,20a <.L65>
			1e6: R_RISCV_BRANCH	.L65
 1ea:	02240793          	addi	a5,s0,34
 1ee:	02840413          	addi	s0,s0,40

000001f2 <.LVL80>:
 1f2:	c43e                	sw	a5,8(sp)
 1f4:	c622                	sw	s0,12(sp)

000001f6 <.L66>:
 1f6:	4522                	lw	a0,8(sp)
 1f8:	45b2                	lw	a1,12(sp)
 1fa:	cd19                	beqz	a0,218 <.L67>
			1fa: R_RISCV_RVC_BRANCH	.L67
 1fc:	cd91                	beqz	a1,218 <.L67>
			1fc: R_RISCV_RVC_BRANCH	.L67
 1fe:	4601                	li	a2,0
 200:	00000097          	auipc	ra,0x0
			200: R_RISCV_CALL	sm_join_bss
			200: R_RISCV_RELAX	*ABS*
 204:	000080e7          	jalr	ra # 200 <.L66+0xa>

00000208 <.LVL82>:
 208:	bf81                	j	158 <.L88>
			208: R_RISCV_RVC_JUMP	.L88

0000020a <.L65>:
 20a:	006c                	addi	a1,sp,12
 20c:	0028                	addi	a0,sp,8
 20e:	00000097          	auipc	ra,0x0
			20e: R_RISCV_CALL	sm_get_bss_params
			20e: R_RISCV_RELAX	*ABS*
 212:	000080e7          	jalr	ra # 20e <.L65+0x4>

00000216 <.LVL84>:
 216:	b7c5                	j	1f6 <.L66>
			216: R_RISCV_RVC_JUMP	.L66

00000218 <.L67>:
 218:	00000097          	auipc	ra,0x0
			218: R_RISCV_CALL	sm_scan_bss
			218: R_RISCV_RELAX	*ABS*
 21c:	000080e7          	jalr	ra # 218 <.L67>

00000220 <.LVL86>:
 220:	bf25                	j	158 <.L88>
			220: R_RISCV_RVC_JUMP	.L88

00000222 <.L69>:
 222:	4481                	li	s1,0

00000224 <.LBB30>:
 224:	47a1                	li	a5,8
 226:	bf1d                	j	15c <.L56>
			226: R_RISCV_RVC_JUMP	.L56

00000228 <.L70>:
 228:	4481                	li	s1,0

0000022a <.LBB31>:
 22a:	47a5                	li	a5,9
 22c:	bf05                	j	15c <.L56>
			22c: R_RISCV_RVC_JUMP	.L56

Disassembly of section .text.rxu_mgt_ind_handler:

00000000 <rxu_mgt_ind_handler>:
   0:	0025d783          	lhu	a5,2(a1) # 2 <rxu_mgt_ind_handler+0x2>
   4:	1141                	addi	sp,sp,-16
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	0fc7f793          	andi	a5,a5,252

0000000e <.LVL89>:
   e:	0b000713          	li	a4,176
  12:	842e                	mv	s0,a1
  14:	02e79463          	bne	a5,a4,3c <.L90>
			14: R_RISCV_BRANCH	.L90
  18:	4519                	li	a0,6

0000001a <.LVL90>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ke_state_get
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL90>

00000022 <.LVL91>:
  22:	4795                	li	a5,5
  24:	00f51763          	bne	a0,a5,32 <.L89>
			24: R_RISCV_BRANCH	.L89
  28:	8522                	mv	a0,s0
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	sm_auth_handler
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL91+0x8>

00000032 <.L89>:
  32:	40b2                	lw	ra,12(sp)
  34:	4422                	lw	s0,8(sp)

00000036 <.LVL93>:
  36:	4501                	li	a0,0
  38:	0141                	addi	sp,sp,16
  3a:	8082                	ret

0000003c <.L90>:
  3c:	4741                	li	a4,16
  3e:	02e79063          	bne	a5,a4,5e <.L93>
			3e: R_RISCV_BRANCH	.L93

00000042 <.L100>:
  42:	4519                	li	a0,6

00000044 <.LVL95>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ke_state_get
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL95>

0000004c <.LVL96>:
  4c:	4799                	li	a5,6
  4e:	fef512e3          	bne	a0,a5,32 <.L89>
			4e: R_RISCV_BRANCH	.L89
  52:	8522                	mv	a0,s0
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	sm_assoc_rsp_handler
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL96+0x8>

0000005c <.LVL97>:
  5c:	bfd9                	j	32 <.L89>
			5c: R_RISCV_RVC_JUMP	.L89

0000005e <.L93>:
  5e:	03000713          	li	a4,48
  62:	fee780e3          	beq	a5,a4,42 <.L100>
			62: R_RISCV_BRANCH	.L100
  66:	0c000713          	li	a4,192
  6a:	00e78663          	beq	a5,a4,76 <.L95>
			6a: R_RISCV_BRANCH	.L95
  6e:	0a000713          	li	a4,160
  72:	fce790e3          	bne	a5,a4,32 <.L89>
			72: R_RISCV_BRANCH	.L89

00000076 <.L95>:
  76:	4519                	li	a0,6

00000078 <.LVL100>:
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	ke_state_get
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL100>

00000080 <.LVL101>:
  80:	f94d                	bnez	a0,32 <.L89>
			80: R_RISCV_RVC_BRANCH	.L89
  82:	8522                	mv	a0,s0

00000084 <.LBE34>:
  84:	4422                	lw	s0,8(sp)

00000086 <.LVL102>:
  86:	40b2                	lw	ra,12(sp)
  88:	0141                	addi	sp,sp,16

0000008a <.LBB37>:
  8a:	00000317          	auipc	t1,0x0
			8a: R_RISCV_CALL	sm_deauth_handler
			8a: R_RISCV_RELAX	*ABS*
  8e:	00030067          	jr	t1 # 8a <.LBB37>

Disassembly of section .text.mm_set_vif_state_cfm_handler:

00000000 <mm_set_vif_state_cfm_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4519                	li	a0,6

00000004 <.LVL105>:
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL105+0xc>

00000018 <.LVL106>:
  18:	479d                	li	a5,7
  1a:	0cf51f63          	bne	a0,a5,f8 <.L103>
			1a: R_RISCV_BRANCH	.L103

0000001e <.LBB47>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	sm_env
			1e: R_RISCV_RELAX	*ABS*
  22:	0007a483          	lw	s1,0(a5) # 0 <mm_set_vif_state_cfm_handler>
			22: R_RISCV_LO12_I	sm_env
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL108>:
  26:	5d800793          	li	a5,1496
  2a:	00000437          	lui	s0,0x0
			2a: R_RISCV_HI20	vif_info_tab
			2a: R_RISCV_RELAX	*ABS*
  2e:	03d4c903          	lbu	s2,61(s1)
  32:	00040993          	mv	s3,s0
			32: R_RISCV_LO12_I	vif_info_tab
			32: R_RISCV_RELAX	*ABS*
  36:	4699                	li	a3,6
  38:	02f907b3          	mul	a5,s2,a5
  3c:	4619                	li	a2,6
  3e:	4581                	li	a1,0
  40:	04b00513          	li	a0,75
  44:	00040413          	mv	s0,s0
			44: R_RISCV_LO12_I	vif_info_tab
			44: R_RISCV_RELAX	*ABS*
  48:	99be                	add	s3,s3,a5
  4a:	0609ca03          	lbu	s4,96(s3)
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ke_msg_alloc
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL108+0x28>

00000056 <.LVL111>:
  56:	03a4c703          	lbu	a4,58(s1)
  5a:	00e50223          	sb	a4,4(a0) # 4 <.LVL105>
  5e:	0384d703          	lhu	a4,56(s1)
  62:	00e51123          	sh	a4,2(a0)
  66:	03d4c703          	lbu	a4,61(s1)
  6a:	00e50023          	sb	a4,0(a0)
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_send
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL111+0x18>

00000076 <.LVL112>:
  76:	1b000693          	li	a3,432
  7a:	02da0a33          	mul	s4,s4,a3
  7e:	5c49a783          	lw	a5,1476(s3)
  82:	00000737          	lui	a4,0x0
			82: R_RISCV_HI20	sta_info_tab
			82: R_RISCV_RELAX	*ABS*
  86:	00070713          	mv	a4,a4
			86: R_RISCV_LO12_I	sta_info_tab
			86: R_RISCV_RELAX	*ABS*
  8a:	8b85                	andi	a5,a5,1
  8c:	0017b793          	seqz	a5,a5
  90:	0785                	addi	a5,a5,1
  92:	9752                	add	a4,a4,s4
  94:	02f708a3          	sb	a5,49(a4) # 31 <.LVL108+0xb>
  98:	0344d683          	lhu	a3,52(s1)

0000009c <.LBB49>:
  9c:	00869613          	slli	a2,a3,0x8
  a0:	82a1                	srli	a3,a3,0x8
  a2:	8ed1                	or	a3,a3,a2

000000a4 <.LBE49>:
  a4:	02d71c23          	sh	a3,56(a4)
  a8:	4709                	li	a4,2
  aa:	02e79663          	bne	a5,a4,d6 <.L105>
			aa: R_RISCV_BRANCH	.L105

000000ae <.LBB53>:
  ae:	6505                	lui	a0,0x1
  b0:	4689                	li	a3,2
  b2:	4619                	li	a2,6
  b4:	4595                	li	a1,5
  b6:	41350513          	addi	a0,a0,1043 # 1413 <.LASF86+0x3>
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	ke_msg_alloc
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.LBB53+0xc>

000000c2 <.LVL115>:
  c2:	00050023          	sb	zero,0(a0)
  c6:	03d4c703          	lbu	a4,61(s1)
  ca:	00e500a3          	sb	a4,1(a0)
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	ke_msg_send
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LVL115+0xc>

000000d6 <.L105>:
  d6:	5d800793          	li	a5,1496
  da:	02f90933          	mul	s2,s2,a5
  de:	674d                	lui	a4,0x13
  e0:	80070713          	addi	a4,a4,-2048 # 12800 <.LASF537+0xf0ab>
  e4:	944a                	add	s0,s0,s2
  e6:	3e842783          	lw	a5,1000(s0) # 3e8 <.LASF651+0x7>
  ea:	8ff9                	and	a5,a5,a4
  ec:	e791                	bnez	a5,f8 <.L103>
			ec: R_RISCV_RVC_BRANCH	.L103
  ee:	4501                	li	a0,0
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	sm_connect_ind
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.L105+0x1a>

000000f8 <.L103>:
  f8:	40f2                	lw	ra,28(sp)
  fa:	4462                	lw	s0,24(sp)
  fc:	44d2                	lw	s1,20(sp)
  fe:	4942                	lw	s2,16(sp)
 100:	49b2                	lw	s3,12(sp)
 102:	4a22                	lw	s4,8(sp)
 104:	4501                	li	a0,0
 106:	6105                	addi	sp,sp,32
 108:	8082                	ret

Disassembly of section .text.me_set_active_cfm_handler:

00000000 <me_set_active_cfm_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4519                	li	a0,6

00000004 <.LVL120>:
   4:	ce06                	sw	ra,28(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_state_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL120+0x2>

0000000e <.LVL121>:
   e:	4791                	li	a5,4
  10:	02f50863          	beq	a0,a5,40 <.L111>
			10: R_RISCV_BRANCH	.L111
  14:	4519                	li	a0,6
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL121+0x8>

0000001e <.LVL122>:
  1e:	47a1                	li	a5,8
  20:	02f50063          	beq	a0,a5,40 <.L111>
			20: R_RISCV_BRANCH	.L111
  24:	000005b7          	lui	a1,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC10
			28: R_RISCV_RELAX	*ABS*
  2c:	21600613          	li	a2,534
  30:	00058593          	mv	a1,a1
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00050513          	mv	a0,a0
			34: R_RISCV_LO12_I	.LC10
			34: R_RISCV_RELAX	*ABS*
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	assert_err
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL122+0x1a>

00000040 <.L111>:
  40:	4519                	li	a0,6
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ke_state_get
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.L111+0x2>

0000004a <.LVL124>:
  4a:	000007b7          	lui	a5,0x0
			4a: R_RISCV_HI20	sm_env
			4a: R_RISCV_RELAX	*ABS*
  4e:	00078793          	mv	a5,a5
			4e: R_RISCV_LO12_I	sm_env
			4e: R_RISCV_RELAX	*ABS*
  52:	4721                	li	a4,8
  54:	0117c783          	lbu	a5,17(a5) # 11 <.LVL121+0x3>
  58:	02e51d63          	bne	a0,a4,92 <.L113>
			58: R_RISCV_BRANCH	.L113
  5c:	c785                	beqz	a5,84 <.L114>
			5c: R_RISCV_RVC_BRANCH	.L114

0000005e <.LBB59>:
  5e:	006c                	addi	a1,sp,12
  60:	0028                	addi	a0,sp,8
  62:	c402                	sw	zero,8(sp)
  64:	c602                	sw	zero,12(sp)
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	sm_get_bss_params
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LBB59+0x8>

0000006e <.LVL126>:
  6e:	45b2                	lw	a1,12(sp)
  70:	4522                	lw	a0,8(sp)
  72:	4601                	li	a2,0
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	sm_join_bss
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL126+0x6>

0000007c <.L115>:
  7c:	40f2                	lw	ra,28(sp)
  7e:	4501                	li	a0,0
  80:	6105                	addi	sp,sp,32
  82:	8082                	ret

00000084 <.L114>:
  84:	4581                	li	a1,0
  86:	4519                	li	a0,6
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	ke_state_set
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.L114+0x4>

00000090 <.LVL128>:
  90:	b7f5                	j	7c <.L115>
			90: R_RISCV_RVC_JUMP	.L115

00000092 <.L113>:
  92:	c791                	beqz	a5,9e <.L116>
			92: R_RISCV_RVC_BRANCH	.L116
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	sm_assoc_req_send
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.L113+0x2>

0000009c <.LVL129>:
  9c:	b7c5                	j	7c <.L115>
			9c: R_RISCV_RVC_JUMP	.L115

0000009e <.L116>:
  9e:	4581                	li	a1,0
  a0:	4505                	li	a0,1
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	sm_auth_send
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.L116+0x4>

000000aa <.LVL130>:
  aa:	bfc9                	j	7c <.L115>
			aa: R_RISCV_RVC_JUMP	.L115

Disassembly of section .text.mm_sta_add_cfm_handler:

00000000 <mm_sta_add_cfm_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4519                	li	a0,6

00000004 <.LVL132>:
   4:	cc22                	sw	s0,24(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	842e                	mv	s0,a1
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL132+0x10>

0000001c <.LVL133>:
  1c:	478d                	li	a5,3
  1e:	02f50063          	beq	a0,a5,3e <.L119>
			1e: R_RISCV_BRANCH	.L119
  22:	000005b7          	lui	a1,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC11
			26: R_RISCV_RELAX	*ABS*
  2a:	19c00613          	li	a2,412
  2e:	00058593          	mv	a1,a1
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	.LC11
			32: R_RISCV_RELAX	*ABS*
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	assert_err
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL133+0x1a>

0000003e <.L119>:
  3e:	00044783          	lbu	a5,0(s0)
  42:	e3f1                	bnez	a5,106 <.L120>
			42: R_RISCV_RVC_BRANCH	.L120

00000044 <.LBB64>:
  44:	00144a03          	lbu	s4,1(s0)
  48:	1b000793          	li	a5,432
  4c:	00000437          	lui	s0,0x0
			4c: R_RISCV_HI20	sta_info_tab
			4c: R_RISCV_RELAX	*ABS*

00000050 <.LVL137>:
  50:	02fa07b3          	mul	a5,s4,a5
  54:	00040913          	mv	s2,s0
			54: R_RISCV_LO12_I	sta_info_tab
			54: R_RISCV_RELAX	*ABS*
  58:	000009b7          	lui	s3,0x0
			58: R_RISCV_HI20	vif_info_tab
			58: R_RISCV_RELAX	*ABS*
  5c:	00098a93          	mv	s5,s3
			5c: R_RISCV_LO12_I	vif_info_tab
			5c: R_RISCV_RELAX	*ABS*
  60:	4635                	li	a2,13
  62:	00040413          	mv	s0,s0
			62: R_RISCV_LO12_I	sta_info_tab
			62: R_RISCV_RELAX	*ABS*
  66:	00098993          	mv	s3,s3
			66: R_RISCV_LO12_I	vif_info_tab
			66: R_RISCV_RELAX	*ABS*
  6a:	993e                	add	s2,s2,a5
  6c:	01a94483          	lbu	s1,26(s2) # 1a <.LVL132+0x16>
  70:	5d800793          	li	a5,1496
  74:	0b090513          	addi	a0,s2,176
  78:	02f487b3          	mul	a5,s1,a5
  7c:	9abe                	add	s5,s5,a5
  7e:	3b0a8593          	addi	a1,s5,944
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	memcpy
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL137+0x32>

0000008a <.LVL139>:
  8a:	3e0aa783          	lw	a5,992(s5)
  8e:	0017f713          	andi	a4,a5,1
  92:	c719                	beqz	a4,a0 <.L121>
			92: R_RISCV_RVC_BRANCH	.L121
  94:	0ec92703          	lw	a4,236(s2)
  98:	00176713          	ori	a4,a4,1
  9c:	0ee92623          	sw	a4,236(s2)

000000a0 <.L121>:
  a0:	8b89                	andi	a5,a5,2
  a2:	c7a1                	beqz	a5,ea <.L122>
			a2: R_RISCV_RVC_BRANCH	.L122
  a4:	1b000793          	li	a5,432
  a8:	02fa0a33          	mul	s4,s4,a5
  ac:	5d800593          	li	a1,1496
  b0:	02000613          	li	a2,32
  b4:	02b484b3          	mul	s1,s1,a1
  b8:	9452                	add	s0,s0,s4
  ba:	0ec42783          	lw	a5,236(s0) # ec <.L122+0x2>
  be:	0c040513          	addi	a0,s0,192
  c2:	0027e793          	ori	a5,a5,2
  c6:	0ef42623          	sw	a5,236(s0)
  ca:	009985b3          	add	a1,s3,s1
  ce:	35858593          	addi	a1,a1,856 # 358 <.LLST18+0x7>
  d2:	00000097          	auipc	ra,0x0
			d2: R_RISCV_CALL	memcpy
			d2: R_RISCV_RELAX	*ABS*
  d6:	000080e7          	jalr	ra # d2 <.L121+0x32>

000000da <.LVL142>:
  da:	35848593          	addi	a1,s1,856
  de:	95ce                	add	a1,a1,s3
  e0:	8522                	mv	a0,s0
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	me_set_sta_ht_vht_param
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL142+0x8>

000000ea <.L122>:
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	sm_set_bss_param
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.L122>

000000f2 <.L123>:
  f2:	40f2                	lw	ra,28(sp)
  f4:	4462                	lw	s0,24(sp)
  f6:	44d2                	lw	s1,20(sp)
  f8:	4942                	lw	s2,16(sp)
  fa:	49b2                	lw	s3,12(sp)
  fc:	4a22                	lw	s4,8(sp)
  fe:	4a92                	lw	s5,4(sp)
 100:	4501                	li	a0,0
 102:	6105                	addi	sp,sp,32
 104:	8082                	ret

00000106 <.L120>:
 106:	453d                	li	a0,15
 108:	00000097          	auipc	ra,0x0
			108: R_RISCV_CALL	sm_connect_ind
			108: R_RISCV_RELAX	*ABS*
 10c:	000080e7          	jalr	ra # 108 <.L120+0x2>

00000110 <.LVL146>:
 110:	b7cd                	j	f2 <.L123>
			110: R_RISCV_RVC_JUMP	.L123

Disassembly of section .text.sm_disconnect_req_handler:

00000000 <sm_disconnect_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4519                	li	a0,6

00000004 <.LVL148>:
   4:	c422                	sw	s0,8(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842e                	mv	s0,a1
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ke_state_get
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL148+0x6>

00000012 <.LVL149>:
  12:	4789                	li	a5,2
  14:	e11d                	bnez	a0,3a <.L131>
			14: R_RISCV_RVC_BRANCH	.L131

00000016 <.LBB68>:
  16:	00045583          	lhu	a1,0(s0)
  1a:	00244503          	lbu	a0,2(s0)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	sm_disconnect
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LBB68+0x8>

00000026 <.LVL151>:
  26:	6509                	lui	a0,0x2
  28:	4619                	li	a2,6
  2a:	45b5                	li	a1,13
  2c:	80450513          	addi	a0,a0,-2044 # 1804 <.LASF655+0x6>
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	ke_msg_send_basic
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL151+0xa>

00000038 <.LVL152>:
  38:	4781                	li	a5,0

0000003a <.L131>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)

0000003e <.LVL153>:
  3e:	853e                	mv	a0,a5
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret
