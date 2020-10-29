
libbl602_wifi/bl_passphrase.o:     file format elf32-littleriscv


Disassembly of section .text.Bl_F:

00000000 <Bl_F>:
   0:	715d                	addi	sp,sp,-80
   2:	c2a6                	sw	s1,68(sp)
   4:	84aa                	mv	s1,a0
   6:	8532                	mv	a0,a2

00000008 <.LVL1>:
   8:	c686                	sw	ra,76(sp)
   a:	c442                	sw	a6,8(sp)
   c:	c4a2                	sw	s0,72(sp)
   e:	c0ca                	sw	s2,64(sp)
  10:	843a                	mv	s0,a4
  12:	892e                	mv	s2,a1
  14:	de4e                	sw	s3,60(sp)
  16:	dc52                	sw	s4,56(sp)
  18:	89b2                	mv	s3,a2
  1a:	da56                	sw	s5,52(sp)
  1c:	d85a                	sw	s6,48(sp)
  1e:	8ac6                	mv	s5,a7
  20:	d65e                	sw	s7,44(sp)
  22:	c636                	sw	a3,12(sp)
  24:	8b3e                	mv	s6,a5
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	strlen
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL1+0x1e>

0000002e <.LVL2>:
  2e:	46b2                	lw	a3,12(sp)
  30:	00440793          	addi	a5,s0,4
  34:	8622                	mv	a2,s0
  36:	85b6                	mv	a1,a3
  38:	8a2a                	mv	s4,a0

0000003a <.LVL3>:
  3a:	8526                	mv	a0,s1

0000003c <.LVL4>:
  3c:	cc3e                	sw	a5,24(sp)
  3e:	ce26                	sw	s1,28(sp)
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memcpy
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL4+0x4>

00000048 <.LVL5>:
  48:	4822                	lw	a6,8(sp)
  4a:	00848733          	add	a4,s1,s0
  4e:	86ce                	mv	a3,s3
  50:	41885793          	srai	a5,a6,0x18
  54:	00f70023          	sb	a5,0(a4)
  58:	41085793          	srai	a5,a6,0x10
  5c:	00f700a3          	sb	a5,1(a4)
  60:	40885793          	srai	a5,a6,0x8
  64:	00f70123          	sb	a5,2(a4)
  68:	010701a3          	sb	a6,3(a4)
  6c:	87ca                	mv	a5,s2
  6e:	4851                	li	a6,20
  70:	8752                	mv	a4,s4
  72:	4605                	li	a2,1
  74:	082c                	addi	a1,sp,24
  76:	0868                	addi	a0,sp,28
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	Bl_hmac_sha1
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL5+0x30>

00000080 <.LVL6>:
  80:	4651                	li	a2,20
  82:	85ca                	mv	a1,s2
  84:	8556                	mv	a0,s5
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	memcpy
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL6+0x6>

0000008e <.LVL7>:
  8e:	4405                	li	s0,1

00000090 <.LVL8>:
  90:	ce4a                	sw	s2,28(sp)

00000092 <.LVL9>:
  92:	4bd1                	li	s7,20

00000094 <.L2>:
  94:	01644d63          	blt	s0,s6,ae <.L4>
			94: R_RISCV_BRANCH	.L4
  98:	40b6                	lw	ra,76(sp)
  9a:	4426                	lw	s0,72(sp)

0000009c <.LVL11>:
  9c:	4496                	lw	s1,68(sp)

0000009e <.LVL12>:
  9e:	4906                	lw	s2,64(sp)

000000a0 <.LVL13>:
  a0:	59f2                	lw	s3,60(sp)

000000a2 <.LVL14>:
  a2:	5a62                	lw	s4,56(sp)

000000a4 <.LVL15>:
  a4:	5ad2                	lw	s5,52(sp)

000000a6 <.LVL16>:
  a6:	5b42                	lw	s6,48(sp)

000000a8 <.LVL17>:
  a8:	5bb2                	lw	s7,44(sp)
  aa:	6161                	addi	sp,sp,80

000000ac <.LVL18>:
  ac:	8082                	ret

