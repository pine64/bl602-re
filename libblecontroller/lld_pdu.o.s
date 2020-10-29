
lld_pdu.o:     file format elf32-littleriscv


Disassembly of section .text.lld_pdu_llcp_con_param_req_unpk:

00000000 <lld_pdu_llcp_con_param_req_unpk>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)

00000004 <.LBB289>:
   4:	000009b7          	lui	s3,0x0
   8:	0009a783          	lw	a5,0(s3) # 0 <lld_pdu_llcp_con_param_req_unpk>

0000000c <.LBE289>:
   c:	d04a                	sw	s2,32(sp)

0000000e <.LBB295>:
   e:	28008937          	lui	s2,0x28008

00000012 <.LBE295>:
  12:	d606                	sw	ra,44(sp)
  14:	d422                	sw	s0,40(sp)
  16:	d226                	sw	s1,36(sp)
  18:	842a                	mv	s0,a0
  1a:	84b2                	mv	s1,a2

0000001c <.LBB296>:
  1c:	012505b3          	add	a1,a0,s2

00000020 <.LVL2>:
  20:	4609                	li	a2,2

00000022 <.LVL3>:
  22:	00e10513          	addi	a0,sp,14

00000026 <.LVL4>:
  26:	9782                	jalr	a5

00000028 <.LBE296>:
  28:	00e15783          	lhu	a5,14(sp)

0000002c <.LBE300>:
  2c:	00240593          	addi	a1,s0,2

00000030 <.LBB301>:
  30:	05c2                	slli	a1,a1,0x10

00000032 <.LBE301>:
  32:	00f49123          	sh	a5,2(s1)

00000036 <.LBB306>:
  36:	0009a783          	lw	a5,0(s3)
  3a:	81c1                	srli	a1,a1,0x10
  3c:	95ca                	add	a1,a1,s2
  3e:	4609                	li	a2,2
  40:	00e10513          	addi	a0,sp,14

00000044 <.LVL8>:
  44:	9782                	jalr	a5

00000046 <.LBE306>:
  46:	00e15783          	lhu	a5,14(sp)

0000004a <.LBE308>:
  4a:	00440593          	addi	a1,s0,4

0000004e <.LBB309>:
  4e:	05c2                	slli	a1,a1,0x10

00000050 <.LBE309>:
  50:	00f49223          	sh	a5,4(s1)

00000054 <.LBB314>:
  54:	0009a783          	lw	a5,0(s3)
  58:	81c1                	srli	a1,a1,0x10
  5a:	95ca                	add	a1,a1,s2
  5c:	4609                	li	a2,2
  5e:	00e10513          	addi	a0,sp,14

00000062 <.LVL12>:
  62:	9782                	jalr	a5

00000064 <.LBE314>:
  64:	00e15783          	lhu	a5,14(sp)

00000068 <.LBE316>:
  68:	00640593          	addi	a1,s0,6

0000006c <.LBB317>:
  6c:	05c2                	slli	a1,a1,0x10

0000006e <.LBE317>:
  6e:	00f49323          	sh	a5,6(s1)

00000072 <.LBB322>:
  72:	0009a783          	lw	a5,0(s3)
  76:	81c1                	srli	a1,a1,0x10
  78:	95ca                	add	a1,a1,s2
  7a:	4609                	li	a2,2
  7c:	00e10513          	addi	a0,sp,14

00000080 <.LVL16>:
  80:	9782                	jalr	a5

00000082 <.LBE322>:
  82:	00e15783          	lhu	a5,14(sp)

00000086 <.LBE324>:
  86:	00840593          	addi	a1,s0,8

0000008a <.LBB325>:
  8a:	05c2                	slli	a1,a1,0x10

0000008c <.LBE325>:
  8c:	00f49423          	sh	a5,8(s1)

00000090 <.LBB330>:
  90:	0009a783          	lw	a5,0(s3)
  94:	81c1                	srli	a1,a1,0x10
  96:	95ca                	add	a1,a1,s2
  98:	4605                	li	a2,1
  9a:	00e10513          	addi	a0,sp,14

0000009e <.LVL20>:
  9e:	9782                	jalr	a5

000000a0 <.LBE330>:
  a0:	00e14783          	lbu	a5,14(sp)

000000a4 <.LBE332>:
  a4:	00940593          	addi	a1,s0,9

000000a8 <.LBB333>:
  a8:	05c2                	slli	a1,a1,0x10

000000aa <.LBE333>:
  aa:	00f48523          	sb	a5,10(s1)

000000ae <.LBB338>:
  ae:	0009a783          	lw	a5,0(s3)
  b2:	81c1                	srli	a1,a1,0x10
  b4:	95ca                	add	a1,a1,s2
  b6:	4609                	li	a2,2
  b8:	00e10513          	addi	a0,sp,14

000000bc <.LVL24>:
  bc:	9782                	jalr	a5

000000be <.LBE338>:
  be:	00e15783          	lhu	a5,14(sp)

000000c2 <.LBE340>:
  c2:	00b40593          	addi	a1,s0,11

000000c6 <.LBB341>:
  c6:	05c2                	slli	a1,a1,0x10

000000c8 <.LBE341>:
  c8:	00f49623          	sh	a5,12(s1)

000000cc <.LBB346>:
  cc:	0009a783          	lw	a5,0(s3)
  d0:	81c1                	srli	a1,a1,0x10
  d2:	95ca                	add	a1,a1,s2
  d4:	4609                	li	a2,2
  d6:	00e10513          	addi	a0,sp,14

000000da <.LVL28>:
  da:	9782                	jalr	a5

000000dc <.LBE346>:
  dc:	00e15783          	lhu	a5,14(sp)

000000e0 <.LBE348>:
  e0:	00d40593          	addi	a1,s0,13

000000e4 <.LBB349>:
  e4:	05c2                	slli	a1,a1,0x10

000000e6 <.LBE349>:
  e6:	00f49723          	sh	a5,14(s1)

000000ea <.LBB354>:
  ea:	0009a783          	lw	a5,0(s3)
  ee:	81c1                	srli	a1,a1,0x10
  f0:	95ca                	add	a1,a1,s2
  f2:	4609                	li	a2,2
  f4:	00e10513          	addi	a0,sp,14

000000f8 <.LVL32>:
  f8:	9782                	jalr	a5

000000fa <.LBE354>:
  fa:	00e15783          	lhu	a5,14(sp)

000000fe <.LBE356>:
  fe:	00f40593          	addi	a1,s0,15

00000102 <.LBB357>:
 102:	05c2                	slli	a1,a1,0x10

00000104 <.LBE357>:
 104:	00f49823          	sh	a5,16(s1)

00000108 <.LBB362>:
 108:	0009a783          	lw	a5,0(s3)
 10c:	81c1                	srli	a1,a1,0x10
 10e:	95ca                	add	a1,a1,s2
 110:	4609                	li	a2,2
 112:	00e10513          	addi	a0,sp,14

00000116 <.LVL36>:
 116:	9782                	jalr	a5

00000118 <.LBE362>:
 118:	00e15783          	lhu	a5,14(sp)

0000011c <.LBE364>:
 11c:	01140593          	addi	a1,s0,17

00000120 <.LBB365>:
 120:	05c2                	slli	a1,a1,0x10

00000122 <.LBE365>:
 122:	00f49923          	sh	a5,18(s1)

00000126 <.LBB370>:
 126:	0009a783          	lw	a5,0(s3)
 12a:	81c1                	srli	a1,a1,0x10
 12c:	95ca                	add	a1,a1,s2
 12e:	4609                	li	a2,2
 130:	00e10513          	addi	a0,sp,14

00000134 <.LVL40>:
 134:	9782                	jalr	a5

00000136 <.LBE370>:
 136:	00e15783          	lhu	a5,14(sp)

0000013a <.LBE372>:
 13a:	01340593          	addi	a1,s0,19

0000013e <.LBB373>:
 13e:	05c2                	slli	a1,a1,0x10

00000140 <.LBE373>:
 140:	00f49a23          	sh	a5,20(s1)

00000144 <.LBB378>:
 144:	0009a783          	lw	a5,0(s3)
 148:	81c1                	srli	a1,a1,0x10
 14a:	95ca                	add	a1,a1,s2
 14c:	4609                	li	a2,2
 14e:	00e10513          	addi	a0,sp,14

00000152 <.LVL44>:
 152:	9782                	jalr	a5

00000154 <.LBE378>:
 154:	00e15783          	lhu	a5,14(sp)

00000158 <.LBE380>:
 158:	01540593          	addi	a1,s0,21

0000015c <.LBB381>:
 15c:	05c2                	slli	a1,a1,0x10

0000015e <.LBE381>:
 15e:	00f49b23          	sh	a5,22(s1)

00000162 <.LBB386>:
 162:	0009a783          	lw	a5,0(s3)
 166:	81c1                	srli	a1,a1,0x10
 168:	95ca                	add	a1,a1,s2
 16a:	00e10513          	addi	a0,sp,14

0000016e <.LVL48>:
 16e:	4609                	li	a2,2
 170:	9782                	jalr	a5

00000172 <.LBE386>:
 172:	00e15783          	lhu	a5,14(sp)

00000176 <.LBE388>:
 176:	50b2                	lw	ra,44(sp)
 178:	5422                	lw	s0,40(sp)

0000017a <.LVL51>:
 17a:	00f49c23          	sh	a5,24(s1)
 17e:	5902                	lw	s2,32(sp)
 180:	5492                	lw	s1,36(sp)

00000182 <.LVL52>:
 182:	49f2                	lw	s3,28(sp)
 184:	6145                	addi	sp,sp,48
 186:	8082                	ret

Disassembly of section .text.lld_pdu_llcp_con_param_rsp_unpk:

00000000 <lld_pdu_llcp_con_param_rsp_unpk>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)

00000004 <.LBB389>:
   4:	000009b7          	lui	s3,0x0
   8:	0009a783          	lw	a5,0(s3) # 0 <lld_pdu_llcp_con_param_rsp_unpk>

0000000c <.LBE389>:
   c:	d04a                	sw	s2,32(sp)

0000000e <.LBB395>:
   e:	28008937          	lui	s2,0x28008

00000012 <.LBE395>:
  12:	d606                	sw	ra,44(sp)
  14:	d422                	sw	s0,40(sp)
  16:	d226                	sw	s1,36(sp)
  18:	842a                	mv	s0,a0
  1a:	84b2                	mv	s1,a2

0000001c <.LBB396>:
  1c:	012505b3          	add	a1,a0,s2

00000020 <.LVL55>:
  20:	4609                	li	a2,2

00000022 <.LVL56>:
  22:	00e10513          	addi	a0,sp,14

00000026 <.LVL57>:
  26:	9782                	jalr	a5

00000028 <.LBE396>:
  28:	00e15783          	lhu	a5,14(sp)

0000002c <.LBE400>:
  2c:	00240593          	addi	a1,s0,2

00000030 <.LBB401>:
  30:	05c2                	slli	a1,a1,0x10

00000032 <.LBE401>:
  32:	00f49123          	sh	a5,2(s1)

00000036 <.LBB406>:
  36:	0009a783          	lw	a5,0(s3)
  3a:	81c1                	srli	a1,a1,0x10
  3c:	95ca                	add	a1,a1,s2
  3e:	4609                	li	a2,2
  40:	00e10513          	addi	a0,sp,14

00000044 <.LVL61>:
  44:	9782                	jalr	a5

00000046 <.LBE406>:
  46:	00e15783          	lhu	a5,14(sp)

0000004a <.LBE408>:
  4a:	00440593          	addi	a1,s0,4

0000004e <.LBB409>:
  4e:	05c2                	slli	a1,a1,0x10

00000050 <.LBE409>:
  50:	00f49223          	sh	a5,4(s1)

00000054 <.LBB414>:
  54:	0009a783          	lw	a5,0(s3)
  58:	81c1                	srli	a1,a1,0x10
  5a:	95ca                	add	a1,a1,s2
  5c:	4609                	li	a2,2
  5e:	00e10513          	addi	a0,sp,14

00000062 <.LVL65>:
  62:	9782                	jalr	a5

00000064 <.LBE414>:
  64:	00e15783          	lhu	a5,14(sp)

00000068 <.LBE416>:
  68:	00640593          	addi	a1,s0,6

0000006c <.LBB417>:
  6c:	05c2                	slli	a1,a1,0x10

0000006e <.LBE417>:
  6e:	00f49323          	sh	a5,6(s1)

00000072 <.LBB422>:
  72:	0009a783          	lw	a5,0(s3)
  76:	81c1                	srli	a1,a1,0x10
  78:	95ca                	add	a1,a1,s2
  7a:	4609                	li	a2,2
  7c:	00e10513          	addi	a0,sp,14

00000080 <.LVL69>:
  80:	9782                	jalr	a5

00000082 <.LBE422>:
  82:	00e15783          	lhu	a5,14(sp)

00000086 <.LBE424>:
  86:	00840593          	addi	a1,s0,8

0000008a <.LBB425>:
  8a:	05c2                	slli	a1,a1,0x10

0000008c <.LBE425>:
  8c:	00f49423          	sh	a5,8(s1)

00000090 <.LBB430>:
  90:	0009a783          	lw	a5,0(s3)
  94:	81c1                	srli	a1,a1,0x10
  96:	95ca                	add	a1,a1,s2
  98:	4605                	li	a2,1
  9a:	00e10513          	addi	a0,sp,14

0000009e <.LVL73>:
  9e:	9782                	jalr	a5

000000a0 <.LBE430>:
  a0:	00e14783          	lbu	a5,14(sp)

000000a4 <.LBE432>:
  a4:	00940593          	addi	a1,s0,9

000000a8 <.LBB433>:
  a8:	05c2                	slli	a1,a1,0x10

000000aa <.LBE433>:
  aa:	00f48523          	sb	a5,10(s1)

000000ae <.LBB438>:
  ae:	0009a783          	lw	a5,0(s3)
  b2:	81c1                	srli	a1,a1,0x10
  b4:	95ca                	add	a1,a1,s2
  b6:	4609                	li	a2,2
  b8:	00e10513          	addi	a0,sp,14

000000bc <.LVL77>:
  bc:	9782                	jalr	a5

000000be <.LBE438>:
  be:	00e15783          	lhu	a5,14(sp)

000000c2 <.LBE440>:
  c2:	00b40593          	addi	a1,s0,11

000000c6 <.LBB441>:
  c6:	05c2                	slli	a1,a1,0x10

000000c8 <.LBE441>:
  c8:	00f49623          	sh	a5,12(s1)

000000cc <.LBB446>:
  cc:	0009a783          	lw	a5,0(s3)
  d0:	81c1                	srli	a1,a1,0x10
  d2:	95ca                	add	a1,a1,s2
  d4:	4609                	li	a2,2
  d6:	00e10513          	addi	a0,sp,14

000000da <.LVL81>:
  da:	9782                	jalr	a5

000000dc <.LBE446>:
  dc:	00e15783          	lhu	a5,14(sp)

000000e0 <.LBE448>:
  e0:	00d40593          	addi	a1,s0,13

000000e4 <.LBB449>:
  e4:	05c2                	slli	a1,a1,0x10

000000e6 <.LBE449>:
  e6:	00f49723          	sh	a5,14(s1)

000000ea <.LBB454>:
  ea:	0009a783          	lw	a5,0(s3)
  ee:	81c1                	srli	a1,a1,0x10
  f0:	95ca                	add	a1,a1,s2
  f2:	4609                	li	a2,2
  f4:	00e10513          	addi	a0,sp,14

000000f8 <.LVL85>:
  f8:	9782                	jalr	a5

000000fa <.LBE454>:
  fa:	00e15783          	lhu	a5,14(sp)

000000fe <.LBE456>:
  fe:	00f40593          	addi	a1,s0,15

00000102 <.LBB457>:
 102:	05c2                	slli	a1,a1,0x10

00000104 <.LBE457>:
 104:	00f49823          	sh	a5,16(s1)

00000108 <.LBB462>:
 108:	0009a783          	lw	a5,0(s3)
 10c:	81c1                	srli	a1,a1,0x10
 10e:	95ca                	add	a1,a1,s2
 110:	4609                	li	a2,2
 112:	00e10513          	addi	a0,sp,14

00000116 <.LVL89>:
 116:	9782                	jalr	a5

00000118 <.LBE462>:
 118:	00e15783          	lhu	a5,14(sp)

0000011c <.LBE464>:
 11c:	01140593          	addi	a1,s0,17

00000120 <.LBB465>:
 120:	05c2                	slli	a1,a1,0x10

00000122 <.LBE465>:
 122:	00f49923          	sh	a5,18(s1)

00000126 <.LBB470>:
 126:	0009a783          	lw	a5,0(s3)
 12a:	81c1                	srli	a1,a1,0x10
 12c:	95ca                	add	a1,a1,s2
 12e:	4609                	li	a2,2
 130:	00e10513          	addi	a0,sp,14

00000134 <.LVL93>:
 134:	9782                	jalr	a5

00000136 <.LBE470>:
 136:	00e15783          	lhu	a5,14(sp)

0000013a <.LBE472>:
 13a:	01340593          	addi	a1,s0,19

0000013e <.LBB473>:
 13e:	05c2                	slli	a1,a1,0x10

00000140 <.LBE473>:
 140:	00f49a23          	sh	a5,20(s1)

00000144 <.LBB478>:
 144:	0009a783          	lw	a5,0(s3)
 148:	81c1                	srli	a1,a1,0x10
 14a:	95ca                	add	a1,a1,s2
 14c:	4609                	li	a2,2
 14e:	00e10513          	addi	a0,sp,14

00000152 <.LVL97>:
 152:	9782                	jalr	a5

00000154 <.LBE478>:
 154:	00e15783          	lhu	a5,14(sp)

00000158 <.LBE480>:
 158:	01540593          	addi	a1,s0,21

0000015c <.LBB481>:
 15c:	05c2                	slli	a1,a1,0x10

0000015e <.LBE481>:
 15e:	00f49b23          	sh	a5,22(s1)

00000162 <.LBB486>:
 162:	0009a783          	lw	a5,0(s3)
 166:	81c1                	srli	a1,a1,0x10
 168:	95ca                	add	a1,a1,s2
 16a:	00e10513          	addi	a0,sp,14

0000016e <.LVL101>:
 16e:	4609                	li	a2,2
 170:	9782                	jalr	a5

00000172 <.LBE486>:
 172:	00e15783          	lhu	a5,14(sp)

00000176 <.LBE488>:
 176:	50b2                	lw	ra,44(sp)
 178:	5422                	lw	s0,40(sp)

0000017a <.LVL104>:
 17a:	00f49c23          	sh	a5,24(s1)
 17e:	5902                	lw	s2,32(sp)
 180:	5492                	lw	s1,36(sp)

00000182 <.LVL105>:
 182:	49f2                	lw	s3,28(sp)
 184:	6145                	addi	sp,sp,48
 186:	8082                	ret

Disassembly of section .text.lld_pdu_llcp_length_req_unpk:

00000000 <lld_pdu_llcp_length_req_unpk>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)

00000004 <.LBB489>:
   4:	000009b7          	lui	s3,0x0
   8:	0009a783          	lw	a5,0(s3) # 0 <lld_pdu_llcp_length_req_unpk>

0000000c <.LBE489>:
   c:	d04a                	sw	s2,32(sp)

0000000e <.LBB495>:
   e:	28008937          	lui	s2,0x28008

00000012 <.LBE495>:
  12:	d606                	sw	ra,44(sp)
  14:	d422                	sw	s0,40(sp)
  16:	d226                	sw	s1,36(sp)
  18:	842a                	mv	s0,a0
  1a:	84b2                	mv	s1,a2

0000001c <.LBB496>:
  1c:	012505b3          	add	a1,a0,s2

00000020 <.LVL108>:
  20:	4609                	li	a2,2

00000022 <.LVL109>:
  22:	00e10513          	addi	a0,sp,14

00000026 <.LVL110>:
  26:	9782                	jalr	a5

00000028 <.LBE496>:
  28:	00e15783          	lhu	a5,14(sp)

0000002c <.LBE500>:
  2c:	00240593          	addi	a1,s0,2

00000030 <.LBB501>:
  30:	05c2                	slli	a1,a1,0x10

00000032 <.LBE501>:
  32:	00f49123          	sh	a5,2(s1)

00000036 <.LBB506>:
  36:	0009a783          	lw	a5,0(s3)
  3a:	81c1                	srli	a1,a1,0x10
  3c:	95ca                	add	a1,a1,s2
  3e:	4609                	li	a2,2
  40:	00e10513          	addi	a0,sp,14

00000044 <.LVL114>:
  44:	9782                	jalr	a5

00000046 <.LBE506>:
  46:	00e15783          	lhu	a5,14(sp)

0000004a <.LBE508>:
  4a:	00440593          	addi	a1,s0,4

0000004e <.LBB509>:
  4e:	05c2                	slli	a1,a1,0x10

00000050 <.LBE509>:
  50:	00f49223          	sh	a5,4(s1)

00000054 <.LBB514>:
  54:	0009a783          	lw	a5,0(s3)
  58:	81c1                	srli	a1,a1,0x10
  5a:	95ca                	add	a1,a1,s2
  5c:	4609                	li	a2,2
  5e:	00e10513          	addi	a0,sp,14

00000062 <.LVL118>:
  62:	9782                	jalr	a5

00000064 <.LBE514>:
  64:	00e15783          	lhu	a5,14(sp)

00000068 <.LBE516>:
  68:	00640593          	addi	a1,s0,6

0000006c <.LBB517>:
  6c:	05c2                	slli	a1,a1,0x10

0000006e <.LBE517>:
  6e:	00f49323          	sh	a5,6(s1)

00000072 <.LBB522>:
  72:	0009a783          	lw	a5,0(s3)
  76:	81c1                	srli	a1,a1,0x10
  78:	95ca                	add	a1,a1,s2
  7a:	00e10513          	addi	a0,sp,14

0000007e <.LVL122>:
  7e:	4609                	li	a2,2
  80:	9782                	jalr	a5

00000082 <.LBE522>:
  82:	00e15783          	lhu	a5,14(sp)

00000086 <.LBE524>:
  86:	50b2                	lw	ra,44(sp)
  88:	5422                	lw	s0,40(sp)

0000008a <.LVL125>:
  8a:	00f49423          	sh	a5,8(s1)
  8e:	5902                	lw	s2,32(sp)
  90:	5492                	lw	s1,36(sp)

00000092 <.LVL126>:
  92:	49f2                	lw	s3,28(sp)
  94:	6145                	addi	sp,sp,48
  96:	8082                	ret

Disassembly of section .text.lld_pdu_llcp_length_rsp_unpk:

00000000 <lld_pdu_llcp_length_rsp_unpk>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)

00000004 <.LBB525>:
   4:	000009b7          	lui	s3,0x0
   8:	0009a783          	lw	a5,0(s3) # 0 <lld_pdu_llcp_length_rsp_unpk>

0000000c <.LBE525>:
   c:	d04a                	sw	s2,32(sp)

0000000e <.LBB531>:
   e:	28008937          	lui	s2,0x28008

00000012 <.LBE531>:
  12:	d606                	sw	ra,44(sp)
  14:	d422                	sw	s0,40(sp)
  16:	d226                	sw	s1,36(sp)
  18:	842a                	mv	s0,a0
  1a:	84b2                	mv	s1,a2

0000001c <.LBB532>:
  1c:	012505b3          	add	a1,a0,s2

00000020 <.LVL129>:
  20:	4609                	li	a2,2

00000022 <.LVL130>:
  22:	00e10513          	addi	a0,sp,14

00000026 <.LVL131>:
  26:	9782                	jalr	a5

00000028 <.LBE532>:
  28:	00e15783          	lhu	a5,14(sp)

0000002c <.LBE536>:
  2c:	00240593          	addi	a1,s0,2

00000030 <.LBB537>:
  30:	05c2                	slli	a1,a1,0x10

00000032 <.LBE537>:
  32:	00f49123          	sh	a5,2(s1)

00000036 <.LBB542>:
  36:	0009a783          	lw	a5,0(s3)
  3a:	81c1                	srli	a1,a1,0x10
  3c:	95ca                	add	a1,a1,s2
  3e:	4609                	li	a2,2
  40:	00e10513          	addi	a0,sp,14

00000044 <.LVL135>:
  44:	9782                	jalr	a5

00000046 <.LBE542>:
  46:	00e15783          	lhu	a5,14(sp)

0000004a <.LBE544>:
  4a:	00440593          	addi	a1,s0,4

0000004e <.LBB545>:
  4e:	05c2                	slli	a1,a1,0x10

00000050 <.LBE545>:
  50:	00f49223          	sh	a5,4(s1)

00000054 <.LBB550>:
  54:	0009a783          	lw	a5,0(s3)
  58:	81c1                	srli	a1,a1,0x10
  5a:	95ca                	add	a1,a1,s2
  5c:	4609                	li	a2,2
  5e:	00e10513          	addi	a0,sp,14

00000062 <.LVL139>:
  62:	9782                	jalr	a5

00000064 <.LBE550>:
  64:	00e15783          	lhu	a5,14(sp)

00000068 <.LBE552>:
  68:	00640593          	addi	a1,s0,6

0000006c <.LBB553>:
  6c:	05c2                	slli	a1,a1,0x10

0000006e <.LBE553>:
  6e:	00f49323          	sh	a5,6(s1)

00000072 <.LBB558>:
  72:	0009a783          	lw	a5,0(s3)
  76:	81c1                	srli	a1,a1,0x10
  78:	95ca                	add	a1,a1,s2
  7a:	00e10513          	addi	a0,sp,14

0000007e <.LVL143>:
  7e:	4609                	li	a2,2
  80:	9782                	jalr	a5

