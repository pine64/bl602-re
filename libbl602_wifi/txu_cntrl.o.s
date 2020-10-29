
txu_cntrl.o:     file format elf32-littleriscv


Disassembly of section .text.txu_cntrl_sec_hdr_append:

00000000 <txu_cntrl_sec_hdr_append>:
   0:	03054783          	lbu	a5,48(a0)
   4:	1b000693          	li	a3,432
   8:	00000737          	lui	a4,0x0
   c:	02d787b3          	mul	a5,a5,a3
  10:	00070713          	mv	a4,a4
  14:	02f54803          	lbu	a6,47(a0)
  18:	973e                	add	a4,a4,a5
  1a:	0ac72783          	lw	a5,172(a4) # ac <.L4+0x4>
  1e:	439c                	lw	a5,0(a5)

00000020 <.LVL3>:
  20:	c3d1                	beqz	a5,a4 <.L2>
  22:	5d800893          	li	a7,1496
  26:	03180833          	mul	a6,a6,a7
  2a:	000006b7          	lui	a3,0x0
  2e:	00068693          	mv	a3,a3
  32:	96c2                	add	a3,a3,a6
  34:	5c46a683          	lw	a3,1476(a3) # 5c4 <.LASF802+0x9>
  38:	8a89                	andi	a3,a3,2
  3a:	c285                	beqz	a3,5a <.L3>
  3c:	02055803          	lhu	a6,32(a0)

00000040 <.LBB76>:
  40:	00881693          	slli	a3,a6,0x8
  44:	00885813          	srli	a6,a6,0x8
  48:	0106e6b3          	or	a3,a3,a6

0000004c <.LBE85>:
  4c:	03875803          	lhu	a6,56(a4)
  50:	01069713          	slli	a4,a3,0x10
  54:	8341                	srli	a4,a4,0x10
  56:	04e80763          	beq	a6,a4,a4 <.L2>

0000005a <.L3>:
  5a:	0607c703          	lbu	a4,96(a5)
  5e:	4685                	li	a3,1
  60:	04d70463          	beq	a4,a3,a8 <.L4>
  64:	c719                	beqz	a4,72 <.L5>
  66:	4689                	li	a3,2
  68:	08d70463          	beq	a4,a3,f0 <.L6>
  6c:	468d                	li	a3,3
  6e:	00d71f63          	bne	a4,a3,8c <.L7>

00000072 <.L5>:
  72:	02255703          	lhu	a4,34(a0)
  76:	15f1                	addi	a1,a1,-4

00000078 <.LVL6>:
  78:	00e59023          	sh	a4,0(a1)
  7c:	0617c703          	lbu	a4,97(a5)
  80:	02455683          	lhu	a3,36(a0)
  84:	073a                	slli	a4,a4,0xe
  86:	8f55                	or	a4,a4,a3
  88:	00e59123          	sh	a4,2(a1)

0000008c <.L7>:
  8c:	ce2d                	beqz	a2,106 <.L8>
  8e:	4978                	lw	a4,84(a0)

00000090 <.L9>:
  90:	4754                	lw	a3,12(a4)
  92:	0627c783          	lbu	a5,98(a5)

00000096 <.LVL10>:
  96:	00100637          	lui	a2,0x100

0000009a <.LVL11>:
  9a:	c0060613          	addi	a2,a2,-1024 # ffc00 <.LASF524+0xfd30d>
  9e:	8ef1                	and	a3,a3,a2
  a0:	8fd5                	or	a5,a5,a3
  a2:	c75c                	sw	a5,12(a4)

000000a4 <.L2>:
  a4:	852e                	mv	a0,a1

000000a6 <.LVL13>:
  a6:	8082                	ret

000000a8 <.L4>:
  a8:	02255803          	lhu	a6,34(a0)
  ac:	6309                	lui	t1,0x2
  ae:	68a1                	lui	a7,0x8
  b0:	006866b3          	or	a3,a6,t1
  b4:	f0088893          	addi	a7,a7,-256 # 7f00 <.LASF524+0x560d>
  b8:	0116f6b3          	and	a3,a3,a7
  bc:	00885813          	srli	a6,a6,0x8
  c0:	0106e6b3          	or	a3,a3,a6
  c4:	15e1                	addi	a1,a1,-8

000000c6 <.LVL15>:
  c6:	00d59023          	sh	a3,0(a1)
  ca:	0617c683          	lbu	a3,97(a5)
  ce:	02254703          	lbu	a4,34(a0)
  d2:	06ba                	slli	a3,a3,0xe
  d4:	8f55                	or	a4,a4,a3
  d6:	00676733          	or	a4,a4,t1

000000da <.L19>:
  da:	00e59123          	sh	a4,2(a1)
  de:	02455703          	lhu	a4,36(a0)
  e2:	00e59223          	sh	a4,4(a1)
  e6:	02655703          	lhu	a4,38(a0)
  ea:	00e59323          	sh	a4,6(a1)
  ee:	bf79                	j	8c <.L7>

000000f0 <.L6>:
  f0:	02255703          	lhu	a4,34(a0)
  f4:	15e1                	addi	a1,a1,-8

000000f6 <.LVL18>:
  f6:	6689                	lui	a3,0x2
  f8:	00e59023          	sh	a4,0(a1)
  fc:	0617c703          	lbu	a4,97(a5)
 100:	073a                	slli	a4,a4,0xe
 102:	8f55                	or	a4,a4,a3
 104:	bfd9                	j	da <.L19>

00000106 <.L8>:
 106:	5538                	lw	a4,104(a0)
 108:	0f070713          	addi	a4,a4,240

0000010c <.LVL21>:
 10c:	b751                	j	90 <.L9>

Disassembly of section .text.txu_cntrl_sechdr_len_compute:

