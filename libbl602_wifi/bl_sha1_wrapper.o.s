
libbl602_wifi/bl_sha1_wrapper.o:     file format elf32-littleriscv


Disassembly of section .text.Bl_hmac_sha1:

00000000 <Bl_hmac_sha1>:
   0:	7121                	addi	sp,sp,-448

00000002 <.LVL1>:
   2:	1a912a23          	sw	s1,436(sp)
   6:	1b212823          	sw	s2,432(sp)
   a:	1b512223          	sw	s5,420(sp)
   e:	1b612023          	sw	s6,416(sp)
  12:	19712e23          	sw	s7,412(sp)
  16:	19812c23          	sw	s8,408(sp)
  1a:	19912a23          	sw	s9,404(sp)
  1e:	8abe                	mv	s5,a5
  20:	1a112e23          	sw	ra,444(sp)
  24:	1a812c23          	sw	s0,440(sp)
  28:	1b312623          	sw	s3,428(sp)
  2c:	1b412423          	sw	s4,424(sp)
  30:	04000793          	li	a5,64

00000034 <.LVL2>:
  34:	8c2a                	mv	s8,a0
  36:	8cae                	mv	s9,a1
  38:	8bb2                	mv	s7,a2
  3a:	8936                	mv	s2,a3
  3c:	84ba                	mv	s1,a4
  3e:	8b42                	mv	s6,a6
  40:	02e7d563          	bge	a5,a4,6a <.L2>
			40: R_RISCV_BRANCH	.L2
  44:	08c8                	addi	a0,sp,84

00000046 <.LVL3>:
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	Bl_SHA1Init
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL3>

0000004e <.LVL4>:
  4e:	8626                	mv	a2,s1
  50:	85ca                	mv	a1,s2
  52:	08c8                	addi	a0,sp,84

00000054 <.LVL5>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	Bl_SHA1Update
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL5>

0000005c <.LVL6>:
  5c:	85ca                	mv	a1,s2
  5e:	08c8                	addi	a0,sp,84

00000060 <.LVL7>:
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	Bl_SHA1Final
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL7>

00000068 <.LVL8>:
  68:	44d1                	li	s1,20

0000006a <.L2>:
  6a:	04000613          	li	a2,64
  6e:	4581                	li	a1,0
  70:	850a                	mv	a0,sp
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	memset
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L2+0x8>

0000007a <.LVL10>:
  7a:	8626                	mv	a2,s1
  7c:	85ca                	mv	a1,s2
  7e:	850a                	mv	a0,sp
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	memcpy
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL10+0x6>

00000088 <.LVL11>:
  88:	36363737          	lui	a4,0x36363
  8c:	840a                	mv	s0,sp
  8e:	04010a13          	addi	s4,sp,64

00000092 <.LVL12>:
  92:	878a                	mv	a5,sp
  94:	63670713          	addi	a4,a4,1590 # 36363636 <.LASF56+0x36362dfc>

00000098 <.L3>:
  98:	4394                	lw	a3,0(a5)
  9a:	07a1                	addi	a5,a5,8
  9c:	8eb9                	xor	a3,a3,a4
  9e:	fed7ac23          	sw	a3,-8(a5)
  a2:	ffc7a683          	lw	a3,-4(a5)
  a6:	8eb9                	xor	a3,a3,a4
  a8:	fed7ae23          	sw	a3,-4(a5)
  ac:	ff4796e3          	bne	a5,s4,98 <.L3>
			ac: R_RISCV_BRANCH	.L3
  b0:	08c8                	addi	a0,sp,84

000000b2 <.LVL14>:
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	Bl_SHA1Init
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL14>

000000ba <.LVL15>:
  ba:	04000613          	li	a2,64
  be:	858a                	mv	a1,sp
  c0:	08c8                	addi	a0,sp,84

000000c2 <.LVL16>:
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	Bl_SHA1Update
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL16>

