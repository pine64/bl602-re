
libblecontroller/ke_task.o:     file format elf32-littleriscv


Disassembly of section .text.ble_cmp_dest_id:

00000000 <ble_cmp_dest_id>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_cmp_dest_id>
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

00000018 <.LVL1>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL2>:
  1c:	9782                	jalr	a5

0000001e <.LVL3>:
  1e:	c901                	beqz	a0,2e <.L2>
			1e: R_RISCV_RVC_BRANCH	.L2
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L3>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL4>:
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL5>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L2>:
  2e:	0064d503          	lhu	a0,6(s1)
  32:	8d01                	sub	a0,a0,s0
  34:	00153513          	seqz	a0,a0
  38:	b7f5                	j	24 <.L3>
			38: R_RISCV_RVC_JUMP	.L3

Disassembly of section .text._patch_ble_cmp_dest_id:

00000000 <_patch_ble_cmp_dest_id>:
   0:	0065d783          	lhu	a5,6(a1)
   4:	40c78633          	sub	a2,a5,a2

00000008 <.LVL8>:
   8:	00163613          	seqz	a2,a2
   c:	00c50023          	sb	a2,0(a0)
  10:	4505                	li	a0,1

00000012 <.LVL9>:
  12:	8082                	ret

Disassembly of section .text._patch_ble_ke_task_saved_update:

00000000 <_patch_ble_ke_task_saved_update>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	892e                	mv	s2,a1
  10:	000009b7          	lui	s3,0x0
			10: R_RISCV_HI20	ble_cmp_dest_id
			10: R_RISCV_RELAX	*ABS*
  14:	00000a37          	lui	s4,0x0
			14: R_RISCV_HI20	ble_ke_env+0x8
			14: R_RISCV_RELAX	*ABS*+0x8

00000018 <.LBB67>:
  18:	000004b7          	lui	s1,0x0
			18: R_RISCV_HI20	ble_ke_env
			18: R_RISCV_RELAX	*ABS*

0000001c <.L8>:
  1c:	00098593          	mv	a1,s3
			1c: R_RISCV_LO12_I	ble_cmp_dest_id
			1c: R_RISCV_RELAX	*ABS*
  20:	864a                	mv	a2,s2
  22:	008a0513          	addi	a0,s4,8 # 8 <_patch_ble_ke_task_saved_update+0x8>
			22: R_RISCV_LO12_I	ble_ke_env+0x8
			22: R_RISCV_RELAX	*ABS*+0x8
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_queue_extract
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.L8+0xa>

0000002e <.LVL12>:
  2e:	85aa                	mv	a1,a0

00000030 <.LVL13>:
  30:	c11d                	beqz	a0,56 <.L7>
			30: R_RISCV_RVC_BRANCH	.L7

00000032 <.LBB71>:
  32:	30002473          	csrr	s0,mstatus

00000036 <.LBB72>:
  36:	300477f3          	csrrci	a5,mstatus,8

0000003a <.LBB73>:
  3a:	00048513          	mv	a0,s1
			3a: R_RISCV_LO12_I	ble_ke_env
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LVL16>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	ble_co_list_push_back
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL16>

00000046 <.LBE73>:
  46:	30041073          	csrw	mstatus,s0

0000004a <.LBE74>:
  4a:	4509                	li	a0,2
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	ble_ke_event_set
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LBE74+0x2>

00000054 <.LVL18>:
  54:	b7e1                	j	1c <.L8>
			54: R_RISCV_RVC_JUMP	.L8

00000056 <.L7>:
  56:	40f2                	lw	ra,28(sp)
  58:	4462                	lw	s0,24(sp)
  5a:	44d2                	lw	s1,20(sp)
  5c:	4942                	lw	s2,16(sp)
  5e:	49b2                	lw	s3,12(sp)
  60:	4a22                	lw	s4,8(sp)
  62:	4505                	li	a0,1

00000064 <.LVL20>:
  64:	6105                	addi	sp,sp,32
  66:	8082                	ret

Disassembly of section .text.ble_ke_task_saved_update:

00000000 <ble_ke_task_saved_update>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_saved_update>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	842a                	mv	s0,a0
  18:	85aa                	mv	a1,a0
  1a:	4501                	li	a0,0

0000001c <.LVL22>:
  1c:	9782                	jalr	a5

0000001e <.LVL23>:
  1e:	e521                	bnez	a0,66 <.L10>
			1e: R_RISCV_RVC_BRANCH	.L10

00000020 <.LBB82>:
  20:	000009b7          	lui	s3,0x0
			20: R_RISCV_HI20	ble_cmp_dest_id
			20: R_RISCV_RELAX	*ABS*
  24:	00000a37          	lui	s4,0x0
			24: R_RISCV_HI20	ble_ke_env+0x8
			24: R_RISCV_RELAX	*ABS*+0x8

00000028 <.LBB84>:
  28:	00000937          	lui	s2,0x0
			28: R_RISCV_HI20	ble_ke_env
			28: R_RISCV_RELAX	*ABS*

0000002c <.L12>:
  2c:	00098593          	mv	a1,s3
			2c: R_RISCV_LO12_I	ble_cmp_dest_id
			2c: R_RISCV_RELAX	*ABS*
  30:	8622                	mv	a2,s0
  32:	008a0513          	addi	a0,s4,8 # 8 <ble_ke_task_saved_update+0x8>
			32: R_RISCV_LO12_I	ble_ke_env+0x8
			32: R_RISCV_RELAX	*ABS*+0x8
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	ble_ke_queue_extract
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.L12+0xa>

0000003e <.LVL24>:
  3e:	85aa                	mv	a1,a0

00000040 <.LVL25>:
  40:	c11d                	beqz	a0,66 <.L10>
			40: R_RISCV_RVC_BRANCH	.L10

00000042 <.LBB88>:
  42:	300024f3          	csrr	s1,mstatus

00000046 <.LBB89>:
  46:	300477f3          	csrrci	a5,mstatus,8

0000004a <.LBB90>:
  4a:	00090513          	mv	a0,s2
			4a: R_RISCV_LO12_I	ble_ke_env
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL28>:
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ble_co_list_push_back
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL28>

00000056 <.LBE90>:
  56:	30049073          	csrw	mstatus,s1

0000005a <.LBE91>:
  5a:	4509                	li	a0,2
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	ble_ke_event_set
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.LBE91+0x2>

00000064 <.LVL30>:
  64:	b7e1                	j	2c <.L12>
			64: R_RISCV_RVC_JUMP	.L12

00000066 <.L10>:
  66:	40f2                	lw	ra,28(sp)
  68:	4462                	lw	s0,24(sp)
  6a:	44d2                	lw	s1,20(sp)
  6c:	4942                	lw	s2,16(sp)
  6e:	49b2                	lw	s3,12(sp)
  70:	4a22                	lw	s4,8(sp)
  72:	6105                	addi	sp,sp,32
  74:	8082                	ret

Disassembly of section .text._patch_ble_ke_handler_search:

00000000 <_patch_ble_ke_handler_search>:
   0:	00465783          	lhu	a5,4(a2)
   4:	6841                	lui	a6,0x10
   6:	58fd                	li	a7,-1
   8:	17fd                	addi	a5,a5,-1

0000000a <.LVL33>:
   a:	187d                	addi	a6,a6,-1

0000000c <.L18>:
   c:	01179563          	bne	a5,a7,16 <.L22>
			c: R_RISCV_BRANCH	.L22

00000010 <.LBE92>:
  10:	00052023          	sw	zero,0(a0)
  14:	a819                	j	2a <.L20>
			14: R_RISCV_RVC_JUMP	.L20

00000016 <.L22>:
  16:	4214                	lw	a3,0(a2)
  18:	00379713          	slli	a4,a5,0x3
  1c:	9736                	add	a4,a4,a3
  1e:	00075683          	lhu	a3,0(a4)
  22:	00b69663          	bne	a3,a1,2e <.L19>
			22: R_RISCV_BRANCH	.L19

00000026 <.L21>:
  26:	435c                	lw	a5,4(a4)

00000028 <.LVL34>:
  28:	c11c                	sw	a5,0(a0)

0000002a <.L20>:
  2a:	4505                	li	a0,1

0000002c <.LVL35>:
  2c:	8082                	ret

0000002e <.L19>:
  2e:	ff068ce3          	beq	a3,a6,26 <.L21>
			2e: R_RISCV_BRANCH	.L21
  32:	17fd                	addi	a5,a5,-1
  34:	bfe1                	j	c <.L18>
			34: R_RISCV_RVC_JUMP	.L18

Disassembly of section .text.ble_ke_handler_search:

00000000 <ble_ke_handler_search>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_handler_search>
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

00000018 <.LVL39>:
  18:	0068                	addi	a0,sp,12

0000001a <.LVL40>:
  1a:	9782                	jalr	a5

0000001c <.LVL41>:
  1c:	c519                	beqz	a0,2a <.L24>
			1c: R_RISCV_RVC_BRANCH	.L24
  1e:	4532                	lw	a0,12(sp)

00000020 <.L23>:
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)

00000024 <.LVL42>:
  24:	44d2                	lw	s1,20(sp)
  26:	6105                	addi	sp,sp,32
  28:	8082                	ret

0000002a <.L24>:
  2a:	00445783          	lhu	a5,4(s0)
  2e:	6641                	lui	a2,0x10
  30:	55fd                	li	a1,-1
  32:	17fd                	addi	a5,a5,-1
  34:	167d                	addi	a2,a2,-1

00000036 <.L26>:
  36:	00b79463          	bne	a5,a1,3e <.L29>
			36: R_RISCV_BRANCH	.L29

0000003a <.LBE100>:
  3a:	4501                	li	a0,0
  3c:	b7d5                	j	20 <.L23>
			3c: R_RISCV_RVC_JUMP	.L23

0000003e <.L29>:
  3e:	4014                	lw	a3,0(s0)
  40:	00379713          	slli	a4,a5,0x3
  44:	9736                	add	a4,a4,a3
  46:	00075683          	lhu	a3,0(a4)
  4a:	00d49463          	bne	s1,a3,52 <.L27>
			4a: R_RISCV_BRANCH	.L27

0000004e <.L28>:
  4e:	4348                	lw	a0,4(a4)
  50:	bfc1                	j	20 <.L23>
			50: R_RISCV_RVC_JUMP	.L23

00000052 <.L27>:
  52:	fec68ee3          	beq	a3,a2,4e <.L28>
			52: R_RISCV_BRANCH	.L28
  56:	17fd                	addi	a5,a5,-1
  58:	bff9                	j	36 <.L26>
			58: R_RISCV_RVC_JUMP	.L26

Disassembly of section .text._patch_ble_ke_task_handler_get:

00000000 <_patch_ble_ke_task_handler_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_ke_task_env
			0: R_RISCV_RELAX	*ABS*
   4:	0ff67713          	andi	a4,a2,255
   8:	1141                	addi	sp,sp,-16
   a:	070a                	slli	a4,a4,0x2
   c:	00078793          	mv	a5,a5
			c: R_RISCV_LO12_I	ble_ke_task_env
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	c226                	sw	s1,4(sp)
  16:	c04a                	sw	s2,0(sp)
  18:	97ba                	add	a5,a5,a4
  1a:	0007a903          	lw	s2,0(a5) # 0 <_patch_ble_ke_task_handler_get>

0000001e <.LVL47>:
  1e:	00e95783          	lhu	a5,14(s2) # e <_patch_ble_ke_task_handler_get+0xe>
  22:	c3a9                	beqz	a5,64 <.L33>
			22: R_RISCV_RVC_BRANCH	.L33
  24:	8221                	srli	a2,a2,0x8

00000026 <.LVL48>:
  26:	02f67f63          	bgeu	a2,a5,64 <.L33>
			26: R_RISCV_BRANCH	.L33
  2a:	84ae                	mv	s1,a1
  2c:	00092583          	lw	a1,0(s2)

