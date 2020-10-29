
libbl602_wifi/scanu_task.o:     file format elf32-littleriscv


Disassembly of section .text.cfm_raw_send:

00000000 <cfm_raw_send>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	.LC0
			0: R_RISCV_RELAX	*ABS*

00000004 <.LVL1>:
   4:	00050513          	mv	a0,a0
			4: R_RISCV_LO12_I	.LC0
			4: R_RISCV_RELAX	*ABS*
   8:	00000317          	auipc	t1,0x0
			8: R_RISCV_CALL	printf
			8: R_RISCV_RELAX	*ABS*
   c:	00030067          	jr	t1 # 8 <.LVL1+0x4>

Disassembly of section .text.scanu_raw_send_req_handler:

00000000 <scanu_raw_send_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	842e                	mv	s0,a1
   c:	41d0                	lw	a2,4(a1)

0000000e <.LVL4>:
   e:	418c                	lw	a1,0(a1)

00000010 <.LVL5>:
  10:	00000537          	lui	a0,0x0
			10: R_RISCV_HI20	.LC1
			10: R_RISCV_RELAX	*ABS*

00000014 <.LVL6>:
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	.LC1
			14: R_RISCV_RELAX	*ABS*
  18:	c636                	sw	a3,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	printf
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL6+0x6>

00000022 <.LVL7>:
  22:	46b2                	lw	a3,12(sp)
  24:	4501                	li	a0,0
  26:	85b6                	mv	a1,a3
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	scanu_raw_send_cfm
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL7+0x6>

00000030 <.LBB10>:
  30:	10000593          	li	a1,256
  34:	4501                	li	a0,0

00000036 <.LBE10>:
  36:	00042903          	lw	s2,0(s0)
  3a:	4044                	lw	s1,4(s0)

0000003c <.LBB20>:
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	txl_frame_get
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBB20>

00000044 <.LVL10>:
  44:	c931                	beqz	a0,98 <.L3>
			44: R_RISCV_RVC_BRANCH	.L3
  46:	842a                	mv	s0,a0

00000048 <.LBB12>:
  48:	5528                	lw	a0,104(a0)

0000004a <.LBE17>:
  4a:	8626                	mv	a2,s1
  4c:	85ca                	mv	a1,s2
  4e:	14c50513          	addi	a0,a0,332 # 14c <.LASF69+0x3>

00000052 <.LVL13>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	memcpy
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL13>

0000005a <.LVL14>:
  5a:	57fd                	li	a5,-1
  5c:	02f40823          	sb	a5,48(s0)
  60:	000007b7          	lui	a5,0x0
			60: R_RISCV_HI20	cfm_raw_send
			60: R_RISCV_RELAX	*ABS*
  64:	00078793          	mv	a5,a5
			64: R_RISCV_LO12_I	cfm_raw_send
			64: R_RISCV_RELAX	*ABS*
  68:	2cf42623          	sw	a5,716(s0)
  6c:	547c                	lw	a5,108(s0)
  6e:	020407a3          	sb	zero,47(s0)

00000072 <.LVL15>:
  72:	04040f23          	sb	zero,94(s0)
  76:	06040023          	sb	zero,96(s0)
  7a:	2c842823          	sw	s0,720(s0)

0000007e <.LVL16>:
  7e:	4bd8                	lw	a4,20(a5)
  80:	fff48693          	addi	a3,s1,-1
  84:	0491                	addi	s1,s1,4

00000086 <.LVL17>:
  86:	9736                	add	a4,a4,a3
  88:	cf98                	sw	a4,24(a5)
  8a:	cfc4                	sw	s1,28(a5)
  8c:	458d                	li	a1,3
  8e:	8522                	mv	a0,s0
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	txl_frame_push_force
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL17+0xa>

00000098 <.L3>:
  98:	40f2                	lw	ra,28(sp)
  9a:	4462                	lw	s0,24(sp)
  9c:	44d2                	lw	s1,20(sp)
  9e:	4942                	lw	s2,16(sp)
  a0:	4501                	li	a0,0
  a2:	6105                	addi	sp,sp,32
  a4:	8082                	ret

Disassembly of section .text.scanu_join_req_handler:

00000000 <scanu_join_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	14e5c703          	lbu	a4,334(a1)
   8:	5d800613          	li	a2,1496

