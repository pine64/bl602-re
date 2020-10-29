
libbl602_wifi/ke_event.o:     file format elf32-littleriscv


Disassembly of section .text.ke_evt_set:

00000000 <ke_evt_set>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBE26>:
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	ke_env
			8: R_RISCV_RELAX	*ABS*
   c:	4398                	lw	a4,0(a5)
   e:	8f49                	or	a4,a4,a0
  10:	c398                	sw	a4,0(a5)

00000012 <.LBB28>:
  12:	30046073          	csrsi	mstatus,8

00000016 <.LBE28>:
  16:	8082                	ret

Disassembly of section .text.ke_evt_clear:

00000000 <ke_evt_clear>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBE30>:
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	ke_env
			8: R_RISCV_RELAX	*ABS*
   c:	4398                	lw	a4,0(a5)
   e:	fff54513          	not	a0,a0

00000012 <.LVL2>:
  12:	8d79                	and	a0,a0,a4

00000014 <.LVL3>:
  14:	c388                	sw	a0,0(a5)

00000016 <.LBB32>:
  16:	30046073          	csrsi	mstatus,8

0000001a <.LBE32>:
  1a:	8082                	ret

Disassembly of section .text.bl_event_handle:

00000000 <bl_event_handle>:
   0:	1141                	addi	sp,sp,-16
   2:	40000537          	lui	a0,0x40000

00000006 <.LVL5>:
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ke_evt_clear
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL5+0x2>

00000010 <.LVL6>:
  10:	40b2                	lw	ra,12(sp)
  12:	0141                	addi	sp,sp,16
  14:	00000317          	auipc	t1,0x0
			14: R_RISCV_CALL	bl_main_event_handle
			14: R_RISCV_RELAX	*ABS*
  18:	00030067          	jr	t1 # 14 <.LVL6+0x4>

Disassembly of section .text.bl_fw_statistic_dump:

00000000 <bl_fw_statistic_dump>:
   0:	1141                	addi	sp,sp,-16
   2:	02000513          	li	a0,32

00000006 <.LVL9>:
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ke_evt_clear
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL9+0x2>

00000010 <.LBB34>:
  10:	30047073          	csrci	mstatus,8

00000014 <.LBE34>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	bl_utils_dump
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LBE34>

0000001c <.LVL11>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	txl_frame_dump
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL11>

00000024 <.LVL12>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ipc_emb_dump
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL12>

0000002c <.LVL13>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	txl_cntrl_env_dump
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL13>

00000034 <.LVL14>:
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	txl_cfm_dump
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL14>

0000003c <.LVL15>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	rxl_hwdesc_dump
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL15>

00000044 <.LVL16>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	rxl_cntrl_dump
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL16>

0000004c <.LVL17>:
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	hal_mib_dump
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL17>

00000054 <.LBB36>:
  54:	30046073          	csrsi	mstatus,8

