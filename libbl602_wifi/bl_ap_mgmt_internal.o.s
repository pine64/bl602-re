
libbl602_wifi/bl_ap_mgmt_internal.o:     file format elf32-littleriscv


Disassembly of section .text.GenerateGTK_internal:

00000000 <GenerateGTK_internal>:
   0:	7175                	addi	sp,sp,-144
   2:	c326                	sw	s1,132(sp)
   4:	84ae                	mv	s1,a1
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LC0
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL1>:
   a:	c522                	sw	s0,136(sp)
   c:	c14a                	sw	s2,128(sp)
   e:	842a                	mv	s0,a0
  10:	8932                	mv	s2,a2
  12:	00058593          	mv	a1,a1
			12: R_RISCV_LO12_I	.LC0
			12: R_RISCV_RELAX	*ABS*
  16:	4651                	li	a2,20

00000018 <.LVL2>:
  18:	0048                	addi	a0,sp,4

0000001a <.LVL3>:
  1a:	c706                	sw	ra,140(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	memcpy
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL3+0x2>

00000024 <.LVL4>:
  24:	cc41                	beqz	s0,bc <.L1>
			24: R_RISCV_RVC_BRANCH	.L1
  26:	c8d9                	beqz	s1,bc <.L1>
			26: R_RISCV_RVC_BRANCH	.L1
  28:	4619                	li	a2,6
  2a:	85ca                	mv	a1,s2
  2c:	08a8                	addi	a0,sp,88
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	memcpy
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL4+0xa>

00000036 <.LVL5>:
  36:	02000593          	li	a1,32
  3a:	8526                	mv	a0,s1
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	supplicantGenerateRand
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL5+0x6>

00000044 <.LVL6>:
  44:	02000613          	li	a2,32
  48:	85a6                	mv	a1,s1
  4a:	05e10513          	addi	a0,sp,94
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	memcpy
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL6+0xa>

00000056 <.LVL7>:
  56:	02000593          	li	a1,32
  5a:	1828                	addi	a0,sp,56
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	supplicantGenerateRand
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL7+0x6>

00000064 <.LVL8>:
  64:	0048                	addi	a0,sp,4
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	strlen
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL8+0x2>

0000006e <.LVL9>:
  6e:	86aa                	mv	a3,a0
  70:	02000893          	li	a7,32
  74:	01810813          	addi	a6,sp,24
  78:	02600793          	li	a5,38
  7c:	08b8                	addi	a4,sp,88
  7e:	0050                	addi	a2,sp,4
  80:	02000593          	li	a1,32
  84:	1828                	addi	a0,sp,56
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	Bl_PRF
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL9+0x18>

0000008e <.LVL10>:
  8e:	4641                	li	a2,16
  90:	082c                	addi	a1,sp,24
  92:	8522                	mv	a0,s0
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	memcpy
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL10+0x6>

0000009c <.LVL11>:
  9c:	4621                	li	a2,8
  9e:	102c                	addi	a1,sp,40
  a0:	01840513          	addi	a0,s0,24
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	memcpy
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.LVL11+0x8>

000000ac <.LVL12>:
  ac:	4621                	li	a2,8
  ae:	180c                	addi	a1,sp,48
  b0:	01040513          	addi	a0,s0,16
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	memcpy
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL12+0x8>

000000bc <.L1>:
  bc:	40ba                	lw	ra,140(sp)
  be:	442a                	lw	s0,136(sp)

000000c0 <.LVL14>:
  c0:	449a                	lw	s1,132(sp)

000000c2 <.LVL15>:
  c2:	490a                	lw	s2,128(sp)

000000c4 <.LVL16>:
  c4:	6149                	addi	sp,sp,144
  c6:	8082                	ret

Disassembly of section .text.PopulateKeyMsg:

00000000 <PopulateKeyMsg>:
   0:	10050763          	beqz	a0,10e <.L9>
			0: R_RISCV_BRANCH	.L9
   4:	10058563          	beqz	a1,10e <.L9>
			4: R_RISCV_BRANCH	.L9

00000008 <.LVL18>:
   8:	0005c783          	lbu	a5,0(a1) # 0 <PopulateKeyMsg>
   c:	0047f593          	andi	a1,a5,4

00000010 <.LVL19>:
  10:	c1e5                	beqz	a1,f0 <.L11>
			10: R_RISCV_RVC_BRANCH	.L11
  12:	00050aa3          	sb	zero,21(a0)
  16:	02000793          	li	a5,32

0000001a <.L27>:
  1a:	00f50b23          	sb	a5,22(a0)

0000001e <.L12>:
  1e:	01454583          	lbu	a1,20(a0)
  22:	f805e793          	ori	a5,a1,-128
  26:	00f50a23          	sb	a5,20(a0)
  2a:	01461793          	slli	a5,a2,0x14
  2e:	0c07d763          	bgez	a5,fc <.L13>
			2e: R_RISCV_BRANCH	.L13
  32:	f885e793          	ori	a5,a1,-120
  36:	00f50a23          	sb	a5,20(a0)
  3a:	08067793          	andi	a5,a2,128
  3e:	c39d                	beqz	a5,64 <.L14>
			3e: R_RISCV_RVC_BRANCH	.L14
  40:	01354783          	lbu	a5,19(a0)
  44:	fc85e593          	ori	a1,a1,-56
  48:	823d                	srli	a2,a2,0xf

0000004a <.LVL20>:
  4a:	0017e793          	ori	a5,a5,1
  4e:	00b50a23          	sb	a1,20(a0)
  52:	0ed7f793          	andi	a5,a5,237
  56:	00161593          	slli	a1,a2,0x1
  5a:	8fcd                	or	a5,a5,a1
  5c:	0612                	slli	a2,a2,0x4

0000005e <.L28>:
  5e:	8e5d                	or	a2,a2,a5
  60:	00c509a3          	sb	a2,19(a0)

00000064 <.L14>:
  64:	0006a803          	lw	a6,0(a3)
  68:	00ff08b7          	lui	a7,0xff0
  6c:	057d                	addi	a0,a0,31

0000006e <.LVL21>:
  6e:	01885793          	srli	a5,a6,0x18
  72:	01881613          	slli	a2,a6,0x18
  76:	00881593          	slli	a1,a6,0x8
  7a:	963e                	add	a2,a2,a5
  7c:	0115f5b3          	and	a1,a1,a7
  80:	962e                	add	a2,a2,a1
  82:	65c1                	lui	a1,0x10
  84:	f0058593          	addi	a1,a1,-256 # ff00 <.LASF443+0xda2c>
  88:	00885813          	srli	a6,a6,0x8
  8c:	00b87833          	and	a6,a6,a1
  90:	9642                	add	a2,a2,a6
  92:	00865793          	srli	a5,a2,0x8
  96:	fec50c23          	sb	a2,-8(a0)
  9a:	fef50ca3          	sb	a5,-7(a0)
  9e:	01065793          	srli	a5,a2,0x10
  a2:	8261                	srli	a2,a2,0x18
  a4:	fef50d23          	sb	a5,-6(a0)
  a8:	fec50da3          	sb	a2,-5(a0)
  ac:	42d4                	lw	a3,4(a3)

000000ae <.LVL22>:
  ae:	0186d613          	srli	a2,a3,0x18
  b2:	01869793          	slli	a5,a3,0x18
  b6:	97b2                	add	a5,a5,a2
  b8:	00869613          	slli	a2,a3,0x8
  bc:	01167633          	and	a2,a2,a7
  c0:	82a1                	srli	a3,a3,0x8
  c2:	8eed                	and	a3,a3,a1
  c4:	97b2                	add	a5,a5,a2
  c6:	97b6                	add	a5,a5,a3
  c8:	0087d693          	srli	a3,a5,0x8
  cc:	fef50e23          	sb	a5,-4(a0)
  d0:	fed50ea3          	sb	a3,-3(a0)
  d4:	0107d693          	srli	a3,a5,0x10
  d8:	83e1                	srli	a5,a5,0x18
  da:	fed50f23          	sb	a3,-2(a0)
  de:	fef50fa3          	sb	a5,-1(a0)
  e2:	02000613          	li	a2,32
  e6:	85ba                	mv	a1,a4
  e8:	00000317          	auipc	t1,0x0
			e8: R_RISCV_CALL	memcpy
			e8: R_RISCV_RELAX	*ABS*
  ec:	00030067          	jr	t1 # e8 <.LVL22+0x3a>

000000f0 <.L11>:
  f0:	8ba1                	andi	a5,a5,8
  f2:	d795                	beqz	a5,1e <.L12>
			f2: R_RISCV_RVC_BRANCH	.L12
  f4:	00050aa3          	sb	zero,21(a0)
  f8:	47c1                	li	a5,16
  fa:	b705                	j	1a <.L27>
			fa: R_RISCV_RVC_JUMP	.L27

000000fc <.L13>:
  fc:	01354783          	lbu	a5,19(a0)
 100:	823d                	srli	a2,a2,0xf

00000102 <.LVL24>:
 102:	0612                	slli	a2,a2,0x4
 104:	0ec7f793          	andi	a5,a5,236
 108:	0037e793          	ori	a5,a5,3
 10c:	bf89                	j	5e <.L28>
			10c: R_RISCV_RVC_JUMP	.L28

0000010e <.L9>:
 10e:	8082                	ret

Disassembly of section .text.prepareKDE:

00000000 <prepareKDE>:
   0:	10050e63          	beqz	a0,11c <.L47>
			0: R_RISCV_BRANCH	.L47
   4:	1101                	addi	sp,sp,-32
   6:	cc22                	sw	s0,24(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	842e                	mv	s0,a1
  12:	cdf5                	beqz	a1,10e <.L29>
			12: R_RISCV_RVC_BRANCH	.L29
  14:	ce6d                	beqz	a2,10e <.L29>
			14: R_RISCV_RVC_BRANCH	.L29
  16:	06f54783          	lbu	a5,111(a0)
  1a:	07150493          	addi	s1,a0,113
  1e:	89b2                	mv	s3,a2
  20:	94be                	add	s1,s1,a5
  22:	fdd00793          	li	a5,-35
  26:	00f48023          	sb	a5,0(s1)
  2a:	47d9                	li	a5,22
  2c:	00f480a3          	sb	a5,1(s1)
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	kde_oui
			30: R_RISCV_RELAX	*ABS*
  34:	0007c703          	lbu	a4,0(a5) # 0 <prepareKDE>
			34: R_RISCV_LO12_I	kde_oui
			34: R_RISCV_RELAX	*ABS*
  38:	00078793          	mv	a5,a5
			38: R_RISCV_LO12_I	kde_oui
			38: R_RISCV_RELAX	*ABS*
  3c:	892a                	mv	s2,a0

0000003e <.LVL27>:
  3e:	00e48123          	sb	a4,2(s1)
  42:	0017c703          	lbu	a4,1(a5)
  46:	0027c783          	lbu	a5,2(a5)
  4a:	4641                	li	a2,16

0000004c <.LVL28>:
  4c:	00e481a3          	sb	a4,3(s1)
  50:	00f48223          	sb	a5,4(s1)
  54:	4785                	li	a5,1
  56:	00f482a3          	sb	a5,5(s1)

0000005a <.LVL29>:
  5a:	0064c783          	lbu	a5,6(s1)
  5e:	00848513          	addi	a0,s1,8

00000062 <.LVL30>:
  62:	9bf1                	andi	a5,a5,-4
  64:	0017e793          	ori	a5,a5,1
  68:	00f48323          	sb	a5,6(s1)

0000006c <.LVL31>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	memcpy
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL31>

00000074 <.LVL32>:
  74:	0009c783          	lbu	a5,0(s3)
  78:	01848513          	addi	a0,s1,24

0000007c <.LVL33>:
  7c:	8b91                	andi	a5,a5,4
  7e:	cb85                	beqz	a5,ae <.L33>
			7e: R_RISCV_RVC_BRANCH	.L33
  80:	0014c783          	lbu	a5,1(s1)
  84:	4621                	li	a2,8
  86:	01840593          	addi	a1,s0,24
  8a:	07c1                	addi	a5,a5,16
  8c:	00f480a3          	sb	a5,1(s1)
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	memcpy
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL33+0x14>

00000098 <.LVL34>:
  98:	4621                	li	a2,8
  9a:	01040593          	addi	a1,s0,16
  9e:	02048513          	addi	a0,s1,32

000000a2 <.LVL35>:
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	memcpy
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL35>

000000aa <.LVL36>:
  aa:	02848513          	addi	a0,s1,40

000000ae <.L33>:
  ae:	07094403          	lbu	s0,112(s2)

000000b2 <.LVL38>:
  b2:	06f94783          	lbu	a5,111(s2)
  b6:	0422                	slli	s0,s0,0x8
  b8:	8c5d                	or	s0,s0,a5
  ba:	0014c783          	lbu	a5,1(s1)
  be:	0409                	addi	s0,s0,2
  c0:	943e                	add	s0,s0,a5
  c2:	0442                	slli	s0,s0,0x10
  c4:	8041                	srli	s0,s0,0x10
  c6:	00845793          	srli	a5,s0,0x8
  ca:	068907a3          	sb	s0,111(s2)
  ce:	40800433          	neg	s0,s0
  d2:	06f90823          	sb	a5,112(s2)
  d6:	881d                	andi	s0,s0,7

000000d8 <.LVL39>:
  d8:	c81d                	beqz	s0,10e <.L29>
			d8: R_RISCV_RVC_BRANCH	.L29
  da:	fdd00793          	li	a5,-35
  de:	00f50023          	sb	a5,0(a0)
  e2:	fff40613          	addi	a2,s0,-1
  e6:	4581                	li	a1,0
  e8:	0505                	addi	a0,a0,1

000000ea <.LVL40>:
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	memset
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL40>

000000f2 <.LVL41>:
  f2:	07094783          	lbu	a5,112(s2)
  f6:	06f94703          	lbu	a4,111(s2)
  fa:	07a2                	slli	a5,a5,0x8
  fc:	8fd9                	or	a5,a5,a4
  fe:	943e                	add	s0,s0,a5

00000100 <.LVL42>:
 100:	0442                	slli	s0,s0,0x10
 102:	8041                	srli	s0,s0,0x10
 104:	068907a3          	sb	s0,111(s2)
 108:	8021                	srli	s0,s0,0x8
 10a:	06890823          	sb	s0,112(s2)

0000010e <.L29>:
 10e:	40f2                	lw	ra,28(sp)
 110:	4462                	lw	s0,24(sp)
 112:	44d2                	lw	s1,20(sp)
 114:	4942                	lw	s2,16(sp)
 116:	49b2                	lw	s3,12(sp)
 118:	6105                	addi	sp,sp,32
 11a:	8082                	ret

0000011c <.L47>:
 11c:	8082                	ret

Disassembly of section .text.Encrypt_keyData:

00000000 <Encrypt_keyData>:
   0:	e919                	bnez	a0,16 <.L51>
			0: R_RISCV_RVC_BRANCH	.L51

00000002 <.L68>:
   2:	4501                	li	a0,0

00000004 <.LVL46>:
   4:	8082                	ret

00000006 <.L53>:
   6:	4501                	li	a0,0

00000008 <.L50>:
   8:	50b2                	lw	ra,44(sp)
   a:	5422                	lw	s0,40(sp)

0000000c <.LVL49>:
   c:	5492                	lw	s1,36(sp)

0000000e <.LVL50>:
   e:	5902                	lw	s2,32(sp)
  10:	49f2                	lw	s3,28(sp)
  12:	6145                	addi	sp,sp,48
  14:	8082                	ret

00000016 <.L51>:
  16:	d5f5                	beqz	a1,2 <.L68>
			16: R_RISCV_RVC_BRANCH	.L68
  18:	d66d                	beqz	a2,2 <.L68>
			18: R_RISCV_RVC_BRANCH	.L68
  1a:	00064783          	lbu	a5,0(a2)
  1e:	0087f713          	andi	a4,a5,8
  22:	c35d                	beqz	a4,c8 <.L54>
			22: R_RISCV_RVC_BRANCH	.L54
  24:	7179                	addi	sp,sp,-48
  26:	d422                	sw	s0,40(sp)
  28:	842a                	mv	s0,a0
  2a:	4531                	li	a0,12

0000002c <.LVL52>:
  2c:	d226                	sw	s1,36(sp)
  2e:	ce4e                	sw	s3,28(sp)
  30:	d606                	sw	ra,44(sp)
  32:	d04a                	sw	s2,32(sp)
  34:	89ae                	mv	s3,a1
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	pvPortMalloc
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL52+0xa>

0000003e <.LVL53>:
  3e:	84aa                	mv	s1,a0

00000040 <.LVL54>:
  40:	d179                	beqz	a0,6 <.L53>
			40: R_RISCV_RVC_BRANCH	.L53
  42:	19000513          	li	a0,400
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	pvPortMalloc
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL54+0x6>

0000004e <.LVL55>:
  4e:	c488                	sw	a0,8(s1)
  50:	892a                	mv	s2,a0
  52:	d955                	beqz	a0,6 <.L53>
			52: R_RISCV_RVC_BRANCH	.L53

00000054 <.LVL56>:
  54:	85ce                	mv	a1,s3
  56:	4641                	li	a2,16
  58:	850a                	mv	a0,sp

0000005a <.LVL57>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	memcpy
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL57>

00000062 <.LVL58>:
  62:	07044603          	lbu	a2,112(s0)
  66:	06f44783          	lbu	a5,111(s0)
  6a:	07140993          	addi	s3,s0,113

0000006e <.LVL59>:
  6e:	0622                	slli	a2,a2,0x8
  70:	8e5d                	or	a2,a2,a5
  72:	4701                	li	a4,0
  74:	86ce                	mv	a3,s3
  76:	87ca                	mv	a5,s2
  78:	820d                	srli	a2,a2,0x3
  7a:	4589                	li	a1,2
  7c:	850a                	mv	a0,sp
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	BL_AesWrap
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL59+0x10>

00000086 <.LVL60>:
  86:	07044603          	lbu	a2,112(s0)
  8a:	06f44783          	lbu	a5,111(s0)
  8e:	85ca                	mv	a1,s2
  90:	0622                	slli	a2,a2,0x8
  92:	8e5d                	or	a2,a2,a5
  94:	0621                	addi	a2,a2,8
  96:	0642                	slli	a2,a2,0x10
  98:	8241                	srli	a2,a2,0x10
  9a:	00865793          	srli	a5,a2,0x8
  9e:	06c407a3          	sb	a2,111(s0)
  a2:	06f40823          	sb	a5,112(s0)
  a6:	854e                	mv	a0,s3
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	memcpy
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL60+0x22>

000000b0 <.LVL61>:
  b0:	4488                	lw	a0,8(s1)
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	vPortFree
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL61+0x2>

000000ba <.LVL62>:
  ba:	8526                	mv	a0,s1
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	vPortFree
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL62+0x2>

000000c4 <.LVL63>:
  c4:	4505                	li	a0,1
  c6:	b789                	j	8 <.L50>
			c6: R_RISCV_RVC_JUMP	.L50

000000c8 <.L54>:
  c8:	0027d513          	srli	a0,a5,0x2

000000cc <.LVL65>:
  cc:	8905                	andi	a0,a0,1
  ce:	8082                	ret

Disassembly of section .text.KeyMgmtAp_DerivePTK:

00000000 <KeyMgmtAp_DerivePTK>:
   0:	7179                	addi	sp,sp,-48
   2:	5342                	lw	t1,48(sp)
   4:	d422                	sw	s0,40(sp)
   6:	8446                	mv	s0,a7
   8:	c01a                	sw	t1,0(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d226                	sw	s1,36(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	KeyMgmtSta_DeriveKeys
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <KeyMgmtAp_DerivePTK+0xe>

00000016 <.LVL67>:
  16:	01040493          	addi	s1,s0,16
  1a:	85a6                	mv	a1,s1
  1c:	4621                	li	a2,8
  1e:	0828                	addi	a0,sp,24
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	memcpy
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL67+0xa>

00000028 <.LVL68>:
  28:	0461                	addi	s0,s0,24

0000002a <.LVL69>:
  2a:	85a2                	mv	a1,s0
  2c:	4621                	li	a2,8
  2e:	8526                	mv	a0,s1
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	memcpy
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL69+0x6>

00000038 <.LVL70>:
  38:	082c                	addi	a1,sp,24
  3a:	8522                	mv	a0,s0
  3c:	4621                	li	a2,8
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	memcpy
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL70+0x6>

00000046 <.LVL71>:
  46:	50b2                	lw	ra,44(sp)
  48:	5422                	lw	s0,40(sp)

0000004a <.LVL72>:
  4a:	5492                	lw	s1,36(sp)

0000004c <.LVL73>:
  4c:	6145                	addi	sp,sp,48

0000004e <.LVL74>:
  4e:	8082                	ret

Disassembly of section .text.KeyData_CopyWPAWP2:

00000000 <KeyData_CopyWPAWP2>:
   0:	c595                	beqz	a1,2c <.L76>
			0: R_RISCV_RVC_BRANCH	.L76

00000002 <.LBB4>:
   2:	0015c603          	lbu	a2,1(a1)

00000006 <.LBE4>:
   6:	1141                	addi	sp,sp,-16
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB8>:
   a:	0609                	addi	a2,a2,2
   c:	00865793          	srli	a5,a2,0x8
  10:	06c507a3          	sb	a2,111(a0)
  14:	06f50823          	sb	a5,112(a0)
  18:	07150513          	addi	a0,a0,113

0000001c <.LVL77>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	memcpy
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL77>

00000024 <.LBE8>:
  24:	40b2                	lw	ra,12(sp)

00000026 <.LBB9>:
  26:	4505                	li	a0,1

00000028 <.LBE9>:
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

0000002c <.L76>:
  2c:	4501                	li	a0,0

0000002e <.LVL80>:
  2e:	8082                	ret

Disassembly of section .text.KeyData_UpdateKeyMaterial:

00000000 <KeyData_UpdateKeyMaterial>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0005c783          	lbu	a5,0(a1)
   8:	85b2                	mv	a1,a2

0000000a <.LVL82>:
   a:	0187f713          	andi	a4,a5,24
   e:	e711                	bnez	a4,1a <.L87>
			e: R_RISCV_RVC_BRANCH	.L87
  10:	0207f793          	andi	a5,a5,32
  14:	4705                	li	a4,1
  16:	cb81                	beqz	a5,26 <.L81>
			16: R_RISCV_RVC_BRANCH	.L81
  18:	85b6                	mv	a1,a3

0000001a <.L87>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	KeyData_CopyWPAWP2
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.L87>

00000022 <.LVL83>:
  22:	00a03733          	snez	a4,a0

00000026 <.L81>:
  26:	40b2                	lw	ra,12(sp)
  28:	853a                	mv	a0,a4
  2a:	0141                	addi	sp,sp,16
  2c:	8082                	ret

Disassembly of section .text.ROM_InitGTK:

00000000 <ROM_InitGTK>:
   0:	67c1                	lui	a5,0x10
   2:	0785                	addi	a5,a5,1
   4:	02052023          	sw	zero,32(a0)
   8:	d15c                	sw	a5,36(a0)
   a:	00000317          	auipc	t1,0x0
			a: R_RISCV_CALL	GenerateGTK_internal
			a: R_RISCV_RELAX	*ABS*
   e:	00030067          	jr	t1 # a <ROM_InitGTK+0xa>

Disassembly of section .text.validate4WayHandshakeIe:

00000000 <validate4WayHandshakeIe>:
   0:	1101                	addi	sp,sp,-32
   2:	00a11623          	sh	a0,12(sp)
   6:	00b10423          	sb	a1,8(sp)
   a:	00c10223          	sb	a2,4(sp)
   e:	00268593          	addi	a1,a3,2

00000012 <.LVL87>:
  12:	4609                	li	a2,2

00000014 <.LVL88>:
  14:	0068                	addi	a0,sp,12
  16:	cc22                	sw	s0,24(sp)
  18:	ca26                	sw	s1,20(sp)
  1a:	ce06                	sw	ra,28(sp)
  1c:	8436                	mv	s0,a3
  1e:	84ba                	mv	s1,a4
  20:	01010023          	sb	a6,0(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	memcmp
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL88+0x10>

0000002c <.LVL89>:
  2c:	c519                	beqz	a0,3a <.L90>
			2c: R_RISCV_RVC_BRANCH	.L90

0000002e <.L92>:
  2e:	4505                	li	a0,1

00000030 <.L89>:
  30:	40f2                	lw	ra,28(sp)
  32:	4462                	lw	s0,24(sp)

00000034 <.LVL90>:
  34:	44d2                	lw	s1,20(sp)
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

0000003a <.L90>:
  3a:	4605                	li	a2,1
  3c:	858a                	mv	a1,sp
  3e:	0048                	addi	a0,sp,4
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memcmp
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.L90+0x6>

00000048 <.LVL92>:
  48:	f17d                	bnez	a0,2e <.L92>
			48: R_RISCV_RVC_BRANCH	.L92
  4a:	4605                	li	a2,1
  4c:	00440593          	addi	a1,s0,4
  50:	0028                	addi	a0,sp,8
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	memcmp
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL92+0xa>

0000005a <.LVL93>:
  5a:	f971                	bnez	a0,2e <.L92>
			5a: R_RISCV_RVC_BRANCH	.L92
  5c:	00544503          	lbu	a0,5(s0)
  60:	8d05                	sub	a0,a0,s1
  62:	00a03533          	snez	a0,a0
  66:	b7e9                	j	30 <.L89>
			66: R_RISCV_RVC_JUMP	.L89

Disassembly of section .text.InitKeyMgmtInfo:

00000000 <InitKeyMgmtInfo>:
   0:	1101                	addi	sp,sp,-32
   2:	4785                	li	a5,1
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	00f50323          	sb	a5,6(a0)
  10:	842a                	mv	s0,a0
  12:	8932                	mv	s2,a2
  14:	0509                	addi	a0,a0,2

00000016 <.LVL95>:
  16:	4609                	li	a2,2

00000018 <.LVL96>:
  18:	84ae                	mv	s1,a1
  1a:	c43a                	sw	a4,8(sp)
  1c:	c636                	sw	a3,12(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	memcpy
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL96+0x6>

00000026 <.LVL97>:
  26:	4605                	li	a2,1
  28:	85ca                	mv	a1,s2
  2a:	00440513          	addi	a0,s0,4
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	memcpy
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL97+0x8>

00000036 <.LVL98>:
  36:	4722                	lw	a4,8(sp)
  38:	00e402a3          	sb	a4,5(s0)
  3c:	0004c783          	lbu	a5,0(s1)
  40:	0207f793          	andi	a5,a5,32
  44:	c781                	beqz	a5,4c <.L94>
			44: R_RISCV_RVC_BRANCH	.L94
  46:	46b2                	lw	a3,12(sp)
  48:	00d41023          	sh	a3,0(s0)

0000004c <.L94>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4462                	lw	s0,24(sp)

00000050 <.LVL99>:
  50:	44d2                	lw	s1,20(sp)

00000052 <.LVL100>:
  52:	4942                	lw	s2,16(sp)

00000054 <.LVL101>:
  54:	6105                	addi	sp,sp,32
  56:	8082                	ret
