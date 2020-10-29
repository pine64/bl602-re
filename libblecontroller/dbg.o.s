
libblecontroller/dbg.o:     file format elf32-littleriscv


Disassembly of section .text.ble_dbg_platform_reset_complete:

00000000 <ble_dbg_platform_reset_complete>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	6641                	lui	a2,0x10
   6:	842a                	mv	s0,a0
   8:	6505                	lui	a0,0x1

0000000a <.LVL1>:
   a:	4685                	li	a3,1
   c:	c1160613          	addi	a2,a2,-1007 # fc11 <.LASF90+0xcfbf>
  10:	4581                	li	a1,0
  12:	80150513          	addi	a0,a0,-2047 # 801 <.LASF357+0x13>
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_msg_alloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL1+0xe>

00000020 <.LVL2>:
  20:	a5a5a7b7          	lui	a5,0xa5a5a
  24:	5a578793          	addi	a5,a5,1445 # a5a5a5a5 <.LASF90+0xa5a57953>
  28:	00f41c63          	bne	s0,a5,40 <.L2>
			28: R_RISCV_BRANCH	.L2
  2c:	478d                	li	a5,3
  2e:	00f50023          	sb	a5,0(a0)

00000032 <.L3>:
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL3>:
  34:	40b2                	lw	ra,12(sp)
  36:	0141                	addi	sp,sp,16
  38:	00000317          	auipc	t1,0x0
			38: R_RISCV_CALL	hci_send_2_host
			38: R_RISCV_RELAX	*ABS*
  3c:	00030067          	jr	t1 # 38 <.LVL3+0x4>

00000040 <.L2>:
  40:	c3c3c7b7          	lui	a5,0xc3c3c
  44:	3c378793          	addi	a5,a5,963 # c3c3c3c3 <.LASF90+0xc3c39771>
  48:	fef415e3          	bne	s0,a5,32 <.L3>
			48: R_RISCV_BRANCH	.L3
  4c:	00050023          	sb	zero,0(a0)
  50:	b7cd                	j	32 <.L3>
			50: R_RISCV_RVC_JUMP	.L3