00000030 <.LVL49>:
  30:	842a                	mv	s0,a0
  32:	cd91                	beqz	a1,4e <.L35>
			32: R_RISCV_RVC_BRANCH	.L35
  34:	00892783          	lw	a5,8(s2)
  38:	8526                	mv	a0,s1

0000003a <.LVL50>:
  3a:	963e                	add	a2,a2,a5
  3c:	00064783          	lbu	a5,0(a2) # 10000 <.LLST38+0xf2e1>
  40:	078e                	slli	a5,a5,0x3
  42:	95be                	add	a1,a1,a5
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ble_ke_handler_search
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL50+0xa>

0000004c <.LVL51>:
  4c:	c008                	sw	a0,0(s0)

0000004e <.L35>:
  4e:	401c                	lw	a5,0(s0)
  50:	eb91                	bnez	a5,64 <.L33>
			50: R_RISCV_RVC_BRANCH	.L33
  52:	00492583          	lw	a1,4(s2)
  56:	c599                	beqz	a1,64 <.L33>
			56: R_RISCV_RVC_BRANCH	.L33
  58:	8526                	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	ble_ke_handler_search
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.L35+0xc>

00000062 <.LVL52>:
  62:	c008                	sw	a0,0(s0)

00000064 <.L33>:
  64:	40b2                	lw	ra,12(sp)
  66:	4422                	lw	s0,8(sp)
  68:	4492                	lw	s1,4(sp)
  6a:	4902                	lw	s2,0(sp)

0000006c <.LVL54>:
  6c:	4505                	li	a0,1
  6e:	0141                	addi	sp,sp,16
  70:	8082                	ret

Disassembly of section .text.ble_ke_task_handler_get:

00000000 <ble_ke_task_handler_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_handler_get>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	ca26                	sw	s1,20(sp)
  12:	892a                	mv	s2,a0
  14:	842e                	mv	s0,a1
  16:	862e                	mv	a2,a1
  18:	c602                	sw	zero,12(sp)
  1a:	85aa                	mv	a1,a0

0000001c <.LVL56>:
  1c:	0068                	addi	a0,sp,12

0000001e <.LVL57>:
  1e:	9782                	jalr	a5

00000020 <.LVL58>:
  20:	c901                	beqz	a0,30 <.L44>
			20: R_RISCV_RVC_BRANCH	.L44

00000022 <.L47>:
  22:	40f2                	lw	ra,28(sp)
  24:	4462                	lw	s0,24(sp)
  26:	4532                	lw	a0,12(sp)
  28:	44d2                	lw	s1,20(sp)
  2a:	4942                	lw	s2,16(sp)
  2c:	6105                	addi	sp,sp,32
  2e:	8082                	ret

00000030 <.L44>:
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	ble_ke_task_env
			30: R_RISCV_RELAX	*ABS*
  34:	0ff47713          	andi	a4,s0,255
  38:	070a                	slli	a4,a4,0x2
  3a:	00078793          	mv	a5,a5
			3a: R_RISCV_LO12_I	ble_ke_task_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	97ba                	add	a5,a5,a4
  40:	4384                	lw	s1,0(a5)

00000042 <.LVL60>:
  42:	00e4d783          	lhu	a5,14(s1) # e <ble_ke_task_handler_get+0xe>
  46:	dff1                	beqz	a5,22 <.L47>
			46: R_RISCV_RVC_BRANCH	.L47
  48:	8021                	srli	s0,s0,0x8

0000004a <.LVL61>:
  4a:	fcf47ce3          	bgeu	s0,a5,22 <.L47>
			4a: R_RISCV_BRANCH	.L47
  4e:	408c                	lw	a1,0(s1)
  50:	cd89                	beqz	a1,6a <.L49>
			50: R_RISCV_RVC_BRANCH	.L49
  52:	449c                	lw	a5,8(s1)
  54:	854a                	mv	a0,s2
  56:	943e                	add	s0,s0,a5
  58:	00044783          	lbu	a5,0(s0)
  5c:	078e                	slli	a5,a5,0x3
  5e:	95be                	add	a1,a1,a5
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	ble_ke_handler_search
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL61+0x16>

00000068 <.LVL62>:
  68:	c62a                	sw	a0,12(sp)

0000006a <.L49>:
  6a:	47b2                	lw	a5,12(sp)
  6c:	fbdd                	bnez	a5,22 <.L47>
			6c: R_RISCV_RVC_BRANCH	.L47
  6e:	40cc                	lw	a1,4(s1)
  70:	d9cd                	beqz	a1,22 <.L47>
			70: R_RISCV_RVC_BRANCH	.L47
  72:	854a                	mv	a0,s2
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	ble_ke_handler_search
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.L49+0xa>

0000007c <.LVL63>:
  7c:	c62a                	sw	a0,12(sp)
  7e:	b755                	j	22 <.L47>
			7e: R_RISCV_RVC_JUMP	.L47

Disassembly of section .text.ble_ke_task_schedule:

00000000 <ble_ke_task_schedule>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_schedule>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	c226                	sw	s1,4(sp)
  10:	c04a                	sw	s2,0(sp)
  12:	4501                	li	a0,0
  14:	9782                	jalr	a5

00000016 <.LVL64>:
  16:	ed2d                	bnez	a0,90 <.L57>
			16: R_RISCV_RVC_BRANCH	.L57

00000018 <.LBB119>:
  18:	30002973          	csrr	s2,mstatus

0000001c <.LBB123>:
  1c:	300477f3          	csrrci	a5,mstatus,8

00000020 <.LBB124>:
  20:	000004b7          	lui	s1,0x0
			20: R_RISCV_HI20	ble_ke_env
			20: R_RISCV_RELAX	*ABS*
  24:	00048513          	mv	a0,s1
			24: R_RISCV_LO12_I	ble_ke_env
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ble_co_list_pop_front
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LBB124+0x8>

00000030 <.LVL67>:
  30:	842a                	mv	s0,a0

00000032 <.LBE124>:
  32:	30091073          	csrw	mstatus,s2

00000036 <.LBE121>:
  36:	cd1d                	beqz	a0,74 <.L60>
			36: R_RISCV_RVC_BRANCH	.L60
  38:	57fd                	li	a5,-1
  3a:	c11c                	sw	a5,0(a0)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	ble_ke_is_free
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBE121+0x6>

00000044 <.LVL69>:
  44:	e905                	bnez	a0,74 <.L60>
			44: R_RISCV_RVC_BRANCH	.L60
  46:	00645583          	lhu	a1,6(s0)
  4a:	00445503          	lhu	a0,4(s0)
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ble_ke_task_handler_get
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL69+0xa>

00000056 <.LVL70>:
  56:	87aa                	mv	a5,a0

00000058 <.LVL71>:
  58:	c131                	beqz	a0,9c <.L62>
			58: R_RISCV_RVC_BRANCH	.L62

0000005a <.LBB126>:
  5a:	00845683          	lhu	a3,8(s0)
  5e:	00645603          	lhu	a2,6(s0)
  62:	00445503          	lhu	a0,4(s0)

00000066 <.LVL73>:
  66:	00c40593          	addi	a1,s0,12
  6a:	9782                	jalr	a5

0000006c <.LVL74>:
  6c:	c905                	beqz	a0,9c <.L62>
			6c: R_RISCV_RVC_BRANCH	.L62
  6e:	4789                	li	a5,2
  70:	02f50c63          	beq	a0,a5,a8 <.L63>
			70: R_RISCV_BRANCH	.L63

00000074 <.L60>:
  74:	30002473          	csrr	s0,mstatus

00000078 <.LBB132>:
  78:	300477f3          	csrrci	a5,mstatus,8

0000007c <.LBB133>:
  7c:	0004a783          	lw	a5,0(s1) # 0 <ble_ke_task_schedule>
			7c: R_RISCV_LO12_I	ble_ke_env
			7c: R_RISCV_RELAX	*ABS*
  80:	e791                	bnez	a5,8c <.L64>
			80: R_RISCV_RVC_BRANCH	.L64
  82:	4509                	li	a0,2
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	ble_ke_event_clear
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LBB133+0x8>

0000008c <.L64>:
  8c:	30041073          	csrw	mstatus,s0

00000090 <.L57>:
  90:	40b2                	lw	ra,12(sp)
  92:	4422                	lw	s0,8(sp)
  94:	4492                	lw	s1,4(sp)
  96:	4902                	lw	s2,0(sp)
  98:	0141                	addi	sp,sp,16
  9a:	8082                	ret

0000009c <.L62>:
  9c:	8522                	mv	a0,s0
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	ble_ke_msg_free
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.L62+0x2>

000000a6 <.LVL81>:
  a6:	b7f9                	j	74 <.L60>
			a6: R_RISCV_RVC_JUMP	.L60

000000a8 <.L63>:
  a8:	00000537          	lui	a0,0x0
			a8: R_RISCV_HI20	ble_ke_env+0x8
			a8: R_RISCV_RELAX	*ABS*+0x8

000000ac <.LVL83>:
  ac:	85a2                	mv	a1,s0
  ae:	00850513          	addi	a0,a0,8 # 8 <ble_ke_task_schedule+0x8>
			ae: R_RISCV_LO12_I	ble_ke_env+0x8
			ae: R_RISCV_RELAX	*ABS*+0x8
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	ble_co_list_push_back
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LVL83+0x6>

000000ba <.LVL84>:
  ba:	bf6d                	j	74 <.L60>
			ba: R_RISCV_RVC_JUMP	.L60

Disassembly of section .text._patch_ble_ke_task_schedule:

00000000 <_patch_ble_ke_task_schedule>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB141>:
   a:	30002973          	csrr	s2,mstatus

0000000e <.LBB142>:
   e:	300477f3          	csrrci	a5,mstatus,8

00000012 <.LBB143>:
  12:	000004b7          	lui	s1,0x0
			12: R_RISCV_HI20	ble_ke_env
			12: R_RISCV_RELAX	*ABS*
  16:	00048513          	mv	a0,s1
			16: R_RISCV_LO12_I	ble_ke_env
			16: R_RISCV_RELAX	*ABS*

0000001a <.LVL88>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_co_list_pop_front
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL88>

00000022 <.LBE143>:
  22:	30091073          	csrw	mstatus,s2

00000026 <.LBE145>:
  26:	c121                	beqz	a0,66 <.L74>
			26: R_RISCV_RVC_BRANCH	.L74
  28:	57fd                	li	a5,-1
  2a:	c11c                	sw	a5,0(a0)
  2c:	842a                	mv	s0,a0
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ble_ke_is_free
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LBE145+0x8>

00000036 <.LVL90>:
  36:	e905                	bnez	a0,66 <.L74>
			36: R_RISCV_RVC_BRANCH	.L74
  38:	00645583          	lhu	a1,6(s0)
  3c:	00445503          	lhu	a0,4(s0)
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	ble_ke_task_handler_get
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL90+0xa>

00000048 <.LVL91>:
  48:	87aa                	mv	a5,a0

0000004a <.LVL92>:
  4a:	c139                	beqz	a0,90 <.L76>
			4a: R_RISCV_RVC_BRANCH	.L76

0000004c <.LBB146>:
  4c:	00845683          	lhu	a3,8(s0)
  50:	00645603          	lhu	a2,6(s0)
  54:	00445503          	lhu	a0,4(s0)

00000058 <.LVL94>:
  58:	00c40593          	addi	a1,s0,12
  5c:	9782                	jalr	a5

0000005e <.LVL95>:
  5e:	c90d                	beqz	a0,90 <.L76>
			5e: R_RISCV_RVC_BRANCH	.L76
  60:	4789                	li	a5,2
  62:	02f50d63          	beq	a0,a5,9c <.L77>
			62: R_RISCV_BRANCH	.L77

00000066 <.L74>:
  66:	30002473          	csrr	s0,mstatus

0000006a <.LBB153>:
  6a:	300477f3          	csrrci	a5,mstatus,8

0000006e <.LBB154>:
  6e:	0004a783          	lw	a5,0(s1) # 0 <_patch_ble_ke_task_schedule>
			6e: R_RISCV_LO12_I	ble_ke_env
			6e: R_RISCV_RELAX	*ABS*
  72:	e791                	bnez	a5,7e <.L78>
			72: R_RISCV_RVC_BRANCH	.L78
  74:	4509                	li	a0,2
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	ble_ke_event_clear
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LBB154+0x8>

0000007e <.L78>:
  7e:	30041073          	csrw	mstatus,s0

00000082 <.LBE151>:
  82:	40b2                	lw	ra,12(sp)
  84:	4422                	lw	s0,8(sp)

00000086 <.LVL100>:
  86:	4492                	lw	s1,4(sp)
  88:	4902                	lw	s2,0(sp)

0000008a <.LVL101>:
  8a:	4505                	li	a0,1
  8c:	0141                	addi	sp,sp,16
  8e:	8082                	ret

00000090 <.L76>:
  90:	8522                	mv	a0,s0
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	ble_ke_msg_free
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.L76+0x2>

0000009a <.LVL103>:
  9a:	b7f1                	j	66 <.L74>
			9a: R_RISCV_RVC_JUMP	.L74

0000009c <.L77>:
  9c:	00000537          	lui	a0,0x0
			9c: R_RISCV_HI20	ble_ke_env+0x8
			9c: R_RISCV_RELAX	*ABS*+0x8

000000a0 <.LVL105>:
  a0:	85a2                	mv	a1,s0
  a2:	00850513          	addi	a0,a0,8 # 8 <_patch_ble_ke_task_schedule+0x8>
			a2: R_RISCV_LO12_I	ble_ke_env+0x8
			a2: R_RISCV_RELAX	*ABS*+0x8
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	ble_co_list_push_back
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL105+0x6>

000000ae <.LVL106>:
  ae:	bf65                	j	66 <.L74>
			ae: R_RISCV_RVC_JUMP	.L74

Disassembly of section .text._patch_ble_ke_task_init:

00000000 <_patch_ble_ke_task_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <_patch_ble_ke_task_init>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	ble_ke_task_env
			a: R_RISCV_RELAX	*ABS*

0000000e <.LVL108>:
   e:	c606                	sw	ra,12(sp)
  10:	4651                	li	a2,20
  12:	4581                	li	a1,0
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	ble_ke_task_env
			14: R_RISCV_RELAX	*ABS*
  18:	9782                	jalr	a5

0000001a <.LVL109>:
  1a:	000005b7          	lui	a1,0x0
			1a: R_RISCV_HI20	ble_ke_task_schedule
			1a: R_RISCV_RELAX	*ABS*
  1e:	00058593          	mv	a1,a1
			1e: R_RISCV_LO12_I	ble_ke_task_schedule
			1e: R_RISCV_RELAX	*ABS*
  22:	4509                	li	a0,2
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_ke_event_callback_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL109+0xa>

0000002c <.LVL110>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4505                	li	a0,1
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.ble_ke_task_init:

00000000 <ble_ke_task_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_init>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	4501                	li	a0,0
   e:	9782                	jalr	a5

00000010 <.LVL111>:
  10:	e51d                	bnez	a0,3e <.L88>
			10: R_RISCV_RVC_BRANCH	.L88
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	ble_memset_ptr
			12: R_RISCV_RELAX	*ABS*
  16:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_init>
			16: R_RISCV_LO12_I	ble_memset_ptr
			16: R_RISCV_RELAX	*ABS*
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	ble_ke_task_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	4581                	li	a1,0
  20:	4651                	li	a2,20
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	ble_ke_task_env
			22: R_RISCV_RELAX	*ABS*
  26:	9782                	jalr	a5

00000028 <.LVL112>:
  28:	40b2                	lw	ra,12(sp)
  2a:	000005b7          	lui	a1,0x0
			2a: R_RISCV_HI20	ble_ke_task_schedule
			2a: R_RISCV_RELAX	*ABS*
  2e:	00058593          	mv	a1,a1
			2e: R_RISCV_LO12_I	ble_ke_task_schedule
			2e: R_RISCV_RELAX	*ABS*
  32:	4509                	li	a0,2
  34:	0141                	addi	sp,sp,16
  36:	00000317          	auipc	t1,0x0
			36: R_RISCV_CALL	ble_ke_event_callback_set
			36: R_RISCV_RELAX	*ABS*
  3a:	00030067          	jr	t1 # 36 <.LVL112+0xe>

0000003e <.L88>:
  3e:	40b2                	lw	ra,12(sp)
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

Disassembly of section .text._patch_ble_ke_task_create:

00000000 <_patch_ble_ke_task_create>:
   0:	300026f3          	csrr	a3,mstatus

00000004 <.LBB159>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE159>:
   8:	4711                	li	a4,4
   a:	00b77963          	bgeu	a4,a1,1c <.L92>
			a: R_RISCV_BRANCH	.L92
   e:	478d                	li	a5,3
  10:	00f50023          	sb	a5,0(a0) # 0 <_patch_ble_ke_task_create>

00000014 <.L93>:
  14:	30069073          	csrw	mstatus,a3

00000018 <.LBE157>:
  18:	4505                	li	a0,1

0000001a <.LVL118>:
  1a:	8082                	ret

0000001c <.L92>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	ble_ke_task_env
			1c: R_RISCV_RELAX	*ABS*
  20:	00078793          	mv	a5,a5
			20: R_RISCV_LO12_I	ble_ke_task_env
			20: R_RISCV_RELAX	*ABS*
  24:	058a                	slli	a1,a1,0x2

00000026 <.LVL120>:
  26:	95be                	add	a1,a1,a5
  28:	419c                	lw	a5,0(a1)
  2a:	c781                	beqz	a5,32 <.L94>
			2a: R_RISCV_RVC_BRANCH	.L94
  2c:	00e50023          	sb	a4,0(a0)
  30:	b7d5                	j	14 <.L93>
			30: R_RISCV_RVC_JUMP	.L93

00000032 <.L94>:
  32:	c190                	sw	a2,0(a1)
  34:	b7c5                	j	14 <.L93>
			34: R_RISCV_RVC_JUMP	.L93

Disassembly of section .text.ble_ke_task_create:

00000000 <ble_ke_task_create>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_task_create>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	000107a3          	sb	zero,15(sp)
  1a:	85aa                	mv	a1,a0

0000001c <.LVL122>:
  1c:	00f10513          	addi	a0,sp,15

00000020 <.LVL123>:
  20:	9782                	jalr	a5

00000022 <.LVL124>:
  22:	c901                	beqz	a0,32 <.L96>
			22: R_RISCV_RVC_BRANCH	.L96

00000024 <.L103>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	00f14503          	lbu	a0,15(sp)
  2c:	44d2                	lw	s1,20(sp)

0000002e <.LVL125>:
  2e:	6105                	addi	sp,sp,32
  30:	8082                	ret

00000032 <.L96>:
  32:	30002773          	csrr	a4,mstatus

00000036 <.LBB163>:
  36:	300477f3          	csrrci	a5,mstatus,8

0000003a <.LBE163>:
  3a:	4791                	li	a5,4
  3c:	0087f863          	bgeu	a5,s0,4c <.L98>
			3c: R_RISCV_BRANCH	.L98
  40:	478d                	li	a5,3

00000042 <.L102>:
  42:	00f107a3          	sb	a5,15(sp)

00000046 <.L99>:
  46:	30071073          	csrw	mstatus,a4
  4a:	bfe9                	j	24 <.L103>
			4a: R_RISCV_RVC_JUMP	.L103

0000004c <.L98>:
  4c:	00000537          	lui	a0,0x0
			4c: R_RISCV_HI20	ble_ke_task_env
			4c: R_RISCV_RELAX	*ABS*
  50:	040a                	slli	s0,s0,0x2
  52:	00050513          	mv	a0,a0
			52: R_RISCV_LO12_I	ble_ke_task_env
			52: R_RISCV_RELAX	*ABS*
  56:	9522                	add	a0,a0,s0
  58:	4114                	lw	a3,0(a0)
  5a:	f6e5                	bnez	a3,42 <.L102>
			5a: R_RISCV_RVC_BRANCH	.L102
  5c:	c104                	sw	s1,0(a0)
  5e:	b7e5                	j	46 <.L99>
			5e: R_RISCV_RVC_JUMP	.L99

Disassembly of section .text.ble_ke_task_delete:

00000000 <ble_ke_task_delete>:
   0:	30002773          	csrr	a4,mstatus

00000004 <.LBB166>:
   4:	300477f3          	csrrci	a5,mstatus,8

00000008 <.LBE166>:
   8:	4791                	li	a5,4
   a:	00a7ee63          	bltu	a5,a0,26 <.L106>
			a: R_RISCV_BRANCH	.L106
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	ble_ke_task_env
			e: R_RISCV_RELAX	*ABS*
  12:	050a                	slli	a0,a0,0x2

00000014 <.LVL132>:
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	ble_ke_task_env
			14: R_RISCV_RELAX	*ABS*
  18:	97aa                	add	a5,a5,a0
  1a:	0007a023          	sw	zero,0(a5) # 0 <ble_ke_task_delete>

0000001e <.LBE164>:
  1e:	4501                	li	a0,0

00000020 <.L105>:
  20:	30071073          	csrw	mstatus,a4

00000024 <.LBE167>:
  24:	8082                	ret

00000026 <.L106>:
  26:	4509                	li	a0,2

00000028 <.LVL135>:
  28:	bfe5                	j	20 <.L105>
			28: R_RISCV_RVC_JUMP	.L105

Disassembly of section .text._patch_ble_ke_state_set:

00000000 <_patch_ble_ke_state_set>:
   0:	0ff5f713          	andi	a4,a1,255

00000004 <.LVL137>:
   4:	4791                	li	a5,4
   6:	04e7e263          	bltu	a5,a4,4a <.L108>
			6: R_RISCV_BRANCH	.L108
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	ble_ke_task_env
			a: R_RISCV_RELAX	*ABS*
   e:	070a                	slli	a4,a4,0x2

00000010 <.LVL138>:
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	ble_ke_task_env
			10: R_RISCV_RELAX	*ABS*
  14:	97ba                	add	a5,a5,a4
  16:	439c                	lw	a5,0(a5)
  18:	0085d693          	srli	a3,a1,0x8

0000001c <.LVL139>:
  1c:	00e7d703          	lhu	a4,14(a5) # e <.LVL137+0xa>
  20:	02e6f863          	bgeu	a3,a4,50 <.L112>
			20: R_RISCV_BRANCH	.L112
  24:	479c                	lw	a5,8(a5)

00000026 <.LVL140>:
  26:	97b6                	add	a5,a5,a3

00000028 <.LVL141>:
  28:	0007c703          	lbu	a4,0(a5)
  2c:	02c70263          	beq	a4,a2,50 <.L112>
			2c: R_RISCV_BRANCH	.L112
  30:	1141                	addi	sp,sp,-16
  32:	c606                	sw	ra,12(sp)
  34:	852e                	mv	a0,a1

00000036 <.LVL142>:
  36:	00c78023          	sb	a2,0(a5)

0000003a <.LVL143>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	ble_ke_task_saved_update
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL143>

00000042 <.LVL144>:
  42:	40b2                	lw	ra,12(sp)
  44:	4505                	li	a0,1
  46:	0141                	addi	sp,sp,16
  48:	8082                	ret

0000004a <.L108>:
  4a:	00e05783          	lhu	a5,14(zero) # e <.LVL137+0xa>
  4e:	9002                	ebreak

00000050 <.L112>:
  50:	4505                	li	a0,1

00000052 <.LVL147>:
  52:	8082                	ret

Disassembly of section .text.ble_ke_state_set:

00000000 <ble_ke_state_set>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_state_set>
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

00000018 <.LVL149>:
  18:	4501                	li	a0,0

0000001a <.LVL150>:
  1a:	9782                	jalr	a5

0000001c <.LVL151>:
  1c:	e539                	bnez	a0,6a <.L115>
			1c: R_RISCV_RVC_BRANCH	.L115

0000001e <.LVL152>:
  1e:	0ff47713          	andi	a4,s0,255

00000022 <.LVL153>:
  22:	4791                	li	a5,4
  24:	04e7e063          	bltu	a5,a4,64 <.L117>
			24: R_RISCV_BRANCH	.L117
  28:	000007b7          	lui	a5,0x0
			28: R_RISCV_HI20	ble_ke_task_env
			28: R_RISCV_RELAX	*ABS*
  2c:	070a                	slli	a4,a4,0x2

0000002e <.LVL154>:
  2e:	00078793          	mv	a5,a5
			2e: R_RISCV_LO12_I	ble_ke_task_env
			2e: R_RISCV_RELAX	*ABS*
  32:	97ba                	add	a5,a5,a4
  34:	439c                	lw	a5,0(a5)
  36:	00845693          	srli	a3,s0,0x8

0000003a <.LVL155>:
  3a:	00e7d703          	lhu	a4,14(a5) # e <ble_ke_state_set+0xe>
  3e:	02e6f663          	bgeu	a3,a4,6a <.L115>
			3e: R_RISCV_BRANCH	.L115
  42:	479c                	lw	a5,8(a5)

00000044 <.LVL156>:
  44:	97b6                	add	a5,a5,a3

00000046 <.LVL157>:
  46:	0007c703          	lbu	a4,0(a5)
  4a:	02970063          	beq	a4,s1,6a <.L115>
			4a: R_RISCV_BRANCH	.L115
  4e:	00978023          	sb	s1,0(a5)

00000052 <.LVL158>:
  52:	8522                	mv	a0,s0
  54:	4422                	lw	s0,8(sp)

00000056 <.LVL159>:
  56:	40b2                	lw	ra,12(sp)
  58:	4492                	lw	s1,4(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	00000317          	auipc	t1,0x0
			5c: R_RISCV_CALL	ble_ke_task_saved_update
			5c: R_RISCV_RELAX	*ABS*
  60:	00030067          	jr	t1 # 5c <.LVL159+0x6>

00000064 <.L117>:
  64:	00e05783          	lhu	a5,14(zero) # e <ble_ke_state_set+0xe>
  68:	9002                	ebreak

0000006a <.L115>:
  6a:	40b2                	lw	ra,12(sp)
  6c:	4422                	lw	s0,8(sp)
  6e:	4492                	lw	s1,4(sp)
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

Disassembly of section .text._patch_ble_ke_state_get:

00000000 <_patch_ble_ke_state_get>:
   0:	57fd                	li	a5,-1
   2:	00f50023          	sb	a5,0(a0) # 0 <_patch_ble_ke_state_get>
   6:	0ff5f713          	andi	a4,a1,255

0000000a <.LVL163>:
   a:	4791                	li	a5,4
   c:	02e7e663          	bltu	a5,a4,38 <.L120>
			c: R_RISCV_BRANCH	.L120
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	ble_ke_task_env
			10: R_RISCV_RELAX	*ABS*
  14:	070a                	slli	a4,a4,0x2

00000016 <.LVL164>:
  16:	00078793          	mv	a5,a5
			16: R_RISCV_LO12_I	ble_ke_task_env
			16: R_RISCV_RELAX	*ABS*
  1a:	97ba                	add	a5,a5,a4
  1c:	439c                	lw	a5,0(a5)
  1e:	81a1                	srli	a1,a1,0x8

00000020 <.LVL165>:
  20:	00e7d703          	lhu	a4,14(a5) # e <.LVL163+0x4>
  24:	00e5f863          	bgeu	a1,a4,34 <.L122>
			24: R_RISCV_BRANCH	.L122
  28:	479c                	lw	a5,8(a5)

0000002a <.LVL166>:
  2a:	95be                	add	a1,a1,a5
  2c:	0005c783          	lbu	a5,0(a1) # 0 <_patch_ble_ke_state_get>
  30:	00f50023          	sb	a5,0(a0)

00000034 <.L122>:
  34:	4505                	li	a0,1

00000036 <.LVL168>:
  36:	8082                	ret

00000038 <.L120>:
  38:	00e05783          	lhu	a5,14(zero) # e <.LVL163+0x4>
  3c:	9002                	ebreak

Disassembly of section .text.ble_ke_state_get:

00000000 <ble_ke_state_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	_rom_patch_hook
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_state_get>
			4: R_RISCV_LO12_I	_rom_patch_hook
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	00f10513          	addi	a0,sp,15

00000016 <.LVL171>:
  16:	9782                	jalr	a5

00000018 <.LVL172>:
  18:	c519                	beqz	a0,26 <.L124>
			18: R_RISCV_RVC_BRANCH	.L124

0000001a <.L127>:
  1a:	40f2                	lw	ra,28(sp)
  1c:	4462                	lw	s0,24(sp)
  1e:	00f14503          	lbu	a0,15(sp)
  22:	6105                	addi	sp,sp,32
  24:	8082                	ret

00000026 <.L124>:
  26:	57fd                	li	a5,-1
  28:	00f107a3          	sb	a5,15(sp)
  2c:	0ff47713          	andi	a4,s0,255

00000030 <.LVL174>:
  30:	4791                	li	a5,4
  32:	02e7e563          	bltu	a5,a4,5c <.L126>
			32: R_RISCV_BRANCH	.L126
  36:	000007b7          	lui	a5,0x0
			36: R_RISCV_HI20	ble_ke_task_env
			36: R_RISCV_RELAX	*ABS*
  3a:	070a                	slli	a4,a4,0x2

0000003c <.LVL175>:
  3c:	00078793          	mv	a5,a5
			3c: R_RISCV_LO12_I	ble_ke_task_env
			3c: R_RISCV_RELAX	*ABS*
  40:	97ba                	add	a5,a5,a4
  42:	439c                	lw	a5,0(a5)
  44:	8021                	srli	s0,s0,0x8

00000046 <.LVL176>:
  46:	00e7d703          	lhu	a4,14(a5) # e <ble_ke_state_get+0xe>
  4a:	fce478e3          	bgeu	s0,a4,1a <.L127>
			4a: R_RISCV_BRANCH	.L127
  4e:	479c                	lw	a5,8(a5)

00000050 <.LVL177>:
  50:	943e                	add	s0,s0,a5
  52:	00044783          	lbu	a5,0(s0)
  56:	00f107a3          	sb	a5,15(sp)
  5a:	b7c1                	j	1a <.L127>
			5a: R_RISCV_RVC_JUMP	.L127

0000005c <.L126>:
  5c:	00e05783          	lhu	a5,14(zero) # e <ble_ke_state_get+0xe>
  60:	9002                	ebreak

Disassembly of section .text.ble_ke_msg_discard:

00000000 <ble_ke_msg_discard>:
   0:	4501                	li	a0,0

00000002 <.LVL180>:
   2:	8082                	ret

Disassembly of section .text.ble_ke_msg_save:

00000000 <ble_ke_msg_save>:
   0:	4509                	li	a0,2

00000002 <.LVL182>:
   2:	8082                	ret

Disassembly of section .text.ble_ke_task_msg_flush:

00000000 <ble_ke_task_msg_flush>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)

00000004 <.LBB173>:
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	ble_ke_env
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE173>:
   8:	cc22                	sw	s0,24(sp)

0000000a <.LBB174>:
   a:	0004a403          	lw	s0,0(s1) # 0 <ble_ke_task_msg_flush>
			a: R_RISCV_LO12_I	ble_ke_env
			a: R_RISCV_RELAX	*ABS*

0000000e <.LBE174>:
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c452                	sw	s4,8(sp)
  14:	c256                	sw	s5,4(sp)
  16:	ce06                	sw	ra,28(sp)
  18:	c05a                	sw	s6,0(sp)
  1a:	89aa                	mv	s3,a0
  1c:	4909                	li	s2,2
  1e:	00048a13          	mv	s4,s1
			1e: R_RISCV_LO12_I	ble_ke_env
			1e: R_RISCV_RELAX	*ABS*
  22:	4a85                	li	s5,1

00000024 <.L133>:
  24:	e819                	bnez	s0,3a <.L135>
			24: R_RISCV_RVC_BRANCH	.L135

00000026 <.L132>:
  26:	40f2                	lw	ra,28(sp)
  28:	4462                	lw	s0,24(sp)

0000002a <.LVL186>:
  2a:	44d2                	lw	s1,20(sp)
  2c:	4942                	lw	s2,16(sp)
  2e:	49b2                	lw	s3,12(sp)
  30:	4a22                	lw	s4,8(sp)
  32:	4a92                	lw	s5,4(sp)
  34:	4b02                	lw	s6,0(sp)
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

0000003a <.L135>:
  3a:	00644783          	lbu	a5,6(s0)
  3e:	00042b03          	lw	s6,0(s0)
  42:	00f99f63          	bne	s3,a5,60 <.L134>
			42: R_RISCV_BRANCH	.L134

00000046 <.LVL188>:
  46:	4601                	li	a2,0
  48:	85a2                	mv	a1,s0
  4a:	00048513          	mv	a0,s1
			4a: R_RISCV_LO12_I	ble_ke_env
			4a: R_RISCV_RELAX	*ABS*
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	ble_co_list_extract
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL188+0x8>

00000056 <.LVL189>:
  56:	8522                	mv	a0,s0
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	ble_ke_msg_free
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL189+0x2>

00000060 <.L134>:
  60:	845a                	mv	s0,s6
  62:	fc0b1ce3          	bnez	s6,3a <.L135>
			62: R_RISCV_BRANCH	.L135

00000066 <.LVL191>:
  66:	fd5900e3          	beq	s2,s5,26 <.L132>
			66: R_RISCV_BRANCH	.L132

0000006a <.LBB175>:
  6a:	008a2403          	lw	s0,8(s4)
  6e:	4905                	li	s2,1
  70:	bf55                	j	24 <.L133>
			70: R_RISCV_RVC_JUMP	.L133

Disassembly of section .text.ble_ke_task_check:

00000000 <ble_ke_task_check>:
   0:	0ff57713          	andi	a4,a0,255

00000004 <.LVL194>:
   4:	4795                	li	a5,5
   6:	02e7e063          	bltu	a5,a4,26 <.L145>
			6: R_RISCV_BRANCH	.L145
   a:	000007b7          	lui	a5,0x0
			a: R_RISCV_HI20	ble_ke_task_env
			a: R_RISCV_RELAX	*ABS*
   e:	070a                	slli	a4,a4,0x2

00000010 <.LVL195>:
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	ble_ke_task_env
			10: R_RISCV_RELAX	*ABS*
  14:	97ba                	add	a5,a5,a4
  16:	439c                	lw	a5,0(a5)
  18:	c799                	beqz	a5,26 <.L145>
			18: R_RISCV_RVC_BRANCH	.L145
  1a:	00e7d703          	lhu	a4,14(a5) # e <.LVL194+0xa>
  1e:	00855793          	srli	a5,a0,0x8
  22:	00f77463          	bgeu	a4,a5,2a <.L142>
			22: R_RISCV_BRANCH	.L142

00000026 <.L145>:
  26:	0ff00513          	li	a0,255

0000002a <.L142>:
  2a:	8082                	ret
