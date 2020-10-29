
bl_socket.o:     file format elf32-littleriscv


Disassembly of section .text.tcp_sent_callback:

00000000 <tcp_sent_callback>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	4791                	li	a5,4
   e:	02a7d463          	bge	a5,a0,36 <.L2>
  12:	000006b7          	lui	a3,0x0
  16:	00000637          	lui	a2,0x0

0000001a <.LVL1>:
  1a:	00000537          	lui	a0,0x0

0000001e <.LVL2>:
  1e:	00068693          	mv	a3,a3
  22:	00060613          	mv	a2,a2
  26:	0aa00593          	li	a1,170

0000002a <.LVL3>:
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL3+0x4>

00000036 <.L2>:
  36:	842a                	mv	s0,a0
  38:	03800493          	li	s1,56
  3c:	8932                	mv	s2,a2
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.L2+0x8>

00000046 <.LVL5>:
  46:	029407b3          	mul	a5,s0,s1
  4a:	000004b7          	lui	s1,0x0
  4e:	00048493          	mv	s1,s1
  52:	94be                	add	s1,s1,a5
  54:	0384c983          	lbu	s3,56(s1) # 38 <.L2+0x2>
  58:	478d                	li	a5,3
  5a:	02f98863          	beq	s3,a5,8a <.L3>
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL5+0x18>

00000066 <.LVL6>:
  66:	00000537          	lui	a0,0x0
  6a:	85a2                	mv	a1,s0
  6c:	00050513          	mv	a0,a0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL6+0xa>

00000078 <.LVL7>:
  78:	54d5                	li	s1,-11

0000007a <.L4>:
  7a:	40f2                	lw	ra,28(sp)
  7c:	4462                	lw	s0,24(sp)

0000007e <.LVL8>:
  7e:	8526                	mv	a0,s1
  80:	4942                	lw	s2,16(sp)
  82:	44d2                	lw	s1,20(sp)
  84:	49b2                	lw	s3,12(sp)
  86:	6105                	addi	sp,sp,32
  88:	8082                	ret

0000008a <.L3>:
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L3>

00000092 <.LVL10>:
  92:	0184c783          	lbu	a5,24(s1)
  96:	000004b7          	lui	s1,0x0
  9a:	00048493          	mv	s1,s1
  9e:	03379d63          	bne	a5,s3,d8 <.L5>
  a2:	0004a023          	sw	zero,0(s1) # 0 <tcp_sent_callback>
  a6:	000004b7          	lui	s1,0x0
  aa:	00048513          	mv	a0,s1
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.LVL10+0x1c>

000000b6 <.LVL11>:
  b6:	00000537          	lui	a0,0x0
  ba:	85a2                	mv	a1,s0
  bc:	00050513          	mv	a0,a0
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.LVL11+0xa>

000000c8 <.LVL12>:
  c8:	00048513          	mv	a0,s1
  cc:	00000097          	auipc	ra,0x0
  d0:	000080e7          	jalr	ra # cc <.LVL12+0x4>

000000d4 <.LVL13>:
  d4:	4481                	li	s1,0
  d6:	b755                	j	7a <.L4>

000000d8 <.L5>:
  d8:	00000537          	lui	a0,0x0
  dc:	864a                	mv	a2,s2
  de:	85a2                	mv	a1,s0
  e0:	00050513          	mv	a0,a0
  e4:	00000097          	auipc	ra,0x0
  e8:	000080e7          	jalr	ra # e4 <.L5+0xc>

000000ec <.LVL14>:
  ec:	4090                	lw	a2,0(s1)
  ee:	41260633          	sub	a2,a2,s2
  f2:	c090                	sw	a2,0(s1)
  f4:	4481                	li	s1,0
  f6:	f8c042e3          	bgtz	a2,7a <.L4>
  fa:	00000937          	lui	s2,0x0
  fe:	00090513          	mv	a0,s2
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL14+0x16>

0000010a <.LVL15>:
 10a:	00000537          	lui	a0,0x0
 10e:	85a2                	mv	a1,s0
 110:	00050513          	mv	a0,a0
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.LVL15+0xa>

0000011c <.LVL16>:
 11c:	00090513          	mv	a0,s2
 120:	00000097          	auipc	ra,0x0
 124:	000080e7          	jalr	ra # 120 <.LVL16+0x4>

00000128 <.LVL17>:
 128:	bf89                	j	7a <.L4>

Disassembly of section .text.tcp_connected_callback:

00000000 <tcp_connected_callback>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	4791                	li	a5,4
  10:	02a7d463          	bge	a5,a0,38 <.L9>
  14:	000006b7          	lui	a3,0x0
  18:	00000637          	lui	a2,0x0

0000001c <.LVL19>:
  1c:	00068693          	mv	a3,a3
  20:	00060613          	mv	a2,a2
  24:	0d700593          	li	a1,215

00000028 <.L20>:
  28:	00000537          	lui	a0,0x0
  2c:	00050513          	mv	a0,a0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.L20+0x8>

00000038 <.L9>:
  38:	00000437          	lui	s0,0x0
  3c:	84aa                	mv	s1,a0

0000003e <.LBE2>:
  3e:	000009b7          	lui	s3,0x0
  42:	00040413          	mv	s0,s0
  46:	00000937          	lui	s2,0x0
  4a:	e67d                	bnez	a2,138 <.L10>

0000004c <.LVL22>:
  4c:	0009a503          	lw	a0,0(s3) # 0 <tcp_connected_callback>
  50:	8a2e                	mv	s4,a1
  52:	55fd                	li	a1,-1

00000054 <.LVL23>:
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL23>

0000005c <.LVL24>:
  5c:	03800793          	li	a5,56
  60:	02f487b3          	mul	a5,s1,a5
  64:	00090513          	mv	a0,s2
  68:	943e                	add	s0,s0,a5
  6a:	01844703          	lbu	a4,24(s0) # 18 <tcp_connected_callback+0x18>
  6e:	478d                	li	a5,3
  70:	02f40c23          	sb	a5,56(s0)
  74:	0af71463          	bne	a4,a5,11c <.L19>

00000078 <.LBB3>:
  78:	5808                	lw	a0,48(s0)
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LBB3+0x2>

00000082 <.LVL25>:
  82:	ed01                	bnez	a0,9a <.L12>
  84:	000006b7          	lui	a3,0x0
  88:	00000637          	lui	a2,0x0
  8c:	00068693          	mv	a3,a3
  90:	00060613          	mv	a2,a2
  94:	0e000593          	li	a1,224
  98:	bf41                	j	28 <.L20>

0000009a <.L12>:
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.L12>

000000a2 <.LVL26>:
  a2:	862a                	mv	a2,a0

000000a4 <.LVL27>:
  a4:	c62a                	sw	a0,12(sp)
  a6:	00090513          	mv	a0,s2

000000aa <.LVL28>:
  aa:	ca2d                	beqz	a2,11c <.L19>
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL28+0x2>

000000b4 <.LVL29>:
  b4:	4632                	lw	a2,12(sp)
  b6:	00000537          	lui	a0,0x0
  ba:	85a6                	mv	a1,s1
  bc:	00050513          	mv	a0,a0
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.LVL29+0xc>

000000c8 <.L18>:
  c8:	00090513          	mv	a0,s2
  cc:	00000097          	auipc	ra,0x0
  d0:	000080e7          	jalr	ra # cc <.L18+0x4>

000000d4 <.LVL31>:
  d4:	000005b7          	lui	a1,0x0
  d8:	00058593          	mv	a1,a1
  dc:	8552                	mv	a0,s4
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.LVL31+0xa>

000000e6 <.LVL32>:
  e6:	000005b7          	lui	a1,0x0
  ea:	00058593          	mv	a1,a1
  ee:	8552                	mv	a0,s4
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LVL32+0xa>

000000f8 <.L16>:
  f8:	0009a503          	lw	a0,0(s3)
  fc:	4681                	li	a3,0
  fe:	4601                	li	a2,0
 100:	4581                	li	a1,0
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.L16+0xa>

0000010a <.LVL34>:
 10a:	50b2                	lw	ra,44(sp)
 10c:	5422                	lw	s0,40(sp)
 10e:	5492                	lw	s1,36(sp)
 110:	5902                	lw	s2,32(sp)
 112:	49f2                	lw	s3,28(sp)
 114:	4a62                	lw	s4,24(sp)
 116:	4501                	li	a0,0
 118:	6145                	addi	sp,sp,48
 11a:	8082                	ret

0000011c <.L19>:
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.L19>

00000124 <.LVL36>:
 124:	00000537          	lui	a0,0x0
 128:	85a6                	mv	a1,s1
 12a:	00050513          	mv	a0,a0
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.LVL36+0xa>

00000136 <.LVL37>:
 136:	bf49                	j	c8 <.L18>

00000138 <.L10>:
 138:	00090513          	mv	a0,s2
 13c:	00000097          	auipc	ra,0x0
 140:	000080e7          	jalr	ra # 13c <.L10+0x4>

00000144 <.LVL39>:
 144:	00000537          	lui	a0,0x0
 148:	85a6                	mv	a1,s1
 14a:	00050513          	mv	a0,a0
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <.LVL39+0xa>

00000156 <.LVL40>:
 156:	00090513          	mv	a0,s2
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.LVL40+0x4>

00000162 <.LVL41>:
 162:	0009a503          	lw	a0,0(s3)
 166:	55fd                	li	a1,-1
 168:	00000097          	auipc	ra,0x0
 16c:	000080e7          	jalr	ra # 168 <.LVL41+0x6>

00000170 <.LVL42>:
 170:	03800793          	li	a5,56
 174:	02f484b3          	mul	s1,s1,a5

00000178 <.LVL43>:
 178:	9426                	add	s0,s0,s1
 17a:	5808                	lw	a0,48(s0)
 17c:	02040c23          	sb	zero,56(s0)
 180:	00000097          	auipc	ra,0x0
 184:	000080e7          	jalr	ra # 180 <.LVL43+0x8>

00000188 <.LVL44>:
 188:	01844703          	lbu	a4,24(s0)
 18c:	02042823          	sw	zero,48(s0)
 190:	478d                	li	a5,3
 192:	f6f713e3          	bne	a4,a5,f8 <.L16>
 196:	5848                	lw	a0,52(s0)
 198:	00000097          	auipc	ra,0x0
 19c:	000080e7          	jalr	ra # 198 <.LVL44+0x10>

000001a0 <.LVL45>:
 1a0:	02042a23          	sw	zero,52(s0)
 1a4:	bf91                	j	f8 <.L16>

Disassembly of section .text.tcp_receive_callback:

00000000 <tcp_receive_callback>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	4791                	li	a5,4
  16:	02a7d463          	bge	a5,a0,3e <.L22>
  1a:	000006b7          	lui	a3,0x0

0000001e <.LVL47>:
  1e:	00000637          	lui	a2,0x0

00000022 <.LVL48>:
  22:	00000537          	lui	a0,0x0

00000026 <.LVL49>:
  26:	00068693          	mv	a3,a3
  2a:	00060613          	mv	a2,a2
  2e:	08200593          	li	a1,130

00000032 <.LVL50>:
  32:	00050513          	mv	a0,a0
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL50+0x4>

0000003e <.L22>:
  3e:	000009b7          	lui	s3,0x0
  42:	84aa                	mv	s1,a0
  44:	0009a503          	lw	a0,0(s3) # 0 <tcp_receive_callback>

00000048 <.LVL52>:
  48:	55fd                	li	a1,-1

0000004a <.LVL53>:
  4a:	8a32                	mv	s4,a2
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL53+0x2>

