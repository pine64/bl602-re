
libbl602_wifi/phy_bl602.o:     file format elf32-littleriscv


Disassembly of section .text.mdm_txcbwmax_setf:

00000000 <mdm_txcbwmax_setf>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	fc0007b7          	lui	a5,0xfc000
   8:	01851413          	slli	s0,a0,0x18
   c:	c606                	sw	ra,12(sp)
   e:	8fe1                	and	a5,a5,s0
  10:	c385                	beqz	a5,30 <.L2>
			10: R_RISCV_RVC_BRANCH	.L2
  12:	6605                	lui	a2,0x1
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC1
			18: R_RISCV_RELAX	*ABS*

0000001c <.LVL1>:
  1c:	b5860613          	addi	a2,a2,-1192 # b58 <.LASF541+0x10>
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC1
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL1+0xc>

00000030 <.L2>:
  30:	44c01737          	lui	a4,0x44c01
  34:	82472503          	lw	a0,-2012(a4) # 44c00824 <.LASF594+0x44bfe52d>
  38:	fd0007b7          	lui	a5,0xfd000
  3c:	17fd                	addi	a5,a5,-1
  3e:	8d7d                	and	a0,a0,a5
  40:	8d41                	or	a0,a0,s0
  42:	82a72223          	sw	a0,-2012(a4)
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)
  4a:	0141                	addi	sp,sp,16
  4c:	8082                	ret

Disassembly of section .text.phy_config_rxgain:

00000000 <phy_config_rxgain>:
   0:	00000737          	lui	a4,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00070713          	mv	a4,a4
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00070783          	lb	a5,0(a4) # 0 <phy_config_rxgain>
   c:	10a78863          	beq	a5,a0,11c <.L7>
			c: R_RISCV_BRANCH	.L7

00000010 <.LBB86>:
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL5>:
  12:	8561                	srai	a0,a0,0x18
  14:	00a70023          	sb	a0,0(a4)

00000018 <.LBB88>:
  18:	44c0c7b7          	lui	a5,0x44c0c
  1c:	0807a683          	lw	a3,128(a5) # 44c0c080 <.LASF594+0x44c09d89>

00000020 <.LBE88>:
  20:	050d                	addi	a0,a0,3

00000022 <.LBB91>:
  22:	0ff57513          	andi	a0,a0,255
  26:	f006f693          	andi	a3,a3,-256
  2a:	8d55                	or	a0,a0,a3

0000002c <.LVL10>:
  2c:	08a7a023          	sw	a0,128(a5)

00000030 <.LBB92>:
  30:	0807a683          	lw	a3,128(a5)

00000034 <.LVL12>:
  34:	7341                	lui	t1,0xffff0
  36:	0ff30313          	addi	t1,t1,255 # ffff00ff <.LASF594+0xfffede08>
  3a:	0066f5b3          	and	a1,a3,t1

0000003e <.LBE92>:
  3e:	00070683          	lb	a3,0(a4)

00000042 <.LBB96>:
  42:	6641                	lui	a2,0x10
  44:	fff60893          	addi	a7,a2,-1 # ffff <.LASF594+0xdd08>

00000048 <.LBE96>:
  48:	06ad                	addi	a3,a3,11

0000004a <.LBB97>:
  4a:	06a2                	slli	a3,a3,0x8

0000004c <.LVL15>:
  4c:	0116f6b3          	and	a3,a3,a7
  50:	8ecd                	or	a3,a3,a1

00000052 <.LVL16>:
  52:	08d7a023          	sw	a3,128(a5)

00000056 <.LBB98>:
  56:	0807a583          	lw	a1,128(a5)

0000005a <.LVL18>:
  5a:	ff010837          	lui	a6,0xff010
  5e:	187d                	addi	a6,a6,-1
  60:	0105f6b3          	and	a3,a1,a6

00000064 <.LBE98>:
  64:	00070583          	lb	a1,0(a4)

00000068 <.LBB102>:
  68:	00ff0e37          	lui	t3,0xff0

0000006c <.LBB103>:
  6c:	01000537          	lui	a0,0x1000

00000070 <.LBE103>:
  70:	05c9                	addi	a1,a1,18

00000072 <.LBB107>:
  72:	05c2                	slli	a1,a1,0x10

00000074 <.LVL21>:
  74:	01c5f5b3          	and	a1,a1,t3
  78:	8dd5                	or	a1,a1,a3

0000007a <.LVL22>:
  7a:	08b7a023          	sw	a1,128(a5)

0000007e <.LBB108>:
  7e:	0807a583          	lw	a1,128(a5)

00000082 <.LVL24>:
  82:	157d                	addi	a0,a0,-1
  84:	00a5f6b3          	and	a3,a1,a0

00000088 <.LBE108>:
  88:	00070583          	lb	a1,0(a4)
  8c:	05e5                	addi	a1,a1,25

0000008e <.LBB109>:
  8e:	05e2                	slli	a1,a1,0x18

00000090 <.LVL27>:
  90:	8dd5                	or	a1,a1,a3

00000092 <.LVL28>:
  92:	08b7a023          	sw	a1,128(a5)

00000096 <.LBB110>:
  96:	0847a583          	lw	a1,132(a5)

0000009a <.LVL30>:
  9a:	f005f693          	andi	a3,a1,-256

0000009e <.LBE110>:
  9e:	00070583          	lb	a1,0(a4)
  a2:	02058593          	addi	a1,a1,32 # 20 <.LBE88>

000000a6 <.LBB113>:
  a6:	0ff5f593          	andi	a1,a1,255

000000aa <.LVL33>:
  aa:	8dd5                	or	a1,a1,a3

000000ac <.LVL34>:
  ac:	08b7a223          	sw	a1,132(a5)

000000b0 <.LBB114>:
  b0:	0847a603          	lw	a2,132(a5)

000000b4 <.LVL36>:
  b4:	00667333          	and	t1,a2,t1

000000b8 <.LBE114>:
  b8:	00070603          	lb	a2,0(a4)
  bc:	02760613          	addi	a2,a2,39

000000c0 <.LBB117>:
  c0:	0622                	slli	a2,a2,0x8

000000c2 <.LVL39>:
  c2:	01167633          	and	a2,a2,a7
  c6:	00666633          	or	a2,a2,t1

000000ca <.LVL40>:
  ca:	08c7a223          	sw	a2,132(a5)

000000ce <.LBB118>:
  ce:	0847a683          	lw	a3,132(a5)

000000d2 <.LVL42>:
  d2:	0106f833          	and	a6,a3,a6

000000d6 <.LBE118>:
  d6:	00070683          	lb	a3,0(a4)
  da:	02d68693          	addi	a3,a3,45

000000de <.LBB121>:
  de:	06c2                	slli	a3,a3,0x10

000000e0 <.LVL45>:
  e0:	01c6f6b3          	and	a3,a3,t3
  e4:	0106e6b3          	or	a3,a3,a6

000000e8 <.LVL46>:
  e8:	08d7a223          	sw	a3,132(a5)

000000ec <.LBB122>:
  ec:	0847a683          	lw	a3,132(a5)

000000f0 <.LVL48>:
  f0:	8d75                	and	a0,a0,a3

000000f2 <.LBE122>:
  f2:	00070683          	lb	a3,0(a4)
  f6:	03568693          	addi	a3,a3,53

000000fa <.LBB125>:
  fa:	06e2                	slli	a3,a3,0x18

000000fc <.LVL51>:
  fc:	8ec9                	or	a3,a3,a0

000000fe <.LVL52>:
  fe:	08d7a223          	sw	a3,132(a5)

00000102 <.LBB126>:
 102:	00070703          	lb	a4,0(a4)

00000106 <.LBB130>:
 106:	0887a683          	lw	a3,136(a5)

0000010a <.LBE130>:
 10a:	03b70713          	addi	a4,a4,59

0000010e <.LBB131>:
 10e:	f006f693          	andi	a3,a3,-256
 112:	0ff77713          	andi	a4,a4,255

00000116 <.LVL57>:
 116:	8f55                	or	a4,a4,a3

00000118 <.LVL58>:
 118:	08e7a423          	sw	a4,136(a5)

0000011c <.L7>:
 11c:	8082                	ret

Disassembly of section .text.agc_config:

00000000 <agc_config>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)

00000008 <.LBB260>:
   8:	44c0b437          	lui	s0,0x44c0b

0000000c <.LBE260>:
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c452                	sw	s4,8(sp)

00000012 <.LBB261>:
  12:	39042783          	lw	a5,912(s0) # 44c0b390 <.LASF594+0x44c09099>
  16:	7941                	lui	s2,0xffff0
  18:	fff90713          	addi	a4,s2,-1 # fffeffff <.LASF594+0xfffedd08>
  1c:	8ff9                	and	a5,a5,a4
  1e:	38f42823          	sw	a5,912(s0)

00000022 <.LBB262>:
  22:	39042783          	lw	a5,912(s0)

00000026 <.LBB265>:
  26:	0ff90913          	addi	s2,s2,255

0000002a <.LBB269>:
  2a:	ff0106b7          	lui	a3,0xff010

0000002e <.LBB274>:
  2e:	bff7f793          	andi	a5,a5,-1025
  32:	38f42823          	sw	a5,912(s0)

00000036 <.LBB275>:
  36:	3a442783          	lw	a5,932(s0)

0000003a <.LBB278>:
  3a:	16fd                	addi	a3,a3,-1
  3c:	00f80737          	lui	a4,0xf80

00000040 <.LBB279>:
  40:	f007f793          	andi	a5,a5,-256
  44:	3af42223          	sw	a5,932(s0)

00000048 <.LBB280>:
  48:	3a442783          	lw	a5,932(s0)

0000004c <.LBB281>:
  4c:	6a29                	lui	s4,0xa

0000004e <.LBB285>:
  4e:	037008b7          	lui	a7,0x3700

00000052 <.LBB288>:
  52:	0127f7b3          	and	a5,a5,s2
  56:	3af42223          	sw	a5,932(s0)

0000005a <.LBB289>:
  5a:	39442783          	lw	a5,916(s0)

0000005e <.LBB290>:
  5e:	04000637          	lui	a2,0x4000
  62:	fff60513          	addi	a0,a2,-1 # 3ffffff <.LASF594+0x3ffdd08>

00000066 <.LBB293>:
  66:	8ff5                	and	a5,a5,a3
  68:	8fd9                	or	a5,a5,a4
  6a:	38f42a23          	sw	a5,916(s0)

0000006e <.LBB294>:
  6e:	39842783          	lw	a5,920(s0)
  72:	e00a0713          	addi	a4,s4,-512 # 9e00 <.LASF594+0x7b09>

00000076 <.LBB295>:
  76:	44c0d4b7          	lui	s1,0x44c0d

0000007a <.LBB298>:
  7a:	0127f7b3          	and	a5,a5,s2
  7e:	8fd9                	or	a5,a5,a4
  80:	38f42c23          	sw	a5,920(s0)

00000084 <.LBB299>:
  84:	3c442783          	lw	a5,964(s0)

00000088 <.LBB302>:
  88:	300a0a13          	addi	s4,s4,768

0000008c <.LBB305>:
  8c:	f007f793          	andi	a5,a5,-256
  90:	0ce7e793          	ori	a5,a5,206
  94:	3cf42223          	sw	a5,964(s0)

00000098 <.LBB306>:
  98:	36442703          	lw	a4,868(s0)
  9c:	e10007b7          	lui	a5,0xe1000
  a0:	17fd                	addi	a5,a5,-1
  a2:	8f7d                	and	a4,a4,a5
  a4:	080007b7          	lui	a5,0x8000
  a8:	8f5d                	or	a4,a4,a5
  aa:	36e42223          	sw	a4,868(s0)

000000ae <.LBB308>:
  ae:	36442703          	lw	a4,868(s0)
  b2:	ffc107b7          	lui	a5,0xffc10
  b6:	17fd                	addi	a5,a5,-1
  b8:	8f7d                	and	a4,a4,a5
  ba:	003c07b7          	lui	a5,0x3c0
  be:	8f5d                	or	a4,a4,a5
  c0:	36e42223          	sw	a4,868(s0)

000000c4 <.LBB310>:
  c4:	36442703          	lw	a4,868(s0)
  c8:	77f1                	lui	a5,0xffffc
  ca:	0ff78793          	addi	a5,a5,255 # ffffc0ff <.LASF594+0xffff9e08>
  ce:	8f7d                	and	a4,a4,a5
  d0:	6791                	lui	a5,0x4
  d2:	80078793          	addi	a5,a5,-2048 # 3800 <.LASF594+0x1509>
  d6:	8f5d                	or	a4,a4,a5
  d8:	36e42223          	sw	a4,868(s0)

000000dc <.LBB312>:
  dc:	36442703          	lw	a4,868(s0)

000000e0 <.LBB315>:
  e0:	ffc017b7          	lui	a5,0xffc01
  e4:	17fd                	addi	a5,a5,-1

000000e6 <.LBB318>:
  e6:	fc077713          	andi	a4,a4,-64
  ea:	03976713          	ori	a4,a4,57
  ee:	36e42223          	sw	a4,868(s0)

000000f2 <.LBB319>:
  f2:	36842703          	lw	a4,872(s0)
  f6:	8f7d                	and	a4,a4,a5
  f8:	000707b7          	lui	a5,0x70
  fc:	8f5d                	or	a4,a4,a5
  fe:	36e42423          	sw	a4,872(s0)

00000102 <.LBB320>:
 102:	36842703          	lw	a4,872(s0)
 106:	c0077713          	andi	a4,a4,-1024
 10a:	07076713          	ori	a4,a4,112
 10e:	36e42423          	sw	a4,872(s0)

00000112 <.LBB322>:
 112:	36c42703          	lw	a4,876(s0)
 116:	f0077713          	andi	a4,a4,-256
 11a:	01276713          	ori	a4,a4,18
 11e:	36e42623          	sw	a4,876(s0)

00000122 <.LBB324>:
 122:	36c42703          	lw	a4,876(s0)
 126:	8ff77713          	andi	a4,a4,-1793
 12a:	50076713          	ori	a4,a4,1280
 12e:	36e42623          	sw	a4,876(s0)

00000132 <.LBB326>:
 132:	36c42783          	lw	a5,876(s0)
 136:	00280737          	lui	a4,0x280
 13a:	8ff5                	and	a5,a5,a3
 13c:	8fd9                	or	a5,a5,a4
 13e:	36f42623          	sw	a5,876(s0)

00000142 <.LBB328>:
 142:	36c42783          	lw	a5,876(s0)
 146:	f9000737          	lui	a4,0xf9000
 14a:	177d                	addi	a4,a4,-1
 14c:	8ff9                	and	a5,a5,a4
 14e:	07000737          	lui	a4,0x7000
 152:	8fd9                	or	a5,a5,a4
 154:	36f42623          	sw	a5,876(s0)

00000158 <.LBB330>:
 158:	37042783          	lw	a5,880(s0)
 15c:	ff810737          	lui	a4,0xff810
 160:	177d                	addi	a4,a4,-1
 162:	8ff9                	and	a5,a5,a4
 164:	00580737          	lui	a4,0x580
 168:	8fd9                	or	a5,a5,a4
 16a:	36f42823          	sw	a5,880(s0)

0000016e <.LBB332>:
 16e:	3c042783          	lw	a5,960(s0)
 172:	18000737          	lui	a4,0x18000

00000176 <.LBB335>:
 176:	000f86b7          	lui	a3,0xf8

0000017a <.LBB338>:
 17a:	07a2                	slli	a5,a5,0x8
 17c:	83a1                	srli	a5,a5,0x8
 17e:	8fd9                	or	a5,a5,a4
 180:	3cf42023          	sw	a5,960(s0)

00000184 <.LBB339>:
 184:	38042783          	lw	a5,896(s0)
 188:	fff04737          	lui	a4,0xfff04
 18c:	177d                	addi	a4,a4,-1
 18e:	8ff9                	and	a5,a5,a4
 190:	8fd5                	or	a5,a5,a3
 192:	38f42023          	sw	a5,896(s0)

00000196 <.LBB340>:
 196:	38042783          	lw	a5,896(s0)
 19a:	fc1006b7          	lui	a3,0xfc100
 19e:	16fd                	addi	a3,a3,-1
 1a0:	8ff5                	and	a5,a5,a3
 1a2:	0117e7b3          	or	a5,a5,a7
 1a6:	38f42023          	sw	a5,896(s0)

000001aa <.LBB341>:
 1aa:	38042783          	lw	a5,896(s0)
 1ae:	8fe9                	and	a5,a5,a0
 1b0:	8fd1                	or	a5,a5,a2
 1b2:	38f42023          	sw	a5,896(s0)

000001b6 <.LBB342>:
 1b6:	38042583          	lw	a1,896(s0)
 1ba:	77f9                	lui	a5,0xffffe
 1bc:	fff78813          	addi	a6,a5,-1 # ffffdfff <.LASF594+0xffffbd08>
 1c0:	0105f5b3          	and	a1,a1,a6
 1c4:	38b42023          	sw	a1,896(s0)

000001c8 <.LBB344>:
 1c8:	38042583          	lw	a1,896(s0)
 1cc:	3ff78793          	addi	a5,a5,1023

000001d0 <.LBB347>:
 1d0:	e4000637          	lui	a2,0xe4000

000001d4 <.LBB350>:
 1d4:	8dfd                	and	a1,a1,a5
 1d6:	4005e593          	ori	a1,a1,1024
 1da:	38b42023          	sw	a1,896(s0)

000001de <.LBB351>:
 1de:	38442583          	lw	a1,900(s0)
 1e2:	8de9                	and	a1,a1,a0
 1e4:	8dd1                	or	a1,a1,a2
 1e6:	38b42223          	sw	a1,900(s0)

000001ea <.LBB352>:
 1ea:	38442603          	lw	a2,900(s0)

000001ee <.LBB355>:
 1ee:	000505b7          	lui	a1,0x50

000001f2 <.LBB359>:
 1f2:	8e75                	and	a2,a2,a3
 1f4:	01166633          	or	a2,a2,a7
 1f8:	38c42223          	sw	a2,900(s0)

000001fc <.LBB360>:
 1fc:	38442603          	lw	a2,900(s0)

00000200 <.LBB361>:
 200:	3c0008b7          	lui	a7,0x3c000

00000204 <.LBB365>:
 204:	8e79                	and	a2,a2,a4
 206:	8e4d                	or	a2,a2,a1
 208:	38c42223          	sw	a2,900(s0)

0000020c <.LBB366>:
 20c:	38442603          	lw	a2,900(s0)
 210:	01067633          	and	a2,a2,a6
 214:	38c42223          	sw	a2,900(s0)

00000218 <.LBB368>:
 218:	38442583          	lw	a1,900(s0)
 21c:	6605                	lui	a2,0x1
 21e:	80060993          	addi	s3,a2,-2048 # 800 <.LASF343+0x2>
 222:	8dfd                	and	a1,a1,a5
 224:	0135e5b3          	or	a1,a1,s3
 228:	38b42223          	sw	a1,900(s0)

0000022c <.LBB370>:
 22c:	38842583          	lw	a1,904(s0)

00000230 <.LBB371>:
 230:	40060613          	addi	a2,a2,1024

00000234 <.LBB375>:
 234:	8de9                	and	a1,a1,a0
 236:	0115e5b3          	or	a1,a1,a7
 23a:	38b42423          	sw	a1,904(s0)

0000023e <.LBB376>:
 23e:	38842583          	lw	a1,904(s0)
 242:	017008b7          	lui	a7,0x1700
 246:	8df5                	and	a1,a1,a3
 248:	0115e5b3          	or	a1,a1,a7
 24c:	38b42423          	sw	a1,904(s0)

00000250 <.LBB378>:
 250:	38842583          	lw	a1,904(s0)
 254:	000a88b7          	lui	a7,0xa8
 258:	8df9                	and	a1,a1,a4
 25a:	0115e5b3          	or	a1,a1,a7
 25e:	38b42423          	sw	a1,904(s0)

00000262 <.LBB380>:
 262:	38842583          	lw	a1,904(s0)
 266:	0105f833          	and	a6,a1,a6
 26a:	39042423          	sw	a6,904(s0)

0000026e <.LBB382>:
 26e:	38842583          	lw	a1,904(s0)

00000272 <.LBB383>:
 272:	64000837          	lui	a6,0x64000

00000276 <.LBB386>:
 276:	8dfd                	and	a1,a1,a5
 278:	8dd1                	or	a1,a1,a2
 27a:	38b42423          	sw	a1,904(s0)

0000027e <.LBB387>:
 27e:	38c42583          	lw	a1,908(s0)
 282:	8de9                	and	a1,a1,a0
 284:	0105e5b3          	or	a1,a1,a6
 288:	38b42623          	sw	a1,908(s0)

0000028c <.LBB388>:
 28c:	38c42583          	lw	a1,908(s0)

00000290 <.LBB391>:
 290:	00038837          	lui	a6,0x38

00000294 <.LBB394>:
 294:	8df5                	and	a1,a1,a3
 296:	38b42623          	sw	a1,908(s0)

0000029a <.LBB395>:
 29a:	38c42583          	lw	a1,908(s0)
 29e:	8df9                	and	a1,a1,a4
 2a0:	0105e5b3          	or	a1,a1,a6
 2a4:	38b42623          	sw	a1,908(s0)

000002a8 <.LBB396>:
 2a8:	38c42583          	lw	a1,908(s0)
 2ac:	8dfd                	and	a1,a1,a5
 2ae:	0135e5b3          	or	a1,a1,s3
 2b2:	38b42623          	sw	a1,908(s0)

000002b6 <.LBB398>:
 2b6:	8304a583          	lw	a1,-2000(s1) # 44c0c830 <.LASF594+0x44c0a539>

000002ba <.LVL99>:
 2ba:	8de9                	and	a1,a1,a0
 2bc:	fc000537          	lui	a0,0xfc000
 2c0:	8dc9                	or	a1,a1,a0
 2c2:	82b4a823          	sw	a1,-2000(s1)

000002c6 <.LBB399>:
 2c6:	8304a583          	lw	a1,-2000(s1)

000002ca <.LBE399>:
 2ca:	4501                	li	a0,0

000002cc <.LBB402>:
 2cc:	8eed                	and	a3,a3,a1

000002ce <.LVL104>:
 2ce:	001005b7          	lui	a1,0x100
 2d2:	8ecd                	or	a3,a3,a1
 2d4:	82d4a823          	sw	a3,-2000(s1)

000002d8 <.LBB403>:
 2d8:	8304a683          	lw	a3,-2000(s1)

000002dc <.LVL107>:
 2dc:	8f75                	and	a4,a4,a3

000002de <.LVL108>:
 2de:	000d86b7          	lui	a3,0xd8
 2e2:	8f55                	or	a4,a4,a3
 2e4:	82e4a823          	sw	a4,-2000(s1)

000002e8 <.LBB405>:
 2e8:	8304a703          	lw	a4,-2000(s1)

000002ec <.LBB408>:
 2ec:	fe1006b7          	lui	a3,0xfe100
 2f0:	16fd                	addi	a3,a3,-1

000002f2 <.LBB411>:
 2f2:	8ff9                	and	a5,a5,a4

000002f4 <.LVL112>:
 2f4:	8fd1                	or	a5,a5,a2
 2f6:	82f4a823          	sw	a5,-2000(s1)

000002fa <.LBB412>:
 2fa:	8144a783          	lw	a5,-2028(s1)

000002fe <.LVL115>:
 2fe:	9bf1                	andi	a5,a5,-4
 300:	80f4aa23          	sw	a5,-2028(s1)

00000304 <.LBB414>:
 304:	8144a783          	lw	a5,-2028(s1)

00000308 <.LVL118>:
 308:	fc37f793          	andi	a5,a5,-61
 30c:	0087e793          	ori	a5,a5,8
 310:	80f4aa23          	sw	a5,-2028(s1)

00000314 <.LBB416>:
 314:	8144a783          	lw	a5,-2028(s1)

00000318 <.LVL122>:
 318:	fc37f793          	andi	a5,a5,-61
 31c:	0087e793          	ori	a5,a5,8
 320:	80f4aa23          	sw	a5,-2028(s1)

00000324 <.LBB418>:
 324:	44c0c7b7          	lui	a5,0x44c0c
 328:	43b8                	lw	a4,64(a5)

0000032a <.LVL126>:
 32a:	8f75                	and	a4,a4,a3
 32c:	00c006b7          	lui	a3,0xc00
 330:	8f55                	or	a4,a4,a3
 332:	c3b8                	sw	a4,64(a5)

00000334 <.LBB419>:
 334:	43b8                	lw	a4,64(a5)

00000336 <.LVL130>:
 336:	fff086b7          	lui	a3,0xfff08
 33a:	16fd                	addi	a3,a3,-1
 33c:	8f75                	and	a4,a4,a3
 33e:	66e1                	lui	a3,0x18
 340:	8f55                	or	a4,a4,a3
 342:	c3b8                	sw	a4,64(a5)

00000344 <.LBB421>:
 344:	43f8                	lw	a4,68(a5)

00000346 <.LVL134>:
 346:	01277733          	and	a4,a4,s2
 34a:	01376733          	or	a4,a4,s3
 34e:	c3f8                	sw	a4,68(a5)

00000350 <.LBB423>:
 350:	43f8                	lw	a4,68(a5)

00000352 <.LVL138>:
 352:	f0077713          	andi	a4,a4,-256
 356:	c3f8                	sw	a4,68(a5)

00000358 <.LBE423>:
 358:	00000097          	auipc	ra,0x0
			358: R_RISCV_CALL	phy_config_rxgain
			358: R_RISCV_RELAX	*ABS*
 35c:	000080e7          	jalr	ra # 358 <.LBE423>

00000360 <.LBB425>:
 360:	3a042703          	lw	a4,928(s0)

00000364 <.LBB428>:
 364:	800006b7          	lui	a3,0x80000
 368:	fff6c613          	not	a2,a3

0000036c <.LBB432>:
 36c:	f0077713          	andi	a4,a4,-256
 370:	09e76713          	ori	a4,a4,158
 374:	3ae42023          	sw	a4,928(s0)

00000378 <.LBB433>:
 378:	3c042703          	lw	a4,960(s0)
 37c:	f0077713          	andi	a4,a4,-256
 380:	0a476713          	ori	a4,a4,164
 384:	3ce42023          	sw	a4,960(s0)

00000388 <.LBB435>:
 388:	3c042703          	lw	a4,960(s0)
 38c:	01277933          	and	s2,a4,s2
 390:	01496933          	or	s2,s2,s4
 394:	3d242023          	sw	s2,960(s0)

00000398 <.LBB436>:
 398:	82c4a703          	lw	a4,-2004(s1)

0000039c <.LVL145>:
 39c:	f0077713          	andi	a4,a4,-256
 3a0:	0b576713          	ori	a4,a4,181
 3a4:	82e4a623          	sw	a4,-2004(s1)

000003a8 <.LBB438>:
 3a8:	82c4a783          	lw	a5,-2004(s1)

000003ac <.LBB441>:
 3ac:	777d                	lui	a4,0xfffff
 3ae:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF594+0xffffd508>

000003b2 <.LBB444>:
 3b2:	1007e793          	ori	a5,a5,256

000003b6 <.LVL150>:
 3b6:	82f4a623          	sw	a5,-2004(s1)

000003ba <.LBB445>:
 3ba:	82c4a783          	lw	a5,-2004(s1)

000003be <.LVL152>:
 3be:	8ff9                	and	a5,a5,a4
 3c0:	0137e7b3          	or	a5,a5,s3
 3c4:	82f4a623          	sw	a5,-2004(s1)

000003c8 <.LBB446>:
 3c8:	8384a703          	lw	a4,-1992(s1)

000003cc <.LBB447>:
 3cc:	fff807b7          	lui	a5,0xfff80

000003d0 <.LBB450>:
 3d0:	8f71                	and	a4,a4,a2
 3d2:	8f55                	or	a4,a4,a3
 3d4:	82e4ac23          	sw	a4,-1992(s1)

000003d8 <.LBB451>:
 3d8:	8384a703          	lw	a4,-1992(s1)

000003dc <.LVL160>:
 3dc:	8f7d                	and	a4,a4,a5
 3de:	10076713          	ori	a4,a4,256
 3e2:	82e4ac23          	sw	a4,-1992(s1)

000003e6 <.LBB452>:
 3e6:	83c4a703          	lw	a4,-1988(s1)

000003ea <.LBB455>:
 3ea:	fff007b7          	lui	a5,0xfff00

000003ee <.LBB458>:
 3ee:	8f71                	and	a4,a4,a2
 3f0:	8f55                	or	a4,a4,a3
 3f2:	82e4ae23          	sw	a4,-1988(s1)

000003f6 <.LBB459>:
 3f6:	83c4a703          	lw	a4,-1988(s1)

000003fa <.LVL168>:
 3fa:	8f7d                	and	a4,a4,a5
 3fc:	17c76713          	ori	a4,a4,380
 400:	82e4ae23          	sw	a4,-1988(s1)

00000404 <.LBB460>:
 404:	8404a783          	lw	a5,-1984(s1)

00000408 <.LBB463>:
 408:	ffc00737          	lui	a4,0xffc00

0000040c <.LBB466>:
 40c:	8ff1                	and	a5,a5,a2
 40e:	8fd5                	or	a5,a5,a3
 410:	84f4a023          	sw	a5,-1984(s1)

00000414 <.LBB467>:
 414:	8404a783          	lw	a5,-1984(s1)

00000418 <.LVL176>:
 418:	8ff9                	and	a5,a5,a4
 41a:	1007e793          	ori	a5,a5,256
 41e:	84f4a023          	sw	a5,-1984(s1)

00000422 <.LBB468>:
 422:	82c4a783          	lw	a5,-2004(s1)

00000426 <.LVL180>:
 426:	ff008737          	lui	a4,0xff008
 42a:	177d                	addi	a4,a4,-1
 42c:	8ff9                	and	a5,a5,a4
 42e:	00200737          	lui	a4,0x200
 432:	8fd9                	or	a5,a5,a4
 434:	82f4a623          	sw	a5,-2004(s1)

00000438 <.LBE468>:
 438:	40f2                	lw	ra,28(sp)
 43a:	4462                	lw	s0,24(sp)
 43c:	44d2                	lw	s1,20(sp)
 43e:	4942                	lw	s2,16(sp)
 440:	49b2                	lw	s3,12(sp)
 442:	4a22                	lw	s4,8(sp)
 444:	6105                	addi	sp,sp,32
 446:	8082                	ret

Disassembly of section .text.mdm_reset:

00000000 <mdm_reset>:
   0:	6785                	lui	a5,0x1
   2:	44c01737          	lui	a4,0x44c01
   6:	11178793          	addi	a5,a5,273 # 1111 <.LASF401+0x1>
   a:	88f72423          	sw	a5,-1912(a4) # 44c00888 <.LASF594+0x44bfe591>

0000000e <.LBB472>:
   e:	88072423          	sw	zero,-1912(a4)

00000012 <.LBE472>:
  12:	8082                	ret

Disassembly of section .text.phy_powroffset_set:

00000000 <phy_powroffset_set>:
   0:	00000737          	lui	a4,0x0
			0: R_RISCV_HI20	.LANCHOR1
			0: R_RISCV_RELAX	*ABS*
   4:	4781                	li	a5,0
   6:	00070713          	mv	a4,a4
			6: R_RISCV_LO12_I	.LANCHOR1
			6: R_RISCV_RELAX	*ABS*
   a:	46b9                	li	a3,14

0000000c <.L13>:
   c:	00f50633          	add	a2,a0,a5
  10:	00060583          	lb	a1,0(a2)
  14:	00f70633          	add	a2,a4,a5
  18:	0785                	addi	a5,a5,1
  1a:	00b60023          	sb	a1,0(a2)
  1e:	fed797e3          	bne	a5,a3,c <.L13>
			1e: R_RISCV_BRANCH	.L13
  22:	8082                	ret

