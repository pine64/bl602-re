
libblecontroller/ecc_p256.o:     file format elf32-littleriscv


Disassembly of section .text.Mont2GF:

00000000 <Mont2GF>:
   0:	1141                	addi	sp,sp,-16
   2:	000005b7          	lui	a1,0x0
			2: R_RISCV_HI20	.LANCHOR0
			2: R_RISCV_RELAX	*ABS*
   6:	c422                	sw	s0,8(sp)
   8:	4781                	li	a5,0
   a:	842a                	mv	s0,a0
   c:	03900713          	li	a4,57
  10:	468d                	li	a3,3
  12:	4635                	li	a2,13
  14:	00058593          	mv	a1,a1
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	4521                	li	a0,8

0000001a <.LVL1>:
  1a:	c606                	sw	ra,12(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	sec_eng_pka0_pld
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL1+0x2>

00000024 <.LVL2>:
  24:	4681                	li	a3,0
  26:	4619                	li	a2,6
  28:	458d                	li	a1,3
  2a:	4505                	li	a0,1
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	sec_eng_pka0_clir
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL2+0x8>

00000034 <.LVL3>:
  34:	4681                	li	a3,0
  36:	461d                	li	a2,7
  38:	458d                	li	a1,3
  3a:	4505                	li	a0,1
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	sec_eng_pka0_clir
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL3+0x8>

00000044 <.LVL4>:
  44:	8722                	mv	a4,s0
  46:	4835                	li	a6,13
  48:	478d                	li	a5,3
  4a:	468d                	li	a3,3
  4c:	460d                	li	a2,3
  4e:	4591                	li	a1,4
  50:	4501                	li	a0,0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	sec_eng_pka0_lmul
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL4+0xe>

0000005a <.LVL5>:
  5a:	8622                	mv	a2,s0
  5c:	4691                	li	a3,4
  5e:	458d                	li	a1,3
  60:	4501                	li	a0,0
  62:	4801                	li	a6,0
  64:	478d                	li	a5,3
  66:	470d                	li	a4,3
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	sec_eng_pka0_mrem
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL5+0xe>

00000070 <.LVL6>:
  70:	4422                	lw	s0,8(sp)
  72:	40b2                	lw	ra,12(sp)
  74:	4681                	li	a3,0
  76:	460d                	li	a2,3
  78:	4591                	li	a1,4
  7a:	4505                	li	a0,1
  7c:	0141                	addi	sp,sp,16
  7e:	00000317          	auipc	t1,0x0
			7e: R_RISCV_CALL	sec_eng_pka0_clir
			7e: R_RISCV_RELAX	*ABS*
  82:	00030067          	jr	t1 # 7e <.LVL6+0xe>

Disassembly of section .text.getFinalPoint:

00000000 <getFinalPoint>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	4681                	li	a3,0
   6:	842a                	mv	s0,a0
   8:	4619                	li	a2,6
   a:	458d                	li	a1,3
   c:	4505                	li	a0,1

0000000e <.LVL9>:
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	sec_eng_pka0_clir
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL9+0x2>

00000018 <.LVL10>:
  18:	4681                	li	a3,0
  1a:	461d                	li	a2,7
  1c:	458d                	li	a1,3
  1e:	4505                	li	a0,1
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	sec_eng_pka0_clir
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL10+0x8>

00000028 <.LVL11>:
  28:	8722                	mv	a4,s0
  2a:	4839                	li	a6,14
  2c:	478d                	li	a5,3
  2e:	468d                	li	a3,3
  30:	460d                	li	a2,3
  32:	4591                	li	a1,4
  34:	4501                	li	a0,0
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	sec_eng_pka0_lmul
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL11+0xe>

0000003e <.LVL12>:
  3e:	8622                	mv	a2,s0
  40:	4691                	li	a3,4
  42:	458d                	li	a1,3
  44:	4501                	li	a0,0
  46:	4801                	li	a6,0
  48:	478d                	li	a5,3
  4a:	470d                	li	a4,3
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	sec_eng_pka0_mrem
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL12+0xe>

00000054 <.LVL13>:
  54:	4422                	lw	s0,8(sp)
  56:	40b2                	lw	ra,12(sp)
  58:	4681                	li	a3,0
  5a:	460d                	li	a2,3
  5c:	4591                	li	a1,4
  5e:	4505                	li	a0,1
  60:	0141                	addi	sp,sp,16
  62:	00000317          	auipc	t1,0x0
			62: R_RISCV_CALL	sec_eng_pka0_clir
			62: R_RISCV_RELAX	*ABS*
  66:	00030067          	jr	t1 # 62 <.LVL13+0xe>

Disassembly of section .text.pka_point_addition.constprop.3:

00000000 <pka_point_addition.constprop.3>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	00250493          	addi	s1,a0,2
   8:	d04a                	sw	s2,32(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	0ff4f493          	andi	s1,s1,255
  10:	892a                	mv	s2,a0
  12:	8aae                	mv	s5,a1
  14:	00158713          	addi	a4,a1,1 # 1 <pka_point_addition.constprop.3+0x1>
  18:	d422                	sw	s0,40(sp)
  1a:	ce4e                	sw	s3,28(sp)
  1c:	cc52                	sw	s4,24(sp)
  1e:	89b2                	mv	s3,a2
  20:	8826                	mv	a6,s1
  22:	c002                	sw	zero,0(sp)
  24:	488d                	li	a7,3
  26:	478d                	li	a5,3
  28:	0ff77713          	andi	a4,a4,255
  2c:	468d                	li	a3,3
  2e:	4635                	li	a2,13

00000030 <.LVL16>:
  30:	458d                	li	a1,3

00000032 <.LVL17>:
  32:	4501                	li	a0,0

00000034 <.LVL18>:
  34:	00190413          	addi	s0,s2,1
  38:	002a8a13          	addi	s4,s5,2
  3c:	d606                	sw	ra,44(sp)
  3e:	0ff47413          	andi	s0,s0,255
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	sec_eng_pka0_mmul
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL18+0xe>

0000004a <.LVL19>:
  4a:	0ffa7a13          	andi	s4,s4,255
  4e:	8852                	mv	a6,s4
  50:	8722                	mv	a4,s0
  52:	c002                	sw	zero,0(sp)
  54:	488d                	li	a7,3
  56:	478d                	li	a5,3
  58:	468d                	li	a3,3
  5a:	4639                	li	a2,14
  5c:	458d                	li	a1,3
  5e:	4501                	li	a0,0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	sec_eng_pka0_mmul
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL19+0x16>

00000068 <.LVL20>:
  68:	8826                	mv	a6,s1
  6a:	8756                	mv	a4,s5
  6c:	c002                	sw	zero,0(sp)
  6e:	488d                	li	a7,3
  70:	478d                	li	a5,3
  72:	468d                	li	a3,3
  74:	463d                	li	a2,15
  76:	458d                	li	a1,3
  78:	4501                	li	a0,0
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	sec_eng_pka0_mmul
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL20+0x12>

00000082 <.LVL21>:
  82:	8852                	mv	a6,s4
  84:	874a                	mv	a4,s2
  86:	c002                	sw	zero,0(sp)
  88:	488d                	li	a7,3
  8a:	478d                	li	a5,3
  8c:	468d                	li	a3,3
  8e:	4641                	li	a2,16
  90:	458d                	li	a1,3
  92:	4501                	li	a0,0
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	sec_eng_pka0_mmul
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL21+0x12>

0000009c <.LVL22>:
  9c:	488d                	li	a7,3
  9e:	c002                	sw	zero,0(sp)
  a0:	4839                	li	a6,14
  a2:	478d                	li	a5,3
  a4:	4735                	li	a4,13
  a6:	468d                	li	a3,3
  a8:	4635                	li	a2,13
  aa:	458d                	li	a1,3
  ac:	4501                	li	a0,0
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	sec_eng_pka0_msub
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL22+0x12>

000000b6 <.LVL23>:
  b6:	488d                	li	a7,3
  b8:	c002                	sw	zero,0(sp)
  ba:	4841                	li	a6,16
  bc:	478d                	li	a5,3
  be:	473d                	li	a4,15
  c0:	468d                	li	a3,3
  c2:	463d                	li	a2,15
  c4:	458d                	li	a1,3
  c6:	4501                	li	a0,0
  c8:	00000097          	auipc	ra,0x0
			c8: R_RISCV_CALL	sec_eng_pka0_msub
			c8: R_RISCV_RELAX	*ABS*
  cc:	000080e7          	jalr	ra # c8 <.LVL23+0x12>

000000d0 <.LVL24>:
  d0:	8852                	mv	a6,s4
  d2:	8726                	mv	a4,s1
  d4:	864a                	mv	a2,s2
  d6:	c002                	sw	zero,0(sp)
  d8:	488d                	li	a7,3
  da:	478d                	li	a5,3
  dc:	468d                	li	a3,3
  de:	458d                	li	a1,3
  e0:	4501                	li	a0,0
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	sec_eng_pka0_mmul
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL24+0x12>

000000ea <.LVL25>:
  ea:	8622                	mv	a2,s0
  ec:	c002                	sw	zero,0(sp)
  ee:	488d                	li	a7,3
  f0:	483d                	li	a6,15
  f2:	478d                	li	a5,3
  f4:	473d                	li	a4,15
  f6:	468d                	li	a3,3
  f8:	458d                	li	a1,3
  fa:	4501                	li	a0,0
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	sec_eng_pka0_mmul
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL25+0x12>

00000104 <.LVL26>:
 104:	8722                	mv	a4,s0
 106:	8626                	mv	a2,s1
 108:	c002                	sw	zero,0(sp)
 10a:	488d                	li	a7,3
 10c:	483d                	li	a6,15
 10e:	478d                	li	a5,3
 110:	468d                	li	a3,3
 112:	458d                	li	a1,3
 114:	4501                	li	a0,0
 116:	00000097          	auipc	ra,0x0
			116: R_RISCV_CALL	sec_eng_pka0_mmul
			116: R_RISCV_RELAX	*ABS*
 11a:	000080e7          	jalr	ra # 116 <.LVL26+0x12>

0000011e <.LVL27>:
 11e:	488d                	li	a7,3
 120:	c002                	sw	zero,0(sp)
 122:	4835                	li	a6,13
 124:	478d                	li	a5,3
 126:	4735                	li	a4,13
 128:	468d                	li	a3,3
 12a:	4645                	li	a2,17
 12c:	458d                	li	a1,3
 12e:	4501                	li	a0,0
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	sec_eng_pka0_mmul
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL27+0x12>

00000138 <.LVL28>:
 138:	884a                	mv	a6,s2
 13a:	c002                	sw	zero,0(sp)
 13c:	488d                	li	a7,3
 13e:	478d                	li	a5,3
 140:	4745                	li	a4,17
 142:	468d                	li	a3,3
 144:	4645                	li	a2,17
 146:	458d                	li	a1,3
 148:	4501                	li	a0,0
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	sec_eng_pka0_mmul
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LVL28+0x12>

00000152 <.LVL29>:
 152:	8826                	mv	a6,s1
 154:	c002                	sw	zero,0(sp)
 156:	488d                	li	a7,3
 158:	478d                	li	a5,3
 15a:	4745                	li	a4,17
 15c:	468d                	li	a3,3
 15e:	4645                	li	a2,17
 160:	458d                	li	a1,3
 162:	4501                	li	a0,0
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	sec_eng_pka0_msub
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.LVL29+0x12>

0000016c <.LVL30>:
 16c:	8822                	mv	a6,s0
 16e:	c002                	sw	zero,0(sp)
 170:	488d                	li	a7,3
 172:	478d                	li	a5,3
 174:	4725                	li	a4,9
 176:	468d                	li	a3,3
 178:	4649                	li	a2,18
 17a:	458d                	li	a1,3
 17c:	4501                	li	a0,0
 17e:	00000097          	auipc	ra,0x0
			17e: R_RISCV_CALL	sec_eng_pka0_mmul
			17e: R_RISCV_RELAX	*ABS*
 182:	000080e7          	jalr	ra # 17e <.LVL30+0x12>

00000186 <.LVL31>:
 186:	488d                	li	a7,3
 188:	c002                	sw	zero,0(sp)
 18a:	4841                	li	a6,16
 18c:	478d                	li	a5,3
 18e:	4749                	li	a4,18
 190:	468d                	li	a3,3
 192:	4649                	li	a2,18
 194:	458d                	li	a1,3
 196:	4501                	li	a0,0
 198:	00000097          	auipc	ra,0x0
			198: R_RISCV_CALL	sec_eng_pka0_mmul
			198: R_RISCV_RELAX	*ABS*
 19c:	000080e7          	jalr	ra # 198 <.LVL31+0x12>

000001a0 <.LVL32>:
 1a0:	488d                	li	a7,3
 1a2:	c002                	sw	zero,0(sp)
 1a4:	4849                	li	a6,18
 1a6:	478d                	li	a5,3
 1a8:	4745                	li	a4,17
 1aa:	468d                	li	a3,3
 1ac:	4649                	li	a2,18
 1ae:	458d                	li	a1,3
 1b0:	4501                	li	a0,0
 1b2:	00000097          	auipc	ra,0x0
			1b2: R_RISCV_CALL	sec_eng_pka0_msub
			1b2: R_RISCV_RELAX	*ABS*
 1b6:	000080e7          	jalr	ra # 1b2 <.LVL32+0x12>

000001ba <.LVL33>:
 1ba:	8722                	mv	a4,s0
 1bc:	8622                	mv	a2,s0
 1be:	c002                	sw	zero,0(sp)
 1c0:	488d                	li	a7,3
 1c2:	4841                	li	a6,16
 1c4:	478d                	li	a5,3
 1c6:	468d                	li	a3,3
 1c8:	458d                	li	a1,3
 1ca:	4501                	li	a0,0
 1cc:	00000097          	auipc	ra,0x0
			1cc: R_RISCV_CALL	sec_eng_pka0_mmul
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	000080e7          	jalr	ra # 1cc <.LVL33+0x12>

000001d4 <.LVL34>:
 1d4:	8726                	mv	a4,s1
 1d6:	c002                	sw	zero,0(sp)
 1d8:	488d                	li	a7,3
 1da:	4839                	li	a6,14
 1dc:	478d                	li	a5,3
 1de:	468d                	li	a3,3
 1e0:	4639                	li	a2,14
 1e2:	458d                	li	a1,3
 1e4:	4501                	li	a0,0
 1e6:	00000097          	auipc	ra,0x0
			1e6: R_RISCV_CALL	sec_eng_pka0_mmul
			1e6: R_RISCV_RELAX	*ABS*
 1ea:	000080e7          	jalr	ra # 1e6 <.LVL34+0x12>

000001ee <.LVL35>:
 1ee:	00298613          	addi	a2,s3,2
 1f2:	884a                	mv	a6,s2
 1f4:	8726                	mv	a4,s1
 1f6:	c002                	sw	zero,0(sp)
 1f8:	488d                	li	a7,3
 1fa:	478d                	li	a5,3
 1fc:	468d                	li	a3,3
 1fe:	0ff67613          	andi	a2,a2,255
 202:	458d                	li	a1,3
 204:	4501                	li	a0,0
 206:	00000097          	auipc	ra,0x0
			206: R_RISCV_CALL	sec_eng_pka0_mmul
			206: R_RISCV_RELAX	*ABS*
 20a:	000080e7          	jalr	ra # 206 <.LVL35+0x18>

0000020e <.LVL36>:
 20e:	864e                	mv	a2,s3
 210:	c002                	sw	zero,0(sp)
 212:	488d                	li	a7,3
 214:	4849                	li	a6,18
 216:	478d                	li	a5,3
 218:	473d                	li	a4,15
 21a:	468d                	li	a3,3
 21c:	458d                	li	a1,3
 21e:	4501                	li	a0,0
 220:	00000097          	auipc	ra,0x0
			220: R_RISCV_CALL	sec_eng_pka0_mmul
			220: R_RISCV_RELAX	*ABS*
 224:	000080e7          	jalr	ra # 220 <.LVL36+0x12>

00000228 <.LVL37>:
 228:	8722                	mv	a4,s0
 22a:	8622                	mv	a2,s0
 22c:	c002                	sw	zero,0(sp)
 22e:	488d                	li	a7,3
 230:	4849                	li	a6,18
 232:	478d                	li	a5,3
 234:	468d                	li	a3,3
 236:	458d                	li	a1,3
 238:	4501                	li	a0,0
 23a:	00000097          	auipc	ra,0x0
			23a: R_RISCV_CALL	sec_eng_pka0_msub
			23a: R_RISCV_RELAX	*ABS*
 23e:	000080e7          	jalr	ra # 23a <.LVL37+0x12>

00000242 <.LVL38>:
 242:	8822                	mv	a6,s0
 244:	8622                	mv	a2,s0
 246:	c002                	sw	zero,0(sp)
 248:	488d                	li	a7,3
 24a:	478d                	li	a5,3
 24c:	4735                	li	a4,13
 24e:	468d                	li	a3,3
 250:	458d                	li	a1,3
 252:	4501                	li	a0,0
 254:	00000097          	auipc	ra,0x0
			254: R_RISCV_CALL	sec_eng_pka0_mmul
			254: R_RISCV_RELAX	*ABS*
 258:	000080e7          	jalr	ra # 254 <.LVL38+0x12>

0000025c <.LVL39>:
 25c:	00198613          	addi	a2,s3,1
 260:	8722                	mv	a4,s0
 262:	c002                	sw	zero,0(sp)
 264:	488d                	li	a7,3
 266:	4839                	li	a6,14
 268:	478d                	li	a5,3
 26a:	468d                	li	a3,3
 26c:	0ff67613          	andi	a2,a2,255
 270:	458d                	li	a1,3
 272:	4505                	li	a0,1
 274:	00000097          	auipc	ra,0x0
			274: R_RISCV_CALL	sec_eng_pka0_msub
			274: R_RISCV_RELAX	*ABS*
 278:	000080e7          	jalr	ra # 274 <.LVL39+0x18>

0000027c <.LVL40>:
 27c:	00000097          	auipc	ra,0x0
			27c: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			27c: R_RISCV_RELAX	*ABS*
 280:	000080e7          	jalr	ra # 27c <.LVL40>

00000284 <.LVL41>:
 284:	5422                	lw	s0,40(sp)
 286:	50b2                	lw	ra,44(sp)
 288:	5492                	lw	s1,36(sp)
 28a:	5902                	lw	s2,32(sp)
 28c:	49f2                	lw	s3,28(sp)
 28e:	4a62                	lw	s4,24(sp)
 290:	4ad2                	lw	s5,20(sp)
 292:	6145                	addi	sp,sp,48
 294:	00000317          	auipc	t1,0x0
			294: R_RISCV_CALL	sec_eng_pka0_clear_int
			294: R_RISCV_RELAX	*ABS*
 298:	00030067          	jr	t1 # 294 <.LVL41+0x10>

Disassembly of section .text.pka_read_result.constprop.4:

00000000 <pka_read_result.constprop.4>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	862a                	mv	a2,a0
   6:	84aa                	mv	s1,a0
   8:	46a1                	li	a3,8
   a:	450d                	li	a0,3

0000000c <.LVL44>:
   c:	c606                	sw	ra,12(sp)
   e:	c422                	sw	s0,8(sp)
  10:	842e                	mv	s0,a1
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	sec_eng_pka0_read_data
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL44+0x6>

0000001a <.LVL45>:
  1a:	00140593          	addi	a1,s0,1
  1e:	02848613          	addi	a2,s1,40
  22:	46a1                	li	a3,8
  24:	0ff5f593          	andi	a1,a1,255
  28:	450d                	li	a0,3
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	sec_eng_pka0_read_data
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL45+0x10>

00000032 <.LVL46>:
  32:	00240593          	addi	a1,s0,2
  36:	4422                	lw	s0,8(sp)
  38:	40b2                	lw	ra,12(sp)
  3a:	05048613          	addi	a2,s1,80
  3e:	4492                	lw	s1,4(sp)

00000040 <.LVL47>:
  40:	46a1                	li	a3,8
  42:	0ff5f593          	andi	a1,a1,255
  46:	450d                	li	a0,3
  48:	0141                	addi	sp,sp,16
  4a:	00000317          	auipc	t1,0x0
			4a: R_RISCV_CALL	sec_eng_pka0_read_data
			4a: R_RISCV_RELAX	*ABS*
  4e:	00030067          	jr	t1 # 4a <.LVL47+0xa>

Disassembly of section .text.pka_cp_x2_to_x1.constprop.5:

00000000 <pka_cp_x2_to_x1.constprop.5>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	842a                	mv	s0,a0
   8:	84ae                	mv	s1,a1
   a:	872e                	mv	a4,a1
   c:	862a                	mv	a2,a0
   e:	468d                	li	a3,3
  10:	458d                	li	a1,3

00000012 <.LVL50>:
  12:	4501                	li	a0,0

00000014 <.LVL51>:
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	sec_eng_pka0_movdat
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL51+0x2>

0000001e <.LVL52>:
  1e:	00148713          	addi	a4,s1,1
  22:	00140613          	addi	a2,s0,1
  26:	0ff77713          	andi	a4,a4,255
  2a:	468d                	li	a3,3
  2c:	0ff67613          	andi	a2,a2,255
  30:	458d                	li	a1,3
  32:	4501                	li	a0,0
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	sec_eng_pka0_movdat
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL52+0x16>

0000003c <.LVL53>:
  3c:	00240613          	addi	a2,s0,2
  40:	4422                	lw	s0,8(sp)
  42:	00248713          	addi	a4,s1,2
  46:	40b2                	lw	ra,12(sp)
  48:	4492                	lw	s1,4(sp)
  4a:	0ff77713          	andi	a4,a4,255
  4e:	468d                	li	a3,3
  50:	0ff67613          	andi	a2,a2,255
  54:	458d                	li	a1,3
  56:	4501                	li	a0,0
  58:	0141                	addi	sp,sp,16
  5a:	00000317          	auipc	t1,0x0
			5a: R_RISCV_CALL	sec_eng_pka0_movdat
			5a: R_RISCV_RELAX	*ABS*
  5e:	00030067          	jr	t1 # 5a <.LVL53+0x1e>

Disassembly of section .text.pka_point_inf_check.constprop.7:

00000000 <pka_point_inf_check.constprop.7>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	892a                	mv	s2,a0
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	862a                	mv	a2,a0
   c:	8a2e                	mv	s4,a1
   e:	00f10513          	addi	a0,sp,15

00000012 <.LVL56>:
  12:	4721                	li	a4,8
  14:	468d                	li	a3,3
  16:	458d                	li	a1,3

00000018 <.LVL57>:
  18:	00190993          	addi	s3,s2,1
  1c:	d606                	sw	ra,44(sp)
  1e:	d422                	sw	s0,40(sp)
  20:	d226                	sw	s1,36(sp)
  22:	ca56                	sw	s5,20(sp)
  24:	0ff9f993          	andi	s3,s3,255
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	sec_eng_pka0_lcmp
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL57+0x10>

00000030 <.LVL58>:
  30:	864e                	mv	a2,s3
  32:	00f10513          	addi	a0,sp,15
  36:	474d                	li	a4,19
  38:	468d                	li	a3,3
  3a:	458d                	li	a1,3
  3c:	00f14a83          	lbu	s5,15(sp)

00000040 <.LVL59>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	sec_eng_pka0_lcmp
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL59>

00000048 <.LVL60>:
  48:	00f14483          	lbu	s1,15(sp)
  4c:	874e                	mv	a4,s3
  4e:	00f10513          	addi	a0,sp,15
  52:	468d                	li	a3,3
  54:	4651                	li	a2,20
  56:	458d                	li	a1,3
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	sec_eng_pka0_lcmp
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL60+0x10>

00000060 <.LVL61>:
  60:	00f14403          	lbu	s0,15(sp)
  64:	00290613          	addi	a2,s2,2
  68:	0486                	slli	s1,s1,0x1
  6a:	00f10513          	addi	a0,sp,15
  6e:	04e2                	slli	s1,s1,0x18
  70:	4721                	li	a4,8
  72:	468d                	li	a3,3
  74:	0ff67613          	andi	a2,a2,255
  78:	458d                	li	a1,3
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	sec_eng_pka0_lcmp
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL61+0x1a>

00000082 <.LVL62>:
  82:	84e1                	srai	s1,s1,0x18

00000084 <.LVL63>:
  84:	040a                	slli	s0,s0,0x2
  86:	00f14783          	lbu	a5,15(sp)
  8a:	8c45                	or	s0,s0,s1
  8c:	01546433          	or	s0,s0,s5
  90:	0462                	slli	s0,s0,0x18
  92:	8461                	srai	s0,s0,0x18

00000094 <.LVL64>:
  94:	078e                	slli	a5,a5,0x3
  96:	8c5d                	or	s0,s0,a5

00000098 <.LVL65>:
  98:	0462                	slli	s0,s0,0x18
  9a:	8461                	srai	s0,s0,0x18
  9c:	1445                	addi	s0,s0,-15
  9e:	00143413          	seqz	s0,s0
  a2:	008a0023          	sb	s0,0(s4)
  a6:	50b2                	lw	ra,44(sp)
  a8:	5422                	lw	s0,40(sp)
  aa:	5492                	lw	s1,36(sp)
  ac:	5902                	lw	s2,32(sp)
  ae:	49f2                	lw	s3,28(sp)
  b0:	4a62                	lw	s4,24(sp)

000000b2 <.LVL66>:
  b2:	4ad2                	lw	s5,20(sp)
  b4:	6145                	addi	sp,sp,48
  b6:	8082                	ret

Disassembly of section .text.GF2Mont.constprop.8:

00000000 <GF2Mont.constprop.8>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842e                	mv	s0,a1
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LANCHOR1
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL68>:
   a:	c226                	sw	s1,4(sp)
   c:	4781                	li	a5,0
   e:	84aa                	mv	s1,a0
  10:	03900713          	li	a4,57
  14:	468d                	li	a3,3
  16:	4601                	li	a2,0
  18:	00058593          	mv	a1,a1
			18: R_RISCV_LO12_I	.LANCHOR1
			18: R_RISCV_RELAX	*ABS*
  1c:	4521                	li	a0,8

0000001e <.LVL69>:
  1e:	c606                	sw	ra,12(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	sec_eng_pka0_pld
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL69+0x2>

00000028 <.LVL70>:
  28:	85a6                	mv	a1,s1
  2a:	4781                	li	a5,0
  2c:	03900713          	li	a4,57
  30:	468d                	li	a3,3
  32:	4605                	li	a2,1
  34:	4521                	li	a0,8
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	sec_eng_pka0_pld
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL70+0xe>

0000003e <.LVL71>:
  3e:	10000793          	li	a5,256
  42:	4705                	li	a4,1
  44:	468d                	li	a3,3
  46:	4605                	li	a2,1
  48:	4591                	li	a1,4
  4a:	4501                	li	a0,0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	sec_eng_pka0_lmul2n
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL71+0xe>

00000054 <.LVL72>:
  54:	4801                	li	a6,0
  56:	478d                	li	a5,3
  58:	4705                	li	a4,1
  5a:	4691                	li	a3,4
  5c:	4611                	li	a2,4
  5e:	458d                	li	a1,3
  60:	4501                	li	a0,0
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	sec_eng_pka0_mrem
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL72+0xe>

0000006a <.LVL73>:
  6a:	8622                	mv	a2,s0
  6c:	46a1                	li	a3,8
  6e:	4591                	li	a1,4
  70:	450d                	li	a0,3
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	sec_eng_pka0_read_data
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL73+0x8>

0000007a <.LVL74>:
  7a:	4422                	lw	s0,8(sp)

0000007c <.LVL75>:
  7c:	40b2                	lw	ra,12(sp)
  7e:	4492                	lw	s1,4(sp)

00000080 <.LVL76>:
  80:	4681                	li	a3,0
  82:	4605                	li	a2,1
  84:	4591                	li	a1,4
  86:	4505                	li	a0,1
  88:	0141                	addi	sp,sp,16
  8a:	00000317          	auipc	t1,0x0
			8a: R_RISCV_CALL	sec_eng_pka0_clir
			8a: R_RISCV_RELAX	*ABS*
  8e:	00030067          	jr	t1 # 8a <.LVL76+0xa>

Disassembly of section .text.pka_point_double.constprop.2:

00000000 <pka_point_double.constprop.2>:
   0:	7179                	addi	sp,sp,-48
   2:	01f10593          	addi	a1,sp,31
   6:	d04a                	sw	s2,32(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	892a                	mv	s2,a0
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	pka_point_inf_check.constprop.7
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <pka_point_double.constprop.2+0x10>

00000018 <.LVL79>:
  18:	01f14783          	lbu	a5,31(sp)
  1c:	26079063          	bnez	a5,27c <.L15>
			1c: R_RISCV_BRANCH	.L15

00000020 <.LBB172>:
  20:	488d                	li	a7,3
  22:	884a                	mv	a6,s2
  24:	478d                	li	a5,3
  26:	874a                	mv	a4,s2
  28:	468d                	li	a3,3
  2a:	4635                	li	a2,13
  2c:	458d                	li	a1,3
  2e:	4501                	li	a0,0
  30:	c002                	sw	zero,0(sp)
  32:	00290413          	addi	s0,s2,2
  36:	0ff47413          	andi	s0,s0,255
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	sec_eng_pka0_mmul
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBB172+0x1a>

00000042 <.LVL81>:
  42:	488d                	li	a7,3
  44:	8822                	mv	a6,s0
  46:	478d                	li	a5,3
  48:	8722                	mv	a4,s0
  4a:	468d                	li	a3,3
  4c:	4639                	li	a2,14
  4e:	458d                	li	a1,3
  50:	4501                	li	a0,0
  52:	c002                	sw	zero,0(sp)
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	sec_eng_pka0_mmul
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL81+0x12>

0000005c <.LVL82>:
  5c:	488d                	li	a7,3
  5e:	4839                	li	a6,14
  60:	478d                	li	a5,3
  62:	4735                	li	a4,13
  64:	468d                	li	a3,3
  66:	4635                	li	a2,13
  68:	458d                	li	a1,3
  6a:	4501                	li	a0,0
  6c:	c002                	sw	zero,0(sp)
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	sec_eng_pka0_msub
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL82+0x12>

00000076 <.LVL83>:
  76:	488d                	li	a7,3
  78:	4835                	li	a6,13
  7a:	478d                	li	a5,3
  7c:	4729                	li	a4,10
  7e:	468d                	li	a3,3
  80:	4635                	li	a2,13
  82:	458d                	li	a1,3
  84:	4501                	li	a0,0
  86:	c002                	sw	zero,0(sp)
  88:	00190493          	addi	s1,s2,1
  8c:	0ff4f493          	andi	s1,s1,255
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	sec_eng_pka0_mmul
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL83+0x1a>

00000098 <.LVL84>:
  98:	488d                	li	a7,3
  9a:	8822                	mv	a6,s0
  9c:	478d                	li	a5,3
  9e:	8726                	mv	a4,s1
  a0:	468d                	li	a3,3
  a2:	4639                	li	a2,14
  a4:	458d                	li	a1,3
  a6:	4501                	li	a0,0
  a8:	c002                	sw	zero,0(sp)
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	sec_eng_pka0_mmul
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LVL84+0x12>

000000b2 <.LVL85>:
  b2:	488d                	li	a7,3
  b4:	8826                	mv	a6,s1
  b6:	478d                	li	a5,3
  b8:	874a                	mv	a4,s2
  ba:	468d                	li	a3,3
  bc:	463d                	li	a2,15
  be:	458d                	li	a1,3
  c0:	4501                	li	a0,0
  c2:	c002                	sw	zero,0(sp)
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	sec_eng_pka0_mmul
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LVL85+0x12>

000000cc <.LVL86>:
  cc:	488d                	li	a7,3
  ce:	4835                	li	a6,13
  d0:	478d                	li	a5,3
  d2:	4735                	li	a4,13
  d4:	468d                	li	a3,3
  d6:	8622                	mv	a2,s0
  d8:	458d                	li	a1,3
  da:	4501                	li	a0,0
  dc:	c002                	sw	zero,0(sp)
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	sec_eng_pka0_mmul
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LVL86+0x12>

000000e6 <.LVL87>:
  e6:	488d                	li	a7,3
  e8:	4839                	li	a6,14
  ea:	478d                	li	a5,3
  ec:	473d                	li	a4,15
  ee:	468d                	li	a3,3
  f0:	463d                	li	a2,15
  f2:	458d                	li	a1,3
  f4:	4501                	li	a0,0
  f6:	c002                	sw	zero,0(sp)
  f8:	00000097          	auipc	ra,0x0
			f8: R_RISCV_CALL	sec_eng_pka0_mmul
			f8: R_RISCV_RELAX	*ABS*
  fc:	000080e7          	jalr	ra # f8 <.LVL87+0x12>

00000100 <.LVL88>:
 100:	488d                	li	a7,3
 102:	483d                	li	a6,15
 104:	478d                	li	a5,3
 106:	4731                	li	a4,12
 108:	468d                	li	a3,3
 10a:	864a                	mv	a2,s2
 10c:	458d                	li	a1,3
 10e:	4501                	li	a0,0
 110:	c002                	sw	zero,0(sp)
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	sec_eng_pka0_mmul
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.LVL88+0x12>

0000011a <.LVL89>:
 11a:	488d                	li	a7,3
 11c:	884a                	mv	a6,s2
 11e:	478d                	li	a5,3
 120:	8722                	mv	a4,s0
 122:	468d                	li	a3,3
 124:	8622                	mv	a2,s0
 126:	458d                	li	a1,3
 128:	4501                	li	a0,0
 12a:	c002                	sw	zero,0(sp)
 12c:	00000097          	auipc	ra,0x0
			12c: R_RISCV_CALL	sec_eng_pka0_msub
			12c: R_RISCV_RELAX	*ABS*
 130:	000080e7          	jalr	ra # 12c <.LVL89+0x12>

00000134 <.LVL90>:
 134:	488d                	li	a7,3
 136:	8822                	mv	a6,s0
 138:	478d                	li	a5,3
 13a:	4725                	li	a4,9
 13c:	468d                	li	a3,3
 13e:	864a                	mv	a2,s2
 140:	458d                	li	a1,3
 142:	4501                	li	a0,0
 144:	c002                	sw	zero,0(sp)
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	sec_eng_pka0_mmul
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.LVL90+0x12>

0000014e <.LVL91>:
 14e:	488d                	li	a7,3
 150:	4839                	li	a6,14
 152:	478d                	li	a5,3
 154:	874a                	mv	a4,s2
 156:	468d                	li	a3,3
 158:	864a                	mv	a2,s2
 15a:	458d                	li	a1,3
 15c:	4501                	li	a0,0
 15e:	c002                	sw	zero,0(sp)
 160:	00000097          	auipc	ra,0x0
			160: R_RISCV_CALL	sec_eng_pka0_mmul
			160: R_RISCV_RELAX	*ABS*
 164:	000080e7          	jalr	ra # 160 <.LVL91+0x12>

00000168 <.LVL92>:
 168:	488d                	li	a7,3
 16a:	483d                	li	a6,15
 16c:	478d                	li	a5,3
 16e:	472d                	li	a4,11
 170:	468d                	li	a3,3
 172:	463d                	li	a2,15
 174:	458d                	li	a1,3
 176:	4501                	li	a0,0
 178:	c002                	sw	zero,0(sp)
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	sec_eng_pka0_mmul
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.LVL92+0x12>

00000182 <.LVL93>:
 182:	488d                	li	a7,3
 184:	4839                	li	a6,14
 186:	478d                	li	a5,3
 188:	4739                	li	a4,14
 18a:	468d                	li	a3,3
 18c:	4641                	li	a2,16
 18e:	458d                	li	a1,3
 190:	4501                	li	a0,0
 192:	c002                	sw	zero,0(sp)
 194:	00000097          	auipc	ra,0x0
			194: R_RISCV_CALL	sec_eng_pka0_mmul
			194: R_RISCV_RELAX	*ABS*
 198:	000080e7          	jalr	ra # 194 <.LVL93+0x12>

0000019c <.LVL94>:
 19c:	488d                	li	a7,3
 19e:	8822                	mv	a6,s0
 1a0:	478d                	li	a5,3
 1a2:	473d                	li	a4,15
 1a4:	468d                	li	a3,3
 1a6:	463d                	li	a2,15
 1a8:	458d                	li	a1,3
 1aa:	4501                	li	a0,0
 1ac:	c002                	sw	zero,0(sp)
 1ae:	00000097          	auipc	ra,0x0
			1ae: R_RISCV_CALL	sec_eng_pka0_msub
			1ae: R_RISCV_RELAX	*ABS*
 1b2:	000080e7          	jalr	ra # 1ae <.LVL94+0x12>

000001b6 <.LVL95>:
 1b6:	488d                	li	a7,3
 1b8:	8826                	mv	a6,s1
 1ba:	478d                	li	a5,3
 1bc:	8726                	mv	a4,s1
 1be:	468d                	li	a3,3
 1c0:	8626                	mv	a2,s1
 1c2:	458d                	li	a1,3
 1c4:	4501                	li	a0,0
 1c6:	c002                	sw	zero,0(sp)
 1c8:	00000097          	auipc	ra,0x0
			1c8: R_RISCV_CALL	sec_eng_pka0_mmul
			1c8: R_RISCV_RELAX	*ABS*
 1cc:	000080e7          	jalr	ra # 1c8 <.LVL95+0x12>

000001d0 <.LVL96>:
 1d0:	488d                	li	a7,3
 1d2:	4835                	li	a6,13
 1d4:	478d                	li	a5,3
 1d6:	473d                	li	a4,15
 1d8:	468d                	li	a3,3
 1da:	463d                	li	a2,15
 1dc:	458d                	li	a1,3
 1de:	4501                	li	a0,0
 1e0:	c002                	sw	zero,0(sp)
 1e2:	00000097          	auipc	ra,0x0
			1e2: R_RISCV_CALL	sec_eng_pka0_mmul
			1e2: R_RISCV_RELAX	*ABS*
 1e6:	000080e7          	jalr	ra # 1e2 <.LVL96+0x12>

000001ea <.LVL97>:
 1ea:	488d                	li	a7,3
 1ec:	8826                	mv	a6,s1
 1ee:	478d                	li	a5,3
 1f0:	4731                	li	a4,12
 1f2:	468d                	li	a3,3
 1f4:	8626                	mv	a2,s1
 1f6:	458d                	li	a1,3
 1f8:	4501                	li	a0,0
 1fa:	c002                	sw	zero,0(sp)
 1fc:	00000097          	auipc	ra,0x0
			1fc: R_RISCV_CALL	sec_eng_pka0_mmul
			1fc: R_RISCV_RELAX	*ABS*
 200:	000080e7          	jalr	ra # 1fc <.LVL97+0x12>

00000204 <.LVL98>:
 204:	488d                	li	a7,3
 206:	4841                	li	a6,16
 208:	478d                	li	a5,3
 20a:	8726                	mv	a4,s1
 20c:	468d                	li	a3,3
 20e:	8626                	mv	a2,s1
 210:	458d                	li	a1,3
 212:	4501                	li	a0,0
 214:	c002                	sw	zero,0(sp)
 216:	00000097          	auipc	ra,0x0
			216: R_RISCV_CALL	sec_eng_pka0_mmul
			216: R_RISCV_RELAX	*ABS*
 21a:	000080e7          	jalr	ra # 216 <.LVL98+0x12>

0000021e <.LVL99>:
 21e:	488d                	li	a7,3
 220:	8826                	mv	a6,s1
 222:	478d                	li	a5,3
 224:	473d                	li	a4,15
 226:	468d                	li	a3,3
 228:	8626                	mv	a2,s1
 22a:	458d                	li	a1,3
 22c:	4501                	li	a0,0
 22e:	c002                	sw	zero,0(sp)
 230:	00000097          	auipc	ra,0x0
			230: R_RISCV_CALL	sec_eng_pka0_msub
			230: R_RISCV_RELAX	*ABS*
 234:	000080e7          	jalr	ra # 230 <.LVL99+0x12>

00000238 <.LVL100>:
 238:	488d                	li	a7,3
 23a:	4841                	li	a6,16
 23c:	478d                	li	a5,3
 23e:	4739                	li	a4,14
 240:	468d                	li	a3,3
 242:	8622                	mv	a2,s0
 244:	458d                	li	a1,3
 246:	4501                	li	a0,0
 248:	c002                	sw	zero,0(sp)
 24a:	00000097          	auipc	ra,0x0
			24a: R_RISCV_CALL	sec_eng_pka0_mmul
			24a: R_RISCV_RELAX	*ABS*
 24e:	000080e7          	jalr	ra # 24a <.LVL100+0x12>

00000252 <.LVL101>:
 252:	488d                	li	a7,3
 254:	8822                	mv	a6,s0
 256:	478d                	li	a5,3
 258:	4731                	li	a4,12
 25a:	468d                	li	a3,3
 25c:	8622                	mv	a2,s0
 25e:	458d                	li	a1,3
 260:	4505                	li	a0,1
 262:	c002                	sw	zero,0(sp)
 264:	00000097          	auipc	ra,0x0
			264: R_RISCV_CALL	sec_eng_pka0_mmul
			264: R_RISCV_RELAX	*ABS*
 268:	000080e7          	jalr	ra # 264 <.LVL101+0x12>

0000026c <.LVL102>:
 26c:	00000097          	auipc	ra,0x0
			26c: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			26c: R_RISCV_RELAX	*ABS*
 270:	000080e7          	jalr	ra # 26c <.LVL102>

00000274 <.LVL103>:
 274:	00000097          	auipc	ra,0x0
			274: R_RISCV_CALL	sec_eng_pka0_clear_int
			274: R_RISCV_RELAX	*ABS*
 278:	000080e7          	jalr	ra # 274 <.LVL103>

0000027c <.L15>:
 27c:	50b2                	lw	ra,44(sp)
 27e:	5422                	lw	s0,40(sp)
 280:	5492                	lw	s1,36(sp)
 282:	5902                	lw	s2,32(sp)
 284:	6145                	addi	sp,sp,48
 286:	8082                	ret

Disassembly of section .text.pka_addition_win.constprop.1:

00000000 <pka_addition_win.constprop.1>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	842e                	mv	s0,a1
   8:	84aa                	mv	s1,a0
   a:	85aa                	mv	a1,a0

0000000c <.LVL106>:
   c:	c84a                	sw	s2,16(sp)
   e:	4781                	li	a5,0
  10:	03900713          	li	a4,57
  14:	468d                	li	a3,3
  16:	4521                	li	a0,8

00000018 <.LVL107>:
  18:	8932                	mv	s2,a2
  1a:	4655                	li	a2,21

0000001c <.LVL108>:
  1c:	ce06                	sw	ra,28(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	sec_eng_pka0_pld
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL108+0x2>

00000026 <.LVL109>:
  26:	4781                	li	a5,0
  28:	03900713          	li	a4,57
  2c:	468d                	li	a3,3
  2e:	4659                	li	a2,22
  30:	02848593          	addi	a1,s1,40
  34:	4521                	li	a0,8
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	sec_eng_pka0_pld
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL109+0x10>

0000003e <.LVL110>:
  3e:	4781                	li	a5,0
  40:	03900713          	li	a4,57
  44:	468d                	li	a3,3
  46:	465d                	li	a2,23
  48:	05048593          	addi	a1,s1,80
  4c:	4521                	li	a0,8
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	sec_eng_pka0_pld
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL110+0x10>

00000056 <.LVL111>:
  56:	4781                	li	a5,0
  58:	03900713          	li	a4,57
  5c:	468d                	li	a3,3
  5e:	4661                	li	a2,24
  60:	85a2                	mv	a1,s0
  62:	4521                	li	a0,8
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	sec_eng_pka0_pld
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL111+0xe>

0000006c <.LVL112>:
  6c:	4781                	li	a5,0
  6e:	03900713          	li	a4,57
  72:	468d                	li	a3,3
  74:	4665                	li	a2,25
  76:	02840593          	addi	a1,s0,40
  7a:	4521                	li	a0,8
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	sec_eng_pka0_pld
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL112+0x10>

00000084 <.LVL113>:
  84:	4781                	li	a5,0
  86:	03900713          	li	a4,57
  8a:	468d                	li	a3,3
  8c:	4669                	li	a2,26
  8e:	05040593          	addi	a1,s0,80
  92:	4521                	li	a0,8
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	sec_eng_pka0_pld
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.LVL113+0x10>

0000009c <.LBB176>:
  9c:	00e10593          	addi	a1,sp,14

000000a0 <.LVL115>:
  a0:	4555                	li	a0,21
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	pka_point_inf_check.constprop.7
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL115+0x2>

000000aa <.LVL116>:
  aa:	00f10593          	addi	a1,sp,15

000000ae <.LVL117>:
  ae:	4561                	li	a0,24
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	pka_point_inf_check.constprop.7
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL117+0x2>

000000b8 <.LBE176>:
  b8:	00e14783          	lbu	a5,14(sp)
  bc:	4705                	li	a4,1
  be:	00e79d63          	bne	a5,a4,d8 <.L20>
			be: R_RISCV_BRANCH	.L20
  c2:	00f14783          	lbu	a5,15(sp)
  c6:	45e1                	li	a1,24
  c8:	c391                	beqz	a5,cc <.L24>
			c8: R_RISCV_RVC_BRANCH	.L24

000000ca <.L21>:
  ca:	4589                	li	a1,2

000000cc <.L24>:
  cc:	456d                	li	a0,27
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	pka_cp_x2_to_x1.constprop.5
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.L24+0x2>

000000d6 <.LVL119>:
  d6:	a821                	j	ee <.L22>
			d6: R_RISCV_RVC_JUMP	.L22

000000d8 <.L20>:
  d8:	00f14703          	lbu	a4,15(sp)
  dc:	8fd9                	or	a5,a5,a4
  de:	f7f5                	bnez	a5,ca <.L21>
			de: R_RISCV_RVC_BRANCH	.L21
  e0:	466d                	li	a2,27
  e2:	45e1                	li	a1,24
  e4:	4555                	li	a0,21
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	pka_point_addition.constprop.3
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.L20+0xe>

000000ee <.L22>:
  ee:	854a                	mv	a0,s2
  f0:	45ed                	li	a1,27
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	pka_read_result.constprop.4
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.L22+0x4>

000000fa <.LVL121>:
  fa:	40f2                	lw	ra,28(sp)
  fc:	4462                	lw	s0,24(sp)

000000fe <.LVL122>:
  fe:	44d2                	lw	s1,20(sp)

00000100 <.LVL123>:
 100:	4942                	lw	s2,16(sp)

00000102 <.LVL124>:
 102:	6105                	addi	sp,sp,32
 104:	8082                	ret

Disassembly of section .text.ecc_multiplication_event_handler:

00000000 <ecc_multiplication_event_handler>:
   0:	7175                	addi	sp,sp,-144
   2:	4501                	li	a0,0
   4:	c326                	sw	s1,132(sp)
   6:	c706                	sw	ra,140(sp)
   8:	c522                	sw	s0,136(sp)
   a:	c14a                	sw	s2,128(sp)
   c:	dece                	sw	s3,124(sp)
   e:	dcd2                	sw	s4,120(sp)
  10:	000004b7          	lui	s1,0x0
			10: R_RISCV_HI20	ecc_env
			10: R_RISCV_RELAX	*ABS*
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_event_clear
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <ecc_multiplication_event_handler+0x14>

0000001c <.LVL125>:
  1c:	00048513          	mv	a0,s1
			1c: R_RISCV_LO12_I	ecc_env
			1c: R_RISCV_RELAX	*ABS*
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ble_co_list_pop_front
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL125+0x4>

00000028 <.LVL126>:
  28:	16050d63          	beqz	a0,1a2 <.L26>
			28: R_RISCV_BRANCH	.L26
  2c:	415c                	lw	a5,4(a0)
  2e:	842a                	mv	s0,a0
  30:	2c078563          	beqz	a5,2fa <.L27>
			30: R_RISCV_BRANCH	.L27

00000034 <.LBB191>:
  34:	12c54903          	lbu	s2,300(a0)
  38:	4685                	li	a3,1
  3a:	12852703          	lw	a4,296(a0)

0000003e <.LVL128>:
  3e:	fff90793          	addi	a5,s2,-1
  42:	0ff7f793          	andi	a5,a5,255
  46:	16f6ee63          	bltu	a3,a5,1c2 <.L28>
			46: R_RISCV_BRANCH	.L28
  4a:	12d90263          	beq	s2,a3,16e <.L50>
			4a: R_RISCV_BRANCH	.L50
  4e:	13052583          	lw	a1,304(a0)

00000052 <.L29>:
  52:	03f00793          	li	a5,63
  56:	8f99                	sub	a5,a5,a4
  58:	07f00693          	li	a3,127
  5c:	8e99                	sub	a3,a3,a4
  5e:	8395                	srli	a5,a5,0x5
  60:	03c78793          	addi	a5,a5,60
  64:	8295                	srli	a3,a3,0x5
  66:	078a                	slli	a5,a5,0x2
  68:	03c68693          	addi	a3,a3,60
  6c:	97a2                	add	a5,a5,s0
  6e:	068a                	slli	a3,a3,0x2
  70:	479c                	lw	a5,8(a5)
  72:	96a2                	add	a3,a3,s0
  74:	4694                	lw	a3,8(a3)
  76:	01f77613          	andi	a2,a4,31
  7a:	00c7d7b3          	srl	a5,a5,a2
  7e:	00c6d6b3          	srl	a3,a3,a2
  82:	8b85                	andi	a5,a5,1
  84:	8a85                	andi	a3,a3,1
  86:	0786                	slli	a5,a5,0x1
  88:	97b6                	add	a5,a5,a3
  8a:	0bf00693          	li	a3,191
  8e:	8e99                	sub	a3,a3,a4
  90:	8295                	srli	a3,a3,0x5
  92:	03c68693          	addi	a3,a3,60
  96:	068a                	slli	a3,a3,0x2
  98:	96a2                	add	a3,a3,s0
  9a:	4694                	lw	a3,8(a3)
  9c:	0786                	slli	a5,a5,0x1
  9e:	00c6d6b3          	srl	a3,a3,a2
  a2:	8a85                	andi	a3,a3,1
  a4:	97b6                	add	a5,a5,a3
  a6:	0ff00693          	li	a3,255
  aa:	40e68733          	sub	a4,a3,a4

000000ae <.LVL130>:
  ae:	8315                	srli	a4,a4,0x5
  b0:	03c70713          	addi	a4,a4,60
  b4:	070a                	slli	a4,a4,0x2
  b6:	9722                	add	a4,a4,s0
  b8:	4718                	lw	a4,8(a4)
  ba:	0786                	slli	a5,a5,0x1
  bc:	00c75633          	srl	a2,a4,a2
  c0:	8a05                	andi	a2,a2,1
  c2:	97b2                	add	a5,a5,a2

000000c4 <.LVL131>:
  c4:	c7d9                	beqz	a5,152 <.L31>
			c4: R_RISCV_RVC_BRANCH	.L31
  c6:	07800713          	li	a4,120
  ca:	02e787b3          	mul	a5,a5,a4

000000ce <.LVL132>:
  ce:	468d                	li	a3,3
  d0:	03900713          	li	a4,57
  d4:	4655                	li	a2,21

000000d6 <.LVL133>:
  d6:	4521                	li	a0,8

000000d8 <.LVL134>:
  d8:	f8878793          	addi	a5,a5,-120
  dc:	00f58933          	add	s2,a1,a5
  e0:	85ca                	mv	a1,s2

000000e2 <.LVL135>:
  e2:	4781                	li	a5,0
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	sec_eng_pka0_pld
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.LVL135+0x2>

000000ec <.LVL136>:
  ec:	4781                	li	a5,0
  ee:	03900713          	li	a4,57
  f2:	468d                	li	a3,3
  f4:	4659                	li	a2,22
  f6:	02890593          	addi	a1,s2,40
  fa:	4521                	li	a0,8
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	sec_eng_pka0_pld
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL136+0x10>

00000104 <.LVL137>:
 104:	4781                	li	a5,0
 106:	03900713          	li	a4,57
 10a:	468d                	li	a3,3
 10c:	465d                	li	a2,23
 10e:	05090593          	addi	a1,s2,80
 112:	4521                	li	a0,8
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	sec_eng_pka0_pld
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.LVL137+0x10>

0000011c <.LBB193>:
 11c:	01f10593          	addi	a1,sp,31

00000120 <.LVL139>:
 120:	4509                	li	a0,2
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	pka_point_inf_check.constprop.7
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.LVL139+0x2>

0000012a <.LVL140>:
 12a:	100c                	addi	a1,sp,32

0000012c <.LVL141>:
 12c:	4555                	li	a0,21
 12e:	00000097          	auipc	ra,0x0
			12e: R_RISCV_CALL	pka_point_inf_check.constprop.7
			12e: R_RISCV_RELAX	*ABS*
 132:	000080e7          	jalr	ra # 12e <.LVL141+0x2>

00000136 <.LBE193>:
 136:	01f14783          	lbu	a5,31(sp)
 13a:	4705                	li	a4,1
 13c:	02e79e63          	bne	a5,a4,178 <.L32>
			13c: R_RISCV_BRANCH	.L32
 140:	02014783          	lbu	a5,32(sp)
 144:	e799                	bnez	a5,152 <.L31>
			144: R_RISCV_RVC_BRANCH	.L31
 146:	45d5                	li	a1,21
 148:	4509                	li	a0,2
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	pka_cp_x2_to_x1.constprop.5
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LBE193+0x14>

00000152 <.L31>:
 152:	12842783          	lw	a5,296(s0)
 156:	cf8d                	beqz	a5,190 <.L34>
			156: R_RISCV_RVC_BRANCH	.L34
 158:	4509                	li	a0,2
 15a:	00000097          	auipc	ra,0x0
			15a: R_RISCV_CALL	pka_point_double.constprop.2
			15a: R_RISCV_RELAX	*ABS*
 15e:	000080e7          	jalr	ra # 15a <.L31+0x8>

00000162 <.LVL144>:
 162:	12842783          	lw	a5,296(s0)
 166:	17fd                	addi	a5,a5,-1

00000168 <.L60>:
 168:	12f42423          	sw	a5,296(s0)
 16c:	a025                	j	194 <.L35>
			16c: R_RISCV_RVC_JUMP	.L35

0000016e <.L50>:
 16e:	000005b7          	lui	a1,0x0
			16e: R_RISCV_HI20	.LANCHOR2
			16e: R_RISCV_RELAX	*ABS*
 172:	00058593          	mv	a1,a1
			172: R_RISCV_LO12_I	.LANCHOR2
			172: R_RISCV_RELAX	*ABS*
 176:	bdf1                	j	52 <.L29>
			176: R_RISCV_RVC_JUMP	.L29

00000178 <.L32>:
 178:	02014703          	lbu	a4,32(sp)
 17c:	8fd9                	or	a5,a5,a4
 17e:	fbf1                	bnez	a5,152 <.L31>
			17e: R_RISCV_RVC_BRANCH	.L31
 180:	4609                	li	a2,2
 182:	45d5                	li	a1,21
 184:	4509                	li	a0,2
 186:	00000097          	auipc	ra,0x0
			186: R_RISCV_CALL	pka_point_addition.constprop.3
			186: R_RISCV_RELAX	*ABS*
 18a:	000080e7          	jalr	ra # 186 <.L32+0xe>

0000018e <.LVL147>:
 18e:	b7d1                	j	152 <.L31>
			18e: R_RISCV_RVC_JUMP	.L31

00000190 <.L34>:
 190:	00042223          	sw	zero,4(s0)

00000194 <.L35>:
 194:	85a2                	mv	a1,s0
 196:	00048513          	mv	a0,s1
			196: R_RISCV_LO12_I	ecc_env
			196: R_RISCV_RELAX	*ABS*
 19a:	00000097          	auipc	ra,0x0
			19a: R_RISCV_CALL	ble_co_list_push_back
			19a: R_RISCV_RELAX	*ABS*
 19e:	000080e7          	jalr	ra # 19a <.L35+0x6>

000001a2 <.L26>:
 1a2:	0004a783          	lw	a5,0(s1) # 0 <ecc_multiplication_event_handler>
			1a2: R_RISCV_LO12_I	ecc_env
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	c791                	beqz	a5,1b2 <.L25>
			1a6: R_RISCV_RVC_BRANCH	.L25
 1a8:	4501                	li	a0,0
 1aa:	00000097          	auipc	ra,0x0
			1aa: R_RISCV_CALL	ble_ke_event_set
			1aa: R_RISCV_RELAX	*ABS*
 1ae:	000080e7          	jalr	ra # 1aa <.L26+0x8>

000001b2 <.L25>:
 1b2:	40ba                	lw	ra,140(sp)
 1b4:	442a                	lw	s0,136(sp)
 1b6:	449a                	lw	s1,132(sp)
 1b8:	490a                	lw	s2,128(sp)
 1ba:	59f6                	lw	s3,124(sp)
 1bc:	5a66                	lw	s4,120(sp)
 1be:	6149                	addi	sp,sp,144
 1c0:	8082                	ret

000001c2 <.L28>:
 1c2:	478d                	li	a5,3
 1c4:	06f91763          	bne	s2,a5,232 <.L36>
			1c4: R_RISCV_BRANCH	.L36
 1c8:	4515                	li	a0,5
 1ca:	00000097          	auipc	ra,0x0
			1ca: R_RISCV_CALL	pka_point_double.constprop.2
			1ca: R_RISCV_RELAX	*ABS*
 1ce:	000080e7          	jalr	ra # 1ca <.L28+0x8>

000001d2 <.LVL152>:
 1d2:	12842783          	lw	a5,296(s0)
 1d6:	04000713          	li	a4,64
 1da:	0785                	addi	a5,a5,1
 1dc:	12f42423          	sw	a5,296(s0)
 1e0:	00e79c63          	bne	a5,a4,1f8 <.L37>
			1e0: R_RISCV_BRANCH	.L37
 1e4:	13042503          	lw	a0,304(s0)
 1e8:	4595                	li	a1,5
 1ea:	07850513          	addi	a0,a0,120

000001ee <.L61>:
 1ee:	00000097          	auipc	ra,0x0
			1ee: R_RISCV_CALL	pka_read_result.constprop.4
			1ee: R_RISCV_RELAX	*ABS*
 1f2:	000080e7          	jalr	ra # 1ee <.L61>

000001f6 <.LVL153>:
 1f6:	bf79                	j	194 <.L35>
			1f6: R_RISCV_RVC_JUMP	.L35

000001f8 <.L37>:
 1f8:	08000713          	li	a4,128
 1fc:	00e79863          	bne	a5,a4,20c <.L38>
			1fc: R_RISCV_BRANCH	.L38
 200:	13042503          	lw	a0,304(s0)
 204:	4595                	li	a1,5
 206:	16850513          	addi	a0,a0,360
 20a:	b7d5                	j	1ee <.L61>
			20a: R_RISCV_RVC_JUMP	.L61

0000020c <.L38>:
 20c:	0c000713          	li	a4,192
 210:	f8e792e3          	bne	a5,a4,194 <.L35>
			210: R_RISCV_BRANCH	.L35
 214:	13042503          	lw	a0,304(s0)
 218:	4595                	li	a1,5
 21a:	34850513          	addi	a0,a0,840
 21e:	00000097          	auipc	ra,0x0
			21e: R_RISCV_CALL	pka_read_result.constprop.4
			21e: R_RISCV_RELAX	*ABS*
 222:	000080e7          	jalr	ra # 21e <.L38+0x12>

00000226 <.LVL154>:
 226:	4791                	li	a5,4
 228:	12f40623          	sb	a5,300(s0)
 22c:	13242423          	sw	s2,296(s0)
 230:	b795                	j	194 <.L35>
			230: R_RISCV_RVC_JUMP	.L35

00000232 <.L36>:
 232:	4691                	li	a3,4
 234:	f6d910e3          	bne	s2,a3,194 <.L35>
			234: R_RISCV_BRANCH	.L35
 238:	00f71e63          	bne	a4,a5,254 <.L41>
			238: R_RISCV_BRANCH	.L41
 23c:	13052503          	lw	a0,304(a0)
 240:	0f050613          	addi	a2,a0,240
 244:	07850593          	addi	a1,a0,120
 248:	00000097          	auipc	ra,0x0
			248: R_RISCV_CALL	pka_addition_win.constprop.1
			248: R_RISCV_RELAX	*ABS*
 24c:	000080e7          	jalr	ra # 248 <.L36+0x16>

00000250 <.LVL156>:
 250:	4795                	li	a5,5
 252:	bf19                	j	168 <.L60>
			252: R_RISCV_RVC_JUMP	.L60

00000254 <.L41>:
 254:	4795                	li	a5,5
 256:	00f71e63          	bne	a4,a5,272 <.L42>
			256: R_RISCV_BRANCH	.L42
 25a:	13052503          	lw	a0,304(a0)
 25e:	1e050613          	addi	a2,a0,480
 262:	16850593          	addi	a1,a0,360
 266:	00000097          	auipc	ra,0x0
			266: R_RISCV_CALL	pka_addition_win.constprop.1
			266: R_RISCV_RELAX	*ABS*
 26a:	000080e7          	jalr	ra # 266 <.L41+0x12>

0000026e <.LVL158>:
 26e:	4799                	li	a5,6
 270:	bde5                	j	168 <.L60>
			270: R_RISCV_RVC_JUMP	.L60

00000272 <.L42>:
 272:	4799                	li	a5,6
 274:	02f71063          	bne	a4,a5,294 <.L43>
			274: R_RISCV_BRANCH	.L43
 278:	13052503          	lw	a0,304(a0)
 27c:	25850613          	addi	a2,a0,600
 280:	16850593          	addi	a1,a0,360
 284:	07850513          	addi	a0,a0,120
 288:	00000097          	auipc	ra,0x0
			288: R_RISCV_CALL	pka_addition_win.constprop.1
			288: R_RISCV_RELAX	*ABS*
 28c:	000080e7          	jalr	ra # 288 <.L42+0x16>

00000290 <.LVL160>:
 290:	479d                	li	a5,7
 292:	bdd9                	j	168 <.L60>
			292: R_RISCV_RVC_JUMP	.L60

00000294 <.L43>:
 294:	469d                	li	a3,7
 296:	00d71e63          	bne	a4,a3,2b2 <.L44>
			296: R_RISCV_BRANCH	.L44
 29a:	13052503          	lw	a0,304(a0)
 29e:	2d050613          	addi	a2,a0,720
 2a2:	25850593          	addi	a1,a0,600
 2a6:	00000097          	auipc	ra,0x0
			2a6: R_RISCV_CALL	pka_addition_win.constprop.1
			2a6: R_RISCV_RELAX	*ABS*
 2aa:	000080e7          	jalr	ra # 2a6 <.L43+0x12>

000002ae <.LVL162>:
 2ae:	47a5                	li	a5,9
 2b0:	bd65                	j	168 <.L60>
			2b0: R_RISCV_RVC_JUMP	.L60

000002b2 <.L44>:
 2b2:	ff770693          	addi	a3,a4,-9
 2b6:	ecd7efe3          	bltu	a5,a3,194 <.L35>
			2b6: R_RISCV_BRANCH	.L35
 2ba:	07800593          	li	a1,120
 2be:	02b70733          	mul	a4,a4,a1

000002c2 <.LVL164>:
 2c2:	13052503          	lw	a0,304(a0)
 2c6:	f8870613          	addi	a2,a4,-120
 2ca:	bc870713          	addi	a4,a4,-1080
 2ce:	00e505b3          	add	a1,a0,a4
 2d2:	962a                	add	a2,a2,a0
 2d4:	34850513          	addi	a0,a0,840
 2d8:	00000097          	auipc	ra,0x0
			2d8: R_RISCV_CALL	pka_addition_win.constprop.1
			2d8: R_RISCV_RELAX	*ABS*
 2dc:	000080e7          	jalr	ra # 2d8 <.LVL164+0x16>

000002e0 <.LVL165>:
 2e0:	12842783          	lw	a5,296(s0)
 2e4:	473d                	li	a4,15
 2e6:	00e79863          	bne	a5,a4,2f6 <.L45>
			2e6: R_RISCV_BRANCH	.L45
 2ea:	4789                	li	a5,2
 2ec:	12f40623          	sb	a5,300(s0)
 2f0:	03f00793          	li	a5,63
 2f4:	bd95                	j	168 <.L60>
			2f4: R_RISCV_RVC_JUMP	.L60

000002f6 <.L45>:
 2f6:	0785                	addi	a5,a5,1
 2f8:	bd85                	j	168 <.L60>
			2f8: R_RISCV_RVC_JUMP	.L60

000002fa <.L27>:
 2fa:	12255583          	lhu	a1,290(a0)
 2fe:	0ff00793          	li	a5,255
 302:	eaf580e3          	beq	a1,a5,1a2 <.L26>
			302: R_RISCV_BRANCH	.L26

00000306 <.LBB199>:
 306:	12055503          	lhu	a0,288(a0)
 30a:	04000693          	li	a3,64
 30e:	0ff00613          	li	a2,255
 312:	00000097          	auipc	ra,0x0
			312: R_RISCV_CALL	ble_ke_msg_alloc
			312: R_RISCV_RELAX	*ABS*
 316:	000080e7          	jalr	ra # 312 <.LBB199+0xc>

0000031a <.LVL167>:
 31a:	892a                	mv	s2,a0

0000031c <.LVL168>:
 31c:	4509                	li	a0,2

0000031e <.LVL169>:
 31e:	00000097          	auipc	ra,0x0
			31e: R_RISCV_CALL	Mont2GF
			31e: R_RISCV_RELAX	*ABS*
 322:	000080e7          	jalr	ra # 31e <.LVL169>

00000326 <.LVL170>:
 326:	450d                	li	a0,3
 328:	00000097          	auipc	ra,0x0
			328: R_RISCV_CALL	Mont2GF
			328: R_RISCV_RELAX	*ABS*
 32c:	000080e7          	jalr	ra # 328 <.LVL170+0x2>

00000330 <.LBB200>:
 330:	000009b7          	lui	s3,0x0
			330: R_RISCV_HI20	ble_memset_ptr
			330: R_RISCV_RELAX	*ABS*
 334:	0009a783          	lw	a5,0(s3) # 0 <ecc_multiplication_event_handler>
			334: R_RISCV_LO12_I	ble_memset_ptr
			334: R_RISCV_RELAX	*ABS*
 338:	02000613          	li	a2,32
 33c:	4581                	li	a1,0
 33e:	1008                	addi	a0,sp,32
 340:	9782                	jalr	a5

00000342 <.LVL172>:
 342:	4781                	li	a5,0
 344:	03900713          	li	a4,57
 348:	468d                	li	a3,3
 34a:	4635                	li	a2,13
 34c:	100c                	addi	a1,sp,32
 34e:	4521                	li	a0,8
 350:	4a09                	li	s4,2
 352:	de52                	sw	s4,60(sp)
 354:	00000097          	auipc	ra,0x0
			354: R_RISCV_CALL	sec_eng_pka0_pld
			354: R_RISCV_RELAX	*ABS*
 358:	000080e7          	jalr	ra # 354 <.LVL172+0x12>

0000035c <.LVL173>:
 35c:	4835                	li	a6,13
 35e:	478d                	li	a5,3
 360:	4701                	li	a4,0
 362:	468d                	li	a3,3
 364:	4635                	li	a2,13
 366:	458d                	li	a1,3
 368:	4501                	li	a0,0
 36a:	00000097          	auipc	ra,0x0
			36a: R_RISCV_CALL	sec_eng_pka0_lsub
			36a: R_RISCV_RELAX	*ABS*
 36e:	000080e7          	jalr	ra # 36a <.LVL173+0xe>

00000372 <.LVL174>:
 372:	488d                	li	a7,3
 374:	4835                	li	a6,13
 376:	4711                	li	a4,4
 378:	468d                	li	a3,3
 37a:	478d                	li	a5,3
 37c:	4639                	li	a2,14
 37e:	458d                	li	a1,3
 380:	4505                	li	a0,1
 382:	c002                	sw	zero,0(sp)
 384:	00000097          	auipc	ra,0x0
			384: R_RISCV_CALL	sec_eng_pka0_mexp
			384: R_RISCV_RELAX	*ABS*
 388:	000080e7          	jalr	ra # 384 <.LVL174+0x12>

0000038c <.LVL175>:
 38c:	00000097          	auipc	ra,0x0
			38c: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			38c: R_RISCV_RELAX	*ABS*
 390:	000080e7          	jalr	ra # 38c <.LVL175>

00000394 <.LVL176>:
 394:	00000097          	auipc	ra,0x0
			394: R_RISCV_CALL	sec_eng_pka0_clear_int
			394: R_RISCV_RELAX	*ABS*
 398:	000080e7          	jalr	ra # 394 <.LVL176>

0000039c <.LVL177>:
 39c:	4539                	li	a0,14
 39e:	00000097          	auipc	ra,0x0
			39e: R_RISCV_CALL	Mont2GF
			39e: R_RISCV_RELAX	*ABS*
 3a2:	000080e7          	jalr	ra # 39e <.LVL177+0x2>

000003a6 <.LBE200>:
 3a6:	4509                	li	a0,2
 3a8:	00000097          	auipc	ra,0x0
			3a8: R_RISCV_CALL	getFinalPoint
			3a8: R_RISCV_RELAX	*ABS*
 3ac:	000080e7          	jalr	ra # 3a8 <.LBE200+0x2>

000003b0 <.LVL179>:
 3b0:	450d                	li	a0,3
 3b2:	00000097          	auipc	ra,0x0
			3b2: R_RISCV_CALL	getFinalPoint
			3b2: R_RISCV_RELAX	*ABS*
 3b6:	000080e7          	jalr	ra # 3b2 <.LVL179+0x2>

000003ba <.LBB202>:
 3ba:	0009a783          	lw	a5,0(s3)
			3ba: R_RISCV_LO12_I	ble_memset_ptr
			3ba: R_RISCV_RELAX	*ABS*
 3be:	02000613          	li	a2,32
 3c2:	4581                	li	a1,0
 3c4:	1008                	addi	a0,sp,32

000003c6 <.LVL181>:
 3c6:	9782                	jalr	a5

000003c8 <.LBB205>:
 3c8:	0009a783          	lw	a5,0(s3)
			3c8: R_RISCV_LO12_I	ble_memset_ptr
			3c8: R_RISCV_RELAX	*ABS*
 3cc:	02000613          	li	a2,32
 3d0:	4581                	li	a1,0

000003d2 <.LBB209>:
 3d2:	c082                	sw	zero,64(sp)
 3d4:	c282                	sw	zero,68(sp)

000003d6 <.LBB210>:
 3d6:	00a8                	addi	a0,sp,72

000003d8 <.LVL184>:
 3d8:	9782                	jalr	a5

000003da <.LBE210>:
 3da:	46a1                	li	a3,8
 3dc:	1010                	addi	a2,sp,32
 3de:	4589                	li	a1,2
 3e0:	450d                	li	a0,3

000003e2 <.LBB211>:
 3e2:	d482                	sw	zero,104(sp)
 3e4:	d682                	sw	zero,108(sp)

000003e6 <.LBE211>:
 3e6:	00000097          	auipc	ra,0x0
			3e6: R_RISCV_CALL	sec_eng_pka0_read_data
			3e6: R_RISCV_RELAX	*ABS*
 3ea:	000080e7          	jalr	ra # 3e6 <.LBE211>

000003ee <.LVL187>:
 3ee:	46a1                	li	a3,8
 3f0:	00b0                	addi	a2,sp,72
 3f2:	458d                	li	a1,3
 3f4:	450d                	li	a0,3
 3f6:	00000097          	auipc	ra,0x0
			3f6: R_RISCV_CALL	sec_eng_pka0_read_data
			3f6: R_RISCV_RELAX	*ABS*
 3fa:	000080e7          	jalr	ra # 3f6 <.LVL187+0x8>

000003fe <.LVL188>:
 3fe:	12c44783          	lbu	a5,300(s0)
 402:	01479a63          	bne	a5,s4,416 <.L46>
			402: R_RISCV_BRANCH	.L46
 406:	13042503          	lw	a0,304(s0)
 40a:	00000097          	auipc	ra,0x0
			40a: R_RISCV_CALL	ble_ke_free
			40a: R_RISCV_RELAX	*ABS*
 40e:	000080e7          	jalr	ra # 40a <.LVL188+0xc>

00000412 <.LVL189>:
 412:	12042823          	sw	zero,304(s0)

00000416 <.L46>:
 416:	8522                	mv	a0,s0
 418:	00000097          	auipc	ra,0x0
			418: R_RISCV_CALL	ble_ke_free
			418: R_RISCV_RELAX	*ABS*
 41c:	000080e7          	jalr	ra # 418 <.L46+0x2>

00000420 <.LVL190>:
 420:	101c                	addi	a5,sp,32
 422:	01c90713          	addi	a4,s2,28

00000426 <.L47>:
 426:	0037c683          	lbu	a3,3(a5)
 42a:	0791                	addi	a5,a5,4

0000042c <.LVL192>:
 42c:	00d701a3          	sb	a3,3(a4)
 430:	ffe7d683          	lhu	a3,-2(a5)
 434:	00d70123          	sb	a3,2(a4)
 438:	ffc7a683          	lw	a3,-4(a5)
 43c:	82a1                	srli	a3,a3,0x8
 43e:	00d700a3          	sb	a3,1(a4)
 442:	ffc7a683          	lw	a3,-4(a5)
 446:	00d70023          	sb	a3,0(a4)

0000044a <.LVL193>:
 44a:	ffc70693          	addi	a3,a4,-4
 44e:	04e91263          	bne	s2,a4,492 <.L51>
			44e: R_RISCV_BRANCH	.L51
 452:	00bc                	addi	a5,sp,72
 454:	03c90713          	addi	a4,s2,60
 458:	01c90613          	addi	a2,s2,28

0000045c <.L48>:
 45c:	0037c683          	lbu	a3,3(a5)
 460:	1771                	addi	a4,a4,-4
 462:	0791                	addi	a5,a5,4

00000464 <.LVL195>:
 464:	00d703a3          	sb	a3,7(a4)
 468:	ffe7d683          	lhu	a3,-2(a5)
 46c:	00d70323          	sb	a3,6(a4)
 470:	ffc7a683          	lw	a3,-4(a5)
 474:	82a1                	srli	a3,a3,0x8
 476:	00d702a3          	sb	a3,5(a4)
 47a:	ffc7a683          	lw	a3,-4(a5)
 47e:	00d70223          	sb	a3,4(a4)

00000482 <.LVL196>:
 482:	fcc71de3          	bne	a4,a2,45c <.L48>
			482: R_RISCV_BRANCH	.L48
 486:	854a                	mv	a0,s2
 488:	00000097          	auipc	ra,0x0
			488: R_RISCV_CALL	ble_ke_msg_send
			488: R_RISCV_RELAX	*ABS*
 48c:	000080e7          	jalr	ra # 488 <.LVL196+0x6>

00000490 <.LVL197>:
 490:	bb09                	j	1a2 <.L26>
			490: R_RISCV_RVC_JUMP	.L26

00000492 <.L51>:
 492:	8736                	mv	a4,a3
 494:	bf49                	j	426 <.L47>
			494: R_RISCV_RVC_JUMP	.L47

Disassembly of section .text.notEqual256:

00000000 <notEqual256>:
   0:	4781                	li	a5,0
   2:	02000613          	li	a2,32

00000006 <.L64>:
   6:	00f506b3          	add	a3,a0,a5
   a:	00f58733          	add	a4,a1,a5
   e:	4294                	lw	a3,0(a3)
  10:	4318                	lw	a4,0(a4)
  12:	00e69763          	bne	a3,a4,20 <.L65>
			12: R_RISCV_BRANCH	.L65
  16:	0791                	addi	a5,a5,4
  18:	fec797e3          	bne	a5,a2,6 <.L64>
			18: R_RISCV_BRANCH	.L64
  1c:	4501                	li	a0,0

0000001e <.LVL200>:
  1e:	8082                	ret

00000020 <.L65>:
  20:	4505                	li	a0,1

00000022 <.LVL202>:
  22:	8082                	ret

Disassembly of section .text.bigHexInversion256:

00000000 <bigHexInversion256>:
   0:	7155                	addi	sp,sp,-208
   2:	c1ca                	sw	s2,192(sp)

00000004 <.LBB212>:
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	00092783          	lw	a5,0(s2) # 0 <bigHexInversion256>
			8: R_RISCV_LO12_I	ble_memset_ptr
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE212>:
   c:	c786                	sw	ra,204(sp)
   e:	c5a2                	sw	s0,200(sp)
  10:	c3a6                	sw	s1,196(sp)
  12:	df4e                	sw	s3,188(sp)
  14:	dd52                	sw	s4,184(sp)
  16:	db56                	sw	s5,180(sp)
  18:	d95a                	sw	s6,176(sp)
  1a:	d75e                	sw	s7,172(sp)
  1c:	842a                	mv	s0,a0
  1e:	02052223          	sw	zero,36(a0)

00000022 <.LBB217>:
  22:	02000613          	li	a2,32

00000026 <.LBE217>:
  26:	84ae                	mv	s1,a1

00000028 <.LBB218>:
  28:	0888                	addi	a0,sp,80

0000002a <.LVL205>:
  2a:	4581                	li	a1,0

0000002c <.LVL206>:
  2c:	9782                	jalr	a5

0000002e <.LBB219>:
  2e:	00092783          	lw	a5,0(s2)
			2e: R_RISCV_LO12_I	ble_memset_ptr
			2e: R_RISCV_RELAX	*ABS*
  32:	02000613          	li	a2,32
  36:	4581                	li	a1,0

00000038 <.LBB223>:
  38:	d882                	sw	zero,112(sp)
  3a:	da82                	sw	zero,116(sp)

0000003c <.LBB224>:
  3c:	18a8                	addi	a0,sp,120

0000003e <.LVL209>:
  3e:	9782                	jalr	a5

00000040 <.LBB225>:
  40:	00000937          	lui	s2,0x0
			40: R_RISCV_HI20	ble_memcpy_ptr
			40: R_RISCV_RELAX	*ABS*
  44:	00092783          	lw	a5,0(s2) # 0 <bigHexInversion256>
			44: R_RISCV_LO12_I	ble_memcpy_ptr
			44: R_RISCV_RELAX	*ABS*
  48:	85a2                	mv	a1,s0
  4a:	02000613          	li	a2,32

0000004e <.LBB230>:
  4e:	cd02                	sw	zero,152(sp)
  50:	cf02                	sw	zero,156(sp)

00000052 <.LBB231>:
  52:	850a                	mv	a0,sp
  54:	9782                	jalr	a5

00000056 <.LVL212>:
  56:	501c                	lw	a5,32(s0)

00000058 <.LBB232>:
  58:	000009b7          	lui	s3,0x0
			58: R_RISCV_HI20	.LANCHOR1
			58: R_RISCV_RELAX	*ABS*
  5c:	02000613          	li	a2,32

00000060 <.LBB238>:
  60:	d03e                	sw	a5,32(sp)
  62:	505c                	lw	a5,36(s0)

00000064 <.LBB239>:
  64:	00098593          	mv	a1,s3
			64: R_RISCV_LO12_I	.LANCHOR1
			64: R_RISCV_RELAX	*ABS*
  68:	1028                	addi	a0,sp,40

0000006a <.LBB240>:
  6a:	d23e                	sw	a5,36(sp)

0000006c <.LBB241>:
  6c:	00092783          	lw	a5,0(s2)
			6c: R_RISCV_LO12_I	ble_memcpy_ptr
			6c: R_RISCV_RELAX	*ABS*
  70:	02010a13          	addi	s4,sp,32

00000074 <.LBB242>:
  74:	4421                	li	s0,8

00000076 <.LBB249>:
  76:	9782                	jalr	a5

00000078 <.LVL215>:
  78:	47a1                	li	a5,8
  7a:	c4be                	sw	a5,72(sp)

0000007c <.LBE249>:
  7c:	4785                	li	a5,1

0000007e <.LBB250>:
  7e:	c682                	sw	zero,76(sp)

00000080 <.LBE250>:
  80:	d6be                	sw	a5,108(sp)
  82:	cb02                	sw	zero,148(sp)
  84:	d8be                	sw	a5,112(sp)
  86:	cd3e                	sw	a5,152(sp)
  88:	07010a93          	addi	s5,sp,112
  8c:	04810b13          	addi	s6,sp,72

00000090 <.L68>:
  90:	5782                	lw	a5,32(sp)
  92:	ebe9                	bnez	a5,164 <.L93>
			92: R_RISCV_RVC_BRANCH	.L93
  94:	47fa                	lw	a5,156(sp)
  96:	eb8d                	bnez	a5,c8 <.L94>
			96: R_RISCV_RVC_BRANCH	.L94

00000098 <.LBB251>:
  98:	476a                	lw	a4,152(sp)

0000009a <.LVL218>:
  9a:	469d                	li	a3,7
  9c:	02e6fb63          	bgeu	a3,a4,d2 <.L110>
			9c: R_RISCV_BRANCH	.L110
  a0:	46a1                	li	a3,8
  a2:	02d71363          	bne	a4,a3,c8 <.L94>
			a2: R_RISCV_BRANCH	.L94
  a6:	00098993          	mv	s3,s3
			a6: R_RISCV_LO12_I	.LANCHOR1
			a6: R_RISCV_RELAX	*ABS*
  aa:	02000613          	li	a2,32

000000ae <.L96>:
  ae:	18b8                	addi	a4,sp,120

000000b0 <.LVL220>:
  b0:	973e                	add	a4,a4,a5

000000b2 <.LVL221>:
  b2:	4314                	lw	a3,0(a4)
  b4:	00f98733          	add	a4,s3,a5
  b8:	4318                	lw	a4,0(a4)
  ba:	00d76763          	bltu	a4,a3,c8 <.L94>
			ba: R_RISCV_BRANCH	.L94
  be:	00e6ea63          	bltu	a3,a4,d2 <.L110>
			be: R_RISCV_BRANCH	.L110
  c2:	0791                	addi	a5,a5,4
  c4:	fec795e3          	bne	a5,a2,ae <.L96>
			c4: R_RISCV_BRANCH	.L96

000000c8 <.L94>:
  c8:	18a8                	addi	a0,sp,120
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	specialModP256
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.L94+0x2>

000000d2 <.L110>:
  d2:	00092783          	lw	a5,0(s2)
			d2: R_RISCV_LO12_I	ble_memcpy_ptr
			d2: R_RISCV_RELAX	*ABS*
  d6:	18ac                	addi	a1,sp,120

000000d8 <.LVL225>:
  d8:	8526                	mv	a0,s1
  da:	02000613          	li	a2,32
  de:	9782                	jalr	a5

000000e0 <.LVL226>:
  e0:	47ea                	lw	a5,152(sp)

000000e2 <.LBE253>:
  e2:	40be                	lw	ra,204(sp)
  e4:	442e                	lw	s0,200(sp)

000000e6 <.LBB257>:
  e6:	d09c                	sw	a5,32(s1)
  e8:	47fa                	lw	a5,156(sp)

000000ea <.LBE257>:
  ea:	490e                	lw	s2,192(sp)
  ec:	59fa                	lw	s3,188(sp)

000000ee <.LBB258>:
  ee:	d0dc                	sw	a5,36(s1)

000000f0 <.LBE258>:
  f0:	5a6a                	lw	s4,184(sp)
  f2:	449e                	lw	s1,196(sp)

000000f4 <.LVL228>:
  f4:	5ada                	lw	s5,180(sp)
  f6:	5b4a                	lw	s6,176(sp)
  f8:	5bba                	lw	s7,172(sp)
  fa:	6169                	addi	sp,sp,208
  fc:	8082                	ret

000000fe <.L77>:
  fe:	868a                	mv	a3,sp
 100:	870a                	mv	a4,sp

00000102 <.L69>:
 102:	430c                	lw	a1,0(a4)

00000104 <.LVL231>:
 104:	07fe                	slli	a5,a5,0x1f

00000106 <.LVL232>:
 106:	0711                	addi	a4,a4,4
 108:	0015d613          	srli	a2,a1,0x1
 10c:	8e5d                	or	a2,a2,a5
 10e:	fec72e23          	sw	a2,-4(a4)
 112:	0015f793          	andi	a5,a1,1

00000116 <.LVL233>:
 116:	ff4716e3          	bne	a4,s4,102 <.L69>
			116: R_RISCV_BRANCH	.L69

0000011a <.LBB247>:
 11a:	4781                	li	a5,0

0000011c <.L71>:
 11c:	4298                	lw	a4,0(a3)
 11e:	e709                	bnez	a4,128 <.L70>
			11e: R_RISCV_RVC_BRANCH	.L70
 120:	0785                	addi	a5,a5,1
 122:	0691                	addi	a3,a3,4
 124:	fe879ce3          	bne	a5,s0,11c <.L71>
			124: R_RISCV_BRANCH	.L71

00000128 <.L70>:
 128:	40f407b3          	sub	a5,s0,a5

0000012c <.LVL236>:
 12c:	d03e                	sw	a5,32(sp)

0000012e <.LBE247>:
 12e:	57b6                	lw	a5,108(sp)
 130:	8b85                	andi	a5,a5,1
 132:	ebad                	bnez	a5,1a4 <.L72>
			132: R_RISCV_RVC_BRANCH	.L72
 134:	0894                	addi	a3,sp,80
 136:	8736                	mv	a4,a3

00000138 <.L73>:
 138:	430c                	lw	a1,0(a4)

0000013a <.LVL239>:
 13a:	07fe                	slli	a5,a5,0x1f

0000013c <.LVL240>:
 13c:	0711                	addi	a4,a4,4
 13e:	0015d613          	srli	a2,a1,0x1
 142:	8e5d                	or	a2,a2,a5
 144:	fec72e23          	sw	a2,-4(a4)
 148:	0015f793          	andi	a5,a1,1

0000014c <.LVL241>:
 14c:	feea96e3          	bne	s5,a4,138 <.L73>
			14c: R_RISCV_BRANCH	.L73

00000150 <.LBB262>:
 150:	4781                	li	a5,0

00000152 <.L75>:
 152:	4298                	lw	a4,0(a3)
 154:	e709                	bnez	a4,15e <.L74>
			154: R_RISCV_RVC_BRANCH	.L74
 156:	0785                	addi	a5,a5,1
 158:	0691                	addi	a3,a3,4
 15a:	fe879ce3          	bne	a5,s0,152 <.L75>
			15a: R_RISCV_BRANCH	.L75

0000015e <.L74>:
 15e:	40f407b3          	sub	a5,s0,a5

00000162 <.LVL244>:
 162:	d8be                	sw	a5,112(sp)

00000164 <.L93>:
 164:	47f2                	lw	a5,28(sp)
 166:	8b85                	andi	a5,a5,1
 168:	dbd9                	beqz	a5,fe <.L77>
			168: R_RISCV_RVC_BRANCH	.L77
 16a:	09810b93          	addi	s7,sp,152

0000016e <.L78>:
 16e:	4796                	lw	a5,68(sp)
 170:	8b85                	andi	a5,a5,1
 172:	cf9d                	beqz	a5,1b0 <.L87>
			172: R_RISCV_RVC_BRANCH	.L87

00000174 <.LBB264>:
 174:	5782                	lw	a5,32(sp)

00000176 <.LVL247>:
 176:	4726                	lw	a4,72(sp)

00000178 <.LVL248>:
 178:	00f76963          	bltu	a4,a5,18a <.L88>
			178: R_RISCV_BRANCH	.L88
 17c:	0ce7e163          	bltu	a5,a4,23e <.L89>
			17c: R_RISCV_BRANCH	.L89
 180:	40f407b3          	sub	a5,s0,a5

00000184 <.LVL249>:
 184:	461d                	li	a2,7

00000186 <.L90>:
 186:	08f67f63          	bgeu	a2,a5,224 <.L91>
			186: R_RISCV_BRANCH	.L91

0000018a <.L88>:
 18a:	102c                	addi	a1,sp,40

0000018c <.LVL252>:
 18c:	850a                	mv	a0,sp
 18e:	00000097          	auipc	ra,0x0
			18e: R_RISCV_CALL	SubtractFromSelfBigHex256
			18e: R_RISCV_RELAX	*ABS*
 192:	000080e7          	jalr	ra # 18e <.LVL252+0x2>

00000196 <.LVL253>:
 196:	18ac                	addi	a1,sp,120
 198:	0888                	addi	a0,sp,80

0000019a <.L109>:
 19a:	00000097          	auipc	ra,0x0
			19a: R_RISCV_CALL	SubtractFromSelfBigHexSign256
			19a: R_RISCV_RELAX	*ABS*
 19e:	000080e7          	jalr	ra # 19a <.L109>

000001a2 <.LVL254>:
 1a2:	b5fd                	j	90 <.L68>
			1a2: R_RISCV_RVC_JUMP	.L68

000001a4 <.L72>:
 1a4:	0888                	addi	a0,sp,80
 1a6:	00000097          	auipc	ra,0x0
			1a6: R_RISCV_CALL	AddPdiv2_256
			1a6: R_RISCV_RELAX	*ABS*
 1aa:	000080e7          	jalr	ra # 1a6 <.L72+0x2>

000001ae <.LVL256>:
 1ae:	bf5d                	j	164 <.L93>
			1ae: R_RISCV_RVC_JUMP	.L93

000001b0 <.L87>:
 1b0:	1034                	addi	a3,sp,40
 1b2:	8736                	mv	a4,a3

000001b4 <.L79>:
 1b4:	430c                	lw	a1,0(a4)

000001b6 <.LVL258>:
 1b6:	07fe                	slli	a5,a5,0x1f

000001b8 <.LVL259>:
 1b8:	0711                	addi	a4,a4,4
 1ba:	0015d613          	srli	a2,a1,0x1
 1be:	8e5d                	or	a2,a2,a5
 1c0:	fec72e23          	sw	a2,-4(a4)
 1c4:	0015f793          	andi	a5,a1,1

000001c8 <.LVL260>:
 1c8:	feeb16e3          	bne	s6,a4,1b4 <.L79>
			1c8: R_RISCV_BRANCH	.L79

000001cc <.LBB269>:
 1cc:	4781                	li	a5,0

000001ce <.L81>:
 1ce:	4298                	lw	a4,0(a3)
 1d0:	e709                	bnez	a4,1da <.L80>
			1d0: R_RISCV_RVC_BRANCH	.L80
 1d2:	0785                	addi	a5,a5,1
 1d4:	0691                	addi	a3,a3,4
 1d6:	fe879ce3          	bne	a5,s0,1ce <.L81>
			1d6: R_RISCV_BRANCH	.L81

000001da <.L80>:
 1da:	40f407b3          	sub	a5,s0,a5

000001de <.LVL263>:
 1de:	c4be                	sw	a5,72(sp)

000001e0 <.LBE267>:
 1e0:	47da                	lw	a5,148(sp)
 1e2:	8b85                	andi	a5,a5,1
 1e4:	eb95                	bnez	a5,218 <.L82>
			1e4: R_RISCV_RVC_BRANCH	.L82
 1e6:	18b4                	addi	a3,sp,120
 1e8:	8736                	mv	a4,a3

000001ea <.L83>:
 1ea:	430c                	lw	a1,0(a4)

000001ec <.LVL266>:
 1ec:	07fe                	slli	a5,a5,0x1f

000001ee <.LVL267>:
 1ee:	0711                	addi	a4,a4,4
 1f0:	0015d613          	srli	a2,a1,0x1
 1f4:	8e5d                	or	a2,a2,a5
 1f6:	fec72e23          	sw	a2,-4(a4)
 1fa:	0015f793          	andi	a5,a1,1

000001fe <.LVL268>:
 1fe:	feeb96e3          	bne	s7,a4,1ea <.L83>
			1fe: R_RISCV_BRANCH	.L83

00000202 <.LBB273>:
 202:	4781                	li	a5,0

00000204 <.L85>:
 204:	4298                	lw	a4,0(a3)
 206:	e709                	bnez	a4,210 <.L84>
			206: R_RISCV_RVC_BRANCH	.L84
 208:	0785                	addi	a5,a5,1
 20a:	0691                	addi	a3,a3,4
 20c:	fe879ce3          	bne	a5,s0,204 <.L85>
			20c: R_RISCV_BRANCH	.L85

00000210 <.L84>:
 210:	40f407b3          	sub	a5,s0,a5

00000214 <.LVL271>:
 214:	cd3e                	sw	a5,152(sp)
 216:	bfa1                	j	16e <.L78>
			216: R_RISCV_RVC_JUMP	.L78

00000218 <.L82>:
 218:	18a8                	addi	a0,sp,120
 21a:	00000097          	auipc	ra,0x0
			21a: R_RISCV_CALL	AddPdiv2_256
			21a: R_RISCV_RELAX	*ABS*
 21e:	000080e7          	jalr	ra # 21a <.L82+0x2>

00000222 <.LVL273>:
 222:	b7b1                	j	16e <.L78>
			222: R_RISCV_RVC_JUMP	.L78

00000224 <.L91>:
 224:	00279713          	slli	a4,a5,0x2
 228:	1034                	addi	a3,sp,40

0000022a <.LVL275>:
 22a:	96ba                	add	a3,a3,a4

0000022c <.LVL276>:
 22c:	970a                	add	a4,a4,sp
 22e:	4294                	lw	a3,0(a3)
 230:	4318                	lw	a4,0(a4)
 232:	00d76663          	bltu	a4,a3,23e <.L89>
			232: R_RISCV_BRANCH	.L89
 236:	f4e6eae3          	bltu	a3,a4,18a <.L88>
			236: R_RISCV_BRANCH	.L88
 23a:	0785                	addi	a5,a5,1
 23c:	b7a9                	j	186 <.L90>
			23c: R_RISCV_RVC_JUMP	.L90

0000023e <.L89>:
 23e:	858a                	mv	a1,sp
 240:	1028                	addi	a0,sp,40

00000242 <.LVL279>:
 242:	00000097          	auipc	ra,0x0
			242: R_RISCV_CALL	SubtractFromSelfBigHex256
			242: R_RISCV_RELAX	*ABS*
 246:	000080e7          	jalr	ra # 242 <.LVL279>

0000024a <.LVL280>:
 24a:	088c                	addi	a1,sp,80
 24c:	18a8                	addi	a0,sp,120
 24e:	b7b1                	j	19a <.L109>
			24e: R_RISCV_RVC_JUMP	.L109

Disassembly of section .text.GF_Point_Jacobian_To_Affine256:

00000000 <GF_Point_Jacobian_To_Affine256>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	d84a                	sw	s2,48(sp)
   6:	842a                	mv	s0,a0
   8:	892e                	mv	s2,a1
   a:	05050513          	addi	a0,a0,80

0000000e <.LVL282>:
   e:	002c                	addi	a1,sp,8

00000010 <.LVL283>:
  10:	de06                	sw	ra,60(sp)
  12:	da26                	sw	s1,52(sp)
  14:	84b2                	mv	s1,a2
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	bigHexInversion256
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL283+0x6>

0000001e <.LVL284>:
  1e:	864a                	mv	a2,s2
  20:	002c                	addi	a1,sp,8
  22:	8522                	mv	a0,s0
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	MultiplyBigHexModP256
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL284+0x6>

0000002c <.LVL285>:
  2c:	8626                	mv	a2,s1
  2e:	002c                	addi	a1,sp,8
  30:	02840513          	addi	a0,s0,40
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	MultiplyBigHexModP256
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL285+0x8>

0000003c <.LVL286>:
  3c:	50f2                	lw	ra,60(sp)
  3e:	5462                	lw	s0,56(sp)

00000040 <.LVL287>:
  40:	54d2                	lw	s1,52(sp)

00000042 <.LVL288>:
  42:	5942                	lw	s2,48(sp)

00000044 <.LVL289>:
  44:	6121                	addi	sp,sp,64
  46:	8082                	ret

Disassembly of section .text.ecc_init:

00000000 <ecc_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	ecc_env
			6: R_RISCV_RELAX	*ABS*
   a:	ed0d                	bnez	a0,44 <.L114>
			a: R_RISCV_RVC_BRANCH	.L114

0000000c <.L116>:
   c:	00040513          	mv	a0,s0
			c: R_RISCV_LO12_I	ecc_env
			c: R_RISCV_RELAX	*ABS*
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_co_list_init
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.L116+0x4>

00000018 <.LVL292>:
  18:	4422                	lw	s0,8(sp)
  1a:	40b2                	lw	ra,12(sp)
  1c:	000005b7          	lui	a1,0x0
			1c: R_RISCV_HI20	ecc_multiplication_event_handler
			1c: R_RISCV_RELAX	*ABS*
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	ecc_multiplication_event_handler
			20: R_RISCV_RELAX	*ABS*
  24:	4501                	li	a0,0
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
			28: R_RISCV_CALL	ble_ke_event_callback_set
			28: R_RISCV_RELAX	*ABS*
  2c:	00030067          	jr	t1 # 28 <.LVL292+0x10>

00000030 <.L115>:
  30:	00040513          	mv	a0,s0
			30: R_RISCV_LO12_I	ecc_env
			30: R_RISCV_RELAX	*ABS*
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	ble_co_list_pop_front
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.L115+0x4>

0000003c <.LVL294>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ble_ke_free
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL294>

00000044 <.L114>:
  44:	00042783          	lw	a5,0(s0) # 0 <ecc_init>
			44: R_RISCV_LO12_I	ecc_env
			44: R_RISCV_RELAX	*ABS*
  48:	f7e5                	bnez	a5,30 <.L115>
			48: R_RISCV_RVC_BRANCH	.L115
  4a:	b7c9                	j	c <.L116>
			4a: R_RISCV_RVC_JUMP	.L116

Disassembly of section .text.ecc_is_valid_point:

00000000 <ecc_is_valid_point>:
   0:	4505                	li	a0,1

00000002 <.LVL297>:
   2:	8082                	ret

Disassembly of section .text.ecc_generate_key256:

00000000 <ecc_generate_key256>:
   0:	710d                	addi	sp,sp,-352
   2:	14912a23          	sw	s1,340(sp)
   6:	15212823          	sw	s2,336(sp)
   a:	15312623          	sw	s3,332(sp)
   e:	15412423          	sw	s4,328(sp)
  12:	15512223          	sw	s5,324(sp)
  16:	c62e                	sw	a1,12(sp)
  18:	c432                	sw	a2,8(sp)
  1a:	c236                	sw	a3,4(sp)
  1c:	89ba                	mv	s3,a4
  1e:	14112e23          	sw	ra,348(sp)
  22:	14812c23          	sw	s0,344(sp)
  26:	15612023          	sw	s6,320(sp)
  2a:	13712e23          	sw	s7,316(sp)
  2e:	13812c23          	sw	s8,312(sp)
  32:	13912a23          	sw	s9,308(sp)
  36:	13a12823          	sw	s10,304(sp)
  3a:	892a                	mv	s2,a0
  3c:	84be                	mv	s1,a5
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	sec_eng_pka0_reset
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <ecc_generate_key256+0x3e>

00000046 <.LVL300>:
  46:	45b2                	lw	a1,12(sp)
  48:	4622                	lw	a2,8(sp)
  4a:	4692                	lw	a3,4(sp)
  4c:	01810893          	addi	a7,sp,24
  50:	06810813          	addi	a6,sp,104
  54:	cc02                	sw	zero,24(sp)
  56:	d482                	sw	zero,104(sp)
  58:	c902                	sw	zero,144(sp)

0000005a <.LVL301>:
  5a:	01c58713          	addi	a4,a1,28 # 1c <ecc_generate_key256+0x1c>
  5e:	0671                	addi	a2,a2,28
  60:	06f1                	addi	a3,a3,28
  62:	8342                	mv	t1,a6
  64:	8e46                	mv	t3,a7
  66:	8ac6                	mv	s5,a7
  68:	8a42                	mv	s4,a6

0000006a <.L121>:
  6a:	00374783          	lbu	a5,3(a4)
  6e:	00274503          	lbu	a0,2(a4)
  72:	0e11                	addi	t3,t3,4
  74:	07e2                	slli	a5,a5,0x18
  76:	0542                	slli	a0,a0,0x10
  78:	97aa                	add	a5,a5,a0
  7a:	00074503          	lbu	a0,0(a4)
  7e:	1671                	addi	a2,a2,-4
  80:	0311                	addi	t1,t1,4
  82:	97aa                	add	a5,a5,a0
  84:	00174503          	lbu	a0,1(a4)
  88:	16f1                	addi	a3,a3,-4
  8a:	0522                	slli	a0,a0,0x8
  8c:	97aa                	add	a5,a5,a0
  8e:	fefe2e23          	sw	a5,-4(t3)
  92:	00764503          	lbu	a0,7(a2)
  96:	00664783          	lbu	a5,6(a2)
  9a:	0562                	slli	a0,a0,0x18
  9c:	07c2                	slli	a5,a5,0x10
  9e:	953e                	add	a0,a0,a5
  a0:	00464783          	lbu	a5,4(a2)
  a4:	953e                	add	a0,a0,a5
  a6:	00564783          	lbu	a5,5(a2)
  aa:	07a2                	slli	a5,a5,0x8
  ac:	953e                	add	a0,a0,a5
  ae:	fea32e23          	sw	a0,-4(t1)
  b2:	0066c783          	lbu	a5,6(a3)
  b6:	0076c503          	lbu	a0,7(a3)
  ba:	07c2                	slli	a5,a5,0x10
  bc:	0562                	slli	a0,a0,0x18
  be:	953e                	add	a0,a0,a5
  c0:	0046c783          	lbu	a5,4(a3)
  c4:	953e                	add	a0,a0,a5
  c6:	0056c783          	lbu	a5,5(a3)
  ca:	07a2                	slli	a5,a5,0x8
  cc:	953e                	add	a0,a0,a5
  ce:	02a32223          	sw	a0,36(t1)

000000d2 <.LVL303>:
  d2:	ffc70793          	addi	a5,a4,-4
  d6:	40e59f63          	bne	a1,a4,4f4 <.L129>
			d6: R_RISCV_BRANCH	.L129

000000da <.LBB313>:
  da:	4781                	li	a5,0
  dc:	4721                	li	a4,8

000000de <.L123>:
  de:	0008a683          	lw	a3,0(a7)
  e2:	e689                	bnez	a3,ec <.L122>
			e2: R_RISCV_RVC_BRANCH	.L122
  e4:	0785                	addi	a5,a5,1
  e6:	0891                	addi	a7,a7,4
  e8:	fee79be3          	bne	a5,a4,de <.L123>
			e8: R_RISCV_BRANCH	.L123

000000ec <.L122>:
  ec:	4721                	li	a4,8
  ee:	40f707b3          	sub	a5,a4,a5

000000f2 <.LVL306>:
  f2:	dc3e                	sw	a5,56(sp)

000000f4 <.LVL307>:
  f4:	8742                	mv	a4,a6

000000f6 <.LBB315>:
  f6:	4781                	li	a5,0
  f8:	46a1                	li	a3,8

000000fa <.L125>:
  fa:	4310                	lw	a2,0(a4)
  fc:	e609                	bnez	a2,106 <.L124>
			fc: R_RISCV_RVC_BRANCH	.L124
  fe:	0785                	addi	a5,a5,1
 100:	0711                	addi	a4,a4,4
 102:	fed79ce3          	bne	a5,a3,fa <.L125>
			102: R_RISCV_BRANCH	.L125

00000106 <.L124>:
 106:	4721                	li	a4,8
 108:	40f707b3          	sub	a5,a4,a5

0000010c <.LVL310>:
 10c:	c53e                	sw	a5,136(sp)

0000010e <.LBB317>:
 10e:	4781                	li	a5,0

00000110 <.L127>:
 110:	02882683          	lw	a3,40(a6)
 114:	e689                	bnez	a3,11e <.L126>
			114: R_RISCV_RVC_BRANCH	.L126
 116:	0785                	addi	a5,a5,1
 118:	0811                	addi	a6,a6,4
 11a:	fee79be3          	bne	a5,a4,110 <.L127>
			11a: R_RISCV_BRANCH	.L127

0000011e <.L126>:
 11e:	4b21                	li	s6,8
 120:	40fb07b3          	sub	a5,s6,a5

00000124 <.LBB320>:
 124:	4581                	li	a1,0
 126:	13400513          	li	a0,308

0000012a <.LBB464>:
 12a:	d93e                	sw	a5,176(sp)

0000012c <.LBE464>:
 12c:	c702                	sw	zero,140(sp)
 12e:	db02                	sw	zero,180(sp)

00000130 <.LBB465>:
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	ble_ke_malloc
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LBB465>

00000138 <.LVL316>:
 138:	842a                	mv	s0,a0

0000013a <.LVL317>:
 13a:	13250623          	sb	s2,300(a0)
 13e:	13351023          	sh	s3,288(a0)
 142:	12951123          	sh	s1,290(a0)
 146:	85d2                	mv	a1,s4
 148:	8552                	mv	a0,s4
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	GF2Mont.constprop.8
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.LVL317+0x10>

00000152 <.LVL318>:
 152:	090c                	addi	a1,sp,144
 154:	852e                	mv	a0,a1
 156:	00000097          	auipc	ra,0x0
			156: R_RISCV_CALL	GF2Mont.constprop.8
			156: R_RISCV_RELAX	*ABS*
 15a:	000080e7          	jalr	ra # 156 <.LVL318+0x4>

0000015e <.LBB321>:
 15e:	00000937          	lui	s2,0x0
			15e: R_RISCV_HI20	ble_memset_ptr
			15e: R_RISCV_RELAX	*ABS*
 162:	00092783          	lw	a5,0(s2) # 0 <ecc_generate_key256>
			162: R_RISCV_LO12_I	ble_memset_ptr
			162: R_RISCV_RELAX	*ABS*
 166:	4985                	li	s3,1
 168:	02000613          	li	a2,32
 16c:	4581                	li	a1,0
 16e:	d0ce                	sw	s3,96(sp)
 170:	d282                	sw	zero,100(sp)
 172:	0088                	addi	a0,sp,64
 174:	000004b7          	lui	s1,0x0
			174: R_RISCV_HI20	ble_memcpy_ptr
			174: R_RISCV_RELAX	*ABS*
 178:	9782                	jalr	a5

0000017a <.LVL320>:
 17a:	0004a783          	lw	a5,0(s1) # 0 <ecc_generate_key256>
			17a: R_RISCV_LO12_I	ble_memcpy_ptr
			17a: R_RISCV_RELAX	*ABS*
 17e:	00000cb7          	lui	s9,0x0
			17e: R_RISCV_HI20	.LANCHOR3
			17e: R_RISCV_RELAX	*ABS*
 182:	000c8593          	mv	a1,s9
			182: R_RISCV_LO12_I	.LANCHOR3
			182: R_RISCV_RELAX	*ABS*
 186:	02000613          	li	a2,32
 18a:	0088                	addi	a0,sp,64
 18c:	9782                	jalr	a5

0000018e <.LBB323>:
 18e:	0004a783          	lw	a5,0(s1)
			18e: R_RISCV_LO12_I	ble_memcpy_ptr
			18e: R_RISCV_RELAX	*ABS*
 192:	85d2                	mv	a1,s4
 194:	02000613          	li	a2,32
 198:	1928                	addi	a0,sp,184

0000019a <.LVL322>:
 19a:	9782                	jalr	a5

0000019c <.LVL323>:
 19c:	47aa                	lw	a5,136(sp)

0000019e <.LBB327>:
 19e:	02000613          	li	a2,32
 1a2:	090c                	addi	a1,sp,144

000001a4 <.LBB334>:
 1a4:	cdbe                	sw	a5,216(sp)
 1a6:	47ba                	lw	a5,140(sp)

000001a8 <.LBB335>:
 1a8:	1188                	addi	a0,sp,224

000001aa <.LBB356>:
 1aa:	08040c13          	addi	s8,s0,128

000001ae <.LBB336>:
 1ae:	cfbe                	sw	a5,220(sp)

000001b0 <.LBB337>:
 1b0:	0004a783          	lw	a5,0(s1)
			1b0: R_RISCV_LO12_I	ble_memcpy_ptr
			1b0: R_RISCV_RELAX	*ABS*

000001b4 <.LBB364>:
 1b4:	0a840b93          	addi	s7,s0,168

000001b8 <.LBB371>:
 1b8:	0d040a13          	addi	s4,s0,208

000001bc <.LBB338>:
 1bc:	9782                	jalr	a5

000001be <.LVL326>:
 1be:	57ca                	lw	a5,176(sp)

000001c0 <.LBB339>:
 1c0:	02000613          	li	a2,32
 1c4:	008c                	addi	a1,sp,64

000001c6 <.LBB345>:
 1c6:	10f12023          	sw	a5,256(sp)
 1ca:	57da                	lw	a5,180(sp)

000001cc <.LBB346>:
 1cc:	0228                	addi	a0,sp,264

000001ce <.LBB396>:
 1ce:	00840d13          	addi	s10,s0,8

000001d2 <.LBB347>:
 1d2:	10f12223          	sw	a5,260(sp)

000001d6 <.LBB348>:
 1d6:	0004a783          	lw	a5,0(s1)
			1d6: R_RISCV_LO12_I	ble_memcpy_ptr
			1d6: R_RISCV_RELAX	*ABS*
 1da:	9782                	jalr	a5

000001dc <.LVL328>:
 1dc:	5786                	lw	a5,96(sp)

000001de <.LBB378>:
 1de:	02000613          	li	a2,32
 1e2:	192c                	addi	a1,sp,184

000001e4 <.LBB349>:
 1e4:	12f12423          	sw	a5,296(sp)
 1e8:	5796                	lw	a5,100(sp)

000001ea <.LBB379>:
 1ea:	8562                	mv	a0,s8

000001ec <.LBB350>:
 1ec:	12f12623          	sw	a5,300(sp)

000001f0 <.LBB380>:
 1f0:	0004a783          	lw	a5,0(s1)
			1f0: R_RISCV_LO12_I	ble_memcpy_ptr
			1f0: R_RISCV_RELAX	*ABS*
 1f4:	9782                	jalr	a5

000001f6 <.LVL331>:
 1f6:	47ee                	lw	a5,216(sp)

000001f8 <.LBB381>:
 1f8:	02000613          	li	a2,32
 1fc:	118c                	addi	a1,sp,224

000001fe <.LBB382>:
 1fe:	0af42023          	sw	a5,160(s0)
 202:	47fe                	lw	a5,220(sp)

00000204 <.LBB383>:
 204:	855e                	mv	a0,s7

00000206 <.LBB384>:
 206:	0af42223          	sw	a5,164(s0)

0000020a <.LBB385>:
 20a:	0004a783          	lw	a5,0(s1)
			20a: R_RISCV_LO12_I	ble_memcpy_ptr
			20a: R_RISCV_RELAX	*ABS*
 20e:	9782                	jalr	a5

00000210 <.LVL333>:
 210:	10012783          	lw	a5,256(sp)

00000214 <.LBB386>:
 214:	02000613          	li	a2,32
 218:	022c                	addi	a1,sp,264

0000021a <.LBB387>:
 21a:	0cf42423          	sw	a5,200(s0)
 21e:	10412783          	lw	a5,260(sp)

00000222 <.LBB388>:
 222:	8552                	mv	a0,s4

00000224 <.LBB389>:
 224:	0cf42623          	sw	a5,204(s0)

00000228 <.LBB390>:
 228:	0004a783          	lw	a5,0(s1)
			228: R_RISCV_LO12_I	ble_memcpy_ptr
			228: R_RISCV_RELAX	*ABS*
 22c:	9782                	jalr	a5

0000022e <.LVL335>:
 22e:	12812783          	lw	a5,296(sp)

00000232 <.LBB440>:
 232:	85d6                	mv	a1,s5
 234:	02000613          	li	a2,32

00000238 <.LBB391>:
 238:	0ef42823          	sw	a5,240(s0)
 23c:	12c12783          	lw	a5,300(sp)

00000240 <.LBB447>:
 240:	0f840513          	addi	a0,s0,248

00000244 <.LBB404>:
 244:	05840a93          	addi	s5,s0,88

00000248 <.LBB392>:
 248:	0ef42a23          	sw	a5,244(s0)

0000024c <.LBB450>:
 24c:	0004a783          	lw	a5,0(s1)
			24c: R_RISCV_LO12_I	ble_memcpy_ptr
			24c: R_RISCV_RELAX	*ABS*
 250:	9782                	jalr	a5

00000252 <.LVL337>:
 252:	57e2                	lw	a5,56(sp)

00000254 <.LBB451>:
 254:	02000613          	li	a2,32
 258:	4581                	li	a1,0

0000025a <.LBB452>:
 25a:	10f42c23          	sw	a5,280(s0)
 25e:	57f2                	lw	a5,60(sp)

00000260 <.LBB453>:
 260:	0088                	addi	a0,sp,64

00000262 <.LBB454>:
 262:	10f42e23          	sw	a5,284(s0)

00000266 <.LBB455>:
 266:	00092783          	lw	a5,0(s2)
			266: R_RISCV_LO12_I	ble_memset_ptr
			266: R_RISCV_RELAX	*ABS*
 26a:	d0ce                	sw	s3,96(sp)
 26c:	d282                	sw	zero,100(sp)
 26e:	9782                	jalr	a5

00000270 <.LBB410>:
 270:	0004a783          	lw	a5,0(s1)
			270: R_RISCV_LO12_I	ble_memcpy_ptr
			270: R_RISCV_RELAX	*ABS*
 274:	02000613          	li	a2,32
 278:	008c                	addi	a1,sp,64

0000027a <.LBE410>:
 27a:	ce82                	sw	zero,92(sp)

0000027c <.LBB411>:
 27c:	856a                	mv	a0,s10
 27e:	9782                	jalr	a5

00000280 <.LVL341>:
 280:	5786                	lw	a5,96(sp)

00000282 <.LBE411>:
 282:	000c8593          	mv	a1,s9
			282: R_RISCV_LO12_I	.LANCHOR3
			282: R_RISCV_RELAX	*ABS*
 286:	02000613          	li	a2,32

0000028a <.LBB412>:
 28a:	d41c                	sw	a5,40(s0)
 28c:	5796                	lw	a5,100(sp)

0000028e <.LBE412>:
 28e:	0088                	addi	a0,sp,64

00000290 <.LBB413>:
 290:	03040c93          	addi	s9,s0,48

00000294 <.LBB418>:
 294:	d45c                	sw	a5,44(s0)

00000296 <.LBE418>:
 296:	0004a783          	lw	a5,0(s1)
			296: R_RISCV_LO12_I	ble_memcpy_ptr
			296: R_RISCV_RELAX	*ABS*
 29a:	9782                	jalr	a5

0000029c <.LBB419>:
 29c:	0004a783          	lw	a5,0(s1)
			29c: R_RISCV_LO12_I	ble_memcpy_ptr
			29c: R_RISCV_RELAX	*ABS*
 2a0:	02000613          	li	a2,32
 2a4:	008c                	addi	a1,sp,64

000002a6 <.LVL345>:
 2a6:	8566                	mv	a0,s9
 2a8:	9782                	jalr	a5

000002aa <.LVL346>:
 2aa:	5786                	lw	a5,96(sp)

000002ac <.LBE419>:
 2ac:	02000613          	li	a2,32
 2b0:	4581                	li	a1,0

000002b2 <.LBB420>:
 2b2:	c83c                	sw	a5,80(s0)
 2b4:	5796                	lw	a5,100(sp)

000002b6 <.LBE420>:
 2b6:	0088                	addi	a0,sp,64

000002b8 <.LBB421>:
 2b8:	c87c                	sw	a5,84(s0)

000002ba <.LBE421>:
 2ba:	00092783          	lw	a5,0(s2)
			2ba: R_RISCV_LO12_I	ble_memset_ptr
			2ba: R_RISCV_RELAX	*ABS*
 2be:	9782                	jalr	a5

000002c0 <.LBB422>:
 2c0:	0004a783          	lw	a5,0(s1)
			2c0: R_RISCV_LO12_I	ble_memcpy_ptr
			2c0: R_RISCV_RELAX	*ABS*
 2c4:	02000613          	li	a2,32
 2c8:	008c                	addi	a1,sp,64

000002ca <.LBE422>:
 2ca:	ce82                	sw	zero,92(sp)

000002cc <.LBB423>:
 2cc:	8556                	mv	a0,s5
 2ce:	9782                	jalr	a5

000002d0 <.LVL351>:
 2d0:	5786                	lw	a5,96(sp)

000002d2 <.LBB456>:
 2d2:	02000613          	li	a2,32
 2d6:	4581                	li	a1,0

000002d8 <.LBB424>:
 2d8:	dc3c                	sw	a5,120(s0)
 2da:	5796                	lw	a5,100(sp)

000002dc <.LBB461>:
 2dc:	0088                	addi	a0,sp,64

000002de <.LBB425>:
 2de:	dc7c                	sw	a5,124(s0)

000002e0 <.LBB463>:
 2e0:	00092783          	lw	a5,0(s2)
			2e0: R_RISCV_LO12_I	ble_memset_ptr
			2e0: R_RISCV_RELAX	*ABS*
 2e4:	9782                	jalr	a5

000002e6 <.LVL354>:
 2e6:	000005b7          	lui	a1,0x0
			2e6: R_RISCV_HI20	.LANCHOR1
			2e6: R_RISCV_RELAX	*ABS*
 2ea:	4781                	li	a5,0
 2ec:	03900713          	li	a4,57
 2f0:	468d                	li	a3,3
 2f2:	4601                	li	a2,0
 2f4:	00058593          	mv	a1,a1
			2f4: R_RISCV_LO12_I	.LANCHOR1
			2f4: R_RISCV_RELAX	*ABS*
 2f8:	4521                	li	a0,8
 2fa:	cece                	sw	s3,92(sp)
 2fc:	00000097          	auipc	ra,0x0
			2fc: R_RISCV_CALL	sec_eng_pka0_pld
			2fc: R_RISCV_RELAX	*ABS*
 300:	000080e7          	jalr	ra # 2fc <.LVL354+0x16>

00000304 <.LVL355>:
 304:	000005b7          	lui	a1,0x0
			304: R_RISCV_HI20	.LANCHOR4
			304: R_RISCV_RELAX	*ABS*
 308:	4781                	li	a5,0
 30a:	03900713          	li	a4,57
 30e:	468d                	li	a3,3
 310:	4605                	li	a2,1
 312:	00058593          	mv	a1,a1
			312: R_RISCV_LO12_I	.LANCHOR4
			312: R_RISCV_RELAX	*ABS*
 316:	4521                	li	a0,8
 318:	00000097          	auipc	ra,0x0
			318: R_RISCV_CALL	sec_eng_pka0_pld
			318: R_RISCV_RELAX	*ABS*
 31c:	000080e7          	jalr	ra # 318 <.LVL355+0x14>

00000320 <.LVL356>:
 320:	4781                	li	a5,0
 322:	03900713          	li	a4,57
 326:	468d                	li	a3,3
 328:	4609                	li	a2,2
 32a:	85ea                	mv	a1,s10
 32c:	4521                	li	a0,8
 32e:	00000097          	auipc	ra,0x0
			32e: R_RISCV_CALL	sec_eng_pka0_pld
			32e: R_RISCV_RELAX	*ABS*
 332:	000080e7          	jalr	ra # 32e <.LVL356+0xe>

00000336 <.LVL357>:
 336:	4781                	li	a5,0
 338:	03900713          	li	a4,57
 33c:	468d                	li	a3,3
 33e:	460d                	li	a2,3
 340:	85e6                	mv	a1,s9
 342:	4521                	li	a0,8
 344:	00000097          	auipc	ra,0x0
			344: R_RISCV_CALL	sec_eng_pka0_pld
			344: R_RISCV_RELAX	*ABS*
 348:	000080e7          	jalr	ra # 344 <.LVL357+0xe>

0000034c <.LVL358>:
 34c:	4781                	li	a5,0
 34e:	03900713          	li	a4,57
 352:	468d                	li	a3,3
 354:	4611                	li	a2,4
 356:	85d6                	mv	a1,s5
 358:	4521                	li	a0,8
 35a:	00000097          	auipc	ra,0x0
			35a: R_RISCV_CALL	sec_eng_pka0_pld
			35a: R_RISCV_RELAX	*ABS*
 35e:	000080e7          	jalr	ra # 35a <.LVL358+0xe>

00000362 <.LVL359>:
 362:	4781                	li	a5,0
 364:	03900713          	li	a4,57
 368:	468d                	li	a3,3
 36a:	4615                	li	a2,5
 36c:	85e2                	mv	a1,s8
 36e:	4521                	li	a0,8
 370:	00000097          	auipc	ra,0x0
			370: R_RISCV_CALL	sec_eng_pka0_pld
			370: R_RISCV_RELAX	*ABS*
 374:	000080e7          	jalr	ra # 370 <.LVL359+0xe>

00000378 <.LVL360>:
 378:	4781                	li	a5,0
 37a:	03900713          	li	a4,57
 37e:	468d                	li	a3,3
 380:	4619                	li	a2,6
 382:	85de                	mv	a1,s7
 384:	4521                	li	a0,8
 386:	00000097          	auipc	ra,0x0
			386: R_RISCV_CALL	sec_eng_pka0_pld
			386: R_RISCV_RELAX	*ABS*
 38a:	000080e7          	jalr	ra # 386 <.LVL360+0xe>

0000038e <.LVL361>:
 38e:	4781                	li	a5,0
 390:	03900713          	li	a4,57
 394:	468d                	li	a3,3
 396:	461d                	li	a2,7
 398:	85d2                	mv	a1,s4
 39a:	4521                	li	a0,8
 39c:	00000097          	auipc	ra,0x0
			39c: R_RISCV_CALL	sec_eng_pka0_pld
			39c: R_RISCV_RELAX	*ABS*
 3a0:	000080e7          	jalr	ra # 39c <.LVL361+0xe>

000003a4 <.LVL362>:
 3a4:	4781                	li	a5,0
 3a6:	03900713          	li	a4,57
 3aa:	468d                	li	a3,3
 3ac:	4621                	li	a2,8
 3ae:	008c                	addi	a1,sp,64
 3b0:	4521                	li	a0,8
 3b2:	00000097          	auipc	ra,0x0
			3b2: R_RISCV_CALL	sec_eng_pka0_pld
			3b2: R_RISCV_RELAX	*ABS*
 3b6:	000080e7          	jalr	ra # 3b2 <.LVL362+0xe>

000003ba <.LVL363>:
 3ba:	000005b7          	lui	a1,0x0
			3ba: R_RISCV_HI20	.LANCHOR5
			3ba: R_RISCV_RELAX	*ABS*
 3be:	4781                	li	a5,0
 3c0:	03900713          	li	a4,57
 3c4:	468d                	li	a3,3
 3c6:	4625                	li	a2,9
 3c8:	00058593          	mv	a1,a1
			3c8: R_RISCV_LO12_I	.LANCHOR5
			3c8: R_RISCV_RELAX	*ABS*
 3cc:	4521                	li	a0,8
 3ce:	00000097          	auipc	ra,0x0
			3ce: R_RISCV_CALL	sec_eng_pka0_pld
			3ce: R_RISCV_RELAX	*ABS*
 3d2:	000080e7          	jalr	ra # 3ce <.LVL363+0x14>

000003d6 <.LVL364>:
 3d6:	000005b7          	lui	a1,0x0
			3d6: R_RISCV_HI20	.LANCHOR6
			3d6: R_RISCV_RELAX	*ABS*
 3da:	4781                	li	a5,0
 3dc:	03900713          	li	a4,57
 3e0:	468d                	li	a3,3
 3e2:	4629                	li	a2,10
 3e4:	00058593          	mv	a1,a1
			3e4: R_RISCV_LO12_I	.LANCHOR6
			3e4: R_RISCV_RELAX	*ABS*
 3e8:	4521                	li	a0,8
 3ea:	00000097          	auipc	ra,0x0
			3ea: R_RISCV_CALL	sec_eng_pka0_pld
			3ea: R_RISCV_RELAX	*ABS*
 3ee:	000080e7          	jalr	ra # 3ea <.LVL364+0x14>

000003f2 <.LVL365>:
 3f2:	000005b7          	lui	a1,0x0
			3f2: R_RISCV_HI20	.LANCHOR7
			3f2: R_RISCV_RELAX	*ABS*
 3f6:	4781                	li	a5,0
 3f8:	03900713          	li	a4,57
 3fc:	468d                	li	a3,3
 3fe:	462d                	li	a2,11
 400:	00058593          	mv	a1,a1
			400: R_RISCV_LO12_I	.LANCHOR7
			400: R_RISCV_RELAX	*ABS*
 404:	4521                	li	a0,8
 406:	00000097          	auipc	ra,0x0
			406: R_RISCV_CALL	sec_eng_pka0_pld
			406: R_RISCV_RELAX	*ABS*
 40a:	000080e7          	jalr	ra # 406 <.LVL365+0x14>

0000040e <.LVL366>:
 40e:	000005b7          	lui	a1,0x0
			40e: R_RISCV_HI20	.LANCHOR8
			40e: R_RISCV_RELAX	*ABS*
 412:	4781                	li	a5,0
 414:	03900713          	li	a4,57
 418:	468d                	li	a3,3
 41a:	4631                	li	a2,12
 41c:	00058593          	mv	a1,a1
			41c: R_RISCV_LO12_I	.LANCHOR8
			41c: R_RISCV_RELAX	*ABS*
 420:	4521                	li	a0,8
 422:	00000097          	auipc	ra,0x0
			422: R_RISCV_CALL	sec_eng_pka0_pld
			422: R_RISCV_RELAX	*ABS*
 426:	000080e7          	jalr	ra # 422 <.LVL366+0x14>

0000042a <.LVL367>:
 42a:	000005b7          	lui	a1,0x0
			42a: R_RISCV_HI20	.LANCHOR9
			42a: R_RISCV_RELAX	*ABS*
 42e:	4781                	li	a5,0
 430:	03900713          	li	a4,57
 434:	468d                	li	a3,3
 436:	464d                	li	a2,19
 438:	00058593          	mv	a1,a1
			438: R_RISCV_LO12_I	.LANCHOR9
			438: R_RISCV_RELAX	*ABS*
 43c:	4521                	li	a0,8
 43e:	00000097          	auipc	ra,0x0
			43e: R_RISCV_CALL	sec_eng_pka0_pld
			43e: R_RISCV_RELAX	*ABS*
 442:	000080e7          	jalr	ra # 43e <.LVL367+0x14>

00000446 <.LVL368>:
 446:	000005b7          	lui	a1,0x0
			446: R_RISCV_HI20	.LANCHOR10
			446: R_RISCV_RELAX	*ABS*
 44a:	4781                	li	a5,0
 44c:	03900713          	li	a4,57
 450:	468d                	li	a3,3
 452:	4651                	li	a2,20
 454:	00058593          	mv	a1,a1
			454: R_RISCV_LO12_I	.LANCHOR10
			454: R_RISCV_RELAX	*ABS*
 458:	4521                	li	a0,8
 45a:	00000097          	auipc	ra,0x0
			45a: R_RISCV_CALL	sec_eng_pka0_pld
			45a: R_RISCV_RELAX	*ABS*
 45e:	000080e7          	jalr	ra # 45a <.LVL368+0x14>

00000462 <.LBE463>:
 462:	12c44703          	lbu	a4,300(s0)
 466:	03f00793          	li	a5,63
 46a:	12f42423          	sw	a5,296(s0)
 46e:	12042223          	sw	zero,292(s0)
 472:	01642223          	sw	s6,4(s0)
 476:	4789                	li	a5,2
 478:	02f71563          	bne	a4,a5,4a2 <.L128>
			478: R_RISCV_BRANCH	.L128
 47c:	4581                	li	a1,0
 47e:	70800513          	li	a0,1800
 482:	00000097          	auipc	ra,0x0
			482: R_RISCV_CALL	ble_ke_malloc
			482: R_RISCV_RELAX	*ABS*
 486:	000080e7          	jalr	ra # 482 <.LBE463+0x20>

0000048a <.LVL370>:
 48a:	12a42823          	sw	a0,304(s0)
 48e:	4595                	li	a1,5
 490:	00000097          	auipc	ra,0x0
			490: R_RISCV_CALL	pka_read_result.constprop.4
			490: R_RISCV_RELAX	*ABS*
 494:	000080e7          	jalr	ra # 490 <.LVL370+0x6>

00000498 <.LVL371>:
 498:	478d                	li	a5,3
 49a:	12f40623          	sb	a5,300(s0)
 49e:	12042423          	sw	zero,296(s0)

000004a2 <.L128>:
 4a2:	00000537          	lui	a0,0x0
			4a2: R_RISCV_HI20	ecc_env
			4a2: R_RISCV_RELAX	*ABS*
 4a6:	85a2                	mv	a1,s0
 4a8:	00050513          	mv	a0,a0
			4a8: R_RISCV_LO12_I	ecc_env
			4a8: R_RISCV_RELAX	*ABS*
 4ac:	00000097          	auipc	ra,0x0
			4ac: R_RISCV_CALL	ble_co_list_push_back
			4ac: R_RISCV_RELAX	*ABS*
 4b0:	000080e7          	jalr	ra # 4ac <.L128+0xa>

000004b4 <.LVL372>:
 4b4:	4501                	li	a0,0
 4b6:	00000097          	auipc	ra,0x0
			4b6: R_RISCV_CALL	ble_ke_event_set
			4b6: R_RISCV_RELAX	*ABS*
 4ba:	000080e7          	jalr	ra # 4b6 <.LVL372+0x2>

000004be <.LBE468>:
 4be:	15c12083          	lw	ra,348(sp)
 4c2:	15812403          	lw	s0,344(sp)

000004c6 <.LVL374>:
 4c6:	15412483          	lw	s1,340(sp)
 4ca:	15012903          	lw	s2,336(sp)
 4ce:	14c12983          	lw	s3,332(sp)
 4d2:	14812a03          	lw	s4,328(sp)
 4d6:	14412a83          	lw	s5,324(sp)
 4da:	14012b03          	lw	s6,320(sp)
 4de:	13c12b83          	lw	s7,316(sp)
 4e2:	13812c03          	lw	s8,312(sp)
 4e6:	13412c83          	lw	s9,308(sp)

000004ea <.LVL375>:
 4ea:	13012d03          	lw	s10,304(sp)

000004ee <.LVL376>:
 4ee:	4501                	li	a0,0
 4f0:	6135                	addi	sp,sp,352

000004f2 <.LVL377>:
 4f2:	8082                	ret

000004f4 <.L129>:
 4f4:	873e                	mv	a4,a5

000004f6 <.LVL379>:
 4f6:	be95                	j	6a <.L121>
			4f6: R_RISCV_RVC_JUMP	.L121

Disassembly of section .text.ecc_abort_key256_generation:

00000000 <ecc_abort_key256_generation>:
   0:	1141                	addi	sp,sp,-16

00000002 <.LBB473>:
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	ecc_env
			2: R_RISCV_RELAX	*ABS*

00000006 <.LBE473>:
   6:	c422                	sw	s0,8(sp)

00000008 <.LBB474>:
   8:	0007a403          	lw	s0,0(a5) # 0 <ecc_abort_key256_generation>
			8: R_RISCV_LO12_I	ecc_env
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE474>:
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	4581                	li	a1,0
  12:	00078493          	mv	s1,a5
			12: R_RISCV_LO12_I	ecc_env
			12: R_RISCV_RELAX	*ABS*

00000016 <.L135>:
  16:	e411                	bnez	s0,22 <.L140>
			16: R_RISCV_RVC_BRANCH	.L140

00000018 <.L134>:
  18:	40b2                	lw	ra,12(sp)
  1a:	4422                	lw	s0,8(sp)

0000001c <.LVL384>:
  1c:	4492                	lw	s1,4(sp)
  1e:	0141                	addi	sp,sp,16
  20:	8082                	ret

00000022 <.L140>:
  22:	12245703          	lhu	a4,290(s0)
  26:	04a71763          	bne	a4,a0,74 <.L136>
			26: R_RISCV_BRANCH	.L136
  2a:	00078513          	mv	a0,a5
			2a: R_RISCV_LO12_I	ecc_env
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL386>:
  2e:	8622                	mv	a2,s0
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	ble_co_list_extract_after
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL386+0x2>

00000038 <.LVL387>:
  38:	12c44703          	lbu	a4,300(s0)
  3c:	4789                	li	a5,2
  3e:	00f71b63          	bne	a4,a5,54 <.L137>
			3e: R_RISCV_BRANCH	.L137
  42:	13042503          	lw	a0,304(s0)
  46:	c519                	beqz	a0,54 <.L137>
			46: R_RISCV_RVC_BRANCH	.L137
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	ble_ke_free
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL387+0x10>

00000050 <.LVL388>:
  50:	12042823          	sw	zero,304(s0)

00000054 <.L137>:
  54:	8522                	mv	a0,s0
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ble_ke_free
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.L137+0x2>

0000005e <.LBB475>:
  5e:	409c                	lw	a5,0(s1)
  60:	ffc5                	bnez	a5,18 <.L134>
			60: R_RISCV_RVC_BRANCH	.L134
  62:	4422                	lw	s0,8(sp)

00000064 <.LVL390>:
  64:	40b2                	lw	ra,12(sp)
  66:	4492                	lw	s1,4(sp)
  68:	4501                	li	a0,0
  6a:	0141                	addi	sp,sp,16
  6c:	00000317          	auipc	t1,0x0
			6c: R_RISCV_CALL	ble_ke_event_clear
			6c: R_RISCV_RELAX	*ABS*
  70:	00030067          	jr	t1 # 6c <.LVL390+0x8>

00000074 <.L136>:
  74:	85a2                	mv	a1,s0
  76:	4000                	lw	s0,0(s0)

00000078 <.LVL392>:
  78:	bf79                	j	16 <.L135>
			78: R_RISCV_RVC_JUMP	.L135

Disassembly of section .text.ecc_gen_new_public_key:

00000000 <ecc_gen_new_public_key>:
   0:	87b2                	mv	a5,a2
   2:	000006b7          	lui	a3,0x0
			2: R_RISCV_HI20	.LANCHOR11
			2: R_RISCV_RELAX	*ABS*
   6:	00000637          	lui	a2,0x0
			6: R_RISCV_HI20	.LANCHOR12
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL394>:
   a:	872e                	mv	a4,a1
   c:	00068693          	mv	a3,a3
			c: R_RISCV_LO12_I	.LANCHOR11
			c: R_RISCV_RELAX	*ABS*
  10:	85aa                	mv	a1,a0

00000012 <.LVL395>:
  12:	00060613          	mv	a2,a2
			12: R_RISCV_LO12_I	.LANCHOR12
			12: R_RISCV_RELAX	*ABS*
  16:	4505                	li	a0,1

00000018 <.LVL396>:
  18:	00000317          	auipc	t1,0x0
			18: R_RISCV_CALL	ecc_generate_key256
			18: R_RISCV_RELAX	*ABS*
  1c:	00030067          	jr	t1 # 18 <.LVL396>

Disassembly of section .text.ecc_gen_new_secret_key:

00000000 <ecc_gen_new_secret_key>:
   0:	16059863          	bnez	a1,170 <.L163>
			0: R_RISCV_BRANCH	.L163
   4:	1141                	addi	sp,sp,-16
   6:	c226                	sw	s1,4(sp)

00000008 <.LBB513>:
   8:	000004b7          	lui	s1,0x0
			8: R_RISCV_HI20	.LANCHOR13
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE513>:
   c:	c422                	sw	s0,8(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	842a                	mv	s0,a0

00000014 <.LBB517>:
  14:	597d                	li	s2,-1
  16:	00048493          	mv	s1,s1
			16: R_RISCV_LO12_I	.LANCHOR13
			16: R_RISCV_RELAX	*ABS*

0000001a <.L159>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	bl_rand
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.L159>

00000022 <.LBB520>:
  22:	00855793          	srli	a5,a0,0x8
  26:	00a40023          	sb	a0,0(s0)

0000002a <.LVL401>:
  2a:	00f400a3          	sb	a5,1(s0)

0000002e <.LVL402>:
  2e:	01055793          	srli	a5,a0,0x10
  32:	8161                	srli	a0,a0,0x18

00000034 <.LVL403>:
  34:	00f40123          	sb	a5,2(s0)
  38:	00a401a3          	sb	a0,3(s0)

0000003c <.LBB522>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	bl_rand
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBB522>

00000044 <.LBB524>:
  44:	00855793          	srli	a5,a0,0x8
  48:	00a40223          	sb	a0,4(s0)

0000004c <.LVL406>:
  4c:	00f402a3          	sb	a5,5(s0)

00000050 <.LVL407>:
  50:	01055793          	srli	a5,a0,0x10
  54:	8161                	srli	a0,a0,0x18

00000056 <.LVL408>:
  56:	00f40323          	sb	a5,6(s0)
  5a:	00a403a3          	sb	a0,7(s0)

0000005e <.LBB526>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	bl_rand
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBB526>

00000066 <.LBB528>:
  66:	00855793          	srli	a5,a0,0x8
  6a:	00a40423          	sb	a0,8(s0)

0000006e <.LVL411>:
  6e:	00f404a3          	sb	a5,9(s0)

00000072 <.LVL412>:
  72:	01055793          	srli	a5,a0,0x10
  76:	8161                	srli	a0,a0,0x18

00000078 <.LVL413>:
  78:	00f40523          	sb	a5,10(s0)
  7c:	00a405a3          	sb	a0,11(s0)

00000080 <.LBB530>:
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	bl_rand
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LBB530>

00000088 <.LBB532>:
  88:	00855793          	srli	a5,a0,0x8
  8c:	00a40623          	sb	a0,12(s0)

00000090 <.LVL416>:
  90:	00f406a3          	sb	a5,13(s0)

00000094 <.LVL417>:
  94:	01055793          	srli	a5,a0,0x10
  98:	8161                	srli	a0,a0,0x18

0000009a <.LVL418>:
  9a:	00f40723          	sb	a5,14(s0)
  9e:	00a407a3          	sb	a0,15(s0)

000000a2 <.LBB534>:
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	bl_rand
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LBB534>

000000aa <.LBB536>:
  aa:	00855793          	srli	a5,a0,0x8
  ae:	00a40823          	sb	a0,16(s0)

000000b2 <.LVL421>:
  b2:	00f408a3          	sb	a5,17(s0)

000000b6 <.LVL422>:
  b6:	01055793          	srli	a5,a0,0x10
  ba:	8161                	srli	a0,a0,0x18

000000bc <.LVL423>:
  bc:	00f40923          	sb	a5,18(s0)
  c0:	00a409a3          	sb	a0,19(s0)

000000c4 <.LBB538>:
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	bl_rand
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.LBB538>

000000cc <.LBB540>:
  cc:	00855793          	srli	a5,a0,0x8
  d0:	00a40a23          	sb	a0,20(s0)

000000d4 <.LVL426>:
  d4:	00f40aa3          	sb	a5,21(s0)

000000d8 <.LVL427>:
  d8:	01055793          	srli	a5,a0,0x10
  dc:	8161                	srli	a0,a0,0x18

000000de <.LVL428>:
  de:	00f40b23          	sb	a5,22(s0)
  e2:	00a40ba3          	sb	a0,23(s0)

000000e6 <.LBB542>:
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	bl_rand
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.LBB542>

000000ee <.LBB544>:
  ee:	00855793          	srli	a5,a0,0x8
  f2:	00a40c23          	sb	a0,24(s0)

000000f6 <.LVL431>:
  f6:	00f40ca3          	sb	a5,25(s0)

000000fa <.LVL432>:
  fa:	01055793          	srli	a5,a0,0x10
  fe:	8161                	srli	a0,a0,0x18

00000100 <.LVL433>:
 100:	00f40d23          	sb	a5,26(s0)
 104:	00a40da3          	sb	a0,27(s0)

00000108 <.LBB546>:
 108:	00000097          	auipc	ra,0x0
			108: R_RISCV_CALL	bl_rand
			108: R_RISCV_RELAX	*ABS*
 10c:	000080e7          	jalr	ra # 108 <.LBB546>

00000110 <.LBB548>:
 110:	00855793          	srli	a5,a0,0x8
 114:	00a40e23          	sb	a0,28(s0)

00000118 <.LVL436>:
 118:	00f40ea3          	sb	a5,29(s0)

0000011c <.LVL437>:
 11c:	01055793          	srli	a5,a0,0x10
 120:	8161                	srli	a0,a0,0x18

00000122 <.LVL438>:
 122:	00f40f23          	sb	a5,30(s0)
 126:	00a40fa3          	sb	a0,31(s0)

0000012a <.LBB550>:
 12a:	47fd                	li	a5,31

0000012c <.L150>:
 12c:	00f40733          	add	a4,s0,a5
 130:	00074703          	lbu	a4,0(a4)
 134:	eb01                	bnez	a4,144 <.L154>
			134: R_RISCV_RVC_BRANCH	.L154
 136:	17fd                	addi	a5,a5,-1
 138:	ff279ae3          	bne	a5,s2,12c <.L150>
			138: R_RISCV_BRANCH	.L150
 13c:	00044783          	lbu	a5,0(s0)

00000140 <.LVL442>:
 140:	ec078de3          	beqz	a5,1a <.L159>
			140: R_RISCV_BRANCH	.L159

00000144 <.L154>:
 144:	47fd                	li	a5,31

00000146 <.L153>:
 146:	00f40733          	add	a4,s0,a5
 14a:	00074683          	lbu	a3,0(a4)
 14e:	00f48733          	add	a4,s1,a5
 152:	00074703          	lbu	a4,0(a4)
 156:	ecd762e3          	bltu	a4,a3,1a <.L159>
			156: R_RISCV_BRANCH	.L159
 15a:	00e6e563          	bltu	a3,a4,164 <.L147>
			15a: R_RISCV_BRANCH	.L147
 15e:	17fd                	addi	a5,a5,-1
 160:	ff2793e3          	bne	a5,s2,146 <.L153>
			160: R_RISCV_BRANCH	.L153

00000164 <.L147>:
 164:	40b2                	lw	ra,12(sp)
 166:	4422                	lw	s0,8(sp)

00000168 <.LVL445>:
 168:	4492                	lw	s1,4(sp)
 16a:	4902                	lw	s2,0(sp)
 16c:	0141                	addi	sp,sp,16
 16e:	8082                	ret

00000170 <.L163>:
 170:	8082                	ret

Disassembly of section .text.ecc_get_debug_Keys:

00000000 <ecc_get_debug_Keys>:
   0:	00000837          	lui	a6,0x0
			0: R_RISCV_HI20	.LANCHOR14
			0: R_RISCV_RELAX	*ABS*
   4:	000006b7          	lui	a3,0x0
			4: R_RISCV_HI20	.LANCHOR15
			4: R_RISCV_RELAX	*ABS*
   8:	00000737          	lui	a4,0x0
			8: R_RISCV_HI20	.LANCHOR16
			8: R_RISCV_RELAX	*ABS*
   c:	47fd                	li	a5,31
   e:	00080813          	mv	a6,a6
			e: R_RISCV_LO12_I	.LANCHOR14
			e: R_RISCV_RELAX	*ABS*
  12:	00068693          	mv	a3,a3
			12: R_RISCV_LO12_I	.LANCHOR15
			12: R_RISCV_RELAX	*ABS*
  16:	00070713          	mv	a4,a4
			16: R_RISCV_LO12_I	.LANCHOR16
			16: R_RISCV_RELAX	*ABS*
  1a:	58fd                	li	a7,-1

0000001c <.L167>:
  1c:	00f80333          	add	t1,a6,a5
  20:	00034e03          	lbu	t3,0(t1)
  24:	00f58333          	add	t1,a1,a5
  28:	01c30023          	sb	t3,0(t1)
  2c:	00f68333          	add	t1,a3,a5
  30:	00034e03          	lbu	t3,0(t1)
  34:	00f60333          	add	t1,a2,a5
  38:	01c30023          	sb	t3,0(t1)
  3c:	00f70333          	add	t1,a4,a5
  40:	00034e03          	lbu	t3,0(t1)
  44:	00f50333          	add	t1,a0,a5
  48:	17fd                	addi	a5,a5,-1

0000004a <.LVL449>:
  4a:	01c30023          	sb	t3,0(t1)
  4e:	fd1797e3          	bne	a5,a7,1c <.L167>
			4e: R_RISCV_BRANCH	.L167
  52:	8082                	ret