00000058 <.LBE36>:
  58:	40b2                	lw	ra,12(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	8082                	ret

Disassembly of section .text.bl60x_fw_dump_statistic:

00000000 <bl60x_fw_dump_statistic>:
   0:	c511                	beqz	a0,c <.L8>
			0: R_RISCV_RVC_BRANCH	.L8
   2:	4501                	li	a0,0

00000004 <.LVL20>:
   4:	00000317          	auipc	t1,0x0
			4: R_RISCV_CALL	bl_fw_statistic_dump
			4: R_RISCV_RELAX	*ABS*
   8:	00030067          	jr	t1 # 4 <.LVL20>

0000000c <.L8>:
   c:	02000513          	li	a0,32

00000010 <.LVL22>:
  10:	00000317          	auipc	t1,0x0
			10: R_RISCV_CALL	ke_evt_set
			10: R_RISCV_RELAX	*ABS*
  14:	00030067          	jr	t1 # 10 <.LVL22>

Disassembly of section .text.ke_evt_schedule:

00000000 <ke_evt_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	ke_env
			2: R_RISCV_RELAX	*ABS*
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	c05a                	sw	s6,0(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	c64e                	sw	s3,12(sp)
  16:	00078713          	mv	a4,a5
			16: R_RISCV_LO12_I	ke_env
			16: R_RISCV_RELAX	*ABS*
  1a:	4308                	lw	a0,0(a4)

0000001c <.LVL24>:
  1c:	000004b7          	lui	s1,0x0
			1c: R_RISCV_HI20	.LANCHOR0
			1c: R_RISCV_RELAX	*ABS*
  20:	00078413          	mv	s0,a5
			20: R_RISCV_LO12_I	ke_env
			20: R_RISCV_RELAX	*ABS*
  24:	00048493          	mv	s1,s1
			24: R_RISCV_LO12_I	.LANCHOR0
			24: R_RISCV_RELAX	*ABS*

00000028 <.LBB38>:
  28:	4a69                	li	s4,26
  2a:	00000ab7          	lui	s5,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000b37          	lui	s6,0x0
			2e: R_RISCV_HI20	.LC1
			2e: R_RISCV_RELAX	*ABS*

00000032 <.L10>:
  32:	e919                	bnez	a0,48 <.L13>
			32: R_RISCV_RVC_BRANCH	.L13
  34:	40f2                	lw	ra,28(sp)
  36:	4462                	lw	s0,24(sp)
  38:	44d2                	lw	s1,20(sp)
  3a:	4942                	lw	s2,16(sp)
  3c:	49b2                	lw	s3,12(sp)
  3e:	4a22                	lw	s4,8(sp)
  40:	4a92                	lw	s5,4(sp)
  42:	4b02                	lw	s6,0(sp)
  44:	6105                	addi	sp,sp,32
  46:	8082                	ret

00000048 <.L13>:
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	__clzsi2
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L13>

00000050 <.LBE39>:
  50:	00351913          	slli	s2,a0,0x3
  54:	012487b3          	add	a5,s1,s2
  58:	0007a983          	lw	s3,0(a5) # 0 <ke_evt_schedule>
  5c:	00aa4463          	blt	s4,a0,64 <.L11>
			5c: R_RISCV_BRANCH	.L11
  60:	00099c63          	bnez	s3,78 <.L12>
			60: R_RISCV_BRANCH	.L12

00000064 <.L11>:
  64:	0dd00613          	li	a2,221
  68:	000a8593          	mv	a1,s5
			68: R_RISCV_LO12_I	.LC0
			68: R_RISCV_RELAX	*ABS*
  6c:	000b0513          	mv	a0,s6
			6c: R_RISCV_LO12_I	.LC1
			6c: R_RISCV_RELAX	*ABS*

00000070 <.LVL27>:
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	assert_err
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL27>

00000078 <.L12>:
  78:	9926                	add	s2,s2,s1
  7a:	00492503          	lw	a0,4(s2)
  7e:	9982                	jalr	s3

00000080 <.LVL29>:
  80:	4008                	lw	a0,0(s0)

00000082 <.LVL30>:
  82:	bf45                	j	32 <.L10>
			82: R_RISCV_RVC_JUMP	.L10

Disassembly of section .text.ke_init:

00000000 <ke_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	ke_mem_init
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <ke_init+0x4>

0000000c <.LVL31>:
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	ke_env
			c: R_RISCV_RELAX	*ABS*
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	ke_env
			10: R_RISCV_RELAX	*ABS*
  14:	cfc8                	sw	a0,28(a5)
  16:	0007a623          	sw	zero,12(a5) # c <.LVL31>
  1a:	0007a823          	sw	zero,16(a5)
  1e:	0007a223          	sw	zero,4(a5)
  22:	0007a423          	sw	zero,8(a5)
  26:	0007aa23          	sw	zero,20(a5)
  2a:	0007ac23          	sw	zero,24(a5)
  2e:	40b2                	lw	ra,12(sp)
  30:	557d                	li	a0,-1
  32:	0141                	addi	sp,sp,16
  34:	00000317          	auipc	t1,0x0
			34: R_RISCV_CALL	ke_evt_clear
			34: R_RISCV_RELAX	*ABS*
  38:	00030067          	jr	t1 # 34 <.LVL31+0x28>

Disassembly of section .text.ke_flush:

00000000 <ke_flush>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB42>:
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	ke_env+0x4
			6: R_RISCV_RELAX	*ABS*+0x4

0000000a <.L19>:
   a:	00440513          	addi	a0,s0,4 # 4 <ke_flush+0x4>
			a: R_RISCV_LO12_I	ke_env+0x4
			a: R_RISCV_RELAX	*ABS*+0x4
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	co_list_pop_front
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.L19+0x4>

00000016 <.LBE46>:
  16:	e905                	bnez	a0,46 <.L24>
			16: R_RISCV_RVC_BRANCH	.L24

00000018 <.LBB48>:
  18:	00000437          	lui	s0,0x0
			18: R_RISCV_HI20	ke_env+0xc
			18: R_RISCV_RELAX	*ABS*+0xc

0000001c <.L18>:
  1c:	00c40513          	addi	a0,s0,12 # c <.L19+0x2>
			1c: R_RISCV_LO12_I	ke_env+0xc
			1c: R_RISCV_RELAX	*ABS*+0xc
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	co_list_pop_front
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L18+0x4>

00000028 <.LBE52>:
  28:	e505                	bnez	a0,50 <.L25>
			28: R_RISCV_RVC_BRANCH	.L25

0000002a <.LBB54>:
  2a:	00000437          	lui	s0,0x0
			2a: R_RISCV_HI20	ke_env+0x14
			2a: R_RISCV_RELAX	*ABS*+0x14

0000002e <.L20>:
  2e:	01440513          	addi	a0,s0,20 # 14 <.L19+0xa>
			2e: R_RISCV_LO12_I	ke_env+0x14
			2e: R_RISCV_RELAX	*ABS*+0x14
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	co_list_pop_front
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.L20+0x4>

0000003a <.LBE58>:
  3a:	c105                	beqz	a0,5a <.L21>
			3a: R_RISCV_RVC_BRANCH	.L21
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ke_free
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBE58+0x2>

00000044 <.LBE59>:
  44:	b7ed                	j	2e <.L20>
			44: R_RISCV_RVC_JUMP	.L20

00000046 <.L24>:
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	ke_msg_free
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L24>

0000004e <.LBE60>:
  4e:	bf75                	j	a <.L19>
			4e: R_RISCV_RVC_JUMP	.L19

00000050 <.L25>:
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ke_msg_free
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.L25>

00000058 <.LBE61>:
  58:	b7d1                	j	1c <.L18>
			58: R_RISCV_RVC_JUMP	.L18

0000005a <.L21>:
  5a:	4422                	lw	s0,8(sp)
  5c:	40b2                	lw	ra,12(sp)
  5e:	557d                	li	a0,-1

00000060 <.LVL45>:
  60:	0141                	addi	sp,sp,16
  62:	00000317          	auipc	t1,0x0
			62: R_RISCV_CALL	ke_evt_clear
			62: R_RISCV_RELAX	*ABS*
  66:	00030067          	jr	t1 # 62 <.LVL45+0x2>
