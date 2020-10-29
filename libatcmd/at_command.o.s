
at_command.o:     file format elf32-littleriscv


Disassembly of section .text.wifi_supports:

00000000 <wifi_supports>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <wifi_supports+0xa>

00000012 <.LVL1>:
  12:	c111                	beqz	a0,16 <.L2>
  14:	4511                	li	a0,4

00000016 <.L2>:
  16:	40b2                	lw	ra,12(sp)
  18:	0141                	addi	sp,sp,16
  1a:	8082                	ret

Disassembly of section .text.attention_handler:

00000000 <attention_handler>:
   0:	4681                	li	a3,0
   2:	4601                	li	a2,0
   4:	4581                	li	a1,0
   6:	00000317          	auipc	t1,0x0
   a:	00030067          	jr	t1 # 6 <attention_handler+0x6>

Disassembly of section .text.wifi_mode_handler:

00000000 <wifi_mode_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	478d                	li	a5,3
   4:	00f10a23          	sb	a5,20(sp)
   8:	007c                	addi	a5,sp,12
   a:	cc3e                	sw	a5,24(sp)
   c:	6785                	lui	a5,0x1
   e:	d606                	sw	ra,44(sp)
  10:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF433+0x1>
  14:	ce3e                	sw	a5,28(sp)
  16:	411c                	lw	a5,0(a0)
  18:	c602                	sw	zero,12(sp)
  1a:	03f00613          	li	a2,63
  1e:	0007c683          	lbu	a3,0(a5)
  22:	00c69b63          	bne	a3,a2,38 <.L7>
  26:	0785                	addi	a5,a5,1
  28:	c11c                	sw	a5,0(a0)
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <wifi_mode_handler+0x2a>

00000032 <.L8>:
  32:	50b2                	lw	ra,44(sp)
  34:	6145                	addi	sp,sp,48
  36:	8082                	ret

00000038 <.L7>:
  38:	03d00613          	li	a2,61
  3c:	00c68463          	beq	a3,a2,44 <.L9>

00000040 <.L10>:
  40:	4511                	li	a0,4
  42:	bfc5                	j	32 <.L8>

00000044 <.L9>:
  44:	0785                	addi	a5,a5,1
  46:	c11c                	sw	a5,0(a0)
  48:	0814                	addi	a3,sp,16
  4a:	4605                	li	a2,1
  4c:	084c                	addi	a1,sp,20
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L9+0xa>

00000056 <.LVL10>:
  56:	f56d                	bnez	a0,40 <.L10>
  58:	47c2                	lw	a5,16(sp)
  5a:	fef053e3          	blez	a5,40 <.L10>
  5e:	45b2                	lw	a1,12(sp)
  60:	00000537          	lui	a0,0x0

00000064 <.LVL11>:
  64:	00050513          	mv	a0,a0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.LVL11+0x4>

00000070 <.LVL12>:
  70:	4532                	lw	a0,12(sp)
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL12+0x2>

0000007a <.LVL13>:
  7a:	bf65                	j	32 <.L8>

Disassembly of section .text.http_req:

00000000 <http_req>:
   0:	711d                	addi	sp,sp,-96
   2:	c6ce                	sw	s3,76(sp)
   4:	89aa                	mv	s3,a0
   6:	20200513          	li	a0,514

0000000a <.LVL15>:
   a:	caa6                	sw	s1,84(sp)
   c:	ce86                	sw	ra,92(sp)
   e:	cca2                	sw	s0,88(sp)
  10:	c8ca                	sw	s2,80(sp)
  12:	c4d2                	sw	s4,72(sp)
  14:	c2d6                	sw	s5,68(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL15+0xc>

0000001e <.LVL16>:
  1e:	44d1                	li	s1,20
  20:	c945                	beqz	a0,d0 <.L13>
  22:	10050793          	addi	a5,a0,256 # 100 <.LVL341>
  26:	ca3e                	sw	a5,20(sp)
  28:	6785                	lui	a5,0x1
  2a:	c0178713          	addi	a4,a5,-1023 # c01 <.LASF88+0x8>
  2e:	d0078793          	addi	a5,a5,-768
  32:	d83e                	sw	a5,48(sp)
  34:	de3e                	sw	a5,60(sp)
  36:	0009a783          	lw	a5,0(s3)
  3a:	490d                	li	s2,3
  3c:	10150693          	addi	a3,a0,257
  40:	4a85                	li	s5,1
  42:	10250a13          	addi	s4,a0,258
  46:	cc3a                	sw	a4,24(sp)
  48:	d23a                	sw	a4,36(sp)
  4a:	01210823          	sb	s2,16(sp)
  4e:	01210e23          	sb	s2,28(sp)
  52:	d036                	sw	a3,32(sp)
  54:	02010423          	sb	zero,40(sp)
  58:	d62a                	sw	a0,44(sp)
  5a:	03510a23          	sb	s5,52(sp)
  5e:	dc52                	sw	s4,56(sp)
  60:	0007c683          	lbu	a3,0(a5)
  64:	03d00713          	li	a4,61
  68:	842a                	mv	s0,a0
  6a:	4491                	li	s1,4
  6c:	06e69263          	bne	a3,a4,d0 <.L13>
  70:	0785                	addi	a5,a5,1
  72:	00f9a023          	sw	a5,0(s3)
  76:	0074                	addi	a3,sp,12
  78:	4611                	li	a2,4
  7a:	080c                	addi	a1,sp,16
  7c:	854e                	mv	a0,s3

0000007e <.LVL17>:
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL17>

00000086 <.LVL18>:
  86:	ed39                	bnez	a0,e4 <.L14>
  88:	4732                	lw	a4,12(sp)
  8a:	4789                	li	a5,2
  8c:	04e7dc63          	bge	a5,a4,e4 <.L14>
  90:	10044583          	lbu	a1,256(s0)
  94:	04bae863          	bltu	s5,a1,e4 <.L14>
  98:	10144603          	lbu	a2,257(s0)
  9c:	04c96463          	bltu	s2,a2,e4 <.L14>
  a0:	00000737          	lui	a4,0x0
  a4:	00070793          	mv	a5,a4
  a8:	86d2                	mv	a3,s4
  aa:	00070713          	mv	a4,a4
  ae:	8522                	mv	a0,s0

000000b0 <.LVL19>:
  b0:	00078023          	sb	zero,0(a5)
  b4:	0007a423          	sw	zero,8(a5)
  b8:	0007a623          	sw	zero,12(a5)
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LVL19+0xc>

000000c4 <.LVL20>:
  c4:	84aa                	mv	s1,a0

000000c6 <.LVL21>:
  c6:	8522                	mv	a0,s0
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL21+0x2>

000000d0 <.L13>:
  d0:	40f6                	lw	ra,92(sp)
  d2:	4466                	lw	s0,88(sp)
  d4:	8526                	mv	a0,s1
  d6:	4946                	lw	s2,80(sp)
  d8:	44d6                	lw	s1,84(sp)
  da:	49b6                	lw	s3,76(sp)

000000dc <.LVL23>:
  dc:	4a26                	lw	s4,72(sp)
  de:	4a96                	lw	s5,68(sp)
  e0:	6125                	addi	sp,sp,96
  e2:	8082                	ret

000000e4 <.L14>:
  e4:	8522                	mv	a0,s0

000000e6 <.LVL25>:
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL25>

000000ee <.LVL26>:
  ee:	4491                	li	s1,4
  f0:	b7c5                	j	d0 <.L13>

Disassembly of section .text.domain_name_resolution:

00000000 <domain_name_resolution>:
   0:	7129                	addi	sp,sp,-320
   2:	12912a23          	sw	s1,308(sp)
   6:	000005b7          	lui	a1,0x0
   a:	84aa                	mv	s1,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL28>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112e23          	sw	ra,316(sp)
  1c:	12812c23          	sw	s0,312(sp)
  20:	13212823          	sw	s2,304(sp)
  24:	1000                	addi	s0,sp,32
  26:	13312623          	sw	s3,300(sp)
  2a:	13412423          	sw	s4,296(sp)
  2e:	13512223          	sw	s5,292(sp)
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL28+0x22>

0000003a <.LVL29>:
  3a:	10000613          	li	a2,256
  3e:	4581                	li	a1,0
  40:	8522                	mv	a0,s0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL29+0x8>

0000004a <.LVL30>:
  4a:	6785                	lui	a5,0x1
  4c:	d0078793          	addi	a5,a5,-768 # d00 <.LLST35>
  50:	ce3e                	sw	a5,28(sp)

00000052 <.LVL31>:
  52:	409c                	lw	a5,0(s1)
  54:	00010a23          	sb	zero,20(sp)
  58:	cc22                	sw	s0,24(sp)
  5a:	0007c683          	lbu	a3,0(a5)
  5e:	03d00713          	li	a4,61
  62:	02e68463          	beq	a3,a4,8a <.L19>

00000066 <.L21>:
  66:	4491                	li	s1,4

00000068 <.L20>:
  68:	13c12083          	lw	ra,316(sp)
  6c:	13812403          	lw	s0,312(sp)
  70:	8526                	mv	a0,s1
  72:	13012903          	lw	s2,304(sp)
  76:	13412483          	lw	s1,308(sp)
  7a:	12c12983          	lw	s3,300(sp)
  7e:	12812a03          	lw	s4,296(sp)
  82:	12412a83          	lw	s5,292(sp)
  86:	6131                	addi	sp,sp,320
  88:	8082                	ret

0000008a <.L19>:
  8a:	0785                	addi	a5,a5,1
  8c:	c09c                	sw	a5,0(s1)
  8e:	8526                	mv	a0,s1
  90:	0814                	addi	a3,sp,16
  92:	4605                	li	a2,1
  94:	084c                	addi	a1,sp,20
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.L19+0xc>

0000009e <.LVL35>:
  9e:	84aa                	mv	s1,a0

000000a0 <.LVL36>:
  a0:	f179                	bnez	a0,66 <.L21>
  a2:	47c2                	lw	a5,16(sp)
  a4:	fcf051e3          	blez	a5,66 <.L21>
  a8:	00000537          	lui	a0,0x0

000000ac <.LVL37>:
  ac:	85a2                	mv	a1,s0
  ae:	00050513          	mv	a0,a0
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.LVL37+0x6>

000000ba <.LVL38>:
  ba:	8522                	mv	a0,s0
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LVL38+0x2>

000000c4 <.LVL39>:
  c4:	89aa                	mv	s3,a0

000000c6 <.LVL40>:
  c6:	c951                	beqz	a0,15a <.L26>
  c8:	4918                	lw	a4,16(a0)
  ca:	4581                	li	a1,0

000000cc <.L22>:
  cc:	00259793          	slli	a5,a1,0x2
  d0:	97ba                	add	a5,a5,a4
  d2:	439c                	lw	a5,0(a5)
  d4:	e3c9                	bnez	a5,156 <.L23>
  d6:	00000437          	lui	s0,0x0
  da:	00040513          	mv	a0,s0

000000de <.LVL42>:
  de:	c62e                	sw	a1,12(sp)
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LVL42+0x2>

000000e8 <.LVL43>:
  e8:	45b2                	lw	a1,12(sp)
  ea:	00000537          	lui	a0,0x0
  ee:	00050513          	mv	a0,a0
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL43+0xa>

000000fa <.LVL44>:
  fa:	00040513          	mv	a0,s0
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LVL44+0x4>

00000106 <.LVL45>:
 106:	4901                	li	s2,0
 108:	00000ab7          	lui	s5,0x0

0000010c <.L24>:
 10c:	0109a783          	lw	a5,16(s3)
 110:	00490a13          	addi	s4,s2,4
 114:	97ca                	add	a5,a5,s2
 116:	439c                	lw	a5,0(a5)
 118:	dba1                	beqz	a5,68 <.L20>
 11a:	00040513          	mv	a0,s0
 11e:	00000097          	auipc	ra,0x0
 122:	000080e7          	jalr	ra # 11e <.L24+0x12>

00000126 <.LVL47>:
 126:	0109a783          	lw	a5,16(s3)
 12a:	993e                	add	s2,s2,a5
 12c:	00092503          	lw	a0,0(s2)
 130:	8952                	mv	s2,s4
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LVL47+0xc>

0000013a <.LVL48>:
 13a:	85aa                	mv	a1,a0
 13c:	000a8513          	mv	a0,s5
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LVL48+0x6>

00000148 <.LVL49>:
 148:	00040513          	mv	a0,s0
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.LVL49+0x4>

00000154 <.LVL50>:
 154:	bf65                	j	10c <.L24>

00000156 <.L23>:
 156:	0585                	addi	a1,a1,1
 158:	bf95                	j	cc <.L22>

0000015a <.L26>:
 15a:	44cd                	li	s1,19
 15c:	b731                	j	68 <.L20>

Disassembly of section .text.base_station_info:

00000000 <base_station_info>:
   0:	7139                	addi	sp,sp,-64
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	dc22                	sw	s0,56(sp)
   a:	de06                	sw	ra,60(sp)
   c:	da26                	sw	s1,52(sp)
   e:	d84a                	sw	s2,48(sp)
  10:	d64e                	sw	s3,44(sp)
  12:	c802                	sw	zero,16(sp)
  14:	ca02                	sw	zero,20(sp)
  16:	cc02                	sw	zero,24(sp)
  18:	ce02                	sw	zero,28(sp)
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <base_station_info+0x1a>

00000022 <.LVL55>:
  22:	4411                	li	s0,4
  24:	e961                	bnez	a0,f4 <.L29>
  26:	08000513          	li	a0,128

0000002a <.LVL56>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL56>

00000032 <.LVL57>:
  32:	cc2a                	sw	a0,24(sp)
  34:	00000537          	lui	a0,0x0
  38:	08000793          	li	a5,128
  3c:	0818                	addi	a4,sp,16
  3e:	4681                	li	a3,0
  40:	4605                	li	a2,1
  42:	4581                	li	a1,0
  44:	00050513          	mv	a0,a0
  48:	ce3e                	sw	a5,28(sp)
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL57+0x18>

00000052 <.LVL58>:
  52:	842a                	mv	s0,a0

00000054 <.LVL59>:
  54:	e145                	bnez	a0,f4 <.L29>
  56:	4562                	lw	a0,24(sp)

00000058 <.LVL60>:
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL60>

00000060 <.LVL61>:
  60:	84aa                	mv	s1,a0

00000062 <.LVL62>:
  62:	c14d                	beqz	a0,104 <.L34>
  64:	000005b7          	lui	a1,0x0
  68:	00058593          	mv	a1,a1
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL62+0xa>

00000074 <.LVL63>:
  74:	000005b7          	lui	a1,0x0
  78:	00058593          	mv	a1,a1
  7c:	89aa                	mv	s3,a0

0000007e <.LVL64>:
  7e:	8526                	mv	a0,s1

00000080 <.LVL65>:
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL65>

00000088 <.LVL66>:
  88:	000005b7          	lui	a1,0x0
  8c:	c62a                	sw	a0,12(sp)

0000008e <.LVL67>:
  8e:	00058593          	mv	a1,a1
  92:	8526                	mv	a0,s1

00000094 <.LVL68>:
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL68>

0000009c <.LVL69>:
  9c:	00000937          	lui	s2,0x0
  a0:	c42a                	sw	a0,8(sp)

000000a2 <.LVL70>:
  a2:	00090513          	mv	a0,s2

000000a6 <.LVL71>:
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LVL71>

000000ae <.LVL72>:
  ae:	46a2                	lw	a3,8(sp)
  b0:	4632                	lw	a2,12(sp)
  b2:	00098463          	beqz	s3,ba <.L30>
  b6:	0109a983          	lw	s3,16(s3)

000000ba <.L30>:
  ba:	c211                	beqz	a2,be <.L31>
  bc:	4a10                	lw	a2,16(a2)

000000be <.L31>:
  be:	c291                	beqz	a3,c2 <.L32>
  c0:	4a94                	lw	a3,16(a3)

000000c2 <.L32>:
  c2:	00000537          	lui	a0,0x0
  c6:	85ce                	mv	a1,s3
  c8:	00050513          	mv	a0,a0
  cc:	00000097          	auipc	ra,0x0
  d0:	000080e7          	jalr	ra # cc <.L32+0xa>

000000d4 <.LVL74>:
  d4:	00090513          	mv	a0,s2
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.LVL74+0x4>

000000e0 <.LVL75>:
  e0:	4562                	lw	a0,24(sp)
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL75+0x2>

000000ea <.LVL76>:
  ea:	8526                	mv	a0,s1
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL76+0x2>

000000f4 <.L29>:
  f4:	8522                	mv	a0,s0
  f6:	50f2                	lw	ra,60(sp)
  f8:	5462                	lw	s0,56(sp)
  fa:	54d2                	lw	s1,52(sp)
  fc:	5942                	lw	s2,48(sp)
  fe:	59b2                	lw	s3,44(sp)
 100:	6121                	addi	sp,sp,64
 102:	8082                	ret

00000104 <.L34>:
 104:	444d                	li	s0,19
 106:	b7fd                	j	f4 <.L29>

Disassembly of section .text.deep_sleep_handler:

00000000 <deep_sleep_handler>:
   0:	7139                	addi	sp,sp,-64
   2:	0818                	addi	a4,sp,16
   4:	ce3a                	sw	a4,28(sp)
   6:	6705                	lui	a4,0x1
   8:	c0470713          	addi	a4,a4,-1020 # c04 <.LASF433+0x1>
   c:	de06                	sw	ra,60(sp)
   e:	468d                	li	a3,3
  10:	d03a                	sw	a4,32(sp)
  12:	d63a                	sw	a4,44(sp)
  14:	4118                	lw	a4,0(a0)
  16:	00d10c23          	sb	a3,24(sp)
  1a:	02d10223          	sb	a3,36(sp)
  1e:	0854                	addi	a3,sp,20
  20:	d436                	sw	a3,40(sp)
  22:	c802                	sw	zero,16(sp)
  24:	ca02                	sw	zero,20(sp)
  26:	00074603          	lbu	a2,0(a4)
  2a:	03d00693          	li	a3,61
  2e:	00d60663          	beq	a2,a3,3a <.L46>

00000032 <.L48>:
  32:	4511                	li	a0,4

00000034 <.L47>:
  34:	50f2                	lw	ra,60(sp)
  36:	6121                	addi	sp,sp,64
  38:	8082                	ret

0000003a <.L46>:
  3a:	0705                	addi	a4,a4,1
  3c:	c118                	sw	a4,0(a0)
  3e:	0074                	addi	a3,sp,12
  40:	4609                	li	a2,2
  42:	082c                	addi	a1,sp,24
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.L46+0xa>

0000004c <.LVL82>:
  4c:	f17d                	bnez	a0,32 <.L48>
  4e:	47b2                	lw	a5,12(sp)
  50:	fef051e3          	blez	a5,32 <.L48>
  54:	45c2                	lw	a1,16(sp)
  56:	4652                	lw	a2,20(sp)
  58:	00000537          	lui	a0,0x0

0000005c <.LVL83>:
  5c:	00050513          	mv	a0,a0
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.LVL83+0x4>

00000068 <.LVL84>:
  68:	45d2                	lw	a1,20(sp)
  6a:	4542                	lw	a0,16(sp)
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL84+0x4>

00000074 <.LVL85>:
  74:	b7c1                	j	34 <.L47>

Disassembly of section .text.setautoconnect_handler:

00000000 <setautoconnect_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	000005b7          	lui	a1,0x0
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL87>:
   e:	00058593          	mv	a1,a1
  12:	00050513          	mv	a0,a0
  16:	d606                	sw	ra,44(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL87+0xa>

00000020 <.LVL88>:
  20:	478d                	li	a5,3
  22:	00f10a23          	sb	a5,20(sp)
  26:	003c                	addi	a5,sp,8
  28:	cc3e                	sw	a5,24(sp)
  2a:	6785                	lui	a5,0x1
  2c:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF433+0x1>
  30:	ce3e                	sw	a5,28(sp)
  32:	401c                	lw	a5,0(s0)
  34:	c402                	sw	zero,8(sp)
  36:	c802                	sw	zero,16(sp)
  38:	0007c703          	lbu	a4,0(a5)
  3c:	03f00693          	li	a3,63
  40:	04d71463          	bne	a4,a3,88 <.L51>
  44:	00000537          	lui	a0,0x0
  48:	080c                	addi	a1,sp,16
  4a:	00050513          	mv	a0,a0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL88+0x2e>

00000056 <.LVL89>:
  56:	00000437          	lui	s0,0x0

0000005a <.LVL90>:
  5a:	00040513          	mv	a0,s0
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL90+0x4>

00000066 <.LVL91>:
  66:	45c2                	lw	a1,16(sp)
  68:	00000537          	lui	a0,0x0
  6c:	00050513          	mv	a0,a0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL91+0xa>

00000078 <.LVL92>:
  78:	00040513          	mv	a0,s0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL92+0x4>

00000084 <.L58>:
  84:	4781                	li	a5,0
  86:	a031                	j	92 <.L52>

00000088 <.L51>:
  88:	03d00693          	li	a3,61
  8c:	00d70863          	beq	a4,a3,9c <.L53>

00000090 <.L54>:
  90:	4791                	li	a5,4

00000092 <.L52>:
  92:	50b2                	lw	ra,44(sp)
  94:	5422                	lw	s0,40(sp)
  96:	853e                	mv	a0,a5
  98:	6145                	addi	sp,sp,48
  9a:	8082                	ret

0000009c <.L53>:
  9c:	0785                	addi	a5,a5,1
  9e:	c01c                	sw	a5,0(s0)
  a0:	0074                	addi	a3,sp,12
  a2:	4605                	li	a2,1
  a4:	084c                	addi	a1,sp,20
  a6:	8522                	mv	a0,s0
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L53+0xc>

000000b0 <.LVL97>:
  b0:	c82a                	sw	a0,16(sp)
  b2:	4781                	li	a5,0
  b4:	fd79                	bnez	a0,92 <.L52>
  b6:	47b2                	lw	a5,12(sp)
  b8:	fcf05ce3          	blez	a5,90 <.L54>
  bc:	45a2                	lw	a1,8(sp)
  be:	00000537          	lui	a0,0x0
  c2:	00050513          	mv	a0,a0
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL97+0x16>

000000ce <.LVL98>:
  ce:	47a2                	lw	a5,8(sp)
  d0:	4705                	li	a4,1
  d2:	00e79d63          	bne	a5,a4,ec <.L55>
  d6:	c83e                	sw	a5,16(sp)

000000d8 <.L59>:
  d8:	00000537          	lui	a0,0x0
  dc:	080c                	addi	a1,sp,16
  de:	00050513          	mv	a0,a0
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.L59+0xa>

000000ea <.LVL99>:
  ea:	bf69                	j	84 <.L58>

000000ec <.L55>:
  ec:	f3d5                	bnez	a5,90 <.L54>
  ee:	c802                	sw	zero,16(sp)
  f0:	b7e5                	j	d8 <.L59>

Disassembly of section .text.scan_handler_opt:

00000000 <scan_handler_opt>:
   0:	7139                	addi	sp,sp,-64
   2:	478d                	li	a5,3
   4:	00f10c23          	sb	a5,24(sp)
   8:	02f10223          	sb	a5,36(sp)
   c:	01110793          	addi	a5,sp,17
  10:	d43e                	sw	a5,40(sp)
  12:	6785                	lui	a5,0x1
  14:	de06                	sw	ra,60(sp)
  16:	dc22                	sw	s0,56(sp)
  18:	80178793          	addi	a5,a5,-2047 # 801 <.LLST61+0x5>
  1c:	0814                	addi	a3,sp,16
  1e:	d63e                	sw	a5,44(sp)
  20:	411c                	lw	a5,0(a0)
  22:	ce36                	sw	a3,28(sp)
  24:	40100693          	li	a3,1025
  28:	000107a3          	sb	zero,15(sp)
  2c:	00011823          	sh	zero,16(sp)
  30:	d036                	sw	a3,32(sp)
  32:	0007c683          	lbu	a3,0(a5)
  36:	03f00613          	li	a2,63
  3a:	06c69163          	bne	a3,a2,9c <.L61>
  3e:	00000537          	lui	a0,0x0

00000042 <.LVL101>:
  42:	00f10593          	addi	a1,sp,15
  46:	00050513          	mv	a0,a0
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL101+0x8>

00000052 <.LVL102>:
  52:	c501                	beqz	a0,5a <.L62>
  54:	57fd                	li	a5,-1
  56:	00f107a3          	sb	a5,15(sp)

0000005a <.L62>:
  5a:	00000437          	lui	s0,0x0
  5e:	00040513          	mv	a0,s0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.L62+0x8>

0000006a <.LVL103>:
  6a:	00f14603          	lbu	a2,15(sp)
  6e:	00000537          	lui	a0,0x0
  72:	00050513          	mv	a0,a0
  76:	00565593          	srli	a1,a2,0x5
  7a:	8985                	andi	a1,a1,1
  7c:	8a7d                	andi	a2,a2,31
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL103+0x14>

00000086 <.LVL104>:
  86:	00040513          	mv	a0,s0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL104+0x4>

00000092 <.LVL105>:
  92:	4501                	li	a0,0

00000094 <.L63>:
  94:	50f2                	lw	ra,60(sp)
  96:	5462                	lw	s0,56(sp)
  98:	6121                	addi	sp,sp,64
  9a:	8082                	ret

0000009c <.L61>:
  9c:	03d00613          	li	a2,61
  a0:	00c68463          	beq	a3,a2,a8 <.L64>

000000a4 <.L65>:
  a4:	4511                	li	a0,4
  a6:	b7fd                	j	94 <.L63>

000000a8 <.L64>:
  a8:	0785                	addi	a5,a5,1
  aa:	c11c                	sw	a5,0(a0)
  ac:	0854                	addi	a3,sp,20
  ae:	4609                	li	a2,2
  b0:	082c                	addi	a1,sp,24
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.L64+0xa>

000000ba <.LVL109>:
  ba:	f56d                	bnez	a0,a4 <.L65>
  bc:	4752                	lw	a4,20(sp)
  be:	4785                	li	a5,1
  c0:	fee7d2e3          	bge	a5,a4,a4 <.L65>
  c4:	01114783          	lbu	a5,17(sp)
  c8:	01014703          	lbu	a4,16(sp)
  cc:	00000537          	lui	a0,0x0

000000d0 <.LVL110>:
  d0:	8bfd                	andi	a5,a5,31
  d2:	0716                	slli	a4,a4,0x5
  d4:	8fd9                	or	a5,a5,a4
  d6:	00f10593          	addi	a1,sp,15
  da:	00050513          	mv	a0,a0
  de:	00f107a3          	sb	a5,15(sp)
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL110+0x12>

000000ea <.LVL111>:
  ea:	0ff57513          	andi	a0,a0,255
  ee:	b75d                	j	94 <.L63>

Disassembly of section .text.scan_handler:

00000000 <scan_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	40200793          	li	a5,1026
   6:	c83e                	sw	a5,16(sp)
   8:	6785                	lui	a5,0x1
   a:	d422                	sw	s0,40(sp)
   c:	d606                	sw	ra,44(sp)
   e:	80278793          	addi	a5,a5,-2046 # 802 <.LLST61+0x6>
  12:	ce3e                	sw	a5,28(sp)
  14:	411c                	lw	a5,0(a0)
  16:	00210413          	addi	s0,sp,2
  1a:	c002                	sw	zero,0(sp)
  1c:	00010423          	sb	zero,8(sp)
  20:	c60a                	sw	sp,12(sp)
  22:	00010a23          	sb	zero,20(sp)
  26:	cc22                	sw	s0,24(sp)
  28:	0007c603          	lbu	a2,0(a5)
  2c:	03d00693          	li	a3,61
  30:	02d60563          	beq	a2,a3,5a <.L71>
  34:	4681                	li	a3,0
  36:	4601                	li	a2,0
  38:	4581                	li	a1,0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <scan_handler+0x3a>

00000042 <.LVL113>:
  42:	c511                	beqz	a0,4e <.L72>

00000044 <.L74>:
  44:	4511                	li	a0,4

00000046 <.L73>:
  46:	50b2                	lw	ra,44(sp)
  48:	5422                	lw	s0,40(sp)
  4a:	6145                	addi	sp,sp,48
  4c:	8082                	ret

0000004e <.L72>:
  4e:	4581                	li	a1,0

00000050 <.L80>:
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.L80>

00000058 <.LVL117>:
  58:	b7fd                	j	46 <.L73>

0000005a <.L71>:
  5a:	0785                	addi	a5,a5,1
  5c:	c11c                	sw	a5,0(a0)
  5e:	0054                	addi	a3,sp,4
  60:	4609                	li	a2,2
  62:	002c                	addi	a1,sp,8
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L71+0xa>

0000006c <.LVL119>:
  6c:	fd61                	bnez	a0,44 <.L74>
  6e:	4712                	lw	a4,4(sp)
  70:	4785                	li	a5,1
  72:	fce7d9e3          	bge	a5,a4,44 <.L74>
  76:	000005b7          	lui	a1,0x0
  7a:	00058593          	mv	a1,a1
  7e:	850a                	mv	a0,sp

00000080 <.LVL120>:
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL120>

00000088 <.LVL121>:
  88:	ed11                	bnez	a0,a4 <.L75>

0000008a <.L77>:
  8a:	000005b7          	lui	a1,0x0
  8e:	00058593          	mv	a1,a1
  92:	8522                	mv	a0,s0
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.L77+0xa>

0000009c <.LVL122>:
  9c:	f545                	bnez	a0,44 <.L74>
  9e:	85a2                	mv	a1,s0
  a0:	850a                	mv	a0,sp
  a2:	b77d                	j	50 <.L80>

000000a4 <.L75>:
  a4:	000005b7          	lui	a1,0x0
  a8:	00058593          	mv	a1,a1
  ac:	850a                	mv	a0,sp
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.L75+0xa>

000000b6 <.LVL123>:
  b6:	d971                	beqz	a0,8a <.L77>
  b8:	b771                	j	44 <.L74>

Disassembly of section .text.uart_config_handler:

00000000 <uart_config_handler>:
   0:	7159                	addi	sp,sp,-112
   2:	d2a6                	sw	s1,100(sp)
   4:	000005b7          	lui	a1,0x0
   8:	84aa                	mv	s1,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL125>:
   e:	00058593          	mv	a1,a1
  12:	00050513          	mv	a0,a0
  16:	d686                	sw	ra,108(sp)
  18:	d4a2                	sw	s0,104(sp)
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL125+0xc>

00000022 <.LVL126>:
  22:	4661                	li	a2,24
  24:	4581                	li	a1,0
  26:	0068                	addi	a0,sp,12
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL126+0x6>

00000030 <.LVL127>:
  30:	081c                	addi	a5,sp,16
  32:	d43e                	sw	a5,40(sp)
  34:	0858                	addi	a4,sp,20
  36:	6785                	lui	a5,0x1
  38:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF433+0x1>
  3c:	da3a                	sw	a4,52(sp)
  3e:	0838                	addi	a4,sp,24
  40:	d63e                	sw	a5,44(sp)
  42:	dc3e                	sw	a5,56(sp)
  44:	c0ba                	sw	a4,64(sp)
  46:	c2be                	sw	a5,68(sp)
  48:	0878                	addi	a4,sp,28
  4a:	c8be                	sw	a5,80(sp)
  4c:	cebe                	sw	a5,92(sp)
  4e:	409c                	lw	a5,0(s1)
  50:	440d                	li	s0,3
  52:	c6ba                	sw	a4,76(sp)
  54:	1018                	addi	a4,sp,32
  56:	02810223          	sb	s0,36(sp)
  5a:	02810823          	sb	s0,48(sp)
  5e:	02810e23          	sb	s0,60(sp)
  62:	04810423          	sb	s0,72(sp)
  66:	04810a23          	sb	s0,84(sp)
  6a:	ccba                	sw	a4,88(sp)
  6c:	0007c703          	lbu	a4,0(a5)
  70:	03f00693          	li	a3,63
  74:	00d71b63          	bne	a4,a3,8a <.L82>
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL127+0x48>

00000080 <.L83>:
  80:	50b6                	lw	ra,108(sp)
  82:	5426                	lw	s0,104(sp)
  84:	5496                	lw	s1,100(sp)

00000086 <.LVL129>:
  86:	6165                	addi	sp,sp,112
  88:	8082                	ret

0000008a <.L82>:
  8a:	03d00693          	li	a3,61
  8e:	4519                	li	a0,6
  90:	fed718e3          	bne	a4,a3,80 <.L83>
  94:	0785                	addi	a5,a5,1
  96:	c09c                	sw	a5,0(s1)
  98:	0034                	addi	a3,sp,8
  9a:	4615                	li	a2,5
  9c:	104c                	addi	a1,sp,36
  9e:	8526                	mv	a0,s1
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.L82+0x16>

000000a8 <.LVL131>:
  a8:	c119                	beqz	a0,ae <.L84>

000000aa <.L87>:
  aa:	4511                	li	a0,4

000000ac <.LVL132>:
  ac:	bfd1                	j	80 <.L83>

000000ae <.L84>:
  ae:	47a2                	lw	a5,8(sp)
  b0:	4711                	li	a4,4
  b2:	06f75a63          	bge	a4,a5,126 <.L85>

000000b6 <.L86>:
  b6:	45c2                	lw	a1,16(sp)
  b8:	00000537          	lui	a0,0x0

000000bc <.LVL134>:
  bc:	00050513          	mv	a0,a0
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.LVL134+0x4>

000000c8 <.LVL135>:
  c8:	45d2                	lw	a1,20(sp)
  ca:	00000537          	lui	a0,0x0
  ce:	00050513          	mv	a0,a0
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL135+0xa>

000000da <.LVL136>:
  da:	45f2                	lw	a1,28(sp)
  dc:	00000537          	lui	a0,0x0
  e0:	00050513          	mv	a0,a0
  e4:	00000097          	auipc	ra,0x0
  e8:	000080e7          	jalr	ra # e4 <.LVL136+0xa>

000000ec <.LVL137>:
  ec:	45e2                	lw	a1,24(sp)
  ee:	00000537          	lui	a0,0x0
  f2:	00050513          	mv	a0,a0
  f6:	00000097          	auipc	ra,0x0
  fa:	000080e7          	jalr	ra # f6 <.LVL137+0xa>

000000fe <.LVL138>:
  fe:	5582                	lw	a1,32(sp)
 100:	00000537          	lui	a0,0x0
 104:	00050513          	mv	a0,a0
 108:	00000097          	auipc	ra,0x0
 10c:	000080e7          	jalr	ra # 108 <.LVL138+0xa>

00000110 <.LVL139>:
 110:	5782                	lw	a5,32(sp)
 112:	4762                	lw	a4,24(sp)
 114:	46f2                	lw	a3,28(sp)
 116:	4652                	lw	a2,20(sp)
 118:	45c2                	lw	a1,16(sp)
 11a:	4532                	lw	a0,12(sp)
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL139+0xc>

00000124 <.LVL140>:
 124:	bfb1                	j	80 <.L83>

00000126 <.L85>:
 126:	d002                	sw	zero,32(sp)
 128:	f8e787e3          	beq	a5,a4,b6 <.L86>
 12c:	ce02                	sw	zero,28(sp)
 12e:	f88784e3          	beq	a5,s0,b6 <.L86>
 132:	4705                	li	a4,1
 134:	cc3a                	sw	a4,24(sp)
 136:	4689                	li	a3,2
 138:	f6d78fe3          	beq	a5,a3,b6 <.L86>
 13c:	46a1                	li	a3,8
 13e:	ca36                	sw	a3,20(sp)
 140:	f6e795e3          	bne	a5,a4,aa <.L87>
 144:	bf8d                	j	b6 <.L86>

Disassembly of section .text.reset_handler:

00000000 <reset_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <reset_handler+0xa>

00000012 <.LVL143>:
  12:	e519                	bnez	a0,20 <.L91>
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16
  18:	00000317          	auipc	t1,0x0
  1c:	00030067          	jr	t1 # 18 <.LVL143+0x6>

00000020 <.L91>:
  20:	40b2                	lw	ra,12(sp)
  22:	4511                	li	a0,4

00000024 <.LVL145>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text.echo_on_handler:

00000000 <echo_on_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	000005b7          	lui	a1,0x0
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL147>:
   e:	00058593          	mv	a1,a1
  12:	00050513          	mv	a0,a0
  16:	d226                	sw	s1,36(sp)
  18:	d606                	sw	ra,44(sp)
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL147+0xc>

00000022 <.LVL148>:
  22:	478d                	li	a5,3
  24:	00f10a23          	sb	a5,20(sp)
  28:	6785                	lui	a5,0x1
  2a:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF433+0x1>
  2e:	ce3e                	sw	a5,28(sp)
  30:	401c                	lw	a5,0(s0)
  32:	0064                	addi	s1,sp,12
  34:	c602                	sw	zero,12(sp)
  36:	cc26                	sw	s1,24(sp)
  38:	0007c703          	lbu	a4,0(a5)
  3c:	03f00693          	li	a3,63
  40:	04d71963          	bne	a4,a3,92 <.L94>

00000044 <.LBB4>:
  44:	00000537          	lui	a0,0x0
  48:	080c                	addi	a1,sp,16
  4a:	00050513          	mv	a0,a0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LBB4+0xa>

00000056 <.LVL150>:
  56:	00000437          	lui	s0,0x0

0000005a <.LVL151>:
  5a:	00040513          	mv	a0,s0
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL151+0x4>

00000066 <.LVL152>:
  66:	45c2                	lw	a1,16(sp)
  68:	00000537          	lui	a0,0x0
  6c:	00050513          	mv	a0,a0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL152+0xa>

00000078 <.LVL153>:
  78:	00040513          	mv	a0,s0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL153+0x4>

00000084 <.LVL154>:
  84:	4401                	li	s0,0

00000086 <.L95>:
  86:	8522                	mv	a0,s0
  88:	50b2                	lw	ra,44(sp)
  8a:	5422                	lw	s0,40(sp)
  8c:	5492                	lw	s1,36(sp)
  8e:	6145                	addi	sp,sp,48
  90:	8082                	ret

00000092 <.L94>:
  92:	03d00693          	li	a3,61
  96:	00d70463          	beq	a4,a3,9e <.L96>

0000009a <.L97>:
  9a:	4411                	li	s0,4
  9c:	b7ed                	j	86 <.L95>

0000009e <.L96>:
  9e:	0785                	addi	a5,a5,1
  a0:	c01c                	sw	a5,0(s0)
  a2:	8522                	mv	a0,s0
  a4:	0814                	addi	a3,sp,16
  a6:	4605                	li	a2,1
  a8:	084c                	addi	a1,sp,20
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.L96+0xc>

000000b2 <.LVL159>:
  b2:	842a                	mv	s0,a0

000000b4 <.LVL160>:
  b4:	f17d                	bnez	a0,9a <.L97>
  b6:	47c2                	lw	a5,16(sp)
  b8:	fef051e3          	blez	a5,9a <.L97>
  bc:	47b2                	lw	a5,12(sp)
  be:	4705                	li	a4,1
  c0:	fcf74de3          	blt	a4,a5,9a <.L97>
  c4:	00000537          	lui	a0,0x0

000000c8 <.LVL161>:
  c8:	00000737          	lui	a4,0x0
  cc:	85a6                	mv	a1,s1
  ce:	00050513          	mv	a0,a0
  d2:	0ef72023          	sw	a5,224(a4) # e0 <.LFE18>
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL161+0xe>

000000de <.LVL162>:
  de:	b765                	j	86 <.L95>

Disassembly of section .text.disconnect_handler:

00000000 <disconnect_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	000005b7          	lui	a1,0x0
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL164>:
   e:	00058593          	mv	a1,a1
  12:	00050513          	mv	a0,a0
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL164+0xa>

00000020 <.LVL165>:
  20:	401c                	lw	a5,0(s0)
  22:	0007c703          	lbu	a4,0(a5)
  26:	03d00793          	li	a5,61
  2a:	00f70d63          	beq	a4,a5,44 <.L100>

0000002e <.LBB8>:
  2e:	4501                	li	a0,0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LBB8+0x2>

00000038 <.LVL167>:
  38:	0c800513          	li	a0,200
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL167+0x4>

00000044 <.L100>:
  44:	40b2                	lw	ra,12(sp)
  46:	4422                	lw	s0,8(sp)

00000048 <.LVL169>:
  48:	4501                	li	a0,0
  4a:	0141                	addi	sp,sp,16
  4c:	8082                	ret

Disassembly of section .text.restore_handler:

00000000 <restore_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <restore_handler+0xa>

00000012 <.LVL171>:
  12:	e519                	bnez	a0,20 <.L103>

00000014 <.LBB12>:
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16

00000018 <.LBB15>:
  18:	00000317          	auipc	t1,0x0
  1c:	00030067          	jr	t1 # 18 <.LBB15>

00000020 <.L103>:
  20:	40b2                	lw	ra,12(sp)
  22:	4511                	li	a0,4

00000024 <.LVL174>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text.version_handler:

00000000 <version_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <version_handler+0xa>

00000012 <.LVL176>:
  12:	e519                	bnez	a0,20 <.L106>

00000014 <.LBB18>:
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16

00000018 <.LBB21>:
  18:	00000317          	auipc	t1,0x0
  1c:	00030067          	jr	t1 # 18 <.LBB21>

00000020 <.L106>:
  20:	40b2                	lw	ra,12(sp)
  22:	4511                	li	a0,4

00000024 <.LVL179>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text.at_help:

00000000 <at_help>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
   8:	ca26                	sw	s1,20(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	00040413          	mv	s0,s0
  10:	000004b7          	lui	s1,0x0
  14:	000009b7          	lui	s3,0x0
  18:	c84a                	sw	s2,16(sp)
  1a:	c452                	sw	s4,8(sp)
  1c:	c256                	sw	s5,4(sp)
  1e:	ce06                	sw	ra,28(sp)
  20:	15040a93          	addi	s5,s0,336 # 150 <.LVL224+0x2>
  24:	8926                	mv	s2,s1
  26:	8a4e                	mv	s4,s3

00000028 <.L109>:
  28:	00048513          	mv	a0,s1
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.L109+0x4>

00000034 <.LVL182>:
  34:	4410                	lw	a2,8(s0)
  36:	400c                	lw	a1,0(s0)
  38:	00098513          	mv	a0,s3
  3c:	0431                	addi	s0,s0,12
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL182+0xa>

00000046 <.LVL183>:
  46:	00048513          	mv	a0,s1
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL183+0x4>

00000052 <.LVL184>:
  52:	4529                	li	a0,10
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL184+0x2>

0000005c <.LVL185>:
  5c:	fd5416e3          	bne	s0,s5,28 <.L109>
  60:	4401                	li	s0,0
  62:	000004b7          	lui	s1,0x0
  66:	000009b7          	lui	s3,0x0
  6a:	4ab1                	li	s5,12

0000006c <.L110>:
  6c:	0004a783          	lw	a5,0(s1) # 0 <at_help>
  70:	00f46c63          	bltu	s0,a5,88 <.L111>
  74:	40f2                	lw	ra,28(sp)
  76:	4462                	lw	s0,24(sp)

00000078 <.LVL187>:
  78:	44d2                	lw	s1,20(sp)
  7a:	4942                	lw	s2,16(sp)
  7c:	49b2                	lw	s3,12(sp)
  7e:	4a22                	lw	s4,8(sp)
  80:	4a92                	lw	s5,4(sp)
  82:	4501                	li	a0,0
  84:	6105                	addi	sp,sp,32
  86:	8082                	ret

00000088 <.L111>:
  88:	00090513          	mv	a0,s2
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.L111+0x4>

00000094 <.LVL189>:
  94:	03540733          	mul	a4,s0,s5
  98:	0009a783          	lw	a5,0(s3) # 0 <at_help>
  9c:	000a0513          	mv	a0,s4
  a0:	0405                	addi	s0,s0,1

000000a2 <.LVL190>:
  a2:	97ba                	add	a5,a5,a4
  a4:	4790                	lw	a2,8(a5)
  a6:	438c                	lw	a1,0(a5)
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL190+0x6>

000000b0 <.LVL191>:
  b0:	00090513          	mv	a0,s2
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL191+0x4>

000000bc <.LVL192>:
  bc:	4529                	li	a0,10
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL192+0x2>

000000c6 <.LVL193>:
  c6:	b75d                	j	6c <.L110>

Disassembly of section .text.help_handler:

00000000 <help_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4681                	li	a3,0
   4:	4601                	li	a2,0
   6:	4581                	li	a1,0
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <help_handler+0xa>

00000012 <.LVL195>:
  12:	e519                	bnez	a0,20 <.L115>
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16
  18:	00000317          	auipc	t1,0x0
  1c:	00030067          	jr	t1 # 18 <.LVL195+0x6>

00000020 <.L115>:
  20:	40b2                	lw	ra,12(sp)
  22:	4511                	li	a0,4

00000024 <.LVL197>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text.at_init:

00000000 <at_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	c226                	sw	s1,4(sp)
   a:	4621                	li	a2,8
   c:	84aa                	mv	s1,a0
   e:	4581                	li	a1,0
  10:	00040513          	mv	a0,s0

00000014 <.LVL199>:
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL199+0x2>

0000001e <.LVL200>:
  1e:	4569                	li	a0,26
  20:	c09d                	beqz	s1,46 <.L118>
  22:	409c                	lw	a5,0(s1)
  24:	00040413          	mv	s0,s0
  28:	00000537          	lui	a0,0x0
  2c:	c01c                	sw	a5,0(s0)
  2e:	40dc                	lw	a5,4(s1)
  30:	40800613          	li	a2,1032
  34:	4581                	li	a1,0
  36:	00050513          	mv	a0,a0
  3a:	c05c                	sw	a5,4(s0)
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL200+0x1e>

00000044 <.LVL201>:
  44:	4501                	li	a0,0

00000046 <.L118>:
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)
  4a:	4492                	lw	s1,4(sp)

0000004c <.LVL202>:
  4c:	0141                	addi	sp,sp,16
  4e:	8082                	ret

Disassembly of section .text.at_command_register:

00000000 <at_command_register>:
   0:	c919                	beqz	a0,16 <.L123>
   2:	000007b7          	lui	a5,0x0
   6:	00a7a023          	sw	a0,0(a5) # 0 <at_command_register>
   a:	000007b7          	lui	a5,0x0
   e:	00b7a023          	sw	a1,0(a5) # 0 <at_command_register>
  12:	4501                	li	a0,0

00000014 <.LVL204>:
  14:	8082                	ret

00000016 <.L123>:
  16:	4521                	li	a0,8

00000018 <.LVL206>:
  18:	8082                	ret

Disassembly of section .text.at_parse:

00000000 <at_parse>:
   0:	7119                	addi	sp,sp,-128
   2:	daa6                	sw	s1,116(sp)
   4:	000004b7          	lui	s1,0x0
   8:	51800613          	li	a2,1304
   c:	4581                	li	a1,0
   e:	00048513          	mv	a0,s1
  12:	de86                	sw	ra,124(sp)
  14:	dca2                	sw	s0,120(sp)
  16:	d8ca                	sw	s2,112(sp)
  18:	d6ce                	sw	s3,108(sp)
  1a:	d4d2                	sw	s4,104(sp)
  1c:	d2d6                	sw	s5,100(sp)
  1e:	d0da                	sw	s6,96(sp)
  20:	cede                	sw	s7,92(sp)
  22:	cce2                	sw	s8,88(sp)
  24:	c8ea                	sw	s10,80(sp)
  26:	00000937          	lui	s2,0x0
  2a:	cae6                	sw	s9,84(sp)
  2c:	c6ee                	sw	s11,76(sp)
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <at_parse+0x2e>

00000036 <.LVL208>:
  36:	40800613          	li	a2,1032
  3a:	4581                	li	a1,0
  3c:	00090513          	mv	a0,s2
  40:	00090413          	mv	s0,s2
  44:	00000ab7          	lui	s5,0x0
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL208+0x12>

00000050 <.LVL209>:
  50:	4b01                	li	s6,0
  52:	4981                	li	s3,0
  54:	4a01                	li	s4,0

00000056 <.LBB28>:
  56:	00000bb7          	lui	s7,0x0
  5a:	00000c37          	lui	s8,0x0

0000005e <.LBE28>:
  5e:	000a8a93          	mv	s5,s5
  62:	00440d13          	addi	s10,s0,4 # 4 <at_parse+0x4>

00000066 <.L125>:
  66:	01710513          	addi	a0,sp,23
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.L125+0x4>

00000072 <.LVL211>:
  72:	e125                	bnez	a0,d2 <.L126>
  74:	0e0aa783          	lw	a5,224(s5) # e0 <.LVL215+0x2>
  78:	cb89                	beqz	a5,8a <.L127>
  7a:	000007b7          	lui	a5,0x0
  7e:	0047a783          	lw	a5,4(a5) # 4 <at_parse+0x4>
  82:	4585                	li	a1,1
  84:	01710513          	addi	a0,sp,23

00000088 <.LVL212>:
  88:	9782                	jalr	a5

0000008a <.L127>:
  8a:	00048d93          	mv	s11,s1
  8e:	000dac83          	lw	s9,0(s11)
  92:	120c9f63          	bnez	s9,1d0 <.L128>
  96:	01714703          	lbu	a4,23(sp)
  9a:	4da9                	li	s11,10
  9c:	401c                	lw	a5,0(s0)
  9e:	0fb71363          	bne	a4,s11,184 <.L129>
  a2:	3ff00693          	li	a3,1023
  a6:	18f6eb63          	bltu	a3,a5,23c <.L135>
  aa:	00178693          	addi	a3,a5,1
  ae:	c014                	sw	a3,0(s0)
  b0:	97a2                	add	a5,a5,s0

000000b2 <.L167>:
  b2:	00e78223          	sb	a4,4(a5)

000000b6 <.L153>:
  b6:	4985                	li	s3,1

000000b8 <.L131>:
  b8:	401c                	lw	a5,0(s0)
  ba:	3ff00713          	li	a4,1023
  be:	16f76f63          	bltu	a4,a5,23c <.L135>
  c2:	00178713          	addi	a4,a5,1
  c6:	c018                	sw	a4,0(s0)
  c8:	01714703          	lbu	a4,23(sp)
  cc:	97a2                	add	a5,a5,s0
  ce:	00e78223          	sb	a4,4(a5)

000000d2 <.L126>:
  d2:	040a0563          	beqz	s4,11c <.L136>
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.L126+0x4>

000000de <.LVL215>:
  de:	6789                	lui	a5,0x2
  e0:	41650533          	sub	a0,a0,s6
  e4:	71078793          	addi	a5,a5,1808 # 2710 <.LASF485+0x684>
  e8:	02a7fa63          	bgeu	a5,a0,11c <.L136>

000000ec <.LVL216>:
  ec:	51800613          	li	a2,1304
  f0:	4581                	li	a1,0
  f2:	00048513          	mv	a0,s1
  f6:	00000097          	auipc	ra,0x0
  fa:	000080e7          	jalr	ra # f6 <.LVL216+0xa>

000000fe <.LVL217>:
  fe:	40800613          	li	a2,1032
 102:	4581                	li	a1,0
 104:	00090513          	mv	a0,s2
 108:	00000097          	auipc	ra,0x0
 10c:	000080e7          	jalr	ra # 108 <.LVL217+0xa>

00000110 <.LVL218>:
 110:	4561                	li	a0,24
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.LVL218+0x2>

0000011a <.LVL219>:
 11a:	4a01                	li	s4,0

0000011c <.L136>:
 11c:	f40985e3          	beqz	s3,66 <.L125>
 120:	00090993          	mv	s3,s2

00000124 <.LVL221>:
 124:	0009a683          	lw	a3,0(s3)

00000128 <.LVL222>:
 128:	4781                	li	a5,0

0000012a <.LBB39>:
 12a:	0991                	addi	s3,s3,4
 12c:	03d00613          	li	a2,61
 130:	45a9                	li	a1,10
 132:	4535                	li	a0,13
 134:	02000813          	li	a6,32

00000138 <.L137>:
 138:	10d7cd63          	blt	a5,a3,252 <.L141>

0000013c <.L138>:
 13c:	0098                	addi	a4,sp,64
 13e:	973e                	add	a4,a4,a5
 140:	fc070e23          	sb	zero,-36(a4)
 144:	4d85                	li	s11,1
 146:	12078363          	beqz	a5,26c <.L140>
 14a:	000ba783          	lw	a5,0(s7) # 0 <at_parse>

0000014e <.LVL224>:
 14e:	00000737          	lui	a4,0x0
 152:	00072603          	lw	a2,0(a4) # 0 <at_parse>

00000156 <.LBB30>:
 156:	4d81                	li	s11,0
 158:	4831                	li	a6,12
 15a:	18079263          	bnez	a5,2de <.L142>

0000015e <.L146>:
 15e:	000c0793          	mv	a5,s8
 162:	4d81                	li	s11,0

00000164 <.L143>:
 164:	438c                	lw	a1,0(a5)
 166:	0868                	addi	a0,sp,28

00000168 <.LVL228>:
 168:	c23e                	sw	a5,4(sp)
 16a:	00000097          	auipc	ra,0x0
 16e:	000080e7          	jalr	ra # 16a <.LVL228+0x2>

00000172 <.LVL229>:
 172:	16050963          	beqz	a0,2e4 <.L147>
 176:	4792                	lw	a5,4(sp)
 178:	0d85                	addi	s11,s11,1
 17a:	4771                	li	a4,28
 17c:	07b1                	addi	a5,a5,12
 17e:	feed93e3          	bne	s11,a4,164 <.L143>
 182:	a0e5                	j	26a <.L148>

00000184 <.L129>:
 184:	46b5                	li	a3,13
 186:	f2d719e3          	bne	a4,a3,b8 <.L131>
 18a:	00178693          	addi	a3,a5,1
 18e:	01710513          	addi	a0,sp,23
 192:	97a2                	add	a5,a5,s0
 194:	c014                	sw	a3,0(s0)
 196:	00e78223          	sb	a4,4(a5)
 19a:	00000097          	auipc	ra,0x0
 19e:	000080e7          	jalr	ra # 19a <.L129+0x16>

000001a2 <.LVL232>:
 1a2:	f911                	bnez	a0,b6 <.L153>
 1a4:	01714783          	lbu	a5,23(sp)
 1a8:	f1b797e3          	bne	a5,s11,b6 <.L153>
 1ac:	01710513          	addi	a0,sp,23

000001b0 <.LVL233>:
 1b0:	00000097          	auipc	ra,0x0
 1b4:	000080e7          	jalr	ra # 1b0 <.LVL233>

000001b8 <.LVL234>:
 1b8:	401c                	lw	a5,0(s0)
 1ba:	3ff00713          	li	a4,1023
 1be:	06f76f63          	bltu	a4,a5,23c <.L135>
 1c2:	00178713          	addi	a4,a5,1
 1c6:	c018                	sw	a4,0(s0)
 1c8:	97a2                	add	a5,a5,s0
 1ca:	01714703          	lbu	a4,23(sp)
 1ce:	b5d5                	j	b2 <.L167>

000001d0 <.L128>:
 1d0:	4785                	li	a5,1
 1d2:	eefc93e3          	bne	s9,a5,b8 <.L131>

000001d6 <.LVL235>:
 1d6:	00000097          	auipc	ra,0x0
 1da:	000080e7          	jalr	ra # 1d6 <.LVL235>

000001de <.LVL236>:
 1de:	004da783          	lw	a5,4(s11)
 1e2:	01714603          	lbu	a2,23(sp)
 1e6:	8b2a                	mv	s6,a0

000001e8 <.LVL237>:
 1e8:	00178693          	addi	a3,a5,1
 1ec:	00dda223          	sw	a3,4(s11)
 1f0:	97ee                	add	a5,a5,s11
 1f2:	10c78923          	sb	a2,274(a5)
 1f6:	00cda783          	lw	a5,12(s11)
 1fa:	4a05                	li	s4,1
 1fc:	eaf6eee3          	bltu	a3,a5,b8 <.L131>
 200:	3ff00793          	li	a5,1023
 204:	00d7f463          	bgeu	a5,a3,20c <.L134>
 208:	000da223          	sw	zero,4(s11)

0000020c <.L134>:
 20c:	40800613          	li	a2,1032
 210:	4581                	li	a1,0
 212:	00090513          	mv	a0,s2

00000216 <.LVL238>:
 216:	00000097          	auipc	ra,0x0
 21a:	000080e7          	jalr	ra # 216 <.LVL238>

0000021e <.LVL239>:
 21e:	000005b7          	lui	a1,0x0
 222:	4655                	li	a2,21
 224:	00058593          	mv	a1,a1
 228:	856a                	mv	a0,s10
 22a:	00000097          	auipc	ra,0x0
 22e:	000080e7          	jalr	ra # 22a <.LVL239+0xc>

00000232 <.LVL240>:
 232:	47d5                	li	a5,21
 234:	c01c                	sw	a5,0(s0)

00000236 <.LVL241>:
 236:	89e6                	mv	s3,s9
 238:	4a01                	li	s4,0
 23a:	b535                	j	66 <.L125>

0000023c <.L135>:
 23c:	00000537          	lui	a0,0x0
 240:	00050513          	mv	a0,a0
 244:	00042023          	sw	zero,0(s0)
 248:	00000097          	auipc	ra,0x0
 24c:	000080e7          	jalr	ra # 248 <.L135+0xc>

00000250 <.LVL243>:
 250:	bd19                	j	66 <.L125>

00000252 <.L141>:
 252:	0009c703          	lbu	a4,0(s3)
 256:	0fd77893          	andi	a7,a4,253
 25a:	eec881e3          	beq	a7,a2,13c <.L138>
 25e:	ecb70fe3          	beq	a4,a1,13c <.L138>
 262:	eca70de3          	beq	a4,a0,13c <.L138>
 266:	03079d63          	bne	a5,a6,2a0 <.L139>

0000026a <.L148>:
 26a:	4d8d                	li	s11,3

0000026c <.L140>:
 26c:	0004a703          	lw	a4,0(s1) # 0 <at_parse>
 270:	4785                	li	a5,1
 272:	00f71e63          	bne	a4,a5,28e <.L149>
 276:	47dd                	li	a5,23
 278:	00fd8b63          	beq	s11,a5,28e <.L149>
 27c:	51800613          	li	a2,1304
 280:	4581                	li	a1,0
 282:	00048513          	mv	a0,s1
 286:	00000097          	auipc	ra,0x0
 28a:	000080e7          	jalr	ra # 286 <.L140+0x1a>

0000028e <.L149>:
 28e:	856e                	mv	a0,s11
 290:	00000097          	auipc	ra,0x0
 294:	000080e7          	jalr	ra # 290 <.L149+0x2>

00000298 <.LVL248>:
 298:	4981                	li	s3,0
 29a:	00042023          	sw	zero,0(s0)

0000029e <.LVL249>:
 29e:	b3e1                	j	66 <.L125>

000002a0 <.L139>:
 2a0:	01c10893          	addi	a7,sp,28
 2a4:	98be                	add	a7,a7,a5
 2a6:	0985                	addi	s3,s3,1

000002a8 <.LVL251>:
 2a8:	00e88023          	sb	a4,0(a7)

000002ac <.LVL252>:
 2ac:	0785                	addi	a5,a5,1

000002ae <.LVL253>:
 2ae:	b569                	j	138 <.L137>

000002b0 <.L145>:
 2b0:	030d8733          	mul	a4,s11,a6

000002b4 <.LBB35>:
 2b4:	0868                	addi	a0,sp,28

000002b6 <.LVL255>:
 2b6:	c23e                	sw	a5,4(sp)
 2b8:	c632                	sw	a2,12(sp)
 2ba:	00e785b3          	add	a1,a5,a4
 2be:	418c                	lw	a1,0(a1)
 2c0:	c43a                	sw	a4,8(sp)
 2c2:	00000097          	auipc	ra,0x0
 2c6:	000080e7          	jalr	ra # 2c2 <.LVL255+0xc>

000002ca <.LVL256>:
 2ca:	000007b7          	lui	a5,0x0
 2ce:	4722                	lw	a4,8(sp)
 2d0:	00078693          	mv	a3,a5
 2d4:	c905                	beqz	a0,304 <.L144>

000002d6 <.LVL257>:
 2d6:	4632                	lw	a2,12(sp)
 2d8:	4792                	lw	a5,4(sp)
 2da:	0d85                	addi	s11,s11,1

000002dc <.LVL258>:
 2dc:	4831                	li	a6,12

000002de <.L142>:
 2de:	fccdc9e3          	blt	s11,a2,2b0 <.L145>
 2e2:	bdb5                	j	15e <.L146>

000002e4 <.L147>:
 2e4:	47b1                	li	a5,12
 2e6:	02fd8db3          	mul	s11,s11,a5

000002ea <.LVL261>:
 2ea:	000007b7          	lui	a5,0x0
 2ee:	00078793          	mv	a5,a5
 2f2:	9dbe                	add	s11,s11,a5
 2f4:	004da783          	lw	a5,4(s11)

000002f8 <.L168>:
 2f8:	dbad                	beqz	a5,26a <.L148>
 2fa:	cc4e                	sw	s3,24(sp)
 2fc:	0828                	addi	a0,sp,24
 2fe:	9782                	jalr	a5

00000300 <.LVL263>:
 300:	8daa                	mv	s11,a0
 302:	b7ad                	j	26c <.L140>

00000304 <.L144>:
 304:	429c                	lw	a5,0(a3)
 306:	97ba                	add	a5,a5,a4
 308:	43dc                	lw	a5,4(a5)
 30a:	b7fd                	j	2f8 <.L168>

Disassembly of section .text.at_callback_do:

00000000 <at_callback_do>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	c19c                	sw	a5,0(a1)
   a:	000007b7          	lui	a5,0x0
   e:	0007a303          	lw	t1,0(a5) # 0 <at_callback_do>
  12:	00030463          	beqz	t1,1a <.L170>
  16:	4601                	li	a2,0
  18:	8302                	jr	t1

0000001a <.L170>:
  1a:	4509                	li	a0,2

0000001c <.LVL267>:
  1c:	8082                	ret

Disassembly of section .text.ble_sync_mode:

00000000 <ble_sync_mode>:
   0:	da010113          	addi	sp,sp,-608
   4:	24812c23          	sw	s0,600(sp)
   8:	1040                	addi	s0,sp,36
   a:	24912a23          	sw	s1,596(sp)
   e:	10000613          	li	a2,256
  12:	84aa                	mv	s1,a0
  14:	4581                	li	a1,0
  16:	8522                	mv	a0,s0

00000018 <.LVL269>:
  18:	25212823          	sw	s2,592(sp)
  1c:	25312623          	sw	s3,588(sp)
  20:	25412423          	sw	s4,584(sp)
  24:	24112e23          	sw	ra,604(sp)
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL269+0x10>

00000030 <.LVL270>:
  30:	6785                	lui	a5,0x1
  32:	d0078793          	addi	a5,a5,-768 # d00 <.LLST35>
  36:	00000a37          	lui	s4,0x0
  3a:	ca3e                	sw	a5,20(sp)
  3c:	000009b7          	lui	s3,0x0
  40:	000a0793          	mv	a5,s4
  44:	cc3e                	sw	a5,24(sp)
  46:	00000937          	lui	s2,0x0
  4a:	00098793          	mv	a5,s3
  4e:	ce3e                	sw	a5,28(sp)
  50:	00090793          	mv	a5,s2
  54:	d03e                	sw	a5,32(sp)
  56:	409c                	lw	a5,0(s1)
  58:	00010623          	sb	zero,12(sp)
  5c:	c822                	sw	s0,16(sp)
  5e:	0007c703          	lbu	a4,0(a5)
  62:	03f00693          	li	a3,63
  66:	06d71163          	bne	a4,a3,c8 <.L172>
  6a:	00000437          	lui	s0,0x0
  6e:	00040513          	mv	a0,s0
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL270+0x42>

0000007a <.LVL271>:
  7a:	000007b7          	lui	a5,0x0
  7e:	0007a783          	lw	a5,0(a5) # 0 <ble_sync_mode>
  82:	0498                	addi	a4,sp,576
  84:	00000537          	lui	a0,0x0
  88:	078a                	slli	a5,a5,0x2
  8a:	97ba                	add	a5,a5,a4
  8c:	dd87a583          	lw	a1,-552(a5)
  90:	00050513          	mv	a0,a0
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL271+0x1a>

0000009c <.LVL272>:
  9c:	00040513          	mv	a0,s0
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL272+0x4>

000000a8 <.LVL273>:
  a8:	4501                	li	a0,0

000000aa <.L173>:
  aa:	25c12083          	lw	ra,604(sp)
  ae:	25812403          	lw	s0,600(sp)
  b2:	25412483          	lw	s1,596(sp)

000000b6 <.LVL274>:
  b6:	25012903          	lw	s2,592(sp)
  ba:	24c12983          	lw	s3,588(sp)
  be:	24812a03          	lw	s4,584(sp)
  c2:	26010113          	addi	sp,sp,608
  c6:	8082                	ret

000000c8 <.L172>:
  c8:	03d00693          	li	a3,61
  cc:	00d70463          	beq	a4,a3,d4 <.L174>

000000d0 <.L175>:
  d0:	4511                	li	a0,4
  d2:	bfe1                	j	aa <.L173>

000000d4 <.L174>:
  d4:	0785                	addi	a5,a5,1
  d6:	c09c                	sw	a5,0(s1)
  d8:	0034                	addi	a3,sp,8
  da:	4605                	li	a2,1
  dc:	006c                	addi	a1,sp,12
  de:	8526                	mv	a0,s1
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.L174+0xc>

000000e8 <.LVL276>:
  e8:	f565                	bnez	a0,d0 <.L175>
  ea:	47a2                	lw	a5,8(sp)
  ec:	fef052e3          	blez	a5,d0 <.L175>
  f0:	000a0593          	mv	a1,s4
  f4:	8522                	mv	a0,s0

000000f6 <.LVL277>:
  f6:	00000097          	auipc	ra,0x0
  fa:	000080e7          	jalr	ra # f6 <.LVL277>

000000fe <.LVL278>:
  fe:	ed19                	bnez	a0,11c <.L176>
 100:	000007b7          	lui	a5,0x0
 104:	12012623          	sw	zero,300(sp)
 108:	0007a023          	sw	zero,0(a5) # 0 <ble_sync_mode>

0000010c <.L177>:
 10c:	124c                	addi	a1,sp,292
 10e:	04100513          	li	a0,65
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L177+0x6>

0000011a <.LVL279>:
 11a:	bf41                	j	aa <.L173>

0000011c <.L176>:
 11c:	00098593          	mv	a1,s3
 120:	8522                	mv	a0,s0
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.L176+0x6>

0000012a <.LVL280>:
 12a:	4785                	li	a5,1
 12c:	c911                	beqz	a0,140 <.L180>
 12e:	00090593          	mv	a1,s2
 132:	8522                	mv	a0,s0
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL280+0xa>

0000013c <.LVL281>:
 13c:	f951                	bnez	a0,d0 <.L175>
 13e:	4789                	li	a5,2

00000140 <.L180>:
 140:	00000737          	lui	a4,0x0
 144:	12f12623          	sw	a5,300(sp)
 148:	00f72023          	sw	a5,0(a4) # 0 <ble_sync_mode>
 14c:	b7c1                	j	10c <.L177>

Disassembly of section .text.set_ip_handler:

00000000 <set_ip_handler>:
   0:	7149                	addi	sp,sp,-368
   2:	16812423          	sw	s0,360(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL283>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	16112623          	sw	ra,364(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL283+0xc>

00000024 <.LVL284>:
  24:	4715                	li	a4,5
  26:	00e10423          	sb	a4,8(sp)
  2a:	00fc                	addi	a5,sp,76

0000002c <.LVL285>:
  2c:	00e10a23          	sb	a4,20(sp)
  30:	0894                	addi	a3,sp,80
  32:	02e10023          	sb	a4,32(sp)
  36:	02e10623          	sb	a4,44(sp)
  3a:	02e10c23          	sb	a4,56(sp)
  3e:	08f8                	addi	a4,sp,92
  40:	c63e                	sw	a5,12(sp)
  42:	cc36                	sw	a3,24(sp)
  44:	de3a                	sw	a4,60(sp)
  46:	08d4                	addi	a3,sp,84
  48:	6785                	lui	a5,0x1

0000004a <.LVL286>:
  4a:	4018                	lw	a4,0(s0)
  4c:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF433+0x1>
  50:	d236                	sw	a3,36(sp)
  52:	08b4                	addi	a3,sp,88
  54:	c83e                	sw	a5,16(sp)
  56:	ce3e                	sw	a5,28(sp)
  58:	d43e                	sw	a5,40(sp)
  5a:	da3e                	sw	a5,52(sp)
  5c:	c0be                	sw	a5,64(sp)
  5e:	d836                	sw	a3,48(sp)
  60:	00074683          	lbu	a3,0(a4)
  64:	03f00793          	li	a5,63
  68:	02f69163          	bne	a3,a5,8a <.L182>
  6c:	00cc                	addi	a1,sp,68
  6e:	04300513          	li	a0,67

00000072 <.L188>:
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L188>

0000007a <.LVL288>:
  7a:	87aa                	mv	a5,a0

0000007c <.L183>:
  7c:	16c12083          	lw	ra,364(sp)
  80:	16812403          	lw	s0,360(sp)

00000084 <.LVL289>:
  84:	853e                	mv	a0,a5
  86:	6175                	addi	sp,sp,368

00000088 <.LVL290>:
  88:	8082                	ret

0000008a <.L182>:
  8a:	03d00613          	li	a2,61
  8e:	478d                	li	a5,3
  90:	fec696e3          	bne	a3,a2,7c <.L183>
  94:	0705                	addi	a4,a4,1
  96:	c018                	sw	a4,0(s0)
  98:	0054                	addi	a3,sp,4
  9a:	4615                	li	a2,5
  9c:	002c                	addi	a1,sp,8
  9e:	8522                	mv	a0,s0
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.L182+0x16>

000000a8 <.LVL292>:
  a8:	4791                	li	a5,4
  aa:	f969                	bnez	a0,7c <.L183>
  ac:	4712                	lw	a4,4(sp)
  ae:	fce057e3          	blez	a4,7c <.L183>
  b2:	00cc                	addi	a1,sp,68
  b4:	04200513          	li	a0,66

000000b8 <.LVL293>:
  b8:	bf6d                	j	72 <.L188>

Disassembly of section .text.set_reconnect_enable:

00000000 <set_reconnect_enable>:
   0:	000007b7          	lui	a5,0x0
   4:	4705                	li	a4,1
   6:	00e7a023          	sw	a4,0(a5) # 0 <set_reconnect_enable>
   a:	8082                	ret

Disassembly of section .text.set_reconnect_disable:

00000000 <set_reconnect_disable>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a023          	sw	zero,0(a5) # 0 <set_reconnect_disable>
   8:	8082                	ret

Disassembly of section .text.get_reconnect_enable_status:

00000000 <get_reconnect_enable_status>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <get_reconnect_enable_status>
   8:	8082                	ret

Disassembly of section .text.at_get_ssid_psk:

00000000 <at_get_ssid_psk>:
   0:	411c                	lw	a5,0(a0)

00000002 <.LVL295>:
   2:	4701                	li	a4,0
   4:	05c00813          	li	a6,92
   8:	02200893          	li	a7,34
   c:	02c00313          	li	t1,44
  10:	4e35                	li	t3,13
  12:	06100513          	li	a0,97

00000016 <.L198>:
  16:	0007c683          	lbu	a3,0(a5)
  1a:	01069a63          	bne	a3,a6,2e <.L193>

0000001e <.LVL297>:
  1e:	0017c683          	lbu	a3,1(a5)
  22:	0705                	addi	a4,a4,1
  24:	0789                	addi	a5,a5,2

00000026 <.LVL299>:
  26:	00d58023          	sb	a3,0(a1) # 0 <at_get_ssid_psk>

0000002a <.L201>:
  2a:	0585                	addi	a1,a1,1
  2c:	a029                	j	36 <.L194>

0000002e <.L193>:
  2e:	01169963          	bne	a3,a7,40 <.L195>
  32:	0785                	addi	a5,a5,1
  34:	0705                	addi	a4,a4,1

00000036 <.L194>:
  36:	0705                	addi	a4,a4,1
  38:	fce55fe3          	bge	a0,a4,16 <.L198>
  3c:	4511                	li	a0,4
  3e:	8082                	ret

00000040 <.L195>:
  40:	00669663          	bne	a3,t1,4c <.L196>

00000044 <.LVL305>:
  44:	0785                	addi	a5,a5,1
  46:	0705                	addi	a4,a4,1
  48:	85b2                	mv	a1,a2
  4a:	b7f5                	j	36 <.L194>

0000004c <.L196>:
  4c:	01c68663          	beq	a3,t3,58 <.L199>
  50:	00d58023          	sb	a3,0(a1)
  54:	0785                	addi	a5,a5,1

00000056 <.LVL309>:
  56:	bfd1                	j	2a <.L201>

00000058 <.L199>:
  58:	4501                	li	a0,0
  5a:	8082                	ret

Disassembly of section .text.ap_cfg_handler:

00000000 <ap_cfg_handler>:
   0:	df010113          	addi	sp,sp,-528
   4:	20812423          	sw	s0,520(sp)
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL312>:
   e:	00050513          	mv	a0,a0
  12:	20112623          	sw	ra,524(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL312+0x8>

0000001e <.LVL313>:
  1e:	20000613          	li	a2,512
  22:	4581                	li	a1,0
  24:	850a                	mv	a0,sp
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL313+0x8>

0000002e <.LVL314>:
  2e:	401c                	lw	a5,0(s0)
  30:	03f00693          	li	a3,63
  34:	0007c703          	lbu	a4,0(a5)
  38:	00d71d63          	bne	a4,a3,52 <.L203>
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL314+0xe>

00000044 <.L204>:
  44:	20c12083          	lw	ra,524(sp)
  48:	20812403          	lw	s0,520(sp)

0000004c <.LVL316>:
  4c:	21010113          	addi	sp,sp,528
  50:	8082                	ret

00000052 <.L203>:
  52:	03d00693          	li	a3,61
  56:	00d70463          	beq	a4,a3,5e <.L205>

0000005a <.L206>:
  5a:	4511                	li	a0,4
  5c:	b7e5                	j	44 <.L204>

0000005e <.L205>:
  5e:	0785                	addi	a5,a5,1
  60:	c01c                	sw	a5,0(s0)
  62:	0210                	addi	a2,sp,256
  64:	858a                	mv	a1,sp
  66:	8522                	mv	a0,s0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.L205+0xa>

00000070 <.LVL318>:
  70:	f56d                	bnez	a0,5a <.L206>
  72:	4681                	li	a3,0
  74:	4601                	li	a2,0
  76:	020c                	addi	a1,sp,256
  78:	850a                	mv	a0,sp

0000007a <.LVL319>:
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL319>

00000082 <.LVL320>:
  82:	b7c9                	j	44 <.L204>

Disassembly of section .text.join_ap_handler:

00000000 <join_ap_handler>:
   0:	df010113          	addi	sp,sp,-528
   4:	20812423          	sw	s0,520(sp)
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL322>:
   e:	00050513          	mv	a0,a0
  12:	20112623          	sw	ra,524(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL322+0x8>

0000001e <.LVL323>:
  1e:	20000613          	li	a2,512
  22:	4581                	li	a1,0
  24:	850a                	mv	a0,sp
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL323+0x8>

0000002e <.LVL324>:
  2e:	401c                	lw	a5,0(s0)
  30:	03f00693          	li	a3,63
  34:	0007c703          	lbu	a4,0(a5)
  38:	00d71f63          	bne	a4,a3,56 <.L209>
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL324+0xe>

00000044 <.L217>:
  44:	87aa                	mv	a5,a0

00000046 <.L210>:
  46:	20c12083          	lw	ra,524(sp)
  4a:	20812403          	lw	s0,520(sp)
  4e:	853e                	mv	a0,a5
  50:	21010113          	addi	sp,sp,528
  54:	8082                	ret

00000056 <.L209>:
  56:	03d00693          	li	a3,61
  5a:	02d70b63          	beq	a4,a3,90 <.L211>
  5e:	00000537          	lui	a0,0x0
  62:	858a                	mv	a1,sp
  64:	00050513          	mv	a0,a0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.L209+0x12>

00000070 <.LVL328>:
  70:	00000537          	lui	a0,0x0
  74:	020c                	addi	a1,sp,256
  76:	00050513          	mv	a0,a0
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL328+0xa>

00000082 <.LVL329>:
  82:	020c                	addi	a1,sp,256
  84:	850a                	mv	a0,sp
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL329+0x4>

0000008e <.LVL330>:
  8e:	bf5d                	j	44 <.L217>

00000090 <.L211>:
  90:	0785                	addi	a5,a5,1
  92:	c01c                	sw	a5,0(s0)
  94:	0210                	addi	a2,sp,256
  96:	858a                	mv	a1,sp
  98:	8522                	mv	a0,s0
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.L211+0xa>

000000a2 <.LVL331>:
  a2:	4791                	li	a5,4
  a4:	f14d                	bnez	a0,46 <.L210>
  a6:	00000537          	lui	a0,0x0

000000aa <.LVL332>:
  aa:	0210                	addi	a2,sp,256
  ac:	858a                	mv	a1,sp
  ae:	00050513          	mv	a0,a0
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.LVL332+0x8>

000000ba <.LVL333>:
  ba:	020c                	addi	a1,sp,256
  bc:	850a                	mv	a0,sp
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL333+0x4>

000000c6 <.LVL334>:
  c6:	87aa                	mv	a5,a0

000000c8 <.LVL335>:
  c8:	dd3d                	beqz	a0,46 <.L210>
  ca:	00000437          	lui	s0,0x0

000000ce <.LVL336>:
  ce:	00040513          	mv	a0,s0

000000d2 <.LVL337>:
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL337>

000000da <.LVL338>:
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.LVL338>

000000e2 <.LVL339>:
  e2:	85aa                	mv	a1,a0
  e4:	00000537          	lui	a0,0x0
  e8:	00050513          	mv	a0,a0
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL339+0xa>

000000f4 <.LVL340>:
  f4:	00040513          	mv	a0,s0
  f8:	00000097          	auipc	ra,0x0
  fc:	000080e7          	jalr	ra # f8 <.LVL340+0x4>

00000100 <.LVL341>:
 100:	4789                	li	a5,2
 102:	b791                	j	46 <.L210>
