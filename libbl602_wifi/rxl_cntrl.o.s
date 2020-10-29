
libbl602_wifi/rxl_cntrl.o:     file format elf32-littleriscv


Disassembly of section .text.mm_ps_change_ind:

00000000 <mm_ps_change_ind>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842e                	mv	s0,a1
   8:	84aa                	mv	s1,a0

0000000a <.LBB49>:
   a:	4689                	li	a3,2
   c:	4601                	li	a2,0
   e:	45b5                	li	a1,13

00000010 <.LVL2>:
  10:	04900513          	li	a0,73

00000014 <.LBE49>:
  14:	c606                	sw	ra,12(sp)

00000016 <.LBB50>:
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_msg_alloc
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LBB50>

0000001e <.LVL4>:
  1e:	1b000713          	li	a4,432
  22:	02e48733          	mul	a4,s1,a4
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	sta_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	sta_info_tab
			2a: R_RISCV_RELAX	*ABS*
  2e:	97ba                	add	a5,a5,a4
  30:	00878e23          	sb	s0,28(a5) # 1c <.LBB50+0x6>
  34:	00950023          	sb	s1,0(a0)
  38:	008500a3          	sb	s0,1(a0)

0000003c <.LBE50>:
  3c:	4422                	lw	s0,8(sp)
  3e:	40b2                	lw	ra,12(sp)
  40:	4492                	lw	s1,4(sp)
  42:	0141                	addi	sp,sp,16

00000044 <.LBB51>:
  44:	00000317          	auipc	t1,0x0
			44: R_RISCV_CALL	ke_msg_send
			44: R_RISCV_RELAX	*ABS*
  48:	00030067          	jr	t1 # 44 <.LBB51>

Disassembly of section .text.rxl_mpdu_transfer:

00000000 <rxl_mpdu_transfer>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	00452903          	lw	s2,4(a0)

0000000e <.LVL8>:
   e:	842a                	mv	s0,a0
  10:	4581                	li	a1,0
  12:	04490513          	addi	a0,s2,68

00000016 <.LVL9>:
  16:	00892483          	lw	s1,8(s2)

0000001a <.LVL10>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	phy_get_channel
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL10>

00000022 <.LVL11>:
  22:	000007b7          	lui	a5,0x0
			22: R_RISCV_HI20	mac_payload_offset
			22: R_RISCV_RELAX	*ABS*
  26:	0007a783          	lw	a5,0(a5) # 0 <rxl_mpdu_transfer>
			26: R_RISCV_LO12_I	mac_payload_offset
			26: R_RISCV_RELAX	*ABS*
  2a:	4701                	li	a4,0
  2c:	04f92a23          	sw	a5,84(s2)
  30:	00040ea3          	sb	zero,29(s0)

00000034 <.L5>:
  34:	0104d783          	lhu	a5,16(s1)

00000038 <.LVL13>:
  38:	8b85                	andi	a5,a5,1

0000003a <.LVL14>:
  3a:	ef95                	bnez	a5,76 <.L4>
			3a: R_RISCV_RVC_BRANCH	.L4

0000003c <.LVL15>:
  3c:	01d44783          	lbu	a5,29(s0)
  40:	40d4                	lw	a3,4(s1)

00000042 <.LVL16>:
  42:	8726                	mv	a4,s1
  44:	0785                	addi	a5,a5,1
  46:	00f40ea3          	sb	a5,29(s0)

0000004a <.LVL17>:
  4a:	e685                	bnez	a3,72 <.L6>
			4a: R_RISCV_RVC_BRANCH	.L6

0000004c <.LBE52>:
  4c:	4422                	lw	s0,8(sp)

0000004e <.LVL18>:
  4e:	40b2                	lw	ra,12(sp)
  50:	4492                	lw	s1,4(sp)

00000052 <.LVL19>:
  52:	4902                	lw	s2,0(sp)

00000054 <.LBB53>:
  54:	000005b7          	lui	a1,0x0
			54: R_RISCV_HI20	.LC0
			54: R_RISCV_RELAX	*ABS*
  58:	00000537          	lui	a0,0x0
			58: R_RISCV_HI20	.LC1
			58: R_RISCV_RELAX	*ABS*

0000005c <.LBB54>:
  5c:	0b400613          	li	a2,180
  60:	00058593          	mv	a1,a1
			60: R_RISCV_LO12_I	.LC0
			60: R_RISCV_RELAX	*ABS*
  64:	00050513          	mv	a0,a0
			64: R_RISCV_LO12_I	.LC1
			64: R_RISCV_RELAX	*ABS*

00000068 <.LBE54>:
  68:	0141                	addi	sp,sp,16

0000006a <.LBB55>:
  6a:	00000317          	auipc	t1,0x0
			6a: R_RISCV_CALL	assert_rec
			6a: R_RISCV_RELAX	*ABS*
  6e:	00030067          	jr	t1 # 6a <.LBB55>

00000072 <.L6>:
  72:	84b6                	mv	s1,a3

00000074 <.LVL22>:
  74:	b7c1                	j	34 <.L5>
			74: R_RISCV_RVC_JUMP	.L5

00000076 <.L4>:
  76:	c804                	sw	s1,16(s0)

00000078 <.LVL24>:
  78:	c458                	sw	a4,12(s0)
  7a:	40b2                	lw	ra,12(sp)
  7c:	4422                	lw	s0,8(sp)

0000007e <.LVL25>:
  7e:	4492                	lw	s1,4(sp)

00000080 <.LVL26>:
  80:	4902                	lw	s2,0(sp)

00000082 <.LVL27>:
  82:	0141                	addi	sp,sp,16
  84:	8082                	ret

Disassembly of section .text.rxl_init:

00000000 <rxl_init>:
   0:	1141                	addi	sp,sp,-16
   2:	4505                	li	a0,1
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	rxl_hwdesc_init
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <rxl_init+0x6>

0000000e <.LVL28>:
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	rx_swdesc_init
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL28>

00000016 <.LBB58>:
  16:	00000537          	lui	a0,0x0
			16: R_RISCV_HI20	rxl_cntrl_env
			16: R_RISCV_RELAX	*ABS*
  1a:	00050513          	mv	a0,a0
			1a: R_RISCV_LO12_I	rxl_cntrl_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	co_list_init
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LBB58+0x8>

00000026 <.LBE58>:
  26:	40b2                	lw	ra,12(sp)
  28:	0141                	addi	sp,sp,16
  2a:	00000317          	auipc	t1,0x0
			2a: R_RISCV_CALL	rxu_cntrl_init
			2a: R_RISCV_RELAX	*ABS*
  2e:	00030067          	jr	t1 # 2a <.LBE58+0x4>

Disassembly of section .text.rxl_cntrl_dump:

00000000 <rxl_cntrl_dump>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	rxl_cntrl_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040513          	mv	a0,s0
			8: R_RISCV_LO12_I	rxl_cntrl_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	co_list_cnt
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <rxl_cntrl_dump+0xe>

00000016 <.LVL32>:
  16:	c501                	beqz	a0,1e <.L10>
			16: R_RISCV_RVC_BRANCH	.L10
  18:	00042783          	lw	a5,0(s0) # 0 <rxl_cntrl_dump>
			18: R_RISCV_LO12_I	rxl_cntrl_env
			18: R_RISCV_RELAX	*ABS*

0000001c <.L12>:
  1c:	e789                	bnez	a5,26 <.L13>
			1c: R_RISCV_RVC_BRANCH	.L13

0000001e <.L10>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4422                	lw	s0,8(sp)
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

00000026 <.L13>:
  26:	439c                	lw	a5,0(a5)

00000028 <.LVL36>:
  28:	bfd5                	j	1c <.L12>
			28: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.rxl_timer_int_handler:

00000000 <rxl_timer_int_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)

0000000e <.LBB69>:
   e:	44b087b7          	lui	a5,0x44b08
  12:	000a0737          	lui	a4,0xa0

00000016 <.LBE69>:
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	rxl_cntrl_env
			16: R_RISCV_RELAX	*ABS*

0000001a <.LBB70>:
  1a:	dff8                	sw	a4,124(a5)

0000001c <.LBE70>:
  1c:	00048413          	mv	s0,s1
			1c: R_RISCV_LO12_I	rxl_cntrl_env
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LBB71>:
  20:	00000937          	lui	s2,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	000009b7          	lui	s3,0x0
			24: R_RISCV_HI20	.LC2
			24: R_RISCV_RELAX	*ABS*

00000028 <.LBB73>:
  28:	00000a37          	lui	s4,0x0
			28: R_RISCV_HI20	.LC1
			28: R_RISCV_RELAX	*ABS*

0000002c <.L19>:
  2c:	441c                	lw	a5,8(s0)
  2e:	c3bd                	beqz	a5,94 <.L20>
			2e: R_RISCV_RVC_BRANCH	.L20
  30:	43b8                	lw	a4,64(a5)
  32:	01171693          	slli	a3,a4,0x11
  36:	0406df63          	bgez	a3,94 <.L20>
			36: R_RISCV_BRANCH	.L20

0000003a <.LVL38>:
  3a:	43d8                	lw	a4,4(a5)
  3c:	47cc                	lw	a1,12(a5)

0000003e <.LVL39>:
  3e:	c418                	sw	a4,8(s0)
  40:	479c                	lw	a5,8(a5)

00000042 <.LBB79>:
  42:	41c8                	lw	a0,4(a1)

00000044 <.LBE79>:
  44:	c59c                	sw	a5,8(a1)

00000046 <.LBB80>:
  46:	01c55703          	lhu	a4,28(a0) # 1c <.LBE70>
  4a:	451c                	lw	a5,8(a0)
  4c:	c31d                	beqz	a4,72 <.L21>
			4c: R_RISCV_RVC_BRANCH	.L21

0000004e <.LBB74>:
  4e:	c799                	beqz	a5,5c <.L22>
			4e: R_RISCV_RVC_BRANCH	.L22

00000050 <.LBE74>:
  50:	8522                	mv	a0,s0

00000052 <.LVL44>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	co_list_push_back
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL44>

0000005a <.LVL45>:
  5a:	bfc9                	j	2c <.L19>
			5a: R_RISCV_RVC_JUMP	.L19

0000005c <.L22>:
  5c:	0d800613          	li	a2,216
  60:	00090593          	mv	a1,s2
			60: R_RISCV_LO12_I	.LC0
			60: R_RISCV_RELAX	*ABS*

00000064 <.LVL47>:
  64:	000a0513          	mv	a0,s4
			64: R_RISCV_LO12_I	.LC1
			64: R_RISCV_RELAX	*ABS*

00000068 <.L34>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	assert_rec
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L34>

00000070 <.LVL49>:
  70:	bf75                	j	2c <.L19>
			70: R_RISCV_RVC_JUMP	.L19

00000072 <.L21>:
  72:	cb81                	beqz	a5,82 <.L25>
			72: R_RISCV_RVC_BRANCH	.L25
  74:	0fa00613          	li	a2,250
  78:	00090593          	mv	a1,s2
			78: R_RISCV_LO12_I	.LC0
			78: R_RISCV_RELAX	*ABS*

0000007c <.LVL51>:
  7c:	00098513          	mv	a0,s3
			7c: R_RISCV_LO12_I	.LC2
			7c: R_RISCV_RELAX	*ABS*

00000080 <.LVL52>:
  80:	b7e5                	j	68 <.L34>
			80: R_RISCV_RVC_JUMP	.L34

00000082 <.L25>:
  82:	0005a823          	sw	zero,16(a1) # 10 <.LBB69+0x2>
  86:	0005a623          	sw	zero,12(a1)
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	rxl_hd_append
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.L25+0x8>

00000092 <.LVL54>:
  92:	bf69                	j	2c <.L19>
			92: R_RISCV_RVC_JUMP	.L19

00000094 <.L20>:
  94:	0004a783          	lw	a5,0(s1) # 0 <rxl_timer_int_handler>
			94: R_RISCV_LO12_I	rxl_cntrl_env
			94: R_RISCV_RELAX	*ABS*
  98:	cf91                	beqz	a5,b4 <.L18>
			98: R_RISCV_RVC_BRANCH	.L18
  9a:	4462                	lw	s0,24(sp)
  9c:	40f2                	lw	ra,28(sp)
  9e:	44d2                	lw	s1,20(sp)
  a0:	4942                	lw	s2,16(sp)
  a2:	49b2                	lw	s3,12(sp)
  a4:	4a22                	lw	s4,8(sp)
  a6:	00040537          	lui	a0,0x40
  aa:	6105                	addi	sp,sp,32
  ac:	00000317          	auipc	t1,0x0
			ac: R_RISCV_CALL	ke_evt_set
			ac: R_RISCV_RELAX	*ABS*
  b0:	00030067          	jr	t1 # ac <.L20+0x18>

