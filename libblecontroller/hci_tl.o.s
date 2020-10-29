
hci_tl.o:     file format elf32-littleriscv


Disassembly of section .text.hci_cmd_reject:

00000000 <hci_cmd_reject>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	84ae                	mv	s1,a1
   a:	8432                	mv	s0,a2
   c:	c925                	beqz	a0,7c <.L2>
   e:	4518                	lw	a4,8(a0)
  10:	c329                	beqz	a4,52 <.L3>

00000012 <.LBB27>:
  12:	00250783          	lb	a5,2(a0)
  16:	0207c563          	bltz	a5,40 <.L4>
  1a:	66c1                	lui	a3,0x10
  1c:	16fd                	addi	a3,a3,-1
  1e:	00e10613          	addi	a2,sp,14

00000022 <.LVL2>:
  22:	4581                	li	a1,0

00000024 <.LVL3>:
  24:	4501                	li	a0,0

00000026 <.LVL4>:
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL4>

0000002e <.L5>:
  2e:	e131                	bnez	a0,72 <.L1>

00000030 <.LBB28>:
  30:	00e15683          	lhu	a3,14(sp)

00000034 <.L9>:
  34:	6505                	lui	a0,0x1
  36:	8626                	mv	a2,s1
  38:	4581                	li	a1,0
  3a:	80150513          	addi	a0,a0,-2047 # 801 <.LLST0+0xb>
  3e:	a005                	j	5e <.L10>

00000040 <.L4>:
  40:	4681                	li	a3,0
  42:	00e10613          	addi	a2,sp,14

00000046 <.LVL8>:
  46:	4581                	li	a1,0

00000048 <.LVL9>:
  48:	4501                	li	a0,0

0000004a <.LVL10>:
  4a:	9702                	jalr	a4

0000004c <.LVL11>:
  4c:	0ff57513          	andi	a0,a0,255

00000050 <.LVL12>:
  50:	bff9                	j	2e <.L5>

00000052 <.L3>:
  52:	6505                	lui	a0,0x1

00000054 <.LVL14>:
  54:	862e                	mv	a2,a1

00000056 <.LVL15>:
  56:	4685                	li	a3,1
  58:	4581                	li	a1,0

0000005a <.LVL16>:
  5a:	80250513          	addi	a0,a0,-2046 # 802 <.LLST0+0xc>

0000005e <.L10>:
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L10>

00000066 <.LVL17>:
  66:	00850023          	sb	s0,0(a0)
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL17+0x4>

00000072 <.L1>:
  72:	40f2                	lw	ra,28(sp)
  74:	4462                	lw	s0,24(sp)
  76:	44d2                	lw	s1,20(sp)
  78:	6105                	addi	sp,sp,32
  7a:	8082                	ret

0000007c <.L2>:
  7c:	4685                	li	a3,1
  7e:	bf5d                	j	34 <.L9>

Disassembly of section .text.hci_tl_send:

00000000 <hci_tl_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	85aa                	mv	a1,a0

0000000a <.LBB52>:
   a:	300024f3          	csrr	s1,mstatus

0000000e <.LBB53>:
   e:	300477f3          	csrrci	a5,mstatus,8

00000012 <.LBE53>:
  12:	00455703          	lhu	a4,4(a0)
  16:	6785                	lui	a5,0x1
  18:	00000537          	lui	a0,0x0

0000001c <.LVL23>:
  1c:	80678793          	addi	a5,a5,-2042 # 806 <.LLST0+0x10>
  20:	00050413          	mv	s0,a0
  24:	00050513          	mv	a0,a0
  28:	00f71463          	bne	a4,a5,30 <.L36>
  2c:	00840513          	addi	a0,s0,8

00000030 <.L36>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.L36>

00000038 <.LVL24>:
  38:	30049073          	csrw	mstatus,s1

0000003c <.LBB55>:
  3c:	01844703          	lbu	a4,24(s0)
  40:	4785                	li	a5,1
  42:	06f71763          	bne	a4,a5,b0 <.L11>

00000046 <.LBB57>:
  46:	4008                	lw	a0,0(s0)

00000048 <.LBE59>:
  48:	e901                	bnez	a0,58 <.L16>
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LBE59+0x2>

00000052 <.LVL27>:
  52:	cd39                	beqz	a0,b0 <.L11>

00000054 <.LBB61>:
  54:	4408                	lw	a0,8(s0)

00000056 <.LBE61>:
  56:	cd29                	beqz	a0,b0 <.L11>

00000058 <.L16>:
  58:	c808                	sw	a0,16(s0)
  5a:	00455783          	lhu	a5,4(a0) # 4 <hci_tl_send+0x4>
  5e:	777d                	lui	a4,0xfffff
  60:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF161+0xffffcc6b>
  64:	97ba                	add	a5,a5,a4
  66:	07c2                	slli	a5,a5,0x10
  68:	83c1                	srli	a5,a5,0x10
  6a:	4715                	li	a4,5
  6c:	04f76063          	bltu	a4,a5,ac <.L18>
  70:	00000737          	lui	a4,0x0
  74:	078a                	slli	a5,a5,0x2
  76:	00070713          	mv	a4,a4
  7a:	97ba                	add	a5,a5,a4
  7c:	439c                	lw	a5,0(a5)
  7e:	8782                	jr	a5

00000080 <.L24>:
  80:	01940783          	lb	a5,25(s0)
  84:	4711                	li	a4,4
  86:	00f74563          	blt	a4,a5,90 <.L25>
  8a:	0785                	addi	a5,a5,1
  8c:	00f40ca3          	sb	a5,25(s0)

00000090 <.L25>:
  90:	01944583          	lbu	a1,25(s0)
  94:	01859793          	slli	a5,a1,0x18
  98:	87e1                	srai	a5,a5,0x18
  9a:	0007d363          	bgez	a5,a0 <.L26>
  9e:	4581                	li	a1,0

000000a0 <.L26>:
  a0:	05e2                	slli	a1,a1,0x18
  a2:	85e1                	srai	a1,a1,0x18
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L26+0x4>

000000ac <.L18>:
  ac:	00040c23          	sb	zero,24(s0)

000000b0 <.L11>:
  b0:	40b2                	lw	ra,12(sp)
  b2:	4422                	lw	s0,8(sp)
  b4:	4492                	lw	s1,4(sp)

000000b6 <.LVL33>:
  b6:	0141                	addi	sp,sp,16
  b8:	8082                	ret

000000ba <.L23>:
  ba:	01940783          	lb	a5,25(s0)
  be:	4711                	li	a4,4
  c0:	00f74563          	blt	a4,a5,ca <.L27>
  c4:	0785                	addi	a5,a5,1
  c6:	00f40ca3          	sb	a5,25(s0)

000000ca <.L27>:
  ca:	473d                	li	a4,15
  cc:	00e503a3          	sb	a4,7(a0)
  d0:	4711                	li	a4,4
  d2:	00855783          	lhu	a5,8(a0)

000000d6 <.LVL36>:
  d6:	00e50423          	sb	a4,8(a0)

000000da <.LVL37>:
  da:	00c54703          	lbu	a4,12(a0)
  de:	00e504a3          	sb	a4,9(a0)

000000e2 <.LVL38>:
  e2:	01944703          	lbu	a4,25(s0)
  e6:	01871693          	slli	a3,a4,0x18
  ea:	86e1                	srai	a3,a3,0x18
  ec:	0006d363          	bgez	a3,f2 <.L28>
  f0:	4701                	li	a4,0

000000f2 <.L28>:
  f2:	00f505a3          	sb	a5,11(a0)
  f6:	83a1                	srli	a5,a5,0x8

000000f8 <.LBE66>:
  f8:	00e50523          	sb	a4,10(a0)

000000fc <.LBB69>:
  fc:	00f50623          	sb	a5,12(a0)

00000100 <.LBE69>:
 100:	b775                	j	ac <.L18>

00000102 <.L22>:
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.L22>

0000010a <.LVL43>:
 10a:	b74d                	j	ac <.L18>

0000010c <.L21>:
 10c:	00000097          	auipc	ra,0x0
 110:	000080e7          	jalr	ra # 10c <.L21>

00000114 <.LVL45>:
 114:	bf61                	j	ac <.L18>

00000116 <.L19>:
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.L19>

0000011e <.LBB81>:
 11e:	b779                	j	ac <.L18>

Disassembly of section .text.hci_tl_init:

00000000 <hci_tl_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	000004b7          	lui	s1,0x0
   c:	00048413          	mv	s0,s1
  10:	e90d                	bnez	a0,42 <.L38>
  12:	000007b7          	lui	a5,0x0
  16:	0007a783          	lw	a5,0(a5) # 0 <hci_tl_init>
  1a:	4671                	li	a2,28
  1c:	4581                	li	a1,0
  1e:	00048513          	mv	a0,s1

00000022 <.LVL49>:
  22:	9782                	jalr	a5

00000024 <.LVL50>:
  24:	00048513          	mv	a0,s1
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL50+0x4>

00000030 <.LVL51>:
  30:	00840513          	addi	a0,s0,8
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL51+0x4>

0000003c <.LVL52>:
  3c:	4785                	li	a5,1
  3e:	00f40c23          	sb	a5,24(s0)

00000042 <.L38>:
  42:	4795                	li	a5,5
  44:	00f40ca3          	sb	a5,25(s0)
  48:	40b2                	lw	ra,12(sp)
  4a:	4422                	lw	s0,8(sp)
  4c:	4492                	lw	s1,4(sp)
  4e:	0141                	addi	sp,sp,16
  50:	8082                	ret

Disassembly of section .text.hci_cmd_get_max_param_size:

00000000 <hci_cmd_get_max_param_size>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <hci_cmd_get_max_param_size+0x4>

0000000c <.LVL54>:
   c:	c511                	beqz	a0,18 <.L42>
   e:	00354503          	lbu	a0,3(a0)

00000012 <.L41>:
  12:	40b2                	lw	ra,12(sp)
  14:	0141                	addi	sp,sp,16
  16:	8082                	ret

00000018 <.L42>:
  18:	0ff00513          	li	a0,255

0000001c <.LVL57>:
  1c:	bfdd                	j	12 <.L41>

Disassembly of section .text.hci_cmd_received:

00000000 <hci_cmd_received>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d422                	sw	s0,40(sp)
   e:	89aa                	mv	s3,a0
  10:	892e                	mv	s2,a1
  12:	8a32                	mv	s4,a2
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <hci_cmd_received+0x14>

0000001c <.LVL59>:
  1c:	00000737          	lui	a4,0x0
  20:	00070713          	mv	a4,a4
  24:	01970783          	lb	a5,25(a4) # 19 <hci_cmd_received+0x19>
  28:	f8000693          	li	a3,-128
  2c:	84aa                	mv	s1,a0

0000002e <.LVL60>:
  2e:	12d78063          	beq	a5,a3,14e <.L45>
  32:	17fd                	addi	a5,a5,-1
  34:	07e2                	slli	a5,a5,0x18
  36:	87e1                	srai	a5,a5,0x18
  38:	00f70ca3          	sb	a5,25(a4)
  3c:	10050a63          	beqz	a0,150 <.L46>
  40:	0607c863          	bltz	a5,b0 <.L47>

00000044 <.LBB90>:
  44:	00254783          	lbu	a5,2(a0)
  48:	4721                	li	a4,8
  4a:	8bbd                	andi	a5,a5,15
  4c:	0ef76763          	bltu	a4,a5,13a <.L44>
  50:	00000737          	lui	a4,0x0
  54:	078a                	slli	a5,a5,0x2
  56:	00070713          	mv	a4,a4
  5a:	97ba                	add	a5,a5,a4
  5c:	439c                	lw	a5,0(a5)
  5e:	8782                	jr	a5

