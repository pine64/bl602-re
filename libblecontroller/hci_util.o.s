
libblecontroller/hci_util.o:     file format elf32-littleriscv


Disassembly of section .text.hci_util_read_array_size:

00000000 <hci_util_read_array_size>:
   0:	411c                	lw	a5,0(a0)
   2:	4625                	li	a2,9
   4:	45a9                	li	a1,10
   6:	00178713          	addi	a4,a5,1
   a:	c118                	sw	a4,0(a0)
   c:	0007c783          	lbu	a5,0(a5)
  10:	fd078793          	addi	a5,a5,-48
  14:	07c2                	slli	a5,a5,0x10
  16:	83c1                	srli	a5,a5,0x10

00000018 <.L2>:
  18:	4114                	lw	a3,0(a0)
  1a:	0006c703          	lbu	a4,0(a3)
  1e:	fd070713          	addi	a4,a4,-48
  22:	0ff77713          	andi	a4,a4,255
  26:	00e67463          	bgeu	a2,a4,2e <.L3>
			26: R_RISCV_BRANCH	.L3
  2a:	853e                	mv	a0,a5

0000002c <.LVL2>:
  2c:	8082                	ret

0000002e <.L3>:
  2e:	02b787b3          	mul	a5,a5,a1

00000032 <.LVL4>:
  32:	00168713          	addi	a4,a3,1
  36:	c118                	sw	a4,0(a0)
  38:	0006c703          	lbu	a4,0(a3)
  3c:	fd070713          	addi	a4,a4,-48
  40:	97ba                	add	a5,a5,a4
  42:	07c2                	slli	a5,a5,0x10
  44:	83c1                	srli	a5,a5,0x10

00000046 <.LVL5>:
  46:	bfc9                	j	18 <.L2>
			46: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.hci_util_pack:

00000000 <hci_util_pack>:
   0:	711d                	addi	sp,sp,-96
   2:	cca2                	sw	s0,88(sp)
   4:	caa6                	sw	s1,84(sp)
   6:	c8ca                	sw	s2,80(sp)
   8:	c6ce                	sw	s3,76(sp)
   a:	c2d6                	sw	s5,68(sp)
   c:	c0da                	sw	s6,64(sp)
   e:	de5e                	sw	s7,60(sp)
  10:	dc62                	sw	s8,56(sp)
  12:	da66                	sw	s9,52(sp)
  14:	d86a                	sw	s10,48(sp)
  16:	d66e                	sw	s11,44(sp)
  18:	ce86                	sw	ra,92(sp)
  1a:	c4d2                	sw	s4,72(sp)
  1c:	0005da03          	lhu	s4,0(a1)
  20:	89aa                	mv	s3,a0
  22:	8aae                	mv	s5,a1
  24:	9a2a                	add	s4,s4,a0

00000026 <.LVL7>:
  26:	ce32                	sw	a2,28(sp)

00000028 <.LVL8>:
  28:	842a                	mv	s0,a0
  2a:	84aa                	mv	s1,a0
  2c:	4901                	li	s2,0

0000002e <.LBB37>:
  2e:	4b25                	li	s6,9
  30:	04800b93          	li	s7,72

00000034 <.LBB38>:
  34:	4c05                	li	s8,1

00000036 <.LBE38>:
  36:	04c00c93          	li	s9,76
  3a:	04200d13          	li	s10,66
  3e:	00000db7          	lui	s11,0x0
			3e: R_RISCV_HI20	ble_memcpy_ptr
			3e: R_RISCV_RELAX	*ABS*

00000042 <.L5>:
  42:	47f2                	lw	a5,28(sp)
  44:	0007c783          	lbu	a5,0(a5)
  48:	cfed                	beqz	a5,142 <.L14>
			48: R_RISCV_RVC_BRANCH	.L14
  4a:	02090263          	beqz	s2,6e <.L15>
			4a: R_RISCV_BRANCH	.L15

0000004e <.L16>:
  4e:	40f6                	lw	ra,92(sp)
  50:	4466                	lw	s0,88(sp)
  52:	854a                	mv	a0,s2
  54:	44d6                	lw	s1,84(sp)

00000056 <.LVL11>:
  56:	4946                	lw	s2,80(sp)

00000058 <.LVL12>:
  58:	49b6                	lw	s3,76(sp)

0000005a <.LVL13>:
  5a:	4a26                	lw	s4,72(sp)

0000005c <.LVL14>:
  5c:	4a96                	lw	s5,68(sp)

0000005e <.LVL15>:
  5e:	4b06                	lw	s6,64(sp)
  60:	5bf2                	lw	s7,60(sp)
  62:	5c62                	lw	s8,56(sp)
  64:	5cd2                	lw	s9,52(sp)
  66:	5d42                	lw	s10,48(sp)
  68:	5db2                	lw	s11,44(sp)
  6a:	6125                	addi	sp,sp,96
  6c:	8082                	ret

0000006e <.L15>:
  6e:	fd078793          	addi	a5,a5,-48
  72:	0ff7f793          	andi	a5,a5,255
  76:	4701                	li	a4,0
  78:	00fb6863          	bltu	s6,a5,88 <.L6>
			78: R_RISCV_BRANCH	.L6
  7c:	0868                	addi	a0,sp,28
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	hci_util_read_array_size
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.L15+0x10>

00000086 <.LVL17>:
  86:	872a                	mv	a4,a0

00000088 <.L6>:
  88:	47f2                	lw	a5,28(sp)
  8a:	00178693          	addi	a3,a5,1
  8e:	ce36                	sw	a3,28(sp)
  90:	0007c783          	lbu	a5,0(a5)
  94:	05778263          	beq	a5,s7,d8 <.L7>
			94: R_RISCV_BRANCH	.L7
  98:	07978363          	beq	a5,s9,fe <.L8>
			98: R_RISCV_BRANCH	.L8
  9c:	09a79a63          	bne	a5,s10,130 <.L18>
			9c: R_RISCV_BRANCH	.L18
  a0:	00148593          	addi	a1,s1,1
  a4:	00098863          	beqz	s3,b4 <.L10>
			a4: R_RISCV_BRANCH	.L10
  a8:	08ba6b63          	bltu	s4,a1,13e <.L23>
			a8: R_RISCV_BRANCH	.L23
  ac:	0004c783          	lbu	a5,0(s1)
  b0:	00f40023          	sb	a5,0(s0)

000000b4 <.L10>:
  b4:	00140513          	addi	a0,s0,1

000000b8 <.LVL19>:
  b8:	06ec7e63          	bgeu	s8,a4,134 <.L20>
			b8: R_RISCV_BRANCH	.L20
  bc:	94ba                	add	s1,s1,a4

000000be <.LVL20>:
  be:	00098b63          	beqz	s3,d4 <.L11>
			be: R_RISCV_BRANCH	.L11
  c2:	069a6c63          	bltu	s4,s1,13a <.L21>
			c2: R_RISCV_BRANCH	.L21
  c6:	000da783          	lw	a5,0(s11) # 0 <hci_util_pack>
			c6: R_RISCV_LO12_I	ble_memcpy_ptr
			c6: R_RISCV_RELAX	*ABS*
  ca:	fff70613          	addi	a2,a4,-1
  ce:	c63a                	sw	a4,12(sp)
  d0:	9782                	jalr	a5

000000d2 <.LVL21>:
  d2:	4732                	lw	a4,12(sp)

000000d4 <.L11>:
  d4:	943a                	add	s0,s0,a4

000000d6 <.LVL22>:
  d6:	b7b5                	j	42 <.L5>
			d6: R_RISCV_RVC_JUMP	.L5

000000d8 <.L7>:
  d8:	00148793          	addi	a5,s1,1
  dc:	9bf9                	andi	a5,a5,-2

000000de <.LVL24>:
  de:	00278713          	addi	a4,a5,2
  e2:	00098b63          	beqz	s3,f8 <.L12>
			e2: R_RISCV_BRANCH	.L12
  e6:	04ea6c63          	bltu	s4,a4,13e <.L23>
			e6: R_RISCV_BRANCH	.L23
  ea:	0007d783          	lhu	a5,0(a5)

000000ee <.LBB39>:
  ee:	00f40023          	sb	a5,0(s0)
  f2:	83a1                	srli	a5,a5,0x8

000000f4 <.LVL26>:
  f4:	00f400a3          	sb	a5,1(s0)

000000f8 <.L12>:
  f8:	0409                	addi	s0,s0,2

000000fa <.L37>:
  fa:	84ba                	mv	s1,a4
  fc:	b799                	j	42 <.L5>
			fc: R_RISCV_RVC_JUMP	.L5

000000fe <.L8>:
  fe:	00348793          	addi	a5,s1,3
 102:	9bf1                	andi	a5,a5,-4

00000104 <.LVL30>:
 104:	00478713          	addi	a4,a5,4
 108:	02098263          	beqz	s3,12c <.L13>
			108: R_RISCV_BRANCH	.L13
 10c:	02ea6963          	bltu	s4,a4,13e <.L23>
			10c: R_RISCV_BRANCH	.L23
 110:	439c                	lw	a5,0(a5)

00000112 <.LBB43>:
 112:	0087d693          	srli	a3,a5,0x8
 116:	00f40023          	sb	a5,0(s0)

0000011a <.LVL32>:
 11a:	00d400a3          	sb	a3,1(s0)

0000011e <.LVL33>:
 11e:	0107d693          	srli	a3,a5,0x10
 122:	83e1                	srli	a5,a5,0x18

00000124 <.LVL34>:
 124:	00d40123          	sb	a3,2(s0)
 128:	00f401a3          	sb	a5,3(s0)

0000012c <.L13>:
 12c:	0411                	addi	s0,s0,4

0000012e <.LVL36>:
 12e:	b7f1                	j	fa <.L37>
			12e: R_RISCV_RVC_JUMP	.L37

00000130 <.L18>:
 130:	490d                	li	s2,3

00000132 <.LVL38>:
 132:	bf01                	j	42 <.L5>
			132: R_RISCV_RVC_JUMP	.L5

00000134 <.L20>:
 134:	842a                	mv	s0,a0
 136:	84ae                	mv	s1,a1

00000138 <.LVL40>:
 138:	b729                	j	42 <.L5>
			138: R_RISCV_RVC_JUMP	.L5

0000013a <.L21>:
 13a:	842a                	mv	s0,a0
 13c:	84ae                	mv	s1,a1

0000013e <.L23>:
 13e:	4905                	li	s2,1

00000140 <.LVL42>:
 140:	b709                	j	42 <.L5>
			140: R_RISCV_RVC_JUMP	.L5

00000142 <.L14>:
 142:	f00916e3          	bnez	s2,4e <.L16>
			142: R_RISCV_BRANCH	.L16
 146:	41340433          	sub	s0,s0,s3

0000014a <.LVL44>:
 14a:	008a9023          	sh	s0,0(s5)
 14e:	b701                	j	4e <.L16>
			14e: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.hci_util_unpack:

00000000 <hci_util_unpack>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	de4e                	sw	s3,60(sp)
   6:	dc52                	sw	s4,56(sp)
   8:	da56                	sw	s5,52(sp)
   a:	ce6e                	sw	s11,28(sp)
   c:	c686                	sw	ra,76(sp)
   e:	c2a6                	sw	s1,68(sp)
  10:	c0ca                	sw	s2,64(sp)
  12:	d85a                	sw	s6,48(sp)
  14:	d65e                	sw	s7,44(sp)
  16:	d462                	sw	s8,40(sp)
  18:	d266                	sw	s9,36(sp)
  1a:	d06a                	sw	s10,32(sp)
  1c:	00065c83          	lhu	s9,0(a2)
  20:	c63a                	sw	a4,12(sp)
  22:	8a2a                	mv	s4,a0

00000024 <.LVL46>:
  24:	842e                	mv	s0,a1
  26:	89b2                	mv	s3,a2
  28:	00d58db3          	add	s11,a1,a3

0000002c <.LVL47>:
  2c:	9caa                	add	s9,s9,a0

0000002e <.LVL48>:
  2e:	00b03ab3          	snez	s5,a1
  32:	e111                	bnez	a0,36 <.L39>
			32: R_RISCV_RVC_BRANCH	.L39
  34:	4a81                	li	s5,0

00000036 <.L39>:
  36:	84d2                	mv	s1,s4
  38:	4901                	li	s2,0

0000003a <.LBB47>:
  3a:	4b05                	li	s6,1

0000003c <.LBE48>:
  3c:	04c00b93          	li	s7,76
  40:	00000c37          	lui	s8,0x0
			40: R_RISCV_HI20	ble_memcpy_ptr
			40: R_RISCV_RELAX	*ABS*

00000044 <.L40>:
  44:	47b2                	lw	a5,12(sp)
  46:	0007c783          	lbu	a5,0(a5)
  4a:	c399                	beqz	a5,50 <.L49>
			4a: R_RISCV_RVC_BRANCH	.L49
  4c:	02090963          	beqz	s2,7e <.L50>
			4c: R_RISCV_BRANCH	.L50

00000050 <.L49>:
  50:	008df363          	bgeu	s11,s0,56 <.L51>
			50: R_RISCV_BRANCH	.L51
  54:	4905                	li	s2,1

00000056 <.L51>:
  56:	40b6                	lw	ra,76(sp)
  58:	4426                	lw	s0,72(sp)

0000005a <.LVL52>:
  5a:	414484b3          	sub	s1,s1,s4

0000005e <.LVL53>:
  5e:	00999023          	sh	s1,0(s3)
  62:	854a                	mv	a0,s2
  64:	4496                	lw	s1,68(sp)
  66:	4906                	lw	s2,64(sp)

00000068 <.LVL54>:
  68:	59f2                	lw	s3,60(sp)

0000006a <.LVL55>:
  6a:	5a62                	lw	s4,56(sp)

0000006c <.LVL56>:
  6c:	5ad2                	lw	s5,52(sp)

0000006e <.LVL57>:
  6e:	5b42                	lw	s6,48(sp)
  70:	5bb2                	lw	s7,44(sp)
  72:	5c22                	lw	s8,40(sp)
  74:	5c92                	lw	s9,36(sp)

00000076 <.LVL58>:
  76:	5d02                	lw	s10,32(sp)
  78:	4df2                	lw	s11,28(sp)

0000007a <.LVL59>:
  7a:	6161                	addi	sp,sp,80
  7c:	8082                	ret

0000007e <.L50>:
  7e:	fd078793          	addi	a5,a5,-48
  82:	0ff7f793          	andi	a5,a5,255
  86:	4725                	li	a4,9
  88:	4d01                	li	s10,0
  8a:	00f76863          	bltu	a4,a5,9a <.L41>
			8a: R_RISCV_BRANCH	.L41
  8e:	0068                	addi	a0,sp,12
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	hci_util_read_array_size
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L50+0x12>

00000098 <.LVL61>:
  98:	8d2a                	mv	s10,a0

0000009a <.L41>:
  9a:	47b2                	lw	a5,12(sp)
  9c:	04800713          	li	a4,72
  a0:	00178693          	addi	a3,a5,1
  a4:	c636                	sw	a3,12(sp)
  a6:	0007c783          	lbu	a5,0(a5)
  aa:	04e78a63          	beq	a5,a4,fe <.L42>
			aa: R_RISCV_BRANCH	.L42
  ae:	09778163          	beq	a5,s7,130 <.L43>
			ae: R_RISCV_BRANCH	.L43
  b2:	04200693          	li	a3,66
  b6:	0ad79d63          	bne	a5,a3,170 <.L54>
			b6: R_RISCV_BRANCH	.L54
  ba:	00140593          	addi	a1,s0,1
  be:	000a8c63          	beqz	s5,d6 <.L45>
			be: R_RISCV_BRANCH	.L45
  c2:	0abded63          	bltu	s11,a1,17c <.L62>
			c2: R_RISCV_BRANCH	.L62
  c6:	00148793          	addi	a5,s1,1
  ca:	0afced63          	bltu	s9,a5,184 <.L63>
			ca: R_RISCV_BRANCH	.L63
  ce:	00044783          	lbu	a5,0(s0)
  d2:	00f48023          	sb	a5,0(s1)

000000d6 <.L45>:
  d6:	00148513          	addi	a0,s1,1

000000da <.LVL63>:
  da:	09ab7d63          	bgeu	s6,s10,174 <.L57>
			da: R_RISCV_BRANCH	.L57

000000de <.LVL64>:
  de:	946a                	add	s0,s0,s10

000000e0 <.LVL65>:
  e0:	000a8d63          	beqz	s5,fa <.L46>
			e0: R_RISCV_BRANCH	.L46
  e4:	088dea63          	bltu	s11,s0,178 <.L58>
			e4: R_RISCV_BRANCH	.L58
  e8:	01a487b3          	add	a5,s1,s10
  ec:	08fcea63          	bltu	s9,a5,180 <.L59>
			ec: R_RISCV_BRANCH	.L59
  f0:	000c2783          	lw	a5,0(s8) # 0 <hci_util_unpack>
			f0: R_RISCV_LO12_I	ble_memcpy_ptr
			f0: R_RISCV_RELAX	*ABS*
  f4:	fffd0613          	addi	a2,s10,-1
  f8:	9782                	jalr	a5

