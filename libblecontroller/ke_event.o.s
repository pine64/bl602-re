
libblecontroller/ke_event.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_ke_event_init:

00000000 <_patch_ble_ke_event_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <_patch_ble_ke_event_init>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	ble_ke_event_env
			a: R_RISCV_RELAX	*ABS*

0000000e <.LVL1>:
   e:	c606                	sw	ra,12(sp)
  10:	03000613          	li	a2,48
  14:	4581                	li	a1,0
  16:	00050513          	mv	a0,a0
			16: R_RISCV_LO12_I	ble_ke_event_env
			16: R_RISCV_RELAX	*ABS*
  1a:	9782                	jalr	a5

0000001c <.LVL2>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	4505                	li	a0,1
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret

Disassembly of section .text.ble_ke_event_init:

00000000 <ble_ke_event_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_init>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	4501                	li	a0,0
   e:	9782                	jalr	a5

00000010 <.LVL3>:
  10:	ed19                	bnez	a0,2e <.L3>
			10: R_RISCV_RVC_BRANCH	.L3
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	ble_memset_ptr
			12: R_RISCV_RELAX	*ABS*
  16:	40b2                	lw	ra,12(sp)
  18:	0007a303          	lw	t1,0(a5) # 0 <ble_ke_event_init>
			18: R_RISCV_LO12_I	ble_memset_ptr
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	ble_ke_event_env
			1c: R_RISCV_RELAX	*ABS*
  20:	03000613          	li	a2,48
  24:	4581                	li	a1,0
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	ble_ke_event_env
			26: R_RISCV_RELAX	*ABS*
  2a:	0141                	addi	sp,sp,16
  2c:	8302                	jr	t1

0000002e <.L3>:
  2e:	40b2                	lw	ra,12(sp)
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text._patch_ble_ke_event_callback_set:

00000000 <_patch_ble_ke_event_callback_set>:
   0:	478d                	li	a5,3
   2:	00f50023          	sb	a5,0(a0) # 0 <_patch_ble_ke_event_callback_set>
   6:	47a5                	li	a5,9
   8:	00b7eb63          	bltu	a5,a1,1e <.L7>
			8: R_RISCV_BRANCH	.L7
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	ble_ke_event_env
			c: R_RISCV_RELAX	*ABS*
  10:	058a                	slli	a1,a1,0x2

00000012 <.LVL6>:
  12:	00078793          	mv	a5,a5
			12: R_RISCV_LO12_I	ble_ke_event_env
			12: R_RISCV_RELAX	*ABS*
  16:	97ae                	add	a5,a5,a1
  18:	c3d0                	sw	a2,4(a5)
  1a:	00050023          	sb	zero,0(a0)

0000001e <.L7>:
  1e:	4505                	li	a0,1

00000020 <.LVL7>:
  20:	8082                	ret

Disassembly of section .text.ble_ke_event_callback_set:

00000000 <ble_ke_event_callback_set>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_callback_set>
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

00000018 <.LVL9>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL10>:
  1c:	9782                	jalr	a5

0000001e <.LVL11>:
  1e:	c901                	beqz	a0,2e <.L9>
			1e: R_RISCV_RVC_BRANCH	.L9

00000020 <.L11>:
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)
  24:	00f14503          	lbu	a0,15(sp)
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL12>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L9>:
  2e:	478d                	li	a5,3
  30:	00f107a3          	sb	a5,15(sp)
  34:	47a5                	li	a5,9
  36:	fe87e5e3          	bltu	a5,s0,20 <.L11>
			36: R_RISCV_BRANCH	.L11
  3a:	00000537          	lui	a0,0x0
			3a: R_RISCV_HI20	ble_ke_event_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	040a                	slli	s0,s0,0x2
  40:	00050513          	mv	a0,a0
			40: R_RISCV_LO12_I	ble_ke_event_env
			40: R_RISCV_RELAX	*ABS*
  44:	9522                	add	a0,a0,s0
  46:	c144                	sw	s1,4(a0)
  48:	000107a3          	sb	zero,15(sp)
  4c:	bfd1                	j	20 <.L11>
			4c: R_RISCV_RVC_JUMP	.L11

