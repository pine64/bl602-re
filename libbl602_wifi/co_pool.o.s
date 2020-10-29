
co_pool.o:     file format elf32-littleriscv


Disassembly of section .text.co_pool_init:

00000000 <co_pool_init>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	c452                	sw	s4,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	00367793          	andi	a5,a2,3
  12:	892a                	mv	s2,a0
  14:	84ae                	mv	s1,a1
  16:	89b6                	mv	s3,a3
  18:	8a3a                	mv	s4,a4
  1a:	8432                	mv	s0,a2
  1c:	cf99                	beqz	a5,3a <.L2>
  1e:	000005b7          	lui	a1,0x0

00000022 <.LVL1>:
  22:	00000537          	lui	a0,0x0

00000026 <.LVL2>:
  26:	02a00613          	li	a2,42

0000002a <.LVL3>:
  2a:	00058593          	mv	a1,a1
  2e:	00050513          	mv	a0,a0
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL3+0x8>

0000003a <.L2>:
  3a:	0039f793          	andi	a5,s3,3
  3e:	cf99                	beqz	a5,5c <.L3>
  40:	000005b7          	lui	a1,0x0
  44:	00000537          	lui	a0,0x0
  48:	02b00613          	li	a2,43
  4c:	00058593          	mv	a1,a1
  50:	00050513          	mv	a0,a0
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.L2+0x1a>

0000005c <.L3>:
  5c:	00848613          	addi	a2,s1,8
  60:	4781                	li	a5,0

00000062 <.L4>:
  62:	03479363          	bne	a5,s4,88 <.L5>
  66:	00379713          	slli	a4,a5,0x3
  6a:	9726                	add	a4,a4,s1
  6c:	fe072c23          	sw	zero,-8(a4)
  70:	40f2                	lw	ra,28(sp)
  72:	4462                	lw	s0,24(sp)
  74:	00992023          	sw	s1,0(s2)
  78:	00f92223          	sw	a5,4(s2)
  7c:	44d2                	lw	s1,20(sp)

0000007e <.LVL7>:
  7e:	4942                	lw	s2,16(sp)

00000080 <.LVL8>:
  80:	49b2                	lw	s3,12(sp)

00000082 <.LVL9>:
  82:	4a22                	lw	s4,8(sp)

00000084 <.LVL10>:
  84:	6105                	addi	sp,sp,32
  86:	8082                	ret

00000088 <.L5>:
  88:	fe862e23          	sw	s0,-4(a2)
  8c:	fec62c23          	sw	a2,-8(a2)
  90:	0785                	addi	a5,a5,1
  92:	0621                	addi	a2,a2,8
  94:	944e                	add	s0,s0,s3
  96:	b7f1                	j	62 <.L4>

Disassembly of section .text.co_pool_alloc:

00000000 <co_pool_alloc>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842a                	mv	s0,a0
   a:	84ae                	mv	s1,a1
   c:	ed99                	bnez	a1,2a <.L14>
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL14>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL15>:
  16:	04900613          	li	a2,73
  1a:	00058593          	mv	a1,a1
  1e:	00050513          	mv	a0,a0
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL15+0xc>

0000002a <.L14>:
  2a:	405c                	lw	a5,4(s0)
  2c:	4501                	li	a0,0
  2e:	0097ee63          	bltu	a5,s1,4a <.L13>
  32:	4008                	lw	a0,0(s0)

00000034 <.LVL17>:
  34:	4701                	li	a4,0
  36:	862a                	mv	a2,a0
  38:	86aa                	mv	a3,a0

0000003a <.L16>:
  3a:	00971d63          	bne	a4,s1,54 <.L17>
  3e:	4290                	lw	a2,0(a3)

00000040 <.LVL19>:
  40:	8f99                	sub	a5,a5,a4
  42:	c05c                	sw	a5,4(s0)
  44:	c010                	sw	a2,0(s0)
  46:	0006a023          	sw	zero,0(a3)

0000004a <.L13>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)

0000004e <.LVL21>:
  4e:	4492                	lw	s1,4(sp)

00000050 <.LVL22>:
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

00000054 <.L17>:
  54:	86b2                	mv	a3,a2
  56:	0705                	addi	a4,a4,1
  58:	4210                	lw	a2,0(a2)

0000005a <.LVL25>:
  5a:	b7c5                	j	3a <.L16>

Disassembly of section .text.co_pool_free:

00000000 <co_pool_free>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)
   a:	892a                	mv	s2,a0
   c:	842e                	mv	s0,a1
   e:	84b2                	mv	s1,a2
  10:	ee19                	bnez	a2,2e <.L21>
  12:	000005b7          	lui	a1,0x0

00000016 <.LVL27>:
  16:	00000537          	lui	a0,0x0

0000001a <.LVL28>:
  1a:	07100613          	li	a2,113

0000001e <.LVL29>:
  1e:	00058593          	mv	a1,a1
  22:	00050513          	mv	a0,a0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL29+0x8>

0000002e <.L21>:
  2e:	ec19                	bnez	s0,4c <.L22>
  30:	000005b7          	lui	a1,0x0
  34:	00000537          	lui	a0,0x0
  38:	07200613          	li	a2,114
  3c:	00058593          	mv	a1,a1
  40:	00050513          	mv	a0,a0
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.L21+0x16>

0000004c <.L22>:
  4c:	00492783          	lw	a5,4(s2)
  50:	00092703          	lw	a4,0(s2)

00000054 <.LVL32>:
  54:	00892023          	sw	s0,0(s2)
  58:	97a6                	add	a5,a5,s1
  5a:	00f92223          	sw	a5,4(s2)

0000005e <.LVL33>:
  5e:	14fd                	addi	s1,s1,-1

00000060 <.LVL34>:
  60:	4781                	li	a5,0

00000062 <.L23>:
  62:	0097e963          	bltu	a5,s1,74 <.L24>
  66:	c018                	sw	a4,0(s0)

00000068 <.LVL36>:
  68:	40b2                	lw	ra,12(sp)
  6a:	4422                	lw	s0,8(sp)

0000006c <.LVL37>:
  6c:	4492                	lw	s1,4(sp)

0000006e <.LVL38>:
  6e:	4902                	lw	s2,0(sp)

00000070 <.LVL39>:
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

00000074 <.L24>:
  74:	4000                	lw	s0,0(s0)

00000076 <.LVL41>:
  76:	0785                	addi	a5,a5,1
  78:	b7ed                	j	62 <.L23>