Disassembly of section .text.phy_hw_set_channel:

00000000 <phy_hw_set_channel>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	c452                	sw	s4,8(sp)
   8:	c256                	sw	s5,4(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	8a2a                	mv	s4,a0
  12:	84ae                	mv	s1,a1
  14:	89b2                	mv	s3,a2
  16:	8ab6                	mv	s5,a3
  18:	ce99                	beqz	a3,36 <.L16>
			18: R_RISCV_RVC_BRANCH	.L16
  1a:	000005b7          	lui	a1,0x0
			1a: R_RISCV_HI20	.LC0
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL191>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC2
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL192>:
  22:	14400613          	li	a2,324

00000026 <.LVL193>:
  26:	00058593          	mv	a1,a1
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC2
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	assert_err
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL193+0x8>

00000036 <.L16>:
  36:	020a0063          	beqz	s4,56 <.L17>
			36: R_RISCV_BRANCH	.L17
  3a:	000005b7          	lui	a1,0x0
			3a: R_RISCV_HI20	.LC0
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	.LC3
			3e: R_RISCV_RELAX	*ABS*
  42:	14500613          	li	a2,325
  46:	00058593          	mv	a1,a1
			46: R_RISCV_LO12_I	.LC0
			46: R_RISCV_RELAX	*ABS*
  4a:	00050513          	mv	a0,a0
			4a: R_RISCV_LO12_I	.LC3
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	assert_err
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L16+0x18>

00000056 <.L17>:
  56:	44c0b937          	lui	s2,0x44c0b
  5a:	39092783          	lw	a5,912(s2) # 44c0b390 <.LASF594+0x44c09099>

0000005e <.LBB513>:
  5e:	44c01437          	lui	s0,0x44c01

00000062 <.LBB516>:
  62:	eff7f793          	andi	a5,a5,-257
  66:	38f92823          	sw	a5,912(s2)

0000006a <.LBB517>:
  6a:	82042783          	lw	a5,-2016(s0) # 44c00820 <.LASF594+0x44bfe529>
  6e:	0017e793          	ori	a5,a5,1
  72:	82f42023          	sw	a5,-2016(s0)

00000076 <.LBB518>:
  76:	80042023          	sw	zero,-2048(s0)

0000007a <.LBE518>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	mdm_reset
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LBE518>

00000082 <.LBB520>:
  82:	0b400793          	li	a5,180
  86:	82f42c23          	sw	a5,-1992(s0)

0000008a <.LBB522>:
  8a:	6789                	lui	a5,0x2
  8c:	c1378793          	addi	a5,a5,-1005 # 1c13 <.LASF255+0x1>
  90:	88f42623          	sw	a5,-1908(s0)

00000094 <.LBB524>:
  94:	02d007b7          	lui	a5,0x2d00
  98:	43878793          	addi	a5,a5,1080 # 2d00438 <.LASF594+0x2cfe141>
  9c:	88f42c23          	sw	a5,-1896(s0)

000000a0 <.LBB526>:
  a0:	85842783          	lw	a5,-1960(s0)

000000a4 <.LBB529>:
  a4:	06000737          	lui	a4,0x6000

000000a8 <.LBE529>:
  a8:	8556                	mv	a0,s5

000000aa <.LBB532>:
  aa:	f007f793          	andi	a5,a5,-256
  ae:	84f42c23          	sw	a5,-1960(s0)

000000b2 <.LBB533>:
  b2:	6785                	lui	a5,0x1
  b4:	f0f78793          	addi	a5,a5,-241 # f0f <.LASF155+0x4>
  b8:	80f42e23          	sw	a5,-2020(s0)

000000bc <.LBB535>:
  bc:	81c42783          	lw	a5,-2020(s0)
  c0:	f807f793          	andi	a5,a5,-128
  c4:	0077e793          	ori	a5,a5,7
  c8:	80f42e23          	sw	a5,-2020(s0)

000000cc <.LBB537>:
  cc:	83442783          	lw	a5,-1996(s0)
  d0:	07a2                	slli	a5,a5,0x8
  d2:	83a1                	srli	a5,a5,0x8
  d4:	8fd9                	or	a5,a5,a4
  d6:	82f42a23          	sw	a5,-1996(s0)

000000da <.LBB538>:
  da:	018817b7          	lui	a5,0x1881
  de:	c0678793          	addi	a5,a5,-1018 # 1880c06 <.LASF594+0x187e90f>
  e2:	80f42c23          	sw	a5,-2024(s0)

000000e6 <.LBB540>:
  e6:	67a1                	lui	a5,0x8
  e8:	f0378793          	addi	a5,a5,-253 # 7f03 <.LASF594+0x5c0c>
  ec:	86f42023          	sw	a5,-1952(s0)

000000f0 <.LBB542>:
  f0:	34092023          	sw	zero,832(s2)

000000f4 <.LBB544>:
  f4:	34092223          	sw	zero,836(s2)

000000f8 <.LBB546>:
  f8:	34092423          	sw	zero,840(s2)

000000fc <.LBE546>:
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	mdm_txcbwmax_setf
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LBE546>

00000104 <.LBB548>:
 104:	00092783          	lw	a5,0(s2)

00000108 <.LBE548>:
 108:	00a79713          	slli	a4,a5,0xa
 10c:	00075563          	bgez	a4,116 <.L18>
			10c: R_RISCV_BRANCH	.L18

00000110 <.LBB550>:
 110:	4785                	li	a5,1
 112:	10f92c23          	sw	a5,280(s2)

00000116 <.L18>:
 116:	85ce                	mv	a1,s3
 118:	8556                	mv	a0,s5
 11a:	00000097          	auipc	ra,0x0
			11a: R_RISCV_CALL	rf_set_channel
			11a: R_RISCV_RELAX	*ABS*
 11e:	000080e7          	jalr	ra # 11a <.L18+0x4>

00000122 <.LBB552>:
 122:	060a1263          	bnez	s4,186 <.L19>
			122: R_RISCV_BRANCH	.L19
 126:	77fd                	lui	a5,0xfffff
 128:	69478713          	addi	a4,a5,1684 # fffff694 <.LASF594+0xffffd39d>
 12c:	9726                	add	a4,a4,s1
 12e:	0742                	slli	a4,a4,0x10
 130:	8341                	srli	a4,a4,0x10
 132:	04800693          	li	a3,72
 136:	4501                	li	a0,0
 138:	00e6ee63          	bltu	a3,a4,154 <.L20>
			138: R_RISCV_BRANCH	.L20
 13c:	6705                	lui	a4,0x1
 13e:	9b470713          	addi	a4,a4,-1612 # 9b4 <.LASF374+0x8>
 142:	4539                	li	a0,14
 144:	00e48863          	beq	s1,a4,154 <.L20>
			144: R_RISCV_BRANCH	.L20
 148:	69978513          	addi	a0,a5,1689

0000014c <.L35>:
 14c:	94aa                	add	s1,s1,a0

0000014e <.LVL217>:
 14e:	4515                	li	a0,5
 150:	02a4c533          	div	a0,s1,a0

00000154 <.L20>:
 154:	000005b7          	lui	a1,0x0
			154: R_RISCV_HI20	.LANCHOR1
			154: R_RISCV_RELAX	*ABS*
 158:	0ff57513          	andi	a0,a0,255
 15c:	00058593          	mv	a1,a1
			15c: R_RISCV_LO12_I	.LANCHOR1
			15c: R_RISCV_RELAX	*ABS*
 160:	00000097          	auipc	ra,0x0
			160: R_RISCV_CALL	rfc_apply_tx_power_offset
			160: R_RISCV_RELAX	*ABS*
 164:	000080e7          	jalr	ra # 160 <.L20+0xc>

00000168 <.LVL219>:
 168:	4462                	lw	s0,24(sp)
 16a:	01899513          	slli	a0,s3,0x18
 16e:	40f2                	lw	ra,28(sp)
 170:	44d2                	lw	s1,20(sp)
 172:	4942                	lw	s2,16(sp)
 174:	49b2                	lw	s3,12(sp)
 176:	4a22                	lw	s4,8(sp)
 178:	4a92                	lw	s5,4(sp)
 17a:	8561                	srai	a0,a0,0x18
 17c:	6105                	addi	sp,sp,32
 17e:	00000317          	auipc	t1,0x0
			17e: R_RISCV_CALL	trpc_update_vs_channel
			17e: R_RISCV_RELAX	*ABS*
 182:	00030067          	jr	t1 # 17e <.LVL219+0x16>

00000186 <.L19>:
 186:	4785                	li	a5,1
 188:	4501                	li	a0,0
 18a:	fcfa15e3          	bne	s4,a5,154 <.L20>
			18a: R_RISCV_BRANCH	.L20
 18e:	777d                	lui	a4,0xfffff
 190:	c7370793          	addi	a5,a4,-909 # ffffec73 <.LASF594+0xffffc97c>
 194:	97a6                	add	a5,a5,s1
 196:	07c2                	slli	a5,a5,0x10
 198:	83c1                	srli	a5,a5,0x10
 19a:	33400693          	li	a3,820
 19e:	faf6ebe3          	bltu	a3,a5,154 <.L20>
			19e: R_RISCV_BRANCH	.L20
 1a2:	c7870513          	addi	a0,a4,-904
 1a6:	b75d                	j	14c <.L35>
			1a6: R_RISCV_RVC_JUMP	.L35

Disassembly of section .text.phy_reset:

00000000 <phy_reset>:
   0:	8082                	ret

Disassembly of section .text.phy_get_channel:

00000000 <phy_get_channel>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	phy_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	phy_env
			4: R_RISCV_RELAX	*ABS*
   8:	00b7c703          	lbu	a4,11(a5) # b <phy_get_channel+0xb>
   c:	0047d683          	lhu	a3,4(a5)
  10:	0722                	slli	a4,a4,0x8
  12:	06c2                	slli	a3,a3,0x10
  14:	8f55                	or	a4,a4,a3
  16:	00a7c683          	lbu	a3,10(a5)
  1a:	8f55                	or	a4,a4,a3
  1c:	c118                	sw	a4,0(a0)
  1e:	0067d703          	lhu	a4,6(a5)
  22:	0087d783          	lhu	a5,8(a5)
  26:	07c2                	slli	a5,a5,0x10
  28:	8fd9                	or	a5,a5,a4
  2a:	c15c                	sw	a5,4(a0)
  2c:	8082                	ret

Disassembly of section .text.phy_set_channel:

00000000 <phy_set_channel>:
   0:	77fd                	lui	a5,0xfffff

00000002 <.LVL223>:
   2:	69478793          	addi	a5,a5,1684 # fffff694 <.LASF594+0xffffd39d>
   6:	97b6                	add	a5,a5,a3
   8:	07c2                	slli	a5,a5,0x10
   a:	83c1                	srli	a5,a5,0x10
   c:	04800713          	li	a4,72

00000010 <.LVL224>:
  10:	00f77363          	bgeu	a4,a5,16 <.L39>
			10: R_RISCV_BRANCH	.L39
  14:	c921                	beqz	a0,64 <.L45>
			14: R_RISCV_RVC_BRANCH	.L45

00000016 <.L39>:
  16:	4785                	li	a5,1
  18:	04a7e663          	bltu	a5,a0,64 <.L45>
			18: R_RISCV_BRANCH	.L45
  1c:	1101                	addi	sp,sp,-32
  1e:	ca26                	sw	s1,20(sp)
  20:	c84a                	sw	s2,16(sp)
  22:	84b6                	mv	s1,a3
  24:	8932                	mv	s2,a2
  26:	c64e                	sw	s3,12(sp)
  28:	86ae                	mv	a3,a1

0000002a <.LVL225>:
  2a:	89ae                	mv	s3,a1
  2c:	8626                	mv	a2,s1

0000002e <.LVL226>:
  2e:	85ca                	mv	a1,s2

00000030 <.LVL227>:
  30:	cc22                	sw	s0,24(sp)
  32:	ce06                	sw	ra,28(sp)
  34:	842a                	mv	s0,a0
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	phy_hw_set_channel
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL227+0x6>

0000003e <.LVL228>:
  3e:	000007b7          	lui	a5,0x0
			3e: R_RISCV_HI20	phy_env
			3e: R_RISCV_RELAX	*ABS*
  42:	00078793          	mv	a5,a5
			42: R_RISCV_LO12_I	phy_env
			42: R_RISCV_RELAX	*ABS*
  46:	00878523          	sb	s0,10(a5) # a <.LVL223+0x8>
  4a:	013785a3          	sb	s3,11(a5)
  4e:	01279223          	sh	s2,4(a5)
  52:	00979323          	sh	s1,6(a5)
  56:	40f2                	lw	ra,28(sp)
  58:	4462                	lw	s0,24(sp)
  5a:	44d2                	lw	s1,20(sp)
  5c:	4942                	lw	s2,16(sp)
  5e:	49b2                	lw	s3,12(sp)
  60:	6105                	addi	sp,sp,32
  62:	8082                	ret

00000064 <.L45>:
  64:	8082                	ret

Disassembly of section .text.phy_get_version:

00000000 <phy_get_version>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	439c                	lw	a5,0(a5)

00000006 <.LBE556>:
   6:	c11c                	sw	a5,0(a0)
   8:	0005a023          	sw	zero,0(a1) # 0 <phy_get_version>
   c:	8082                	ret

Disassembly of section .text.phy_vht_supported:

00000000 <phy_vht_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4398                	lw	a4,0(a5)

00000006 <.LBE562>:
   6:	4505                	li	a0,1
   8:	00971693          	slli	a3,a4,0x9
   c:	0006c563          	bltz	a3,16 <.L50>
			c: R_RISCV_BRANCH	.L50

00000010 <.LBB564>:
  10:	4388                	lw	a0,0(a5)

00000012 <.LBE564>:
  12:	8165                	srli	a0,a0,0x19
  14:	8905                	andi	a0,a0,1

00000016 <.L50>:
  16:	8082                	ret

Disassembly of section .text.phy_init:

00000000 <phy_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c04a                	sw	s2,0(sp)

00000006 <.LBB669>:
   6:	44c01437          	lui	s0,0x44c01

0000000a <.LBE669>:
   a:	c606                	sw	ra,12(sp)
   c:	c226                	sw	s1,4(sp)

0000000e <.LBB675>:
   e:	80042023          	sw	zero,-2048(s0) # 44c00800 <.LASF594+0x44bfe509>

00000012 <.LBE675>:
  12:	892a                	mv	s2,a0

00000014 <.LBB676>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	mdm_reset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LBB676>

0000001c <.LBB677>:
  1c:	20d00793          	li	a5,525
  20:	82f42023          	sw	a5,-2016(s0)

00000024 <.LBB679>:
  24:	44c007b7          	lui	a5,0x44c00
  28:	4380                	lw	s0,0(a5)

0000002a <.LBB682>:
  2a:	8021                	srli	s0,s0,0x8

0000002c <.LVL238>:
  2c:	883d                	andi	s0,s0,15

0000002e <.LBE685>:
  2e:	147d                	addi	s0,s0,-1

00000030 <.LBB686>:
  30:	0ff47413          	andi	s0,s0,255
  34:	0412                	slli	s0,s0,0x4
  36:	f8f47793          	andi	a5,s0,-113
  3a:	c385                	beqz	a5,5a <.L53>
			3a: R_RISCV_RVC_BRANCH	.L53
  3c:	6605                	lui	a2,0x1
  3e:	000005b7          	lui	a1,0x0
			3e: R_RISCV_HI20	.LC0
			3e: R_RISCV_RELAX	*ABS*
  42:	00000537          	lui	a0,0x0
			42: R_RISCV_HI20	.LC4
			42: R_RISCV_RELAX	*ABS*
  46:	a0960613          	addi	a2,a2,-1527 # a09 <.LASF377+0x4>
  4a:	00058593          	mv	a1,a1
			4a: R_RISCV_LO12_I	.LC0
			4a: R_RISCV_RELAX	*ABS*
  4e:	00050513          	mv	a0,a0
			4e: R_RISCV_LO12_I	.LC4
			4e: R_RISCV_RELAX	*ABS*
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	assert_err
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LBB686+0x22>

0000005a <.L53>:
  5a:	44c01737          	lui	a4,0x44c01
  5e:	82072783          	lw	a5,-2016(a4) # 44c00820 <.LASF594+0x44bfe529>
  62:	f8f7f793          	andi	a5,a5,-113
  66:	8c5d                	or	s0,s0,a5
  68:	82872023          	sw	s0,-2016(a4)

0000006c <.LBB687>:
  6c:	44c007b7          	lui	a5,0x44c00
  70:	4384                	lw	s1,0(a5)

00000072 <.LBB690>:
  72:	000f87b7          	lui	a5,0xf8

00000076 <.LBB693>:
  76:	80b1                	srli	s1,s1,0xc

00000078 <.LVL241>:
  78:	88bd                	andi	s1,s1,15

0000007a <.LBE693>:
  7a:	14fd                	addi	s1,s1,-1

0000007c <.LBB694>:
  7c:	0ff4f493          	andi	s1,s1,255
  80:	04b2                	slli	s1,s1,0xc
  82:	8fe5                	and	a5,a5,s1
  84:	c385                	beqz	a5,a4 <.L54>
			84: R_RISCV_RVC_BRANCH	.L54
  86:	6605                	lui	a2,0x1
  88:	000005b7          	lui	a1,0x0
			88: R_RISCV_HI20	.LC0
			88: R_RISCV_RELAX	*ABS*
  8c:	00000537          	lui	a0,0x0
			8c: R_RISCV_HI20	.LC5
			8c: R_RISCV_RELAX	*ABS*
  90:	98760613          	addi	a2,a2,-1657 # 987 <.LASF124+0xe>
  94:	00058593          	mv	a1,a1
			94: R_RISCV_LO12_I	.LC0
			94: R_RISCV_RELAX	*ABS*
  98:	00050513          	mv	a0,a0
			98: R_RISCV_LO12_I	.LC5
			98: R_RISCV_RELAX	*ABS*
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	assert_err
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LBB694+0x20>

000000a4 <.L54>:
  a4:	44c01437          	lui	s0,0x44c01
  a8:	82042783          	lw	a5,-2016(s0) # 44c00820 <.LASF594+0x44bfe529>
  ac:	7765                	lui	a4,0xffff9
  ae:	177d                	addi	a4,a4,-1
  b0:	8ff9                	and	a5,a5,a4
  b2:	8cdd                	or	s1,s1,a5
  b4:	82942023          	sw	s1,-2016(s0)

000000b8 <.LBB695>:
  b8:	44c004b7          	lui	s1,0x44c00
  bc:	409c                	lw	a5,0(s1)

000000be <.LBB697>:
  be:	82042703          	lw	a4,-2016(s0)
  c2:	83cd                	srli	a5,a5,0x13

000000c4 <.LVL244>:
  c4:	eff77713          	andi	a4,a4,-257
  c8:	1007f793          	andi	a5,a5,256
  cc:	8fd9                	or	a5,a5,a4
  ce:	82f42023          	sw	a5,-2016(s0)

000000d2 <.LBE697>:
  d2:	00000097          	auipc	ra,0x0
			d2: R_RISCV_CALL	phy_vht_supported
			d2: R_RISCV_RELAX	*ABS*
  d6:	000080e7          	jalr	ra # d2 <.LBE697>

000000da <.LBB699>:
  da:	82042783          	lw	a5,-2016(s0)
  de:	0506                	slli	a0,a0,0x1

000000e0 <.LBB702>:
  e0:	76c1                	lui	a3,0xffff0

000000e2 <.LBB706>:
  e2:	9bf5                	andi	a5,a5,-3
  e4:	8d5d                	or	a0,a0,a5
  e6:	82a42023          	sw	a0,-2016(s0)

000000ea <.LBB707>:
  ea:	409c                	lw	a5,0(s1)

000000ec <.LBB710>:
  ec:	82042703          	lw	a4,-2016(s0)
  f0:	16fd                	addi	a3,a3,-1

000000f2 <.LBB711>:
  f2:	83f9                	srli	a5,a5,0x1e

000000f4 <.LBB712>:
  f4:	8b85                	andi	a5,a5,1
  f6:	8f75                	and	a4,a4,a3
  f8:	07c2                	slli	a5,a5,0x10
  fa:	8fd9                	or	a5,a5,a4
  fc:	82f42023          	sw	a5,-2016(s0)

00000100 <.LBB713>:
 100:	409c                	lw	a5,0(s1)

00000102 <.LBB716>:
 102:	82042703          	lw	a4,-2016(s0)
 106:	fff006b7          	lui	a3,0xfff00

0000010a <.LBB719>:
 10a:	83f9                	srli	a5,a5,0x1e

0000010c <.LBB720>:
 10c:	16fd                	addi	a3,a3,-1
 10e:	8b85                	andi	a5,a5,1
 110:	8f75                	and	a4,a4,a3
 112:	07d2                	slli	a5,a5,0x14
 114:	8fd9                	or	a5,a5,a4
 116:	82f42023          	sw	a5,-2016(s0)

0000011a <.LBB721>:
 11a:	44c036b7          	lui	a3,0x44c03
 11e:	52dc                	lw	a5,36(a3)
 120:	ffc10737          	lui	a4,0xffc10
 124:	177d                	addi	a4,a4,-1
 126:	8ff9                	and	a5,a5,a4
 128:	002d0737          	lui	a4,0x2d0
 12c:	8fd9                	or	a5,a5,a4
 12e:	d2dc                	sw	a5,36(a3)

00000130 <.LBB723>:
 130:	57fd                	li	a5,-1
 132:	88f42e23          	sw	a5,-1892(s0)

00000136 <.LBB725>:
 136:	20d00793          	li	a5,525
 13a:	82f42223          	sw	a5,-2012(s0)

0000013e <.LBB727>:
 13e:	4080                	lw	s0,0(s1)

00000140 <.LBB730>:
 140:	8021                	srli	s0,s0,0x8

00000142 <.LVL256>:
 142:	883d                	andi	s0,s0,15

00000144 <.LBE733>:
 144:	147d                	addi	s0,s0,-1

00000146 <.LBB734>:
 146:	0ff47413          	andi	s0,s0,255
 14a:	0412                	slli	s0,s0,0x4
 14c:	f8f47793          	andi	a5,s0,-113
 150:	c385                	beqz	a5,170 <.L55>
			150: R_RISCV_RVC_BRANCH	.L55
 152:	6605                	lui	a2,0x1
 154:	000005b7          	lui	a1,0x0
			154: R_RISCV_HI20	.LC0
			154: R_RISCV_RELAX	*ABS*
 158:	00000537          	lui	a0,0x0
			158: R_RISCV_HI20	.LC6
			158: R_RISCV_RELAX	*ABS*
 15c:	c0e60613          	addi	a2,a2,-1010 # c0e <.LLST22+0x6>
 160:	00058593          	mv	a1,a1
			160: R_RISCV_LO12_I	.LC0
			160: R_RISCV_RELAX	*ABS*
 164:	00050513          	mv	a0,a0
			164: R_RISCV_LO12_I	.LC6
			164: R_RISCV_RELAX	*ABS*
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	assert_err
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.LBB734+0x22>

00000170 <.L55>:
 170:	44c01737          	lui	a4,0x44c01
 174:	82472783          	lw	a5,-2012(a4) # 44c00824 <.LASF594+0x44bfe52d>
 178:	f8f7f793          	andi	a5,a5,-113
 17c:	8c5d                	or	s0,s0,a5
 17e:	82872223          	sw	s0,-2012(a4)

00000182 <.LBB735>:
 182:	44c007b7          	lui	a5,0x44c00
 186:	4384                	lw	s1,0(a5)

00000188 <.LBB738>:
 188:	0f8007b7          	lui	a5,0xf800

0000018c <.LBB741>:
 18c:	8091                	srli	s1,s1,0x4

0000018e <.LVL259>:
 18e:	88bd                	andi	s1,s1,15

00000190 <.LBE741>:
 190:	14fd                	addi	s1,s1,-1

00000192 <.LBB742>:
 192:	0ff4f493          	andi	s1,s1,255
 196:	04d2                	slli	s1,s1,0x14
 198:	8fe5                	and	a5,a5,s1
 19a:	c385                	beqz	a5,1ba <.L56>
			19a: R_RISCV_RVC_BRANCH	.L56
 19c:	6605                	lui	a2,0x1
 19e:	000005b7          	lui	a1,0x0
			19e: R_RISCV_HI20	.LC0
			19e: R_RISCV_RELAX	*ABS*
 1a2:	00000537          	lui	a0,0x0
			1a2: R_RISCV_HI20	.LC7
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	b7260613          	addi	a2,a2,-1166 # b72 <.LLST136+0xf>
 1aa:	00058593          	mv	a1,a1
			1aa: R_RISCV_LO12_I	.LC0
			1aa: R_RISCV_RELAX	*ABS*
 1ae:	00050513          	mv	a0,a0
			1ae: R_RISCV_LO12_I	.LC7
			1ae: R_RISCV_RELAX	*ABS*
 1b2:	00000097          	auipc	ra,0x0
			1b2: R_RISCV_CALL	assert_err
			1b2: R_RISCV_RELAX	*ABS*
 1b6:	000080e7          	jalr	ra # 1b2 <.LBB742+0x20>

000001ba <.L56>:
 1ba:	44c01437          	lui	s0,0x44c01
 1be:	82442783          	lw	a5,-2012(s0) # 44c00824 <.LASF594+0x44bfe52d>
 1c2:	ff900737          	lui	a4,0xff900
 1c6:	177d                	addi	a4,a4,-1
 1c8:	8ff9                	and	a5,a5,a4
 1ca:	8cdd                	or	s1,s1,a5
 1cc:	82942223          	sw	s1,-2012(s0)

000001d0 <.LBB743>:
 1d0:	44c004b7          	lui	s1,0x44c00
 1d4:	4088                	lw	a0,0(s1)
 1d6:	8161                	srli	a0,a0,0x18

000001d8 <.LBE743>:
 1d8:	890d                	andi	a0,a0,3
 1da:	00000097          	auipc	ra,0x0
			1da: R_RISCV_CALL	mdm_txcbwmax_setf
			1da: R_RISCV_RELAX	*ABS*
 1de:	000080e7          	jalr	ra # 1da <.LBE743+0x2>

000001e2 <.LBB745>:
 1e2:	409c                	lw	a5,0(s1)

000001e4 <.LBB747>:
 1e4:	82442703          	lw	a4,-2012(s0)
 1e8:	83c9                	srli	a5,a5,0x12

000001ea <.LVL264>:
 1ea:	eff77713          	andi	a4,a4,-257
 1ee:	1007f793          	andi	a5,a5,256
 1f2:	8fd9                	or	a5,a5,a4
 1f4:	82f42223          	sw	a5,-2012(s0)

000001f8 <.LBE747>:
 1f8:	00000097          	auipc	ra,0x0
			1f8: R_RISCV_CALL	phy_vht_supported
			1f8: R_RISCV_RELAX	*ABS*
 1fc:	000080e7          	jalr	ra # 1f8 <.LBE747>

00000200 <.LBB749>:
 200:	82442783          	lw	a5,-2012(s0)
 204:	0506                	slli	a0,a0,0x1

00000206 <.LBB752>:
 206:	7741                	lui	a4,0xffff0

00000208 <.LBB756>:
 208:	9bf5                	andi	a5,a5,-3
 20a:	8d5d                	or	a0,a0,a5
 20c:	82a42223          	sw	a0,-2012(s0)

00000210 <.LBB757>:
 210:	409c                	lw	a5,0(s1)

00000212 <.LBB760>:
 212:	82442683          	lw	a3,-2012(s0)
 216:	fff70613          	addi	a2,a4,-1 # fffeffff <.LASF594+0xfffedd08>

0000021a <.LBB761>:
 21a:	83fd                	srli	a5,a5,0x1f

0000021c <.LBB762>:
 21c:	8ef1                	and	a3,a3,a2
 21e:	07c2                	slli	a5,a5,0x10
 220:	8fd5                	or	a5,a5,a3
 222:	82f42223          	sw	a5,-2012(s0)

00000226 <.LBB763>:
 226:	83442783          	lw	a5,-1996(s0)

0000022a <.LBB765>:
 22a:	fffc06b7          	lui	a3,0xfffc0
 22e:	16fd                	addi	a3,a3,-1

00000230 <.LBE765>:
 230:	0017e793          	ori	a5,a5,1

00000234 <.LBB769>:
 234:	82f42a23          	sw	a5,-1996(s0)

00000238 <.LBB771>:
 238:	81842783          	lw	a5,-2024(s0)

0000023c <.LBB772>:
 23c:	0ff70713          	addi	a4,a4,255
 240:	6609                	lui	a2,0x2

00000242 <.LBB776>:
 242:	8ff5                	and	a5,a5,a3
 244:	80f42c23          	sw	a5,-2024(s0)

00000248 <.LBB777>:
 248:	83042783          	lw	a5,-2000(s0)

0000024c <.LBB778>:
 24c:	f80006b7          	lui	a3,0xf8000
 250:	16fd                	addi	a3,a3,-1

00000252 <.LBB782>:
 252:	8ff9                	and	a5,a5,a4
 254:	b0060713          	addi	a4,a2,-1280 # 1b00 <.LASF319+0x4>
 258:	8fd9                	or	a5,a5,a4
 25a:	82f42823          	sw	a5,-2000(s0)

0000025e <.LBB783>:
 25e:	83042783          	lw	a5,-2000(s0)

00000262 <.LBB786>:
 262:	08000737          	lui	a4,0x8000

00000266 <.LBB787>:
 266:	f007f793          	andi	a5,a5,-256
 26a:	00f7e793          	ori	a5,a5,15
 26e:	82f42823          	sw	a5,-2000(s0)

00000272 <.LBB788>:
 272:	049207b7          	lui	a5,0x4920
 276:	49278793          	addi	a5,a5,1170 # 4920492 <.LASF594+0x491e19b>
 27a:	82f42e23          	sw	a5,-1988(s0)

0000027e <.LBB790>:
 27e:	87442783          	lw	a5,-1932(s0)
 282:	8ff5                	and	a5,a5,a3
 284:	8fd9                	or	a5,a5,a4
 286:	86f42a23          	sw	a5,-1932(s0)

0000028a <.LBB791>:
 28a:	44c0b7b7          	lui	a5,0x44c0b
 28e:	5007a703          	lw	a4,1280(a5) # 44c0b500 <.LASF594+0x44c09209>
 292:	76f5                	lui	a3,0xffffd
 294:	16fd                	addi	a3,a3,-1
 296:	8f75                	and	a4,a4,a3
 298:	8f51                	or	a4,a4,a2
 29a:	50e7a023          	sw	a4,1280(a5)

0000029e <.LBB793>:
 29e:	4398                	lw	a4,0(a5)

000002a0 <.LBE793>:
 2a0:	00a71693          	slli	a3,a4,0xa
 2a4:	0206d863          	bgez	a3,2d4 <.L57>
			2a4: R_RISCV_BRANCH	.L57

000002a8 <.LBB795>:
 2a8:	1107a703          	lw	a4,272(a5)
 2ac:	9b5d                	andi	a4,a4,-9
 2ae:	10e7a823          	sw	a4,272(a5)

000002b2 <.LBB797>:
 2b2:	1107a703          	lw	a4,272(a5)
 2b6:	9b6d                	andi	a4,a4,-5
 2b8:	10e7a823          	sw	a4,272(a5)

000002bc <.LBB799>:
 2bc:	1107a703          	lw	a4,272(a5)
 2c0:	9b75                	andi	a4,a4,-3
 2c2:	10e7a823          	sw	a4,272(a5)

000002c6 <.LBB801>:
 2c6:	1107a703          	lw	a4,272(a5)
 2ca:	9b79                	andi	a4,a4,-2
 2cc:	10e7a823          	sw	a4,272(a5)

000002d0 <.LBB803>:
 2d0:	1007ac23          	sw	zero,280(a5)

000002d4 <.L57>:
 2d4:	44c0b437          	lui	s0,0x44c0b
 2d8:	4785                	li	a5,1
 2da:	c05c                	sw	a5,4(s0)

000002dc <.LBB807>:
 2dc:	39042783          	lw	a5,912(s0) # 44c0b390 <.LASF594+0x44c09099>
 2e0:	9bf1                	andi	a5,a5,-4
 2e2:	0017e793          	ori	a5,a5,1
 2e6:	38f42823          	sw	a5,912(s0)

000002ea <.LBB809>:
 2ea:	003d17b7          	lui	a5,0x3d1
 2ee:	90078793          	addi	a5,a5,-1792 # 3d0900 <.LASF594+0x3ce609>
 2f2:	3af42e23          	sw	a5,956(s0)

000002f6 <.LBB811>:
 2f6:	41442783          	lw	a5,1044(s0)
 2fa:	1007e793          	ori	a5,a5,256
 2fe:	40f42a23          	sw	a5,1044(s0)

00000302 <.LBB838>:
 302:	00000097          	auipc	ra,0x0
			302: R_RISCV_CALL	agc_config
			302: R_RISCV_RELAX	*ABS*
 306:	000080e7          	jalr	ra # 302 <.LBB838>

0000030a <.LBB813>:
 30a:	39042783          	lw	a5,912(s0)
 30e:	777d                	lui	a4,0xfffff
 310:	177d                	addi	a4,a4,-1
 312:	8ff9                	and	a5,a5,a4
 314:	6705                	lui	a4,0x1
 316:	8fd9                	or	a5,a5,a4

00000318 <.LBB818>:
 318:	44c016b7          	lui	a3,0x44c01

0000031c <.LBB821>:
 31c:	38f42823          	sw	a5,912(s0)

00000320 <.LBB822>:
 320:	8746a783          	lw	a5,-1932(a3) # 44c00874 <.LASF594+0x44bfe57d>
 324:	e0000737          	lui	a4,0xe0000
 328:	177d                	addi	a4,a4,-1
 32a:	8ff9                	and	a5,a5,a4
 32c:	20000737          	lui	a4,0x20000
 330:	8fd9                	or	a5,a5,a4
 332:	86f6aa23          	sw	a5,-1932(a3)

00000336 <.LVL290>:
 336:	000007b7          	lui	a5,0x0
			336: R_RISCV_HI20	agcmem
			336: R_RISCV_RELAX	*ABS*

0000033a <.LBB823>:
 33a:	54c0b6b7          	lui	a3,0x54c0b
 33e:	00078793          	mv	a5,a5
			33e: R_RISCV_LO12_I	agcmem
			33e: R_RISCV_RELAX	*ABS*

00000342 <.LBE823>:
 342:	54c0a737          	lui	a4,0x54c0a

00000346 <.LBB824>:
 346:	80068693          	addi	a3,a3,-2048 # 54c0a800 <.LASF594+0x54c08509>

0000034a <.L58>:
 34a:	4390                	lw	a2,0(a5)
 34c:	0711                	addi	a4,a4,4

0000034e <.LVL292>:
 34e:	0791                	addi	a5,a5,4
 350:	fec72e23          	sw	a2,-4(a4) # 54c09ffc <.LASF594+0x54c07d05>

00000354 <.LVL293>:
 354:	fed71be3          	bne	a4,a3,34a <.L58>
			354: R_RISCV_BRANCH	.L58

00000358 <.LBB825>:
 358:	44c016b7          	lui	a3,0x44c01
 35c:	8746a783          	lw	a5,-1932(a3) # 44c00874 <.LASF594+0x44bfe57d>
 360:	e0000737          	lui	a4,0xe0000

00000364 <.LVL295>:
 364:	177d                	addi	a4,a4,-1
 366:	8ff9                	and	a5,a5,a4
 368:	86f6aa23          	sw	a5,-1932(a3)

0000036c <.LBB827>:
 36c:	44c0b6b7          	lui	a3,0x44c0b
 370:	3906a783          	lw	a5,912(a3) # 44c0b390 <.LASF594+0x44c09099>
 374:	777d                	lui	a4,0xfffff
 376:	177d                	addi	a4,a4,-1
 378:	8ff9                	and	a5,a5,a4
 37a:	38f6a823          	sw	a5,912(a3)

0000037e <.LBB829>:
 37e:	44c0c6b7          	lui	a3,0x44c0c
 382:	529c                	lw	a5,32(a3)
 384:	fc010737          	lui	a4,0xfc010
 388:	177d                	addi	a4,a4,-1
 38a:	8ff9                	and	a5,a5,a4
 38c:	00140737          	lui	a4,0x140
 390:	8fd9                	or	a5,a5,a4
 392:	d29c                	sw	a5,32(a3)

00000394 <.LBE829>:
 394:	00092703          	lw	a4,0(s2)
 398:	000007b7          	lui	a5,0x0
			398: R_RISCV_HI20	phy_env
			398: R_RISCV_RELAX	*ABS*
 39c:	00078793          	mv	a5,a5
			39c: R_RISCV_LO12_I	phy_env
			39c: R_RISCV_RELAX	*ABS*
 3a0:	c398                	sw	a4,0(a5)
 3a2:	00ff0737          	lui	a4,0xff0
 3a6:	0ff70713          	addi	a4,a4,255 # ff00ff <.LASF594+0xfede08>
 3aa:	c3d8                	sw	a4,4(a5)
 3ac:	05000737          	lui	a4,0x5000
 3b0:	0ff70713          	addi	a4,a4,255 # 50000ff <.LASF594+0x4ffde08>
 3b4:	c798                	sw	a4,8(a5)
 3b6:	00000097          	auipc	ra,0x0
			3b6: R_RISCV_CALL	trpc_init
			3b6: R_RISCV_RELAX	*ABS*
 3ba:	000080e7          	jalr	ra # 3b6 <.LBE829+0x22>

000003be <.LVL299>:
 3be:	00000097          	auipc	ra,0x0
			3be: R_RISCV_CALL	pa_init
			3be: R_RISCV_RELAX	*ABS*
 3c2:	000080e7          	jalr	ra # 3be <.LVL299>

000003c6 <.LVL300>:
 3c6:	00000097          	auipc	ra,0x0
			3c6: R_RISCV_CALL	phy_tcal_reset
			3c6: R_RISCV_RELAX	*ABS*
 3ca:	000080e7          	jalr	ra # 3c6 <.LVL300>

000003ce <.LVL301>:
 3ce:	4422                	lw	s0,8(sp)
 3d0:	40b2                	lw	ra,12(sp)
 3d2:	4492                	lw	s1,4(sp)
 3d4:	4902                	lw	s2,0(sp)

000003d6 <.LVL302>:
 3d6:	0141                	addi	sp,sp,16
 3d8:	00000317          	auipc	t1,0x0
			3d8: R_RISCV_CALL	phy_tcal_start
			3d8: R_RISCV_RELAX	*ABS*
 3dc:	00030067          	jr	t1 # 3d8 <.LVL302+0x2>

Disassembly of section .text.phy_get_nss:

00000000 <phy_get_nss>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8121                	srli	a0,a0,0x8
   8:	893d                	andi	a0,a0,15

0000000a <.LBE841>:
   a:	157d                	addi	a0,a0,-1
   c:	0ff57513          	andi	a0,a0,255
  10:	8082                	ret

Disassembly of section .text.phy_get_ntx:

00000000 <phy_get_ntx>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8111                	srli	a0,a0,0x4
   8:	893d                	andi	a0,a0,15

0000000a <.LBE845>:
   a:	157d                	addi	a0,a0,-1
   c:	0ff57513          	andi	a0,a0,255
  10:	8082                	ret

Disassembly of section .text.phy_stop:

00000000 <phy_stop>:
   0:	8082                	ret

Disassembly of section .text.phy_bfmee_supported:

00000000 <phy_bfmee_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8171                	srli	a0,a0,0x1c

00000008 <.LBE849>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.phy_bfmer_supported:

00000000 <phy_bfmer_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8175                	srli	a0,a0,0x1d

00000008 <.LBE853>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.phy_mu_mimo_rx_supported:

00000000 <phy_mu_mimo_rx_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8179                	srli	a0,a0,0x1e

00000008 <.LBE857>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.phy_mu_mimo_tx_supported:

00000000 <phy_mu_mimo_tx_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)