000000fa <.L46>:
  fa:	94ea                	add	s1,s1,s10

000000fc <.LVL67>:
  fc:	b7a1                	j	44 <.L40>
			fc: R_RISCV_RVC_JUMP	.L40

000000fe <.L42>:
  fe:	00148793          	addi	a5,s1,1
 102:	9bf9                	andi	a5,a5,-2

00000104 <.LVL69>:
 104:	00240613          	addi	a2,s0,2
 108:	020a8063          	beqz	s5,128 <.L47>
			108: R_RISCV_BRANCH	.L47
 10c:	06cde863          	bltu	s11,a2,17c <.L62>
			10c: R_RISCV_BRANCH	.L62
 110:	00278693          	addi	a3,a5,2
 114:	06dce863          	bltu	s9,a3,184 <.L63>
			114: R_RISCV_BRANCH	.L63

00000118 <.LBB49>:
 118:	00144683          	lbu	a3,1(s0)
 11c:	00044583          	lbu	a1,0(s0)
 120:	06a2                	slli	a3,a3,0x8
 122:	8ecd                	or	a3,a3,a1

00000124 <.LBE49>:
 124:	00d79023          	sh	a3,0(a5)

00000128 <.L47>:
 128:	00278493          	addi	s1,a5,2

0000012c <.LBE51>:
 12c:	8432                	mv	s0,a2
 12e:	bf19                	j	44 <.L40>
			12e: R_RISCV_RVC_JUMP	.L40

00000130 <.L43>:
 130:	00348693          	addi	a3,s1,3
 134:	9af1                	andi	a3,a3,-4

00000136 <.LVL73>:
 136:	00440593          	addi	a1,s0,4
 13a:	020a8763          	beqz	s5,168 <.L48>
			13a: R_RISCV_BRANCH	.L48
 13e:	02bdef63          	bltu	s11,a1,17c <.L62>
			13e: R_RISCV_BRANCH	.L62
 142:	00468793          	addi	a5,a3,4
 146:	02fcef63          	bltu	s9,a5,184 <.L63>
			146: R_RISCV_BRANCH	.L63

0000014a <.LBB53>:
 14a:	00344783          	lbu	a5,3(s0)
 14e:	00244603          	lbu	a2,2(s0)

00000152 <.LBB65>:
 152:	00044503          	lbu	a0,0(s0)

00000156 <.LBB66>:
 156:	07a2                	slli	a5,a5,0x8

00000158 <.LBE66>:
 158:	8fd1                	or	a5,a5,a2

0000015a <.LBB67>:
 15a:	00144603          	lbu	a2,1(s0)

0000015e <.LBE67>:
 15e:	07c2                	slli	a5,a5,0x10

00000160 <.LBB68>:
 160:	0622                	slli	a2,a2,0x8

00000162 <.LBE68>:
 162:	8e49                	or	a2,a2,a0
 164:	8fd1                	or	a5,a5,a2

00000166 <.LBE53>:
 166:	c29c                	sw	a5,0(a3)

00000168 <.L48>:
 168:	00468493          	addi	s1,a3,4

0000016c <.L81>:
 16c:	842e                	mv	s0,a1
 16e:	bdd9                	j	44 <.L40>
			16e: R_RISCV_RVC_JUMP	.L40

00000170 <.L54>:
 170:	490d                	li	s2,3

00000172 <.LVL78>:
 172:	bdc9                	j	44 <.L40>
			172: R_RISCV_RVC_JUMP	.L40

00000174 <.L57>:
 174:	84aa                	mv	s1,a0
 176:	bfdd                	j	16c <.L81>
			176: R_RISCV_RVC_JUMP	.L81

00000178 <.L58>:
 178:	84aa                	mv	s1,a0

0000017a <.LVL80>:
 17a:	842e                	mv	s0,a1

0000017c <.L62>:
 17c:	4905                	li	s2,1

0000017e <.LVL82>:
 17e:	b5d9                	j	44 <.L40>
			17e: R_RISCV_RVC_JUMP	.L40

00000180 <.L59>:
 180:	84aa                	mv	s1,a0

00000182 <.LVL84>:
 182:	842e                	mv	s0,a1

00000184 <.L63>:
 184:	4909                	li	s2,2

00000186 <.LVL86>:
 186:	bd7d                	j	44 <.L40>
			186: R_RISCV_RVC_JUMP	.L40

Disassembly of section .text.hci_build_cc_evt:

00000000 <hci_build_cc_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	00855483          	lhu	s1,8(a0)
   e:	00a55783          	lhu	a5,10(a0)
  12:	842a                	mv	s0,a0
  14:	00750913          	addi	s2,a0,7

00000018 <.LVL88>:
  18:	8526                	mv	a0,s1

0000001a <.LVL89>:
  1a:	00f11723          	sh	a5,14(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	hci_look_for_cmd_desc
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL89+0x4>

00000026 <.LVL90>:
  26:	c521                	beqz	a0,6e <.L83>
			26: R_RISCV_RVC_BRANCH	.L83
  28:	00e15683          	lhu	a3,14(sp)
  2c:	c2a9                	beqz	a3,6e <.L83>
			2c: R_RISCV_RVC_BRANCH	.L83

0000002e <.LBB75>:
  2e:	451c                	lw	a5,8(a0)
  30:	872a                	mv	a4,a0

00000032 <.LVL91>:
  32:	cf91                	beqz	a5,4e <.L84>
			32: R_RISCV_RVC_BRANCH	.L84
  34:	00270703          	lb	a4,2(a4)

00000038 <.LBB76>:
  38:	00c40513          	addi	a0,s0,12

0000003c <.LBB77>:
  3c:	02074463          	bltz	a4,64 <.L85>
			3c: R_RISCV_BRANCH	.L85
  40:	863e                	mv	a2,a5
  42:	00e10593          	addi	a1,sp,14
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	hci_util_pack
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LBB77+0xa>

0000004e <.L84>:
  4e:	00e15783          	lhu	a5,14(sp)
  52:	40f2                	lw	ra,28(sp)
  54:	854a                	mv	a0,s2
  56:	00f41523          	sh	a5,10(s0)
  5a:	4462                	lw	s0,24(sp)

0000005c <.LVL94>:
  5c:	44d2                	lw	s1,20(sp)

0000005e <.LVL95>:
  5e:	4942                	lw	s2,16(sp)

00000060 <.LVL96>:
  60:	6105                	addi	sp,sp,32
  62:	8082                	ret

00000064 <.L85>:
  64:	00e10613          	addi	a2,sp,14
  68:	85aa                	mv	a1,a0
  6a:	9782                	jalr	a5

0000006c <.LVL98>:
  6c:	b7cd                	j	4e <.L84>
			6c: R_RISCV_RVC_JUMP	.L84

0000006e <.L83>:
  6e:	d0e5                	beqz	s1,4e <.L84>
			6e: R_RISCV_RVC_BRANCH	.L84
  70:	4785                	li	a5,1
  72:	00f40623          	sb	a5,12(s0)
  76:	bfe1                	j	4e <.L84>
			76: R_RISCV_RVC_JUMP	.L84

Disassembly of section .text.hci_build_evt:

00000000 <hci_build_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	00a55783          	lhu	a5,10(a0)
   c:	842a                	mv	s0,a0
   e:	00a50493          	addi	s1,a0,10

00000012 <.LVL101>:
  12:	00854503          	lbu	a0,8(a0)

00000016 <.LVL102>:
  16:	00f11723          	sh	a5,14(sp)

0000001a <.LVL103>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	hci_look_for_evt_desc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL103>

00000022 <.LVL104>:
  22:	c505                	beqz	a0,4a <.L99>
			22: R_RISCV_RVC_BRANCH	.L99
  24:	415c                	lw	a5,4(a0)
  26:	872a                	mv	a4,a0
  28:	cf89                	beqz	a5,42 <.L101>
			28: R_RISCV_RVC_BRANCH	.L101
  2a:	00274703          	lbu	a4,2(a4)

0000002e <.LBB82>:
  2e:	00c40513          	addi	a0,s0,12

00000032 <.LBE82>:
  32:	e315                	bnez	a4,56 <.L102>
			32: R_RISCV_RVC_BRANCH	.L102
  34:	863e                	mv	a2,a5
  36:	00e10593          	addi	a1,sp,14
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	hci_util_pack
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBE82+0x8>

00000042 <.L101>:
  42:	00e15783          	lhu	a5,14(sp)
  46:	00f41523          	sh	a5,10(s0)

0000004a <.L99>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	4462                	lw	s0,24(sp)

0000004e <.LVL107>:
  4e:	8526                	mv	a0,s1
  50:	44d2                	lw	s1,20(sp)

00000052 <.LVL108>:
  52:	6105                	addi	sp,sp,32
  54:	8082                	ret

00000056 <.L102>:
  56:	00e15683          	lhu	a3,14(sp)
  5a:	00e10613          	addi	a2,sp,14
  5e:	85aa                	mv	a1,a0
  60:	9782                	jalr	a5

00000062 <.LVL110>:
  62:	b7c5                	j	42 <.L101>
			62: R_RISCV_RVC_JUMP	.L101

Disassembly of section .text.hci_build_le_evt:

00000000 <hci_build_le_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	00a55783          	lhu	a5,10(a0)
   c:	842a                	mv	s0,a0
   e:	00a50493          	addi	s1,a0,10

00000012 <.LVL112>:
  12:	00c54503          	lbu	a0,12(a0)

00000016 <.LVL113>:
  16:	00f11723          	sh	a5,14(sp)

0000001a <.LVL114>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	hci_look_for_le_evt_desc
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL114>

00000022 <.LVL115>:
  22:	c50d                	beqz	a0,4c <.L110>
			22: R_RISCV_RVC_BRANCH	.L110
  24:	415c                	lw	a5,4(a0)
  26:	872a                	mv	a4,a0
  28:	c395                	beqz	a5,4c <.L110>
			28: R_RISCV_RVC_BRANCH	.L110
  2a:	00274703          	lbu	a4,2(a4)

0000002e <.LBB86>:
  2e:	00c40513          	addi	a0,s0,12

00000032 <.LBE86>:
  32:	e31d                	bnez	a4,58 <.L114>
			32: R_RISCV_RVC_BRANCH	.L114
  34:	863e                	mv	a2,a5
  36:	00e10593          	addi	a1,sp,14
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	hci_util_pack
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBE86+0x8>

00000042 <.L115>:
  42:	e509                	bnez	a0,4c <.L110>
			42: R_RISCV_RVC_BRANCH	.L110
  44:	00e15783          	lhu	a5,14(sp)
  48:	00f41523          	sh	a5,10(s0)

0000004c <.L110>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4462                	lw	s0,24(sp)

00000050 <.LVL119>:
  50:	8526                	mv	a0,s1
  52:	44d2                	lw	s1,20(sp)

00000054 <.LVL120>:
  54:	6105                	addi	sp,sp,32
  56:	8082                	ret

00000058 <.L114>:
  58:	00e15683          	lhu	a3,14(sp)
  5c:	00e10613          	addi	a2,sp,14
  60:	85aa                	mv	a1,a0
  62:	9782                	jalr	a5

00000064 <.LVL122>:
  64:	0ff57513          	andi	a0,a0,255

00000068 <.LVL123>:
  68:	bfe9                	j	42 <.L115>
			68: R_RISCV_RVC_JUMP	.L115

Disassembly of section .text.hci_build_acl_rx_data:

00000000 <hci_build_acl_rx_data>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	01254503          	lbu	a0,18(a0)

0000000c <.LVL125>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	em_buf_rx_buff_addr_get
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL125>

00000014 <.LVL126>:
  14:	00c45703          	lhu	a4,12(s0)
  18:	00e44783          	lbu	a5,14(s0)
  1c:	1571                	addi	a0,a0,-4

0000001e <.LVL127>:
  1e:	0752                	slli	a4,a4,0x14
  20:	07b2                	slli	a5,a5,0xc
  22:	8351                	srli	a4,a4,0x14
  24:	8fd9                	or	a5,a5,a4
  26:	07c2                	slli	a5,a5,0x10
  28:	87c1                	srai	a5,a5,0x10

0000002a <.LBB87>:
  2a:	00f50023          	sb	a5,0(a0)
  2e:	07c2                	slli	a5,a5,0x10

00000030 <.LVL129>:
  30:	83c1                	srli	a5,a5,0x10
  32:	83a1                	srli	a5,a5,0x8
  34:	00f500a3          	sb	a5,1(a0)

00000038 <.LBE87>:
  38:	01045783          	lhu	a5,16(s0)

0000003c <.LBB89>:
  3c:	00f50123          	sb	a5,2(a0)
  40:	83a1                	srli	a5,a5,0x8

00000042 <.LVL132>:
  42:	00f501a3          	sb	a5,3(a0)

00000046 <.LBE89>:
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)

0000004a <.LVL133>:
  4a:	0141                	addi	sp,sp,16
  4c:	8082                	ret
