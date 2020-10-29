
td.o:     file format elf32-littleriscv


Disassembly of section .text.td_timer_end:

00000000 <td_timer_end>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB26>:
   a:	44b007b7          	lui	a5,0x44b00
   e:	1207a903          	lw	s2,288(a5) # 44b00120 <.LASF375+0x44afdb69>

00000012 <.LBE26>:
  12:	02354783          	lbu	a5,35(a0)
  16:	842a                	mv	s0,a0
  18:	c7ad                	beqz	a5,82 <.L2>
  1a:	4904                	lw	s1,16(a0)
  1c:	495c                	lw	a5,20(a0)
  1e:	009034b3          	snez	s1,s1

00000022 <.LVL2>:
  22:	c399                	beqz	a5,28 <.L3>
  24:	0024e493          	ori	s1,s1,2

00000028 <.L3>:
  28:	4c1c                	lw	a5,24(s0)
  2a:	c399                	beqz	a5,30 <.L4>
  2c:	0044e493          	ori	s1,s1,4

00000030 <.L4>:
  30:	4c5c                	lw	a5,28(s0)
  32:	c399                	beqz	a5,38 <.L5>
  34:	0084e493          	ori	s1,s1,8

00000038 <.L5>:
  38:	02144783          	lbu	a5,33(s0)
  3c:	8fa5                	xor	a5,a5,s1
  3e:	8bb1                	andi	a5,a5,12
  40:	cf9d                	beqz	a5,7e <.L6>
  42:	0044f793          	andi	a5,s1,4
  46:	ebd1                	bnez	a5,da <.L9>
  48:	000005b7          	lui	a1,0x0
  4c:	00058593          	mv	a1,a1

00000050 <.L7>:
  50:	0084f793          	andi	a5,s1,8
  54:	ebc1                	bnez	a5,e4 <.L10>
  56:	00000637          	lui	a2,0x0
  5a:	00060613          	mv	a2,a2

0000005e <.L8>:
  5e:	00000537          	lui	a0,0x0

00000062 <.LVL6>:
  62:	00050513          	mv	a0,a0
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL6+0x4>

0000006e <.LVL7>:
  6e:	02044503          	lbu	a0,32(s0)
  72:	00c4f593          	andi	a1,s1,12
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL7+0x8>

0000007e <.L6>:
  7e:	029400a3          	sb	s1,33(s0)

00000082 <.L2>:
  82:	02044703          	lbu	a4,32(s0)
  86:	5d800693          	li	a3,1496
  8a:	000007b7          	lui	a5,0x0
  8e:	02d70733          	mul	a4,a4,a3
  92:	00078793          	mv	a5,a5
  96:	00042823          	sw	zero,16(s0)
  9a:	00042a23          	sw	zero,20(s0)
  9e:	00042c23          	sw	zero,24(s0)
  a2:	00042e23          	sw	zero,28(s0)
  a6:	000f45b7          	lui	a1,0xf4
  aa:	24058593          	addi	a1,a1,576 # f4240 <.LASF375+0xf1c89>
  ae:	8522                	mv	a0,s0
  b0:	40b2                	lw	ra,12(sp)
  b2:	97ba                	add	a5,a5,a4
  b4:	00000737          	lui	a4,0x0
  b8:	43bc                	lw	a5,64(a5)
  ba:	02072703          	lw	a4,32(a4) # 20 <.LBE26+0xe>
  be:	4492                	lw	s1,4(sp)
  c0:	95ca                	add	a1,a1,s2
  c2:	8f99                	sub	a5,a5,a4
  c4:	0017b793          	seqz	a5,a5
  c8:	02f401a3          	sb	a5,35(s0)
  cc:	4422                	lw	s0,8(sp)

000000ce <.LVL10>:
  ce:	4902                	lw	s2,0(sp)

000000d0 <.LVL11>:
  d0:	0141                	addi	sp,sp,16
  d2:	00000317          	auipc	t1,0x0
  d6:	00030067          	jr	t1 # d2 <.LVL11+0x2>

000000da <.L9>:
  da:	000005b7          	lui	a1,0x0
  de:	00058593          	mv	a1,a1
  e2:	b7bd                	j	50 <.L7>

000000e4 <.L10>:
  e4:	00000637          	lui	a2,0x0
  e8:	00060613          	mv	a2,a2
  ec:	bf8d                	j	5e <.L8>

Disassembly of section .text.td_reset:

00000000 <td_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	02400493          	li	s1,36
   8:	029504b3          	mul	s1,a0,s1
   c:	c422                	sw	s0,8(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	00000437          	lui	s0,0x0
  14:	85aa                	mv	a1,a0
  16:	892a                	mv	s2,a0
  18:	00000537          	lui	a0,0x0

0000001c <.LVL14>:
  1c:	00040793          	mv	a5,s0
  20:	00050513          	mv	a0,a0
  24:	c606                	sw	ra,12(sp)
  26:	94be                	add	s1,s1,a5

00000028 <.LVL15>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL15>

00000030 <.LVL16>:
  30:	0224c783          	lbu	a5,34(s1)
  34:	00040413          	mv	s0,s0
  38:	c791                	beqz	a5,44 <.L28>
  3a:	8526                	mv	a0,s1
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL16+0xc>

00000044 <.L28>:
  44:	8526                	mv	a0,s1
  46:	02400613          	li	a2,36
  4a:	4581                	li	a1,0
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L28+0x8>

00000054 <.LVL18>:
  54:	02400793          	li	a5,36
  58:	02f907b3          	mul	a5,s2,a5
  5c:	00000737          	lui	a4,0x0
  60:	00070713          	mv	a4,a4
  64:	97a2                	add	a5,a5,s0
  66:	c3d8                	sw	a4,4(a5)
  68:	c784                	sw	s1,8(a5)
  6a:	03278023          	sb	s2,32(a5) # 20 <.LVL14+0x4>
  6e:	40b2                	lw	ra,12(sp)
  70:	4422                	lw	s0,8(sp)
  72:	4492                	lw	s1,4(sp)

00000074 <.LVL19>:
  74:	4902                	lw	s2,0(sp)
  76:	0141                	addi	sp,sp,16
  78:	8082                	ret

Disassembly of section .text.td_init:

00000000 <td_init>:
   0:	00000537          	lui	a0,0x0
   4:	1141                	addi	sp,sp,-16
   6:	00050513          	mv	a0,a0
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <td_init+0xc>

00000014 <.LVL20>:
  14:	4501                	li	a0,0
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL20+0x2>

0000001e <.LVL21>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4505                	li	a0,1
  22:	0141                	addi	sp,sp,16
  24:	00000317          	auipc	t1,0x0
  28:	00030067          	jr	t1 # 24 <.LVL21+0x6>

Disassembly of section .text.td_start:

00000000 <td_start>:
   0:	02400793          	li	a5,36
   4:	02f507b3          	mul	a5,a0,a5
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	00000437          	lui	s0,0x0
  10:	00040413          	mv	s0,s0
  14:	c606                	sw	ra,12(sp)
  16:	c226                	sw	s1,4(sp)
  18:	943e                	add	s0,s0,a5
  1a:	02244783          	lbu	a5,34(s0) # 22 <.LBB27>
  1e:	ef9d                	bnez	a5,5c <.L35>
  20:	85aa                	mv	a1,a0

00000022 <.LBB27>:
  22:	00000537          	lui	a0,0x0

00000026 <.LBB38>:
  26:	44b007b7          	lui	a5,0x44b00

0000002a <.LBE38>:
  2a:	00050513          	mv	a0,a0

0000002e <.LBB39>:
  2e:	1207a483          	lw	s1,288(a5) # 44b00120 <.LASF375+0x44afdb69>

00000032 <.LBE39>:
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LBE39>

0000003a <.LVL26>:
  3a:	4785                	li	a5,1
  3c:	02f40123          	sb	a5,34(s0)
  40:	000f45b7          	lui	a1,0xf4
  44:	24058593          	addi	a1,a1,576 # f4240 <.LASF375+0xf1c89>
  48:	8522                	mv	a0,s0

0000004a <.LBE40>:
  4a:	4422                	lw	s0,8(sp)
  4c:	40b2                	lw	ra,12(sp)

0000004e <.LBB41>:
  4e:	95a6                	add	a1,a1,s1

00000050 <.LBE41>:
  50:	4492                	lw	s1,4(sp)

00000052 <.LVL27>:
  52:	0141                	addi	sp,sp,16

00000054 <.LBB42>:
  54:	00000317          	auipc	t1,0x0
  58:	00030067          	jr	t1 # 54 <.LBB42>

0000005c <.L35>:
  5c:	40b2                	lw	ra,12(sp)
  5e:	4422                	lw	s0,8(sp)
  60:	4492                	lw	s1,4(sp)
  62:	0141                	addi	sp,sp,16
  64:	8082                	ret

Disassembly of section .text.td_pck_ind:

00000000 <td_pck_ind>:
   0:	02400713          	li	a4,36
   4:	02e50533          	mul	a0,a0,a4

00000008 <.LVL30>:
   8:	000007b7          	lui	a5,0x0
   c:	00078793          	mv	a5,a5
  10:	97aa                	add	a5,a5,a0
  12:	c609                	beqz	a2,1c <.L39>
  14:	4bd8                	lw	a4,20(a5)
  16:	0705                	addi	a4,a4,1
  18:	cbd8                	sw	a4,20(a5)
  1a:	8082                	ret

0000001c <.L39>:
  1c:	4b98                	lw	a4,16(a5)
  1e:	0705                	addi	a4,a4,1
  20:	cb98                	sw	a4,16(a5)
  22:	8082                	ret

Disassembly of section .text.td_pck_ps_ind:

00000000 <td_pck_ps_ind>:
   0:	02400713          	li	a4,36
   4:	02e50533          	mul	a0,a0,a4

00000008 <.LVL32>:
   8:	000007b7          	lui	a5,0x0
   c:	00078793          	mv	a5,a5
  10:	97aa                	add	a5,a5,a0
  12:	c589                	beqz	a1,1c <.L42>
  14:	4fd8                	lw	a4,28(a5)
  16:	0705                	addi	a4,a4,1
  18:	cfd8                	sw	a4,28(a5)
  1a:	8082                	ret

0000001c <.L42>:
  1c:	4f98                	lw	a4,24(a5)
  1e:	0705                	addi	a4,a4,1
  20:	cf98                	sw	a4,24(a5)
  22:	8082                	ret