00000006 <.LBE859>:
   6:	817d                	srli	a0,a0,0x1f
   8:	8082                	ret

Disassembly of section .text.phy_ldpc_tx_supported:

00000000 <phy_ldpc_tx_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	8169                	srli	a0,a0,0x1a

00000008 <.LBE863>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.phy_ldpc_rx_supported:

00000000 <phy_ldpc_rx_supported>:
   0:	44c007b7          	lui	a5,0x44c00
   4:	4388                	lw	a0,0(a5)
   6:	816d                	srli	a0,a0,0x1b

00000008 <.LBE867>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.phy_get_mac_freq:

00000000 <phy_get_mac_freq>:
   0:	02800513          	li	a0,40
   4:	8082                	ret

Disassembly of section .text.phy_get_rf_gain_idx:

00000000 <phy_get_rf_gain_idx>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)

00000004 <.LVL313>:
   4:	c606                	sw	ra,12(sp)
   6:	842e                	mv	s0,a1
   8:	00050583          	lb	a1,0(a0) # 0 <phy_get_rf_gain_idx>

0000000c <.LVL314>:
   c:	47a9                	li	a5,10
   e:	4509                	li	a0,2

00000010 <.LVL315>:
  10:	02f585b3          	mul	a1,a1,a5
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	rfc_get_power_level
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL315+0x4>

0000001c <.LVL316>:
  1c:	00a40023          	sb	a0,0(s0)
  20:	40b2                	lw	ra,12(sp)
  22:	4422                	lw	s0,8(sp)

00000024 <.LVL317>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text.phy_get_rf_gain_idx_vs_mode:

00000000 <phy_get_rf_gain_idx_vs_mode>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)

00000004 <.LVL319>:
   4:	00058583          	lb	a1,0(a1) # 0 <phy_get_rf_gain_idx_vs_mode>

00000008 <.LVL320>:
   8:	47a9                	li	a5,10
   a:	c632                	sw	a2,12(sp)
   c:	02f585b3          	mul	a1,a1,a5
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	rfc_get_power_level
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL320+0x8>

00000018 <.LVL321>:
  18:	4632                	lw	a2,12(sp)
  1a:	00a60023          	sb	a0,0(a2)
  1e:	40f2                	lw	ra,28(sp)
  20:	6105                	addi	sp,sp,32

00000022 <.LVL322>:
  22:	8082                	ret

Disassembly of section .text.phy_get_trpc_idx:

00000000 <phy_get_trpc_idx>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	4789                	li	a5,2
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	8a32                	mv	s4,a2
  16:	89b6                	mv	s3,a3
  18:	00000937          	lui	s2,0x0
			18: R_RISCV_HI20	.LC0
			18: R_RISCV_RELAX	*ABS*
  1c:	04a7f163          	bgeu	a5,a0,5e <.L91>
			1c: R_RISCV_BRANCH	.L91
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	.LC8
			20: R_RISCV_RELAX	*ABS*

00000024 <.LVL324>:
  24:	27b00613          	li	a2,635

00000028 <.LVL325>:
  28:	00090593          	mv	a1,s2
			28: R_RISCV_LO12_I	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL326>:
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC8
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	assert_err
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL326+0x4>

00000038 <.L92>:
  38:	00000537          	lui	a0,0x0
			38: R_RISCV_HI20	.LC10
			38: R_RISCV_RELAX	*ABS*
  3c:	27c00613          	li	a2,636
  40:	00090593          	mv	a1,s2
			40: R_RISCV_LO12_I	.LC0
			40: R_RISCV_RELAX	*ABS*
  44:	00050513          	mv	a0,a0
			44: R_RISCV_LO12_I	.LC10
			44: R_RISCV_RELAX	*ABS*
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	assert_err
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L92+0x10>

00000050 <.LVL328>:
  50:	4785                	li	a5,1
  52:	00f41a63          	bne	s0,a5,66 <.L95>
			52: R_RISCV_BRANCH	.L95
  56:	479d                	li	a5,7
  58:	0097e763          	bltu	a5,s1,66 <.L95>
			58: R_RISCV_BRANCH	.L95
  5c:	a025                	j	84 <.L93>
			5c: R_RISCV_RVC_JUMP	.L93

0000005e <.L91>:
  5e:	fd69                	bnez	a0,38 <.L92>
			5e: R_RISCV_RVC_BRANCH	.L92
  60:	478d                	li	a5,3
  62:	fcb7ebe3          	bltu	a5,a1,38 <.L92>
			62: R_RISCV_BRANCH	.L92

