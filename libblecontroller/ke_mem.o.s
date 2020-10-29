
libblecontroller/ke_mem.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_ke_mem_is_in_heap:

00000000 <_patch_ble_ke_mem_is_in_heap>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_ke_env
			0: R_RISCV_RELAX	*ABS*
   4:	00458713          	addi	a4,a1,4
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	ble_ke_env
			8: R_RISCV_RELAX	*ABS*
   c:	070a                	slli	a4,a4,0x2
   e:	00050023          	sb	zero,0(a0)
  12:	973e                	add	a4,a4,a5
  14:	4718                	lw	a4,8(a4)
  16:	00e66d63          	bltu	a2,a4,30 <.L2>
			16: R_RISCV_BRANCH	.L2
  1a:	05c1                	addi	a1,a1,16

0000001c <.LVL2>:
  1c:	0586                	slli	a1,a1,0x1
  1e:	97ae                	add	a5,a5,a1
  20:	0007d783          	lhu	a5,0(a5) # 0 <_patch_ble_ke_mem_is_in_heap>
  24:	97ba                	add	a5,a5,a4
  26:	00c7e563          	bltu	a5,a2,30 <.L2>
			26: R_RISCV_BRANCH	.L2
  2a:	4785                	li	a5,1
  2c:	00f50023          	sb	a5,0(a0)

00000030 <.L2>:
  30:	4505                	li	a0,1

00000032 <.LVL4>:
  32:	8082                	ret

Disassembly of section .text.ble_ke_mem_is_in_heap:

00000000 <ble_ke_mem_is_in_heap>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_mem_is_in_heap>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL6>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL7>:
  1c:	9782                	jalr	a5

0000001e <.LVL8>:
  1e:	c901                	beqz	a0,2e <.L4>
			1e: R_RISCV_RVC_BRANCH	.L4

00000020 <.L6>:
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)
  24:	00f14503          	lbu	a0,15(sp)
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL9>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L4>:
  2e:	000007b7          	lui	a5,0x0
			2e: R_RISCV_HI20	ble_ke_env
			2e: R_RISCV_RELAX	*ABS*
  32:	00440713          	addi	a4,s0,4
  36:	00078793          	mv	a5,a5
			36: R_RISCV_LO12_I	ble_ke_env
			36: R_RISCV_RELAX	*ABS*
  3a:	070a                	slli	a4,a4,0x2
  3c:	973e                	add	a4,a4,a5
  3e:	4718                	lw	a4,8(a4)
  40:	000107a3          	sb	zero,15(sp)
  44:	fce4eee3          	bltu	s1,a4,20 <.L6>
			44: R_RISCV_BRANCH	.L6
  48:	0441                	addi	s0,s0,16
  4a:	0406                	slli	s0,s0,0x1
  4c:	943e                	add	s0,s0,a5
  4e:	00045783          	lhu	a5,0(s0)
  52:	97ba                	add	a5,a5,a4
  54:	fc97e6e3          	bltu	a5,s1,20 <.L6>
			54: R_RISCV_BRANCH	.L6
  58:	4785                	li	a5,1
  5a:	00f107a3          	sb	a5,15(sp)
  5e:	b7c9                	j	20 <.L6>
			5e: R_RISCV_RVC_JUMP	.L6

Disassembly of section .text._patch_ble_ke_mem_init:

00000000 <_patch_ble_ke_mem_init>:
   0:	00458793          	addi	a5,a1,4
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	ble_ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	00360513          	addi	a0,a2,3

0000000c <.LVL15>:
   c:	00070713          	mv	a4,a4
			c: R_RISCV_LO12_I	ble_ke_env
			c: R_RISCV_RELAX	*ABS*
  10:	078a                	slli	a5,a5,0x2
  12:	9971                	andi	a0,a0,-4
  14:	97ba                	add	a5,a5,a4
  16:	c788                	sw	a0,8(a5)

00000018 <.LBB2>:
  18:	30002873          	csrr	a6,mstatus

0000001c <.LBB4>:
  1c:	300478f3          	csrrci	a7,mstatus,8

00000020 <.LBE4>:
  20:	9636                	add	a2,a2,a3

00000022 <.LVL18>:
  22:	9a71                	andi	a2,a2,-4
  24:	8e09                	sub	a2,a2,a0
  26:	00c51123          	sh	a2,2(a0)
  2a:	4788                	lw	a0,8(a5)
  2c:	7669                	lui	a2,0xffffa
  2e:	55a60613          	addi	a2,a2,1370 # ffffa55a <.LLST2+0xffff9b22>
  32:	00c51023          	sh	a2,0(a0)
  36:	4790                	lw	a2,8(a5)
  38:	05c1                	addi	a1,a1,16

0000003a <.LVL19>:
  3a:	0586                	slli	a1,a1,0x1
  3c:	00062223          	sw	zero,4(a2)
  40:	479c                	lw	a5,8(a5)
  42:	972e                	add	a4,a4,a1
  44:	0007a423          	sw	zero,8(a5) # 8 <_patch_ble_ke_mem_init+0x8>
  48:	00d71023          	sh	a3,0(a4) # 0 <_patch_ble_ke_mem_init>
  4c:	30081073          	csrw	mstatus,a6

00000050 <.LBE2>:
  50:	4505                	li	a0,1
  52:	8082                	ret

