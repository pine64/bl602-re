
rwip.o:     file format elf32-littleriscv


Disassembly of section .text.rwip_check_wakeup_boundary:

00000000 <rwip_check_wakeup_boundary>:
   0:	280007b7          	lui	a5,0x28000
   4:	80000737          	lui	a4,0x80000
   8:	cfd8                	sw	a4,28(a5)

0000000a <.L2>:
   a:	4fd8                	lw	a4,28(a5)

0000000c <.LBE46>:
   c:	fe074fe3          	bltz	a4,a <.L2>

00000010 <.LBB48>:
  10:	5388                	lw	a0,32(a5)

00000012 <.LBE48>:
  12:	1d453513          	sltiu	a0,a0,468
  16:	00154513          	xori	a0,a0,1
  1a:	8082                	ret

Disassembly of section .text.rwip_reset:

00000000 <rwip_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB52>:
   6:	30002473          	csrr	s0,mstatus

0000000a <.LBB53>:
   a:	300477f3          	csrrci	a5,mstatus,8

0000000e <.LBE53>:
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LBE53>

00000016 <.LVL4>:
  16:	4505                	li	a0,1
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL4+0x2>

00000020 <.LVL5>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL5>

00000028 <.LVL6>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL6>

00000030 <.LVL7>:
  30:	000007b7          	lui	a5,0x0
  34:	00078793          	mv	a5,a5
  38:	0c800713          	li	a4,200
  3c:	c798                	sw	a4,8(a5)
  3e:	10100713          	li	a4,257
  42:	00e79623          	sh	a4,12(a5) # c <.LBB53+0x2>
  46:	4505                	li	a0,1
  48:	0007a223          	sw	zero,4(a5)
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL7+0x1c>

00000054 <.LVL8>:
  54:	000007b7          	lui	a5,0x0
  58:	0007a783          	lw	a5,0(a5) # 0 <rwip_reset>
  5c:	9782                	jalr	a5
  5e:	30041073          	csrw	mstatus,s0

00000062 <.LBE54>:
  62:	40b2                	lw	ra,12(sp)
  64:	4422                	lw	s0,8(sp)

00000066 <.LVL10>:
  66:	0141                	addi	sp,sp,16
  68:	8082                	ret

Disassembly of section .text.rwip_init:

00000000 <rwip_init>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <rwip_init>
   8:	1141                	addi	sp,sp,-16
   a:	00000537          	lui	a0,0x0

0000000e <.LVL12>:
   e:	c606                	sw	ra,12(sp)
  10:	c422                	sw	s0,8(sp)
  12:	c226                	sw	s1,4(sp)
  14:	00050413          	mv	s0,a0
  18:	4641                	li	a2,16
  1a:	4581                	li	a1,0
  1c:	00050513          	mv	a0,a0
  20:	9782                	jalr	a5

00000022 <.LVL13>:
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL13>

0000002a <.LVL14>:
  2a:	6485                	lui	s1,0x1
  2c:	000005b7          	lui	a1,0x0
  30:	aff48613          	addi	a2,s1,-1281 # aff <.LASF353+0x8>
  34:	00058593          	mv	a1,a1
  38:	4501                	li	a0,0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL14+0x10>

00000042 <.LVL15>:
  42:	000007b7          	lui	a5,0x0
  46:	0007a583          	lw	a1,0(a5) # 0 <rwip_init>
  4a:	0b648613          	addi	a2,s1,182
  4e:	4505                	li	a0,1
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL15+0xe>

00000058 <.LVL16>:
  58:	00000537          	lui	a0,0x0
  5c:	00050513          	mv	a0,a0
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.LVL16+0x8>

00000068 <.LVL17>:
  68:	4501                	li	a0,0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL17+0x2>

00000072 <.LVL18>:
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL18>

0000007a <.LVL19>:
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL19>

00000082 <.LVL20>:
  82:	4501                	li	a0,0
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL20+0x2>

