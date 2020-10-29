
libatcmd/at_common.o:     file format elf32-littleriscv


Disassembly of section .text.at_response:

00000000 <at_response>:
   0:	47ed                	li	a5,27
   2:	0ef50663          	beq	a0,a5,ee <.L10>
			2: R_RISCV_BRANCH	.L10
   6:	1101                	addi	sp,sp,-32
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	e915                	bnez	a0,40 <.L3>
			c: R_RISCV_RVC_BRANCH	.L3
   e:	00000437          	lui	s0,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*
  12:	00040513          	mv	a0,s0
			12: R_RISCV_LO12_I	.LC0
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL1>:
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	at_dump_noend
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL1>

0000001e <.LVL2>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC1
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC1
			22: R_RISCV_RELAX	*ABS*

00000026 <.L13>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	at_dump_noend
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.L13>

0000002e <.L14>:
  2e:	00040513          	mv	a0,s0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	4462                	lw	s0,24(sp)
  34:	40f2                	lw	ra,28(sp)
  36:	6105                	addi	sp,sp,32
  38:	00000317          	auipc	t1,0x0
			38: R_RISCV_CALL	at_dump_noend
			38: R_RISCV_RELAX	*ABS*
  3c:	00030067          	jr	t1 # 38 <.L14+0xa>

00000040 <.L3>:
  40:	4789                	li	a5,2
  42:	00f51f63          	bne	a0,a5,60 <.L4>
			42: R_RISCV_BRANCH	.L4
  46:	00000437          	lui	s0,0x0
			46: R_RISCV_HI20	.LC0
			46: R_RISCV_RELAX	*ABS*
  4a:	00040513          	mv	a0,s0
			4a: R_RISCV_LO12_I	.LC0
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL5>:
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	at_dump_noend
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL5>

00000056 <.LVL6>:
  56:	00000537          	lui	a0,0x0
			56: R_RISCV_HI20	.LC2
			56: R_RISCV_RELAX	*ABS*
  5a:	00050513          	mv	a0,a0
			5a: R_RISCV_LO12_I	.LC2
			5a: R_RISCV_RELAX	*ABS*
  5e:	b7e1                	j	26 <.L13>
			5e: R_RISCV_RVC_JUMP	.L13

00000060 <.L4>:
  60:	00000737          	lui	a4,0x0
			60: R_RISCV_HI20	.LANCHOR0
			60: R_RISCV_RELAX	*ABS*
  64:	00070693          	mv	a3,a4
			64: R_RISCV_LO12_I	.LANCHOR0
			64: R_RISCV_RELAX	*ABS*

00000068 <.LBB2>:
  68:	4781                	li	a5,0
  6a:	00070713          	mv	a4,a4
			6a: R_RISCV_LO12_I	.LANCHOR0
			6a: R_RISCV_RELAX	*ABS*
  6e:	4661                	li	a2,24

00000070 <.L7>:
  70:	0006c583          	lbu	a1,0(a3)
  74:	04a59763          	bne	a1,a0,c2 <.L5>
			74: R_RISCV_BRANCH	.L5
  78:	078e                	slli	a5,a5,0x3

0000007a <.LVL9>:
  7a:	97ba                	add	a5,a5,a4
  7c:	43cc                	lw	a1,4(a5)
  7e:	47dd                	li	a5,23
  80:	00000437          	lui	s0,0x0
			80: R_RISCV_HI20	.LC0
			80: R_RISCV_RELAX	*ABS*
  84:	c62e                	sw	a1,12(sp)
  86:	02f51263          	bne	a0,a5,aa <.L6>
			86: R_RISCV_BRANCH	.L6
  8a:	00040513          	mv	a0,s0
			8a: R_RISCV_LO12_I	.LC0
			8a: R_RISCV_RELAX	*ABS*

0000008e <.LVL10>:
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	at_dump_noend
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL10>

00000096 <.LVL11>:
  96:	45b2                	lw	a1,12(sp)
  98:	00000537          	lui	a0,0x0
			98: R_RISCV_HI20	.LC3
			98: R_RISCV_RELAX	*ABS*
  9c:	00050513          	mv	a0,a0
			9c: R_RISCV_LO12_I	.LC3
			9c: R_RISCV_RELAX	*ABS*

000000a0 <.L15>:
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	at_dump_noend
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.L15>

000000a8 <.LVL12>:
  a8:	b759                	j	2e <.L14>
			a8: R_RISCV_RVC_JUMP	.L14

000000aa <.L6>:
  aa:	00040513          	mv	a0,s0
			aa: R_RISCV_LO12_I	.LC0
			aa: R_RISCV_RELAX	*ABS*

000000ae <.LVL14>:
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	at_dump_noend
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL14>

000000b6 <.LVL15>:
  b6:	00000537          	lui	a0,0x0
			b6: R_RISCV_HI20	.LC4
			b6: R_RISCV_RELAX	*ABS*
  ba:	45b2                	lw	a1,12(sp)
  bc:	00050513          	mv	a0,a0
			bc: R_RISCV_LO12_I	.LC4
			bc: R_RISCV_RELAX	*ABS*
  c0:	b7c5                	j	a0 <.L15>
			c0: R_RISCV_RVC_JUMP	.L15

000000c2 <.L5>:
  c2:	0785                	addi	a5,a5,1
  c4:	06a1                	addi	a3,a3,8
  c6:	fac795e3          	bne	a5,a2,70 <.L7>
			c6: R_RISCV_BRANCH	.L7
  ca:	4785                	li	a5,1

000000cc <.LVL18>:
  cc:	00f50d63          	beq	a0,a5,e6 <.L1>
			cc: R_RISCV_BRANCH	.L1

000000d0 <.LBE2>:
  d0:	4462                	lw	s0,24(sp)
  d2:	40f2                	lw	ra,28(sp)

000000d4 <.LBB3>:
  d4:	00000537          	lui	a0,0x0
			d4: R_RISCV_HI20	.LC5
			d4: R_RISCV_RELAX	*ABS*

000000d8 <.LBB4>:
  d8:	00050513          	mv	a0,a0
			d8: R_RISCV_LO12_I	.LC5
			d8: R_RISCV_RELAX	*ABS*

000000dc <.LBE4>:
  dc:	6105                	addi	sp,sp,32

000000de <.LBB5>:
  de:	00000317          	auipc	t1,0x0
			de: R_RISCV_CALL	printf
			de: R_RISCV_RELAX	*ABS*
  e2:	00030067          	jr	t1 # de <.LBB5>

000000e6 <.L1>:
  e6:	40f2                	lw	ra,28(sp)
  e8:	4462                	lw	s0,24(sp)
  ea:	6105                	addi	sp,sp,32
  ec:	8082                	ret

000000ee <.L10>:
  ee:	8082                	ret

Disassembly of section .text.at_event:

00000000 <at_event>:
   0:	47fd                	li	a5,31
   2:	872a                	mv	a4,a0
   4:	00a7cd63          	blt	a5,a0,1e <.L17>
			4: R_RISCV_BRANCH	.L17
   8:	4785                	li	a5,1
   a:	00a79533          	sll	a0,a5,a0

0000000e <.LVL22>:
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	at_cfg+0x8c
			e: R_RISCV_RELAX	*ABS*+0x8c
  12:	08c7a783          	lw	a5,140(a5) # 8c <.LC17+0x4>
			12: R_RISCV_LO12_I	at_cfg+0x8c
			12: R_RISCV_RELAX	*ABS*+0x8c

00000016 <.L21>:
  16:	8d7d                	and	a0,a0,a5
  18:	00153513          	seqz	a0,a0

0000001c <.L16>:
  1c:	8082                	ret

0000001e <.L17>:
  1e:	03f00793          	li	a5,63
  22:	00a7cc63          	blt	a5,a0,3a <.L19>
			22: R_RISCV_BRANCH	.L19

00000026 <.LVL24>:
  26:	fe050713          	addi	a4,a0,-32 # ffffffe0 <.LASF205+0xffffeba1>

0000002a <.LVL25>:
  2a:	000007b7          	lui	a5,0x0
			2a: R_RISCV_HI20	at_cfg+0x90
			2a: R_RISCV_RELAX	*ABS*+0x90
  2e:	4505                	li	a0,1
  30:	00e51533          	sll	a0,a0,a4
  34:	0907a783          	lw	a5,144(a5) # 90 <.LVL43>
			34: R_RISCV_LO12_I	at_cfg+0x90
			34: R_RISCV_RELAX	*ABS*+0x90
  38:	bff9                	j	16 <.L21>
			38: R_RISCV_RVC_JUMP	.L21

0000003a <.L19>:
  3a:	05f00793          	li	a5,95
  3e:	4501                	li	a0,0

00000040 <.LVL27>:
  40:	fce7cee3          	blt	a5,a4,1c <.L16>
			40: R_RISCV_BRANCH	.L16

00000044 <.LVL28>:
  44:	fc070713          	addi	a4,a4,-64 # ffffffc0 <.LASF205+0xffffeb81>

00000048 <.LVL29>:
  48:	4505                	li	a0,1
  4a:	000007b7          	lui	a5,0x0
			4a: R_RISCV_HI20	at_cfg+0x94
			4a: R_RISCV_RELAX	*ABS*+0x94
  4e:	00e51533          	sll	a0,a0,a4
  52:	0947a783          	lw	a5,148(a5) # 94 <.LC18>
			52: R_RISCV_LO12_I	at_cfg+0x94
			52: R_RISCV_RELAX	*ABS*+0x94
  56:	b7c1                	j	16 <.L21>
			56: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.at_serial:

00000000 <at_serial>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	at_cfg
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	at_cfg
			4: R_RISCV_RELAX	*ABS*
   8:	0e47a703          	lw	a4,228(a5) # e4 <.LBB5+0x6>
   c:	c118                	sw	a4,0(a0)
   e:	0e87a783          	lw	a5,232(a5)
  12:	c91c                	sw	a5,16(a0)
  14:	4501                	li	a0,0

00000016 <.LVL31>:
  16:	8082                	ret

Disassembly of section .text.at_act:

00000000 <at_act>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	at_callback
			6: R_RISCV_RELAX	*ABS*
   a:	00040413          	mv	s0,s0
			a: R_RISCV_LO12_I	at_callback
			a: R_RISCV_RELAX	*ABS*
   e:	401c                	lw	a5,0(s0)
  10:	12112623          	sw	ra,300(sp)
  14:	c39d                	beqz	a5,3a <.L24>
			14: R_RISCV_RVC_BRANCH	.L24
  16:	11c00613          	li	a2,284
  1a:	4581                	li	a1,0
  1c:	0048                	addi	a0,sp,4
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	memset
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <at_act+0x1e>

00000026 <.LVL32>:
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	at_cfg
			26: R_RISCV_RELAX	*ABS*
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	at_cfg
			2a: R_RISCV_RELAX	*ABS*
  2e:	c23e                	sw	a5,4(sp)
  30:	401c                	lw	a5,0(s0)
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	4501                	li	a0,0
  38:	9782                	jalr	a5

0000003a <.L24>:
  3a:	12c12083          	lw	ra,300(sp)
  3e:	12812403          	lw	s0,296(sp)
  42:	4501                	li	a0,0
  44:	6155                	addi	sp,sp,304
  46:	8082                	ret

Disassembly of section .text.at_reset:

00000000 <at_reset>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	at_callback
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <at_reset>
			4: R_RISCV_LO12_I	at_callback
			4: R_RISCV_RELAX	*ABS*
   8:	cb99                	beqz	a5,1e <.L35>
			8: R_RISCV_RVC_BRANCH	.L35
   a:	1141                	addi	sp,sp,-16
   c:	c606                	sw	ra,12(sp)
   e:	4601                	li	a2,0
  10:	4581                	li	a1,0
  12:	4505                	li	a0,1
  14:	9782                	jalr	a5

00000016 <.LVL34>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

0000001e <.L35>:
  1e:	4501                	li	a0,0
  20:	8082                	ret

Disassembly of section .text.at_mode:

00000000 <at_mode>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	at_callback
			0: R_RISCV_RELAX	*ABS*
   4:	0007a703          	lw	a4,0(a5) # 0 <at_mode>
			4: R_RISCV_LO12_I	at_callback
			4: R_RISCV_RELAX	*ABS*
   8:	14070263          	beqz	a4,14c <.L51>
			8: R_RISCV_BRANCH	.L51
   c:	714d                	addi	sp,sp,-336
   e:	11c00613          	li	a2,284
  12:	4581                	li	a1,0
  14:	0048                	addi	a0,sp,4

00000016 <.LVL36>:
  16:	14112623          	sw	ra,332(sp)
  1a:	14912223          	sw	s1,324(sp)
  1e:	15212023          	sw	s2,320(sp)
  22:	13312e23          	sw	s3,316(sp)
  26:	13412c23          	sw	s4,312(sp)
  2a:	13512a23          	sw	s5,308(sp)
  2e:	13612823          	sw	s6,304(sp)
  32:	00078a93          	mv	s5,a5
			32: R_RISCV_LO12_I	at_callback
			32: R_RISCV_RELAX	*ABS*
  36:	13712623          	sw	s7,300(sp)
  3a:	13812423          	sw	s8,296(sp)
  3e:	14812423          	sw	s0,328(sp)
  42:	000009b7          	lui	s3,0x0
			42: R_RISCV_HI20	at_cfg+0xd8
			42: R_RISCV_RELAX	*ABS*+0xd8
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	memset
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL36+0x30>

0000004e <.LVL37>:
  4e:	0d898513          	addi	a0,s3,216 # d8 <.LVL50+0x4>
			4e: R_RISCV_LO12_I	at_cfg+0xd8
			4e: R_RISCV_RELAX	*ABS*+0xd8
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	strlen
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL37+0x4>

0000005a <.LVL38>:
  5a:	00000937          	lui	s2,0x0
			5a: R_RISCV_HI20	.LC0
			5a: R_RISCV_RELAX	*ABS*
  5e:	8a2a                	mv	s4,a0

00000060 <.LVL39>:
  60:	00090513          	mv	a0,s2
			60: R_RISCV_LO12_I	.LC0
			60: R_RISCV_RELAX	*ABS*

00000064 <.LVL40>:
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	at_dump_noend
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL40>

0000006c <.LVL41>:
  6c:	00000537          	lui	a0,0x0
			6c: R_RISCV_HI20	.LC6
			6c: R_RISCV_RELAX	*ABS*
  70:	00050513          	mv	a0,a0
			70: R_RISCV_LO12_I	.LC6
			70: R_RISCV_RELAX	*ABS*
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	at_dump_noend
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL41+0x8>

0000007c <.LVL42>:
  7c:	000004b7          	lui	s1,0x0
			7c: R_RISCV_HI20	at_socket_buf
			7c: R_RISCV_RELAX	*ABS*
  80:	00090513          	mv	a0,s2
			80: R_RISCV_LO12_I	.LC0
			80: R_RISCV_RELAX	*ABS*
  84:	00048b13          	mv	s6,s1
			84: R_RISCV_LO12_I	at_socket_buf
			84: R_RISCV_RELAX	*ABS*
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	at_dump_noend
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LVL42+0xc>

00000090 <.LVL43>:
  90:	00048493          	mv	s1,s1
			90: R_RISCV_LO12_I	at_socket_buf
			90: R_RISCV_RELAX	*ABS*
  94:	40000b93          	li	s7,1024
  98:	002a0c13          	addi	s8,s4,2

0000009c <.L45>:
  9c:	c85a                	sw	s6,16(sp)

0000009e <.LVL44>:
  9e:	4401                	li	s0,0

000000a0 <.L41>:
  a0:	00310513          	addi	a0,sp,3
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	at_queue_get
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.L41+0x4>

000000ac <.LVL46>:
  ac:	e541                	bnez	a0,134 <.L40>
			ac: R_RISCV_RVC_BRANCH	.L40

000000ae <.LVL47>:
  ae:	00314703          	lbu	a4,3(sp)
  b2:	008487b3          	add	a5,s1,s0
  b6:	0405                	addi	s0,s0,1

000000b8 <.LVL48>:
  b8:	00e78023          	sb	a4,0(a5)
  bc:	ff7412e3          	bne	s0,s7,a0 <.L41>
			bc: R_RISCV_BRANCH	.L41
  c0:	40000413          	li	s0,1024

000000c4 <.L42>:
  c4:	07444b63          	blt	s0,s4,13a <.L43>
			c4: R_RISCV_BRANCH	.L43
  c8:	068c4963          	blt	s8,s0,13a <.L43>
			c8: R_RISCV_BRANCH	.L43
  cc:	8652                	mv	a2,s4
  ce:	85a6                	mv	a1,s1
  d0:	0d898513          	addi	a0,s3,216
			d0: R_RISCV_LO12_I	at_cfg+0xd8
			d0: R_RISCV_RELAX	*ABS*+0xd8

000000d4 <.LVL50>:
  d4:	00000097          	auipc	ra,0x0
			d4: R_RISCV_CALL	strncmp
			d4: R_RISCV_RELAX	*ABS*
  d8:	000080e7          	jalr	ra # d4 <.LVL50>

000000dc <.LVL51>:
  dc:	ed39                	bnez	a0,13a <.L43>
			dc: R_RISCV_RVC_BRANCH	.L43

000000de <.L44>:
  de:	00090513          	mv	a0,s2
			de: R_RISCV_LO12_I	.LC0
			de: R_RISCV_RELAX	*ABS*
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	at_dump_noend
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.L44+0x4>

000000ea <.LVL52>:
  ea:	00000537          	lui	a0,0x0
			ea: R_RISCV_HI20	.LC7
			ea: R_RISCV_RELAX	*ABS*
  ee:	00050513          	mv	a0,a0
			ee: R_RISCV_LO12_I	.LC7
			ee: R_RISCV_RELAX	*ABS*
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	at_dump_noend
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.LVL52+0x8>

000000fa <.LVL53>:
  fa:	00090513          	mv	a0,s2
			fa: R_RISCV_LO12_I	.LC0
			fa: R_RISCV_RELAX	*ABS*
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	at_dump_noend
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.LVL53+0x4>

00000106 <.LVL54>:
 106:	14c12083          	lw	ra,332(sp)
 10a:	14812403          	lw	s0,328(sp)
 10e:	14412483          	lw	s1,324(sp)
 112:	14012903          	lw	s2,320(sp)
 116:	13c12983          	lw	s3,316(sp)
 11a:	13812a03          	lw	s4,312(sp)

0000011e <.LVL55>:
 11e:	13412a83          	lw	s5,308(sp)
 122:	13012b03          	lw	s6,304(sp)
 126:	12c12b83          	lw	s7,300(sp)
 12a:	12812c03          	lw	s8,296(sp)

0000012e <.LVL56>:
 12e:	4501                	li	a0,0
 130:	6171                	addi	sp,sp,336
 132:	8082                	ret

00000134 <.L40>:
 134:	4789                	li	a5,2
 136:	f887c7e3          	blt	a5,s0,c4 <.L42>
			136: R_RISCV_BRANCH	.L42

0000013a <.L43>:
 13a:	000aa783          	lw	a5,0(s5)
 13e:	c622                	sw	s0,12(sp)
 140:	4601                	li	a2,0
 142:	004c                	addi	a1,sp,4
 144:	4509                	li	a0,2
 146:	9782                	jalr	a5

00000148 <.LVL59>:
 148:	d931                	beqz	a0,9c <.L45>
			148: R_RISCV_RVC_BRANCH	.L45
 14a:	bf51                	j	de <.L44>
			14a: R_RISCV_RVC_JUMP	.L44

0000014c <.L51>:
 14c:	4501                	li	a0,0

0000014e <.LVL61>:
 14e:	8082                	ret
