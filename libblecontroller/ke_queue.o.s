
libblecontroller/ke_queue.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_ke_queue_extract:

00000000 <_patch_ble_ke_queue_extract>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	419c                	lw	a5,0(a1)
   c:	842a                	mv	s0,a0
   e:	892e                	mv	s2,a1
  10:	c11c                	sw	a5,0(a0)
  12:	4481                	li	s1,0

00000014 <.L2>:
  14:	4008                	lw	a0,0(s0)
  16:	c10d                	beqz	a0,38 <.L7>
			16: R_RISCV_RVC_BRANCH	.L7
  18:	85b6                	mv	a1,a3
  1a:	c636                	sw	a3,12(sp)
  1c:	c432                	sw	a2,8(sp)
  1e:	9602                	jalr	a2

00000020 <.LVL2>:
  20:	401c                	lw	a5,0(s0)
  22:	4622                	lw	a2,8(sp)
  24:	46b2                	lw	a3,12(sp)
  26:	c515                	beqz	a0,52 <.L3>
			26: R_RISCV_RVC_BRANCH	.L3
  28:	439c                	lw	a5,0(a5)
  2a:	cc91                	beqz	s1,46 <.L4>
			2a: R_RISCV_RVC_BRANCH	.L4
  2c:	c09c                	sw	a5,0(s1)

0000002e <.L5>:
  2e:	401c                	lw	a5,0(s0)
  30:	4398                	lw	a4,0(a5)
  32:	cf09                	beqz	a4,4c <.L6>
			32: R_RISCV_RVC_BRANCH	.L6
  34:	0007a023          	sw	zero,0(a5)

00000038 <.L7>:
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)

0000003c <.LVL3>:
  3c:	44d2                	lw	s1,20(sp)

0000003e <.LVL4>:
  3e:	4942                	lw	s2,16(sp)

00000040 <.LVL5>:
  40:	4505                	li	a0,1
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L4>:
  46:	00f92023          	sw	a5,0(s2)
  4a:	b7d5                	j	2e <.L5>
			4a: R_RISCV_RVC_JUMP	.L5

0000004c <.L6>:
  4c:	00992223          	sw	s1,4(s2)
  50:	b7e5                	j	38 <.L7>
			50: R_RISCV_RVC_JUMP	.L7

00000052 <.L3>:
  52:	84be                	mv	s1,a5
  54:	439c                	lw	a5,0(a5)
  56:	c01c                	sw	a5,0(s0)
  58:	bf75                	j	14 <.L2>
			58: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.ble_ke_queue_extract:

00000000 <ble_ke_queue_extract>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_queue_extract>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	7179                	addi	sp,sp,-48
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	d606                	sw	ra,44(sp)
  12:	d422                	sw	s0,40(sp)
  14:	84aa                	mv	s1,a0
  16:	892e                	mv	s2,a1
  18:	89b2                	mv	s3,a2
  1a:	86b2                	mv	a3,a2
  1c:	862e                	mv	a2,a1

0000001e <.LVL9>:
  1e:	85aa                	mv	a1,a0

00000020 <.LVL10>:
  20:	0068                	addi	a0,sp,12

00000022 <.LVL11>:
  22:	9782                	jalr	a5

00000024 <.LVL12>:
  24:	c909                	beqz	a0,36 <.L11>
			24: R_RISCV_RVC_BRANCH	.L11

00000026 <.L18>:
  26:	50b2                	lw	ra,44(sp)
  28:	5422                	lw	s0,40(sp)
  2a:	4532                	lw	a0,12(sp)
  2c:	5492                	lw	s1,36(sp)

0000002e <.LVL13>:
  2e:	5902                	lw	s2,32(sp)

00000030 <.LVL14>:
  30:	49f2                	lw	s3,28(sp)

00000032 <.LVL15>:
  32:	6145                	addi	sp,sp,48
  34:	8082                	ret

00000036 <.L11>:
  36:	409c                	lw	a5,0(s1)
  38:	4401                	li	s0,0
  3a:	c63e                	sw	a5,12(sp)

0000003c <.L13>:
  3c:	4532                	lw	a0,12(sp)
  3e:	d565                	beqz	a0,26 <.L18>
			3e: R_RISCV_RVC_BRANCH	.L18
  40:	85ce                	mv	a1,s3
  42:	9902                	jalr	s2

00000044 <.LVL18>:
  44:	47b2                	lw	a5,12(sp)
  46:	cd11                	beqz	a0,62 <.L14>
			46: R_RISCV_RVC_BRANCH	.L14
  48:	439c                	lw	a5,0(a5)
  4a:	c801                	beqz	s0,5a <.L15>
			4a: R_RISCV_RVC_BRANCH	.L15
  4c:	c01c                	sw	a5,0(s0)

0000004e <.L16>:
  4e:	47b2                	lw	a5,12(sp)
  50:	4398                	lw	a4,0(a5)
  52:	c711                	beqz	a4,5e <.L17>
			52: R_RISCV_RVC_BRANCH	.L17
  54:	0007a023          	sw	zero,0(a5)
  58:	b7f9                	j	26 <.L18>
			58: R_RISCV_RVC_JUMP	.L18

0000005a <.L15>:
  5a:	c09c                	sw	a5,0(s1)
  5c:	bfcd                	j	4e <.L16>
			5c: R_RISCV_RVC_JUMP	.L16

0000005e <.L17>:
  5e:	c0c0                	sw	s0,4(s1)
  60:	b7d9                	j	26 <.L18>
			60: R_RISCV_RVC_JUMP	.L18

00000062 <.L14>:
  62:	843e                	mv	s0,a5
  64:	439c                	lw	a5,0(a5)
  66:	c63e                	sw	a5,12(sp)
  68:	bfd1                	j	3c <.L13>
			68: R_RISCV_RVC_JUMP	.L13

Disassembly of section .text._patch_ble_ke_queue_insert:

00000000 <_patch_ble_ke_queue_insert>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	4180                	lw	s0,0(a1)

0000000c <.LVL21>:
   c:	84ae                	mv	s1,a1
   e:	4901                	li	s2,0

00000010 <.L24>:
  10:	cc01                	beqz	s0,28 <.L22>
			10: R_RISCV_RVC_BRANCH	.L22
  12:	8532                	mv	a0,a2
  14:	85a2                	mv	a1,s0
  16:	c632                	sw	a2,12(sp)
  18:	c436                	sw	a3,8(sp)
  1a:	9682                	jalr	a3

0000001c <.LVL23>:
  1c:	4632                	lw	a2,12(sp)
  1e:	e511                	bnez	a0,2a <.L23>
			1e: R_RISCV_RVC_BRANCH	.L23

00000020 <.LVL24>:
  20:	8922                	mv	s2,s0
  22:	46a2                	lw	a3,8(sp)
  24:	4000                	lw	s0,0(s0)

00000026 <.LVL25>:
  26:	b7ed                	j	10 <.L24>
			26: R_RISCV_RVC_JUMP	.L24

00000028 <.L22>:
  28:	c0d0                	sw	a2,4(s1)

0000002a <.L23>:
  2a:	c200                	sw	s0,0(a2)
  2c:	00090b63          	beqz	s2,42 <.L25>
			2c: R_RISCV_BRANCH	.L25
  30:	00c92023          	sw	a2,0(s2)

00000034 <.L26>:
  34:	40f2                	lw	ra,28(sp)
  36:	4462                	lw	s0,24(sp)

00000038 <.LVL26>:
  38:	44d2                	lw	s1,20(sp)

0000003a <.LVL27>:
  3a:	4942                	lw	s2,16(sp)

0000003c <.LVL28>:
  3c:	4505                	li	a0,1
  3e:	6105                	addi	sp,sp,32
  40:	8082                	ret

00000042 <.L25>:
  42:	c090                	sw	a2,0(s1)
  44:	bfc5                	j	34 <.L26>
			44: R_RISCV_RVC_JUMP	.L26

Disassembly of section .text.ble_ke_queue_insert:

00000000 <ble_ke_queue_insert>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_queue_insert>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c452                	sw	s4,8(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c64e                	sw	s3,12(sp)
  16:	892a                	mv	s2,a0
  18:	842e                	mv	s0,a1
  1a:	8a32                	mv	s4,a2
  1c:	86b2                	mv	a3,a2
  1e:	862e                	mv	a2,a1

00000020 <.LVL31>:
  20:	85aa                	mv	a1,a0

00000022 <.LVL32>:
  22:	4501                	li	a0,0

00000024 <.LVL33>:
  24:	9782                	jalr	a5

00000026 <.LVL34>:
  26:	e11d                	bnez	a0,4c <.L28>
			26: R_RISCV_RVC_BRANCH	.L28

00000028 <.LVL35>:
  28:	00092483          	lw	s1,0(s2)

0000002c <.LVL36>:
  2c:	4981                	li	s3,0

0000002e <.L32>:
  2e:	c881                	beqz	s1,3e <.L30>
			2e: R_RISCV_RVC_BRANCH	.L30
  30:	85a6                	mv	a1,s1
  32:	8522                	mv	a0,s0
  34:	9a02                	jalr	s4

00000036 <.LVL38>:
  36:	e511                	bnez	a0,42 <.L31>
			36: R_RISCV_RVC_BRANCH	.L31

00000038 <.LVL39>:
  38:	89a6                	mv	s3,s1
  3a:	4084                	lw	s1,0(s1)

0000003c <.LVL40>:
  3c:	bfcd                	j	2e <.L32>
			3c: R_RISCV_RVC_JUMP	.L32

0000003e <.L30>:
  3e:	00892223          	sw	s0,4(s2)

00000042 <.L31>:
  42:	c004                	sw	s1,0(s0)
  44:	00098c63          	beqz	s3,5c <.L33>
			44: R_RISCV_BRANCH	.L33
  48:	0089a023          	sw	s0,0(s3)

0000004c <.L28>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4462                	lw	s0,24(sp)

00000050 <.LVL42>:
  50:	44d2                	lw	s1,20(sp)
  52:	4942                	lw	s2,16(sp)

00000054 <.LVL43>:
  54:	49b2                	lw	s3,12(sp)
  56:	4a22                	lw	s4,8(sp)

00000058 <.LVL44>:
  58:	6105                	addi	sp,sp,32
  5a:	8082                	ret

0000005c <.L33>:
  5c:	00892023          	sw	s0,0(s2)
  60:	b7f5                	j	4c <.L28>
			60: R_RISCV_RVC_JUMP	.L28