00000054 <.LVL54>:
  54:	03800793          	li	a5,56
  58:	02f487b3          	mul	a5,s1,a5
  5c:	00000737          	lui	a4,0x0
  60:	00070413          	mv	s0,a4
  64:	8bce                	mv	s7,s3
  66:	00070b13          	mv	s6,a4
  6a:	943e                	add	s0,s0,a5
  6c:	03844a83          	lbu	s5,56(s0)
  70:	478d                	li	a5,3
  72:	04fa8063          	beq	s5,a5,b2 <.L23>
  76:	00000537          	lui	a0,0x0
  7a:	85a6                	mv	a1,s1
  7c:	00050513          	mv	a0,a0
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL54+0x2c>

00000088 <.LVL55>:
  88:	0009a503          	lw	a0,0(s3)
  8c:	4681                	li	a3,0
  8e:	4601                	li	a2,0
  90:	4581                	li	a1,0
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL55+0xa>

0000009a <.LVL56>:
  9a:	5555                	li	a0,-11

0000009c <.L24>:
  9c:	50b2                	lw	ra,44(sp)
  9e:	5422                	lw	s0,40(sp)
  a0:	5492                	lw	s1,36(sp)
  a2:	5902                	lw	s2,32(sp)
  a4:	49f2                	lw	s3,28(sp)
  a6:	4a62                	lw	s4,24(sp)

000000a8 <.LVL58>:
  a8:	4ad2                	lw	s5,20(sp)
  aa:	4b42                	lw	s6,16(sp)
  ac:	4bb2                	lw	s7,12(sp)
  ae:	6145                	addi	sp,sp,48
  b0:	8082                	ret

000000b2 <.L23>:
  b2:	00000937          	lui	s2,0x0
  b6:	060a1663          	bnez	s4,122 <.L25>
  ba:	02040c23          	sb	zero,56(s0)
  be:	00090513          	mv	a0,s2
  c2:	00000097          	auipc	ra,0x0
  c6:	000080e7          	jalr	ra # c2 <.L23+0x10>

000000ca <.LVL60>:
  ca:	00000537          	lui	a0,0x0
  ce:	85a6                	mv	a1,s1
  d0:	00050513          	mv	a0,a0
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.LVL60+0xa>

000000dc <.LVL61>:
  dc:	00090513          	mv	a0,s2
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LVL61+0x4>

000000e8 <.LVL62>:
  e8:	5808                	lw	a0,48(s0)
  ea:	00000097          	auipc	ra,0x0
  ee:	000080e7          	jalr	ra # ea <.LVL62+0x2>

000000f2 <.LVL63>:
  f2:	01844783          	lbu	a5,24(s0)
  f6:	02042823          	sw	zero,48(s0)
  fa:	01579963          	bne	a5,s5,10c <.L26>
  fe:	5848                	lw	a0,52(s0)
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.LVL63+0xe>

00000108 <.LVL64>:
 108:	02042a23          	sw	zero,52(s0)

0000010c <.L26>:
 10c:	000ba503          	lw	a0,0(s7)
 110:	4681                	li	a3,0
 112:	4601                	li	a2,0
 114:	4581                	li	a1,0
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.L26+0xa>

0000011e <.L30>:
 11e:	4501                	li	a0,0
 120:	bfb5                	j	9c <.L24>

00000122 <.L25>:
 122:	0009a503          	lw	a0,0(s3)
 126:	4681                	li	a3,0
 128:	4601                	li	a2,0
 12a:	4581                	li	a1,0
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.L25+0xa>

00000134 <.LVL67>:
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL67>

0000013c <.LVL68>:
 13c:	00090513          	mv	a0,s2
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LVL68+0x4>

00000148 <.LVL69>:
 148:	00000537          	lui	a0,0x0
 14c:	00050513          	mv	a0,a0
 150:	00000097          	auipc	ra,0x0
 154:	000080e7          	jalr	ra # 150 <.LVL69+0x8>

00000158 <.LVL70>:
 158:	00090513          	mv	a0,s2
 15c:	00000097          	auipc	ra,0x0
 160:	000080e7          	jalr	ra # 15c <.LVL70+0x4>

00000164 <.LVL71>:
 164:	00090513          	mv	a0,s2
 168:	00000097          	auipc	ra,0x0
 16c:	000080e7          	jalr	ra # 168 <.LVL71+0x4>

00000170 <.LVL72>:
 170:	008a5603          	lhu	a2,8(s4)
 174:	00000537          	lui	a0,0x0
 178:	85a6                	mv	a1,s1
 17a:	00050513          	mv	a0,a0
 17e:	00000097          	auipc	ra,0x0
 182:	000080e7          	jalr	ra # 17e <.LVL72+0xe>

00000186 <.LVL73>:
 186:	00090513          	mv	a0,s2
 18a:	00000097          	auipc	ra,0x0
 18e:	000080e7          	jalr	ra # 18a <.LVL73+0x4>

00000192 <.LVL74>:
 192:	8452                	mv	s0,s4

00000194 <.L27>:
 194:	00a45583          	lhu	a1,10(s0)
 198:	4048                	lw	a0,4(s0)
 19a:	00000097          	auipc	ra,0x0
 19e:	000080e7          	jalr	ra # 19a <.L27+0x6>

000001a2 <.LVL76>:
 1a2:	4000                	lw	s0,0(s0)
 1a4:	f865                	bnez	s0,194 <.L27>
 1a6:	00000097          	auipc	ra,0x0
 1aa:	000080e7          	jalr	ra # 1a6 <.LVL76+0x4>

000001ae <.LVL78>:
 1ae:	03800793          	li	a5,56
 1b2:	02f484b3          	mul	s1,s1,a5

000001b6 <.LVL79>:
 1b6:	008a5583          	lhu	a1,8(s4)
 1ba:	94da                	add	s1,s1,s6
 1bc:	5888                	lw	a0,48(s1)
 1be:	00000097          	auipc	ra,0x0
 1c2:	000080e7          	jalr	ra # 1be <.LVL79+0x8>

000001c6 <.LVL80>:
 1c6:	8552                	mv	a0,s4
 1c8:	00000097          	auipc	ra,0x0
 1cc:	000080e7          	jalr	ra # 1c8 <.LVL80+0x2>

000001d0 <.LVL81>:
 1d0:	b7b9                	j	11e <.L30>

Disassembly of section .text.get_romfs_file_content:

00000000 <get_romfs_file_content>:
   0:	1101                	addi	sp,sp,-32
   2:	c62e                	sw	a1,12(sp)
   4:	4581                	li	a1,0

00000006 <.LVL83>:
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL83+0x4>

00000012 <.LVL84>:
  12:	02054363          	bltz	a0,38 <.L33>
  16:	4632                	lw	a2,12(sp)
  18:	4585                	li	a1,1
  1a:	842a                	mv	s0,a0
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL84+0xa>

00000024 <.LVL85>:
  24:	8522                	mv	a0,s0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL85+0x2>

0000002e <.LVL86>:
  2e:	4501                	li	a0,0

00000030 <.L31>:
  30:	40f2                	lw	ra,28(sp)
  32:	4462                	lw	s0,24(sp)
  34:	6105                	addi	sp,sp,32

00000036 <.LVL88>:
  36:	8082                	ret

00000038 <.L33>:
  38:	557d                	li	a0,-1

0000003a <.LVL90>:
  3a:	bfdd                	j	30 <.L31>

Disassembly of section .text.udp_send_data:

00000000 <udp_send_data>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	e11d                	bnez	a0,34 <.L36>
  10:	000006b7          	lui	a3,0x0
  14:	00000637          	lui	a2,0x0
  18:	00068693          	mv	a3,a3
  1c:	00060613          	mv	a2,a2
  20:	2b600593          	li	a1,694

00000024 <.L46>:
  24:	00000537          	lui	a0,0x0

00000028 <.LVL92>:
  28:	00050513          	mv	a0,a0
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL92+0x4>

00000034 <.L36>:
  34:	415c                	lw	a5,4(a0)
  36:	842a                	mv	s0,a0

00000038 <.LVL94>:
  38:	ef81                	bnez	a5,50 <.L37>

0000003a <.LVL95>:
  3a:	000006b7          	lui	a3,0x0
  3e:	00000637          	lui	a2,0x0
  42:	00068693          	mv	a3,a3
  46:	00060613          	mv	a2,a2
  4a:	2ba00593          	li	a1,698
  4e:	bfd9                	j	24 <.L46>

00000050 <.L37>:
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.L37>

00000058 <.LVL96>:
  58:	00042903          	lw	s2,0(s0)

0000005c <.LVL97>:
  5c:	03800793          	li	a5,56
  60:	000004b7          	lui	s1,0x0
  64:	02f907b3          	mul	a5,s2,a5
  68:	00000937          	lui	s2,0x0

0000006c <.LVL98>:
  6c:	00090913          	mv	s2,s2
  70:	993e                	add	s2,s2,a5
  72:	01894703          	lbu	a4,24(s2) # 18 <udp_send_data+0x18>
  76:	4789                	li	a5,2
  78:	00f71563          	bne	a4,a5,82 <.L38>
  7c:	03894783          	lbu	a5,56(s2)
  80:	e7b1                	bnez	a5,cc <.L39>

00000082 <.L38>:
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.L38>

0000008a <.L47>:
  8a:	00048513          	mv	a0,s1
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.L47+0x4>

00000096 <.LVL100>:
  96:	400c                	lw	a1,0(s0)
  98:	00000537          	lui	a0,0x0
  9c:	00050513          	mv	a0,a0
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL100+0xa>

000000a8 <.LVL101>:
  a8:	00048513          	mv	a0,s1
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL101+0x4>

000000b4 <.L45>:
  b4:	8522                	mv	a0,s0
  b6:	4462                	lw	s0,24(sp)

000000b8 <.LVL103>:
  b8:	40f2                	lw	ra,28(sp)
  ba:	44d2                	lw	s1,20(sp)
  bc:	4942                	lw	s2,16(sp)
  be:	49b2                	lw	s3,12(sp)
  c0:	4a22                	lw	s4,8(sp)
  c2:	6105                	addi	sp,sp,32
  c4:	00000317          	auipc	t1,0x0
  c8:	00030067          	jr	t1 # c4 <.LVL103+0xc>

000000cc <.L39>:
  cc:	00000a37          	lui	s4,0x0
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.L39+0x4>

000000d8 <.LVL105>:
  d8:	000a0a13          	mv	s4,s4
  dc:	000a5583          	lhu	a1,0(s4) # 0 <udp_send_data>
  e0:	28000613          	li	a2,640
  e4:	0b600513          	li	a0,182
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LVL105+0x10>

000000f0 <.LVL106>:
  f0:	89aa                	mv	s3,a0

000000f2 <.LVL107>:
  f2:	dd41                	beqz	a0,8a <.L47>
  f4:	404c                	lw	a1,4(s0)
  f6:	000a2603          	lw	a2,0(s4)
  fa:	4148                	lw	a0,4(a0)

000000fc <.LVL108>:
  fc:	00000097          	auipc	ra,0x0
 100:	000080e7          	jalr	ra # fc <.LVL108>

00000104 <.LVL109>:
 104:	03092503          	lw	a0,48(s2)
 108:	85ce                	mv	a1,s3
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL109+0x6>

00000112 <.LVL110>:
 112:	cd05                	beqz	a0,14a <.L41>
 114:	00048513          	mv	a0,s1
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.LVL110+0x6>

00000120 <.LVL111>:
 120:	400c                	lw	a1,0(s0)
 122:	00000537          	lui	a0,0x0
 126:	00050513          	mv	a0,a0

0000012a <.L44>:
 12a:	00000097          	auipc	ra,0x0
 12e:	000080e7          	jalr	ra # 12a <.L44>

00000132 <.LVL112>:
 132:	00048513          	mv	a0,s1
 136:	00000097          	auipc	ra,0x0
 13a:	000080e7          	jalr	ra # 136 <.LVL112+0x4>

0000013e <.LVL113>:
 13e:	854e                	mv	a0,s3
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LVL113+0x2>

00000148 <.LVL114>:
 148:	b7b5                	j	b4 <.L45>

0000014a <.L41>:
 14a:	00048513          	mv	a0,s1
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <.L41+0x4>

00000156 <.LVL115>:
 156:	00000537          	lui	a0,0x0
 15a:	400c                	lw	a1,0(s0)
 15c:	00050513          	mv	a0,a0
 160:	b7e9                	j	12a <.L44>

Disassembly of section .text.tcp_err_callback:

00000000 <tcp_err_callback>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	4791                	li	a5,4
   a:	02a7d463          	bge	a5,a0,32 <.L49>

0000000e <.LBB6>:
   e:	000006b7          	lui	a3,0x0
  12:	00000637          	lui	a2,0x0
  16:	00000537          	lui	a0,0x0

0000001a <.LVL118>:
  1a:	00068693          	mv	a3,a3
  1e:	00060613          	mv	a2,a2
  22:	0c600593          	li	a1,198

00000026 <.LVL119>:
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL119+0x4>

00000032 <.L49>:
  32:	000004b7          	lui	s1,0x0
  36:	842a                	mv	s0,a0
  38:	00048513          	mv	a0,s1

0000003c <.LVL121>:
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL121>

00000044 <.LVL122>:
  44:	00000537          	lui	a0,0x0
  48:	85a2                	mv	a1,s0
  4a:	00050513          	mv	a0,a0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL122+0xa>

00000056 <.LVL123>:
  56:	00048513          	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL123+0x4>

00000062 <.LVL124>:
  62:	000004b7          	lui	s1,0x0
  66:	0004a503          	lw	a0,0(s1) # 0 <tcp_err_callback>
  6a:	55fd                	li	a1,-1
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL124+0xa>

00000074 <.LVL125>:
  74:	03800793          	li	a5,56
  78:	02f407b3          	mul	a5,s0,a5
  7c:	00000437          	lui	s0,0x0

00000080 <.LVL126>:
  80:	00040413          	mv	s0,s0
  84:	943e                	add	s0,s0,a5
  86:	01844703          	lbu	a4,24(s0) # 18 <.LBB6+0xa>
  8a:	02040c23          	sb	zero,56(s0)
  8e:	02042823          	sw	zero,48(s0)
  92:	478d                	li	a5,3
  94:	00f71963          	bne	a4,a5,a6 <.L50>
  98:	5848                	lw	a0,52(s0)
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL126+0x1a>

000000a2 <.LVL127>:
  a2:	02042a23          	sw	zero,52(s0)

000000a6 <.L50>:
  a6:	4422                	lw	s0,8(sp)
  a8:	0004a503          	lw	a0,0(s1)
  ac:	40b2                	lw	ra,12(sp)
  ae:	4492                	lw	s1,4(sp)
  b0:	4681                	li	a3,0
  b2:	4601                	li	a2,0
  b4:	4581                	li	a1,0
  b6:	0141                	addi	sp,sp,16
  b8:	00000317          	auipc	t1,0x0
  bc:	00030067          	jr	t1 # b8 <.L50+0x12>

Disassembly of section .text.udp_receive_callback:

00000000 <udp_receive_callback>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	4791                	li	a5,4
   c:	8432                	mv	s0,a2
   e:	02a7d463          	bge	a5,a0,36 <.L53>
  12:	00000537          	lui	a0,0x0

00000016 <.LVL130>:
  16:	00050513          	mv	a0,a0
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL130+0x4>

00000022 <.L58>:
  22:	8522                	mv	a0,s0

00000024 <.LBE10>:
  24:	4422                	lw	s0,8(sp)

00000026 <.LVL132>:
  26:	40b2                	lw	ra,12(sp)
  28:	4492                	lw	s1,4(sp)
  2a:	4902                	lw	s2,0(sp)
  2c:	0141                	addi	sp,sp,16

0000002e <.LBB14>:
  2e:	00000317          	auipc	t1,0x0
  32:	00030067          	jr	t1 # 2e <.LBB14>

00000036 <.L53>:
  36:	892a                	mv	s2,a0

00000038 <.LBE14>:
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LBE14>

00000040 <.LVL134>:
  40:	03800793          	li	a5,56
  44:	02f90733          	mul	a4,s2,a5
  48:	000007b7          	lui	a5,0x0
  4c:	00078793          	mv	a5,a5
  50:	97ba                	add	a5,a5,a4
  52:	0387c783          	lbu	a5,56(a5) # 38 <.LBE14>
  56:	ef99                	bnez	a5,74 <.L54>
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL134+0x18>

00000060 <.LVL135>:
  60:	00000537          	lui	a0,0x0
  64:	85ca                	mv	a1,s2
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL135+0xa>

00000072 <.LVL136>:
  72:	bf45                	j	22 <.L58>

00000074 <.L54>:
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L54>

0000007c <.LVL137>:
  7c:	000004b7          	lui	s1,0x0
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL137+0x4>

00000088 <.LVL138>:
  88:	00048513          	mv	a0,s1
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.LVL138+0x4>

00000094 <.LVL139>:
  94:	00000537          	lui	a0,0x0
  98:	00050513          	mv	a0,a0
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.LVL139+0x8>

000000a4 <.LVL140>:
  a4:	00048513          	mv	a0,s1
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL140+0x4>

000000b0 <.LVL141>:
  b0:	00048513          	mv	a0,s1
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL141+0x4>

000000bc <.LVL142>:
  bc:	00845603          	lhu	a2,8(s0)
  c0:	00000537          	lui	a0,0x0
  c4:	85ca                	mv	a1,s2
  c6:	00050513          	mv	a0,a0
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.LVL142+0xe>

000000d2 <.LVL143>:
  d2:	00048513          	mv	a0,s1
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL143+0x4>

000000de <.LVL144>:
  de:	84a2                	mv	s1,s0

000000e0 <.L55>:
  e0:	00a4d583          	lhu	a1,10(s1) # a <udp_receive_callback+0xa>
  e4:	40c8                	lw	a0,4(s1)
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.L55+0x6>

000000ee <.LVL146>:
  ee:	4084                	lw	s1,0(s1)
  f0:	f8e5                	bnez	s1,e0 <.L55>
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL146+0x4>

000000fa <.LVL148>:
  fa:	b725                	j	22 <.L58>

Disassembly of section .text.tcp_accept_callback:

00000000 <tcp_accept_callback>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	c05a                	sw	s6,0(sp)
  12:	842e                	mv	s0,a1
  14:	ca15                	beqz	a2,48 <.L60>
  16:	00000537          	lui	a0,0x0

0000001a <.LVL150>:
  1a:	00050513          	mv	a0,a0

0000001e <.L68>:
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.L68>

00000026 <.LVL152>:
  26:	8522                	mv	a0,s0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL152+0x2>

00000030 <.LVL153>:
  30:	5b55                	li	s6,-11

00000032 <.L61>:
  32:	40f2                	lw	ra,28(sp)
  34:	4462                	lw	s0,24(sp)

00000036 <.LVL154>:
  36:	855a                	mv	a0,s6
  38:	44d2                	lw	s1,20(sp)
  3a:	4942                	lw	s2,16(sp)
  3c:	49b2                	lw	s3,12(sp)
  3e:	4a22                	lw	s4,8(sp)
  40:	4a92                	lw	s5,4(sp)
  42:	4b02                	lw	s6,0(sp)
  44:	6105                	addi	sp,sp,32
  46:	8082                	ret

00000048 <.L60>:
  48:	00000a37          	lui	s4,0x0
  4c:	000a2503          	lw	a0,0(s4) # 0 <tcp_accept_callback>

00000050 <.LVL156>:
  50:	55fd                	li	a1,-1
  52:	000004b7          	lui	s1,0x0
  56:	8b32                	mv	s6,a2
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL156+0x8>

00000060 <.LVL157>:
  60:	00048793          	mv	a5,s1

00000064 <.LBB21>:
  64:	4901                	li	s2,0
  66:	00048493          	mv	s1,s1
  6a:	4715                	li	a4,5

0000006c <.L64>:
  6c:	0387c683          	lbu	a3,56(a5)
  70:	e6a9                	bnez	a3,ba <.L62>
  72:	03800513          	li	a0,56
  76:	02a90533          	mul	a0,s2,a0
  7a:	03800613          	li	a2,56
  7e:	4581                	li	a1,0
  80:	0511                	addi	a0,a0,4
  82:	9526                	add	a0,a0,s1
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L64+0x18>

0000008c <.L63>:
  8c:	03800993          	li	s3,56
  90:	033909b3          	mul	s3,s2,s3
  94:	01348ab3          	add	s5,s1,s3
  98:	038ac783          	lbu	a5,56(s5)
  9c:	c78d                	beqz	a5,c6 <.L65>
  9e:	000a2503          	lw	a0,0(s4)
  a2:	4681                	li	a3,0
  a4:	4601                	li	a2,0
  a6:	4581                	li	a1,0
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L63+0x1c>

000000b0 <.LVL160>:
  b0:	00000537          	lui	a0,0x0
  b4:	00050513          	mv	a0,a0
  b8:	b79d                	j	1e <.L68>

000000ba <.L62>:
  ba:	0905                	addi	s2,s2,1
  bc:	03878793          	addi	a5,a5,56
  c0:	fae916e3          	bne	s2,a4,6c <.L64>
  c4:	b7e1                	j	8c <.L63>

000000c6 <.L65>:
  c6:	409c                	lw	a5,0(s1)
  c8:	028aa823          	sw	s0,48(s5)
  cc:	4581                	li	a1,0
  ce:	0785                	addi	a5,a5,1
  d0:	c09c                	sw	a5,0(s1)
  d2:	478d                	li	a5,3
  d4:	02fa8c23          	sb	a5,56(s5)
  d8:	4785                	li	a5,1
  da:	00fa8c23          	sb	a5,24(s5)
  de:	8522                	mv	a0,s0
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.L65+0x1a>

000000e8 <.LVL162>:
  e8:	00498593          	addi	a1,s3,4
  ec:	4641                	li	a2,16
  ee:	95a6                	add	a1,a1,s1
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.LVL162+0x8>

000000f8 <.LVL163>:
  f8:	4581                	li	a1,0
  fa:	8522                	mv	a0,s0
  fc:	00000097          	auipc	ra,0x0
 100:	000080e7          	jalr	ra # fc <.LVL163+0x4>

00000104 <.LVL164>:
 104:	00aaaa23          	sw	a0,20(s5)
 108:	000a2503          	lw	a0,0(s4)
 10c:	4681                	li	a3,0
 10e:	4601                	li	a2,0
 110:	4581                	li	a1,0
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.LVL164+0xe>

0000011a <.LVL165>:
 11a:	000004b7          	lui	s1,0x0
 11e:	00048513          	mv	a0,s1
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.LVL165+0x8>

0000012a <.LVL166>:
 12a:	00000537          	lui	a0,0x0
 12e:	85ca                	mv	a1,s2
 130:	00050513          	mv	a0,a0
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL166+0xa>

0000013c <.LVL167>:
 13c:	00048513          	mv	a0,s1
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LVL167+0x4>

00000148 <.LVL168>:
 148:	85ca                	mv	a1,s2
 14a:	8522                	mv	a0,s0
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.LVL168+0x4>

00000154 <.LVL169>:
 154:	000005b7          	lui	a1,0x0
 158:	8522                	mv	a0,s0
 15a:	00058593          	mv	a1,a1
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL169+0xa>

00000166 <.LVL170>:
 166:	000005b7          	lui	a1,0x0
 16a:	8522                	mv	a0,s0
 16c:	00058593          	mv	a1,a1
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL170+0xa>

00000178 <.LVL171>:
 178:	000005b7          	lui	a1,0x0
 17c:	00058593          	mv	a1,a1
 180:	8522                	mv	a0,s0
 182:	00000097          	auipc	ra,0x0
 186:	000080e7          	jalr	ra # 182 <.LVL171+0xa>

0000018a <.LVL172>:
 18a:	b565                	j	32 <.L61>

Disassembly of section .text.tcp_send_data:

00000000 <tcp_send_data>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	e11d                	bnez	a0,2e <.L70>
   a:	000006b7          	lui	a3,0x0
   e:	00000637          	lui	a2,0x0
  12:	00068693          	mv	a3,a3
  16:	00060613          	mv	a2,a2
  1a:	2a100593          	li	a1,673

0000001e <.L76>:
  1e:	00000537          	lui	a0,0x0

00000022 <.LVL174>:
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL174+0x4>

0000002e <.L70>:
  2e:	415c                	lw	a5,4(a0)
  30:	842a                	mv	s0,a0

00000032 <.LVL176>:
  32:	ef81                	bnez	a5,4a <.L71>

00000034 <.LVL177>:
  34:	000006b7          	lui	a3,0x0
  38:	00000637          	lui	a2,0x0
  3c:	00068693          	mv	a3,a3
  40:	00060613          	mv	a2,a2
  44:	2a400593          	li	a1,676
  48:	bfd9                	j	1e <.L76>

0000004a <.L71>:
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L71>

00000052 <.LVL178>:
  52:	4004                	lw	s1,0(s0)

00000054 <.LVL179>:
  54:	03800793          	li	a5,56
  58:	02f487b3          	mul	a5,s1,a5
  5c:	000004b7          	lui	s1,0x0

00000060 <.LVL180>:
  60:	00048493          	mv	s1,s1
  64:	94be                	add	s1,s1,a5
  66:	0184c703          	lbu	a4,24(s1) # 18 <tcp_send_data+0x18>
  6a:	4789                	li	a5,2
  6c:	00f70563          	beq	a4,a5,76 <.L72>
  70:	0384c783          	lbu	a5,56(s1)
  74:	e7a9                	bnez	a5,be <.L73>

00000076 <.L72>:
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.L72>

0000007e <.LVL182>:
  7e:	000004b7          	lui	s1,0x0
  82:	00048513          	mv	a0,s1
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL182+0x8>

0000008e <.LVL183>:
  8e:	400c                	lw	a1,0(s0)
  90:	00000537          	lui	a0,0x0
  94:	00050513          	mv	a0,a0
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LVL183+0xa>

000000a0 <.LVL184>:
  a0:	00048513          	mv	a0,s1
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL184+0x4>

000000ac <.L75>:
  ac:	8522                	mv	a0,s0
  ae:	4422                	lw	s0,8(sp)

000000b0 <.LVL186>:
  b0:	40b2                	lw	ra,12(sp)
  b2:	4492                	lw	s1,4(sp)
  b4:	0141                	addi	sp,sp,16
  b6:	00000317          	auipc	t1,0x0
  ba:	00030067          	jr	t1 # b6 <.LVL186+0x6>

000000be <.L73>:
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.L73>

000000c6 <.LVL188>:
  c6:	000007b7          	lui	a5,0x0
  ca:	0007d603          	lhu	a2,0(a5) # 0 <tcp_send_data>
  ce:	404c                	lw	a1,4(s0)
  d0:	5888                	lw	a0,48(s1)
  d2:	4681                	li	a3,0
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.LVL188+0xe>

000000dc <.LVL189>:
  dc:	bfc1                	j	ac <.L75>

Disassembly of section .text.bl_cipstatus:

00000000 <bl_cipstatus>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	00000437          	lui	s0,0x0
   c:	00000937          	lui	s2,0x0
  10:	000009b7          	lui	s3,0x0
  14:	ca26                	sw	s1,20(sp)
  16:	c452                	sw	s4,8(sp)
  18:	c256                	sw	s5,4(sp)
  1a:	c05a                	sw	s6,0(sp)
  1c:	ce06                	sw	ra,28(sp)
  1e:	00040413          	mv	s0,s0
  22:	4481                	li	s1,0
  24:	00000a37          	lui	s4,0x0
  28:	4a89                	li	s5,2
  2a:	00000b37          	lui	s6,0x0
  2e:	00090913          	mv	s2,s2
  32:	00098993          	mv	s3,s3

00000036 <.L80>:
  36:	03844783          	lbu	a5,56(s0) # 38 <.L80+0x2>
  3a:	c3b1                	beqz	a5,7e <.L78>
  3c:	000a0513          	mv	a0,s4
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.L80+0xa>

00000048 <.LVL192>:
  48:	01844783          	lbu	a5,24(s0)
  4c:	864a                	mv	a2,s2
  4e:	17fd                	addi	a5,a5,-1
  50:	0ff7f793          	andi	a5,a5,255
  54:	00fae563          	bltu	s5,a5,5e <.L79>
  58:	078a                	slli	a5,a5,0x2
  5a:	97ce                	add	a5,a5,s3
  5c:	4390                	lw	a2,0(a5)

0000005e <.L79>:
  5e:	4858                	lw	a4,20(s0)
  60:	00440693          	addi	a3,s0,4
  64:	85a6                	mv	a1,s1
  66:	000b0513          	mv	a0,s6
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.L79+0xc>

00000072 <.LVL194>:
  72:	000a0513          	mv	a0,s4
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL194+0x4>

0000007e <.L78>:
  7e:	0485                	addi	s1,s1,1

00000080 <.LVL196>:
  80:	4795                	li	a5,5
  82:	03840413          	addi	s0,s0,56
  86:	faf498e3          	bne	s1,a5,36 <.L80>
  8a:	40f2                	lw	ra,28(sp)
  8c:	4462                	lw	s0,24(sp)
  8e:	44d2                	lw	s1,20(sp)
  90:	4942                	lw	s2,16(sp)
  92:	49b2                	lw	s3,12(sp)
  94:	4a22                	lw	s4,8(sp)
  96:	4a92                	lw	s5,4(sp)
  98:	4b02                	lw	s6,0(sp)
  9a:	4501                	li	a0,0
  9c:	6105                	addi	sp,sp,32
  9e:	8082                	ret

Disassembly of section .text.bl_cipstart:

00000000 <bl_cipstart>:
   0:	715d                	addi	sp,sp,-80
   2:	c686                	sw	ra,76(sp)
   4:	c4a2                	sw	s0,72(sp)
   6:	c2a6                	sw	s1,68(sp)
   8:	c0ca                	sw	s2,64(sp)
   a:	de4e                	sw	s3,60(sp)
   c:	dc52                	sw	s4,56(sp)
   e:	da56                	sw	s5,52(sp)
  10:	d85a                	sw	s6,48(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	00852a03          	lw	s4,8(a0) # 8 <bl_cipstart+0x8>

00000018 <.LVL198>:
  18:	4791                	li	a5,4
  1a:	4747c963          	blt	a5,s4,48c <.L125>
  1e:	03800a93          	li	s5,56
  22:	035a0ab3          	mul	s5,s4,s5
  26:	00000bb7          	lui	s7,0x0
  2a:	000009b7          	lui	s3,0x0
  2e:	842a                	mv	s0,a0
  30:	000ba503          	lw	a0,0(s7) # 0 <bl_cipstart>

00000034 <.LVL199>:
  34:	00098b13          	mv	s6,s3
  38:	55fd                	li	a1,-1

0000003a <.LVL200>:
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL200>

00000042 <.LVL201>:
  42:	895e                	mv	s2,s7
  44:	00098993          	mv	s3,s3
  48:	9b56                	add	s6,s6,s5
  4a:	038b4483          	lbu	s1,56(s6) # 38 <.LVL199+0x4>
  4e:	ccb1                	beqz	s1,aa <.L89>
  50:	000ba503          	lw	a0,0(s7)
  54:	4681                	li	a3,0
  56:	4601                	li	a2,0
  58:	4581                	li	a1,0
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL201+0x18>

00000062 <.LVL202>:
  62:	00000437          	lui	s0,0x0

00000066 <.LVL203>:
  66:	00040513          	mv	a0,s0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL203+0x4>

00000072 <.LVL204>:
  72:	00000537          	lui	a0,0x0
  76:	85d2                	mv	a1,s4
  78:	00050513          	mv	a0,a0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL204+0xa>

00000084 <.LVL205>:
  84:	00040513          	mv	a0,s0
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.LVL205+0x4>

00000090 <.LVL206>:
  90:	44d9                	li	s1,22

00000092 <.L88>:
  92:	40b6                	lw	ra,76(sp)
  94:	4426                	lw	s0,72(sp)
  96:	8526                	mv	a0,s1
  98:	4906                	lw	s2,64(sp)
  9a:	4496                	lw	s1,68(sp)
  9c:	59f2                	lw	s3,60(sp)
  9e:	5a62                	lw	s4,56(sp)

000000a0 <.LVL207>:
  a0:	5ad2                	lw	s5,52(sp)
  a2:	5b42                	lw	s6,48(sp)
  a4:	5bb2                	lw	s7,44(sp)
  a6:	6161                	addi	sp,sp,80
  a8:	8082                	ret

000000aa <.L89>:
  aa:	0a91                	addi	s5,s5,4
  ac:	9ace                	add	s5,s5,s3
  ae:	01040593          	addi	a1,s0,16 # 10 <bl_cipstart+0x10>
  b2:	463d                	li	a2,15
  b4:	8556                	mv	a0,s5
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.L89+0xc>

000000be <.LVL209>:
  be:	11042783          	lw	a5,272(s0)
  c2:	000005b7          	lui	a1,0x0
  c6:	0431                	addi	s0,s0,12

000000c8 <.LVL210>:
  c8:	00fb2a23          	sw	a5,20(s6)
  cc:	00058593          	mv	a1,a1
  d0:	8522                	mv	a0,s0
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL210+0xa>

000000da <.LVL211>:
  da:	e10d                	bnez	a0,fc <.L90>

000000dc <.L132>:
  dc:	4785                	li	a5,1

000000de <.L131>:
  de:	00fb0c23          	sb	a5,24(s6)
  e2:	004c                	addi	a1,sp,4
  e4:	8556                	mv	a0,s5
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.L131+0x8>

000000ee <.LVL212>:
  ee:	e52d                	bnez	a0,158 <.L95>
  f0:	4681                	li	a3,0
  f2:	4601                	li	a2,0
  f4:	4581                	li	a1,0
  f6:	00092503          	lw	a0,0(s2) # 0 <bl_cipstart>

000000fa <.LVL213>:
  fa:	a889                	j	14c <.L137>

000000fc <.L90>:
  fc:	000005b7          	lui	a1,0x0
 100:	00058593          	mv	a1,a1
 104:	8522                	mv	a0,s0
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.L90+0xa>

0000010e <.LVL214>:
 10e:	4789                	li	a5,2
 110:	d579                	beqz	a0,de <.L131>
 112:	000005b7          	lui	a1,0x0
 116:	00058593          	mv	a1,a1
 11a:	8522                	mv	a0,s0
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LVL214+0xe>

00000124 <.LVL215>:
 124:	ed19                	bnez	a0,142 <.L93>
 126:	019b4783          	lbu	a5,25(s6)
 12a:	eb91                	bnez	a5,13e <.L94>
 12c:	00000537          	lui	a0,0x0
 130:	00050513          	mv	a0,a0
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL215+0x10>

0000013c <.LVL216>:
 13c:	b745                	j	dc <.L132>

0000013e <.L94>:
 13e:	478d                	li	a5,3
 140:	bf79                	j	de <.L131>

00000142 <.L93>:
 142:	000ba503          	lw	a0,0(s7)
 146:	4681                	li	a3,0
 148:	4601                	li	a2,0
 14a:	4581                	li	a1,0

0000014c <.L137>:
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.L137>

00000154 <.LVL217>:
 154:	4491                	li	s1,4
 156:	bf35                	j	92 <.L88>

00000158 <.L95>:
 158:	03800413          	li	s0,56

0000015c <.LVL219>:
 15c:	028a0433          	mul	s0,s4,s0
 160:	4685                	li	a3,1
 162:	944e                	add	s0,s0,s3
 164:	01844783          	lbu	a5,24(s0)
 168:	06d79a63          	bne	a5,a3,1dc <.L96>
 16c:	02e00513          	li	a0,46

00000170 <.LVL220>:
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL220>

00000178 <.LVL221>:
 178:	d808                	sw	a0,48(s0)
 17a:	ed01                	bnez	a0,192 <.L97>

0000017c <.L141>:
 17c:	00092503          	lw	a0,0(s2)
 180:	4681                	li	a3,0
 182:	4601                	li	a2,0
 184:	4581                	li	a1,0
 186:	00000097          	auipc	ra,0x0
 18a:	000080e7          	jalr	ra # 186 <.L141+0xa>

0000018e <.LVL222>:
 18e:	44c1                	li	s1,16
 190:	b709                	j	92 <.L88>

00000192 <.L97>:
 192:	85d2                	mv	a1,s4
 194:	00000097          	auipc	ra,0x0
 198:	000080e7          	jalr	ra # 194 <.L97+0x2>

0000019c <.LVL223>:
 19c:	01445603          	lhu	a2,20(s0)
 1a0:	5808                	lw	a0,48(s0)
 1a2:	000006b7          	lui	a3,0x0
 1a6:	00068693          	mv	a3,a3
 1aa:	004c                	addi	a1,sp,4
 1ac:	00000097          	auipc	ra,0x0
 1b0:	000080e7          	jalr	ra # 1ac <.LVL223+0x10>

000001b4 <.LVL224>:
 1b4:	581c                	lw	a5,48(s0)
 1b6:	2c050063          	beqz	a0,476 <.L124>
 1ba:	853e                	mv	a0,a5

000001bc <.LVL225>:
 1bc:	00000097          	auipc	ra,0x0
 1c0:	000080e7          	jalr	ra # 1bc <.LVL225>

000001c4 <.LVL226>:
 1c4:	02042823          	sw	zero,48(s0)

000001c8 <.L139>:
 1c8:	00092503          	lw	a0,0(s2)
 1cc:	4681                	li	a3,0
 1ce:	4601                	li	a2,0
 1d0:	4581                	li	a1,0
 1d2:	00000097          	auipc	ra,0x0
 1d6:	000080e7          	jalr	ra # 1d2 <.L139+0xa>

000001da <.LVL227>:
 1da:	ac11                	j	3ee <.L140>

000001dc <.L96>:
 1dc:	4609                	li	a2,2
 1de:	08c79363          	bne	a5,a2,264 <.L99>
 1e2:	02e00513          	li	a0,46

000001e6 <.LVL229>:
 1e6:	00000097          	auipc	ra,0x0
 1ea:	000080e7          	jalr	ra # 1e6 <.LVL229>

000001ee <.LVL230>:
 1ee:	d808                	sw	a0,48(s0)
 1f0:	d551                	beqz	a0,17c <.L141>
 1f2:	000005b7          	lui	a1,0x0
 1f6:	4601                	li	a2,0
 1f8:	00058593          	mv	a1,a1
 1fc:	00000097          	auipc	ra,0x0
 200:	000080e7          	jalr	ra # 1fc <.LVL230+0xe>

00000204 <.LVL231>:
 204:	581c                	lw	a5,48(s0)
 206:	c909                	beqz	a0,218 <.L101>

00000208 <.L144>:
 208:	853e                	mv	a0,a5
 20a:	00000097          	auipc	ra,0x0
 20e:	000080e7          	jalr	ra # 20a <.L144+0x2>

00000212 <.LVL232>:
 212:	02042823          	sw	zero,48(s0)
 216:	b79d                	j	17c <.L141>

00000218 <.L101>:
 218:	01445603          	lhu	a2,20(s0)
 21c:	853e                	mv	a0,a5
 21e:	004c                	addi	a1,sp,4
 220:	00000097          	auipc	ra,0x0
 224:	000080e7          	jalr	ra # 220 <.L101+0x8>

00000228 <.LVL233>:
 228:	581c                	lw	a5,48(s0)
 22a:	fd79                	bnez	a0,208 <.L144>
 22c:	000005b7          	lui	a1,0x0
 230:	853e                	mv	a0,a5
 232:	8652                	mv	a2,s4
 234:	00058593          	mv	a1,a1
 238:	00000097          	auipc	ra,0x0
 23c:	000080e7          	jalr	ra # 238 <.LVL233+0x10>

00000240 <.LVL234>:
 240:	478d                	li	a5,3

00000242 <.L143>:
 242:	02f40c23          	sb	a5,56(s0)
 246:	0009a783          	lw	a5,0(s3) # 0 <bl_cipstart>
 24a:	00092503          	lw	a0,0(s2)
 24e:	4681                	li	a3,0
 250:	0785                	addi	a5,a5,1
 252:	4601                	li	a2,0
 254:	4581                	li	a1,0
 256:	00f9a023          	sw	a5,0(s3)
 25a:	00000097          	auipc	ra,0x0
 25e:	000080e7          	jalr	ra # 25a <.L143+0x18>

00000262 <.LVL235>:
 262:	bd05                	j	92 <.L88>

00000264 <.L99>:
 264:	470d                	li	a4,3
 266:	22e79563          	bne	a5,a4,490 <.L126>
 26a:	01944703          	lbu	a4,25(s0)
 26e:	04c71963          	bne	a4,a2,2c0 <.L103>

00000272 <.LBB28>:
 272:	5008                	lw	a0,32(s0)

00000274 <.LVL237>:
 274:	082c                	addi	a1,sp,24
 276:	00000097          	auipc	ra,0x0
 27a:	000080e7          	jalr	ra # 276 <.LVL237+0x2>

0000027e <.LVL238>:
 27e:	ee051fe3          	bnez	a0,17c <.L141>
 282:	45f2                	lw	a1,28(sp)
 284:	4562                	lw	a0,24(sp)
 286:	00000097          	auipc	ra,0x0
 28a:	000080e7          	jalr	ra # 286 <.LVL238+0x8>

0000028e <.L136>:
 28e:	d848                	sw	a0,52(s0)

00000290 <.LBE29>:
 290:	03800413          	li	s0,56
 294:	028a0433          	mul	s0,s4,s0
 298:	944e                	add	s0,s0,s3
 29a:	5848                	lw	a0,52(s0)
 29c:	ee0500e3          	beqz	a0,17c <.L141>
 2a0:	02e00593          	li	a1,46
 2a4:	00000097          	auipc	ra,0x0
 2a8:	000080e7          	jalr	ra # 2a4 <.LBE29+0x14>

000002ac <.LVL240>:
 2ac:	d808                	sw	a0,48(s0)
 2ae:	e54d                	bnez	a0,358 <.L116>
 2b0:	5848                	lw	a0,52(s0)
 2b2:	00000097          	auipc	ra,0x0
 2b6:	000080e7          	jalr	ra # 2b2 <.LVL240+0x6>

000002ba <.LVL241>:
 2ba:	02042a23          	sw	zero,52(s0)
 2be:	bd7d                	j	17c <.L141>

000002c0 <.L103>:
 2c0:	04f71763          	bne	a4,a5,30e <.L106>

000002c4 <.LBB30>:
 2c4:	5008                	lw	a0,32(s0)

000002c6 <.LVL243>:
 2c6:	002c                	addi	a1,sp,8
 2c8:	00000097          	auipc	ra,0x0
 2cc:	000080e7          	jalr	ra # 2c8 <.LVL243+0x2>

000002d0 <.LVL244>:
 2d0:	ea0516e3          	bnez	a0,17c <.L141>
 2d4:	5048                	lw	a0,36(s0)
 2d6:	080c                	addi	a1,sp,16
 2d8:	00000097          	auipc	ra,0x0
 2dc:	000080e7          	jalr	ra # 2d8 <.LVL244+0x8>

000002e0 <.LVL245>:
 2e0:	e8051ee3          	bnez	a0,17c <.L141>
 2e4:	5408                	lw	a0,40(s0)
 2e6:	082c                	addi	a1,sp,24
 2e8:	00000097          	auipc	ra,0x0
 2ec:	000080e7          	jalr	ra # 2e8 <.LVL245+0x8>

000002f0 <.LVL246>:
 2f0:	e80516e3          	bnez	a0,17c <.L141>
 2f4:	48d2                	lw	a7,20(sp)
 2f6:	4842                	lw	a6,16(sp)
 2f8:	46f2                	lw	a3,28(sp)
 2fa:	4662                	lw	a2,24(sp)
 2fc:	45b2                	lw	a1,12(sp)
 2fe:	4522                	lw	a0,8(sp)
 300:	4781                	li	a5,0
 302:	4701                	li	a4,0

00000304 <.L135>:
 304:	00000097          	auipc	ra,0x0
 308:	000080e7          	jalr	ra # 304 <.L135>

0000030c <.LVL247>:
 30c:	b749                	j	28e <.L136>

0000030e <.L106>:
 30e:	02d71a63          	bne	a4,a3,342 <.L111>

00000312 <.LBB32>:
 312:	5048                	lw	a0,36(s0)

00000314 <.LVL249>:
 314:	080c                	addi	a1,sp,16
 316:	00000097          	auipc	ra,0x0
 31a:	000080e7          	jalr	ra # 316 <.LVL249+0x2>

0000031e <.LVL250>:
 31e:	e4051fe3          	bnez	a0,17c <.L141>
 322:	5408                	lw	a0,40(s0)
 324:	082c                	addi	a1,sp,24
 326:	00000097          	auipc	ra,0x0
 32a:	000080e7          	jalr	ra # 326 <.LVL250+0x8>

0000032e <.LVL251>:
 32e:	e40517e3          	bnez	a0,17c <.L141>
 332:	48d2                	lw	a7,20(sp)
 334:	4842                	lw	a6,16(sp)
 336:	4781                	li	a5,0
 338:	4701                	li	a4,0
 33a:	46f2                	lw	a3,28(sp)
 33c:	4662                	lw	a2,24(sp)
 33e:	4581                	li	a1,0
 340:	b7d1                	j	304 <.L135>

00000342 <.L111>:
 342:	00092503          	lw	a0,0(s2)

00000346 <.LVL253>:
 346:	4681                	li	a3,0
 348:	4601                	li	a2,0
 34a:	4581                	li	a1,0
 34c:	00000097          	auipc	ra,0x0
 350:	000080e7          	jalr	ra # 34c <.LVL253+0x6>

00000354 <.LVL254>:
 354:	4499                	li	s1,6
 356:	bb35                	j	92 <.L88>

00000358 <.L116>:
 358:	4c58                	lw	a4,28(s0)
 35a:	01944783          	lbu	a5,25(s0)
 35e:	cb51                	beqz	a4,3f2 <.L117>
 360:	4705                	li	a4,1
 362:	08e78b63          	beq	a5,a4,3f8 <.L118>

00000366 <.LBB33>:
 366:	00000097          	auipc	ra,0x0
 36a:	000080e7          	jalr	ra # 366 <.LBB33>

0000036e <.LVL255>:
 36e:	8aaa                	mv	s5,a0

00000370 <.LVL256>:
 370:	e11d                	bnez	a0,396 <.L119>
 372:	000006b7          	lui	a3,0x0
 376:	00000637          	lui	a2,0x0
 37a:	00000537          	lui	a0,0x0

0000037e <.LVL257>:
 37e:	00068693          	mv	a3,a3
 382:	00060613          	mv	a2,a2
 386:	1cc00593          	li	a1,460
 38a:	00050513          	mv	a0,a0
 38e:	00000097          	auipc	ra,0x0
 392:	000080e7          	jalr	ra # 38e <.LVL257+0x10>

00000396 <.L119>:
 396:	5848                	lw	a0,52(s0)

00000398 <.LVL259>:
 398:	4589                	li	a1,2
 39a:	00000097          	auipc	ra,0x0
 39e:	000080e7          	jalr	ra # 39a <.LVL259+0x2>

000003a2 <.LVL260>:
 3a2:	4c4c                	lw	a1,28(s0)
 3a4:	8556                	mv	a0,s5
 3a6:	00000097          	auipc	ra,0x0
 3aa:	000080e7          	jalr	ra # 3a6 <.LVL260+0x4>

000003ae <.LVL261>:
 3ae:	c125                	beqz	a0,40e <.L121>
 3b0:	5808                	lw	a0,48(s0)
 3b2:	00000097          	auipc	ra,0x0
 3b6:	000080e7          	jalr	ra # 3b2 <.LVL261+0x4>

000003ba <.LVL262>:
 3ba:	5848                	lw	a0,52(s0)
 3bc:	02042823          	sw	zero,48(s0)
 3c0:	00000097          	auipc	ra,0x0
 3c4:	000080e7          	jalr	ra # 3c0 <.LVL262+0x6>

000003c8 <.LVL263>:
 3c8:	00092503          	lw	a0,0(s2)
 3cc:	02042a23          	sw	zero,52(s0)
 3d0:	4681                	li	a3,0
 3d2:	4601                	li	a2,0
 3d4:	4581                	li	a1,0
 3d6:	00000097          	auipc	ra,0x0
 3da:	000080e7          	jalr	ra # 3d6 <.LVL263+0xe>

000003de <.LVL264>:
 3de:	00000537          	lui	a0,0x0
 3e2:	00050513          	mv	a0,a0
 3e6:	00000097          	auipc	ra,0x0
 3ea:	000080e7          	jalr	ra # 3e6 <.LVL264+0x8>

000003ee <.L140>:
 3ee:	44b9                	li	s1,14
 3f0:	b14d                	j	92 <.L88>

000003f2 <.L117>:
 3f2:	4705                	li	a4,1
 3f4:	00e79d63          	bne	a5,a4,40e <.L121>

000003f8 <.L118>:
 3f8:	03800793          	li	a5,56
 3fc:	02fa07b3          	mul	a5,s4,a5
 400:	4581                	li	a1,0
 402:	97ce                	add	a5,a5,s3
 404:	5bc8                	lw	a0,52(a5)
 406:	00000097          	auipc	ra,0x0
 40a:	000080e7          	jalr	ra # 406 <.L118+0xe>

0000040e <.L121>:
 40e:	03800793          	li	a5,56
 412:	02fa07b3          	mul	a5,s4,a5
 416:	97ce                	add	a5,a5,s3
 418:	57cc                	lw	a1,44(a5)
 41a:	c591                	beqz	a1,426 <.L123>
 41c:	5bc8                	lw	a0,52(a5)
 41e:	00000097          	auipc	ra,0x0
 422:	000080e7          	jalr	ra # 41e <.L121+0x10>

00000426 <.L123>:
 426:	03800413          	li	s0,56
 42a:	028a0433          	mul	s0,s4,s0
 42e:	85d2                	mv	a1,s4
 430:	944e                	add	s0,s0,s3
 432:	5808                	lw	a0,48(s0)
 434:	00000097          	auipc	ra,0x0
 438:	000080e7          	jalr	ra # 434 <.L123+0xe>

0000043c <.LVL268>:
 43c:	01445603          	lhu	a2,20(s0)
 440:	5808                	lw	a0,48(s0)
 442:	000006b7          	lui	a3,0x0
 446:	00068693          	mv	a3,a3
 44a:	004c                	addi	a1,sp,4
 44c:	00000097          	auipc	ra,0x0
 450:	000080e7          	jalr	ra # 44c <.LVL268+0x10>

00000454 <.LVL269>:
 454:	581c                	lw	a5,48(s0)
 456:	c105                	beqz	a0,476 <.L124>
 458:	853e                	mv	a0,a5

0000045a <.LVL270>:
 45a:	00000097          	auipc	ra,0x0
 45e:	000080e7          	jalr	ra # 45a <.LVL270>

00000462 <.LVL271>:
 462:	5848                	lw	a0,52(s0)
 464:	02042823          	sw	zero,48(s0)
 468:	00000097          	auipc	ra,0x0
 46c:	000080e7          	jalr	ra # 468 <.LVL271+0x6>

00000470 <.LVL272>:
 470:	02042a23          	sw	zero,52(s0)
 474:	bb91                	j	1c8 <.L139>

00000476 <.L124>:
 476:	000005b7          	lui	a1,0x0
 47a:	853e                	mv	a0,a5
 47c:	00058593          	mv	a1,a1
 480:	00000097          	auipc	ra,0x0
 484:	000080e7          	jalr	ra # 480 <.L124+0xa>

00000488 <.LVL273>:
 488:	4789                	li	a5,2
 48a:	bb65                	j	242 <.L143>

0000048c <.L125>:
 48c:	44a5                	li	s1,9
 48e:	b111                	j	92 <.L88>

00000490 <.L126>:
 490:	44e9                	li	s1,26
 492:	b101                	j	92 <.L88>

Disassembly of section .text.bl_cipsendbuf:

00000000 <bl_cipsendbuf>:
   0:	4501                	li	a0,0

00000002 <.LVL277>:
   2:	8082                	ret

Disassembly of section .text.bl_cipclose:

00000000 <bl_cipclose>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	4504                	lw	s1,8(a0)
  10:	4791                	li	a5,4
  12:	4511                	li	a0,4

00000014 <.LVL279>:
  14:	0a97c963          	blt	a5,s1,c6 <.L147>
  18:	03800793          	li	a5,56
  1c:	02f487b3          	mul	a5,s1,a5
  20:	00000937          	lui	s2,0x0
  24:	00090413          	mv	s0,s2
  28:	4559                	li	a0,22
  2a:	00090913          	mv	s2,s2
  2e:	943e                	add	s0,s0,a5
  30:	03844783          	lbu	a5,56(s0)
  34:	cbc9                	beqz	a5,c6 <.L147>

00000036 <.LBB36>:
  36:	000009b7          	lui	s3,0x0
  3a:	00098513          	mv	a0,s3
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LBB36+0x8>

00000046 <.LVL281>:
  46:	00000537          	lui	a0,0x0
  4a:	85a6                	mv	a1,s1
  4c:	00050513          	mv	a0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL281+0xa>

00000058 <.LVL282>:
  58:	00098513          	mv	a0,s3
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL282+0x4>

00000064 <.LVL283>:
  64:	000009b7          	lui	s3,0x0
  68:	0009a503          	lw	a0,0(s3) # 0 <bl_cipclose>
  6c:	55fd                	li	a1,-1
  6e:	8a4e                	mv	s4,s3
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL283+0xc>

00000078 <.LVL284>:
  78:	03844783          	lbu	a5,56(s0)
  7c:	cbc1                	beqz	a5,10c <.L148>
  7e:	01844783          	lbu	a5,24(s0)
  82:	02040c23          	sb	zero,56(s0)
  86:	4709                	li	a4,2
  88:	04e79763          	bne	a5,a4,d6 <.L149>
  8c:	5808                	lw	a0,48(s0)
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.LVL284+0x16>

00000096 <.L156>:
  96:	02042823          	sw	zero,48(s0)

0000009a <.L150>:
  9a:	03800793          	li	a5,56
  9e:	02f484b3          	mul	s1,s1,a5

000000a2 <.LVL286>:
  a2:	00092783          	lw	a5,0(s2) # 0 <bl_cipclose>
  a6:	000a2503          	lw	a0,0(s4) # 0 <bl_cipclose>
  aa:	4681                	li	a3,0
  ac:	17fd                	addi	a5,a5,-1
  ae:	4601                	li	a2,0
  b0:	4581                	li	a1,0
  b2:	00f92023          	sw	a5,0(s2)
  b6:	94ca                	add	s1,s1,s2
  b8:	00048c23          	sb	zero,24(s1) # 18 <.LVL279+0x4>
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LVL286+0x1a>

000000c4 <.LVL287>:
  c4:	4501                	li	a0,0

000000c6 <.L147>:
  c6:	40f2                	lw	ra,28(sp)
  c8:	4462                	lw	s0,24(sp)
  ca:	44d2                	lw	s1,20(sp)
  cc:	4942                	lw	s2,16(sp)
  ce:	49b2                	lw	s3,12(sp)
  d0:	4a22                	lw	s4,8(sp)
  d2:	6105                	addi	sp,sp,32
  d4:	8082                	ret

000000d6 <.L149>:
  d6:	4705                	li	a4,1
  d8:	00e79863          	bne	a5,a4,e8 <.L151>
  dc:	5808                	lw	a0,48(s0)
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.L149+0x8>

000000e6 <.LVL289>:
  e6:	bf45                	j	96 <.L156>

000000e8 <.L151>:
  e8:	470d                	li	a4,3
  ea:	fae798e3          	bne	a5,a4,9a <.L150>
  ee:	5808                	lw	a0,48(s0)
  f0:	00000097          	auipc	ra,0x0
  f4:	000080e7          	jalr	ra # f0 <.L151+0x8>

000000f8 <.LVL290>:
  f8:	5848                	lw	a0,52(s0)
  fa:	02042823          	sw	zero,48(s0)
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LVL290+0x6>

00000106 <.LVL291>:
 106:	02042a23          	sw	zero,52(s0)
 10a:	bf41                	j	9a <.L150>

0000010c <.L148>:
 10c:	0009a503          	lw	a0,0(s3)
 110:	4681                	li	a3,0
 112:	4601                	li	a2,0
 114:	4581                	li	a1,0
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.L148+0xa>

0000011e <.LVL292>:
 11e:	4549                	li	a0,18
 120:	b75d                	j	c6 <.L147>

Disassembly of section .text.bl_tcpserver:

00000000 <bl_tcpserver>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	491c                	lw	a5,16(a0)
  10:	4558                	lw	a4,12(a0)

00000012 <.LVL294>:
  12:	ebf5                	bnez	a5,106 <.L158>

00000014 <.LVL295>:
  14:	000007b7          	lui	a5,0x0
  18:	00078793          	mv	a5,a5
  1c:	4394                	lw	a3,0(a5)
  1e:	cf55                	beqz	a4,da <.L179>
  20:	4985                	li	s3,1

00000022 <.L166>:
  22:	00000937          	lui	s2,0x0
  26:	00090913          	mv	s2,s2
  2a:	00092783          	lw	a5,0(s2) # 0 <bl_tcpserver>
  2e:	cb99                	beqz	a5,44 <.L160>

00000030 <.L164>:
  30:	47c1                	li	a5,16

00000032 <.L177>:
  32:	40f2                	lw	ra,28(sp)
  34:	4462                	lw	s0,24(sp)
  36:	44d2                	lw	s1,20(sp)
  38:	4942                	lw	s2,16(sp)
  3a:	49b2                	lw	s3,12(sp)
  3c:	4a22                	lw	s4,8(sp)
  3e:	853e                	mv	a0,a5
  40:	6105                	addi	sp,sp,32
  42:	8082                	ret

00000044 <.L160>:
  44:	451c                	lw	a5,8(a0)
  46:	000004b7          	lui	s1,0x0
  4a:	00000537          	lui	a0,0x0

0000004e <.LVL299>:
  4e:	00048493          	mv	s1,s1
  52:	4a05                	li	s4,1
  54:	00050413          	mv	s0,a0
  58:	02800613          	li	a2,40
  5c:	4581                	li	a1,0

0000005e <.LVL300>:
  5e:	00050513          	mv	a0,a0
  62:	00f49023          	sh	a5,0(s1) # 0 <bl_tcpserver>
  66:	0144a223          	sw	s4,4(s1)
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL300+0xc>

00000072 <.LVL301>:
  72:	01498463          	beq	s3,s4,7a <.L162>

00000076 <.L181>:
  76:	4781                	li	a5,0
  78:	bf6d                	j	32 <.L177>

0000007a <.L162>:
  7a:	4501                	li	a0,0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L162+0x2>

00000084 <.LVL302>:
  84:	d008                	sw	a0,32(s0)
  86:	47d1                	li	a5,20
  88:	d54d                	beqz	a0,32 <.L177>
  8a:	0004d603          	lhu	a2,0(s1)
  8e:	000005b7          	lui	a1,0x0
  92:	00058593          	mv	a1,a1
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.LVL302+0x12>

0000009e <.LVL303>:
  9e:	c911                	beqz	a0,b2 <.L163>
  a0:	5008                	lw	a0,32(s0)

000000a2 <.LVL304>:
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.LVL304>

000000aa <.LVL305>:
  aa:	47bd                	li	a5,15
  ac:	02042023          	sw	zero,32(s0)
  b0:	b749                	j	32 <.L177>

000000b2 <.L163>:
  b2:	5008                	lw	a0,32(s0)

000000b4 <.LVL307>:
  b4:	4601                	li	a2,0
  b6:	4595                	li	a1,5
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.LVL307+0x4>

000000c0 <.LVL308>:
  c0:	d008                	sw	a0,32(s0)
  c2:	d53d                	beqz	a0,30 <.L164>
  c4:	000005b7          	lui	a1,0x0
  c8:	00058593          	mv	a1,a1
  cc:	01392023          	sw	s3,0(s2)
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.LVL308+0x10>

000000d8 <.LVL309>:
  d8:	bf79                	j	76 <.L181>

000000da <.L179>:
  da:	dab9                	beqz	a3,30 <.L164>
  dc:	0007a023          	sw	zero,0(a5) # 0 <bl_tcpserver>
  e0:	000007b7          	lui	a5,0x0
  e4:	0047a703          	lw	a4,4(a5) # 4 <bl_tcpserver+0x4>

000000e8 <.LVL311>:
  e8:	4785                	li	a5,1
  ea:	f8f716e3          	bne	a4,a5,76 <.L181>
  ee:	00000437          	lui	s0,0x0
  f2:	00040413          	mv	s0,s0
  f6:	5008                	lw	a0,32(s0)

000000f8 <.LVL312>:
  f8:	00000097          	auipc	ra,0x0
  fc:	000080e7          	jalr	ra # f8 <.LVL312>

00000100 <.LVL313>:
 100:	02042023          	sw	zero,32(s0) # 20 <.LVL295+0xc>
 104:	bf8d                	j	76 <.L181>

00000106 <.L158>:
 106:	498d                	li	s3,3
 108:	4799                	li	a5,6
 10a:	ff01                	bnez	a4,22 <.L166>
 10c:	b71d                	j	32 <.L177>

Disassembly of section .text.bl_cipsend:

00000000 <bl_cipsend>:
   0:	450c                	lw	a1,8(a0)

00000002 <.LVL316>:
   2:	4791                	li	a5,4
   4:	0ab7c863          	blt	a5,a1,b4 <.L188>
   8:	03800793          	li	a5,56
   c:	02f58733          	mul	a4,a1,a5
  10:	000007b7          	lui	a5,0x0
  14:	1141                	addi	sp,sp,-16
  16:	00078793          	mv	a5,a5
  1a:	c422                	sw	s0,8(sp)
  1c:	c606                	sw	ra,12(sp)
  1e:	842a                	mv	s0,a0

00000020 <.LVL317>:
  20:	97ba                	add	a5,a5,a4
  22:	0387c683          	lbu	a3,56(a5) # 38 <.LVL318+0x8>
  26:	470d                	li	a4,3
  28:	00e68f63          	beq	a3,a4,46 <.L184>
  2c:	00000537          	lui	a0,0x0

00000030 <.LVL318>:
  30:	00050513          	mv	a0,a0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL318+0x4>

0000003c <.LVL319>:
  3c:	4509                	li	a0,2

0000003e <.L183>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)

00000042 <.LVL320>:
  42:	0141                	addi	sp,sp,16
  44:	8082                	ret

00000046 <.L184>:
  46:	4554                	lw	a3,12(a0)
  48:	0187c783          	lbu	a5,24(a5)
  4c:	00000737          	lui	a4,0x0
  50:	00d72023          	sw	a3,0(a4) # 0 <bl_cipsend>
  54:	0fd7f693          	andi	a3,a5,253
  58:	4705                	li	a4,1
  5a:	02e69963          	bne	a3,a4,8c <.L185>
  5e:	4521                	li	a0,8
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.L184+0x1a>

00000068 <.LVL322>:
  68:	85aa                	mv	a1,a0

0000006a <.LVL323>:
  6a:	e119                	bnez	a0,70 <.L186>

0000006c <.L187>:
  6c:	4551                	li	a0,20

0000006e <.LVL324>:
  6e:	bfc1                	j	3e <.L183>

00000070 <.L186>:
  70:	441c                	lw	a5,8(s0)
  72:	c11c                	sw	a5,0(a0)
  74:	481c                	lw	a5,16(s0)
  76:	c15c                	sw	a5,4(a0)
  78:	00000537          	lui	a0,0x0

0000007c <.LVL326>:
  7c:	00050513          	mv	a0,a0

00000080 <.L197>:
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.L197>

00000088 <.LVL327>:
  88:	4501                	li	a0,0
  8a:	bf55                	j	3e <.L183>

0000008c <.L185>:
  8c:	4709                	li	a4,2
  8e:	4519                	li	a0,6
  90:	fae797e3          	bne	a5,a4,3e <.L183>
  94:	4521                	li	a0,8
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.L185+0xa>

0000009e <.LVL329>:
  9e:	85aa                	mv	a1,a0

000000a0 <.LVL330>:
  a0:	d571                	beqz	a0,6c <.L187>
  a2:	441c                	lw	a5,8(s0)
  a4:	c11c                	sw	a5,0(a0)
  a6:	481c                	lw	a5,16(s0)
  a8:	c15c                	sw	a5,4(a0)
  aa:	00000537          	lui	a0,0x0

000000ae <.LVL331>:
  ae:	00050513          	mv	a0,a0
  b2:	b7f9                	j	80 <.L197>

000000b4 <.L188>:
  b4:	4549                	li	a0,18

000000b6 <.LVL333>:
  b6:	8082                	ret

Disassembly of section .text.bl_cipsslcconf_path:

00000000 <bl_cipsslcconf_path>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	4518                	lw	a4,8(a0)
  12:	4791                	li	a5,4
  14:	49a5                	li	s3,9
  16:	04e7c863          	blt	a5,a4,66 <.L199>
  1a:	00000ab7          	lui	s5,0x0
  1e:	892a                	mv	s2,a0
  20:	000aa503          	lw	a0,0(s5) # 0 <bl_cipsslcconf_path>

00000024 <.LVL335>:
  24:	55fd                	li	a1,-1

00000026 <.LVL336>:
  26:	00000437          	lui	s0,0x0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL336+0x4>

00000032 <.LVL337>:
  32:	00892483          	lw	s1,8(s2)
  36:	03800713          	li	a4,56
  3a:	00040793          	mv	a5,s0
  3e:	02e48733          	mul	a4,s1,a4
  42:	8a56                	mv	s4,s5
  44:	00040413          	mv	s0,s0
  48:	97ba                	add	a5,a5,a4
  4a:	0387c983          	lbu	s3,56(a5)
  4e:	02098663          	beqz	s3,7a <.L200>
  52:	000aa503          	lw	a0,0(s5)
  56:	4681                	li	a3,0
  58:	4601                	li	a2,0
  5a:	4581                	li	a1,0
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL337+0x2a>

00000064 <.LVL338>:
  64:	49d5                	li	s3,21

00000066 <.L199>:
  66:	40f2                	lw	ra,28(sp)
  68:	4462                	lw	s0,24(sp)
  6a:	854e                	mv	a0,s3
  6c:	44d2                	lw	s1,20(sp)
  6e:	4942                	lw	s2,16(sp)
  70:	49b2                	lw	s3,12(sp)
  72:	4a22                	lw	s4,8(sp)
  74:	4a92                	lw	s5,4(sp)
  76:	6105                	addi	sp,sp,32
  78:	8082                	ret

0000007a <.L200>:
  7a:	00c92703          	lw	a4,12(s2)
  7e:	4685                	li	a3,1
  80:	0ed70863          	beq	a4,a3,170 <.L201>
  84:	00e6cf63          	blt	a3,a4,a2 <.L202>
  88:	12070a63          	beqz	a4,1bc <.L203>

0000008c <.L204>:
  8c:	000a2503          	lw	a0,0(s4)
  90:	4681                	li	a3,0
  92:	4601                	li	a2,0
  94:	4581                	li	a1,0
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.L204+0xa>

0000009e <.LVL341>:
  9e:	4991                	li	s3,4
  a0:	b7d9                	j	66 <.L199>

000000a2 <.L202>:
  a2:	4689                	li	a3,2
  a4:	06d70b63          	beq	a4,a3,11a <.L205>
  a8:	468d                	li	a3,3
  aa:	fed711e3          	bne	a4,a3,8c <.L204>
  ae:	5388                	lw	a0,32(a5)
  b0:	00e78ca3          	sb	a4,25(a5)
  b4:	c509                	beqz	a0,be <.L206>
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.L202+0x14>

000000be <.L206>:
  be:	03800793          	li	a5,56
  c2:	02f487b3          	mul	a5,s1,a5
  c6:	97a2                	add	a5,a5,s0
  c8:	53c8                	lw	a0,36(a5)
  ca:	c509                	beqz	a0,d4 <.L207>
  cc:	00000097          	auipc	ra,0x0
  d0:	000080e7          	jalr	ra # cc <.L206+0xe>

000000d4 <.L207>:
  d4:	03800793          	li	a5,56
  d8:	02f487b3          	mul	a5,s1,a5
  dc:	97a2                	add	a5,a5,s0
  de:	5788                	lw	a0,40(a5)
  e0:	c509                	beqz	a0,ea <.L208>
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.L207+0xe>

000000ea <.L208>:
  ea:	03800793          	li	a5,56
  ee:	02f484b3          	mul	s1,s1,a5

000000f2 <.LVL345>:
  f2:	01092703          	lw	a4,16(s2)
  f6:	9426                	add	s0,s0,s1
  f8:	d018                	sw	a4,32(s0)

000000fa <.L257>:
  fa:	01892783          	lw	a5,24(s2)
  fe:	d05c                	sw	a5,36(s0)
 100:	01492783          	lw	a5,20(s2)
 104:	d41c                	sw	a5,40(s0)

00000106 <.L209>:
 106:	000a2503          	lw	a0,0(s4)
 10a:	4681                	li	a3,0
 10c:	4601                	li	a2,0
 10e:	4581                	li	a1,0
 110:	00000097          	auipc	ra,0x0
 114:	000080e7          	jalr	ra # 110 <.L209+0xa>

00000118 <.LVL346>:
 118:	b7b9                	j	66 <.L199>

0000011a <.L205>:
 11a:	5388                	lw	a0,32(a5)
 11c:	00e78ca3          	sb	a4,25(a5)
 120:	c509                	beqz	a0,12a <.L210>
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.L205+0x8>

0000012a <.L210>:
 12a:	03800793          	li	a5,56
 12e:	02f487b3          	mul	a5,s1,a5
 132:	97a2                	add	a5,a5,s0
 134:	53c8                	lw	a0,36(a5)
 136:	c509                	beqz	a0,140 <.L211>
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.L210+0xe>

00000140 <.L211>:
 140:	03800793          	li	a5,56
 144:	02f487b3          	mul	a5,s1,a5
 148:	97a2                	add	a5,a5,s0
 14a:	5788                	lw	a0,40(a5)
 14c:	c509                	beqz	a0,156 <.L212>
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <.L211+0xe>

00000156 <.L212>:
 156:	03800793          	li	a5,56
 15a:	02f484b3          	mul	s1,s1,a5

0000015e <.LVL351>:
 15e:	01092703          	lw	a4,16(s2)
 162:	9426                	add	s0,s0,s1
 164:	d018                	sw	a4,32(s0)

00000166 <.L258>:
 166:	02042223          	sw	zero,36(s0) # 24 <.LVL335>
 16a:	02042423          	sw	zero,40(s0)
 16e:	bf61                	j	106 <.L209>

00000170 <.L201>:
 170:	5388                	lw	a0,32(a5)
 172:	00e78ca3          	sb	a4,25(a5)
 176:	c509                	beqz	a0,180 <.L213>
 178:	00000097          	auipc	ra,0x0
 17c:	000080e7          	jalr	ra # 178 <.L201+0x8>

00000180 <.L213>:
 180:	03800793          	li	a5,56
 184:	02f487b3          	mul	a5,s1,a5
 188:	97a2                	add	a5,a5,s0
 18a:	53c8                	lw	a0,36(a5)
 18c:	c509                	beqz	a0,196 <.L214>
 18e:	00000097          	auipc	ra,0x0
 192:	000080e7          	jalr	ra # 18e <.L213+0xe>

00000196 <.L214>:
 196:	03800793          	li	a5,56
 19a:	02f487b3          	mul	a5,s1,a5
 19e:	97a2                	add	a5,a5,s0
 1a0:	5788                	lw	a0,40(a5)
 1a2:	c509                	beqz	a0,1ac <.L215>
 1a4:	00000097          	auipc	ra,0x0
 1a8:	000080e7          	jalr	ra # 1a4 <.L214+0xe>

000001ac <.L215>:
 1ac:	03800793          	li	a5,56
 1b0:	02f484b3          	mul	s1,s1,a5

000001b4 <.LVL356>:
 1b4:	9426                	add	s0,s0,s1
 1b6:	02042023          	sw	zero,32(s0)
 1ba:	b781                	j	fa <.L257>

000001bc <.L203>:
 1bc:	5388                	lw	a0,32(a5)
 1be:	00078ca3          	sb	zero,25(a5)
 1c2:	c509                	beqz	a0,1cc <.L216>
 1c4:	00000097          	auipc	ra,0x0
 1c8:	000080e7          	jalr	ra # 1c4 <.L203+0x8>

000001cc <.L216>:
 1cc:	03800793          	li	a5,56
 1d0:	02f487b3          	mul	a5,s1,a5
 1d4:	97a2                	add	a5,a5,s0
 1d6:	53c8                	lw	a0,36(a5)
 1d8:	c509                	beqz	a0,1e2 <.L217>
 1da:	00000097          	auipc	ra,0x0
 1de:	000080e7          	jalr	ra # 1da <.L216+0xe>

000001e2 <.L217>:
 1e2:	03800793          	li	a5,56
 1e6:	02f487b3          	mul	a5,s1,a5
 1ea:	97a2                	add	a5,a5,s0
 1ec:	5788                	lw	a0,40(a5)
 1ee:	c509                	beqz	a0,1f8 <.L218>
 1f0:	00000097          	auipc	ra,0x0
 1f4:	000080e7          	jalr	ra # 1f0 <.L217+0xe>

000001f8 <.L218>:
 1f8:	03800793          	li	a5,56
 1fc:	02f484b3          	mul	s1,s1,a5

00000200 <.LVL361>:
 200:	9426                	add	s0,s0,s1
 202:	02042023          	sw	zero,32(s0)
 206:	b785                	j	166 <.L258>

Disassembly of section .text.bl_cipsslcsni:

00000000 <bl_cipsslcsni>:
   0:	7179                	addi	sp,sp,-48
   2:	c85a                	sw	s6,16(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	4518                	lw	a4,8(a0)
  18:	4791                	li	a5,4
  1a:	4b25                	li	s6,9
  1c:	04e7c863          	blt	a5,a4,6c <.L260>
  20:	00000ab7          	lui	s5,0x0
  24:	842a                	mv	s0,a0
  26:	000aa503          	lw	a0,0(s5) # 0 <bl_cipsslcsni>

0000002a <.LVL363>:
  2a:	55fd                	li	a1,-1

0000002c <.LVL364>:
  2c:	00000937          	lui	s2,0x0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL364+0x4>

00000038 <.LVL365>:
  38:	00842c03          	lw	s8,8(s0)
  3c:	03800793          	li	a5,56
  40:	00090493          	mv	s1,s2
  44:	02fc07b3          	mul	a5,s8,a5
  48:	8bd6                	mv	s7,s5
  4a:	00090913          	mv	s2,s2
  4e:	94be                	add	s1,s1,a5
  50:	0384cb03          	lbu	s6,56(s1)
  54:	020b0963          	beqz	s6,86 <.L261>
  58:	000aa503          	lw	a0,0(s5)
  5c:	4681                	li	a3,0
  5e:	4601                	li	a2,0
  60:	4581                	li	a1,0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL365+0x2a>

0000006a <.LVL366>:
  6a:	4b55                	li	s6,21

0000006c <.L260>:
  6c:	50b2                	lw	ra,44(sp)
  6e:	5422                	lw	s0,40(sp)
  70:	855a                	mv	a0,s6
  72:	5492                	lw	s1,36(sp)
  74:	5902                	lw	s2,32(sp)
  76:	49f2                	lw	s3,28(sp)
  78:	4a62                	lw	s4,24(sp)
  7a:	4ad2                	lw	s5,20(sp)
  7c:	4b42                	lw	s6,16(sp)
  7e:	4bb2                	lw	s7,12(sp)
  80:	4c22                	lw	s8,8(sp)
  82:	6145                	addi	sp,sp,48
  84:	8082                	ret

00000086 <.L261>:
  86:	0431                	addi	s0,s0,12

00000088 <.LVL369>:
  88:	8522                	mv	a0,s0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL369+0x2>

00000092 <.LVL370>:
  92:	89aa                	mv	s3,a0

00000094 <.LVL371>:
  94:	e11d                	bnez	a0,ba <.L262>
  96:	4cc8                	lw	a0,28(s1)

00000098 <.LVL372>:
  98:	c519                	beqz	a0,a6 <.L274>
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL372+0x2>

000000a2 <.LVL373>:
  a2:	0004ae23          	sw	zero,28(s1)

000000a6 <.L274>:
  a6:	000ba503          	lw	a0,0(s7)
  aa:	4681                	li	a3,0
  ac:	4601                	li	a2,0
  ae:	4581                	li	a1,0
  b0:	00000097          	auipc	ra,0x0
  b4:	000080e7          	jalr	ra # b0 <.L274+0xa>

000000b8 <.LVL375>:
  b8:	bf55                	j	6c <.L260>

000000ba <.L262>:
  ba:	0505                	addi	a0,a0,1

000000bc <.LVL377>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LVL377>

000000c4 <.LVL378>:
  c4:	8a2a                	mv	s4,a0

000000c6 <.LVL379>:
  c6:	ed01                	bnez	a0,de <.L264>
  c8:	000aa503          	lw	a0,0(s5)

000000cc <.LVL380>:
  cc:	4681                	li	a3,0
  ce:	4601                	li	a2,0
  d0:	4581                	li	a1,0
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL380+0x6>

000000da <.LVL381>:
  da:	4b51                	li	s6,20
  dc:	bf41                	j	6c <.L260>

000000de <.L264>:
  de:	4cc8                	lw	a0,28(s1)

000000e0 <.LVL383>:
  e0:	c519                	beqz	a0,ee <.L265>
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL383+0x2>

000000ea <.LVL384>:
  ea:	0004ae23          	sw	zero,28(s1)

000000ee <.L265>:
  ee:	85a2                	mv	a1,s0
  f0:	8552                	mv	a0,s4
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.L265+0x4>

000000fa <.LVL385>:
  fa:	03800793          	li	a5,56
  fe:	02fc07b3          	mul	a5,s8,a5
 102:	99d2                	add	s3,s3,s4

00000104 <.LVL386>:
 104:	00098023          	sb	zero,0(s3)
 108:	993e                	add	s2,s2,a5
 10a:	01492e23          	sw	s4,28(s2) # 1c <bl_cipsslcsni+0x1c>
 10e:	bf61                	j	a6 <.L274>

Disassembly of section .text.bl_cipsslcalpn:

00000000 <bl_cipsslcalpn>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	4518                	lw	a4,8(a0)
  12:	4791                	li	a5,4
  14:	842a                	mv	s0,a0
  16:	02e7d563          	bge	a5,a4,40 <.L276>
  1a:	4548                	lw	a0,12(a0)

0000001c <.LVL388>:
  1c:	4925                	li	s2,9

0000001e <.L290>:
  1e:	c519                	beqz	a0,2c <.L277>
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.L290+0x2>

00000028 <.LVL390>:
  28:	00042623          	sw	zero,12(s0)

0000002c <.L277>:
  2c:	40f2                	lw	ra,28(sp)
  2e:	4462                	lw	s0,24(sp)

00000030 <.LVL391>:
  30:	854a                	mv	a0,s2
  32:	44d2                	lw	s1,20(sp)
  34:	4942                	lw	s2,16(sp)
  36:	49b2                	lw	s3,12(sp)
  38:	4a22                	lw	s4,8(sp)
  3a:	4a92                	lw	s5,4(sp)
  3c:	6105                	addi	sp,sp,32
  3e:	8082                	ret

00000040 <.L276>:
  40:	00000a37          	lui	s4,0x0
  44:	000a2503          	lw	a0,0(s4) # 0 <bl_cipsslcalpn>
  48:	55fd                	li	a1,-1

0000004a <.LVL393>:
  4a:	8ad2                	mv	s5,s4
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL393+0x2>

00000054 <.LVL394>:
  54:	00842983          	lw	s3,8(s0)
  58:	03800693          	li	a3,56
  5c:	000007b7          	lui	a5,0x0
  60:	02d986b3          	mul	a3,s3,a3
  64:	00078713          	mv	a4,a5
  68:	00078493          	mv	s1,a5
  6c:	9736                	add	a4,a4,a3
  6e:	03874903          	lbu	s2,56(a4)
  72:	00090e63          	beqz	s2,8e <.L278>
  76:	000a2503          	lw	a0,0(s4)
  7a:	4681                	li	a3,0
  7c:	4601                	li	a2,0
  7e:	4581                	li	a1,0
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL394+0x2c>

00000088 <.LVL395>:
  88:	4448                	lw	a0,12(s0)
  8a:	4955                	li	s2,21
  8c:	bf49                	j	1e <.L290>

0000008e <.L278>:
  8e:	5748                	lw	a0,44(a4)
  90:	c509                	beqz	a0,9a <.L279>
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.L278+0x4>

0000009a <.L279>:
  9a:	03800793          	li	a5,56
  9e:	02f987b3          	mul	a5,s3,a5
  a2:	4458                	lw	a4,12(s0)
  a4:	000aa503          	lw	a0,0(s5)
  a8:	4681                	li	a3,0
  aa:	4601                	li	a2,0
  ac:	4581                	li	a1,0
  ae:	97a6                	add	a5,a5,s1
  b0:	d7d8                	sw	a4,44(a5)
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.L279+0x18>

000000ba <.LVL398>:
  ba:	bf8d                	j	2c <.L277>
