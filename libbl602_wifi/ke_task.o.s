
libbl602_wifi/ke_task.o:     file format elf32-littleriscv


Disassembly of section .text.cmp_dest_id:

00000000 <cmp_dest_id>:
   0:	00655503          	lhu	a0,6(a0)

00000004 <.LVL1>:
   4:	8d0d                	sub	a0,a0,a1
   6:	00153513          	seqz	a0,a0
   a:	8082                	ret

Disassembly of section .text.ke_task_local:

00000000 <ke_task_local>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	47b9                	li	a5,14
   8:	842a                	mv	s0,a0
   a:	02a7f063          	bgeu	a5,a0,2a <.L3>
			a: R_RISCV_BRANCH	.L3
   e:	000005b7          	lui	a1,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	.LC1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL3>:
  16:	0b600613          	li	a2,182
  1a:	00058593          	mv	a1,a1
			1a: R_RISCV_LO12_I	.LC0
			1a: R_RISCV_RELAX	*ABS*
  1e:	00050513          	mv	a0,a0
			1e: R_RISCV_LO12_I	.LC1
			1e: R_RISCV_RELAX	*ABS*
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	assert_err
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL3+0xc>

0000002a <.L3>:
  2a:	00d43513          	sltiu	a0,s0,13
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.ke_handler_search:

00000000 <ke_handler_search>:
   0:	0045d783          	lhu	a5,4(a1) # 4 <ke_handler_search+0x4>
   4:	56fd                	li	a3,-1
   6:	17fd                	addi	a5,a5,-1

00000008 <.LVL6>:
   8:	00d79963          	bne	a5,a3,1a <.L15>
			8: R_RISCV_BRANCH	.L15

0000000c <.LBE38>:
   c:	4501                	li	a0,0

0000000e <.LVL7>:
   e:	8082                	ret

00000010 <.L7>:
  10:	17fd                	addi	a5,a5,-1
  12:	00d79863          	bne	a5,a3,22 <.L10>
			12: R_RISCV_BRANCH	.L10

00000016 <.LBE39>:
  16:	4501                	li	a0,0

00000018 <.LVL10>:
  18:	a089                	j	5a <.L5>
			18: R_RISCV_RVC_JUMP	.L5

0000001a <.L15>:
  1a:	1141                	addi	sp,sp,-16
  1c:	c606                	sw	ra,12(sp)
  1e:	c422                	sw	s0,8(sp)
  20:	c226                	sw	s1,4(sp)

00000022 <.L10>:
  22:	4198                	lw	a4,0(a1)
  24:	00379493          	slli	s1,a5,0x3
  28:	9726                	add	a4,a4,s1
  2a:	00075603          	lhu	a2,0(a4)
  2e:	fea611e3          	bne	a2,a0,10 <.L7>
			2e: R_RISCV_BRANCH	.L7
  32:	435c                	lw	a5,4(a4)

00000034 <.LVL12>:
  34:	842e                	mv	s0,a1
  36:	ef99                	bnez	a5,54 <.L8>
			36: R_RISCV_RVC_BRANCH	.L8

00000038 <.LVL13>:
  38:	000005b7          	lui	a1,0x0
			38: R_RISCV_HI20	.LC0
			38: R_RISCV_RELAX	*ABS*
  3c:	00000537          	lui	a0,0x0
			3c: R_RISCV_HI20	.LC2
			3c: R_RISCV_RELAX	*ABS*

00000040 <.LVL14>:
  40:	0f400613          	li	a2,244
  44:	00058593          	mv	a1,a1
			44: R_RISCV_LO12_I	.LC0
			44: R_RISCV_RELAX	*ABS*
  48:	00050513          	mv	a0,a0
			48: R_RISCV_LO12_I	.LC2
			48: R_RISCV_RELAX	*ABS*
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	assert_err
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL14+0xc>

00000054 <.L8>:
  54:	401c                	lw	a5,0(s0)
  56:	97a6                	add	a5,a5,s1
  58:	43c8                	lw	a0,4(a5)

0000005a <.L5>:
  5a:	40b2                	lw	ra,12(sp)
  5c:	4422                	lw	s0,8(sp)
  5e:	4492                	lw	s1,4(sp)
  60:	0141                	addi	sp,sp,16
  62:	8082                	ret

Disassembly of section .text.ke_state_set:

00000000 <ke_state_set>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	0ff57493          	andi	s1,a0,255
  12:	47b5                	li	a5,13
  14:	89aa                	mv	s3,a0
  16:	8a2e                	mv	s4,a1
  18:	00855913          	srli	s2,a0,0x8

0000001c <.LVL18>:
  1c:	0297f063          	bgeu	a5,s1,3c <.L17>
			1c: R_RISCV_BRANCH	.L17
  20:	000005b7          	lui	a1,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*

00000024 <.LVL19>:
  24:	00000537          	lui	a0,0x0
			24: R_RISCV_HI20	.LC3
			24: R_RISCV_RELAX	*ABS*

00000028 <.LVL20>:
  28:	0b200613          	li	a2,178
  2c:	00058593          	mv	a1,a1
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	00050513          	mv	a0,a0
			30: R_RISCV_LO12_I	.LC3
			30: R_RISCV_RELAX	*ABS*
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	assert_err
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL20+0xc>

0000003c <.L17>:
  3c:	8526                	mv	a0,s1
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ke_task_local
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L17+0x2>

00000046 <.LVL22>:
  46:	ed19                	bnez	a0,64 <.L18>
			46: R_RISCV_RVC_BRANCH	.L18
  48:	000005b7          	lui	a1,0x0
			48: R_RISCV_HI20	.LC0
			48: R_RISCV_RELAX	*ABS*
  4c:	00000537          	lui	a0,0x0
			4c: R_RISCV_HI20	.LC4
			4c: R_RISCV_RELAX	*ABS*
  50:	0b300613          	li	a2,179
  54:	00058593          	mv	a1,a1
			54: R_RISCV_LO12_I	.LC0
			54: R_RISCV_RELAX	*ABS*
  58:	00050513          	mv	a0,a0
			58: R_RISCV_LO12_I	.LC4
			58: R_RISCV_RELAX	*ABS*
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	assert_err
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL22+0x16>

00000064 <.L18>:
  64:	000007b7          	lui	a5,0x0
			64: R_RISCV_HI20	.LANCHOR0
			64: R_RISCV_RELAX	*ABS*
  68:	00078713          	mv	a4,a5
			68: R_RISCV_LO12_I	.LANCHOR0
			68: R_RISCV_RELAX	*ABS*
  6c:	0492                	slli	s1,s1,0x4

0000006e <.LVL24>:
  6e:	9726                	add	a4,a4,s1
  70:	00e75703          	lhu	a4,14(a4)
  74:	00078413          	mv	s0,a5
			74: R_RISCV_LO12_I	.LANCHOR0
			74: R_RISCV_RELAX	*ABS*
  78:	02e96063          	bltu	s2,a4,98 <.L19>
			78: R_RISCV_BRANCH	.L19
  7c:	000005b7          	lui	a1,0x0
			7c: R_RISCV_HI20	.LC0
			7c: R_RISCV_RELAX	*ABS*
  80:	00000537          	lui	a0,0x0
			80: R_RISCV_HI20	.LC5
			80: R_RISCV_RELAX	*ABS*
  84:	0b400613          	li	a2,180
  88:	00058593          	mv	a1,a1
			88: R_RISCV_LO12_I	.LC0
			88: R_RISCV_RELAX	*ABS*
  8c:	00050513          	mv	a0,a0
			8c: R_RISCV_LO12_I	.LC5
			8c: R_RISCV_RELAX	*ABS*
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	assert_err
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL24+0x22>

00000098 <.L19>:
  98:	009407b3          	add	a5,s0,s1
  9c:	4780                	lw	s0,8(a5)
  9e:	0906                	slli	s2,s2,0x1

000000a0 <.LVL26>:
  a0:	944a                	add	s0,s0,s2

000000a2 <.LVL27>:
  a2:	ec19                	bnez	s0,c0 <.L20>
			a2: R_RISCV_RVC_BRANCH	.L20
  a4:	000005b7          	lui	a1,0x0
			a4: R_RISCV_HI20	.LC0
			a4: R_RISCV_RELAX	*ABS*
  a8:	00000537          	lui	a0,0x0
			a8: R_RISCV_HI20	.LC6
			a8: R_RISCV_RELAX	*ABS*
  ac:	0b900613          	li	a2,185
  b0:	00058593          	mv	a1,a1
			b0: R_RISCV_LO12_I	.LC0
			b0: R_RISCV_RELAX	*ABS*
  b4:	00050513          	mv	a0,a0
			b4: R_RISCV_LO12_I	.LC6
			b4: R_RISCV_RELAX	*ABS*
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	assert_err
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL27+0x16>

000000c0 <.L20>:
  c0:	00045783          	lhu	a5,0(s0)
  c4:	05478663          	beq	a5,s4,110 <.L16>
			c4: R_RISCV_BRANCH	.L16
  c8:	01441023          	sh	s4,0(s0)

000000cc <.LBB49>:
  cc:	000004b7          	lui	s1,0x0
			cc: R_RISCV_HI20	cmp_dest_id
			cc: R_RISCV_RELAX	*ABS*
  d0:	00000937          	lui	s2,0x0
			d0: R_RISCV_HI20	ke_env+0xc
			d0: R_RISCV_RELAX	*ABS*+0xc

000000d4 <.LBB51>:
  d4:	00000437          	lui	s0,0x0
			d4: R_RISCV_HI20	ke_env+0x4
			d4: R_RISCV_RELAX	*ABS*+0x4

000000d8 <.L22>:
  d8:	00048593          	mv	a1,s1
			d8: R_RISCV_LO12_I	cmp_dest_id
			d8: R_RISCV_RELAX	*ABS*
  dc:	864e                	mv	a2,s3
  de:	00c90513          	addi	a0,s2,12 # c <ke_state_set+0xc>
			de: R_RISCV_LO12_I	ke_env+0xc
			de: R_RISCV_RELAX	*ABS*+0xc
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	ke_queue_extract
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.L22+0xa>

000000ea <.LVL31>:
  ea:	85aa                	mv	a1,a0

000000ec <.LVL32>:
  ec:	c115                	beqz	a0,110 <.L16>
			ec: R_RISCV_RVC_BRANCH	.L16

000000ee <.LBB54>:
  ee:	30047073          	csrci	mstatus,8

000000f2 <.LBB56>:
  f2:	00440513          	addi	a0,s0,4 # 4 <ke_state_set+0x4>
			f2: R_RISCV_LO12_I	ke_env+0x4
			f2: R_RISCV_RELAX	*ABS*+0x4

000000f6 <.LVL34>:
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	co_list_push_back
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.LVL34>

000000fe <.LBB57>:
  fe:	30046073          	csrsi	mstatus,8

00000102 <.LBE57>:
 102:	01000537          	lui	a0,0x1000
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	ke_evt_set
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LBE57+0x4>

0000010e <.LVL36>:
 10e:	b7e9                	j	d8 <.L22>
			10e: R_RISCV_RVC_JUMP	.L22

00000110 <.L16>:
 110:	40f2                	lw	ra,28(sp)
 112:	4462                	lw	s0,24(sp)
 114:	44d2                	lw	s1,20(sp)
 116:	4942                	lw	s2,16(sp)
 118:	49b2                	lw	s3,12(sp)

0000011a <.LVL38>:
 11a:	4a22                	lw	s4,8(sp)
 11c:	6105                	addi	sp,sp,32
 11e:	8082                	ret

Disassembly of section .text.ke_state_get:

00000000 <ke_state_get>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c226                	sw	s1,4(sp)
   a:	0ff57413          	andi	s0,a0,255
   e:	47b5                	li	a5,13
  10:	00855913          	srli	s2,a0,0x8

00000014 <.LVL40>:
  14:	0287f063          	bgeu	a5,s0,34 <.L28>
			14: R_RISCV_BRANCH	.L28
  18:	000005b7          	lui	a1,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC3
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LVL41>:
  20:	0d700613          	li	a2,215
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC0
			24: R_RISCV_RELAX	*ABS*
  28:	00050513          	mv	a0,a0
			28: R_RISCV_LO12_I	.LC3
			28: R_RISCV_RELAX	*ABS*
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	assert_err
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL41+0xc>

00000034 <.L28>:
  34:	8522                	mv	a0,s0
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	ke_task_local
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.L28+0x2>

0000003e <.LVL43>:
  3e:	ed19                	bnez	a0,5c <.L29>
			3e: R_RISCV_RVC_BRANCH	.L29
  40:	000005b7          	lui	a1,0x0
			40: R_RISCV_HI20	.LC0
			40: R_RISCV_RELAX	*ABS*
  44:	00000537          	lui	a0,0x0
			44: R_RISCV_HI20	.LC4
			44: R_RISCV_RELAX	*ABS*
  48:	0d800613          	li	a2,216
  4c:	00058593          	mv	a1,a1
			4c: R_RISCV_LO12_I	.LC0
			4c: R_RISCV_RELAX	*ABS*
  50:	00050513          	mv	a0,a0
			50: R_RISCV_LO12_I	.LC4
			50: R_RISCV_RELAX	*ABS*
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	assert_err
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL43+0x16>

0000005c <.L29>:
  5c:	000007b7          	lui	a5,0x0
			5c: R_RISCV_HI20	.LANCHOR0
			5c: R_RISCV_RELAX	*ABS*
  60:	00078713          	mv	a4,a5
			60: R_RISCV_LO12_I	.LANCHOR0
			60: R_RISCV_RELAX	*ABS*
  64:	0412                	slli	s0,s0,0x4

00000066 <.LVL45>:
  66:	9722                	add	a4,a4,s0
  68:	00e75703          	lhu	a4,14(a4)
  6c:	00078493          	mv	s1,a5
			6c: R_RISCV_LO12_I	.LANCHOR0
			6c: R_RISCV_RELAX	*ABS*
  70:	02e96063          	bltu	s2,a4,90 <.L30>
			70: R_RISCV_BRANCH	.L30
  74:	000005b7          	lui	a1,0x0
			74: R_RISCV_HI20	.LC0
			74: R_RISCV_RELAX	*ABS*
  78:	00000537          	lui	a0,0x0
			78: R_RISCV_HI20	.LC5
			78: R_RISCV_RELAX	*ABS*
  7c:	0d900613          	li	a2,217
  80:	00058593          	mv	a1,a1
			80: R_RISCV_LO12_I	.LC0
			80: R_RISCV_RELAX	*ABS*
  84:	00050513          	mv	a0,a0
			84: R_RISCV_LO12_I	.LC5
			84: R_RISCV_RELAX	*ABS*
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	assert_err
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL45+0x22>

00000090 <.L30>:
  90:	9426                	add	s0,s0,s1
  92:	441c                	lw	a5,8(s0)
  94:	40b2                	lw	ra,12(sp)
  96:	4422                	lw	s0,8(sp)
  98:	0906                	slli	s2,s2,0x1

0000009a <.LVL47>:
  9a:	993e                	add	s2,s2,a5
  9c:	00095503          	lhu	a0,0(s2)
  a0:	4492                	lw	s1,4(sp)
  a2:	4902                	lw	s2,0(sp)
  a4:	0141                	addi	sp,sp,16
  a6:	8082                	ret

Disassembly of section .text.ke_task_schedule:

00000000 <ke_task_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB80>:
   e:	30047073          	csrci	mstatus,8

00000012 <.LBB81>:
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	ke_env+0x4
			12: R_RISCV_RELAX	*ABS*+0x4

00000016 <.LVL50>:
  16:	00450513          	addi	a0,a0,4 # 4 <ke_task_schedule+0x4>
			16: R_RISCV_LO12_I	ke_env+0x4
			16: R_RISCV_RELAX	*ABS*+0x4
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	co_list_pop_front
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL50+0x4>

00000022 <.LBB83>:
  22:	30046073          	csrsi	mstatus,8

00000026 <.LBE83>:
  26:	c171                	beqz	a0,ea <.L33>
			26: R_RISCV_RVC_BRANCH	.L33
  28:	00655903          	lhu	s2,6(a0)

0000002c <.LBB85>:
  2c:	47b5                	li	a5,13
  2e:	842a                	mv	s0,a0

00000030 <.LBE85>:
  30:	0ff97993          	andi	s3,s2,255
  34:	00455a03          	lhu	s4,4(a0)

00000038 <.LBB90>:
  38:	00895913          	srli	s2,s2,0x8

0000003c <.LVL53>:
  3c:	0337f063          	bgeu	a5,s3,5c <.L34>
			3c: R_RISCV_BRANCH	.L34
  40:	000005b7          	lui	a1,0x0
			40: R_RISCV_HI20	.LC0
			40: R_RISCV_RELAX	*ABS*
  44:	00000537          	lui	a0,0x0
			44: R_RISCV_HI20	.LC3
			44: R_RISCV_RELAX	*ABS*

00000048 <.LVL54>:
  48:	11000613          	li	a2,272
  4c:	00058593          	mv	a1,a1
			4c: R_RISCV_LO12_I	.LC0
			4c: R_RISCV_RELAX	*ABS*
  50:	00050513          	mv	a0,a0
			50: R_RISCV_LO12_I	.LC3
			50: R_RISCV_RELAX	*ABS*
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	assert_err
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL54+0xc>

0000005c <.L34>:
  5c:	854e                	mv	a0,s3
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	ke_task_local
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.L34+0x2>

00000066 <.LVL56>:
  66:	ed19                	bnez	a0,84 <.L35>
			66: R_RISCV_RVC_BRANCH	.L35
  68:	000005b7          	lui	a1,0x0
			68: R_RISCV_HI20	.LC0
			68: R_RISCV_RELAX	*ABS*
  6c:	00000537          	lui	a0,0x0
			6c: R_RISCV_HI20	.LC4
			6c: R_RISCV_RELAX	*ABS*
  70:	11100613          	li	a2,273
  74:	00058593          	mv	a1,a1
			74: R_RISCV_LO12_I	.LC0
			74: R_RISCV_RELAX	*ABS*
  78:	00050513          	mv	a0,a0
			78: R_RISCV_LO12_I	.LC4
			78: R_RISCV_RELAX	*ABS*
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	assert_err
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL56+0x16>

00000084 <.L35>:
  84:	000007b7          	lui	a5,0x0
			84: R_RISCV_HI20	.LANCHOR0
			84: R_RISCV_RELAX	*ABS*
  88:	00078713          	mv	a4,a5
			88: R_RISCV_LO12_I	.LANCHOR0
			88: R_RISCV_RELAX	*ABS*
  8c:	0992                	slli	s3,s3,0x4

