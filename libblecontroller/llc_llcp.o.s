
libblecontroller/llc_llcp.o:     file format elf32-littleriscv


Disassembly of section .text.llc_llcp_send:

00000000 <llc_llcp_send>:
   0:	1101                	addi	sp,sp,-32
   2:	c452                	sw	s4,8(sp)
   4:	c05a                	sw	s6,0(sp)
   6:	8a2a                	mv	s4,a0
   8:	8b2e                	mv	s6,a1
   a:	4569                	li	a0,26

0000000c <.LVL1>:
   c:	4581                	li	a1,0

0000000e <.LVL2>:
   e:	c64e                	sw	s3,12(sp)
  10:	c256                	sw	s5,4(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	cc22                	sw	s0,24(sp)
  16:	ca26                	sw	s1,20(sp)
  18:	c84a                	sw	s2,16(sp)
  1a:	8ab2                	mv	s5,a2
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_ke_malloc
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL2+0xe>

00000024 <.LVL3>:
  24:	89aa                	mv	s3,a0

00000026 <.LVL4>:
  26:	4581                	li	a1,0
  28:	4541                	li	a0,16

0000002a <.LVL5>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_malloc
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL5>

00000032 <.LVL6>:
  32:	06098963          	beqz	s3,a4 <.L1>
			32: R_RISCV_BRANCH	.L1
  36:	84aa                	mv	s1,a0
  38:	c535                	beqz	a0,a4 <.L1>
			38: R_RISCV_RVC_BRANCH	.L1

0000003a <.LBB346>:
  3a:	00000437          	lui	s0,0x0
			3a: R_RISCV_HI20	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	002a1793          	slli	a5,s4,0x2
  42:	00040413          	mv	s0,s0
			42: R_RISCV_LO12_I	llc_env
			42: R_RISCV_RELAX	*ABS*
  46:	943e                	add	s0,s0,a5
  48:	401c                	lw	a5,0(s0)
  4a:	4669                	li	a2,26
  4c:	85da                	mv	a1,s6
  4e:	0107a903          	lw	s2,16(a5)
  52:	000007b7          	lui	a5,0x0
			52: R_RISCV_HI20	ble_memcpy_ptr
			52: R_RISCV_RELAX	*ABS*
  56:	0007a783          	lw	a5,0(a5) # 0 <llc_llcp_send>
			56: R_RISCV_LO12_I	ble_memcpy_ptr
			56: R_RISCV_RELAX	*ABS*
  5a:	854e                	mv	a0,s3

0000005c <.LVL8>:
  5c:	04090913          	addi	s2,s2,64

00000060 <.LVL9>:
  60:	9782                	jalr	a5

00000062 <.LVL10>:
  62:	0134a423          	sw	s3,8(s1)
  66:	01449223          	sh	s4,4(s1)
  6a:	01548623          	sb	s5,12(s1)

0000006e <.LBB347>:
  6e:	300029f3          	csrr	s3,mstatus

00000072 <.LBB349>:
  72:	300477f3          	csrrci	a5,mstatus,8

00000076 <.LBE349>:
  76:	85a6                	mv	a1,s1
  78:	854a                	mv	a0,s2
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	ble_co_list_push_back
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LBE349+0x4>

00000082 <.LVL13>:
  82:	30099073          	csrw	mstatus,s3

00000086 <.LBE347>:
  86:	401c                	lw	a5,0(s0)

00000088 <.LBE346>:
  88:	4462                	lw	s0,24(sp)
  8a:	40f2                	lw	ra,28(sp)
  8c:	44d2                	lw	s1,20(sp)

0000008e <.LVL14>:
  8e:	4942                	lw	s2,16(sp)

00000090 <.LVL15>:
  90:	49b2                	lw	s3,12(sp)

00000092 <.LVL16>:
  92:	4a22                	lw	s4,8(sp)
  94:	4a92                	lw	s5,4(sp)
  96:	4b02                	lw	s6,0(sp)

00000098 <.LBB350>:
  98:	4b88                	lw	a0,16(a5)

0000009a <.LBE350>:
  9a:	6105                	addi	sp,sp,32

0000009c <.LBB351>:
  9c:	00000317          	auipc	t1,0x0
			9c: R_RISCV_CALL	lld_evt_schedule_next
			9c: R_RISCV_RELAX	*ABS*
  a0:	00030067          	jr	t1 # 9c <.LBB351>

000000a4 <.L1>:
  a4:	40f2                	lw	ra,28(sp)
  a6:	4462                	lw	s0,24(sp)
  a8:	44d2                	lw	s1,20(sp)
  aa:	4942                	lw	s2,16(sp)
  ac:	49b2                	lw	s3,12(sp)

000000ae <.LVL19>:
  ae:	4a22                	lw	s4,8(sp)
  b0:	4a92                	lw	s5,4(sp)
  b2:	4b02                	lw	s6,0(sp)

000000b4 <.LVL20>:
  b4:	6105                	addi	sp,sp,32
  b6:	8082                	ret

Disassembly of section .text.llcp_ping_rsp_handler:

00000000 <llcp_ping_rsp_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	892a                	mv	s2,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL22>:
   8:	c422                	sw	s0,8(sp)
   a:	c226                	sw	s1,4(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842e                	mv	s0,a1
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL22+0x8>

00000018 <.LVL23>:
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	llc_env
			18: R_RISCV_RELAX	*ABS*
  1c:	00291713          	slli	a4,s2,0x2
  20:	00078793          	mv	a5,a5
			20: R_RISCV_LO12_I	llc_env
			20: R_RISCV_RELAX	*ABS*
  24:	97ba                	add	a5,a5,a4
  26:	4384                	lw	s1,0(a5)

00000028 <.LVL24>:
  28:	0a54c783          	lbu	a5,165(s1)
  2c:	8ba1                	andi	a5,a5,8
  2e:	cf99                	beqz	a5,4c <.L11>
			2e: R_RISCV_RVC_BRANCH	.L11
  30:	03d00593          	li	a1,61
  34:	854a                	mv	a0,s2

00000036 <.LVL25>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	llc_util_dicon_procedure
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL25>

0000003e <.L12>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)
  42:	4492                	lw	s1,4(sp)

00000044 <.LVL27>:
  44:	4902                	lw	s2,0(sp)
  46:	4501                	li	a0,0
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

0000004c <.L11>:
  4c:	00157793          	andi	a5,a0,1
  50:	d7fd                	beqz	a5,3e <.L12>
			50: R_RISCV_RVC_BRANCH	.L12
  52:	0a34c703          	lbu	a4,163(s1)
  56:	4795                	li	a5,5
  58:	fef713e3          	bne	a4,a5,3e <.L12>
			58: R_RISCV_BRANCH	.L12

0000005c <.LBB354>:
  5c:	0fe57593          	andi	a1,a0,254
  60:	8522                	mv	a0,s0

00000062 <.LVL30>:
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	ble_ke_state_set
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL30>

0000006a <.LBE354>:
  6a:	85a2                	mv	a1,s0
  6c:	0a0481a3          	sb	zero,163(s1)
  70:	10200513          	li	a0,258
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	ble_ke_timer_clear
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LBE354+0xa>

0000007c <.LVL32>:
  7c:	b7c9                	j	3e <.L12>
			7c: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.llcp_terminate_ind_handler:

00000000 <llcp_terminate_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	10200513          	li	a0,258

0000000a <.LVL34>:
   a:	c606                	sw	ra,12(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	84b6                	mv	s1,a3
  12:	892e                	mv	s2,a1
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_timer_clear
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL34+0xa>

0000001c <.LVL35>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	llc_env
			1c: R_RISCV_RELAX	*ABS*
  20:	00241713          	slli	a4,s0,0x2
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	llc_env
			24: R_RISCV_RELAX	*ABS*
  28:	97ba                	add	a5,a5,a4
  2a:	439c                	lw	a5,0(a5)
  2c:	0014c703          	lbu	a4,1(s1)
  30:	45bd                	li	a1,15
  32:	854a                	mv	a0,s2
  34:	0ae780a3          	sb	a4,161(a5) # a1 <.LBB510+0x1>
  38:	05c7d703          	lhu	a4,92(a5)
  3c:	20076713          	ori	a4,a4,512
  40:	04e79e23          	sh	a4,92(a5)
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	ble_ke_state_set
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL35+0x28>

0000004c <.LVL36>:
  4c:	8522                	mv	a0,s0
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	lld_get_mode
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL36+0x2>

00000056 <.LVL37>:
  56:	4791                	li	a5,4
  58:	00f51963          	bne	a0,a5,6a <.L18>
			58: R_RISCV_BRANCH	.L18
  5c:	0014c583          	lbu	a1,1(s1)
  60:	8522                	mv	a0,s0
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	llc_util_dicon_procedure
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL37+0xc>

0000006a <.L18>:
  6a:	40b2                	lw	ra,12(sp)
  6c:	4422                	lw	s0,8(sp)
  6e:	4492                	lw	s1,4(sp)

00000070 <.LVL39>:
  70:	4902                	lw	s2,0(sp)
  72:	4501                	li	a0,0
  74:	0141                	addi	sp,sp,16
  76:	8082                	ret

Disassembly of section .text.llcp_enc_rsp_handler:

00000000 <llcp_enc_rsp_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	842a                	mv	s0,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL41>:
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	00000937          	lui	s2,0x0
			14: R_RISCV_HI20	llc_env
			14: R_RISCV_RELAX	*ABS*
  18:	d606                	sw	ra,44(sp)
  1a:	c65e                	sw	s7,12(sp)
  1c:	8a2e                	mv	s4,a1
  1e:	89b6                	mv	s3,a3
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ble_ke_state_get
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL41+0x18>

00000028 <.LVL42>:
  28:	00090793          	mv	a5,s2
			28: R_RISCV_LO12_I	llc_env
			28: R_RISCV_RELAX	*ABS*
  2c:	00241a93          	slli	s5,s0,0x2
  30:	97d6                	add	a5,a5,s5
  32:	4384                	lw	s1,0(a5)
  34:	8b2a                	mv	s6,a0

00000036 <.LVL43>:
  36:	00090913          	mv	s2,s2
			36: R_RISCV_LO12_I	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	0a54c783          	lbu	a5,165(s1)
  3e:	8ba1                	andi	a5,a5,8
  40:	cf89                	beqz	a5,5a <.L21>
			40: R_RISCV_RVC_BRANCH	.L21
  42:	0a34c703          	lbu	a4,163(s1)
  46:	47b5                	li	a5,13
  48:	00f70963          	beq	a4,a5,5a <.L21>
			48: R_RISCV_BRANCH	.L21
  4c:	03d00593          	li	a1,61
  50:	8522                	mv	a0,s0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	llc_util_dicon_procedure
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL43+0x1c>

0000005a <.L21>:
  5a:	001b7b13          	andi	s6,s6,1

0000005e <.LVL45>:
  5e:	000b0763          	beqz	s6,6c <.L22>
			5e: R_RISCV_BRANCH	.L22
  62:	0a34c703          	lbu	a4,163(s1)
  66:	47b5                	li	a5,13
  68:	0cf71263          	bne	a4,a5,12c <.L23>
			68: R_RISCV_BRANCH	.L23

0000006c <.L22>:
  6c:	02000693          	li	a3,32
  70:	8652                	mv	a2,s4
  72:	4581                	li	a1,0
  74:	4511                	li	a0,4
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	ble_ke_msg_alloc
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.L22+0xa>

0000007e <.LVL46>:
  7e:	00000bb7          	lui	s7,0x0
			7e: R_RISCV_HI20	ble_memcpy_ptr
			7e: R_RISCV_RELAX	*ABS*
  82:	000ba783          	lw	a5,0(s7) # 0 <llcp_enc_rsp_handler>
			82: R_RISCV_LO12_I	ble_memcpy_ptr
			82: R_RISCV_RELAX	*ABS*
  86:	8b2a                	mv	s6,a0

00000088 <.LVL47>:
  88:	00198593          	addi	a1,s3,1
  8c:	4621                	li	a2,8
  8e:	07948513          	addi	a0,s1,121

00000092 <.LVL48>:
  92:	9782                	jalr	a5

00000094 <.LVL49>:
  94:	000ba783          	lw	a5,0(s7)
			94: R_RISCV_LO12_I	ble_memcpy_ptr
			94: R_RISCV_RELAX	*ABS*
  98:	08148593          	addi	a1,s1,129
  9c:	4641                	li	a2,16
  9e:	855a                	mv	a0,s6
  a0:	9782                	jalr	a5

000000a2 <.LVL50>:
  a2:	000ba783          	lw	a5,0(s7)
			a2: R_RISCV_LO12_I	ble_memcpy_ptr
			a2: R_RISCV_RELAX	*ABS*
  a6:	4641                	li	a2,16
  a8:	07148593          	addi	a1,s1,113
  ac:	010b0513          	addi	a0,s6,16
  b0:	9782                	jalr	a5

000000b2 <.LVL51>:
  b2:	855a                	mv	a0,s6
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	ble_ke_msg_send
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL51+0x2>

000000bc <.LBB359>:
  bc:	00a9c783          	lbu	a5,10(s3)
  c0:	0099c703          	lbu	a4,9(s3)
  c4:	07a2                	slli	a5,a5,0x8
  c6:	8fd9                	or	a5,a5,a4

000000c8 <.LBB365>:
  c8:	05c00713          	li	a4,92
  cc:	02e40433          	mul	s0,s0,a4

000000d0 <.LVL54>:
  d0:	28008737          	lui	a4,0x28008
  d4:	0c870693          	addi	a3,a4,200 # 280080c8 <.LASF870+0x28003412>
  d8:	0ca70713          	addi	a4,a4,202
  dc:	96a2                	add	a3,a3,s0
  de:	00f69023          	sh	a5,0(a3)

000000e2 <.LBB369>:
  e2:	00c9c783          	lbu	a5,12(s3)
  e6:	00b9c683          	lbu	a3,11(s3)

000000ea <.LBB370>:
  ea:	943a                	add	s0,s0,a4

000000ec <.LBB371>:
  ec:	07a2                	slli	a5,a5,0x8
  ee:	8fd5                	or	a5,a5,a3

000000f0 <.LBB372>:
  f0:	00f41023          	sh	a5,0(s0) # 0 <llcp_enc_rsp_handler>

000000f4 <.LBB373>:
  f4:	300026f3          	csrr	a3,mstatus

000000f8 <.LBB375>:
  f8:	300477f3          	csrrci	a5,mstatus,8

000000fc <.LBE375>:
  fc:	9956                	add	s2,s2,s5
  fe:	00092703          	lw	a4,0(s2) # 0 <llcp_enc_rsp_handler>
 102:	0a574783          	lbu	a5,165(a4)
 106:	0087e793          	ori	a5,a5,8
 10a:	0af702a3          	sb	a5,165(a4)
 10e:	30069073          	csrw	mstatus,a3

00000112 <.LBE373>:
 112:	47b9                	li	a5,14
 114:	6605                	lui	a2,0x1
 116:	0af481a3          	sb	a5,163(s1)
 11a:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
 11e:	85d2                	mv	a1,s4
 120:	10200513          	li	a0,258
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	ble_ke_timer_set
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.LBE373+0x12>

0000012c <.L23>:
 12c:	50b2                	lw	ra,44(sp)
 12e:	5422                	lw	s0,40(sp)
 130:	5492                	lw	s1,36(sp)

00000132 <.LVL61>:
 132:	5902                	lw	s2,32(sp)
 134:	49f2                	lw	s3,28(sp)

00000136 <.LVL62>:
 136:	4a62                	lw	s4,24(sp)
 138:	4ad2                	lw	s5,20(sp)
 13a:	4b42                	lw	s6,16(sp)
 13c:	4bb2                	lw	s7,12(sp)
 13e:	4501                	li	a0,0
 140:	6145                	addi	sp,sp,48
 142:	8082                	ret

Disassembly of section .text.llc_llcp_reject_ind:

00000000 <llc_llcp_reject_ind>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	d452                	sw	s4,40(sp)
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	llc_env
			6: R_RISCV_RELAX	*ABS*
   a:	8a2a                	mv	s4,a0
   c:	852e                	mv	a0,a1

0000000e <.LVL64>:
   e:	c636                	sw	a3,12(sp)
  10:	de06                	sw	ra,60(sp)
  12:	da26                	sw	s1,52(sp)
  14:	d84a                	sw	s2,48(sp)
  16:	d64e                	sw	s3,44(sp)
  18:	d256                	sw	s5,36(sp)
  1a:	d05a                	sw	s6,32(sp)
  1c:	ce5e                	sw	s7,28(sp)
  1e:	84ae                	mv	s1,a1
  20:	8b32                	mv	s6,a2
  22:	00040a93          	mv	s5,s0
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_state_get
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL64+0x18>

0000002e <.LVL65>:
  2e:	002a1b93          	slli	s7,s4,0x2
  32:	89aa                	mv	s3,a0

00000034 <.LVL66>:
  34:	9ade                	add	s5,s5,s7
  36:	85a6                	mv	a1,s1
  38:	10200513          	li	a0,258
  3c:	000aa903          	lw	s2,0(s5)

00000040 <.LVL67>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	ble_ke_timer_clear
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL67>

00000048 <.LBB377>:
  48:	0019f793          	andi	a5,s3,1
  4c:	00040413          	mv	s0,s0
			4c: R_RISCV_LO12_I	llc_env
			4c: R_RISCV_RELAX	*ABS*
  50:	46b2                	lw	a3,12(sp)
  52:	18078163          	beqz	a5,1d4 <.L32>
			52: R_RISCV_BRANCH	.L32
  56:	0a394783          	lbu	a5,163(s2)
  5a:	4731                	li	a4,12
  5c:	17f1                	addi	a5,a5,-4
  5e:	0ff7f793          	andi	a5,a5,255
  62:	1af76263          	bltu	a4,a5,206 <.L33>
			62: R_RISCV_BRANCH	.L33
  66:	00000737          	lui	a4,0x0
			66: R_RISCV_HI20	.L35
			66: R_RISCV_RELAX	*ABS*
  6a:	078a                	slli	a5,a5,0x2
  6c:	00070713          	mv	a4,a4
			6c: R_RISCV_LO12_I	.L35
			6c: R_RISCV_RELAX	*ABS*
  70:	97ba                	add	a5,a5,a4
  72:	439c                	lw	a5,0(a5)
  74:	8782                	jr	a5

00000076 <.L34>:
  76:	85a6                	mv	a1,s1
  78:	10200513          	li	a0,258
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	ble_ke_timer_clear
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L34+0x6>

00000084 <.LVL69>:
  84:	8552                	mv	a0,s4
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	lld_get_mode
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL69+0x2>

0000008e <.LVL70>:
  8e:	478d                	li	a5,3
  90:	10f51863          	bne	a0,a5,1a0 <.L31>
			90: R_RISCV_BRANCH	.L31
  94:	945e                	add	s0,s0,s7
  96:	4018                	lw	a4,0(s0)
  98:	0a574783          	lbu	a5,165(a4) # a5 <.LVL70+0x17>
  9c:	8bc1                	andi	a5,a5,16
  9e:	10079163          	bnez	a5,1a0 <.L31>
			9e: R_RISCV_BRANCH	.L31
  a2:	865a                	mv	a2,s6
  a4:	8552                	mv	a0,s4
  a6:	0a0702a3          	sb	zero,165(a4)
  aa:	4581                	li	a1,0

000000ac <.LBB379>:
  ac:	09e2                	slli	s3,s3,0x18

000000ae <.LBE379>:
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	llc_common_enc_change_evt_send
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LBE379>

000000b6 <.LBB382>:
  b6:	4189d993          	srai	s3,s3,0x18

000000ba <.LVL73>:
  ba:	0fe9f593          	andi	a1,s3,254
  be:	8526                	mv	a0,s1
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	ble_ke_state_set
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.LVL73+0x6>

000000c8 <.LBE382>:
  c8:	0a0901a3          	sb	zero,163(s2)

000000cc <.LBB383>:
  cc:	5462                	lw	s0,56(sp)
  ce:	50f2                	lw	ra,60(sp)
  d0:	5942                	lw	s2,48(sp)

000000d2 <.LVL76>:
  d2:	5a22                	lw	s4,40(sp)
  d4:	5a92                	lw	s5,36(sp)
  d6:	5b02                	lw	s6,32(sp)
  d8:	4bf2                	lw	s7,28(sp)

000000da <.LBB387>:
  da:	0fa9f593          	andi	a1,s3,250
  de:	8526                	mv	a0,s1

000000e0 <.LBE387>:
  e0:	59b2                	lw	s3,44(sp)

000000e2 <.LVL77>:
  e2:	54d2                	lw	s1,52(sp)

000000e4 <.LVL78>:
  e4:	6121                	addi	sp,sp,64

000000e6 <.LBB388>:
  e6:	00000317          	auipc	t1,0x0
			e6: R_RISCV_CALL	ble_ke_state_set
			e6: R_RISCV_RELAX	*ABS*
  ea:	00030067          	jr	t1 # e6 <.LBB388>

000000ee <.L37>:
  ee:	10068c63          	beqz	a3,206 <.L33>
			ee: R_RISCV_BRANCH	.L33
  f2:	01740ab3          	add	s5,s0,s7
  f6:	000aa783          	lw	a5,0(s5)
  fa:	0a57c783          	lbu	a5,165(a5)
  fe:	8ba1                	andi	a5,a5,8
 100:	10079363          	bnez	a5,206 <.L33>
			100: R_RISCV_BRANCH	.L33
 104:	85a6                	mv	a1,s1
 106:	10200513          	li	a0,258
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	ble_ke_timer_clear
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.L37+0x1c>

00000112 <.LVL80>:
 112:	47e9                	li	a5,26
 114:	02fb1e63          	bne	s6,a5,150 <.L42>
			114: R_RISCV_BRANCH	.L42
 118:	8552                	mv	a0,s4
 11a:	00000097          	auipc	ra,0x0
			11a: R_RISCV_CALL	lld_get_mode
			11a: R_RISCV_RELAX	*ABS*
 11e:	000080e7          	jalr	ra # 11a <.LVL80+0x8>

00000122 <.LVL81>:
 122:	478d                	li	a5,3
 124:	02f51663          	bne	a0,a5,150 <.L42>
			124: R_RISCV_BRANCH	.L42

00000128 <.LBB389>:
 128:	000aa783          	lw	a5,0(s5)
 12c:	4388                	lw	a0,0(a5)

0000012e <.LBE390>:
 12e:	4789                	li	a5,2
 130:	00f50023          	sb	a5,0(a0)

00000134 <.LBE389>:
 134:	5462                	lw	s0,56(sp)
 136:	50f2                	lw	ra,60(sp)
 138:	54d2                	lw	s1,52(sp)
 13a:	5942                	lw	s2,48(sp)

0000013c <.LVL84>:
 13c:	59b2                	lw	s3,44(sp)

0000013e <.LVL85>:
 13e:	5a22                	lw	s4,40(sp)
 140:	5a92                	lw	s5,36(sp)
 142:	5b02                	lw	s6,32(sp)
 144:	4bf2                	lw	s7,28(sp)
 146:	6121                	addi	sp,sp,64

00000148 <.LBB392>:
 148:	00000317          	auipc	t1,0x0
			148: R_RISCV_CALL	ble_ke_msg_send
			148: R_RISCV_RELAX	*ABS*
 14c:	00030067          	jr	t1 # 148 <.LBB392>

00000150 <.L42>:
 150:	05c95783          	lhu	a5,92(s2)
 154:	0407f713          	andi	a4,a5,64
 158:	c70d                	beqz	a4,182 <.L44>
			158: R_RISCV_RVC_BRANCH	.L44
 15a:	fbf7f793          	andi	a5,a5,-65
 15e:	04f91e23          	sh	a5,92(s2)
 162:	4509                	li	a0,2
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	llm_util_check_evt_mask
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.L42+0x14>

0000016c <.LVL87>:
 16c:	c919                	beqz	a0,182 <.L44>
			16c: R_RISCV_RVC_BRANCH	.L44

0000016e <.LBB393>:
 16e:	01092603          	lw	a2,16(s2)
 172:	85d2                	mv	a1,s4
 174:	855a                	mv	a0,s6
 176:	02860613          	addi	a2,a2,40

0000017a <.LVL89>:
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	llc_con_update_complete_send
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.LVL89>

00000182 <.L44>:
 182:	4581                	li	a1,0
 184:	8552                	mv	a0,s4
 186:	00000097          	auipc	ra,0x0
			186: R_RISCV_CALL	llc_util_clear_operation_ptr
			186: R_RISCV_RELAX	*ABS*
 18a:	000080e7          	jalr	ra # 186 <.L44+0x4>

0000018e <.L62>:
 18e:	0fe9f593          	andi	a1,s3,254
 192:	8526                	mv	a0,s1
 194:	00000097          	auipc	ra,0x0
			194: R_RISCV_CALL	ble_ke_state_set
			194: R_RISCV_RELAX	*ABS*
 198:	000080e7          	jalr	ra # 194 <.L62+0x6>

0000019c <.LBE396>:
 19c:	0a0901a3          	sb	zero,163(s2)

000001a0 <.L31>:
 1a0:	50f2                	lw	ra,60(sp)
 1a2:	5462                	lw	s0,56(sp)
 1a4:	54d2                	lw	s1,52(sp)
 1a6:	5942                	lw	s2,48(sp)

000001a8 <.LVL94>:
 1a8:	59b2                	lw	s3,44(sp)
 1aa:	5a22                	lw	s4,40(sp)
 1ac:	5a92                	lw	s5,36(sp)
 1ae:	5b02                	lw	s6,32(sp)
 1b0:	4bf2                	lw	s7,28(sp)
 1b2:	6121                	addi	sp,sp,64
 1b4:	8082                	ret

000001b6 <.L39>:
 1b6:	017407b3          	add	a5,s0,s7
 1ba:	439c                	lw	a5,0(a5)
 1bc:	0a57c783          	lbu	a5,165(a5)
 1c0:	8ba1                	andi	a5,a5,8
 1c2:	e3b1                	bnez	a5,206 <.L33>
			1c2: R_RISCV_RVC_BRANCH	.L33
 1c4:	85a6                	mv	a1,s1
 1c6:	10200513          	li	a0,258
 1ca:	00000097          	auipc	ra,0x0
			1ca: R_RISCV_CALL	ble_ke_timer_clear
			1ca: R_RISCV_RELAX	*ABS*
 1ce:	000080e7          	jalr	ra # 1ca <.L39+0x14>

000001d2 <.LVL96>:
 1d2:	bf75                	j	18e <.L62>
			1d2: R_RISCV_RVC_JUMP	.L62

000001d4 <.L32>:
 1d4:	0029f793          	andi	a5,s3,2
 1d8:	c79d                	beqz	a5,206 <.L33>
			1d8: R_RISCV_RVC_BRANCH	.L33
 1da:	c695                	beqz	a3,206 <.L33>
			1da: R_RISCV_RVC_BRANCH	.L33
 1dc:	000aa783          	lw	a5,0(s5)
 1e0:	0a57c783          	lbu	a5,165(a5)
 1e4:	8ba1                	andi	a5,a5,8
 1e6:	e385                	bnez	a5,206 <.L33>
			1e6: R_RISCV_RVC_BRANCH	.L33
 1e8:	0a494703          	lbu	a4,164(s2)
 1ec:	478d                	li	a5,3
 1ee:	faf719e3          	bne	a4,a5,1a0 <.L31>
			1ee: R_RISCV_BRANCH	.L31

000001f2 <.LBB400>:
 1f2:	0fd9f593          	andi	a1,s3,253
 1f6:	8526                	mv	a0,s1
 1f8:	00000097          	auipc	ra,0x0
			1f8: R_RISCV_CALL	ble_ke_state_set
			1f8: R_RISCV_RELAX	*ABS*
 1fc:	000080e7          	jalr	ra # 1f8 <.LBB400+0x6>

00000200 <.LBE400>:
 200:	0a090223          	sb	zero,164(s2)
 204:	bf71                	j	1a0 <.L31>
			204: R_RISCV_RVC_JUMP	.L31

00000206 <.L33>:
 206:	945e                	add	s0,s0,s7
 208:	401c                	lw	a5,0(s0)
 20a:	0a57c783          	lbu	a5,165(a5)
 20e:	8ba1                	andi	a5,a5,8
 210:	dbc1                	beqz	a5,1a0 <.L31>
			210: R_RISCV_RVC_BRANCH	.L31
 212:	5462                	lw	s0,56(sp)
 214:	50f2                	lw	ra,60(sp)
 216:	54d2                	lw	s1,52(sp)
 218:	5942                	lw	s2,48(sp)

0000021a <.LVL101>:
 21a:	59b2                	lw	s3,44(sp)

0000021c <.LVL102>:
 21c:	5a92                	lw	s5,36(sp)
 21e:	5b02                	lw	s6,32(sp)
 220:	4bf2                	lw	s7,28(sp)
 222:	8552                	mv	a0,s4
 224:	5a22                	lw	s4,40(sp)
 226:	03d00593          	li	a1,61
 22a:	6121                	addi	sp,sp,64
 22c:	00000317          	auipc	t1,0x0
			22c: R_RISCV_CALL	llc_util_dicon_procedure
			22c: R_RISCV_RELAX	*ABS*
 230:	00030067          	jr	t1 # 22c <.LVL102+0x10>

Disassembly of section .text.llcp_reject_ind_ext_handler:

00000000 <llcp_reject_ind_ext_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0026c603          	lbu	a2,2(a3)

00000008 <.LVL105>:
   8:	4685                	li	a3,1

0000000a <.LVL106>:
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	llc_llcp_reject_ind
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL106>

00000012 <.LVL107>:
  12:	40b2                	lw	ra,12(sp)
  14:	4501                	li	a0,0
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

Disassembly of section .text.llcp_reject_ind_handler:

00000000 <llcp_reject_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0016c603          	lbu	a2,1(a3)

00000008 <.LVL109>:
   8:	4681                	li	a3,0

0000000a <.LVL110>:
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	llc_llcp_reject_ind
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL110>

00000012 <.LVL111>:
  12:	40b2                	lw	ra,12(sp)
  14:	4501                	li	a0,0
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

Disassembly of section .text.llcp_pause_enc_req_handler:

00000000 <llcp_pause_enc_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL113>:
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c452                	sw	s4,8(sp)
  12:	c256                	sw	s5,4(sp)
  14:	842e                	mv	s0,a1
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL113+0xe>

0000001e <.LVL114>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00078713          	mv	a4,a5
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00249993          	slli	s3,s1,0x2
  2a:	974e                	add	a4,a4,s3
  2c:	00072903          	lw	s2,0(a4)

00000030 <.LVL115>:
  30:	0a594703          	lbu	a4,165(s2)
  34:	8b21                	andi	a4,a4,8
  36:	c315                	beqz	a4,5a <.L68>
			36: R_RISCV_RVC_BRANCH	.L68
  38:	03d00593          	li	a1,61
  3c:	8526                	mv	a0,s1

0000003e <.LVL116>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	llc_util_dicon_procedure
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL116>

00000046 <.L69>:
  46:	40f2                	lw	ra,28(sp)
  48:	4462                	lw	s0,24(sp)
  4a:	44d2                	lw	s1,20(sp)
  4c:	4942                	lw	s2,16(sp)

0000004e <.LVL118>:
  4e:	49b2                	lw	s3,12(sp)
  50:	4a22                	lw	s4,8(sp)
  52:	4a92                	lw	s5,4(sp)
  54:	4501                	li	a0,0
  56:	6105                	addi	sp,sp,32
  58:	8082                	ret

0000005a <.L68>:
  5a:	8a2a                	mv	s4,a0
  5c:	8526                	mv	a0,s1

0000005e <.LVL120>:
  5e:	00078a93          	mv	s5,a5
			5e: R_RISCV_LO12_I	llc_env
			5e: R_RISCV_RELAX	*ABS*
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	lld_get_mode
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL120+0x4>

0000006a <.LVL121>:
  6a:	4791                	li	a5,4
  6c:	fcf51de3          	bne	a0,a5,46 <.L69>
			6c: R_RISCV_BRANCH	.L69

00000070 <.LBB402>:
  70:	002a7793          	andi	a5,s4,2
  74:	fbe9                	bnez	a5,46 <.L69>
			74: R_RISCV_RVC_BRANCH	.L69

00000076 <.LBB404>:
  76:	002a6493          	ori	s1,s4,2
  7a:	0ff4f493          	andi	s1,s1,255

0000007e <.LVL124>:
  7e:	85a6                	mv	a1,s1
  80:	8522                	mv	a0,s0
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	ble_ke_state_set
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL124+0x4>

0000008a <.LBB414>:
  8a:	001a7793          	andi	a5,s4,1
  8e:	cb81                	beqz	a5,9e <.L70>
			8e: R_RISCV_RVC_BRANCH	.L70
  90:	85a2                	mv	a1,s0
  92:	10200513          	li	a0,258
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	ble_ke_timer_clear
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LBB414+0xc>

0000009e <.L70>:
  9e:	85a6                	mv	a1,s1
  a0:	8522                	mv	a0,s0
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	ble_ke_state_set
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.L70+0x4>

000000aa <.LBB409>:
  aa:	006a6593          	ori	a1,s4,6
  ae:	0ff5f593          	andi	a1,a1,255
  b2:	8522                	mv	a0,s0
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	ble_ke_state_set
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LBB409+0xa>

000000bc <.LBE409>:
  bc:	4795                	li	a5,5
  be:	0af90223          	sb	a5,164(s2)

000000c2 <.LBB411>:
  c2:	300024f3          	csrr	s1,mstatus

000000c6 <.LBB413>:
  c6:	300477f3          	csrrci	a5,mstatus,8

000000ca <.LBE413>:
  ca:	013a87b3          	add	a5,s5,s3
  ce:	4398                	lw	a4,0(a5)
  d0:	0a574783          	lbu	a5,165(a4)
  d4:	00c7e793          	ori	a5,a5,12
  d8:	0af702a3          	sb	a5,165(a4)
  dc:	01092503          	lw	a0,16(s2)
  e0:	00000097          	auipc	ra,0x0
			e0: R_RISCV_CALL	lld_util_get_tx_pkt_cnt
			e0: R_RISCV_RELAX	*ABS*
  e4:	000080e7          	jalr	ra # e0 <.LBE413+0x16>

000000e8 <.LVL131>:
  e8:	30049073          	csrw	mstatus,s1

000000ec <.LBE411>:
  ec:	c901                	beqz	a0,fc <.L71>
			ec: R_RISCV_RVC_BRANCH	.L71
  ee:	05c95783          	lhu	a5,92(s2)
  f2:	0047e793          	ori	a5,a5,4
  f6:	04f91e23          	sh	a5,92(s2)
  fa:	b7b1                	j	46 <.L69>
			fa: R_RISCV_RVC_JUMP	.L69

000000fc <.L71>:
  fc:	8622                	mv	a2,s0
  fe:	85a2                	mv	a1,s0
 100:	10600513          	li	a0,262

00000104 <.LVL132>:
 104:	00000097          	auipc	ra,0x0
			104: R_RISCV_CALL	ble_ke_msg_send_basic
			104: R_RISCV_RELAX	*ABS*
 108:	000080e7          	jalr	ra # 104 <.LVL132>

0000010c <.LVL133>:
 10c:	bf2d                	j	46 <.L69>
			10c: R_RISCV_RVC_JUMP	.L69

Disassembly of section .text.llcp_start_enc_req_handler:

00000000 <llcp_start_enc_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	89aa                	mv	s3,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL135>:
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	892e                	mv	s2,a1
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ble_ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL135+0xa>

0000001a <.LVL136>:
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	llc_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00299713          	slli	a4,s3,0x2
  22:	00078793          	mv	a5,a5
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	97ba                	add	a5,a5,a4
  28:	4380                	lw	s0,0(a5)
  2a:	84aa                	mv	s1,a0

0000002c <.LVL137>:
  2c:	0a544783          	lbu	a5,165(s0) # a5 <.LBB422+0x1>
  30:	8ba1                	andi	a5,a5,8
  32:	cf91                	beqz	a5,4e <.L77>
			32: R_RISCV_RVC_BRANCH	.L77
  34:	0a344783          	lbu	a5,163(s0)
  38:	17c9                	addi	a5,a5,-14
  3a:	0fd7f793          	andi	a5,a5,253
  3e:	cb81                	beqz	a5,4e <.L77>
			3e: R_RISCV_RVC_BRANCH	.L77
  40:	03d00593          	li	a1,61
  44:	854e                	mv	a0,s3
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	llc_util_dicon_procedure
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL137+0x1a>

0000004e <.L77>:
  4e:	8885                	andi	s1,s1,1

00000050 <.LVL139>:
  50:	0a344783          	lbu	a5,163(s0)
  54:	4739                	li	a4,14
  56:	c095                	beqz	s1,7a <.L78>
			56: R_RISCV_RVC_BRANCH	.L78
  58:	02e78363          	beq	a5,a4,7e <.L79>
			58: R_RISCV_BRANCH	.L79
  5c:	4741                	li	a4,16
  5e:	02e79363          	bne	a5,a4,84 <.L80>
			5e: R_RISCV_BRANCH	.L80

00000062 <.L81>:
  62:	47c5                	li	a5,17
  64:	0af401a3          	sb	a5,163(s0)
  68:	864a                	mv	a2,s2
  6a:	85ca                	mv	a1,s2
  6c:	10600513          	li	a0,262
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	ble_ke_msg_send_basic
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.L81+0xe>

00000078 <.LVL140>:
  78:	a031                	j	84 <.L80>
			78: R_RISCV_RVC_JUMP	.L80

0000007a <.L78>:
  7a:	fee794e3          	bne	a5,a4,62 <.L81>
			7a: R_RISCV_BRANCH	.L81

0000007e <.L79>:
  7e:	47bd                	li	a5,15
  80:	0af401a3          	sb	a5,163(s0)

00000084 <.L80>:
  84:	40f2                	lw	ra,28(sp)
  86:	4462                	lw	s0,24(sp)

00000088 <.LVL141>:
  88:	44d2                	lw	s1,20(sp)
  8a:	4942                	lw	s2,16(sp)
  8c:	49b2                	lw	s3,12(sp)
  8e:	4501                	li	a0,0
  90:	6105                	addi	sp,sp,32
  92:	8082                	ret

Disassembly of section .text.llcp_enc_req_handler:

00000000 <llcp_enc_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	c452                	sw	s4,8(sp)
   4:	8a2a                	mv	s4,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL143>:
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c256                	sw	s5,4(sp)
  12:	c05a                	sw	s6,0(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	892e                	mv	s2,a1
  18:	89b6                	mv	s3,a3
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_state_get
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL143+0x12>

00000022 <.LVL144>:
  22:	00000737          	lui	a4,0x0
			22: R_RISCV_HI20	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00070793          	mv	a5,a4
			26: R_RISCV_LO12_I	llc_env
			26: R_RISCV_RELAX	*ABS*
  2a:	002a1a93          	slli	s5,s4,0x2
  2e:	97d6                	add	a5,a5,s5
  30:	4380                	lw	s0,0(a5)
  32:	84aa                	mv	s1,a0

00000034 <.LVL145>:
  34:	00070b13          	mv	s6,a4
			34: R_RISCV_LO12_I	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	0a544783          	lbu	a5,165(s0)
  3c:	8ba1                	andi	a5,a5,8
  3e:	cb8d                	beqz	a5,70 <.L90>
			3e: R_RISCV_RVC_BRANCH	.L90
  40:	0a444703          	lbu	a4,164(s0)
  44:	479d                	li	a5,7
  46:	02f70563          	beq	a4,a5,70 <.L90>
			46: R_RISCV_BRANCH	.L90
  4a:	03d00593          	li	a1,61
  4e:	8552                	mv	a0,s4
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	llc_util_dicon_procedure
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL145+0x1c>

00000058 <.LVL146>:
  58:	4781                	li	a5,0

0000005a <.L89>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	4462                	lw	s0,24(sp)

0000005e <.LVL148>:
  5e:	44d2                	lw	s1,20(sp)
  60:	4942                	lw	s2,16(sp)
  62:	49b2                	lw	s3,12(sp)
  64:	4a22                	lw	s4,8(sp)
  66:	4a92                	lw	s5,4(sp)
  68:	4b02                	lw	s6,0(sp)
  6a:	853e                	mv	a0,a5
  6c:	6105                	addi	sp,sp,32
  6e:	8082                	ret

00000070 <.L90>:
  70:	8552                	mv	a0,s4
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	lld_get_mode
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L90+0x2>

0000007a <.LVL150>:
  7a:	4711                	li	a4,4
  7c:	4781                	li	a5,0
  7e:	fce51ee3          	bne	a0,a4,5a <.L89>
			7e: R_RISCV_BRANCH	.L89

00000082 <.LBB417>:
  82:	0024f713          	andi	a4,s1,2
  86:	c711                	beqz	a4,92 <.L92>
			86: R_RISCV_RVC_BRANCH	.L92
  88:	0a444683          	lbu	a3,164(s0)
  8c:	471d                	li	a4,7
  8e:	fce696e3          	bne	a3,a4,5a <.L89>
			8e: R_RISCV_BRANCH	.L89

00000092 <.L92>:
  92:	0024e593          	ori	a1,s1,2
  96:	854a                	mv	a0,s2
  98:	0ff5f593          	andi	a1,a1,255
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	ble_ke_state_set
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.L92+0xa>

000000a4 <.LBB422>:
  a4:	0064e593          	ori	a1,s1,6
  a8:	854a                	mv	a0,s2
  aa:	0ff5f593          	andi	a1,a1,255
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	ble_ke_state_set
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LBB422+0xa>

000000b6 <.LBE422>:
  b6:	47a1                	li	a5,8

000000b8 <.LBB424>:
  b8:	9ada                	add	s5,s5,s6

000000ba <.LBE424>:
  ba:	0af40223          	sb	a5,164(s0)

000000be <.LBB428>:
  be:	000aa783          	lw	a5,0(s5)

000000c2 <.LBE428>:
  c2:	19f9                	addi	s3,s3,-2

000000c4 <.LVL157>:
  c4:	85ca                	mv	a1,s2

000000c6 <.LBB429>:
  c6:	0137a423          	sw	s3,8(a5) # 8 <.LVL143>

000000ca <.LBE429>:
  ca:	10200513          	li	a0,258
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	ble_ke_timer_clear
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LBE429+0x4>

000000d6 <.LBB430>:
  d6:	300029f3          	csrr	s3,mstatus

000000da <.LBB432>:
  da:	300477f3          	csrrci	a5,mstatus,8

000000de <.LBE432>:
  de:	000aa703          	lw	a4,0(s5)
  e2:	0a574783          	lbu	a5,165(a4) # a5 <.LBB422+0x1>
  e6:	00c7e793          	ori	a5,a5,12
  ea:	0af702a3          	sb	a5,165(a4)
  ee:	4808                	lw	a0,16(s0)
  f0:	00000097          	auipc	ra,0x0
			f0: R_RISCV_CALL	lld_util_get_tx_pkt_cnt
			f0: R_RISCV_RELAX	*ABS*
  f4:	000080e7          	jalr	ra # f0 <.LBE432+0x12>

000000f8 <.LVL162>:
  f8:	30099073          	csrw	mstatus,s3

000000fc <.LBE430>:
  fc:	c909                	beqz	a0,10e <.L93>
			fc: R_RISCV_RVC_BRANCH	.L93
  fe:	05c45783          	lhu	a5,92(s0)
 102:	0047e793          	ori	a5,a5,4
 106:	04f41e23          	sh	a5,92(s0)

0000010a <.L103>:
 10a:	4785                	li	a5,1
 10c:	b7b9                	j	5a <.L89>
			10c: R_RISCV_RVC_JUMP	.L89

0000010e <.L93>:
 10e:	864a                	mv	a2,s2
 110:	85ca                	mv	a1,s2
 112:	10600513          	li	a0,262

00000116 <.LVL165>:
 116:	00000097          	auipc	ra,0x0
			116: R_RISCV_CALL	ble_ke_msg_send_basic
			116: R_RISCV_RELAX	*ABS*
 11a:	000080e7          	jalr	ra # 116 <.LVL165>

0000011e <.LVL166>:
 11e:	b7f5                	j	10a <.L103>
			11e: R_RISCV_RVC_JUMP	.L103

Disassembly of section .text.llcp_unknown_rsp_handler:

00000000 <llcp_unknown_rsp_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	892a                	mv	s2,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL168>:
   8:	d422                	sw	s0,40(sp)
   a:	d226                	sw	s1,36(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c636                	sw	a3,12(sp)
  14:	d606                	sw	ra,44(sp)
  16:	84ae                	mv	s1,a1
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL168+0x10>

00000020 <.LVL169>:
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	llc_env
			20: R_RISCV_RELAX	*ABS*
  24:	00078713          	mv	a4,a5
			24: R_RISCV_LO12_I	llc_env
			24: R_RISCV_RELAX	*ABS*
  28:	00291a93          	slli	s5,s2,0x2
  2c:	9756                	add	a4,a4,s5
  2e:	4300                	lw	s0,0(a4)
  30:	89aa                	mv	s3,a0

00000032 <.LVL170>:
  32:	00078a13          	mv	s4,a5
			32: R_RISCV_LO12_I	llc_env
			32: R_RISCV_RELAX	*ABS*
  36:	0a544703          	lbu	a4,165(s0)
  3a:	46b2                	lw	a3,12(sp)
  3c:	00877613          	andi	a2,a4,8
  40:	c61d                	beqz	a2,6e <.L105>
			40: R_RISCV_RVC_BRANCH	.L105
  42:	0a344603          	lbu	a2,163(s0)
  46:	47b5                	li	a5,13
  48:	02f60363          	beq	a2,a5,6e <.L105>
			48: R_RISCV_BRANCH	.L105
  4c:	03d00593          	li	a1,61
  50:	854a                	mv	a0,s2

00000052 <.LVL171>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	llc_util_dicon_procedure
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL171>

0000005a <.L106>:
  5a:	50b2                	lw	ra,44(sp)
  5c:	5422                	lw	s0,40(sp)

0000005e <.LVL173>:
  5e:	5492                	lw	s1,36(sp)
  60:	5902                	lw	s2,32(sp)
  62:	49f2                	lw	s3,28(sp)
  64:	4a62                	lw	s4,24(sp)
  66:	4ad2                	lw	s5,20(sp)
  68:	4501                	li	a0,0
  6a:	6145                	addi	sp,sp,48

0000006c <.LVL174>:
  6c:	8082                	ret

0000006e <.L105>:
  6e:	0019f793          	andi	a5,s3,1
  72:	d7e5                	beqz	a5,5a <.L106>
			72: R_RISCV_RVC_BRANCH	.L106
  74:	0a344783          	lbu	a5,163(s0)
  78:	4631                	li	a2,12
  7a:	17fd                	addi	a5,a5,-1
  7c:	0ff7f793          	andi	a5,a5,255
  80:	fcf66de3          	bltu	a2,a5,5a <.L106>
			80: R_RISCV_BRANCH	.L106
  84:	00000637          	lui	a2,0x0
			84: R_RISCV_HI20	.L108
			84: R_RISCV_RELAX	*ABS*
  88:	078a                	slli	a5,a5,0x2
  8a:	00060613          	mv	a2,a2
			8a: R_RISCV_LO12_I	.L108
			8a: R_RISCV_RELAX	*ABS*
  8e:	97b2                	add	a5,a5,a2
  90:	439c                	lw	a5,0(a5)
  92:	8782                	jr	a5

00000094 <.L107>:
  94:	8b41                	andi	a4,a4,16
  96:	f371                	bnez	a4,5a <.L106>
			96: R_RISCV_RVC_BRANCH	.L106
  98:	0a0402a3          	sb	zero,165(s0)
  9c:	4669                	li	a2,26
  9e:	4581                	li	a1,0
  a0:	854a                	mv	a0,s2

000000a2 <.LVL176>:
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	llc_common_enc_change_evt_send
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL176>

000000aa <.L131>:
  aa:	0fe9f593          	andi	a1,s3,254
  ae:	8526                	mv	a0,s1
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	ble_ke_state_set
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.L131+0x6>

000000b8 <.LBE437>:
  b8:	0a0401a3          	sb	zero,163(s0)
  bc:	bf79                	j	5a <.L106>
			bc: R_RISCV_RVC_JUMP	.L106

000000be <.L112>:
  be:	0016c703          	lbu	a4,1(a3)
  c2:	47b9                	li	a5,14
  c4:	f8f71be3          	bne	a4,a5,5a <.L106>
			c4: R_RISCV_BRANCH	.L106
  c8:	85a6                	mv	a1,s1
  ca:	10200513          	li	a0,258

000000ce <.LVL180>:
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	ble_ke_timer_clear
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LVL180>

000000d6 <.LVL181>:
  d6:	06940613          	addi	a2,s0,105
  da:	85ca                	mv	a1,s2
  dc:	4569                	li	a0,26
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	llc_feats_rd_event_send
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LVL181+0x8>

000000e6 <.LVL182>:
  e6:	b7d1                	j	aa <.L131>
			e6: R_RISCV_RVC_JUMP	.L131

000000e8 <.L109>:
  e8:	0016c703          	lbu	a4,1(a3)
  ec:	47bd                	li	a5,15
  ee:	f6f716e3          	bne	a4,a5,5a <.L106>
			ee: R_RISCV_BRANCH	.L106
  f2:	85a6                	mv	a1,s1
  f4:	10200513          	li	a0,258

000000f8 <.LVL184>:
  f8:	00000097          	auipc	ra,0x0
			f8: R_RISCV_CALL	ble_ke_timer_clear
			f8: R_RISCV_RELAX	*ABS*
  fc:	000080e7          	jalr	ra # f8 <.LVL184>

00000100 <.LVL185>:
 100:	854a                	mv	a0,s2
 102:	0a040323          	sb	zero,166(s0)
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	lld_get_mode
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LVL185+0x6>

0000010e <.LVL186>:
 10e:	478d                	li	a5,3
 110:	00f51e63          	bne	a0,a5,12c <.L113>
			110: R_RISCV_BRANCH	.L113

00000114 <.LBB439>:
 114:	015a07b3          	add	a5,s4,s5
 118:	439c                	lw	a5,0(a5)
 11a:	4388                	lw	a0,0(a5)

0000011c <.LBE440>:
 11c:	4789                	li	a5,2
 11e:	00f50023          	sb	a5,0(a0)
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	ble_ke_msg_send
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.LBE440+0x6>

0000012a <.LBE439>:
 12a:	bf05                	j	5a <.L106>
			12a: R_RISCV_RVC_JUMP	.L106

0000012c <.L113>:
 12c:	05c45783          	lhu	a5,92(s0)
 130:	0407f713          	andi	a4,a5,64
 134:	c705                	beqz	a4,15c <.L115>
			134: R_RISCV_RVC_BRANCH	.L115
 136:	fbf7f793          	andi	a5,a5,-65
 13a:	04f41e23          	sh	a5,92(s0)
 13e:	4509                	li	a0,2
 140:	00000097          	auipc	ra,0x0
			140: R_RISCV_CALL	llm_util_check_evt_mask
			140: R_RISCV_RELAX	*ABS*
 144:	000080e7          	jalr	ra # 140 <.L113+0x14>

00000148 <.LVL190>:
 148:	c911                	beqz	a0,15c <.L115>
			148: R_RISCV_RVC_BRANCH	.L115

0000014a <.LBB442>:
 14a:	4810                	lw	a2,16(s0)
 14c:	85ca                	mv	a1,s2
 14e:	4569                	li	a0,26
 150:	02860613          	addi	a2,a2,40 # 28 <.LVL169+0x8>

00000154 <.LVL192>:
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	llc_con_update_complete_send
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LVL192>

0000015c <.L115>:
 15c:	4581                	li	a1,0
 15e:	854a                	mv	a0,s2
 160:	00000097          	auipc	ra,0x0
			160: R_RISCV_CALL	llc_util_clear_operation_ptr
			160: R_RISCV_RELAX	*ABS*
 164:	000080e7          	jalr	ra # 160 <.L115+0x4>

00000168 <.LBB443>:
 168:	b789                	j	aa <.L131>
			168: R_RISCV_RVC_JUMP	.L131

0000016a <.L111>:
 16a:	0016c703          	lbu	a4,1(a3)
 16e:	47d1                	li	a5,20
 170:	eef715e3          	bne	a4,a5,5a <.L106>
			170: R_RISCV_BRANCH	.L106
 174:	10200513          	li	a0,258

00000178 <.LVL196>:
 178:	85a6                	mv	a1,s1
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	ble_ke_timer_clear
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.LVL196+0x2>

00000182 <.LVL197>:
 182:	4785                	li	a5,1
 184:	04f40923          	sb	a5,82(s0)
 188:	4519                	li	a0,6
 18a:	00000097          	auipc	ra,0x0
			18a: R_RISCV_CALL	llm_util_check_evt_mask
			18a: R_RISCV_RELAX	*ABS*
 18e:	000080e7          	jalr	ra # 18a <.LVL197+0x8>

00000192 <.LVL198>:
 192:	dd01                	beqz	a0,aa <.L131>
			192: R_RISCV_RVC_BRANCH	.L131
 194:	05344783          	lbu	a5,83(s0)
 198:	8b89                	andi	a5,a5,2
 19a:	fb81                	bnez	a5,aa <.L131>
			19a: R_RISCV_RVC_BRANCH	.L131

0000019c <.LBB445>:
 19c:	6505                	lui	a0,0x1
 19e:	46b1                	li	a3,12
 1a0:	03e00613          	li	a2,62
 1a4:	85ca                	mv	a1,s2
 1a6:	80450513          	addi	a0,a0,-2044 # 804 <.LASF837>
 1aa:	00000097          	auipc	ra,0x0
			1aa: R_RISCV_CALL	ble_ke_msg_alloc
			1aa: R_RISCV_RELAX	*ABS*
 1ae:	000080e7          	jalr	ra # 1aa <.LBB445+0xe>

000001b2 <.LVL199>:
 1b2:	471d                	li	a4,7
 1b4:	00e50023          	sb	a4,0(a0)

000001b8 <.LBB446>:
 1b8:	01251123          	sh	s2,2(a0)
 1bc:	04845703          	lhu	a4,72(s0)
 1c0:	00e51423          	sh	a4,8(a0)
 1c4:	05045703          	lhu	a4,80(s0)
 1c8:	00e51523          	sh	a4,10(a0)
 1cc:	04645703          	lhu	a4,70(s0)
 1d0:	00e51223          	sh	a4,4(a0)
 1d4:	04e45703          	lhu	a4,78(s0)
 1d8:	00e51323          	sh	a4,6(a0)
 1dc:	00000097          	auipc	ra,0x0
			1dc: R_RISCV_CALL	hci_send_2_host
			1dc: R_RISCV_RELAX	*ABS*
 1e0:	000080e7          	jalr	ra # 1dc <.LBB446+0x24>

000001e4 <.LVL201>:
 1e4:	05344783          	lbu	a5,83(s0)
 1e8:	0027e793          	ori	a5,a5,2
 1ec:	04f409a3          	sb	a5,83(s0)

000001f0 <.LBB447>:
 1f0:	bd6d                	j	aa <.L131>
			1f0: R_RISCV_RVC_JUMP	.L131

000001f2 <.L110>:
 1f2:	0016c703          	lbu	a4,1(a3)
 1f6:	47c9                	li	a5,18
 1f8:	e6f711e3          	bne	a4,a5,5a <.L106>
			1f8: R_RISCV_BRANCH	.L106

000001fc <.LBB449>:
 1fc:	0fe9f593          	andi	a1,s3,254
 200:	8526                	mv	a0,s1
 202:	00000097          	auipc	ra,0x0
			202: R_RISCV_CALL	ble_ke_state_set
			202: R_RISCV_RELAX	*ABS*
 206:	000080e7          	jalr	ra # 202 <.LBB449+0x6>

0000020a <.LBE449>:
 20a:	85a6                	mv	a1,s1
 20c:	0a0401a3          	sb	zero,163(s0)
 210:	10200513          	li	a0,258
 214:	00000097          	auipc	ra,0x0
			214: R_RISCV_CALL	ble_ke_timer_clear
			214: R_RISCV_RELAX	*ABS*
 218:	000080e7          	jalr	ra # 214 <.LBE449+0xa>

0000021c <.LVL206>:
 21c:	bd3d                	j	5a <.L106>
			21c: R_RISCV_RVC_JUMP	.L106

Disassembly of section .text.llc_llcp_version_ind_pdu_send:

00000000 <llc_llcp_version_ind_pdu_send>:
   0:	07af17b7          	lui	a5,0x7af1
   4:	1101                	addi	sp,sp,-32
   6:	90c78793          	addi	a5,a5,-1780 # 7af090c <.LASF870+0x7aebc56>
   a:	c43e                	sw	a5,8(sp)
   c:	002c                	addi	a1,sp,8
   e:	32100793          	li	a5,801
  12:	4631                	li	a2,12
  14:	0ff57513          	andi	a0,a0,255

00000018 <.LVL208>:
  18:	ce06                	sw	ra,28(sp)
  1a:	00f11623          	sh	a5,12(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	llc_llcp_send
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL208+0x6>

00000026 <.LVL209>:
  26:	40f2                	lw	ra,28(sp)
  28:	6105                	addi	sp,sp,32
  2a:	8082                	ret

Disassembly of section .text.llcp_vers_ind_handler:

00000000 <llcp_vers_ind_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL211>:
   8:	d422                	sw	s0,40(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	c636                	sw	a3,12(sp)
   e:	d606                	sw	ra,44(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	892e                	mv	s2,a1
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL211+0xc>

0000001c <.LVL212>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	llc_env
			1c: R_RISCV_RELAX	*ABS*
  20:	00249713          	slli	a4,s1,0x2
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	llc_env
			24: R_RISCV_RELAX	*ABS*
  28:	97ba                	add	a5,a5,a4
  2a:	4380                	lw	s0,0(a5)

0000002c <.LVL213>:
  2c:	46b2                	lw	a3,12(sp)
  2e:	0a544783          	lbu	a5,165(s0)
  32:	8ba1                	andi	a5,a5,8
  34:	c385                	beqz	a5,54 <.L135>
			34: R_RISCV_RVC_BRANCH	.L135
  36:	03d00593          	li	a1,61
  3a:	8526                	mv	a0,s1

0000003c <.LVL214>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	llc_util_dicon_procedure
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL214>

00000044 <.L136>:
  44:	50b2                	lw	ra,44(sp)
  46:	5422                	lw	s0,40(sp)

00000048 <.LVL216>:
  48:	5492                	lw	s1,36(sp)
  4a:	5902                	lw	s2,32(sp)
  4c:	49f2                	lw	s3,28(sp)
  4e:	4501                	li	a0,0
  50:	6145                	addi	sp,sp,48

00000052 <.LVL217>:
  52:	8082                	ret

00000054 <.L135>:
  54:	0016c603          	lbu	a2,1(a3)
  58:	05c45783          	lhu	a5,92(s0)
  5c:	89aa                	mv	s3,a0
  5e:	02c40e23          	sb	a2,60(s0)
  62:	0026d603          	lhu	a2,2(a3)
  66:	4017d713          	srai	a4,a5,0x1
  6a:	0027e793          	ori	a5,a5,2
  6e:	02c41f23          	sh	a2,62(s0)
  72:	0046d683          	lhu	a3,4(a3)
  76:	04f41e23          	sh	a5,92(s0)
  7a:	00157793          	andi	a5,a0,1
  7e:	04d41023          	sh	a3,64(s0)
  82:	8b05                	andi	a4,a4,1

00000084 <.LBB452>:
  84:	cf8d                	beqz	a5,be <.L137>
			84: R_RISCV_RVC_BRANCH	.L137
  86:	0a344683          	lbu	a3,163(s0)
  8a:	4789                	li	a5,2
  8c:	02f69963          	bne	a3,a5,be <.L137>
			8c: R_RISCV_BRANCH	.L137
  90:	85ca                	mv	a1,s2
  92:	10200513          	li	a0,258

00000096 <.LVL220>:
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	ble_ke_timer_clear
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LVL220>

0000009e <.LVL221>:
  9e:	85a6                	mv	a1,s1
  a0:	4501                	li	a0,0
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	llc_version_rd_event_send
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL221+0x4>

000000aa <.LBB454>:
  aa:	0fe9f593          	andi	a1,s3,254

000000ae <.LBE454>:
  ae:	0a0401a3          	sb	zero,163(s0)

000000b2 <.LBB457>:
  b2:	854a                	mv	a0,s2
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	ble_ke_state_set
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LBB457+0x2>

000000bc <.LVL224>:
  bc:	b761                	j	44 <.L136>
			bc: R_RISCV_RVC_JUMP	.L136

000000be <.L137>:
  be:	f359                	bnez	a4,44 <.L136>
			be: R_RISCV_RVC_BRANCH	.L136
  c0:	8526                	mv	a0,s1

000000c2 <.LVL226>:
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	llc_llcp_version_ind_pdu_send
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL226>

000000ca <.LVL227>:
  ca:	bfad                	j	44 <.L136>
			ca: R_RISCV_RVC_JUMP	.L136

Disassembly of section .text.llc_llcp_ch_map_update_pdu_send:

00000000 <llc_llcp_ch_map_update_pdu_send>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1101                	addi	sp,sp,-32
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	97ba                	add	a5,a5,a4
  16:	4384                	lw	s1,0(a5)

00000018 <.LVL229>:
  18:	842a                	mv	s0,a0
  1a:	4785                	li	a5,1
  1c:	4888                	lw	a0,16(s1)

0000001e <.LVL230>:
  1e:	4589                	li	a1,2
  20:	00f10423          	sb	a5,8(sp)
  24:	02850513          	addi	a0,a0,40
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	lld_util_instant_get
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL230+0xa>

00000030 <.LVL231>:
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	ble_memcpy_ptr
			30: R_RISCV_RELAX	*ABS*
  34:	0007a783          	lw	a5,0(a5) # 0 <llc_llcp_ch_map_update_pdu_send>
			34: R_RISCV_LO12_I	ble_memcpy_ptr
			34: R_RISCV_RELAX	*ABS*
  38:	00a11723          	sh	a0,14(sp)
  3c:	06348593          	addi	a1,s1,99
  40:	4615                	li	a2,5
  42:	00910513          	addi	a0,sp,9
  46:	9782                	jalr	a5

00000048 <.LVL232>:
  48:	00814603          	lbu	a2,8(sp)
  4c:	002c                	addi	a1,sp,8
  4e:	0ff47513          	andi	a0,s0,255
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	llc_llcp_send
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL232+0xa>

0000005a <.LVL233>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	4462                	lw	s0,24(sp)
  5e:	44d2                	lw	s1,20(sp)

00000060 <.LVL234>:
  60:	6105                	addi	sp,sp,32
  62:	8082                	ret

Disassembly of section .text.llc_llcp_pause_enc_req_pdu_send:

00000000 <llc_llcp_pause_enc_req_pdu_send>:
   0:	00851593          	slli	a1,a0,0x8
   4:	0015e593          	ori	a1,a1,1
   8:	1101                	addi	sp,sp,-32
   a:	05c2                	slli	a1,a1,0x10
   c:	6605                	lui	a2,0x1
   e:	cc22                	sw	s0,24(sp)
  10:	47a9                	li	a5,10
  12:	842a                	mv	s0,a0
  14:	81c1                	srli	a1,a1,0x10
  16:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
  1a:	10200513          	li	a0,258

0000001e <.LVL236>:
  1e:	ce06                	sw	ra,28(sp)
  20:	00f10623          	sb	a5,12(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	ble_ke_timer_set
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL236+0x6>

0000002c <.LVL237>:
  2c:	00c14603          	lbu	a2,12(sp)
  30:	006c                	addi	a1,sp,12
  32:	0ff47513          	andi	a0,s0,255
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	llc_llcp_send
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL237+0xa>

0000003e <.LVL238>:
  3e:	40f2                	lw	ra,28(sp)
  40:	4462                	lw	s0,24(sp)
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

Disassembly of section .text.llc_llcp_pause_enc_rsp_pdu_send:

00000000 <llc_llcp_pause_enc_rsp_pdu_send>:
   0:	05c00713          	li	a4,92
   4:	02e50733          	mul	a4,a0,a4

00000008 <.LBE458>:
   8:	1101                	addi	sp,sp,-32
   a:	47ad                	li	a5,11
   c:	00f10623          	sb	a5,12(sp)

00000010 <.LBB462>:
  10:	280087b7          	lui	a5,0x28008
  14:	09278793          	addi	a5,a5,146 # 28008092 <.LASF870+0x280033dc>

00000018 <.LBE462>:
  18:	ce06                	sw	ra,28(sp)
  1a:	006c                	addi	a1,sp,12
  1c:	462d                	li	a2,11

0000001e <.LBB463>:
  1e:	973e                	add	a4,a4,a5
  20:	00075783          	lhu	a5,0(a4)
  24:	07c2                	slli	a5,a5,0x10
  26:	83c1                	srli	a5,a5,0x10

00000028 <.LBE463>:
  28:	eff7f793          	andi	a5,a5,-257
  2c:	07c2                	slli	a5,a5,0x10
  2e:	83c1                	srli	a5,a5,0x10

00000030 <.LBB464>:
  30:	00f71023          	sh	a5,0(a4)

00000034 <.LBE464>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	00251713          	slli	a4,a0,0x2
  3c:	00078793          	mv	a5,a5
			3c: R_RISCV_LO12_I	llc_env
			3c: R_RISCV_RELAX	*ABS*
  40:	97ba                	add	a5,a5,a4
  42:	4398                	lw	a4,0(a5)
  44:	0ff57513          	andi	a0,a0,255

00000048 <.LVL244>:
  48:	0a574783          	lbu	a5,165(a4)
  4c:	9bf5                	andi	a5,a5,-3
  4e:	0af702a3          	sb	a5,165(a4)
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	llc_llcp_send
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL244+0xa>

0000005a <.LVL245>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	6105                	addi	sp,sp,32
  5e:	8082                	ret

Disassembly of section .text.llcp_pause_enc_rsp_handler:

00000000 <llcp_pause_enc_rsp_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL247>:
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	89ae                	mv	s3,a1
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL247+0xe>

0000001e <.LVL248>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00078a13          	mv	s4,a5
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00249a93          	slli	s5,s1,0x2
  2a:	9a56                	add	s4,s4,s5
  2c:	00157713          	andi	a4,a0,1
  30:	000a2903          	lw	s2,0(s4)

00000034 <.LBB466>:
  34:	00078413          	mv	s0,a5
			34: R_RISCV_LO12_I	llc_env
			34: R_RISCV_RELAX	*ABS*

00000038 <.LBE466>:
  38:	c349                	beqz	a4,ba <.L149>
			38: R_RISCV_RVC_BRANCH	.L149
  3a:	0a394703          	lbu	a4,163(s2)
  3e:	47ad                	li	a5,11
  40:	06f71d63          	bne	a4,a5,ba <.L149>
			40: R_RISCV_BRANCH	.L149
  44:	85ce                	mv	a1,s3
  46:	10200513          	li	a0,258

0000004a <.LVL250>:
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	ble_ke_timer_clear
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL250>

00000052 <.LBB468>:
  52:	05c00713          	li	a4,92
  56:	02e48733          	mul	a4,s1,a4
  5a:	280087b7          	lui	a5,0x28008
  5e:	09278793          	addi	a5,a5,146 # 28008092 <.LASF870+0x280033dc>

00000062 <.LBE468>:
  62:	8526                	mv	a0,s1

00000064 <.LBB471>:
  64:	973e                	add	a4,a4,a5
  66:	00075783          	lhu	a5,0(a4)
  6a:	07c2                	slli	a5,a5,0x10
  6c:	83c1                	srli	a5,a5,0x10

0000006e <.LBE471>:
  6e:	cff7f793          	andi	a5,a5,-769
  72:	07c2                	slli	a5,a5,0x10
  74:	83c1                	srli	a5,a5,0x10

00000076 <.LBB472>:
  76:	00f71023          	sh	a5,0(a4)

0000007a <.LBE472>:
  7a:	47b1                	li	a5,12
  7c:	0af901a3          	sb	a5,163(s2)
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	llc_llcp_pause_enc_rsp_pdu_send
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LBE472+0x6>

00000088 <.LBB474>:
  88:	300026f3          	csrr	a3,mstatus

0000008c <.LBB476>:
  8c:	300477f3          	csrrci	a5,mstatus,8

00000090 <.LBE476>:
  90:	000a2703          	lw	a4,0(s4)
  94:	0a574783          	lbu	a5,165(a4)
  98:	9bf1                	andi	a5,a5,-4
  9a:	0087e793          	ori	a5,a5,8
  9e:	0af702a3          	sb	a5,165(a4)
  a2:	30069073          	csrw	mstatus,a3

000000a6 <.L150>:
  a6:	40f2                	lw	ra,28(sp)
  a8:	4462                	lw	s0,24(sp)
  aa:	44d2                	lw	s1,20(sp)
  ac:	4942                	lw	s2,16(sp)

000000ae <.LVL259>:
  ae:	49b2                	lw	s3,12(sp)
  b0:	4a22                	lw	s4,8(sp)
  b2:	4a92                	lw	s5,4(sp)
  b4:	4501                	li	a0,0
  b6:	6105                	addi	sp,sp,32
  b8:	8082                	ret

000000ba <.L149>:
  ba:	0a494703          	lbu	a4,164(s2)
  be:	1769                	addi	a4,a4,-6
  c0:	e72d                	bnez	a4,12a <.L151>
			c0: R_RISCV_RVC_BRANCH	.L151

000000c2 <.LBB480>:
  c2:	8105                	srli	a0,a0,0x1

000000c4 <.LBE480>:
  c4:	8905                	andi	a0,a0,1
  c6:	c135                	beqz	a0,12a <.L151>
			c6: R_RISCV_RVC_BRANCH	.L151
  c8:	85ce                	mv	a1,s3
  ca:	10200513          	li	a0,258
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	ble_ke_timer_clear
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LBE480+0xa>

000000d6 <.LBB481>:
  d6:	05c00513          	li	a0,92
  da:	02a48533          	mul	a0,s1,a0
  de:	28008737          	lui	a4,0x28008
  e2:	09270713          	addi	a4,a4,146 # 28008092 <.LASF870+0x280033dc>

000000e6 <.LBE481>:
  e6:	6605                	lui	a2,0x1
  e8:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
  ec:	85ce                	mv	a1,s3

000000ee <.LBB484>:
  ee:	953a                	add	a0,a0,a4
  f0:	00055783          	lhu	a5,0(a0)
  f4:	07c2                	slli	a5,a5,0x10
  f6:	83c1                	srli	a5,a5,0x10

000000f8 <.LBE484>:
  f8:	cff7f793          	andi	a5,a5,-769
  fc:	07c2                	slli	a5,a5,0x10
  fe:	83c1                	srli	a5,a5,0x10

00000100 <.LBB485>:
 100:	00f51023          	sh	a5,0(a0)

00000104 <.LBE485>:
 104:	015407b3          	add	a5,s0,s5
 108:	4398                	lw	a4,0(a5)
 10a:	10200513          	li	a0,258
 10e:	0a574783          	lbu	a5,165(a4)
 112:	fdc7f793          	andi	a5,a5,-36
 116:	0af702a3          	sb	a5,165(a4)
 11a:	479d                	li	a5,7
 11c:	0af90223          	sb	a5,164(s2)
 120:	00000097          	auipc	ra,0x0
			120: R_RISCV_CALL	ble_ke_timer_set
			120: R_RISCV_RELAX	*ABS*
 124:	000080e7          	jalr	ra # 120 <.LBE485+0x1c>

00000128 <.LVL266>:
 128:	bfbd                	j	a6 <.L150>
			128: R_RISCV_RVC_JUMP	.L150

0000012a <.L151>:
 12a:	0a594783          	lbu	a5,165(s2)
 12e:	8ba1                	andi	a5,a5,8
 130:	dbbd                	beqz	a5,a6 <.L150>
			130: R_RISCV_RVC_BRANCH	.L150
 132:	03d00593          	li	a1,61
 136:	8526                	mv	a0,s1
 138:	00000097          	auipc	ra,0x0
			138: R_RISCV_CALL	llc_util_dicon_procedure
			138: R_RISCV_RELAX	*ABS*
 13c:	000080e7          	jalr	ra # 138 <.L151+0xe>

00000140 <.LVL268>:
 140:	b79d                	j	a6 <.L150>
			140: R_RISCV_RVC_JUMP	.L150

Disassembly of section .text.llc_llcp_enc_req_pdu_send:

00000000 <llc_llcp_enc_req_pdu_send>:
   0:	7139                	addi	sp,sp,-64
   2:	da26                	sw	s1,52(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00251793          	slli	a5,a0,0x2
   c:	00048493          	mv	s1,s1
			c: R_RISCV_LO12_I	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	de06                	sw	ra,60(sp)
  12:	dc22                	sw	s0,56(sp)
  14:	d84a                	sw	s2,48(sp)
  16:	d64e                	sw	s3,44(sp)
  18:	d452                	sw	s4,40(sp)
  1a:	d05a                	sw	s6,32(sp)
  1c:	d256                	sw	s5,36(sp)
  1e:	94be                	add	s1,s1,a5
  20:	478d                	li	a5,3
  22:	00f10423          	sb	a5,8(sp)
  26:	00a5d783          	lhu	a5,10(a1)
  2a:	00000a37          	lui	s4,0x0
			2a: R_RISCV_HI20	ble_memcpy_ptr
			2a: R_RISCV_RELAX	*ABS*
  2e:	892a                	mv	s2,a0

00000030 <.LBB487>:
  30:	00f108a3          	sb	a5,17(sp)
  34:	83a1                	srli	a5,a5,0x8
  36:	00f10923          	sb	a5,18(sp)

0000003a <.LBE487>:
  3a:	000a2783          	lw	a5,0(s4) # 0 <llc_llcp_enc_req_pdu_send>
			3a: R_RISCV_LO12_I	ble_memcpy_ptr
			3a: R_RISCV_RELAX	*ABS*
  3e:	8b2e                	mv	s6,a1
  40:	4621                	li	a2,8
  42:	0589                	addi	a1,a1,2

00000044 <.LVL270>:
  44:	00910513          	addi	a0,sp,9

00000048 <.LVL271>:
  48:	0004aa83          	lw	s5,0(s1) # 0 <llc_llcp_enc_req_pdu_send>

0000004c <.LBB490>:
  4c:	9782                	jalr	a5

0000004e <.LVL273>:
  4e:	000a2783          	lw	a5,0(s4)
			4e: R_RISCV_LO12_I	ble_memcpy_ptr
			4e: R_RISCV_RELAX	*ABS*
  52:	091a8593          	addi	a1,s5,145
  56:	4611                	li	a2,4
  58:	01b10513          	addi	a0,sp,27

0000005c <.LBB491>:
  5c:	05c00413          	li	s0,92

00000060 <.LBE491>:
  60:	9782                	jalr	a5

00000062 <.LBB499>:
  62:	02890433          	mul	s0,s2,s0

00000066 <.LBE499>:
  66:	000a2783          	lw	a5,0(s4)
			66: R_RISCV_LO12_I	ble_memcpy_ptr
			66: R_RISCV_RELAX	*ABS*
  6a:	095a8593          	addi	a1,s5,149
  6e:	4621                	li	a2,8
  70:	01310513          	addi	a0,sp,19
  74:	9782                	jalr	a5

00000076 <.LBB500>:
  76:	01c14783          	lbu	a5,28(sp)
  7a:	01b14703          	lbu	a4,27(sp)

0000007e <.LBB505>:
  7e:	280089b7          	lui	s3,0x28008

00000082 <.LBB506>:
  82:	07a2                	slli	a5,a5,0x8
  84:	8fd9                	or	a5,a5,a4

00000086 <.LBB507>:
  86:	0c498713          	addi	a4,s3,196 # 280080c4 <.LASF870+0x2800340e>
  8a:	9722                	add	a4,a4,s0
  8c:	00f71023          	sh	a5,0(a4)

00000090 <.LBB508>:
  90:	01e14783          	lbu	a5,30(sp)
  94:	01d14703          	lbu	a4,29(sp)

00000098 <.LBE508>:
  98:	00cb0593          	addi	a1,s6,12

0000009c <.LBB509>:
  9c:	07a2                	slli	a5,a5,0x8
  9e:	8fd9                	or	a5,a5,a4

000000a0 <.LBB510>:
  a0:	0c698713          	addi	a4,s3,198
  a4:	9722                	add	a4,a4,s0
  a6:	00f71023          	sh	a5,0(a4)

000000aa <.LBE510>:
  aa:	000a2783          	lw	a5,0(s4)
			aa: R_RISCV_LO12_I	ble_memcpy_ptr
			aa: R_RISCV_RELAX	*ABS*
  ae:	4641                	li	a2,16
  b0:	081a8513          	addi	a0,s5,129
  b4:	9782                	jalr	a5

000000b6 <.LVL280>:
  b6:	000a2783          	lw	a5,0(s4)
			b6: R_RISCV_LO12_I	ble_memcpy_ptr
			b6: R_RISCV_RELAX	*ABS*
  ba:	01310593          	addi	a1,sp,19
  be:	4621                	li	a2,8
  c0:	071a8513          	addi	a0,s5,113

000000c4 <.LBB517>:
  c4:	09298993          	addi	s3,s3,146

000000c8 <.LBE517>:
  c8:	9782                	jalr	a5

000000ca <.LBB521>:
  ca:	944e                	add	s0,s0,s3
  cc:	00045783          	lhu	a5,0(s0)

000000d0 <.LBE521>:
  d0:	00891593          	slli	a1,s2,0x8
  d4:	0015e593          	ori	a1,a1,1

000000d8 <.LBB522>:
  d8:	07c2                	slli	a5,a5,0x10
  da:	83c1                	srli	a5,a5,0x10

000000dc <.LBE522>:
  dc:	eff7f793          	andi	a5,a5,-257
  e0:	07c2                	slli	a5,a5,0x10
  e2:	83c1                	srli	a5,a5,0x10

000000e4 <.LBB523>:
  e4:	00f41023          	sh	a5,0(s0)

000000e8 <.LBE523>:
  e8:	4098                	lw	a4,0(s1)
  ea:	05c2                	slli	a1,a1,0x10
  ec:	6605                	lui	a2,0x1
  ee:	0a574783          	lbu	a5,165(a4)
  f2:	81c1                	srli	a1,a1,0x10
  f4:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
  f8:	9bf5                	andi	a5,a5,-3
  fa:	0af702a3          	sb	a5,165(a4)
  fe:	10200513          	li	a0,258
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	ble_ke_timer_set
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.LBE523+0x1a>

0000010a <.LVL285>:
 10a:	00814603          	lbu	a2,8(sp)
 10e:	002c                	addi	a1,sp,8
 110:	0ff97513          	andi	a0,s2,255
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	llc_llcp_send
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.LVL285+0xa>

0000011c <.LVL286>:
 11c:	50f2                	lw	ra,60(sp)
 11e:	5462                	lw	s0,56(sp)
 120:	54d2                	lw	s1,52(sp)
 122:	5942                	lw	s2,48(sp)
 124:	59b2                	lw	s3,44(sp)
 126:	5a22                	lw	s4,40(sp)
 128:	5a92                	lw	s5,36(sp)

0000012a <.LVL287>:
 12a:	5b02                	lw	s6,32(sp)

0000012c <.LVL288>:
 12c:	6121                	addi	sp,sp,64

0000012e <.LVL289>:
 12e:	8082                	ret

Disassembly of section .text.llc_llcp_enc_rsp_pdu_send:

00000000 <llc_llcp_enc_rsp_pdu_send>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1101                	addi	sp,sp,-32
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	ca26                	sw	s1,20(sp)
  16:	97ba                	add	a5,a5,a4
  18:	4384                	lw	s1,0(a5)

0000001a <.LVL291>:
  1a:	00000937          	lui	s2,0x0
			1a: R_RISCV_HI20	ble_memcpy_ptr
			1a: R_RISCV_RELAX	*ABS*
  1e:	4791                	li	a5,4
  20:	00f10023          	sb	a5,0(sp)
  24:	00092783          	lw	a5,0(s2) # 0 <llc_llcp_enc_rsp_pdu_send>
			24: R_RISCV_LO12_I	ble_memcpy_ptr
			24: R_RISCV_RELAX	*ABS*
  28:	842a                	mv	s0,a0
  2a:	09148593          	addi	a1,s1,145

0000002e <.LVL292>:
  2e:	4611                	li	a2,4
  30:	00910513          	addi	a0,sp,9

00000034 <.LVL293>:
  34:	9782                	jalr	a5

00000036 <.LVL294>:
  36:	00092783          	lw	a5,0(s2)
			36: R_RISCV_LO12_I	ble_memcpy_ptr
			36: R_RISCV_RELAX	*ABS*
  3a:	09548593          	addi	a1,s1,149
  3e:	4621                	li	a2,8
  40:	00110513          	addi	a0,sp,1
  44:	9782                	jalr	a5

00000046 <.LBB525>:
  46:	00a14703          	lbu	a4,10(sp)
  4a:	00914783          	lbu	a5,9(sp)

0000004e <.LBB532>:
  4e:	280086b7          	lui	a3,0x28008

00000052 <.LBB538>:
  52:	0722                	slli	a4,a4,0x8
  54:	8f5d                	or	a4,a4,a5

00000056 <.LBB539>:
  56:	05c00793          	li	a5,92
  5a:	02f407b3          	mul	a5,s0,a5
  5e:	0c868613          	addi	a2,a3,200 # 280080c8 <.LASF870+0x28003412>
  62:	0ca68693          	addi	a3,a3,202

00000066 <.LBE525>:
  66:	00110593          	addi	a1,sp,1
  6a:	07948513          	addi	a0,s1,121

0000006e <.LBB540>:
  6e:	963e                	add	a2,a2,a5
  70:	00e61023          	sh	a4,0(a2)

00000074 <.LBB541>:
  74:	00c14703          	lbu	a4,12(sp)
  78:	00b14603          	lbu	a2,11(sp)

0000007c <.LBB542>:
  7c:	97b6                	add	a5,a5,a3

0000007e <.LBB543>:
  7e:	0722                	slli	a4,a4,0x8
  80:	8f51                	or	a4,a4,a2

00000082 <.LBB544>:
  82:	00e79023          	sh	a4,0(a5) # 0 <llc_llcp_enc_rsp_pdu_send>

00000086 <.LBE544>:
  86:	00092783          	lw	a5,0(s2)
			86: R_RISCV_LO12_I	ble_memcpy_ptr
			86: R_RISCV_RELAX	*ABS*
  8a:	4621                	li	a2,8
  8c:	9782                	jalr	a5

0000008e <.LVL300>:
  8e:	00014603          	lbu	a2,0(sp)
  92:	858a                	mv	a1,sp
  94:	0ff47513          	andi	a0,s0,255
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	llc_llcp_send
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL300+0xa>

000000a0 <.LVL301>:
  a0:	40f2                	lw	ra,28(sp)
  a2:	4462                	lw	s0,24(sp)
  a4:	44d2                	lw	s1,20(sp)

000000a6 <.LVL302>:
  a6:	4942                	lw	s2,16(sp)
  a8:	6105                	addi	sp,sp,32
  aa:	8082                	ret

Disassembly of section .text.llc_llcp_start_enc_rsp_pdu_send:

00000000 <llc_llcp_start_enc_rsp_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	4799                	li	a5,6
   4:	00f10623          	sb	a5,12(sp)

00000008 <.LBB547>:
   8:	05c00793          	li	a5,92
   c:	02f507b3          	mul	a5,a0,a5
  10:	28008737          	lui	a4,0x28008
  14:	09270713          	addi	a4,a4,146 # 28008092 <.LASF870+0x280033dc>

00000018 <.LBE547>:
  18:	ce06                	sw	ra,28(sp)
  1a:	cc22                	sw	s0,24(sp)
  1c:	842a                	mv	s0,a0

0000001e <.LBB550>:
  1e:	97ba                	add	a5,a5,a4
  20:	0007d703          	lhu	a4,0(a5)

00000024 <.LBE550>:
  24:	30076713          	ori	a4,a4,768

00000028 <.LBB551>:
  28:	00e79023          	sh	a4,0(a5)

0000002c <.LBE551>:
  2c:	000007b7          	lui	a5,0x0
			2c: R_RISCV_HI20	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00251713          	slli	a4,a0,0x2
  34:	00078793          	mv	a5,a5
			34: R_RISCV_LO12_I	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	97ba                	add	a5,a5,a4
  3a:	439c                	lw	a5,0(a5)
  3c:	0a57c703          	lbu	a4,165(a5) # a5 <.LBB422+0x1>
  40:	0507d603          	lhu	a2,80(a5)
  44:	04e7d583          	lhu	a1,78(a5)
  48:	4b88                	lw	a0,16(a5)

0000004a <.LVL307>:
  4a:	00376713          	ori	a4,a4,3
  4e:	0ae782a3          	sb	a4,165(a5)
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	lld_util_compute_ce_max
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL307+0x8>

0000005a <.LVL308>:
  5a:	00c14603          	lbu	a2,12(sp)
  5e:	006c                	addi	a1,sp,12
  60:	0ff47513          	andi	a0,s0,255
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	llc_llcp_send
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL308+0xa>

0000006c <.LVL309>:
  6c:	40f2                	lw	ra,28(sp)
  6e:	4462                	lw	s0,24(sp)
  70:	6105                	addi	sp,sp,32
  72:	8082                	ret

Disassembly of section .text.llcp_start_enc_rsp_handler:

00000000 <llcp_start_enc_rsp_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	892a                	mv	s2,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL311>:
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	00000437          	lui	s0,0x0
			12: R_RISCV_HI20	llc_env
			12: R_RISCV_RELAX	*ABS*
  16:	ce06                	sw	ra,28(sp)
  18:	8aae                	mv	s5,a1
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_state_get
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL311+0x12>

00000022 <.LVL312>:
  22:	00040793          	mv	a5,s0
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00291a13          	slli	s4,s2,0x2
  2a:	97d2                	add	a5,a5,s4
  2c:	0007a983          	lw	s3,0(a5)
  30:	84aa                	mv	s1,a0

00000032 <.LVL313>:
  32:	00040413          	mv	s0,s0
			32: R_RISCV_LO12_I	llc_env
			32: R_RISCV_RELAX	*ABS*
  36:	0a59c783          	lbu	a5,165(s3)
  3a:	8ba1                	andi	a5,a5,8
  3c:	cf85                	beqz	a5,74 <.L172>
			3c: R_RISCV_RVC_BRANCH	.L172
  3e:	0a39c703          	lbu	a4,163(s3)
  42:	47c9                	li	a5,18
  44:	02f70863          	beq	a4,a5,74 <.L172>
			44: R_RISCV_BRANCH	.L172
  48:	0a49c703          	lbu	a4,164(s3)
  4c:	47ad                	li	a5,11
  4e:	02f70363          	beq	a4,a5,74 <.L172>
			4e: R_RISCV_BRANCH	.L172
  52:	03d00593          	li	a1,61
  56:	854a                	mv	a0,s2
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	llc_util_dicon_procedure
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL313+0x26>

00000060 <.L173>:
  60:	40f2                	lw	ra,28(sp)
  62:	4462                	lw	s0,24(sp)
  64:	44d2                	lw	s1,20(sp)
  66:	4942                	lw	s2,16(sp)
  68:	49b2                	lw	s3,12(sp)

0000006a <.LVL315>:
  6a:	4a22                	lw	s4,8(sp)
  6c:	4a92                	lw	s5,4(sp)
  6e:	4501                	li	a0,0
  70:	6105                	addi	sp,sp,32
  72:	8082                	ret

00000074 <.L172>:
  74:	00f4f793          	andi	a5,s1,15
  78:	473d                	li	a4,15
  7a:	04e79763          	bne	a5,a4,c8 <.L174>
			7a: R_RISCV_BRANCH	.L174
  7e:	854a                	mv	a0,s2
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	lld_get_mode
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.L172+0xc>

00000088 <.LVL317>:
  88:	4791                	li	a5,4
  8a:	fcf51be3          	bne	a0,a5,60 <.L173>
			8a: R_RISCV_BRANCH	.L173
  8e:	0a49c703          	lbu	a4,164(s3)
  92:	47ad                	li	a5,11
  94:	fcf716e3          	bne	a4,a5,60 <.L173>
			94: R_RISCV_BRANCH	.L173

00000098 <.LBB555>:
  98:	05c00793          	li	a5,92
  9c:	02f90933          	mul	s2,s2,a5
  a0:	280087b7          	lui	a5,0x28008
  a4:	09278793          	addi	a5,a5,146 # 28008092 <.LASF870+0x280033dc>

000000a8 <.LBE555>:
  a8:	9452                	add	s0,s0,s4

000000aa <.LBB558>:
  aa:	993e                	add	s2,s2,a5
  ac:	00095783          	lhu	a5,0(s2)

000000b0 <.LBE558>:
  b0:	3007e793          	ori	a5,a5,768

000000b4 <.LBB559>:
  b4:	00f91023          	sh	a5,0(s2)

000000b8 <.LBE559>:
  b8:	4018                	lw	a4,0(s0)
  ba:	0a574783          	lbu	a5,165(a4)
  be:	0037e793          	ori	a5,a5,3
  c2:	0af702a3          	sb	a5,165(a4)
  c6:	bf69                	j	60 <.L173>
			c6: R_RISCV_RVC_JUMP	.L173

000000c8 <.L174>:
  c8:	85d6                	mv	a1,s5
  ca:	10200513          	li	a0,258
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	ble_ke_timer_clear
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.L174+0x6>

000000d6 <.LVL321>:
  d6:	854a                	mv	a0,s2
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	lld_get_mode
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL321+0x2>

000000e0 <.LVL322>:
  e0:	4791                	li	a5,4
  e2:	06f51563          	bne	a0,a5,14c <.L175>
			e2: R_RISCV_BRANCH	.L175
  e6:	47b1                	li	a5,12
  e8:	0af98223          	sb	a5,164(s3)

000000ec <.LBB561>:
  ec:	8885                	andi	s1,s1,1

000000ee <.LVL324>:
  ee:	c899                	beqz	s1,104 <.L176>
			ee: R_RISCV_RVC_BRANCH	.L176
  f0:	6605                	lui	a2,0x1
  f2:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
  f6:	85d6                	mv	a1,s5
  f8:	10200513          	li	a0,258
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	ble_ke_timer_set
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL324+0xe>

00000104 <.L176>:
 104:	854a                	mv	a0,s2
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	llc_llcp_start_enc_rsp_pdu_send
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.L176+0x2>

0000010e <.LBB563>:
 10e:	300026f3          	csrr	a3,mstatus

00000112 <.LBB565>:
 112:	300477f3          	csrrci	a5,mstatus,8

00000116 <.LBE565>:
 116:	014407b3          	add	a5,s0,s4
 11a:	4398                	lw	a4,0(a5)
 11c:	0a574783          	lbu	a5,165(a4)
 120:	9bdd                	andi	a5,a5,-9
 122:	0af702a3          	sb	a5,165(a4)
 126:	30069073          	csrw	mstatus,a3

0000012a <.L177>:
 12a:	9452                	add	s0,s0,s4
 12c:	4018                	lw	a4,0(s0)
 12e:	0a574783          	lbu	a5,165(a4)
 132:	0107f693          	andi	a3,a5,16
 136:	cea9                	beqz	a3,190 <.L178>
			136: R_RISCV_RVC_BRANCH	.L178
 138:	9bbd                	andi	a5,a5,-17
 13a:	0af702a3          	sb	a5,165(a4)
 13e:	4581                	li	a1,0
 140:	854a                	mv	a0,s2
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	llc_common_enc_key_ref_comp_evt_send
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.L177+0x18>

0000014a <.LVL330>:
 14a:	bf19                	j	60 <.L173>
			14a: R_RISCV_RVC_JUMP	.L173

0000014c <.L175>:
 14c:	04e2                	slli	s1,s1,0x18

0000014e <.LVL332>:
 14e:	84e1                	srai	s1,s1,0x18

00000150 <.LVL333>:
 150:	0fe4f593          	andi	a1,s1,254
 154:	8556                	mv	a0,s5
 156:	00000097          	auipc	ra,0x0
			156: R_RISCV_CALL	ble_ke_state_set
			156: R_RISCV_RELAX	*ABS*
 15a:	000080e7          	jalr	ra # 156 <.LVL333+0x6>

0000015e <.LBE566>:
 15e:	0a0981a3          	sb	zero,163(s3)

00000162 <.LBB568>:
 162:	300026f3          	csrr	a3,mstatus

00000166 <.LBB570>:
 166:	300477f3          	csrrci	a5,mstatus,8

0000016a <.LBE570>:
 16a:	014407b3          	add	a5,s0,s4
 16e:	4398                	lw	a4,0(a5)
 170:	0a574783          	lbu	a5,165(a4)
 174:	fd37f793          	andi	a5,a5,-45
 178:	0af702a3          	sb	a5,165(a4)
 17c:	30069073          	csrw	mstatus,a3

00000180 <.LBB571>:
 180:	0fa4f593          	andi	a1,s1,250
 184:	8556                	mv	a0,s5
 186:	00000097          	auipc	ra,0x0
			186: R_RISCV_CALL	ble_ke_state_set
			186: R_RISCV_RELAX	*ABS*
 18a:	000080e7          	jalr	ra # 186 <.LBB571+0x6>

0000018e <.LVL338>:
 18e:	bf71                	j	12a <.L177>
			18e: R_RISCV_RVC_JUMP	.L177

00000190 <.L178>:
 190:	4601                	li	a2,0
 192:	4585                	li	a1,1
 194:	854a                	mv	a0,s2
 196:	00000097          	auipc	ra,0x0
			196: R_RISCV_CALL	llc_common_enc_change_evt_send
			196: R_RISCV_RELAX	*ABS*
 19a:	000080e7          	jalr	ra # 196 <.L178+0x6>

0000019e <.LVL340>:
 19e:	b5c9                	j	60 <.L173>
			19e: R_RISCV_RVC_JUMP	.L173

Disassembly of section .text.llc_llcp_reject_ind_pdu_send:

00000000 <llc_llcp_reject_ind_pdu_send>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00251713          	slli	a4,a0,0x2
   8:	1101                	addi	sp,sp,-32
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	97ba                	add	a5,a5,a4
  12:	439c                	lw	a5,0(a5)

00000014 <.LVL342>:
  14:	0ff57513          	andi	a0,a0,255

00000018 <.LVL343>:
  18:	05c7d703          	lhu	a4,92(a5) # 5c <.LVL349+0xc>
  1c:	8b05                	andi	a4,a4,1
  1e:	c709                	beqz	a4,28 <.L187>
			1e: R_RISCV_RVC_BRANCH	.L187
  20:	0697c703          	lbu	a4,105(a5)
  24:	8b11                	andi	a4,a4,4
  26:	e701                	bnez	a4,2e <.L188>
			26: R_RISCV_RVC_BRANCH	.L188

00000028 <.L187>:
  28:	4735                	li	a4,13
  2a:	02b77263          	bgeu	a4,a1,4e <.L189>
			2a: R_RISCV_BRANCH	.L189

0000002e <.L188>:
  2e:	47c5                	li	a5,17

00000030 <.LVL345>:
  30:	00c10723          	sb	a2,14(sp)
  34:	00f10623          	sb	a5,12(sp)
  38:	00b106a3          	sb	a1,13(sp)
  3c:	4645                	li	a2,17

0000003e <.L196>:
  3e:	006c                	addi	a1,sp,12
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	llc_llcp_send
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.L196+0x2>

00000048 <.LBE581>:
  48:	40f2                	lw	ra,28(sp)
  4a:	6105                	addi	sp,sp,32
  4c:	8082                	ret

0000004e <.L189>:
  4e:	15f5                	addi	a1,a1,-3

00000050 <.LVL349>:
  50:	00e10623          	sb	a4,12(sp)
  54:	00c106a3          	sb	a2,13(sp)
  58:	0fd5f593          	andi	a1,a1,253
  5c:	e199                	bnez	a1,62 <.L191>
			5c: R_RISCV_RVC_BRANCH	.L191
  5e:	0a0782a3          	sb	zero,165(a5)

00000062 <.L191>:
  62:	4635                	li	a2,13

00000064 <.LVL350>:
  64:	bfe9                	j	3e <.L196>
			64: R_RISCV_RVC_JUMP	.L196

Disassembly of section .text.llcp_length_rsp_handler:

00000000 <llcp_length_rsp_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	c452                	sw	s4,8(sp)
   4:	8a2a                	mv	s4,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL352>:
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c256                	sw	s5,4(sp)
  14:	c05a                	sw	s6,0(sp)
  16:	892e                	mv	s2,a1
  18:	84b6                	mv	s1,a3
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_state_get
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL352+0x12>

00000022 <.LVL353>:
  22:	000007b7          	lui	a5,0x0
			22: R_RISCV_HI20	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	002a1713          	slli	a4,s4,0x2
  2a:	00078793          	mv	a5,a5
			2a: R_RISCV_LO12_I	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	97ba                	add	a5,a5,a4
  30:	4380                	lw	s0,0(a5)

00000032 <.LVL354>:
  32:	0a544783          	lbu	a5,165(s0) # a5 <.LBE586+0x13>
  36:	8ba1                	andi	a5,a5,8
  38:	c39d                	beqz	a5,5e <.L198>
			38: R_RISCV_RVC_BRANCH	.L198
  3a:	03d00593          	li	a1,61
  3e:	8552                	mv	a0,s4

00000040 <.LVL355>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	llc_util_dicon_procedure
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL355>

00000048 <.L199>:
  48:	40f2                	lw	ra,28(sp)
  4a:	4462                	lw	s0,24(sp)

0000004c <.LVL357>:
  4c:	44d2                	lw	s1,20(sp)
  4e:	4942                	lw	s2,16(sp)
  50:	49b2                	lw	s3,12(sp)
  52:	4a22                	lw	s4,8(sp)
  54:	4a92                	lw	s5,4(sp)
  56:	4b02                	lw	s6,0(sp)
  58:	4501                	li	a0,0
  5a:	6105                	addi	sp,sp,32
  5c:	8082                	ret

0000005e <.L198>:
  5e:	89aa                	mv	s3,a0
  60:	85ca                	mv	a1,s2
  62:	10200513          	li	a0,258

00000066 <.LVL359>:
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	ble_ke_timer_clear
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL359>

0000006e <.LBB583>:
  6e:	0019f793          	andi	a5,s3,1
  72:	16078563          	beqz	a5,1dc <.L200>
			72: R_RISCV_BRANCH	.L200
  76:	0a344703          	lbu	a4,163(s0)
  7a:	4791                	li	a5,4
  7c:	16f71063          	bne	a4,a5,1dc <.L200>
			7c: R_RISCV_BRANCH	.L200

00000080 <.LBB585>:
  80:	0a0401a3          	sb	zero,163(s0)

00000084 <.LBB586>:
  84:	0fe9f593          	andi	a1,s3,254
  88:	854a                	mv	a0,s2
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	ble_ke_state_set
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.LBB586+0x6>

00000092 <.LBE586>:
  92:	0024d683          	lhu	a3,2(s1)
  96:	47e9                	li	a5,26
  98:	02d7f063          	bgeu	a5,a3,b8 <.L201>
			98: R_RISCV_BRANCH	.L201
  9c:	0064d583          	lhu	a1,6(s1)
  a0:	00b7fc63          	bgeu	a5,a1,b8 <.L201>
			a0: R_RISCV_BRANCH	.L201
  a4:	0044d703          	lhu	a4,4(s1)
  a8:	14700793          	li	a5,327
  ac:	00e7f663          	bgeu	a5,a4,b8 <.L201>
			ac: R_RISCV_BRANCH	.L201
  b0:	0084d603          	lhu	a2,8(s1)
  b4:	00c7ec63          	bltu	a5,a2,cc <.L202>
			b4: R_RISCV_BRANCH	.L202

000000b8 <.L201>:
  b8:	02000613          	li	a2,32

000000bc <.L216>:
  bc:	0004c583          	lbu	a1,0(s1)
  c0:	8552                	mv	a0,s4
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.L216+0x6>

000000ca <.LVL364>:
  ca:	bfbd                	j	48 <.L199>
			ca: R_RISCV_RVC_JUMP	.L199

000000cc <.L202>:
  cc:	04445783          	lhu	a5,68(s0)

000000d0 <.LBB591>:
  d0:	00f5f363          	bgeu	a1,a5,d6 <.L203>
			d0: R_RISCV_BRANCH	.L203
  d4:	87ae                	mv	a5,a1

000000d6 <.L203>:
  d6:	04c45983          	lhu	s3,76(s0)

000000da <.LVL366>:
  da:	01079a93          	slli	s5,a5,0x10
  de:	010ada93          	srli	s5,s5,0x10

000000e2 <.LBB592>:
  e2:	01367363          	bgeu	a2,s3,e8 <.L204>
			e2: R_RISCV_BRANCH	.L204
  e6:	89b2                	mv	s3,a2

000000e8 <.L204>:
  e8:	04245903          	lhu	s2,66(s0)
  ec:	09c2                	slli	s3,s3,0x10
  ee:	0109d993          	srli	s3,s3,0x10

000000f2 <.LBB594>:
  f2:	0126f363          	bgeu	a3,s2,f8 <.L205>
			f2: R_RISCV_BRANCH	.L205
  f6:	8936                	mv	s2,a3

000000f8 <.L205>:
  f8:	04a45483          	lhu	s1,74(s0)

000000fc <.LVL369>:
  fc:	0942                	slli	s2,s2,0x10
  fe:	01095913          	srli	s2,s2,0x10

00000102 <.LBB596>:
 102:	00977363          	bgeu	a4,s1,108 <.L206>
			102: R_RISCV_BRANCH	.L206
 106:	84ba                	mv	s1,a4

00000108 <.L206>:
 108:	04c2                	slli	s1,s1,0x10
 10a:	4808                	lw	a0,16(s0)
 10c:	80c1                	srli	s1,s1,0x10

0000010e <.LVL371>:
 10e:	864e                	mv	a2,s3
 110:	85a6                	mv	a1,s1
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	lld_util_compute_ce_max
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.LVL371+0x4>

0000011a <.LVL372>:
 11a:	04845783          	lhu	a5,72(s0)
 11e:	01579e63          	bne	a5,s5,13a <.L207>
			11e: R_RISCV_BRANCH	.L207
 122:	05045783          	lhu	a5,80(s0)
 126:	01379a63          	bne	a5,s3,13a <.L207>
			126: R_RISCV_BRANCH	.L207
 12a:	04645783          	lhu	a5,70(s0)
 12e:	01279663          	bne	a5,s2,13a <.L207>
			12e: R_RISCV_BRANCH	.L207
 132:	04e45783          	lhu	a5,78(s0)
 136:	02978c63          	beq	a5,s1,16e <.L208>
			136: R_RISCV_BRANCH	.L208

0000013a <.L207>:
 13a:	30002b73          	csrr	s6,mstatus

0000013e <.LBB600>:
 13e:	300477f3          	csrrci	a5,mstatus,8

00000142 <.LBE600>:
 142:	4808                	lw	a0,16(s0)
 144:	05541423          	sh	s5,72(s0)
 148:	05341823          	sh	s3,80(s0)
 14c:	05241323          	sh	s2,70(s0)
 150:	04941723          	sh	s1,78(s0)
 154:	864a                	mv	a2,s2
 156:	85a6                	mv	a1,s1
 158:	00000097          	auipc	ra,0x0
			158: R_RISCV_CALL	lld_util_eff_tx_time_set
			158: R_RISCV_RELAX	*ABS*
 15c:	000080e7          	jalr	ra # 158 <.LBE600+0x16>

00000160 <.LVL375>:
 160:	300b1073          	csrw	mstatus,s6

00000164 <.LBE598>:
 164:	05344783          	lbu	a5,83(s0)
 168:	9bf5                	andi	a5,a5,-3
 16a:	04f409a3          	sb	a5,83(s0)

0000016e <.L208>:
 16e:	4519                	li	a0,6
 170:	00000097          	auipc	ra,0x0
			170: R_RISCV_CALL	llm_util_check_evt_mask
			170: R_RISCV_RELAX	*ABS*
 174:	000080e7          	jalr	ra # 170 <.L208+0x2>

00000178 <.LVL377>:
 178:	ec0508e3          	beqz	a0,48 <.L199>
			178: R_RISCV_BRANCH	.L199
 17c:	05344783          	lbu	a5,83(s0)
 180:	8b89                	andi	a5,a5,2
 182:	ec0793e3          	bnez	a5,48 <.L199>
			182: R_RISCV_BRANCH	.L199

00000186 <.LBB601>:
 186:	6505                	lui	a0,0x1
 188:	46b1                	li	a3,12
 18a:	03e00613          	li	a2,62
 18e:	85d2                	mv	a1,s4
 190:	80450513          	addi	a0,a0,-2044 # 804 <.LASF837>
 194:	00000097          	auipc	ra,0x0
			194: R_RISCV_CALL	ble_ke_msg_alloc
			194: R_RISCV_RELAX	*ABS*
 198:	000080e7          	jalr	ra # 194 <.LBB601+0xe>

0000019c <.LVL378>:
 19c:	471d                	li	a4,7
 19e:	00e50023          	sb	a4,0(a0)

000001a2 <.LBB602>:
 1a2:	01451123          	sh	s4,2(a0)
 1a6:	04845703          	lhu	a4,72(s0)
 1aa:	00e51423          	sh	a4,8(a0)
 1ae:	05045703          	lhu	a4,80(s0)
 1b2:	00e51523          	sh	a4,10(a0)
 1b6:	04645703          	lhu	a4,70(s0)
 1ba:	00e51223          	sh	a4,4(a0)
 1be:	04e45703          	lhu	a4,78(s0)
 1c2:	00e51323          	sh	a4,6(a0)
 1c6:	00000097          	auipc	ra,0x0
			1c6: R_RISCV_CALL	hci_send_2_host
			1c6: R_RISCV_RELAX	*ABS*
 1ca:	000080e7          	jalr	ra # 1c6 <.LBB602+0x24>

000001ce <.LVL380>:
 1ce:	05344783          	lbu	a5,83(s0)
 1d2:	0027e793          	ori	a5,a5,2
 1d6:	04f409a3          	sb	a5,83(s0)
 1da:	b5bd                	j	48 <.L199>
			1da: R_RISCV_RVC_JUMP	.L199

000001dc <.L200>:
 1dc:	4645                	li	a2,17
 1de:	bdf9                	j	bc <.L216>
			1de: R_RISCV_RVC_JUMP	.L216

Disassembly of section .text.llcp_con_param_rsp_handler:

00000000 <llcp_con_param_rsp_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	842a                	mv	s0,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL383>:
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c452                	sw	s4,8(sp)
  12:	89ae                	mv	s3,a1
  14:	8936                	mv	s2,a3
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	llc_env
			16: R_RISCV_RELAX	*ABS*
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	ble_ke_state_get
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL383+0x12>

00000022 <.LVL384>:
  22:	00241793          	slli	a5,s0,0x2
  26:	00048493          	mv	s1,s1
			26: R_RISCV_LO12_I	llc_env
			26: R_RISCV_RELAX	*ABS*
  2a:	94be                	add	s1,s1,a5
  2c:	4098                	lw	a4,0(s1)

0000002e <.LVL385>:
  2e:	0a574783          	lbu	a5,165(a4)
  32:	8ba1                	andi	a5,a5,8
  34:	c38d                	beqz	a5,56 <.L218>
			34: R_RISCV_RVC_BRANCH	.L218
  36:	03d00593          	li	a1,61
  3a:	8522                	mv	a0,s0

0000003c <.LVL386>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	llc_util_dicon_procedure
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL386>

00000044 <.L219>:
  44:	40f2                	lw	ra,28(sp)
  46:	4462                	lw	s0,24(sp)
  48:	44d2                	lw	s1,20(sp)
  4a:	4942                	lw	s2,16(sp)
  4c:	49b2                	lw	s3,12(sp)
  4e:	4a22                	lw	s4,8(sp)
  50:	4501                	li	a0,0
  52:	6105                	addi	sp,sp,32
  54:	8082                	ret

00000056 <.L218>:
  56:	0a374703          	lbu	a4,163(a4)

0000005a <.LVL389>:
  5a:	479d                	li	a5,7
  5c:	00f70b63          	beq	a4,a5,72 <.L220>
			5c: R_RISCV_BRANCH	.L220
  60:	00094583          	lbu	a1,0(s2)
  64:	467d                	li	a2,31
  66:	8522                	mv	a0,s0

00000068 <.LVL390>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL390>

00000070 <.LVL391>:
  70:	bfd1                	j	44 <.L219>
			70: R_RISCV_RVC_JUMP	.L219

00000072 <.L220>:
  72:	85ce                	mv	a1,s3
  74:	8a2a                	mv	s4,a0
  76:	10200513          	li	a0,258

0000007a <.LVL393>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	ble_ke_timer_clear
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL393>

00000082 <.LVL394>:
  82:	8522                	mv	a0,s0
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	lld_get_mode
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL394+0x2>

0000008c <.LVL395>:
  8c:	478d                	li	a5,3
  8e:	faf51be3          	bne	a0,a5,44 <.L219>
			8e: R_RISCV_BRANCH	.L219

00000092 <.LBB605>:
  92:	4084                	lw	s1,0(s1)

00000094 <.LBB606>:
  94:	00295703          	lhu	a4,2(s2)

00000098 <.LBB609>:
  98:	4088                	lw	a0,0(s1)

0000009a <.LBE609>:
  9a:	00455783          	lhu	a5,4(a0)
  9e:	06e7ea63          	bltu	a5,a4,112 <.L221>
			9e: R_RISCV_BRANCH	.L221
  a2:	00495703          	lhu	a4,4(s2)
  a6:	00255783          	lhu	a5,2(a0)
  aa:	06f76463          	bltu	a4,a5,112 <.L221>
			aa: R_RISCV_BRANCH	.L221
  ae:	4791                	li	a5,4
  b0:	00f50023          	sb	a5,0(a0)
  b4:	00295783          	lhu	a5,2(s2)
  b8:	00655703          	lhu	a4,6(a0)
  bc:	00f51123          	sh	a5,2(a0)
  c0:	00495783          	lhu	a5,4(s2)
  c4:	00f51223          	sh	a5,4(a0)

000000c8 <.LBB610>:
  c8:	00695783          	lhu	a5,6(s2)
  cc:	00e7f363          	bgeu	a5,a4,d2 <.L222>
			cc: R_RISCV_BRANCH	.L222
  d0:	87ba                	mv	a5,a4

000000d2 <.L222>:
  d2:	00f51323          	sh	a5,6(a0)

000000d6 <.LBB612>:
  d6:	00855703          	lhu	a4,8(a0)

000000da <.LBB615>:
  da:	00895783          	lhu	a5,8(s2)
  de:	00e7f363          	bgeu	a5,a4,e4 <.L223>
			de: R_RISCV_BRANCH	.L223
  e2:	87ba                	mv	a5,a4

000000e4 <.L223>:
  e4:	00f51423          	sh	a5,8(a0)
  e8:	489c                	lw	a5,16(s1)
  ea:	27100693          	li	a3,625
  ee:	0127d703          	lhu	a4,18(a5) # 12 <.LVL383+0xa>
  f2:	02d75733          	divu	a4,a4,a3
  f6:	00e51523          	sh	a4,10(a0)
  fa:	489c                	lw	a5,16(s1)
  fc:	0127d783          	lhu	a5,18(a5)
 100:	02d7d7b3          	divu	a5,a5,a3
 104:	00f51623          	sh	a5,12(a0)
 108:	00000097          	auipc	ra,0x0
			108: R_RISCV_CALL	ble_ke_msg_send
			108: R_RISCV_RELAX	*ABS*
 10c:	000080e7          	jalr	ra # 108 <.L223+0x24>

00000110 <.LVL400>:
 110:	bf15                	j	44 <.L219>
			110: R_RISCV_RVC_JUMP	.L219

00000112 <.L221>:
 112:	02000613          	li	a2,32
 116:	45c1                	li	a1,16
 118:	8522                	mv	a0,s0

0000011a <.LVL402>:
 11a:	0104a903          	lw	s2,16(s1) # 10 <.LVL383+0x8>

0000011e <.LVL403>:
 11e:	00000097          	auipc	ra,0x0
			11e: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			11e: R_RISCV_RELAX	*ABS*
 122:	000080e7          	jalr	ra # 11e <.LVL403>

00000126 <.LVL404>:
 126:	05c4d783          	lhu	a5,92(s1)
 12a:	0407f713          	andi	a4,a5,64
 12e:	c705                	beqz	a4,156 <.L225>
			12e: R_RISCV_RVC_BRANCH	.L225
 130:	fbf7f793          	andi	a5,a5,-65
 134:	04f49e23          	sh	a5,92(s1)
 138:	4509                	li	a0,2
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	llm_util_check_evt_mask
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL404+0x14>

00000142 <.LVL405>:
 142:	c911                	beqz	a0,156 <.L225>
			142: R_RISCV_RVC_BRANCH	.L225
 144:	02890613          	addi	a2,s2,40

00000148 <.LVL406>:
 148:	85a2                	mv	a1,s0
 14a:	02000513          	li	a0,32
 14e:	00000097          	auipc	ra,0x0
			14e: R_RISCV_CALL	llc_con_update_complete_send
			14e: R_RISCV_RELAX	*ABS*
 152:	000080e7          	jalr	ra # 14e <.LVL406+0x6>

00000156 <.L225>:
 156:	0fea7593          	andi	a1,s4,254
 15a:	854e                	mv	a0,s3
 15c:	00000097          	auipc	ra,0x0
			15c: R_RISCV_CALL	ble_ke_state_set
			15c: R_RISCV_RELAX	*ABS*
 160:	000080e7          	jalr	ra # 15c <.L225+0x6>

00000164 <.LBE617>:
 164:	4581                	li	a1,0
 166:	0a0481a3          	sb	zero,163(s1)
 16a:	8522                	mv	a0,s0
 16c:	00000097          	auipc	ra,0x0
			16c: R_RISCV_CALL	llc_util_clear_operation_ptr
			16c: R_RISCV_RELAX	*ABS*
 170:	000080e7          	jalr	ra # 16c <.LBE617+0x8>

00000174 <.LVL409>:
 174:	bdc1                	j	44 <.L219>
			174: R_RISCV_RVC_JUMP	.L219

Disassembly of section .text.llcp_feats_rsp_handler:

00000000 <llcp_feats_rsp_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL411>:
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c452                	sw	s4,8(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	892e                	mv	s2,a1
  14:	8a36                	mv	s4,a3
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL411+0xe>

0000001e <.LVL412>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00249713          	slli	a4,s1,0x2
  26:	00078793          	mv	a5,a5
			26: R_RISCV_LO12_I	llc_env
			26: R_RISCV_RELAX	*ABS*
  2a:	97ba                	add	a5,a5,a4
  2c:	4380                	lw	s0,0(a5)

0000002e <.LVL413>:
  2e:	0a544783          	lbu	a5,165(s0)
  32:	8ba1                	andi	a5,a5,8
  34:	c38d                	beqz	a5,56 <.L232>
			34: R_RISCV_RVC_BRANCH	.L232
  36:	03d00593          	li	a1,61
  3a:	8526                	mv	a0,s1

0000003c <.LVL414>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	llc_util_dicon_procedure
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL414>

00000044 <.L233>:
  44:	40f2                	lw	ra,28(sp)
  46:	4462                	lw	s0,24(sp)

00000048 <.LVL416>:
  48:	44d2                	lw	s1,20(sp)
  4a:	4942                	lw	s2,16(sp)
  4c:	49b2                	lw	s3,12(sp)
  4e:	4a22                	lw	s4,8(sp)

00000050 <.LVL417>:
  50:	4501                	li	a0,0
  52:	6105                	addi	sp,sp,32
  54:	8082                	ret

00000056 <.L232>:
  56:	00157793          	andi	a5,a0,1
  5a:	89aa                	mv	s3,a0

0000005c <.LBB619>:
  5c:	cbb5                	beqz	a5,d0 <.L234>
			5c: R_RISCV_RVC_BRANCH	.L234
  5e:	0a344703          	lbu	a4,163(s0)
  62:	4785                	li	a5,1
  64:	06f71663          	bne	a4,a5,d0 <.L234>
			64: R_RISCV_BRANCH	.L234

00000068 <.LBB621>:
  68:	00849593          	slli	a1,s1,0x8
  6c:	0015e593          	ori	a1,a1,1
  70:	05c2                	slli	a1,a1,0x10
  72:	81c1                	srli	a1,a1,0x10
  74:	10200513          	li	a0,258

00000078 <.LVL421>:
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	ble_ke_timer_clear
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL421>

00000080 <.LBB622>:
  80:	001a0693          	addi	a3,s4,1
  84:	06940793          	addi	a5,s0,105
  88:	07140593          	addi	a1,s0,113
  8c:	8636                	mv	a2,a3

0000008e <.L235>:
  8e:	0007c703          	lbu	a4,0(a5) # 0 <llcp_feats_rsp_handler>
  92:	0006c503          	lbu	a0,0(a3)
  96:	0785                	addi	a5,a5,1

00000098 <.LVL424>:
  98:	0685                	addi	a3,a3,1
  9a:	8f69                	and	a4,a4,a0
  9c:	fee78fa3          	sb	a4,-1(a5)
  a0:	feb797e3          	bne	a5,a1,8e <.L235>
			a0: R_RISCV_BRANCH	.L235

000000a4 <.LBE622>:
  a4:	05c45783          	lhu	a5,92(s0)
  a8:	85a6                	mv	a1,s1
  aa:	4501                	li	a0,0
  ac:	0017e793          	ori	a5,a5,1
  b0:	04f41e23          	sh	a5,92(s0)
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	llc_feats_rd_event_send
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LBE622+0x10>

000000bc <.LBB623>:
  bc:	0fe9f593          	andi	a1,s3,254

000000c0 <.LBE623>:
  c0:	0a0401a3          	sb	zero,163(s0)

000000c4 <.LBB626>:
  c4:	854a                	mv	a0,s2
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	ble_ke_state_set
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.LBB626+0x2>

000000ce <.LVL427>:
  ce:	bf9d                	j	44 <.L233>
			ce: R_RISCV_RVC_JUMP	.L233

000000d0 <.L234>:
  d0:	000a4583          	lbu	a1,0(s4)
  d4:	4645                	li	a2,17
  d6:	8526                	mv	a0,s1

000000d8 <.LVL429>:
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL429>

000000e0 <.LVL430>:
  e0:	b795                	j	44 <.L233>
			e0: R_RISCV_RVC_JUMP	.L233

Disassembly of section .text.llcp_channel_map_ind_handler:

00000000 <llcp_channel_map_ind_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	c85a                	sw	s6,16(sp)
   4:	8b2a                	mv	s6,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL432>:
   8:	d422                	sw	s0,40(sp)
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	ca56                	sw	s5,20(sp)
  14:	c65e                	sw	s7,12(sp)
  16:	00c039b3          	snez	s3,a2
  1a:	8bb6                	mv	s7,a3
  1c:	ffe68a93          	addi	s5,a3,-2
  20:	d606                	sw	ra,44(sp)
  22:	c462                	sw	s8,8(sp)
  24:	c266                	sw	s9,4(sp)
  26:	8a2e                	mv	s4,a1
  28:	84b2                	mv	s1,a2
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	ble_ke_state_get
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL432+0x22>

00000032 <.LVL433>:
  32:	000007b7          	lui	a5,0x0
			32: R_RISCV_HI20	llc_env
			32: R_RISCV_RELAX	*ABS*
  36:	00078713          	mv	a4,a5
			36: R_RISCV_LO12_I	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	002b1693          	slli	a3,s6,0x2
  3e:	9736                	add	a4,a4,a3
  40:	4300                	lw	s0,0(a4)
  42:	0986                	slli	s3,s3,0x1

00000044 <.LVL434>:
  44:	892a                	mv	s2,a0

00000046 <.LVL435>:
  46:	00078713          	mv	a4,a5
			46: R_RISCV_LO12_I	llc_env
			46: R_RISCV_RELAX	*ABS*
  4a:	c08d                	beqz	s1,6c <.L243>
			4a: R_RISCV_RVC_BRANCH	.L243
  4c:	000a80a3          	sb	zero,1(s5)

00000050 <.L244>:
  50:	00d707b3          	add	a5,a4,a3
  54:	439c                	lw	a5,0(a5)
  56:	0a57c783          	lbu	a5,165(a5) # a5 <.L241+0x3>
  5a:	8ba1                	andi	a5,a5,8
  5c:	cb8d                	beqz	a5,8e <.L246>
			5c: R_RISCV_RVC_BRANCH	.L246
  5e:	4791                	li	a5,4
  60:	00fa80a3          	sb	a5,1(s5)
  64:	ec9d                	bnez	s1,a2 <.L241>
			64: R_RISCV_RVC_BRANCH	.L241

00000066 <.L247>:
  66:	03d00593          	li	a1,61
  6a:	a8f9                	j	148 <.L265>
			6a: R_RISCV_RVC_JUMP	.L265

0000006c <.L243>:
  6c:	001ac783          	lbu	a5,1(s5)
  70:	d3e5                	beqz	a5,50 <.L244>
			70: R_RISCV_RVC_BRANCH	.L244
  72:	17fd                	addi	a5,a5,-1
  74:	0ff7f793          	andi	a5,a5,255
  78:	4711                	li	a4,4
  7a:	02f76463          	bltu	a4,a5,a2 <.L241>
			7a: R_RISCV_BRANCH	.L241
  7e:	00000737          	lui	a4,0x0
			7e: R_RISCV_HI20	.L258
			7e: R_RISCV_RELAX	*ABS*
  82:	078a                	slli	a5,a5,0x2
  84:	00070713          	mv	a4,a4
			84: R_RISCV_LO12_I	.L258
			84: R_RISCV_RELAX	*ABS*
  88:	97ba                	add	a5,a5,a4
  8a:	439c                	lw	a5,0(a5)
  8c:	8782                	jr	a5

0000008e <.L246>:
  8e:	4808                	lw	a0,16(s0)
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	lld_util_instant_ongoing
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L246+0x2>

00000098 <.LVL436>:
  98:	c11d                	beqz	a0,be <.L249>
			98: R_RISCV_RVC_BRANCH	.L249
  9a:	4789                	li	a5,2
  9c:	00fa80a3          	sb	a5,1(s5)
  a0:	c8d5                	beqz	s1,154 <.L251>
			a0: R_RISCV_RVC_BRANCH	.L251

000000a2 <.L241>:
  a2:	50b2                	lw	ra,44(sp)
  a4:	5422                	lw	s0,40(sp)

000000a6 <.LVL438>:
  a6:	854e                	mv	a0,s3
  a8:	5492                	lw	s1,36(sp)
  aa:	5902                	lw	s2,32(sp)
  ac:	49f2                	lw	s3,28(sp)

000000ae <.LVL439>:
  ae:	4a62                	lw	s4,24(sp)
  b0:	4ad2                	lw	s5,20(sp)

000000b2 <.LVL440>:
  b2:	4b42                	lw	s6,16(sp)
  b4:	4bb2                	lw	s7,12(sp)

000000b6 <.LVL441>:
  b6:	4c22                	lw	s8,8(sp)
  b8:	4c92                	lw	s9,4(sp)
  ba:	6145                	addi	sp,sp,48
  bc:	8082                	ret

000000be <.L249>:
  be:	855a                	mv	a0,s6
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	lld_get_mode
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.L249+0x2>

000000c8 <.LVL443>:
  c8:	4791                	li	a5,4
  ca:	00f51563          	bne	a0,a5,d4 <.L252>
			ca: R_RISCV_BRANCH	.L252

000000ce <.LBB627>:
  ce:	00297793          	andi	a5,s2,2
  d2:	c799                	beqz	a5,e0 <.L253>
			d2: R_RISCV_RVC_BRANCH	.L253

000000d4 <.L252>:
  d4:	4795                	li	a5,5
  d6:	00fa80a3          	sb	a5,1(s5)
  da:	f4e1                	bnez	s1,a2 <.L241>
			da: R_RISCV_RVC_BRANCH	.L241

000000dc <.L254>:
  dc:	4645                	li	a2,17
  de:	a8ad                	j	158 <.L266>
			de: R_RISCV_RVC_JUMP	.L266

000000e0 <.L253>:
  e0:	01042c03          	lw	s8,16(s0)
  e4:	006bdc83          	lhu	s9,6(s7)

000000e8 <.LBB630>:
  e8:	6721                	lui	a4,0x8
  ea:	060c5783          	lhu	a5,96(s8)
  ee:	1779                	addi	a4,a4,-2
  f0:	40fc87b3          	sub	a5,s9,a5
  f4:	07c2                	slli	a5,a5,0x10
  f6:	83c1                	srli	a5,a5,0x10
  f8:	04f76263          	bltu	a4,a5,13c <.L255>
			f8: R_RISCV_BRANCH	.L255
  fc:	4615                	li	a2,5
  fe:	001b8593          	addi	a1,s7,1
 102:	06340513          	addi	a0,s0,99
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	memcpy
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LBB630+0x1e>

0000010e <.LVL446>:
 10e:	85e6                	mv	a1,s9
 110:	8562                	mv	a0,s8
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	lld_ch_map_ind
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.LVL446+0x4>

0000011a <.LVL447>:
 11a:	4785                	li	a5,1
 11c:	00fa80a3          	sb	a5,1(s5)

00000120 <.LBE630>:
 120:	f0c9                	bnez	s1,a2 <.L241>
			120: R_RISCV_RVC_BRANCH	.L241

00000122 <.L256>:
 122:	05c45783          	lhu	a5,92(s0)
 126:	01479713          	slli	a4,a5,0x14
 12a:	02075f63          	bgez	a4,168 <.L259>
			12a: R_RISCV_BRANCH	.L259
 12e:	777d                	lui	a4,0xfffff
 130:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF870+0xffffab49>
 134:	8ff9                	and	a5,a5,a4
 136:	04f41e23          	sh	a5,92(s0)
 13a:	b7a5                	j	a2 <.L241>
			13a: R_RISCV_RVC_JUMP	.L241

0000013c <.L255>:
 13c:	478d                	li	a5,3
 13e:	00fa80a3          	sb	a5,1(s5)

00000142 <.LBE631>:
 142:	f0a5                	bnez	s1,a2 <.L241>
			142: R_RISCV_RVC_BRANCH	.L241

00000144 <.L257>:
 144:	02800593          	li	a1,40

00000148 <.L265>:
 148:	855a                	mv	a0,s6
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	llc_util_dicon_procedure
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.L265+0x2>

00000152 <.LVL451>:
 152:	bf81                	j	a2 <.L241>
			152: R_RISCV_RVC_JUMP	.L241

00000154 <.L251>:
 154:	02300613          	li	a2,35

00000158 <.L266>:
 158:	000bc583          	lbu	a1,0(s7)
 15c:	855a                	mv	a0,s6
 15e:	00000097          	auipc	ra,0x0
			15e: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			15e: R_RISCV_RELAX	*ABS*
 162:	000080e7          	jalr	ra # 15e <.L266+0x6>

00000166 <.LVL452>:
 166:	bf35                	j	a2 <.L241>
			166: R_RISCV_RVC_JUMP	.L241

00000168 <.L259>:
 168:	4007e793          	ori	a5,a5,1024
 16c:	04f41e23          	sh	a5,92(s0)

00000170 <.LBB632>:
 170:	00296593          	ori	a1,s2,2

00000174 <.LBE632>:
 174:	4785                	li	a5,1
 176:	0af40223          	sb	a5,164(s0)

0000017a <.LBB635>:
 17a:	0ff5f593          	andi	a1,a1,255
 17e:	8552                	mv	a0,s4
 180:	00000097          	auipc	ra,0x0
			180: R_RISCV_CALL	ble_ke_state_set
			180: R_RISCV_RELAX	*ABS*
 184:	000080e7          	jalr	ra # 180 <.LBB635+0x6>

00000188 <.LBE635>:
 188:	bf29                	j	a2 <.L241>
			188: R_RISCV_RVC_JUMP	.L241

Disassembly of section .text.llcp_con_upd_ind_handler:

00000000 <llcp_con_upd_ind_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	c462                	sw	s8,8(sp)
   4:	00000c37          	lui	s8,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	c266                	sw	s9,4(sp)
   a:	000c0793          	mv	a5,s8
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	00251c93          	slli	s9,a0,0x2
  12:	d226                	sw	s1,36(sp)
  14:	d04a                	sw	s2,32(sp)
  16:	ce4e                	sw	s3,28(sp)
  18:	cc52                	sw	s4,24(sp)
  1a:	ca56                	sw	s5,20(sp)
  1c:	c85a                	sw	s6,16(sp)
  1e:	c65e                	sw	s7,12(sp)
  20:	d606                	sw	ra,44(sp)
  22:	d422                	sw	s0,40(sp)
  24:	97e6                	add	a5,a5,s9
  26:	8aaa                	mv	s5,a0
  28:	852e                	mv	a0,a1

0000002a <.LVL456>:
  2a:	00c039b3          	snez	s3,a2
  2e:	8a2e                	mv	s4,a1
  30:	8b32                	mv	s6,a2
  32:	84b6                	mv	s1,a3
  34:	ffe68b93          	addi	s7,a3,-2
  38:	4380                	lw	s0,0(a5)
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	ble_ke_state_get
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL456+0x10>

00000042 <.LVL457>:
  42:	0986                	slli	s3,s3,0x1

00000044 <.LVL458>:
  44:	892a                	mv	s2,a0

00000046 <.LVL459>:
  46:	000c0c13          	mv	s8,s8
			46: R_RISCV_LO12_I	llc_env
			46: R_RISCV_RELAX	*ABS*
  4a:	020b0363          	beqz	s6,70 <.L269>
			4a: R_RISCV_BRANCH	.L269
  4e:	000b80a3          	sb	zero,1(s7)

00000052 <.L270>:
  52:	9c66                	add	s8,s8,s9
  54:	000c2783          	lw	a5,0(s8) # 0 <llcp_con_upd_ind_handler>
  58:	0a57c783          	lbu	a5,165(a5)
  5c:	8ba1                	andi	a5,a5,8
  5e:	cb95                	beqz	a5,92 <.L272>
			5e: R_RISCV_RVC_BRANCH	.L272
  60:	4791                	li	a5,4
  62:	00fb80a3          	sb	a5,1(s7)
  66:	120b1f63          	bnez	s6,1a4 <.L267>
			66: R_RISCV_BRANCH	.L267

0000006a <.L273>:
  6a:	03d00593          	li	a1,61
  6e:	aa99                	j	1c4 <.L296>
			6e: R_RISCV_RVC_JUMP	.L296

00000070 <.L269>:
  70:	001bc783          	lbu	a5,1(s7)
  74:	dff9                	beqz	a5,52 <.L270>
			74: R_RISCV_RVC_BRANCH	.L270
  76:	17fd                	addi	a5,a5,-1
  78:	0ff7f793          	andi	a5,a5,255
  7c:	4711                	li	a4,4
  7e:	12f76363          	bltu	a4,a5,1a4 <.L267>
			7e: R_RISCV_BRANCH	.L267
  82:	00000737          	lui	a4,0x0
			82: R_RISCV_HI20	.L284
			82: R_RISCV_RELAX	*ABS*
  86:	078a                	slli	a5,a5,0x2
  88:	00070713          	mv	a4,a4
			88: R_RISCV_LO12_I	.L284
			88: R_RISCV_RELAX	*ABS*
  8c:	97ba                	add	a5,a5,a4
  8e:	439c                	lw	a5,0(a5)
  90:	8782                	jr	a5

00000092 <.L272>:
  92:	4808                	lw	a0,16(s0)
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	lld_util_instant_ongoing
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.L272+0x2>

0000009c <.LVL460>:
  9c:	c105                	beqz	a0,bc <.L275>
			9c: R_RISCV_RVC_BRANCH	.L275
  9e:	4789                	li	a5,2
  a0:	00fb80a3          	sb	a5,1(s7)
  a4:	100b1063          	bnez	s6,1a4 <.L267>
			a4: R_RISCV_BRANCH	.L267

000000a8 <.L277>:
  a8:	02300613          	li	a2,35

000000ac <.L297>:
  ac:	0004c583          	lbu	a1,0(s1)
  b0:	8556                	mv	a0,s5
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.L297+0x6>

000000ba <.LVL461>:
  ba:	a0ed                	j	1a4 <.L267>
			ba: R_RISCV_RVC_JUMP	.L267

000000bc <.L275>:
  bc:	8556                	mv	a0,s5
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	lld_get_mode
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.L275+0x2>

000000c6 <.LVL462>:
  c6:	4791                	li	a5,4
  c8:	00f50963          	beq	a0,a5,da <.L278>
			c8: R_RISCV_BRANCH	.L278
  cc:	4795                	li	a5,5
  ce:	00fb80a3          	sb	a5,1(s7)
  d2:	0c0b1963          	bnez	s6,1a4 <.L267>
			d2: R_RISCV_BRANCH	.L267

000000d6 <.L279>:
  d6:	4645                	li	a2,17
  d8:	bfd1                	j	ac <.L297>
			d8: R_RISCV_RVC_JUMP	.L297

000000da <.L278>:
  da:	4814                	lw	a3,16(s0)

000000dc <.LVL464>:
  dc:	00a4d783          	lhu	a5,10(s1)
  e0:	0606d703          	lhu	a4,96(a3)
  e4:	8f99                	sub	a5,a5,a4
  e6:	07c2                	slli	a5,a5,0x10
  e8:	6721                	lui	a4,0x8
  ea:	83c1                	srli	a5,a5,0x10
  ec:	1779                	addi	a4,a4,-2
  ee:	0af76663          	bltu	a4,a5,19a <.L280>
			ee: R_RISCV_BRANCH	.L280
  f2:	0786d783          	lhu	a5,120(a3)
  f6:	0014c703          	lbu	a4,1(s1)
  fa:	8385                	srli	a5,a5,0x1
  fc:	00f76563          	bltu	a4,a5,106 <.L281>
			fc: R_RISCV_BRANCH	.L281

00000100 <.LVL465>:
 100:	17fd                	addi	a5,a5,-1

00000102 <.LVL466>:
 102:	00f480a3          	sb	a5,1(s1)

00000106 <.L281>:
 106:	0084d783          	lhu	a5,8(s1)

0000010a <.LBB638>:
 10a:	4808                	lw	a0,16(s0)
 10c:	85a6                	mv	a1,s1
 10e:	04f41b23          	sh	a5,86(s0)

00000112 <.LVL469>:
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	lld_con_update_ind
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.LVL469>

0000011a <.LVL470>:
 11a:	4785                	li	a5,1
 11c:	00fb80a3          	sb	a5,1(s7)

00000120 <.LBE638>:
 120:	080b1263          	bnez	s6,1a4 <.L267>
			120: R_RISCV_BRANCH	.L267

00000124 <.L282>:
 124:	00197793          	andi	a5,s2,1
 128:	c3a1                	beqz	a5,168 <.L285>
			128: R_RISCV_RVC_BRANCH	.L285
 12a:	0a344783          	lbu	a5,163(s0)
 12e:	4705                	li	a4,1
 130:	17e5                	addi	a5,a5,-7
 132:	0ff7f793          	andi	a5,a5,255
 136:	02f76963          	bltu	a4,a5,168 <.L285>
			136: R_RISCV_BRANCH	.L285
 13a:	85d2                	mv	a1,s4
 13c:	10200513          	li	a0,258
 140:	00000097          	auipc	ra,0x0
			140: R_RISCV_CALL	ble_ke_timer_clear
			140: R_RISCV_RELAX	*ABS*
 144:	000080e7          	jalr	ra # 140 <.L282+0x1c>

00000148 <.LBB641>:
 148:	0fe97913          	andi	s2,s2,254

0000014c <.LVL473>:
 14c:	85ca                	mv	a1,s2
 14e:	8552                	mv	a0,s4

00000150 <.LBE641>:
 150:	0a0401a3          	sb	zero,163(s0)

00000154 <.LBB644>:
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	ble_ke_state_set
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LBB644>

0000015c <.LBE644>:
 15c:	4581                	li	a1,0
 15e:	8556                	mv	a0,s5
 160:	00000097          	auipc	ra,0x0
			160: R_RISCV_CALL	llc_util_clear_operation_ptr
			160: R_RISCV_RELAX	*ABS*
 164:	000080e7          	jalr	ra # 160 <.LBE644+0x4>

00000168 <.L285>:
 168:	0a444703          	lbu	a4,164(s0)
 16c:	478d                	li	a5,3
 16e:	00f71963          	bne	a4,a5,180 <.L286>
			16e: R_RISCV_BRANCH	.L286
 172:	85d2                	mv	a1,s4
 174:	10200513          	li	a0,258
 178:	00000097          	auipc	ra,0x0
			178: R_RISCV_CALL	ble_ke_timer_clear
			178: R_RISCV_RELAX	*ABS*
 17c:	000080e7          	jalr	ra # 178 <.L285+0x10>

00000180 <.L286>:
 180:	05c45783          	lhu	a5,92(s0)
 184:	01479713          	slli	a4,a5,0x14
 188:	04075463          	bgez	a4,1d0 <.L287>
			188: R_RISCV_BRANCH	.L287
 18c:	777d                	lui	a4,0xfffff
 18e:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF870+0xffffab49>
 192:	8ff9                	and	a5,a5,a4
 194:	04f41e23          	sh	a5,92(s0)
 198:	a031                	j	1a4 <.L267>
			198: R_RISCV_RVC_JUMP	.L267

0000019a <.L280>:
 19a:	478d                	li	a5,3
 19c:	00fb80a3          	sb	a5,1(s7)

000001a0 <.LBE645>:
 1a0:	020b0063          	beqz	s6,1c0 <.L283>
			1a0: R_RISCV_BRANCH	.L283

000001a4 <.L267>:
 1a4:	50b2                	lw	ra,44(sp)
 1a6:	5422                	lw	s0,40(sp)

000001a8 <.LVL480>:
 1a8:	854e                	mv	a0,s3
 1aa:	5492                	lw	s1,36(sp)

000001ac <.LVL481>:
 1ac:	5902                	lw	s2,32(sp)
 1ae:	49f2                	lw	s3,28(sp)

000001b0 <.LVL482>:
 1b0:	4a62                	lw	s4,24(sp)
 1b2:	4ad2                	lw	s5,20(sp)
 1b4:	4b42                	lw	s6,16(sp)
 1b6:	4bb2                	lw	s7,12(sp)

000001b8 <.LVL483>:
 1b8:	4c22                	lw	s8,8(sp)
 1ba:	4c92                	lw	s9,4(sp)
 1bc:	6145                	addi	sp,sp,48
 1be:	8082                	ret

000001c0 <.L283>:
 1c0:	02800593          	li	a1,40

000001c4 <.L296>:
 1c4:	8556                	mv	a0,s5
 1c6:	00000097          	auipc	ra,0x0
			1c6: R_RISCV_CALL	llc_util_dicon_procedure
			1c6: R_RISCV_RELAX	*ABS*
 1ca:	000080e7          	jalr	ra # 1c6 <.L296+0x2>

000001ce <.LVL485>:
 1ce:	bfd9                	j	1a4 <.L267>
			1ce: R_RISCV_RVC_JUMP	.L267

000001d0 <.L287>:
 1d0:	4007e793          	ori	a5,a5,1024
 1d4:	04f41e23          	sh	a5,92(s0)

000001d8 <.LBB646>:
 1d8:	00296593          	ori	a1,s2,2

000001dc <.LBE646>:
 1dc:	4791                	li	a5,4
 1de:	0af40223          	sb	a5,164(s0)

000001e2 <.LBB649>:
 1e2:	0ff5f593          	andi	a1,a1,255
 1e6:	8552                	mv	a0,s4
 1e8:	00000097          	auipc	ra,0x0
			1e8: R_RISCV_CALL	ble_ke_state_set
			1e8: R_RISCV_RELAX	*ABS*
 1ec:	000080e7          	jalr	ra # 1e8 <.LBB649+0x6>

000001f0 <.LBE649>:
 1f0:	bf55                	j	1a4 <.L267>
			1f0: R_RISCV_RVC_JUMP	.L267

Disassembly of section .text.llc_llcp_con_update_pdu_send:

00000000 <llc_llcp_con_update_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	0015c783          	lbu	a5,1(a1)
   8:	4601                	li	a2,0
   a:	0ff57513          	andi	a0,a0,255

0000000e <.LVL489>:
   e:	00f102a3          	sb	a5,5(sp)
  12:	0025d783          	lhu	a5,2(a1)
  16:	00010223          	sb	zero,4(sp)
  1a:	00f11323          	sh	a5,6(sp)
  1e:	0045d783          	lhu	a5,4(a1)
  22:	00f11423          	sh	a5,8(sp)
  26:	0065d783          	lhu	a5,6(a1)
  2a:	00f11523          	sh	a5,10(sp)
  2e:	0085d783          	lhu	a5,8(a1)
  32:	00f11623          	sh	a5,12(sp)
  36:	00a5d783          	lhu	a5,10(a1)
  3a:	004c                	addi	a1,sp,4

0000003c <.LVL495>:
  3c:	00f11723          	sh	a5,14(sp)
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	llc_llcp_send
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL495+0x4>

00000048 <.LVL496>:
  48:	40f2                	lw	ra,28(sp)
  4a:	6105                	addi	sp,sp,32
  4c:	8082                	ret

Disassembly of section .text.llc_llcp_con_param_req_pdu_send:

00000000 <llc_llcp_con_param_req_pdu_send>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	47bd                	li	a5,15
   6:	00f10223          	sb	a5,4(sp)
   a:	00e5d783          	lhu	a5,14(a1)
   e:	463d                	li	a2,15
  10:	0ff57513          	andi	a0,a0,255

00000014 <.LVL499>:
  14:	00f11323          	sh	a5,6(sp)
  18:	0105d783          	lhu	a5,16(a1)
  1c:	00f11423          	sh	a5,8(sp)
  20:	0065d783          	lhu	a5,6(a1)
  24:	00f11523          	sh	a5,10(sp)
  28:	0085d783          	lhu	a5,8(a1)
  2c:	00f11623          	sh	a5,12(sp)
  30:	0125c783          	lbu	a5,18(a1)
  34:	00f10723          	sb	a5,14(sp)
  38:	0145d783          	lhu	a5,20(a1)
  3c:	00f11823          	sh	a5,16(sp)
  40:	0165d783          	lhu	a5,22(a1)
  44:	00f11923          	sh	a5,18(sp)
  48:	0185d783          	lhu	a5,24(a1)
  4c:	00f11a23          	sh	a5,20(sp)
  50:	01a5d783          	lhu	a5,26(a1)
  54:	00f11b23          	sh	a5,22(sp)
  58:	01c5d783          	lhu	a5,28(a1)
  5c:	00f11c23          	sh	a5,24(sp)
  60:	01e5d783          	lhu	a5,30(a1)
  64:	00f11d23          	sh	a5,26(sp)
  68:	0205d783          	lhu	a5,32(a1)
  6c:	004c                	addi	a1,sp,4

0000006e <.LVL510>:
  6e:	00f11e23          	sh	a5,28(sp)
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	llc_llcp_send
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL510+0x4>

0000007a <.LVL511>:
  7a:	50b2                	lw	ra,44(sp)
  7c:	6145                	addi	sp,sp,48
  7e:	8082                	ret

Disassembly of section .text.llc_llcp_con_param_rsp_pdu_send:

00000000 <llc_llcp_con_param_rsp_pdu_send>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	47c1                	li	a5,16
   6:	00f10223          	sb	a5,4(sp)
   a:	00e5d783          	lhu	a5,14(a1)
   e:	4641                	li	a2,16
  10:	0ff57513          	andi	a0,a0,255

00000014 <.LVL514>:
  14:	00f11323          	sh	a5,6(sp)
  18:	0105d783          	lhu	a5,16(a1)
  1c:	00f11423          	sh	a5,8(sp)
  20:	0065d783          	lhu	a5,6(a1)
  24:	00f11523          	sh	a5,10(sp)
  28:	0085d783          	lhu	a5,8(a1)
  2c:	00f11623          	sh	a5,12(sp)
  30:	0125c783          	lbu	a5,18(a1)
  34:	00f10723          	sb	a5,14(sp)
  38:	0145d783          	lhu	a5,20(a1)
  3c:	00f11823          	sh	a5,16(sp)
  40:	0165d783          	lhu	a5,22(a1)
  44:	00f11923          	sh	a5,18(sp)
  48:	0185d783          	lhu	a5,24(a1)
  4c:	00f11a23          	sh	a5,20(sp)
  50:	01a5d783          	lhu	a5,26(a1)
  54:	00f11b23          	sh	a5,22(sp)
  58:	01c5d783          	lhu	a5,28(a1)
  5c:	00f11c23          	sh	a5,24(sp)
  60:	01e5d783          	lhu	a5,30(a1)
  64:	00f11d23          	sh	a5,26(sp)
  68:	0205d783          	lhu	a5,32(a1)
  6c:	004c                	addi	a1,sp,4

0000006e <.LVL525>:
  6e:	00f11e23          	sh	a5,28(sp)
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	llc_llcp_send
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL525+0x4>

0000007a <.LVL526>:
  7a:	50b2                	lw	ra,44(sp)
  7c:	6145                	addi	sp,sp,48
  7e:	8082                	ret

Disassembly of section .text.llcp_con_param_req_handler:

00000000 <llcp_con_param_req_handler>:
   0:	715d                	addi	sp,sp,-80
   2:	c2a6                	sw	s1,68(sp)
   4:	84aa                	mv	s1,a0
   6:	852e                	mv	a0,a1

00000008 <.LVL528>:
   8:	c4a2                	sw	s0,72(sp)
   a:	c0ca                	sw	s2,64(sp)
   c:	de4e                	sw	s3,60(sp)
   e:	c686                	sw	ra,76(sp)
  10:	dc52                	sw	s4,56(sp)
  12:	da56                	sw	s5,52(sp)
  14:	89ae                	mv	s3,a1
  16:	8436                	mv	s0,a3
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL528+0x10>

00000020 <.LVL529>:
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	llc_env
			20: R_RISCV_RELAX	*ABS*
  24:	00249713          	slli	a4,s1,0x2
  28:	00078793          	mv	a5,a5
			28: R_RISCV_LO12_I	llc_env
			28: R_RISCV_RELAX	*ABS*
  2c:	97ba                	add	a5,a5,a4
  2e:	0007a903          	lw	s2,0(a5) # 0 <llcp_con_param_req_handler>

00000032 <.LVL530>:
  32:	0a594783          	lbu	a5,165(s2)
  36:	8ba1                	andi	a5,a5,8
  38:	c395                	beqz	a5,5c <.L305>
			38: R_RISCV_RVC_BRANCH	.L305
  3a:	03d00593          	li	a1,61
  3e:	8526                	mv	a0,s1

00000040 <.LVL531>:
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	llc_util_dicon_procedure
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL531>

00000048 <.L306>:
  48:	40b6                	lw	ra,76(sp)
  4a:	4426                	lw	s0,72(sp)

0000004c <.LVL533>:
  4c:	4496                	lw	s1,68(sp)
  4e:	4906                	lw	s2,64(sp)

00000050 <.LVL534>:
  50:	59f2                	lw	s3,60(sp)
  52:	5a62                	lw	s4,56(sp)
  54:	5ad2                	lw	s5,52(sp)
  56:	4501                	li	a0,0
  58:	6161                	addi	sp,sp,80
  5a:	8082                	ret

0000005c <.L305>:
  5c:	00257793          	andi	a5,a0,2
  60:	8a2a                	mv	s4,a0

00000062 <.LBB650>:
  62:	cb99                	beqz	a5,78 <.L307>
			62: R_RISCV_RVC_BRANCH	.L307

00000064 <.L309>:
  64:	02300613          	li	a2,35

00000068 <.L326>:
  68:	00044583          	lbu	a1,0(s0)

0000006c <.L323>:
  6c:	8526                	mv	a0,s1
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L323+0x2>

00000076 <.LVL538>:
  76:	bfc9                	j	48 <.L306>
			76: R_RISCV_RVC_JUMP	.L306

00000078 <.L307>:
  78:	8526                	mv	a0,s1

0000007a <.LVL540>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	lld_get_mode
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL540>

00000082 <.LVL541>:
  82:	478d                	li	a5,3
  84:	02f51363          	bne	a0,a5,aa <.L308>
			84: R_RISCV_BRANCH	.L308

00000088 <.LBB664>:
  88:	001a7793          	andi	a5,s4,1
  8c:	cf99                	beqz	a5,aa <.L308>
			8c: R_RISCV_RVC_BRANCH	.L308
  8e:	0a394783          	lbu	a5,163(s2)
  92:	471d                	li	a4,7
  94:	fce788e3          	beq	a5,a4,64 <.L309>
			94: R_RISCV_BRANCH	.L309
  98:	4725                	li	a4,9
  9a:	fce785e3          	beq	a5,a4,64 <.L309>
			9a: R_RISCV_BRANCH	.L309
  9e:	4719                	li	a4,6
  a0:	00e79563          	bne	a5,a4,aa <.L308>
			a0: R_RISCV_BRANCH	.L308
  a4:	02a00613          	li	a2,42
  a8:	b7c1                	j	68 <.L326>
			a8: R_RISCV_RVC_JUMP	.L326

000000aa <.L308>:
  aa:	00245583          	lhu	a1,2(s0)
  ae:	00445703          	lhu	a4,4(s0)
  b2:	04b76263          	bltu	a4,a1,f6 <.L311>
			b2: R_RISCV_BRANCH	.L311
  b6:	00645603          	lhu	a2,6(s0)
  ba:	1f300793          	li	a5,499
  be:	02c7ec63          	bltu	a5,a2,f6 <.L311>
			be: R_RISCV_BRANCH	.L311
  c2:	6785                	lui	a5,0x1
  c4:	c8078693          	addi	a3,a5,-896 # c80 <.LLST83+0xb>
  c8:	02e6e763          	bltu	a3,a4,f6 <.L311>
			c8: R_RISCV_BRANCH	.L311
  cc:	4695                	li	a3,5
  ce:	02b6f463          	bgeu	a3,a1,f6 <.L311>
			ce: R_RISCV_BRANCH	.L311
  d2:	00845683          	lhu	a3,8(s0)
  d6:	c7678793          	addi	a5,a5,-906
  da:	ff668513          	addi	a0,a3,-10
  de:	0542                	slli	a0,a0,0x10
  e0:	8141                	srli	a0,a0,0x10
  e2:	00a7ea63          	bltu	a5,a0,f6 <.L311>
			e2: R_RISCV_BRANCH	.L311
  e6:	00160793          	addi	a5,a2,1
  ea:	02e787b3          	mul	a5,a5,a4
  ee:	00269513          	slli	a0,a3,0x2
  f2:	00a7e563          	bltu	a5,a0,fc <.L312>
			f2: R_RISCV_BRANCH	.L312

000000f6 <.L311>:
  f6:	4679                	li	a2,30

000000f8 <.L325>:
  f8:	45bd                	li	a1,15
  fa:	bf8d                	j	6c <.L323>
			fa: R_RISCV_RVC_JUMP	.L323

000000fc <.L312>:
  fc:	01092503          	lw	a0,16(s2)
 100:	07855783          	lhu	a5,120(a0)
 104:	8385                	srli	a5,a5,0x1
 106:	00b7ed63          	bltu	a5,a1,120 <.L313>
			106: R_RISCV_BRANCH	.L313
 10a:	00f76b63          	bltu	a4,a5,120 <.L313>
			10a: R_RISCV_BRANCH	.L313
 10e:	05e55783          	lhu	a5,94(a0)
 112:	17fd                	addi	a5,a5,-1
 114:	00f61663          	bne	a2,a5,120 <.L313>
			114: R_RISCV_BRANCH	.L313
 118:	05495783          	lhu	a5,84(s2)
 11c:	08d78d63          	beq	a5,a3,1b6 <.L314>
			11c: R_RISCV_BRANCH	.L314

00000120 <.L313>:
 120:	4515                	li	a0,5
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	llm_util_check_evt_mask
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.L313+0x2>

0000012a <.LVL546>:
 12a:	c541                	beqz	a0,1b2 <.L315>
			12a: R_RISCV_RVC_BRANCH	.L315

0000012c <.LBB660>:
 12c:	02200693          	li	a3,34
 130:	864e                	mv	a2,s3
 132:	85ce                	mv	a1,s3
 134:	10900513          	li	a0,265
 138:	00000097          	auipc	ra,0x0
			138: R_RISCV_CALL	ble_ke_msg_alloc
			138: R_RISCV_RELAX	*ABS*
 13c:	000080e7          	jalr	ra # 138 <.LBB660+0xc>

00000140 <.LVL547>:
 140:	470d                	li	a4,3
 142:	87aa                	mv	a5,a0

00000144 <.LVL548>:
 144:	00e50023          	sb	a4,0(a0)

00000148 <.L324>:
 148:	00245703          	lhu	a4,2(s0)
 14c:	00e79723          	sh	a4,14(a5)
 150:	00445703          	lhu	a4,4(s0)
 154:	00e79823          	sh	a4,16(a5)
 158:	00645703          	lhu	a4,6(s0)
 15c:	00e79323          	sh	a4,6(a5)
 160:	00845703          	lhu	a4,8(s0)
 164:	00e79423          	sh	a4,8(a5)
 168:	00a44703          	lbu	a4,10(s0)
 16c:	00e78923          	sb	a4,18(a5)
 170:	00c45703          	lhu	a4,12(s0)
 174:	00e79a23          	sh	a4,20(a5)
 178:	00e45703          	lhu	a4,14(s0)
 17c:	00e79b23          	sh	a4,22(a5)
 180:	01045703          	lhu	a4,16(s0)
 184:	00e79c23          	sh	a4,24(a5)
 188:	01245703          	lhu	a4,18(s0)
 18c:	00e79d23          	sh	a4,26(a5)
 190:	01445703          	lhu	a4,20(s0)
 194:	00e79e23          	sh	a4,28(a5)
 198:	01645703          	lhu	a4,22(s0)
 19c:	00e79f23          	sh	a4,30(a5)
 1a0:	01845703          	lhu	a4,24(s0)
 1a4:	02e79023          	sh	a4,32(a5)
 1a8:	00000097          	auipc	ra,0x0
			1a8: R_RISCV_CALL	ble_ke_msg_send
			1a8: R_RISCV_RELAX	*ABS*
 1ac:	000080e7          	jalr	ra # 1a8 <.L324+0x60>

000001b0 <.LBE661>:
 1b0:	bd61                	j	48 <.L306>
			1b0: R_RISCV_RVC_JUMP	.L306

000001b2 <.L315>:
 1b2:	4669                	li	a2,26
 1b4:	b791                	j	f8 <.L325>
			1b4: R_RISCV_RVC_JUMP	.L325

000001b6 <.L314>:
 1b6:	8526                	mv	a0,s1
 1b8:	00000097          	auipc	ra,0x0
			1b8: R_RISCV_CALL	lld_get_mode
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	000080e7          	jalr	ra # 1b8 <.L314+0x2>

000001c0 <.LVL552>:
 1c0:	4a8d                	li	s5,3
 1c2:	05551f63          	bne	a0,s5,220 <.L316>
			1c2: R_RISCV_BRANCH	.L316

000001c6 <.LBB662>:
 1c6:	02200693          	li	a3,34
 1ca:	864e                	mv	a2,s3
 1cc:	85ce                	mv	a1,s3
 1ce:	10900513          	li	a0,265
 1d2:	00000097          	auipc	ra,0x0
			1d2: R_RISCV_CALL	ble_ke_msg_alloc
			1d2: R_RISCV_RELAX	*ABS*
 1d6:	000080e7          	jalr	ra # 1d2 <.LBB662+0xc>

000001da <.LVL553>:
 1da:	4709                	li	a4,2
 1dc:	00e50023          	sb	a4,0(a0)
 1e0:	00245703          	lhu	a4,2(s0)
 1e4:	27100613          	li	a2,625
 1e8:	87aa                	mv	a5,a0

000001ea <.LVL554>:
 1ea:	00e51123          	sh	a4,2(a0)
 1ee:	00445703          	lhu	a4,4(s0)
 1f2:	00e51223          	sh	a4,4(a0)
 1f6:	05495703          	lhu	a4,84(s2)
 1fa:	00e51423          	sh	a4,8(a0)
 1fe:	01092703          	lw	a4,16(s2)
 202:	01275683          	lhu	a3,18(a4)
 206:	02c6d6b3          	divu	a3,a3,a2
 20a:	00d51523          	sh	a3,10(a0)
 20e:	01092703          	lw	a4,16(s2)
 212:	01275703          	lhu	a4,18(a4)
 216:	02c75733          	divu	a4,a4,a2
 21a:	00e51623          	sh	a4,12(a0)
 21e:	b72d                	j	148 <.L324>
			21e: R_RISCV_RVC_JUMP	.L324

00000220 <.L316>:
 220:	8526                	mv	a0,s1
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	lld_get_mode
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.L316+0x2>

0000022a <.LVL556>:
 22a:	4791                	li	a5,4
 22c:	e0f51ee3          	bne	a0,a5,48 <.L306>
			22c: R_RISCV_BRANCH	.L306

00000230 <.LBB663>:
 230:	00245783          	lhu	a5,2(s0)
 234:	0070                	addi	a2,sp,12
 236:	8526                	mv	a0,s1
 238:	00f11d23          	sh	a5,26(sp)
 23c:	00445783          	lhu	a5,4(s0)
 240:	00f11e23          	sh	a5,28(sp)
 244:	00645783          	lhu	a5,6(s0)
 248:	00f11923          	sh	a5,18(sp)
 24c:	00845783          	lhu	a5,8(s0)
 250:	00f11a23          	sh	a5,20(sp)
 254:	00a44783          	lbu	a5,10(s0)
 258:	00f10f23          	sb	a5,30(sp)
 25c:	00c45783          	lhu	a5,12(s0)
 260:	02f11023          	sh	a5,32(sp)
 264:	00e45783          	lhu	a5,14(s0)
 268:	02f11123          	sh	a5,34(sp)
 26c:	01045783          	lhu	a5,16(s0)
 270:	02f11223          	sh	a5,36(sp)
 274:	01245783          	lhu	a5,18(s0)
 278:	02f11323          	sh	a5,38(sp)
 27c:	01445783          	lhu	a5,20(s0)
 280:	02f11423          	sh	a5,40(sp)
 284:	01645783          	lhu	a5,22(s0)
 288:	02f11523          	sh	a5,42(sp)
 28c:	01845783          	lhu	a5,24(s0)
 290:	02f11623          	sh	a5,44(sp)
 294:	01092583          	lw	a1,16(s2)
 298:	00000097          	auipc	ra,0x0
			298: R_RISCV_CALL	lld_con_param_rsp
			298: R_RISCV_RELAX	*ABS*
 29c:	000080e7          	jalr	ra # 298 <.LBB663+0x68>

000002a0 <.LVL557>:
 2a0:	ed0d                	bnez	a0,2da <.L317>
			2a0: R_RISCV_RVC_BRANCH	.L317

000002a2 <.LBB655>:
 2a2:	002a6593          	ori	a1,s4,2
 2a6:	854e                	mv	a0,s3

000002a8 <.LBE655>:
 2a8:	0b590223          	sb	s5,164(s2)

000002ac <.LBB658>:
 2ac:	0ff5f593          	andi	a1,a1,255
 2b0:	00000097          	auipc	ra,0x0
			2b0: R_RISCV_CALL	ble_ke_state_set
			2b0: R_RISCV_RELAX	*ABS*
 2b4:	000080e7          	jalr	ra # 2b0 <.LBB658+0x4>

000002b8 <.LBE658>:
 2b8:	006c                	addi	a1,sp,12
 2ba:	8526                	mv	a0,s1
 2bc:	00000097          	auipc	ra,0x0
			2bc: R_RISCV_CALL	llc_llcp_con_param_rsp_pdu_send
			2bc: R_RISCV_RELAX	*ABS*
 2c0:	000080e7          	jalr	ra # 2bc <.LBE658+0x4>

000002c4 <.LVL560>:
 2c4:	6605                	lui	a2,0x1
 2c6:	fa060613          	addi	a2,a2,-96 # fa0 <.LASF394+0xb>
 2ca:	85ce                	mv	a1,s3
 2cc:	10200513          	li	a0,258
 2d0:	00000097          	auipc	ra,0x0
			2d0: R_RISCV_CALL	ble_ke_timer_set
			2d0: R_RISCV_RELAX	*ABS*
 2d4:	000080e7          	jalr	ra # 2d0 <.LVL560+0xc>

000002d8 <.LVL561>:
 2d8:	bb85                	j	48 <.L306>
			2d8: R_RISCV_RVC_JUMP	.L306

000002da <.L317>:
 2da:	02000613          	li	a2,32
 2de:	bd29                	j	f8 <.L325>
			2de: R_RISCV_RVC_JUMP	.L325

Disassembly of section .text.llc_llcp_feats_req_pdu_send:

00000000 <llc_llcp_feats_req_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	lld_get_mode
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <llc_llcp_feats_req_pdu_send+0x8>

00000010 <.LVL564>:
  10:	470d                	li	a4,3
  12:	47b9                	li	a5,14
  14:	00e51363          	bne	a0,a4,1a <.L328>
			14: R_RISCV_BRANCH	.L328
  18:	47a1                	li	a5,8

0000001a <.L328>:
  1a:	00510513          	addi	a0,sp,5
  1e:	00f10223          	sb	a5,4(sp)
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	llm_util_get_supp_features
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.L328+0x8>

0000002a <.LVL565>:
  2a:	00414603          	lbu	a2,4(sp)
  2e:	004c                	addi	a1,sp,4
  30:	0ff47513          	andi	a0,s0,255
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	llc_llcp_send
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL565+0xa>

0000003c <.LVL566>:
  3c:	40f2                	lw	ra,28(sp)
  3e:	4462                	lw	s0,24(sp)
  40:	6105                	addi	sp,sp,32
  42:	8082                	ret

Disassembly of section .text.llc_llcp_feats_rsp_pdu_send:

00000000 <llc_llcp_feats_rsp_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	47a5                	li	a5,9
   6:	842a                	mv	s0,a0
   8:	00510513          	addi	a0,sp,5

0000000c <.LVL568>:
   c:	ce06                	sw	ra,28(sp)
   e:	00f10223          	sb	a5,4(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	llm_util_get_supp_features
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL568+0x6>

0000001a <.LVL569>:
  1a:	000007b7          	lui	a5,0x0
			1a: R_RISCV_HI20	llc_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	00241713          	slli	a4,s0,0x2
  22:	00078793          	mv	a5,a5
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	97ba                	add	a5,a5,a4
  28:	439c                	lw	a5,0(a5)
  2a:	00414603          	lbu	a2,4(sp)
  2e:	004c                	addi	a1,sp,4
  30:	0697c783          	lbu	a5,105(a5) # 69 <.LVL390+0x1>
  34:	0ff47513          	andi	a0,s0,255
  38:	00f102a3          	sb	a5,5(sp)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	llc_llcp_send
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL569+0x22>

00000044 <.LVL570>:
  44:	40f2                	lw	ra,28(sp)
  46:	4462                	lw	s0,24(sp)
  48:	6105                	addi	sp,sp,32
  4a:	8082                	ret

Disassembly of section .text.llc_llcp_start_enc_req_pdu_send:

00000000 <llc_llcp_start_enc_req_pdu_send>:
   0:	05c00793          	li	a5,92
   4:	02f507b3          	mul	a5,a0,a5
   8:	28008737          	lui	a4,0x28008

0000000c <.LBE667>:
   c:	1101                	addi	sp,sp,-32

0000000e <.LBB671>:
   e:	09270693          	addi	a3,a4,146 # 28008092 <.LASF870+0x280033dc>

00000012 <.LBE671>:
  12:	ce06                	sw	ra,28(sp)
  14:	006c                	addi	a1,sp,12

00000016 <.LBB672>:
  16:	96be                	add	a3,a3,a5
  18:	0006d603          	lhu	a2,0(a3)

0000001c <.LBE672>:
  1c:	10066613          	ori	a2,a2,256

00000020 <.LBB673>:
  20:	00c69023          	sh	a2,0(a3)

00000024 <.LBE673>:
  24:	000006b7          	lui	a3,0x0
			24: R_RISCV_HI20	llc_env
			24: R_RISCV_RELAX	*ABS*
  28:	00251613          	slli	a2,a0,0x2
  2c:	00068693          	mv	a3,a3
			2c: R_RISCV_LO12_I	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	96b2                	add	a3,a3,a2
  32:	4290                	lw	a2,0(a3)
  34:	0ff57513          	andi	a0,a0,255

00000038 <.LVL574>:
  38:	0a564683          	lbu	a3,165(a2)
  3c:	0026e693          	ori	a3,a3,2
  40:	0ad602a3          	sb	a3,165(a2)

00000044 <.LBB675>:
  44:	0cc70693          	addi	a3,a4,204
  48:	96be                	add	a3,a3,a5
  4a:	00069023          	sh	zero,0(a3) # 0 <llc_llcp_start_enc_req_pdu_send>

0000004e <.LBB677>:
  4e:	0ce70693          	addi	a3,a4,206
  52:	96be                	add	a3,a3,a5
  54:	00069023          	sh	zero,0(a3)

00000058 <.LBB679>:
  58:	0d070693          	addi	a3,a4,208
  5c:	96be                	add	a3,a3,a5
  5e:	00069023          	sh	zero,0(a3)

00000062 <.LBB681>:
  62:	0d270693          	addi	a3,a4,210
  66:	96be                	add	a3,a3,a5
  68:	00069023          	sh	zero,0(a3)

0000006c <.LBB683>:
  6c:	0d470693          	addi	a3,a4,212
  70:	96be                	add	a3,a3,a5

00000072 <.LBB686>:
  72:	0d670713          	addi	a4,a4,214
  76:	97ba                	add	a5,a5,a4

00000078 <.LBB689>:
  78:	00069023          	sh	zero,0(a3)

0000007c <.LBB690>:
  7c:	00079023          	sh	zero,0(a5)

00000080 <.LBE690>:
  80:	4615                	li	a2,5
  82:	4795                	li	a5,5
  84:	00f10623          	sb	a5,12(sp)
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	llc_llcp_send
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LBE690+0x8>

00000090 <.LVL582>:
  90:	40f2                	lw	ra,28(sp)
  92:	6105                	addi	sp,sp,32
  94:	8082                	ret

Disassembly of section .text.llc_llcp_terminate_ind_pdu_send:

00000000 <llc_llcp_terminate_ind_pdu_send>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00851413          	slli	s0,a0,0x8
   8:	00146413          	ori	s0,s0,1
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	0442                	slli	s0,s0,0x10
  12:	00251713          	slli	a4,a0,0x2
  16:	00078793          	mv	a5,a5
			16: R_RISCV_LO12_I	llc_env
			16: R_RISCV_RELAX	*ABS*
  1a:	8041                	srli	s0,s0,0x10
  1c:	97ba                	add	a5,a5,a4
  1e:	d226                	sw	s1,36(sp)
  20:	d606                	sw	ra,44(sp)
  22:	d04a                	sw	s2,32(sp)
  24:	84aa                	mv	s1,a0
  26:	8522                	mv	a0,s0

00000028 <.LVL584>:
  28:	c62e                	sw	a1,12(sp)
  2a:	0007a903          	lw	s2,0(a5) # 0 <llc_llcp_terminate_ind_pdu_send>

0000002e <.LVL585>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ble_ke_state_get
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL585>

00000036 <.LVL586>:
  36:	45b2                	lw	a1,12(sp)
  38:	474d                	li	a4,19
  3a:	47d9                	li	a5,22
  3c:	00e58363          	beq	a1,a4,42 <.L337>
			3c: R_RISCV_BRANCH	.L337
  40:	87ae                	mv	a5,a1

00000042 <.L337>:
  42:	00b10ea3          	sb	a1,29(sp)

00000046 <.LBB691>:
  46:	00f56593          	ori	a1,a0,15
  4a:	0af900a3          	sb	a5,161(s2)

0000004e <.LBB696>:
  4e:	8522                	mv	a0,s0

00000050 <.LBE696>:
  50:	4789                	li	a5,2

00000052 <.LBB697>:
  52:	0ff5f593          	andi	a1,a1,255

00000056 <.LBE697>:
  56:	00f10e23          	sb	a5,28(sp)

0000005a <.LBB698>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	ble_ke_state_set
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LBB698>

00000062 <.LBE698>:
  62:	01c14603          	lbu	a2,28(sp)
  66:	086c                	addi	a1,sp,28
  68:	0ff4f513          	andi	a0,s1,255
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	llc_llcp_send
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LBE698+0xa>

00000074 <.LVL590>:
  74:	05495603          	lhu	a2,84(s2)
  78:	85a2                	mv	a1,s0
  7a:	10200513          	li	a0,258
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	ble_ke_timer_set
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL590+0xa>

00000086 <.LVL591>:
  86:	50b2                	lw	ra,44(sp)
  88:	5422                	lw	s0,40(sp)

0000008a <.LVL592>:
  8a:	5492                	lw	s1,36(sp)

0000008c <.LVL593>:
  8c:	5902                	lw	s2,32(sp)

0000008e <.LVL594>:
  8e:	6145                	addi	sp,sp,48
  90:	8082                	ret

Disassembly of section .text.llc_llcp_unknown_rsp_send_pdu:

00000000 <llc_llcp_unknown_rsp_send_pdu>:
   0:	1101                	addi	sp,sp,-32
   2:	00b106a3          	sb	a1,13(sp)
   6:	479d                	li	a5,7
   8:	006c                	addi	a1,sp,12

0000000a <.LVL596>:
   a:	461d                	li	a2,7
   c:	0ff57513          	andi	a0,a0,255

00000010 <.LVL597>:
  10:	ce06                	sw	ra,28(sp)
  12:	00f10623          	sb	a5,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	llc_llcp_send
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL597+0x6>

0000001e <.LVL598>:
  1e:	40f2                	lw	ra,28(sp)
  20:	6105                	addi	sp,sp,32
  22:	8082                	ret

Disassembly of section .text.llc_llcp_unknown_ind_handler.isra.1:

00000000 <llc_llcp_unknown_ind_handler.isra.1>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	97ba                	add	a5,a5,a4
  12:	439c                	lw	a5,0(a5)
  14:	0a57c783          	lbu	a5,165(a5) # a5 <.LBB422+0x1>
  18:	8ba1                	andi	a5,a5,8
  1a:	cb99                	beqz	a5,30 <.L344>
			1a: R_RISCV_RVC_BRANCH	.L344
  1c:	03d00593          	li	a1,61

00000020 <.LVL600>:
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	llc_util_dicon_procedure
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL600>

00000028 <.L345>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

00000030 <.L344>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	llc_llcp_unknown_rsp_send_pdu
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L344>

00000038 <.LVL603>:
  38:	bfc5                	j	28 <.L345>
			38: R_RISCV_RVC_JUMP	.L345

Disassembly of section .text.llcp_feats_req_handler:

00000000 <llcp_feats_req_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	ce4e                	sw	s3,28(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	00251993          	slli	s3,a0,0x2
  12:	d226                	sw	s1,36(sp)
  14:	97ce                	add	a5,a5,s3
  16:	d606                	sw	ra,44(sp)
  18:	d04a                	sw	s2,32(sp)
  1a:	c636                	sw	a3,12(sp)
  1c:	0007a903          	lw	s2,0(a5)

00000020 <.LVL605>:
  20:	84aa                	mv	s1,a0
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	lld_get_mode
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL605+0x2>

0000002a <.LVL606>:
  2a:	4791                	li	a5,4
  2c:	00040413          	mv	s0,s0
			2c: R_RISCV_LO12_I	llc_env
			2c: R_RISCV_RELAX	*ABS*
  30:	46b2                	lw	a3,12(sp)
  32:	02f50563          	beq	a0,a5,5c <.L348>
			32: R_RISCV_BRANCH	.L348
  36:	0006c703          	lbu	a4,0(a3)
  3a:	47a1                	li	a5,8
  3c:	02f71063          	bne	a4,a5,5c <.L348>
			3c: R_RISCV_BRANCH	.L348
  40:	45a1                	li	a1,8
  42:	8526                	mv	a0,s1
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	llc_llcp_unknown_ind_handler.isra.1
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL606+0x1a>

0000004c <.L349>:
  4c:	50b2                	lw	ra,44(sp)
  4e:	5422                	lw	s0,40(sp)
  50:	5492                	lw	s1,36(sp)
  52:	5902                	lw	s2,32(sp)

00000054 <.LVL608>:
  54:	49f2                	lw	s3,28(sp)
  56:	4501                	li	a0,0
  58:	6145                	addi	sp,sp,48

0000005a <.LVL609>:
  5a:	8082                	ret

0000005c <.L348>:
  5c:	944e                	add	s0,s0,s3
  5e:	401c                	lw	a5,0(s0)
  60:	0a57c783          	lbu	a5,165(a5)
  64:	8ba1                	andi	a5,a5,8
  66:	cb89                	beqz	a5,78 <.L350>
			66: R_RISCV_RVC_BRANCH	.L350
  68:	03d00593          	li	a1,61
  6c:	8526                	mv	a0,s1
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	llc_util_dicon_procedure
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L348+0x12>

00000076 <.LVL611>:
  76:	bfd9                	j	4c <.L349>
			76: R_RISCV_RVC_JUMP	.L349

00000078 <.L350>:
  78:	06990793          	addi	a5,s2,105
  7c:	0685                	addi	a3,a3,1
  7e:	07190613          	addi	a2,s2,113

00000082 <.L351>:
  82:	0007c703          	lbu	a4,0(a5)
  86:	0006c583          	lbu	a1,0(a3)
  8a:	0785                	addi	a5,a5,1

0000008c <.LVL613>:
  8c:	0685                	addi	a3,a3,1
  8e:	8f6d                	and	a4,a4,a1
  90:	fee78fa3          	sb	a4,-1(a5)
  94:	fec797e3          	bne	a5,a2,82 <.L351>
			94: R_RISCV_BRANCH	.L351

00000098 <.LBE699>:
  98:	05c95783          	lhu	a5,92(s2)
  9c:	8526                	mv	a0,s1
  9e:	0017e793          	ori	a5,a5,1
  a2:	04f91e23          	sh	a5,92(s2)
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	llc_llcp_feats_rsp_pdu_send
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LBE699+0xe>

000000ae <.LVL614>:
  ae:	bf79                	j	4c <.L349>
			ae: R_RISCV_RVC_JUMP	.L349

Disassembly of section .text.llcp_slave_feature_req_handler:

00000000 <llcp_slave_feature_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c62e                	sw	a1,12(sp)
   6:	c432                	sw	a2,8(sp)
   8:	c236                	sw	a3,4(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	842a                	mv	s0,a0
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	lld_get_mode
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <llcp_slave_feature_req_handler+0xe>

00000016 <.LVL616>:
  16:	478d                	li	a5,3
  18:	4692                	lw	a3,4(sp)
  1a:	4622                	lw	a2,8(sp)
  1c:	45b2                	lw	a1,12(sp)
  1e:	00f51a63          	bne	a0,a5,32 <.L358>
			1e: R_RISCV_BRANCH	.L358
  22:	8522                	mv	a0,s0
  24:	4462                	lw	s0,24(sp)
  26:	40f2                	lw	ra,28(sp)
  28:	6105                	addi	sp,sp,32

0000002a <.LVL617>:
  2a:	00000317          	auipc	t1,0x0
			2a: R_RISCV_CALL	llcp_feats_req_handler
			2a: R_RISCV_RELAX	*ABS*
  2e:	00030067          	jr	t1 # 2a <.LVL617>

00000032 <.L358>:
  32:	8522                	mv	a0,s0
  34:	45b9                	li	a1,14
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	llc_llcp_unknown_ind_handler.isra.1
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.L358+0x4>

0000003e <.LVL619>:
  3e:	40f2                	lw	ra,28(sp)
  40:	4462                	lw	s0,24(sp)
  42:	4501                	li	a0,0
  44:	6105                	addi	sp,sp,32

00000046 <.LVL620>:
  46:	8082                	ret

Disassembly of section .text.llc_llcp_ping_req_pdu_send:

00000000 <llc_llcp_ping_req_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	47c9                	li	a5,18
   4:	006c                	addi	a1,sp,12
   6:	4649                	li	a2,18
   8:	0ff57513          	andi	a0,a0,255

0000000c <.LVL622>:
   c:	ce06                	sw	ra,28(sp)
   e:	00f10623          	sb	a5,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	llc_llcp_send
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL622+0x6>

0000001a <.LVL623>:
  1a:	40f2                	lw	ra,28(sp)
  1c:	6105                	addi	sp,sp,32
  1e:	8082                	ret

Disassembly of section .text.llc_llcp_ping_rsp_pdu_send:

00000000 <llc_llcp_ping_rsp_pdu_send>:
   0:	1101                	addi	sp,sp,-32
   2:	47cd                	li	a5,19
   4:	006c                	addi	a1,sp,12
   6:	464d                	li	a2,19
   8:	0ff57513          	andi	a0,a0,255

0000000c <.LVL625>:
   c:	ce06                	sw	ra,28(sp)
   e:	00f10623          	sb	a5,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	llc_llcp_send
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL625+0x6>

0000001a <.LVL626>:
  1a:	40f2                	lw	ra,28(sp)
  1c:	6105                	addi	sp,sp,32
  1e:	8082                	ret

Disassembly of section .text.llcp_ping_req_handler:

00000000 <llcp_ping_req_handler>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	c606                	sw	ra,12(sp)
  10:	97ba                	add	a5,a5,a4
  12:	439c                	lw	a5,0(a5)
  14:	0a57c783          	lbu	a5,165(a5) # a5 <.LBB422+0x1>
  18:	8ba1                	andi	a5,a5,8
  1a:	cb99                	beqz	a5,30 <.L365>
			1a: R_RISCV_RVC_BRANCH	.L365
  1c:	03d00593          	li	a1,61

00000020 <.LVL628>:
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	llc_util_dicon_procedure
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL628>

00000028 <.L366>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

00000030 <.L365>:
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	llc_llcp_ping_rsp_pdu_send
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.L365>

00000038 <.LVL631>:
  38:	bfc5                	j	28 <.L366>
			38: R_RISCV_RVC_JUMP	.L366

Disassembly of section .text.llc_llcp_length_req_pdu_send:

00000000 <llc_llcp_length_req_pdu_send>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1101                	addi	sp,sp,-32
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	97ba                	add	a5,a5,a4
  12:	439c                	lw	a5,0(a5)

00000014 <.LVL633>:
  14:	4751                	li	a4,20
  16:	00e10223          	sb	a4,4(sp)
  1a:	0447d703          	lhu	a4,68(a5) # 44 <.LVL638+0xa>
  1e:	004c                	addi	a1,sp,4
  20:	4651                	li	a2,20
  22:	00e11323          	sh	a4,6(sp)
  26:	04c7d703          	lhu	a4,76(a5)
  2a:	0ff57513          	andi	a0,a0,255

0000002e <.LVL636>:
  2e:	00e11423          	sh	a4,8(sp)
  32:	0427d703          	lhu	a4,66(a5)
  36:	04a7d783          	lhu	a5,74(a5)

0000003a <.LVL638>:
  3a:	00e11523          	sh	a4,10(sp)
  3e:	00f11623          	sh	a5,12(sp)
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	llc_llcp_send
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL638+0x8>

0000004a <.LVL639>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	6105                	addi	sp,sp,32
  4e:	8082                	ret

Disassembly of section .text.llc_llcp_length_rsp_pdu_send:

00000000 <llc_llcp_length_rsp_pdu_send>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1101                	addi	sp,sp,-32
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	97ba                	add	a5,a5,a4
  12:	439c                	lw	a5,0(a5)

00000014 <.LVL641>:
  14:	4755                	li	a4,21
  16:	00e10223          	sb	a4,4(sp)
  1a:	0447d703          	lhu	a4,68(a5) # 44 <.LVL646+0xa>
  1e:	004c                	addi	a1,sp,4
  20:	4655                	li	a2,21
  22:	00e11323          	sh	a4,6(sp)
  26:	04c7d703          	lhu	a4,76(a5)
  2a:	0ff57513          	andi	a0,a0,255

0000002e <.LVL644>:
  2e:	00e11423          	sh	a4,8(sp)
  32:	0427d703          	lhu	a4,66(a5)
  36:	04a7d783          	lhu	a5,74(a5)

0000003a <.LVL646>:
  3a:	00e11523          	sh	a4,10(sp)
  3e:	00f11623          	sh	a5,12(sp)
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	llc_llcp_send
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL646+0x8>

0000004a <.LVL647>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	6105                	addi	sp,sp,32
  4e:	8082                	ret

Disassembly of section .text.llcp_length_req_handler:

00000000 <llcp_length_req_handler>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	1101                	addi	sp,sp,-32
   6:	00251713          	slli	a4,a0,0x2
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	llc_env
			a: R_RISCV_RELAX	*ABS*
   e:	ce06                	sw	ra,28(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	c256                	sw	s5,4(sp)
  1c:	c05a                	sw	s6,0(sp)
  1e:	97ba                	add	a5,a5,a4
  20:	4380                	lw	s0,0(a5)

00000022 <.LVL649>:
  22:	05344783          	lbu	a5,83(s0) # 53 <.LVL652+0xd>
  26:	0017e793          	ori	a5,a5,1
  2a:	04f409a3          	sb	a5,83(s0)
  2e:	0a544783          	lbu	a5,165(s0)
  32:	8ba1                	andi	a5,a5,8
  34:	c395                	beqz	a5,58 <.L373>
			34: R_RISCV_RVC_BRANCH	.L373
  36:	03d00593          	li	a1,61

0000003a <.LVL650>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	llc_util_dicon_procedure
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL650>

00000042 <.L374>:
  42:	40f2                	lw	ra,28(sp)
  44:	4462                	lw	s0,24(sp)

00000046 <.LVL652>:
  46:	44d2                	lw	s1,20(sp)
  48:	4942                	lw	s2,16(sp)
  4a:	49b2                	lw	s3,12(sp)
  4c:	4a22                	lw	s4,8(sp)
  4e:	4a92                	lw	s5,4(sp)
  50:	4b02                	lw	s6,0(sp)
  52:	4501                	li	a0,0
  54:	6105                	addi	sp,sp,32
  56:	8082                	ret

00000058 <.L373>:
  58:	0066d703          	lhu	a4,6(a3)

0000005c <.LBB701>:
  5c:	04445783          	lhu	a5,68(s0)
  60:	8aaa                	mv	s5,a0

00000062 <.LBB704>:
  62:	00f77363          	bgeu	a4,a5,68 <.L375>
			62: R_RISCV_BRANCH	.L375
  66:	87ba                	mv	a5,a4

00000068 <.L375>:
  68:	01079a13          	slli	s4,a5,0x10

0000006c <.LBB705>:
  6c:	04c45983          	lhu	s3,76(s0)

00000070 <.LBE705>:
  70:	0086d783          	lhu	a5,8(a3)
  74:	010a5a13          	srli	s4,s4,0x10

00000078 <.LBB708>:
  78:	0137f363          	bgeu	a5,s3,7e <.L376>
			78: R_RISCV_BRANCH	.L376
  7c:	89be                	mv	s3,a5

0000007e <.L376>:
  7e:	0026d783          	lhu	a5,2(a3)

00000082 <.LBB709>:
  82:	04245903          	lhu	s2,66(s0)

00000086 <.LBE709>:
  86:	09c2                	slli	s3,s3,0x10
  88:	0109d993          	srli	s3,s3,0x10

0000008c <.LBB712>:
  8c:	0127f363          	bgeu	a5,s2,92 <.L377>
			8c: R_RISCV_BRANCH	.L377
  90:	893e                	mv	s2,a5

00000092 <.L377>:
  92:	0046d783          	lhu	a5,4(a3)

00000096 <.LBB713>:
  96:	04a45483          	lhu	s1,74(s0)

0000009a <.LBE713>:
  9a:	0942                	slli	s2,s2,0x10
  9c:	01095913          	srli	s2,s2,0x10

000000a0 <.LBB716>:
  a0:	0097f363          	bgeu	a5,s1,a6 <.L378>
			a0: R_RISCV_BRANCH	.L378
  a4:	84be                	mv	s1,a5

000000a6 <.L378>:
  a6:	04c2                	slli	s1,s1,0x10
  a8:	4808                	lw	a0,16(s0)

000000aa <.LVL658>:
  aa:	80c1                	srli	s1,s1,0x10
  ac:	864e                	mv	a2,s3

000000ae <.LVL660>:
  ae:	85a6                	mv	a1,s1

000000b0 <.LVL661>:
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	lld_util_compute_ce_max
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL661>

000000b8 <.LVL662>:
  b8:	04845783          	lhu	a5,72(s0)
  bc:	01479e63          	bne	a5,s4,d8 <.L379>
			bc: R_RISCV_BRANCH	.L379
  c0:	05045783          	lhu	a5,80(s0)
  c4:	01379a63          	bne	a5,s3,d8 <.L379>
			c4: R_RISCV_BRANCH	.L379
  c8:	04645783          	lhu	a5,70(s0)
  cc:	01279663          	bne	a5,s2,d8 <.L379>
			cc: R_RISCV_BRANCH	.L379
  d0:	04e45783          	lhu	a5,78(s0)
  d4:	02978c63          	beq	a5,s1,10c <.L380>
			d4: R_RISCV_BRANCH	.L380

000000d8 <.L379>:
  d8:	30002b73          	csrr	s6,mstatus

000000dc <.LBB719>:
  dc:	300477f3          	csrrci	a5,mstatus,8

000000e0 <.LBE719>:
  e0:	4808                	lw	a0,16(s0)
  e2:	05441423          	sh	s4,72(s0)
  e6:	05341823          	sh	s3,80(s0)
  ea:	05241323          	sh	s2,70(s0)
  ee:	04941723          	sh	s1,78(s0)
  f2:	864a                	mv	a2,s2
  f4:	85a6                	mv	a1,s1
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	lld_util_eff_tx_time_set
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.LBE719+0x16>

000000fe <.LVL665>:
  fe:	300b1073          	csrw	mstatus,s6

00000102 <.LBE717>:
 102:	05344783          	lbu	a5,83(s0)
 106:	9bf5                	andi	a5,a5,-3
 108:	04f409a3          	sb	a5,83(s0)

0000010c <.L380>:
 10c:	8556                	mv	a0,s5
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	llc_llcp_length_rsp_pdu_send
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.L380+0x2>

00000116 <.LVL667>:
 116:	05344783          	lbu	a5,83(s0)
 11a:	4519                	li	a0,6
 11c:	9bf9                	andi	a5,a5,-2
 11e:	04f409a3          	sb	a5,83(s0)
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	llm_util_check_evt_mask
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.LVL667+0xc>

0000012a <.LVL668>:
 12a:	dd01                	beqz	a0,42 <.L374>
			12a: R_RISCV_RVC_BRANCH	.L374
 12c:	05344783          	lbu	a5,83(s0)
 130:	8b89                	andi	a5,a5,2
 132:	fb81                	bnez	a5,42 <.L374>
			132: R_RISCV_RVC_BRANCH	.L374

00000134 <.LBB720>:
 134:	6505                	lui	a0,0x1
 136:	46b1                	li	a3,12
 138:	03e00613          	li	a2,62
 13c:	85d6                	mv	a1,s5
 13e:	80450513          	addi	a0,a0,-2044 # 804 <.LASF837>
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	ble_ke_msg_alloc
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.LBB720+0xe>

0000014a <.LVL669>:
 14a:	471d                	li	a4,7
 14c:	00e50023          	sb	a4,0(a0)

00000150 <.LBB721>:
 150:	01551123          	sh	s5,2(a0)
 154:	04845703          	lhu	a4,72(s0)
 158:	00e51423          	sh	a4,8(a0)
 15c:	05045703          	lhu	a4,80(s0)
 160:	00e51523          	sh	a4,10(a0)
 164:	04645703          	lhu	a4,70(s0)
 168:	00e51223          	sh	a4,4(a0)
 16c:	04e45703          	lhu	a4,78(s0)
 170:	00e51323          	sh	a4,6(a0)
 174:	00000097          	auipc	ra,0x0
			174: R_RISCV_CALL	hci_send_2_host
			174: R_RISCV_RELAX	*ABS*
 178:	000080e7          	jalr	ra # 174 <.LBB721+0x24>

0000017c <.LVL671>:
 17c:	05344783          	lbu	a5,83(s0)
 180:	0027e793          	ori	a5,a5,2
 184:	04f409a3          	sb	a5,83(s0)
 188:	bd6d                	j	42 <.L374>
			188: R_RISCV_RVC_JUMP	.L374

Disassembly of section .text.llc_llcp_recv_handler:

00000000 <llc_llcp_recv_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	00d034b3          	snez	s1,a3
   c:	ce06                	sw	ra,28(sp)
   e:	892a                	mv	s2,a0
  10:	c62e                	sw	a1,12(sp)
  12:	8432                	mv	s0,a2
  14:	c436                	sw	a3,8(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <llc_llcp_recv_handler+0x16>

0000001e <.LVL673>:
  1e:	07f57713          	andi	a4,a0,127
  22:	07f00793          	li	a5,127
  26:	0486                	slli	s1,s1,0x1

00000028 <.LBB723>:
  28:	08f70563          	beq	a4,a5,b2 <.L385>
			28: R_RISCV_BRANCH	.L385

0000002c <.LBB725>:
  2c:	893d                	andi	a0,a0,15

0000002e <.LVL676>:
  2e:	47bd                	li	a5,15
  30:	4622                	lw	a2,8(sp)
  32:	45b2                	lw	a1,12(sp)
  34:	00f51963          	bne	a0,a5,46 <.L388>
			34: R_RISCV_BRANCH	.L388
  38:	00044783          	lbu	a5,0(s0)
  3c:	4709                	li	a4,2
  3e:	0fb7f793          	andi	a5,a5,251
  42:	06e79863          	bne	a5,a4,b2 <.L385>
			42: R_RISCV_BRANCH	.L385

00000046 <.L388>:
  46:	00895513          	srli	a0,s2,0x8

0000004a <.LVL677>:
  4a:	000007b7          	lui	a5,0x0
			4a: R_RISCV_HI20	llc_env
			4a: R_RISCV_RELAX	*ABS*
  4e:	00251713          	slli	a4,a0,0x2
  52:	00078793          	mv	a5,a5
			52: R_RISCV_LO12_I	llc_env
			52: R_RISCV_RELAX	*ABS*
  56:	97ba                	add	a5,a5,a4
  58:	439c                	lw	a5,0(a5)
  5a:	05c7d783          	lhu	a5,92(a5) # 5c <.LVL677+0x12>
  5e:	8ba1                	andi	a5,a5,8
  60:	eba9                	bnez	a5,b2 <.L385>
			60: R_RISCV_RVC_BRANCH	.L385
  62:	e98d                	bnez	a1,94 <.L389>
			62: R_RISCV_RVC_BRANCH	.L389
  64:	00044703          	lbu	a4,0(s0)
  68:	000007b7          	lui	a5,0x0
			68: R_RISCV_HI20	.LANCHOR0
			68: R_RISCV_RELAX	*ABS*
  6c:	00078793          	mv	a5,a5
			6c: R_RISCV_LO12_I	.LANCHOR0
			6c: R_RISCV_RELAX	*ABS*
  70:	070e                	slli	a4,a4,0x3
  72:	c611                	beqz	a2,7e <.L390>
			72: R_RISCV_RVC_BRANCH	.L390
  74:	00e786b3          	add	a3,a5,a4
  78:	0046c683          	lbu	a3,4(a3)
  7c:	ca9d                	beqz	a3,b2 <.L385>
			7c: R_RISCV_RVC_BRANCH	.L385

0000007e <.L390>:
  7e:	97ba                	add	a5,a5,a4
  80:	86a2                	mv	a3,s0

00000082 <.LBE727>:
  82:	4462                	lw	s0,24(sp)

00000084 <.LVL678>:
  84:	40f2                	lw	ra,28(sp)
  86:	44d2                	lw	s1,20(sp)

00000088 <.LBB728>:
  88:	0007a303          	lw	t1,0(a5) # 0 <llc_llcp_recv_handler>
  8c:	85ca                	mv	a1,s2

0000008e <.LBE728>:
  8e:	4942                	lw	s2,16(sp)
  90:	6105                	addi	sp,sp,32

00000092 <.LBB729>:
  92:	8302                	jr	t1

00000094 <.L389>:
  94:	47e5                	li	a5,25
  96:	00f59e63          	bne	a1,a5,b2 <.L385>
			96: R_RISCV_BRANCH	.L385
  9a:	ee01                	bnez	a2,b2 <.L385>
			9a: R_RISCV_RVC_BRANCH	.L385
  9c:	00044583          	lbu	a1,0(s0)

000000a0 <.LBE729>:
  a0:	4462                	lw	s0,24(sp)

000000a2 <.LVL682>:
  a2:	40f2                	lw	ra,28(sp)
  a4:	44d2                	lw	s1,20(sp)

000000a6 <.LVL683>:
  a6:	4942                	lw	s2,16(sp)
  a8:	6105                	addi	sp,sp,32

000000aa <.LBB730>:
  aa:	00000317          	auipc	t1,0x0
			aa: R_RISCV_CALL	llc_llcp_unknown_ind_handler.isra.1
			aa: R_RISCV_RELAX	*ABS*
  ae:	00030067          	jr	t1 # aa <.LBB730>

000000b2 <.L385>:
  b2:	40f2                	lw	ra,28(sp)
  b4:	4462                	lw	s0,24(sp)

000000b6 <.LVL686>:
  b6:	8526                	mv	a0,s1
  b8:	4942                	lw	s2,16(sp)
  ba:	44d2                	lw	s1,20(sp)

000000bc <.LVL687>:
  bc:	6105                	addi	sp,sp,32
  be:	8082                	ret

Disassembly of section .text.llc_llcp_get_autorize:

00000000 <llc_llcp_get_autorize>:
   0:	47d5                	li	a5,21
   2:	00a7ec63          	bltu	a5,a0,1a <.L401>
			2: R_RISCV_BRANCH	.L401
   6:	00351793          	slli	a5,a0,0x3
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*

0000000e <.LVL689>:
   e:	00050513          	mv	a0,a0
			e: R_RISCV_LO12_I	.LANCHOR0
			e: R_RISCV_RELAX	*ABS*
  12:	953e                	add	a0,a0,a5
  14:	00554503          	lbu	a0,5(a0) # 5 <llc_llcp_get_autorize+0x5>

00000018 <.LVL690>:
  18:	8082                	ret

0000001a <.L401>:
  1a:	4501                	li	a0,0

0000001c <.LVL692>:
  1c:	8082                	ret
