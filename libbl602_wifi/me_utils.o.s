
libbl602_wifi/me_utils.o:     file format elf32-littleriscv


Disassembly of section .text.me_set_sta_ht_vht_param:

00000000 <me_set_sta_ht_vht_param>:
   0:	0c055783          	lhu	a5,192(a0)
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	me_env
			4: R_RISCV_RELAX	*ABS*
   8:	00070813          	mv	a6,a4
			8: R_RISCV_LO12_I	me_env
			8: R_RISCV_RELAX	*ABS*
   c:	12f84883          	lbu	a7,303(a6)
  10:	0017d693          	srli	a3,a5,0x1
  14:	4087d613          	srai	a2,a5,0x8

00000018 <.LBB53>:
  18:	8a85                	andi	a3,a3,1

0000001a <.LBE53>:
  1a:	8a0d                	andi	a2,a2,3

0000001c <.LBB56>:
  1c:	00d8f363          	bgeu	a7,a3,22 <.L2>
			1c: R_RISCV_BRANCH	.L2
  20:	86c6                	mv	a3,a7

00000022 <.L2>:
  22:	0ed50823          	sb	a3,240(a0)
  26:	0835c703          	lbu	a4,131(a1)

0000002a <.LBB57>:
  2a:	4591                	li	a1,4

0000002c <.LVL5>:
  2c:	00b71363          	bne	a4,a1,32 <.L3>
			2c: R_RISCV_BRANCH	.L3
  30:	4709                	li	a4,2

00000032 <.L3>:
  32:	00e6f363          	bgeu	a3,a4,38 <.L4>
			32: R_RISCV_BRANCH	.L4
  36:	8736                	mv	a4,a3

00000038 <.L4>:
  38:	0ee508a3          	sb	a4,241(a0)

0000003c <.LBB65>:
  3c:	12e84703          	lbu	a4,302(a6)

00000040 <.LBB68>:
  40:	00e67363          	bgeu	a2,a4,46 <.L5>
			40: R_RISCV_BRANCH	.L5
  44:	8732                	mv	a4,a2

00000046 <.L5>:
  46:	0ee50a23          	sb	a4,244(a0)

0000004a <.LVL8>:
  4a:	00c7f513          	andi	a0,a5,12

0000004e <.LVL9>:
  4e:	1551                	addi	a0,a0,-12
  50:	00a03533          	snez	a0,a0
  54:	8082                	ret

Disassembly of section .text.me_11ac_mcs_max:

00000000 <me_11ac_mcs_max>:
   0:	00357793          	andi	a5,a0,3
   4:	4705                	li	a4,1
   6:	00e78863          	beq	a5,a4,16 <.L8>
			6: R_RISCV_BRANCH	.L8
   a:	4709                	li	a4,2
   c:	4525                	li	a0,9

0000000e <.LVL11>:
   e:	00e78563          	beq	a5,a4,18 <.L7>
			e: R_RISCV_BRANCH	.L7
  12:	451d                	li	a0,7
  14:	8082                	ret

00000016 <.L8>:
  16:	4521                	li	a0,8

00000018 <.L7>:
  18:	8082                	ret

Disassembly of section .text.me_11ac_nss_max:

00000000 <me_11ac_nss_max>:
   0:	4739                	li	a4,14
   2:	479d                	li	a5,7
   4:	460d                	li	a2,3

00000006 <.L12>:
   6:	40e556b3          	sra	a3,a0,a4
   a:	8a8d                	andi	a3,a3,3
   c:	00c69763          	bne	a3,a2,1a <.L11>
			c: R_RISCV_BRANCH	.L11
  10:	17fd                	addi	a5,a5,-1

00000012 <.LVL16>:
  12:	0ff7f793          	andi	a5,a5,255

00000016 <.LVL17>:
  16:	1779                	addi	a4,a4,-2
  18:	f7fd                	bnez	a5,6 <.L12>
			18: R_RISCV_RVC_BRANCH	.L12

0000001a <.L11>:
  1a:	853e                	mv	a0,a5

0000001c <.LVL18>:
  1c:	8082                	ret

Disassembly of section .text.me_11n_nss_max:

00000000 <me_11n_nss_max>:
   0:	00354783          	lbu	a5,3(a0)
   4:	eb99                	bnez	a5,1a <.L17>
			4: R_RISCV_RVC_BRANCH	.L17

00000006 <.LVL20>:
   6:	00254703          	lbu	a4,2(a0)
   a:	4789                	li	a5,2
   c:	e709                	bnez	a4,16 <.L16>
			c: R_RISCV_RVC_BRANCH	.L16

0000000e <.LVL21>:
   e:	00154783          	lbu	a5,1(a0)
  12:	c391                	beqz	a5,16 <.L16>
			12: R_RISCV_RVC_BRANCH	.L16
  14:	4785                	li	a5,1

00000016 <.L16>:
  16:	853e                	mv	a0,a5

00000018 <.LVL23>:
  18:	8082                	ret

0000001a <.L17>:
  1a:	478d                	li	a5,3
  1c:	bfed                	j	16 <.L16>
			1c: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.me_legacy_ridx_min:

00000000 <me_legacy_ridx_min>:
   0:	4781                	li	a5,0
   2:	4631                	li	a2,12

00000004 <.L24>:
   4:	40f55733          	sra	a4,a0,a5
   8:	8b05                	andi	a4,a4,1
   a:	0ff7f693          	andi	a3,a5,255

0000000e <.LVL27>:
   e:	e709                	bnez	a4,18 <.L23>
			e: R_RISCV_RVC_BRANCH	.L23

00000010 <.LVL28>:
  10:	0785                	addi	a5,a5,1

00000012 <.LVL29>:
  12:	fec799e3          	bne	a5,a2,4 <.L24>
			12: R_RISCV_BRANCH	.L24
  16:	46b1                	li	a3,12

00000018 <.L23>:
  18:	8536                	mv	a0,a3

0000001a <.LVL31>:
  1a:	8082                	ret

Disassembly of section .text.me_legacy_ridx_max:

00000000 <me_legacy_ridx_max>:
   0:	c50d                	beqz	a0,2a <.L30>
			0: R_RISCV_RVC_BRANCH	.L30
   2:	47ad                	li	a5,11
   4:	45ad                	li	a1,11
   6:	567d                	li	a2,-1

00000008 <.L29>:
   8:	40f556b3          	sra	a3,a0,a5
   c:	40f58733          	sub	a4,a1,a5
  10:	8a85                	andi	a3,a3,1
  12:	0ff77713          	andi	a4,a4,255

00000016 <.LVL33>:
  16:	e689                	bnez	a3,20 <.L28>
			16: R_RISCV_RVC_BRANCH	.L28

00000018 <.LVL34>:
  18:	17fd                	addi	a5,a5,-1

0000001a <.LVL35>:
  1a:	fec797e3          	bne	a5,a2,8 <.L29>
			1a: R_RISCV_BRANCH	.L29
  1e:	4731                	li	a4,12

00000020 <.L28>:
  20:	452d                	li	a0,11

00000022 <.LVL36>:
  22:	8d19                	sub	a0,a0,a4
  24:	0ff57513          	andi	a0,a0,255

00000028 <.LVL37>:
  28:	8082                	ret

0000002a <.L30>:
  2a:	4531                	li	a0,12

0000002c <.LVL39>:
  2c:	8082                	ret

Disassembly of section .text.me_rate_translate:

00000000 <me_rate_translate>:
   0:	07f57793          	andi	a5,a0,127

00000004 <.LVL41>:
   4:	4759                	li	a4,22
   6:	06e78963          	beq	a5,a4,78 <.L37>
			6: R_RISCV_BRANCH	.L37
   a:	02f76a63          	bltu	a4,a5,3e <.L34>
			a: R_RISCV_BRANCH	.L34
   e:	472d                	li	a4,11
  10:	4509                	li	a0,2
  12:	06e78463          	beq	a5,a4,7a <.L33>
			12: R_RISCV_BRANCH	.L33
  16:	00f76d63          	bltu	a4,a5,30 <.L35>
			16: R_RISCV_BRANCH	.L35
  1a:	4709                	li	a4,2
  1c:	4501                	li	a0,0
  1e:	04e78e63          	beq	a5,a4,7a <.L33>
			1e: R_RISCV_BRANCH	.L33
  22:	4711                	li	a4,4
  24:	4505                	li	a0,1

00000026 <.L52>:
  26:	04e78a63          	beq	a5,a4,7a <.L33>
			26: R_RISCV_BRANCH	.L33
  2a:	0ff00513          	li	a0,255
  2e:	8082                	ret

00000030 <.L35>:
  30:	4731                	li	a4,12
  32:	4511                	li	a0,4
  34:	04e78363          	beq	a5,a4,7a <.L33>
			34: R_RISCV_BRANCH	.L33
  38:	4749                	li	a4,18
  3a:	4515                	li	a0,5
  3c:	b7ed                	j	26 <.L52>
			3c: R_RISCV_RVC_JUMP	.L52

0000003e <.L34>:
  3e:	03000713          	li	a4,48
  42:	4521                	li	a0,8
  44:	02e78b63          	beq	a5,a4,7a <.L33>
			44: R_RISCV_BRANCH	.L33
  48:	00f76a63          	bltu	a4,a5,5c <.L36>
			48: R_RISCV_BRANCH	.L36
  4c:	4761                	li	a4,24
  4e:	4519                	li	a0,6
  50:	02e78563          	beq	a5,a4,7a <.L33>
			50: R_RISCV_BRANCH	.L33
  54:	02400713          	li	a4,36
  58:	451d                	li	a0,7
  5a:	b7f1                	j	26 <.L52>
			5a: R_RISCV_RVC_JUMP	.L52

0000005c <.L36>:
  5c:	06000713          	li	a4,96
  60:	4529                	li	a0,10
  62:	00e78c63          	beq	a5,a4,7a <.L33>
			62: R_RISCV_BRANCH	.L33
  66:	06c00713          	li	a4,108
  6a:	452d                	li	a0,11
  6c:	00e78763          	beq	a5,a4,7a <.L33>
			6c: R_RISCV_BRANCH	.L33
  70:	04800713          	li	a4,72
  74:	4525                	li	a0,9
  76:	bf45                	j	26 <.L52>
			76: R_RISCV_RVC_JUMP	.L52

00000078 <.L37>:
  78:	450d                	li	a0,3

0000007a <.L33>:
  7a:	8082                	ret

Disassembly of section .text.me_get_basic_rates:

00000000 <me_get_basic_rates>:
   0:	00058023          	sb	zero,0(a1)

00000004 <.LVL44>:
   4:	4781                	li	a5,0

00000006 <.L56>:
   6:	00054703          	lbu	a4,0(a0)
   a:	00e7c363          	blt	a5,a4,10 <.L58>
			a: R_RISCV_BRANCH	.L58
   e:	8082                	ret

00000010 <.L58>:
  10:	00f50733          	add	a4,a0,a5
  14:	00174683          	lbu	a3,1(a4) # 1 <me_get_basic_rates+0x1>
  18:	01869713          	slli	a4,a3,0x18
  1c:	8761                	srai	a4,a4,0x18
  1e:	00075b63          	bgez	a4,34 <.L57>
			1e: R_RISCV_BRANCH	.L57
  22:	0005c703          	lbu	a4,0(a1)
  26:	00e58633          	add	a2,a1,a4
  2a:	00d600a3          	sb	a3,1(a2)
  2e:	0705                	addi	a4,a4,1
  30:	00e58023          	sb	a4,0(a1)

00000034 <.L57>:
  34:	0785                	addi	a5,a5,1
  36:	bfc1                	j	6 <.L56>
			36: R_RISCV_RVC_JUMP	.L56

Disassembly of section .text.me_legacy_rate_bitfield_build:

00000000 <me_legacy_rate_bitfield_build>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	ca56                	sw	s5,20(sp)
   e:	c85a                	sw	s6,16(sp)
  10:	c65e                	sw	s7,12(sp)
  12:	d606                	sw	ra,44(sp)
  14:	892a                	mv	s2,a0
  16:	8a2e                	mv	s4,a1
  18:	4401                	li	s0,0
  1a:	4481                	li	s1,0

0000001c <.LBB69>:
  1c:	4aad                	li	s5,11
  1e:	4985                	li	s3,1
  20:	00000b37          	lui	s6,0x0
			20: R_RISCV_HI20	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00000bb7          	lui	s7,0x0
			24: R_RISCV_HI20	.LC1
			24: R_RISCV_RELAX	*ABS*

00000028 <.L60>:
  28:	00094783          	lbu	a5,0(s2)
  2c:	00f4ce63          	blt	s1,a5,48 <.L64>
			2c: R_RISCV_BRANCH	.L64
  30:	8522                	mv	a0,s0
  32:	50b2                	lw	ra,44(sp)
  34:	5422                	lw	s0,40(sp)

00000036 <.LVL49>:
  36:	5492                	lw	s1,36(sp)

00000038 <.LVL50>:
  38:	5902                	lw	s2,32(sp)

0000003a <.LVL51>:
  3a:	49f2                	lw	s3,28(sp)
  3c:	4a62                	lw	s4,24(sp)
  3e:	4ad2                	lw	s5,20(sp)
  40:	4b42                	lw	s6,16(sp)
  42:	4bb2                	lw	s7,12(sp)
  44:	6145                	addi	sp,sp,48
  46:	8082                	ret

00000048 <.L64>:
  48:	009907b3          	add	a5,s2,s1
  4c:	0017c503          	lbu	a0,1(a5)
  50:	000a0763          	beqz	s4,5e <.L61>
			50: R_RISCV_BRANCH	.L61
  54:	01851793          	slli	a5,a0,0x18
  58:	87e1                	srai	a5,a5,0x18
  5a:	0207d263          	bgez	a5,7e <.L62>
			5a: R_RISCV_BRANCH	.L62

0000005e <.L61>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	me_rate_translate
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.L61>

00000066 <.LVL53>:
  66:	00aade63          	bge	s5,a0,82 <.L63>
			66: R_RISCV_BRANCH	.L63
  6a:	1c600613          	li	a2,454
  6e:	000b0593          	mv	a1,s6
			6e: R_RISCV_LO12_I	.LC0
			6e: R_RISCV_RELAX	*ABS*
  72:	000b8513          	mv	a0,s7
			72: R_RISCV_LO12_I	.LC1
			72: R_RISCV_RELAX	*ABS*

00000076 <.LVL54>:
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	assert_warn
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL54>

