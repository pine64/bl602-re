
libblecontroller/hci.o:     file format elf32-littleriscv


Disassembly of section .text.hci_send_2_host:

00000000 <hci_send_2_host>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB25>:
   a:	ff855683          	lhu	a3,-8(a0)
   e:	6785                	lui	a5,0x1
  10:	80378713          	addi	a4,a5,-2045 # 803 <.LASF52+0x4>

00000014 <.LBE25>:
  14:	84aa                	mv	s1,a0

00000016 <.LBB32>:
  16:	ff450413          	addi	s0,a0,-12

0000001a <.LBB33>:
  1a:	02e68763          	beq	a3,a4,48 <.L2>
			1a: R_RISCV_BRANCH	.L2
  1e:	80478793          	addi	a5,a5,-2044
  22:	06f68563          	beq	a3,a5,8c <.L14>
			22: R_RISCV_BRANCH	.L14

00000026 <.L4>:
  26:	77fd                	lui	a5,0xfffff
  28:	7ff78793          	addi	a5,a5,2047 # fffff7ff <.LASF19+0xffffdd09>
  2c:	97b6                	add	a5,a5,a3
  2e:	07c2                	slli	a5,a5,0x10
  30:	83c1                	srli	a5,a5,0x10
  32:	4715                	li	a4,5
  34:	04f76263          	bltu	a4,a5,78 <.L12>
			34: R_RISCV_BRANCH	.L12
  38:	00000737          	lui	a4,0x0
			38: R_RISCV_HI20	.L13
			38: R_RISCV_RELAX	*ABS*
  3c:	078a                	slli	a5,a5,0x2
  3e:	00070713          	mv	a4,a4
			3e: R_RISCV_LO12_I	.L13
			3e: R_RISCV_RELAX	*ABS*
  42:	97ba                	add	a5,a5,a4
  44:	439c                	lw	a5,0(a5)
  46:	8782                	jr	a5

00000048 <.L2>:
  48:	ffc54783          	lbu	a5,-4(a0)

0000004c <.LVL4>:
  4c:	03f00713          	li	a4,63
  50:	04f76163          	bltu	a4,a5,92 <.L5>
			50: R_RISCV_BRANCH	.L5

00000054 <.L3>:
  54:	17fd                	addi	a5,a5,-1
  56:	0ff7f793          	andi	a5,a5,255

0000005a <.LVL6>:
  5a:	00000737          	lui	a4,0x0
			5a: R_RISCV_HI20	hci_env
			5a: R_RISCV_RELAX	*ABS*
  5e:	0037d613          	srli	a2,a5,0x3

00000062 <.LVL7>:
  62:	00070713          	mv	a4,a4
			62: R_RISCV_LO12_I	hci_env
			62: R_RISCV_RELAX	*ABS*
  66:	9732                	add	a4,a4,a2
  68:	00074703          	lbu	a4,0(a4) # 0 <hci_send_2_host>
  6c:	060e                	slli	a2,a2,0x3
  6e:	8f91                	sub	a5,a5,a2
  70:	40f757b3          	sra	a5,a4,a5

00000074 <.LBE27>:
  74:	8b85                	andi	a5,a5,1
  76:	fbc5                	bnez	a5,26 <.L4>
			76: R_RISCV_RVC_BRANCH	.L4

00000078 <.L12>:
  78:	8522                	mv	a0,s0

0000007a <.LBE40>:
  7a:	4422                	lw	s0,8(sp)

0000007c <.LVL9>:
  7c:	40b2                	lw	ra,12(sp)
  7e:	4492                	lw	s1,4(sp)

00000080 <.LVL10>:
  80:	4902                	lw	s2,0(sp)
  82:	0141                	addi	sp,sp,16

00000084 <.LBB41>:
  84:	00000317          	auipc	t1,0x0
			84: R_RISCV_CALL	ble_ke_msg_free
			84: R_RISCV_RELAX	*ABS*
  88:	00030067          	jr	t1 # 84 <.LBB41>

0000008c <.L14>:
  8c:	03e00793          	li	a5,62
  90:	b7d1                	j	54 <.L3>
			90: R_RISCV_RVC_JUMP	.L3

00000092 <.L5>:
  92:	05700713          	li	a4,87
  96:	02f76563          	bltu	a4,a5,c0 <.L7>
			96: R_RISCV_BRANCH	.L7

0000009a <.LBB28>:
  9a:	fc078793          	addi	a5,a5,-64

0000009e <.LVL13>:
  9e:	0ff7f793          	andi	a5,a5,255

000000a2 <.LVL14>:
  a2:	00000737          	lui	a4,0x0
			a2: R_RISCV_HI20	hci_env
			a2: R_RISCV_RELAX	*ABS*
  a6:	0037d693          	srli	a3,a5,0x3

000000aa <.LVL15>:
  aa:	00070713          	mv	a4,a4
			aa: R_RISCV_LO12_I	hci_env
			aa: R_RISCV_RELAX	*ABS*
  ae:	9736                	add	a4,a4,a3
  b0:	00874703          	lbu	a4,8(a4) # 8 <hci_send_2_host+0x8>
  b4:	068e                	slli	a3,a3,0x3
  b6:	8f95                	sub	a5,a5,a3
  b8:	40f757b3          	sra	a5,a4,a5

000000bc <.LBE28>:
  bc:	8b85                	andi	a5,a5,1
  be:	dfcd                	beqz	a5,78 <.L12>
			be: R_RISCV_RVC_BRANCH	.L12

000000c0 <.L7>:
  c0:	8522                	mv	a0,s0
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	hci_build_evt
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.L7+0x2>

000000ca <.LVL17>:
  ca:	a821                	j	e2 <.L9>
			ca: R_RISCV_RVC_JUMP	.L9

000000cc <.L8>:
  cc:	6785                	lui	a5,0x1
  ce:	80178793          	addi	a5,a5,-2047 # 801 <.LASF52+0x2>
  d2:	00f69863          	bne	a3,a5,e2 <.L9>
			d2: R_RISCV_BRANCH	.L9
  d6:	4581                	li	a1,0
  d8:	8522                	mv	a0,s0
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	hci_build_cc_evt
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.L8+0xe>

000000e2 <.L9>:
  e2:	4791                	li	a5,4
  e4:	00f41323          	sh	a5,6(s0)

000000e8 <.LBE43>:
  e8:	4422                	lw	s0,8(sp)

000000ea <.LVL20>:
  ea:	40b2                	lw	ra,12(sp)
  ec:	4902                	lw	s2,0(sp)

000000ee <.LBB44>:
  ee:	8526                	mv	a0,s1

000000f0 <.LBE44>:
  f0:	4492                	lw	s1,4(sp)

000000f2 <.LVL21>:
  f2:	0141                	addi	sp,sp,16

000000f4 <.LBB45>:
  f4:	00000317          	auipc	t1,0x0
			f4: R_RISCV_CALL	ble_ke_msg_send
			f4: R_RISCV_RELAX	*ABS*
  f8:	00030067          	jr	t1 # f4 <.LBB45>

000000fc <.L10>:
  fc:	8522                	mv	a0,s0
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	hci_build_le_evt
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.L10+0x2>

00000106 <.LVL23>:
 106:	bff1                	j	e2 <.L9>
			106: R_RISCV_RVC_JUMP	.L9

00000108 <.L11>:
 108:	ffc4d603          	lhu	a2,-4(s1)
 10c:	ffa4d583          	lhu	a1,-6(s1)
 110:	6505                	lui	a0,0x1
 112:	46a1                	li	a3,8
 114:	80650513          	addi	a0,a0,-2042 # 806 <.LASF52+0x7>
 118:	00000097          	auipc	ra,0x0
			118: R_RISCV_CALL	ble_ke_msg_alloc
			118: R_RISCV_RELAX	*ABS*
 11c:	000080e7          	jalr	ra # 118 <.L11+0x10>

00000120 <.LVL25>:
 120:	000007b7          	lui	a5,0x0
			120: R_RISCV_HI20	ble_memcpy_ptr
			120: R_RISCV_RELAX	*ABS*
 124:	0007a783          	lw	a5,0(a5) # 0 <hci_send_2_host>
			124: R_RISCV_LO12_I	ble_memcpy_ptr
			124: R_RISCV_RELAX	*ABS*
 128:	85a6                	mv	a1,s1
 12a:	4621                	li	a2,8
 12c:	892a                	mv	s2,a0

0000012e <.LVL26>:
 12e:	9782                	jalr	a5

00000130 <.LVL27>:
 130:	8522                	mv	a0,s0
 132:	00000097          	auipc	ra,0x0
			132: R_RISCV_CALL	ble_ke_msg_free
			132: R_RISCV_RELAX	*ABS*
 136:	000080e7          	jalr	ra # 132 <.LVL27+0x2>

0000013a <.LBB36>:
 13a:	ff490413          	addi	s0,s2,-12

0000013e <.LBB38>:
 13e:	84ca                	mv	s1,s2

00000140 <.LBE38>:
 140:	b74d                	j	e2 <.L9>
			140: R_RISCV_RVC_JUMP	.L9

Disassembly of section .text.hci_send_2_controller:

00000000 <hci_send_2_controller>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB51>:
   6:	ff855703          	lhu	a4,-8(a0)
   a:	6785                	lui	a5,0x1
   c:	80578693          	addi	a3,a5,-2043 # 805 <.LASF52+0x6>

00000010 <.LBE51>:
  10:	842a                	mv	s0,a0

00000012 <.LBB52>:
  12:	02d70163          	beq	a4,a3,34 <.L20>
			12: R_RISCV_BRANCH	.L20
  16:	80778793          	addi	a5,a5,-2041
  1a:	04f71f63          	bne	a4,a5,78 <.L26>
			1a: R_RISCV_BRANCH	.L26

0000001e <.L22>:
  1e:	ffa45783          	lhu	a5,-6(s0)
  22:	4705                	li	a4,1
  24:	04f76a63          	bltu	a4,a5,78 <.L26>
			24: R_RISCV_BRANCH	.L26
  28:	07a2                	slli	a5,a5,0x8
  2a:	0017e793          	ori	a5,a5,1
  2e:	07c2                	slli	a5,a5,0x10
  30:	83c1                	srli	a5,a5,0x10

00000032 <.LVL32>:
  32:	a03d                	j	60 <.L27>
			32: R_RISCV_RVC_JUMP	.L27

00000034 <.L20>:
  34:	ffc55503          	lhu	a0,-4(a0)
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	hci_look_for_cmd_desc
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.L20+0x4>

00000040 <.LVL34>:
  40:	cd05                	beqz	a0,78 <.L26>
			40: R_RISCV_RVC_BRANCH	.L26

00000042 <.LBB50>:
  42:	00254783          	lbu	a5,2(a0)

00000046 <.LBE50>:
  46:	4721                	li	a4,8
  48:	8bbd                	andi	a5,a5,15
  4a:	02f76763          	bltu	a4,a5,78 <.L26>
			4a: R_RISCV_BRANCH	.L26
  4e:	00000737          	lui	a4,0x0
			4e: R_RISCV_HI20	.L28
			4e: R_RISCV_RELAX	*ABS*
  52:	078a                	slli	a5,a5,0x2
  54:	00070713          	mv	a4,a4
			54: R_RISCV_LO12_I	.L28
			54: R_RISCV_RELAX	*ABS*
  58:	97ba                	add	a5,a5,a4
  5a:	439c                	lw	a5,0(a5)
  5c:	8782                	jr	a5

0000005e <.L29>:
  5e:	4781                	li	a5,0

00000060 <.L27>:
  60:	fef41d23          	sh	a5,-6(s0)
  64:	8522                	mv	a0,s0

00000066 <.LBE52>:
  66:	4422                	lw	s0,8(sp)

00000068 <.LVL37>:
  68:	40b2                	lw	ra,12(sp)
  6a:	0141                	addi	sp,sp,16

0000006c <.LBB53>:
  6c:	00000317          	auipc	t1,0x0
			6c: R_RISCV_CALL	ble_ke_msg_send
			6c: R_RISCV_RELAX	*ABS*
  70:	00030067          	jr	t1 # 6c <.LBB53>

00000074 <.L30>:
  74:	478d                	li	a5,3
  76:	b7ed                	j	60 <.L27>
			76: R_RISCV_RVC_JUMP	.L27

00000078 <.L26>:
  78:	ff440513          	addi	a0,s0,-12

0000007c <.LBE53>:
  7c:	4422                	lw	s0,8(sp)

0000007e <.LVL40>:
  7e:	40b2                	lw	ra,12(sp)
  80:	0141                	addi	sp,sp,16

00000082 <.LBB54>:
  82:	00000317          	auipc	t1,0x0
			82: R_RISCV_CALL	ble_ke_msg_free
			82: R_RISCV_RELAX	*ABS*
  86:	00030067          	jr	t1 # 82 <.LBB54>

Disassembly of section .text.hci_evt_mask_set:

00000000 <hci_evt_mask_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	4789                	li	a5,2
   8:	00f58a63          	beq	a1,a5,1c <.L33>
			8: R_RISCV_BRANCH	.L33
   c:	478d                	li	a5,3
   e:	02f58363          	beq	a1,a5,34 <.L34>
			e: R_RISCV_BRANCH	.L34

00000012 <.L35>:
  12:	40b2                	lw	ra,12(sp)
  14:	4422                	lw	s0,8(sp)
  16:	4501                	li	a0,0
  18:	0141                	addi	sp,sp,16
  1a:	8082                	ret

0000001c <.L33>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	ble_memcpy_ptr
			1c: R_RISCV_RELAX	*ABS*
  20:	0007a783          	lw	a5,0(a5) # 0 <hci_evt_mask_set>
			20: R_RISCV_LO12_I	ble_memcpy_ptr
			20: R_RISCV_RELAX	*ABS*
  24:	85aa                	mv	a1,a0

00000026 <.LVL45>:
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	hci_env+0x8
			26: R_RISCV_RELAX	*ABS*+0x8

0000002a <.LVL46>:
  2a:	4621                	li	a2,8
  2c:	00850513          	addi	a0,a0,8 # 8 <hci_evt_mask_set+0x8>
			2c: R_RISCV_LO12_I	hci_env+0x8
			2c: R_RISCV_RELAX	*ABS*+0x8
  30:	9782                	jalr	a5

00000032 <.LVL47>:
  32:	b7c5                	j	12 <.L35>
			32: R_RISCV_RVC_JUMP	.L35

00000034 <.L34>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	ble_memcpy_ptr
			34: R_RISCV_RELAX	*ABS*
  38:	0007a783          	lw	a5,0(a5) # 0 <hci_evt_mask_set>
			38: R_RISCV_LO12_I	ble_memcpy_ptr
			38: R_RISCV_RELAX	*ABS*
  3c:	00000437          	lui	s0,0x0
			3c: R_RISCV_HI20	hci_env
			3c: R_RISCV_RELAX	*ABS*
  40:	85aa                	mv	a1,a0

00000042 <.LVL49>:
  42:	4621                	li	a2,8
  44:	00040513          	mv	a0,s0
			44: R_RISCV_LO12_I	hci_env
			44: R_RISCV_RELAX	*ABS*

00000048 <.LVL50>:
  48:	9782                	jalr	a5

0000004a <.LBB57>:
  4a:	00000637          	lui	a2,0x0
			4a: R_RISCV_HI20	.LANCHOR0
			4a: R_RISCV_RELAX	*ABS*
  4e:	00040793          	mv	a5,s0
			4e: R_RISCV_LO12_I	hci_env
			4e: R_RISCV_RELAX	*ABS*

00000052 <.LBE57>:
  52:	4701                	li	a4,0

00000054 <.LBB60>:
  54:	00060613          	mv	a2,a2
			54: R_RISCV_LO12_I	.LANCHOR0
			54: R_RISCV_RELAX	*ABS*
  58:	45a1                	li	a1,8

0000005a <.L36>:
  5a:	00e606b3          	add	a3,a2,a4
  5e:	0007c503          	lbu	a0,0(a5)
  62:	0006c683          	lbu	a3,0(a3)
  66:	0705                	addi	a4,a4,1

00000068 <.LVL53>:
  68:	0785                	addi	a5,a5,1
  6a:	8ec9                	or	a3,a3,a0
  6c:	fed78fa3          	sb	a3,-1(a5)
  70:	feb715e3          	bne	a4,a1,5a <.L36>
			70: R_RISCV_BRANCH	.L36
  74:	bf79                	j	12 <.L35>
			74: R_RISCV_RVC_JUMP	.L35

Disassembly of section .text.hci_init:

00000000 <hci_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <hci_init>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	hci_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	4641                	li	a2,16
  12:	4581                	li	a1,0
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	hci_env
			14: R_RISCV_RELAX	*ABS*
  18:	9782                	jalr	a5

0000001a <.LVL54>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*
  1e:	458d                	li	a1,3
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LANCHOR1
			20: R_RISCV_RELAX	*ABS*
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	hci_evt_mask_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL54+0xa>

0000002c <.LVL55>:
  2c:	4501                	li	a0,0
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	hci_tl_init
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL55+0x2>

00000036 <.LVL56>:
  36:	40b2                	lw	ra,12(sp)
  38:	0141                	addi	sp,sp,16
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	hci_fc_init
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL56+0x4>

Disassembly of section .text.hci_reset:

00000000 <hci_reset>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <hci_reset>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	hci_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	4641                	li	a2,16
  12:	4581                	li	a1,0
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	hci_env
			14: R_RISCV_RELAX	*ABS*
  18:	9782                	jalr	a5

0000001a <.LVL58>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*
  1e:	458d                	li	a1,3
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LANCHOR1
			20: R_RISCV_RELAX	*ABS*
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	hci_evt_mask_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL58+0xa>

0000002c <.LVL59>:
  2c:	4505                	li	a0,1
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	hci_tl_init
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL59+0x2>

00000036 <.LVL60>:
  36:	40b2                	lw	ra,12(sp)
  38:	0141                	addi	sp,sp,16
  3a:	00000317          	auipc	t1,0x0
			3a: R_RISCV_CALL	hci_fc_init
			3a: R_RISCV_RELAX	*ABS*
  3e:	00030067          	jr	t1 # 3a <.LVL60+0x4>