000000b4 <.L18>:
  b4:	40f2                	lw	ra,28(sp)
  b6:	4462                	lw	s0,24(sp)
  b8:	44d2                	lw	s1,20(sp)
  ba:	4942                	lw	s2,16(sp)
  bc:	49b2                	lw	s3,12(sp)
  be:	4a22                	lw	s4,8(sp)
  c0:	6105                	addi	sp,sp,32
  c2:	8082                	ret

Disassembly of section .text.rxl_timeout_int_handler:

00000000 <rxl_timeout_int_handler>:
   0:	44b08737          	lui	a4,0x44b08
   4:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF541+0x44b047fd>

00000008 <.LBE82>:
   8:	fbf7f793          	andi	a5,a5,-65

0000000c <.LBB84>:
   c:	08f72623          	sw	a5,140(a4)

00000010 <.LBE84>:
  10:	8082                	ret

Disassembly of section .text.rxl_dma_int_handler:

00000000 <rxl_dma_int_handler>:
   0:	a001                	j	0 <rxl_dma_int_handler>
			0: R_RISCV_RVC_JUMP	.L37

Disassembly of section .text.rxl_dma_evt:

00000000 <rxl_dma_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	00100537          	lui	a0,0x100

00000006 <.LVL60>:
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ke_evt_clear
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL60+0x2>

00000010 <.LBB86>:
  10:	44a007b7          	lui	a5,0x44a00
  14:	02000713          	li	a4,32
  18:	d398                	sw	a4,32(a5)

0000001a <.LBE86>:
  1a:	40b2                	lw	ra,12(sp)
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

Disassembly of section .text.rxl_frame_release:

00000000 <rxl_frame_release>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	415c                	lw	a5,4(a0)
   8:	842a                	mv	s0,a0
   a:	4910                	lw	a2,16(a0)
   c:	454c                	lw	a1,12(a0)
   e:	4788                	lw	a0,8(a5)

00000010 <.LVL64>:
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	rxl_pd_append
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL64>

00000018 <.LVL65>:
  18:	4048                	lw	a0,4(s0)
  1a:	4422                	lw	s0,8(sp)

0000001c <.LVL66>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	0141                	addi	sp,sp,16
  20:	00000317          	auipc	t1,0x0
			20: R_RISCV_CALL	rxl_hd_append
			20: R_RISCV_RELAX	*ABS*
  24:	00030067          	jr	t1 # 20 <.LVL66+0x4>

Disassembly of section .text.rxl_mpdu_free:

00000000 <rxl_mpdu_free>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)

00000004 <.LVL69>:
   4:	cc22                	sw	s0,24(sp)
   6:	415c                	lw	a5,4(a0)
   8:	c62a                	sw	a0,12(sp)
   a:	4780                	lw	s0,8(a5)

0000000c <.LVL70>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	vTaskEnterCritical
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL70>

00000014 <.LVL71>:
  14:	4532                	lw	a0,12(sp)
  16:	4701                	li	a4,0
  18:	415c                	lw	a5,4(a0)
  1a:	00050f23          	sb	zero,30(a0) # 10001e <.LASF541+0xfc78f>
  1e:	0607a023          	sw	zero,96(a5) # 44a00060 <.LASF541+0x449fc7d1>

00000022 <.L44>:
  22:	01045783          	lhu	a5,16(s0)

00000026 <.LVL73>:
  26:	00042a23          	sw	zero,20(s0)
  2a:	8b85                	andi	a5,a5,1

0000002c <.LVL74>:
  2c:	e79d                	bnez	a5,5a <.L43>
			2c: R_RISCV_RVC_BRANCH	.L43

0000002e <.LVL75>:
  2e:	405c                	lw	a5,4(s0)

00000030 <.LVL76>:
  30:	8722                	mv	a4,s0
  32:	e395                	bnez	a5,56 <.L45>
			32: R_RISCV_RVC_BRANCH	.L45

00000034 <.LBB93>:
  34:	4462                	lw	s0,24(sp)

00000036 <.LVL78>:
  36:	40f2                	lw	ra,28(sp)

00000038 <.LBB102>:
  38:	000005b7          	lui	a1,0x0
			38: R_RISCV_HI20	.LC0
			38: R_RISCV_RELAX	*ABS*
  3c:	00000537          	lui	a0,0x0
			3c: R_RISCV_HI20	.LC1
			3c: R_RISCV_RELAX	*ABS*

00000040 <.LBB103>:
  40:	39700613          	li	a2,919
  44:	00058593          	mv	a1,a1
			44: R_RISCV_LO12_I	.LC0
			44: R_RISCV_RELAX	*ABS*
  48:	00050513          	mv	a0,a0
			48: R_RISCV_LO12_I	.LC1
			48: R_RISCV_RELAX	*ABS*

0000004c <.LBE103>:
  4c:	6105                	addi	sp,sp,32

0000004e <.LBB104>:
  4e:	00000317          	auipc	t1,0x0
			4e: R_RISCV_CALL	assert_rec
			4e: R_RISCV_RELAX	*ABS*
  52:	00030067          	jr	t1 # 4e <.LBB104>

00000056 <.L45>:
  56:	843e                	mv	s0,a5

00000058 <.LVL81>:
  58:	b7e9                	j	22 <.L44>
			58: R_RISCV_RVC_JUMP	.L44

0000005a <.L43>:
  5a:	c900                	sw	s0,16(a0)

0000005c <.LVL83>:
  5c:	c558                	sw	a4,12(a0)
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	rxl_frame_release
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL83+0x2>

00000066 <.LVL84>:
  66:	4462                	lw	s0,24(sp)

00000068 <.LVL85>:
  68:	40f2                	lw	ra,28(sp)
  6a:	6105                	addi	sp,sp,32

0000006c <.LVL86>:
  6c:	00000317          	auipc	t1,0x0
			6c: R_RISCV_CALL	vTaskExitCritical
			6c: R_RISCV_RELAX	*ABS*
  70:	00030067          	jr	t1 # 6c <.LVL86>

Disassembly of section .text.rxl_cntrl_evt:

00000000 <rxl_cntrl_evt>:
   0:	7159                	addi	sp,sp,-112
   2:	4795                	li	a5,5
   4:	c63e                	sw	a5,12(sp)

00000006 <.LBB133>:
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	mac_tid2ac
			6: R_RISCV_RELAX	*ABS*
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	mac_tid2ac
			a: R_RISCV_RELAX	*ABS*
   e:	c83e                	sw	a5,16(sp)
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	mac_ac2uapsd
			10: R_RISCV_RELAX	*ABS*

00000014 <.LBE133>:
  14:	c8da                	sw	s6,80(sp)
  16:	c6de                	sw	s7,76(sp)

00000018 <.LBB167>:
  18:	00000b37          	lui	s6,0x0
			18: R_RISCV_HI20	sta_info_tab
			18: R_RISCV_RELAX	*ABS*

0000001c <.LBE167>:
  1c:	00000bb7          	lui	s7,0x0
			1c: R_RISCV_HI20	vif_info_tab
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LBB156>:
  20:	00078793          	mv	a5,a5
			20: R_RISCV_LO12_I	mac_ac2uapsd
			20: R_RISCV_RELAX	*ABS*

00000024 <.LBE156>:
  24:	d686                	sw	ra,108(sp)
  26:	d4a2                	sw	s0,104(sp)
  28:	d2a6                	sw	s1,100(sp)
  2a:	d0ca                	sw	s2,96(sp)
  2c:	cece                	sw	s3,92(sp)
  2e:	ccd2                	sw	s4,88(sp)
  30:	cad6                	sw	s5,84(sp)
  32:	c4e2                	sw	s8,72(sp)
  34:	c2e6                	sw	s9,68(sp)
  36:	c0ea                	sw	s10,64(sp)
  38:	de6e                	sw	s11,60(sp)

0000003a <.LBB172>:
  3a:	000b0b13          	mv	s6,s6
			3a: R_RISCV_LO12_I	sta_info_tab
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LBE172>:
  3e:	000b8b93          	mv	s7,s7
			3e: R_RISCV_LO12_I	vif_info_tab
			3e: R_RISCV_RELAX	*ABS*

00000042 <.LBB157>:
  42:	ca3e                	sw	a5,20(sp)

00000044 <.L73>:
  44:	00000437          	lui	s0,0x0
			44: R_RISCV_HI20	rxl_cntrl_env
			44: R_RISCV_RELAX	*ABS*
  48:	00042c83          	lw	s9,0(s0) # 0 <rxl_cntrl_evt>
			48: R_RISCV_LO12_I	rxl_cntrl_env
			48: R_RISCV_RELAX	*ABS*

0000004c <.LVL90>:
  4c:	00040537          	lui	a0,0x40
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ke_evt_clear
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL90+0x4>

00000058 <.LVL91>:
  58:	000c8c63          	beqz	s9,70 <.L47>
			58: R_RISCV_BRANCH	.L47
  5c:	47b2                	lw	a5,12(sp)
  5e:	17fd                	addi	a5,a5,-1
  60:	c63e                	sw	a5,12(sp)

00000062 <.LVL92>:
  62:	e795                	bnez	a5,8e <.L49>
			62: R_RISCV_RVC_BRANCH	.L49
  64:	00040537          	lui	a0,0x40
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	ke_evt_set
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL92+0x6>

00000070 <.L47>:
  70:	50b6                	lw	ra,108(sp)
  72:	5426                	lw	s0,104(sp)
  74:	5496                	lw	s1,100(sp)
  76:	5906                	lw	s2,96(sp)
  78:	49f6                	lw	s3,92(sp)
  7a:	4a66                	lw	s4,88(sp)
  7c:	4ad6                	lw	s5,84(sp)
  7e:	4b46                	lw	s6,80(sp)
  80:	4bb6                	lw	s7,76(sp)
  82:	4c26                	lw	s8,72(sp)
  84:	4c96                	lw	s9,68(sp)

00000086 <.LVL94>:
  86:	4d06                	lw	s10,64(sp)
  88:	5df2                	lw	s11,60(sp)
  8a:	6165                	addi	sp,sp,112
  8c:	8082                	ret

0000008e <.L49>:
  8e:	30047073          	csrci	mstatus,8

00000092 <.LBE197>:
  92:	00040513          	mv	a0,s0
			92: R_RISCV_LO12_I	rxl_cntrl_env
			92: R_RISCV_RELAX	*ABS*
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	co_list_pop_front
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LBE197+0x4>

0000009e <.LBB199>:
  9e:	30046073          	csrsi	mstatus,8

000000a2 <.LBB201>:
  a2:	004cac03          	lw	s8,4(s9)

000000a6 <.LBB190>:
  a6:	008c2903          	lw	s2,8(s8)
  aa:	02091663          	bnez	s2,d6 <.L50>
			aa: R_RISCV_BRANCH	.L50
  ae:	000005b7          	lui	a1,0x0
			ae: R_RISCV_HI20	.LC0
			ae: R_RISCV_RELAX	*ABS*
  b2:	00000537          	lui	a0,0x0
			b2: R_RISCV_HI20	.LC3
			b2: R_RISCV_RELAX	*ABS*
  b6:	20500613          	li	a2,517
  ba:	00058593          	mv	a1,a1
			ba: R_RISCV_LO12_I	.LC0
			ba: R_RISCV_RELAX	*ABS*
  be:	00050513          	mv	a0,a0
			be: R_RISCV_LO12_I	.LC3
			be: R_RISCV_RELAX	*ABS*

000000c2 <.L100>:
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	assert_rec
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.L100>

000000ca <.L96>:
  ca:	8566                	mv	a0,s9
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	rxl_mpdu_free
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.L96+0x2>

000000d4 <.LVL100>:
  d4:	bf85                	j	44 <.L73>
			d4: R_RISCV_RVC_JUMP	.L73

000000d6 <.L50>:
  d6:	040c2d83          	lw	s11,64(s8)

000000da <.LVL102>:
  da:	020027b7          	lui	a5,0x2002
  de:	00fdf733          	and	a4,s11,a5
  e2:	04f71863          	bne	a4,a5,132 <.L55>
			e2: R_RISCV_BRANCH	.L55
  e6:	00fdd793          	srli	a5,s11,0xf
  ea:	07c2                	slli	a5,a5,0x10
  ec:	83c1                	srli	a5,a5,0x10
  ee:	3ff7f413          	andi	s0,a5,1023

