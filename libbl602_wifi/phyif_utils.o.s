
libbl602_wifi/phyif_utils.o:     file format elf32-littleriscv


Disassembly of section .text.phyif_utils_decode:

00000000 <phyif_utils_decode>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	00655703          	lhu	a4,6(a0)
   a:	4685                	li	a3,1
   c:	842e                	mv	s0,a1
   e:	8b1d                	andi	a4,a4,7
  10:	01354783          	lbu	a5,19(a0)
  14:	02e6f763          	bgeu	a3,a4,42 <.L2>
			14: R_RISCV_BRANCH	.L2

00000018 <.L7>:
  18:	01454503          	lbu	a0,20(a0)

0000001c <.LVL2>:
  1c:	0522                	slli	a0,a0,0x8
  1e:	8d5d                	or	a0,a0,a5
  20:	0542                	slli	a0,a0,0x10
  22:	8541                	srai	a0,a0,0x10
  24:	07a00793          	li	a5,122
  28:	02f54533          	div	a0,a0,a5

0000002c <.L6>:
  2c:	d00577d3          	fcvt.s.w	fa5,a0

00000030 <.LVL4>:
  30:	40b2                	lw	ra,12(sp)
  32:	c0079553          	fcvt.w.s	a0,fa5,rtz
  36:	00a40023          	sb	a0,0(s0)
  3a:	4422                	lw	s0,8(sp)

0000003c <.LVL5>:
  3c:	4501                	li	a0,0
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

00000042 <.L2>:
  42:	4118                	lw	a4,0(a0)
  44:	468d                	li	a3,3
  46:	8331                	srli	a4,a4,0xc
  48:	8b3d                	andi	a4,a4,15
  4a:	fce6e7e3          	bltu	a3,a4,18 <.L7>
			4a: R_RISCV_BRANCH	.L7

0000004e <.LVL7>:
  4e:	01879513          	slli	a0,a5,0x18

00000052 <.LVL8>:
  52:	8561                	srai	a0,a0,0x18
  54:	40a00533          	neg	a0,a0
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	__floatsidf
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL8+0x6>

00000060 <.LVL9>:
  60:	000007b7          	lui	a5,0x0
			60: R_RISCV_HI20	.LC0
			60: R_RISCV_RELAX	*ABS*
  64:	0007a603          	lw	a2,0(a5) # 0 <phyif_utils_decode>
			64: R_RISCV_LO12_I	.LC0
			64: R_RISCV_RELAX	*ABS*
  68:	0047a683          	lw	a3,4(a5)
			68: R_RISCV_LO12_I	.LC0+0x4
			68: R_RISCV_RELAX	*ABS*+0x4
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	__muldf3
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL9+0xc>
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	__fixdfsi
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL9+0x14>
  7c:	bf45                	j	2c <.L6>
			7c: R_RISCV_RVC_JUMP	.L6