00000060 <.L52>:
  60:	4401                	li	s0,0

00000062 <.L49>:
  62:	00011723          	sh	zero,14(sp)

00000066 <.LVL63>:
  66:	02090863          	beqz	s2,96 <.L55>
  6a:	40d8                	lw	a4,4(s1)
  6c:	c70d                	beqz	a4,96 <.L55>
  6e:	0024c783          	lbu	a5,2(s1) # 2 <hci_cmd_received+0x2>
  72:	01091693          	slli	a3,s2,0x10
  76:	82c1                	srli	a3,a3,0x10
  78:	0407f793          	andi	a5,a5,64
  7c:	00e10613          	addi	a2,sp,14
  80:	efb5                	bnez	a5,fc <.L56>
  82:	4581                	li	a1,0
  84:	4501                	li	a0,0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL63+0x20>

0000008e <.L57>:
  8e:	4785                	li	a5,1
  90:	4649                	li	a2,18
  92:	02f50563          	beq	a0,a5,bc <.L80>

00000096 <.L55>:
  96:	00e15683          	lhu	a3,14(sp)
  9a:	6505                	lui	a0,0x1
  9c:	85a2                	mv	a1,s0
  9e:	864e                	mv	a2,s3
  a0:	80550513          	addi	a0,a0,-2043 # 805 <.LLST0+0xf>
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L55+0xe>

000000ac <.LVL66>:
  ac:	842a                	mv	s0,a0

000000ae <.LVL67>:
  ae:	ed29                	bnez	a0,108 <.L59>

000000b0 <.L47>:
  b0:	461d                	li	a2,7
  b2:	a029                	j	bc <.L80>

000000b4 <.L51>:
  b4:	4785                	li	a5,1
  b6:	0127ea63          	bltu	a5,s2,ca <.L53>

000000ba <.L54>:
  ba:	4609                	li	a2,2

000000bc <.L80>:
  bc:	85ce                	mv	a1,s3
  be:	8526                	mv	a0,s1

000000c0 <.L79>:
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L79>

000000c8 <.LVL72>:
  c8:	a88d                	j	13a <.L44>

000000ca <.L53>:
  ca:	001a4403          	lbu	s0,1(s4)
  ce:	000a4703          	lbu	a4,0(s4)
  d2:	0422                	slli	s0,s0,0x8
  d4:	8c59                	or	s0,s0,a4

000000d6 <.LBE96>:
  d6:	fe87e2e3          	bltu	a5,s0,ba <.L54>
  da:	0422                	slli	s0,s0,0x8

000000dc <.LVL75>:
  dc:	00146413          	ori	s0,s0,1
  e0:	0442                	slli	s0,s0,0x10
  e2:	8041                	srli	s0,s0,0x10
  e4:	8522                	mv	a0,s0
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL75+0xa>

000000ee <.LVL76>:
  ee:	07f00793          	li	a5,127
  f2:	f6f518e3          	bne	a0,a5,62 <.L49>
  f6:	b7d1                	j	ba <.L54>

000000f8 <.L62>:
  f8:	440d                	li	s0,3
  fa:	b7a5                	j	62 <.L49>

000000fc <.L56>:
  fc:	85d2                	mv	a1,s4
  fe:	4501                	li	a0,0
 100:	9702                	jalr	a4

00000102 <.LVL79>:
 102:	0ff57513          	andi	a0,a0,255

00000106 <.LVL80>:
 106:	b761                	j	8e <.L57>