00000066 <.L95>:
  66:	00000537          	lui	a0,0x0
			66: R_RISCV_HI20	.LC9
			66: R_RISCV_RELAX	*ABS*
  6a:	27d00613          	li	a2,637
  6e:	00090593          	mv	a1,s2
			6e: R_RISCV_LO12_I	.LC0
			6e: R_RISCV_RELAX	*ABS*
  72:	00050513          	mv	a0,a0
			72: R_RISCV_LO12_I	.LC9
			72: R_RISCV_RELAX	*ABS*
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	assert_err
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.L95+0x10>

0000007e <.LVL331>:
  7e:	4789                	li	a5,2
  80:	02f40f63          	beq	s0,a5,be <.L97>
			80: R_RISCV_BRANCH	.L97

00000084 <.L93>:
  84:	00000537          	lui	a0,0x0
			84: R_RISCV_HI20	.LC11
			84: R_RISCV_RELAX	*ABS*
  88:	27e00613          	li	a2,638
  8c:	00090593          	mv	a1,s2
			8c: R_RISCV_LO12_I	.LC0
			8c: R_RISCV_RELAX	*ABS*
  90:	00050513          	mv	a0,a0
			90: R_RISCV_LO12_I	.LC11
			90: R_RISCV_RELAX	*ABS*
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	assert_err
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.L93+0x10>

0000009c <.L96>:
  9c:	8652                	mv	a2,s4
  9e:	85a6                	mv	a1,s1
  a0:	8522                	mv	a0,s0
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	trpc_get_power_idx
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.L96+0x6>

000000aa <.LVL333>:
  aa:	40f2                	lw	ra,28(sp)
  ac:	4462                	lw	s0,24(sp)
  ae:	00a98023          	sb	a0,0(s3)
  b2:	44d2                	lw	s1,20(sp)
  b4:	4942                	lw	s2,16(sp)
  b6:	49b2                	lw	s3,12(sp)

000000b8 <.LVL334>:
  b8:	4a22                	lw	s4,8(sp)
  ba:	6105                	addi	sp,sp,32
  bc:	8082                	ret

000000be <.L97>:
  be:	479d                	li	a5,7
  c0:	fc97e2e3          	bltu	a5,s1,84 <.L93>
			c0: R_RISCV_BRANCH	.L93
  c4:	bfe1                	j	9c <.L96>
			c4: R_RISCV_RVC_JUMP	.L96

Disassembly of section .text.phy_get_rf_gain_capab:

00000000 <phy_get_rf_gain_capab>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	c62e                	sw	a1,12(sp)
   8:	842a                	mv	s0,a0
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	trpc_get_rf_max_power
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <phy_get_rf_gain_capab+0xa>

00000012 <.LVL337>:
  12:	00a40023          	sb	a0,0(s0)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	trpc_get_rf_min_power
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL337+0x4>

0000001e <.LVL338>:
  1e:	45b2                	lw	a1,12(sp)
  20:	00a58023          	sb	a0,0(a1)
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL339>:
  28:	6105                	addi	sp,sp,32

0000002a <.LVL340>:
  2a:	8082                	ret

Disassembly of section .text.bz_phy_reset:

00000000 <bz_phy_reset>:
   0:	400037b7          	lui	a5,0x40003
   4:	8087a683          	lw	a3,-2040(a5) # 40002808 <.LASF594+0x40000511>

00000008 <.LVL342>:
   8:	ff800737          	lui	a4,0xff800
   c:	fff70593          	addi	a1,a4,-1 # ff7fffff <.LASF594+0xff7fdd08>
  10:	00800537          	lui	a0,0x800
  14:	8eed                	and	a3,a3,a1
  16:	8ec9                	or	a3,a3,a0
  18:	80d7a423          	sw	a3,-2040(a5)

0000001c <.LBB895>:
  1c:	8087a603          	lw	a2,-2040(a5)

00000020 <.LVL346>:
  20:	01000737          	lui	a4,0x1000
  24:	fff70693          	addi	a3,a4,-1 # ffffff <.LASF594+0xffdd08>
  28:	8e75                	and	a2,a2,a3
  2a:	08000737          	lui	a4,0x8000
  2e:	8e59                	or	a2,a2,a4
  30:	80c7a423          	sw	a2,-2040(a5)

00000034 <.LBB897>:
  34:	80c7a703          	lw	a4,-2036(a5)

00000038 <.LBB900>:
  38:	04000637          	lui	a2,0x4000

0000003c <.LBB903>:
  3c:	8f6d                	and	a4,a4,a1
  3e:	8f49                	or	a4,a4,a0
  40:	80e7a623          	sw	a4,-2036(a5)

00000044 <.LBB904>:
  44:	80c7a703          	lw	a4,-2036(a5)

00000048 <.LVL354>:
  48:	8f75                	and	a4,a4,a3
  4a:	8f51                	or	a4,a4,a2
  4c:	80e7a623          	sw	a4,-2036(a5)

00000050 <.LBB905>:
  50:	80c7a703          	lw	a4,-2036(a5)

00000054 <.LBB908>:
  54:	7641                	lui	a2,0xffff0
  56:	0ff60613          	addi	a2,a2,255 # ffff00ff <.LASF594+0xfffede08>

0000005a <.LBB911>:
  5a:	f0077713          	andi	a4,a4,-256
  5e:	80e7a623          	sw	a4,-2036(a5)

00000062 <.LBB912>:
  62:	8547a703          	lw	a4,-1964(a5)

00000066 <.LVL361>:
  66:	8f71                	and	a4,a4,a2
  68:	6609                	lui	a2,0x2
  6a:	8f51                	or	a4,a4,a2
  6c:	84e7aa23          	sw	a4,-1964(a5)

00000070 <.LBB913>:
  70:	8547a703          	lw	a4,-1964(a5)

00000074 <.LVL365>:
  74:	8f75                	and	a4,a4,a3
  76:	1e0006b7          	lui	a3,0x1e000
  7a:	8f55                	or	a4,a4,a3
  7c:	84e7aa23          	sw	a4,-1964(a5)

00000080 <.LBB915>:
  80:	8547a703          	lw	a4,-1964(a5)

00000084 <.LVL369>:
  84:	ff0106b7          	lui	a3,0xff010
  88:	16fd                	addi	a3,a3,-1
  8a:	8f75                	and	a4,a4,a3
  8c:	000a06b7          	lui	a3,0xa0
  90:	8f55                	or	a4,a4,a3
  92:	84e7aa23          	sw	a4,-1964(a5)

00000096 <.LBB917>:
  96:	8547a703          	lw	a4,-1964(a5)

0000009a <.LVL373>:
  9a:	f0077713          	andi	a4,a4,-256
  9e:	01e76713          	ori	a4,a4,30
  a2:	84e7aa23          	sw	a4,-1964(a5)

000000a6 <.LBB919>:
  a6:	8107a703          	lw	a4,-2032(a5)

000000aa <.LVL377>:
  aa:	9b79                	andi	a4,a4,-2
  ac:	80e7a823          	sw	a4,-2032(a5)

000000b0 <.LBB921>:
  b0:	8107a703          	lw	a4,-2032(a5)

000000b4 <.LVL380>:
  b4:	00276713          	ori	a4,a4,2

000000b8 <.LVL381>:
  b8:	80e7a823          	sw	a4,-2032(a5)

000000bc <.LBB923>:
  bc:	cac7a703          	lw	a4,-852(a5)

000000c0 <.LVL383>:
  c0:	9b01                	andi	a4,a4,-32
  c2:	00476713          	ori	a4,a4,4
  c6:	cae7a623          	sw	a4,-852(a5)

000000ca <.LBE923>:
  ca:	8082                	ret

Disassembly of section .text.mpif_clk_init:

00000000 <mpif_clk_init>:
   0:	8082                	ret

Disassembly of section .text.phy_mdm_isr:

00000000 <phy_mdm_isr>:
   0:	8082                	ret

Disassembly of section .text.phy_rc_isr:

00000000 <phy_rc_isr>:
   0:	44c0b737          	lui	a4,0x44c0b
   4:	41c72783          	lw	a5,1052(a4) # 44c0b41c <.LASF594+0x44c09125>

00000008 <.LBB927>:
   8:	42f72023          	sw	a5,1056(a4)

0000000c <.LBE927>:
   c:	1007f793          	andi	a5,a5,256

00000010 <.LVL389>:
  10:	c789                	beqz	a5,1a <.L104>
			10: R_RISCV_RVC_BRANCH	.L104
  12:	00000317          	auipc	t1,0x0
			12: R_RISCV_CALL	mdm_reset
			12: R_RISCV_RELAX	*ABS*
  16:	00030067          	jr	t1 # 12 <.LVL389+0x2>

0000001a <.L104>:
  1a:	8082                	ret
