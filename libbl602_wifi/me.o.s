
libbl602_wifi/me.o:     file format elf32-littleriscv


Disassembly of section .text.me_init:

00000000 <me_init>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	me_env
			0: R_RISCV_RELAX	*ABS*

00000004 <.LBE4>:
   4:	1141                	addi	sp,sp,-16

00000006 <.LBB8>:
   6:	13400613          	li	a2,308
   a:	4581                	li	a1,0
   c:	00050513          	mv	a0,a0
			c: R_RISCV_LO12_I	me_env
			c: R_RISCV_RELAX	*ABS*

00000010 <.LBE8>:
  10:	c606                	sw	ra,12(sp)

00000012 <.LBB9>:
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	memset
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LBB9>

0000001a <.LVL0>:
  1a:	4581                	li	a1,0
  1c:	4515                	li	a0,5
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ke_state_set
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL0+0x4>

00000026 <.LBE9>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	scanu_init
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBE9>

0000002e <.LVL2>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	apm_init
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL2>

00000036 <.LVL3>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	sm_init
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL3>

0000003e <.LVL4>:
  3e:	40b2                	lw	ra,12(sp)
  40:	0141                	addi	sp,sp,16
  42:	00000317          	auipc	t1,0x0
			42: R_RISCV_CALL	bam_init
			42: R_RISCV_RELAX	*ABS*
  46:	00030067          	jr	t1 # 42 <.LVL4+0x4>

Disassembly of section .text.me_freq_to_chan_ptr:

00000000 <me_freq_to_chan_ptr>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	me_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	me_env
			4: R_RISCV_RELAX	*ABS*
   8:	cd19                	beqz	a0,26 <.L4>
			8: R_RISCV_RVC_BRANCH	.L4

0000000a <.LVL7>:
   a:	12d7c703          	lbu	a4,301(a5) # 12d <.LASF654+0x3>
   e:	000007b7          	lui	a5,0x0
			e: R_RISCV_HI20	me_env+0x84
			e: R_RISCV_RELAX	*ABS*+0x84
  12:	08478793          	addi	a5,a5,132 # 84 <.LASF493+0x3>
			12: R_RISCV_LO12_I	me_env+0x84
			12: R_RISCV_RELAX	*ABS*+0x84
  16:	a831                	j	32 <.L9>
			16: R_RISCV_RVC_JUMP	.L9

00000018 <.L8>:
  18:	853e                	mv	a0,a5
  1a:	0799                	addi	a5,a5,6
  1c:	ffa7d683          	lhu	a3,-6(a5)
  20:	00b69d63          	bne	a3,a1,3a <.L6>
			20: R_RISCV_BRANCH	.L6
  24:	8082                	ret

00000026 <.L4>:
  26:	12c7c703          	lbu	a4,300(a5)
  2a:	000007b7          	lui	a5,0x0
			2a: R_RISCV_HI20	me_env+0x30
			2a: R_RISCV_RELAX	*ABS*+0x30
  2e:	03078793          	addi	a5,a5,48 # 30 <.L4+0xa>
			2e: R_RISCV_LO12_I	me_env+0x30
			2e: R_RISCV_RELAX	*ABS*+0x30

00000032 <.L9>:
  32:	4699                	li	a3,6
  34:	02d70733          	mul	a4,a4,a3

00000038 <.LVL11>:
  38:	973e                	add	a4,a4,a5

0000003a <.L6>:
  3a:	fce79fe3          	bne	a5,a4,18 <.L8>
			3a: R_RISCV_BRANCH	.L8
  3e:	4501                	li	a0,0
  40:	8082                	ret
