
libbl602_wifi/sha1.o:     file format elf32-littleriscv


Disassembly of section .text.Bl_SHA1ProcessMessageBlock:

00000000 <Bl_SHA1ProcessMessageBlock>:
   0:	01c50613          	addi	a2,a0,28

00000004 <.LVL1>:
   4:	8732                	mv	a4,a2
   6:	05c50593          	addi	a1,a0,92

0000000a <.L2>:
   a:	04074783          	lbu	a5,64(a4)
   e:	04174683          	lbu	a3,65(a4)
  12:	0711                	addi	a4,a4,4
  14:	07e2                	slli	a5,a5,0x18
  16:	06c2                	slli	a3,a3,0x10
  18:	8fd5                	or	a5,a5,a3
  1a:	03e74683          	lbu	a3,62(a4)
  1e:	06a2                	slli	a3,a3,0x8
  20:	8fd5                	or	a5,a5,a3
  22:	03f74683          	lbu	a3,63(a4)
  26:	8fd5                	or	a5,a5,a3
  28:	fef72e23          	sw	a5,-4(a4)
  2c:	fce59fe3          	bne	a1,a4,a <.L2>
			2c: R_RISCV_BRANCH	.L2
  30:	00052803          	lw	a6,0(a0)

00000034 <.LVL3>:
  34:	00452e03          	lw	t3,4(a0)

00000038 <.LVL4>:
  38:	00852303          	lw	t1,8(a0)

0000003c <.LVL5>:
  3c:	00c52e83          	lw	t4,12(a0)

00000040 <.LVL6>:
  40:	01052f83          	lw	t6,16(a0)

00000044 <.LVL7>:
  44:	5a828f37          	lui	t5,0x5a828
  48:	4781                	li	a5,0
  4a:	999f0f13          	addi	t5,t5,-1639 # 5a827999 <.LASF143+0x5a8271a1>
  4e:	42d1                	li	t0,20

00000050 <.L5>:
  50:	01d346b3          	xor	a3,t1,t4
  54:	01c6f6b3          	and	a3,a3,t3
  58:	01d6c5b3          	xor	a1,a3,t4
  5c:	01b85713          	srli	a4,a6,0x1b
  60:	00581693          	slli	a3,a6,0x5
  64:	8ed9                	or	a3,a3,a4
  66:	01e68733          	add	a4,a3,t5
  6a:	00e586b3          	add	a3,a1,a4
  6e:	0307f713          	andi	a4,a5,48
  72:	22070b63          	beqz	a4,2a8 <.L3>
			72: R_RISCV_BRANCH	.L3
  76:	00d78713          	addi	a4,a5,13
  7a:	00878593          	addi	a1,a5,8
  7e:	8b3d                	andi	a4,a4,15
  80:	89bd                	andi	a1,a1,15
  82:	070a                	slli	a4,a4,0x2
  84:	058a                	slli	a1,a1,0x2
  86:	9732                	add	a4,a4,a2
  88:	95b2                	add	a1,a1,a2
  8a:	418c                	lw	a1,0(a1)
  8c:	4318                	lw	a4,0(a4)
  8e:	00f7f893          	andi	a7,a5,15
  92:	088a                	slli	a7,a7,0x2
  94:	98b2                	add	a7,a7,a2
  96:	8f2d                	xor	a4,a4,a1
  98:	0008a583          	lw	a1,0(a7)
  9c:	8f2d                	xor	a4,a4,a1
  9e:	00278593          	addi	a1,a5,2
  a2:	89bd                	andi	a1,a1,15
  a4:	058a                	slli	a1,a1,0x2
  a6:	95b2                	add	a1,a1,a2
  a8:	418c                	lw	a1,0(a1)
  aa:	8f2d                	xor	a4,a4,a1
  ac:	00171593          	slli	a1,a4,0x1
  b0:	837d                	srli	a4,a4,0x1f
  b2:	8f4d                	or	a4,a4,a1
  b4:	00e8a023          	sw	a4,0(a7)

000000b8 <.L4>:
  b8:	9736                	add	a4,a4,a3
  ba:	01ee1893          	slli	a7,t3,0x1e
  be:	002e5693          	srli	a3,t3,0x2
  c2:	0785                	addi	a5,a5,1

000000c4 <.LVL9>:
  c4:	977e                	add	a4,a4,t6

000000c6 <.LVL10>:
  c6:	00d8e8b3          	or	a7,a7,a3

000000ca <.LVL11>:
  ca:	8e42                	mv	t3,a6
  cc:	8ff6                	mv	t6,t4
  ce:	1c579963          	bne	a5,t0,2a0 <.L9>
			ce: R_RISCV_BRANCH	.L9
  d2:	6ed9ff37          	lui	t5,0x6ed9f
  d6:	ba1f0f13          	addi	t5,t5,-1119 # 6ed9eba1 <.LASF143+0x6ed9e3a9>
  da:	02800f93          	li	t6,40

000000de <.L6>:
  de:	00d78593          	addi	a1,a5,13
  e2:	00878693          	addi	a3,a5,8
  e6:	89bd                	andi	a1,a1,15
  e8:	8abd                	andi	a3,a3,15
  ea:	058a                	slli	a1,a1,0x2
  ec:	068a                	slli	a3,a3,0x2
  ee:	95b2                	add	a1,a1,a2
  f0:	96b2                	add	a3,a3,a2
  f2:	4294                	lw	a3,0(a3)
  f4:	00f7fe13          	andi	t3,a5,15
  f8:	418c                	lw	a1,0(a1)
  fa:	0e0a                	slli	t3,t3,0x2
  fc:	9e32                	add	t3,t3,a2
  fe:	8db5                	xor	a1,a1,a3
 100:	000e2683          	lw	a3,0(t3)
 104:	01b75293          	srli	t0,a4,0x1b
 108:	8db5                	xor	a1,a1,a3
 10a:	00278693          	addi	a3,a5,2
 10e:	8abd                	andi	a3,a3,15
 110:	068a                	slli	a3,a3,0x2
 112:	96b2                	add	a3,a3,a2
 114:	4294                	lw	a3,0(a3)
 116:	0785                	addi	a5,a5,1

00000118 <.LVL12>:
 118:	8db5                	xor	a1,a1,a3
 11a:	00159693          	slli	a3,a1,0x1
 11e:	81fd                	srli	a1,a1,0x1f
 120:	8dd5                	or	a1,a1,a3
 122:	00be2023          	sw	a1,0(t3)
 126:	00571e13          	slli	t3,a4,0x5
 12a:	011846b3          	xor	a3,a6,a7
 12e:	005e6e33          	or	t3,t3,t0
 132:	9e7a                	add	t3,t3,t5
 134:	0066c6b3          	xor	a3,a3,t1
 138:	96f2                	add	a3,a3,t3
 13a:	96ae                	add	a3,a3,a1
 13c:	01e81e13          	slli	t3,a6,0x1e
 140:	00285593          	srli	a1,a6,0x2
 144:	96f6                	add	a3,a3,t4

00000146 <.LVL13>:
 146:	00be6e33          	or	t3,t3,a1

0000014a <.LVL14>:
 14a:	883a                	mv	a6,a4
 14c:	8e9a                	mv	t4,t1
 14e:	17f79263          	bne	a5,t6,2b2 <.L10>
			14e: R_RISCV_BRANCH	.L10
 152:	8f1bcf37          	lui	t5,0x8f1bc
 156:	cdcf0f13          	addi	t5,t5,-804 # 8f1bbcdc <.LASF143+0x8f1bb4e4>
 15a:	03c00f93          	li	t6,60

0000015e <.L7>:
 15e:	00d78813          	addi	a6,a5,13
 162:	00878593          	addi	a1,a5,8
 166:	00f87813          	andi	a6,a6,15
 16a:	89bd                	andi	a1,a1,15
 16c:	080a                	slli	a6,a6,0x2
 16e:	058a                	slli	a1,a1,0x2
 170:	9832                	add	a6,a6,a2
 172:	95b2                	add	a1,a1,a2
 174:	418c                	lw	a1,0(a1)
 176:	00f7fe93          	andi	t4,a5,15
 17a:	00082803          	lw	a6,0(a6)
 17e:	0e8a                	slli	t4,t4,0x2
 180:	9eb2                	add	t4,t4,a2
 182:	00b84833          	xor	a6,a6,a1
 186:	000ea583          	lw	a1,0(t4)
 18a:	01b6d293          	srli	t0,a3,0x1b
 18e:	00b84833          	xor	a6,a6,a1
 192:	00278593          	addi	a1,a5,2
 196:	89bd                	andi	a1,a1,15
 198:	058a                	slli	a1,a1,0x2
 19a:	95b2                	add	a1,a1,a2
 19c:	418c                	lw	a1,0(a1)
 19e:	0785                	addi	a5,a5,1