000000f2 <.LVL103>:
  f2:	3f87f793          	andi	a5,a5,1016
  f6:	ef81                	bnez	a5,10e <.L53>
			f6: R_RISCV_RVC_BRANCH	.L53
  f8:	000005b7          	lui	a1,0x0
			f8: R_RISCV_HI20	.LC0
			f8: R_RISCV_RELAX	*ABS*
  fc:	00000537          	lui	a0,0x0
			fc: R_RISCV_HI20	.LC4
			fc: R_RISCV_RELAX	*ABS*
 100:	21500613          	li	a2,533
 104:	00058593          	mv	a1,a1
			104: R_RISCV_LO12_I	.LC0
			104: R_RISCV_RELAX	*ABS*
 108:	00050513          	mv	a0,a0
			108: R_RISCV_LO12_I	.LC4
			108: R_RISCV_RELAX	*ABS*
 10c:	bf5d                	j	c2 <.L100>
			10c: R_RISCV_RVC_JUMP	.L100

0000010e <.L53>:
 10e:	1461                	addi	s0,s0,-8

00000110 <.LVL104>:
 110:	0ff47413          	andi	s0,s0,255

00000114 <.LBB174>:
 114:	1b000a13          	li	s4,432
 118:	03440a33          	mul	s4,s0,s4
 11c:	9a5a                	add	s4,s4,s6

0000011e <.LBE174>:
 11e:	01da4783          	lbu	a5,29(s4) # 1d <.LBE167+0x1>
 122:	ef99                	bnez	a5,140 <.L54>
			122: R_RISCV_RVC_BRANCH	.L54
 124:	fe0007b7          	lui	a5,0xfe000
 128:	17fd                	addi	a5,a5,-1
 12a:	00fdfdb3          	and	s11,s11,a5

0000012e <.LVL106>:
 12e:	05bc2023          	sw	s11,64(s8)

00000132 <.L55>:
 132:	8566                	mv	a0,s9
 134:	00000097          	auipc	ra,0x0
			134: R_RISCV_CALL	rxu_cntrl_frame_handle
			134: R_RISCV_RELAX	*ABS*
 138:	000080e7          	jalr	ra # 134 <.L55+0x2>

0000013c <.LVL108>:
 13c:	f501                	bnez	a0,44 <.L73>
			13c: R_RISCV_RVC_BRANCH	.L73
 13e:	b771                	j	ca <.L96>
			13e: R_RISCV_RVC_JUMP	.L96

00000140 <.L54>:
 140:	01aa4483          	lbu	s1,26(s4)
 144:	5d800993          	li	s3,1496
 148:	00000097          	auipc	ra,0x0
			148: R_RISCV_CALL	xTaskGetTickCount
			148: R_RISCV_RELAX	*ABS*
 14c:	000080e7          	jalr	ra # 148 <.L54+0x8>

00000150 <.LVL111>:
 150:	033487b3          	mul	a5,s1,s3
 154:	1aaa2423          	sw	a0,424(s4)
 158:	00892d03          	lw	s10,8(s2) # 8 <.LBB133+0x2>

0000015c <.LBB175>:
 15c:	000d5a83          	lhu	s5,0(s10)

00000160 <.LBE175>:
 160:	97de                	add	a5,a5,s7
 162:	0577c903          	lbu	s2,87(a5) # fe000057 <.LASF541+0xfdffc7c8>

00000166 <.LBB177>:
 166:	4789                	li	a5,2
 168:	033909b3          	mul	s3,s2,s3
 16c:	99de                	add	s3,s3,s7
 16e:	0569c703          	lbu	a4,86(s3) # 56 <.LVL90+0xa>
 172:	06f71263          	bne	a4,a5,1d6 <.L57>
			172: R_RISCV_BRANCH	.L57

00000176 <.LBB178>:
 176:	01ca4703          	lbu	a4,28(s4)
 17a:	4785                	li	a5,1
 17c:	26f71263          	bne	a4,a5,3e0 <.L58>
			17c: R_RISCV_BRANCH	.L58
 180:	6785                	lui	a5,0x1
 182:	40c78793          	addi	a5,a5,1036 # 140c <.LASF374+0x5>
 186:	00faf7b3          	and	a5,s5,a5
 18a:	4721                	li	a4,8
 18c:	0ee79463          	bne	a5,a4,274 <.L59>
			18c: R_RISCV_BRANCH	.L59
 190:	4581                	li	a1,0
 192:	8522                	mv	a0,s0
 194:	00000097          	auipc	ra,0x0
			194: R_RISCV_CALL	mm_ps_change_ind
			194: R_RISCV_RELAX	*ABS*
 198:	000080e7          	jalr	ra # 194 <.LBB178+0x1e>

0000019c <.LVL116>:
 19c:	85a2                	mv	a1,s0
 19e:	854e                	mv	a0,s3
 1a0:	00000097          	auipc	ra,0x0
			1a0: R_RISCV_CALL	apm_tx_int_ps_clear
			1a0: R_RISCV_RELAX	*ABS*
 1a4:	000080e7          	jalr	ra # 1a0 <.LVL116+0x4>

000001a8 <.LVL117>:
 1a8:	34a9c783          	lbu	a5,842(s3)
 1ac:	17fd                	addi	a5,a5,-1
 1ae:	0ff7f793          	andi	a5,a5,255
 1b2:	34f98523          	sb	a5,842(s3)
 1b6:	e385                	bnez	a5,1d6 <.L57>
			1b6: R_RISCV_RVC_BRANCH	.L57
 1b8:	0929                	addi	s2,s2,10

000001ba <.LVL118>:
 1ba:	0ff97913          	andi	s2,s2,255

000001be <.LVL119>:
 1be:	4581                	li	a1,0
 1c0:	854a                	mv	a0,s2
 1c2:	00000097          	auipc	ra,0x0
			1c2: R_RISCV_CALL	mm_ps_change_ind
			1c2: R_RISCV_RELAX	*ABS*
 1c6:	000080e7          	jalr	ra # 1c2 <.LVL119+0x4>

000001ca <.LVL120>:
 1ca:	85ca                	mv	a1,s2
 1cc:	854e                	mv	a0,s3
 1ce:	00000097          	auipc	ra,0x0
			1ce: R_RISCV_CALL	apm_tx_int_ps_clear
			1ce: R_RISCV_RELAX	*ABS*
 1d2:	000080e7          	jalr	ra # 1ce <.LVL120+0x4>

