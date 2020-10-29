
libblecontroller/llc_util.o:     file format elf32-littleriscv


Disassembly of section .text.llc_check_trafic_paused:

00000000 <llc_check_trafic_paused>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00251793          	slli	a5,a0,0x2
   c:	00048493          	mv	s1,s1
			c: R_RISCV_LO12_I	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	c04a                	sw	s2,0(sp)
  16:	94be                	add	s1,s1,a5
  18:	4098                	lw	a4,0(s1)
  1a:	05c75783          	lhu	a5,92(a4)
  1e:	8b91                	andi	a5,a5,4
  20:	c7a1                	beqz	a5,68 <.L1>
			20: R_RISCV_RVC_BRANCH	.L1
  22:	842a                	mv	s0,a0

00000024 <.LBB26>:
  24:	30002973          	csrr	s2,mstatus

00000028 <.LBB29>:
  28:	300477f3          	csrrci	a5,mstatus,8

0000002c <.LBE29>:
  2c:	4b08                	lw	a0,16(a4)

0000002e <.LVL3>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	lld_util_get_tx_pkt_cnt
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL3>

00000036 <.LVL4>:
  36:	30091073          	csrw	mstatus,s2

0000003a <.LBE27>:
  3a:	e51d                	bnez	a0,68 <.L1>
			3a: R_RISCV_RVC_BRANCH	.L1

0000003c <.LBB30>:
  3c:	4098                	lw	a4,0(s1)
  3e:	00841513          	slli	a0,s0,0x8

00000042 <.LVL5>:
  42:	00156613          	ori	a2,a0,1

00000046 <.LVL6>:
  46:	05c75783          	lhu	a5,92(a4)
  4a:	85b2                	mv	a1,a2
  4c:	10600513          	li	a0,262
  50:	9bed                	andi	a5,a5,-5
  52:	04f71e23          	sh	a5,92(a4)

00000056 <.LBE26>:
  56:	4422                	lw	s0,8(sp)
  58:	40b2                	lw	ra,12(sp)
  5a:	4492                	lw	s1,4(sp)
  5c:	4902                	lw	s2,0(sp)

0000005e <.LVL7>:
  5e:	0141                	addi	sp,sp,16

00000060 <.LBB31>:
  60:	00000317          	auipc	t1,0x0
			60: R_RISCV_CALL	ble_ke_msg_send_basic
			60: R_RISCV_RELAX	*ABS*
  64:	00030067          	jr	t1 # 60 <.LBB31>

00000068 <.L1>:
  68:	40b2                	lw	ra,12(sp)
  6a:	4422                	lw	s0,8(sp)
  6c:	4492                	lw	s1,4(sp)
  6e:	4902                	lw	s2,0(sp)
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

Disassembly of section .text.llc_util_get_free_conhdl:

00000000 <llc_util_get_free_conhdl>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0

00000006 <.LBB35>:
   6:	4505                	li	a0,1

00000008 <.LBE35>:
   8:	c422                	sw	s0,8(sp)
   a:	c606                	sw	ra,12(sp)

0000000c <.LBB36>:
   c:	07f00413          	li	s0,127
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LBB36+0x4>

00000018 <.LVL11>:
  18:	02850563          	beq	a0,s0,42 <.L9>
			18: R_RISCV_BRANCH	.L9

0000001c <.LVL12>:
  1c:	10100513          	li	a0,257
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ble_ke_state_get
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL12+0x4>

00000028 <.LBE36>:
  28:	47a5                	li	a5,9

0000002a <.LBB37>:
  2a:	00851663          	bne	a0,s0,36 <.L8>
			2a: R_RISCV_BRANCH	.L8

0000002e <.LBE37>:
  2e:	4785                	li	a5,1

00000030 <.L7>:
  30:	00f49023          	sh	a5,0(s1) # 0 <llc_util_get_free_conhdl>
  34:	4781                	li	a5,0

00000036 <.L8>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)
  3a:	4492                	lw	s1,4(sp)

0000003c <.LVL15>:
  3c:	853e                	mv	a0,a5
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

00000042 <.L9>:
  42:	4781                	li	a5,0
  44:	b7f5                	j	30 <.L7>
			44: R_RISCV_RVC_JUMP	.L7

Disassembly of section .text.llc_util_get_nb_active_link:

00000000 <llc_util_get_nb_active_link>:
   0:	1141                	addi	sp,sp,-16

00000002 <.LBB48>:
   2:	4505                	li	a0,1

00000004 <.LBE48>:
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)

00000008 <.LBB49>:
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ble_ke_state_get
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LBB49>

00000010 <.LVL18>:
  10:	f8150513          	addi	a0,a0,-127

00000014 <.LBE49>:
  14:	00a03433          	snez	s0,a0

00000018 <.LBB50>:
  18:	10100513          	li	a0,257
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	ble_ke_state_get
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LBB50+0x4>

00000024 <.LVL20>:
  24:	07f00793          	li	a5,127
  28:	00f50363          	beq	a0,a5,2e <.L13>
			28: R_RISCV_BRANCH	.L13
  2c:	0405                	addi	s0,s0,1

0000002e <.L13>:
  2e:	8522                	mv	a0,s0
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL22>:
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.llc_util_dicon_procedure:

00000000 <llc_util_dicon_procedure>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00251793          	slli	a5,a0,0x2
   c:	00048493          	mv	s1,s1
			c: R_RISCV_LO12_I	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	94be                	add	s1,s1,a5
  16:	00851413          	slli	s0,a0,0x8
  1a:	409c                	lw	a5,0(s1)
  1c:	00146413          	ori	s0,s0,1
  20:	0442                	slli	s0,s0,0x10
  22:	8041                	srli	s0,s0,0x10
  24:	0ab780a3          	sb	a1,161(a5)
  28:	8522                	mv	a0,s0

0000002a <.LVL24>:
  2a:	45bd                	li	a1,15

0000002c <.LVL25>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	ble_ke_state_set
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL25>

00000034 <.LVL26>:
  34:	85a2                	mv	a1,s0
  36:	10500513          	li	a0,261
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	ble_ke_timer_clear
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL26+0x6>

00000042 <.LBB51>:
  42:	30002473          	csrr	s0,mstatus

00000046 <.LBB53>:
  46:	300477f3          	csrrci	a5,mstatus,8

0000004a <.LBE53>:
  4a:	409c                	lw	a5,0(s1)
  4c:	4b88                	lw	a0,16(a5)
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	lld_con_stop
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LBE53+0x4>

00000056 <.LVL30>:
  56:	30041073          	csrw	mstatus,s0

0000005a <.LBE51>:
  5a:	40b2                	lw	ra,12(sp)
  5c:	4422                	lw	s0,8(sp)

0000005e <.LVL31>:
  5e:	4492                	lw	s1,4(sp)
  60:	0141                	addi	sp,sp,16
  62:	8082                	ret

Disassembly of section .text.llc_util_update_channel_map:

00000000 <llc_util_update_channel_map>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL33>:
   6:	00078793          	mv	a5,a5
			6: R_RISCV_LO12_I	llc_env
			6: R_RISCV_RELAX	*ABS*
   a:	97aa                	add	a5,a5,a0
   c:	4388                	lw	a0,0(a5)
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	ble_memcpy_ptr
			e: R_RISCV_RELAX	*ABS*
  12:	0007a303          	lw	t1,0(a5) # 0 <llc_util_update_channel_map>
			12: R_RISCV_LO12_I	ble_memcpy_ptr
			12: R_RISCV_RELAX	*ABS*
  16:	4615                	li	a2,5
  18:	05e50513          	addi	a0,a0,94
  1c:	8302                	jr	t1

Disassembly of section .text.llc_util_set_llcp_discard_enable:

00000000 <llc_util_set_llcp_discard_enable>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL36>:
   6:	00078793          	mv	a5,a5
			6: R_RISCV_LO12_I	llc_env
			6: R_RISCV_RELAX	*ABS*
   a:	97aa                	add	a5,a5,a0
   c:	4398                	lw	a4,0(a5)
   e:	05c75783          	lhu	a5,92(a4)
  12:	c591                	beqz	a1,1e <.L19>
			12: R_RISCV_RVC_BRANCH	.L19
  14:	0087e793          	ori	a5,a5,8

00000018 <.L21>:
  18:	04f71e23          	sh	a5,92(a4)
  1c:	8082                	ret

0000001e <.L19>:
  1e:	9bdd                	andi	a5,a5,-9
  20:	bfe5                	j	18 <.L21>
			20: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.llc_util_set_auth_payl_to_margin:

00000000 <llc_util_set_auth_payl_to_margin>:
   0:	03655783          	lhu	a5,54(a0)
   4:	05055683          	lhu	a3,80(a0)
   8:	04c55603          	lhu	a2,76(a0)
   c:	00000737          	lui	a4,0x0
			c: R_RISCV_HI20	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	02f686b3          	mul	a3,a3,a5
  14:	060a                	slli	a2,a2,0x2
  16:	00070713          	mv	a4,a4
			16: R_RISCV_LO12_I	llc_env
			16: R_RISCV_RELAX	*ABS*
  1a:	9732                	add	a4,a4,a2
  1c:	4310                	lw	a2,0(a4)
  1e:	05865703          	lhu	a4,88(a2)
  22:	00369793          	slli	a5,a3,0x3
  26:	0712                	slli	a4,a4,0x4

00000028 <.L23>:
  28:	00f76863          	bltu	a4,a5,38 <.L24>
			28: R_RISCV_BRANCH	.L24
  2c:	8391                	srli	a5,a5,0x4
  2e:	e391                	bnez	a5,32 <.L25>
			2e: R_RISCV_RVC_BRANCH	.L25
  30:	4785                	li	a5,1

00000032 <.L25>:
  32:	04f61d23          	sh	a5,90(a2)
  36:	8082                	ret

00000038 <.L24>:
  38:	8f95                	sub	a5,a5,a3
  3a:	b7fd                	j	28 <.L23>
			3a: R_RISCV_RVC_JUMP	.L23

Disassembly of section .text.llc_util_clear_operation_ptr:

00000000 <llc_util_clear_operation_ptr>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL44>:
   6:	00078793          	mv	a5,a5
			6: R_RISCV_LO12_I	llc_env
			6: R_RISCV_RELAX	*ABS*
   a:	97aa                	add	a5,a5,a0
   c:	439c                	lw	a5,0(a5)
   e:	058a                	slli	a1,a1,0x2

00000010 <.LVL45>:
  10:	95be                	add	a1,a1,a5
  12:	4188                	lw	a0,0(a1)

00000014 <.LBE54>:
  14:	c901                	beqz	a0,24 <.L26>
			14: R_RISCV_RVC_BRANCH	.L26

00000016 <.LBB56>:
  16:	0005a023          	sw	zero,0(a1)

0000001a <.LBB58>:
  1a:	1551                	addi	a0,a0,-12

0000001c <.LVL49>:
  1c:	00000317          	auipc	t1,0x0
			1c: R_RISCV_CALL	ble_ke_msg_free
			1c: R_RISCV_RELAX	*ABS*
  20:	00030067          	jr	t1 # 1c <.LVL49>

00000024 <.L26>:
  24:	8082                	ret

Disassembly of section .text.llc_util_bw_mgt:

00000000 <llc_util_bw_mgt>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00251713          	slli	a4,a0,0x2
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	llc_env
			8: R_RISCV_RELAX	*ABS*
   c:	97ba                	add	a5,a5,a4
   e:	439c                	lw	a5,0(a5)
  10:	c3c1                	beqz	a5,90 <.L34>
			10: R_RISCV_RVC_BRANCH	.L34

00000012 <.LBB60>:
  12:	1141                	addi	sp,sp,-16
  14:	c606                	sw	ra,12(sp)
  16:	c422                	sw	s0,8(sp)
  18:	c226                	sw	s1,4(sp)

0000001a <.LBB61>:
  1a:	4b84                	lw	s1,16(a5)

0000001c <.LVL52>:
  1c:	0507d403          	lhu	s0,80(a5) # 50 <.LVL57+0x14>

