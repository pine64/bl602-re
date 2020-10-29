
libbl602_wifi/bl_buf.o:     file format elf32-littleriscv


Disassembly of section .text.wpabuf_alloc:

00000000 <wpabuf_alloc>:
   0:	1101                	addi	sp,sp,-32
   2:	00c50613          	addi	a2,a0,12
   6:	ca26                	sw	s1,20(sp)
   8:	84aa                	mv	s1,a0
   a:	8532                	mv	a0,a2

0000000c <.LVL1>:
   c:	cc22                	sw	s0,24(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c632                	sw	a2,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	pvPortMalloc
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL1+0x6>

0000001a <.LVL2>:
  1a:	842a                	mv	s0,a0

0000001c <.LVL3>:
  1c:	c901                	beqz	a0,2c <.L1>
			1c: R_RISCV_RVC_BRANCH	.L1
  1e:	4632                	lw	a2,12(sp)
  20:	4581                	li	a1,0
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	memset
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL3+0x6>

0000002a <.LVL4>:
  2a:	c004                	sw	s1,0(s0)

0000002c <.L1>:
  2c:	8522                	mv	a0,s0
  2e:	40f2                	lw	ra,28(sp)
  30:	4462                	lw	s0,24(sp)

00000032 <.LVL5>:
  32:	44d2                	lw	s1,20(sp)

00000034 <.LVL6>:
  34:	6105                	addi	sp,sp,32

00000036 <.LVL7>:
  36:	8082                	ret

Disassembly of section .text.wpabuf_free:

00000000 <wpabuf_free>:
   0:	c115                	beqz	a0,24 <.L7>
			0: R_RISCV_RVC_BRANCH	.L7
   2:	1141                	addi	sp,sp,-16
   4:	c422                	sw	s0,8(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842a                	mv	s0,a0
   a:	4508                	lw	a0,8(a0)

0000000c <.LVL9>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	vPortFree
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL9>

00000014 <.LVL10>:
  14:	8522                	mv	a0,s0
  16:	4422                	lw	s0,8(sp)

00000018 <.LVL11>:
  18:	40b2                	lw	ra,12(sp)
  1a:	0141                	addi	sp,sp,16
  1c:	00000317          	auipc	t1,0x0
			1c: R_RISCV_CALL	vPortFree
			1c: R_RISCV_RELAX	*ABS*
  20:	00030067          	jr	t1 # 1c <.LVL11+0x4>

00000024 <.L7>:
  24:	8082                	ret

Disassembly of section .text.wpabuf_put:

00000000 <wpabuf_put>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB17>:
   6:	451c                	lw	a5,8(a0)
   8:	e399                	bnez	a5,e <.L13>
			8: R_RISCV_RVC_BRANCH	.L13
   a:	00c50793          	addi	a5,a0,12

0000000e <.L13>:
   e:	4154                	lw	a3,4(a0)
  10:	4110                	lw	a2,0(a0)
  12:	00d78433          	add	s0,a5,a3

00000016 <.LVL16>:
  16:	96ae                	add	a3,a3,a1
  18:	c154                	sw	a3,4(a0)
  1a:	00d67c63          	bgeu	a2,a3,32 <.L12>
			1a: R_RISCV_BRANCH	.L12
  1e:	872e                	mv	a4,a1
  20:	85aa                	mv	a1,a0

00000022 <.LBB18>:
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL18>:
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	printf
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL18+0x4>

00000032 <.L12>:
  32:	8522                	mv	a0,s0
  34:	40b2                	lw	ra,12(sp)
  36:	4422                	lw	s0,8(sp)

00000038 <.LVL20>:
  38:	0141                	addi	sp,sp,16
  3a:	8082                	ret
