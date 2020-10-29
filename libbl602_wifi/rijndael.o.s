
rijndael.o:     file format elf32-littleriscv


Disassembly of section .text.rijndaelKeySetupEnc:

00000000 <rijndaelKeySetupEnc>:
   0:	0005c783          	lbu	a5,0(a1)
   4:	0015c703          	lbu	a4,1(a1)
   8:	07e2                	slli	a5,a5,0x18
   a:	0742                	slli	a4,a4,0x10
   c:	8fb9                	xor	a5,a5,a4
   e:	0035c703          	lbu	a4,3(a1)
  12:	8fb9                	xor	a5,a5,a4
  14:	0025c703          	lbu	a4,2(a1)
  18:	0722                	slli	a4,a4,0x8
  1a:	8fb9                	xor	a5,a5,a4
  1c:	c11c                	sw	a5,0(a0)
  1e:	0045c783          	lbu	a5,4(a1)
  22:	0055c703          	lbu	a4,5(a1)
  26:	07e2                	slli	a5,a5,0x18
  28:	0742                	slli	a4,a4,0x10
  2a:	8fb9                	xor	a5,a5,a4
  2c:	0075c703          	lbu	a4,7(a1)
  30:	8fb9                	xor	a5,a5,a4
  32:	0065c703          	lbu	a4,6(a1)
  36:	0722                	slli	a4,a4,0x8
  38:	8fb9                	xor	a5,a5,a4
  3a:	c15c                	sw	a5,4(a0)
  3c:	0085c783          	lbu	a5,8(a1)
  40:	0095c703          	lbu	a4,9(a1)
  44:	07e2                	slli	a5,a5,0x18
  46:	0742                	slli	a4,a4,0x10
  48:	8fb9                	xor	a5,a5,a4
  4a:	00b5c703          	lbu	a4,11(a1)
  4e:	8fb9                	xor	a5,a5,a4
  50:	00a5c703          	lbu	a4,10(a1)
  54:	0722                	slli	a4,a4,0x8
  56:	8fb9                	xor	a5,a5,a4
  58:	c51c                	sw	a5,8(a0)
  5a:	00c5c783          	lbu	a5,12(a1)
  5e:	00d5c703          	lbu	a4,13(a1)
  62:	07e2                	slli	a5,a5,0x18
  64:	0742                	slli	a4,a4,0x10
  66:	8fb9                	xor	a5,a5,a4
  68:	00f5c703          	lbu	a4,15(a1)
  6c:	8fb9                	xor	a5,a5,a4
  6e:	00e5c703          	lbu	a4,14(a1)
  72:	0722                	slli	a4,a4,0x8
  74:	8fb9                	xor	a5,a5,a4
  76:	c55c                	sw	a5,12(a0)
  78:	08000793          	li	a5,128
  7c:	06f61d63          	bne	a2,a5,f6 <.L4>
  80:	000006b7          	lui	a3,0x0
  84:	00000737          	lui	a4,0x0
  88:	00068693          	mv	a3,a3
  8c:	09050813          	addi	a6,a0,144
  90:	00070713          	mv	a4,a4

00000094 <.L3>:
  94:	428c                	lw	a1,0(a3)
  96:	4550                	lw	a2,12(a0)

00000098 <.LVL2>:
  98:	411c                	lw	a5,0(a0)
  9a:	0691                	addi	a3,a3,4
  9c:	8fad                	xor	a5,a5,a1
  9e:	01865593          	srli	a1,a2,0x18
  a2:	95ba                	add	a1,a1,a4
  a4:	0005c583          	lbu	a1,0(a1)
  a8:	8fad                	xor	a5,a5,a1
  aa:	0ff67593          	andi	a1,a2,255
  ae:	95ba                	add	a1,a1,a4
  b0:	0005c583          	lbu	a1,0(a1)
  b4:	05a2                	slli	a1,a1,0x8
  b6:	8fad                	xor	a5,a5,a1
  b8:	01065593          	srli	a1,a2,0x10
  bc:	0ff5f593          	andi	a1,a1,255
  c0:	95ba                	add	a1,a1,a4
  c2:	0005c583          	lbu	a1,0(a1)
  c6:	05e2                	slli	a1,a1,0x18
  c8:	8fad                	xor	a5,a5,a1
  ca:	00865593          	srli	a1,a2,0x8
  ce:	0ff5f593          	andi	a1,a1,255
  d2:	95ba                	add	a1,a1,a4
  d4:	0005c583          	lbu	a1,0(a1)
  d8:	05c2                	slli	a1,a1,0x10
  da:	8fad                	xor	a5,a5,a1
  dc:	414c                	lw	a1,4(a0)
  de:	c91c                	sw	a5,16(a0)
  e0:	8fad                	xor	a5,a5,a1
  e2:	450c                	lw	a1,8(a0)
  e4:	c95c                	sw	a5,20(a0)
  e6:	8fad                	xor	a5,a5,a1
  e8:	cd1c                	sw	a5,24(a0)
  ea:	8fb1                	xor	a5,a5,a2
  ec:	cd5c                	sw	a5,28(a0)
  ee:	01050663          	beq	a0,a6,fa <.L5>
  f2:	0541                	addi	a0,a0,16

000000f4 <.LVL3>:
  f4:	b745                	j	94 <.L3>

000000f6 <.L4>:
  f6:	4501                	li	a0,0

000000f8 <.LVL5>:
  f8:	8082                	ret

000000fa <.L5>:
  fa:	4529                	li	a0,10

000000fc <.LVL7>:
  fc:	8082                	ret

Disassembly of section .text.rijndael_set_key:

00000000 <rijndael_set_key>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	00850493          	addi	s1,a0,8
   8:	cc22                	sw	s0,24(sp)
   a:	842a                	mv	s0,a0
   c:	8526                	mv	a0,s1

0000000e <.LVL9>:
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c452                	sw	s4,8(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	89ae                	mv	s3,a1
  18:	8a32                	mv	s4,a2
  1a:	8936                	mv	s2,a3
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL9+0xe>

00000024 <.LVL10>:
  24:	c048                	sw	a0,4(s0)
  26:	00090c63          	beqz	s2,3e <.L7>
  2a:	00042023          	sw	zero,0(s0)

0000002e <.L6>:
  2e:	40f2                	lw	ra,28(sp)
  30:	4462                	lw	s0,24(sp)

00000032 <.LVL12>:
  32:	44d2                	lw	s1,20(sp)
  34:	4942                	lw	s2,16(sp)
  36:	49b2                	lw	s3,12(sp)

00000038 <.LVL13>:
  38:	4a22                	lw	s4,8(sp)

0000003a <.LVL14>:
  3a:	6105                	addi	sp,sp,32
  3c:	8082                	ret

0000003e <.L7>:
  3e:	4785                	li	a5,1
  40:	c01c                	sw	a5,0(s0)

00000042 <.LBB4>:
  42:	e901                	bnez	a0,52 <.L9>
  44:	8652                	mv	a2,s4
  46:	85ce                	mv	a1,s3
  48:	8526                	mv	a0,s1

0000004a <.LVL17>:
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL17>

00000052 <.L9>:
  52:	00451793          	slli	a5,a0,0x4
  56:	8726                	mv	a4,s1
  58:	00251613          	slli	a2,a0,0x2

0000005c <.LVL19>:
  5c:	97a2                	add	a5,a5,s0

0000005e <.L10>:
  5e:	412606b3          	sub	a3,a2,s2
  62:	17c1                	addi	a5,a5,-16
  64:	18d94c63          	blt	s2,a3,1fc <.L11>
  68:	00000637          	lui	a2,0x0

0000006c <.LVL21>:
  6c:	000007b7          	lui	a5,0x0
  70:	000005b7          	lui	a1,0x0
  74:	00000837          	lui	a6,0x0
  78:	000008b7          	lui	a7,0x0
  7c:	4305                	li	t1,1
  7e:	00060613          	mv	a2,a2
  82:	00078793          	mv	a5,a5
  86:	00058593          	mv	a1,a1
  8a:	00080813          	mv	a6,a6
  8e:	00088893          	mv	a7,a7

00000092 <.L12>:
  92:	f8a35ee3          	bge	t1,a0,2e <.L6>
  96:	04c1                	addi	s1,s1,16
  98:	4098                	lw	a4,0(s1)
  9a:	0305                	addi	t1,t1,1

0000009c <.LVL24>:
  9c:	01875693          	srli	a3,a4,0x18
  a0:	0ff77e13          	andi	t3,a4,255
  a4:	96be                	add	a3,a3,a5
  a6:	9e3e                	add	t3,t3,a5
  a8:	0006c683          	lbu	a3,0(a3) # 0 <rijndael_set_key>
  ac:	000e4e03          	lbu	t3,0(t3)
  b0:	068a                	slli	a3,a3,0x2
  b2:	0e0a                	slli	t3,t3,0x2
  b4:	96b2                	add	a3,a3,a2
  b6:	9e2e                	add	t3,t3,a1
  b8:	000e2e03          	lw	t3,0(t3)
  bc:	4294                	lw	a3,0(a3)
  be:	01c6c6b3          	xor	a3,a3,t3
  c2:	01075e13          	srli	t3,a4,0x10
  c6:	0ffe7e13          	andi	t3,t3,255
  ca:	8321                	srli	a4,a4,0x8
  cc:	9e3e                	add	t3,t3,a5
  ce:	0ff77713          	andi	a4,a4,255
  d2:	000e4e03          	lbu	t3,0(t3)
  d6:	973e                	add	a4,a4,a5
  d8:	00074703          	lbu	a4,0(a4) # 0 <rijndael_set_key>
  dc:	0e0a                	slli	t3,t3,0x2
  de:	9e42                	add	t3,t3,a6
  e0:	070a                	slli	a4,a4,0x2
  e2:	000e2e03          	lw	t3,0(t3)
  e6:	9746                	add	a4,a4,a7
  e8:	4318                	lw	a4,0(a4)
  ea:	01c6c6b3          	xor	a3,a3,t3
  ee:	8f35                	xor	a4,a4,a3
  f0:	c098                	sw	a4,0(s1)
  f2:	40d8                	lw	a4,4(s1)
  f4:	01875693          	srli	a3,a4,0x18
  f8:	0ff77e13          	andi	t3,a4,255
  fc:	96be                	add	a3,a3,a5
  fe:	9e3e                	add	t3,t3,a5
 100:	0006c683          	lbu	a3,0(a3)
 104:	000e4e03          	lbu	t3,0(t3)
 108:	068a                	slli	a3,a3,0x2
 10a:	0e0a                	slli	t3,t3,0x2
 10c:	96b2                	add	a3,a3,a2
 10e:	9e2e                	add	t3,t3,a1
 110:	000e2e03          	lw	t3,0(t3)
 114:	4294                	lw	a3,0(a3)
 116:	01c6c6b3          	xor	a3,a3,t3
 11a:	01075e13          	srli	t3,a4,0x10
 11e:	0ffe7e13          	andi	t3,t3,255
 122:	8321                	srli	a4,a4,0x8
 124:	9e3e                	add	t3,t3,a5
 126:	0ff77713          	andi	a4,a4,255
 12a:	000e4e03          	lbu	t3,0(t3)
 12e:	973e                	add	a4,a4,a5
 130:	00074703          	lbu	a4,0(a4)
 134:	0e0a                	slli	t3,t3,0x2
 136:	9e42                	add	t3,t3,a6
 138:	070a                	slli	a4,a4,0x2
 13a:	000e2e03          	lw	t3,0(t3)
 13e:	9746                	add	a4,a4,a7
 140:	4318                	lw	a4,0(a4)
 142:	01c6c6b3          	xor	a3,a3,t3
 146:	8f35                	xor	a4,a4,a3
 148:	c0d8                	sw	a4,4(s1)
 14a:	4498                	lw	a4,8(s1)
 14c:	01875693          	srli	a3,a4,0x18
 150:	0ff77e13          	andi	t3,a4,255
 154:	96be                	add	a3,a3,a5
 156:	9e3e                	add	t3,t3,a5
 158:	0006c683          	lbu	a3,0(a3)
 15c:	000e4e03          	lbu	t3,0(t3)
 160:	068a                	slli	a3,a3,0x2
 162:	0e0a                	slli	t3,t3,0x2
 164:	96b2                	add	a3,a3,a2
 166:	9e2e                	add	t3,t3,a1
 168:	000e2e03          	lw	t3,0(t3)
 16c:	4294                	lw	a3,0(a3)
 16e:	01c6c6b3          	xor	a3,a3,t3
 172:	01075e13          	srli	t3,a4,0x10
 176:	0ffe7e13          	andi	t3,t3,255
 17a:	8321                	srli	a4,a4,0x8
 17c:	9e3e                	add	t3,t3,a5
 17e:	0ff77713          	andi	a4,a4,255
 182:	000e4e03          	lbu	t3,0(t3)
 186:	973e                	add	a4,a4,a5
 188:	00074703          	lbu	a4,0(a4)
 18c:	0e0a                	slli	t3,t3,0x2
 18e:	9e42                	add	t3,t3,a6
 190:	070a                	slli	a4,a4,0x2
 192:	000e2e03          	lw	t3,0(t3)
 196:	9746                	add	a4,a4,a7
 198:	4318                	lw	a4,0(a4)
 19a:	01c6c6b3          	xor	a3,a3,t3
 19e:	8f35                	xor	a4,a4,a3
 1a0:	c498                	sw	a4,8(s1)
 1a2:	44d8                	lw	a4,12(s1)
 1a4:	01875693          	srli	a3,a4,0x18
 1a8:	0ff77e13          	andi	t3,a4,255
 1ac:	96be                	add	a3,a3,a5
 1ae:	9e3e                	add	t3,t3,a5
 1b0:	0006c683          	lbu	a3,0(a3)
 1b4:	000e4e03          	lbu	t3,0(t3)

000001b8 <.LVL25>:
 1b8:	068a                	slli	a3,a3,0x2
 1ba:	0e0a                	slli	t3,t3,0x2
 1bc:	96b2                	add	a3,a3,a2
 1be:	9e2e                	add	t3,t3,a1
 1c0:	000e2e03          	lw	t3,0(t3)
 1c4:	4294                	lw	a3,0(a3)
 1c6:	01c6c6b3          	xor	a3,a3,t3
 1ca:	01075e13          	srli	t3,a4,0x10
 1ce:	0ffe7e13          	andi	t3,t3,255
 1d2:	8321                	srli	a4,a4,0x8
 1d4:	9e3e                	add	t3,t3,a5
 1d6:	0ff77713          	andi	a4,a4,255
 1da:	000e4e03          	lbu	t3,0(t3)
 1de:	973e                	add	a4,a4,a5
 1e0:	00074703          	lbu	a4,0(a4)
 1e4:	0e0a                	slli	t3,t3,0x2
 1e6:	9e42                	add	t3,t3,a6
 1e8:	070a                	slli	a4,a4,0x2
 1ea:	000e2e03          	lw	t3,0(t3)
 1ee:	9746                	add	a4,a4,a7
 1f0:	4318                	lw	a4,0(a4)
 1f2:	01c6c6b3          	xor	a3,a3,t3
 1f6:	8f35                	xor	a4,a4,a3
 1f8:	c4d8                	sw	a4,12(s1)
 1fa:	bd61                	j	92 <.L12>

000001fc <.L11>:
 1fc:	4f8c                	lw	a1,24(a5)
 1fe:	4314                	lw	a3,0(a4)
 200:	0911                	addi	s2,s2,4

00000202 <.LVL28>:
 202:	c30c                	sw	a1,0(a4)
 204:	cf94                	sw	a3,24(a5)
 206:	4fcc                	lw	a1,28(a5)
 208:	4354                	lw	a3,4(a4)
 20a:	0741                	addi	a4,a4,16
 20c:	feb72a23          	sw	a1,-12(a4)
 210:	cfd4                	sw	a3,28(a5)
 212:	538c                	lw	a1,32(a5)
 214:	ff872683          	lw	a3,-8(a4)
 218:	feb72c23          	sw	a1,-8(a4)
 21c:	d394                	sw	a3,32(a5)
 21e:	53cc                	lw	a1,36(a5)
 220:	ffc72683          	lw	a3,-4(a4)
 224:	feb72e23          	sw	a1,-4(a4)

00000228 <.LVL32>:
 228:	d3d4                	sw	a3,36(a5)
 22a:	bd15                	j	5e <.L10>

Disassembly of section .text.rijndael_decrypt:

00000000 <rijndael_decrypt>:
   0:	7179                	addi	sp,sp,-48
   2:	d622                	sw	s0,44(sp)
   4:	d426                	sw	s1,40(sp)
   6:	d24a                	sw	s2,36(sp)
   8:	c85e                	sw	s7,16(sp)
   a:	c662                	sw	s8,12(sp)
   c:	d04e                	sw	s3,32(sp)
   e:	ce52                	sw	s4,28(sp)
  10:	cc56                	sw	s5,24(sp)
  12:	ca5a                	sw	s6,20(sp)
  14:	c466                	sw	s9,8(sp)
  16:	c26a                	sw	s10,4(sp)
  18:	c06e                	sw	s11,0(sp)

0000001a <.LBB8>:
  1a:	0005c703          	lbu	a4,0(a1) # 0 <rijndael_decrypt>
  1e:	0015c783          	lbu	a5,1(a1)
  22:	0045ce03          	lbu	t3,4(a1)
  26:	0762                	slli	a4,a4,0x18
  28:	07c2                	slli	a5,a5,0x10
  2a:	8f3d                	xor	a4,a4,a5
  2c:	0035c783          	lbu	a5,3(a1)
  30:	0e62                	slli	t3,t3,0x18
  32:	0085c883          	lbu	a7,8(a1)
  36:	8f3d                	xor	a4,a4,a5
  38:	0025c783          	lbu	a5,2(a1)
  3c:	08e2                	slli	a7,a7,0x18
  3e:	00d5c683          	lbu	a3,13(a1)
  42:	07a2                	slli	a5,a5,0x8
  44:	8f3d                	xor	a4,a4,a5
  46:	451c                	lw	a5,8(a0)
  48:	06c2                	slli	a3,a3,0x10

0000004a <.LBE8>:
  4a:	00850c13          	addi	s8,a0,8

0000004e <.LBB12>:
  4e:	8f3d                	xor	a4,a4,a5

00000050 <.LVL35>:
  50:	0055c783          	lbu	a5,5(a1)
  54:	00000937          	lui	s2,0x0
  58:	000004b7          	lui	s1,0x0
  5c:	07c2                	slli	a5,a5,0x10
  5e:	00fe4e33          	xor	t3,t3,a5
  62:	0075c783          	lbu	a5,7(a1)
  66:	000003b7          	lui	t2,0x0
  6a:	000002b7          	lui	t0,0x0
  6e:	00fe4e33          	xor	t3,t3,a5
  72:	0065c783          	lbu	a5,6(a1)
  76:	8462                	mv	s0,s8
  78:	00090913          	mv	s2,s2
  7c:	07a2                	slli	a5,a5,0x8
  7e:	00fe4e33          	xor	t3,t3,a5
  82:	455c                	lw	a5,12(a0)
  84:	00048493          	mv	s1,s1
  88:	00038393          	mv	t2,t2
  8c:	00fe4e33          	xor	t3,t3,a5

00000090 <.LVL36>:
  90:	0095c783          	lbu	a5,9(a1)
  94:	00028293          	mv	t0,t0
  98:	07c2                	slli	a5,a5,0x10
  9a:	00f8c8b3          	xor	a7,a7,a5
  9e:	00b5c783          	lbu	a5,11(a1)
  a2:	00f8c8b3          	xor	a7,a7,a5
  a6:	00a5c783          	lbu	a5,10(a1)
  aa:	07a2                	slli	a5,a5,0x8
  ac:	00f8c8b3          	xor	a7,a7,a5
  b0:	491c                	lw	a5,16(a0)
  b2:	00f8c8b3          	xor	a7,a7,a5

000000b6 <.LVL37>:
  b6:	00c5c783          	lbu	a5,12(a1)
  ba:	07e2                	slli	a5,a5,0x18
  bc:	8fb5                	xor	a5,a5,a3
  be:	00f5c683          	lbu	a3,15(a1)
  c2:	8fb5                	xor	a5,a5,a3
  c4:	00e5c683          	lbu	a3,14(a1)
  c8:	06a2                	slli	a3,a3,0x8
  ca:	8fb5                	xor	a5,a5,a3
  cc:	4954                	lw	a3,20(a0)
  ce:	00452803          	lw	a6,4(a0)
  d2:	8fb5                	xor	a5,a5,a3

000000d4 <.LVL38>:
  d4:	40185813          	srai	a6,a6,0x1

000000d8 <.LVL39>:
  d8:	8bc2                	mv	s7,a6

000000da <.L17>:
  da:	01875593          	srli	a1,a4,0x18
  de:	0ffe7693          	andi	a3,t3,255
  e2:	058a                	slli	a1,a1,0x2
  e4:	068a                	slli	a3,a3,0x2
  e6:	95ca                	add	a1,a1,s2
  e8:	96a6                	add	a3,a3,s1
  ea:	4188                	lw	a0,0(a1)
  ec:	4294                	lw	a3,0(a3)
  ee:	018e5593          	srli	a1,t3,0x18
  f2:	058a                	slli	a1,a1,0x2
  f4:	8d35                	xor	a0,a0,a3
  f6:	4814                	lw	a3,16(s0)
  f8:	95ca                	add	a1,a1,s2
  fa:	418c                	lw	a1,0(a1)
  fc:	8d35                	xor	a0,a0,a3
  fe:	00e7d693          	srli	a3,a5,0xe
 102:	3fc6f693          	andi	a3,a3,1020
 106:	969e                	add	a3,a3,t2
 108:	4294                	lw	a3,0(a3)
 10a:	0ff7f313          	andi	t1,a5,255
 10e:	030a                	slli	t1,t1,0x2
 110:	8d35                	xor	a0,a0,a3
 112:	0068d693          	srli	a3,a7,0x6
 116:	3fc6f693          	andi	a3,a3,1020
 11a:	9696                	add	a3,a3,t0
 11c:	4294                	lw	a3,0(a3)
 11e:	9326                	add	t1,t1,s1
 120:	00032303          	lw	t1,0(t1)
 124:	8d35                	xor	a0,a0,a3

00000126 <.LVL41>:
 126:	0ff8f693          	andi	a3,a7,255
 12a:	068a                	slli	a3,a3,0x2
 12c:	96a6                	add	a3,a3,s1
 12e:	4294                	lw	a3,0(a3)
 130:	01055e93          	srli	t4,a0,0x10
 134:	02040413          	addi	s0,s0,32

00000138 <.LVL42>:
 138:	8db5                	xor	a1,a1,a3
 13a:	ff442683          	lw	a3,-12(s0)
 13e:	1bfd                	addi	s7,s7,-1

00000140 <.LVL43>:
 140:	01855c93          	srli	s9,a0,0x18
 144:	8db5                	xor	a1,a1,a3
 146:	00e75693          	srli	a3,a4,0xe
 14a:	3fc6f693          	andi	a3,a3,1020
 14e:	969e                	add	a3,a3,t2
 150:	4294                	lw	a3,0(a3)
 152:	0ffefe93          	andi	t4,t4,255
 156:	8db5                	xor	a1,a1,a3
 158:	0067d693          	srli	a3,a5,0x6
 15c:	3fc6f693          	andi	a3,a3,1020
 160:	9696                	add	a3,a3,t0
 162:	4294                	lw	a3,0(a3)
 164:	83e1                	srli	a5,a5,0x18

00000166 <.LVL44>:
 166:	078a                	slli	a5,a5,0x2
 168:	8db5                	xor	a1,a1,a3

0000016a <.LVL45>:
 16a:	0188d693          	srli	a3,a7,0x18
 16e:	068a                	slli	a3,a3,0x2
 170:	96ca                	add	a3,a3,s2
 172:	4294                	lw	a3,0(a3)
 174:	97ca                	add	a5,a5,s2
 176:	439c                	lw	a5,0(a5)
 178:	0066c6b3          	xor	a3,a3,t1
 17c:	ff842303          	lw	t1,-8(s0)
 180:	00e8d893          	srli	a7,a7,0xe

00000184 <.LVL46>:
 184:	3fc8f893          	andi	a7,a7,1020
 188:	0066c6b3          	xor	a3,a3,t1
 18c:	00ee5313          	srli	t1,t3,0xe
 190:	3fc37313          	andi	t1,t1,1020
 194:	931e                	add	t1,t1,t2
 196:	00032303          	lw	t1,0(t1)
 19a:	989e                	add	a7,a7,t2
 19c:	006e5e13          	srli	t3,t3,0x6

000001a0 <.LVL47>:
 1a0:	0066c6b3          	xor	a3,a3,t1
 1a4:	00675313          	srli	t1,a4,0x6
 1a8:	0ff77713          	andi	a4,a4,255

000001ac <.LVL48>:
 1ac:	070a                	slli	a4,a4,0x2
 1ae:	9726                	add	a4,a4,s1
 1b0:	4318                	lw	a4,0(a4)
 1b2:	3fc37313          	andi	t1,t1,1020
 1b6:	3fce7e13          	andi	t3,t3,1020
 1ba:	8fb9                	xor	a5,a5,a4
 1bc:	ffc42703          	lw	a4,-4(s0)
 1c0:	9e16                	add	t3,t3,t0
 1c2:	9316                	add	t1,t1,t0
 1c4:	8fb9                	xor	a5,a5,a4
 1c6:	0008a703          	lw	a4,0(a7) # 0 <rijndael_decrypt>
 1ca:	00032303          	lw	t1,0(t1)
 1ce:	00855893          	srli	a7,a0,0x8
 1d2:	8fb9                	xor	a5,a5,a4
 1d4:	000e2703          	lw	a4,0(t3)
 1d8:	0066c6b3          	xor	a3,a3,t1

000001dc <.LVL49>:
 1dc:	0086df13          	srli	t5,a3,0x8
 1e0:	8fb9                	xor	a5,a5,a4

000001e2 <.LVL50>:
 1e2:	0107df93          	srli	t6,a5,0x10
 1e6:	0087de13          	srli	t3,a5,0x8
 1ea:	0105d313          	srli	t1,a1,0x10
 1ee:	0ff5f713          	andi	a4,a1,255
 1f2:	0185db13          	srli	s6,a1,0x18
 1f6:	0ff6fa93          	andi	s5,a3,255
 1fa:	0186da13          	srli	s4,a3,0x18
 1fe:	81a1                	srli	a1,a1,0x8

00000200 <.LVL51>:
 200:	82c1                	srli	a3,a3,0x10

00000202 <.LVL52>:
 202:	0ff7f993          	andi	s3,a5,255
 206:	0fffff93          	andi	t6,t6,255
 20a:	0fff7f13          	andi	t5,t5,255
 20e:	00042d03          	lw	s10,0(s0)
 212:	0ffe7e13          	andi	t3,t3,255
 216:	0ff37313          	andi	t1,t1,255
 21a:	0ff8f893          	andi	a7,a7,255
 21e:	83e1                	srli	a5,a5,0x18

00000220 <.LVL53>:
 220:	0ff6f693          	andi	a3,a3,255
 224:	0ff5f593          	andi	a1,a1,255
 228:	0ff57513          	andi	a0,a0,255

0000022c <.LVL54>:
 22c:	0c0b8163          	beqz	s7,2ee <.L16>
 230:	070a                	slli	a4,a4,0x2
 232:	0c8a                	slli	s9,s9,0x2
 234:	9cca                	add	s9,s9,s2
 236:	00e48db3          	add	s11,s1,a4
 23a:	000ca703          	lw	a4,0(s9)
 23e:	000dac83          	lw	s9,0(s11)
 242:	0f8a                	slli	t6,t6,0x2
 244:	9f9e                	add	t6,t6,t2
 246:	01974733          	xor	a4,a4,s9
 24a:	0f0a                	slli	t5,t5,0x2
 24c:	01a74733          	xor	a4,a4,s10
 250:	9f16                	add	t5,t5,t0
 252:	000fad03          	lw	s10,0(t6)
 256:	000f2f03          	lw	t5,0(t5)
 25a:	0b0a                	slli	s6,s6,0x2
 25c:	0a8a                	slli	s5,s5,0x2
 25e:	01a74733          	xor	a4,a4,s10
 262:	9b4a                	add	s6,s6,s2
 264:	9aa6                	add	s5,s5,s1
 266:	000aaf83          	lw	t6,0(s5)
 26a:	01e74733          	xor	a4,a4,t5

0000026e <.LVL55>:
 26e:	000b2f03          	lw	t5,0(s6)
 272:	0e8a                	slli	t4,t4,0x2
 274:	9e9e                	add	t4,t4,t2
 276:	01ff4f33          	xor	t5,t5,t6
 27a:	0e0a                	slli	t3,t3,0x2
 27c:	00442f83          	lw	t6,4(s0)
 280:	000eae83          	lw	t4,0(t4)
 284:	9e16                	add	t3,t3,t0
 286:	078a                	slli	a5,a5,0x2
 288:	050a                	slli	a0,a0,0x2
 28a:	000e2e03          	lw	t3,0(t3)
 28e:	97ca                	add	a5,a5,s2
 290:	9526                	add	a0,a0,s1
 292:	01ff4f33          	xor	t5,t5,t6
 296:	4108                	lw	a0,0(a0)
 298:	0a0a                	slli	s4,s4,0x2
 29a:	098a                	slli	s3,s3,0x2
 29c:	439c                	lw	a5,0(a5)
 29e:	01df4eb3          	xor	t4,t5,t4
 2a2:	9a4a                	add	s4,s4,s2
 2a4:	99a6                	add	s3,s3,s1
 2a6:	0009af03          	lw	t5,0(s3)
 2aa:	01cece33          	xor	t3,t4,t3

000002ae <.LVL56>:
 2ae:	068a                	slli	a3,a3,0x2
 2b0:	000a2e83          	lw	t4,0(s4)
 2b4:	8fa9                	xor	a5,a5,a0
 2b6:	969e                	add	a3,a3,t2
 2b8:	4448                	lw	a0,12(s0)
 2ba:	4294                	lw	a3,0(a3)
 2bc:	030a                	slli	t1,t1,0x2
 2be:	01eeceb3          	xor	t4,t4,t5
 2c2:	931e                	add	t1,t1,t2
 2c4:	00842f03          	lw	t5,8(s0)
 2c8:	088a                	slli	a7,a7,0x2
 2ca:	058a                	slli	a1,a1,0x2
 2cc:	00032303          	lw	t1,0(t1)
 2d0:	9896                	add	a7,a7,t0
 2d2:	8fa9                	xor	a5,a5,a0
 2d4:	9596                	add	a1,a1,t0
 2d6:	8fb5                	xor	a5,a5,a3
 2d8:	0008a883          	lw	a7,0(a7)
 2dc:	4194                	lw	a3,0(a1)
 2de:	01eeceb3          	xor	t4,t4,t5
 2e2:	006ec333          	xor	t1,t4,t1
 2e6:	011348b3          	xor	a7,t1,a7

000002ea <.LVL57>:
 2ea:	8fb5                	xor	a5,a5,a3

000002ec <.LVL58>:
 2ec:	b3fd                	j	da <.L17>

000002ee <.L16>:
 2ee:	000002b7          	lui	t0,0x0
 2f2:	00028293          	mv	t0,t0
 2f6:	0816                	slli	a6,a6,0x5
 2f8:	9c96                	add	s9,s9,t0
 2fa:	9f96                	add	t6,t6,t0
 2fc:	9c42                	add	s8,s8,a6

000002fe <.LVL60>:
 2fe:	000fcf83          	lbu	t6,0(t6)
 302:	000cc803          	lbu	a6,0(s9)
 306:	9716                	add	a4,a4,t0
 308:	00074703          	lbu	a4,0(a4)
 30c:	0862                	slli	a6,a6,0x18
 30e:	0fc2                	slli	t6,t6,0x10
 310:	01f84833          	xor	a6,a6,t6
 314:	9f16                	add	t5,t5,t0
 316:	00e84733          	xor	a4,a6,a4
 31a:	000f4803          	lbu	a6,0(t5)
 31e:	9b16                	add	s6,s6,t0
 320:	9e96                	add	t4,t4,t0
 322:	0822                	slli	a6,a6,0x8
 324:	01074733          	xor	a4,a4,a6
 328:	01a74d33          	xor	s10,a4,s10

0000032c <.LVL61>:
 32c:	018d5713          	srli	a4,s10,0x18
 330:	00e60023          	sb	a4,0(a2) # 0 <rijndael_decrypt>

00000334 <.LVL62>:
 334:	010d5713          	srli	a4,s10,0x10
 338:	00e600a3          	sb	a4,1(a2)
 33c:	008d5713          	srli	a4,s10,0x8
 340:	00e60123          	sb	a4,2(a2)
 344:	000ec803          	lbu	a6,0(t4)
 348:	000b4703          	lbu	a4,0(s6)
 34c:	9a96                	add	s5,s5,t0
 34e:	0842                	slli	a6,a6,0x10
 350:	0762                	slli	a4,a4,0x18
 352:	01074733          	xor	a4,a4,a6
 356:	000ac803          	lbu	a6,0(s5)
 35a:	9e16                	add	t3,t3,t0
 35c:	01a601a3          	sb	s10,3(a2)
 360:	01074733          	xor	a4,a4,a6
 364:	000e4803          	lbu	a6,0(t3)
 368:	9a16                	add	s4,s4,t0
 36a:	9316                	add	t1,t1,t0
 36c:	0822                	slli	a6,a6,0x8
 36e:	01074733          	xor	a4,a4,a6
 372:	004c2803          	lw	a6,4(s8)
 376:	9996                	add	s3,s3,t0
 378:	9896                	add	a7,a7,t0
 37a:	01074733          	xor	a4,a4,a6

0000037e <.LVL63>:
 37e:	01875813          	srli	a6,a4,0x18
 382:	01060223          	sb	a6,4(a2)
 386:	01075813          	srli	a6,a4,0x10
 38a:	010602a3          	sb	a6,5(a2)
 38e:	00875813          	srli	a6,a4,0x8
 392:	01060323          	sb	a6,6(a2)
 396:	00e603a3          	sb	a4,7(a2)
 39a:	00034803          	lbu	a6,0(t1)
 39e:	000a4703          	lbu	a4,0(s4)

000003a2 <.LVL64>:
 3a2:	9796                	add	a5,a5,t0
 3a4:	0842                	slli	a6,a6,0x10
 3a6:	0762                	slli	a4,a4,0x18
 3a8:	01074733          	xor	a4,a4,a6
 3ac:	0009c803          	lbu	a6,0(s3)
 3b0:	9696                	add	a3,a3,t0
 3b2:	0007c783          	lbu	a5,0(a5) # 0 <rijndael_decrypt>
 3b6:	01074733          	xor	a4,a4,a6
 3ba:	0008c803          	lbu	a6,0(a7)
 3be:	07e2                	slli	a5,a5,0x18
 3c0:	9516                	add	a0,a0,t0
 3c2:	0822                	slli	a6,a6,0x8
 3c4:	01074733          	xor	a4,a4,a6
 3c8:	008c2803          	lw	a6,8(s8)
 3cc:	9596                	add	a1,a1,t0
 3ce:	01074733          	xor	a4,a4,a6

000003d2 <.LVL65>:
 3d2:	01875813          	srli	a6,a4,0x18
 3d6:	01060423          	sb	a6,8(a2)
 3da:	01075813          	srli	a6,a4,0x10
 3de:	010604a3          	sb	a6,9(a2)
 3e2:	00e605a3          	sb	a4,11(a2)
 3e6:	00875813          	srli	a6,a4,0x8
 3ea:	0006c703          	lbu	a4,0(a3)

000003ee <.LVL66>:
 3ee:	01060523          	sb	a6,10(a2)
 3f2:	0742                	slli	a4,a4,0x10
 3f4:	8fb9                	xor	a5,a5,a4
 3f6:	00054703          	lbu	a4,0(a0)
 3fa:	8fb9                	xor	a5,a5,a4
 3fc:	0005c703          	lbu	a4,0(a1)
 400:	0722                	slli	a4,a4,0x8
 402:	8fb9                	xor	a5,a5,a4
 404:	00cc2703          	lw	a4,12(s8)
 408:	8fb9                	xor	a5,a5,a4

0000040a <.LVL67>:
 40a:	0187d713          	srli	a4,a5,0x18
 40e:	00e60623          	sb	a4,12(a2)
 412:	0107d713          	srli	a4,a5,0x10
 416:	00e606a3          	sb	a4,13(a2)

0000041a <.LBE12>:
 41a:	5432                	lw	s0,44(sp)

0000041c <.LBB13>:
 41c:	0087d713          	srli	a4,a5,0x8
 420:	00e60723          	sb	a4,14(a2)
 424:	00f607a3          	sb	a5,15(a2)

00000428 <.LBE13>:
 428:	54a2                	lw	s1,40(sp)
 42a:	5912                	lw	s2,36(sp)
 42c:	5982                	lw	s3,32(sp)
 42e:	4a72                	lw	s4,28(sp)
 430:	4ae2                	lw	s5,24(sp)
 432:	4b52                	lw	s6,20(sp)
 434:	4bc2                	lw	s7,16(sp)
 436:	4c32                	lw	s8,12(sp)
 438:	4ca2                	lw	s9,8(sp)
 43a:	4d12                	lw	s10,4(sp)
 43c:	4d82                	lw	s11,0(sp)
 43e:	6145                	addi	sp,sp,48
 440:	8082                	ret

Disassembly of section .text.rijndael_encrypt:

00000000 <rijndael_encrypt>:
   0:	7179                	addi	sp,sp,-48
   2:	d622                	sw	s0,44(sp)
   4:	d426                	sw	s1,40(sp)
   6:	d24a                	sw	s2,36(sp)
   8:	c85e                	sw	s7,16(sp)
   a:	c662                	sw	s8,12(sp)
   c:	d04e                	sw	s3,32(sp)
   e:	ce52                	sw	s4,28(sp)
  10:	cc56                	sw	s5,24(sp)
  12:	ca5a                	sw	s6,20(sp)
  14:	c466                	sw	s9,8(sp)
  16:	c26a                	sw	s10,4(sp)
  18:	c06e                	sw	s11,0(sp)

0000001a <.LBB16>:
  1a:	0005c703          	lbu	a4,0(a1)
  1e:	0015c783          	lbu	a5,1(a1)
  22:	0045ce03          	lbu	t3,4(a1)
  26:	0762                	slli	a4,a4,0x18
  28:	07c2                	slli	a5,a5,0x10
  2a:	8f3d                	xor	a4,a4,a5
  2c:	0035c783          	lbu	a5,3(a1)
  30:	0e62                	slli	t3,t3,0x18
  32:	0085c883          	lbu	a7,8(a1)
  36:	8f3d                	xor	a4,a4,a5
  38:	0025c783          	lbu	a5,2(a1)
  3c:	08e2                	slli	a7,a7,0x18
  3e:	00d5c683          	lbu	a3,13(a1)
  42:	07a2                	slli	a5,a5,0x8
  44:	8f3d                	xor	a4,a4,a5
  46:	451c                	lw	a5,8(a0)
  48:	06c2                	slli	a3,a3,0x10

0000004a <.LBE16>:
  4a:	00850c13          	addi	s8,a0,8

0000004e <.LBB20>:
  4e:	8f3d                	xor	a4,a4,a5

00000050 <.LVL72>:
  50:	0055c783          	lbu	a5,5(a1)
  54:	00000937          	lui	s2,0x0
  58:	000004b7          	lui	s1,0x0
  5c:	07c2                	slli	a5,a5,0x10
  5e:	00fe4e33          	xor	t3,t3,a5
  62:	0075c783          	lbu	a5,7(a1)
  66:	000003b7          	lui	t2,0x0
  6a:	000002b7          	lui	t0,0x0
  6e:	00fe4e33          	xor	t3,t3,a5
  72:	0065c783          	lbu	a5,6(a1)
  76:	8462                	mv	s0,s8
  78:	00090913          	mv	s2,s2
  7c:	07a2                	slli	a5,a5,0x8
  7e:	00fe4e33          	xor	t3,t3,a5
  82:	455c                	lw	a5,12(a0)
  84:	00048493          	mv	s1,s1
  88:	00038393          	mv	t2,t2
  8c:	00fe4e33          	xor	t3,t3,a5

00000090 <.LVL73>:
  90:	0095c783          	lbu	a5,9(a1)
  94:	00028293          	mv	t0,t0
  98:	07c2                	slli	a5,a5,0x10
  9a:	00f8c8b3          	xor	a7,a7,a5
  9e:	00b5c783          	lbu	a5,11(a1)
  a2:	00f8c8b3          	xor	a7,a7,a5
  a6:	00a5c783          	lbu	a5,10(a1)
  aa:	07a2                	slli	a5,a5,0x8
  ac:	00f8c8b3          	xor	a7,a7,a5
  b0:	491c                	lw	a5,16(a0)
  b2:	00f8c8b3          	xor	a7,a7,a5

000000b6 <.LVL74>:
  b6:	00c5c783          	lbu	a5,12(a1)
  ba:	07e2                	slli	a5,a5,0x18
  bc:	8fb5                	xor	a5,a5,a3
  be:	00f5c683          	lbu	a3,15(a1)
  c2:	8fb5                	xor	a5,a5,a3
  c4:	00e5c683          	lbu	a3,14(a1)
  c8:	06a2                	slli	a3,a3,0x8
  ca:	8fb5                	xor	a5,a5,a3
  cc:	4954                	lw	a3,20(a0)
  ce:	00452803          	lw	a6,4(a0)
  d2:	8fb5                	xor	a5,a5,a3

000000d4 <.LVL75>:
  d4:	40185813          	srai	a6,a6,0x1

000000d8 <.LVL76>:
  d8:	8bc2                	mv	s7,a6

000000da <.L21>:
  da:	01875693          	srli	a3,a4,0x18
  de:	0ff7f593          	andi	a1,a5,255
  e2:	068a                	slli	a3,a3,0x2
  e4:	058a                	slli	a1,a1,0x2
  e6:	96ca                	add	a3,a3,s2
  e8:	95a6                	add	a1,a1,s1
  ea:	418c                	lw	a1,0(a1)
  ec:	4294                	lw	a3,0(a3)
  ee:	0ff77513          	andi	a0,a4,255
  f2:	050a                	slli	a0,a0,0x2
  f4:	8ead                	xor	a3,a3,a1
  f6:	480c                	lw	a1,16(s0)
  f8:	9526                	add	a0,a0,s1
  fa:	4108                	lw	a0,0(a0)
  fc:	8ead                	xor	a3,a3,a1
  fe:	00ee5593          	srli	a1,t3,0xe
 102:	3fc5f593          	andi	a1,a1,1020
 106:	959e                	add	a1,a1,t2
 108:	418c                	lw	a1,0(a1)
 10a:	0ffe7313          	andi	t1,t3,255
 10e:	030a                	slli	t1,t1,0x2
 110:	8ead                	xor	a3,a3,a1
 112:	0068d593          	srli	a1,a7,0x6
 116:	3fc5f593          	andi	a1,a1,1020
 11a:	9596                	add	a1,a1,t0
 11c:	418c                	lw	a1,0(a1)
 11e:	9326                	add	t1,t1,s1
 120:	00032303          	lw	t1,0(t1)
 124:	8ead                	xor	a3,a3,a1

00000126 <.LVL78>:
 126:	018e5593          	srli	a1,t3,0x18
 12a:	058a                	slli	a1,a1,0x2
 12c:	95ca                	add	a1,a1,s2
 12e:	418c                	lw	a1,0(a1)
 130:	006e5e13          	srli	t3,t3,0x6

00000134 <.LVL79>:
 134:	3fce7e13          	andi	t3,t3,1020
 138:	8da9                	xor	a1,a1,a0
 13a:	4848                	lw	a0,20(s0)
 13c:	9e16                	add	t3,t3,t0
 13e:	02040413          	addi	s0,s0,32

00000142 <.LVL80>:
 142:	8da9                	xor	a1,a1,a0
 144:	00e8d513          	srli	a0,a7,0xe
 148:	3fc57513          	andi	a0,a0,1020
 14c:	951e                	add	a0,a0,t2
 14e:	4108                	lw	a0,0(a0)
 150:	0186dc93          	srli	s9,a3,0x18
 154:	0ff6fa93          	andi	s5,a3,255
 158:	8da9                	xor	a1,a1,a0
 15a:	0067d513          	srli	a0,a5,0x6
 15e:	3fc57513          	andi	a0,a0,1020
 162:	9516                	add	a0,a0,t0
 164:	4108                	lw	a0,0(a0)
 166:	1bfd                	addi	s7,s7,-1

00000168 <.LVL81>:
 168:	8da9                	xor	a1,a1,a0

0000016a <.LVL82>:
 16a:	0188d513          	srli	a0,a7,0x18
 16e:	050a                	slli	a0,a0,0x2
 170:	954a                	add	a0,a0,s2
 172:	4108                	lw	a0,0(a0)
 174:	0ff8f893          	andi	a7,a7,255

00000178 <.LVL83>:
 178:	088a                	slli	a7,a7,0x2
 17a:	00654533          	xor	a0,a0,t1
 17e:	ff842303          	lw	t1,-8(s0)
 182:	98a6                	add	a7,a7,s1
 184:	0008a883          	lw	a7,0(a7)
 188:	00654533          	xor	a0,a0,t1
 18c:	00e7d313          	srli	t1,a5,0xe
 190:	3fc37313          	andi	t1,t1,1020
 194:	931e                	add	t1,t1,t2
 196:	83e1                	srli	a5,a5,0x18

00000198 <.LVL84>:
 198:	00032303          	lw	t1,0(t1)
 19c:	078a                	slli	a5,a5,0x2
 19e:	97ca                	add	a5,a5,s2
 1a0:	439c                	lw	a5,0(a5)
 1a2:	00654533          	xor	a0,a0,t1
 1a6:	00675313          	srli	t1,a4,0x6
 1aa:	8339                	srli	a4,a4,0xe

000001ac <.LVL85>:
 1ac:	3fc77713          	andi	a4,a4,1020
 1b0:	0117c7b3          	xor	a5,a5,a7
 1b4:	971e                	add	a4,a4,t2
 1b6:	ffc42883          	lw	a7,-4(s0)
 1ba:	4318                	lw	a4,0(a4)
 1bc:	3fc37313          	andi	t1,t1,1020
 1c0:	0117c7b3          	xor	a5,a5,a7
 1c4:	9316                	add	t1,t1,t0
 1c6:	00032303          	lw	t1,0(t1)
 1ca:	8fb9                	xor	a5,a5,a4
 1cc:	000e2703          	lw	a4,0(t3)
 1d0:	00654533          	xor	a0,a0,t1

000001d4 <.LVL86>:
 1d4:	0105df93          	srli	t6,a1,0x10
 1d8:	8fb9                	xor	a5,a5,a4

000001da <.LVL87>:
 1da:	00855f13          	srli	t5,a0,0x8
 1de:	01055e93          	srli	t4,a0,0x10
 1e2:	0087de13          	srli	t3,a5,0x8
 1e6:	0107d313          	srli	t1,a5,0x10
 1ea:	0086d893          	srli	a7,a3,0x8
 1ee:	0185db13          	srli	s6,a1,0x18
 1f2:	0ff5f993          	andi	s3,a1,255
 1f6:	82c1                	srli	a3,a3,0x10

000001f8 <.LVL88>:
 1f8:	81a1                	srli	a1,a1,0x8

000001fa <.LVL89>:
 1fa:	0ff7f713          	andi	a4,a5,255
 1fe:	01855a13          	srli	s4,a0,0x18
 202:	0fffff93          	andi	t6,t6,255
 206:	0fff7f13          	andi	t5,t5,255
 20a:	00042d03          	lw	s10,0(s0)
 20e:	0ffefe93          	andi	t4,t4,255
 212:	0ffe7e13          	andi	t3,t3,255
 216:	0ff37313          	andi	t1,t1,255
 21a:	0ff8f893          	andi	a7,a7,255
 21e:	83e1                	srli	a5,a5,0x18

00000220 <.LVL90>:
 220:	0ff6f693          	andi	a3,a3,255
 224:	0ff5f593          	andi	a1,a1,255
 228:	0ff57513          	andi	a0,a0,255

0000022c <.LVL91>:
 22c:	0c0b8163          	beqz	s7,2ee <.L20>
 230:	070a                	slli	a4,a4,0x2
 232:	0c8a                	slli	s9,s9,0x2
 234:	9cca                	add	s9,s9,s2
 236:	00e48db3          	add	s11,s1,a4
 23a:	000ca703          	lw	a4,0(s9)
 23e:	000dac83          	lw	s9,0(s11)
 242:	0f8a                	slli	t6,t6,0x2
 244:	9f9e                	add	t6,t6,t2
 246:	01974733          	xor	a4,a4,s9
 24a:	0f0a                	slli	t5,t5,0x2
 24c:	01a74733          	xor	a4,a4,s10
 250:	9f16                	add	t5,t5,t0
 252:	000fad03          	lw	s10,0(t6)
 256:	000f2f03          	lw	t5,0(t5)
 25a:	0b0a                	slli	s6,s6,0x2
 25c:	0a8a                	slli	s5,s5,0x2
 25e:	01a74733          	xor	a4,a4,s10
 262:	9b4a                	add	s6,s6,s2
 264:	9aa6                	add	s5,s5,s1
 266:	000aaf83          	lw	t6,0(s5)
 26a:	01e74733          	xor	a4,a4,t5

0000026e <.LVL92>:
 26e:	000b2f03          	lw	t5,0(s6)
 272:	0e8a                	slli	t4,t4,0x2
 274:	9e9e                	add	t4,t4,t2
 276:	01ff4f33          	xor	t5,t5,t6
 27a:	0e0a                	slli	t3,t3,0x2
 27c:	00442f83          	lw	t6,4(s0)
 280:	000eae83          	lw	t4,0(t4)
 284:	9e16                	add	t3,t3,t0
 286:	078a                	slli	a5,a5,0x2
 288:	050a                	slli	a0,a0,0x2
 28a:	000e2e03          	lw	t3,0(t3)
 28e:	97ca                	add	a5,a5,s2
 290:	9526                	add	a0,a0,s1
 292:	01ff4f33          	xor	t5,t5,t6
 296:	4108                	lw	a0,0(a0)
 298:	0a0a                	slli	s4,s4,0x2
 29a:	098a                	slli	s3,s3,0x2
 29c:	439c                	lw	a5,0(a5)
 29e:	01df4eb3          	xor	t4,t5,t4
 2a2:	9a4a                	add	s4,s4,s2
 2a4:	99a6                	add	s3,s3,s1
 2a6:	0009af03          	lw	t5,0(s3)
 2aa:	01cece33          	xor	t3,t4,t3

000002ae <.LVL93>:
 2ae:	068a                	slli	a3,a3,0x2
 2b0:	000a2e83          	lw	t4,0(s4)
 2b4:	8fa9                	xor	a5,a5,a0
 2b6:	969e                	add	a3,a3,t2
 2b8:	4448                	lw	a0,12(s0)
 2ba:	4294                	lw	a3,0(a3)
 2bc:	030a                	slli	t1,t1,0x2
 2be:	01eeceb3          	xor	t4,t4,t5
 2c2:	931e                	add	t1,t1,t2
 2c4:	00842f03          	lw	t5,8(s0)
 2c8:	088a                	slli	a7,a7,0x2
 2ca:	058a                	slli	a1,a1,0x2
 2cc:	00032303          	lw	t1,0(t1)
 2d0:	9896                	add	a7,a7,t0
 2d2:	8fa9                	xor	a5,a5,a0
 2d4:	9596                	add	a1,a1,t0
 2d6:	8fb5                	xor	a5,a5,a3
 2d8:	0008a883          	lw	a7,0(a7)
 2dc:	4194                	lw	a3,0(a1)
 2de:	01eeceb3          	xor	t4,t4,t5
 2e2:	006ec333          	xor	t1,t4,t1
 2e6:	011348b3          	xor	a7,t1,a7

000002ea <.LVL94>:
 2ea:	8fb5                	xor	a5,a5,a3

000002ec <.LVL95>:
 2ec:	b3fd                	j	da <.L21>

000002ee <.L20>:
 2ee:	000002b7          	lui	t0,0x0
 2f2:	00028293          	mv	t0,t0
 2f6:	0816                	slli	a6,a6,0x5
 2f8:	9c96                	add	s9,s9,t0
 2fa:	9f96                	add	t6,t6,t0
 2fc:	9c42                	add	s8,s8,a6

000002fe <.LVL97>:
 2fe:	000fcf83          	lbu	t6,0(t6)
 302:	000cc803          	lbu	a6,0(s9)
 306:	9716                	add	a4,a4,t0
 308:	00074703          	lbu	a4,0(a4)
 30c:	0862                	slli	a6,a6,0x18
 30e:	0fc2                	slli	t6,t6,0x10
 310:	01f84833          	xor	a6,a6,t6
 314:	9f16                	add	t5,t5,t0
 316:	00e84733          	xor	a4,a6,a4
 31a:	000f4803          	lbu	a6,0(t5)
 31e:	9b16                	add	s6,s6,t0
 320:	9e96                	add	t4,t4,t0
 322:	0822                	slli	a6,a6,0x8
 324:	01074733          	xor	a4,a4,a6
 328:	01a74d33          	xor	s10,a4,s10

0000032c <.LVL98>:
 32c:	018d5713          	srli	a4,s10,0x18
 330:	00e60023          	sb	a4,0(a2)

00000334 <.LVL99>:
 334:	010d5713          	srli	a4,s10,0x10
 338:	00e600a3          	sb	a4,1(a2)
 33c:	008d5713          	srli	a4,s10,0x8
 340:	00e60123          	sb	a4,2(a2)
 344:	000ec803          	lbu	a6,0(t4)
 348:	000b4703          	lbu	a4,0(s6)
 34c:	9a96                	add	s5,s5,t0
 34e:	0842                	slli	a6,a6,0x10
 350:	0762                	slli	a4,a4,0x18
 352:	01074733          	xor	a4,a4,a6
 356:	000ac803          	lbu	a6,0(s5)
 35a:	9e16                	add	t3,t3,t0
 35c:	01a601a3          	sb	s10,3(a2)
 360:	01074733          	xor	a4,a4,a6
 364:	000e4803          	lbu	a6,0(t3)
 368:	9a16                	add	s4,s4,t0
 36a:	9316                	add	t1,t1,t0
 36c:	0822                	slli	a6,a6,0x8
 36e:	01074733          	xor	a4,a4,a6
 372:	004c2803          	lw	a6,4(s8)
 376:	9996                	add	s3,s3,t0
 378:	9896                	add	a7,a7,t0
 37a:	01074733          	xor	a4,a4,a6

0000037e <.LVL100>:
 37e:	01875813          	srli	a6,a4,0x18
 382:	01060223          	sb	a6,4(a2)
 386:	01075813          	srli	a6,a4,0x10
 38a:	010602a3          	sb	a6,5(a2)
 38e:	00875813          	srli	a6,a4,0x8
 392:	01060323          	sb	a6,6(a2)
 396:	00e603a3          	sb	a4,7(a2)
 39a:	00034803          	lbu	a6,0(t1)
 39e:	000a4703          	lbu	a4,0(s4)

000003a2 <.LVL101>:
 3a2:	9796                	add	a5,a5,t0
 3a4:	0842                	slli	a6,a6,0x10
 3a6:	0762                	slli	a4,a4,0x18
 3a8:	01074733          	xor	a4,a4,a6
 3ac:	0009c803          	lbu	a6,0(s3)
 3b0:	9696                	add	a3,a3,t0
 3b2:	0007c783          	lbu	a5,0(a5)
 3b6:	01074733          	xor	a4,a4,a6
 3ba:	0008c803          	lbu	a6,0(a7)
 3be:	07e2                	slli	a5,a5,0x18
 3c0:	9516                	add	a0,a0,t0
 3c2:	0822                	slli	a6,a6,0x8
 3c4:	01074733          	xor	a4,a4,a6
 3c8:	008c2803          	lw	a6,8(s8)
 3cc:	9596                	add	a1,a1,t0
 3ce:	01074733          	xor	a4,a4,a6

000003d2 <.LVL102>:
 3d2:	01875813          	srli	a6,a4,0x18
 3d6:	01060423          	sb	a6,8(a2)
 3da:	01075813          	srli	a6,a4,0x10
 3de:	010604a3          	sb	a6,9(a2)
 3e2:	00e605a3          	sb	a4,11(a2)
 3e6:	00875813          	srli	a6,a4,0x8
 3ea:	0006c703          	lbu	a4,0(a3)

000003ee <.LVL103>:
 3ee:	01060523          	sb	a6,10(a2)
 3f2:	0742                	slli	a4,a4,0x10
 3f4:	8fb9                	xor	a5,a5,a4
 3f6:	00054703          	lbu	a4,0(a0)
 3fa:	8fb9                	xor	a5,a5,a4
 3fc:	0005c703          	lbu	a4,0(a1)
 400:	0722                	slli	a4,a4,0x8
 402:	8fb9                	xor	a5,a5,a4
 404:	00cc2703          	lw	a4,12(s8)
 408:	8fb9                	xor	a5,a5,a4

0000040a <.LVL104>:
 40a:	0187d713          	srli	a4,a5,0x18
 40e:	00e60623          	sb	a4,12(a2)
 412:	0107d713          	srli	a4,a5,0x10
 416:	00e606a3          	sb	a4,13(a2)

0000041a <.LBE20>:
 41a:	5432                	lw	s0,44(sp)

0000041c <.LBB21>:
 41c:	0087d713          	srli	a4,a5,0x8
 420:	00e60723          	sb	a4,14(a2)
 424:	00f607a3          	sb	a5,15(a2)

00000428 <.LBE21>:
 428:	54a2                	lw	s1,40(sp)
 42a:	5912                	lw	s2,36(sp)
 42c:	5982                	lw	s3,32(sp)
 42e:	4a72                	lw	s4,28(sp)
 430:	4ae2                	lw	s5,24(sp)
 432:	4b52                	lw	s6,20(sp)
 434:	4bc2                	lw	s7,16(sp)
 436:	4c32                	lw	s8,12(sp)
 438:	4ca2                	lw	s9,8(sp)
 43a:	4d12                	lw	s10,4(sp)
 43c:	4d82                	lw	s11,0(sp)
 43e:	6145                	addi	sp,sp,48
 440:	8082                	ret