00000020 <.LVL53>:
  20:	04e7d783          	lhu	a5,78(a5)
  24:	48b8                	lw	a4,80(s1)
  26:	27100693          	li	a3,625
  2a:	943e                	add	s0,s0,a5
  2c:	00875783          	lhu	a5,8(a4) # 8 <llc_util_bw_mgt+0x8>
  30:	09640413          	addi	s0,s0,150

00000034 <.LVL55>:
  34:	0442                	slli	s0,s0,0x10

00000036 <.LVL56>:
  36:	02d787b3          	mul	a5,a5,a3
  3a:	8041                	srli	s0,s0,0x10

0000003c <.LVL57>:
  3c:	07c2                	slli	a5,a5,0x10
  3e:	83c1                	srli	a5,a5,0x10
  40:	0487f363          	bgeu	a5,s0,86 <.L28>
			40: R_RISCV_BRANCH	.L28
  44:	27100693          	li	a3,625
  48:	27040793          	addi	a5,s0,624
  4c:	02d7c7b3          	div	a5,a5,a3
  50:	00f71423          	sh	a5,8(a4)
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	lld_get_mode
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL57+0x18>

0000005c <.LVL58>:
  5c:	478d                	li	a5,3
  5e:	00f51463          	bne	a0,a5,66 <.L32>
			5e: R_RISCV_BRANCH	.L32
  62:	00849923          	sh	s0,18(s1) # 12 <.LBB60>

00000066 <.L32>:
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	llc_util_get_nb_active_link
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.L32>

0000006e <.LVL59>:
  6e:	4785                	li	a5,1
  70:	00f50b63          	beq	a0,a5,86 <.L28>
			70: R_RISCV_BRANCH	.L28

00000074 <.LBE61>:
  74:	4422                	lw	s0,8(sp)

00000076 <.LVL60>:
  76:	40b2                	lw	ra,12(sp)

00000078 <.LBB62>:
  78:	8526                	mv	a0,s1

0000007a <.LBE62>:
  7a:	4492                	lw	s1,4(sp)

0000007c <.LVL61>:
  7c:	0141                	addi	sp,sp,16

0000007e <.LBB63>:
  7e:	00000317          	auipc	t1,0x0
			7e: R_RISCV_CALL	lld_util_anchor_point_move
			7e: R_RISCV_RELAX	*ABS*
  82:	00030067          	jr	t1 # 7e <.LBB63>

00000086 <.L28>:
  86:	40b2                	lw	ra,12(sp)
  88:	4422                	lw	s0,8(sp)

0000008a <.LVL63>:
  8a:	4492                	lw	s1,4(sp)

0000008c <.LVL64>:
  8c:	0141                	addi	sp,sp,16
  8e:	8082                	ret

00000090 <.L34>:
  90:	8082                	ret

Disassembly of section .text.llc_end_evt_defer:

00000000 <llc_end_evt_defer>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00251793          	slli	a5,a0,0x2
   c:	00048493          	mv	s1,s1
			c: R_RISCV_LO12_I	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	94be                	add	s1,s1,a5
  16:	409c                	lw	a5,0(s1)
  18:	cba9                	beqz	a5,6a <.L37>
			18: R_RISCV_RVC_BRANCH	.L37
  1a:	842a                	mv	s0,a0

0000001c <.LBB64>:
  1c:	0522                	slli	a0,a0,0x8

0000001e <.LVL68>:
  1e:	00156513          	ori	a0,a0,1
  22:	0542                	slli	a0,a0,0x10
  24:	8141                	srli	a0,a0,0x10
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_state_get
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL68+0x8>

0000002e <.LBB65>:
  2e:	893d                	andi	a0,a0,15
  30:	47bd                	li	a5,15
  32:	02f51363          	bne	a0,a5,58 <.L39>
			32: R_RISCV_BRANCH	.L39
  36:	4098                	lw	a4,0(s1)
  38:	05c75783          	lhu	a5,92(a4)
  3c:	2007f693          	andi	a3,a5,512
  40:	ce81                	beqz	a3,58 <.L39>
			40: R_RISCV_RVC_BRANCH	.L39
  42:	0a174583          	lbu	a1,161(a4)
  46:	dff7f793          	andi	a5,a5,-513
  4a:	04f71e23          	sh	a5,92(a4)
  4e:	8522                	mv	a0,s0
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	llc_util_dicon_procedure
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LBB65+0x22>

00000058 <.L39>:
  58:	8522                	mv	a0,s0

0000005a <.LBE64>:
  5a:	4422                	lw	s0,8(sp)

0000005c <.LVL71>:
  5c:	40b2                	lw	ra,12(sp)
  5e:	4492                	lw	s1,4(sp)
  60:	0141                	addi	sp,sp,16

00000062 <.LBB67>:
  62:	00000317          	auipc	t1,0x0
			62: R_RISCV_CALL	llc_util_bw_mgt
			62: R_RISCV_RELAX	*ABS*
  66:	00030067          	jr	t1 # 62 <.LBB67>

0000006a <.L37>:
  6a:	40b2                	lw	ra,12(sp)
  6c:	4422                	lw	s0,8(sp)
  6e:	4492                	lw	s1,4(sp)
  70:	0141                	addi	sp,sp,16
  72:	8082                	ret

Disassembly of section .text.llc_pdu_llcp_tx_ack_defer:

00000000 <llc_pdu_llcp_tx_ack_defer>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00851413          	slli	s0,a0,0x8
   8:	00146413          	ori	s0,s0,1
   c:	0442                	slli	s0,s0,0x10
   e:	8041                	srli	s0,s0,0x10

00000010 <.LVL74>:
  10:	ce4e                	sw	s3,28(sp)
  12:	89aa                	mv	s3,a0
  14:	8522                	mv	a0,s0

00000016 <.LVL75>:
  16:	cc52                	sw	s4,24(sp)
  18:	d606                	sw	ra,44(sp)
  1a:	d226                	sw	s1,36(sp)
  1c:	d04a                	sw	s2,32(sp)
  1e:	ca56                	sw	s5,20(sp)
  20:	c85a                	sw	s6,16(sp)
  22:	c65e                	sw	s7,12(sp)
  24:	8a2e                	mv	s4,a1
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_state_get
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL75+0x10>

0000002e <.LBB68>:
  2e:	07f57713          	andi	a4,a0,127
  32:	07f00793          	li	a5,127
  36:	0ef70b63          	beq	a4,a5,12c <.L44>
			36: R_RISCV_BRANCH	.L44
  3a:	00000937          	lui	s2,0x0
			3a: R_RISCV_HI20	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	00090a93          	mv	s5,s2
			3e: R_RISCV_LO12_I	llc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	00299b93          	slli	s7,s3,0x2
  46:	84aa                	mv	s1,a0
  48:	9ade                	add	s5,s5,s7
  4a:	8522                	mv	a0,s0

0000004c <.LVL77>:
  4c:	000aab03          	lw	s6,0(s5)
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	ble_ke_state_get
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL77+0x4>

00000058 <.LBB70>:
  58:	893d                	andi	a0,a0,15
  5a:	47bd                	li	a5,15
  5c:	00090913          	mv	s2,s2
			5c: R_RISCV_LO12_I	llc_env
			5c: R_RISCV_RELAX	*ABS*
  60:	04f51363          	bne	a0,a5,a6 <.L46>
			60: R_RISCV_BRANCH	.L46
  64:	000aa703          	lw	a4,0(s5)
  68:	05c75783          	lhu	a5,92(a4)
  6c:	2007f793          	andi	a5,a5,512
  70:	eb99                	bnez	a5,86 <.L47>
			70: R_RISCV_RVC_BRANCH	.L47
  72:	4789                	li	a5,2
  74:	00fa1963          	bne	s4,a5,86 <.L47>
			74: R_RISCV_BRANCH	.L47
  78:	0a174583          	lbu	a1,161(a4)
  7c:	854e                	mv	a0,s3
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	llc_util_dicon_procedure
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LBB70+0x26>

00000086 <.L47>:
  86:	5422                	lw	s0,40(sp)