0000008e <.LVL58>:
  8e:	974e                	add	a4,a4,s3
  90:	00e75703          	lhu	a4,14(a4)
  94:	00078493          	mv	s1,a5
			94: R_RISCV_LO12_I	.LANCHOR0
			94: R_RISCV_RELAX	*ABS*
  98:	02e96063          	bltu	s2,a4,b8 <.L36>
			98: R_RISCV_BRANCH	.L36
  9c:	000005b7          	lui	a1,0x0
			9c: R_RISCV_HI20	.LC0
			9c: R_RISCV_RELAX	*ABS*
  a0:	00000537          	lui	a0,0x0
			a0: R_RISCV_HI20	.LC5
			a0: R_RISCV_RELAX	*ABS*
  a4:	11200613          	li	a2,274
  a8:	00058593          	mv	a1,a1
			a8: R_RISCV_LO12_I	.LC0
			a8: R_RISCV_RELAX	*ABS*
  ac:	00050513          	mv	a0,a0
			ac: R_RISCV_LO12_I	.LC5
			ac: R_RISCV_RELAX	*ABS*
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	assert_err
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL58+0x22>

000000b8 <.L36>:
  b8:	94ce                	add	s1,s1,s3

000000ba <.LVL60>:
  ba:	ec99                	bnez	s1,d8 <.L37>
			ba: R_RISCV_RVC_BRANCH	.L37
  bc:	000005b7          	lui	a1,0x0
			bc: R_RISCV_HI20	.LC0
			bc: R_RISCV_RELAX	*ABS*
  c0:	00000537          	lui	a0,0x0
			c0: R_RISCV_HI20	.LC7
			c0: R_RISCV_RELAX	*ABS*
  c4:	11600613          	li	a2,278
  c8:	00058593          	mv	a1,a1
			c8: R_RISCV_LO12_I	.LC0
			c8: R_RISCV_RELAX	*ABS*
  cc:	00050513          	mv	a0,a0
			cc: R_RISCV_LO12_I	.LC7
			cc: R_RISCV_RELAX	*ABS*
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	assert_err
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL60+0x16>

000000d8 <.L37>:
  d8:	408c                	lw	a1,0(s1)
  da:	ed9d                	bnez	a1,118 <.L38>
			da: R_RISCV_RVC_BRANCH	.L38

000000dc <.L41>:
  dc:	40cc                	lw	a1,4(s1)
  de:	e9d1                	bnez	a1,172 <.L39>
			de: R_RISCV_RVC_BRANCH	.L39

000000e0 <.L43>:
  e0:	8522                	mv	a0,s0
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	ke_msg_free
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.L43+0x2>

000000ea <.L33>:
  ea:	30047073          	csrci	mstatus,8

000000ee <.LBE98>:
  ee:	000007b7          	lui	a5,0x0
			ee: R_RISCV_HI20	ke_env+0x4
			ee: R_RISCV_RELAX	*ABS*+0x4
  f2:	0047a783          	lw	a5,4(a5) # 4 <ke_task_schedule+0x4>
			f2: R_RISCV_LO12_I	ke_env+0x4
			f2: R_RISCV_RELAX	*ABS*+0x4
  f6:	e799                	bnez	a5,104 <.L46>
			f6: R_RISCV_RVC_BRANCH	.L46
  f8:	01000537          	lui	a0,0x1000
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	ke_evt_clear
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LBE98+0xe>

00000104 <.L46>:
 104:	30046073          	csrsi	mstatus,8

00000108 <.LBE100>:
 108:	40f2                	lw	ra,28(sp)
 10a:	4462                	lw	s0,24(sp)
 10c:	44d2                	lw	s1,20(sp)
 10e:	4942                	lw	s2,16(sp)
 110:	49b2                	lw	s3,12(sp)
 112:	4a22                	lw	s4,8(sp)
 114:	6105                	addi	sp,sp,32
 116:	8082                	ret

00000118 <.L38>:
 118:	449c                	lw	a5,8(s1)
 11a:	0906                	slli	s2,s2,0x1

0000011c <.LVL68>:
 11c:	8552                	mv	a0,s4
 11e:	993e                	add	s2,s2,a5
 120:	00095783          	lhu	a5,0(s2)
 124:	078e                	slli	a5,a5,0x3
 126:	95be                	add	a1,a1,a5
 128:	00000097          	auipc	ra,0x0
			128: R_RISCV_CALL	ke_handler_search
			128: R_RISCV_RELAX	*ABS*
 12c:	000080e7          	jalr	ra # 128 <.LVL68+0xc>

00000130 <.LVL69>:
 130:	87aa                	mv	a5,a0

00000132 <.LVL70>:
 132:	d54d                	beqz	a0,dc <.L41>
			132: R_RISCV_RVC_BRANCH	.L41

00000134 <.L42>:
 134:	00845683          	lhu	a3,8(s0)
 138:	00645603          	lhu	a2,6(s0)
 13c:	00445503          	lhu	a0,4(s0)
 140:	00c40593          	addi	a1,s0,12
 144:	9782                	jalr	a5

00000146 <.LVL72>:
 146:	4785                	li	a5,1
 148:	faf501e3          	beq	a0,a5,ea <.L33>
			148: R_RISCV_BRANCH	.L33
 14c:	4789                	li	a5,2
 14e:	02f50a63          	beq	a0,a5,182 <.L44>
			14e: R_RISCV_BRANCH	.L44
 152:	d559                	beqz	a0,e0 <.L43>
			152: R_RISCV_RVC_BRANCH	.L43
 154:	000005b7          	lui	a1,0x0
			154: R_RISCV_HI20	.LC0
			154: R_RISCV_RELAX	*ABS*
 158:	00000537          	lui	a0,0x0
			158: R_RISCV_HI20	.LC8
			158: R_RISCV_RELAX	*ABS*

0000015c <.LVL73>:
 15c:	16c00613          	li	a2,364
 160:	00058593          	mv	a1,a1
			160: R_RISCV_LO12_I	.LC0
			160: R_RISCV_RELAX	*ABS*
 164:	00050513          	mv	a0,a0
			164: R_RISCV_LO12_I	.LC8
			164: R_RISCV_RELAX	*ABS*
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	assert_err
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.LVL73+0xc>

00000170 <.LVL74>:
 170:	bfad                	j	ea <.L33>
			170: R_RISCV_RVC_JUMP	.L33

00000172 <.L39>:
 172:	8552                	mv	a0,s4
 174:	00000097          	auipc	ra,0x0
			174: R_RISCV_CALL	ke_handler_search
			174: R_RISCV_RELAX	*ABS*
 178:	000080e7          	jalr	ra # 174 <.L39+0x2>

0000017c <.LVL76>:
 17c:	87aa                	mv	a5,a0

0000017e <.LBE94>:
 17e:	f95d                	bnez	a0,134 <.L42>
			17e: R_RISCV_RVC_BRANCH	.L42
 180:	b785                	j	e0 <.L43>
			180: R_RISCV_RVC_JUMP	.L43

00000182 <.L44>:
 182:	00000537          	lui	a0,0x0
			182: R_RISCV_HI20	ke_env+0xc
			182: R_RISCV_RELAX	*ABS*+0xc

00000186 <.LVL79>:
 186:	85a2                	mv	a1,s0
 188:	00c50513          	addi	a0,a0,12 # c <ke_task_schedule+0xc>
			188: R_RISCV_LO12_I	ke_env+0xc
			188: R_RISCV_RELAX	*ABS*+0xc
 18c:	00000097          	auipc	ra,0x0
			18c: R_RISCV_CALL	co_list_push_back
			18c: R_RISCV_RELAX	*ABS*
 190:	000080e7          	jalr	ra # 18c <.LVL79+0x6>

00000194 <.LVL80>:
 194:	bf99                	j	ea <.L33>
			194: R_RISCV_RVC_JUMP	.L33

Disassembly of section .text.ke_msg_discard:

00000000 <ke_msg_discard>:
   0:	4501                	li	a0,0

00000002 <.LVL82>:
   2:	8082                	ret

Disassembly of section .text.ke_msg_save:

00000000 <ke_msg_save>:
   0:	4509                	li	a0,2

00000002 <.LVL84>:
   2:	8082                	ret