0000008c <.LVL21>:
  8c:	0c800793          	li	a5,200
  90:	c41c                	sw	a5,8(s0)
  92:	10100793          	li	a5,257
  96:	00042223          	sw	zero,4(s0)
  9a:	00f41623          	sh	a5,12(s0)
  9e:	4422                	lw	s0,8(sp)
  a0:	40b2                	lw	ra,12(sp)
  a2:	4492                	lw	s1,4(sp)
  a4:	0141                	addi	sp,sp,16
  a6:	00000317          	auipc	t1,0x0
  aa:	00030067          	jr	t1 # a6 <.LVL21+0x1a>

Disassembly of section .text.rwip_version:

00000000 <rwip_version>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <rwip_version>

Disassembly of section .text.rwip_schedule:

00000000 <rwip_schedule>:
   0:	000007b7          	lui	a5,0x0
   4:	00a7d783          	lhu	a5,10(a5) # a <rwip_schedule+0xa>
   8:	8b85                	andi	a5,a5,1
   a:	e789                	bnez	a5,14 <.L9>
   c:	00000317          	auipc	t1,0x0
  10:	00030067          	jr	t1 # c <rwip_schedule+0xc>

00000014 <.L9>:
  14:	8082                	ret

Disassembly of section .text.rwip_get_sw_wakup_cnt:

00000000 <rwip_get_sw_wakup_cnt>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <rwip_get_sw_wakup_cnt>
   8:	8082                	ret

Disassembly of section .text.rwip_get_sleep_dur_cnt:

00000000 <rwip_get_sleep_dur_cnt>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <rwip_get_sleep_dur_cnt>
   8:	8082                	ret

Disassembly of section .text.rwip_get_sleep_stat_cnt:

00000000 <rwip_get_sleep_stat_cnt>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <rwip_get_sleep_stat_cnt>
   8:	8082                	ret

Disassembly of section .tcm_code:

00000000 <do_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <do_reset+0x8>

00000010 <.LVL26>:
  10:	40000437          	lui	s0,0x40000
  14:	485c                	lw	a5,20(s0)
  16:	6711                	lui	a4,0x4
  18:	4591                	li	a1,4
  1a:	8fd9                	or	a5,a5,a4
  1c:	c85c                	sw	a5,20(s0)
  1e:	0a842783          	lw	a5,168(s0) # 400000a8 <.LASF78+0x3fffde22>
  22:	777d                	lui	a4,0xfffff
  24:	177d                	addi	a4,a4,-1
  26:	8ff9                	and	a5,a5,a4
  28:	0af42423          	sw	a5,168(s0)
  2c:	4000f737          	lui	a4,0x4000f
  30:	5b1c                	lw	a5,48(a4)
  32:	4511                	li	a0,4
  34:	0187e793          	ori	a5,a5,24
  38:	db1c                	sw	a5,48(a4)
  3a:	485c                	lw	a5,20(s0)
  3c:	7771                	lui	a4,0xffffc
  3e:	177d                	addi	a4,a4,-1
  40:	8ff9                	and	a5,a5,a4
  42:	c85c                	sw	a5,20(s0)
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL26+0x34>

0000004c <.LVL27>:
  4c:	460d                	li	a2,3
  4e:	4585                	li	a1,1
  50:	4505                	li	a0,1
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL27+0x6>

0000005a <.LVL28>:
  5a:	4501                	li	a0,0
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL28+0x2>

00000064 <.LVL29>:
  64:	0a842783          	lw	a5,168(s0)
  68:	6705                	lui	a4,0x1
  6a:	8fd9                	or	a5,a5,a4
  6c:	0af42423          	sw	a5,168(s0)
  70:	40b2                	lw	ra,12(sp)
  72:	4422                	lw	s0,8(sp)
  74:	0141                	addi	sp,sp,16
  76:	8082                	ret

Disassembly of section .text.rwip_sleep:

00000000 <rwip_sleep>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)

00000004 <.LBB103>:
   4:	000004b7          	lui	s1,0x0
   8:	00048793          	mv	a5,s1

0000000c <.LBE103>:
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)

00000014 <.LBB104>:
  14:	00a7d783          	lhu	a5,10(a5)
  18:	00048493          	mv	s1,s1
  1c:	8b85                	andi	a5,a5,1
  1e:	c791                	beqz	a5,2a <.L17>

00000020 <.L20>:
  20:	00c4c783          	lbu	a5,12(s1) # c <.LBE103>
  24:	e38d                	bnez	a5,46 <.L18>

00000026 <.L59>:
  26:	547d                	li	s0,-1

00000028 <.LBE104>:
  28:	a039                	j	36 <.L16>

0000002a <.L17>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.L17>

00000032 <.LBE105>:
  32:	4401                	li	s0,0

00000034 <.LBB106>:
  34:	f575                	bnez	a0,20 <.L20>

00000036 <.L16>:
  36:	8522                	mv	a0,s0
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)
  3c:	44d2                	lw	s1,20(sp)
  3e:	4942                	lw	s2,16(sp)
  40:	49b2                	lw	s3,12(sp)
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L18>:
  46:	00a4d783          	lhu	a5,10(s1)
  4a:	fff1                	bnez	a5,26 <.L59>
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L18+0x6>

00000054 <.LVL38>:
  54:	d969                	beqz	a0,26 <.L59>

00000056 <.LBB77>:
  56:	280007b7          	lui	a5,0x28000
  5a:	80000737          	lui	a4,0x80000
  5e:	cfd8                	sw	a4,28(a5)

00000060 <.LBB81>:
  60:	280006b7          	lui	a3,0x28000

00000064 <.L22>:
  64:	4ed8                	lw	a4,28(a3)

00000066 <.LBE84>:
  66:	fe074fe3          	bltz	a4,64 <.L22>

0000006a <.LBB85>:
  6a:	4ed8                	lw	a4,28(a3)

0000006c <.LBE85>:
  6c:	080007b7          	lui	a5,0x8000
  70:	fff78913          	addi	s2,a5,-1 # 7ffffff <.LASF78+0x7ffdd79>
  74:	012777b3          	and	a5,a4,s2

00000078 <.LBB87>:
  78:	5298                	lw	a4,32(a3)

0000007a <.LBE77>:
  7a:	0084d683          	lhu	a3,8(s1)
  7e:	00278413          	addi	s0,a5,2
  82:	00d76463          	bltu	a4,a3,8a <.L24>
  86:	00178413          	addi	s0,a5,1

0000008a <.L24>:
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L24>

00000092 <.LVL44>:
  92:	01247433          	and	s0,s0,s2

00000096 <.LVL45>:
  96:	89aa                	mv	s3,a0

00000098 <.LVL46>:
  98:	8522                	mv	a0,s0

0000009a <.LVL47>:
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL47>

000000a2 <.LVL48>:
  a2:	57fd                	li	a5,-1
  a4:	00f99f63          	bne	s3,a5,c2 <.L25>
  a8:	13350d63          	beq	a0,s3,1e2 <.L39>
  ac:	408507b3          	sub	a5,a0,s0
  b0:	04000737          	lui	a4,0x4000

000000b4 <.L63>:
  b4:	0127f7b3          	and	a5,a5,s2
  b8:	02f77563          	bgeu	a4,a5,e2 <.L26>
  bc:	40a407b3          	sub	a5,s0,a0
  c0:	a829                	j	da <.L60>

000000c2 <.L25>:
  c2:	0ef51663          	bne	a0,a5,1ae <.L28>
  c6:	408987b3          	sub	a5,s3,s0
  ca:	04000737          	lui	a4,0x4000
  ce:	0127f7b3          	and	a5,a5,s2
  d2:	00f77863          	bgeu	a4,a5,e2 <.L26>
  d6:	413407b3          	sub	a5,s0,s3

000000da <.L60>:
  da:	0127f7b3          	and	a5,a5,s2

000000de <.L58>:
  de:	40f007b3          	neg	a5,a5

000000e2 <.L26>:
  e2:	00d4c703          	lbu	a4,13(s1)
  e6:	10071263          	bnez	a4,1ea <.L33>
  ea:	32000713          	li	a4,800
  ee:	10f74563          	blt	a4,a5,1f8 <.L40>

000000f2 <.L35>:
  f2:	4705                	li	a4,1
  f4:	f2f759e3          	bge	a4,a5,26 <.L59>

000000f8 <.L34>:
  f8:	00b79413          	slli	s0,a5,0xb

000000fc <.LVL51>:
  fc:	06400793          	li	a5,100

00000100 <.LVL52>:
 100:	02f45433          	divu	s0,s0,a5

00000104 <.LBE89>:
 104:	409c                	lw	a5,0(s1)
 106:	0785                	addi	a5,a5,1

00000108 <.LBB92>:
 108:	147d                	addi	s0,s0,-1

0000010a <.LBE92>:
 10a:	f0f46ee3          	bltu	s0,a5,26 <.L59>
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.LBE92+0x4>

00000116 <.LVL55>:
 116:	d901                	beqz	a0,26 <.L59>
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.LVL55+0x2>

00000120 <.LVL56>:
 120:	00d4c583          	lbu	a1,13(s1)
 124:	8522                	mv	a0,s0

00000126 <.LBB93>:
 126:	280004b7          	lui	s1,0x28000

0000012a <.LBE93>:
 12a:	00000097          	auipc	ra,0x0
 12e:	000080e7          	jalr	ra # 12a <.LBE93>

00000132 <.LVL57>:
 132:	000007b7          	lui	a5,0x0
 136:	0287a783          	lw	a5,40(a5) # 28 <.LBE104>
 13a:	9782                	jalr	a5
 13c:	000007b7          	lui	a5,0x0
 140:	00078793          	mv	a5,a5
 144:	4398                	lw	a4,0(a5)
 146:	4501                	li	a0,0
 148:	0705                	addi	a4,a4,1
 14a:	c398                	sw	a4,0(a5)

0000014c <.LVL59>:
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.LVL59>

00000154 <.L36>:
 154:	5898                	lw	a4,48(s1)

00000156 <.LBE96>:
 156:	00f71693          	slli	a3,a4,0xf
 15a:	fe06dde3          	bgez	a3,154 <.L36>

0000015e <.LBB97>:
 15e:	589c                	lw	a5,48(s1)

00000160 <.LBE97>:
 160:	01079713          	slli	a4,a5,0x10
 164:	08074d63          	bltz	a4,1fe <.L37>
 168:	000007b7          	lui	a5,0x0
 16c:	00078793          	mv	a5,a5
 170:	4398                	lw	a4,0(a5)
 172:	4505                	li	a0,1
 174:	0705                	addi	a4,a4,1
 176:	c398                	sw	a4,0(a5)
 178:	00000097          	auipc	ra,0x0
 17c:	000080e7          	jalr	ra # 178 <.LBE97+0x18>

00000180 <.LVL63>:
 180:	00000097          	auipc	ra,0x0
 184:	000080e7          	jalr	ra # 180 <.LVL63>

00000188 <.L38>:
 188:	000007b7          	lui	a5,0x0
 18c:	00078793          	mv	a5,a5
 190:	4398                	lw	a4,0(a5)
 192:	4505                	li	a0,1
 194:	0705                	addi	a4,a4,1
 196:	c398                	sw	a4,0(a5)
 198:	00000097          	auipc	ra,0x0
 19c:	000080e7          	jalr	ra # 198 <.L38+0x10>

000001a0 <.LBB99>:
 1a0:	28000737          	lui	a4,0x28000
 1a4:	5b1c                	lw	a5,48(a4)
 1a6:	0107e793          	ori	a5,a5,16
 1aa:	db1c                	sw	a5,48(a4)
 1ac:	bdad                	j	26 <.L59>

000001ae <.L28>:
 1ae:	40a987b3          	sub	a5,s3,a0
 1b2:	0127f7b3          	and	a5,a5,s2
 1b6:	04000737          	lui	a4,0x4000
 1ba:	00f76663          	bltu	a4,a5,1c6 <.L30>
 1be:	c781                	beqz	a5,1c6 <.L30>
 1c0:	408507b3          	sub	a5,a0,s0
 1c4:	bdc5                	j	b4 <.L63>

000001c6 <.L30>:
 1c6:	08000737          	lui	a4,0x8000
 1ca:	408987b3          	sub	a5,s3,s0
 1ce:	177d                	addi	a4,a4,-1
 1d0:	040006b7          	lui	a3,0x4000
 1d4:	8ff9                	and	a5,a5,a4
 1d6:	f0f6f6e3          	bgeu	a3,a5,e2 <.L26>
 1da:	413407b3          	sub	a5,s0,s3
 1de:	8ff9                	and	a5,a5,a4
 1e0:	bdfd                	j	de <.L58>

000001e2 <.L39>:
 1e2:	6791                	lui	a5,0x4
 1e4:	e8078793          	addi	a5,a5,-384 # 3e80 <.LASF78+0x1bfa>
 1e8:	bded                	j	e2 <.L26>

000001ea <.L33>:
 1ea:	6711                	lui	a4,0x4
 1ec:	e8070713          	addi	a4,a4,-384 # 3e80 <.LASF78+0x1bfa>
 1f0:	f0f751e3          	bge	a4,a5,f2 <.L35>
 1f4:	87ba                	mv	a5,a4

000001f6 <.LVL68>:
 1f6:	b709                	j	f8 <.L34>

000001f8 <.L40>:
 1f8:	32000793          	li	a5,800

000001fc <.LVL70>:
 1fc:	bdf5                	j	f8 <.L34>

000001fe <.L37>:
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.L37>

00000206 <.LVL72>:
 206:	e20508e3          	beqz	a0,36 <.L16>

0000020a <.LBB101>:
 20a:	5c84                	lw	s1,56(s1)

0000020c <.LBE101>:
 20c:	00000097          	auipc	ra,0x0
 210:	000080e7          	jalr	ra # 20c <.LBE101>

00000214 <.LVL73>:
 214:	e2a4e1e3          	bltu	s1,a0,36 <.L16>
 218:	000007b7          	lui	a5,0x0
 21c:	00078793          	mv	a5,a5
 220:	4398                	lw	a4,0(a5)
 222:	0705                	addi	a4,a4,1
 224:	c398                	sw	a4,0(a5)

00000226 <.LVL74>:
 226:	b78d                	j	188 <.L38>

Disassembly of section .text.ble_controller_sleep:

00000000 <ble_controller_sleep>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <ble_controller_sleep>

Disassembly of section .text.ble_controller_wakeup:

00000000 <ble_controller_wakeup>:
   0:	28000737          	lui	a4,0x28000
   4:	5b1c                	lw	a5,48(a4)

00000006 <.LBE108>:
   6:	0107e793          	ori	a5,a5,16

0000000a <.LBB110>:
   a:	db1c                	sw	a5,48(a4)

0000000c <.LBE110>:
   c:	8082                	ret

Disassembly of section .text.ble_get_deep_sleep_stat:

00000000 <ble_get_deep_sleep_stat>:
   0:	280007b7          	lui	a5,0x28000
   4:	5b88                	lw	a0,48(a5)
   6:	813d                	srli	a0,a0,0xf

00000008 <.LBE112>:
   8:	8905                	andi	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.rwip_wakeup_delay_set:

00000000 <rwip_wakeup_delay_set>:
   0:	000f47b7          	lui	a5,0xf4
   4:	24078793          	addi	a5,a5,576 # f4240 <.LASF78+0xf1fba>
   8:	053e                	slli	a0,a0,0xf

0000000a <.LVL80>:
   a:	02f55533          	divu	a0,a0,a5

0000000e <.LBE114>:
   e:	000007b7          	lui	a5,0x0
  12:	00a7a023          	sw	a0,0(a5) # 0 <rwip_wakeup_delay_set>
  16:	8082                	ret

Disassembly of section .text.rwip_prevent_sleep_set:

00000000 <rwip_prevent_sleep_set>:
   0:	30002773          	csrr	a4,mstatus

00000004 <.LBB118>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE118>:
   8:	000007b7          	lui	a5,0x0
   c:	00078793          	mv	a5,a5
  10:	00a7d683          	lhu	a3,10(a5) # a <.LBE118+0x2>
  14:	8d55                	or	a0,a0,a3

00000016 <.LVL84>:
  16:	00a79523          	sh	a0,10(a5)
  1a:	30071073          	csrw	mstatus,a4

0000001e <.LBE116>:
  1e:	8082                	ret

Disassembly of section .text.rwip_wakeup:

00000000 <rwip_wakeup>:
   0:	1141                	addi	sp,sp,-16
   2:	4505                	li	a0,1
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
   a:	000080e7          	jalr	ra # 6 <rwip_wakeup+0x6>

0000000e <.LVL85>:
   e:	40b2                	lw	ra,12(sp)
  10:	0141                	addi	sp,sp,16
  12:	00000317          	auipc	t1,0x0
  16:	00030067          	jr	t1 # 12 <.LVL85+0x4>

Disassembly of section .text.rwip_prevent_sleep_clear:

00000000 <rwip_prevent_sleep_clear>:
   0:	30002773          	csrr	a4,mstatus

00000004 <.LBB121>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE121>:
   8:	000007b7          	lui	a5,0x0
   c:	00078793          	mv	a5,a5
  10:	00a7d683          	lhu	a3,10(a5) # a <.LBE121+0x2>
  14:	fff54513          	not	a0,a0

00000018 <.LVL90>:
  18:	8d75                	and	a0,a0,a3
  1a:	00a79523          	sh	a0,10(a5)
  1e:	30071073          	csrw	mstatus,a4

00000022 <.LBE119>:
  22:	8082                	ret

Disassembly of section .text.rwip_wakeup_end:

00000000 <rwip_wakeup_end>:
   0:	000007b7          	lui	a5,0x0
   4:	00a7d783          	lhu	a5,10(a5) # a <rwip_wakeup_end+0xa>
   8:	8b85                	andi	a5,a5,1
   a:	c39d                	beqz	a5,30 <.L72>
   c:	1141                	addi	sp,sp,-16
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <rwip_wakeup_end+0x10>

00000018 <.LVL91>:
  18:	450d                	li	a0,3
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL91+0x2>

00000022 <.LVL92>:
  22:	40b2                	lw	ra,12(sp)
  24:	4505                	li	a0,1
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
  2c:	00030067          	jr	t1 # 28 <.LVL92+0x6>

00000030 <.L72>:
  30:	8082                	ret

Disassembly of section .text.rwip_sleep_enable:

00000000 <rwip_sleep_enable>:
   0:	000007b7          	lui	a5,0x0
   4:	00c7c503          	lbu	a0,12(a5) # c <.LBE103>
   8:	8082                	ret

Disassembly of section .text.rwip_ext_wakeup_enable:

00000000 <rwip_ext_wakeup_enable>:
   0:	000007b7          	lui	a5,0x0
   4:	00d7c503          	lbu	a0,13(a5) # d <.LBE103+0x1>
   8:	8082                	ret

Disassembly of section .text.rwip_sleep_lpcycles_2_us:

00000000 <rwip_sleep_lpcycles_2_us>:
   0:	00000737          	lui	a4,0x0
   4:	00070713          	mv	a4,a4
   8:	435c                	lw	a5,4(a4)
   a:	00851693          	slli	a3,a0,0x8
   e:	97aa                	add	a5,a5,a0
  10:	97b6                	add	a5,a5,a3
  12:	00351693          	slli	a3,a0,0x3
  16:	97b6                	add	a5,a5,a3
  18:	0097d693          	srli	a3,a5,0x9

0000001c <.LVL95>:
  1c:	1ff7f793          	andi	a5,a5,511
  20:	c35c                	sw	a5,4(a4)

00000022 <.LVL96>:
  22:	47f9                	li	a5,30
  24:	02f50533          	mul	a0,a0,a5

00000028 <.LVL97>:
  28:	9536                	add	a0,a0,a3

0000002a <.LVL98>:
  2a:	8082                	ret

Disassembly of section .text.rwip_us_2_lpcycles:

00000000 <rwip_us_2_lpcycles>:
   0:	000f47b7          	lui	a5,0xf4
   4:	24078793          	addi	a5,a5,576 # f4240 <.LASF78+0xf1fba>
   8:	053e                	slli	a0,a0,0xf

0000000a <.LVL100>:
   a:	02f55533          	divu	a0,a0,a5
   e:	8082                	ret

Disassembly of section .text.rwip_wlcoex_set:

00000000 <rwip_wlcoex_set>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <rwip_wlcoex_set>