000000ca <.LVL17>:
  ca:	4981                	li	s3,0

000000cc <.L4>:
  cc:	0d79c063          	blt	s3,s7,18c <.L5>
			cc: R_RISCV_BRANCH	.L5
  d0:	85d2                	mv	a1,s4
  d2:	08c8                	addi	a0,sp,84

000000d4 <.LVL19>:
  d4:	00000097          	auipc	ra,0x0
			d4: R_RISCV_CALL	Bl_SHA1Final
			d4: R_RISCV_RELAX	*ABS*
  d8:	000080e7          	jalr	ra # d4 <.LVL19>

000000dc <.LVL20>:
  dc:	04000613          	li	a2,64
  e0:	4581                	li	a1,0
  e2:	850a                	mv	a0,sp
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	memset
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.LVL20+0x8>

000000ec <.LVL21>:
  ec:	8626                	mv	a2,s1
  ee:	85ca                	mv	a1,s2
  f0:	850a                	mv	a0,sp
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	memcpy
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.LVL21+0x6>

000000fa <.LVL22>:
  fa:	5c5c67b7          	lui	a5,0x5c5c6
  fe:	c5c78793          	addi	a5,a5,-932 # 5c5c5c5c <.LASF56+0x5c5c5422>

00000102 <.L6>:
 102:	4018                	lw	a4,0(s0)
 104:	0421                	addi	s0,s0,8
 106:	8f3d                	xor	a4,a4,a5
 108:	fee42c23          	sw	a4,-8(s0)
 10c:	ffc42703          	lw	a4,-4(s0)
 110:	8f3d                	xor	a4,a4,a5
 112:	fee42e23          	sw	a4,-4(s0)
 116:	ff4416e3          	bne	s0,s4,102 <.L6>
			116: R_RISCV_BRANCH	.L6
 11a:	08c8                	addi	a0,sp,84

0000011c <.LVL24>:
 11c:	00000097          	auipc	ra,0x0
			11c: R_RISCV_CALL	Bl_SHA1Init
			11c: R_RISCV_RELAX	*ABS*
 120:	000080e7          	jalr	ra # 11c <.LVL24>

00000124 <.LVL25>:
 124:	858a                	mv	a1,sp
 126:	04000613          	li	a2,64
 12a:	08c8                	addi	a0,sp,84

0000012c <.LVL26>:
 12c:	00000097          	auipc	ra,0x0
			12c: R_RISCV_CALL	Bl_SHA1Update
			12c: R_RISCV_RELAX	*ABS*
 130:	000080e7          	jalr	ra # 12c <.LVL26>

00000134 <.LVL27>:
 134:	4651                	li	a2,20
 136:	85a2                	mv	a1,s0
 138:	08c8                	addi	a0,sp,84

0000013a <.LVL28>:
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	Bl_SHA1Update
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL28>

00000142 <.LVL29>:
 142:	85a2                	mv	a1,s0
 144:	08c8                	addi	a0,sp,84

00000146 <.LVL30>:
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	Bl_SHA1Final
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.LVL30>

0000014e <.LVL31>:
 14e:	865a                	mv	a2,s6
 150:	85a2                	mv	a1,s0
 152:	8556                	mv	a0,s5
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	memcpy
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LVL31+0x6>

0000015c <.LVL32>:
 15c:	1bc12083          	lw	ra,444(sp)
 160:	1b812403          	lw	s0,440(sp)
 164:	1b412483          	lw	s1,436(sp)

00000168 <.LVL33>:
 168:	1b012903          	lw	s2,432(sp)

0000016c <.LVL34>:
 16c:	1ac12983          	lw	s3,428(sp)
 170:	1a812a03          	lw	s4,424(sp)

00000174 <.LVL35>:
 174:	1a412a83          	lw	s5,420(sp)

00000178 <.LVL36>:
 178:	1a012b03          	lw	s6,416(sp)

0000017c <.LVL37>:
 17c:	19c12b83          	lw	s7,412(sp)

00000180 <.LVL38>:
 180:	19812c03          	lw	s8,408(sp)

00000184 <.LVL39>:
 184:	19412c83          	lw	s9,404(sp)

00000188 <.LVL40>:
 188:	6139                	addi	sp,sp,448

0000018a <.LVL41>:
 18a:	8082                	ret

0000018c <.L5>:
 18c:	00299793          	slli	a5,s3,0x2
 190:	00fc8733          	add	a4,s9,a5
 194:	97e2                	add	a5,a5,s8
 196:	4310                	lw	a2,0(a4)
 198:	438c                	lw	a1,0(a5)
 19a:	08c8                	addi	a0,sp,84

0000019c <.LVL43>:
 19c:	0985                	addi	s3,s3,1

0000019e <.LVL44>:
 19e:	00000097          	auipc	ra,0x0
			19e: R_RISCV_CALL	Bl_SHA1Update
			19e: R_RISCV_RELAX	*ABS*
 1a2:	000080e7          	jalr	ra # 19e <.LVL44>

000001a6 <.LVL45>:
 1a6:	b71d                	j	cc <.L4>
			1a6: R_RISCV_RVC_JUMP	.L4

Disassembly of section .text.Bl_PRF:

00000000 <Bl_PRF>:
   0:	7171                	addi	sp,sp,-176
   2:	cb56                	sw	s5,148(sp)
   4:	00810a93          	addi	s5,sp,8
   8:	d14a                	sw	s2,160(sp)
   a:	cf4e                	sw	s3,156(sp)
   c:	c562                	sw	s8,136(sp)
   e:	892a                	mv	s2,a0
  10:	8c32                	mv	s8,a2
  12:	89ae                	mv	s3,a1
  14:	07800613          	li	a2,120

00000018 <.LVL47>:
  18:	4581                	li	a1,0

0000001a <.LVL48>:
  1a:	8556                	mv	a0,s5

0000001c <.LVL49>:
  1c:	d522                	sw	s0,168(sp)
  1e:	d326                	sw	s1,164(sp)
  20:	cd52                	sw	s4,152(sp)
  22:	c95a                	sw	s6,144(sp)
  24:	c75e                	sw	s7,140(sp)
  26:	d706                	sw	ra,172(sp)
  28:	c366                	sw	s9,132(sp)
  2a:	8436                	mv	s0,a3
  2c:	8bba                	mv	s7,a4
  2e:	8b3e                	mv	s6,a5
  30:	8a42                	mv	s4,a6
  32:	84c6                	mv	s1,a7
  34:	c256                	sw	s5,4(sp)

00000036 <.LVL50>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	memset
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL50>

0000003e <.LVL51>:
  3e:	060c0c63          	beqz	s8,b6 <.L11>
			3e: R_RISCV_BRANCH	.L11
  42:	8622                	mv	a2,s0
  44:	85e2                	mv	a1,s8
  46:	8556                	mv	a0,s5
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	memcpy
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL51+0xa>

00000050 <.LVL52>:
  50:	011c                	addi	a5,sp,128
  52:	97a2                	add	a5,a5,s0
  54:	0405                	addi	s0,s0,1

00000056 <.LVL53>:
  56:	008a8533          	add	a0,s5,s0
  5a:	865a                	mv	a2,s6
  5c:	85de                	mv	a1,s7
  5e:	945a                	add	s0,s0,s6

00000060 <.LVL54>:
  60:	f8078423          	sb	zero,-120(a5)
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	memcpy
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL54+0x4>

0000006c <.LVL55>:
  6c:	c022                	sw	s0,0(sp)

0000006e <.L12>:
  6e:	4782                	lw	a5,0(sp)
  70:	0118                	addi	a4,sp,128
  72:	01348b13          	addi	s6,s1,19

00000076 <.LVL56>:
  76:	973e                	add	a4,a4,a5
  78:	0785                	addi	a5,a5,1
  7a:	c03e                	sw	a5,0(sp)
  7c:	47d1                	li	a5,20
  7e:	02fb4b33          	div	s6,s6,a5
  82:	f8070423          	sb	zero,-120(a4)

00000086 <.LVL57>:
  86:	4b81                	li	s7,0

00000088 <.LVL58>:
  88:	4a81                	li	s5,0
  8a:	5c31                	li	s8,-20

0000008c <.LVL59>:
  8c:	4cd1                	li	s9,20

0000008e <.L13>:
  8e:	038a87b3          	mul	a5,s5,s8
  92:	97a6                	add	a5,a5,s1
  94:	07e2                	slli	a5,a5,0x18
  96:	87e1                	srai	a5,a5,0x18

00000098 <.LVL61>:
  98:	036ac863          	blt	s5,s6,c8 <.L15>
			98: R_RISCV_BRANCH	.L15
  9c:	50ba                	lw	ra,172(sp)
  9e:	542a                	lw	s0,168(sp)
  a0:	549a                	lw	s1,164(sp)

000000a2 <.LVL62>:
  a2:	590a                	lw	s2,160(sp)

000000a4 <.LVL63>:
  a4:	49fa                	lw	s3,156(sp)

000000a6 <.LVL64>:
  a6:	4a6a                	lw	s4,152(sp)

000000a8 <.LVL65>:
  a8:	4ada                	lw	s5,148(sp)

000000aa <.LVL66>:
  aa:	4b4a                	lw	s6,144(sp)
  ac:	4bba                	lw	s7,140(sp)

000000ae <.LVL67>:
  ae:	4c2a                	lw	s8,136(sp)
  b0:	4c9a                	lw	s9,132(sp)
  b2:	614d                	addi	sp,sp,176
  b4:	8082                	ret

000000b6 <.L11>:
  b6:	865a                	mv	a2,s6
  b8:	85de                	mv	a1,s7
  ba:	8556                	mv	a0,s5
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	memcpy
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.L11+0x6>

000000c4 <.LVL69>:
  c4:	c05a                	sw	s6,0(sp)
  c6:	b765                	j	6e <.L12>
			c6: R_RISCV_RVC_JUMP	.L12

000000c8 <.L15>:
  c8:	843e                	mv	s0,a5
  ca:	00fcd363          	bge	s9,a5,d0 <.L14>
			ca: R_RISCV_BRANCH	.L14

000000ce <.LVL71>:
  ce:	4451                	li	s0,20

000000d0 <.L14>:
  d0:	0462                	slli	s0,s0,0x18
  d2:	8461                	srai	s0,s0,0x18
  d4:	017a07b3          	add	a5,s4,s7

000000d8 <.LVL73>:
  d8:	874e                	mv	a4,s3
  da:	8822                	mv	a6,s0
  dc:	86ca                	mv	a3,s2
  de:	4605                	li	a2,1
  e0:	858a                	mv	a1,sp
  e2:	0048                	addi	a0,sp,4
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	Bl_hmac_sha1
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.LVL73+0xc>

000000ec <.LVL74>:
  ec:	4782                	lw	a5,0(sp)
  ee:	0118                	addi	a4,sp,128
  f0:	9ba2                	add	s7,s7,s0

000000f2 <.LVL75>:
  f2:	17fd                	addi	a5,a5,-1
  f4:	97ba                	add	a5,a5,a4
  f6:	f887c703          	lbu	a4,-120(a5)
  fa:	0a85                	addi	s5,s5,1

000000fc <.LVL76>:
  fc:	0705                	addi	a4,a4,1
  fe:	f8e78423          	sb	a4,-120(a5)
 102:	b771                	j	8e <.L13>
			102: R_RISCV_RVC_JUMP	.L13
