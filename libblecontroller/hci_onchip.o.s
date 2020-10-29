
hci_onchip.o:     file format elf32-littleriscv


Disassembly of section .text.bt_hcionchip_recv:

00000000 <bt_hcionchip_recv>:
   0:	77fd                	lui	a5,0xfffff
   2:	7ff78793          	addi	a5,a5,2047 # fffff7ff <.LASF107+0xffffe7cc>
   6:	953e                	add	a0,a0,a5

00000008 <.LVL1>:
   8:	0542                	slli	a0,a0,0x10
   a:	8141                	srli	a0,a0,0x10
   c:	4795                	li	a5,5
   e:	04a7e363          	bltu	a5,a0,54 <.L11>
  12:	000007b7          	lui	a5,0x0
  16:	00078793          	mv	a5,a5
  1a:	050a                	slli	a0,a0,0x2
  1c:	953e                	add	a0,a0,a5
  1e:	411c                	lw	a5,0(a0)
  20:	862e                	mv	a2,a1

00000022 <.LVL2>:
  22:	8782                	jr	a5

00000024 <.L7>:
  24:	450d                	li	a0,3

00000026 <.L8>:
  26:	1141                	addi	sp,sp,-16
  28:	c606                	sw	ra,12(sp)
  2a:	000007b7          	lui	a5,0x0
  2e:	85b6                	mv	a1,a3

00000030 <.LVL3>:
  30:	0007a783          	lw	a5,0(a5) # 0 <bt_hcionchip_recv>
  34:	ffe64683          	lbu	a3,-2(a2)

00000038 <.LVL4>:
  38:	4701                	li	a4,0
  3a:	9782                	jalr	a5

0000003c <.LVL5>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4501                	li	a0,0
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

00000044 <.L5>:
  44:	4511                	li	a0,4
  46:	b7c5                	j	26 <.L8>

00000048 <.L6>:
  48:	4515                	li	a0,5
  4a:	bff1                	j	26 <.L8>

0000004c <.L3>:
  4c:	4505                	li	a0,1
  4e:	bfe1                	j	26 <.L8>

00000050 <.L9>:
  50:	4509                	li	a0,2
  52:	bfd1                	j	26 <.L8>

00000054 <.L11>:
  54:	4501                	li	a0,0
  56:	8082                	ret

Disassembly of section .text.bt_onchiphci_interface_init:

00000000 <bt_onchiphci_interface_init>:
   0:	000007b7          	lui	a5,0x0
   4:	000005b7          	lui	a1,0x0
   8:	00a7a023          	sw	a0,0(a5) # 0 <bt_onchiphci_interface_init>
   c:	00058593          	mv	a1,a1
  10:	4511                	li	a0,4

00000012 <.LVL11>:
  12:	00000317          	auipc	t1,0x0
  16:	00030067          	jr	t1 # 12 <.LVL11>

Disassembly of section .text.bt_onchiphci_send:

00000000 <bt_onchiphci_send>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	8432                	mv	s0,a2
   e:	cd09                	beqz	a0,28 <.L15>
  10:	4785                	li	a5,1
  12:	892a                	mv	s2,a0
  14:	0cf50963          	beq	a0,a5,e6 <.L16>

00000018 <.L28>:
  18:	557d                	li	a0,-1

0000001a <.L14>:
  1a:	50b2                	lw	ra,44(sp)
  1c:	5422                	lw	s0,40(sp)

0000001e <.LVL15>:
  1e:	5492                	lw	s1,36(sp)
  20:	5902                	lw	s2,32(sp)
  22:	49f2                	lw	s3,28(sp)
  24:	6145                	addi	sp,sp,48
  26:	8082                	ret

00000028 <.L15>:
  28:	00065503          	lhu	a0,0(a2)

0000002c <.LVL17>:
  2c:	89ae                	mv	s3,a1
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL17+0x2>

00000036 <.LVL18>:
  36:	00844483          	lbu	s1,8(s0)
  3a:	00011323          	sh	zero,6(sp)
  3e:	892a                	mv	s2,a0

00000040 <.LVL19>:
  40:	e4ad                	bnez	s1,aa <.L18>

00000042 <.L21>:
  42:	00615683          	lhu	a3,6(sp)
  46:	00045603          	lhu	a2,0(s0)
  4a:	6505                	lui	a0,0x1
  4c:	85ce                	mv	a1,s3
  4e:	80550513          	addi	a0,a0,-2043 # 805 <.LASF118+0x4>
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.L21+0x10>

0000005a <.LVL21>:
  5a:	89aa                	mv	s3,a0

0000005c <.LVL22>:
  5c:	dd55                	beqz	a0,18 <.L28>
  5e:	00615783          	lhu	a5,6(sp)
  62:	c39d                	beqz	a5,88 <.L24>
  64:	00492703          	lw	a4,4(s2)
  68:	c305                	beqz	a4,88 <.L24>
  6a:	00294783          	lbu	a5,2(s2)
  6e:	01049693          	slli	a3,s1,0x10
  72:	82c1                	srli	a3,a3,0x10
  74:	0407f793          	andi	a5,a5,64
  78:	404c                	lw	a1,4(s0)
  7a:	00610613          	addi	a2,sp,6
  7e:	e3b5                	bnez	a5,e2 <.L25>
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL22+0x24>

00000088 <.L24>:
  88:	4785                	li	a5,1
  8a:	00f10423          	sb	a5,8(sp)
  8e:	c64e                	sw	s3,12(sp)

00000090 <.L26>:
  90:	55fd                	li	a1,-1
  92:	0028                	addi	a0,sp,8
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.L26+0x4>

0000009c <.LVL25>:
  9c:	00154513          	xori	a0,a0,1
  a0:	0ff57513          	andi	a0,a0,255
  a4:	40a00533          	neg	a0,a0
  a8:	bf8d                	j	1a <.L14>

000000aa <.L18>:
  aa:	4158                	lw	a4,4(a0)
  ac:	db59                	beqz	a4,42 <.L21>
  ae:	00254783          	lbu	a5,2(a0)
  b2:	01049693          	slli	a3,s1,0x10
  b6:	82c1                	srli	a3,a3,0x10
  b8:	0407f793          	andi	a5,a5,64
  bc:	00610613          	addi	a2,sp,6
  c0:	eb99                	bnez	a5,d6 <.L22>
  c2:	4581                	li	a1,0
  c4:	4501                	li	a0,0

000000c6 <.LVL27>:
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL27>

000000ce <.L23>:
  ce:	4785                	li	a5,1
  d0:	f6f519e3          	bne	a0,a5,42 <.L21>
  d4:	b791                	j	18 <.L28>

000000d6 <.L22>:
  d6:	404c                	lw	a1,4(s0)
  d8:	4501                	li	a0,0

000000da <.LVL30>:
  da:	9702                	jalr	a4

000000dc <.LVL31>:
  dc:	0ff57513          	andi	a0,a0,255

000000e0 <.LVL32>:
  e0:	b7fd                	j	ce <.L23>

000000e2 <.L25>:
  e2:	9702                	jalr	a4

000000e4 <.LVL34>:
  e4:	b755                	j	88 <.L24>

000000e6 <.L16>:
  e6:	6505                	lui	a0,0x1

000000e8 <.LVL36>:
  e8:	46b1                	li	a3,12
  ea:	4601                	li	a2,0
  ec:	80750513          	addi	a0,a0,-2041 # 807 <.LASF118+0x6>
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LVL36+0x8>

000000f8 <.LVL37>:
  f8:	84aa                	mv	s1,a0
  fa:	dd19                	beqz	a0,18 <.L28>

000000fc <.LBB16>:
  fc:	300029f3          	csrr	s3,mstatus

00000100 <.LBB20>:
 100:	300477f3          	csrrci	a5,mstatus,8

00000104 <.LBE20>:
 104:	00000537          	lui	a0,0x0
 108:	00850513          	addi	a0,a0,8 # 8 <bt_onchiphci_send+0x8>
 10c:	00000097          	auipc	ra,0x0
 110:	000080e7          	jalr	ra # 10c <.LBE20+0x8>

00000114 <.LVL42>:
 114:	30099073          	csrw	mstatus,s3

00000118 <.LBE16>:
 118:	c488                	sw	a0,8(s1)
 11a:	ee050fe3          	beqz	a0,18 <.L28>
 11e:	00045783          	lhu	a5,0(s0)
 122:	28008737          	lui	a4,0x28008
 126:	00f49023          	sh	a5,0(s1)
 12a:	00244783          	lbu	a5,2(s0)
 12e:	00f48123          	sb	a5,2(s1)
 132:	00445603          	lhu	a2,4(s0)
 136:	000007b7          	lui	a5,0x0
 13a:	0007a783          	lw	a5,0(a5) # 0 <bt_onchiphci_send>
 13e:	00c49223          	sh	a2,4(s1)

00000142 <.LVL44>:
 142:	00655503          	lhu	a0,6(a0)

00000146 <.LVL45>:
 146:	440c                	lw	a1,8(s0)
 148:	953a                	add	a0,a0,a4

0000014a <.LVL46>:
 14a:	9782                	jalr	a5

0000014c <.LVL47>:
 14c:	01210423          	sb	s2,8(sp)
 150:	c626                	sw	s1,12(sp)

00000152 <.LBE23>:
 152:	bf3d                	j	90 <.L26>

Disassembly of section .text.bt_onchiphci_hanlde_rx_acl:

00000000 <bt_onchiphci_hanlde_rx_acl>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0
   6:	1551                	addi	a0,a0,-12

00000008 <.LVL49>:
   8:	c606                	sw	ra,12(sp)
   a:	c422                	sw	s0,8(sp)
   c:	c04a                	sw	s2,0(sp)
   e:	892e                	mv	s2,a1
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL49+0x8>

00000018 <.LBB26>:
  18:	00254403          	lbu	s0,2(a0)

0000001c <.LBE26>:
  1c:	000007b7          	lui	a5,0x0
  20:	0007a783          	lw	a5,0(a5) # 0 <bt_onchiphci_hanlde_rx_acl>
  24:	0411                	addi	s0,s0,4
  26:	0ff47413          	andi	s0,s0,255
  2a:	85aa                	mv	a1,a0

0000002c <.LBB29>:
  2c:	8622                	mv	a2,s0
  2e:	854a                	mv	a0,s2

00000030 <.LVL52>:
  30:	9782                	jalr	a5

00000032 <.LVL53>:
  32:	0064c503          	lbu	a0,6(s1)
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL53+0x4>

0000003e <.LVL54>:
  3e:	8522                	mv	a0,s0
  40:	40b2                	lw	ra,12(sp)
  42:	4422                	lw	s0,8(sp)

00000044 <.LVL55>:
  44:	4492                	lw	s1,4(sp)

00000046 <.LVL56>:
  46:	4902                	lw	s2,0(sp)

00000048 <.LVL57>:
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret
