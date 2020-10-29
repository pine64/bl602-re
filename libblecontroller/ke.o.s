
libblecontroller/ke.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_ke_init:

00000000 <_patch_ble_ke_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	00042783          	lw	a5,0(s0) # 0 <_patch_ble_ke_init>
			8: R_RISCV_LO12_I	ble_memset_ptr
			8: R_RISCV_RELAX	*ABS*
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	ble_ke_env+0x18
			c: R_RISCV_RELAX	*ABS*+0x18

00000010 <.LVL1>:
  10:	c606                	sw	ra,12(sp)
  12:	4621                	li	a2,8
  14:	4581                	li	a1,0
  16:	01850513          	addi	a0,a0,24 # 18 <.LVL1+0x8>
			16: R_RISCV_LO12_I	ble_ke_env+0x18
			16: R_RISCV_RELAX	*ABS*+0x18
  1a:	9782                	jalr	a5

0000001c <.LVL2>:
  1c:	00042783          	lw	a5,0(s0)
			1c: R_RISCV_LO12_I	ble_memset_ptr
			1c: R_RISCV_RELAX	*ABS*
  20:	00000537          	lui	a0,0x0
			20: R_RISCV_HI20	ble_ke_env+0x20
			20: R_RISCV_RELAX	*ABS*+0x20
  24:	4611                	li	a2,4
  26:	4581                	li	a1,0
  28:	02050513          	addi	a0,a0,32 # 20 <.LVL2+0x4>
			28: R_RISCV_LO12_I	ble_ke_env+0x20
			28: R_RISCV_RELAX	*ABS*+0x20
  2c:	9782                	jalr	a5

0000002e <.LVL3>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ble_ke_event_init
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL3>

00000036 <.LVL4>:
  36:	000007b7          	lui	a5,0x0
			36: R_RISCV_HI20	ble_ke_env
			36: R_RISCV_RELAX	*ABS*
  3a:	00078793          	mv	a5,a5
			3a: R_RISCV_LO12_I	ble_ke_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	0007a423          	sw	zero,8(a5) # 8 <_patch_ble_ke_init+0x8>
  42:	0007a623          	sw	zero,12(a5)
  46:	0007a023          	sw	zero,0(a5)
  4a:	0007a223          	sw	zero,4(a5)
  4e:	0007a823          	sw	zero,16(a5)
  52:	0007aa23          	sw	zero,20(a5)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ble_ke_task_init
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL4+0x20>

0000005e <.LVL5>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	ble_ke_timer_init
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL5>

00000066 <.LVL6>:
  66:	40b2                	lw	ra,12(sp)
  68:	4422                	lw	s0,8(sp)
  6a:	4505                	li	a0,1
  6c:	0141                	addi	sp,sp,16
  6e:	8082                	ret

Disassembly of section .text.ble_ke_init:

00000000 <ble_ke_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_init>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	4501                	li	a0,0
  10:	9782                	jalr	a5

00000012 <.LVL7>:
  12:	e525                	bnez	a0,7a <.L3>
			12: R_RISCV_RVC_BRANCH	.L3
  14:	00000437          	lui	s0,0x0
			14: R_RISCV_HI20	ble_memset_ptr
			14: R_RISCV_RELAX	*ABS*
  18:	00042783          	lw	a5,0(s0) # 0 <ble_ke_init>
			18: R_RISCV_LO12_I	ble_memset_ptr
			18: R_RISCV_RELAX	*ABS*
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	ble_ke_env+0x18
			1c: R_RISCV_RELAX	*ABS*+0x18
  20:	4621                	li	a2,8
  22:	4581                	li	a1,0
  24:	01850513          	addi	a0,a0,24 # 18 <.LVL7+0x6>
			24: R_RISCV_LO12_I	ble_ke_env+0x18
			24: R_RISCV_RELAX	*ABS*+0x18
  28:	9782                	jalr	a5

0000002a <.LVL8>:
  2a:	00042783          	lw	a5,0(s0)
			2a: R_RISCV_LO12_I	ble_memset_ptr
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	ble_ke_env+0x20
			2e: R_RISCV_RELAX	*ABS*+0x20
  32:	4611                	li	a2,4
  34:	4581                	li	a1,0
  36:	02050513          	addi	a0,a0,32 # 20 <.LVL7+0xe>
			36: R_RISCV_LO12_I	ble_ke_env+0x20
			36: R_RISCV_RELAX	*ABS*+0x20
  3a:	9782                	jalr	a5

0000003c <.LVL9>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ble_ke_event_init
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL9>

00000044 <.LVL10>:
  44:	000007b7          	lui	a5,0x0
			44: R_RISCV_HI20	ble_ke_env
			44: R_RISCV_RELAX	*ABS*
  48:	00078793          	mv	a5,a5
			48: R_RISCV_LO12_I	ble_ke_env
			48: R_RISCV_RELAX	*ABS*
  4c:	0007a423          	sw	zero,8(a5) # 8 <ble_ke_init+0x8>
  50:	0007a623          	sw	zero,12(a5)
  54:	0007a023          	sw	zero,0(a5)
  58:	0007a223          	sw	zero,4(a5)
  5c:	0007a823          	sw	zero,16(a5)
  60:	0007aa23          	sw	zero,20(a5)
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	ble_ke_task_init
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL10+0x20>

0000006c <.LVL11>:
  6c:	4422                	lw	s0,8(sp)
  6e:	40b2                	lw	ra,12(sp)
  70:	0141                	addi	sp,sp,16
  72:	00000317          	auipc	t1,0x0
			72: R_RISCV_CALL	ble_ke_timer_init
			72: R_RISCV_RELAX	*ABS*
  76:	00030067          	jr	t1 # 72 <.LVL11+0x6>

0000007a <.L3>:
  7a:	40b2                	lw	ra,12(sp)
  7c:	4422                	lw	s0,8(sp)
  7e:	0141                	addi	sp,sp,16
  80:	8082                	ret

Disassembly of section .text._patch_ble_ke_flush:

00000000 <_patch_ble_ke_flush>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB20>:
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	ble_ke_env
			6: R_RISCV_RELAX	*ABS*

0000000a <.L8>:
   a:	00040513          	mv	a0,s0
			a: R_RISCV_LO12_I	ble_ke_env
			a: R_RISCV_RELAX	*ABS*
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ble_co_list_pop_front
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.L8+0x4>

00000016 <.LBE24>:
  16:	e905                	bnez	a0,46 <.L13>
			16: R_RISCV_RVC_BRANCH	.L13

00000018 <.LBB26>:
  18:	00000437          	lui	s0,0x0
			18: R_RISCV_HI20	ble_ke_env+0x8
			18: R_RISCV_RELAX	*ABS*+0x8

0000001c <.L7>:
  1c:	00840513          	addi	a0,s0,8 # 8 <.LBB20+0x2>
			1c: R_RISCV_LO12_I	ble_ke_env+0x8
			1c: R_RISCV_RELAX	*ABS*+0x8
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ble_co_list_pop_front
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L7+0x4>

00000028 <.LBE30>:
  28:	e505                	bnez	a0,50 <.L14>
			28: R_RISCV_RVC_BRANCH	.L14

0000002a <.LBB32>:
  2a:	00000437          	lui	s0,0x0
			2a: R_RISCV_HI20	ble_ke_env+0x10
			2a: R_RISCV_RELAX	*ABS*+0x10

0000002e <.L9>:
  2e:	01040513          	addi	a0,s0,16 # 10 <.L8+0x6>
			2e: R_RISCV_LO12_I	ble_ke_env+0x10
			2e: R_RISCV_RELAX	*ABS*+0x10
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	ble_co_list_pop_front
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.L9+0x4>

0000003a <.LBE36>:
  3a:	c105                	beqz	a0,5a <.L10>
			3a: R_RISCV_RVC_BRANCH	.L10
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ble_ke_free
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBE36+0x2>

00000044 <.LBE37>:
  44:	b7ed                	j	2e <.L9>
			44: R_RISCV_RVC_JUMP	.L9

00000046 <.L13>:
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	ble_ke_msg_free
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L13>

0000004e <.LBE38>:
  4e:	bf75                	j	a <.L8>
			4e: R_RISCV_RVC_JUMP	.L8

00000050 <.L14>:
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ble_ke_msg_free
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.L14>

00000058 <.LBE39>:
  58:	b7d1                	j	1c <.L7>
			58: R_RISCV_RVC_JUMP	.L7

0000005a <.L10>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	ble_ke_event_flush
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.L10>

00000062 <.LVL26>:
  62:	40b2                	lw	ra,12(sp)
  64:	4422                	lw	s0,8(sp)
  66:	4505                	li	a0,1
  68:	0141                	addi	sp,sp,16
  6a:	8082                	ret

Disassembly of section .text.ble_ke_flush:

00000000 <ble_ke_flush>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_flush>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	4501                	li	a0,0
  10:	9782                	jalr	a5

00000012 <.LVL27>:
  12:	e135                	bnez	a0,76 <.L16>
			12: R_RISCV_RVC_BRANCH	.L16

00000014 <.LBB40>:
  14:	00000437          	lui	s0,0x0
			14: R_RISCV_HI20	ble_ke_env
			14: R_RISCV_RELAX	*ABS*

00000018 <.L19>:
  18:	00040513          	mv	a0,s0
			18: R_RISCV_LO12_I	ble_ke_env
			18: R_RISCV_RELAX	*ABS*
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_co_list_pop_front
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.L19+0x4>

00000024 <.LBE44>:
  24:	e905                	bnez	a0,54 <.L24>
			24: R_RISCV_RVC_BRANCH	.L24

00000026 <.LBB46>:
  26:	00000437          	lui	s0,0x0
			26: R_RISCV_HI20	ble_ke_env+0x8
			26: R_RISCV_RELAX	*ABS*+0x8

0000002a <.L18>:
  2a:	00840513          	addi	a0,s0,8 # 8 <ble_ke_flush+0x8>
			2a: R_RISCV_LO12_I	ble_ke_env+0x8
			2a: R_RISCV_RELAX	*ABS*+0x8
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ble_co_list_pop_front
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.L18+0x4>

00000036 <.LBE50>:
  36:	e505                	bnez	a0,5e <.L25>
			36: R_RISCV_RVC_BRANCH	.L25

00000038 <.LBB52>:
  38:	00000437          	lui	s0,0x0
			38: R_RISCV_HI20	ble_ke_env+0x10
			38: R_RISCV_RELAX	*ABS*+0x10

0000003c <.L20>:
  3c:	01040513          	addi	a0,s0,16 # 10 <ble_ke_flush+0x10>
			3c: R_RISCV_LO12_I	ble_ke_env+0x10
			3c: R_RISCV_RELAX	*ABS*+0x10
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	ble_co_list_pop_front
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.L20+0x4>

00000048 <.LBE56>:
  48:	c105                	beqz	a0,68 <.L21>
			48: R_RISCV_RVC_BRANCH	.L21
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ble_ke_free
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LBE56+0x2>

00000052 <.LBE57>:
  52:	b7ed                	j	3c <.L20>
			52: R_RISCV_RVC_JUMP	.L20

00000054 <.L24>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	ble_ke_msg_free
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.L24>

0000005c <.LBE58>:
  5c:	bf75                	j	18 <.L19>
			5c: R_RISCV_RVC_JUMP	.L19

0000005e <.L25>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	ble_ke_msg_free
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.L25>

00000066 <.LBE59>:
  66:	b7d1                	j	2a <.L18>
			66: R_RISCV_RVC_JUMP	.L18

00000068 <.L21>:
  68:	4422                	lw	s0,8(sp)
  6a:	40b2                	lw	ra,12(sp)
  6c:	0141                	addi	sp,sp,16
  6e:	00000317          	auipc	t1,0x0
			6e: R_RISCV_CALL	ble_ke_event_flush
			6e: R_RISCV_RELAX	*ABS*
  72:	00030067          	jr	t1 # 6e <.L21+0x6>

00000076 <.L16>:
  76:	40b2                	lw	ra,12(sp)
  78:	4422                	lw	s0,8(sp)
  7a:	0141                	addi	sp,sp,16
  7c:	8082                	ret

Disassembly of section .text._patch_ble_ke_sleep_check:

00000000 <_patch_ble_ke_sleep_check>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0

00000008 <.LVL42>:
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ble_ke_event_get_all
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL42>

00000010 <.LVL43>:
  10:	00153513          	seqz	a0,a0
  14:	00a40023          	sb	a0,0(s0)
  18:	40b2                	lw	ra,12(sp)
  1a:	4422                	lw	s0,8(sp)

0000001c <.LVL44>:
  1c:	4505                	li	a0,1
  1e:	0141                	addi	sp,sp,16
  20:	8082                	ret

Disassembly of section .text.ble_ke_sleep_check:

00000000 <ble_ke_sleep_check>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_sleep_check>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	00f10513          	addi	a0,sp,15
  10:	9782                	jalr	a5

00000012 <.LVL45>:
  12:	c511                	beqz	a0,1e <.L30>
			12: R_RISCV_RVC_BRANCH	.L30
  14:	00f14503          	lbu	a0,15(sp)

00000018 <.L31>:
  18:	40f2                	lw	ra,28(sp)
  1a:	6105                	addi	sp,sp,32
  1c:	8082                	ret

0000001e <.L30>:
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ble_ke_event_get_all
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.L30>

00000026 <.LVL46>:
  26:	00153513          	seqz	a0,a0
  2a:	b7fd                	j	18 <.L31>
			2a: R_RISCV_RVC_JUMP	.L31