00000082 <.LBE558>:
  82:	00e15783          	lhu	a5,14(sp)

00000086 <.LBE560>:
  86:	50b2                	lw	ra,44(sp)
  88:	5422                	lw	s0,40(sp)

0000008a <.LVL146>:
  8a:	00f49423          	sh	a5,8(s1)
  8e:	5902                	lw	s2,32(sp)
  90:	5492                	lw	s1,36(sp)

00000092 <.LVL147>:
  92:	49f2                	lw	s3,28(sp)
  94:	6145                	addi	sp,sp,48
  96:	8082                	ret

Disassembly of section .text.lld_pdu_pack:

00000000 <lld_pdu_pack>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	d84a                	sw	s2,48(sp)
   6:	d64e                	sw	s3,44(sp)
   8:	d452                	sw	s4,40(sp)
   a:	d256                	sw	s5,36(sp)
   c:	d05a                	sw	s6,32(sp)
   e:	ce5e                	sw	s7,28(sp)
  10:	cc62                	sw	s8,24(sp)
  12:	ca66                	sw	s9,20(sp)
  14:	c86a                	sw	s10,16(sp)
  16:	de06                	sw	ra,60(sp)
  18:	da26                	sw	s1,52(sp)
  1a:	c66e                	sw	s11,12(sp)
  1c:	89aa                	mv	s3,a0
  1e:	8aae                	mv	s5,a1

00000020 <.LVL149>:
  20:	842a                	mv	s0,a0
  22:	892a                	mv	s2,a0

00000024 <.LBB570>:
  24:	4a25                	li	s4,9

00000026 <.LBB571>:
  26:	4ba9                	li	s7,10

00000028 <.LBE571>:
  28:	04800c13          	li	s8,72
  2c:	04c00c93          	li	s9,76
  30:	04200b13          	li	s6,66
  34:	00000d37          	lui	s10,0x0

00000038 <.L10>:
  38:	00064503          	lbu	a0,0(a2)
  3c:	c565                	beqz	a0,124 <.L12>

0000003e <.LBB587>:
  3e:	fd050513          	addi	a0,a0,-48
  42:	0ff57793          	andi	a5,a0,255
  46:	4481                	li	s1,0
  48:	0afa6463          	bltu	s4,a5,f0 <.L13>

0000004c <.LBB575>:
  4c:	01051493          	slli	s1,a0,0x10
  50:	0605                	addi	a2,a2,1

00000052 <.LBB576>:
  52:	80c1                	srli	s1,s1,0x10

00000054 <.L14>:
  54:	00064703          	lbu	a4,0(a2)
  58:	00160693          	addi	a3,a2,1
  5c:	fd070793          	addi	a5,a4,-48
  60:	0ff7f793          	andi	a5,a5,255
  64:	08fa6663          	bltu	s4,a5,f0 <.L13>

00000068 <.LVL155>:
  68:	037484b3          	mul	s1,s1,s7

0000006c <.LVL156>:
  6c:	8636                	mv	a2,a3

0000006e <.LVL157>:
  6e:	fd048493          	addi	s1,s1,-48
  72:	94ba                	add	s1,s1,a4
  74:	04c2                	slli	s1,s1,0x10
  76:	80c1                	srli	s1,s1,0x10

00000078 <.LVL158>:
  78:	bff1                	j	54 <.L14>

0000007a <.L17>:
  7a:	00094783          	lbu	a5,0(s2) # 28008000 <.LASF460+0x2800461f>
  7e:	00190593          	addi	a1,s2,1

00000082 <.LVL160>:
  82:	00140513          	addi	a0,s0,1

00000086 <.LVL161>:
  86:	00f40023          	sb	a5,0(s0)
  8a:	4785                	li	a5,1
  8c:	0097fb63          	bgeu	a5,s1,a2 <.L11>
  90:	000d2783          	lw	a5,0(s10) # 0 <lld_pdu_pack>
  94:	fff48613          	addi	a2,s1,-1
  98:	9782                	jalr	a5

0000009a <.LVL162>:
  9a:	00940533          	add	a0,s0,s1

0000009e <.LVL163>:
  9e:	009905b3          	add	a1,s2,s1

000000a2 <.L11>:
  a2:	866e                	mv	a2,s11
  a4:	842a                	mv	s0,a0
  a6:	892e                	mv	s2,a1
  a8:	bf41                	j	38 <.L10>

000000aa <.L15>:
  aa:	00190593          	addi	a1,s2,1
  ae:	99f9                	andi	a1,a1,-2

000000b0 <.LVL166>:
  b0:	0005d783          	lhu	a5,0(a1)

000000b4 <.LBB578>:
  b4:	00240513          	addi	a0,s0,2
  b8:	0589                	addi	a1,a1,2

000000ba <.LBB581>:
  ba:	00f40023          	sb	a5,0(s0)
  be:	83a1                	srli	a5,a5,0x8

000000c0 <.LVL169>:
  c0:	00f400a3          	sb	a5,1(s0)

000000c4 <.LBE577>:
  c4:	bff9                	j	a2 <.L11>

000000c6 <.L16>:
  c6:	00390593          	addi	a1,s2,3
  ca:	99f1                	andi	a1,a1,-4

000000cc <.LVL172>:
  cc:	419c                	lw	a5,0(a1)

000000ce <.LBB583>:
  ce:	00440513          	addi	a0,s0,4
  d2:	0591                	addi	a1,a1,4

000000d4 <.LBB586>:
  d4:	0087d713          	srli	a4,a5,0x8
  d8:	00f40023          	sb	a5,0(s0)

000000dc <.LVL175>:
  dc:	00e400a3          	sb	a4,1(s0)

000000e0 <.LVL176>:
  e0:	0107d713          	srli	a4,a5,0x10
  e4:	83e1                	srli	a5,a5,0x18

000000e6 <.LVL177>:
  e6:	00e40123          	sb	a4,2(s0)
  ea:	00f401a3          	sb	a5,3(s0)

000000ee <.LBE582>:
  ee:	bf55                	j	a2 <.L11>

000000f0 <.L13>:
  f0:	00064783          	lbu	a5,0(a2)
  f4:	00160d93          	addi	s11,a2,1

000000f8 <.LVL180>:
  f8:	fb8789e3          	beq	a5,s8,aa <.L15>
  fc:	fd9785e3          	beq	a5,s9,c6 <.L16>
 100:	f7678de3          	beq	a5,s6,7a <.L17>
 104:	4505                	li	a0,1

00000106 <.L18>:
 106:	50f2                	lw	ra,60(sp)
 108:	5462                	lw	s0,56(sp)
 10a:	54d2                	lw	s1,52(sp)
 10c:	5942                	lw	s2,48(sp)

0000010e <.LVL182>:
 10e:	59b2                	lw	s3,44(sp)

00000110 <.LVL183>:
 110:	5a22                	lw	s4,40(sp)
 112:	5a92                	lw	s5,36(sp)

00000114 <.LVL184>:
 114:	5b02                	lw	s6,32(sp)
 116:	4bf2                	lw	s7,28(sp)
 118:	4c62                	lw	s8,24(sp)
 11a:	4cd2                	lw	s9,20(sp)
 11c:	4d42                	lw	s10,16(sp)
 11e:	4db2                	lw	s11,12(sp)
 120:	6121                	addi	sp,sp,64
 122:	8082                	ret

00000124 <.L12>:
 124:	41340433          	sub	s0,s0,s3

00000128 <.LVL186>:
 128:	008a8023          	sb	s0,0(s5)
 12c:	bfe9                	j	106 <.L18>

Disassembly of section .text.lld_pdu_tx_flush_list:

00000000 <lld_pdu_tx_flush_list>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	892a                	mv	s2,a0
  10:	4401                	li	s0,0

00000012 <.LBB588>:
  12:	49cd                	li	s3,19
  14:	4a5d                	li	s4,23

00000016 <.L22>:
  16:	300024f3          	csrr	s1,mstatus

0000001a <.LBB591>:
  1a:	300477f3          	csrrci	a5,mstatus,8

0000001e <.LBE591>:
  1e:	854a                	mv	a0,s2
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LBE591+0x2>

00000028 <.LVL191>:
  28:	30049073          	csrw	mstatus,s1

0000002c <.LBE589>:
  2c:	c131                	beqz	a0,70 <.L23>
  2e:	00455783          	lhu	a5,4(a0)
  32:	ffa78713          	addi	a4,a5,-6
  36:	0742                	slli	a4,a4,0x10
  38:	8341                	srli	a4,a4,0x10
  3a:	02e9e163          	bltu	s3,a4,5c <.L24>

0000003e <.LBB592>:
  3e:	300024f3          	csrr	s1,mstatus

00000042 <.LBB594>:
  42:	300477f3          	csrrci	a5,mstatus,8

00000046 <.LBE594>:
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LBE594>

0000004e <.LVL194>:
  4e:	c501                	beqz	a0,56 <.L25>
  50:	0405                	addi	s0,s0,1

00000052 <.LVL195>:
  52:	0ff47413          	andi	s0,s0,255

00000056 <.L25>:
  56:	30049073          	csrw	mstatus,s1
  5a:	bf75                	j	16 <.L22>

0000005c <.L24>:
  5c:	17f9                	addi	a5,a5,-2
  5e:	07c2                	slli	a5,a5,0x10
  60:	83c1                	srli	a5,a5,0x10
  62:	fafa7ae3          	bgeu	s4,a5,16 <.L22>
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.L24+0xa>

0000006e <.LVL198>:
  6e:	b765                	j	16 <.L22>

00000070 <.L23>:
  70:	8522                	mv	a0,s0

00000072 <.LVL200>:
  72:	40f2                	lw	ra,28(sp)
  74:	4462                	lw	s0,24(sp)

00000076 <.LVL201>:
  76:	44d2                	lw	s1,20(sp)

00000078 <.LVL202>:
  78:	4942                	lw	s2,16(sp)

0000007a <.LVL203>:
  7a:	49b2                	lw	s3,12(sp)
  7c:	4a22                	lw	s4,8(sp)
  7e:	6105                	addi	sp,sp,32
  80:	8082                	ret

Disassembly of section .text.lld_pdu_cntl_aligned_unpk:

00000000 <lld_pdu_cntl_aligned_unpk>:
   0:	87b2                	mv	a5,a2
   2:	cd81                	beqz	a1,1a <.L31>

00000004 <.LBB600>:
   4:	00000737          	lui	a4,0x0
   8:	00072303          	lw	t1,0(a4) # 0 <lld_pdu_cntl_aligned_unpk>
   c:	862e                	mv	a2,a1

0000000e <.LVL206>:
   e:	280085b7          	lui	a1,0x28008

00000012 <.LVL207>:
  12:	95aa                	add	a1,a1,a0
  14:	00178513          	addi	a0,a5,1

00000018 <.LVL208>:
  18:	8302                	jr	t1

0000001a <.L31>:
  1a:	8082                	ret

Disassembly of section .text.lld_pdu_check:

00000000 <lld_pdu_check>:
   0:	711d                	addi	sp,sp,-96
   2:	caa6                	sw	s1,84(sp)
   4:	84aa                	mv	s1,a0
   6:	0828                	addi	a0,sp,24

00000008 <.LVL211>:
   8:	c8ca                	sw	s2,80(sp)
   a:	ce86                	sw	ra,92(sp)
   c:	cca2                	sw	s0,88(sp)
   e:	c6ce                	sw	s3,76(sp)
  10:	c4d2                	sw	s4,72(sp)
  12:	c2d6                	sw	s5,68(sp)
  14:	c0da                	sw	s6,64(sp)
  16:	de5e                	sw	s7,60(sp)
  18:	dc62                	sw	s8,56(sp)
  1a:	da66                	sw	s9,52(sp)
  1c:	d86a                	sw	s10,48(sp)
  1e:	d66e                	sw	s11,44(sp)
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL211+0x18>

00000028 <.LVL212>:
  28:	04c4d903          	lhu	s2,76(s1)

0000002c <.LBB604>:
  2c:	300027f3          	csrr	a5,mstatus

00000030 <.LBB606>:
  30:	30047773          	csrrci	a4,mstatus,8

00000034 <.LBB607>:
  34:	0204a983          	lw	s3,32(s1)

00000038 <.LBE607>:
  38:	30079073          	csrw	mstatus,a5

0000003c <.LBB609>:
  3c:	28008a37          	lui	s4,0x28008

00000040 <.LBB614>:
  40:	02048793          	addi	a5,s1,32

00000044 <.LBB634>:
  44:	4401                	li	s0,0

00000046 <.LBB635>:
  46:	4aa9                	li	s5,10
  48:	2caa0a13          	addi	s4,s4,714 # 280082ca <.LASF460+0x280048e9>

0000004c <.LBB620>:
  4c:	c63e                	sw	a5,12(sp)
  4e:	01048b93          	addi	s7,s1,16

00000052 <.LBB621>:
  52:	7c61                	lui	s8,0xffff8

00000054 <.LBE621>:
  54:	4c85                	li	s9,1
  56:	4d15                	li	s10,5

00000058 <.L34>:
  58:	08099163          	bnez	s3,da <.L43>

0000005c <.L35>:
  5c:	ffe90a13          	addi	s4,s2,-2
  60:	010a1713          	slli	a4,s4,0x10
  64:	8341                	srli	a4,a4,0x10
  66:	4785                	li	a5,1
  68:	02e7f463          	bgeu	a5,a4,90 <.L44>
  6c:	c015                	beqz	s0,90 <.L44>

0000006e <.LBB637>:
  6e:	30002773          	csrr	a4,mstatus

00000072 <.LBB639>:
  72:	300477f3          	csrrci	a5,mstatus,8

00000076 <.LBE639>:
  76:	0484c783          	lbu	a5,72(s1)
  7a:	8f81                	sub	a5,a5,s0
  7c:	04f48423          	sb	a5,72(s1)
  80:	30071073          	csrw	mstatus,a4

00000084 <.LBE637>:
  84:	85a2                	mv	a1,s0
  86:	854a                	mv	a0,s2
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.LBE637+0x4>

00000090 <.L44>:
  90:	30002af3          	csrr	s5,mstatus

00000094 <.LBB642>:
  94:	300477f3          	csrrci	a5,mstatus,8

00000098 <.LBE642>:
  98:	000009b7          	lui	s3,0x0

0000009c <.LVL224>:
  9c:	01898513          	addi	a0,s3,24 # 18 <.LVL211+0x10>
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LVL224+0x4>

000000a8 <.LVL225>:
  a8:	84aa                	mv	s1,a0

000000aa <.LVL226>:
  aa:	300a9073          	csrw	mstatus,s5

000000ae <.LBE640>:
  ae:	0a42                	slli	s4,s4,0x10

000000b0 <.LBB643>:
  b0:	4a81                	li	s5,0

000000b2 <.LBE643>:
  b2:	010a5a13          	srli	s4,s4,0x10
  b6:	4b05                	li	s6,1

000000b8 <.L45>:
  b8:	ecf9                	bnez	s1,196 <.L51>
  ba:	40f6                	lw	ra,92(sp)
  bc:	4466                	lw	s0,88(sp)

000000be <.LVL229>:
  be:	8556                	mv	a0,s5
  c0:	44d6                	lw	s1,84(sp)

000000c2 <.LVL230>:
  c2:	4946                	lw	s2,80(sp)

000000c4 <.LVL231>:
  c4:	49b6                	lw	s3,76(sp)
  c6:	4a26                	lw	s4,72(sp)
  c8:	4a96                	lw	s5,68(sp)

000000ca <.LVL232>:
  ca:	4b06                	lw	s6,64(sp)
  cc:	5bf2                	lw	s7,60(sp)
  ce:	5c62                	lw	s8,56(sp)
  d0:	5cd2                	lw	s9,52(sp)
  d2:	5d42                	lw	s10,48(sp)
  d4:	5db2                	lw	s11,44(sp)
  d6:	6125                	addi	sp,sp,96

000000d8 <.LVL233>:
  d8:	8082                	ret

000000da <.L43>:
  da:	0049d783          	lhu	a5,4(s3)

000000de <.LBB645>:
  de:	035787b3          	mul	a5,a5,s5

000000e2 <.LVL236>:
  e2:	97d2                	add	a5,a5,s4
  e4:	0007d783          	lhu	a5,0(a5)

000000e8 <.LBE645>:
  e8:	83bd                	srli	a5,a5,0xf
  ea:	dbad                	beqz	a5,5c <.L35>

000000ec <.LBB616>:
  ec:	30002df3          	csrr	s11,mstatus

000000f0 <.LBB617>:
  f0:	300477f3          	csrrci	a5,mstatus,8

000000f4 <.LBE617>:
  f4:	4532                	lw	a0,12(sp)
  f6:	0009a983          	lw	s3,0(s3)

000000fa <.LVL240>:
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LVL240>

00000102 <.LVL241>:
 102:	489c                	lw	a5,16(s1)
 104:	8b2a                	mv	s6,a0

00000106 <.LBB618>:
 106:	cb99                	beqz	a5,11c <.L37>
 108:	855e                	mv	a0,s7

0000010a <.LVL243>:
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL243>

00000112 <.LVL244>:
 112:	c509                	beqz	a0,11c <.L37>
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.LVL244+0x2>

0000011c <.L37>:
 11c:	300d9073          	csrw	mstatus,s11

00000120 <.LBB626>:
 120:	004b5783          	lhu	a5,4(s6)

00000124 <.LBB627>:
 124:	035787b3          	mul	a5,a5,s5

00000128 <.LVL248>:
 128:	97d2                	add	a5,a5,s4
 12a:	0007d683          	lhu	a3,0(a5)
 12e:	0186f6b3          	and	a3,a3,s8
 132:	00d79023          	sh	a3,0(a5)

00000136 <.LBE627>:
 136:	004b5783          	lhu	a5,4(s6)
 13a:	04fce163          	bltu	s9,a5,17c <.L39>

0000013e <.LBB628>:
 13e:	0484c783          	lbu	a5,72(s1)
 142:	17fd                	addi	a5,a5,-1
 144:	04f48423          	sb	a5,72(s1)

00000148 <.LBB629>:
 148:	30002df3          	csrr	s11,mstatus

0000014c <.LBB631>:
 14c:	300477f3          	csrrci	a5,mstatus,8

00000150 <.LBB632>:
 150:	4c9c                	lw	a5,24(s1)
 152:	e791                	bnez	a5,15e <.L40>
 154:	0564c783          	lbu	a5,86(s1)
 158:	9bed                	andi	a5,a5,-5
 15a:	04f48b23          	sb	a5,86(s1)

0000015e <.L40>:
 15e:	855a                	mv	a0,s6
 160:	00000097          	auipc	ra,0x0
 164:	000080e7          	jalr	ra # 160 <.L40+0x2>

00000168 <.LVL253>:
 168:	300d9073          	csrw	mstatus,s11

0000016c <.LBE629>:
 16c:	00cb4583          	lbu	a1,12(s6)
 170:	854a                	mv	a0,s2
 172:	00000097          	auipc	ra,0x0
 176:	000080e7          	jalr	ra # 172 <.LBE629+0x6>

0000017a <.LBE628>:
 17a:	bdf9                	j	58 <.L34>

0000017c <.L39>:
 17c:	00fd7963          	bgeu	s10,a5,18e <.L42>
 180:	855a                	mv	a0,s6
 182:	00000097          	auipc	ra,0x0
 186:	000080e7          	jalr	ra # 182 <.L39+0x6>

0000018a <.LVL256>:
 18a:	ec0507e3          	beqz	a0,58 <.L34>

0000018e <.L42>:
 18e:	0405                	addi	s0,s0,1

00000190 <.LVL257>:
 190:	0ff47413          	andi	s0,s0,255

00000194 <.LVL258>:
 194:	b5d1                	j	58 <.L34>

00000196 <.L51>:
 196:	0064d783          	lhu	a5,6(s1)
 19a:	07279863          	bne	a5,s2,20a <.L46>
 19e:	0084d503          	lhu	a0,8(s1)
 1a2:	054b7b63          	bgeu	s6,s4,1f8 <.L47>
 1a6:	00a4c703          	lbu	a4,10(s1)
 1aa:	00b4c683          	lbu	a3,11(s1)
 1ae:	00c4c603          	lbu	a2,12(s1)
 1b2:	85aa                	mv	a1,a0
 1b4:	854a                	mv	a0,s2
 1b6:	00000097          	auipc	ra,0x0
 1ba:	000080e7          	jalr	ra # 1b6 <.L51+0x20>

000001be <.L48>:
 1be:	8526                	mv	a0,s1
 1c0:	00000097          	auipc	ra,0x0
 1c4:	000080e7          	jalr	ra # 1c0 <.L48+0x2>

000001c8 <.L49>:
 1c8:	30002bf3          	csrr	s7,mstatus

000001cc <.LBB649>:
 1cc:	300477f3          	csrrci	a5,mstatus,8

000001d0 <.LBE649>:
 1d0:	01898513          	addi	a0,s3,24
 1d4:	00000097          	auipc	ra,0x0
 1d8:	000080e7          	jalr	ra # 1d4 <.LBE649+0x4>

000001dc <.LVL264>:
 1dc:	84aa                	mv	s1,a0
 1de:	e911                	bnez	a0,1f2 <.L50>

000001e0 <.LBB650>:
 1e0:	47e2                	lw	a5,24(sp)
 1e2:	cb81                	beqz	a5,1f2 <.L50>
 1e4:	082c                	addi	a1,sp,24
 1e6:	01898513          	addi	a0,s3,24
 1ea:	00000097          	auipc	ra,0x0
 1ee:	000080e7          	jalr	ra # 1ea <.LBB650+0xa>

000001f2 <.L50>:
 1f2:	300b9073          	csrw	mstatus,s7
 1f6:	b5c9                	j	b8 <.L45>

000001f8 <.L47>:
 1f8:	0044c583          	lbu	a1,4(s1)
 1fc:	8622                	mv	a2,s0
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.L47+0x6>

00000206 <.LVL269>:
 206:	8aaa                	mv	s5,a0
 208:	bf5d                	j	1be <.L48>

0000020a <.L46>:
 20a:	85a6                	mv	a1,s1
 20c:	0828                	addi	a0,sp,24
 20e:	00000097          	auipc	ra,0x0
 212:	000080e7          	jalr	ra # 20e <.L46+0x4>

00000216 <.LVL271>:
 216:	bf4d                	j	1c8 <.L49>

Disassembly of section .text.lld_pdu_tx_loop:

00000000 <lld_pdu_tx_loop>:
   0:	30002673          	csrr	a2,mstatus

00000004 <.LBB654>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBB655>:
   8:	455c                	lw	a5,12(a0)
   a:	45a9                	li	a1,10
   c:	0047d703          	lhu	a4,4(a5)

00000010 <.LBB661>:
  10:	47a9                	li	a5,10
  12:	02f70733          	mul	a4,a4,a5
  16:	280087b7          	lui	a5,0x28008
  1a:	2ca78793          	addi	a5,a5,714 # 280082ca <.LASF460+0x280048e9>
  1e:	973e                	add	a4,a4,a5

00000020 <.LBE661>:
  20:	451c                	lw	a5,8(a0)

00000022 <.LBB662>:
  22:	00075683          	lhu	a3,0(a4)

00000026 <.LBE662>:
  26:	0047d783          	lhu	a5,4(a5)
  2a:	02b787b3          	mul	a5,a5,a1

0000002e <.LBB663>:
  2e:	75e1                	lui	a1,0xffff8
  30:	8eed                	and	a3,a3,a1

00000032 <.LBE663>:
  32:	2ca78793          	addi	a5,a5,714

00000036 <.LBB664>:
  36:	8fd5                	or	a5,a5,a3
  38:	07c2                	slli	a5,a5,0x10
  3a:	83c1                	srli	a5,a5,0x10
  3c:	00f71023          	sh	a5,0(a4)

00000040 <.LBE664>:
  40:	30061073          	csrw	mstatus,a2

00000044 <.LBE652>:
  44:	8082                	ret

Disassembly of section .text.lld_pdu_data_tx_push:

00000000 <lld_pdu_data_tx_push>:
   0:	0045c783          	lbu	a5,4(a1) # ffff8004 <.LASF460+0xffff4623>

00000004 <.LBB668>:
   4:	4729                	li	a4,10
   6:	02e787b3          	mul	a5,a5,a4

0000000a <.LVL278>:
   a:	28008737          	lui	a4,0x28008
   e:	2ca70713          	addi	a4,a4,714 # 280082ca <.LASF460+0x280048e9>
  12:	973e                	add	a4,a4,a5
  14:	00071023          	sh	zero,0(a4)

00000018 <.LBE668>:
  18:	c691                	beqz	a3,24 <.L70>
  1a:	00b5c703          	lbu	a4,11(a1)
  1e:	0711                	addi	a4,a4,4
  20:	00e585a3          	sb	a4,11(a1)

00000024 <.L70>:
  24:	00b5c683          	lbu	a3,11(a1)

00000028 <.LVL280>:
  28:	00a5c703          	lbu	a4,10(a1)
  2c:	06a2                	slli	a3,a3,0x8
  2e:	8ed9                	or	a3,a3,a4

00000030 <.LBB669>:
  30:	28008737          	lui	a4,0x28008
  34:	2cc70813          	addi	a6,a4,716 # 280082cc <.LASF460+0x280048eb>
  38:	983e                	add	a6,a6,a5
  3a:	00d81023          	sh	a3,0(a6)

0000003e <.LBE669>:
  3e:	0085d803          	lhu	a6,8(a1)

00000042 <.LBB671>:
  42:	2ce70693          	addi	a3,a4,718
  46:	96be                	add	a3,a3,a5
  48:	01069023          	sh	a6,0(a3)

0000004c <.LBE671>:
  4c:	ce19                	beqz	a2,6a <.L71>
  4e:	0065d683          	lhu	a3,6(a1)
  52:	6621                	lui	a2,0x8

00000054 <.LBB673>:
  54:	2d270713          	addi	a4,a4,722
  58:	97ba                	add	a5,a5,a4

0000005a <.LBE673>:
  5a:	8ed1                	or	a3,a3,a2

0000005c <.LBB676>:
  5c:	00d79023          	sh	a3,0(a5)

00000060 <.LBE676>:
  60:	04854783          	lbu	a5,72(a0)
  64:	0785                	addi	a5,a5,1
  66:	04f50423          	sb	a5,72(a0)

0000006a <.L71>:
  6a:	511c                	lw	a5,32(a0)
  6c:	e791                	bnez	a5,78 <.L72>

0000006e <.L74>:
  6e:	d10c                	sw	a1,32(a0)

00000070 <.L73>:
  70:	d14c                	sw	a1,36(a0)
  72:	0005a023          	sw	zero,0(a1)

00000076 <.LBE677>:
  76:	8082                	ret

00000078 <.L72>:
  78:	515c                	lw	a5,36(a0)
  7a:	4629                	li	a2,10
  7c:	0047d703          	lhu	a4,4(a5)

00000080 <.LBB686>:
  80:	47a9                	li	a5,10
  82:	02f70733          	mul	a4,a4,a5
  86:	280087b7          	lui	a5,0x28008
  8a:	2ca78793          	addi	a5,a5,714 # 280082ca <.LASF460+0x280048e9>
  8e:	973e                	add	a4,a4,a5

00000090 <.LBE686>:
  90:	0045d783          	lhu	a5,4(a1)

00000094 <.LBB687>:
  94:	00075683          	lhu	a3,0(a4)

00000098 <.LBE687>:
  98:	02c787b3          	mul	a5,a5,a2

0000009c <.LBB688>:
  9c:	7661                	lui	a2,0xffff8
  9e:	8ef1                	and	a3,a3,a2

000000a0 <.LBE688>:
  a0:	2ca78793          	addi	a5,a5,714

000000a4 <.LBB689>:
  a4:	8fd5                	or	a5,a5,a3
  a6:	07c2                	slli	a5,a5,0x10
  a8:	83c1                	srli	a5,a5,0x10
  aa:	00f71023          	sh	a5,0(a4)

000000ae <.LBB690>:
  ae:	511c                	lw	a5,32(a0)
  b0:	dfdd                	beqz	a5,6e <.L74>
  b2:	515c                	lw	a5,36(a0)
  b4:	c38c                	sw	a1,0(a5)
  b6:	bf6d                	j	70 <.L73>

Disassembly of section .text.lld_pdu_data_send:

00000000 <lld_pdu_data_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	4581                	li	a1,0
   6:	842a                	mv	s0,a0
   8:	4541                	li	a0,16

0000000a <.LVL293>:
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL293+0x2>

00000014 <.LVL294>:
  14:	cd31                	beqz	a0,70 <.L86>

00000016 <.LBB691>:
  16:	00045703          	lhu	a4,0(s0)
  1a:	000007b7          	lui	a5,0x0
  1e:	00078793          	mv	a5,a5
  22:	070a                	slli	a4,a4,0x2
  24:	97ba                	add	a5,a5,a4
  26:	439c                	lw	a5,0(a5)
  28:	85aa                	mv	a1,a0

0000002a <.LVL295>:
  2a:	4b88                	lw	a0,16(a5)

0000002c <.LVL296>:
  2c:	441c                	lw	a5,8(s0)
  2e:	03050513          	addi	a0,a0,48

00000032 <.LVL297>:
  32:	c5dc                	sw	a5,12(a1)
  34:	00045783          	lhu	a5,0(s0)
  38:	00f59323          	sh	a5,6(a1)
  3c:	00445783          	lhu	a5,4(s0)
  40:	00f59423          	sh	a5,8(a1)
  44:	00244783          	lbu	a5,2(s0)
  48:	00f58523          	sb	a5,10(a1)
  4c:	47e9                	li	a5,26
  4e:	00f59223          	sh	a5,4(a1)

00000052 <.LBB692>:
  52:	30002473          	csrr	s0,mstatus

00000056 <.LBB694>:
  56:	300477f3          	csrrci	a5,mstatus,8

0000005a <.LBE694>:
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LBE694>

00000062 <.LVL301>:
  62:	30041073          	csrw	mstatus,s0

00000066 <.LBE692>:
  66:	4505                	li	a0,1

00000068 <.L85>:
  68:	40b2                	lw	ra,12(sp)
  6a:	4422                	lw	s0,8(sp)
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

00000070 <.L86>:
  70:	4501                	li	a0,0

00000072 <.LVL304>:
  72:	bfdd                	j	68 <.L85>

Disassembly of section .text.lld_pdu_tx_push:

00000000 <lld_pdu_tx_push>:
   0:	0045d783          	lhu	a5,4(a1)

00000004 <.LBB695>:
   4:	4829                	li	a6,10
   6:	280086b7          	lui	a3,0x28008
   a:	030787b3          	mul	a5,a5,a6

0000000e <.LBE695>:
   e:	1141                	addi	sp,sp,-16

00000010 <.LBB699>:
  10:	2ca68693          	addi	a3,a3,714 # 280082ca <.LASF460+0x280048e9>

00000014 <.LBE699>:
  14:	c606                	sw	ra,12(sp)
  16:	c422                	sw	s0,8(sp)
  18:	862a                	mv	a2,a0
  1a:	03050513          	addi	a0,a0,48

0000001e <.LBB700>:
  1e:	97b6                	add	a5,a5,a3
  20:	00079023          	sh	zero,0(a5) # 0 <lld_pdu_tx_push>

00000024 <.LBB701>:
  24:	30002473          	csrr	s0,mstatus

00000028 <.LBB703>:
  28:	300477f3          	csrrci	a5,mstatus,8

0000002c <.LBB704>:
  2c:	5a1c                	lw	a5,48(a2)
  2e:	c79d                	beqz	a5,5c <.L89>

00000030 <.LBB706>:
  30:	5a5c                	lw	a5,52(a2)
  32:	4629                	li	a2,10

00000034 <.LVL311>:
  34:	0047d703          	lhu	a4,4(a5)
  38:	0045d783          	lhu	a5,4(a1)

0000003c <.LBB711>:
  3c:	03070733          	mul	a4,a4,a6

00000040 <.LBE711>:
  40:	02c787b3          	mul	a5,a5,a2

00000044 <.LBB712>:
  44:	9736                	add	a4,a4,a3
  46:	00075683          	lhu	a3,0(a4)
  4a:	7661                	lui	a2,0xffff8
  4c:	8ef1                	and	a3,a3,a2

0000004e <.LBE712>:
  4e:	2ca78793          	addi	a5,a5,714

00000052 <.LBB713>:
  52:	8fd5                	or	a5,a5,a3
  54:	07c2                	slli	a5,a5,0x10
  56:	83c1                	srli	a5,a5,0x10
  58:	00f71023          	sh	a5,0(a4)

0000005c <.L89>:
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L89>

00000064 <.LVL313>:
  64:	30041073          	csrw	mstatus,s0

00000068 <.LBE701>:
  68:	40b2                	lw	ra,12(sp)
  6a:	4422                	lw	s0,8(sp)

0000006c <.LVL314>:
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

Disassembly of section .text.lld_pdu_tx_prog:

00000000 <lld_pdu_tx_prog>:
   0:	7159                	addi	sp,sp,-112
   2:	d2a6                	sw	s1,100(sp)

00000004 <.LVL316>:
   4:	c6de                	sw	s7,76(sp)
   6:	d686                	sw	ra,108(sp)
   8:	d4a2                	sw	s0,104(sp)
   a:	d0ca                	sw	s2,96(sp)
   c:	cece                	sw	s3,92(sp)
   e:	ccd2                	sw	s4,88(sp)
  10:	cad6                	sw	s5,84(sp)
  12:	c8da                	sw	s6,80(sp)
  14:	c4e2                	sw	s8,72(sp)
  16:	c2e6                	sw	s9,68(sp)
  18:	c0ea                	sw	s10,64(sp)
  1a:	de6e                	sw	s11,60(sp)

0000001c <.LBB768>:
  1c:	4d00                	lw	s0,24(a0)

0000001e <.LBE768>:
  1e:	8baa                	mv	s7,a0
  20:	02050493          	addi	s1,a0,32

00000024 <.LBB771>:
  24:	04c55a83          	lhu	s5,76(a0)

00000028 <.LBE771>:
  28:	cc21                	beqz	s0,80 <.L95>

0000002a <.LBB772>:
  2a:	4729                	li	a4,10
  2c:	02ea8933          	mul	s2,s5,a4
  30:	28008737          	lui	a4,0x28008
  34:	2ca70713          	addi	a4,a4,714 # 280082ca <.LASF460+0x280048e9>
  38:	974a                	add	a4,a4,s2
  3a:	00075703          	lhu	a4,0(a4)

0000003e <.LBE772>:
  3e:	833d                	srli	a4,a4,0xf
  40:	c321                	beqz	a4,80 <.L95>

00000042 <.LBB774>:
  42:	000009b7          	lui	s3,0x0
  46:	00098713          	mv	a4,s3
  4a:	002a9a13          	slli	s4,s5,0x2
  4e:	9752                	add	a4,a4,s4
  50:	4318                	lw	a4,0(a4)
  52:	00098993          	mv	s3,s3
  56:	0a574703          	lbu	a4,165(a4)

0000005a <.LVL321>:
  5a:	00477693          	andi	a3,a4,4
  5e:	1e068163          	beqz	a3,240 <.L96>

00000062 <.LBB775>:
  62:	02077b13          	andi	s6,a4,32

00000066 <.L98>:
  66:	00c44503          	lbu	a0,12(s0)
  6a:	1c0b0563          	beqz	s6,234 <.L97>
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.L98+0x8>

00000076 <.LVL323>:
  76:	8909                	andi	a0,a0,2

00000078 <.L167>:
  78:	1c051463          	bnez	a0,240 <.L96>
  7c:	4000                	lw	s0,0(s0)

0000007e <.LVL324>:
  7e:	f465                	bnez	s0,66 <.L98>

00000080 <.L95>:
  80:	04cbd603          	lhu	a2,76(s7)
  84:	4405                	li	s0,1
  86:	02c46063          	bltu	s0,a2,a6 <.L104>
  8a:	000006b7          	lui	a3,0x0
  8e:	002a9713          	slli	a4,s5,0x2
  92:	00068693          	mv	a3,a3
  96:	9736                	add	a4,a4,a3
  98:	4318                	lw	a4,0(a4)
  9a:	0a574403          	lbu	s0,165(a4)
  9e:	8009                	srli	s0,s0,0x2
  a0:	00144413          	xori	s0,s0,1
  a4:	8805                	andi	s0,s0,1

000000a6 <.L104>:
  a6:	008ba703          	lw	a4,8(s7)
  aa:	2e070b63          	beqz	a4,3a0 <.L106>
  ae:	2e040963          	beqz	s0,3a0 <.L106>
  b2:	008b8793          	addi	a5,s7,8
  b6:	c43e                	sw	a5,8(sp)

000000b8 <.LBB818>:
  b8:	4705                	li	a4,1
  ba:	38c76563          	bltu	a4,a2,444 <.L108>

000000be <.LBB819>:
  be:	000004b7          	lui	s1,0x0

000000c2 <.LVL328>:
  c2:	00048513          	mv	a0,s1
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL328+0x4>

000000ce <.LBB820>:
  ce:	008bab03          	lw	s6,8(s7)
  d2:	cc26                	sw	s1,24(sp)

000000d4 <.LBE820>:
  d4:	8a2a                	mv	s4,a0

000000d6 <.LBB824>:
  d6:	360b0e63          	beqz	s6,452 <.L110>

000000da <.LBE824>:
  da:	04cbd603          	lhu	a2,76(s7)
  de:	000006b7          	lui	a3,0x0
  e2:	00068693          	mv	a3,a3
  e6:	060a                	slli	a2,a2,0x2
  e8:	96b2                	add	a3,a3,a2
  ea:	4294                	lw	a3,0(a3)
  ec:	0a56c483          	lbu	s1,165(a3) # a5 <.L95+0x25>

000000f0 <.LBB825>:
  f0:	000b2683          	lw	a3,0(s6)
  f4:	00dba423          	sw	a3,8(s7)
  f8:	e299                	bnez	a3,fe <.L111>
  fa:	000ba623          	sw	zero,12(s7)

000000fe <.L111>:
  fe:	0014f793          	andi	a5,s1,1
 102:	048a                	slli	s1,s1,0x2
 104:	8891                	andi	s1,s1,4
 106:	c23e                	sw	a5,4(sp)

00000108 <.LBB826>:
 108:	01049793          	slli	a5,s1,0x10
 10c:	83c1                	srli	a5,a5,0x10
 10e:	c63e                	sw	a5,12(sp)
 110:	00349793          	slli	a5,s1,0x3
 114:	c83e                	sw	a5,16(sp)

00000116 <.LVL331>:
 116:	4981                	li	s3,0

00000118 <.L128>:
 118:	008b1c03          	lh	s8,8(s6)

0000011c <.LVL333>:
 11c:	47b2                	lw	a5,12(sp)
 11e:	042bd583          	lhu	a1,66(s7)
 122:	00ac0613          	addi	a2,s8,10 # ffff800a <.LASF460+0xffff4629>
 126:	963e                	add	a2,a2,a5
 128:	060e                	slli	a2,a2,0x3
 12a:	040bd683          	lhu	a3,64(s7)
 12e:	0642                	slli	a2,a2,0x10
 130:	8241                	srli	a2,a2,0x10
 132:	0ff5fc93          	andi	s9,a1,255

00000136 <.LVL334>:
 136:	00c6fe63          	bgeu	a3,a2,152 <.L112>
 13a:	47c2                	lw	a5,16(sp)
 13c:	8d85                	sub	a1,a1,s1
 13e:	8e9d                	sub	a3,a3,a5
 140:	fb068693          	addi	a3,a3,-80
 144:	868d                	srai	a3,a3,0x3

00000146 <.LVL335>:
 146:	0ff6f613          	andi	a2,a3,255
 14a:	20c5ca63          	blt	a1,a2,35e <.L113>
 14e:	0ff6fc93          	andi	s9,a3,255

00000152 <.L112>:
 152:	018cd463          	bge	s9,s8,15a <.L114>
 156:	0fecfc93          	andi	s9,s9,254

0000015a <.L114>:
 15a:	fffc0913          	addi	s2,s8,-1
 15e:	03994933          	div	s2,s2,s9
 162:	0905                	addi	s2,s2,1
 164:	0ff97913          	andi	s2,s2,255

00000168 <.LVL338>:
 168:	01091793          	slli	a5,s2,0x10
 16c:	83c1                	srli	a5,a5,0x10
 16e:	ca3e                	sw	a5,20(sp)
 170:	20fa6f63          	bltu	s4,a5,38e <.L115>
 174:	010c9793          	slli	a5,s9,0x10
 178:	83c1                	srli	a5,a5,0x10
 17a:	86a2                	mv	a3,s0
 17c:	4d81                	li	s11,0
 17e:	4d01                	li	s10,0
 180:	c03e                	sw	a5,0(sp)

00000182 <.L123>:
 182:	47e2                	lw	a5,24(sp)
 184:	ce36                	sw	a3,28(sp)

00000186 <.LBB834>:
 186:	00078513          	mv	a0,a5
 18a:	00000097          	auipc	ra,0x0
 18e:	000080e7          	jalr	ra # 18a <.LBB834+0x4>

00000192 <.LBE834>:
 192:	46f2                	lw	a3,28(sp)

00000194 <.LBB835>:
 194:	85aa                	mv	a1,a0

00000196 <.LBE835>:
 196:	1c068963          	beqz	a3,368 <.L116>

0000019a <.LVL343>:
 19a:	00ab4683          	lbu	a3,10(s6)
 19e:	4785                	li	a5,1
 1a0:	8a8d                	andi	a3,a3,3
 1a2:	00f68363          	beq	a3,a5,1a8 <.L117>
 1a6:	4689                	li	a3,2

000001a8 <.L117>:
 1a8:	00d58523          	sb	a3,10(a1)
 1ac:	00cb2683          	lw	a3,12(s6)

000001b0 <.LVL344>:
 1b0:	0066dd03          	lhu	s10,6(a3)

000001b4 <.LVL345>:
 1b4:	0046dd83          	lhu	s11,4(a3)

000001b8 <.L118>:
 1b8:	86e6                	mv	a3,s9
 1ba:	018cc463          	blt	s9,s8,1c2 <.L119>
 1be:	0ffc7693          	andi	a3,s8,255

000001c2 <.L119>:
 1c2:	4782                	lw	a5,0(sp)
 1c4:	00d585a3          	sb	a3,11(a1)
 1c8:	01b59323          	sh	s11,6(a1)
 1cc:	40fc08b3          	sub	a7,s8,a5
 1d0:	01089c13          	slli	s8,a7,0x10

000001d4 <.LVL347>:
 1d4:	01a59423          	sh	s10,8(a1)
 1d8:	410c5c13          	srai	s8,s8,0x10

000001dc <.LVL348>:
 1dc:	4692                	lw	a3,4(sp)
 1de:	1b804063          	bgtz	s8,37e <.L120>
 1e2:	4605                	li	a2,1
 1e4:	855e                	mv	a0,s7

000001e6 <.LVL349>:
 1e6:	00000097          	auipc	ra,0x0
 1ea:	000080e7          	jalr	ra # 1e6 <.LVL349>

000001ee <.LBE836>:
 1ee:	47d2                	lw	a5,20(sp)

000001f0 <.LBB841>:
 1f0:	010ba683          	lw	a3,16(s7)

000001f4 <.LBE841>:
 1f4:	99ca                	add	s3,s3,s2

000001f6 <.LVL351>:
 1f6:	40fa0a33          	sub	s4,s4,a5

000001fa <.LVL352>:
 1fa:	0a42                	slli	s4,s4,0x10
 1fc:	0ff9f993          	andi	s3,s3,255

00000200 <.LVL353>:
 200:	010a5a13          	srli	s4,s4,0x10

00000204 <.LBB845>:
 204:	22069b63          	bnez	a3,43a <.L165>
 208:	016ba823          	sw	s6,16(s7)

0000020c <.L125>:
 20c:	016baa23          	sw	s6,20(s7)
 210:	000b2023          	sw	zero,0(s6)

00000214 <.LBE845>:
 214:	47a9                	li	a5,10
 216:	1937e563          	bltu	a5,s3,3a0 <.L106>

0000021a <.LBB846>:
 21a:	008bab03          	lw	s6,8(s7)

0000021e <.LVL357>:
 21e:	220b0a63          	beqz	s6,452 <.L110>
 222:	000b2683          	lw	a3,0(s6)
 226:	00dba423          	sw	a3,8(s7)
 22a:	ee0697e3          	bnez	a3,118 <.L128>
 22e:	000ba623          	sw	zero,12(s7)
 232:	b5dd                	j	118 <.L128>

00000234 <.L97>:
 234:	00000097          	auipc	ra,0x0
 238:	000080e7          	jalr	ra # 234 <.L97>

0000023c <.LVL359>:
 23c:	8905                	andi	a0,a0,1
 23e:	bd2d                	j	78 <.L167>

00000240 <.L96>:
 240:	4601                	li	a2,0
 242:	85a2                	mv	a1,s0
 244:	018b8513          	addi	a0,s7,24
 248:	00000097          	auipc	ra,0x0
 24c:	000080e7          	jalr	ra # 248 <.L96+0x8>

00000250 <.LVL361>:
 250:	00842b03          	lw	s6,8(s0)

00000254 <.LBB777>:
 254:	46b1                	li	a3,12
 256:	000b4703          	lbu	a4,0(s6)
 25a:	02d706b3          	mul	a3,a4,a3
 25e:	00000737          	lui	a4,0x0
 262:	00070713          	mv	a4,a4
 266:	9736                	add	a4,a4,a3
 268:	4350                	lw	a2,4(a4)
 26a:	e0060be3          	beqz	a2,80 <.L95>
 26e:	02f10593          	addi	a1,sp,47

00000272 <.LVL363>:
 272:	855a                	mv	a0,s6
 274:	00000097          	auipc	ra,0x0
 278:	000080e7          	jalr	ra # 274 <.LVL363+0x2>

0000027c <.LBE777>:
 27c:	e00512e3          	bnez	a0,80 <.L95>

00000280 <.LBB779>:
 280:	00445703          	lhu	a4,4(s0)

00000284 <.LBB784>:
 284:	46a9                	li	a3,10

00000286 <.LBB785>:
 286:	85da                	mv	a1,s6

00000288 <.LBB788>:
 288:	02d70733          	mul	a4,a4,a3
 28c:	280086b7          	lui	a3,0x28008
 290:	2ce68613          	addi	a2,a3,718 # 280082ce <.LASF460+0x280048ed>

00000294 <.LBE788>:
 294:	99d2                	add	s3,s3,s4

00000296 <.LBB789>:
 296:	9732                	add	a4,a4,a2
 298:	00075503          	lhu	a0,0(a4) # 0 <lld_pdu_tx_prog>

0000029c <.LBB790>:
 29c:	00000737          	lui	a4,0x0
 2a0:	00072703          	lw	a4,0(a4) # 0 <lld_pdu_tx_prog>
 2a4:	02f14603          	lbu	a2,47(sp)
 2a8:	9536                	add	a0,a0,a3

000002aa <.LVL367>:
 2aa:	9702                	jalr	a4

000002ac <.LBE790>:
 2ac:	4408                	lw	a0,8(s0)
 2ae:	00000097          	auipc	ra,0x0
 2b2:	000080e7          	jalr	ra # 2ae <.LBE790+0x2>

000002b6 <.LVL369>:
 2b6:	0009a703          	lw	a4,0(s3) # 0 <lld_pdu_tx_prog>
 2ba:	0a574703          	lbu	a4,165(a4)
 2be:	8b05                	andi	a4,a4,1
 2c0:	c711                	beqz	a4,2cc <.L102>
 2c2:	02f14703          	lbu	a4,47(sp)
 2c6:	0711                	addi	a4,a4,4
 2c8:	02e107a3          	sb	a4,47(sp)

000002cc <.L102>:
 2cc:	28008637          	lui	a2,0x28008
 2d0:	2cc60713          	addi	a4,a2,716 # 280082cc <.LASF460+0x280048eb>
 2d4:	974a                	add	a4,a4,s2
 2d6:	00075583          	lhu	a1,0(a4)
 2da:	02f14683          	lbu	a3,47(sp)

000002de <.LBB794>:
 2de:	4529                	li	a0,10

000002e0 <.LBB798>:
 2e0:	0ff5f593          	andi	a1,a1,255
 2e4:	06a2                	slli	a3,a3,0x8
 2e6:	8ecd                	or	a3,a3,a1
 2e8:	00d71023          	sh	a3,0(a4)

000002ec <.LBB799>:
 2ec:	00075683          	lhu	a3,0(a4)
 2f0:	06c2                	slli	a3,a3,0x10
 2f2:	82c1                	srli	a3,a3,0x10
 2f4:	9af1                	andi	a3,a3,-4
 2f6:	0036e693          	ori	a3,a3,3
 2fa:	00d71023          	sh	a3,0(a4)

000002fe <.LBB801>:
 2fe:	04cbd583          	lhu	a1,76(s7)

00000302 <.LBB802>:
 302:	2ca60713          	addi	a4,a2,714
 306:	02a585b3          	mul	a1,a1,a0

0000030a <.LVL374>:
 30a:	00e58633          	add	a2,a1,a4
 30e:	00061023          	sh	zero,0(a2)

00000312 <.LBB803>:
 312:	020ba683          	lw	a3,32(s7)
 316:	ca85                	beqz	a3,346 <.L103>

00000318 <.LBB805>:
 318:	024ba683          	lw	a3,36(s7)
 31c:	45a9                	li	a1,10
 31e:	0046d683          	lhu	a3,4(a3)

00000322 <.LBB811>:
 322:	02a686b3          	mul	a3,a3,a0
 326:	96ba                	add	a3,a3,a4

00000328 <.LBE811>:
 328:	00445703          	lhu	a4,4(s0)

0000032c <.LBB812>:
 32c:	0006d603          	lhu	a2,0(a3)

00000330 <.LBE812>:
 330:	02b70733          	mul	a4,a4,a1

00000334 <.LBB813>:
 334:	75e1                	lui	a1,0xffff8
 336:	8e6d                	and	a2,a2,a1

00000338 <.LBE813>:
 338:	2ca70713          	addi	a4,a4,714

0000033c <.LBB814>:
 33c:	8f51                	or	a4,a4,a2
 33e:	0742                	slli	a4,a4,0x10
 340:	8341                	srli	a4,a4,0x10
 342:	00e69023          	sh	a4,0(a3)

00000346 <.L103>:
 346:	85a2                	mv	a1,s0
 348:	8526                	mv	a0,s1
 34a:	00000097          	auipc	ra,0x0
 34e:	000080e7          	jalr	ra # 34a <.L103+0x4>

00000352 <.LVL378>:
 352:	048bc703          	lbu	a4,72(s7)
 356:	0705                	addi	a4,a4,1
 358:	04eb8423          	sb	a4,72(s7)
 35c:	b315                	j	80 <.L95>

0000035e <.L113>:
 35e:	409c8833          	sub	a6,s9,s1
 362:	0ff87c93          	andi	s9,a6,255

00000366 <.LVL380>:
 366:	b3f5                	j	152 <.L112>

00000368 <.L116>:
 368:	4785                	li	a5,1
 36a:	00f50523          	sb	a5,10(a0)
 36e:	4782                	lw	a5,0(sp)
 370:	01a78333          	add	t1,a5,s10

00000374 <.LVL382>:
 374:	01031d13          	slli	s10,t1,0x10
 378:	010d5d13          	srli	s10,s10,0x10
 37c:	bd35                	j	1b8 <.L118>

0000037e <.L120>:
 37e:	4601                	li	a2,0
 380:	855e                	mv	a0,s7

00000382 <.LVL384>:
 382:	00000097          	auipc	ra,0x0
 386:	000080e7          	jalr	ra # 382 <.LVL384>

0000038a <.LVL385>:
 38a:	4681                	li	a3,0
 38c:	bbdd                	j	182 <.L123>

0000038e <.L115>:
 38e:	008ba683          	lw	a3,8(s7)
 392:	e299                	bnez	a3,398 <.L124>
 394:	016ba623          	sw	s6,12(s7)

00000398 <.L124>:
 398:	00db2023          	sw	a3,0(s6)
 39c:	016ba423          	sw	s6,8(s7)

000003a0 <.L106>:
 3a0:	05c00713          	li	a4,92
 3a4:	02ea8ab3          	mul	s5,s5,a4
 3a8:	020ba783          	lw	a5,32(s7)

000003ac <.LVL388>:
 3ac:	28008737          	lui	a4,0x28008
 3b0:	08e70613          	addi	a2,a4,142 # 2800808e <.LASF460+0x280046ad>
 3b4:	9656                	add	a2,a2,s5

000003b6 <.LBE858>:
 3b6:	cbc5                	beqz	a5,466 <.L129>

000003b8 <.LBB860>:
 3b8:	4529                	li	a0,10
 3ba:	2ca70693          	addi	a3,a4,714

000003be <.L132>:
 3be:	0047d703          	lhu	a4,4(a5)

000003c2 <.LBB863>:
 3c2:	02a705b3          	mul	a1,a4,a0
 3c6:	95b6                	add	a1,a1,a3
 3c8:	0005d583          	lhu	a1,0(a1) # ffff8000 <.LASF460+0xffff461f>

000003cc <.LBE863>:
 3cc:	81bd                	srli	a1,a1,0xf
 3ce:	e9c1                	bnez	a1,45e <.L130>
 3d0:	47a9                	li	a5,10

000003d2 <.LVL392>:
 3d2:	02f70733          	mul	a4,a4,a5
 3d6:	2ca70713          	addi	a4,a4,714
 3da:	0742                	slli	a4,a4,0x10
 3dc:	8341                	srli	a4,a4,0x10

000003de <.L131>:
 3de:	000007b7          	lui	a5,0x0
 3e2:	0017c683          	lbu	a3,1(a5) # 1 <lld_pdu_tx_prog+0x1>

000003e6 <.LBB864>:
 3e6:	00065583          	lhu	a1,0(a2)

000003ea <.LBB867>:
 3ea:	0016f793          	andi	a5,a3,1

000003ee <.LBB870>:
 3ee:	89fd                	andi	a1,a1,31

000003f0 <.LBB871>:
 3f0:	07aa                	slli	a5,a5,0xa
 3f2:	8fcd                	or	a5,a5,a1
 3f4:	00869593          	slli	a1,a3,0x8
 3f8:	2005f593          	andi	a1,a1,512
 3fc:	069a                	slli	a3,a3,0x6

000003fe <.LVL397>:
 3fe:	1006f693          	andi	a3,a3,256
 402:	8fcd                	or	a5,a5,a1
 404:	8fd5                	or	a5,a5,a3
 406:	66bd                	lui	a3,0xf
 408:	8fd5                	or	a5,a5,a3
 40a:	00f61023          	sh	a5,0(a2)

0000040e <.L133>:
 40e:	280087b7          	lui	a5,0x28008
 412:	0a478793          	addi	a5,a5,164 # 280080a4 <.LASF460+0x280046c3>
 416:	9abe                	add	s5,s5,a5
 418:	00ea9023          	sh	a4,0(s5)

0000041c <.LBE872>:
 41c:	50b6                	lw	ra,108(sp)
 41e:	5426                	lw	s0,104(sp)
 420:	5496                	lw	s1,100(sp)
 422:	5906                	lw	s2,96(sp)
 424:	49f6                	lw	s3,92(sp)
 426:	4a66                	lw	s4,88(sp)
 428:	4ad6                	lw	s5,84(sp)
 42a:	4b46                	lw	s6,80(sp)
 42c:	4bb6                	lw	s7,76(sp)

0000042e <.LVL400>:
 42e:	4c26                	lw	s8,72(sp)
 430:	4c96                	lw	s9,68(sp)
 432:	4d06                	lw	s10,64(sp)
 434:	5df2                	lw	s11,60(sp)
 436:	6165                	addi	sp,sp,112
 438:	8082                	ret

0000043a <.L165>:
 43a:	014ba683          	lw	a3,20(s7)
 43e:	0166a023          	sw	s6,0(a3) # f000 <.LASF460+0xb61f>
 442:	b3e9                	j	20c <.L125>

00000444 <.L108>:
 444:	008b8593          	addi	a1,s7,8
 448:	8526                	mv	a0,s1
 44a:	00000097          	auipc	ra,0x0
 44e:	000080e7          	jalr	ra # 44a <.L108+0x6>

00000452 <.L110>:
 452:	4522                	lw	a0,8(sp)
 454:	00000097          	auipc	ra,0x0
 458:	000080e7          	jalr	ra # 454 <.L110+0x2>

0000045c <.LVL404>:
 45c:	b791                	j	3a0 <.L106>

0000045e <.L130>:
 45e:	439c                	lw	a5,0(a5)
 460:	ffb9                	bnez	a5,3be <.L132>
 462:	4701                	li	a4,0
 464:	bfad                	j	3de <.L131>

00000466 <.L129>:
 466:	000007b7          	lui	a5,0x0
 46a:	0007c703          	lbu	a4,0(a5) # 0 <lld_pdu_tx_prog>

0000046e <.LBB875>:
 46e:	00065683          	lhu	a3,0(a2)

00000472 <.LBB878>:
 472:	00177793          	andi	a5,a4,1

00000476 <.LBB881>:
 476:	8afd                	andi	a3,a3,31

00000478 <.LBB882>:
 478:	07aa                	slli	a5,a5,0xa
 47a:	8fd5                	or	a5,a5,a3
 47c:	00871693          	slli	a3,a4,0x8
 480:	2006f693          	andi	a3,a3,512
 484:	071a                	slli	a4,a4,0x6

00000486 <.LVL411>:
 486:	10077713          	andi	a4,a4,256
 48a:	8fd5                	or	a5,a5,a3
 48c:	8fd9                	or	a5,a5,a4
 48e:	673d                	lui	a4,0xf
 490:	8fd9                	or	a5,a5,a4
 492:	00f61023          	sh	a5,0(a2)

00000496 <.LBE882>:
 496:	4701                	li	a4,0
 498:	bf9d                	j	40e <.L133>

Disassembly of section .text.lld_pdu_tx_flush:

00000000 <lld_pdu_tx_flush>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	84aa                	mv	s1,a0

0000000e <.LBB885>:
   e:	30002973          	csrr	s2,mstatus

00000012 <.LBB886>:
  12:	300477f3          	csrrci	a5,mstatus,8

00000016 <.LBE886>:
  16:	01850993          	addi	s3,a0,24

0000001a <.L169>:
  1a:	4c9c                	lw	a5,24(s1)
  1c:	eba9                	bnez	a5,6e <.L170>
  1e:	30091073          	csrw	mstatus,s2

00000022 <.LBE890>:
  22:	02048513          	addi	a0,s1,32 # 20 <.L169+0x6>
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LBE890+0x4>

0000002e <.LVL416>:
  2e:	842a                	mv	s0,a0

00000030 <.LVL417>:
  30:	00848513          	addi	a0,s1,8
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL417+0x4>

0000003c <.LVL418>:
  3c:	942a                	add	s0,s0,a0

0000003e <.LVL419>:
  3e:	01048513          	addi	a0,s1,16
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL419+0x4>

0000004a <.LVL420>:
  4a:	0ff47413          	andi	s0,s0,255

0000004e <.LVL421>:
  4e:	9522                	add	a0,a0,s0
  50:	0ff57593          	andi	a1,a0,255

00000054 <.LVL422>:
  54:	cd95                	beqz	a1,90 <.L168>
  56:	4462                	lw	s0,24(sp)
  58:	04c4d503          	lhu	a0,76(s1)
  5c:	40f2                	lw	ra,28(sp)
  5e:	44d2                	lw	s1,20(sp)

00000060 <.LVL423>:
  60:	4942                	lw	s2,16(sp)

00000062 <.LVL424>:
  62:	49b2                	lw	s3,12(sp)

00000064 <.LVL425>:
  64:	6105                	addi	sp,sp,32
  66:	00000317          	auipc	t1,0x0
  6a:	00030067          	jr	t1 # 66 <.LVL425+0x2>

0000006e <.L170>:
  6e:	854e                	mv	a0,s3
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.L170+0x2>

00000078 <.LVL427>:
  78:	842a                	mv	s0,a0

0000007a <.LVL428>:
  7a:	4508                	lw	a0,8(a0)
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL428+0x2>

00000084 <.LVL429>:
  84:	8522                	mv	a0,s0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL429+0x2>

0000008e <.LVL430>:
  8e:	b771                	j	1a <.L169>

00000090 <.L168>:
  90:	40f2                	lw	ra,28(sp)
  92:	4462                	lw	s0,24(sp)
  94:	44d2                	lw	s1,20(sp)

00000096 <.LVL432>:
  96:	4942                	lw	s2,16(sp)

00000098 <.LVL433>:
  98:	49b2                	lw	s3,12(sp)

0000009a <.LVL434>:
  9a:	6105                	addi	sp,sp,32
  9c:	8082                	ret

Disassembly of section .text.lld_pdu_adv_pack:

00000000 <lld_pdu_adv_pack>:
   0:	47b1                	li	a5,12
   2:	02f50533          	mul	a0,a0,a5

00000006 <.LVL436>:
   6:	000007b7          	lui	a5,0x0
   a:	00078793          	mv	a5,a5
   e:	872e                	mv	a4,a1
  10:	85b2                	mv	a1,a2

00000012 <.LVL437>:
  12:	97aa                	add	a5,a5,a0
  14:	43d0                	lw	a2,4(a5)

00000016 <.LVL438>:
  16:	c611                	beqz	a2,22 <.L174>
  18:	853a                	mv	a0,a4
  1a:	00000317          	auipc	t1,0x0
  1e:	00030067          	jr	t1 # 1a <.LVL438+0x4>

00000022 <.L174>:
  22:	4509                	li	a0,2
  24:	8082                	ret

Disassembly of section .text.lld_pdu_rx_handler:

00000000 <lld_pdu_rx_handler>:
   0:	715d                	addi	sp,sp,-80
   2:	d85a                	sw	s6,48(sp)

00000004 <.LBB921>:
   4:	00000b37          	lui	s6,0x0

00000008 <.LBE921>:
   8:	de4e                	sw	s3,60(sp)
   a:	dc52                	sw	s4,56(sp)
   c:	da56                	sw	s5,52(sp)
   e:	d65e                	sw	s7,44(sp)
  10:	d462                	sw	s8,40(sp)
  12:	ce6e                	sw	s11,28(sp)

00000014 <.LBB922>:
  14:	000b0793          	mv	a5,s6

00000018 <.LBE922>:
  18:	c686                	sw	ra,76(sp)
  1a:	c4a2                	sw	s0,72(sp)
  1c:	c2a6                	sw	s1,68(sp)
  1e:	c0ca                	sw	s2,64(sp)
  20:	d266                	sw	s9,36(sp)
  22:	d06a                	sw	s10,32(sp)

00000024 <.LBB923>:
  24:	15c7c903          	lbu	s2,348(a5) # 15c <.L180+0xe>

00000028 <.LBB924>:
  28:	00000bb7          	lui	s7,0x0

0000002c <.LBB926>:
  2c:	00000c37          	lui	s8,0x0

00000030 <.LBE924>:
  30:	89aa                	mv	s3,a0
  32:	8a2e                	mv	s4,a1
  34:	000b0b13          	mv	s6,s6

00000038 <.LBB967>:
  38:	28008ab7          	lui	s5,0x28008

0000003c <.LBB973>:
  3c:	000b8b93          	mv	s7,s7

00000040 <.LBB930>:
  40:	00000db7          	lui	s11,0x0

00000044 <.LBE930>:
  44:	000c0c13          	mv	s8,s8

00000048 <.L176>:
  48:	1a7d                	addi	s4,s4,-1

0000004a <.LVL443>:
  4a:	0ffa7a13          	andi	s4,s4,255

0000004e <.LVL444>:
  4e:	0ff00793          	li	a5,255
  52:	02fa1363          	bne	s4,a5,78 <.L189>

00000056 <.LBB993>:
  56:	40b6                	lw	ra,76(sp)
  58:	4426                	lw	s0,72(sp)

0000005a <.LBB996>:
  5a:	152b0e23          	sb	s2,348(s6) # 15c <.L180+0xe>

0000005e <.LBE996>:
  5e:	4496                	lw	s1,68(sp)
  60:	4906                	lw	s2,64(sp)

00000062 <.LVL447>:
  62:	59f2                	lw	s3,60(sp)

00000064 <.LVL448>:
  64:	5a62                	lw	s4,56(sp)

00000066 <.LVL449>:
  66:	5ad2                	lw	s5,52(sp)
  68:	5b42                	lw	s6,48(sp)
  6a:	5bb2                	lw	s7,44(sp)
  6c:	5c22                	lw	s8,40(sp)
  6e:	5c92                	lw	s9,36(sp)
  70:	5d02                	lw	s10,32(sp)
  72:	4df2                	lw	s11,28(sp)
  74:	6161                	addi	sp,sp,80
  76:	8082                	ret

00000078 <.L189>:
  78:	0569c783          	lbu	a5,86(s3)
  7c:	8bc1                	andi	a5,a5,16
  7e:	22079663          	bnez	a5,2aa <.L177>

00000082 <.LBB997>:
  82:	4581                	li	a1,0
  84:	4541                	li	a0,16
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LBB997+0x4>

0000008e <.LBB974>:
  8e:	47b9                	li	a5,14
  90:	02f907b3          	mul	a5,s2,a5
  94:	28008737          	lui	a4,0x28008
  98:	3d270713          	addi	a4,a4,978 # 280083d2 <.LASF460+0x280049f1>

0000009c <.LBB975>:
  9c:	3d4a8613          	addi	a2,s5,980 # 280083d4 <.LASF460+0x280049f3>

000000a0 <.LBE975>:
  a0:	842a                	mv	s0,a0

000000a2 <.LBB980>:
  a2:	973e                	add	a4,a4,a5
  a4:	00075703          	lhu	a4,0(a4)

000000a8 <.LBE980>:
  a8:	01250223          	sb	s2,4(a0)

000000ac <.LBB981>:
  ac:	01071693          	slli	a3,a4,0x10

000000b0 <.LBE981>:
  b0:	04c9d703          	lhu	a4,76(s3)

000000b4 <.LBB982>:
  b4:	82c1                	srli	a3,a3,0x10

000000b6 <.LBE982>:
  b6:	00e51323          	sh	a4,6(a0)

000000ba <.LBB983>:
  ba:	3d0a8713          	addi	a4,s5,976
  be:	973e                	add	a4,a4,a5
  c0:	00075703          	lhu	a4,0(a4)

000000c4 <.LBB986>:
  c4:	97b2                	add	a5,a5,a2

000000c6 <.LBB987>:
  c6:	0742                	slli	a4,a4,0x10
  c8:	8341                	srli	a4,a4,0x10

000000ca <.LBE987>:
  ca:	00e51423          	sh	a4,8(a0)

000000ce <.LBB988>:
  ce:	0007d783          	lhu	a5,0(a5)

000000d2 <.LBE988>:
  d2:	000502a3          	sb	zero,5(a0)

000000d6 <.LBB989>:
  d6:	07c2                	slli	a5,a5,0x10
  d8:	83c1                	srli	a5,a5,0x10

000000da <.LVL457>:
  da:	00f7d613          	srli	a2,a5,0xf
  de:	00c506a3          	sb	a2,13(a0)
  e2:	4087d613          	srai	a2,a5,0x8
  e6:	03f67613          	andi	a2,a2,63
  ea:	00c505a3          	sb	a2,11(a0)
  ee:	00f50623          	sb	a5,12(a0)

000000f2 <.LBE989>:
  f2:	0569c783          	lbu	a5,86(s3)
  f6:	0017f613          	andi	a2,a5,1
  fa:	c619                	beqz	a2,108 <.L178>
  fc:	04077713          	andi	a4,a4,64
 100:	e701                	bnez	a4,108 <.L178>
 102:	9bf9                	andi	a5,a5,-2
 104:	04f98b23          	sb	a5,86(s3)

00000108 <.L178>:
 108:	00645783          	lhu	a5,6(s0)
 10c:	4705                	li	a4,1
 10e:	17f9                	addi	a5,a5,-2
 110:	07c2                	slli	a5,a5,0x10
 112:	83c1                	srli	a5,a5,0x10
 114:	16f77e63          	bgeu	a4,a5,290 <.L179>
 118:	0086d793          	srli	a5,a3,0x8
 11c:	00f40523          	sb	a5,10(s0)
 120:	0569c783          	lbu	a5,86(s3)
 124:	0027f713          	andi	a4,a5,2
 128:	c31d                	beqz	a4,14e <.L180>
 12a:	00845703          	lhu	a4,8(s0)
 12e:	8b05                	andi	a4,a4,1
 130:	ef19                	bnez	a4,14e <.L180>
 132:	9bf5                	andi	a5,a5,-3
 134:	04f98b23          	sb	a5,86(s3)
 138:	00645783          	lhu	a5,6(s0)
 13c:	078a                	slli	a5,a5,0x2
 13e:	97de                	add	a5,a5,s7
 140:	4398                	lw	a4,0(a5)
 142:	05c75783          	lhu	a5,92(a4)
 146:	1007e793          	ori	a5,a5,256
 14a:	04f71e23          	sh	a5,92(a4)

0000014e <.L180>:
 14e:	00845783          	lhu	a5,8(s0)
 152:	13f7f793          	andi	a5,a5,319
 156:	ebd5                	bnez	a5,20a <.L181>
 158:	00a44783          	lbu	a5,10(s0)
 15c:	c7dd                	beqz	a5,20a <.L181>

0000015e <.LBB990>:
 15e:	00645483          	lhu	s1,6(s0)
 162:	0036f713          	andi	a4,a3,3

00000166 <.LVL459>:
 166:	00249693          	slli	a3,s1,0x2

0000016a <.LVL460>:
 16a:	96de                	add	a3,a3,s7
 16c:	4294                	lw	a3,0(a3)
 16e:	0a56c683          	lbu	a3,165(a3)
 172:	8a89                	andi	a3,a3,2
 174:	c681                	beqz	a3,17c <.L182>
 176:	17f1                	addi	a5,a5,-4
 178:	00f40523          	sb	a5,10(s0)

0000017c <.L182>:
 17c:	c759                	beqz	a4,20a <.L181>
 17e:	4789                	li	a5,2
 180:	0ce7f663          	bgeu	a5,a4,24c <.L184>
 184:	478d                	li	a5,3
 186:	08f71263          	bne	a4,a5,20a <.L181>

0000018a <.LBB962>:
 18a:	04a2                	slli	s1,s1,0x8
 18c:	0014e493          	ori	s1,s1,1

00000190 <.LBE962>:
 190:	00a44803          	lbu	a6,10(s0)

00000194 <.LBB963>:
 194:	04c2                	slli	s1,s1,0x10
 196:	80c1                	srli	s1,s1,0x10
 198:	46f1                	li	a3,28
 19a:	8626                	mv	a2,s1
 19c:	85a6                	mv	a1,s1
 19e:	10a00513          	li	a0,266

000001a2 <.LBE963>:
 1a2:	c642                	sw	a6,12(sp)

000001a4 <.LBB964>:
 1a4:	00000097          	auipc	ra,0x0
 1a8:	000080e7          	jalr	ra # 1a4 <.LBB964>

000001ac <.LBB953>:
 1ac:	00444783          	lbu	a5,4(s0)

000001b0 <.LBB935>:
 1b0:	4739                	li	a4,14

000001b2 <.LBE935>:
 1b2:	00250d13          	addi	s10,a0,2

000001b6 <.LBB941>:
 1b6:	02e787b3          	mul	a5,a5,a4
 1ba:	3d6a8713          	addi	a4,s5,982

000001be <.LBE941>:
 1be:	8caa                	mv	s9,a0

000001c0 <.LBB942>:
 1c0:	4605                	li	a2,1
 1c2:	856a                	mv	a0,s10

000001c4 <.LBB944>:
 1c4:	97ba                	add	a5,a5,a4
 1c6:	0007d703          	lhu	a4,0(a5)

000001ca <.LBB945>:
 1ca:	000da783          	lw	a5,0(s11) # 0 <lld_pdu_rx_handler>

000001ce <.LBB946>:
 1ce:	0742                	slli	a4,a4,0x10
 1d0:	8341                	srli	a4,a4,0x10

000001d2 <.LBB947>:
 1d2:	015705b3          	add	a1,a4,s5
 1d6:	c43a                	sw	a4,8(sp)
 1d8:	9782                	jalr	a5

000001da <.LBE947>:
 1da:	002cc783          	lbu	a5,2(s9)
 1de:	46d5                	li	a3,21
 1e0:	4722                	lw	a4,8(sp)
 1e2:	4832                	lw	a6,12(sp)
 1e4:	02f6fd63          	bgeu	a3,a5,21e <.L185>
 1e8:	47e5                	li	a5,25

000001ea <.L206>:
 1ea:	00fc8023          	sb	a5,0(s9)

000001ee <.L186>:
 1ee:	000cc583          	lbu	a1,0(s9)
 1f2:	4685                	li	a3,1
 1f4:	866a                	mv	a2,s10
 1f6:	8526                	mv	a0,s1
 1f8:	00000097          	auipc	ra,0x0
 1fc:	000080e7          	jalr	ra # 1f8 <.L186+0xa>

00000200 <.LVL468>:
 200:	8566                	mv	a0,s9
 202:	00000097          	auipc	ra,0x0
 206:	000080e7          	jalr	ra # 202 <.LVL468+0x2>

0000020a <.L181>:
 20a:	00444503          	lbu	a0,4(s0)
 20e:	00000097          	auipc	ra,0x0
 212:	000080e7          	jalr	ra # 20e <.L181+0x4>

00000216 <.LVL470>:
 216:	4785                	li	a5,1
 218:	00f402a3          	sb	a5,5(s0)
 21c:	a895                	j	290 <.L179>

0000021e <.L185>:
 21e:	46b1                	li	a3,12
 220:	02d787b3          	mul	a5,a5,a3
 224:	97e2                	add	a5,a5,s8
 226:	0007c583          	lbu	a1,0(a5)
 22a:	01058463          	beq	a1,a6,232 <.L187>
 22e:	47f9                	li	a5,30
 230:	bf6d                	j	1ea <.L206>

00000232 <.L187>:
 232:	00170513          	addi	a0,a4,1
 236:	479c                	lw	a5,8(a5)
 238:	15fd                	addi	a1,a1,-1
 23a:	0542                	slli	a0,a0,0x10
 23c:	000c8023          	sb	zero,0(s9)
 240:	866a                	mv	a2,s10
 242:	0ff5f593          	andi	a1,a1,255
 246:	8141                	srli	a0,a0,0x10
 248:	9782                	jalr	a5

0000024a <.LVL472>:
 24a:	b755                	j	1ee <.L186>

0000024c <.L184>:
 24c:	00849613          	slli	a2,s1,0x8
 250:	00166613          	ori	a2,a2,1
 254:	0642                	slli	a2,a2,0x10
 256:	8241                	srli	a2,a2,0x10
 258:	46a1                	li	a3,8
 25a:	85b2                	mv	a1,a2
 25c:	10000513          	li	a0,256
 260:	c43a                	sw	a4,8(sp)

00000262 <.LVL474>:
 262:	00000097          	auipc	ra,0x0
 266:	000080e7          	jalr	ra # 262 <.LVL474>

0000026a <.LVL475>:
 26a:	00645683          	lhu	a3,6(s0)
 26e:	4722                	lw	a4,8(sp)
 270:	00d51023          	sh	a3,0(a0)
 274:	00a44683          	lbu	a3,10(s0)
 278:	00e50123          	sb	a4,2(a0)
 27c:	00d51223          	sh	a3,4(a0)
 280:	00444703          	lbu	a4,4(s0)
 284:	00e50323          	sb	a4,6(a0)
 288:	00000097          	auipc	ra,0x0
 28c:	000080e7          	jalr	ra # 288 <.LVL475+0x1e>

00000290 <.L179>:
 290:	000007b7          	lui	a5,0x0
 294:	85a2                	mv	a1,s0
 296:	01878513          	addi	a0,a5,24 # 18 <.LBE922>
 29a:	00000097          	auipc	ra,0x0
 29e:	000080e7          	jalr	ra # 29a <.L179+0xa>

000002a2 <.L188>:
 2a2:	0905                	addi	s2,s2,1

000002a4 <.LBE998>:
 2a4:	00797913          	andi	s2,s2,7

000002a8 <.LVL479>:
 2a8:	b345                	j	48 <.L176>

000002aa <.L177>:
 2aa:	854a                	mv	a0,s2
 2ac:	00000097          	auipc	ra,0x0
 2b0:	000080e7          	jalr	ra # 2ac <.L177+0x2>

000002b4 <.LVL481>:
 2b4:	b7fd                	j	2a2 <.L188>