Disassembly of section .text._patch_ble_ke_event_set:

00000000 <_patch_ble_ke_event_set>:
   0:	300026f3          	csrr	a3,mstatus

00000004 <.LBB8>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE8>:
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	ble_ke_event_env
			8: R_RISCV_RELAX	*ABS*
   c:	4725                	li	a4,9
   e:	00078793          	mv	a5,a5
			e: R_RISCV_LO12_I	ble_ke_event_env
			e: R_RISCV_RELAX	*ABS*
  12:	00b76863          	bltu	a4,a1,22 <.L14>
			12: R_RISCV_BRANCH	.L14
  16:	4705                	li	a4,1
  18:	00b71733          	sll	a4,a4,a1
  1c:	438c                	lw	a1,0(a5)

0000001e <.LVL17>:
  1e:	8dd9                	or	a1,a1,a4
  20:	c38c                	sw	a1,0(a5)

00000022 <.L14>:
  22:	30069073          	csrw	mstatus,a3

00000026 <.LBE6>:
  26:	02c7c783          	lbu	a5,44(a5) # 2c <.LBE6+0x6>
  2a:	ef81                	bnez	a5,42 <.L17>
			2a: R_RISCV_RVC_BRANCH	.L17
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	ble_post_task_ptr
			2c: R_RISCV_RELAX	*ABS*
  30:	0007a783          	lw	a5,0(a5) # 0 <_patch_ble_ke_event_set>
			30: R_RISCV_LO12_I	ble_post_task_ptr
			30: R_RISCV_RELAX	*ABS*
  34:	1141                	addi	sp,sp,-16
  36:	c606                	sw	ra,12(sp)
  38:	9782                	jalr	a5

0000003a <.LVL18>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4505                	li	a0,1
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

00000042 <.L17>:
  42:	4505                	li	a0,1

00000044 <.LVL20>:
  44:	8082                	ret

Disassembly of section .text.ble_ke_event_set:

00000000 <ble_ke_event_set>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_set>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	4501                	li	a0,0

00000014 <.LVL22>:
  14:	9782                	jalr	a5

00000016 <.LVL23>:
  16:	ed1d                	bnez	a0,54 <.L20>
			16: R_RISCV_RVC_BRANCH	.L20

00000018 <.LBB10>:
  18:	30002773          	csrr	a4,mstatus

0000001c <.LBB11>:
  1c:	300477f3          	csrrci	a5,mstatus,8

00000020 <.LBE11>:
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	ble_ke_event_env
			20: R_RISCV_RELAX	*ABS*
  24:	46a5                	li	a3,9
  26:	00078793          	mv	a5,a5
			26: R_RISCV_LO12_I	ble_ke_event_env
			26: R_RISCV_RELAX	*ABS*
  2a:	0086e863          	bltu	a3,s0,3a <.L23>
			2a: R_RISCV_BRANCH	.L23
  2e:	4505                	li	a0,1
  30:	008515b3          	sll	a1,a0,s0
  34:	4388                	lw	a0,0(a5)
  36:	8d4d                	or	a0,a0,a1
  38:	c388                	sw	a0,0(a5)

0000003a <.L23>:
  3a:	30071073          	csrw	mstatus,a4

0000003e <.LBE9>:
  3e:	02c7c783          	lbu	a5,44(a5) # 2c <.LBE11+0xc>
  42:	eb89                	bnez	a5,54 <.L20>
			42: R_RISCV_RVC_BRANCH	.L20
  44:	4422                	lw	s0,8(sp)
  46:	000007b7          	lui	a5,0x0
			46: R_RISCV_HI20	ble_post_task_ptr
			46: R_RISCV_RELAX	*ABS*
  4a:	40b2                	lw	ra,12(sp)
  4c:	0007a303          	lw	t1,0(a5) # 0 <ble_ke_event_set>
			4c: R_RISCV_LO12_I	ble_post_task_ptr
			4c: R_RISCV_RELAX	*ABS*
  50:	0141                	addi	sp,sp,16
  52:	8302                	jr	t1

00000054 <.L20>:
  54:	40b2                	lw	ra,12(sp)
  56:	4422                	lw	s0,8(sp)
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

Disassembly of section .text._patch_ble_ke_event_clear:

00000000 <_patch_ble_ke_event_clear>:
   0:	300026f3          	csrr	a3,mstatus

00000004 <.LBB14>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE14>:
   8:	47a5                	li	a5,9
   a:	00b7ee63          	bltu	a5,a1,26 <.L27>
			a: R_RISCV_BRANCH	.L27
   e:	00000737          	lui	a4,0x0
			e: R_RISCV_HI20	ble_ke_event_env
			e: R_RISCV_RELAX	*ABS*
  12:	00070713          	mv	a4,a4
			12: R_RISCV_LO12_I	ble_ke_event_env
			12: R_RISCV_RELAX	*ABS*
  16:	4785                	li	a5,1
  18:	00b797b3          	sll	a5,a5,a1
  1c:	430c                	lw	a1,0(a4)

0000001e <.LVL30>:
  1e:	fff7c793          	not	a5,a5
  22:	8fed                	and	a5,a5,a1
  24:	c31c                	sw	a5,0(a4)

00000026 <.L27>:
  26:	30069073          	csrw	mstatus,a3

0000002a <.LBE12>:
  2a:	4505                	li	a0,1

0000002c <.LVL31>:
  2c:	8082                	ret

Disassembly of section .text.ble_ke_event_clear:

00000000 <ble_ke_event_clear>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_clear>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	4501                	li	a0,0

00000014 <.LVL33>:
  14:	9782                	jalr	a5

00000016 <.LVL34>:
  16:	e515                	bnez	a0,42 <.L28>
			16: R_RISCV_RVC_BRANCH	.L28

00000018 <.LBB15>:
  18:	30002773          	csrr	a4,mstatus

0000001c <.LBB17>:
  1c:	300477f3          	csrrci	a5,mstatus,8

00000020 <.LBE17>:
  20:	47a5                	li	a5,9
  22:	0087ee63          	bltu	a5,s0,3e <.L30>
			22: R_RISCV_BRANCH	.L30
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	ble_ke_event_env
			26: R_RISCV_RELAX	*ABS*
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	ble_ke_event_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	4394                	lw	a3,0(a5)
  30:	4505                	li	a0,1
  32:	00851533          	sll	a0,a0,s0
  36:	fff54513          	not	a0,a0
  3a:	8d75                	and	a0,a0,a3
  3c:	c388                	sw	a0,0(a5)

0000003e <.L30>:
  3e:	30071073          	csrw	mstatus,a4

00000042 <.L28>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)
  46:	0141                	addi	sp,sp,16
  48:	8082                	ret

Disassembly of section .text.ble_ke_event_get:

00000000 <ble_ke_event_get>:
   0:	30002773          	csrr	a4,mstatus

00000004 <.LBB20>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE20>:
   8:	47a5                	li	a5,9
   a:	00a7ec63          	bltu	a5,a0,22 <.L34>
			a: R_RISCV_BRANCH	.L34
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	ble_ke_event_env
			e: R_RISCV_RELAX	*ABS*
  12:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_get>
			12: R_RISCV_LO12_I	ble_ke_event_env
			12: R_RISCV_RELAX	*ABS*
  16:	00a7d533          	srl	a0,a5,a0

0000001a <.LVL41>:
  1a:	8905                	andi	a0,a0,1

0000001c <.L33>:
  1c:	30071073          	csrw	mstatus,a4

00000020 <.LBE18>:
  20:	8082                	ret

00000022 <.L34>:
  22:	4501                	li	a0,0

00000024 <.LVL44>:
  24:	bfe5                	j	1c <.L33>
			24: R_RISCV_RVC_JUMP	.L33

Disassembly of section .text._patch_ble_ke_event_get_all:

00000000 <_patch_ble_ke_event_get_all>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_ke_event_env
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <_patch_ble_ke_event_get_all>
			4: R_RISCV_LO12_I	ble_ke_event_env
			4: R_RISCV_RELAX	*ABS*
   8:	c11c                	sw	a5,0(a0)
   a:	4505                	li	a0,1

0000000c <.LVL46>:
   c:	8082                	ret

Disassembly of section .text.ble_ke_event_get_all:

00000000 <ble_ke_event_get_all>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_get_all>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	0068                	addi	a0,sp,12
   e:	9782                	jalr	a5

00000010 <.LVL47>:
  10:	c509                	beqz	a0,1a <.L37>
			10: R_RISCV_RVC_BRANCH	.L37
  12:	4532                	lw	a0,12(sp)

00000014 <.L36>:
  14:	40f2                	lw	ra,28(sp)
  16:	6105                	addi	sp,sp,32
  18:	8082                	ret

0000001a <.L37>:
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	ble_ke_event_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	0007a503          	lw	a0,0(a5) # 0 <ble_ke_event_get_all>
			1e: R_RISCV_LO12_I	ble_ke_event_env
			1e: R_RISCV_RELAX	*ABS*
  22:	bfcd                	j	14 <.L36>
			22: R_RISCV_RVC_JUMP	.L36

Disassembly of section .text._patch_ble_ke_event_flush:

00000000 <_patch_ble_ke_event_flush>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_ke_event_env
			0: R_RISCV_RELAX	*ABS*
   4:	0007a023          	sw	zero,0(a5) # 0 <_patch_ble_ke_event_flush>
			4: R_RISCV_LO12_S	ble_ke_event_env
			4: R_RISCV_RELAX	*ABS*
   8:	4505                	li	a0,1

0000000a <.LVL49>:
   a:	8082                	ret

Disassembly of section .text.ble_ke_event_flush:

00000000 <ble_ke_event_flush>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_flush>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	4501                	li	a0,0
   e:	9782                	jalr	a5

00000010 <.LVL50>:
  10:	e509                	bnez	a0,1a <.L41>
			10: R_RISCV_RVC_BRANCH	.L41
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	ble_ke_event_env
			12: R_RISCV_RELAX	*ABS*
  16:	0007a023          	sw	zero,0(a5) # 0 <ble_ke_event_flush>
			16: R_RISCV_LO12_S	ble_ke_event_env
			16: R_RISCV_RELAX	*ABS*

0000001a <.L41>:
  1a:	40b2                	lw	ra,12(sp)
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

Disassembly of section .text._patch_ble_ke_event_schedule:

00000000 <_patch_ble_ke_event_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	ble_ke_event_env
			4: R_RISCV_RELAX	*ABS*
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	00042703          	lw	a4,0(s0) # 0 <_patch_ble_ke_event_schedule>
			10: R_RISCV_LO12_I	ble_ke_event_env
			10: R_RISCV_RELAX	*ABS*

00000014 <.LVL52>:
  14:	ce06                	sw	ra,28(sp)
  16:	00040413          	mv	s0,s0
			16: R_RISCV_LO12_I	ble_ke_event_env
			16: R_RISCV_RELAX	*ABS*
  1a:	4485                	li	s1,1

0000001c <.LBB21>:
  1c:	80000937          	lui	s2,0x80000
  20:	02000993          	li	s3,32

00000024 <.LBE21>:
  24:	4a7d                	li	s4,31

00000026 <.L45>:
  26:	ef01                	bnez	a4,3e <.L49>
			26: R_RISCV_RVC_BRANCH	.L49
  28:	02040623          	sb	zero,44(s0)
  2c:	40f2                	lw	ra,28(sp)
  2e:	4462                	lw	s0,24(sp)
  30:	44d2                	lw	s1,20(sp)
  32:	4942                	lw	s2,16(sp)
  34:	49b2                	lw	s3,12(sp)
  36:	4a22                	lw	s4,8(sp)
  38:	4505                	li	a0,1
  3a:	6105                	addi	sp,sp,32
  3c:	8082                	ret

0000003e <.L49>:
  3e:	02940623          	sb	s1,44(s0)

00000042 <.LBB24>:
  42:	4781                	li	a5,0

00000044 <.L47>:
  44:	00f956b3          	srl	a3,s2,a5
  48:	8ef9                	and	a3,a3,a4
  4a:	e681                	bnez	a3,52 <.L46>
			4a: R_RISCV_RVC_BRANCH	.L46
  4c:	0785                	addi	a5,a5,1
  4e:	ff379be3          	bne	a5,s3,44 <.L47>
			4e: R_RISCV_BRANCH	.L47

00000052 <.L46>:
  52:	40fa07b3          	sub	a5,s4,a5

00000056 <.LVL58>:
  56:	0ff7f793          	andi	a5,a5,255
  5a:	078a                	slli	a5,a5,0x2
  5c:	97a2                	add	a5,a5,s0
  5e:	43dc                	lw	a5,4(a5)
  60:	c391                	beqz	a5,64 <.L48>
			60: R_RISCV_RVC_BRANCH	.L48
  62:	9782                	jalr	a5

00000064 <.L48>:
  64:	4018                	lw	a4,0(s0)

00000066 <.LVL60>:
  66:	b7c1                	j	26 <.L45>
			66: R_RISCV_RVC_JUMP	.L45

Disassembly of section .text.ble_ke_event_schedule:

00000000 <ble_ke_event_schedule>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_event_schedule>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	c256                	sw	s5,4(sp)
  18:	4501                	li	a0,0
  1a:	9782                	jalr	a5

0000001c <.LVL61>:
  1c:	e115                	bnez	a0,40 <.L55>
			1c: R_RISCV_RVC_BRANCH	.L55
  1e:	000004b7          	lui	s1,0x0
			1e: R_RISCV_HI20	ble_ke_event_env
			1e: R_RISCV_RELAX	*ABS*
  22:	4905                	li	s2,1

00000024 <.LBB25>:
  24:	800009b7          	lui	s3,0x80000
  28:	02000a13          	li	s4,32

0000002c <.LBE25>:
  2c:	4afd                	li	s5,31

0000002e <.L57>:
  2e:	0004a703          	lw	a4,0(s1) # 0 <ble_ke_event_schedule>
			2e: R_RISCV_LO12_I	ble_ke_event_env
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL62>:
  32:	00048413          	mv	s0,s1
			32: R_RISCV_LO12_I	ble_ke_event_env
			32: R_RISCV_RELAX	*ABS*

00000036 <.L58>:
  36:	ef11                	bnez	a4,52 <.L62>
			36: R_RISCV_RVC_BRANCH	.L62
  38:	401c                	lw	a5,0(s0)
  3a:	02040623          	sb	zero,44(s0)
  3e:	fbe5                	bnez	a5,2e <.L57>
			3e: R_RISCV_RVC_BRANCH	.L57

00000040 <.L55>:
  40:	40f2                	lw	ra,28(sp)
  42:	4462                	lw	s0,24(sp)
  44:	44d2                	lw	s1,20(sp)
  46:	4942                	lw	s2,16(sp)
  48:	49b2                	lw	s3,12(sp)
  4a:	4a22                	lw	s4,8(sp)
  4c:	4a92                	lw	s5,4(sp)
  4e:	6105                	addi	sp,sp,32
  50:	8082                	ret

00000052 <.L62>:
  52:	03240623          	sb	s2,44(s0)

00000056 <.LBB28>:
  56:	4781                	li	a5,0

00000058 <.L60>:
  58:	00f9d6b3          	srl	a3,s3,a5
  5c:	8ef9                	and	a3,a3,a4
  5e:	e681                	bnez	a3,66 <.L59>
			5e: R_RISCV_RVC_BRANCH	.L59
  60:	0785                	addi	a5,a5,1
  62:	ff479be3          	bne	a5,s4,58 <.L60>
			62: R_RISCV_BRANCH	.L60

00000066 <.L59>:
  66:	40fa87b3          	sub	a5,s5,a5

0000006a <.LVL69>:
  6a:	0ff7f793          	andi	a5,a5,255
  6e:	078a                	slli	a5,a5,0x2
  70:	97a2                	add	a5,a5,s0
  72:	43dc                	lw	a5,4(a5)
  74:	c391                	beqz	a5,78 <.L61>
			74: R_RISCV_RVC_BRANCH	.L61
  76:	9782                	jalr	a5

00000078 <.L61>:
  78:	4018                	lw	a4,0(s0)

0000007a <.LVL71>:
  7a:	bf75                	j	36 <.L58>
			7a: R_RISCV_RVC_JUMP	.L58