000001a0 <.LVL15>:
 1a0:	00b84833          	xor	a6,a6,a1
 1a4:	00181593          	slli	a1,a6,0x1
 1a8:	01f85813          	srli	a6,a6,0x1f
 1ac:	00b86833          	or	a6,a6,a1
 1b0:	011e65b3          	or	a1,t3,a7
 1b4:	010ea023          	sw	a6,0(t4)
 1b8:	8df9                	and	a1,a1,a4
 1ba:	011e7eb3          	and	t4,t3,a7
 1be:	01d5e5b3          	or	a1,a1,t4
 1c2:	00569e93          	slli	t4,a3,0x5
 1c6:	005eeeb3          	or	t4,t4,t0
 1ca:	9efa                	add	t4,t4,t5
 1cc:	95f6                	add	a1,a1,t4
 1ce:	95c2                	add	a1,a1,a6
 1d0:	01e71e93          	slli	t4,a4,0x1e
 1d4:	00275813          	srli	a6,a4,0x2
 1d8:	959a                	add	a1,a1,t1

000001da <.LVL16>:
 1da:	010eeeb3          	or	t4,t4,a6

000001de <.LVL17>:
 1de:	8736                	mv	a4,a3
 1e0:	8346                	mv	t1,a7
 1e2:	0df79c63          	bne	a5,t6,2ba <.L11>
			1e2: R_RISCV_BRANCH	.L11

000001e6 <.LVL18>:
 1e6:	ca62cf37          	lui	t5,0xca62c
 1ea:	1d6f0f13          	addi	t5,t5,470 # ca62c1d6 <.LASF143+0xca62b9de>
 1ee:	05000f93          	li	t6,80

000001f2 <.L8>:
 1f2:	00d78713          	addi	a4,a5,13
 1f6:	00878813          	addi	a6,a5,8
 1fa:	8b3d                	andi	a4,a4,15
 1fc:	00f87813          	andi	a6,a6,15
 200:	070a                	slli	a4,a4,0x2
 202:	080a                	slli	a6,a6,0x2
 204:	9732                	add	a4,a4,a2
 206:	9832                	add	a6,a6,a2
 208:	00082803          	lw	a6,0(a6)
 20c:	00f7f313          	andi	t1,a5,15
 210:	4318                	lw	a4,0(a4)
 212:	030a                	slli	t1,t1,0x2
 214:	9332                	add	t1,t1,a2
 216:	01074733          	xor	a4,a4,a6
 21a:	00032803          	lw	a6,0(t1)
 21e:	01b5d293          	srli	t0,a1,0x1b
 222:	01074733          	xor	a4,a4,a6
 226:	00278813          	addi	a6,a5,2
 22a:	00f87813          	andi	a6,a6,15
 22e:	080a                	slli	a6,a6,0x2
 230:	9832                	add	a6,a6,a2
 232:	00082803          	lw	a6,0(a6)
 236:	0785                	addi	a5,a5,1

00000238 <.LVL20>:
 238:	01074733          	xor	a4,a4,a6
 23c:	00171813          	slli	a6,a4,0x1
 240:	837d                	srli	a4,a4,0x1f
 242:	01076733          	or	a4,a4,a6
 246:	00e32023          	sw	a4,0(t1)
 24a:	00559313          	slli	t1,a1,0x5
 24e:	01d6c833          	xor	a6,a3,t4
 252:	00536333          	or	t1,t1,t0
 256:	01c84833          	xor	a6,a6,t3
 25a:	937a                	add	t1,t1,t5
 25c:	981a                	add	a6,a6,t1
 25e:	9742                	add	a4,a4,a6
 260:	9746                	add	a4,a4,a7

