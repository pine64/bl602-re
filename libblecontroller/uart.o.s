
libblecontroller/uart.o:     file format elf32-littleriscv


Disassembly of section .text.read_data:

00000000 <read_data>:
   0:	00000737          	lui	a4,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00070713          	mv	a4,a4
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	4f50                	lw	a2,28(a4)

0000000a <.LVL1>:
   a:	4501                	li	a0,0
   c:	c61d                	beqz	a2,3a <.L2>
			c: R_RISCV_RVC_BRANCH	.L2

0000000e <.LBB5>:
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	.LANCHOR1
			e: R_RISCV_RELAX	*ABS*
  12:	0007a783          	lw	a5,0(a5) # 0 <read_data>
			12: R_RISCV_LO12_I	.LANCHOR1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LBE5>:
  16:	4f0c                	lw	a1,24(a4)

00000018 <.LBB9>:
  18:	08478813          	addi	a6,a5,132

0000001c <.LBE9>:
  1c:	08c78693          	addi	a3,a5,140
  20:	4781                	li	a5,0

00000022 <.L3>:
  22:	00082703          	lw	a4,0(a6)
  26:	0ff7f513          	andi	a0,a5,255

0000002a <.LVL3>:
  2a:	8321                	srli	a4,a4,0x8

0000002c <.LBE10>:
  2c:	03f77713          	andi	a4,a4,63
  30:	c709                	beqz	a4,3a <.L2>
			30: R_RISCV_RVC_BRANCH	.L2
  32:	0ff7f713          	andi	a4,a5,255
  36:	00b76363          	bltu	a4,a1,3c <.L4>
			36: R_RISCV_BRANCH	.L4

0000003a <.L2>:
  3a:	8082                	ret

0000003c <.L4>:
  3c:	4288                	lw	a0,0(a3)

0000003e <.LVL6>:
  3e:	00f60733          	add	a4,a2,a5
  42:	0785                	addi	a5,a5,1

00000044 <.LVL7>:
  44:	00a70023          	sb	a0,0(a4) # 0 <read_data>

00000048 <.LVL8>:
  48:	bfe9                	j	22 <.L3>
			48: R_RISCV_RVC_JUMP	.L3

Disassembly of section .text.write_data:

00000000 <write_data>:
   0:	cd19                	beqz	a0,1e <.L9>
			0: R_RISCV_RVC_BRANCH	.L9
   2:	cd91                	beqz	a1,1e <.L9>
			2: R_RISCV_RVC_BRANCH	.L9

00000004 <.LBB13>:
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	0007a783          	lw	a5,0(a5) # 0 <write_data>
			8: R_RISCV_LO12_I	.LANCHOR1
			8: R_RISCV_RELAX	*ABS*
   c:	95aa                	add	a1,a1,a0

0000000e <.LVL10>:
   e:	08878793          	addi	a5,a5,136

00000012 <.L11>:
  12:	00054703          	lbu	a4,0(a0)
  16:	0505                	addi	a0,a0,1

00000018 <.LVL12>:
  18:	c398                	sw	a4,0(a5)

0000001a <.LVL13>:
  1a:	fea59ce3          	bne	a1,a0,12 <.L11>
			1a: R_RISCV_BRANCH	.L11

0000001e <.L9>:
  1e:	8082                	ret

Disassembly of section .text.read_fifo_data:

00000000 <read_fifo_data>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x1c
			0: R_RISCV_RELAX	*ABS*+0x1c
   4:	01c7a803          	lw	a6,28(a5) # 1c <.LBE21>
			4: R_RISCV_LO12_I	.LANCHOR0+0x1c
			4: R_RISCV_RELAX	*ABS*+0x1c

00000008 <.LVL16>:
   8:	4601                	li	a2,0
   a:	02080663          	beqz	a6,36 <.L20>
			a: R_RISCV_BRANCH	.L20

0000000e <.LBB17>:
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	.LANCHOR1
			e: R_RISCV_RELAX	*ABS*
  12:	0007a783          	lw	a5,0(a5) # 0 <read_fifo_data>
			12: R_RISCV_LO12_I	.LANCHOR1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LBE17>:
  16:	4681                	li	a3,0

00000018 <.LBB21>:
  18:	08478893          	addi	a7,a5,132

0000001c <.LBE21>:
  1c:	08c78713          	addi	a4,a5,140

00000020 <.L21>:
  20:	0008a783          	lw	a5,0(a7)
  24:	0ff6f593          	andi	a1,a3,255
  28:	862e                	mv	a2,a1

0000002a <.LVL18>:
  2a:	83a1                	srli	a5,a5,0x8

0000002c <.LBE22>:
  2c:	03f7f793          	andi	a5,a5,63
  30:	c399                	beqz	a5,36 <.L20>
			30: R_RISCV_RVC_BRANCH	.L20
  32:	00a5e463          	bltu	a1,a0,3a <.L22>
			32: R_RISCV_BRANCH	.L22

00000036 <.L20>:
  36:	8532                	mv	a0,a2

00000038 <.LVL20>:
  38:	8082                	ret

0000003a <.L22>:
  3a:	4310                	lw	a2,0(a4)
  3c:	00d807b3          	add	a5,a6,a3
  40:	0685                	addi	a3,a3,1

00000042 <.LVL22>:
  42:	00c78023          	sb	a2,0(a5)

00000046 <.LVL23>:
  46:	bfe9                	j	20 <.L21>
			46: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.uart_hw_rx_flow_ctl_en:

00000000 <uart_hw_rx_flow_ctl_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_hw_rx_flow_ctl_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	43d4                	lw	a3,4(a5)

0000000a <.LVL25>:
   a:	0026e713          	ori	a4,a3,2
   e:	c119                	beqz	a0,14 <.L29>
			e: R_RISCV_RVC_BRANCH	.L29
  10:	ffd6f713          	andi	a4,a3,-3

00000014 <.L29>:
  14:	c3d8                	sw	a4,4(a5)
  16:	8082                	ret

Disassembly of section .text.uart_rx_func_en:

00000000 <uart_rx_func_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_rx_func_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	43d4                	lw	a3,4(a5)

0000000a <.LVL28>:
   a:	ffe6f713          	andi	a4,a3,-2
   e:	c119                	beqz	a0,14 <.L33>
			e: R_RISCV_RVC_BRANCH	.L33
  10:	0016e713          	ori	a4,a3,1

00000014 <.L33>:
  14:	c3d8                	sw	a4,4(a5)
  16:	8082                	ret