0000007e <.L62>:
  7e:	0485                	addi	s1,s1,1
  80:	b765                	j	28 <.L60>
			80: R_RISCV_RVC_JUMP	.L60

00000082 <.L63>:
  82:	00a99533          	sll	a0,s3,a0

00000086 <.LVL58>:
  86:	8c49                	or	s0,s0,a0

00000088 <.LVL59>:
  88:	0442                	slli	s0,s0,0x10
  8a:	8041                	srli	s0,s0,0x10

0000008c <.LVL60>:
  8c:	bfcd                	j	7e <.L62>
			8c: R_RISCV_RVC_JUMP	.L62

Disassembly of section .text.me_rate_bitfield_vht_build:

00000000 <me_rate_bitfield_vht_build>:
   0:	6741                	lui	a4,0x10
   2:	4681                	li	a3,0
   4:	177d                	addi	a4,a4,-1

00000006 <.LBB72>:
   6:	480d                	li	a6,3

00000008 <.LBE72>:
   8:	4341                	li	t1,16

0000000a <.L73>:
   a:	40d557b3          	sra	a5,a0,a3
   e:	40d5d633          	sra	a2,a1,a3
  12:	8b8d                	andi	a5,a5,3

00000014 <.LVL63>:
  14:	8a0d                	andi	a2,a2,3
  16:	03078663          	beq	a5,a6,42 <.L71>
			16: R_RISCV_BRANCH	.L71
  1a:	03060463          	beq	a2,a6,42 <.L71>
			1a: R_RISCV_BRANCH	.L71
  1e:	00d818b3          	sll	a7,a6,a3
  22:	fff8c893          	not	a7,a7
  26:	00e8f733          	and	a4,a7,a4

0000002a <.LBB73>:
  2a:	00f67363          	bgeu	a2,a5,30 <.L72>
			2a: R_RISCV_BRANCH	.L72
  2e:	87b2                	mv	a5,a2

00000030 <.L72>:
  30:	00d797b3          	sll	a5,a5,a3
  34:	8fd9                	or	a5,a5,a4
  36:	01079713          	slli	a4,a5,0x10

0000003a <.LVL67>:
  3a:	0689                	addi	a3,a3,2

0000003c <.LVL68>:
  3c:	8341                	srli	a4,a4,0x10

0000003e <.LBE75>:
  3e:	fc6696e3          	bne	a3,t1,a <.L73>
			3e: R_RISCV_BRANCH	.L73

00000042 <.L71>:
  42:	853a                	mv	a0,a4

00000044 <.LVL70>:
  44:	8082                	ret

Disassembly of section .text.me_build_capability:

00000000 <me_build_capability>:
   0:	5d800713          	li	a4,1496
   4:	02e50733          	mul	a4,a0,a4
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	vif_info_tab
			8: R_RISCV_RELAX	*ABS*
   c:	00078693          	mv	a3,a5
			c: R_RISCV_LO12_I	vif_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	vif_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	96ba                	add	a3,a3,a4
  16:	0566c603          	lbu	a2,86(a3)
  1a:	4745                	li	a4,17
  1c:	ce09                	beqz	a2,36 <.L76>
			1c: R_RISCV_RVC_BRANCH	.L76
  1e:	4589                	li	a1,2
  20:	4705                	li	a4,1
  22:	00b61a63          	bne	a2,a1,36 <.L76>
			22: R_RISCV_BRANCH	.L76
  26:	3e86a683          	lw	a3,1000(a3)
  2a:	664d                	lui	a2,0x13
  2c:	a0060613          	addi	a2,a2,-1536 # 12a00 <.LASF489+0xf7e3>
  30:	8ef1                	and	a3,a3,a2
  32:	c291                	beqz	a3,36 <.L76>
			32: R_RISCV_RVC_BRANCH	.L76
  34:	4745                	li	a4,17

00000036 <.L76>:
  36:	5d800693          	li	a3,1496
  3a:	02d50533          	mul	a0,a0,a3

0000003e <.LVL73>:
  3e:	97aa                	add	a5,a5,a0
  40:	3a47a783          	lw	a5,932(a5) # 3a4 <.LLST82+0x1>
  44:	52076513          	ori	a0,a4,1312
  48:	0027c683          	lbu	a3,2(a5)
  4c:	4785                	li	a5,1
  4e:	00f68463          	beq	a3,a5,56 <.L78>
			4e: R_RISCV_BRANCH	.L78
  52:	42076513          	ori	a0,a4,1056

00000056 <.L78>:
  56:	8082                	ret

Disassembly of section .text.me_init_bcmc_rate:

00000000 <me_init_bcmc_rate>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	0b054783          	lbu	a5,176(a0)
   a:	842a                	mv	s0,a0
   c:	ef99                	bnez	a5,2a <.L84>
			c: R_RISCV_RVC_BRANCH	.L84
   e:	000005b7          	lui	a1,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	.LC2
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL76>:
  16:	22900613          	li	a2,553
  1a:	00058593          	mv	a1,a1
			1a: R_RISCV_LO12_I	.LC0
			1a: R_RISCV_RELAX	*ABS*
  1e:	00050513          	mv	a0,a0
			1e: R_RISCV_LO12_I	.LC2
			1e: R_RISCV_RELAX	*ABS*
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	assert_err
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL76+0xc>

0000002a <.L84>:
  2a:	0b044683          	lbu	a3,176(s0)
  2e:	4781                	li	a5,0
  30:	4501                	li	a0,0

00000032 <.L85>:
  32:	02d7c263          	blt	a5,a3,56 <.L87>
			32: R_RISCV_BRANCH	.L87
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	me_rate_translate
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.L85+0x4>

0000003e <.LVL79>:
  3e:	85aa                	mv	a1,a0
  40:	8522                	mv	a0,s0
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	rc_init_bcmc_rate
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL79+0x4>

0000004a <.LVL80>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	10040d23          	sb	zero,282(s0)
  50:	4422                	lw	s0,8(sp)

00000052 <.LVL81>:
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

00000056 <.L87>:
  56:	00f40733          	add	a4,s0,a5
  5a:	0b174703          	lbu	a4,177(a4) # 100b1 <.LASF489+0xce94>
  5e:	f7f77613          	andi	a2,a4,-129
  62:	00c55463          	bge	a0,a2,6a <.L86>
			62: R_RISCV_BRANCH	.L86
  66:	07f77513          	andi	a0,a4,127

0000006a <.L86>:
  6a:	0785                	addi	a5,a5,1
  6c:	b7d9                	j	32 <.L85>
			6c: R_RISCV_RVC_JUMP	.L85

Disassembly of section .text.me_tx_cfm_singleton:

00000000 <me_tx_cfm_singleton>:
   0:	557c                	lw	a5,108(a0)
   2:	6741                	lui	a4,0x10
   4:	439c                	lw	a5,0(a5)
   6:	4b9c                	lw	a5,16(a5)

00000008 <.LVL86>:
   8:	0087d613          	srli	a2,a5,0x8
   c:	8ff9                	and	a5,a5,a4

0000000e <.LVL87>:
   e:	0ff67613          	andi	a2,a2,255

00000012 <.LVL88>:
  12:	00f03733          	snez	a4,a5
  16:	00160593          	addi	a1,a2,1

