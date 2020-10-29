
libblecontroller/co_list.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_co_list_init:

00000000 <_patch_ble_co_list_init>:
   0:	0005a023          	sw	zero,0(a1)
   4:	0005a223          	sw	zero,4(a1)
   8:	4505                	li	a0,1

0000000a <.LVL1>:
   a:	8082                	ret

Disassembly of section .text.ble_co_list_init:

00000000 <ble_co_list_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_init>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	4501                	li	a0,0

00000014 <.LVL3>:
  14:	9782                	jalr	a5

00000016 <.LVL4>:
  16:	e509                	bnez	a0,20 <.L2>
			16: R_RISCV_RVC_BRANCH	.L2
  18:	00042023          	sw	zero,0(s0)
  1c:	00042223          	sw	zero,4(s0)

00000020 <.L2>:
  20:	40b2                	lw	ra,12(sp)
  22:	4422                	lw	s0,8(sp)

00000024 <.LVL5>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

Disassembly of section .text._patch_ble_co_list_push_back:

00000000 <_patch_ble_co_list_push_back>:
   0:	419c                	lw	a5,0(a1)
   2:	e799                	bnez	a5,10 <.L6>
			2: R_RISCV_RVC_BRANCH	.L6
   4:	c190                	sw	a2,0(a1)

00000006 <.L7>:
   6:	c1d0                	sw	a2,4(a1)
   8:	00062023          	sw	zero,0(a2)
   c:	4505                	li	a0,1

0000000e <.LVL7>:
   e:	8082                	ret

00000010 <.L6>:
  10:	41dc                	lw	a5,4(a1)
  12:	c390                	sw	a2,0(a5)
  14:	bfcd                	j	6 <.L7>
			14: R_RISCV_RVC_JUMP	.L7

Disassembly of section .text.ble_co_list_push_back:

00000000 <ble_co_list_push_back>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_push_back>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL10>:
  18:	4501                	li	a0,0

0000001a <.LVL11>:
  1a:	9782                	jalr	a5

0000001c <.LVL12>:
  1c:	e519                	bnez	a0,2a <.L8>
			1c: R_RISCV_RVC_BRANCH	.L8

0000001e <.LBB27>:
  1e:	409c                	lw	a5,0(s1)
  20:	eb91                	bnez	a5,34 <.L10>
			20: R_RISCV_RVC_BRANCH	.L10
  22:	c080                	sw	s0,0(s1)

00000024 <.L11>:
  24:	c0c0                	sw	s0,4(s1)
  26:	00042023          	sw	zero,0(s0)

0000002a <.L8>:
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)

0000002e <.LVL15>:
  2e:	4492                	lw	s1,4(sp)

00000030 <.LVL16>:
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

00000034 <.L10>:
  34:	40dc                	lw	a5,4(s1)
  36:	c380                	sw	s0,0(a5)
  38:	b7f5                	j	24 <.L11>
			38: R_RISCV_RVC_JUMP	.L11

Disassembly of section .text.ble_co_list_pool_init:

00000000 <ble_co_list_pool_init>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	89b6                	mv	s3,a3
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	d606                	sw	ra,44(sp)
  18:	84aa                	mv	s1,a0
  1a:	842e                	mv	s0,a1
  1c:	8a32                	mv	s4,a2
  1e:	8aba                	mv	s5,a4
  20:	8b3e                	mv	s6,a5
  22:	4901                	li	s2,0
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_co_list_init
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <ble_co_list_pool_init+0x24>

0000002c <.LVL19>:
  2c:	00000bb7          	lui	s7,0x0
			2c: R_RISCV_HI20	ble_memcpy_ptr
			2c: R_RISCV_RELAX	*ABS*
  30:	fff98c13          	addi	s8,s3,-1

00000034 <.L14>:
  34:	01391e63          	bne	s2,s3,50 <.L20>
			34: R_RISCV_BRANCH	.L20
  38:	50b2                	lw	ra,44(sp)
  3a:	5422                	lw	s0,40(sp)

0000003c <.LVL21>:
  3c:	5492                	lw	s1,36(sp)

0000003e <.LVL22>:
  3e:	5902                	lw	s2,32(sp)

00000040 <.LVL23>:
  40:	49f2                	lw	s3,28(sp)

00000042 <.LVL24>:
  42:	4a62                	lw	s4,24(sp)

00000044 <.LVL25>:
  44:	4ad2                	lw	s5,20(sp)

00000046 <.LVL26>:
  46:	4b42                	lw	s6,16(sp)
  48:	4bb2                	lw	s7,12(sp)
  4a:	4c22                	lw	s8,8(sp)

0000004c <.LVL27>:
  4c:	6145                	addi	sp,sp,48
  4e:	8082                	ret

00000050 <.L20>:
  50:	000a8863          	beqz	s5,60 <.L15>
			50: R_RISCV_BRANCH	.L15
  54:	000ba783          	lw	a5,0(s7) # 0 <ble_co_list_pool_init>
			54: R_RISCV_LO12_I	ble_memcpy_ptr
			54: R_RISCV_RELAX	*ABS*
  58:	8652                	mv	a2,s4
  5a:	85d6                	mv	a1,s5
  5c:	8522                	mv	a0,s0
  5e:	9782                	jalr	a5

00000060 <.L15>:
  60:	032c1063          	bne	s8,s2,80 <.L16>
			60: R_RISCV_BRANCH	.L16
  64:	000b0e63          	beqz	s6,80 <.L16>
			64: R_RISCV_BRANCH	.L16

00000068 <.LBB33>:
  68:	409c                	lw	a5,0(s1)
  6a:	eb81                	bnez	a5,7a <.L17>
			6a: R_RISCV_RVC_BRANCH	.L17
  6c:	c080                	sw	s0,0(s1)

0000006e <.L18>:
  6e:	c0c0                	sw	s0,4(s1)
  70:	00042023          	sw	zero,0(s0)

00000074 <.L19>:
  74:	9452                	add	s0,s0,s4
  76:	0905                	addi	s2,s2,1
  78:	bf75                	j	34 <.L14>
			78: R_RISCV_RVC_JUMP	.L14

0000007a <.L17>:
  7a:	40dc                	lw	a5,4(s1)
  7c:	c380                	sw	s0,0(a5)
  7e:	bfc5                	j	6e <.L18>
			7e: R_RISCV_RVC_JUMP	.L18

00000080 <.L16>:
  80:	85a2                	mv	a1,s0
  82:	8526                	mv	a0,s1
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	ble_co_list_push_back
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.L16+0x4>

0000008c <.LVL36>:
  8c:	b7e5                	j	74 <.L19>
			8c: R_RISCV_RVC_JUMP	.L19

Disassembly of section .text._patch_ble_co_list_push_front:

00000000 <_patch_ble_co_list_push_front>:
   0:	419c                	lw	a5,0(a1)

00000002 <.LBE37>:
   2:	e391                	bnez	a5,6 <.L29>
			2: R_RISCV_RVC_BRANCH	.L29
   4:	c1d0                	sw	a2,4(a1)

00000006 <.L29>:
   6:	c21c                	sw	a5,0(a2)
   8:	c190                	sw	a2,0(a1)
   a:	4505                	li	a0,1

0000000c <.LVL39>:
   c:	8082                	ret

Disassembly of section .text.ble_co_list_push_front:

00000000 <ble_co_list_push_front>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_push_front>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL41>:
  18:	4501                	li	a0,0

0000001a <.LVL42>:
  1a:	9782                	jalr	a5

0000001c <.LVL43>:
  1c:	e511                	bnez	a0,28 <.L30>
			1c: R_RISCV_RVC_BRANCH	.L30

0000001e <.LBB43>:
  1e:	401c                	lw	a5,0(s0)

00000020 <.LBE45>:
  20:	e391                	bnez	a5,24 <.L32>
			20: R_RISCV_RVC_BRANCH	.L32
  22:	c044                	sw	s1,4(s0)

00000024 <.L32>:
  24:	c09c                	sw	a5,0(s1)
  26:	c004                	sw	s1,0(s0)

00000028 <.L30>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4422                	lw	s0,8(sp)

0000002c <.LVL47>:
  2c:	4492                	lw	s1,4(sp)

0000002e <.LVL48>:
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret

Disassembly of section .text._patch_ble_co_list_pop_front:

00000000 <_patch_ble_co_list_pop_front>:
   0:	419c                	lw	a5,0(a1)
   2:	c11c                	sw	a5,0(a0)
   4:	c791                	beqz	a5,10 <.L36>
			4: R_RISCV_RVC_BRANCH	.L36
   6:	439c                	lw	a5,0(a5)
   8:	c19c                	sw	a5,0(a1)
   a:	e399                	bnez	a5,10 <.L36>
			a: R_RISCV_RVC_BRANCH	.L36
   c:	0005a223          	sw	zero,4(a1)

00000010 <.L36>:
  10:	4505                	li	a0,1

00000012 <.LVL50>:
  12:	8082                	ret

Disassembly of section .text.ble_co_list_pop_front:

00000000 <ble_co_list_pop_front>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_pop_front>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	0068                	addi	a0,sp,12

00000014 <.LVL52>:
  14:	9782                	jalr	a5

00000016 <.LVL53>:
  16:	c511                	beqz	a0,22 <.L39>
			16: R_RISCV_RVC_BRANCH	.L39
  18:	4532                	lw	a0,12(sp)

0000001a <.L38>:
  1a:	40f2                	lw	ra,28(sp)
  1c:	4462                	lw	s0,24(sp)

0000001e <.LVL54>:
  1e:	6105                	addi	sp,sp,32
  20:	8082                	ret

00000022 <.L39>:
  22:	4008                	lw	a0,0(s0)
  24:	c62a                	sw	a0,12(sp)
  26:	d975                	beqz	a0,1a <.L38>
			26: R_RISCV_RVC_BRANCH	.L38
  28:	411c                	lw	a5,0(a0)
  2a:	c01c                	sw	a5,0(s0)
  2c:	f7fd                	bnez	a5,1a <.L38>
			2c: R_RISCV_RVC_BRANCH	.L38
  2e:	00042223          	sw	zero,4(s0)
  32:	b7e5                	j	1a <.L38>
			32: R_RISCV_RVC_JUMP	.L38

Disassembly of section .text._patch_ble_co_list_extract:

00000000 <_patch_ble_co_list_extract>:
   0:	419c                	lw	a5,0(a1)

00000002 <.LVL57>:
   2:	4701                	li	a4,0

00000004 <.L46>:
   4:	e791                	bnez	a5,10 <.L49>
			4: R_RISCV_RVC_BRANCH	.L49
   6:	00054603          	lbu	a2,0(a0)

0000000a <.LVL59>:
   a:	ea01                	bnez	a2,1a <.L51>
			a: R_RISCV_RVC_BRANCH	.L51

0000000c <.L50>:
   c:	4505                	li	a0,1

0000000e <.LVL61>:
   e:	8082                	ret

00000010 <.L49>:
  10:	00c79e63          	bne	a5,a2,2c <.L47>
			10: R_RISCV_BRANCH	.L47
  14:	4605                	li	a2,1

00000016 <.LVL63>:
  16:	00c50023          	sb	a2,0(a0)

0000001a <.L51>:
  1a:	4390                	lw	a2,0(a5)

0000001c <.LBB47>:
  1c:	ea99                	bnez	a3,32 <.L52>
			1c: R_RISCV_RVC_BRANCH	.L52

0000001e <.LBE48>:
  1e:	ef09                	bnez	a4,38 <.L53>
			1e: R_RISCV_RVC_BRANCH	.L53
  20:	c190                	sw	a2,0(a1)

00000022 <.L54>:
  22:	41d4                	lw	a3,4(a1)

00000024 <.LVL65>:
  24:	fef694e3          	bne	a3,a5,c <.L50>
			24: R_RISCV_BRANCH	.L50
  28:	c1d8                	sw	a4,4(a1)
  2a:	b7cd                	j	c <.L50>
			2a: R_RISCV_RVC_JUMP	.L50

0000002c <.L47>:
  2c:	873e                	mv	a4,a5

0000002e <.LVL67>:
  2e:	439c                	lw	a5,0(a5)

00000030 <.LVL68>:
  30:	bfd1                	j	4 <.L46>
			30: R_RISCV_RVC_JUMP	.L46

00000032 <.L52>:
  32:	16fd                	addi	a3,a3,-1

00000034 <.LVL70>:
  34:	87b2                	mv	a5,a2
  36:	b7d5                	j	1a <.L51>
			36: R_RISCV_RVC_JUMP	.L51

00000038 <.L53>:
  38:	c310                	sw	a2,0(a4)
  3a:	b7e5                	j	22 <.L54>
			3a: R_RISCV_RVC_JUMP	.L54

Disassembly of section .text.ble_co_list_extract:

00000000 <ble_co_list_extract>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_extract>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	84aa                	mv	s1,a0
  14:	892e                	mv	s2,a1
  16:	8432                	mv	s0,a2
  18:	86b2                	mv	a3,a2
  1a:	000107a3          	sb	zero,15(sp)
  1e:	862e                	mv	a2,a1

00000020 <.LVL73>:
  20:	85aa                	mv	a1,a0

00000022 <.LVL74>:
  22:	00f10513          	addi	a0,sp,15

00000026 <.LVL75>:
  26:	9782                	jalr	a5

00000028 <.LVL76>:
  28:	c909                	beqz	a0,3a <.L57>
			28: R_RISCV_RVC_BRANCH	.L57

0000002a <.L63>:
  2a:	40f2                	lw	ra,28(sp)
  2c:	4462                	lw	s0,24(sp)
  2e:	00f14503          	lbu	a0,15(sp)
  32:	44d2                	lw	s1,20(sp)

00000034 <.LVL77>:
  34:	4942                	lw	s2,16(sp)

00000036 <.LVL78>:
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

0000003a <.L57>:
  3a:	409c                	lw	a5,0(s1)

0000003c <.LVL80>:
  3c:	4701                	li	a4,0

0000003e <.L59>:
  3e:	e789                	bnez	a5,48 <.L62>
			3e: R_RISCV_RVC_BRANCH	.L62
  40:	00f14683          	lbu	a3,15(sp)
  44:	d2fd                	beqz	a3,2a <.L63>
			44: R_RISCV_RVC_BRANCH	.L63
  46:	a031                	j	52 <.L64>
			46: R_RISCV_RVC_JUMP	.L64

00000048 <.L62>:
  48:	01279e63          	bne	a5,s2,64 <.L60>
			48: R_RISCV_BRANCH	.L60
  4c:	4685                	li	a3,1
  4e:	00d107a3          	sb	a3,15(sp)

00000052 <.L64>:
  52:	4394                	lw	a3,0(a5)

00000054 <.LBB51>:
  54:	e819                	bnez	s0,6a <.L65>
			54: R_RISCV_RVC_BRANCH	.L65

00000056 <.LBE52>:
  56:	ef09                	bnez	a4,70 <.L66>
			56: R_RISCV_RVC_BRANCH	.L66
  58:	c094                	sw	a3,0(s1)

0000005a <.L67>:
  5a:	40d4                	lw	a3,4(s1)
  5c:	fcf697e3          	bne	a3,a5,2a <.L63>
			5c: R_RISCV_BRANCH	.L63
  60:	c0d8                	sw	a4,4(s1)
  62:	b7e1                	j	2a <.L63>
			62: R_RISCV_RVC_JUMP	.L63

00000064 <.L60>:
  64:	873e                	mv	a4,a5

00000066 <.LVL84>:
  66:	439c                	lw	a5,0(a5)

00000068 <.LVL85>:
  68:	bfd9                	j	3e <.L59>
			68: R_RISCV_RVC_JUMP	.L59

0000006a <.L65>:
  6a:	147d                	addi	s0,s0,-1

0000006c <.LVL87>:
  6c:	87b6                	mv	a5,a3
  6e:	b7d5                	j	52 <.L64>
			6e: R_RISCV_RVC_JUMP	.L64

00000070 <.L66>:
  70:	c314                	sw	a3,0(a4)
  72:	b7e5                	j	5a <.L67>
			72: R_RISCV_RVC_JUMP	.L67

Disassembly of section .text._patch_ble_co_list_extract_after:

00000000 <_patch_ble_co_list_extract_after>:
   0:	ea11                	bnez	a2,14 <.L71>
			0: R_RISCV_RVC_BRANCH	.L71
   2:	419c                	lw	a5,0(a1)
   4:	439c                	lw	a5,0(a5)
   6:	c19c                	sw	a5,0(a1)

00000008 <.L72>:
   8:	41dc                	lw	a5,4(a1)
   a:	00d79363          	bne	a5,a3,10 <.L73>
			a: R_RISCV_BRANCH	.L73
   e:	c1d0                	sw	a2,4(a1)

00000010 <.L73>:
  10:	4505                	li	a0,1

00000012 <.LVL90>:
  12:	8082                	ret

00000014 <.L71>:
  14:	429c                	lw	a5,0(a3)
  16:	c21c                	sw	a5,0(a2)
  18:	bfc5                	j	8 <.L72>
			18: R_RISCV_RVC_JUMP	.L72

Disassembly of section .text.ble_co_list_extract_after:

00000000 <ble_co_list_extract_after>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_extract_after>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	842a                	mv	s0,a0
  14:	84ae                	mv	s1,a1
  16:	8932                	mv	s2,a2
  18:	86b2                	mv	a3,a2
  1a:	862e                	mv	a2,a1

0000001c <.LVL93>:
  1c:	85aa                	mv	a1,a0

0000001e <.LVL94>:
  1e:	4501                	li	a0,0

00000020 <.LVL95>:
  20:	9782                	jalr	a5

00000022 <.LVL96>:
  22:	e909                	bnez	a0,34 <.L74>
			22: R_RISCV_RVC_BRANCH	.L74
  24:	ec91                	bnez	s1,40 <.L77>
			24: R_RISCV_RVC_BRANCH	.L77
  26:	401c                	lw	a5,0(s0)
  28:	439c                	lw	a5,0(a5)
  2a:	c01c                	sw	a5,0(s0)

0000002c <.L78>:
  2c:	405c                	lw	a5,4(s0)
  2e:	01279363          	bne	a5,s2,34 <.L74>
			2e: R_RISCV_BRANCH	.L74
  32:	c044                	sw	s1,4(s0)

00000034 <.L74>:
  34:	40b2                	lw	ra,12(sp)
  36:	4422                	lw	s0,8(sp)

00000038 <.LVL97>:
  38:	4492                	lw	s1,4(sp)

0000003a <.LVL98>:
  3a:	4902                	lw	s2,0(sp)

0000003c <.LVL99>:
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

00000040 <.L77>:
  40:	00092783          	lw	a5,0(s2)
  44:	c09c                	sw	a5,0(s1)
  46:	b7dd                	j	2c <.L78>
			46: R_RISCV_RVC_JUMP	.L78

Disassembly of section .text._patch_ble_co_list_find:

00000000 <_patch_ble_co_list_find>:
   0:	419c                	lw	a5,0(a1)

00000002 <.L82>:
   2:	00c78363          	beq	a5,a2,8 <.L83>
			2: R_RISCV_BRANCH	.L83
   6:	eb81                	bnez	a5,16 <.L84>
			6: R_RISCV_RVC_BRANCH	.L84

00000008 <.L83>:
   8:	8f91                	sub	a5,a5,a2

0000000a <.LVL103>:
   a:	0017b793          	seqz	a5,a5
   e:	00f50023          	sb	a5,0(a0)
  12:	4505                	li	a0,1

00000014 <.LVL104>:
  14:	8082                	ret

00000016 <.L84>:
  16:	439c                	lw	a5,0(a5)
  18:	b7ed                	j	2 <.L82>
			18: R_RISCV_RVC_JUMP	.L82

Disassembly of section .text.ble_co_list_find:

00000000 <ble_co_list_find>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_find>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL108>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL109>:
  1c:	9782                	jalr	a5

0000001e <.LVL110>:
  1e:	c901                	beqz	a0,2e <.L87>
			1e: R_RISCV_RVC_BRANCH	.L87
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L88>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL111>:
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL112>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L87>:
  2e:	4088                	lw	a0,0(s1)

00000030 <.L89>:
  30:	00850363          	beq	a0,s0,36 <.L90>
			30: R_RISCV_BRANCH	.L90
  34:	e511                	bnez	a0,40 <.L91>
			34: R_RISCV_RVC_BRANCH	.L91

00000036 <.L90>:
  36:	40a40533          	sub	a0,s0,a0

0000003a <.LVL115>:
  3a:	00153513          	seqz	a0,a0
  3e:	b7dd                	j	24 <.L88>
			3e: R_RISCV_RVC_JUMP	.L88

00000040 <.L91>:
  40:	4108                	lw	a0,0(a0)
  42:	b7fd                	j	30 <.L89>
			42: R_RISCV_RVC_JUMP	.L89

Disassembly of section .text._patch_ble_co_list_merge:

00000000 <_patch_ble_co_list_merge>:
   0:	4198                	lw	a4,0(a1)
   2:	421c                	lw	a5,0(a2)
   4:	eb01                	bnez	a4,14 <.L95>
			4: R_RISCV_RVC_BRANCH	.L95
   6:	c19c                	sw	a5,0(a1)

00000008 <.L97>:
   8:	425c                	lw	a5,4(a2)
   a:	4505                	li	a0,1

0000000c <.LVL119>:
   c:	c1dc                	sw	a5,4(a1)
   e:	00062023          	sw	zero,0(a2)
  12:	8082                	ret

00000014 <.L95>:
  14:	41d8                	lw	a4,4(a1)
  16:	c31c                	sw	a5,0(a4)
  18:	bfc5                	j	8 <.L97>
			18: R_RISCV_RVC_JUMP	.L97

Disassembly of section .text.ble_co_list_merge:

00000000 <ble_co_list_merge>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_merge>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL122>:
  18:	4501                	li	a0,0

0000001a <.LVL123>:
  1a:	9782                	jalr	a5

0000001c <.LVL124>:
  1c:	e909                	bnez	a0,2e <.L98>
			1c: R_RISCV_RVC_BRANCH	.L98

0000001e <.LBB57>:
  1e:	4018                	lw	a4,0(s0)
  20:	409c                	lw	a5,0(s1)
  22:	eb19                	bnez	a4,38 <.L100>
			22: R_RISCV_RVC_BRANCH	.L100
  24:	c01c                	sw	a5,0(s0)

00000026 <.L103>:
  26:	40dc                	lw	a5,4(s1)
  28:	c05c                	sw	a5,4(s0)
  2a:	0004a023          	sw	zero,0(s1)

0000002e <.L98>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL126>:
  32:	4492                	lw	s1,4(sp)

00000034 <.LVL127>:
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

00000038 <.L100>:
  38:	4058                	lw	a4,4(s0)
  3a:	c31c                	sw	a5,0(a4)
  3c:	b7ed                	j	26 <.L103>
			3c: R_RISCV_RVC_JUMP	.L103

Disassembly of section .text._patch_ble_co_list_insert_before:

00000000 <_patch_ble_co_list_insert_before>:
   0:	ee09                	bnez	a2,1a <.L105>
			0: R_RISCV_RVC_BRANCH	.L105

00000002 <.L110>:
   2:	1141                	addi	sp,sp,-16
   4:	852e                	mv	a0,a1

00000006 <.LVL130>:
   6:	85b6                	mv	a1,a3

00000008 <.LVL131>:
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ble_co_list_push_front
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL131+0x2>

00000012 <.LVL132>:
  12:	40b2                	lw	ra,12(sp)
  14:	4505                	li	a0,1
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

0000001a <.L105>:
  1a:	419c                	lw	a5,0(a1)

0000001c <.LVL134>:
  1c:	4701                	li	a4,0

0000001e <.L107>:
  1e:	00c78363          	beq	a5,a2,24 <.L108>
			1e: R_RISCV_BRANCH	.L108
  22:	e791                	bnez	a5,2e <.L109>
			22: R_RISCV_RVC_BRANCH	.L109

00000024 <.L108>:
  24:	df79                	beqz	a4,2 <.L110>
			24: R_RISCV_RVC_BRANCH	.L110
  26:	c314                	sw	a3,0(a4)
  28:	c29c                	sw	a5,0(a3)

0000002a <.LBE59>:
  2a:	4505                	li	a0,1

0000002c <.LVL136>:
  2c:	8082                	ret

0000002e <.L109>:
  2e:	873e                	mv	a4,a5
  30:	439c                	lw	a5,0(a5)

00000032 <.LVL138>:
  32:	b7f5                	j	1e <.L107>
			32: R_RISCV_RVC_JUMP	.L107

Disassembly of section .text.ble_co_list_insert_before:

00000000 <ble_co_list_insert_before>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_insert_before>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	84aa                	mv	s1,a0
  14:	892e                	mv	s2,a1
  16:	8432                	mv	s0,a2
  18:	86b2                	mv	a3,a2
  1a:	862e                	mv	a2,a1

0000001c <.LVL140>:
  1c:	85aa                	mv	a1,a0

0000001e <.LVL141>:
  1e:	4501                	li	a0,0

00000020 <.LVL142>:
  20:	9782                	jalr	a5

00000022 <.LVL143>:
  22:	e515                	bnez	a0,4e <.L118>
			22: R_RISCV_RVC_BRANCH	.L118
  24:	00091d63          	bnez	s2,3e <.L120>
			24: R_RISCV_BRANCH	.L120

00000028 <.L124>:
  28:	85a2                	mv	a1,s0
  2a:	4422                	lw	s0,8(sp)

0000002c <.LVL144>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4902                	lw	s2,0(sp)

00000030 <.LVL145>:
  30:	8526                	mv	a0,s1
  32:	4492                	lw	s1,4(sp)

00000034 <.LVL146>:
  34:	0141                	addi	sp,sp,16
  36:	00000317          	auipc	t1,0x0
			36: R_RISCV_CALL	ble_co_list_push_front
			36: R_RISCV_RELAX	*ABS*
  3a:	00030067          	jr	t1 # 36 <.LVL146+0x2>

0000003e <.L120>:
  3e:	409c                	lw	a5,0(s1)

00000040 <.LVL148>:
  40:	4701                	li	a4,0

00000042 <.L121>:
  42:	01278363          	beq	a5,s2,48 <.L122>
			42: R_RISCV_BRANCH	.L122
  46:	eb91                	bnez	a5,5a <.L123>
			46: R_RISCV_RVC_BRANCH	.L123

00000048 <.L122>:
  48:	d365                	beqz	a4,28 <.L124>
			48: R_RISCV_RVC_BRANCH	.L124
  4a:	c300                	sw	s0,0(a4)
  4c:	c01c                	sw	a5,0(s0)

0000004e <.L118>:
  4e:	40b2                	lw	ra,12(sp)
  50:	4422                	lw	s0,8(sp)

00000052 <.LVL151>:
  52:	4492                	lw	s1,4(sp)

00000054 <.LVL152>:
  54:	4902                	lw	s2,0(sp)

00000056 <.LVL153>:
  56:	0141                	addi	sp,sp,16
  58:	8082                	ret

0000005a <.L123>:
  5a:	873e                	mv	a4,a5
  5c:	439c                	lw	a5,0(a5)

0000005e <.LVL155>:
  5e:	b7d5                	j	42 <.L121>
			5e: R_RISCV_RVC_JUMP	.L121

Disassembly of section .text._patch_ble_co_list_insert_after:

00000000 <_patch_ble_co_list_insert_after>:
   0:	ee09                	bnez	a2,1a <.L131>
			0: R_RISCV_RVC_BRANCH	.L131

00000002 <.L136>:
   2:	1141                	addi	sp,sp,-16
   4:	852e                	mv	a0,a1

00000006 <.LVL157>:
   6:	85b6                	mv	a1,a3

00000008 <.LVL158>:
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	ble_co_list_push_back
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL158+0x2>

00000012 <.LVL159>:
  12:	40b2                	lw	ra,12(sp)
  14:	4505                	li	a0,1
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

0000001a <.L131>:
  1a:	419c                	lw	a5,0(a1)

0000001c <.L133>:
  1c:	00c78563          	beq	a5,a2,26 <.L134>
			1c: R_RISCV_BRANCH	.L134
  20:	d3ed                	beqz	a5,2 <.L136>
			20: R_RISCV_RVC_BRANCH	.L136
  22:	439c                	lw	a5,0(a5)
  24:	bfe5                	j	1c <.L133>
			24: R_RISCV_RVC_JUMP	.L133

00000026 <.L134>:
  26:	421c                	lw	a5,0(a2)

00000028 <.LVL163>:
  28:	e391                	bnez	a5,2c <.L138>
			28: R_RISCV_RVC_BRANCH	.L138
  2a:	c1d4                	sw	a3,4(a1)

0000002c <.L138>:
  2c:	421c                	lw	a5,0(a2)

0000002e <.LBE63>:
  2e:	4505                	li	a0,1

00000030 <.LBB64>:
  30:	c29c                	sw	a5,0(a3)
  32:	c214                	sw	a3,0(a2)

00000034 <.LBE64>:
  34:	8082                	ret

Disassembly of section .text.ble_co_list_insert_after:

00000000 <ble_co_list_insert_after>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_insert_after>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	892a                	mv	s2,a0
  14:	842e                	mv	s0,a1
  16:	84b2                	mv	s1,a2
  18:	86b2                	mv	a3,a2
  1a:	862e                	mv	a2,a1

0000001c <.LVL166>:
  1c:	85aa                	mv	a1,a0

0000001e <.LVL167>:
  1e:	4501                	li	a0,0

00000020 <.LVL168>:
  20:	9782                	jalr	a5

00000022 <.LVL169>:
  22:	e91d                	bnez	a0,58 <.L143>
			22: R_RISCV_RVC_BRANCH	.L143
  24:	ec01                	bnez	s0,3c <.L145>
			24: R_RISCV_RVC_BRANCH	.L145

00000026 <.L149>:
  26:	4422                	lw	s0,8(sp)

00000028 <.LVL170>:
  28:	40b2                	lw	ra,12(sp)
  2a:	85a6                	mv	a1,s1
  2c:	854a                	mv	a0,s2
  2e:	4492                	lw	s1,4(sp)

00000030 <.LVL171>:
  30:	4902                	lw	s2,0(sp)

00000032 <.LVL172>:
  32:	0141                	addi	sp,sp,16
  34:	00000317          	auipc	t1,0x0
			34: R_RISCV_CALL	ble_co_list_push_back
			34: R_RISCV_RELAX	*ABS*
  38:	00030067          	jr	t1 # 34 <.LVL172+0x2>

0000003c <.L145>:
  3c:	00092783          	lw	a5,0(s2)

00000040 <.L146>:
  40:	00878563          	beq	a5,s0,4a <.L147>
			40: R_RISCV_BRANCH	.L147
  44:	d3ed                	beqz	a5,26 <.L149>
			44: R_RISCV_RVC_BRANCH	.L149
  46:	439c                	lw	a5,0(a5)
  48:	bfe5                	j	40 <.L146>
			48: R_RISCV_RVC_JUMP	.L146

0000004a <.L147>:
  4a:	401c                	lw	a5,0(s0)

0000004c <.LVL176>:
  4c:	e399                	bnez	a5,52 <.L151>
			4c: R_RISCV_RVC_BRANCH	.L151
  4e:	00992223          	sw	s1,4(s2)

00000052 <.L151>:
  52:	401c                	lw	a5,0(s0)
  54:	c09c                	sw	a5,0(s1)
  56:	c004                	sw	s1,0(s0)

00000058 <.L143>:
  58:	40b2                	lw	ra,12(sp)
  5a:	4422                	lw	s0,8(sp)

0000005c <.LVL177>:
  5c:	4492                	lw	s1,4(sp)

0000005e <.LVL178>:
  5e:	4902                	lw	s2,0(sp)

00000060 <.LVL179>:
  60:	0141                	addi	sp,sp,16
  62:	8082                	ret

Disassembly of section .text._patch_ble_co_list_size:

00000000 <_patch_ble_co_list_size>:
   0:	419c                	lw	a5,0(a1)

00000002 <.L154>:
   2:	e399                	bnez	a5,8 <.L155>
			2: R_RISCV_RVC_BRANCH	.L155
   4:	4505                	li	a0,1

00000006 <.LVL182>:
   6:	8082                	ret

00000008 <.L155>:
   8:	00055703          	lhu	a4,0(a0)
   c:	439c                	lw	a5,0(a5)
   e:	0705                	addi	a4,a4,1
  10:	00e51023          	sh	a4,0(a0)
  14:	b7fd                	j	2 <.L154>
			14: R_RISCV_RVC_JUMP	.L154

Disassembly of section .text.ble_co_list_size:

00000000 <ble_co_list_size>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_size>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	00011723          	sh	zero,14(sp)
  16:	00e10513          	addi	a0,sp,14

0000001a <.LVL186>:
  1a:	9782                	jalr	a5

0000001c <.LVL187>:
  1c:	c519                	beqz	a0,2a <.L157>
			1c: R_RISCV_RVC_BRANCH	.L157
  1e:	00e15503          	lhu	a0,14(sp)

00000022 <.L158>:
  22:	40f2                	lw	ra,28(sp)
  24:	4462                	lw	s0,24(sp)

00000026 <.LVL188>:
  26:	6105                	addi	sp,sp,32
  28:	8082                	ret

0000002a <.L157>:
  2a:	401c                	lw	a5,0(s0)

0000002c <.L159>:
  2c:	00e15503          	lhu	a0,14(sp)
  30:	dbed                	beqz	a5,22 <.L158>
			30: R_RISCV_RVC_BRANCH	.L158
  32:	0505                	addi	a0,a0,1
  34:	439c                	lw	a5,0(a5)
  36:	00a11723          	sh	a0,14(sp)
  3a:	bfcd                	j	2c <.L159>
			3a: R_RISCV_RVC_JUMP	.L159

Disassembly of section .text._patch_ble_co_list_check_size_available:

00000000 <_patch_ble_co_list_check_size_available>:
   0:	4198                	lw	a4,0(a1)
   2:	4781                	li	a5,0
   4:	4685                	li	a3,1

00000006 <.L163>:
   6:	e709                	bnez	a4,10 <.L165>
			6: R_RISCV_RVC_BRANCH	.L165
   8:	00050023          	sb	zero,0(a0)
   c:	4505                	li	a0,1

0000000e <.LVL195>:
   e:	8082                	ret

00000010 <.L165>:
  10:	0785                	addi	a5,a5,1

00000012 <.LVL197>:
  12:	07c2                	slli	a5,a5,0x10
  14:	83c1                	srli	a5,a5,0x10
  16:	4318                	lw	a4,0(a4)

00000018 <.LVL198>:
  18:	fef617e3          	bne	a2,a5,6 <.L163>
			18: R_RISCV_BRANCH	.L163
  1c:	00d50023          	sb	a3,0(a0)
  20:	b7dd                	j	6 <.L163>
			20: R_RISCV_RVC_JUMP	.L163

Disassembly of section .text.ble_co_list_check_size_available:

00000000 <ble_co_list_check_size_available>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_co_list_check_size_available>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL200>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL201>:
  1c:	9782                	jalr	a5

0000001e <.LVL202>:
  1e:	c901                	beqz	a0,2e <.L167>
			1e: R_RISCV_RVC_BRANCH	.L167
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L168>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL203>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L167>:
  2e:	4098                	lw	a4,0(s1)
  30:	0442                	slli	s0,s0,0x10
  32:	4781                	li	a5,0
  34:	8041                	srli	s0,s0,0x10

00000036 <.L169>:
  36:	e319                	bnez	a4,3c <.L170>
			36: R_RISCV_RVC_BRANCH	.L170
  38:	4501                	li	a0,0
  3a:	b7ed                	j	24 <.L168>
			3a: R_RISCV_RVC_JUMP	.L168

0000003c <.L170>:
  3c:	0785                	addi	a5,a5,1

0000003e <.LVL207>:
  3e:	07c2                	slli	a5,a5,0x10
  40:	83c1                	srli	a5,a5,0x10
  42:	4318                	lw	a4,0(a4)

00000044 <.LVL208>:
  44:	fef419e3          	bne	s0,a5,36 <.L169>
			44: R_RISCV_BRANCH	.L169
  48:	4505                	li	a0,1
  4a:	bfe9                	j	24 <.L168>
			4a: R_RISCV_RVC_JUMP	.L168
