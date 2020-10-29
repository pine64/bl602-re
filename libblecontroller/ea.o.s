
libblecontroller/ea.o:     file format elf32-littleriscv


Disassembly of section .text.ea_conflict_check:

00000000 <ea_conflict_check>:
   0:	4594                	lw	a3,8(a1)
   2:	4518                	lw	a4,8(a0)
   4:	080008b7          	lui	a7,0x8000

00000008 <.LBE94>:
   8:	882a                	mv	a6,a0

0000000a <.LBB99>:
   a:	18fd                	addi	a7,a7,-1
   c:	40e68533          	sub	a0,a3,a4

00000010 <.LVL1>:
  10:	01157533          	and	a0,a0,a7
  14:	04000337          	lui	t1,0x4000
  18:	01485783          	lhu	a5,20(a6)
  1c:	0145d603          	lhu	a2,20(a1)
  20:	04a37d63          	bgeu	t1,a0,7a <.L2>
			20: R_RISCV_BRANCH	.L2
  24:	40d706b3          	sub	a3,a4,a3
  28:	0116f6b3          	and	a3,a3,a7
  2c:	40d006b3          	neg	a3,a3

00000030 <.LVL2>:
  30:	e299                	bnez	a3,36 <.L5>
			30: R_RISCV_RVC_BRANCH	.L5

00000032 <.L15>:
  32:	04c7e663          	bltu	a5,a2,7e <.L4>
			32: R_RISCV_BRANCH	.L4

00000036 <.L5>:
  36:	0125d583          	lhu	a1,18(a1)

0000003a <.LVL4>:
  3a:	4515                	li	a0,5
  3c:	00b60733          	add	a4,a2,a1
  40:	8f1d                	sub	a4,a4,a5

00000042 <.LVL5>:
  42:	02e05b63          	blez	a4,78 <.L6>
			42: R_RISCV_BRANCH	.L6

00000046 <.LVL6>:
  46:	177d                	addi	a4,a4,-1

00000048 <.LVL7>:
  48:	27100893          	li	a7,625
  4c:	03174733          	div	a4,a4,a7

00000050 <.LVL8>:
  50:	9736                	add	a4,a4,a3
  52:	02074363          	bltz	a4,78 <.L6>
			52: R_RISCV_BRANCH	.L6

00000056 <.LBB96>:
  56:	01285703          	lhu	a4,18(a6)
  5a:	4511                	li	a0,4
  5c:	97ba                	add	a5,a5,a4

0000005e <.LVL9>:
  5e:	8f91                	sub	a5,a5,a2
  60:	8f8d                	sub	a5,a5,a1

00000062 <.LVL10>:
  62:	00f04b63          	bgtz	a5,78 <.L6>
			62: R_RISCV_BRANCH	.L6

00000066 <.LVL11>:
  66:	d8f00513          	li	a0,-625
  6a:	02a7c7b3          	div	a5,a5,a0

0000006e <.LVL12>:
  6e:	00d78533          	add	a0,a5,a3
  72:	00052513          	slti	a0,a0,0
  76:	050d                	addi	a0,a0,3

00000078 <.L6>:
  78:	8082                	ret

0000007a <.L2>:
  7a:	86aa                	mv	a3,a0

0000007c <.LVL15>:
  7c:	d95d                	beqz	a0,32 <.L15>
			7c: R_RISCV_RVC_BRANCH	.L15

0000007e <.L4>:
  7e:	01285703          	lhu	a4,18(a6)
  82:	4501                	li	a0,0
  84:	97ba                	add	a5,a5,a4
  86:	8f91                	sub	a5,a5,a2

00000088 <.LVL17>:
  88:	fef058e3          	blez	a5,78 <.L6>
			88: R_RISCV_BRANCH	.L6

0000008c <.LVL18>:
  8c:	fff78713          	addi	a4,a5,-1
  90:	d8f00613          	li	a2,-625
  94:	02c74733          	div	a4,a4,a2
  98:	9736                	add	a4,a4,a3

0000009a <.LVL19>:
  9a:	fce04fe3          	bgtz	a4,78 <.L6>
			9a: R_RISCV_BRANCH	.L6

0000009e <.LBB98>:
  9e:	0125d703          	lhu	a4,18(a1)

000000a2 <.LVL20>:
  a2:	4505                	li	a0,1
  a4:	8f99                	sub	a5,a5,a4

000000a6 <.LVL21>:
  a6:	fcf059e3          	blez	a5,78 <.L6>
			a6: R_RISCV_BRANCH	.L6

000000aa <.LVL22>:
  aa:	17fd                	addi	a5,a5,-1

000000ac <.LVL23>:
  ac:	02c7c533          	div	a0,a5,a2
  b0:	9536                	add	a0,a0,a3

000000b2 <.LVL24>:
  b2:	00152513          	slti	a0,a0,1

000000b6 <.LVL25>:
  b6:	0505                	addi	a0,a0,1
  b8:	8082                	ret

Disassembly of section .text.ea_elt_cancel:

00000000 <ea_elt_cancel>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)

00000004 <.LBB105>:
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE105>:
   8:	c2a6                	sw	s1,68(sp)
   a:	c0ca                	sw	s2,64(sp)
   c:	dc52                	sw	s4,56(sp)
   e:	da56                	sw	s5,52(sp)
  10:	d462                	sw	s8,40(sp)
  12:	d266                	sw	s9,36(sp)
  14:	d06a                	sw	s10,32(sp)
  16:	c686                	sw	ra,76(sp)
  18:	de4e                	sw	s3,60(sp)
  1a:	d85a                	sw	s6,48(sp)
  1c:	d65e                	sw	s7,44(sp)
  1e:	ce6e                	sw	s11,28(sp)

00000020 <.LBB106>:
  20:	00040793          	mv	a5,s0
			20: R_RISCV_LO12_I	.LANCHOR0
			20: R_RISCV_RELAX	*ABS*
  24:	00c7ab03          	lw	s6,12(a5)

00000028 <.LBE106>:
  28:	00040493          	mv	s1,s0
			28: R_RISCV_LO12_I	.LANCHOR0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LBB107>:
  2c:	08000c37          	lui	s8,0x8000

00000030 <.LBE107>:
  30:	8a2a                	mv	s4,a0
  32:	4c81                	li	s9,0

00000034 <.LBB118>:
  34:	4a95                	li	s5,5

00000036 <.LBB111>:
  36:	27100d13          	li	s10,625
  3a:	1c7d                	addi	s8,s8,-1

0000003c <.LBE111>:
  3c:	00c48913          	addi	s2,s1,12

00000040 <.L17>:
  40:	020b1e63          	bnez	s6,7c <.L29>
			40: R_RISCV_BRANCH	.L29

00000044 <.LBB128>:
  44:	44dc                	lw	a5,12(s1)
  46:	cf81                	beqz	a5,5e <.L16>
			46: R_RISCV_RVC_BRANCH	.L16

00000048 <.LBB130>:
  48:	280006b7          	lui	a3,0x28000
  4c:	429c                	lw	a5,0(a3)
  4e:	f0000737          	lui	a4,0xf0000
  52:	177d                	addi	a4,a4,-1
  54:	8ff9                	and	a5,a5,a4
  56:	10000737          	lui	a4,0x10000
  5a:	8fd9                	or	a5,a5,a4
  5c:	c29c                	sw	a5,0(a3)

0000005e <.L16>:
  5e:	40b6                	lw	ra,76(sp)
  60:	4426                	lw	s0,72(sp)
  62:	4496                	lw	s1,68(sp)
  64:	4906                	lw	s2,64(sp)
  66:	59f2                	lw	s3,60(sp)
  68:	5a62                	lw	s4,56(sp)

0000006a <.LVL32>:
  6a:	5ad2                	lw	s5,52(sp)
  6c:	5b42                	lw	s6,48(sp)

0000006e <.LVL33>:
  6e:	5bb2                	lw	s7,44(sp)
  70:	5c22                	lw	s8,40(sp)
  72:	5c92                	lw	s9,36(sp)

00000074 <.LVL34>:
  74:	5d02                	lw	s10,32(sp)
  76:	4df2                	lw	s11,28(sp)
  78:	6161                	addi	sp,sp,80
  7a:	8082                	ret

0000007c <.L29>:
  7c:	010b5683          	lhu	a3,16(s6)

00000080 <.LBB124>:
  80:	000b2983          	lw	s3,0(s6)

00000084 <.LBE124>:
  84:	00e6d793          	srli	a5,a3,0xe
  88:	c3e5                	beqz	a5,168 <.L18>
			88: R_RISCV_RVC_BRANCH	.L18
  8a:	4046d713          	srai	a4,a3,0x4
  8e:	03f77713          	andi	a4,a4,63
  92:	cb79                	beqz	a4,168 <.L18>
			92: R_RISCV_RVC_BRANCH	.L18

00000094 <.LBB126>:
  94:	016b4603          	lbu	a2,22(s6)
  98:	00f6f793          	andi	a5,a3,15
  9c:	c0f6f693          	andi	a3,a3,-1009

000000a0 <.LVL39>:
  a0:	97b2                	add	a5,a5,a2
  a2:	00fb0b23          	sb	a5,22(s6)
  a6:	fff70793          	addi	a5,a4,-1 # fffffff <.LASF391+0xfffe226>
  aa:	0792                	slli	a5,a5,0x4
  ac:	8fd5                	or	a5,a5,a3
  ae:	07c2                	slli	a5,a5,0x10
  b0:	83c1                	srli	a5,a5,0x10

000000b2 <.LBB112>:
  b2:	40c7d613          	srai	a2,a5,0xc

000000b6 <.LBE112>:
  b6:	00fb1823          	sh	a5,16(s6)

000000ba <.LBB113>:
  ba:	8a0d                	andi	a2,a2,3
  bc:	00e7db93          	srli	s7,a5,0xe

