
ke_mem.o:     file format elf32-littleriscv


Disassembly of section .text.ke_mem_init:

00000000 <ke_mem_init>:
   0:	00000537          	lui	a0,0x0
   4:	00350513          	addi	a0,a0,3 # 3 <ke_mem_init+0x3>
   8:	9971                	andi	a0,a0,-4

0000000a <.LBB14>:
   a:	30047073          	csrci	mstatus,8

0000000e <.LBE14>:
   e:	000017b7          	lui	a5,0x1
  12:	48078793          	addi	a5,a5,1152 # 1480 <.LASF33+0xcbb>
  16:	9bf1                	andi	a5,a5,-4
  18:	8f89                	sub	a5,a5,a0
  1a:	c15c                	sw	a5,4(a0)
  1c:	00052023          	sw	zero,0(a0)

00000020 <.LBB16>:
  20:	30046073          	csrsi	mstatus,8

00000024 <.LBE16>:
  24:	8082                	ret

Disassembly of section .text.ke_malloc:

00000000 <ke_malloc>:
   0:	1141                	addi	sp,sp,-16
   2:	050d                	addi	a0,a0,3

00000004 <.LVL2>:
   4:	c226                	sw	s1,4(sp)
   6:	ffc57493          	andi	s1,a0,-4
   a:	c04a                	sw	s2,0(sp)
   c:	c606                	sw	ra,12(sp)
   e:	c422                	sw	s0,8(sp)
  10:	00448913          	addi	s2,s1,4

00000014 <.LVL3>:
  14:	479d                	li	a5,7
  16:	0327e063          	bltu	a5,s2,36 <.L3>
  1a:	000005b7          	lui	a1,0x0
  1e:	00000537          	lui	a0,0x0

00000022 <.LVL4>:
  22:	07900613          	li	a2,121
  26:	00058593          	mv	a1,a1
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL4+0xc>

00000036 <.L3>:
  36:	000007b7          	lui	a5,0x0
  3a:	01c7a783          	lw	a5,28(a5) # 1c <.LVL3+0x8>

0000003e <.LBB18>:
  3e:	30047073          	csrci	mstatus,8

00000042 <.LBE18>:
  42:	4401                	li	s0,0
  44:	04b1                	addi	s1,s1,12

00000046 <.L4>:
  46:	e3a1                	bnez	a5,86 <.L6>
  48:	ec19                	bnez	s0,66 <.L7>
  4a:	000005b7          	lui	a1,0x0
  4e:	00000537          	lui	a0,0x0
  52:	09500613          	li	a2,149
  56:	00058593          	mv	a1,a1
  5a:	00050513          	mv	a0,a0
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L4+0x18>

00000066 <.L7>:
  66:	4048                	lw	a0,4(s0)
  68:	41250533          	sub	a0,a0,s2
  6c:	c048                	sw	a0,4(s0)
  6e:	9522                	add	a0,a0,s0

00000070 <.LVL9>:
  70:	01252023          	sw	s2,0(a0) # 0 <ke_malloc>

00000074 <.LBB20>:
  74:	30046073          	csrsi	mstatus,8

00000078 <.LBE20>:
  78:	40b2                	lw	ra,12(sp)
  7a:	4422                	lw	s0,8(sp)

0000007c <.LVL11>:
  7c:	4492                	lw	s1,4(sp)
  7e:	4902                	lw	s2,0(sp)

00000080 <.LVL12>:
  80:	0511                	addi	a0,a0,4

00000082 <.LVL13>:
  82:	0141                	addi	sp,sp,16
  84:	8082                	ret

00000086 <.L6>:
  86:	43d8                	lw	a4,4(a5)
  88:	00976663          	bltu	a4,s1,94 <.L5>
  8c:	c411                	beqz	s0,98 <.L9>
  8e:	4054                	lw	a3,4(s0)
  90:	00d76463          	bltu	a4,a3,98 <.L9>

00000094 <.L5>:
  94:	439c                	lw	a5,0(a5)
  96:	bf45                	j	46 <.L4>

00000098 <.L9>:
  98:	843e                	mv	s0,a5

0000009a <.LVL17>:
  9a:	bfed                	j	94 <.L5>

Disassembly of section .text.ke_free:

00000000 <ke_free>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
   6:	cc22                	sw	s0,24(sp)
   8:	01c7a403          	lw	s0,28(a5) # 1c <.LVL19>
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	84aa                	mv	s1,a0
  18:	ffc50913          	addi	s2,a0,-4

0000001c <.LVL19>:
  1c:	ffc52983          	lw	s3,-4(a0)

00000020 <.LVL20>:
  20:	02a46063          	bltu	s0,a0,40 <.L12>
  24:	000005b7          	lui	a1,0x0
  28:	00000537          	lui	a0,0x0

0000002c <.LVL21>:
  2c:	0c500613          	li	a2,197
  30:	00058593          	mv	a1,a1
  34:	00050513          	mv	a0,a0
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL21+0xc>

00000040 <.L12>:
  40:	30047073          	csrci	mstatus,8

00000044 <.LBE22>:
  44:	4a01                	li	s4,0

00000046 <.L13>:
  46:	e411                	bnez	s0,52 <.L19>
  48:	012a2023          	sw	s2,0(s4)
  4c:	fe04ae23          	sw	zero,-4(s1)
  50:	a8bd                	j	ce <.L21>

00000052 <.L19>:
  52:	405c                	lw	a5,4(s0)
  54:	00878733          	add	a4,a5,s0
  58:	03271863          	bne	a4,s2,88 <.L14>
  5c:	4018                	lw	a4,0(s0)
  5e:	97ce                	add	a5,a5,s3
  60:	c05c                	sw	a5,4(s0)
  62:	00f406b3          	add	a3,s0,a5
  66:	00d71763          	bne	a4,a3,74 <.L15>

0000006a <.LVL24>:
  6a:	4354                	lw	a3,4(a4)
  6c:	97b6                	add	a5,a5,a3
  6e:	c05c                	sw	a5,4(s0)
  70:	431c                	lw	a5,0(a4)
  72:	c01c                	sw	a5,0(s0)

00000074 <.L15>:
  74:	30046073          	csrsi	mstatus,8

00000078 <.LBE24>:
  78:	40f2                	lw	ra,28(sp)
  7a:	4462                	lw	s0,24(sp)
  7c:	44d2                	lw	s1,20(sp)

0000007e <.LVL26>:
  7e:	4942                	lw	s2,16(sp)
  80:	49b2                	lw	s3,12(sp)

00000082 <.LVL27>:
  82:	4a22                	lw	s4,8(sp)

00000084 <.LVL28>:
  84:	6105                	addi	sp,sp,32
  86:	8082                	ret

00000088 <.L14>:
  88:	04897663          	bgeu	s2,s0,d4 <.L16>
  8c:	020a1063          	bnez	s4,ac <.L17>
  90:	000005b7          	lui	a1,0x0
  94:	00000537          	lui	a0,0x0
  98:	0e000613          	li	a2,224
  9c:	00058593          	mv	a1,a1
  a0:	00050513          	mv	a0,a0
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L14+0x1c>

000000ac <.L17>:
  ac:	012a2023          	sw	s2,0(s4)
  b0:	013907b3          	add	a5,s2,s3
  b4:	00f41b63          	bne	s0,a5,ca <.L18>
  b8:	401c                	lw	a5,0(s0)
  ba:	fef4ae23          	sw	a5,-4(s1)
  be:	405c                	lw	a5,4(s0)
  c0:	41278933          	sub	s2,a5,s2

000000c4 <.LVL31>:
  c4:	944a                	add	s0,s0,s2

000000c6 <.LVL32>:
  c6:	c080                	sw	s0,0(s1)
  c8:	b775                	j	74 <.L15>

000000ca <.L18>:
  ca:	fe84ae23          	sw	s0,-4(s1)

000000ce <.L21>:
  ce:	0134a023          	sw	s3,0(s1)
  d2:	b74d                	j	74 <.L15>

000000d4 <.L16>:
  d4:	8a22                	mv	s4,s0
  d6:	4000                	lw	s0,0(s0)

000000d8 <.LVL35>:
  d8:	b7bd                	j	46 <.L13>
