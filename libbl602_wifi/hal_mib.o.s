
libbl602_wifi/hal_mib.o:     file format elf32-littleriscv


Disassembly of section .text.hal_mib_dump:

00000000 <hal_mib_dump>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	.LC0
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00050513          	mv	a0,a0
			6: R_RISCV_LO12_I	.LC0
			6: R_RISCV_RELAX	*ABS*
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	puts
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <hal_mib_dump+0xc>

00000014 <.LVL0>:
  14:	000007b7          	lui	a5,0x0
			14: R_RISCV_HI20	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	0007a783          	lw	a5,0(a5) # 0 <hal_mib_dump>
			18: R_RISCV_LO12_I	.LANCHOR0
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC1
			1c: R_RISCV_RELAX	*ABS*
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LC1
			20: R_RISCV_RELAX	*ABS*
  24:	47cc                	lw	a1,12(a5)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	printf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL0+0x12>

0000002e <.LVL1>:
  2e:	40b2                	lw	ra,12(sp)
  30:	00000537          	lui	a0,0x0
			30: R_RISCV_HI20	.LC2
			30: R_RISCV_RELAX	*ABS*
  34:	00050513          	mv	a0,a0
			34: R_RISCV_LO12_I	.LC2
			34: R_RISCV_RELAX	*ABS*
  38:	0141                	addi	sp,sp,16
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	puts
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL1+0xc>
