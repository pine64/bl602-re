
libatcmd/at_queue.o:     file format elf32-littleriscv


Disassembly of section .text.at_queue_init:

00000000 <at_queue_init>:
   0:	57fd                	li	a5,-1
   2:	c921                	beqz	a0,52 <.L6>
			2: R_RISCV_RVC_BRANCH	.L6
   4:	c639                	beqz	a2,52 <.L6>
			4: R_RISCV_RVC_BRANCH	.L6
   6:	1101                	addi	sp,sp,-32
   8:	ca26                	sw	s1,20(sp)
   a:	84aa                	mv	s1,a0
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LANCHOR0
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL1>:
  10:	cc22                	sw	s0,24(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	c64e                	sw	s3,12(sp)
  16:	8432                	mv	s0,a2
  18:	00050993          	mv	s3,a0
			18: R_RISCV_LO12_I	.LANCHOR0
			18: R_RISCV_RELAX	*ABS*
  1c:	892e                	mv	s2,a1
  1e:	4651                	li	a2,20

00000020 <.LVL2>:
  20:	4581                	li	a1,0

00000022 <.LVL3>:
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LANCHOR0
			22: R_RISCV_RELAX	*ABS*
  26:	ce06                	sw	ra,28(sp)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	memset
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL3+0x6>

00000030 <.LVL4>:
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	.LANCHOR1
			30: R_RISCV_RELAX	*ABS*
  34:	0087a023          	sw	s0,0(a5) # 0 <at_queue_init>
			34: R_RISCV_LO12_S	.LANCHOR1
			34: R_RISCV_RELAX	*ABS*
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)

0000003c <.LVL5>:
  3c:	0099a023          	sw	s1,0(s3)
  40:	0129a223          	sw	s2,4(s3)
  44:	4781                	li	a5,0
  46:	44d2                	lw	s1,20(sp)

00000048 <.LVL6>:
  48:	4942                	lw	s2,16(sp)

0000004a <.LVL7>:
  4a:	49b2                	lw	s3,12(sp)
  4c:	853e                	mv	a0,a5
  4e:	6105                	addi	sp,sp,32
  50:	8082                	ret

00000052 <.L6>:
  52:	853e                	mv	a0,a5

00000054 <.LVL9>:
  54:	8082                	ret

Disassembly of section .text.at_queue_get:

00000000 <at_queue_get>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	d226                	sw	s1,36(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	d606                	sw	ra,44(sp)
  10:	479c                	lw	a5,8(a5)
  12:	84aa                	mv	s1,a0
  14:	00040413          	mv	s0,s0
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	04f04163          	bgtz	a5,5a <.L15>
			18: R_RISCV_BRANCH	.L15
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	.LANCHOR1
			1c: R_RISCV_RELAX	*ABS*
  20:	0007a783          	lw	a5,0(a5) # 0 <at_queue_get>
			20: R_RISCV_LO12_I	.LANCHOR1
			20: R_RISCV_RELAX	*ABS*
  24:	e799                	bnez	a5,32 <.L11>
			24: R_RISCV_RVC_BRANCH	.L11

00000026 <.L13>:
  26:	4509                	li	a0,2

00000028 <.L12>:
  28:	50b2                	lw	ra,44(sp)
  2a:	5422                	lw	s0,40(sp)
  2c:	5492                	lw	s1,36(sp)

0000002e <.LVL12>:
  2e:	6145                	addi	sp,sp,48
  30:	8082                	ret

00000032 <.L11>:
  32:	02000593          	li	a1,32
  36:	850a                	mv	a0,sp
  38:	9782                	jalr	a5

0000003a <.LVL14>:
  3a:	fea056e3          	blez	a0,26 <.L13>
			3a: R_RISCV_BRANCH	.L13
  3e:	441c                	lw	a5,8(s0)
  40:	4058                	lw	a4,4(s0)
  42:	8f1d                	sub	a4,a4,a5

00000044 <.LBB2>:
  44:	4781                	li	a5,0

00000046 <.LBE2>:
  46:	02a75f63          	bge	a4,a0,84 <.L14>
			46: R_RISCV_BRANCH	.L14
  4a:	00000537          	lui	a0,0x0
			4a: R_RISCV_HI20	.LC0
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL15>:
  4e:	00050513          	mv	a0,a0
			4e: R_RISCV_LO12_I	.LC0
			4e: R_RISCV_RELAX	*ABS*
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	printf
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL15+0x4>

0000005a <.L15>:
  5a:	4458                	lw	a4,12(s0)
  5c:	401c                	lw	a5,0(s0)
  5e:	00170693          	addi	a3,a4,1
  62:	c454                	sw	a3,12(s0)
  64:	97ba                	add	a5,a5,a4
  66:	0007c783          	lbu	a5,0(a5)
  6a:	00f48023          	sb	a5,0(s1)
  6e:	445c                	lw	a5,12(s0)
  70:	4058                	lw	a4,4(s0)
  72:	00e7c363          	blt	a5,a4,78 <.L17>
			72: R_RISCV_BRANCH	.L17
  76:	4781                	li	a5,0

00000078 <.L17>:
  78:	c45c                	sw	a5,12(s0)
  7a:	441c                	lw	a5,8(s0)
  7c:	4501                	li	a0,0
  7e:	17fd                	addi	a5,a5,-1
  80:	c41c                	sw	a5,8(s0)
  82:	b75d                	j	28 <.L12>
			82: R_RISCV_RVC_JUMP	.L12

00000084 <.L14>:
  84:	4814                	lw	a3,16(s0)
  86:	4018                	lw	a4,0(s0)
  88:	00168613          	addi	a2,a3,1
  8c:	c810                	sw	a2,16(s0)
  8e:	00f10633          	add	a2,sp,a5
  92:	00064603          	lbu	a2,0(a2)
  96:	9736                	add	a4,a4,a3
  98:	00c70023          	sb	a2,0(a4)
  9c:	4818                	lw	a4,16(s0)
  9e:	4054                	lw	a3,4(s0)
  a0:	00d74363          	blt	a4,a3,a6 <.L16>
			a0: R_RISCV_BRANCH	.L16
  a4:	4701                	li	a4,0

000000a6 <.L16>:
  a6:	c818                	sw	a4,16(s0)
  a8:	4418                	lw	a4,8(s0)
  aa:	0785                	addi	a5,a5,1
  ac:	0705                	addi	a4,a4,1
  ae:	c418                	sw	a4,8(s0)
  b0:	fcf51ae3          	bne	a0,a5,84 <.L14>
			b0: R_RISCV_BRANCH	.L14
  b4:	b75d                	j	5a <.L15>
			b4: R_RISCV_RVC_JUMP	.L15

Disassembly of section .text.at_queue_peek:

00000000 <at_queue_peek>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	d226                	sw	s1,36(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	d606                	sw	ra,44(sp)
  10:	479c                	lw	a5,8(a5)
  12:	84aa                	mv	s1,a0
  14:	00040413          	mv	s0,s0
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	04f04163          	bgtz	a5,5a <.L30>
			18: R_RISCV_BRANCH	.L30
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	.LANCHOR1
			1c: R_RISCV_RELAX	*ABS*
  20:	0007a783          	lw	a5,0(a5) # 0 <at_queue_peek>
			20: R_RISCV_LO12_I	.LANCHOR1
			20: R_RISCV_RELAX	*ABS*
  24:	e799                	bnez	a5,32 <.L26>
			24: R_RISCV_RVC_BRANCH	.L26

00000026 <.L28>:
  26:	4509                	li	a0,2

00000028 <.L27>:
  28:	50b2                	lw	ra,44(sp)
  2a:	5422                	lw	s0,40(sp)
  2c:	5492                	lw	s1,36(sp)

0000002e <.LVL21>:
  2e:	6145                	addi	sp,sp,48
  30:	8082                	ret

00000032 <.L26>:
  32:	02000593          	li	a1,32
  36:	850a                	mv	a0,sp
  38:	9782                	jalr	a5

0000003a <.LVL23>:
  3a:	fea056e3          	blez	a0,26 <.L28>
			3a: R_RISCV_BRANCH	.L28
  3e:	441c                	lw	a5,8(s0)
  40:	4058                	lw	a4,4(s0)
  42:	8f1d                	sub	a4,a4,a5

00000044 <.LBB4>:
  44:	4781                	li	a5,0

00000046 <.LBE4>:
  46:	02a75363          	bge	a4,a0,6c <.L29>
			46: R_RISCV_BRANCH	.L29
  4a:	00000537          	lui	a0,0x0
			4a: R_RISCV_HI20	.LC0
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL24>:
  4e:	00050513          	mv	a0,a0
			4e: R_RISCV_LO12_I	.LC0
			4e: R_RISCV_RELAX	*ABS*
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	printf
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL24+0x4>

0000005a <.L30>:
  5a:	401c                	lw	a5,0(s0)
  5c:	4458                	lw	a4,12(s0)
  5e:	4501                	li	a0,0
  60:	97ba                	add	a5,a5,a4
  62:	0007c783          	lbu	a5,0(a5)
  66:	00f48023          	sb	a5,0(s1)
  6a:	bf7d                	j	28 <.L27>
			6a: R_RISCV_RVC_JUMP	.L27

0000006c <.L29>:
  6c:	4814                	lw	a3,16(s0)
  6e:	4018                	lw	a4,0(s0)
  70:	00168613          	addi	a2,a3,1
  74:	c810                	sw	a2,16(s0)
  76:	00f10633          	add	a2,sp,a5
  7a:	00064603          	lbu	a2,0(a2)
  7e:	9736                	add	a4,a4,a3
  80:	00c70023          	sb	a2,0(a4)
  84:	4818                	lw	a4,16(s0)
  86:	4054                	lw	a3,4(s0)
  88:	00d74363          	blt	a4,a3,8e <.L31>
			88: R_RISCV_BRANCH	.L31
  8c:	4701                	li	a4,0

0000008e <.L31>:
  8e:	c818                	sw	a4,16(s0)
  90:	4418                	lw	a4,8(s0)
  92:	0785                	addi	a5,a5,1
  94:	0705                	addi	a4,a4,1
  96:	c418                	sw	a4,8(s0)
  98:	fcf51ae3          	bne	a0,a5,6c <.L29>
			98: R_RISCV_BRANCH	.L29
  9c:	bf7d                	j	5a <.L30>
			9c: R_RISCV_RVC_JUMP	.L30