00000108 <.L59>:
 108:	00e15783          	lhu	a5,14(sp)
 10c:	c395                	beqz	a5,130 <.L60>
 10e:	40d8                	lw	a4,4(s1)
 110:	c305                	beqz	a4,130 <.L60>
 112:	0024c783          	lbu	a5,2(s1)
 116:	01091693          	slli	a3,s2,0x10
 11a:	82c1                	srli	a3,a3,0x10
 11c:	0407f793          	andi	a5,a5,64
 120:	00e10613          	addi	a2,sp,14
 124:	85d2                	mv	a1,s4
 126:	e395                	bnez	a5,14a <.L61>

00000128 <.LVL82>:
 128:	00000097          	auipc	ra,0x0
 12c:	000080e7          	jalr	ra # 128 <.LVL82>

00000130 <.L60>:
 130:	8522                	mv	a0,s0
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.L60+0x2>

0000013a <.L44>:
 13a:	50b2                	lw	ra,44(sp)
 13c:	5422                	lw	s0,40(sp)
 13e:	5492                	lw	s1,36(sp)

00000140 <.LVL85>:
 140:	5902                	lw	s2,32(sp)
 142:	49f2                	lw	s3,28(sp)
 144:	4a62                	lw	s4,24(sp)

00000146 <.LVL86>:
 146:	6145                	addi	sp,sp,48
 148:	8082                	ret

0000014a <.L61>:
 14a:	9702                	jalr	a4

0000014c <.LVL88>:
 14c:	b7d5                	j	130 <.L60>

0000014e <.L45>:
 14e:	f12d                	bnez	a0,b0 <.L47>

00000150 <.L46>:
 150:	4605                	li	a2,1
 152:	85ce                	mv	a1,s3
 154:	4501                	li	a0,0
 156:	b7ad                	j	c0 <.L79>

Disassembly of section .text.hci_acl_tx_data_alloc:

00000000 <hci_acl_tx_data_alloc>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	6485                	lui	s1,0x1
   6:	ffe48793          	addi	a5,s1,-2 # ffe <.LASF41+0xd>
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	8fe9                	and	a5,a5,a0
  12:	e3d9                	bnez	a5,98 <.L86>
  14:	00c55793          	srli	a5,a0,0xc
  18:	8bb1                	andi	a5,a5,12
  1a:	efbd                	bnez	a5,98 <.L86>

0000001c <.LVL91>:
  1c:	0fb00793          	li	a5,251
  20:	06b7ec63          	bltu	a5,a1,98 <.L86>
  24:	842e                	mv	s0,a1

00000026 <.LBB103>:
  26:	30002973          	csrr	s2,mstatus

0000002a <.LBB107>:
  2a:	300477f3          	csrrci	a5,mstatus,8

0000002e <.LBE107>:
  2e:	00000537          	lui	a0,0x0

00000032 <.LVL95>:
  32:	00850513          	addi	a0,a0,8 # 8 <hci_acl_tx_data_alloc+0x8>
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL95+0x4>

0000003e <.LVL96>:
  3e:	30091073          	csrw	mstatus,s2

00000042 <.LBE103>:
  42:	000007b7          	lui	a5,0x0
  46:	00a7aa23          	sw	a0,20(a5) # 14 <hci_acl_tx_data_alloc+0x14>
  4a:	cd01                	beqz	a0,62 <.L83>
  4c:	00655503          	lhu	a0,6(a0)
  50:	280087b7          	lui	a5,0x28008
  54:	953e                	add	a0,a0,a5

00000056 <.L81>:
  56:	40b2                	lw	ra,12(sp)
  58:	4422                	lw	s0,8(sp)
  5a:	4492                	lw	s1,4(sp)
  5c:	4902                	lw	s2,0(sp)
  5e:	0141                	addi	sp,sp,16
  60:	8082                	ret

00000062 <.L83>:
  62:	4581                	li	a1,0
  64:	4685                	li	a3,1
  66:	4669                	li	a2,26
  68:	80348513          	addi	a0,s1,-2045
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.L83+0xa>

00000074 <.LVL100>:
  74:	4785                	li	a5,1
  76:	00f50023          	sb	a5,0(a0)
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL100+0x6>

00000082 <.LVL101>:
  82:	8522                	mv	a0,s0

00000084 <.LBE108>:
  84:	4422                	lw	s0,8(sp)
  86:	40b2                	lw	ra,12(sp)
  88:	4492                	lw	s1,4(sp)
  8a:	4902                	lw	s2,0(sp)

0000008c <.LBB109>:
  8c:	4581                	li	a1,0

0000008e <.LBE109>:
  8e:	0141                	addi	sp,sp,16

00000090 <.LBB110>:
  90:	00000317          	auipc	t1,0x0
  94:	00030067          	jr	t1 # 90 <.LBB110>

00000098 <.L86>:
  98:	4501                	li	a0,0

0000009a <.LVL104>:
  9a:	bf75                	j	56 <.L81>

Disassembly of section .text.hci_acl_tx_data_received:

00000000 <hci_acl_tx_data_received>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)

00000004 <.LBB115>:
   4:	000004b7          	lui	s1,0x0

00000008 <.LBE115>:
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)

00000010 <.LBB116>:
  10:	00048793          	mv	a5,s1
  14:	4bdc                	lw	a5,20(a5)
  16:	c3bd                	beqz	a5,7c <.L89>
  18:	842a                	mv	s0,a0
  1a:	6505                	lui	a0,0x1

0000001c <.LVL106>:
  1c:	ffe50793          	addi	a5,a0,-2 # ffe <.LASF41+0xd>
  20:	8fe1                	and	a5,a5,s0
  22:	00048493          	mv	s1,s1
  26:	e3b1                	bnez	a5,6a <.L90>
  28:	fff50913          	addi	s2,a0,-1
  2c:	01247933          	and	s2,s0,s2

00000030 <.LBB112>:
  30:	00891793          	slli	a5,s2,0x8
  34:	0017e793          	ori	a5,a5,1
  38:	89ae                	mv	s3,a1
  3a:	01079593          	slli	a1,a5,0x10

0000003e <.LVL107>:
  3e:	81c1                	srli	a1,a1,0x10
  40:	46b1                	li	a3,12
  42:	4601                	li	a2,0

00000044 <.LVL108>:
  44:	80750513          	addi	a0,a0,-2041
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL108+0x4>

00000050 <.LBE112>:
  50:	8031                	srli	s0,s0,0xc

00000052 <.LBB113>:
  52:	01251023          	sh	s2,0(a0)

00000056 <.LBE113>:
  56:	00850123          	sb	s0,2(a0)

0000005a <.LBB114>:
  5a:	01351223          	sh	s3,4(a0)
  5e:	48d8                	lw	a4,20(s1)
  60:	c518                	sw	a4,8(a0)
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LBB114+0x8>

0000006a <.L90>:
  6a:	40f2                	lw	ra,28(sp)
  6c:	4462                	lw	s0,24(sp)

0000006e <.LBB117>:
  6e:	0004aa23          	sw	zero,20(s1) # 14 <.LBB116+0x4>

00000072 <.LBE117>:
  72:	4942                	lw	s2,16(sp)
  74:	44d2                	lw	s1,20(sp)
  76:	49b2                	lw	s3,12(sp)
  78:	6105                	addi	sp,sp,32
  7a:	8082                	ret

0000007c <.L89>:
  7c:	4462                	lw	s0,24(sp)
  7e:	40f2                	lw	ra,28(sp)
  80:	44d2                	lw	s1,20(sp)
  82:	4942                	lw	s2,16(sp)
  84:	49b2                	lw	s3,12(sp)

00000086 <.LBB119>:
  86:	8532                	mv	a0,a2

00000088 <.LBE119>:
  88:	6105                	addi	sp,sp,32

0000008a <.LBB120>:
  8a:	00000317          	auipc	t1,0x0
  8e:	00030067          	jr	t1 # 8a <.LBB120>