000001d6 <.L57>:
 1d6:	5d800793          	li	a5,1496
 1da:	02f487b3          	mul	a5,s1,a5
 1de:	97de                	add	a5,a5,s7
 1e0:	0587c703          	lbu	a4,88(a5)
 1e4:	d739                	beqz	a4,132 <.L55>
			1e4: R_RISCV_RVC_BRANCH	.L55
 1e6:	004af913          	andi	s2,s5,4
 1ea:	00091a63          	bnez	s2,1fe <.L69>
			1ea: R_RISCV_BRANCH	.L69
 1ee:	0577c503          	lbu	a0,87(a5)
 1f2:	4605                	li	a2,1
 1f4:	85a2                	mv	a1,s0
 1f6:	00000097          	auipc	ra,0x0
			1f6: R_RISCV_CALL	td_pck_ind
			1f6: R_RISCV_RELAX	*ABS*
 1fa:	000080e7          	jalr	ra # 1f6 <.L57+0x20>

000001fe <.L69>:
 1fe:	5d800793          	li	a5,1496
 202:	02f484b3          	mul	s1,s1,a5
 206:	94de                	add	s1,s1,s7
 208:	0564c783          	lbu	a5,86(s1)
 20c:	f39d                	bnez	a5,132 <.L55>
			20c: R_RISCV_RVC_BRANCH	.L55
 20e:	0fcafa93          	andi	s5,s5,252

00000212 <.LVL124>:
 212:	08000793          	li	a5,128
 216:	20fa9963          	bne	s5,a5,428 <.L70>
			216: R_RISCV_BRANCH	.L70

0000021a <.LBB179>:
 21a:	85e2                	mv	a1,s8
 21c:	4501                	li	a0,0
 21e:	d602                	sw	zero,44(sp)
 220:	00000097          	auipc	ra,0x0
			220: R_RISCV_CALL	pa_input
			220: R_RISCV_RELAX	*ABS*
 224:	000080e7          	jalr	ra # 220 <.LBB179+0x6>

00000228 <.LVL125>:
 228:	4501                	li	a0,0
 22a:	00000097          	auipc	ra,0x0
			22a: R_RISCV_CALL	pa_adapt
			22a: R_RISCV_RELAX	*ABS*
 22e:	000080e7          	jalr	ra # 22a <.LVL125+0x2>

00000232 <.LVL126>:
 232:	1074                	addi	a3,sp,44
 234:	8652                	mv	a2,s4
 236:	85a6                	mv	a1,s1
 238:	8562                	mv	a0,s8
 23a:	00000097          	auipc	ra,0x0
			23a: R_RISCV_CALL	mm_check_beacon
			23a: R_RISCV_RELAX	*ABS*
 23e:	000080e7          	jalr	ra # 23a <.LVL126+0x8>

00000242 <.LVL127>:
 242:	01cc5583          	lhu	a1,28(s8)
 246:	842a                	mv	s0,a0

00000248 <.LVL128>:
 248:	5532                	lw	a0,44(sp)
 24a:	8626                	mv	a2,s1
 24c:	00000097          	auipc	ra,0x0
			24c: R_RISCV_CALL	ps_check_beacon
			24c: R_RISCV_RELAX	*ABS*
 250:	000080e7          	jalr	ra # 24c <.LVL128+0x4>

00000254 <.LVL129>:
 254:	8526                	mv	a0,s1
 256:	00000097          	auipc	ra,0x0
			256: R_RISCV_CALL	vif_mgmt_bcn_recv
			256: R_RISCV_RELAX	*ABS*
 25a:	000080e7          	jalr	ra # 256 <.LVL129+0x2>

0000025e <.LVL130>:
 25e:	40bc                	lw	a5,64(s1)
 260:	c799                	beqz	a5,26e <.L71>
			260: R_RISCV_RVC_BRANCH	.L71
 262:	50cc                	lw	a1,36(s1)
 264:	8526                	mv	a0,s1
 266:	00000097          	auipc	ra,0x0
			266: R_RISCV_CALL	chan_tbtt_switch_update
			266: R_RISCV_RELAX	*ABS*
 26a:	000080e7          	jalr	ra # 266 <.LVL130+0x8>

0000026e <.L71>:
 26e:	e4040ee3          	beqz	s0,ca <.L96>
			26e: R_RISCV_BRANCH	.L96
 272:	b5c1                	j	132 <.L55>
			272: R_RISCV_RVC_JUMP	.L55

00000274 <.L59>:
 274:	0fcaf793          	andi	a5,s5,252
 278:	0a400713          	li	a4,164
 27c:	02e79d63          	bne	a5,a4,2b6 <.L61>
			27c: R_RISCV_BRANCH	.L61
 280:	1b000913          	li	s2,432

00000284 <.LVL133>:
 284:	03240933          	mul	s2,s0,s2
 288:	995a                	add	s2,s2,s6
 28a:	03294783          	lbu	a5,50(s2)
 28e:	8b89                	andi	a5,a5,2
 290:	cbe1                	beqz	a5,360 <.L62>
			290: R_RISCV_RVC_BRANCH	.L62
 292:	03492783          	lw	a5,52(s2)
 296:	4605                	li	a2,1
 298:	85d2                	mv	a1,s4
 29a:	0017e793          	ori	a5,a5,1
 29e:	02f92a23          	sw	a5,52(s2)
 2a2:	854e                	mv	a0,s3
 2a4:	00000097          	auipc	ra,0x0
			2a4: R_RISCV_CALL	sta_mgmt_send_postponed_frame
			2a4: R_RISCV_RELAX	*ABS*
 2a8:	000080e7          	jalr	ra # 2a4 <.LVL133+0x20>

000002ac <.LVL134>:
 2ac:	03492783          	lw	a5,52(s2)
 2b0:	9bf9                	andi	a5,a5,-2
 2b2:	02f92a23          	sw	a5,52(s2)

000002b6 <.L61>:
 2b6:	08caf793          	andi	a5,s5,140
 2ba:	08800713          	li	a4,136
 2be:	f0e79ce3          	bne	a5,a4,1d6 <.L57>
			2be: R_RISCV_BRANCH	.L57

000002c2 <.LBB158>:
 2c2:	300af793          	andi	a5,s5,768
 2c6:	30000713          	li	a4,768
 2ca:	0ce79063          	bne	a5,a4,38a <.L63>
			2ca: R_RISCV_BRANCH	.L63

000002ce <.LBB139>:
 2ce:	01ed4783          	lbu	a5,30(s10)

000002d2 <.L98>:
 2d2:	1b000913          	li	s2,432
 2d6:	03240933          	mul	s2,s0,s2
 2da:	4742                	lw	a4,16(sp)

000002dc <.LBB140>:
 2dc:	8b9d                	andi	a5,a5,7