000000ae <.L4>:
  ae:	87a6                	mv	a5,s1
  b0:	4851                	li	a6,20
  b2:	8752                	mv	a4,s4
  b4:	86ce                	mv	a3,s3
  b6:	4605                	li	a2,1
  b8:	082c                	addi	a1,sp,24
  ba:	0868                	addi	a0,sp,28
  bc:	cc5e                	sw	s7,24(sp)
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	Bl_hmac_sha1
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.L4+0x10>

000000c6 <.LVL20>:
  c6:	4651                	li	a2,20
  c8:	85a6                	mv	a1,s1
  ca:	854a                	mv	a0,s2
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	memcpy
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.LVL20+0x6>

000000d4 <.LVL21>:
  d4:	4781                	li	a5,0

000000d6 <.L3>:
  d6:	00fa86b3          	add	a3,s5,a5
  da:	00f48733          	add	a4,s1,a5
  de:	00074703          	lbu	a4,0(a4)
  e2:	0006c603          	lbu	a2,0(a3)
  e6:	0785                	addi	a5,a5,1
  e8:	8f31                	xor	a4,a4,a2
  ea:	00e68023          	sb	a4,0(a3)
  ee:	ff7794e3          	bne	a5,s7,d6 <.L3>
			ee: R_RISCV_BRANCH	.L3
  f2:	0405                	addi	s0,s0,1
  f4:	b745                	j	94 <.L2>
			f4: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.Bl_PasswordHash:

00000000 <Bl_PasswordHash>:
   0:	711d                	addi	sp,sp,-96
   2:	cca2                	sw	s0,88(sp)
   4:	caa6                	sw	s1,84(sp)
   6:	c8ca                	sw	s2,80(sp)
   8:	c6ce                	sw	s3,76(sp)
   a:	ce86                	sw	ra,92(sp)
   c:	892a                	mv	s2,a0
   e:	89ae                	mv	s3,a1
  10:	84b2                	mv	s1,a2
  12:	8436                	mv	s0,a3
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	strlen
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <Bl_PasswordHash+0x14>

0000001c <.LVL26>:
  1c:	03f00793          	li	a5,63
  20:	04a7ef63          	bltu	a5,a0,7e <.L9>
			20: R_RISCV_BRANCH	.L9
  24:	02000793          	li	a5,32
  28:	557d                	li	a0,-1
  2a:	0497c363          	blt	a5,s1,70 <.L7>
			2a: R_RISCV_BRANCH	.L7
  2e:	88a2                	mv	a7,s0
  30:	4809                	li	a6,2
  32:	6785                	lui	a5,0x1
  34:	8726                	mv	a4,s1
  36:	86ce                	mv	a3,s3
  38:	864a                	mv	a2,s2
  3a:	002c                	addi	a1,sp,8
  3c:	0868                	addi	a0,sp,28
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	Bl_F
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL26+0x22>

00000046 <.LVL27>:
  46:	4631                	li	a2,12
  48:	85a2                	mv	a1,s0
  4a:	01440513          	addi	a0,s0,20
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memcpy
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL27+0x8>

00000056 <.LVL28>:
  56:	0868                	addi	a0,sp,28
  58:	88a2                	mv	a7,s0
  5a:	4805                	li	a6,1
  5c:	6785                	lui	a5,0x1
  5e:	8726                	mv	a4,s1
  60:	86ce                	mv	a3,s3
  62:	864a                	mv	a2,s2
  64:	002c                	addi	a1,sp,8
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	Bl_F
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL28+0x10>

0000006e <.LVL29>:
  6e:	4501                	li	a0,0

00000070 <.L7>:
  70:	40f6                	lw	ra,92(sp)
  72:	4466                	lw	s0,88(sp)

00000074 <.LVL30>:
  74:	44d6                	lw	s1,84(sp)

00000076 <.LVL31>:
  76:	4946                	lw	s2,80(sp)

00000078 <.LVL32>:
  78:	49b6                	lw	s3,76(sp)

0000007a <.LVL33>:
  7a:	6125                	addi	sp,sp,96
  7c:	8082                	ret

0000007e <.L9>:
  7e:	557d                	li	a0,-1
  80:	bfc5                	j	70 <.L7>
			80: R_RISCV_RVC_JUMP	.L7

Disassembly of section .text.bl60x_fw_password_hash:

00000000 <bl60x_fw_password_hash>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	Bl_PasswordHash
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <bl60x_fw_password_hash>
