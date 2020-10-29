
intc.o:     file format elf32-littleriscv


Disassembly of section .text.intc_spurious:

00000000 <intc_spurious>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0
   8:	03600613          	li	a2,54
   c:	00058593          	mv	a1,a1
  10:	00050513          	mv	a0,a0
  14:	00000317          	auipc	t1,0x0
  18:	00030067          	jr	t1 # 14 <intc_spurious+0x14>

Disassembly of section .text.intc_enable_irq:

00000000 <intc_enable_irq>:
   0:	4785                	li	a5,1

00000002 <.LBB11>:
   2:	11244737          	lui	a4,0x11244

00000006 <.LBE11>:
   6:	00a797b3          	sll	a5,a5,a0

0000000a <.LBB15>:
   a:	0711                	addi	a4,a4,4

0000000c <.LBE15>:
   c:	8515                	srai	a0,a0,0x5

0000000e <.LBB16>:
   e:	953a                	add	a0,a0,a4

00000010 <.LVL4>:
  10:	050a                	slli	a0,a0,0x2

00000012 <.LVL5>:
  12:	c11c                	sw	a5,0(a0)

00000014 <.LBE16>:
  14:	8082                	ret

Disassembly of section .text.intc_init:

00000000 <intc_init>:
   0:	1141                	addi	sp,sp,-16
   2:	03f00513          	li	a0,63
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <intc_init+0x8>

00000010 <.LVL7>:
  10:	03e00513          	li	a0,62
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL7+0x4>

0000001c <.LVL8>:
  1c:	03d00513          	li	a0,61
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL8+0x4>

00000028 <.LVL9>:
  28:	4561                	li	a0,24
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL9+0x2>

00000032 <.LVL10>:
  32:	4565                	li	a0,25
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL10+0x2>

0000003c <.LVL11>:
  3c:	4569                	li	a0,26
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL11+0x2>

00000046 <.LVL12>:
  46:	456d                	li	a0,27
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL12+0x2>

00000050 <.LVL13>:
  50:	4571                	li	a0,28
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL13+0x2>

0000005a <.LVL14>:
  5a:	4575                	li	a0,29
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL14+0x2>

00000064 <.LVL15>:
  64:	4579                	li	a0,30
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL15+0x2>

0000006e <.LVL16>:
  6e:	457d                	li	a0,31
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL16+0x2>

00000078 <.LVL17>:
  78:	02000513          	li	a0,32
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL17+0x4>

00000084 <.LVL18>:
  84:	02100513          	li	a0,33
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.LVL18+0x4>

00000090 <.LVL19>:
  90:	02300513          	li	a0,35
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL19+0x4>

0000009c <.LVL20>:
  9c:	03700513          	li	a0,55
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL20+0x4>

000000a8 <.LVL21>:
  a8:	03500513          	li	a0,53
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL21+0x4>

000000b4 <.LVL22>:
  b4:	03200513          	li	a0,50
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.LVL22+0x4>

000000c0 <.LVL23>:
  c0:	03400513          	li	a0,52
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL23+0x4>

000000cc <.LVL24>:
  cc:	03600513          	li	a0,54
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.LVL24+0x4>

000000d8 <.LVL25>:
  d8:	4529                	li	a0,10
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.LVL25+0x2>

000000e2 <.LVL26>:
  e2:	40b2                	lw	ra,12(sp)
  e4:	452d                	li	a0,11
  e6:	0141                	addi	sp,sp,16
  e8:	00000317          	auipc	t1,0x0
  ec:	00030067          	jr	t1 # e8 <.LVL26+0x6>

Disassembly of section .text.mac_irq:

00000000 <mac_irq>:
   0:	449107b7          	lui	a5,0x44910
   4:	4398                	lw	a4,0(a5)

00000006 <.LBE17>:
   6:	e319                	bnez	a4,c <.L6>

00000008 <.LBB19>:
   8:	43dc                	lw	a5,4(a5)

0000000a <.LBE19>:
   a:	c7b1                	beqz	a5,56 <.L5>

0000000c <.L6>:
   c:	1141                	addi	sp,sp,-16
   e:	c422                	sw	s0,8(sp)
  10:	c606                	sw	ra,12(sp)

00000012 <.LBB25>:
  12:	449107b7          	lui	a5,0x44910
  16:	43bc                	lw	a5,64(a5)

00000018 <.LBE25>:
  18:	00279713          	slli	a4,a5,0x2
  1c:	000007b7          	lui	a5,0x0

00000020 <.LVL33>:
  20:	00078793          	mv	a5,a5
  24:	97ba                	add	a5,a5,a4
  26:	4380                	lw	s0,0(a5)
  28:	ec19                	bnez	s0,46 <.L8>
  2a:	000005b7          	lui	a1,0x0
  2e:	00000537          	lui	a0,0x0
  32:	09d00613          	li	a2,157
  36:	00058593          	mv	a1,a1
  3a:	00050513          	mv	a0,a0
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL33+0x1e>

00000046 <.L8>:
  46:	9402                	jalr	s0

00000048 <.LBE26>:
  48:	4422                	lw	s0,8(sp)
  4a:	40b2                	lw	ra,12(sp)
  4c:	0141                	addi	sp,sp,16

0000004e <.LBB27>:
  4e:	00000317          	auipc	t1,0x0
  52:	00030067          	jr	t1 # 4e <.LBB27>

00000056 <.L5>:
  56:	8082                	ret

Disassembly of section .text.bl_irq_handler:

00000000 <bl_irq_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <bl_irq_handler+0x4>

0000000c <.LVL37>:
   c:	40000537          	lui	a0,0x40000
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL37+0x4>

00000018 <.LVL38>:
  18:	40b2                	lw	ra,12(sp)
  1a:	0141                	addi	sp,sp,16
  1c:	00000317          	auipc	t1,0x0
  20:	00030067          	jr	t1 # 1c <.LVL38+0x4>
