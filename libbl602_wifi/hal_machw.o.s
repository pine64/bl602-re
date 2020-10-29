
hal_machw.o:     file format elf32-littleriscv


Disassembly of section .text.blmac_soft_reset_getf:

00000000 <blmac_soft_reset_getf>:
   0:	1141                	addi	sp,sp,-16
   2:	44b087b7          	lui	a5,0x44b08
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	4ba0                	lw	s0,80(a5)

0000000c <.LVL0>:
   c:	ffe47793          	andi	a5,s0,-2
  10:	cf99                	beqz	a5,2e <.L2>
  12:	000005b7          	lui	a1,0x0
  16:	00000537          	lui	a0,0x0
  1a:	11d00613          	li	a2,285
  1e:	00058593          	mv	a1,a1
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL0+0x1a>

0000002e <.L2>:
  2e:	0ff47513          	andi	a0,s0,255
  32:	40b2                	lw	ra,12(sp)
  34:	4422                	lw	s0,8(sp)

00000036 <.LVL2>:
  36:	0141                	addi	sp,sp,16
  38:	8082                	ret

Disassembly of section .text.blmac_wt_2_crypt_clk_ratio_setf:

00000000 <blmac_wt_2_crypt_clk_ratio_setf>:
   0:	44b00737          	lui	a4,0x44b00
   4:	0f072783          	lw	a5,240(a4) # 44b000f0 <.LASF376+0x44afca76>
   8:	9bf1                	andi	a5,a5,-4
   a:	8d5d                	or	a0,a0,a5

0000000c <.LVL4>:
   c:	0ea72823          	sw	a0,240(a4)
  10:	8082                	ret

Disassembly of section .text.blmac_rx_flow_cntrl_en_setf.constprop.9:

00000000 <blmac_rx_flow_cntrl_en_setf.constprop.9>:
   0:	44b006b7          	lui	a3,0x44b00
   4:	4afc                	lw	a5,84(a3)
   6:	7741                	lui	a4,0xffff0
   8:	177d                	addi	a4,a4,-1
   a:	8ff9                	and	a5,a5,a4
   c:	6741                	lui	a4,0x10
   e:	8fd9                	or	a5,a5,a4
  10:	cafc                	sw	a5,84(a3)
  12:	8082                	ret

Disassembly of section .text.blmac_key_sto_ram_reset_setf.constprop.12:

00000000 <blmac_key_sto_ram_reset_setf.constprop.12>:
   0:	44b006b7          	lui	a3,0x44b00
   4:	46fc                	lw	a5,76(a3)
   6:	7779                	lui	a4,0xffffe
   8:	177d                	addi	a4,a4,-1
   a:	8ff9                	and	a5,a5,a4
   c:	6709                	lui	a4,0x2
   e:	8fd9                	or	a5,a5,a4
  10:	c6fc                	sw	a5,76(a3)
  12:	8082                	ret

Disassembly of section .text.hal_machw_idle_req:

00000000 <hal_machw_idle_req>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	5f98                	lw	a4,56(a5)

00000006 <.LBE146>:
   6:	8b3d                	andi	a4,a4,15
   8:	ef19                	bnez	a4,26 <.L11>
   a:	000005b7          	lui	a1,0x0
   e:	00000537          	lui	a0,0x0
  12:	0e100613          	li	a2,225
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	00000317          	auipc	t1,0x0
  22:	00030067          	jr	t1 # 1e <.LBE146+0x18>

00000026 <.L11>:
  26:	30047073          	csrci	mstatus,8

0000002a <.LBB150>:
  2a:	1207a703          	lw	a4,288(a5) # 44b00120 <.LASF376+0x44afcaa6>

0000002e <.LBE150>:
  2e:	66b1                	lui	a3,0xc
  30:	35068693          	addi	a3,a3,848 # c350 <.LASF376+0x8cd6>
  34:	9736                	add	a4,a4,a3

00000036 <.LBB153>:
  36:	12e7ae23          	sw	a4,316(a5)

0000003a <.LBB155>:
  3a:	02000693          	li	a3,32
  3e:	44b08737          	lui	a4,0x44b08

00000042 <.LVL12>:
  42:	08d72423          	sw	a3,136(a4) # 44b08088 <.LASF376+0x44b04a0e>

00000046 <.LBB157>:
  46:	08c72683          	lw	a3,140(a4)

0000004a <.LBE157>:
  4a:	0206e693          	ori	a3,a3,32

0000004e <.LBB159>:
  4e:	08d72623          	sw	a3,140(a4)

00000052 <.LBB161>:
  52:	0207ac23          	sw	zero,56(a5)

00000056 <.LBE161>:
  56:	000007b7          	lui	a5,0x0
  5a:	00078793          	mv	a5,a5
  5e:	43d8                	lw	a4,4(a5)
  60:	00476713          	ori	a4,a4,4
  64:	c3d8                	sw	a4,4(a5)

00000066 <.LBB163>:
  66:	30046073          	csrsi	mstatus,8

0000006a <.LBE163>:
  6a:	8082                	ret

Disassembly of section .text.hal_machw_stop:

00000000 <hal_machw_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB170>:
   4:	44b087b7          	lui	a5,0x44b08
   8:	4705                	li	a4,1
   a:	cbb8                	sw	a4,80(a5)

0000000c <.L13>:
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.L13>

00000014 <.LVL18>:
  14:	fd65                	bnez	a0,c <.L13>
  16:	40b2                	lw	ra,12(sp)
  18:	0141                	addi	sp,sp,16
  1a:	8082                	ret

Disassembly of section .text.hal_machw_init:

00000000 <hal_machw_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB258>:
   a:	44b087b7          	lui	a5,0x44b08
   e:	4705                	li	a4,1
  10:	cbb8                	sw	a4,80(a5)

00000012 <.L17>:
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.L17>

0000001a <.LVL20>:
  1a:	fd65                	bnez	a0,12 <.L17>
  1c:	0024f7b7          	lui	a5,0x24f
  20:	44b00937          	lui	s2,0x44b00
  24:	63778793          	addi	a5,a5,1591 # 24f637 <.LASF376+0x24bfbd>
  28:	40f92223          	sw	a5,1028(s2) # 44b00404 <.LASF376+0x44afcd8a>
  2c:	4785                	li	a5,1
  2e:	40f92023          	sw	a5,1024(s2)
  32:	40092023          	sw	zero,1024(s2)
  36:	06900793          	li	a5,105
  3a:	40f92023          	sw	a5,1024(s2)

0000003e <.LBB259>:
  3e:	40092783          	lw	a5,1024(s2)

00000042 <.LBE259>:
  42:	44920737          	lui	a4,0x44920

00000046 <.LBB262>:
  46:	fdf7f793          	andi	a5,a5,-33
  4a:	40f92023          	sw	a5,1024(s2)

0000004e <.LBE262>:
  4e:	501007b7          	lui	a5,0x50100
  52:	07fd                	addi	a5,a5,31
  54:	c35c                	sw	a5,4(a4)
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LBE262+0x8>

0000005e <.LBB263>:
  5e:	0e492403          	lw	s0,228(s2)

00000062 <.LBB268>:
  62:	0e492783          	lw	a5,228(s2)

00000066 <.LBB272>:
  66:	00fc0737          	lui	a4,0xfc0
  6a:	0ff47413          	andi	s0,s0,255

0000006e <.LBB277>:
  6e:	f007f793          	andi	a5,a5,-256
  72:	0287e793          	ori	a5,a5,40
  76:	0ef92223          	sw	a5,228(s2)

0000007a <.LBB278>:
  7a:	0e492783          	lw	a5,228(s2)

0000007e <.LBB282>:
  7e:	01000937          	lui	s2,0x1000
  82:	f0090913          	addi	s2,s2,-256 # ffff00 <.LASF376+0xffc886>

00000086 <.LBB283>:
  86:	83a1                	srli	a5,a5,0x8

00000088 <.LBE283>:
  88:	3ff7f793          	andi	a5,a5,1023
  8c:	02a787b3          	mul	a5,a5,a0

00000090 <.LBE263>:
  90:	84aa                	mv	s1,a0

00000092 <.LBB284>:
  92:	0287d7b3          	divu	a5,a5,s0
  96:	07a2                	slli	a5,a5,0x8

00000098 <.LBB288>:
  98:	0127f933          	and	s2,a5,s2
  9c:	8ff9                	and	a5,a5,a4
  9e:	c385                	beqz	a5,be <.L18>
  a0:	6609                	lui	a2,0x2
  a2:	000005b7          	lui	a1,0x0
  a6:	00000537          	lui	a0,0x0

000000aa <.LVL25>:
  aa:	d5960613          	addi	a2,a2,-679 # 1d59 <.LASF306+0x5>
  ae:	00058593          	mv	a1,a1
  b2:	00050513          	mv	a0,a0
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LVL25+0xc>

000000be <.L18>:
  be:	44b00737          	lui	a4,0x44b00
  c2:	0e472783          	lw	a5,228(a4) # 44b000e4 <.LASF376+0x44afca6a>
  c6:	fffc06b7          	lui	a3,0xfffc0
  ca:	0ff68693          	addi	a3,a3,255 # fffc00ff <.LASF376+0xfffbca85>
  ce:	8ff5                	and	a5,a5,a3
  d0:	0127e7b3          	or	a5,a5,s2
  d4:	0ef72223          	sw	a5,228(a4)

000000d8 <.LBB289>:
  d8:	0e472783          	lw	a5,228(a4)
  dc:	f00406b7          	lui	a3,0xf0040
  e0:	16fd                	addi	a3,a3,-1
  e2:	8ff5                	and	a5,a5,a3
  e4:	022006b7          	lui	a3,0x2200
  e8:	8fd5                	or	a5,a5,a3
  ea:	0ef72223          	sw	a5,228(a4)

000000ee <.LBB291>:
  ee:	0e872783          	lw	a5,232(a4)

000000f2 <.LBB294>:
  f2:	01000637          	lui	a2,0x1000
  f6:	0e872683          	lw	a3,232(a4)

000000fa <.LBB298>:
  fa:	83a1                	srli	a5,a5,0x8

000000fc <.LBE298>:
  fc:	07c2                	slli	a5,a5,0x10

000000fe <.LVL31>:
  fe:	83c1                	srli	a5,a5,0x10
 100:	029787b3          	mul	a5,a5,s1

00000104 <.LBB299>:
 104:	f0060613          	addi	a2,a2,-256 # ffff00 <.LASF376+0xffc886>

00000108 <.LBB300>:
 108:	04000937          	lui	s2,0x4000
 10c:	c0090913          	addi	s2,s2,-1024 # 3fffc00 <.LASF376+0x3ffc586>

00000110 <.LBE300>:
 110:	0287d7b3          	divu	a5,a5,s0

00000114 <.LBB304>:
 114:	07a2                	slli	a5,a5,0x8
 116:	8ff1                	and	a5,a5,a2
 118:	ff000637          	lui	a2,0xff000
 11c:	0ff60613          	addi	a2,a2,255 # ff0000ff <.LASF376+0xfeffca85>
 120:	8ef1                	and	a3,a3,a2
 122:	8fd5                	or	a5,a5,a3
 124:	0ef72423          	sw	a5,232(a4)

00000128 <.LBB305>:
 128:	0ec72783          	lw	a5,236(a4)
 12c:	c01006b7          	lui	a3,0xc0100
 130:	16fd                	addi	a3,a3,-1
 132:	8ff5                	and	a5,a5,a3
 134:	027006b7          	lui	a3,0x2700
 138:	8fd5                	or	a5,a5,a3
 13a:	0ef72623          	sw	a5,236(a4)

0000013e <.LBB307>:
 13e:	0ec72783          	lw	a5,236(a4)

00000142 <.LBB310>:
 142:	03f00737          	lui	a4,0x3f00

00000146 <.LBB311>:
 146:	83a9                	srli	a5,a5,0xa

00000148 <.LBE311>:
 148:	3ff7f793          	andi	a5,a5,1023
 14c:	029787b3          	mul	a5,a5,s1
 150:	0287d7b3          	divu	a5,a5,s0
 154:	07aa                	slli	a5,a5,0xa

00000156 <.LBB312>:
 156:	0127f933          	and	s2,a5,s2
 15a:	8ff9                	and	a5,a5,a4
 15c:	c385                	beqz	a5,17c <.L19>
 15e:	6609                	lui	a2,0x2
 160:	000005b7          	lui	a1,0x0
 164:	00000537          	lui	a0,0x0
 168:	ea260613          	addi	a2,a2,-350 # 1ea2 <.LASF860+0x1>
 16c:	00058593          	mv	a1,a1
 170:	00050513          	mv	a0,a0
 174:	00000097          	auipc	ra,0x0
 178:	000080e7          	jalr	ra # 174 <.LBB312+0x1e>

0000017c <.L19>:
 17c:	44b00737          	lui	a4,0x44b00
 180:	0ec72783          	lw	a5,236(a4) # 44b000ec <.LASF376+0x44afca72>
 184:	fff006b7          	lui	a3,0xfff00
 188:	3ff68693          	addi	a3,a3,1023 # fff003ff <.LASF376+0xffefcd85>
 18c:	8ff5                	and	a5,a5,a3
 18e:	0127e7b3          	or	a5,a5,s2
 192:	0ef72623          	sw	a5,236(a4)

00000196 <.LBB313>:
 196:	0ec72783          	lw	a5,236(a4)

0000019a <.LBE313>:
 19a:	450d                	li	a0,3

0000019c <.LBB316>:
 19c:	c007f793          	andi	a5,a5,-1024
 1a0:	0b47e793          	ori	a5,a5,180
 1a4:	0ef72623          	sw	a5,236(a4)

000001a8 <.LBE316>:
 1a8:	47f5                	li	a5,29
 1aa:	0097f863          	bgeu	a5,s1,1ba <.L48>
 1ae:	03b00793          	li	a5,59
 1b2:	4509                	li	a0,2
 1b4:	0097f363          	bgeu	a5,s1,1ba <.L48>
 1b8:	4505                	li	a0,1

000001ba <.L48>:
 1ba:	00000097          	auipc	ra,0x0
 1be:	000080e7          	jalr	ra # 1ba <.L48>

000001c2 <.LBB317>:
 1c2:	44b006b7          	lui	a3,0x44b00
 1c6:	0f46a703          	lw	a4,244(a3) # 44b000f4 <.LASF376+0x44afca7a>

000001ca <.LBB320>:
 1ca:	67c1                	lui	a5,0x10
 1cc:	fff78513          	addi	a0,a5,-1 # ffff <.LASF376+0xc985>

000001d0 <.LBB324>:
 1d0:	8321                	srli	a4,a4,0x8

000001d2 <.LBE324>:
 1d2:	8f69                	and	a4,a4,a0

000001d4 <.LVL42>:
 1d4:	02970733          	mul	a4,a4,s1

000001d8 <.LBB325>:
 1d8:	0f46a803          	lw	a6,244(a3)
 1dc:	010007b7          	lui	a5,0x1000
 1e0:	ff000637          	lui	a2,0xff000
 1e4:	f0078593          	addi	a1,a5,-256 # ffff00 <.LASF376+0xffc886>
 1e8:	0ff60613          	addi	a2,a2,255 # ff0000ff <.LASF376+0xfeffca85>
 1ec:	00c877b3          	and	a5,a6,a2

000001f0 <.LBE325>:
 1f0:	02875733          	divu	a4,a4,s0

000001f4 <.LBB326>:
 1f4:	0722                	slli	a4,a4,0x8
 1f6:	8f6d                	and	a4,a4,a1
 1f8:	8f5d                	or	a4,a4,a5
 1fa:	0ee6aa23          	sw	a4,244(a3)

000001fe <.LBB327>:
 1fe:	0f86a783          	lw	a5,248(a3)

00000202 <.LBB330>:
 202:	0f86a703          	lw	a4,248(a3)

00000206 <.LBB334>:
 206:	83a1                	srli	a5,a5,0x8

00000208 <.LBE334>:
 208:	8fe9                	and	a5,a5,a0

0000020a <.LVL45>:
 20a:	029787b3          	mul	a5,a5,s1

0000020e <.LBB335>:
 20e:	8e79                	and	a2,a2,a4

00000210 <.LBE335>:
 210:	0287d7b3          	divu	a5,a5,s0

00000214 <.LBB336>:
 214:	07a2                	slli	a5,a5,0x8
 216:	8fed                	and	a5,a5,a1
 218:	8fd1                	or	a5,a5,a2
 21a:	0ef6ac23          	sw	a5,248(a3)

0000021e <.LBB337>:
 21e:	1046a903          	lw	s2,260(a3)

00000222 <.LBB340>:
 222:	c00007b7          	lui	a5,0xc0000

00000226 <.LBB343>:
 226:	01495913          	srli	s2,s2,0x14

0000022a <.LBE343>:
 22a:	3ff97913          	andi	s2,s2,1023
 22e:	02990933          	mul	s2,s2,s1
 232:	02895933          	divu	s2,s2,s0
 236:	0952                	slli	s2,s2,0x14

00000238 <.LBB344>:
 238:	00f977b3          	and	a5,s2,a5
 23c:	c385                	beqz	a5,25c <.L23>
 23e:	6609                	lui	a2,0x2
 240:	000005b7          	lui	a1,0x0
 244:	00000537          	lui	a0,0x0
 248:	28a60613          	addi	a2,a2,650 # 228a <.LASF959+0x5>
 24c:	00058593          	mv	a1,a1
 250:	00050513          	mv	a0,a0
 254:	00000097          	auipc	ra,0x0
 258:	000080e7          	jalr	ra # 254 <.LBB344+0x1c>

0000025c <.L23>:
 25c:	44b00737          	lui	a4,0x44b00
 260:	10472783          	lw	a5,260(a4) # 44b00104 <.LASF376+0x44afca8a>
 264:	c01006b7          	lui	a3,0xc0100
 268:	16fd                	addi	a3,a3,-1
 26a:	8ff5                	and	a5,a5,a3
 26c:	0127e933          	or	s2,a5,s2
 270:	11272223          	sw	s2,260(a4)

00000274 <.LBB345>:
 274:	10472783          	lw	a5,260(a4)

00000278 <.LBB348>:
 278:	04000937          	lui	s2,0x4000
 27c:	c0090913          	addi	s2,s2,-1024 # 3fffc00 <.LASF376+0x3ffc586>

00000280 <.LBB352>:
 280:	83a9                	srli	a5,a5,0xa

00000282 <.LBE352>:
 282:	3ff7f793          	andi	a5,a5,1023
 286:	029787b3          	mul	a5,a5,s1

0000028a <.LBB353>:
 28a:	03f00737          	lui	a4,0x3f00

0000028e <.LBE353>:
 28e:	0287d7b3          	divu	a5,a5,s0
 292:	07aa                	slli	a5,a5,0xa

00000294 <.LBB354>:
 294:	0127f933          	and	s2,a5,s2
 298:	8ff9                	and	a5,a5,a4
 29a:	c385                	beqz	a5,2ba <.L24>
 29c:	6609                	lui	a2,0x2
 29e:	000005b7          	lui	a1,0x0
 2a2:	00000537          	lui	a0,0x0
 2a6:	2a460613          	addi	a2,a2,676 # 22a4 <.LASF585>
 2aa:	00058593          	mv	a1,a1
 2ae:	00050513          	mv	a0,a0
 2b2:	00000097          	auipc	ra,0x0
 2b6:	000080e7          	jalr	ra # 2b2 <.LBB354+0x1e>

