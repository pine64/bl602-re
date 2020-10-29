
rwble.o:     file format elf32-littleriscv


Disassembly of section .text.rwble_init:

00000000 <rwble_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <rwble_init+0x4>

0000000c <.LVL0>:
   c:	4501                	li	a0,0
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL0+0x2>

00000016 <.LVL1>:
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL1>

0000001e <.LVL2>:
  1e:	4501                	li	a0,0
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL2+0x2>

00000028 <.LBB74>:
  28:	280007b7          	lui	a5,0x28000
  2c:	0407a823          	sw	zero,80(a5) # 28000050 <.LASF255+0x27ffeb62>

00000030 <.LBE74>:
  30:	40b2                	lw	ra,12(sp)
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.rwble_reset:

00000000 <rwble_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB79>:
   6:	30002473          	csrr	s0,mstatus

0000000a <.LBB80>:
   a:	300477f3          	csrrci	a5,mstatus,8

0000000e <.LBB81>:
   e:	280007b7          	lui	a5,0x28000
  12:	80000737          	lui	a4,0x80000
  16:	cfd8                	sw	a4,28(a5)

00000018 <.L4>:
  18:	4fd4                	lw	a3,28(a5)

0000001a <.LBE83>:
  1a:	fe06cfe3          	bltz	a3,18 <.L4>

0000001e <.LBB85>:
  1e:	4fd8                	lw	a4,28(a5)

00000020 <.LBB87>:
  20:	5398                	lw	a4,32(a5)

00000022 <.LBB89>:
  22:	53dc                	lw	a5,36(a5)

00000024 <.LBE89>:
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LBE89>

0000002c <.LVL9>:
  2c:	4505                	li	a0,1
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL9+0x2>

00000036 <.LVL10>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL10>

0000003e <.LVL11>:
  3e:	4505                	li	a0,1
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL11+0x2>

00000048 <.LVL12>:
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL12>

00000050 <.LVL13>:
  50:	30041073          	csrw	mstatus,s0

00000054 <.LBE91>:
  54:	40b2                	lw	ra,12(sp)
  56:	4422                	lw	s0,8(sp)

00000058 <.LVL14>:
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

Disassembly of section .text.rwble_sleep_check:

00000000 <rwble_sleep_check>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <rwble_sleep_check>

00000008 <.LBE92>:
   8:	00153513          	seqz	a0,a0
   c:	8082                	ret

Disassembly of section .text.rwble_activity_ongoing_check:

00000000 <rwble_activity_ongoing_check>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5

00000008 <.LBE94>:
   8:	4398                	lw	a4,0(a5)
   a:	4505                	li	a0,1
   c:	e711                	bnez	a4,18 <.L9>

0000000e <.LBB96>:
   e:	4798                	lw	a4,8(a5)
  10:	e701                	bnez	a4,18 <.L9>

00000012 <.LBB98>:
  12:	4b88                	lw	a0,16(a5)
  14:	00a03533          	snez	a0,a0

00000018 <.L9>:
  18:	8082                	ret

Disassembly of section .text.rwble_version:

00000000 <rwble_version>:
   0:	47a5                	li	a5,9
   2:	00f501a3          	sb	a5,3(a0)
   6:	478d                	li	a5,3
   8:	00f50123          	sb	a5,2(a0)
   c:	02100793          	li	a5,33
  10:	00f500a3          	sb	a5,1(a0)
  14:	00050023          	sb	zero,0(a0)

00000018 <.LBB100>:
  18:	280007b7          	lui	a5,0x28000
  1c:	43d8                	lw	a4,4(a5)
  1e:	8361                	srli	a4,a4,0x18
  20:	00e581a3          	sb	a4,3(a1)

00000024 <.LBB102>:
  24:	43d8                	lw	a4,4(a5)
  26:	8341                	srli	a4,a4,0x10
  28:	00e58123          	sb	a4,2(a1)

0000002c <.LBB104>:
  2c:	43d8                	lw	a4,4(a5)
  2e:	8321                	srli	a4,a4,0x8
  30:	00e580a3          	sb	a4,1(a1)

00000034 <.LBB106>:
  34:	43dc                	lw	a5,4(a5)
  36:	00f58023          	sb	a5,0(a1)

0000003a <.LBE106>:
  3a:	8082                	ret

