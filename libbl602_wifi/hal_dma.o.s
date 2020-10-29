
libbl602_wifi/hal_dma.o:     file format elf32-littleriscv


Disassembly of section .text.hal_dma_init:

00000000 <hal_dma_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	hal_dma_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040513          	mv	a0,s0
			8: R_RISCV_LO12_I	hal_dma_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	c226                	sw	s1,4(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	co_list_init
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <hal_dma_init+0x10>

00000018 <.LBB16>:
  18:	44a004b7          	lui	s1,0x44a00
  1c:	0a44a783          	lw	a5,164(s1) # 44a000a4 <.LASF60+0x449ff3cc>

00000020 <.LBE16>:
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	hal_dma_env+0x8
			20: R_RISCV_RELAX	*ABS*+0x8
  24:	00040413          	mv	s0,s0
			24: R_RISCV_LO12_I	hal_dma_env
			24: R_RISCV_RELAX	*ABS*
  28:	00850513          	addi	a0,a0,8 # 8 <hal_dma_init+0x8>
			28: R_RISCV_LO12_I	hal_dma_env+0x8
			28: R_RISCV_RELAX	*ABS*+0x8
  2c:	00f41c23          	sh	a5,24(s0) # 18 <.LBB16>

00000030 <.LVL3>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	co_list_init
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL3>

00000038 <.LBB19>:
  38:	0ac4a783          	lw	a5,172(s1)

0000003c <.LBE19>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4492                	lw	s1,4(sp)
  40:	00f41d23          	sh	a5,26(s0)

00000044 <.LVL6>:
  44:	4422                	lw	s0,8(sp)
  46:	0141                	addi	sp,sp,16
  48:	8082                	ret

Disassembly of section .text.hal_dma_push:

00000000 <hal_dma_push>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	451c                	lw	a5,8(a0)
   a:	84ae                	mv	s1,a1
   c:	4140                	lw	s0,4(a0)

0000000e <.LVL8>:
   e:	cbbd                	beqz	a5,84 <.L4>
			e: R_RISCV_RVC_BRANCH	.L4
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	.LANCHOR0
			10: R_RISCV_RELAX	*ABS*
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	97ae                	add	a5,a5,a1
  1a:	0007c783          	lbu	a5,0(a5) # 0 <hal_dma_push>
  1e:	0107e713          	ori	a4,a5,16
  22:	07a2                	slli	a5,a5,0x8
  24:	8fd9                	or	a5,a5,a4
  26:	6705                	lui	a4,0x1
  28:	8fd9                	or	a5,a5,a4
  2a:	00f41523          	sh	a5,10(s0)

0000002e <.LBB20>:
  2e:	30047073          	csrci	mstatus,8

00000032 <.LBE20>:
  32:	00359793          	slli	a5,a1,0x3
  36:	85aa                	mv	a1,a0

00000038 <.LVL9>:
  38:	00000537          	lui	a0,0x0
			38: R_RISCV_HI20	hal_dma_env
			38: R_RISCV_RELAX	*ABS*

0000003c <.LVL10>:
  3c:	00050513          	mv	a0,a0
			3c: R_RISCV_LO12_I	hal_dma_env
			3c: R_RISCV_RELAX	*ABS*
  40:	953e                	add	a0,a0,a5
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	co_list_push_back
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL10+0x6>

0000004a <.LBB22>:
  4a:	30046073          	csrsi	mstatus,8

0000004e <.L5>:
  4e:	00845603          	lhu	a2,8(s0)
  52:	400c                	lw	a1,0(s0)
  54:	4048                	lw	a0,4(s0)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	memcpy
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.L5+0x8>

0000005e <.LVL12>:
  5e:	c495                	beqz	s1,8a <.L6>
			5e: R_RISCV_RVC_BRANCH	.L6
  60:	4785                	li	a5,1
  62:	02f48e63          	beq	s1,a5,9e <.L7>
			62: R_RISCV_BRANCH	.L7
  66:	00000437          	lui	s0,0x0
			66: R_RISCV_HI20	.LC0
			66: R_RISCV_RELAX	*ABS*

0000006a <.L8>:
  6a:	3e800513          	li	a0,1000
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	vTaskDelay
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L8+0x4>

00000076 <.LVL14>:
  76:	00040513          	mv	a0,s0
			76: R_RISCV_LO12_I	.LC0
			76: R_RISCV_RELAX	*ABS*
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	puts
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL14+0x4>

00000082 <.LVL15>:
  82:	b7e5                	j	6a <.L8>
			82: R_RISCV_RVC_JUMP	.L8

00000084 <.L4>:
  84:	00041523          	sh	zero,10(s0) # a <hal_dma_push+0xa>
  88:	b7d9                	j	4e <.L5>
			88: R_RISCV_RVC_JUMP	.L5

0000008a <.L6>:
  8a:	04000513          	li	a0,64

0000008e <.L10>:
  8e:	4422                	lw	s0,8(sp)

00000090 <.LVL18>:
  90:	40b2                	lw	ra,12(sp)
  92:	4492                	lw	s1,4(sp)

00000094 <.LVL19>:
  94:	0141                	addi	sp,sp,16
  96:	00000317          	auipc	t1,0x0
			96: R_RISCV_CALL	ke_evt_set
			96: R_RISCV_RELAX	*ABS*
  9a:	00030067          	jr	t1 # 96 <.LVL19+0x2>

0000009e <.L7>:
  9e:	10000537          	lui	a0,0x10000
  a2:	b7f5                	j	8e <.L10>
			a2: R_RISCV_RVC_JUMP	.L10

Disassembly of section .text.hal_dma_evt:

00000000 <hal_dma_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	84aa                	mv	s1,a0
   a:	ed0d                	bnez	a0,44 <.L12>
			a: R_RISCV_RVC_BRANCH	.L12
   c:	04000513          	li	a0,64

00000010 <.L21>:
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_evt_clear
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.L21>

00000018 <.LBB24>:
  18:	30047073          	csrci	mstatus,8

0000001c <.LBE24>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	hal_dma_env
			1c: R_RISCV_RELAX	*ABS*
  20:	00349413          	slli	s0,s1,0x3
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	hal_dma_env
			24: R_RISCV_RELAX	*ABS*
  28:	943e                	add	s0,s0,a5

0000002a <.L22>:
  2a:	8522                	mv	a0,s0
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	co_list_pop_front
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.L22+0x2>

00000034 <.LBB26>:
  34:	30046073          	csrsi	mstatus,8

00000038 <.LBE26>:
  38:	e909                	bnez	a0,4a <.L16>
			38: R_RISCV_RVC_BRANCH	.L16
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)
  3e:	4492                	lw	s1,4(sp)

00000040 <.LVL25>:
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

00000044 <.L12>:
  44:	10000537          	lui	a0,0x10000
  48:	b7e1                	j	10 <.L21>
			48: R_RISCV_RVC_JUMP	.L21

0000004a <.L16>:
  4a:	451c                	lw	a5,8(a0)
  4c:	c781                	beqz	a5,54 <.L15>
			4c: R_RISCV_RVC_BRANCH	.L15
  4e:	4548                	lw	a0,12(a0)

00000050 <.LVL28>:
  50:	85a6                	mv	a1,s1
  52:	9782                	jalr	a5

00000054 <.L15>:
  54:	30047073          	csrci	mstatus,8
  58:	bfc9                	j	2a <.L22>
			58: R_RISCV_RVC_JUMP	.L22
