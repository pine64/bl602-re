
libblecontroller/lld_wlcoex.o:     file format elf32-littleriscv


Disassembly of section .text.lld_wlcoex_set:

00000000 <lld_wlcoex_set>:
   0:	280007b7          	lui	a5,0x28000
   4:	5bf8                	lw	a4,116(a5)
   6:	ffe106b7          	lui	a3,0xffe10
   a:	16fd                	addi	a3,a3,-1
   c:	8f75                	and	a4,a4,a3
   e:	dbf8                	sw	a4,116(a5)

00000010 <.LBB18>:
  10:	1007a703          	lw	a4,256(a5) # 28000100 <.LASF141+0x27fff93c>

00000014 <.LBE18>:
  14:	c909                	beqz	a0,26 <.L2>
			14: R_RISCV_RVC_BRANCH	.L2

00000016 <.LBB21>:
  16:	002206b7          	lui	a3,0x220
  1a:	0f368693          	addi	a3,a3,243 # 2200f3 <.LASF141+0x21f92f>
  1e:	8f55                	or	a4,a4,a3

00000020 <.L4>:
  20:	10e7a023          	sw	a4,256(a5)

00000024 <.LBE24>:
  24:	8082                	ret

00000026 <.L2>:
  26:	ffde06b7          	lui	a3,0xffde0
  2a:	f0c68693          	addi	a3,a3,-244 # ffddff0c <.LASF141+0xffddf748>
  2e:	8f75                	and	a4,a4,a3
  30:	bfc5                	j	20 <.L4>
			30: R_RISCV_RVC_JUMP	.L4

Disassembly of section .text.coex_dump_ble:

00000000 <coex_dump_ble>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	.LC0
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00050513          	mv	a0,a0
			6: R_RISCV_LO12_I	.LC0
			6: R_RISCV_RELAX	*ABS*
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	puts
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <coex_dump_ble+0xe>

00000016 <.LBB34>:
  16:	28000437          	lui	s0,0x28000
  1a:	10042583          	lw	a1,256(s0) # 28000100 <.LASF141+0x27fff93c>

0000001e <.LBE36>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC1
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC1
			22: R_RISCV_RELAX	*ABS*
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	printf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBE36+0x8>

0000002e <.LBB38>:
  2e:	10042403          	lw	s0,256(s0)

00000032 <.LBE38>:
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	.LC2
			32: R_RISCV_RELAX	*ABS*
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC2
			36: R_RISCV_RELAX	*ABS*

0000003a <.LBB52>:
  3a:	01845593          	srli	a1,s0,0x18

0000003e <.LBE52>:
  3e:	898d                	andi	a1,a1,3
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	printf
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LBE52+0x2>

00000048 <.LBB53>:
  48:	01445593          	srli	a1,s0,0x14

0000004c <.LBE53>:
  4c:	00000537          	lui	a0,0x0
			4c: R_RISCV_HI20	.LC3
			4c: R_RISCV_RELAX	*ABS*
  50:	898d                	andi	a1,a1,3
  52:	00050513          	mv	a0,a0
			52: R_RISCV_LO12_I	.LC3
			52: R_RISCV_RELAX	*ABS*
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	printf
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LBE53+0xa>

0000005e <.LBB54>:
  5e:	01045593          	srli	a1,s0,0x10

00000062 <.LBE54>:
  62:	00000537          	lui	a0,0x0
			62: R_RISCV_HI20	.LC4
			62: R_RISCV_RELAX	*ABS*
  66:	898d                	andi	a1,a1,3
  68:	00050513          	mv	a0,a0
			68: R_RISCV_LO12_I	.LC4
			68: R_RISCV_RELAX	*ABS*
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	printf
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE54+0xa>

00000074 <.LBB55>:
  74:	00e45593          	srli	a1,s0,0xe

00000078 <.LBE55>:
  78:	00000537          	lui	a0,0x0
			78: R_RISCV_HI20	.LC5
			78: R_RISCV_RELAX	*ABS*
  7c:	898d                	andi	a1,a1,3
  7e:	00050513          	mv	a0,a0
			7e: R_RISCV_LO12_I	.LC5
			7e: R_RISCV_RELAX	*ABS*
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	printf
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LBE55+0xa>

0000008a <.LBB56>:
  8a:	00c45593          	srli	a1,s0,0xc

0000008e <.LBE56>:
  8e:	00000537          	lui	a0,0x0
			8e: R_RISCV_HI20	.LC6
			8e: R_RISCV_RELAX	*ABS*
  92:	898d                	andi	a1,a1,3
  94:	00050513          	mv	a0,a0
			94: R_RISCV_LO12_I	.LC6
			94: R_RISCV_RELAX	*ABS*
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	printf
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LBE56+0xa>

000000a0 <.LBB57>:
  a0:	00a45593          	srli	a1,s0,0xa

000000a4 <.LBE57>:
  a4:	00000537          	lui	a0,0x0
			a4: R_RISCV_HI20	.LC7
			a4: R_RISCV_RELAX	*ABS*
  a8:	898d                	andi	a1,a1,3
  aa:	00050513          	mv	a0,a0
			aa: R_RISCV_LO12_I	.LC7
			aa: R_RISCV_RELAX	*ABS*
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	printf
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LBE57+0xa>

000000b6 <.LBB58>:
  b6:	00845593          	srli	a1,s0,0x8

000000ba <.LBE58>:
  ba:	00000537          	lui	a0,0x0
			ba: R_RISCV_HI20	.LC8
			ba: R_RISCV_RELAX	*ABS*
  be:	898d                	andi	a1,a1,3
  c0:	00050513          	mv	a0,a0
			c0: R_RISCV_LO12_I	.LC8
			c0: R_RISCV_RELAX	*ABS*
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	printf
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LBE58+0xa>

000000cc <.LBB59>:
  cc:	00645593          	srli	a1,s0,0x6

000000d0 <.LBE59>:
  d0:	00000537          	lui	a0,0x0
			d0: R_RISCV_HI20	.LC9
			d0: R_RISCV_RELAX	*ABS*
  d4:	898d                	andi	a1,a1,3
  d6:	00050513          	mv	a0,a0
			d6: R_RISCV_LO12_I	.LC9
			d6: R_RISCV_RELAX	*ABS*
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	printf
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.LBE59+0xa>

000000e2 <.LBB60>:
  e2:	00445593          	srli	a1,s0,0x4

000000e6 <.LBE60>:
  e6:	00000537          	lui	a0,0x0
			e6: R_RISCV_HI20	.LC10
			e6: R_RISCV_RELAX	*ABS*
  ea:	898d                	andi	a1,a1,3
  ec:	00050513          	mv	a0,a0
			ec: R_RISCV_LO12_I	.LC10
			ec: R_RISCV_RELAX	*ABS*
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	printf
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.LBE60+0xa>

000000f8 <.LBB61>:
  f8:	00345593          	srli	a1,s0,0x3

000000fc <.LBE61>:
  fc:	00000537          	lui	a0,0x0
			fc: R_RISCV_HI20	.LC11
			fc: R_RISCV_RELAX	*ABS*
 100:	8985                	andi	a1,a1,1
 102:	00050513          	mv	a0,a0
			102: R_RISCV_LO12_I	.LC11
			102: R_RISCV_RELAX	*ABS*
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	printf
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LBE61+0xa>

0000010e <.LBB62>:
 10e:	00245593          	srli	a1,s0,0x2

00000112 <.LBE62>:
 112:	00000537          	lui	a0,0x0
			112: R_RISCV_HI20	.LC12
			112: R_RISCV_RELAX	*ABS*
 116:	8985                	andi	a1,a1,1
 118:	00050513          	mv	a0,a0
			118: R_RISCV_LO12_I	.LC12
			118: R_RISCV_RELAX	*ABS*
 11c:	00000097          	auipc	ra,0x0
			11c: R_RISCV_CALL	printf
			11c: R_RISCV_RELAX	*ABS*
 120:	000080e7          	jalr	ra # 11c <.LBE62+0xa>

00000124 <.LBB63>:
 124:	00145593          	srli	a1,s0,0x1

00000128 <.LBE63>:
 128:	00000537          	lui	a0,0x0
			128: R_RISCV_HI20	.LC13
			128: R_RISCV_RELAX	*ABS*
 12c:	8985                	andi	a1,a1,1
 12e:	00050513          	mv	a0,a0
			12e: R_RISCV_LO12_I	.LC13
			12e: R_RISCV_RELAX	*ABS*
 132:	00000097          	auipc	ra,0x0
			132: R_RISCV_CALL	printf
			132: R_RISCV_RELAX	*ABS*
 136:	000080e7          	jalr	ra # 132 <.LBE63+0xa>

0000013a <.LVL18>:
 13a:	00147593          	andi	a1,s0,1

0000013e <.LBE34>:
 13e:	4422                	lw	s0,8(sp)

00000140 <.LVL19>:
 140:	40b2                	lw	ra,12(sp)

00000142 <.LBB67>:
 142:	00000537          	lui	a0,0x0
			142: R_RISCV_HI20	.LC14
			142: R_RISCV_RELAX	*ABS*

00000146 <.LBB68>:
 146:	00050513          	mv	a0,a0
			146: R_RISCV_LO12_I	.LC14
			146: R_RISCV_RELAX	*ABS*

0000014a <.LBE68>:
 14a:	0141                	addi	sp,sp,16

0000014c <.LBB69>:
 14c:	00000317          	auipc	t1,0x0
			14c: R_RISCV_CALL	printf
			14c: R_RISCV_RELAX	*ABS*
 150:	00030067          	jr	t1 # 14c <.LBB69>