000000c0 <.LBE113>:
  c0:	8752                	mv	a4,s4
  c2:	4d81                	li	s11,0

000000c4 <.L19>:
  c4:	e315                	bnez	a4,e8 <.L28>
			c4: R_RISCV_RVC_BRANCH	.L28

000000c6 <.L20>:
  c6:	865a                	mv	a2,s6
  c8:	85e6                	mv	a1,s9
  ca:	854a                	mv	a0,s2
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	ble_co_list_extract_after
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.L20+0x6>

000000d4 <.LVL43>:
  d4:	865a                	mv	a2,s6
  d6:	85ee                	mv	a1,s11
  d8:	00040513          	mv	a0,s0
			d8: R_RISCV_LO12_I	.LANCHOR0
			d8: R_RISCV_RELAX	*ABS*
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	ble_co_list_insert_after
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.LVL43+0x8>

000000e4 <.LVL44>:
  e4:	8b66                	mv	s6,s9

000000e6 <.LVL45>:
  e6:	a049                	j	168 <.L18>
			e6: R_RISCV_RVC_JUMP	.L18

000000e8 <.L28>:
  e8:	85ba                	mv	a1,a4
  ea:	855a                	mv	a0,s6
  ec:	c632                	sw	a2,12(sp)
  ee:	c43a                	sw	a4,8(sp)
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	ea_conflict_check
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.L28+0x8>

000000f8 <.LVL47>:
  f8:	d579                	beqz	a0,c6 <.L20>
			f8: R_RISCV_RVC_BRANCH	.L20
  fa:	4722                	lw	a4,8(sp)
  fc:	4632                	lw	a2,12(sp)
  fe:	4805                	li	a6,1
 100:	040008b7          	lui	a7,0x4000
 104:	01551563          	bne	a0,s5,10e <.L21>
			104: R_RISCV_BRANCH	.L21

00000108 <.L25>:
 108:	8dba                	mv	s11,a4
 10a:	4318                	lw	a4,0(a4)

0000010c <.LVL49>:
 10c:	bf65                	j	c4 <.L19>
			10c: R_RISCV_RVC_JUMP	.L19

0000010e <.L21>:
 10e:	01275783          	lhu	a5,18(a4)
 112:	01475683          	lhu	a3,20(a4)
 116:	470c                	lw	a1,8(a4)
 118:	96be                	add	a3,a3,a5

0000011a <.LVL50>:
 11a:	03a6d7b3          	divu	a5,a3,s10
 11e:	03a6f6b3          	remu	a3,a3,s10

00000122 <.LVL51>:
 122:	97ae                	add	a5,a5,a1

00000124 <.LVL52>:
 124:	014b5583          	lhu	a1,20(s6)
 128:	00d5f363          	bgeu	a1,a3,12e <.L22>
			128: R_RISCV_BRANCH	.L22
 12c:	0785                	addi	a5,a5,1

0000012e <.L22>:
 12e:	05061063          	bne	a2,a6,16e <.L23>
			12e: R_RISCV_BRANCH	.L23
 132:	0017e793          	ori	a5,a5,1

00000136 <.L24>:
 136:	0187f7b3          	and	a5,a5,s8

0000013a <.LVL55>:
 13a:	00fb2423          	sw	a5,8(s6)

0000013e <.LVL56>:
 13e:	fd7875e3          	bgeu	a6,s7,108 <.L25>
			13e: R_RISCV_BRANCH	.L25
 142:	00cb2583          	lw	a1,12(s6)
 146:	40f586b3          	sub	a3,a1,a5
 14a:	0186f6b3          	and	a3,a3,s8
 14e:	00d8f763          	bgeu	a7,a3,15c <.L27>
			14e: R_RISCV_BRANCH	.L27
 152:	8f8d                	sub	a5,a5,a1
 154:	0187f7b3          	and	a5,a5,s8
 158:	40f006b3          	neg	a3,a5

0000015c <.L27>:
 15c:	012b5783          	lhu	a5,18(s6)
 160:	03a7d7b3          	divu	a5,a5,s10
 164:	faf6d2e3          	bge	a3,a5,108 <.L25>
			164: R_RISCV_BRANCH	.L25

00000168 <.L18>:
 168:	8cda                	mv	s9,s6

0000016a <.LVL58>:
 16a:	8b4e                	mv	s6,s3
 16c:	bdd1                	j	40 <.L17>
			16c: R_RISCV_RVC_JUMP	.L17

0000016e <.L23>:
 16e:	f661                	bnez	a2,136 <.L24>
			16e: R_RISCV_RVC_BRANCH	.L24
 170:	0785                	addi	a5,a5,1

00000172 <.LVL60>:
 172:	9bf9                	andi	a5,a5,-2

00000174 <.LVL61>:
 174:	b7c9                	j	136 <.L24>
			174: R_RISCV_RVC_JUMP	.L24

Disassembly of section .text.ea_init:

00000000 <ea_init>:
   0:	1141                	addi	sp,sp,-16
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*

00000006 <.LVL63>:
   6:	c422                	sw	s0,8(sp)
   8:	00050413          	mv	s0,a0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	00050513          	mv	a0,a0
			c: R_RISCV_LO12_I	.LANCHOR0
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ble_co_list_init
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL63+0xc>

0000001a <.LVL64>:
  1a:	00c40513          	addi	a0,s0,12 # c <.LVL63+0x6>
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_co_list_init
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL64+0x4>

00000026 <.LVL65>:
  26:	01440513          	addi	a0,s0,20
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_co_list_init
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL65+0x4>

00000032 <.LVL66>:
  32:	57fd                	li	a5,-1
  34:	00042423          	sw	zero,8(s0)
  38:	cc5c                	sw	a5,28(s0)
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

Disassembly of section .text.ea_elt_create:

00000000 <ea_elt_create>:
   0:	02c50613          	addi	a2,a0,44 # 2c <.L46+0x2>
   4:	1101                	addi	sp,sp,-32
   6:	4581                	li	a1,0
   8:	8532                	mv	a0,a2

0000000a <.LVL68>:
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c632                	sw	a2,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_malloc
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL68+0x6>

00000018 <.LVL69>:
  18:	842a                	mv	s0,a0

0000001a <.LVL70>:
  1a:	c901                	beqz	a0,2a <.L46>
			1a: R_RISCV_RVC_BRANCH	.L46
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	ble_memset_ptr
			1c: R_RISCV_RELAX	*ABS*
  20:	0007a783          	lw	a5,0(a5) # 0 <ea_elt_create>
			20: R_RISCV_LO12_I	ble_memset_ptr
			20: R_RISCV_RELAX	*ABS*
  24:	4632                	lw	a2,12(sp)
  26:	4581                	li	a1,0
  28:	9782                	jalr	a5

0000002a <.L46>:
  2a:	8522                	mv	a0,s0
  2c:	40f2                	lw	ra,28(sp)
  2e:	4462                	lw	s0,24(sp)

00000030 <.LVL72>:
  30:	6105                	addi	sp,sp,32
  32:	8082                	ret

Disassembly of section .text.ea_interval_create:

00000000 <ea_interval_create>:
   0:	1141                	addi	sp,sp,-16
   2:	4581                	li	a1,0
   4:	4541                	li	a0,16
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ble_ke_malloc
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <ea_interval_create+0xa>

00000012 <.LVL73>:
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	ble_memset_ptr
			12: R_RISCV_RELAX	*ABS*
  16:	0007a783          	lw	a5,0(a5) # 0 <ea_interval_create>
			16: R_RISCV_LO12_I	ble_memset_ptr
			16: R_RISCV_RELAX	*ABS*
  1a:	4641                	li	a2,16
  1c:	4581                	li	a1,0
  1e:	842a                	mv	s0,a0

00000020 <.LVL74>:
  20:	9782                	jalr	a5

00000022 <.LVL75>:
  22:	8522                	mv	a0,s0
  24:	40b2                	lw	ra,12(sp)
  26:	4422                	lw	s0,8(sp)

00000028 <.LVL76>:
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

Disassembly of section .text.ea_interval_insert:

00000000 <ea_interval_insert>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0+0x14
			2: R_RISCV_RELAX	*ABS*+0x14

00000006 <.LVL78>:
   6:	01450513          	addi	a0,a0,20 # 14 <.LFE1128>
			6: R_RISCV_LO12_I	.LANCHOR0+0x14
			6: R_RISCV_RELAX	*ABS*+0x14
   a:	00000317          	auipc	t1,0x0
			a: R_RISCV_CALL	ble_co_list_push_back
			a: R_RISCV_RELAX	*ABS*
   e:	00030067          	jr	t1 # a <.LVL78+0x4>

Disassembly of section .text.ea_interval_remove:

00000000 <ea_interval_remove>:
   0:	85aa                	mv	a1,a0
   2:	00000537          	lui	a0,0x0
			2: R_RISCV_HI20	.LANCHOR0+0x14
			2: R_RISCV_RELAX	*ABS*+0x14

00000006 <.LVL81>:
   6:	4601                	li	a2,0
   8:	01450513          	addi	a0,a0,20 # 14 <.LFE1128>
			8: R_RISCV_LO12_I	.LANCHOR0+0x14
			8: R_RISCV_RELAX	*ABS*+0x14
   c:	00000317          	auipc	t1,0x0
			c: R_RISCV_CALL	ble_co_list_extract
			c: R_RISCV_RELAX	*ABS*
  10:	00030067          	jr	t1 # c <.LVL81+0x6>

Disassembly of section .text.ea_interval_delete:

00000000 <ea_interval_delete>:
   0:	c51d                	beqz	a0,2e <.L56>
			0: R_RISCV_RVC_BRANCH	.L56
   2:	1141                	addi	sp,sp,-16
   4:	c422                	sw	s0,8(sp)
   6:	85aa                	mv	a1,a0
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	.LANCHOR0+0x14
			a: R_RISCV_RELAX	*ABS*+0x14

