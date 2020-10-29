
bl602_rf_private.o:     file format elf32-littleriscv


Disassembly of section .text.rf_pri_set_gain_table_regs:

00000000 <rf_pri_set_gain_table_regs>:
   0:	40001737          	lui	a4,0x40001
   4:	000007b7          	lui	a5,0x0
   8:	00078793          	mv	a5,a5
   c:	11872603          	lw	a2,280(a4) # 40001118 <.LLST148+0x3fffe3d6>

00000010 <.LVL1>:
  10:	1947a683          	lw	a3,404(a5) # 194 <.LVL66+0x2>
  14:	75f5                	lui	a1,0xffffd
  16:	9a01                	andi	a2,a2,-32

00000018 <.LVL2>:
  18:	8e55                	or	a2,a2,a3

0000001a <.LVL3>:
  1a:	1907a683          	lw	a3,400(a5)
  1e:	8ff67613          	andi	a2,a2,-1793

00000022 <.LVL4>:
  22:	fff58f93          	addi	t6,a1,-1 # ffffcfff <.LLST148+0xffffa2bd>
  26:	06a2                	slli	a3,a3,0x8

00000028 <.LVL5>:
  28:	8ed1                	or	a3,a3,a2

0000002a <.LVL6>:
  2a:	01f6f633          	and	a2,a3,t6

0000002e <.LVL7>:
  2e:	18c7a683          	lw	a3,396(a5)
  32:	7551                	lui	a0,0xffff4
  34:	fff50f13          	addi	t5,a0,-1 # ffff3fff <.LLST148+0xffff12bd>
  38:	06b2                	slli	a3,a3,0xc
  3a:	8ed1                	or	a3,a3,a2

0000003c <.LVL8>:
  3c:	1887a603          	lw	a2,392(a5)
  40:	01e6f6b3          	and	a3,a3,t5

00000044 <.LVL9>:
  44:	ffe105b7          	lui	a1,0xffe10
  48:	063a                	slli	a2,a2,0xe

0000004a <.LVL10>:
  4a:	fff58e93          	addi	t4,a1,-1 # ffe0ffff <.LLST148+0xffe0d2bd>
  4e:	8e55                	or	a2,a2,a3

00000050 <.LVL11>:
  50:	01d676b3          	and	a3,a2,t4

00000054 <.LVL12>:
  54:	15c7a603          	lw	a2,348(a5)
  58:	d0000337          	lui	t1,0xd0000
  5c:	137d                	addi	t1,t1,-1
  5e:	0642                	slli	a2,a2,0x10
  60:	8e55                	or	a2,a2,a3

00000062 <.LVL13>:
  62:	f90006b7          	lui	a3,0xf9000
  66:	fff68e13          	addi	t3,a3,-1 # f8ffffff <.LLST148+0xf8ffd2bd>
  6a:	01c676b3          	and	a3,a2,t3

0000006e <.LVL14>:
  6e:	1587a603          	lw	a2,344(a5)
  72:	0662                	slli	a2,a2,0x18
  74:	8e55                	or	a2,a2,a3

00000076 <.LVL15>:
  76:	1547a683          	lw	a3,340(a5)
  7a:	00667633          	and	a2,a2,t1

0000007e <.LVL16>:
  7e:	06f2                	slli	a3,a3,0x1c

00000080 <.LVL17>:
  80:	8e55                	or	a2,a2,a3

00000082 <.LVL18>:
  82:	400006b7          	lui	a3,0x40000
  86:	fff68893          	addi	a7,a3,-1 # 3fffffff <.LLST148+0x3fffd2bd>
  8a:	011676b3          	and	a3,a2,a7
  8e:	1507a603          	lw	a2,336(a5)

00000092 <.LVL19>:
  92:	067a                	slli	a2,a2,0x1e
  94:	8ed1                	or	a3,a3,a2

00000096 <.LVL20>:
  96:	10d72c23          	sw	a3,280(a4)
  9a:	11c72603          	lw	a2,284(a4)

0000009e <.LVL21>:
  9e:	1247a683          	lw	a3,292(a5)
  a2:	9a01                	andi	a2,a2,-32

000000a4 <.LVL22>:
  a4:	8e55                	or	a2,a2,a3

000000a6 <.LVL23>:
  a6:	1207a683          	lw	a3,288(a5)
  aa:	8ff67613          	andi	a2,a2,-1793

000000ae <.LVL24>:
  ae:	06a2                	slli	a3,a3,0x8

000000b0 <.LVL25>:
  b0:	8ed1                	or	a3,a3,a2

000000b2 <.LVL26>:
  b2:	01f6f633          	and	a2,a3,t6

000000b6 <.LVL27>:
  b6:	11c7a683          	lw	a3,284(a5)
  ba:	06b2                	slli	a3,a3,0xc
  bc:	8ed1                	or	a3,a3,a2

000000be <.LVL28>:
  be:	1187a603          	lw	a2,280(a5)
  c2:	01e6f6b3          	and	a3,a3,t5

000000c6 <.LVL29>:
  c6:	063a                	slli	a2,a2,0xe

000000c8 <.LVL30>:
  c8:	8e55                	or	a2,a2,a3

000000ca <.LVL31>:
  ca:	01d676b3          	and	a3,a2,t4

000000ce <.LVL32>:
  ce:	0ec7a603          	lw	a2,236(a5)
  d2:	0642                	slli	a2,a2,0x10
  d4:	8e55                	or	a2,a2,a3

000000d6 <.LVL33>:
  d6:	0e87a683          	lw	a3,232(a5)
  da:	01c67633          	and	a2,a2,t3

000000de <.LVL34>:
  de:	06e2                	slli	a3,a3,0x18

000000e0 <.LVL35>:
  e0:	8ed1                	or	a3,a3,a2

000000e2 <.LVL36>:
  e2:	0066f633          	and	a2,a3,t1

000000e6 <.LVL37>:
  e6:	0e47a683          	lw	a3,228(a5)
  ea:	06f2                	slli	a3,a3,0x1c
  ec:	8ed1                	or	a3,a3,a2

000000ee <.LVL38>:
  ee:	0e07a603          	lw	a2,224(a5)
  f2:	0116f6b3          	and	a3,a3,a7

000000f6 <.LVL39>:
  f6:	067a                	slli	a2,a2,0x1e
  f8:	8ed1                	or	a3,a3,a2

000000fa <.LVL40>:
  fa:	10d72e23          	sw	a3,284(a4)
  fe:	12072603          	lw	a2,288(a4)

00000102 <.LVL41>:
 102:	0b47a803          	lw	a6,180(a5)
 106:	5bb4                	lw	a3,112(a5)
 108:	9a01                	andi	a2,a2,-32

0000010a <.LVL42>:
 10a:	01066633          	or	a2,a2,a6

0000010e <.LVL43>:
 10e:	0b07a803          	lw	a6,176(a5)
 112:	8ff67613          	andi	a2,a2,-1793

00000116 <.LVL44>:
 116:	06fa                	slli	a3,a3,0x1e
 118:	0822                	slli	a6,a6,0x8

0000011a <.LVL45>:
 11a:	00c86833          	or	a6,a6,a2

0000011e <.LVL46>:
 11e:	01f87633          	and	a2,a6,t6

00000122 <.LVL47>:
 122:	0ac7a803          	lw	a6,172(a5)
 126:	0832                	slli	a6,a6,0xc
 128:	00c86833          	or	a6,a6,a2

0000012c <.LVL48>:
 12c:	0a87a603          	lw	a2,168(a5)
 130:	01e87833          	and	a6,a6,t5

00000134 <.LVL49>:
 134:	063a                	slli	a2,a2,0xe

00000136 <.LVL50>:
 136:	01066633          	or	a2,a2,a6

0000013a <.LVL51>:
 13a:	01d67833          	and	a6,a2,t4

0000013e <.LVL52>:
 13e:	5ff0                	lw	a2,124(a5)
 140:	0642                	slli	a2,a2,0x10
 142:	01066633          	or	a2,a2,a6

00000146 <.LVL53>:
 146:	0787a803          	lw	a6,120(a5)
 14a:	01c67633          	and	a2,a2,t3

0000014e <.LVL54>:
 14e:	0862                	slli	a6,a6,0x18

00000150 <.LVL55>:
 150:	00c86833          	or	a6,a6,a2

00000154 <.LVL56>:
 154:	00687633          	and	a2,a6,t1

00000158 <.LVL57>:
 158:	0747a803          	lw	a6,116(a5)
 15c:	0872                	slli	a6,a6,0x1c
 15e:	00c86833          	or	a6,a6,a2

00000162 <.LVL58>:
 162:	01187833          	and	a6,a6,a7

00000166 <.LVL59>:
 166:	0106e833          	or	a6,a3,a6

0000016a <.LVL60>:
 16a:	13072023          	sw	a6,288(a4)
 16e:	12472803          	lw	a6,292(a4)
 172:	43ec                	lw	a1,68(a5)
 174:	fe087813          	andi	a6,a6,-32

00000178 <.LVL62>:
 178:	00b86833          	or	a6,a6,a1

0000017c <.LVL63>:
 17c:	43ac                	lw	a1,64(a5)
 17e:	5fc8                	lw	a0,60(a5)
 180:	8ff87813          	andi	a6,a6,-1793

00000184 <.LVL64>:
 184:	05a2                	slli	a1,a1,0x8
 186:	0105e5b3          	or	a1,a1,a6
 18a:	0532                	slli	a0,a0,0xc
 18c:	01f5f5b3          	and	a1,a1,t6

00000190 <.LVL65>:
 190:	8dc9                	or	a1,a1,a0

00000192 <.LVL66>:
 192:	01e5f533          	and	a0,a1,t5

00000196 <.LVL67>:
 196:	5f8c                	lw	a1,56(a5)
 198:	47d4                	lw	a3,12(a5)
 19a:	4790                	lw	a2,8(a5)
 19c:	05ba                	slli	a1,a1,0xe
 19e:	8dc9                	or	a1,a1,a0

000001a0 <.LVL68>:
 1a0:	01d5f5b3          	and	a1,a1,t4

000001a4 <.LVL69>:
 1a4:	06c2                	slli	a3,a3,0x10

000001a6 <.LVL70>:
 1a6:	8ecd                	or	a3,a3,a1

000001a8 <.LVL71>:
 1a8:	0662                	slli	a2,a2,0x18
 1aa:	01c6f6b3          	and	a3,a3,t3

000001ae <.LVL72>:
 1ae:	8ed1                	or	a3,a3,a2

000001b0 <.LVL73>:
 1b0:	0066f633          	and	a2,a3,t1

000001b4 <.LVL74>:
 1b4:	43d4                	lw	a3,4(a5)
 1b6:	439c                	lw	a5,0(a5)
 1b8:	06f2                	slli	a3,a3,0x1c
 1ba:	8ed1                	or	a3,a3,a2

000001bc <.LVL75>:
 1bc:	0116f6b3          	and	a3,a3,a7

000001c0 <.LVL76>:
 1c0:	07fa                	slli	a5,a5,0x1e
 1c2:	8edd                	or	a3,a3,a5

000001c4 <.LVL77>:
 1c4:	12d72223          	sw	a3,292(a4)
 1c8:	8082                	ret

Disassembly of section .text.rf_pri_manu_pu:

00000000 <rf_pri_manu_pu>:
   0:	400017b7          	lui	a5,0x40001
   4:	43d8                	lw	a4,4(a5)

00000006 <.LVL79>:
   6:	9b75                	andi	a4,a4,-3
   8:	c3d8                	sw	a4,4(a5)
   a:	0007a623          	sw	zero,12(a5) # 4000100c <.LLST148+0x3fffe2ca>
   e:	4715                	li	a4,5

00000010 <.LVL81>:
  10:	04e50f63          	beq	a0,a4,6e <.L3>
  14:	02a76463          	bltu	a4,a0,3c <.L4>
  18:	4711                	li	a4,4
  1a:	02e50f63          	beq	a0,a4,58 <.L5>

0000001e <.L6>:
  1e:	400016b7          	lui	a3,0x40001
  22:	5a9c                	lw	a5,48(a3)

00000024 <.LVL82>:
  24:	2df10737          	lui	a4,0x2df10
  28:	eff70713          	addi	a4,a4,-257 # 2df0feff <.LLST148+0x2df0d1bd>
  2c:	8ff9                	and	a5,a5,a4

0000002e <.LVL83>:
  2e:	25f07737          	lui	a4,0x25f07
  32:	e0070713          	addi	a4,a4,-512 # 25f06e00 <.LLST148+0x25f040be>
  36:	8fd9                	or	a5,a5,a4

00000038 <.LVL84>:
  38:	da9c                	sw	a5,48(a3)
  3a:	8082                	ret

0000003c <.L4>:
  3c:	471d                	li	a4,7
  3e:	fea760e3          	bltu	a4,a0,1e <.L6>
  42:	5b98                	lw	a4,48(a5)

00000044 <.LVL86>:
  44:	08f096b7          	lui	a3,0x8f09
  48:	0ff68693          	addi	a3,a3,255 # 8f090ff <.LLST148+0x8f063bd>
  4c:	8f75                	and	a4,a4,a3

0000004e <.LVL87>:
  4e:	00f006b7          	lui	a3,0xf00

00000052 <.L8>:
  52:	8f55                	or	a4,a4,a3

00000054 <.LVL89>:
  54:	db98                	sw	a4,48(a5)
  56:	8082                	ret

00000058 <.L5>:
  58:	5b98                	lw	a4,48(a5)

0000005a <.LVL91>:
  5a:	2cf906b7          	lui	a3,0x2cf90
  5e:	8ff68693          	addi	a3,a3,-1793 # 2cf8f8ff <.LLST148+0x2cf8cbbd>
  62:	8f75                	and	a4,a4,a3

00000064 <.LVL92>:
  64:	24f876b7          	lui	a3,0x24f87

00000068 <.L9>:
  68:	80068693          	addi	a3,a3,-2048 # 24f86800 <.LLST148+0x24f83abe>
  6c:	b7dd                	j	52 <.L8>

0000006e <.L3>:
  6e:	5b98                	lw	a4,48(a5)

00000070 <.LVL94>:
  70:	cf0006b7          	lui	a3,0xcf000
  74:	8ff68693          	addi	a3,a3,-1793 # cefff8ff <.LLST148+0xceffcbbd>
  78:	8f75                	and	a4,a4,a3

0000007a <.LVL95>:
  7a:	c6ff76b7          	lui	a3,0xc6ff7
  7e:	b7ed                	j	68 <.L9>

Disassembly of section .text.rf_pri_save_state_for_cal:

00000000 <rf_pri_save_state_for_cal>:
   0:	400017b7          	lui	a5,0x40001
   4:	43d4                	lw	a3,4(a5)
   6:	00000737          	lui	a4,0x0
   a:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
   e:	47d4                	lw	a3,12(a5)
  10:	00000737          	lui	a4,0x0
  14:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  18:	4fd4                	lw	a3,28(a5)
  1a:	00000737          	lui	a4,0x0
  1e:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  22:	5b94                	lw	a3,48(a5)
  24:	00000737          	lui	a4,0x0
  28:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  2c:	0b87a683          	lw	a3,184(a5) # 400010b8 <.LLST148+0x3fffe376>
  30:	00000737          	lui	a4,0x0
  34:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  38:	0c07a683          	lw	a3,192(a5)
  3c:	00000737          	lui	a4,0x0
  40:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  44:	0c47a683          	lw	a3,196(a5)
  48:	00000737          	lui	a4,0x0
  4c:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  50:	0847a683          	lw	a3,132(a5)
  54:	00000737          	lui	a4,0x0
  58:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  5c:	08c7a683          	lw	a3,140(a5)
  60:	00000737          	lui	a4,0x0
  64:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  68:	6007a683          	lw	a3,1536(a5)
  6c:	00000737          	lui	a4,0x0
  70:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  74:	60c7a683          	lw	a3,1548(a5)
  78:	00000737          	lui	a4,0x0
  7c:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  80:	6187a683          	lw	a3,1560(a5)
  84:	00000737          	lui	a4,0x0
  88:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  8c:	61c7a683          	lw	a3,1564(a5)
  90:	00000737          	lui	a4,0x0
  94:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  98:	47b4                	lw	a3,72(a5)
  9a:	00000737          	lui	a4,0x0
  9e:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  a2:	20c7a683          	lw	a3,524(a5)
  a6:	00000737          	lui	a4,0x0
  aa:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  ae:	2147a683          	lw	a3,532(a5)
  b2:	00000737          	lui	a4,0x0
  b6:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  ba:	2187a683          	lw	a3,536(a5)
  be:	00000737          	lui	a4,0x0
  c2:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  c6:	23c7a683          	lw	a3,572(a5)
  ca:	00000737          	lui	a4,0x0
  ce:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  d2:	2407a683          	lw	a3,576(a5)
  d6:	00000737          	lui	a4,0x0
  da:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  de:	2447a683          	lw	a3,580(a5)
  e2:	00000737          	lui	a4,0x0
  e6:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  ea:	0f07a683          	lw	a3,240(a5)
  ee:	00000737          	lui	a4,0x0
  f2:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
  f6:	53f4                	lw	a3,100(a5)
  f8:	00000737          	lui	a4,0x0
  fc:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
 100:	4fb4                	lw	a3,88(a5)
 102:	00000737          	lui	a4,0x0
 106:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
 10a:	2207a683          	lw	a3,544(a5)
 10e:	00000737          	lui	a4,0x0
 112:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
 116:	5bb4                	lw	a3,112(a5)
 118:	00000737          	lui	a4,0x0
 11c:	00d72023          	sw	a3,0(a4) # 0 <rf_pri_save_state_for_cal>
 120:	0a47a703          	lw	a4,164(a5)
 124:	000007b7          	lui	a5,0x0
 128:	00e7a023          	sw	a4,0(a5) # 0 <rf_pri_save_state_for_cal>
 12c:	8082                	ret

Disassembly of section .text.rf_pri_restore_state_for_cal:

00000000 <rf_pri_restore_state_for_cal>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a703          	lw	a4,0(a5) # 0 <rf_pri_restore_state_for_cal>
   8:	400017b7          	lui	a5,0x40001
   c:	c3d8                	sw	a4,4(a5)
   e:	00000737          	lui	a4,0x0
  12:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  16:	c7d8                	sw	a4,12(a5)
  18:	00000737          	lui	a4,0x0
  1c:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  20:	cfd8                	sw	a4,28(a5)
  22:	00000737          	lui	a4,0x0
  26:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  2a:	db98                	sw	a4,48(a5)
  2c:	00000737          	lui	a4,0x0
  30:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  34:	0ae7ac23          	sw	a4,184(a5) # 400010b8 <.LLST148+0x3fffe376>
  38:	00000737          	lui	a4,0x0
  3c:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  40:	0ce7a023          	sw	a4,192(a5)
  44:	00000737          	lui	a4,0x0
  48:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  4c:	0ce7a223          	sw	a4,196(a5)
  50:	00000737          	lui	a4,0x0
  54:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  58:	08e7a223          	sw	a4,132(a5)
  5c:	00000737          	lui	a4,0x0
  60:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  64:	08e7a623          	sw	a4,140(a5)
  68:	00000737          	lui	a4,0x0
  6c:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  70:	60e7a023          	sw	a4,1536(a5)
  74:	00000737          	lui	a4,0x0
  78:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  7c:	60e7a623          	sw	a4,1548(a5)
  80:	00000737          	lui	a4,0x0
  84:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  88:	60e7ac23          	sw	a4,1560(a5)
  8c:	00000737          	lui	a4,0x0
  90:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  94:	60e7ae23          	sw	a4,1564(a5)
  98:	00000737          	lui	a4,0x0
  9c:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  a0:	c7b8                	sw	a4,72(a5)
  a2:	00000737          	lui	a4,0x0
  a6:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  aa:	20e7a623          	sw	a4,524(a5)
  ae:	00000737          	lui	a4,0x0
  b2:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  b6:	20e7aa23          	sw	a4,532(a5)
  ba:	00000737          	lui	a4,0x0
  be:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  c2:	20e7ac23          	sw	a4,536(a5)
  c6:	00000737          	lui	a4,0x0
  ca:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  ce:	22e7ae23          	sw	a4,572(a5)
  d2:	00000737          	lui	a4,0x0
  d6:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  da:	24e7a023          	sw	a4,576(a5)
  de:	00000737          	lui	a4,0x0
  e2:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  e6:	24e7a223          	sw	a4,580(a5)
  ea:	00000737          	lui	a4,0x0
  ee:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  f2:	0ee7a823          	sw	a4,240(a5)
  f6:	00000737          	lui	a4,0x0
  fa:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
  fe:	d3f8                	sw	a4,100(a5)
 100:	00000737          	lui	a4,0x0
 104:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
 108:	cfb8                	sw	a4,88(a5)
 10a:	00000737          	lui	a4,0x0
 10e:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
 112:	22e7a023          	sw	a4,544(a5)
 116:	00000737          	lui	a4,0x0
 11a:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
 11e:	dbb8                	sw	a4,112(a5)
 120:	00000737          	lui	a4,0x0
 124:	00072703          	lw	a4,0(a4) # 0 <rf_pri_restore_state_for_cal>
 128:	0ae7a223          	sw	a4,164(a5)
 12c:	8082                	ret

Disassembly of section .text.rf_pri_singen_start:

00000000 <rf_pri_singen_start>:
   0:	400017b7          	lui	a5,0x40001
   4:	20c7a683          	lw	a3,524(a5) # 4000120c <.LLST148+0x3fffe4ca>

00000008 <.LVL97>:
   8:	80000637          	lui	a2,0x80000
   c:	fff64713          	not	a4,a2
  10:	8ef9                	and	a3,a3,a4
  12:	20d7a623          	sw	a3,524(a5)
  16:	20c7a703          	lw	a4,524(a5)

0000001a <.LVL99>:
  1a:	8f51                	or	a4,a4,a2
  1c:	20e7a623          	sw	a4,524(a5)
  20:	8082                	ret

Disassembly of section .text.rf_pri_pm_pwr:

00000000 <rf_pri_pm_pwr>:
   0:	400017b7          	lui	a5,0x40001
   4:	6187a703          	lw	a4,1560(a5) # 40001618 <.LLST148+0x3fffe8d6>

00000008 <.LVL102>:
   8:	dff006b7          	lui	a3,0xdff00
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3

00000010 <.LVL103>:
  10:	60e7ac23          	sw	a4,1560(a5)
  14:	6187a703          	lw	a4,1560(a5)

00000018 <.LVL104>:
  18:	201006b7          	lui	a3,0x20100
  1c:	8f55                	or	a4,a4,a3

0000001e <.LVL105>:
  1e:	60e7ac23          	sw	a4,1560(a5)

00000022 <.L14>:
  22:	6187a703          	lw	a4,1560(a5)
  26:	61878613          	addi	a2,a5,1560
  2a:	00371693          	slli	a3,a4,0x3
  2e:	fe06dae3          	bgez	a3,22 <.L14>
  32:	6207a503          	lw	a0,1568(a5)

00000036 <.LVL107>:
  36:	6247a783          	lw	a5,1572(a5)
  3a:	4218                	lw	a4,0(a2)

0000003c <.LVL108>:
  3c:	051e                	slli	a0,a0,0x7

0000003e <.LVL109>:
  3e:	079e                	slli	a5,a5,0x7
  40:	8541                	srai	a0,a0,0x10

00000042 <.LVL110>:
  42:	87c1                	srai	a5,a5,0x10

00000044 <.LVL111>:
  44:	02f787b3          	mul	a5,a5,a5

00000048 <.LVL112>:
  48:	dff006b7          	lui	a3,0xdff00
  4c:	16fd                	addi	a3,a3,-1
  4e:	8f75                	and	a4,a4,a3

00000050 <.LVL113>:
  50:	c218                	sw	a4,0(a2)
  52:	02a50533          	mul	a0,a0,a0

00000056 <.LVL114>:
  56:	953e                	add	a0,a0,a5
  58:	8082                	ret

Disassembly of section .text.rf_pri_start_txdfe:

00000000 <rf_pri_start_txdfe>:
   0:	400017b7          	lui	a5,0x40001
   4:	2207a703          	lw	a4,544(a5) # 40001220 <.LLST148+0x3fffe4de>

00000008 <.LVL116>:
   8:	76f9                	lui	a3,0xffffe
   a:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <.LLST148+0xffffbabd>
   e:	e7f77713          	andi	a4,a4,-385

00000012 <.LVL117>:
  12:	22e7a023          	sw	a4,544(a5)
  16:	2207a703          	lw	a4,544(a5)

0000001a <.LVL118>:
  1a:	8f75                	and	a4,a4,a3

0000001c <.LVL119>:
  1c:	6685                	lui	a3,0x1
  1e:	08268693          	addi	a3,a3,130 # 1082 <.LASF173+0xd>
  22:	8f55                	or	a4,a4,a3

00000024 <.LVL120>:
  24:	22e7a023          	sw	a4,544(a5)
  28:	2207a703          	lw	a4,544(a5)
  2c:	10076713          	ori	a4,a4,256
  30:	22e7a023          	sw	a4,544(a5)
  34:	8082                	ret

Disassembly of section .text.rf_pri_pm_pwr_avg:

00000000 <rf_pri_pm_pwr_avg>:
   0:	400017b7          	lui	a5,0x40001
   4:	6187a703          	lw	a4,1560(a5) # 40001618 <.LLST148+0x3fffe8d6>

00000008 <.LVL124>:
   8:	dff006b7          	lui	a3,0xdff00
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3

00000010 <.LVL125>:
  10:	60e7ac23          	sw	a4,1560(a5)
  14:	61c7a703          	lw	a4,1564(a5)
  18:	05c2                	slli	a1,a1,0x10

0000001a <.LVL127>:
  1a:	200006b7          	lui	a3,0x20000
  1e:	0742                	slli	a4,a4,0x10

00000020 <.LVL128>:
  20:	8341                	srli	a4,a4,0x10
  22:	8dd9                	or	a1,a1,a4

00000024 <.LVL129>:
  24:	60b7ae23          	sw	a1,1564(a5)
  28:	6187a703          	lw	a4,1560(a5)

0000002c <.LVL130>:
  2c:	8f55                	or	a4,a4,a3
  2e:	60e7ac23          	sw	a4,1560(a5)

00000032 <.L19>:
  32:	6187a703          	lw	a4,1560(a5)
  36:	00371693          	slli	a3,a4,0x3
  3a:	fe06dce3          	bgez	a3,32 <.L19>
  3e:	c105                	beqz	a0,5e <.L20>
  40:	6207a503          	lw	a0,1568(a5)

00000044 <.L21>:
  44:	400016b7          	lui	a3,0x40001
  48:	6186a783          	lw	a5,1560(a3) # 40001618 <.LLST148+0x3fffe8d6>

0000004c <.LVL134>:
  4c:	dff00737          	lui	a4,0xdff00
  50:	177d                	addi	a4,a4,-1
  52:	8ff9                	and	a5,a5,a4
  54:	051e                	slli	a0,a0,0x7

00000056 <.LVL135>:
  56:	60f6ac23          	sw	a5,1560(a3)
  5a:	851d                	srai	a0,a0,0x7

0000005c <.LVL136>:
  5c:	8082                	ret

0000005e <.L20>:
  5e:	6247a503          	lw	a0,1572(a5)

00000062 <.LVL138>:
  62:	b7cd                	j	44 <.L21>

Disassembly of section .text.rf_pri_txcal_config_hw:

00000000 <rf_pri_txcal_config_hw>:
   0:	00000737          	lui	a4,0x0
   4:	00072583          	lw	a1,0(a4) # 0 <rf_pri_txcal_config_hw>
   8:	400017b7          	lui	a5,0x40001
   c:	1807a683          	lw	a3,384(a5) # 40001180 <.LLST148+0x3fffe43e>

00000010 <.LVL140>:
  10:	55b0                	lw	a2,104(a1)
  12:	78f1                	lui	a7,0xffffc
  14:	fc06f693          	andi	a3,a3,-64

00000018 <.LVL141>:
  18:	03f67613          	andi	a2,a2,63

0000001c <.LVL142>:
  1c:	0ff88893          	addi	a7,a7,255 # ffffc0ff <.LLST148+0xffff93bd>
  20:	8e55                	or	a2,a2,a3

00000022 <.LVL143>:
  22:	011676b3          	and	a3,a2,a7
  26:	55b0                	lw	a2,104(a1)
  28:	c1000537          	lui	a0,0xc1000
  2c:	157d                	addi	a0,a0,-1
  2e:	8219                	srli	a2,a2,0x6
  30:	03f67613          	andi	a2,a2,63

00000034 <.LVL144>:
  34:	0622                	slli	a2,a2,0x8

00000036 <.LVL145>:
  36:	8e55                	or	a2,a2,a3
  38:	ffc106b7          	lui	a3,0xffc10
  3c:	fff68813          	addi	a6,a3,-1 # ffc0ffff <.LLST148+0xffc0d2bd>
  40:	59b4                	lw	a3,112(a1)
  42:	01067633          	and	a2,a2,a6
  46:	03f6f693          	andi	a3,a3,63

0000004a <.LVL146>:
  4a:	06c2                	slli	a3,a3,0x10

0000004c <.LVL147>:
  4c:	8e55                	or	a2,a2,a3
  4e:	00a676b3          	and	a3,a2,a0
  52:	59b0                	lw	a2,112(a1)
  54:	8219                	srli	a2,a2,0x6
  56:	03f67613          	andi	a2,a2,63
  5a:	0662                	slli	a2,a2,0x18
  5c:	8e55                	or	a2,a2,a3

0000005e <.LVL148>:
  5e:	18c7a023          	sw	a2,384(a5)
  62:	00072583          	lw	a1,0(a4)
  66:	1847a683          	lw	a3,388(a5)

0000006a <.LVL149>:
  6a:	5db0                	lw	a2,120(a1)
  6c:	fc06f693          	andi	a3,a3,-64

00000070 <.LVL150>:
  70:	03f67613          	andi	a2,a2,63

00000074 <.LVL151>:
  74:	8e55                	or	a2,a2,a3

00000076 <.LVL152>:
  76:	011676b3          	and	a3,a2,a7
  7a:	5db0                	lw	a2,120(a1)
  7c:	8219                	srli	a2,a2,0x6
  7e:	03f67613          	andi	a2,a2,63

00000082 <.LVL153>:
  82:	0622                	slli	a2,a2,0x8

00000084 <.LVL154>:
  84:	8e55                	or	a2,a2,a3
  86:	0805a683          	lw	a3,128(a1)
  8a:	01067633          	and	a2,a2,a6
  8e:	03f6f693          	andi	a3,a3,63

00000092 <.LVL155>:
  92:	06c2                	slli	a3,a3,0x10

00000094 <.LVL156>:
  94:	8e55                	or	a2,a2,a3
  96:	00a676b3          	and	a3,a2,a0
  9a:	0805a603          	lw	a2,128(a1)
  9e:	8219                	srli	a2,a2,0x6
  a0:	03f67613          	andi	a2,a2,63
  a4:	0662                	slli	a2,a2,0x18
  a6:	8e55                	or	a2,a2,a3

000000a8 <.LVL157>:
  a8:	18c7a223          	sw	a2,388(a5)
  ac:	00072303          	lw	t1,0(a4)
  b0:	1887a683          	lw	a3,392(a5)

000000b4 <.LVL158>:
  b4:	08832603          	lw	a2,136(t1) # d0000088 <.LLST148+0xcfffd346>
  b8:	fc06f693          	andi	a3,a3,-64

000000bc <.LVL159>:
  bc:	03f67613          	andi	a2,a2,63

000000c0 <.LVL160>:
  c0:	8e55                	or	a2,a2,a3

000000c2 <.LVL161>:
  c2:	011676b3          	and	a3,a2,a7
  c6:	08832603          	lw	a2,136(t1)
  ca:	09032583          	lw	a1,144(t1)
  ce:	8219                	srli	a2,a2,0x6
  d0:	03f67613          	andi	a2,a2,63

000000d4 <.LVL162>:
  d4:	0622                	slli	a2,a2,0x8

000000d6 <.LVL163>:
  d6:	8e55                	or	a2,a2,a3
  d8:	03f5f593          	andi	a1,a1,63
  dc:	05c2                	slli	a1,a1,0x10
  de:	01067633          	and	a2,a2,a6
  e2:	8e4d                	or	a2,a2,a1
  e4:	09032583          	lw	a1,144(t1)
  e8:	8e69                	and	a2,a2,a0
  ea:	8199                	srli	a1,a1,0x6
  ec:	03f5f593          	andi	a1,a1,63
  f0:	05e2                	slli	a1,a1,0x18
  f2:	8dd1                	or	a1,a1,a2

000000f4 <.LVL164>:
  f4:	18b7a423          	sw	a1,392(a5)
  f8:	18c7a683          	lw	a3,396(a5)

000000fc <.LVL165>:
  fc:	00072583          	lw	a1,0(a4)
 100:	fc06f613          	andi	a2,a3,-64
 104:	0985a683          	lw	a3,152(a1)

00000108 <.LVL166>:
 108:	03f6f693          	andi	a3,a3,63

0000010c <.LVL167>:
 10c:	8ed1                	or	a3,a3,a2

0000010e <.LVL168>:
 10e:	0116f8b3          	and	a7,a3,a7
 112:	0985a683          	lw	a3,152(a1)
 116:	0a05a603          	lw	a2,160(a1)
 11a:	8299                	srli	a3,a3,0x6
 11c:	03f6f693          	andi	a3,a3,63

00000120 <.LVL169>:
 120:	06a2                	slli	a3,a3,0x8

00000122 <.LVL170>:
 122:	0116e6b3          	or	a3,a3,a7
 126:	03f67613          	andi	a2,a2,63
 12a:	0642                	slli	a2,a2,0x10
 12c:	0106f6b3          	and	a3,a3,a6
 130:	8ed1                	or	a3,a3,a2
 132:	00a6f633          	and	a2,a3,a0
 136:	0a05a683          	lw	a3,160(a1)
 13a:	8299                	srli	a3,a3,0x6
 13c:	03f6f693          	andi	a3,a3,63
 140:	06e2                	slli	a3,a3,0x18
 142:	8ed1                	or	a3,a3,a2

00000144 <.LVL171>:
 144:	18d7a623          	sw	a3,396(a5)
 148:	00072503          	lw	a0,0(a4)
 14c:	1907a683          	lw	a3,400(a5)
 150:	f8010637          	lui	a2,0xf8010
 154:	167d                	addi	a2,a2,-1
 156:	00c6f5b3          	and	a1,a3,a2
 15a:	5534                	lw	a3,104(a0)

0000015c <.LVL173>:
 15c:	82b1                	srli	a3,a3,0xc
 15e:	7ff6f693          	andi	a3,a3,2047

00000162 <.LVL174>:
 162:	06c2                	slli	a3,a3,0x10

00000164 <.LVL175>:
 164:	8ecd                	or	a3,a3,a1
 166:	556c                	lw	a1,108(a0)
 168:	c006f693          	andi	a3,a3,-1024
 16c:	3ff5f593          	andi	a1,a1,1023
 170:	8ecd                	or	a3,a3,a1

00000172 <.LVL176>:
 172:	18d7a823          	sw	a3,400(a5)
 176:	1947a683          	lw	a3,404(a5)
 17a:	00072503          	lw	a0,0(a4)
 17e:	00c6f5b3          	and	a1,a3,a2
 182:	5934                	lw	a3,112(a0)

00000184 <.LVL178>:
 184:	82b1                	srli	a3,a3,0xc
 186:	7ff6f693          	andi	a3,a3,2047

0000018a <.LVL179>:
 18a:	06c2                	slli	a3,a3,0x10

0000018c <.LVL180>:
 18c:	8ecd                	or	a3,a3,a1
 18e:	596c                	lw	a1,116(a0)
 190:	c006f693          	andi	a3,a3,-1024
 194:	3ff5f593          	andi	a1,a1,1023
 198:	8ecd                	or	a3,a3,a1

0000019a <.LVL181>:
 19a:	18d7aa23          	sw	a3,404(a5)
 19e:	1987a683          	lw	a3,408(a5)
 1a2:	00072503          	lw	a0,0(a4)
 1a6:	00c6f5b3          	and	a1,a3,a2
 1aa:	5d34                	lw	a3,120(a0)

000001ac <.LVL183>:
 1ac:	82b1                	srli	a3,a3,0xc
 1ae:	7ff6f693          	andi	a3,a3,2047

000001b2 <.LVL184>:
 1b2:	06c2                	slli	a3,a3,0x10

000001b4 <.LVL185>:
 1b4:	8ecd                	or	a3,a3,a1
 1b6:	5d6c                	lw	a1,124(a0)
 1b8:	c006f693          	andi	a3,a3,-1024
 1bc:	3ff5f593          	andi	a1,a1,1023
 1c0:	8ecd                	or	a3,a3,a1

000001c2 <.LVL186>:
 1c2:	18d7ac23          	sw	a3,408(a5)
 1c6:	19c7a683          	lw	a3,412(a5)
 1ca:	00072503          	lw	a0,0(a4)
 1ce:	00c6f5b3          	and	a1,a3,a2
 1d2:	08052683          	lw	a3,128(a0) # c1000080 <.LLST148+0xc0ffd33e>

000001d6 <.LVL188>:
 1d6:	82b1                	srli	a3,a3,0xc
 1d8:	7ff6f693          	andi	a3,a3,2047

000001dc <.LVL189>:
 1dc:	06c2                	slli	a3,a3,0x10

000001de <.LVL190>:
 1de:	8ecd                	or	a3,a3,a1
 1e0:	08452583          	lw	a1,132(a0)
 1e4:	c006f693          	andi	a3,a3,-1024
 1e8:	3ff5f593          	andi	a1,a1,1023
 1ec:	8ecd                	or	a3,a3,a1

000001ee <.LVL191>:
 1ee:	18d7ae23          	sw	a3,412(a5)
 1f2:	1a07a683          	lw	a3,416(a5)
 1f6:	00072503          	lw	a0,0(a4)
 1fa:	00c6f5b3          	and	a1,a3,a2
 1fe:	08852683          	lw	a3,136(a0)

00000202 <.LVL193>:
 202:	82b1                	srli	a3,a3,0xc
 204:	7ff6f693          	andi	a3,a3,2047

00000208 <.LVL194>:
 208:	06c2                	slli	a3,a3,0x10

0000020a <.LVL195>:
 20a:	8ecd                	or	a3,a3,a1
 20c:	08c52583          	lw	a1,140(a0)
 210:	c006f693          	andi	a3,a3,-1024
 214:	3ff5f593          	andi	a1,a1,1023
 218:	8ecd                	or	a3,a3,a1

0000021a <.LVL196>:
 21a:	1ad7a023          	sw	a3,416(a5)
 21e:	1a47a683          	lw	a3,420(a5)
 222:	00072503          	lw	a0,0(a4)
 226:	00c6f5b3          	and	a1,a3,a2
 22a:	09052683          	lw	a3,144(a0)

0000022e <.LVL198>:
 22e:	82b1                	srli	a3,a3,0xc
 230:	7ff6f693          	andi	a3,a3,2047

00000234 <.LVL199>:
 234:	06c2                	slli	a3,a3,0x10

00000236 <.LVL200>:
 236:	8ecd                	or	a3,a3,a1
 238:	09452583          	lw	a1,148(a0)
 23c:	c006f693          	andi	a3,a3,-1024
 240:	3ff5f593          	andi	a1,a1,1023
 244:	8ecd                	or	a3,a3,a1

00000246 <.LVL201>:
 246:	1ad7a223          	sw	a3,420(a5)
 24a:	1a87a683          	lw	a3,424(a5)
 24e:	00072503          	lw	a0,0(a4)
 252:	00c6f5b3          	and	a1,a3,a2
 256:	09852683          	lw	a3,152(a0)

0000025a <.LVL203>:
 25a:	82b1                	srli	a3,a3,0xc
 25c:	7ff6f693          	andi	a3,a3,2047

00000260 <.LVL204>:
 260:	06c2                	slli	a3,a3,0x10

00000262 <.LVL205>:
 262:	8ecd                	or	a3,a3,a1
 264:	09c52583          	lw	a1,156(a0)
 268:	c006f693          	andi	a3,a3,-1024
 26c:	3ff5f593          	andi	a1,a1,1023
 270:	8ecd                	or	a3,a3,a1

00000272 <.LVL206>:
 272:	1ad7a423          	sw	a3,424(a5)
 276:	1ac7a683          	lw	a3,428(a5)
 27a:	8e75                	and	a2,a2,a3
 27c:	00072683          	lw	a3,0(a4)

00000280 <.LVL208>:
 280:	0a06a703          	lw	a4,160(a3)
 284:	0a46a683          	lw	a3,164(a3)
 288:	8331                	srli	a4,a4,0xc
 28a:	7ff77713          	andi	a4,a4,2047

0000028e <.LVL209>:
 28e:	0742                	slli	a4,a4,0x10

00000290 <.LVL210>:
 290:	8f51                	or	a4,a4,a2
 292:	c0077713          	andi	a4,a4,-1024
 296:	3ff6f693          	andi	a3,a3,1023
 29a:	8f55                	or	a4,a4,a3

0000029c <.LVL211>:
 29c:	1ae7a623          	sw	a4,428(a5)
 2a0:	8082                	ret

Disassembly of section .text.rf_pri_fcal_meas:

00000000 <rf_pri_fcal_meas>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	40001437          	lui	s0,0x40001
   a:	0a042783          	lw	a5,160(s0) # 400010a0 <.LLST148+0x3fffe35e>

0000000e <.LVL213>:
   e:	f007f793          	andi	a5,a5,-256

00000012 <.LVL214>:
  12:	8d5d                	or	a0,a0,a5

00000014 <.LVL215>:
  14:	0aa42023          	sw	a0,160(s0)

00000018 <.LBB71>:
  18:	06400513          	li	a0,100

0000001c <.LVL217>:
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL217>

00000024 <.LBE71>:
  24:	0ac42783          	lw	a5,172(s0)

00000028 <.LVL219>:
  28:	0107e793          	ori	a5,a5,16
  2c:	0af42623          	sw	a5,172(s0)
  30:	400017b7          	lui	a5,0x40001

00000034 <.L26>:
  34:	0ac7a683          	lw	a3,172(a5) # 400010ac <.LLST148+0x3fffe36a>

00000038 <.LVL222>:
  38:	0ac78713          	addi	a4,a5,172
  3c:	00b69613          	slli	a2,a3,0xb
  40:	fe065ae3          	bgez	a2,34 <.L26>
  44:	0a87a503          	lw	a0,168(a5)

00000048 <.LVL223>:
  48:	0ac7a783          	lw	a5,172(a5)

0000004c <.LVL224>:
  4c:	8141                	srli	a0,a0,0x10

0000004e <.LVL225>:
  4e:	9bbd                	andi	a5,a5,-17
  50:	c31c                	sw	a5,0(a4)
  52:	40b2                	lw	ra,12(sp)
  54:	4422                	lw	s0,8(sp)
  56:	0141                	addi	sp,sp,16
  58:	8082                	ret

Disassembly of section .text.rf_pri_rccal_config.part.0:

00000000 <rf_pri_rccal_config.part.0>:
   0:	400016b7          	lui	a3,0x40001
   4:	0806a783          	lw	a5,128(a3) # 40001080 <.LLST148+0x3fffe33e>

00000008 <.LVL228>:
   8:	c1000737          	lui	a4,0xc1000
   c:	177d                	addi	a4,a4,-1
   e:	8f7d                	and	a4,a4,a5

00000010 <.LVL229>:
  10:	01851793          	slli	a5,a0,0x18
  14:	8fd9                	or	a5,a5,a4

00000016 <.LVL230>:
  16:	7771                	lui	a4,0xffffc
  18:	0ff70713          	addi	a4,a4,255 # ffffc0ff <.LLST148+0xffff93bd>
  1c:	8ff9                	and	a5,a5,a4

0000001e <.LVL231>:
  1e:	0522                	slli	a0,a0,0x8

00000020 <.LVL232>:
  20:	8d5d                	or	a0,a0,a5

00000022 <.LVL233>:
  22:	08a6a023          	sw	a0,128(a3)
  26:	8082                	ret

Disassembly of section .text.rf_pri_rccal_config:

00000000 <rf_pri_rccal_config>:
   0:	c511                	beqz	a0,c <.L32>
   2:	852e                	mv	a0,a1

00000004 <.LVL235>:
   4:	00000317          	auipc	t1,0x0
   8:	00030067          	jr	t1 # 4 <.LVL235>

0000000c <.L32>:
   c:	400016b7          	lui	a3,0x40001
  10:	0806a783          	lw	a5,128(a3) # 40001080 <.LLST148+0x3fffe33e>

00000014 <.LVL237>:
  14:	ffc10737          	lui	a4,0xffc10
  18:	177d                	addi	a4,a4,-1
  1a:	8f7d                	and	a4,a4,a5

0000001c <.LVL238>:
  1c:	01059793          	slli	a5,a1,0x10
  20:	8fd9                	or	a5,a5,a4

00000022 <.LVL239>:
  22:	fc07f793          	andi	a5,a5,-64

00000026 <.LVL240>:
  26:	8fcd                	or	a5,a5,a1

00000028 <.LVL241>:
  28:	08f6a023          	sw	a5,128(a3)
  2c:	8082                	ret

Disassembly of section .text.rf_pri_txcal_config:

00000000 <rf_pri_txcal_config>:
   0:	4789                	li	a5,2
   2:	02f51263          	bne	a0,a5,26 <.L34>
   6:	400016b7          	lui	a3,0x40001
   a:	6006a783          	lw	a5,1536(a3) # 40001600 <.LLST148+0x3fffe8be>

0000000e <.LVL243>:
   e:	ff801737          	lui	a4,0xff801
  12:	177d                	addi	a4,a4,-1
  14:	8ff9                	and	a5,a5,a4

00000016 <.LVL244>:
  16:	05b2                	slli	a1,a1,0xc

00000018 <.LVL245>:
  18:	8ddd                	or	a1,a1,a5

0000001a <.LVL246>:
  1a:	008007b7          	lui	a5,0x800
  1e:	8ddd                	or	a1,a1,a5
  20:	60b6a023          	sw	a1,1536(a3)
  24:	8082                	ret

00000026 <.L34>:
  26:	478d                	li	a5,3
  28:	02f51263          	bne	a0,a5,4c <.L36>
  2c:	0005d463          	bgez	a1,34 <.L37>
  30:	40058593          	addi	a1,a1,1024

00000034 <.L37>:
  34:	40001737          	lui	a4,0x40001
  38:	60072783          	lw	a5,1536(a4) # 40001600 <.LLST148+0x3fffe8be>

0000003c <.LVL250>:
  3c:	c007f793          	andi	a5,a5,-1024

00000040 <.LVL251>:
  40:	8ddd                	or	a1,a1,a5

00000042 <.LVL252>:
  42:	4005e593          	ori	a1,a1,1024
  46:	60b72023          	sw	a1,1536(a4)
  4a:	8082                	ret

0000004c <.L36>:
  4c:	ed01                	bnez	a0,64 <.L38>
  4e:	400016b7          	lui	a3,0x40001
  52:	5abc                	lw	a5,112(a3)

00000054 <.LVL255>:
  54:	c1000737          	lui	a4,0xc1000
  58:	177d                	addi	a4,a4,-1
  5a:	8ff9                	and	a5,a5,a4

0000005c <.LVL256>:
  5c:	05e2                	slli	a1,a1,0x18

0000005e <.L39>:
  5e:	8ddd                	or	a1,a1,a5

00000060 <.LVL258>:
  60:	daac                	sw	a1,112(a3)

00000062 <.L33>:
  62:	8082                	ret

00000064 <.L38>:
  64:	4785                	li	a5,1
  66:	fef51ee3          	bne	a0,a5,62 <.L33>

0000006a <.LBB78>:
  6a:	400016b7          	lui	a3,0x40001
  6e:	5abc                	lw	a5,112(a3)

00000070 <.LVL262>:
  70:	ffc10737          	lui	a4,0xffc10
  74:	177d                	addi	a4,a4,-1
  76:	8ff9                	and	a5,a5,a4

00000078 <.LVL263>:
  78:	05c2                	slli	a1,a1,0x10

0000007a <.LVL264>:
  7a:	b7d5                	j	5e <.L39>

Disassembly of section .text.rf_pri_txcal_search_core:

00000000 <rf_pri_txcal_search_core>:
   0:	715d                	addi	sp,sp,-80
   2:	c686                	sw	ra,76(sp)
   4:	c636                	sw	a3,12(sp)
   6:	c0ca                	sw	s2,64(sp)
   8:	de4e                	sw	s3,60(sp)
   a:	892e                	mv	s2,a1

0000000c <.LVL266>:
   c:	dc52                	sw	s4,56(sp)
   e:	da56                	sw	s5,52(sp)
  10:	d85a                	sw	s6,48(sp)
  12:	d65e                	sw	s7,44(sp)
  14:	d462                	sw	s8,40(sp)
  16:	d266                	sw	s9,36(sp)
  18:	d06a                	sw	s10,32(sp)
  1a:	ce6e                	sw	s11,28(sp)
  1c:	8d32                	mv	s10,a2

0000001e <.LVL267>:
  1e:	89aa                	mv	s3,a0
  20:	c4a2                	sw	s0,72(sp)
  22:	c2a6                	sw	s1,68(sp)
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL267+0x6>

0000002c <.LBB79>:
  2c:	4529                	li	a0,10
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LBB79+0x2>

00000036 <.LBE79>:
  36:	40001737          	lui	a4,0x40001
  3a:	61872783          	lw	a5,1560(a4) # 40001618 <.LLST148+0x3fffe8d6>

0000003e <.LVL270>:
  3e:	46b2                	lw	a3,12(sp)
  40:	fff00637          	lui	a2,0xfff00
  44:	8ff1                	and	a5,a5,a2

00000046 <.LVL271>:
  46:	06aa                	slli	a3,a3,0xa
  48:	8edd                	or	a3,a3,a5

0000004a <.LVL272>:
  4a:	60d72c23          	sw	a3,1560(a4)

0000004e <.LVL273>:
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL273>

00000056 <.LVL274>:
  56:	8daa                	mv	s11,a0

00000058 <.LVL275>:
  58:	4a05                	li	s4,1
  5a:	4a89                	li	s5,2
  5c:	e0000b13          	li	s6,-512
  60:	1ff00b93          	li	s7,511
  64:	7ff00c13          	li	s8,2047
  68:	03f00c93          	li	s9,63

0000006c <.L51>:
  6c:	41a90433          	sub	s0,s2,s10

00000070 <.LVL277>:
  70:	01a904b3          	add	s1,s2,s10

00000074 <.LVL278>:
  74:	093a6163          	bltu	s4,s3,f6 <.L41>
  78:	00045363          	bgez	s0,7e <.L42>
  7c:	4401                	li	s0,0

0000007e <.L42>:
  7e:	009cd463          	bge	s9,s1,86 <.L44>
  82:	03f00493          	li	s1,63

00000086 <.L44>:
  86:	85a2                	mv	a1,s0
  88:	854e                	mv	a0,s3
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L44+0x4>

00000092 <.LBB81>:
  92:	4529                	li	a0,10

00000094 <.LBE81>:
  94:	401d5d13          	srai	s10,s10,0x1

00000098 <.LBB84>:
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LBB84>

000000a0 <.LBE84>:
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LBE84>

000000a8 <.LVL284>:
  a8:	07b56a63          	bltu	a0,s11,11c <.L52>
  ac:	85a6                	mv	a1,s1
  ae:	854e                	mv	a0,s3

000000b0 <.LVL285>:
  b0:	00000097          	auipc	ra,0x0
  b4:	000080e7          	jalr	ra # b0 <.LVL285>

000000b8 <.LBB85>:
  b8:	4529                	li	a0,10
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.LBB85+0x2>

000000c2 <.LBE85>:
  c2:	00000097          	auipc	ra,0x0
  c6:	000080e7          	jalr	ra # c2 <.LBE85>

000000ca <.LVL288>:
  ca:	01b57463          	bgeu	a0,s11,d2 <.L50>
  ce:	8daa                	mv	s11,a0

000000d0 <.LVL289>:
  d0:	8926                	mv	s2,s1

000000d2 <.L50>:
  d2:	f80d1de3          	bnez	s10,6c <.L51>
  d6:	40b6                	lw	ra,76(sp)
  d8:	4426                	lw	s0,72(sp)

000000da <.LVL291>:
  da:	854a                	mv	a0,s2
  dc:	4496                	lw	s1,68(sp)

000000de <.LVL292>:
  de:	4906                	lw	s2,64(sp)

000000e0 <.LVL293>:
  e0:	59f2                	lw	s3,60(sp)

000000e2 <.LVL294>:
  e2:	5a62                	lw	s4,56(sp)
  e4:	5ad2                	lw	s5,52(sp)
  e6:	5b42                	lw	s6,48(sp)
  e8:	5bb2                	lw	s7,44(sp)
  ea:	5c22                	lw	s8,40(sp)
  ec:	5c92                	lw	s9,36(sp)
  ee:	5d02                	lw	s10,32(sp)

000000f0 <.LVL295>:
  f0:	4df2                	lw	s11,28(sp)

000000f2 <.LVL296>:
  f2:	6161                	addi	sp,sp,80
  f4:	8082                	ret

000000f6 <.L41>:
  f6:	01599a63          	bne	s3,s5,10a <.L45>
  fa:	00045363          	bgez	s0,100 <.L46>
  fe:	4401                	li	s0,0

00000100 <.L46>:
 100:	f89c53e3          	bge	s8,s1,86 <.L44>
 104:	7ff00493          	li	s1,2047

00000108 <.LVL299>:
 108:	bfbd                	j	86 <.L44>

0000010a <.L45>:
 10a:	01645463          	bge	s0,s6,112 <.L48>
 10e:	e0000413          	li	s0,-512

00000112 <.L48>:
 112:	f69bdae3          	bge	s7,s1,86 <.L44>
 116:	1ff00493          	li	s1,511

0000011a <.LVL302>:
 11a:	b7b5                	j	86 <.L44>

0000011c <.L52>:
 11c:	8daa                	mv	s11,a0

0000011e <.LVL304>:
 11e:	8922                	mv	s2,s0

00000120 <.LVL305>:
 120:	bf4d                	j	d2 <.L50>

Disassembly of section .text.rf_pri_singen_config.constprop.8:

00000000 <rf_pri_singen_config.constprop.8>:
   0:	400017b7          	lui	a5,0x40001
   4:	20c7a703          	lw	a4,524(a5) # 4000120c <.LLST148+0x3fffe4ca>

00000008 <.LVL307>:
   8:	fc0106b7          	lui	a3,0xfc010
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3

00000010 <.LVL308>:
  10:	0542                	slli	a0,a0,0x10

00000012 <.LVL309>:
  12:	8d59                	or	a0,a0,a4

00000014 <.LVL310>:
  14:	20a7a623          	sw	a0,524(a5)
  18:	2147a603          	lw	a2,532(a5)

0000001c <.LVL311>:
  1c:	00400737          	lui	a4,0x400
  20:	fff70693          	addi	a3,a4,-1 # 3fffff <.LLST148+0x3fd2bd>
  24:	00d67733          	and	a4,a2,a3

00000028 <.LVL312>:
  28:	20e7aa23          	sw	a4,532(a5)
  2c:	2187a703          	lw	a4,536(a5)
  30:	8f75                	and	a4,a4,a3

00000032 <.LVL314>:
  32:	c00006b7          	lui	a3,0xc0000
  36:	8f55                	or	a4,a4,a3

00000038 <.LVL315>:
  38:	20e7ac23          	sw	a4,536(a5)
  3c:	8082                	ret

Disassembly of section .text.rf_pri_rccal_iq:

00000000 <rf_pri_rccal_iq>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	c05a                	sw	s6,0(sp)
  12:	400017b7          	lui	a5,0x40001
  16:	60c7a703          	lw	a4,1548(a5) # 4000160c <.LLST148+0x3fffe8ca>

0000001a <.LVL317>:
  1a:	892a                	mv	s2,a0
  1c:	14050f63          	beqz	a0,17a <.L57>

00000020 <.LVL318>:
  20:	bff77713          	andi	a4,a4,-1025
  24:	60e7a623          	sw	a4,1548(a5)
  28:	60c7a703          	lw	a4,1548(a5)
  2c:	040006b7          	lui	a3,0x4000
  30:	8f55                	or	a4,a4,a3

00000032 <.L70>:
  32:	40001437          	lui	s0,0x40001
  36:	60e7a623          	sw	a4,1548(a5)
  3a:	443c                	lw	a5,72(s0)

0000003c <.LVL322>:
  3c:	7765                	lui	a4,0xffff9
  3e:	cff70493          	addi	s1,a4,-769 # ffff8cff <.LLST148+0xffff5fbd>
  42:	670d                	lui	a4,0x3
  44:	10070713          	addi	a4,a4,256 # 3100 <.LLST148+0x3be>
  48:	8fe5                	and	a5,a5,s1

0000004a <.LVL323>:
  4a:	8fd9                	or	a5,a5,a4

0000004c <.LVL324>:
  4c:	450d                	li	a0,3

0000004e <.LVL325>:
  4e:	c43c                	sw	a5,72(s0)
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL325+0x2>

00000058 <.LBB89>:
  58:	21442783          	lw	a5,532(s0) # 40001214 <.LLST148+0x3fffe4d2>

0000005c <.LBE89>:
  5c:	fff00a37          	lui	s4,0xfff00

00000060 <.LBB92>:
  60:	8007f793          	andi	a5,a5,-2048

00000064 <.LVL328>:
  64:	3ff7e793          	ori	a5,a5,1023

00000068 <.LVL329>:
  68:	20f42a23          	sw	a5,532(s0)
  6c:	21842783          	lw	a5,536(s0)
  70:	8007f793          	andi	a5,a5,-2048

00000074 <.LVL331>:
  74:	3ff7e793          	ori	a5,a5,1023

00000078 <.LVL332>:
  78:	20f42c23          	sw	a5,536(s0)

0000007c <.LBE92>:
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LBE92>

00000084 <.LVL334>:
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL334>

0000008c <.LVL335>:
  8c:	61842683          	lw	a3,1560(s0)

00000090 <.LVL336>:
  90:	6705                	lui	a4,0x1
  92:	c0070713          	addi	a4,a4,-1024 # c00 <.LASF140+0x2>
  96:	0146f6b3          	and	a3,a3,s4

0000009a <.LVL337>:
  9a:	8ed9                	or	a3,a3,a4

0000009c <.LVL338>:
  9c:	60d42c23          	sw	a3,1560(s0)
  a0:	40000593          	li	a1,1024
  a4:	854a                	mv	a0,s2
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LVL338+0xa>

000000ae <.LVL339>:
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.LVL339>

000000b6 <.LVL340>:
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LVL340>
  be:	000007b7          	lui	a5,0x0
  c2:	0047a683          	lw	a3,4(a5) # 4 <rf_pri_rccal_iq+0x4>
  c6:	0007a603          	lw	a2,0(a5)
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.LVL340+0x14>
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL340+0x1c>
  da:	4438                	lw	a4,72(s0)
  dc:	6699                	lui	a3,0x6
  de:	20068693          	addi	a3,a3,512 # 6200 <.LLST148+0x34be>
  e2:	8f65                	and	a4,a4,s1
  e4:	8f55                	or	a4,a4,a3
  e6:	c438                	sw	a4,72(s0)
  e8:	89aa                	mv	s3,a0

000000ea <.LVL344>:
  ea:	0b500513          	li	a0,181

000000ee <.LVL345>:
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.LVL345>

000000f6 <.LVL346>:
  f6:	00000097          	auipc	ra,0x0
  fa:	000080e7          	jalr	ra # f6 <.LVL346>

000000fe <.LVL347>:
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LVL347>

00000106 <.LVL348>:
 106:	61842783          	lw	a5,1560(s0)

0000010a <.LVL349>:
 10a:	0002d737          	lui	a4,0x2d
 10e:	40070713          	addi	a4,a4,1024 # 2d400 <.LLST148+0x2a6be>
 112:	0147f7b3          	and	a5,a5,s4

00000116 <.LVL350>:
 116:	8fd9                	or	a5,a5,a4

00000118 <.LVL351>:
 118:	60f42c23          	sw	a5,1560(s0)
 11c:	4481                	li	s1,0
 11e:	4419                	li	s0,6
 120:	02000a13          	li	s4,32

00000124 <.L60>:
 124:	009a0ab3          	add	s5,s4,s1

00000128 <.LVL353>:
 128:	85d6                	mv	a1,s5
 12a:	854a                	mv	a0,s2
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.LVL353+0x4>

00000134 <.LVL354>:
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL354>

0000013c <.LVL355>:
 13c:	00a9f363          	bgeu	s3,a0,142 <.L59>
 140:	84d6                	mv	s1,s5

00000142 <.L59>:
 142:	147d                	addi	s0,s0,-1

00000144 <.LVL357>:
 144:	001a5a13          	srli	s4,s4,0x1

00000148 <.LVL358>:
 148:	fc71                	bnez	s0,124 <.L60>
 14a:	03f00a13          	li	s4,63

0000014e <.LVL359>:
 14e:	4aa9                	li	s5,10
 150:	4b15                	li	s6,5

00000152 <.L64>:
 152:	85a6                	mv	a1,s1
 154:	854a                	mv	a0,s2

00000156 <.LVL361>:
 156:	00000097          	auipc	ra,0x0
 15a:	000080e7          	jalr	ra # 156 <.LVL361>

0000015e <.LVL362>:
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL362>

00000166 <.LVL363>:
 166:	0406                	slli	s0,s0,0x1

00000168 <.LVL364>:
 168:	02a9f463          	bgeu	s3,a0,190 <.L61>
 16c:	0405                	addi	s0,s0,1
 16e:	883d                	andi	s0,s0,15
 170:	0485                	addi	s1,s1,1

00000172 <.LVL365>:
 172:	03641363          	bne	s0,s6,198 <.L63>

00000176 <.L66>:
 176:	450d                	li	a0,3

00000178 <.LVL366>:
 178:	a025                	j	1a0 <.L56>

0000017a <.L57>:
 17a:	40076713          	ori	a4,a4,1024
 17e:	60e7a623          	sw	a4,1548(a5)
 182:	60c7a703          	lw	a4,1548(a5)
 186:	fc0006b7          	lui	a3,0xfc000
 18a:	16fd                	addi	a3,a3,-1
 18c:	8f75                	and	a4,a4,a3

0000018e <.LVL370>:
 18e:	b555                	j	32 <.L70>

00000190 <.L61>:
 190:	883d                	andi	s0,s0,15
 192:	14fd                	addi	s1,s1,-1

00000194 <.LVL372>:
 194:	ff5401e3          	beq	s0,s5,176 <.L66>

00000198 <.L63>:
 198:	1a7d                	addi	s4,s4,-1

0000019a <.LVL374>:
 19a:	fa0a1ce3          	bnez	s4,152 <.L64>
 19e:	4509                	li	a0,2

000001a0 <.L56>:
 1a0:	40f2                	lw	ra,28(sp)
 1a2:	4462                	lw	s0,24(sp)

000001a4 <.LVL376>:
 1a4:	44d2                	lw	s1,20(sp)

000001a6 <.LVL377>:
 1a6:	4942                	lw	s2,16(sp)

000001a8 <.LVL378>:
 1a8:	49b2                	lw	s3,12(sp)

000001aa <.LVL379>:
 1aa:	4a22                	lw	s4,8(sp)
 1ac:	4a92                	lw	s5,4(sp)
 1ae:	4b02                	lw	s6,0(sp)
 1b0:	6105                	addi	sp,sp,32
 1b2:	8082                	ret

Disassembly of section .text.rf_pri_config_channel.constprop.9:

00000000 <rf_pri_config_channel.constprop.9>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	000004b7          	lui	s1,0x0
   8:	0004a603          	lw	a2,0(s1) # 0 <rf_pri_config_channel.constprop.9>
   c:	d422                	sw	s0,40(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	cc52                	sw	s4,24(sp)
  14:	ca56                	sw	s5,20(sp)
  16:	c85a                	sw	s6,16(sp)
  18:	c65e                	sw	s7,12(sp)
  1a:	d606                	sw	ra,44(sp)
  1c:	40001737          	lui	a4,0x40001
  20:	0a072683          	lw	a3,160(a4) # 400010a0 <.LLST148+0x3fffe35e>

00000024 <.LVL381>:
  24:	02e65783          	lhu	a5,46(a2) # fff0002e <.LLST148+0xffefd2ec>
  28:	7941                	lui	s2,0xffff0
  2a:	f006f693          	andi	a3,a3,-256

0000002e <.LVL382>:
  2e:	0ff7f793          	andi	a5,a5,255

00000032 <.LVL383>:
  32:	8fd5                	or	a5,a5,a3

00000034 <.LVL384>:
  34:	ffe106b7          	lui	a3,0xffe10
  38:	16fd                	addi	a3,a3,-1
  3a:	8efd                	and	a3,a3,a5
  3c:	02e65783          	lhu	a5,46(a2)
  40:	f00009b7          	lui	s3,0xf0000
  44:	40001437          	lui	s0,0x40001
  48:	83a1                	srli	a5,a5,0x8
  4a:	8bfd                	andi	a5,a5,31
  4c:	07c2                	slli	a5,a5,0x10
  4e:	8fd5                	or	a5,a5,a3

00000050 <.LVL385>:
  50:	0af72023          	sw	a5,160(a4)
  54:	0bc72783          	lw	a5,188(a4)
  58:	ff1006b7          	lui	a3,0xff100
  5c:	16fd                	addi	a3,a3,-1
  5e:	8efd                	and	a3,a3,a5
  60:	0004a783          	lw	a5,0(s1)

00000064 <.LVL387>:
  64:	6ac1                	lui	s5,0x10
  66:	197d                	addi	s2,s2,-1
  68:	02e7d783          	lhu	a5,46(a5)
  6c:	10000b37          	lui	s6,0x10000
  70:	19fd                	addi	s3,s3,-1
  72:	0ff7f793          	andi	a5,a5,255
  76:	8391                	srli	a5,a5,0x4
  78:	07d2                	slli	a5,a5,0x14
  7a:	8fd5                	or	a5,a5,a3

0000007c <.LVL388>:
  7c:	0af72e23          	sw	a5,188(a4)
  80:	0c472783          	lw	a5,196(a4)
  84:	c00006b7          	lui	a3,0xc0000
  88:	01100bb7          	lui	s7,0x1100
  8c:	8ff5                	and	a5,a5,a3

0000008e <.LVL390>:
  8e:	000006b7          	lui	a3,0x0
  92:	0246a683          	lw	a3,36(a3) # 24 <.LVL381>
  96:	00000a37          	lui	s4,0x0
  9a:	8fd5                	or	a5,a5,a3

0000009c <.LVL391>:
  9c:	0cf72223          	sw	a5,196(a4)
  a0:	0c072783          	lw	a5,192(a4)
  a4:	76fd                	lui	a3,0xfffff
  a6:	16fd                	addi	a3,a3,-1
  a8:	8ff5                	and	a5,a5,a3
  aa:	0cf72023          	sw	a5,192(a4)

000000ae <.L73>:
  ae:	0b842783          	lw	a5,184(s0) # 400010b8 <.LLST148+0x3fffe376>

000000b2 <.LBB93>:
  b2:	4529                	li	a0,10

000000b4 <.LBE93>:
  b4:	0157e7b3          	or	a5,a5,s5
  b8:	0af42c23          	sw	a5,184(s0)

000000bc <.LBB96>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LBB96>

000000c4 <.LBE96>:
  c4:	0b842783          	lw	a5,184(s0)

000000c8 <.LBB97>:
  c8:	03200513          	li	a0,50

000000cc <.LBE97>:
  cc:	0127f7b3          	and	a5,a5,s2
  d0:	0af42c23          	sw	a5,184(s0)

000000d4 <.LBB100>:
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.LBB100>

000000dc <.LBE100>:
  dc:	0b042783          	lw	a5,176(s0)

000000e0 <.LBB101>:
  e0:	4529                	li	a0,10

000000e2 <.LBE101>:
  e2:	0167e7b3          	or	a5,a5,s6
  e6:	0af42823          	sw	a5,176(s0)

000000ea <.LBB104>:
  ea:	00000097          	auipc	ra,0x0
  ee:	000080e7          	jalr	ra # ea <.LBB104>

000000f2 <.LBE104>:
  f2:	0b042783          	lw	a5,176(s0)

000000f6 <.LBB105>:
  f6:	03200513          	li	a0,50

000000fa <.LBE105>:
  fa:	0137f7b3          	and	a5,a5,s3
  fe:	0af42823          	sw	a5,176(s0)

00000102 <.LBB108>:
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LBB108>

0000010a <.LBE108>:
 10a:	0b442783          	lw	a5,180(s0)

0000010e <.LVL411>:
 10e:	0177f7b3          	and	a5,a5,s7

00000112 <.LVL412>:
 112:	cb81                	beqz	a5,122 <.L72>
 114:	000a0513          	mv	a0,s4
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.LVL412+0x6>

00000120 <.LVL413>:
 120:	b779                	j	ae <.L73>

00000122 <.L72>:
 122:	0004a783          	lw	a5,0(s1)
 126:	5422                	lw	s0,40(sp)
 128:	50b2                	lw	ra,44(sp)
 12a:	02e7d603          	lhu	a2,46(a5)
 12e:	5492                	lw	s1,36(sp)
 130:	5902                	lw	s2,32(sp)
 132:	49f2                	lw	s3,28(sp)
 134:	4a62                	lw	s4,24(sp)
 136:	4ad2                	lw	s5,20(sp)
 138:	4b42                	lw	s6,16(sp)
 13a:	4bb2                	lw	s7,12(sp)
 13c:	00000537          	lui	a0,0x0
 140:	0ff67613          	andi	a2,a2,255
 144:	45a5                	li	a1,9
 146:	00050513          	mv	a0,a0
 14a:	6145                	addi	sp,sp,48
 14c:	00000317          	auipc	t1,0x0
 150:	00030067          	jr	t1 # 14c <.L72+0x2a>

Disassembly of section .text.rf_pri_roscal_iq.isra.3:

00000000 <rf_pri_roscal_iq.isra.3>:
   0:	7179                	addi	sp,sp,-48
   2:	ca56                	sw	s5,20(sp)

00000004 <.LBB117>:
   4:	7af1                	lui	s5,0xffffc

00000006 <.LBE117>:
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	d606                	sw	ra,44(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	c65e                	sw	s7,12(sp)
  16:	89aa                	mv	s3,a0
  18:	4419                	li	s0,6
  1a:	4901                	li	s2,0
  1c:	02000a13          	li	s4,32
  20:	400014b7          	lui	s1,0x40001

00000024 <.LBB124>:
  24:	0ffa8a93          	addi	s5,s5,255 # ffffc0ff <.LLST148+0xffff93bd>

00000028 <.L79>:
  28:	5cfc                	lw	a5,124(s1)

0000002a <.LBE125>:
  2a:	012a0b33          	add	s6,s4,s2

0000002e <.LBB133>:
  2e:	08098363          	beqz	s3,b4 <.L76>

00000032 <.LBB126>:
  32:	0157f733          	and	a4,a5,s5
  36:	008b1793          	slli	a5,s6,0x8

0000003a <.LVL419>:
  3a:	8fd9                	or	a5,a5,a4

0000003c <.L89>:
  3c:	dcfc                	sw	a5,124(s1)

0000003e <.LBE133>:
  3e:	40000593          	li	a1,1024
  42:	854e                	mv	a0,s3
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LBE133+0x6>

0000004c <.LVL422>:
  4c:	00a04363          	bgtz	a0,52 <.L78>
  50:	895a                	mv	s2,s6

00000052 <.L78>:
  52:	147d                	addi	s0,s0,-1

00000054 <.LVL424>:
  54:	001a5a13          	srli	s4,s4,0x1

00000058 <.LVL425>:
  58:	f861                	bnez	s0,28 <.L79>

0000005a <.LBB134>:
  5a:	7af1                	lui	s5,0xffffc

0000005c <.LBE134>:
  5c:	03f00a13          	li	s4,63

00000060 <.LVL426>:
  60:	400014b7          	lui	s1,0x40001

00000064 <.LBB141>:
  64:	0ffa8a93          	addi	s5,s5,255 # ffffc0ff <.LLST148+0xffff93bd>

00000068 <.LBE141>:
  68:	4b29                	li	s6,10
  6a:	4b95                	li	s7,5

0000006c <.L85>:
  6c:	5cfc                	lw	a5,124(s1)

0000006e <.LBE142>:
  6e:	04098863          	beqz	s3,be <.L80>

00000072 <.LBB143>:
  72:	0157f733          	and	a4,a5,s5
  76:	00891793          	slli	a5,s2,0x8

0000007a <.LVL429>:
  7a:	8fd9                	or	a5,a5,a4

0000007c <.L90>:
  7c:	dcfc                	sw	a5,124(s1)

0000007e <.LBE148>:
  7e:	40000593          	li	a1,1024
  82:	854e                	mv	a0,s3

00000084 <.LVL432>:
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL432>

0000008c <.LVL433>:
  8c:	0406                	slli	s0,s0,0x1

0000008e <.LVL434>:
  8e:	02a05d63          	blez	a0,c8 <.L82>
  92:	0405                	addi	s0,s0,1
  94:	883d                	andi	s0,s0,15
  96:	197d                	addi	s2,s2,-1

00000098 <.LVL435>:
  98:	03741c63          	bne	s0,s7,d0 <.L84>

0000009c <.L75>:
  9c:	50b2                	lw	ra,44(sp)
  9e:	5422                	lw	s0,40(sp)

000000a0 <.LVL437>:
  a0:	854a                	mv	a0,s2

000000a2 <.LVL438>:
  a2:	5492                	lw	s1,36(sp)
  a4:	5902                	lw	s2,32(sp)

000000a6 <.LVL439>:
  a6:	49f2                	lw	s3,28(sp)

000000a8 <.LVL440>:
  a8:	4a62                	lw	s4,24(sp)
  aa:	4ad2                	lw	s5,20(sp)
  ac:	4b42                	lw	s6,16(sp)
  ae:	4bb2                	lw	s7,12(sp)
  b0:	6145                	addi	sp,sp,48
  b2:	8082                	ret

000000b4 <.L76>:
  b4:	fc07f793          	andi	a5,a5,-64

000000b8 <.LVL442>:
  b8:	00fb67b3          	or	a5,s6,a5
  bc:	b741                	j	3c <.L89>

000000be <.L80>:
  be:	fc07f793          	andi	a5,a5,-64

000000c2 <.LVL444>:
  c2:	0127e7b3          	or	a5,a5,s2
  c6:	bf5d                	j	7c <.L90>

000000c8 <.L82>:
  c8:	883d                	andi	s0,s0,15
  ca:	0905                	addi	s2,s2,1

000000cc <.LVL446>:
  cc:	fd6408e3          	beq	s0,s6,9c <.L75>

000000d0 <.L84>:
  d0:	1a7d                	addi	s4,s4,-1

000000d2 <.LVL448>:
  d2:	f80a1de3          	bnez	s4,6c <.L85>
  d6:	b7d9                	j	9c <.L75>

Disassembly of section .text.rf_pri_chipv:

00000000 <rf_pri_chipv>:
   0:	e975                	bnez	a0,f4 <.L92>
   2:	000007b7          	lui	a5,0x0
   6:	00060737          	lui	a4,0x60
   a:	00078793          	mv	a5,a5
   e:	070d                	addi	a4,a4,3
  10:	c398                	sw	a4,0(a5)
  12:	000006b7          	lui	a3,0x0
  16:	4719                	li	a4,6
  18:	00000637          	lui	a2,0x0
  1c:	000005b7          	lui	a1,0x0
  20:	00e79223          	sh	a4,4(a5) # 4 <rf_pri_chipv+0x4>

00000024 <.LVL450>:
  24:	00068693          	mv	a3,a3
  28:	4771                	li	a4,28
  2a:	00060613          	mv	a2,a2
  2e:	00058593          	mv	a1,a1
  32:	1dc00813          	li	a6,476

00000036 <.L93>:
  36:	fe470793          	addi	a5,a4,-28 # 5ffe4 <.LLST148+0x5d2a2>

0000003a <.L94>:
  3a:	00f68533          	add	a0,a3,a5
  3e:	4108                	lw	a0,0(a0)
  40:	00f608b3          	add	a7,a2,a5
  44:	00a8a023          	sw	a0,0(a7)
  48:	00f588b3          	add	a7,a1,a5
  4c:	00a8a023          	sw	a0,0(a7)
  50:	0791                	addi	a5,a5,4
  52:	fef714e3          	bne	a4,a5,3a <.L94>
  56:	0771                	addi	a4,a4,28
  58:	fd071fe3          	bne	a4,a6,36 <.L93>
  5c:	000006b7          	lui	a3,0x0
  60:	00000737          	lui	a4,0x0
  64:	4781                	li	a5,0
  66:	00068693          	mv	a3,a3
  6a:	00070713          	mv	a4,a4
  6e:	03800613          	li	a2,56

00000072 <.L95>:
  72:	00f70533          	add	a0,a4,a5
  76:	4108                	lw	a0,0(a0)
  78:	00f685b3          	add	a1,a3,a5
  7c:	0791                	addi	a5,a5,4
  7e:	c188                	sw	a0,0(a1)
  80:	fec799e3          	bne	a5,a2,72 <.L95>
  84:	000007b7          	lui	a5,0x0
  88:	00078793          	mv	a5,a5
  8c:	00000737          	lui	a4,0x0
  90:	00070713          	mv	a4,a4
  94:	08078693          	addi	a3,a5,128 # 80 <.L95+0xe>

00000098 <.L96>:
  98:	4390                	lw	a2,0(a5)
  9a:	07c1                	addi	a5,a5,16
  9c:	0741                	addi	a4,a4,16
  9e:	fec72823          	sw	a2,-16(a4) # fffffff0 <.LLST148+0xffffd2ae>

000000a2 <.LVL454>:
  a2:	ff47a603          	lw	a2,-12(a5)
  a6:	fec72a23          	sw	a2,-12(a4)

000000aa <.LVL455>:
  aa:	ff87a603          	lw	a2,-8(a5)
  ae:	fec72c23          	sw	a2,-8(a4)

000000b2 <.LVL456>:
  b2:	ffc7a603          	lw	a2,-4(a5)
  b6:	fec72e23          	sw	a2,-4(a4)

000000ba <.LVL457>:
  ba:	fcf69fe3          	bne	a3,a5,98 <.L96>
  be:	000007b7          	lui	a5,0x0
  c2:	00078793          	mv	a5,a5
  c6:	4398                	lw	a4,0(a5)
  c8:	46a9                	li	a3,10
  ca:	c314                	sw	a3,0(a4)
  cc:	439c                	lw	a5,0(a5)
  ce:	470d                	li	a4,3
  d0:	c3d8                	sw	a4,4(a5)
  d2:	c794                	sw	a3,8(a5)
  d4:	c7d8                	sw	a4,12(a5)
  d6:	cb94                	sw	a3,16(a5)
  d8:	cbd8                	sw	a4,20(a5)
  da:	cf94                	sw	a3,24(a5)
  dc:	cfd8                	sw	a4,28(a5)
  de:	0207a023          	sw	zero,32(a5) # 20 <rf_pri_chipv+0x20>
  e2:	0207a223          	sw	zero,36(a5)
  e6:	0207a223          	sw	zero,36(a5)
  ea:	0207a623          	sw	zero,44(a5)
  ee:	0207a823          	sw	zero,48(a5)
  f2:	8082                	ret

000000f4 <.L92>:
  f4:	4785                	li	a5,1
  f6:	0ef51863          	bne	a0,a5,1e6 <.L91>
  fa:	000007b7          	lui	a5,0x0
  fe:	00050737          	lui	a4,0x50
 102:	00078793          	mv	a5,a5
 106:	0715                	addi	a4,a4,5
 108:	c398                	sw	a4,0(a5)
 10a:	000006b7          	lui	a3,0x0
 10e:	4715                	li	a4,5
 110:	00000637          	lui	a2,0x0
 114:	000005b7          	lui	a1,0x0
 118:	00e79223          	sh	a4,4(a5) # 4 <rf_pri_chipv+0x4>

0000011c <.LVL459>:
 11c:	00068693          	mv	a3,a3
 120:	4771                	li	a4,28
 122:	00060613          	mv	a2,a2
 126:	00058593          	mv	a1,a1
 12a:	1dc00813          	li	a6,476

0000012e <.L98>:
 12e:	fe470793          	addi	a5,a4,-28 # 4ffe4 <.LLST148+0x4d2a2>

00000132 <.L99>:
 132:	00f68533          	add	a0,a3,a5
 136:	4108                	lw	a0,0(a0)
 138:	00f608b3          	add	a7,a2,a5
 13c:	00a8a023          	sw	a0,0(a7)
 140:	00f588b3          	add	a7,a1,a5
 144:	00a8a023          	sw	a0,0(a7)
 148:	0791                	addi	a5,a5,4
 14a:	fee794e3          	bne	a5,a4,132 <.L99>
 14e:	01c78713          	addi	a4,a5,28
 152:	fd071ee3          	bne	a4,a6,12e <.L98>
 156:	000006b7          	lui	a3,0x0
 15a:	00000737          	lui	a4,0x0
 15e:	4781                	li	a5,0
 160:	00068693          	mv	a3,a3
 164:	00070713          	mv	a4,a4
 168:	03800613          	li	a2,56

0000016c <.L100>:
 16c:	00f70533          	add	a0,a4,a5
 170:	4108                	lw	a0,0(a0)
 172:	00f685b3          	add	a1,a3,a5
 176:	0791                	addi	a5,a5,4
 178:	c188                	sw	a0,0(a1)
 17a:	fec799e3          	bne	a5,a2,16c <.L100>
 17e:	000007b7          	lui	a5,0x0
 182:	00078793          	mv	a5,a5
 186:	00000737          	lui	a4,0x0
 18a:	00070713          	mv	a4,a4
 18e:	08078693          	addi	a3,a5,128 # 80 <.L95+0xe>

00000192 <.L101>:
 192:	4390                	lw	a2,0(a5)
 194:	07c1                	addi	a5,a5,16
 196:	0741                	addi	a4,a4,16
 198:	fec72823          	sw	a2,-16(a4) # fffffff0 <.LLST148+0xffffd2ae>

0000019c <.LVL463>:
 19c:	ff47a603          	lw	a2,-12(a5)
 1a0:	fec72a23          	sw	a2,-12(a4)

000001a4 <.LVL464>:
 1a4:	ff87a603          	lw	a2,-8(a5)
 1a8:	fec72c23          	sw	a2,-8(a4)

000001ac <.LVL465>:
 1ac:	ffc7a603          	lw	a2,-4(a5)
 1b0:	fec72e23          	sw	a2,-4(a4)

000001b4 <.LVL466>:
 1b4:	fcd79fe3          	bne	a5,a3,192 <.L101>
 1b8:	000007b7          	lui	a5,0x0
 1bc:	00078793          	mv	a5,a5
 1c0:	4398                	lw	a4,0(a5)
 1c2:	46b1                	li	a3,12
 1c4:	c314                	sw	a3,0(a4)
 1c6:	439c                	lw	a5,0(a5)
 1c8:	4715                	li	a4,5
 1ca:	c3d8                	sw	a4,4(a5)
 1cc:	c794                	sw	a3,8(a5)
 1ce:	c7d8                	sw	a4,12(a5)
 1d0:	cb94                	sw	a3,16(a5)
 1d2:	cbd8                	sw	a4,20(a5)
 1d4:	cf94                	sw	a3,24(a5)
 1d6:	cfd8                	sw	a4,28(a5)
 1d8:	4705                	li	a4,1
 1da:	d398                	sw	a4,32(a5)
 1dc:	d3d8                	sw	a4,36(a5)
 1de:	d3d8                	sw	a4,36(a5)
 1e0:	d7d8                	sw	a4,44(a5)
 1e2:	4709                	li	a4,2
 1e4:	db98                	sw	a4,48(a5)

000001e6 <.L91>:
 1e6:	8082                	ret

Disassembly of section .text.rf_pri_update_tx_power_offset:

00000000 <rf_pri_update_tx_power_offset>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	95aa                	add	a1,a1,a0

0000000a <.LVL469>:
   a:	ce06                	sw	ra,28(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	00058483          	lb	s1,0(a1) # 0 <rf_pri_update_tx_power_offset>
  12:	00000437          	lui	s0,0x0
  16:	000005b7          	lui	a1,0x0
  1a:	4911                	li	s2,4
  1c:	1c000613          	li	a2,448
  20:	00058593          	mv	a1,a1
  24:	00040513          	mv	a0,s0

00000028 <.LVL470>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL470>

00000030 <.LVL471>:
  30:	0324e9b3          	rem	s3,s1,s2

00000034 <.LVL472>:
  34:	57d9                	li	a5,-10
  36:	0324c4b3          	div	s1,s1,s2

0000003a <.LVL473>:
  3a:	02f484b3          	mul	s1,s1,a5
  3e:	00040793          	mv	a5,s0
  42:	1c078693          	addi	a3,a5,448 # 1c0 <.LVL725>

00000046 <.L111>:
  46:	4bd8                	lw	a4,20(a5)
  48:	07f1                	addi	a5,a5,28
  4a:	974e                	add	a4,a4,s3
  4c:	fee7ac23          	sw	a4,-8(a5)
  50:	ffc7a703          	lw	a4,-4(a5)
  54:	9726                	add	a4,a4,s1
  56:	fee7ae23          	sw	a4,-4(a5)
  5a:	fed796e3          	bne	a5,a3,46 <.L111>
  5e:	4462                	lw	s0,24(sp)
  60:	40f2                	lw	ra,28(sp)
  62:	44d2                	lw	s1,20(sp)
  64:	4942                	lw	s2,16(sp)
  66:	49b2                	lw	s3,12(sp)

00000068 <.LVL475>:
  68:	6105                	addi	sp,sp,32
  6a:	00000317          	auipc	t1,0x0
  6e:	00030067          	jr	t1 # 6a <.LVL475+0x2>

Disassembly of section .text.rf_pri_init_fast:

00000000 <rf_pri_init_fast>:
   0:	000007b7          	lui	a5,0x0
   4:	00a7a023          	sw	a0,0(a5) # 0 <rf_pri_init_fast>
   8:	8082                	ret

Disassembly of section .text.rf_pri_get_notch_param:

00000000 <rf_pri_get_notch_param>:
   0:	6705                	lui	a4,0x1
   2:	9a870713          	addi	a4,a4,-1624 # 9a8 <.LASF108>
   6:	47b5                	li	a5,13
   8:	00a76963          	bltu	a4,a0,1a <.L116>
   c:	77fd                	lui	a5,0xfffff
   e:	69478793          	addi	a5,a5,1684 # fffff694 <.LLST148+0xffffc952>
  12:	953e                	add	a0,a0,a5

00000014 <.LVL479>:
  14:	4795                	li	a5,5
  16:	02f557b3          	divu	a5,a0,a5

0000001a <.L116>:
  1a:	00379513          	slli	a0,a5,0x3
  1e:	000007b7          	lui	a5,0x0

00000022 <.LVL481>:
  22:	00078793          	mv	a5,a5
  26:	97aa                	add	a5,a5,a0
  28:	4398                	lw	a4,0(a5)
  2a:	43dc                	lw	a5,4(a5)
  2c:	00e58023          	sb	a4,0(a1) # 0 <rf_pri_get_notch_param>
  30:	c21c                	sw	a5,0(a2)
  32:	8082                	ret

Disassembly of section .text.rf_pri_update_param:

00000000 <rf_pri_update_param>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_update_param>
   8:	000007b7          	lui	a5,0x0
   c:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_update_param>
  10:	000007b7          	lui	a5,0x0
  14:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_update_param>
  18:	000007b7          	lui	a5,0x0
  1c:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_update_param>

00000020 <.LVL483>:
  20:	6785                	lui	a5,0x1
  22:	96b78713          	addi	a4,a5,-1685 # 96b <.LASF394>
  26:	1aa77563          	bgeu	a4,a0,1d0 <.L154>

0000002a <.LVL484>:
  2a:	97078713          	addi	a4,a5,-1680
  2e:	1aa77163          	bgeu	a4,a0,1d0 <.L154>

00000032 <.LVL485>:
  32:	97a78713          	addi	a4,a5,-1670
  36:	18a77763          	bgeu	a4,a0,1c4 <.L155>

0000003a <.LVL486>:
  3a:	98978713          	addi	a4,a5,-1655
  3e:	18a77563          	bgeu	a4,a0,1c8 <.L156>

00000042 <.LVL487>:
  42:	99878713          	addi	a4,a5,-1640
  46:	18a77363          	bgeu	a4,a0,1cc <.L157>

0000004a <.LVL488>:
  4a:	9a778693          	addi	a3,a5,-1625
  4e:	4721                	li	a4,8
  50:	479d                	li	a5,7
  52:	06a6e863          	bltu	a3,a0,c2 <.L121>
  56:	4791                	li	a5,4

00000058 <.L122>:
  58:	00000737          	lui	a4,0x0
  5c:	00070693          	mv	a3,a4
  60:	00279613          	slli	a2,a5,0x2
  64:	96b2                	add	a3,a3,a2
  66:	0006a883          	lw	a7,0(a3) # 0 <rf_pri_update_param>
  6a:	00070713          	mv	a4,a4
  6e:	4801                	li	a6,0
  70:	00a88463          	beq	a7,a0,78 <.L123>
  74:	41150833          	sub	a6,a0,a7

00000078 <.L123>:
  78:	0785                	addi	a5,a5,1
  7a:	000006b7          	lui	a3,0x0
  7e:	078a                	slli	a5,a5,0x2
  80:	00068693          	mv	a3,a3
  84:	00c685b3          	add	a1,a3,a2
  88:	973e                	add	a4,a4,a5
  8a:	96be                	add	a3,a3,a5
  8c:	0005a303          	lw	t1,0(a1)
  90:	430c                	lw	a1,0(a4)
  92:	4298                	lw	a4,0(a3)
  94:	000006b7          	lui	a3,0x0
  98:	00068693          	mv	a3,a3
  9c:	9636                	add	a2,a2,a3
  9e:	96be                	add	a3,a3,a5
  a0:	4210                	lw	a2,0(a2)
  a2:	429c                	lw	a5,0(a3)
  a4:	40670733          	sub	a4,a4,t1
  a8:	03070733          	mul	a4,a4,a6
  ac:	8f91                	sub	a5,a5,a2
  ae:	411585b3          	sub	a1,a1,a7
  b2:	030787b3          	mul	a5,a5,a6
  b6:	02b75733          	divu	a4,a4,a1
  ba:	02b7d7b3          	divu	a5,a5,a1
  be:	971a                	add	a4,a4,t1

000000c0 <.LVL490>:
  c0:	97b2                	add	a5,a5,a2

000000c2 <.L121>:
  c2:	000005b7          	lui	a1,0x0
  c6:	00058613          	mv	a2,a1
  ca:	00f78693          	addi	a3,a5,15
  ce:	ca14                	sw	a3,16(a2)
  d0:	03700693          	li	a3,55
  d4:	8e99                	sub	a3,a3,a4
  d6:	00058893          	mv	a7,a1
  da:	00058313          	mv	t1,a1
  de:	45d1                	li	a1,20
  e0:	ca54                	sw	a3,20(a2)

000000e2 <.LVL492>:
  e2:	4801                	li	a6,0
  e4:	46a9                	li	a3,10
  e6:	40f587b3          	sub	a5,a1,a5

000000ea <.LVL493>:
  ea:	5e59                	li	t3,-10

000000ec <.L126>:
  ec:	0108a583          	lw	a1,16(a7)
  f0:	95c2                	add	a1,a1,a6
  f2:	8d9d                	sub	a1,a1,a5

000000f4 <.LVL495>:
  f4:	4801                	li	a6,0

000000f6 <.LVL496>:
  f6:	00b6d463          	bge	a3,a1,fe <.L124>
  fa:	40d58833          	sub	a6,a1,a3

000000fe <.L124>:
  fe:	00b6d363          	bge	a3,a1,104 <.L125>
 102:	85b6                	mv	a1,a3

00000104 <.L125>:
 104:	00b8a623          	sw	a1,12(a7)
 108:	16ed                	addi	a3,a3,-5

0000010a <.LVL498>:
 10a:	18f1                	addi	a7,a7,-4
 10c:	ffc690e3          	bne	a3,t3,ec <.L126>
 110:	4791                	li	a5,4
 112:	02f747b3          	div	a5,a4,a5
 116:	03800693          	li	a3,56

0000011a <.LVL499>:
 11a:	4881                	li	a7,0
 11c:	05f00e93          	li	t4,95
 120:	05b00e13          	li	t3,91
 124:	40f007b3          	neg	a5,a5
 128:	00578813          	addi	a6,a5,5

0000012c <.LVL500>:
 12c:	47d1                	li	a5,20
 12e:	40e78733          	sub	a4,a5,a4

00000132 <.L131>:
 132:	4a5c                	lw	a5,20(a2)
 134:	411787b3          	sub	a5,a5,a7
 138:	97ba                	add	a5,a5,a4
 13a:	08fecd63          	blt	t4,a5,1d4 <.L127>

0000013e <.L164>:
 13e:	ce1c                	sw	a5,24(a2)

00000140 <.LVL502>:
 140:	4e0c                	lw	a1,24(a2)
 142:	4881                	li	a7,0

00000144 <.LVL503>:
 144:	00d5d463          	bge	a1,a3,14c <.L129>
 148:	40b688b3          	sub	a7,a3,a1

0000014c <.L129>:
 14c:	00d5d363          	bge	a1,a3,152 <.L130>
 150:	85b6                	mv	a1,a3

00000152 <.L130>:
 152:	ce0c                	sw	a1,24(a2)
 154:	0695                	addi	a3,a3,5

00000156 <.LVL505>:
 156:	0611                	addi	a2,a2,4
 158:	fdc69de3          	bne	a3,t3,132 <.L131>
 15c:	47bd                	li	a5,15
 15e:	00f32823          	sw	a5,16(t1)
 162:	6705                	lui	a4,0x1
 164:	03300793          	li	a5,51
 168:	00f32a23          	sw	a5,20(t1)
 16c:	98570713          	addi	a4,a4,-1659 # 985 <.LASF336+0x4>
 170:	000007b7          	lui	a5,0x0
 174:	00078793          	mv	a5,a5
 178:	400016b7          	lui	a3,0x40001

0000017c <.LVL506>:
 17c:	04a76e63          	bltu	a4,a0,1d8 <.L132>
 180:	56f8                	lw	a4,108(a3)

00000182 <.LVL507>:
 182:	0027d783          	lhu	a5,2(a5) # 2 <rf_pri_update_param+0x2>
 186:	9b61                	andi	a4,a4,-8

00000188 <.L165>:
 188:	8fd9                	or	a5,a5,a4

0000018a <.LVL509>:
 18a:	d6fc                	sw	a5,108(a3)
 18c:	6785                	lui	a5,0x1

0000018e <.LVL510>:
 18e:	00000737          	lui	a4,0x0
 192:	98a78693          	addi	a3,a5,-1654 # 98a <.LASF335>

00000196 <.LVL511>:
 196:	00070713          	mv	a4,a4
 19a:	0ed50763          	beq	a0,a3,288 <.L134>
 19e:	06a6e363          	bltu	a3,a0,204 <.L135>
 1a2:	97678693          	addi	a3,a5,-1674
 1a6:	0cd50263          	beq	a0,a3,26a <.L136>
 1aa:	02a6ec63          	bltu	a3,a0,1e2 <.L137>
 1ae:	96c78693          	addi	a3,a5,-1684
 1b2:	0ad50163          	beq	a0,a3,254 <.L138>
 1b6:	97178793          	addi	a5,a5,-1679
 1ba:	0af50363          	beq	a0,a5,260 <.L139>

000001be <.L140>:
 1be:	00072023          	sw	zero,0(a4) # 0 <rf_pri_update_param>

000001c2 <.LVL512>:
 1c2:	8082                	ret

000001c4 <.L155>:
 1c4:	4785                	li	a5,1
 1c6:	bd49                	j	58 <.L122>

000001c8 <.L156>:
 1c8:	4789                	li	a5,2
 1ca:	b579                	j	58 <.L122>

000001cc <.L157>:
 1cc:	478d                	li	a5,3
 1ce:	b569                	j	58 <.L122>

000001d0 <.L154>:
 1d0:	4781                	li	a5,0
 1d2:	b559                	j	58 <.L122>

000001d4 <.L127>:
 1d4:	97c2                	add	a5,a5,a6
 1d6:	b7a5                	j	13e <.L164>

000001d8 <.L132>:
 1d8:	56f8                	lw	a4,108(a3)

000001da <.LVL518>:
 1da:	0047d783          	lhu	a5,4(a5)
 1de:	9b61                	andi	a4,a4,-8

000001e0 <.LVL519>:
 1e0:	b765                	j	188 <.L165>

000001e2 <.L137>:
 1e2:	98078693          	addi	a3,a5,-1664
 1e6:	08d50763          	beq	a0,a3,274 <.L141>
 1ea:	98578693          	addi	a3,a5,-1659
 1ee:	08d50863          	beq	a0,a3,27e <.L142>
 1f2:	97b78793          	addi	a5,a5,-1669
 1f6:	fcf514e3          	bne	a0,a5,1be <.L140>
 1fa:	000007b7          	lui	a5,0x0
 1fe:	00c7a783          	lw	a5,12(a5) # c <rf_pri_update_param+0xc>
 202:	a8a9                	j	25c <.L166>

00000204 <.L135>:
 204:	99e78693          	addi	a3,a5,-1634
 208:	08d50f63          	beq	a0,a3,2a6 <.L144>
 20c:	02a6e363          	bltu	a3,a0,232 <.L145>
 210:	99478693          	addi	a3,a5,-1644
 214:	06d50f63          	beq	a0,a3,292 <.L146>
 218:	99978693          	addi	a3,a5,-1639
 21c:	08d50063          	beq	a0,a3,29c <.L147>
 220:	98f78793          	addi	a5,a5,-1649
 224:	f8f51de3          	bne	a0,a5,1be <.L140>
 228:	000007b7          	lui	a5,0x0
 22c:	01c7a783          	lw	a5,28(a5) # 1c <rf_pri_update_param+0x1c>
 230:	a035                	j	25c <.L166>

00000232 <.L145>:
 232:	9a878693          	addi	a3,a5,-1624
 236:	06d50d63          	beq	a0,a3,2b0 <.L149>
 23a:	9b478693          	addi	a3,a5,-1612
 23e:	06d50e63          	beq	a0,a3,2ba <.L150>
 242:	9a378793          	addi	a5,a5,-1629
 246:	f6f51ce3          	bne	a0,a5,1be <.L140>
 24a:	000007b7          	lui	a5,0x0
 24e:	02c7a783          	lw	a5,44(a5) # 2c <.LVL484+0x2>
 252:	a029                	j	25c <.L166>

00000254 <.L138>:
 254:	000007b7          	lui	a5,0x0
 258:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_update_param>

0000025c <.L166>:
 25c:	c31c                	sw	a5,0(a4)

0000025e <.LVL521>:
 25e:	8082                	ret

00000260 <.L139>:
 260:	000007b7          	lui	a5,0x0
 264:	0047a783          	lw	a5,4(a5) # 4 <rf_pri_update_param+0x4>
 268:	bfd5                	j	25c <.L166>

0000026a <.L136>:
 26a:	000007b7          	lui	a5,0x0
 26e:	0087a783          	lw	a5,8(a5) # 8 <rf_pri_update_param+0x8>
 272:	b7ed                	j	25c <.L166>

00000274 <.L141>:
 274:	000007b7          	lui	a5,0x0
 278:	0107a783          	lw	a5,16(a5) # 10 <rf_pri_update_param+0x10>
 27c:	b7c5                	j	25c <.L166>

0000027e <.L142>:
 27e:	000007b7          	lui	a5,0x0
 282:	0147a783          	lw	a5,20(a5) # 14 <rf_pri_update_param+0x14>
 286:	bfd9                	j	25c <.L166>

00000288 <.L134>:
 288:	000007b7          	lui	a5,0x0
 28c:	0187a783          	lw	a5,24(a5) # 18 <rf_pri_update_param+0x18>
 290:	b7f1                	j	25c <.L166>

00000292 <.L146>:
 292:	000007b7          	lui	a5,0x0
 296:	0207a783          	lw	a5,32(a5) # 20 <.LVL483>
 29a:	b7c9                	j	25c <.L166>

0000029c <.L147>:
 29c:	000007b7          	lui	a5,0x0
 2a0:	0247a783          	lw	a5,36(a5) # 24 <.LVL483+0x4>
 2a4:	bf65                	j	25c <.L166>

000002a6 <.L144>:
 2a6:	000007b7          	lui	a5,0x0
 2aa:	0287a783          	lw	a5,40(a5) # 28 <.LVL483+0x8>
 2ae:	b77d                	j	25c <.L166>

000002b0 <.L149>:
 2b0:	000007b7          	lui	a5,0x0
 2b4:	0307a783          	lw	a5,48(a5) # 30 <.LVL484+0x6>
 2b8:	b755                	j	25c <.L166>

000002ba <.L150>:
 2ba:	000007b7          	lui	a5,0x0
 2be:	0347a783          	lw	a5,52(a5) # 34 <.LVL485+0x2>
 2c2:	bf69                	j	25c <.L166>

Disassembly of section .text.rf_pri_xtalfreq:

00000000 <rf_pri_xtalfreq>:
   0:	20051463          	bnez	a0,208 <.L168>
   4:	000007b7          	lui	a5,0x0
   8:	21639737          	lui	a4,0x21639
   c:	00078793          	mv	a5,a5
  10:	e3970713          	addi	a4,a4,-455 # 21638e39 <.LLST148+0x216360f7>
  14:	c398                	sw	a4,0(a5)
  16:	2171c737          	lui	a4,0x2171c
  1a:	71c70713          	addi	a4,a4,1820 # 2171c71c <.LLST148+0x217199da>
  1e:	c3d8                	sw	a4,4(a5)
  20:	21800737          	lui	a4,0x21800
  24:	c798                	sw	a4,8(a5)
  26:	218e4737          	lui	a4,0x218e4
  2a:	8e470713          	addi	a4,a4,-1820 # 218e38e4 <.LLST148+0x218e0ba2>
  2e:	c7d8                	sw	a4,12(a5)
  30:	219c7737          	lui	a4,0x219c7
  34:	1c770713          	addi	a4,a4,455 # 219c71c7 <.LLST148+0x219c4485>
  38:	cb98                	sw	a4,16(a5)
  3a:	21aab737          	lui	a4,0x21aab
  3e:	aab70713          	addi	a4,a4,-1365 # 21aaaaab <.LLST148+0x21aa7d69>
  42:	cbd8                	sw	a4,20(a5)
  44:	21b8e737          	lui	a4,0x21b8e
  48:	38e70713          	addi	a4,a4,910 # 21b8e38e <.LLST148+0x21b8b64c>
  4c:	cf98                	sw	a4,24(a5)
  4e:	21c72737          	lui	a4,0x21c72
  52:	c7270713          	addi	a4,a4,-910 # 21c71c72 <.LLST148+0x21c6ef30>
  56:	cfd8                	sw	a4,28(a5)
  58:	21d55737          	lui	a4,0x21d55
  5c:	55570713          	addi	a4,a4,1365 # 21d55555 <.LLST148+0x21d52813>
  60:	d398                	sw	a4,32(a5)
  62:	21e39737          	lui	a4,0x21e39
  66:	e3970713          	addi	a4,a4,-455 # 21e38e39 <.LLST148+0x21e360f7>
  6a:	d3d8                	sw	a4,36(a5)
  6c:	21f1c737          	lui	a4,0x21f1c
  70:	71c70713          	addi	a4,a4,1820 # 21f1c71c <.LLST148+0x21f199da>
  74:	d798                	sw	a4,40(a5)
  76:	22000737          	lui	a4,0x22000
  7a:	d7d8                	sw	a4,44(a5)
  7c:	220e4737          	lui	a4,0x220e4
  80:	8e470713          	addi	a4,a4,-1820 # 220e38e4 <.LLST148+0x220e0ba2>
  84:	db98                	sw	a4,48(a5)
  86:	221c7737          	lui	a4,0x221c7
  8a:	1c770713          	addi	a4,a4,455 # 221c71c7 <.LLST148+0x221c4485>
  8e:	dbd8                	sw	a4,52(a5)
  90:	222ab737          	lui	a4,0x222ab
  94:	aab70713          	addi	a4,a4,-1365 # 222aaaab <.LLST148+0x222a7d69>
  98:	df98                	sw	a4,56(a5)
  9a:	2238e737          	lui	a4,0x2238e
  9e:	38e70713          	addi	a4,a4,910 # 2238e38e <.LLST148+0x2238b64c>
  a2:	dfd8                	sw	a4,60(a5)
  a4:	22472737          	lui	a4,0x22472
  a8:	c7270713          	addi	a4,a4,-910 # 22471c72 <.LLST148+0x2246ef30>
  ac:	c3b8                	sw	a4,64(a5)
  ae:	22555737          	lui	a4,0x22555
  b2:	55570713          	addi	a4,a4,1365 # 22555555 <.LLST148+0x22552813>
  b6:	c3f8                	sw	a4,68(a5)
  b8:	22639737          	lui	a4,0x22639
  bc:	e3970713          	addi	a4,a4,-455 # 22638e39 <.LLST148+0x226360f7>
  c0:	c7b8                	sw	a4,72(a5)
  c2:	2271c737          	lui	a4,0x2271c
  c6:	71c70713          	addi	a4,a4,1820 # 2271c71c <.LLST148+0x227199da>
  ca:	c7f8                	sw	a4,76(a5)
  cc:	22800737          	lui	a4,0x22800
  d0:	cbb8                	sw	a4,80(a5)
  d2:	000007b7          	lui	a5,0x0
  d6:	a739a737          	lui	a4,0xa739a
  da:	00078793          	mv	a5,a5
  de:	6f270713          	addi	a4,a4,1778 # a739a6f2 <.LLST148+0xa73979b0>
  e2:	c398                	sw	a4,0(a5)
  e4:	a7c7a737          	lui	a4,0xa7c7a
  e8:	78070713          	addi	a4,a4,1920 # a7c7a780 <.LLST148+0xa7c77a3e>
  ec:	c3d8                	sw	a4,4(a5)
  ee:	a855b737          	lui	a4,0xa855b
  f2:	80e70713          	addi	a4,a4,-2034 # a855a80e <.LLST148+0xa8557acc>
  f6:	c798                	sw	a4,8(a5)
  f8:	a8e4b737          	lui	a4,0xa8e4b
  fc:	89c70713          	addi	a4,a4,-1892 # a8e4a89c <.LLST148+0xa8e47b5a>
 100:	c7d8                	sw	a4,12(a5)
 102:	a972b737          	lui	a4,0xa972b
 106:	92b70713          	addi	a4,a4,-1749 # a972a92b <.LLST148+0xa9727be9>
 10a:	cb98                	sw	a4,16(a5)
 10c:	aa00b737          	lui	a4,0xaa00b
 110:	9b970713          	addi	a4,a4,-1607 # aa00a9b9 <.LLST148+0xaa007c77>
 114:	cbd8                	sw	a4,20(a5)
 116:	aa8eb737          	lui	a4,0xaa8eb
 11a:	a4770713          	addi	a4,a4,-1465 # aa8eaa47 <.LLST148+0xaa8e7d05>
 11e:	cf98                	sw	a4,24(a5)
 120:	ab1cb737          	lui	a4,0xab1cb
 124:	ad570713          	addi	a4,a4,-1323 # ab1caad5 <.LLST148+0xab1c7d93>
 128:	cfd8                	sw	a4,28(a5)
 12a:	ababb737          	lui	a4,0xababb
 12e:	b6470713          	addi	a4,a4,-1180 # ababab64 <.LLST148+0xabab7e22>
 132:	d398                	sw	a4,32(a5)
 134:	ac39b737          	lui	a4,0xac39b
 138:	bf270713          	addi	a4,a4,-1038 # ac39abf2 <.LLST148+0xac397eb0>
 13c:	d3d8                	sw	a4,36(a5)
 13e:	776d                	lui	a4,0xffffb
 140:	c8070693          	addi	a3,a4,-896 # ffffac80 <.LLST148+0xffff7f3e>
 144:	02d79423          	sh	a3,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 148:	000007b7          	lui	a5,0x0
 14c:	a6e7a6b7          	lui	a3,0xa6e7a
 150:	00078793          	mv	a5,a5
 154:	ce770713          	addi	a4,a4,-793
 158:	6a768693          	addi	a3,a3,1703 # a6e7a6a7 <.LLST148+0xa6e77965>
 15c:	c394                	sw	a3,0(a5)
 15e:	00e79223          	sh	a4,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 162:	000007b7          	lui	a5,0x0
 166:	50000713          	li	a4,1280
 16a:	00e79023          	sh	a4,0(a5) # 0 <rf_pri_xtalfreq>
 16e:	000007b7          	lui	a5,0x0
 172:	00078793          	mv	a5,a5
 176:	4705                	li	a4,1
 178:	c798                	sw	a4,8(a5)
 17a:	cb98                	sw	a4,16(a5)
 17c:	cf98                	sw	a4,24(a5)
 17e:	d398                	sw	a4,32(a5)
 180:	db98                	sw	a4,48(a5)
 182:	df98                	sw	a4,56(a5)
 184:	c3b8                	sw	a4,64(a5)
 186:	c7b8                	sw	a4,72(a5)
 188:	cfb8                	sw	a4,88(a5)
 18a:	d3b8                	sw	a4,96(a5)
 18c:	006ad737          	lui	a4,0x6ad
 190:	fc070713          	addi	a4,a4,-64 # 6acfc0 <.LLST148+0x6aa27e>
 194:	c7d8                	sw	a4,12(a5)
 196:	001e8737          	lui	a4,0x1e8
 19a:	48070713          	addi	a4,a4,1152 # 1e8480 <.LLST148+0x1e573e>
 19e:	cbd8                	sw	a4,20(a5)
 1a0:	ffd24737          	lui	a4,0xffd24
 1a4:	94070713          	addi	a4,a4,-1728 # ffd23940 <.LLST148+0xffd20bfe>
 1a8:	cfd8                	sw	a4,28(a5)
 1aa:	ff85f737          	lui	a4,0xff85f
 1ae:	e0070713          	addi	a4,a4,-512 # ff85ee00 <.LLST148+0xff85c0be>
 1b2:	d3d8                	sw	a4,36(a5)
 1b4:	005b9737          	lui	a4,0x5b9
 1b8:	d8070713          	addi	a4,a4,-640 # 5b8d80 <.LLST148+0x5b603e>
 1bc:	dbd8                	sw	a4,52(a5)
 1be:	000f4737          	lui	a4,0xf4
 1c2:	24070713          	addi	a4,a4,576 # f4240 <.LLST148+0xf14fe>
 1c6:	dfd8                	sw	a4,60(a5)
 1c8:	ffc2f737          	lui	a4,0xffc2f
 1cc:	70070713          	addi	a4,a4,1792 # ffc2f700 <.LLST148+0xffc2c9be>
 1d0:	c3f8                	sw	a4,68(a5)
 1d2:	ff76b737          	lui	a4,0xff76b
 1d6:	bc070713          	addi	a4,a4,-1088 # ff76abc0 <.LLST148+0xff767e7e>
 1da:	c7f8                	sw	a4,76(a5)
 1dc:	004c5737          	lui	a4,0x4c5
 1e0:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_xtalfreq>
 1e4:	0207a423          	sw	zero,40(a5)
 1e8:	0407a823          	sw	zero,80(a5)
 1ec:	0607a423          	sw	zero,104(a5)
 1f0:	0007a223          	sw	zero,4(a5)
 1f4:	0207a623          	sw	zero,44(a5)
 1f8:	0407aa23          	sw	zero,84(a5)
 1fc:	b4070713          	addi	a4,a4,-1216 # 4c4b40 <.LLST148+0x4c1dfe>

00000200 <.L176>:
 200:	cff8                	sw	a4,92(a5)

00000202 <.L174>:
 202:	0607a223          	sw	zero,100(a5)
 206:	ac39                	j	424 <.L175>

00000208 <.L168>:
 208:	4705                	li	a4,1
 20a:	22e51063          	bne	a0,a4,42a <.L170>
 20e:	000007b7          	lui	a5,0x0
 212:	1ed21737          	lui	a4,0x1ed21
 216:	00078793          	mv	a5,a5
 21a:	d2170713          	addi	a4,a4,-735 # 1ed20d21 <.LLST148+0x1ed1dfdf>
 21e:	c398                	sw	a4,0(a5)
 220:	1edf3737          	lui	a4,0x1edf3
 224:	df370713          	addi	a4,a4,-525 # 1edf2df3 <.LLST148+0x1edf00b1>
 228:	c3d8                	sw	a4,4(a5)
 22a:	1eec5737          	lui	a4,0x1eec5
 22e:	ec570713          	addi	a4,a4,-315 # 1eec4ec5 <.LLST148+0x1eec2183>
 232:	c798                	sw	a4,8(a5)
 234:	1ef97737          	lui	a4,0x1ef97
 238:	f9770713          	addi	a4,a4,-105 # 1ef96f97 <.LLST148+0x1ef94255>
 23c:	c7d8                	sw	a4,12(a5)
 23e:	1f069737          	lui	a4,0x1f069
 242:	06970713          	addi	a4,a4,105 # 1f069069 <.LLST148+0x1f066327>
 246:	cb98                	sw	a4,16(a5)
 248:	1f13b737          	lui	a4,0x1f13b
 24c:	13b70713          	addi	a4,a4,315 # 1f13b13b <.LLST148+0x1f1383f9>
 250:	cbd8                	sw	a4,20(a5)
 252:	1f20d737          	lui	a4,0x1f20d
 256:	20d70713          	addi	a4,a4,525 # 1f20d20d <.LLST148+0x1f20a4cb>
 25a:	cf98                	sw	a4,24(a5)
 25c:	1f2df737          	lui	a4,0x1f2df
 260:	2df70713          	addi	a4,a4,735 # 1f2df2df <.LLST148+0x1f2dc59d>
 264:	cfd8                	sw	a4,28(a5)
 266:	1f3b1737          	lui	a4,0x1f3b1
 26a:	3b170713          	addi	a4,a4,945 # 1f3b13b1 <.LLST148+0x1f3ae66f>
 26e:	d398                	sw	a4,32(a5)
 270:	1f483737          	lui	a4,0x1f483
 274:	48370713          	addi	a4,a4,1155 # 1f483483 <.LLST148+0x1f480741>
 278:	d3d8                	sw	a4,36(a5)
 27a:	1f555737          	lui	a4,0x1f555
 27e:	55570713          	addi	a4,a4,1365 # 1f555555 <.LLST148+0x1f552813>
 282:	d798                	sw	a4,40(a5)
 284:	1f627737          	lui	a4,0x1f627
 288:	62770713          	addi	a4,a4,1575 # 1f627627 <.LLST148+0x1f6248e5>
 28c:	d7d8                	sw	a4,44(a5)
 28e:	1f6f9737          	lui	a4,0x1f6f9
 292:	6f970713          	addi	a4,a4,1785 # 1f6f96f9 <.LLST148+0x1f6f69b7>
 296:	db98                	sw	a4,48(a5)
 298:	1f7cb737          	lui	a4,0x1f7cb
 29c:	7cb70713          	addi	a4,a4,1995 # 1f7cb7cb <.LLST148+0x1f7c8a89>
 2a0:	dbd8                	sw	a4,52(a5)
 2a2:	1f89e737          	lui	a4,0x1f89e
 2a6:	89e70713          	addi	a4,a4,-1890 # 1f89d89e <.LLST148+0x1f89ab5c>
 2aa:	df98                	sw	a4,56(a5)
 2ac:	1f970737          	lui	a4,0x1f970
 2b0:	97070713          	addi	a4,a4,-1680 # 1f96f970 <.LLST148+0x1f96cc2e>
 2b4:	dfd8                	sw	a4,60(a5)
 2b6:	1fa42737          	lui	a4,0x1fa42
 2ba:	a4270713          	addi	a4,a4,-1470 # 1fa41a42 <.LLST148+0x1fa3ed00>
 2be:	c3b8                	sw	a4,64(a5)
 2c0:	1fb14737          	lui	a4,0x1fb14
 2c4:	b1470713          	addi	a4,a4,-1260 # 1fb13b14 <.LLST148+0x1fb10dd2>
 2c8:	c3f8                	sw	a4,68(a5)
 2ca:	1fbe6737          	lui	a4,0x1fbe6
 2ce:	be670713          	addi	a4,a4,-1050 # 1fbe5be6 <.LLST148+0x1fbe2ea4>
 2d2:	c7b8                	sw	a4,72(a5)
 2d4:	1fcb8737          	lui	a4,0x1fcb8
 2d8:	cb870713          	addi	a4,a4,-840 # 1fcb7cb8 <.LLST148+0x1fcb4f76>
 2dc:	c7f8                	sw	a4,76(a5)
 2de:	1fd8a737          	lui	a4,0x1fd8a
 2e2:	d8a70713          	addi	a4,a4,-630 # 1fd89d8a <.LLST148+0x1fd87048>
 2e6:	cbb8                	sw	a4,80(a5)
 2e8:	000007b7          	lui	a5,0x0
 2ec:	a743a737          	lui	a4,0xa743a
 2f0:	00078793          	mv	a5,a5
 2f4:	6fc70713          	addi	a4,a4,1788 # a743a6fc <.LLST148+0xa74379ba>
 2f8:	c398                	sw	a4,0(a5)
 2fa:	a7d1a737          	lui	a4,0xa7d1a
 2fe:	78a70713          	addi	a4,a4,1930 # a7d1a78a <.LLST148+0xa7d17a48>
 302:	c3d8                	sw	a4,4(a5)
 304:	a860b737          	lui	a4,0xa860b
 308:	81970713          	addi	a4,a4,-2023 # a860a819 <.LLST148+0xa8607ad7>
 30c:	c798                	sw	a4,8(a5)
 30e:	a8eeb737          	lui	a4,0xa8eeb
 312:	8a770713          	addi	a4,a4,-1881 # a8eea8a7 <.LLST148+0xa8ee7b65>
 316:	c7d8                	sw	a4,12(a5)
 318:	a97cb737          	lui	a4,0xa97cb
 31c:	93570713          	addi	a4,a4,-1739 # a97ca935 <.LLST148+0xa97c7bf3>
 320:	cb98                	sw	a4,16(a5)
 322:	aa0ab737          	lui	a4,0xaa0ab
 326:	9c370713          	addi	a4,a4,-1597 # aa0aa9c3 <.LLST148+0xaa0a7c81>
 32a:	cbd8                	sw	a4,20(a5)
 32c:	aa99b737          	lui	a4,0xaa99b
 330:	a5270713          	addi	a4,a4,-1454 # aa99aa52 <.LLST148+0xaa997d10>
 334:	cf98                	sw	a4,24(a5)
 336:	ab27b737          	lui	a4,0xab27b
 33a:	ae070713          	addi	a4,a4,-1312 # ab27aae0 <.LLST148+0xab277d9e>
 33e:	cfd8                	sw	a4,28(a5)
 340:	abb5b737          	lui	a4,0xabb5b
 344:	b6e70713          	addi	a4,a4,-1170 # abb5ab6e <.LLST148+0xabb57e2c>
 348:	d398                	sw	a4,32(a5)
 34a:	ac43b737          	lui	a4,0xac43b
 34e:	bfc70713          	addi	a4,a4,-1028 # ac43abfc <.LLST148+0xac437eba>
 352:	d3d8                	sw	a4,36(a5)
 354:	776d                	lui	a4,0xffffb
 356:	c8b70693          	addi	a3,a4,-885 # ffffac8b <.LLST148+0xffff7f49>
 35a:	02d79423          	sh	a3,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 35e:	000007b7          	lui	a5,0x0
 362:	a6f1a6b7          	lui	a3,0xa6f1a
 366:	00078793          	mv	a5,a5
 36a:	cf270713          	addi	a4,a4,-782
 36e:	6b168693          	addi	a3,a3,1713 # a6f1a6b1 <.LLST148+0xa6f1796f>
 372:	c394                	sw	a3,0(a5)
 374:	00e79223          	sh	a4,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 378:	000007b7          	lui	a5,0x0
 37c:	56b00713          	li	a4,1387
 380:	00e79023          	sh	a4,0(a5) # 0 <rf_pri_xtalfreq>
 384:	000007b7          	lui	a5,0x0
 388:	005b9737          	lui	a4,0x5b9
 38c:	00078793          	mv	a5,a5
 390:	d8070713          	addi	a4,a4,-640 # 5b8d80 <.LLST148+0x5b603e>
 394:	c3d8                	sw	a4,4(a5)
 396:	000f4737          	lui	a4,0xf4
 39a:	24070713          	addi	a4,a4,576 # f4240 <.LLST148+0xf14fe>
 39e:	c7d8                	sw	a4,12(a5)
 3a0:	ffc2f737          	lui	a4,0xffc2f
 3a4:	70070713          	addi	a4,a4,1792 # ffc2f700 <.LLST148+0xffc2c9be>
 3a8:	cbd8                	sw	a4,20(a5)
 3aa:	ff76b737          	lui	a4,0xff76b
 3ae:	bc070713          	addi	a4,a4,-1088 # ff76abc0 <.LLST148+0xff767e7e>
 3b2:	cfd8                	sw	a4,28(a5)
 3b4:	006ad737          	lui	a4,0x6ad
 3b8:	fc070713          	addi	a4,a4,-64 # 6acfc0 <.LLST148+0x6aa27e>
 3bc:	d7d8                	sw	a4,44(a5)
 3be:	001e8737          	lui	a4,0x1e8
 3c2:	48070713          	addi	a4,a4,1152 # 1e8480 <.LLST148+0x1e573e>
 3c6:	dbd8                	sw	a4,52(a5)
 3c8:	ffd24737          	lui	a4,0xffd24
 3cc:	94070713          	addi	a4,a4,-1728 # ffd23940 <.LLST148+0xffd20bfe>
 3d0:	dfd8                	sw	a4,60(a5)
 3d2:	ff85f737          	lui	a4,0xff85f
 3d6:	e0070713          	addi	a4,a4,-512 # ff85ee00 <.LLST148+0xff85c0be>
 3da:	c3f8                	sw	a4,68(a5)
 3dc:	007a1737          	lui	a4,0x7a1
 3e0:	20070713          	addi	a4,a4,512 # 7a1200 <.LLST148+0x79e4be>
 3e4:	cbf8                	sw	a4,84(a5)
 3e6:	002dc737          	lui	a4,0x2dc
 3ea:	6c070713          	addi	a4,a4,1728 # 2dc6c0 <.LLST148+0x2d997e>
 3ee:	cff8                	sw	a4,92(a5)
 3f0:	ffe18737          	lui	a4,0xffe18
 3f4:	c388                	sw	a0,0(a5)
 3f6:	c788                	sw	a0,8(a5)
 3f8:	cb88                	sw	a0,16(a5)
 3fa:	cf88                	sw	a0,24(a5)
 3fc:	0207a023          	sw	zero,32(a5) # 20 <rf_pri_xtalfreq+0x20>
 400:	d788                	sw	a0,40(a5)
 402:	db88                	sw	a0,48(a5)
 404:	df88                	sw	a0,56(a5)
 406:	c3a8                	sw	a0,64(a5)
 408:	0407a423          	sw	zero,72(a5)
 40c:	cba8                	sw	a0,80(a5)
 40e:	cfa8                	sw	a0,88(a5)
 410:	d3a8                	sw	a0,96(a5)
 412:	0607a423          	sw	zero,104(a5)
 416:	0207a223          	sw	zero,36(a5)
 41a:	0407a623          	sw	zero,76(a5)
 41e:	b8070713          	addi	a4,a4,-1152 # ffe17b80 <.LLST148+0xffe14e3e>

00000422 <.L177>:
 422:	d3f8                	sw	a4,100(a5)

00000424 <.L175>:
 424:	0607a623          	sw	zero,108(a5)

00000428 <.L167>:
 428:	8082                	ret

0000042a <.L170>:
 42a:	4789                	li	a5,2
 42c:	1ef51863          	bne	a0,a5,61c <.L171>
 430:	000007b7          	lui	a5,0x0
 434:	190ab6b7          	lui	a3,0x190ab
 438:	00078793          	mv	a5,a5
 43c:	aab68693          	addi	a3,a3,-1365 # 190aaaab <.LLST148+0x190a7d69>
 440:	c394                	sw	a3,0(a5)
 442:	191556b7          	lui	a3,0x19155
 446:	55568693          	addi	a3,a3,1365 # 19155555 <.LLST148+0x19152813>
 44a:	c3d4                	sw	a3,4(a5)
 44c:	192006b7          	lui	a3,0x19200
 450:	c794                	sw	a3,8(a5)
 452:	192ab6b7          	lui	a3,0x192ab
 456:	aab68693          	addi	a3,a3,-1365 # 192aaaab <.LLST148+0x192a7d69>
 45a:	c7d4                	sw	a3,12(a5)
 45c:	193556b7          	lui	a3,0x19355
 460:	55568693          	addi	a3,a3,1365 # 19355555 <.LLST148+0x19352813>
 464:	cb94                	sw	a3,16(a5)
 466:	194006b7          	lui	a3,0x19400
 46a:	cbd4                	sw	a3,20(a5)
 46c:	194ab6b7          	lui	a3,0x194ab
 470:	aab68693          	addi	a3,a3,-1365 # 194aaaab <.LLST148+0x194a7d69>
 474:	cf94                	sw	a3,24(a5)
 476:	195556b7          	lui	a3,0x19555
 47a:	55568693          	addi	a3,a3,1365 # 19555555 <.LLST148+0x19552813>
 47e:	cfd4                	sw	a3,28(a5)
 480:	196006b7          	lui	a3,0x19600
 484:	d394                	sw	a3,32(a5)
 486:	196ab6b7          	lui	a3,0x196ab
 48a:	aab68693          	addi	a3,a3,-1365 # 196aaaab <.LLST148+0x196a7d69>
 48e:	d3d4                	sw	a3,36(a5)
 490:	197556b7          	lui	a3,0x19755
 494:	55568693          	addi	a3,a3,1365 # 19755555 <.LLST148+0x19752813>
 498:	d794                	sw	a3,40(a5)
 49a:	198006b7          	lui	a3,0x19800
 49e:	d7d4                	sw	a3,44(a5)
 4a0:	198ab6b7          	lui	a3,0x198ab
 4a4:	aab68693          	addi	a3,a3,-1365 # 198aaaab <.LLST148+0x198a7d69>
 4a8:	db94                	sw	a3,48(a5)
 4aa:	199556b7          	lui	a3,0x19955
 4ae:	55568693          	addi	a3,a3,1365 # 19955555 <.LLST148+0x19952813>
 4b2:	dbd4                	sw	a3,52(a5)
 4b4:	19a006b7          	lui	a3,0x19a00
 4b8:	df94                	sw	a3,56(a5)
 4ba:	19aab6b7          	lui	a3,0x19aab
 4be:	aab68693          	addi	a3,a3,-1365 # 19aaaaab <.LLST148+0x19aa7d69>
 4c2:	dfd4                	sw	a3,60(a5)
 4c4:	19b556b7          	lui	a3,0x19b55
 4c8:	55568693          	addi	a3,a3,1365 # 19b55555 <.LLST148+0x19b52813>
 4cc:	c3b4                	sw	a3,64(a5)
 4ce:	19c006b7          	lui	a3,0x19c00
 4d2:	c3f4                	sw	a3,68(a5)
 4d4:	19cab6b7          	lui	a3,0x19cab
 4d8:	aab68693          	addi	a3,a3,-1365 # 19caaaab <.LLST148+0x19ca7d69>
 4dc:	c7b4                	sw	a3,72(a5)
 4de:	19d556b7          	lui	a3,0x19d55
 4e2:	55568693          	addi	a3,a3,1365 # 19d55555 <.LLST148+0x19d52813>
 4e6:	c7f4                	sw	a3,76(a5)
 4e8:	19e006b7          	lui	a3,0x19e00
 4ec:	cbb4                	sw	a3,80(a5)
 4ee:	000007b7          	lui	a5,0x0
 4f2:	a741a6b7          	lui	a3,0xa741a
 4f6:	00078793          	mv	a5,a5
 4fa:	6fa68693          	addi	a3,a3,1786 # a741a6fa <.LLST148+0xa74179b8>
 4fe:	c394                	sw	a3,0(a5)
 500:	a7d0a6b7          	lui	a3,0xa7d0a
 504:	78868693          	addi	a3,a3,1928 # a7d0a788 <.LLST148+0xa7d07a46>
 508:	c3d4                	sw	a3,4(a5)
 50a:	a85eb6b7          	lui	a3,0xa85eb
 50e:	81768693          	addi	a3,a3,-2025 # a85ea817 <.LLST148+0xa85e7ad5>
 512:	c794                	sw	a3,8(a5)
 514:	a8ecb6b7          	lui	a3,0xa8ecb
 518:	8a568693          	addi	a3,a3,-1883 # a8eca8a5 <.LLST148+0xa8ec7b63>
 51c:	c7d4                	sw	a3,12(a5)
 51e:	a97ab6b7          	lui	a3,0xa97ab
 522:	93368693          	addi	a3,a3,-1741 # a97aa933 <.LLST148+0xa97a7bf1>
 526:	cb94                	sw	a3,16(a5)
 528:	aa09b6b7          	lui	a3,0xaa09b
 52c:	9c168693          	addi	a3,a3,-1599 # aa09a9c1 <.LLST148+0xaa097c7f>
 530:	cbd4                	sw	a3,20(a5)
 532:	aa97b6b7          	lui	a3,0xaa97b
 536:	a5068693          	addi	a3,a3,-1456 # aa97aa50 <.LLST148+0xaa977d0e>
 53a:	cf94                	sw	a3,24(a5)
 53c:	ab25b6b7          	lui	a3,0xab25b
 540:	ade68693          	addi	a3,a3,-1314 # ab25aade <.LLST148+0xab257d9c>
 544:	cfd4                	sw	a3,28(a5)
 546:	abb3b6b7          	lui	a3,0xabb3b
 54a:	b6c68693          	addi	a3,a3,-1172 # abb3ab6c <.LLST148+0xabb37e2a>
 54e:	d394                	sw	a3,32(a5)
 550:	ac42b6b7          	lui	a3,0xac42b
 554:	bfa68693          	addi	a3,a3,-1030 # ac42abfa <.LLST148+0xac427eb8>
 558:	d3d4                	sw	a3,36(a5)
 55a:	76ed                	lui	a3,0xffffb
 55c:	c8968613          	addi	a2,a3,-887 # ffffac89 <.LLST148+0xffff7f47>
 560:	02c79423          	sh	a2,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 564:	000007b7          	lui	a5,0x0
 568:	a6efa637          	lui	a2,0xa6efa
 56c:	00078793          	mv	a5,a5
 570:	cf068693          	addi	a3,a3,-784
 574:	6af60613          	addi	a2,a2,1711 # a6efa6af <.LLST148+0xa6ef796d>
 578:	c390                	sw	a2,0(a5)
 57a:	00d79223          	sh	a3,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 57e:	000007b7          	lui	a5,0x0
 582:	6ab00693          	li	a3,1707
 586:	00d79023          	sh	a3,0(a5) # 0 <rf_pri_xtalfreq>
 58a:	000007b7          	lui	a5,0x0
 58e:	00078793          	mv	a5,a5
 592:	cb98                	sw	a4,16(a5)
 594:	cf98                	sw	a4,24(a5)
 596:	d398                	sw	a4,32(a5)
 598:	d798                	sw	a4,40(a5)
 59a:	db98                	sw	a4,48(a5)
 59c:	c7b8                	sw	a4,72(a5)
 59e:	cbb8                	sw	a4,80(a5)
 5a0:	cfb8                	sw	a4,88(a5)
 5a2:	d3b8                	sw	a4,96(a5)
 5a4:	00989737          	lui	a4,0x989
 5a8:	68070713          	addi	a4,a4,1664 # 989680 <.LLST148+0x98693e>
 5ac:	cbd8                	sw	a4,20(a5)
 5ae:	004c5737          	lui	a4,0x4c5
 5b2:	b4070713          	addi	a4,a4,-1216 # 4c4b40 <.LLST148+0x4c1dfe>
 5b6:	cfd8                	sw	a4,28(a5)
 5b8:	ffb3b737          	lui	a4,0xffb3b
 5bc:	4c070713          	addi	a4,a4,1216 # ffb3b4c0 <.LLST148+0xffb3877e>
 5c0:	d7d8                	sw	a4,44(a5)
 5c2:	ff677737          	lui	a4,0xff677
 5c6:	98070713          	addi	a4,a4,-1664 # ff676980 <.LLST148+0xff673c3e>
 5ca:	dbd8                	sw	a4,52(a5)
 5cc:	006ad737          	lui	a4,0x6ad
 5d0:	fc070713          	addi	a4,a4,-64 # 6acfc0 <.LLST148+0x6aa27e>
 5d4:	c7f8                	sw	a4,76(a5)
 5d6:	001e8737          	lui	a4,0x1e8
 5da:	48070713          	addi	a4,a4,1152 # 1e8480 <.LLST148+0x1e573e>
 5de:	cbf8                	sw	a4,84(a5)
 5e0:	ffd24737          	lui	a4,0xffd24
 5e4:	94070713          	addi	a4,a4,-1728 # ffd23940 <.LLST148+0xffd20bfe>
 5e8:	cff8                	sw	a4,92(a5)
 5ea:	ff85f737          	lui	a4,0xff85f
 5ee:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_xtalfreq>
 5f2:	0007a423          	sw	zero,8(a5)
 5f6:	0207ac23          	sw	zero,56(a5)
 5fa:	0407a023          	sw	zero,64(a5)
 5fe:	0607a423          	sw	zero,104(a5)
 602:	0007a223          	sw	zero,4(a5)
 606:	0007a623          	sw	zero,12(a5)
 60a:	0207a223          	sw	zero,36(a5)
 60e:	0207ae23          	sw	zero,60(a5)
 612:	0407a223          	sw	zero,68(a5)
 616:	e0070713          	addi	a4,a4,-512 # ff85ee00 <.LLST148+0xff85c0be>
 61a:	b521                	j	422 <.L177>

0000061c <.L171>:
 61c:	478d                	li	a5,3
 61e:	20f51063          	bne	a0,a5,81e <.L172>
 622:	000007b7          	lui	a5,0x0
 626:	14de46b7          	lui	a3,0x14de4
 62a:	00078793          	mv	a5,a5
 62e:	8e468693          	addi	a3,a3,-1820 # 14de38e4 <.LLST148+0x14de0ba2>
 632:	c394                	sw	a3,0(a5)
 634:	14e726b7          	lui	a3,0x14e72
 638:	c7268693          	addi	a3,a3,-910 # 14e71c72 <.LLST148+0x14e6ef30>
 63c:	c3d4                	sw	a3,4(a5)
 63e:	14f006b7          	lui	a3,0x14f00
 642:	c794                	sw	a3,8(a5)
 644:	14f8e6b7          	lui	a3,0x14f8e
 648:	38e68693          	addi	a3,a3,910 # 14f8e38e <.LLST148+0x14f8b64c>
 64c:	c7d4                	sw	a3,12(a5)
 64e:	1501c6b7          	lui	a3,0x1501c
 652:	71c68693          	addi	a3,a3,1820 # 1501c71c <.LLST148+0x150199da>
 656:	cb94                	sw	a3,16(a5)
 658:	150ab6b7          	lui	a3,0x150ab
 65c:	aab68693          	addi	a3,a3,-1365 # 150aaaab <.LLST148+0x150a7d69>
 660:	cbd4                	sw	a3,20(a5)
 662:	151396b7          	lui	a3,0x15139
 666:	e3968693          	addi	a3,a3,-455 # 15138e39 <.LLST148+0x151360f7>
 66a:	cf94                	sw	a3,24(a5)
 66c:	151c76b7          	lui	a3,0x151c7
 670:	1c768693          	addi	a3,a3,455 # 151c71c7 <.LLST148+0x151c4485>
 674:	cfd4                	sw	a3,28(a5)
 676:	152556b7          	lui	a3,0x15255
 67a:	55568693          	addi	a3,a3,1365 # 15255555 <.LLST148+0x15252813>
 67e:	d394                	sw	a3,32(a5)
 680:	152e46b7          	lui	a3,0x152e4
 684:	8e468693          	addi	a3,a3,-1820 # 152e38e4 <.LLST148+0x152e0ba2>
 688:	d3d4                	sw	a3,36(a5)
 68a:	153726b7          	lui	a3,0x15372
 68e:	c7268693          	addi	a3,a3,-910 # 15371c72 <.LLST148+0x1536ef30>
 692:	d794                	sw	a3,40(a5)
 694:	154006b7          	lui	a3,0x15400
 698:	d7d4                	sw	a3,44(a5)
 69a:	1548e6b7          	lui	a3,0x1548e
 69e:	38e68693          	addi	a3,a3,910 # 1548e38e <.LLST148+0x1548b64c>
 6a2:	db94                	sw	a3,48(a5)
 6a4:	1551c6b7          	lui	a3,0x1551c
 6a8:	71c68693          	addi	a3,a3,1820 # 1551c71c <.LLST148+0x155199da>
 6ac:	dbd4                	sw	a3,52(a5)
 6ae:	155ab6b7          	lui	a3,0x155ab
 6b2:	aab68693          	addi	a3,a3,-1365 # 155aaaab <.LLST148+0x155a7d69>
 6b6:	df94                	sw	a3,56(a5)
 6b8:	156396b7          	lui	a3,0x15639
 6bc:	e3968693          	addi	a3,a3,-455 # 15638e39 <.LLST148+0x156360f7>
 6c0:	dfd4                	sw	a3,60(a5)
 6c2:	156c76b7          	lui	a3,0x156c7
 6c6:	1c768693          	addi	a3,a3,455 # 156c71c7 <.LLST148+0x156c4485>
 6ca:	c3b4                	sw	a3,64(a5)
 6cc:	157556b7          	lui	a3,0x15755
 6d0:	55568693          	addi	a3,a3,1365 # 15755555 <.LLST148+0x15752813>
 6d4:	c3f4                	sw	a3,68(a5)
 6d6:	157e46b7          	lui	a3,0x157e4
 6da:	8e468693          	addi	a3,a3,-1820 # 157e38e4 <.LLST148+0x157e0ba2>
 6de:	c7b4                	sw	a3,72(a5)
 6e0:	158726b7          	lui	a3,0x15872
 6e4:	c7268693          	addi	a3,a3,-910 # 15871c72 <.LLST148+0x1586ef30>
 6e8:	c7f4                	sw	a3,76(a5)
 6ea:	159006b7          	lui	a3,0x15900
 6ee:	cbb4                	sw	a3,80(a5)
 6f0:	000007b7          	lui	a5,0x0
 6f4:	a739a6b7          	lui	a3,0xa739a
 6f8:	00078793          	mv	a5,a5
 6fc:	6f268693          	addi	a3,a3,1778 # a739a6f2 <.LLST148+0xa73979b0>
 700:	c394                	sw	a3,0(a5)
 702:	a7c7a6b7          	lui	a3,0xa7c7a
 706:	78068693          	addi	a3,a3,1920 # a7c7a780 <.LLST148+0xa7c77a3e>
 70a:	c3d4                	sw	a3,4(a5)
 70c:	a855b6b7          	lui	a3,0xa855b
 710:	80e68693          	addi	a3,a3,-2034 # a855a80e <.LLST148+0xa8557acc>
 714:	c794                	sw	a3,8(a5)
 716:	a8e4b6b7          	lui	a3,0xa8e4b
 71a:	89c68693          	addi	a3,a3,-1892 # a8e4a89c <.LLST148+0xa8e47b5a>
 71e:	c7d4                	sw	a3,12(a5)
 720:	a972b6b7          	lui	a3,0xa972b
 724:	92b68693          	addi	a3,a3,-1749 # a972a92b <.LLST148+0xa9727be9>
 728:	cb94                	sw	a3,16(a5)
 72a:	aa00b6b7          	lui	a3,0xaa00b
 72e:	9b968693          	addi	a3,a3,-1607 # aa00a9b9 <.LLST148+0xaa007c77>
 732:	cbd4                	sw	a3,20(a5)
 734:	aa8eb6b7          	lui	a3,0xaa8eb
 738:	a4768693          	addi	a3,a3,-1465 # aa8eaa47 <.LLST148+0xaa8e7d05>
 73c:	cf94                	sw	a3,24(a5)
 73e:	ab1cb6b7          	lui	a3,0xab1cb
 742:	ad568693          	addi	a3,a3,-1323 # ab1caad5 <.LLST148+0xab1c7d93>
 746:	cfd4                	sw	a3,28(a5)
 748:	ababb6b7          	lui	a3,0xababb
 74c:	b6468693          	addi	a3,a3,-1180 # ababab64 <.LLST148+0xabab7e22>
 750:	d394                	sw	a3,32(a5)
 752:	ac39b6b7          	lui	a3,0xac39b
 756:	bf268693          	addi	a3,a3,-1038 # ac39abf2 <.LLST148+0xac397eb0>
 75a:	d3d4                	sw	a3,36(a5)
 75c:	76ed                	lui	a3,0xffffb
 75e:	c8068613          	addi	a2,a3,-896 # ffffac80 <.LLST148+0xffff7f3e>
 762:	02c79423          	sh	a2,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 766:	000007b7          	lui	a5,0x0
 76a:	a6e7a637          	lui	a2,0xa6e7a
 76e:	00078793          	mv	a5,a5
 772:	ce768693          	addi	a3,a3,-793
 776:	6a760613          	addi	a2,a2,1703 # a6e7a6a7 <.LLST148+0xa6e77965>
 77a:	c390                	sw	a2,0(a5)
 77c:	00d79223          	sh	a3,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 780:	6785                	lui	a5,0x1
 782:	80078793          	addi	a5,a5,-2048 # 800 <.L171+0x1e4>
 786:	000006b7          	lui	a3,0x0
 78a:	00f69023          	sh	a5,0(a3) # 0 <rf_pri_xtalfreq>
 78e:	000007b7          	lui	a5,0x0
 792:	00078793          	mv	a5,a5
 796:	c398                	sw	a4,0(a5)
 798:	c798                	sw	a4,8(a5)
 79a:	cb98                	sw	a4,16(a5)
 79c:	cf98                	sw	a4,24(a5)
 79e:	c3b8                	sw	a4,64(a5)
 7a0:	c7b8                	sw	a4,72(a5)
 7a2:	cbb8                	sw	a4,80(a5)
 7a4:	cfb8                	sw	a4,88(a5)
 7a6:	006de737          	lui	a4,0x6de
 7aa:	d0070713          	addi	a4,a4,-768 # 6ddd00 <.LLST148+0x6dafbe>
 7ae:	c3d8                	sw	a4,4(a5)
 7b0:	00219737          	lui	a4,0x219
 7b4:	1c070713          	addi	a4,a4,448 # 2191c0 <.LLST148+0x21647e>
 7b8:	c7d8                	sw	a4,12(a5)
 7ba:	ffd54737          	lui	a4,0xffd54
 7be:	68070713          	addi	a4,a4,1664 # ffd54680 <.LLST148+0xffd5193e>
 7c2:	cbd8                	sw	a4,20(a5)
 7c4:	ff890737          	lui	a4,0xff890
 7c8:	b4070713          	addi	a4,a4,-1216 # ff88fb40 <.LLST148+0xff88cdfe>
 7cc:	cfd8                	sw	a4,28(a5)
 7ce:	00557737          	lui	a4,0x557
 7d2:	30070713          	addi	a4,a4,768 # 557300 <.LLST148+0x5545be>
 7d6:	c3f8                	sw	a4,68(a5)
 7d8:	00092737          	lui	a4,0x92
 7dc:	7c070713          	addi	a4,a4,1984 # 927c0 <.LLST148+0x8fa7e>
 7e0:	c7f8                	sw	a4,76(a5)
 7e2:	ffbce737          	lui	a4,0xffbce
 7e6:	c8070713          	addi	a4,a4,-896 # ffbcdc80 <.LLST148+0xffbcaf3e>
 7ea:	cbf8                	sw	a4,84(a5)
 7ec:	ff709737          	lui	a4,0xff709
 7f0:	0207a023          	sw	zero,32(a5) # 20 <rf_pri_xtalfreq+0x20>
 7f4:	0207a423          	sw	zero,40(a5)
 7f8:	0207a823          	sw	zero,48(a5)
 7fc:	0207ac23          	sw	zero,56(a5)
 800:	0607a023          	sw	zero,96(a5)
 804:	0607a423          	sw	zero,104(a5)
 808:	0207a223          	sw	zero,36(a5)
 80c:	0207a623          	sw	zero,44(a5)
 810:	0207aa23          	sw	zero,52(a5)
 814:	0207ae23          	sw	zero,60(a5)
 818:	14070713          	addi	a4,a4,320 # ff709140 <.LLST148+0xff7063fe>
 81c:	b2d5                	j	200 <.L176>

0000081e <.L172>:
 81e:	4791                	li	a5,4
 820:	20f51163          	bne	a0,a5,a22 <.L173>
 824:	000007b7          	lui	a5,0x0
 828:	140896b7          	lui	a3,0x14089
 82c:	00078793          	mv	a5,a5
 830:	88968693          	addi	a3,a3,-1911 # 14088889 <.LLST148+0x14085b47>
 834:	c394                	sw	a3,0(a5)
 836:	141116b7          	lui	a3,0x14111
 83a:	11168693          	addi	a3,a3,273 # 14111111 <.LLST148+0x1410e3cf>
 83e:	c3d4                	sw	a3,4(a5)
 840:	1419a6b7          	lui	a3,0x1419a
 844:	99a68693          	addi	a3,a3,-1638 # 1419999a <.LLST148+0x14196c58>
 848:	c794                	sw	a3,8(a5)
 84a:	142226b7          	lui	a3,0x14222
 84e:	22268693          	addi	a3,a3,546 # 14222222 <.LLST148+0x1421f4e0>
 852:	c7d4                	sw	a3,12(a5)
 854:	142ab6b7          	lui	a3,0x142ab
 858:	aab68693          	addi	a3,a3,-1365 # 142aaaab <.LLST148+0x142a7d69>
 85c:	cb94                	sw	a3,16(a5)
 85e:	143336b7          	lui	a3,0x14333
 862:	33368693          	addi	a3,a3,819 # 14333333 <.LLST148+0x143305f1>
 866:	cbd4                	sw	a3,20(a5)
 868:	143bc6b7          	lui	a3,0x143bc
 86c:	bbc68693          	addi	a3,a3,-1092 # 143bbbbc <.LLST148+0x143b8e7a>
 870:	cf94                	sw	a3,24(a5)
 872:	144446b7          	lui	a3,0x14444
 876:	44468693          	addi	a3,a3,1092 # 14444444 <.LLST148+0x14441702>
 87a:	cfd4                	sw	a3,28(a5)
 87c:	144cd6b7          	lui	a3,0x144cd
 880:	ccd68693          	addi	a3,a3,-819 # 144ccccd <.LLST148+0x144c9f8b>
 884:	d394                	sw	a3,32(a5)
 886:	145556b7          	lui	a3,0x14555
 88a:	55568693          	addi	a3,a3,1365 # 14555555 <.LLST148+0x14552813>
 88e:	d3d4                	sw	a3,36(a5)
 890:	145de6b7          	lui	a3,0x145de
 894:	dde68693          	addi	a3,a3,-546 # 145dddde <.LLST148+0x145db09c>
 898:	d794                	sw	a3,40(a5)
 89a:	146666b7          	lui	a3,0x14666
 89e:	66668693          	addi	a3,a3,1638 # 14666666 <.LLST148+0x14663924>
 8a2:	d7d4                	sw	a3,44(a5)
 8a4:	146ef6b7          	lui	a3,0x146ef
 8a8:	eef68693          	addi	a3,a3,-273 # 146eeeef <.LLST148+0x146ec1ad>
 8ac:	db94                	sw	a3,48(a5)
 8ae:	147776b7          	lui	a3,0x14777
 8b2:	77768693          	addi	a3,a3,1911 # 14777777 <.LLST148+0x14774a35>
 8b6:	dbd4                	sw	a3,52(a5)
 8b8:	148006b7          	lui	a3,0x14800
 8bc:	df94                	sw	a3,56(a5)
 8be:	148896b7          	lui	a3,0x14889
 8c2:	88968693          	addi	a3,a3,-1911 # 14888889 <.LLST148+0x14885b47>
 8c6:	dfd4                	sw	a3,60(a5)
 8c8:	149116b7          	lui	a3,0x14911
 8cc:	11168693          	addi	a3,a3,273 # 14911111 <.LLST148+0x1490e3cf>
 8d0:	c3b4                	sw	a3,64(a5)
 8d2:	1499a6b7          	lui	a3,0x1499a
 8d6:	99a68693          	addi	a3,a3,-1638 # 1499999a <.LLST148+0x14996c58>
 8da:	c3f4                	sw	a3,68(a5)
 8dc:	14a226b7          	lui	a3,0x14a22
 8e0:	22268693          	addi	a3,a3,546 # 14a22222 <.LLST148+0x14a1f4e0>
 8e4:	c7b4                	sw	a3,72(a5)
 8e6:	14aab6b7          	lui	a3,0x14aab
 8ea:	aab68693          	addi	a3,a3,-1365 # 14aaaaab <.LLST148+0x14aa7d69>
 8ee:	c7f4                	sw	a3,76(a5)
 8f0:	14b336b7          	lui	a3,0x14b33
 8f4:	33368693          	addi	a3,a3,819 # 14b33333 <.LLST148+0x14b305f1>
 8f8:	cbb4                	sw	a3,80(a5)
 8fa:	000007b7          	lui	a5,0x0
 8fe:	a732a6b7          	lui	a3,0xa732a
 902:	00078793          	mv	a5,a5
 906:	6eb68693          	addi	a3,a3,1771 # a732a6eb <.LLST148+0xa73279a9>
 90a:	c394                	sw	a3,0(a5)
 90c:	a7c0a6b7          	lui	a3,0xa7c0a
 910:	77968693          	addi	a3,a3,1913 # a7c0a779 <.LLST148+0xa7c07a37>
 914:	c3d4                	sw	a3,4(a5)
 916:	a84fb6b7          	lui	a3,0xa84fb
 91a:	80868693          	addi	a3,a3,-2040 # a84fa808 <.LLST148+0xa84f7ac6>
 91e:	c794                	sw	a3,8(a5)
 920:	a8ddb6b7          	lui	a3,0xa8ddb
 924:	89668693          	addi	a3,a3,-1898 # a8dda896 <.LLST148+0xa8dd7b54>
 928:	c7d4                	sw	a3,12(a5)
 92a:	a96bb6b7          	lui	a3,0xa96bb
 92e:	92468693          	addi	a3,a3,-1756 # a96ba924 <.LLST148+0xa96b7be2>
 932:	cb94                	sw	a3,16(a5)
 934:	a9f9b6b7          	lui	a3,0xa9f9b
 938:	9b268693          	addi	a3,a3,-1614 # a9f9a9b2 <.LLST148+0xa9f97c70>
 93c:	cbd4                	sw	a3,20(a5)
 93e:	aa87b6b7          	lui	a3,0xaa87b
 942:	a4068693          	addi	a3,a3,-1472 # aa87aa40 <.LLST148+0xaa877cfe>
 946:	cf94                	sw	a3,24(a5)
 948:	ab16b6b7          	lui	a3,0xab16b
 94c:	acf68693          	addi	a3,a3,-1329 # ab16aacf <.LLST148+0xab167d8d>
 950:	cfd4                	sw	a3,28(a5)
 952:	aba4b6b7          	lui	a3,0xaba4b
 956:	b5d68693          	addi	a3,a3,-1187 # aba4ab5d <.LLST148+0xaba47e1b>
 95a:	d394                	sw	a3,32(a5)
 95c:	ac32b6b7          	lui	a3,0xac32b
 960:	beb68693          	addi	a3,a3,-1045 # ac32abeb <.LLST148+0xac327ea9>
 964:	d3d4                	sw	a3,36(a5)
 966:	76ed                	lui	a3,0xffffb
 968:	c7968613          	addi	a2,a3,-903 # ffffac79 <.LLST148+0xffff7f37>
 96c:	02c79423          	sh	a2,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 970:	000007b7          	lui	a5,0x0
 974:	a6e0a637          	lui	a2,0xa6e0a
 978:	00078793          	mv	a5,a5
 97c:	ce068693          	addi	a3,a3,-800
 980:	6a060613          	addi	a2,a2,1696 # a6e0a6a0 <.LLST148+0xa6e0795e>
 984:	c390                	sw	a2,0(a5)
 986:	00d79223          	sh	a3,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 98a:	6785                	lui	a5,0x1
 98c:	000006b7          	lui	a3,0x0
 990:	85578793          	addi	a5,a5,-1963 # 855 <.L172+0x37>
 994:	00f69023          	sh	a5,0(a3) # 0 <rf_pri_xtalfreq>
 998:	000007b7          	lui	a5,0x0
 99c:	002dc6b7          	lui	a3,0x2dc
 9a0:	00078793          	mv	a5,a5
 9a4:	6c068693          	addi	a3,a3,1728 # 2dc6c0 <.LLST148+0x2d997e>
 9a8:	d398                	sw	a4,32(a5)
 9aa:	d798                	sw	a4,40(a5)
 9ac:	db98                	sw	a4,48(a5)
 9ae:	df98                	sw	a4,56(a5)
 9b0:	d3b8                	sw	a4,96(a5)
 9b2:	d7b8                	sw	a4,104(a5)
 9b4:	d7d4                	sw	a3,44(a5)
 9b6:	007a1737          	lui	a4,0x7a1
 9ba:	ffe186b7          	lui	a3,0xffe18
 9be:	20070713          	addi	a4,a4,512 # 7a1200 <.LLST148+0x79e4be>
 9c2:	b8068693          	addi	a3,a3,-1152 # ffe17b80 <.LLST148+0xffe14e3e>
 9c6:	d3d8                	sw	a4,36(a5)
 9c8:	dbd4                	sw	a3,52(a5)
 9ca:	d3f8                	sw	a4,100(a5)
 9cc:	ff9536b7          	lui	a3,0xff953
 9d0:	ffc2f737          	lui	a4,0xffc2f
 9d4:	04068693          	addi	a3,a3,64 # ff953040 <.LLST148+0xff9502fe>
 9d8:	70070713          	addi	a4,a4,1792 # ffc2f700 <.LLST148+0xffc2c9be>
 9dc:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_xtalfreq>
 9e0:	0007a423          	sw	zero,8(a5)
 9e4:	0007a823          	sw	zero,16(a5)
 9e8:	0007ac23          	sw	zero,24(a5)
 9ec:	0407a023          	sw	zero,64(a5)
 9f0:	0407a423          	sw	zero,72(a5)
 9f4:	0407a823          	sw	zero,80(a5)
 9f8:	0407ac23          	sw	zero,88(a5)
 9fc:	0007a223          	sw	zero,4(a5)
 a00:	0007a623          	sw	zero,12(a5)
 a04:	0007aa23          	sw	zero,20(a5)
 a08:	0007ae23          	sw	zero,28(a5)
 a0c:	dfd4                	sw	a3,60(a5)
 a0e:	0407a223          	sw	zero,68(a5)
 a12:	0407a623          	sw	zero,76(a5)
 a16:	0407aa23          	sw	zero,84(a5)
 a1a:	0407ae23          	sw	zero,92(a5)
 a1e:	d7f8                	sw	a4,108(a5)
 a20:	8082                	ret

00000a22 <.L173>:
 a22:	4795                	li	a5,5
 a24:	a0f512e3          	bne	a0,a5,428 <.L167>
 a28:	000007b7          	lui	a5,0x0
 a2c:	0f6906b7          	lui	a3,0xf690
 a30:	00078793          	mv	a5,a5
 a34:	69068693          	addi	a3,a3,1680 # f690690 <.LLST148+0xf68d94e>
 a38:	c394                	sw	a3,0(a5)
 a3a:	0f6f96b7          	lui	a3,0xf6f9
 a3e:	6f968693          	addi	a3,a3,1785 # f6f96f9 <.LLST148+0xf6f69b7>
 a42:	c3d4                	sw	a3,4(a5)
 a44:	0f7626b7          	lui	a3,0xf762
 a48:	76268693          	addi	a3,a3,1890 # f762762 <.LLST148+0xf75fa20>
 a4c:	c794                	sw	a3,8(a5)
 a4e:	0f7cb6b7          	lui	a3,0xf7cb
 a52:	7cb68693          	addi	a3,a3,1995 # f7cb7cb <.LLST148+0xf7c8a89>
 a56:	c7d4                	sw	a3,12(a5)
 a58:	0f8356b7          	lui	a3,0xf835
 a5c:	83568693          	addi	a3,a3,-1995 # f834835 <.LLST148+0xf831af3>
 a60:	cb94                	sw	a3,16(a5)
 a62:	0f89e6b7          	lui	a3,0xf89e
 a66:	89e68693          	addi	a3,a3,-1890 # f89d89e <.LLST148+0xf89ab5c>
 a6a:	cbd4                	sw	a3,20(a5)
 a6c:	0f9076b7          	lui	a3,0xf907
 a70:	90768693          	addi	a3,a3,-1785 # f906907 <.LLST148+0xf903bc5>
 a74:	cf94                	sw	a3,24(a5)
 a76:	0f9706b7          	lui	a3,0xf970
 a7a:	97068693          	addi	a3,a3,-1680 # f96f970 <.LLST148+0xf96cc2e>
 a7e:	cfd4                	sw	a3,28(a5)
 a80:	0f9d96b7          	lui	a3,0xf9d9
 a84:	9d968693          	addi	a3,a3,-1575 # f9d89d9 <.LLST148+0xf9d5c97>
 a88:	d394                	sw	a3,32(a5)
 a8a:	0fa426b7          	lui	a3,0xfa42
 a8e:	a4268693          	addi	a3,a3,-1470 # fa41a42 <.LLST148+0xfa3ed00>
 a92:	d3d4                	sw	a3,36(a5)
 a94:	0faab6b7          	lui	a3,0xfaab
 a98:	aab68693          	addi	a3,a3,-1365 # faaaaab <.LLST148+0xfaa7d69>
 a9c:	d794                	sw	a3,40(a5)
 a9e:	0fb146b7          	lui	a3,0xfb14
 aa2:	b1468693          	addi	a3,a3,-1260 # fb13b14 <.LLST148+0xfb10dd2>
 aa6:	d7d4                	sw	a3,44(a5)
 aa8:	0fb7d6b7          	lui	a3,0xfb7d
 aac:	b7d68693          	addi	a3,a3,-1155 # fb7cb7d <.LLST148+0xfb79e3b>
 ab0:	db94                	sw	a3,48(a5)
 ab2:	0fbe66b7          	lui	a3,0xfbe6
 ab6:	be668693          	addi	a3,a3,-1050 # fbe5be6 <.LLST148+0xfbe2ea4>
 aba:	dbd4                	sw	a3,52(a5)
 abc:	0fc4f6b7          	lui	a3,0xfc4f
 ac0:	c4f68693          	addi	a3,a3,-945 # fc4ec4f <.LLST148+0xfc4bf0d>
 ac4:	df94                	sw	a3,56(a5)
 ac6:	0fcb86b7          	lui	a3,0xfcb8
 aca:	cb868693          	addi	a3,a3,-840 # fcb7cb8 <.LLST148+0xfcb4f76>
 ace:	dfd4                	sw	a3,60(a5)
 ad0:	0fd216b7          	lui	a3,0xfd21
 ad4:	d2168693          	addi	a3,a3,-735 # fd20d21 <.LLST148+0xfd1dfdf>
 ad8:	c3b4                	sw	a3,64(a5)
 ada:	0fd8a6b7          	lui	a3,0xfd8a
 ade:	d8a68693          	addi	a3,a3,-630 # fd89d8a <.LLST148+0xfd87048>
 ae2:	c3f4                	sw	a3,68(a5)
 ae4:	0fdf36b7          	lui	a3,0xfdf3
 ae8:	df368693          	addi	a3,a3,-525 # fdf2df3 <.LLST148+0xfdf00b1>
 aec:	c7b4                	sw	a3,72(a5)
 aee:	0fe5c6b7          	lui	a3,0xfe5c
 af2:	e5c68693          	addi	a3,a3,-420 # fe5be5c <.LLST148+0xfe5911a>
 af6:	c7f4                	sw	a3,76(a5)
 af8:	0fec56b7          	lui	a3,0xfec5
 afc:	ec568693          	addi	a3,a3,-315 # fec4ec5 <.LLST148+0xfec2183>
 b00:	cbb4                	sw	a3,80(a5)
 b02:	000007b7          	lui	a5,0x0
 b06:	a734a6b7          	lui	a3,0xa734a
 b0a:	00078793          	mv	a5,a5
 b0e:	6ed68693          	addi	a3,a3,1773 # a734a6ed <.LLST148+0xa73479ab>
 b12:	c394                	sw	a3,0(a5)
 b14:	a7c2a6b7          	lui	a3,0xa7c2a
 b18:	77b68693          	addi	a3,a3,1915 # a7c2a77b <.LLST148+0xa7c27a39>
 b1c:	c3d4                	sw	a3,4(a5)
 b1e:	a850b6b7          	lui	a3,0xa850b
 b22:	80968693          	addi	a3,a3,-2039 # a850a809 <.LLST148+0xa8507ac7>
 b26:	c794                	sw	a3,8(a5)
 b28:	a8deb6b7          	lui	a3,0xa8deb
 b2c:	89768693          	addi	a3,a3,-1897 # a8dea897 <.LLST148+0xa8de7b55>
 b30:	c7d4                	sw	a3,12(a5)
 b32:	a96db6b7          	lui	a3,0xa96db
 b36:	92568693          	addi	a3,a3,-1755 # a96da925 <.LLST148+0xa96d7be3>
 b3a:	cb94                	sw	a3,16(a5)
 b3c:	a9fbb6b7          	lui	a3,0xa9fbb
 b40:	9b468693          	addi	a3,a3,-1612 # a9fba9b4 <.LLST148+0xa9fb7c72>
 b44:	cbd4                	sw	a3,20(a5)
 b46:	aa89b6b7          	lui	a3,0xaa89b
 b4a:	a4268693          	addi	a3,a3,-1470 # aa89aa42 <.LLST148+0xaa897d00>
 b4e:	cf94                	sw	a3,24(a5)
 b50:	ab17b6b7          	lui	a3,0xab17b
 b54:	ad068693          	addi	a3,a3,-1328 # ab17aad0 <.LLST148+0xab177d8e>
 b58:	cfd4                	sw	a3,28(a5)
 b5a:	aba5b6b7          	lui	a3,0xaba5b
 b5e:	b5e68693          	addi	a3,a3,-1186 # aba5ab5e <.LLST148+0xaba57e1c>
 b62:	d394                	sw	a3,32(a5)
 b64:	ac34b6b7          	lui	a3,0xac34b
 b68:	bec68693          	addi	a3,a3,-1044 # ac34abec <.LLST148+0xac347eaa>
 b6c:	d3d4                	sw	a3,36(a5)
 b6e:	76ed                	lui	a3,0xffffb
 b70:	c7b68613          	addi	a2,a3,-901 # ffffac7b <.LLST148+0xffff7f39>
 b74:	02c79423          	sh	a2,40(a5) # 28 <rf_pri_xtalfreq+0x28>
 b78:	000007b7          	lui	a5,0x0
 b7c:	a6e2a637          	lui	a2,0xa6e2a
 b80:	00078793          	mv	a5,a5
 b84:	ce268693          	addi	a3,a3,-798
 b88:	6a260613          	addi	a2,a2,1698 # a6e2a6a2 <.LLST148+0xa6e27960>
 b8c:	c390                	sw	a2,0(a5)
 b8e:	00d79223          	sh	a3,4(a5) # 4 <rf_pri_xtalfreq+0x4>
 b92:	6785                	lui	a5,0x1
 b94:	ad578793          	addi	a5,a5,-1323 # ad5 <.L173+0xb3>
 b98:	000006b7          	lui	a3,0x0
 b9c:	00f69023          	sh	a5,0(a3) # 0 <rf_pri_xtalfreq>
 ba0:	000007b7          	lui	a5,0x0
 ba4:	00078793          	mv	a5,a5
 ba8:	d798                	sw	a4,40(a5)
 baa:	db98                	sw	a4,48(a5)
 bac:	df98                	sw	a4,56(a5)
 bae:	c3b8                	sw	a4,64(a5)
 bb0:	006ad737          	lui	a4,0x6ad
 bb4:	fc070713          	addi	a4,a4,-64 # 6acfc0 <.LLST148+0x6aa27e>
 bb8:	d7d8                	sw	a4,44(a5)
 bba:	001e8737          	lui	a4,0x1e8
 bbe:	48070713          	addi	a4,a4,1152 # 1e8480 <.LLST148+0x1e573e>
 bc2:	dbd8                	sw	a4,52(a5)
 bc4:	ffd24737          	lui	a4,0xffd24
 bc8:	94070713          	addi	a4,a4,-1728 # ffd23940 <.LLST148+0xffd20bfe>
 bcc:	dfd8                	sw	a4,60(a5)
 bce:	ff85f737          	lui	a4,0xff85f
 bd2:	e0070713          	addi	a4,a4,-512 # ff85ee00 <.LLST148+0xff85c0be>
 bd6:	0007a023          	sw	zero,0(a5) # 0 <rf_pri_xtalfreq>
 bda:	0007a423          	sw	zero,8(a5)
 bde:	0007a823          	sw	zero,16(a5)
 be2:	0007ac23          	sw	zero,24(a5)
 be6:	0207a023          	sw	zero,32(a5)
 bea:	0407a423          	sw	zero,72(a5)
 bee:	0407a823          	sw	zero,80(a5)
 bf2:	0407ac23          	sw	zero,88(a5)
 bf6:	0607a023          	sw	zero,96(a5)
 bfa:	0607a423          	sw	zero,104(a5)
 bfe:	0007a223          	sw	zero,4(a5)
 c02:	0007a623          	sw	zero,12(a5)
 c06:	0007aa23          	sw	zero,20(a5)
 c0a:	0007ae23          	sw	zero,28(a5)
 c0e:	0207a223          	sw	zero,36(a5)
 c12:	c3f8                	sw	a4,68(a5)
 c14:	0407a623          	sw	zero,76(a5)
 c18:	0407aa23          	sw	zero,84(a5)
 c1c:	0407ae23          	sw	zero,92(a5)
 c20:	de2ff06f          	j	202 <.L174>

Disassembly of section .text.rf_pri_get_vco_freq_cw:

00000000 <rf_pri_get_vco_freq_cw>:
   0:	77fd                	lui	a5,0xfffff
   2:	69c78793          	addi	a5,a5,1692 # fffff69c <.LLST148+0xffffc95a>
   6:	953e                	add	a0,a0,a5

00000008 <.LVL525>:
   8:	1141                	addi	sp,sp,-16
   a:	8109                	srli	a0,a0,0x2

0000000c <.LVL526>:
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL526+0x2>
  16:	000007b7          	lui	a5,0x0
  1a:	0007a603          	lw	a2,0(a5) # 0 <rf_pri_get_vco_freq_cw>
  1e:	0047a683          	lw	a3,4(a5)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL526+0x16>
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL526+0x1e>

00000032 <.LVL529>:
  32:	47d1                	li	a5,20
  34:	00a7d363          	bge	a5,a0,3a <.L179>
  38:	4551                	li	a0,20

0000003a <.L179>:
  3a:	000007b7          	lui	a5,0x0
  3e:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_get_vco_freq_cw>
  42:	0521                	addi	a0,a0,8

00000044 <.LVL531>:
  44:	0506                	slli	a0,a0,0x1

00000046 <.LVL532>:
  46:	953e                	add	a0,a0,a5
  48:	00c55503          	lhu	a0,12(a0) # c <.LVL526>
  4c:	40b2                	lw	ra,12(sp)
  4e:	0ff57513          	andi	a0,a0,255
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.rf_pri_get_vco_idac_cw:

00000000 <rf_pri_get_vco_idac_cw>:
   0:	77fd                	lui	a5,0xfffff
   2:	69c78793          	addi	a5,a5,1692 # fffff69c <.LLST148+0xffffc95a>
   6:	953e                	add	a0,a0,a5

00000008 <.LVL534>:
   8:	1141                	addi	sp,sp,-16
   a:	8109                	srli	a0,a0,0x2

0000000c <.LVL535>:
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL535+0x2>
  16:	000007b7          	lui	a5,0x0
  1a:	0007a603          	lw	a2,0(a5) # 0 <rf_pri_get_vco_idac_cw>
  1e:	0047a683          	lw	a3,4(a5)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL535+0x16>
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL535+0x1e>

00000032 <.LVL538>:
  32:	47d1                	li	a5,20
  34:	00a7d363          	bge	a5,a0,3a <.L182>
  38:	4551                	li	a0,20

0000003a <.L182>:
  3a:	000007b7          	lui	a5,0x0
  3e:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_get_vco_idac_cw>
  42:	0521                	addi	a0,a0,8

00000044 <.LVL540>:
  44:	0506                	slli	a0,a0,0x1

00000046 <.LVL541>:
  46:	953e                	add	a0,a0,a5
  48:	00c55503          	lhu	a0,12(a0)
  4c:	40b2                	lw	ra,12(sp)
  4e:	8121                	srli	a0,a0,0x8
  50:	897d                	andi	a0,a0,31
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.rf_pri_update_txgain_tempos:

00000000 <rf_pri_update_txgain_tempos>:
   0:	000007b7          	lui	a5,0x0
   4:	00a7a023          	sw	a0,0(a5) # 0 <rf_pri_update_txgain_tempos>
   8:	8082                	ret

Disassembly of section .text.rf_pri_get_txgain_max:

00000000 <rf_pri_get_txgain_max>:
   0:	00000737          	lui	a4,0x0
   4:	000007b7          	lui	a5,0x0
   8:	00072503          	lw	a0,0(a4) # 0 <rf_pri_get_txgain_max>
   c:	0187a783          	lw	a5,24(a5) # 18 <rf_pri_get_txgain_max+0x18>
  10:	00000737          	lui	a4,0x0
  14:	97aa                	add	a5,a5,a0
  16:	00072503          	lw	a0,0(a4) # 0 <rf_pri_get_txgain_max>
  1a:	953e                	add	a0,a0,a5
  1c:	8082                	ret

Disassembly of section .text.rf_pri_get_txgain_min:

00000000 <rf_pri_get_txgain_min>:
   0:	00000737          	lui	a4,0x0
   4:	000007b7          	lui	a5,0x0
   8:	00072503          	lw	a0,0(a4) # 0 <rf_pri_get_txgain_min>
   c:	1bc7a783          	lw	a5,444(a5) # 1bc <.LVL75>
  10:	00000737          	lui	a4,0x0
  14:	97aa                	add	a5,a5,a0
  16:	00072503          	lw	a0,0(a4) # 0 <rf_pri_get_txgain_min>
  1a:	953e                	add	a0,a0,a5
  1c:	8082                	ret

Disassembly of section .text.rf_pri_get_txgain_index:

00000000 <rf_pri_get_txgain_index>:
   0:	e191                	bnez	a1,4 <.L188>
   2:	1509                	addi	a0,a0,-30

00000004 <.L188>:
   4:	000007b7          	lui	a5,0x0
   8:	0007a583          	lw	a1,0(a5) # 0 <rf_pri_get_txgain_index>

0000000c <.LVL545>:
   c:	00000737          	lui	a4,0x0
  10:	000007b7          	lui	a5,0x0
  14:	0007a803          	lw	a6,0(a5) # 0 <rf_pri_get_txgain_index>
  18:	00070713          	mv	a4,a4
  1c:	4781                	li	a5,0
  1e:	4641                	li	a2,16

00000020 <.L190>:
  20:	4f14                	lw	a3,24(a4)
  22:	96ae                	add	a3,a3,a1
  24:	96c2                	add	a3,a3,a6
  26:	00d55763          	bge	a0,a3,34 <.L187>
  2a:	0785                	addi	a5,a5,1
  2c:	0771                	addi	a4,a4,28
  2e:	fec799e3          	bne	a5,a2,20 <.L190>
  32:	47bd                	li	a5,15

00000034 <.L187>:
  34:	853e                	mv	a0,a5

00000036 <.LVL549>:
  36:	8082                	ret

Disassembly of section .text.rf_pri_query_txgain_table:

00000000 <rf_pri_query_txgain_table>:
   0:	47bd                	li	a5,15
   2:	00a7f363          	bgeu	a5,a0,8 <.L193>
   6:	453d                	li	a0,15

00000008 <.L193>:
   8:	00155713          	srli	a4,a0,0x1
   c:	479d                	li	a5,7
   e:	8f99                	sub	a5,a5,a4
  10:	c19c                	sw	a5,0(a1)
  12:	47f1                	li	a5,28
  14:	02f50533          	mul	a0,a0,a5

00000018 <.LVL552>:
  18:	000007b7          	lui	a5,0x0
  1c:	00078793          	mv	a5,a5
  20:	953e                	add	a0,a0,a5
  22:	495c                	lw	a5,20(a0)
  24:	c21c                	sw	a5,0(a2)
  26:	8082                	ret

Disassembly of section .text.rf_pri_update_dvga_os:

00000000 <rf_pri_update_dvga_os>:
   0:	000007b7          	lui	a5,0x0
   4:	00000637          	lui	a2,0x0
   8:	00078793          	mv	a5,a5
   c:	4701                	li	a4,0
   e:	00060613          	mv	a2,a2
  12:	45c1                	li	a1,16

00000014 <.L195>:
  14:	4bd4                	lw	a3,20(a5)
  16:	00e60833          	add	a6,a2,a4
  1a:	0705                	addi	a4,a4,1
  1c:	96aa                	add	a3,a3,a0
  1e:	00d80023          	sb	a3,0(a6)
  22:	07f1                	addi	a5,a5,28
  24:	feb718e3          	bne	a4,a1,14 <.L195>
  28:	8082                	ret

Disassembly of section .text.rf_pri_tx_gain_comp:

00000000 <rf_pri_tx_gain_comp>:
   0:	00000837          	lui	a6,0x0
   4:	00082783          	lw	a5,0(a6) # 0 <rf_pri_tx_gain_comp>
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	4705                	li	a4,1
   e:	00080813          	mv	a6,a6
  12:	04e79863          	bne	a5,a4,62 <.L198>
  16:	000007b7          	lui	a5,0x0
  1a:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_tx_gain_comp>
  1e:	04f55e63          	bge	a0,a5,7a <.L199>
  22:	17ed                	addi	a5,a5,-5
  24:	04a7db63          	bge	a5,a0,7a <.L199>

00000028 <.L200>:
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_tx_gain_comp>
  30:	5759                	li	a4,-10
  32:	02e787b3          	mul	a5,a5,a4
  36:	00000737          	lui	a4,0x0
  3a:	00f72023          	sw	a5,0(a4) # 0 <rf_pri_tx_gain_comp>
  3e:	000007b7          	lui	a5,0x0
  42:	00078503          	lb	a0,0(a5) # 0 <rf_pri_tx_gain_comp>

00000046 <.L223>:
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.L223>

0000004e <.LVL558>:
  4e:	40b2                	lw	ra,12(sp)
  50:	00000537          	lui	a0,0x0
  54:	00050513          	mv	a0,a0
  58:	0141                	addi	sp,sp,16
  5a:	00000317          	auipc	t1,0x0
  5e:	00030067          	jr	t1 # 5a <.LVL558+0xc>

00000062 <.L198>:
  62:	577d                	li	a4,-1
  64:	00e79b63          	bne	a5,a4,7a <.L199>
  68:	000007b7          	lui	a5,0x0
  6c:	0007a783          	lw	a5,0(a5) # 0 <rf_pri_tx_gain_comp>
  70:	00a7d563          	bge	a5,a0,7a <.L199>
  74:	0795                	addi	a5,a5,5
  76:	faf549e3          	blt	a0,a5,28 <.L200>

0000007a <.L199>:
  7a:	00000637          	lui	a2,0x0
  7e:	00060793          	mv	a5,a2
  82:	4731                	li	a4,12
  84:	00060613          	mv	a2,a2
  88:	56fd                	li	a3,-1

0000008a <.L202>:
  8a:	5b8c                	lw	a1,48(a5)
  8c:	00b55663          	bge	a0,a1,98 <.L201>
  90:	177d                	addi	a4,a4,-1
  92:	17f1                	addi	a5,a5,-4
  94:	fed71be3          	bne	a4,a3,8a <.L202>

00000098 <.L201>:
  98:	00075363          	bgez	a4,9e <.L203>
  9c:	4701                	li	a4,0

0000009e <.L203>:
  9e:	00271693          	slli	a3,a4,0x2
  a2:	96b2                	add	a3,a3,a2
  a4:	000005b7          	lui	a1,0x0
  a8:	02200893          	li	a7,34
  ac:	ffc70793          	addi	a5,a4,-4

000000b0 <.LVL563>:
  b0:	4294                	lw	a3,0(a3)
  b2:	00058593          	mv	a1,a1
  b6:	06a8d063          	bge	a7,a0,116 <.L204>
  ba:	02300513          	li	a0,35

000000be <.LVL564>:
  be:	00d54763          	blt	a0,a3,cc <.L221>
  c2:	0705                	addi	a4,a4,1

000000c4 <.LVL565>:
  c4:	00271693          	slli	a3,a4,0x2
  c8:	96b2                	add	a3,a3,a2
  ca:	4294                	lw	a3,0(a3)

000000cc <.L221>:
  cc:	c194                	sw	a3,0(a1)

000000ce <.L206>:
  ce:	00000737          	lui	a4,0x0
  d2:	00072683          	lw	a3,0(a4) # 0 <rf_pri_tx_gain_comp>
  d6:	00070713          	mv	a4,a4
  da:	04f6dc63          	bge	a3,a5,132 <.L209>
  de:	4685                	li	a3,1

000000e0 <.L222>:
  e0:	00d82023          	sw	a3,0(a6)

000000e4 <.L210>:
  e4:	c31c                	sw	a5,0(a4)
  e6:	04f05a63          	blez	a5,13a <.L211>
  ea:	0785                	addi	a5,a5,1

000000ec <.LVL567>:
  ec:	0017f513          	andi	a0,a5,1
  f0:	e111                	bnez	a0,f4 <.L212>
  f2:	557d                	li	a0,-1

000000f4 <.L212>:
  f4:	8785                	srai	a5,a5,0x1

000000f6 <.L213>:
  f6:	00000737          	lui	a4,0x0
  fa:	00f72023          	sw	a5,0(a4) # 0 <rf_pri_tx_gain_comp>
  fe:	00000737          	lui	a4,0x0
 102:	00a72023          	sw	a0,0(a4) # 0 <rf_pri_tx_gain_comp>
 106:	5759                	li	a4,-10
 108:	02e787b3          	mul	a5,a5,a4

0000010c <.LVL570>:
 10c:	00000737          	lui	a4,0x0
 110:	00f72023          	sw	a5,0(a4) # 0 <rf_pri_tx_gain_comp>
 114:	bf0d                	j	46 <.L223>

00000116 <.L204>:
 116:	00a6c563          	blt	a3,a0,120 <.L207>
 11a:	ffb70793          	addi	a5,a4,-5

0000011e <.LVL572>:
 11e:	b77d                	j	cc <.L221>

00000120 <.L207>:
 120:	0705                	addi	a4,a4,1

00000122 <.LVL574>:
 122:	070a                	slli	a4,a4,0x2

00000124 <.LVL575>:
 124:	9732                	add	a4,a4,a2
 126:	4318                	lw	a4,0(a4)
 128:	00e8d363          	bge	a7,a4,12e <.L208>
 12c:	8736                	mv	a4,a3

0000012e <.L208>:
 12e:	c198                	sw	a4,0(a1)
 130:	bf79                	j	ce <.L206>

00000132 <.L209>:
 132:	fad7d9e3          	bge	a5,a3,e4 <.L210>
 136:	56fd                	li	a3,-1
 138:	b765                	j	e0 <.L222>

0000013a <.L211>:
 13a:	4501                	li	a0,0
 13c:	dfcd                	beqz	a5,f6 <.L213>
 13e:	0017f713          	andi	a4,a5,1
 142:	557d                	li	a0,-1
 144:	c311                	beqz	a4,148 <.L214>
 146:	4505                	li	a0,1

00000148 <.L214>:
 148:	17fd                	addi	a5,a5,-1

0000014a <.LVL578>:
 14a:	4709                	li	a4,2
 14c:	02e7c7b3          	div	a5,a5,a4

00000150 <.LVL579>:
 150:	b75d                	j	f6 <.L213>

Disassembly of section .text.rf_pri_config_bandwidth:

00000000 <rf_pri_config_bandwidth>:
   0:	400016b7          	lui	a3,0x40001
   4:	0846a783          	lw	a5,132(a3) # 40001084 <.LLST148+0x3fffe342>

00000008 <.LVL581>:
   8:	fd000737          	lui	a4,0xfd000
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4

00000010 <.LVL582>:
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL583>:
  12:	8d5d                	or	a0,a0,a5

00000014 <.LVL584>:
  14:	08a6a223          	sw	a0,132(a3)
  18:	8082                	ret

Disassembly of section .text.rf_pri_txcal:

00000000 <rf_pri_txcal>:
   0:	711d                	addi	sp,sp,-96
   2:	ce86                	sw	ra,92(sp)
   4:	cca2                	sw	s0,88(sp)
   6:	caa6                	sw	s1,84(sp)
   8:	40001437          	lui	s0,0x40001
   c:	c8ca                	sw	s2,80(sp)
   e:	c6ce                	sw	s3,76(sp)
  10:	c4d2                	sw	s4,72(sp)
  12:	c2d6                	sw	s5,68(sp)
  14:	c0da                	sw	s6,64(sp)
  16:	de5e                	sw	s7,60(sp)
  18:	dc62                	sw	s8,56(sp)
  1a:	da66                	sw	s9,52(sp)
  1c:	d86a                	sw	s10,48(sp)
  1e:	d66e                	sw	s11,44(sp)
  20:	485c                	lw	a5,20(s0)

00000022 <.LVL586>:
  22:	ff100737          	lui	a4,0xff100
  26:	177d                	addi	a4,a4,-1
  28:	8ff9                	and	a5,a5,a4

0000002a <.LVL587>:
  2a:	00500737          	lui	a4,0x500
  2e:	8fd9                	or	a5,a5,a4

00000030 <.LVL588>:
  30:	c85c                	sw	a5,20(s0)
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL588+0x2>

0000003a <.LBB167>:
  3a:	4515                	li	a0,5
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LBB167+0x2>

00000044 <.LBE167>:
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LBE167>

0000004c <.LVL591>:
  4c:	4c5c                	lw	a5,28(s0)

0000004e <.LVL592>:
  4e:	670d                	lui	a4,0x3
  50:	03d00513          	li	a0,61
  54:	8fd9                	or	a5,a5,a4

00000056 <.LVL593>:
  56:	cc5c                	sw	a5,28(s0)
  58:	08442783          	lw	a5,132(s0) # 40001084 <.LLST148+0x3fffe342>
  5c:	80000737          	lui	a4,0x80000
  60:	ffc40a37          	lui	s4,0xffc40
  64:	8fd9                	or	a5,a5,a4
  66:	08f42223          	sw	a5,132(s0)
  6a:	507c                	lw	a5,100(s0)
  6c:	00400737          	lui	a4,0x400
  70:	fff90ab7          	lui	s5,0xfff90
  74:	8fd9                	or	a5,a5,a4
  76:	d07c                	sw	a5,100(s0)
  78:	547c                	lw	a5,108(s0)

0000007a <.LBB169>:
  7a:	d0000b37          	lui	s6,0xd0000
  7e:	fe090bb7          	lui	s7,0xfe090

00000082 <.LBE169>:
  82:	ff87f713          	andi	a4,a5,-8
  86:	000007b7          	lui	a5,0x0

0000008a <.LVL599>:
  8a:	0007d783          	lhu	a5,0(a5) # 0 <rf_pri_txcal>

0000008e <.LBB173>:
  8e:	ffc104b7          	lui	s1,0xffc10

00000092 <.LBE173>:
  92:	491d                	li	s2,7
  94:	8fd9                	or	a5,a5,a4

00000096 <.LVL600>:
  96:	d47c                	sw	a5,108(s0)
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LVL600+0x2>

000000a0 <.LVL601>:
  a0:	100007b7          	lui	a5,0x10000
  a4:	00000837          	lui	a6,0x0
  a8:	000008b7          	lui	a7,0x0
  ac:	17fd                	addi	a5,a5,-1
  ae:	00080993          	mv	s3,a6
  b2:	00088c13          	mv	s8,a7
  b6:	c63e                	sw	a5,12(sp)
  b8:	1a7d                	addi	s4,s4,-1
  ba:	1afd                	addi	s5,s5,-1

000000bc <.LBB186>:
  bc:	1b7d                	addi	s6,s6,-1
  be:	1bfd                	addi	s7,s7,-1

000000c0 <.LBB187>:
  c0:	14fd                	addi	s1,s1,-1

000000c2 <.L230>:
  c2:	507c                	lw	a5,100(s0)

000000c4 <.LVL603>:
  c4:	4732                	lw	a4,12(sp)

000000c6 <.LBB188>:
  c6:	4529                	li	a0,10

000000c8 <.LBE188>:
  c8:	8f7d                	and	a4,a4,a5

000000ca <.LVL604>:
  ca:	0009a783          	lw	a5,0(s3) # f0000000 <.LLST148+0xefffd2be>
  ce:	07f2                	slli	a5,a5,0x1c
  d0:	8fd9                	or	a5,a5,a4

000000d2 <.LVL605>:
  d2:	0089a703          	lw	a4,8(s3)
  d6:	0147f7b3          	and	a5,a5,s4

000000da <.LVL606>:
  da:	074a                	slli	a4,a4,0x12
  dc:	8fd9                	or	a5,a5,a4

000000de <.LVL607>:
  de:	d07c                	sw	a5,100(s0)
  e0:	4c3c                	lw	a5,88(s0)
  e2:	0157f733          	and	a4,a5,s5
  e6:	0049a783          	lw	a5,4(s3)

000000ea <.LVL609>:
  ea:	07c2                	slli	a5,a5,0x10
  ec:	8fd9                	or	a5,a5,a4

000000ee <.LVL610>:
  ee:	cc3c                	sw	a5,88(s0)

000000f0 <.LBB191>:
  f0:	443c                	lw	a5,72(s0)

000000f2 <.LVL612>:
  f2:	0167f733          	and	a4,a5,s6

000000f6 <.LVL613>:
  f6:	000c2783          	lw	a5,0(s8)
  fa:	07f2                	slli	a5,a5,0x1c
  fc:	8fd9                	or	a5,a5,a4
  fe:	00cc2703          	lw	a4,12(s8)

00000102 <.LVL614>:
 102:	0177f7b3          	and	a5,a5,s7
 106:	0752                	slli	a4,a4,0x14
 108:	8fd9                	or	a5,a5,a4
 10a:	00070737          	lui	a4,0x70
 10e:	8fd9                	or	a5,a5,a4

00000110 <.LVL615>:
 110:	c43c                	sw	a5,72(s0)

00000112 <.LBB192>:
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.LBB192>

0000011a <.LBE192>:
 11a:	00c9ac83          	lw	s9,12(s3)

0000011e <.LBB193>:
 11e:	001cdd13          	srli	s10,s9,0x1

00000122 <.L229>:
 122:	21442783          	lw	a5,532(s0)

00000126 <.LVL620>:
 126:	8007f793          	andi	a5,a5,-2048

0000012a <.LVL621>:
 12a:	00fce7b3          	or	a5,s9,a5

0000012e <.LVL622>:
 12e:	20f42a23          	sw	a5,532(s0)
 132:	21842783          	lw	a5,536(s0)
 136:	8007f793          	andi	a5,a5,-2048

0000013a <.LVL624>:
 13a:	00fce7b3          	or	a5,s9,a5

0000013e <.LVL625>:
 13e:	20f42c23          	sw	a5,536(s0)

00000142 <.LBE195>:
 142:	00000097          	auipc	ra,0x0
 146:	000080e7          	jalr	ra # 142 <.LBE195>

0000014a <.LVL627>:
 14a:	00000097          	auipc	ra,0x0
 14e:	000080e7          	jalr	ra # 14a <.LVL627>

00000152 <.LBB197>:
 152:	4529                	li	a0,10
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.LBB197+0x2>

0000015c <.LBE197>:
 15c:	40000593          	li	a1,1024
 160:	4505                	li	a0,1
 162:	00000097          	auipc	ra,0x0
 166:	000080e7          	jalr	ra # 162 <.LBE197+0x6>

0000016a <.LVL630>:
 16a:	40a55d93          	srai	s11,a0,0xa

0000016e <.LVL631>:
 16e:	000007b7          	lui	a5,0x0
 172:	86ee                	mv	a3,s11
 174:	866a                	mv	a2,s10
 176:	85e6                	mv	a1,s9
 178:	00078513          	mv	a0,a5
 17c:	00000097          	auipc	ra,0x0
 180:	000080e7          	jalr	ra # 17c <.LVL631+0xe>

00000184 <.LVL632>:
 184:	14000713          	li	a4,320
 188:	0bf00313          	li	t1,191
 18c:	01b75963          	bge	a4,s11,19e <.L226>
 190:	41ac8cb3          	sub	s9,s9,s10

00000194 <.L227>:
 194:	000d0963          	beqz	s10,1a6 <.L228>
 198:	001d5d13          	srli	s10,s10,0x1
 19c:	b759                	j	122 <.L229>

0000019e <.L226>:
 19e:	01b34463          	blt	t1,s11,1a6 <.L228>
 1a2:	9cea                	add	s9,s9,s10
 1a4:	bfc5                	j	194 <.L227>

000001a6 <.L228>:
 1a6:	6585                	lui	a1,0x1
 1a8:	4505                	li	a0,1
 1aa:	00000097          	auipc	ra,0x0
 1ae:	000080e7          	jalr	ra # 1aa <.L228+0x4>

000001b2 <.LVL637>:
 1b2:	03d00693          	li	a3,61
 1b6:	4641                	li	a2,16
 1b8:	02000593          	li	a1,32
 1bc:	4501                	li	a0,0
 1be:	00000097          	auipc	ra,0x0
 1c2:	000080e7          	jalr	ra # 1be <.LVL637+0xc>

000001c6 <.LVL638>:
 1c6:	8caa                	mv	s9,a0

000001c8 <.LVL639>:
 1c8:	85aa                	mv	a1,a0
 1ca:	4501                	li	a0,0

000001cc <.LVL640>:
 1cc:	00000097          	auipc	ra,0x0
 1d0:	000080e7          	jalr	ra # 1cc <.LVL640>

000001d4 <.LVL641>:
 1d4:	03d00693          	li	a3,61
 1d8:	4641                	li	a2,16
 1da:	02000593          	li	a1,32
 1de:	4505                	li	a0,1
 1e0:	00000097          	auipc	ra,0x0
 1e4:	000080e7          	jalr	ra # 1e0 <.LVL641+0xc>

000001e8 <.LBB199>:
 1e8:	583c                	lw	a5,112(s0)

000001ea <.LVL643>:
 1ea:	ce2a                	sw	a0,28(sp)

000001ec <.LBE199>:
 1ec:	03d00693          	li	a3,61

000001f0 <.LBB200>:
 1f0:	0097f733          	and	a4,a5,s1
 1f4:	01051793          	slli	a5,a0,0x10

000001f8 <.LVL644>:
 1f8:	8fd9                	or	a5,a5,a4

000001fa <.LVL645>:
 1fa:	d83c                	sw	a5,112(s0)

000001fc <.LBE200>:
 1fc:	4609                	li	a2,2
 1fe:	85e6                	mv	a1,s9
 200:	4501                	li	a0,0

00000202 <.LVL647>:
 202:	00000097          	auipc	ra,0x0
 206:	000080e7          	jalr	ra # 202 <.LVL647>

0000020a <.LVL648>:
 20a:	85aa                	mv	a1,a0
 20c:	cc2a                	sw	a0,24(sp)
 20e:	4501                	li	a0,0

00000210 <.LVL649>:
 210:	00000097          	auipc	ra,0x0
 214:	000080e7          	jalr	ra # 210 <.LVL649>

00000218 <.LVL650>:
 218:	07a00693          	li	a3,122
 21c:	08000613          	li	a2,128
 220:	40000593          	li	a1,1024
 224:	4509                	li	a0,2
 226:	00000097          	auipc	ra,0x0
 22a:	000080e7          	jalr	ra # 226 <.LVL650+0xe>

0000022e <.LVL651>:
 22e:	8caa                	mv	s9,a0

00000230 <.LVL652>:
 230:	85aa                	mv	a1,a0
 232:	4509                	li	a0,2

00000234 <.LVL653>:
 234:	00000097          	auipc	ra,0x0
 238:	000080e7          	jalr	ra # 234 <.LVL653>

0000023c <.LVL654>:
 23c:	07a00693          	li	a3,122
 240:	04000613          	li	a2,64
 244:	4581                	li	a1,0
 246:	450d                	li	a0,3
 248:	00000097          	auipc	ra,0x0
 24c:	000080e7          	jalr	ra # 248 <.LVL654+0xc>

00000250 <.LVL655>:
 250:	85aa                	mv	a1,a0
 252:	450d                	li	a0,3

00000254 <.LVL656>:
 254:	00000097          	auipc	ra,0x0
 258:	000080e7          	jalr	ra # 254 <.LVL656>

0000025c <.LVL657>:
 25c:	07a00693          	li	a3,122
 260:	04000613          	li	a2,64
 264:	85e6                	mv	a1,s9
 266:	4509                	li	a0,2
 268:	00000097          	auipc	ra,0x0
 26c:	000080e7          	jalr	ra # 268 <.LVL657+0xc>

00000270 <.LVL658>:
 270:	85aa                	mv	a1,a0
 272:	ca2a                	sw	a0,20(sp)
 274:	4509                	li	a0,2

00000276 <.LVL659>:
 276:	00000097          	auipc	ra,0x0
 27a:	000080e7          	jalr	ra # 276 <.LVL659>

0000027e <.LVL660>:
 27e:	07a00693          	li	a3,122
 282:	02000613          	li	a2,32
 286:	4581                	li	a1,0
 288:	450d                	li	a0,3
 28a:	00000097          	auipc	ra,0x0
 28e:	000080e7          	jalr	ra # 28a <.LVL660+0xc>

00000292 <.LVL661>:
 292:	85aa                	mv	a1,a0
 294:	c82a                	sw	a0,16(sp)
 296:	450d                	li	a0,3

00000298 <.LVL662>:
 298:	00000097          	auipc	ra,0x0
 29c:	000080e7          	jalr	ra # 298 <.LVL662>

000002a0 <.LVL663>:
 2a0:	00000db7          	lui	s11,0x0
 2a4:	000da683          	lw	a3,0(s11) # 0 <rf_pri_txcal>
 2a8:	00c90793          	addi	a5,s2,12 # ffff000c <.LLST148+0xfffed2ca>
 2ac:	078e                	slli	a5,a5,0x3
 2ae:	97b6                	add	a5,a5,a3
 2b0:	4794                	lw	a3,8(a5)
 2b2:	4362                	lw	t1,24(sp)
 2b4:	75fd                	lui	a1,0xfffff
 2b6:	fc06f693          	andi	a3,a3,-64
 2ba:	03f37613          	andi	a2,t1,63
 2be:	8ed1                	or	a3,a3,a2
 2c0:	c794                	sw	a3,8(a5)

000002c2 <.LVL664>:
 2c2:	4e72                	lw	t3,28(sp)
 2c4:	4794                	lw	a3,8(a5)
 2c6:	03f58593          	addi	a1,a1,63 # fffff03f <.LLST148+0xffffc2fd>
 2ca:	03fe7613          	andi	a2,t3,63
 2ce:	061a                	slli	a2,a2,0x6
 2d0:	8eed                	and	a3,a3,a1
 2d2:	8ed1                	or	a3,a3,a2
 2d4:	c794                	sw	a3,8(a5)
 2d6:	4ed2                	lw	t4,20(sp)
 2d8:	4794                	lw	a3,8(a5)
 2da:	ff801cb7          	lui	s9,0xff801
 2de:	7ffef613          	andi	a2,t4,2047
 2e2:	1cfd                	addi	s9,s9,-1
 2e4:	0632                	slli	a2,a2,0xc
 2e6:	0196f6b3          	and	a3,a3,s9
 2ea:	8ed1                	or	a3,a3,a2
 2ec:	c794                	sw	a3,8(a5)
 2ee:	47d4                	lw	a3,12(a5)
 2f0:	4742                	lw	a4,16(sp)
 2f2:	00000537          	lui	a0,0x0
 2f6:	c006f693          	andi	a3,a3,-1024
 2fa:	3ff77613          	andi	a2,a4,1023
 2fe:	8ed1                	or	a3,a3,a2
 300:	c7d4                	sw	a3,12(a5)
 302:	8672                	mv	a2,t3
 304:	86f6                	mv	a3,t4
 306:	859a                	mv	a1,t1
 308:	00050513          	mv	a0,a0
 30c:	00000097          	auipc	ra,0x0
 310:	000080e7          	jalr	ra # 30c <.LVL664+0x4a>

00000314 <.LVL665>:
 314:	197d                	addi	s2,s2,-1

00000316 <.LVL666>:
 316:	57fd                	li	a5,-1
 318:	09c1                	addi	s3,s3,16
 31a:	038c0c13          	addi	s8,s8,56
 31e:	daf912e3          	bne	s2,a5,c2 <.L230>
 322:	00000097          	auipc	ra,0x0
 326:	000080e7          	jalr	ra # 322 <.LVL666+0xc>

0000032a <.LVL667>:
 32a:	4c5c                	lw	a5,28(s0)

0000032c <.LVL668>:
 32c:	7775                	lui	a4,0xffffd
 32e:	177d                	addi	a4,a4,-1
 330:	8ff9                	and	a5,a5,a4

00000332 <.LVL669>:
 332:	cc5c                	sw	a5,28(s0)
 334:	00000097          	auipc	ra,0x0
 338:	000080e7          	jalr	ra # 334 <.LVL669+0x2>

0000033c <.LVL670>:
 33c:	485c                	lw	a5,20(s0)

0000033e <.LVL671>:
 33e:	00f00737          	lui	a4,0xf00
 342:	8fd9                	or	a5,a5,a4

00000344 <.LVL672>:
 344:	c85c                	sw	a5,20(s0)
 346:	583c                	lw	a5,112(s0)
 348:	000da683          	lw	a3,0(s11)
 34c:	c1000737          	lui	a4,0xc1000
 350:	177d                	addi	a4,a4,-1
 352:	8f7d                	and	a4,a4,a5
 354:	0806a783          	lw	a5,128(a3)

00000358 <.LVL674>:
 358:	03f7f793          	andi	a5,a5,63

0000035c <.LVL675>:
 35c:	07e2                	slli	a5,a5,0x18

0000035e <.LVL676>:
 35e:	8fd9                	or	a5,a5,a4
 360:	8fe5                	and	a5,a5,s1
 362:	0806a483          	lw	s1,128(a3)
 366:	007ff6b7          	lui	a3,0x7ff
 36a:	8099                	srli	s1,s1,0x6
 36c:	03f4f493          	andi	s1,s1,63
 370:	04c2                	slli	s1,s1,0x10
 372:	8cdd                	or	s1,s1,a5

00000374 <.LVL677>:
 374:	d824                	sw	s1,112(s0)
 376:	60042783          	lw	a5,1536(s0)

0000037a <.LVL678>:
 37a:	000da703          	lw	a4,0(s11)
 37e:	0197f7b3          	and	a5,a5,s9

00000382 <.LVL679>:
 382:	08072c83          	lw	s9,128(a4) # c1000080 <.LLST148+0xc0ffd33e>

00000386 <.LVL680>:
 386:	00dcfcb3          	and	s9,s9,a3

0000038a <.LVL681>:
 38a:	00fcecb3          	or	s9,s9,a5
 38e:	08472783          	lw	a5,132(a4)
 392:	c00cfc93          	andi	s9,s9,-1024
 396:	3ff7f793          	andi	a5,a5,1023
 39a:	0197ecb3          	or	s9,a5,s9

0000039e <.LVL682>:
 39e:	61942023          	sw	s9,1536(s0)
 3a2:	40f6                	lw	ra,92(sp)
 3a4:	4466                	lw	s0,88(sp)
 3a6:	44d6                	lw	s1,84(sp)
 3a8:	4946                	lw	s2,80(sp)

000003aa <.LVL683>:
 3aa:	49b6                	lw	s3,76(sp)
 3ac:	4a26                	lw	s4,72(sp)
 3ae:	4a96                	lw	s5,68(sp)
 3b0:	4b06                	lw	s6,64(sp)
 3b2:	5bf2                	lw	s7,60(sp)
 3b4:	5c62                	lw	s8,56(sp)
 3b6:	5cd2                	lw	s9,52(sp)

000003b8 <.LVL684>:
 3b8:	5d42                	lw	s10,48(sp)
 3ba:	5db2                	lw	s11,44(sp)
 3bc:	6125                	addi	sp,sp,96
 3be:	8082                	ret

Disassembly of section .text.rf_pri_roscal:

00000000 <rf_pri_roscal>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	40001437          	lui	s0,0x40001
  1a:	5014                	lw	a3,32(s0)

0000001c <.LVL686>:
  1c:	77d1                	lui	a5,0xffff4
  1e:	fff78713          	addi	a4,a5,-1 # ffff3fff <.LLST148+0xffff12bd>
  22:	485c                	lw	a5,20(s0)

00000024 <.LVL687>:
  24:	1006f693          	andi	a3,a3,256
  28:	8ff9                	and	a5,a5,a4

0000002a <.LVL688>:
  2a:	ee91                	bnez	a3,46 <.L237>

0000002c <.L240>:
  2c:	c85c                	sw	a5,20(s0)

0000002e <.LBE205>:
  2e:	50b2                	lw	ra,44(sp)
  30:	5422                	lw	s0,40(sp)
  32:	5492                	lw	s1,36(sp)
  34:	5902                	lw	s2,32(sp)
  36:	49f2                	lw	s3,28(sp)
  38:	4a62                	lw	s4,24(sp)
  3a:	4ad2                	lw	s5,20(sp)
  3c:	4b42                	lw	s6,16(sp)
  3e:	4bb2                	lw	s7,12(sp)
  40:	4c22                	lw	s8,8(sp)
  42:	6145                	addi	sp,sp,48
  44:	8082                	ret

00000046 <.L237>:
  46:	6711                	lui	a4,0x4
  48:	8fd9                	or	a5,a5,a4

0000004a <.LVL691>:
  4a:	c85c                	sw	a5,20(s0)
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL691+0x2>

00000054 <.LBB207>:
  54:	450d                	li	a0,3
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LBB207+0x2>

0000005e <.LBE207>:
  5e:	4c5c                	lw	a5,28(s0)

00000060 <.LVL694>:
  60:	000004b7          	lui	s1,0x0
  64:	ffc10ab7          	lui	s5,0xffc10
  68:	2007e793          	ori	a5,a5,512
  6c:	cc5c                	sw	a5,28(s0)
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL694+0xe>

00000076 <.LVL696>:
  76:	443c                	lw	a5,72(s0)

00000078 <.LVL697>:
  78:	7765                	lui	a4,0xffff9
  7a:	177d                	addi	a4,a4,-1
  7c:	8ff9                	and	a5,a5,a4

0000007e <.LVL698>:
  7e:	6719                	lui	a4,0x6
  80:	30070713          	addi	a4,a4,768 # 6300 <.LLST148+0x35be>
  84:	8fd9                	or	a5,a5,a4

00000086 <.LVL699>:
  86:	c43c                	sw	a5,72(s0)
  88:	4505                	li	a0,1
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL699+0x4>

00000092 <.LVL700>:
  92:	0004a703          	lw	a4,0(s1) # 0 <rf_pri_roscal>
  96:	03f57993          	andi	s3,a0,63
  9a:	1afd                	addi	s5,s5,-1
  9c:	533c                	lw	a5,96(a4)
  9e:	01051a13          	slli	s4,a0,0x10
  a2:	892a                	mv	s2,a0

000000a4 <.LVL701>:
  a4:	fc07f793          	andi	a5,a5,-64
  a8:	0137e7b3          	or	a5,a5,s3
  ac:	d33c                	sw	a5,96(a4)
  ae:	16c42783          	lw	a5,364(s0) # 4000116c <.LLST148+0x3fffe42a>

000000b2 <.LVL702>:
  b2:	85aa                	mv	a1,a0
  b4:	00000537          	lui	a0,0x0

000000b8 <.LVL703>:
  b8:	0157f7b3          	and	a5,a5,s5

000000bc <.LVL704>:
  bc:	0147e7b3          	or	a5,a5,s4

000000c0 <.LVL705>:
  c0:	16f42623          	sw	a5,364(s0)
  c4:	00050513          	mv	a0,a0
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL705+0x8>

000000d0 <.LVL706>:
  d0:	0004a703          	lw	a4,0(s1)
  d4:	00000537          	lui	a0,0x0
  d8:	85ca                	mv	a1,s2
  da:	4f3c                	lw	a5,88(a4)
  dc:	00050513          	mv	a0,a0
  e0:	c1000c37          	lui	s8,0xc1000
  e4:	fc07f793          	andi	a5,a5,-64
  e8:	0137e7b3          	or	a5,a5,s3
  ec:	cf3c                	sw	a5,88(a4)
  ee:	16c42783          	lw	a5,364(s0)

000000f2 <.LVL707>:
  f2:	1c7d                	addi	s8,s8,-1
  f4:	7b71                	lui	s6,0xffffc
  f6:	fc07f793          	andi	a5,a5,-64

000000fa <.LVL708>:
  fa:	00f967b3          	or	a5,s2,a5

000000fe <.LVL709>:
  fe:	16f42623          	sw	a5,364(s0)
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL709+0x4>

0000010a <.LVL710>:
 10a:	0004a703          	lw	a4,0(s1)
 10e:	00000537          	lui	a0,0x0
 112:	85ca                	mv	a1,s2
 114:	4b3c                	lw	a5,80(a4)
 116:	00050513          	mv	a0,a0
 11a:	0ffb0b13          	addi	s6,s6,255 # ffffc0ff <.LLST148+0xffff93bd>
 11e:	fc07f793          	andi	a5,a5,-64
 122:	0137e7b3          	or	a5,a5,s3
 126:	cb3c                	sw	a5,80(a4)
 128:	16842783          	lw	a5,360(s0)

0000012c <.LVL711>:
 12c:	0157fab3          	and	s5,a5,s5
 130:	015a6a33          	or	s4,s4,s5

00000134 <.LVL712>:
 134:	17442423          	sw	s4,360(s0)
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.LVL712+0x4>

00000140 <.LVL713>:
 140:	0004a703          	lw	a4,0(s1)
 144:	00000537          	lui	a0,0x0
 148:	85ca                	mv	a1,s2
 14a:	473c                	lw	a5,72(a4)
 14c:	00050513          	mv	a0,a0
 150:	7a7d                	lui	s4,0xfffff

00000152 <.LVL714>:
 152:	fc07f793          	andi	a5,a5,-64
 156:	0137e7b3          	or	a5,a5,s3
 15a:	c73c                	sw	a5,72(a4)
 15c:	16842783          	lw	a5,360(s0)

00000160 <.LVL715>:
 160:	03fa0a13          	addi	s4,s4,63 # fffff03f <.LLST148+0xffffc2fd>
 164:	fc07f793          	andi	a5,a5,-64

00000168 <.LVL716>:
 168:	00f967b3          	or	a5,s2,a5

0000016c <.LVL717>:
 16c:	16f42423          	sw	a5,360(s0)
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL717+0x4>

00000178 <.LVL718>:
 178:	4501                	li	a0,0
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.LVL718+0x2>

00000182 <.LVL719>:
 182:	0004a703          	lw	a4,0(s1)
 186:	03f57993          	andi	s3,a0,63
 18a:	099a                	slli	s3,s3,0x6
 18c:	533c                	lw	a5,96(a4)
 18e:	01851b93          	slli	s7,a0,0x18
 192:	892a                	mv	s2,a0

00000194 <.LVL720>:
 194:	0147f7b3          	and	a5,a5,s4
 198:	0137e7b3          	or	a5,a5,s3
 19c:	d33c                	sw	a5,96(a4)
 19e:	16c42783          	lw	a5,364(s0)

000001a2 <.LVL721>:
 1a2:	85aa                	mv	a1,a0
 1a4:	00000537          	lui	a0,0x0

000001a8 <.LVL722>:
 1a8:	0187f7b3          	and	a5,a5,s8

000001ac <.LVL723>:
 1ac:	0177e7b3          	or	a5,a5,s7

000001b0 <.LVL724>:
 1b0:	16f42623          	sw	a5,364(s0)
 1b4:	00050513          	mv	a0,a0
 1b8:	00000097          	auipc	ra,0x0
 1bc:	000080e7          	jalr	ra # 1b8 <.LVL724+0x8>

000001c0 <.LVL725>:
 1c0:	0004a703          	lw	a4,0(s1)
 1c4:	00891a93          	slli	s5,s2,0x8
 1c8:	00000537          	lui	a0,0x0
 1cc:	4f3c                	lw	a5,88(a4)
 1ce:	85ca                	mv	a1,s2
 1d0:	00050513          	mv	a0,a0
 1d4:	0147f7b3          	and	a5,a5,s4
 1d8:	0137e7b3          	or	a5,a5,s3
 1dc:	cf3c                	sw	a5,88(a4)
 1de:	16c42783          	lw	a5,364(s0)

000001e2 <.LVL726>:
 1e2:	0167f7b3          	and	a5,a5,s6

000001e6 <.LVL727>:
 1e6:	0157e7b3          	or	a5,a5,s5

000001ea <.LVL728>:
 1ea:	16f42623          	sw	a5,364(s0)
 1ee:	00000097          	auipc	ra,0x0
 1f2:	000080e7          	jalr	ra # 1ee <.LVL728+0x4>

000001f6 <.LVL729>:
 1f6:	0004a703          	lw	a4,0(s1)
 1fa:	00000537          	lui	a0,0x0
 1fe:	85ca                	mv	a1,s2
 200:	4b3c                	lw	a5,80(a4)
 202:	00050513          	mv	a0,a0
 206:	0147f7b3          	and	a5,a5,s4
 20a:	0137e7b3          	or	a5,a5,s3
 20e:	cb3c                	sw	a5,80(a4)
 210:	16842783          	lw	a5,360(s0)

00000214 <.LVL730>:
 214:	0187fc33          	and	s8,a5,s8
 218:	018bebb3          	or	s7,s7,s8

0000021c <.LVL731>:
 21c:	17742423          	sw	s7,360(s0)
 220:	00000097          	auipc	ra,0x0
 224:	000080e7          	jalr	ra # 220 <.LVL731+0x4>

00000228 <.LVL732>:
 228:	0004a703          	lw	a4,0(s1)
 22c:	00000537          	lui	a0,0x0
 230:	85ca                	mv	a1,s2
 232:	473c                	lw	a5,72(a4)
 234:	00050513          	mv	a0,a0
 238:	0147fa33          	and	s4,a5,s4
 23c:	013a69b3          	or	s3,s4,s3
 240:	05372423          	sw	s3,72(a4)
 244:	16842783          	lw	a5,360(s0)

00000248 <.LVL733>:
 248:	0167fb33          	and	s6,a5,s6
 24c:	016aeab3          	or	s5,s5,s6

00000250 <.LVL734>:
 250:	17542423          	sw	s5,360(s0)
 254:	00000097          	auipc	ra,0x0
 258:	000080e7          	jalr	ra # 254 <.LVL734+0x4>

0000025c <.LVL735>:
 25c:	00000097          	auipc	ra,0x0
 260:	000080e7          	jalr	ra # 25c <.LVL735>

00000264 <.LVL736>:
 264:	485c                	lw	a5,20(s0)

00000266 <.LVL737>:
 266:	6731                	lui	a4,0xc
 268:	8fd9                	or	a5,a5,a4

0000026a <.LVL738>:
 26a:	b3c9                	j	2c <.L240>

Disassembly of section .text.rf_pri_rccal:

00000000 <rf_pri_rccal>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	40001937          	lui	s2,0x40001
   e:	02092683          	lw	a3,32(s2) # 40001020 <.LLST148+0x3fffe2de>

00000012 <.LVL740>:
  12:	fff407b7          	lui	a5,0xfff40
  16:	fff78713          	addi	a4,a5,-1 # fff3ffff <.LLST148+0xfff3d2bd>
  1a:	01492783          	lw	a5,20(s2)

0000001e <.LVL741>:
  1e:	4006f693          	andi	a3,a3,1024
  22:	8ff9                	and	a5,a5,a4

00000024 <.LVL742>:
  24:	ea89                	bnez	a3,36 <.L242>

00000026 <.LVL743>:
  26:	00f92a23          	sw	a5,20(s2)

0000002a <.L241>:
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	4492                	lw	s1,4(sp)
  30:	4902                	lw	s2,0(sp)
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

00000036 <.L242>:
  36:	00040737          	lui	a4,0x40
  3a:	8fd9                	or	a5,a5,a4

0000003c <.LVL745>:
  3c:	00f92a23          	sw	a5,20(s2)
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL745+0x4>

00000048 <.LBB219>:
  48:	4511                	li	a0,4
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LBB219+0x2>

00000052 <.LBE219>:
  52:	08492783          	lw	a5,132(s2)

00000056 <.LVL748>:
  56:	fd000737          	lui	a4,0xfd000
  5a:	177d                	addi	a4,a4,-1
  5c:	8ff9                	and	a5,a5,a4

0000005e <.LVL749>:
  5e:	02000737          	lui	a4,0x2000
  62:	8fd9                	or	a5,a5,a4

00000064 <.LVL750>:
  64:	08f92223          	sw	a5,132(s2)
  68:	08c92703          	lw	a4,140(s2)

0000006c <.LVL751>:
  6c:	6785                	lui	a5,0x1
  6e:	4505                	li	a0,1
  70:	8f5d                	or	a4,a4,a5
  72:	08e92623          	sw	a4,140(s2)
  76:	01c92703          	lw	a4,28(s2)
  7a:	80078793          	addi	a5,a5,-2048 # 800 <.LASF442+0x1b>
  7e:	8fd9                	or	a5,a5,a4

00000080 <.LVL754>:
  80:	00f92e23          	sw	a5,28(s2)
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL754+0x4>

0000008c <.LVL755>:
  8c:	84aa                	mv	s1,a0
  8e:	4501                	li	a0,0
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL755+0x4>

00000098 <.LVL757>:
  98:	08092703          	lw	a4,128(s2)
  9c:	00000937          	lui	s2,0x0
  a0:	00092783          	lw	a5,0(s2) # 0 <rf_pri_rccal>
  a4:	01875613          	srli	a2,a4,0x18
  a8:	03f67613          	andi	a2,a2,63
  ac:	4794                	lw	a3,8(a5)
  ae:	75fd                	lui	a1,0xfffff
  b0:	03f58593          	addi	a1,a1,63 # fffff03f <.LLST148+0xffffc2fd>
  b4:	fc06f693          	andi	a3,a3,-64
  b8:	8ed1                	or	a3,a3,a2
  ba:	c794                	sw	a3,8(a5)
  bc:	4794                	lw	a3,8(a5)
  be:	01075613          	srli	a2,a4,0x10
  c2:	03f67613          	andi	a2,a2,63
  c6:	061a                	slli	a2,a2,0x6
  c8:	8eed                	and	a3,a3,a1
  ca:	8ed1                	or	a3,a3,a2
  cc:	c794                	sw	a3,8(a5)
  ce:	4794                	lw	a3,8(a5)
  d0:	00875613          	srli	a2,a4,0x8
  d4:	fffc15b7          	lui	a1,0xfffc1
  d8:	15fd                	addi	a1,a1,-1
  da:	03f67613          	andi	a2,a2,63
  de:	0632                	slli	a2,a2,0xc
  e0:	8eed                	and	a3,a3,a1
  e2:	8ed1                	or	a3,a3,a2
  e4:	c794                	sw	a3,8(a5)
  e6:	4794                	lw	a3,8(a5)
  e8:	ff040637          	lui	a2,0xff040
  ec:	167d                	addi	a2,a2,-1
  ee:	03f77713          	andi	a4,a4,63
  f2:	8ef1                	and	a3,a3,a2
  f4:	074a                	slli	a4,a4,0x12
  f6:	8f55                	or	a4,a4,a3
  f8:	c798                	sw	a4,8(a5)
  fa:	478c                	lw	a1,8(a5)
  fc:	4790                	lw	a2,8(a5)
  fe:	4794                	lw	a3,8(a5)
 100:	4798                	lw	a4,8(a5)
 102:	842a                	mv	s0,a0
 104:	8231                	srli	a2,a2,0xc
 106:	8299                	srli	a3,a3,0x6
 108:	8349                	srli	a4,a4,0x12
 10a:	00000537          	lui	a0,0x0
 10e:	03f77713          	andi	a4,a4,63
 112:	03f6f693          	andi	a3,a3,63
 116:	03f67613          	andi	a2,a2,63
 11a:	03f5f593          	andi	a1,a1,63
 11e:	00050513          	mv	a0,a0
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.LVL757+0x8a>

0000012a <.LVL759>:
 12a:	00092703          	lw	a4,0(s2)
 12e:	471c                	lw	a5,8(a4)
 130:	4714                	lw	a3,8(a4)
 132:	03f7f793          	andi	a5,a5,63

00000136 <.LVL760>:
 136:	8299                	srli	a3,a3,0x6
 138:	03f6f693          	andi	a3,a3,63
 13c:	00d7f663          	bgeu	a5,a3,148 <.L244>
 140:	471c                	lw	a5,8(a4)

00000142 <.LVL761>:
 142:	8399                	srli	a5,a5,0x6
 144:	03f7f793          	andi	a5,a5,63

00000148 <.L244>:
 148:	4714                	lw	a3,8(a4)
 14a:	82b1                	srli	a3,a3,0xc
 14c:	03f6f693          	andi	a3,a3,63
 150:	00d7f663          	bgeu	a5,a3,15c <.L245>
 154:	471c                	lw	a5,8(a4)

00000156 <.LVL763>:
 156:	83b1                	srli	a5,a5,0xc
 158:	03f7f793          	andi	a5,a5,63

0000015c <.L245>:
 15c:	4714                	lw	a3,8(a4)
 15e:	82c9                	srli	a3,a3,0x12
 160:	03f6f693          	andi	a3,a3,63
 164:	00d7f663          	bgeu	a5,a3,170 <.L246>
 168:	471c                	lw	a5,8(a4)

0000016a <.LVL765>:
 16a:	83c9                	srli	a5,a5,0x12
 16c:	03f7f793          	andi	a5,a5,63

00000170 <.L246>:
 170:	02700613          	li	a2,39
 174:	46e1                	li	a3,24
 176:	00f65563          	bge	a2,a5,180 <.L247>
 17a:	03f00693          	li	a3,63
 17e:	8e9d                	sub	a3,a3,a5

00000180 <.L247>:
 180:	4710                	lw	a2,8(a4)
 182:	471c                	lw	a5,8(a4)

00000184 <.LVL768>:
 184:	0ff6f693          	andi	a3,a3,255

00000188 <.LVL769>:
 188:	9636                	add	a2,a2,a3
 18a:	03f67613          	andi	a2,a2,63
 18e:	fc07f793          	andi	a5,a5,-64
 192:	8fd1                	or	a5,a5,a2
 194:	c71c                	sw	a5,8(a4)
 196:	471c                	lw	a5,8(a4)
 198:	4710                	lw	a2,8(a4)
 19a:	75fd                	lui	a1,0xfffff
 19c:	8399                	srli	a5,a5,0x6
 19e:	97b6                	add	a5,a5,a3
 1a0:	03f58593          	addi	a1,a1,63 # fffff03f <.LLST148+0xffffc2fd>
 1a4:	03f7f793          	andi	a5,a5,63
 1a8:	8e6d                	and	a2,a2,a1
 1aa:	079a                	slli	a5,a5,0x6
 1ac:	8fd1                	or	a5,a5,a2
 1ae:	c71c                	sw	a5,8(a4)
 1b0:	471c                	lw	a5,8(a4)
 1b2:	4710                	lw	a2,8(a4)
 1b4:	fffc15b7          	lui	a1,0xfffc1
 1b8:	83b1                	srli	a5,a5,0xc
 1ba:	97b6                	add	a5,a5,a3
 1bc:	15fd                	addi	a1,a1,-1
 1be:	03f7f793          	andi	a5,a5,63
 1c2:	8e6d                	and	a2,a2,a1
 1c4:	07b2                	slli	a5,a5,0xc
 1c6:	8fd1                	or	a5,a5,a2
 1c8:	c71c                	sw	a5,8(a4)
 1ca:	471c                	lw	a5,8(a4)
 1cc:	ff040637          	lui	a2,0xff040
 1d0:	167d                	addi	a2,a2,-1
 1d2:	83c9                	srli	a5,a5,0x12
 1d4:	97b6                	add	a5,a5,a3
 1d6:	4714                	lw	a3,8(a4)
 1d8:	03f7f793          	andi	a5,a5,63
 1dc:	07ca                	slli	a5,a5,0x12
 1de:	8ef1                	and	a3,a3,a2
 1e0:	8fd5                	or	a5,a5,a3
 1e2:	c71c                	sw	a5,8(a4)

000001e4 <.LVL770>:
 1e4:	4708                	lw	a0,8(a4)

000001e6 <.LBB221>:
 1e6:	03f57513          	andi	a0,a0,63

000001ea <.LVL772>:
 1ea:	00000097          	auipc	ra,0x0
 1ee:	000080e7          	jalr	ra # 1ea <.LVL772>

000001f2 <.LBE221>:
 1f2:	00092783          	lw	a5,0(s2)
 1f6:	4501                	li	a0,0
 1f8:	478c                	lw	a1,8(a5)
 1fa:	8199                	srli	a1,a1,0x6
 1fc:	03f5f593          	andi	a1,a1,63
 200:	00000097          	auipc	ra,0x0
 204:	000080e7          	jalr	ra # 200 <.LBE221+0xe>

00000208 <.LVL774>:
 208:	00092783          	lw	a5,0(s2)
 20c:	00000537          	lui	a0,0x0
 210:	00050513          	mv	a0,a0
 214:	478c                	lw	a1,8(a5)
 216:	4790                	lw	a2,8(a5)
 218:	4794                	lw	a3,8(a5)
 21a:	4798                	lw	a4,8(a5)
 21c:	8231                	srli	a2,a2,0xc
 21e:	8299                	srli	a3,a3,0x6
 220:	8349                	srli	a4,a4,0x12
 222:	03f77713          	andi	a4,a4,63
 226:	03f6f693          	andi	a3,a3,63
 22a:	03f67613          	andi	a2,a2,63
 22e:	03f5f593          	andi	a1,a1,63
 232:	00000097          	auipc	ra,0x0
 236:	000080e7          	jalr	ra # 232 <.LVL774+0x2a>

0000023a <.LVL775>:
 23a:	00000097          	auipc	ra,0x0
 23e:	000080e7          	jalr	ra # 23a <.LVL775>

00000242 <.LVL776>:
 242:	4789                	li	a5,2
 244:	00f48463          	beq	s1,a5,24c <.L248>
 248:	00f41e63          	bne	s0,a5,264 <.L249>

0000024c <.L248>:
 24c:	400016b7          	lui	a3,0x40001
 250:	4adc                	lw	a5,20(a3)

00000252 <.LVL777>:
 252:	fff40737          	lui	a4,0xfff40
 256:	177d                	addi	a4,a4,-1
 258:	8ff9                	and	a5,a5,a4

0000025a <.LVL778>:
 25a:	00080737          	lui	a4,0x80
 25e:	8fd9                	or	a5,a5,a4

00000260 <.LVL779>:
 260:	cadc                	sw	a5,20(a3)
 262:	b3e1                	j	2a <.L241>

00000264 <.L249>:
 264:	40001737          	lui	a4,0x40001
 268:	4b5c                	lw	a5,20(a4)

0000026a <.LVL781>:
 26a:	000c06b7          	lui	a3,0xc0
 26e:	8fd5                	or	a5,a5,a3
 270:	cb5c                	sw	a5,20(a4)
 272:	bb65                	j	2a <.L241>

Disassembly of section .text.rf_pri_lo_acal:

00000000 <rf_pri_lo_acal>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	ca56                	sw	s5,20(sp)
   e:	c85a                	sw	s6,16(sp)
  10:	40001737          	lui	a4,0x40001
  14:	d226                	sw	s1,36(sp)
  16:	c65e                	sw	s7,12(sp)
  18:	c462                	sw	s8,8(sp)
  1a:	c266                	sw	s9,4(sp)
  1c:	4b5c                	lw	a5,20(a4)

0000001e <.LVL784>:
  1e:	000009b7          	lui	s3,0x0
  22:	ffe10a37          	lui	s4,0xffe10
  26:	f3f7f793          	andi	a5,a5,-193

0000002a <.LVL785>:
  2a:	0407e793          	ori	a5,a5,64

0000002e <.LVL786>:
  2e:	cb5c                	sw	a5,20(a4)
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL786+0x2>

00000038 <.LBB223>:
  38:	4519                	li	a0,6

0000003a <.LBE223>:
  3a:	7af9                	lui	s5,0xffffe

0000003c <.LBB226>:
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LBB226>

00000044 <.LBE226>:
  44:	00098993          	mv	s3,s3
  48:	4901                	li	s2,0
  4a:	40001437          	lui	s0,0x40001
  4e:	1a7d                	addi	s4,s4,-1
  50:	00000b37          	lui	s6,0x0
  54:	0ffa8a93          	addi	s5,s5,255 # ffffe0ff <.LLST148+0xffffb3bd>

00000058 <.L258>:
  58:	4c5c                	lw	a5,28(s0)

0000005a <.LVL790>:
  5a:	00100737          	lui	a4,0x100
  5e:	00890b93          	addi	s7,s2,8
  62:	0107e793          	ori	a5,a5,16
  66:	cc5c                	sw	a5,28(s0)
  68:	0a442783          	lw	a5,164(s0) # 400010a4 <.LLST148+0x3fffe362>
  6c:	001b9693          	slli	a3,s7,0x1

00000070 <.LBB227>:
  70:	4505                	li	a0,1

00000072 <.LBE227>:
  72:	8ff7f793          	andi	a5,a5,-1793

00000076 <.LVL793>:
  76:	4007e793          	ori	a5,a5,1024

0000007a <.LVL794>:
  7a:	0af42223          	sw	a5,164(s0)
  7e:	0a042783          	lw	a5,160(s0)

00000082 <.LBB230>:
  82:	4c0d                	li	s8,3

00000084 <.LBE230>:
  84:	44c1                	li	s1,16
  86:	0147f7b3          	and	a5,a5,s4

0000008a <.LVL796>:
  8a:	8fd9                	or	a5,a5,a4

0000008c <.LVL797>:
  8c:	0af42023          	sw	a5,160(s0)
  90:	0a042783          	lw	a5,160(s0)

00000094 <.LBB237>:
  94:	5cfd                	li	s9,-1

00000096 <.LBE237>:
  96:	f007f713          	andi	a4,a5,-256
  9a:	000b2783          	lw	a5,0(s6) # 0 <rf_pri_lo_acal>

0000009e <.LVL799>:
  9e:	97b6                	add	a5,a5,a3
  a0:	00c7d783          	lhu	a5,12(a5)
  a4:	0ff7f793          	andi	a5,a5,255
  a8:	8fd9                	or	a5,a5,a4

000000aa <.LVL800>:
  aa:	0af42023          	sw	a5,160(s0)
  ae:	0009a783          	lw	a5,0(s3) # 0 <rf_pri_lo_acal>

000000b2 <.LVL801>:
  b2:	0cf42223          	sw	a5,196(s0)

000000b6 <.LBB238>:
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LBB238>

000000be <.L253>:
  be:	0a042783          	lw	a5,160(s0)

000000c2 <.LVL804>:
  c2:	01049693          	slli	a3,s1,0x10

000000c6 <.LBB231>:
  c6:	4505                	li	a0,1

000000c8 <.LBE231>:
  c8:	0147f7b3          	and	a5,a5,s4

000000cc <.LVL805>:
  cc:	8fd5                	or	a5,a5,a3

000000ce <.LVL806>:
  ce:	0af42023          	sw	a5,160(s0)

000000d2 <.LBB235>:
  d2:	099c1463          	bne	s8,s9,15a <.L256>

000000d6 <.LBB240>:
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LBB240>

000000de <.LBE240>:
  de:	0a442783          	lw	a5,164(s0)

000000e2 <.LVL809>:
  e2:	01379713          	slli	a4,a5,0x13
  e6:	00074663          	bltz	a4,f2 <.L257>
  ea:	47f9                	li	a5,30

000000ec <.LVL810>:
  ec:	0097e363          	bltu	a5,s1,f2 <.L257>
  f0:	0485                	addi	s1,s1,1

000000f2 <.L257>:
  f2:	000b2783          	lw	a5,0(s6)
  f6:	0b86                	slli	s7,s7,0x1
  f8:	01f4f713          	andi	a4,s1,31
  fc:	9bbe                	add	s7,s7,a5
  fe:	00cbd783          	lhu	a5,12(s7) # fe09000c <.LLST148+0xfe08d2ca>
 102:	0722                	slli	a4,a4,0x8
 104:	00000537          	lui	a0,0x0
 108:	0157f7b3          	and	a5,a5,s5
 10c:	8fd9                	or	a5,a5,a4
 10e:	00fb9623          	sh	a5,12(s7)
 112:	85ca                	mv	a1,s2
 114:	8626                	mv	a2,s1
 116:	00050513          	mv	a0,a0
 11a:	00000097          	auipc	ra,0x0
 11e:	000080e7          	jalr	ra # 11a <.L257+0x28>

00000122 <.LVL812>:
 122:	0905                	addi	s2,s2,1
 124:	47d5                	li	a5,21
 126:	0991                	addi	s3,s3,4
 128:	f2f918e3          	bne	s2,a5,58 <.L258>
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.LVL812+0xa>

00000134 <.LVL814>:
 134:	40001737          	lui	a4,0x40001
 138:	4b5c                	lw	a5,20(a4)

0000013a <.LVL815>:
 13a:	0c07e793          	ori	a5,a5,192
 13e:	cb5c                	sw	a5,20(a4)
 140:	50b2                	lw	ra,44(sp)
 142:	5422                	lw	s0,40(sp)
 144:	5492                	lw	s1,36(sp)

00000146 <.LVL817>:
 146:	5902                	lw	s2,32(sp)

00000148 <.LVL818>:
 148:	49f2                	lw	s3,28(sp)
 14a:	4a62                	lw	s4,24(sp)
 14c:	4ad2                	lw	s5,20(sp)
 14e:	4b42                	lw	s6,16(sp)
 150:	4bb2                	lw	s7,12(sp)
 152:	4c22                	lw	s8,8(sp)

00000154 <.LVL819>:
 154:	4c92                	lw	s9,4(sp)
 156:	6145                	addi	sp,sp,48
 158:	8082                	ret

0000015a <.L256>:
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.L256>

00000162 <.LBE236>:
 162:	0a442703          	lw	a4,164(s0)

00000166 <.LVL822>:
 166:	4785                	li	a5,1
 168:	018797b3          	sll	a5,a5,s8
 16c:	01371693          	slli	a3,a4,0x13
 170:	0006d563          	bgez	a3,17a <.L254>
 174:	8c9d                	sub	s1,s1,a5

00000176 <.L255>:
 176:	1c7d                	addi	s8,s8,-1

00000178 <.LVL824>:
 178:	b799                	j	be <.L253>

0000017a <.L254>:
 17a:	94be                	add	s1,s1,a5
 17c:	bfed                	j	176 <.L255>

Disassembly of section .text.rf_pri_fcal:

00000000 <rf_pri_fcal>:
   0:	7179                	addi	sp,sp,-48
   2:	000007b7          	lui	a5,0x0
   6:	d606                	sw	ra,44(sp)
   8:	d422                	sw	s0,40(sp)
   a:	d226                	sw	s1,36(sp)
   c:	40001437          	lui	s0,0x40001
  10:	d04a                	sw	s2,32(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	c65e                	sw	s7,12(sp)
  16:	c462                	sw	s8,8(sp)
  18:	c266                	sw	s9,4(sp)
  1a:	ce4e                	sw	s3,28(sp)
  1c:	cc52                	sw	s4,24(sp)
  1e:	ca56                	sw	s5,20(sp)
  20:	00078793          	mv	a5,a5
  24:	0007da03          	lhu	s4,0(a5) # 0 <rf_pri_fcal>

00000028 <.LVL827>:
  28:	0027da83          	lhu	s5,2(a5)

0000002c <.LVL828>:
  2c:	0047d983          	lhu	s3,4(a5)

00000030 <.LVL829>:
  30:	485c                	lw	a5,20(s0)

00000032 <.LVL830>:
  32:	74c1                	lui	s1,0xffff0
  34:	6941                	lui	s2,0x10
  36:	fcf7f793          	andi	a5,a5,-49

0000003a <.LVL831>:
  3a:	0107e793          	ori	a5,a5,16

0000003e <.LVL832>:
  3e:	c85c                	sw	a5,20(s0)
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL832+0x2>

00000048 <.LBB243>:
  48:	451d                	li	a0,7
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LBB243+0x2>

00000052 <.LBE243>:
  52:	4c5c                	lw	a5,28(s0)

00000054 <.LVL835>:
  54:	7775                	lui	a4,0xffffd
  56:	177d                	addi	a4,a4,-1
  58:	0087e793          	ori	a5,a5,8
  5c:	cc5c                	sw	a5,28(s0)

0000005e <.LVL837>:
  5e:	0a042783          	lw	a5,160(s0) # 400010a0 <.LLST148+0x3fffe35e>

00000062 <.LBB245>:
  62:	4529                	li	a0,10

00000064 <.LBE245>:
  64:	5cfd                	li	s9,-1
  66:	f007f793          	andi	a5,a5,-256

0000006a <.LVL839>:
  6a:	0807e793          	ori	a5,a5,128

0000006e <.LVL840>:
  6e:	0af42023          	sw	a5,160(s0)
  72:	0b842783          	lw	a5,184(s0)
  76:	4b05                	li	s6,1
  78:	4c39                	li	s8,14
  7a:	8ff9                	and	a5,a5,a4
  7c:	0af42c23          	sw	a5,184(s0)
  80:	0a842783          	lw	a5,168(s0)
  84:	00000bb7          	lui	s7,0x0
  88:	0097f733          	and	a4,a5,s1
  8c:	000007b7          	lui	a5,0x0

00000090 <.LVL844>:
  90:	0007d783          	lhu	a5,0(a5) # 0 <rf_pri_fcal>
  94:	14fd                	addi	s1,s1,-1
  96:	8fd9                	or	a5,a5,a4

00000098 <.LVL845>:
  98:	0af42423          	sw	a5,168(s0)
  9c:	010007b7          	lui	a5,0x1000

000000a0 <.LVL846>:
  a0:	0cf42223          	sw	a5,196(s0)

000000a4 <.LVL847>:
  a4:	0c042783          	lw	a5,192(s0)

000000a8 <.LVL848>:
  a8:	6705                	lui	a4,0x1
  aa:	8fd9                	or	a5,a5,a4
  ac:	0cf42023          	sw	a5,192(s0)
  b0:	0c042783          	lw	a5,192(s0)
  b4:	8fe5                	and	a5,a5,s1
  b6:	0cf42023          	sw	a5,192(s0)
  ba:	0b842703          	lw	a4,184(s0)

000000be <.LVL852>:
  be:	01276733          	or	a4,a4,s2
  c2:	0ae42c23          	sw	a4,184(s0)

000000c6 <.LBB248>:
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LBB248>

000000ce <.LBE248>:
  ce:	0c042783          	lw	a5,192(s0)

000000d2 <.LBB249>:
  d2:	03200513          	li	a0,50

000000d6 <.LBE249>:
  d6:	0127e7b3          	or	a5,a5,s2
  da:	0cf42023          	sw	a5,192(s0)
  de:	0b842783          	lw	a5,184(s0)
  e2:	8fe5                	and	a5,a5,s1
  e4:	0af42c23          	sw	a5,184(s0)

000000e8 <.LBB252>:
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LBB252>

000000f0 <.LBE252>:
  f0:	0a442783          	lw	a5,164(s0)

000000f4 <.LBB253>:
  f4:	03200513          	li	a0,50

000000f8 <.LBE253>:
  f8:	9bf1                	andi	a5,a5,-4

000000fa <.LVL863>:
  fa:	0027e793          	ori	a5,a5,2

000000fe <.LVL864>:
  fe:	0af42223          	sw	a5,164(s0)

00000102 <.LBB256>:
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LBB256>

0000010a <.L270>:
 10a:	4919                	li	s2,6
 10c:	08000413          	li	s0,128

00000110 <.L262>:
 110:	01990b63          	beq	s2,s9,126 <.L269>
 114:	8522                	mv	a0,s0
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.L262+0x6>

0000011e <.LVL868>:
 11e:	07456d63          	bltu	a0,s4,198 <.L263>
 122:	08aae263          	bltu	s5,a0,1a6 <.L264>

00000126 <.L269>:
 126:	088c7463          	bgeu	s8,s0,1ae <.L265>
 12a:	00140493          	addi	s1,s0,1
 12e:	04c2                	slli	s1,s1,0x10
 130:	80c1                	srli	s1,s1,0x10

00000132 <.LVL870>:
 132:	8526                	mv	a0,s1
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LVL870+0x2>

0000013c <.LVL871>:
 13c:	fda40913          	addi	s2,s0,-38

00000140 <.LVL872>:
 140:	000007b7          	lui	a5,0x0
 144:	0942                	slli	s2,s2,0x10
 146:	00a79023          	sh	a0,0(a5) # 0 <rf_pri_fcal>

0000014a <.LVL873>:
 14a:	00078a13          	mv	s4,a5

0000014e <.LVL874>:
 14e:	01095913          	srli	s2,s2,0x10
 152:	00078a93          	mv	s5,a5

00000156 <.L272>:
 156:	14fd                	addi	s1,s1,-1

00000158 <.LVL876>:
 158:	04c2                	slli	s1,s1,0x10
 15a:	80c1                	srli	s1,s1,0x10

0000015c <.LVL877>:
 15c:	8526                	mv	a0,s1

0000015e <.LVL878>:
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL878>

00000166 <.LVL879>:
 166:	00aa1123          	sh	a0,2(s4) # ffe10002 <.LLST148+0xffe0d2c0>
 16a:	00a9e563          	bltu	s3,a0,174 <.L279>

0000016e <.LVL880>:
 16e:	0a09                	addi	s4,s4,2
 170:	ff2493e3          	bne	s1,s2,156 <.L272>

00000174 <.L279>:
 174:	00000637          	lui	a2,0x0
 178:	000004b7          	lui	s1,0x0

0000017c <.LVL882>:
 17c:	4681                	li	a3,0
 17e:	4781                	li	a5,0
 180:	00060613          	mv	a2,a2
 184:	00048493          	mv	s1,s1
 188:	0409                	addi	s0,s0,2

0000018a <.LVL883>:
 18a:	02a00813          	li	a6,42

0000018e <.L275>:
 18e:	00d60733          	add	a4,a2,a3
 192:	00075503          	lhu	a0,0(a4) # 1000 <.LASF5+0x2>
 196:	a8ad                	j	210 <.L277>

00000198 <.L263>:
 198:	012b15b3          	sll	a1,s6,s2
 19c:	8c0d                	sub	s0,s0,a1

0000019e <.L287>:
 19e:	0442                	slli	s0,s0,0x10
 1a0:	8041                	srli	s0,s0,0x10

000001a2 <.LVL887>:
 1a2:	197d                	addi	s2,s2,-1

000001a4 <.LVL888>:
 1a4:	b7b5                	j	110 <.L262>

000001a6 <.L264>:
 1a6:	012b15b3          	sll	a1,s6,s2
 1aa:	942e                	add	s0,s0,a1

000001ac <.LVL890>:
 1ac:	bfcd                	j	19e <.L287>

000001ae <.L265>:
 1ae:	85a2                	mv	a1,s0
 1b0:	000b8513          	mv	a0,s7
 1b4:	40001437          	lui	s0,0x40001

000001b8 <.LVL892>:
 1b8:	00000097          	auipc	ra,0x0
 1bc:	000080e7          	jalr	ra # 1b8 <.LVL892>

000001c0 <.LVL893>:
 1c0:	0c042783          	lw	a5,192(s0) # 400010c0 <.LLST148+0x3fffe37e>

000001c4 <.LVL894>:
 1c4:	6941                	lui	s2,0x10

000001c6 <.LBB257>:
 1c6:	03200513          	li	a0,50

000001ca <.LBE257>:
 1ca:	8fe5                	and	a5,a5,s1
 1cc:	0cf42023          	sw	a5,192(s0)
 1d0:	0b842703          	lw	a4,184(s0)

000001d4 <.LVL896>:
 1d4:	01276733          	or	a4,a4,s2
 1d8:	0ae42c23          	sw	a4,184(s0)

000001dc <.LBB260>:
 1dc:	00000097          	auipc	ra,0x0
 1e0:	000080e7          	jalr	ra # 1dc <.LBB260>

000001e4 <.LBE260>:
 1e4:	0c042783          	lw	a5,192(s0)

000001e8 <.LBB261>:
 1e8:	03200513          	li	a0,50

000001ec <.LBE261>:
 1ec:	0127e7b3          	or	a5,a5,s2
 1f0:	0cf42023          	sw	a5,192(s0)
 1f4:	0b842783          	lw	a5,184(s0)
 1f8:	8fe5                	and	a5,a5,s1
 1fa:	0af42c23          	sw	a5,184(s0)

000001fe <.LBB264>:
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.LBB264>

00000206 <.LVL905>:
 206:	b711                	j	10a <.L270>

00000208 <.L273>:
 208:	00170793          	addi	a5,a4,1
 20c:	07c2                	slli	a5,a5,0x10
 20e:	87c1                	srai	a5,a5,0x10

00000210 <.L277>:
 210:	00179593          	slli	a1,a5,0x1
 214:	95d6                	add	a1,a1,s5
 216:	0005d583          	lhu	a1,0(a1) # fffc1000 <.LLST148+0xfffbe2be>
 21a:	01079713          	slli	a4,a5,0x10
 21e:	8341                	srli	a4,a4,0x10
 220:	fea5e4e3          	bltu	a1,a0,208 <.L273>
 224:	00d485b3          	add	a1,s1,a3
 228:	40e40533          	sub	a0,s0,a4
 22c:	00a59023          	sh	a0,0(a1)
 230:	08f05363          	blez	a5,2b6 <.L280>
 234:	fff70793          	addi	a5,a4,-1

00000238 <.LVL908>:
 238:	07c2                	slli	a5,a5,0x10
 23a:	87c1                	srai	a5,a5,0x10

0000023c <.L274>:
 23c:	0689                	addi	a3,a3,2
 23e:	f50698e3          	bne	a3,a6,18e <.L275>
 242:	8426                	mv	s0,s1

00000244 <.LVL910>:
 244:	00000097          	auipc	ra,0x0
 248:	000080e7          	jalr	ra # 244 <.LVL910>

0000024c <.LVL911>:
 24c:	4481                	li	s1,0
 24e:	00000a37          	lui	s4,0x0
 252:	000009b7          	lui	s3,0x0

00000256 <.LVL912>:
 256:	4955                	li	s2,21

00000258 <.L278>:
 258:	000a2703          	lw	a4,0(s4) # 0 <rf_pri_fcal>
 25c:	00848793          	addi	a5,s1,8 # 8 <rf_pri_fcal+0x8>
 260:	0786                	slli	a5,a5,0x1
 262:	973e                	add	a4,a4,a5
 264:	00045603          	lhu	a2,0(s0)
 268:	00c75783          	lhu	a5,12(a4)
 26c:	0485                	addi	s1,s1,1

0000026e <.LVL914>:
 26e:	0ff67693          	andi	a3,a2,255
 272:	f007f793          	andi	a5,a5,-256
 276:	8fd5                	or	a5,a5,a3
 278:	00f71623          	sh	a5,12(a4)
 27c:	85a6                	mv	a1,s1
 27e:	00098513          	mv	a0,s3
 282:	00000097          	auipc	ra,0x0
 286:	000080e7          	jalr	ra # 282 <.LVL914+0x14>

0000028a <.LVL915>:
 28a:	0409                	addi	s0,s0,2
 28c:	fd2496e3          	bne	s1,s2,258 <.L278>
 290:	40001737          	lui	a4,0x40001
 294:	4b5c                	lw	a5,20(a4)

00000296 <.LVL916>:
 296:	0307e793          	ori	a5,a5,48
 29a:	cb5c                	sw	a5,20(a4)
 29c:	50b2                	lw	ra,44(sp)
 29e:	5422                	lw	s0,40(sp)
 2a0:	5492                	lw	s1,36(sp)

000002a2 <.LVL918>:
 2a2:	5902                	lw	s2,32(sp)
 2a4:	49f2                	lw	s3,28(sp)
 2a6:	4a62                	lw	s4,24(sp)
 2a8:	4ad2                	lw	s5,20(sp)
 2aa:	4b42                	lw	s6,16(sp)
 2ac:	4bb2                	lw	s7,12(sp)
 2ae:	4c22                	lw	s8,8(sp)
 2b0:	4c92                	lw	s9,4(sp)
 2b2:	6145                	addi	sp,sp,48
 2b4:	8082                	ret

000002b6 <.L280>:
 2b6:	4781                	li	a5,0

000002b8 <.LVL920>:
 2b8:	b751                	j	23c <.L274>

Disassembly of section .text.rf_pri_full_cal:

00000000 <rf_pri_full_cal>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB276>:
   6:	40001437          	lui	s0,0x40001
   a:	22042783          	lw	a5,544(s0) # 40001220 <.LLST148+0x3fffe4de>

0000000e <.LVL922>:
   e:	f9f7f793          	andi	a5,a5,-97

00000012 <.LVL923>:
  12:	22f42023          	sw	a5,544(s0)
  16:	22042783          	lw	a5,544(s0)

0000001a <.LVL924>:
  1a:	0217e793          	ori	a5,a5,33

0000001e <.LVL925>:
  1e:	22f42023          	sw	a5,544(s0)
  22:	22042783          	lw	a5,544(s0)
  26:	0407e793          	ori	a5,a5,64
  2a:	22f42023          	sw	a5,544(s0)

0000002e <.LBE276>:
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LBE276>

00000036 <.LVL929>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL929>

0000003e <.LVL930>:
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL930>

00000046 <.LVL931>:
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL931>

0000004e <.LVL932>:
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL932>

00000056 <.LVL933>:
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL933>

0000005e <.LBB277>:
  5e:	445c                	lw	a5,12(s0)

00000060 <.LBB280>:
  60:	7779                	lui	a4,0xffffe
  62:	67d70713          	addi	a4,a4,1661 # ffffe67d <.LLST148+0xffffb93b>

00000066 <.LBB283>:
  66:	0067e793          	ori	a5,a5,6

0000006a <.LVL936>:
  6a:	c45c                	sw	a5,12(s0)

0000006c <.LBB284>:
  6c:	22042783          	lw	a5,544(s0)

00000070 <.LVL938>:
  70:	f9e7f793          	andi	a5,a5,-98

00000074 <.LVL939>:
  74:	22f42023          	sw	a5,544(s0)

00000078 <.LBB286>:
  78:	22042783          	lw	a5,544(s0)

0000007c <.LVL941>:
  7c:	8ff9                	and	a5,a5,a4

0000007e <.LVL942>:
  7e:	22f42023          	sw	a5,544(s0)

00000082 <.LBE286>:
  82:	40b2                	lw	ra,12(sp)
  84:	4422                	lw	s0,8(sp)
  86:	0141                	addi	sp,sp,16
  88:	8082                	ret

Disassembly of section .text.rf_pri_restore_cal_reg:

00000000 <rf_pri_restore_cal_reg>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
   8:	0004a603          	lw	a2,0(s1) # 0 <rf_pri_restore_cal_reg>
   c:	cc22                	sw	s0,24(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	40001437          	lui	s0,0x40001
  18:	16842703          	lw	a4,360(s0) # 40001168 <.LLST148+0x3fffe426>

0000001c <.LVL945>:
  1c:	4634                	lw	a3,72(a2)
  1e:	77f1                	lui	a5,0xffffc
  20:	fc077713          	andi	a4,a4,-64

00000024 <.LVL946>:
  24:	03f6f693          	andi	a3,a3,63

00000028 <.LVL947>:
  28:	0ff78793          	addi	a5,a5,255 # ffffc0ff <.LLST148+0xffff93bd>
  2c:	8ed9                	or	a3,a3,a4

0000002e <.LVL948>:
  2e:	00f6f733          	and	a4,a3,a5
  32:	4634                	lw	a3,72(a2)
  34:	c10009b7          	lui	s3,0xc1000
  38:	19fd                	addi	s3,s3,-1
  3a:	8299                	srli	a3,a3,0x6
  3c:	03f6f693          	andi	a3,a3,63

00000040 <.LVL949>:
  40:	06a2                	slli	a3,a3,0x8

00000042 <.LVL950>:
  42:	8ed9                	or	a3,a3,a4
  44:	ffc10737          	lui	a4,0xffc10
  48:	fff70913          	addi	s2,a4,-1 # ffc0ffff <.LLST148+0xffc0d2bd>
  4c:	4a38                	lw	a4,80(a2)
  4e:	0126f6b3          	and	a3,a3,s2
  52:	03f77713          	andi	a4,a4,63

00000056 <.LVL951>:
  56:	0742                	slli	a4,a4,0x10

00000058 <.LVL952>:
  58:	8ed9                	or	a3,a3,a4
  5a:	0136f733          	and	a4,a3,s3
  5e:	4a34                	lw	a3,80(a2)
  60:	8299                	srli	a3,a3,0x6
  62:	03f6f693          	andi	a3,a3,63
  66:	06e2                	slli	a3,a3,0x18
  68:	8ed9                	or	a3,a3,a4

0000006a <.LVL953>:
  6a:	16d42423          	sw	a3,360(s0)
  6e:	0004a583          	lw	a1,0(s1)
  72:	16c42703          	lw	a4,364(s0)

00000076 <.LVL954>:
  76:	4db4                	lw	a3,88(a1)
  78:	fc077713          	andi	a4,a4,-64

0000007c <.LVL955>:
  7c:	03f6f693          	andi	a3,a3,63

00000080 <.LVL956>:
  80:	8ed9                	or	a3,a3,a4

00000082 <.LVL957>:
  82:	00f6f733          	and	a4,a3,a5
  86:	4db4                	lw	a3,88(a1)
  88:	51b0                	lw	a2,96(a1)
  8a:	8299                	srli	a3,a3,0x6
  8c:	03f6f693          	andi	a3,a3,63

00000090 <.LVL958>:
  90:	06a2                	slli	a3,a3,0x8

00000092 <.LVL959>:
  92:	8ed9                	or	a3,a3,a4
  94:	03f67613          	andi	a2,a2,63
  98:	0126f6b3          	and	a3,a3,s2

0000009c <.LVL960>:
  9c:	0642                	slli	a2,a2,0x10

0000009e <.LVL961>:
  9e:	8ed1                	or	a3,a3,a2
  a0:	0136f633          	and	a2,a3,s3
  a4:	51b4                	lw	a3,96(a1)
  a6:	8299                	srli	a3,a3,0x6
  a8:	03f6f693          	andi	a3,a3,63
  ac:	06e2                	slli	a3,a3,0x18
  ae:	8ed1                	or	a3,a3,a2

000000b0 <.LVL962>:
  b0:	16d42623          	sw	a3,364(s0)
  b4:	08042703          	lw	a4,128(s0)

000000b8 <.LVL963>:
  b8:	0004a683          	lw	a3,0(s1)
  bc:	01377633          	and	a2,a4,s3
  c0:	4698                	lw	a4,8(a3)

000000c2 <.LVL964>:
  c2:	03f77713          	andi	a4,a4,63

000000c6 <.LVL965>:
  c6:	0762                	slli	a4,a4,0x18

000000c8 <.LVL966>:
  c8:	8f51                	or	a4,a4,a2
  ca:	8f7d                	and	a4,a4,a5
  cc:	469c                	lw	a5,8(a3)
  ce:	83b1                	srli	a5,a5,0xc
  d0:	03f7f793          	andi	a5,a5,63

000000d4 <.LVL967>:
  d4:	07a2                	slli	a5,a5,0x8

000000d6 <.LVL968>:
  d6:	8fd9                	or	a5,a5,a4
  d8:	0127f733          	and	a4,a5,s2
  dc:	469c                	lw	a5,8(a3)
  de:	8399                	srli	a5,a5,0x6
  e0:	03f7f793          	andi	a5,a5,63

000000e4 <.LVL969>:
  e4:	07c2                	slli	a5,a5,0x10

000000e6 <.LVL970>:
  e6:	8fd9                	or	a5,a5,a4
  e8:	4698                	lw	a4,8(a3)
  ea:	fc07f793          	andi	a5,a5,-64
  ee:	8349                	srli	a4,a4,0x12
  f0:	03f77713          	andi	a4,a4,63
  f4:	8fd9                	or	a5,a5,a4

000000f6 <.LVL971>:
  f6:	08f42023          	sw	a5,128(s0)
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LVL971+0x4>

00000102 <.LVL972>:
 102:	0004a683          	lw	a3,0(s1)
 106:	5838                	lw	a4,112(s0)

00000108 <.LVL973>:
 108:	007ff637          	lui	a2,0x7ff
 10c:	0806a783          	lw	a5,128(a3) # c0080 <.LLST148+0xbd33e>
 110:	01377733          	and	a4,a4,s3

00000114 <.LVL974>:
 114:	03f7f793          	andi	a5,a5,63

00000118 <.LVL975>:
 118:	07e2                	slli	a5,a5,0x18

0000011a <.LVL976>:
 11a:	8fd9                	or	a5,a5,a4
 11c:	0127f733          	and	a4,a5,s2
 120:	0806a783          	lw	a5,128(a3)
 124:	8399                	srli	a5,a5,0x6
 126:	03f7f793          	andi	a5,a5,63
 12a:	07c2                	slli	a5,a5,0x10
 12c:	8fd9                	or	a5,a5,a4

0000012e <.LVL977>:
 12e:	d83c                	sw	a5,112(s0)
 130:	60042783          	lw	a5,1536(s0)
 134:	0004a683          	lw	a3,0(s1)
 138:	ff801737          	lui	a4,0xff801
 13c:	177d                	addi	a4,a4,-1
 13e:	8f7d                	and	a4,a4,a5
 140:	0806a783          	lw	a5,128(a3)

00000144 <.LVL979>:
 144:	8ff1                	and	a5,a5,a2

00000146 <.LVL980>:
 146:	8fd9                	or	a5,a5,a4
 148:	0846a703          	lw	a4,132(a3)
 14c:	c007f793          	andi	a5,a5,-1024
 150:	3ff77713          	andi	a4,a4,1023
 154:	8fd9                	or	a5,a5,a4

00000156 <.LVL981>:
 156:	60f42023          	sw	a5,1536(s0)
 15a:	40f2                	lw	ra,28(sp)
 15c:	4462                	lw	s0,24(sp)
 15e:	44d2                	lw	s1,20(sp)
 160:	4942                	lw	s2,16(sp)
 162:	49b2                	lw	s3,12(sp)
 164:	6105                	addi	sp,sp,32
 166:	8082                	ret

Disassembly of section .text.rf_pri_init:

00000000 <rf_pri_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL983>:
   8:	c606                	sw	ra,12(sp)
   a:	c226                	sw	s1,4(sp)
   c:	c04a                	sw	s2,0(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL983+0x6>

00000016 <.LVL984>:
  16:	00000737          	lui	a4,0x0
  1a:	00070713          	mv	a4,a4
  1e:	00143793          	seqz	a5,s0
  22:	c31c                	sw	a5,0(a4)

00000024 <.LBB291>:
  24:	400106b7          	lui	a3,0x40010
  28:	8146a783          	lw	a5,-2028(a3) # 4000f814 <.LLST148+0x4000cad2>

0000002c <.LVL986>:
  2c:	767d                	lui	a2,0xfffff
  2e:	0ff60613          	addi	a2,a2,255 # fffff0ff <.LLST148+0xffffc3bd>
  32:	8ff1                	and	a5,a5,a2

00000034 <.LVL987>:
  34:	3007e793          	ori	a5,a5,768

00000038 <.LVL988>:
  38:	80f6aa23          	sw	a5,-2028(a3)
  3c:	4000f5b7          	lui	a1,0x4000f
  40:	599c                	lw	a5,48(a1)
  42:	f1000637          	lui	a2,0xf1000
  46:	167d                	addi	a2,a2,-1
  48:	8ff1                	and	a5,a5,a2

0000004a <.LVL990>:
  4a:	08000637          	lui	a2,0x8000
  4e:	8fd1                	or	a5,a5,a2

00000050 <.LVL991>:
  50:	d99c                	sw	a5,48(a1)
  52:	400015b7          	lui	a1,0x40001
  56:	599c                	lw	a5,48(a1)

00000058 <.LVL992>:
  58:	6605                	lui	a2,0x1
  5a:	0605                	addi	a2,a2,1
  5c:	8fd1                	or	a5,a5,a2

0000005e <.LVL993>:
  5e:	d99c                	sw	a5,48(a1)
  60:	8846a783          	lw	a5,-1916(a3)
  64:	0047e793          	ori	a5,a5,4
  68:	88f6a223          	sw	a5,-1916(a3)
  6c:	431c                	lw	a5,0(a4)

0000006e <.LVL996>:
  6e:	e791                	bnez	a5,7a <.L293>

00000070 <.LBB293>:
  70:	4529                	li	a0,10
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LBB293+0x2>

0000007a <.L293>:
  7a:	00000637          	lui	a2,0x0
  7e:	00060613          	mv	a2,a2
  82:	4218                	lw	a4,0(a2)
  84:	400016b7          	lui	a3,0x40001
  88:	52fc                	lw	a5,100(a3)

0000008a <.LVL999>:
  8a:	430c                	lw	a1,0(a4)

0000008c <.LVL1000>:
  8c:	7561                	lui	a0,0xffff8
  8e:	4358                	lw	a4,4(a4)

00000090 <.LVL1001>:
  90:	0ff50513          	addi	a0,a0,255 # ffff80ff <.LLST148+0xffff53bd>
  94:	8fe9                	and	a5,a5,a0

00000096 <.LVL1002>:
  96:	05a2                	slli	a1,a1,0x8
  98:	8fcd                	or	a5,a5,a1
  9a:	0712                	slli	a4,a4,0x4
  9c:	f087f793          	andi	a5,a5,-248
  a0:	8fd9                	or	a5,a5,a4
  a2:	6711                	lui	a4,0x4
  a4:	0709                	addi	a4,a4,2
  a6:	8fd9                	or	a5,a5,a4

000000a8 <.LVL1003>:
  a8:	d2fc                	sw	a5,100(a3)
  aa:	421c                	lw	a5,0(a2)

000000ac <.LVL1004>:
  ac:	1286a703          	lw	a4,296(a3) # 40001128 <.LLST148+0x3fffe3e6>

000000b0 <.LVL1005>:
  b0:	00400337          	lui	t1,0x400
  b4:	478c                	lw	a1,8(a5)

000000b6 <.LVL1006>:
  b6:	00c7a803          	lw	a6,12(a5)
  ba:	ff8107b7          	lui	a5,0xff810
  be:	fff78513          	addi	a0,a5,-1 # ff80ffff <.LLST148+0xff80d2bd>
  c2:	8f69                	and	a4,a4,a0

000000c4 <.LVL1007>:
  c4:	01059793          	slli	a5,a1,0x10
  c8:	8f5d                	or	a4,a4,a5
  ca:	77c5                	lui	a5,0xffff1
  cc:	fff78593          	addi	a1,a5,-1 # ffff0fff <.LLST148+0xfffee2bd>
  d0:	8f6d                	and	a4,a4,a1
  d2:	00c81793          	slli	a5,a6,0xc
  d6:	8f5d                	or	a4,a4,a5
  d8:	00676733          	or	a4,a4,t1

000000dc <.LVL1008>:
  dc:	12e6a423          	sw	a4,296(a3)
  e0:	00062803          	lw	a6,0(a2) # 0 <rf_pri_init>
  e4:	12c6a703          	lw	a4,300(a3)

000000e8 <.LVL1009>:
  e8:	6941                	lui	s2,0x10
  ea:	01082783          	lw	a5,16(a6) # 10 <.LVL983+0x8>

000000ee <.LVL1010>:
  ee:	01482e03          	lw	t3,20(a6)

000000f2 <.LVL1011>:
  f2:	80077713          	andi	a4,a4,-2048

000000f6 <.LVL1012>:
  f6:	0792                	slli	a5,a5,0x4
  f8:	01882883          	lw	a7,24(a6)
  fc:	8f5d                	or	a4,a4,a5
  fe:	01c767b3          	or	a5,a4,t3
 102:	01c82803          	lw	a6,28(a6)
 106:	8fe9                	and	a5,a5,a0
 108:	01089713          	slli	a4,a7,0x10
 10c:	4007e793          	ori	a5,a5,1024
 110:	8fd9                	or	a5,a5,a4
 112:	8fed                	and	a5,a5,a1
 114:	00c81713          	slli	a4,a6,0xc
 118:	8fd9                	or	a5,a5,a4
 11a:	0067e7b3          	or	a5,a5,t1

0000011e <.LVL1013>:
 11e:	12f6a623          	sw	a5,300(a3)
 122:	0906a783          	lw	a5,144(a3)
 126:	4000e4b7          	lui	s1,0x4000e
 12a:	0127e7b3          	or	a5,a5,s2
 12e:	08f6a823          	sw	a5,144(a3)
 132:	0b86a783          	lw	a5,184(a3)
 136:	fef7f713          	andi	a4,a5,-17
 13a:	421c                	lw	a5,0(a2)

0000013c <.LVL1017>:
 13c:	539c                	lw	a5,32(a5)
 13e:	0792                	slli	a5,a5,0x4
 140:	8fd9                	or	a5,a5,a4

00000142 <.LVL1018>:
 142:	0af6ac23          	sw	a5,184(a3)
 146:	420c                	lw	a1,0(a2)
 148:	1386a783          	lw	a5,312(a3)
 14c:	51d8                	lw	a4,36(a1)

0000014e <.LVL1020>:
 14e:	9bf1                	andi	a5,a5,-4

00000150 <.LVL1021>:
 150:	0706                	slli	a4,a4,0x1
 152:	8fd9                	or	a5,a5,a4
 154:	51d8                	lw	a4,36(a1)
 156:	8fd9                	or	a5,a5,a4

00000158 <.LVL1022>:
 158:	12f6ac23          	sw	a5,312(a3)
 15c:	1386a783          	lw	a5,312(a3)

00000160 <.LVL1023>:
 160:	fffd0737          	lui	a4,0xfffd0
 164:	175d                	addi	a4,a4,-9
 166:	8ff9                	and	a5,a5,a4

00000168 <.LVL1024>:
 168:	3007e793          	ori	a5,a5,768

0000016c <.LVL1025>:
 16c:	12f6ac23          	sw	a5,312(a3)
 170:	1306a783          	lw	a5,304(a3)

00000174 <.LVL1026>:
 174:	7741                	lui	a4,0xffff0
 176:	1779                	addi	a4,a4,-2
 178:	8ff9                	and	a5,a5,a4

0000017a <.LVL1027>:
 17a:	12f6a823          	sw	a5,304(a3)
 17e:	4004a783          	lw	a5,1024(s1) # 4000e400 <.LLST148+0x4000b6be>
 182:	ffd7f713          	andi	a4,a5,-3
 186:	421c                	lw	a5,0(a2)

00000188 <.LVL1029>:
 188:	57dc                	lw	a5,44(a5)
 18a:	0786                	slli	a5,a5,0x1
 18c:	8fd9                	or	a5,a5,a4

0000018e <.LVL1030>:
 18e:	40f4a023          	sw	a5,1024(s1)
 192:	4184a783          	lw	a5,1048(s1)
 196:	fd000737          	lui	a4,0xfd000
 19a:	177d                	addi	a4,a4,-1
 19c:	8f7d                	and	a4,a4,a5
 19e:	421c                	lw	a5,0(a2)

000001a0 <.LVL1032>:
 1a0:	5b9c                	lw	a5,48(a5)
 1a2:	07e2                	slli	a5,a5,0x18
 1a4:	8fd9                	or	a5,a5,a4

000001a6 <.LVL1033>:
 1a6:	40f4ac23          	sw	a5,1048(s1)
 1aa:	08c6a783          	lw	a5,140(a3)
 1ae:	fff10737          	lui	a4,0xfff10
 1b2:	177d                	addi	a4,a4,-1
 1b4:	9bf1                	andi	a5,a5,-4

000001b6 <.LVL1035>:
 1b6:	0027e793          	ori	a5,a5,2

000001ba <.LVL1036>:
 1ba:	08f6a623          	sw	a5,140(a3)
 1be:	4000f6b7          	lui	a3,0x4000f
 1c2:	5a9c                	lw	a5,48(a3)
 1c4:	8ff9                	and	a5,a5,a4

000001c6 <.LVL1038>:
 1c6:	000c0737          	lui	a4,0xc0
 1ca:	8fd9                	or	a5,a5,a4

000001cc <.LVL1039>:
 1cc:	da9c                	sw	a5,48(a3)

000001ce <.LBE291>:
 1ce:	00000097          	auipc	ra,0x0
 1d2:	000080e7          	jalr	ra # 1ce <.LBE291>

000001d6 <.LVL1041>:
 1d6:	4044a783          	lw	a5,1028(s1)

000001da <.LVL1042>:
 1da:	0127e7b3          	or	a5,a5,s2
 1de:	40f4a223          	sw	a5,1028(s1)
 1e2:	41c4a783          	lw	a5,1052(s1)

000001e6 <.LVL1044>:
 1e6:	0ff7e793          	ori	a5,a5,255

000001ea <.LVL1045>:
 1ea:	40f4ae23          	sw	a5,1052(s1)
 1ee:	e811                	bnez	s0,202 <.L294>
 1f0:	4422                	lw	s0,8(sp)
 1f2:	40b2                	lw	ra,12(sp)
 1f4:	4492                	lw	s1,4(sp)
 1f6:	4902                	lw	s2,0(sp)
 1f8:	0141                	addi	sp,sp,16
 1fa:	00000317          	auipc	t1,0x0
 1fe:	00030067          	jr	t1 # 1fa <.LVL1045+0x10>

00000202 <.L294>:
 202:	4422                	lw	s0,8(sp)
 204:	40b2                	lw	ra,12(sp)
 206:	4492                	lw	s1,4(sp)
 208:	4902                	lw	s2,0(sp)
 20a:	0141                	addi	sp,sp,16
 20c:	00000317          	auipc	t1,0x0
 210:	00030067          	jr	t1 # 20c <.L294+0xa>

Disassembly of section .text.rf_pri_update_power_offset:

00000000 <rf_pri_update_power_offset>:
   0:	000006b7          	lui	a3,0x0
   4:	00000737          	lui	a4,0x0
   8:	4781                	li	a5,0
   a:	00068693          	mv	a3,a3
   e:	00070713          	mv	a4,a4
  12:	03800593          	li	a1,56

00000016 <.L297>:
  16:	00f50633          	add	a2,a0,a5
  1a:	4210                	lw	a2,0(a2)
  1c:	00f68833          	add	a6,a3,a5
  20:	00c82023          	sw	a2,0(a6)
  24:	00f70833          	add	a6,a4,a5
  28:	00c82023          	sw	a2,0(a6)
  2c:	0791                	addi	a5,a5,4
  2e:	feb794e3          	bne	a5,a1,16 <.L297>
  32:	8082                	ret