Disassembly of section .text.ble_ke_mem_init:

00000000 <ble_ke_mem_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_mem_init>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	84aa                	mv	s1,a0
  14:	842e                	mv	s0,a1
  16:	8932                	mv	s2,a2
  18:	86b2                	mv	a3,a2
  1a:	862e                	mv	a2,a1

0000001c <.LVL21>:
  1c:	85aa                	mv	a1,a0

0000001e <.LVL22>:
  1e:	4501                	li	a0,0

00000020 <.LVL23>:
  20:	9782                	jalr	a5

00000022 <.LVL24>:
  22:	e929                	bnez	a0,74 <.L9>
			22: R_RISCV_RVC_BRANCH	.L9
  24:	00448793          	addi	a5,s1,4
  28:	00000737          	lui	a4,0x0
			28: R_RISCV_HI20	ble_ke_env
			28: R_RISCV_RELAX	*ABS*
  2c:	00340693          	addi	a3,s0,3
  30:	00070713          	mv	a4,a4
			30: R_RISCV_LO12_I	ble_ke_env
			30: R_RISCV_RELAX	*ABS*
  34:	078a                	slli	a5,a5,0x2
  36:	9af1                	andi	a3,a3,-4
  38:	97ba                	add	a5,a5,a4
  3a:	c794                	sw	a3,8(a5)

0000003c <.LBB5>:
  3c:	30002673          	csrr	a2,mstatus

00000040 <.LBB7>:
  40:	300475f3          	csrrci	a1,mstatus,8

00000044 <.LBE7>:
  44:	944a                	add	s0,s0,s2

00000046 <.LVL27>:
  46:	9871                	andi	s0,s0,-4
  48:	8c15                	sub	s0,s0,a3
  4a:	00869123          	sh	s0,2(a3)
  4e:	478c                	lw	a1,8(a5)
  50:	76e9                	lui	a3,0xffffa
  52:	55a68693          	addi	a3,a3,1370 # ffffa55a <.LLST2+0xffff9b22>
  56:	00d59023          	sh	a3,0(a1)
  5a:	4794                	lw	a3,8(a5)
  5c:	04c1                	addi	s1,s1,16
  5e:	0486                	slli	s1,s1,0x1
  60:	0006a223          	sw	zero,4(a3)
  64:	479c                	lw	a5,8(a5)
  66:	94ba                	add	s1,s1,a4
  68:	0007a423          	sw	zero,8(a5)
  6c:	01249023          	sh	s2,0(s1)
  70:	30061073          	csrw	mstatus,a2

00000074 <.L9>:
  74:	40b2                	lw	ra,12(sp)
  76:	4422                	lw	s0,8(sp)
  78:	4492                	lw	s1,4(sp)
  7a:	4902                	lw	s2,0(sp)
  7c:	0141                	addi	sp,sp,16
  7e:	8082                	ret

Disassembly of section .text.ble_ke_mem_is_empty:

00000000 <ble_ke_mem_is_empty>:
   0:	00450713          	addi	a4,a0,4
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	ble_ke_env
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	ble_ke_env
			8: R_RISCV_RELAX	*ABS*
   c:	070a                	slli	a4,a4,0x2
   e:	973e                	add	a4,a4,a5
  10:	4718                	lw	a4,8(a4)

00000012 <.LBB8>:
  12:	300026f3          	csrr	a3,mstatus

00000016 <.LBB10>:
  16:	30047673          	csrrci	a2,mstatus,8

0000001a <.LBE10>:
  1a:	0541                	addi	a0,a0,16

0000001c <.LVL33>:
  1c:	0506                	slli	a0,a0,0x1
  1e:	97aa                	add	a5,a5,a0
  20:	0007d503          	lhu	a0,0(a5) # 0 <ble_ke_mem_is_empty>

00000024 <.LBB11>:
  24:	953a                	add	a0,a0,a4
  26:	9971                	andi	a0,a0,-4

00000028 <.LVL35>:
  28:	30069073          	csrw	mstatus,a3

0000002c <.LBB12>:
  2c:	00275783          	lhu	a5,2(a4) # 2 <ble_ke_mem_is_empty+0x2>
  30:	8d19                	sub	a0,a0,a4

00000032 <.LVL36>:
  32:	40a78533          	sub	a0,a5,a0

00000036 <.LBE12>:
  36:	00153513          	seqz	a0,a0
  3a:	8082                	ret

Disassembly of section .text.ble_ke_check_malloc:

00000000 <ble_ke_check_malloc>:
   0:	00350793          	addi	a5,a0,3
   4:	9bf1                	andi	a5,a5,-4
   6:	0791                	addi	a5,a5,4
   8:	4731                	li	a4,12
   a:	00e7f363          	bgeu	a5,a4,10 <.L14>
			a: R_RISCV_BRANCH	.L14
   e:	47b1                	li	a5,12

00000010 <.L14>:
  10:	300028f3          	csrr	a7,mstatus

00000014 <.LBB15>:
  14:	30047773          	csrrci	a4,mstatus,8

00000018 <.LBB16>:
  18:	00000637          	lui	a2,0x0
			18: R_RISCV_HI20	ble_ke_env
			18: R_RISCV_RELAX	*ABS*

0000001c <.LBE13>:
  1c:	4681                	li	a3,0

0000001e <.LBB17>:
  1e:	00060613          	mv	a2,a2
			1e: R_RISCV_LO12_I	ble_ke_env
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LBE17>:
  22:	4305                	li	t1,1

00000024 <.L21>:
  24:	00b68733          	add	a4,a3,a1
  28:	8b05                	andi	a4,a4,1
  2a:	0711                	addi	a4,a4,4
  2c:	070a                	slli	a4,a4,0x2
  2e:	9732                	add	a4,a4,a2
  30:	4718                	lw	a4,8(a4)

00000032 <.LVL43>:
  32:	4501                	li	a0,0
  34:	00c78e13          	addi	t3,a5,12

00000038 <.L15>:
  38:	e315                	bnez	a4,5c <.L18>
			38: R_RISCV_RVC_BRANCH	.L18
  3a:	c901                	beqz	a0,4a <.L19>
			3a: R_RISCV_RVC_BRANCH	.L19
  3c:	00255703          	lhu	a4,2(a0)

00000040 <.LVL45>:
  40:	00c78813          	addi	a6,a5,12
  44:	01077363          	bgeu	a4,a6,4a <.L19>
			44: R_RISCV_BRANCH	.L19
  48:	87ba                	mv	a5,a4

0000004a <.L19>:
  4a:	00668463          	beq	a3,t1,52 <.L20>
			4a: R_RISCV_BRANCH	.L20

0000004e <.LVL47>:
  4e:	4685                	li	a3,1

00000050 <.LVL48>:
  50:	d971                	beqz	a0,24 <.L21>
			50: R_RISCV_RVC_BRANCH	.L21

00000052 <.L20>:
  52:	30089073          	csrw	mstatus,a7

00000056 <.LBE20>:
  56:	00a03533          	snez	a0,a0

0000005a <.LVL50>:
  5a:	8082                	ret

0000005c <.L18>:
  5c:	00275803          	lhu	a6,2(a4)
  60:	00f86d63          	bltu	a6,a5,7a <.L16>
			60: R_RISCV_BRANCH	.L16
  64:	01c87663          	bgeu	a6,t3,70 <.L17>
			64: R_RISCV_BRANCH	.L17
  68:	00872e83          	lw	t4,8(a4)
  6c:	000e8763          	beqz	t4,7a <.L16>
			6c: R_RISCV_BRANCH	.L16

00000070 <.L17>:
  70:	c519                	beqz	a0,7e <.L23>
			70: R_RISCV_RVC_BRANCH	.L23
  72:	00255e83          	lhu	t4,2(a0)
  76:	01d86463          	bltu	a6,t4,7e <.L23>
			76: R_RISCV_BRANCH	.L23

0000007a <.L16>:
  7a:	4358                	lw	a4,4(a4)
  7c:	bf75                	j	38 <.L15>
			7c: R_RISCV_RVC_JUMP	.L15

0000007e <.L23>:
  7e:	853a                	mv	a0,a4

00000080 <.LVL54>:
  80:	bfed                	j	7a <.L16>
			80: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text._patch_ble_ke_malloc:

00000000 <_patch_ble_ke_malloc>:
   0:	058d                	addi	a1,a1,3

00000002 <.LVL56>:
   2:	99f1                	andi	a1,a1,-4

00000004 <.LVL57>:
   4:	00052023          	sw	zero,0(a0)

00000008 <.LVL58>:
   8:	0591                	addi	a1,a1,4
   a:	47b1                	li	a5,12
   c:	00f5f363          	bgeu	a1,a5,12 <.L33>
			c: R_RISCV_BRANCH	.L33
  10:	45b1                	li	a1,12

00000012 <.L33>:
  12:	30002373          	csrr	t1,mstatus

00000016 <.LBB24>:
  16:	300477f3          	csrrci	a5,mstatus,8

0000001a <.LBB25>:
  1a:	00000837          	lui	a6,0x0
			1a: R_RISCV_HI20	ble_ke_env
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LBE22>:
  1e:	4681                	li	a3,0

00000020 <.LBB26>:
  20:	00080813          	mv	a6,a6
			20: R_RISCV_LO12_I	ble_ke_env
			20: R_RISCV_RELAX	*ABS*

00000024 <.LBE26>:
  24:	4e05                	li	t3,1

00000026 <.L40>:
  26:	00d607b3          	add	a5,a2,a3
  2a:	8b85                	andi	a5,a5,1
  2c:	0791                	addi	a5,a5,4
  2e:	078a                	slli	a5,a5,0x2
  30:	97c2                	add	a5,a5,a6
  32:	4798                	lw	a4,8(a5)

00000034 <.LVL63>:
  34:	00c58e93          	addi	t4,a1,12
  38:	4781                	li	a5,0

0000003a <.L34>:
  3a:	eb21                	bnez	a4,8a <.L37>
			3a: R_RISCV_RVC_BRANCH	.L37
  3c:	cb81                	beqz	a5,4c <.L38>
			3c: R_RISCV_RVC_BRANCH	.L38
  3e:	0027d703          	lhu	a4,2(a5)

00000042 <.LVL65>:
  42:	00c58893          	addi	a7,a1,12
  46:	01177363          	bgeu	a4,a7,4c <.L38>
			46: R_RISCV_BRANCH	.L38
  4a:	85ba                	mv	a1,a4