Disassembly of section .text.uart_hw_tx_flow_ctl_en:

00000000 <uart_hw_tx_flow_ctl_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_hw_tx_flow_ctl_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	4394                	lw	a3,0(a5)

0000000a <.LVL31>:
   a:	ffd6f713          	andi	a4,a3,-3
   e:	c119                	beqz	a0,14 <.L37>
			e: R_RISCV_RVC_BRANCH	.L37
  10:	0026e713          	ori	a4,a3,2

00000014 <.L37>:
  14:	c398                	sw	a4,0(a5)
  16:	8082                	ret

Disassembly of section .text.uart_tx_func_en:

00000000 <uart_tx_func_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_tx_func_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	4394                	lw	a3,0(a5)

0000000a <.LVL34>:
   a:	ffe6f713          	andi	a4,a3,-2
   e:	c119                	beqz	a0,14 <.L41>
			e: R_RISCV_RVC_BRANCH	.L41
  10:	0016e713          	ori	a4,a3,1

00000014 <.L41>:
  14:	c398                	sw	a4,0(a5)
  16:	8082                	ret

Disassembly of section .text.uart_tx_isr_en:

00000000 <uart_tx_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a683          	lw	a3,0(a5) # 0 <uart_tx_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	52d8                	lw	a4,36(a3)
   a:	56dc                	lw	a5,44(a3)
   c:	e519                	bnez	a0,1a <.L44>
			c: R_RISCV_RVC_BRANCH	.L44
   e:	00176713          	ori	a4,a4,1
  12:	9bf9                	andi	a5,a5,-2

00000014 <.L45>:
  14:	d2d8                	sw	a4,36(a3)
  16:	d6dc                	sw	a5,44(a3)
  18:	8082                	ret

0000001a <.L44>:
  1a:	9b79                	andi	a4,a4,-2
  1c:	0017e793          	ori	a5,a5,1
  20:	bfd5                	j	14 <.L45>
			20: R_RISCV_RVC_JUMP	.L45

Disassembly of section .text.uart_rx_isr_en:

00000000 <uart_rx_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a683          	lw	a3,0(a5) # 0 <uart_rx_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	52d8                	lw	a4,36(a3)
   a:	56dc                	lw	a5,44(a3)
   c:	e519                	bnez	a0,1a <.L47>
			c: R_RISCV_RVC_BRANCH	.L47
   e:	00276713          	ori	a4,a4,2
  12:	9bf5                	andi	a5,a5,-3

00000014 <.L48>:
  14:	d2d8                	sw	a4,36(a3)
  16:	d6dc                	sw	a5,44(a3)
  18:	8082                	ret

0000001a <.L47>:
  1a:	9b75                	andi	a4,a4,-3
  1c:	0027e793          	ori	a5,a5,2
  20:	bfd5                	j	14 <.L48>
			20: R_RISCV_RVC_JUMP	.L48

Disassembly of section .text.uart_tx_fifo_isr_en:

00000000 <uart_tx_fifo_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_tx_fifo_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	53d4                	lw	a3,36(a5)
   a:	57d8                	lw	a4,44(a5)
   c:	e519                	bnez	a0,1a <.L50>
			c: R_RISCV_RVC_BRANCH	.L50
   e:	0046e693          	ori	a3,a3,4
  12:	9b6d                	andi	a4,a4,-5

00000014 <.L51>:
  14:	d3d4                	sw	a3,36(a5)
  16:	d7d8                	sw	a4,44(a5)
  18:	8082                	ret

0000001a <.L50>:
  1a:	0847a603          	lw	a2,132(a5)

0000001e <.LVL56>:
  1e:	ffe10537          	lui	a0,0xffe10

00000022 <.LVL57>:
  22:	157d                	addi	a0,a0,-1
  24:	8e69                	and	a2,a2,a0

00000026 <.LVL58>:
  26:	05c2                	slli	a1,a1,0x10

00000028 <.LVL59>:
  28:	007f0537          	lui	a0,0x7f0
  2c:	8de9                	and	a1,a1,a0
  2e:	8dd1                	or	a1,a1,a2

00000030 <.LVL60>:
  30:	08b7a223          	sw	a1,132(a5)
  34:	9aed                	andi	a3,a3,-5
  36:	00476713          	ori	a4,a4,4
  3a:	bfe9                	j	14 <.L51>
			3a: R_RISCV_RVC_JUMP	.L51

Disassembly of section .text.uart_rx_fifo_isr_en:

00000000 <uart_rx_fifo_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_rx_fifo_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	53d4                	lw	a3,36(a5)
   a:	57d8                	lw	a4,44(a5)
   c:	e519                	bnez	a0,1a <.L53>
			c: R_RISCV_RVC_BRANCH	.L53
   e:	0086e693          	ori	a3,a3,8
  12:	9b5d                	andi	a4,a4,-9

00000014 <.L54>:
  14:	d3d4                	sw	a3,36(a5)
  16:	d7d8                	sw	a4,44(a5)
  18:	8082                	ret

0000001a <.L53>:
  1a:	0847a603          	lw	a2,132(a5)

0000001e <.LVL69>:
  1e:	e1000537          	lui	a0,0xe1000

00000022 <.LVL70>:
  22:	157d                	addi	a0,a0,-1
  24:	8e69                	and	a2,a2,a0

00000026 <.LVL71>:
  26:	05e2                	slli	a1,a1,0x18

00000028 <.LVL72>:
  28:	7f000537          	lui	a0,0x7f000
  2c:	8de9                	and	a1,a1,a0
  2e:	8dd1                	or	a1,a1,a2

00000030 <.LVL73>:
  30:	08b7a223          	sw	a1,132(a5)
  34:	9add                	andi	a3,a3,-9
  36:	00876713          	ori	a4,a4,8
  3a:	bfe9                	j	14 <.L54>
			3a: R_RISCV_RVC_JUMP	.L54

Disassembly of section .text.uart_rx_rto_isr_en:

00000000 <uart_rx_rto_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a683          	lw	a3,0(a5) # 0 <uart_rx_rto_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	52d8                	lw	a4,36(a3)
   a:	56dc                	lw	a5,44(a3)
   c:	e519                	bnez	a0,1a <.L56>
			c: R_RISCV_RVC_BRANCH	.L56
   e:	01076713          	ori	a4,a4,16
  12:	9bbd                	andi	a5,a5,-17

00000014 <.L57>:
  14:	d2d8                	sw	a4,36(a3)
  16:	d6dc                	sw	a5,44(a3)
  18:	8082                	ret

0000001a <.L56>:
  1a:	9b3d                	andi	a4,a4,-17
  1c:	0107e793          	ori	a5,a5,16
  20:	bfd5                	j	14 <.L57>
			20: R_RISCV_RVC_JUMP	.L57

Disassembly of section .text.uart_rx_parity_isr_en:

00000000 <uart_rx_parity_isr_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a683          	lw	a3,0(a5) # 0 <uart_rx_parity_isr_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	52d8                	lw	a4,36(a3)
   a:	56dc                	lw	a5,44(a3)
   c:	e901                	bnez	a0,1c <.L59>
			c: R_RISCV_RVC_BRANCH	.L59
   e:	02076713          	ori	a4,a4,32
  12:	fdf7f793          	andi	a5,a5,-33

00000016 <.L60>:
  16:	d2d8                	sw	a4,36(a3)
  18:	d6dc                	sw	a5,44(a3)
  1a:	8082                	ret

0000001c <.L59>:
  1c:	fdf77713          	andi	a4,a4,-33
  20:	0207e793          	ori	a5,a5,32
  24:	bfcd                	j	16 <.L60>
			24: R_RISCV_RVC_JUMP	.L60

Disassembly of section .text.uart_sw_rx_flow_ctl_en:

00000000 <uart_sw_rx_flow_ctl_en>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	4501                	li	a0,0

00000008 <.LVL91>:
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	uart_hw_rx_flow_ctl_en
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL91+0x2>

00000012 <.LVL92>:
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	.LANCHOR1
			12: R_RISCV_RELAX	*ABS*
  16:	0007a783          	lw	a5,0(a5) # 0 <uart_sw_rx_flow_ctl_en>
			16: R_RISCV_LO12_I	.LANCHOR1
			16: R_RISCV_RELAX	*ABS*
  1a:	43d4                	lw	a3,4(a5)

0000001c <.LVL93>:
  1c:	ffb6f713          	andi	a4,a3,-5
  20:	e019                	bnez	s0,26 <.L63>
			20: R_RISCV_RVC_BRANCH	.L63
  22:	0046e713          	ori	a4,a3,4

00000026 <.L63>:
  26:	c3d8                	sw	a4,4(a5)
  28:	40b2                	lw	ra,12(sp)
  2a:	4422                	lw	s0,8(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.uart_deg_en:

00000000 <uart_deg_en>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_deg_en>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	6685                	lui	a3,0x1
   a:	80068693          	addi	a3,a3,-2048 # 800 <.LASF216+0x5>
   e:	43d8                	lw	a4,4(a5)

00000010 <.LVL96>:
  10:	0532                	slli	a0,a0,0xc

00000012 <.LVL97>:
  12:	8f55                	or	a4,a4,a3
  14:	c3d8                	sw	a4,4(a5)
  16:	43d8                	lw	a4,4(a5)
  18:	76c5                	lui	a3,0xffff1
  1a:	16fd                	addi	a3,a3,-1
  1c:	8f75                	and	a4,a4,a3

0000001e <.LVL100>:
  1e:	8d59                	or	a0,a0,a4

00000020 <.LVL101>:
  20:	c3c8                	sw	a0,4(a5)
  22:	8082                	ret

Disassembly of section .text.uart_init:

00000000 <uart_init>:
   0:	1101                	addi	sp,sp,-32
   2:	000005b7          	lui	a1,0x0
			2: R_RISCV_HI20	.LANCHOR2
			2: R_RISCV_RELAX	*ABS*
   6:	cc22                	sw	s0,24(sp)
   8:	4641                	li	a2,16
   a:	842a                	mv	s0,a0
   c:	00058593          	mv	a1,a1
			c: R_RISCV_LO12_I	.LANCHOR2
			c: R_RISCV_RELAX	*ABS*
  10:	850a                	mv	a0,sp

00000012 <.LVL103>:
  12:	ce06                	sw	ra,28(sp)
  14:	ca26                	sw	s1,20(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	memcpy
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL103+0x4>

0000001e <.LVL104>:
  1e:	e85d                	bnez	s0,d4 <.L69>
			1e: R_RISCV_RVC_BRANCH	.L69
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	.LANCHOR3
			20: R_RISCV_RELAX	*ABS*
  24:	00078023          	sb	zero,0(a5) # 0 <uart_init>
			24: R_RISCV_LO12_S	.LANCHOR3
			24: R_RISCV_RELAX	*ABS*
  28:	4000a737          	lui	a4,0x4000a
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	.LANCHOR1
			2c: R_RISCV_RELAX	*ABS*
  30:	00e7a023          	sw	a4,0(a5) # 0 <uart_init>
			30: R_RISCV_LO12_S	.LANCHOR1
			30: R_RISCV_RELAX	*ABS*

00000034 <.LVL105>:
  34:	02d00493          	li	s1,45

00000038 <.L70>:
  38:	460d                	li	a2,3
  3a:	4585                	li	a1,1
  3c:	4505                	li	a0,1
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	GLB_Set_UART_CLK
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L70+0x6>

00000046 <.LVL107>:
  46:	026267b7          	lui	a5,0x2626
  4a:	000005b7          	lui	a1,0x0
			4a: R_RISCV_HI20	uart_isr
			4a: R_RISCV_RELAX	*ABS*
  4e:	a0078793          	addi	a5,a5,-1536 # 2625a00 <.LASF223+0x26249f0>
  52:	00058593          	mv	a1,a1
			52: R_RISCV_LO12_I	uart_isr
			52: R_RISCV_RELAX	*ABS*
  56:	8526                	mv	a0,s1
  58:	c03e                	sw	a5,0(sp)
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	bl_irq_register
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL107+0x14>

00000062 <.LVL108>:
  62:	8526                	mv	a0,s1
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	bl_irq_enable
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL108+0x2>

0000006c <.LVL109>:
  6c:	4605                	li	a2,1
  6e:	45a1                	li	a1,8
  70:	8522                	mv	a0,s0
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	UART_IntMask
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL109+0x6>

0000007a <.LVL110>:
  7a:	000007b7          	lui	a5,0x0
			7a: R_RISCV_HI20	.LANCHOR1
			7a: R_RISCV_RELAX	*ABS*
  7e:	0007a783          	lw	a5,0(a5) # 0 <uart_init>
			7e: R_RISCV_LO12_I	.LANCHOR1
			7e: R_RISCV_RELAX	*ABS*
  82:	4589                	li	a1,2
  84:	8522                	mv	a0,s0
  86:	0207a623          	sw	zero,44(a5)
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	UART_Disable
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.LVL110+0x10>

00000092 <.LVL111>:
  92:	858a                	mv	a1,sp
  94:	8522                	mv	a0,s0
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	UART_Init
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LVL111+0x4>

0000009e <.LVL112>:
  9e:	4581                	li	a1,0
  a0:	8522                	mv	a0,s0
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	UART_TxFreeRun
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL112+0x4>

000000aa <.LVL113>:
  aa:	4521                	li	a0,8
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	uart_deg_en
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL113+0x2>

000000b4 <.LVL114>:
  b4:	4589                	li	a1,2
  b6:	8522                	mv	a0,s0
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	UART_Enable
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL114+0x4>

000000c0 <.LVL115>:
  c0:	4505                	li	a0,1
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	uart_tx_isr_en
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL115+0x2>

000000ca <.LVL116>:
  ca:	40f2                	lw	ra,28(sp)
  cc:	4462                	lw	s0,24(sp)
  ce:	44d2                	lw	s1,20(sp)

000000d0 <.LVL117>:
  d0:	6105                	addi	sp,sp,32
  d2:	8082                	ret

000000d4 <.L69>:
  d4:	4785                	li	a5,1
  d6:	02f41163          	bne	s0,a5,f8 <.L71>
			d6: R_RISCV_BRANCH	.L71
  da:	000007b7          	lui	a5,0x0
			da: R_RISCV_HI20	.LANCHOR3
			da: R_RISCV_RELAX	*ABS*
  de:	00878023          	sb	s0,0(a5) # 0 <uart_init>
			de: R_RISCV_LO12_S	.LANCHOR3
			de: R_RISCV_RELAX	*ABS*
  e2:	4000a7b7          	lui	a5,0x4000a
  e6:	00000737          	lui	a4,0x0
			e6: R_RISCV_HI20	.LANCHOR1
			e6: R_RISCV_RELAX	*ABS*
  ea:	10078793          	addi	a5,a5,256 # 4000a100 <.LASF223+0x400090f0>
  ee:	00f72023          	sw	a5,0(a4) # 0 <uart_init>
			ee: R_RISCV_LO12_S	.LANCHOR1
			ee: R_RISCV_RELAX	*ABS*

000000f2 <.LVL118>:
  f2:	02e00493          	li	s1,46
  f6:	b789                	j	38 <.L70>
			f6: R_RISCV_RVC_JUMP	.L70

000000f8 <.L71>:
  f8:	a001                	j	f8 <.L71>
			f8: R_RISCV_RVC_JUMP	.L71

Disassembly of section .text.uart_flow_on:

00000000 <uart_flow_on>:
   0:	8082                	ret

Disassembly of section .text.uart_flow_off:

00000000 <uart_flow_off>:
   0:	4505                	li	a0,1
   2:	8082                	ret

Disassembly of section .text.uart_finish_transfers:

00000000 <uart_finish_transfers>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	uart_hw_rx_flow_ctl_en
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <uart_finish_transfers+0x6>

0000000e <.LBB27>:
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	.LANCHOR1
			e: R_RISCV_RELAX	*ABS*
  12:	0007a783          	lw	a5,0(a5) # 0 <uart_finish_transfers>
			12: R_RISCV_LO12_I	.LANCHOR1
			12: R_RISCV_RELAX	*ABS*

00000016 <.LBE27>:
  16:	40b2                	lw	ra,12(sp)

00000018 <.LBB30>:
  18:	0847a783          	lw	a5,132(a5)

0000001c <.LBE30>:
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

Disassembly of section .text.uart_read:

00000000 <uart_read>:
   0:	c531                	beqz	a0,4c <.L78>
			0: R_RISCV_RVC_BRANCH	.L78
   2:	c5a9                	beqz	a1,4c <.L78>
			2: R_RISCV_RVC_BRANCH	.L78
   4:	c621                	beqz	a2,4c <.L78>
			4: R_RISCV_RVC_BRANCH	.L78
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	cb90                	sw	a2,16(a5)
  10:	cbd4                	sw	a3,20(a5)
  12:	cf8c                	sw	a1,24(a5)
  14:	cfc8                	sw	a0,28(a5)
  16:	000007b7          	lui	a5,0x0
			16: R_RISCV_HI20	.LANCHOR1
			16: R_RISCV_RELAX	*ABS*
  1a:	0007a603          	lw	a2,0(a5) # 0 <uart_read>
			1a: R_RISCV_LO12_I	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL123>:
  1e:	fff58693          	addi	a3,a1,-1

00000022 <.LVL124>:
  22:	425c                	lw	a5,4(a2)

00000024 <.LVL125>:
  24:	01079713          	slli	a4,a5,0x10
  28:	8341                	srli	a4,a4,0x10
  2a:	01069793          	slli	a5,a3,0x10

0000002e <.LVL126>:
  2e:	8fd9                	or	a5,a5,a4

00000030 <.LVL127>:
  30:	c25c                	sw	a5,4(a2)
  32:	08000793          	li	a5,128

00000036 <.LVL128>:
  36:	00b7e963          	bltu	a5,a1,48 <.L80>
			36: R_RISCV_BRANCH	.L80
  3a:	0ff6f593          	andi	a1,a3,255

0000003e <.L90>:
  3e:	4505                	li	a0,1

00000040 <.LVL130>:
  40:	00000317          	auipc	t1,0x0
			40: R_RISCV_CALL	uart_rx_fifo_isr_en
			40: R_RISCV_RELAX	*ABS*
  44:	00030067          	jr	t1 # 40 <.LVL130>

00000048 <.L80>:
  48:	45c1                	li	a1,16

0000004a <.LVL132>:
  4a:	bfd5                	j	3e <.L90>
			4a: R_RISCV_RVC_JUMP	.L90

0000004c <.L78>:
  4c:	8082                	ret

Disassembly of section .text.uart_write:

00000000 <uart_write>:
   0:	c155                	beqz	a0,a4 <.L91>
			0: R_RISCV_RVC_BRANCH	.L91
   2:	c1cd                	beqz	a1,a4 <.L91>
			2: R_RISCV_RVC_BRANCH	.L91
   4:	c245                	beqz	a2,a4 <.L91>
			4: R_RISCV_RVC_BRANCH	.L91
   6:	1101                	addi	sp,sp,-32
   8:	c84a                	sw	s2,16(sp)
   a:	00000937          	lui	s2,0x0
			a: R_RISCV_HI20	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	ca26                	sw	s1,20(sp)
  10:	00090913          	mv	s2,s2
			10: R_RISCV_LO12_I	.LANCHOR0
			10: R_RISCV_RELAX	*ABS*
  14:	84aa                	mv	s1,a0
  16:	4501                	li	a0,0

00000018 <.LVL135>:
  18:	cc22                	sw	s0,24(sp)
  1a:	c64e                	sw	s3,12(sp)
  1c:	842e                	mv	s0,a1
  1e:	00d92223          	sw	a3,4(s2) # 4 <uart_write+0x4>
  22:	ce06                	sw	ra,28(sp)
  24:	00c92023          	sw	a2,0(s2)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	uart_tx_func_en
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL135+0x10>

00000030 <.LVL136>:
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	.LANCHOR1
			30: R_RISCV_RELAX	*ABS*
  34:	0007a703          	lw	a4,0(a5) # 0 <uart_write>
			34: R_RISCV_LO12_I	.LANCHOR1
			34: R_RISCV_RELAX	*ABS*
  38:	431c                	lw	a5,0(a4)

0000003a <.LVL137>:
  3a:	01079693          	slli	a3,a5,0x10
  3e:	fff40793          	addi	a5,s0,-1

00000042 <.LVL138>:
  42:	82c1                	srli	a3,a3,0x10
  44:	07c2                	slli	a5,a5,0x10
  46:	8fd5                	or	a5,a5,a3

00000048 <.LVL139>:
  48:	c31c                	sw	a5,0(a4)

0000004a <.LBB33>:
  4a:	08472983          	lw	s3,132(a4)

0000004e <.LBE33>:
  4e:	03f9f993          	andi	s3,s3,63

00000052 <.LVL141>:
  52:	0289e963          	bltu	s3,s0,84 <.L93>
			52: R_RISCV_BRANCH	.L93
  56:	85a2                	mv	a1,s0
  58:	8526                	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	write_data
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL141+0x8>

00000062 <.LVL142>:
  62:	4581                	li	a1,0
  64:	4501                	li	a0,0

00000066 <.L107>:
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	uart_tx_fifo_isr_en
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.L107>

0000006e <.LVL144>:
  6e:	4462                	lw	s0,24(sp)
  70:	40f2                	lw	ra,28(sp)
  72:	44d2                	lw	s1,20(sp)
  74:	4942                	lw	s2,16(sp)
  76:	49b2                	lw	s3,12(sp)
  78:	4505                	li	a0,1
  7a:	6105                	addi	sp,sp,32
  7c:	00000317          	auipc	t1,0x0
			7c: R_RISCV_CALL	uart_tx_func_en
			7c: R_RISCV_RELAX	*ABS*
  80:	00030067          	jr	t1 # 7c <.LVL144+0xe>

00000084 <.L93>:
  84:	8526                	mv	a0,s1
  86:	85ce                	mv	a1,s3
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	write_data
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.L93+0x4>

00000090 <.LVL146>:
  90:	41340433          	sub	s0,s0,s3

00000094 <.LVL147>:
  94:	94ce                	add	s1,s1,s3

00000096 <.LVL148>:
  96:	00892423          	sw	s0,8(s2)
  9a:	00992623          	sw	s1,12(s2)
  9e:	45c1                	li	a1,16
  a0:	4505                	li	a0,1
  a2:	b7d1                	j	66 <.L107>
			a2: R_RISCV_RVC_JUMP	.L107

000000a4 <.L91>:
  a4:	8082                	ret

Disassembly of section .text.uart_read_blocking:

00000000 <uart_read_blocking>:
   0:	c131                	beqz	a0,44 <.L122>
			0: R_RISCV_RVC_BRANCH	.L122
   2:	c1a9                	beqz	a1,44 <.L122>
			2: R_RISCV_RVC_BRANCH	.L122
   4:	1101                	addi	sp,sp,-32
   6:	cc22                	sw	s0,24(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	842a                	mv	s0,a0
  10:	00000937          	lui	s2,0x0
			10: R_RISCV_HI20	.LANCHOR1
			10: R_RISCV_RELAX	*ABS*

00000014 <.L110>:
  14:	00090493          	mv	s1,s2
			14: R_RISCV_LO12_I	.LANCHOR1
			14: R_RISCV_RELAX	*ABS*
  18:	0004c503          	lbu	a0,0(s1)
  1c:	c62e                	sw	a1,12(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	UART_GetRxFifoCount
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.L110+0xa>

00000026 <.LVL152>:
  26:	45b2                	lw	a1,12(sp)
  28:	d575                	beqz	a0,14 <.L110>
			28: R_RISCV_RVC_BRANCH	.L110
  2a:	409c                	lw	a5,0(s1)
  2c:	15fd                	addi	a1,a1,-1
  2e:	08c7a783          	lw	a5,140(a5)
  32:	00f40023          	sb	a5,0(s0)

00000036 <.LVL153>:
  36:	fdf9                	bnez	a1,14 <.L110>
			36: R_RISCV_RVC_BRANCH	.L110
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)

0000003c <.LVL154>:
  3c:	44d2                	lw	s1,20(sp)
  3e:	4942                	lw	s2,16(sp)
  40:	6105                	addi	sp,sp,32
  42:	8082                	ret

00000044 <.L122>:
  44:	8082                	ret

Disassembly of section .text.uart_write_blocking:

00000000 <uart_write_blocking>:
   0:	c91d                	beqz	a0,36 <.L125>
			0: R_RISCV_RVC_BRANCH	.L125
   2:	c995                	beqz	a1,36 <.L125>
			2: R_RISCV_RVC_BRANCH	.L125
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	0007a783          	lw	a5,0(a5) # 0 <uart_write_blocking>
			8: R_RISCV_LO12_I	.LANCHOR1
			8: R_RISCV_RELAX	*ABS*
   c:	95aa                	add	a1,a1,a0

0000000e <.LVL157>:
   e:	4398                	lw	a4,0(a5)

00000010 <.LVL158>:
  10:	00576713          	ori	a4,a4,5

00000014 <.LVL159>:
  14:	c398                	sw	a4,0(a5)

00000016 <.L128>:
  16:	0847a703          	lw	a4,132(a5)
  1a:	08478693          	addi	a3,a5,132
  1e:	03f77713          	andi	a4,a4,63
  22:	db75                	beqz	a4,16 <.L128>
			22: R_RISCV_RVC_BRANCH	.L128
  24:	00054703          	lbu	a4,0(a0) # 7f000000 <.LASF223+0x7effeff0>
  28:	0505                	addi	a0,a0,1

0000002a <.LVL161>:
  2a:	08e7a423          	sw	a4,136(a5)

0000002e <.LVL162>:
  2e:	fea594e3          	bne	a1,a0,16 <.L128>
			2e: R_RISCV_BRANCH	.L128

00000032 <.L130>:
  32:	429c                	lw	a5,0(a3)
  34:	bffd                	j	32 <.L130>
			34: R_RISCV_RVC_JUMP	.L130

00000036 <.L125>:
  36:	8082                	ret

Disassembly of section .text.uart_rx_isr:

00000000 <uart_rx_isr>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	.LANCHOR3
			4: R_RISCV_RELAX	*ABS*
   8:	0004c503          	lbu	a0,0(s1) # 0 <uart_rx_isr>
			8: R_RISCV_LO12_I	.LANCHOR3
			8: R_RISCV_RELAX	*ABS*
   c:	4585                	li	a1,1
   e:	c422                	sw	s0,8(sp)
  10:	c606                	sw	ra,12(sp)
  12:	00000437          	lui	s0,0x0
			12: R_RISCV_HI20	.LANCHOR0
			12: R_RISCV_RELAX	*ABS*
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	UART_IntClear
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <uart_rx_isr+0x16>

0000001e <.LVL165>:
  1e:	00040793          	mv	a5,s0
			1e: R_RISCV_LO12_I	.LANCHOR0
			1e: R_RISCV_RELAX	*ABS*
  22:	4f9c                	lw	a5,24(a5)
  24:	00048493          	mv	s1,s1
			24: R_RISCV_LO12_I	.LANCHOR3
			24: R_RISCV_RELAX	*ABS*
  28:	00040413          	mv	s0,s0
			28: R_RISCV_LO12_I	.LANCHOR0
			28: R_RISCV_RELAX	*ABS*
  2c:	c789                	beqz	a5,36 <.L138>
			2c: R_RISCV_RVC_BRANCH	.L138
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	read_data
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL165+0x10>

00000036 <.L138>:
  36:	4581                	li	a1,0
  38:	4501                	li	a0,0
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	uart_rx_fifo_isr_en
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.L138+0x4>

00000042 <.LBB35>:
  42:	000007b7          	lui	a5,0x0
			42: R_RISCV_HI20	.LANCHOR1
			42: R_RISCV_RELAX	*ABS*
  46:	0007a703          	lw	a4,0(a5) # 0 <uart_rx_isr>
			46: R_RISCV_LO12_I	.LANCHOR1
			46: R_RISCV_RELAX	*ABS*
  4a:	08072783          	lw	a5,128(a4)

0000004e <.LVL168>:
  4e:	0407f693          	andi	a3,a5,64
  52:	c295                	beqz	a3,76 <.L139>
			52: R_RISCV_RVC_BRANCH	.L139
  54:	0087e693          	ori	a3,a5,8

00000058 <.LVL169>:
  58:	08d72023          	sw	a3,128(a4)
  5c:	9bdd                	andi	a5,a5,-9

0000005e <.LVL170>:
  5e:	4501                	li	a0,0
  60:	08f72023          	sw	a5,128(a4)
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	uart_rx_func_en
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL170+0x6>

0000006c <.LVL171>:
  6c:	4505                	li	a0,1
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	uart_rx_func_en
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL171+0x2>

00000076 <.L139>:
  76:	481c                	lw	a5,16(s0)

00000078 <.LVL173>:
  78:	cb81                	beqz	a5,88 <.L140>
			78: R_RISCV_RVC_BRANCH	.L140
  7a:	4848                	lw	a0,20(s0)
  7c:	4581                	li	a1,0
  7e:	00042823          	sw	zero,16(s0) # 10 <uart_rx_isr+0x10>
  82:	00042a23          	sw	zero,20(s0)

00000086 <.LVL174>:
  86:	9782                	jalr	a5

00000088 <.L140>:
  88:	0004c503          	lbu	a0,0(s1)
  8c:	4585                	li	a1,1
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	UART_IntClear
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.L140+0x6>

00000096 <.LVL176>:
  96:	4c1c                	lw	a5,24(s0)
  98:	cb89                	beqz	a5,aa <.L137>
			98: R_RISCV_RVC_BRANCH	.L137
  9a:	4422                	lw	s0,8(sp)
  9c:	40b2                	lw	ra,12(sp)
  9e:	4492                	lw	s1,4(sp)
  a0:	0141                	addi	sp,sp,16
  a2:	00000317          	auipc	t1,0x0
			a2: R_RISCV_CALL	read_data
			a2: R_RISCV_RELAX	*ABS*
  a6:	00030067          	jr	t1 # a2 <.LVL176+0xc>

000000aa <.L137>:
  aa:	40b2                	lw	ra,12(sp)
  ac:	4422                	lw	s0,8(sp)
  ae:	4492                	lw	s1,4(sp)
  b0:	0141                	addi	sp,sp,16
  b2:	8082                	ret

Disassembly of section .text.uart_tx_isr:

00000000 <uart_tx_isr>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR3
			0: R_RISCV_RELAX	*ABS*
   4:	0007c503          	lbu	a0,0(a5) # 0 <uart_tx_isr>
			4: R_RISCV_LO12_I	.LANCHOR3
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	4581                	li	a1,0
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	UART_IntClear
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <uart_tx_isr+0xe>

00000016 <.LVL179>:
  16:	000007b7          	lui	a5,0x0
			16: R_RISCV_HI20	.LANCHOR0
			16: R_RISCV_RELAX	*ABS*
  1a:	00078793          	mv	a5,a5
			1a: R_RISCV_LO12_I	.LANCHOR0
			1a: R_RISCV_RELAX	*ABS*
  1e:	0007a303          	lw	t1,0(a5) # 0 <uart_tx_isr>

00000022 <.LVL180>:
  22:	00030b63          	beqz	t1,38 <.L152>
			22: R_RISCV_BRANCH	.L152
  26:	43c8                	lw	a0,4(a5)
  28:	0007a023          	sw	zero,0(a5)
  2c:	0007a223          	sw	zero,4(a5)

00000030 <.LVL181>:
  30:	40b2                	lw	ra,12(sp)
  32:	4581                	li	a1,0
  34:	0141                	addi	sp,sp,16
  36:	8302                	jr	t1

00000038 <.L152>:
  38:	40b2                	lw	ra,12(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

Disassembly of section .text.uart_rx_fifo_isr:

00000000 <uart_rx_fifo_isr>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <uart_rx_fifo_isr>
			4: R_RISCV_LO12_I	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE40>:
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	ce06                	sw	ra,28(sp)

00000014 <.LBB41>:
  14:	0847a583          	lw	a1,132(a5)

00000018 <.LVL184>:
  18:	000004b7          	lui	s1,0x0
			18: R_RISCV_HI20	.LANCHOR0
			18: R_RISCV_RELAX	*ABS*
  1c:	00048493          	mv	s1,s1
			1c: R_RISCV_LO12_I	.LANCHOR0
			1c: R_RISCV_RELAX	*ABS*
  20:	81e1                	srli	a1,a1,0x18

00000022 <.LVL185>:
  22:	4c80                	lw	s0,24(s1)
  24:	07f5f913          	andi	s2,a1,127

00000028 <.LVL186>:
  28:	00190993          	addi	s3,s2,1 # 1 <uart_rx_fifo_isr+0x1>
  2c:	05341263          	bne	s0,s3,70 <.L156>
			2c: R_RISCV_BRANCH	.L156
  30:	0ff47513          	andi	a0,s0,255
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	read_fifo_data
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL186+0xc>

0000003c <.LVL187>:
  3c:	00a40363          	beq	s0,a0,42 <.L157>
			3c: R_RISCV_BRANCH	.L157

00000040 <.L158>:
  40:	a001                	j	40 <.L158>
			40: R_RISCV_RVC_JUMP	.L158

00000042 <.L157>:
  42:	4581                	li	a1,0
  44:	4501                	li	a0,0

00000046 <.LVL188>:
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	uart_rx_fifo_isr_en
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL188>

0000004e <.LVL189>:
  4e:	0104a303          	lw	t1,16(s1) # 10 <.LBE40+0x8>

00000052 <.LVL190>:
  52:	06030363          	beqz	t1,b8 <.L155>
			52: R_RISCV_BRANCH	.L155

00000056 <.LBE42>:
  56:	4462                	lw	s0,24(sp)

00000058 <.LBB51>:
  58:	48c8                	lw	a0,20(s1)
  5a:	0004a823          	sw	zero,16(s1)
  5e:	0004aa23          	sw	zero,20(s1)

00000062 <.LBE51>:
  62:	40f2                	lw	ra,28(sp)
  64:	44d2                	lw	s1,20(sp)
  66:	4942                	lw	s2,16(sp)

00000068 <.LVL192>:
  68:	49b2                	lw	s3,12(sp)

0000006a <.LBB52>:
  6a:	4581                	li	a1,0

0000006c <.LBE52>:
  6c:	6105                	addi	sp,sp,32

0000006e <.LBB53>:
  6e:	8302                	jr	t1

00000070 <.L156>:
  70:	00896363          	bltu	s2,s0,76 <.L161>
			70: R_RISCV_BRANCH	.L161

00000074 <.L162>:
  74:	a001                	j	74 <.L162>
			74: R_RISCV_RVC_JUMP	.L162

00000076 <.L161>:
  76:	854e                	mv	a0,s3
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	read_fifo_data
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.L161+0x2>

00000080 <.LVL195>:
  80:	00a98363          	beq	s3,a0,86 <.L163>
			80: R_RISCV_BRANCH	.L163

00000084 <.L164>:
  84:	a001                	j	84 <.L164>
			84: R_RISCV_RVC_JUMP	.L164

00000086 <.L163>:
  86:	4cdc                	lw	a5,28(s1)
  88:	147d                	addi	s0,s0,-1
  8a:	412405b3          	sub	a1,s0,s2
  8e:	99be                	add	s3,s3,a5
  90:	cc8c                	sw	a1,24(s1)
  92:	0134ae23          	sw	s3,28(s1)
  96:	47c1                	li	a5,16
  98:	02b7e063          	bltu	a5,a1,b8 <.L155>
			98: R_RISCV_BRANCH	.L155

0000009c <.LBE54>:
  9c:	4462                	lw	s0,24(sp)
  9e:	40f2                	lw	ra,28(sp)
  a0:	44d2                	lw	s1,20(sp)
  a2:	4942                	lw	s2,16(sp)

000000a4 <.LVL196>:
  a4:	49b2                	lw	s3,12(sp)

000000a6 <.LBB55>:
  a6:	15fd                	addi	a1,a1,-1

000000a8 <.LBB56>:
  a8:	0ff5f593          	andi	a1,a1,255
  ac:	4505                	li	a0,1

000000ae <.LBE56>:
  ae:	6105                	addi	sp,sp,32

000000b0 <.LBB57>:
  b0:	00000317          	auipc	t1,0x0
			b0: R_RISCV_CALL	uart_rx_fifo_isr_en
			b0: R_RISCV_RELAX	*ABS*
  b4:	00030067          	jr	t1 # b0 <.LBB57>

000000b8 <.L155>:
  b8:	40f2                	lw	ra,28(sp)
  ba:	4462                	lw	s0,24(sp)
  bc:	44d2                	lw	s1,20(sp)
  be:	4942                	lw	s2,16(sp)

000000c0 <.LVL199>:
  c0:	49b2                	lw	s3,12(sp)
  c2:	6105                	addi	sp,sp,32
  c4:	8082                	ret

Disassembly of section .text.uart_tx_fifo_isr:

00000000 <uart_tx_fifo_isr>:
   0:	1101                	addi	sp,sp,-32
   2:	4581                	li	a1,0
   4:	4501                	li	a0,0
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	uart_tx_fifo_isr_en
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <uart_tx_fifo_isr+0x10>

00000018 <.LVL200>:
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	.LANCHOR1
			18: R_RISCV_RELAX	*ABS*
  1c:	0007a703          	lw	a4,0(a5) # 0 <uart_tx_fifo_isr>
			1c: R_RISCV_LO12_I	.LANCHOR1
			1c: R_RISCV_RELAX	*ABS*
  20:	08072783          	lw	a5,128(a4)

00000024 <.LVL201>:
  24:	0307f693          	andi	a3,a5,48
  28:	ce81                	beqz	a3,40 <.L168>
			28: R_RISCV_RVC_BRANCH	.L168
  2a:	0047e793          	ori	a5,a5,4
  2e:	08f72023          	sw	a5,128(a4)

00000032 <.L167>:
  32:	40f2                	lw	ra,28(sp)
  34:	4462                	lw	s0,24(sp)
  36:	44d2                	lw	s1,20(sp)
  38:	4942                	lw	s2,16(sp)
  3a:	49b2                	lw	s3,12(sp)
  3c:	6105                	addi	sp,sp,32
  3e:	8082                	ret

00000040 <.L168>:
  40:	00000437          	lui	s0,0x0
			40: R_RISCV_HI20	.LANCHOR0
			40: R_RISCV_RELAX	*ABS*
  44:	00040413          	mv	s0,s0
			44: R_RISCV_LO12_I	.LANCHOR0
			44: R_RISCV_RELAX	*ABS*

00000048 <.LBB67>:
  48:	08472903          	lw	s2,132(a4)

0000004c <.LBE67>:
  4c:	4404                	lw	s1,8(s0)
  4e:	03f97913          	andi	s2,s2,63

00000052 <.LVL206>:
  52:	d0e5                	beqz	s1,32 <.L167>
			52: R_RISCV_RVC_BRANCH	.L167
  54:	00996d63          	bltu	s2,s1,6e <.L170>
			54: R_RISCV_BRANCH	.L170
  58:	4448                	lw	a0,12(s0)
  5a:	85a6                	mv	a1,s1
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	write_data
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL206+0xa>

00000064 <.LVL207>:
  64:	00042623          	sw	zero,12(s0) # c <uart_tx_fifo_isr+0xc>
  68:	00042423          	sw	zero,8(s0)
  6c:	b7d9                	j	32 <.L167>
			6c: R_RISCV_RVC_JUMP	.L167

0000006e <.L170>:
  6e:	00c42983          	lw	s3,12(s0)
  72:	85ca                	mv	a1,s2
  74:	412484b3          	sub	s1,s1,s2
  78:	854e                	mv	a0,s3
  7a:	99ca                	add	s3,s3,s2
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	write_data
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L170+0xe>

00000084 <.LVL209>:
  84:	01342623          	sw	s3,12(s0)
  88:	c404                	sw	s1,8(s0)

0000008a <.LBE62>:
  8a:	4462                	lw	s0,24(sp)
  8c:	40f2                	lw	ra,28(sp)
  8e:	44d2                	lw	s1,20(sp)
  90:	4942                	lw	s2,16(sp)
  92:	49b2                	lw	s3,12(sp)

00000094 <.LBB71>:
  94:	45c1                	li	a1,16

00000096 <.LBB72>:
  96:	4505                	li	a0,1

00000098 <.LBE72>:
  98:	6105                	addi	sp,sp,32

0000009a <.LBB73>:
  9a:	00000317          	auipc	t1,0x0
			9a: R_RISCV_CALL	uart_tx_fifo_isr_en
			9a: R_RISCV_RELAX	*ABS*
  9e:	00030067          	jr	t1 # 9a <.LBB73>

Disassembly of section .text.uart_isr:

00000000 <uart_isr>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	00092783          	lw	a5,0(s2) # 0 <uart_isr>
			8: R_RISCV_LO12_I	.LANCHOR1
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	c422                	sw	s0,8(sp)
  10:	c226                	sw	s1,4(sp)
  12:	5384                	lw	s1,32(a5)

00000014 <.LVL212>:
  14:	53c0                	lw	s0,36(a5)

00000016 <.LVL213>:
  16:	00090913          	mv	s2,s2
			16: R_RISCV_LO12_I	.LANCHOR1
			16: R_RISCV_RELAX	*ABS*
  1a:	0014f713          	andi	a4,s1,1
  1e:	cb11                	beqz	a4,32 <.L176>
			1e: R_RISCV_RVC_BRANCH	.L176
  20:	00147713          	andi	a4,s0,1
  24:	e719                	bnez	a4,32 <.L176>
			24: R_RISCV_RVC_BRANCH	.L176
  26:	4705                	li	a4,1
  28:	d798                	sw	a4,40(a5)
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	uart_tx_isr
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL213+0x14>

00000032 <.L176>:
  32:	0024f793          	andi	a5,s1,2
  36:	cf81                	beqz	a5,4e <.L177>
			36: R_RISCV_RVC_BRANCH	.L177
  38:	00247793          	andi	a5,s0,2
  3c:	eb89                	bnez	a5,4e <.L177>
			3c: R_RISCV_RVC_BRANCH	.L177
  3e:	00092783          	lw	a5,0(s2)
  42:	4709                	li	a4,2
  44:	d798                	sw	a4,40(a5)
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	uart_rx_isr
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L176+0x14>

0000004e <.L177>:
  4e:	0044f793          	andi	a5,s1,4
  52:	cb81                	beqz	a5,62 <.L178>
			52: R_RISCV_RVC_BRANCH	.L178
  54:	00447793          	andi	a5,s0,4
  58:	e789                	bnez	a5,62 <.L178>
			58: R_RISCV_RVC_BRANCH	.L178
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	uart_tx_fifo_isr
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.L177+0xc>

00000062 <.L178>:
  62:	0084f793          	andi	a5,s1,8
  66:	cb81                	beqz	a5,76 <.L179>
			66: R_RISCV_RVC_BRANCH	.L179
  68:	00847793          	andi	a5,s0,8
  6c:	e789                	bnez	a5,76 <.L179>
			6c: R_RISCV_RVC_BRANCH	.L179
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	uart_rx_fifo_isr
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L178+0xc>

00000076 <.L179>:
  76:	0104f793          	andi	a5,s1,16
  7a:	cb81                	beqz	a5,8a <.L180>
			7a: R_RISCV_RVC_BRANCH	.L180
  7c:	01047793          	andi	a5,s0,16
  80:	e789                	bnez	a5,8a <.L180>
			80: R_RISCV_RVC_BRANCH	.L180
  82:	00092783          	lw	a5,0(s2)
  86:	4741                	li	a4,16
  88:	d798                	sw	a4,40(a5)

0000008a <.L180>:
  8a:	0204f493          	andi	s1,s1,32

0000008e <.LVL218>:
  8e:	c889                	beqz	s1,a0 <.L175>
			8e: R_RISCV_RVC_BRANCH	.L175
  90:	02047413          	andi	s0,s0,32

00000094 <.LVL219>:
  94:	e411                	bnez	s0,a0 <.L175>
			94: R_RISCV_RVC_BRANCH	.L175
  96:	00092783          	lw	a5,0(s2)
  9a:	02000713          	li	a4,32
  9e:	d798                	sw	a4,40(a5)

000000a0 <.L175>:
  a0:	40b2                	lw	ra,12(sp)
  a2:	4422                	lw	s0,8(sp)
  a4:	4492                	lw	s1,4(sp)
  a6:	4902                	lw	s2,0(sp)
  a8:	0141                	addi	sp,sp,16
  aa:	8082                	ret