0000001a <.LVL89>:
  1a:	963a                	add	a2,a2,a4

0000001c <.LVL90>:
  1c:	c79d                	beqz	a5,4a <.L95>
			1c: R_RISCV_RVC_BRANCH	.L95
  1e:	1101                	addi	sp,sp,-32
  20:	ce06                	sw	ra,28(sp)

00000022 <.LVL91>:
  22:	c62a                	sw	a0,12(sp)
  24:	c432                	sw	a2,8(sp)
  26:	c22e                	sw	a1,4(sp)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	rf_dump_status
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL91+0x6>

00000030 <.LVL92>:
  30:	4532                	lw	a0,12(sp)
  32:	4622                	lw	a2,8(sp)
  34:	4592                	lw	a1,4(sp)
  36:	40f2                	lw	ra,28(sp)
  38:	03054503          	lbu	a0,48(a0) # 30 <.LVL92>
  3c:	4701                	li	a4,0
  3e:	4681                	li	a3,0
  40:	6105                	addi	sp,sp,32

00000042 <.L98>:
  42:	00000317          	auipc	t1,0x0
			42: R_RISCV_CALL	rc_update_counters
			42: R_RISCV_RELAX	*ABS*
  46:	00030067          	jr	t1 # 42 <.L98>

0000004a <.L95>:
  4a:	4701                	li	a4,0
  4c:	4681                	li	a3,0
  4e:	03054503          	lbu	a0,48(a0)

00000052 <.LVL95>:
  52:	bfc5                	j	42 <.L98>
			52: R_RISCV_RVC_JUMP	.L98

Disassembly of section .text.me_tx_cfm_ampdu:

00000000 <me_tx_cfm_ampdu>:
   0:	8736                	mv	a4,a3
   2:	40c58633          	sub	a2,a1,a2

00000006 <.LVL97>:
   6:	4685                	li	a3,1

00000008 <.LVL98>:
   8:	00000317          	auipc	t1,0x0
			8: R_RISCV_CALL	rc_update_counters
			8: R_RISCV_RELAX	*ABS*
   c:	00030067          	jr	t1 # 8 <.LVL98>

Disassembly of section .text.me_check_rc:

00000000 <me_check_rc>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	rc_check
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <me_check_rc>

Disassembly of section .text.me_update_buffer_control:

00000000 <me_update_buffer_control>:
   0:	7139                	addi	sp,sp,-64
   2:	de06                	sw	ra,60(sp)
   4:	dc22                	sw	s0,56(sp)
   6:	da26                	sw	s1,52(sp)
   8:	d84a                	sw	s2,48(sp)
   a:	d64e                	sw	s3,44(sp)
   c:	d452                	sw	s4,40(sp)
   e:	d256                	sw	s5,36(sp)
  10:	d05a                	sw	s6,32(sp)
  12:	11a54603          	lbu	a2,282(a0)
  16:	10c52983          	lw	s3,268(a0)

0000001a <.LVL103>:
  1a:	14060663          	beqz	a2,166 <.L101>
			1a: R_RISCV_BRANCH	.L101

0000001e <.LBB76>:
  1e:	0049a903          	lw	s2,4(s3)

00000022 <.LVL105>:
  22:	01498493          	addi	s1,s3,20
  26:	8726                	mv	a4,s1
  28:	4781                	li	a5,0
  2a:	01010a13          	addi	s4,sp,16
  2e:	46c1                	li	a3,16

00000030 <.L103>:
  30:	00072803          	lw	a6,0(a4) # 10000 <.LASF489+0xcde3>
  34:	00f105b3          	add	a1,sp,a5
  38:	0711                	addi	a4,a4,4
  3a:	0105a023          	sw	a6,0(a1) # 0 <me_update_buffer_control>
  3e:	00c72803          	lw	a6,12(a4)
  42:	00fa05b3          	add	a1,s4,a5
  46:	0791                	addi	a5,a5,4
  48:	0105a023          	sw	a6,0(a1)
  4c:	fed792e3          	bne	a5,a3,30 <.L103>
			4c: R_RISCV_BRANCH	.L103
  50:	00167793          	andi	a5,a2,1
  54:	c7d1                	beqz	a5,e0 <.L104>
			54: R_RISCV_RVC_BRANCH	.L104

00000056 <.LBB77>:
  56:	11052883          	lw	a7,272(a0)

0000005a <.LVL107>:
  5a:	0f454f83          	lbu	t6,244(a0)

0000005e <.LBB78>:
  5e:	6311                	lui	t1,0x4
  60:	0b08cf03          	lbu	t5,176(a7)
  64:	880a                	mv	a6,sp

00000066 <.LBE77>:
  66:	4401                	li	s0,0
  68:	4701                	li	a4,0

0000006a <.LBB85>:
  6a:	4581                	li	a1,0

0000006c <.LBB81>:
  6c:	42b1                	li	t0,12
  6e:	137d                	addi	t1,t1,-1
  70:	800003b7          	lui	t2,0x80000
  74:	1fffceb7          	lui	t4,0x1fffc

00000078 <.LBE81>:
  78:	4e11                	li	t3,4

0000007a <.L107>:
  7a:	00bf07b3          	add	a5,t5,a1
  7e:	8b8d                	andi	a5,a5,3
  80:	07b9                	addi	a5,a5,14
  82:	078e                	slli	a5,a5,0x3
  84:	97c6                	add	a5,a5,a7
  86:	0107d783          	lhu	a5,16(a5)
  8a:	025787b3          	mul	a5,a5,t0
  8e:	97c6                	add	a5,a5,a7
  90:	00a7d783          	lhu	a5,10(a5)
  94:	00f377b3          	and	a5,t1,a5
  98:	0077e7b3          	or	a5,a5,t2

0000009c <.LVL110>:
  9c:	00b7d693          	srli	a3,a5,0xb
  a0:	8a99                	andi	a3,a3,6
  a2:	ca89                	beqz	a3,b4 <.L105>
			a2: R_RISCV_RVC_BRANCH	.L105

000000a4 <.LBB79>:
  a4:	0037d693          	srli	a3,a5,0x3
  a8:	8a8d                	andi	a3,a3,3

000000aa <.LVL112>:
  aa:	e9e9                	bnez	a1,17c <.L106>
			aa: R_RISCV_RVC_BRANCH	.L106
  ac:	01f6f463          	bgeu	a3,t6,b4 <.L105>
			ac: R_RISCV_BRANCH	.L105
  b0:	8736                	mv	a4,a3

000000b2 <.LVL113>:
  b2:	4405                	li	s0,1

000000b4 <.L105>:
  b4:	00082683          	lw	a3,0(a6)

000000b8 <.LBE82>:
  b8:	0585                	addi	a1,a1,1

000000ba <.LVL115>:
  ba:	0811                	addi	a6,a6,4

000000bc <.LBB83>:
  bc:	00def6b3          	and	a3,t4,a3
  c0:	8fd5                	or	a5,a5,a3

000000c2 <.LVL116>:
  c2:	fef82e23          	sw	a5,-4(a6)

000000c6 <.LBE83>:
  c6:	fbc59ae3          	bne	a1,t3,7a <.L107>
			c6: R_RISCV_BRANCH	.L107
  ca:	e7f97913          	andi	s2,s2,-385
  ce:	c409                	beqz	s0,d8 <.L108>
			ce: R_RISCV_RVC_BRANCH	.L108
  d0:	0705                	addi	a4,a4,1

000000d2 <.LVL118>:
  d2:	071e                	slli	a4,a4,0x7
  d4:	00e96933          	or	s2,s2,a4

000000d8 <.L108>:
  d8:	00266613          	ori	a2,a2,2
  dc:	10c50d23          	sb	a2,282(a0)

000000e0 <.L104>:
  e0:	11a54603          	lbu	a2,282(a0)
  e4:	00267793          	andi	a5,a2,2
  e8:	c795                	beqz	a5,114 <.L109>
			e8: R_RISCV_RVC_BRANCH	.L109

000000ea <.LBB86>:
  ea:	e00045b7          	lui	a1,0xe0004
  ee:	870a                	mv	a4,sp
  f0:	15fd                	addi	a1,a1,-1

000000f2 <.L111>:
  f2:	431c                	lw	a5,0(a4)

000000f4 <.LVL121>:
  f4:	00b7d693          	srli	a3,a5,0xb
  f8:	8a9d                	andi	a3,a3,7
  fa:	07c7f813          	andi	a6,a5,124
  fe:	0106e6b3          	or	a3,a3,a6
 102:	c691                	beqz	a3,10e <.L110>
			102: R_RISCV_RVC_BRANCH	.L110
 104:	11452683          	lw	a3,276(a0)
 108:	8fed                	and	a5,a5,a1

0000010a <.LVL122>:
 10a:	8fd5                	or	a5,a5,a3
 10c:	c31c                	sw	a5,0(a4)

0000010e <.L110>:
 10e:	0711                	addi	a4,a4,4

00000110 <.LBE86>:
 110:	feea11e3          	bne	s4,a4,f2 <.L111>
			110: R_RISCV_BRANCH	.L111

00000114 <.L109>:
 114:	8a41                	andi	a2,a2,16
 116:	842a                	mv	s0,a0
 118:	c205                	beqz	a2,138 <.L112>
			118: R_RISCV_RVC_BRANCH	.L112

0000011a <.LVL124>:
 11a:	4a81                	li	s5,0

0000011c <.LBB87>:
 11c:	4b41                	li	s6,16

0000011e <.L113>:
 11e:	015107b3          	add	a5,sp,s5
 122:	4388                	lw	a0,0(a5)
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	tpc_get_vif_tx_power_vs_rate
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.L113+0x6>

0000012c <.LVL125>:
 12c:	015a07b3          	add	a5,s4,s5
 130:	c388                	sw	a0,0(a5)
 132:	0a91                	addi	s5,s5,4
 134:	ff6a95e3          	bne	s5,s6,11e <.L113>
			134: R_RISCV_BRANCH	.L113

00000138 <.L112>:
 138:	30047073          	csrci	mstatus,8

0000013c <.LBE88>:
 13c:	4781                	li	a5,0
 13e:	0129a223          	sw	s2,4(s3)

00000142 <.LVL127>:
 142:	4741                	li	a4,16

00000144 <.L114>:
 144:	00f106b3          	add	a3,sp,a5
 148:	4294                	lw	a3,0(a3)
 14a:	0491                	addi	s1,s1,4
 14c:	fed4ae23          	sw	a3,-4(s1)
 150:	00fa06b3          	add	a3,s4,a5
 154:	4294                	lw	a3,0(a3)
 156:	0791                	addi	a5,a5,4
 158:	c4d4                	sw	a3,12(s1)
 15a:	fee795e3          	bne	a5,a4,144 <.L114>
			15a: R_RISCV_BRANCH	.L114

0000015e <.LBB90>:
 15e:	30046073          	csrsi	mstatus,8

00000162 <.LBE90>:
 162:	10040d23          	sb	zero,282(s0)

00000166 <.L101>:
 166:	50f2                	lw	ra,60(sp)
 168:	5462                	lw	s0,56(sp)
 16a:	854e                	mv	a0,s3
 16c:	54d2                	lw	s1,52(sp)
 16e:	5942                	lw	s2,48(sp)
 170:	59b2                	lw	s3,44(sp)

00000172 <.LVL130>:
 172:	5a22                	lw	s4,40(sp)
 174:	5a92                	lw	s5,36(sp)
 176:	5b02                	lw	s6,32(sp)
 178:	6121                	addi	sp,sp,64
 17a:	8082                	ret

0000017c <.L106>:
 17c:	dc05                	beqz	s0,b4 <.L105>
			17c: R_RISCV_RVC_BRANCH	.L105
 17e:	8e99                	sub	a3,a3,a4

00000180 <.LVL132>:
 180:	0016b413          	seqz	s0,a3

00000184 <.LVL133>:
 184:	bf05                	j	b4 <.L105>
			184: R_RISCV_RVC_JUMP	.L105

Disassembly of section .text.me_init_rate:

00000000 <me_init_rate>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	rc_init
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <me_init_rate+0x8>

00000010 <.LVL135>:
  10:	8522                	mv	a0,s0
  12:	4422                	lw	s0,8(sp)

00000014 <.LVL136>:
  14:	40b2                	lw	ra,12(sp)
  16:	0141                	addi	sp,sp,16
  18:	00000317          	auipc	t1,0x0
			18: R_RISCV_CALL	me_update_buffer_control
			18: R_RISCV_RELAX	*ABS*
  1c:	00030067          	jr	t1 # 18 <.LVL136+0x4>

Disassembly of section .text.me_bw_check:

00000000 <me_bw_check>:
   0:	467c                	lw	a5,76(a2)
   2:	0007d703          	lhu	a4,0(a5)

00000006 <.LVL139>:
   6:	4781                	li	a5,0
   8:	c11d                	beqz	a0,2e <.L148>
			8: R_RISCV_RVC_BRANCH	.L148
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	me_env+0x12f
			a: R_RISCV_RELAX	*ABS*+0x12f
   e:	12f7c783          	lbu	a5,303(a5) # 12f <.LVL125+0x3>
			e: R_RISCV_LO12_I	me_env+0x12f
			e: R_RISCV_RELAX	*ABS*+0x12f
  12:	cf91                	beqz	a5,2e <.L148>
			12: R_RISCV_RVC_BRANCH	.L148

00000014 <.LBB94>:
  14:	00354783          	lbu	a5,3(a0)
  18:	8b8d                	andi	a5,a5,3

0000001a <.LVL141>:
  1a:	cb91                	beqz	a5,2e <.L148>
			1a: R_RISCV_RVC_BRANCH	.L148

0000001c <.LBB97>:
  1c:	4585                	li	a1,1

0000001e <.LVL142>:
  1e:	46a9                	li	a3,10
  20:	00b78363          	beq	a5,a1,26 <.L149>
			20: R_RISCV_BRANCH	.L149
  24:	56d9                	li	a3,-10

00000026 <.L149>:
  26:	9736                	add	a4,a4,a3

00000028 <.LVL144>:
  28:	0742                	slli	a4,a4,0x10
  2a:	8341                	srli	a4,a4,0x10

0000002c <.LVL145>:
  2c:	4785                	li	a5,1

0000002e <.L148>:
  2e:	08f60123          	sb	a5,130(a2)
  32:	08f601a3          	sb	a5,131(a2)
  36:	04e61823          	sh	a4,80(a2)
  3a:	04061923          	sh	zero,82(a2)
  3e:	8082                	ret

Disassembly of section .text.me_beacon_check:

00000000 <me_beacon_check>:
   0:	7139                	addi	sp,sp,-64
   2:	ce5e                	sw	s7,28(sp)
   4:	5d800b93          	li	s7,1496
   8:	03750bb3          	mul	s7,a0,s7
   c:	dc22                	sw	s0,56(sp)
   e:	00000437          	lui	s0,0x0
			e: R_RISCV_HI20	vif_info_tab
			e: R_RISCV_RELAX	*ABS*
  12:	da26                	sw	s1,52(sp)
  14:	00040493          	mv	s1,s0
			14: R_RISCV_LO12_I	vif_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	d84a                	sw	s2,48(sp)
  1a:	d64e                	sw	s3,44(sp)
  1c:	d452                	sw	s4,40(sp)
  1e:	de06                	sw	ra,60(sp)
  20:	d256                	sw	s5,36(sp)
  22:	d05a                	sw	s6,32(sp)
  24:	cc62                	sw	s8,24(sp)
  26:	94de                	add	s1,s1,s7

00000028 <.LVL148>:
  28:	3a44a783          	lw	a5,932(s1)
  2c:	3c049c23          	sh	zero,984(s1)
  30:	fdc58593          	addi	a1,a1,-36 # e0003fdc <.LASF489+0xe0000dbf>

00000034 <.LVL149>:
  34:	0027c783          	lbu	a5,2(a5)
  38:	01059993          	slli	s3,a1,0x10
  3c:	892a                	mv	s2,a0
  3e:	3db4ca83          	lbu	s5,987(s1)

00000042 <.LVL151>:
  42:	3dc4cb03          	lbu	s6,988(s1)

00000046 <.LVL152>:
  46:	02460a13          	addi	s4,a2,36
  4a:	0109d993          	srli	s3,s3,0x10
  4e:	00040413          	mv	s0,s0
			4e: R_RISCV_LO12_I	vif_info_tab
			4e: R_RISCV_RELAX	*ABS*
  52:	e3b5                	bnez	a5,b6 <.L161>
			52: R_RISCV_RVC_BRANCH	.L161
  54:	02a00613          	li	a2,42

00000058 <.LVL153>:
  58:	85ce                	mv	a1,s3
  5a:	8552                	mv	a0,s4

0000005c <.LVL154>:
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	mac_ie_find
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LVL154>

00000064 <.LVL155>:
  64:	c929                	beqz	a0,b6 <.L161>
			64: R_RISCV_RVC_BRANCH	.L161

00000066 <.LBB105>:
  66:	3d84d783          	lhu	a5,984(s1)

0000006a <.LBB110>:
  6a:	00254703          	lbu	a4,2(a0)

0000006e <.LBE110>:
  6e:	9be1                	andi	a5,a5,-8
  70:	07c2                	slli	a5,a5,0x10
  72:	00177693          	andi	a3,a4,1
  76:	83c1                	srli	a5,a5,0x10
  78:	1c069063          	bnez	a3,238 <.L163>
			78: R_RISCV_BRANCH	.L163

0000007c <.L188>:
  7c:	3cf49c23          	sh	a5,984(s1)
  80:	00277793          	andi	a5,a4,2
  84:	cf81                	beqz	a5,9c <.L165>
			84: R_RISCV_RVC_BRANCH	.L165
  86:	5d800793          	li	a5,1496
  8a:	02f907b3          	mul	a5,s2,a5
  8e:	97a2                	add	a5,a5,s0
  90:	3d87d683          	lhu	a3,984(a5)
  94:	0026e693          	ori	a3,a3,2
  98:	3cd79c23          	sh	a3,984(a5)

0000009c <.L165>:
  9c:	8b11                	andi	a4,a4,4

0000009e <.LVL158>:
  9e:	cf01                	beqz	a4,b6 <.L161>
			9e: R_RISCV_RVC_BRANCH	.L161
  a0:	5d800793          	li	a5,1496
  a4:	02f907b3          	mul	a5,s2,a5
  a8:	97a2                	add	a5,a5,s0
  aa:	3d87d703          	lhu	a4,984(a5)
  ae:	00476713          	ori	a4,a4,4
  b2:	3ce79c23          	sh	a4,984(a5)

000000b6 <.L161>:
  b6:	000007b7          	lui	a5,0x0
			b6: R_RISCV_HI20	me_env+0x2e
			b6: R_RISCV_RELAX	*ABS*+0x2e
  ba:	02e7c783          	lbu	a5,46(a5) # 2e <.LVL148+0x6>
			ba: R_RISCV_LO12_I	me_env+0x2e
			ba: R_RISCV_RELAX	*ABS*+0x2e
  be:	4501                	li	a0,0
  c0:	cb89                	beqz	a5,d2 <.L166>
			c0: R_RISCV_RVC_BRANCH	.L166
  c2:	03d00613          	li	a2,61
  c6:	85ce                	mv	a1,s3
  c8:	8552                	mv	a0,s4
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	mac_ie_find
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.L161+0x14>

000000d2 <.L166>:
  d2:	358b8c13          	addi	s8,s7,856 # 358 <.LASF622+0xc>
  d6:	9c22                	add	s8,s8,s0
  d8:	8662                	mv	a2,s8
  da:	4581                	li	a1,0
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	me_bw_check
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.L166+0xa>

000000e4 <.LVL161>:
  e4:	5c8b8693          	addi	a3,s7,1480
  e8:	96a2                	add	a3,a3,s0
  ea:	00d10613          	addi	a2,sp,13
  ee:	85ce                	mv	a1,s3
  f0:	8552                	mv	a0,s4
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	me_extract_csa
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.LVL161+0xe>

000000fa <.LVL162>:
  fa:	0ff57b93          	andi	s7,a0,255

000000fe <.LVL163>:
  fe:	040b8163          	beqz	s7,140 <.L167>
			fe: R_RISCV_BRANCH	.L167
 102:	5d800793          	li	a5,1496
 106:	02f907b3          	mul	a5,s2,a5
 10a:	97a2                	add	a5,a5,s0
 10c:	0567c703          	lbu	a4,86(a5)
 110:	12071763          	bnez	a4,23e <.L168>
			110: R_RISCV_BRANCH	.L168
 114:	0797c703          	lbu	a4,121(a5)
 118:	ef09                	bnez	a4,132 <.L169>
			118: R_RISCV_RVC_BRANCH	.L169
 11a:	00d14683          	lbu	a3,13(sp)
 11e:	4705                	li	a4,1
 120:	00e69963          	bne	a3,a4,132 <.L169>
			120: R_RISCV_BRANCH	.L169
 124:	0577c503          	lbu	a0,87(a5)
 128:	4581                	li	a1,0
 12a:	00000097          	auipc	ra,0x0
			12a: R_RISCV_CALL	mm_send_csa_traffic_ind
			12a: R_RISCV_RELAX	*ABS*
 12e:	000080e7          	jalr	ra # 12a <.LVL163+0x2c>

00000132 <.L169>:
 132:	5d800793          	li	a5,1496
 136:	02f907b3          	mul	a5,s2,a5
 13a:	97a2                	add	a5,a5,s0
 13c:	07778ca3          	sb	s7,121(a5)

00000140 <.L167>:
 140:	8662                	mv	a2,s8
 142:	85ce                	mv	a1,s3
 144:	8552                	mv	a0,s4
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	me_extract_power_constraint
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.L167+0x6>

0000014e <.LVL165>:
 14e:	5d800793          	li	a5,1496
 152:	02f907b3          	mul	a5,s2,a5
 156:	97a2                	add	a5,a5,s0
 158:	3dc7c703          	lbu	a4,988(a5)
 15c:	03670263          	beq	a4,s6,180 <.L170>
			15c: R_RISCV_BRANCH	.L170

00000160 <.LBB112>:
 160:	3a47a783          	lw	a5,932(a5)
 164:	00f10613          	addi	a2,sp,15
 168:	00e10593          	addi	a1,sp,14
 16c:	0047c783          	lbu	a5,4(a5)
 170:	8526                	mv	a0,s1
 172:	8f99                	sub	a5,a5,a4
 174:	00f10723          	sb	a5,14(sp)
 178:	00000097          	auipc	ra,0x0
			178: R_RISCV_CALL	tpc_update_vif_tx_power
			178: R_RISCV_RELAX	*ABS*
 17c:	000080e7          	jalr	ra # 178 <.LBB112+0x18>

00000180 <.L170>:
 180:	5d800a13          	li	s4,1496

00000184 <.LVL167>:
 184:	03490a33          	mul	s4,s2,s4
 188:	9a22                	add	s4,s4,s0
 18a:	3dba4783          	lbu	a5,987(s4)
 18e:	08faf963          	bgeu	s5,a5,220 <.L159>
			18e: R_RISCV_BRANCH	.L159

00000192 <.LBB113>:
 192:	46b1                	li	a3,12
 194:	4615                	li	a2,5
 196:	4581                	li	a1,0
 198:	03b00513          	li	a0,59
 19c:	00000097          	auipc	ra,0x0
			19c: R_RISCV_CALL	ke_msg_alloc
			19c: R_RISCV_RELAX	*ABS*
 1a0:	000080e7          	jalr	ra # 19c <.LBB113+0xa>

000001a4 <.LVL169>:
 1a4:	040a2783          	lw	a5,64(s4)
 1a8:	89aa                	mv	s3,a0

000001aa <.LVL170>:
 1aa:	ef99                	bnez	a5,1c8 <.L172>
			1aa: R_RISCV_RVC_BRANCH	.L172
 1ac:	000005b7          	lui	a1,0x0
			1ac: R_RISCV_HI20	.LC0
			1ac: R_RISCV_RELAX	*ABS*
 1b0:	00000537          	lui	a0,0x0
			1b0: R_RISCV_HI20	.LC3
			1b0: R_RISCV_RELAX	*ABS*

000001b4 <.LVL171>:
 1b4:	03900613          	li	a2,57
 1b8:	00058593          	mv	a1,a1
			1b8: R_RISCV_LO12_I	.LC0
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	00050513          	mv	a0,a0
			1bc: R_RISCV_LO12_I	.LC3
			1bc: R_RISCV_RELAX	*ABS*
 1c0:	00000097          	auipc	ra,0x0
			1c0: R_RISCV_CALL	assert_err
			1c0: R_RISCV_RELAX	*ABS*
 1c4:	000080e7          	jalr	ra # 1c0 <.LVL171+0xc>

000001c8 <.L172>:
 1c8:	5d800793          	li	a5,1496
 1cc:	02f90933          	mul	s2,s2,a5
 1d0:	854e                	mv	a0,s3
 1d2:	944a                	add	s0,s0,s2
 1d4:	403c                	lw	a5,64(s0)
 1d6:	0177c783          	lbu	a5,23(a5)
 1da:	00f98023          	sb	a5,0(s3)
 1de:	3a44a783          	lw	a5,932(s1)
 1e2:	0027c783          	lbu	a5,2(a5)
 1e6:	00f980a3          	sb	a5,1(s3)
 1ea:	3db4c783          	lbu	a5,987(s1)
 1ee:	00f98123          	sb	a5,2(s3)
 1f2:	3a44a783          	lw	a5,932(s1)
 1f6:	0007d783          	lhu	a5,0(a5)
 1fa:	00f99223          	sh	a5,4(s3)
 1fe:	3a84d783          	lhu	a5,936(s1)
 202:	00f99323          	sh	a5,6(s3)
 206:	3aa4d783          	lhu	a5,938(s1)
 20a:	00f99423          	sh	a5,8(s3)
 20e:	403c                	lw	a5,64(s0)
 210:	00c78783          	lb	a5,12(a5)
 214:	00f98523          	sb	a5,10(s3)
 218:	00000097          	auipc	ra,0x0
			218: R_RISCV_CALL	ke_msg_send
			218: R_RISCV_RELAX	*ABS*
 21c:	000080e7          	jalr	ra # 218 <.L172+0x50>

00000220 <.L159>:
 220:	50f2                	lw	ra,60(sp)
 222:	5462                	lw	s0,56(sp)
 224:	54d2                	lw	s1,52(sp)

00000226 <.LVL174>:
 226:	5942                	lw	s2,48(sp)
 228:	59b2                	lw	s3,44(sp)
 22a:	5a22                	lw	s4,40(sp)
 22c:	5a92                	lw	s5,36(sp)

0000022e <.LVL175>:
 22e:	5b02                	lw	s6,32(sp)

00000230 <.LVL176>:
 230:	4bf2                	lw	s7,28(sp)

00000232 <.LVL177>:
 232:	4c62                	lw	s8,24(sp)
 234:	6121                	addi	sp,sp,64
 236:	8082                	ret

00000238 <.L163>:
 238:	0017e793          	ori	a5,a5,1
 23c:	b581                	j	7c <.L188>
			23c: R_RISCV_RVC_JUMP	.L188

0000023e <.L168>:
 23e:	4689                	li	a3,2
 240:	f0d710e3          	bne	a4,a3,140 <.L167>
			240: R_RISCV_BRANCH	.L167
 244:	357783a3          	sb	s7,839(a5)
 248:	bde5                	j	140 <.L167>
			248: R_RISCV_RVC_JUMP	.L167

Disassembly of section .text.me_sta_bw_nss_max_upd:

00000000 <me_sta_bw_nss_max_upd>:
   0:	1b000713          	li	a4,432
   4:	02e50733          	mul	a4,a0,a4
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	00000437          	lui	s0,0x0
			c: R_RISCV_HI20	sta_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	00040793          	mv	a5,s0
			10: R_RISCV_LO12_I	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	ca26                	sw	s1,20(sp)
  16:	c84a                	sw	s2,16(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	ce06                	sw	ra,28(sp)
  1c:	c64e                	sw	s3,12(sp)
  1e:	97ba                	add	a5,a5,a4
  20:	c256                	sw	s5,4(sp)
  22:	01a7c983          	lbu	s3,26(a5)

00000026 <.LVL181>:
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	me_env+0x2e
			26: R_RISCV_RELAX	*ABS*+0x2e
  2a:	02e7c783          	lbu	a5,46(a5) # 2e <.LVL181+0x8>
			2a: R_RISCV_LO12_I	me_env+0x2e
			2a: R_RISCV_RELAX	*ABS*+0x2e
  2e:	84aa                	mv	s1,a0
  30:	892e                	mv	s2,a1
  32:	8a32                	mv	s4,a2
  34:	00040413          	mv	s0,s0
			34: R_RISCV_LO12_I	sta_info_tab
			34: R_RISCV_RELAX	*ABS*
  38:	ef99                	bnez	a5,56 <.L190>
			38: R_RISCV_RVC_BRANCH	.L190
  3a:	000005b7          	lui	a1,0x0
			3a: R_RISCV_HI20	.LC0
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LVL182>:
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	.LC4
			3e: R_RISCV_RELAX	*ABS*

00000042 <.LVL183>:
  42:	42900613          	li	a2,1065

00000046 <.LVL184>:
  46:	00058593          	mv	a1,a1
			46: R_RISCV_LO12_I	.LC0
			46: R_RISCV_RELAX	*ABS*
  4a:	00050513          	mv	a0,a0
			4a: R_RISCV_LO12_I	.LC4
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	assert_err
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL184+0x8>

00000056 <.L190>:
  56:	1b000513          	li	a0,432
  5a:	02a48533          	mul	a0,s1,a0
  5e:	0c350513          	addi	a0,a0,195 # c3 <.L194+0x3>
  62:	9522                	add	a0,a0,s0
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	me_11n_nss_max
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.L190+0xe>

0000006c <.LVL186>:
  6c:	8aaa                	mv	s5,a0

0000006e <.LVL187>:
  6e:	00000537          	lui	a0,0x0
			6e: R_RISCV_HI20	me_env+0xf
			6e: R_RISCV_RELAX	*ABS*+0xf
  72:	00f50513          	addi	a0,a0,15 # f <me_sta_bw_nss_max_upd+0xf>
			72: R_RISCV_LO12_I	me_env+0xf
			72: R_RISCV_RELAX	*ABS*+0xf
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	me_11n_nss_max
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL187+0x8>

0000007e <.LBB116>:
  7e:	00aaf363          	bgeu	s5,a0,84 <.L191>
			7e: R_RISCV_BRANCH	.L191
  82:	8556                	mv	a0,s5

00000084 <.L191>:
  84:	00aa7363          	bgeu	s4,a0,8a <.L192>
			84: R_RISCV_BRANCH	.L192
  88:	8552                	mv	a0,s4

0000008a <.L192>:
  8a:	1b000793          	li	a5,432
  8e:	02f487b3          	mul	a5,s1,a5
  92:	0ff57613          	andi	a2,a0,255

00000096 <.LVL191>:
  96:	97a2                	add	a5,a5,s0
  98:	0f07c703          	lbu	a4,240(a5)

0000009c <.LBB124>:
  9c:	4791                	li	a5,4
  9e:	00f71363          	bne	a4,a5,a4 <.L193>
			9e: R_RISCV_BRANCH	.L193
  a2:	470d                	li	a4,3

000000a4 <.L193>:
  a4:	5d800693          	li	a3,1496
  a8:	02d989b3          	mul	s3,s3,a3
  ac:	000007b7          	lui	a5,0x0
			ac: R_RISCV_HI20	vif_info_tab
			ac: R_RISCV_RELAX	*ABS*
  b0:	00078793          	mv	a5,a5
			b0: R_RISCV_LO12_I	vif_info_tab
			b0: R_RISCV_RELAX	*ABS*
  b4:	97ce                	add	a5,a5,s3
  b6:	3da7c583          	lbu	a1,986(a5) # 3da <.LASF951>

000000ba <.LBB129>:
  ba:	00b97363          	bgeu	s2,a1,c0 <.L194>
			ba: R_RISCV_BRANCH	.L194
  be:	85ca                	mv	a1,s2

000000c0 <.L194>:
  c0:	00b77363          	bgeu	a4,a1,c6 <.L195>
			c0: R_RISCV_BRANCH	.L195
  c4:	85ba                	mv	a1,a4

000000c6 <.L195>:
  c6:	1b000793          	li	a5,432
  ca:	02f484b3          	mul	s1,s1,a5
  ce:	0ff5f593          	andi	a1,a1,255
  d2:	9426                	add	s0,s0,s1
  d4:	01b44503          	lbu	a0,27(s0) # 1b <me_sta_bw_nss_max_upd+0x1b>
  d8:	0eb408a3          	sb	a1,241(s0)
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	rc_update_bw_nss_max
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.L195+0x16>

000000e4 <.LVL196>:
  e4:	11a44783          	lbu	a5,282(s0)
  e8:	0087e793          	ori	a5,a5,8
  ec:	10f40d23          	sb	a5,282(s0)
  f0:	40f2                	lw	ra,28(sp)
  f2:	4462                	lw	s0,24(sp)
  f4:	44d2                	lw	s1,20(sp)
  f6:	4942                	lw	s2,16(sp)
  f8:	49b2                	lw	s3,12(sp)
  fa:	4a22                	lw	s4,8(sp)
  fc:	4a92                	lw	s5,4(sp)

000000fe <.LVL197>:
  fe:	6105                	addi	sp,sp,32
 100:	8082                	ret

Disassembly of section .text.me_tx_cfm_amsdu:

00000000 <me_tx_cfm_amsdu>:
   0:	02e54783          	lbu	a5,46(a0)
   4:	0ff00693          	li	a3,255
   8:	03054703          	lbu	a4,48(a0)
   c:	02d78563          	beq	a5,a3,36 <.L199>
			c: R_RISCV_BRANCH	.L199
  10:	1b000613          	li	a2,432
  14:	02c70733          	mul	a4,a4,a2
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	sta_info_tab
			18: R_RISCV_RELAX	*ABS*
  1c:	00078793          	mv	a5,a5
			1c: R_RISCV_LO12_I	sta_info_tab
			1c: R_RISCV_RELAX	*ABS*
  20:	4501                	li	a0,0

00000022 <.LVL201>:
  22:	97ba                	add	a5,a5,a4
  24:	01a7c703          	lbu	a4,26(a5) # 1a <me_tx_cfm_amsdu+0x1a>
  28:	00d70863          	beq	a4,a3,38 <.L198>
			28: R_RISCV_BRANCH	.L198

0000002c <.LBB130>:
  2c:	1107a783          	lw	a5,272(a5)
  30:	0c47d503          	lhu	a0,196(a5)

00000034 <.LBE130>:
  34:	8082                	ret

00000036 <.L199>:
  36:	4501                	li	a0,0

00000038 <.L198>:
  38:	8082                	ret

Disassembly of section .text.me_add_chan_ctx:

00000000 <me_add_chan_ctx>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	0025c783          	lbu	a5,2(a1) # 2 <me_add_chan_ctx+0x2>
   8:	00e102a3          	sb	a4,5(sp)
   c:	00c11423          	sh	a2,8(sp)
  10:	00f10223          	sb	a5,4(sp)
  14:	0005d783          	lhu	a5,0(a1)
  18:	00d11523          	sh	a3,10(sp)
  1c:	00f11323          	sh	a5,6(sp)
  20:	0045c783          	lbu	a5,4(a1)
  24:	85aa                	mv	a1,a0

00000026 <.LVL207>:
  26:	0048                	addi	a0,sp,4

00000028 <.LVL208>:
  28:	00f10623          	sb	a5,12(sp)
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	chan_ctxt_add
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL208+0x4>

00000034 <.LVL209>:
  34:	40f2                	lw	ra,28(sp)
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret
