
mm_bcn.o:     file format elf32-littleriscv


Disassembly of section .text.mm_tim_update_proceed:

00000000 <mm_tim_update_proceed>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	00055683          	lhu	a3,0(a0)
   a:	842a                	mv	s0,a0
   c:	00354783          	lbu	a5,3(a0)
  10:	00254e03          	lbu	t3,2(a0)
  14:	e6a1                	bnez	a3,5c <.L2>
  16:	5d800693          	li	a3,1496
  1a:	02d787b3          	mul	a5,a5,a3
  1e:	00000737          	lui	a4,0x0
  22:	00070713          	mv	a4,a4
  26:	973e                	add	a4,a4,a5
  28:	020e0763          	beqz	t3,56 <.L3>
  2c:	4785                	li	a5,1
  2e:	34f70323          	sb	a5,838(a4) # 346 <.LASF144>

00000032 <.L4>:
  32:	ffc45583          	lhu	a1,-4(s0)
  36:	04200513          	li	a0,66
  3a:	4601                	li	a2,0
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.L4+0xa>

00000044 <.LBB83>:
  44:	ff440513          	addi	a0,s0,-12
  48:	4422                	lw	s0,8(sp)

0000004a <.LVL5>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	0141                	addi	sp,sp,16
  4e:	00000317          	auipc	t1,0x0
  52:	00030067          	jr	t1 # 4e <.LVL5+0x4>

00000056 <.L3>:
  56:	34070323          	sb	zero,838(a4)
  5a:	bfe1                	j	32 <.L4>

0000005c <.L2>:
  5c:	0fc00513          	li	a0,252
  60:	02a78533          	mul	a0,a5,a0
  64:	00000637          	lui	a2,0x0
  68:	00060613          	mv	a2,a2
  6c:	00379713          	slli	a4,a5,0x3
  70:	9732                	add	a4,a4,a2
  72:	00000637          	lui	a2,0x0
  76:	00060613          	mv	a2,a2
  7a:	0036d813          	srli	a6,a3,0x3
  7e:	0ff87813          	andi	a6,a6,255
  82:	9532                	add	a0,a0,a2

00000084 <.LVL10>:
  84:	00a808b3          	add	a7,a6,a0
  88:	0076f613          	andi	a2,a3,7

0000008c <.LBB86>:
  8c:	0008c583          	lbu	a1,0(a7)

00000090 <.LBE86>:
  90:	4685                	li	a3,1
  92:	00c696b3          	sll	a3,a3,a2
  96:	0ff6f613          	andi	a2,a3,255

0000009a <.LBB89>:
  9a:	00b67333          	and	t1,a2,a1
  9e:	0a0e0f63          	beqz	t3,15c <.L5>
  a2:	f80318e3          	bnez	t1,32 <.L4>

000000a6 <.LBB90>:
  a6:	8e4d                	or	a2,a2,a1

000000a8 <.LVL13>:
  a8:	5d800593          	li	a1,1496

000000ac <.LVL14>:
  ac:	02b785b3          	mul	a1,a5,a1
  b0:	000006b7          	lui	a3,0x0

000000b4 <.LBB93>:
  b4:	00c88023          	sb	a2,0(a7)

000000b8 <.LBE93>:
  b8:	00068613          	mv	a2,a3
  bc:	00068693          	mv	a3,a3
  c0:	962e                	add	a2,a2,a1
  c2:	33c65583          	lhu	a1,828(a2) # 33c <.LASF560+0x3>
  c6:	34464303          	lbu	t1,836(a2)
  ca:	0585                	addi	a1,a1,1
  cc:	32b61e23          	sh	a1,828(a2)
  d0:	000005b7          	lui	a1,0x0
  d4:	00058593          	mv	a1,a1
  d8:	00687d63          	bgeu	a6,t1,f2 <.L6>
  dc:	0fe87313          	andi	t1,a6,254
  e0:	34660223          	sb	t1,836(a2)
  e4:	02800613          	li	a2,40
  e8:	02c78633          	mul	a2,a5,a2
  ec:	951a                	add	a0,a0,t1

000000ee <.LVL18>:
  ee:	962e                	add	a2,a2,a1
  f0:	ce48                	sw	a0,28(a2)

000000f2 <.L6>:
  f2:	5d800613          	li	a2,1496
  f6:	02c78633          	mul	a2,a5,a2
  fa:	9636                	add	a2,a2,a3
  fc:	34564503          	lbu	a0,837(a2)
 100:	01057b63          	bgeu	a0,a6,116 <.L7>
 104:	350602a3          	sb	a6,837(a2)
 108:	02800613          	li	a2,40
 10c:	02c78633          	mul	a2,a5,a2
 110:	962e                	add	a2,a2,a1
 112:	03162023          	sw	a7,32(a2)

00000116 <.L7>:
 116:	5d800613          	li	a2,1496
 11a:	02c78633          	mul	a2,a5,a2
 11e:	96b2                	add	a3,a3,a2
 120:	3456c603          	lbu	a2,837(a3) # 345 <.LASF560+0xc>
 124:	3446c503          	lbu	a0,836(a3)
 128:	0619                	addi	a2,a2,6
 12a:	8e09                	sub	a2,a2,a0
 12c:	0642                	slli	a2,a2,0x10
 12e:	8241                	srli	a2,a2,0x10
 130:	32c69d23          	sh	a2,826(a3)

00000134 <.LBB94>:
 134:	1679                	addi	a2,a2,-2

00000136 <.LBB97>:
 136:	00c700a3          	sb	a2,1(a4)

0000013a <.LBE97>:
 13a:	3446c683          	lbu	a3,836(a3)
 13e:	00470613          	addi	a2,a4,4

00000142 <.LBB98>:
 142:	00d70223          	sb	a3,4(a4)

00000146 <.LBE98>:
 146:	02800713          	li	a4,40
 14a:	02e787b3          	mul	a5,a5,a4
 14e:	00f58733          	add	a4,a1,a5
 152:	07d1                	addi	a5,a5,20
 154:	95be                	add	a1,a1,a5
 156:	c750                	sw	a2,12(a4)
 158:	c34c                	sw	a1,4(a4)
 15a:	bde1                	j	32 <.L4>

0000015c <.L5>:
 15c:	ec030be3          	beqz	t1,32 <.L4>

00000160 <.LBB100>:
 160:	5d800613          	li	a2,1496

00000164 <.LVL28>:
 164:	02c78633          	mul	a2,a5,a2
 168:	fff6c693          	not	a3,a3

0000016c <.LVL29>:
 16c:	8eed                	and	a3,a3,a1

0000016e <.LVL30>:
 16e:	000005b7          	lui	a1,0x0

00000172 <.LBB103>:
 172:	00d88023          	sb	a3,0(a7)

00000176 <.LBE103>:
 176:	00058693          	mv	a3,a1
 17a:	00058593          	mv	a1,a1
 17e:	96b2                	add	a3,a3,a2
 180:	33c6d883          	lhu	a7,828(a3)
 184:	18fd                	addi	a7,a7,-1
 186:	08c2                	slli	a7,a7,0x10
 188:	0108d893          	srli	a7,a7,0x10
 18c:	33169e23          	sh	a7,828(a3)
 190:	0c088463          	beqz	a7,258 <.L8>
 194:	3446c883          	lbu	a7,836(a3)
 198:	0fe87613          	andi	a2,a6,254
 19c:	0fb00313          	li	t1,251
 1a0:	06c88963          	beq	a7,a2,212 <.L9>

000001a4 <.L10>:
 1a4:	5d800693          	li	a3,1496
 1a8:	02d786b3          	mul	a3,a5,a3
 1ac:	96ae                	add	a3,a3,a1
 1ae:	3456c603          	lbu	a2,837(a3)
 1b2:	03061663          	bne	a2,a6,1de <.L14>

000001b6 <.L13>:
 1b6:	3456c603          	lbu	a2,837(a3)
 1ba:	00a60833          	add	a6,a2,a0
 1be:	c609                	beqz	a2,1c8 <.L15>

000001c0 <.LBB104>:
 1c0:	00084883          	lbu	a7,0(a6)
 1c4:	08088663          	beqz	a7,250 <.L16>

000001c8 <.L15>:
 1c8:	02800613          	li	a2,40
 1cc:	02c78633          	mul	a2,a5,a2
 1d0:	000006b7          	lui	a3,0x0
 1d4:	00068693          	mv	a3,a3
 1d8:	96b2                	add	a3,a3,a2
 1da:	0306a023          	sw	a6,32(a3) # 20 <mm_tim_update_proceed+0x20>

000001de <.L14>:
 1de:	5d800693          	li	a3,1496
 1e2:	02d787b3          	mul	a5,a5,a3
 1e6:	97ae                	add	a5,a5,a1
 1e8:	3457c683          	lbu	a3,837(a5)
 1ec:	3447c603          	lbu	a2,836(a5)
 1f0:	0699                	addi	a3,a3,6
 1f2:	8e91                	sub	a3,a3,a2
 1f4:	06c2                	slli	a3,a3,0x10
 1f6:	82c1                	srli	a3,a3,0x10
 1f8:	32d79d23          	sh	a3,826(a5)

000001fc <.LBB106>:
 1fc:	16f9                	addi	a3,a3,-2

000001fe <.LBB109>:
 1fe:	00d700a3          	sb	a3,1(a4)

00000202 <.LBE109>:
 202:	3447c783          	lbu	a5,836(a5)

00000206 <.LBB110>:
 206:	00f70223          	sb	a5,4(a4)
 20a:	b525                	j	32 <.L4>

0000020c <.L12>:
 20c:	0605                	addi	a2,a2,1
 20e:	34c68223          	sb	a2,836(a3)

00000212 <.L9>:
 212:	3446c603          	lbu	a2,836(a3)
 216:	00660863          	beq	a2,t1,226 <.L11>

0000021a <.LBB112>:
 21a:	00a608b3          	add	a7,a2,a0

0000021e <.LBE112>:
 21e:	0008c883          	lbu	a7,0(a7)
 222:	fe0885e3          	beqz	a7,20c <.L12>

00000226 <.L11>:
 226:	5d800693          	li	a3,1496
 22a:	02d786b3          	mul	a3,a5,a3
 22e:	02800893          	li	a7,40
 232:	0fe67613          	andi	a2,a2,254
 236:	031788b3          	mul	a7,a5,a7
 23a:	96ae                	add	a3,a3,a1
 23c:	34c68223          	sb	a2,836(a3)
 240:	000006b7          	lui	a3,0x0
 244:	00068693          	mv	a3,a3
 248:	962a                	add	a2,a2,a0
 24a:	96c6                	add	a3,a3,a7
 24c:	ced0                	sw	a2,28(a3)
 24e:	bf99                	j	1a4 <.L10>

00000250 <.L16>:
 250:	167d                	addi	a2,a2,-1
 252:	34c682a3          	sb	a2,837(a3) # 345 <.LASF560+0xc>
 256:	b785                	j	1b6 <.L13>

00000258 <.L8>:
 258:	4599                	li	a1,6
 25a:	32b69d23          	sh	a1,826(a3)
 25e:	000005b7          	lui	a1,0x0
 262:	33058593          	addi	a1,a1,816 # 330 <.LLST14+0x8>
 266:	962e                	add	a2,a2,a1
 268:	0ff00593          	li	a1,255
 26c:	00b61a23          	sh	a1,20(a2)

00000270 <.LBB114>:
 270:	02800593          	li	a1,40
 274:	02b787b3          	mul	a5,a5,a1
 278:	33a6c603          	lbu	a2,826(a3)
 27c:	0715                	addi	a4,a4,5

0000027e <.LBB117>:
 27e:	fe070fa3          	sb	zero,-1(a4)

00000282 <.LBE117>:
 282:	1679                	addi	a2,a2,-2

00000284 <.LBB120>:
 284:	fec70e23          	sb	a2,-4(a4)

00000288 <.LBB121>:
 288:	00000637          	lui	a2,0x0
 28c:	00060613          	mv	a2,a2
 290:	97b2                	add	a5,a5,a2
 292:	c7d8                	sw	a4,12(a5)
 294:	00344703          	lbu	a4,3(s0)
 298:	4651                	li	a2,20
 29a:	02c70733          	mul	a4,a4,a2
 29e:	00000637          	lui	a2,0x0
 2a2:	00060613          	mv	a2,a2
 2a6:	9732                	add	a4,a4,a2
 2a8:	c3d8                	sw	a4,4(a5)
 2aa:	3456c703          	lbu	a4,837(a3)
 2ae:	953a                	add	a0,a0,a4

000002b0 <.LVL47>:
 2b0:	d388                	sw	a0,32(a5)
 2b2:	b341                	j	32 <.L4>

Disassembly of section .text.mm_bcn_init:

00000000 <mm_bcn_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040513          	mv	a0,s0
   c:	02400613          	li	a2,36
  10:	4581                	li	a1,0
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <mm_bcn_init+0x14>

0000001c <.LVL48>:
  1c:	000007b7          	lui	a5,0x0
  20:	00040413          	mv	s0,s0
  24:	00078793          	mv	a5,a5
  28:	c81c                	sw	a5,16(s0)
  2a:	000007b7          	lui	a5,0x0
  2e:	00078793          	mv	a5,a5
  32:	c85c                	sw	a5,20(s0)
  34:	4422                	lw	s0,8(sp)
  36:	40b2                	lw	ra,12(sp)
  38:	00000537          	lui	a0,0x0
  3c:	01c50513          	addi	a0,a0,28 # 1c <.LVL48>
  40:	0141                	addi	sp,sp,16
  42:	00000317          	auipc	t1,0x0
  46:	00030067          	jr	t1 # 42 <.LVL48+0x26>

Disassembly of section .text.mm_bcn_init_vif:

00000000 <mm_bcn_init_vif>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	05754583          	lbu	a1,87(a0)
   e:	04800913          	li	s2,72
  12:	03c00793          	li	a5,60
  16:	03258933          	mul	s2,a1,s2
  1a:	00000737          	lui	a4,0x0
  1e:	00070713          	mv	a4,a4
  22:	000006b7          	lui	a3,0x0
  26:	00068693          	mv	a3,a3
  2a:	842a                	mv	s0,a0
  2c:	06050513          	addi	a0,a0,96

00000030 <.LVL52>:
  30:	02f587b3          	mul	a5,a1,a5
  34:	993a                	add	s2,s2,a4
  36:	34c00713          	li	a4,844
  3a:	864a                	mv	a2,s2
  3c:	02e585b3          	mul	a1,a1,a4
  40:	96be                	add	a3,a3,a5
  42:	000007b7          	lui	a5,0x0
  46:	00078793          	mv	a5,a5
  4a:	95be                	add	a1,a1,a5
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL52+0x1c>

00000054 <.LVL54>:
  54:	05744783          	lbu	a5,87(s0) # 57 <.LVL54+0x3>
  58:	4651                	li	a2,20
  5a:	00000737          	lui	a4,0x0
  5e:	02c787b3          	mul	a5,a5,a2
  62:	00070713          	mv	a4,a4

00000066 <.LBB136>:
  66:	0fc00513          	li	a0,252
  6a:	02800693          	li	a3,40
  6e:	4581                	li	a1,0

00000070 <.LBE136>:
  70:	97ba                	add	a5,a5,a4
  72:	00f92023          	sw	a5,0(s2)

00000076 <.LBB157>:
  76:	05744483          	lbu	s1,87(s0)

0000007a <.LVL56>:
  7a:	000007b7          	lui	a5,0x0
  7e:	00078793          	mv	a5,a5
  82:	02a48533          	mul	a0,s1,a0
  86:	00349713          	slli	a4,s1,0x3
  8a:	973e                	add	a4,a4,a5

0000008c <.LVL57>:
  8c:	000007b7          	lui	a5,0x0
  90:	00078793          	mv	a5,a5
  94:	340401a3          	sb	zero,835(s0)
  98:	32041e23          	sh	zero,828(s0)
  9c:	34040323          	sb	zero,838(s0)
  a0:	caff0937          	lui	s2,0xcaff0
  a4:	ade90913          	addi	s2,s2,-1314 # cafefade <.LASF457+0xcafec792>
  a8:	02d486b3          	mul	a3,s1,a3
  ac:	953e                	add	a0,a0,a5

000000ae <.LVL58>:
  ae:	4799                	li	a5,6
  b0:	32f41d23          	sh	a5,826(s0)
  b4:	0ff00793          	li	a5,255
  b8:	34f41223          	sh	a5,836(s0)
  bc:	000007b7          	lui	a5,0x0
  c0:	00078793          	mv	a5,a5
  c4:	02c484b3          	mul	s1,s1,a2

000000c8 <.LVL59>:
  c8:	97b6                	add	a5,a5,a3
  ca:	00570693          	addi	a3,a4,5 # 5 <mm_bcn_init_vif+0x5>
  ce:	c7d4                	sw	a3,12(a5)

000000d0 <.LVL60>:
  d0:	000006b7          	lui	a3,0x0
  d4:	00068693          	mv	a3,a3
  d8:	0127a023          	sw	s2,0(a5) # 0 <mm_bcn_init_vif>
  dc:	c798                	sw	a4,8(a5)
  de:	0007a823          	sw	zero,16(a5)
  e2:	0fc00613          	li	a2,252
  e6:	94b6                	add	s1,s1,a3

000000e8 <.LBB138>:
  e8:	4695                	li	a3,5

000000ea <.LBE138>:
  ea:	c3c4                	sw	s1,4(a5)

000000ec <.LBB141>:
  ec:	00d70023          	sb	a3,0(a4)

000000f0 <.LBB142>:
  f0:	4691                	li	a3,4
  f2:	00d700a3          	sb	a3,1(a4)

000000f6 <.LBE142>:
  f6:	34344683          	lbu	a3,835(s0)

000000fa <.LBB144>:
  fa:	00070223          	sb	zero,4(a4)

000000fe <.LBB150>:
  fe:	00d70123          	sb	a3,2(a4)

00000102 <.LBB151>:
 102:	4685                	li	a3,1
 104:	00d701a3          	sb	a3,3(a4)

00000108 <.LBB153>:
 108:	56fd                	li	a3,-1
 10a:	00d702a3          	sb	a3,5(a4)

0000010e <.LBE154>:
 10e:	0127aa23          	sw	s2,20(a5)
 112:	34544703          	lbu	a4,837(s0)

00000116 <.LVL68>:
 116:	cf84                	sw	s1,24(a5)
 118:	972a                	add	a4,a4,a0
 11a:	d398                	sw	a4,32(a5)
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL68+0x6>

00000124 <.LVL69>:
 124:	0124a023          	sw	s2,0(s1)
 128:	0004a223          	sw	zero,4(s1)
 12c:	0004a823          	sw	zero,16(s1)

00000130 <.LBE157>:
 130:	0cc42783          	lw	a5,204(s0)

00000134 <.LVL71>:
 134:	0207a223          	sw	zero,36(a5)
 138:	0207ae23          	sw	zero,60(a5)
 13c:	0007a823          	sw	zero,16(a5)
 140:	000007b7          	lui	a5,0x0

00000144 <.LVL72>:
 144:	00078793          	mv	a5,a5
 148:	32f42623          	sw	a5,812(s0)
 14c:	32842823          	sw	s0,816(s0)
 150:	40b2                	lw	ra,12(sp)
 152:	4422                	lw	s0,8(sp)

00000154 <.LVL73>:
 154:	4492                	lw	s1,4(sp)
 156:	4902                	lw	s2,0(sp)
 158:	0141                	addi	sp,sp,16
 15a:	8082                	ret

Disassembly of section .text.mm_tim_update:

00000000 <mm_tim_update>:
   0:	000007b7          	lui	a5,0x0
   4:	0047a783          	lw	a5,4(a5) # 4 <mm_tim_update+0x4>
   8:	cb99                	beqz	a5,1e <.L31>
   a:	ff450593          	addi	a1,a0,-12
   e:	00000537          	lui	a0,0x0

00000012 <.LVL76>:
  12:	01c50513          	addi	a0,a0,28 # 1c <.LVL76+0xa>
  16:	00000317          	auipc	t1,0x0
  1a:	00030067          	jr	t1 # 16 <.LVL76+0x4>

0000001e <.L31>:
  1e:	00000317          	auipc	t1,0x0
  22:	00030067          	jr	t1 # 1e <.L31>

Disassembly of section .text.mm_bcn_transmit:

00000000 <mm_bcn_transmit>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)

00000004 <.LBB190>:
   4:	000007b7          	lui	a5,0x0

00000008 <.LBE190>:
   8:	00000937          	lui	s2,0x0
   c:	d422                	sw	s0,40(sp)
   e:	d606                	sw	ra,44(sp)
  10:	d226                	sw	s1,36(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	cc52                	sw	s4,24(sp)
  16:	ca56                	sw	s5,20(sp)
  18:	c85a                	sw	s6,16(sp)
  1a:	c65e                	sw	s7,12(sp)
  1c:	c462                	sw	s8,8(sp)

0000001e <.LBB191>:
  1e:	0087a403          	lw	s0,8(a5) # 8 <.LBE190>

00000022 <.LBE191>:
  22:	00090793          	mv	a5,s2
  26:	43dc                	lw	a5,4(a5)
  28:	00090913          	mv	s2,s2
  2c:	cf99                	beqz	a5,4a <.L33>
  2e:	000005b7          	lui	a1,0x0
  32:	00000537          	lui	a0,0x0
  36:	33900613          	li	a2,825
  3a:	00058593          	mv	a1,a1
  3e:	00050513          	mv	a0,a0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LBE191+0x20>

0000004a <.L33>:
  4a:	00994783          	lbu	a5,9(s2) # 9 <.LBE190+0x1>
  4e:	c385                	beqz	a5,6e <.L34>
  50:	4785                	li	a5,1
  52:	00f90423          	sb	a5,8(s2)

00000056 <.L32>:
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)

0000005a <.LVL81>:
  5a:	5492                	lw	s1,36(sp)
  5c:	5902                	lw	s2,32(sp)
  5e:	49f2                	lw	s3,28(sp)
  60:	4a62                	lw	s4,24(sp)
  62:	4ad2                	lw	s5,20(sp)
  64:	4b42                	lw	s6,16(sp)
  66:	4bb2                	lw	s7,12(sp)
  68:	4c22                	lw	s8,8(sp)
  6a:	6145                	addi	sp,sp,48
  6c:	8082                	ret

0000006e <.L34>:
  6e:	00000ab7          	lui	s5,0x0

00000072 <.LBB194>:
  72:	000009b7          	lui	s3,0x0

00000076 <.LBB241>:
  76:	00000b37          	lui	s6,0x0

0000007a <.LBB200>:
  7a:	00000a37          	lui	s4,0x0

0000007e <.LBE200>:
  7e:	00090423          	sb	zero,8(s2)

00000082 <.LBB243>:
  82:	000a8a93          	mv	s5,s5

00000086 <.LBB204>:
  86:	00098993          	mv	s3,s3

0000008a <.LBB244>:
  8a:	000b0b13          	mv	s6,s6

0000008e <.LBB205>:
  8e:	000a0a13          	mv	s4,s4

00000092 <.L36>:
  92:	d071                	beqz	s0,56 <.L32>
  94:	05644703          	lbu	a4,86(s0)
  98:	4789                	li	a5,2
  9a:	16f71f63          	bne	a4,a5,218 <.L38>
  9e:	34244783          	lbu	a5,834(s0)
  a2:	16078b63          	beqz	a5,218 <.L38>
  a6:	34144703          	lbu	a4,833(s0)
  aa:	34044783          	lbu	a5,832(s0)
  ae:	16f71563          	bne	a4,a5,218 <.L38>

000000b2 <.LBB246>:
  b2:	33a45583          	lhu	a1,826(s0)
  b6:	05744783          	lbu	a5,87(s0)
  ba:	33845703          	lhu	a4,824(s0)
  be:	0cc42683          	lw	a3,204(s0)
  c2:	078e                	slli	a5,a5,0x3
  c4:	972e                	add	a4,a4,a1
  c6:	97d6                	add	a5,a5,s5
  c8:	0711                	addi	a4,a4,4

000000ca <.LBB206>:
  ca:	0047c603          	lbu	a2,4(a5)

000000ce <.LBE206>:
  ce:	ced8                	sw	a4,28(a3)

000000d0 <.LBB209>:
  d0:	0549d703          	lhu	a4,84(s3) # 54 <.L33+0xa>

000000d4 <.LBE209>:
  d4:	4acc                	lw	a1,20(a3)
  d6:	06040493          	addi	s1,s0,96

000000da <.LBB210>:
  da:	0705                	addi	a4,a4,1
  dc:	0742                	slli	a4,a4,0x10
  de:	8341                	srli	a4,a4,0x10
  e0:	04e99a23          	sh	a4,84(s3)

000000e4 <.LBB212>:
  e4:	0712                	slli	a4,a4,0x4

000000e6 <.LBB216>:
  e6:	00e59b23          	sh	a4,22(a1) # 16 <.LBE190+0xe>

000000ea <.LBE216>:
  ea:	34344703          	lbu	a4,835(s0)

000000ee <.LBB217>:
  ee:	00e78123          	sb	a4,2(a5)

000000f2 <.LBE217>:
  f2:	12071563          	bnez	a4,21c <.L40>
  f6:	34644703          	lbu	a4,838(s0)
  fa:	e31d                	bnez	a4,120 <.L41>

000000fc <.LBB219>:
  fc:	000005b7          	lui	a1,0x0
 100:	0005a583          	lw	a1,0(a1) # 0 <mm_bcn_transmit>
 104:	018a2703          	lw	a4,24(s4) # 18 <.LBE190+0x10>
 108:	8f6d                	and	a4,a4,a1
 10a:	33000593          	li	a1,816
 10e:	02b70733          	mul	a4,a4,a1
 112:	01ca2583          	lw	a1,28(s4)
 116:	972e                	add	a4,a4,a1

00000118 <.LVL91>:
 118:	430c                	lw	a1,0(a4)

0000011a <.LBE219>:
 11a:	0fe67713          	andi	a4,a2,254
 11e:	c199                	beqz	a1,124 <.L43>

00000120 <.L41>:
 120:	00166713          	ori	a4,a2,1

00000124 <.L43>:
 124:	0037c603          	lbu	a2,3(a5)

00000128 <.LBE220>:
 128:	34c401a3          	sb	a2,835(s0)

0000012c <.L44>:
 12c:	00176713          	ori	a4,a4,1

00000130 <.LBB225>:
 130:	00e78223          	sb	a4,4(a5)

00000134 <.LBE225>:
 134:	34344783          	lbu	a5,835(s0)

00000138 <.LVL99>:
 138:	17fd                	addi	a5,a5,-1
 13a:	34f401a3          	sb	a5,835(s0)
 13e:	34744783          	lbu	a5,839(s0)
 142:	cf8d                	beqz	a5,17c <.L47>

00000144 <.LBB226>:
 144:	17fd                	addi	a5,a5,-1
 146:	34844603          	lbu	a2,840(s0)
 14a:	0ff7f793          	andi	a5,a5,255
 14e:	34f403a3          	sb	a5,839(s0)

00000152 <.LVL100>:
 152:	ce11                	beqz	a2,16e <.L49>

00000154 <.LBB227>:
 154:	4ad8                	lw	a4,20(a3)
 156:	9732                	add	a4,a4,a2
 158:	00f70023          	sb	a5,0(a4)

0000015c <.LBE227>:
 15c:	34944703          	lbu	a4,841(s0)
 160:	c719                	beqz	a4,16e <.L49>

00000162 <.LBB231>:
 162:	4adc                	lw	a5,20(a3)

00000164 <.LBE231>:
 164:	34744603          	lbu	a2,839(s0)

00000168 <.LBB232>:
 168:	97ba                	add	a5,a5,a4

0000016a <.LVL104>:
 16a:	00c78023          	sb	a2,0(a5)

0000016e <.L49>:
 16e:	34744b83          	lbu	s7,839(s0)
 172:	0a0b9e63          	bnez	s7,22e <.L51>

00000176 <.L52>:
 176:	4785                	li	a5,1
 178:	34f403a3          	sb	a5,839(s0)

0000017c <.L47>:
 17c:	8522                	mv	a0,s0
 17e:	85a6                	mv	a1,s1
 180:	00000097          	auipc	ra,0x0
 184:	000080e7          	jalr	ra # 180 <.L47+0x4>

00000188 <.LBE246>:
 188:	8522                	mv	a0,s0
 18a:	00000097          	auipc	ra,0x0
 18e:	000080e7          	jalr	ra # 18a <.LBE246+0x2>

00000192 <.LVL108>:
 192:	c159                	beqz	a0,218 <.L38>
 194:	05744b83          	lbu	s7,87(s0)

00000198 <.LBB247>:
 198:	45b5                	li	a1,13
 19a:	468d                	li	a3,3
 19c:	4601                	li	a2,0

0000019e <.LBE247>:
 19e:	0ba9                	addi	s7,s7,10

000001a0 <.LBB251>:
 1a0:	04a00513          	li	a0,74
 1a4:	00000097          	auipc	ra,0x0
 1a8:	000080e7          	jalr	ra # 1a4 <.LBB251+0x4>

000001ac <.LBE251>:
 1ac:	0ffbfb93          	andi	s7,s7,255

000001b0 <.LBB252>:
 1b0:	01750023          	sb	s7,0(a0) # 0 <mm_bcn_transmit>
 1b4:	000500a3          	sb	zero,1(a0)
 1b8:	00050123          	sb	zero,2(a0)
 1bc:	00000097          	auipc	ra,0x0
 1c0:	000080e7          	jalr	ra # 1bc <.LBB252+0xc>

000001c4 <.LBE252>:
 1c4:	05744783          	lbu	a5,87(s0)
 1c8:	4591                	li	a1,4
 1ca:	8526                	mv	a0,s1
 1cc:	08f407a3          	sb	a5,143(s0)
 1d0:	57fd                	li	a5,-1
 1d2:	08f40823          	sb	a5,144(s0)
 1d6:	00000097          	auipc	ra,0x0
 1da:	000080e7          	jalr	ra # 1d6 <.LBE252+0x12>

000001de <.LVL112>:
 1de:	c511                	beqz	a0,1ea <.L54>
 1e0:	00492783          	lw	a5,4(s2)
 1e4:	0785                	addi	a5,a5,1
 1e6:	00f92223          	sw	a5,4(s2)

000001ea <.L54>:
 1ea:	05744483          	lbu	s1,87(s0)
 1ee:	1b000793          	li	a5,432
 1f2:	04a9                	addi	s1,s1,10
 1f4:	02f484b3          	mul	s1,s1,a5
 1f8:	94da                	add	s1,s1,s6
 1fa:	0324c783          	lbu	a5,50(s1)
 1fe:	8b89                	andi	a5,a5,2
 200:	cf81                	beqz	a5,218 <.L38>
 202:	47a5                	li	a5,9
 204:	d8dc                	sw	a5,52(s1)
 206:	4601                	li	a2,0
 208:	85a6                	mv	a1,s1
 20a:	8522                	mv	a0,s0
 20c:	00000097          	auipc	ra,0x0
 210:	000080e7          	jalr	ra # 20c <.L54+0x22>

00000214 <.LVL116>:
 214:	0204aa23          	sw	zero,52(s1)

00000218 <.L38>:
 218:	4000                	lw	s0,0(s0)

0000021a <.LBE254>:
 21a:	bda5                	j	92 <.L36>

0000021c <.L40>:
 21c:	34644583          	lbu	a1,838(s0)
 220:	0fe67713          	andi	a4,a2,254
 224:	8989                	andi	a1,a1,2
 226:	d199                	beqz	a1,12c <.L44>
 228:	00166713          	ori	a4,a2,1

0000022c <.LVL120>:
 22c:	b701                	j	12c <.L44>

0000022e <.L51>:
 22e:	05744c03          	lbu	s8,87(s0)

00000232 <.LBB233>:
 232:	4689                	li	a3,2

00000234 <.LVL123>:
 234:	4601                	li	a2,0
 236:	45b5                	li	a1,13
 238:	04e00513          	li	a0,78
 23c:	00000097          	auipc	ra,0x0
 240:	000080e7          	jalr	ra # 23c <.LVL123+0x8>

00000244 <.LVL124>:
 244:	01850023          	sb	s8,0(a0)
 248:	017500a3          	sb	s7,1(a0)
 24c:	00000097          	auipc	ra,0x0
 250:	000080e7          	jalr	ra # 24c <.LVL124+0x8>

00000254 <.LBE233>:
 254:	34744783          	lbu	a5,839(s0)
 258:	f395                	bnez	a5,17c <.L47>
 25a:	bf31                	j	176 <.L52>

Disassembly of section .text.mm_bcn_updated:

00000000 <mm_bcn_updated>:
   0:	7179                	addi	sp,sp,-48
   2:	c462                	sw	s8,8(sp)
   4:	00000c37          	lui	s8,0x0
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	cc52                	sw	s4,24(sp)
  14:	ca56                	sw	s5,20(sp)
  16:	c85a                	sw	s6,16(sp)
  18:	c65e                	sw	s7,12(sp)
  1a:	c266                	sw	s9,4(sp)
  1c:	000c0493          	mv	s1,s8
  20:	409c                	lw	a5,0(s1)
  22:	842a                	mv	s0,a0

00000024 <.LBB271>:
  24:	4601                	li	a2,0
  26:	ffc7d583          	lhu	a1,-4(a5)

0000002a <.LVL128>:
  2a:	04000513          	li	a0,64

0000002e <.LBB274>:
  2e:	ff478913          	addi	s2,a5,-12

00000032 <.LBE274>:
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LBE274>

0000003a <.LBB275>:
  3a:	05744b83          	lbu	s7,87(s0)

0000003e <.LBE275>:
  3e:	0004a983          	lw	s3,0(s1)

00000042 <.LBB287>:
  42:	000007b7          	lui	a5,0x0
  46:	003b9a13          	slli	s4,s7,0x3
  4a:	00078793          	mv	a5,a5
  4e:	0089cc83          	lbu	s9,8(s3)
  52:	9a3e                	add	s4,s4,a5
  54:	0049d783          	lhu	a5,4(s3)
  58:	0cc42483          	lw	s1,204(s0)

0000005c <.LVL133>:
  5c:	0069db03          	lhu	s6,6(s3)
  60:	41978cb3          	sub	s9,a5,s9
  64:	0144aa83          	lw	s5,20(s1)
  68:	33941c23          	sh	s9,824(s0)
  6c:	48d0                	lw	a2,20(s1)
  6e:	0049d583          	lhu	a1,4(s3)
  72:	855e                	mv	a0,s7
  74:	0b0d                	addi	s6,s6,3

00000076 <.LVL134>:
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL134>

0000007e <.LVL135>:
  7e:	0069d703          	lhu	a4,6(s3)
  82:	48dc                	lw	a5,20(s1)
  84:	00000537          	lui	a0,0x0
  88:	177d                	addi	a4,a4,-1
  8a:	97ba                	add	a5,a5,a4
  8c:	cc9c                	sw	a5,24(s1)
  8e:	0089c703          	lbu	a4,8(s3)
  92:	00050513          	mv	a0,a0
  96:	000c0c13          	mv	s8,s8
  9a:	0705                	addi	a4,a4,1
  9c:	973e                	add	a4,a4,a5
  9e:	47d1                	li	a5,20
  a0:	02fb8bb3          	mul	s7,s7,a5
  a4:	955e                	add	a0,a0,s7
  a6:	c518                	sw	a4,8(a0)
  a8:	0069d783          	lhu	a5,6(s3)
  ac:	00052823          	sw	zero,16(a0) # 10 <mm_bcn_updated+0x10>
  b0:	fff7c793          	not	a5,a5
  b4:	97e6                	add	a5,a5,s9
  b6:	97ba                	add	a5,a5,a4
  b8:	c55c                	sw	a5,12(a0)

000000ba <.LVL137>:
  ba:	403c                	lw	a5,64(s0)
  bc:	0047c783          	lbu	a5,4(a5) # 4 <mm_bcn_updated+0x4>
  c0:	cbcd                	beqz	a5,172 <.L82>
  c2:	000007b7          	lui	a5,0x0
  c6:	00078793          	mv	a5,a5

000000ca <.L79>:
  ca:	44b00737          	lui	a4,0x44b00
  ce:	0a072703          	lw	a4,160(a4) # 44b000a0 <.LASF457+0x44afcd54>

000000d2 <.LBB279>:
  d2:	9ada                	add	s5,s5,s6

000000d4 <.LBE279>:
  d4:	0ff77713          	andi	a4,a4,255
  d8:	d3d8                	sw	a4,36(a5)

000000da <.LVL141>:
  da:	d49c                	sw	a5,40(s1)
  dc:	0204a223          	sw	zero,36(s1)
  e0:	0204ae23          	sw	zero,60(s1)
  e4:	05744783          	lbu	a5,87(s0)

000000e8 <.LVL142>:
  e8:	02800713          	li	a4,40
  ec:	02e787b3          	mul	a5,a5,a4
  f0:	00000737          	lui	a4,0x0
  f4:	00070713          	mv	a4,a4
  f8:	97ba                	add	a5,a5,a4
  fa:	c89c                	sw	a5,16(s1)
  fc:	4785                	li	a5,1
  fe:	34f40123          	sb	a5,834(s0)

00000102 <.LBB282>:
 102:	000ac783          	lbu	a5,0(s5) # 0 <mm_bcn_updated>

00000106 <.LBB283>:
 106:	00fa01a3          	sb	a5,3(s4)

0000010a <.LBE283>:
 10a:	000c2783          	lw	a5,0(s8) # 0 <mm_bcn_updated>

0000010e <.LBB288>:
 10e:	340403a3          	sb	zero,839(s0)
 112:	0cc42683          	lw	a3,204(s0)

00000116 <.LVL147>:
 116:	00a7c703          	lbu	a4,10(a5) # a <mm_bcn_updated+0xa>
 11a:	34e40423          	sb	a4,840(s0)

0000011e <.LVL148>:
 11e:	00b7c703          	lbu	a4,11(a5)
 122:	34e404a3          	sb	a4,841(s0)

00000126 <.LVL149>:
 126:	00a7c703          	lbu	a4,10(a5)
 12a:	cb01                	beqz	a4,13a <.L80>

0000012c <.LBB290>:
 12c:	4adc                	lw	a5,20(a3)

0000012e <.LVL151>:
 12e:	97ba                	add	a5,a5,a4

00000130 <.LBE293>:
 130:	0007c783          	lbu	a5,0(a5)
 134:	0785                	addi	a5,a5,1
 136:	34f403a3          	sb	a5,839(s0)

0000013a <.L80>:
 13a:	008c4783          	lbu	a5,8(s8)
 13e:	000c04a3          	sb	zero,9(s8)
 142:	c789                	beqz	a5,14c <.L81>
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <.L80+0xa>

0000014c <.L81>:
 14c:	5422                	lw	s0,40(sp)

0000014e <.LVL154>:
 14e:	000c2023          	sw	zero,0(s8)
 152:	50b2                	lw	ra,44(sp)
 154:	5492                	lw	s1,36(sp)

00000156 <.LVL155>:
 156:	49f2                	lw	s3,28(sp)
 158:	4a62                	lw	s4,24(sp)
 15a:	4ad2                	lw	s5,20(sp)
 15c:	4b42                	lw	s6,16(sp)
 15e:	4bb2                	lw	s7,12(sp)
 160:	4c22                	lw	s8,8(sp)
 162:	4c92                	lw	s9,4(sp)
 164:	854a                	mv	a0,s2
 166:	5902                	lw	s2,32(sp)

