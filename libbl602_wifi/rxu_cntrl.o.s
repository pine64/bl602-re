
rxu_cntrl.o:     file format elf32-littleriscv


Disassembly of section .text.rxu_cntrl_machdr_len_get:

00000000 <rxu_cntrl_machdr_len_get>:
   0:	30057693          	andi	a3,a0,768
   4:	30000713          	li	a4,768
   8:	47e1                	li	a5,24
   a:	00e69363          	bne	a3,a4,10 <.L2>
   e:	47f9                	li	a5,30

00000010 <.L2>:
  10:	0fc57713          	andi	a4,a0,252
  14:	08800693          	li	a3,136
  18:	00d71563          	bne	a4,a3,22 <.L3>
  1c:	0789                	addi	a5,a5,2

0000001e <.LVL2>:
  1e:	0ff7f793          	andi	a5,a5,255

00000022 <.L3>:
  22:	0542                	slli	a0,a0,0x10

00000024 <.LVL4>:
  24:	8541                	srai	a0,a0,0x10
  26:	00055563          	bgez	a0,30 <.L4>
  2a:	0791                	addi	a5,a5,4

0000002c <.LVL5>:
  2c:	0ff7f793          	andi	a5,a5,255

00000030 <.L4>:
  30:	853e                	mv	a0,a5
  32:	8082                	ret

Disassembly of section .text.rxu_cntrl_protected_handle:

00000000 <rxu_cntrl_protected_handle>:
   0:	000007b7          	lui	a5,0x0
   4:	00078713          	mv	a4,a5
   8:	00874683          	lbu	a3,8(a4)
   c:	4005f813          	andi	a6,a1,1024
  10:	4661                	li	a2,24
  12:	89f1                	andi	a1,a1,28

00000014 <.LVL8>:
  14:	9536                	add	a0,a0,a3

00000016 <.LVL9>:
  16:	00078793          	mv	a5,a5
  1a:	08c58863          	beq	a1,a2,aa <.L7>
  1e:	4671                	li	a2,28
  20:	00c58763          	beq	a1,a2,2e <.L8>
  24:	47d1                	li	a5,20
  26:	06f58e63          	beq	a1,a5,a2 <.L9>
  2a:	4501                	li	a0,0

0000002c <.LVL10>:
  2c:	8082                	ret

0000002e <.L8>:
  2e:	04080d63          	beqz	a6,88 <.L11>

00000032 <.LBB112>:
  32:	00255703          	lhu	a4,2(a0)
  36:	06800613          	li	a2,104
  3a:	5d800593          	li	a1,1496
  3e:	8339                	srli	a4,a4,0xe
  40:	02c70733          	mul	a4,a4,a2
  44:	00a7c603          	lbu	a2,10(a5) # a <rxu_cntrl_protected_handle+0xa>
  48:	02b60633          	mul	a2,a2,a1
  4c:	42060613          	addi	a2,a2,1056
  50:	9732                	add	a4,a4,a2
  52:	00000637          	lui	a2,0x0
  56:	00060613          	mv	a2,a2

0000005a <.L15>:
  5a:	9732                	add	a4,a4,a2

0000005c <.LBE113>:
  5c:	06a1                	addi	a3,a3,8
  5e:	d398                	sw	a4,32(a5)
  60:	00d78423          	sb	a3,8(a5)
  64:	00455703          	lhu	a4,4(a0)

00000068 <.LVL17>:
  68:	00055603          	lhu	a2,0(a0)
  6c:	00655683          	lhu	a3,6(a0)
  70:	0742                	slli	a4,a4,0x10
  72:	8f51                	or	a4,a4,a2
  74:	cb98                	sw	a4,16(a5)
  76:	0307c703          	lbu	a4,48(a5)
  7a:	cbd4                	sw	a3,20(a5)
  7c:	00276713          	ori	a4,a4,2
  80:	02e78823          	sb	a4,48(a5)

00000084 <.L17>:
  84:	4505                	li	a0,1

00000086 <.LVL19>:
  86:	8082                	ret

00000088 <.L11>:
  88:	0097c703          	lbu	a4,9(a5)
  8c:	1b000613          	li	a2,432
  90:	02c70733          	mul	a4,a4,a2
  94:	00000637          	lui	a2,0x0
  98:	00060613          	mv	a2,a2
  9c:	04070713          	addi	a4,a4,64
  a0:	bf6d                	j	5a <.L15>

000000a2 <.L9>:
  a2:	0691                	addi	a3,a3,4
  a4:	00d70423          	sb	a3,8(a4)
  a8:	bff1                	j	84 <.L17>

000000aa <.L7>:
  aa:	06a1                	addi	a3,a3,8
  ac:	00d78423          	sb	a3,8(a5)
  b0:	00455703          	lhu	a4,4(a0)
  b4:	00254683          	lbu	a3,2(a0)
  b8:	6641                	lui	a2,0x10
  ba:	0742                	slli	a4,a4,0x10
  bc:	8f55                	or	a4,a4,a3
  be:	00055683          	lhu	a3,0(a0)
  c2:	167d                	addi	a2,a2,-1
  c4:	00655583          	lhu	a1,6(a0)
  c8:	06a2                	slli	a3,a3,0x8
  ca:	8ef1                	and	a3,a3,a2
  cc:	8f55                	or	a4,a4,a3
  ce:	cb98                	sw	a4,16(a5)
  d0:	0307c703          	lbu	a4,48(a5)
  d4:	cbcc                	sw	a1,20(a5)
  d6:	00376713          	ori	a4,a4,3
  da:	02e78823          	sb	a4,48(a5)
  de:	02080963          	beqz	a6,110 <.L13>

000000e2 <.LBB115>:
  e2:	00255703          	lhu	a4,2(a0)
  e6:	06800693          	li	a3,104
  ea:	5d800613          	li	a2,1496
  ee:	8339                	srli	a4,a4,0xe
  f0:	02d70733          	mul	a4,a4,a3
  f4:	00a7c683          	lbu	a3,10(a5)
  f8:	02c686b3          	mul	a3,a3,a2
  fc:	42068693          	addi	a3,a3,1056
 100:	9736                	add	a4,a4,a3
 102:	000006b7          	lui	a3,0x0
 106:	00068693          	mv	a3,a3

0000010a <.L16>:
 10a:	9736                	add	a4,a4,a3

0000010c <.LBE116>:
 10c:	d398                	sw	a4,32(a5)
 10e:	bf9d                	j	84 <.L17>

00000110 <.L13>:
 110:	0097c703          	lbu	a4,9(a5)
 114:	1b000693          	li	a3,432
 118:	02d70733          	mul	a4,a4,a3
 11c:	000006b7          	lui	a3,0x0
 120:	00068693          	mv	a3,a3
 124:	04070713          	addi	a4,a4,64
 128:	b7cd                	j	10a <.L16>

Disassembly of section .text.rxu_mpdu_upload_and_indicate.constprop.11:

00000000 <rxu_mpdu_upload_and_indicate.constprop.11>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c452                	sw	s4,8(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c256                	sw	s5,4(sp)
  14:	00048913          	mv	s2,s1
  18:	00994783          	lbu	a5,9(s2)
  1c:	00a94703          	lbu	a4,10(s2)
  20:	4154                	lw	a3,4(a0)

00000022 <.LVL33>:
  22:	07c2                	slli	a5,a5,0x10
  24:	0722                	slli	a4,a4,0x8
  26:	8fd9                	or	a5,a5,a4
  28:	46f8                	lw	a4,76(a3)
  2a:	02090923          	sb	zero,50(s2)
  2e:	842a                	mv	s0,a0
  30:	8fd9                	or	a5,a5,a4
  32:	0027e793          	ori	a5,a5,2
  36:	c6fc                	sw	a5,76(a3)

00000038 <.LBB130>:
  38:	415c                	lw	a5,4(a0)
  3a:	00048493          	mv	s1,s1
  3e:	0087aa83          	lw	s5,8(a5)

00000042 <.LVL35>:
  42:	018aa783          	lw	a5,24(s5)
  46:	0007c503          	lbu	a0,0(a5)

0000004a <.LVL36>:
  4a:	0017c783          	lbu	a5,1(a5)
  4e:	07a2                	slli	a5,a5,0x8
  50:	8d5d                	or	a0,a0,a5
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL36+0x8>

0000005a <.LVL37>:
  5a:	00894a03          	lbu	s4,8(s2)
  5e:	40aa0933          	sub	s2,s4,a0
  62:	0ff97913          	andi	s2,s2,255

00000066 <.LVL38>:
  66:	06090963          	beqz	s2,d8 <.L19>
  6a:	00197793          	andi	a5,s2,1
  6e:	89aa                	mv	s3,a0
  70:	cf99                	beqz	a5,8e <.L20>
  72:	000005b7          	lui	a1,0x0
  76:	00000537          	lui	a0,0x0

0000007a <.LVL39>:
  7a:	16700613          	li	a2,359
  7e:	00058593          	mv	a1,a1
  82:	00050513          	mv	a0,a0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL39+0xc>

0000008e <.L20>:
  8e:	80000737          	lui	a4,0x80000
  92:	fff74693          	not	a3,a4
  96:	0084c703          	lbu	a4,8(s1) # 8 <rxu_mpdu_upload_and_indicate.constprop.11+0x8>
  9a:	0019d793          	srli	a5,s3,0x1
  9e:	018aa603          	lw	a2,24(s5)

000000a2 <.LVL41>:
  a2:	0ff7f793          	andi	a5,a5,255
  a6:	8305                	srli	a4,a4,0x1
  a8:	97b6                	add	a5,a5,a3
  aa:	9736                	add	a4,a4,a3
  ac:	0786                	slli	a5,a5,0x1
  ae:	0706                	slli	a4,a4,0x1
  b0:	97b2                	add	a5,a5,a2

000000b2 <.LVL42>:
  b2:	9732                	add	a4,a4,a2

000000b4 <.L21>:
  b4:	06c7fe63          	bgeu	a5,a2,130 <.L22>
  b8:	405c                	lw	a5,4(s0)

000000ba <.LVL44>:
  ba:	01c7d703          	lhu	a4,28(a5)

000000be <.LVL45>:
  be:	41270733          	sub	a4,a4,s2
  c2:	00e79e23          	sh	a4,28(a5)
  c6:	0084c783          	lbu	a5,8(s1)
  ca:	03248923          	sb	s2,50(s1)
  ce:	414787b3          	sub	a5,a5,s4
  d2:	99be                	add	s3,s3,a5
  d4:	01348423          	sb	s3,8(s1)

000000d8 <.L19>:
  d8:	000007b7          	lui	a5,0x0
  dc:	8522                	mv	a0,s0
  de:	0007a023          	sw	zero,0(a5) # 0 <rxu_mpdu_upload_and_indicate.constprop.11>
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.L19+0xa>

000000ea <.LBB133>:
  ea:	30047073          	csrci	mstatus,8

000000ee <.LBE133>:
  ee:	44b8                	lw	a4,72(s1)

000000f0 <.LBB135>:
  f0:	405c                	lw	a5,4(s0)

000000f2 <.LVL49>:
  f2:	468d                	li	a3,3
  f4:	00d40e23          	sb	a3,28(s0)
  f8:	c858                	sw	a4,20(s0)
  fa:	01c7d783          	lhu	a5,28(a5)

000000fe <.LVL50>:
  fe:	cc1c                	sw	a5,24(s0)

00000100 <.LBB137>:
 100:	30047073          	csrci	mstatus,8

00000104 <.LBE137>:
 104:	00000537          	lui	a0,0x0
 108:	85a2                	mv	a1,s0
 10a:	04050513          	addi	a0,a0,64 # 40 <.LBB130+0x8>
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.LBE137+0xa>

00000116 <.LBB139>:
 116:	30046073          	csrsi	mstatus,8

0000011a <.LBB141>:
 11a:	30046073          	csrsi	mstatus,8

0000011e <.LBE141>:
 11e:	40f2                	lw	ra,28(sp)
 120:	4462                	lw	s0,24(sp)

00000122 <.LVL53>:
 122:	44d2                	lw	s1,20(sp)
 124:	4942                	lw	s2,16(sp)
 126:	49b2                	lw	s3,12(sp)
 128:	4a22                	lw	s4,8(sp)
 12a:	4a92                	lw	s5,4(sp)
 12c:	6105                	addi	sp,sp,32
 12e:	8082                	ret

00000130 <.L22>:
 130:	17f9                	addi	a5,a5,-2
 132:	0027d683          	lhu	a3,2(a5)
 136:	1779                	addi	a4,a4,-2
 138:	00d71123          	sh	a3,2(a4) # 80000002 <.LASF1508+0x7fffab2a>
 13c:	bfa5                	j	b4 <.L21>

Disassembly of section .text.rxu_mgt_frame_check:

00000000 <rxu_mgt_frame_check>:
   0:	711d                	addi	sp,sp,-96
   2:	ce86                	sw	ra,92(sp)
   4:	cca2                	sw	s0,88(sp)
   6:	caa6                	sw	s1,84(sp)
   8:	c8ca                	sw	s2,80(sp)
   a:	c6ce                	sw	s3,76(sp)
   c:	c4d2                	sw	s4,72(sp)
   e:	c2d6                	sw	s5,68(sp)
  10:	c0da                	sw	s6,64(sp)
  12:	de5e                	sw	s7,60(sp)
  14:	dc62                	sw	s8,56(sp)
  16:	da66                	sw	s9,52(sp)
  18:	d86a                	sw	s10,48(sp)
  1a:	d66e                	sw	s11,44(sp)
  1c:	00452a83          	lw	s5,4(a0)

00000020 <.LVL58>:
  20:	00010ba3          	sb	zero,23(sp)
  24:	008aa783          	lw	a5,8(s5)
  28:	4f80                	lw	s0,24(a5)

0000002a <.LVL59>:
  2a:	00144703          	lbu	a4,1(s0)
  2e:	00044783          	lbu	a5,0(s0)
  32:	0722                	slli	a4,a4,0x8
  34:	8f5d                	or	a4,a4,a5
  36:	40077793          	andi	a5,a4,1024
  3a:	16079763          	bnez	a5,1a8 <.L73>
  3e:	01644783          	lbu	a5,22(s0)
  42:	4a05                	li	s4,1
  44:	8bbd                	andi	a5,a5,15
  46:	32079163          	bnez	a5,368 <.L102>
  4a:	0ff00793          	li	a5,255
  4e:	0cf59763          	bne	a1,a5,11c <.L32>

00000052 <.LBB173>:
  52:	040aa683          	lw	a3,64(s5)
  56:	6006f693          	andi	a3,a3,1536
  5a:	eecd                	bnez	a3,114 <.L33>

0000005c <.LBB175>:
  5c:	000007b7          	lui	a5,0x0
  60:	0087a683          	lw	a3,8(a5) # 8 <rxu_mgt_frame_check+0x8>

00000064 <.LBB178>:
  64:	0b000793          	li	a5,176
  68:	00f70463          	beq	a4,a5,70 <.L34>
  6c:	4785                	li	a5,1
  6e:	e739                	bnez	a4,bc <.L35>

00000070 <.L34>:
  70:	00444603          	lbu	a2,4(s0)
  74:	01044703          	lbu	a4,16(s0)
  78:	4785                	li	a5,1
  7a:	04e61163          	bne	a2,a4,bc <.L35>
  7e:	00544603          	lbu	a2,5(s0)
  82:	01144703          	lbu	a4,17(s0)
  86:	02e61b63          	bne	a2,a4,bc <.L35>
  8a:	00644603          	lbu	a2,6(s0)
  8e:	01244703          	lbu	a4,18(s0)
  92:	02e61563          	bne	a2,a4,bc <.L35>
  96:	00744603          	lbu	a2,7(s0)
  9a:	01344703          	lbu	a4,19(s0)
  9e:	00e61f63          	bne	a2,a4,bc <.L35>
  a2:	00844603          	lbu	a2,8(s0)
  a6:	01444703          	lbu	a4,20(s0)
  aa:	00e61963          	bne	a2,a4,bc <.L35>
  ae:	00944783          	lbu	a5,9(s0)
  b2:	01544703          	lbu	a4,21(s0)
  b6:	8f99                	sub	a5,a5,a4
  b8:	00f037b3          	snez	a5,a5

000000bc <.L35>:
  bc:	4609                	li	a2,2
  be:	a8dd                	j	1b4 <.L39>

000000c0 <.L40>:
  c0:	0506c803          	lbu	a6,80(a3) # 50 <.LVL59+0x26>
  c4:	00444703          	lbu	a4,4(s0)
  c8:	0ee81563          	bne	a6,a4,1b2 <.L36>
  cc:	0516c803          	lbu	a6,81(a3)
  d0:	00544703          	lbu	a4,5(s0)
  d4:	0ce81f63          	bne	a6,a4,1b2 <.L36>
  d8:	0526c803          	lbu	a6,82(a3)
  dc:	00644703          	lbu	a4,6(s0)
  e0:	0ce81963          	bne	a6,a4,1b2 <.L36>
  e4:	0536c803          	lbu	a6,83(a3)
  e8:	00744703          	lbu	a4,7(s0)
  ec:	0ce81363          	bne	a6,a4,1b2 <.L36>
  f0:	0546c803          	lbu	a6,84(a3)
  f4:	00844703          	lbu	a4,8(s0)
  f8:	0ae81d63          	bne	a6,a4,1b2 <.L36>
  fc:	0556c803          	lbu	a6,85(a3)
 100:	00944703          	lbu	a4,9(s0)
 104:	0ae81763          	bne	a6,a4,1b2 <.L36>
 108:	0566c703          	lbu	a4,86(a3)
 10c:	e345                	bnez	a4,1ac <.L37>
 10e:	c3d5                	beqz	a5,1b2 <.L36>

00000110 <.L38>:
 110:	0576c783          	lbu	a5,87(a3)

00000114 <.L33>:
 114:	00000737          	lui	a4,0x0
 118:	00f70523          	sb	a5,10(a4) # a <rxu_mgt_frame_check+0xa>

0000011c <.L32>:
 11c:	c62a                	sw	a0,12(sp)
 11e:	892e                	mv	s2,a1
 120:	028a8513          	addi	a0,s5,40

00000124 <.LVL65>:
 124:	01710593          	addi	a1,sp,23

00000128 <.LVL66>:
 128:	00000097          	auipc	ra,0x0
 12c:	000080e7          	jalr	ra # 128 <.LVL66>

00000130 <.LVL67>:
 130:	00144c03          	lbu	s8,1(s0)
 134:	00044783          	lbu	a5,0(s0)
 138:	00000bb7          	lui	s7,0x0
 13c:	0c22                	slli	s8,s8,0x8
 13e:	00fc6c33          	or	s8,s8,a5
 142:	000b8793          	mv	a5,s7
 146:	0087cc83          	lbu	s9,8(a5)

0000014a <.LBB185>:
 14a:	00a7c783          	lbu	a5,10(a5)
 14e:	0ff00713          	li	a4,255

00000152 <.LBE185>:
 152:	01710d83          	lb	s11,23(sp)

00000156 <.LBB245>:
 156:	01cad983          	lhu	s3,28(s5)

0000015a <.LBB225>:
 15a:	000b8b93          	mv	s7,s7
 15e:	04e78e63          	beq	a5,a4,1ba <.L41>

00000162 <.L110>:
 162:	5d800713          	li	a4,1496
 166:	02e787b3          	mul	a5,a5,a4
 16a:	00000737          	lui	a4,0x0
 16e:	00070713          	mv	a4,a4
 172:	00e78d33          	add	s10,a5,a4

00000176 <.LVL70>:
 176:	056d4703          	lbu	a4,86(s10)

0000017a <.L42>:
 17a:	0fcc7493          	andi	s1,s8,252
 17e:	05000693          	li	a3,80
 182:	0ed48363          	beq	s1,a3,268 <.L43>
 186:	0696ec63          	bltu	a3,s1,1fe <.L44>
 18a:	02000693          	li	a3,32
 18e:	06d48163          	beq	s1,a3,1f0 <.L45>
 192:	0496e763          	bltu	a3,s1,1e0 <.L46>
 196:	cca9                	beqz	s1,1f0 <.L45>
 198:	47c1                	li	a5,16
 19a:	0cf48363          	beq	s1,a5,260 <.L47>

0000019e <.L48>:
 19e:	4532                	lw	a0,12(sp)
 1a0:	00000097          	auipc	ra,0x0
 1a4:	000080e7          	jalr	ra # 1a0 <.L48+0x2>

000001a8 <.L73>:
 1a8:	4a05                	li	s4,1
 1aa:	aa7d                	j	368 <.L102>

000001ac <.L37>:
 1ac:	00c71363          	bne	a4,a2,1b2 <.L36>
 1b0:	d3a5                	beqz	a5,110 <.L38>

000001b2 <.L36>:
 1b2:	4294                	lw	a3,0(a3)

000001b4 <.L39>:
 1b4:	f691                	bnez	a3,c0 <.L40>

000001b6 <.LBE180>:
 1b6:	87ae                	mv	a5,a1

000001b8 <.LVL76>:
 1b8:	bfb1                	j	114 <.L33>

000001ba <.L41>:
 1ba:	02f90063          	beq	s2,a5,1da <.L82>
 1be:	1b000713          	li	a4,432
 1c2:	02e90733          	mul	a4,s2,a4
 1c6:	000007b7          	lui	a5,0x0
 1ca:	00078793          	mv	a5,a5
 1ce:	97ba                	add	a5,a5,a4
 1d0:	01a7c783          	lbu	a5,26(a5) # 1a <rxu_mgt_frame_check+0x1a>
 1d4:	00fb8523          	sb	a5,10(s7) # a <rxu_mgt_frame_check+0xa>
 1d8:	b769                	j	162 <.L110>

000001da <.L82>:
 1da:	4711                	li	a4,4
 1dc:	4d01                	li	s10,0
 1de:	bf71                	j	17a <.L42>

000001e0 <.L46>:
 1e0:	03000693          	li	a3,48
 1e4:	06d48e63          	beq	s1,a3,260 <.L47>
 1e8:	04000713          	li	a4,64

000001ec <.LVL79>:
 1ec:	fae499e3          	bne	s1,a4,19e <.L48>

000001f0 <.L45>:
 1f0:	856a                	mv	a0,s10
 1f2:	00000097          	auipc	ra,0x0
 1f6:	000080e7          	jalr	ra # 1f2 <.L45+0x2>

000001fa <.LVL80>:
 1fa:	ed61                	bnez	a0,2d2 <.L60>
 1fc:	b74d                	j	19e <.L48>

000001fe <.L44>:
 1fe:	0b000693          	li	a3,176
 202:	02d48163          	beq	s1,a3,224 <.L49>
 206:	0296e163          	bltu	a3,s1,228 <.L50>
 20a:	08000693          	li	a3,128
 20e:	06d48263          	beq	s1,a3,272 <.L51>
 212:	0a000693          	li	a3,160
 216:	f8d494e3          	bne	s1,a3,19e <.L48>

0000021a <.L52>:
 21a:	0ff00693          	li	a3,255
 21e:	4a01                	li	s4,0
 220:	14d90463          	beq	s2,a3,368 <.L102>

00000224 <.L49>:
 224:	cf1d                	beqz	a4,262 <.L87>
 226:	b7e9                	j	1f0 <.L45>

00000228 <.L50>:
 228:	0c000693          	li	a3,192
 22c:	fed487e3          	beq	s1,a3,21a <.L52>
 230:	0d000793          	li	a5,208
 234:	f6f495e3          	bne	s1,a5,19e <.L48>

00000238 <.LBB189>:
 238:	0ff00793          	li	a5,255
 23c:	019406b3          	add	a3,s0,s9

00000240 <.LBB191>:
 240:	f4f90fe3          	beq	s2,a5,19e <.L48>

00000244 <.LBB194>:
 244:	0006c783          	lbu	a5,0(a3)

00000248 <.LBE194>:
 248:	471d                	li	a4,7

0000024a <.LVL84>:
 24a:	0ae78763          	beq	a5,a4,2f8 <.L61>
 24e:	4721                	li	a4,8
 250:	12e78c63          	beq	a5,a4,388 <.L62>
 254:	470d                	li	a4,3
 256:	f4e794e3          	bne	a5,a4,19e <.L48>
 25a:	4a21                	li	s4,8

0000025c <.L63>:
 25c:	4b01                	li	s6,0
 25e:	a8a5                	j	2d6 <.L54>

00000260 <.L47>:
 260:	ff1d                	bnez	a4,19e <.L48>

00000262 <.L87>:
 262:	4b01                	li	s6,0

00000264 <.LBB228>:
 264:	4a19                	li	s4,6
 266:	a885                	j	2d6 <.L54>

00000268 <.L43>:
 268:	f20d0be3          	beqz	s10,19e <.L48>
 26c:	4b05                	li	s6,1
 26e:	4a11                	li	s4,4
 270:	a09d                	j	2d6 <.L54>

00000272 <.L51>:
 272:	4511                	li	a0,4
 274:	00000097          	auipc	ra,0x0
 278:	000080e7          	jalr	ra # 274 <.L51+0x2>

0000027c <.LVL87>:
 27c:	4705                	li	a4,1
 27e:	02e51863          	bne	a0,a4,2ae <.L85>
 282:	4b05                	li	s6,1
 284:	4a11                	li	s4,4

00000286 <.L56>:
 286:	0ff00713          	li	a4,255
 28a:	02e90663          	beq	s2,a4,2b6 <.L57>
 28e:	058d4783          	lbu	a5,88(s10)
 292:	cb89                	beqz	a5,2a4 <.L59>
 294:	00abc503          	lbu	a0,10(s7)
 298:	8622                	mv	a2,s0
 29a:	85ce                	mv	a1,s3
 29c:	00000097          	auipc	ra,0x0
 2a0:	000080e7          	jalr	ra # 29c <.L56+0x16>

000002a4 <.L59>:
 2a4:	0ff00793          	li	a5,255
 2a8:	02fa1763          	bne	s4,a5,2d6 <.L54>
 2ac:	bdcd                	j	19e <.L48>

000002ae <.L85>:
 2ae:	4b01                	li	s6,0
 2b0:	0ff00a13          	li	s4,255
 2b4:	bfc9                	j	286 <.L56>

000002b6 <.L57>:
 2b6:	4511                	li	a0,4
 2b8:	00000097          	auipc	ra,0x0
 2bc:	000080e7          	jalr	ra # 2b8 <.L57+0x2>

000002c0 <.LVL92>:
 2c0:	4705                	li	a4,1
 2c2:	fee501e3          	beq	a0,a4,2a4 <.L59>
 2c6:	856a                	mv	a0,s10
 2c8:	00000097          	auipc	ra,0x0
 2cc:	000080e7          	jalr	ra # 2c8 <.LVL92+0x8>

000002d0 <.LVL93>:
 2d0:	d971                	beqz	a0,2a4 <.L59>

000002d2 <.L60>:
 2d2:	4b05                	li	s6,1
 2d4:	4a1d                	li	s4,7

000002d6 <.L54>:
 2d6:	01c98693          	addi	a3,s3,28
 2da:	06c2                	slli	a3,a3,0x10
 2dc:	650d                	lui	a0,0x3
 2de:	82c1                	srli	a3,a3,0x10
 2e0:	462d                	li	a2,11
 2e2:	85d2                	mv	a1,s4
 2e4:	c0050513          	addi	a0,a0,-1024 # 2c00 <.LASF847+0xc>
 2e8:	00000097          	auipc	ra,0x0
 2ec:	000080e7          	jalr	ra # 2e8 <.L54+0x12>

000002f0 <.LVL96>:
 2f0:	8d2a                	mv	s10,a0

000002f2 <.LVL97>:
 2f2:	e969                	bnez	a0,3c4 <.L67>

000002f4 <.L113>:
 2f4:	4a01                	li	s4,0
 2f6:	a88d                	j	368 <.L102>

000002f8 <.L61>:
 2f8:	0016c783          	lbu	a5,1(a3)

000002fc <.LBE196>:
 2fc:	c3a9                	beqz	a5,33e <.L64>
 2fe:	4705                	li	a4,1
 300:	e8e79fe3          	bne	a5,a4,19e <.L48>

00000304 <.LBB198>:
 304:	1b000713          	li	a4,432
 308:	02e90733          	mul	a4,s2,a4
 30c:	000007b7          	lui	a5,0x0

00000310 <.LVL102>:
 310:	00078793          	mv	a5,a5
 314:	4a01                	li	s4,0
 316:	97ba                	add	a5,a5,a4
 318:	0ec7a783          	lw	a5,236(a5) # ec <.L40+0x2c>
 31c:	8b89                	andi	a5,a5,2
 31e:	c7a9                	beqz	a5,368 <.L102>

00000320 <.LBB199>:
 320:	0026c783          	lbu	a5,2(a3)
 324:	0ff00613          	li	a2,255
 328:	8b85                	andi	a5,a5,1
 32a:	c391                	beqz	a5,32e <.L112>
 32c:	4601                	li	a2,0

0000032e <.L112>:
 32e:	0ff00593          	li	a1,255

00000332 <.L111>:
 332:	854a                	mv	a0,s2
 334:	00000097          	auipc	ra,0x0
 338:	000080e7          	jalr	ra # 334 <.L111+0x2>

0000033c <.LBE195>:
 33c:	a035                	j	368 <.L102>

0000033e <.L64>:
 33e:	1b000713          	li	a4,432
 342:	02e90733          	mul	a4,s2,a4
 346:	000007b7          	lui	a5,0x0

0000034a <.LVL107>:
 34a:	00078793          	mv	a5,a5
 34e:	4a01                	li	s4,0
 350:	97ba                	add	a5,a5,a4
 352:	0ec7a783          	lw	a5,236(a5) # ec <.L40+0x2c>
 356:	8b89                	andi	a5,a5,2
 358:	cb81                	beqz	a5,368 <.L102>

0000035a <.LBB206>:
 35a:	0026c583          	lbu	a1,2(a3)

0000035e <.LBE206>:
 35e:	4785                	li	a5,1
 360:	0ff00613          	li	a2,255
 364:	fcb7f7e3          	bgeu	a5,a1,332 <.L111>

00000368 <.L102>:
 368:	40f6                	lw	ra,92(sp)
 36a:	4466                	lw	s0,88(sp)
 36c:	8552                	mv	a0,s4
 36e:	44d6                	lw	s1,84(sp)
 370:	4946                	lw	s2,80(sp)
 372:	49b6                	lw	s3,76(sp)
 374:	4a26                	lw	s4,72(sp)
 376:	4a96                	lw	s5,68(sp)

00000378 <.LVL109>:
 378:	4b06                	lw	s6,64(sp)
 37a:	5bf2                	lw	s7,60(sp)
 37c:	5c62                	lw	s8,56(sp)
 37e:	5cd2                	lw	s9,52(sp)
 380:	5d42                	lw	s10,48(sp)
 382:	5db2                	lw	s11,44(sp)
 384:	6125                	addi	sp,sp,96
 386:	8082                	ret

00000388 <.L62>:
 388:	419987b3          	sub	a5,s3,s9
 38c:	470d                	li	a4,3
 38e:	4a01                	li	s4,0
 390:	fcf75ce3          	bge	a4,a5,368 <.L102>
 394:	00abc703          	lbu	a4,10(s7)
 398:	0ff00793          	li	a5,255
 39c:	e0f701e3          	beq	a4,a5,19e <.L48>

000003a0 <.LBB209>:
 3a0:	5d800613          	li	a2,1496
 3a4:	02c70733          	mul	a4,a4,a2
 3a8:	000007b7          	lui	a5,0x0
 3ac:	00078793          	mv	a5,a5
 3b0:	97ba                	add	a5,a5,a4
 3b2:	0567c783          	lbu	a5,86(a5) # 56 <.LBB173+0x4>
 3b6:	0016c703          	lbu	a4,1(a3)
 3ba:	8fd9                	or	a5,a5,a4
 3bc:	de0791e3          	bnez	a5,19e <.L48>
 3c0:	4a19                	li	s4,6
 3c2:	bd69                	j	25c <.L63>

000003c4 <.L67>:
 3c4:	4581                	li	a1,0
 3c6:	0828                	addi	a0,sp,24

000003c8 <.LVL114>:
 3c8:	00000097          	auipc	ra,0x0
 3cc:	000080e7          	jalr	ra # 3c8 <.LVL114>

000003d0 <.LVL115>:
 3d0:	020b1963          	bnez	s6,402 <.L68>
 3d4:	001cf793          	andi	a5,s9,1
 3d8:	cf99                	beqz	a5,3f6 <.L69>
 3da:	000005b7          	lui	a1,0x0
 3de:	00000537          	lui	a0,0x0
 3e2:	64d00613          	li	a2,1613
 3e6:	00058593          	mv	a1,a1
 3ea:	00050513          	mv	a0,a0
 3ee:	00000097          	auipc	ra,0x0
 3f2:	000080e7          	jalr	ra # 3ee <.LVL115+0x1e>

000003f6 <.L69>:
 3f6:	419989b3          	sub	s3,s3,s9

000003fa <.LVL117>:
 3fa:	09c2                	slli	s3,s3,0x10
 3fc:	0109d993          	srli	s3,s3,0x10

00000400 <.LVL118>:
 400:	9466                	add	s0,s0,s9

00000402 <.L68>:
 402:	013d1023          	sh	s3,0(s10)

00000406 <.LBB231>:
 406:	098d                	addi	s3,s3,3

00000408 <.LVL121>:
 408:	ffc9f993          	andi	s3,s3,-4
 40c:	4781                	li	a5,0

0000040e <.L70>:
 40e:	06f99163          	bne	s3,a5,470 <.L71>

00000412 <.LBE231>:
 412:	00abc783          	lbu	a5,10(s7)
 416:	018d1123          	sh	s8,2(s10)
 41a:	012d03a3          	sb	s2,7(s10)
 41e:	00fd0423          	sb	a5,8(s10)
 422:	47e2                	lw	a5,24(sp)
 424:	01bd0d23          	sb	s11,26(s10)
 428:	01bd0ca3          	sb	s11,25(s10)
 42c:	0107d713          	srli	a4,a5,0x10
 430:	00ed1223          	sh	a4,4(s10)
 434:	00fd0323          	sb	a5,6(s10)
 438:	033a8783          	lb	a5,51(s5)
 43c:	00fd0c23          	sb	a5,24(s10)
 440:	479d                	li	a5,7
 442:	02fa1163          	bne	s4,a5,464 <.L72>
 446:	ec99                	bnez	s1,464 <.L72>
 448:	020aa783          	lw	a5,32(s5)
 44c:	00fd2823          	sw	a5,16(s10)
 450:	024aa783          	lw	a5,36(s5)
 454:	00fd2a23          	sw	a5,20(s10)
 458:	028aa783          	lw	a5,40(s5)
 45c:	83b1                	srli	a5,a5,0xc
 45e:	8bbd                	andi	a5,a5,15
 460:	00fd0da3          	sb	a5,27(s10)

00000464 <.L72>:
 464:	856a                	mv	a0,s10
 466:	00000097          	auipc	ra,0x0
 46a:	000080e7          	jalr	ra # 466 <.L72+0x2>

0000046e <.LVL124>:
 46e:	b559                	j	2f4 <.L113>

00000470 <.L71>:
 470:	00f40733          	add	a4,s0,a5
 474:	4314                	lw	a3,0(a4)
 476:	00fd0733          	add	a4,s10,a5
 47a:	0791                	addi	a5,a5,4

0000047c <.LVL126>:
 47c:	cf54                	sw	a3,28(a4)
 47e:	bf41                	j	40e <.L70>

Disassembly of section .text.rxu_cntrl_init:

00000000 <rxu_cntrl_init>:
   0:	00000537          	lui	a0,0x0
   4:	1141                	addi	sp,sp,-16
   6:	04050513          	addi	a0,a0,64 # 40 <.LVL129+0xc>
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <rxu_cntrl_init+0xc>

00000014 <.LVL127>:
  14:	00000537          	lui	a0,0x0
  18:	03850513          	addi	a0,a0,56 # 38 <.LVL129+0x4>
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL127+0x8>

00000024 <.LVL128>:
  24:	00000537          	lui	a0,0x0
  28:	04c50513          	addi	a0,a0,76 # 4c <.LVL130+0x8>
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL128+0x8>

00000034 <.LVL129>:
  34:	00000537          	lui	a0,0x0
  38:	05450513          	addi	a0,a0,84 # 54 <.LFE2028>
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL129+0x8>

00000044 <.LVL130>:
  44:	40b2                	lw	ra,12(sp)
  46:	000007b7          	lui	a5,0x0
  4a:	577d                	li	a4,-1
  4c:	06e79123          	sh	a4,98(a5) # 62 <.LBE113+0x6>
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

Disassembly of section .text.rxu_cntrl_frame_handle:

00000000 <rxu_cntrl_frame_handle>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	c686                	sw	ra,76(sp)
   6:	c2a6                	sw	s1,68(sp)
   8:	c0ca                	sw	s2,64(sp)
   a:	de4e                	sw	s3,60(sp)
   c:	dc52                	sw	s4,56(sp)
   e:	da56                	sw	s5,52(sp)
  10:	d85a                	sw	s6,48(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	d462                	sw	s8,40(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	00452b03          	lw	s6,4(a0)

0000001e <.LVL132>:
  1e:	00000437          	lui	s0,0x0
  22:	00040413          	mv	s0,s0
  26:	040b2a83          	lw	s5,64(s6)

0000002a <.LVL133>:
  2a:	012a9793          	slli	a5,s5,0x12
  2e:	0007c463          	bltz	a5,36 <.L117>

00000032 <.L227>:
  32:	4981                	li	s3,0
  34:	a4a1                	j	27c <.L118>

00000036 <.L117>:
  36:	008b2783          	lw	a5,8(s6)
  3a:	892a                	mv	s2,a0
  3c:	4784                	lw	s1,8(a5)

0000003e <.LBB395>:
  3e:	57fd                	li	a5,-1

00000040 <.LBB398>:
  40:	0004dc03          	lhu	s8,0(s1)

00000044 <.LBE398>:
  44:	040b2623          	sw	zero,76(s6)
  48:	00f404a3          	sb	a5,9(s0) # 9 <rxu_cntrl_frame_handle+0x9>
  4c:	00f40523          	sb	a5,10(s0)

00000050 <.LBB399>:
  50:	0014c783          	lbu	a5,1(s1)
  54:	0004c703          	lbu	a4,0(s1)
  58:	07a2                	slli	a5,a5,0x8
  5a:	8fd9                	or	a5,a5,a4
  5c:	00f41023          	sh	a5,0(s0)
  60:	0174c783          	lbu	a5,23(s1)
  64:	0164c703          	lbu	a4,22(s1)
  68:	02040823          	sb	zero,48(s0)
  6c:	07a2                	slli	a5,a5,0x8
  6e:	8fd9                	or	a5,a5,a4
  70:	00f41123          	sh	a5,2(s0)
  74:	0174c783          	lbu	a5,23(s1)
  78:	0164c703          	lbu	a4,22(s1)
  7c:	07a2                	slli	a5,a5,0x8
  7e:	8fd9                	or	a5,a5,a4
  80:	0047d713          	srli	a4,a5,0x4
  84:	8bbd                	andi	a5,a5,15
  86:	00e41223          	sh	a4,4(s0)
  8a:	00f40323          	sb	a5,6(s0)
  8e:	0014c783          	lbu	a5,1(s1)
  92:	0004c703          	lbu	a4,0(s1)
  96:	07a2                	slli	a5,a5,0x8
  98:	8fd9                	or	a5,a5,a4
  9a:	0887f693          	andi	a3,a5,136
  9e:	08800713          	li	a4,136
  a2:	18e69063          	bne	a3,a4,222 <.L119>
  a6:	3007f793          	andi	a5,a5,768
  aa:	30000713          	li	a4,768
  ae:	16e79763          	bne	a5,a4,21c <.L120>
  b2:	01e4d783          	lhu	a5,30(s1)

000000b6 <.L121>:
  b6:	8b9d                	andi	a5,a5,7
  b8:	00f403a3          	sb	a5,7(s0)

000000bc <.L122>:
  bc:	0014c783          	lbu	a5,1(s1)
  c0:	0004c503          	lbu	a0,0(s1)

000000c4 <.LVL140>:
  c4:	07a2                	slli	a5,a5,0x8
  c6:	8d5d                	or	a0,a0,a5
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL140+0x4>

000000d0 <.LVL141>:
  d0:	00a40423          	sb	a0,8(s0)

000000d4 <.LBB401>:
  d4:	0014c783          	lbu	a5,1(s1)
  d8:	8b85                	andi	a5,a5,1
  da:	14078763          	beqz	a5,228 <.L123>
  de:	0104d783          	lhu	a5,16(s1)
  e2:	02f41223          	sh	a5,36(s0)
  e6:	0124d783          	lhu	a5,18(s1)
  ea:	02f41323          	sh	a5,38(s0)
  ee:	0144d783          	lhu	a5,20(s1)

000000f2 <.L221>:
  f2:	02f41423          	sh	a5,40(s0)
  f6:	0014c783          	lbu	a5,1(s1)
  fa:	0004c703          	lbu	a4,0(s1)
  fe:	07a2                	slli	a5,a5,0x8
 100:	8fd9                	or	a5,a5,a4
 102:	2007f713          	andi	a4,a5,512
 106:	14070763          	beqz	a4,254 <.L125>
 10a:	1007f793          	andi	a5,a5,256
 10e:	12078863          	beqz	a5,23e <.L126>
 112:	0184d783          	lhu	a5,24(s1)
 116:	02f41523          	sh	a5,42(s0)
 11a:	01a4d783          	lhu	a5,26(s1)
 11e:	02f41623          	sh	a5,44(s0)
 122:	01c4d783          	lhu	a5,28(s1)

00000126 <.L222>:
 126:	02f41723          	sh	a5,46(s0)

0000012a <.LBE399>:
 12a:	006a9793          	slli	a5,s5,0x6
 12e:	2007c863          	bltz	a5,33e <.L128>

00000132 <.LBB406>:
 132:	06f44783          	lbu	a5,111(s0)
 136:	c7bd                	beqz	a5,1a4 <.L129>
 138:	200af793          	andi	a5,s5,512
 13c:	e7a5                	bnez	a5,1a4 <.L129>
 13e:	06844703          	lbu	a4,104(s0)
 142:	00a4c783          	lbu	a5,10(s1)
 146:	04f71f63          	bne	a4,a5,1a4 <.L129>
 14a:	06944703          	lbu	a4,105(s0)
 14e:	00b4c783          	lbu	a5,11(s1)
 152:	04f71963          	bne	a4,a5,1a4 <.L129>
 156:	06a44703          	lbu	a4,106(s0)
 15a:	00c4c783          	lbu	a5,12(s1)
 15e:	04f71363          	bne	a4,a5,1a4 <.L129>
 162:	06b44703          	lbu	a4,107(s0)
 166:	00d4c783          	lbu	a5,13(s1)
 16a:	02f71d63          	bne	a4,a5,1a4 <.L129>
 16e:	06c44703          	lbu	a4,108(s0)
 172:	00e4c783          	lbu	a5,14(s1)
 176:	02f71763          	bne	a4,a5,1a4 <.L129>
 17a:	06d44703          	lbu	a4,109(s0)
 17e:	00f4c783          	lbu	a5,15(s1)
 182:	02f71163          	bne	a4,a5,1a4 <.L129>
 186:	0014c783          	lbu	a5,1(s1)
 18a:	0004c703          	lbu	a4,0(s1)
 18e:	07a2                	slli	a5,a5,0x8
 190:	8fd9                	or	a5,a5,a4
 192:	6705                	lui	a4,0x1
 194:	40070693          	addi	a3,a4,1024 # 1400 <.LASF1190+0xd>
 198:	8ff5                	and	a5,a5,a3
 19a:	0ce79863          	bne	a5,a4,26a <.L130>
 19e:	4785                	li	a5,1
 1a0:	06f40723          	sb	a5,110(s0)

000001a4 <.L129>:
 1a4:	00cc7c13          	andi	s8,s8,12

000001a8 <.LVL145>:
 1a8:	100c0163          	beqz	s8,2aa <.L131>
 1ac:	47a1                	li	a5,8
 1ae:	0cfc1163          	bne	s8,a5,270 <.L132>

000001b2 <.LBB409>:
 1b2:	00000097          	auipc	ra,0x0
 1b6:	000080e7          	jalr	ra # 1b2 <.LBB409>

000001ba <.LVL147>:
 1ba:	c95d                	beqz	a0,270 <.L132>
 1bc:	0044c683          	lbu	a3,4(s1)
 1c0:	05054703          	lbu	a4,80(a0)
 1c4:	0ae69663          	bne	a3,a4,270 <.L132>
 1c8:	0054c683          	lbu	a3,5(s1)
 1cc:	05154703          	lbu	a4,81(a0)
 1d0:	0ae69063          	bne	a3,a4,270 <.L132>
 1d4:	0064c683          	lbu	a3,6(s1)
 1d8:	05254703          	lbu	a4,82(a0)
 1dc:	08e69a63          	bne	a3,a4,270 <.L132>
 1e0:	0074c683          	lbu	a3,7(s1)
 1e4:	05354703          	lbu	a4,83(a0)
 1e8:	08e69463          	bne	a3,a4,270 <.L132>
 1ec:	0084c683          	lbu	a3,8(s1)
 1f0:	05454703          	lbu	a4,84(a0)
 1f4:	06e69e63          	bne	a3,a4,270 <.L132>
 1f8:	0094c703          	lbu	a4,9(s1)
 1fc:	05554783          	lbu	a5,85(a0)
 200:	06f71863          	bne	a4,a5,270 <.L132>
 204:	4785                	li	a5,1
 206:	4701                	li	a4,0
 208:	4681                	li	a3,0
 20a:	00a48613          	addi	a2,s1,10
 20e:	0c000593          	li	a1,192
 212:	00000097          	auipc	ra,0x0
 216:	000080e7          	jalr	ra # 212 <.LVL147+0x58>

0000021a <.LVL148>:
 21a:	bd21                	j	32 <.L227>

0000021c <.L120>:
 21c:	0184d783          	lhu	a5,24(s1)
 220:	bd59                	j	b6 <.L121>

00000222 <.L119>:
 222:	000403a3          	sb	zero,7(s0)
 226:	bd59                	j	bc <.L122>

00000228 <.L123>:
 228:	0044d783          	lhu	a5,4(s1)
 22c:	02f41223          	sh	a5,36(s0)
 230:	0064d783          	lhu	a5,6(s1)
 234:	02f41323          	sh	a5,38(s0)
 238:	0084d783          	lhu	a5,8(s1)
 23c:	bd5d                	j	f2 <.L221>

0000023e <.L126>:
 23e:	0104d783          	lhu	a5,16(s1)
 242:	02f41523          	sh	a5,42(s0)
 246:	0124d783          	lhu	a5,18(s1)
 24a:	02f41623          	sh	a5,44(s0)
 24e:	0144d783          	lhu	a5,20(s1)
 252:	bdd1                	j	126 <.L222>

00000254 <.L125>:
 254:	00a4d783          	lhu	a5,10(s1)
 258:	02f41523          	sh	a5,42(s0)
 25c:	00c4d783          	lhu	a5,12(s1)
 260:	02f41623          	sh	a5,44(s0)
 264:	00e4d783          	lhu	a5,14(s1)
 268:	bd7d                	j	126 <.L222>

0000026a <.L130>:
 26a:	06040723          	sb	zero,110(s0)
 26e:	bf1d                	j	1a4 <.L129>

00000270 <.L132>:
 270:	854a                	mv	a0,s2
 272:	00000097          	auipc	ra,0x0
 276:	000080e7          	jalr	ra # 272 <.L132+0x2>

0000027a <.LVL153>:
 27a:	4985                	li	s3,1

0000027c <.L118>:
 27c:	403c                	lw	a5,64(s0)
 27e:	c799                	beqz	a5,28c <.L177>
 280:	20000537          	lui	a0,0x20000
 284:	00000097          	auipc	ra,0x0
 288:	000080e7          	jalr	ra # 284 <.L118+0x8>

0000028c <.L177>:
 28c:	40b6                	lw	ra,76(sp)
 28e:	4426                	lw	s0,72(sp)
 290:	854e                	mv	a0,s3
 292:	4496                	lw	s1,68(sp)
 294:	4906                	lw	s2,64(sp)
 296:	59f2                	lw	s3,60(sp)

00000298 <.LVL156>:
 298:	5a62                	lw	s4,56(sp)
 29a:	5ad2                	lw	s5,52(sp)
 29c:	5b42                	lw	s6,48(sp)
 29e:	5bb2                	lw	s7,44(sp)
 2a0:	5c22                	lw	s8,40(sp)
 2a2:	5c92                	lw	s9,36(sp)
 2a4:	5d02                	lw	s10,32(sp)
 2a6:	6161                	addi	sp,sp,80
 2a8:	8082                	ret

000002aa <.L131>:
 2aa:	0014c783          	lbu	a5,1(s1)
 2ae:	00a48993          	addi	s3,s1,10
 2b2:	838d                	srli	a5,a5,0x3
 2b4:	8b85                	andi	a5,a5,1
 2b6:	e3a1                	bnez	a5,2f6 <.L133>

000002b8 <.L136>:
 2b8:	0174c783          	lbu	a5,23(s1)
 2bc:	0164c703          	lbu	a4,22(s1)
 2c0:	4619                	li	a2,6
 2c2:	07a2                	slli	a5,a5,0x8
 2c4:	8fd9                	or	a5,a5,a4
 2c6:	85ce                	mv	a1,s3
 2c8:	05c40513          	addi	a0,s0,92
 2cc:	06f41123          	sh	a5,98(s0)
 2d0:	00000097          	auipc	ra,0x0
 2d4:	000080e7          	jalr	ra # 2d0 <.L136+0x18>

000002d8 <.LBE416>:
 2d8:	00045783          	lhu	a5,0(s0)
 2dc:	01179713          	slli	a4,a5,0x11
 2e0:	04074263          	bltz	a4,324 <.L134>

000002e4 <.L135>:
 2e4:	0ff00593          	li	a1,255

000002e8 <.L228>:
 2e8:	854a                	mv	a0,s2
 2ea:	00000097          	auipc	ra,0x0
 2ee:	000080e7          	jalr	ra # 2ea <.L228+0x2>

000002f2 <.LVL160>:
 2f2:	89aa                	mv	s3,a0

000002f4 <.LVL161>:
 2f4:	b761                	j	27c <.L118>

000002f6 <.L133>:
 2f6:	0174c783          	lbu	a5,23(s1)
 2fa:	0164c683          	lbu	a3,22(s1)
 2fe:	06245703          	lhu	a4,98(s0)
 302:	07a2                	slli	a5,a5,0x8
 304:	8fd5                	or	a5,a5,a3
 306:	faf719e3          	bne	a4,a5,2b8 <.L136>
 30a:	000005b7          	lui	a1,0x0
 30e:	4619                	li	a2,6
 310:	05c58593          	addi	a1,a1,92 # 5c <.LBB399+0xc>
 314:	854e                	mv	a0,s3
 316:	00000097          	auipc	ra,0x0
 31a:	000080e7          	jalr	ra # 316 <.L133+0x20>

0000031e <.LVL163>:
 31e:	d0050ae3          	beqz	a0,32 <.L227>
 322:	bf59                	j	2b8 <.L136>

00000324 <.L134>:
 324:	01caf793          	andi	a5,s5,28
 328:	4751                	li	a4,20
 32a:	d0e794e3          	bne	a5,a4,32 <.L227>
 32e:	85d6                	mv	a1,s5
 330:	8526                	mv	a0,s1
 332:	00000097          	auipc	ra,0x0
 336:	000080e7          	jalr	ra # 332 <.L134+0xe>

0000033a <.LVL165>:
 33a:	f54d                	bnez	a0,2e4 <.L135>
 33c:	b9dd                	j	32 <.L227>

0000033e <.L128>:
 33e:	00fadb93          	srli	s7,s5,0xf
 342:	1be1                	addi	s7,s7,-8
 344:	0ffbfb93          	andi	s7,s7,255

00000348 <.LBB422>:
 348:	1b000713          	li	a4,432
 34c:	02eb8733          	mul	a4,s7,a4
 350:	00000a37          	lui	s4,0x0
 354:	000a0793          	mv	a5,s4
 358:	000a0a13          	mv	s4,s4
 35c:	97ba                	add	a5,a5,a4
 35e:	01d7c983          	lbu	s3,29(a5)

00000362 <.LBE422>:
 362:	cc0988e3          	beqz	s3,32 <.L227>
 366:	01a7c783          	lbu	a5,26(a5)
 36a:	5d800693          	li	a3,1496
 36e:	01542c23          	sw	s5,24(s0)
 372:	00f40523          	sb	a5,10(s0)
 376:	02d787b3          	mul	a5,a5,a3
 37a:	00000ab7          	lui	s5,0x0

0000037e <.LVL169>:
 37e:	000a8713          	mv	a4,s5
 382:	017404a3          	sb	s7,9(s0)
 386:	000a8a93          	mv	s5,s5
 38a:	97ba                	add	a5,a5,a4
 38c:	0567c703          	lbu	a4,86(a5)
 390:	4789                	li	a5,2
 392:	02f71063          	bne	a4,a5,3b2 <.L138>
 396:	02444783          	lbu	a5,36(s0)
 39a:	8b85                	andi	a5,a5,1
 39c:	eb99                	bnez	a5,3b2 <.L138>
 39e:	00000537          	lui	a0,0x0
 3a2:	02450513          	addi	a0,a0,36 # 24 <.LVL132+0x6>
 3a6:	00000097          	auipc	ra,0x0
 3aa:	000080e7          	jalr	ra # 3a6 <.LVL169+0x28>

000003ae <.LVL170>:
 3ae:	00a405a3          	sb	a0,11(s0)

000003b2 <.L138>:
 3b2:	300c7793          	andi	a5,s8,768
 3b6:	30000713          	li	a4,768
 3ba:	00e79863          	bne	a5,a4,3ca <.L139>
 3be:	04cb2783          	lw	a5,76(s6)
 3c2:	0047e793          	ori	a5,a5,4
 3c6:	04fb2623          	sw	a5,76(s6)

000003ca <.L139>:
 3ca:	00045783          	lhu	a5,0(s0)
 3ce:	01179713          	slli	a4,a5,0x11
 3d2:	02074163          	bltz	a4,3f4 <.L140>

000003d6 <.L143>:
 3d6:	00cc7b13          	andi	s6,s8,12
 3da:	020b0563          	beqz	s6,404 <.L141>
 3de:	47a1                	li	a5,8
 3e0:	c4fb19e3          	bne	s6,a5,32 <.L227>

000003e4 <.LBB424>:
 3e4:	040c7793          	andi	a5,s8,64
 3e8:	cba5                	beqz	a5,458 <.L147>
 3ea:	00000097          	auipc	ra,0x0
 3ee:	000080e7          	jalr	ra # 3ea <.LBB424+0x6>

000003f2 <.LVL172>:
 3f2:	b181                	j	32 <.L227>

000003f4 <.L140>:
 3f4:	4c0c                	lw	a1,24(s0)
 3f6:	8526                	mv	a0,s1
 3f8:	00000097          	auipc	ra,0x0
 3fc:	000080e7          	jalr	ra # 3f8 <.L140+0x4>

00000400 <.LVL173>:
 400:	f979                	bnez	a0,3d6 <.L143>
 402:	b905                	j	32 <.L227>

00000404 <.L141>:
 404:	014c1793          	slli	a5,s8,0x14
 408:	00245703          	lhu	a4,2(s0)
 40c:	0007db63          	bgez	a5,422 <.L144>
 410:	1b000793          	li	a5,432
 414:	02fb87b3          	mul	a5,s7,a5
 418:	97d2                	add	a5,a5,s4
 41a:	1887d783          	lhu	a5,392(a5)
 41e:	c0e78ae3          	beq	a5,a4,32 <.L227>

00000422 <.L144>:
 422:	1b000593          	li	a1,432
 426:	02bb8bb3          	mul	s7,s7,a1

0000042a <.LBE425>:
 42a:	03044783          	lbu	a5,48(s0)
 42e:	8b89                	andi	a5,a5,2

00000430 <.LBB430>:
 430:	9a5e                	add	s4,s4,s7
 432:	18ea1423          	sh	a4,392(s4) # 188 <.LBB406+0x56>

00000436 <.LBE430>:
 436:	cf91                	beqz	a5,452 <.L145>
 438:	501c                	lw	a5,32(s0)
 43a:	4858                	lw	a4,20(s0)

0000043c <.LBB431>:
 43c:	4814                	lw	a3,16(s0)

0000043e <.LBB434>:
 43e:	43f0                	lw	a2,68(a5)
 440:	00e66763          	bltu	a2,a4,44e <.L180>
 444:	bee617e3          	bne	a2,a4,32 <.L227>
 448:	43b0                	lw	a2,64(a5)
 44a:	bed674e3          	bgeu	a2,a3,32 <.L227>

0000044e <.L180>:
 44e:	c3b4                	sw	a3,64(a5)
 450:	c3f8                	sw	a4,68(a5)

00000452 <.L145>:
 452:	00944583          	lbu	a1,9(s0)
 456:	bd49                	j	2e8 <.L228>

00000458 <.L147>:
 458:	080c7793          	andi	a5,s8,128
 45c:	12078663          	beqz	a5,588 <.L148>
 460:	0d800713          	li	a4,216
 464:	02eb8733          	mul	a4,s7,a4
 468:	00744783          	lbu	a5,7(s0)
 46c:	0c578793          	addi	a5,a5,197
 470:	97ba                	add	a5,a5,a4
 472:	0786                	slli	a5,a5,0x1

00000474 <.L223>:
 474:	014c1713          	slli	a4,s8,0x14
 478:	97d2                	add	a5,a5,s4

0000047a <.LVL180>:
 47a:	00245683          	lhu	a3,2(s0)
 47e:	00075663          	bgez	a4,48a <.L150>
 482:	0007d703          	lhu	a4,0(a5)
 486:	bad706e3          	beq	a4,a3,32 <.L227>

0000048a <.L150>:
 48a:	00d79023          	sh	a3,0(a5)

0000048e <.LBE375>:
 48e:	03044783          	lbu	a5,48(s0)

00000492 <.LVL181>:
 492:	00a44703          	lbu	a4,10(s0)

00000496 <.LBB382>:
 496:	8b89                	andi	a5,a5,2
 498:	c39d                	beqz	a5,4be <.L151>
 49a:	00744783          	lbu	a5,7(s0)
 49e:	4854                	lw	a3,20(s0)

000004a0 <.LBB383>:
 4a0:	480c                	lw	a1,16(s0)
 4a2:	00379613          	slli	a2,a5,0x3
 4a6:	501c                	lw	a5,32(s0)
 4a8:	97b2                	add	a5,a5,a2

000004aa <.LBB386>:
 4aa:	43d0                	lw	a2,4(a5)
 4ac:	00d66763          	bltu	a2,a3,4ba <.L181>
 4b0:	b8d611e3          	bne	a2,a3,32 <.L227>
 4b4:	4390                	lw	a2,0(a5)
 4b6:	b6b67ee3          	bgeu	a2,a1,32 <.L227>

000004ba <.L181>:
 4ba:	c38c                	sw	a1,0(a5)

000004bc <.LVL184>:
 4bc:	c3d4                	sw	a3,4(a5)

000004be <.L151>:
 4be:	5d800793          	li	a5,1496
 4c2:	02f707b3          	mul	a5,a4,a5
 4c6:	97d6                	add	a5,a5,s5
 4c8:	3e87c783          	lbu	a5,1000(a5)
 4cc:	e791                	bnez	a5,4d8 <.L153>
 4ce:	000007b7          	lui	a5,0x0
 4d2:	0007a783          	lw	a5,0(a5) # 0 <rxu_cntrl_frame_handle>
 4d6:	cff9                	beqz	a5,5b4 <.L154>

000004d8 <.L153>:
 4d8:	00492783          	lw	a5,4(s2)
 4dc:	00844c03          	lbu	s8,8(s0)

000004e0 <.LVL187>:
 4e0:	000005b7          	lui	a1,0x0
 4e4:	479c                	lw	a5,8(a5)
 4e6:	4619                	li	a2,6
 4e8:	00058593          	mv	a1,a1
 4ec:	4784                	lw	s1,8(a5)

000004ee <.LVL188>:
 4ee:	9c26                	add	s8,s8,s1

000004f0 <.LVL189>:
 4f0:	8562                	mv	a0,s8
 4f2:	00000097          	auipc	ra,0x0
 4f6:	000080e7          	jalr	ra # 4f2 <.LVL189+0x2>

000004fa <.LVL190>:
 4fa:	ed4d                	bnez	a0,5b4 <.L154>
 4fc:	006c5703          	lhu	a4,6(s8)
 500:	67a5                	lui	a5,0x9
 502:	e8878793          	addi	a5,a5,-376 # 8e88 <.LASF1508+0x39b0>
 506:	0af71763          	bne	a4,a5,5b4 <.L154>

0000050a <.LBB389>:
 50a:	1b000593          	li	a1,432
 50e:	02bb85b3          	mul	a1,s7,a1
 512:	5d800793          	li	a5,1496
 516:	9a2e                	add	s4,s4,a1
 518:	01aa4703          	lbu	a4,26(s4)

0000051c <.LVL191>:
 51c:	02f707b3          	mul	a5,a4,a5
 520:	9abe                	add	s5,s5,a5
 522:	056ac783          	lbu	a5,86(s5) # 56 <.LBB399+0x6>
 526:	eba5                	bnez	a5,596 <.L155>
 528:	000007b7          	lui	a5,0x0
 52c:	00078793          	mv	a5,a5
 530:	4794                	lw	a3,8(a5)
 532:	0056c683          	lbu	a3,5(a3)
 536:	ae068ee3          	beqz	a3,32 <.L227>
 53a:	017780a3          	sb	s7,1(a5) # 1 <rxu_cntrl_frame_handle+0x1>
 53e:	00e78123          	sb	a4,2(a5)

00000542 <.L224>:
 542:	00492683          	lw	a3,4(s2)
 546:	c43e                	sw	a5,8(sp)
 548:	00844703          	lbu	a4,8(s0)
 54c:	01c6d683          	lhu	a3,28(a3)
 550:	57e1                	li	a5,-8
 552:	8f99                	sub	a5,a5,a4
 554:	0721                	addi	a4,a4,8
 556:	97b6                	add	a5,a5,a3
 558:	94ba                	add	s1,s1,a4

0000055a <.LVL193>:
 55a:	c826                	sw	s1,16(sp)
 55c:	00f11623          	sh	a5,12(sp)
 560:	44b004b7          	lui	s1,0x44b00
 564:	1204a783          	lw	a5,288(s1) # 44b00120 <.LASF1508+0x44afac48>
 568:	00000637          	lui	a2,0x0
 56c:	000005b7          	lui	a1,0x0
 570:	02460613          	addi	a2,a2,36 # 24 <.LVL132+0x6>
 574:	02a58593          	addi	a1,a1,42 # 2a <.LVL133>
 578:	0028                	addi	a0,sp,8
 57a:	00000097          	auipc	ra,0x0
 57e:	000080e7          	jalr	ra # 57a <.LVL193+0x20>

00000582 <.LVL194>:
 582:	1204a783          	lw	a5,288(s1)

00000586 <.LBE389>:
 586:	b475                	j	32 <.L227>

00000588 <.L148>:
 588:	1b000793          	li	a5,432
 58c:	02fb87b3          	mul	a5,s7,a5
 590:	18878793          	addi	a5,a5,392
 594:	b5c5                	j	474 <.L223>

00000596 <.L155>:
 596:	000007b7          	lui	a5,0x0
 59a:	0007a703          	lw	a4,0(a5) # 0 <rxu_cntrl_frame_handle>

0000059e <.LVL198>:
 59e:	017700a3          	sb	s7,1(a4)

000005a2 <.LVL199>:
 5a2:	0007a703          	lw	a4,0(a5)
 5a6:	01aa4683          	lbu	a3,26(s4)
 5aa:	00d70123          	sb	a3,2(a4)
 5ae:	0007a783          	lw	a5,0(a5)
 5b2:	bf41                	j	542 <.L224>

000005b4 <.L154>:
 5b4:	000007b7          	lui	a5,0x0
 5b8:	0147a703          	lw	a4,20(a5) # 14 <rxu_cntrl_frame_handle+0x14>
 5bc:	47b5                	li	a5,13
 5be:	8f99                	sub	a5,a5,a4
 5c0:	4715                	li	a4,5
 5c2:	a6f778e3          	bgeu	a4,a5,32 <.L227>

000005c6 <.LBB394>:
 5c6:	00045783          	lhu	a5,0(s0)
 5ca:	4007f793          	andi	a5,a5,1024

000005ce <.LVL202>:
 5ce:	a60792e3          	bnez	a5,32 <.L227>
 5d2:	00644783          	lbu	a5,6(s0)

000005d6 <.LVL203>:
 5d6:	a4079ee3          	bnez	a5,32 <.L227>

000005da <.LBB323>:
 5da:	03044783          	lbu	a5,48(s0)
 5de:	8b85                	andi	a5,a5,1
 5e0:	18078263          	beqz	a5,764 <.L158>

000005e4 <.LBB324>:
 5e4:	500c                	lw	a1,32(s0)
 5e6:	00744703          	lbu	a4,7(s0)
 5ea:	000006b7          	lui	a3,0x0
 5ee:	00000637          	lui	a2,0x0
 5f2:	02a68693          	addi	a3,a3,42 # 2a <.LVL133>
 5f6:	02460613          	addi	a2,a2,36 # 24 <.LVL132+0x6>
 5fa:	05858593          	addi	a1,a1,88
 5fe:	0028                	addi	a0,sp,8

00000600 <.LVL205>:
 600:	00000097          	auipc	ra,0x0
 604:	000080e7          	jalr	ra # 600 <.LVL205>

00000608 <.LBB327>:
 608:	00492783          	lw	a5,4(s2)
 60c:	00844483          	lbu	s1,8(s0)
 610:	5ae1                	li	s5,-8
 612:	0087ab83          	lw	s7,8(a5)

00000616 <.LVL207>:
 616:	01c7d783          	lhu	a5,28(a5)

0000061a <.LVL208>:
 61a:	409a8ab3          	sub	s5,s5,s1

0000061e <.LBB328>:
 61e:	35000c93          	li	s9,848

00000622 <.LBE328>:
 622:	9abe                	add	s5,s5,a5
 624:	0ac2                	slli	s5,s5,0x10
 626:	010ada93          	srli	s5,s5,0x10

0000062a <.LBB329>:
 62a:	35000d13          	li	s10,848

0000062e <.L161>:
 62e:	008ba583          	lw	a1,8(s7)
 632:	009a87b3          	add	a5,s5,s1
 636:	8c56                	mv	s8,s5
 638:	95a6                	add	a1,a1,s1

0000063a <.LVL211>:
 63a:	00fcd763          	bge	s9,a5,648 <.L159>
 63e:	409d0c33          	sub	s8,s10,s1
 642:	0c42                	slli	s8,s8,0x10
 644:	010c5c13          	srli	s8,s8,0x10

00000648 <.L159>:
 648:	418a8ab3          	sub	s5,s5,s8

0000064c <.LVL213>:
 64c:	0ac2                	slli	s5,s5,0x10

0000064e <.LVL214>:
 64e:	010ada93          	srli	s5,s5,0x10
 652:	8662                	mv	a2,s8
 654:	0028                	addi	a0,sp,8

00000656 <.LVL215>:
 656:	00000097          	auipc	ra,0x0
 65a:	000080e7          	jalr	ra # 656 <.LVL215>

0000065e <.LVL216>:
 65e:	020a8663          	beqz	s5,68a <.L160>

00000662 <.LVL217>:
 662:	004bab83          	lw	s7,4(s7)
 666:	4481                	li	s1,0
 668:	fc0b93e3          	bnez	s7,62e <.L161>
 66c:	36900613          	li	a2,873

00000670 <.L229>:
 670:	000005b7          	lui	a1,0x0
 674:	00000537          	lui	a0,0x0
 678:	00058593          	mv	a1,a1
 67c:	00050513          	mv	a0,a0
 680:	00000097          	auipc	ra,0x0
 684:	000080e7          	jalr	ra # 680 <.L229+0x10>

00000688 <.LVL220>:
 688:	b26d                	j	32 <.L227>

0000068a <.L160>:
 68a:	94e2                	add	s1,s1,s8

0000068c <.LVL222>:
 68c:	04c2                	slli	s1,s1,0x10

0000068e <.LBE327>:
 68e:	868a                	mv	a3,sp

00000690 <.LBB344>:
 690:	80c1                	srli	s1,s1,0x10

00000692 <.LBB342>:
 692:	35000513          	li	a0,848
 696:	35000813          	li	a6,848

0000069a <.L167>:
 69a:	008ba703          	lw	a4,8(s7)
 69e:	009b07b3          	add	a5,s6,s1
 6a2:	85da                	mv	a1,s6
 6a4:	9726                	add	a4,a4,s1

000006a6 <.LVL226>:
 6a6:	00f55763          	bge	a0,a5,6b4 <.L163>
 6aa:	409804b3          	sub	s1,a6,s1

000006ae <.LVL227>:
 6ae:	01049593          	slli	a1,s1,0x10
 6b2:	81c1                	srli	a1,a1,0x10

000006b4 <.L163>:
 6b4:	4781                	li	a5,0

000006b6 <.L164>:
 6b6:	00d78633          	add	a2,a5,a3

000006ba <.LBB340>:
 6ba:	02b79263          	bne	a5,a1,6de <.L165>

000006be <.LBE340>:
 6be:	40fb0b33          	sub	s6,s6,a5

000006c2 <.LVL232>:
 6c2:	0b42                	slli	s6,s6,0x10
 6c4:	010b5b13          	srli	s6,s6,0x10

000006c8 <.LVL233>:
 6c8:	86b2                	mv	a3,a2

000006ca <.LVL234>:
 6ca:	020b0263          	beqz	s6,6ee <.L166>

000006ce <.LVL235>:
 6ce:	004bab83          	lw	s7,4(s7)
 6d2:	4481                	li	s1,0
 6d4:	fc0b93e3          	bnez	s7,69a <.L167>
 6d8:	39200613          	li	a2,914

000006dc <.LVL237>:
 6dc:	bf51                	j	670 <.L229>

000006de <.L165>:
 6de:	00e788b3          	add	a7,a5,a4
 6e2:	0008c883          	lbu	a7,0(a7)

000006e6 <.LBB336>:
 6e6:	0785                	addi	a5,a5,1

000006e8 <.LVL240>:
 6e8:	01160023          	sb	a7,0(a2)
 6ec:	b7e9                	j	6b6 <.L164>

000006ee <.L166>:
 6ee:	0028                	addi	a0,sp,8

000006f0 <.LVL242>:
 6f0:	00000097          	auipc	ra,0x0
 6f4:	000080e7          	jalr	ra # 6f0 <.LVL242>

000006f8 <.LBB345>:
 6f8:	4702                	lw	a4,0(sp)
 6fa:	47a2                	lw	a5,8(sp)
 6fc:	00f71663          	bne	a4,a5,708 <.L168>
 700:	4712                	lw	a4,4(sp)
 702:	47b2                	lw	a5,12(sp)
 704:	06f70063          	beq	a4,a5,764 <.L158>

00000708 <.L168>:
 708:	6505                	lui	a0,0x1
 70a:	46e1                	li	a3,24
 70c:	4615                	li	a2,5
 70e:	45b5                	li	a1,13
 710:	40650513          	addi	a0,a0,1030 # 1406 <.LASF144+0x3>
 714:	00000097          	auipc	ra,0x0
 718:	000080e7          	jalr	ra # 714 <.L168+0xc>

0000071c <.LVL245>:
 71c:	00944583          	lbu	a1,9(s0)
 720:	1b000713          	li	a4,432
 724:	4619                	li	a2,6
 726:	02e585b3          	mul	a1,a1,a4
 72a:	95d2                	add	a1,a1,s4
 72c:	05f9                	addi	a1,a1,30
 72e:	00000097          	auipc	ra,0x0
 732:	000080e7          	jalr	ra # 72e <.LVL245+0x12>

00000736 <.LVL246>:
 736:	4810                	lw	a2,16(s0)
 738:	4854                	lw	a3,20(s0)
 73a:	c510                	sw	a2,8(a0)
 73c:	c554                	sw	a3,12(a0)
 73e:	4c18                	lw	a4,24(s0)
 740:	8329                	srli	a4,a4,0xa
 742:	8b05                	andi	a4,a4,1
 744:	00e50823          	sb	a4,16(a0)
 748:	00a44703          	lbu	a4,10(s0)
 74c:	00e50923          	sb	a4,18(a0)
 750:	5018                	lw	a4,32(s0)
 752:	06174703          	lbu	a4,97(a4)
 756:	00e508a3          	sb	a4,17(a0)
 75a:	00000097          	auipc	ra,0x0
 75e:	000080e7          	jalr	ra # 75a <.LVL246+0x24>

00000762 <.LVL247>:
 762:	b8c1                	j	32 <.L227>

00000764 <.L158>:
 764:	00944783          	lbu	a5,9(s0)
 768:	00a44703          	lbu	a4,10(s0)
 76c:	00492683          	lw	a3,4(s2)

00000770 <.LVL249>:
 770:	07c2                	slli	a5,a5,0x10
 772:	0722                	slli	a4,a4,0x8
 774:	8fd9                	or	a5,a5,a4
 776:	00b44703          	lbu	a4,11(s0)

0000077a <.LBB351>:
 77a:	00844a03          	lbu	s4,8(s0)

0000077e <.LBE351>:
 77e:	0762                	slli	a4,a4,0x18
 780:	8fd9                	or	a5,a5,a4
 782:	46f8                	lw	a4,76(a3)
 784:	8fd9                	or	a5,a5,a4
 786:	c6fc                	sw	a5,76(a3)

00000788 <.LBB361>:
 788:	00492683          	lw	a3,4(s2)

0000078c <.LVL251>:
 78c:	469c                	lw	a5,8(a3)
 78e:	46f8                	lw	a4,76(a3)
 790:	4784                	lw	s1,8(a5)

00000792 <.LVL252>:
 792:	f8f77613          	andi	a2,a4,-113
 796:	c6f0                	sw	a2,76(a3)
 798:	0014c783          	lbu	a5,1(s1)
 79c:	0004c703          	lbu	a4,0(s1)
 7a0:	07a2                	slli	a5,a5,0x8
 7a2:	8fd9                	or	a5,a5,a4
 7a4:	0fc7f593          	andi	a1,a5,252
 7a8:	08800713          	li	a4,136
 7ac:	02e59663          	bne	a1,a4,7d8 <.L169>

000007b0 <.LBB353>:
 7b0:	3007f793          	andi	a5,a5,768
 7b4:	30000713          	li	a4,768
 7b8:	08e79963          	bne	a5,a4,84a <.L170>

000007bc <.LBB354>:
 7bc:	01e4c703          	lbu	a4,30(s1)
 7c0:	01f4c783          	lbu	a5,31(s1)

000007c4 <.L225>:
 7c4:	07a2                	slli	a5,a5,0x8
 7c6:	8fd9                	or	a5,a5,a4

000007c8 <.LBE355>:
 7c8:	0077f713          	andi	a4,a5,7
 7cc:	0712                	slli	a4,a4,0x4
 7ce:	0807f793          	andi	a5,a5,128

000007d2 <.LVL256>:
 7d2:	8f51                	or	a4,a4,a2
 7d4:	e3c1                	bnez	a5,854 <.L172>
 7d6:	c6f8                	sw	a4,76(a3)

000007d8 <.L169>:
 7d8:	010a1a93          	slli	s5,s4,0x10
 7dc:	010ada93          	srli	s5,s5,0x10
 7e0:	0feaf793          	andi	a5,s5,254
 7e4:	94be                	add	s1,s1,a5

000007e6 <.LVL257>:
 7e6:	000005b7          	lui	a1,0x0
 7ea:	4619                	li	a2,6
 7ec:	00058593          	mv	a1,a1
 7f0:	8526                	mv	a0,s1
 7f2:	00000097          	auipc	ra,0x0
 7f6:	000080e7          	jalr	ra # 7f2 <.LVL257+0xc>

000007fa <.LVL258>:
 7fa:	e569                	bnez	a0,8c4 <.L174>
 7fc:	0064d703          	lhu	a4,6(s1)
 800:	67a1                	lui	a5,0x8
 802:	13778793          	addi	a5,a5,311 # 8137 <.LASF1508+0x2c5f>
 806:	0af70f63          	beq	a4,a5,8c4 <.L174>

0000080a <.L176>:
 80a:	1a69                	addi	s4,s4,-6

0000080c <.LVL259>:
 80c:	ffa48713          	addi	a4,s1,-6

00000810 <.LVL260>:
 810:	0ffa7a13          	andi	s4,s4,255

00000814 <.LVL261>:
 814:	020408a3          	sb	zero,49(s0)

00000818 <.L175>:
 818:	02445783          	lhu	a5,36(s0)
 81c:	00f71023          	sh	a5,0(a4)
 820:	02645783          	lhu	a5,38(s0)
 824:	00f71123          	sh	a5,2(a4)
 828:	02845783          	lhu	a5,40(s0)
 82c:	00f71223          	sh	a5,4(a4)
 830:	02a45783          	lhu	a5,42(s0)
 834:	00f71323          	sh	a5,6(a4)
 838:	02c45783          	lhu	a5,44(s0)
 83c:	00f71423          	sh	a5,8(a4)
 840:	02e45783          	lhu	a5,46(s0)
 844:	00f71523          	sh	a5,10(a4)
 848:	a809                	j	85a <.L173>

0000084a <.L170>:
 84a:	0184c703          	lbu	a4,24(s1)
 84e:	0194c783          	lbu	a5,25(s1)
 852:	bf8d                	j	7c4 <.L225>

00000854 <.L172>:
 854:	00176713          	ori	a4,a4,1
 858:	c6f8                	sw	a4,76(a3)

0000085a <.L173>:
 85a:	00492703          	lw	a4,4(s2)

0000085e <.LBE361>:
 85e:	854a                	mv	a0,s2

00000860 <.LBB362>:
 860:	01c75783          	lhu	a5,28(a4)
 864:	414787b3          	sub	a5,a5,s4
 868:	00f71e23          	sh	a5,28(a4)
 86c:	00492783          	lw	a5,4(s2)
 870:	03440923          	sb	s4,50(s0)
 874:	0547aa23          	sw	s4,84(a5)
 878:	000007b7          	lui	a5,0x0
 87c:	0147a023          	sw	s4,0(a5) # 0 <rxu_cntrl_frame_handle>

00000880 <.LBE362>:
 880:	00000097          	auipc	ra,0x0
 884:	000080e7          	jalr	ra # 880 <.LBE362>

00000888 <.LBB363>:
 888:	30047073          	csrci	mstatus,8

0000088c <.LBE363>:
 88c:	4438                	lw	a4,72(s0)

0000088e <.LBB365>:
 88e:	00492783          	lw	a5,4(s2)

00000892 <.LVL269>:
 892:	468d                	li	a3,3
 894:	00d90e23          	sb	a3,28(s2)
 898:	00e92a23          	sw	a4,20(s2)
 89c:	01c7d783          	lhu	a5,28(a5)

000008a0 <.LVL270>:
 8a0:	00f92c23          	sw	a5,24(s2)

000008a4 <.LBB367>:
 8a4:	30047073          	csrci	mstatus,8

000008a8 <.LBE367>:
 8a8:	00000537          	lui	a0,0x0
 8ac:	85ca                	mv	a1,s2
 8ae:	04050513          	addi	a0,a0,64 # 40 <.LBB398>
 8b2:	00000097          	auipc	ra,0x0
 8b6:	000080e7          	jalr	ra # 8b2 <.LBE367+0xa>

000008ba <.LBB369>:
 8ba:	30046073          	csrsi	mstatus,8

000008be <.LBB371>:
 8be:	30046073          	csrsi	mstatus,8

000008c2 <.LVL273>:
 8c2:	ba6d                	j	27c <.L118>

000008c4 <.L174>:
 8c4:	000005b7          	lui	a1,0x0
 8c8:	4619                	li	a2,6
 8ca:	00058593          	mv	a1,a1
 8ce:	8526                	mv	a0,s1
 8d0:	00000097          	auipc	ra,0x0
 8d4:	000080e7          	jalr	ra # 8d0 <.L174+0xc>

000008d8 <.LVL275>:
 8d8:	d90d                	beqz	a0,80a <.L176>
 8da:	00492783          	lw	a5,4(s2)
 8de:	1a49                	addi	s4,s4,-14

000008e0 <.LVL276>:
 8e0:	0ffa7a13          	andi	s4,s4,255

000008e4 <.LVL277>:
 8e4:	01c7d783          	lhu	a5,28(a5)
 8e8:	ff248713          	addi	a4,s1,-14

000008ec <.LVL278>:
 8ec:	415787b3          	sub	a5,a5,s5
 8f0:	07c2                	slli	a5,a5,0x10
 8f2:	83c1                	srli	a5,a5,0x10
 8f4:	fef48f23          	sb	a5,-2(s1)
 8f8:	83a1                	srli	a5,a5,0x8
 8fa:	fef48fa3          	sb	a5,-1(s1)
 8fe:	4785                	li	a5,1
 900:	02f408a3          	sb	a5,49(s0)
 904:	bf11                	j	818 <.L175>

Disassembly of section .text.rxu_cntrl_monitor_pm:

00000000 <rxu_cntrl_monitor_pm>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	06f7c703          	lbu	a4,111(a5) # 6f <.LVL294+0x1>
   c:	e30d                	bnez	a4,2e <.L230>
   e:	00055703          	lhu	a4,0(a0)
  12:	06e79423          	sh	a4,104(a5)
  16:	00255703          	lhu	a4,2(a0)
  1a:	06e79523          	sh	a4,106(a5)
  1e:	00455703          	lhu	a4,4(a0)
  22:	06e79623          	sh	a4,108(a5)
  26:	10000713          	li	a4,256
  2a:	06e79723          	sh	a4,110(a5)

0000002e <.L230>:
  2e:	8082                	ret

Disassembly of section .text.rxu_cntrl_get_pm:

00000000 <rxu_cntrl_get_pm>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	06e7c503          	lbu	a0,110(a5) # 6e <.LVL294>
   c:	06079723          	sh	zero,110(a5)
  10:	8082                	ret

Disassembly of section .text.rxu_cntrl_evt:

00000000 <rxu_cntrl_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	00080537          	lui	a0,0x80

00000006 <.LVL282>:
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <.LVL282+0x2>

00000010 <.LBB438>:
  10:	000007b7          	lui	a5,0x0
  14:	0407a783          	lw	a5,64(a5) # 40 <.LBB398>
  18:	cb89                	beqz	a5,2a <.L233>

0000001a <.LBE443>:
  1a:	40b2                	lw	ra,12(sp)

0000001c <.LBB444>:
  1c:	20000537          	lui	a0,0x20000

00000020 <.LBE444>:
  20:	0141                	addi	sp,sp,16

00000022 <.LBB445>:
  22:	00000317          	auipc	t1,0x0
  26:	00030067          	jr	t1 # 22 <.LBB445>

0000002a <.L233>:
  2a:	40b2                	lw	ra,12(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.rxu_swdesc_upload_evt:

00000000 <rxu_swdesc_upload_evt>:
   0:	715d                	addi	sp,sp,-80
   2:	20000537          	lui	a0,0x20000

00000006 <.LVL286>:
   6:	c686                	sw	ra,76(sp)
   8:	c4a2                	sw	s0,72(sp)
   a:	c0ca                	sw	s2,64(sp)
   c:	de4e                	sw	s3,60(sp)
   e:	dc52                	sw	s4,56(sp)
  10:	da56                	sw	s5,52(sp)
  12:	d85a                	sw	s6,48(sp)
  14:	c2a6                	sw	s1,68(sp)
  16:	00000937          	lui	s2,0x0
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL286+0x14>

00000022 <.LVL287>:
  22:	04090513          	addi	a0,s2,64 # 40 <.LVL289+0xc>
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL287+0x4>

0000002e <.LVL288>:
  2e:	000009b7          	lui	s3,0x0
  32:	842a                	mv	s0,a0

00000034 <.LVL289>:
  34:	01810a93          	addi	s5,sp,24
  38:	4a05                	li	s4,1
  3a:	34f00b13          	li	s6,847
  3e:	00098993          	mv	s3,s3

00000042 <.L237>:
  42:	e819                	bnez	s0,58 <.L244>
  44:	40b6                	lw	ra,76(sp)
  46:	4426                	lw	s0,72(sp)

00000048 <.LVL291>:
  48:	4496                	lw	s1,68(sp)
  4a:	4906                	lw	s2,64(sp)
  4c:	59f2                	lw	s3,60(sp)
  4e:	5a62                	lw	s4,56(sp)
  50:	5ad2                	lw	s5,52(sp)
  52:	5b42                	lw	s6,48(sp)
  54:	6161                	addi	sp,sp,80
  56:	8082                	ret

00000058 <.L244>:
  58:	405c                	lw	a5,4(s0)
  5a:	02800613          	li	a2,40
  5e:	4581                	li	a1,0
  60:	0028                	addi	a0,sp,8
  62:	01c7d483          	lhu	s1,28(a5)

00000066 <.LVL293>:
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL293>

0000006e <.LVL294>:
  6e:	405c                	lw	a5,4(s0)
  70:	0038                	addi	a4,sp,8
  72:	863a                	mv	a2,a4
  74:	479c                	lw	a5,8(a5)

00000076 <.L238>:
  76:	ec9d                	bnez	s1,b4 <.L241>

00000078 <.L239>:
  78:	405c                	lw	a5,4(s0)

0000007a <.LVL296>:
  7a:	01440f23          	sb	s4,30(s0)
  7e:	0038                	addi	a4,sp,8
  80:	0747a023          	sw	s4,96(a5)
  84:	4050                	lw	a2,4(s0)
  86:	01c44583          	lbu	a1,28(s0)
  8a:	8522                	mv	a0,s0
  8c:	4a74                	lw	a3,84(a2)
  8e:	0671                	addi	a2,a2,28
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL296+0x16>

00000098 <.LVL297>:
  98:	c939                	beqz	a0,ee <.L242>
  9a:	8522                	mv	a0,s0
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.LVL297+0x4>

000000a4 <.L243>:
  a4:	04090513          	addi	a0,s2,64
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L243+0x4>

000000b0 <.LVL299>:
  b0:	842a                	mv	s0,a0
  b2:	bf41                	j	42 <.L237>

000000b4 <.L241>:
  b4:	fd5702e3          	beq	a4,s5,78 <.L239>
  b8:	01d44683          	lbu	a3,29(s0)
  bc:	0685                	addi	a3,a3,1
  be:	00d40ea3          	sb	a3,29(s0)
  c2:	478c                	lw	a1,8(a5)
  c4:	c30c                	sw	a1,0(a4)
  c6:	47d4                	lw	a3,12(a5)
  c8:	0685                	addi	a3,a3,1
  ca:	8e8d                	sub	a3,a3,a1
  cc:	02d61023          	sh	a3,32(a2)
  d0:	01c78693          	addi	a3,a5,28
  d4:	cb14                	sw	a3,16(a4)
  d6:	0147aa23          	sw	s4,20(a5)
  da:	009b7863          	bgeu	s6,s1,ea <.L245>
  de:	cb048493          	addi	s1,s1,-848

000000e2 <.L240>:
  e2:	43dc                	lw	a5,4(a5)
  e4:	0711                	addi	a4,a4,4
  e6:	0609                	addi	a2,a2,2
  e8:	b779                	j	76 <.L238>

000000ea <.L245>:
  ea:	4481                	li	s1,0

000000ec <.LVL304>:
  ec:	bfdd                	j	e2 <.L240>

000000ee <.L242>:
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.L242>

000000f6 <.LVL306>:
  f6:	0149a783          	lw	a5,20(s3) # 14 <.LVL286+0xe>
  fa:	01d44703          	lbu	a4,29(s0)
  fe:	97ba                	add	a5,a5,a4
 100:	00f9aa23          	sw	a5,20(s3)
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.LVL306+0xe>

0000010c <.LVL307>:
 10c:	bf61                	j	a4 <.L243>
