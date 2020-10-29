
chan.o:     file format elf32-littleriscv


Disassembly of section .text.blmac_pwr_mgt_setf:

00000000 <blmac_pwr_mgt_setf>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00251413          	slli	s0,a0,0x2
   8:	c606                	sw	ra,12(sp)
   a:	ffb47793          	andi	a5,s0,-5
   e:	c385                	beqz	a5,2e <.L2>
  10:	6605                	lui	a2,0x1
  12:	000005b7          	lui	a1,0x0
  16:	00000537          	lui	a0,0x0

0000001a <.LVL1>:
  1a:	95260613          	addi	a2,a2,-1710 # 952 <.LASF300+0x4>
  1e:	00058593          	mv	a1,a1
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL1+0xc>

0000002e <.L2>:
  2e:	44b007b7          	lui	a5,0x44b00
  32:	47e8                	lw	a0,76(a5)
  34:	996d                	andi	a0,a0,-5
  36:	8d41                	or	a0,a0,s0
  38:	c7e8                	sw	a0,76(a5)
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

Disassembly of section .text.chan_get_next_chan:

00000000 <chan_get_next_chan>:
   0:	1141                	addi	sp,sp,-16
   2:	000006b7          	lui	a3,0x0
   6:	00068793          	mv	a5,a3
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	c226                	sw	s1,4(sp)
  10:	c04a                	sw	s2,0(sp)
  12:	5380                	lw	s0,32(a5)

00000014 <.LVL3>:
  14:	4b84                	lw	s1,16(a5)

00000016 <.LBB213>:
  16:	44b007b7          	lui	a5,0x44b00
  1a:	1207a903          	lw	s2,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

0000001e <.LBE213>:
  1e:	00068693          	mv	a3,a3
  22:	c405                	beqz	s0,4a <.L8>
  24:	c491                	beqz	s1,30 <.L9>
  26:	00a4c703          	lbu	a4,10(s1)
  2a:	4789                	li	a5,2
  2c:	0ef70863          	beq	a4,a5,11c <.L7>

00000030 <.L9>:
  30:	6705                	lui	a4,0x1

00000032 <.LBB221>:
  32:	42fc                	lw	a5,68(a3)

00000034 <.LBE221>:
  34:	40070713          	addi	a4,a4,1024 # 1400 <.LLST71>
  38:	974a                	add	a4,a4,s2

0000003a <.LBB222>:
  3a:	8f1d                	sub	a4,a4,a5

0000003c <.LBE222>:
  3c:	0e075063          	bgez	a4,11c <.L7>
  40:	01644703          	lbu	a4,22(s0)
  44:	4791                	li	a5,4
  46:	0cf70b63          	beq	a4,a5,11c <.L7>

0000004a <.L8>:
  4a:	c8bd                	beqz	s1,c0 <.L11>

0000004c <.LBB223>:
  4c:	40dc                	lw	a5,4(s1)
  4e:	42f8                	lw	a4,68(a3)
  50:	8f99                	sub	a5,a5,a4

00000052 <.LBE223>:
  52:	0607d763          	bgez	a5,c0 <.L11>
  56:	0084c783          	lbu	a5,8(s1)
  5a:	5d800693          	li	a3,1496
  5e:	00000737          	lui	a4,0x0
  62:	02d787b3          	mul	a5,a5,a3
  66:	00070713          	mv	a4,a4
  6a:	973e                	add	a4,a4,a5
  6c:	4320                	lw	s0,64(a4)
  6e:	ec19                	bnez	s0,8c <.L12>
  70:	000005b7          	lui	a1,0x0
  74:	00000537          	lui	a0,0x0
  78:	12900613          	li	a2,297
  7c:	00058593          	mv	a1,a1
  80:	00050513          	mv	a0,a0
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LBE223+0x32>

0000008c <.L12>:
  8c:	40dc                	lw	a5,4(s1)

0000008e <.LBB225>:
  8e:	6705                	lui	a4,0x1
  90:	40070713          	addi	a4,a4,1024 # 1400 <.LLST71>
  94:	974a                	add	a4,a4,s2

00000096 <.LBB228>:
  96:	8f1d                	sub	a4,a4,a5

00000098 <.LBE228>:
  98:	06075363          	bgez	a4,fe <.L13>

0000009c <.LBB229>:
  9c:	01245703          	lhu	a4,18(s0)
  a0:	01445603          	lhu	a2,20(s0)
  a4:	4681                	li	a3,0
  a6:	00e67663          	bgeu	a2,a4,b2 <.L14>
  aa:	8f11                	sub	a4,a4,a2
  ac:	01071693          	slli	a3,a4,0x10
  b0:	82c1                	srli	a3,a3,0x10

000000b2 <.L14>:
  b2:	412787b3          	sub	a5,a5,s2
  b6:	83a9                	srli	a5,a5,0xa

000000b8 <.LBE232>:
  b8:	07c2                	slli	a5,a5,0x10
  ba:	83c1                	srli	a5,a5,0x10
  bc:	06f6f063          	bgeu	a3,a5,11c <.L7>

000000c0 <.L11>:
  c0:	000006b7          	lui	a3,0x0
  c4:	00068793          	mv	a5,a3
  c8:	0167c603          	lbu	a2,22(a5)

000000cc <.LBE234>:
  cc:	4701                	li	a4,0

000000ce <.LBB235>:
  ce:	c609                	beqz	a2,d8 <.L15>
  d0:	0127d703          	lhu	a4,18(a5)
  d4:	00068413          	mv	s0,a3

000000d8 <.L15>:
  d8:	0327c683          	lbu	a3,50(a5)
  dc:	ca91                	beqz	a3,f0 <.L16>
  de:	02e7d683          	lhu	a3,46(a5)
  e2:	00e6e763          	bltu	a3,a4,f0 <.L16>
  e6:	00000437          	lui	s0,0x0

000000ea <.LVL15>:
  ea:	8736                	mv	a4,a3

000000ec <.LVL16>:
  ec:	01c40413          	addi	s0,s0,28 # 1c <.LBB213+0x6>

000000f0 <.L16>:
  f0:	04e7c683          	lbu	a3,78(a5)
  f4:	c689                	beqz	a3,fe <.L13>
  f6:	04a7d783          	lhu	a5,74(a5)
  fa:	02e7f863          	bgeu	a5,a4,12a <.L19>

000000fe <.L13>:
  fe:	ec19                	bnez	s0,11c <.L7>

00000100 <.LVL19>:
 100:	000005b7          	lui	a1,0x0
 104:	00000537          	lui	a0,0x0
 108:	17500613          	li	a2,373
 10c:	00058593          	mv	a1,a1
 110:	00050513          	mv	a0,a0
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.LVL19+0x14>

0000011c <.L7>:
 11c:	8522                	mv	a0,s0
 11e:	40b2                	lw	ra,12(sp)
 120:	4422                	lw	s0,8(sp)
 122:	4492                	lw	s1,4(sp)

00000124 <.LVL21>:
 124:	4902                	lw	s2,0(sp)

00000126 <.LVL22>:
 126:	0141                	addi	sp,sp,16
 128:	8082                	ret

0000012a <.L19>:
 12a:	00000437          	lui	s0,0x0

0000012e <.LVL24>:
 12e:	03840413          	addi	s0,s0,56 # 38 <.LBE221+0x4>

00000132 <.LBE236>:
 132:	b7ed                	j	11c <.L7>

Disassembly of section .text.chan_conn_less_delay_prog:

00000000 <chan_conn_less_delay_prog>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	0707c703          	lbu	a4,112(a5) # 70 <.L123>
   c:	00000537          	lui	a0,0x0
  10:	05850513          	addi	a0,a0,88 # 58 <.LBE319>
  14:	01076713          	ori	a4,a4,16
  18:	06e78823          	sb	a4,112(a5)

0000001c <.LBB237>:
  1c:	44b007b7          	lui	a5,0x44b00
  20:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

00000024 <.LBE237>:
  24:	679d                	lui	a5,0x7
  26:	53078793          	addi	a5,a5,1328 # 7530 <.LASF474+0x3aec>
  2a:	95be                	add	a1,a1,a5
  2c:	00000317          	auipc	t1,0x0
  30:	00030067          	jr	t1 # 2c <.LBE237+0x8>

Disassembly of section .text.chan_upd_nb_rem_slots.isra.3:

00000000 <chan_upd_nb_rem_slots.isra.3>:
   0:	000007b7          	lui	a5,0x0

00000004 <.LBB245>:
   4:	06c7a783          	lw	a5,108(a5) # 6c <.LBE288>

00000008 <.LBE245>:
   8:	00055703          	lhu	a4,0(a0)

0000000c <.LBB246>:
   c:	8d9d                	sub	a1,a1,a5

0000000e <.LVL28>:
   e:	81a9                	srli	a1,a1,0xa

00000010 <.LBB250>:
  10:	05c2                	slli	a1,a1,0x10
  12:	81c1                	srli	a1,a1,0x10
  14:	00b77363          	bgeu	a4,a1,1a <.L39>
  18:	85ba                	mv	a1,a4

0000001a <.L39>:
  1a:	40b705b3          	sub	a1,a4,a1
  1e:	00b51023          	sh	a1,0(a0)

00000022 <.LVL29>:
  22:	8082                	ret

Disassembly of section .text.chan_tbtt_detect_conflict.isra.8:

00000000 <chan_tbtt_detect_conflict.isra.8>:
   0:	40b50733          	sub	a4,a0,a1

00000004 <.LBE251>:
   4:	86aa                	mv	a3,a0

00000006 <.LBB254>:
   6:	00074a63          	bltz	a4,1a <.L41>

0000000a <.LBB255>:
   a:	678d                	lui	a5,0x3
   c:	80078793          	addi	a5,a5,-2048 # 2800 <.LASF330+0x6>
  10:	97ae                	add	a5,a5,a1

00000012 <.LBB258>:
  12:	8f89                	sub	a5,a5,a0

00000014 <.LBE258>:
  14:	4505                	li	a0,1

00000016 <.LVL32>:
  16:	0007dd63          	bgez	a5,30 <.L42>

0000001a <.L41>:
  1a:	8d95                	sub	a1,a1,a3

0000001c <.LBE259>:
  1c:	4501                	li	a0,0
  1e:	0005c963          	bltz	a1,30 <.L42>

00000022 <.LBB261>:
  22:	650d                	lui	a0,0x3
  24:	80050513          	addi	a0,a0,-2048 # 2800 <.LASF330+0x6>
  28:	953a                	add	a0,a0,a4

0000002a <.LBE261>:
  2a:	fff54513          	not	a0,a0
  2e:	817d                	srli	a0,a0,0x1f

00000030 <.L42>:
  30:	8082                	ret

Disassembly of section .text.chan_tbtt_insert:

00000000 <chan_tbtt_insert>:
   0:	7139                	addi	sp,sp,-64
   2:	000007b7          	lui	a5,0x0
   6:	d84a                	sw	s2,48(sp)
   8:	0107a903          	lw	s2,16(a5) # 10 <.LVL38+0x4>

0000000c <.LVL38>:
   c:	dc22                	sw	s0,56(sp)
   e:	da26                	sw	s1,52(sp)
  10:	d64e                	sw	s3,44(sp)
  12:	d05a                	sw	s6,32(sp)
  14:	ce5e                	sw	s7,28(sp)
  16:	cc62                	sw	s8,24(sp)
  18:	ca66                	sw	s9,20(sp)
  1a:	de06                	sw	ra,60(sp)
  1c:	d452                	sw	s4,40(sp)
  1e:	d256                	sw	s5,36(sp)
  20:	c86a                	sw	s10,16(sp)
  22:	c66e                	sw	s11,12(sp)
  24:	89aa                	mv	s3,a0
  26:	4b01                	li	s6,0
  28:	4401                	li	s0,0
  2a:	4481                	li	s1,0
  2c:	00000bb7          	lui	s7,0x0
  30:	00000c37          	lui	s8,0x0
  34:	4c89                	li	s9,2

00000036 <.L46>:
  36:	02091163          	bnez	s2,58 <.L53>

0000003a <.L61>:
  3a:	4905                	li	s2,1

0000003c <.L50>:
  3c:	0ff00a13          	li	s4,255
  40:	00000ab7          	lui	s5,0x0
  44:	00000bb7          	lui	s7,0x0
  48:	4c05                	li	s8,1
  4a:	00000cb7          	lui	s9,0x0
  4e:	00000d37          	lui	s10,0x0
  52:	00000db7          	lui	s11,0x0
  56:	a0d9                	j	11c <.L57>

00000058 <.L53>:
  58:	01391c63          	bne	s2,s3,70 <.L47>
  5c:	66800613          	li	a2,1640
  60:	000b8593          	mv	a1,s7
  64:	000c0513          	mv	a0,s8
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.L53+0x10>

00000070 <.L47>:
  70:	00a94783          	lbu	a5,10(s2)
  74:	0049aa03          	lw	s4,4(s3)
  78:	00492a83          	lw	s5,4(s2)
  7c:	03978b63          	beq	a5,s9,b2 <.L48>
  80:	85d6                	mv	a1,s5
  82:	8552                	mv	a0,s4
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L47+0x14>

0000008c <.LVL43>:
  8c:	cd19                	beqz	a0,aa <.L49>
  8e:	0099c703          	lbu	a4,9(s3)
  92:	00994783          	lbu	a5,9(s2)
  96:	02e7f763          	bgeu	a5,a4,c4 <.L63>
  9a:	e011                	bnez	s0,9e <.L51>
  9c:	844a                	mv	s0,s2

0000009e <.L51>:
  9e:	0485                	addi	s1,s1,1

000000a0 <.LVL45>:
  a0:	0ff4f493          	andi	s1,s1,255

000000a4 <.L52>:
  a4:	00092903          	lw	s2,0(s2)
  a8:	b779                	j	36 <.L46>

000000aa <.L49>:
  aa:	f95a68e3          	bltu	s4,s5,3a <.L61>

000000ae <.L65>:
  ae:	8b4a                	mv	s6,s2

000000b0 <.LVL48>:
  b0:	bfd5                	j	a4 <.L52>

000000b2 <.L48>:
  b2:	015a6963          	bltu	s4,s5,c4 <.L63>
  b6:	85d6                	mv	a1,s5
  b8:	8552                	mv	a0,s4
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.L48+0x8>

000000c2 <.LVL50>:
  c2:	d575                	beqz	a0,ae <.L65>

000000c4 <.L63>:
  c4:	844e                	mv	s0,s3

000000c6 <.LVL51>:
  c6:	4485                	li	s1,1

000000c8 <.LVL52>:
  c8:	4901                	li	s2,0

000000ca <.LVL53>:
  ca:	bf8d                	j	3c <.L50>

000000cc <.L58>:
  cc:	e819                	bnez	s0,e2 <.L54>
  ce:	6b100613          	li	a2,1713
  d2:	000a8593          	mv	a1,s5
  d6:	000b8513          	mv	a0,s7
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.L58+0xe>

000000e2 <.L54>:
  e2:	03340563          	beq	s0,s3,10c <.L55>
  e6:	00a44783          	lbu	a5,10(s0)
  ea:	01879a63          	bne	a5,s8,fe <.L56>
  ee:	028d0513          	addi	a0,s10,40 # 28 <.LVL38+0x1c>
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.L54+0x10>

000000fa <.LVL56>:
  fa:	00040523          	sb	zero,10(s0)

000000fe <.L56>:
  fe:	85a2                	mv	a1,s0
 100:	010c8513          	addi	a0,s9,16 # 10 <.LVL38+0x4>
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.L56+0x6>

0000010c <.L55>:
 10c:	85a2                	mv	a1,s0
 10e:	018d8513          	addi	a0,s11,24 # 18 <.LVL38+0xc>
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L55+0x6>

0000011a <.LVL58>:
 11a:	4000                	lw	s0,0(s0)

0000011c <.L57>:
 11c:	14fd                	addi	s1,s1,-1

0000011e <.LVL60>:
 11e:	0ff4f493          	andi	s1,s1,255

00000122 <.LVL61>:
 122:	fb4495e3          	bne	s1,s4,cc <.L58>
 126:	02090a63          	beqz	s2,15a <.L45>
 12a:	5462                	lw	s0,56(sp)

0000012c <.LVL62>:
 12c:	50f2                	lw	ra,60(sp)
 12e:	54d2                	lw	s1,52(sp)

00000130 <.LVL63>:
 130:	5942                	lw	s2,48(sp)

00000132 <.LVL64>:
 132:	5a22                	lw	s4,40(sp)
 134:	5a92                	lw	s5,36(sp)
 136:	4bf2                	lw	s7,28(sp)
 138:	4c62                	lw	s8,24(sp)
 13a:	4cd2                	lw	s9,20(sp)
 13c:	4d42                	lw	s10,16(sp)
 13e:	4db2                	lw	s11,12(sp)
 140:	864e                	mv	a2,s3
 142:	85da                	mv	a1,s6
 144:	59b2                	lw	s3,44(sp)

00000146 <.LVL65>:
 146:	5b02                	lw	s6,32(sp)

00000148 <.LVL66>:
 148:	00000537          	lui	a0,0x0
 14c:	01050513          	addi	a0,a0,16 # 10 <.LVL38+0x4>
 150:	6121                	addi	sp,sp,64
 152:	00000317          	auipc	t1,0x0
 156:	00030067          	jr	t1 # 152 <.LVL66+0xa>

0000015a <.L45>:
 15a:	50f2                	lw	ra,60(sp)
 15c:	5462                	lw	s0,56(sp)

0000015e <.LVL68>:
 15e:	54d2                	lw	s1,52(sp)

00000160 <.LVL69>:
 160:	5942                	lw	s2,48(sp)

00000162 <.LVL70>:
 162:	59b2                	lw	s3,44(sp)

00000164 <.LVL71>:
 164:	5a22                	lw	s4,40(sp)
 166:	5a92                	lw	s5,36(sp)
 168:	5b02                	lw	s6,32(sp)

0000016a <.LVL72>:
 16a:	4bf2                	lw	s7,28(sp)
 16c:	4c62                	lw	s8,24(sp)
 16e:	4cd2                	lw	s9,20(sp)
 170:	4d42                	lw	s10,16(sp)
 172:	4db2                	lw	s11,12(sp)
 174:	6121                	addi	sp,sp,64
 176:	8082                	ret

Disassembly of section .text.chan_upd_ctxt_status:

00000000 <chan_upd_ctxt_status>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	1207a683          	lw	a3,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

00000008 <.LBE270>:
   8:	4709                	li	a4,2
   a:	02e59963          	bne	a1,a4,3c <.L67>
   e:	01754703          	lbu	a4,23(a0)
  12:	4781                	li	a5,0
  14:	00e5e663          	bltu	a1,a4,20 <.L68>
  18:	6785                	lui	a5,0x1
  1a:	fa078793          	addi	a5,a5,-96 # fa0 <.LASF193+0xf>

0000001e <.L77>:
  1e:	97b6                	add	a5,a5,a3

00000020 <.L68>:
  20:	00b50b23          	sb	a1,22(a0)
  24:	e3bd                	bnez	a5,8a <.L70>

00000026 <.LVL76>:
  26:	478d                	li	a5,3
  28:	06f58e63          	beq	a1,a5,a4 <.L66>
  2c:	00000537          	lui	a0,0x0

00000030 <.LVL77>:
  30:	04850513          	addi	a0,a0,72 # 48 <.L67+0xc>
  34:	00000317          	auipc	t1,0x0
  38:	00030067          	jr	t1 # 34 <.LVL77+0x4>

0000003c <.L67>:
  3c:	4611                	li	a2,4
  3e:	4781                	li	a5,0
  40:	fec590e3          	bne	a1,a2,20 <.L68>
  44:	01754603          	lbu	a2,23(a0)
  48:	02c76b63          	bltu	a4,a2,7e <.L69>

0000004c <.LBB277>:
  4c:	00000637          	lui	a2,0x0
  50:	00060613          	mv	a2,a2
  54:	07264803          	lbu	a6,114(a2) # 72 <.LBE275>
  58:	4705                	li	a4,1
  5a:	03077663          	bgeu	a4,a6,86 <.L76>

0000005e <.LBB275>:
  5e:	01255703          	lhu	a4,18(a0)
  62:	01455803          	lhu	a6,20(a0)
  66:	02e87063          	bgeu	a6,a4,86 <.L76>
  6a:	41070733          	sub	a4,a4,a6
  6e:	0742                	slli	a4,a4,0x10
  70:	8341                	srli	a4,a4,0x10

00000072 <.LBE275>:
  72:	00e5fa63          	bgeu	a1,a4,86 <.L76>
  76:	d674                	sw	a3,108(a2)
  78:	00a71793          	slli	a5,a4,0xa
  7c:	b74d                	j	1e <.L77>

0000007e <.L69>:
  7e:	01255783          	lhu	a5,18(a0)
  82:	07aa                	slli	a5,a5,0xa
  84:	bf69                	j	1e <.L77>

00000086 <.L76>:
  86:	4595                	li	a1,5

00000088 <.LVL82>:
  88:	bf61                	j	20 <.L68>

0000008a <.L70>:
  8a:	00000737          	lui	a4,0x0
  8e:	04a72823          	sw	a0,80(a4) # 50 <.LBB277+0x4>
  92:	00000537          	lui	a0,0x0

00000096 <.LVL84>:
  96:	85be                	mv	a1,a5
  98:	04850513          	addi	a0,a0,72 # 48 <.L67+0xc>
  9c:	00000317          	auipc	t1,0x0
  a0:	00030067          	jr	t1 # 9c <.LVL84+0x6>

000000a4 <.L66>:
  a4:	8082                	ret

Disassembly of section .text.chan_switch_start:

00000000 <chan_switch_start>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	5394                	lw	a3,32(a5)
   a:	02a69163          	bne	a3,a0,2c <.L79>
   e:	0727c703          	lbu	a4,114(a5) # 72 <.LVL253>
  12:	4785                	li	a5,1
  14:	04e7fb63          	bgeu	a5,a4,6a <.L78>
  18:	0176c703          	lbu	a4,23(a3) # 17 <chan_switch_start+0x17>
  1c:	4789                	li	a5,2
  1e:	04e7e663          	bltu	a5,a4,6a <.L78>
  22:	4591                	li	a1,4
  24:	00000317          	auipc	t1,0x0
  28:	00030067          	jr	t1 # 24 <chan_switch_start+0x24>

0000002c <.L79>:
  2c:	53d4                	lw	a3,36(a5)
  2e:	ee95                	bnez	a3,6a <.L78>

00000030 <.LBB283>:
  30:	1141                	addi	sp,sp,-16
  32:	c606                	sw	ra,12(sp)

00000034 <.LBB291>:
  34:	4589                	li	a1,2
  36:	d3c8                	sw	a0,36(a5)
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LBB291+0x4>

00000040 <.LBB285>:
  40:	4691                	li	a3,4
  42:	0ff00613          	li	a2,255
  46:	4581                	li	a1,0
  48:	06000513          	li	a0,96
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LBB285+0xc>

00000054 <.LVL90>:
  54:	000007b7          	lui	a5,0x0
  58:	00078793          	mv	a5,a5
  5c:	c11c                	sw	a5,0(a0)

0000005e <.LBE285>:
  5e:	40b2                	lw	ra,12(sp)
  60:	0141                	addi	sp,sp,16

00000062 <.LBB288>:
  62:	00000317          	auipc	t1,0x0
  66:	00030067          	jr	t1 # 62 <.LBB288>

0000006a <.L78>:
  6a:	8082                	ret

Disassembly of section .text.chan_conn_less_delay_evt:

00000000 <chan_conn_less_delay_evt>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040793          	mv	a5,s0
   c:	c606                	sw	ra,12(sp)
   e:	0707c783          	lbu	a5,112(a5) # 70 <.L85+0xc>
  12:	00040413          	mv	s0,s0
  16:	0017f713          	andi	a4,a5,1
  1a:	c729                	beqz	a4,64 <.L85>
  1c:	8b91                	andi	a5,a5,4
  1e:	cf99                	beqz	a5,3c <.L86>
  20:	000005b7          	lui	a1,0x0
  24:	00000537          	lui	a0,0x0

00000028 <.LVL93>:
  28:	2c000613          	li	a2,704
  2c:	00058593          	mv	a1,a1
  30:	00050513          	mv	a0,a0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL93+0xc>

0000003c <.L86>:
  3c:	07044783          	lbu	a5,112(s0) # 70 <.L85+0xc>
  40:	00000537          	lui	a0,0x0
  44:	07050513          	addi	a0,a0,112 # 70 <.L85+0xc>
  48:	9bf9                	andi	a5,a5,-2
  4a:	0047e793          	ori	a5,a5,4
  4e:	06f40823          	sb	a5,112(s0)

00000052 <.L87>:
  52:	505c                	lw	a5,36(s0)
  54:	e7b9                	bnez	a5,a2 <.L84>
  56:	4422                	lw	s0,8(sp)
  58:	40b2                	lw	ra,12(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	00000317          	auipc	t1,0x0
  60:	00030067          	jr	t1 # 5c <.L87+0xa>

00000064 <.L85>:
  64:	0027f713          	andi	a4,a5,2
  68:	cf0d                	beqz	a4,a2 <.L84>
  6a:	8ba1                	andi	a5,a5,8
  6c:	cf99                	beqz	a5,8a <.L90>
  6e:	000005b7          	lui	a1,0x0
  72:	00000537          	lui	a0,0x0

00000076 <.LVL97>:
  76:	2ce00613          	li	a2,718
  7a:	00058593          	mv	a1,a1
  7e:	00050513          	mv	a0,a0
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL97+0xc>

0000008a <.L90>:
  8a:	07044783          	lbu	a5,112(s0)
  8e:	00000537          	lui	a0,0x0
  92:	05450513          	addi	a0,a0,84 # 54 <.L87+0x2>
  96:	9bf5                	andi	a5,a5,-3
  98:	0087e793          	ori	a5,a5,8
  9c:	06f40823          	sb	a5,112(s0)

000000a0 <.LVL99>:
  a0:	bf4d                	j	52 <.L87>

000000a2 <.L84>:
  a2:	40b2                	lw	ra,12(sp)
  a4:	4422                	lw	s0,8(sp)
  a6:	0141                	addi	sp,sp,16
  a8:	8082                	ret

Disassembly of section .text.chan_tbtt_switch_evt:

00000000 <chan_tbtt_switch_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB303>:
   c:	44b007b7          	lui	a5,0x44b00

00000010 <.LBE303>:
  10:	00000437          	lui	s0,0x0

00000014 <.LBB304>:
  14:	1207a983          	lw	s3,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

00000018 <.LBE304>:
  18:	00040793          	mv	a5,s0
  1c:	0727c703          	lbu	a4,114(a5)
  20:	4785                	li	a5,1
  22:	06e7ff63          	bgeu	a5,a4,a0 <.L99>
  26:	00040413          	mv	s0,s0
  2a:	07044783          	lbu	a5,112(s0) # 70 <.LVL105+0x8>
  2e:	8bb1                	andi	a5,a5,12
  30:	eba5                	bnez	a5,a0 <.L99>
  32:	00854703          	lbu	a4,8(a0)
  36:	5d800693          	li	a3,1496
  3a:	000007b7          	lui	a5,0x0
  3e:	02d70733          	mul	a4,a4,a3
  42:	00078793          	mv	a5,a5
  46:	97ba                	add	a5,a5,a4
  48:	0407a903          	lw	s2,64(a5) # 40 <.LBE304+0x28>
  4c:	505c                	lw	a5,36(s0)
  4e:	c399                	beqz	a5,54 <.L103>
  50:	05279863          	bne	a5,s2,a0 <.L99>

00000054 <.L103>:
  54:	000504a3          	sb	zero,9(a0)
  58:	84aa                	mv	s1,a0
  5a:	5008                	lw	a0,32(s0)

0000005c <.LVL104>:
  5c:	85ce                	mv	a1,s3
  5e:	0549                	addi	a0,a0,18
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.LVL104+0x4>

00000068 <.LVL105>:
  68:	01495783          	lhu	a5,20(s2)
  6c:	46a9                	li	a3,10
  6e:	873e                	mv	a4,a5
  70:	00f6f363          	bgeu	a3,a5,76 <.L104>
  74:	4729                	li	a4,10

00000076 <.L104>:
  76:	8f99                	sub	a5,a5,a4
  78:	00f91a23          	sh	a5,20(s2)
  7c:	07342623          	sw	s3,108(s0)
  80:	4789                	li	a5,2
  82:	00f48523          	sb	a5,10(s1)
  86:	505c                	lw	a5,36(s0)
  88:	ef81                	bnez	a5,a0 <.L99>
  8a:	4462                	lw	s0,24(sp)
  8c:	40f2                	lw	ra,28(sp)
  8e:	44d2                	lw	s1,20(sp)

00000090 <.LVL107>:
  90:	49b2                	lw	s3,12(sp)

00000092 <.LVL108>:
  92:	854a                	mv	a0,s2
  94:	4942                	lw	s2,16(sp)
  96:	6105                	addi	sp,sp,32
  98:	00000317          	auipc	t1,0x0
  9c:	00030067          	jr	t1 # 98 <.LVL108+0x6>

000000a0 <.L99>:
  a0:	40f2                	lw	ra,28(sp)
  a2:	4462                	lw	s0,24(sp)
  a4:	44d2                	lw	s1,20(sp)
  a6:	4942                	lw	s2,16(sp)
  a8:	49b2                	lw	s3,12(sp)

000000aa <.LVL110>:
  aa:	6105                	addi	sp,sp,32
  ac:	8082                	ret

Disassembly of section .text.chan_tbtt_schedule:

00000000 <chan_tbtt_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	00000437          	lui	s0,0x0
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c452                	sw	s4,8(sp)
  12:	c256                	sw	s5,4(sp)
  14:	c05a                	sw	s6,0(sp)
  16:	00040413          	mv	s0,s0
  1a:	ed09                	bnez	a0,34 <.L110>

0000001c <.L118>:
  1c:	4808                	lw	a0,16(s0)

0000001e <.LVL113>:
  1e:	e559                	bnez	a0,ac <.L111>

00000020 <.L109>:
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)
  24:	44d2                	lw	s1,20(sp)
  26:	4942                	lw	s2,16(sp)
  28:	49b2                	lw	s3,12(sp)
  2a:	4a22                	lw	s4,8(sp)
  2c:	4a92                	lw	s5,4(sp)
  2e:	4b02                	lw	s6,0(sp)
  30:	6105                	addi	sp,sp,32
  32:	8082                	ret

00000034 <.L110>:
  34:	000004b7          	lui	s1,0x0

00000038 <.LBB318>:
  38:	00000937          	lui	s2,0x0

0000003c <.LBE315>:
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LBE315>

00000044 <.LBB327>:
  44:	000009b7          	lui	s3,0x0

00000048 <.LBB324>:
  48:	00048493          	mv	s1,s1
  4c:	5d800a13          	li	s4,1496

00000050 <.LBB319>:
  50:	00090913          	mv	s2,s2
  54:	1b000a93          	li	s5,432

00000058 <.LBE319>:
  58:	4b11                	li	s6,4

0000005a <.L113>:
  5a:	4c1c                	lw	a5,24(s0)
  5c:	d3e1                	beqz	a5,1c <.L118>

0000005e <.LBB328>:
  5e:	01898513          	addi	a0,s3,24 # 18 <chan_tbtt_schedule+0x18>
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LBB328+0x4>

0000006a <.LBB325>:
  6a:	00854783          	lbu	a5,8(a0)
  6e:	034787b3          	mul	a5,a5,s4
  72:	97a6                	add	a5,a5,s1
  74:	0567c703          	lbu	a4,86(a5)
  78:	e715                	bnez	a4,a4 <.L114>

0000007a <.LBB320>:
  7a:	0607c783          	lbu	a5,96(a5)
  7e:	035787b3          	mul	a5,a5,s5
  82:	97ca                	add	a5,a5,s2
  84:	43dc                	lw	a5,4(a5)

00000086 <.L115>:
  86:	4158                	lw	a4,4(a0)
  88:	97ba                	add	a5,a5,a4

0000008a <.LVL122>:
  8a:	c15c                	sw	a5,4(a0)
  8c:	00954783          	lbu	a5,9(a0)
  90:	00fb6563          	bltu	s6,a5,9a <.L116>
  94:	0785                	addi	a5,a5,1
  96:	00f504a3          	sb	a5,9(a0)

0000009a <.L116>:
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.L116>

000000a2 <.LVL124>:
  a2:	bf65                	j	5a <.L113>

000000a4 <.L114>:
  a4:	33e7d783          	lhu	a5,830(a5)
  a8:	07aa                	slli	a5,a5,0xa

000000aa <.LVL126>:
  aa:	bff1                	j	86 <.L115>

000000ac <.L111>:
  ac:	00a54783          	lbu	a5,10(a0)
  b0:	fba5                	bnez	a5,20 <.L109>

000000b2 <.LBB329>:
  b2:	44b007b7          	lui	a5,0x44b00
  b6:	1207a703          	lw	a4,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

000000ba <.LBB333>:
  ba:	415c                	lw	a5,4(a0)
  bc:	8f99                	sub	a5,a5,a4
  be:	83078793          	addi	a5,a5,-2000

000000c2 <.LBE333>:
  c2:	0007df63          	bgez	a5,e0 <.L119>
  c6:	4462                	lw	s0,24(sp)
  c8:	40f2                	lw	ra,28(sp)
  ca:	44d2                	lw	s1,20(sp)
  cc:	4942                	lw	s2,16(sp)
  ce:	49b2                	lw	s3,12(sp)
  d0:	4a22                	lw	s4,8(sp)
  d2:	4a92                	lw	s5,4(sp)
  d4:	4b02                	lw	s6,0(sp)
  d6:	6105                	addi	sp,sp,32
  d8:	00000317          	auipc	t1,0x0
  dc:	00030067          	jr	t1 # d8 <.LBE333+0x16>

000000e0 <.L119>:
  e0:	d808                	sw	a0,48(s0)
  e2:	4785                	li	a5,1
  e4:	00f50523          	sb	a5,10(a0)
  e8:	4462                	lw	s0,24(sp)
  ea:	414c                	lw	a1,4(a0)
  ec:	40f2                	lw	ra,28(sp)
  ee:	44d2                	lw	s1,20(sp)
  f0:	4942                	lw	s2,16(sp)
  f2:	49b2                	lw	s3,12(sp)
  f4:	4a22                	lw	s4,8(sp)
  f6:	4a92                	lw	s5,4(sp)
  f8:	4b02                	lw	s6,0(sp)
  fa:	00000537          	lui	a0,0x0

000000fe <.LVL130>:
  fe:	02850513          	addi	a0,a0,40 # 28 <.L109+0x8>
 102:	6105                	addi	sp,sp,32
 104:	00000317          	auipc	t1,0x0
 108:	00030067          	jr	t1 # 104 <.LVL130+0x6>

Disassembly of section .text.chan_cde_evt:

00000000 <chan_cde_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB372>:
   e:	44b007b7          	lui	a5,0x44b00

00000012 <.LBE372>:
  12:	00000937          	lui	s2,0x0

00000016 <.LBB373>:
  16:	1207a983          	lw	s3,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

0000001a <.LBE373>:
  1a:	00090793          	mv	a5,s2
  1e:	0727c703          	lbu	a4,114(a5)
  22:	4785                	li	a5,1
  24:	18e7ff63          	bgeu	a5,a4,1c2 <.L121>
  28:	00090913          	mv	s2,s2
  2c:	07094403          	lbu	s0,112(s2) # 70 <.L123>
  30:	02c47413          	andi	s0,s0,44
  34:	18041763          	bnez	s0,1c2 <.L121>
  38:	06892583          	lw	a1,104(s2)
  3c:	84aa                	mv	s1,a0
  3e:	00000537          	lui	a0,0x0

00000042 <.LVL134>:
  42:	95ce                	add	a1,a1,s3
  44:	03850513          	addi	a0,a0,56 # 38 <.LBE373+0x1e>
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL134+0x6>

00000050 <.LBB374>:
  50:	00000737          	lui	a4,0x0
  54:	00070793          	mv	a5,a4
  58:	479c                	lw	a5,8(a5)

0000005a <.LBB379>:
  5a:	000006b7          	lui	a3,0x0

0000005e <.LBE374>:
  5e:	07392623          	sw	s3,108(s2)

00000062 <.LBB388>:
  62:	00070a13          	mv	s4,a4
  66:	4981                	li	s3,0

00000068 <.LBB385>:
  68:	00068693          	mv	a3,a3
  6c:	02400593          	li	a1,36

00000070 <.L123>:
  70:	e3cd                	bnez	a5,112 <.L127>
  72:	06892783          	lw	a5,104(s2)

00000076 <.LVL139>:
  76:	6735                	lui	a4,0xd
  78:	80070713          	addi	a4,a4,-2048 # c800 <.LASF474+0x8dbc>
  7c:	02e7d7b3          	divu	a5,a5,a4
  80:	02f40063          	beq	s0,a5,a0 <.L128>
  84:	000005b7          	lui	a1,0x0
  88:	00000537          	lui	a0,0x0
  8c:	26800613          	li	a2,616
  90:	00058593          	mv	a1,a1
  94:	00050513          	mv	a0,a0
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LVL139+0x22>

000000a0 <.L128>:
  a0:	0a098363          	beqz	s3,146 <.L142>
  a4:	0b340163          	beq	s0,s3,146 <.L142>

000000a8 <.LVL141>:
  a8:	41340433          	sub	s0,s0,s3

000000ac <.LVL142>:
  ac:	02800793          	li	a5,40
  b0:	02f40433          	mul	s0,s0,a5
  b4:	45a9                	li	a1,10
  b6:	0442                	slli	s0,s0,0x10
  b8:	8041                	srli	s0,s0,0x10
  ba:	03344433          	div	s0,s0,s3

000000be <.L129>:
  be:	008a2703          	lw	a4,8(s4)

000000c2 <.LBB392>:
  c2:	00000537          	lui	a0,0x0

000000c6 <.LBB397>:
  c6:	00000837          	lui	a6,0x0

000000ca <.LBB409>:
  ca:	00050513          	mv	a0,a0
  ce:	02400893          	li	a7,36

000000d2 <.LBB410>:
  d2:	4329                	li	t1,10

000000d4 <.LBB400>:
  d4:	00080813          	mv	a6,a6
  d8:	1b000e13          	li	t3,432

000000dc <.LBE400>:
  dc:	03240413          	addi	s0,s0,50 # 32 <.LBE373+0x18>

000000e0 <.L130>:
  e0:	e73d                	bnez	a4,14e <.L138>

000000e2 <.LBE422>:
  e2:	02092503          	lw	a0,32(s2)
  e6:	c511                	beqz	a0,f2 <.L139>
  e8:	4585                	li	a1,1
  ea:	00000097          	auipc	ra,0x0
  ee:	000080e7          	jalr	ra # ea <.LBE422+0x8>

000000f2 <.L139>:
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.L139>

000000fa <.LVL148>:
  fa:	e0f1                	bnez	s1,1be <.L140>

000000fc <.LBE423>:
  fc:	4462                	lw	s0,24(sp)
  fe:	40f2                	lw	ra,28(sp)
 100:	44d2                	lw	s1,20(sp)

00000102 <.LVL149>:
 102:	4942                	lw	s2,16(sp)
 104:	49b2                	lw	s3,12(sp)
 106:	4a22                	lw	s4,8(sp)
 108:	6105                	addi	sp,sp,32

0000010a <.LBB427>:
 10a:	00000317          	auipc	t1,0x0
 10e:	00030067          	jr	t1 # 10a <.LBB427>

00000112 <.L127>:
 112:	43b0                	lw	a2,64(a5)

00000114 <.LVL151>:
 114:	c61d                	beqz	a2,142 <.L124>

00000116 <.LBB386>:
 116:	0577c703          	lbu	a4,87(a5)

0000011a <.LBE386>:
 11a:	0405                	addi	s0,s0,1

0000011c <.LVL152>:
 11c:	0ff47413          	andi	s0,s0,255

00000120 <.LBB387>:
 120:	02b70733          	mul	a4,a4,a1
 124:	9736                	add	a4,a4,a3
 126:	02174703          	lbu	a4,33(a4)

0000012a <.LBE387>:
 12a:	8b0d                	andi	a4,a4,3
 12c:	e701                	bnez	a4,134 <.L125>
 12e:	0587c703          	lbu	a4,88(a5)
 132:	e701                	bnez	a4,13a <.L126>

00000134 <.L125>:
 134:	0985                	addi	s3,s3,1

00000136 <.LVL154>:
 136:	0ff9f993          	andi	s3,s3,255

0000013a <.L126>:
 13a:	00061823          	sh	zero,16(a2)
 13e:	00061a23          	sh	zero,20(a2)

00000142 <.L124>:
 142:	439c                	lw	a5,0(a5)
 144:	b735                	j	70 <.L123>

00000146 <.L142>:
 146:	4401                	li	s0,0

00000148 <.LVL158>:
 148:	03200593          	li	a1,50
 14c:	bf8d                	j	be <.L129>

0000014e <.L138>:
 14e:	4334                	lw	a3,64(a4)

00000150 <.LVL160>:
 150:	ceb1                	beqz	a3,1ac <.L131>

00000152 <.LBB411>:
 152:	05774603          	lbu	a2,87(a4)
 156:	0106d783          	lhu	a5,16(a3) # 10 <.LBB372+0x2>
 15a:	03160633          	mul	a2,a2,a7
 15e:	962a                	add	a2,a2,a0
 160:	02164603          	lbu	a2,33(a2)

00000164 <.LBE411>:
 164:	8a0d                	andi	a2,a2,3
 166:	e601                	bnez	a2,16e <.L132>
 168:	05874603          	lbu	a2,88(a4)
 16c:	e231                	bnez	a2,1b0 <.L133>

0000016e <.L132>:
 16e:	97a2                	add	a5,a5,s0

00000170 <.L153>:
 170:	07c2                	slli	a5,a5,0x10
 172:	83c1                	srli	a5,a5,0x10
 174:	00f69823          	sh	a5,16(a3)
 178:	00f69923          	sh	a5,18(a3)

0000017c <.LBB412>:
 17c:	05674783          	lbu	a5,86(a4)
 180:	eb95                	bnez	a5,1b4 <.L135>

00000182 <.LBB401>:
 182:	06074783          	lbu	a5,96(a4)
 186:	03c787b3          	mul	a5,a5,t3
 18a:	97c2                	add	a5,a5,a6
 18c:	43d0                	lw	a2,4(a5)

0000018e <.L136>:
 18e:	06892783          	lw	a5,104(s2)
 192:	02c7d7b3          	divu	a5,a5,a2

00000196 <.LBB405>:
 196:	e391                	bnez	a5,19a <.L137>
 198:	4785                	li	a5,1

0000019a <.L137>:
 19a:	0ff7f793          	andi	a5,a5,255
 19e:	026787b3          	mul	a5,a5,t1
 1a2:	0146d603          	lhu	a2,20(a3)

000001a6 <.LVL165>:
 1a6:	97b2                	add	a5,a5,a2
 1a8:	00f69a23          	sh	a5,20(a3)

000001ac <.L131>:
 1ac:	4318                	lw	a4,0(a4)
 1ae:	bf0d                	j	e0 <.L130>

000001b0 <.L133>:
 1b0:	97ae                	add	a5,a5,a1
 1b2:	bf7d                	j	170 <.L153>

000001b4 <.L135>:
 1b4:	33e75783          	lhu	a5,830(a4)
 1b8:	00a79613          	slli	a2,a5,0xa

000001bc <.LVL169>:
 1bc:	bfc9                	j	18e <.L136>

000001be <.L140>:
 1be:	02a92223          	sw	a0,36(s2)

000001c2 <.L121>:
 1c2:	40f2                	lw	ra,28(sp)
 1c4:	4462                	lw	s0,24(sp)
 1c6:	44d2                	lw	s1,20(sp)
 1c8:	4942                	lw	s2,16(sp)
 1ca:	49b2                	lw	s3,12(sp)
 1cc:	4a22                	lw	s4,8(sp)
 1ce:	6105                	addi	sp,sp,32
 1d0:	8082                	ret

Disassembly of section .text.chan_pre_switch_channel:

00000000 <chan_pre_switch_channel>:
   0:	00000537          	lui	a0,0x0
   4:	1101                	addi	sp,sp,-32
   6:	04850513          	addi	a0,a0,72 # 48 <.LVL173+0x24>
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	00000437          	lui	s0,0x0
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	c256                	sw	s5,4(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <chan_pre_switch_channel+0x1c>

00000024 <.LVL173>:
  24:	00040793          	mv	a5,s0
  28:	0707c783          	lbu	a5,112(a5)
  2c:	00040413          	mv	s0,s0
  30:	0207f793          	andi	a5,a5,32
  34:	c395                	beqz	a5,58 <.L155>
  36:	07244783          	lbu	a5,114(s0) # 72 <.L157+0x2>
  3a:	4705                	li	a4,1
  3c:	00f77863          	bgeu	a4,a5,4c <.L156>
  40:	505c                	lw	a5,36(s0)
  42:	c789                	beqz	a5,4c <.L156>
  44:	00e78b23          	sb	a4,22(a5)
  48:	02042223          	sw	zero,36(s0)

0000004c <.L156>:
  4c:	07044783          	lbu	a5,112(s0)
  50:	fdf7f793          	andi	a5,a5,-33
  54:	06f40823          	sb	a5,112(s0)

00000058 <.L155>:
  58:	07044783          	lbu	a5,112(s0)
  5c:	5058                	lw	a4,36(s0)
  5e:	0087f693          	andi	a3,a5,8
  62:	ee89                	bnez	a3,7c <.L177>
  64:	8b91                	andi	a5,a5,4
  66:	c385                	beqz	a5,86 <.L158>
  68:	000007b7          	lui	a5,0x0
  6c:	07078793          	addi	a5,a5,112 # 70 <.L157>

00000070 <.L157>:
  70:	c701                	beqz	a4,78 <.L194>
  72:	4685                	li	a3,1
  74:	00d70b23          	sb	a3,22(a4)

00000078 <.L194>:
  78:	d05c                	sw	a5,36(s0)
  7a:	a00d                	j	9c <.L160>

0000007c <.L177>:
  7c:	000007b7          	lui	a5,0x0
  80:	05478793          	addi	a5,a5,84 # 54 <.L156+0x8>
  84:	b7f5                	j	70 <.L157>

00000086 <.L158>:
  86:	eb19                	bnez	a4,9c <.L160>
  88:	07244703          	lbu	a4,114(s0)
  8c:	4785                	li	a5,1
  8e:	0ae7fd63          	bgeu	a5,a4,148 <.L161>
  92:	4505                	li	a0,1
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.L158+0xe>

0000009c <.L160>:
  9c:	5044                	lw	s1,36(s0)
  9e:	16048863          	beqz	s1,20e <.L154>

000000a2 <.LBB451>:
  a2:	00a4d703          	lhu	a4,10(s1) # a <chan_pre_switch_channel+0xa>
  a6:	0084d683          	lhu	a3,8(s1)
  aa:	0064d603          	lhu	a2,6(s1)
  ae:	0054c583          	lbu	a1,5(s1)
  b2:	0044c503          	lbu	a0,4(s1)
  b6:	4781                	li	a5,0

000000b8 <.LBB453>:
  b8:	44b00937          	lui	s2,0x44b00

000000bc <.LBE453>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LBE453>

000000c4 <.LVL179>:
  c4:	00c48503          	lb	a0,12(s1)
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL179+0x4>

000000d0 <.LBB456>:
  d0:	47c1                	li	a5,16
  d2:	0cf92e23          	sw	a5,220(s2) # 44b000dc <.LASF474+0x44afc698>

000000d6 <.LBB493>:
  d6:	4591                	li	a1,4
  d8:	8526                	mv	a0,s1
  da:	d004                	sw	s1,32(s0)
  dc:	02042223          	sw	zero,36(s0)
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LBB493+0xa>

000000e8 <.LVL182>:
  e8:	0174c783          	lbu	a5,23(s1)
  ec:	470d                	li	a4,3
  ee:	10e78463          	beq	a5,a4,1f6 <.L163>
  f2:	4711                	li	a4,4
  f4:	02e78163          	beq	a5,a4,116 <.L175>

000000f8 <.LBB457>:
  f8:	000007b7          	lui	a5,0x0
  fc:	00078793          	mv	a5,a5
 100:	0007c703          	lbu	a4,0(a5) # 0 <chan_pre_switch_channel>
 104:	c731                	beqz	a4,150 <.L165>
 106:	43dc                	lw	a5,4(a5)
 108:	8ba1                	andi	a5,a5,8
 10a:	e3b9                	bnez	a5,150 <.L165>

0000010c <.L170>:
 10c:	0174c703          	lbu	a4,23(s1)
 110:	4789                	li	a5,2
 112:	08e7f163          	bgeu	a5,a4,194 <.L166>

00000116 <.L175>:
 116:	30047073          	csrci	mstatus,8

0000011a <.LBE470>:
 11a:	000007b7          	lui	a5,0x0
 11e:	00078793          	mv	a5,a5
 122:	43d8                	lw	a4,4(a5)
 124:	00276713          	ori	a4,a4,2
 128:	c3d8                	sw	a4,4(a5)

0000012a <.LBB472>:
 12a:	30046073          	csrsi	mstatus,8

0000012e <.LBB474>:
 12e:	44b007b7          	lui	a5,0x44b00
 132:	47fc                	lw	a5,76(a5)

00000134 <.LBE474>:
 134:	4501                	li	a0,0

00000136 <.LBB477>:
 136:	8389                	srli	a5,a5,0x2
 138:	8b85                	andi	a5,a5,1

0000013a <.LBE477>:
 13a:	06f409a3          	sb	a5,115(s0)
 13e:	00000097          	auipc	ra,0x0
 142:	000080e7          	jalr	ra # 13e <.LBE477+0x4>

00000146 <.LVL187>:
 146:	a88d                	j	1b8 <.L176>

00000148 <.L161>:
 148:	f4f71ae3          	bne	a4,a5,9c <.L160>
 14c:	441c                	lw	a5,8(s0)
 14e:	b72d                	j	78 <.L194>

00000150 <.L165>:
 150:	000007b7          	lui	a5,0x0

00000154 <.LBE463>:
 154:	4501                	li	a0,0

00000156 <.LBB464>:
 156:	0087a903          	lw	s2,8(a5) # 8 <chan_pre_switch_channel+0x8>

0000015a <.LBE464>:
 15a:	02042983          	lw	s3,32(s0)
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LBE464+0x4>

00000166 <.L167>:
 166:	fa0903e3          	beqz	s2,10c <.L170>
 16a:	04092783          	lw	a5,64(s2)
 16e:	02f99063          	bne	s3,a5,18e <.L168>
 172:	05694783          	lbu	a5,86(s2)
 176:	ef81                	bnez	a5,18e <.L168>
 178:	05894783          	lbu	a5,88(s2)
 17c:	cb89                	beqz	a5,18e <.L168>
 17e:	06094503          	lbu	a0,96(s2)
 182:	4601                	li	a2,0
 184:	4581                	li	a1,0
 186:	00000097          	auipc	ra,0x0
 18a:	000080e7          	jalr	ra # 186 <.L167+0x20>

0000018e <.L168>:
 18e:	00092903          	lw	s2,0(s2)

00000192 <.LBE465>:
 192:	bfd1                	j	166 <.L167>

00000194 <.L166>:
 194:	000007b7          	lui	a5,0x0
 198:	0087a903          	lw	s2,8(a5) # 8 <chan_pre_switch_channel+0x8>

0000019c <.LBB482>:
 19c:	000009b7          	lui	s3,0x0
 1a0:	00098993          	mv	s3,s3
 1a4:	02400a13          	li	s4,36
 1a8:	4a85                	li	s5,1

000001aa <.L171>:
 1aa:	02091363          	bnez	s2,1d0 <.L173>

000001ae <.L174>:
 1ae:	0174c703          	lbu	a4,23(s1)
 1b2:	4789                	li	a5,2
 1b4:	f6e7e1e3          	bltu	a5,a4,116 <.L175>

000001b8 <.L176>:
 1b8:	4462                	lw	s0,24(sp)
 1ba:	40f2                	lw	ra,28(sp)
 1bc:	44d2                	lw	s1,20(sp)

000001be <.LVL197>:
 1be:	4942                	lw	s2,16(sp)
 1c0:	49b2                	lw	s3,12(sp)
 1c2:	4a22                	lw	s4,8(sp)
 1c4:	4a92                	lw	s5,4(sp)
 1c6:	6105                	addi	sp,sp,32

000001c8 <.LBB498>:
 1c8:	00000317          	auipc	t1,0x0
 1cc:	00030067          	jr	t1 # 1c8 <.LBB498>

000001d0 <.L173>:
 1d0:	04092783          	lw	a5,64(s2)
 1d4:	00f49e63          	bne	s1,a5,1f0 <.L172>
 1d8:	05794783          	lbu	a5,87(s2)
 1dc:	854a                	mv	a0,s2
 1de:	034787b3          	mul	a5,a5,s4
 1e2:	97ce                	add	a5,a5,s3
 1e4:	035781a3          	sb	s5,35(a5)
 1e8:	00000097          	auipc	ra,0x0
 1ec:	000080e7          	jalr	ra # 1e8 <.L173+0x18>

000001f0 <.L172>:
 1f0:	00092903          	lw	s2,0(s2)

000001f4 <.LBE483>:
 1f4:	bf5d                	j	1aa <.L171>

000001f6 <.L163>:
 1f6:	22092023          	sw	zero,544(s2)

000001fa <.LBE484>:
 1fa:	0ff00613          	li	a2,255
 1fe:	4589                	li	a1,2
 200:	06100513          	li	a0,97
 204:	00000097          	auipc	ra,0x0
 208:	000080e7          	jalr	ra # 204 <.LBE484+0xa>

0000020c <.LVL203>:
 20c:	b74d                	j	1ae <.L174>

0000020e <.L154>:
 20e:	40f2                	lw	ra,28(sp)
 210:	4462                	lw	s0,24(sp)
 212:	44d2                	lw	s1,20(sp)
 214:	4942                	lw	s2,16(sp)
 216:	49b2                	lw	s3,12(sp)
 218:	4a22                	lw	s4,8(sp)
 21a:	4a92                	lw	s5,4(sp)
 21c:	6105                	addi	sp,sp,32
 21e:	8082                	ret

Disassembly of section .text.chan_goto_idle_cb:

00000000 <chan_goto_idle_cb>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	d606                	sw	ra,44(sp)
   8:	d422                	sw	s0,40(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	000004b7          	lui	s1,0x0
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <chan_goto_idle_cb+0x18>

00000020 <.LVL205>:
  20:	00048793          	mv	a5,s1
  24:	0207a903          	lw	s2,32(a5)
  28:	0a090b63          	beqz	s2,de <.L196>
  2c:	00048493          	mv	s1,s1
  30:	0704c783          	lbu	a5,112(s1) # 70 <.L198+0x4>
  34:	0207f793          	andi	a5,a5,32
  38:	e3dd                	bnez	a5,de <.L196>

0000003a <.LBB506>:
  3a:	000007b7          	lui	a5,0x0
  3e:	00078793          	mv	a5,a5
  42:	0007c703          	lbu	a4,0(a5) # 0 <chan_goto_idle_cb>
  46:	c701                	beqz	a4,4e <.L197>
  48:	43dc                	lw	a5,4(a5)
  4a:	8ba1                	andi	a5,a5,8
  4c:	cbc9                	beqz	a5,de <.L196>

0000004e <.L197>:
  4e:	000007b7          	lui	a5,0x0

00000052 <.LBE512>:
  52:	4505                	li	a0,1

00000054 <.LBB513>:
  54:	0087a403          	lw	s0,8(a5) # 8 <chan_goto_idle_cb+0x8>

00000058 <.LBE513>:
  58:	4981                	li	s3,0
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LBE513+0x2>

00000062 <.LVL207>:
  62:	0ff00a13          	li	s4,255
  66:	4a99                	li	s5,6
  68:	00000b37          	lui	s6,0x0

0000006c <.L198>:
  6c:	e80d                	bnez	s0,9e <.L201>
  6e:	073488a3          	sb	s3,113(s1)
  72:	06098663          	beqz	s3,de <.L196>
  76:	50c8                	lw	a0,36(s1)
  78:	458d                	li	a1,3
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L198+0xe>

00000082 <.LBE518>:
  82:	5422                	lw	s0,40(sp)

00000084 <.LVL210>:
  84:	50b2                	lw	ra,44(sp)
  86:	5492                	lw	s1,36(sp)
  88:	5902                	lw	s2,32(sp)

0000008a <.LVL211>:
  8a:	49f2                	lw	s3,28(sp)

0000008c <.LVL212>:
  8c:	4a62                	lw	s4,24(sp)
  8e:	4ad2                	lw	s5,20(sp)
  90:	4b42                	lw	s6,16(sp)
  92:	4bb2                	lw	s7,12(sp)
  94:	6145                	addi	sp,sp,48

00000096 <.LBB519>:
  96:	00000317          	auipc	t1,0x0
  9a:	00030067          	jr	t1 # 96 <.LBB519>

0000009e <.L201>:
  9e:	403c                	lw	a5,64(s0)
  a0:	02f91d63          	bne	s2,a5,da <.L199>
  a4:	05644783          	lbu	a5,86(s0)
  a8:	eb8d                	bnez	a5,da <.L199>
  aa:	05844783          	lbu	a5,88(s0)
  ae:	c795                	beqz	a5,da <.L199>
  b0:	06044783          	lbu	a5,96(s0)
  b4:	03478363          	beq	a5,s4,da <.L199>
  b8:	01694b83          	lbu	s7,22(s2)

000000bc <.LVL214>:
  bc:	01590b23          	sb	s5,22(s2)
  c0:	06044503          	lbu	a0,96(s0)
  c4:	4601                	li	a2,0
  c6:	000b0593          	mv	a1,s6
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.LVL214+0xe>

000000d2 <.LVL215>:
  d2:	e111                	bnez	a0,d6 <.L200>
  d4:	0985                	addi	s3,s3,1

000000d6 <.L200>:
  d6:	01790b23          	sb	s7,22(s2)

000000da <.L199>:
  da:	4000                	lw	s0,0(s0)

000000dc <.LBE514>:
  dc:	bf41                	j	6c <.L198>

000000de <.L196>:
  de:	5422                	lw	s0,40(sp)
  e0:	50b2                	lw	ra,44(sp)
  e2:	5492                	lw	s1,36(sp)
  e4:	5902                	lw	s2,32(sp)
  e6:	49f2                	lw	s3,28(sp)
  e8:	4a62                	lw	s4,24(sp)
  ea:	4ad2                	lw	s5,20(sp)
  ec:	4b42                	lw	s6,16(sp)
  ee:	4bb2                	lw	s7,12(sp)
  f0:	6145                	addi	sp,sp,48
  f2:	00000317          	auipc	t1,0x0
  f6:	00030067          	jr	t1 # f2 <.L196+0x14>

Disassembly of section .text.chan_tx_cfm:

00000000 <chan_tx_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040793          	mv	a5,s0
   c:	c606                	sw	ra,12(sp)
   e:	0717c783          	lbu	a5,113(a5)
  12:	00040413          	mv	s0,s0
  16:	ef99                	bnez	a5,34 <.L219>
  18:	000005b7          	lui	a1,0x0

0000001c <.LVL222>:
  1c:	00000537          	lui	a0,0x0

00000020 <.LVL223>:
  20:	48f00613          	li	a2,1167
  24:	00058593          	mv	a1,a1
  28:	00050513          	mv	a0,a0
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL223+0xc>

00000034 <.L219>:
  34:	07144783          	lbu	a5,113(s0) # 71 <.L123+0x1>
  38:	17fd                	addi	a5,a5,-1
  3a:	0ff7f793          	andi	a5,a5,255
  3e:	06f408a3          	sb	a5,113(s0)
  42:	ef81                	bnez	a5,5a <.L218>
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.L219+0x10>

0000004c <.LVL225>:
  4c:	4422                	lw	s0,8(sp)
  4e:	40b2                	lw	ra,12(sp)
  50:	0141                	addi	sp,sp,16
  52:	00000317          	auipc	t1,0x0
  56:	00030067          	jr	t1 # 52 <.LVL225+0x6>

0000005a <.L218>:
  5a:	40b2                	lw	ra,12(sp)
  5c:	4422                	lw	s0,8(sp)
  5e:	0141                	addi	sp,sp,16
  60:	8082                	ret

Disassembly of section .text.chan_ctxt_op_evt:

00000000 <chan_ctxt_op_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	01654903          	lbu	s2,22(a0) # 16 <chan_ctxt_op_evt+0x16>
  10:	4789                	li	a5,2
  12:	00f96863          	bltu	s2,a5,22 <.L222>
  16:	498d                	li	s3,3
  18:	0129fc63          	bgeu	s3,s2,30 <.L224>
  1c:	4711                	li	a4,4
  1e:	02e90463          	beq	s2,a4,46 <.L225>

00000022 <.L222>:
  22:	40f2                	lw	ra,28(sp)
  24:	4462                	lw	s0,24(sp)
  26:	44d2                	lw	s1,20(sp)
  28:	4942                	lw	s2,16(sp)
  2a:	49b2                	lw	s3,12(sp)
  2c:	6105                	addi	sp,sp,32
  2e:	8082                	ret

00000030 <.L224>:
  30:	000007b7          	lui	a5,0x0
  34:	00078793          	mv	a5,a5
  38:	0707c703          	lbu	a4,112(a5) # 70 <.L237+0x6>
  3c:	02076713          	ori	a4,a4,32
  40:	06e78823          	sb	a4,112(a5)
  44:	bff9                	j	22 <.L222>

00000046 <.L225>:
  46:	01754703          	lbu	a4,23(a0)
  4a:	00000437          	lui	s0,0x0
  4e:	84aa                	mv	s1,a0
  50:	00040413          	mv	s0,s0
  54:	04e7e963          	bltu	a5,a4,a6 <.L226>

00000058 <.LVL228>:
  58:	4785                	li	a5,1
  5a:	00f50b23          	sb	a5,22(a0)
  5e:	07244703          	lbu	a4,114(s0) # 72 <.L237+0x8>
  62:	00f71e63          	bne	a4,a5,7e <.L227>
  66:	4404                	lw	s1,8(s0)

00000068 <.L228>:
  68:	8526                	mv	a0,s1

0000006a <.L237>:
  6a:	4462                	lw	s0,24(sp)
  6c:	40f2                	lw	ra,28(sp)
  6e:	44d2                	lw	s1,20(sp)
  70:	4942                	lw	s2,16(sp)
  72:	49b2                	lw	s3,12(sp)
  74:	6105                	addi	sp,sp,32

00000076 <.LBB540>:
  76:	00000317          	auipc	t1,0x0
  7a:	00030067          	jr	t1 # 76 <.LBB540>

0000007e <.L227>:
  7e:	fee7f5e3          	bgeu	a5,a4,68 <.L228>

00000082 <.LBB552>:
  82:	44b007b7          	lui	a5,0x44b00
  86:	1207a903          	lw	s2,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

0000008a <.LBE553>:
  8a:	0549                	addi	a0,a0,18
  8c:	85ca                	mv	a1,s2
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.LBE553+0x4>

00000096 <.LVL233>:
  96:	07242623          	sw	s2,108(s0)
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL233+0x4>

000000a2 <.LVL234>:
  a2:	84aa                	mv	s1,a0

000000a4 <.LVL235>:
  a4:	b7d1                	j	68 <.L228>

000000a6 <.L226>:
  a6:	30047073          	csrci	mstatus,8

000000aa <.LBE542>:
  aa:	000007b7          	lui	a5,0x0
  ae:	00078793          	mv	a5,a5
  b2:	43d8                	lw	a4,4(a5)
  b4:	9b75                	andi	a4,a4,-3
  b6:	c3d8                	sw	a4,4(a5)

000000b8 <.LBB544>:
  b8:	30046073          	csrsi	mstatus,8

000000bc <.LBE544>:
  bc:	07344503          	lbu	a0,115(s0)
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.LBE544+0x4>

000000c8 <.LVL237>:
  c8:	02042023          	sw	zero,32(s0)
  cc:	0174c783          	lbu	a5,23(s1)
  d0:	05379363          	bne	a5,s3,116 <.L229>

000000d4 <.LBB559>:
  d4:	07044783          	lbu	a5,112(s0)
  d8:	0ff00613          	li	a2,255
  dc:	4589                	li	a1,2
  de:	9bdd                	andi	a5,a5,-9
  e0:	06200513          	li	a0,98
  e4:	06f40823          	sb	a5,112(s0)
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LBB559+0x14>

000000f0 <.L230>:
  f0:	57fd                	li	a5,-1
  f2:	00f48ba3          	sb	a5,23(s1)
  f6:	07044783          	lbu	a5,112(s0)
  fa:	0037f713          	andi	a4,a5,3
  fe:	cf0d                	beqz	a4,138 <.L232>
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L230+0x10>

00000108 <.L233>:
 108:	07244703          	lbu	a4,114(s0)
 10c:	4785                	li	a5,1
 10e:	02f71963          	bne	a4,a5,140 <.L234>

00000112 <.LBB560>:
 112:	4408                	lw	a0,8(s0)
 114:	bf99                	j	6a <.L237>

00000116 <.L229>:
 116:	fd279de3          	bne	a5,s2,f0 <.L230>
 11a:	00e4d783          	lhu	a5,14(s1)
 11e:	e799                	bnez	a5,12c <.L231>
 120:	07044783          	lbu	a5,112(s0)
 124:	fbf7f793          	andi	a5,a5,-65
 128:	06f40823          	sb	a5,112(s0)

0000012c <.L231>:
 12c:	07044783          	lbu	a5,112(s0)
 130:	9bed                	andi	a5,a5,-5
 132:	06f40823          	sb	a5,112(s0)
 136:	bf6d                	j	f0 <.L230>

00000138 <.L232>:
 138:	9bbd                	andi	a5,a5,-17
 13a:	06f40823          	sb	a5,112(s0)
 13e:	b7e9                	j	108 <.L233>

00000140 <.L234>:
 140:	00e7fd63          	bgeu	a5,a4,15a <.L235>

00000144 <.LBE560>:
 144:	4462                	lw	s0,24(sp)
 146:	40f2                	lw	ra,28(sp)
 148:	44d2                	lw	s1,20(sp)

0000014a <.LVL242>:
 14a:	4942                	lw	s2,16(sp)
 14c:	49b2                	lw	s3,12(sp)

0000014e <.LBB561>:
 14e:	4501                	li	a0,0

00000150 <.LBE561>:
 150:	6105                	addi	sp,sp,32

00000152 <.LBB562>:
 152:	00000317          	auipc	t1,0x0
 156:	00030067          	jr	t1 # 152 <.LBB562>

0000015a <.L235>:
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.L235>

00000162 <.LBE562>:
 162:	4462                	lw	s0,24(sp)
 164:	40f2                	lw	ra,28(sp)
 166:	44d2                	lw	s1,20(sp)

00000168 <.LVL245>:
 168:	4942                	lw	s2,16(sp)
 16a:	49b2                	lw	s3,12(sp)
 16c:	6105                	addi	sp,sp,32

0000016e <.LBB563>:
 16e:	00000317          	auipc	t1,0x0
 172:	00030067          	jr	t1 # 16e <.LBB563>

Disassembly of section .text.chan_init:

00000000 <chan_init>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
   8:	ce4e                	sw	s3,28(sp)
   a:	07400613          	li	a2,116
   e:	000009b7          	lui	s3,0x0
  12:	4581                	li	a1,0
  14:	00040513          	mv	a0,s0
  18:	d226                	sw	s1,36(sp)
  1a:	d04a                	sw	s2,32(sp)
  1c:	cc52                	sw	s4,24(sp)
  1e:	ca56                	sw	s5,20(sp)
  20:	c85a                	sw	s6,16(sp)
  22:	c65e                	sw	s7,12(sp)
  24:	c462                	sw	s8,8(sp)
  26:	d606                	sw	ra,44(sp)
  28:	00098493          	mv	s1,s3
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <chan_init+0x2c>

00000034 <.LBB568>:
  34:	4901                	li	s2,0
  36:	00098993          	mv	s3,s3

0000003a <.LBB569>:
  3a:	0ff00a93          	li	s5,255
  3e:	5b7d                	li	s6,-1

00000040 <.LBE570>:
  40:	4b89                	li	s7,2
  42:	4c0d                	li	s8,3

00000044 <.LBE569>:
  44:	4a15                	li	s4,5

00000046 <.L241>:
  46:	4671                	li	a2,28
  48:	4581                	li	a1,0
  4a:	8526                	mv	a0,s1
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L241+0x6>

00000054 <.LVL249>:
  54:	01549723          	sh	s5,14(s1)
  58:	01648ba3          	sb	s6,23(s1)

0000005c <.LBE573>:
  5c:	072bc163          	blt	s7,s2,be <.L239>
  60:	85a6                	mv	a1,s1
  62:	00040513          	mv	a0,s0
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LBE573+0xa>

0000006e <.L240>:
  6e:	0905                	addi	s2,s2,1
  70:	04f1                	addi	s1,s1,28

00000072 <.LVL253>:
  72:	fd491ae3          	bne	s2,s4,46 <.L241>

00000076 <.LBE568>:
  76:	00000737          	lui	a4,0x0
  7a:	00040793          	mv	a5,s0
  7e:	00070713          	mv	a4,a4
  82:	d7d8                	sw	a4,44(a5)
  84:	00000737          	lui	a4,0x0
  88:	00070713          	mv	a4,a4
  8c:	dfd8                	sw	a4,60(a5)
  8e:	00000737          	lui	a4,0x0
  92:	00070713          	mv	a4,a4
  96:	c7f8                	sw	a4,76(a5)
  98:	00000737          	lui	a4,0x0
  9c:	00070713          	mv	a4,a4
  a0:	0407a023          	sw	zero,64(a5) # 40 <.LBE570>
  a4:	cff8                	sw	a4,92(a5)
  a6:	50b2                	lw	ra,44(sp)
  a8:	5422                	lw	s0,40(sp)
  aa:	5492                	lw	s1,36(sp)

000000ac <.LVL254>:
  ac:	5902                	lw	s2,32(sp)

000000ae <.LVL255>:
  ae:	49f2                	lw	s3,28(sp)
  b0:	4a62                	lw	s4,24(sp)
  b2:	4ad2                	lw	s5,20(sp)
  b4:	4b42                	lw	s6,16(sp)
  b6:	4bb2                	lw	s7,12(sp)
  b8:	4c22                	lw	s8,8(sp)
  ba:	6145                	addi	sp,sp,48
  bc:	8082                	ret

000000be <.L239>:
  be:	fb8918e3          	bne	s2,s8,6e <.L240>
  c2:	04099f23          	sh	zero,94(s3) # 5e <.LBE573+0x2>
  c6:	04098ca3          	sb	zero,89(s3)
  ca:	b755                	j	6e <.L240>

Disassembly of section .text.chan_scan_req:

00000000 <chan_scan_req>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040793          	mv	a5,s0
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	d606                	sw	ra,44(sp)
  14:	8932                	mv	s2,a2
  16:	06b7c603          	lbu	a2,107(a5)

0000001a <.LVL258>:
  1a:	0ff00793          	li	a5,255
  1e:	89aa                	mv	s3,a0
  20:	84ae                	mv	s1,a1
  22:	00040413          	mv	s0,s0
  26:	02f60563          	beq	a2,a5,50 <.L245>
  2a:	6605                	lui	a2,0x1
  2c:	000005b7          	lui	a1,0x0

00000030 <.LVL259>:
  30:	00000537          	lui	a0,0x0

00000034 <.LVL260>:
  34:	8a160613          	addi	a2,a2,-1887 # 8a1 <.LASF339+0x9>
  38:	00058593          	mv	a1,a1
  3c:	00050513          	mv	a0,a0
  40:	c63a                	sw	a4,12(sp)
  42:	c436                	sw	a3,8(sp)
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL260+0x10>

0000004c <.LVL261>:
  4c:	4732                	lw	a4,12(sp)
  4e:	46a2                	lw	a3,8(sp)

00000050 <.L245>:
  50:	0ff00793          	li	a5,255
  54:	06e406a3          	sb	a4,109(s0) # 6d <.L245+0x1d>
  58:	00000737          	lui	a4,0x0
  5c:	00070713          	mv	a4,a4
  60:	06f41123          	sh	a5,98(s0)
  64:	30100793          	li	a5,769
  68:	06f41523          	sh	a5,106(s0)
  6c:	07074783          	lbu	a5,112(a4) # 70 <.L245+0x20>
  70:	82a9                	srli	a3,a3,0xa
  72:	06d41323          	sh	a3,102(s0)
  76:	0027e693          	ori	a3,a5,2
  7a:	05340c23          	sb	s3,88(s0)
  7e:	04941e23          	sh	s1,92(s0)
  82:	04941d23          	sh	s1,90(s0)
  86:	07240023          	sb	s2,96(s0)
  8a:	06d70823          	sb	a3,112(a4)
  8e:	8bc1                	andi	a5,a5,16
  90:	eb99                	bnez	a5,a6 <.L244>
  92:	5422                	lw	s0,40(sp)
  94:	50b2                	lw	ra,44(sp)
  96:	5492                	lw	s1,36(sp)
  98:	5902                	lw	s2,32(sp)
  9a:	49f2                	lw	s3,28(sp)
  9c:	6145                	addi	sp,sp,48
  9e:	00000317          	auipc	t1,0x0
  a2:	00030067          	jr	t1 # 9e <.L245+0x4e>

000000a6 <.L244>:
  a6:	50b2                	lw	ra,44(sp)
  a8:	5422                	lw	s0,40(sp)
  aa:	5492                	lw	s1,36(sp)
  ac:	5902                	lw	s2,32(sp)
  ae:	49f2                	lw	s3,28(sp)
  b0:	6145                	addi	sp,sp,48
  b2:	8082                	ret

Disassembly of section .text.chan_roc_req:

00000000 <chan_roc_req>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	00054483          	lbu	s1,0(a0) # 0 <chan_roc_req>
   e:	c491                	beqz	s1,1a <.L249>
  10:	4785                	li	a5,1
  12:	0cf48463          	beq	s1,a5,da <.L250>

00000016 <.L260>:
  16:	4485                	li	s1,1
  18:	a871                	j	b4 <.L251>

0000001a <.L249>:
  1a:	000007b7          	lui	a5,0x0
  1e:	00078793          	mv	a5,a5
  22:	0877c683          	lbu	a3,135(a5) # 87 <.L249+0x6d>
  26:	0ff00713          	li	a4,255
  2a:	fee696e3          	bne	a3,a4,16 <.L260>
  2e:	4711                	li	a4,4
  30:	08e783a3          	sb	a4,135(a5)
  34:	00254703          	lbu	a4,2(a0)
  38:	06e78a23          	sb	a4,116(a5)
  3c:	00354703          	lbu	a4,3(a0)
  40:	06e78aa3          	sb	a4,117(a5)
  44:	00455703          	lhu	a4,4(a0)
  48:	06e79b23          	sh	a4,118(a5)
  4c:	00655703          	lhu	a4,6(a0)
  50:	06e79c23          	sh	a4,120(a5)
  54:	00855703          	lhu	a4,8(a0)
  58:	06b79f23          	sh	a1,126(a5)
  5c:	06e79d23          	sh	a4,122(a5)
  60:	4705                	li	a4,1
  62:	08e78323          	sb	a4,134(a5)
  66:	4554                	lw	a3,12(a0)
  68:	3e800713          	li	a4,1000
  6c:	02d70733          	mul	a4,a4,a3
  70:	8329                	srli	a4,a4,0xa
  72:	08e79123          	sh	a4,130(a5)
  76:	00154703          	lbu	a4,1(a0)
  7a:	08e784a3          	sb	a4,137(a5)
  7e:	01050703          	lb	a4,16(a0)
  82:	06e78e23          	sb	a4,124(a5)
  86:	000007b7          	lui	a5,0x0
  8a:	00078793          	mv	a5,a5
  8e:	0707c703          	lbu	a4,112(a5) # 70 <.L249+0x56>
  92:	e985                	bnez	a1,c2 <.L252>
  94:	00476713          	ori	a4,a4,4
  98:	06e78823          	sb	a4,112(a5)
  9c:	53dc                	lw	a5,36(a5)
  9e:	c399                	beqz	a5,a4 <.L253>

000000a0 <.L262>:
  a0:	4481                	li	s1,0
  a2:	a809                	j	b4 <.L251>

000000a4 <.L253>:
  a4:	00000537          	lui	a0,0x0

000000a8 <.LVL267>:
  a8:	07050513          	addi	a0,a0,112 # 70 <.L249+0x56>
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL267+0x4>

000000b4 <.L251>:
  b4:	40b2                	lw	ra,12(sp)
  b6:	4422                	lw	s0,8(sp)
  b8:	8526                	mv	a0,s1
  ba:	4902                	lw	s2,0(sp)
  bc:	4492                	lw	s1,4(sp)

000000be <.LVL269>:
  be:	0141                	addi	sp,sp,16
  c0:	8082                	ret

000000c2 <.L252>:
  c2:	00176693          	ori	a3,a4,1
  c6:	06d78823          	sb	a3,112(a5)
  ca:	01077493          	andi	s1,a4,16
  ce:	f8e9                	bnez	s1,a0 <.L262>
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.L252+0xe>

000000d8 <.LVL271>:
  d8:	bff1                	j	b4 <.L251>

000000da <.L250>:
  da:	00000937          	lui	s2,0x0
  de:	00090793          	mv	a5,s2
  e2:	0877c703          	lbu	a4,135(a5)
  e6:	0ff00793          	li	a5,255
  ea:	00090913          	mv	s2,s2
  ee:	faf709e3          	beq	a4,a5,a0 <.L262>
  f2:	08694783          	lbu	a5,134(s2) # 86 <.L249+0x6c>
  f6:	00000437          	lui	s0,0x0
  fa:	470d                	li	a4,3
  fc:	00040413          	mv	s0,s0
 100:	04f76263          	bltu	a4,a5,144 <.L255>
 104:	4709                	li	a4,2
 106:	06e7f963          	bgeu	a5,a4,178 <.L256>
 10a:	06978163          	beq	a5,s1,16c <.L257>

0000010e <.L258>:
 10e:	57fd                	li	a5,-1
 110:	08f903a3          	sb	a5,135(s2)
 114:	07044783          	lbu	a5,112(s0) # 70 <.L249+0x56>
 118:	4741                	li	a4,16
 11a:	0127f693          	andi	a3,a5,18
 11e:	f8e691e3          	bne	a3,a4,a0 <.L262>
 122:	00000537          	lui	a0,0x0
 126:	9bbd                	andi	a5,a5,-17
 128:	05850513          	addi	a0,a0,88 # 58 <.L249+0x3e>
 12c:	06f40823          	sb	a5,112(s0)
 130:	00000097          	auipc	ra,0x0
 134:	000080e7          	jalr	ra # 130 <.L258+0x22>

00000138 <.LVL274>:
 138:	07044783          	lbu	a5,112(s0)
 13c:	9bbd                	andi	a5,a5,-17
 13e:	06f40823          	sb	a5,112(s0)
 142:	bfb9                	j	a0 <.L262>

00000144 <.L255>:
 144:	4711                	li	a4,4
 146:	fce794e3          	bne	a5,a4,10e <.L258>
 14a:	00000537          	lui	a0,0x0

0000014e <.LVL276>:
 14e:	04850513          	addi	a0,a0,72 # 48 <.L249+0x2e>
 152:	00000097          	auipc	ra,0x0
 156:	000080e7          	jalr	ra # 152 <.LVL276+0x4>

0000015a <.LVL277>:
 15a:	00000537          	lui	a0,0x0
 15e:	07050513          	addi	a0,a0,112 # 70 <.L249+0x56>
 162:	00000097          	auipc	ra,0x0
 166:	000080e7          	jalr	ra # 162 <.LVL277+0x8>

0000016a <.LVL278>:
 16a:	b755                	j	10e <.L258>

0000016c <.L257>:
 16c:	07044783          	lbu	a5,112(s0)
 170:	9bf9                	andi	a5,a5,-2
 172:	06f40823          	sb	a5,112(s0)
 176:	bf61                	j	10e <.L258>

00000178 <.L256>:
 178:	07044783          	lbu	a5,112(s0)
 17c:	02042223          	sw	zero,36(s0)
 180:	9bed                	andi	a5,a5,-5
 182:	06f40823          	sb	a5,112(s0)
 186:	b761                	j	10e <.L258>

Disassembly of section .text.chan_ctxt_add:

00000000 <chan_ctxt_add>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	c05a                	sw	s6,0(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	84aa                	mv	s1,a0

00000018 <.LVL283>:
  18:	8a2e                	mv	s4,a1

0000001a <.LBB582>:
  1a:	00078993          	mv	s3,a5
  1e:	4901                	li	s2,0
  20:	00078413          	mv	s0,a5

00000024 <.LBB585>:
  24:	0ff00b13          	li	s6,255

00000028 <.LBE585>:
  28:	4a8d                	li	s5,3

0000002a <.L266>:
  2a:	0179c783          	lbu	a5,23(s3)
  2e:	03678763          	beq	a5,s6,5c <.L264>
  32:	4621                	li	a2,8
  34:	00498593          	addi	a1,s3,4
  38:	8526                	mv	a0,s1
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.L266+0x10>

00000042 <.LVL286>:
  42:	ed09                	bnez	a0,5c <.L264>
  44:	012a0023          	sb	s2,0(s4)

00000048 <.L265>:
  48:	40f2                	lw	ra,28(sp)
  4a:	4462                	lw	s0,24(sp)
  4c:	44d2                	lw	s1,20(sp)

0000004e <.LVL288>:
  4e:	4942                	lw	s2,16(sp)
  50:	49b2                	lw	s3,12(sp)
  52:	4a22                	lw	s4,8(sp)

00000054 <.LVL289>:
  54:	4a92                	lw	s5,4(sp)
  56:	4b02                	lw	s6,0(sp)
  58:	6105                	addi	sp,sp,32
  5a:	8082                	ret

0000005c <.L264>:
  5c:	0905                	addi	s2,s2,1

0000005e <.LVL291>:
  5e:	09f1                	addi	s3,s3,28
  60:	fd5915e3          	bne	s2,s5,2a <.L266>

00000064 <.LBB590>:
  64:	00000537          	lui	a0,0x0
  68:	00050513          	mv	a0,a0
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LBB590+0x8>

00000074 <.LVL293>:
  74:	872a                	mv	a4,a0

00000076 <.LBE590>:
  76:	4505                	li	a0,1

00000078 <.LBB591>:
  78:	db61                	beqz	a4,48 <.L265>
  7a:	408707b3          	sub	a5,a4,s0
  7e:	b6db7437          	lui	s0,0xb6db7
  82:	8789                	srai	a5,a5,0x2
  84:	db740413          	addi	s0,s0,-585 # b6db6db7 <.LASF474+0xb6db3373>
  88:	028787b3          	mul	a5,a5,s0
  8c:	4501                	li	a0,0
  8e:	0ff7f793          	andi	a5,a5,255
  92:	00f70ba3          	sb	a5,23(a4)
  96:	00fa0023          	sb	a5,0(s4)
  9a:	0004c783          	lbu	a5,0(s1)
  9e:	00f70223          	sb	a5,4(a4)
  a2:	0014c783          	lbu	a5,1(s1)
  a6:	00f702a3          	sb	a5,5(a4)
  aa:	0044d783          	lhu	a5,4(s1)
  ae:	00f71423          	sh	a5,8(a4)
  b2:	0064d783          	lhu	a5,6(s1)
  b6:	00f71523          	sh	a5,10(a4)
  ba:	0024d783          	lhu	a5,2(s1)
  be:	00f71323          	sh	a5,6(a4)
  c2:	00848783          	lb	a5,8(s1)
  c6:	00f70623          	sb	a5,12(a4)

000000ca <.LVL296>:
  ca:	bfbd                	j	48 <.L265>

Disassembly of section .text.chan_ctxt_del:

00000000 <chan_ctxt_del>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	44f1                	li	s1,28
   6:	029504b3          	mul	s1,a0,s1
   a:	000007b7          	lui	a5,0x0
   e:	00078713          	mv	a4,a5
  12:	c422                	sw	s0,8(sp)
  14:	c04a                	sw	s2,0(sp)
  16:	c606                	sw	ra,12(sp)
  18:	892a                	mv	s2,a0
  1a:	00078413          	mv	s0,a5
  1e:	94ba                	add	s1,s1,a4

00000020 <.LVL298>:
  20:	0174c683          	lbu	a3,23(s1)
  24:	0ff00713          	li	a4,255
  28:	02e69163          	bne	a3,a4,4a <.L271>
  2c:	6605                	lui	a2,0x1
  2e:	000005b7          	lui	a1,0x0
  32:	00000537          	lui	a0,0x0

00000036 <.LVL299>:
  36:	98960613          	addi	a2,a2,-1655 # 989 <.LASF956+0x6>
  3a:	00058593          	mv	a1,a1
  3e:	00050513          	mv	a0,a0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL299+0xc>

0000004a <.L271>:
  4a:	47f1                	li	a5,28
  4c:	02f907b3          	mul	a5,s2,a5
  50:	97a2                	add	a5,a5,s0
  52:	0187c783          	lbu	a5,24(a5) # 18 <chan_ctxt_del+0x18>
  56:	c385                	beqz	a5,76 <.L272>
  58:	6605                	lui	a2,0x1
  5a:	000005b7          	lui	a1,0x0
  5e:	00000537          	lui	a0,0x0
  62:	98b60613          	addi	a2,a2,-1653 # 98b <.LASF956+0x8>
  66:	00058593          	mv	a1,a1
  6a:	00050513          	mv	a0,a0
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.L271+0x24>

00000076 <.L272>:
  76:	00000537          	lui	a0,0x0
  7a:	85a6                	mv	a1,s1
  7c:	00050513          	mv	a0,a0
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.L272+0xa>

00000088 <.LBB594>:
  88:	8526                	mv	a0,s1
  8a:	4671                	li	a2,28
  8c:	4581                	li	a1,0
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.LBB594+0x6>

00000096 <.LVL303>:
  96:	4571                	li	a0,28
  98:	02a90533          	mul	a0,s2,a0
  9c:	0ff00793          	li	a5,255
  a0:	942a                	add	s0,s0,a0
  a2:	00f41723          	sh	a5,14(s0)
  a6:	57fd                	li	a5,-1
  a8:	00f40ba3          	sb	a5,23(s0)

000000ac <.LBE594>:
  ac:	40b2                	lw	ra,12(sp)
  ae:	4422                	lw	s0,8(sp)
  b0:	4492                	lw	s1,4(sp)

000000b2 <.LVL305>:
  b2:	4902                	lw	s2,0(sp)

000000b4 <.LVL306>:
  b4:	0141                	addi	sp,sp,16
  b6:	8082                	ret

Disassembly of section .text.chan_ctxt_update:

00000000 <chan_ctxt_update>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	00054703          	lbu	a4,0(a0) # 0 <chan_ctxt_update>

0000000c <.LVL308>:
   c:	4671                	li	a2,28
   e:	00154683          	lbu	a3,1(a0)
  12:	02c70733          	mul	a4,a4,a2

00000016 <.LVL309>:
  16:	000007b7          	lui	a5,0x0
  1a:	00078793          	mv	a5,a5
  1e:	97ba                	add	a5,a5,a4
  20:	00d78223          	sb	a3,4(a5) # 4 <chan_ctxt_update+0x4>

00000024 <.LVL310>:
  24:	00254703          	lbu	a4,2(a0)
  28:	00e782a3          	sb	a4,5(a5)
  2c:	00655703          	lhu	a4,6(a0)
  30:	00e79423          	sh	a4,8(a5)
  34:	00855703          	lhu	a4,8(a0)
  38:	00e79523          	sh	a4,10(a5)
  3c:	00455703          	lhu	a4,4(a0)
  40:	00e79323          	sh	a4,6(a5)
  44:	00a50703          	lb	a4,10(a0)
  48:	00e78623          	sb	a4,12(a5)
  4c:	00000737          	lui	a4,0x0
  50:	02072483          	lw	s1,32(a4) # 20 <.LVL309+0xa>
  54:	04f49963          	bne	s1,a5,a6 <.L277>
  58:	842a                	mv	s0,a0

0000005a <.LBB596>:
  5a:	30047073          	csrci	mstatus,8

0000005e <.LBE596>:
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LBE596>

00000066 <.LVL311>:
  66:	4501                	li	a0,0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.LVL311+0x2>

00000070 <.LBB598>:
  70:	30046073          	csrsi	mstatus,8

00000074 <.LBE598>:
  74:	00144503          	lbu	a0,1(s0)
  78:	00845703          	lhu	a4,8(s0)
  7c:	00645683          	lhu	a3,6(s0)
  80:	00445603          	lhu	a2,4(s0)
  84:	00244583          	lbu	a1,2(s0)
  88:	4781                	li	a5,0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LBE598+0x16>

00000092 <.LVL313>:
  92:	4422                	lw	s0,8(sp)

00000094 <.LVL314>:
  94:	00c48503          	lb	a0,12(s1)
  98:	40b2                	lw	ra,12(sp)
  9a:	4492                	lw	s1,4(sp)
  9c:	0141                	addi	sp,sp,16
  9e:	00000317          	auipc	t1,0x0
  a2:	00030067          	jr	t1 # 9e <.LVL314+0xa>

000000a6 <.L277>:
  a6:	40b2                	lw	ra,12(sp)
  a8:	4422                	lw	s0,8(sp)
  aa:	4492                	lw	s1,4(sp)
  ac:	0141                	addi	sp,sp,16
  ae:	8082                	ret

Disassembly of section .text.chan_tbtt_switch_update:

00000000 <chan_tbtt_switch_update>:
   0:	413c                	lw	a5,64(a0)

00000002 <.LVL317>:
   2:	c3a5                	beqz	a5,62 <.L280>
   4:	0167c783          	lbu	a5,22(a5)

00000008 <.LVL318>:
   8:	cfa9                	beqz	a5,62 <.L280>
   a:	77fd                	lui	a5,0xfffff
   c:	63c78793          	addi	a5,a5,1596 # fffff63c <.LASF474+0xffffbbf8>
  10:	95be                	add	a1,a1,a5

00000012 <.LVL319>:
  12:	453c                	lw	a5,72(a0)
  14:	04b78763          	beq	a5,a1,62 <.L280>
  18:	000007b7          	lui	a5,0x0
  1c:	c52c                	sw	a1,72(a0)
  1e:	0727c703          	lbu	a4,114(a5) # 72 <.LVL253>
  22:	4785                	li	a5,1
  24:	02e7ff63          	bgeu	a5,a4,62 <.L280>
  28:	04e54703          	lbu	a4,78(a0)
  2c:	4789                	li	a5,2
  2e:	02f70a63          	beq	a4,a5,62 <.L280>
  32:	1141                	addi	sp,sp,-16
  34:	c422                	sw	s0,8(sp)

00000036 <.LVL320>:
  36:	c606                	sw	ra,12(sp)
  38:	04450413          	addi	s0,a0,68

0000003c <.LVL321>:
  3c:	04050723          	sb	zero,78(a0)
  40:	00000537          	lui	a0,0x0

00000044 <.LVL322>:
  44:	85a2                	mv	a1,s0

00000046 <.LVL323>:
  46:	01050513          	addi	a0,a0,16 # 10 <.LVL318+0x8>
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL323+0x4>

00000052 <.LVL324>:
  52:	8522                	mv	a0,s0
  54:	4422                	lw	s0,8(sp)

00000056 <.LVL325>:
  56:	40b2                	lw	ra,12(sp)
  58:	0141                	addi	sp,sp,16
  5a:	00000317          	auipc	t1,0x0
  5e:	00030067          	jr	t1 # 5a <.LVL325+0x4>

00000062 <.L280>:
  62:	8082                	ret

Disassembly of section .text.chan_bcn_to_evt:

00000000 <chan_bcn_to_evt>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB610>:
   e:	44b007b7          	lui	a5,0x44b00

00000012 <.LBE610>:
  12:	04e54703          	lbu	a4,78(a0)

00000016 <.LBB611>:
  16:	1207a483          	lw	s1,288(a5) # 44b00120 <.LASF474+0x44afc6dc>

0000001a <.LBE611>:
  1a:	4789                	li	a5,2
  1c:	0af71163          	bne	a4,a5,be <.L290>
  20:	04450993          	addi	s3,a0,68

00000024 <.LVL329>:
  24:	00000437          	lui	s0,0x0
  28:	04050723          	sb	zero,78(a0)
  2c:	00000537          	lui	a0,0x0

00000030 <.LVL330>:
  30:	00040a13          	mv	s4,s0
  34:	85ce                	mv	a1,s3
  36:	01050513          	addi	a0,a0,16 # 10 <.LBB610+0x2>
  3a:	020a2903          	lw	s2,32(s4)
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL330+0xe>

00000046 <.LVL331>:
  46:	072a4703          	lbu	a4,114(s4)
  4a:	4785                	li	a5,1
  4c:	00040413          	mv	s0,s0
  50:	06e7f763          	bgeu	a5,a4,be <.L290>
  54:	854e                	mv	a0,s3
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL331+0x10>

0000005e <.LVL332>:
  5e:	07044783          	lbu	a5,112(s0) # 70 <.LVL332+0x12>
  62:	8bb1                	andi	a5,a5,12
  64:	efa9                	bnez	a5,be <.L290>
  66:	505c                	lw	a5,36(s0)
  68:	ebb9                	bnez	a5,be <.L290>
  6a:	85a6                	mv	a1,s1
  6c:	01290513          	addi	a0,s2,18
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL332+0x12>

00000078 <.LVL333>:
  78:	01495703          	lhu	a4,20(s2)
  7c:	cf11                	beqz	a4,98 <.L294>

0000007e <.LBB612>:
  7e:	547c                	lw	a5,108(s0)
  80:	40f487b3          	sub	a5,s1,a5
  84:	83a9                	srli	a5,a5,0xa

00000086 <.LBB619>:
  86:	07c2                	slli	a5,a5,0x10
  88:	83c1                	srli	a5,a5,0x10
  8a:	00f77363          	bgeu	a4,a5,90 <.L295>
  8e:	87ba                	mv	a5,a4

00000090 <.L295>:
  90:	40f707b3          	sub	a5,a4,a5
  94:	00f91a23          	sh	a5,20(s2)

00000098 <.L294>:
  98:	d464                	sw	s1,108(s0)
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.L294+0x2>

000000a2 <.LVL335>:
  a2:	501c                	lw	a5,32(s0)
  a4:	00a78d63          	beq	a5,a0,be <.L290>
  a8:	4462                	lw	s0,24(sp)
  aa:	40f2                	lw	ra,28(sp)
  ac:	44d2                	lw	s1,20(sp)

000000ae <.LVL336>:
  ae:	4942                	lw	s2,16(sp)
  b0:	49b2                	lw	s3,12(sp)

000000b2 <.LVL337>:
  b2:	4a22                	lw	s4,8(sp)
  b4:	6105                	addi	sp,sp,32
  b6:	00000317          	auipc	t1,0x0
  ba:	00030067          	jr	t1 # b6 <.LVL337+0x4>

000000be <.L290>:
  be:	40f2                	lw	ra,28(sp)
  c0:	4462                	lw	s0,24(sp)
  c2:	44d2                	lw	s1,20(sp)

000000c4 <.LVL339>:
  c4:	4942                	lw	s2,16(sp)
  c6:	49b2                	lw	s3,12(sp)
  c8:	4a22                	lw	s4,8(sp)
  ca:	6105                	addi	sp,sp,32
  cc:	8082                	ret

Disassembly of section .text.chan_bcn_detect_start:

00000000 <chan_bcn_detect_start>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	4120                	lw	s0,64(a0)

0000000e <.LVL341>:
   e:	89aa                	mv	s3,a0
  10:	e005                	bnez	s0,30 <.L301>
  12:	6605                	lui	a2,0x1
  14:	000005b7          	lui	a1,0x0
  18:	00000537          	lui	a0,0x0

0000001c <.LVL342>:
  1c:	b1960613          	addi	a2,a2,-1255 # b19 <.LASF1001+0xd>
  20:	00058593          	mv	a1,a1
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL342+0xc>

00000030 <.L301>:
  30:	000004b7          	lui	s1,0x0
  34:	00048493          	mv	s1,s1
  38:	0704c783          	lbu	a5,112(s1) # 70 <.LVL345+0xe>
  3c:	0407f793          	andi	a5,a5,64
  40:	efc1                	bnez	a5,d8 <.L300>
  42:	0724c703          	lbu	a4,114(s1)
  46:	4785                	li	a5,1
  48:	08e7f863          	bgeu	a5,a4,d8 <.L300>

0000004c <.LBB620>:
  4c:	46d1                	li	a3,20
  4e:	4601                	li	a2,0
  50:	4581                	li	a1,0
  52:	04600513          	li	a0,70
  56:	0609c903          	lbu	s2,96(s3)
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LBB620+0xe>

00000062 <.LVL345>:
  62:	00050023          	sb	zero,0(a0) # 0 <chan_bcn_detect_start>
  66:	0579c703          	lbu	a4,87(s3)
  6a:	1b000693          	li	a3,432
  6e:	02d90933          	mul	s2,s2,a3
  72:	00e500a3          	sb	a4,1(a0)
  76:	00444703          	lbu	a4,4(s0)
  7a:	76fd                	lui	a3,0xfffff
  7c:	c7868693          	addi	a3,a3,-904 # ffffec78 <.LASF474+0xffffb234>
  80:	00e50123          	sb	a4,2(a0)
  84:	00544703          	lbu	a4,5(s0)
  88:	00e501a3          	sb	a4,3(a0)
  8c:	00645703          	lhu	a4,6(s0)
  90:	00e51223          	sh	a4,4(a0)
  94:	00845703          	lhu	a4,8(s0)
  98:	00e51323          	sh	a4,6(a0)
  9c:	00a45703          	lhu	a4,10(s0)
  a0:	00e51423          	sh	a4,8(a0)
  a4:	00000737          	lui	a4,0x0
  a8:	00070713          	mv	a4,a4
  ac:	974a                	add	a4,a4,s2
  ae:	4358                	lw	a4,4(a4)
  b0:	9736                	add	a4,a4,a3
  b2:	3e800693          	li	a3,1000
  b6:	02d75733          	divu	a4,a4,a3
  ba:	c558                	sw	a4,12(a0)
  bc:	00c40703          	lb	a4,12(s0)
  c0:	00e50823          	sb	a4,16(a0)
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL345+0x62>

000000cc <.LVL347>:
  cc:	0704c783          	lbu	a5,112(s1)
  d0:	0407e793          	ori	a5,a5,64
  d4:	06f48823          	sb	a5,112(s1)

000000d8 <.L300>:
  d8:	40f2                	lw	ra,28(sp)
  da:	4462                	lw	s0,24(sp)

000000dc <.LVL348>:
  dc:	44d2                	lw	s1,20(sp)
  de:	4942                	lw	s2,16(sp)
  e0:	49b2                	lw	s3,12(sp)

000000e2 <.LVL349>:
  e2:	6105                	addi	sp,sp,32
  e4:	8082                	ret

Disassembly of section .text.chan_is_on_channel:

00000000 <chan_is_on_channel>:
   0:	000007b7          	lui	a5,0x0
   4:	0207a783          	lw	a5,32(a5) # 20 <.L306+0x2>
   8:	c395                	beqz	a5,2c <.L307>
   a:	0177c683          	lbu	a3,23(a5)
   e:	4709                	li	a4,2
  10:	00d76763          	bltu	a4,a3,1e <.L306>
  14:	4128                	lw	a0,64(a0)

00000016 <.LVL351>:
  16:	8d1d                	sub	a0,a0,a5

00000018 <.L308>:
  18:	00153513          	seqz	a0,a0

0000001c <.LVL352>:
  1c:	8082                	ret

0000001e <.L306>:
  1e:	0197c783          	lbu	a5,25(a5)
  22:	05754503          	lbu	a0,87(a0)

00000026 <.LVL354>:
  26:	40a78533          	sub	a0,a5,a0
  2a:	b7fd                	j	18 <.L308>

0000002c <.L307>:
  2c:	4501                	li	a0,0

0000002e <.LVL356>:
  2e:	8082                	ret

Disassembly of section .text.chan_is_tx_allowed:

00000000 <chan_is_tx_allowed>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <chan_is_tx_allowed+0x4>

0000000c <.LVL358>:
   c:	cd09                	beqz	a0,26 <.L310>
   e:	000007b7          	lui	a5,0x0
  12:	00078793          	mv	a5,a5
  16:	53d8                	lw	a4,36(a5)
  18:	c719                	beqz	a4,26 <.L310>
  1a:	539c                	lw	a5,32(a5)
  1c:	0167c503          	lbu	a0,22(a5) # 16 <.LVL358+0xa>
  20:	1569                	addi	a0,a0,-6
  22:	00153513          	seqz	a0,a0

00000026 <.L310>:
  26:	40b2                	lw	ra,12(sp)
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

Disassembly of section .text.chan_is_on_operational_channel:

00000000 <chan_is_on_operational_channel>:
   0:	000007b7          	lui	a5,0x0
   4:	0207a703          	lw	a4,32(a5) # 20 <.L319>
   8:	4781                	li	a5,0
   a:	cb19                	beqz	a4,20 <.L319>
   c:	01774603          	lbu	a2,23(a4) # 17 <chan_is_on_operational_channel+0x17>
  10:	4689                	li	a3,2
  12:	4781                	li	a5,0
  14:	00c6e663          	bltu	a3,a2,20 <.L319>
  18:	413c                	lw	a5,64(a0)
  1a:	8f99                	sub	a5,a5,a4
  1c:	0017b793          	seqz	a5,a5

00000020 <.L319>:
  20:	853e                	mv	a0,a5

00000022 <.LVL361>:
  22:	8082                	ret

Disassembly of section .text.chan_update_tx_power:

00000000 <chan_update_tx_power>:
   0:	01854783          	lbu	a5,24(a0)
   4:	c7b5                	beqz	a5,70 <.L322>

00000006 <.LBB624>:
   6:	00000737          	lui	a4,0x0
   a:	00070793          	mv	a5,a4
   e:	43b4                	lw	a3,64(a5)
  10:	00070713          	mv	a4,a4

00000014 <.LBE626>:
  14:	07f00793          	li	a5,127

00000018 <.LBB627>:
  18:	02d51163          	bne	a0,a3,3a <.L324>

0000001c <.LVL364>:
  1c:	05974683          	lbu	a3,89(a4) # 59 <.L327+0x7>
  20:	05a74783          	lbu	a5,90(a4)
  24:	01869613          	slli	a2,a3,0x18
  28:	01879593          	slli	a1,a5,0x18
  2c:	85e1                	srai	a1,a1,0x18
  2e:	8661                	srai	a2,a2,0x18
  30:	00b65363          	bge	a2,a1,36 <.L325>
  34:	87b6                	mv	a5,a3

00000036 <.L325>:
  36:	07e2                	slli	a5,a5,0x18
  38:	87e1                	srai	a5,a5,0x18

0000003a <.L324>:
  3a:	61872683          	lw	a3,1560(a4)
  3e:	02d51163          	bne	a0,a3,60 <.L326>
  42:	63274683          	lbu	a3,1586(a4)
  46:	01869613          	slli	a2,a3,0x18
  4a:	8661                	srai	a2,a2,0x18
  4c:	00c7d363          	bge	a5,a2,52 <.L327>
  50:	86be                	mv	a3,a5

00000052 <.L327>:
  52:	63170703          	lb	a4,1585(a4)
  56:	01869793          	slli	a5,a3,0x18

0000005a <.LVL366>:
  5a:	87e1                	srai	a5,a5,0x18
  5c:	00f74763          	blt	a4,a5,6a <.L330>

00000060 <.L326>:
  60:	07f00713          	li	a4,127
  64:	00e79463          	bne	a5,a4,6c <.L328>
  68:	8082                	ret

0000006a <.L330>:
  6a:	87ba                	mv	a5,a4

0000006c <.L328>:
  6c:	00f50623          	sb	a5,12(a0)

00000070 <.L322>:
  70:	8082                	ret

Disassembly of section .text.chan_ctxt_link:

00000000 <chan_ctxt_link>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	4971                	li	s2,28
   6:	c64e                	sw	s3,12(sp)
   8:	03258933          	mul	s2,a1,s2
   c:	89aa                	mv	s3,a0
   e:	5d800713          	li	a4,1496
  12:	ca26                	sw	s1,20(sp)
  14:	84ae                	mv	s1,a1
  16:	000005b7          	lui	a1,0x0

0000001a <.LVL372>:
  1a:	00058793          	mv	a5,a1
  1e:	00000537          	lui	a0,0x0

00000022 <.LVL373>:
  22:	cc22                	sw	s0,24(sp)
  24:	c452                	sw	s4,8(sp)
  26:	02e98733          	mul	a4,s3,a4
  2a:	993e                	add	s2,s2,a5

0000002c <.LVL374>:
  2c:	00050793          	mv	a5,a0
  30:	ce06                	sw	ra,28(sp)
  32:	00058413          	mv	s0,a1
  36:	00050a13          	mv	s4,a0
  3a:	97ba                	add	a5,a5,a4
  3c:	43bc                	lw	a5,64(a5)
  3e:	c385                	beqz	a5,5e <.L335>
  40:	6605                	lui	a2,0x1
  42:	000005b7          	lui	a1,0x0
  46:	00000537          	lui	a0,0x0
  4a:	99c60613          	addi	a2,a2,-1636 # 99c <.LASF91+0x2>
  4e:	00058593          	mv	a1,a1
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL374+0x2a>

0000005e <.L335>:
  5e:	47f1                	li	a5,28
  60:	02f487b3          	mul	a5,s1,a5
  64:	97a2                	add	a5,a5,s0
  66:	0177c703          	lbu	a4,23(a5)
  6a:	0ff00793          	li	a5,255
  6e:	02f71163          	bne	a4,a5,90 <.L336>
  72:	6605                	lui	a2,0x1
  74:	000005b7          	lui	a1,0x0
  78:	00000537          	lui	a0,0x0
  7c:	99d60613          	addi	a2,a2,-1635 # 99d <.LASF91+0x3>
  80:	00058593          	mv	a1,a1
  84:	00050513          	mv	a0,a0
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.L335+0x2a>

00000090 <.L336>:
  90:	45f1                	li	a1,28
  92:	02b485b3          	mul	a1,s1,a1
  96:	5d800513          	li	a0,1496
  9a:	6735                	lui	a4,0xd
  9c:	80070713          	addi	a4,a4,-2048 # c800 <.LASF474+0x8dbc>
  a0:	02a98533          	mul	a0,s3,a0
  a4:	95a2                	add	a1,a1,s0
  a6:	00000437          	lui	s0,0x0
  aa:	0185c483          	lbu	s1,24(a1) # 18 <chan_ctxt_link+0x18>
  ae:	00040413          	mv	s0,s0
  b2:	543c                	lw	a5,104(s0)
  b4:	0485                	addi	s1,s1,1
  b6:	0ff4f493          	andi	s1,s1,255
  ba:	97ba                	add	a5,a5,a4
  bc:	d43c                	sw	a5,104(s0)
  be:	9552                	add	a0,a0,s4
  c0:	05252023          	sw	s2,64(a0) # 40 <.LVL374+0x14>
  c4:	00958c23          	sb	s1,24(a1)
  c8:	4785                	li	a5,1
  ca:	04f49163          	bne	s1,a5,10c <.L338>
  ce:	07244783          	lbu	a5,114(s0) # 72 <.L335+0x14>
  d2:	00000537          	lui	a0,0x0
  d6:	00958b23          	sb	s1,22(a1)
  da:	0785                	addi	a5,a5,1
  dc:	85ca                	mv	a1,s2
  de:	00850513          	addi	a0,a0,8 # 8 <chan_ctxt_link+0x8>
  e2:	06f40923          	sb	a5,114(s0)
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.L336+0x56>

000000ee <.LVL377>:
  ee:	505c                	lw	a5,36(s0)
  f0:	e3a1                	bnez	a5,130 <.L339>
  f2:	07044783          	lbu	a5,112(s0)
  f6:	8bb1                	andi	a5,a5,12
  f8:	eb91                	bnez	a5,10c <.L338>
  fa:	07244783          	lbu	a5,114(s0)
  fe:	02979363          	bne	a5,s1,124 <.L341>
 102:	854a                	mv	a0,s2
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.LVL377+0x16>

0000010c <.L338>:
 10c:	4462                	lw	s0,24(sp)
 10e:	40f2                	lw	ra,28(sp)
 110:	44d2                	lw	s1,20(sp)
 112:	49b2                	lw	s3,12(sp)
 114:	4a22                	lw	s4,8(sp)
 116:	854a                	mv	a0,s2
 118:	4942                	lw	s2,16(sp)

0000011a <.LVL380>:
 11a:	6105                	addi	sp,sp,32
 11c:	00000317          	auipc	t1,0x0
 120:	00030067          	jr	t1 # 11c <.LVL380+0x2>

00000124 <.L341>:
 124:	4501                	li	a0,0
 126:	00000097          	auipc	ra,0x0
 12a:	000080e7          	jalr	ra # 126 <.L341+0x2>

0000012e <.LVL382>:
 12e:	bff9                	j	10c <.L338>

00000130 <.L339>:
 130:	00978b23          	sb	s1,22(a5)
 134:	02042223          	sw	zero,36(s0)
 138:	bfd1                	j	10c <.L338>

Disassembly of section .text.chan_ctxt_unlink:

00000000 <chan_ctxt_unlink>:
   0:	5d800713          	li	a4,1496
   4:	02e50733          	mul	a4,a0,a4
   8:	1141                	addi	sp,sp,-16
   a:	c226                	sw	s1,4(sp)
   c:	000004b7          	lui	s1,0x0
  10:	00048793          	mv	a5,s1
  14:	c04a                	sw	s2,0(sp)
  16:	c606                	sw	ra,12(sp)
  18:	c422                	sw	s0,8(sp)
  1a:	892a                	mv	s2,a0
  1c:	00048493          	mv	s1,s1
  20:	97ba                	add	a5,a5,a4
  22:	43a0                	lw	s0,64(a5)

00000024 <.LVL384>:
  24:	e005                	bnez	s0,44 <.L347>
  26:	6605                	lui	a2,0x1
  28:	000005b7          	lui	a1,0x0
  2c:	00000537          	lui	a0,0x0

00000030 <.LVL385>:
  30:	9e460613          	addi	a2,a2,-1564 # 9e4 <.LLST34+0x10>
  34:	00058593          	mv	a1,a1
  38:	00050513          	mv	a0,a0
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL385+0xc>

00000044 <.L347>:
  44:	5d800793          	li	a5,1496
  48:	02f90933          	mul	s2,s2,a5
  4c:	00000537          	lui	a0,0x0
  50:	01050513          	addi	a0,a0,16 # 10 <chan_ctxt_unlink+0x10>
  54:	04490593          	addi	a1,s2,68
  58:	95a6                	add	a1,a1,s1
  5a:	94ca                	add	s1,s1,s2
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L347+0x18>

00000064 <.LVL388>:
  64:	04048723          	sb	zero,78(s1) # 4e <.L347+0xa>
  68:	0404a023          	sw	zero,64(s1)
  6c:	01844783          	lbu	a5,24(s0)
  70:	17fd                	addi	a5,a5,-1
  72:	00f40c23          	sb	a5,24(s0)
  76:	01644783          	lbu	a5,22(s0)
  7a:	cfb5                	beqz	a5,f6 <.L349>
  7c:	000004b7          	lui	s1,0x0
  80:	00048693          	mv	a3,s1
  84:	56bc                	lw	a5,104(a3)
  86:	7751                	lui	a4,0xffff4
  88:	80070713          	addi	a4,a4,-2048 # ffff3800 <.LASF474+0xfffefdbc>
  8c:	97ba                	add	a5,a5,a4
  8e:	d6bc                	sw	a5,104(a3)
  90:	01844783          	lbu	a5,24(s0)
  94:	00048493          	mv	s1,s1
  98:	eba5                	bnez	a5,108 <.L351>

0000009a <.LBB629>:
  9a:	00000537          	lui	a0,0x0
  9e:	85a2                	mv	a1,s0
  a0:	00850513          	addi	a0,a0,8 # 8 <chan_ctxt_unlink+0x8>
  a4:	0244a903          	lw	s2,36(s1) # 24 <.LVL384>

000000a8 <.LVL389>:
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL389>

000000b0 <.LVL390>:
  b0:	00040b23          	sb	zero,22(s0)
  b4:	0724c783          	lbu	a5,114(s1)
  b8:	5098                	lw	a4,32(s1)
  ba:	17fd                	addi	a5,a5,-1
  bc:	0ff7f793          	andi	a5,a5,255
  c0:	06f48923          	sb	a5,114(s1)
  c4:	00871f63          	bne	a4,s0,e2 <.L352>
  c8:	0204a023          	sw	zero,32(s1)

000000cc <.L353>:
  cc:	00091f63          	bnez	s2,ea <.L354>
  d0:	4705                	li	a4,1
  d2:	04f77a63          	bgeu	a4,a5,126 <.L356>
  d6:	4501                	li	a0,0
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.L353+0xc>

000000e0 <.LVL391>:
  e0:	a819                	j	f6 <.L349>

000000e2 <.L352>:
  e2:	fe8915e3          	bne	s2,s0,cc <.L353>
  e6:	0204a223          	sw	zero,36(s1)

000000ea <.L354>:
  ea:	0704c783          	lbu	a5,112(s1)
  ee:	0207e793          	ori	a5,a5,32
  f2:	06f48823          	sb	a5,112(s1)

000000f6 <.L349>:
  f6:	01844783          	lbu	a5,24(s0)
  fa:	e799                	bnez	a5,108 <.L351>
  fc:	01744503          	lbu	a0,23(s0)
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L349+0xa>

00000108 <.L351>:
 108:	4501                	li	a0,0
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.L351+0x2>

00000112 <.LVL394>:
 112:	8522                	mv	a0,s0
 114:	4422                	lw	s0,8(sp)

00000116 <.LVL395>:
 116:	40b2                	lw	ra,12(sp)
 118:	4492                	lw	s1,4(sp)
 11a:	4902                	lw	s2,0(sp)
 11c:	0141                	addi	sp,sp,16
 11e:	00000317          	auipc	t1,0x0
 122:	00030067          	jr	t1 # 11e <.LVL395+0x8>

00000126 <.L356>:
 126:	fce798e3          	bne	a5,a4,f6 <.L349>

0000012a <.LBB631>:
 12a:	4488                	lw	a0,8(s1)
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.LBB631+0x2>

00000134 <.LVL398>:
 134:	b7c9                	j	f6 <.L349>