00000168 <.LVL156>:
 168:	6145                	addi	sp,sp,48
 16a:	00000317          	auipc	t1,0x0
 16e:	00030067          	jr	t1 # 16a <.LVL156+0x2>

00000172 <.L82>:
 172:	000007b7          	lui	a5,0x0
 176:	00078793          	mv	a5,a5
 17a:	bf81                	j	ca <.L79>

Disassembly of section .text.mm_bcn_update:

00000000 <mm_bcn_update>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	00954403          	lbu	s0,9(a0)

0000000a <.LBB295>:
   a:	34c00793          	li	a5,844
   e:	00000737          	lui	a4,0x0
  12:	02f407b3          	mul	a5,s0,a5
  16:	00070713          	mv	a4,a4
  1a:	00455603          	lhu	a2,4(a0)
  1e:	00c50593          	addi	a1,a0,12
  22:	97ba                	add	a5,a5,a4
  24:	14c78513          	addi	a0,a5,332 # 14c <.L81>

00000028 <.LVL160>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL160>

00000030 <.LBE295>:
  30:	5d800513          	li	a0,1496
  34:	02a40433          	mul	s0,s0,a0

00000038 <.LBB296>:
  38:	000007b7          	lui	a5,0x0
  3c:	00078793          	mv	a5,a5
  40:	4705                	li	a4,1
  42:	00000537          	lui	a0,0x0
  46:	00078523          	sb	zero,10(a5) # a <.LBB295>
  4a:	00e784a3          	sb	a4,9(a5)
  4e:	00050513          	mv	a0,a0

00000052 <.LBE296>:
  52:	40b2                	lw	ra,12(sp)

00000054 <.LBB297>:
  54:	4581                	li	a1,0
  56:	9522                	add	a0,a0,s0

00000058 <.LBE297>:
  58:	4422                	lw	s0,8(sp)
  5a:	0141                	addi	sp,sp,16

0000005c <.LBB298>:
  5c:	00000317          	auipc	t1,0x0
  60:	00030067          	jr	t1 # 5c <.LBB298>

Disassembly of section .text.mm_bcn_transmitted:

00000000 <mm_bcn_transmitted>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	c226                	sw	s1,4(sp)
   a:	00040793          	mv	a5,s0
   e:	c606                	sw	ra,12(sp)
  10:	c04a                	sw	s2,0(sp)
  12:	43dc                	lw	a5,4(a5)
  14:	84aa                	mv	s1,a0

00000016 <.LVL165>:
  16:	00040413          	mv	s0,s0
  1a:	ef99                	bnez	a5,38 <.L93>
  1c:	000005b7          	lui	a1,0x0

00000020 <.LVL166>:
  20:	00000537          	lui	a0,0x0

00000024 <.LVL167>:
  24:	24400613          	li	a2,580
  28:	00058593          	mv	a1,a1
  2c:	00050513          	mv	a0,a0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL167+0xc>

00000038 <.L93>:
  38:	405c                	lw	a5,4(s0)
  3a:	17fd                	addi	a5,a5,-1
  3c:	c05c                	sw	a5,4(s0)
  3e:	eba1                	bnez	a5,8e <.L92>
  40:	00a44783          	lbu	a5,10(s0) # a <mm_bcn_transmitted+0xa>
  44:	c791                	beqz	a5,50 <.L96>
  46:	4008                	lw	a0,0(s0)
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L93+0x10>

00000050 <.L96>:
  50:	00000937          	lui	s2,0x0

00000054 <.L97>:
  54:	4c5c                	lw	a5,28(s0)
  56:	e385                	bnez	a5,76 <.L98>

00000058 <.LBB307>:
  58:	3474c703          	lbu	a4,839(s1)
  5c:	4785                	li	a5,1
  5e:	02f71863          	bne	a4,a5,8e <.L92>

00000062 <.LBE307>:
  62:	4422                	lw	s0,8(sp)
  64:	40b2                	lw	ra,12(sp)
  66:	4902                	lw	s2,0(sp)

00000068 <.LBB311>:
  68:	8526                	mv	a0,s1

0000006a <.LBE311>:
  6a:	4492                	lw	s1,4(sp)

0000006c <.LVL172>:
  6c:	0141                	addi	sp,sp,16

0000006e <.LBB312>:
  6e:	00000317          	auipc	t1,0x0
  72:	00030067          	jr	t1 # 6e <.LBB312>

00000076 <.L98>:
  76:	01c90513          	addi	a0,s2,28 # 1c <.LVL165+0x6>
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L98+0x4>

00000082 <.LBB313>:
  82:	0531                	addi	a0,a0,12
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LBB313+0x2>

0000008c <.LVL175>:
  8c:	b7e1                	j	54 <.L97>

0000008e <.L92>:
  8e:	40b2                	lw	ra,12(sp)
  90:	4422                	lw	s0,8(sp)
  92:	4492                	lw	s1,4(sp)

00000094 <.LVL177>:
  94:	4902                	lw	s2,0(sp)
  96:	0141                	addi	sp,sp,16
  98:	8082                	ret

Disassembly of section .text.mm_bcn_change:

00000000 <mm_bcn_change>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	43d8                	lw	a4,4(a5)
   a:	c388                	sw	a0,0(a5)
   c:	c709                	beqz	a4,16 <.L105>
   e:	4705                	li	a4,1
  10:	00e78523          	sb	a4,10(a5) # a <mm_bcn_change+0xa>
  14:	8082                	ret

00000016 <.L105>:
  16:	00000317          	auipc	t1,0x0
  1a:	00030067          	jr	t1 # 16 <.L105>