00000262 <.LVL21>:
 262:	01e69813          	slli	a6,a3,0x1e
 266:	0026d893          	srli	a7,a3,0x2
 26a:	01186833          	or	a6,a6,a7

0000026e <.LVL22>:
 26e:	86ae                	mv	a3,a1
 270:	88f2                	mv	a7,t3
 272:	05f79863          	bne	a5,t6,2c2 <.L12>
			272: R_RISCV_BRANCH	.L12

00000276 <.LVL23>:
 276:	411c                	lw	a5,0(a0)

00000278 <.LVL24>:
 278:	08051e23          	sh	zero,156(a0)
 27c:	973e                	add	a4,a4,a5

0000027e <.LVL25>:
 27e:	415c                	lw	a5,4(a0)
 280:	c118                	sw	a4,0(a0)
 282:	95be                	add	a1,a1,a5

00000284 <.LVL26>:
 284:	451c                	lw	a5,8(a0)
 286:	c14c                	sw	a1,4(a0)
 288:	983e                	add	a6,a6,a5

0000028a <.LVL27>:
 28a:	455c                	lw	a5,12(a0)
 28c:	01052423          	sw	a6,8(a0)
 290:	9ebe                	add	t4,t4,a5

00000292 <.LVL28>:
 292:	491c                	lw	a5,16(a0)
 294:	01d52623          	sw	t4,12(a0)
 298:	9e3e                	add	t3,t3,a5
 29a:	01c52823          	sw	t3,16(a0)
 29e:	8082                	ret

000002a0 <.L9>:
 2a0:	8e9a                	mv	t4,t1

000002a2 <.LVL30>:
 2a2:	883a                	mv	a6,a4

000002a4 <.LVL31>:
 2a4:	8346                	mv	t1,a7

000002a6 <.LVL32>:
 2a6:	b36d                	j	50 <.L5>
			2a6: R_RISCV_RVC_JUMP	.L5

000002a8 <.L3>:
 2a8:	00279713          	slli	a4,a5,0x2
 2ac:	972a                	add	a4,a4,a0
 2ae:	4f58                	lw	a4,28(a4)
 2b0:	b521                	j	b8 <.L4>
			2b0: R_RISCV_RVC_JUMP	.L4

000002b2 <.L10>:
 2b2:	8346                	mv	t1,a7

000002b4 <.LVL35>:
 2b4:	8736                	mv	a4,a3

000002b6 <.LVL36>:
 2b6:	88f2                	mv	a7,t3

000002b8 <.LVL37>:
 2b8:	b51d                	j	de <.L6>
			2b8: R_RISCV_RVC_JUMP	.L6

000002ba <.L11>:
 2ba:	88f2                	mv	a7,t3
 2bc:	86ae                	mv	a3,a1

000002be <.LVL39>:
 2be:	8e76                	mv	t3,t4

000002c0 <.LVL40>:
 2c0:	bd79                	j	15e <.L7>
			2c0: R_RISCV_RVC_JUMP	.L7

000002c2 <.L12>:
 2c2:	8e76                	mv	t3,t4
 2c4:	85ba                	mv	a1,a4

000002c6 <.LVL42>:
 2c6:	8ec2                	mv	t4,a6

000002c8 <.LVL43>:
 2c8:	b72d                	j	1f2 <.L8>
			2c8: R_RISCV_RVC_JUMP	.L8

Disassembly of section .text.Bl_SHA1Init:

