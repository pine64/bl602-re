
libbl602_wifi/mm_task.o:     file format elf32-littleriscv


Disassembly of section .text.mm_monitor_channel_req_handler:

00000000 <mm_monitor_channel_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	05f00513          	li	a0,95

00000008 <.LVL1>:
   8:	84ae                	mv	s1,a1
   a:	85b6                	mv	a1,a3

0000000c <.LVL2>:
   c:	02800693          	li	a3,40

00000010 <.LVL3>:
  10:	c422                	sw	s0,8(sp)
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_msg_alloc
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL3+0x4>

0000001c <.LVL4>:
  1c:	4785                	li	a5,1
  1e:	4094                	lw	a3,0(s1)
  20:	c11c                	sw	a5,0(a0)
  22:	111117b7          	lui	a5,0x11111
  26:	11178793          	addi	a5,a5,273 # 11111111 <.LASF570+0x1110d180>
  2a:	c55c                	sw	a5,12(a0)
  2c:	222227b7          	lui	a5,0x22222
  30:	22278793          	addi	a5,a5,546 # 22222222 <.LASF570+0x2221e291>
  34:	c91c                	sw	a5,16(a0)
  36:	333337b7          	lui	a5,0x33333
  3a:	33378793          	addi	a5,a5,819 # 33333333 <.LASF570+0x3332f3a2>
  3e:	c95c                	sw	a5,20(a0)
  40:	444447b7          	lui	a5,0x44444
  44:	44478793          	addi	a5,a5,1092 # 44444444 <.LASF570+0x444404b3>
  48:	cd1c                	sw	a5,24(a0)
  4a:	555557b7          	lui	a5,0x55555
  4e:	55578793          	addi	a5,a5,1365 # 55555555 <.LASF570+0x555515c4>
  52:	cd5c                	sw	a5,28(a0)
  54:	666667b7          	lui	a5,0x66666
  58:	66678793          	addi	a5,a5,1638 # 66666666 <.LASF570+0x666626d5>
  5c:	d11c                	sw	a5,32(a0)
  5e:	777777b7          	lui	a5,0x77777
  62:	77778793          	addi	a5,a5,1911 # 77777777 <.LASF570+0x777737e6>
  66:	00052423          	sw	zero,8(a0)
  6a:	d15c                	sw	a5,36(a0)
  6c:	4090                	lw	a2,0(s1)
  6e:	842a                	mv	s0,a0

00000070 <.LVL5>:
  70:	c150                	sw	a2,4(a0)
  72:	40cc                	lw	a1,4(s1)
  74:	0642                	slli	a2,a2,0x10
  76:	8241                	srli	a2,a2,0x10
  78:	e98d                	bnez	a1,aa <.L2>
			78: R_RISCV_RVC_BRANCH	.L2

0000007a <.L6>:
  7a:	06c2                	slli	a3,a3,0x10
  7c:	82c1                	srli	a3,a3,0x10

0000007e <.LVL7>:
  7e:	4781                	li	a5,0
  80:	4701                	li	a4,0
  82:	00b035b3          	snez	a1,a1
  86:	4501                	li	a0,0
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	phy_set_channel
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL7+0xa>

00000090 <.LVL8>:
  90:	8522                	mv	a0,s0
  92:	00042023          	sw	zero,0(s0)
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	ke_msg_send
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LVL8+0x6>

0000009e <.LVL9>:
  9e:	40b2                	lw	ra,12(sp)
  a0:	4422                	lw	s0,8(sp)

000000a2 <.LVL10>:
  a2:	4492                	lw	s1,4(sp)

000000a4 <.LVL11>:
  a4:	4501                	li	a0,0
  a6:	0141                	addi	sp,sp,16
  a8:	8082                	ret

000000aa <.L2>:
  aa:	449c                	lw	a5,8(s1)
  ac:	00a60693          	addi	a3,a2,10

000000b0 <.LVL13>:
  b0:	f7e9                	bnez	a5,7a <.L6>
			b0: R_RISCV_RVC_BRANCH	.L6
  b2:	ff660693          	addi	a3,a2,-10
  b6:	b7d1                	j	7a <.L6>
			b6: R_RISCV_RVC_JUMP	.L6

Disassembly of section .text.mm_monitor_enable_req_handler:

00000000 <mm_monitor_enable_req_handler>:
   0:	715d                	addi	sp,sp,-80
   2:	c2a6                	sw	s1,68(sp)
   4:	05d00513          	li	a0,93

00000008 <.LVL15>:
   8:	84ae                	mv	s1,a1
   a:	85b6                	mv	a1,a3

0000000c <.LVL16>:
   c:	02800693          	li	a3,40

00000010 <.LVL17>:
  10:	c686                	sw	ra,76(sp)
  12:	c4a2                	sw	s0,72(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_msg_alloc
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL17+0x4>

0000001c <.LVL18>:
  1c:	4785                	li	a5,1
  1e:	c11c                	sw	a5,0(a0)
  20:	111117b7          	lui	a5,0x11111
  24:	11178793          	addi	a5,a5,273 # 11111111 <.LASF570+0x1110d180>
  28:	c55c                	sw	a5,12(a0)
  2a:	222227b7          	lui	a5,0x22222
  2e:	22278793          	addi	a5,a5,546 # 22222222 <.LASF570+0x2221e291>
  32:	c91c                	sw	a5,16(a0)
  34:	333337b7          	lui	a5,0x33333
  38:	33378793          	addi	a5,a5,819 # 33333333 <.LASF570+0x3332f3a2>
  3c:	c95c                	sw	a5,20(a0)
  3e:	444447b7          	lui	a5,0x44444
  42:	44478793          	addi	a5,a5,1092 # 44444444 <.LASF570+0x444404b3>
  46:	cd1c                	sw	a5,24(a0)
  48:	555557b7          	lui	a5,0x55555
  4c:	55578793          	addi	a5,a5,1365 # 55555555 <.LASF570+0x555515c4>
  50:	cd5c                	sw	a5,28(a0)
  52:	666667b7          	lui	a5,0x66666
  56:	66678793          	addi	a5,a5,1638 # 66666666 <.LASF570+0x666626d5>
  5a:	d11c                	sw	a5,32(a0)
  5c:	777777b7          	lui	a5,0x77777
  60:	77778793          	addi	a5,a5,1911 # 77777777 <.LASF570+0x777737e6>
  64:	00052423          	sw	zero,8(a0)
  68:	d15c                	sw	a5,36(a0)
  6a:	409c                	lw	a5,0(s1)
  6c:	842a                	mv	s0,a0

0000006e <.LVL19>:
  6e:	04000613          	li	a2,64
  72:	c15c                	sw	a5,4(a0)
  74:	4581                	li	a1,0
  76:	850a                	mv	a0,sp
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	memset
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL19+0xa>

00000080 <.LVL20>:
  80:	850a                	mv	a0,sp
  82:	c002                	sw	zero,0(sp)
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	phy_init
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL20+0x4>

0000008c <.LVL21>:
  8c:	6685                	lui	a3,0x1
  8e:	98568693          	addi	a3,a3,-1659 # 985 <.LASF323+0x2>
  92:	4781                	li	a5,0
  94:	4701                	li	a4,0
  96:	8636                	mv	a2,a3
  98:	4581                	li	a1,0
  9a:	4501                	li	a0,0
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	phy_set_channel
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LVL21+0x10>

000000a4 <.LVL22>:
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	mm_active
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL22>

000000ac <.LVL23>:
  ac:	8522                	mv	a0,s0
  ae:	00042023          	sw	zero,0(s0)
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	ke_msg_send
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL23+0x6>

000000ba <.LVL24>:
  ba:	40b6                	lw	ra,76(sp)
  bc:	4426                	lw	s0,72(sp)

000000be <.LVL25>:
  be:	4496                	lw	s1,68(sp)

000000c0 <.LVL26>:
  c0:	4501                	li	a0,0
  c2:	6161                	addi	sp,sp,80
  c4:	8082                	ret

Disassembly of section .text.mm_cfg_rssi_req_handler:

00000000 <mm_cfg_rssi_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c226                	sw	s1,4(sp)
   a:	0005c483          	lbu	s1,0(a1)
   e:	5d800693          	li	a3,1496

00000012 <.LVL29>:
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	vif_info_tab
			12: R_RISCV_RELAX	*ABS*
  16:	02d486b3          	mul	a3,s1,a3
  1a:	00078713          	mv	a4,a5
			1a: R_RISCV_LO12_I	vif_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	892e                	mv	s2,a1
  20:	00078413          	mv	s0,a5
			20: R_RISCV_LO12_I	vif_info_tab
			20: R_RISCV_RELAX	*ABS*
  24:	9736                	add	a4,a4,a3
  26:	05674703          	lbu	a4,86(a4)
  2a:	c305                	beqz	a4,4a <.L10>
			2a: R_RISCV_RVC_BRANCH	.L10
  2c:	6605                	lui	a2,0x1

0000002e <.LVL30>:
  2e:	000005b7          	lui	a1,0x0
			2e: R_RISCV_HI20	.LC0
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL31>:
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	.LC1
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL32>:
  36:	8fe60613          	addi	a2,a2,-1794 # 8fe <.LASF729+0x8>
  3a:	00058593          	mv	a1,a1
			3a: R_RISCV_LO12_I	.LC0
			3a: R_RISCV_RELAX	*ABS*
  3e:	00050513          	mv	a0,a0
			3e: R_RISCV_LO12_I	.LC1
			3e: R_RISCV_RELAX	*ABS*
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	assert_err
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL32+0xc>

0000004a <.L10>:
  4a:	5d800793          	li	a5,1496
  4e:	02f487b3          	mul	a5,s1,a5
  52:	00190703          	lb	a4,1(s2)
  56:	4501                	li	a0,0
  58:	97a2                	add	a5,a5,s0
  5a:	06e78b23          	sb	a4,118(a5) # 76 <.LFE1947>
  5e:	00294703          	lbu	a4,2(s2)
  62:	06078c23          	sb	zero,120(a5)
  66:	06e78ba3          	sb	a4,119(a5)
  6a:	40b2                	lw	ra,12(sp)
  6c:	4422                	lw	s0,8(sp)
  6e:	4492                	lw	s1,4(sp)
  70:	4902                	lw	s2,0(sp)

00000072 <.LVL35>:
  72:	0141                	addi	sp,sp,16
  74:	8082                	ret

Disassembly of section .text.mm_set_ps_options_req_handler:

00000000 <mm_set_ps_options_req_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d226                	sw	s1,36(sp)
   c:	0005c483          	lbu	s1,0(a1) # 0 <mm_set_ps_options_req_handler>
  10:	89b2                	mv	s3,a2
  12:	5d800613          	li	a2,1496

00000016 <.LVL38>:
  16:	02c48633          	mul	a2,s1,a2
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	vif_info_tab
			1a: R_RISCV_RELAX	*ABS*
  1e:	00078713          	mv	a4,a5
			1e: R_RISCV_LO12_I	vif_info_tab
			1e: R_RISCV_RELAX	*ABS*
  22:	892e                	mv	s2,a1
  24:	00078413          	mv	s0,a5
			24: R_RISCV_LO12_I	vif_info_tab
			24: R_RISCV_RELAX	*ABS*
  28:	9732                	add	a4,a4,a2
  2a:	05674703          	lbu	a4,86(a4)
  2e:	c315                	beqz	a4,52 <.L16>
			2e: R_RISCV_RVC_BRANCH	.L16
  30:	6605                	lui	a2,0x1
  32:	000005b7          	lui	a1,0x0
			32: R_RISCV_HI20	.LC0
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL39>:
  36:	00000537          	lui	a0,0x0
			36: R_RISCV_HI20	.LC1
			36: R_RISCV_RELAX	*ABS*

0000003a <.LVL40>:
  3a:	81560613          	addi	a2,a2,-2027 # 815 <.LASF782+0x2>
  3e:	00058593          	mv	a1,a1
			3e: R_RISCV_LO12_I	.LC0
			3e: R_RISCV_RELAX	*ABS*
  42:	00050513          	mv	a0,a0
			42: R_RISCV_LO12_I	.LC1
			42: R_RISCV_RELAX	*ABS*
  46:	c636                	sw	a3,12(sp)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	assert_err
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL40+0xe>

00000050 <.LVL41>:
  50:	46b2                	lw	a3,12(sp)

00000052 <.L16>:
  52:	5d800793          	li	a5,1496
  56:	02f487b3          	mul	a5,s1,a5
  5a:	00295703          	lhu	a4,2(s2)
  5e:	864e                	mv	a2,s3
  60:	04c00513          	li	a0,76
  64:	85b6                	mv	a1,a3
  66:	97a2                	add	a5,a5,s0
  68:	04e79e23          	sh	a4,92(a5) # 5c <.L16+0xa>
  6c:	00494703          	lbu	a4,4(s2)
  70:	04e78f23          	sb	a4,94(a5)
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	ke_msg_send_basic
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.L16+0x22>

0000007c <.LVL42>:
  7c:	50b2                	lw	ra,44(sp)
  7e:	5422                	lw	s0,40(sp)
  80:	5492                	lw	s1,36(sp)
  82:	5902                	lw	s2,32(sp)

00000084 <.LVL44>:
  84:	49f2                	lw	s3,28(sp)
  86:	4501                	li	a0,0
  88:	6145                	addi	sp,sp,48
  8a:	8082                	ret

Disassembly of section .text.mm_tim_update_req_handler:

00000000 <mm_tim_update_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	852e                	mv	a0,a1

00000004 <.LVL46>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	mm_tim_update
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL46+0x2>

0000000e <.LVL47>:
   e:	40b2                	lw	ra,12(sp)
  10:	4505                	li	a0,1
  12:	0141                	addi	sp,sp,16
  14:	8082                	ret

Disassembly of section .text.mm_bcn_change_req_handler:

00000000 <mm_bcn_change_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	852e                	mv	a0,a1

00000004 <.LVL49>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	mm_bcn_change
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL49+0x2>

0000000e <.LVL50>:
   e:	40b2                	lw	ra,12(sp)
  10:	4505                	li	a0,1
  12:	0141                	addi	sp,sp,16
  14:	8082                	ret

Disassembly of section .text.mm_remain_on_channel_req_handler:

00000000 <mm_remain_on_channel_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84ae                	mv	s1,a1
   6:	8526                	mv	a0,s1

00000008 <.LVL52>:
   8:	85b6                	mv	a1,a3

0000000a <.LVL53>:
   a:	cc22                	sw	s0,24(sp)
   c:	c632                	sw	a2,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	8436                	mv	s0,a3
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	chan_roc_req
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL53+0xa>

0000001c <.LVL54>:
  1c:	4632                	lw	a2,12(sp)
  1e:	c41d                	beqz	s0,4c <.L26>
			1e: R_RISCV_RVC_BRANCH	.L26
  20:	892a                	mv	s2,a0

00000022 <.LBB136>:
  22:	468d                	li	a3,3
  24:	85a2                	mv	a1,s0
  26:	04700513          	li	a0,71

0000002a <.LVL55>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ke_msg_alloc
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL55>

00000032 <.LVL56>:
  32:	0004c703          	lbu	a4,0(s1)
  36:	012500a3          	sb	s2,1(a0) # 1 <mm_remain_on_channel_req_handler+0x1>
  3a:	00e50023          	sb	a4,0(a0)
  3e:	4711                	li	a4,4
  40:	00e50123          	sb	a4,2(a0)
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ke_msg_send
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL56+0x12>

0000004c <.L26>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4462                	lw	s0,24(sp)
  50:	44d2                	lw	s1,20(sp)

00000052 <.LVL58>:
  52:	4942                	lw	s2,16(sp)
  54:	4501                	li	a0,0
  56:	6105                	addi	sp,sp,32
  58:	8082                	ret

Disassembly of section .text.mm_sta_del_req_handler:

00000000 <mm_sta_del_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	0005c503          	lbu	a0,0(a1) # 0 <mm_sta_del_req_handler>

00000008 <.LVL60>:
   8:	c632                	sw	a2,12(sp)
   a:	c436                	sw	a3,8(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	mm_sta_del
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL60+0x4>

00000014 <.LVL61>:
  14:	46a2                	lw	a3,8(sp)
  16:	4632                	lw	a2,12(sp)
  18:	4535                	li	a0,13
  1a:	85b6                	mv	a1,a3
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ke_msg_send_basic
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL61+0x8>

00000024 <.LVL62>:
  24:	40f2                	lw	ra,28(sp)
  26:	4501                	li	a0,0
  28:	6105                	addi	sp,sp,32
  2a:	8082                	ret

Disassembly of section .text.mm_sta_add_req_handler:

00000000 <mm_sta_add_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	452d                	li	a0,11

00000006 <.LVL64>:
   6:	84ae                	mv	s1,a1
   8:	85b6                	mv	a1,a3

0000000a <.LVL65>:
   a:	468d                	li	a3,3

0000000c <.LVL66>:
   c:	c606                	sw	ra,12(sp)
   e:	c422                	sw	s0,8(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_msg_alloc
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL66+0x4>

00000018 <.LVL67>:
  18:	842a                	mv	s0,a0

0000001a <.LVL68>:
  1a:	00250613          	addi	a2,a0,2
  1e:	00150593          	addi	a1,a0,1
  22:	8526                	mv	a0,s1
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	mm_sta_add
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL68+0xa>

0000002c <.LVL69>:
  2c:	00a40023          	sb	a0,0(s0)
  30:	8522                	mv	a0,s0
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	ke_msg_send
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL69+0x6>

0000003a <.LVL70>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)

0000003e <.LVL71>:
  3e:	4492                	lw	s1,4(sp)

00000040 <.LVL72>:
  40:	4501                	li	a0,0
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

Disassembly of section .text.mm_key_del_req_handler:

00000000 <mm_key_del_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB141>:
   a:	44b007b7          	lui	a5,0x44b00
   e:	0d87a783          	lw	a5,216(a5) # 44b000d8 <.LASF570+0x44afc147>

00000012 <.LBE141>:
  12:	0005c703          	lbu	a4,0(a1)
  16:	842e                	mv	s0,a1

00000018 <.LBB142>:
  18:	83e1                	srli	a5,a5,0x18

0000001a <.LBE142>:
  1a:	0785                	addi	a5,a5,1
  1c:	8932                	mv	s2,a2
  1e:	84b6                	mv	s1,a3
  20:	02e7d063          	bge	a5,a4,40 <.L36>
			20: R_RISCV_BRANCH	.L36
  24:	000005b7          	lui	a1,0x0
			24: R_RISCV_HI20	.LC0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL75>:
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC2
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL76>:
  2c:	56e00613          	li	a2,1390

00000030 <.LVL77>:
  30:	00058593          	mv	a1,a1
			30: R_RISCV_LO12_I	.LC0
			30: R_RISCV_RELAX	*ABS*
  34:	00050513          	mv	a0,a0
			34: R_RISCV_LO12_I	.LC2
			34: R_RISCV_RELAX	*ABS*
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	assert_err
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL77+0x8>

00000040 <.L36>:
  40:	00044503          	lbu	a0,0(s0)
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	mm_sec_machwkey_del
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L36+0x4>

0000004c <.LVL79>:
  4c:	864a                	mv	a2,s2
  4e:	85a6                	mv	a1,s1
  50:	02700513          	li	a0,39
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	ke_msg_send_basic
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL79+0x8>

0000005c <.LVL80>:
  5c:	40b2                	lw	ra,12(sp)
  5e:	4422                	lw	s0,8(sp)

00000060 <.LVL81>:
  60:	4492                	lw	s1,4(sp)
  62:	4902                	lw	s2,0(sp)
  64:	4501                	li	a0,0
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

Disassembly of section .text.mm_key_add_req_handler:

00000000 <mm_key_add_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	02500513          	li	a0,37

00000008 <.LVL83>:
   8:	842e                	mv	s0,a1
   a:	85b6                	mv	a1,a3

0000000c <.LVL84>:
   c:	4689                	li	a3,2

0000000e <.LVL85>:
   e:	c226                	sw	s1,4(sp)
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ke_msg_alloc
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL85+0x4>

0000001a <.LVL86>:
  1a:	00044703          	lbu	a4,0(s0)
  1e:	478d                	li	a5,3
  20:	84aa                	mv	s1,a0

00000022 <.LVL87>:
  22:	02e7f063          	bgeu	a5,a4,42 <.L39>
			22: R_RISCV_BRANCH	.L39
  26:	000005b7          	lui	a1,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC3
			2a: R_RISCV_RELAX	*ABS*
  2e:	53d00613          	li	a2,1341
  32:	00058593          	mv	a1,a1
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC3
			36: R_RISCV_RELAX	*ABS*
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	assert_err
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL87+0x18>

00000042 <.L39>:
  42:	00444703          	lbu	a4,4(s0)
  46:	02000793          	li	a5,32
  4a:	02e7f063          	bgeu	a5,a4,6a <.L40>
			4a: R_RISCV_BRANCH	.L40
  4e:	000005b7          	lui	a1,0x0
			4e: R_RISCV_HI20	.LC0
			4e: R_RISCV_RELAX	*ABS*
  52:	00000537          	lui	a0,0x0
			52: R_RISCV_HI20	.LC4
			52: R_RISCV_RELAX	*ABS*
  56:	54100613          	li	a2,1345
  5a:	00058593          	mv	a1,a1
			5a: R_RISCV_LO12_I	.LC0
			5a: R_RISCV_RELAX	*ABS*
  5e:	00050513          	mv	a0,a0
			5e: R_RISCV_LO12_I	.LC4
			5e: R_RISCV_RELAX	*ABS*
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	assert_err
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.L39+0x20>

0000006a <.L40>:
  6a:	02844703          	lbu	a4,40(s0)
  6e:	4795                	li	a5,5
  70:	02e7f063          	bgeu	a5,a4,90 <.L41>
			70: R_RISCV_BRANCH	.L41
  74:	000005b7          	lui	a1,0x0
			74: R_RISCV_HI20	.LC0
			74: R_RISCV_RELAX	*ABS*
  78:	00000537          	lui	a0,0x0
			78: R_RISCV_HI20	.LC5
			78: R_RISCV_RELAX	*ABS*
  7c:	54400613          	li	a2,1348
  80:	00058593          	mv	a1,a1
			80: R_RISCV_LO12_I	.LC0
			80: R_RISCV_RELAX	*ABS*
  84:	00050513          	mv	a0,a0
			84: R_RISCV_LO12_I	.LC5
			84: R_RISCV_RELAX	*ABS*
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	assert_err
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.L40+0x1e>

00000090 <.L41>:
  90:	8522                	mv	a0,s0
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	mm_sec_machwkey_wr
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.L41+0x2>

0000009a <.LVL91>:
  9a:	00a480a3          	sb	a0,1(s1)
  9e:	00048023          	sb	zero,0(s1)
  a2:	8526                	mv	a0,s1

000000a4 <.LVL92>:
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	ke_msg_send
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL92>

000000ac <.LVL93>:
  ac:	40b2                	lw	ra,12(sp)
  ae:	4422                	lw	s0,8(sp)

000000b0 <.LVL94>:
  b0:	4492                	lw	s1,4(sp)

000000b2 <.LVL95>:
  b2:	4501                	li	a0,0
  b4:	0141                	addi	sp,sp,16
  b6:	8082                	ret

Disassembly of section .text.mm_set_power_req_handler:

00000000 <mm_set_power_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	892e                	mv	s2,a1
   6:	c226                	sw	s1,4(sp)
   8:	85b6                	mv	a1,a3

0000000a <.LVL97>:
   a:	00094483          	lbu	s1,0(s2)
   e:	4689                	li	a3,2

00000010 <.LVL99>:
  10:	02f00513          	li	a0,47

00000014 <.LVL100>:
  14:	c606                	sw	ra,12(sp)
  16:	c422                	sw	s0,8(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL100+0x4>

00000020 <.LVL101>:
  20:	5d800713          	li	a4,1496
  24:	02e484b3          	mul	s1,s1,a4
  28:	842a                	mv	s0,a0

0000002a <.LVL103>:
  2a:	00190783          	lb	a5,1(s2)
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	vif_info_tab
			2e: R_RISCV_RELAX	*ABS*
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	vif_info_tab
			32: R_RISCV_RELAX	*ABS*
  36:	8622                	mv	a2,s0
  38:	00140593          	addi	a1,s0,1
  3c:	9526                	add	a0,a0,s1
  3e:	04f50d23          	sb	a5,90(a0) # 5a <.LVL104>
  42:	05950783          	lb	a5,89(a0)
  46:	00f400a3          	sb	a5,1(s0)
  4a:	07f00793          	li	a5,127
  4e:	04f50ca3          	sb	a5,89(a0)
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	tpc_update_vif_tx_power
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL103+0x28>

0000005a <.LVL104>:
  5a:	8522                	mv	a0,s0
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	ke_msg_send
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL104+0x2>

00000064 <.LVL105>:
  64:	40b2                	lw	ra,12(sp)
  66:	4422                	lw	s0,8(sp)

00000068 <.LVL106>:
  68:	4492                	lw	s1,4(sp)
  6a:	4902                	lw	s2,0(sp)

0000006c <.LVL107>:
  6c:	4501                	li	a0,0
  6e:	0141                	addi	sp,sp,16
  70:	8082                	ret

Disassembly of section .text.mm_set_idle_req_handler:

00000000 <mm_set_idle_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL109>:
   4:	cc22                	sw	s0,24(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c62e                	sw	a1,12(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	8432                	mv	s0,a2
  10:	8936                	mv	s2,a3
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL109+0xe>

0000001a <.LVL110>:
  1a:	478d                	li	a5,3
  1c:	45b2                	lw	a1,12(sp)
  1e:	00f51a63          	bne	a0,a5,32 <.L46>
			1e: R_RISCV_BRANCH	.L46

00000022 <.L53>:
  22:	4489                	li	s1,2

00000024 <.L45>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	8526                	mv	a0,s1
  2a:	4942                	lw	s2,16(sp)
  2c:	44d2                	lw	s1,20(sp)
  2e:	6105                	addi	sp,sp,32

00000030 <.LVL111>:
  30:	8082                	ret

00000032 <.L46>:
  32:	0005c703          	lbu	a4,0(a1) # 0 <mm_set_idle_req_handler>
  36:	000007b7          	lui	a5,0x0
			36: R_RISCV_HI20	mm_env
			36: R_RISCV_RELAX	*ABS*
  3a:	00078693          	mv	a3,a5
			3a: R_RISCV_LO12_I	mm_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	02e68123          	sb	a4,34(a3)
  42:	00078493          	mv	s1,a5
			42: R_RISCV_LO12_I	mm_env
			42: R_RISCV_RELAX	*ABS*
  46:	8522                	mv	a0,s0
  48:	c33d                	beqz	a4,ae <.L48>
			48: R_RISCV_RVC_BRANCH	.L48
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ke_state_get
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.L46+0x18>

00000052 <.LVL113>:
  52:	cd19                	beqz	a0,70 <.L49>
			52: R_RISCV_RVC_BRANCH	.L49
  54:	4489                	li	s1,2
  56:	fc9507e3          	beq	a0,s1,24 <.L45>
			56: R_RISCV_BRANCH	.L45
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	hal_machw_idle_req
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL113+0x8>

00000062 <.LVL114>:
  62:	4589                	li	a1,2
  64:	8522                	mv	a0,s0
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	ke_state_set
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL114+0x4>

0000006e <.LVL115>:
  6e:	bf5d                	j	24 <.L45>
			6e: R_RISCV_RVC_JUMP	.L45

00000070 <.L49>:
  70:	44b007b7          	lui	a5,0x44b00
  74:	5f9c                	lw	a5,56(a5)

00000076 <.LBE143>:
  76:	8bbd                	andi	a5,a5,15
  78:	cf99                	beqz	a5,96 <.L51>
			78: R_RISCV_RVC_BRANCH	.L51
  7a:	000005b7          	lui	a1,0x0
			7a: R_RISCV_HI20	.LC0
			7a: R_RISCV_RELAX	*ABS*
  7e:	00000537          	lui	a0,0x0
			7e: R_RISCV_HI20	.LC6
			7e: R_RISCV_RELAX	*ABS*
  82:	47d00613          	li	a2,1149
  86:	00058593          	mv	a1,a1
			86: R_RISCV_LO12_I	.LC0
			86: R_RISCV_RELAX	*ABS*
  8a:	00050513          	mv	a0,a0
			8a: R_RISCV_LO12_I	.LC6
			8a: R_RISCV_RELAX	*ABS*
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	assert_err
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LBE143+0x18>

00000096 <.L51>:
  96:	00049923          	sh	zero,18(s1)

0000009a <.L52>:
  9a:	8622                	mv	a2,s0
  9c:	85ca                	mv	a1,s2
  9e:	02300513          	li	a0,35
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	ke_msg_send_basic
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.L52+0x8>

000000aa <.LVL118>:
  aa:	4481                	li	s1,0
  ac:	bfa5                	j	24 <.L45>
			ac: R_RISCV_RVC_JUMP	.L45

000000ae <.L48>:
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	ke_state_get
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L48>

000000b6 <.LVL119>:
  b6:	4789                	li	a5,2
  b8:	f6f505e3          	beq	a0,a5,22 <.L53>
			b8: R_RISCV_BRANCH	.L53
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	mm_active
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL119+0x6>

000000c4 <.LVL120>:
  c4:	bfd9                	j	9a <.L52>
			c4: R_RISCV_RVC_JUMP	.L52

Disassembly of section .text.mm_reset_req_handler:

00000000 <mm_reset_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c632                	sw	a2,12(sp)
   6:	c436                	sw	a3,8(sp)

00000008 <.LBB148>:
   8:	30047073          	csrci	mstatus,8

0000000c <.LBE148>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	hal_machw_stop
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LBE148>

00000014 <.LVL122>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	phy_stop
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL122>

0000001c <.LVL123>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	me_init
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL123>

00000024 <.LVL124>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	mm_init
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL124>

0000002c <.LBB149>:
  2c:	30046073          	csrsi	mstatus,8

00000030 <.LBE149>:
  30:	46a2                	lw	a3,8(sp)
  32:	4632                	lw	a2,12(sp)
  34:	4505                	li	a0,1
  36:	85b6                	mv	a1,a3
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	ke_msg_send_basic
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LBE149+0x8>

00000040 <.LVL126>:
  40:	4501                	li	a0,0
  42:	4581                	li	a1,0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ke_state_set
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL126+0x4>

0000004c <.LVL127>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4501                	li	a0,0
  50:	6105                	addi	sp,sp,32
  52:	8082                	ret

Disassembly of section .text.mm_version_req_handler:

00000000 <mm_version_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	85b6                	mv	a1,a3

00000004 <.LVL129>:
   4:	4515                	li	a0,5

00000006 <.LVL130>:
   6:	46e1                	li	a3,24

00000008 <.LVL131>:
   8:	c606                	sw	ra,12(sp)
   a:	c422                	sw	s0,8(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	ke_msg_alloc
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL131+0x4>

00000014 <.LVL132>:
  14:	050407b7          	lui	a5,0x5040
  18:	c11c                	sw	a5,0(a0)

0000001a <.LBB151>:
  1a:	44b007b7          	lui	a5,0x44b00
  1e:	43d8                	lw	a4,4(a5)

00000020 <.LBE151>:
  20:	842a                	mv	s0,a0

00000022 <.LBB154>:
  22:	01050593          	addi	a1,a0,16 # 10 <.LVL131+0x8>
  26:	c158                	sw	a4,4(a0)

00000028 <.LBB155>:
  28:	479c                	lw	a5,8(a5)

0000002a <.LBE155>:
  2a:	0531                	addi	a0,a0,12
  2c:	fef52e23          	sw	a5,-4(a0)
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	phy_get_version
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LBE155+0x6>

00000038 <.LVL134>:
  38:	67a5                	lui	a5,0x9
  3a:	9df78793          	addi	a5,a5,-1569 # 89df <.LASF570+0x4a4e>
  3e:	8522                	mv	a0,s0
  40:	c85c                	sw	a5,20(s0)
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ke_msg_send
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL134+0xa>

0000004a <.LVL135>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)

0000004e <.LVL136>:
  4e:	4501                	li	a0,0
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

Disassembly of section .text.mm_start_req_handler:

00000000 <mm_start_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL138>:
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	c606                	sw	ra,12(sp)
   c:	84ae                	mv	s1,a1
   e:	8432                	mv	s0,a2
  10:	8936                	mv	s2,a3
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL138+0xe>

0000001a <.LVL139>:
  1a:	cd19                	beqz	a0,38 <.L65>
			1a: R_RISCV_RVC_BRANCH	.L65
  1c:	000005b7          	lui	a1,0x0
			1c: R_RISCV_HI20	.LC0
			1c: R_RISCV_RELAX	*ABS*
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	.LC7
			20: R_RISCV_RELAX	*ABS*
  24:	13500613          	li	a2,309
  28:	00058593          	mv	a1,a1
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC7
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	assert_err
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL139+0x16>

00000038 <.L65>:
  38:	8526                	mv	a0,s1
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	phy_init
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.L65+0x2>

00000042 <.LVL141>:
  42:	6685                	lui	a3,0x1
  44:	96c68693          	addi	a3,a3,-1684 # 96c <.LLST67+0x7>
  48:	8636                	mv	a2,a3
  4a:	4781                	li	a5,0
  4c:	4701                	li	a4,0
  4e:	4581                	li	a1,0
  50:	4501                	li	a0,0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	phy_set_channel
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL141+0x10>

0000005a <.LVL142>:
  5a:	4541                	li	a0,16
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	tpc_update_tx_power
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL142+0x2>

00000064 <.LVL143>:
  64:	40bc                	lw	a5,64(s1)
  66:	3e800713          	li	a4,1000
  6a:	8622                	mv	a2,s0
  6c:	02e787b3          	mul	a5,a5,a4
  70:	00000737          	lui	a4,0x0
			70: R_RISCV_HI20	ps_env+0x20
			70: R_RISCV_RELAX	*ABS*+0x20
  74:	85ca                	mv	a1,s2
  76:	450d                	li	a0,3
  78:	02f72023          	sw	a5,32(a4) # 20 <.LVL139+0x6>
			78: R_RISCV_LO12_S	ps_env+0x20
			78: R_RISCV_RELAX	*ABS*+0x20
  7c:	0444d703          	lhu	a4,68(s1)
  80:	000007b7          	lui	a5,0x0
			80: R_RISCV_HI20	mm_env+0x20
			80: R_RISCV_RELAX	*ABS*+0x20
  84:	02e79023          	sh	a4,32(a5) # 20 <.LVL139+0x6>
			84: R_RISCV_LO12_S	mm_env+0x20
			84: R_RISCV_RELAX	*ABS*+0x20
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	ke_msg_send_basic
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL143+0x24>

00000090 <.LVL144>:
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	mm_active
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL144>

00000098 <.LVL145>:
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	hal_machw_idle_req
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL145>

000000a0 <.LVL146>:
  a0:	8522                	mv	a0,s0
  a2:	4589                	li	a1,2
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	ke_state_set
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL146+0x4>

000000ac <.LVL147>:
  ac:	40b2                	lw	ra,12(sp)
  ae:	4422                	lw	s0,8(sp)
  b0:	4492                	lw	s1,4(sp)

000000b2 <.LVL148>:
  b2:	4902                	lw	s2,0(sp)
  b4:	4501                	li	a0,0
  b6:	0141                	addi	sp,sp,16
  b8:	8082                	ret

Disassembly of section .text.mm_set_ps_mode_req_handler:

00000000 <mm_set_ps_mode_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	0005c503          	lbu	a0,0(a1) # 0 <mm_set_ps_mode_req_handler>

0000000a <.LVL150>:
   a:	478d                	li	a5,3
   c:	04f51463          	bne	a0,a5,54 <.L71>
			c: R_RISCV_BRANCH	.L71

00000010 <.LBB167>:
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	vif_mgmt_env+0x8
			10: R_RISCV_RELAX	*ABS*+0x8
  14:	0087a403          	lw	s0,8(a5) # 8 <mm_set_ps_mode_req_handler+0x8>
			14: R_RISCV_LO12_I	vif_mgmt_env+0x8
			14: R_RISCV_RELAX	*ABS*+0x8

00000018 <.L72>:
  18:	e00d                	bnez	s0,3a <.L74>
			18: R_RISCV_RVC_BRANCH	.L74

0000001a <.LBB170>:
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	ps_env+0x2
			1a: R_RISCV_RELAX	*ABS*+0x2
  1e:	0027d583          	lhu	a1,2(a5) # 2 <mm_set_ps_mode_req_handler+0x2>
			1e: R_RISCV_LO12_I	ps_env+0x2
			1e: R_RISCV_RELAX	*ABS*+0x2
  22:	4601                	li	a2,0
  24:	03200513          	li	a0,50
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ke_msg_send_basic
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LBB170+0xe>

00000030 <.L75>:
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)
  34:	4501                	li	a0,0
  36:	0141                	addi	sp,sp,16
  38:	8082                	ret

0000003a <.L74>:
  3a:	05644783          	lbu	a5,86(s0)
  3e:	eb89                	bnez	a5,50 <.L73>
			3e: R_RISCV_RVC_BRANCH	.L73
  40:	05844783          	lbu	a5,88(s0)
  44:	c791                	beqz	a5,50 <.L73>
			44: R_RISCV_RVC_BRANCH	.L73

00000046 <.LBB168>:
  46:	8522                	mv	a0,s0
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	ps_polling_frame
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LBB168+0x2>

00000050 <.L73>:
  50:	4000                	lw	s0,0(s0)

00000052 <.LBE172>:
  52:	b7d9                	j	18 <.L72>
			52: R_RISCV_RVC_JUMP	.L72

00000054 <.L71>:
  54:	85b6                	mv	a1,a3

00000056 <.LVL158>:
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ps_set_mode
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL158>

0000005e <.LVL159>:
  5e:	bfc9                	j	30 <.L75>
			5e: R_RISCV_RVC_JUMP	.L75

Disassembly of section .text.mm_force_idle_req_handler:

00000000 <mm_force_idle_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL161>:
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c606                	sw	ra,12(sp)
   a:	842e                	mv	s0,a1
   c:	84b2                	mv	s1,a2
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ke_state_get
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL161+0xa>

00000016 <.LVL162>:
  16:	c505                	beqz	a0,3e <.L81>
			16: R_RISCV_RVC_BRANCH	.L81
  18:	4409                	li	s0,2

0000001a <.LVL163>:
  1a:	00850c63          	beq	a0,s0,32 <.L80>
			1a: R_RISCV_BRANCH	.L80
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	hal_machw_idle_req
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL163+0x4>

00000026 <.LVL164>:
  26:	4589                	li	a1,2
  28:	8526                	mv	a0,s1
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ke_state_set
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL164+0x4>

00000032 <.L80>:
  32:	8522                	mv	a0,s0
  34:	40b2                	lw	ra,12(sp)
  36:	4422                	lw	s0,8(sp)
  38:	4492                	lw	s1,4(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

0000003e <.L81>:
  3e:	44b007b7          	lui	a5,0x44b00
  42:	5f9c                	lw	a5,56(a5)

00000044 <.LBE179>:
  44:	8bbd                	andi	a5,a5,15
  46:	cf99                	beqz	a5,64 <.L84>
			46: R_RISCV_RVC_BRANCH	.L84
  48:	000005b7          	lui	a1,0x0
			48: R_RISCV_HI20	.LC0
			48: R_RISCV_RELAX	*ABS*
  4c:	00000537          	lui	a0,0x0
			4c: R_RISCV_HI20	.LC6
			4c: R_RISCV_RELAX	*ABS*
  50:	4c000613          	li	a2,1216
  54:	00058593          	mv	a1,a1
			54: R_RISCV_LO12_I	.LC0
			54: R_RISCV_RELAX	*ABS*
  58:	00050513          	mv	a0,a0
			58: R_RISCV_LO12_I	.LC6
			58: R_RISCV_RELAX	*ABS*
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	assert_err
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LBE179+0x18>

00000064 <.L84>:
  64:	458d                	li	a1,3
  66:	8526                	mv	a0,s1
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	ke_state_set
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L84+0x4>

00000070 <.LVL169>:
  70:	401c                	lw	a5,0(s0)
  72:	4401                	li	s0,0

00000074 <.LVL170>:
  74:	9782                	jalr	a5

00000076 <.LVL171>:
  76:	bf75                	j	32 <.L80>
			76: R_RISCV_RVC_JUMP	.L80

Disassembly of section .text.mm_hw_config_handler:

00000000 <mm_hw_config_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	892a                	mv	s2,a0
   6:	8532                	mv	a0,a2

00000008 <.LVL174>:
   8:	d422                	sw	s0,40(sp)
   a:	d226                	sw	s1,36(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	d606                	sw	ra,44(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	ca56                	sw	s5,20(sp)
  14:	c85a                	sw	s6,16(sp)
  16:	c65e                	sw	s7,12(sp)
  18:	c462                	sw	s8,8(sp)
  1a:	842e                	mv	s0,a1
  1c:	84b2                	mv	s1,a2
  1e:	89b6                	mv	s3,a3
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ke_state_get
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL174+0x18>

00000028 <.LVL175>:
  28:	c909                	beqz	a0,3a <.L92>
			28: R_RISCV_RVC_BRANCH	.L92
  2a:	1579                	addi	a0,a0,-2
  2c:	0542                	slli	a0,a0,0x10
  2e:	8141                	srli	a0,a0,0x10
  30:	4785                	li	a5,1
  32:	54a7e863          	bltu	a5,a0,582 <.L93>
			32: R_RISCV_BRANCH	.L93

00000036 <.L162>:
  36:	4409                	li	s0,2
  38:	aacd                	j	22a <.L91>
			38: R_RISCV_RVC_JUMP	.L91

0000003a <.L92>:
  3a:	44b007b7          	lui	a5,0x44b00
  3e:	5f9c                	lw	a5,56(a5)

00000040 <.LBE279>:
  40:	8bbd                	andi	a5,a5,15
  42:	cf99                	beqz	a5,60 <.L95>
			42: R_RISCV_RVC_BRANCH	.L95
  44:	000005b7          	lui	a1,0x0
			44: R_RISCV_HI20	.LC0
			44: R_RISCV_RELAX	*ABS*
  48:	00000537          	lui	a0,0x0
			48: R_RISCV_HI20	.LC6
			48: R_RISCV_RELAX	*ABS*
  4c:	77b00613          	li	a2,1915
  50:	00058593          	mv	a1,a1
			50: R_RISCV_LO12_I	.LC0
			50: R_RISCV_RELAX	*ABS*
  54:	00050513          	mv	a0,a0
			54: R_RISCV_LO12_I	.LC6
			54: R_RISCV_RELAX	*ABS*
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	assert_err
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LBE279+0x18>

00000060 <.L95>:
  60:	00000a37          	lui	s4,0x0
			60: R_RISCV_HI20	mm_env
			60: R_RISCV_RELAX	*ABS*
  64:	47d9                	li	a5,22
  66:	000a0a13          	mv	s4,s4
			66: R_RISCV_LO12_I	mm_env
			66: R_RISCV_RELAX	*ABS*
  6a:	22f90b63          	beq	s2,a5,2a0 <.L96>
			6a: R_RISCV_BRANCH	.L96
  6e:	0927e663          	bltu	a5,s2,fa <.L97>
			6e: R_RISCV_BRANCH	.L97
  72:	47b9                	li	a5,14
  74:	14f90b63          	beq	s2,a5,1ca <.L98>
			74: R_RISCV_BRANCH	.L98
  78:	0327e863          	bltu	a5,s2,a8 <.L99>
			78: R_RISCV_BRANCH	.L99
  7c:	4799                	li	a5,6
  7e:	1cf90363          	beq	s2,a5,244 <.L100>
			7e: R_RISCV_BRANCH	.L100
  82:	47a1                	li	a5,8
  84:	1ef90863          	beq	s2,a5,274 <.L101>
			84: R_RISCV_BRANCH	.L101

00000088 <.L102>:
  88:	000005b7          	lui	a1,0x0
			88: R_RISCV_HI20	.LC0
			88: R_RISCV_RELAX	*ABS*
  8c:	00000537          	lui	a0,0x0
			8c: R_RISCV_HI20	.LC9
			8c: R_RISCV_RELAX	*ABS*
  90:	7ae00613          	li	a2,1966
  94:	00058593          	mv	a1,a1
			94: R_RISCV_LO12_I	.LC0
			94: R_RISCV_RELAX	*ABS*
  98:	00050513          	mv	a0,a0
			98: R_RISCV_LO12_I	.LC9
			98: R_RISCV_RELAX	*ABS*
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	assert_err
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.L102+0x14>

000000a4 <.LVL180>:
  a4:	4409                	li	s0,2

000000a6 <.LVL181>:
  a6:	a299                	j	1ec <.L115>
			a6: R_RISCV_RVC_JUMP	.L115

000000a8 <.L99>:
  a8:	47c9                	li	a5,18
  aa:	26f90c63          	beq	s2,a5,322 <.L103>
			aa: R_RISCV_BRANCH	.L103
  ae:	47d1                	li	a5,20
  b0:	22f90363          	beq	s2,a5,2d6 <.L104>
			b0: R_RISCV_BRANCH	.L104
  b4:	47c1                	li	a5,16
  b6:	fcf919e3          	bne	s2,a5,88 <.L102>
			b6: R_RISCV_BRANCH	.L102

000000ba <.LBB283>:
  ba:	4689                	li	a3,2
  bc:	8626                	mv	a2,s1
  be:	85ce                	mv	a1,s3
  c0:	4545                	li	a0,17
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	ke_msg_alloc
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LBB283+0x8>

000000ca <.LVL184>:
  ca:	00844783          	lbu	a5,8(s0)
  ce:	892a                	mv	s2,a0

000000d0 <.LVL185>:
  d0:	cf99                	beqz	a5,ee <.L164>
			d0: R_RISCV_RVC_BRANCH	.L164
  d2:	00645703          	lhu	a4,6(s0)
  d6:	00445683          	lhu	a3,4(s0)
  da:	00245603          	lhu	a2,2(s0)
  de:	00144583          	lbu	a1,1(s0)
  e2:	00044503          	lbu	a0,0(s0)

000000e6 <.LVL186>:
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	phy_set_channel
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.LVL186>

000000ee <.L164>:
  ee:	854a                	mv	a0,s2

000000f0 <.L163>:
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	ke_msg_send
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.L163>

000000f8 <.LBE288>:
  f8:	a8cd                	j	1ea <.L160>
			f8: R_RISCV_RVC_JUMP	.L160

000000fa <.L97>:
  fa:	47f9                	li	a5,30
  fc:	32f90c63          	beq	s2,a5,434 <.L106>
			fc: R_RISCV_BRANCH	.L106
 100:	0927e663          	bltu	a5,s2,18c <.L107>
			100: R_RISCV_BRANCH	.L107
 104:	47e9                	li	a5,26
 106:	24f90463          	beq	s2,a5,34e <.L108>
			106: R_RISCV_BRANCH	.L108
 10a:	47f1                	li	a5,28
 10c:	2ef90163          	beq	s2,a5,3ee <.L109>
			10c: R_RISCV_BRANCH	.L109
 110:	47e1                	li	a5,24
 112:	f6f91be3          	bne	s2,a5,88 <.L102>
			112: R_RISCV_BRANCH	.L102

00000116 <.LBB295>:
 116:	00644783          	lbu	a5,6(s0)
 11a:	5d800513          	li	a0,1496
 11e:	4619                	li	a2,6
 120:	02a787b3          	mul	a5,a5,a0
 124:	00000537          	lui	a0,0x0
			124: R_RISCV_HI20	vif_info_tab
			124: R_RISCV_RELAX	*ABS*
 128:	00050513          	mv	a0,a0
			128: R_RISCV_LO12_I	vif_info_tab
			128: R_RISCV_RELAX	*ABS*
 12c:	85a2                	mv	a1,s0
 12e:	03878793          	addi	a5,a5,56 # 44b00038 <.LASF570+0x44afc0a7>
 132:	953e                	add	a0,a0,a5
 134:	00000097          	auipc	ra,0x0
			134: R_RISCV_CALL	memcpy
			134: R_RISCV_RELAX	*ABS*
 138:	000080e7          	jalr	ra # 134 <.LBB295+0x1e>

0000013c <.LBB297>:
 13c:	000007b7          	lui	a5,0x0
			13c: R_RISCV_HI20	vif_mgmt_env
			13c: R_RISCV_RELAX	*ABS*
 140:	00078793          	mv	a5,a5
			140: R_RISCV_LO12_I	vif_mgmt_env
			140: R_RISCV_RELAX	*ABS*
 144:	0117c703          	lbu	a4,17(a5) # 11 <.LVL174+0x9>
 148:	0107c783          	lbu	a5,16(a5)
 14c:	97ba                	add	a5,a5,a4

0000014e <.LBE297>:
 14e:	4705                	li	a4,1
 150:	02e79a63          	bne	a5,a4,184 <.L121>
			150: R_RISCV_BRANCH	.L121
 154:	00144703          	lbu	a4,1(s0)
 158:	00044783          	lbu	a5,0(s0)
 15c:	0722                	slli	a4,a4,0x8
 15e:	8f5d                	or	a4,a4,a5
 160:	00244783          	lbu	a5,2(s0)
 164:	07c2                	slli	a5,a5,0x10
 166:	8f5d                	or	a4,a4,a5
 168:	00344783          	lbu	a5,3(s0)
 16c:	07e2                	slli	a5,a5,0x18
 16e:	8fd9                	or	a5,a5,a4

00000170 <.LBB299>:
 170:	44b00737          	lui	a4,0x44b00
 174:	d31c                	sw	a5,32(a4)

00000176 <.LBB301>:
 176:	00544783          	lbu	a5,5(s0)
 17a:	00444683          	lbu	a3,4(s0)
 17e:	07a2                	slli	a5,a5,0x8

00000180 <.LBB304>:
 180:	8fd5                	or	a5,a5,a3
 182:	d35c                	sw	a5,36(a4)

00000184 <.L121>:
 184:	8626                	mv	a2,s1
 186:	85ce                	mv	a1,s3
 188:	4565                	li	a0,25
 18a:	a8a1                	j	1e2 <.L161>
			18a: R_RISCV_RVC_JUMP	.L161

0000018c <.L107>:
 18c:	02800793          	li	a5,40
 190:	3af90063          	beq	s2,a5,530 <.L111>
			190: R_RISCV_BRANCH	.L111
 194:	03b00793          	li	a5,59
 198:	3cf90b63          	beq	s2,a5,56e <.L112>
			198: R_RISCV_BRANCH	.L112
 19c:	02000793          	li	a5,32
 1a0:	eef914e3          	bne	s2,a5,88 <.L102>
			1a0: R_RISCV_BRANCH	.L102

000001a4 <.LBB305>:
 1a4:	44b00737          	lui	a4,0x44b00
 1a8:	0e472783          	lw	a5,228(a4) # 44b000e4 <.LASF570+0x44afc153>

000001ac <.LBE305>:
 1ac:	00044683          	lbu	a3,0(s0)

000001b0 <.LBB310>:
 1b0:	8626                	mv	a2,s1
 1b2:	0ff7f793          	andi	a5,a5,255

000001b6 <.LBB315>:
 1b6:	02f687b3          	mul	a5,a3,a5

000001ba <.LBE315>:
 1ba:	85ce                	mv	a1,s3
 1bc:	02100513          	li	a0,33

000001c0 <.LBB316>:
 1c0:	07a2                	slli	a5,a5,0x8
 1c2:	8fd5                	or	a5,a5,a3
 1c4:	0ef72423          	sw	a5,232(a4)

000001c8 <.LBE316>:
 1c8:	a829                	j	1e2 <.L161>
			1c8: R_RISCV_RVC_JUMP	.L161

000001ca <.L98>:
 1ca:	401c                	lw	a5,0(s0)

000001cc <.LBB319>:
 1cc:	004a2703          	lw	a4,4(s4) # 4 <mm_hw_config_handler+0x4>

000001d0 <.LBE321>:
 1d0:	8626                	mv	a2,s1

000001d2 <.LBB330>:
 1d2:	00fa2023          	sw	a5,0(s4)

000001d6 <.LBB328>:
 1d6:	8fd9                	or	a5,a5,a4

000001d8 <.LBB325>:
 1d8:	44b00737          	lui	a4,0x44b00
 1dc:	d33c                	sw	a5,96(a4)

000001de <.LBE325>:
 1de:	85ce                	mv	a1,s3
 1e0:	453d                	li	a0,15

000001e2 <.L161>:
 1e2:	00000097          	auipc	ra,0x0
			1e2: R_RISCV_CALL	ke_msg_send_basic
			1e2: R_RISCV_RELAX	*ABS*
 1e6:	000080e7          	jalr	ra # 1e2 <.L161>

000001ea <.L160>:
 1ea:	4401                	li	s0,0

000001ec <.L115>:
 1ec:	013a4903          	lbu	s2,19(s4)
 1f0:	0912                	slli	s2,s2,0x4
 1f2:	f0f97793          	andi	a5,s2,-241
 1f6:	cf99                	beqz	a5,214 <.L134>
			1f6: R_RISCV_RVC_BRANCH	.L134
 1f8:	000005b7          	lui	a1,0x0
			1f8: R_RISCV_HI20	.LC0
			1f8: R_RISCV_RELAX	*ABS*
 1fc:	00000537          	lui	a0,0x0
			1fc: R_RISCV_HI20	.LC10
			1fc: R_RISCV_RELAX	*ABS*
 200:	5b900613          	li	a2,1465
 204:	00058593          	mv	a1,a1
			204: R_RISCV_LO12_I	.LC0
			204: R_RISCV_RELAX	*ABS*
 208:	00050513          	mv	a0,a0
			208: R_RISCV_LO12_I	.LC10
			208: R_RISCV_RELAX	*ABS*
 20c:	00000097          	auipc	ra,0x0
			20c: R_RISCV_CALL	assert_err
			20c: R_RISCV_RELAX	*ABS*
 210:	000080e7          	jalr	ra # 20c <.L115+0x20>

00000214 <.L134>:
 214:	44b007b7          	lui	a5,0x44b00
 218:	0327ac23          	sw	s2,56(a5) # 44b00038 <.LASF570+0x44afc0a7>

0000021c <.LBE331>:
 21c:	012a4583          	lbu	a1,18(s4)
 220:	8526                	mv	a0,s1
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	ke_state_set
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.LBE331+0x6>

0000022a <.L91>:
 22a:	8522                	mv	a0,s0
 22c:	50b2                	lw	ra,44(sp)
 22e:	5422                	lw	s0,40(sp)
 230:	5492                	lw	s1,36(sp)
 232:	5902                	lw	s2,32(sp)
 234:	49f2                	lw	s3,28(sp)
 236:	4a62                	lw	s4,24(sp)
 238:	4ad2                	lw	s5,20(sp)
 23a:	4b42                	lw	s6,16(sp)
 23c:	4bb2                	lw	s7,12(sp)
 23e:	4c22                	lw	s8,8(sp)
 240:	6145                	addi	sp,sp,48
 242:	8082                	ret

00000244 <.L100>:
 244:	4689                	li	a3,2
 246:	8626                	mv	a2,s1
 248:	85ce                	mv	a1,s3
 24a:	451d                	li	a0,7
 24c:	00000097          	auipc	ra,0x0
			24c: R_RISCV_CALL	ke_msg_alloc
			24c: R_RISCV_RELAX	*ABS*
 250:	000080e7          	jalr	ra # 24c <.L100+0x8>

00000254 <.LVL210>:
 254:	00744603          	lbu	a2,7(s0)
 258:	00044583          	lbu	a1,0(s0)
 25c:	892a                	mv	s2,a0

0000025e <.LVL211>:
 25e:	00150693          	addi	a3,a0,1 # 1 <mm_hw_config_handler+0x1>
 262:	00140513          	addi	a0,s0,1

00000266 <.LVL212>:
 266:	00000097          	auipc	ra,0x0
			266: R_RISCV_CALL	vif_mgmt_register
			266: R_RISCV_RELAX	*ABS*
 26a:	000080e7          	jalr	ra # 266 <.LVL212>

0000026e <.LVL213>:
 26e:	00a90023          	sb	a0,0(s2)
 272:	bdb5                	j	ee <.L164>
			272: R_RISCV_RVC_JUMP	.L164

00000274 <.L101>:
 274:	00044503          	lbu	a0,0(s0)

00000278 <.LBB334>:
 278:	4785                	li	a5,1
 27a:	00a7e663          	bltu	a5,a0,286 <.L116>
			27a: R_RISCV_BRANCH	.L116
 27e:	00000097          	auipc	ra,0x0
			27e: R_RISCV_CALL	vif_mgmt_unregister
			27e: R_RISCV_RELAX	*ABS*
 282:	000080e7          	jalr	ra # 27e <.LBB334+0x6>

00000286 <.L116>:
 286:	000007b7          	lui	a5,0x0
			286: R_RISCV_HI20	vif_mgmt_env+0x8
			286: R_RISCV_RELAX	*ABS*+0x8
 28a:	0087a783          	lw	a5,8(a5) # 8 <.LVL174>
			28a: R_RISCV_LO12_I	vif_mgmt_env+0x8
			28a: R_RISCV_RELAX	*ABS*+0x8
 28e:	e789                	bnez	a5,298 <.L117>
			28e: R_RISCV_RVC_BRANCH	.L117
 290:	00000097          	auipc	ra,0x0
			290: R_RISCV_CALL	hal_machw_monitor_mode
			290: R_RISCV_RELAX	*ABS*
 294:	000080e7          	jalr	ra # 290 <.L116+0xa>

00000298 <.L117>:
 298:	8626                	mv	a2,s1
 29a:	85ce                	mv	a1,s3
 29c:	4525                	li	a0,9
 29e:	b791                	j	1e2 <.L161>
			29e: R_RISCV_RVC_JUMP	.L161

000002a0 <.L96>:
 2a0:	000007b7          	lui	a5,0x0
			2a0: R_RISCV_HI20	chan_env+0x20
			2a0: R_RISCV_RELAX	*ABS*+0x20
 2a4:	0207a703          	lw	a4,32(a5) # 20 <.LVL174+0x18>
			2a4: R_RISCV_LO12_I	chan_env+0x20
			2a4: R_RISCV_RELAX	*ABS*+0x20

000002a8 <.LVL219>:
 2a8:	00544783          	lbu	a5,5(s0)
 2ac:	4014                	lw	a3,0(s0)
 2ae:	0791                	addi	a5,a5,4
 2b0:	078a                	slli	a5,a5,0x2
 2b2:	97d2                	add	a5,a5,s4
 2b4:	c3d4                	sw	a3,4(a5)
 2b6:	cf01                	beqz	a4,2ce <.L118>
			2b6: R_RISCV_RVC_BRANCH	.L118
 2b8:	00474703          	lbu	a4,4(a4) # 44b00004 <.LASF570+0x44afc073>

000002bc <.LVL220>:
 2bc:	00544783          	lbu	a5,5(s0)
 2c0:	00f71763          	bne	a4,a5,2ce <.L118>
			2c0: R_RISCV_BRANCH	.L118

000002c4 <.LBB340>:
 2c4:	44b007b7          	lui	a5,0x44b00
 2c8:	4741                	li	a4,16
 2ca:	0ce7ae23          	sw	a4,220(a5) # 44b000dc <.LASF570+0x44afc14b>

000002ce <.L118>:
 2ce:	8626                	mv	a2,s1
 2d0:	85ce                	mv	a1,s3
 2d2:	455d                	li	a0,23
 2d4:	b739                	j	1e2 <.L161>
			2d4: R_RISCV_RVC_JUMP	.L161

000002d6 <.L104>:
 2d6:	00244783          	lbu	a5,2(s0)
 2da:	5d800713          	li	a4,1496
 2de:	00000537          	lui	a0,0x0
			2de: R_RISCV_HI20	vif_info_tab
			2de: R_RISCV_RELAX	*ABS*
 2e2:	02e787b3          	mul	a5,a5,a4
 2e6:	00050513          	mv	a0,a0
			2e6: R_RISCV_LO12_I	vif_info_tab
			2e6: R_RISCV_RELAX	*ABS*
 2ea:	00045583          	lhu	a1,0(s0)
 2ee:	953e                	add	a0,a0,a5
 2f0:	05654783          	lbu	a5,86(a0) # 56 <.LBE279+0x16>
 2f4:	e395                	bnez	a5,318 <.L119>
			2f4: R_RISCV_RVC_BRANCH	.L119

000002f6 <.LBB344>:
 2f6:	06054703          	lbu	a4,96(a0)
 2fa:	1b000693          	li	a3,432
 2fe:	000007b7          	lui	a5,0x0
			2fe: R_RISCV_HI20	sta_info_tab
			2fe: R_RISCV_RELAX	*ABS*
 302:	02d70733          	mul	a4,a4,a3
 306:	00078793          	mv	a5,a5
			306: R_RISCV_LO12_I	sta_info_tab
			306: R_RISCV_RELAX	*ABS*
 30a:	05aa                	slli	a1,a1,0xa
 30c:	97ba                	add	a5,a5,a4
 30e:	c3cc                	sw	a1,4(a5)

00000310 <.L120>:
 310:	8626                	mv	a2,s1
 312:	85ce                	mv	a1,s3
 314:	4555                	li	a0,21
 316:	b5f1                	j	1e2 <.L161>
			316: R_RISCV_RVC_JUMP	.L161

00000318 <.L119>:
 318:	00000097          	auipc	ra,0x0
			318: R_RISCV_CALL	vif_mgmt_set_ap_bcn_int
			318: R_RISCV_RELAX	*ABS*
 31c:	000080e7          	jalr	ra # 318 <.L119>

00000320 <.LVL229>:
 320:	bfc5                	j	310 <.L120>
			320: R_RISCV_RVC_JUMP	.L120

00000322 <.L103>:
 322:	44b007b7          	lui	a5,0x44b00
 326:	0907a683          	lw	a3,144(a5) # 44b00090 <.LASF570+0x44afc0ff>
 32a:	00044703          	lbu	a4,0(s0)

0000032e <.LBE347>:
 32e:	8626                	mv	a2,s1

00000330 <.LBB350>:
 330:	f006f693          	andi	a3,a3,-256
 334:	8f55                	or	a4,a4,a3
 336:	08e7a823          	sw	a4,144(a5)

0000033a <.LBB351>:
 33a:	0907a703          	lw	a4,144(a5)
 33e:	800006b7          	lui	a3,0x80000

00000342 <.LBE351>:
 342:	85ce                	mv	a1,s3

00000344 <.LBB354>:
 344:	8f55                	or	a4,a4,a3
 346:	08e7a823          	sw	a4,144(a5)

0000034a <.LBE354>:
 34a:	454d                	li	a0,19
 34c:	bd59                	j	1e2 <.L161>
			34c: R_RISCV_RVC_JUMP	.L161

0000034e <.L108>:
 34e:	00644a83          	lbu	s5,6(s0)
 352:	17600793          	li	a5,374
 356:	00544603          	lbu	a2,5(s0)
 35a:	02fa87b3          	mul	a5,s5,a5
 35e:	00000537          	lui	a0,0x0
			35e: R_RISCV_HI20	vif_info_tab
			35e: R_RISCV_RELAX	*ABS*
 362:	4014                	lw	a3,0(s0)
 364:	00050713          	mv	a4,a0
			364: R_RISCV_LO12_I	vif_info_tab
			364: R_RISCV_RELAX	*ABS*
 368:	00050913          	mv	s2,a0
			368: R_RISCV_LO12_I	vif_info_tab
			368: R_RISCV_RELAX	*ABS*

0000036c <.LVL235>:
 36c:	97b2                	add	a5,a5,a2
 36e:	078a                	slli	a5,a5,0x2
 370:	97ba                	add	a5,a5,a4
 372:	c794                	sw	a3,8(a5)
 374:	5d800793          	li	a5,1496
 378:	02fa87b3          	mul	a5,s5,a5
 37c:	973e                	add	a4,a4,a5
 37e:	05874783          	lbu	a5,88(a4)
 382:	cb85                	beqz	a5,3b2 <.L122>
			382: R_RISCV_RVC_BRANCH	.L122
 384:	00544703          	lbu	a4,5(s0)
 388:	4685                	li	a3,1
 38a:	401c                	lw	a5,0(s0)
 38c:	04d70763          	beq	a4,a3,3da <.L123>
			38c: R_RISCV_BRANCH	.L123
 390:	cb09                	beqz	a4,3a2 <.L124>
			390: R_RISCV_RVC_BRANCH	.L124
 392:	4689                	li	a3,2
 394:	04d70863          	beq	a4,a3,3e4 <.L125>
			394: R_RISCV_BRANCH	.L125

00000398 <.LBB357>:
 398:	44b00737          	lui	a4,0x44b00
 39c:	20f72623          	sw	a5,524(a4) # 44b0020c <.LASF570+0x44afc27b>

000003a0 <.LVL237>:
 3a0:	a029                	j	3aa <.L127>
			3a0: R_RISCV_RVC_JUMP	.L127

000003a2 <.L124>:
 3a2:	44b00737          	lui	a4,0x44b00
 3a6:	20f72023          	sw	a5,512(a4) # 44b00200 <.LASF570+0x44afc26f>

000003aa <.L127>:
 3aa:	00000097          	auipc	ra,0x0
			3aa: R_RISCV_CALL	mm_env_max_ampdu_duration_set
			3aa: R_RISCV_RELAX	*ABS*
 3ae:	000080e7          	jalr	ra # 3aa <.L127>

000003b2 <.L122>:
 3b2:	5d800513          	li	a0,1496
 3b6:	02aa8533          	mul	a0,s5,a0
 3ba:	954a                	add	a0,a0,s2
 3bc:	05654783          	lbu	a5,86(a0) # 56 <.LBE279+0x16>
 3c0:	eb89                	bnez	a5,3d2 <.L128>
			3c0: R_RISCV_RVC_BRANCH	.L128
 3c2:	00444603          	lbu	a2,4(s0)
 3c6:	00544583          	lbu	a1,5(s0)
 3ca:	00000097          	auipc	ra,0x0
			3ca: R_RISCV_CALL	ps_uapsd_set
			3ca: R_RISCV_RELAX	*ABS*
 3ce:	000080e7          	jalr	ra # 3ca <.L122+0x18>

000003d2 <.L128>:
 3d2:	8626                	mv	a2,s1
 3d4:	85ce                	mv	a1,s3
 3d6:	456d                	li	a0,27
 3d8:	b529                	j	1e2 <.L161>
			3d8: R_RISCV_RVC_JUMP	.L161

000003da <.L123>:
 3da:	44b00737          	lui	a4,0x44b00
 3de:	20f72223          	sw	a5,516(a4) # 44b00204 <.LASF570+0x44afc273>

000003e2 <.LVL243>:
 3e2:	b7e1                	j	3aa <.L127>
			3e2: R_RISCV_RVC_JUMP	.L127

000003e4 <.L125>:
 3e4:	44b00737          	lui	a4,0x44b00
 3e8:	20f72423          	sw	a5,520(a4) # 44b00208 <.LASF570+0x44afc277>

000003ec <.LVL245>:
 3ec:	bf7d                	j	3aa <.L127>
			3ec: R_RISCV_RVC_JUMP	.L127

000003ee <.L109>:
 3ee:	00044783          	lbu	a5,0(s0)
 3f2:	00e79413          	slli	s0,a5,0xe

000003f6 <.LVL247>:
 3f6:	003e07b7          	lui	a5,0x3e0
 3fa:	8fe1                	and	a5,a5,s0
 3fc:	c385                	beqz	a5,41c <.L129>
			3fc: R_RISCV_RVC_BRANCH	.L129
 3fe:	6605                	lui	a2,0x1
 400:	000005b7          	lui	a1,0x0
			400: R_RISCV_HI20	.LC0
			400: R_RISCV_RELAX	*ABS*
 404:	00000537          	lui	a0,0x0
			404: R_RISCV_HI20	.LC8
			404: R_RISCV_RELAX	*ABS*
 408:	83460613          	addi	a2,a2,-1996 # 834 <.LLST71+0x3>
 40c:	00058593          	mv	a1,a1
			40c: R_RISCV_LO12_I	.LC0
			40c: R_RISCV_RELAX	*ABS*
 410:	00050513          	mv	a0,a0
			410: R_RISCV_LO12_I	.LC8
			410: R_RISCV_RELAX	*ABS*
 414:	00000097          	auipc	ra,0x0
			414: R_RISCV_CALL	assert_err
			414: R_RISCV_RELAX	*ABS*
 418:	000080e7          	jalr	ra # 414 <.LVL247+0x1e>

0000041c <.L129>:
 41c:	44b006b7          	lui	a3,0x44b00
 420:	46fc                	lw	a5,76(a3)
 422:	7711                	lui	a4,0xfffe4
 424:	177d                	addi	a4,a4,-1
 426:	8ff9                	and	a5,a5,a4
 428:	8fc1                	or	a5,a5,s0
 42a:	c6fc                	sw	a5,76(a3)

0000042c <.LBE367>:
 42c:	8626                	mv	a2,s1
 42e:	85ce                	mv	a1,s3
 430:	4575                	li	a0,29
 432:	bb45                	j	1e2 <.L161>
			432: R_RISCV_RVC_JUMP	.L161

00000434 <.L106>:
 434:	00344b83          	lbu	s7,3(s0)
 438:	5d800513          	li	a0,1496
 43c:	000007b7          	lui	a5,0x0
			43c: R_RISCV_HI20	vif_info_tab
			43c: R_RISCV_RELAX	*ABS*
 440:	02ab8533          	mul	a0,s7,a0
 444:	00078913          	mv	s2,a5
			444: R_RISCV_LO12_I	vif_info_tab
			444: R_RISCV_RELAX	*ABS*

00000448 <.LVL251>:
 448:	00078a93          	mv	s5,a5
			448: R_RISCV_LO12_I	vif_info_tab
			448: R_RISCV_RELAX	*ABS*
 44c:	992a                	add	s2,s2,a0
 44e:	05694703          	lbu	a4,86(s2)
 452:	eb51                	bnez	a4,4e6 <.L130>
			452: R_RISCV_RVC_BRANCH	.L130
 454:	00244783          	lbu	a5,2(s0)
 458:	0561                	addi	a0,a0,24
 45a:	9556                	add	a0,a0,s5
 45c:	c7e9                	beqz	a5,526 <.L131>
			45c: R_RISCV_RVC_BRANCH	.L131

0000045e <.LBB371>:
 45e:	06094783          	lbu	a5,96(s2)

00000462 <.LBB372>:
 462:	1b000713          	li	a4,432
 466:	00000b37          	lui	s6,0x0
			466: R_RISCV_HI20	sta_info_tab
			466: R_RISCV_RELAX	*ABS*
 46a:	02e787b3          	mul	a5,a5,a4
 46e:	000b0b13          	mv	s6,s6
			46e: R_RISCV_LO12_I	sta_info_tab
			46e: R_RISCV_RELAX	*ABS*

00000472 <.LBB379>:
 472:	44b00c37          	lui	s8,0x44b00
 476:	120c2583          	lw	a1,288(s8) # 44b00120 <.LASF570+0x44afc18f>

0000047a <.LBE379>:
 47a:	9b3e                	add	s6,s6,a5
 47c:	004b2783          	lw	a5,4(s6) # 4 <mm_hw_config_handler+0x4>
 480:	95be                	add	a1,a1,a5
 482:	00000097          	auipc	ra,0x0
			482: R_RISCV_CALL	mm_timer_set
			482: R_RISCV_RELAX	*ABS*
 486:	000080e7          	jalr	ra # 482 <.LBE379+0x8>

0000048a <.LVL254>:
 48a:	00045783          	lhu	a5,0(s0)
 48e:	004b2703          	lw	a4,4(s6)
 492:	04091e23          	sh	zero,92(s2)
 496:	00fb1c23          	sh	a5,24(s6)
 49a:	020a5783          	lhu	a5,32(s4)
 49e:	04090f23          	sb	zero,94(s2)
 4a2:	854a                	mv	a0,s2
 4a4:	07d1                	addi	a5,a5,20
 4a6:	02e787b3          	mul	a5,a5,a4
 4aa:	000f4737          	lui	a4,0xf4
 4ae:	24070713          	addi	a4,a4,576 # f4240 <.LASF570+0xf02af>
 4b2:	02e7d7b3          	divu	a5,a5,a4
 4b6:	00fb1b23          	sh	a5,22(s6)

000004ba <.LBB380>:
 4ba:	120c2783          	lw	a5,288(s8)

000004be <.LBE380>:
 4be:	06090a23          	sb	zero,116(s2)
 4c2:	06092823          	sw	zero,112(s2)
 4c6:	06f92223          	sw	a5,100(s2)
 4ca:	00492783          	lw	a5,4(s2)
 4ce:	0017e793          	ori	a5,a5,1
 4d2:	00f92223          	sw	a5,4(s2)

000004d6 <.LBB384>:
 4d6:	120c2783          	lw	a5,288(s8)

000004da <.LBE384>:
 4da:	06f92623          	sw	a5,108(s2)
 4de:	00000097          	auipc	ra,0x0
			4de: R_RISCV_CALL	chan_bcn_detect_start
			4de: R_RISCV_RELAX	*ABS*
 4e2:	000080e7          	jalr	ra # 4de <.LBE384+0x4>

000004e6 <.L130>:
 4e6:	5d800793          	li	a5,1496
 4ea:	02fb87b3          	mul	a5,s7,a5
 4ee:	00244703          	lbu	a4,2(s0)
 4f2:	97d6                	add	a5,a5,s5
 4f4:	04e78c23          	sb	a4,88(a5) # 58 <.LBE279+0x18>
 4f8:	c31d                	beqz	a4,51e <.L132>
			4f8: R_RISCV_RVC_BRANCH	.L132
 4fa:	4bd4                	lw	a3,20(a5)

000004fc <.LBB391>:
 4fc:	44b00737          	lui	a4,0x44b00
 500:	20d72023          	sw	a3,512(a4) # 44b00200 <.LASF570+0x44afc26f>

00000504 <.LBE391>:
 504:	4bd4                	lw	a3,20(a5)

00000506 <.LBB393>:
 506:	20d72223          	sw	a3,516(a4)

0000050a <.LBE393>:
 50a:	4bd4                	lw	a3,20(a5)

0000050c <.LBB395>:
 50c:	20d72423          	sw	a3,520(a4)

00000510 <.LBE395>:
 510:	4bdc                	lw	a5,20(a5)

00000512 <.LBB397>:
 512:	20f72623          	sw	a5,524(a4)

00000516 <.LBE397>:
 516:	00000097          	auipc	ra,0x0
			516: R_RISCV_CALL	mm_env_max_ampdu_duration_set
			516: R_RISCV_RELAX	*ABS*
 51a:	000080e7          	jalr	ra # 516 <.LBE397>

0000051e <.L132>:
 51e:	8626                	mv	a2,s1
 520:	85ce                	mv	a1,s3
 522:	457d                	li	a0,31
 524:	b97d                	j	1e2 <.L161>
			524: R_RISCV_RVC_JUMP	.L161

00000526 <.L131>:
 526:	00000097          	auipc	ra,0x0
			526: R_RISCV_CALL	mm_timer_clear
			526: R_RISCV_RELAX	*ABS*
 52a:	000080e7          	jalr	ra # 526 <.L131>

0000052e <.LVL266>:
 52e:	bf65                	j	4e6 <.L130>
			52e: R_RISCV_RVC_JUMP	.L130

00000530 <.L111>:
 530:	00044783          	lbu	a5,0(s0)
 534:	4915                	li	s2,5

00000536 <.LVL268>:
 536:	cb81                	beqz	a5,546 <.L133>
			536: R_RISCV_RVC_BRANCH	.L133

00000538 <.LBB290>:
 538:	44b00737          	lui	a4,0x44b00
 53c:	4b7c                	lw	a5,84(a4)

0000053e <.LBE290>:
 53e:	4901                	li	s2,0

00000540 <.LBB293>:
 540:	0807e793          	ori	a5,a5,128
 544:	cb7c                	sw	a5,84(a4)

00000546 <.L133>:
 546:	468d                	li	a3,3
 548:	8626                	mv	a2,s1
 54a:	85ce                	mv	a1,s3
 54c:	02900513          	li	a0,41
 550:	00000097          	auipc	ra,0x0
			550: R_RISCV_CALL	ke_msg_alloc
			550: R_RISCV_RELAX	*ABS*
 554:	000080e7          	jalr	ra # 550 <.L133+0xa>

00000558 <.LVL271>:
 558:	00144703          	lbu	a4,1(s0)
 55c:	00e50023          	sb	a4,0(a0) # 0 <mm_hw_config_handler>
 560:	00244703          	lbu	a4,2(s0)
 564:	01250123          	sb	s2,2(a0)
 568:	00e500a3          	sb	a4,1(a0)
 56c:	b651                	j	f0 <.L163>
			56c: R_RISCV_RVC_JUMP	.L163

0000056e <.L112>:
 56e:	8522                	mv	a0,s0
 570:	00000097          	auipc	ra,0x0
			570: R_RISCV_CALL	chan_ctxt_update
			570: R_RISCV_RELAX	*ABS*
 574:	000080e7          	jalr	ra # 570 <.L112+0x2>

00000578 <.LVL273>:
 578:	8626                	mv	a2,s1
 57a:	85ce                	mv	a1,s3
 57c:	03c00513          	li	a0,60
 580:	b18d                	j	1e2 <.L161>
			580: R_RISCV_RVC_JUMP	.L161

00000582 <.L93>:
 582:	44b007b7          	lui	a5,0x44b00
 586:	5f9c                	lw	a5,56(a5)

00000588 <.LBE418>:
 588:	00000437          	lui	s0,0x0
			588: R_RISCV_HI20	mm_env
			588: R_RISCV_RELAX	*ABS*

0000058c <.LVL276>:
 58c:	00040413          	mv	s0,s0
			58c: R_RISCV_LO12_I	mm_env
			58c: R_RISCV_RELAX	*ABS*

00000590 <.LBB421>:
 590:	8bbd                	andi	a5,a5,15

00000592 <.LBE421>:
 592:	8526                	mv	a0,s1
 594:	00f409a3          	sb	a5,19(s0) # 13 <.LVL174+0xb>
 598:	00000097          	auipc	ra,0x0
			598: R_RISCV_CALL	ke_state_get
			598: R_RISCV_RELAX	*ABS*
 59c:	000080e7          	jalr	ra # 598 <.LBE421+0x6>

000005a0 <.LVL277>:
 5a0:	00a40923          	sb	a0,18(s0)
 5a4:	00000097          	auipc	ra,0x0
			5a4: R_RISCV_CALL	hal_machw_idle_req
			5a4: R_RISCV_RELAX	*ABS*
 5a8:	000080e7          	jalr	ra # 5a4 <.LVL277+0x4>

000005ac <.LVL278>:
 5ac:	4589                	li	a1,2
 5ae:	8526                	mv	a0,s1
 5b0:	00000097          	auipc	ra,0x0
			5b0: R_RISCV_CALL	ke_state_set
			5b0: R_RISCV_RELAX	*ABS*
 5b4:	000080e7          	jalr	ra # 5b0 <.LVL278+0x4>

000005b8 <.LVL279>:
 5b8:	bcbd                	j	36 <.L162>
			5b8: R_RISCV_RVC_JUMP	.L162

Disassembly of section .text.bl60x_edca_get:

00000000 <bl60x_edca_get>:
   0:	4785                	li	a5,1
   2:	04f50863          	beq	a0,a5,52 <.L166>
			2: R_RISCV_BRANCH	.L166
   6:	00a7c563          	blt	a5,a0,10 <.L167>
			6: R_RISCV_BRANCH	.L167
   a:	cd11                	beqz	a0,26 <.L168>
			a: R_RISCV_RVC_BRANCH	.L168

0000000c <.L172>:
   c:	557d                	li	a0,-1

0000000e <.LVL281>:
   e:	8082                	ret

00000010 <.L167>:
  10:	4789                	li	a5,2
  12:	06f50763          	beq	a0,a5,80 <.L170>
			12: R_RISCV_BRANCH	.L170
  16:	478d                	li	a5,3
  18:	fef51ae3          	bne	a0,a5,c <.L172>
			18: R_RISCV_BRANCH	.L172

0000001c <.LBB430>:
  1c:	44b007b7          	lui	a5,0x44b00
  20:	20c7a783          	lw	a5,524(a5) # 44b0020c <.LASF570+0x44afc27b>
  24:	a81d                	j	5a <.L173>
			24: R_RISCV_RVC_JUMP	.L173

00000026 <.L168>:
  26:	44b007b7          	lui	a5,0x44b00
  2a:	2007a783          	lw	a5,512(a5) # 44b00200 <.LASF570+0x44afc26f>

0000002e <.LVL285>:
  2e:	00c7d813          	srli	a6,a5,0xc
  32:	01071023          	sh	a6,0(a4) # 44b00000 <.LASF570+0x44afc06f>
  36:	0087d713          	srli	a4,a5,0x8

0000003a <.LVL286>:
  3a:	8b3d                	andi	a4,a4,15
  3c:	00e68023          	sb	a4,0(a3) # 44b00000 <.LASF570+0x44afc06f>
  40:	0047d713          	srli	a4,a5,0x4
  44:	8b3d                	andi	a4,a4,15
  46:	00e60023          	sb	a4,0(a2)
  4a:	8bbd                	andi	a5,a5,15

0000004c <.LVL287>:
  4c:	00f58023          	sb	a5,0(a1) # 0 <bl60x_edca_get>
  50:	8082                	ret

00000052 <.L166>:
  52:	44b007b7          	lui	a5,0x44b00
  56:	2047a783          	lw	a5,516(a5) # 44b00204 <.LASF570+0x44afc273>

0000005a <.L173>:
  5a:	00c7d513          	srli	a0,a5,0xc

0000005e <.LVL290>:
  5e:	00a71023          	sh	a0,0(a4)
  62:	0087d713          	srli	a4,a5,0x8

00000066 <.LVL291>:
  66:	8b3d                	andi	a4,a4,15
  68:	00e68023          	sb	a4,0(a3)
  6c:	0047d713          	srli	a4,a5,0x4
  70:	8b3d                	andi	a4,a4,15
  72:	00e60023          	sb	a4,0(a2)
  76:	8bbd                	andi	a5,a5,15

00000078 <.LVL292>:
  78:	00f58023          	sb	a5,0(a1)

0000007c <.LBE437>:
  7c:	4501                	li	a0,0

0000007e <.LVL293>:
  7e:	8082                	ret

00000080 <.L170>:
  80:	44b007b7          	lui	a5,0x44b00
  84:	2087a783          	lw	a5,520(a5) # 44b00208 <.LASF570+0x44afc277>
  88:	bfc9                	j	5a <.L173>
			88: R_RISCV_RVC_JUMP	.L173
