
llc_ch_asses.o:     file format elf32-littleriscv


Disassembly of section .text.llc_ch_assess_local:

00000000 <llc_ch_assess_local>:
   0:	000007b7          	lui	a5,0x0
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL1>:
   6:	00078793          	mv	a5,a5
   a:	97aa                	add	a5,a5,a0
   c:	4388                	lw	a0,0(a5)
   e:	00000737          	lui	a4,0x0
  12:	0015f813          	andi	a6,a1,1
  16:	96aa                	add	a3,a3,a0

00000018 <.LVL3>:
  18:	01468783          	lb	a5,20(a3)
  1c:	00070713          	mv	a4,a4
  20:	02080763          	beqz	a6,4e <.L2>

00000024 <.LBB17>:
  24:	03070583          	lb	a1,48(a4) # 30 <.L8+0x2>

00000028 <.LVL4>:
  28:	00c5d663          	bge	a1,a2,34 <.L3>

0000002c <.L10>:
  2c:	17f5                	addi	a5,a5,-3

0000002e <.L8>:
  2e:	00f68a23          	sb	a5,20(a3)
  32:	a029                	j	3c <.L4>

00000034 <.L3>:
  34:	03954603          	lbu	a2,57(a0)

00000038 <.LVL7>:
  38:	17fd                	addi	a5,a5,-1
  3a:	da75                	beqz	a2,2e <.L8>

0000003c <.L4>:
  3c:	01468603          	lb	a2,20(a3)

00000040 <.LBB19>:
  40:	02e70783          	lb	a5,46(a4)

00000044 <.LBE19>:
  44:	00f65b63          	bge	a2,a5,5a <.L6>

00000048 <.L9>:
  48:	00f68a23          	sb	a5,20(a3)
  4c:	a819                	j	62 <.L1>

0000004e <.L2>:
  4e:	89a1                	andi	a1,a1,8

00000050 <.LVL9>:
  50:	0ff7f793          	andi	a5,a5,255
  54:	fde1                	bnez	a1,2c <.L10>
  56:	078d                	addi	a5,a5,3
  58:	bfd9                	j	2e <.L8>

0000005a <.L6>:
  5a:	02f70783          	lb	a5,47(a4)

0000005e <.LBE21>:
  5e:	fec7c5e3          	blt	a5,a2,48 <.L9>

00000062 <.L1>:
  62:	8082                	ret

Disassembly of section .text.llc_ch_assess_get_local_ch_map:

00000000 <llc_ch_assess_get_local_ch_map>:
   0:	000007b7          	lui	a5,0x0
   4:	1141                	addi	sp,sp,-16
   6:	050a                	slli	a0,a0,0x2

00000008 <.LVL12>:
   8:	00078793          	mv	a5,a5
   c:	c422                	sw	s0,8(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	97aa                	add	a5,a5,a0
  12:	c606                	sw	ra,12(sp)
  14:	c226                	sw	s1,4(sp)
  16:	4384                	lw	s1,0(a5)

00000018 <.LVL13>:
  18:	000007b7          	lui	a5,0x0
  1c:	0007a783          	lw	a5,0(a5) # 0 <llc_ch_assess_get_local_ch_map>
  20:	842e                	mv	s0,a1
  22:	8932                	mv	s2,a2
  24:	4581                	li	a1,0

00000026 <.LVL14>:
  26:	4615                	li	a2,5

00000028 <.LVL15>:
  28:	8522                	mv	a0,s0
  2a:	9782                	jalr	a5

0000002c <.LBB23>:
  2c:	00000637          	lui	a2,0x0

00000030 <.LBE23>:
  30:	02400693          	li	a3,36
  34:	4501                	li	a0,0

00000036 <.LBB30>:
  36:	4885                	li	a7,1

00000038 <.LBB28>:
  38:	00060613          	mv	a2,a2

0000003c <.LBE28>:
  3c:	587d                	li	a6,-1

0000003e <.L13>:
  3e:	01869713          	slli	a4,a3,0x18
  42:	8761                	srai	a4,a4,0x18
  44:	870d                	srai	a4,a4,0x3
  46:	00e905b3          	add	a1,s2,a4
  4a:	0076f793          	andi	a5,a3,7
  4e:	0005c583          	lbu	a1,0(a1)
  52:	00f897b3          	sll	a5,a7,a5
  56:	0ff7f793          	andi	a5,a5,255
  5a:	8dfd                	and	a1,a1,a5
  5c:	c195                	beqz	a1,80 <.L12>

0000005e <.LBB29>:
  5e:	00d485b3          	add	a1,s1,a3
  62:	01458303          	lb	t1,20(a1)
  66:	02e60583          	lb	a1,46(a2) # 2e <.LBB23+0x2>
  6a:	0065db63          	bge	a1,t1,80 <.L12>
  6e:	9722                	add	a4,a4,s0
  70:	00074583          	lbu	a1,0(a4)
  74:	0505                	addi	a0,a0,1

00000076 <.LVL18>:
  76:	0ff57513          	andi	a0,a0,255
  7a:	8fcd                	or	a5,a5,a1
  7c:	00f70023          	sb	a5,0(a4)

00000080 <.L12>:
  80:	16fd                	addi	a3,a3,-1

00000082 <.LVL20>:
  82:	fb069ee3          	bne	a3,a6,3e <.L13>

00000086 <.LBE30>:
  86:	40b2                	lw	ra,12(sp)
  88:	4422                	lw	s0,8(sp)

0000008a <.LVL21>:
  8a:	4492                	lw	s1,4(sp)

0000008c <.LVL22>:
  8c:	4902                	lw	s2,0(sp)

0000008e <.LVL23>:
  8e:	0141                	addi	sp,sp,16
  90:	8082                	ret

Disassembly of section .text.llc_ch_assess_get_current_ch_map:

00000000 <llc_ch_assess_get_current_ch_map>:
   0:	000007b7          	lui	a5,0x0
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL25>:
   6:	00078793          	mv	a5,a5
   a:	97aa                	add	a5,a5,a0
   c:	4388                	lw	a0,0(a5)
   e:	05e50513          	addi	a0,a0,94
  12:	8082                	ret

Disassembly of section .text.llc_ch_assess_reass_ch:

00000000 <llc_ch_assess_reass_ch>:
   0:	000007b7          	lui	a5,0x0
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL27>:
   6:	00078793          	mv	a5,a5
   a:	97aa                	add	a5,a5,a0
   c:	0007af03          	lw	t5,0(a5) # 0 <llc_ch_assess_reass_ch>
  10:	4709                	li	a4,2
  12:	4529                	li	a0,10
  14:	03bf4783          	lbu	a5,59(t5)

00000018 <.LVL29>:
  18:	00d77763          	bgeu	a4,a3,26 <.L21>
  1c:	00569513          	slli	a0,a3,0x5
  20:	07f50513          	addi	a0,a0,127
  24:	811d                	srli	a0,a0,0x7

00000026 <.L21>:
  26:	00000737          	lui	a4,0x0

0000002a <.LBE31>:
  2a:	03174703          	lbu	a4,49(a4) # 31 <.LBE31+0x7>
  2e:	02500813          	li	a6,37
  32:	02400e13          	li	t3,36
  36:	02ef0d23          	sb	a4,58(t5)

0000003a <.LVL31>:
  3a:	4e85                	li	t4,1

0000003c <.L25>:
  3c:	00b78713          	addi	a4,a5,11
  40:	0ff77713          	andi	a4,a4,255

00000044 <.LVL33>:
  44:	04ee7f63          	bgeu	t3,a4,a2 <.L27>
  48:	1799                	addi	a5,a5,-26
  4a:	0ff7f793          	andi	a5,a5,255

0000004e <.L22>:
  4e:	0037d693          	srli	a3,a5,0x3
  52:	00d588b3          	add	a7,a1,a3
  56:	0077f713          	andi	a4,a5,7
  5a:	0008c303          	lbu	t1,0(a7)
  5e:	00ee9733          	sll	a4,t4,a4
  62:	0ff77713          	andi	a4,a4,255
  66:	00677333          	and	t1,a4,t1
  6a:	02031363          	bnez	t1,90 <.L23>
  6e:	96b2                	add	a3,a3,a2
  70:	0006c683          	lbu	a3,0(a3)
  74:	8ef9                	and	a3,a3,a4
  76:	ce89                	beqz	a3,90 <.L23>
  78:	00ff06b3          	add	a3,t5,a5
  7c:	00068a23          	sb	zero,20(a3)
  80:	0008c683          	lbu	a3,0(a7)
  84:	157d                	addi	a0,a0,-1

00000086 <.LVL35>:
  86:	0542                	slli	a0,a0,0x10
  88:	8f55                	or	a4,a4,a3
  8a:	00e88023          	sb	a4,0(a7)
  8e:	8141                	srli	a0,a0,0x10

00000090 <.L23>:
  90:	187d                	addi	a6,a6,-1

00000092 <.LVL37>:
  92:	0ff87813          	andi	a6,a6,255
  96:	00080363          	beqz	a6,9c <.L24>
  9a:	f14d                	bnez	a0,3c <.L25>

0000009c <.L24>:
  9c:	02ff0da3          	sb	a5,59(t5)
  a0:	8082                	ret

000000a2 <.L27>:
  a2:	87ba                	mv	a5,a4
  a4:	b76d                	j	4e <.L22>
