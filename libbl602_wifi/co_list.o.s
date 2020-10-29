
libbl602_wifi/co_list.o:     file format elf32-littleriscv


Disassembly of section .text.co_list_init:

00000000 <co_list_init>:
   0:	00052023          	sw	zero,0(a0)
   4:	00052223          	sw	zero,4(a0)
   8:	8082                	ret

Disassembly of section .text.co_list_push_back:

00000000 <co_list_push_back>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	84aa                	mv	s1,a0
   a:	842e                	mv	s0,a1
   c:	ed99                	bnez	a1,2a <.L3>
			c: R_RISCV_RVC_BRANCH	.L3
   e:	000005b7          	lui	a1,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*

00000012 <.LVL2>:
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	.LC1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL3>:
  16:	04700613          	li	a2,71
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
  2a:	409c                	lw	a5,0(s1)
  2c:	eb91                	bnez	a5,40 <.L4>
			2c: R_RISCV_RVC_BRANCH	.L4
  2e:	c080                	sw	s0,0(s1)

00000030 <.L5>:
  30:	c0c0                	sw	s0,4(s1)
  32:	00042023          	sw	zero,0(s0)
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL5>:
  3a:	4492                	lw	s1,4(sp)

0000003c <.LVL6>:
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

00000040 <.L4>:
  40:	40dc                	lw	a5,4(s1)
  42:	c380                	sw	s0,0(a5)
  44:	b7f5                	j	30 <.L5>
			44: R_RISCV_RVC_JUMP	.L5

Disassembly of section .text.co_list_pool_init:

00000000 <co_list_pool_init>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	892a                	mv	s2,a0
  12:	842e                	mv	s0,a1
  14:	89b2                	mv	s3,a2
  16:	8ab6                	mv	s5,a3
  18:	8a3a                	mv	s4,a4

0000001a <.LBB15>:
  1a:	00052023          	sw	zero,0(a0) # 0 <co_list_pool_init>
  1e:	00052223          	sw	zero,4(a0)

00000022 <.LBE15>:
  22:	4481                	li	s1,0

00000024 <.L8>:
  24:	01549b63          	bne	s1,s5,3a <.L10>
			24: R_RISCV_BRANCH	.L10
  28:	40f2                	lw	ra,28(sp)
  2a:	4462                	lw	s0,24(sp)

0000002c <.LVL11>:
  2c:	44d2                	lw	s1,20(sp)

0000002e <.LVL12>:
  2e:	4942                	lw	s2,16(sp)

00000030 <.LVL13>:
  30:	49b2                	lw	s3,12(sp)

00000032 <.LVL14>:
  32:	4a22                	lw	s4,8(sp)

00000034 <.LVL15>:
  34:	4a92                	lw	s5,4(sp)

00000036 <.LVL16>:
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

0000003a <.L10>:
  3a:	000a0963          	beqz	s4,4c <.L9>
			3a: R_RISCV_BRANCH	.L9
  3e:	864e                	mv	a2,s3
  40:	85d2                	mv	a1,s4
  42:	8522                	mv	a0,s0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	memcpy
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L10+0xa>

0000004c <.L9>:
  4c:	85a2                	mv	a1,s0
  4e:	854a                	mv	a0,s2
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	co_list_push_back
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.L9+0x4>

00000058 <.LVL19>:
  58:	944e                	add	s0,s0,s3
  5a:	0485                	addi	s1,s1,1
  5c:	b7e1                	j	24 <.L8>
			5c: R_RISCV_RVC_JUMP	.L8

Disassembly of section .text.co_list_push_front:

00000000 <co_list_push_front>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	84aa                	mv	s1,a0
   a:	842e                	mv	s0,a1
   c:	ed99                	bnez	a1,2a <.L16>
			c: R_RISCV_RVC_BRANCH	.L16
   e:	000005b7          	lui	a1,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*

00000012 <.LVL23>:
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	.LC1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL24>:
  16:	05e00613          	li	a2,94
  1a:	00058593          	mv	a1,a1
			1a: R_RISCV_LO12_I	.LC0
			1a: R_RISCV_RELAX	*ABS*
  1e:	00050513          	mv	a0,a0
			1e: R_RISCV_LO12_I	.LC1
			1e: R_RISCV_RELAX	*ABS*
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	assert_err
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL24+0xc>

0000002a <.L16>:
  2a:	409c                	lw	a5,0(s1)
  2c:	e391                	bnez	a5,30 <.L17>
			2c: R_RISCV_RVC_BRANCH	.L17
  2e:	c0c0                	sw	s0,4(s1)

00000030 <.L17>:
  30:	c01c                	sw	a5,0(s0)
  32:	c080                	sw	s0,0(s1)
  34:	40b2                	lw	ra,12(sp)
  36:	4422                	lw	s0,8(sp)

00000038 <.LVL27>:
  38:	4492                	lw	s1,4(sp)

0000003a <.LVL28>:
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

Disassembly of section .text.co_list_pop_front:

00000000 <co_list_pop_front>:
   0:	411c                	lw	a5,0(a0)
   2:	c399                	beqz	a5,8 <.L19>
			2: R_RISCV_RVC_BRANCH	.L19
   4:	4398                	lw	a4,0(a5)
   6:	c118                	sw	a4,0(a0)

00000008 <.L19>:
   8:	853e                	mv	a0,a5

0000000a <.LVL31>:
   a:	8082                	ret

Disassembly of section .text.co_list_extract:

00000000 <co_list_extract>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842a                	mv	s0,a0
   a:	84ae                	mv	s1,a1
   c:	ed19                	bnez	a0,2a <.L25>
			c: R_RISCV_RVC_BRANCH	.L25
   e:	000005b7          	lui	a1,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*

00000012 <.LVL33>:
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	.LC2
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL34>:
  16:	08100613          	li	a2,129
  1a:	00058593          	mv	a1,a1
			1a: R_RISCV_LO12_I	.LC0
			1a: R_RISCV_RELAX	*ABS*
  1e:	00050513          	mv	a0,a0
			1e: R_RISCV_LO12_I	.LC2
			1e: R_RISCV_RELAX	*ABS*
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	assert_err
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL34+0xc>

0000002a <.L25>:
  2a:	401c                	lw	a5,0(s0)

0000002c <.LVL36>:
  2c:	c789                	beqz	a5,36 <.L24>
			2c: R_RISCV_RVC_BRANCH	.L24
  2e:	00979a63          	bne	a5,s1,42 <.L27>
			2e: R_RISCV_BRANCH	.L27
  32:	409c                	lw	a5,0(s1)

00000034 <.LVL37>:
  34:	c01c                	sw	a5,0(s0)

00000036 <.L24>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL39>:
  3a:	4492                	lw	s1,4(sp)

0000003c <.LVL40>:
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

00000040 <.L31>:
  40:	87ba                	mv	a5,a4

00000042 <.L27>:
  42:	4398                	lw	a4,0(a5)
  44:	db6d                	beqz	a4,36 <.L24>
			44: R_RISCV_RVC_BRANCH	.L24
  46:	fe971de3          	bne	a4,s1,40 <.L31>
			46: R_RISCV_BRANCH	.L31
  4a:	4058                	lw	a4,4(s0)
  4c:	00971363          	bne	a4,s1,52 <.L30>
			4c: R_RISCV_BRANCH	.L30
  50:	c05c                	sw	a5,4(s0)

00000052 <.L30>:
  52:	4098                	lw	a4,0(s1)
  54:	c398                	sw	a4,0(a5)
  56:	b7c5                	j	36 <.L24>
			56: R_RISCV_RVC_JUMP	.L24

Disassembly of section .text.co_list_find:

00000000 <co_list_find>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL44>:
   2:	00b50363          	beq	a0,a1,8 <.L43>
			2: R_RISCV_BRANCH	.L43
   6:	fd6d                	bnez	a0,0 <co_list_find>
			6: R_RISCV_RVC_BRANCH	.L44

00000008 <.L43>:
   8:	40a58533          	sub	a0,a1,a0

0000000c <.LVL45>:
   c:	00153513          	seqz	a0,a0
  10:	8082                	ret

Disassembly of section .text.co_list_cnt:

00000000 <co_list_cnt>:
   0:	411c                	lw	a5,0(a0)
   2:	4501                	li	a0,0

00000004 <.L47>:
   4:	e391                	bnez	a5,8 <.L48>
			4: R_RISCV_RVC_BRANCH	.L48
   6:	8082                	ret

00000008 <.L48>:
   8:	0505                	addi	a0,a0,1
   a:	439c                	lw	a5,0(a5)
   c:	bfe5                	j	4 <.L47>
			c: R_RISCV_RVC_JUMP	.L47

Disassembly of section .text.co_list_insert:

00000000 <co_list_insert>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	4100                	lw	s0,0(a0)

0000000e <.LVL52>:
   e:	892a                	mv	s2,a0
  10:	84ae                	mv	s1,a1
  12:	4981                	li	s3,0

00000014 <.L52>:
  14:	c811                	beqz	s0,28 <.L50>
			14: R_RISCV_RVC_BRANCH	.L50
  16:	85a2                	mv	a1,s0
  18:	8526                	mv	a0,s1
  1a:	c632                	sw	a2,12(sp)
  1c:	9602                	jalr	a2

0000001e <.LVL54>:
  1e:	e519                	bnez	a0,2c <.L51>
			1e: R_RISCV_RVC_BRANCH	.L51

00000020 <.LVL55>:
  20:	89a2                	mv	s3,s0
  22:	4632                	lw	a2,12(sp)
  24:	4000                	lw	s0,0(s0)

00000026 <.LVL56>:
  26:	b7fd                	j	14 <.L52>
			26: R_RISCV_RVC_JUMP	.L52

00000028 <.L50>:
  28:	00992223          	sw	s1,4(s2)

0000002c <.L51>:
  2c:	c080                	sw	s0,0(s1)
  2e:	00098b63          	beqz	s3,44 <.L53>
			2e: R_RISCV_BRANCH	.L53
  32:	0099a023          	sw	s1,0(s3)

00000036 <.L49>:
  36:	50b2                	lw	ra,44(sp)
  38:	5422                	lw	s0,40(sp)

0000003a <.LVL57>:
  3a:	5492                	lw	s1,36(sp)

0000003c <.LVL58>:
  3c:	5902                	lw	s2,32(sp)

0000003e <.LVL59>:
  3e:	49f2                	lw	s3,28(sp)

00000040 <.LVL60>:
  40:	6145                	addi	sp,sp,48
  42:	8082                	ret

00000044 <.L53>:
  44:	00992023          	sw	s1,0(s2)
  48:	b7fd                	j	36 <.L49>
			48: R_RISCV_RVC_JUMP	.L49

Disassembly of section .text.co_list_insert_after:

00000000 <co_list_insert_after>:
   0:	872a                	mv	a4,a0
   2:	411c                	lw	a5,0(a0)

00000004 <.LVL63>:
   4:	e989                	bnez	a1,16 <.L57>
			4: R_RISCV_RVC_BRANCH	.L57
   6:	85b2                	mv	a1,a2

00000008 <.LVL64>:
   8:	00000317          	auipc	t1,0x0
			8: R_RISCV_CALL	co_list_push_front
			8: R_RISCV_RELAX	*ABS*
   c:	00030067          	jr	t1 # 8 <.LVL64>

00000010 <.L59>:
  10:	00b78763          	beq	a5,a1,1e <.L58>
			10: R_RISCV_BRANCH	.L58
  14:	439c                	lw	a5,0(a5)

00000016 <.L57>:
  16:	ffed                	bnez	a5,10 <.L59>
			16: R_RISCV_RVC_BRANCH	.L59
  18:	8082                	ret

0000001a <.L61>:
  1a:	c350                	sw	a2,4(a4)
  1c:	8082                	ret

0000001e <.L58>:
  1e:	4394                	lw	a3,0(a5)
  20:	c214                	sw	a3,0(a2)
  22:	c390                	sw	a2,0(a5)
  24:	421c                	lw	a5,0(a2)

00000026 <.LVL69>:
  26:	dbf5                	beqz	a5,1a <.L61>
			26: R_RISCV_RVC_BRANCH	.L61
  28:	8082                	ret

Disassembly of section .text.co_list_insert_before:

00000000 <co_list_insert_before>:
   0:	e591                	bnez	a1,c <.L65>
			0: R_RISCV_RVC_BRANCH	.L65
   2:	85b2                	mv	a1,a2

00000004 <.LVL71>:
   4:	00000317          	auipc	t1,0x0
			4: R_RISCV_CALL	co_list_push_back
			4: R_RISCV_RELAX	*ABS*
   8:	00030067          	jr	t1 # 4 <.LVL71>

0000000c <.L65>:
   c:	411c                	lw	a5,0(a0)
   e:	00b79b63          	bne	a5,a1,24 <.L66>
			e: R_RISCV_BRANCH	.L66
  12:	85b2                	mv	a1,a2

00000014 <.LVL73>:
  14:	00000317          	auipc	t1,0x0
			14: R_RISCV_CALL	co_list_push_front
			14: R_RISCV_RELAX	*ABS*
  18:	00030067          	jr	t1 # 14 <.LVL73>

0000001c <.L68>:
  1c:	4398                	lw	a4,0(a5)
  1e:	00b70563          	beq	a4,a1,28 <.L67>
			1e: R_RISCV_BRANCH	.L67
  22:	87ba                	mv	a5,a4

00000024 <.L66>:
  24:	ffe5                	bnez	a5,1c <.L68>
			24: R_RISCV_RVC_BRANCH	.L68
  26:	8082                	ret

00000028 <.L67>:
  28:	c20c                	sw	a1,0(a2)
  2a:	c390                	sw	a2,0(a5)

0000002c <.LBE16>:
  2c:	8082                	ret

Disassembly of section .text.co_list_concat:

00000000 <co_list_concat>:
   0:	419c                	lw	a5,0(a1)
   2:	cb81                	beqz	a5,12 <.L71>
			2: R_RISCV_RVC_BRANCH	.L71
   4:	4118                	lw	a4,0(a0)
   6:	e719                	bnez	a4,14 <.L73>
			6: R_RISCV_RVC_BRANCH	.L73
   8:	c11c                	sw	a5,0(a0)

0000000a <.L78>:
   a:	41dc                	lw	a5,4(a1)
   c:	c15c                	sw	a5,4(a0)
   e:	0005a023          	sw	zero,0(a1) # 0 <co_list_concat>

00000012 <.L71>:
  12:	8082                	ret

00000014 <.L73>:
  14:	4158                	lw	a4,4(a0)
  16:	c31c                	sw	a5,0(a4)
  18:	bfcd                	j	a <.L78>
			18: R_RISCV_RVC_JUMP	.L78

Disassembly of section .text.co_list_remove:

00000000 <co_list_remove>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)
   a:	892a                	mv	s2,a0
   c:	84ae                	mv	s1,a1
   e:	8432                	mv	s0,a2
  10:	ed19                	bnez	a0,2e <.L80>
			10: R_RISCV_RVC_BRANCH	.L80
  12:	000005b7          	lui	a1,0x0
			12: R_RISCV_HI20	.LC0
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL78>:
  16:	00000537          	lui	a0,0x0
			16: R_RISCV_HI20	.LC2
			16: R_RISCV_RELAX	*ABS*

0000001a <.LVL79>:
  1a:	16800613          	li	a2,360

0000001e <.LVL80>:
  1e:	00058593          	mv	a1,a1
			1e: R_RISCV_LO12_I	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC2
			22: R_RISCV_RELAX	*ABS*
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	assert_err
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL80+0x8>

0000002e <.L80>:
  2e:	cc85                	beqz	s1,66 <.L81>
			2e: R_RISCV_RVC_BRANCH	.L81
  30:	409c                	lw	a5,0(s1)
  32:	02878063          	beq	a5,s0,52 <.L82>
			32: R_RISCV_BRANCH	.L82
  36:	000005b7          	lui	a1,0x0
			36: R_RISCV_HI20	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00000537          	lui	a0,0x0
			3a: R_RISCV_HI20	.LC3
			3a: R_RISCV_RELAX	*ABS*
  3e:	16900613          	li	a2,361
  42:	00058593          	mv	a1,a1
			42: R_RISCV_LO12_I	.LC0
			42: R_RISCV_RELAX	*ABS*
  46:	00050513          	mv	a0,a0
			46: R_RISCV_LO12_I	.LC3
			46: R_RISCV_RELAX	*ABS*
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	assert_err
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.L80+0x1c>

00000052 <.L82>:
  52:	c819                	beqz	s0,68 <.L85>
			52: R_RISCV_RVC_BRANCH	.L85

00000054 <.L83>:
  54:	401c                	lw	a5,0(s0)
  56:	c09c                	sw	a5,0(s1)
  58:	00492783          	lw	a5,4(s2)
  5c:	02879863          	bne	a5,s0,8c <.L84>
			5c: R_RISCV_BRANCH	.L84
  60:	00992223          	sw	s1,4(s2)
  64:	a025                	j	8c <.L84>
			64: R_RISCV_RVC_JUMP	.L84

00000066 <.L81>:
  66:	e005                	bnez	s0,86 <.L86>
			66: R_RISCV_RVC_BRANCH	.L86

00000068 <.L85>:
  68:	000005b7          	lui	a1,0x0
			68: R_RISCV_HI20	.LC0
			68: R_RISCV_RELAX	*ABS*
  6c:	00000537          	lui	a0,0x0
			6c: R_RISCV_HI20	.LC4
			6c: R_RISCV_RELAX	*ABS*
  70:	16a00613          	li	a2,362
  74:	00058593          	mv	a1,a1
			74: R_RISCV_LO12_I	.LC0
			74: R_RISCV_RELAX	*ABS*
  78:	00050513          	mv	a0,a0
			78: R_RISCV_LO12_I	.LC4
			78: R_RISCV_RELAX	*ABS*
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	assert_err
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L85+0x14>

00000084 <.LVL83>:
  84:	f8e1                	bnez	s1,54 <.L83>
			84: R_RISCV_RVC_BRANCH	.L83

00000086 <.L86>:
  86:	401c                	lw	a5,0(s0)
  88:	00f92023          	sw	a5,0(s2)

0000008c <.L84>:
  8c:	00042023          	sw	zero,0(s0)
  90:	40b2                	lw	ra,12(sp)
  92:	4422                	lw	s0,8(sp)

00000094 <.LVL84>:
  94:	4492                	lw	s1,4(sp)

00000096 <.LVL85>:
  96:	4902                	lw	s2,0(sp)

00000098 <.LVL86>:
  98:	0141                	addi	sp,sp,16
  9a:	8082                	ret
