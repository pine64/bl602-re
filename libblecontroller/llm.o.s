
llm.o:     file format elf32-littleriscv


Disassembly of section .text.llm_wlpub_addr_set:

00000000 <llm_wlpub_addr_set>:
   0:	4799                	li	a5,6
   2:	02f50533          	mul	a0,a0,a5

00000006 <.LVL1>:
   6:	280087b7          	lui	a5,0x28008
   a:	1fe78793          	addi	a5,a5,510 # 280081fe <.LASF726+0x280019be>
   e:	00658713          	addi	a4,a1,6
  12:	953e                	add	a0,a0,a5

00000014 <.L2>:
  14:	0015c783          	lbu	a5,1(a1)
  18:	0005c683          	lbu	a3,0(a1)
  1c:	0589                	addi	a1,a1,2

0000001e <.LVL3>:
  1e:	07a2                	slli	a5,a5,0x8
  20:	8fd5                	or	a5,a5,a3

00000022 <.LBB312>:
  22:	00f51023          	sh	a5,0(a0)

00000026 <.LVL5>:
  26:	0509                	addi	a0,a0,2

00000028 <.LBE312>:
  28:	feb716e3          	bne	a4,a1,14 <.L2>

0000002c <.LBE306>:
  2c:	8082                	ret

Disassembly of section .text.llm_wlpriv_addr_set:

00000000 <llm_wlpriv_addr_set>:
   0:	4799                	li	a5,6
   2:	02f50533          	mul	a0,a0,a5

00000006 <.LVL7>:
   6:	280087b7          	lui	a5,0x28008
   a:	21678793          	addi	a5,a5,534 # 28008216 <.LASF726+0x280019d6>
   e:	00658713          	addi	a4,a1,6
  12:	953e                	add	a0,a0,a5

00000014 <.L5>:
  14:	0015c783          	lbu	a5,1(a1)
  18:	0005c683          	lbu	a3,0(a1)
  1c:	0589                	addi	a1,a1,2

0000001e <.LVL9>:
  1e:	07a2                	slli	a5,a5,0x8
  20:	8fd5                	or	a5,a5,a3

00000022 <.LBB319>:
  22:	00f51023          	sh	a5,0(a0)

00000026 <.LVL11>:
  26:	0509                	addi	a0,a0,2

00000028 <.LBE319>:
  28:	feb716e3          	bne	a4,a1,14 <.L5>

0000002c <.LBE313>:
  2c:	8082                	ret

Disassembly of section .text.llm_con_req_ind:

00000000 <llm_con_req_ind>:
   0:	711d                	addi	sp,sp,-96

00000002 <.LVL13>:
   2:	caa6                	sw	s1,84(sp)

00000004 <.LBB325>:
   4:	44b9                	li	s1,14
   6:	029504b3          	mul	s1,a0,s1

0000000a <.LBE325>:
   a:	c4d2                	sw	s4,72(sp)

0000000c <.LBB326>:
   c:	28008a37          	lui	s4,0x28008
  10:	3d6a0793          	addi	a5,s4,982 # 280083d6 <.LASF726+0x28001b96>

00000014 <.LBE326>:
  14:	cca2                	sw	s0,88(sp)
  16:	c8ca                	sw	s2,80(sp)
  18:	c6ce                	sw	s3,76(sp)
  1a:	ce86                	sw	ra,92(sp)
  1c:	842e                	mv	s0,a1

0000001e <.LBB327>:
  1e:	00000937          	lui	s2,0x0

00000022 <.LBB331>:
  22:	97a6                	add	a5,a5,s1
  24:	0007d583          	lhu	a1,0(a5)

00000028 <.LBB332>:
  28:	00092783          	lw	a5,0(s2) # 0 <llm_con_req_ind>
  2c:	02200613          	li	a2,34

00000030 <.LBE332>:
  30:	89aa                	mv	s3,a0

00000032 <.LBB333>:
  32:	95d2                	add	a1,a1,s4

00000034 <.LVL15>:
  34:	0868                	addi	a0,sp,28

00000036 <.LVL16>:
  36:	9782                	jalr	a5

00000038 <.LBB334>:
  38:	03615783          	lhu	a5,54(sp)
  3c:	6705                	lui	a4,0x1
  3e:	c7670613          	addi	a2,a4,-906 # c76 <.LLST152+0x6>
  42:	ff678693          	addi	a3,a5,-10
  46:	06c2                	slli	a3,a3,0x10
  48:	82c1                	srli	a3,a3,0x10
  4a:	14d66a63          	bltu	a2,a3,19e <.L7>
  4e:	03215583          	lhu	a1,50(sp)
  52:	c7a70713          	addi	a4,a4,-902
  56:	ffa58613          	addi	a2,a1,-6
  5a:	0642                	slli	a2,a2,0x10
  5c:	8241                	srli	a2,a2,0x10
  5e:	14c76063          	bltu	a4,a2,19e <.L7>
  62:	03415683          	lhu	a3,52(sp)
  66:	1f300713          	li	a4,499
  6a:	12d76a63          	bltu	a4,a3,19e <.L7>
  6e:	0685                	addi	a3,a3,1
  70:	02b686b3          	mul	a3,a3,a1
  74:	078a                	slli	a5,a5,0x2
  76:	12f6f463          	bgeu	a3,a5,19e <.L7>
  7a:	00610513          	addi	a0,sp,6
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LBB334+0x46>

00000086 <.LVL18>:
  86:	10051c63          	bnez	a0,19e <.L7>
  8a:	20047413          	andi	s0,s0,512
  8e:	12041063          	bnez	s0,1ae <.L11>

00000092 <.LBB335>:
  92:	3d8a0793          	addi	a5,s4,984
  96:	97a6                	add	a5,a5,s1
  98:	0007d403          	lhu	s0,0(a5)
  9c:	0442                	slli	s0,s0,0x10
  9e:	8041                	srli	s0,s0,0x10

000000a0 <.LBE335>:
  a0:	10040763          	beqz	s0,1ae <.L11>

000000a4 <.LBB337>:
  a4:	01840593          	addi	a1,s0,24

000000a8 <.LBB341>:
  a8:	00092783          	lw	a5,0(s2)
  ac:	05c2                	slli	a1,a1,0x10
  ae:	81c1                	srli	a1,a1,0x10
  b0:	4619                	li	a2,6
  b2:	95d2                	add	a1,a1,s4
  b4:	0868                	addi	a0,sp,28

000000b6 <.LVL22>:
  b6:	9782                	jalr	a5

000000b8 <.LBB342>:
  b8:	03400713          	li	a4,52
  bc:	dd240793          	addi	a5,s0,-558
  c0:	02e7d7b3          	divu	a5,a5,a4
  c4:	0ff7f793          	andi	a5,a5,255

000000c8 <.LBB346>:
  c8:	02e787b3          	mul	a5,a5,a4
  cc:	22ea0713          	addi	a4,s4,558
  d0:	97ba                	add	a5,a5,a4
  d2:	0007d703          	lhu	a4,0(a5)

000000d6 <.LBB347>:
  d6:	0007d783          	lhu	a5,0(a5)

000000da <.LBB349>:
  da:	8b05                	andi	a4,a4,1

000000dc <.LBE349>:
  dc:	8b89                	andi	a5,a5,2
  de:	8fd9                	or	a5,a5,a4
  e0:	00f10b23          	sb	a5,22(sp)

000000e4 <.L12>:
  e4:	01614583          	lbu	a1,22(sp)
  e8:	4701                	li	a4,0
  ea:	4681                	li	a3,0
  ec:	00610613          	addi	a2,sp,6
  f0:	0868                	addi	a0,sp,28
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.L12+0xe>

000000fa <.LVL27>:
  fa:	e155                	bnez	a0,19e <.L7>

000000fc <.LBB350>:
  fc:	00615603          	lhu	a2,6(sp)
 100:	01614583          	lbu	a1,22(sp)
 104:	0868                	addi	a0,sp,28
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.LBB350+0xa>

0000010e <.LVL29>:
 10e:	ed25                	bnez	a0,186 <.L13>
 110:	03215783          	lhu	a5,50(sp)
 114:	00811723          	sh	s0,14(sp)
 118:	4619                	li	a2,6
 11a:	00f11423          	sh	a5,8(sp)
 11e:	03415783          	lhu	a5,52(sp)
 122:	086c                	addi	a1,sp,28
 124:	0808                	addi	a0,sp,16

00000126 <.LVL30>:
 126:	00f11523          	sh	a5,10(sp)
 12a:	03615783          	lhu	a5,54(sp)
 12e:	00000437          	lui	s0,0x0
 132:	00040413          	mv	s0,s0
 136:	00f11623          	sh	a5,12(sp)
 13a:	03d14783          	lbu	a5,61(sp)
 13e:	0057d713          	srli	a4,a5,0x5
 142:	8bfd                	andi	a5,a5,31
 144:	00f10ba3          	sb	a5,23(sp)
 148:	00092783          	lw	a5,0(s2)
 14c:	00e10c23          	sb	a4,24(sp)
 150:	9782                	jalr	a5

00000152 <.LVL31>:
 152:	00615683          	lhu	a3,6(sp)
 156:	4430                	lw	a2,72(s0)
 158:	874e                	mv	a4,s3
 15a:	086c                	addi	a1,sp,28
 15c:	0028                	addi	a0,sp,8
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL31+0xc>

00000166 <.LVL32>:
 166:	85aa                	mv	a1,a0
 168:	c428                	sw	a0,72(s0)
 16a:	0028                	addi	a0,sp,8
 16c:	00000097          	auipc	ra,0x0
 170:	000080e7          	jalr	ra # 16c <.LVL32+0x6>

00000174 <.LVL33>:
 174:	00615503          	lhu	a0,6(sp)
 178:	182c                	addi	a1,sp,56
 17a:	04042423          	sw	zero,72(s0) # 48 <.LBB334+0x10>
 17e:	00000097          	auipc	ra,0x0
 182:	000080e7          	jalr	ra # 17e <.LVL33+0xa>

00000186 <.L13>:
 186:	4501                	li	a0,0
 188:	00000097          	auipc	ra,0x0
 18c:	000080e7          	jalr	ra # 188 <.L13+0x2>

00000190 <.LVL35>:
 190:	00f57593          	andi	a1,a0,15
 194:	4501                	li	a0,0

00000196 <.LVL36>:
 196:	00000097          	auipc	ra,0x0
 19a:	000080e7          	jalr	ra # 196 <.LVL36>

0000019e <.L7>:
 19e:	40f6                	lw	ra,92(sp)
 1a0:	4466                	lw	s0,88(sp)
 1a2:	44d6                	lw	s1,84(sp)
 1a4:	4946                	lw	s2,80(sp)
 1a6:	49b6                	lw	s3,76(sp)
 1a8:	4a26                	lw	s4,72(sp)
 1aa:	6125                	addi	sp,sp,96
 1ac:	8082                	ret

000001ae <.L11>:
 1ae:	280087b7          	lui	a5,0x28008
 1b2:	3d278793          	addi	a5,a5,978 # 280083d2 <.LASF726+0x28001b92>
 1b6:	94be                	add	s1,s1,a5
 1b8:	0004d783          	lhu	a5,0(s1)

000001bc <.LBE352>:
 1bc:	4401                	li	s0,0

000001be <.LBB355>:
 1be:	8399                	srli	a5,a5,0x6
 1c0:	8b85                	andi	a5,a5,1

000001c2 <.LBE355>:
 1c2:	00f10b23          	sb	a5,22(sp)
 1c6:	bf39                	j	e4 <.L12>

Disassembly of section .text.llm_le_adv_report_ind:

00000000 <llm_le_adv_report_ind>:
   0:	715d                	addi	sp,sp,-80
   2:	da56                	sw	s5,52(sp)

00000004 <.LBB428>:
   4:	4ab9                	li	s5,14
   6:	03550ab3          	mul	s5,a0,s5
   a:	280087b7          	lui	a5,0x28008

0000000e <.LBE428>:
   e:	de4e                	sw	s3,60(sp)
  10:	dc52                	sw	s4,56(sp)

00000012 <.LBB429>:
  12:	3d278993          	addi	s3,a5,978 # 280083d2 <.LASF726+0x28001b92>

00000016 <.LBB430>:
  16:	3d678a13          	addi	s4,a5,982

0000001a <.LBE430>:
  1a:	c0ca                	sw	s2,64(sp)
  1c:	d65e                	sw	s7,44(sp)
  1e:	c686                	sw	ra,76(sp)
  20:	c4a2                	sw	s0,72(sp)
  22:	c2a6                	sw	s1,68(sp)
  24:	d85a                	sw	s6,48(sp)
  26:	d462                	sw	s8,40(sp)

00000028 <.LBB435>:
  28:	99d6                	add	s3,s3,s5

0000002a <.LBB436>:
  2a:	9a56                	add	s4,s4,s5

0000002c <.LBB437>:
  2c:	0009d483          	lhu	s1,0(s3)

00000030 <.LBB438>:
  30:	00000937          	lui	s2,0x0

00000034 <.LBB442>:
  34:	000a5583          	lhu	a1,0(s4)

00000038 <.LBB443>:
  38:	00092703          	lw	a4,0(s2) # 0 <llm_le_adv_report_ind>
  3c:	4619                	li	a2,6
  3e:	95be                	add	a1,a1,a5
  40:	0028                	addi	a0,sp,8

00000042 <.LVL42>:
  42:	9702                	jalr	a4

00000044 <.LBE443>:
  44:	00000bb7          	lui	s7,0x0
  48:	000b8793          	mv	a5,s7
  4c:	4b9c                	lw	a5,16(a5)

0000004e <.LBB444>:
  4e:	88bd                	andi	s1,s1,15

00000050 <.LBB445>:
  50:	000b8b93          	mv	s7,s7
  54:	00a7c703          	lbu	a4,10(a5)
  58:	4785                	li	a5,1
  5a:	00f70463          	beq	a4,a5,62 <.L19>
  5e:	04f49763          	bne	s1,a5,ac <.L20>

00000062 <.L19>:
  62:	008ba403          	lw	s0,8(s7) # 8 <.LBB428+0x4>

00000066 <.L21>:
  66:	1c041663          	bnez	s0,232 <.L24>
  6a:	00000b37          	lui	s6,0x0
  6e:	008b0513          	addi	a0,s6,8 # 8 <.LBB428+0x4>
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L21+0xc>

0000007a <.LVL47>:
  7a:	47a9                	li	a5,10
  7c:	18f50f63          	beq	a0,a5,21a <.L18>
  80:	4581                	li	a1,0
  82:	4531                	li	a0,12
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL47+0xa>

0000008c <.LVL48>:
  8c:	00092783          	lw	a5,0(s2)
  90:	842a                	mv	s0,a0
  92:	002c                	addi	a1,sp,8

00000094 <.LVL50>:
  94:	4619                	li	a2,6
  96:	0515                	addi	a0,a0,5
  98:	9782                	jalr	a5

0000009a <.LVL51>:
  9a:	85a2                	mv	a1,s0
  9c:	00940223          	sb	s1,4(s0)
  a0:	008b0513          	addi	a0,s6,8
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL51+0xa>

000000ac <.L20>:
  ac:	000007b7          	lui	a5,0x0
  b0:	0007c783          	lbu	a5,0(a5) # 0 <llm_le_adv_report_ind>
  b4:	0ff7f793          	andi	a5,a5,255
  b8:	16079163          	bnez	a5,21a <.L18>
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.L20+0x10>

000000c4 <.LVL53>:
  c4:	47d1                	li	a5,20
  c6:	14a7ea63          	bltu	a5,a0,21a <.L18>

000000ca <.LBB452>:
  ca:	28008c37          	lui	s8,0x28008
  ce:	3d8c0793          	addi	a5,s8,984 # 280083d8 <.LASF726+0x28001b98>
  d2:	97d6                	add	a5,a5,s5
  d4:	0007d403          	lhu	s0,0(a5)

000000d8 <.LBB458>:
  d8:	3d0c0793          	addi	a5,s8,976
  dc:	97d6                	add	a5,a5,s5
  de:	0007db03          	lhu	s6,0(a5)

000000e2 <.LBB462>:
  e2:	000a5583          	lhu	a1,0(s4)

000000e6 <.LBB465>:
  e6:	00092783          	lw	a5,0(s2)
  ea:	4619                	li	a2,6

000000ec <.LBE465>:
  ec:	0599                	addi	a1,a1,6

000000ee <.LBB469>:
  ee:	05c2                	slli	a1,a1,0x10
  f0:	81c1                	srli	a1,a1,0x10
  f2:	95e2                	add	a1,a1,s8
  f4:	0808                	addi	a0,sp,16
  f6:	9782                	jalr	a5

000000f8 <.LBB470>:
  f8:	000a5583          	lhu	a1,0(s4)

000000fc <.LBB473>:
  fc:	00092783          	lw	a5,0(s2)
 100:	4619                	li	a2,6
 102:	95e2                	add	a1,a1,s8
 104:	0828                	addi	a0,sp,24
 106:	9782                	jalr	a5

00000108 <.LBB476>:
 108:	0442                	slli	s0,s0,0x10

0000010a <.LBB477>:
 10a:	0b42                	slli	s6,s6,0x10

0000010c <.LBE477>:
 10c:	4785                	li	a5,1

0000010e <.LBB478>:
 10e:	8041                	srli	s0,s0,0x10

00000110 <.LBB479>:
 110:	010b5b13          	srli	s6,s6,0x10

00000114 <.LBB480>:
 114:	16f49363          	bne	s1,a5,27a <.L27>
 118:	010ba783          	lw	a5,16(s7)
 11c:	0087c783          	lbu	a5,8(a5)
 120:	14f4fd63          	bgeu	s1,a5,27a <.L27>

00000124 <.LBB484>:
 124:	0009d783          	lhu	a5,0(s3)
 128:	839d                	srli	a5,a5,0x7

0000012a <.LBE484>:
 12a:	8b85                	andi	a5,a5,1
 12c:	14078763          	beqz	a5,27a <.L27>
 130:	01514783          	lbu	a5,21(sp)
 134:	04000713          	li	a4,64
 138:	0c07f793          	andi	a5,a5,192
 13c:	12e79f63          	bne	a5,a4,27a <.L27>
 140:	c419                	beqz	s0,14e <.L28>
 142:	600b7793          	andi	a5,s6,1536
 146:	60000713          	li	a4,1536
 14a:	12e79863          	bne	a5,a4,27a <.L27>

0000014e <.L28>:
 14e:	4529                	li	a0,10
 150:	00000097          	auipc	ra,0x0
 154:	000080e7          	jalr	ra # 150 <.L28+0x2>

00000158 <.LVL61>:
 158:	c169                	beqz	a0,21a <.L18>

0000015a <.LBB486>:
 15a:	6505                	lui	a0,0x1
 15c:	46c9                	li	a3,18
 15e:	4601                	li	a2,0
 160:	4581                	li	a1,0
 162:	80450513          	addi	a0,a0,-2044 # 804 <.LASF131>
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.LBB486+0xc>

0000016e <.LVL62>:
 16e:	47ad                	li	a5,11

00000170 <.LBB487>:
 170:	28008b37          	lui	s6,0x28008

00000174 <.LBE487>:
 174:	00f50023          	sb	a5,0(a0)
 178:	4b85                	li	s7,1

0000017a <.LBB493>:
 17a:	3d4b0793          	addi	a5,s6,980 # 280083d4 <.LASF726+0x28001b94>

0000017e <.LBE493>:
 17e:	017500a3          	sb	s7,1(a0)

00000182 <.LBB494>:
 182:	9abe                	add	s5,s5,a5

00000184 <.LBE494>:
 184:	84aa                	mv	s1,a0

00000186 <.LBB495>:
 186:	000007b7          	lui	a5,0x0

0000018a <.LBB496>:
 18a:	000ad503          	lhu	a0,0(s5)

0000018e <.LBE496>:
 18e:	01c7a783          	lw	a5,28(a5) # 1c <.LBE430+0x2>
 192:	00b48a93          	addi	s5,s1,11
 196:	0ff57513          	andi	a0,a0,255
 19a:	9782                	jalr	a5
 19c:	00a488a3          	sb	a0,17(s1)

000001a0 <.LBB497>:
 1a0:	0009d783          	lhu	a5,0(s3)
 1a4:	00448513          	addi	a0,s1,4
 1a8:	8bbd                	andi	a5,a5,15

000001aa <.LBE497>:
 1aa:	00f48123          	sb	a5,2(s1)
 1ae:	c045                	beqz	s0,24e <.L31>

000001b0 <.LBB499>:
 1b0:	01840593          	addi	a1,s0,24

000001b4 <.LBB503>:
 1b4:	00092783          	lw	a5,0(s2)
 1b8:	05c2                	slli	a1,a1,0x10
 1ba:	81c1                	srli	a1,a1,0x10
 1bc:	95da                	add	a1,a1,s6
 1be:	4619                	li	a2,6
 1c0:	9782                	jalr	a5

000001c2 <.LBB504>:
 1c2:	dd240793          	addi	a5,s0,-558
 1c6:	03400413          	li	s0,52

000001ca <.LVL71>:
 1ca:	0287d7b3          	divu	a5,a5,s0

000001ce <.LBB508>:
 1ce:	22eb0b13          	addi	s6,s6,558

000001d2 <.LBE508>:
 1d2:	04000693          	li	a3,64
 1d6:	0ff7f793          	andi	a5,a5,255

000001da <.LBB509>:
 1da:	028787b3          	mul	a5,a5,s0
 1de:	97da                	add	a5,a5,s6
 1e0:	0007d783          	lhu	a5,0(a5)

000001e4 <.LVL73>:
 1e4:	8b85                	andi	a5,a5,1

000001e6 <.LBE509>:
 1e6:	00f481a3          	sb	a5,3(s1)
 1ea:	01d14703          	lbu	a4,29(sp)
 1ee:	0c077713          	andi	a4,a4,192
 1f2:	00d71663          	bne	a4,a3,1fe <.L32>
 1f6:	0027e793          	ori	a5,a5,2
 1fa:	00f481a3          	sb	a5,3(s1)

000001fe <.L32>:
 1fe:	00092783          	lw	a5,0(s2)
 202:	4619                	li	a2,6
 204:	080c                	addi	a1,sp,16
 206:	8556                	mv	a0,s5
 208:	9782                	jalr	a5

0000020a <.LVL75>:
 20a:	4785                	li	a5,1
 20c:	00f48523          	sb	a5,10(s1)

00000210 <.L44>:
 210:	8526                	mv	a0,s1
 212:	00000097          	auipc	ra,0x0
 216:	000080e7          	jalr	ra # 212 <.L44+0x2>

0000021a <.L18>:
 21a:	40b6                	lw	ra,76(sp)
 21c:	4426                	lw	s0,72(sp)
 21e:	4496                	lw	s1,68(sp)
 220:	4906                	lw	s2,64(sp)
 222:	59f2                	lw	s3,60(sp)
 224:	5a62                	lw	s4,56(sp)
 226:	5ad2                	lw	s5,52(sp)
 228:	5b42                	lw	s6,48(sp)
 22a:	5bb2                	lw	s7,44(sp)
 22c:	5c22                	lw	s8,40(sp)
 22e:	6161                	addi	sp,sp,80
 230:	8082                	ret

00000232 <.L24>:
 232:	00540593          	addi	a1,s0,5
 236:	0028                	addi	a0,sp,8

00000238 <.LVL79>:
 238:	00000097          	auipc	ra,0x0
 23c:	000080e7          	jalr	ra # 238 <.LVL79>

00000240 <.LVL80>:
 240:	c509                	beqz	a0,24a <.L22>
 242:	00444783          	lbu	a5,4(s0)
 246:	fc978ae3          	beq	a5,s1,21a <.L18>

0000024a <.L22>:
 24a:	4000                	lw	s0,0(s0)
 24c:	bd29                	j	66 <.L21>

0000024e <.L31>:
 24e:	000a5583          	lhu	a1,0(s4)

00000252 <.LBB512>:
 252:	00092783          	lw	a5,0(s2)
 256:	4619                	li	a2,6
 258:	95da                	add	a1,a1,s6

0000025a <.LVL84>:
 25a:	9782                	jalr	a5

0000025c <.LBB514>:
 25c:	0009d783          	lhu	a5,0(s3)

00000260 <.LBE514>:
 260:	4619                	li	a2,6
 262:	080c                	addi	a1,sp,16

00000264 <.LBB517>:
 264:	8399                	srli	a5,a5,0x6
 266:	8b85                	andi	a5,a5,1

00000268 <.LBE517>:
 268:	00f481a3          	sb	a5,3(s1)
 26c:	00092783          	lw	a5,0(s2)
 270:	8556                	mv	a0,s5
 272:	9782                	jalr	a5

00000274 <.LVL87>:
 274:	01748523          	sb	s7,10(s1)
 278:	bf61                	j	210 <.L44>

0000027a <.L27>:
 27a:	4505                	li	a0,1
 27c:	00000097          	auipc	ra,0x0
 280:	000080e7          	jalr	ra # 27c <.L27+0x2>

00000284 <.LVL89>:
 284:	d959                	beqz	a0,21a <.L18>

00000286 <.LBB558>:
 286:	6505                	lui	a0,0x1
 288:	02b00693          	li	a3,43
 28c:	4601                	li	a2,0
 28e:	4581                	li	a1,0
 290:	80450513          	addi	a0,a0,-2044 # 804 <.LASF131>
 294:	00000097          	auipc	ra,0x0
 298:	000080e7          	jalr	ra # 294 <.LBB558+0xe>

0000029c <.LVL90>:
 29c:	4785                	li	a5,1
 29e:	00f500a3          	sb	a5,1(a0)

000002a2 <.LBB519>:
 2a2:	280087b7          	lui	a5,0x28008
 2a6:	3d478793          	addi	a5,a5,980 # 280083d4 <.LASF726+0x28001b94>

000002aa <.LBE519>:
 2aa:	4b89                	li	s7,2
 2ac:	01750023          	sb	s7,0(a0)

000002b0 <.LBB524>:
 2b0:	9abe                	add	s5,s5,a5

000002b2 <.LBE524>:
 2b2:	84aa                	mv	s1,a0

000002b4 <.LBB525>:
 2b4:	000007b7          	lui	a5,0x0

000002b8 <.LBB526>:
 2b8:	000ad503          	lhu	a0,0(s5)

000002bc <.LBE526>:
 2bc:	01c7a783          	lw	a5,28(a5) # 1c <.LBE430+0x2>
 2c0:	0ff57513          	andi	a0,a0,255
 2c4:	9782                	jalr	a5
 2c6:	02a48523          	sb	a0,42(s1)

000002ca <.LBB527>:
 2ca:	0009d783          	lhu	a5,0(s3)

000002ce <.LVL95>:
 2ce:	8bbd                	andi	a5,a5,15

000002d0 <.LBE527>:
 2d0:	05778763          	beq	a5,s7,31e <.L35>
 2d4:	4719                	li	a4,6
 2d6:	04e78663          	beq	a5,a4,322 <.L36>

000002da <.L64>:
 2da:	00f48123          	sb	a5,2(s1)

000002de <.L37>:
 2de:	0024c703          	lbu	a4,2(s1)
 2e2:	4785                	li	a5,1
 2e4:	04f71263          	bne	a4,a5,328 <.L38>
 2e8:	00048523          	sb	zero,10(s1)

000002ec <.L39>:
 2ec:	00448513          	addi	a0,s1,4
 2f0:	00092783          	lw	a5,0(s2)
 2f4:	c419                	beqz	s0,302 <.L42>
 2f6:	600b7b13          	andi	s6,s6,1536

000002fa <.LVL97>:
 2fa:	20000713          	li	a4,512
 2fe:	06eb1363          	bne	s6,a4,364 <.L43>

00000302 <.L42>:
 302:	000a5703          	lhu	a4,0(s4)

00000306 <.LBB531>:
 306:	280085b7          	lui	a1,0x28008
 30a:	4619                	li	a2,6
 30c:	95ba                	add	a1,a1,a4
 30e:	9782                	jalr	a5

00000310 <.LBB533>:
 310:	0009d783          	lhu	a5,0(s3)
 314:	8399                	srli	a5,a5,0x6
 316:	8b85                	andi	a5,a5,1

00000318 <.L65>:
 318:	00f481a3          	sb	a5,3(s1)
 31c:	bdd5                	j	210 <.L44>

0000031e <.L35>:
 31e:	478d                	li	a5,3
 320:	bf6d                	j	2da <.L64>

00000322 <.L36>:
 322:	01748123          	sb	s7,2(s1)
 326:	bf65                	j	2de <.L37>

00000328 <.L38>:
 328:	0009d783          	lhu	a5,0(s3)

0000032c <.LBE546>:
 32c:	477d                	li	a4,31

0000032e <.LBB549>:
 32e:	83a1                	srli	a5,a5,0x8

00000330 <.LBE549>:
 330:	17e9                	addi	a5,a5,-6
 332:	0ff7f793          	andi	a5,a5,255
 336:	02f76463          	bltu	a4,a5,35e <.L40>
 33a:	00f48523          	sb	a5,10(s1)

0000033e <.L41>:
 33e:	000a5783          	lhu	a5,0(s4)

00000342 <.LBB552>:
 342:	00092703          	lw	a4,0(s2)
 346:	00a4c603          	lbu	a2,10(s1)

0000034a <.LBE552>:
 34a:	0799                	addi	a5,a5,6

0000034c <.LBB555>:
 34c:	07c2                	slli	a5,a5,0x10
 34e:	83c1                	srli	a5,a5,0x10
 350:	280085b7          	lui	a1,0x28008
 354:	95be                	add	a1,a1,a5
 356:	00b48513          	addi	a0,s1,11

0000035a <.LVL109>:
 35a:	9702                	jalr	a4

0000035c <.LVL110>:
 35c:	bf41                	j	2ec <.L39>

0000035e <.L40>:
 35e:	00e48523          	sb	a4,10(s1)
 362:	bff1                	j	33e <.L41>

00000364 <.L43>:
 364:	01840593          	addi	a1,s0,24

00000368 <.LBB539>:
 368:	05c2                	slli	a1,a1,0x10
 36a:	28008937          	lui	s2,0x28008
 36e:	81c1                	srli	a1,a1,0x10
 370:	95ca                	add	a1,a1,s2
 372:	4619                	li	a2,6
 374:	9782                	jalr	a5

00000376 <.LBB540>:
 376:	dd240793          	addi	a5,s0,-558
 37a:	03400413          	li	s0,52

0000037e <.LVL114>:
 37e:	0287d7b3          	divu	a5,a5,s0

00000382 <.LBB544>:
 382:	22e90913          	addi	s2,s2,558 # 2800822e <.LASF726+0x280019ee>

00000386 <.LBE544>:
 386:	04000693          	li	a3,64
 38a:	0ff7f793          	andi	a5,a5,255

0000038e <.LBB545>:
 38e:	028787b3          	mul	a5,a5,s0
 392:	97ca                	add	a5,a5,s2
 394:	0007d783          	lhu	a5,0(a5)

00000398 <.LVL116>:
 398:	8b85                	andi	a5,a5,1

0000039a <.LBE545>:
 39a:	00f481a3          	sb	a5,3(s1)
 39e:	01d14703          	lbu	a4,29(sp)
 3a2:	0c077713          	andi	a4,a4,192
 3a6:	e6d715e3          	bne	a4,a3,210 <.L44>
 3aa:	0027e793          	ori	a5,a5,2
 3ae:	b7ad                	j	318 <.L65>

Disassembly of section .text.llm_con_req_tx_cfm:

00000000 <llm_con_req_tx_cfm>:
   0:	711d                	addi	sp,sp,-96

00000002 <.LVL119>:
   2:	caa6                	sw	s1,84(sp)

00000004 <.LBB567>:
   4:	44b9                	li	s1,14
   6:	029504b3          	mul	s1,a0,s1

0000000a <.LBE567>:
   a:	cca2                	sw	s0,88(sp)

0000000c <.LBB568>:
   c:	28008437          	lui	s0,0x28008
  10:	3d640793          	addi	a5,s0,982 # 280083d6 <.LASF726+0x28001b96>

00000014 <.LBE568>:
  14:	ce86                	sw	ra,92(sp)
  16:	c8ca                	sw	s2,80(sp)
  18:	c6ce                	sw	s3,76(sp)
  1a:	c4d2                	sw	s4,72(sp)

0000001c <.LBB569>:
  1c:	00000a37          	lui	s4,0x0
  20:	4619                	li	a2,6

00000022 <.LBB573>:
  22:	97a6                	add	a5,a5,s1
  24:	0007d583          	lhu	a1,0(a5)

00000028 <.LBB574>:
  28:	000a2783          	lw	a5,0(s4) # 0 <llm_con_req_tx_cfm>

0000002c <.LBE574>:
  2c:	892a                	mv	s2,a0

0000002e <.LBB575>:
  2e:	95a2                	add	a1,a1,s0

00000030 <.LVL121>:
  30:	0028                	addi	a0,sp,8

00000032 <.LVL122>:
  32:	9782                	jalr	a5

00000034 <.LBB576>:
  34:	2ec45583          	lhu	a1,748(s0)

00000038 <.LBB578>:
  38:	000a2783          	lw	a5,0(s4)
  3c:	4659                	li	a2,22
  3e:	95a2                	add	a1,a1,s0

00000040 <.LVL125>:
  40:	1028                	addi	a0,sp,40

00000042 <.LVL126>:
  42:	9782                	jalr	a5

00000044 <.LBB580>:
  44:	3d840793          	addi	a5,s0,984
  48:	97a6                	add	a5,a5,s1
  4a:	0007d983          	lhu	s3,0(a5)
  4e:	09c2                	slli	s3,s3,0x10
  50:	0109d993          	srli	s3,s3,0x10

00000054 <.LBE580>:
  54:	0c098f63          	beqz	s3,132 <.L67>

00000058 <.LBB582>:
  58:	01898593          	addi	a1,s3,24

0000005c <.LBB586>:
  5c:	000a2783          	lw	a5,0(s4)
  60:	05c2                	slli	a1,a1,0x10
  62:	81c1                	srli	a1,a1,0x10
  64:	95a2                	add	a1,a1,s0
  66:	4619                	li	a2,6
  68:	0868                	addi	a0,sp,28

0000006a <.LVL130>:
  6a:	9782                	jalr	a5

0000006c <.LBB587>:
  6c:	03400713          	li	a4,52
  70:	dd298793          	addi	a5,s3,-558
  74:	02e7d7b3          	divu	a5,a5,a4

00000078 <.LBB592>:
  78:	22e40413          	addi	s0,s0,558

0000007c <.LBE592>:
  7c:	0ff7f793          	andi	a5,a5,255

00000080 <.LBB593>:
  80:	02e787b3          	mul	a5,a5,a4
  84:	943e                	add	s0,s0,a5
  86:	00045703          	lhu	a4,0(s0)

0000008a <.LBB594>:
  8a:	00045783          	lhu	a5,0(s0)

0000008e <.LBB596>:
  8e:	8b05                	andi	a4,a4,1

00000090 <.LBE596>:
  90:	8b89                	andi	a5,a5,2
  92:	8fd9                	or	a5,a5,a4
  94:	02f10123          	sb	a5,34(sp)

00000098 <.L68>:
  98:	03215783          	lhu	a5,50(sp)
  9c:	00000437          	lui	s0,0x0
  a0:	00040413          	mv	s0,s0
  a4:	00f11a23          	sh	a5,20(sp)
  a8:	03415783          	lhu	a5,52(sp)
  ac:	01311d23          	sh	s3,26(sp)
  b0:	00f11b23          	sh	a5,22(sp)
  b4:	03615783          	lhu	a5,54(sp)
  b8:	00f11c23          	sh	a5,24(sp)
  bc:	03d14783          	lbu	a5,61(sp)
  c0:	0057d713          	srli	a4,a5,0x5
  c4:	8bfd                	andi	a5,a5,31
  c6:	02f101a3          	sb	a5,35(sp)
  ca:	487c                	lw	a5,84(s0)
  cc:	02e10223          	sb	a4,36(sp)
  d0:	cf8d                	beqz	a5,10a <.L70>

000000d2 <.LBB597>:
  d2:	04445603          	lhu	a2,68(s0) # 44 <.LBB580>
  d6:	02214583          	lbu	a1,34(sp)
  da:	0868                	addi	a0,sp,28
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.LBB597+0xa>

000000e4 <.LVL136>:
  e4:	e11d                	bnez	a0,10a <.L70>

000000e6 <.LBB598>:
  e6:	04445583          	lhu	a1,68(s0)
  ea:	4868                	lw	a0,84(s0)

000000ec <.LVL138>:
  ec:	86ca                	mv	a3,s2
  ee:	0850                	addi	a2,sp,20
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LVL138+0x4>

000000f8 <.LVL139>:
  f8:	85aa                	mv	a1,a0
  fa:	c868                	sw	a0,84(s0)
  fc:	0848                	addi	a0,sp,20
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LVL139+0x6>

00000106 <.LVL140>:
 106:	04042a23          	sw	zero,84(s0)

0000010a <.L70>:
 10a:	4501                	li	a0,0
 10c:	00000097          	auipc	ra,0x0
 110:	000080e7          	jalr	ra # 10c <.L70+0x2>

00000114 <.LVL142>:
 114:	0f057593          	andi	a1,a0,240
 118:	4501                	li	a0,0

0000011a <.LVL143>:
 11a:	00000097          	auipc	ra,0x0
 11e:	000080e7          	jalr	ra # 11a <.LVL143>

00000122 <.LBE599>:
 122:	40f6                	lw	ra,92(sp)
 124:	4466                	lw	s0,88(sp)
 126:	44d6                	lw	s1,84(sp)
 128:	4946                	lw	s2,80(sp)
 12a:	49b6                	lw	s3,76(sp)

0000012c <.LVL145>:
 12c:	4a26                	lw	s4,72(sp)
 12e:	6125                	addi	sp,sp,96
 130:	8082                	ret

00000132 <.L67>:
 132:	3d240413          	addi	s0,s0,978
 136:	9426                	add	s0,s0,s1
 138:	00045783          	lhu	a5,0(s0)

0000013c <.LBE600>:
 13c:	4619                	li	a2,6
 13e:	002c                	addi	a1,sp,8

00000140 <.LBB603>:
 140:	8399                	srli	a5,a5,0x6
 142:	8b85                	andi	a5,a5,1

00000144 <.LBE603>:
 144:	02f10123          	sb	a5,34(sp)
 148:	000a2783          	lw	a5,0(s4)
 14c:	0868                	addi	a0,sp,28
 14e:	9782                	jalr	a5

00000150 <.LVL148>:
 150:	b7a1                	j	98 <.L68>

Disassembly of section .text.llm_common_cmd_complete_send:

00000000 <llm_common_cmd_complete_send>:
   0:	1141                	addi	sp,sp,-16
   2:	862a                	mv	a2,a0
   4:	6505                	lui	a0,0x1

00000006 <.LVL150>:
   6:	c422                	sw	s0,8(sp)
   8:	4685                	li	a3,1
   a:	842e                	mv	s0,a1
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LLST223+0x6>
  10:	4581                	li	a1,0

00000012 <.LVL151>:
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL151+0x2>

0000001c <.LVL152>:
  1c:	00850023          	sb	s0,0(a0)
  20:	4422                	lw	s0,8(sp)
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
  2a:	00030067          	jr	t1 # 26 <.LVL152+0xa>

Disassembly of section .text.llm_ble_ready:

00000000 <llm_ble_ready>:
   0:	4581                	li	a1,0
   2:	4501                	li	a0,0
   4:	00000317          	auipc	t1,0x0
   8:	00030067          	jr	t1 # 4 <llm_ble_ready+0x4>

Disassembly of section .text.llm_common_cmd_status_send:

00000000 <llm_common_cmd_status_send>:
   0:	1141                	addi	sp,sp,-16
   2:	862a                	mv	a2,a0
   4:	6505                	lui	a0,0x1

00000006 <.LVL156>:
   6:	c422                	sw	s0,8(sp)
   8:	4685                	li	a3,1
   a:	842e                	mv	s0,a1
   c:	80250513          	addi	a0,a0,-2046 # 802 <.LLST223+0x7>
  10:	4581                	li	a1,0

00000012 <.LVL157>:
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL157+0x2>

0000001c <.LVL158>:
  1c:	00850023          	sb	s0,0(a0)
  20:	4422                	lw	s0,8(sp)
  22:	40b2                	lw	ra,12(sp)
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
  2a:	00030067          	jr	t1 # 26 <.LVL158+0xa>

Disassembly of section .text.llm_test_mode_start_tx:

00000000 <llm_test_mode_start_tx>:
   0:	00054703          	lbu	a4,0(a0)
   4:	02700793          	li	a5,39
   8:	24e7e163          	bltu	a5,a4,24a <.L85>
   c:	00154703          	lbu	a4,1(a0)
  10:	47c9                	li	a5,18
  12:	22070d63          	beqz	a4,24c <.L96>
  16:	712d                	addi	sp,sp,-288
  18:	11312623          	sw	s3,268(sp)
  1c:	10112e23          	sw	ra,284(sp)
  20:	10812c23          	sw	s0,280(sp)
  24:	10912a23          	sw	s1,276(sp)
  28:	11212823          	sw	s2,272(sp)
  2c:	11412423          	sw	s4,264(sp)
  30:	00254703          	lbu	a4,2(a0)
  34:	499d                	li	s3,7
  36:	18e9ee63          	bltu	s3,a4,1d2 <.L79>
  3a:	842a                	mv	s0,a0

0000003c <.LBB604>:
  3c:	30002973          	csrr	s2,mstatus

00000040 <.LBB609>:
  40:	300477f3          	csrrci	a5,mstatus,8

00000044 <.LBE609>:
  44:	00000537          	lui	a0,0x0

00000048 <.LVL164>:
  48:	00850513          	addi	a0,a0,8 # 8 <llm_test_mode_start_tx+0x8>
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL164+0x4>

00000054 <.LVL165>:
  54:	84aa                	mv	s1,a0

00000056 <.LVL166>:
  56:	30091073          	csrw	mstatus,s2

0000005a <.LBB610>:
  5a:	00000937          	lui	s2,0x0

0000005e <.LVL168>:
  5e:	00090513          	mv	a0,s2
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL168+0x4>

0000006a <.LVL169>:
  6a:	8a2a                	mv	s4,a0

0000006c <.LBE610>:
  6c:	479d                	li	a5,7
  6e:	16048263          	beqz	s1,1d2 <.L79>
  72:	16050063          	beqz	a0,1d2 <.L79>
  76:	00455783          	lhu	a5,4(a0)

0000007a <.LBB612>:
  7a:	4629                	li	a2,10

0000007c <.LBE612>:
  7c:	0064d703          	lhu	a4,6(s1)

00000080 <.LBB616>:
  80:	02c787b3          	mul	a5,a5,a2

00000084 <.LVL172>:
  84:	280086b7          	lui	a3,0x28008
  88:	2ce68593          	addi	a1,a3,718 # 280082ce <.LASF726+0x28001a8e>

0000008c <.LBB617>:
  8c:	2d268693          	addi	a3,a3,722

00000090 <.LBB621>:
  90:	97ae                	add	a5,a5,a1
  92:	00e79023          	sh	a4,0(a5)

00000096 <.LBB622>:
  96:	00455703          	lhu	a4,4(a0)

0000009a <.LVL174>:
  9a:	02400593          	li	a1,36
  9e:	4501                	li	a0,0

000000a0 <.LBB623>:
  a0:	02c70733          	mul	a4,a4,a2

000000a4 <.LVL176>:
  a4:	9736                	add	a4,a4,a3
  a6:	00075783          	lhu	a5,0(a4)
  aa:	66a1                	lui	a3,0x8
  ac:	07c6                	slli	a5,a5,0x11
  ae:	83c5                	srli	a5,a5,0x11
  b0:	8fd5                	or	a5,a5,a3
  b2:	00f71023          	sh	a5,0(a4)

000000b6 <.LBE623>:
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LBE623>

000000be <.LBB624>:
  be:	28000737          	lui	a4,0x28000
  c2:	431c                	lw	a5,0(a4)
  c4:	fffc06b7          	lui	a3,0xfffc0
  c8:	16fd                	addi	a3,a3,-1
  ca:	8ff5                	and	a5,a5,a3
  cc:	000406b7          	lui	a3,0x40
  d0:	8fd5                	or	a5,a5,a3
  d2:	c31c                	sw	a5,0(a4)

000000d4 <.LBE624>:
  d4:	00244783          	lbu	a5,2(s0)
  d8:	02f9ee63          	bltu	s3,a5,114 <.L81>
  dc:	4685                	li	a3,1
  de:	00f696b3          	sll	a3,a3,a5
  e2:	0f66f613          	andi	a2,a3,246
  e6:	10061563          	bnez	a2,1f0 <.L82>
  ea:	8aa5                	andi	a3,a3,9
  ec:	c685                	beqz	a3,114 <.L81>

000000ee <.LBB626>:
  ee:	0e072683          	lw	a3,224(a4) # 280000e0 <.LASF726+0x27ff98a0>
  f2:	7679                	lui	a2,0xffffe
  f4:	8b85                	andi	a5,a5,1

000000f6 <.LVL181>:
  f6:	167d                	addi	a2,a2,-1
  f8:	8ef1                	and	a3,a3,a2
  fa:	07b6                	slli	a5,a5,0xd
  fc:	8fd5                	or	a5,a5,a3
  fe:	0ef72023          	sw	a5,224(a4)

00000102 <.LBB628>:
 102:	0e072783          	lw	a5,224(a4)
 106:	76fd                	lui	a3,0xfffff
 108:	16fd                	addi	a3,a3,-1
 10a:	8ff5                	and	a5,a5,a3
 10c:	6685                	lui	a3,0x1
 10e:	8fd5                	or	a5,a5,a3
 110:	0ef72023          	sw	a5,224(a4)

00000114 <.L81>:
 114:	000004b7          	lui	s1,0x0

00000118 <.LVL184>:
 118:	00048793          	mv	a5,s1
 11c:	4bdc                	lw	a5,20(a5)
 11e:	00048493          	mv	s1,s1
 122:	e3a5                	bnez	a5,182 <.L84>

00000124 <.LBB630>:
 124:	4581                	li	a1,0
 126:	02400513          	li	a0,36
 12a:	00000097          	auipc	ra,0x0
 12e:	000080e7          	jalr	ra # 12a <.LBB630+0x6>

00000132 <.LVL185>:
 132:	000007b7          	lui	a5,0x0
 136:	0007a783          	lw	a5,0(a5) # 0 <llm_test_mode_start_tx>
 13a:	c8c8                	sw	a0,20(s1)
 13c:	02400613          	li	a2,36
 140:	4581                	li	a1,0
 142:	9782                	jalr	a5

00000144 <.LVL186>:
 144:	48dc                	lw	a5,20(s1)
 146:	6705                	lui	a4,0x1
 148:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
 14c:	00e79b23          	sh	a4,22(a5)
 150:	00078e23          	sb	zero,28(a5)
 154:	00e79c23          	sh	a4,24(a5)
 158:	00078da3          	sb	zero,27(a5)
 15c:	48dc                	lw	a5,20(s1)
 15e:	471d                	li	a4,7
 160:	00e78d23          	sb	a4,26(a5)
 164:	4705                	li	a4,1
 166:	02e780a3          	sb	a4,33(a5)

0000016a <.LBB632>:
 16a:	01c7c783          	lbu	a5,28(a5)

0000016e <.LVL188>:
 16e:	28008737          	lui	a4,0x28008
 172:	6007e793          	ori	a5,a5,1536

00000176 <.LVL189>:
 176:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

0000017a <.LBB634>:
 17a:	60400793          	li	a5,1540
 17e:	2ef71a23          	sh	a5,756(a4)

00000182 <.L84>:
 182:	004a5783          	lhu	a5,4(s4)

00000186 <.LBB640>:
 186:	4729                	li	a4,10
 188:	00244683          	lbu	a3,2(s0)
 18c:	02e787b3          	mul	a5,a5,a4

00000190 <.LVL193>:
 190:	28008737          	lui	a4,0x28008
 194:	2cc70713          	addi	a4,a4,716 # 280082cc <.LASF726+0x28001a8c>

00000198 <.LBB641>:
 198:	4531                	li	a0,12

0000019a <.LBE641>:
 19a:	4601                	li	a2,0

0000019c <.LBB645>:
 19c:	97ba                	add	a5,a5,a4
 19e:	00144703          	lbu	a4,1(s0)
 1a2:	0722                	slli	a4,a4,0x8
 1a4:	8f55                	or	a4,a4,a3
 1a6:	00e79023          	sh	a4,0(a5)

000001aa <.LBB646>:
 1aa:	004a5783          	lhu	a5,4(s4)

000001ae <.LBE646>:
 1ae:	00044583          	lbu	a1,0(s0)

000001b2 <.LBB647>:
 1b2:	02a787b3          	mul	a5,a5,a0
 1b6:	00090513          	mv	a0,s2
 1ba:	07c1                	addi	a5,a5,16

000001bc <.LBE647>:
 1bc:	953e                	add	a0,a0,a5
 1be:	00000097          	auipc	ra,0x0
 1c2:	000080e7          	jalr	ra # 1be <.LBE647+0x2>

000001c6 <.LVL195>:
 1c6:	c4a8                	sw	a0,72(s1)
 1c8:	47fd                	li	a5,31
 1ca:	c501                	beqz	a0,1d2 <.L79>
 1cc:	04048d23          	sb	zero,90(s1) # 5a <.LBB610>
 1d0:	4781                	li	a5,0

000001d2 <.L79>:
 1d2:	11c12083          	lw	ra,284(sp)
 1d6:	11812403          	lw	s0,280(sp)
 1da:	11412483          	lw	s1,276(sp)
 1de:	11012903          	lw	s2,272(sp)
 1e2:	10c12983          	lw	s3,268(sp)
 1e6:	10812a03          	lw	s4,264(sp)
 1ea:	853e                	mv	a0,a5
 1ec:	6115                	addi	sp,sp,288
 1ee:	8082                	ret

000001f0 <.L82>:
 1f0:	17fd                	addi	a5,a5,-1
 1f2:	0ff7f793          	andi	a5,a5,255
 1f6:	4719                	li	a4,6
 1f8:	00144603          	lbu	a2,1(s0)

000001fc <.LBB648>:
 1fc:	4581                	li	a1,0
 1fe:	00f76963          	bltu	a4,a5,210 <.L83>
 202:	00000737          	lui	a4,0x0
 206:	00070713          	mv	a4,a4
 20a:	97ba                	add	a5,a5,a4
 20c:	0007c583          	lbu	a1,0(a5)

00000210 <.L83>:
 210:	000007b7          	lui	a5,0x0
 214:	0007a783          	lw	a5,0(a5) # 0 <llm_test_mode_start_tx>
 218:	850a                	mv	a0,sp
 21a:	9782                	jalr	a5

0000021c <.LBB652>:
 21c:	0064d503          	lhu	a0,6(s1)
 220:	000007b7          	lui	a5,0x0
 224:	0007a783          	lw	a5,0(a5) # 0 <llm_test_mode_start_tx>
 228:	00144603          	lbu	a2,1(s0)
 22c:	28008737          	lui	a4,0x28008
 230:	953a                	add	a0,a0,a4
 232:	858a                	mv	a1,sp
 234:	9782                	jalr	a5

00000236 <.LBB654>:
 236:	280006b7          	lui	a3,0x28000
 23a:	0e06a783          	lw	a5,224(a3) # 280000e0 <.LASF726+0x27ff98a0>
 23e:	777d                	lui	a4,0xfffff
 240:	177d                	addi	a4,a4,-1
 242:	8ff9                	and	a5,a5,a4
 244:	0ef6a023          	sw	a5,224(a3)
 248:	b5f1                	j	114 <.L81>

0000024a <.L85>:
 24a:	47c9                	li	a5,18

0000024c <.L96>:
 24c:	853e                	mv	a0,a5

0000024e <.LVL203>:
 24e:	8082                	ret

Disassembly of section .text.llm_test_mode_start_rx:

00000000 <llm_test_mode_start_rx>:
   0:	00054703          	lbu	a4,0(a0)
   4:	02700793          	li	a5,39
   8:	0ce7e363          	bltu	a5,a4,ce <.L102>
   c:	1141                	addi	sp,sp,-16
   e:	c422                	sw	s0,8(sp)
  10:	00000437          	lui	s0,0x0
  14:	c226                	sw	s1,4(sp)
  16:	00040793          	mv	a5,s0
  1a:	c606                	sw	ra,12(sp)
  1c:	4bdc                	lw	a5,20(a5)
  1e:	84aa                	mv	s1,a0
  20:	00040413          	mv	s0,s0
  24:	e3a5                	bnez	a5,84 <.L101>

00000026 <.LBB657>:
  26:	4581                	li	a1,0
  28:	02400513          	li	a0,36

0000002c <.LVL205>:
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL205>

00000034 <.LVL206>:
  34:	000007b7          	lui	a5,0x0
  38:	0007a783          	lw	a5,0(a5) # 0 <llm_test_mode_start_rx>
  3c:	c848                	sw	a0,20(s0)
  3e:	02400613          	li	a2,36
  42:	4581                	li	a1,0
  44:	9782                	jalr	a5

00000046 <.LVL207>:
  46:	485c                	lw	a5,20(s0)
  48:	6705                	lui	a4,0x1
  4a:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
  4e:	00e79b23          	sh	a4,22(a5)
  52:	00078e23          	sb	zero,28(a5)
  56:	00e79c23          	sh	a4,24(a5)
  5a:	00078da3          	sb	zero,27(a5)
  5e:	485c                	lw	a5,20(s0)
  60:	471d                	li	a4,7
  62:	00e78d23          	sb	a4,26(a5)
  66:	4705                	li	a4,1
  68:	02e780a3          	sb	a4,33(a5)

0000006c <.LBB659>:
  6c:	01c7c783          	lbu	a5,28(a5)

00000070 <.LVL209>:
  70:	28008737          	lui	a4,0x28008
  74:	6007e793          	ori	a5,a5,1536

00000078 <.LVL210>:
  78:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

0000007c <.LBB661>:
  7c:	60400793          	li	a5,1540
  80:	2ef71a23          	sh	a5,756(a4)

00000084 <.L101>:
  84:	280006b7          	lui	a3,0x28000
  88:	429c                	lw	a5,0(a3)
  8a:	fffc0737          	lui	a4,0xfffc0
  8e:	177d                	addi	a4,a4,-1
  90:	8ff9                	and	a5,a5,a4
  92:	00040737          	lui	a4,0x40
  96:	8fd9                	or	a5,a5,a4
  98:	c29c                	sw	a5,0(a3)

0000009a <.LBE663>:
  9a:	02400593          	li	a1,36
  9e:	4501                	li	a0,0
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LBE663+0x6>

000000a8 <.LVL214>:
  a8:	0004c503          	lbu	a0,0(s1)
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL214+0x4>

000000b4 <.LVL215>:
  b4:	c428                	sw	a0,72(s0)
  b6:	47fd                	li	a5,31
  b8:	c509                	beqz	a0,c2 <.L100>
  ba:	4785                	li	a5,1
  bc:	04f40d23          	sb	a5,90(s0) # 5a <.LVL207+0x14>
  c0:	4781                	li	a5,0

000000c2 <.L100>:
  c2:	40b2                	lw	ra,12(sp)
  c4:	4422                	lw	s0,8(sp)
  c6:	4492                	lw	s1,4(sp)

000000c8 <.LVL216>:
  c8:	853e                	mv	a0,a5
  ca:	0141                	addi	sp,sp,16
  cc:	8082                	ret

000000ce <.L102>:
  ce:	47c9                	li	a5,18
  d0:	853e                	mv	a0,a5

000000d2 <.LVL218>:
  d2:	8082                	ret

Disassembly of section .text.llm_set_adv_param:

00000000 <llm_set_adv_param>:
   0:	00055703          	lhu	a4,0(a0)
   4:	00255783          	lhu	a5,2(a0)
   8:	00e7fd63          	bgeu	a5,a4,22 <.L109>

0000000c <.L132>:
   c:	4549                	li	a0,18

0000000e <.LVL220>:
   e:	8082                	ret

00000010 <.L111>:
  10:	4549                	li	a0,18

00000012 <.L110>:
  12:	40f2                	lw	ra,28(sp)
  14:	4462                	lw	s0,24(sp)

00000016 <.LVL222>:
  16:	44d2                	lw	s1,20(sp)
  18:	4942                	lw	s2,16(sp)
  1a:	49b2                	lw	s3,12(sp)
  1c:	4a22                	lw	s4,8(sp)
  1e:	6105                	addi	sp,sp,32
  20:	8082                	ret

00000022 <.L109>:
  22:	00d54603          	lbu	a2,13(a0)
  26:	469d                	li	a3,7
  28:	fec6e2e3          	bltu	a3,a2,c <.L132>
  2c:	00e54603          	lbu	a2,14(a0)
  30:	468d                	li	a3,3
  32:	fcc6ede3          	bltu	a3,a2,c <.L132>
  36:	00454683          	lbu	a3,4(a0)
  3a:	0fb6f613          	andi	a2,a3,251
  3e:	e601                	bnez	a2,46 <.L112>
  40:	467d                	li	a2,31
  42:	fce675e3          	bgeu	a2,a4,c <.L132>

00000046 <.L112>:
  46:	00554603          	lbu	a2,5(a0)
  4a:	470d                	li	a4,3
  4c:	fcc760e3          	bltu	a4,a2,c <.L132>
  50:	00654603          	lbu	a2,6(a0)
  54:	4705                	li	a4,1
  56:	fac76be3          	bltu	a4,a2,c <.L132>
  5a:	00e68563          	beq	a3,a4,64 <.L113>
  5e:	6711                	lui	a4,0x4
  60:	faf766e3          	bltu	a4,a5,c <.L132>

00000064 <.L113>:
  64:	1101                	addi	sp,sp,-32
  66:	ca26                	sw	s1,20(sp)
  68:	000004b7          	lui	s1,0x0
  6c:	cc22                	sw	s0,24(sp)
  6e:	00048793          	mv	a5,s1
  72:	ce06                	sw	ra,28(sp)
  74:	c84a                	sw	s2,16(sp)
  76:	c64e                	sw	s3,12(sp)
  78:	c452                	sw	s4,8(sp)
  7a:	4bdc                	lw	a5,20(a5)
  7c:	842a                	mv	s0,a0
  7e:	00048493          	mv	s1,s1
  82:	e3a5                	bnez	a5,e2 <.L114>

00000084 <.LBB665>:
  84:	4581                	li	a1,0
  86:	02400513          	li	a0,36
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LBB665+0x6>

00000092 <.LVL225>:
  92:	000007b7          	lui	a5,0x0
  96:	0007a783          	lw	a5,0(a5) # 0 <llm_set_adv_param>
  9a:	c8c8                	sw	a0,20(s1)
  9c:	02400613          	li	a2,36
  a0:	4581                	li	a1,0
  a2:	9782                	jalr	a5

000000a4 <.LVL226>:
  a4:	48dc                	lw	a5,20(s1)
  a6:	6705                	lui	a4,0x1
  a8:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
  ac:	00e79b23          	sh	a4,22(a5)
  b0:	00078e23          	sb	zero,28(a5)
  b4:	00e79c23          	sh	a4,24(a5)
  b8:	00078da3          	sb	zero,27(a5)
  bc:	48dc                	lw	a5,20(s1)
  be:	471d                	li	a4,7
  c0:	00e78d23          	sb	a4,26(a5)
  c4:	4705                	li	a4,1
  c6:	02e780a3          	sb	a4,33(a5)

000000ca <.LBB667>:
  ca:	01c7c783          	lbu	a5,28(a5)

000000ce <.LVL228>:
  ce:	28008737          	lui	a4,0x28008
  d2:	6007e793          	ori	a5,a5,1536

000000d6 <.LVL229>:
  d6:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

000000da <.LBB669>:
  da:	60400793          	li	a5,1540
  de:	2ef71a23          	sh	a5,756(a4)

000000e2 <.L114>:
  e2:	48dc                	lw	a5,20(s1)
  e4:	4721                	li	a4,8
  e6:	4691                	li	a3,4
  e8:	00e78e23          	sb	a4,28(a5)
  ec:	4705                	li	a4,1
  ee:	02e780a3          	sb	a4,33(a5)
  f2:	00444703          	lbu	a4,4(s0)
  f6:	4549                	li	a0,18
  f8:	f0e6ede3          	bltu	a3,a4,12 <.L110>
  fc:	000006b7          	lui	a3,0x0
 100:	070a                	slli	a4,a4,0x2
 102:	00068693          	mv	a3,a3
 106:	9736                	add	a4,a4,a3
 108:	4318                	lw	a4,0(a4)
 10a:	00740993          	addi	s3,s0,7
 10e:	00000a37          	lui	s4,0x0
 112:	8702                	jr	a4

00000114 <.L115>:
 114:	4705                	li	a4,1
 116:	00e78e23          	sb	a4,28(a5)

0000011a <.LBB671>:
 11a:	6785                	lui	a5,0x1
 11c:	28008937          	lui	s2,0x28008
 120:	c2178793          	addi	a5,a5,-991 # c21 <.LLST145+0x1>
 124:	2ef91023          	sh	a5,736(s2) # 280082e0 <.LASF726+0x28001aa0>

00000128 <.LBE671>:
 128:	00644583          	lbu	a1,6(s0)
 12c:	854e                	mv	a0,s3
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.LBE671+0x6>

00000136 <.LVL234>:
 136:	e50d                	bnez	a0,160 <.L120>

00000138 <.LBB673>:
 138:	2e095703          	lhu	a4,736(s2)
 13c:	00644783          	lbu	a5,6(s0)

00000140 <.LBB676>:
 140:	4619                	li	a2,6

00000142 <.LBB679>:
 142:	0742                	slli	a4,a4,0x10
 144:	8341                	srli	a4,a4,0x10
 146:	079e                	slli	a5,a5,0x7
 148:	f7f77713          	andi	a4,a4,-129
 14c:	8fd9                	or	a5,a5,a4
 14e:	2ef91023          	sh	a5,736(s2)

00000152 <.LBB680>:
 152:	2e295503          	lhu	a0,738(s2)

00000156 <.LBB682>:
 156:	000a2783          	lw	a5,0(s4) # 0 <llm_set_adv_param>
 15a:	85ce                	mv	a1,s3
 15c:	954a                	add	a0,a0,s2

0000015e <.LVL238>:
 15e:	9782                	jalr	a5

00000160 <.L120>:
 160:	00444683          	lbu	a3,4(s0)
 164:	4711                	li	a4,4
 166:	48dc                	lw	a5,20(s1)
 168:	00e69b63          	bne	a3,a4,17e <.L121>

0000016c <.L134>:
 16c:	00245703          	lhu	a4,2(s0)
 170:	00e79c23          	sh	a4,24(a5)
 174:	00045703          	lhu	a4,0(s0)
 178:	00e79b23          	sh	a4,22(a5)
 17c:	a019                	j	182 <.L122>

0000017e <.L121>:
 17e:	020780a3          	sb	zero,33(a5)

00000182 <.L122>:
 182:	48c8                	lw	a0,20(s1)
 184:	00644783          	lbu	a5,6(s0)
 188:	85ce                	mv	a1,s3
 18a:	4619                	li	a2,6
 18c:	02f50023          	sb	a5,32(a0)
 190:	000a2783          	lw	a5,0(s4)
 194:	0541                	addi	a0,a0,16
 196:	9782                	jalr	a5

00000198 <.LVL240>:
 198:	00544703          	lbu	a4,5(s0)
 19c:	48dc                	lw	a5,20(s1)
 19e:	4585                	li	a1,1
 1a0:	00d40513          	addi	a0,s0,13
 1a4:	00e78fa3          	sb	a4,31(a5)
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.LVL240+0x10>

000001b0 <.LVL241>:
 1b0:	e60500e3          	beqz	a0,10 <.L111>
 1b4:	00d44703          	lbu	a4,13(s0)
 1b8:	48dc                	lw	a5,20(s1)
 1ba:	4501                	li	a0,0
 1bc:	00e78d23          	sb	a4,26(a5)
 1c0:	bd89                	j	12 <.L110>

000001c2 <.L118>:
 1c2:	4719                	li	a4,6
 1c4:	00e78e23          	sb	a4,28(a5)

000001c8 <.L119>:
 1c8:	01c7c683          	lbu	a3,28(a5)
 1cc:	4719                	li	a4,6
 1ce:	00e68463          	beq	a3,a4,1d6 <.L117>
 1d2:	00078e23          	sb	zero,28(a5)

000001d6 <.L117>:
 1d6:	01c7c703          	lbu	a4,28(a5)
 1da:	4699                	li	a3,6
 1dc:	00d70663          	beq	a4,a3,1e8 <.L123>
 1e0:	c701                	beqz	a4,1e8 <.L123>
 1e2:	4709                	li	a4,2
 1e4:	00e78e23          	sb	a4,28(a5)

000001e8 <.L123>:
 1e8:	00e44703          	lbu	a4,14(s0)
 1ec:	00e78da3          	sb	a4,27(a5)
 1f0:	bfb5                	j	16c <.L134>

Disassembly of section .text.llm_set_adv_en:

00000000 <llm_set_adv_en>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	00054483          	lbu	s1,0(a0)
   c:	00000437          	lui	s0,0x0
  10:	00040413          	mv	s0,s0
  14:	16048963          	beqz	s1,186 <.L136>
  18:	485c                	lw	a5,20(s0)
  1a:	e3a5                	bnez	a5,7a <.L137>

0000001c <.LBB683>:
  1c:	4581                	li	a1,0
  1e:	02400513          	li	a0,36

00000022 <.LVL243>:
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL243>

0000002a <.LVL244>:
  2a:	000007b7          	lui	a5,0x0
  2e:	0007a783          	lw	a5,0(a5) # 0 <llm_set_adv_en>
  32:	c848                	sw	a0,20(s0)
  34:	02400613          	li	a2,36
  38:	4581                	li	a1,0
  3a:	9782                	jalr	a5

0000003c <.LVL245>:
  3c:	485c                	lw	a5,20(s0)
  3e:	6705                	lui	a4,0x1
  40:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
  44:	00e79b23          	sh	a4,22(a5)
  48:	00078e23          	sb	zero,28(a5)
  4c:	00e79c23          	sh	a4,24(a5)
  50:	00078da3          	sb	zero,27(a5)
  54:	485c                	lw	a5,20(s0)
  56:	471d                	li	a4,7
  58:	00e78d23          	sb	a4,26(a5)
  5c:	4705                	li	a4,1
  5e:	02e780a3          	sb	a4,33(a5)

00000062 <.LBB685>:
  62:	01c7c783          	lbu	a5,28(a5)

00000066 <.LVL247>:
  66:	28008737          	lui	a4,0x28008
  6a:	6007e793          	ori	a5,a5,1536

0000006e <.LVL248>:
  6e:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

00000072 <.LBB687>:
  72:	60400793          	li	a5,1540
  76:	2ef71a23          	sh	a5,756(a4)

0000007a <.L137>:
  7a:	000005b7          	lui	a1,0x0
  7e:	00000537          	lui	a0,0x0
  82:	00058593          	mv	a1,a1
  86:	05b50513          	addi	a0,a0,91 # 5b <.LVL245+0x1f>
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L137+0x10>

00000092 <.LVL251>:
  92:	cd09                	beqz	a0,ac <.L138>
  94:	485c                	lw	a5,20(s0)
  96:	01f7c783          	lbu	a5,31(a5)
  9a:	8b85                	andi	a5,a5,1
  9c:	cb81                	beqz	a5,ac <.L138>

0000009e <.L143>:
  9e:	44c9                	li	s1,18

000000a0 <.L139>:
  a0:	40b2                	lw	ra,12(sp)
  a2:	4422                	lw	s0,8(sp)
  a4:	8526                	mv	a0,s1
  a6:	4492                	lw	s1,4(sp)
  a8:	0141                	addi	sp,sp,16
  aa:	8082                	ret

000000ac <.L138>:
  ac:	485c                	lw	a5,20(s0)
  ae:	01f7c503          	lbu	a0,31(a5)
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.L138+0x6>

000000ba <.LVL252>:
  ba:	4848                	lw	a0,20(s0)
  bc:	4785                	li	a5,1
  be:	01c54703          	lbu	a4,28(a0)
  c2:	0af70863          	beq	a4,a5,172 <.L140>
  c6:	cb01                	beqz	a4,d6 <.L141>
  c8:	4789                	li	a5,2
  ca:	00f70663          	beq	a4,a5,d6 <.L141>
  ce:	4799                	li	a5,6
  d0:	44c9                	li	s1,18
  d2:	fcf717e3          	bne	a4,a5,a0 <.L139>

000000d6 <.L141>:
  d6:	01d54783          	lbu	a5,29(a0)

000000da <.LBB693>:
  da:	280086b7          	lui	a3,0x28008
  de:	000005b7          	lui	a1,0x0

000000e2 <.LBE693>:
  e2:	0799                	addi	a5,a5,6

000000e4 <.LBB694>:
  e4:	0ff7f793          	andi	a5,a5,255
  e8:	07a2                	slli	a5,a5,0x8
  ea:	8fd9                	or	a5,a5,a4
  ec:	0207e793          	ori	a5,a5,32
  f0:	2ef69f23          	sh	a5,766(a3) # 280082fe <.LASF726+0x28001abe>

000000f4 <.LBE694>:
  f4:	4848                	lw	a0,20(s0)
  f6:	00000737          	lui	a4,0x0
  fa:	4789                	li	a5,2
  fc:	01c54603          	lbu	a2,28(a0)
 100:	00070713          	mv	a4,a4
 104:	00f61e63          	bne	a2,a5,120 <.L142>
 108:	02c74683          	lbu	a3,44(a4) # 2c <.LVL244+0x2>
 10c:	4601                	li	a2,0
 10e:	04c58593          	addi	a1,a1,76 # 4c <.LVL245+0x10>

00000112 <.L163>:
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L163>

0000011a <.LVL256>:
 11a:	c428                	sw	a0,72(s0)
 11c:	e91d                	bnez	a0,152 <.L144>
 11e:	b741                	j	9e <.L143>

00000120 <.L142>:
 120:	01e54783          	lbu	a5,30(a0)
 124:	00000637          	lui	a2,0x0
 128:	04060613          	addi	a2,a2,64 # 40 <.LVL245+0x4>
 12c:	0799                	addi	a5,a5,6

0000012e <.LBB698>:
 12e:	0ff7f793          	andi	a5,a5,255
 132:	07a2                	slli	a5,a5,0x8
 134:	0247e793          	ori	a5,a5,36
 138:	2ef69a23          	sh	a5,756(a3)

0000013c <.LBE698>:
 13c:	02c74683          	lbu	a3,44(a4)
 140:	04c58593          	addi	a1,a1,76
 144:	44fd                	li	s1,31
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.LBE698+0xa>

0000014e <.LVL259>:
 14e:	c428                	sw	a0,72(s0)
 150:	d921                	beqz	a0,a0 <.L139>

00000152 <.L144>:
 152:	4501                	li	a0,0
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.L144+0x2>

0000015c <.LVL260>:
 15c:	00f57593          	andi	a1,a0,15
 160:	0105e593          	ori	a1,a1,16
 164:	4501                	li	a0,0

00000166 <.LVL261>:
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.LVL261>

0000016e <.LBE699>:
 16e:	4481                	li	s1,0
 170:	bf05                	j	a0 <.L139>

00000172 <.L140>:
 172:	000007b7          	lui	a5,0x0
 176:	000005b7          	lui	a1,0x0
 17a:	02c7c683          	lbu	a3,44(a5) # 2c <.LVL244+0x2>
 17e:	4601                	li	a2,0
 180:	02858593          	addi	a1,a1,40 # 28 <.LVL243+0x6>
 184:	b779                	j	112 <.L163>

00000186 <.L136>:
 186:	4501                	li	a0,0

00000188 <.LVL265>:
 188:	00000097          	auipc	ra,0x0
 18c:	000080e7          	jalr	ra # 188 <.LVL265>

00000190 <.LVL266>:
 190:	00f57593          	andi	a1,a0,15
 194:	0205e593          	ori	a1,a1,32
 198:	4501                	li	a0,0

0000019a <.LVL267>:
 19a:	00000097          	auipc	ra,0x0
 19e:	000080e7          	jalr	ra # 19a <.LVL267>

000001a2 <.LVL268>:
 1a2:	4428                	lw	a0,72(s0)
 1a4:	00000097          	auipc	ra,0x0
 1a8:	000080e7          	jalr	ra # 1a4 <.LVL268+0x2>

000001ac <.LVL269>:
 1ac:	bdd5                	j	a0 <.L139>

Disassembly of section .text.llm_set_adv_data:

00000000 <llm_set_adv_data>:
   0:	00054703          	lbu	a4,0(a0)
   4:	47fd                	li	a5,31
   6:	0ce7e663          	bltu	a5,a4,d2 <.L168>
   a:	1141                	addi	sp,sp,-16
   c:	c422                	sw	s0,8(sp)
   e:	00000437          	lui	s0,0x0
  12:	c226                	sw	s1,4(sp)
  14:	00040793          	mv	a5,s0
  18:	c606                	sw	ra,12(sp)
  1a:	4bdc                	lw	a5,20(a5)
  1c:	84aa                	mv	s1,a0
  1e:	00040413          	mv	s0,s0
  22:	e3a5                	bnez	a5,82 <.L166>

00000024 <.LBB701>:
  24:	4581                	li	a1,0
  26:	02400513          	li	a0,36

0000002a <.LVL271>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL271>

00000032 <.LVL272>:
  32:	000007b7          	lui	a5,0x0
  36:	0007a783          	lw	a5,0(a5) # 0 <llm_set_adv_data>
  3a:	c848                	sw	a0,20(s0)
  3c:	02400613          	li	a2,36
  40:	4581                	li	a1,0
  42:	9782                	jalr	a5

00000044 <.LVL273>:
  44:	485c                	lw	a5,20(s0)
  46:	6705                	lui	a4,0x1
  48:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
  4c:	00e79b23          	sh	a4,22(a5)
  50:	00078e23          	sb	zero,28(a5)
  54:	00e79c23          	sh	a4,24(a5)
  58:	00078da3          	sb	zero,27(a5)
  5c:	485c                	lw	a5,20(s0)
  5e:	471d                	li	a4,7
  60:	00e78d23          	sb	a4,26(a5)
  64:	4705                	li	a4,1
  66:	02e780a3          	sb	a4,33(a5)

0000006a <.LBB703>:
  6a:	01c7c783          	lbu	a5,28(a5)

0000006e <.LVL275>:
  6e:	28008737          	lui	a4,0x28008
  72:	6007e793          	ori	a5,a5,1536

00000076 <.LVL276>:
  76:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

0000007a <.LBB705>:
  7a:	60400793          	li	a5,1540
  7e:	2ef71a23          	sh	a5,756(a4)

00000082 <.L166>:
  82:	0004c603          	lbu	a2,0(s1) # 0 <llm_set_adv_data>
  86:	485c                	lw	a5,20(s0)
  88:	00c78ea3          	sb	a2,29(a5)
  8c:	ce09                	beqz	a2,a6 <.L167>

0000008e <.LBB707>:
  8e:	280087b7          	lui	a5,0x28008
  92:	3007d503          	lhu	a0,768(a5) # 28008300 <.LASF726+0x28001ac0>

00000096 <.LBB709>:
  96:	00000737          	lui	a4,0x0
  9a:	00072703          	lw	a4,0(a4) # 0 <llm_set_adv_data>
  9e:	00148593          	addi	a1,s1,1

000000a2 <.LVL281>:
  a2:	953e                	add	a0,a0,a5

000000a4 <.LVL282>:
  a4:	9702                	jalr	a4

000000a6 <.L167>:
  a6:	485c                	lw	a5,20(s0)

000000a8 <.LBB716>:
  a8:	280086b7          	lui	a3,0x28008
  ac:	2fe6d703          	lhu	a4,766(a3) # 280082fe <.LASF726+0x28001abe>

000000b0 <.LBE716>:
  b0:	01d7c783          	lbu	a5,29(a5)
  b4:	4501                	li	a0,0

000000b6 <.LBB717>:
  b6:	0ff77713          	andi	a4,a4,255

000000ba <.LBE717>:
  ba:	0799                	addi	a5,a5,6

000000bc <.LBB718>:
  bc:	0ff7f793          	andi	a5,a5,255
  c0:	07a2                	slli	a5,a5,0x8
  c2:	8fd9                	or	a5,a5,a4
  c4:	2ef69f23          	sh	a5,766(a3)

000000c8 <.LBE718>:
  c8:	40b2                	lw	ra,12(sp)
  ca:	4422                	lw	s0,8(sp)
  cc:	4492                	lw	s1,4(sp)

000000ce <.LVL285>:
  ce:	0141                	addi	sp,sp,16
  d0:	8082                	ret

000000d2 <.L168>:
  d2:	4549                	li	a0,18

000000d4 <.LVL287>:
  d4:	8082                	ret

Disassembly of section .text.llm_set_scan_rsp_data:

00000000 <llm_set_scan_rsp_data>:
   0:	00054703          	lbu	a4,0(a0)
   4:	47fd                	li	a5,31
   6:	0ce7e663          	bltu	a5,a4,d2 <.L180>
   a:	1141                	addi	sp,sp,-16
   c:	c422                	sw	s0,8(sp)
   e:	00000437          	lui	s0,0x0
  12:	c226                	sw	s1,4(sp)
  14:	00040793          	mv	a5,s0
  18:	c606                	sw	ra,12(sp)
  1a:	4bdc                	lw	a5,20(a5)
  1c:	84aa                	mv	s1,a0
  1e:	00040413          	mv	s0,s0
  22:	e3a5                	bnez	a5,82 <.L178>

00000024 <.LBB719>:
  24:	4581                	li	a1,0
  26:	02400513          	li	a0,36

0000002a <.LVL289>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL289>

00000032 <.LVL290>:
  32:	000007b7          	lui	a5,0x0
  36:	0007a783          	lw	a5,0(a5) # 0 <llm_set_scan_rsp_data>
  3a:	c848                	sw	a0,20(s0)
  3c:	02400613          	li	a2,36
  40:	4581                	li	a1,0
  42:	9782                	jalr	a5

00000044 <.LVL291>:
  44:	485c                	lw	a5,20(s0)
  46:	6705                	lui	a4,0x1
  48:	80070713          	addi	a4,a4,-2048 # 800 <.LLST223+0x5>
  4c:	00e79b23          	sh	a4,22(a5)
  50:	00078e23          	sb	zero,28(a5)
  54:	00e79c23          	sh	a4,24(a5)
  58:	00078da3          	sb	zero,27(a5)
  5c:	485c                	lw	a5,20(s0)
  5e:	471d                	li	a4,7
  60:	00e78d23          	sb	a4,26(a5)
  64:	4705                	li	a4,1
  66:	02e780a3          	sb	a4,33(a5)

0000006a <.LBB721>:
  6a:	01c7c783          	lbu	a5,28(a5)

0000006e <.LVL293>:
  6e:	28008737          	lui	a4,0x28008
  72:	6007e793          	ori	a5,a5,1536

00000076 <.LVL294>:
  76:	2ef71f23          	sh	a5,766(a4) # 280082fe <.LASF726+0x28001abe>

0000007a <.LBB723>:
  7a:	60400793          	li	a5,1540
  7e:	2ef71a23          	sh	a5,756(a4)

00000082 <.L178>:
  82:	0004c603          	lbu	a2,0(s1)
  86:	485c                	lw	a5,20(s0)
  88:	00c78f23          	sb	a2,30(a5)
  8c:	ce09                	beqz	a2,a6 <.L179>

0000008e <.LBB725>:
  8e:	280087b7          	lui	a5,0x28008
  92:	2f67d503          	lhu	a0,758(a5) # 280082f6 <.LASF726+0x28001ab6>

00000096 <.LBB727>:
  96:	00000737          	lui	a4,0x0
  9a:	00072703          	lw	a4,0(a4) # 0 <llm_set_scan_rsp_data>
  9e:	00148593          	addi	a1,s1,1

000000a2 <.LVL299>:
  a2:	953e                	add	a0,a0,a5

000000a4 <.LVL300>:
  a4:	9702                	jalr	a4

000000a6 <.L179>:
  a6:	485c                	lw	a5,20(s0)

000000a8 <.LBB734>:
  a8:	280086b7          	lui	a3,0x28008
  ac:	2f46d703          	lhu	a4,756(a3) # 280082f4 <.LASF726+0x28001ab4>

000000b0 <.LBE734>:
  b0:	01e7c783          	lbu	a5,30(a5)
  b4:	4501                	li	a0,0

000000b6 <.LBB735>:
  b6:	0ff77713          	andi	a4,a4,255

000000ba <.LBE735>:
  ba:	0799                	addi	a5,a5,6

000000bc <.LBB736>:
  bc:	0ff7f793          	andi	a5,a5,255
  c0:	07a2                	slli	a5,a5,0x8
  c2:	8fd9                	or	a5,a5,a4
  c4:	2ef69a23          	sh	a5,756(a3)

000000c8 <.LBE736>:
  c8:	40b2                	lw	ra,12(sp)
  ca:	4422                	lw	s0,8(sp)
  cc:	4492                	lw	s1,4(sp)

000000ce <.LVL303>:
  ce:	0141                	addi	sp,sp,16
  d0:	8082                	ret

000000d2 <.L180>:
  d2:	4549                	li	a0,18

000000d4 <.LVL305>:
  d4:	8082                	ret

Disassembly of section .text.llm_set_scan_param:

00000000 <llm_set_scan_param>:
   0:	00455703          	lhu	a4,4(a0)
   4:	00255783          	lhu	a5,2(a0)
   8:	0ae7ef63          	bltu	a5,a4,c6 <.L191>
   c:	1141                	addi	sp,sp,-16
   e:	c422                	sw	s0,8(sp)
  10:	c606                	sw	ra,12(sp)
  12:	c226                	sw	s1,4(sp)
  14:	00054603          	lbu	a2,0(a0)
  18:	4685                	li	a3,1
  1a:	842a                	mv	s0,a0
  1c:	4549                	li	a0,18

0000001e <.LVL307>:
  1e:	08c6ef63          	bltu	a3,a2,bc <.L189>
  22:	1771                	addi	a4,a4,-4
  24:	0742                	slli	a4,a4,0x10
  26:	6691                	lui	a3,0x4
  28:	8341                	srli	a4,a4,0x10
  2a:	16f1                	addi	a3,a3,-4
  2c:	08e6e863          	bltu	a3,a4,bc <.L189>
  30:	17f1                	addi	a5,a5,-4
  32:	07c2                	slli	a5,a5,0x10
  34:	83c1                	srli	a5,a5,0x10
  36:	08f6e363          	bltu	a3,a5,bc <.L189>
  3a:	00744703          	lbu	a4,7(s0) # 7 <llm_set_scan_param+0x7>
  3e:	478d                	li	a5,3
  40:	06e7ee63          	bltu	a5,a4,bc <.L189>
  44:	000004b7          	lui	s1,0x0
  48:	00048793          	mv	a5,s1
  4c:	4b9c                	lw	a5,16(a5)
  4e:	00048493          	mv	s1,s1
  52:	ef99                	bnez	a5,70 <.L190>
  54:	4581                	li	a1,0
  56:	4531                	li	a0,12
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL307+0x3a>

00000060 <.LVL308>:
  60:	000007b7          	lui	a5,0x0
  64:	0007a783          	lw	a5,0(a5) # 0 <llm_set_scan_param>
  68:	c888                	sw	a0,16(s1)
  6a:	4631                	li	a2,12
  6c:	4581                	li	a1,0
  6e:	9782                	jalr	a5

00000070 <.L190>:
  70:	489c                	lw	a5,16(s1)
  72:	00744703          	lbu	a4,7(s0)
  76:	4501                	li	a0,0
  78:	00e78423          	sb	a4,8(a5)
  7c:	489c                	lw	a5,16(s1)
  7e:	00245703          	lhu	a4,2(s0)
  82:	00e79223          	sh	a4,4(a5)
  86:	489c                	lw	a5,16(s1)
  88:	00445703          	lhu	a4,4(s0)
  8c:	00e79323          	sh	a4,6(a5)
  90:	489c                	lw	a5,16(s1)
  92:	00044703          	lbu	a4,0(s0)
  96:	00e784a3          	sb	a4,9(a5)
  9a:	489c                	lw	a5,16(s1)
  9c:	00644703          	lbu	a4,6(s0)
  a0:	00e785a3          	sb	a4,11(a5)
  a4:	00044703          	lbu	a4,0(s0)
  a8:	4785                	li	a5,1
  aa:	00f71963          	bne	a4,a5,bc <.L189>

000000ae <.LBB737>:
  ae:	6785                	lui	a5,0x1
  b0:	28008737          	lui	a4,0x28008
  b4:	c0378793          	addi	a5,a5,-1021 # c03 <.LLST141+0xb>
  b8:	2ef71523          	sh	a5,746(a4) # 280082ea <.LASF726+0x28001aaa>

000000bc <.L189>:
  bc:	40b2                	lw	ra,12(sp)
  be:	4422                	lw	s0,8(sp)

000000c0 <.LVL312>:
  c0:	4492                	lw	s1,4(sp)
  c2:	0141                	addi	sp,sp,16
  c4:	8082                	ret

000000c6 <.L191>:
  c6:	4549                	li	a0,18

000000c8 <.LVL314>:
  c8:	8082                	ret

Disassembly of section .text.llm_set_scan_en:

00000000 <llm_set_scan_en>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	00054483          	lbu	s1,0(a0)
   e:	00000437          	lui	s0,0x0
  12:	00040413          	mv	s0,s0
  16:	e0b9                	bnez	s1,5c <.L202>

00000018 <.LBB739>:
  18:	4501                	li	a0,0

0000001a <.LVL316>:
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL316>

00000022 <.LVL317>:
  22:	0f057593          	andi	a1,a0,240
  26:	0035e593          	ori	a1,a1,3
  2a:	4501                	li	a0,0

0000002c <.LVL318>:
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL318>

00000034 <.LVL319>:
  34:	4868                	lw	a0,84(s0)
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL319+0x2>

0000003e <.LVL320>:
  3e:	00000537          	lui	a0,0x0
  42:	00850513          	addi	a0,a0,8 # 8 <llm_set_scan_en+0x8>
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL320+0x8>

0000004e <.L203>:
  4e:	40b2                	lw	ra,12(sp)
  50:	4422                	lw	s0,8(sp)
  52:	8526                	mv	a0,s1
  54:	4902                	lw	s2,0(sp)
  56:	4492                	lw	s1,4(sp)
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

0000005c <.L202>:
  5c:	481c                	lw	a5,16(s0)
  5e:	892a                	mv	s2,a0
  60:	eb85                	bnez	a5,90 <.L204>

00000062 <.LBB740>:
  62:	4581                	li	a1,0
  64:	4531                	li	a0,12

00000066 <.LVL323>:
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL323>

0000006e <.LVL324>:
  6e:	c808                	sw	a0,16(s0)
  70:	00050423          	sb	zero,8(a0)
  74:	481c                	lw	a5,16(s0)
  76:	4741                	li	a4,16
  78:	00e79223          	sh	a4,4(a5)
  7c:	481c                	lw	a5,16(s0)
  7e:	4721                	li	a4,8
  80:	00e79323          	sh	a4,6(a5)
  84:	481c                	lw	a5,16(s0)
  86:	000784a3          	sb	zero,9(a5)
  8a:	481c                	lw	a5,16(s0)
  8c:	00078523          	sb	zero,10(a5)

00000090 <.L204>:
  90:	000005b7          	lui	a1,0x0
  94:	00000537          	lui	a0,0x0
  98:	00058593          	mv	a1,a1
  9c:	05b50513          	addi	a0,a0,91 # 5b <.L203+0xd>
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.L204+0x10>

000000a8 <.LVL325>:
  a8:	cd01                	beqz	a0,c0 <.L205>
  aa:	4818                	lw	a4,16(s0)
  ac:	00b74783          	lbu	a5,11(a4)
  b0:	8b85                	andi	a5,a5,1
  b2:	c799                	beqz	a5,c0 <.L205>
  b4:	00974703          	lbu	a4,9(a4)
  b8:	4785                	li	a5,1
  ba:	44c9                	li	s1,18
  bc:	f8f709e3          	beq	a4,a5,4e <.L203>

000000c0 <.L205>:
  c0:	481c                	lw	a5,16(s0)
  c2:	00194703          	lbu	a4,1(s2)
  c6:	00e78523          	sb	a4,10(a5)
  ca:	481c                	lw	a5,16(s0)
  cc:	00b7c503          	lbu	a0,11(a5)
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.L205+0x10>

000000d8 <.LVL326>:
  d8:	4808                	lw	a0,16(s0)
  da:	00954783          	lbu	a5,9(a0)
  de:	c785                	beqz	a5,106 <.L206>
  e0:	4705                	li	a4,1
  e2:	02e78b63          	beq	a5,a4,118 <.L207>

000000e6 <.L208>:
  e6:	4501                	li	a0,0
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.L208+0x2>

000000f0 <.LVL327>:
  f0:	0f057593          	andi	a1,a0,240
  f4:	0015e593          	ori	a1,a1,1
  f8:	4501                	li	a0,0

000000fa <.LVL328>:
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LVL328>

00000102 <.LBE742>:
 102:	4481                	li	s1,0
 104:	b7a9                	j	4e <.L203>

00000106 <.L206>:
 106:	4581                	li	a1,0

00000108 <.L225>:
 108:	00000097          	auipc	ra,0x0
 10c:	000080e7          	jalr	ra # 108 <.L225>

00000110 <.LVL330>:
 110:	c868                	sw	a0,84(s0)
 112:	44fd                	li	s1,31
 114:	f969                	bnez	a0,e6 <.L208>
 116:	bf25                	j	4e <.L203>

00000118 <.L207>:
 118:	000005b7          	lui	a1,0x0
 11c:	03458593          	addi	a1,a1,52 # 34 <.LVL319>
 120:	b7e5                	j	108 <.L225>

Disassembly of section .text.llm_wl_clr:

00000000 <llm_wl_clr>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	4401                	li	s0,0
  12:	4991                	li	s3,4
  14:	8926                	mv	s2,s1

00000016 <.L227>:
  16:	8522                	mv	a0,s0
  18:	0405                	addi	s0,s0,1

0000001a <.LVL334>:
  1a:	0442                	slli	s0,s0,0x10
  1c:	00048593          	mv	a1,s1
  20:	8041                	srli	s0,s0,0x10
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL334+0x8>

0000002a <.LVL335>:
  2a:	ff3416e3          	bne	s0,s3,16 <.L227>
  2e:	4401                	li	s0,0

00000030 <.LVL336>:
  30:	4491                	li	s1,4

00000032 <.L228>:
  32:	8522                	mv	a0,s0
  34:	0405                	addi	s0,s0,1

00000036 <.LVL338>:
  36:	0442                	slli	s0,s0,0x10
  38:	00090593          	mv	a1,s2
  3c:	8041                	srli	s0,s0,0x10
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL338+0x8>

00000046 <.LVL339>:
  46:	fe9416e3          	bne	s0,s1,32 <.L228>

0000004a <.LBB747>:
  4a:	28008737          	lui	a4,0x28008
  4e:	22e75683          	lhu	a3,558(a4) # 2800822e <.LASF726+0x280019ee>
  52:	77f9                	lui	a5,0xffffe
  54:	17fd                	addi	a5,a5,-1
  56:	8efd                	and	a3,a3,a5
  58:	22d71723          	sh	a3,558(a4)

0000005c <.LBB753>:
  5c:	26275683          	lhu	a3,610(a4)
  60:	8efd                	and	a3,a3,a5
  62:	26d71123          	sh	a3,610(a4)

00000066 <.LBB754>:
  66:	29675683          	lhu	a3,662(a4)
  6a:	8ff5                	and	a5,a5,a3
  6c:	28f71b23          	sh	a5,662(a4)

00000070 <.LBE754>:
  70:	000007b7          	lui	a5,0x0
  74:	00078793          	mv	a5,a5
  78:	060788a3          	sb	zero,113(a5) # 71 <.LBE754+0x1>
  7c:	06078923          	sb	zero,114(a5)

00000080 <.LBE747>:
  80:	40f2                	lw	ra,28(sp)
  82:	4462                	lw	s0,24(sp)

00000084 <.LVL345>:
  84:	44d2                	lw	s1,20(sp)
  86:	4942                	lw	s2,16(sp)
  88:	49b2                	lw	s3,12(sp)
  8a:	6105                	addi	sp,sp,32
  8c:	8082                	ret

Disassembly of section .text.llm_init:

00000000 <llm_init>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	000004b7          	lui	s1,0x0
   c:	ce06                	sw	ra,28(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c452                	sw	s4,8(sp)
  12:	00048413          	mv	s0,s1
  16:	000009b7          	lui	s3,0x0
  1a:	10051a63          	bnez	a0,12e <.L233>
  1e:	000005b7          	lui	a1,0x0
  22:	00058593          	mv	a1,a1
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <llm_init+0x26>

0000002e <.LVL347>:
  2e:	000005b7          	lui	a1,0x0
  32:	00058593          	mv	a1,a1
  36:	4505                	li	a0,1
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL347+0xa>

00000040 <.L234>:
  40:	4581                	li	a1,0
  42:	4501                	li	a0,0
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.L234+0x4>

0000004c <.LVL349>:
  4c:	478d                	li	a5,3
  4e:	00000937          	lui	s2,0x0
  52:	04f40d23          	sb	a5,90(s0) # 5a <.LVL349+0xe>
  56:	04040623          	sb	zero,76(s0)
  5a:	04042a23          	sw	zero,84(s0)
  5e:	04040ca3          	sb	zero,89(s0)

00000062 <.LBB755>:
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LBB755>

0000006a <.LBE755>:
  6a:	00092783          	lw	a5,0(s2) # 0 <llm_init>

0000006e <.LBB758>:
  6e:	04a40023          	sb	a0,64(s0)

00000072 <.LBE758>:
  72:	00000537          	lui	a0,0x0
  76:	4611                	li	a2,4
  78:	0ff00593          	li	a1,255
  7c:	040400a3          	sb	zero,65(s0)
  80:	04040123          	sb	zero,66(s0)
  84:	03250513          	addi	a0,a0,50 # 32 <.LVL347+0x4>
  88:	9782                	jalr	a5

0000008a <.LVL351>:
  8a:	4a7d                	li	s4,31
  8c:	03440b23          	sb	s4,54(s0)
  90:	04042423          	sw	zero,72(s0)
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL351+0xa>

0000009c <.LVL352>:
  9c:	47c1                	li	a5,16
  9e:	06f41523          	sh	a5,106(s0)
  a2:	00092783          	lw	a5,0(s2)
  a6:	00000537          	lui	a0,0x0
  aa:	461d                	li	a2,7
  ac:	4581                	li	a1,0
  ae:	0c0409a3          	sb	zero,211(s0)
  b2:	03440c23          	sb	s4,56(s0)
  b6:	03950513          	addi	a0,a0,57 # 39 <.LVL347+0xb>
  ba:	9782                	jalr	a5

000000bc <.LVL353>:
  bc:	00898513          	addi	a0,s3,8 # 8 <llm_init+0x8>
  c0:	04040c23          	sb	zero,88(s0)
  c4:	00042823          	sw	zero,16(s0)
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL353+0xc>

000000d0 <.LVL354>:
  d0:	00092783          	lw	a5,0(s2)
  d4:	00000537          	lui	a0,0x0
  d8:	00042a23          	sw	zero,20(s0)
  dc:	4619                	li	a2,6
  de:	4581                	li	a1,0
  e0:	05b50513          	addi	a0,a0,91 # 5b <.LVL349+0xf>
  e4:	9782                	jalr	a5

000000e6 <.LBB759>:
  e6:	28000737          	lui	a4,0x28000
  ea:	535c                	lw	a5,36(a4)

000000ec <.LBB761>:
  ec:	0087d693          	srli	a3,a5,0x8
  f0:	06f400a3          	sb	a5,97(s0)

000000f4 <.LVL357>:
  f4:	06d40123          	sb	a3,98(s0)

000000f8 <.LVL358>:
  f8:	0107d693          	srli	a3,a5,0x10
  fc:	83e1                	srli	a5,a5,0x18

000000fe <.LVL359>:
  fe:	06d401a3          	sb	a3,99(s0)
 102:	06f40223          	sb	a5,100(s0)

00000106 <.LBB763>:
 106:	571c                	lw	a5,40(a4)

00000108 <.LBB765>:
 108:	06f402a3          	sb	a5,101(s0)
 10c:	07c2                	slli	a5,a5,0x10

0000010e <.LVL362>:
 10e:	83c1                	srli	a5,a5,0x10
 110:	83a1                	srli	a5,a5,0x8
 112:	06f40323          	sb	a5,102(s0)

00000116 <.L240>:
 116:	00048513          	mv	a0,s1
 11a:	00000097          	auipc	ra,0x0
 11e:	000080e7          	jalr	ra # 11a <.L240+0x4>

00000122 <.LVL363>:
 122:	cd39                	beqz	a0,180 <.L239>
 124:	00000097          	auipc	ra,0x0
 128:	000080e7          	jalr	ra # 124 <.LVL363+0x2>

0000012c <.LBE767>:
 12c:	b7ed                	j	116 <.L240>

0000012e <.L233>:
 12e:	485c                	lw	a5,20(s0)
 130:	c39d                	beqz	a5,156 <.L235>
 132:	4388                	lw	a0,0(a5)

00000134 <.LVL366>:
 134:	c509                	beqz	a0,13e <.L236>
 136:	00000097          	auipc	ra,0x0
 13a:	000080e7          	jalr	ra # 136 <.LVL366+0x2>

0000013e <.L236>:
 13e:	485c                	lw	a5,20(s0)
 140:	43c8                	lw	a0,4(a5)
 142:	c509                	beqz	a0,14c <.L237>
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <.L236+0x6>

0000014c <.L237>:
 14c:	4848                	lw	a0,20(s0)
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <.L237+0x2>

00000156 <.L235>:
 156:	4808                	lw	a0,16(s0)
 158:	c509                	beqz	a0,162 <.L238>
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.L235+0x4>

00000162 <.L238>:
 162:	00898513          	addi	a0,s3,8
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.L238+0x4>

0000016e <.LVL371>:
 16e:	00000537          	lui	a0,0x0
 172:	01850513          	addi	a0,a0,24 # 18 <llm_init+0x18>
 176:	00000097          	auipc	ra,0x0
 17a:	000080e7          	jalr	ra # 176 <.LVL371+0x8>

0000017e <.LVL372>:
 17e:	b5c9                	j	40 <.L234>

00000180 <.L239>:
 180:	00048513          	mv	a0,s1

00000184 <.LVL374>:
 184:	00000097          	auipc	ra,0x0
 188:	000080e7          	jalr	ra # 184 <.LVL374>

0000018c <.LVL375>:
 18c:	00000537          	lui	a0,0x0
 190:	01850513          	addi	a0,a0,24 # 18 <llm_init+0x18>
 194:	00000097          	auipc	ra,0x0
 198:	000080e7          	jalr	ra # 194 <.LVL375+0x8>

0000019c <.LVL376>:
 19c:	000005b7          	lui	a1,0x0
 1a0:	02040513          	addi	a0,s0,32
 1a4:	4631                	li	a2,12
 1a6:	00058593          	mv	a1,a1
 1aa:	00000097          	auipc	ra,0x0
 1ae:	000080e7          	jalr	ra # 1aa <.LVL376+0xe>

000001b2 <.LVL377>:
 1b2:	4785                	li	a5,1
 1b4:	02f40ba3          	sb	a5,55(s0)
 1b8:	0af607b7          	lui	a5,0xaf60
 1bc:	06478793          	addi	a5,a5,100 # af60064 <.LASF726+0xaf59824>
 1c0:	d45c                	sw	a5,44(s0)
 1c2:	6785                	lui	a5,0x1
 1c4:	8c478793          	addi	a5,a5,-1852 # 8c4 <.LLST192+0x5>
 1c8:	02f41823          	sh	a5,48(s0)
 1cc:	06040723          	sb	zero,110(s0)
 1d0:	06041623          	sh	zero,108(s0)
 1d4:	04040823          	sb	zero,80(s0)
 1d8:	04041723          	sh	zero,78(s0)
 1dc:	40f2                	lw	ra,28(sp)
 1de:	4462                	lw	s0,24(sp)
 1e0:	44d2                	lw	s1,20(sp)
 1e2:	4942                	lw	s2,16(sp)
 1e4:	49b2                	lw	s3,12(sp)
 1e6:	4a22                	lw	s4,8(sp)
 1e8:	6105                	addi	sp,sp,32
 1ea:	8082                	ret

Disassembly of section .text.llm_wl_dev_add:

00000000 <llm_wl_dev_add>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	00000537          	lui	a0,0x0

0000000a <.LVL379>:
   a:	c226                	sw	s1,4(sp)
   c:	00050513          	mv	a0,a0
  10:	84ae                	mv	s1,a1
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL379+0xa>

0000001c <.LVL380>:
  1c:	c095                	beqz	s1,40 <.L255>
  1e:	4785                	li	a5,1
  20:	02f48663          	beq	s1,a5,4c <.L256>

00000024 <.L257>:
  24:	000007b7          	lui	a5,0x0
  28:	00078793          	mv	a5,a5
  2c:	0727c703          	lbu	a4,114(a5) # 72 <.LBB687>
  30:	0705                	addi	a4,a4,1
  32:	06e78923          	sb	a4,114(a5)
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL382>:
  3a:	4492                	lw	s1,4(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

00000040 <.L255>:
  40:	85a2                	mv	a1,s0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.L255+0x2>

0000004a <.LVL384>:
  4a:	bfe9                	j	24 <.L257>

0000004c <.L256>:
  4c:	85a2                	mv	a1,s0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L256+0x2>

00000056 <.LVL386>:
  56:	b7f9                	j	24 <.L257>

Disassembly of section .text.llm_wl_dev_rem:

00000000 <llm_wl_dev_rem>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842e                	mv	s0,a1
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <llm_wl_dev_rem+0x8>

00000010 <.LVL388>:
  10:	478d                	li	a5,3
  12:	02a7e663          	bltu	a5,a0,3e <.L259>
  16:	000005b7          	lui	a1,0x0
  1a:	4785                	li	a5,1
  1c:	00058593          	mv	a1,a1
  20:	02f41363          	bne	s0,a5,46 <.L261>
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL388+0x14>

0000002c <.L262>:
  2c:	000007b7          	lui	a5,0x0
  30:	00078793          	mv	a5,a5
  34:	0727c703          	lbu	a4,114(a5) # 72 <.LBB687>
  38:	177d                	addi	a4,a4,-1
  3a:	06e78923          	sb	a4,114(a5)

0000003e <.L259>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

00000046 <.L261>:
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.L261>

0000004e <.LVL392>:
  4e:	bff9                	j	2c <.L262>

Disassembly of section .text.llm_wl_dev_add_hdl:

00000000 <llm_wl_dev_add_hdl>:
   0:	4785                	li	a5,1
   2:	00b7fb63          	bgeu	a5,a1,18 <.L265>
   6:	4549                	li	a0,18

00000008 <.LVL394>:
   8:	8082                	ret

0000000a <.L267>:
   a:	4549                	li	a0,18

0000000c <.L266>:
   c:	40b2                	lw	ra,12(sp)
   e:	4422                	lw	s0,8(sp)
  10:	4492                	lw	s1,4(sp)
  12:	4902                	lw	s2,0(sp)

00000014 <.LVL397>:
  14:	0141                	addi	sp,sp,16
  16:	8082                	ret

00000018 <.L265>:
  18:	1141                	addi	sp,sp,-16
  1a:	4601                	li	a2,0
  1c:	c226                	sw	s1,4(sp)
  1e:	c04a                	sw	s2,0(sp)
  20:	c606                	sw	ra,12(sp)
  22:	c422                	sw	s0,8(sp)
  24:	892a                	mv	s2,a0
  26:	84ae                	mv	s1,a1
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.L265+0x10>

00000030 <.LVL399>:
  30:	fd69                	bnez	a0,a <.L267>
  32:	00000437          	lui	s0,0x0
  36:	00040793          	mv	a5,s0
  3a:	0717c703          	lbu	a4,113(a5)
  3e:	478d                	li	a5,3
  40:	00040413          	mv	s0,s0
  44:	451d                	li	a0,7
  46:	fce7e3e3          	bltu	a5,a4,c <.L266>
  4a:	4701                	li	a4,0
  4c:	4689                	li	a3,2
  4e:	4601                	li	a2,0
  50:	85a6                	mv	a1,s1
  52:	854a                	mv	a0,s2
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL399+0x24>

0000005c <.LVL400>:
  5c:	47ad                	li	a5,11
  5e:	00f50863          	beq	a0,a5,6e <.L268>
  62:	85a6                	mv	a1,s1
  64:	854a                	mv	a0,s2
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL400+0xa>

0000006e <.L268>:
  6e:	07144783          	lbu	a5,113(s0) # 71 <.L268+0x3>
  72:	4501                	li	a0,0
  74:	0785                	addi	a5,a5,1
  76:	06f408a3          	sb	a5,113(s0)
  7a:	bf49                	j	c <.L266>

Disassembly of section .text.llm_wl_dev_rem_hdl:

00000000 <llm_wl_dev_rem_hdl>:
   0:	4785                	li	a5,1
   2:	00b7fa63          	bgeu	a5,a1,16 <.L274>
   6:	4549                	li	a0,18

00000008 <.LVL403>:
   8:	8082                	ret

0000000a <.L276>:
   a:	4549                	li	a0,18

0000000c <.L275>:
   c:	40f2                	lw	ra,28(sp)
   e:	4462                	lw	s0,24(sp)
  10:	44d2                	lw	s1,20(sp)

00000012 <.LVL405>:
  12:	6105                	addi	sp,sp,32
  14:	8082                	ret

00000016 <.L274>:
  16:	1101                	addi	sp,sp,-32
  18:	00f10613          	addi	a2,sp,15
  1c:	cc22                	sw	s0,24(sp)
  1e:	ca26                	sw	s1,20(sp)
  20:	ce06                	sw	ra,28(sp)
  22:	84aa                	mv	s1,a0
  24:	842e                	mv	s0,a1
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.L274+0x10>

0000002e <.LVL407>:
  2e:	dd71                	beqz	a0,a <.L276>
  30:	00f14783          	lbu	a5,15(sp)
  34:	c78d                	beqz	a5,5e <.L277>
  36:	4701                	li	a4,0
  38:	4685                	li	a3,1
  3a:	4601                	li	a2,0
  3c:	85a2                	mv	a1,s0
  3e:	8526                	mv	a0,s1
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL407+0x12>

00000048 <.L278>:
  48:	000007b7          	lui	a5,0x0
  4c:	00078793          	mv	a5,a5
  50:	0717c703          	lbu	a4,113(a5) # 71 <.LVL209+0x1>
  54:	4501                	li	a0,0
  56:	177d                	addi	a4,a4,-1
  58:	06e788a3          	sb	a4,113(a5)
  5c:	bf45                	j	c <.L275>

0000005e <.L277>:
  5e:	85a2                	mv	a1,s0
  60:	8526                	mv	a0,s1
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.L277+0x4>

0000006a <.LVL409>:
  6a:	bff9                	j	48 <.L278>

Disassembly of section .text.llm_create_con:

00000000 <llm_create_con>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	00000937          	lui	s2,0x0
   8:	c422                	sw	s0,8(sp)
   a:	842a                	mv	s0,a0
   c:	04490513          	addi	a0,s2,68 # 44 <.LVL413>

00000010 <.LVL411>:
  10:	c226                	sw	s1,4(sp)
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL411+0x4>

0000001c <.LVL412>:
  1c:	44a5                	li	s1,9
  1e:	e50d                	bnez	a0,48 <.L286>
  20:	00444703          	lbu	a4,4(s0)
  24:	4785                	li	a5,1
  26:	84aa                	mv	s1,a0
  28:	02f70763          	beq	a4,a5,56 <.L287>
  2c:	00544583          	lbu	a1,5(s0)
  30:	4701                	li	a4,0
  32:	4681                	li	a3,0
  34:	04490613          	addi	a2,s2,68
  38:	00640513          	addi	a0,s0,6
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL412+0x20>

00000044 <.LVL413>:
  44:	c515                	beqz	a0,70 <.L288>
  46:	84aa                	mv	s1,a0

00000048 <.L286>:
  48:	40b2                	lw	ra,12(sp)
  4a:	4422                	lw	s0,8(sp)

0000004c <.LVL415>:
  4c:	8526                	mv	a0,s1
  4e:	4902                	lw	s2,0(sp)
  50:	4492                	lw	s1,4(sp)
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

00000056 <.L287>:
  56:	000007b7          	lui	a5,0x0
  5a:	00078793          	mv	a5,a5
  5e:	0727c703          	lbu	a4,114(a5) # 72 <.L288+0x2>
  62:	e719                	bnez	a4,70 <.L288>
  64:	0717c483          	lbu	s1,113(a5)
  68:	0014b493          	seqz	s1,s1
  6c:	04ad                	addi	s1,s1,11
  6e:	bfe9                	j	48 <.L286>

00000070 <.L288>:
  70:	00245683          	lhu	a3,2(s0)
  74:	00045703          	lhu	a4,0(s0)
  78:	00d77463          	bgeu	a4,a3,80 <.L289>

0000007c <.L290>:
  7c:	44c9                	li	s1,18
  7e:	b7e9                	j	48 <.L286>

00000080 <.L289>:
  80:	00e45783          	lhu	a5,14(s0)
  84:	01045583          	lhu	a1,16(s0)
  88:	fef5eae3          	bltu	a1,a5,7c <.L290>
  8c:	16f1                	addi	a3,a3,-4
  8e:	06c2                	slli	a3,a3,0x10
  90:	6611                	lui	a2,0x4
  92:	82c1                	srli	a3,a3,0x10
  94:	1671                	addi	a2,a2,-4
  96:	fed663e3          	bltu	a2,a3,7c <.L290>
  9a:	1771                	addi	a4,a4,-4
  9c:	0742                	slli	a4,a4,0x10
  9e:	8341                	srli	a4,a4,0x10
  a0:	fce66ee3          	bltu	a2,a4,7c <.L290>
  a4:	01645683          	lhu	a3,22(s0)
  a8:	01845703          	lhu	a4,24(s0)
  ac:	fcd768e3          	bltu	a4,a3,7c <.L290>
  b0:	4715                	li	a4,5
  b2:	fcf775e3          	bgeu	a4,a5,7c <.L290>
  b6:	6685                	lui	a3,0x1
  b8:	c8068793          	addi	a5,a3,-896 # c80 <.LLST152+0x10>
  bc:	fcb7e0e3          	bltu	a5,a1,7c <.L290>
  c0:	01445703          	lhu	a4,20(s0)
  c4:	c7668693          	addi	a3,a3,-906
  c8:	ff670793          	addi	a5,a4,-10 # 27fffff6 <.LASF726+0x27ff97b6>
  cc:	07c2                	slli	a5,a5,0x10
  ce:	83c1                	srli	a5,a5,0x10
  d0:	faf6e6e3          	bltu	a3,a5,7c <.L290>
  d4:	01245783          	lhu	a5,18(s0)
  d8:	1f300693          	li	a3,499
  dc:	faf6e0e3          	bltu	a3,a5,7c <.L290>
  e0:	0785                	addi	a5,a5,1
  e2:	02b787b3          	mul	a5,a5,a1
  e6:	070a                	slli	a4,a4,0x2
  e8:	f8e7fae3          	bgeu	a5,a4,7c <.L290>
  ec:	000005b7          	lui	a1,0x0
  f0:	00000537          	lui	a0,0x0
  f4:	00058593          	mv	a1,a1
  f8:	05b50513          	addi	a0,a0,91 # 5b <.L287+0x5>
  fc:	00000097          	auipc	ra,0x0
 100:	000080e7          	jalr	ra # fc <.L289+0x7c>

00000104 <.LVL418>:
 104:	00c44783          	lbu	a5,12(s0)
 108:	c501                	beqz	a0,110 <.L291>
 10a:	0017f713          	andi	a4,a5,1
 10e:	f73d                	bnez	a4,7c <.L290>

00000110 <.L291>:
 110:	00000937          	lui	s2,0x0
 114:	00090713          	mv	a4,s2
 118:	06f74703          	lbu	a4,111(a4)
 11c:	8b89                	andi	a5,a5,2
 11e:	00090913          	mv	s2,s2
 122:	8b05                	andi	a4,a4,1
 124:	e719                	bnez	a4,132 <.L292>
 126:	fbb9                	bnez	a5,7c <.L290>

00000128 <.L304>:
 128:	00544783          	lbu	a5,5(s0)
 12c:	8b89                	andi	a5,a5,2
 12e:	c399                	beqz	a5,134 <.L293>
 130:	b7b1                	j	7c <.L290>

00000132 <.L292>:
 132:	dbfd                	beqz	a5,128 <.L304>

00000134 <.L293>:
 134:	4501                	li	a0,0
 136:	00000097          	auipc	ra,0x0
 13a:	000080e7          	jalr	ra # 136 <.L293+0x2>

0000013e <.LVL419>:
 13e:	0f057593          	andi	a1,a0,240
 142:	0025e593          	ori	a1,a1,2
 146:	4501                	li	a0,0

00000148 <.LVL420>:
 148:	00000097          	auipc	ra,0x0
 14c:	000080e7          	jalr	ra # 148 <.LVL420>

00000150 <.LBE772>:
 150:	04495603          	lhu	a2,68(s2) # 44 <.LVL413>
 154:	000005b7          	lui	a1,0x0
 158:	03458593          	addi	a1,a1,52 # 34 <.LVL412+0x18>
 15c:	8522                	mv	a0,s0
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LBE772+0xe>

00000166 <.LVL422>:
 166:	04a92a23          	sw	a0,84(s2)
 16a:	ec051fe3          	bnez	a0,48 <.L286>
 16e:	44fd                	li	s1,31
 170:	bde1                	j	48 <.L286>

Disassembly of section .text.llm_encryption_start:

00000000 <llm_encryption_start>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)

00000004 <.LVL424>:
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB784>:
   6:	00354783          	lbu	a5,3(a0)
   a:	00254703          	lbu	a4,2(a0)

0000000e <.LBB785>:
   e:	00054683          	lbu	a3,0(a0)

00000012 <.LBB786>:
  12:	07a2                	slli	a5,a5,0x8

00000014 <.LBE786>:
  14:	8fd9                	or	a5,a5,a4

00000016 <.LBB787>:
  16:	00154703          	lbu	a4,1(a0)

0000001a <.LBE787>:
  1a:	07c2                	slli	a5,a5,0x10

0000001c <.LBB792>:
  1c:	28000437          	lui	s0,0x28000

00000020 <.LBB788>:
  20:	0722                	slli	a4,a4,0x8

00000022 <.LBE788>:
  22:	8f55                	or	a4,a4,a3
  24:	8fd9                	or	a5,a5,a4

00000026 <.LBB796>:
  26:	0cf42223          	sw	a5,196(s0) # 280000c4 <.LASF726+0x27ff9884>

0000002a <.LBB797>:
  2a:	00754783          	lbu	a5,7(a0)
  2e:	00654703          	lbu	a4,6(a0)

00000032 <.LBB809>:
  32:	00454683          	lbu	a3,4(a0)

00000036 <.LBB810>:
  36:	07a2                	slli	a5,a5,0x8

00000038 <.LBE810>:
  38:	8fd9                	or	a5,a5,a4

0000003a <.LBB811>:
  3a:	00554703          	lbu	a4,5(a0)

0000003e <.LBE811>:
  3e:	07c2                	slli	a5,a5,0x10

00000040 <.LBB814>:
  40:	01050593          	addi	a1,a0,16

00000044 <.LBB812>:
  44:	0722                	slli	a4,a4,0x8

00000046 <.LBE812>:
  46:	8f55                	or	a4,a4,a3
  48:	8fd9                	or	a5,a5,a4

0000004a <.LBB820>:
  4a:	0cf42423          	sw	a5,200(s0)

0000004e <.LBB822>:
  4e:	00b54783          	lbu	a5,11(a0)
  52:	00a54703          	lbu	a4,10(a0)

00000056 <.LBB834>:
  56:	00854683          	lbu	a3,8(a0)

0000005a <.LBB835>:
  5a:	07a2                	slli	a5,a5,0x8

0000005c <.LBE835>:
  5c:	8fd9                	or	a5,a5,a4

0000005e <.LBB836>:
  5e:	00954703          	lbu	a4,9(a0)

00000062 <.LBE836>:
  62:	07c2                	slli	a5,a5,0x10

00000064 <.LBB839>:
  64:	4641                	li	a2,16

00000066 <.LBB837>:
  66:	0722                	slli	a4,a4,0x8

00000068 <.LBE837>:
  68:	8f55                	or	a4,a4,a3
  6a:	8fd9                	or	a5,a5,a4

0000006c <.LBB841>:
  6c:	0cf42623          	sw	a5,204(s0)

00000070 <.LBB843>:
  70:	00f54783          	lbu	a5,15(a0)
  74:	00e54703          	lbu	a4,14(a0)

00000078 <.LBB855>:
  78:	00c54683          	lbu	a3,12(a0)

0000007c <.LBB856>:
  7c:	07a2                	slli	a5,a5,0x8

0000007e <.LBE856>:
  7e:	8fd9                	or	a5,a5,a4

00000080 <.LBB857>:
  80:	00d54703          	lbu	a4,13(a0)

00000084 <.LBE857>:
  84:	07c2                	slli	a5,a5,0x10

00000086 <.LBB860>:
  86:	28008537          	lui	a0,0x28008

0000008a <.LBB858>:
  8a:	0722                	slli	a4,a4,0x8

0000008c <.LBE858>:
  8c:	8f55                	or	a4,a4,a3
  8e:	8fd9                	or	a5,a5,a4

00000090 <.LBB862>:
  90:	0cf42823          	sw	a5,208(s0)

00000094 <.LBB864>:
  94:	000007b7          	lui	a5,0x0
  98:	0007a783          	lw	a5,0(a5) # 0 <llm_encryption_start>
  9c:	06e50513          	addi	a0,a0,110 # 2800806e <.LASF726+0x2800182e>
  a0:	9782                	jalr	a5

000000a2 <.LBB865>:
  a2:	06e00793          	li	a5,110
  a6:	0cf42a23          	sw	a5,212(s0)

000000aa <.LBB867>:
  aa:	4785                	li	a5,1
  ac:	0cf42023          	sw	a5,192(s0)

000000b0 <.LBE867>:
  b0:	4422                	lw	s0,8(sp)
  b2:	40b2                	lw	ra,12(sp)
  b4:	00000737          	lui	a4,0x0
  b8:	04f70c23          	sb	a5,88(a4) # 58 <.LBB834+0x2>
  bc:	4541                	li	a0,16
  be:	0141                	addi	sp,sp,16
  c0:	00000317          	auipc	t1,0x0
  c4:	00030067          	jr	t1 # c0 <.LBE867+0x10>

Disassembly of section .text.llm_encryption_done:

00000000 <llm_encryption_done>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040513          	mv	a0,s0
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	ca26                	sw	s1,20(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <llm_encryption_done+0x14>

0000001c <.LVL438>:
  1c:	89aa                	mv	s3,a0

0000001e <.LVL439>:
  1e:	4505                	li	a0,1

00000020 <.LVL440>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL440>

00000028 <.LVL441>:
  28:	0a098a63          	beqz	s3,dc <.L307>
  2c:	0089d583          	lhu	a1,8(s3)
  30:	4785                	li	a5,1
  32:	00000937          	lui	s2,0x0
  36:	0ff5f713          	andi	a4,a1,255

0000003a <.LBB869>:
  3a:	46c5                	li	a3,17

0000003c <.LBE869>:
  3c:	06f70163          	beq	a4,a5,9e <.L309>

00000040 <.LBB874>:
  40:	6609                	lui	a2,0x2
  42:	6505                	lui	a0,0x1
  44:	065d                	addi	a2,a2,23
  46:	4581                	li	a1,0
  48:	80150513          	addi	a0,a0,-2047 # 801 <.LLST223+0x6>
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LBB874+0xc>

00000054 <.LBB870>:
  54:	00092783          	lw	a5,0(s2) # 0 <llm_encryption_done>
  58:	280085b7          	lui	a1,0x28008

0000005c <.LBE870>:
  5c:	84aa                	mv	s1,a0

0000005e <.LBB873>:
  5e:	4641                	li	a2,16
  60:	07e58593          	addi	a1,a1,126 # 2800807e <.LASF726+0x2800183e>
  64:	0505                	addi	a0,a0,1

00000066 <.LVL444>:
  66:	9782                	jalr	a5

00000068 <.LBE873>:
  68:	8526                	mv	a0,s1
  6a:	00048023          	sb	zero,0(s1) # 0 <llm_encryption_done>
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LBE873+0x6>

00000076 <.L310>:
  76:	854e                	mv	a0,s3
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.L310+0x2>

00000080 <.LBB875>:
  80:	00040413          	mv	s0,s0
  84:	4008                	lw	a0,0(s0)

00000086 <.LBE875>:
  86:	c521                	beqz	a0,ce <.L311>

00000088 <.LBB877>:
  88:	4462                	lw	s0,24(sp)
  8a:	40f2                	lw	ra,28(sp)
  8c:	44d2                	lw	s1,20(sp)
  8e:	4942                	lw	s2,16(sp)
  90:	49b2                	lw	s3,12(sp)
  92:	0531                	addi	a0,a0,12

00000094 <.LVL450>:
  94:	6105                	addi	sp,sp,32
  96:	00000317          	auipc	t1,0x0
  9a:	00030067          	jr	t1 # 96 <.LVL450+0x2>

0000009e <.L309>:
  9e:	4601                	li	a2,0
  a0:	4515                	li	a0,5
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.L309+0x4>

000000aa <.LBB880>:
  aa:	00092783          	lw	a5,0(s2)
  ae:	280085b7          	lui	a1,0x28008

000000b2 <.LBE880>:
  b2:	84aa                	mv	s1,a0

000000b4 <.LBB883>:
  b4:	4641                	li	a2,16
  b6:	07e58593          	addi	a1,a1,126 # 2800807e <.LASF726+0x2800183e>
  ba:	0505                	addi	a0,a0,1

000000bc <.LVL454>:
  bc:	9782                	jalr	a5

000000be <.LBE883>:
  be:	8526                	mv	a0,s1
  c0:	00048023          	sb	zero,0(s1)
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LBE883+0x6>

000000cc <.LVL456>:
  cc:	b76d                	j	76 <.L310>

000000ce <.L311>:
  ce:	4541                	li	a0,16

000000d0 <.LVL458>:
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.LVL458>

000000d8 <.LVL459>:
  d8:	04040c23          	sb	zero,88(s0) # 58 <.LBB870+0x4>

000000dc <.L307>:
  dc:	40f2                	lw	ra,28(sp)
  de:	4462                	lw	s0,24(sp)
  e0:	44d2                	lw	s1,20(sp)
  e2:	4942                	lw	s2,16(sp)
  e4:	49b2                	lw	s3,12(sp)
  e6:	6105                	addi	sp,sp,32
  e8:	8082                	ret
