
libbl602_wifi/phy_trpc.o:     file format elf32-littleriscv


Disassembly of section .text.trpc_update_power:

00000000 <trpc_update_power>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*

00000008 <.LVL1>:
   8:	4681                	li	a3,0
   a:	45a1                	li	a1,8
   c:	4661                	li	a2,24

0000000e <.L3>:
   e:	00d50333          	add	t1,a0,a3
  12:	4701                	li	a4,0

00000014 <.L2>:
  14:	00e30833          	add	a6,t1,a4
  18:	00080883          	lb	a7,0(a6)
  1c:	00e78833          	add	a6,a5,a4
  20:	0705                	addi	a4,a4,1
  22:	01180023          	sb	a7,0(a6)
  26:	feb717e3          	bne	a4,a1,14 <.L2>
			26: R_RISCV_BRANCH	.L2
  2a:	06a1                	addi	a3,a3,8
  2c:	07a1                	addi	a5,a5,8
  2e:	fec690e3          	bne	a3,a2,e <.L3>
			2e: R_RISCV_BRANCH	.L3
  32:	8082                	ret

Disassembly of section .text.trpc_power_get:

00000000 <trpc_power_get>:
   0:	000005b7          	lui	a1,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	4661                	li	a2,24
   6:	00058593          	mv	a1,a1
			6: R_RISCV_LO12_I	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	00000317          	auipc	t1,0x0
			a: R_RISCV_CALL	memcpy
			a: R_RISCV_RELAX	*ABS*
   e:	00030067          	jr	t1 # a <trpc_power_get+0xa>

Disassembly of section .text.trpc_update_power_11b:

00000000 <trpc_update_power_11b>:
   0:	00000737          	lui	a4,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	4781                	li	a5,0
   6:	00070713          	mv	a4,a4
			6: R_RISCV_LO12_I	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	4691                	li	a3,4

0000000c <.L8>:
   c:	00f50633          	add	a2,a0,a5
  10:	00060583          	lb	a1,0(a2)
  14:	00f70633          	add	a2,a4,a5
  18:	0785                	addi	a5,a5,1
  1a:	00b60023          	sb	a1,0(a2)
  1e:	fed797e3          	bne	a5,a3,c <.L8>
			1e: R_RISCV_BRANCH	.L8
  22:	8082                	ret

Disassembly of section .text.trpc_update_power_11g:

00000000 <trpc_update_power_11g>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	4701                	li	a4,0
   a:	46a1                	li	a3,8

0000000c <.L11>:
   c:	00e50633          	add	a2,a0,a4
  10:	00060603          	lb	a2,0(a2)
  14:	0705                	addi	a4,a4,1
  16:	0785                	addi	a5,a5,1
  18:	00c783a3          	sb	a2,7(a5) # 7 <trpc_update_power_11g+0x7>
  1c:	fed718e3          	bne	a4,a3,c <.L11>
			1c: R_RISCV_BRANCH	.L11
  20:	8082                	ret

Disassembly of section .text.trpc_update_power_11n:

00000000 <trpc_update_power_11n>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	4701                	li	a4,0
   a:	46a1                	li	a3,8

0000000c <.L14>:
   c:	00e50633          	add	a2,a0,a4
  10:	00060603          	lb	a2,0(a2)
  14:	0705                	addi	a4,a4,1
  16:	0785                	addi	a5,a5,1
  18:	00c787a3          	sb	a2,15(a5) # f <.L14+0x3>
  1c:	fed718e3          	bne	a4,a3,c <.L14>
			1c: R_RISCV_BRANCH	.L14
  20:	8082                	ret

Disassembly of section .text.trpc_init:

00000000 <trpc_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	6785                	lui	a5,0x1
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	trpc_env
			6: R_RISCV_RELAX	*ABS*
   a:	00040413          	mv	s0,s0
			a: R_RISCV_LO12_I	trpc_env
			a: R_RISCV_RELAX	*ABS*
   e:	98a78793          	addi	a5,a5,-1654 # 98a <.LASF84+0xd>
  12:	c606                	sw	ra,12(sp)
  14:	00f41223          	sh	a5,4(s0) # 4 <trpc_init+0x4>
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	rf_pri_get_txgain_max
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <trpc_init+0x18>

00000020 <.LVL15>:
  20:	00a40023          	sb	a0,0(s0)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	rf_pri_get_txgain_min
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL15+0x4>

0000002c <.LVL16>:
  2c:	47f9                	li	a5,30
  2e:	00f40123          	sb	a5,2(s0)
  32:	47e5                	li	a5,25
  34:	00a400a3          	sb	a0,1(s0)
  38:	00f41323          	sh	a5,6(s0)
  3c:	40b2                	lw	ra,12(sp)
  3e:	4422                	lw	s0,8(sp)
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

Disassembly of section .text.trpc_get_rf_max_power:

00000000 <trpc_get_rf_max_power>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	trpc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078503          	lb	a0,0(a5) # 0 <trpc_get_rf_max_power>
			4: R_RISCV_LO12_I	trpc_env
			4: R_RISCV_RELAX	*ABS*
   8:	8082                	ret

Disassembly of section .text.trpc_get_rf_min_power:

00000000 <trpc_get_rf_min_power>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	trpc_env+0x1
			0: R_RISCV_RELAX	*ABS*+0x1
   4:	00178503          	lb	a0,1(a5) # 1 <trpc_get_rf_min_power+0x1>
			4: R_RISCV_LO12_I	trpc_env+0x1
			4: R_RISCV_RELAX	*ABS*+0x1
   8:	8082                	ret

Disassembly of section .text.trpc_get_power_idx:

00000000 <trpc_get_power_idx>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	4789                	li	a5,2
   8:	842a                	mv	s0,a0
   a:	4709                	li	a4,2
   c:	00a7e463          	bltu	a5,a0,14 <.L21>
			c: R_RISCV_BRANCH	.L21
  10:	0ff57713          	andi	a4,a0,255

00000014 <.L21>:
  14:	488d                	li	a7,3
  16:	c011                	beqz	s0,1a <.L22>
			16: R_RISCV_RVC_BRANCH	.L22
  18:	489d                	li	a7,7

0000001a <.L22>:
  1a:	000006b7          	lui	a3,0x0
			1a: R_RISCV_HI20	trpc_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00068793          	mv	a5,a3
			1e: R_RISCV_LO12_I	trpc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00078503          	lb	a0,0(a5)

00000026 <.LVL19>:
  26:	0027c783          	lbu	a5,2(a5)
  2a:	00068813          	mv	a6,a3
			2a: R_RISCV_LO12_I	trpc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	01879313          	slli	t1,a5,0x18
  32:	41835313          	srai	t1,t1,0x18
  36:	00655363          	bge	a0,t1,3c <.L23>
			36: R_RISCV_BRANCH	.L23
  3a:	87aa                	mv	a5,a0

0000003c <.L23>:
  3c:	01879693          	slli	a3,a5,0x18
  40:	86e1                	srai	a3,a3,0x18
  42:	00d65363          	bge	a2,a3,48 <.L24>
			42: R_RISCV_BRANCH	.L24
  46:	87b2                	mv	a5,a2

00000048 <.L24>:
  48:	07e2                	slli	a5,a5,0x18
  4a:	87e1                	srai	a5,a5,0x18
  4c:	00b8d363          	bge	a7,a1,52 <.L25>
			4c: R_RISCV_BRANCH	.L25
  50:	85c6                	mv	a1,a7

00000052 <.L25>:
  52:	00371693          	slli	a3,a4,0x3
  56:	00000737          	lui	a4,0x0
			56: R_RISCV_HI20	.LANCHOR0
			56: R_RISCV_RELAX	*ABS*
  5a:	00070713          	mv	a4,a4
			5a: R_RISCV_LO12_I	.LANCHOR0
			5a: R_RISCV_RELAX	*ABS*
  5e:	9736                	add	a4,a4,a3
  60:	95ba                	add	a1,a1,a4
  62:	0005c703          	lbu	a4,0(a1) # 0 <trpc_get_power_idx>
  66:	01871693          	slli	a3,a4,0x18
  6a:	86e1                	srai	a3,a3,0x18
  6c:	00d7d363          	bge	a5,a3,72 <.L26>
			6c: R_RISCV_BRANCH	.L26
  70:	873e                	mv	a4,a5

00000072 <.L26>:
  72:	00184783          	lbu	a5,1(a6)
  76:	01871693          	slli	a3,a4,0x18
  7a:	86e1                	srai	a3,a3,0x18
  7c:	01879613          	slli	a2,a5,0x18
  80:	8661                	srai	a2,a2,0x18
  82:	00d65363          	bge	a2,a3,88 <.L27>
			82: R_RISCV_BRANCH	.L27
  86:	87ba                	mv	a5,a4

00000088 <.L27>:
  88:	07e2                	slli	a5,a5,0x18
  8a:	e0200713          	li	a4,-510

0000008e <.LVL22>:
  8e:	87e1                	srai	a5,a5,0x18
  90:	02e787b3          	mul	a5,a5,a4
  94:	97aa                	add	a5,a5,a0
  96:	20000513          	li	a0,512

0000009a <.LVL23>:
  9a:	02a7c533          	div	a0,a5,a0
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	__floatsidf
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LVL23+0x4>

000000a6 <.LVL24>:
  a6:	000007b7          	lui	a5,0x0
			a6: R_RISCV_HI20	.LC0
			a6: R_RISCV_RELAX	*ABS*
  aa:	0007a603          	lw	a2,0(a5) # 0 <trpc_get_power_idx>
			aa: R_RISCV_LO12_I	.LC0
			aa: R_RISCV_RELAX	*ABS*
  ae:	0047a683          	lw	a3,4(a5)
			ae: R_RISCV_LO12_I	.LC0+0x4
			ae: R_RISCV_RELAX	*ABS*+0x4
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	__adddf3
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL24+0xc>
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	__fixdfsi
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.LVL24+0x14>
  c2:	0ff57513          	andi	a0,a0,255

000000c6 <.LVL27>:
  c6:	478d                	li	a5,3
  c8:	c011                	beqz	s0,cc <.L28>
			c8: R_RISCV_RVC_BRANCH	.L28
  ca:	4781                	li	a5,0

000000cc <.L28>:
  cc:	97aa                	add	a5,a5,a0
  ce:	0ff7f793          	andi	a5,a5,255

000000d2 <.LVL28>:
  d2:	473d                	li	a4,15
  d4:	853e                	mv	a0,a5
  d6:	00f77363          	bgeu	a4,a5,dc <.L29>
			d6: R_RISCV_BRANCH	.L29
  da:	453d                	li	a0,15

000000dc <.L29>:
  dc:	40b2                	lw	ra,12(sp)
  de:	4422                	lw	s0,8(sp)
  e0:	050a                	slli	a0,a0,0x2
  e2:	0fc57513          	andi	a0,a0,252
  e6:	0141                	addi	sp,sp,16
  e8:	8082                	ret

Disassembly of section .text.trpc_get_default_power_idx:

00000000 <trpc_get_default_power_idx>:
   0:	4789                	li	a5,2
   2:	0ff57713          	andi	a4,a0,255
   6:	00a7f363          	bgeu	a5,a0,c <.L37>
			6: R_RISCV_BRANCH	.L37
   a:	4709                	li	a4,2

0000000c <.L37>:
   c:	478d                	li	a5,3
   e:	c111                	beqz	a0,12 <.L38>
			e: R_RISCV_RVC_BRANCH	.L38
  10:	479d                	li	a5,7

00000012 <.L38>:
  12:	00b7d363          	bge	a5,a1,18 <.L39>
			12: R_RISCV_BRANCH	.L39
  16:	85be                	mv	a1,a5

00000018 <.L39>:
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	.LANCHOR0
			18: R_RISCV_RELAX	*ABS*
  1c:	00371693          	slli	a3,a4,0x3
  20:	00078793          	mv	a5,a5
			20: R_RISCV_LO12_I	.LANCHOR0
			20: R_RISCV_RELAX	*ABS*
  24:	97b6                	add	a5,a5,a3
  26:	97ae                	add	a5,a5,a1
  28:	00078603          	lb	a2,0(a5) # 0 <trpc_get_default_power_idx>
  2c:	0ff5f593          	andi	a1,a1,255
  30:	853a                	mv	a0,a4
  32:	00000317          	auipc	t1,0x0
			32: R_RISCV_CALL	trpc_get_power_idx
			32: R_RISCV_RELAX	*ABS*
  36:	00030067          	jr	t1 # 32 <.L39+0x1a>

Disassembly of section .text.trpc_update_vs_channel:

00000000 <trpc_update_vs_channel>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	trpc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	trpc_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00a41223          	sh	a0,4(s0) # 4 <trpc_update_vs_channel+0x4>
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	rf_pri_get_txgain_max
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <trpc_update_vs_channel+0x12>

0000001a <.LVL34>:
  1a:	00a40023          	sb	a0,0(s0)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	rf_pri_get_txgain_min
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL34+0x4>

00000026 <.LVL35>:
  26:	00a400a3          	sb	a0,1(s0)
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret

Disassembly of section .text.trpc_update_vs_temperature:

00000000 <trpc_update_vs_temperature>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	trpc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	trpc_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00a40323          	sb	a0,6(s0) # 6 <trpc_update_vs_temperature+0x6>
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	rf_pri_get_txgain_max
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <trpc_update_vs_temperature+0x12>

0000001a <.LVL37>:
  1a:	00a40023          	sb	a0,0(s0)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	rf_pri_get_txgain_min
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL37+0x4>

00000026 <.LVL38>:
  26:	00a400a3          	sb	a0,1(s0)
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret
