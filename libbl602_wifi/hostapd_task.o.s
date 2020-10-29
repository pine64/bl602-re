
libbl602_wifi/hostapd_task.o:     file format elf32-littleriscv


Disassembly of section .text.hostapd_mgt_ind_handler:

00000000 <hostapd_mgt_ind_handler>:
   0:	0025d783          	lhu	a5,2(a1)
   4:	04000713          	li	a4,64
   8:	0fc7f793          	andi	a5,a5,252

0000000c <.LVL1>:
   c:	00e79d63          	bne	a5,a4,26 <.L2>
			c: R_RISCV_BRANCH	.L2

00000010 <.L4>:
  10:	1141                	addi	sp,sp,-16
  12:	4529                	li	a0,10

00000014 <.LVL2>:
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL2+0x2>

0000001e <.LVL3>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

00000026 <.L2>:
  26:	0b000713          	li	a4,176
  2a:	fee783e3          	beq	a5,a4,10 <.L4>
			2a: R_RISCV_BRANCH	.L4
  2e:	4501                	li	a0,0

00000030 <.LVL5>:
  30:	8082                	ret
