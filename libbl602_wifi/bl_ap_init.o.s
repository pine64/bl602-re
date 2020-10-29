
libbl602_wifi/bl_ap_init.o:     file format elf32-littleriscv


Disassembly of section .text.ap_setpsk:

00000000 <ap_setpsk>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	c62e                	sw	a1,12(sp)
   a:	84b2                	mv	s1,a2
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	cm_GetApInfo
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <ap_setpsk+0xc>

00000014 <.LVL1>:
  14:	c539                	beqz	a0,62 <.L1>
			14: R_RISCV_RVC_BRANCH	.L1
  16:	45b2                	lw	a1,12(sp)
  18:	842a                	mv	s0,a0
  1a:	852e                	mv	a0,a1

0000001c <.LVL2>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	strlen
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL2>

00000024 <.LVL3>:
  24:	45b2                	lw	a1,12(sp)
  26:	0aa40223          	sb	a0,164(s0)
  2a:	02000613          	li	a2,32
  2e:	08440513          	addi	a0,s0,132
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	memcpy
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL3+0xe>

0000003a <.LVL4>:
  3a:	8526                	mv	a0,s1
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	strlen
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL4+0x2>

00000044 <.LVL5>:
  44:	04a40c23          	sb	a0,88(s0)
  48:	01840513          	addi	a0,s0,24
  4c:	4462                	lw	s0,24(sp)

0000004e <.LVL6>:
  4e:	40f2                	lw	ra,28(sp)
  50:	85a6                	mv	a1,s1
  52:	44d2                	lw	s1,20(sp)

00000054 <.LVL7>:
  54:	04000613          	li	a2,64
  58:	6105                	addi	sp,sp,32

0000005a <.LVL8>:
  5a:	00000317          	auipc	t1,0x0
			5a: R_RISCV_CALL	memcpy
			5a: R_RISCV_RELAX	*ABS*
  5e:	00030067          	jr	t1 # 5a <.LVL8>

00000062 <.L1>:
  62:	40f2                	lw	ra,28(sp)
  64:	4462                	lw	s0,24(sp)
  66:	44d2                	lw	s1,20(sp)

00000068 <.LVL10>:
  68:	6105                	addi	sp,sp,32

0000006a <.LVL11>:
  6a:	8082                	ret

Disassembly of section .text.ap_resetConfiguration:

00000000 <ap_resetConfiguration>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	84aa                	mv	s1,a0
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	cm_GetApInfo
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <ap_resetConfiguration+0xa>

00000012 <.LVL13>:
  12:	842a                	mv	s0,a0

00000014 <.LVL14>:
  14:	8526                	mv	a0,s1
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	cm_GetApData
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL14+0x2>

0000001e <.LVL15>:
  1e:	c051                	beqz	s0,a2 <.L4>
			1e: R_RISCV_RVC_BRANCH	.L4
  20:	c149                	beqz	a0,a2 <.L4>
			20: R_RISCV_RVC_BRANCH	.L4
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL16>:
  26:	00048513          	mv	a0,s1
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL17>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	strlen
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL17>

00000032 <.LVL18>:
  32:	00048593          	mv	a1,s1
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	0aa40223          	sb	a0,164(s0)
  3a:	02000613          	li	a2,32
  3e:	08440513          	addi	a0,s0,132
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	memcpy
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL18+0x10>

0000004a <.LVL19>:
  4a:	4485                	li	s1,1
  4c:	0a942c23          	sw	s1,184(s0)
  50:	07c00613          	li	a2,124
  54:	4581                	li	a1,0
  56:	00840513          	addi	a0,s0,8
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	memset
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL19+0x10>

00000062 <.LVL20>:
  62:	00845783          	lhu	a5,8(s0)
  66:	00941823          	sh	s1,16(s0)
  6a:	0f77f793          	andi	a5,a5,247
  6e:	1087e793          	ori	a5,a5,264
  72:	00f41423          	sh	a5,8(s0)
  76:	00c45783          	lhu	a5,12(s0)
  7a:	0f77f793          	andi	a5,a5,247
  7e:	1087e793          	ori	a5,a5,264
  82:	00f41623          	sh	a5,12(s0)
  86:	478d                	li	a5,3
  88:	06f40ca3          	sb	a5,121(s0)
  8c:	06f40d23          	sb	a5,122(s0)
  90:	06400793          	li	a5,100
  94:	dc7c                	sw	a5,124(s0)
  96:	08f42023          	sw	a5,128(s0)
  9a:	67d5                	lui	a5,0x15
  9c:	18078793          	addi	a5,a5,384 # 15180 <.LASF450+0x12b16>
  a0:	c85c                	sw	a5,20(s0)

000000a2 <.L4>:
  a2:	40b2                	lw	ra,12(sp)
  a4:	4422                	lw	s0,8(sp)

000000a6 <.LVL21>:
  a6:	4492                	lw	s1,4(sp)
  a8:	0141                	addi	sp,sp,16
  aa:	8082                	ret

Disassembly of section .text.InitializeAp:

00000000 <InitializeAp>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	ap_resetConfiguration
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <InitializeAp>
