
bam.o:     file format elf32-littleriscv


Disassembly of section .text.bam_init:

00000000 <bam_init>:
   0:	000007b7          	lui	a5,0x0
   4:	577d                	li	a4,-1
   6:	4581                	li	a1,0
   8:	4521                	li	a0,8
   a:	00e78623          	sb	a4,12(a5) # c <bam_init+0xc>
   e:	00000317          	auipc	t1,0x0
  12:	00030067          	jr	t1 # e <bam_init+0xe>

Disassembly of section .text.bam_send_air_action_frame:

00000000 <bam_send_air_action_frame>:
   0:	711d                	addi	sp,sp,-96
   2:	c2d6                	sw	s5,68(sp)

00000004 <.LBB57>:
   4:	1b000a93          	li	s5,432
   8:	03550ab3          	mul	s5,a0,s5

0000000c <.LBE57>:
   c:	dc62                	sw	s8,56(sp)

0000000e <.LBB58>:
   e:	00000c37          	lui	s8,0x0
  12:	000c0c13          	mv	s8,s8

00000016 <.LBE58>:
  16:	cca2                	sw	s0,88(sp)
  18:	caa6                	sw	s1,84(sp)
  1a:	c8ca                	sw	s2,80(sp)
  1c:	c6ce                	sw	s3,76(sp)
  1e:	c0da                	sw	s6,64(sp)
  20:	da66                	sw	s9,52(sp)
  22:	ce86                	sw	ra,92(sp)
  24:	c4d2                	sw	s4,72(sp)
  26:	de5e                	sw	s7,60(sp)
  28:	d86a                	sw	s10,48(sp)
  2a:	d66e                	sw	s11,44(sp)
  2c:	89aa                	mv	s3,a0
  2e:	84ae                	mv	s1,a1

00000030 <.LBB59>:
  30:	0828                	addi	a0,sp,24

00000032 <.LVL3>:
  32:	4581                	li	a1,0

00000034 <.LBE59>:
  34:	8b3e                	mv	s6,a5

00000036 <.LBB60>:
  36:	015c07b3          	add	a5,s8,s5

0000003a <.LBE60>:
  3a:	8cb2                	mv	s9,a2
  3c:	c636                	sw	a3,12(sp)
  3e:	843a                	mv	s0,a4
  40:	8942                	mv	s2,a6

00000042 <.LBB61>:
  42:	01a7ca03          	lbu	s4,26(a5)

00000046 <.LBB62>:
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LBB62>

0000004e <.LVL7>:
  4e:	01814503          	lbu	a0,24(sp)

00000052 <.LBE62>:
  52:	10000593          	li	a1,256
  56:	00a03533          	snez	a0,a0

0000005a <.LVL9>:
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL9>

00000062 <.LVL10>:
  62:	16050363          	beqz	a0,1c8 <.L2>
  66:	5d800b93          	li	s7,1496
  6a:	037a0bb3          	mul	s7,s4,s7

0000006e <.LBB63>:
  6e:	000007b7          	lui	a5,0x0
  72:	00078d93          	mv	s11,a5
  76:	85aa                	mv	a1,a0
  78:	8d2a                	mv	s10,a0

0000007a <.LBB64>:
  7a:	0af9                	addi	s5,s5,30
  7c:	9c56                	add	s8,s8,s5

0000007e <.LBE64>:
  7e:	01bb8733          	add	a4,s7,s11
  82:	853a                	mv	a0,a4

00000084 <.LVL12>:
  84:	c43a                	sw	a4,8(sp)
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL12+0x2>

0000008e <.LBB67>:
  8e:	068d2583          	lw	a1,104(s10)

00000092 <.LBB71>:
  92:	fd000793          	li	a5,-48
  96:	4722                	lw	a4,8(sp)
  98:	14f58623          	sb	a5,332(a1)
  9c:	140586a3          	sb	zero,333(a1)
  a0:	14058723          	sb	zero,334(a1)
  a4:	140587a3          	sb	zero,335(a1)
  a8:	000c5783          	lhu	a5,0(s8) # 0 <bam_send_air_action_frame>

