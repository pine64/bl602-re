
libbl602_wifi/dbg_task.o:     file format elf32-littleriscv


Disassembly of section .text.dbg_get_sys_stat_req_handler:

00000000 <dbg_get_sys_stat_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	85b6                	mv	a1,a3

00000004 <.LVL1>:
   4:	40a00513          	li	a0,1034

00000008 <.LVL2>:
   8:	46b1                	li	a3,12

0000000a <.LVL3>:
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	ke_msg_alloc
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL3+0x2>

00000014 <.LVL4>:
  14:	00052023          	sw	zero,0(a0)
  18:	00052223          	sw	zero,4(a0)
  1c:	00052423          	sw	zero,8(a0)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	ke_msg_send
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL4+0xc>

00000028 <.LVL5>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.dbg_mem_write_req_handler:

00000000 <dbg_mem_write_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	40300513          	li	a0,1027

00000008 <.LVL7>:
   8:	842e                	mv	s0,a1
   a:	85b6                	mv	a1,a3

0000000c <.LVL8>:
   c:	46a1                	li	a3,8

0000000e <.LVL9>:
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_msg_alloc
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL9+0x2>

00000018 <.LVL10>:
  18:	4018                	lw	a4,0(s0)
  1a:	4054                	lw	a3,4(s0)
  1c:	c314                	sw	a3,0(a4)
  1e:	4018                	lw	a4,0(s0)
  20:	c118                	sw	a4,0(a0)
  22:	4318                	lw	a4,0(a4)
  24:	c158                	sw	a4,4(a0)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ke_msg_send
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL10+0xe>

0000002e <.LVL11>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL12>:
  32:	4501                	li	a0,0
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.dbg_mem_read_req_handler:

00000000 <dbg_mem_read_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	40100513          	li	a0,1025

00000008 <.LVL14>:
   8:	842e                	mv	s0,a1
   a:	85b6                	mv	a1,a3

0000000c <.LVL15>:
   c:	46a1                	li	a3,8

0000000e <.LVL16>:
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ke_msg_alloc
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL16+0x2>

00000018 <.LVL17>:
  18:	4018                	lw	a4,0(s0)
  1a:	4318                	lw	a4,0(a4)
  1c:	c158                	sw	a4,4(a0)
  1e:	4018                	lw	a4,0(s0)
  20:	c118                	sw	a4,0(a0)
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	ke_msg_send
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL17+0xa>

0000002a <.LVL18>:
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)

0000002e <.LVL19>:
  2e:	4501                	li	a0,0
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.dbg_set_sev_filter_req_handler:

00000000 <dbg_set_sev_filter_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	4198                	lw	a4,0(a1)
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	dbg_env+0x4
			6: R_RISCV_RELAX	*ABS*+0x4
   a:	40700513          	li	a0,1031

0000000e <.LVL21>:
   e:	85b6                	mv	a1,a3

00000010 <.LVL22>:
  10:	00e7a223          	sw	a4,4(a5) # 4 <dbg_set_sev_filter_req_handler+0x4>
			10: R_RISCV_LO12_S	dbg_env+0x4
			10: R_RISCV_RELAX	*ABS*+0x4
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_msg_send_basic
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL22+0x4>

0000001c <.LVL23>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	4501                	li	a0,0
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret

Disassembly of section .text.dbg_set_mod_filter_req_handler:

00000000 <dbg_set_mod_filter_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	4198                	lw	a4,0(a1)
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	dbg_env
			6: R_RISCV_RELAX	*ABS*
   a:	40500513          	li	a0,1029

0000000e <.LVL25>:
   e:	85b6                	mv	a1,a3

00000010 <.LVL26>:
  10:	00e7a023          	sw	a4,0(a5) # 0 <dbg_set_mod_filter_req_handler>
			10: R_RISCV_LO12_S	dbg_env
			10: R_RISCV_RELAX	*ABS*
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ke_msg_send_basic
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL26+0x4>

0000001c <.LVL27>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	4501                	li	a0,0
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret
