
bl_crypt.o:     file format elf32-littleriscv


Disassembly of section .text.BL_AES_MEMCMP:

00000000 <BL_AES_MEMCMP>:
   0:	8832                	mv	a6,a2
   2:	4781                	li	a5,0

00000004 <.L2>:
   4:	00f81763          	bne	a6,a5,12 <.L4>
   8:	00c03633          	snez	a2,a2

0000000c <.LVL2>:
   c:	40c00533          	neg	a0,a2

00000010 <.LVL3>:
  10:	8082                	ret

00000012 <.L4>:
  12:	00f506b3          	add	a3,a0,a5
  16:	00f58733          	add	a4,a1,a5
  1a:	0006c683          	lbu	a3,0(a3)
  1e:	00074703          	lbu	a4,0(a4)
  22:	00e69363          	bne	a3,a4,28 <.L3>
  26:	167d                	addi	a2,a2,-1

00000028 <.L3>:
  28:	0785                	addi	a5,a5,1

0000002a <.LVL6>:
  2a:	bfe9                	j	4 <.L2>

Disassembly of section .text.BL_AES_MEMSET:

00000000 <BL_AES_MEMSET>:
   0:	962a                	add	a2,a2,a0

00000002 <.L6>:
   2:	00c51363          	bne	a0,a2,8 <.L7>
   6:	8082                	ret

00000008 <.L7>:
   8:	0505                	addi	a0,a0,1

0000000a <.LVL9>:
   a:	feb50fa3          	sb	a1,-1(a0)
   e:	bfd5                	j	2 <.L6>

Disassembly of section .text.BL_AES_MEMCPY:

00000000 <BL_AES_MEMCPY>:
   0:	57fd                	li	a5,-1

00000002 <.LBE4>:
   2:	02b57863          	bgeu	a0,a1,32 <.L10>
   6:	4781                	li	a5,0

00000008 <.L11>:
   8:	00c79363          	bne	a5,a2,e <.L12>
   c:	8082                	ret

0000000e <.L12>:
   e:	00f58733          	add	a4,a1,a5
  12:	00074683          	lbu	a3,0(a4)
  16:	00f50733          	add	a4,a0,a5
  1a:	0785                	addi	a5,a5,1

0000001c <.LVL13>:
  1c:	00d70023          	sb	a3,0(a4)

00000020 <.LVL14>:
  20:	b7e5                	j	8 <.L11>

00000022 <.L13>:
  22:	00c58733          	add	a4,a1,a2
  26:	00074683          	lbu	a3,0(a4)
  2a:	00c50733          	add	a4,a0,a2
  2e:	00d70023          	sb	a3,0(a4)

00000032 <.L10>:
  32:	167d                	addi	a2,a2,-1

00000034 <.LVL17>:
  34:	fef617e3          	bne	a2,a5,22 <.L13>

00000038 <.LBE7>:
  38:	8082                	ret

Disassembly of section .text.BL_AesEncrypt:

00000000 <BL_AesEncrypt>:
   0:	7125                	addi	sp,sp,-416

00000002 <.LVL19>:
   2:	18812c23          	sw	s0,408(sp)
   6:	18912a23          	sw	s1,404(sp)
   a:	8432                	mv	s0,a2
   c:	84b6                	mv	s1,a3
   e:	00659613          	slli	a2,a1,0x6

00000012 <.LVL20>:
  12:	4685                	li	a3,1

00000014 <.LVL21>:
  14:	85aa                	mv	a1,a0

00000016 <.LVL22>:
  16:	850a                	mv	a0,sp

00000018 <.LVL23>:
  18:	18112e23          	sw	ra,412(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL23+0x4>

00000024 <.LVL24>:
  24:	850a                	mv	a0,sp
  26:	8626                	mv	a2,s1
  28:	85a2                	mv	a1,s0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL24+0x6>

00000032 <.LVL25>:
  32:	19c12083          	lw	ra,412(sp)
  36:	19812403          	lw	s0,408(sp)

0000003a <.LVL26>:
  3a:	19412483          	lw	s1,404(sp)

0000003e <.LVL27>:
  3e:	4501                	li	a0,0
  40:	611d                	addi	sp,sp,416

00000042 <.LVL28>:
  42:	8082                	ret

Disassembly of section .text.BL_AesWrap:

00000000 <BL_AesWrap>:
   0:	10060263          	beqz	a2,104 <.L25>
   4:	715d                	addi	sp,sp,-80
   6:	c4a2                	sw	s0,72(sp)
   8:	d85a                	sw	s6,48(sp)
   a:	d65e                	sw	s7,44(sp)
   c:	8432                	mv	s0,a2
   e:	8bae                	mv	s7,a1
  10:	4641                	li	a2,16

00000012 <.LVL30>:
  12:	4581                	li	a1,0

00000014 <.LVL31>:
  14:	8b2a                	mv	s6,a0
  16:	0808                	addi	a0,sp,16

00000018 <.LVL32>:
  18:	c2a6                	sw	s1,68(sp)
  1a:	c0ca                	sw	s2,64(sp)
  1c:	de4e                	sw	s3,60(sp)
  1e:	dc52                	sw	s4,56(sp)
  20:	84ba                	mv	s1,a4
  22:	c686                	sw	ra,76(sp)
  24:	da56                	sw	s5,52(sp)
  26:	d462                	sw	s8,40(sp)
  28:	893e                	mv	s2,a5
  2a:	89b6                	mv	s3,a3
  2c:	00878a13          	addi	s4,a5,8

00000030 <.LVL33>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL33>

00000038 <.LVL34>:
  38:	4621                	li	a2,8
  3a:	85a6                	mv	a1,s1
  3c:	e489                	bnez	s1,46 <.L30>
  3e:	000005b7          	lui	a1,0x0
  42:	00058593          	mv	a1,a1

00000046 <.L30>:
  46:	0028                	addi	a0,sp,8
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L30+0x2>

00000050 <.LVL35>:
  50:	00341613          	slli	a2,s0,0x3
  54:	85ce                	mv	a1,s3
  56:	8552                	mv	a0,s4
  58:	0ff47c13          	andi	s8,s0,255
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL35+0xc>

00000064 <.LVL36>:
  64:	4981                	li	s3,0

00000066 <.LVL37>:
  66:	4a99                	li	s5,6
  68:	0405                	addi	s0,s0,1

0000006a <.L21>:
  6a:	4485                	li	s1,1
  6c:	a8a9                	j	c6 <.L24>

0000006e <.L22>:
  6e:	4621                	li	a2,8
  70:	002c                	addi	a1,sp,8
  72:	0808                	addi	a0,sp,16
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L22+0x6>

0000007c <.LVL40>:
  7c:	4621                	li	a2,8
  7e:	85d2                	mv	a1,s4
  80:	0828                	addi	a0,sp,24
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL40+0x6>

0000008a <.LVL41>:
  8a:	0814                	addi	a3,sp,16
  8c:	8636                	mv	a2,a3
  8e:	85de                	mv	a1,s7
  90:	855a                	mv	a0,s6
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL41+0x8>

0000009a <.LVL42>:
  9a:	4621                	li	a2,8
  9c:	080c                	addi	a1,sp,16
  9e:	0028                	addi	a0,sp,8
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL42+0x6>

000000a8 <.LVL43>:
  a8:	00f14703          	lbu	a4,15(sp)
  ac:	009987b3          	add	a5,s3,s1
  b0:	4621                	li	a2,8
  b2:	8fb9                	xor	a5,a5,a4
  b4:	082c                	addi	a1,sp,24
  b6:	8552                	mv	a0,s4
  b8:	00f107a3          	sb	a5,15(sp)
  bc:	0485                	addi	s1,s1,1

000000be <.LVL44>:
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL44>

000000c6 <.L24>:
  c6:	00349a13          	slli	s4,s1,0x3
  ca:	9a4a                	add	s4,s4,s2

000000cc <.LVL46>:
  cc:	fa8491e3          	bne	s1,s0,6e <.L22>

000000d0 <.LVL47>:
  d0:	99e2                	add	s3,s3,s8
  d2:	1afd                	addi	s5,s5,-1

000000d4 <.LVL48>:
  d4:	0ff9f993          	andi	s3,s3,255
  d8:	f80a99e3          	bnez	s5,6a <.L21>
  dc:	854a                	mv	a0,s2
  de:	002c                	addi	a1,sp,8
  e0:	4621                	li	a2,8
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL48+0xe>

000000ea <.LVL49>:
  ea:	40b6                	lw	ra,76(sp)
  ec:	4426                	lw	s0,72(sp)

000000ee <.LVL50>:
  ee:	4496                	lw	s1,68(sp)

000000f0 <.LVL51>:
  f0:	4906                	lw	s2,64(sp)

000000f2 <.LVL52>:
  f2:	59f2                	lw	s3,60(sp)
  f4:	5a62                	lw	s4,56(sp)

000000f6 <.LVL53>:
  f6:	5ad2                	lw	s5,52(sp)

000000f8 <.LVL54>:
  f8:	5b42                	lw	s6,48(sp)

000000fa <.LVL55>:
  fa:	5bb2                	lw	s7,44(sp)
  fc:	5c22                	lw	s8,40(sp)
  fe:	4501                	li	a0,0
 100:	6161                	addi	sp,sp,80
 102:	8082                	ret

00000104 <.L25>:
 104:	557d                	li	a0,-1

00000106 <.LVL57>:
 106:	8082                	ret

Disassembly of section .text.BL_AesUnWrap:

00000000 <BL_AesUnWrap>:
   0:	14060a63          	beqz	a2,154 <.L37>
   4:	7105                	addi	sp,sp,-480
   6:	1d212823          	sw	s2,464(sp)
   a:	1d512223          	sw	s5,452(sp)
   e:	8932                	mv	s2,a2
  10:	1d612023          	sw	s6,448(sp)
  14:	8aaa                	mv	s5,a0
  16:	8b2e                	mv	s6,a1
  18:	4621                	li	a2,8

0000001a <.LVL59>:
  1a:	4581                	li	a1,0

0000001c <.LVL60>:
  1c:	0028                	addi	a0,sp,8

0000001e <.LVL61>:
  1e:	1c112e23          	sw	ra,476(sp)
  22:	1c812c23          	sw	s0,472(sp)
  26:	1c912a23          	sw	s1,468(sp)
  2a:	843e                	mv	s0,a5
  2c:	1d312623          	sw	s3,460(sp)
  30:	1d412423          	sw	s4,456(sp)
  34:	89ba                	mv	s3,a4
  36:	8a36                	mv	s4,a3
  38:	1b712e23          	sw	s7,444(sp)
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL61+0x1e>

00000044 <.LVL62>:
  44:	4641                	li	a2,16
  46:	4581                	li	a1,0
  48:	0808                	addi	a0,sp,16
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL62+0x6>

00000052 <.LVL63>:
  52:	4621                	li	a2,8
  54:	85d2                	mv	a1,s4
  56:	0028                	addi	a0,sp,8
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL63+0x6>

00000060 <.LVL64>:
  60:	00391493          	slli	s1,s2,0x3
  64:	8626                	mv	a2,s1
  66:	14e1                	addi	s1,s1,-8
  68:	8522                	mv	a0,s0
  6a:	94a2                	add	s1,s1,s0
  6c:	0ff97b93          	andi	s7,s2,255
  70:	4415                	li	s0,5

00000072 <.LVL65>:
  72:	028b8433          	mul	s0,s7,s0
  76:	008a0593          	addi	a1,s4,8
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL65+0x8>

00000082 <.LVL66>:
  82:	006b1613          	slli	a2,s6,0x6
  86:	4681                	li	a3,0
  88:	85d6                	mv	a1,s5
  8a:	1008                	addi	a0,sp,32

0000008c <.LVL67>:
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.LVL67>

00000094 <.LVL68>:
  94:	4b19                	li	s6,6
  96:	0ff47413          	andi	s0,s0,255

0000009a <.L35>:
  9a:	8a4a                	mv	s4,s2

0000009c <.LVL70>:
  9c:	8aa6                	mv	s5,s1

0000009e <.L33>:
  9e:	05404e63          	bgtz	s4,fa <.L34>

000000a2 <.LVL72>:
  a2:	41740433          	sub	s0,s0,s7
  a6:	1b7d                	addi	s6,s6,-1

000000a8 <.LVL73>:
  a8:	0ff47413          	andi	s0,s0,255
  ac:	fe0b17e3          	bnez	s6,9a <.L35>
  b0:	4621                	li	a2,8
  b2:	002c                	addi	a1,sp,8
  b4:	854e                	mv	a0,s3
  b6:	00099663          	bnez	s3,c2 <.L43>

000000ba <.LVL74>:
  ba:	00000537          	lui	a0,0x0

000000be <.LVL75>:
  be:	00050513          	mv	a0,a0

000000c2 <.L43>:
  c2:	00000097          	auipc	ra,0x0
  c6:	000080e7          	jalr	ra # c2 <.L43>

000000ca <.LVL76>:
  ca:	1dc12083          	lw	ra,476(sp)
  ce:	1d812403          	lw	s0,472(sp)
  d2:	00a03533          	snez	a0,a0
  d6:	1d412483          	lw	s1,468(sp)
  da:	1d012903          	lw	s2,464(sp)

000000de <.LVL77>:
  de:	1cc12983          	lw	s3,460(sp)

000000e2 <.LVL78>:
  e2:	1c812a03          	lw	s4,456(sp)

000000e6 <.LVL79>:
  e6:	1c412a83          	lw	s5,452(sp)

000000ea <.LVL80>:
  ea:	1c012b03          	lw	s6,448(sp)

000000ee <.LVL81>:
  ee:	1bc12b83          	lw	s7,444(sp)
  f2:	40a00533          	neg	a0,a0
  f6:	613d                	addi	sp,sp,480

000000f8 <.LVL82>:
  f8:	8082                	ret

000000fa <.L34>:
  fa:	4621                	li	a2,8
  fc:	002c                	addi	a1,sp,8
  fe:	0808                	addi	a0,sp,16
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L34+0x6>

00000108 <.LVL84>:
 108:	01714703          	lbu	a4,23(sp)
 10c:	014407b3          	add	a5,s0,s4
 110:	85d6                	mv	a1,s5
 112:	8fb9                	xor	a5,a5,a4
 114:	4621                	li	a2,8
 116:	0828                	addi	a0,sp,24
 118:	00f10ba3          	sb	a5,23(sp)
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL84+0x14>

00000124 <.LVL85>:
 124:	0810                	addi	a2,sp,16
 126:	85b2                	mv	a1,a2
 128:	1008                	addi	a0,sp,32

0000012a <.LVL86>:
 12a:	00000097          	auipc	ra,0x0
 12e:	000080e7          	jalr	ra # 12a <.LVL86>

00000132 <.LVL87>:
 132:	4621                	li	a2,8
 134:	080c                	addi	a1,sp,16
 136:	0028                	addi	a0,sp,8
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.LVL87+0x6>

00000140 <.LVL88>:
 140:	8556                	mv	a0,s5
 142:	4621                	li	a2,8
 144:	082c                	addi	a1,sp,24
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.LVL88+0x6>

0000014e <.LVL89>:
 14e:	1ae1                	addi	s5,s5,-8
 150:	1a7d                	addi	s4,s4,-1
 152:	b7b1                	j	9e <.L33>

00000154 <.L37>:
 154:	557d                	li	a0,-1

00000156 <.LVL93>:
 156:	8082                	ret