000002ba <.L24>:
 2ba:	44b00737          	lui	a4,0x44b00
 2be:	10472783          	lw	a5,260(a4) # 44b00104 <.LASF376+0x44afca8a>
 2c2:	fff006b7          	lui	a3,0xfff00
 2c6:	3ff68693          	addi	a3,a3,1023 # fff003ff <.LASF376+0xffefcd85>
 2ca:	8ff5                	and	a5,a5,a3
 2cc:	0127e7b3          	or	a5,a5,s2
 2d0:	10f72223          	sw	a5,260(a4)

000002d4 <.LBB355>:
 2d4:	10472783          	lw	a5,260(a4)

000002d8 <.LBE355>:
 2d8:	3ff7f793          	andi	a5,a5,1023
 2dc:	029784b3          	mul	s1,a5,s1
 2e0:	0284d433          	divu	s0,s1,s0

000002e4 <.LBB357>:
 2e4:	64c1                	lui	s1,0x10
 2e6:	c0048493          	addi	s1,s1,-1024 # fc00 <.LASF376+0xc586>
 2ea:	01041913          	slli	s2,s0,0x10
 2ee:	8c65                	and	s0,s0,s1

000002f0 <.LVL54>:
 2f0:	01095913          	srli	s2,s2,0x10
 2f4:	c005                	beqz	s0,314 <.L25>
 2f6:	6609                	lui	a2,0x2
 2f8:	000005b7          	lui	a1,0x0
 2fc:	00000537          	lui	a0,0x0
 300:	2be60613          	addi	a2,a2,702 # 22be <.LASF564+0x9>
 304:	00058593          	mv	a1,a1
 308:	00050513          	mv	a0,a0
 30c:	00000097          	auipc	ra,0x0
 310:	000080e7          	jalr	ra # 30c <.LVL54+0x1c>

00000314 <.L25>:
 314:	44b007b7          	lui	a5,0x44b00
 318:	1047a703          	lw	a4,260(a5) # 44b00104 <.LASF376+0x44afca8a>

0000031c <.LBB364>:
 31c:	44b086b7          	lui	a3,0x44b08

00000320 <.LBB360>:
 320:	c0077713          	andi	a4,a4,-1024
 324:	01276733          	or	a4,a4,s2
 328:	10e7a223          	sw	a4,260(a5)

0000032c <.LBB368>:
 32c:	8373f737          	lui	a4,0x8373f
 330:	14c70713          	addi	a4,a4,332 # 8373f14c <.LASF376+0x8373bad2>
 334:	daf8                	sw	a4,116(a3)

00000336 <.LBB369>:
 336:	47f8                	lw	a4,76(a5)
 338:	76fd                	lui	a3,0xfffff
 33a:	7ff68693          	addi	a3,a3,2047 # fffff7ff <.LASF376+0xffffc185>
 33e:	8f75                	and	a4,a4,a3
 340:	c7f8                	sw	a4,76(a5)

00000342 <.LBB371>:
 342:	0d87a783          	lw	a5,216(a5)

00000346 <.LBE371>:
 346:	4741                	li	a4,16

00000348 <.LBB374>:
 348:	83e1                	srli	a5,a5,0x18

0000034a <.LBE374>:
 34a:	02f76063          	bltu	a4,a5,36a <.L26>
 34e:	000005b7          	lui	a1,0x0
 352:	00000537          	lui	a0,0x0
 356:	12400613          	li	a2,292
 35a:	00058593          	mv	a1,a1
 35e:	00050513          	mv	a0,a0
 362:	00000097          	auipc	ra,0x0
 366:	000080e7          	jalr	ra # 362 <.LBE374+0x18>

0000036a <.L26>:
 36a:	00000537          	lui	a0,0x0
 36e:	46a1                	li	a3,8
 370:	4645                	li	a2,17
 372:	4589                	li	a1,2
 374:	00050513          	mv	a0,a0
 378:	00000097          	auipc	ra,0x0
 37c:	000080e7          	jalr	ra # 378 <.L26+0xe>

00000380 <.LBB375>:
 380:	000217b7          	lui	a5,0x21
 384:	44b00437          	lui	s0,0x44b00
 388:	10878793          	addi	a5,a5,264 # 21108 <.LASF376+0x1da8e>
 38c:	0cf42c23          	sw	a5,216(s0) # 44b000d8 <.LASF376+0x44afca5e>

00000390 <.LBB377>:
 390:	800a07b7          	lui	a5,0x800a0
 394:	44b08737          	lui	a4,0x44b08
 398:	7c078793          	addi	a5,a5,1984 # 800a07c0 <.LASF376+0x8009d146>
 39c:	08f72023          	sw	a5,128(a4) # 44b08080 <.LASF376+0x44b04a06>

000003a0 <.LBB379>:
 3a0:	447c                	lw	a5,76(s0)

000003a2 <.LBE379>:
 3a2:	04000737          	lui	a4,0x4000
 3a6:	78070713          	addi	a4,a4,1920 # 4000780 <.LASF376+0x3ffd106>
 3aa:	8fd9                	or	a5,a5,a4

000003ac <.LBB381>:
 3ac:	c47c                	sw	a5,76(s0)

000003ae <.LBE381>:
 3ae:	00000097          	auipc	ra,0x0
 3b2:	000080e7          	jalr	ra # 3ae <.LBE381>

000003b6 <.LBB383>:
 3b6:	800007b7          	lui	a5,0x80000
 3ba:	fde7c793          	xori	a5,a5,-34
 3be:	d03c                	sw	a5,96(s0)

000003c0 <.LBB385>:
 3c0:	000307b7          	lui	a5,0x30
 3c4:	10a78793          	addi	a5,a5,266 # 3010a <.LASF376+0x2ca90>
 3c8:	10f42a23          	sw	a5,276(s0)

000003cc <.LBB387>:
 3cc:	ff9007b7          	lui	a5,0xff900
 3d0:	06478793          	addi	a5,a5,100 # ff900064 <.LASF376+0xff8fc9ea>
 3d4:	d07c                	sw	a5,100(s0)

000003d6 <.LBB389>:
 3d6:	6905                	lui	s2,0x1
 3d8:	15242823          	sw	s2,336(s0)

000003dc <.LBB391>:
 3dc:	6489                	lui	s1,0x2

000003de <.LBB397>:
 3de:	22042223          	sw	zero,548(s0)

000003e2 <.LBB398>:
 3e2:	02048793          	addi	a5,s1,32 # 2020 <.LASF489+0x4>
 3e6:	0af42023          	sw	a5,160(s0)

000003ea <.LBB399>:
 3ea:	447c                	lw	a5,76(s0)
 3ec:	777d                	lui	a4,0xfffff
 3ee:	177d                	addi	a4,a4,-1
 3f0:	8ff9                	and	a5,a5,a4
 3f2:	0127e7b3          	or	a5,a5,s2
 3f6:	c47c                	sw	a5,76(s0)