000002de <.LBE140>:
 2de:	46d2                	lw	a3,20(sp)
 2e0:	973e                	add	a4,a4,a5
 2e2:	00074703          	lbu	a4,0(a4)
 2e6:	9736                	add	a4,a4,a3
 2e8:	00074703          	lbu	a4,0(a4)
 2ec:	995a                	add	s2,s2,s6
 2ee:	0f294683          	lbu	a3,242(s2)
 2f2:	8f75                	and	a4,a4,a3
 2f4:	ee0701e3          	beqz	a4,1d6 <.L57>
			2f4: R_RISCV_BRANCH	.L57
 2f8:	03294683          	lbu	a3,50(s2)
 2fc:	03492703          	lw	a4,52(s2)
 300:	00c6f613          	andi	a2,a3,12
 304:	8b19                	andi	a4,a4,6
 306:	c679                	beqz	a2,3d4 <.L65>
			306: R_RISCV_RVC_BRANCH	.L65
 308:	ec0717e3          	bnez	a4,1d6 <.L57>
			308: R_RISCV_BRANCH	.L57

0000030c <.LBB141>:
 30c:	8aa1                	andi	a3,a3,8
 30e:	0f394803          	lbu	a6,243(s2)

00000312 <.LVL138>:
 312:	cebd                	beqz	a3,390 <.L66>
			312: R_RISCV_RVC_BRANCH	.L66

00000314 <.LBB142>:
 314:	4709                	li	a4,2
 316:	8642                	mv	a2,a6
 318:	02e92a23          	sw	a4,52(s2)
 31c:	85d2                	mv	a1,s4
 31e:	854e                	mv	a0,s3
 320:	ce3e                	sw	a5,28(sp)
 322:	cc42                	sw	a6,24(sp)
 324:	00000097          	auipc	ra,0x0
			324: R_RISCV_CALL	sta_mgmt_send_postponed_frame
			324: R_RISCV_RELAX	*ABS*
 328:	000080e7          	jalr	ra # 324 <.LBB142+0x10>

0000032c <.LVL139>:
 32c:	4862                	lw	a6,24(sp)
 32e:	47f2                	lw	a5,28(sp)
 330:	06080063          	beqz	a6,390 <.L66>
			330: R_RISCV_BRANCH	.L66
 334:	40a80833          	sub	a6,a6,a0

00000338 <.LBE142>:
 338:	05004c63          	bgtz	a6,390 <.L66>
			338: R_RISCV_BRANCH	.L66

0000033c <.L67>:
 33c:	1b000913          	li	s2,432
 340:	03240933          	mul	s2,s0,s2
 344:	995a                	add	s2,s2,s6

00000346 <.L99>:
 346:	01b94503          	lbu	a0,27(s2)
 34a:	4681                	li	a3,0
 34c:	4601                	li	a2,0
 34e:	0107e593          	ori	a1,a5,16
 352:	00000097          	auipc	ra,0x0
			352: R_RISCV_CALL	txl_frame_send_qosnull_frame
			352: R_RISCV_RELAX	*ABS*
 356:	000080e7          	jalr	ra # 352 <.L99+0xc>

0000035a <.LVL143>:
 35a:	02092a23          	sw	zero,52(s2)
 35e:	bda5                	j	1d6 <.L57>
			35e: R_RISCV_RVC_JUMP	.L57

00000360 <.L62>:
 360:	468d                	li	a3,3
 362:	4601                	li	a2,0
 364:	45b5                	li	a1,13
 366:	04a00513          	li	a0,74
 36a:	00000097          	auipc	ra,0x0
			36a: R_RISCV_CALL	ke_msg_alloc
			36a: R_RISCV_RELAX	*ABS*
 36e:	000080e7          	jalr	ra # 36a <.L62+0xa>

00000372 <.LVL145>:
 372:	4705                	li	a4,1
 374:	00850023          	sb	s0,0(a0) # 0 <rxl_cntrl_evt>
 378:	00e500a3          	sb	a4,1(a0)
 37c:	00050123          	sb	zero,2(a0)
 380:	00000097          	auipc	ra,0x0
			380: R_RISCV_CALL	ke_msg_send
			380: R_RISCV_RELAX	*ABS*
 384:	000080e7          	jalr	ra # 380 <.LVL145+0xe>

00000388 <.LVL146>:
 388:	b73d                	j	2b6 <.L61>
			388: R_RISCV_RVC_JUMP	.L61

0000038a <.L63>:
 38a:	018d4783          	lbu	a5,24(s10)
 38e:	b791                	j	2d2 <.L98>
			38e: R_RISCV_RVC_JUMP	.L98

00000390 <.L66>:
 390:	1b000713          	li	a4,432
 394:	02e40733          	mul	a4,s0,a4
 398:	975a                	add	a4,a4,s6
 39a:	03274683          	lbu	a3,50(a4)
 39e:	8a91                	andi	a3,a3,4
 3a0:	ded1                	beqz	a3,33c <.L67>
			3a0: R_RISCV_RVC_BRANCH	.L67
 3a2:	4791                	li	a5,4
 3a4:	db5c                	sw	a5,52(a4)

000003a6 <.LBB144>:
 3a6:	468d                	li	a3,3
 3a8:	4601                	li	a2,0
 3aa:	45b5                	li	a1,13
 3ac:	04a00513          	li	a0,74
 3b0:	cc42                	sw	a6,24(sp)

000003b2 <.LBB149>:
 3b2:	00000097          	auipc	ra,0x0
			3b2: R_RISCV_CALL	ke_msg_alloc
			3b2: R_RISCV_RELAX	*ABS*
 3b6:	000080e7          	jalr	ra # 3b2 <.LBB149>

000003ba <.LBE149>:
 3ba:	4862                	lw	a6,24(sp)

000003bc <.LBB150>:
 3bc:	4705                	li	a4,1
 3be:	00850023          	sb	s0,0(a0)

000003c2 <.LBE150>:
 3c2:	010500a3          	sb	a6,1(a0)

000003c6 <.LBB151>:
 3c6:	00e50123          	sb	a4,2(a0)
 3ca:	00000097          	auipc	ra,0x0
			3ca: R_RISCV_CALL	ke_msg_send
			3ca: R_RISCV_RELAX	*ABS*
 3ce:	000080e7          	jalr	ra # 3ca <.LBB151+0x4>

000003d2 <.LVL151>:
 3d2:	b511                	j	1d6 <.L57>
			3d2: R_RISCV_RVC_JUMP	.L57