000000ac <.LBB72>:
  ac:	14c58513          	addi	a0,a1,332

000000b0 <.LBB73>:
  b0:	46b2                	lw	a3,12(sp)
  b2:	14f59823          	sh	a5,336(a1)

000000b6 <.LBB81>:
  b6:	002c5783          	lhu	a5,2(s8)
  ba:	14f59923          	sh	a5,338(a1)

000000be <.LBB82>:
  be:	004c5783          	lhu	a5,4(s8)
  c2:	14f59a23          	sh	a5,340(a1)

000000c6 <.LBB74>:
  c6:	050b8793          	addi	a5,s7,80
  ca:	97ee                	add	a5,a5,s11

000000cc <.LBE74>:
  cc:	0007d603          	lhu	a2,0(a5) # 0 <bam_send_air_action_frame>
  d0:	14c59b23          	sh	a2,342(a1)

000000d4 <.LBB83>:
  d4:	0027d603          	lhu	a2,2(a5)
  d8:	14c59c23          	sh	a2,344(a1)

000000dc <.LBB84>:
  dc:	0047d603          	lhu	a2,4(a5)
  e0:	14c59d23          	sh	a2,346(a1)

000000e4 <.LBB76>:
  e4:	05674603          	lbu	a2,86(a4)
  e8:	4709                	li	a4,2
  ea:	08e61063          	bne	a2,a4,16a <.L4>

000000ee <.LBB85>:
  ee:	0007d703          	lhu	a4,0(a5)
  f2:	14e59e23          	sh	a4,348(a1)

000000f6 <.LBB86>:
  f6:	0027d703          	lhu	a4,2(a5)
  fa:	14e59f23          	sh	a4,350(a1)

000000fe <.LBB87>:
  fe:	0047d783          	lhu	a5,4(a5)

00000102 <.L20>:
 102:	16f59023          	sh	a5,352(a1)

00000106 <.LBB78>:
 106:	000007b7          	lui	a5,0x0
 10a:	00078793          	mv	a5,a5
 10e:	0547d803          	lhu	a6,84(a5) # 54 <.LBE62+0x2>
 112:	0805                	addi	a6,a6,1
 114:	0842                	slli	a6,a6,0x10
 116:	01085813          	srli	a6,a6,0x10
 11a:	05079a23          	sh	a6,84(a5)
 11e:	0812                	slli	a6,a6,0x4

00000120 <.LBE78>:
 120:	0842                	slli	a6,a6,0x10
 122:	01085813          	srli	a6,a6,0x10
 126:	17058123          	sb	a6,354(a1)
 12a:	00885813          	srli	a6,a6,0x8
 12e:	170581a3          	sb	a6,355(a1)
 132:	034d07a3          	sb	s4,47(s10)
 136:	033d0823          	sb	s3,48(s10)

0000013a <.LVL26>:
 13a:	4785                	li	a5,1
 13c:	0afc8563          	beq	s9,a5,1e6 <.L6>
 140:	040c8063          	beqz	s9,180 <.L7>
 144:	4789                	li	a5,2
 146:	0afc8b63          	beq	s9,a5,1fc <.L8>
 14a:	000005b7          	lui	a1,0x0

0000014e <.LVL27>:
 14e:	00000537          	lui	a0,0x0

00000152 <.LVL28>:
 152:	00050513          	mv	a0,a0
 156:	25d00613          	li	a2,605
 15a:	00058593          	mv	a1,a1
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL28+0xc>

00000166 <.LVL29>:
 166:	4561                	li	a0,24
 168:	a841                	j	1f8 <.L21>

0000016a <.L4>:
 16a:	000c5783          	lhu	a5,0(s8)
 16e:	14f59e23          	sh	a5,348(a1) # 15c <.LVL28+0xa>

00000172 <.LBB89>:
 172:	002c5783          	lhu	a5,2(s8)
 176:	14f59f23          	sh	a5,350(a1)

0000017a <.LBB90>:
 17a:	004c5783          	lhu	a5,4(s8)
 17e:	b751                	j	102 <.L20>

00000180 <.L7>:
 180:	000007b7          	lui	a5,0x0
 184:	8409                	srai	s0,s0,0x2
 186:	883d                	andi	s0,s0,15
 188:	00078793          	mv	a5,a5
 18c:	97a2                	add	a5,a5,s0
 18e:	85a6                	mv	a1,s1

00000190 <.LVL34>:
 190:	0561                	addi	a0,a0,24

00000192 <.LVL35>:
 192:	0007c403          	lbu	s0,0(a5) # 0 <bam_send_air_action_frame>

00000196 <.LVL36>:
 196:	00000097          	auipc	ra,0x0
 19a:	000080e7          	jalr	ra # 196 <.LVL36>

0000019e <.LVL37>:
 19e:	0561                	addi	a0,a0,24

000001a0 <.L10>:
 1a0:	06cd2703          	lw	a4,108(s10)

000001a4 <.LVL39>:
 1a4:	4b5c                	lw	a5,20(a4)
 1a6:	17fd                	addi	a5,a5,-1
 1a8:	97aa                	add	a5,a5,a0
 1aa:	0511                	addi	a0,a0,4

000001ac <.LVL40>:
 1ac:	cf1c                	sw	a5,24(a4)
 1ae:	cf48                	sw	a0,28(a4)
 1b0:	00090663          	beqz	s2,1bc <.L11>
 1b4:	2d2d2623          	sw	s2,716(s10)
 1b8:	2c9d2823          	sw	s1,720(s10)

000001bc <.L11>:
 1bc:	85a2                	mv	a1,s0
 1be:	856a                	mv	a0,s10

000001c0 <.LVL41>:
 1c0:	00000097          	auipc	ra,0x0
 1c4:	000080e7          	jalr	ra # 1c0 <.LVL41>

000001c8 <.L2>:
 1c8:	40f6                	lw	ra,92(sp)
 1ca:	4466                	lw	s0,88(sp)
 1cc:	44d6                	lw	s1,84(sp)

000001ce <.LVL43>:
 1ce:	4946                	lw	s2,80(sp)

000001d0 <.LVL44>:
 1d0:	49b6                	lw	s3,76(sp)
 1d2:	4a26                	lw	s4,72(sp)

000001d4 <.LVL45>:
 1d4:	4a96                	lw	s5,68(sp)
 1d6:	4b06                	lw	s6,64(sp)
 1d8:	5bf2                	lw	s7,60(sp)
 1da:	5c62                	lw	s8,56(sp)
 1dc:	5cd2                	lw	s9,52(sp)
 1de:	5d42                	lw	s10,48(sp)
 1e0:	5db2                	lw	s11,44(sp)
 1e2:	6125                	addi	sp,sp,96
 1e4:	8082                	ret

000001e6 <.L6>:
 1e6:	875a                	mv	a4,s6
 1e8:	8622                	mv	a2,s0
 1ea:	85a6                	mv	a1,s1

000001ec <.LVL47>:
 1ec:	0561                	addi	a0,a0,24

000001ee <.LVL48>:
 1ee:	00000097          	auipc	ra,0x0
 1f2:	000080e7          	jalr	ra # 1ee <.LVL48>

000001f6 <.L22>:
 1f6:	0561                	addi	a0,a0,24

000001f8 <.L21>:
 1f8:	440d                	li	s0,3
 1fa:	b75d                	j	1a0 <.L10>

000001fc <.L8>:
 1fc:	865a                	mv	a2,s6
 1fe:	85a6                	mv	a1,s1

00000200 <.LVL52>:
 200:	0561                	addi	a0,a0,24

00000202 <.LVL53>:
 202:	00000097          	auipc	ra,0x0
 206:	000080e7          	jalr	ra # 202 <.LVL53>

0000020a <.LVL54>:
 20a:	b7f5                	j	1f6 <.L22>