0000000e <.LVL84>:
   e:	4601                	li	a2,0
  10:	01450513          	addi	a0,a0,20 # 14 <.LVL84+0x6>
			10: R_RISCV_LO12_I	.LANCHOR0+0x14
			10: R_RISCV_RELAX	*ABS*+0x14
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_co_list_extract
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL84+0x8>

0000001e <.LVL85>:
  1e:	8522                	mv	a0,s0
  20:	4422                	lw	s0,8(sp)

00000022 <.LVL86>:
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
			26: R_RISCV_CALL	ble_ke_free
			26: R_RISCV_RELAX	*ABS*
  2a:	00030067          	jr	t1 # 26 <.LVL86+0x4>

0000002e <.L56>:
  2e:	8082                	ret

Disassembly of section .text.ea_sw_isr:

00000000 <ea_sw_isr>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)

00000004 <.LBB133>:
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE133>:
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	00c40493          	addi	s1,s0,12 # c <.LBE133>

00000014 <.L63>:
  14:	445c                	lw	a5,12(s0)
  16:	e791                	bnez	a5,22 <.L64>
			16: R_RISCV_RVC_BRANCH	.L64
  18:	40b2                	lw	ra,12(sp)
  1a:	4422                	lw	s0,8(sp)
  1c:	4492                	lw	s1,4(sp)
  1e:	0141                	addi	sp,sp,16
  20:	8082                	ret

00000022 <.L64>:
  22:	8526                	mv	a0,s1
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_co_list_pop_front
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.L64+0x2>

0000002c <.LVL90>:
  2c:	515c                	lw	a5,36(a0)
  2e:	d3fd                	beqz	a5,14 <.L63>
			2e: R_RISCV_RVC_BRANCH	.L63
  30:	9782                	jalr	a5

00000032 <.LVL91>:
  32:	b7cd                	j	14 <.L63>
			32: R_RISCV_RVC_JUMP	.L63

Disassembly of section .text.ea_offset_req:

00000000 <ea_offset_req>:
   0:	0005d803          	lhu	a6,0(a1)

00000004 <.LVL93>:
   4:	16080763          	beqz	a6,172 <.L95>
			4: R_RISCV_BRANCH	.L95
   8:	0045a303          	lw	t1,4(a1)
   c:	4785                	li	a5,1
   e:	01031e13          	slli	t3,t1,0x10
  12:	010e5e13          	srli	t3,t3,0x10
  16:	140e0f63          	beqz	t3,174 <.L116>
			16: R_RISCV_BRANCH	.L116
  1a:	1141                	addi	sp,sp,-16
  1c:	c622                	sw	s0,12(sp)

0000001e <.LVL94>:
  1e:	c426                	sw	s1,8(sp)
  20:	c24a                	sw	s2,4(sp)
  22:	00e54e83          	lbu	t4,14(a0)
  26:	02fe9d63          	bne	t4,a5,60 <.L70>
			26: R_RISCV_BRANCH	.L70
  2a:	00c55603          	lhu	a2,12(a0)

0000002e <.L71>:
  2e:	000007b7          	lui	a5,0x0
			2e: R_RISCV_HI20	.LANCHOR0+0x14
			2e: R_RISCV_RELAX	*ABS*+0x14
  32:	0147a883          	lw	a7,20(a5) # 14 <.LVL93+0x10>
			32: R_RISCV_LO12_I	.LANCHOR0+0x14
			32: R_RISCV_RELAX	*ABS*+0x14

00000036 <.LBE137>:
  36:	0342                	slli	t1,t1,0x10

00000038 <.LVL97>:
  38:	0ff00f93          	li	t6,255
  3c:	8446                	mv	s0,a7
  3e:	1e7d                	addi	t3,t3,-1
  40:	4f05                	li	t5,1
  42:	01035313          	srli	t1,t1,0x10
  46:	82c2                	mv	t0,a6

00000048 <.L72>:
  48:	10040c63          	beqz	s0,160 <.L91>
			48: R_RISCV_BRANCH	.L91
  4c:	13067663          	bgeu	a2,a6,178 <.L101>
			4c: R_RISCV_BRANCH	.L101
  50:	01255703          	lhu	a4,18(a0)
  54:	01f71963          	bne	a4,t6,66 <.L92>
			54: R_RISCV_BRANCH	.L92

00000058 <.L93>:
  58:	00c59423          	sh	a2,8(a1)
  5c:	4781                	li	a5,0
  5e:	a221                	j	166 <.L113>
			5e: R_RISCV_RVC_JUMP	.L113

00000060 <.L70>:
  60:	01454603          	lbu	a2,20(a0)
  64:	b7e9                	j	2e <.L71>
			64: R_RISCV_RVC_JUMP	.L71

00000066 <.L92>:
  66:	00445683          	lhu	a3,4(s0)
  6a:	c2bd                	beqz	a3,d0 <.L73>
			6a: R_RISCV_RVC_BRANCH	.L73
  6c:	00845783          	lhu	a5,8(s0)
  70:	c3a5                	beqz	a5,d0 <.L73>
			70: R_RISCV_RVC_BRANCH	.L73
  72:	00a45483          	lhu	s1,10(s0)
  76:	01055383          	lhu	t2,16(a0)
  7a:	04748b63          	beq	s1,t2,d0 <.L73>
			7a: R_RISCV_BRANCH	.L73
  7e:	83b6                	mv	t2,a3
  80:	00d87363          	bgeu	a6,a3,86 <.L74>
			80: R_RISCV_BRANCH	.L74
  84:	8396                	mv	t2,t0

00000086 <.L74>:
  86:	00c45483          	lhu	s1,12(s0)
  8a:	03c2                	slli	t2,t2,0x10
  8c:	0103d393          	srli	t2,t2,0x10
  90:	00e49a63          	bne	s1,a4,a4 <.L75>
			90: R_RISCV_BRANCH	.L75
  94:	05e71263          	bne	a4,t5,d8 <.L76>
			94: R_RISCV_BRANCH	.L76
  98:	00e45483          	lhu	s1,14(s0)
  9c:	01655703          	lhu	a4,22(a0)
  a0:	02e48c63          	beq	s1,a4,d8 <.L76>
			a0: R_RISCV_BRANCH	.L76

000000a4 <.L75>:
  a4:	00f30733          	add	a4,t1,a5
  a8:	0ce3c863          	blt	t2,a4,178 <.L101>
			a8: R_RISCV_BRANCH	.L101
  ac:	00645703          	lhu	a4,6(s0)
  b0:	0785                	addi	a5,a5,1
  b2:	971e                	add	a4,a4,t2
  b4:	177d                	addi	a4,a4,-1
  b6:	02776733          	rem	a4,a4,t2
  ba:	0742                	slli	a4,a4,0x10
  bc:	8341                	srli	a4,a4,0x10

000000be <.L119>:
  be:	027874b3          	remu	s1,a6,t2
  c2:	97ba                	add	a5,a5,a4
  c4:	07c2                	slli	a5,a5,0x10
  c6:	83c1                	srli	a5,a5,0x10

000000c8 <.LVL103>:
  c8:	e481                	bnez	s1,d0 <.L73>
			c8: R_RISCV_RVC_BRANCH	.L73
  ca:	0276f6b3          	remu	a3,a3,t2
  ce:	ce99                	beqz	a3,ec <.L79>
			ce: R_RISCV_RVC_BRANCH	.L79

000000d0 <.L73>:
  d0:	4000                	lw	s0,0(s0)
  d2:	87b2                	mv	a5,a2

000000d4 <.L80>:
  d4:	863e                	mv	a2,a5
  d6:	bf8d                	j	48 <.L72>
			d6: R_RISCV_RVC_JUMP	.L72

000000d8 <.L76>:
  d8:	00f30733          	add	a4,t1,a5
  dc:	08e3ce63          	blt	t2,a4,178 <.L101>
			dc: R_RISCV_BRANCH	.L101
  e0:	00645703          	lhu	a4,6(s0)
  e4:	17fd                	addi	a5,a5,-1
  e6:	02777733          	remu	a4,a4,t2

000000ea <.LVL108>:
  ea:	bfd1                	j	be <.L119>
			ea: R_RISCV_RVC_JUMP	.L119

000000ec <.L79>:
  ec:	027674b3          	remu	s1,a2,t2

000000f0 <.LVL110>:
  f0:	01c486b3          	add	a3,s1,t3
  f4:	06c2                	slli	a3,a3,0x10
  f6:	82c1                	srli	a3,a3,0x10

000000f8 <.LVL111>:
  f8:	08e4e563          	bltu	s1,a4,182 <.L81>
			f8: R_RISCV_BRANCH	.L81
  fc:	0097f663          	bgeu	a5,s1,108 <.L82>
			fc: R_RISCV_BRANCH	.L82
 100:	02e6e363          	bltu	a3,a4,126 <.L83>
			100: R_RISCV_BRANCH	.L83
 104:	06d7ec63          	bltu	a5,a3,17c <.L114>
			104: R_RISCV_BRANCH	.L114

00000108 <.L82>:
 108:	05ee8a63          	beq	t4,t5,15c <.L99>
			108: R_RISCV_BRANCH	.L99
 10c:	0785                	addi	a5,a5,1

0000010e <.LVL113>:
 10e:	0277e7b3          	rem	a5,a5,t2

00000112 <.L87>:
 112:	02f67b63          	bgeu	a2,a5,148 <.L88>
			112: R_RISCV_BRANCH	.L88

00000116 <.LVL115>:
 116:	01454683          	lbu	a3,20(a0)
 11a:	0017f713          	andi	a4,a5,1

0000011e <.LVL116>:
 11e:	ca8d                	beqz	a3,150 <.L89>
			11e: R_RISCV_RVC_BRANCH	.L89
 120:	cb15                	beqz	a4,154 <.L90>
			120: R_RISCV_RVC_BRANCH	.L90