0000000c <.LVL21>:
   c:	000007b7          	lui	a5,0x0
			c: R_RISCV_HI20	vif_info_tab
			c: R_RISCV_RELAX	*ABS*
  10:	02c70733          	mul	a4,a4,a2
  14:	00078793          	mv	a5,a5
			14: R_RISCV_LO12_I	vif_info_tab
			14: R_RISCV_RELAX	*ABS*
  18:	97ba                	add	a5,a5,a4
  1a:	3e07a023          	sw	zero,992(a5) # 3e0 <.LASF448+0x8>
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	scanu_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00078793          	mv	a5,a5
			22: R_RISCV_LO12_I	scanu_env
			22: R_RISCV_RELAX	*ABS*
  26:	4705                	li	a4,1
  28:	16d79423          	sh	a3,360(a5) # 168 <.LASF48>
  2c:	16e79523          	sh	a4,362(a5)
  30:	1405a703          	lw	a4,320(a1)
  34:	c38c                	sw	a1,0(a5)
  36:	16e7a623          	sw	a4,364(a5)
  3a:	1445d703          	lhu	a4,324(a1)
  3e:	16e79823          	sh	a4,368(a5)
  42:	1405c783          	lbu	a5,320(a1)
  46:	8b85                	andi	a5,a5,1
  48:	cf99                	beqz	a5,66 <.L9>
			48: R_RISCV_RVC_BRANCH	.L9
  4a:	000005b7          	lui	a1,0x0
			4a: R_RISCV_HI20	.LC2
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LVL22>:
  4e:	00000537          	lui	a0,0x0
			4e: R_RISCV_HI20	.LC3
			4e: R_RISCV_RELAX	*ABS*

00000052 <.LVL23>:
  52:	0b600613          	li	a2,182
  56:	00058593          	mv	a1,a1
			56: R_RISCV_LO12_I	.LC2
			56: R_RISCV_RELAX	*ABS*
  5a:	00050513          	mv	a0,a0
			5a: R_RISCV_LO12_I	.LC3
			5a: R_RISCV_RELAX	*ABS*
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	assert_err
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL23+0xc>

00000066 <.L9>:
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	scanu_start
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.L9>

0000006e <.LVL25>:
  6e:	40b2                	lw	ra,12(sp)
  70:	4505                	li	a0,1
  72:	0141                	addi	sp,sp,16
  74:	8082                	ret

Disassembly of section .text.scanu_start_req_handler:

00000000 <scanu_start_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	scanu_env
			2: R_RISCV_RELAX	*ABS*
   6:	c606                	sw	ra,12(sp)
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	scanu_env
			8: R_RISCV_RELAX	*ABS*
   c:	16d79423          	sh	a3,360(a5) # 168 <.LASF48>
  10:	16079523          	sh	zero,362(a5)
  14:	1405a703          	lw	a4,320(a1) # 140 <.LASF206+0x2>
  18:	c38c                	sw	a1,0(a5)
  1a:	16e7a623          	sw	a4,364(a5)
  1e:	1445d703          	lhu	a4,324(a1)
  22:	16e79823          	sh	a4,368(a5)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	scanu_start
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <scanu_start_req_handler+0x26>

0000002e <.LVL27>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4505                	li	a0,1
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.rxu_mgt_ind_handler:

00000000 <rxu_mgt_ind_handler>:
   0:	852e                	mv	a0,a1

00000002 <.LVL29>:
   2:	00000317          	auipc	t1,0x0
			2: R_RISCV_CALL	scanu_frame_handler
			2: R_RISCV_RELAX	*ABS*
   6:	00030067          	jr	t1 # 2 <.LVL29>

Disassembly of section .text.scan_done_ind_handler:

00000000 <scan_done_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	scanu_env
			2: R_RISCV_RELAX	*ABS*
   6:	c606                	sw	ra,12(sp)
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	scanu_env
			8: R_RISCV_RELAX	*ABS*
   c:	16b7c703          	lbu	a4,363(a5) # 16b <.LASF48+0x3>
  10:	0705                	addi	a4,a4,1
  12:	16e785a3          	sb	a4,363(a5)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	scanu_scan_next
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <scan_done_ind_handler+0x16>

0000001e <.LVL32>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

Disassembly of section .text.scan_start_cfm_handler:

00000000 <scan_start_cfm_handler>:
   0:	0005c503          	lbu	a0,0(a1)

00000004 <.LVL34>:
   4:	c919                	beqz	a0,1a <.L25>
			4: R_RISCV_RVC_BRANCH	.L25
   6:	1141                	addi	sp,sp,-16
   8:	c606                	sw	ra,12(sp)
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	scanu_confirm
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LVL34+0x6>

00000012 <.LVL35>:
  12:	40b2                	lw	ra,12(sp)
  14:	4501                	li	a0,0
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

0000001a <.L25>:
  1a:	4501                	li	a0,0
  1c:	8082                	ret