00000088 <.LVL80>:
  88:	50b2                	lw	ra,44(sp)
  8a:	5492                	lw	s1,36(sp)
  8c:	5902                	lw	s2,32(sp)
  8e:	4a62                	lw	s4,24(sp)
  90:	4ad2                	lw	s5,20(sp)
  92:	4b42                	lw	s6,16(sp)
  94:	4bb2                	lw	s7,12(sp)
  96:	0ff9f513          	andi	a0,s3,255
  9a:	49f2                	lw	s3,28(sp)

0000009c <.LVL81>:
  9c:	6145                	addi	sp,sp,48
  9e:	00000317          	auipc	t1,0x0
			9e: R_RISCV_CALL	llc_check_trafic_paused
			9e: R_RISCV_RELAX	*ABS*
  a2:	00030067          	jr	t1 # 9e <.LVL81+0x2>

000000a6 <.L46>:
  a6:	0024f793          	andi	a5,s1,2
  aa:	cfb1                	beqz	a5,106 <.L48>
			aa: R_RISCV_RVC_BRANCH	.L48
  ac:	0a4b4783          	lbu	a5,164(s6)
  b0:	4731                	li	a4,12
  b2:	04e79763          	bne	a5,a4,100 <.L49>
			b2: R_RISCV_BRANCH	.L49
  b6:	4799                	li	a5,6

000000b8 <.L59>:
  b8:	04fa1763          	bne	s4,a5,106 <.L48>
			b8: R_RISCV_BRANCH	.L48

000000bc <.LBB74>:
  bc:	04e2                	slli	s1,s1,0x18
  be:	84e1                	srai	s1,s1,0x18

000000c0 <.LVL84>:
  c0:	0fd4f593          	andi	a1,s1,253
  c4:	8522                	mv	a0,s0
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	ble_ke_state_set
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.LVL84+0x6>

000000ce <.LBB76>:
  ce:	0f94f593          	andi	a1,s1,249
  d2:	8522                	mv	a0,s0
  d4:	00000097          	auipc	ra,0x0
			d4: R_RISCV_CALL	ble_ke_state_set
			d4: R_RISCV_RELAX	*ABS*
  d8:	000080e7          	jalr	ra # d4 <.LBB76+0x6>

000000dc <.LBE76>:
  dc:	0a0b0223          	sb	zero,164(s6)

000000e0 <.LBB78>:
  e0:	300026f3          	csrr	a3,mstatus

000000e4 <.LBB80>:
  e4:	300477f3          	csrrci	a5,mstatus,8

000000e8 <.LBE80>:
  e8:	995e                	add	s2,s2,s7
  ea:	00092703          	lw	a4,0(s2) # 0 <llc_pdu_llcp_tx_ack_defer>
  ee:	0a574783          	lbu	a5,165(a4)
  f2:	fdb7f793          	andi	a5,a5,-37
  f6:	0af702a3          	sb	a5,165(a4)
  fa:	30069073          	csrw	mstatus,a3
  fe:	b761                	j	86 <.L47>
			fe: R_RISCV_RVC_JUMP	.L47

00000100 <.L49>:
 100:	4735                	li	a4,13
 102:	fae78be3          	beq	a5,a4,b8 <.L59>
			102: R_RISCV_BRANCH	.L59

00000106 <.L48>:
 106:	8885                	andi	s1,s1,1
 108:	dcbd                	beqz	s1,86 <.L47>
			108: R_RISCV_RVC_BRANCH	.L47
 10a:	0a3b4703          	lbu	a4,163(s6)
 10e:	47b1                	li	a5,12
 110:	f6f71be3          	bne	a4,a5,86 <.L47>
			110: R_RISCV_BRANCH	.L47
 114:	47ad                	li	a5,11
 116:	f6fa18e3          	bne	s4,a5,86 <.L47>
			116: R_RISCV_BRANCH	.L47
 11a:	8622                	mv	a2,s0
 11c:	85a2                	mv	a1,s0
 11e:	10600513          	li	a0,262
 122:	00000097          	auipc	ra,0x0
			122: R_RISCV_CALL	ble_ke_msg_send_basic
			122: R_RISCV_RELAX	*ABS*
 126:	000080e7          	jalr	ra # 122 <.L48+0x1c>

0000012a <.LVL91>:
 12a:	bfb1                	j	86 <.L47>
			12a: R_RISCV_RVC_JUMP	.L47