Disassembly of section .text.rwble_isr_clear:

00000000 <rwble_isr_clear>:
   0:	280007b7          	lui	a5,0x28000
   4:	4b98                	lw	a4,16(a5)

00000006 <.LBE108>:
   6:	c319                	beqz	a4,c <.L13>

00000008 <.LBB110>:
   8:	577d                	li	a4,-1

0000000a <.LVL27>:
   a:	cf98                	sw	a4,24(a5)

0000000c <.L13>:
   c:	8082                	ret

Disassembly of section .text.rwble_isr:

00000000 <rwble_isr>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)

00000004 <.LBB112>:
   4:	6941                	lui	s2,0x10

00000006 <.LBE112>:
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	c85a                	sw	s6,16(sp)
   e:	c65e                	sw	s7,12(sp)
  10:	d606                	sw	ra,44(sp)
  12:	d422                	sw	s0,40(sp)
  14:	d226                	sw	s1,36(sp)
  16:	c462                	sw	s8,8(sp)

00000018 <.LBB113>:
  18:	4b05                	li	s6,1

0000001a <.LBE113>:
  1a:	000009b7          	lui	s3,0x0
  1e:	00890b93          	addi	s7,s2,8 # 10008 <.LASF255+0xeb1a>
  22:	00000a37          	lui	s4,0x0
  26:	4a85                	li	s5,1

00000028 <.L37>:
  28:	280004b7          	lui	s1,0x28000

0000002c <.LBE116>:
  2c:	00000c37          	lui	s8,0x0

00000030 <.L36>:
  30:	4880                	lw	s0,16(s1)

00000032 <.LBE119>:
  32:	14040463          	beqz	s0,17a <.L18>
  36:	00447793          	andi	a5,s0,4
  3a:	c799                	beqz	a5,48 <.L20>

0000003c <.LBB120>:
  3c:	4791                	li	a5,4
  3e:	cc9c                	sw	a5,24(s1)

00000040 <.LBE120>:
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LBE120>

00000048 <.L20>:
  48:	00147793          	andi	a5,s0,1
  4c:	cb99                	beqz	a5,62 <.L21>

0000004e <.LBB122>:
  4e:	0164ac23          	sw	s6,24(s1) # 28000018 <.LASF255+0x27ffeb2a>

00000052 <.LBE122>:
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LBE122>

0000005a <.LVL35>:
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL35>

00000062 <.L21>:
  62:	08047793          	andi	a5,s0,128
  66:	cb81                	beqz	a5,76 <.L22>

00000068 <.LBB123>:
  68:	08000793          	li	a5,128
  6c:	cc9c                	sw	a5,24(s1)

0000006e <.LBE123>:
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LBE123>

00000076 <.L22>:
  76:	00847793          	andi	a5,s0,8
  7a:	cb9d                	beqz	a5,b0 <.L23>

0000007c <.LBB125>:
  7c:	47a1                	li	a5,8
  7e:	cc9c                	sw	a5,24(s1)

00000080 <.LBE125>:
  80:	00247793          	andi	a5,s0,2
  84:	c781                	beqz	a5,8c <.L24>

00000086 <.LBB127>:
  86:	4789                	li	a5,2
  88:	cc9c                	sw	a5,24(s1)

0000008a <.LBE127>:
  8a:	9875                	andi	s0,s0,-3

0000008c <.L24>:
  8c:	00f41793          	slli	a5,s0,0xf
  90:	0007db63          	bgez	a5,a6 <.L25>
  94:	0009c783          	lbu	a5,0(s3) # 0 <rwble_isr>
  98:	0ff7f793          	andi	a5,a5,255
  9c:	e399                	bnez	a5,a2 <.L26>
  9e:	01598023          	sb	s5,0(s3)

000000a2 <.L26>:
  a2:	0124ac23          	sw	s2,24(s1)

000000a6 <.L25>:
  a6:	4501                	li	a0,0
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L25+0x2>

