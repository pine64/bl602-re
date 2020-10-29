
lld_wlcoex.o:     file format elf32-littleriscv


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

Disassembly of section .text.coex_dump_ble:

00000000 <coex_dump_ble>:
   0:	00000537          	lui	a0,0x0
   4:	1141                	addi	sp,sp,-16
   6:	00050513          	mv	a0,a0
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <coex_dump_ble+0xe>

00000016 <.LBB34>:
  16:	28000437          	lui	s0,0x28000
  1a:	10042583          	lw	a1,256(s0) # 28000100 <.LASF141+0x27fff93c>

0000001e <.LBE36>:
  1e:	00000537          	lui	a0,0x0
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LBE36+0x8>

0000002e <.LBB38>:
  2e:	10042403          	lw	s0,256(s0)

00000032 <.LBE38>:
  32:	00000537          	lui	a0,0x0
  36:	00050513          	mv	a0,a0

0000003a <.LBB52>:
  3a:	01845593          	srli	a1,s0,0x18

0000003e <.LBE52>:
  3e:	898d                	andi	a1,a1,3
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LBE52+0x2>

00000048 <.LBB53>:
  48:	01445593          	srli	a1,s0,0x14

0000004c <.LBE53>:
  4c:	00000537          	lui	a0,0x0
  50:	898d                	andi	a1,a1,3
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LBE53+0xa>

0000005e <.LBB54>:
  5e:	01045593          	srli	a1,s0,0x10

00000062 <.LBE54>:
  62:	00000537          	lui	a0,0x0
  66:	898d                	andi	a1,a1,3
  68:	00050513          	mv	a0,a0
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LBE54+0xa>

00000074 <.LBB55>:
  74:	00e45593          	srli	a1,s0,0xe

00000078 <.LBE55>:
  78:	00000537          	lui	a0,0x0
  7c:	898d                	andi	a1,a1,3
  7e:	00050513          	mv	a0,a0
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LBE55+0xa>

0000008a <.LBB56>:
  8a:	00c45593          	srli	a1,s0,0xc

0000008e <.LBE56>:
  8e:	00000537          	lui	a0,0x0
  92:	898d                	andi	a1,a1,3
  94:	00050513          	mv	a0,a0
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LBE56+0xa>

000000a0 <.LBB57>:
  a0:	00a45593          	srli	a1,s0,0xa

000000a4 <.LBE57>:
  a4:	00000537          	lui	a0,0x0
  a8:	898d                	andi	a1,a1,3
  aa:	00050513          	mv	a0,a0
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.LBE57+0xa>

000000b6 <.LBB58>:
  b6:	00845593          	srli	a1,s0,0x8

000000ba <.LBE58>:
  ba:	00000537          	lui	a0,0x0
  be:	898d                	andi	a1,a1,3
  c0:	00050513          	mv	a0,a0
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LBE58+0xa>

000000cc <.LBB59>:
  cc:	00645593          	srli	a1,s0,0x6

000000d0 <.LBE59>:
  d0:	00000537          	lui	a0,0x0
  d4:	898d                	andi	a1,a1,3
  d6:	00050513          	mv	a0,a0
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.LBE59+0xa>

000000e2 <.LBB60>:
  e2:	00445593          	srli	a1,s0,0x4

000000e6 <.LBE60>:
  e6:	00000537          	lui	a0,0x0
  ea:	898d                	andi	a1,a1,3
  ec:	00050513          	mv	a0,a0
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LBE60+0xa>

000000f8 <.LBB61>:
  f8:	00345593          	srli	a1,s0,0x3

000000fc <.LBE61>:
  fc:	00000537          	lui	a0,0x0
 100:	8985                	andi	a1,a1,1
 102:	00050513          	mv	a0,a0
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.LBE61+0xa>

0000010e <.LBB62>:
 10e:	00245593          	srli	a1,s0,0x2

00000112 <.LBE62>:
 112:	00000537          	lui	a0,0x0
 116:	8985                	andi	a1,a1,1
 118:	00050513          	mv	a0,a0
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LBE62+0xa>

00000124 <.LBB63>:
 124:	00145593          	srli	a1,s0,0x1

00000128 <.LBE63>:
 128:	00000537          	lui	a0,0x0
 12c:	8985                	andi	a1,a1,1
 12e:	00050513          	mv	a0,a0
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LBE63+0xa>

0000013a <.LVL18>:
 13a:	00147593          	andi	a1,s0,1

0000013e <.LBE34>:
 13e:	4422                	lw	s0,8(sp)

00000140 <.LVL19>:
 140:	40b2                	lw	ra,12(sp)

00000142 <.LBB67>:
 142:	00000537          	lui	a0,0x0

00000146 <.LBB68>:
 146:	00050513          	mv	a0,a0

0000014a <.LBE68>:
 14a:	0141                	addi	sp,sp,16

0000014c <.LBB69>:
 14c:	00000317          	auipc	t1,0x0
 150:	00030067          	jr	t1 # 14c <.LBB69>
