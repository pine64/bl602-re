
libbl602_wifi/sha256.o:     file format elf32-littleriscv


Disassembly of section .text.sha256_compress:

00000000 <sha256_compress>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	00850493          	addi	s1,a0,8
   a:	10060913          	addi	s2,a2,256

0000000e <.LVL1>:
   e:	cc22                	sw	s0,24(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c452                	sw	s4,8(sp)
  14:	8432                	mv	s0,a2
  16:	8a2e                	mv	s4,a1
  18:	02000613          	li	a2,32

0000001c <.LVL2>:
  1c:	89aa                	mv	s3,a0
  1e:	85a6                	mv	a1,s1

00000020 <.LVL3>:
  20:	854a                	mv	a0,s2

00000022 <.LVL4>:
  22:	ce06                	sw	ra,28(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	memcpy
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL4+0x2>

0000002c <.LVL5>:
  2c:	040a0613          	addi	a2,s4,64
  30:	86a2                	mv	a3,s0

00000032 <.L2>:
  32:	001a4783          	lbu	a5,1(s4)
  36:	000a4703          	lbu	a4,0(s4)
  3a:	0a11                	addi	s4,s4,4

0000003c <.LVL7>:
  3c:	07a2                	slli	a5,a5,0x8
  3e:	8fd9                	or	a5,a5,a4
  40:	00879713          	slli	a4,a5,0x8
  44:	83a1                	srli	a5,a5,0x8
  46:	8fd9                	or	a5,a5,a4
  48:	07c2                	slli	a5,a5,0x10
  4a:	ffea4703          	lbu	a4,-2(s4)
  4e:	83c1                	srli	a5,a5,0x10

00000050 <.LVL8>:
  50:	07a2                	slli	a5,a5,0x8

00000052 <.LVL9>:
  52:	8fd9                	or	a5,a5,a4

00000054 <.LVL10>:
  54:	fffa4703          	lbu	a4,-1(s4)

00000058 <.LVL11>:
  58:	07a2                	slli	a5,a5,0x8

0000005a <.LVL12>:
  5a:	0691                	addi	a3,a3,4
  5c:	8fd9                	or	a5,a5,a4

0000005e <.LVL14>:
  5e:	fef6ae23          	sw	a5,-4(a3)

00000062 <.LBE2>:
  62:	fcca18e3          	bne	s4,a2,32 <.L2>
			62: R_RISCV_BRANCH	.L2
  66:	04040713          	addi	a4,s0,64

0000006a <.L3>:
  6a:	ff872683          	lw	a3,-8(a4)
  6e:	fc472603          	lw	a2,-60(a4)
  72:	0711                	addi	a4,a4,4

00000074 <.LVL17>:
  74:	0116d593          	srli	a1,a3,0x11
  78:	00f69793          	slli	a5,a3,0xf
  7c:	0136d513          	srli	a0,a3,0x13
  80:	8fcd                	or	a5,a5,a1
  82:	00d69593          	slli	a1,a3,0xd
  86:	8dc9                	or	a1,a1,a0
  88:	8fad                	xor	a5,a5,a1
  8a:	82a9                	srli	a3,a3,0xa
  8c:	fbc72583          	lw	a1,-68(a4)
  90:	8fb5                	xor	a5,a5,a3
  92:	fe072683          	lw	a3,-32(a4)
  96:	01265513          	srli	a0,a2,0x12
  9a:	96ae                	add	a3,a3,a1
  9c:	97b6                	add	a5,a5,a3
  9e:	01961593          	slli	a1,a2,0x19
  a2:	00765693          	srli	a3,a2,0x7
  a6:	8ecd                	or	a3,a3,a1
  a8:	00e61593          	slli	a1,a2,0xe
  ac:	8dc9                	or	a1,a1,a0
  ae:	8ead                	xor	a3,a3,a1
  b0:	820d                	srli	a2,a2,0x3
  b2:	8eb1                	xor	a3,a3,a2
  b4:	97b6                	add	a5,a5,a3
  b6:	fef72e23          	sw	a5,-4(a4)

000000ba <.LVL18>:
  ba:	fae918e3          	bne	s2,a4,6a <.L3>
			ba: R_RISCV_BRANCH	.L3
  be:	00000537          	lui	a0,0x0
			be: R_RISCV_HI20	.LANCHOR0
			be: R_RISCV_RELAX	*ABS*
  c2:	4581                	li	a1,0
  c4:	00050513          	mv	a0,a0
			c4: R_RISCV_LO12_I	.LANCHOR0
			c4: R_RISCV_RELAX	*ABS*
  c8:	10000813          	li	a6,256

000000cc <.L4>:
  cc:	11042603          	lw	a2,272(s0)
  d0:	11842e03          	lw	t3,280(s0)
  d4:	11442e83          	lw	t4,276(s0)
  d8:	01a61713          	slli	a4,a2,0x1a
  dc:	00665793          	srli	a5,a2,0x6
  e0:	01561693          	slli	a3,a2,0x15
  e4:	8fd9                	or	a5,a5,a4
  e6:	00b65713          	srli	a4,a2,0xb
  ea:	8f55                	or	a4,a4,a3
  ec:	8fb9                	xor	a5,a5,a4
  ee:	01965693          	srli	a3,a2,0x19
  f2:	00761713          	slli	a4,a2,0x7
  f6:	8f55                	or	a4,a4,a3
  f8:	8fb9                	xor	a5,a5,a4
  fa:	01de4733          	xor	a4,t3,t4
  fe:	8f71                	and	a4,a4,a2
 100:	01c74733          	xor	a4,a4,t3
 104:	97ba                	add	a5,a5,a4
 106:	11c42703          	lw	a4,284(s0)
 10a:	10042683          	lw	a3,256(s0)
 10e:	10c42303          	lw	t1,268(s0)
 112:	97ba                	add	a5,a5,a4
 114:	00b50733          	add	a4,a0,a1
 118:	4318                	lw	a4,0(a4)
 11a:	10442883          	lw	a7,260(s0)
 11e:	10842f03          	lw	t5,264(s0)
 122:	97ba                	add	a5,a5,a4
 124:	00b40733          	add	a4,s0,a1
 128:	4318                	lw	a4,0(a4)
 12a:	10c42a23          	sw	a2,276(s0)
 12e:	01e69613          	slli	a2,a3,0x1e
 132:	97ba                	add	a5,a5,a4

00000134 <.LVL20>:
 134:	933e                	add	t1,t1,a5

00000136 <.LVL21>:
 136:	0026d713          	srli	a4,a3,0x2
 13a:	8f51                	or	a4,a4,a2
 13c:	10642823          	sw	t1,272(s0)
 140:	01369613          	slli	a2,a3,0x13
 144:	00d6d313          	srli	t1,a3,0xd
 148:	00c36333          	or	t1,t1,a2
 14c:	00674733          	xor	a4,a4,t1
 150:	0166d613          	srli	a2,a3,0x16
 154:	00a69313          	slli	t1,a3,0xa
 158:	00c36333          	or	t1,t1,a2
 15c:	0116e633          	or	a2,a3,a7

00000160 <.LVL22>:
 160:	10d42223          	sw	a3,260(s0)
 164:	01e67633          	and	a2,a2,t5

00000168 <.LVL23>:
 168:	0116f6b3          	and	a3,a3,a7

0000016c <.LVL24>:
 16c:	00674733          	xor	a4,a4,t1
 170:	8ed1                	or	a3,a3,a2
 172:	9736                	add	a4,a4,a3
 174:	97ba                	add	a5,a5,a4

00000176 <.LVL25>:
 176:	11c42e23          	sw	t3,284(s0)
 17a:	11d42c23          	sw	t4,280(s0)
 17e:	11e42623          	sw	t5,268(s0)
 182:	11142423          	sw	a7,264(s0)
 186:	10f42023          	sw	a5,256(s0)

0000018a <.LVL26>:
 18a:	0591                	addi	a1,a1,4
 18c:	f50590e3          	bne	a1,a6,cc <.L4>
			18c: R_RISCV_BRANCH	.L4
 190:	02898993          	addi	s3,s3,40

00000194 <.L5>:
 194:	409c                	lw	a5,0(s1)
 196:	00092703          	lw	a4,0(s2)
 19a:	0491                	addi	s1,s1,4
 19c:	0911                	addi	s2,s2,4
 19e:	97ba                	add	a5,a5,a4
 1a0:	fef4ae23          	sw	a5,-4(s1)
 1a4:	fe9998e3          	bne	s3,s1,194 <.L5>
			1a4: R_RISCV_BRANCH	.L5
 1a8:	40f2                	lw	ra,28(sp)
 1aa:	4462                	lw	s0,24(sp)

000001ac <.LVL28>:
 1ac:	44d2                	lw	s1,20(sp)
 1ae:	4942                	lw	s2,16(sp)
 1b0:	49b2                	lw	s3,12(sp)

000001b2 <.LVL29>:
 1b2:	4a22                	lw	s4,8(sp)

000001b4 <.LVL30>:
 1b4:	4501                	li	a0,0
 1b6:	6105                	addi	sp,sp,32
 1b8:	8082                	ret

Disassembly of section .text.sha256_init:

00000000 <sha256_init>:
   0:	4781                	li	a5,0
   2:	c11c                	sw	a5,0(a0)
   4:	6a09e7b7          	lui	a5,0x6a09e
   8:	66778793          	addi	a5,a5,1639 # 6a09e667 <.LLST41+0x6a09db44>
   c:	c51c                	sw	a5,8(a0)
   e:	bb67b7b7          	lui	a5,0xbb67b
  12:	e8578793          	addi	a5,a5,-379 # bb67ae85 <.LLST41+0xbb67a362>
  16:	c55c                	sw	a5,12(a0)
  18:	3c6ef7b7          	lui	a5,0x3c6ef
  1c:	37278793          	addi	a5,a5,882 # 3c6ef372 <.LLST41+0x3c6ee84f>
  20:	c91c                	sw	a5,16(a0)
  22:	a54ff7b7          	lui	a5,0xa54ff
  26:	53a78793          	addi	a5,a5,1338 # a54ff53a <.LLST41+0xa54fea17>
  2a:	c95c                	sw	a5,20(a0)
  2c:	510e57b7          	lui	a5,0x510e5
  30:	27f78793          	addi	a5,a5,639 # 510e527f <.LLST41+0x510e475c>
  34:	cd1c                	sw	a5,24(a0)
  36:	9b0577b7          	lui	a5,0x9b057
  3a:	88c78793          	addi	a5,a5,-1908 # 9b05688c <.LLST41+0x9b055d69>
  3e:	cd5c                	sw	a5,28(a0)
  40:	1f83e7b7          	lui	a5,0x1f83e
  44:	9ab78793          	addi	a5,a5,-1621 # 1f83d9ab <.LLST41+0x1f83ce88>
  48:	d11c                	sw	a5,32(a0)
  4a:	5be0d7b7          	lui	a5,0x5be0d
  4e:	4801                	li	a6,0
  50:	d1978793          	addi	a5,a5,-743 # 5be0cd19 <.LLST41+0x5be0c1f6>
  54:	02052423          	sw	zero,40(a0) # 28 <sha256_init+0x28>
  58:	01052223          	sw	a6,4(a0)
  5c:	d15c                	sw	a5,36(a0)
  5e:	8082                	ret

Disassembly of section .text.sha256_vector:

00000000 <sha256_vector>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	da56                	sw	s5,52(sp)
   6:	843a                	mv	s0,a4
   8:	8aaa                	mv	s5,a0
   a:	853a                	mv	a0,a4

0000000c <.LVL33>:
   c:	c0ca                	sw	s2,64(sp)
   e:	dc52                	sw	s4,56(sp)
  10:	d85a                	sw	s6,48(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	d462                	sw	s8,40(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	c686                	sw	ra,76(sp)
  1c:	c2a6                	sw	s1,68(sp)
  1e:	de4e                	sw	s3,60(sp)
  20:	ce6e                	sw	s11,28(sp)
  22:	c62e                	sw	a1,12(sp)
  24:	8cb2                	mv	s9,a2
  26:	8936                	mv	s2,a3
  28:	07070a13          	addi	s4,a4,112

0000002c <.LVL34>:
  2c:	0a8a                	slli	s5,s5,0x2

0000002e <.LVL35>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	sha256_init
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL35>

00000036 <.LVL36>:
  36:	4c01                	li	s8,0

00000038 <.LBB7>:
  38:	04000b13          	li	s6,64
  3c:	02c40b93          	addi	s7,s0,44
  40:	03f00d13          	li	s10,63

00000044 <.L13>:
  44:	541c                	lw	a5,40(s0)

00000046 <.LBE7>:
  46:	0f5c1d63          	bne	s8,s5,140 <.L20>
			46: R_RISCV_BRANCH	.L20

0000004a <.LBB10>:
  4a:	03f00713          	li	a4,63
  4e:	0cf76a63          	bltu	a4,a5,122 <.L12>
			4e: R_RISCV_BRANCH	.L12
  52:	4018                	lw	a4,0(s0)
  54:	4050                	lw	a2,4(s0)
  56:	00379693          	slli	a3,a5,0x3
  5a:	96ba                	add	a3,a3,a4
  5c:	00e6b733          	sltu	a4,a3,a4
  60:	9732                	add	a4,a4,a2
  62:	c058                	sw	a4,4(s0)
  64:	00178713          	addi	a4,a5,1
  68:	c014                	sw	a3,0(s0)
  6a:	97a2                	add	a5,a5,s0
  6c:	d418                	sw	a4,40(s0)
  6e:	f8000693          	li	a3,-128
  72:	02d78623          	sb	a3,44(a5)
  76:	03800793          	li	a5,56
  7a:	02e7f163          	bgeu	a5,a4,9c <.L23>
			7a: R_RISCV_BRANCH	.L23
  7e:	03f00713          	li	a4,63

00000082 <.L22>:
  82:	541c                	lw	a5,40(s0)
  84:	14f77f63          	bgeu	a4,a5,1e2 <.L24>
			84: R_RISCV_BRANCH	.L24
  88:	8652                	mv	a2,s4
  8a:	02c40593          	addi	a1,s0,44
  8e:	8522                	mv	a0,s0
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	sha256_compress
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L22+0xe>

00000098 <.LVL39>:
  98:	02042423          	sw	zero,40(s0)

0000009c <.L23>:
  9c:	03700713          	li	a4,55

000000a0 <.L25>:
  a0:	541c                	lw	a5,40(s0)
  a2:	14f77763          	bgeu	a4,a5,1f0 <.L26>
			a2: R_RISCV_BRANCH	.L26

000000a6 <.LVL40>:
  a6:	401c                	lw	a5,0(s0)

000000a8 <.LVL41>:
  a8:	02c40593          	addi	a1,s0,44
  ac:	8522                	mv	a0,s0
  ae:	0187d713          	srli	a4,a5,0x18
  b2:	06e40423          	sb	a4,104(s0)
  b6:	0107d713          	srli	a4,a5,0x10
  ba:	06e404a3          	sb	a4,105(s0)
  be:	06f405a3          	sb	a5,107(s0)
  c2:	0087d713          	srli	a4,a5,0x8
  c6:	405c                	lw	a5,4(s0)

000000c8 <.LVL42>:
  c8:	06e40523          	sb	a4,106(s0)

000000cc <.LVL43>:
  cc:	8652                	mv	a2,s4
  ce:	0187d713          	srli	a4,a5,0x18
  d2:	06e40223          	sb	a4,100(s0)
  d6:	0107d713          	srli	a4,a5,0x10
  da:	06e402a3          	sb	a4,101(s0)
  de:	0087d713          	srli	a4,a5,0x8
  e2:	06f403a3          	sb	a5,103(s0)
  e6:	06e40323          	sb	a4,102(s0)

000000ea <.LVL44>:
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	sha256_compress
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL44>

000000f2 <.LVL45>:
  f2:	00840793          	addi	a5,s0,8

000000f6 <.LVL46>:
  f6:	02840413          	addi	s0,s0,40

000000fa <.L27>:
  fa:	0791                	addi	a5,a5,4
  fc:	ffc7a703          	lw	a4,-4(a5)

00000100 <.LVL49>:
 100:	0911                	addi	s2,s2,4

00000102 <.LVL50>:
 102:	01875693          	srli	a3,a4,0x18
 106:	fed90e23          	sb	a3,-4(s2)
 10a:	01075693          	srli	a3,a4,0x10
 10e:	fed90ea3          	sb	a3,-3(s2)
 112:	00875693          	srli	a3,a4,0x8
 116:	fed90f23          	sb	a3,-2(s2)
 11a:	fee90fa3          	sb	a4,-1(s2)

0000011e <.LVL51>:
 11e:	fc879ee3          	bne	a5,s0,fa <.L27>
			11e: R_RISCV_BRANCH	.L27

00000122 <.L12>:
 122:	40b6                	lw	ra,76(sp)
 124:	4426                	lw	s0,72(sp)
 126:	4496                	lw	s1,68(sp)
 128:	4906                	lw	s2,64(sp)

0000012a <.LVL53>:
 12a:	59f2                	lw	s3,60(sp)
 12c:	5a62                	lw	s4,56(sp)

0000012e <.LVL54>:
 12e:	5ad2                	lw	s5,52(sp)
 130:	5b42                	lw	s6,48(sp)
 132:	5bb2                	lw	s7,44(sp)

00000134 <.LVL55>:
 134:	5c22                	lw	s8,40(sp)
 136:	5c92                	lw	s9,36(sp)

00000138 <.LVL56>:
 138:	5d02                	lw	s10,32(sp)
 13a:	4df2                	lw	s11,28(sp)
 13c:	6161                	addi	sp,sp,80

0000013e <.LVL57>:
 13e:	8082                	ret

00000140 <.L20>:
 140:	4732                	lw	a4,12(sp)
 142:	018706b3          	add	a3,a4,s8
 146:	0006a983          	lw	s3,0(a3)
 14a:	018c86b3          	add	a3,s9,s8
 14e:	4284                	lw	s1,0(a3)

00000150 <.LBB13>:
 150:	02fb7d63          	bgeu	s6,a5,18a <.L14>
			150: R_RISCV_BRANCH	.L14

00000154 <.L16>:
 154:	0c11                	addi	s8,s8,4
 156:	b5fd                	j	44 <.L13>
			156: R_RISCV_RVC_JUMP	.L13

00000158 <.L19>:
 158:	ed05                	bnez	a0,190 <.L15>
			158: R_RISCV_RVC_BRANCH	.L15
 15a:	029d7b63          	bgeu	s10,s1,190 <.L15>
			15a: R_RISCV_BRANCH	.L15
 15e:	8652                	mv	a2,s4
 160:	85ce                	mv	a1,s3
 162:	8522                	mv	a0,s0
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	sha256_compress
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.L19+0xc>

0000016c <.LVL62>:
 16c:	fe0544e3          	bltz	a0,154 <.L16>
			16c: R_RISCV_BRANCH	.L16
 170:	401c                	lw	a5,0(s0)
 172:	4050                	lw	a2,4(s0)
 174:	04098993          	addi	s3,s3,64

00000178 <.LVL63>:
 178:	20078693          	addi	a3,a5,512
 17c:	00f6b7b3          	sltu	a5,a3,a5
 180:	97b2                	add	a5,a5,a2
 182:	c014                	sw	a3,0(s0)
 184:	c05c                	sw	a5,4(s0)

00000186 <.LVL64>:
 186:	fc048493          	addi	s1,s1,-64

0000018a <.L14>:
 18a:	5408                	lw	a0,40(s0)
 18c:	f4f1                	bnez	s1,158 <.L19>
			18c: R_RISCV_RVC_BRANCH	.L19
 18e:	b7d9                	j	154 <.L16>
			18e: R_RISCV_RVC_JUMP	.L16

00000190 <.L15>:
 190:	40ab0db3          	sub	s11,s6,a0
 194:	01b4f363          	bgeu	s1,s11,19a <.L18>
			194: R_RISCV_BRANCH	.L18
 198:	8da6                	mv	s11,s1

0000019a <.L18>:
 19a:	85ce                	mv	a1,s3
 19c:	866e                	mv	a2,s11
 19e:	955e                	add	a0,a0,s7
 1a0:	00000097          	auipc	ra,0x0
			1a0: R_RISCV_CALL	memcpy
			1a0: R_RISCV_RELAX	*ABS*
 1a4:	000080e7          	jalr	ra # 1a0 <.L18+0x6>

000001a8 <.LVL67>:
 1a8:	541c                	lw	a5,40(s0)
 1aa:	99ee                	add	s3,s3,s11

000001ac <.LVL68>:
 1ac:	41b484b3          	sub	s1,s1,s11

000001b0 <.LVL69>:
 1b0:	97ee                	add	a5,a5,s11
 1b2:	d41c                	sw	a5,40(s0)

000001b4 <.LVL70>:
 1b4:	fd679be3          	bne	a5,s6,18a <.L14>
			1b4: R_RISCV_BRANCH	.L14
 1b8:	8652                	mv	a2,s4
 1ba:	85de                	mv	a1,s7
 1bc:	8522                	mv	a0,s0
 1be:	00000097          	auipc	ra,0x0
			1be: R_RISCV_CALL	sha256_compress
			1be: R_RISCV_RELAX	*ABS*
 1c2:	000080e7          	jalr	ra # 1be <.LVL70+0xa>

000001c6 <.LVL71>:
 1c6:	f80547e3          	bltz	a0,154 <.L16>
			1c6: R_RISCV_BRANCH	.L16
 1ca:	401c                	lw	a5,0(s0)
 1cc:	4050                	lw	a2,4(s0)
 1ce:	02042423          	sw	zero,40(s0)
 1d2:	20078693          	addi	a3,a5,512
 1d6:	00f6b7b3          	sltu	a5,a3,a5
 1da:	97b2                	add	a5,a5,a2
 1dc:	c014                	sw	a3,0(s0)
 1de:	c05c                	sw	a5,4(s0)
 1e0:	b76d                	j	18a <.L14>
			1e0: R_RISCV_RVC_JUMP	.L14

000001e2 <.L24>:
 1e2:	00178693          	addi	a3,a5,1
 1e6:	d414                	sw	a3,40(s0)
 1e8:	97a2                	add	a5,a5,s0
 1ea:	02078623          	sb	zero,44(a5)
 1ee:	bd51                	j	82 <.L22>
			1ee: R_RISCV_RVC_JUMP	.L22

000001f0 <.L26>:
 1f0:	00178693          	addi	a3,a5,1
 1f4:	d414                	sw	a3,40(s0)
 1f6:	97a2                	add	a5,a5,s0
 1f8:	02078623          	sb	zero,44(a5)
 1fc:	b555                	j	a0 <.L25>
			1fc: R_RISCV_RVC_JUMP	.L25

Disassembly of section .text.hmac_sha256_vector:

00000000 <hmac_sha256_vector>:
   0:	da010113          	addi	sp,sp,-608

00000004 <.LVL74>:
   4:	24812c23          	sw	s0,600(sp)
   8:	24912a23          	sw	s1,596(sp)
   c:	25212823          	sw	s2,592(sp)
  10:	25312623          	sw	s3,588(sp)
  14:	25412423          	sw	s4,584(sp)
  18:	84be                	mv	s1,a5
  1a:	24112e23          	sw	ra,604(sp)
  1e:	25512223          	sw	s5,580(sp)
  22:	25612023          	sw	s6,576(sp)
  26:	c62a                	sw	a0,12(sp)
  28:	c42e                	sw	a1,8(sp)
  2a:	04000793          	li	a5,64

0000002e <.LVL75>:
  2e:	8932                	mv	s2,a2
  30:	89b6                	mv	s3,a3
  32:	8a3a                	mv	s4,a4
  34:	0160                	addi	s0,sp,140

00000036 <.LVL76>:
  36:	00b7ff63          	bgeu	a5,a1,54 <.L34>
			36: R_RISCV_BRANCH	.L34
  3a:	1178                	addi	a4,sp,172

0000003c <.LVL77>:
  3c:	86a2                	mv	a3,s0

0000003e <.LVL78>:
  3e:	0030                	addi	a2,sp,8

00000040 <.LVL79>:
  40:	006c                	addi	a1,sp,12

00000042 <.LVL80>:
  42:	4505                	li	a0,1

00000044 <.LVL81>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	sha256_vector
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL81>

0000004c <.LVL82>:
  4c:	02000793          	li	a5,32
  50:	c622                	sw	s0,12(sp)
  52:	c43e                	sw	a5,8(sp)

00000054 <.L34>:
  54:	04000613          	li	a2,64
  58:	4581                	li	a1,0
  5a:	00e8                	addi	a0,sp,76

0000005c <.LVL83>:
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	memset
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL83>

00000064 <.LVL84>:
  64:	4622                	lw	a2,8(sp)
  66:	45b2                	lw	a1,12(sp)
  68:	00e8                	addi	a0,sp,76

0000006a <.LVL85>:
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	memcpy
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LVL85>

00000072 <.LVL86>:
  72:	363636b7          	lui	a3,0x36363
  76:	00f8                	addi	a4,sp,76

00000078 <.LVL87>:
  78:	63668693          	addi	a3,a3,1590 # 36363636 <.LLST41+0x36362b13>

0000007c <.L35>:
  7c:	0711                	addi	a4,a4,4
  7e:	ffc72783          	lw	a5,-4(a4)
  82:	8fb5                	xor	a5,a5,a3
  84:	fef72e23          	sw	a5,-4(a4)
  88:	fe871ae3          	bne	a4,s0,7c <.L35>
			88: R_RISCV_BRANCH	.L35
  8c:	00fc                	addi	a5,sp,76

0000008e <.LVL90>:
  8e:	ce3e                	sw	a5,28(sp)
  90:	0870                	addi	a2,sp,28
  92:	04000793          	li	a5,64

00000096 <.LVL91>:
  96:	1854                	addi	a3,sp,52
  98:	da3e                	sw	a5,52(sp)

0000009a <.LVL92>:
  9a:	4701                	li	a4,0

0000009c <.LVL93>:
  9c:	00291793          	slli	a5,s2,0x2
  a0:	8ab2                	mv	s5,a2
  a2:	8b36                	mv	s6,a3

000000a4 <.L36>:
  a4:	0611                	addi	a2,a2,4
  a6:	0691                	addi	a3,a3,4
  a8:	08f71d63          	bne	a4,a5,142 <.L37>
			a8: R_RISCV_BRANCH	.L37
  ac:	1178                	addi	a4,sp,172

000000ae <.LVL95>:
  ae:	86a6                	mv	a3,s1
  b0:	865a                	mv	a2,s6
  b2:	85d6                	mv	a1,s5
  b4:	00190513          	addi	a0,s2,1
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	sha256_vector
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL95+0xa>

000000c0 <.LVL96>:
  c0:	04000613          	li	a2,64
  c4:	4581                	li	a1,0
  c6:	00e8                	addi	a0,sp,76

000000c8 <.LVL97>:
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	memset
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.LVL97>

000000d0 <.LVL98>:
  d0:	4622                	lw	a2,8(sp)
  d2:	45b2                	lw	a1,12(sp)
  d4:	00e8                	addi	a0,sp,76

000000d6 <.LVL99>:
  d6:	00000097          	auipc	ra,0x0
			d6: R_RISCV_CALL	memcpy
			d6: R_RISCV_RELAX	*ABS*
  da:	000080e7          	jalr	ra # d6 <.LVL99>

000000de <.LVL100>:
  de:	5c5c66b7          	lui	a3,0x5c5c6
  e2:	00f8                	addi	a4,sp,76

000000e4 <.LVL101>:
  e4:	c5c68693          	addi	a3,a3,-932 # 5c5c5c5c <.LLST41+0x5c5c5139>

000000e8 <.L38>:
  e8:	0711                	addi	a4,a4,4
  ea:	ffc72783          	lw	a5,-4(a4)
  ee:	8fb5                	xor	a5,a5,a3
  f0:	fef72e23          	sw	a5,-4(a4)
  f4:	fe871ae3          	bne	a4,s0,e8 <.L38>
			f4: R_RISCV_BRANCH	.L38
  f8:	00fc                	addi	a5,sp,76

000000fa <.LVL104>:
  fa:	ce3e                	sw	a5,28(sp)
  fc:	04000793          	li	a5,64

00000100 <.LVL105>:
 100:	da3e                	sw	a5,52(sp)
 102:	1178                	addi	a4,sp,172

00000104 <.LVL106>:
 104:	02000793          	li	a5,32
 108:	86a6                	mv	a3,s1
 10a:	865a                	mv	a2,s6
 10c:	85d6                	mv	a1,s5
 10e:	4509                	li	a0,2
 110:	d026                	sw	s1,32(sp)
 112:	dc3e                	sw	a5,56(sp)
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	sha256_vector
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.LVL106+0x10>

0000011c <.LVL107>:
 11c:	25c12083          	lw	ra,604(sp)
 120:	25812403          	lw	s0,600(sp)

00000124 <.LVL108>:
 124:	25412483          	lw	s1,596(sp)

00000128 <.LVL109>:
 128:	25012903          	lw	s2,592(sp)

0000012c <.LVL110>:
 12c:	24c12983          	lw	s3,588(sp)

00000130 <.LVL111>:
 130:	24812a03          	lw	s4,584(sp)

00000134 <.LVL112>:
 134:	24412a83          	lw	s5,580(sp)
 138:	24012b03          	lw	s6,576(sp)
 13c:	26010113          	addi	sp,sp,608

00000140 <.LVL113>:
 140:	8082                	ret

00000142 <.L37>:
 142:	00e985b3          	add	a1,s3,a4
 146:	418c                	lw	a1,0(a1)
 148:	c20c                	sw	a1,0(a2)
 14a:	00ea05b3          	add	a1,s4,a4
 14e:	418c                	lw	a1,0(a1)
 150:	0711                	addi	a4,a4,4
 152:	c28c                	sw	a1,0(a3)
 154:	bf81                	j	a4 <.L36>
			154: R_RISCV_RVC_JUMP	.L36