00000000 <txu_cntrl_sechdr_len_compute>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	03054783          	lbu	a5,48(a0)
   a:	1b000813          	li	a6,432
   e:	00000737          	lui	a4,0x0
  12:	030787b3          	mul	a5,a5,a6
  16:	00070713          	mv	a4,a4
  1a:	02f54603          	lbu	a2,47(a0)
  1e:	4401                	li	s0,0
  20:	97ba                	add	a5,a5,a4
  22:	0ac7a783          	lw	a5,172(a5)
  26:	439c                	lw	a5,0(a5)

00000028 <.LVL24>:
  28:	0005a023          	sw	zero,0(a1)
  2c:	c7d9                	beqz	a5,ba <.L20>
  2e:	5d800893          	li	a7,1496
  32:	03160633          	mul	a2,a2,a7
  36:	000006b7          	lui	a3,0x0
  3a:	00068693          	mv	a3,a3
  3e:	96b2                	add	a3,a3,a2
  40:	5c46a603          	lw	a2,1476(a3) # 5c4 <.LASF802+0x9>
  44:	8a09                	andi	a2,a2,2
  46:	c605                	beqz	a2,6e <.L22>

00000048 <.LBB92>:
  48:	03054683          	lbu	a3,48(a0)

0000004c <.LBE92>:
  4c:	02055603          	lhu	a2,32(a0)

00000050 <.LBB103>:
  50:	4401                	li	s0,0

00000052 <.LBB104>:
  52:	030686b3          	mul	a3,a3,a6
  56:	9736                	add	a4,a4,a3

00000058 <.LBB105>:
  58:	00861693          	slli	a3,a2,0x8
  5c:	8221                	srli	a2,a2,0x8
  5e:	8ed1                	or	a3,a3,a2

00000060 <.LBE105>:
  60:	03875603          	lhu	a2,56(a4) # 38 <.LVL24+0x10>
  64:	01069713          	slli	a4,a3,0x10
  68:	8341                	srli	a4,a4,0x10
  6a:	04e60863          	beq	a2,a4,ba <.L20>

0000006e <.L22>:
  6e:	0607c703          	lbu	a4,96(a5)
  72:	4685                	li	a3,1
  74:	04d70863          	beq	a4,a3,c4 <.L23>
  78:	cb01                	beqz	a4,88 <.L24>
  7a:	4689                	li	a3,2
  7c:	06d70e63          	beq	a4,a3,f8 <.L25>
  80:	468d                	li	a3,3
  82:	4401                	li	s0,0
  84:	02d71b63          	bne	a4,a3,ba <.L20>

00000088 <.L24>:
  88:	4711                	li	a4,4
  8a:	c198                	sw	a4,0(a1)
  8c:	03255703          	lhu	a4,50(a0)
  90:	4411                	li	s0,4
  92:	8b05                	andi	a4,a4,1
  94:	e31d                	bnez	a4,ba <.L20>
  96:	47b8                	lw	a4,72(a5)
  98:	47f0                	lw	a2,76(a5)
  9a:	04878593          	addi	a1,a5,72

0000009e <.LVL28>:
  9e:	00170693          	addi	a3,a4,1
  a2:	00e6b733          	sltu	a4,a3,a4
  a6:	9732                	add	a4,a4,a2
  a8:	c7b4                	sw	a3,72(a5)
  aa:	c7f8                	sw	a4,76(a5)
  ac:	4611                	li	a2,4
  ae:	02250513          	addi	a0,a0,34

000000b2 <.LVL29>:
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.LVL29>

000000ba <.L20>:
  ba:	8522                	mv	a0,s0
  bc:	40b2                	lw	ra,12(sp)
  be:	4422                	lw	s0,8(sp)
  c0:	0141                	addi	sp,sp,16
  c2:	8082                	ret

000000c4 <.L23>:
  c4:	4731                	li	a4,12

000000c6 <.L40>:
  c6:	c198                	sw	a4,0(a1)
  c8:	03255703          	lhu	a4,50(a0)
  cc:	8b05                	andi	a4,a4,1
  ce:	e31d                	bnez	a4,f4 <.L39>
  d0:	47b8                	lw	a4,72(a5)
  d2:	47f0                	lw	a2,76(a5)
  d4:	04878593          	addi	a1,a5,72

000000d8 <.LVL32>:
  d8:	00170693          	addi	a3,a4,1
  dc:	00e6b733          	sltu	a4,a3,a4
  e0:	9732                	add	a4,a4,a2
  e2:	c7b4                	sw	a3,72(a5)
  e4:	c7f8                	sw	a4,76(a5)
  e6:	4619                	li	a2,6
  e8:	02250513          	addi	a0,a0,34

000000ec <.LVL33>:
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL33>

000000f4 <.L39>:
  f4:	4421                	li	s0,8
  f6:	b7d1                	j	ba <.L20>

000000f8 <.L25>:
  f8:	4721                	li	a4,8
  fa:	b7f1                	j	c6 <.L40>

Disassembly of section .text.txu_cntrl_init:

00000000 <txu_cntrl_init>:
   0:	8082                	ret

Disassembly of section .text.txu_cntrl_frame_build:

00000000 <txu_cntrl_frame_build>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB133>:
   6:	02055703          	lhu	a4,32(a0)

0000000a <.LBB122>:
   a:	842a                	mv	s0,a0

0000000c <.LBB129>:
   c:	00871793          	slli	a5,a4,0x8
  10:	8321                	srli	a4,a4,0x8
  12:	8fd9                	or	a5,a5,a4

00000014 <.LBE129>:
  14:	07c2                	slli	a5,a5,0x10
  16:	83c1                	srli	a5,a5,0x10
  18:	5ff00713          	li	a4,1535
  1c:	02f77163          	bgeu	a4,a5,3e <.L43>
  20:	77ed                	lui	a5,0xffffb
  22:	15e1                	addi	a1,a1,-8

00000024 <.LVL38>:
  24:	aaa78793          	addi	a5,a5,-1366 # ffffaaaa <.LASF524+0xffff81b7>
  28:	00f59023          	sh	a5,0(a1)
  2c:	478d                	li	a5,3
  2e:	00f59123          	sh	a5,2(a1)
  32:	00059223          	sh	zero,4(a1)
  36:	02055783          	lhu	a5,32(a0)
  3a:	00f59323          	sh	a5,6(a1)

0000003e <.L43>:
  3e:	4605                	li	a2,1
  40:	8522                	mv	a0,s0

00000042 <.LVL40>:
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL40>

0000004a <.LBB136>:
  4a:	03044683          	lbu	a3,48(s0)
  4e:	1b000713          	li	a4,432
  52:	000005b7          	lui	a1,0x0
  56:	02e68733          	mul	a4,a3,a4
  5a:	00058793          	mv	a5,a1
  5e:	02e44303          	lbu	t1,46(s0)
  62:	02f44803          	lbu	a6,47(s0)
  66:	00058593          	mv	a1,a1
  6a:	97ba                	add	a5,a5,a4
  6c:	0ac7a783          	lw	a5,172(a5)
  70:	0ff00713          	li	a4,255
  74:	0007a883          	lw	a7,0(a5)

00000078 <.LVL43>:
  78:	fe650793          	addi	a5,a0,-26
  7c:	00e31463          	bne	t1,a4,84 <.L45>
  80:	fe850793          	addi	a5,a0,-24

00000084 <.L45>:
  84:	03245703          	lhu	a4,50(s0)
  88:	01878513          	addi	a0,a5,24

0000008c <.LVL45>:
  8c:	4601                	li	a2,0
  8e:	10077713          	andi	a4,a4,256
  92:	c319                	beqz	a4,98 <.L47>
  94:	17e9                	addi	a5,a5,-6

00000096 <.LVL46>:
  96:	863e                	mv	a2,a5

00000098 <.L47>:
  98:	0ff00713          	li	a4,255
  9c:	16e30d63          	beq	t1,a4,216 <.L48>
  a0:	f8000713          	li	a4,-128
  a4:	00e78023          	sb	a4,0(a5)
  a8:	000780a3          	sb	zero,1(a5)
  ac:	02e44703          	lbu	a4,46(s0)
  b0:	00e51023          	sh	a4,0(a0)
  b4:	02a45703          	lhu	a4,42(s0)
  b8:	0712                	slli	a4,a4,0x4
  ba:	0742                	slli	a4,a4,0x10
  bc:	8341                	srli	a4,a4,0x10
  be:	00e78b23          	sb	a4,22(a5)
  c2:	8321                	srli	a4,a4,0x8
  c4:	00e78ba3          	sb	a4,23(a5)
  c8:	03245703          	lhu	a4,50(s0)
  cc:	20077713          	andi	a4,a4,512
  d0:	c719                	beqz	a4,de <.L49>
  d2:	00055703          	lhu	a4,0(a0)
  d6:	01076713          	ori	a4,a4,16
  da:	00e51023          	sh	a4,0(a0)

000000de <.L49>:
  de:	0017c703          	lbu	a4,1(a5)
  e2:	0007c503          	lbu	a0,0(a5)

000000e6 <.LVL48>:
  e6:	0722                	slli	a4,a4,0x8
  e8:	8f49                	or	a4,a4,a0
  ea:	00876513          	ori	a0,a4,8
  ee:	00a78023          	sb	a0,0(a5)
  f2:	8121                	srli	a0,a0,0x8
  f4:	00a780a3          	sb	a0,1(a5)
  f8:	03245303          	lhu	t1,50(s0)
  fc:	00000537          	lui	a0,0x0
 100:	00050513          	mv	a0,a0
 104:	01431e13          	slli	t3,t1,0x14
 108:	120e5063          	bgez	t3,228 <.L50>
 10c:	cff77713          	andi	a4,a4,-769
 110:	00876713          	ori	a4,a4,8

00000114 <.L74>:
 114:	00e78023          	sb	a4,0(a5)
 118:	8321                	srli	a4,a4,0x8
 11a:	00e780a3          	sb	a4,1(a5)

0000011e <.L51>:
 11e:	03245703          	lhu	a4,50(s0)
 122:	8b11                	andi	a4,a4,4
 124:	c305                	beqz	a4,144 <.L54>
 126:	0017c703          	lbu	a4,1(a5)
 12a:	0007c303          	lbu	t1,0(a5)
 12e:	0722                	slli	a4,a4,0x8
 130:	00676733          	or	a4,a4,t1
 134:	6309                	lui	t1,0x2
 136:	00676733          	or	a4,a4,t1
 13a:	00e78023          	sb	a4,0(a5)
 13e:	8321                	srli	a4,a4,0x8
 140:	00e780a3          	sb	a4,1(a5)

00000144 <.L54>:
 144:	5d800713          	li	a4,1496
 148:	02e80733          	mul	a4,a6,a4
 14c:	05070313          	addi	t1,a4,80
 150:	932a                	add	t1,t1,a0
 152:	00035e03          	lhu	t3,0(t1) # 2000 <.LASF755+0xa>
 156:	01c79523          	sh	t3,10(a5)
 15a:	00235e03          	lhu	t3,2(t1)
 15e:	01c79623          	sh	t3,12(a5)
 162:	00435303          	lhu	t1,4(t1)
 166:	10000e13          	li	t3,256
 16a:	00679723          	sh	t1,14(a5)
 16e:	0017c303          	lbu	t1,1(a5)
 172:	0322                	slli	t1,t1,0x8
 174:	30037313          	andi	t1,t1,768
 178:	0fc31163          	bne	t1,t3,25a <.L55>
 17c:	1b000713          	li	a4,432
 180:	02e686b3          	mul	a3,a3,a4
 184:	06f9                	addi	a3,a3,30
 186:	96ae                	add	a3,a3,a1
 188:	0006d703          	lhu	a4,0(a3)
 18c:	00e79223          	sh	a4,4(a5)
 190:	0026d703          	lhu	a4,2(a3)
 194:	00e79323          	sh	a4,6(a5)
 198:	0046d703          	lhu	a4,4(a3)
 19c:	00e79423          	sh	a4,8(a5)
 1a0:	01445703          	lhu	a4,20(s0)
 1a4:	00e79823          	sh	a4,16(a5)
 1a8:	01645703          	lhu	a4,22(s0)
 1ac:	00e79923          	sh	a4,18(a5)
 1b0:	01845703          	lhu	a4,24(s0)

000001b4 <.L75>:
 1b4:	00e79a23          	sh	a4,20(a5)

000001b8 <.L56>:
 1b8:	04088b63          	beqz	a7,20e <.L42>
 1bc:	5d800713          	li	a4,1496
 1c0:	02e80833          	mul	a6,a6,a4
 1c4:	9542                	add	a0,a0,a6
 1c6:	5c452703          	lw	a4,1476(a0) # 5c4 <.LASF802+0x9>
 1ca:	8b09                	andi	a4,a4,2
 1cc:	c705                	beqz	a4,1f4 <.L60>
 1ce:	02045683          	lhu	a3,32(s0)

000001d2 <.LBB138>:
 1d2:	1b000613          	li	a2,432

000001d6 <.LBB149>:
 1d6:	00869713          	slli	a4,a3,0x8
 1da:	82a1                	srli	a3,a3,0x8
 1dc:	8f55                	or	a4,a4,a3

000001de <.LBB150>:
 1de:	03044683          	lbu	a3,48(s0)

000001e2 <.LBE150>:
 1e2:	0742                	slli	a4,a4,0x10
 1e4:	8341                	srli	a4,a4,0x10

000001e6 <.LBB151>:
 1e6:	02c686b3          	mul	a3,a3,a2
 1ea:	95b6                	add	a1,a1,a3

000001ec <.LBE151>:
 1ec:	0385d683          	lhu	a3,56(a1) # 38 <.LVL38+0x14>
 1f0:	00e68f63          	beq	a3,a4,20e <.L42>

000001f4 <.L60>:
 1f4:	0017c703          	lbu	a4,1(a5)
 1f8:	0007c683          	lbu	a3,0(a5)
 1fc:	0722                	slli	a4,a4,0x8
 1fe:	8f55                	or	a4,a4,a3
 200:	6691                	lui	a3,0x4
 202:	8f55                	or	a4,a4,a3
 204:	00e78023          	sb	a4,0(a5)
 208:	8321                	srli	a4,a4,0x8
 20a:	00e780a3          	sb	a4,1(a5)

0000020e <.L42>:
 20e:	40b2                	lw	ra,12(sp)
 210:	4422                	lw	s0,8(sp)

00000212 <.LVL54>:
 212:	0141                	addi	sp,sp,16
 214:	8082                	ret

00000216 <.L48>:
 216:	00078023          	sb	zero,0(a5)
 21a:	000780a3          	sb	zero,1(a5)
 21e:	00078b23          	sb	zero,22(a5)
 222:	00078ba3          	sb	zero,23(a5)
 226:	bd65                	j	de <.L49>

00000228 <.L50>:
 228:	10037313          	andi	t1,t1,256
 22c:	00030563          	beqz	t1,236 <.L52>
 230:	30876713          	ori	a4,a4,776
 234:	b5c5                	j	114 <.L74>

00000236 <.L52>:
 236:	5d800313          	li	t1,1496
 23a:	02680333          	mul	t1,a6,t1
 23e:	932a                	add	t1,t1,a0
 240:	05634303          	lbu	t1,86(t1)
 244:	00031563          	bnez	t1,24e <.L53>
 248:	10876713          	ori	a4,a4,264
 24c:	b5e1                	j	114 <.L74>

0000024e <.L53>:
 24e:	4e09                	li	t3,2
 250:	edc317e3          	bne	t1,t3,11e <.L51>
 254:	20876713          	ori	a4,a4,520
 258:	bd75                	j	114 <.L74>

0000025a <.L55>:
 25a:	20000e13          	li	t3,512
 25e:	03c31963          	bne	t1,t3,290 <.L57>
 262:	01445703          	lhu	a4,20(s0)
 266:	00e79223          	sh	a4,4(a5)
 26a:	01645703          	lhu	a4,22(s0)
 26e:	00e79323          	sh	a4,6(a5)
 272:	01845703          	lhu	a4,24(s0)
 276:	00e79423          	sh	a4,8(a5)
 27a:	01a45703          	lhu	a4,26(s0)
 27e:	00e79823          	sh	a4,16(a5)
 282:	01c45703          	lhu	a4,28(s0)
 286:	00e79923          	sh	a4,18(a5)
 28a:	01e45703          	lhu	a4,30(s0)
 28e:	b71d                	j	1b4 <.L75>

00000290 <.L57>:
 290:	02031c63          	bnez	t1,2c8 <.L58>
 294:	01445683          	lhu	a3,20(s0)
 298:	37870713          	addi	a4,a4,888
 29c:	972a                	add	a4,a4,a0
 29e:	00d79223          	sh	a3,4(a5)
 2a2:	01645683          	lhu	a3,22(s0)
 2a6:	00d79323          	sh	a3,6(a5)
 2aa:	01845683          	lhu	a3,24(s0)
 2ae:	00d79423          	sh	a3,8(a5)
 2b2:	00075683          	lhu	a3,0(a4)
 2b6:	00d79823          	sh	a3,16(a5)
 2ba:	00275683          	lhu	a3,2(a4)
 2be:	00d79923          	sh	a3,18(a5)
 2c2:	00475703          	lhu	a4,4(a4)
 2c6:	b5fd                	j	1b4 <.L75>

000002c8 <.L58>:
 2c8:	1b000713          	li	a4,432
 2cc:	02e68733          	mul	a4,a3,a4
 2d0:	0779                	addi	a4,a4,30
 2d2:	972e                	add	a4,a4,a1
 2d4:	00075683          	lhu	a3,0(a4)
 2d8:	00d61223          	sh	a3,4(a2)
 2dc:	00275683          	lhu	a3,2(a4)
 2e0:	00d61323          	sh	a3,6(a2)
 2e4:	00475703          	lhu	a4,4(a4)
 2e8:	00e61423          	sh	a4,8(a2)
 2ec:	01445703          	lhu	a4,20(s0)
 2f0:	00e61823          	sh	a4,16(a2)
 2f4:	01645703          	lhu	a4,22(s0)
 2f8:	00e61923          	sh	a4,18(a2)
 2fc:	01845703          	lhu	a4,24(s0)
 300:	00e61a23          	sh	a4,20(a2)
 304:	01a45703          	lhu	a4,26(s0)
 308:	00e61c23          	sh	a4,24(a2)
 30c:	01c45703          	lhu	a4,28(s0)
 310:	00e61d23          	sh	a4,26(a2)
 314:	01e45703          	lhu	a4,30(s0)
 318:	00e61e23          	sh	a4,28(a2)
 31c:	bd71                	j	1b8 <.L56>

Disassembly of section .text.txu_cntrl_push:

00000000 <txu_cntrl_push>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	ce4e                	sw	s3,28(sp)
   6:	d606                	sw	ra,44(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	02f54483          	lbu	s1,47(a0)
  10:	5d800793          	li	a5,1496
  14:	842a                	mv	s0,a0
  16:	02f484b3          	mul	s1,s1,a5
  1a:	000007b7          	lui	a5,0x0
  1e:	00078793          	mv	a5,a5
  22:	89ae                	mv	s3,a1
  24:	94be                	add	s1,s1,a5

00000026 <.LVL61>:
  26:	8526                	mv	a0,s1

00000028 <.LVL62>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL62>

00000030 <.LVL63>:
  30:	16050863          	beqz	a0,1a0 <.L77>
  34:	03245703          	lhu	a4,50(s0)
  38:	00877793          	andi	a5,a4,8
  3c:	c3a5                	beqz	a5,9c <.L78>

0000003e <.LBB185>:
  3e:	8b41                	andi	a4,a4,16
  40:	c729                	beqz	a4,8a <.L79>

00000042 <.L104>:
  42:	000007b7          	lui	a5,0x0
  46:	00078793          	mv	a5,a5

0000004a <.L81>:
  4a:	c87c                	sw	a5,84(s0)

0000004c <.LBE187>:
  4c:	487c                	lw	a5,84(s0)
  4e:	4bc8                	lw	a0,20(a5)
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LBE187+0x4>

00000058 <.LVL65>:
  58:	487c                	lw	a5,84(s0)
  5a:	d3c8                	sw	a0,36(a5)

0000005c <.LVL66>:
  5c:	487c                	lw	a5,84(s0)
  5e:	d788                	sw	a0,40(a5)

00000060 <.LVL67>:
  60:	487c                	lw	a5,84(s0)
  62:	d7c8                	sw	a0,44(a5)

00000064 <.LVL68>:
  64:	487c                	lw	a5,84(s0)
  66:	db88                	sw	a0,48(a5)

00000068 <.LVL69>:
  68:	04040f23          	sb	zero,94(s0)
  6c:	06040023          	sb	zero,96(s0)

00000070 <.L82>:
  70:	85ce                	mv	a1,s3
  72:	8522                	mv	a0,s0
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L82+0x4>

0000007c <.L88>:
  7c:	50b2                	lw	ra,44(sp)
  7e:	5422                	lw	s0,40(sp)

00000080 <.LVL72>:
  80:	5492                	lw	s1,36(sp)
  82:	5902                	lw	s2,32(sp)
  84:	49f2                	lw	s3,28(sp)
  86:	6145                	addi	sp,sp,48
  88:	8082                	ret

0000008a <.L79>:
  8a:	40bc                	lw	a5,64(s1)
  8c:	0047c783          	lbu	a5,4(a5) # 4 <txu_cntrl_push+0x4>
  90:	fbcd                	bnez	a5,42 <.L104>
  92:	000007b7          	lui	a5,0x0
  96:	00078793          	mv	a5,a5
  9a:	bf45                	j	4a <.L81>

0000009c <.L78>:
  9c:	03044783          	lbu	a5,48(s0)
  a0:	1b000693          	li	a3,432

000000a4 <.LBE191>:
  a4:	02045583          	lhu	a1,32(s0)

000000a8 <.LBB197>:
  a8:	02d786b3          	mul	a3,a5,a3
  ac:	00000937          	lui	s2,0x0
  b0:	00090613          	mv	a2,s2
  b4:	00090913          	mv	s2,s2
  b8:	9636                	add	a2,a2,a3

000000ba <.LBB216>:
  ba:	00859693          	slli	a3,a1,0x8
  be:	81a1                	srli	a1,a1,0x8

000000c0 <.LBB198>:
  c0:	03164803          	lbu	a6,49(a2)

000000c4 <.LBB199>:
  c4:	8ecd                	or	a3,a3,a1

000000c6 <.LBB219>:
  c6:	03865603          	lhu	a2,56(a2)
  ca:	06c2                	slli	a3,a3,0x10
  cc:	82c1                	srli	a3,a3,0x10
  ce:	0cd61763          	bne	a2,a3,19c <.L90>

000000d2 <.LVL78>:
  d2:	eff77713          	andi	a4,a4,-257
  d6:	02e41923          	sh	a4,50(s0)

000000da <.L83>:
  da:	4709                	li	a4,2
  dc:	00e80663          	beq	a6,a4,e8 <.L84>
  e0:	4705                	li	a4,1
  e2:	0ae81f63          	bne	a6,a4,1a0 <.L77>
  e6:	cd4d                	beqz	a0,1a0 <.L77>

000000e8 <.L84>:
  e8:	02e44683          	lbu	a3,46(s0)
  ec:	0ff00713          	li	a4,255
  f0:	44e1                	li	s1,24

000000f2 <.LVL81>:
  f2:	02e68a63          	beq	a3,a4,126 <.L85>

000000f6 <.LVL82>:
  f6:	03245703          	lhu	a4,50(s0)
  fa:	44e9                	li	s1,26
  fc:	8b05                	andi	a4,a4,1
  fe:	e705                	bnez	a4,126 <.L85>

00000100 <.LBB222>:
 100:	0d800713          	li	a4,216
 104:	02e787b3          	mul	a5,a5,a4
 108:	97b6                	add	a5,a5,a3
 10a:	07878793          	addi	a5,a5,120 # 78 <.L82+0x8>
 10e:	0786                	slli	a5,a5,0x1
 110:	97ca                	add	a5,a5,s2
 112:	0087d683          	lhu	a3,8(a5)

00000116 <.LVL84>:
 116:	00168713          	addi	a4,a3,1 # 4001 <.LASF524+0x170e>
 11a:	0752                	slli	a4,a4,0x14
 11c:	8351                	srli	a4,a4,0x14
 11e:	00e79423          	sh	a4,8(a5)

00000122 <.LBE222>:
 122:	02d41523          	sh	a3,42(s0)

00000126 <.L85>:
 126:	03245783          	lhu	a5,50(s0)
 12a:	1007f793          	andi	a5,a5,256
 12e:	c391                	beqz	a5,132 <.L86>
 130:	0499                	addi	s1,s1,6

00000132 <.L86>:
 132:	006c                	addi	a1,sp,12
 134:	8522                	mv	a0,s0

00000136 <.LVL88>:
 136:	00000097          	auipc	ra,0x0
 13a:	000080e7          	jalr	ra # 136 <.LVL88>

0000013e <.LVL89>:
 13e:	02045703          	lhu	a4,32(s0)
 142:	60000693          	li	a3,1536
 146:	9526                	add	a0,a0,s1

00000148 <.LBB224>:
 148:	00871793          	slli	a5,a4,0x8
 14c:	8321                	srli	a4,a4,0x8
 14e:	8fd9                	or	a5,a5,a4

00000150 <.LBE224>:
 150:	07c2                	slli	a5,a5,0x10
 152:	83c1                	srli	a5,a5,0x10
 154:	4701                	li	a4,0
 156:	00f6f463          	bgeu	a3,a5,15e <.L87>
 15a:	0521                	addi	a0,a0,8

0000015c <.LVL91>:
 15c:	4721                	li	a4,8

0000015e <.L87>:
 15e:	00c45783          	lhu	a5,12(s0)
 162:	04a40f23          	sb	a0,94(s0)

00000166 <.LBB232>:
 166:	03044503          	lbu	a0,48(s0)

0000016a <.LBB236>:
 16a:	04f41e23          	sh	a5,92(s0)
 16e:	47b2                	lw	a5,12(sp)
 170:	04e40fa3          	sb	a4,95(s0)

00000174 <.LBB237>:
 174:	4581                	li	a1,0

00000176 <.LBB238>:
 176:	06f40023          	sb	a5,96(s0)

0000017a <.LBB239>:
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.LBB239>

00000182 <.LVL95>:
 182:	03044503          	lbu	a0,48(s0)
 186:	1b000793          	li	a5,432
 18a:	02f50533          	mul	a0,a0,a5
 18e:	954a                	add	a0,a0,s2
 190:	00000097          	auipc	ra,0x0
 194:	000080e7          	jalr	ra # 190 <.LVL95+0xe>

00000198 <.LVL96>:
 198:	c868                	sw	a0,84(s0)
 19a:	bdd9                	j	70 <.L82>

0000019c <.L90>:
 19c:	4501                	li	a0,0
 19e:	bf35                	j	da <.L83>

000001a0 <.L77>:
 1a0:	00000097          	auipc	ra,0x0
 1a4:	000080e7          	jalr	ra # 1a0 <.L77>

000001a8 <.LBB243>:
 1a8:	30047073          	csrci	mstatus,8

000001ac <.LBE243>:
 1ac:	c00005b7          	lui	a1,0xc0000
 1b0:	864e                	mv	a2,s3
 1b2:	8522                	mv	a0,s0
 1b4:	00000097          	auipc	ra,0x0
 1b8:	000080e7          	jalr	ra # 1b4 <.LBE243+0x8>

000001bc <.LBB245>:
 1bc:	30046073          	csrsi	mstatus,8

000001c0 <.LBE241>:
 1c0:	4501                	li	a0,0
 1c2:	bd6d                	j	7c <.L88>

Disassembly of section .text.txu_cntrl_tkip_mic_append:

00000000 <txu_cntrl_tkip_mic_append>:
   0:	03054703          	lbu	a4,48(a0)
   4:	1b000693          	li	a3,432
   8:	000007b7          	lui	a5,0x0
   c:	02d70733          	mul	a4,a4,a3
  10:	00078793          	mv	a5,a5
  14:	97ba                	add	a5,a5,a4
  16:	0ac7a783          	lw	a5,172(a5) # ac <.LVL111+0x1c>
  1a:	438c                	lw	a1,0(a5)

0000001c <.LVL102>:
  1c:	12058c63          	beqz	a1,154 <.L125>
  20:	7179                	addi	sp,sp,-48
  22:	d606                	sw	ra,44(sp)

00000024 <.LVL103>:
  24:	d422                	sw	s0,40(sp)
  26:	d226                	sw	s1,36(sp)
  28:	d04a                	sw	s2,32(sp)
  2a:	ce4e                	sw	s3,28(sp)
  2c:	cc52                	sw	s4,24(sp)
  2e:	0605c783          	lbu	a5,96(a1) # c0000060 <.LASF524+0xbfffd76d>
  32:	4705                	li	a4,1
  34:	5520                	lw	s0,104(a0)
  36:	04e78063          	beq	a5,a4,76 <.L107>
  3a:	c781                	beqz	a5,42 <.L108>
  3c:	470d                	li	a4,3
  3e:	0ce79c63          	bne	a5,a4,116 <.L105>

00000042 <.L108>:
  42:	03840793          	addi	a5,s0,56

00000046 <.L115>:
  46:	43d8                	lw	a4,4(a5)
  48:	ef65                	bnez	a4,140 <.L116>

0000004a <.LVL105>:
  4a:	12c40713          	addi	a4,s0,300

0000004e <.LVL106>:
  4e:	c3d8                	sw	a4,4(a5)
  50:	14040793          	addi	a5,s0,320

00000054 <.LVL107>:
  54:	12f42a23          	sw	a5,308(s0)
  58:	14340793          	addi	a5,s0,323
  5c:	12f42c23          	sw	a5,312(s0)
  60:	caff07b7          	lui	a5,0xcaff0
  64:	ade78793          	addi	a5,a5,-1314 # cafefade <.LASF524+0xcafed1eb>
  68:	12f42623          	sw	a5,300(s0)
  6c:	12042e23          	sw	zero,316(s0)
  70:	12042823          	sw	zero,304(s0)

00000074 <.LBE257>:
  74:	a04d                	j	116 <.L105>

00000076 <.L107>:
  76:	03840793          	addi	a5,s0,56

0000007a <.L109>:
  7a:	43d8                	lw	a4,4(a5)
  7c:	e74d                	bnez	a4,126 <.L110>
  7e:	12c40713          	addi	a4,s0,300

00000082 <.LBE258>:
  82:	05e54983          	lbu	s3,94(a0)
  86:	05f54a03          	lbu	s4,95(a0)

0000008a <.LBB259>:
  8a:	c3d8                	sw	a4,4(a5)
  8c:	14040793          	addi	a5,s0,320

00000090 <.LVL111>:
  90:	12f42a23          	sw	a5,308(s0)
  94:	14b40793          	addi	a5,s0,331
  98:	12f42c23          	sw	a5,312(s0)
  9c:	caff07b7          	lui	a5,0xcaff0
  a0:	ade78793          	addi	a5,a5,-1314 # cafefade <.LASF524+0xcafed1eb>
  a4:	12f42623          	sw	a5,300(s0)
  a8:	12042e23          	sw	zero,316(s0)
  ac:	12042823          	sw	zero,304(s0)

000000b0 <.LBB260>:
  b0:	02e54703          	lbu	a4,46(a0)

000000b4 <.LVL113>:
  b4:	06852903          	lw	s2,104(a0)

000000b8 <.LBB273>:
  b8:	01a50693          	addi	a3,a0,26
  bc:	01450613          	addi	a2,a0,20
  c0:	84aa                	mv	s1,a0
  c2:	05058593          	addi	a1,a1,80

000000c6 <.LVL115>:
  c6:	850a                	mv	a0,sp

000000c8 <.LVL116>:
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL116>

000000d0 <.LBE273>:
  d0:	14c40593          	addi	a1,s0,332

000000d4 <.LBB274>:
  d4:	05f4c603          	lbu	a2,95(s1)

000000d8 <.LBE274>:
  d8:	414585b3          	sub	a1,a1,s4

000000dc <.LBB275>:
  dc:	95ce                	add	a1,a1,s3
  de:	850a                	mv	a0,sp
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LBB275+0x4>

000000e8 <.LVL118>:
  e8:	03c92403          	lw	s0,60(s2) # 3c <.LVL103+0x18>

000000ec <.L111>:
  ec:	cc21                	beqz	s0,144 <.L112>
  ee:	4044                	lw	s1,4(s0)
  f0:	ec8d                	bnez	s1,12a <.L113>
  f2:	850a                	mv	a0,sp
  f4:	00000097          	auipc	ra,0x0
  f8:	000080e7          	jalr	ra # f4 <.L111+0x8>

000000fc <.LVL120>:
  fc:	4410                	lw	a2,8(s0)

000000fe <.LBB262>:
  fe:	47a1                	li	a5,8

00000100 <.L114>:
 100:	00910733          	add	a4,sp,s1

00000104 <.LVL123>:
 104:	00074683          	lbu	a3,0(a4)

00000108 <.LBB266>:
 108:	00960733          	add	a4,a2,s1

0000010c <.LVL125>:
 10c:	0485                	addi	s1,s1,1

0000010e <.LVL126>:
 10e:	00d70023          	sb	a3,0(a4)

00000112 <.LBE266>:
 112:	fef497e3          	bne	s1,a5,100 <.L114>

00000116 <.L105>:
 116:	50b2                	lw	ra,44(sp)
 118:	5422                	lw	s0,40(sp)
 11a:	5492                	lw	s1,36(sp)
 11c:	5902                	lw	s2,32(sp)
 11e:	49f2                	lw	s3,28(sp)
 120:	4a62                	lw	s4,24(sp)
 122:	6145                	addi	sp,sp,48
 124:	8082                	ret

00000126 <.L110>:
 126:	87ba                	mv	a5,a4

00000128 <.LVL129>:
 128:	bf89                	j	7a <.L109>

0000012a <.L113>:
 12a:	4450                	lw	a2,12(s0)
 12c:	440c                	lw	a1,8(s0)
 12e:	850a                	mv	a0,sp
 130:	0605                	addi	a2,a2,1
 132:	8e0d                	sub	a2,a2,a1
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.L113+0xa>

0000013c <.LVL131>:
 13c:	4040                	lw	s0,4(s0)
 13e:	b77d                	j	ec <.L111>

00000140 <.L116>:
 140:	87ba                	mv	a5,a4

00000142 <.LVL134>:
 142:	b711                	j	46 <.L115>

00000144 <.L112>:
 144:	850a                	mv	a0,sp
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.L112+0x2>

0000014e <.LVL136>:
 14e:	00802783          	lw	a5,8(zero) # 8 <txu_cntrl_tkip_mic_append+0x8>
 152:	9002                	ebreak

00000154 <.L125>:
 154:	8082                	ret

Disassembly of section .text.txu_cntrl_cfm:

00000000 <txu_cntrl_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	557c                	lw	a5,108(a0)
   c:	842a                	mv	s0,a0
   e:	01052903          	lw	s2,16(a0)
  12:	4384                	lw	s1,0(a5)

00000014 <.LVL139>:
  14:	03255783          	lhu	a5,50(a0)
  18:	0087f713          	andi	a4,a5,8
  1c:	cf2d                	beqz	a4,96 <.L129>
  1e:	0207f793          	andi	a5,a5,32
  22:	cb91                	beqz	a5,36 <.L130>
  24:	489c                	lw	a5,16(s1)
  26:	00879713          	slli	a4,a5,0x8
  2a:	00074663          	bltz	a4,36 <.L130>
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL139+0x1a>

00000036 <.L130>:
  36:	03245783          	lhu	a5,50(s0)
  3a:	2007f793          	andi	a5,a5,512
  3e:	cfb9                	beqz	a5,9c <.L132>

00000040 <.LBB280>:
  40:	03044703          	lbu	a4,48(s0)
  44:	0ff00793          	li	a5,255
  48:	02f71063          	bne	a4,a5,68 <.L133>
  4c:	000005b7          	lui	a1,0x0
  50:	00000537          	lui	a0,0x0
  54:	3a900613          	li	a2,937
  58:	00058593          	mv	a1,a1
  5c:	00050513          	mv	a0,a0
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.LBB280+0x20>

00000068 <.L133>:
  68:	03044503          	lbu	a0,48(s0)
  6c:	4681                	li	a3,0
  6e:	4601                	li	a2,0
  70:	45dd                	li	a1,23
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L133+0xa>

0000007a <.L142>:
  7a:	03044703          	lbu	a4,48(s0)
  7e:	1b000693          	li	a3,432
  82:	000007b7          	lui	a5,0x0
  86:	02d70733          	mul	a4,a4,a3
  8a:	00078793          	mv	a5,a5
  8e:	97ba                	add	a5,a5,a4
  90:	0207aa23          	sw	zero,52(a5) # 34 <.LVL139+0x20>
  94:	a021                	j	9c <.L132>

00000096 <.L129>:
  96:	2007f793          	andi	a5,a5,512
  9a:	f3e5                	bnez	a5,7a <.L142>

0000009c <.L132>:
  9c:	489c                	lw	a5,16(s1)
  9e:	0017e793          	ori	a5,a5,1
  a2:	c89c                	sw	a5,16(s1)
  a4:	10100793          	li	a5,257
  a8:	00f49623          	sh	a5,12(s1)

000000ac <.LVL146>:
  ac:	fa042623          	sw	zero,-84(s0)
  b0:	489c                	lw	a5,16(s1)
  b2:	00f92023          	sw	a5,0(s2)
  b6:	40b2                	lw	ra,12(sp)
  b8:	4422                	lw	s0,8(sp)

000000ba <.LVL147>:
  ba:	4492                	lw	s1,4(sp)

000000bc <.LVL148>:
  bc:	4902                	lw	s2,0(sp)

000000be <.LVL149>:
  be:	0141                	addi	sp,sp,16
  c0:	8082                	ret

Disassembly of section .text.txu_cntrl_protect_mgmt_frame:

00000000 <txu_cntrl_protect_mgmt_frame>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d606                	sw	ra,44(sp)
   8:	84ae                	mv	s1,a1

0000000a <.LVL151>:
   a:	05e54583          	lbu	a1,94(a0) # 5e <.LVL158+0x2>

0000000e <.LVL152>:
   e:	842a                	mv	s0,a0
  10:	e9a1                	bnez	a1,60 <.L144>
  12:	086c                	addi	a1,sp,28
  14:	c632                	sw	a2,12(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL152+0x8>

0000001e <.LVL153>:
  1e:	47f2                	lw	a5,28(sp)
  20:	4632                	lw	a2,12(sp)
  22:	04a40f23          	sb	a0,94(s0)
  26:	06f40023          	sb	a5,96(s0)

0000002a <.L145>:
  2a:	0014c783          	lbu	a5,1(s1)
  2e:	0004c703          	lbu	a4,0(s1)
  32:	009605b3          	add	a1,a2,s1
  36:	07a2                	slli	a5,a5,0x8
  38:	8fd9                	or	a5,a5,a4
  3a:	6711                	lui	a4,0x4
  3c:	8fd9                	or	a5,a5,a4
  3e:	00f48023          	sb	a5,0(s1)
  42:	83a1                	srli	a5,a5,0x8
  44:	00f480a3          	sb	a5,1(s1)
  48:	95aa                	add	a1,a1,a0
  4a:	4601                	li	a2,0
  4c:	8522                	mv	a0,s0

0000004e <.LVL155>:
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL155>

00000056 <.LVL156>:
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)

0000005a <.LVL157>:
  5a:	5492                	lw	s1,36(sp)

0000005c <.LVL158>:
  5c:	6145                	addi	sp,sp,48
  5e:	8082                	ret

00000060 <.L144>:
  60:	06044783          	lbu	a5,96(s0)
  64:	852e                	mv	a0,a1

00000066 <.LVL160>:
  66:	ce3e                	sw	a5,28(sp)
  68:	b7c9                	j	2a <.L145>
