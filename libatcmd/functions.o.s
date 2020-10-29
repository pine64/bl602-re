
functions.o:     file format elf32-littleriscv


Disassembly of section .text.cipsta_ip_get:

00000000 <cipsta_ip_get>:
   0:	7175                	addi	sp,sp,-144
   2:	0810                	addi	a2,sp,16
   4:	006c                	addi	a1,sp,12

00000006 <.LVL1>:
   6:	0028                	addi	a0,sp,8

00000008 <.LVL2>:
   8:	c706                	sw	ra,140(sp)
   a:	c522                	sw	s0,136(sp)
   c:	c402                	sw	zero,8(sp)
   e:	c602                	sw	zero,12(sp)
  10:	c802                	sw	zero,16(sp)
  12:	ca02                	sw	zero,20(sp)
  14:	cc02                	sw	zero,24(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL2+0xe>

0000001e <.LVL3>:
  1e:	0028                	addi	a0,sp,8
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL3+0x2>

00000028 <.LVL4>:
  28:	85aa                	mv	a1,a0
  2a:	0868                	addi	a0,sp,28
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL4+0x4>

00000034 <.LVL5>:
  34:	0068                	addi	a0,sp,12
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL5+0x2>

0000003e <.LVL6>:
  3e:	85aa                	mv	a1,a0
  40:	1808                	addi	a0,sp,48
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL6+0x4>

0000004a <.LVL7>:
  4a:	0808                	addi	a0,sp,16
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL7+0x2>

00000054 <.LVL8>:
  54:	85aa                	mv	a1,a0
  56:	00c8                	addi	a0,sp,68
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL8+0x4>

00000060 <.LVL9>:
  60:	082c                	addi	a1,sp,24
  62:	0848                	addi	a0,sp,20
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL9+0x4>

0000006c <.LVL10>:
  6c:	0848                	addi	a0,sp,20
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL10+0x2>

00000076 <.LVL11>:
  76:	85aa                	mv	a1,a0
  78:	08a8                	addi	a0,sp,88
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL11+0x4>

00000082 <.LVL12>:
  82:	0828                	addi	a0,sp,24
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL12+0x2>

0000008c <.LVL13>:
  8c:	85aa                	mv	a1,a0
  8e:	10e8                	addi	a0,sp,108
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL13+0x4>

00000098 <.LVL14>:
  98:	00000437          	lui	s0,0x0
  9c:	00040513          	mv	a0,s0
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL14+0x8>

000000a8 <.LVL15>:
  a8:	00000537          	lui	a0,0x0
  ac:	10fc                	addi	a5,sp,108
  ae:	08b8                	addi	a4,sp,88
  b0:	00d4                	addi	a3,sp,68
  b2:	1810                	addi	a2,sp,48
  b4:	086c                	addi	a1,sp,28
  b6:	00050513          	mv	a0,a0
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.LVL15+0x12>

000000c2 <.LVL16>:
  c2:	00040513          	mv	a0,s0
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL16+0x4>

000000ce <.LVL17>:
  ce:	40ba                	lw	ra,140(sp)
  d0:	442a                	lw	s0,136(sp)
  d2:	4501                	li	a0,0
  d4:	6149                	addi	sp,sp,144
  d6:	8082                	ret

Disassembly of section .text.version:

00000000 <version>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040513          	mv	a0,s0

0000000c <.LVL19>:
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL19+0x2>

00000016 <.LVL20>:
  16:	00000637          	lui	a2,0x0
  1a:	000005b7          	lui	a1,0x0
  1e:	00000537          	lui	a0,0x0
  22:	00060613          	mv	a2,a2
  26:	00058593          	mv	a1,a1
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL20+0x18>

00000036 <.LVL21>:
  36:	00040513          	mv	a0,s0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL21+0x4>

00000042 <.LVL22>:
  42:	00040513          	mv	a0,s0
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL22+0x4>

0000004e <.LVL23>:
  4e:	00000537          	lui	a0,0x0
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL23+0x8>

0000005e <.LVL24>:
  5e:	00040513          	mv	a0,s0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL24+0x4>

0000006a <.LVL25>:
  6a:	00040513          	mv	a0,s0
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL25+0x4>

00000076 <.LVL26>:
  76:	00000637          	lui	a2,0x0
  7a:	000005b7          	lui	a1,0x0
  7e:	00000537          	lui	a0,0x0
  82:	00060613          	mv	a2,a2
  86:	00058593          	mv	a1,a1
  8a:	00050513          	mv	a0,a0
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.LVL26+0x18>

00000096 <.LVL27>:
  96:	00040513          	mv	a0,s0
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL27+0x4>

000000a2 <.LVL28>:
  a2:	40b2                	lw	ra,12(sp)
  a4:	4422                	lw	s0,8(sp)
  a6:	4501                	li	a0,0
  a8:	0141                	addi	sp,sp,16
  aa:	8082                	ret

Disassembly of section .text.cipsta_ip:

00000000 <cipsta_ip>:
   0:	7139                	addi	sp,sp,-64
   2:	0070                	addi	a2,sp,12
   4:	dc22                	sw	s0,56(sp)
   6:	080c                	addi	a1,sp,16

00000008 <.LVL30>:
   8:	842a                	mv	s0,a0
   a:	0028                	addi	a0,sp,8

0000000c <.LVL31>:
   c:	de06                	sw	ra,60(sp)
   e:	da26                	sw	s1,52(sp)
  10:	d84a                	sw	s2,48(sp)
  12:	c402                	sw	zero,8(sp)
  14:	c602                	sw	zero,12(sp)
  16:	c802                	sw	zero,16(sp)
  18:	ca02                	sw	zero,20(sp)
  1a:	cc02                	sw	zero,24(sp)
  1c:	ce02                	sw	zero,28(sp)
  1e:	d002                	sw	zero,32(sp)
  20:	d202                	sw	zero,36(sp)
  22:	d402                	sw	zero,40(sp)
  24:	d602                	sw	zero,44(sp)
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL31+0x1a>

0000002e <.LVL32>:
  2e:	082c                	addi	a1,sp,24
  30:	0848                	addi	a0,sp,20
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL32+0x4>

0000003a <.LVL33>:
  3a:	00b44783          	lbu	a5,11(s0) # b <.LVL30+0x3>
  3e:	00a44703          	lbu	a4,10(s0)
  42:	00944683          	lbu	a3,9(s0)
  46:	00844603          	lbu	a2,8(s0)
  4a:	00000937          	lui	s2,0x0
  4e:	00090593          	mv	a1,s2
  52:	0868                	addi	a0,sp,28
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL33+0x1a>

0000005c <.LVL34>:
  5c:	0868                	addi	a0,sp,28
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL34+0x2>

00000066 <.LVL35>:
  66:	c42a                	sw	a0,8(sp)
  68:	00000537          	lui	a0,0x0
  6c:	00050513          	mv	a0,a0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL35+0xa>

00000078 <.LVL36>:
  78:	0868                	addi	a0,sp,28
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL36+0x2>

00000082 <.LVL37>:
  82:	000004b7          	lui	s1,0x0
  86:	00048513          	mv	a0,s1
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL37+0x8>

00000092 <.LVL38>:
  92:	481c                	lw	a5,16(s0)
  94:	cba9                	beqz	a5,e6 <.L6>
  96:	01344783          	lbu	a5,19(s0)
  9a:	01244703          	lbu	a4,18(s0)
  9e:	01144683          	lbu	a3,17(s0)
  a2:	01044603          	lbu	a2,16(s0)
  a6:	00090593          	mv	a1,s2
  aa:	0868                	addi	a0,sp,28
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL38+0x1a>

000000b4 <.LVL39>:
  b4:	0868                	addi	a0,sp,28
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LVL39+0x2>

000000be <.LVL40>:
  be:	c62a                	sw	a0,12(sp)
  c0:	00000537          	lui	a0,0x0
  c4:	00050513          	mv	a0,a0
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL40+0xa>

000000d0 <.LVL41>:
  d0:	0868                	addi	a0,sp,28
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL41+0x2>

000000da <.LVL42>:
  da:	00048513          	mv	a0,s1
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.LVL42+0x4>

000000e6 <.L6>:
  e6:	445c                	lw	a5,12(s0)
  e8:	cba9                	beqz	a5,13a <.L7>
  ea:	00f44783          	lbu	a5,15(s0)
  ee:	00e44703          	lbu	a4,14(s0)
  f2:	00d44683          	lbu	a3,13(s0)
  f6:	00c44603          	lbu	a2,12(s0)
  fa:	00090593          	mv	a1,s2
  fe:	0868                	addi	a0,sp,28
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L6+0x1a>

00000108 <.LVL44>:
 108:	0868                	addi	a0,sp,28
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL44+0x2>

00000112 <.LVL45>:
 112:	c82a                	sw	a0,16(sp)
 114:	00000537          	lui	a0,0x0
 118:	00050513          	mv	a0,a0
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL45+0xa>

00000124 <.LVL46>:
 124:	0868                	addi	a0,sp,28
 126:	00000097          	auipc	ra,0x0
 12a:	000080e7          	jalr	ra # 126 <.LVL46+0x2>

0000012e <.LVL47>:
 12e:	00048513          	mv	a0,s1
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LVL47+0x4>

0000013a <.L7>:
 13a:	485c                	lw	a5,20(s0)
 13c:	cba9                	beqz	a5,18e <.L8>
 13e:	01744783          	lbu	a5,23(s0)
 142:	01644703          	lbu	a4,22(s0)
 146:	01544683          	lbu	a3,21(s0)
 14a:	01444603          	lbu	a2,20(s0)
 14e:	00090593          	mv	a1,s2
 152:	0868                	addi	a0,sp,28
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.L7+0x1a>

0000015c <.LVL49>:
 15c:	0868                	addi	a0,sp,28
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL49+0x2>

00000166 <.LVL50>:
 166:	ca2a                	sw	a0,20(sp)
 168:	00000537          	lui	a0,0x0
 16c:	00050513          	mv	a0,a0
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL50+0xa>

00000178 <.LVL51>:
 178:	0868                	addi	a0,sp,28
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.LVL51+0x2>

00000182 <.LVL52>:
 182:	00048513          	mv	a0,s1
 186:	00000097          	auipc	ra,0x0
 18a:	000080e7          	jalr	ra # 186 <.LVL52+0x4>

0000018e <.L8>:
 18e:	4c1c                	lw	a5,24(s0)
 190:	cba9                	beqz	a5,1e2 <.L9>
 192:	01b44783          	lbu	a5,27(s0)
 196:	01a44703          	lbu	a4,26(s0)
 19a:	01944683          	lbu	a3,25(s0)
 19e:	01844603          	lbu	a2,24(s0)
 1a2:	00090593          	mv	a1,s2
 1a6:	0868                	addi	a0,sp,28
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.L8+0x1a>

000001b0 <.LVL54>:
 1b0:	0868                	addi	a0,sp,28
 1b2:	00000097          	auipc	ra,0x0
 1b6:	000080e7          	jalr	ra # 1b2 <.LVL54+0x2>

000001ba <.LVL55>:
 1ba:	cc2a                	sw	a0,24(sp)
 1bc:	00000537          	lui	a0,0x0
 1c0:	00050513          	mv	a0,a0
 1c4:	00000097          	auipc	ra,0x0
 1c8:	000080e7          	jalr	ra # 1c4 <.LVL55+0xa>

000001cc <.LVL56>:
 1cc:	0868                	addi	a0,sp,28
 1ce:	00000097          	auipc	ra,0x0
 1d2:	000080e7          	jalr	ra # 1ce <.LVL56+0x2>

000001d6 <.LVL57>:
 1d6:	00048513          	mv	a0,s1
 1da:	00000097          	auipc	ra,0x0
 1de:	000080e7          	jalr	ra # 1da <.LVL57+0x4>

000001e2 <.L9>:
 1e2:	4762                	lw	a4,24(sp)
 1e4:	46d2                	lw	a3,20(sp)
 1e6:	4642                	lw	a2,16(sp)
 1e8:	45b2                	lw	a1,12(sp)
 1ea:	4522                	lw	a0,8(sp)
 1ec:	00000097          	auipc	ra,0x0
 1f0:	000080e7          	jalr	ra # 1ec <.L9+0xa>

000001f4 <.LVL59>:
 1f4:	50f2                	lw	ra,60(sp)
 1f6:	5462                	lw	s0,56(sp)

000001f8 <.LVL60>:
 1f8:	54d2                	lw	s1,52(sp)
 1fa:	5942                	lw	s2,48(sp)
 1fc:	4501                	li	a0,0
 1fe:	6121                	addi	sp,sp,64
 200:	8082                	ret

Disassembly of section .text.http_url_req:

00000000 <http_url_req>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	00000937          	lui	s2,0x0
   8:	00092783          	lw	a5,0(s2) # 0 <http_url_req>
   c:	d422                	sw	s0,40(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	d606                	sw	ra,44(sp)
  12:	d226                	sw	s1,36(sp)
  14:	ce4e                	sw	s3,28(sp)
  16:	ca56                	sw	s5,20(sp)
  18:	c85a                	sw	s6,16(sp)
  1a:	842a                	mv	s0,a0
  1c:	8a2e                	mv	s4,a1
  1e:	00090913          	mv	s2,s2
  22:	eb91                	bnez	a5,36 <.L24>
  24:	460d                	li	a2,3
  26:	4581                	li	a1,0

00000028 <.LVL62>:
  28:	4505                	li	a0,1

0000002a <.LVL63>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL63>

00000032 <.LVL64>:
  32:	00a92023          	sw	a0,0(s2)

00000036 <.L24>:
  36:	08000513          	li	a0,128
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.L24+0x4>

00000042 <.LVL65>:
  42:	84aa                	mv	s1,a0

00000044 <.LVL66>:
  44:	4509                	li	a0,2
  46:	10048c63          	beqz	s1,15e <.L25>
  4a:	00000ab7          	lui	s5,0x0
  4e:	4671                	li	a2,28
  50:	4581                	li	a1,0
  52:	000a8513          	mv	a0,s5
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL66+0x12>

0000005e <.LVL67>:
  5e:	08844783          	lbu	a5,136(s0)
  62:	000a8993          	mv	s3,s5
  66:	0421                	addi	s0,s0,8

00000068 <.LVL68>:
  68:	00f983a3          	sb	a5,7(s3)
  6c:	08144783          	lbu	a5,129(s0)
  70:	00000b37          	lui	s6,0x0
  74:	000b0593          	mv	a1,s6
  78:	00f98623          	sb	a5,12(s3)
  7c:	08442783          	lw	a5,132(s0)
  80:	8522                	mv	a0,s0
  82:	00098323          	sb	zero,6(s3)
  86:	00f9a423          	sw	a5,8(s3)
  8a:	000007b7          	lui	a5,0x0
  8e:	00078793          	mv	a5,a5
  92:	00f9aa23          	sw	a5,20(s3)
  96:	000007b7          	lui	a5,0x0
  9a:	00078793          	mv	a5,a5
  9e:	00f9ac23          	sw	a5,24(s3)
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.LVL68+0x3a>

000000aa <.LVL69>:
  aa:	89aa                	mv	s3,a0

000000ac <.LVL70>:
  ac:	e119                	bnez	a0,b2 <.L26>
  ae:	000b0993          	mv	s3,s6

000000b2 <.L26>:
  b2:	85a2                	mv	a1,s0
  b4:	8526                	mv	a0,s1
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.L26+0x4>

000000be <.LVL72>:
  be:	40898433          	sub	s0,s3,s0

000000c2 <.LVL73>:
  c2:	9426                	add	s0,s0,s1
  c4:	000005b7          	lui	a1,0x0
  c8:	00040023          	sb	zero,0(s0)
  cc:	00058593          	mv	a1,a1
  d0:	8526                	mv	a0,s1
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL73+0x10>

000000da <.LVL74>:
  da:	05000413          	li	s0,80
  de:	c909                	beqz	a0,f0 <.L27>
  e0:	00050023          	sb	zero,0(a0) # 0 <http_url_req>

000000e4 <.LVL75>:
  e4:	0505                	addi	a0,a0,1

000000e6 <.LVL76>:
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL76>

000000ee <.LVL77>:
  ee:	842a                	mv	s0,a0

000000f0 <.L27>:
  f0:	8526                	mv	a0,s1
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.L27+0x2>

000000fa <.LVL79>:
  fa:	01041593          	slli	a1,s0,0x10
  fe:	00000837          	lui	a6,0x0
 102:	c62a                	sw	a0,12(sp)
 104:	57fd                	li	a5,-1
 106:	81c1                	srli	a1,a1,0x10
 108:	00000737          	lui	a4,0x0
 10c:	00080813          	mv	a6,a6
 110:	06f50163          	beq	a0,a5,172 <.L28>
 114:	87d2                	mv	a5,s4
 116:	00070713          	mv	a4,a4
 11a:	000a8693          	mv	a3,s5
 11e:	864e                	mv	a2,s3
 120:	0068                	addi	a0,sp,12
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.LVL79+0x28>

0000012a <.L29>:
 12a:	00092503          	lw	a0,0(s2)
 12e:	6589                	lui	a1,0x2
 130:	71058593          	addi	a1,a1,1808 # 2710 <.LASF463+0x11>
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.L29+0xa>

0000013c <.LVL81>:
 13c:	4785                	li	a5,1
 13e:	04f50663          	beq	a0,a5,18a <.L30>
 142:	00092503          	lw	a0,0(s2)
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.LVL81+0xa>

0000014e <.LVL82>:
 14e:	8526                	mv	a0,s1
 150:	00092023          	sw	zero,0(s2)
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.LVL82+0x6>

0000015c <.LVL83>:
 15c:	454d                	li	a0,19

0000015e <.L25>:
 15e:	50b2                	lw	ra,44(sp)
 160:	5422                	lw	s0,40(sp)
 162:	5492                	lw	s1,36(sp)

00000164 <.LVL85>:
 164:	5902                	lw	s2,32(sp)
 166:	49f2                	lw	s3,28(sp)
 168:	4a62                	lw	s4,24(sp)

0000016a <.LVL86>:
 16a:	4ad2                	lw	s5,20(sp)
 16c:	4b42                	lw	s6,16(sp)
 16e:	6145                	addi	sp,sp,48
 170:	8082                	ret

00000172 <.L28>:
 172:	87d2                	mv	a5,s4
 174:	00070713          	mv	a4,a4
 178:	000a8693          	mv	a3,s5
 17c:	864e                	mv	a2,s3
 17e:	8526                	mv	a0,s1
 180:	00000097          	auipc	ra,0x0
 184:	000080e7          	jalr	ra # 180 <.L28+0xe>

00000188 <.LVL88>:
 188:	b74d                	j	12a <.L29>

0000018a <.L30>:
 18a:	8526                	mv	a0,s1
 18c:	00000097          	auipc	ra,0x0
 190:	000080e7          	jalr	ra # 18c <.L30+0x2>

00000194 <.LVL89>:
 194:	4501                	li	a0,0
 196:	b7e1                	j	15e <.L25>

Disassembly of section .text.cb_altcp_recv_fn:

00000000 <cb_altcp_recv_fn>:
   0:	1141                	addi	sp,sp,-16
   2:	00000737          	lui	a4,0x0
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	c606                	sw	ra,12(sp)
   e:	00070713          	mv	a4,a4
  12:	431c                	lw	a5,0(a4)
  14:	84aa                	mv	s1,a0

00000016 <.LVL91>:
  16:	892e                	mv	s2,a1
  18:	00178693          	addi	a3,a5,1 # 1 <cb_altcp_recv_fn+0x1>

0000001c <.LVL92>:
  1c:	c314                	sw	a3,0(a4)
  1e:	03f7f793          	andi	a5,a5,63
  22:	8432                	mv	s0,a2
  24:	eb89                	bnez	a5,36 <.L36>
  26:	00000537          	lui	a0,0x0

0000002a <.LVL93>:
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL93+0x4>

00000036 <.L36>:
  36:	00845583          	lhu	a1,8(s0)
  3a:	854a                	mv	a0,s2
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.L36+0x6>

00000044 <.LVL95>:
  44:	c899                	beqz	s1,5a <.L38>
  46:	449c                	lw	a5,8(s1)
  48:	4048                	lw	a0,4(s0)
  4a:	e785                	bnez	a5,72 <.L39>
  4c:	00845583          	lhu	a1,8(s0)
  50:	c18d                	beqz	a1,72 <.L39>
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL95+0xe>

0000005a <.L38>:
  5a:	8522                	mv	a0,s0
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L38+0x2>

00000064 <.LVL97>:
  64:	40b2                	lw	ra,12(sp)
  66:	4422                	lw	s0,8(sp)

00000068 <.LVL98>:
  68:	4492                	lw	s1,4(sp)

0000006a <.LVL99>:
  6a:	4902                	lw	s2,0(sp)

0000006c <.LVL100>:
  6c:	4501                	li	a0,0
  6e:	0141                	addi	sp,sp,16
  70:	8082                	ret

00000072 <.L39>:
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L39>

0000007a <.LVL102>:
  7a:	44dc                	lw	a5,12(s1)
  7c:	00a7ea63          	bltu	a5,a0,90 <.L40>
  80:	4488                	lw	a0,8(s1)
  82:	dd61                	beqz	a0,5a <.L38>
  84:	404c                	lw	a1,4(s0)
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL102+0xc>

0000008e <.LVL103>:
  8e:	b7f1                	j	5a <.L38>

00000090 <.L40>:
  90:	00000537          	lui	a0,0x0
  94:	00050513          	mv	a0,a0
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.L40+0x8>

000000a0 <.LVL104>:
  a0:	bf6d                	j	5a <.L38>

Disassembly of section .text.cb_httpc_result:

00000000 <cb_httpc_result>:
   0:	00000537          	lui	a0,0x0

00000004 <.LVL106>:
   4:	1141                	addi	sp,sp,-16
   6:	85ba                	mv	a1,a4

00000008 <.LVL107>:
   8:	00050513          	mv	a0,a0
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL107+0x6>

00000016 <.LVL108>:
  16:	000007b7          	lui	a5,0x0
  1a:	0007a503          	lw	a0,0(a5) # 0 <cb_httpc_result>
  1e:	c911                	beqz	a0,32 <.L49>
  20:	40b2                	lw	ra,12(sp)
  22:	4681                	li	a3,0
  24:	4601                	li	a2,0
  26:	4581                	li	a1,0
  28:	0141                	addi	sp,sp,16
  2a:	00000317          	auipc	t1,0x0
  2e:	00030067          	jr	t1 # 2a <.LVL108+0x14>

00000032 <.L49>:
  32:	40b2                	lw	ra,12(sp)
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.ap_sta_get:

00000000 <ap_sta_get>:
   0:	715d                	addi	sp,sp,-80
   2:	01310513          	addi	a0,sp,19

00000006 <.LVL111>:
   6:	c686                	sw	ra,76(sp)
   8:	c4a2                	sw	s0,72(sp)
   a:	c2a6                	sw	s1,68(sp)
   c:	c0ca                	sw	s2,64(sp)
   e:	000109a3          	sb	zero,19(sp)
  12:	ca02                	sw	zero,20(sp)
  14:	cc02                	sw	zero,24(sp)
  16:	ce02                	sw	zero,28(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL111+0x12>

00000020 <.LVL112>:
  20:	0870                	addi	a2,sp,28
  22:	082c                	addi	a1,sp,24
  24:	0848                	addi	a0,sp,20
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL112+0x6>

0000002e <.LVL113>:
  2e:	1008                	addi	a0,sp,32
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL113+0x2>

00000038 <.LVL114>:
  38:	000004b7          	lui	s1,0x0
  3c:	00048513          	mv	a0,s1
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL114+0x8>

00000048 <.LVL115>:
  48:	0848                	addi	a0,sp,20
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL115+0x2>

00000052 <.LVL116>:
  52:	02514783          	lbu	a5,37(sp)
  56:	02414883          	lbu	a7,36(sp)
  5a:	02314803          	lbu	a6,35(sp)
  5e:	c03e                	sw	a5,0(sp)
  60:	02114703          	lbu	a4,33(sp)
  64:	02214783          	lbu	a5,34(sp)
  68:	02014683          	lbu	a3,32(sp)
  6c:	862a                	mv	a2,a0
  6e:	000005b7          	lui	a1,0x0
  72:	00000537          	lui	a0,0x0
  76:	00058593          	mv	a1,a1
  7a:	00050513          	mv	a0,a0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL116+0x2c>

00000086 <.LVL117>:
  86:	00048513          	mv	a0,s1
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL117+0x4>

00000092 <.LVL118>:
  92:	4401                	li	s0,0
  94:	00000937          	lui	s2,0x0

00000098 <.L53>:
  98:	01314783          	lbu	a5,19(sp)
  9c:	00f46963          	bltu	s0,a5,ae <.L55>
  a0:	40b6                	lw	ra,76(sp)
  a2:	4426                	lw	s0,72(sp)

000000a4 <.LVL120>:
  a4:	4496                	lw	s1,68(sp)
  a6:	4906                	lw	s2,64(sp)
  a8:	4501                	li	a0,0
  aa:	6161                	addi	sp,sp,80
  ac:	8082                	ret

000000ae <.L55>:
  ae:	85a2                	mv	a1,s0
  b0:	1028                	addi	a0,sp,40
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.L55+0x4>

000000ba <.LVL122>:
  ba:	02914783          	lbu	a5,41(sp)
  be:	c3b9                	beqz	a5,104 <.L54>
  c0:	00048513          	mv	a0,s1
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL122+0xa>

000000cc <.LVL123>:
  cc:	57e2                	lw	a5,56(sp)
  ce:	02f14883          	lbu	a7,47(sp)
  d2:	02e14803          	lbu	a6,46(sp)
  d6:	c03e                	sw	a5,0(sp)
  d8:	02c14703          	lbu	a4,44(sp)
  dc:	02d14783          	lbu	a5,45(sp)
  e0:	02b14683          	lbu	a3,43(sp)
  e4:	02a14603          	lbu	a2,42(sp)
  e8:	02814583          	lbu	a1,40(sp)
  ec:	00090513          	mv	a0,s2
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LVL123+0x24>

000000f8 <.LVL124>:
  f8:	00048513          	mv	a0,s1
  fc:	00000097          	auipc	ra,0x0
 100:	000080e7          	jalr	ra # fc <.LVL124+0x4>

00000104 <.L54>:
 104:	0405                	addi	s0,s0,1

00000106 <.LVL126>:
 106:	0ff47413          	andi	s0,s0,255

0000010a <.LVL127>:
 10a:	b779                	j	98 <.L53>

Disassembly of section .text.cwmode_cur_get:

00000000 <cwmode_cur_get>:
   0:	00850593          	addi	a1,a0,8 # 8 <.LVL130>

00000004 <.LVL129>:
   4:	00000537          	lui	a0,0x0

00000008 <.LVL130>:
   8:	1141                	addi	sp,sp,-16
   a:	00050513          	mv	a0,a0
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL130+0x8>

00000018 <.LVL131>:
  18:	40b2                	lw	ra,12(sp)
  1a:	4501                	li	a0,0
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

Disassembly of section .text.uart_get:

00000000 <uart_get>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00c50593          	addi	a1,a0,12 # c <.LVL133+0x4>

00000008 <.LVL133>:
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL134>:
   e:	00050513          	mv	a0,a0
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL134+0x6>

0000001c <.LVL135>:
  1c:	00000537          	lui	a0,0x0
  20:	01040593          	addi	a1,s0,16
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL135+0xc>

00000030 <.LVL136>:
  30:	00000537          	lui	a0,0x0
  34:	01840593          	addi	a1,s0,24
  38:	00050513          	mv	a0,a0
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL136+0xc>

00000044 <.LVL137>:
  44:	00000537          	lui	a0,0x0
  48:	01440593          	addi	a1,s0,20
  4c:	00050513          	mv	a0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL137+0xc>

00000058 <.LVL138>:
  58:	00000537          	lui	a0,0x0
  5c:	01c40593          	addi	a1,s0,28
  60:	00050513          	mv	a0,a0
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL138+0xc>

0000006c <.LVL139>:
  6c:	40b2                	lw	ra,12(sp)
  6e:	4422                	lw	s0,8(sp)

00000070 <.LVL140>:
  70:	4501                	li	a0,0
  72:	0141                	addi	sp,sp,16
  74:	8082                	ret

Disassembly of section .text.cwqap:

00000000 <cwqap>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <cwqap+0x4>

0000000c <.LVL142>:
   c:	3e800513          	li	a0,1000
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL142+0x4>

00000018 <.LVL143>:
  18:	4501                	li	a0,0
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL143+0x2>

00000022 <.LVL144>:
  22:	40b2                	lw	ra,12(sp)
  24:	4501                	li	a0,0
  26:	0141                	addi	sp,sp,16
  28:	8082                	ret

Disassembly of section .text.cwjap_info:

00000000 <cwjap_info>:
   0:	7111                	addi	sp,sp,-256
   2:	0ae00613          	li	a2,174
   6:	4581                	li	a1,0

00000008 <.LVL146>:
   8:	0088                	addi	a0,sp,64

0000000a <.LVL147>:
   a:	df86                	sw	ra,252(sp)
   c:	dda2                	sw	s0,248(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL147+0x4>

00000016 <.LVL148>:
  16:	1808                	addi	a0,sp,48
  18:	da02                	sw	zero,52(sp)
  1a:	dc02                	sw	zero,56(sp)
  1c:	de02                	sw	zero,60(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL148+0x8>

00000026 <.LVL149>:
  26:	57c2                	lw	a5,48(sp)
  28:	4705                	li	a4,1
  2a:	17f5                	addi	a5,a5,-3
  2c:	00f76e63          	bltu	a4,a5,48 <.L67>
  30:	0088                	addi	a0,sp,64
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL149+0xc>

0000003a <.LVL150>:
  3a:	1870                	addi	a2,sp,60
  3c:	182c                	addi	a1,sp,56
  3e:	1848                	addi	a0,sp,52
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL150+0x6>

00000048 <.L67>:
  48:	55c2                	lw	a1,48(sp)
  4a:	00000537          	lui	a0,0x0
  4e:	00050513          	mv	a0,a0
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.L67+0xa>

0000005a <.LVL152>:
  5a:	00000437          	lui	s0,0x0
  5e:	00040513          	mv	a0,s0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL152+0x8>

0000006a <.LVL153>:
  6a:	0e414603          	lbu	a2,228(sp)
  6e:	0e514683          	lbu	a3,229(sp)
  72:	0e614703          	lbu	a4,230(sp)
  76:	0e714783          	lbu	a5,231(sp)
  7a:	0e814803          	lbu	a6,232(sp)
  7e:	0e914883          	lbu	a7,233(sp)
  82:	1848                	addi	a0,sp,52
  84:	d632                	sw	a2,44(sp)
  86:	d436                	sw	a3,40(sp)
  88:	d23a                	sw	a4,36(sp)
  8a:	d03e                	sw	a5,32(sp)
  8c:	ce42                	sw	a6,28(sp)
  8e:	cc46                	sw	a7,24(sp)
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL153+0x26>

00000098 <.LVL154>:
  98:	48e2                	lw	a7,24(sp)
  9a:	4872                	lw	a6,28(sp)
  9c:	5782                	lw	a5,32(sp)
  9e:	5712                	lw	a4,36(sp)
  a0:	56a2                	lw	a3,40(sp)
  a2:	5632                	lw	a2,44(sp)
  a4:	c02a                	sw	a0,0(sp)
  a6:	00000537          	lui	a0,0x0
  aa:	04310593          	addi	a1,sp,67
  ae:	00050513          	mv	a0,a0
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.LVL154+0x1a>

000000ba <.LVL155>:
  ba:	00040513          	mv	a0,s0
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL155+0x4>

000000c6 <.LVL156>:
  c6:	50fe                	lw	ra,252(sp)
  c8:	546e                	lw	s0,248(sp)
  ca:	4501                	li	a0,0
  cc:	6111                	addi	sp,sp,256
  ce:	8082                	ret

Disassembly of section .text.deep_sleep:

00000000 <deep_sleep>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	00c54783          	lbu	a5,12(a0) # c <deep_sleep+0xc>
   c:	4705                	li	a4,1
   e:	4504                	lw	s1,8(a0)

00000010 <.LVL158>:
  10:	00f107a3          	sb	a5,15(sp)
  14:	17e5                	addi	a5,a5,-7
  16:	0ff7f793          	andi	a5,a5,255
  1a:	4509                	li	a0,2

0000001c <.LVL159>:
  1c:	08f76263          	bltu	a4,a5,a0 <.L70>
  20:	4585                	li	a1,1

00000022 <.LVL160>:
  22:	00f10513          	addi	a0,sp,15
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL160+0x4>

0000002e <.LVL161>:
  2e:	00000437          	lui	s0,0x0
  32:	00040513          	mv	a0,s0
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL161+0x8>

0000003e <.LVL162>:
  3e:	00000537          	lui	a0,0x0
  42:	00050513          	mv	a0,a0
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL162+0x8>

0000004e <.LVL163>:
  4e:	00040513          	mv	a0,s0
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL163+0x4>

0000005a <.LVL164>:
  5a:	06400513          	li	a0,100
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL164+0x4>

00000066 <.LVL165>:
  66:	3e800513          	li	a0,1000
  6a:	02a48533          	mul	a0,s1,a0

0000006e <.LVL166>:
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL166>

00000076 <.LVL167>:
  76:	00040513          	mv	a0,s0
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL167+0x4>

00000082 <.LVL168>:
  82:	00000537          	lui	a0,0x0
  86:	00050513          	mv	a0,a0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL168+0x8>

00000092 <.LVL169>:
  92:	00040513          	mv	a0,s0
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.LVL169+0x4>

0000009e <.LVL170>:
  9e:	456d                	li	a0,27

000000a0 <.L70>:
  a0:	40f2                	lw	ra,28(sp)
  a2:	4462                	lw	s0,24(sp)
  a4:	44d2                	lw	s1,20(sp)
  a6:	6105                	addi	sp,sp,32
  a8:	8082                	ret

Disassembly of section .text.restory:

00000000 <restory>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
   8:	000080e7          	jalr	ra # 4 <restory+0x4>

0000000c <.LVL173>:
   c:	40b2                	lw	ra,12(sp)
   e:	4501                	li	a0,0
  10:	0141                	addi	sp,sp,16
  12:	8082                	ret

Disassembly of section .text.scan:

00000000 <scan>:
   0:	711d                	addi	sp,sp,-96
   2:	00000537          	lui	a0,0x0

00000006 <.LVL175>:
   6:	01710593          	addi	a1,sp,23

0000000a <.LVL176>:
   a:	00050513          	mv	a0,a0
   e:	ce86                	sw	ra,92(sp)
  10:	cca2                	sw	s0,88(sp)
  12:	caa6                	sw	s1,84(sp)
  14:	c8ca                	sw	s2,80(sp)
  16:	c6ce                	sw	s3,76(sp)
  18:	c4d2                	sw	s4,72(sp)
  1a:	c2d6                	sw	s5,68(sp)
  1c:	c0da                	sw	s6,64(sp)
  1e:	de5e                	sw	s7,60(sp)
  20:	dc62                	sw	s8,56(sp)
  22:	da66                	sw	s9,52(sp)
  24:	d86a                	sw	s10,48(sp)
  26:	d66e                	sw	s11,44(sp)
  28:	ce02                	sw	zero,28(sp)
  2a:	00010ba3          	sb	zero,23(sp)
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL176+0x24>

00000036 <.LVL177>:
  36:	c501                	beqz	a0,3e <.L76>
  38:	57fd                	li	a5,-1
  3a:	00f10ba3          	sb	a5,23(sp)

0000003e <.L76>:
  3e:	082c                	addi	a1,sp,24
  40:	0868                	addi	a0,sp,28
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.L76+0x4>

0000004a <.LVL178>:
  4a:	8a2a                	mv	s4,a0

0000004c <.LVL179>:
  4c:	c915                	beqz	a0,80 <.L77>
  4e:	85aa                	mv	a1,a0
  50:	00000537          	lui	a0,0x0

00000054 <.LVL180>:
  54:	00050513          	mv	a0,a0
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL180+0x4>

00000060 <.L78>:
  60:	40f6                	lw	ra,92(sp)
  62:	4466                	lw	s0,88(sp)
  64:	44d6                	lw	s1,84(sp)
  66:	4946                	lw	s2,80(sp)
  68:	49b6                	lw	s3,76(sp)
  6a:	4a26                	lw	s4,72(sp)
  6c:	4a96                	lw	s5,68(sp)
  6e:	4b06                	lw	s6,64(sp)
  70:	5bf2                	lw	s7,60(sp)
  72:	5c62                	lw	s8,56(sp)
  74:	5cd2                	lw	s9,52(sp)
  76:	5d42                	lw	s10,48(sp)
  78:	5db2                	lw	s11,44(sp)
  7a:	4501                	li	a0,0
  7c:	6125                	addi	sp,sp,96
  7e:	8082                	ret

00000080 <.L77>:
  80:	45e2                	lw	a1,24(sp)
  82:	00000537          	lui	a0,0x0

00000086 <.LVL183>:
  86:	00050513          	mv	a0,a0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL183+0x4>

00000092 <.LVL184>:
  92:	4be2                	lw	s7,24(sp)
  94:	4472                	lw	s0,28(sp)
  96:	01714903          	lbu	s2,23(sp)

0000009a <.LBB6>:
  9a:	002b9513          	slli	a0,s7,0x2
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <.LBB6+0x4>

000000a6 <.LVL186>:
  a6:	89aa                	mv	s3,a0

000000a8 <.LVL187>:
  a8:	4781                	li	a5,0
  aa:	e50d                	bnez	a0,d4 <.L79>
  ac:	00000537          	lui	a0,0x0

000000b0 <.LVL188>:
  b0:	00050513          	mv	a0,a0
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL188+0x4>

000000bc <.L80>:
  bc:	4572                	lw	a0,28(sp)
  be:	d14d                	beqz	a0,60 <.L78>
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L80+0x4>

000000c8 <.LVL190>:
  c8:	bf61                	j	60 <.L78>

000000ca <.L81>:
  ca:	00279713          	slli	a4,a5,0x2
  ce:	974e                	add	a4,a4,s3
  d0:	c31c                	sw	a5,0(a4)
  d2:	0785                	addi	a5,a5,1

000000d4 <.L79>:
  d4:	ff77cbe3          	blt	a5,s7,ca <.L81>
  d8:	00595793          	srli	a5,s2,0x5

000000dc <.LVL193>:
  dc:	8b85                	andi	a5,a5,1
  de:	cb89                	beqz	a5,f0 <.L82>
  e0:	00498713          	addi	a4,s3,4

000000e4 <.LBB8>:
  e4:	4685                	li	a3,1
  e6:	03400513          	li	a0,52

000000ea <.LVL194>:
  ea:	5e7d                	li	t3,-1

000000ec <.L83>:
  ec:	0976c563          	blt	a3,s7,176 <.L89>

000000f0 <.L82>:
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.L82>

000000f8 <.LVL197>:
  f8:	00000b37          	lui	s6,0x0
  fc:	000b0513          	mv	a0,s6
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.LVL197+0x8>

00000108 <.LVL198>:
 108:	00000537          	lui	a0,0x0
 10c:	00050513          	mv	a0,a0
 110:	00000097          	auipc	ra,0x0
 114:	000080e7          	jalr	ra # 110 <.LVL198+0x8>

00000118 <.LVL199>:
 118:	000b0513          	mv	a0,s6
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL199+0x4>

00000124 <.LVL200>:
 124:	00195793          	srli	a5,s2,0x1
 128:	8b85                	andi	a5,a5,1
 12a:	c03e                	sw	a5,0(sp)
 12c:	00395793          	srli	a5,s2,0x3
 130:	8b85                	andi	a5,a5,1
 132:	c23e                	sw	a5,4(sp)
 134:	00495793          	srli	a5,s2,0x4
 138:	8b85                	andi	a5,a5,1
 13a:	c43e                	sw	a5,8(sp)
 13c:	00295793          	srli	a5,s2,0x2
 140:	8b85                	andi	a5,a5,1
 142:	c63e                	sw	a5,12(sp)
 144:	84ce                	mv	s1,s3
 146:	03400a93          	li	s5,52
 14a:	00000d37          	lui	s10,0x0
 14e:	00197913          	andi	s2,s2,1

00000152 <.LVL201>:
 152:	00000c37          	lui	s8,0x0
 156:	00000cb7          	lui	s9,0x0
 15a:	00000db7          	lui	s11,0x0

0000015e <.L84>:
 15e:	077a4863          	blt	s4,s7,1ce <.L96>
 162:	00000097          	auipc	ra,0x0
 166:	000080e7          	jalr	ra # 162 <.L84+0x4>

0000016a <.LVL203>:
 16a:	854e                	mv	a0,s3
 16c:	00000097          	auipc	ra,0x0
 170:	000080e7          	jalr	ra # 16c <.LVL203+0x2>

00000174 <.LVL204>:
 174:	b7a1                	j	bc <.L80>

00000176 <.L89>:
 176:	00072883          	lw	a7,0(a4) # 0 <scan>
 17a:	ffc72783          	lw	a5,-4(a4)
 17e:	02a88633          	mul	a2,a7,a0
 182:	02a787b3          	mul	a5,a5,a0
 186:	9622                	add	a2,a2,s0
 188:	03060583          	lb	a1,48(a2) # 30 <.LVL176+0x26>
 18c:	97a2                	add	a5,a5,s0
 18e:	03078783          	lb	a5,48(a5)
 192:	02b7db63          	bge	a5,a1,1c8 <.L85>
 196:	fff68793          	addi	a5,a3,-1

0000019a <.LVL206>:
 19a:	85ba                	mv	a1,a4

0000019c <.L86>:
 19c:	ffc5a303          	lw	t1,-4(a1) # fffffffc <.LASF463+0xffffd8fd>
 1a0:	03060e83          	lb	t4,48(a2)
 1a4:	02a30833          	mul	a6,t1,a0
 1a8:	9822                	add	a6,a6,s0
 1aa:	03080803          	lb	a6,48(a6) # 30 <.LVL176+0x26>
 1ae:	01d85863          	bge	a6,t4,1be <.L87>
 1b2:	0065a023          	sw	t1,0(a1)
 1b6:	17fd                	addi	a5,a5,-1
 1b8:	15f1                	addi	a1,a1,-4
 1ba:	ffc791e3          	bne	a5,t3,19c <.L86>

000001be <.L87>:
 1be:	0785                	addi	a5,a5,1

000001c0 <.LVL208>:
 1c0:	078a                	slli	a5,a5,0x2

000001c2 <.LVL209>:
 1c2:	97ce                	add	a5,a5,s3
 1c4:	0117a023          	sw	a7,0(a5)

000001c8 <.L85>:
 1c8:	0685                	addi	a3,a3,1
 1ca:	0711                	addi	a4,a4,4
 1cc:	b705                	j	ec <.L83>

000001ce <.L96>:
 1ce:	4088                	lw	a0,0(s1)
 1d0:	02aa8533          	mul	a0,s5,a0
 1d4:	9522                	add	a0,a0,s0
 1d6:	00000097          	auipc	ra,0x0
 1da:	000080e7          	jalr	ra # 1d6 <.L96+0x8>

000001de <.LVL213>:
 1de:	c571                	beqz	a0,2aa <.L90>
 1e0:	85d2                	mv	a1,s4
 1e2:	000d0513          	mv	a0,s10
 1e6:	00000097          	auipc	ra,0x0
 1ea:	000080e7          	jalr	ra # 1e6 <.LVL213+0x8>

000001ee <.LVL214>:
 1ee:	4782                	lw	a5,0(sp)
 1f0:	cb99                	beqz	a5,206 <.L91>
 1f2:	408c                	lw	a1,0(s1)
 1f4:	000c0513          	mv	a0,s8
 1f8:	02ba85b3          	mul	a1,s5,a1
 1fc:	95a2                	add	a1,a1,s0
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.LVL214+0x10>

00000206 <.L91>:
 206:	4792                	lw	a5,4(sp)
 208:	c79d                	beqz	a5,236 <.L92>
 20a:	408c                	lw	a1,0(s1)
 20c:	000d8513          	mv	a0,s11
 210:	02ba85b3          	mul	a1,s5,a1
 214:	95a2                	add	a1,a1,s0
 216:	02d5c803          	lbu	a6,45(a1)
 21a:	02c5c783          	lbu	a5,44(a1)
 21e:	02b5c703          	lbu	a4,43(a1)
 222:	02a5c683          	lbu	a3,42(a1)
 226:	0295c603          	lbu	a2,41(a1)
 22a:	0285c583          	lbu	a1,40(a1)
 22e:	00000097          	auipc	ra,0x0
 232:	000080e7          	jalr	ra # 22e <.L91+0x28>

00000236 <.L92>:
 236:	47a2                	lw	a5,8(sp)
 238:	cf89                	beqz	a5,252 <.L93>
 23a:	409c                	lw	a5,0(s1)
 23c:	000c8513          	mv	a0,s9
 240:	035787b3          	mul	a5,a5,s5
 244:	97a2                	add	a5,a5,s0
 246:	02e7c583          	lbu	a1,46(a5)
 24a:	00000097          	auipc	ra,0x0
 24e:	000080e7          	jalr	ra # 24a <.L92+0x14>

00000252 <.L93>:
 252:	47b2                	lw	a5,12(sp)
 254:	cf89                	beqz	a5,26e <.L94>
 256:	409c                	lw	a5,0(s1)
 258:	000c8513          	mv	a0,s9
 25c:	035787b3          	mul	a5,a5,s5
 260:	97a2                	add	a5,a5,s0
 262:	03078583          	lb	a1,48(a5)
 266:	00000097          	auipc	ra,0x0
 26a:	000080e7          	jalr	ra # 266 <.L93+0x14>

0000026e <.L94>:
 26e:	02090363          	beqz	s2,294 <.L95>
 272:	409c                	lw	a5,0(s1)
 274:	035787b3          	mul	a5,a5,s5
 278:	97a2                	add	a5,a5,s0
 27a:	02f7c503          	lbu	a0,47(a5)
 27e:	00000097          	auipc	ra,0x0
 282:	000080e7          	jalr	ra # 27e <.L94+0x10>

00000286 <.LVL219>:
 286:	85aa                	mv	a1,a0
 288:	000c0513          	mv	a0,s8
 28c:	00000097          	auipc	ra,0x0
 290:	000080e7          	jalr	ra # 28c <.LVL219+0x6>

00000294 <.L95>:
 294:	000b0513          	mv	a0,s6
 298:	00000097          	auipc	ra,0x0
 29c:	000080e7          	jalr	ra # 298 <.L95+0x4>

000002a0 <.LVL221>:
 2a0:	4515                	li	a0,5
 2a2:	00000097          	auipc	ra,0x0
 2a6:	000080e7          	jalr	ra # 2a2 <.LVL221+0x2>

000002aa <.L90>:
 2aa:	0a05                	addi	s4,s4,1
 2ac:	0491                	addi	s1,s1,4
 2ae:	bd45                	j	15e <.L84>

Disassembly of section .text.reset:

00000000 <reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040513          	mv	a0,s0

0000000c <.LVL225>:
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL225+0x2>

00000016 <.LVL226>:
  16:	00000537          	lui	a0,0x0
  1a:	00050513          	mv	a0,a0
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL226+0x8>

00000026 <.LVL227>:
  26:	00040513          	mv	a0,s0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL227+0x4>

00000032 <.LVL228>:
  32:	4509                	li	a0,2
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL228+0x2>

0000003c <.LVL229>:
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL229>

00000044 <.LVL230>:
  44:	40b2                	lw	ra,12(sp)
  46:	4422                	lw	s0,8(sp)
  48:	4501                	li	a0,0
  4a:	0141                	addi	sp,sp,16
  4c:	8082                	ret

Disassembly of section .text.ble_sync:

00000000 <ble_sync>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	451c                	lw	a5,8(a0)
   6:	ef81                	bnez	a5,1e <.L130>
   8:	4601                	li	a2,0
   a:	4589                	li	a1,2

0000000c <.L134>:
   c:	4515                	li	a0,5

0000000e <.LVL233>:
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL233>

00000016 <.L131>:
  16:	40b2                	lw	ra,12(sp)
  18:	4501                	li	a0,0
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

0000001e <.L130>:
  1e:	4705                	li	a4,1
  20:	4601                	li	a2,0
  22:	00e78663          	beq	a5,a4,2e <.L135>
  26:	4709                	li	a4,2
  28:	fee797e3          	bne	a5,a4,16 <.L131>

0000002c <.LBB19>:
  2c:	4605                	li	a2,1

0000002e <.L135>:
  2e:	4585                	li	a1,1

00000030 <.LVL238>:
  30:	bff1                	j	c <.L134>

Disassembly of section .text.cb_httpc_headers_done_fn:

00000000 <cb_httpc_headers_done_fn>:
   0:	1141                	addi	sp,sp,-16
   2:	00000537          	lui	a0,0x0

00000006 <.LVL240>:
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	84ae                	mv	s1,a1
   c:	8932                	mv	s2,a2

0000000e <.LVL241>:
   e:	85b6                	mv	a1,a3

00000010 <.LVL242>:
  10:	863a                	mv	a2,a4

00000012 <.LVL243>:
  12:	00050513          	mv	a0,a0
  16:	c422                	sw	s0,8(sp)
  18:	c606                	sw	ra,12(sp)
  1a:	843a                	mv	s0,a4
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL243+0xa>

00000024 <.LVL244>:
  24:	00492503          	lw	a0,4(s2) # 4 <cb_httpc_headers_done_fn+0x4>
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL244+0x4>

00000030 <.LVL245>:
  30:	c485                	beqz	s1,58 <.L137>
  32:	449c                	lw	a5,8(s1)
  34:	e395                	bnez	a5,58 <.L137>

00000036 <.LBB22>:
  36:	00000537          	lui	a0,0x0
  3a:	00050513          	mv	a0,a0
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LBB22+0x8>

00000046 <.LVL247>:
  46:	00000537          	lui	a0,0x0
  4a:	85a2                	mv	a1,s0
  4c:	00050513          	mv	a0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL247+0xa>

00000058 <.L137>:
  58:	40b2                	lw	ra,12(sp)
  5a:	4422                	lw	s0,8(sp)

0000005c <.LVL249>:
  5c:	4492                	lw	s1,4(sp)

0000005e <.LVL250>:
  5e:	4902                	lw	s2,0(sp)

00000060 <.LVL251>:
  60:	4501                	li	a0,0
  62:	0141                	addi	sp,sp,16
  64:	8082                	ret

Disassembly of section .text.__wifimode_set:

00000000 <__wifimode_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	00000537          	lui	a0,0x0

0000000a <.LVL253>:
   a:	04100613          	li	a2,65
   e:	4581                	li	a1,0
  10:	00050513          	mv	a0,a0
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL253+0xc>

0000001e <.LVL254>:
  1e:	e815                	bnez	s0,52 <.L143>
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL254+0x2>

00000028 <.LVL255>:
  28:	3e800513          	li	a0,1000
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL255+0x4>

00000034 <.LVL256>:
  34:	4501                	li	a0,0
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL256+0x2>

0000003e <.LVL257>:
  3e:	4501                	li	a0,0
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL257+0x2>

00000048 <.L148>:
  48:	4501                	li	a0,0

0000004a <.L144>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)

0000004e <.LVL259>:
  4e:	0141                	addi	sp,sp,16
  50:	8082                	ret

00000052 <.L143>:
  52:	4785                	li	a5,1
  54:	02f41563          	bne	s0,a5,7e <.L145>

00000058 <.LBB29>:
  58:	4501                	li	a0,0
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LBB29+0x2>

00000062 <.LVL262>:
  62:	4501                	li	a0,0
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL262+0x2>

0000006c <.LVL263>:
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL263>

00000074 <.L149>:
  74:	000007b7          	lui	a5,0x0
  78:	00a7a023          	sw	a0,0(a5) # 0 <__wifimode_set>
  7c:	b7f1                	j	48 <.L148>

0000007e <.L145>:
  7e:	4789                	li	a5,2
  80:	02f41b63          	bne	s0,a5,b6 <.L146>
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L145+0x6>

0000008c <.LVL265>:
  8c:	3e800513          	li	a0,1000
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL265+0x4>

00000098 <.LVL266>:
  98:	4501                	li	a0,0
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL266+0x2>

000000a2 <.LVL267>:
  a2:	4501                	li	a0,0
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL267+0x2>

000000ac <.LVL268>:
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL268>

000000b4 <.LVL269>:
  b4:	b7c1                	j	74 <.L149>

000000b6 <.L146>:
  b6:	00000537          	lui	a0,0x0
  ba:	00050513          	mv	a0,a0
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.L146+0x8>

000000c6 <.LVL270>:
  c6:	450d                	li	a0,3
  c8:	b749                	j	4a <.L144>

Disassembly of section .text.set_apcfg:

00000000 <set_apcfg>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	842a                	mv	s0,a0
   6:	00000537          	lui	a0,0x0

0000000a <.LVL272>:
   a:	006c                	addi	a1,sp,12

0000000c <.LVL273>:
   c:	00050513          	mv	a0,a0
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL273+0xa>

0000001e <.LVL274>:
  1e:	4532                	lw	a0,12(sp)
  20:	4785                	li	a5,1
  22:	ffe50713          	addi	a4,a0,-2 # fffffffe <.LASF463+0xffffd8ff>
  26:	06e7e963          	bltu	a5,a4,98 <.L154>
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL274+0xc>

00000032 <.LVL275>:
  32:	04840493          	addi	s1,s0,72 # 48 <.LVL279>
  36:	8526                	mv	a0,s1
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL275+0x6>

00000040 <.LVL276>:
  40:	892a                	mv	s2,a0

00000042 <.LVL277>:
  42:	0421                	addi	s0,s0,8

00000044 <.LVL278>:
  44:	00000537          	lui	a0,0x0

00000048 <.LVL279>:
  48:	8626                	mv	a2,s1
  4a:	85a2                	mv	a1,s0
  4c:	00050513          	mv	a0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL279+0x8>

00000058 <.LVL280>:
  58:	000007b7          	lui	a5,0x0
  5c:	00078793          	mv	a5,a5
  60:	4705                	li	a4,1
  62:	86a6                	mv	a3,s1
  64:	01204363          	bgtz	s2,6a <.L156>
  68:	4681                	li	a3,0

0000006a <.L156>:
  6a:	4388                	lw	a0,0(a5)
  6c:	4601                	li	a2,0
  6e:	85a2                	mv	a1,s0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.L156+0x6>

00000078 <.LVL281>:
  78:	00000537          	lui	a0,0x0
  7c:	85a2                	mv	a1,s0
  7e:	00050513          	mv	a0,a0
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL281+0xa>

0000008a <.LVL282>:
  8a:	4501                	li	a0,0

0000008c <.L151>:
  8c:	40f2                	lw	ra,28(sp)
  8e:	4462                	lw	s0,24(sp)
  90:	44d2                	lw	s1,20(sp)
  92:	4942                	lw	s2,16(sp)
  94:	6105                	addi	sp,sp,32
  96:	8082                	ret

00000098 <.L154>:
  98:	4509                	li	a0,2
  9a:	bfcd                	j	8c <.L151>

Disassembly of section .text.cwjap_cur:

00000000 <cwjap_cur>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	842a                	mv	s0,a0
   6:	00000537          	lui	a0,0x0

0000000a <.LVL286>:
   a:	002c                	addi	a1,sp,8

0000000c <.LVL287>:
   c:	00050513          	mv	a0,a0
  10:	d606                	sw	ra,44(sp)
  12:	d226                	sw	s1,36(sp)
  14:	d04a                	sw	s2,32(sp)
  16:	ce4e                	sw	s3,28(sp)
  18:	c602                	sw	zero,12(sp)
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL287+0xe>

00000022 <.LVL288>:
  22:	4522                	lw	a0,8(sp)
  24:	4785                	li	a5,1
  26:	ffd57713          	andi	a4,a0,-3
  2a:	10f71163          	bne	a4,a5,12c <.L162>
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL288+0xc>

00000036 <.LVL289>:
  36:	000009b7          	lui	s3,0x0
  3a:	02000613          	li	a2,32
  3e:	4581                	li	a1,0
  40:	00098513          	mv	a0,s3
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL289+0xe>

0000004c <.LVL290>:
  4c:	00000937          	lui	s2,0x0
  50:	04100613          	li	a2,65
  54:	4581                	li	a1,0
  56:	00090513          	mv	a0,s2
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL290+0xe>

00000062 <.LVL291>:
  62:	00840493          	addi	s1,s0,8
  66:	8526                	mv	a0,s1
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.LVL291+0x6>

00000070 <.LVL292>:
  70:	862a                	mv	a2,a0
  72:	85a6                	mv	a1,s1
  74:	00098513          	mv	a0,s3
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL292+0x8>

00000080 <.LVL293>:
  80:	02940413          	addi	s0,s0,41

00000084 <.LVL294>:
  84:	8522                	mv	a0,s0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL294+0x2>

0000008e <.LVL295>:
  8e:	862a                	mv	a2,a0
  90:	85a2                	mv	a1,s0
  92:	00090513          	mv	a0,s2
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.LVL295+0x8>

0000009e <.LVL296>:
  9e:	e08d                	bnez	s1,c0 <.L159>
  a0:	00000537          	lui	a0,0x0
  a4:	00050513          	mv	a0,a0
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL296+0xa>

000000b0 <.LVL297>:
  b0:	450d                	li	a0,3

000000b2 <.L158>:
  b2:	50b2                	lw	ra,44(sp)
  b4:	5422                	lw	s0,40(sp)
  b6:	5492                	lw	s1,36(sp)
  b8:	5902                	lw	s2,32(sp)
  ba:	49f2                	lw	s3,28(sp)
  bc:	6145                	addi	sp,sp,48
  be:	8082                	ret

000000c0 <.L159>:
  c0:	00000537          	lui	a0,0x0
  c4:	00052503          	lw	a0,0(a0) # 0 <cwjap_cur>
  c8:	4781                	li	a5,0
  ca:	4801                	li	a6,0
  cc:	4701                	li	a4,0
  ce:	4681                	li	a3,0
  d0:	8622                	mv	a2,s0
  d2:	85a6                	mv	a1,s1
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.L159+0x14>

000000dc <.LVL299>:
  dc:	00000537          	lui	a0,0x0
  e0:	006c                	addi	a1,sp,12
  e2:	00050513          	mv	a0,a0
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL299+0xa>

000000ee <.LVL300>:
  ee:	47b2                	lw	a5,12(sp)
  f0:	cb8d                	beqz	a5,122 <.L160>
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL300+0x4>

000000fa <.L161>:
  fa:	00000537          	lui	a0,0x0
  fe:	85a6                	mv	a1,s1
 100:	00050513          	mv	a0,a0
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.L161+0xa>

0000010c <.LVL302>:
 10c:	00000537          	lui	a0,0x0
 110:	85a2                	mv	a1,s0
 112:	00050513          	mv	a0,a0
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.LVL302+0xa>

0000011e <.LVL303>:
 11e:	4501                	li	a0,0
 120:	bf49                	j	b2 <.L158>

00000122 <.L160>:
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.L160>

0000012a <.LVL304>:
 12a:	bfc1                	j	fa <.L161>

0000012c <.L162>:
 12c:	4509                	li	a0,2
 12e:	b751                	j	b2 <.L158>

Disassembly of section .text.cwmode_cur:

00000000 <cwmode_cur>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	4518                	lw	a4,8(a0)
   a:	4789                	li	a5,2
   c:	02e7f063          	bgeu	a5,a4,2c <.L165>
  10:	00000537          	lui	a0,0x0

00000014 <.LVL307>:
  14:	00050513          	mv	a0,a0
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL307+0x4>

00000020 <.LVL308>:
  20:	450d                	li	a0,3

00000022 <.L166>:
  22:	40f2                	lw	ra,28(sp)
  24:	4462                	lw	s0,24(sp)
  26:	44d2                	lw	s1,20(sp)
  28:	6105                	addi	sp,sp,32
  2a:	8082                	ret

0000002c <.L165>:
  2c:	000004b7          	lui	s1,0x0
  30:	842a                	mv	s0,a0
  32:	006c                	addi	a1,sp,12

00000034 <.LVL310>:
  34:	00048513          	mv	a0,s1

00000038 <.LVL311>:
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL311>

00000040 <.LVL312>:
  40:	4418                	lw	a4,8(s0)
  42:	47b2                	lw	a5,12(sp)
  44:	4501                	li	a0,0
  46:	fcf70ee3          	beq	a4,a5,22 <.L166>

0000004a <.LBB32>:
  4a:	00840593          	addi	a1,s0,8
  4e:	00048513          	mv	a0,s1
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LBB32+0x8>

0000005a <.LVL314>:
  5a:	4408                	lw	a0,8(s0)
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL314+0x2>

00000064 <.LVL315>:
  64:	bf7d                	j	22 <.L166>

Disassembly of section .text.uart_set:

00000000 <uart_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	454c                	lw	a1,12(a0)

00000008 <.LVL317>:
   8:	842a                	mv	s0,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL318>:
   e:	00050513          	mv	a0,a0
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL318+0x4>

0000001a <.LVL319>:
  1a:	01c44703          	lbu	a4,28(s0)
  1e:	01444683          	lbu	a3,20(s0)
  22:	01844603          	lbu	a2,24(s0)
  26:	01044583          	lbu	a1,16(s0)
  2a:	4448                	lw	a0,12(s0)
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL319+0x12>

00000034 <.LVL320>:
  34:	e925                	bnez	a0,a4 <.L171>

00000036 <.LBB36>:
  36:	00000537          	lui	a0,0x0

0000003a <.LVL322>:
  3a:	00c40593          	addi	a1,s0,12
  3e:	00050513          	mv	a0,a0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL322+0x8>

0000004a <.LVL323>:
  4a:	00000537          	lui	a0,0x0
  4e:	01040593          	addi	a1,s0,16
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL323+0xc>

0000005e <.LVL324>:
  5e:	00000537          	lui	a0,0x0
  62:	01840593          	addi	a1,s0,24
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL324+0xc>

00000072 <.LVL325>:
  72:	00000537          	lui	a0,0x0
  76:	01440593          	addi	a1,s0,20
  7a:	00050513          	mv	a0,a0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL325+0xc>

00000086 <.LVL326>:
  86:	00000537          	lui	a0,0x0
  8a:	01c40593          	addi	a1,s0,28
  8e:	00050513          	mv	a0,a0
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL326+0xc>

0000009a <.LVL327>:
  9a:	4501                	li	a0,0

0000009c <.L170>:
  9c:	40b2                	lw	ra,12(sp)
  9e:	4422                	lw	s0,8(sp)

000000a0 <.LVL328>:
  a0:	0141                	addi	sp,sp,16
  a2:	8082                	ret

000000a4 <.L171>:
  a4:	4511                	li	a0,4

000000a6 <.LVL330>:
  a6:	bfdd                	j	9c <.L170>

Disassembly of section .text.at_get_errorcode:

00000000 <at_get_errorcode>:
   0:	4501                	li	a0,0
   2:	8082                	ret

Disassembly of section .text.at_cmd_impl_init:

00000000 <at_cmd_impl_init>:
   0:	1141                	addi	sp,sp,-16
   2:	4505                	li	a0,1
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	00000437          	lui	s0,0x0
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <at_cmd_impl_init+0xe>

00000016 <.LVL331>:
  16:	00a42023          	sw	a0,0(s0) # 0 <at_cmd_impl_init>
  1a:	4505                	li	a0,1
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL331+0x6>

00000024 <.LVL332>:
  24:	00042703          	lw	a4,0(s0)
  28:	000007b7          	lui	a5,0x0
  2c:	00a7a023          	sw	a0,0(a5) # 0 <at_cmd_impl_init>
  30:	843e                	mv	s0,a5
  32:	cb01                	beqz	a4,42 <.L175>
  34:	4481                	li	s1,0
  36:	ed11                	bnez	a0,52 <.L174>
  38:	853a                	mv	a0,a4
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL332+0x16>

00000042 <.L175>:
  42:	00042503          	lw	a0,0(s0)
  46:	54fd                	li	s1,-1
  48:	c509                	beqz	a0,52 <.L174>
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L175+0x8>

00000052 <.L174>:
  52:	40b2                	lw	ra,12(sp)
  54:	4422                	lw	s0,8(sp)
  56:	8526                	mv	a0,s1
  58:	4492                	lw	s1,4(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	8082                	ret

Disassembly of section .text.callback:

00000000 <callback>:
   0:	00000737          	lui	a4,0x0
   4:	00070693          	mv	a3,a4
   8:	88ae                	mv	a7,a1
   a:	4781                	li	a5,0
   c:	00070713          	mv	a4,a4
  10:	486d                	li	a6,27

00000012 <.L187>:
  12:	428c                	lw	a1,0(a3)
  14:	00b51b63          	bne	a0,a1,2a <.L185>
  18:	078e                	slli	a5,a5,0x3

0000001a <.LVL337>:
  1a:	97ba                	add	a5,a5,a4
  1c:	0047a303          	lw	t1,4(a5)
  20:	00030b63          	beqz	t1,36 <.L188>
  24:	85b2                	mv	a1,a2
  26:	8546                	mv	a0,a7

00000028 <.LVL338>:
  28:	8302                	jr	t1

0000002a <.L185>:
  2a:	0785                	addi	a5,a5,1
  2c:	06a1                	addi	a3,a3,8
  2e:	ff0792e3          	bne	a5,a6,12 <.L187>
  32:	4519                	li	a0,6

00000034 <.LVL341>:
  34:	8082                	ret

00000036 <.L188>:
  36:	4569                	li	a0,26

00000038 <.LVL343>:
  38:	8082                	ret