00000000 <Bl_SHA1Init>:
   0:	c131                	beqz	a0,44 <.L16>
			0: R_RISCV_RVC_BRANCH	.L16
   2:	674527b7          	lui	a5,0x67452
   6:	30178793          	addi	a5,a5,769 # 67452301 <.LASF143+0x67451b09>
   a:	c11c                	sw	a5,0(a0)
   c:	efcdb7b7          	lui	a5,0xefcdb
  10:	b8978793          	addi	a5,a5,-1143 # efcdab89 <.LASF143+0xefcda391>
  14:	c15c                	sw	a5,4(a0)
  16:	98bae7b7          	lui	a5,0x98bae
  1a:	cfe78793          	addi	a5,a5,-770 # 98badcfe <.LASF143+0x98bad506>
  1e:	c51c                	sw	a5,8(a0)
  20:	103257b7          	lui	a5,0x10325
  24:	47678793          	addi	a5,a5,1142 # 10325476 <.LASF143+0x10324c7e>
  28:	c55c                	sw	a5,12(a0)
  2a:	c3d2e7b7          	lui	a5,0xc3d2e
  2e:	1f078793          	addi	a5,a5,496 # c3d2e1f0 <.LASF143+0xc3d2d9f8>
  32:	00052a23          	sw	zero,20(a0)
  36:	00052c23          	sw	zero,24(a0)
  3a:	c91c                	sw	a5,16(a0)
  3c:	08052e23          	sw	zero,156(a0)
  40:	4501                	li	a0,0

00000042 <.LVL45>:
  42:	8082                	ret

00000044 <.L16>:
  44:	4505                	li	a0,1

00000046 <.LVL47>:
  46:	8082                	ret

Disassembly of section .text.Bl_SHA1Final:

00000000 <Bl_SHA1Final>:
   0:	4785                	li	a5,1
   2:	14050963          	beqz	a0,154 <.L36>
			2: R_RISCV_BRANCH	.L36
   6:	14058763          	beqz	a1,154 <.L36>
			6: R_RISCV_BRANCH	.L36
   a:	09f54783          	lbu	a5,159(a0)
   e:	14079363          	bnez	a5,154 <.L36>
			e: R_RISCV_BRANCH	.L36
  12:	1141                	addi	sp,sp,-16
  14:	c422                	sw	s0,8(sp)
  16:	c226                	sw	s1,4(sp)
  18:	c606                	sw	ra,12(sp)
  1a:	09e54783          	lbu	a5,158(a0)
  1e:	84ae                	mv	s1,a1
  20:	842a                	mv	s0,a0
  22:	ebcd                	bnez	a5,d4 <.L20>
			22: R_RISCV_RVC_BRANCH	.L20

00000024 <.LBB4>:
  24:	09c51703          	lh	a4,156(a0)
  28:	03700613          	li	a2,55
  2c:	00170793          	addi	a5,a4,1
  30:	07c2                	slli	a5,a5,0x10
  32:	87c1                	srai	a5,a5,0x10
  34:	08f51e23          	sh	a5,156(a0)
  38:	00e506b3          	add	a3,a0,a4
  3c:	f8000793          	li	a5,-128
  40:	04f68e23          	sb	a5,92(a3)
  44:	0ee65a63          	bge	a2,a4,138 <.L21>
			44: R_RISCV_BRANCH	.L21
  48:	03f00713          	li	a4,63

0000004c <.L22>:
  4c:	09c41783          	lh	a5,156(s0)
  50:	0cf75463          	bge	a4,a5,118 <.L23>
			50: R_RISCV_BRANCH	.L23
  54:	8522                	mv	a0,s0

00000056 <.LVL50>:
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	Bl_SHA1ProcessMessageBlock
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL50>

0000005e <.LVL51>:
  5e:	03700713          	li	a4,55

00000062 <.L24>:
  62:	09c41783          	lh	a5,156(s0)
  66:	0cf75163          	bge	a4,a5,128 <.L25>
			66: R_RISCV_BRANCH	.L25

0000006a <.L29>:
  6a:	01845783          	lhu	a5,24(s0)
  6e:	8522                	mv	a0,s0
  70:	00879713          	slli	a4,a5,0x8
  74:	83a1                	srli	a5,a5,0x8
  76:	8f5d                	or	a4,a4,a5
  78:	4c1c                	lw	a5,24(s0)
  7a:	08e41b23          	sh	a4,150(s0)
  7e:	0187d693          	srli	a3,a5,0x18
  82:	83c1                	srli	a5,a5,0x10
  84:	08f40aa3          	sb	a5,149(s0)
  88:	01445783          	lhu	a5,20(s0)
  8c:	08d40a23          	sb	a3,148(s0)
  90:	00879713          	slli	a4,a5,0x8
  94:	83a1                	srli	a5,a5,0x8
  96:	8f5d                	or	a4,a4,a5
  98:	485c                	lw	a5,20(s0)
  9a:	08e41d23          	sh	a4,154(s0)
  9e:	0187d693          	srli	a3,a5,0x18
  a2:	83c1                	srli	a5,a5,0x10
  a4:	08f40ca3          	sb	a5,153(s0)
  a8:	08d40c23          	sb	a3,152(s0)
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	Bl_SHA1ProcessMessageBlock
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.L29+0x42>

