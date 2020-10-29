
libbl602_wifi/ke_timer.o:     file format elf32-littleriscv


Disassembly of section .text.ke_timer_hw_set:

00000000 <ke_timer_hw_set>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBE77>:
   4:	c905                	beqz	a0,34 <.L2>
			4: R_RISCV_RVC_BRANCH	.L2

00000006 <.LBB79>:
   6:	4518                	lw	a4,8(a0)

00000008 <.LBB80>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	14e7a423          	sw	a4,328(a5) # 44b00148 <.LASF293+0x44aff095>

00000010 <.LBB82>:
  10:	44b08737          	lui	a4,0x44b08
  14:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF293+0x44b06fd9>

00000018 <.LBE82>:
  18:	1007f693          	andi	a3,a5,256
  1c:	ea89                	bnez	a3,2e <.L3>
			1c: R_RISCV_RVC_BRANCH	.L3

0000001e <.LBB84>:
  1e:	10000693          	li	a3,256
  22:	08d72423          	sw	a3,136(a4)

00000026 <.LBE84>:
  26:	1007e793          	ori	a5,a5,256

0000002a <.L4>:
  2a:	08f72623          	sw	a5,140(a4)

0000002e <.L3>:
  2e:	30046073          	csrsi	mstatus,8

00000032 <.LBE90>:
  32:	8082                	ret

00000034 <.L2>:
  34:	44b08737          	lui	a4,0x44b08
  38:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF293+0x44b06fd9>

0000003c <.LBE92>:
  3c:	eff7f793          	andi	a5,a5,-257
  40:	b7ed                	j	2a <.L4>
			40: R_RISCV_RVC_JUMP	.L4

Disassembly of section .text.cmp_abs_time:

00000000 <cmp_abs_time>:
   0:	459c                	lw	a5,8(a1)
   2:	4508                	lw	a0,8(a0)

00000004 <.LVL9>:
   4:	8d1d                	sub	a0,a0,a5

00000006 <.LVL10>:
   6:	11e1a7b7          	lui	a5,0x11e1a
   a:	30178793          	addi	a5,a5,769 # 11e1a301 <.LASF293+0x11e1924e>
   e:	00f53533          	sltu	a0,a0,a5
  12:	00154513          	xori	a0,a0,1
  16:	8082                	ret

Disassembly of section .text.cmp_timer_id:

00000000 <cmp_timer_id>:
   0:	00455703          	lhu	a4,4(a0)
   4:	0105d793          	srli	a5,a1,0x10
   8:	00f71a63          	bne	a4,a5,1c <.L8>
			8: R_RISCV_BRANCH	.L8
   c:	00655503          	lhu	a0,6(a0)

00000010 <.LVL12>:
  10:	05c2                	slli	a1,a1,0x10

00000012 <.LVL13>:
  12:	81c1                	srli	a1,a1,0x10
  14:	8d0d                	sub	a0,a0,a1
  16:	00153513          	seqz	a0,a0
  1a:	8082                	ret

0000001c <.L8>:
  1c:	4501                	li	a0,0

0000001e <.LVL15>:
  1e:	8082                	ret

Disassembly of section .text.ke_timer_set:

00000000 <ke_timer_set>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c256                	sw	s5,4(sp)
   6:	c05a                	sw	s6,0(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c452                	sw	s4,8(sp)
  12:	8b2a                	mv	s6,a0
  14:	8aae                	mv	s5,a1
  16:	8432                	mv	s0,a2
  18:	10061163          	bnez	a2,11a <.L10>
			18: R_RISCV_BRANCH	.L10
  1c:	000005b7          	lui	a1,0x0
			1c: R_RISCV_HI20	.LC0
			1c: R_RISCV_RELAX	*ABS*

00000020 <.LVL17>:
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	.LC1
			20: R_RISCV_RELAX	*ABS*

00000024 <.LVL18>:
  24:	08c00613          	li	a2,140

00000028 <.LVL19>:
  28:	00058593          	mv	a1,a1
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC1
			2c: R_RISCV_RELAX	*ABS*

00000030 <.L21>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	assert_err
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L21>

00000038 <.L11>:
  38:	000009b7          	lui	s3,0x0
			38: R_RISCV_HI20	ke_env
			38: R_RISCV_RELAX	*ABS*
  3c:	00098793          	mv	a5,s3
			3c: R_RISCV_LO12_I	ke_env
			3c: R_RISCV_RELAX	*ABS*
  40:	4bdc                	lw	a5,20(a5)

00000042 <.LVL21>:
  42:	00098993          	mv	s3,s3
			42: R_RISCV_LO12_I	ke_env
			42: R_RISCV_RELAX	*ABS*
  46:	4901                	li	s2,0
  48:	cb99                	beqz	a5,5e <.L12>
			48: R_RISCV_RVC_BRANCH	.L12
  4a:	0047d703          	lhu	a4,4(a5)
  4e:	01671863          	bne	a4,s6,5e <.L12>
			4e: R_RISCV_BRANCH	.L12
  52:	0067d903          	lhu	s2,6(a5)
  56:	41590933          	sub	s2,s2,s5
  5a:	00193913          	seqz	s2,s2

0000005e <.L12>:
  5e:	010b1613          	slli	a2,s6,0x10
  62:	000005b7          	lui	a1,0x0
			62: R_RISCV_HI20	cmp_timer_id
			62: R_RISCV_RELAX	*ABS*
  66:	00000a37          	lui	s4,0x0
			66: R_RISCV_HI20	ke_env+0x14
			66: R_RISCV_RELAX	*ABS*+0x14
  6a:	01566633          	or	a2,a2,s5
  6e:	00058593          	mv	a1,a1
			6e: R_RISCV_LO12_I	cmp_timer_id
			6e: R_RISCV_RELAX	*ABS*
  72:	014a0513          	addi	a0,s4,20 # 14 <ke_timer_set+0x14>
			72: R_RISCV_LO12_I	ke_env+0x14
			72: R_RISCV_RELAX	*ABS*+0x14
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	ke_queue_extract
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.L12+0x18>

0000007e <.LVL23>:
  7e:	84aa                	mv	s1,a0

00000080 <.LVL24>:
  80:	e915                	bnez	a0,b4 <.L13>
			80: R_RISCV_RVC_BRANCH	.L13
  82:	4531                	li	a0,12
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	ke_malloc
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL24+0x4>

0000008c <.LVL25>:
  8c:	84aa                	mv	s1,a0
  8e:	ed19                	bnez	a0,ac <.L14>
			8e: R_RISCV_RVC_BRANCH	.L14
  90:	000005b7          	lui	a1,0x0
			90: R_RISCV_HI20	.LC0
			90: R_RISCV_RELAX	*ABS*
  94:	00000537          	lui	a0,0x0
			94: R_RISCV_HI20	.LC3
			94: R_RISCV_RELAX	*ABS*
  98:	09d00613          	li	a2,157
  9c:	00058593          	mv	a1,a1
			9c: R_RISCV_LO12_I	.LC0
			9c: R_RISCV_RELAX	*ABS*
  a0:	00050513          	mv	a0,a0
			a0: R_RISCV_LO12_I	.LC3
			a0: R_RISCV_RELAX	*ABS*
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	assert_err
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL25+0x18>

000000ac <.L14>:
  ac:	01649223          	sh	s6,4(s1)
  b0:	01549323          	sh	s5,6(s1)

000000b4 <.L13>:
  b4:	44b007b7          	lui	a5,0x44b00
  b8:	1207a783          	lw	a5,288(a5) # 44b00120 <.LASF293+0x44aff06d>

000000bc <.LBE94>:
  bc:	00000637          	lui	a2,0x0
			bc: R_RISCV_HI20	cmp_abs_time
			bc: R_RISCV_RELAX	*ABS*
  c0:	00060613          	mv	a2,a2
			c0: R_RISCV_LO12_I	cmp_abs_time
			c0: R_RISCV_RELAX	*ABS*
  c4:	943e                	add	s0,s0,a5

000000c6 <.LVL28>:
  c6:	c480                	sw	s0,8(s1)
  c8:	85a6                	mv	a1,s1
  ca:	014a0513          	addi	a0,s4,20
			ca: R_RISCV_LO12_I	ke_env+0x14
			ca: R_RISCV_RELAX	*ABS*+0x14
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	co_list_insert
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LVL28+0x8>

000000d6 <.LVL29>:
  d6:	00091663          	bnez	s2,e2 <.L15>
			d6: R_RISCV_BRANCH	.L15
  da:	0149a783          	lw	a5,20(s3) # 14 <ke_timer_set+0x14>
  de:	00979863          	bne	a5,s1,ee <.L16>
			de: R_RISCV_BRANCH	.L16

000000e2 <.L15>:
  e2:	0149a503          	lw	a0,20(s3)
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	ke_timer_hw_set
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.L15+0x4>

000000ee <.L16>:
  ee:	44b007b7          	lui	a5,0x44b00
  f2:	1207a783          	lw	a5,288(a5) # 44b00120 <.LASF293+0x44aff06d>

000000f6 <.LBB103>:
  f6:	8c1d                	sub	s0,s0,a5

000000f8 <.LBE103>:
  f8:	04045263          	bgez	s0,13c <.L9>
			f8: R_RISCV_BRANCH	.L9
  fc:	4462                	lw	s0,24(sp)
  fe:	40f2                	lw	ra,28(sp)
 100:	44d2                	lw	s1,20(sp)

00000102 <.LVL33>:
 102:	4942                	lw	s2,16(sp)

00000104 <.LVL34>:
 104:	49b2                	lw	s3,12(sp)
 106:	4a22                	lw	s4,8(sp)
 108:	4a92                	lw	s5,4(sp)
 10a:	4b02                	lw	s6,0(sp)
 10c:	04000537          	lui	a0,0x4000
 110:	6105                	addi	sp,sp,32
 112:	00000317          	auipc	t1,0x0
			112: R_RISCV_CALL	ke_evt_set
			112: R_RISCV_RELAX	*ABS*
 116:	00030067          	jr	t1 # 112 <.LVL34+0xe>

0000011a <.L10>:
 11a:	11e1a7b7          	lui	a5,0x11e1a
 11e:	2ff78793          	addi	a5,a5,767 # 11e1a2ff <.LASF293+0x11e1924c>
 122:	f0c7fbe3          	bgeu	a5,a2,38 <.L11>
			122: R_RISCV_BRANCH	.L11
 126:	000005b7          	lui	a1,0x0
			126: R_RISCV_HI20	.LC0
			126: R_RISCV_RELAX	*ABS*

0000012a <.LVL36>:
 12a:	00000537          	lui	a0,0x0
			12a: R_RISCV_HI20	.LC2
			12a: R_RISCV_RELAX	*ABS*

0000012e <.LVL37>:
 12e:	08d00613          	li	a2,141
 132:	00058593          	mv	a1,a1
			132: R_RISCV_LO12_I	.LC0
			132: R_RISCV_RELAX	*ABS*
 136:	00050513          	mv	a0,a0
			136: R_RISCV_LO12_I	.LC2
			136: R_RISCV_RELAX	*ABS*
 13a:	bddd                	j	30 <.L21>
			13a: R_RISCV_RVC_JUMP	.L21

0000013c <.L9>:
 13c:	40f2                	lw	ra,28(sp)
 13e:	4462                	lw	s0,24(sp)
 140:	44d2                	lw	s1,20(sp)

00000142 <.LVL39>:
 142:	4942                	lw	s2,16(sp)

00000144 <.LVL40>:
 144:	49b2                	lw	s3,12(sp)
 146:	4a22                	lw	s4,8(sp)
 148:	4a92                	lw	s5,4(sp)
 14a:	4b02                	lw	s6,0(sp)
 14c:	6105                	addi	sp,sp,32
 14e:	8082                	ret

Disassembly of section .text.ke_timer_clear:

00000000 <ke_timer_clear>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	c606                	sw	ra,12(sp)
   a:	c422                	sw	s0,8(sp)
   c:	00048493          	mv	s1,s1
			c: R_RISCV_LO12_I	ke_env
			c: R_RISCV_RELAX	*ABS*
  10:	48c0                	lw	s0,20(s1)

00000012 <.LVL42>:
  12:	c451                	beqz	s0,9e <.L22>
			12: R_RISCV_RVC_BRANCH	.L22
  14:	00445703          	lhu	a4,4(s0)
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	ke_env+0x14
			18: R_RISCV_RELAX	*ABS*+0x14
  1c:	06a71263          	bne	a4,a0,80 <.L25>
			1c: R_RISCV_BRANCH	.L25
  20:	00645703          	lhu	a4,6(s0)
  24:	04b71e63          	bne	a4,a1,80 <.L25>
			24: R_RISCV_BRANCH	.L25

00000028 <.LBB115>:
  28:	01478513          	addi	a0,a5,20 # 14 <.LVL42+0x2>
			28: R_RISCV_LO12_I	ke_env+0x14
			28: R_RISCV_RELAX	*ABS*+0x14

0000002c <.LVL44>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	co_list_pop_front
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL44>

00000034 <.LBE116>:
  34:	48c4                	lw	s1,20(s1)

00000036 <.LVL46>:
  36:	8526                	mv	a0,s1
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	ke_timer_hw_set
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL46+0x2>

00000040 <.LVL47>:
  40:	c49d                	beqz	s1,6e <.L26>
			40: R_RISCV_RVC_BRANCH	.L26

00000042 <.LBB118>:
  42:	44b007b7          	lui	a5,0x44b00
  46:	1207a703          	lw	a4,288(a5) # 44b00120 <.LASF293+0x44aff06d>

0000004a <.LBB123>:
  4a:	449c                	lw	a5,8(s1)
  4c:	8f99                	sub	a5,a5,a4

0000004e <.LBE118>:
  4e:	0207d063          	bgez	a5,6e <.L26>
			4e: R_RISCV_BRANCH	.L26
  52:	000005b7          	lui	a1,0x0
			52: R_RISCV_HI20	.LC0
			52: R_RISCV_RELAX	*ABS*
  56:	00000537          	lui	a0,0x0
			56: R_RISCV_HI20	.LC4
			56: R_RISCV_RELAX	*ABS*
  5a:	0d700613          	li	a2,215
  5e:	00058593          	mv	a1,a1
			5e: R_RISCV_LO12_I	.LC0
			5e: R_RISCV_RELAX	*ABS*
  62:	00050513          	mv	a0,a0
			62: R_RISCV_LO12_I	.LC4
			62: R_RISCV_RELAX	*ABS*
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	assert_err
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LBE118+0x18>

0000006e <.L26>:
  6e:	8522                	mv	a0,s0
  70:	4422                	lw	s0,8(sp)

00000072 <.LVL51>:
  72:	40b2                	lw	ra,12(sp)
  74:	4492                	lw	s1,4(sp)
  76:	0141                	addi	sp,sp,16
  78:	00000317          	auipc	t1,0x0
			78: R_RISCV_CALL	ke_free
			78: R_RISCV_RELAX	*ABS*
  7c:	00030067          	jr	t1 # 78 <.LVL51+0x6>

00000080 <.L25>:
  80:	01051613          	slli	a2,a0,0x10
  84:	8e4d                	or	a2,a2,a1
  86:	000005b7          	lui	a1,0x0
			86: R_RISCV_HI20	cmp_timer_id
			86: R_RISCV_RELAX	*ABS*

0000008a <.LVL53>:
  8a:	00058593          	mv	a1,a1
			8a: R_RISCV_LO12_I	cmp_timer_id
			8a: R_RISCV_RELAX	*ABS*
  8e:	01478513          	addi	a0,a5,20
			8e: R_RISCV_LO12_I	ke_env+0x14
			8e: R_RISCV_RELAX	*ABS*+0x14

00000092 <.LVL54>:
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	ke_queue_extract
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL54>

0000009a <.LVL55>:
  9a:	842a                	mv	s0,a0
  9c:	f969                	bnez	a0,6e <.L26>
			9c: R_RISCV_RVC_BRANCH	.L26

0000009e <.L22>:
  9e:	40b2                	lw	ra,12(sp)
  a0:	4422                	lw	s0,8(sp)

000000a2 <.LVL57>:
  a2:	4492                	lw	s1,4(sp)
  a4:	0141                	addi	sp,sp,16
  a6:	8082                	ret

Disassembly of section .text.ke_timer_schedule:

00000000 <ke_timer_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	00048493          	mv	s1,s1
			10: R_RISCV_LO12_I	ke_env
			10: R_RISCV_RELAX	*ABS*

00000014 <.LBB126>:
  14:	44b00937          	lui	s2,0x44b00

00000018 <.LBB137>:
  18:	000009b7          	lui	s3,0x0
			18: R_RISCV_HI20	ke_env+0x14
			18: R_RISCV_RELAX	*ABS*+0x14

0000001c <.L38>:
  1c:	04000537          	lui	a0,0x4000
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ke_evt_clear
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L38+0x4>

00000028 <.LVL60>:
  28:	48c0                	lw	s0,20(s1)

0000002a <.LVL61>:
  2a:	ec01                	bnez	s0,42 <.L36>
			2a: R_RISCV_RVC_BRANCH	.L36
  2c:	4462                	lw	s0,24(sp)

0000002e <.LVL62>:
  2e:	40f2                	lw	ra,28(sp)
  30:	44d2                	lw	s1,20(sp)

00000032 <.LVL63>:
  32:	4942                	lw	s2,16(sp)
  34:	49b2                	lw	s3,12(sp)
  36:	4501                	li	a0,0
  38:	6105                	addi	sp,sp,32
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	ke_timer_hw_set
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL63+0x8>

00000042 <.L36>:
  42:	12092703          	lw	a4,288(s2) # 44b00120 <.LASF293+0x44aff06d>

00000046 <.LBB135>:
  46:	441c                	lw	a5,8(s0)
  48:	8f99                	sub	a5,a5,a4
  4a:	fce78793          	addi	a5,a5,-50

0000004e <.LBE135>:
  4e:	0207d963          	bgez	a5,80 <.L37>
			4e: R_RISCV_BRANCH	.L37

00000052 <.L39>:
  52:	01498513          	addi	a0,s3,20 # 14 <.LBB126>
			52: R_RISCV_LO12_I	ke_env+0x14
			52: R_RISCV_RELAX	*ABS*+0x14
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	co_list_pop_front
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.L39+0x4>

0000005e <.LVL67>:
  5e:	842a                	mv	s0,a0

00000060 <.LBE141>:
  60:	00655583          	lhu	a1,6(a0) # 4000006 <.LASF293+0x3ffef53>
  64:	00455503          	lhu	a0,4(a0)
  68:	0ff00613          	li	a2,255
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	ke_msg_send_basic
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE141+0xc>

00000074 <.LVL69>:
  74:	8522                	mv	a0,s0
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	ke_free
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL69+0x2>

0000007e <.LVL70>:
  7e:	bf79                	j	1c <.L38>
			7e: R_RISCV_RVC_JUMP	.L38

00000080 <.L37>:
  80:	8522                	mv	a0,s0
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	ke_timer_hw_set
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.L37+0x2>

0000008a <.LBB142>:
  8a:	12092703          	lw	a4,288(s2)

0000008e <.LBB147>:
  8e:	441c                	lw	a5,8(s0)
  90:	8f99                	sub	a5,a5,a4

00000092 <.LBE142>:
  92:	fc07c0e3          	bltz	a5,52 <.L39>
			92: R_RISCV_BRANCH	.L39
  96:	40f2                	lw	ra,28(sp)
  98:	4462                	lw	s0,24(sp)

0000009a <.LVL73>:
  9a:	44d2                	lw	s1,20(sp)
  9c:	4942                	lw	s2,16(sp)
  9e:	49b2                	lw	s3,12(sp)
  a0:	6105                	addi	sp,sp,32
  a2:	8082                	ret

Disassembly of section .text.ke_timer_active:

00000000 <ke_timer_active>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ke_env+0x14
			0: R_RISCV_RELAX	*ABS*+0x14
   4:	0147a783          	lw	a5,20(a5) # 14 <.L45+0x6>
			4: R_RISCV_LO12_I	ke_env+0x14
			4: R_RISCV_RELAX	*ABS*+0x14

00000008 <.L42>:
   8:	e399                	bnez	a5,e <.L45>
			8: R_RISCV_RVC_BRANCH	.L45
   a:	4501                	li	a0,0

0000000c <.LVL76>:
   c:	8082                	ret

0000000e <.L45>:
   e:	0047d703          	lhu	a4,4(a5)
  12:	00a71663          	bne	a4,a0,1e <.L43>
			12: R_RISCV_BRANCH	.L43
  16:	0067d703          	lhu	a4,6(a5)
  1a:	00b70463          	beq	a4,a1,22 <.L46>
			1a: R_RISCV_BRANCH	.L46

0000001e <.L43>:
  1e:	439c                	lw	a5,0(a5)
  20:	b7e5                	j	8 <.L42>
			20: R_RISCV_RVC_JUMP	.L42

00000022 <.L46>:
  22:	4505                	li	a0,1

00000024 <.LVL79>:
  24:	8082                	ret
