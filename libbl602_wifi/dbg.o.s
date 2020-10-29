
dbg.o:     file format elf32-littleriscv


Disassembly of section .text.dbg_init:

00000000 <dbg_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040513          	mv	a0,s0
   c:	4621                	li	a2,8
   e:	4581                	li	a1,0
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <dbg_init+0x12>

0000001a <.LVL0>:
  1a:	00040413          	mv	s0,s0
  1e:	57fd                	li	a5,-1
  20:	c01c                	sw	a5,0(s0)
  22:	4789                	li	a5,2
  24:	c05c                	sw	a5,4(s0)
  26:	40b2                	lw	ra,12(sp)
  28:	4422                	lw	s0,8(sp)
  2a:	0141                	addi	sp,sp,16
  2c:	8082                	ret
