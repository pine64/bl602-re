
libblecontroller/hci_fc.o:     file format elf32-littleriscv


Disassembly of section .text.hci_fc_init:

00000000 <hci_fc_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a303          	lw	t1,0(a5) # 0 <hci_fc_init>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	00000537          	lui	a0,0x0
			8: R_RISCV_HI20	hci_fc_env
			8: R_RISCV_RELAX	*ABS*
   c:	4629                	li	a2,10
   e:	4581                	li	a1,0
  10:	00050513          	mv	a0,a0
			10: R_RISCV_LO12_I	hci_fc_env
			10: R_RISCV_RELAX	*ABS*
  14:	8302                	jr	t1

Disassembly of section .text.hci_fc_acl_buf_size_set:

00000000 <hci_fc_acl_buf_size_set>:
   0:	47c9                	li	a5,18
   2:	c105                	beqz	a0,22 <.L3>
			2: R_RISCV_RVC_BRANCH	.L3
   4:	cd99                	beqz	a1,22 <.L3>
			4: R_RISCV_RVC_BRANCH	.L3
   6:	3fc00713          	li	a4,1020
   a:	47c5                	li	a5,17
   c:	00a77b63          	bgeu	a4,a0,22 <.L3>
			c: R_RISCV_BRANCH	.L3

00000010 <.LVL2>:
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	hci_fc_env
			10: R_RISCV_RELAX	*ABS*
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	hci_fc_env
			14: R_RISCV_RELAX	*ABS*
  18:	00a79123          	sh	a0,2(a5) # 2 <hci_fc_acl_buf_size_set+0x2>
  1c:	00b79223          	sh	a1,4(a5)
  20:	4781                	li	a5,0

00000022 <.L3>:
  22:	853e                	mv	a0,a5

00000024 <.LVL4>:
  24:	8082                	ret

Disassembly of section .text.hci_fc_acl_en:

00000000 <hci_fc_acl_en>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0

00000006 <.LBB3>:
   6:	4505                	li	a0,1

00000008 <.LBE3>:
   8:	c606                	sw	ra,12(sp)
   a:	c422                	sw	s0,8(sp)

0000000c <.LBB4>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	ble_ke_state_get
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LBB4>

00000014 <.LVL7>:
  14:	07f00793          	li	a5,127
  18:	00f50863          	beq	a0,a5,28 <.L8>
			18: R_RISCV_BRANCH	.L8

0000001c <.L10>:
  1c:	4531                	li	a0,12

0000001e <.L9>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4422                	lw	s0,8(sp)
  22:	4492                	lw	s1,4(sp)
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

00000028 <.L8>:
  28:	842a                	mv	s0,a0

0000002a <.LBB5>:
  2a:	10100513          	li	a0,257
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ble_ke_state_get
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LBB5+0x4>

00000036 <.LVL11>:
  36:	fe8513e3          	bne	a0,s0,1c <.L10>
			36: R_RISCV_BRANCH	.L10

0000003a <.LBE5>:
  3a:	000007b7          	lui	a5,0x0
			3a: R_RISCV_HI20	hci_fc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	00978023          	sb	s1,0(a5) # 0 <hci_fc_acl_en>
			3e: R_RISCV_LO12_S	hci_fc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	4501                	li	a0,0
  44:	bfe9                	j	1e <.L9>
			44: R_RISCV_RVC_JUMP	.L9

Disassembly of section .text.hci_fc_acl_packet_sent:

00000000 <hci_fc_acl_packet_sent>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	hci_fc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	hci_fc_env
			4: R_RISCV_RELAX	*ABS*
   8:	0007c703          	lbu	a4,0(a5) # 0 <hci_fc_acl_packet_sent>
   c:	c711                	beqz	a4,18 <.L12>
			c: R_RISCV_RVC_BRANCH	.L12
   e:	0087d703          	lhu	a4,8(a5)
  12:	0705                	addi	a4,a4,1
  14:	00e79423          	sh	a4,8(a5)

00000018 <.L12>:
  18:	8082                	ret

Disassembly of section .text.hci_fc_host_nb_acl_pkts_complete:

00000000 <hci_fc_host_nb_acl_pkts_complete>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	hci_fc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078713          	mv	a4,a5
			4: R_RISCV_LO12_I	hci_fc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00875703          	lhu	a4,8(a4)
   c:	00078793          	mv	a5,a5
			c: R_RISCV_LO12_I	hci_fc_env
			c: R_RISCV_RELAX	*ABS*
  10:	4681                	li	a3,0
  12:	00e57663          	bgeu	a0,a4,1e <.L18>
			12: R_RISCV_BRANCH	.L18
  16:	8f09                	sub	a4,a4,a0
  18:	01071693          	slli	a3,a4,0x10
  1c:	82c1                	srli	a3,a3,0x10

0000001e <.L18>:
  1e:	00d79423          	sh	a3,8(a5) # 8 <hci_fc_host_nb_acl_pkts_complete+0x8>
  22:	8082                	ret

Disassembly of section .text.hci_fc_check_host_available_nb_acl_packets:

00000000 <hci_fc_check_host_available_nb_acl_packets>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	hci_fc_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	hci_fc_env
			4: R_RISCV_RELAX	*ABS*
   8:	0007c703          	lbu	a4,0(a5) # 0 <hci_fc_check_host_available_nb_acl_packets>
   c:	cf09                	beqz	a4,26 <.L22>
			c: R_RISCV_RVC_BRANCH	.L22
   e:	0047d703          	lhu	a4,4(a5)
  12:	0087d783          	lhu	a5,8(a5)
  16:	4501                	li	a0,0
  18:	00e7f963          	bgeu	a5,a4,2a <.L21>
			18: R_RISCV_BRANCH	.L21
  1c:	40f70533          	sub	a0,a4,a5
  20:	0542                	slli	a0,a0,0x10
  22:	8141                	srli	a0,a0,0x10

00000024 <.LVL15>:
  24:	8082                	ret

00000026 <.L22>:
  26:	6541                	lui	a0,0x10
  28:	157d                	addi	a0,a0,-1

0000002a <.L21>:
  2a:	8082                	ret