000000b4 <.LVL52>:
  b4:	05c40793          	addi	a5,s0,92
  b8:	09c40713          	addi	a4,s0,156

000000bc <.L26>:
  bc:	00078023          	sb	zero,0(a5)

000000c0 <.LVL54>:
  c0:	0785                	addi	a5,a5,1

000000c2 <.LVL55>:
  c2:	fef71de3          	bne	a4,a5,bc <.L26>
			c2: R_RISCV_BRANCH	.L26
  c6:	4785                	li	a5,1

000000c8 <.LVL56>:
  c8:	00042a23          	sw	zero,20(s0)
  cc:	00042c23          	sw	zero,24(s0)
  d0:	08f40f23          	sb	a5,158(s0)

000000d4 <.L20>:
  d4:	4781                	li	a5,0
  d6:	4651                	li	a2,20

000000d8 <.L30>:
  d8:	ffc7f693          	andi	a3,a5,-4
  dc:	96a2                	add	a3,a3,s0
  de:	fff7c713          	not	a4,a5
  e2:	4294                	lw	a3,0(a3)
  e4:	8b0d                	andi	a4,a4,3
  e6:	070e                	slli	a4,a4,0x3
  e8:	00f485b3          	add	a1,s1,a5
  ec:	00e6d733          	srl	a4,a3,a4
  f0:	00e58023          	sb	a4,0(a1)
  f4:	0785                	addi	a5,a5,1
  f6:	fec791e3          	bne	a5,a2,d8 <.L30>
			f6: R_RISCV_BRANCH	.L30
  fa:	8522                	mv	a0,s0
  fc:	0a000613          	li	a2,160
 100:	4581                	li	a1,0
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	memset
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.L30+0x2a>

0000010a <.LVL60>:
 10a:	40b2                	lw	ra,12(sp)
 10c:	4422                	lw	s0,8(sp)

0000010e <.LVL61>:
 10e:	4781                	li	a5,0
 110:	4492                	lw	s1,4(sp)

00000112 <.LVL62>:
 112:	853e                	mv	a0,a5
 114:	0141                	addi	sp,sp,16
 116:	8082                	ret

00000118 <.L23>:
 118:	00178693          	addi	a3,a5,1
 11c:	08d41e23          	sh	a3,156(s0)
 120:	97a2                	add	a5,a5,s0
 122:	04078e23          	sb	zero,92(a5)
 126:	b71d                	j	4c <.L22>
			126: R_RISCV_RVC_JUMP	.L22

00000128 <.L25>:
 128:	00178693          	addi	a3,a5,1
 12c:	08d41e23          	sh	a3,156(s0)
 130:	97a2                	add	a5,a5,s0
 132:	04078e23          	sb	zero,92(a5)
 136:	b735                	j	62 <.L24>
			136: R_RISCV_RVC_JUMP	.L24

00000138 <.L21>:
 138:	03700713          	li	a4,55

0000013c <.L27>:
 13c:	09c41783          	lh	a5,156(s0)
 140:	f2f745e3          	blt	a4,a5,6a <.L29>
			140: R_RISCV_BRANCH	.L29
 144:	00178693          	addi	a3,a5,1
 148:	08d41e23          	sh	a3,156(s0)
 14c:	97a2                	add	a5,a5,s0
 14e:	04078e23          	sb	zero,92(a5)
 152:	b7ed                	j	13c <.L27>
			152: R_RISCV_RVC_JUMP	.L27

00000154 <.L36>:
 154:	853e                	mv	a0,a5

00000156 <.LVL65>:
 156:	8082                	ret

Disassembly of section .text.Bl_SHA1Update:

00000000 <Bl_SHA1Update>:
   0:	e219                	bnez	a2,6 <.L40>
			0: R_RISCV_RVC_BRANCH	.L40
   2:	4501                	li	a0,0

00000004 <.LVL67>:
   4:	8082                	ret

00000006 <.L40>:
   6:	7179                	addi	sp,sp,-48
   8:	d422                	sw	s0,40(sp)
   a:	d606                	sw	ra,44(sp)
   c:	842a                	mv	s0,a0
   e:	d226                	sw	s1,36(sp)
  10:	d04a                	sw	s2,32(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	4505                	li	a0,1

00000016 <.LVL69>:
  16:	c80d                	beqz	s0,48 <.L39>
			16: R_RISCV_RVC_BRANCH	.L39
  18:	c985                	beqz	a1,48 <.L39>
			18: R_RISCV_RVC_BRANCH	.L39
  1a:	09e44783          	lbu	a5,158(s0)
  1e:	c791                	beqz	a5,2a <.L42>
			1e: R_RISCV_RVC_BRANCH	.L42
  20:	478d                	li	a5,3
  22:	08f40fa3          	sb	a5,159(s0)
  26:	450d                	li	a0,3
  28:	a005                	j	48 <.L39>
			28: R_RISCV_RVC_JUMP	.L39

0000002a <.L42>:
  2a:	09f44783          	lbu	a5,159(s0)
  2e:	853e                	mv	a0,a5
  30:	ef81                	bnez	a5,48 <.L39>
			30: R_RISCV_RVC_BRANCH	.L39
  32:	00c584b3          	add	s1,a1,a2
  36:	4905                	li	s2,1
  38:	04000993          	li	s3,64

0000003c <.L44>:
  3c:	00958563          	beq	a1,s1,46 <.L49>
			3c: R_RISCV_BRANCH	.L49
  40:	09f44783          	lbu	a5,159(s0)
  44:	cb89                	beqz	a5,56 <.L50>
			44: R_RISCV_RVC_BRANCH	.L50

00000046 <.L49>:
  46:	4501                	li	a0,0

00000048 <.L39>:
  48:	50b2                	lw	ra,44(sp)
  4a:	5422                	lw	s0,40(sp)

0000004c <.LVL72>:
  4c:	5492                	lw	s1,36(sp)
  4e:	5902                	lw	s2,32(sp)
  50:	49f2                	lw	s3,28(sp)
  52:	6145                	addi	sp,sp,48
  54:	8082                	ret

00000056 <.L50>:
  56:	09c41703          	lh	a4,156(s0)
  5a:	00170793          	addi	a5,a4,1
  5e:	07c2                	slli	a5,a5,0x10
  60:	87c1                	srai	a5,a5,0x10
  62:	08f41e23          	sh	a5,156(s0)
  66:	0005c683          	lbu	a3,0(a1)
  6a:	9722                	add	a4,a4,s0
  6c:	04d70e23          	sb	a3,92(a4)
  70:	4858                	lw	a4,20(s0)
  72:	0721                	addi	a4,a4,8
  74:	c858                	sw	a4,20(s0)
  76:	e719                	bnez	a4,84 <.L46>
			76: R_RISCV_RVC_BRANCH	.L46
  78:	4c18                	lw	a4,24(s0)
  7a:	0705                	addi	a4,a4,1
  7c:	cc18                	sw	a4,24(s0)
  7e:	e319                	bnez	a4,84 <.L46>
			7e: R_RISCV_RVC_BRANCH	.L46
  80:	09240fa3          	sb	s2,159(s0)

00000084 <.L46>:
  84:	01379963          	bne	a5,s3,96 <.L48>
			84: R_RISCV_BRANCH	.L48
  88:	8522                	mv	a0,s0
  8a:	c62e                	sw	a1,12(sp)
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	Bl_SHA1ProcessMessageBlock
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.L46+0x8>

00000094 <.LVL74>:
  94:	45b2                	lw	a1,12(sp)

00000096 <.L48>:
  96:	0585                	addi	a1,a1,1

00000098 <.LVL76>:
  98:	b755                	j	3c <.L44>
			98: R_RISCV_RVC_JUMP	.L44
