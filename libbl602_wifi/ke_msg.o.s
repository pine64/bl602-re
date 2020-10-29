
libbl602_wifi/ke_msg.o:     file format elf32-littleriscv


Disassembly of section .text.ke_msg_alloc:

00000000 <ke_msg_alloc>:
   0:	1101                	addi	sp,sp,-32
   2:	c452                	sw	s4,8(sp)
   4:	8a2a                	mv	s4,a0
   6:	00c68513          	addi	a0,a3,12

0000000a <.LVL1>:
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	89ae                	mv	s3,a1
  16:	8932                	mv	s2,a2
  18:	84b6                	mv	s1,a3
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ke_malloc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL1+0x10>

00000022 <.LVL2>:
  22:	842a                	mv	s0,a0

00000024 <.LVL3>:
  24:	ed19                	bnez	a0,42 <.L2>
			24: R_RISCV_RVC_BRANCH	.L2
  26:	000005b7          	lui	a1,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC1
			2a: R_RISCV_RELAX	*ABS*
  2e:	05000613          	li	a2,80
  32:	00058593          	mv	a1,a1
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC1
			36: R_RISCV_RELAX	*ABS*
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	assert_err
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL3+0x16>

00000042 <.L2>:
  42:	01441223          	sh	s4,4(s0)
  46:	01341323          	sh	s3,6(s0)
  4a:	01241423          	sh	s2,8(s0)
  4e:	00941523          	sh	s1,10(s0)
  52:	00042023          	sw	zero,0(s0)

00000056 <.LBB22>:
  56:	0431                	addi	s0,s0,12

00000058 <.LBE22>:
  58:	8626                	mv	a2,s1
  5a:	8522                	mv	a0,s0
  5c:	4581                	li	a1,0
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	memset
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBE22+0x6>

00000066 <.LVL7>:
  66:	8522                	mv	a0,s0
  68:	40f2                	lw	ra,28(sp)
  6a:	4462                	lw	s0,24(sp)

0000006c <.LVL8>:
  6c:	44d2                	lw	s1,20(sp)
  6e:	4942                	lw	s2,16(sp)
  70:	49b2                	lw	s3,12(sp)
  72:	4a22                	lw	s4,8(sp)
  74:	6105                	addi	sp,sp,32
  76:	8082                	ret

Disassembly of section .text.ke_msg_send:

00000000 <ke_msg_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	ffa54783          	lbu	a5,-6(a0) # fffffffa <.LASF150+0xffffef18>

0000000c <.LBB42>:
   c:	4739                	li	a4,14

0000000e <.LBE42>:
   e:	842a                	mv	s0,a0
  10:	ff450493          	addi	s1,a0,-12

00000014 <.LBB46>:
  14:	02f77f63          	bgeu	a4,a5,52 <.L5>
			14: R_RISCV_BRANCH	.L5
  18:	000005b7          	lui	a1,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC2
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LVL11>:
  20:	0b600613          	li	a2,182
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC2
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	assert_err
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL11+0xc>

00000034 <.L6>:
  34:	ff840513          	addi	a0,s0,-8
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	bl_rx_e2a_handler
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.L6+0x4>

00000040 <.LBB48>:
  40:	4422                	lw	s0,8(sp)

00000042 <.LVL14>:
  42:	40b2                	lw	ra,12(sp)

00000044 <.LBB52>:
  44:	8526                	mv	a0,s1

00000046 <.LBE52>:
  46:	4492                	lw	s1,4(sp)

00000048 <.LVL15>:
  48:	0141                	addi	sp,sp,16

0000004a <.LBB53>:
  4a:	00000317          	auipc	t1,0x0
			4a: R_RISCV_CALL	ke_free
			4a: R_RISCV_RELAX	*ABS*
  4e:	00030067          	jr	t1 # 4a <.LBB53>

00000052 <.L5>:
  52:	4731                	li	a4,12
  54:	fef760e3          	bltu	a4,a5,34 <.L6>
			54: R_RISCV_BRANCH	.L6

00000058 <.LBB57>:
  58:	00000537          	lui	a0,0x0
			58: R_RISCV_HI20	ke_env+0x4
			58: R_RISCV_RELAX	*ABS*+0x4
  5c:	85a6                	mv	a1,s1
  5e:	00450513          	addi	a0,a0,4 # 4 <ke_msg_send+0x4>
			5e: R_RISCV_LO12_I	ke_env+0x4
			5e: R_RISCV_RELAX	*ABS*+0x4
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	co_list_push_back
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LBB57+0xa>

0000006a <.LBE57>:
  6a:	4422                	lw	s0,8(sp)

0000006c <.LVL19>:
  6c:	40b2                	lw	ra,12(sp)
  6e:	4492                	lw	s1,4(sp)

00000070 <.LBB63>:
  70:	01000537          	lui	a0,0x1000

00000074 <.LBE63>:
  74:	0141                	addi	sp,sp,16

00000076 <.LBB64>:
  76:	00000317          	auipc	t1,0x0
			76: R_RISCV_CALL	ke_evt_set
			76: R_RISCV_RELAX	*ABS*
  7a:	00030067          	jr	t1 # 76 <.LBB64>

Disassembly of section .text.ke_msg_send_basic:

00000000 <ke_msg_send_basic>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	ke_msg_alloc
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <ke_msg_send_basic+0x6>

0000000e <.LVL23>:
   e:	40b2                	lw	ra,12(sp)
  10:	0141                	addi	sp,sp,16
  12:	00000317          	auipc	t1,0x0
			12: R_RISCV_CALL	ke_msg_send
			12: R_RISCV_RELAX	*ABS*
  16:	00030067          	jr	t1 # 12 <.LVL23+0x4>

Disassembly of section .text.ke_msg_forward:

00000000 <ke_msg_forward>:
   0:	feb51d23          	sh	a1,-6(a0) # fffffa <.LASF150+0xffef18>
   4:	fec51e23          	sh	a2,-4(a0)
   8:	00000317          	auipc	t1,0x0
			8: R_RISCV_CALL	ke_msg_send
			8: R_RISCV_RELAX	*ABS*
   c:	00030067          	jr	t1 # 8 <ke_msg_forward+0x8>

Disassembly of section .text.ke_msg_forward_and_change_id:

00000000 <ke_msg_forward_and_change_id>:
   0:	feb51c23          	sh	a1,-8(a0)
   4:	fec51d23          	sh	a2,-6(a0)
   8:	fed51e23          	sh	a3,-4(a0)
   c:	00000317          	auipc	t1,0x0
			c: R_RISCV_CALL	ke_msg_send
			c: R_RISCV_RELAX	*ABS*
  10:	00030067          	jr	t1 # c <ke_msg_forward_and_change_id+0xc>

Disassembly of section .text.ke_msg_free:

00000000 <ke_msg_free>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	ke_free
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <ke_msg_free>
