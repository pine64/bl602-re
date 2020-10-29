
libbl602_wifi/mac_ie.o:     file format elf32-littleriscv


Disassembly of section .text.mac_ie_find:

00000000 <mac_ie_find>:
   0:	95aa                	add	a1,a1,a0

00000002 <.L2>:
   2:	00b56463          	bltu	a0,a1,a <.L4>
			2: R_RISCV_BRANCH	.L4
   6:	4501                	li	a0,0

00000008 <.L3>:
   8:	8082                	ret

0000000a <.L4>:
   a:	00054783          	lbu	a5,0(a0)
   e:	fec78de3          	beq	a5,a2,8 <.L3>
			e: R_RISCV_BRANCH	.L3

00000012 <.LBB14>:
  12:	00154783          	lbu	a5,1(a0)
  16:	0789                	addi	a5,a5,2
  18:	953e                	add	a0,a0,a5
  1a:	b7e5                	j	2 <.L2>
			1a: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.mac_vsie_find:

00000000 <mac_vsie_find>:
   0:	95aa                	add	a1,a1,a0

00000002 <.LVL7>:
   2:	0dd00713          	li	a4,221

00000006 <.L6>:
   6:	02b56263          	bltu	a0,a1,2a <.L11>
			6: R_RISCV_BRANCH	.L11
   a:	04b50a63          	beq	a0,a1,5e <.L12>
			a: R_RISCV_BRANCH	.L12
   e:	00000537          	lui	a0,0x0
			e: R_RISCV_HI20	.LC0
			e: R_RISCV_RELAX	*ABS*

00000012 <.LVL8>:
  12:	1141                	addi	sp,sp,-16
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	c606                	sw	ra,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	puts
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL8+0x8>

00000022 <.LVL9>:
  22:	40b2                	lw	ra,12(sp)
  24:	4501                	li	a0,0
  26:	0141                	addi	sp,sp,16
  28:	8082                	ret

0000002a <.L11>:
  2a:	00054783          	lbu	a5,0(a0) # 0 <mac_vsie_find>
  2e:	02e79363          	bne	a5,a4,54 <.L7>
			2e: R_RISCV_BRANCH	.L7
  32:	00250813          	addi	a6,a0,2

00000036 <.LBB26>:
  36:	4781                	li	a5,0

00000038 <.L8>:
  38:	00f69363          	bne	a3,a5,3e <.L9>
			38: R_RISCV_BRANCH	.L9
  3c:	8082                	ret

0000003e <.L9>:
  3e:	00f808b3          	add	a7,a6,a5
  42:	0785                	addi	a5,a5,1

00000044 <.LBE28>:
  44:	00f60333          	add	t1,a2,a5

00000048 <.LBB31>:
  48:	0008c883          	lbu	a7,0(a7)

0000004c <.LBE31>:
  4c:	fff34303          	lbu	t1,-1(t1)
  50:	ff1304e3          	beq	t1,a7,38 <.L8>
			50: R_RISCV_BRANCH	.L8

00000054 <.L7>:
  54:	00154783          	lbu	a5,1(a0)
  58:	0789                	addi	a5,a5,2
  5a:	953e                	add	a0,a0,a5
  5c:	b76d                	j	6 <.L6>
			5c: R_RISCV_RVC_JUMP	.L6

0000005e <.L12>:
  5e:	4501                	li	a0,0

00000060 <.LVL18>:
  60:	8082                	ret
