
rc.o:     file format elf32-littleriscv


Disassembly of section .text.rc_get_nss:

00000000 <rc_get_nss>:
   0:	40b55793          	srai	a5,a0,0xb

00000004 <.LBE95>:
   4:	8b9d                	andi	a5,a5,7
   6:	17f9                	addi	a5,a5,-2
   8:	4705                	li	a4,1
   a:	00f76563          	bltu	a4,a5,14 <.L3>
   e:	850d                	srai	a0,a0,0x3

00000010 <.LVL1>:
  10:	890d                	andi	a0,a0,3

00000012 <.LVL2>:
  12:	8082                	ret

00000014 <.L3>:
  14:	4501                	li	a0,0

00000016 <.LVL4>:
  16:	8082                	ret

Disassembly of section .text.rc_get_mcs_index:

00000000 <rc_get_mcs_index>:
   0:	40b55793          	srai	a5,a0,0xb
   4:	8b9d                	andi	a5,a5,7

00000006 <.LBE96>:
   6:	4705                	li	a4,1
   8:	00f77963          	bgeu	a4,a5,1a <.L5>
   c:	468d                	li	a3,3
   e:	4701                	li	a4,0
  10:	00f6e763          	bltu	a3,a5,1e <.L6>
  14:	00757713          	andi	a4,a0,7

00000018 <.LVL7>:
  18:	a019                	j	1e <.L6>

0000001a <.L5>:
  1a:	07f57713          	andi	a4,a0,127

0000001e <.L6>:
  1e:	853a                	mv	a0,a4

00000020 <.LVL10>:
  20:	8082                	ret

Disassembly of section .text.rc_set_previous_mcs_index:

00000000 <rc_set_previous_mcs_index>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL12>:
   8:	cc22                	sw	s0,24(sp)
   a:	c62e                	sw	a1,12(sp)

0000000c <.LBB102>:
   c:	40b5d413          	srai	s0,a1,0xb

00000010 <.LBE102>:
  10:	ce06                	sw	ra,28(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LBE102+0x2>

0000001a <.LBB103>:
  1a:	881d                	andi	s0,s0,7

0000001c <.LBE103>:
  1c:	4785                	li	a5,1
  1e:	45b2                	lw	a1,12(sp)
  20:	0287f163          	bgeu	a5,s0,42 <.L11>
  24:	478d                	li	a5,3
  26:	0287e863          	bltu	a5,s0,56 <.L12>
  2a:	c515                	beqz	a0,56 <.L12>
  2c:	99e1                	andi	a1,a1,-8
  2e:	157d                	addi	a0,a0,-1

00000030 <.LVL15>:
  30:	0bd4c783          	lbu	a5,189(s1)
  34:	8dc9                	or	a1,a1,a0
  36:	05c2                	slli	a1,a1,0x10
  38:	81c1                	srli	a1,a1,0x10

0000003a <.LVL16>:
  3a:	cf91                	beqz	a5,56 <.L12>
  3c:	2005e593          	ori	a1,a1,512
  40:	a819                	j	56 <.L12>

00000042 <.L11>:
  42:	0b94c783          	lbu	a5,185(s1)
  46:	00a7f863          	bgeu	a5,a0,56 <.L12>
  4a:	f805f593          	andi	a1,a1,-128
  4e:	157d                	addi	a0,a0,-1

00000050 <.LVL19>:
  50:	8dc9                	or	a1,a1,a0
  52:	05c2                	slli	a1,a1,0x10
  54:	81c1                	srli	a1,a1,0x10

00000056 <.L12>:
  56:	40f2                	lw	ra,28(sp)
  58:	4462                	lw	s0,24(sp)

0000005a <.LVL21>:
  5a:	44d2                	lw	s1,20(sp)

0000005c <.LVL22>:
  5c:	852e                	mv	a0,a1
  5e:	6105                	addi	sp,sp,32

00000060 <.LVL23>:
  60:	8082                	ret

Disassembly of section .text.rc_set_next_mcs_index:

00000000 <rc_set_next_mcs_index>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	892a                	mv	s2,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL25>:
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)

00000010 <.LBB108>:
  10:	40b5d993          	srai	s3,a1,0xb

00000014 <.LBE108>:
  14:	842e                	mv	s0,a1
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LBE108+0x2>

0000001e <.LBB109>:
  1e:	0079f993          	andi	s3,s3,7

00000022 <.LBE109>:
  22:	4785                	li	a5,1
  24:	84aa                	mv	s1,a0

00000026 <.LVL28>:
  26:	0537f063          	bgeu	a5,s3,66 <.L23>
  2a:	478d                	li	a5,3
  2c:	0537ee63          	bltu	a5,s3,88 <.L24>

00000030 <.LBB110>:
  30:	0b894783          	lbu	a5,184(s2)
  34:	04f57a63          	bgeu	a0,a5,88 <.L24>
  38:	8522                	mv	a0,s0

0000003a <.LVL29>:
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL29>

00000042 <.LVL30>:
  42:	954a                	add	a0,a0,s2
  44:	0b254783          	lbu	a5,178(a0)
  48:	0485                	addi	s1,s1,1
  4a:	0097d7b3          	srl	a5,a5,s1
  4e:	8b85                	andi	a5,a5,1
  50:	cf85                	beqz	a5,88 <.L24>
  52:	9861                	andi	s0,s0,-8
  54:	0bd94783          	lbu	a5,189(s2)
  58:	8c45                	or	s0,s0,s1
  5a:	0442                	slli	s0,s0,0x10
  5c:	8041                	srli	s0,s0,0x10

0000005e <.LVL31>:
  5e:	c78d                	beqz	a5,88 <.L24>
  60:	20046413          	ori	s0,s0,512
  64:	a015                	j	88 <.L24>

00000066 <.L23>:
  66:	0ba94783          	lbu	a5,186(s2)
  6a:	00f57f63          	bgeu	a0,a5,88 <.L24>
  6e:	0b695783          	lhu	a5,182(s2)
  72:	00150493          	addi	s1,a0,1
  76:	0097d7b3          	srl	a5,a5,s1
  7a:	8b85                	andi	a5,a5,1
  7c:	c791                	beqz	a5,88 <.L24>
  7e:	f8047413          	andi	s0,s0,-128
  82:	8c45                	or	s0,s0,s1
  84:	0442                	slli	s0,s0,0x10
  86:	8041                	srli	s0,s0,0x10

00000088 <.L24>:
  88:	8522                	mv	a0,s0
  8a:	40f2                	lw	ra,28(sp)
  8c:	4462                	lw	s0,24(sp)

0000008e <.LVL35>:
  8e:	44d2                	lw	s1,20(sp)
  90:	4942                	lw	s2,16(sp)

00000092 <.LVL36>:
  92:	49b2                	lw	s3,12(sp)

00000094 <.LVL37>:
  94:	6105                	addi	sp,sp,32
  96:	8082                	ret

Disassembly of section .text.is_cck_group:

00000000 <is_cck_group>:
   0:	00b55793          	srli	a5,a0,0xb

00000004 <.LBE114>:
   4:	8b99                	andi	a5,a5,6
   6:	ef81                	bnez	a5,1e <.L39>
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LBE114+0x8>

00000014 <.LVL39>:
  14:	40b2                	lw	ra,12(sp)
  16:	00453513          	sltiu	a0,a0,4

0000001a <.LVL40>:
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

0000001e <.L39>:
  1e:	4501                	li	a0,0

00000020 <.LVL42>:
  20:	8082                	ret

Disassembly of section .text.rc_update_retry_chain:

00000000 <rc_update_retry_chain>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	ca56                	sw	s5,20(sp)
   6:	d606                	sw	ra,44(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	c266                	sw	s9,4(sp)
  18:	0c055a03          	lhu	s4,192(a0)
  1c:	0af54703          	lbu	a4,175(a0)
  20:	842a                	mv	s0,a0
  22:	002a1793          	slli	a5,s4,0x2
  26:	17f1                	addi	a5,a5,-4
  28:	8b11                	andi	a4,a4,4
  2a:	8aae                	mv	s5,a1
  2c:	97ae                	add	a5,a5,a1
  2e:	eb75                	bnez	a4,122 <.L45>
  30:	4194                	lw	a3,0(a1)
  32:	4398                	lw	a4,0(a5)
  34:	0ed77763          	bgeu	a4,a3,122 <.L45>
  38:	08051023          	sh	zero,128(a0)
  3c:	06052e23          	sw	zero,124(a0)

00000040 <.LVL44>:
  40:	4485                	li	s1,1

00000042 <.L46>:
  42:	08045b83          	lhu	s7,128(s0)
  46:	4931                	li	s2,12
  48:	032b8933          	mul	s2,s7,s2
  4c:	9922                	add	s2,s2,s0
  4e:	00a95503          	lhu	a0,10(s2)

00000052 <.LVL46>:
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL46>

0000005a <.LVL47>:
  5a:	e911                	bnez	a0,6e <.L47>
  5c:	fffa0c13          	addi	s8,s4,-1
  60:	4981                	li	s3,0
  62:	4cb1                	li	s9,12

00000064 <.L48>:
  64:	0d89c763          	blt	s3,s8,132 <.L50>
  68:	4785                	li	a5,1
  6a:	00f907a3          	sb	a5,15(s2)

0000006e <.L47>:
  6e:	5c7c                	lw	a5,124(s0)
  70:	09741423          	sh	s7,136(s0)
  74:	409a0733          	sub	a4,s4,s1
  78:	08f42223          	sw	a5,132(s0)
  7c:	45b1                	li	a1,12

0000007e <.L51>:
  7e:	00148793          	addi	a5,s1,1
  82:	07c2                	slli	a5,a5,0x10
  84:	83c1                	srli	a5,a5,0x10
  86:	0344f363          	bgeu	s1,s4,ac <.L52>
  8a:	fff70613          	addi	a2,a4,-1
  8e:	02b606b3          	mul	a3,a2,a1
  92:	96a2                	add	a3,a3,s0
  94:	01b6c683          	lbu	a3,27(a3)
  98:	ced5                	beqz	a3,154 <.L61>
  9a:	409a04b3          	sub	s1,s4,s1
  9e:	070a                	slli	a4,a4,0x2
  a0:	08941423          	sh	s1,136(s0)
  a4:	9756                	add	a4,a4,s5
  a6:	4318                	lw	a4,0(a4)
  a8:	08e42223          	sw	a4,132(s0)

000000ac <.L52>:
  ac:	08845303          	lhu	t1,136(s0)

000000b0 <.LVL50>:
  b0:	40fa07b3          	sub	a5,s4,a5
  b4:	4631                	li	a2,12

000000b6 <.L54>:
  b6:	40fa0733          	sub	a4,s4,a5
  ba:	0742                	slli	a4,a4,0x10
  bc:	8341                	srli	a4,a4,0x10
  be:	09476e63          	bltu	a4,s4,15a <.L56>
  c2:	879a                	mv	a5,t1

000000c4 <.L55>:
  c4:	00279713          	slli	a4,a5,0x2
  c8:	9756                	add	a4,a4,s5
  ca:	430c                	lw	a1,0(a4)

000000cc <.LVL53>:
  cc:	4731                	li	a4,12
  ce:	02e78733          	mul	a4,a5,a4
  d2:	683d                	lui	a6,0xf
  d4:	00840693          	addi	a3,s0,8
  d8:	33280813          	addi	a6,a6,818 # f332 <.LASF367+0xc662>
  dc:	9722                	add	a4,a4,s0
  de:	00875503          	lhu	a0,8(a4)

000000e2 <.LVL54>:
  e2:	4701                	li	a4,0

000000e4 <.L57>:
  e4:	01071613          	slli	a2,a4,0x10
  e8:	8241                	srli	a2,a2,0x10
  ea:	08666263          	bltu	a2,t1,16e <.L60>
  ee:	08f41823          	sh	a5,144(s0)
  f2:	078a                	slli	a5,a5,0x2

000000f4 <.LVL56>:
  f4:	97d6                	add	a5,a5,s5
  f6:	439c                	lw	a5,0(a5)
  f8:	08041c23          	sh	zero,152(s0)
  fc:	50b2                	lw	ra,44(sp)
  fe:	08f42623          	sw	a5,140(s0)
 102:	000aa783          	lw	a5,0(s5)
 106:	5492                	lw	s1,36(sp)
 108:	5902                	lw	s2,32(sp)
 10a:	08f42a23          	sw	a5,148(s0)
 10e:	5422                	lw	s0,40(sp)

00000110 <.LVL57>:
 110:	49f2                	lw	s3,28(sp)
 112:	4a62                	lw	s4,24(sp)
 114:	4ad2                	lw	s5,20(sp)

00000116 <.LVL58>:
 116:	4b42                	lw	s6,16(sp)
 118:	4bb2                	lw	s7,12(sp)
 11a:	4c22                	lw	s8,8(sp)
 11c:	4c92                	lw	s9,4(sp)
 11e:	6145                	addi	sp,sp,48
 120:	8082                	ret

00000122 <.L45>:
 122:	fffa0713          	addi	a4,s4,-1
 126:	08e41023          	sh	a4,128(s0)
 12a:	439c                	lw	a5,0(a5)
 12c:	4489                	li	s1,2
 12e:	dc7c                	sw	a5,124(s0)

00000130 <.LVL60>:
 130:	bf09                	j	42 <.L46>

00000132 <.L50>:
 132:	03998b33          	mul	s6,s3,s9
 136:	9b22                	add	s6,s6,s0
 138:	00ab5503          	lhu	a0,10(s6)
 13c:	00000097          	auipc	ra,0x0
 140:	000080e7          	jalr	ra # 13c <.L50+0xa>

00000144 <.LVL62>:
 144:	c119                	beqz	a0,14a <.L49>
 146:	000b07a3          	sb	zero,15(s6)

0000014a <.L49>:
 14a:	0985                	addi	s3,s3,1

0000014c <.LVL63>:
 14c:	09c2                	slli	s3,s3,0x10
 14e:	0109d993          	srli	s3,s3,0x10

00000152 <.LVL64>:
 152:	bf09                	j	64 <.L48>

00000154 <.L61>:
 154:	8732                	mv	a4,a2

00000156 <.LVL66>:
 156:	84be                	mv	s1,a5
 158:	b71d                	j	7e <.L51>

0000015a <.L56>:
 15a:	fff78693          	addi	a3,a5,-1
 15e:	02c68733          	mul	a4,a3,a2
 162:	9722                	add	a4,a4,s0
 164:	01b74703          	lbu	a4,27(a4)
 168:	ff31                	bnez	a4,c4 <.L55>
 16a:	87b6                	mv	a5,a3

0000016c <.LVL68>:
 16c:	b7a9                	j	b6 <.L54>

0000016e <.L60>:
 16e:	0076c883          	lbu	a7,7(a3)
 172:	02088263          	beqz	a7,196 <.L58>
 176:	03760063          	beq	a2,s7,196 <.L58>
 17a:	0006d603          	lhu	a2,0(a3)
 17e:	00c87f63          	bgeu	a6,a2,19c <.L59>
 182:	00271893          	slli	a7,a4,0x2
 186:	98d6                	add	a7,a7,s5
 188:	0008a883          	lw	a7,0(a7)
 18c:	00b8e563          	bltu	a7,a1,196 <.L58>

00000190 <.LVL70>:
 190:	8532                	mv	a0,a2
 192:	85c6                	mv	a1,a7

00000194 <.L69>:
 194:	87ba                	mv	a5,a4

00000196 <.L58>:
 196:	0705                	addi	a4,a4,1

00000198 <.LVL74>:
 198:	06b1                	addi	a3,a3,12
 19a:	b7a9                	j	e4 <.L57>

0000019c <.L59>:
 19c:	fea66de3          	bltu	a2,a0,196 <.L58>

000001a0 <.LVL76>:
 1a0:	00271793          	slli	a5,a4,0x2
 1a4:	97d6                	add	a5,a5,s5
 1a6:	438c                	lw	a1,0(a5)

000001a8 <.LVL77>:
 1a8:	8532                	mv	a0,a2
 1aa:	b7ed                	j	194 <.L69>

Disassembly of section .text.rc_get_lowest_rate_config:

00000000 <rc_get_lowest_rate_config>:
   0:	0b154703          	lbu	a4,177(a0)
   4:	4785                	li	a5,1
   6:	00e7ff63          	bgeu	a5,a4,24 <.L71>
   a:	468d                	li	a3,3
   c:	4781                	li	a5,0
   e:	02e6e363          	bltu	a3,a4,34 <.L72>
  12:	0b954683          	lbu	a3,185(a0)
  16:	40000793          	li	a5,1024
  1a:	ce89                	beqz	a3,34 <.L72>
  1c:	00b71793          	slli	a5,a4,0xb
  20:	07c2                	slli	a5,a5,0x10
  22:	a801                	j	32 <.L78>

00000024 <.L71>:
  24:	0b954703          	lbu	a4,185(a0)
  28:	40000793          	li	a5,1024
  2c:	c701                	beqz	a4,34 <.L72>
  2e:	01071793          	slli	a5,a4,0x10

00000032 <.L78>:
  32:	83c1                	srli	a5,a5,0x10

00000034 <.L72>:
  34:	853e                	mv	a0,a5

00000036 <.LVL80>:
  36:	8082                	ret

Disassembly of section .text.rc_sort_samples_tp:

00000000 <rc_sort_samples_tp>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	cc52                	sw	s4,24(sp)
   6:	c85a                	sw	s6,16(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	0c055783          	lhu	a5,192(a0)

00000016 <.LVL82>:
  16:	8b2e                	mv	s6,a1
  18:	01050993          	addi	s3,a0,16
  1c:	fff78a13          	addi	s4,a5,-1
  20:	0a42                	slli	s4,s4,0x10
  22:	010a5a13          	srli	s4,s4,0x10

00000026 <.L80>:
  26:	c3a5                	beqz	a5,86 <.L79>
  28:	894e                	mv	s2,s3
  2a:	004b0413          	addi	s0,s6,4
  2e:	4781                	li	a5,0

00000030 <.LVL84>:
  30:	4485                	li	s1,1
  32:	a0b1                	j	7e <.L84>

00000034 <.L82>:
  34:	4014                	lw	a3,0(s0)
  36:	4058                	lw	a4,4(s0)
  38:	00c90a93          	addi	s5,s2,12
  3c:	02d77c63          	bgeu	a4,a3,74 <.L81>
  40:	4631                	li	a2,12
  42:	85ca                	mv	a1,s2
  44:	0048                	addi	a0,sp,4
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.L82+0x12>

0000004e <.LVL86>:
  4e:	4631                	li	a2,12
  50:	85d6                	mv	a1,s5
  52:	854a                	mv	a0,s2
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL86+0x6>

0000005c <.LVL87>:
  5c:	4631                	li	a2,12
  5e:	004c                	addi	a1,sp,4
  60:	8556                	mv	a0,s5
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL87+0x6>

0000006a <.LVL88>:
  6a:	401c                	lw	a5,0(s0)

0000006c <.LVL89>:
  6c:	4058                	lw	a4,4(s0)
  6e:	c05c                	sw	a5,4(s0)
  70:	c018                	sw	a4,0(s0)

00000072 <.LVL90>:
  72:	87a6                	mv	a5,s1

00000074 <.L81>:
  74:	0485                	addi	s1,s1,1

00000076 <.LVL92>:
  76:	04c2                	slli	s1,s1,0x10
  78:	80c1                	srli	s1,s1,0x10

0000007a <.LVL93>:
  7a:	8956                	mv	s2,s5
  7c:	0411                	addi	s0,s0,4

0000007e <.L84>:
  7e:	fb44ebe3          	bltu	s1,s4,34 <.L82>
  82:	8a3e                	mv	s4,a5

00000084 <.LVL95>:
  84:	b74d                	j	26 <.L80>

00000086 <.L79>:
  86:	50b2                	lw	ra,44(sp)
  88:	5422                	lw	s0,40(sp)
  8a:	5492                	lw	s1,36(sp)
  8c:	5902                	lw	s2,32(sp)
  8e:	49f2                	lw	s3,28(sp)

00000090 <.LVL97>:
  90:	4a62                	lw	s4,24(sp)

00000092 <.LVL98>:
  92:	4ad2                	lw	s5,20(sp)
  94:	4b42                	lw	s6,16(sp)

00000096 <.LVL99>:
  96:	6145                	addi	sp,sp,48
  98:	8082                	ret

Disassembly of section .text.rc_get_initial_rate_config:

00000000 <rc_get_initial_rate_config>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	0b154483          	lbu	s1,177(a0)
   e:	4785                	li	a5,1
  10:	0497f363          	bgeu	a5,s1,56 <.L87>
  14:	470d                	li	a4,3
  16:	4781                	li	a5,0
  18:	04976a63          	bltu	a4,s1,6c <.L88>

0000001c <.LBB115>:
  1c:	0bc54903          	lbu	s2,188(a0)
  20:	842a                	mv	s0,a0

00000022 <.LBB116>:
  22:	04ae                	slli	s1,s1,0xb
  24:	012507b3          	add	a5,a0,s2

00000028 <.LBB120>:
  28:	0b27c503          	lbu	a0,178(a5)

0000002c <.LBE120>:
  2c:	090e                	slli	s2,s2,0x3

0000002e <.LBB121>:
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LBB121>

00000036 <.LBE121>:
  36:	0bd44783          	lbu	a5,189(s0)
  3a:	0bb44703          	lbu	a4,187(s0)
  3e:	07a6                	slli	a5,a5,0x9
  40:	071e                	slli	a4,a4,0x7
  42:	8fc5                	or	a5,a5,s1
  44:	8fd9                	or	a5,a5,a4
  46:	477d                	li	a4,31
  48:	40a70533          	sub	a0,a4,a0

0000004c <.LVL104>:
  4c:	0127e7b3          	or	a5,a5,s2
  50:	0ff57513          	andi	a0,a0,255
  54:	a809                	j	66 <.L93>

00000056 <.L87>:
  56:	0be54703          	lbu	a4,190(a0)
  5a:	0ba54503          	lbu	a0,186(a0)

0000005e <.LVL106>:
  5e:	00b49793          	slli	a5,s1,0xb
  62:	072a                	slli	a4,a4,0xa
  64:	8fd9                	or	a5,a5,a4

00000066 <.L93>:
  66:	8fc9                	or	a5,a5,a0
  68:	07c2                	slli	a5,a5,0x10
  6a:	83c1                	srli	a5,a5,0x10

0000006c <.L88>:
  6c:	40b2                	lw	ra,12(sp)
  6e:	4422                	lw	s0,8(sp)
  70:	4492                	lw	s1,4(sp)
  72:	4902                	lw	s2,0(sp)
  74:	853e                	mv	a0,a5
  76:	0141                	addi	sp,sp,16
  78:	8082                	ret

Disassembly of section .text.rc_calc_prob_ewma:

00000000 <rc_calc_prob_ewma>:
   0:	00055683          	lhu	a3,0(a0)

00000004 <.LVL109>:
   4:	c2b9                	beqz	a3,4a <.L95>
   6:	00255783          	lhu	a5,2(a0)

0000000a <.LBB131>:
   a:	00954603          	lbu	a2,9(a0)
   e:	00050423          	sb	zero,8(a0)
  12:	07c2                	slli	a5,a5,0x10
  14:	02d7d733          	divu	a4,a5,a3

00000018 <.LVL110>:
  18:	ee09                	bnez	a2,32 <.L96>
  1a:	00d7e963          	bltu	a5,a3,2c <.L97>
  1e:	177d                	addi	a4,a4,-1

00000020 <.LVL111>:
  20:	00e51223          	sh	a4,4(a0)

00000024 <.L98>:
  24:	4785                	li	a5,1
  26:	00f504a3          	sb	a5,9(a0)

0000002a <.LBE131>:
  2a:	8082                	ret

0000002c <.L97>:
  2c:	00051223          	sh	zero,4(a0)
  30:	bfd5                	j	24 <.L98>

00000032 <.L96>:
  32:	00455783          	lhu	a5,4(a0)

00000036 <.LBB135>:
  36:	06000693          	li	a3,96

0000003a <.LVL115>:
  3a:	0716                	slli	a4,a4,0x5

0000003c <.LVL116>:
  3c:	02d787b3          	mul	a5,a5,a3
  40:	97ba                	add	a5,a5,a4
  42:	839d                	srli	a5,a5,0x7

00000044 <.LBE135>:
  44:	00f51223          	sh	a5,4(a0)
  48:	bff1                	j	24 <.L98>

0000004a <.L95>:
  4a:	00854783          	lbu	a5,8(a0)
  4e:	0ff00713          	li	a4,255
  52:	00e78563          	beq	a5,a4,5c <.L94>
  56:	0785                	addi	a5,a5,1
  58:	00f50423          	sb	a5,8(a0)

0000005c <.L94>:
  5c:	8082                	ret

Disassembly of section .text.rc_check_valid_rate:

00000000 <rc_check_valid_rate>:
   0:	1101                	addi	sp,sp,-32

00000002 <.LBB152>:
   2:	40b5d793          	srai	a5,a1,0xb

00000006 <.LBE152>:
   6:	cc22                	sw	s0,24(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	ca26                	sw	s1,20(sp)

0000000c <.LBB153>:
   c:	8b9d                	andi	a5,a5,7

0000000e <.LBE153>:
   e:	4705                	li	a4,1
  10:	842a                	mv	s0,a0
  12:	02f77763          	bgeu	a4,a5,40 <.L101>
  16:	470d                	li	a4,3
  18:	4505                	li	a0,1

0000001a <.LVL120>:
  1a:	02f76d63          	bltu	a4,a5,54 <.L102>

0000001e <.LBB154>:
  1e:	852e                	mv	a0,a1
  20:	c62e                	sw	a1,12(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LBB154+0x4>

0000002a <.LVL122>:
  2a:	45b2                	lw	a1,12(sp)
  2c:	84aa                	mv	s1,a0

0000002e <.LVL123>:
  2e:	9426                	add	s0,s0,s1

00000030 <.LVL124>:
  30:	852e                	mv	a0,a1
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL124+0x2>

0000003a <.LVL125>:
  3a:	0b244783          	lbu	a5,178(s0)
  3e:	a801                	j	4e <.L107>

00000040 <.L101>:
  40:	852e                	mv	a0,a1
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.L101+0x2>

0000004a <.LVL127>:
  4a:	0b645783          	lhu	a5,182(s0)

0000004e <.L107>:
  4e:	00a7d533          	srl	a0,a5,a0
  52:	8905                	andi	a0,a0,1

00000054 <.L102>:
  54:	40f2                	lw	ra,28(sp)
  56:	4462                	lw	s0,24(sp)
  58:	44d2                	lw	s1,20(sp)
  5a:	6105                	addi	sp,sp,32
  5c:	8082                	ret

Disassembly of section .text.rc_new_random_rate:

00000000 <rc_new_random_rate>:
   0:	00000737          	lui	a4,0x0
   4:	00070713          	mv	a4,a4
   8:	431c                	lw	a5,0(a4)
   a:	41c656b7          	lui	a3,0x41c65
   e:	e6d68693          	addi	a3,a3,-403 # 41c64e6d <.LASF367+0x41c6219d>
  12:	02d787b3          	mul	a5,a5,a3
  16:	668d                	lui	a3,0x3
  18:	03968693          	addi	a3,a3,57 # 3039 <.LASF367+0x369>

0000001c <.LBE169>:
  1c:	0bb54583          	lbu	a1,187(a0)
  20:	4881                	li	a7,0

00000022 <.LBB176>:
  22:	97b6                	add	a5,a5,a3

00000024 <.LBE176>:
  24:	0b154683          	lbu	a3,177(a0)

00000028 <.LBB177>:
  28:	c31c                	sw	a5,0(a4)
  2a:	83c1                	srli	a5,a5,0x10

0000002c <.LBE177>:
  2c:	00b69713          	slli	a4,a3,0xb
  30:	0742                	slli	a4,a4,0x10
  32:	8341                	srli	a4,a4,0x10

00000034 <.LVL132>:
  34:	c589                	beqz	a1,3e <.L109>
  36:	fff58893          	addi	a7,a1,-1
  3a:	0ff8f893          	andi	a7,a7,255

0000003e <.L109>:
  3e:	4605                	li	a2,1
  40:	04d67b63          	bgeu	a2,a3,96 <.L110>
  44:	480d                	li	a6,3
  46:	08d86363          	bltu	a6,a3,cc <.L111>

0000004a <.LBB178>:
  4a:	0b954603          	lbu	a2,185(a0)

0000004e <.LVL135>:
  4e:	08c86f63          	bltu	a6,a2,ec <.L115>
  52:	01479693          	slli	a3,a5,0x14

00000056 <.LVL136>:
  56:	0806db63          	bgez	a3,ec <.L115>
  5a:	0ba54583          	lbu	a1,186(a0)

0000005e <.LBB179>:
  5e:	07f7f693          	andi	a3,a5,127
  62:	40c58733          	sub	a4,a1,a2

00000066 <.LVL137>:
  66:	0705                	addi	a4,a4,1
  68:	02e6e6b3          	rem	a3,a3,a4
  6c:	0b655703          	lhu	a4,182(a0)
  70:	96b2                	add	a3,a3,a2
  72:	0ff6f693          	andi	a3,a3,255

00000076 <.LVL138>:
  76:	00d75733          	srl	a4,a4,a3
  7a:	8b05                	andi	a4,a4,1
  7c:	e311                	bnez	a4,80 <.L116>
  7e:	86ae                	mv	a3,a1

00000080 <.L116>:
  80:	40000713          	li	a4,1024
  84:	c6a1                	beqz	a3,cc <.L111>
  86:	0be54703          	lbu	a4,190(a0)
  8a:	4007f793          	andi	a5,a5,1024

0000008e <.LVL140>:
  8e:	072a                	slli	a4,a4,0xa
  90:	8f5d                	or	a4,a4,a5
  92:	8f55                	or	a4,a4,a3
  94:	a815                	j	c8 <.L128>

00000096 <.L110>:
  96:	0b954603          	lbu	a2,185(a0)
  9a:	0ba54803          	lbu	a6,186(a0)

0000009e <.LVL142>:
  9e:	07f7f693          	andi	a3,a5,127

000000a2 <.LVL143>:
  a2:	40c805b3          	sub	a1,a6,a2
  a6:	0585                	addi	a1,a1,1
  a8:	02b6e6b3          	rem	a3,a3,a1
  ac:	96b2                	add	a3,a3,a2
  ae:	0b655603          	lhu	a2,182(a0)

000000b2 <.LVL144>:
  b2:	0ff6f693          	andi	a3,a3,255

000000b6 <.LVL145>:
  b6:	00d65633          	srl	a2,a2,a3
  ba:	8a05                	andi	a2,a2,1
  bc:	e211                	bnez	a2,c0 <.L113>
  be:	86c2                	mv	a3,a6

000000c0 <.L113>:
  c0:	8f55                	or	a4,a4,a3
  c2:	e699                	bnez	a3,d0 <.L114>
  c4:	40076713          	ori	a4,a4,1024

000000c8 <.L128>:
  c8:	0742                	slli	a4,a4,0x10
  ca:	8341                	srli	a4,a4,0x10

000000cc <.L111>:
  cc:	853a                	mv	a0,a4
  ce:	8082                	ret

000000d0 <.L114>:
  d0:	16fd                	addi	a3,a3,-1

000000d2 <.LVL151>:
  d2:	0ff6f693          	andi	a3,a3,255
  d6:	4609                	li	a2,2
  d8:	fed66ae3          	bltu	a2,a3,cc <.L111>
  dc:	0be54503          	lbu	a0,190(a0)

000000e0 <.LVL152>:
  e0:	4007f793          	andi	a5,a5,1024

000000e4 <.LVL153>:
  e4:	052a                	slli	a0,a0,0xa
  e6:	8fc9                	or	a5,a5,a0
  e8:	8f5d                	or	a4,a4,a5

000000ea <.LVL154>:
  ea:	bff9                	j	c8 <.L128>

000000ec <.L115>:
  ec:	0bc54603          	lbu	a2,188(a0)

000000f0 <.LVL156>:
  f0:	4037d693          	srai	a3,a5,0x3
  f4:	8a8d                	andi	a3,a3,3
  f6:	0605                	addi	a2,a2,1
  f8:	0b854803          	lbu	a6,184(a0)
  fc:	02c6e6b3          	rem	a3,a3,a2
 100:	0077f613          	andi	a2,a5,7
 104:	00180313          	addi	t1,a6,1
 108:	0bd54e03          	lbu	t3,189(a0)

0000010c <.LVL157>:
 10c:	02666633          	rem	a2,a2,t1

00000110 <.LVL158>:
 110:	9536                	add	a0,a0,a3

00000112 <.LVL159>:
 112:	0b254303          	lbu	t1,178(a0)
 116:	00c35333          	srl	t1,t1,a2
 11a:	00137313          	andi	t1,t1,1
 11e:	00030463          	beqz	t1,126 <.L117>
 122:	0ff67813          	andi	a6,a2,255

00000126 <.L117>:
 126:	4097d513          	srai	a0,a5,0x9
 12a:	8905                	andi	a0,a0,1

0000012c <.LVL161>:
 12c:	0e05                	addi	t3,t3,1

0000012e <.LVL162>:
 12e:	879d                	srai	a5,a5,0x7

00000130 <.LVL163>:
 130:	411585b3          	sub	a1,a1,a7

00000134 <.LVL164>:
 134:	03c56533          	rem	a0,a0,t3
 138:	8b8d                	andi	a5,a5,3
 13a:	0585                	addi	a1,a1,1
 13c:	068e                	slli	a3,a3,0x3

0000013e <.LVL165>:
 13e:	02b7e7b3          	rem	a5,a5,a1
 142:	0526                	slli	a0,a0,0x9
 144:	8d55                	or	a0,a0,a3
 146:	8f49                	or	a4,a4,a0
 148:	97c6                	add	a5,a5,a7
 14a:	079e                	slli	a5,a5,0x7
 14c:	8f5d                	or	a4,a4,a5
 14e:	0742                	slli	a4,a4,0x10
 150:	8341                	srli	a4,a4,0x10

00000152 <.LVL166>:
 152:	01076733          	or	a4,a4,a6
 156:	bf9d                	j	cc <.L111>

Disassembly of section .text.rc_update_counters:

00000000 <rc_update_counters>:
   0:	47a5                	li	a5,9
   2:	14a7e263          	bltu	a5,a0,146 <.L146>
   6:	1b000713          	li	a4,432

0000000a <.LVL169>:
   a:	02e50733          	mul	a4,a0,a4
   e:	7179                	addi	sp,sp,-48
  10:	d04a                	sw	s2,32(sp)
  12:	00000937          	lui	s2,0x0
  16:	00090793          	mv	a5,s2
  1a:	ce4e                	sw	s3,28(sp)
  1c:	d606                	sw	ra,44(sp)
  1e:	d422                	sw	s0,40(sp)
  20:	d226                	sw	s1,36(sp)
  22:	cc52                	sw	s4,24(sp)
  24:	97ba                	add	a5,a5,a4
  26:	ca56                	sw	s5,20(sp)
  28:	c85a                	sw	s6,16(sp)
  2a:	c65e                	sw	s7,12(sp)
  2c:	c462                	sw	s8,8(sp)
  2e:	c266                	sw	s9,4(sp)
  30:	c06a                	sw	s10,0(sp)
  32:	01a7c683          	lbu	a3,26(a5)

00000036 <.LVL170>:
  36:	0ff00713          	li	a4,255
  3a:	89aa                	mv	s3,a0
  3c:	00090913          	mv	s2,s2
  40:	0ee68163          	beq	a3,a4,122 <.L129>
  44:	1107a403          	lw	s0,272(a5)
  48:	84ae                	mv	s1,a1
  4a:	8a32                	mv	s4,a2

0000004c <.LVL172>:
  4c:	ec19                	bnez	s0,6a <.L133>
  4e:	000005b7          	lui	a1,0x0

00000052 <.LVL173>:
  52:	00000537          	lui	a0,0x0

00000056 <.LVL174>:
  56:	7ce00613          	li	a2,1998

0000005a <.LVL175>:
  5a:	00058593          	mv	a1,a1
  5e:	00050513          	mv	a0,a0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL175+0x8>

0000006a <.L133>:
  6a:	0a645783          	lhu	a5,166(s0)
  6e:	08040a93          	addi	s5,s0,128
  72:	0a040b13          	addi	s6,s0,160
  76:	0785                	addi	a5,a5,1
  78:	0af41323          	sh	a5,166(s0)
  7c:	0a445783          	lhu	a5,164(s0)
  80:	4bb1                	li	s7,12

00000082 <.LBB184>:
  82:	4c0d                	li	s8,3

00000084 <.LBE184>:
  84:	0785                	addi	a5,a5,1
  86:	0af41223          	sh	a5,164(s0)

0000008a <.LBB186>:
  8a:	00000cb7          	lui	s9,0x0
  8e:	00000d37          	lui	s10,0x0

00000092 <.L134>:
  92:	c0b1                	beqz	s1,d6 <.L141>

00000094 <.LBB187>:
  94:	000ad783          	lhu	a5,0(s5)

00000098 <.LVL180>:
  98:	037787b3          	mul	a5,a5,s7

0000009c <.LVL181>:
  9c:	97a2                	add	a5,a5,s0
  9e:	0047d703          	lhu	a4,4(a5)
  a2:	054c7b63          	bgeu	s8,s4,f8 <.L135>
  a6:	0711                	addi	a4,a4,4
  a8:	00e79223          	sh	a4,4(a5)

000000ac <.LVL182>:
  ac:	14f1                	addi	s1,s1,-4
  ae:	1a71                	addi	s4,s4,-4

000000b0 <.L136>:
  b0:	0047d703          	lhu	a4,4(a5)
  b4:	0067d783          	lhu	a5,6(a5)
  b8:	00f77c63          	bgeu	a4,a5,d0 <.L137>
  bc:	7fa00613          	li	a2,2042
  c0:	000c8593          	mv	a1,s9
  c4:	000d0513          	mv	a0,s10
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.L136+0x18>

000000d0 <.L137>:
  d0:	0aa1                	addi	s5,s5,8

000000d2 <.LBE187>:
  d2:	fd6a90e3          	bne	s5,s6,92 <.L134>

000000d6 <.L141>:
  d6:	0ae44783          	lbu	a5,174(s0)
  da:	cf95                	beqz	a5,116 <.L138>
  dc:	4709                	li	a4,2
  de:	04e79263          	bne	a5,a4,122 <.L129>
  e2:	1b000793          	li	a5,432
  e6:	02f989b3          	mul	s3,s3,a5
  ea:	99ca                	add	s3,s3,s2
  ec:	11a9c783          	lbu	a5,282(s3)
  f0:	8b85                	andi	a5,a5,1
  f2:	eb85                	bnez	a5,122 <.L129>
  f4:	478d                	li	a5,3
  f6:	a0a9                	j	140 <.L149>

000000f8 <.L135>:
  f8:	04c2                	slli	s1,s1,0x10

000000fa <.LVL188>:
  fa:	80c1                	srli	s1,s1,0x10
  fc:	9726                	add	a4,a4,s1
  fe:	00e79223          	sh	a4,4(a5)

00000102 <.LVL189>:
 102:	0067d703          	lhu	a4,6(a5)
 106:	414484b3          	sub	s1,s1,s4
 10a:	4a01                	li	s4,0

0000010c <.LVL190>:
 10c:	94ba                	add	s1,s1,a4
 10e:	00979323          	sh	s1,6(a5)

00000112 <.LVL191>:
 112:	4481                	li	s1,0
 114:	bf71                	j	b0 <.L136>

00000116 <.L138>:
 116:	0ac44783          	lbu	a5,172(s0)
 11a:	c395                	beqz	a5,13e <.L142>
 11c:	17fd                	addi	a5,a5,-1
 11e:	0af40623          	sb	a5,172(s0)

00000122 <.L129>:
 122:	50b2                	lw	ra,44(sp)
 124:	5422                	lw	s0,40(sp)
 126:	5492                	lw	s1,36(sp)
 128:	5902                	lw	s2,32(sp)
 12a:	49f2                	lw	s3,28(sp)
 12c:	4a62                	lw	s4,24(sp)
 12e:	4ad2                	lw	s5,20(sp)
 130:	4b42                	lw	s6,16(sp)
 132:	4bb2                	lw	s7,12(sp)
 134:	4c22                	lw	s8,8(sp)
 136:	4c92                	lw	s9,4(sp)
 138:	4d02                	lw	s10,0(sp)
 13a:	6145                	addi	sp,sp,48
 13c:	8082                	ret

0000013e <.L142>:
 13e:	4785                	li	a5,1

00000140 <.L149>:
 140:	0af40723          	sb	a5,174(s0)
 144:	bff9                	j	122 <.L129>

00000146 <.L146>:
 146:	8082                	ret

Disassembly of section .text.rc_get_duration:

00000000 <rc_get_duration>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB195>:
   a:	40b55913          	srai	s2,a0,0xb

0000000e <.LBE195>:
   e:	842a                	mv	s0,a0
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LBE195+0x2>

00000018 <.LBB196>:
  18:	00797913          	andi	s2,s2,7

0000001c <.LBE196>:
  1c:	4785                	li	a5,1
  1e:	84aa                	mv	s1,a0

00000020 <.LVL200>:
  20:	0327ff63          	bgeu	a5,s2,5e <.L151>
  24:	478d                	li	a5,3
  26:	4501                	li	a0,0

00000028 <.LVL201>:
  28:	0527ea63          	bltu	a5,s2,7c <.L150>

0000002c <.LBB197>:
  2c:	8522                	mv	a0,s0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LBB197+0x2>

00000036 <.LVL203>:
  36:	00645793          	srli	a5,s0,0x6

0000003a <.LBB203>:
  3a:	8025                	srli	s0,s0,0x9

0000003c <.LBE203>:
  3c:	8b99                	andi	a5,a5,6
  3e:	8805                	andi	s0,s0,1
  40:	8c5d                	or	s0,s0,a5
  42:	048e                	slli	s1,s1,0x3
  44:	8cc1                	or	s1,s1,s0
  46:	00000437          	lui	s0,0x0
  4a:	048a                	slli	s1,s1,0x2
  4c:	00040413          	mv	s0,s0
  50:	94a2                	add	s1,s1,s0
  52:	00150793          	addi	a5,a0,1 # 1 <rc_get_duration+0x1>
  56:	4088                	lw	a0,0(s1)
  58:	02f55533          	divu	a0,a0,a5

0000005c <.LBE197>:
  5c:	a005                	j	7c <.L150>

0000005e <.L151>:
  5e:	478d                	li	a5,3
  60:	02a7e463          	bltu	a5,a0,88 <.L154>

00000064 <.LBB204>:
  64:	8429                	srai	s0,s0,0xa

00000066 <.LBE208>:
  66:	00151493          	slli	s1,a0,0x1

0000006a <.LVL209>:
  6a:	8805                	andi	s0,s0,1

0000006c <.LVL210>:
  6c:	8c45                	or	s0,s0,s1
  6e:	000007b7          	lui	a5,0x0
  72:	040a                	slli	s0,s0,0x2
  74:	00078793          	mv	a5,a5
  78:	943e                	add	s0,s0,a5
  7a:	4008                	lw	a0,0(s0)

0000007c <.L150>:
  7c:	40b2                	lw	ra,12(sp)
  7e:	4422                	lw	s0,8(sp)
  80:	4492                	lw	s1,4(sp)
  82:	4902                	lw	s2,0(sp)

00000084 <.LVL212>:
  84:	0141                	addi	sp,sp,16
  86:	8082                	ret

00000088 <.L154>:
  88:	ffc50493          	addi	s1,a0,-4

0000008c <.LVL214>:
  8c:	000007b7          	lui	a5,0x0
  90:	048a                	slli	s1,s1,0x2

00000092 <.LVL215>:
  92:	00078793          	mv	a5,a5
  96:	94be                	add	s1,s1,a5
  98:	4088                	lw	a0,0(s1)

0000009a <.LVL216>:
  9a:	b7cd                	j	7c <.L150>

Disassembly of section .text.rc_update_bw_nss_max:

00000000 <rc_update_bw_nss_max>:
   0:	715d                	addi	sp,sp,-80
   2:	de4e                	sw	s3,60(sp)
   4:	1b000713          	li	a4,432
   8:	89aa                	mv	s3,a0
   a:	02e98733          	mul	a4,s3,a4
   e:	00000537          	lui	a0,0x0

00000012 <.LVL219>:
  12:	00050793          	mv	a5,a0
  16:	c2a6                	sw	s1,68(sp)
  18:	c0ca                	sw	s2,64(sp)
  1a:	dc52                	sw	s4,56(sp)
  1c:	c686                	sw	ra,76(sp)
  1e:	c4a2                	sw	s0,72(sp)
  20:	8a2e                	mv	s4,a1
  22:	84b2                	mv	s1,a2
  24:	97ba                	add	a5,a5,a4
  26:	1107a403          	lw	s0,272(a5) # 110 <.LVL231>

0000002a <.LVL220>:
  2a:	00050913          	mv	s2,a0
  2e:	e005                	bnez	s0,4e <.L159>
  30:	6605                	lui	a2,0x1

00000032 <.LVL221>:
  32:	000005b7          	lui	a1,0x0

00000036 <.LVL222>:
  36:	00000537          	lui	a0,0x0
  3a:	96960613          	addi	a2,a2,-1687 # 969 <.LASF655+0x6>
  3e:	00058593          	mv	a1,a1
  42:	00050513          	mv	a0,a0
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL222+0x10>

0000004e <.L159>:
  4e:	0bb44783          	lbu	a5,187(s0) # bb <.L163+0xd>
  52:	01479663          	bne	a5,s4,5e <.L160>
  56:	0bc44783          	lbu	a5,188(s0)
  5a:	0c978c63          	beq	a5,s1,132 <.L158>

0000005e <.L160>:
  5e:	0b440da3          	sb	s4,187(s0)
  62:	478d                	li	a5,3
  64:	0347f163          	bgeu	a5,s4,86 <.L162>
  68:	6605                	lui	a2,0x1
  6a:	000005b7          	lui	a1,0x0
  6e:	00000537          	lui	a0,0x0
  72:	96f60613          	addi	a2,a2,-1681 # 96f <.LASF655+0xc>
  76:	00058593          	mv	a1,a1
  7a:	00050513          	mv	a0,a0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L160+0x20>

00000086 <.L162>:
  86:	0a940e23          	sb	s1,188(s0)
  8a:	479d                	li	a5,7
  8c:	0297f163          	bgeu	a5,s1,ae <.L163>
  90:	6605                	lui	a2,0x1
  92:	000005b7          	lui	a1,0x0
  96:	00000537          	lui	a0,0x0
  9a:	97160613          	addi	a2,a2,-1679 # 971 <.LASF655+0xe>
  9e:	00058593          	mv	a1,a1
  a2:	00050513          	mv	a0,a0
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.L162+0x20>

000000ae <.L163>:
  ae:	0c645703          	lhu	a4,198(s0)
  b2:	67c1                	lui	a5,0x10
  b4:	17fd                	addi	a5,a5,-1
  b6:	06f71e63          	bne	a4,a5,132 <.L158>
  ba:	8522                	mv	a0,s0
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.L163+0xe>

000000c4 <.LVL226>:
  c4:	00a41523          	sh	a0,10(s0)
  c8:	8522                	mv	a0,s0
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.LVL226+0x6>

000000d2 <.LVL227>:
  d2:	0c045783          	lhu	a5,192(s0)
  d6:	4731                	li	a4,12
  d8:	4485                	li	s1,1
  da:	17fd                	addi	a5,a5,-1
  dc:	02e787b3          	mul	a5,a5,a4

000000e0 <.LBB213>:
  e0:	4a31                	li	s4,12

000000e2 <.LBE213>:
  e2:	97a2                	add	a5,a5,s0
  e4:	00a79523          	sh	a0,10(a5) # 1000a <.LASF367+0xd33a>

000000e8 <.L164>:
  e8:	0c045603          	lhu	a2,192(s0)
  ec:	fff60793          	addi	a5,a2,-1
  f0:	04f4c963          	blt	s1,a5,142 <.L166>
  f4:	0034                	addi	a3,sp,8
  f6:	00840793          	addi	a5,s0,8
  fa:	4701                	li	a4,0
  fc:	84b6                	mv	s1,a3

000000fe <.LBB218>:
  fe:	4585                	li	a1,1

00000100 <.L169>:
 100:	06e61d63          	bne	a2,a4,17a <.L170>
 104:	85a6                	mv	a1,s1
 106:	8522                	mv	a0,s0
 108:	00000097          	auipc	ra,0x0
 10c:	000080e7          	jalr	ra # 108 <.L169+0x8>

00000110 <.LVL231>:
 110:	8522                	mv	a0,s0
 112:	85a6                	mv	a1,s1
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.LVL231+0x4>

0000011c <.LVL232>:
 11c:	1b000513          	li	a0,432
 120:	02a98533          	mul	a0,s3,a0
 124:	954a                	add	a0,a0,s2
 126:	11a54783          	lbu	a5,282(a0) # 11a <.LVL231+0xa>
 12a:	0017e793          	ori	a5,a5,1
 12e:	10f50d23          	sb	a5,282(a0)

00000132 <.L158>:
 132:	40b6                	lw	ra,76(sp)
 134:	4426                	lw	s0,72(sp)

00000136 <.LVL233>:
 136:	4496                	lw	s1,68(sp)
 138:	4906                	lw	s2,64(sp)
 13a:	59f2                	lw	s3,60(sp)
 13c:	5a62                	lw	s4,56(sp)
 13e:	6161                	addi	sp,sp,80
 140:	8082                	ret

00000142 <.L166>:
 142:	8522                	mv	a0,s0
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <.L166+0x2>

0000014c <.LBB214>:
 14c:	0c045683          	lhu	a3,192(s0)
 150:	00a40713          	addi	a4,s0,10
 154:	4781                	li	a5,0

00000156 <.L165>:
 156:	00d7eb63          	bltu	a5,a3,16c <.L167>

0000015a <.LBE214>:
 15a:	034487b3          	mul	a5,s1,s4

0000015e <.LBE219>:
 15e:	0485                	addi	s1,s1,1

00000160 <.LVL239>:
 160:	04c2                	slli	s1,s1,0x10
 162:	80c1                	srli	s1,s1,0x10

00000164 <.LBB220>:
 164:	97a2                	add	a5,a5,s0
 166:	00a79523          	sh	a0,10(a5)
 16a:	bfbd                	j	e8 <.L164>

0000016c <.L167>:
 16c:	0731                	addi	a4,a4,12
 16e:	ff475603          	lhu	a2,-12(a4) # fffffff4 <.LASF367+0xffffd324>
 172:	fca608e3          	beq	a2,a0,142 <.L166>
 176:	0785                	addi	a5,a5,1
 178:	bff9                	j	156 <.L165>

0000017a <.L170>:
 17a:	0705                	addi	a4,a4,1

0000017c <.LBB222>:
 17c:	00078323          	sb	zero,6(a5)
 180:	00b783a3          	sb	a1,7(a5)
 184:	00079023          	sh	zero,0(a5)
 188:	000782a3          	sb	zero,5(a5)

0000018c <.LBE222>:
 18c:	0742                	slli	a4,a4,0x10

0000018e <.LBB223>:
 18e:	0006a023          	sw	zero,0(a3)

00000192 <.LBE223>:
 192:	8341                	srli	a4,a4,0x10

00000194 <.LVL245>:
 194:	07b1                	addi	a5,a5,12
 196:	0691                	addi	a3,a3,4
 198:	b7a5                	j	100 <.L169>

Disassembly of section .text.rc_update_preamble_type:

00000000 <rc_update_preamble_type>:
   0:	711d                	addi	sp,sp,-96
   2:	c2d6                	sw	s5,68(sp)
   4:	1b000713          	li	a4,432
   8:	8aaa                	mv	s5,a0
   a:	02ea8733          	mul	a4,s5,a4
   e:	00000537          	lui	a0,0x0

00000012 <.LVL248>:
  12:	00050793          	mv	a5,a0
  16:	caa6                	sw	s1,84(sp)
  18:	c4d2                	sw	s4,72(sp)
  1a:	ce86                	sw	ra,92(sp)
  1c:	cca2                	sw	s0,88(sp)
  1e:	c8ca                	sw	s2,80(sp)
  20:	c6ce                	sw	s3,76(sp)
  22:	c0da                	sw	s6,64(sp)
  24:	de5e                	sw	s7,60(sp)
  26:	97ba                	add	a5,a5,a4
  28:	1107a403          	lw	s0,272(a5)

0000002c <.LVL249>:
  2c:	84ae                	mv	s1,a1
  2e:	00050a13          	mv	s4,a0
  32:	e005                	bnez	s0,52 <.L177>
  34:	6605                	lui	a2,0x1
  36:	000005b7          	lui	a1,0x0

0000003a <.LVL250>:
  3a:	00000537          	lui	a0,0x0
  3e:	9ae60613          	addi	a2,a2,-1618 # 9ae <.LASF563+0x3>
  42:	00058593          	mv	a1,a1
  46:	00050513          	mv	a0,a0
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL250+0x10>

00000052 <.L177>:
  52:	0be44783          	lbu	a5,190(s0)
  56:	04978963          	beq	a5,s1,a8 <.L176>
  5a:	0c645703          	lhu	a4,198(s0)
  5e:	67c1                	lui	a5,0x10
  60:	0a940f23          	sb	s1,190(s0)
  64:	17fd                	addi	a5,a5,-1
  66:	04f71163          	bne	a4,a5,a8 <.L176>
  6a:	cc9d                	beqz	s1,a8 <.L176>
  6c:	4901                	li	s2,0
  6e:	4b31                	li	s6,12

00000070 <.LBB227>:
  70:	4b85                	li	s7,1

00000072 <.L179>:
  72:	0c045783          	lhu	a5,192(s0)
  76:	04f96463          	bltu	s2,a5,be <.L184>
  7a:	002c                	addi	a1,sp,8
  7c:	8522                	mv	a0,s0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L179+0xc>

00000086 <.LVL253>:
  86:	8522                	mv	a0,s0
  88:	002c                	addi	a1,sp,8
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL253+0x4>

00000092 <.LVL254>:
  92:	1b000513          	li	a0,432
  96:	02aa8533          	mul	a0,s5,a0
  9a:	9552                	add	a0,a0,s4
  9c:	11a54783          	lbu	a5,282(a0) # 11a <.L183+0xa>
  a0:	0017e793          	ori	a5,a5,1
  a4:	10f50d23          	sb	a5,282(a0)

000000a8 <.L176>:
  a8:	40f6                	lw	ra,92(sp)
  aa:	4466                	lw	s0,88(sp)

000000ac <.LVL256>:
  ac:	44d6                	lw	s1,84(sp)
  ae:	4946                	lw	s2,80(sp)
  b0:	49b6                	lw	s3,76(sp)
  b2:	4a26                	lw	s4,72(sp)
  b4:	4a96                	lw	s5,68(sp)
  b6:	4b06                	lw	s6,64(sp)
  b8:	5bf2                	lw	s7,60(sp)
  ba:	6125                	addi	sp,sp,96
  bc:	8082                	ret

000000be <.L184>:
  be:	036904b3          	mul	s1,s2,s6
  c2:	94a2                	add	s1,s1,s0
  c4:	00a4d983          	lhu	s3,10(s1)
  c8:	854e                	mv	a0,s3
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.L184+0xc>

000000d2 <.LVL260>:
  d2:	c911                	beqz	a0,e6 <.L180>
  d4:	4009e993          	ori	s3,s3,1024

000000d8 <.L186>:
  d8:	0c045683          	lhu	a3,192(s0)
  dc:	00a40713          	addi	a4,s0,10
  e0:	4781                	li	a5,0

000000e2 <.L181>:
  e2:	02d7e763          	bltu	a5,a3,110 <.L183>

000000e6 <.L180>:
  e6:	00291793          	slli	a5,s2,0x2
  ea:	1818                	addi	a4,sp,48

000000ec <.LBE232>:
  ec:	0905                	addi	s2,s2,1

000000ee <.LBB233>:
  ee:	00048723          	sb	zero,14(s1)
  f2:	017487a3          	sb	s7,15(s1)
  f6:	01349523          	sh	s3,10(s1)
  fa:	00049423          	sh	zero,8(s1)
  fe:	000486a3          	sb	zero,13(s1)
 102:	97ba                	add	a5,a5,a4

00000104 <.LBE233>:
 104:	0942                	slli	s2,s2,0x10

00000106 <.LBB234>:
 106:	fc07ac23          	sw	zero,-40(a5) # ffd8 <.LASF367+0xd308>

0000010a <.LBE234>:
 10a:	01095913          	srli	s2,s2,0x10

0000010e <.LVL266>:
 10e:	b795                	j	72 <.L179>

00000110 <.L183>:
 110:	0731                	addi	a4,a4,12
 112:	ff475603          	lhu	a2,-12(a4)
 116:	01360463          	beq	a2,s3,11e <.L182>
 11a:	0785                	addi	a5,a5,1
 11c:	b7d9                	j	e2 <.L181>

0000011e <.L182>:
 11e:	8522                	mv	a0,s0
 120:	00000097          	auipc	ra,0x0
 124:	000080e7          	jalr	ra # 120 <.L182+0x2>

00000128 <.LVL270>:
 128:	89aa                	mv	s3,a0
 12a:	b77d                	j	d8 <.L186>

Disassembly of section .text.rc_init_bcmc_rate:

00000000 <rc_init_bcmc_rate>:
   0:	460d                	li	a2,3
   2:	10c52703          	lw	a4,268(a0)
   6:	11855683          	lhu	a3,280(a0)
   a:	4781                	li	a5,0
   c:	00b66663          	bltu	a2,a1,18 <.L195>
  10:	4006f793          	andi	a5,a3,1024
  14:	07c2                	slli	a5,a5,0x10
  16:	87c1                	srai	a5,a5,0x10

00000018 <.L195>:
  18:	8ddd                	or	a1,a1,a5

0000001a <.LVL276>:
  1a:	200007b7          	lui	a5,0x20000

0000001e <.LVL277>:
  1e:	8ddd                	or	a1,a1,a5
  20:	cb4c                	sw	a1,20(a4)

00000022 <.LVL278>:
  22:	cf0c                	sw	a1,24(a4)

00000024 <.LVL279>:
  24:	cf4c                	sw	a1,28(a4)

00000026 <.LVL280>:
  26:	d30c                	sw	a1,32(a4)

00000028 <.LVL281>:
  28:	8082                	ret

Disassembly of section .text.rc_check_fixed_rate_config:

00000000 <rc_check_fixed_rate_config>:
   0:	0b154783          	lbu	a5,177(a0)

00000004 <.LBB239>:
   4:	00b5d713          	srli	a4,a1,0xb
   8:	00777693          	andi	a3,a4,7

0000000c <.LBE239>:
   c:	08d7e963          	bltu	a5,a3,9e <.L217>
  10:	1101                	addi	sp,sp,-32
  12:	cc22                	sw	s0,24(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	4611                	li	a2,4
  18:	842a                	mv	s0,a0
  1a:	04c79763          	bne	a5,a2,68 <.L199>
  1e:	06f69b63          	bne	a3,a5,94 <.L198>

00000022 <.L200>:
  22:	8b19                	andi	a4,a4,6

00000024 <.LVL285>:
  24:	cf39                	beqz	a4,82 <.L202>

00000026 <.L201>:
  26:	0095d793          	srli	a5,a1,0x9

0000002a <.LBE240>:
  2a:	8b85                	andi	a5,a5,1
  2c:	c781                	beqz	a5,34 <.L204>
  2e:	0bd44783          	lbu	a5,189(s0)
  32:	c3ad                	beqz	a5,94 <.L198>

00000034 <.L204>:
  34:	0bb44703          	lbu	a4,187(s0)

00000038 <.LBB245>:
  38:	4075d793          	srai	a5,a1,0x7

0000003c <.LBE245>:
  3c:	8b8d                	andi	a5,a5,3
  3e:	04f76b63          	bltu	a4,a5,94 <.L198>
  42:	852e                	mv	a0,a1
  44:	c62e                	sw	a1,12(sp)
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LBE245+0xa>

0000004e <.LVL288>:
  4e:	0bc44783          	lbu	a5,188(s0)
  52:	45b2                	lw	a1,12(sp)
  54:	04a7e063          	bltu	a5,a0,94 <.L198>

00000058 <.L203>:
  58:	8522                	mv	a0,s0
  5a:	4462                	lw	s0,24(sp)

0000005c <.LVL290>:
  5c:	40f2                	lw	ra,28(sp)
  5e:	6105                	addi	sp,sp,32
  60:	00000317          	auipc	t1,0x0
  64:	00030067          	jr	t1 # 60 <.LVL290+0x4>

00000068 <.L199>:
  68:	17f9                	addi	a5,a5,-2
  6a:	0ff7f793          	andi	a5,a5,255
  6e:	4685                	li	a3,1

00000070 <.LVL292>:
  70:	faf6e9e3          	bltu	a3,a5,22 <.L200>
  74:	8b19                	andi	a4,a4,6

00000076 <.LVL293>:
  76:	fb45                	bnez	a4,26 <.L201>
  78:	0b954703          	lbu	a4,185(a0)
  7c:	478d                	li	a5,3
  7e:	00e7eb63          	bltu	a5,a4,94 <.L198>

00000082 <.L202>:
  82:	40a5d793          	srai	a5,a1,0xa

00000086 <.LBE246>:
  86:	8b85                	andi	a5,a5,1
  88:	fbe1                	bnez	a5,58 <.L203>
  8a:	0be44703          	lbu	a4,190(s0)
  8e:	4785                	li	a5,1
  90:	fcf714e3          	bne	a4,a5,58 <.L203>

00000094 <.L198>:
  94:	40f2                	lw	ra,28(sp)
  96:	4462                	lw	s0,24(sp)

00000098 <.LVL296>:
  98:	4501                	li	a0,0
  9a:	6105                	addi	sp,sp,32
  9c:	8082                	ret

0000009e <.L217>:
  9e:	4501                	li	a0,0

000000a0 <.LVL298>:
  a0:	8082                	ret

Disassembly of section .text.rc_calc_tp:

00000000 <rc_calc_tp>:
   0:	47b1                	li	a5,12
   2:	02f585b3          	mul	a1,a1,a5

00000006 <.LVL300>:
   6:	1101                	addi	sp,sp,-32
   8:	ce06                	sw	ra,28(sp)

0000000a <.LVL301>:
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	6789                	lui	a5,0x2
  14:	99878793          	addi	a5,a5,-1640 # 1998 <.LASF269>
  18:	95aa                	add	a1,a1,a0
  1a:	0085d403          	lhu	s0,8(a1) # 8 <.LVL300+0x2>

0000001e <.LVL302>:
  1e:	0487fe63          	bgeu	a5,s0,7a <.L223>
  22:	00a5d983          	lhu	s3,10(a1)
  26:	892a                	mv	s2,a0
  28:	4481                	li	s1,0
  2a:	854e                	mv	a0,s3

0000002c <.LVL303>:
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL303>

00000034 <.LVL304>:
  34:	e909                	bnez	a0,46 <.L222>
  36:	0aa95503          	lhu	a0,170(s2) # aa <.L176+0x2>
  3a:	000354b7          	lui	s1,0x35
  3e:	39048493          	addi	s1,s1,912 # 35390 <.LASF367+0x326c0>
  42:	02a4d4b3          	divu	s1,s1,a0

00000046 <.L222>:
  46:	854e                	mv	a0,s3
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L222+0x2>

00000050 <.LVL306>:
  50:	3e800793          	li	a5,1000
  54:	9526                	add	a0,a0,s1

00000056 <.LVL307>:
  56:	02f40433          	mul	s0,s0,a5

0000005a <.LVL308>:
  5a:	02a45433          	divu	s0,s0,a0
  5e:	000f4537          	lui	a0,0xf4

00000062 <.LVL309>:
  62:	24050513          	addi	a0,a0,576 # f4240 <.LASF367+0xf1570>
  66:	02a40533          	mul	a0,s0,a0
  6a:	8141                	srli	a0,a0,0x10

0000006c <.L221>:
  6c:	40f2                	lw	ra,28(sp)
  6e:	4462                	lw	s0,24(sp)
  70:	44d2                	lw	s1,20(sp)
  72:	4942                	lw	s2,16(sp)
  74:	49b2                	lw	s3,12(sp)
  76:	6105                	addi	sp,sp,32
  78:	8082                	ret

0000007a <.L223>:
  7a:	4501                	li	a0,0

0000007c <.LVL313>:
  7c:	bfc5                	j	6c <.L221>

Disassembly of section .text.rc_update_stats:

00000000 <rc_update_stats>:
   0:	7171                	addi	sp,sp,-176
   2:	d522                	sw	s0,168(sp)
   4:	d326                	sw	s1,164(sp)
   6:	842a                	mv	s0,a0
   8:	84ae                	mv	s1,a1
   a:	02000613          	li	a2,32
   e:	07c50593          	addi	a1,a0,124

00000012 <.LVL315>:
  12:	1028                	addi	a0,sp,40

00000014 <.LVL316>:
  14:	d706                	sw	ra,172(sp)
  16:	d14a                	sw	s2,160(sp)
  18:	cf4e                	sw	s3,156(sp)
  1a:	cd52                	sw	s4,152(sp)
  1c:	cb56                	sw	s5,148(sp)
  1e:	c95a                	sw	s6,144(sp)
  20:	c75e                	sw	s7,140(sp)
  22:	c562                	sw	s8,136(sp)
  24:	c366                	sw	s9,132(sp)
  26:	c16a                	sw	s10,128(sp)
  28:	deee                	sw	s11,124(sp)
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL316+0x16>

00000032 <.LVL317>:
  32:	0a645703          	lhu	a4,166(s0)
  36:	c31d                	beqz	a4,5c <.L227>

00000038 <.LBB264>:
  38:	0a445783          	lhu	a5,164(s0)

0000003c <.LBB268>:
  3c:	0a842683          	lw	a3,168(s0)

00000040 <.LBE268>:
  40:	0a042223          	sw	zero,164(s0)
  44:	07c2                	slli	a5,a5,0x10
  46:	02e7c7b3          	div	a5,a5,a4

0000004a <.LBB269>:
  4a:	06000713          	li	a4,96
  4e:	02d70733          	mul	a4,a4,a3
  52:	0796                	slli	a5,a5,0x5
  54:	97ba                	add	a5,a5,a4
  56:	839d                	srli	a5,a5,0x7

00000058 <.LBE269>:
  58:	0af42423          	sw	a5,168(s0)

0000005c <.L227>:
  5c:	0c045603          	lhu	a2,192(s0)
  60:	00b4                	addi	a3,sp,72
  62:	0a0406a3          	sb	zero,173(s0)
  66:	00e40793          	addi	a5,s0,14
  6a:	4701                	li	a4,0
  6c:	89b6                	mv	s3,a3
  6e:	4585                	li	a1,1

00000070 <.L228>:
  70:	04e61663          	bne	a2,a4,bc <.L229>
  74:	0c645583          	lhu	a1,198(s0)
  78:	67c1                	lui	a5,0x10
  7a:	17fd                	addi	a5,a5,-1
  7c:	4901                	li	s2,0

0000007e <.LBB270>:
  7e:	4a31                	li	s4,12

00000080 <.LBE270>:
  80:	08f58363          	beq	a1,a5,106 <.L230>

00000084 <.LBB271>:
  84:	0af44683          	lbu	a3,175(s0)

00000088 <.LBB273>:
  88:	4781                	li	a5,0
  8a:	4531                	li	a0,12

0000008c <.LBE273>:
  8c:	0206f613          	andi	a2,a3,32
  90:	2e061463          	bnez	a2,378 <.L258>

00000094 <.LBB274>:
  94:	08044483          	lbu	s1,128(s0)
  98:	47b1                	li	a5,12
  9a:	02f484b3          	mul	s1,s1,a5

0000009e <.LVL321>:
  9e:	00448513          	addi	a0,s1,4
  a2:	9522                	add	a0,a0,s0
  a4:	94a2                	add	s1,s1,s0

000000a6 <.LVL322>:
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LVL322>

000000ae <.LVL323>:
  ae:	00049223          	sh	zero,4(s1)
  b2:	00049323          	sh	zero,6(s1)
  b6:	00042223          	sw	zero,4(s0)
  ba:	a0bd                	j	128 <.L296>

000000bc <.L229>:
  bc:	0705                	addi	a4,a4,1

000000be <.LVL325>:
  be:	0742                	slli	a4,a4,0x10
  c0:	0006a023          	sw	zero,0(a3)
  c4:	00078023          	sb	zero,0(a5) # 10000 <.LASF367+0xd330>
  c8:	00b780a3          	sb	a1,1(a5)
  cc:	8341                	srli	a4,a4,0x10

000000ce <.LVL326>:
  ce:	0691                	addi	a3,a3,4
  d0:	07b1                	addi	a5,a5,12
  d2:	bf79                	j	70 <.L228>

000000d4 <.L232>:
  d4:	03490533          	mul	a0,s2,s4
  d8:	0511                	addi	a0,a0,4
  da:	9522                	add	a0,a0,s0
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L232+0x8>

000000e4 <.LVL328>:
  e4:	0ff97593          	andi	a1,s2,255
  e8:	8522                	mv	a0,s0
  ea:	00000097          	auipc	ra,0x0
  ee:	000080e7          	jalr	ra # ea <.LVL328+0x6>

000000f2 <.LVL329>:
  f2:	00291793          	slli	a5,s2,0x2
  f6:	1898                	addi	a4,sp,112

000000f8 <.LBE278>:
  f8:	0905                	addi	s2,s2,1

000000fa <.LBB279>:
  fa:	97ba                	add	a5,a5,a4

000000fc <.LBE279>:
  fc:	0942                	slli	s2,s2,0x10

000000fe <.LBB280>:
  fe:	fca7ac23          	sw	a0,-40(a5)

00000102 <.LBE280>:
 102:	01095913          	srli	s2,s2,0x10

00000106 <.L230>:
 106:	0c045783          	lhu	a5,192(s0)
 10a:	fcf965e3          	bltu	s2,a5,d4 <.L232>
 10e:	85ce                	mv	a1,s3
 110:	8522                	mv	a0,s0
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L230+0xc>

0000011a <.LVL332>:
 11a:	85ce                	mv	a1,s3
 11c:	8522                	mv	a0,s0
 11e:	00000097          	auipc	ra,0x0
 122:	000080e7          	jalr	ra # 11e <.LVL332+0x4>

00000126 <.LVL333>:
 126:	c099                	beqz	s1,12c <.L233>

00000128 <.L296>:
 128:	4481                	li	s1,0
 12a:	a87d                	j	1e8 <.L234>

0000012c <.L233>:
 12c:	0c045683          	lhu	a3,192(s0)
 130:	47a5                	li	a5,9
 132:	02d7e063          	bltu	a5,a3,152 <.L235>
 136:	00440713          	addi	a4,s0,4
 13a:	4781                	li	a5,0

0000013c <.L236>:
 13c:	fef686e3          	beq	a3,a5,128 <.L296>
 140:	0785                	addi	a5,a5,1

00000142 <.LVL337>:
 142:	07c2                	slli	a5,a5,0x10
 144:	00071023          	sh	zero,0(a4)
 148:	00071123          	sh	zero,2(a4)
 14c:	83c1                	srli	a5,a5,0x10

0000014e <.LVL338>:
 14e:	0731                	addi	a4,a4,12
 150:	b7f5                	j	13c <.L236>

00000152 <.L235>:
 152:	08045703          	lhu	a4,128(s0)
 156:	46b1                	li	a3,12
 158:	08845783          	lhu	a5,136(s0)
 15c:	02d70733          	mul	a4,a4,a3
 160:	4631                	li	a2,12
 162:	55fd                	li	a1,-1
 164:	0868                	addi	a0,sp,28

00000166 <.LVL340>:
 166:	00000b37          	lui	s6,0x0
 16a:	4981                	li	s3,0

0000016c <.LVL341>:
 16c:	4b91                	li	s7,4
 16e:	000b0b13          	mv	s6,s6
 172:	4c05                	li	s8,1
 174:	02d787b3          	mul	a5,a5,a3
 178:	9722                	add	a4,a4,s0
 17a:	00a75903          	lhu	s2,10(a4)

0000017e <.LBB286>:
 17e:	40b95a93          	srai	s5,s2,0xb
 182:	006afa93          	andi	s5,s5,6

00000186 <.LBE286>:
 186:	20097c93          	andi	s9,s2,512
 18a:	dff97d13          	andi	s10,s2,-513
 18e:	20096d93          	ori	s11,s2,512
 192:	97a2                	add	a5,a5,s0
 194:	00a7da03          	lhu	s4,10(a5)

00000198 <.LVL343>:
 198:	00000097          	auipc	ra,0x0
 19c:	000080e7          	jalr	ra # 198 <.LVL343>

000001a0 <.L248>:
 1a0:	fff98793          	addi	a5,s3,-1
 1a4:	0ff7f793          	andi	a5,a5,255
 1a8:	00fbe663          	bltu	s7,a5,1b4 <.L239>
 1ac:	078a                	slli	a5,a5,0x2
 1ae:	97da                	add	a5,a5,s6
 1b0:	439c                	lw	a5,0(a5)
 1b2:	8782                	jr	a5

000001b4 <.L239>:
 1b4:	8522                	mv	a0,s0
 1b6:	00000097          	auipc	ra,0x0
 1ba:	000080e7          	jalr	ra # 1b6 <.L239+0x2>

000001be <.LVL346>:
 1be:	00a11e23          	sh	a0,28(sp)

000001c2 <.L246>:
 1c2:	0985                	addi	s3,s3,1
 1c4:	0ff9f993          	andi	s3,s3,255

000001c8 <.LVL348>:
 1c8:	4799                	li	a5,6
 1ca:	fcf99be3          	bne	s3,a5,1a0 <.L248>

000001ce <.LBE284>:
 1ce:	0c045883          	lhu	a7,192(s0)

000001d2 <.LBB291>:
 1d2:	65c1                	lui	a1,0x10

000001d4 <.LBE291>:
 1d4:	4785                	li	a5,1
 1d6:	4681                	li	a3,0
 1d8:	4331                	li	t1,12

000001da <.LBB296>:
 1da:	4e15                	li	t3,5
 1dc:	15fd                	addi	a1,a1,-1
 1de:	4ea9                	li	t4,10

000001e0 <.L249>:
 1e0:	1117e263          	bltu	a5,a7,2e4 <.L257>

000001e4 <.LBE282>:
 1e4:	00042223          	sw	zero,4(s0)

000001e8 <.L234>:
 1e8:	08040793          	addi	a5,s0,128
 1ec:	1038                	addi	a4,sp,40
 1ee:	0a040413          	addi	s0,s0,160

000001f2 <.L265>:
 1f2:	00475603          	lhu	a2,4(a4)
 1f6:	0007d683          	lhu	a3,0(a5)
 1fa:	1ed61563          	bne	a2,a3,3e4 <.L268>
 1fe:	07a1                	addi	a5,a5,8
 200:	0721                	addi	a4,a4,8
 202:	fe8798e3          	bne	a5,s0,1f2 <.L265>

00000206 <.L294>:
 206:	50ba                	lw	ra,172(sp)
 208:	542a                	lw	s0,168(sp)

0000020a <.LVL354>:
 20a:	8526                	mv	a0,s1
 20c:	590a                	lw	s2,160(sp)
 20e:	549a                	lw	s1,164(sp)

00000210 <.LVL355>:
 210:	49fa                	lw	s3,156(sp)
 212:	4a6a                	lw	s4,152(sp)
 214:	4ada                	lw	s5,148(sp)
 216:	4b4a                	lw	s6,144(sp)
 218:	4bba                	lw	s7,140(sp)
 21a:	4c2a                	lw	s8,136(sp)
 21c:	4c9a                	lw	s9,132(sp)
 21e:	4d0a                	lw	s10,128(sp)
 220:	5df6                	lw	s11,124(sp)
 222:	614d                	addi	sp,sp,176
 224:	8082                	ret

00000226 <.L245>:
 226:	f80a8ee3          	beqz	s5,1c2 <.L246>
 22a:	0bd44783          	lbu	a5,189(s0)
 22e:	f9879ae3          	bne	a5,s8,1c2 <.L246>
 232:	000c9563          	bnez	s9,23c <.L247>
 236:	01b11f23          	sh	s11,30(sp)
 23a:	b761                	j	1c2 <.L246>

0000023c <.L247>:
 23c:	01a11f23          	sh	s10,30(sp)
 240:	b749                	j	1c2 <.L246>

00000242 <.L244>:
 242:	85ca                	mv	a1,s2
 244:	8522                	mv	a0,s0
 246:	00000097          	auipc	ra,0x0
 24a:	000080e7          	jalr	ra # 246 <.L244+0x4>

0000024e <.LVL357>:
 24e:	f6a90ae3          	beq	s2,a0,1c2 <.L246>
 252:	85aa                	mv	a1,a0
 254:	c62a                	sw	a0,12(sp)
 256:	8522                	mv	a0,s0

00000258 <.LVL358>:
 258:	00000097          	auipc	ra,0x0
 25c:	000080e7          	jalr	ra # 258 <.LVL358>

00000260 <.LVL359>:
 260:	d12d                	beqz	a0,1c2 <.L246>
 262:	47b2                	lw	a5,12(sp)
 264:	02f11023          	sh	a5,32(sp)
 268:	bfa9                	j	1c2 <.L246>

0000026a <.L243>:
 26a:	85ca                	mv	a1,s2
 26c:	8522                	mv	a0,s0
 26e:	00000097          	auipc	ra,0x0
 272:	000080e7          	jalr	ra # 26e <.L243+0x4>

00000276 <.LVL360>:
 276:	f4a906e3          	beq	s2,a0,1c2 <.L246>
 27a:	85aa                	mv	a1,a0
 27c:	c62a                	sw	a0,12(sp)
 27e:	8522                	mv	a0,s0

00000280 <.LVL361>:
 280:	00000097          	auipc	ra,0x0
 284:	000080e7          	jalr	ra # 280 <.LVL361>

00000288 <.LVL362>:
 288:	dd0d                	beqz	a0,1c2 <.L246>
 28a:	47b2                	lw	a5,12(sp)
 28c:	02f11123          	sh	a5,34(sp)
 290:	bf0d                	j	1c2 <.L246>

00000292 <.L242>:
 292:	85d2                	mv	a1,s4
 294:	8522                	mv	a0,s0
 296:	00000097          	auipc	ra,0x0
 29a:	000080e7          	jalr	ra # 296 <.L242+0x4>

0000029e <.LVL363>:
 29e:	f2aa02e3          	beq	s4,a0,1c2 <.L246>
 2a2:	85aa                	mv	a1,a0
 2a4:	c62a                	sw	a0,12(sp)
 2a6:	8522                	mv	a0,s0

000002a8 <.LVL364>:
 2a8:	00000097          	auipc	ra,0x0
 2ac:	000080e7          	jalr	ra # 2a8 <.LVL364>

000002b0 <.LVL365>:
 2b0:	d909                	beqz	a0,1c2 <.L246>
 2b2:	47b2                	lw	a5,12(sp)
 2b4:	02f11223          	sh	a5,36(sp)
 2b8:	b729                	j	1c2 <.L246>

000002ba <.L240>:
 2ba:	85d2                	mv	a1,s4
 2bc:	8522                	mv	a0,s0
 2be:	00000097          	auipc	ra,0x0
 2c2:	000080e7          	jalr	ra # 2be <.L240+0x4>

000002c6 <.LVL366>:
 2c6:	eeaa0ee3          	beq	s4,a0,1c2 <.L246>
 2ca:	85aa                	mv	a1,a0
 2cc:	c62a                	sw	a0,12(sp)
 2ce:	8522                	mv	a0,s0

000002d0 <.LVL367>:
 2d0:	00000097          	auipc	ra,0x0
 2d4:	000080e7          	jalr	ra # 2d0 <.LVL367>

000002d8 <.LVL368>:
 2d8:	ee0505e3          	beqz	a0,1c2 <.L246>
 2dc:	47b2                	lw	a5,12(sp)
 2de:	02f11323          	sh	a5,38(sp)
 2e2:	b5c5                	j	1c2 <.L246>

000002e4 <.L257>:
 2e4:	02678733          	mul	a4,a5,t1
 2e8:	9722                	add	a4,a4,s0
 2ea:	00871603          	lh	a2,8(a4)
 2ee:	00065663          	bgez	a2,2fa <.L250>
 2f2:	00c74603          	lbu	a2,12(a4)
 2f6:	06cef363          	bgeu	t4,a2,35c <.L251>

000002fa <.L250>:
 2fa:	08045603          	lhu	a2,128(s0)
 2fe:	04f60f63          	beq	a2,a5,35c <.L251>
 302:	08845603          	lhu	a2,136(s0)
 306:	04f60b63          	beq	a2,a5,35c <.L251>
 30a:	09045603          	lhu	a2,144(s0)
 30e:	04f60763          	beq	a2,a5,35c <.L251>
 312:	04de6563          	bltu	t3,a3,35c <.L251>
 316:	00169613          	slli	a2,a3,0x1
 31a:	1888                	addi	a0,sp,112
 31c:	962a                	add	a2,a2,a0
 31e:	fac65603          	lhu	a2,-84(a2)

00000322 <.LVL370>:
 322:	02b60063          	beq	a2,a1,342 <.L252>
 326:	00a40813          	addi	a6,s0,10

0000032a <.LBB292>:
 32a:	4501                	li	a0,0

0000032c <.L253>:
 32c:	03156163          	bltu	a0,a7,34e <.L254>

00000330 <.LBE292>:
 330:	0785                	addi	a5,a5,1

00000332 <.LVL373>:
 332:	07c2                	slli	a5,a5,0x10
 334:	00c71523          	sh	a2,10(a4)
 338:	00071423          	sh	zero,8(a4)
 33c:	000706a3          	sb	zero,13(a4)
 340:	83c1                	srli	a5,a5,0x10

00000342 <.L252>:
 342:	0685                	addi	a3,a3,1

00000344 <.L256>:
 344:	00071223          	sh	zero,4(a4)
 348:	00071323          	sh	zero,6(a4)
 34c:	bd51                	j	1e0 <.L249>

0000034e <.L254>:
 34e:	0831                	addi	a6,a6,12
 350:	ff485f03          	lhu	t5,-12(a6)
 354:	fecf07e3          	beq	t5,a2,342 <.L252>
 358:	0505                	addi	a0,a0,1
 35a:	bfc9                	j	32c <.L253>

0000035c <.L251>:
 35c:	0785                	addi	a5,a5,1

0000035e <.LVL379>:
 35e:	07c2                	slli	a5,a5,0x10
 360:	83c1                	srli	a5,a5,0x10

00000362 <.LVL380>:
 362:	b7cd                	j	344 <.L256>

00000364 <.L261>:
 364:	02a78633          	mul	a2,a5,a0
 368:	9622                	add	a2,a2,s0
 36a:	00a65603          	lhu	a2,10(a2)
 36e:	02b60763          	beq	a2,a1,39c <.L260>
 372:	0785                	addi	a5,a5,1

00000374 <.LVL382>:
 374:	0ff7f793          	andi	a5,a5,255

00000378 <.L258>:
 378:	01079613          	slli	a2,a5,0x10
 37c:	8241                	srli	a2,a2,0x10
 37e:	fee663e3          	bltu	a2,a4,364 <.L261>
 382:	00c71d63          	bne	a4,a2,39c <.L260>
 386:	17fd                	addi	a5,a5,-1

00000388 <.LVL384>:
 388:	0ff7f793          	andi	a5,a5,255

0000038c <.LVL385>:
 38c:	4631                	li	a2,12
 38e:	02c78633          	mul	a2,a5,a2
 392:	9622                	add	a2,a2,s0
 394:	00b61523          	sh	a1,10(a2)

00000398 <.LVL386>:
 398:	00061423          	sh	zero,8(a2)

0000039c <.L260>:
 39c:	07c2                	slli	a5,a5,0x10

0000039e <.LVL387>:
 39e:	83c1                	srli	a5,a5,0x10
 3a0:	08f41023          	sh	a5,128(s0)
 3a4:	08f41423          	sh	a5,136(s0)
 3a8:	08f41823          	sh	a5,144(s0)
 3ac:	06042e23          	sw	zero,124(s0)

000003b0 <.LVL388>:
 3b0:	08042223          	sw	zero,132(s0)

000003b4 <.LVL389>:
 3b4:	08042623          	sw	zero,140(s0)

000003b8 <.LVL390>:
 3b8:	00440613          	addi	a2,s0,4
 3bc:	4781                	li	a5,0

000003be <.L262>:
 3be:	00f71a63          	bne	a4,a5,3d2 <.L263>
 3c2:	f9f6f693          	andi	a3,a3,-97
 3c6:	0406e693          	ori	a3,a3,64
 3ca:	0ad407a3          	sb	a3,175(s0)

000003ce <.LVL392>:
 3ce:	4485                	li	s1,1
 3d0:	bd21                	j	1e8 <.L234>

000003d2 <.L263>:
 3d2:	0785                	addi	a5,a5,1

000003d4 <.LVL394>:
 3d4:	07c2                	slli	a5,a5,0x10
 3d6:	00061023          	sh	zero,0(a2)
 3da:	00061123          	sh	zero,2(a2)
 3de:	83c1                	srli	a5,a5,0x10

000003e0 <.LVL395>:
 3e0:	0631                	addi	a2,a2,12
 3e2:	bff1                	j	3be <.L262>

000003e4 <.L268>:
 3e4:	4485                	li	s1,1
 3e6:	b505                	j	206 <.L294>

Disassembly of section .text.rc_init:

00000000 <rc_init>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	ca56                	sw	s5,20(sp)
   6:	d606                	sw	ra,44(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	c266                	sw	s9,4(sp)
  18:	c06a                	sw	s10,0(sp)
  1a:	01b54783          	lbu	a5,27(a0)
  1e:	4725                	li	a4,9
  20:	842a                	mv	s0,a0
  22:	00878a93          	addi	s5,a5,8
  26:	10c52a03          	lw	s4,268(a0)

0000002a <.LVL399>:
  2a:	0ffafa93          	andi	s5,s5,255

0000002e <.LVL400>:
  2e:	02f77163          	bgeu	a4,a5,50 <.L298>
  32:	6605                	lui	a2,0x1
  34:	000005b7          	lui	a1,0x0
  38:	00000537          	lui	a0,0x0

0000003c <.LVL401>:
  3c:	85f60613          	addi	a2,a2,-1953 # 85f <.LASF344+0x3>
  40:	00058593          	mv	a1,a1
  44:	00050513          	mv	a0,a0
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL401+0xc>

00000050 <.L298>:
  50:	01b44903          	lbu	s2,27(s0)
  54:	0c800b93          	li	s7,200
  58:	000004b7          	lui	s1,0x0
  5c:	03790bb3          	mul	s7,s2,s7
  60:	00048993          	mv	s3,s1
  64:	00048493          	mv	s1,s1
  68:	99de                	add	s3,s3,s7
  6a:	11342823          	sw	s3,272(s0)

0000006e <.LVL403>:
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL403>

00000076 <.LVL404>:
  76:	4581                	li	a1,0
  78:	00e51b13          	slli	s6,a0,0xe

0000007c <.LVL405>:
  7c:	0c800613          	li	a2,200
  80:	854e                	mv	a0,s3
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL405+0x6>

0000008a <.LVL406>:
  8a:	0ec42783          	lw	a5,236(s0)
  8e:	0b040513          	addi	a0,s0,176

00000092 <.LBB319>:
  92:	4581                	li	a1,0

00000094 <.LBE319>:
  94:	8b89                	andi	a5,a5,2
  96:	22078663          	beqz	a5,2c2 <.L299>

0000009a <.LBB325>:
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LBB325>

000000a2 <.LBB320>:
  a2:	4789                	li	a5,2
  a4:	0c340c93          	addi	s9,s0,195
  a8:	0af988a3          	sb	a5,177(s3)

000000ac <.LBE320>:
  ac:	0aa99b23          	sh	a0,182(s3)

000000b0 <.LBB323>:
  b0:	8566                	mv	a0,s9
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.LBB323+0x2>

000000ba <.LVL410>:
  ba:	8c2a                	mv	s8,a0
  bc:	00000537          	lui	a0,0x0
  c0:	00f50513          	addi	a0,a0,15 # f <rc_init+0xf>
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL410+0xa>

000000cc <.LBB321>:
  cc:	87e2                	mv	a5,s8
  ce:	01857363          	bgeu	a0,s8,d4 <.L300>
  d2:	87aa                	mv	a5,a0

000000d4 <.L300>:
  d4:	0c800713          	li	a4,200
  d8:	02e90733          	mul	a4,s2,a4
  dc:	9726                	add	a4,a4,s1
  de:	0af70e23          	sb	a5,188(a4)
  e2:	470d                	li	a4,3
  e4:	02f77163          	bgeu	a4,a5,106 <.L301>
  e8:	6605                	lui	a2,0x1
  ea:	000005b7          	lui	a1,0x0
  ee:	00000537          	lui	a0,0x0
  f2:	8a660613          	addi	a2,a2,-1882 # 8a6 <.LASF180+0x3>
  f6:	00058593          	mv	a1,a1
  fa:	00050513          	mv	a0,a0
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.L300+0x2a>

00000106 <.L301>:
 106:	0b2b8513          	addi	a0,s7,178
 10a:	0c800b93          	li	s7,200
 10e:	03790bb3          	mul	s7,s2,s7
 112:	4611                	li	a2,4
 114:	85e6                	mv	a1,s9
 116:	9526                	add	a0,a0,s1
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.L301+0x12>

00000120 <.LVL414>:
 120:	57fd                	li	a5,-1
 122:	9ba6                	add	s7,s7,s1
 124:	0b6bd503          	lhu	a0,182(s7)
 128:	0afb8923          	sb	a5,178(s7)
 12c:	479d                	li	a5,7
 12e:	0afb8c23          	sb	a5,184(s7)
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LVL414+0x12>

0000013a <.LVL415>:
 13a:	0aab8ca3          	sb	a0,185(s7)
 13e:	47b1                	li	a5,12
 140:	02a7f163          	bgeu	a5,a0,162 <.L302>
 144:	6605                	lui	a2,0x1
 146:	000005b7          	lui	a1,0x0
 14a:	00000537          	lui	a0,0x0
 14e:	8b860613          	addi	a2,a2,-1864 # 8b8 <.LASF830+0x8>
 152:	00058593          	mv	a1,a1
 156:	00050513          	mv	a0,a0
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.LVL415+0x20>

00000162 <.L302>:
 162:	0c800b93          	li	s7,200
 166:	03790bb3          	mul	s7,s2,s7
 16a:	9ba6                	add	s7,s7,s1
 16c:	0b6bd503          	lhu	a0,182(s7)
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.L302+0xe>

00000178 <.LVL417>:
 178:	0aab8d23          	sb	a0,186(s7)
 17c:	47b1                	li	a5,12
 17e:	02a7f163          	bgeu	a5,a0,1a0 <.L303>
 182:	6605                	lui	a2,0x1
 184:	000005b7          	lui	a1,0x0
 188:	00000537          	lui	a0,0x0
 18c:	8be60613          	addi	a2,a2,-1858 # 8be <.LASF744>
 190:	00058593          	mv	a1,a1
 194:	00050513          	mv	a0,a0
 198:	00000097          	auipc	ra,0x0
 19c:	000080e7          	jalr	ra # 198 <.LVL417+0x20>

000001a0 <.L303>:
 1a0:	0c800793          	li	a5,200
 1a4:	02f907b3          	mul	a5,s2,a5
 1a8:	11845703          	lhu	a4,280(s0)
 1ac:	8729                	srai	a4,a4,0xa
 1ae:	8b05                	andi	a4,a4,1
 1b0:	97a6                	add	a5,a5,s1
 1b2:	0ae78f23          	sb	a4,190(a5)
 1b6:	00000097          	auipc	ra,0x0
 1ba:	000080e7          	jalr	ra # 1b6 <.L303+0x16>

000001be <.LVL419>:
 1be:	0c045783          	lhu	a5,192(s0)
 1c2:	c511                	beqz	a0,1ce <.L304>
 1c4:	0017f713          	andi	a4,a5,1
 1c8:	c319                	beqz	a4,1ce <.L304>
 1ca:	040b6b13          	ori	s6,s6,64

000001ce <.L304>:
 1ce:	01479713          	slli	a4,a5,0x14
 1d2:	0a074d63          	bltz	a4,28c <.L332>
 1d6:	6705                	lui	a4,0x1

000001d8 <.L355>:
 1d8:	0c800793          	li	a5,200
 1dc:	02f907b3          	mul	a5,s2,a5
 1e0:	eff70713          	addi	a4,a4,-257 # eff <.LASF908+0x5>
 1e4:	97a6                	add	a5,a5,s1
 1e6:	0ce79123          	sh	a4,194(a5)

000001ea <.LBE323>:
 1ea:	0f144703          	lbu	a4,241(s0)
 1ee:	0ae78da3          	sb	a4,187(a5)
 1f2:	478d                	li	a5,3
 1f4:	02e7f163          	bgeu	a5,a4,216 <.L306>
 1f8:	6605                	lui	a2,0x1
 1fa:	000005b7          	lui	a1,0x0
 1fe:	00000537          	lui	a0,0x0
 202:	8d560613          	addi	a2,a2,-1835 # 8d5 <.LASF40+0x6>
 206:	00058593          	mv	a1,a1
 20a:	00050513          	mv	a0,a0
 20e:	00000097          	auipc	ra,0x0
 212:	000080e7          	jalr	ra # 20e <.LBE323+0x24>

00000216 <.L306>:
 216:	0f144703          	lbu	a4,241(s0)
 21a:	cb3d                	beqz	a4,290 <.L307>
 21c:	4785                	li	a5,1
 21e:	08f70763          	beq	a4,a5,2ac <.L308>

00000222 <.L309>:
 222:	0c800713          	li	a4,200
 226:	02e90733          	mul	a4,s2,a4
 22a:	4785                	li	a5,1
 22c:	9726                	add	a4,a4,s1
 22e:	0b174683          	lbu	a3,177(a4)
 232:	14d7fd63          	bgeu	a5,a3,38c <.L313>
 236:	460d                	li	a2,3
 238:	32d67963          	bgeu	a2,a3,56a <.L314>

0000023c <.LBE326>:
 23c:	0c071023          	sh	zero,192(a4)

00000240 <.L315>:
 240:	6c05                	lui	s8,0x1
 242:	00000bb7          	lui	s7,0x0
 246:	00000537          	lui	a0,0x0
 24a:	8ffc0613          	addi	a2,s8,-1793 # 8ff <.LASF319+0x2>
 24e:	000b8593          	mv	a1,s7
 252:	00050513          	mv	a0,a0
 256:	00000097          	auipc	ra,0x0
 25a:	000080e7          	jalr	ra # 256 <.L315+0x16>

0000025e <.LVL424>:
 25e:	0c800793          	li	a5,200
 262:	02f907b3          	mul	a5,s2,a5
 266:	97a6                	add	a5,a5,s1
 268:	0c07d703          	lhu	a4,192(a5)
 26c:	47a9                	li	a5,10
 26e:	16e7ff63          	bgeu	a5,a4,3ec <.L331>
 272:	00000537          	lui	a0,0x0
 276:	900c0613          	addi	a2,s8,-1792
 27a:	000b8593          	mv	a1,s7
 27e:	00050513          	mv	a0,a0
 282:	00000097          	auipc	ra,0x0
 286:	000080e7          	jalr	ra # 282 <.LVL424+0x24>

0000028a <.LVL425>:
 28a:	a28d                	j	3ec <.L331>

0000028c <.L332>:
 28c:	6709                	lui	a4,0x2
 28e:	b7a9                	j	1d8 <.L355>

00000290 <.L307>:
 290:	0c045783          	lhu	a5,192(s0)
 294:	0207f793          	andi	a5,a5,32
 298:	d7c9                	beqz	a5,222 <.L309>
 29a:	0c800793          	li	a5,200
 29e:	02f907b3          	mul	a5,s2,a5
 2a2:	4705                	li	a4,1
 2a4:	97a6                	add	a5,a5,s1

000002a6 <.L356>:
 2a6:	0ae78ea3          	sb	a4,189(a5)
 2aa:	bfa5                	j	222 <.L309>

000002ac <.L308>:
 2ac:	0c045783          	lhu	a5,192(s0)
 2b0:	0407f793          	andi	a5,a5,64
 2b4:	d7bd                	beqz	a5,222 <.L309>
 2b6:	0c800793          	li	a5,200
 2ba:	02f907b3          	mul	a5,s2,a5
 2be:	97a6                	add	a5,a5,s1
 2c0:	b7dd                	j	2a6 <.L356>

000002c2 <.L299>:
 2c2:	00000097          	auipc	ra,0x0
 2c6:	000080e7          	jalr	ra # 2c2 <.L299>

000002ca <.LVL428>:
 2ca:	0aa99b23          	sh	a0,182(s3)
 2ce:	00000097          	auipc	ra,0x0
 2d2:	000080e7          	jalr	ra # 2ce <.LVL428+0x4>

000002d6 <.LVL429>:
 2d6:	0aa98ca3          	sb	a0,185(s3)
 2da:	47ad                	li	a5,11
 2dc:	02a7f163          	bgeu	a5,a0,2fe <.L310>
 2e0:	6605                	lui	a2,0x1
 2e2:	000005b7          	lui	a1,0x0
 2e6:	00000537          	lui	a0,0x0
 2ea:	8f460613          	addi	a2,a2,-1804 # 8f4 <.LLST169>
 2ee:	00058593          	mv	a1,a1
 2f2:	00050513          	mv	a0,a0
 2f6:	00000097          	auipc	ra,0x0
 2fa:	000080e7          	jalr	ra # 2f6 <.LVL429+0x20>

000002fe <.L310>:
 2fe:	0c800b93          	li	s7,200
 302:	03790bb3          	mul	s7,s2,s7
 306:	9ba6                	add	s7,s7,s1
 308:	0b6bd503          	lhu	a0,182(s7) # b6 <.LBB323+0x6>
 30c:	00000097          	auipc	ra,0x0
 310:	000080e7          	jalr	ra # 30c <.L310+0xe>

00000314 <.LVL431>:
 314:	0aab8d23          	sb	a0,186(s7)
 318:	47ad                	li	a5,11
 31a:	02a7f163          	bgeu	a5,a0,33c <.L311>
 31e:	6605                	lui	a2,0x1
 320:	000005b7          	lui	a1,0x0
 324:	00000537          	lui	a0,0x0
 328:	8f660613          	addi	a2,a2,-1802 # 8f6 <.LASF919+0x1>
 32c:	00058593          	mv	a1,a1
 330:	00050513          	mv	a0,a0
 334:	00000097          	auipc	ra,0x0
 338:	000080e7          	jalr	ra # 334 <.LVL431+0x20>

0000033c <.L311>:
 33c:	0c800793          	li	a5,200
 340:	02f907b3          	mul	a5,s2,a5
 344:	577d                	li	a4,-1
 346:	97a6                	add	a5,a5,s1
 348:	0ae78c23          	sb	a4,184(a5)
 34c:	0f144703          	lbu	a4,241(s0)
 350:	0ae78da3          	sb	a4,187(a5)
 354:	c305                	beqz	a4,374 <.L312>
 356:	6605                	lui	a2,0x1
 358:	000005b7          	lui	a1,0x0
 35c:	00000537          	lui	a0,0x0
 360:	8f960613          	addi	a2,a2,-1799 # 8f9 <.LASF919+0x4>
 364:	00058593          	mv	a1,a1
 368:	00050513          	mv	a0,a0
 36c:	00000097          	auipc	ra,0x0
 370:	000080e7          	jalr	ra # 36c <.L311+0x30>

00000374 <.L312>:
 374:	0c800793          	li	a5,200
 378:	02f907b3          	mul	a5,s2,a5
 37c:	11845703          	lhu	a4,280(s0)
 380:	8729                	srai	a4,a4,0xa
 382:	8b05                	andi	a4,a4,1
 384:	97a6                	add	a5,a5,s1
 386:	0ae78f23          	sb	a4,190(a5)
 38a:	bd61                	j	222 <.L309>

0000038c <.L313>:
 38c:	0b675683          	lhu	a3,182(a4) # 20b6 <.LASF794+0x3>

00000390 <.LVL435>:
 390:	0be74703          	lbu	a4,190(a4)
 394:	45b1                	li	a1,12
 396:	40e78733          	sub	a4,a5,a4

0000039a <.LVL436>:
 39a:	4026d793          	srai	a5,a3,0x2
 39e:	0017f613          	andi	a2,a5,1
 3a2:	4016d793          	srai	a5,a3,0x1

000003a6 <.LVL437>:
 3a6:	8b85                	andi	a5,a5,1

000003a8 <.LVL438>:
 3a8:	97b2                	add	a5,a5,a2
 3aa:	00e797b3          	sll	a5,a5,a4
 3ae:	0016f613          	andi	a2,a3,1
 3b2:	97b2                	add	a5,a5,a2

000003b4 <.LVL439>:
 3b4:	4036d613          	srai	a2,a3,0x3
 3b8:	8a05                	andi	a2,a2,1
 3ba:	00e61733          	sll	a4,a2,a4
 3be:	97ba                	add	a5,a5,a4

000003c0 <.LVL440>:
 3c0:	07c2                	slli	a5,a5,0x10
 3c2:	83c1                	srli	a5,a5,0x10

000003c4 <.LVL441>:
 3c4:	4711                	li	a4,4

000003c6 <.L316>:
 3c6:	40e6d633          	sra	a2,a3,a4
 3ca:	8a05                	andi	a2,a2,1
 3cc:	97b2                	add	a5,a5,a2

000003ce <.LVL443>:
 3ce:	07c2                	slli	a5,a5,0x10
 3d0:	0705                	addi	a4,a4,1

000003d2 <.LVL444>:
 3d2:	83c1                	srli	a5,a5,0x10

000003d4 <.LVL445>:
 3d4:	feb719e3          	bne	a4,a1,3c6 <.L316>

000003d8 <.L317>:
 3d8:	4729                	li	a4,10
 3da:	1ef77b63          	bgeu	a4,a5,5d0 <.L319>

000003de <.LBE334>:
 3de:	0c800793          	li	a5,200
 3e2:	02f907b3          	mul	a5,s2,a5
 3e6:	97a6                	add	a5,a5,s1
 3e8:	0ce79023          	sh	a4,192(a5)

000003ec <.L331>:
 3ec:	01b44703          	lbu	a4,27(s0)
 3f0:	1b000693          	li	a3,432
 3f4:	000007b7          	lui	a5,0x0
 3f8:	02d70733          	mul	a4,a4,a3
 3fc:	00078793          	mv	a5,a5
 400:	97ba                	add	a5,a5,a4
 402:	1107ab83          	lw	s7,272(a5) # 110 <.L301+0xa>

00000406 <.LVL449>:
 406:	020b9063          	bnez	s7,426 <.L321>
 40a:	000005b7          	lui	a1,0x0
 40e:	00000537          	lui	a0,0x0
 412:	6e400613          	li	a2,1764
 416:	00058593          	mv	a1,a1
 41a:	00050513          	mv	a0,a0
 41e:	00000097          	auipc	ra,0x0
 422:	000080e7          	jalr	ra # 41e <.LVL449+0x18>

00000426 <.L321>:
 426:	0c0bd703          	lhu	a4,192(s7)
 42a:	00ab8c93          	addi	s9,s7,10
 42e:	87e6                	mv	a5,s9
 430:	4c01                	li	s8,0
 432:	56fd                	li	a3,-1

00000434 <.L322>:
 434:	1aec1863          	bne	s8,a4,5e4 <.L323>
 438:	855e                	mv	a0,s7
 43a:	00000097          	auipc	ra,0x0
 43e:	000080e7          	jalr	ra # 43a <.L322+0x6>

00000442 <.LVL452>:
 442:	00ab9523          	sh	a0,10(s7)
 446:	855e                	mv	a0,s7
 448:	00000097          	auipc	ra,0x0
 44c:	000080e7          	jalr	ra # 448 <.LVL452+0x6>

00000450 <.LVL453>:
 450:	1c7d                	addi	s8,s8,-1

00000452 <.LVL454>:
 452:	47b1                	li	a5,12
 454:	02fc0c33          	mul	s8,s8,a5

00000458 <.LBB337>:
 458:	4d31                	li	s10,12

0000045a <.LBE337>:
 45a:	9c5e                	add	s8,s8,s7
 45c:	00ac1523          	sh	a0,10(s8)

00000460 <.LVL455>:
 460:	4c05                	li	s8,1

00000462 <.L326>:
 462:	0c0bd783          	lhu	a5,192(s7)
 466:	fff78713          	addi	a4,a5,-1
 46a:	18ec4563          	blt	s8,a4,5f4 <.L329>

0000046e <.LVL457>:
 46e:	08eb9023          	sh	a4,128(s7)
 472:	ffe78713          	addi	a4,a5,-2
 476:	17f5                	addi	a5,a5,-3
 478:	08fb9823          	sh	a5,144(s7)
 47c:	67c1                	lui	a5,0x10
 47e:	0afba423          	sw	a5,168(s7)
 482:	57fd                	li	a5,-1
 484:	08eb9423          	sh	a4,136(s7)
 488:	0cfb9323          	sh	a5,198(s7)
 48c:	4585                	li	a1,1
 48e:	060bae23          	sw	zero,124(s7)

00000492 <.LVL458>:
 492:	080ba223          	sw	zero,132(s7)

00000496 <.LVL459>:
 496:	080ba623          	sw	zero,140(s7)

0000049a <.LVL460>:
 49a:	080b9c23          	sh	zero,152(s7)
 49e:	080baa23          	sw	zero,148(s7)
 4a2:	0a0b87a3          	sb	zero,175(s7)
 4a6:	855e                	mv	a0,s7
 4a8:	00000097          	auipc	ra,0x0
 4ac:	000080e7          	jalr	ra # 4a8 <.LVL460+0xe>

000004b0 <.LVL461>:
 4b0:	4795                	li	a5,5
 4b2:	0afb8623          	sb	a5,172(s7)

000004b6 <.LBB344>:
 4b6:	0c800793          	li	a5,200
 4ba:	02f90933          	mul	s2,s2,a5
 4be:	014a0713          	addi	a4,s4,20
 4c2:	024a0693          	addi	a3,s4,36
 4c6:	45b1                	li	a1,12
 4c8:	80000637          	lui	a2,0x80000

000004cc <.L330>:
 4cc:	0809c783          	lbu	a5,128(s3)
 4d0:	0711                	addi	a4,a4,4
 4d2:	09a1                	addi	s3,s3,8

000004d4 <.LVL464>:
 4d4:	02b787b3          	mul	a5,a5,a1
 4d8:	97ca                	add	a5,a5,s2
 4da:	97a6                	add	a5,a5,s1
 4dc:	00a7d783          	lhu	a5,10(a5) # 1000a <.LASF367+0xd33a>
 4e0:	8fd1                	or	a5,a5,a2
 4e2:	fef72e23          	sw	a5,-4(a4)

000004e6 <.LBE344>:
 4e6:	fed713e3          	bne	a4,a3,4cc <.L330>

000004ea <.LBB345>:
 4ea:	44b007b7          	lui	a5,0x44b00
 4ee:	1207a783          	lw	a5,288(a5) # 44b00120 <.LASF367+0x44afd450>

000004f2 <.LBE345>:
 4f2:	9926                	add	s2,s2,s1
 4f4:	0aaa                	slli	s5,s5,0xa

000004f6 <.LVL466>:
 4f6:	00f92023          	sw	a5,0(s2)
 4fa:	badcb7b7          	lui	a5,0xbadcb
 4fe:	b1e78793          	addi	a5,a5,-1250 # badcab1e <.LASF367+0xbadc7e4e>
 502:	00fa2023          	sw	a5,0(s4)
 506:	77c1                	lui	a5,0xffff0
 508:	70478793          	addi	a5,a5,1796 # ffff0704 <.LASF367+0xfffeda34>
 50c:	015a2623          	sw	s5,12(s4)
 510:	00fa2823          	sw	a5,16(s4)
 514:	016a2223          	sw	s6,4(s4)
 518:	00000097          	auipc	ra,0x0
 51c:	000080e7          	jalr	ra # 518 <.LVL466+0x22>

00000520 <.LVL467>:
 520:	0505                	addi	a0,a0,1
 522:	4785                	li	a5,1
 524:	00a797b3          	sll	a5,a5,a0
 528:	17fd                	addi	a5,a5,-1
 52a:	00fa2423          	sw	a5,8(s4)
 52e:	10c42703          	lw	a4,268(s0)
 532:	6789                	lui	a5,0x2
 534:	20078793          	addi	a5,a5,512 # 2200 <.LLST14+0x3>
 538:	db5c                	sw	a5,52(a4)
 53a:	10c42783          	lw	a5,268(s0)
 53e:	4818                	lw	a4,16(s0)
 540:	df98                	sw	a4,56(a5)
 542:	11a44783          	lbu	a5,282(s0)
 546:	50b2                	lw	ra,44(sp)
 548:	5492                	lw	s1,36(sp)
 54a:	0117e793          	ori	a5,a5,17
 54e:	10f40d23          	sb	a5,282(s0)
 552:	5422                	lw	s0,40(sp)

00000554 <.LVL468>:
 554:	5902                	lw	s2,32(sp)
 556:	49f2                	lw	s3,28(sp)
 558:	4a62                	lw	s4,24(sp)

0000055a <.LVL469>:
 55a:	4ad2                	lw	s5,20(sp)
 55c:	4b42                	lw	s6,16(sp)

0000055e <.LVL470>:
 55e:	4bb2                	lw	s7,12(sp)

00000560 <.LVL471>:
 560:	4c22                	lw	s8,8(sp)
 562:	4c92                	lw	s9,4(sp)

00000564 <.LVL472>:
 564:	4d02                	lw	s10,0(sp)
 566:	6145                	addi	sp,sp,48
 568:	8082                	ret

0000056a <.L314>:
 56a:	0bd74683          	lbu	a3,189(a4)
 56e:	0b274583          	lbu	a1,178(a4)
 572:	4621                	li	a2,8
 574:	00d796b3          	sll	a3,a5,a3

00000578 <.LBE329>:
 578:	4781                	li	a5,0

0000057a <.L318>:
 57a:	0015f713          	andi	a4,a1,1
 57e:	02e68733          	mul	a4,a3,a4
 582:	167d                	addi	a2,a2,-1

00000584 <.LVL476>:
 584:	8185                	srli	a1,a1,0x1

00000586 <.LVL477>:
 586:	97ba                	add	a5,a5,a4

00000588 <.LVL478>:
 588:	07c2                	slli	a5,a5,0x10
 58a:	83c1                	srli	a5,a5,0x10

0000058c <.LVL479>:
 58c:	f67d                	bnez	a2,57a <.L318>
 58e:	0c800713          	li	a4,200
 592:	02e90733          	mul	a4,s2,a4
 596:	4605                	li	a2,1
 598:	9726                	add	a4,a4,s1
 59a:	0b675683          	lhu	a3,182(a4)

0000059e <.LVL480>:
 59e:	0be74703          	lbu	a4,190(a4)
 5a2:	8e19                	sub	a2,a2,a4

000005a4 <.LVL481>:
 5a4:	4026d713          	srai	a4,a3,0x2
 5a8:	00177593          	andi	a1,a4,1

000005ac <.LVL482>:
 5ac:	4016d713          	srai	a4,a3,0x1

000005b0 <.LVL483>:
 5b0:	8b05                	andi	a4,a4,1

000005b2 <.LVL484>:
 5b2:	972e                	add	a4,a4,a1
 5b4:	0016f593          	andi	a1,a3,1
 5b8:	868d                	srai	a3,a3,0x3

000005ba <.LVL485>:
 5ba:	00c71733          	sll	a4,a4,a2
 5be:	8a85                	andi	a3,a3,1
 5c0:	972e                	add	a4,a4,a1
 5c2:	00c696b3          	sll	a3,a3,a2
 5c6:	9736                	add	a4,a4,a3
 5c8:	97ba                	add	a5,a5,a4

000005ca <.LVL486>:
 5ca:	07c2                	slli	a5,a5,0x10
 5cc:	83c1                	srli	a5,a5,0x10

000005ce <.LVL487>:
 5ce:	b529                	j	3d8 <.L317>

000005d0 <.L319>:
 5d0:	0c800713          	li	a4,200
 5d4:	02e90733          	mul	a4,s2,a4
 5d8:	9726                	add	a4,a4,s1
 5da:	0cf71023          	sh	a5,192(a4)
 5de:	e00797e3          	bnez	a5,3ec <.L331>
 5e2:	b9b9                	j	240 <.L315>

000005e4 <.L323>:
 5e4:	0c05                	addi	s8,s8,1

000005e6 <.LVL490>:
 5e6:	0c42                	slli	s8,s8,0x10
 5e8:	00d79023          	sh	a3,0(a5)
 5ec:	010c5c13          	srli	s8,s8,0x10

000005f0 <.LVL491>:
 5f0:	07b1                	addi	a5,a5,12
 5f2:	b589                	j	434 <.L322>

000005f4 <.L329>:
 5f4:	855e                	mv	a0,s7
 5f6:	00000097          	auipc	ra,0x0
 5fa:	000080e7          	jalr	ra # 5f6 <.L329+0x2>

000005fe <.LBB338>:
 5fe:	0c0bd683          	lhu	a3,192(s7)
 602:	8766                	mv	a4,s9
 604:	4781                	li	a5,0

00000606 <.L325>:
 606:	00d7ec63          	bltu	a5,a3,61e <.L327>

0000060a <.LBE338>:
 60a:	03ac07b3          	mul	a5,s8,s10
 60e:	0c05                	addi	s8,s8,1

00000610 <.LVL495>:
 610:	0c42                	slli	s8,s8,0x10
 612:	010c5c13          	srli	s8,s8,0x10
 616:	97de                	add	a5,a5,s7
 618:	00a79523          	sh	a0,10(a5)

0000061c <.LVL496>:
 61c:	b599                	j	462 <.L326>

0000061e <.L327>:
 61e:	0731                	addi	a4,a4,12
 620:	ff475603          	lhu	a2,-12(a4)
 624:	e2a60fe3          	beq	a2,a0,462 <.L326>
 628:	0785                	addi	a5,a5,1
 62a:	bff1                	j	606 <.L325>

Disassembly of section .text.rc_check:

00000000 <rc_check>:
   0:	47a5                	li	a5,9
   2:	2ea7ed63          	bltu	a5,a0,2fc <.L387>
   6:	1b000713          	li	a4,432
   a:	02e50733          	mul	a4,a0,a4
   e:	715d                	addi	sp,sp,-80
  10:	de4e                	sw	s3,60(sp)
  12:	000009b7          	lui	s3,0x0
  16:	00098793          	mv	a5,s3
  1a:	dc52                	sw	s4,56(sp)
  1c:	c686                	sw	ra,76(sp)
  1e:	c4a2                	sw	s0,72(sp)
  20:	c2a6                	sw	s1,68(sp)
  22:	c0ca                	sw	s2,64(sp)
  24:	da56                	sw	s5,52(sp)
  26:	d85a                	sw	s6,48(sp)
  28:	d65e                	sw	s7,44(sp)
  2a:	d462                	sw	s8,40(sp)
  2c:	d266                	sw	s9,36(sp)
  2e:	d06a                	sw	s10,32(sp)
  30:	ce6e                	sw	s11,28(sp)
  32:	97ba                	add	a5,a5,a4
  34:	1107a403          	lw	s0,272(a5)
  38:	8a2a                	mv	s4,a0

0000003a <.LVL500>:
  3a:	00098993          	mv	s3,s3
  3e:	e005                	bnez	s0,5e <.L360>
  40:	6605                	lui	a2,0x1
  42:	000005b7          	lui	a1,0x0

00000046 <.LVL501>:
  46:	00000537          	lui	a0,0x0

0000004a <.LVL502>:
  4a:	82660613          	addi	a2,a2,-2010 # 826 <.LASF401+0x3>
  4e:	00058593          	mv	a1,a1
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL502+0xc>

0000005e <.L360>:
  5e:	44b004b7          	lui	s1,0x44b00
  62:	1204a703          	lw	a4,288(s1) # 44b00120 <.LASF367+0x44afd450>

00000066 <.LBB373>:
  66:	67e1                	lui	a5,0x18
  68:	6a078793          	addi	a5,a5,1696 # 186a0 <.LASF367+0x159d0>
  6c:	8f99                	sub	a5,a5,a4
  6e:	4018                	lw	a4,0(s0)

00000070 <.LBE369>:
  70:	4b01                	li	s6,0

00000072 <.LBB376>:
  72:	97ba                	add	a5,a5,a4

00000074 <.LBE376>:
  74:	0207d563          	bgez	a5,9e <.L361>
  78:	4581                	li	a1,0
  7a:	8522                	mv	a0,s0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LBE376+0x8>

00000084 <.LVL505>:
  84:	0af44783          	lbu	a5,175(s0)
  88:	0a040723          	sb	zero,174(s0)
  8c:	0a040823          	sb	zero,176(s0)
  90:	9bbd                	andi	a5,a5,-17
  92:	0af407a3          	sb	a5,175(s0)

00000096 <.LBB378>:
  96:	1204a783          	lw	a5,288(s1)

0000009a <.LBE378>:
  9a:	8b2a                	mv	s6,a0

0000009c <.LBB383>:
  9c:	c01c                	sw	a5,0(s0)

0000009e <.L361>:
  9e:	0ae44783          	lbu	a5,174(s0)

000000a2 <.LVL508>:
  a2:	4705                	li	a4,1
  a4:	20e79d63          	bne	a5,a4,2be <.L362>

000000a8 <.LBB386>:
  a8:	0af44703          	lbu	a4,175(s0)
  ac:	04077713          	andi	a4,a4,64
  b0:	1a071363          	bnez	a4,256 <.L372>
  b4:	0b144703          	lbu	a4,177(s0)
  b8:	08045a83          	lhu	s5,128(s0)
  bc:	10e7e663          	bltu	a5,a4,1c8 <.L364>
  c0:	47b1                	li	a5,12

000000c2 <.LVL510>:
  c2:	02fa87b3          	mul	a5,s5,a5
  c6:	76f9                	lui	a3,0xffffe
  c8:	66768693          	addi	a3,a3,1639 # ffffe667 <.LASF367+0xffffb997>
  cc:	97a2                	add	a5,a5,s0
  ce:	0087d783          	lhu	a5,8(a5)
  d2:	97b6                	add	a5,a5,a3
  d4:	07c2                	slli	a5,a5,0x10
  d6:	66b9                	lui	a3,0xe
  d8:	83c1                	srli	a5,a5,0x10
  da:	99a68693          	addi	a3,a3,-1638 # d99a <.LASF367+0xacca>
  de:	0ef6f363          	bgeu	a3,a5,1c4 <.L365>
  e2:	4795                	li	a5,5

000000e4 <.L390>:
  e4:	0af40623          	sb	a5,172(s0)

000000e8 <.LBB388>:
  e8:	000007b7          	lui	a5,0x0
  ec:	00078793          	mv	a5,a5
  f0:	4384                	lw	s1,0(a5)
  f2:	41c656b7          	lui	a3,0x41c65
  f6:	e6d68693          	addi	a3,a3,-403 # 41c64e6d <.LASF367+0x41c6219d>
  fa:	02d484b3          	mul	s1,s1,a3
  fe:	668d                	lui	a3,0x3
 100:	03968693          	addi	a3,a3,57 # 3039 <.LASF367+0x369>
 104:	c63a                	sw	a4,12(sp)

00000106 <.LBB393>:
 106:	94b6                	add	s1,s1,a3
 108:	c384                	sw	s1,0(a5)

0000010a <.LBE393>:
 10a:	0c045783          	lhu	a5,192(s0)
 10e:	80c1                	srli	s1,s1,0x10
 110:	02f4f4b3          	remu	s1,s1,a5
 114:	15548163          	beq	s1,s5,256 <.L372>
 118:	08845b83          	lhu	s7,136(s0)
 11c:	13748d63          	beq	s1,s7,256 <.L372>
 120:	09045c83          	lhu	s9,144(s0)
 124:	13948963          	beq	s1,s9,256 <.L372>

00000128 <.LVL512>:
 128:	4c31                	li	s8,12
 12a:	03848933          	mul	s2,s1,s8
 12e:	67bd                	lui	a5,0xf
 130:	33378793          	addi	a5,a5,819 # f333 <.LASF367+0xc663>
 134:	9922                	add	s2,s2,s0
 136:	00895683          	lhu	a3,8(s2)
 13a:	10d7ee63          	bltu	a5,a3,256 <.L372>
 13e:	00a95d83          	lhu	s11,10(s2)
 142:	856e                	mv	a0,s11
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <.LVL512+0x1c>

0000014c <.LVL513>:
 14c:	038a87b3          	mul	a5,s5,s8
 150:	4732                	lw	a4,12(sp)
 152:	4685                	li	a3,1
 154:	8d2a                	mv	s10,a0

00000156 <.LVL514>:
 156:	97a2                	add	a5,a5,s0
 158:	00a7d783          	lhu	a5,10(a5)
 15c:	06e6eb63          	bltu	a3,a4,1d2 <.L367>

00000160 <.LVL515>:
 160:	853e                	mv	a0,a5

00000162 <.LVL516>:
 162:	00000097          	auipc	ra,0x0
 166:	000080e7          	jalr	ra # 162 <.LVL516>

0000016a <.LVL517>:
 16a:	13a57e63          	bgeu	a0,s10,2a6 <.L380>
 16e:	00c94783          	lbu	a5,12(s2)
 172:	4501                	li	a0,0

00000174 <.LVL518>:
 174:	0147b793          	sltiu	a5,a5,20
 178:	0017c793          	xori	a5,a5,1

0000017c <.L368>:
 17c:	08442703          	lw	a4,132(s0)
 180:	0b741023          	sh	s7,160(s0)
 184:	08e42e23          	sw	a4,156(s0)
 188:	0af44703          	lbu	a4,175(s0)
 18c:	12078063          	beqz	a5,2ac <.L373>

00000190 <.LVL520>:
 190:	5c7c                	lw	a5,124(s0)
 192:	9b75                	andi	a4,a4,-3
 194:	0ae407a3          	sb	a4,175(s0)
 198:	08f42223          	sw	a5,132(s0)
 19c:	09541423          	sh	s5,136(s0)
 1a0:	dc68                	sw	a0,124(s0)
 1a2:	08941023          	sh	s1,128(s0)

000001a6 <.L374>:
 1a6:	4789                	li	a5,2
 1a8:	0af40723          	sb	a5,174(s0)

000001ac <.L375>:
 1ac:	1b000513          	li	a0,432
 1b0:	02aa0a33          	mul	s4,s4,a0
 1b4:	99d2                	add	s3,s3,s4
 1b6:	11a9c783          	lbu	a5,282(s3) # 11a <.LBE393+0x10>
 1ba:	0017e793          	ori	a5,a5,1
 1be:	10f98d23          	sb	a5,282(s3)
 1c2:	a871                	j	25e <.L357>

000001c4 <.L365>:
 1c4:	47a9                	li	a5,10
 1c6:	bf39                	j	e4 <.L390>

000001c8 <.L364>:
 1c8:	0aa45783          	lhu	a5,170(s0)

000001cc <.LVL526>:
 1cc:	07a1                	addi	a5,a5,8
 1ce:	0786                	slli	a5,a5,0x1
 1d0:	bf11                	j	e4 <.L390>

000001d2 <.L367>:
 1d2:	038b8c33          	mul	s8,s7,s8
 1d6:	c63e                	sw	a5,12(sp)
 1d8:	9c22                	add	s8,s8,s0
 1da:	00ac5503          	lhu	a0,10(s8)

000001de <.LVL528>:
 1de:	02000c13          	li	s8,32
 1e2:	00000097          	auipc	ra,0x0
 1e6:	000080e7          	jalr	ra # 1e2 <.LVL528+0x4>

000001ea <.LVL529>:
 1ea:	00d94703          	lbu	a4,13(s2)
 1ee:	47b2                	lw	a5,12(sp)
 1f0:	e319                	bnez	a4,1f6 <.L369>
 1f2:	0aa45c03          	lhu	s8,170(s0)

000001f6 <.L369>:
 1f6:	08ad6363          	bltu	s10,a0,27c <.L370>
 1fa:	853e                	mv	a0,a5

000001fc <.LVL531>:
 1fc:	00000097          	auipc	ra,0x0
 200:	000080e7          	jalr	ra # 1fc <.LVL531>

00000204 <.LVL532>:
 204:	c62a                	sw	a0,12(sp)
 206:	856e                	mv	a0,s11
 208:	00000097          	auipc	ra,0x0
 20c:	000080e7          	jalr	ra # 208 <.LVL532+0x4>

00000210 <.LVL533>:
 210:	47b2                	lw	a5,12(sp)
 212:	17fd                	addi	a5,a5,-1
 214:	00a7ee63          	bltu	a5,a0,230 <.L371>
 218:	47b1                	li	a5,12
 21a:	02fc8cb3          	mul	s9,s9,a5
 21e:	9ca2                	add	s9,s9,s0
 220:	00acd503          	lhu	a0,10(s9) # a <rc_check+0xa>
 224:	00000097          	auipc	ra,0x0
 228:	000080e7          	jalr	ra # 224 <.LVL533+0x14>

0000022c <.LVL534>:
 22c:	04ad6863          	bltu	s10,a0,27c <.L370>

00000230 <.L371>:
 230:	00c94783          	lbu	a5,12(s2)
 234:	0387e163          	bltu	a5,s8,256 <.L372>
 238:	0ad44783          	lbu	a5,173(s0)
 23c:	4709                	li	a4,2
 23e:	0785                	addi	a5,a5,1
 240:	0ff7f793          	andi	a5,a5,255
 244:	0af406a3          	sb	a5,173(s0)
 248:	02f77a63          	bgeu	a4,a5,27c <.L370>
 24c:	473d                	li	a4,15
 24e:	00f77463          	bgeu	a4,a5,256 <.L372>
 252:	0ae406a3          	sb	a4,173(s0)

00000256 <.L372>:
 256:	0a040723          	sb	zero,174(s0)

0000025a <.L376>:
 25a:	f40b19e3          	bnez	s6,1ac <.L375>

0000025e <.L357>:
 25e:	40b6                	lw	ra,76(sp)
 260:	4426                	lw	s0,72(sp)

00000262 <.LVL538>:
 262:	4496                	lw	s1,68(sp)
 264:	4906                	lw	s2,64(sp)
 266:	59f2                	lw	s3,60(sp)
 268:	5a62                	lw	s4,56(sp)
 26a:	5ad2                	lw	s5,52(sp)
 26c:	5b42                	lw	s6,48(sp)
 26e:	5bb2                	lw	s7,44(sp)
 270:	5c22                	lw	s8,40(sp)
 272:	5c92                	lw	s9,36(sp)
 274:	5d02                	lw	s10,32(sp)
 276:	4df2                	lw	s11,28(sp)
 278:	6161                	addi	sp,sp,80
 27a:	8082                	ret

0000027c <.L370>:
 27c:	0ff4f593          	andi	a1,s1,255
 280:	8522                	mv	a0,s0
 282:	00000097          	auipc	ra,0x0
 286:	000080e7          	jalr	ra # 282 <.L370+0x6>

0000028a <.LVL540>:
 28a:	00e94703          	lbu	a4,14(s2)
 28e:	46a5                	li	a3,9
 290:	4785                	li	a5,1
 292:	8b3d                	andi	a4,a4,15
 294:	eee6e4e3          	bltu	a3,a4,17c <.L368>
 298:	00c94783          	lbu	a5,12(s2)
 29c:	0187b7b3          	sltu	a5,a5,s8
 2a0:	0017c793          	xori	a5,a5,1
 2a4:	bde1                	j	17c <.L368>

000002a6 <.L380>:
 2a6:	4501                	li	a0,0

000002a8 <.LVL542>:
 2a8:	4785                	li	a5,1
 2aa:	bdc9                	j	17c <.L368>

000002ac <.L373>:
 2ac:	00276713          	ori	a4,a4,2
 2b0:	0ae407a3          	sb	a4,175(s0)
 2b4:	08a42223          	sw	a0,132(s0)
 2b8:	08941423          	sh	s1,136(s0)
 2bc:	b5ed                	j	1a6 <.L374>

000002be <.L362>:
 2be:	470d                	li	a4,3
 2c0:	f8e79de3          	bne	a5,a4,25a <.L376>

000002c4 <.LBB400>:
 2c4:	0af44783          	lbu	a5,175(s0)

000002c8 <.LVL546>:
 2c8:	8b89                	andi	a5,a5,2
 2ca:	eb81                	bnez	a5,2da <.L377>
 2cc:	08845783          	lhu	a5,136(s0)
 2d0:	08f41023          	sh	a5,128(s0)
 2d4:	08442783          	lw	a5,132(s0)
 2d8:	dc7c                	sw	a5,124(s0)

000002da <.L377>:
 2da:	0a045783          	lhu	a5,160(s0)
 2de:	0a040723          	sb	zero,174(s0)

000002e2 <.LVL547>:
 2e2:	08f41423          	sh	a5,136(s0)
 2e6:	09c42783          	lw	a5,156(s0)
 2ea:	08042e23          	sw	zero,156(s0)
 2ee:	08f42223          	sw	a5,132(s0)
 2f2:	0ff00793          	li	a5,255
 2f6:	0af41023          	sh	a5,160(s0)
 2fa:	bd4d                	j	1ac <.L375>

000002fc <.L387>:
 2fc:	8082                	ret