0000004c <.L38>:
  4c:	07c68163          	beq	a3,t3,ae <.L39>
			4c: R_RISCV_BRANCH	.L39

00000050 <.LVL67>:
  50:	4685                	li	a3,1

00000052 <.LVL68>:
  52:	dbf1                	beqz	a5,26 <.L40>
			52: R_RISCV_RVC_BRANCH	.L40

00000054 <.L41>:
  54:	0027d703          	lhu	a4,2(a5)
  58:	01059693          	slli	a3,a1,0x10
  5c:	82c1                	srli	a3,a3,0x10
  5e:	04b71d63          	bne	a4,a1,b8 <.L43>
			5e: R_RISCV_BRANCH	.L43
  62:	4790                	lw	a2,8(a5)

00000064 <.LVL70>:
  64:	43d8                	lw	a4,4(a5)
  66:	c258                	sw	a4,4(a2)
  68:	c319                	beqz	a4,6e <.L61>
			68: R_RISCV_RVC_BRANCH	.L61
  6a:	4790                	lw	a2,8(a5)
  6c:	c710                	sw	a2,8(a4)

0000006e <.L61>:
  6e:	c11c                	sw	a5,0(a0)
  70:	411c                	lw	a5,0(a0)
  72:	00d79123          	sh	a3,2(a5)
  76:	4118                	lw	a4,0(a0)
  78:	77e1                	lui	a5,0xffff8
  7a:	33878793          	addi	a5,a5,824 # ffff8338 <.LLST2+0xffff7900>
  7e:	00f71023          	sh	a5,0(a4)
  82:	411c                	lw	a5,0(a0)
  84:	0791                	addi	a5,a5,4
  86:	c11c                	sw	a5,0(a0)
  88:	a025                	j	b0 <.L42>
			88: R_RISCV_RVC_JUMP	.L42

0000008a <.L37>:
  8a:	00275883          	lhu	a7,2(a4)
  8e:	00b8ee63          	bltu	a7,a1,aa <.L35>
			8e: R_RISCV_BRANCH	.L35
  92:	01d8f663          	bgeu	a7,t4,9e <.L36>
			92: R_RISCV_BRANCH	.L36
  96:	00872f03          	lw	t5,8(a4)
  9a:	000f0863          	beqz	t5,aa <.L35>
			9a: R_RISCV_BRANCH	.L35

0000009e <.L36>:
  9e:	c789                	beqz	a5,a8 <.L46>
			9e: R_RISCV_RVC_BRANCH	.L46
  a0:	0027df03          	lhu	t5,2(a5)
  a4:	01e8f363          	bgeu	a7,t5,aa <.L35>
			a4: R_RISCV_BRANCH	.L35

000000a8 <.L46>:
  a8:	87ba                	mv	a5,a4

000000aa <.L35>:
  aa:	4358                	lw	a4,4(a4)
  ac:	b779                	j	3a <.L34>
			ac: R_RISCV_RVC_JUMP	.L34

000000ae <.L39>:
  ae:	f3dd                	bnez	a5,54 <.L41>
			ae: R_RISCV_RVC_BRANCH	.L41

000000b0 <.L42>:
  b0:	30031073          	csrw	mstatus,t1

000000b4 <.LBE29>:
  b4:	4505                	li	a0,1

000000b6 <.LVL77>:
  b6:	8082                	ret

000000b8 <.L43>:
  b8:	8f15                	sub	a4,a4,a3
  ba:	0742                	slli	a4,a4,0x10
  bc:	8341                	srli	a4,a4,0x10
  be:	00e79123          	sh	a4,2(a5)
  c2:	97ba                	add	a5,a5,a4

000000c4 <.LVL79>:
  c4:	b76d                	j	6e <.L61>
			c4: R_RISCV_RVC_JUMP	.L61

Disassembly of section .text.ble_ke_malloc:

00000000 <ble_ke_malloc>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_malloc>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL81>:
  18:	0068                	addi	a0,sp,12

0000001a <.LVL82>:
  1a:	9782                	jalr	a5

0000001c <.LVL83>:
  1c:	c519                	beqz	a0,2a <.L63>
			1c: R_RISCV_RVC_BRANCH	.L63

0000001e <.L95>:
  1e:	40f2                	lw	ra,28(sp)
  20:	4462                	lw	s0,24(sp)

00000022 <.LVL84>:
  22:	4532                	lw	a0,12(sp)
  24:	44d2                	lw	s1,20(sp)
  26:	6105                	addi	sp,sp,32
  28:	8082                	ret

0000002a <.L63>:
  2a:	00340513          	addi	a0,s0,3
  2e:	9971                	andi	a0,a0,-4
  30:	c602                	sw	zero,12(sp)

00000032 <.LVL86>:
  32:	0511                	addi	a0,a0,4
  34:	47b1                	li	a5,12
  36:	00f57363          	bgeu	a0,a5,3c <.L65>
			36: R_RISCV_BRANCH	.L65
  3a:	4531                	li	a0,12

0000003c <.L65>:
  3c:	30002873          	csrr	a6,mstatus

00000040 <.LBB33>:
  40:	300477f3          	csrrci	a5,mstatus,8

00000044 <.LBB34>:
  44:	00000637          	lui	a2,0x0
			44: R_RISCV_HI20	ble_ke_env
			44: R_RISCV_RELAX	*ABS*

00000048 <.LBE31>:
  48:	4681                	li	a3,0

0000004a <.LBB35>:
  4a:	00060613          	mv	a2,a2
			4a: R_RISCV_LO12_I	ble_ke_env
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LBE35>:
  4e:	4885                	li	a7,1

00000050 <.L72>:
  50:	00d487b3          	add	a5,s1,a3
  54:	8b85                	andi	a5,a5,1
  56:	0791                	addi	a5,a5,4
  58:	078a                	slli	a5,a5,0x2
  5a:	97b2                	add	a5,a5,a2
  5c:	4798                	lw	a4,8(a5)

0000005e <.LVL91>:
  5e:	00c50313          	addi	t1,a0,12
  62:	4781                	li	a5,0

00000064 <.L66>:
  64:	eb29                	bnez	a4,b6 <.L69>
			64: R_RISCV_RVC_BRANCH	.L69
  66:	cb81                	beqz	a5,76 <.L70>
			66: R_RISCV_RVC_BRANCH	.L70
  68:	0027d703          	lhu	a4,2(a5)

0000006c <.LVL93>:
  6c:	00c50593          	addi	a1,a0,12
  70:	00b77363          	bgeu	a4,a1,76 <.L70>
			70: R_RISCV_BRANCH	.L70
  74:	853a                	mv	a0,a4

00000076 <.L70>:
  76:	07168263          	beq	a3,a7,da <.L71>
			76: R_RISCV_BRANCH	.L71

0000007a <.LVL95>:
  7a:	4685                	li	a3,1

0000007c <.LVL96>:
  7c:	dbf1                	beqz	a5,50 <.L72>
			7c: R_RISCV_RVC_BRANCH	.L72

0000007e <.L73>:
  7e:	0027d703          	lhu	a4,2(a5)
  82:	01051693          	slli	a3,a0,0x10
  86:	82c1                	srli	a3,a3,0x10
  88:	04a71d63          	bne	a4,a0,e2 <.L75>
			88: R_RISCV_BRANCH	.L75
  8c:	4798                	lw	a4,8(a5)
  8e:	43d0                	lw	a2,4(a5)
  90:	c350                	sw	a2,4(a4)
  92:	43d8                	lw	a4,4(a5)
  94:	c319                	beqz	a4,9a <.L94>
			94: R_RISCV_RVC_BRANCH	.L94
  96:	4790                	lw	a2,8(a5)
  98:	c710                	sw	a2,8(a4)

0000009a <.L94>:
  9a:	c63e                	sw	a5,12(sp)
  9c:	47b2                	lw	a5,12(sp)
  9e:	00d79123          	sh	a3,2(a5)
  a2:	4732                	lw	a4,12(sp)
  a4:	77e1                	lui	a5,0xffff8
  a6:	33878793          	addi	a5,a5,824 # ffff8338 <.LLST2+0xffff7900>
  aa:	00f71023          	sh	a5,0(a4)
  ae:	47b2                	lw	a5,12(sp)
  b0:	0791                	addi	a5,a5,4
  b2:	c63e                	sw	a5,12(sp)
  b4:	a025                	j	dc <.L74>
			b4: R_RISCV_RVC_JUMP	.L74

000000b6 <.L69>:
  b6:	00275583          	lhu	a1,2(a4)
  ba:	00a5ee63          	bltu	a1,a0,d6 <.L67>
			ba: R_RISCV_BRANCH	.L67
  be:	0065f663          	bgeu	a1,t1,ca <.L68>
			be: R_RISCV_BRANCH	.L68
  c2:	00872e03          	lw	t3,8(a4)
  c6:	000e0863          	beqz	t3,d6 <.L67>
			c6: R_RISCV_BRANCH	.L67

000000ca <.L68>:
  ca:	c789                	beqz	a5,d4 <.L78>
			ca: R_RISCV_RVC_BRANCH	.L78
  cc:	0027de03          	lhu	t3,2(a5)
  d0:	01c5f363          	bgeu	a1,t3,d6 <.L67>
			d0: R_RISCV_BRANCH	.L67

000000d4 <.L78>:
  d4:	87ba                	mv	a5,a4

000000d6 <.L67>:
  d6:	4358                	lw	a4,4(a4)
  d8:	b771                	j	64 <.L66>
			d8: R_RISCV_RVC_JUMP	.L66

000000da <.L71>:
  da:	f3d5                	bnez	a5,7e <.L73>
			da: R_RISCV_RVC_BRANCH	.L73

000000dc <.L74>:
  dc:	30081073          	csrw	mstatus,a6
  e0:	bf3d                	j	1e <.L95>
			e0: R_RISCV_RVC_JUMP	.L95

000000e2 <.L75>:
  e2:	8f15                	sub	a4,a4,a3
  e4:	0742                	slli	a4,a4,0x10
  e6:	8341                	srli	a4,a4,0x10
  e8:	00e79123          	sh	a4,2(a5)
  ec:	97ba                	add	a5,a5,a4

000000ee <.LVL105>:
  ee:	b775                	j	9a <.L94>
			ee: R_RISCV_RVC_JUMP	.L94

Disassembly of section .text._patch_ble_ke_free:

00000000 <_patch_ble_ke_free>:
   0:	1101                	addi	sp,sp,-32
   2:	77fd                	lui	a5,0xfffff
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	07bd                	addi	a5,a5,15
  14:	84ae                	mv	s1,a1
  16:	ffc58913          	addi	s2,a1,-4

0000001a <.LVL107>:
  1a:	fef59e23          	sh	a5,-4(a1)
  1e:	ffe5d403          	lhu	s0,-2(a1)

00000022 <.LBB39>:
  22:	30002af3          	csrr	s5,mstatus

00000026 <.LBB41>:
  26:	300477f3          	csrrci	a5,mstatus,8

0000002a <.LBE41>:
  2a:	00000a37          	lui	s4,0x0
			2a: R_RISCV_HI20	ble_ke_env
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LBE39>:
  2e:	4981                	li	s3,0

00000030 <.LBB42>:
  30:	000a0a13          	mv	s4,s4
			30: R_RISCV_LO12_I	ble_ke_env
			30: R_RISCV_RELAX	*ABS*

00000034 <.L97>:
  34:	85a6                	mv	a1,s1
  36:	854e                	mv	a0,s3
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	ble_ke_mem_is_in_heap
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.L97+0x4>

00000040 <.LVL112>:
  40:	c125                	beqz	a0,a0 <.L98>
			40: R_RISCV_RVC_BRANCH	.L98
  42:	00498793          	addi	a5,s3,4
  46:	078a                	slli	a5,a5,0x2
  48:	97d2                	add	a5,a5,s4
  4a:	479c                	lw	a5,8(a5)

0000004c <.LVL113>:
  4c:	d7e5                	beqz	a5,34 <.L97>
			4c: R_RISCV_RVC_BRANCH	.L97
  4e:	4701                	li	a4,0

00000050 <.L100>:
  50:	cbb9                	beqz	a5,a6 <.L101>
			50: R_RISCV_RVC_BRANCH	.L101
  52:	0027d683          	lhu	a3,2(a5) # fffff002 <.LLST2+0xffffe5ca>
  56:	00f68633          	add	a2,a3,a5
  5a:	07261363          	bne	a2,s2,c0 <.L102>
			5a: R_RISCV_BRANCH	.L102
  5e:	9436                	add	s0,s0,a3

00000060 <.LVL115>:
  60:	0442                	slli	s0,s0,0x10
  62:	43d8                	lw	a4,4(a5)

00000064 <.LVL116>:
  64:	8041                	srli	s0,s0,0x10
  66:	00879123          	sh	s0,2(a5)
  6a:	00f406b3          	add	a3,s0,a5
  6e:	00d71b63          	bne	a4,a3,84 <.L104>
			6e: R_RISCV_BRANCH	.L104

00000072 <.LVL117>:
  72:	00275683          	lhu	a3,2(a4)
  76:	9436                	add	s0,s0,a3
  78:	00879123          	sh	s0,2(a5)
  7c:	4358                	lw	a4,4(a4)

0000007e <.LVL118>:
  7e:	c3d8                	sw	a4,4(a5)

00000080 <.LVL119>:
  80:	c311                	beqz	a4,84 <.L104>
			80: R_RISCV_RVC_BRANCH	.L104
  82:	c71c                	sw	a5,8(a4)

00000084 <.L104>:
  84:	300a9073          	csrw	mstatus,s5

00000088 <.LBE42>:
  88:	40f2                	lw	ra,28(sp)
  8a:	4462                	lw	s0,24(sp)
  8c:	44d2                	lw	s1,20(sp)

0000008e <.LVL121>:
  8e:	4942                	lw	s2,16(sp)

00000090 <.LVL122>:
  90:	49b2                	lw	s3,12(sp)
  92:	4a22                	lw	s4,8(sp)
  94:	4a92                	lw	s5,4(sp)

00000096 <.LVL123>:
  96:	4505                	li	a0,1
  98:	6105                	addi	sp,sp,32
  9a:	8082                	ret

0000009c <.L110>:
  9c:	4985                	li	s3,1

0000009e <.LVL125>:
  9e:	bf59                	j	34 <.L97>
			9e: R_RISCV_RVC_JUMP	.L97

000000a0 <.L98>:
  a0:	fe098ee3          	beqz	s3,9c <.L110>
			a0: R_RISCV_BRANCH	.L110
  a4:	4701                	li	a4,0

000000a6 <.L101>:
  a6:	77e9                	lui	a5,0xffffa
  a8:	01272223          	sw	s2,4(a4)
  ac:	55a78793          	addi	a5,a5,1370 # ffffa55a <.LLST2+0xffff9b22>
  b0:	0004a023          	sw	zero,0(s1)
  b4:	c0d8                	sw	a4,4(s1)
  b6:	fe849f23          	sh	s0,-2(s1)
  ba:	fef49e23          	sh	a5,-4(s1)
  be:	b7d9                	j	84 <.L104>
			be: R_RISCV_RVC_JUMP	.L104

000000c0 <.L102>:
  c0:	02f97d63          	bgeu	s2,a5,fa <.L106>
			c0: R_RISCV_BRANCH	.L106
  c4:	01272223          	sw	s2,4(a4)
  c8:	c0d8                	sw	a4,4(s1)
  ca:	7769                	lui	a4,0xffffa

000000cc <.LVL129>:
  cc:	55a70713          	addi	a4,a4,1370 # ffffa55a <.LLST2+0xffff9b22>
  d0:	fee49e23          	sh	a4,-4(s1)
  d4:	01240733          	add	a4,s0,s2
  d8:	00e79d63          	bne	a5,a4,f2 <.L107>
			d8: R_RISCV_BRANCH	.L107
  dc:	43d8                	lw	a4,4(a5)
  de:	c098                	sw	a4,0(s1)
  e0:	c319                	beqz	a4,e6 <.L108>
			e0: R_RISCV_RVC_BRANCH	.L108
  e2:	01272423          	sw	s2,8(a4)

000000e6 <.L108>:
  e6:	0027d783          	lhu	a5,2(a5)

000000ea <.LVL131>:
  ea:	943e                	add	s0,s0,a5

000000ec <.L121>:
  ec:	fe849f23          	sh	s0,-2(s1)
  f0:	bf51                	j	84 <.L104>
			f0: R_RISCV_RVC_JUMP	.L104

000000f2 <.L107>:
  f2:	c09c                	sw	a5,0(s1)
  f4:	0127a423          	sw	s2,8(a5)

000000f8 <.LVL134>:
  f8:	bfd5                	j	ec <.L121>
			f8: R_RISCV_RVC_JUMP	.L121

000000fa <.L106>:
  fa:	873e                	mv	a4,a5
  fc:	43dc                	lw	a5,4(a5)

000000fe <.LVL136>:
  fe:	bf89                	j	50 <.L100>
			fe: R_RISCV_RVC_JUMP	.L100

Disassembly of section .text.ble_ke_free:

00000000 <ble_ke_free>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_free>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	c256                	sw	s5,4(sp)
  18:	842a                	mv	s0,a0
  1a:	85aa                	mv	a1,a0
  1c:	4501                	li	a0,0

0000001e <.LVL138>:
  1e:	9782                	jalr	a5

00000020 <.LVL139>:
  20:	ed25                	bnez	a0,98 <.L122>
			20: R_RISCV_RVC_BRANCH	.L122

00000022 <.LVL140>:
  22:	77fd                	lui	a5,0xfffff
  24:	07bd                	addi	a5,a5,15
  26:	ffc40913          	addi	s2,s0,-4

0000002a <.LVL141>:
  2a:	fef41e23          	sh	a5,-4(s0)
  2e:	ffe45483          	lhu	s1,-2(s0)

00000032 <.LBB44>:
  32:	30002af3          	csrr	s5,mstatus

00000036 <.LBB46>:
  36:	300477f3          	csrrci	a5,mstatus,8

0000003a <.LBE46>:
  3a:	00000a37          	lui	s4,0x0
			3a: R_RISCV_HI20	ble_ke_env
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LBE44>:
  3e:	4981                	li	s3,0

00000040 <.LBB47>:
  40:	000a0a13          	mv	s4,s4
			40: R_RISCV_LO12_I	ble_ke_env
			40: R_RISCV_RELAX	*ABS*

00000044 <.L124>:
  44:	85a2                	mv	a1,s0
  46:	854e                	mv	a0,s3
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	ble_ke_mem_is_in_heap
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L124+0x4>

00000050 <.LVL146>:
  50:	cd39                	beqz	a0,ae <.L125>
			50: R_RISCV_RVC_BRANCH	.L125
  52:	00498793          	addi	a5,s3,4
  56:	078a                	slli	a5,a5,0x2
  58:	97d2                	add	a5,a5,s4
  5a:	479c                	lw	a5,8(a5)

0000005c <.LVL147>:
  5c:	d7e5                	beqz	a5,44 <.L124>
			5c: R_RISCV_RVC_BRANCH	.L124
  5e:	4701                	li	a4,0

00000060 <.L127>:
  60:	cbb1                	beqz	a5,b4 <.L128>
			60: R_RISCV_RVC_BRANCH	.L128
  62:	0027d683          	lhu	a3,2(a5) # fffff002 <.LLST2+0xffffe5ca>
  66:	00f68633          	add	a2,a3,a5
  6a:	07261263          	bne	a2,s2,ce <.L129>
			6a: R_RISCV_BRANCH	.L129
  6e:	94b6                	add	s1,s1,a3

00000070 <.LVL149>:
  70:	04c2                	slli	s1,s1,0x10
  72:	43d8                	lw	a4,4(a5)

00000074 <.LVL150>:
  74:	80c1                	srli	s1,s1,0x10
  76:	00979123          	sh	s1,2(a5)
  7a:	00f486b3          	add	a3,s1,a5
  7e:	00d71b63          	bne	a4,a3,94 <.L131>
			7e: R_RISCV_BRANCH	.L131

00000082 <.LVL151>:
  82:	00275683          	lhu	a3,2(a4)
  86:	94b6                	add	s1,s1,a3
  88:	00979123          	sh	s1,2(a5)
  8c:	4358                	lw	a4,4(a4)

0000008e <.LVL152>:
  8e:	c3d8                	sw	a4,4(a5)

00000090 <.LVL153>:
  90:	c311                	beqz	a4,94 <.L131>
			90: R_RISCV_RVC_BRANCH	.L131
  92:	c71c                	sw	a5,8(a4)

00000094 <.L131>:
  94:	300a9073          	csrw	mstatus,s5

00000098 <.L122>:
  98:	40f2                	lw	ra,28(sp)
  9a:	4462                	lw	s0,24(sp)

0000009c <.LVL156>:
  9c:	44d2                	lw	s1,20(sp)
  9e:	4942                	lw	s2,16(sp)
  a0:	49b2                	lw	s3,12(sp)
  a2:	4a22                	lw	s4,8(sp)
  a4:	4a92                	lw	s5,4(sp)
  a6:	6105                	addi	sp,sp,32
  a8:	8082                	ret

000000aa <.L137>:
  aa:	4985                	li	s3,1

000000ac <.LVL158>:
  ac:	bf61                	j	44 <.L124>
			ac: R_RISCV_RVC_JUMP	.L124

000000ae <.L125>:
  ae:	fe098ee3          	beqz	s3,aa <.L137>
			ae: R_RISCV_BRANCH	.L137
  b2:	4701                	li	a4,0

000000b4 <.L128>:
  b4:	77e9                	lui	a5,0xffffa
  b6:	01272223          	sw	s2,4(a4)
  ba:	55a78793          	addi	a5,a5,1370 # ffffa55a <.LLST2+0xffff9b22>
  be:	00042023          	sw	zero,0(s0)
  c2:	c058                	sw	a4,4(s0)
  c4:	fe941f23          	sh	s1,-2(s0)
  c8:	fef41e23          	sh	a5,-4(s0)
  cc:	b7e1                	j	94 <.L131>
			cc: R_RISCV_RVC_JUMP	.L131

000000ce <.L129>:
  ce:	02f97d63          	bgeu	s2,a5,108 <.L133>
			ce: R_RISCV_BRANCH	.L133
  d2:	01272223          	sw	s2,4(a4)
  d6:	c058                	sw	a4,4(s0)
  d8:	7769                	lui	a4,0xffffa

000000da <.LVL162>:
  da:	55a70713          	addi	a4,a4,1370 # ffffa55a <.LLST2+0xffff9b22>
  de:	fee41e23          	sh	a4,-4(s0)
  e2:	01248733          	add	a4,s1,s2
  e6:	00e79d63          	bne	a5,a4,100 <.L134>
			e6: R_RISCV_BRANCH	.L134
  ea:	43d8                	lw	a4,4(a5)
  ec:	c018                	sw	a4,0(s0)
  ee:	c319                	beqz	a4,f4 <.L135>
			ee: R_RISCV_RVC_BRANCH	.L135
  f0:	01272423          	sw	s2,8(a4)

000000f4 <.L135>:
  f4:	0027d783          	lhu	a5,2(a5)

000000f8 <.LVL164>:
  f8:	94be                	add	s1,s1,a5

000000fa <.L148>:
  fa:	fe941f23          	sh	s1,-2(s0)
  fe:	bf59                	j	94 <.L131>
			fe: R_RISCV_RVC_JUMP	.L131

00000100 <.L134>:
 100:	c01c                	sw	a5,0(s0)
 102:	0127a423          	sw	s2,8(a5)

00000106 <.LVL167>:
 106:	bfd5                	j	fa <.L148>
			106: R_RISCV_RVC_JUMP	.L148

00000108 <.L133>:
 108:	873e                	mv	a4,a5
 10a:	43dc                	lw	a5,4(a5)

0000010c <.LVL169>:
 10c:	bf91                	j	60 <.L127>
			10c: R_RISCV_RVC_JUMP	.L127

Disassembly of section .text._patch_ble_ke_is_free:

00000000 <_patch_ble_ke_is_free>:
   0:	ffc5d783          	lhu	a5,-4(a1)
   4:	7761                	lui	a4,0xffff8
   6:	cc870713          	addi	a4,a4,-824 # ffff7cc8 <.LLST2+0xffff7290>
   a:	97ba                	add	a5,a5,a4
   c:	00f037b3          	snez	a5,a5
  10:	00f50023          	sb	a5,0(a0)
  14:	4505                	li	a0,1

00000016 <.LVL171>:
  16:	8082                	ret

Disassembly of section .text.ble_ke_is_free:

00000000 <ble_ke_is_free>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_is_free>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	00f10513          	addi	a0,sp,15

00000016 <.LVL173>:
  16:	9782                	jalr	a5

00000018 <.LVL174>:
  18:	c519                	beqz	a0,26 <.L151>
			18: R_RISCV_RVC_BRANCH	.L151
  1a:	00f14503          	lbu	a0,15(sp)

0000001e <.L152>:
  1e:	40f2                	lw	ra,28(sp)
  20:	4462                	lw	s0,24(sp)

00000022 <.LVL175>:
  22:	6105                	addi	sp,sp,32
  24:	8082                	ret

00000026 <.L151>:
  26:	ffc45503          	lhu	a0,-4(s0)
  2a:	77e1                	lui	a5,0xffff8
  2c:	cc878793          	addi	a5,a5,-824 # ffff7cc8 <.LLST2+0xffff7290>
  30:	953e                	add	a0,a0,a5
  32:	00a03533          	snez	a0,a0
  36:	b7e5                	j	1e <.L152>
			36: R_RISCV_RVC_JUMP	.L152
