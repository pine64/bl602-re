
bl_aes_cmac.o:     file format elf32-littleriscv


Disassembly of section .text.bl_aes_128:

00000000 <bl_aes_128>:
   0:	86b2                	mv	a3,a2
   2:	862e                	mv	a2,a1

00000004 <.LVL1>:
   4:	4589                	li	a1,2

00000006 <.LVL2>:
   6:	00000317          	auipc	t1,0x0
   a:	00030067          	jr	t1 # 6 <.LVL2>

Disassembly of section .text.xor_128:

00000000 <xor_128>:
   0:	4781                	li	a5,0
   2:	46c1                	li	a3,16

00000004 <.L3>:
   4:	00f50733          	add	a4,a0,a5
   8:	00f588b3          	add	a7,a1,a5
   c:	00074703          	lbu	a4,0(a4)
  10:	0008c883          	lbu	a7,0(a7)
  14:	00f60833          	add	a6,a2,a5
  18:	0785                	addi	a5,a5,1
  1a:	01174733          	xor	a4,a4,a7
  1e:	00e80023          	sb	a4,0(a6)
  22:	fed791e3          	bne	a5,a3,4 <.L3>
  26:	8082                	ret

Disassembly of section .text.leftshift_onebit:

00000000 <leftshift_onebit>:
   0:	4781                	li	a5,0
   2:	473d                	li	a4,15
   4:	587d                	li	a6,-1

00000006 <.L6>:
   6:	00e50633          	add	a2,a0,a4
   a:	00064683          	lbu	a3,0(a2)
   e:	00e588b3          	add	a7,a1,a4
  12:	177d                	addi	a4,a4,-1

00000014 <.LVL9>:
  14:	0686                	slli	a3,a3,0x1
  16:	8fd5                	or	a5,a5,a3

00000018 <.LVL10>:
  18:	00f88023          	sb	a5,0(a7)
  1c:	00064783          	lbu	a5,0(a2)
  20:	839d                	srli	a5,a5,0x7

00000022 <.LVL11>:
  22:	ff0712e3          	bne	a4,a6,6 <.L6>
  26:	8082                	ret

Disassembly of section .text.generate_subkey:

00000000 <generate_subkey>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	d84a                	sw	s2,48(sp)
   8:	842e                	mv	s0,a1
   a:	892a                	mv	s2,a0
   c:	4581                	li	a1,0

0000000e <.LVL13>:
   e:	84b2                	mv	s1,a2
  10:	0808                	addi	a0,sp,16

00000012 <.LVL14>:
  12:	4641                	li	a2,16

00000014 <.LVL15>:
  14:	de06                	sw	ra,60(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL15+0x2>

0000001e <.LVL16>:
  1e:	860a                	mv	a2,sp
  20:	080c                	addi	a1,sp,16
  22:	854a                	mv	a0,s2
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL16+0x6>

0000002c <.LVL17>:
  2c:	00010783          	lb	a5,0(sp)
  30:	0207c863          	bltz	a5,60 <.L9>
  34:	85a2                	mv	a1,s0
  36:	850a                	mv	a0,sp
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL17+0xc>

00000040 <.L10>:
  40:	00040783          	lb	a5,0(s0)
  44:	0207cf63          	bltz	a5,82 <.L11>
  48:	85a6                	mv	a1,s1
  4a:	8522                	mv	a0,s0
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L10+0xc>

00000054 <.L8>:
  54:	50f2                	lw	ra,60(sp)
  56:	5462                	lw	s0,56(sp)

00000058 <.LVL20>:
  58:	54d2                	lw	s1,52(sp)

0000005a <.LVL21>:
  5a:	5942                	lw	s2,48(sp)

0000005c <.LVL22>:
  5c:	6121                	addi	sp,sp,64
  5e:	8082                	ret

00000060 <.L9>:
  60:	100c                	addi	a1,sp,32
  62:	850a                	mv	a0,sp
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L9+0x4>

0000006c <.LVL24>:
  6c:	000005b7          	lui	a1,0x0
  70:	8622                	mv	a2,s0
  72:	00058593          	mv	a1,a1
  76:	1008                	addi	a0,sp,32
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL24+0xc>

00000080 <.LVL25>:
  80:	b7c1                	j	40 <.L10>

00000082 <.L11>:
  82:	100c                	addi	a1,sp,32
  84:	8522                	mv	a0,s0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.L11+0x4>

0000008e <.LVL26>:
  8e:	000005b7          	lui	a1,0x0
  92:	8626                	mv	a2,s1
  94:	00058593          	mv	a1,a1
  98:	1008                	addi	a0,sp,32
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL26+0xc>

000000a2 <.LVL27>:
  a2:	bf4d                	j	54 <.L8>

Disassembly of section .text.padding:

00000000 <padding>:
   0:	4781                	li	a5,0
   2:	00c586b3          	add	a3,a1,a2
   6:	f8000813          	li	a6,-128
   a:	4741                	li	a4,16

0000000c <.L18>:
   c:	00c7de63          	bge	a5,a2,28 <.L15>
  10:	00f508b3          	add	a7,a0,a5
  14:	0008c303          	lbu	t1,0(a7)
  18:	00f588b3          	add	a7,a1,a5
  1c:	00688023          	sb	t1,0(a7)

00000020 <.L16>:
  20:	0785                	addi	a5,a5,1
  22:	fee795e3          	bne	a5,a4,c <.L18>
  26:	8082                	ret

00000028 <.L15>:
  28:	00f61563          	bne	a2,a5,32 <.L17>
  2c:	01068023          	sb	a6,0(a3)
  30:	bfc5                	j	20 <.L16>

00000032 <.L17>:
  32:	00f588b3          	add	a7,a1,a5
  36:	00088023          	sb	zero,0(a7)
  3a:	b7dd                	j	20 <.L16>

Disassembly of section .text.bl_aes_cmac:

00000000 <bl_aes_cmac>:
   0:	7119                	addi	sp,sp,-128
   2:	daa6                	sw	s1,116(sp)
   4:	d8ca                	sw	s2,112(sp)
   6:	84b2                	mv	s1,a2
   8:	892e                	mv	s2,a1
   a:	0890                	addi	a2,sp,80

0000000c <.LVL32>:
   c:	008c                	addi	a1,sp,64

0000000e <.LVL33>:
   e:	dca2                	sw	s0,120(sp)
  10:	d6ce                	sw	s3,108(sp)
  12:	d4d2                	sw	s4,104(sp)
  14:	de86                	sw	ra,124(sp)
  16:	8a2a                	mv	s4,a0
  18:	89b6                	mv	s3,a3
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL33+0xc>

00000022 <.LVL34>:
  22:	00f48413          	addi	s0,s1,15
  26:	47c1                	li	a5,16
  28:	02f44433          	div	s0,s0,a5

0000002c <.LVL35>:
  2c:	cc25                	beqz	s0,a4 <.L26>
  2e:	00f4f793          	andi	a5,s1,15
  32:	ebb5                	bnez	a5,a6 <.L21>

00000034 <.LVL36>:
  34:	fff40513          	addi	a0,s0,-1
  38:	0512                	slli	a0,a0,0x4
  3a:	1010                	addi	a2,sp,32
  3c:	008c                	addi	a1,sp,64
  3e:	954a                	add	a0,a0,s2

00000040 <.L29>:
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.L29>

00000048 <.LVL38>:
  48:	4641                	li	a2,16

0000004a <.LVL39>:
  4a:	4581                	li	a1,0
  4c:	850a                	mv	a0,sp
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL39+0x4>

00000056 <.LVL40>:
  56:	4481                	li	s1,0

00000058 <.LVL41>:
  58:	147d                	addi	s0,s0,-1

0000005a <.L23>:
  5a:	0684c663          	blt	s1,s0,c6 <.L24>
  5e:	0810                	addi	a2,sp,16
  60:	100c                	addi	a1,sp,32
  62:	850a                	mv	a0,sp
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L23+0xa>

0000006c <.LVL43>:
  6c:	860a                	mv	a2,sp
  6e:	080c                	addi	a1,sp,16
  70:	8552                	mv	a0,s4
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL43+0x6>

0000007a <.LVL44>:
  7a:	4781                	li	a5,0
  7c:	4741                	li	a4,16

0000007e <.L25>:
  7e:	00f10633          	add	a2,sp,a5
  82:	00064603          	lbu	a2,0(a2)
  86:	00f986b3          	add	a3,s3,a5
  8a:	0785                	addi	a5,a5,1
  8c:	00c68023          	sb	a2,0(a3)
  90:	fee797e3          	bne	a5,a4,7e <.L25>
  94:	50f6                	lw	ra,124(sp)
  96:	5466                	lw	s0,120(sp)
  98:	54d6                	lw	s1,116(sp)
  9a:	5946                	lw	s2,112(sp)

0000009c <.LVL47>:
  9c:	59b6                	lw	s3,108(sp)

0000009e <.LVL48>:
  9e:	5a26                	lw	s4,104(sp)

000000a0 <.LVL49>:
  a0:	6109                	addi	sp,sp,128
  a2:	8082                	ret

000000a4 <.L26>:
  a4:	4405                	li	s0,1

000000a6 <.L21>:
  a6:	4641                	li	a2,16

000000a8 <.LVL52>:
  a8:	02c4e633          	rem	a2,s1,a2

000000ac <.LVL53>:
  ac:	fff40513          	addi	a0,s0,-1
  b0:	0512                	slli	a0,a0,0x4
  b2:	180c                	addi	a1,sp,48
  b4:	954a                	add	a0,a0,s2
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.LVL53+0xa>

000000be <.LVL54>:
  be:	1010                	addi	a2,sp,32
  c0:	088c                	addi	a1,sp,80
  c2:	1808                	addi	a0,sp,48
  c4:	bfb5                	j	40 <.L29>

000000c6 <.L24>:
  c6:	00449593          	slli	a1,s1,0x4
  ca:	0810                	addi	a2,sp,16
  cc:	95ca                	add	a1,a1,s2
  ce:	850a                	mv	a0,sp
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.L24+0xa>

000000d8 <.LVL56>:
  d8:	860a                	mv	a2,sp
  da:	080c                	addi	a1,sp,16
  dc:	8552                	mv	a0,s4
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.LVL56+0x6>

000000e6 <.LVL57>:
  e6:	0485                	addi	s1,s1,1
  e8:	bf8d                	j	5a <.L23>
