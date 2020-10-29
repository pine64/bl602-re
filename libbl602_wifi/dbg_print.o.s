
libbl602_wifi/dbg_print.o:     file format elf32-littleriscv


Disassembly of section .text.dbg_test_print:

00000000 <dbg_test_print>:
   0:	711d                	addi	sp,sp,-96
   2:	da26                	sw	s1,52(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	dbg_env
			4: R_RISCV_RELAX	*ABS*
   8:	cabe                	sw	a5,84(sp)
   a:	de06                	sw	ra,60(sp)
   c:	dc22                	sw	s0,56(sp)
   e:	d84a                	sw	s2,48(sp)
  10:	d64e                	sw	s3,44(sp)
  12:	d452                	sw	s4,40(sp)
  14:	d256                	sw	s5,36(sp)
  16:	d05a                	sw	s6,32(sp)
  18:	ce5e                	sw	s7,28(sp)
  1a:	c2ae                	sw	a1,68(sp)
  1c:	c4b2                	sw	a2,72(sp)
  1e:	c6b6                	sw	a3,76(sp)
  20:	c8ba                	sw	a4,80(sp)
  22:	ccc2                	sw	a6,88(sp)
  24:	cec6                	sw	a7,92(sp)
  26:	00048793          	mv	a5,s1
			26: R_RISCV_LO12_I	dbg_env
			26: R_RISCV_RELAX	*ABS*
  2a:	43dc                	lw	a5,4(a5)
  2c:	c795                	beqz	a5,58 <.L1>
			2c: R_RISCV_RVC_BRANCH	.L1
  2e:	892a                	mv	s2,a0
  30:	00048493          	mv	s1,s1
			30: R_RISCV_LO12_I	dbg_env
			30: R_RISCV_RELAX	*ABS*
  34:	00250993          	addi	s3,a0,2

00000038 <.LBB5>:
  38:	08700a13          	li	s4,135
  3c:	4a95                	li	s5,5
  3e:	00000b37          	lui	s6,0x0
			3e: R_RISCV_HI20	.LC0
			3e: R_RISCV_RELAX	*ABS*
  42:	00000bb7          	lui	s7,0x0
			42: R_RISCV_HI20	.LC1
			42: R_RISCV_RELAX	*ABS*

00000046 <.L6>:
  46:	00094403          	lbu	s0,0(s2)

0000004a <.LVL2>:
  4a:	01841793          	slli	a5,s0,0x18
  4e:	87e1                	srai	a5,a5,0x18
  50:	0007cf63          	bltz	a5,6e <.L3>
			50: R_RISCV_BRANCH	.L3

00000054 <.L7>:
  54:	00dc                	addi	a5,sp,68
  56:	c63e                	sw	a5,12(sp)

00000058 <.L1>:
  58:	50f2                	lw	ra,60(sp)
  5a:	5462                	lw	s0,56(sp)
  5c:	54d2                	lw	s1,52(sp)
  5e:	5942                	lw	s2,48(sp)
  60:	59b2                	lw	s3,44(sp)
  62:	5a22                	lw	s4,40(sp)
  64:	5a92                	lw	s5,36(sp)
  66:	5b02                	lw	s6,32(sp)
  68:	4bf2                	lw	s7,28(sp)
  6a:	6125                	addi	sp,sp,96
  6c:	8082                	ret

0000006e <.L3>:
  6e:	008a6f63          	bltu	s4,s0,8c <.L5>
			6e: R_RISCV_BRANCH	.L5
  72:	409c                	lw	a5,0(s1)
  74:	f8040413          	addi	s0,s0,-128

00000078 <.LVL6>:
  78:	fff7c793          	not	a5,a5
  7c:	0087d433          	srl	s0,a5,s0

00000080 <.LVL7>:
  80:	8805                	andi	s0,s0,1
  82:	f879                	bnez	s0,58 <.L1>
			82: R_RISCV_RVC_BRANCH	.L1

00000084 <.L9>:
  84:	0905                	addi	s2,s2,1

00000086 <.LBE7>:
  86:	fd2990e3          	bne	s3,s2,46 <.L6>
			86: R_RISCV_BRANCH	.L6
  8a:	b7e9                	j	54 <.L7>
			8a: R_RISCV_RVC_JUMP	.L7

0000008c <.L5>:
  8c:	06640793          	addi	a5,s0,102
  90:	0ff7f793          	andi	a5,a5,255
  94:	00fafc63          	bgeu	s5,a5,ac <.L8>
			94: R_RISCV_BRANCH	.L8
  98:	29700613          	li	a2,663
  9c:	000b0593          	mv	a1,s6
			9c: R_RISCV_LO12_I	.LC0
			9c: R_RISCV_RELAX	*ABS*
  a0:	000b8513          	mv	a0,s7
			a0: R_RISCV_LO12_I	.LC1
			a0: R_RISCV_RELAX	*ABS*
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	assert_err
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.L5+0x18>

000000ac <.L8>:
  ac:	40dc                	lw	a5,4(s1)
  ae:	f6640413          	addi	s0,s0,-154

000000b2 <.LVL12>:
  b2:	fcf469e3          	bltu	s0,a5,84 <.L9>
			b2: R_RISCV_BRANCH	.L9
  b6:	b74d                	j	58 <.L1>
			b6: R_RISCV_RVC_JUMP	.L1

Disassembly of section .text.dbg_snprintf:

00000000 <dbg_snprintf>:
   0:	7131                	addi	sp,sp,-192

00000002 <.LVL14>:
   2:	c94a                	sw	s2,144(sp)

00000004 <.LBB16>:
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE16>:
   8:	0ac10313          	addi	t1,sp,172
   c:	c356                	sw	s5,132(sp)
   e:	db3e                	sw	a5,180(sp)
  10:	df46                	sw	a7,188(sp)

00000012 <.LBB30>:
  12:	00090793          	mv	a5,s2
			12: R_RISCV_LO12_I	.LANCHOR0
			12: R_RISCV_RELAX	*ABS*
  16:	00000ab7          	lui	s5,0x0
			16: R_RISCV_HI20	.L28
			16: R_RISCV_RELAX	*ABS*
  1a:	000008b7          	lui	a7,0x0
			1a: R_RISCV_HI20	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LBE30>:
  1e:	cd22                	sw	s0,152(sp)
  20:	cb26                	sw	s1,148(sp)
  22:	c74e                	sw	s3,140(sp)
  24:	c552                	sw	s4,136(sp)
  26:	c15a                	sw	s6,128(sp)
  28:	dede                	sw	s7,124(sp)
  2a:	dce2                	sw	s8,120(sp)
  2c:	dae6                	sw	s9,116(sp)
  2e:	d8ea                	sw	s10,112(sp)
  30:	d6ee                	sw	s11,108(sp)
  32:	cf06                	sw	ra,156(sp)
  34:	c42a                	sw	a0,8(sp)
  36:	c232                	sw	a2,4(sp)

00000038 <.LVL15>:
  38:	d736                	sw	a3,172(sp)
  3a:	d93a                	sw	a4,176(sp)
  3c:	dd42                	sw	a6,184(sp)
  3e:	ce1a                	sw	t1,28(sp)
  40:	849a                	mv	s1,t1

00000042 <.LBB31>:
  42:	fff58d13          	addi	s10,a1,-1

00000046 <.LVL17>:
  46:	8c2a                	mv	s8,a0
  48:	4d81                	li	s11,0
  4a:	4c81                	li	s9,0
  4c:	4b01                	li	s6,0
  4e:	4b81                	li	s7,0
  50:	4401                	li	s0,0
  52:	c63e                	sw	a5,12(sp)
  54:	000009b7          	lui	s3,0x0
			54: R_RISCV_HI20	.LC0
			54: R_RISCV_RELAX	*ABS*
  58:	00000a37          	lui	s4,0x0
			58: R_RISCV_HI20	.LC2
			58: R_RISCV_RELAX	*ABS*
  5c:	000a8a93          	mv	s5,s5
			5c: R_RISCV_LO12_I	.L28
			5c: R_RISCV_RELAX	*ABS*
  60:	00088913          	mv	s2,a7
			60: R_RISCV_LO12_I	.LANCHOR1
			60: R_RISCV_RELAX	*ABS*

00000064 <.L16>:
  64:	4792                	lw	a5,4(sp)
  66:	0785                	addi	a5,a5,1
  68:	c23e                	sw	a5,4(sp)

0000006a <.LVL19>:
  6a:	fff7c783          	lbu	a5,-1(a5)

0000006e <.LVL20>:
  6e:	4c078563          	beqz	a5,538 <.L85>
			6e: R_RISCV_BRANCH	.L85
  72:	000d1a63          	bnez	s10,86 <.L86>
			72: R_RISCV_BRANCH	.L86

00000076 <.L87>:
  76:	02a00793          	li	a5,42

0000007a <.LVL21>:
  7a:	fefc0f23          	sb	a5,-2(s8)

0000007e <.LVL22>:
  7e:	47a9                	li	a5,10
  80:	fefc0fa3          	sb	a5,-1(s8)
  84:	a965                	j	53c <.L88>
			84: R_RISCV_RVC_JUMP	.L88

00000086 <.L86>:
  86:	05800693          	li	a3,88
  8a:	471d                	li	a4,7
  8c:	0ad78163          	beq	a5,a3,12e <.L17>
			8c: R_RISCV_BRANCH	.L17
  90:	06f6ea63          	bltu	a3,a5,104 <.L18>
			90: R_RISCV_BRANCH	.L18
  94:	02d00693          	li	a3,45
  98:	4715                	li	a4,5
  9a:	08d78a63          	beq	a5,a3,12e <.L17>
			9a: R_RISCV_BRANCH	.L17
  9e:	04f6e063          	bltu	a3,a5,de <.L19>
			9e: R_RISCV_BRANCH	.L19
  a2:	02500693          	li	a3,37
  a6:	4705                	li	a4,1
  a8:	08d78363          	beq	a5,a3,12e <.L17>
			a8: R_RISCV_BRANCH	.L17
  ac:	02f6e163          	bltu	a3,a5,ce <.L20>
			ac: R_RISCV_BRANCH	.L20
  b0:	02000693          	li	a3,32

000000b4 <.L146>:
  b4:	4715                	li	a4,5

000000b6 <.L134>:
  b6:	06d78c63          	beq	a5,a3,12e <.L17>
			b6: R_RISCV_BRANCH	.L17

000000ba <.L21>:
  ba:	fcf78693          	addi	a3,a5,-49
  be:	0ff6f693          	andi	a3,a3,255
  c2:	4621                	li	a2,8
  c4:	4711                	li	a4,4
  c6:	06d67463          	bgeu	a2,a3,12e <.L17>
			c6: R_RISCV_BRANCH	.L17
  ca:	4701                	li	a4,0
  cc:	a08d                	j	12e <.L17>
			cc: R_RISCV_RVC_JUMP	.L17

000000ce <.L20>:
  ce:	02a00693          	li	a3,42
  d2:	4711                	li	a4,4
  d4:	04d78d63          	beq	a5,a3,12e <.L17>
			d4: R_RISCV_BRANCH	.L17
  d8:	02b00693          	li	a3,43
  dc:	bfe1                	j	b4 <.L146>
			dc: R_RISCV_RVC_JUMP	.L146

000000de <.L19>:
  de:	03000693          	li	a3,48
  e2:	470d                	li	a4,3
  e4:	04d78563          	beq	a5,a3,12e <.L17>
			e4: R_RISCV_BRANCH	.L17
  e8:	00f6e663          	bltu	a3,a5,f4 <.L22>
			e8: R_RISCV_BRANCH	.L22
  ec:	02e00693          	li	a3,46
  f0:	4709                	li	a4,2
  f2:	b7d1                	j	b6 <.L134>
			f2: R_RISCV_RVC_JUMP	.L134

000000f4 <.L22>:
  f4:	04100693          	li	a3,65
  f8:	471d                	li	a4,7
  fa:	02d78a63          	beq	a5,a3,12e <.L17>
			fa: R_RISCV_BRANCH	.L17
  fe:	04d00693          	li	a3,77
 102:	bf55                	j	b6 <.L134>
			102: R_RISCV_RVC_JUMP	.L134

00000104 <.L18>:
 104:	06c00693          	li	a3,108
 108:	4719                	li	a4,6
 10a:	02d78263          	beq	a5,a3,12e <.L17>
			10a: R_RISCV_BRANCH	.L17
 10e:	04f6e163          	bltu	a3,a5,150 <.L23>
			10e: R_RISCV_BRANCH	.L23
 112:	06800693          	li	a3,104
 116:	00d78c63          	beq	a5,a3,12e <.L17>
			116: R_RISCV_BRANCH	.L17
 11a:	02f6e763          	bltu	a3,a5,148 <.L24>
			11a: R_RISCV_BRANCH	.L24
 11e:	f9f78713          	addi	a4,a5,-97
 122:	0ff77713          	andi	a4,a4,255
 126:	468d                	li	a3,3
 128:	f8e6e9e3          	bltu	a3,a4,ba <.L21>
			128: R_RISCV_BRANCH	.L21
 12c:	471d                	li	a4,7

0000012e <.L17>:
 12e:	46b2                	lw	a3,12(sp)
 130:	040e                	slli	s0,s0,0x3

00000132 <.LVL25>:
 132:	9436                	add	s0,s0,a3
 134:	9722                	add	a4,a4,s0
 136:	00074403          	lbu	s0,0(a4)

0000013a <.LVL26>:
 13a:	471d                	li	a4,7
 13c:	3e876063          	bltu	a4,s0,51c <.L26>
			13c: R_RISCV_BRANCH	.L26
 140:	040a                	slli	s0,s0,0x2

00000142 <.LVL27>:
 142:	9456                	add	s0,s0,s5
 144:	4018                	lw	a4,0(s0)
 146:	8702                	jr	a4

00000148 <.L24>:
 148:	06900693          	li	a3,105
 14c:	471d                	li	a4,7
 14e:	b7a5                	j	b6 <.L134>
			14e: R_RISCV_RVC_JUMP	.L134

00000150 <.L23>:
 150:	07300693          	li	a3,115
 154:	471d                	li	a4,7
 156:	fcd78ce3          	beq	a5,a3,12e <.L17>
			156: R_RISCV_BRANCH	.L17
 15a:	00f6e563          	bltu	a3,a5,164 <.L25>
			15a: R_RISCV_BRANCH	.L25
 15e:	06d00693          	li	a3,109
 162:	bf91                	j	b6 <.L134>
			162: R_RISCV_RVC_JUMP	.L134

00000164 <.L25>:
 164:	07500693          	li	a3,117
 168:	471d                	li	a4,7
 16a:	fcd782e3          	beq	a5,a3,12e <.L17>
			16a: R_RISCV_BRANCH	.L17
 16e:	07800693          	li	a3,120
 172:	b791                	j	b6 <.L134>
			172: R_RISCV_RVC_JUMP	.L134

00000174 <.L35>:
 174:	00fc0023          	sb	a5,0(s8)
 178:	1d7d                	addi	s10,s10,-1
 17a:	0c05                	addi	s8,s8,1

0000017c <.LVL31>:
 17c:	4401                	li	s0,0
 17e:	b5dd                	j	64 <.L16>
			17e: R_RISCV_RVC_JUMP	.L16

00000180 <.L34>:
 180:	8dea                	mv	s11,s10
 182:	4c81                	li	s9,0
 184:	4b01                	li	s6,0
 186:	4405                	li	s0,1
 188:	bdf1                	j	64 <.L16>
			188: R_RISCV_RVC_JUMP	.L16

0000018a <.L33>:
 18a:	02b00713          	li	a4,43
 18e:	04e78263          	beq	a5,a4,1d2 <.L36>
			18e: R_RISCV_BRANCH	.L36
 192:	02f76163          	bltu	a4,a5,1b4 <.L37>
			192: R_RISCV_BRANCH	.L37
 196:	02000713          	li	a4,32
 19a:	02e78f63          	beq	a5,a4,1d8 <.L38>
			19a: R_RISCV_BRANCH	.L38

0000019e <.L39>:
 19e:	0ff00613          	li	a2,255
 1a2:	00098593          	mv	a1,s3
			1a2: R_RISCV_LO12_I	.LC0
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	000a0513          	mv	a0,s4
			1a6: R_RISCV_LO12_I	.LC2
			1a6: R_RISCV_RELAX	*ABS*
 1aa:	00000097          	auipc	ra,0x0
			1aa: R_RISCV_CALL	assert_err
			1aa: R_RISCV_RELAX	*ABS*
 1ae:	000080e7          	jalr	ra # 1aa <.L39+0xc>

000001b2 <.LVL35>:
 1b2:	a831                	j	1ce <.L142>
			1b2: R_RISCV_RVC_JUMP	.L142

000001b4 <.L37>:
 1b4:	02d00713          	li	a4,45
 1b8:	00e78963          	beq	a5,a4,1ca <.L40>
			1b8: R_RISCV_BRANCH	.L40
 1bc:	03000713          	li	a4,48
 1c0:	fce79fe3          	bne	a5,a4,19e <.L39>
			1c0: R_RISCV_BRANCH	.L39
 1c4:	040cec93          	ori	s9,s9,64
 1c8:	a019                	j	1ce <.L142>
			1c8: R_RISCV_RVC_JUMP	.L142

000001ca <.L40>:
 1ca:	020cec93          	ori	s9,s9,32

000001ce <.L142>:
 1ce:	4409                	li	s0,2
 1d0:	bd51                	j	64 <.L16>
			1d0: R_RISCV_RVC_JUMP	.L16

000001d2 <.L36>:
 1d2:	008cec93          	ori	s9,s9,8

000001d6 <.LVL40>:
 1d6:	bfe5                	j	1ce <.L142>
			1d6: R_RISCV_RVC_JUMP	.L142

000001d8 <.L38>:
 1d8:	010cec93          	ori	s9,s9,16
 1dc:	bfcd                	j	1ce <.L142>
			1dc: R_RISCV_RVC_JUMP	.L142

000001de <.L32>:
 1de:	02a00713          	li	a4,42
 1e2:	00e78b63          	beq	a5,a4,1f8 <.L42>
			1e2: R_RISCV_BRANCH	.L42
 1e6:	4729                	li	a4,10
 1e8:	02eb0833          	mul	a6,s6,a4
 1ec:	fd078793          	addi	a5,a5,-48

000001f0 <.LVL43>:
 1f0:	01078b33          	add	s6,a5,a6

000001f4 <.L145>:
 1f4:	440d                	li	s0,3
 1f6:	b5bd                	j	64 <.L16>
			1f6: R_RISCV_RVC_JUMP	.L16

000001f8 <.L42>:
 1f8:	0004ab03          	lw	s6,0(s1) # 0 <dbg_snprintf>

000001fc <.LVL46>:
 1fc:	0491                	addi	s1,s1,4

000001fe <.LVL47>:
 1fe:	bfdd                	j	1f4 <.L145>
			1fe: R_RISCV_RVC_JUMP	.L145

00000200 <.L30>:
 200:	02a00713          	li	a4,42
 204:	00e78a63          	beq	a5,a4,218 <.L43>
			204: R_RISCV_BRANCH	.L43
 208:	4729                	li	a4,10
 20a:	02ed8db3          	mul	s11,s11,a4

0000020e <.LVL49>:
 20e:	fd078793          	addi	a5,a5,-48

00000212 <.LVL50>:
 212:	9dbe                	add	s11,s11,a5

00000214 <.L144>:
 214:	4415                	li	s0,5
 216:	b5b9                	j	64 <.L16>
			216: R_RISCV_RVC_JUMP	.L16

00000218 <.L43>:
 218:	0004ad83          	lw	s11,0(s1)

0000021c <.LVL53>:
 21c:	0491                	addi	s1,s1,4

0000021e <.LVL54>:
 21e:	bfdd                	j	214 <.L144>
			21e: R_RISCV_RVC_JUMP	.L144

00000220 <.L29>:
 220:	06c00713          	li	a4,108
 224:	00e79663          	bne	a5,a4,230 <.L44>
			224: R_RISCV_BRANCH	.L44
 228:	002cec93          	ori	s9,s9,2

0000022c <.L143>:
 22c:	4419                	li	s0,6
 22e:	bd1d                	j	64 <.L16>
			22e: R_RISCV_RVC_JUMP	.L16

00000230 <.L44>:
 230:	13100613          	li	a2,305
 234:	00098593          	mv	a1,s3
			234: R_RISCV_LO12_I	.LC0
			234: R_RISCV_RELAX	*ABS*
 238:	000a0513          	mv	a0,s4
			238: R_RISCV_LO12_I	.LC2
			238: R_RISCV_RELAX	*ABS*
 23c:	00000097          	auipc	ra,0x0
			23c: R_RISCV_CALL	assert_err
			23c: R_RISCV_RELAX	*ABS*
 240:	000080e7          	jalr	ra # 23c <.L44+0xc>

00000244 <.LVL58>:
 244:	b7e5                	j	22c <.L143>
			244: R_RISCV_RVC_JUMP	.L143

00000246 <.L27>:
 246:	06300713          	li	a4,99
 24a:	0ee78163          	beq	a5,a4,32c <.L45>
			24a: R_RISCV_BRANCH	.L45
 24e:	08f76263          	bltu	a4,a5,2d2 <.L46>
			24e: R_RISCV_BRANCH	.L46
 252:	05800713          	li	a4,88
 256:	04e78963          	beq	a5,a4,2a8 <.L47>
			256: R_RISCV_BRANCH	.L47
 25a:	02f76f63          	bltu	a4,a5,298 <.L48>
			25a: R_RISCV_BRANCH	.L48
 25e:	04100713          	li	a4,65
 262:	10e78d63          	beq	a5,a4,37c <.L49>
			262: R_RISCV_BRANCH	.L49
 266:	04d00713          	li	a4,77
 26a:	0ce78a63          	beq	a5,a4,33e <.L50>
			26a: R_RISCV_BRANCH	.L50

0000026e <.L140>:
 26e:	86a6                	mv	a3,s1
 270:	4581                	li	a1,0

00000272 <.L51>:
 272:	040cf793          	andi	a5,s9,64
 276:	40bb0733          	sub	a4,s6,a1

0000027a <.LVL61>:
 27a:	22078e63          	beqz	a5,4b6 <.L132>
			27a: R_RISCV_BRANCH	.L132
 27e:	03000793          	li	a5,48

00000282 <.L75>:
 282:	00e05963          	blez	a4,294 <.L77>
			282: R_RISCV_BRANCH	.L77
 286:	0c05                	addi	s8,s8,1
 288:	fefc0fa3          	sb	a5,-1(s8)
 28c:	1d7d                	addi	s10,s10,-1

0000028e <.LVL63>:
 28e:	177d                	addi	a4,a4,-1

00000290 <.LVL64>:
 290:	fe0d19e3          	bnez	s10,282 <.L75>
			290: R_RISCV_BRANCH	.L75

00000294 <.L77>:
 294:	4781                	li	a5,0
 296:	ac89                	j	4e8 <.L81>
			296: R_RISCV_RVC_JUMP	.L81

00000298 <.L48>:
 298:	06100713          	li	a4,97
 29c:	0ee78063          	beq	a5,a4,37c <.L49>
			29c: R_RISCV_BRANCH	.L49
 2a0:	06200713          	li	a4,98
 2a4:	fce795e3          	bne	a5,a4,26e <.L140>
			2a4: R_RISCV_BRANCH	.L140

000002a8 <.L47>:
 2a8:	06400713          	li	a4,100
 2ac:	00448693          	addi	a3,s1,4
 2b0:	4090                	lw	a2,0(s1)

000002b2 <.LVL67>:
 2b2:	16e78263          	beq	a5,a4,416 <.L64>
			2b2: R_RISCV_BRANCH	.L64
 2b6:	12f76263          	bltu	a4,a5,3da <.L65>
			2b6: R_RISCV_BRANCH	.L65
 2ba:	05800713          	li	a4,88
 2be:	12e78663          	beq	a5,a4,3ea <.L66>
			2be: R_RISCV_BRANCH	.L66
 2c2:	06200713          	li	a4,98
 2c6:	1ae78e63          	beq	a5,a4,482 <.L67>
			2c6: R_RISCV_BRANCH	.L67

000002ca <.L138>:
 2ca:	4581                	li	a1,0
 2cc:	06010b93          	addi	s7,sp,96

000002d0 <.LVL68>:
 2d0:	b74d                	j	272 <.L51>
			2d0: R_RISCV_RVC_JUMP	.L51

000002d2 <.L46>:
 2d2:	06d00713          	li	a4,109
 2d6:	06e78463          	beq	a5,a4,33e <.L50>
			2d6: R_RISCV_BRANCH	.L50
 2da:	00f76d63          	bltu	a4,a5,2f4 <.L52>
			2da: R_RISCV_BRANCH	.L52
 2de:	06400713          	li	a4,100
 2e2:	fce783e3          	beq	a5,a4,2a8 <.L47>
			2e2: R_RISCV_BRANCH	.L47
 2e6:	06900713          	li	a4,105
 2ea:	f8e792e3          	bne	a5,a4,26e <.L140>
			2ea: R_RISCV_BRANCH	.L140
 2ee:	06400793          	li	a5,100

000002f2 <.LVL70>:
 2f2:	bf5d                	j	2a8 <.L47>
			2f2: R_RISCV_RVC_JUMP	.L47

000002f4 <.L52>:
 2f4:	07500713          	li	a4,117
 2f8:	fae788e3          	beq	a5,a4,2a8 <.L47>
			2f8: R_RISCV_BRANCH	.L47
 2fc:	07800713          	li	a4,120
 300:	fae784e3          	beq	a5,a4,2a8 <.L47>
			300: R_RISCV_BRANCH	.L47
 304:	07300713          	li	a4,115
 308:	f6e793e3          	bne	a5,a4,26e <.L140>
			308: R_RISCV_BRANCH	.L140
 30c:	0004ab83          	lw	s7,0(s1)

00000310 <.LVL72>:
 310:	00448693          	addi	a3,s1,4

00000314 <.LVL73>:
 314:	4581                	li	a1,0
 316:	f40b8ee3          	beqz	s7,272 <.L51>
			316: R_RISCV_BRANCH	.L51

0000031a <.L54>:
 31a:	f5b5dce3          	bge	a1,s11,272 <.L51>
			31a: R_RISCV_BRANCH	.L51
 31e:	00bb87b3          	add	a5,s7,a1
 322:	0007c783          	lbu	a5,0(a5)
 326:	d7b1                	beqz	a5,272 <.L51>
			326: R_RISCV_RVC_BRANCH	.L51

00000328 <.LVL75>:
 328:	0585                	addi	a1,a1,1

0000032a <.LVL76>:
 32a:	bfc5                	j	31a <.L54>
			32a: R_RISCV_RVC_JUMP	.L54

0000032c <.L45>:
 32c:	409c                	lw	a5,0(s1)

0000032e <.LVL78>:
 32e:	00448693          	addi	a3,s1,4

00000332 <.LVL79>:
 332:	4585                	li	a1,1
 334:	02f10023          	sb	a5,32(sp)

00000338 <.LVL80>:
 338:	02010b93          	addi	s7,sp,32

0000033c <.LVL81>:
 33c:	bf1d                	j	272 <.L51>
			33c: R_RISCV_RVC_JUMP	.L51

0000033e <.L50>:
 33e:	4090                	lw	a2,0(s1)
 340:	101c                	addi	a5,sp,32

00000342 <.LVL83>:
 342:	00448693          	addi	a3,s1,4

00000346 <.LVL84>:
 346:	00660313          	addi	t1,a2,6
 34a:	8bbe                	mv	s7,a5
 34c:	03a00513          	li	a0,58

00000350 <.L56>:
 350:	0605                	addi	a2,a2,1
 352:	fff64703          	lbu	a4,-1(a2)

00000356 <.LVL87>:
 356:	40475593          	srai	a1,a4,0x4
 35a:	8b3d                	andi	a4,a4,15

0000035c <.LVL88>:
 35c:	95ca                	add	a1,a1,s2
 35e:	974a                	add	a4,a4,s2
 360:	0005c583          	lbu	a1,0(a1)
 364:	00074703          	lbu	a4,0(a4)
 368:	00b78023          	sb	a1,0(a5)

0000036c <.LVL89>:
 36c:	00e780a3          	sb	a4,1(a5)
 370:	12660d63          	beq	a2,t1,4aa <.L110>
			370: R_RISCV_BRANCH	.L110
 374:	078d                	addi	a5,a5,3

00000376 <.LVL90>:
 376:	fea78fa3          	sb	a0,-1(a5)
 37a:	bfd9                	j	350 <.L56>
			37a: R_RISCV_RVC_JUMP	.L56

0000037c <.L49>:
 37c:	00448693          	addi	a3,s1,4

00000380 <.LVL92>:
 380:	4088                	lw	a0,0(s1)

00000382 <.LBB23>:
 382:	4741                	li	a4,16
 384:	000b0763          	beqz	s6,392 <.L57>
			384: R_RISCV_BRANCH	.L57

00000388 <.LBB26>:
 388:	47d5                	li	a5,21

0000038a <.LVL94>:
 38a:	875a                	mv	a4,s6
 38c:	0167f363          	bgeu	a5,s6,392 <.L57>
			38c: R_RISCV_BRANCH	.L57

00000390 <.LVL95>:
 390:	4755                	li	a4,21

00000392 <.L57>:
 392:	458d                	li	a1,3
 394:	02b705b3          	mul	a1,a4,a1
 398:	101c                	addi	a5,sp,32

0000039a <.LVL97>:
 39a:	972a                	add	a4,a4,a0
 39c:	8bbe                	mv	s7,a5
 39e:	15fd                	addi	a1,a1,-1

000003a0 <.L59>:
 3a0:	0505                	addi	a0,a0,1
 3a2:	fff54603          	lbu	a2,-1(a0)

000003a6 <.LVL100>:
 3a6:	40465813          	srai	a6,a2,0x4
 3aa:	8a3d                	andi	a2,a2,15

000003ac <.LVL101>:
 3ac:	984a                	add	a6,a6,s2
 3ae:	964a                	add	a2,a2,s2
 3b0:	00084803          	lbu	a6,0(a6)
 3b4:	00064603          	lbu	a2,0(a2)
 3b8:	01078023          	sb	a6,0(a5)

000003bc <.LVL102>:
 3bc:	00c780a3          	sb	a2,1(a5)
 3c0:	0ee50763          	beq	a0,a4,4ae <.L112>
			3c0: R_RISCV_BRANCH	.L112
 3c4:	00357613          	andi	a2,a0,3
 3c8:	078d                	addi	a5,a5,3

000003ca <.LVL103>:
 3ca:	02e00813          	li	a6,46
 3ce:	e219                	bnez	a2,3d4 <.L61>
			3ce: R_RISCV_RVC_BRANCH	.L61
 3d0:	03a00813          	li	a6,58

000003d4 <.L61>:
 3d4:	ff078fa3          	sb	a6,-1(a5)
 3d8:	b7e1                	j	3a0 <.L59>
			3d8: R_RISCV_RVC_JUMP	.L59

000003da <.L65>:
 3da:	07500713          	li	a4,117
 3de:	04e78263          	beq	a5,a4,422 <.L68>
			3de: R_RISCV_BRANCH	.L68
 3e2:	07800713          	li	a4,120
 3e6:	eee792e3          	bne	a5,a4,2ca <.L138>
			3e6: R_RISCV_BRANCH	.L138

000003ea <.L66>:
 3ea:	fffd8793          	addi	a5,s11,-1

000003ee <.LVL105>:
 3ee:	06010b93          	addi	s7,sp,96

000003f2 <.L73>:
 3f2:	00f67713          	andi	a4,a2,15
 3f6:	974a                	add	a4,a4,s2
 3f8:	00074703          	lbu	a4,0(a4)
 3fc:	1bfd                	addi	s7,s7,-1

000003fe <.LVL107>:
 3fe:	8211                	srli	a2,a2,0x4

00000400 <.LVL108>:
 400:	00eb8023          	sb	a4,0(s7) # 0 <dbg_snprintf>

00000404 <.LVL109>:
 404:	40fd85b3          	sub	a1,s11,a5

00000408 <.LVL110>:
 408:	873e                	mv	a4,a5

0000040a <.LVL111>:
 40a:	0af05463          	blez	a5,4b2 <.L115>
			40a: R_RISCV_BRANCH	.L115
 40e:	17fd                	addi	a5,a5,-1
 410:	f26d                	bnez	a2,3f2 <.L73>
			410: R_RISCV_RVC_BRANCH	.L73

00000412 <.L141>:
 412:	8dba                	mv	s11,a4
 414:	bdb9                	j	272 <.L51>
			414: R_RISCV_RVC_JUMP	.L51

00000416 <.L64>:
 416:	00065663          	bgez	a2,422 <.L68>
			416: R_RISCV_BRANCH	.L68
 41a:	40c00633          	neg	a2,a2
 41e:	080cec93          	ori	s9,s9,128

00000422 <.L68>:
 422:	4701                	li	a4,0
 424:	109c                	addi	a5,sp,96

00000426 <.LVL115>:
 426:	4529                	li	a0,10

00000428 <.L70>:
 428:	02a665b3          	rem	a1,a2,a0
 42c:	fff78b93          	addi	s7,a5,-1

00000430 <.LVL117>:
 430:	03058593          	addi	a1,a1,48
 434:	feb78fa3          	sb	a1,-1(a5)
 438:	02a64633          	div	a2,a2,a0
 43c:	00170593          	addi	a1,a4,1

00000440 <.LVL119>:
 440:	01b05363          	blez	s11,446 <.L69>
			440: R_RISCV_BRANCH	.L69
 444:	ee19                	bnez	a2,462 <.L113>
			444: R_RISCV_RVC_BRANCH	.L113

00000446 <.L69>:
 446:	018c9613          	slli	a2,s9,0x18

0000044a <.LVL120>:
 44a:	8661                	srai	a2,a2,0x18
 44c:	00065e63          	bgez	a2,468 <.L71>
			44c: R_RISCV_BRANCH	.L71

00000450 <.LVL121>:
 450:	02d00613          	li	a2,45

00000454 <.L139>:
 454:	fecb8fa3          	sb	a2,-1(s7)

00000458 <.LVL123>:
 458:	00270593          	addi	a1,a4,2

0000045c <.LVL124>:
 45c:	ffe78b93          	addi	s7,a5,-2
 460:	bd09                	j	272 <.L51>
			460: R_RISCV_RVC_JUMP	.L51

00000462 <.L113>:
 462:	872e                	mv	a4,a1
 464:	87de                	mv	a5,s7
 466:	b7c9                	j	428 <.L70>
			466: R_RISCV_RVC_JUMP	.L70

00000468 <.L71>:
 468:	008cf613          	andi	a2,s9,8
 46c:	c601                	beqz	a2,474 <.L72>
			46c: R_RISCV_RVC_BRANCH	.L72

0000046e <.LVL127>:
 46e:	02b00613          	li	a2,43
 472:	b7cd                	j	454 <.L139>
			472: R_RISCV_RVC_JUMP	.L139

00000474 <.L72>:
 474:	010cf613          	andi	a2,s9,16
 478:	de060de3          	beqz	a2,272 <.L51>
			478: R_RISCV_BRANCH	.L51

0000047c <.LVL129>:
 47c:	02000613          	li	a2,32
 480:	bfd1                	j	454 <.L139>
			480: R_RISCV_RVC_JUMP	.L139

00000482 <.L67>:
 482:	fffd8793          	addi	a5,s11,-1

00000486 <.LVL131>:
 486:	06010b93          	addi	s7,sp,96

0000048a <.L74>:
 48a:	00167713          	andi	a4,a2,1
 48e:	03070713          	addi	a4,a4,48
 492:	1bfd                	addi	s7,s7,-1

00000494 <.LVL133>:
 494:	00eb8023          	sb	a4,0(s7)
 498:	8205                	srli	a2,a2,0x1
 49a:	40fd85b3          	sub	a1,s11,a5

0000049e <.LVL135>:
 49e:	873e                	mv	a4,a5

000004a0 <.LVL136>:
 4a0:	00f05963          	blez	a5,4b2 <.L115>
			4a0: R_RISCV_BRANCH	.L115
 4a4:	17fd                	addi	a5,a5,-1
 4a6:	f275                	bnez	a2,48a <.L74>
			4a6: R_RISCV_RVC_BRANCH	.L74
 4a8:	b7ad                	j	412 <.L141>
			4a8: R_RISCV_RVC_JUMP	.L141

000004aa <.L110>:
 4aa:	45c5                	li	a1,17
 4ac:	b3d9                	j	272 <.L51>
			4ac: R_RISCV_RVC_JUMP	.L51

000004ae <.L112>:
 4ae:	4b01                	li	s6,0
 4b0:	b3c9                	j	272 <.L51>
			4b0: R_RISCV_RVC_JUMP	.L51

000004b2 <.L115>:
 4b2:	8dbe                	mv	s11,a5
 4b4:	bb7d                	j	272 <.L51>
			4b4: R_RISCV_RVC_JUMP	.L51

000004b6 <.L132>:
 4b6:	020cf793          	andi	a5,s9,32
 4ba:	dc078de3          	beqz	a5,294 <.L77>
			4ba: R_RISCV_BRANCH	.L77
 4be:	02000793          	li	a5,32

000004c2 <.L79>:
 4c2:	dce059e3          	blez	a4,294 <.L77>
			4c2: R_RISCV_BRANCH	.L77
 4c6:	0c05                	addi	s8,s8,1
 4c8:	fefc0fa3          	sb	a5,-1(s8)
 4cc:	1d7d                	addi	s10,s10,-1

000004ce <.LVL142>:
 4ce:	177d                	addi	a4,a4,-1

000004d0 <.LVL143>:
 4d0:	fe0d19e3          	bnez	s10,4c2 <.L79>
			4d0: R_RISCV_BRANCH	.L79
 4d4:	b3c1                	j	294 <.L77>
			4d4: R_RISCV_RVC_JUMP	.L77

000004d6 <.L82>:
 4d6:	00fb8633          	add	a2,s7,a5
 4da:	00064503          	lbu	a0,0(a2)
 4de:	00fc0633          	add	a2,s8,a5
 4e2:	0785                	addi	a5,a5,1

000004e4 <.LVL145>:
 4e4:	00a60023          	sb	a0,0(a2)

000004e8 <.L81>:
 4e8:	fef597e3          	bne	a1,a5,4d6 <.L82>
			4e8: R_RISCV_BRANCH	.L82
 4ec:	9bae                	add	s7,s7,a1

000004ee <.LVL147>:
 4ee:	9c2e                	add	s8,s8,a1

000004f0 <.LVL148>:
 4f0:	40bd0d33          	sub	s10,s10,a1
 4f4:	020b1063          	bnez	s6,514 <.L116>
			4f4: R_RISCV_BRANCH	.L116

000004f8 <.L117>:
 4f8:	84b6                	mv	s1,a3
 4fa:	441d                	li	s0,7
 4fc:	b6a5                	j	64 <.L16>
			4fc: R_RISCV_RVC_JUMP	.L16

000004fe <.L84>:
 4fe:	0c05                	addi	s8,s8,1
 500:	fecc0fa3          	sb	a2,-1(s8)
 504:	1d7d                	addi	s10,s10,-1

00000506 <.L83>:
 506:	fe0d09e3          	beqz	s10,4f8 <.L117>
			506: R_RISCV_BRANCH	.L117
 50a:	418707b3          	sub	a5,a4,s8
 50e:	fef048e3          	bgtz	a5,4fe <.L84>
			50e: R_RISCV_BRANCH	.L84
 512:	b7dd                	j	4f8 <.L117>
			512: R_RISCV_RVC_JUMP	.L117

00000514 <.L116>:
 514:	9762                	add	a4,a4,s8

00000516 <.LVL154>:
 516:	02000613          	li	a2,32
 51a:	b7f5                	j	506 <.L83>
			51a: R_RISCV_RVC_JUMP	.L83

0000051c <.L26>:
 51c:	23800613          	li	a2,568
 520:	00098593          	mv	a1,s3
			520: R_RISCV_LO12_I	.LC0
			520: R_RISCV_RELAX	*ABS*
 524:	000a0513          	mv	a0,s4
			524: R_RISCV_LO12_I	.LC2
			524: R_RISCV_RELAX	*ABS*
 528:	00000097          	auipc	ra,0x0
			528: R_RISCV_CALL	assert_err
			528: R_RISCV_RELAX	*ABS*
 52c:	000080e7          	jalr	ra # 528 <.L26+0xc>

00000530 <.LVL156>:
 530:	be15                	j	64 <.L16>
			530: R_RISCV_RVC_JUMP	.L16

00000532 <.L107>:
 532:	4d81                	li	s11,0

00000534 <.LVL158>:
 534:	4411                	li	s0,4
 536:	b63d                	j	64 <.L16>
			536: R_RISCV_RVC_JUMP	.L16

00000538 <.L85>:
 538:	b20d0fe3          	beqz	s10,76 <.L87>
			538: R_RISCV_BRANCH	.L87

0000053c <.L88>:
 53c:	000c0023          	sb	zero,0(s8)

00000540 <.LBE31>:
 540:	47a2                	lw	a5,8(sp)
 542:	40fa                	lw	ra,156(sp)
 544:	446a                	lw	s0,152(sp)
 546:	40fc0533          	sub	a0,s8,a5

0000054a <.LVL162>:
 54a:	44da                	lw	s1,148(sp)
 54c:	494a                	lw	s2,144(sp)
 54e:	49ba                	lw	s3,140(sp)
 550:	4a2a                	lw	s4,136(sp)
 552:	4a9a                	lw	s5,132(sp)
 554:	4b0a                	lw	s6,128(sp)
 556:	5bf6                	lw	s7,124(sp)
 558:	5c66                	lw	s8,120(sp)
 55a:	5cd6                	lw	s9,116(sp)
 55c:	5d46                	lw	s10,112(sp)
 55e:	5db6                	lw	s11,108(sp)
 560:	6129                	addi	sp,sp,192

00000562 <.LVL163>:
 562:	8082                	ret