000000b0 <.L23>:
  b0:	017477b3          	and	a5,s0,s7
  b4:	05279263          	bne	a5,s2,f8 <.L27>
  b8:	0009c783          	lbu	a5,0(s3)
  bc:	0ff7f793          	andi	a5,a5,255
  c0:	eb99                	bnez	a5,d6 <.L28>
  c2:	01598023          	sb	s5,0(s3)
  c6:	0a84a783          	lw	a5,168(s1)
  ca:	00fc2023          	sw	a5,0(s8) # 0 <rwble_isr>
  ce:	0ac4a783          	lw	a5,172(s1)
  d2:	00fa2023          	sw	a5,0(s4) # 0 <rwble_isr>

000000d6 <.L28>:
  d6:	0124ac23          	sw	s2,24(s1)

000000da <.LBE131>:
  da:	00247793          	andi	a5,s0,2
  de:	c781                	beqz	a5,e6 <.L29>

000000e0 <.LBB133>:
  e0:	4789                	li	a5,2
  e2:	cc9c                	sw	a5,24(s1)

000000e4 <.LBE133>:
  e4:	9875                	andi	s0,s0,-3

000000e6 <.L29>:
  e6:	000a2503          	lw	a0,0(s4)
  ea:	8141                	srli	a0,a0,0x10
  ec:	0ff57513          	andi	a0,a0,255
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.L29+0xa>

000000f8 <.L27>:
  f8:	10047793          	andi	a5,s0,256
  fc:	cf99                	beqz	a5,11a <.L30>

000000fe <.LBB135>:
  fe:	10000793          	li	a5,256
 102:	cc9c                	sw	a5,24(s1)

00000104 <.LBE135>:
 104:	00247793          	andi	a5,s0,2
 108:	c781                	beqz	a5,110 <.L31>

0000010a <.LBB137>:
 10a:	4789                	li	a5,2
 10c:	cc9c                	sw	a5,24(s1)

0000010e <.LBE137>:
 10e:	9875                	andi	s0,s0,-3

00000110 <.L31>:
 110:	4505                	li	a0,1
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L31+0x2>

0000011a <.L30>:
 11a:	00247793          	andi	a5,s0,2
 11e:	c799                	beqz	a5,12c <.L32>

00000120 <.LBB139>:
 120:	4789                	li	a5,2
 122:	cc9c                	sw	a5,24(s1)

00000124 <.LBE139>:
 124:	00000097          	auipc	ra,0x0
 128:	000080e7          	jalr	ra # 124 <.LBE139>

0000012c <.L32>:
 12c:	20047793          	andi	a5,s0,512
 130:	cb81                	beqz	a5,140 <.L33>

00000132 <.LBB141>:
 132:	20000793          	li	a5,512
 136:	cc9c                	sw	a5,24(s1)

00000138 <.LBE141>:
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.LBE141>

00000140 <.L33>:
 140:	04047793          	andi	a5,s0,64
 144:	cb81                	beqz	a5,154 <.L34>

00000146 <.LBB143>:
 146:	04000793          	li	a5,64
 14a:	cc9c                	sw	a5,24(s1)

0000014c <.LBE143>:
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.LBE143>

00000154 <.L34>:
 154:	01047793          	andi	a5,s0,16
 158:	c799                	beqz	a5,166 <.L35>

0000015a <.LBB145>:
 15a:	47c1                	li	a5,16
 15c:	cc9c                	sw	a5,24(s1)

0000015e <.LBE145>:
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LBE145>

00000166 <.L35>:
 166:	02047413          	andi	s0,s0,32

0000016a <.LVL72>:
 16a:	ec0403e3          	beqz	s0,30 <.L36>

0000016e <.LBB147>:
 16e:	280007b7          	lui	a5,0x28000
 172:	02000713          	li	a4,32
 176:	cf98                	sw	a4,24(a5)
 178:	bd45                	j	28 <.L37>

0000017a <.L18>:
 17a:	50b2                	lw	ra,44(sp)
 17c:	5422                	lw	s0,40(sp)

0000017e <.LVL75>:
 17e:	5492                	lw	s1,36(sp)
 180:	5902                	lw	s2,32(sp)
 182:	49f2                	lw	s3,28(sp)
 184:	4a62                	lw	s4,24(sp)
 186:	4ad2                	lw	s5,20(sp)
 188:	4b42                	lw	s6,16(sp)
 18a:	4bb2                	lw	s7,12(sp)
 18c:	4c22                	lw	s8,8(sp)
 18e:	6145                	addi	sp,sp,48
 190:	8082                	ret