00000122 <.L120>:
 122:	8446                	mv	s0,a7
 124:	bf45                	j	d4 <.L80>
			124: R_RISCV_RVC_JUMP	.L80

00000126 <.L83>:
 126:	00971463          	bne	a4,s1,12e <.L85>
			126: R_RISCV_BRANCH	.L85

0000012a <.L94>:
 12a:	fcf6ffe3          	bgeu	a3,a5,108 <.L82>
			12a: R_RISCV_BRANCH	.L82

0000012e <.L85>:
 12e:	0077e663          	bltu	a5,t2,13a <.L86>
			12e: R_RISCV_BRANCH	.L86
 132:	0277f933          	remu	s2,a5,t2
 136:	fc9979e3          	bgeu	s2,s1,108 <.L82>
			136: R_RISCV_BRANCH	.L82

0000013a <.L86>:
 13a:	f876ebe3          	bltu	a3,t2,d0 <.L73>
			13a: R_RISCV_BRANCH	.L73
 13e:	0276f6b3          	remu	a3,a3,t2

00000142 <.LVL119>:
 142:	f8e6e7e3          	bltu	a3,a4,d0 <.L73>
			142: R_RISCV_BRANCH	.L73
 146:	b7c9                	j	108 <.L82>
			146: R_RISCV_RVC_JUMP	.L82

00000148 <.L88>:
 148:	979e                	add	a5,a5,t2

0000014a <.LVL121>:
 14a:	07c2                	slli	a5,a5,0x10
 14c:	83c1                	srli	a5,a5,0x10

0000014e <.LVL122>:
 14e:	b7d1                	j	112 <.L87>
			14e: R_RISCV_RVC_JUMP	.L87

00000150 <.L89>:
 150:	8446                	mv	s0,a7

00000152 <.LVL124>:
 152:	d349                	beqz	a4,d4 <.L80>
			152: R_RISCV_RVC_BRANCH	.L80

00000154 <.L90>:
 154:	0785                	addi	a5,a5,1

00000156 <.LVL125>:
 156:	07c2                	slli	a5,a5,0x10
 158:	83c1                	srli	a5,a5,0x10

0000015a <.LVL126>:
 15a:	b7e1                	j	122 <.L120>
			15a: R_RISCV_RVC_JUMP	.L120

0000015c <.L99>:
 15c:	87c2                	mv	a5,a6

0000015e <.LVL128>:
 15e:	b7d1                	j	122 <.L120>
			15e: R_RISCV_RVC_JUMP	.L120

00000160 <.L91>:
 160:	478d                	li	a5,3
 162:	ef066be3          	bltu	a2,a6,58 <.L93>
			162: R_RISCV_BRANCH	.L93

00000166 <.L113>:
 166:	4432                	lw	s0,12(sp)

00000168 <.LVL130>:
 168:	44a2                	lw	s1,8(sp)
 16a:	4912                	lw	s2,4(sp)
 16c:	853e                	mv	a0,a5

0000016e <.LVL131>:
 16e:	0141                	addi	sp,sp,16
 170:	8082                	ret

00000172 <.L95>:
 172:	4785                	li	a5,1

00000174 <.L116>:
 174:	853e                	mv	a0,a5

00000176 <.LVL133>:
 176:	8082                	ret

00000178 <.L101>:
 178:	478d                	li	a5,3
 17a:	b7f5                	j	166 <.L113>
			17a: R_RISCV_RVC_JUMP	.L113

0000017c <.L114>:
 17c:	fa9769e3          	bltu	a4,s1,12e <.L85>
			17c: R_RISCV_BRANCH	.L85
 180:	b761                	j	108 <.L82>
			180: R_RISCV_RVC_JUMP	.L82

00000182 <.L81>:
 182:	f8e6f3e3          	bgeu	a3,a4,108 <.L82>
			182: R_RISCV_BRANCH	.L82
 186:	b755                	j	12a <.L94>
			186: R_RISCV_RVC_JUMP	.L94

Disassembly of section .text.ea_time_get_halfslot_rounded:

00000000 <ea_time_get_halfslot_rounded>:
   0:	280007b7          	lui	a5,0x28000
   4:	80000737          	lui	a4,0x80000
   8:	cfd8                	sw	a4,28(a5)

0000000a <.L122>:
   a:	4fd4                	lw	a3,28(a5)

0000000c <.LBE141>:
   c:	fe06cfe3          	bltz	a3,a <.L122>
			c: R_RISCV_BRANCH	.L122

00000010 <.LBB143>:
  10:	4fd8                	lw	a4,28(a5)

00000012 <.LBB145>:
  12:	5388                	lw	a0,32(a5)

00000014 <.LBE145>:
  14:	13853513          	sltiu	a0,a0,312
  18:	953a                	add	a0,a0,a4
  1a:	0516                	slli	a0,a0,0x5
  1c:	8115                	srli	a0,a0,0x5
  1e:	8082                	ret

Disassembly of section .text.ea_time_get_slot_rounded:

00000000 <ea_time_get_slot_rounded>:
   0:	280007b7          	lui	a5,0x28000
   4:	80000737          	lui	a4,0x80000
   8:	cfd8                	sw	a4,28(a5)

0000000a <.L125>:
   a:	4fd4                	lw	a3,28(a5)

0000000c <.LBE149>:
   c:	fe06cfe3          	bltz	a3,a <.L125>
			c: R_RISCV_BRANCH	.L125

00000010 <.LBB151>:
  10:	4fd8                	lw	a4,28(a5)

00000012 <.LBB153>:
  12:	5388                	lw	a0,32(a5)

00000014 <.LBE153>:
  14:	06a53513          	sltiu	a0,a0,106
  18:	953a                	add	a0,a0,a4
  1a:	0516                	slli	a0,a0,0x5
  1c:	8115                	srli	a0,a0,0x5
  1e:	8082                	ret

Disassembly of section .text.ea_prog_timer:

00000000 <ea_prog_timer>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	c226                	sw	s1,4(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	54fd                	li	s1,-1
   e:	00040913          	mv	s2,s0
			e: R_RISCV_LO12_I	.LANCHOR0
			e: R_RISCV_RELAX	*ABS*
  12:	c606                	sw	ra,12(sp)
  14:	00992e23          	sw	s1,28(s2)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ea_time_get_slot_rounded
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <ea_prog_timer+0x18>

00000020 <.LBB177>:
  20:	00092783          	lw	a5,0(s2)

00000024 <.LBE177>:
  24:	00040413          	mv	s0,s0
			24: R_RISCV_LO12_I	.LANCHOR0
			24: R_RISCV_RELAX	*ABS*
  28:	c7d5                	beqz	a5,d4 <.L128>
			28: R_RISCV_RVC_BRANCH	.L128

0000002a <.LBB179>:
  2a:	0197c603          	lbu	a2,25(a5) # 28000019 <.LASF391+0x27ffe240>
  2e:	4798                	lw	a4,8(a5)
  30:	4414                	lw	a3,8(s0)

00000032 <.LVL142>:
  32:	8f11                	sub	a4,a4,a2
  34:	0716                	slli	a4,a4,0x5
  36:	8315                	srli	a4,a4,0x5
  38:	cc58                	sw	a4,28(s0)
  3a:	c2b9                	beqz	a3,80 <.L134>
			3a: R_RISCV_RVC_BRANCH	.L134

0000003c <.LBB180>:
  3c:	0166c603          	lbu	a2,22(a3) # 28000016 <.LASF391+0x27ffe23d>
  40:	0167c703          	lbu	a4,22(a5)
  44:	00e67863          	bgeu	a2,a4,54 <.L130>
			44: R_RISCV_BRANCH	.L130
  48:	0107d703          	lhu	a4,16(a5)
  4c:	01471613          	slli	a2,a4,0x14
  50:	06064a63          	bltz	a2,c4 <.L131>
			50: R_RISCV_BRANCH	.L131

00000054 <.L130>:
  54:	0176c703          	lbu	a4,23(a3)

00000058 <.L132>:
  58:	0197c683          	lbu	a3,25(a5)

0000005c <.LVL144>:
  5c:	02e6f263          	bgeu	a3,a4,80 <.L134>
			5c: R_RISCV_BRANCH	.L134
  60:	479c                	lw	a5,8(a5)

00000062 <.LVL145>:
  62:	8f99                	sub	a5,a5,a4
  64:	08000737          	lui	a4,0x8000

00000068 <.LVL146>:
  68:	fff70693          	addi	a3,a4,-1 # 7ffffff <.LASF391+0x7ffe226>
  6c:	8ff5                	and	a5,a5,a3
  6e:	40a78733          	sub	a4,a5,a0
  72:	8f75                	and	a4,a4,a3
  74:	040006b7          	lui	a3,0x4000
  78:	04e6e963          	bltu	a3,a4,ca <.L133>
			78: R_RISCV_BRANCH	.L133
  7c:	c739                	beqz	a4,ca <.L133>
			7c: R_RISCV_RVC_BRANCH	.L133
  7e:	cc5c                	sw	a5,28(s0)

00000080 <.L134>:
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	ea_time_get_slot_rounded
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.L134>

00000088 <.LVL148>:
  88:	4c58                	lw	a4,28(s0)
  8a:	040007b7          	lui	a5,0x4000
  8e:	17f9                	addi	a5,a5,-2
  90:	40e50733          	sub	a4,a0,a4
  94:	00e7e763          	bltu	a5,a4,a2 <.L141>
			94: R_RISCV_BRANCH	.L141
  98:	00150793          	addi	a5,a0,1
  9c:	0796                	slli	a5,a5,0x5
  9e:	8395                	srli	a5,a5,0x5
  a0:	cc5c                	sw	a5,28(s0)

000000a2 <.L141>:
  a2:	4c58                	lw	a4,28(s0)

000000a4 <.LBB182>:
  a4:	280007b7          	lui	a5,0x28000
  a8:	0ee7ac23          	sw	a4,248(a5) # 280000f8 <.LASF391+0x27ffe31f>

000000ac <.LBB184>:
  ac:	47d8                	lw	a4,12(a5)
  ae:	831d                	srli	a4,a4,0x7

000000b0 <.LBE184>:
  b0:	8b05                	andi	a4,a4,1
  b2:	ef0d                	bnez	a4,ec <.L135>
			b2: R_RISCV_RVC_BRANCH	.L135

000000b4 <.LBB186>:
  b4:	08000713          	li	a4,128
  b8:	cf98                	sw	a4,24(a5)

000000ba <.LBB188>:
  ba:	47d8                	lw	a4,12(a5)
  bc:	08076713          	ori	a4,a4,128
  c0:	c7d8                	sw	a4,12(a5)
  c2:	a02d                	j	ec <.L135>
			c2: R_RISCV_RVC_JUMP	.L135

000000c4 <.L131>:
  c4:	0186c703          	lbu	a4,24(a3) # 4000018 <.LASF391+0x3ffe23f>
  c8:	bf41                	j	58 <.L132>
			c8: R_RISCV_RVC_JUMP	.L132

000000ca <.L133>:
  ca:	0505                	addi	a0,a0,1

000000cc <.LVL156>:
  cc:	0516                	slli	a0,a0,0x5

000000ce <.LVL157>:
  ce:	8115                	srli	a0,a0,0x5
  d0:	cc48                	sw	a0,28(s0)
  d2:	b77d                	j	80 <.L134>
			d2: R_RISCV_RVC_JUMP	.L134

000000d4 <.L128>:
  d4:	4c5c                	lw	a5,28(s0)

000000d6 <.LVL159>:
  d6:	fa9795e3          	bne	a5,s1,80 <.L134>
			d6: R_RISCV_BRANCH	.L134

000000da <.LBB191>:
  da:	280007b7          	lui	a5,0x28000
  de:	47d8                	lw	a4,12(a5)
  e0:	f7f77713          	andi	a4,a4,-129
  e4:	c7d8                	sw	a4,12(a5)

000000e6 <.LBB193>:
  e6:	08000713          	li	a4,128
  ea:	cf98                	sw	a4,24(a5)

000000ec <.L135>:
  ec:	000007b7          	lui	a5,0x0
			ec: R_RISCV_HI20	.LANCHOR1
			ec: R_RISCV_RELAX	*ABS*
  f0:	0007c703          	lbu	a4,0(a5) # 0 <ea_prog_timer>
			f0: R_RISCV_LO12_I	.LANCHOR1
			f0: R_RISCV_RELAX	*ABS*
  f4:	00078693          	mv	a3,a5
			f4: R_RISCV_LO12_I	.LANCHOR1
			f4: R_RISCV_RELAX	*ABS*
  f8:	eb19                	bnez	a4,10e <.L136>
			f8: R_RISCV_RVC_BRANCH	.L136

000000fa <.L137>:
  fa:	8169                	srli	a0,a0,0x1a

000000fc <.LVL163>:
  fc:	8905                	andi	a0,a0,1
  fe:	00a68023          	sb	a0,0(a3)
 102:	40b2                	lw	ra,12(sp)
 104:	4422                	lw	s0,8(sp)
 106:	4492                	lw	s1,4(sp)
 108:	4902                	lw	s2,0(sp)
 10a:	0141                	addi	sp,sp,16
 10c:	8082                	ret

0000010e <.L136>:
 10e:	00551793          	slli	a5,a0,0x5
 112:	fe07c4e3          	bltz	a5,fa <.L137>
			112: R_RISCV_BRANCH	.L137

00000116 <.LBB195>:
 116:	4858                	lw	a4,20(s0)

00000118 <.LBE197>:
 118:	080005b7          	lui	a1,0x8000

0000011c <.L138>:
 11c:	df79                	beqz	a4,fa <.L137>
			11c: R_RISCV_RVC_BRANCH	.L137
 11e:	00475603          	lhu	a2,4(a4)
 122:	00675803          	lhu	a6,6(a4)
 126:	02c5e7b3          	rem	a5,a1,a2
 12a:	40f607b3          	sub	a5,a2,a5
 12e:	97c2                	add	a5,a5,a6
 130:	02c7e7b3          	rem	a5,a5,a2
 134:	00f71323          	sh	a5,6(a4)

00000138 <.LBB199>:
 138:	4318                	lw	a4,0(a4)

0000013a <.LVL168>:
 13a:	b7cd                	j	11c <.L138>
			13a: R_RISCV_RVC_JUMP	.L138

Disassembly of section .text.ea_elt_insert:

00000000 <ea_elt_insert>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	c686                	sw	ra,76(sp)
   6:	c2a6                	sw	s1,68(sp)
   8:	c0ca                	sw	s2,64(sp)
   a:	de4e                	sw	s3,60(sp)
   c:	dc52                	sw	s4,56(sp)
   e:	da56                	sw	s5,52(sp)
  10:	d85a                	sw	s6,48(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	d462                	sw	s8,40(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	ce6e                	sw	s11,28(sp)
  1c:	842a                	mv	s0,a0
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ea_time_get_halfslot_rounded
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <ea_elt_insert+0x1e>

00000026 <.LBB201>:
  26:	300029f3          	csrr	s3,mstatus

0000002a <.LBB203>:
  2a:	300477f3          	csrrci	a5,mstatus,8

0000002e <.LBB204>:
  2e:	00000a37          	lui	s4,0x0
			2e: R_RISCV_HI20	.LANCHOR0
			2e: R_RISCV_RELAX	*ABS*
  32:	01944783          	lbu	a5,25(s0) # 19 <ea_elt_insert+0x19>
  36:	000a0713          	mv	a4,s4
			36: R_RISCV_LO12_I	.LANCHOR0
			36: R_RISCV_RELAX	*ABS*
  3a:	4718                	lw	a4,8(a4)
  3c:	0785                	addi	a5,a5,1
  3e:	080006b7          	lui	a3,0x8000
  42:	97aa                	add	a5,a5,a0
  44:	fff68613          	addi	a2,a3,-1 # 7ffffff <.LASF391+0x7ffe226>
  48:	8ff1                	and	a5,a5,a2

0000004a <.LVL173>:
  4a:	000a0a93          	mv	s5,s4
			4a: R_RISCV_LO12_I	.LANCHOR0
			4a: R_RISCV_RELAX	*ABS*
  4e:	c30d                	beqz	a4,70 <.L151>
			4e: R_RISCV_RVC_BRANCH	.L151
  50:	01774703          	lbu	a4,23(a4)
  54:	cf11                	beqz	a4,70 <.L151>
			54: R_RISCV_RVC_BRANCH	.L151

00000056 <.LBB205>:
  56:	40a786b3          	sub	a3,a5,a0
  5a:	8ef1                	and	a3,a3,a2
  5c:	04000637          	lui	a2,0x4000
  60:	00d66463          	bltu	a2,a3,68 <.L152>
			60: R_RISCV_BRANCH	.L152
  64:	00e6d663          	bge	a3,a4,70 <.L151>
			64: R_RISCV_BRANCH	.L151

00000068 <.L152>:
  68:	00a707b3          	add	a5,a4,a0

0000006c <.LVL175>:
  6c:	0796                	slli	a5,a5,0x5
  6e:	8395                	srli	a5,a5,0x5

00000070 <.L151>:
  70:	01045b03          	lhu	s6,16(s0)
  74:	00eb5c13          	srli	s8,s6,0xe
  78:	000c0a63          	beqz	s8,8c <.L153>
			78: R_RISCV_BRANCH	.L153
  7c:	40cb5713          	srai	a4,s6,0xc
  80:	8b0d                	andi	a4,a4,3

00000082 <.LVL177>:
  82:	4685                	li	a3,1
  84:	04d71c63          	bne	a4,a3,dc <.L154>
			84: R_RISCV_BRANCH	.L154
  88:	0017e793          	ori	a5,a5,1

0000008c <.L153>:
  8c:	4418                	lw	a4,8(s0)
  8e:	080006b7          	lui	a3,0x8000
  92:	16fd                	addi	a3,a3,-1
  94:	40f70633          	sub	a2,a4,a5
  98:	8e75                	and	a2,a2,a3
  9a:	040005b7          	lui	a1,0x4000
  9e:	04c5f763          	bgeu	a1,a2,ec <.L155>
			9e: R_RISCV_BRANCH	.L155
  a2:	40e78733          	sub	a4,a5,a4
  a6:	8f75                	and	a4,a4,a3
  a8:	c331                	beqz	a4,ec <.L155>
			a8: R_RISCV_RVC_BRANCH	.L155
  aa:	040c1063          	bnez	s8,ea <.L156>
			aa: R_RISCV_BRANCH	.L156

000000ae <.L161>:
  ae:	4485                	li	s1,1

000000b0 <.L157>:
  b0:	000007b7          	lui	a5,0x0
			b0: R_RISCV_HI20	Is_ready_to_rec_auxpacket
			b0: R_RISCV_RELAX	*ABS*
  b4:	0007c783          	lbu	a5,0(a5) # 0 <ea_elt_insert>
			b4: R_RISCV_LO12_I	Is_ready_to_rec_auxpacket
			b4: R_RISCV_RELAX	*ABS*
  b8:	30099073          	csrw	mstatus,s3

000000bc <.LBE201>:
  bc:	40b6                	lw	ra,76(sp)
  be:	4426                	lw	s0,72(sp)

000000c0 <.LVL180>:
  c0:	8526                	mv	a0,s1
  c2:	4906                	lw	s2,64(sp)
  c4:	4496                	lw	s1,68(sp)
  c6:	59f2                	lw	s3,60(sp)

000000c8 <.LVL181>:
  c8:	5a62                	lw	s4,56(sp)
  ca:	5ad2                	lw	s5,52(sp)
  cc:	5b42                	lw	s6,48(sp)
  ce:	5bb2                	lw	s7,44(sp)
  d0:	5c22                	lw	s8,40(sp)
  d2:	5c92                	lw	s9,36(sp)
  d4:	5d02                	lw	s10,32(sp)
  d6:	4df2                	lw	s11,28(sp)
  d8:	6161                	addi	sp,sp,80
  da:	8082                	ret

000000dc <.L154>:
  dc:	fb45                	bnez	a4,8c <.L153>
			dc: R_RISCV_RVC_BRANCH	.L153
  de:	08000537          	lui	a0,0x8000

000000e2 <.LVL183>:
  e2:	0785                	addi	a5,a5,1

000000e4 <.LVL184>:
  e4:	1579                	addi	a0,a0,-2
  e6:	8fe9                	and	a5,a5,a0

000000e8 <.LVL185>:
  e8:	b755                	j	8c <.L153>
			e8: R_RISCV_RVC_JUMP	.L153

000000ea <.L156>:
  ea:	c41c                	sw	a5,8(s0)

000000ec <.L155>:
  ec:	4785                	li	a5,1

000000ee <.LVL187>:
  ee:	0387fa63          	bgeu	a5,s8,122 <.L158>
			ee: R_RISCV_BRANCH	.L158
  f2:	4450                	lw	a2,12(s0)
  f4:	441c                	lw	a5,8(s0)
  f6:	080006b7          	lui	a3,0x8000
  fa:	16fd                	addi	a3,a3,-1
  fc:	40f60733          	sub	a4,a2,a5
 100:	040005b7          	lui	a1,0x4000
 104:	8f75                	and	a4,a4,a3
 106:	00e5f663          	bgeu	a1,a4,112 <.L160>
			106: R_RISCV_BRANCH	.L160
 10a:	8f91                	sub	a5,a5,a2
 10c:	8ff5                	and	a5,a5,a3
 10e:	40f00733          	neg	a4,a5

00000112 <.L160>:
 112:	01245783          	lhu	a5,18(s0)
 116:	27100693          	li	a3,625
 11a:	02d7d7b3          	divu	a5,a5,a3
 11e:	f8f748e3          	blt	a4,a5,ae <.L161>
			11e: R_RISCV_BRANCH	.L161

00000122 <.L158>:
 122:	008aa483          	lw	s1,8(s5)
 126:	000aa603          	lw	a2,0(s5)
 12a:	e091                	bnez	s1,12e <.L162>
			12a: R_RISCV_RVC_BRANCH	.L162
 12c:	84b2                	mv	s1,a2

0000012e <.L162>:
 12e:	40cb5b13          	srai	s6,s6,0xc

00000132 <.LBE207>:
 132:	08000d37          	lui	s10,0x8000

00000136 <.LBB208>:
 136:	003b7b13          	andi	s6,s6,3
 13a:	4901                	li	s2,0
 13c:	4c81                	li	s9,0
 13e:	4b81                	li	s7,0

00000140 <.LBE208>:
 140:	1d7d                	addi	s10,s10,-1
 142:	4d85                	li	s11,1

00000144 <.L163>:
 144:	c4a9                	beqz	s1,18e <.L164>
			144: R_RISCV_RVC_BRANCH	.L164

00000146 <.LBB213>:
 146:	85a6                	mv	a1,s1
 148:	8522                	mv	a0,s0
 14a:	c632                	sw	a2,12(sp)
 14c:	00000097          	auipc	ra,0x0
			14c: R_RISCV_CALL	ea_conflict_check
			14c: R_RISCV_RELAX	*ABS*
 150:	000080e7          	jalr	ra # 14c <.LBB213+0x6>

00000154 <.LVL189>:
 154:	cd0d                	beqz	a0,18e <.L164>
			154: R_RISCV_RVC_BRANCH	.L164
 156:	4815                	li	a6,5
 158:	4632                	lw	a2,12(sp)
 15a:	040008b7          	lui	a7,0x4000
 15e:	27100693          	li	a3,625
 162:	0d050363          	beq	a0,a6,228 <.L165>
			162: R_RISCV_BRANCH	.L165
 166:	01644703          	lbu	a4,22(s0)
 16a:	0164c783          	lbu	a5,22(s1)
 16e:	08e7f263          	bgeu	a5,a4,1f2 <.L166>
			16e: R_RISCV_BRANCH	.L166
 172:	008aa783          	lw	a5,8(s5)
 176:	06978e63          	beq	a5,s1,1f2 <.L166>
			176: R_RISCV_BRANCH	.L166
 17a:	00091363          	bnez	s2,180 <.L167>
			17a: R_RISCV_BRANCH	.L167
 17e:	8ca6                	mv	s9,s1

00000180 <.L167>:
 180:	0905                	addi	s2,s2,1

00000182 <.LVL191>:
 182:	0fd57513          	andi	a0,a0,253

00000186 <.LVL192>:
 186:	0ff97913          	andi	s2,s2,255

0000018a <.LVL193>:
 18a:	11b51063          	bne	a0,s11,28a <.L208>
			18a: R_RISCV_BRANCH	.L208

0000018e <.L164>:
 18e:	02090d63          	beqz	s2,1c8 <.L182>
			18e: R_RISCV_BRANCH	.L182
 192:	fff90613          	addi	a2,s2,-1
 196:	0ff67613          	andi	a2,a2,255
 19a:	85e6                	mv	a1,s9
 19c:	000a0513          	mv	a0,s4
			19c: R_RISCV_LO12_I	.LANCHOR0
			19c: R_RISCV_RELAX	*ABS*
 1a0:	00000097          	auipc	ra,0x0
			1a0: R_RISCV_CALL	ble_co_list_extract
			1a0: R_RISCV_RELAX	*ABS*
 1a4:	000080e7          	jalr	ra # 1a0 <.L164+0x12>

000001a8 <.LBB217>:
 1a8:	00ca8b13          	addi	s6,s5,12

000001ac <.L178>:
 1ac:	000ca483          	lw	s1,0(s9)

000001b0 <.LVL196>:
 1b0:	197d                	addi	s2,s2,-1

000001b2 <.LVL197>:
 1b2:	85e6                	mv	a1,s9
 1b4:	855a                	mv	a0,s6
 1b6:	0ff97913          	andi	s2,s2,255
 1ba:	00000097          	auipc	ra,0x0
			1ba: R_RISCV_CALL	ble_co_list_push_back
			1ba: R_RISCV_RELAX	*ABS*
 1be:	000080e7          	jalr	ra # 1ba <.LVL197+0x8>

000001c2 <.LVL198>:
 1c2:	8ca6                	mv	s9,s1

000001c4 <.LBE217>:
 1c4:	fe0914e3          	bnez	s2,1ac <.L178>
			1c4: R_RISCV_BRANCH	.L178

000001c8 <.L182>:
 1c8:	0a0b8563          	beqz	s7,272 <.L179>
			1c8: R_RISCV_BRANCH	.L179
 1cc:	8622                	mv	a2,s0
 1ce:	85de                	mv	a1,s7
 1d0:	000a0513          	mv	a0,s4
			1d0: R_RISCV_LO12_I	.LANCHOR0
			1d0: R_RISCV_RELAX	*ABS*
 1d4:	00000097          	auipc	ra,0x0
			1d4: R_RISCV_CALL	ble_co_list_insert_after
			1d4: R_RISCV_RELAX	*ABS*
 1d8:	000080e7          	jalr	ra # 1d4 <.L182+0xc>

000001dc <.L180>:
 1dc:	00caa783          	lw	a5,12(s5)
 1e0:	4481                	li	s1,0
 1e2:	ec0787e3          	beqz	a5,b0 <.L157>
			1e2: R_RISCV_BRANCH	.L157
 1e6:	8522                	mv	a0,s0
 1e8:	00000097          	auipc	ra,0x0
			1e8: R_RISCV_CALL	ea_elt_cancel
			1e8: R_RISCV_RELAX	*ABS*
 1ec:	000080e7          	jalr	ra # 1e8 <.L180+0xc>

000001f0 <.LVL201>:
 1f0:	b5c1                	j	b0 <.L157>
			1f0: R_RISCV_RVC_JUMP	.L157

000001f2 <.L166>:
 1f2:	ea0c0ee3          	beqz	s8,ae <.L161>
			1f2: R_RISCV_BRANCH	.L161

000001f6 <.LBB209>:
 1f6:	0124d783          	lhu	a5,18(s1)
 1fa:	0144d703          	lhu	a4,20(s1)
 1fe:	448c                	lw	a1,8(s1)
 200:	973e                	add	a4,a4,a5

00000202 <.LVL203>:
 202:	02d757b3          	divu	a5,a4,a3
 206:	02d77733          	remu	a4,a4,a3

0000020a <.LVL204>:
 20a:	97ae                	add	a5,a5,a1

0000020c <.LVL205>:
 20c:	01445583          	lhu	a1,20(s0)
 210:	00e5f363          	bgeu	a1,a4,216 <.L169>
			210: R_RISCV_BRANCH	.L169
 214:	0785                	addi	a5,a5,1

00000216 <.L169>:
 216:	05bb1763          	bne	s6,s11,264 <.L170>
			216: R_RISCV_BRANCH	.L170
 21a:	0017e793          	ori	a5,a5,1

0000021e <.L171>:
 21e:	01a7f7b3          	and	a5,a5,s10

00000222 <.LVL208>:
 222:	c41c                	sw	a5,8(s0)

00000224 <.LVL209>:
 224:	4901                	li	s2,0
 226:	4c81                	li	s9,0

00000228 <.L165>:
 228:	038df563          	bgeu	s11,s8,252 <.L172>
			228: R_RISCV_BRANCH	.L172

0000022c <.L183>:
 22c:	444c                	lw	a1,12(s0)
 22e:	441c                	lw	a5,8(s0)
 230:	40f58733          	sub	a4,a1,a5
 234:	01a77733          	and	a4,a4,s10
 238:	00e8f763          	bgeu	a7,a4,246 <.L174>
			238: R_RISCV_BRANCH	.L174
 23c:	8f8d                	sub	a5,a5,a1
 23e:	01a7f7b3          	and	a5,a5,s10
 242:	40f00733          	neg	a4,a5

00000246 <.L174>:
 246:	01245783          	lhu	a5,18(s0)
 24a:	02d7d7b3          	divu	a5,a5,a3
 24e:	e6f740e3          	blt	a4,a5,ae <.L161>
			24e: R_RISCV_BRANCH	.L161

00000252 <.L172>:
 252:	008aa783          	lw	a5,8(s5)
 256:	00978c63          	beq	a5,s1,26e <.L186>
			256: R_RISCV_BRANCH	.L186

0000025a <.L184>:
 25a:	00091363          	bnez	s2,260 <.L176>
			25a: R_RISCV_BRANCH	.L176
 25e:	8ba6                	mv	s7,s1

00000260 <.L176>:
 260:	4084                	lw	s1,0(s1)

00000262 <.LBE210>:
 262:	b5cd                	j	144 <.L163>
			262: R_RISCV_RVC_JUMP	.L163

00000264 <.L170>:
 264:	fa0b1de3          	bnez	s6,21e <.L171>
			264: R_RISCV_BRANCH	.L171
 268:	0785                	addi	a5,a5,1

0000026a <.LVL215>:
 26a:	9bf9                	andi	a5,a5,-2

0000026c <.LVL216>:
 26c:	bf4d                	j	21e <.L171>
			26c: R_RISCV_RVC_JUMP	.L171

0000026e <.L186>:
 26e:	84b2                	mv	s1,a2

00000270 <.LVL218>:
 270:	bdd1                	j	144 <.L163>
			270: R_RISCV_RVC_JUMP	.L163

00000272 <.L179>:
 272:	85a2                	mv	a1,s0
 274:	000a0513          	mv	a0,s4
			274: R_RISCV_LO12_I	.LANCHOR0
			274: R_RISCV_RELAX	*ABS*
 278:	00000097          	auipc	ra,0x0
			278: R_RISCV_CALL	ble_co_list_push_front
			278: R_RISCV_RELAX	*ABS*
 27c:	000080e7          	jalr	ra # 278 <.L179+0x6>

00000280 <.LVL219>:
 280:	00000097          	auipc	ra,0x0
			280: R_RISCV_CALL	ea_prog_timer
			280: R_RISCV_RELAX	*ABS*
 284:	000080e7          	jalr	ra # 280 <.LVL219>

00000288 <.LVL220>:
 288:	bf91                	j	1dc <.L180>
			288: R_RISCV_RVC_JUMP	.L180

0000028a <.L208>:
 28a:	fb8de1e3          	bltu	s11,s8,22c <.L183>
			28a: R_RISCV_BRANCH	.L183
 28e:	b7f1                	j	25a <.L184>
			28e: R_RISCV_RVC_JUMP	.L184

Disassembly of section .text.ea_elt_remove:

00000000 <ea_elt_remove>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB225>:
   a:	30002973          	csrr	s2,mstatus

0000000e <.LBB226>:
   e:	300477f3          	csrrci	a5,mstatus,8

00000012 <.LBE226>:
  12:	e911                	bnez	a0,26 <.L212>
			12: R_RISCV_RVC_BRANCH	.L212

00000014 <.L218>:
  14:	4501                	li	a0,0

00000016 <.L213>:
  16:	30091073          	csrw	mstatus,s2

0000001a <.LBE230>:
  1a:	40b2                	lw	ra,12(sp)
  1c:	4422                	lw	s0,8(sp)
  1e:	4492                	lw	s1,4(sp)
  20:	4902                	lw	s2,0(sp)

00000022 <.LVL227>:
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

00000026 <.L212>:
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	.LANCHOR0
			26: R_RISCV_RELAX	*ABS*
  2a:	00078493          	mv	s1,a5
			2a: R_RISCV_LO12_I	.LANCHOR0
			2a: R_RISCV_RELAX	*ABS*
  2e:	4498                	lw	a4,8(s1)
  30:	00a71563          	bne	a4,a0,3a <.L214>
			30: R_RISCV_BRANCH	.L214
  34:	0004a423          	sw	zero,8(s1)
  38:	bff1                	j	14 <.L218>
			38: R_RISCV_RVC_JUMP	.L218

0000003a <.L214>:
  3a:	4098                	lw	a4,0(s1)
  3c:	842a                	mv	s0,a0

0000003e <.LBB227>:
  3e:	00e51d63          	bne	a0,a4,58 <.L215>
			3e: R_RISCV_BRANCH	.L215

00000042 <.LVL230>:
  42:	00078513          	mv	a0,a5
			42: R_RISCV_LO12_I	.LANCHOR0
			42: R_RISCV_RELAX	*ABS*
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	ble_co_list_pop_front
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL230+0x4>

0000004e <.LVL231>:
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ea_prog_timer
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL231>

00000056 <.LVL232>:
  56:	bf7d                	j	14 <.L218>
			56: R_RISCV_RVC_JUMP	.L218

00000058 <.L215>:
  58:	85aa                	mv	a1,a0
  5a:	4601                	li	a2,0
  5c:	00078513          	mv	a0,a5
			5c: R_RISCV_LO12_I	.LANCHOR0
			5c: R_RISCV_RELAX	*ABS*
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ble_co_list_extract
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.L215+0x8>

00000068 <.LVL233>:
  68:	f555                	bnez	a0,14 <.L218>
			68: R_RISCV_RVC_BRANCH	.L218
  6a:	4601                	li	a2,0
  6c:	85a2                	mv	a1,s0
  6e:	00c48513          	addi	a0,s1,12
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	ble_co_list_extract
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL233+0xa>

0000007a <.LVL234>:
  7a:	fd49                	bnez	a0,14 <.L218>
			7a: R_RISCV_RVC_BRANCH	.L218
  7c:	4509                	li	a0,2
  7e:	bf61                	j	16 <.L213>
			7e: R_RISCV_RVC_JUMP	.L213

Disassembly of section .text.ea_finetimer_isr:

00000000 <ea_finetimer_isr>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)

00000004 <.LBB237>:
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE237>:
   8:	ce4e                	sw	s3,28(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	d606                	sw	ra,44(sp)
   e:	d422                	sw	s0,40(sp)
  10:	d226                	sw	s1,36(sp)
  12:	cc52                	sw	s4,24(sp)
  14:	c85a                	sw	s6,16(sp)
  16:	c65e                	sw	s7,12(sp)

00000018 <.LBB238>:
  18:	00090793          	mv	a5,s2
			18: R_RISCV_LO12_I	.LANCHOR0
			18: R_RISCV_RELAX	*ABS*

0000001c <.LBE238>:
  1c:	4784                	lw	s1,8(a5)

0000001e <.LBB239>:
  1e:	4380                	lw	s0,0(a5)

00000020 <.LBE239>:
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ea_time_get_halfslot_rounded
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LBE239>

00000028 <.LVL237>:
  28:	8aaa                	mv	s5,a0

0000002a <.LVL238>:
  2a:	00090993          	mv	s3,s2
			2a: R_RISCV_LO12_I	.LANCHOR0
			2a: R_RISCV_RELAX	*ABS*
  2e:	c0a9                	beqz	s1,70 <.L220>
			2e: R_RISCV_RVC_BRANCH	.L220
  30:	c441                	beqz	s0,b8 <.L222>
			30: R_RISCV_RVC_BRANCH	.L222

00000032 <.LBB240>:
  32:	0164c703          	lbu	a4,22(s1)
  36:	01644783          	lbu	a5,22(s0)
  3a:	00f77863          	bgeu	a4,a5,4a <.L223>
			3a: R_RISCV_BRANCH	.L223
  3e:	01045783          	lhu	a5,16(s0)
  42:	01479713          	slli	a4,a5,0x14
  46:	0a074563          	bltz	a4,f0 <.L224>
			46: R_RISCV_BRANCH	.L224

0000004a <.L223>:
  4a:	0174c703          	lbu	a4,23(s1)

0000004e <.L225>:
  4e:	441c                	lw	a5,8(s0)
  50:	040006b7          	lui	a3,0x4000
  54:	415787b3          	sub	a5,a5,s5
  58:	0796                	slli	a5,a5,0x5
  5a:	8395                	srli	a5,a5,0x5
  5c:	00f6e463          	bltu	a3,a5,64 <.L226>
			5c: R_RISCV_BRANCH	.L226
  60:	00f74863          	blt	a4,a5,70 <.L220>
			60: R_RISCV_BRANCH	.L220

00000064 <.L226>:
  64:	509c                	lw	a5,32(s1)
  66:	c399                	beqz	a5,6c <.L227>
			66: R_RISCV_RVC_BRANCH	.L227
  68:	8526                	mv	a0,s1

0000006a <.LVL240>:
  6a:	9782                	jalr	a5

0000006c <.L227>:
  6c:	0009a423          	sw	zero,8(s3)

00000070 <.L220>:
  70:	c421                	beqz	s0,b8 <.L222>
			70: R_RISCV_RVC_BRANCH	.L222
  72:	08000a37          	lui	s4,0x8000
  76:	04000b37          	lui	s6,0x4000
  7a:	1a7d                	addi	s4,s4,-1
  7c:	1b79                	addi	s6,s6,-2
  7e:	00c98b93          	addi	s7,s3,12

00000082 <.L231>:
  82:	01944703          	lbu	a4,25(s0)
  86:	441c                	lw	a5,8(s0)
  88:	8f99                	sub	a5,a5,a4
  8a:	0147f7b3          	and	a5,a5,s4

0000008e <.LBB241>:
  8e:	41578733          	sub	a4,a5,s5
  92:	01477733          	and	a4,a4,s4

00000096 <.LBE241>:
  96:	06eb7063          	bgeu	s6,a4,f6 <.L228>
			96: R_RISCV_BRANCH	.L228
  9a:	00090513          	mv	a0,s2
			9a: R_RISCV_LO12_I	.LANCHOR0
			9a: R_RISCV_RELAX	*ABS*
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	ble_co_list_pop_front
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LBE241+0x8>

000000a6 <.LVL243>:
  a6:	85aa                	mv	a1,a0
  a8:	855e                	mv	a0,s7

000000aa <.LVL244>:
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	ble_co_list_push_back
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LVL244>

000000b2 <.LBB243>:
  b2:	0009a403          	lw	s0,0(s3)

000000b6 <.LBE243>:
  b6:	f471                	bnez	s0,82 <.L231>
			b6: R_RISCV_RVC_BRANCH	.L231

000000b8 <.L222>:
  b8:	00c9a783          	lw	a5,12(s3)
  bc:	cf81                	beqz	a5,d4 <.L233>
			bc: R_RISCV_RVC_BRANCH	.L233

000000be <.LBB247>:
  be:	280006b7          	lui	a3,0x28000
  c2:	429c                	lw	a5,0(a3)
  c4:	f0000737          	lui	a4,0xf0000
  c8:	177d                	addi	a4,a4,-1
  ca:	8ff9                	and	a5,a5,a4
  cc:	10000737          	lui	a4,0x10000
  d0:	8fd9                	or	a5,a5,a4
  d2:	c29c                	sw	a5,0(a3)

000000d4 <.L233>:
  d4:	5422                	lw	s0,40(sp)
  d6:	50b2                	lw	ra,44(sp)
  d8:	5492                	lw	s1,36(sp)

000000da <.LVL250>:
  da:	5902                	lw	s2,32(sp)
  dc:	49f2                	lw	s3,28(sp)
  de:	4a62                	lw	s4,24(sp)
  e0:	4ad2                	lw	s5,20(sp)

000000e2 <.LVL251>:
  e2:	4b42                	lw	s6,16(sp)
  e4:	4bb2                	lw	s7,12(sp)
  e6:	6145                	addi	sp,sp,48
  e8:	00000317          	auipc	t1,0x0
			e8: R_RISCV_CALL	ea_prog_timer
			e8: R_RISCV_RELAX	*ABS*
  ec:	00030067          	jr	t1 # e8 <.LVL251+0x6>

000000f0 <.L224>:
  f0:	0184c703          	lbu	a4,24(s1)
  f4:	bfa9                	j	4e <.L225>
			f4: R_RISCV_RVC_JUMP	.L225

000000f6 <.L228>:
  f6:	fd5791e3          	bne	a5,s5,b8 <.L222>
			f6: R_RISCV_BRANCH	.L222
  fa:	00090513          	mv	a0,s2
			fa: R_RISCV_LO12_I	.LANCHOR0
			fa: R_RISCV_RELAX	*ABS*
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	ble_co_list_pop_front
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.L228+0x8>

00000106 <.LVL254>:
 106:	0089a783          	lw	a5,8(s3)
 10a:	842a                	mv	s0,a0
 10c:	c789                	beqz	a5,116 <.L232>
			10c: R_RISCV_RVC_BRANCH	.L232
 10e:	539c                	lw	a5,32(a5)
 110:	c399                	beqz	a5,116 <.L232>
			110: R_RISCV_RVC_BRANCH	.L232
 112:	8526                	mv	a0,s1
 114:	9782                	jalr	a5

00000116 <.L232>:
 116:	4c5c                	lw	a5,28(s0)
 118:	0089a423          	sw	s0,8(s3)
 11c:	dfd1                	beqz	a5,b8 <.L222>
			11c: R_RISCV_RVC_BRANCH	.L222
 11e:	8522                	mv	a0,s0
 120:	9782                	jalr	a5

00000122 <.LVL257>:
 122:	bf59                	j	b8 <.L222>
			122: R_RISCV_RVC_JUMP	.L222

Disassembly of section .text.ea_timer_target_get:

00000000 <ea_timer_target_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	4798                	lw	a4,8(a5)
   a:	e311                	bnez	a4,e <.L257>
			a: R_RISCV_RVC_BRANCH	.L257
   c:	4fc8                	lw	a0,28(a5)

0000000e <.L257>:
   e:	8082                	ret

Disassembly of section .text.ea_interval_duration_req:

00000000 <ea_interval_duration_req>:
   0:	00255683          	lhu	a3,2(a0) # 8000002 <.LASF391+0x7ffe229>
   4:	00d59023          	sh	a3,0(a1) # 4000000 <.LASF391+0x3ffe227>
   8:	00055803          	lhu	a6,0(a0)
   c:	02d87c63          	bgeu	a6,a3,44 <.L259>
			c: R_RISCV_BRANCH	.L259

00000010 <.LBB250>:
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	.LANCHOR0+0x14
			10: R_RISCV_RELAX	*ABS*+0x14

00000014 <.LBE251>:
  14:	6741                	lui	a4,0x10

00000016 <.LBB254>:
  16:	0147a603          	lw	a2,20(a5) # 14 <.LBE251>
			16: R_RISCV_LO12_I	.LANCHOR0+0x14
			16: R_RISCV_RELAX	*ABS*+0x14

0000001a <.LBE254>:
  1a:	177d                	addi	a4,a4,-1
  1c:	4781                	li	a5,0

0000001e <.L260>:
  1e:	ea15                	bnez	a2,52 <.L263>
			1e: R_RISCV_RVC_BRANCH	.L263
  20:	4605                	li	a2,1

00000022 <.LVL264>:
  22:	04f66b63          	bltu	a2,a5,78 <.L264>
			22: R_RISCV_BRANCH	.L264
  26:	00a54703          	lbu	a4,10(a0)

0000002a <.LVL265>:
  2a:	cf35                	beqz	a4,a6 <.L270>
			2a: R_RISCV_RVC_BRANCH	.L270
  2c:	02e6c7b3          	div	a5,a3,a4

00000030 <.L275>:
  30:	02f707b3          	mul	a5,a4,a5

00000034 <.LVL267>:
  34:	07c2                	slli	a5,a5,0x10
  36:	83c1                	srli	a5,a5,0x10

00000038 <.L266>:
  38:	0107e663          	bltu	a5,a6,44 <.L259>
			38: R_RISCV_BRANCH	.L259

0000003c <.L265>:
  3c:	00f6e463          	bltu	a3,a5,44 <.L259>
			3c: R_RISCV_BRANCH	.L259
  40:	00f59023          	sh	a5,0(a1)

00000044 <.L259>:
  44:	415c                	lw	a5,4(a0)
  46:	4709                	li	a4,2
  48:	00e7f363          	bgeu	a5,a4,4e <.L269>
			48: R_RISCV_BRANCH	.L269
  4c:	4789                	li	a5,2

0000004e <.L269>:
  4e:	c1dc                	sw	a5,4(a1)
  50:	8082                	ret

00000052 <.L263>:
  52:	00a65303          	lhu	t1,10(a2) # 400000a <.LASF391+0x3ffe231>
  56:	01055883          	lhu	a7,16(a0)
  5a:	0785                	addi	a5,a5,1

0000005c <.LVL272>:
  5c:	0ff7f793          	andi	a5,a5,255

00000060 <.LVL273>:
  60:	01130a63          	beq	t1,a7,74 <.L261>
			60: R_RISCV_BRANCH	.L261
  64:	00465883          	lhu	a7,4(a2)
  68:	01177363          	bgeu	a4,a7,6e <.L262>
			68: R_RISCV_BRANCH	.L262
  6c:	88ba                	mv	a7,a4

0000006e <.L262>:
  6e:	01089713          	slli	a4,a7,0x10

00000072 <.LVL274>:
  72:	8341                	srli	a4,a4,0x10

00000074 <.L261>:
  74:	4210                	lw	a2,0(a2)
  76:	b765                	j	1e <.L260>
			76: R_RISCV_RVC_JUMP	.L260

00000078 <.L264>:
  78:	00e6e563          	bltu	a3,a4,82 <.L271>
			78: R_RISCV_BRANCH	.L271
  7c:	02e6d7b3          	divu	a5,a3,a4

00000080 <.LVL278>:
  80:	bf45                	j	30 <.L275>
			80: R_RISCV_RVC_JUMP	.L275

00000082 <.L271>:
  82:	67c1                	lui	a5,0x10

00000084 <.LVL280>:
  84:	8636                	mv	a2,a3
  86:	17fd                	addi	a5,a5,-1

00000088 <.L267>:
  88:	02c778b3          	remu	a7,a4,a2
  8c:	4301                	li	t1,0
  8e:	00089463          	bnez	a7,96 <.L268>
			8e: R_RISCV_BRANCH	.L268
  92:	87b2                	mv	a5,a2

00000094 <.LVL282>:
  94:	4305                	li	t1,1

00000096 <.L268>:
  96:	1679                	addi	a2,a2,-2

00000098 <.LVL284>:
  98:	0642                	slli	a2,a2,0x10
  9a:	8241                	srli	a2,a2,0x10

0000009c <.LVL285>:
  9c:	f9066ee3          	bltu	a2,a6,38 <.L266>
			9c: R_RISCV_BRANCH	.L266
  a0:	fe0304e3          	beqz	t1,88 <.L267>
			a0: R_RISCV_BRANCH	.L267
  a4:	bf51                	j	38 <.L266>
			a4: R_RISCV_RVC_JUMP	.L266

000000a6 <.L270>:
  a6:	67c1                	lui	a5,0x10

000000a8 <.LVL287>:
  a8:	17fd                	addi	a5,a5,-1
  aa:	bf49                	j	3c <.L265>
			aa: R_RISCV_RVC_JUMP	.L265
