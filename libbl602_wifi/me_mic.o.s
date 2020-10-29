
libbl602_wifi/me_mic.o:     file format elf32-littleriscv


Disassembly of section .text.michael_block:

00000000 <michael_block>:
   0:	411c                	lw	a5,0(a0)

00000002 <.LVL1>:
   2:	4158                	lw	a4,4(a0)

00000004 <.LVL2>:
   4:	ff010637          	lui	a2,0xff010
   8:	8dbd                	xor	a1,a1,a5

0000000a <.LVL3>:
   a:	01159693          	slli	a3,a1,0x11
   e:	00f5d793          	srli	a5,a1,0xf
  12:	8fd5                	or	a5,a5,a3
  14:	8f3d                	xor	a4,a4,a5
  16:	95ba                	add	a1,a1,a4
  18:	00ff06b7          	lui	a3,0xff0
  1c:	0085d793          	srli	a5,a1,0x8
  20:	0ff68693          	addi	a3,a3,255 # ff00ff <.LASF143+0xfef9b1>
  24:	8ff5                	and	a5,a5,a3
  26:	f0060613          	addi	a2,a2,-256 # ff00ff00 <.LASF143+0xff00f7b2>
  2a:	00859693          	slli	a3,a1,0x8
  2e:	8ef1                	and	a3,a3,a2
  30:	8fd5                	or	a5,a5,a3
  32:	8fb9                	xor	a5,a5,a4

00000034 <.LVL6>:
  34:	95be                	add	a1,a1,a5
  36:	01d5d693          	srli	a3,a1,0x1d
  3a:	00359713          	slli	a4,a1,0x3
  3e:	8f55                	or	a4,a4,a3
  40:	8f3d                	xor	a4,a4,a5

00000042 <.LVL8>:
  42:	95ba                	add	a1,a1,a4
  44:	0025d793          	srli	a5,a1,0x2
  48:	01e59693          	slli	a3,a1,0x1e
  4c:	8fd5                	or	a5,a5,a3
  4e:	8fb9                	xor	a5,a5,a4

00000050 <.LVL10>:
  50:	95be                	add	a1,a1,a5

00000052 <.LVL11>:
  52:	c15c                	sw	a5,4(a0)
  54:	c10c                	sw	a1,0(a0)
  56:	8082                	ret

Disassembly of section .text.me_mic_init:

00000000 <me_mic_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	84aa                	mv	s1,a0
   e:	00164503          	lbu	a0,1(a2)

00000012 <.LVL13>:
  12:	00064783          	lbu	a5,0(a2)
  16:	0016c403          	lbu	s0,1(a3)
  1a:	0522                	slli	a0,a0,0x8
  1c:	8d5d                	or	a0,a0,a5
  1e:	00264783          	lbu	a5,2(a2)
  22:	0422                	slli	s0,s0,0x8
  24:	0026c903          	lbu	s2,2(a3)
  28:	07c2                	slli	a5,a5,0x10
  2a:	8d5d                	or	a0,a0,a5
  2c:	00364783          	lbu	a5,3(a2)
  30:	00777993          	andi	s3,a4,7
  34:	07e2                	slli	a5,a5,0x18
  36:	8fc9                	or	a5,a5,a0
  38:	0006c503          	lbu	a0,0(a3)
  3c:	8c49                	or	s0,s0,a0
  3e:	00464503          	lbu	a0,4(a2)
  42:	00564603          	lbu	a2,5(a2)

00000046 <.LVL14>:
  46:	0442                	slli	s0,s0,0x10
  48:	0622                	slli	a2,a2,0x8
  4a:	8e49                	or	a2,a2,a0
  4c:	8c51                	or	s0,s0,a2
  4e:	0036c603          	lbu	a2,3(a3)
  52:	0622                	slli	a2,a2,0x8
  54:	01266633          	or	a2,a2,s2
  58:	0046c903          	lbu	s2,4(a3)
  5c:	0942                	slli	s2,s2,0x10
  5e:	00c96633          	or	a2,s2,a2
  62:	0056c903          	lbu	s2,5(a3)
  66:	0ff00693          	li	a3,255

0000006a <.LVL15>:
  6a:	0962                	slli	s2,s2,0x18
  6c:	00c96933          	or	s2,s2,a2
  70:	00d71363          	bne	a4,a3,76 <.L3>
			70: R_RISCV_BRANCH	.L3
  74:	4981                	li	s3,0

00000076 <.L3>:
  76:	4198                	lw	a4,0(a1)

00000078 <.LVL17>:
  78:	8526                	mv	a0,s1
  7a:	c098                	sw	a4,0(s1)
  7c:	41d8                	lw	a4,4(a1)
  7e:	85be                	mv	a1,a5

00000080 <.LVL18>:
  80:	0004a423          	sw	zero,8(s1)
  84:	c0d8                	sw	a4,4(s1)
  86:	00048623          	sb	zero,12(s1)
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	michael_block
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.LVL18+0xa>

00000092 <.LVL19>:
  92:	85a2                	mv	a1,s0
  94:	8526                	mv	a0,s1
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	michael_block
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LVL19+0x4>

0000009e <.LVL20>:
  9e:	85ca                	mv	a1,s2
  a0:	8526                	mv	a0,s1
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	michael_block
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL20+0x4>

000000aa <.LBE4>:
  aa:	4462                	lw	s0,24(sp)
  ac:	40f2                	lw	ra,28(sp)
  ae:	4942                	lw	s2,16(sp)

000000b0 <.LBB8>:
  b0:	85ce                	mv	a1,s3
  b2:	8526                	mv	a0,s1

000000b4 <.LBE8>:
  b4:	49b2                	lw	s3,12(sp)

000000b6 <.LVL22>:
  b6:	44d2                	lw	s1,20(sp)

000000b8 <.LVL23>:
  b8:	6105                	addi	sp,sp,32

000000ba <.LBB9>:
  ba:	00000317          	auipc	t1,0x0
			ba: R_RISCV_CALL	michael_block
			ba: R_RISCV_RELAX	*ABS*
  be:	00030067          	jr	t1 # ba <.LBB9>

Disassembly of section .text.me_mic_calc:

00000000 <me_mic_calc>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	ce4e                	sw	s3,28(sp)
   6:	cc52                	sw	s4,24(sp)
   8:	c462                	sw	s8,8(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	c65e                	sw	s7,12(sp)
  16:	c266                	sw	s9,4(sp)
  18:	c06a                	sw	s10,0(sp)

0000001a <.LBB25>:
  1a:	ffc5f793          	andi	a5,a1,-4

0000001e <.LVL26>:
  1e:	00478a13          	addi	s4,a5,4

00000022 <.LVL27>:
  22:	898d                	andi	a1,a1,3

00000024 <.LVL28>:
  24:	439c                	lw	a5,0(a5)

00000026 <.LVL29>:
  26:	4411                	li	s0,4
  28:	8c0d                	sub	s0,s0,a1
  2a:	0ff47413          	andi	s0,s0,255

0000002e <.LVL30>:
  2e:	058e                	slli	a1,a1,0x3

00000030 <.LBE25>:
  30:	89aa                	mv	s3,a0

00000032 <.LBB26>:
  32:	00c54683          	lbu	a3,12(a0)

00000036 <.LVL32>:
  36:	00b7d5b3          	srl	a1,a5,a1
  3a:	4508                	lw	a0,8(a0)

0000003c <.LVL33>:
  3c:	40860c33          	sub	s8,a2,s0
  40:	00867c63          	bgeu	a2,s0,58 <.L9>
			40: R_RISCV_BRANCH	.L9
  44:	4791                	li	a5,4
  46:	8f91                	sub	a5,a5,a2
  48:	078e                	slli	a5,a5,0x3
  4a:	577d                	li	a4,-1
  4c:	00f757b3          	srl	a5,a4,a5
  50:	8dfd                	and	a1,a1,a5
  52:	0ff67413          	andi	s0,a2,255

00000056 <.LVL35>:
  56:	4c01                	li	s8,0

00000058 <.L9>:
  58:	00369493          	slli	s1,a3,0x3
  5c:	009594b3          	sll	s1,a1,s1
  60:	9436                	add	s0,s0,a3

00000062 <.LVL37>:
  62:	478d                	li	a5,3
  64:	8cc9                	or	s1,s1,a0
  66:	0287f463          	bgeu	a5,s0,8e <.L10>
			66: R_RISCV_BRANCH	.L10

0000006a <.LVL38>:
  6a:	4711                	li	a4,4
  6c:	8f15                	sub	a4,a4,a3
  6e:	070e                	slli	a4,a4,0x3
  70:	02000793          	li	a5,32
  74:	4901                	li	s2,0
  76:	00f70463          	beq	a4,a5,7e <.L11>
			76: R_RISCV_BRANCH	.L11
  7a:	00e5d933          	srl	s2,a1,a4

0000007e <.L11>:
  7e:	85a6                	mv	a1,s1

00000080 <.LVL40>:
  80:	854e                	mv	a0,s3
  82:	1471                	addi	s0,s0,-4

00000084 <.LVL41>:
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	michael_block
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL41>

0000008c <.LVL42>:
  8c:	84ca                	mv	s1,s2

0000008e <.L10>:
  8e:	4911                	li	s2,4
  90:	40890933          	sub	s2,s2,s0

00000094 <.LBE16>:
  94:	002c5b13          	srli	s6,s8,0x2

00000098 <.LBB17>:
  98:	00341a93          	slli	s5,s0,0x3
  9c:	090e                	slli	s2,s2,0x3

0000009e <.LBE17>:
  9e:	8752                	mv	a4,s4

000000a0 <.LBB18>:
  a0:	4b81                	li	s7,0
  a2:	02000c93          	li	s9,32

000000a6 <.L12>:
  a6:	097b1263          	bne	s6,s7,12a <.L14>
			a6: R_RISCV_BRANCH	.L14
  aa:	0b0a                	slli	s6,s6,0x2

000000ac <.LBE18>:
  ac:	ffcc7793          	andi	a5,s8,-4
  b0:	9a5a                	add	s4,s4,s6
  b2:	0587fa63          	bgeu	a5,s8,106 <.L15>
			b2: R_RISCV_BRANCH	.L15

000000b6 <.LBB19>:
  b6:	003c7793          	andi	a5,s8,3

000000ba <.LVL47>:
  ba:	4711                	li	a4,4

000000bc <.LVL48>:
  bc:	8f1d                	sub	a4,a4,a5
  be:	070e                	slli	a4,a4,0x3
  c0:	02000593          	li	a1,32
  c4:	000a2683          	lw	a3,0(s4)
  c8:	4601                	li	a2,0
  ca:	00b70563          	beq	a4,a1,d4 <.L16>
			ca: R_RISCV_BRANCH	.L16
  ce:	567d                	li	a2,-1
  d0:	00e65633          	srl	a2,a2,a4

000000d4 <.L16>:
  d4:	00c6f733          	and	a4,a3,a2

000000d8 <.LVL49>:
  d8:	943e                	add	s0,s0,a5

000000da <.LVL50>:
  da:	01571ab3          	sll	s5,a4,s5
  de:	478d                	li	a5,3

000000e0 <.LVL51>:
  e0:	0154e4b3          	or	s1,s1,s5

000000e4 <.LVL52>:
  e4:	0287f163          	bgeu	a5,s0,106 <.L15>
			e4: R_RISCV_BRANCH	.L15

000000e8 <.LVL53>:
  e8:	02000793          	li	a5,32
  ec:	4a01                	li	s4,0
  ee:	00f90463          	beq	s2,a5,f6 <.L17>
			ee: R_RISCV_BRANCH	.L17
  f2:	01275a33          	srl	s4,a4,s2

000000f6 <.L17>:
  f6:	85a6                	mv	a1,s1
  f8:	854e                	mv	a0,s3
  fa:	1471                	addi	s0,s0,-4

000000fc <.LVL55>:
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	michael_block
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL55>

00000104 <.LVL56>:
 104:	84d2                	mv	s1,s4

00000106 <.L15>:
 106:	00898623          	sb	s0,12(s3)

0000010a <.LBE26>:
 10a:	50b2                	lw	ra,44(sp)
 10c:	5422                	lw	s0,40(sp)

0000010e <.LBB27>:
 10e:	0099a423          	sw	s1,8(s3)

00000112 <.LBE27>:
 112:	5902                	lw	s2,32(sp)
 114:	5492                	lw	s1,36(sp)
 116:	49f2                	lw	s3,28(sp)

00000118 <.LVL60>:
 118:	4a62                	lw	s4,24(sp)
 11a:	4ad2                	lw	s5,20(sp)
 11c:	4b42                	lw	s6,16(sp)
 11e:	4bb2                	lw	s7,12(sp)
 120:	4c22                	lw	s8,8(sp)
 122:	4c92                	lw	s9,4(sp)
 124:	4d02                	lw	s10,0(sp)
 126:	6145                	addi	sp,sp,48
 128:	8082                	ret

0000012a <.L14>:
 12a:	431c                	lw	a5,0(a4)
 12c:	00470d13          	addi	s10,a4,4

00000130 <.LVL62>:
 130:	015795b3          	sll	a1,a5,s5
 134:	8dc5                	or	a1,a1,s1

00000136 <.LVL63>:
 136:	4481                	li	s1,0

00000138 <.LVL64>:
 138:	01990463          	beq	s2,s9,140 <.L13>
			138: R_RISCV_BRANCH	.L13
 13c:	0127d4b3          	srl	s1,a5,s2

00000140 <.L13>:
 140:	854e                	mv	a0,s3
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	michael_block
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.L13+0x2>

0000014a <.LVL66>:
 14a:	0b85                	addi	s7,s7,1
 14c:	876a                	mv	a4,s10
 14e:	bfa1                	j	a6 <.L12>
			14e: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.me_mic_end:

00000000 <me_mic_end>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)

00000008 <.LBB37>:
   8:	00c54703          	lbu	a4,12(a0)
   c:	478d                	li	a5,3

0000000e <.LBE37>:
   e:	842a                	mv	s0,a0

00000010 <.LBB38>:
  10:	4504                	lw	s1,8(a0)

00000012 <.LVL69>:
  12:	02e7f063          	bgeu	a5,a4,32 <.L24>
			12: R_RISCV_BRANCH	.L24
  16:	000005b7          	lui	a1,0x0
			16: R_RISCV_HI20	.LC0
			16: R_RISCV_RELAX	*ABS*
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LC1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL70>:
  1e:	13e00613          	li	a2,318
  22:	00058593          	mv	a1,a1
			22: R_RISCV_LO12_I	.LC0
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC1
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	assert_err
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL70+0xc>

00000032 <.L24>:
  32:	00c44583          	lbu	a1,12(s0)
  36:	8522                	mv	a0,s0
  38:	00359793          	slli	a5,a1,0x3
  3c:	05a00593          	li	a1,90
  40:	00f595b3          	sll	a1,a1,a5
  44:	8dc5                	or	a1,a1,s1
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	michael_block
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L24+0x14>

0000004e <.LVL72>:
  4e:	8522                	mv	a0,s0

00000050 <.LBE38>:
  50:	4422                	lw	s0,8(sp)

00000052 <.LVL73>:
  52:	40b2                	lw	ra,12(sp)
  54:	4492                	lw	s1,4(sp)

00000056 <.LBB39>:
  56:	4581                	li	a1,0

00000058 <.LBE39>:
  58:	0141                	addi	sp,sp,16

0000005a <.LBB40>:
  5a:	00000317          	auipc	t1,0x0
			5a: R_RISCV_CALL	michael_block
			5a: R_RISCV_RELAX	*ABS*
  5e:	00030067          	jr	t1 # 5a <.LBB40>