000003d4 <.L65>:
 3d4:	e00711e3          	bnez	a4,1d6 <.L57>
			3d4: R_RISCV_BRANCH	.L57

000003d8 <.LBB155>:
 3d8:	4709                	li	a4,2
 3da:	02e92a23          	sw	a4,52(s2)
 3de:	b7a5                	j	346 <.L99>
			3de: R_RISCV_RVC_JUMP	.L99

000003e0 <.L58>:
 3e0:	6705                	lui	a4,0x1
 3e2:	40070793          	addi	a5,a4,1024 # 1400 <.LASF639+0x7>
 3e6:	00faf7b3          	and	a5,s5,a5
 3ea:	dee796e3          	bne	a5,a4,1d6 <.L57>
			3ea: R_RISCV_BRANCH	.L57
 3ee:	4585                	li	a1,1
 3f0:	8522                	mv	a0,s0
 3f2:	00000097          	auipc	ra,0x0
			3f2: R_RISCV_CALL	mm_ps_change_ind
			3f2: R_RISCV_RELAX	*ABS*
 3f6:	000080e7          	jalr	ra # 3f2 <.L58+0x12>

000003fa <.LVL155>:
 3fa:	34a9c783          	lbu	a5,842(s3)
 3fe:	eb91                	bnez	a5,412 <.L68>
			3fe: R_RISCV_RVC_BRANCH	.L68
 400:	00a90513          	addi	a0,s2,10
 404:	4585                	li	a1,1
 406:	0ff57513          	andi	a0,a0,255
 40a:	00000097          	auipc	ra,0x0
			40a: R_RISCV_CALL	mm_ps_change_ind
			40a: R_RISCV_RELAX	*ABS*
 40e:	000080e7          	jalr	ra # 40a <.LVL155+0x10>

00000412 <.L68>:
 412:	5d800793          	li	a5,1496
 416:	02f90933          	mul	s2,s2,a5

0000041a <.LVL157>:
 41a:	995e                	add	s2,s2,s7
 41c:	34a94783          	lbu	a5,842(s2)
 420:	0785                	addi	a5,a5,1
 422:	34f90523          	sb	a5,842(s2)
 426:	bb45                	j	1d6 <.L57>
			426: R_RISCV_RVC_JUMP	.L57

00000428 <.L70>:
 428:	d00915e3          	bnez	s2,132 <.L55>
			428: R_RISCV_BRANCH	.L55
 42c:	8626                	mv	a2,s1
 42e:	85ee                	mv	a1,s11
 430:	856a                	mv	a0,s10
 432:	00000097          	auipc	ra,0x0
			432: R_RISCV_CALL	ps_check_frame
			432: R_RISCV_RELAX	*ABS*
 436:	000080e7          	jalr	ra # 432 <.L70+0xa>

0000043a <.LVL159>:
 43a:	b9e5                	j	132 <.L55>
			43a: R_RISCV_RVC_JUMP	.L55

Disassembly of section .text.bl60x_firmwre_mpdu_free:

00000000 <bl60x_firmwre_mpdu_free>:
   0:	1101                	addi	sp,sp,-32

00000002 <.LVL161>:
   2:	ce06                	sw	ra,28(sp)
   4:	c62a                	sw	a0,12(sp)

00000006 <.LVL162>:
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	vTaskEnterCritical
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <.LVL162>

0000000e <.LVL163>:
   e:	4532                	lw	a0,12(sp)
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	rxl_cntrl_env
			10: R_RISCV_RELAX	*ABS*
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	rxl_cntrl_env
			14: R_RISCV_RELAX	*ABS*
  18:	01d54683          	lbu	a3,29(a0)
  1c:	4bd8                	lw	a4,20(a5)
  1e:	8f15                	sub	a4,a4,a3
  20:	cbd8                	sw	a4,20(a5)
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	vTaskExitCritical
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL163+0x14>

0000002a <.LVL164>:
  2a:	4532                	lw	a0,12(sp)
  2c:	40f2                	lw	ra,28(sp)
  2e:	6105                	addi	sp,sp,32

00000030 <.LVL165>:
  30:	00000317          	auipc	t1,0x0
			30: R_RISCV_CALL	rxl_mpdu_free
			30: R_RISCV_RELAX	*ABS*
  34:	00030067          	jr	t1 # 30 <.LVL165>

Disassembly of section .text.rxl_current_desc_get:

00000000 <rxl_current_desc_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	rxl_cntrl_env+0x10
			0: R_RISCV_RELAX	*ABS*+0x10
   4:	0107a783          	lw	a5,16(a5) # 10 <rxl_current_desc_get+0x10>
			4: R_RISCV_LO12_I	rxl_cntrl_env+0x10
			4: R_RISCV_RELAX	*ABS*+0x10
   8:	c11c                	sw	a5,0(a0)
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	rx_hwdesc_env+0x4
			a: R_RISCV_RELAX	*ABS*+0x4
   e:	0047a783          	lw	a5,4(a5) # 4 <rxl_current_desc_get+0x4>
			e: R_RISCV_LO12_I	rx_hwdesc_env+0x4
			e: R_RISCV_RELAX	*ABS*+0x4
  12:	c19c                	sw	a5,0(a1)
  14:	8082                	ret

Disassembly of section .text.rxl_reset:

00000000 <rxl_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	rxl_hwdesc_init
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <rxl_reset+0x6>

0000000e <.LVL168>:
   e:	00000537          	lui	a0,0x0
			e: R_RISCV_HI20	rxl_cntrl_env
			e: R_RISCV_RELAX	*ABS*
  12:	00050513          	mv	a0,a0
			12: R_RISCV_LO12_I	rxl_cntrl_env
			12: R_RISCV_RELAX	*ABS*
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	co_list_init
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL168+0x8>

0000001e <.LVL169>:
  1e:	40b2                	lw	ra,12(sp)
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	rxu_cntrl_env+0x40
			20: R_RISCV_RELAX	*ABS*+0x40
  24:	04050513          	addi	a0,a0,64 # 40 <.LBB103>
			24: R_RISCV_LO12_I	rxu_cntrl_env+0x40
			24: R_RISCV_RELAX	*ABS*+0x40
  28:	0141                	addi	sp,sp,16
  2a:	00000317          	auipc	t1,0x0
			2a: R_RISCV_CALL	co_list_init
			2a: R_RISCV_RELAX	*ABS*
  2e:	00030067          	jr	t1 # 2a <.LVL169+0xc>
