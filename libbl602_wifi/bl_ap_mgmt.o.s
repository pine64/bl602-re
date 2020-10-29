
libbl602_wifi/bl_ap_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.ReInitGTK:

00000000 <ReInitGTK>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842a                	mv	s0,a0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	cm_GetApInfo
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <ReInitGTK+0xa>

00000012 <.LVL1>:
  12:	84aa                	mv	s1,a0

00000014 <.LVL2>:
  14:	00344503          	lbu	a0,3(s0)
  18:	0ff00793          	li	a5,255
  1c:	00f50663          	beq	a0,a5,28 <.L2>
			1c: R_RISCV_BRANCH	.L2
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	mm_sec_machwkey_del
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL2+0xc>

00000028 <.L2>:
  28:	04640613          	addi	a2,s0,70
  2c:	0f448593          	addi	a1,s1,244
  30:	0cc48513          	addi	a0,s1,204
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	ROM_InitGTK
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.L2+0xc>

0000003c <.LVL4>:
  3c:	8522                	mv	a0,s0
  3e:	4581                	li	a1,0
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	add_key_to_mac
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL4+0x4>

00000048 <.LVL5>:
  48:	00a401a3          	sb	a0,3(s0)
  4c:	40b2                	lw	ra,12(sp)
  4e:	4422                	lw	s0,8(sp)

00000050 <.LVL6>:
  50:	4492                	lw	s1,4(sp)

00000052 <.LVL7>:
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.KeyMgmtInit:

00000000 <KeyMgmtInit>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	84aa                	mv	s1,a0
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	cm_GetApInfo
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <KeyMgmtInit+0xa>

00000012 <.LVL9>:
  12:	842a                	mv	s0,a0

00000014 <.LVL10>:
  14:	0f450593          	addi	a1,a0,244
  18:	04648613          	addi	a2,s1,70
  1c:	0cc50513          	addi	a0,a0,204
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ROM_InitGTK
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL10+0xc>

00000028 <.LVL11>:
  28:	0b842703          	lw	a4,184(s0)
  2c:	4785                	li	a5,1
  2e:	02f71b63          	bne	a4,a5,64 <.L4>
			2e: R_RISCV_BRANCH	.L4
  32:	02c4c583          	lbu	a1,44(s1)
  36:	01840613          	addi	a2,s0,24

0000003a <.LVL12>:
  3a:	8532                	mv	a0,a2
  3c:	c62e                	sw	a1,12(sp)
  3e:	c432                	sw	a2,8(sp)
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	strlen
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL12+0x6>

00000048 <.LVL13>:
  48:	4622                	lw	a2,8(sp)
  4a:	45b2                	lw	a1,12(sp)
  4c:	0ff57693          	andi	a3,a0,255
  50:	05940713          	addi	a4,s0,89

00000054 <.LVL14>:
  54:	00c48513          	addi	a0,s1,12
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	pmkCacheGeneratePSK
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL14+0x4>

00000060 <.LVL15>:
  60:	0a042c23          	sw	zero,184(s0)

00000064 <.L4>:
  64:	40f2                	lw	ra,28(sp)
  66:	4462                	lw	s0,24(sp)

00000068 <.LVL17>:
  68:	44d2                	lw	s1,20(sp)

0000006a <.LVL18>:
  6a:	6105                	addi	sp,sp,32
  6c:	8082                	ret

Disassembly of section .text.PrepDefaultEapolMsg:

00000000 <PrepDefaultEapolMsg>:
   0:	7139                	addi	sp,sp,-64
   2:	de06                	sw	ra,60(sp)
   4:	c632                	sw	a2,12(sp)
   6:	dc22                	sw	s0,56(sp)
   8:	da26                	sw	s1,52(sp)
   a:	842a                	mv	s0,a0
   c:	d84a                	sw	s2,48(sp)
   e:	d64e                	sw	s3,44(sp)
  10:	d452                	sw	s4,40(sp)
  12:	89ae                	mv	s3,a1
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	cm_GetApData
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <PrepDefaultEapolMsg+0x14>

0000001c <.LVL20>:
  1c:	892a                	mv	s2,a0

0000001e <.LVL21>:
  1e:	8522                	mv	a0,s0

00000020 <.LVL22>:
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	cm_GetApInfo
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL22>

00000028 <.LVL23>:
  28:	4632                	lw	a2,12(sp)
  2a:	8a2a                	mv	s4,a0

0000002c <.LVL24>:
  2c:	086c                	addi	a1,sp,28
  2e:	8522                	mv	a0,s0

00000030 <.LVL25>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	GetTxEAPOLBuffer
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL25>

00000038 <.LVL26>:
  38:	84aa                	mv	s1,a0

0000003a <.LVL27>:
  3a:	c921                	beqz	a0,8a <.L7>
			3a: R_RISCV_RVC_BRANCH	.L7
  3c:	4572                	lw	a0,28(sp)
  3e:	07200613          	li	a2,114
  42:	4581                	li	a1,0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	memset
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL27+0xa>

0000004c <.LVL28>:
  4c:	4572                	lw	a0,28(sp)
  4e:	04040593          	addi	a1,s0,64
  52:	04640613          	addi	a2,s0,70
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	formEAPOLEthHdr
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL28+0xa>

0000005e <.LVL29>:
  5e:	01092583          	lw	a1,16(s2)
  62:	01494783          	lbu	a5,20(s2)
  66:	4572                	lw	a0,28(sp)
  68:	81d5                	srli	a1,a1,0x15
  6a:	8ba1                	andi	a5,a5,8
  6c:	8985                	andi	a1,a1,1
  6e:	4685                	li	a3,1
  70:	e789                	bnez	a5,7a <.L9>
			70: R_RISCV_RVC_BRANCH	.L9
  72:	008a4683          	lbu	a3,8(s4)
  76:	828d                	srli	a3,a3,0x3
  78:	8a85                	andi	a3,a3,1

0000007a <.L9>:
  7a:	4601                	li	a2,0
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	SetEAPOLKeyDescTypeVersion
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L9+0x2>

00000084 <.LVL30>:
  84:	47f2                	lw	a5,28(sp)
  86:	00f9a023          	sw	a5,0(s3)

0000008a <.L7>:
  8a:	50f2                	lw	ra,60(sp)
  8c:	5462                	lw	s0,56(sp)

0000008e <.LVL32>:
  8e:	8526                	mv	a0,s1
  90:	5942                	lw	s2,48(sp)

00000092 <.LVL33>:
  92:	54d2                	lw	s1,52(sp)

00000094 <.LVL34>:
  94:	59b2                	lw	s3,44(sp)

00000096 <.LVL35>:
  96:	5a22                	lw	s4,40(sp)

00000098 <.LVL36>:
  98:	6121                	addi	sp,sp,64
  9a:	8082                	ret

Disassembly of section .text.GeneratePWKMsg1:

00000000 <GeneratePWKMsg1>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d606                	sw	ra,44(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	84aa                	mv	s1,a0
   c:	c62e                	sw	a1,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	cm_GetApData
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <GeneratePWKMsg1+0xe>

00000016 <.LVL38>:
  16:	4632                	lw	a2,12(sp)
  18:	842a                	mv	s0,a0

0000001a <.LVL39>:
  1a:	084c                	addi	a1,sp,20
  1c:	8526                	mv	a0,s1
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	PrepDefaultEapolMsg
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL39+0x4>

00000026 <.LVL40>:
  26:	c959                	beqz	a0,bc <.L18>
			26: R_RISCV_RVC_BRANCH	.L18

00000028 <.LBB6>:
  28:	4c5c                	lw	a5,28(s0)
  2a:	892a                	mv	s2,a0

0000002c <.LBB9>:
  2c:	0785                	addi	a5,a5,1
  2e:	cc5c                	sw	a5,28(s0)
  30:	e781                	bnez	a5,38 <.L17>
			30: R_RISCV_RVC_BRANCH	.L17
  32:	5018                	lw	a4,32(s0)
  34:	0705                	addi	a4,a4,1
  36:	d018                	sw	a4,32(s0)

00000038 <.L17>:
  38:	5018                	lw	a4,32(s0)
  3a:	0a448493          	addi	s1,s1,164

0000003e <.LVL43>:
  3e:	02000593          	li	a1,32
  42:	8526                	mv	a0,s1

00000044 <.LVL44>:
  44:	ce3e                	sw	a5,28(sp)
  46:	cc3a                	sw	a4,24(sp)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	supplicantGenerateRand
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL44+0x4>

00000050 <.LVL45>:
  50:	4552                	lw	a0,20(sp)
  52:	6605                	lui	a2,0x1
  54:	8726                	mv	a4,s1
  56:	0834                	addi	a3,sp,24
  58:	80060613          	addi	a2,a2,-2048 # 800 <.LLST18+0x2>
  5c:	01440593          	addi	a1,s0,20
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	PopulateKeyMsg
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL45+0x10>

00000068 <.LVL46>:
  68:	4752                	lw	a4,20(sp)
  6a:	854a                	mv	a0,s2
  6c:	07074583          	lbu	a1,112(a4)
  70:	06f74783          	lbu	a5,111(a4)
  74:	05a2                	slli	a1,a1,0x8
  76:	8ddd                	or	a1,a1,a5
  78:	05444783          	lbu	a5,84(s0)
  7c:	05f58593          	addi	a1,a1,95
  80:	05c2                	slli	a1,a1,0x10
  82:	81c1                	srli	a1,a1,0x10

00000084 <.LVL47>:
  84:	00f70723          	sb	a5,14(a4)
  88:	478d                	li	a5,3
  8a:	00f707a3          	sb	a5,15(a4)
  8e:	0085d693          	srli	a3,a1,0x8
  92:	00859793          	slli	a5,a1,0x8
  96:	8fd5                	or	a5,a5,a3
  98:	07c2                	slli	a5,a5,0x10
  9a:	83c1                	srli	a5,a5,0x10
  9c:	00f70823          	sb	a5,16(a4)
  a0:	83a1                	srli	a5,a5,0x8
  a2:	00f708a3          	sb	a5,17(a4)
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	UpdateEAPOLWcbLenAndTransmit
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL47+0x22>

000000ae <.LVL48>:
  ae:	4501                	li	a0,0

000000b0 <.L16>:
  b0:	50b2                	lw	ra,44(sp)
  b2:	5422                	lw	s0,40(sp)

000000b4 <.LVL50>:
  b4:	5492                	lw	s1,36(sp)
  b6:	5902                	lw	s2,32(sp)
  b8:	6145                	addi	sp,sp,48
  ba:	8082                	ret

000000bc <.L18>:
  bc:	4505                	li	a0,1

000000be <.LVL52>:
  be:	bfcd                	j	b0 <.L16>
			be: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.GeneratePWKMsg3:

00000000 <GeneratePWKMsg3>:
   0:	7179                	addi	sp,sp,-48
   2:	862e                	mv	a2,a1
   4:	004c                	addi	a1,sp,4

00000006 <.LVL54>:
   6:	cc52                	sw	s4,24(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	8a2a                	mv	s4,a0
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	PrepDefaultEapolMsg
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL54+0xe>

0000001c <.LVL55>:
  1c:	cd51                	beqz	a0,b8 <.L26>
			1c: R_RISCV_RVC_BRANCH	.L26
  1e:	84aa                	mv	s1,a0
  20:	8552                	mv	a0,s4

00000022 <.LVL56>:
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	cm_GetApData
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL56>

0000002a <.LVL57>:
  2a:	842a                	mv	s0,a0

0000002c <.LVL58>:
  2c:	8552                	mv	a0,s4
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	cm_GetApInfo
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL58+0x2>

00000036 <.LBB12>:
  36:	4c5c                	lw	a5,28(s0)

00000038 <.LBE12>:
  38:	892a                	mv	s2,a0

0000003a <.LBB15>:
  3a:	0785                	addi	a5,a5,1
  3c:	cc5c                	sw	a5,28(s0)
  3e:	e781                	bnez	a5,46 <.L22>
			3e: R_RISCV_RVC_BRANCH	.L22
  40:	5018                	lw	a4,32(s0)
  42:	0705                	addi	a4,a4,1
  44:	d018                	sw	a4,32(s0)

00000046 <.L22>:
  46:	01245603          	lhu	a2,18(s0)
  4a:	c63e                	sw	a5,12(sp)
  4c:	77e1                	lui	a5,0xffff8
  4e:	062a                	slli	a2,a2,0xa
  50:	8e7d                	and	a2,a2,a5
  52:	6785                	lui	a5,0x1
  54:	5018                	lw	a4,32(s0)
  56:	88078793          	addi	a5,a5,-1920 # 880 <.LASF232+0x8>
  5a:	8e5d                	or	a2,a2,a5
  5c:	4512                	lw	a0,4(sp)

0000005e <.LVL62>:
  5e:	01440993          	addi	s3,s0,20
  62:	0642                	slli	a2,a2,0x10
  64:	c43a                	sw	a4,8(sp)
  66:	0034                	addi	a3,sp,8
  68:	0a4a0713          	addi	a4,s4,164
  6c:	8241                	srli	a2,a2,0x10
  6e:	85ce                	mv	a1,s3
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	PopulateKeyMsg
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL62+0x12>

00000078 <.LVL63>:
  78:	01245783          	lhu	a5,18(s0)
  7c:	4681                	li	a3,0
  7e:	0087f713          	andi	a4,a5,8
  82:	eb01                	bnez	a4,92 <.L23>
			82: R_RISCV_RVC_BRANCH	.L23
  84:	0207f793          	andi	a5,a5,32
  88:	c789                	beqz	a5,92 <.L23>
			88: R_RISCV_RVC_BRANCH	.L23
  8a:	000006b7          	lui	a3,0x0
			8a: R_RISCV_HI20	int_rsn_ie
			8a: R_RISCV_RELAX	*ABS*
  8e:	00068693          	mv	a3,a3
			8e: R_RISCV_LO12_I	int_rsn_ie
			8e: R_RISCV_RELAX	*ABS*

00000092 <.L23>:
  92:	4512                	lw	a0,4(sp)
  94:	4601                	li	a2,0
  96:	01240593          	addi	a1,s0,18
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	KeyData_UpdateKeyMaterial
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.L23+0x8>

000000a2 <.LVL65>:
  a2:	ed09                	bnez	a0,bc <.L24>
			a2: R_RISCV_RVC_BRANCH	.L24

000000a4 <.L34>:
  a4:	4488                	lw	a0,8(s1)
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	vPortFree
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.L34+0x2>

000000ae <.LVL66>:
  ae:	8526                	mv	a0,s1
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	vPortFree
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL66+0x2>

000000b8 <.L26>:
  b8:	4505                	li	a0,1
  ba:	a899                	j	110 <.L21>
			ba: R_RISCV_RVC_JUMP	.L21

000000bc <.L24>:
  bc:	01245783          	lhu	a5,18(s0)
  c0:	0207f793          	andi	a5,a5,32
  c4:	c39d                	beqz	a5,ea <.L25>
			c4: R_RISCV_RVC_BRANCH	.L25
  c6:	4512                	lw	a0,4(sp)
  c8:	00890613          	addi	a2,s2,8
  cc:	0cc90593          	addi	a1,s2,204
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	prepareKDE
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.L24+0x14>

000000d8 <.LVL69>:
  d8:	4512                	lw	a0,4(sp)
  da:	864e                	mv	a2,s3
  dc:	04440593          	addi	a1,s0,68
  e0:	00000097          	auipc	ra,0x0
			e0: R_RISCV_CALL	Encrypt_keyData
			e0: R_RISCV_RELAX	*ABS*
  e4:	000080e7          	jalr	ra # e0 <.LVL69+0x8>

000000e8 <.LVL70>:
  e8:	dd55                	beqz	a0,a4 <.L34>
			e8: R_RISCV_RVC_BRANCH	.L34

000000ea <.L25>:
  ea:	4512                	lw	a0,4(sp)
  ec:	05444603          	lbu	a2,84(s0)
  f0:	03440593          	addi	a1,s0,52
  f4:	01454683          	lbu	a3,20(a0)
  f8:	8a9d                	andi	a3,a3,7
  fa:	00000097          	auipc	ra,0x0
			fa: R_RISCV_CALL	KeyMgmtSta_PopulateEAPOLLengthMic
			fa: R_RISCV_RELAX	*ABS*
  fe:	000080e7          	jalr	ra # fa <.L25+0x10>

00000102 <.LVL71>:
 102:	85aa                	mv	a1,a0
 104:	8526                	mv	a0,s1

00000106 <.LVL72>:
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	UpdateEAPOLWcbLenAndTransmit
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LVL72>

0000010e <.LVL73>:
 10e:	4501                	li	a0,0

00000110 <.L21>:
 110:	50b2                	lw	ra,44(sp)
 112:	5422                	lw	s0,40(sp)
 114:	5492                	lw	s1,36(sp)
 116:	5902                	lw	s2,32(sp)
 118:	49f2                	lw	s3,28(sp)
 11a:	4a62                	lw	s4,24(sp)

0000011c <.LVL75>:
 11c:	6145                	addi	sp,sp,48
 11e:	8082                	ret

Disassembly of section .text.ProcessPWKMsg4:

00000000 <ProcessPWKMsg4>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	4100                	lw	s0,0(a0)

0000000c <.LVL77>:
   c:	892a                	mv	s2,a0
   e:	8522                	mv	a0,s0

00000010 <.LVL78>:
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	cm_GetApData
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL78>

00000018 <.LVL79>:
  18:	84aa                	mv	s1,a0

0000001a <.LVL80>:
  1a:	03450593          	addi	a1,a0,52
  1e:	00892503          	lw	a0,8(s2)
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	IsEAPOL_MICValid
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL80+0x8>

0000002a <.LVL81>:
  2a:	c939                	beqz	a0,80 <.L37>
			2a: R_RISCV_RVC_BRANCH	.L37
  2c:	4785                	li	a5,1
  2e:	0ef40423          	sb	a5,232(s0)
  32:	4585                	li	a1,1
  34:	0e0404a3          	sb	zero,233(s0)
  38:	0e040223          	sb	zero,228(s0)
  3c:	0e0402a3          	sb	zero,229(s0)
  40:	0e040323          	sb	zero,230(s0)
  44:	0e0403a3          	sb	zero,231(s0)
  48:	8522                	mv	a0,s0
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	add_key_to_mac
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL81+0x20>

00000052 <.LVL82>:
  52:	00144503          	lbu	a0,1(s0)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	apm_sta_add
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL82+0x4>

0000005e <.LVL83>:
  5e:	0124d783          	lhu	a5,18(s1)
  62:	00048c23          	sb	zero,24(s1)
  66:	4501                	li	a0,0
  68:	0207f793          	andi	a5,a5,32
  6c:	c781                	beqz	a5,74 <.L36>
			6c: R_RISCV_RVC_BRANCH	.L36
  6e:	47a9                	li	a5,10
  70:	00f48b23          	sb	a5,22(s1)

00000074 <.L36>:
  74:	40b2                	lw	ra,12(sp)
  76:	4422                	lw	s0,8(sp)

00000078 <.LVL84>:
  78:	4492                	lw	s1,4(sp)

0000007a <.LVL85>:
  7a:	4902                	lw	s2,0(sp)

0000007c <.LVL86>:
  7c:	0141                	addi	sp,sp,16
  7e:	8082                	ret

00000080 <.L37>:
  80:	4505                	li	a0,1
  82:	bfcd                	j	74 <.L36>
			82: R_RISCV_RVC_JUMP	.L36

Disassembly of section .text.GenerateApEapolMsg:

00000000 <GenerateApEapolMsg>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	842e                	mv	s0,a1
   8:	c84a                	sw	s2,16(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	892a                	mv	s2,a0
   e:	c632                	sw	a2,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	cm_GetApData
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <GenerateApEapolMsg+0x10>

00000018 <.LVL89>:
  18:	00147793          	andi	a5,s0,1
  1c:	84aa                	mv	s1,a0

0000001e <.LVL90>:
  1e:	45b2                	lw	a1,12(sp)
  20:	e781                	bnez	a5,28 <.L42>
			20: R_RISCV_RVC_BRANCH	.L42
  22:	147d                	addi	s0,s0,-1
  24:	0ff47413          	andi	s0,s0,255

00000028 <.L42>:
  28:	00c4c703          	lbu	a4,12(s1)
  2c:	00848b23          	sb	s0,22(s1)
  30:	4785                	li	a5,1
  32:	02f70063          	beq	a4,a5,52 <.L43>
			32: R_RISCV_BRANCH	.L43
  36:	02f41563          	bne	s0,a5,60 <.L44>
			36: R_RISCV_BRANCH	.L44
  3a:	854a                	mv	a0,s2
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	GeneratePWKMsg1
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.L42+0x14>

00000044 <.L51>:
  44:	842a                	mv	s0,a0

00000046 <.LVL93>:
  46:	e521                	bnez	a0,8e <.L47>
			46: R_RISCV_RVC_BRANCH	.L47
  48:	0164c783          	lbu	a5,22(s1)
  4c:	0785                	addi	a5,a5,1
  4e:	00f48b23          	sb	a5,22(s1)

00000052 <.L43>:
  52:	0184c783          	lbu	a5,24(s1)
  56:	4401                	li	s0,0
  58:	0785                	addi	a5,a5,1
  5a:	00f48c23          	sb	a5,24(s1)
  5e:	a805                	j	8e <.L47>
			5e: R_RISCV_RVC_JUMP	.L47

00000060 <.L44>:
  60:	478d                	li	a5,3
  62:	00f41863          	bne	s0,a5,72 <.L46>
			62: R_RISCV_BRANCH	.L46
  66:	854a                	mv	a0,s2
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	GeneratePWKMsg3
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L44+0x8>

00000070 <.LVL96>:
  70:	bfd1                	j	44 <.L51>
			70: R_RISCV_RVC_JUMP	.L51

00000072 <.L46>:
  72:	4405                	li	s0,1

00000074 <.LVL98>:
  74:	cd89                	beqz	a1,8e <.L47>
			74: R_RISCV_RVC_BRANCH	.L47
  76:	4588                	lw	a0,8(a1)
  78:	c62e                	sw	a1,12(sp)

0000007a <.LVL99>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	vPortFree
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL99>

00000082 <.LVL100>:
  82:	45b2                	lw	a1,12(sp)
  84:	852e                	mv	a0,a1
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	vPortFree
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL100+0x4>

0000008e <.L47>:
  8e:	8522                	mv	a0,s0
  90:	40f2                	lw	ra,28(sp)
  92:	4462                	lw	s0,24(sp)
  94:	44d2                	lw	s1,20(sp)

00000096 <.LVL102>:
  96:	4942                	lw	s2,16(sp)

00000098 <.LVL103>:
  98:	6105                	addi	sp,sp,32
  9a:	8082                	ret

Disassembly of section .text.ProcessPWKMsg2:

00000000 <ProcessPWKMsg2>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	d422                	sw	s0,40(sp)
   c:	4100                	lw	s0,0(a0)

0000000e <.LVL105>:
   e:	84aa                	mv	s1,a0
  10:	8522                	mv	a0,s0

00000012 <.LVL106>:
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	cm_GetApData
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL106>

0000001a <.LVL107>:
  1a:	892a                	mv	s2,a0

0000001c <.LVL108>:
  1c:	8522                	mv	a0,s0

0000001e <.LVL109>:
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	cm_GetApInfo
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL109>

00000026 <.LVL110>:
  26:	4484                	lw	s1,8(s1)

00000028 <.LVL111>:
  28:	03490993          	addi	s3,s2,52
  2c:	04040593          	addi	a1,s0,64
  30:	05950513          	addi	a0,a0,89

00000034 <.LVL112>:
  34:	c002                	sw	zero,0(sp)
  36:	0c440893          	addi	a7,s0,196
  3a:	04490813          	addi	a6,s2,68
  3e:	87ce                	mv	a5,s3
  40:	01148713          	addi	a4,s1,17
  44:	0a440693          	addi	a3,s0,164

00000048 <.LVL113>:
  48:	03040613          	addi	a2,s0,48
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	KeyMgmtAp_DerivePTK
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL113+0x4>

00000054 <.LVL114>:
  54:	85ce                	mv	a1,s3
  56:	8526                	mv	a0,s1
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	IsEAPOL_MICValid
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL114+0x4>

00000060 <.LVL115>:
  60:	c51d                	beqz	a0,8e <.L53>
			60: R_RISCV_RVC_BRANCH	.L53
  62:	00090c23          	sb	zero,24(s2)
  66:	0644c783          	lbu	a5,100(s1)
  6a:	8522                	mv	a0,s0
  6c:	5422                	lw	s0,40(sp)

0000006e <.LVL116>:
  6e:	50b2                	lw	ra,44(sp)
  70:	5492                	lw	s1,36(sp)

00000072 <.LVL117>:
  72:	5902                	lw	s2,32(sp)

00000074 <.LVL118>:
  74:	49f2                	lw	s3,28(sp)

00000076 <.LVL119>:
  76:	0789                	addi	a5,a5,2
  78:	00000737          	lui	a4,0x0
			78: R_RISCV_HI20	.LANCHOR0
			78: R_RISCV_RELAX	*ABS*
  7c:	00f70023          	sb	a5,0(a4) # 0 <ProcessPWKMsg2>
			7c: R_RISCV_LO12_S	.LANCHOR0
			7c: R_RISCV_RELAX	*ABS*
  80:	4601                	li	a2,0
  82:	458d                	li	a1,3
  84:	6145                	addi	sp,sp,48
  86:	00000317          	auipc	t1,0x0
			86: R_RISCV_CALL	GenerateApEapolMsg
			86: R_RISCV_RELAX	*ABS*
  8a:	00030067          	jr	t1 # 86 <.LVL119+0x10>

0000008e <.L53>:
  8e:	50b2                	lw	ra,44(sp)
  90:	5422                	lw	s0,40(sp)

00000092 <.LVL121>:
  92:	5492                	lw	s1,36(sp)

00000094 <.LVL122>:
  94:	5902                	lw	s2,32(sp)

00000096 <.LVL123>:
  96:	49f2                	lw	s3,28(sp)

00000098 <.LVL124>:
  98:	4505                	li	a0,1
  9a:	6145                	addi	sp,sp,48
  9c:	8082                	ret

Disassembly of section .text.SendEAPOLMsgUsingBufDesc:

00000000 <SendEAPOLMsgUsingBufDesc>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c62e                	sw	a1,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	842a                	mv	s0,a0

0000000a <.LVL126>:
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	cm_GetApData
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL126>

00000012 <.LVL127>:
  12:	01654583          	lbu	a1,22(a0)
  16:	4632                	lw	a2,12(sp)
  18:	4501                	li	a0,0

0000001a <.LVL128>:
  1a:	0015f713          	andi	a4,a1,1
  1e:	c719                	beqz	a4,2c <.L55>
			1e: R_RISCV_RVC_BRANCH	.L55
  20:	8522                	mv	a0,s0
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	GenerateApEapolMsg
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL128+0x8>

0000002a <.LVL129>:
  2a:	4505                	li	a0,1

0000002c <.L55>:
  2c:	40f2                	lw	ra,28(sp)
  2e:	4462                	lw	s0,24(sp)

00000030 <.LVL130>:
  30:	6105                	addi	sp,sp,32

00000032 <.LVL131>:
  32:	8082                	ret

Disassembly of section .text.ProcessKeyMgmtDataAp:

00000000 <ProcessKeyMgmtDataAp>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)

00000004 <.LVL133>:
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	842a                	mv	s0,a0
   c:	4108                	lw	a0,0(a0)

0000000e <.LVL134>:
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	cm_GetApData
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL134>

00000016 <.LVL135>:
  16:	00842903          	lw	s2,8(s0)

0000001a <.LVL136>:
  1a:	00594783          	lbu	a5,5(s2)
  1e:	8b91                	andi	a5,a5,4
  20:	cb81                	beqz	a5,30 <.L60>
			20: R_RISCV_RVC_BRANCH	.L60

00000022 <.L63>:
  22:	4505                	li	a0,1

00000024 <.L61>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL139>:
  28:	44d2                	lw	s1,20(sp)
  2a:	4942                	lw	s2,16(sp)

0000002c <.LVL140>:
  2c:	6105                	addi	sp,sp,32
  2e:	8082                	ret

00000030 <.L60>:
  30:	84aa                	mv	s1,a0

00000032 <.LBB22>:
  32:	4611                	li	a2,4
  34:	00990593          	addi	a1,s2,9

00000038 <.LVL143>:
  38:	0028                	addi	a0,sp,8

0000003a <.LVL144>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	memcpy
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL144>

00000042 <.LVL145>:
  42:	4611                	li	a2,4
  44:	00d90593          	addi	a1,s2,13
  48:	0068                	addi	a0,sp,12
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	memcpy
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL145+0x8>

00000052 <.LVL146>:
  52:	47a2                	lw	a5,8(sp)
  54:	00ff05b7          	lui	a1,0xff0
  58:	0187d693          	srli	a3,a5,0x18
  5c:	01879713          	slli	a4,a5,0x18
  60:	9736                	add	a4,a4,a3
  62:	00879693          	slli	a3,a5,0x8
  66:	8eed                	and	a3,a3,a1
  68:	96ba                	add	a3,a3,a4
  6a:	0087d713          	srli	a4,a5,0x8
  6e:	67c1                	lui	a5,0x10
  70:	f0078613          	addi	a2,a5,-256 # ff00 <.LASF992+0xc319>
  74:	509c                	lw	a5,32(s1)
  76:	8f71                	and	a4,a4,a2
  78:	9736                	add	a4,a4,a3
  7a:	fae794e3          	bne	a5,a4,22 <.L63>
			7a: R_RISCV_BRANCH	.L63
  7e:	47b2                	lw	a5,12(sp)
  80:	0187d693          	srli	a3,a5,0x18
  84:	01879713          	slli	a4,a5,0x18
  88:	9736                	add	a4,a4,a3
  8a:	00879693          	slli	a3,a5,0x8
  8e:	8eed                	and	a3,a3,a1
  90:	83a1                	srli	a5,a5,0x8
  92:	9736                	add	a4,a4,a3
  94:	8ff1                	and	a5,a5,a2
  96:	97ba                	add	a5,a5,a4
  98:	4cd8                	lw	a4,28(s1)
  9a:	f8f714e3          	bne	a4,a5,22 <.L63>
			9a: R_RISCV_BRANCH	.L63

0000009e <.LBE22>:
  9e:	0164c783          	lbu	a5,22(s1)
  a2:	4709                	li	a4,2
  a4:	00e79863          	bne	a5,a4,b4 <.L64>
			a4: R_RISCV_BRANCH	.L64
  a8:	8522                	mv	a0,s0
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	ProcessPWKMsg2
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LBE22+0xc>

000000b2 <.LVL148>:
  b2:	bf8d                	j	24 <.L61>
			b2: R_RISCV_RVC_JUMP	.L61

000000b4 <.L64>:
  b4:	4711                	li	a4,4
  b6:	f6e796e3          	bne	a5,a4,22 <.L63>
			b6: R_RISCV_BRANCH	.L63
  ba:	8522                	mv	a0,s0
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	ProcessPWKMsg4
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.L64+0x8>

000000c4 <.LVL150>:
  c4:	b785                	j	24 <.L61>
			c4: R_RISCV_RVC_JUMP	.L61

Disassembly of section .text.IsAuthenticatorEnabled:

00000000 <IsAuthenticatorEnabled>:
   0:	4505                	li	a0,1

00000002 <.LVL152>:
   2:	8082                	ret

Disassembly of section .text.InitStaKeyInfo:

00000000 <InitStaKeyInfo>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	892e                	mv	s2,a1
   e:	89b2                	mv	s3,a2
  10:	c636                	sw	a3,12(sp)
  12:	c43a                	sw	a4,8(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	cm_GetApData
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <InitStaKeyInfo+0x14>

0000001c <.LVL154>:
  1c:	01050493          	addi	s1,a0,16
  20:	842a                	mv	s0,a0

00000022 <.LVL155>:
  22:	04800613          	li	a2,72
  26:	4581                	li	a1,0
  28:	8526                	mv	a0,s1
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	memset
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL155+0x8>

00000032 <.LVL156>:
  32:	4722                	lw	a4,8(sp)
  34:	46b2                	lw	a3,12(sp)
  36:	864e                	mv	a2,s3
  38:	85ca                	mv	a1,s2
  3a:	8526                	mv	a0,s1
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	InitKeyMgmtInfo
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL156+0xa>

00000044 <.LVL157>:
  44:	4785                	li	a5,1
  46:	04f40a23          	sb	a5,84(s0)
  4a:	50b2                	lw	ra,44(sp)
  4c:	5422                	lw	s0,40(sp)

0000004e <.LVL158>:
  4e:	5492                	lw	s1,36(sp)

00000050 <.LVL159>:
  50:	5902                	lw	s2,32(sp)

00000052 <.LVL160>:
  52:	49f2                	lw	s3,28(sp)

00000054 <.LVL161>:
  54:	6145                	addi	sp,sp,48
  56:	8082                	ret

Disassembly of section .text.RemoveAPKeyInfo:

00000000 <RemoveAPKeyInfo>:
   0:	00354503          	lbu	a0,3(a0)

00000004 <.LVL163>:
   4:	0ff00793          	li	a5,255
   8:	00f50663          	beq	a0,a5,14 <.L70>
			8: R_RISCV_BRANCH	.L70
   c:	00000317          	auipc	t1,0x0
			c: R_RISCV_CALL	mm_sec_machwkey_del
			c: R_RISCV_RELAX	*ABS*
  10:	00030067          	jr	t1 # c <.LVL163+0x8>

00000014 <.L70>:
  14:	8082                	ret

Disassembly of section .text.InitGroupKey:

00000000 <InitGroupKey>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	84aa                	mv	s1,a0
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	cm_GetApInfo
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <InitGroupKey+0xa>

00000012 <.LVL166>:
  12:	842a                	mv	s0,a0

00000014 <.LVL167>:
  14:	10052a23          	sw	zero,276(a0)
  18:	10052c23          	sw	zero,280(a0)
  1c:	8526                	mv	a0,s1
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	KeyMgmtInit
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL167+0xa>

00000026 <.LVL169>:
  26:	485c                	lw	a5,20(s0)
  28:	cb9d                	beqz	a5,5e <.L73>
			28: R_RISCV_RVC_BRANCH	.L73
  2a:	677d                	lui	a4,0x1f
  2c:	84870713          	addi	a4,a4,-1976 # 1e848 <.LASF992+0x1ac61>
  30:	02e785b3          	mul	a1,a5,a4
  34:	0a645603          	lhu	a2,166(s0)
  38:	4681                	li	a3,0
  3a:	061e                	slli	a2,a2,0x7
  3c:	02e7b7b3          	mulhu	a5,a5,a4
  40:	f8358513          	addi	a0,a1,-125 # feff83 <.LASF992+0xfec39c>
  44:	00b535b3          	sltu	a1,a0,a1
  48:	17fd                	addi	a5,a5,-1
  4a:	95be                	add	a1,a1,a5
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	__udivdi3
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL169+0x26>
  54:	0505                	addi	a0,a0,1
  56:	10a42a23          	sw	a0,276(s0)
  5a:	10a42c23          	sw	a0,280(s0)

0000005e <.L73>:
  5e:	4581                	li	a1,0
  60:	8526                	mv	a0,s1
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	add_key_to_mac
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.L73+0x4>

0000006a <.LVL171>:
  6a:	4422                	lw	s0,8(sp)

0000006c <.LVL172>:
  6c:	00a481a3          	sb	a0,3(s1)
  70:	40b2                	lw	ra,12(sp)
  72:	4492                	lw	s1,4(sp)

00000074 <.LVL173>:
  74:	85aa                	mv	a1,a0
  76:	00000537          	lui	a0,0x0
			76: R_RISCV_HI20	.LC0
			76: R_RISCV_RELAX	*ABS*
  7a:	00050513          	mv	a0,a0
			7a: R_RISCV_LO12_I	.LC0
			7a: R_RISCV_RELAX	*ABS*
  7e:	0141                	addi	sp,sp,16
  80:	00000317          	auipc	t1,0x0
			80: R_RISCV_CALL	printf
			80: R_RISCV_RELAX	*ABS*
  84:	00030067          	jr	t1 # 80 <.LVL173+0xc>