000003f8 <.LBB401>:
 3f8:	c2548493          	addi	s1,s1,-987

000003fc <.LBE401>:
 3fc:	00000097          	auipc	ra,0x0
 400:	000080e7          	jalr	ra # 3fc <.LBE401>

00000404 <.LBB404>:
 404:	50942823          	sw	s1,1296(s0)

00000408 <.LBB405>:
 408:	31042783          	lw	a5,784(s0)
 40c:	0807e793          	ori	a5,a5,128
 410:	30f42823          	sw	a5,784(s0)

00000414 <.LBE405>:
 414:	00000097          	auipc	ra,0x0
 418:	000080e7          	jalr	ra # 414 <.LBE405>

0000041c <.LBB407>:
 41c:	0505                	addi	a0,a0,1

0000041e <.LBB410>:
 41e:	01a51413          	slli	s0,a0,0x1a
 422:	e00007b7          	lui	a5,0xe0000
 426:	8fe1                	and	a5,a5,s0
 428:	cf99                	beqz	a5,446 <.L27>
 42a:	000005b7          	lui	a1,0x0
 42e:	00000537          	lui	a0,0x0
 432:	53990613          	addi	a2,s2,1337 # 1539 <.LASF35+0x1>
 436:	00058593          	mv	a1,a1
 43a:	00050513          	mv	a0,a0
 43e:	00000097          	auipc	ra,0x0
 442:	000080e7          	jalr	ra # 43e <.LBB410+0x20>

00000446 <.L27>:
 446:	44b00737          	lui	a4,0x44b00
 44a:	09c72503          	lw	a0,156(a4) # 44b0009c <.LASF376+0x44afca22>
 44e:	e40007b7          	lui	a5,0xe4000
 452:	17fd                	addi	a5,a5,-1
 454:	8d7d                	and	a0,a0,a5
 456:	8d41                	or	a0,a0,s0
 458:	08a72e23          	sw	a0,156(a4)

0000045c <.LBB411>:
 45c:	477c                	lw	a5,76(a4)
 45e:	fe0006b7          	lui	a3,0xfe000
 462:	16fd                	addi	a3,a3,-1
 464:	8ff5                	and	a5,a5,a3
 466:	020006b7          	lui	a3,0x2000
 46a:	8fd5                	or	a5,a5,a3
 46c:	c77c                	sw	a5,76(a4)

0000046e <.LBE411>:
 46e:	40b2                	lw	ra,12(sp)
 470:	4422                	lw	s0,8(sp)
 472:	4492                	lw	s1,4(sp)
 474:	4902                	lw	s2,0(sp)
 476:	0141                	addi	sp,sp,16
 478:	8082                	ret

Disassembly of section .text.hal_machw_disable_int:

00000000 <hal_machw_disable_int>:
   0:	44b087b7          	lui	a5,0x44b08
   4:	5bf4                	lw	a3,116(a5)
   6:	80000737          	lui	a4,0x80000
   a:	fff74713          	not	a4,a4
   e:	8ef9                	and	a3,a3,a4
  10:	dbf4                	sw	a3,116(a5)

00000012 <.LBB419>:
  12:	0807a683          	lw	a3,128(a5) # 44b08080 <.LASF376+0x44b04a06>
  16:	8f75                	and	a4,a4,a3
  18:	08e7a023          	sw	a4,128(a5)

0000001c <.LBE419>:
  1c:	8082                	ret

Disassembly of section .text.hal_machw_reset:

00000000 <hal_machw_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB449>:
   6:	44b007b7          	lui	a5,0x44b00
   a:	5f9c                	lw	a5,56(a5)

0000000c <.LBE449>:
   c:	8bbd                	andi	a5,a5,15
   e:	cb89                	beqz	a5,20 <.L51>

00000010 <.LBB450>:
  10:	00000537          	lui	a0,0x0
  14:	00050513          	mv	a0,a0
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LBB450+0x8>

00000020 <.L51>:
  20:	44b007b7          	lui	a5,0x44b00
  24:	47f8                	lw	a4,76(a5)

00000026 <.LBB454>:
  26:	44b00437          	lui	s0,0x44b00

0000002a <.LBB457>:
  2a:	f7f77713          	andi	a4,a4,-129
  2e:	c7f8                	sw	a4,76(a5)

00000030 <.LBB458>:
  30:	0207ac23          	sw	zero,56(a5) # 44b00038 <.LASF376+0x44afc9be>

00000034 <.LBB460>:
  34:	07c00713          	li	a4,124
  38:	cbf8                	sw	a4,84(a5)

0000003a <.L52>:
  3a:	5c1c                	lw	a5,56(s0)

0000003c <.LBE462>:
  3c:	8bbd                	andi	a5,a5,15
  3e:	fff5                	bnez	a5,3a <.L52>
  40:	000007b7          	lui	a5,0x0
  44:	00078793          	mv	a5,a5
  48:	43d8                	lw	a4,4(a5)
  4a:	9b6d                	andi	a4,a4,-5
  4c:	c3d8                	sw	a4,4(a5)
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LBE462+0x12>

00000056 <.LBB463>:
  56:	44b087b7          	lui	a5,0x44b08
  5a:	08c7a703          	lw	a4,140(a5) # 44b0808c <.LASF376+0x44b04a12>

0000005e <.LBB465>:
  5e:	80000637          	lui	a2,0x80000
  62:	fff64593          	not	a1,a2

00000066 <.LBE465>:
  66:	fc077713          	andi	a4,a4,-64

0000006a <.LBB468>:
  6a:	08e7a623          	sw	a4,140(a5)

0000006e <.LBB470>:
  6e:	577d                	li	a4,-1
  70:	dff8                	sw	a4,124(a5)

00000072 <.LBB472>:
  72:	037ff737          	lui	a4,0x37ff
  76:	18770713          	addi	a4,a4,391 # 37ff187 <.LASF376+0x37fbb0d>
  7a:	dbb8                	sw	a4,112(a5)

0000007c <.LBB474>:
  7c:	5bf4                	lw	a3,116(a5)
  7e:	8eed                	and	a3,a3,a1
  80:	8ed1                	or	a3,a3,a2
  82:	dbf4                	sw	a3,116(a5)

00000084 <.LBB475>:
  84:	0807a703          	lw	a4,128(a5)
  88:	8f6d                	and	a4,a4,a1
  8a:	8f51                	or	a4,a4,a2
  8c:	08e7a023          	sw	a4,128(a5)

00000090 <.LBB477>:
  90:	447c                	lw	a5,76(s0)
  92:	0807e793          	ori	a5,a5,128
  96:	c47c                	sw	a5,76(s0)

00000098 <.LBE477>:
  98:	40b2                	lw	ra,12(sp)
  9a:	4422                	lw	s0,8(sp)
  9c:	0141                	addi	sp,sp,16
  9e:	8082                	ret

Disassembly of section .text.hal_machw_search_addr:

00000000 <hal_machw_search_addr>:
   0:	00154703          	lbu	a4,1(a0) # 1 <hal_machw_search_addr+0x1>
   4:	00054783          	lbu	a5,0(a0)
   8:	0722                	slli	a4,a4,0x8
   a:	8f5d                	or	a4,a4,a5
   c:	00254783          	lbu	a5,2(a0)
  10:	07c2                	slli	a5,a5,0x10
  12:	8f5d                	or	a4,a4,a5
  14:	00354783          	lbu	a5,3(a0)
  18:	07e2                	slli	a5,a5,0x18
  1a:	8fd9                	or	a5,a5,a4

0000001c <.LBB479>:
  1c:	44b00737          	lui	a4,0x44b00
  20:	0af72e23          	sw	a5,188(a4) # 44b000bc <.LASF376+0x44afca42>

00000024 <.LBE479>:
  24:	00554783          	lbu	a5,5(a0)
  28:	00454683          	lbu	a3,4(a0)
  2c:	07a2                	slli	a5,a5,0x8
  2e:	8fd5                	or	a5,a5,a3

00000030 <.LBB481>:
  30:	0cf72023          	sw	a5,192(a4)

00000034 <.LBB483>:
  34:	200007b7          	lui	a5,0x20000
  38:	0cf72223          	sw	a5,196(a4)

0000003c <.L59>:
  3c:	0c472783          	lw	a5,196(a4)

00000040 <.LBE485>:
  40:	00279693          	slli	a3,a5,0x2
  44:	fe06cce3          	bltz	a3,3c <.L59>
  48:	00379713          	slli	a4,a5,0x3
  4c:	0ff00513          	li	a0,255

00000050 <.LVL104>:
  50:	00074763          	bltz	a4,5e <.L60>
  54:	0107d513          	srli	a0,a5,0x10
  58:	1561                	addi	a0,a0,-8
  5a:	0ff57513          	andi	a0,a0,255

0000005e <.L60>:
  5e:	8082                	ret

Disassembly of section .text.hal_machw_monitor_mode:

00000000 <hal_machw_monitor_mode>:
   0:	44b087b7          	lui	a5,0x44b08
   4:	5bf8                	lw	a4,116(a5)

00000006 <.LBB506>:
   6:	000006b7          	lui	a3,0x0
   a:	00068693          	mv	a3,a3

0000000e <.LBB513>:
   e:	9b79                	andi	a4,a4,-2
  10:	dbf8                	sw	a4,116(a5)

00000012 <.LBB514>:
  12:	5bf8                	lw	a4,116(a5)
  14:	9b75                	andi	a4,a4,-3
  16:	dbf8                	sw	a4,116(a5)

00000018 <.LBB516>:
  18:	44b007b7          	lui	a5,0x44b00
  1c:	47f8                	lw	a4,76(a5)

0000001e <.LBE516>:
  1e:	70076713          	ori	a4,a4,1792

00000022 <.LBB518>:
  22:	c7f8                	sw	a4,76(a5)

00000024 <.LBB520>:
  24:	80000737          	lui	a4,0x80000
  28:	fde74713          	xori	a4,a4,-34
  2c:	c298                	sw	a4,0(a3)

0000002e <.LBB508>:
  2e:	42d4                	lw	a3,4(a3)
  30:	8f55                	or	a4,a4,a3

00000032 <.LBB510>:
  32:	d3b8                	sw	a4,96(a5)

00000034 <.LBB521>:
  34:	47f8                	lw	a4,76(a5)
  36:	7691                	lui	a3,0xfffe4
  38:	16fd                	addi	a3,a3,-1
  3a:	8f75                	and	a4,a4,a3
  3c:	66b1                	lui	a3,0xc
  3e:	8f55                	or	a4,a4,a3
  40:	c7f8                	sw	a4,76(a5)

00000042 <.LBE521>:
  42:	00000317          	auipc	t1,0x0
  46:	00030067          	jr	t1 # 42 <.LBE521>

Disassembly of section .text.hal_machw_sleep_check:

00000000 <hal_machw_sleep_check>:
   0:	1141                	addi	sp,sp,-16

00000002 <.LBB547>:
   2:	44b087b7          	lui	a5,0x44b08

00000006 <.LBE547>:
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	44b00637          	lui	a2,0x44b00

0000000e <.LBB548>:
   e:	08c7a503          	lw	a0,140(a5) # 44b0808c <.LASF376+0x44b04a12>

00000012 <.LBB549>:
  12:	4805                	li	a6,1

00000014 <.LBE550>:
  14:	4781                	li	a5,0
  16:	12860893          	addi	a7,a2,296 # 44b00128 <.LASF376+0x44afcaae>

0000001a <.LBB551>:
  1a:	83000313          	li	t1,-2000

0000001e <.LBE551>:
  1e:	45a5                	li	a1,9

00000020 <.L67>:
  20:	00f81733          	sll	a4,a6,a5
  24:	8f69                	and	a4,a4,a0
  26:	cb39                	beqz	a4,7c <.L65>

00000028 <.LBB559>:
  28:	00279693          	slli	a3,a5,0x2
  2c:	96c6                	add	a3,a3,a7
  2e:	0006ae83          	lw	t4,0(a3) # c000 <.LASF376+0x8986>

00000032 <.LBB555>:
  32:	12062703          	lw	a4,288(a2)

00000036 <.LBB558>:
  36:	40e30733          	sub	a4,t1,a4
  3a:	9776                	add	a4,a4,t4

0000003c <.LBE558>:
  3c:	04075063          	bgez	a4,7c <.L65>

00000040 <.LBB562>:
  40:	4298                	lw	a4,0(a3)

00000042 <.LBB564>:
  42:	12062683          	lw	a3,288(a2)

00000046 <.LBB568>:
  46:	6785                	lui	a5,0x1
  48:	38878793          	addi	a5,a5,904 # 1388 <.LASF277+0x4>
  4c:	8f95                	sub	a5,a5,a3
  4e:	97ba                	add	a5,a5,a4

00000050 <.LBE564>:
  50:	4401                	li	s0,0
  52:	0207d063          	bgez	a5,72 <.L66>
  56:	000005b7          	lui	a1,0x0
  5a:	00000537          	lui	a0,0x0

0000005e <.LVL123>:
  5e:	20800613          	li	a2,520
  62:	00058593          	mv	a1,a1
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL123+0xc>

00000072 <.L66>:
  72:	8522                	mv	a0,s0
  74:	40b2                	lw	ra,12(sp)
  76:	4422                	lw	s0,8(sp)
  78:	0141                	addi	sp,sp,16
  7a:	8082                	ret

0000007c <.L65>:
  7c:	0785                	addi	a5,a5,1

0000007e <.LVL126>:
  7e:	fab791e3          	bne	a5,a1,20 <.L67>

00000082 <.LBE576>:
  82:	4405                	li	s0,1

00000084 <.LBB577>:
  84:	b7fd                	j	72 <.L66>

Disassembly of section .text.hal_machw_gen_handler:

00000000 <hal_machw_gen_handler>:
   0:	1141                	addi	sp,sp,-16

00000002 <.LBB602>:
   2:	44b087b7          	lui	a5,0x44b08

00000006 <.LBE602>:
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	c226                	sw	s1,4(sp)

0000000c <.LBB603>:
   c:	57f8                	lw	a4,108(a5)

0000000e <.LBB604>:
   e:	5be0                	lw	s0,116(a5)

00000010 <.LBE604>:
  10:	8c79                	and	s0,s0,a4

00000012 <.LBB606>:
  12:	dba0                	sw	s0,112(a5)

00000014 <.LBE606>:
  14:	000407b7          	lui	a5,0x40
  18:	0785                	addi	a5,a5,1
  1a:	8fe1                	and	a5,a5,s0
  1c:	c799                	beqz	a5,2a <.L75>
  1e:	00400537          	lui	a0,0x400
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LBE606+0xe>

0000002a <.L75>:
  2a:	000807b7          	lui	a5,0x80
  2e:	0789                	addi	a5,a5,2
  30:	8fe1                	and	a5,a5,s0
  32:	c799                	beqz	a5,40 <.L76>
  34:	00200537          	lui	a0,0x200
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.L75+0xe>

00000040 <.L76>:
  40:	00447793          	andi	a5,s0,4
  44:	c785                	beqz	a5,6c <.L77>

00000046 <.LBB608>:
  46:	44b007b7          	lui	a5,0x44b00
  4a:	5f9c                	lw	a5,56(a5)

0000004c <.LBE610>:
  4c:	8bbd                	andi	a5,a5,15
  4e:	cbe1                	beqz	a5,11e <.L78>
  50:	000005b7          	lui	a1,0x0
  54:	00000537          	lui	a0,0x0
  58:	08c00613          	li	a2,140
  5c:	00058593          	mv	a1,a1
  60:	00050513          	mv	a0,a0
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LBE610+0x18>

0000006c <.L77>:
  6c:	00847793          	andi	a5,s0,8
  70:	c3d1                	beqz	a5,f4 <.L80>

00000072 <.LBB617>:
  72:	44b087b7          	lui	a5,0x44b08
  76:	0847a483          	lw	s1,132(a5) # 44b08084 <.LASF376+0x44b04a0a>

0000007a <.LBB621>:
  7a:	0897a423          	sw	s1,136(a5)

0000007e <.LBE621>:
  7e:	1004f793          	andi	a5,s1,256
  82:	c799                	beqz	a5,90 <.L81>
  84:	04000537          	lui	a0,0x4000
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.LBE621+0xa>

00000090 <.L81>:
  90:	0404f793          	andi	a5,s1,64
  94:	c789                	beqz	a5,9e <.L82>
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.L81+0x6>

0000009e <.L82>:
  9e:	0804f793          	andi	a5,s1,128
  a2:	c799                	beqz	a5,b0 <.L83>
  a4:	08000537          	lui	a0,0x8000
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L82+0xa>

000000b0 <.L83>:
  b0:	0014f793          	andi	a5,s1,1
  b4:	cf99                	beqz	a5,d2 <.L84>
  b6:	000005b7          	lui	a1,0x0
  ba:	00000537          	lui	a0,0x0
  be:	22f00613          	li	a2,559
  c2:	00058593          	mv	a1,a1
  c6:	00050513          	mv	a0,a0
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.L83+0x1a>

000000d2 <.L84>:
  d2:	0024f793          	andi	a5,s1,2
  d6:	cbb5                	beqz	a5,14a <.L85>
  d8:	000005b7          	lui	a1,0x0
  dc:	00000537          	lui	a0,0x0
  e0:	23200613          	li	a2,562
  e4:	00058593          	mv	a1,a1
  e8:	00050513          	mv	a0,a0

000000ec <.L128>:
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.L128>

000000f4 <.L80>:
  f4:	08047793          	andi	a5,s0,128
  f8:	c3e9                	beqz	a5,1ba <.L90>
  fa:	000005b7          	lui	a1,0x0
  fe:	00000537          	lui	a0,0x0
 102:	27800613          	li	a2,632
 106:	00058593          	mv	a1,a1
 10a:	00050513          	mv	a0,a0

0000010e <.L129>:
 10e:	4422                	lw	s0,8(sp)

00000110 <.LVL141>:
 110:	40b2                	lw	ra,12(sp)
 112:	4492                	lw	s1,4(sp)
 114:	0141                	addi	sp,sp,16
 116:	00000317          	auipc	t1,0x0
 11a:	00030067          	jr	t1 # 116 <.LVL141+0x6>

0000011e <.L78>:
 11e:	44b08737          	lui	a4,0x44b08
 122:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF376+0x44b04a12>

00000126 <.LBE612>:
 126:	00800537          	lui	a0,0x800
 12a:	fdf7f793          	andi	a5,a5,-33

0000012e <.LBB614>:
 12e:	08f72623          	sw	a5,140(a4)

00000132 <.LBE614>:
 132:	000007b7          	lui	a5,0x0
 136:	00078793          	mv	a5,a5
 13a:	43d8                	lw	a4,4(a5)
 13c:	9b6d                	andi	a4,a4,-5
 13e:	c3d8                	sw	a4,4(a5)
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LBE614+0xe>

00000148 <.LVL145>:
 148:	b715                	j	6c <.L77>

0000014a <.L85>:
 14a:	0044f793          	andi	a5,s1,4
 14e:	cf81                	beqz	a5,166 <.L86>
 150:	000005b7          	lui	a1,0x0
 154:	00000537          	lui	a0,0x0
 158:	23300613          	li	a2,563
 15c:	00058593          	mv	a1,a1
 160:	00050513          	mv	a0,a0
 164:	b761                	j	ec <.L128>

00000166 <.L86>:
 166:	0084f793          	andi	a5,s1,8
 16a:	cf81                	beqz	a5,182 <.L87>
 16c:	000005b7          	lui	a1,0x0
 170:	00000537          	lui	a0,0x0
 174:	23400613          	li	a2,564
 178:	00058593          	mv	a1,a1
 17c:	00050513          	mv	a0,a0
 180:	b7b5                	j	ec <.L128>

00000182 <.L87>:
 182:	0104f793          	andi	a5,s1,16
 186:	cf81                	beqz	a5,19e <.L88>
 188:	000005b7          	lui	a1,0x0
 18c:	00000537          	lui	a0,0x0
 190:	23500613          	li	a2,565
 194:	00058593          	mv	a1,a1
 198:	00050513          	mv	a0,a0
 19c:	bf81                	j	ec <.L128>

0000019e <.L88>:
 19e:	0204f493          	andi	s1,s1,32

000001a2 <.LVL147>:
 1a2:	d8a9                	beqz	s1,f4 <.L80>
 1a4:	000005b7          	lui	a1,0x0
 1a8:	00000537          	lui	a0,0x0
 1ac:	23600613          	li	a2,566
 1b0:	00058593          	mv	a1,a1
 1b4:	00050513          	mv	a0,a0
 1b8:	bf15                	j	ec <.L128>

000001ba <.L90>:
 1ba:	10047793          	andi	a5,s0,256
 1be:	cf81                	beqz	a5,1d6 <.L91>
 1c0:	000005b7          	lui	a1,0x0
 1c4:	00000537          	lui	a0,0x0
 1c8:	27900613          	li	a2,633
 1cc:	00058593          	mv	a1,a1
 1d0:	00050513          	mv	a0,a0
 1d4:	bf2d                	j	10e <.L129>

000001d6 <.L91>:
 1d6:	01341793          	slli	a5,s0,0x13
 1da:	0007dd63          	bgez	a5,1f4 <.L92>
 1de:	000005b7          	lui	a1,0x0
 1e2:	00000537          	lui	a0,0x0
 1e6:	27a00613          	li	a2,634
 1ea:	00058593          	mv	a1,a1
 1ee:	00050513          	mv	a0,a0
 1f2:	bf31                	j	10e <.L129>

000001f4 <.L92>:
 1f4:	01241793          	slli	a5,s0,0x12
 1f8:	0007dd63          	bgez	a5,212 <.L93>
 1fc:	000005b7          	lui	a1,0x0
 200:	00000537          	lui	a0,0x0
 204:	27b00613          	li	a2,635
 208:	00058593          	mv	a1,a1
 20c:	00050513          	mv	a0,a0
 210:	bdfd                	j	10e <.L129>

00000212 <.L93>:
 212:	01141793          	slli	a5,s0,0x11
 216:	0007dd63          	bgez	a5,230 <.L94>
 21a:	000005b7          	lui	a1,0x0
 21e:	00000537          	lui	a0,0x0
 222:	27c00613          	li	a2,636
 226:	00058593          	mv	a1,a1
 22a:	00050513          	mv	a0,a0
 22e:	b5c5                	j	10e <.L129>

00000230 <.L94>:
 230:	01041793          	slli	a5,s0,0x10
 234:	0007dd63          	bgez	a5,24e <.L95>
 238:	000005b7          	lui	a1,0x0
 23c:	00000537          	lui	a0,0x0
 240:	27d00613          	li	a2,637
 244:	00058593          	mv	a1,a1
 248:	00050513          	mv	a0,a0
 24c:	b5c9                	j	10e <.L129>

0000024e <.L95>:
 24e:	00f41793          	slli	a5,s0,0xf
 252:	0007dd63          	bgez	a5,26c <.L96>
 256:	000005b7          	lui	a1,0x0
 25a:	00000537          	lui	a0,0x0
 25e:	27e00613          	li	a2,638
 262:	00058593          	mv	a1,a1
 266:	00050513          	mv	a0,a0
 26a:	b555                	j	10e <.L129>

0000026c <.L96>:
 26c:	00e41793          	slli	a5,s0,0xe
 270:	0007dd63          	bgez	a5,28a <.L97>
 274:	000005b7          	lui	a1,0x0
 278:	00000537          	lui	a0,0x0
 27c:	27f00613          	li	a2,639
 280:	00058593          	mv	a1,a1
 284:	00050513          	mv	a0,a0
 288:	b559                	j	10e <.L129>

0000028a <.L97>:
 28a:	00a41793          	slli	a5,s0,0xa
 28e:	0007dd63          	bgez	a5,2a8 <.L98>
 292:	000005b7          	lui	a1,0x0
 296:	00000537          	lui	a0,0x0
 29a:	28000613          	li	a2,640
 29e:	00058593          	mv	a1,a1
 2a2:	00050513          	mv	a0,a0
 2a6:	b5a5                	j	10e <.L129>

000002a8 <.L98>:
 2a8:	00941793          	slli	a5,s0,0x9
 2ac:	0007dd63          	bgez	a5,2c6 <.L99>
 2b0:	000005b7          	lui	a1,0x0
 2b4:	00000537          	lui	a0,0x0
 2b8:	28100613          	li	a2,641
 2bc:	00058593          	mv	a1,a1
 2c0:	00050513          	mv	a0,a0
 2c4:	b5a9                	j	10e <.L129>

000002c6 <.L99>:
 2c6:	00741793          	slli	a5,s0,0x7
 2ca:	0007dd63          	bgez	a5,2e4 <.L100>
 2ce:	000005b7          	lui	a1,0x0
 2d2:	00000537          	lui	a0,0x0
 2d6:	28200613          	li	a2,642
 2da:	00058593          	mv	a1,a1
 2de:	00050513          	mv	a0,a0
 2e2:	b535                	j	10e <.L129>

000002e4 <.L100>:
 2e4:	00641793          	slli	a5,s0,0x6
 2e8:	0007dd63          	bgez	a5,302 <.L101>
 2ec:	000005b7          	lui	a1,0x0
 2f0:	00000537          	lui	a0,0x0
 2f4:	28300613          	li	a2,643
 2f8:	00058593          	mv	a1,a1
 2fc:	00050513          	mv	a0,a0
 300:	b539                	j	10e <.L129>

00000302 <.L101>:
 302:	00b41793          	slli	a5,s0,0xb
 306:	0007dd63          	bgez	a5,320 <.L74>
 30a:	000005b7          	lui	a1,0x0
 30e:	00000537          	lui	a0,0x0
 312:	28400613          	li	a2,644
 316:	00058593          	mv	a1,a1
 31a:	00050513          	mv	a0,a0
 31e:	bbc5                	j	10e <.L129>

00000320 <.L74>:
 320:	40b2                	lw	ra,12(sp)
 322:	4422                	lw	s0,8(sp)

00000324 <.LVL148>:
 324:	4492                	lw	s1,4(sp)
 326:	0141                	addi	sp,sp,16
 328:	8082                	ret
