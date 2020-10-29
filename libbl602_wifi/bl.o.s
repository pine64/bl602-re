
libbl602_wifi/bl.o:     file format elf32-littleriscv


Disassembly of section .text.bl_init:

00000000 <bl_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	fw_nap_chain
			0: R_RISCV_RELAX	*ABS*
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	fw_nap_chain
			8: R_RISCV_RELAX	*ABS*
   c:	1141                	addi	sp,sp,-16
   e:	00f72023          	sw	a5,0(a4) # 0 <bl_init>
			e: R_RISCV_LO12_S	.LANCHOR0
			e: R_RISCV_RELAX	*ABS*
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	bl_env+0x4
			12: R_RISCV_RELAX	*ABS*+0x4
  16:	c606                	sw	ra,12(sp)
  18:	c422                	sw	s0,8(sp)
  1a:	0007a223          	sw	zero,4(a5) # 4 <bl_init+0x4>
			1a: R_RISCV_LO12_S	bl_env+0x4
			1a: R_RISCV_RELAX	*ABS*+0x4
  1e:	00000437          	lui	s0,0x0
			1e: R_RISCV_HI20	sta_conn_info
			1e: R_RISCV_RELAX	*ABS*
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	dbg_init
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <bl_init+0x22>

0000002a <.LVL0>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	me_init
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL0>

00000032 <.LVL1>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	mm_init
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL1>

0000003a <.LVL2>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	ke_init
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL2>

00000042 <.LVL3>:
  42:	0ec00613          	li	a2,236
  46:	4581                	li	a1,0
  48:	00040513          	mv	a0,s0
			48: R_RISCV_LO12_I	sta_conn_info
			48: R_RISCV_RELAX	*ABS*
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memset
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL3+0xa>

00000054 <.LVL4>:
  54:	00040793          	mv	a5,s0
			54: R_RISCV_LO12_I	sta_conn_info
			54: R_RISCV_RELAX	*ABS*
  58:	577d                	li	a4,-1
  5a:	00e79223          	sh	a4,4(a5)
  5e:	00078023          	sb	zero,0(a5)
  62:	00e781a3          	sb	a4,3(a5)
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	supplicantFuncInit
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL4+0x12>

0000006e <.LVL5>:
  6e:	00040513          	mv	a0,s0
			6e: R_RISCV_LO12_I	sta_conn_info
			6e: R_RISCV_RELAX	*ABS*
  72:	4422                	lw	s0,8(sp)
  74:	40b2                	lw	ra,12(sp)
  76:	0141                	addi	sp,sp,16
  78:	00000317          	auipc	t1,0x0
			78: R_RISCV_CALL	allocSupplicantData
			78: R_RISCV_RELAX	*ABS*
  7c:	00030067          	jr	t1 # 78 <.LVL5+0xa>

Disassembly of section .text.bl_reset_evt:

00000000 <bl_reset_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB31>:
   4:	30047073          	csrci	mstatus,8

00000008 <.LBE31>:
   8:	80000537          	lui	a0,0x80000

0000000c <.LVL8>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	ke_evt_clear
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL8>

00000014 <.LVL9>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	hal_machw_reset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL9>

0000001c <.LVL10>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	rxl_reset
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL10>

00000024 <.LVL11>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	txl_reset
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL11>

0000002c <.LVL12>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	mm_reset
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL12>

00000034 <.LVL13>:
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	vif_mgmt_reset
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL13>

0000003c <.LBB32>:
  3c:	30046073          	csrsi	mstatus,8

00000040 <.LBE32>:
  40:	40b2                	lw	ra,12(sp)
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

Disassembly of section .text.bl_sleep:

00000000 <bl_sleep>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ke_env
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <bl_sleep>
			4: R_RISCV_LO12_I	ke_env
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE40>:
   8:	cb81                	beqz	a5,18 <.L6>
			8: R_RISCV_RVC_BRANCH	.L6
   a:	4501                	li	a0,0
   c:	8082                	ret

0000000e <.L8>:
   e:	4501                	li	a0,0

00000010 <.L5>:
  10:	40b2                	lw	ra,12(sp)
  12:	4422                	lw	s0,8(sp)
  14:	0141                	addi	sp,sp,16
  16:	8082                	ret

00000018 <.L6>:
  18:	1141                	addi	sp,sp,-16
  1a:	4511                	li	a0,4
  1c:	c606                	sw	ra,12(sp)
  1e:	c422                	sw	s0,8(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ke_state_get
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L6+0x8>

00000028 <.LVL18>:
  28:	f17d                	bnez	a0,e <.L8>
			28: R_RISCV_RVC_BRANCH	.L8

0000002a <.LBB42>:
  2a:	000007b7          	lui	a5,0x0
			2a: R_RISCV_HI20	ps_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	00078793          	mv	a5,a5
			2e: R_RISCV_LO12_I	ps_env
			2e: R_RISCV_RELAX	*ABS*
  32:	0007c703          	lbu	a4,0(a5) # 0 <bl_sleep>
  36:	df61                	beqz	a4,e <.L8>
			36: R_RISCV_RVC_BRANCH	.L8
  38:	43dc                	lw	a5,4(a5)
  3a:	fbf1                	bnez	a5,e <.L8>
			3a: R_RISCV_RVC_BRANCH	.L8

0000003c <.LVL20>:
  3c:	000007b7          	lui	a5,0x0
			3c: R_RISCV_HI20	vif_mgmt_env+0x8
			3c: R_RISCV_RELAX	*ABS*+0x8
  40:	0087a403          	lw	s0,8(a5) # 8 <.LBE40>
			40: R_RISCV_LO12_I	vif_mgmt_env+0x8
			40: R_RISCV_RELAX	*ABS*+0x8

00000044 <.L9>:
  44:	e819                	bnez	s0,5a <.L11>
			44: R_RISCV_RVC_BRANCH	.L11

00000046 <.LBB47>:
  46:	000007b7          	lui	a5,0x0
			46: R_RISCV_HI20	txl_cntrl_env+0x50
			46: R_RISCV_RELAX	*ABS*+0x50

0000004a <.LBE47>:
  4a:	0507a783          	lw	a5,80(a5) # 50 <.LBE47+0x6>
			4a: R_RISCV_LO12_I	txl_cntrl_env+0x50
			4a: R_RISCV_RELAX	*ABS*+0x50
  4e:	f3e1                	bnez	a5,e <.L8>
			4e: R_RISCV_RVC_BRANCH	.L8
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	hal_machw_sleep_check
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LBE47+0x6>

00000058 <.LVL23>:
  58:	bf65                	j	10 <.L5>
			58: R_RISCV_RVC_JUMP	.L5

0000005a <.L11>:
  5a:	8522                	mv	a0,s0
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	chan_is_on_channel
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.L11+0x2>

00000064 <.LVL25>:
  64:	c119                	beqz	a0,6a <.L10>
			64: R_RISCV_RVC_BRANCH	.L10
  66:	405c                	lw	a5,4(s0)
  68:	f3dd                	bnez	a5,e <.L8>
			68: R_RISCV_RVC_BRANCH	.L8

0000006a <.L10>:
  6a:	4000                	lw	s0,0(s0)

0000006c <.LBE49>:
  6c:	bfe1                	j	44 <.L9>
			6c: R_RISCV_RVC_JUMP	.L9

Disassembly of section .text.bl_wakeup:

00000000 <bl_wakeup>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	bl_env
			4: R_RISCV_RELAX	*ABS*
   8:	c606                	sw	ra,12(sp)
   a:	c226                	sw	s1,4(sp)
   c:	00040793          	mv	a5,s0
			c: R_RISCV_LO12_I	bl_env
			c: R_RISCV_RELAX	*ABS*
  10:	43dc                	lw	a5,4(a5)
  12:	c7b9                	beqz	a5,60 <.L25>
			12: R_RISCV_RVC_BRANCH	.L25

00000014 <.LBB66>:
  14:	44b08737          	lui	a4,0x44b08
  18:	5b74                	lw	a3,116(a4)
  1a:	80000637          	lui	a2,0x80000
  1e:	fff64593          	not	a1,a2
  22:	8eed                	and	a3,a3,a1
  24:	db74                	sw	a3,116(a4)

00000026 <.LBB69>:
  26:	473c                	lw	a5,72(a4)
  28:	00040413          	mv	s0,s0
			28: R_RISCV_LO12_I	bl_env
			28: R_RISCV_RELAX	*ABS*

0000002c <.LBB72>:
  2c:	8fed                	and	a5,a5,a1
  2e:	8fd1                	or	a5,a5,a2
  30:	c73c                	sw	a5,72(a4)

00000032 <.LBE73>:
  32:	00042223          	sw	zero,4(s0) # 4 <bl_wakeup+0x4>

00000036 <.LBB74>:
  36:	44b087b7          	lui	a5,0x44b08

0000003a <.L27>:
  3a:	57f8                	lw	a4,108(a5)

0000003c <.LBE77>:
  3c:	8b11                	andi	a4,a4,4
  3e:	df75                	beqz	a4,3a <.L27>
			3e: R_RISCV_RVC_BRANCH	.L27

00000040 <.LBB78>:
  40:	4711                	li	a4,4
  42:	dbb8                	sw	a4,112(a5)

00000044 <.LBB80>:
  44:	5bf8                	lw	a4,116(a5)
  46:	800006b7          	lui	a3,0x80000
  4a:	8f55                	or	a4,a4,a3
  4c:	dbf8                	sw	a4,116(a5)

0000004e <.LBE80>:
  4e:	00044483          	lbu	s1,0(s0)
  52:	ec81                	bnez	s1,6a <.L28>
			52: R_RISCV_RVC_BRANCH	.L28

00000054 <.L31>:
  54:	44b08737          	lui	a4,0x44b08
  58:	473c                	lw	a5,72(a4)
  5a:	0786                	slli	a5,a5,0x1
  5c:	8385                	srli	a5,a5,0x1
  5e:	c73c                	sw	a5,72(a4)

00000060 <.L25>:
  60:	40b2                	lw	ra,12(sp)
  62:	4422                	lw	s0,8(sp)
  64:	4492                	lw	s1,4(sp)
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

0000006a <.L28>:
  6a:	0492                	slli	s1,s1,0x4

0000006c <.LVL36>:
  6c:	f0f4f793          	andi	a5,s1,-241
  70:	cf99                	beqz	a5,8e <.L29>
			70: R_RISCV_RVC_BRANCH	.L29
  72:	000005b7          	lui	a1,0x0
			72: R_RISCV_HI20	.LC0
			72: R_RISCV_RELAX	*ABS*
  76:	00000537          	lui	a0,0x0
			76: R_RISCV_HI20	.LC1
			76: R_RISCV_RELAX	*ABS*
  7a:	5b900613          	li	a2,1465
  7e:	00058593          	mv	a1,a1
			7e: R_RISCV_LO12_I	.LC0
			7e: R_RISCV_RELAX	*ABS*
  82:	00050513          	mv	a0,a0
			82: R_RISCV_LO12_I	.LC1
			82: R_RISCV_RELAX	*ABS*
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	assert_err
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL36+0x1a>

0000008e <.L29>:
  8e:	44b007b7          	lui	a5,0x44b00
  92:	df84                	sw	s1,56(a5)

00000094 <.LBE84>:
  94:	00044703          	lbu	a4,0(s0)

00000098 <.LBB86>:
  98:	44b006b7          	lui	a3,0x44b00

0000009c <.L30>:
  9c:	5e9c                	lw	a5,56(a3)

0000009e <.LBE89>:
  9e:	8bbd                	andi	a5,a5,15
  a0:	fef71ee3          	bne	a4,a5,9c <.L30>
			a0: R_RISCV_BRANCH	.L30
  a4:	bf45                	j	54 <.L31>
			a4: R_RISCV_RVC_JUMP	.L31

Disassembly of section .text.bl_nap_calculate:

00000000 <bl_nap_calculate>:
   0:	44b087b7          	lui	a5,0x44b08
   4:	08c7a803          	lw	a6,140(a5) # 44b0808c <.LASF63+0x44b034b9>

00000008 <.LBB101>:
   8:	44b00637          	lui	a2,0x44b00
   c:	4701                	li	a4,0

0000000e <.LBE101>:
   e:	557d                	li	a0,-1

00000010 <.LBB102>:
  10:	4885                	li	a7,1
  12:	12860313          	addi	t1,a2,296 # 44b00128 <.LASF63+0x44afb555>

00000016 <.LBE102>:
  16:	45a5                	li	a1,9

00000018 <.L47>:
  18:	00e897b3          	sll	a5,a7,a4
  1c:	0107f7b3          	and	a5,a5,a6
  20:	cf89                	beqz	a5,3a <.L43>
			20: R_RISCV_RVC_BRANCH	.L43

00000022 <.LBB103>:
  22:	00271793          	slli	a5,a4,0x2
  26:	979a                	add	a5,a5,t1
  28:	439c                	lw	a5,0(a5)

0000002a <.LBB105>:
  2a:	12062683          	lw	a3,288(a2)

0000002e <.LBE105>:
  2e:	00f6fa63          	bgeu	a3,a5,42 <.L44>
			2e: R_RISCV_BRANCH	.L44
  32:	8f95                	sub	a5,a5,a3

00000034 <.L45>:
  34:	00a7f363          	bgeu	a5,a0,3a <.L43>
			34: R_RISCV_BRANCH	.L43
  38:	853e                	mv	a0,a5

0000003a <.L43>:
  3a:	0705                	addi	a4,a4,1

0000003c <.LVL46>:
  3c:	fcb71ee3          	bne	a4,a1,18 <.L47>
			3c: R_RISCV_BRANCH	.L47

00000040 <.LBE112>:
  40:	8082                	ret

00000042 <.L44>:
  42:	16fd                	addi	a3,a3,-1

00000044 <.LVL48>:
  44:	40f687b3          	sub	a5,a3,a5

00000048 <.LVL49>:
  48:	b7f5                	j	34 <.L45>
			48: R_RISCV_RVC_JUMP	.L45

Disassembly of section .text.bl_nap_call:

00000000 <bl_nap_call>:
   0:	4501                	li	a0,0

00000002 <.LVL51>:
   2:	8082                	ret

Disassembly of section .text.bl_nap_hook_register:

00000000 <bl_nap_hook_register>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*

00000006 <.LVL53>:
   6:	1141                	addi	sp,sp,-16
   8:	00050513          	mv	a0,a0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	notifier_chain_regsiter
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL53+0x8>

00000016 <.LVL54>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

Disassembly of section .text.bl_nap_hook_register_fromCritical:

00000000 <bl_nap_hook_register_fromCritical>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*

00000006 <.LVL56>:
   6:	1141                	addi	sp,sp,-16
   8:	00050513          	mv	a0,a0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	notifier_chain_regsiter_fromCritical
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL56+0x8>

00000016 <.LVL57>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

Disassembly of section .text.bl_nap_hook_unregister:

00000000 <bl_nap_hook_unregister>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*

00000006 <.LVL59>:
   6:	1141                	addi	sp,sp,-16
   8:	00050513          	mv	a0,a0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	notifier_chain_unregsiter
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL59+0x8>

00000016 <.LVL60>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

Disassembly of section .text.bl_nap_hook_unregister_fromCritical:

00000000 <bl_nap_hook_unregister_fromCritical>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*

00000006 <.LVL62>:
   6:	1141                	addi	sp,sp,-16
   8:	00050513          	mv	a0,a0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	notifier_chain_unregsiter_fromCritical
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL62+0x8>

00000016 <.LVL63>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

Disassembly of section .text.bl_nap_hook_call:

00000000 <bl_nap_hook_call>:
   0:	862e                	mv	a2,a1
   2:	85aa                	mv	a1,a0

00000004 <.LVL65>:
   4:	00000537          	lui	a0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL66>:
   8:	1141                	addi	sp,sp,-16
   a:	00050513          	mv	a0,a0
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	notifier_chain_call
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL66+0x8>

00000018 <.LVL67>:
  18:	40b2                	lw	ra,12(sp)
  1a:	4501                	li	a0,0
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

Disassembly of section .text.bl_nap_hook_call_fromCritical:

00000000 <bl_nap_hook_call_fromCritical>:
   0:	862e                	mv	a2,a1
   2:	85aa                	mv	a1,a0

00000004 <.LVL69>:
   4:	00000537          	lui	a0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL70>:
   8:	1141                	addi	sp,sp,-16
   a:	00050513          	mv	a0,a0
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	notifier_chain_call_fromeCritical
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL70+0x8>

00000018 <.LVL71>:
  18:	40b2                	lw	ra,12(sp)
  1a:	4501                	li	a0,0
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret
