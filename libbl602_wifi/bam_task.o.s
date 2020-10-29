
bam_task.o:     file format elf32-littleriscv


Disassembly of section .text.rxu_mgt_ind_handler:

00000000 <rxu_mgt_ind_handler>:
   0:	01d5c703          	lbu	a4,29(a1)
   4:	ef71                	bnez	a4,e0 <.L9>

00000006 <.LBB11>:
   6:	1101                	addi	sp,sp,-32
   8:	c452                	sw	s4,8(sp)

0000000a <.LVL1>:
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c256                	sw	s5,4(sp)

00000016 <.LBB12>:
  16:	0205c403          	lbu	s0,32(a1)
  1a:	01f5c683          	lbu	a3,31(a1)

0000001e <.LVL2>:
  1e:	00000a37          	lui	s4,0x0
  22:	0422                	slli	s0,s0,0x8
  24:	8c55                	or	s0,s0,a3

00000026 <.LBE12>:
  26:	00147793          	andi	a5,s0,1
  2a:	0075c483          	lbu	s1,7(a1)

0000002e <.LBB15>:
  2e:	01e5c903          	lbu	s2,30(a1)

00000032 <.LBB17>:
  32:	000a0593          	mv	a1,s4

00000036 <.LVL5>:
  36:	c789                	beqz	a5,40 <.L3>
  38:	000005b7          	lui	a1,0x0
  3c:	00058593          	mv	a1,a1

00000040 <.L3>:
  40:	00000ab7          	lui	s5,0x0
  44:	00247793          	andi	a5,s0,2
  48:	000a8613          	mv	a2,s5

0000004c <.LVL6>:
  4c:	e789                	bnez	a5,56 <.L4>
  4e:	00000637          	lui	a2,0x0
  52:	00060613          	mv	a2,a2

00000056 <.L4>:
  56:	00645993          	srli	s3,s0,0x6
  5a:	40245693          	srai	a3,s0,0x2
  5e:	00000537          	lui	a0,0x0

00000062 <.LVL7>:
  62:	8abd                	andi	a3,a3,15
  64:	874e                	mv	a4,s3
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL7+0x8>

00000072 <.LVL8>:
  72:	47a1                	li	a5,8
  74:	86ce                	mv	a3,s3
  76:	0137f363          	bgeu	a5,s3,7c <.L5>
  7a:	46a1                	li	a3,8

0000007c <.L5>:
  7c:	06c2                	slli	a3,a3,0x10
  7e:	82c1                	srli	a3,a3,0x10
  80:	03e47413          	andi	s0,s0,62

00000084 <.LVL9>:
  84:	00246413          	ori	s0,s0,2
  88:	069a                	slli	a3,a3,0x6
  8a:	8ec1                	or	a3,a3,s0
  8c:	06c2                	slli	a3,a3,0x10
  8e:	86c1                	srai	a3,a3,0x10
  90:	01069413          	slli	s0,a3,0x10
  94:	8041                	srli	s0,s0,0x10

00000096 <.LVL10>:
  96:	8689                	srai	a3,a3,0x2
  98:	00000537          	lui	a0,0x0
  9c:	00645713          	srli	a4,s0,0x6
  a0:	000a8613          	mv	a2,s5
  a4:	000a0593          	mv	a1,s4
  a8:	8abd                	andi	a3,a3,15
  aa:	00050513          	mv	a0,a0
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.LVL10+0x18>

000000b6 <.LVL11>:
  b6:	8526                	mv	a0,s1
  b8:	8722                	mv	a4,s0
  ba:	86ca                	mv	a3,s2
  bc:	4801                	li	a6,0
  be:	4781                	li	a5,0
  c0:	4605                	li	a2,1
  c2:	4581                	li	a1,0
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL11+0xe>

000000cc <.LBE18>:
  cc:	40f2                	lw	ra,28(sp)
  ce:	4462                	lw	s0,24(sp)

000000d0 <.LVL13>:
  d0:	44d2                	lw	s1,20(sp)

000000d2 <.LVL14>:
  d2:	4942                	lw	s2,16(sp)

000000d4 <.LVL15>:
  d4:	49b2                	lw	s3,12(sp)

000000d6 <.LVL16>:
  d6:	4a22                	lw	s4,8(sp)
  d8:	4a92                	lw	s5,4(sp)
  da:	4501                	li	a0,0
  dc:	6105                	addi	sp,sp,32
  de:	8082                	ret

000000e0 <.L9>:
  e0:	4501                	li	a0,0

000000e2 <.LVL18>:
  e2:	8082                	ret
