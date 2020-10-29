
rxl_hwdesc.o:     file format elf32-littleriscv


Disassembly of section .text.rxl_hwdesc_dump:

00000000 <rxl_hwdesc_dump>:
   0:	00000537          	lui	a0,0x0
   4:	7179                	addi	sp,sp,-48
   6:	00050513          	mv	a0,a0
   a:	d606                	sw	ra,44(sp)
   c:	d422                	sw	s0,40(sp)
   e:	d226                	sw	s1,36(sp)
  10:	d04a                	sw	s2,32(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	cc52                	sw	s4,24(sp)
  16:	ca56                	sw	s5,20(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <rxl_hwdesc_dump+0x18>

00000020 <.LVL0>:
  20:	00000537          	lui	a0,0x0
  24:	45b5                	li	a1,13
  26:	00050513          	mv	a0,a0
  2a:	00000437          	lui	s0,0x0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL0+0xe>

00000036 <.LVL1>:
  36:	00040413          	mv	s0,s0
  3a:	4481                	li	s1,0
  3c:	00000ab7          	lui	s5,0x0
  40:	00000a37          	lui	s4,0x0
  44:	000009b7          	lui	s3,0x0
  48:	4935                	li	s2,13

0000004a <.L2>:
  4a:	00c42803          	lw	a6,12(s0) # c <rxl_hwdesc_dump+0xc>
  4e:	441c                	lw	a5,8(s0)
  50:	4058                	lw	a4,4(s0)
  52:	4014                	lw	a3,0(s0)
  54:	8622                	mv	a2,s0
  56:	85a6                	mv	a1,s1
  58:	000a8513          	mv	a0,s5
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L2+0x12>

00000064 <.LVL3>:
  64:	01e45783          	lhu	a5,30(s0)
  68:	01c45703          	lhu	a4,28(s0)
  6c:	4c14                	lw	a3,24(s0)
  6e:	4850                	lw	a2,20(s0)
  70:	480c                	lw	a1,16(s0)
  72:	000a0513          	mv	a0,s4
  76:	0485                	addi	s1,s1,1

00000078 <.LVL4>:
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL4>

00000080 <.LVL5>:
  80:	403c                	lw	a5,64(s0)
  82:	00098513          	mv	a0,s3
  86:	06440413          	addi	s0,s0,100
  8a:	c03e                	sw	a5,0(sp)
  8c:	fd842883          	lw	a7,-40(s0)
  90:	fd442803          	lw	a6,-44(s0)
  94:	fd042783          	lw	a5,-48(s0)
  98:	fcc42703          	lw	a4,-52(s0)
  9c:	fc842683          	lw	a3,-56(s0)
  a0:	fc042603          	lw	a2,-64(s0)
  a4:	fbc42583          	lw	a1,-68(s0)
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL5+0x28>

000000b0 <.LVL6>:
  b0:	f9249de3          	bne	s1,s2,4a <.L2>
  b4:	00000537          	lui	a0,0x0
  b8:	45b5                	li	a1,13
  ba:	00050513          	mv	a0,a0
  be:	00000437          	lui	s0,0x0
  c2:	00000097          	auipc	ra,0x0
  c6:	000080e7          	jalr	ra # c2 <.LVL6+0x12>

000000ca <.LVL7>:
  ca:	00040413          	mv	s0,s0
  ce:	4481                	li	s1,0
  d0:	000009b7          	lui	s3,0x0
  d4:	4935                	li	s2,13

000000d6 <.L4>:
  d6:	00c42883          	lw	a7,12(s0) # c <rxl_hwdesc_dump+0xc>
  da:	00842803          	lw	a6,8(s0)
  de:	4681                	li	a3,0
  e0:	00088663          	beqz	a7,ec <.L3>
  e4:	00188693          	addi	a3,a7,1
  e8:	410686b3          	sub	a3,a3,a6

000000ec <.L3>:
  ec:	01245783          	lhu	a5,18(s0)
  f0:	8622                	mv	a2,s0
  f2:	85a6                	mv	a1,s1
  f4:	c23e                	sw	a5,4(sp)
  f6:	01045783          	lhu	a5,16(s0)
  fa:	00098513          	mv	a0,s3
  fe:	0485                	addi	s1,s1,1

00000100 <.LVL9>:
 100:	c03e                	sw	a5,0(sp)
 102:	405c                	lw	a5,4(s0)
 104:	4018                	lw	a4,0(s0)
 106:	03440413          	addi	s0,s0,52
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL9+0xa>

00000112 <.LVL10>:
 112:	fd2492e3          	bne	s1,s2,d6 <.L4>
 116:	50b2                	lw	ra,44(sp)
 118:	5422                	lw	s0,40(sp)
 11a:	5492                	lw	s1,36(sp)

0000011c <.LVL11>:
 11c:	5902                	lw	s2,32(sp)
 11e:	49f2                	lw	s3,28(sp)
 120:	4a62                	lw	s4,24(sp)
 122:	4ad2                	lw	s5,20(sp)
 124:	6145                	addi	sp,sp,48
 126:	8082                	ret

Disassembly of section .text.rxl_hwdesc_init:

00000000 <rxl_hwdesc_init>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d226                	sw	s1,36(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	89aa                	mv	s3,a0
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <rxl_hwdesc_init+0x12>

0000001a <.LVL13>:
  1a:	000007b7          	lui	a5,0x0
  1e:	baadf6b7          	lui	a3,0xbaadf
  22:	00000637          	lui	a2,0x0
  26:	00078793          	mv	a5,a5
  2a:	4901                	li	s2,0
  2c:	4a01                	li	s4,0
  2e:	4401                	li	s0,0
  30:	4581                	li	a1,0
  32:	4701                	li	a4,0
  34:	06b5                	addi	a3,a3,13
  36:	00060613          	mv	a2,a2
  3a:	4885                	li	a7,1
  3c:	4335                	li	t1,13

0000003e <.L15>:
  3e:	06478813          	addi	a6,a5,100 # 64 <.L12+0x12>
  42:	10099f63          	bnez	s3,160 <.L11>
  46:	53a8                	lw	a0,96(a5)
  48:	11151c63          	bne	a0,a7,160 <.L11>
  4c:	c019                	beqz	s0,52 <.L12>
  4e:	00042223          	sw	zero,4(s0)

00000052 <.L12>:
  52:	0705                	addi	a4,a4,1
  54:	87c2                	mv	a5,a6
  56:	fe6714e3          	bne	a4,t1,3e <.L15>
  5a:	478d                	li	a5,3
  5c:	00b7cb63          	blt	a5,a1,72 <.L16>
  60:	00000537          	lui	a0,0x0
  64:	4635                	li	a2,13
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.L12+0x18>

00000072 <.L16>:
  72:	c019                	beqz	s0,78 <.L17>
  74:	00042223          	sw	zero,4(s0)

00000078 <.L17>:
  78:	44b087b7          	lui	a5,0x44b08
  7c:	1b47ac23          	sw	s4,440(a5) # 44b081b8 <.LASF282+0x44b07478>

00000080 <.LBB22>:
  80:	04000737          	lui	a4,0x4000
  84:	18e7a023          	sw	a4,384(a5)

00000088 <.LBE22>:
  88:	00000737          	lui	a4,0x0
  8c:	00070713          	mv	a4,a4
  90:	000006b7          	lui	a3,0x0

00000094 <.LBB24>:
  94:	c0dee637          	lui	a2,0xc0dee
  98:	00068693          	mv	a3,a3
  9c:	2a470893          	addi	a7,a4,676 # 2a4 <.LASF2+0x1>

000000a0 <.LBE24>:
  a0:	4a81                	li	s5,0
  a2:	4781                	li	a5,0
  a4:	4481                	li	s1,0
  a6:	4581                	li	a1,0

000000a8 <.LBB25>:
  a8:	bad60613          	addi	a2,a2,-1107 # c0dedbad <.LASF282+0xc0dece6d>
  ac:	4805                	li	a6,1

000000ae <.L22>:
  ae:	03470513          	addi	a0,a4,52
  b2:	0e099563          	bnez	s3,19c <.L18>
  b6:	01472303          	lw	t1,20(a4)
  ba:	0f031163          	bne	t1,a6,19c <.L18>
  be:	c099                	beqz	s1,c4 <.L19>
  c0:	0004a223          	sw	zero,4(s1)

000000c4 <.L19>:
  c4:	872a                	mv	a4,a0

000000c6 <.LVL22>:
  c6:	35068693          	addi	a3,a3,848 # 350 <.LLST9+0x3>

000000ca <.LBE25>:
  ca:	fea892e3          	bne	a7,a0,ae <.L22>
  ce:	470d                	li	a4,3
  d0:	00b74d63          	blt	a4,a1,ea <.L23>
  d4:	00000537          	lui	a0,0x0

000000d8 <.LVL23>:
  d8:	4635                	li	a2,13
  da:	00050513          	mv	a0,a0
  de:	c63e                	sw	a5,12(sp)
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LVL23+0x8>

000000e8 <.LVL24>:
  e8:	47b2                	lw	a5,12(sp)

000000ea <.L23>:
  ea:	0004a223          	sw	zero,4(s1)

000000ee <.LBB26>:
  ee:	44b08737          	lui	a4,0x44b08
  f2:	1af72e23          	sw	a5,444(a4) # 44b081bc <.LASF282+0x44b0747c>

000000f6 <.LBB28>:
  f6:	080006b7          	lui	a3,0x8000
  fa:	18d72023          	sw	a3,384(a4)

000000fe <.LBE28>:
  fe:	00090863          	beqz	s2,10e <.L24>
 102:	000a0663          	beqz	s4,10e <.L24>
 106:	c401                	beqz	s0,10e <.L24>
 108:	000a8363          	beqz	s5,10e <.L24>
 10c:	ef91                	bnez	a5,128 <.L25>

0000010e <.L24>:
 10e:	00000537          	lui	a0,0x0
 112:	8826                	mv	a6,s1
 114:	8756                	mv	a4,s5
 116:	86a2                	mv	a3,s0
 118:	8652                	mv	a2,s4
 11a:	85ca                	mv	a1,s2
 11c:	00050513          	mv	a0,a0
 120:	00000097          	auipc	ra,0x0
 124:	000080e7          	jalr	ra # 120 <.L24+0x12>

00000128 <.L25>:
 128:	000007b7          	lui	a5,0x0
 12c:	00078793          	mv	a5,a5
 130:	0127a823          	sw	s2,16(a5) # 10 <rxl_hwdesc_init+0x10>
 134:	0147a423          	sw	s4,8(a5)
 138:	c7c0                	sw	s0,12(a5)
 13a:	000007b7          	lui	a5,0x0
 13e:	00078793          	mv	a5,a5
 142:	0157a223          	sw	s5,4(a5) # 4 <rxl_hwdesc_init+0x4>
 146:	c384                	sw	s1,0(a5)
 148:	5422                	lw	s0,40(sp)

0000014a <.LVL30>:
 14a:	50b2                	lw	ra,44(sp)
 14c:	5492                	lw	s1,36(sp)

0000014e <.LVL31>:
 14e:	5902                	lw	s2,32(sp)

00000150 <.LVL32>:
 150:	49f2                	lw	s3,28(sp)

00000152 <.LVL33>:
 152:	4a62                	lw	s4,24(sp)

00000154 <.LVL34>:
 154:	4ad2                	lw	s5,20(sp)

00000156 <.LVL35>:
 156:	6145                	addi	sp,sp,48
 158:	00000317          	auipc	t1,0x0
 15c:	00030067          	jr	t1 # 158 <.LVL35+0x2>

00000160 <.L11>:
 160:	c011                	beqz	s0,164 <.L13>
 162:	c05c                	sw	a5,4(s0)

00000164 <.L13>:
 164:	00571513          	slli	a0,a4,0x5
 168:	9532                	add	a0,a0,a2
 16a:	0007a823          	sw	zero,16(a5)
 16e:	0007aa23          	sw	zero,20(a5)
 172:	c394                	sw	a3,0(a5)
 174:	0407a023          	sw	zero,64(a5)
 178:	0007ac23          	sw	zero,24(a5)
 17c:	0107a223          	sw	a6,4(a5)
 180:	0007a423          	sw	zero,8(a5)
 184:	c7c8                	sw	a0,12(a5)
 186:	00079e23          	sh	zero,28(a5)

0000018a <.LVL37>:
 18a:	c599                	beqz	a1,198 <.L26>
 18c:	01159363          	bne	a1,a7,192 <.L14>
 190:	8a3e                	mv	s4,a5

00000192 <.L14>:
 192:	0585                	addi	a1,a1,1
 194:	843e                	mv	s0,a5
 196:	bd75                	j	52 <.L12>

00000198 <.L26>:
 198:	893e                	mv	s2,a5

0000019a <.LVL40>:
 19a:	bfe5                	j	192 <.L14>

0000019c <.L18>:
 19c:	c091                	beqz	s1,1a0 <.L20>
 19e:	c0d8                	sw	a4,4(s1)

000001a0 <.L20>:
 1a0:	34f68313          	addi	t1,a3,847 # 800034f <.LASF282+0x7fff60f>
 1a4:	c348                	sw	a0,4(a4)
 1a6:	c310                	sw	a2,0(a4)
 1a8:	00071823          	sh	zero,16(a4)
 1ac:	c714                	sw	a3,8(a4)
 1ae:	00672623          	sw	t1,12(a4)
 1b2:	cf14                	sw	a3,24(a4)

000001b4 <.LVL42>:
 1b4:	c599                	beqz	a1,1c2 <.L27>
 1b6:	01059363          	bne	a1,a6,1bc <.L21>
 1ba:	87ba                	mv	a5,a4

000001bc <.L21>:
 1bc:	0585                	addi	a1,a1,1
 1be:	84ba                	mv	s1,a4
 1c0:	b711                	j	c4 <.L19>

000001c2 <.L27>:
 1c2:	8aba                	mv	s5,a4

000001c4 <.LVL45>:
 1c4:	bfe5                	j	1bc <.L21>

Disassembly of section .text.rxl_hd_append:

00000000 <rxl_hd_append>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	ed19                	bnez	a0,26 <.L59>
   a:	000005b7          	lui	a1,0x0
   e:	00000537          	lui	a0,0x0

00000012 <.LVL47>:
  12:	0f900613          	li	a2,249
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL47+0xc>

00000026 <.L59>:
  26:	44b087b7          	lui	a5,0x44b08
  2a:	5487a683          	lw	a3,1352(a5) # 44b08548 <.LASF282+0x44b07808>

0000002e <.LBE31>:
  2e:	000007b7          	lui	a5,0x0
  32:	00078713          	mv	a4,a5
  36:	4b18                	lw	a4,16(a4)
  38:	00078793          	mv	a5,a5
  3c:	00d70463          	beq	a4,a3,44 <.L60>

00000040 <.LVL49>:
  40:	cb80                	sw	s0,16(a5)
  42:	843a                	mv	s0,a4

00000044 <.L60>:
  44:	00042223          	sw	zero,4(s0)
  48:	00042423          	sw	zero,8(s0)
  4c:	47d8                	lw	a4,12(a5)
  4e:	04042023          	sw	zero,64(s0)
  52:	00041e23          	sh	zero,28(s0)
  56:	c340                	sw	s0,4(a4)

00000058 <.LBB33>:
  58:	010006b7          	lui	a3,0x1000
  5c:	44b08737          	lui	a4,0x44b08
  60:	18d72023          	sw	a3,384(a4) # 44b08180 <.LASF282+0x44b07440>

00000064 <.LBE33>:
  64:	4798                	lw	a4,8(a5)
  66:	c7c0                	sw	s0,12(a5)
  68:	e311                	bnez	a4,6c <.L58>
  6a:	c780                	sw	s0,8(a5)

0000006c <.L58>:
  6c:	40b2                	lw	ra,12(sp)
  6e:	4422                	lw	s0,8(sp)

00000070 <.LVL53>:
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

Disassembly of section .text.rxl_pd_append:

00000000 <rxl_pd_append>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)
   a:	892a                	mv	s2,a0
   c:	84ae                	mv	s1,a1
   e:	8432                	mv	s0,a2
  10:	ee19                	bnez	a2,2e <.L64>
  12:	000005b7          	lui	a1,0x0

00000016 <.LVL55>:
  16:	00000537          	lui	a0,0x0

0000001a <.LVL56>:
  1a:	12800613          	li	a2,296

0000001e <.LVL57>:
  1e:	00058593          	mv	a1,a1
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL57+0x8>

0000002e <.L64>:
  2e:	44b087b7          	lui	a5,0x44b08
  32:	54c7a683          	lw	a3,1356(a5) # 44b0854c <.LASF282+0x44b0780c>

00000036 <.LBE35>:
  36:	000007b7          	lui	a5,0x0
  3a:	00078713          	mv	a4,a5
  3e:	4358                	lw	a4,4(a4)
  40:	00078793          	mv	a5,a5
  44:	02d71863          	bne	a4,a3,74 <.L65>
  48:	e091                	bnez	s1,4c <.L66>
  4a:	8922                	mv	s2,s0

0000004c <.L66>:
  4c:	00041823          	sh	zero,16(s0)
  50:	874a                	mv	a4,s2

00000052 <.L67>:
  52:	4394                	lw	a3,0(a5)
  54:	00042223          	sw	zero,4(s0)
  58:	c2d8                	sw	a4,4(a3)

0000005a <.LBB37>:
  5a:	44b08737          	lui	a4,0x44b08

0000005e <.LVL62>:
  5e:	020006b7          	lui	a3,0x2000

00000062 <.LVL63>:
  62:	18d72023          	sw	a3,384(a4) # 44b08180 <.LASF282+0x44b07440>

00000066 <.LBE37>:
  66:	c380                	sw	s0,0(a5)
  68:	40b2                	lw	ra,12(sp)
  6a:	4422                	lw	s0,8(sp)

0000006c <.LVL65>:
  6c:	4492                	lw	s1,4(sp)
  6e:	4902                	lw	s2,0(sp)
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

00000074 <.L65>:
  74:	c3c0                	sw	s0,4(a5)
  76:	c499                	beqz	s1,84 <.L69>
  78:	01272223          	sw	s2,4(a4)

0000007c <.L68>:
  7c:	00071823          	sh	zero,16(a4)
  80:	8426                	mv	s0,s1

00000082 <.LVL68>:
  82:	bfc1                	j	52 <.L67>

00000084 <.L69>:
  84:	84ba                	mv	s1,a4

00000086 <.LVL70>:
  86:	bfdd                	j	7c <.L68>