0000012c <.L44>:
 12c:	50b2                	lw	ra,44(sp)
 12e:	5422                	lw	s0,40(sp)

00000130 <.LVL93>:
 130:	5492                	lw	s1,36(sp)
 132:	5902                	lw	s2,32(sp)
 134:	49f2                	lw	s3,28(sp)

00000136 <.LVL94>:
 136:	4a62                	lw	s4,24(sp)
 138:	4ad2                	lw	s5,20(sp)
 13a:	4b42                	lw	s6,16(sp)
 13c:	4bb2                	lw	s7,12(sp)
 13e:	6145                	addi	sp,sp,48
 140:	8082                	ret

Disassembly of section .text.llc_pdu_acl_tx_ack_defer:

00000000 <llc_pdu_acl_tx_ack_defer>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00251613          	slli	a2,a0,0x2
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	llc_env
			8: R_RISCV_RELAX	*ABS*
   c:	97b2                	add	a5,a5,a2
   e:	439c                	lw	a5,0(a5)
  10:	c39d                	beqz	a5,36 <.L60>
			10: R_RISCV_RVC_BRANCH	.L60
  12:	1141                	addi	sp,sp,-16
  14:	c422                	sw	s0,8(sp)
  16:	c606                	sw	ra,12(sp)
  18:	842a                	mv	s0,a0
  1a:	c589                	beqz	a1,24 <.L62>
			1a: R_RISCV_RVC_BRANCH	.L62
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	llc_common_nb_of_pkt_comp_evt_send
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <llc_pdu_acl_tx_ack_defer+0x1c>

00000024 <.L62>:
  24:	0ff47513          	andi	a0,s0,255
  28:	4422                	lw	s0,8(sp)
  2a:	40b2                	lw	ra,12(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	llc_check_trafic_paused
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <.L62+0xa>

00000036 <.L60>:
  36:	8082                	ret

Disassembly of section .text.llc_pdu_defer:

00000000 <llc_pdu_defer>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	000009b7          	lui	s3,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	d04a                	sw	s2,32(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	00098913          	mv	s2,s3
			c: R_RISCV_LO12_I	llc_env
			c: R_RISCV_RELAX	*ABS*
  10:	00251a13          	slli	s4,a0,0x2
  14:	d606                	sw	ra,44(sp)
  16:	d422                	sw	s0,40(sp)
  18:	d226                	sw	s1,36(sp)
  1a:	ca56                	sw	s5,20(sp)
  1c:	c85a                	sw	s6,16(sp)
  1e:	9952                	add	s2,s2,s4
  20:	00092b03          	lw	s6,0(s2)
  24:	060b0763          	beqz	s6,92 <.L69>
			24: R_RISCV_BRANCH	.L69

00000028 <.LBB83>:
  28:	000007b7          	lui	a5,0x0
			28: R_RISCV_HI20	rwip_rf+0x1c
			28: R_RISCV_RELAX	*ABS*+0x1c
  2c:	01c7a783          	lw	a5,28(a5) # 1c <llc_pdu_defer+0x1c>
			2c: R_RISCV_LO12_I	rwip_rf+0x1c
			2c: R_RISCV_RELAX	*ABS*+0x1c
  30:	842a                	mv	s0,a0
  32:	8532                	mv	a0,a2

00000034 <.LVL99>:
  34:	84ae                	mv	s1,a1

00000036 <.LVL100>:
  36:	8aba                	mv	s5,a4
  38:	c636                	sw	a3,12(sp)
  3a:	9782                	jalr	a5

0000003c <.LVL101>:
  3c:	00092783          	lw	a5,0(s2)
  40:	06ab0423          	sb	a0,104(s6)
  44:	46b2                	lw	a3,12(sp)
  46:	06878603          	lb	a2,104(a5)
  4a:	85a6                	mv	a1,s1
  4c:	8522                	mv	a0,s0
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	llc_ch_assess_local
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL101+0x12>

00000056 <.LVL102>:
  56:	01d4f793          	andi	a5,s1,29
  5a:	00098993          	mv	s3,s3
			5a: R_RISCV_LO12_I	llc_env
			5a: R_RISCV_RELAX	*ABS*
  5e:	c7a1                	beqz	a5,a6 <.L72>
			5e: R_RISCV_RVC_BRANCH	.L72
  60:	88c1                	andi	s1,s1,16
  62:	c881                	beqz	s1,72 <.L74>
			62: R_RISCV_RVC_BRANCH	.L74
  64:	03d00593          	li	a1,61
  68:	8522                	mv	a0,s0
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	llc_util_dicon_procedure
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LVL102+0x14>

00000072 <.L74>:
  72:	99d2                	add	s3,s3,s4
  74:	0009a783          	lw	a5,0(s3) # 0 <llc_pdu_defer>
  78:	05c7d703          	lhu	a4,92(a5)
  7c:	02077693          	andi	a3,a4,32
  80:	ca89                	beqz	a3,92 <.L69>
			80: R_RISCV_RVC_BRANCH	.L69
  82:	fdf77713          	andi	a4,a4,-33
  86:	04e79e23          	sh	a4,92(a5)
  8a:	0567d703          	lhu	a4,86(a5)
  8e:	04e79a23          	sh	a4,84(a5)

00000092 <.L69>:
  92:	50b2                	lw	ra,44(sp)
  94:	5422                	lw	s0,40(sp)
  96:	5492                	lw	s1,36(sp)
  98:	5902                	lw	s2,32(sp)
  9a:	49f2                	lw	s3,28(sp)
  9c:	4a62                	lw	s4,24(sp)
  9e:	4ad2                	lw	s5,20(sp)
  a0:	4b42                	lw	s6,16(sp)
  a2:	6145                	addi	sp,sp,48
  a4:	8082                	ret

000000a6 <.L72>:
  a6:	00092783          	lw	a5,0(s2)
  aa:	0422                	slli	s0,s0,0x8

000000ac <.LVL105>:
  ac:	00146413          	ori	s0,s0,1
  b0:	0442                	slli	s0,s0,0x10
  b2:	0547d603          	lhu	a2,84(a5)
  b6:	8041                	srli	s0,s0,0x10
  b8:	85a2                	mv	a1,s0
  ba:	10100513          	li	a0,257
  be:	1204f493          	andi	s1,s1,288
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	ble_ke_timer_set
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL105+0x16>

000000ca <.LVL106>:
  ca:	f4c5                	bnez	s1,72 <.L74>
			ca: R_RISCV_RVC_BRANCH	.L74
  cc:	fa0a83e3          	beqz	s5,72 <.L74>
			cc: R_RISCV_BRANCH	.L74
  d0:	00092783          	lw	a5,0(s2)
  d4:	468d                	li	a3,3
  d6:	0a57c703          	lbu	a4,165(a5)
  da:	8b0d                	andi	a4,a4,3
  dc:	f8d71be3          	bne	a4,a3,72 <.L74>
			dc: R_RISCV_BRANCH	.L74
  e0:	05c7d703          	lhu	a4,92(a5)
  e4:	8b21                	andi	a4,a4,8
  e6:	f751                	bnez	a4,72 <.L74>
			e6: R_RISCV_RVC_BRANCH	.L74
  e8:	0587d603          	lhu	a2,88(a5)
  ec:	05a7d783          	lhu	a5,90(a5)
  f0:	85a2                	mv	a1,s0
  f2:	10300513          	li	a0,259
  f6:	8e1d                	sub	a2,a2,a5
  f8:	00000097          	auipc	ra,0x0
			f8: R_RISCV_CALL	ble_ke_timer_set
			f8: R_RISCV_RELAX	*ABS*
  fc:	000080e7          	jalr	ra # f8 <.LVL106+0x2e>

00000100 <.LVL107>:
 100:	00092783          	lw	a5,0(s2)
 104:	85a2                	mv	a1,s0
 106:	10400513          	li	a0,260
 10a:	0587d603          	lhu	a2,88(a5)
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	ble_ke_timer_set
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.LVL107+0xe>

00000116 <.LVL108>:
 116:	bfb1                	j	72 <.L74>
			116: R_RISCV_RVC_JUMP	.L74
