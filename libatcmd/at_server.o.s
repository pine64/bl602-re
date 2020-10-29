
libatcmd/at_server.o:     file format elf32-littleriscv


Disassembly of section .text.at_serial_write:

00000000 <at_serial_write>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x8
			0: R_RISCV_RELAX	*ABS*+0x8
   4:	0087a783          	lw	a5,8(a5) # 8 <at_serial_write+0x8>
			4: R_RISCV_LO12_I	.LANCHOR0+0x8
			4: R_RISCV_RELAX	*ABS*+0x8
   8:	0007c963          	bltz	a5,1a <.L5>
			8: R_RISCV_BRANCH	.L5
   c:	862e                	mv	a2,a1
   e:	85aa                	mv	a1,a0

00000010 <.LVL1>:
  10:	853e                	mv	a0,a5

00000012 <.LVL2>:
  12:	00000317          	auipc	t1,0x0
			12: R_RISCV_CALL	aos_write
			12: R_RISCV_RELAX	*ABS*
  16:	00030067          	jr	t1 # 12 <.LVL2>

0000001a <.L5>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LC1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL4>:
  1e:	1141                	addi	sp,sp,-16
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LC1
			20: R_RISCV_RELAX	*ABS*
  24:	c606                	sw	ra,12(sp)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	printf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL4+0x8>

0000002e <.LVL5>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4501                	li	a0,0
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.at_serial_read:

00000000 <at_serial_read>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x8
			0: R_RISCV_RELAX	*ABS*+0x8
   4:	0087a783          	lw	a5,8(a5) # 8 <at_serial_read+0x8>
			4: R_RISCV_LO12_I	.LANCHOR0+0x8
			4: R_RISCV_RELAX	*ABS*+0x8
   8:	0007c963          	bltz	a5,1a <.L12>
			8: R_RISCV_BRANCH	.L12
   c:	862e                	mv	a2,a1
   e:	85aa                	mv	a1,a0

00000010 <.LVL7>:
  10:	853e                	mv	a0,a5

00000012 <.LVL8>:
  12:	00000317          	auipc	t1,0x0
			12: R_RISCV_CALL	aos_read
			12: R_RISCV_RELAX	*ABS*
  16:	00030067          	jr	t1 # 12 <.LVL8>

0000001a <.L12>:
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	.LC1
			1a: R_RISCV_RELAX	*ABS*

0000001e <.LVL10>:
  1e:	1141                	addi	sp,sp,-16
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LC1
			20: R_RISCV_RELAX	*ABS*
  24:	c606                	sw	ra,12(sp)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	printf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL10+0x8>

0000002e <.LVL11>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4501                	li	a0,0
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.at_cmd_exec:

00000000 <at_cmd_exec>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	at_parse
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <at_cmd_exec+0x4>

0000000c <.LVL13>:
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LC2
			c: R_RISCV_RELAX	*ABS*
  10:	00050513          	mv	a0,a0
			10: R_RISCV_LO12_I	.LC2
			10: R_RISCV_RELAX	*ABS*
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	printf
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL13+0x8>

0000001c <.L16>:
  1c:	a001                	j	1c <.L16>
			1c: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.at_serial_cfg_set:

00000000 <at_serial_cfg_set>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	84ae                	mv	s1,a1
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LANCHOR1
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL16>:
   a:	d422                	sw	s0,40(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	00058593          	mv	a1,a1
			e: R_RISCV_LO12_I	.LANCHOR1
			e: R_RISCV_RELAX	*ABS*
  12:	892a                	mv	s2,a0
  14:	8432                	mv	s0,a2
  16:	0808                	addi	a0,sp,16

00000018 <.LVL17>:
  18:	4641                	li	a2,16

0000001a <.LVL18>:
  1a:	c636                	sw	a3,12(sp)
  1c:	c43a                	sw	a4,8(sp)
  1e:	d606                	sw	ra,44(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	memcpy
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL18+0x6>

00000028 <.LVL19>:
  28:	026267b7          	lui	a5,0x2626
  2c:	a0078793          	addi	a5,a5,-1536 # 2625a00 <.LASF340+0x2623712>
  30:	ffb48593          	addi	a1,s1,-5
  34:	ca4a                	sw	s2,20(sp)
  36:	c83e                	sw	a5,16(sp)
  38:	0ff5f593          	andi	a1,a1,255
  3c:	450d                	li	a0,3
  3e:	4722                	lw	a4,8(sp)
  40:	46b2                	lw	a3,12(sp)
  42:	00b57963          	bgeu	a0,a1,54 <.L19>
			42: R_RISCV_BRANCH	.L19

00000046 <.L31>:
  46:	4511                	li	a0,4

00000048 <.L18>:
  48:	50b2                	lw	ra,44(sp)
  4a:	5422                	lw	s0,40(sp)
  4c:	5492                	lw	s1,36(sp)
  4e:	5902                	lw	s2,32(sp)

00000050 <.LVL20>:
  50:	6145                	addi	sp,sp,48
  52:	8082                	ret

00000054 <.L19>:
  54:	fff40613          	addi	a2,s0,-1
  58:	00b10c23          	sb	a1,24(sp)
  5c:	0ff67613          	andi	a2,a2,255
  60:	4589                	li	a1,2
  62:	fec5e2e3          	bltu	a1,a2,46 <.L31>
			62: R_RISCV_BRANCH	.L31
  66:	00c10ca3          	sb	a2,25(sp)
  6a:	fcd5eee3          	bltu	a1,a3,46 <.L31>
			6a: R_RISCV_BRANCH	.L31
  6e:	00d10d23          	sb	a3,26(sp)
  72:	4785                	li	a5,1
  74:	00f70c63          	beq	a4,a5,8c <.L22>
			74: R_RISCV_BRANCH	.L22
  78:	cf01                	beqz	a4,90 <.L23>
			78: R_RISCV_RVC_BRANCH	.L23
  7a:	00b70663          	beq	a4,a1,86 <.L30>
			7a: R_RISCV_BRANCH	.L30
  7e:	fca714e3          	bne	a4,a0,46 <.L31>
			7e: R_RISCV_BRANCH	.L31
  82:	00f10da3          	sb	a5,27(sp)

00000086 <.L30>:
  86:	00f10ea3          	sb	a5,29(sp)
  8a:	a019                	j	90 <.L23>
			8a: R_RISCV_RVC_JUMP	.L23

0000008c <.L22>:
  8c:	00e10da3          	sb	a4,27(sp)

00000090 <.L23>:
  90:	4589                	li	a1,2
  92:	4505                	li	a0,1
  94:	00000097          	auipc	ra,0x0
			94: R_RISCV_CALL	UART_Disable
			94: R_RISCV_RELAX	*ABS*
  98:	000080e7          	jalr	ra # 94 <.L23+0x4>

0000009c <.LVL22>:
  9c:	080c                	addi	a1,sp,16
  9e:	4505                	li	a0,1
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	UART_Init
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL22+0x4>

000000a8 <.LVL23>:
  a8:	4585                	li	a1,1
  aa:	4505                	li	a0,1
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	UART_TxFreeRun
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL23+0x4>

000000b4 <.LVL24>:
  b4:	4589                	li	a1,2
  b6:	4505                	li	a0,1
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	UART_Enable
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL24+0x4>

000000c0 <.LVL25>:
  c0:	4501                	li	a0,0
  c2:	b759                	j	48 <.L18>
			c2: R_RISCV_RVC_JUMP	.L18

Disassembly of section .text.at_serial_open:

00000000 <at_serial_open>:
   0:	00000537          	lui	a0,0x0
			0: R_RISCV_HI20	.LC3
			0: R_RISCV_RELAX	*ABS*
   4:	1141                	addi	sp,sp,-16
   6:	4581                	li	a1,0
   8:	00050513          	mv	a0,a0
			8: R_RISCV_LO12_I	.LC3
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	aos_open
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <at_serial_open+0xe>

00000016 <.LVL26>:
  16:	40b2                	lw	ra,12(sp)
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	.LANCHOR0+0x8
			18: R_RISCV_RELAX	*ABS*+0x8
  1c:	00a7a423          	sw	a0,8(a5) # 8 <at_serial_open+0x8>
			1c: R_RISCV_LO12_S	.LANCHOR0+0x8
			1c: R_RISCV_RELAX	*ABS*+0x8
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

Disassembly of section .text.at_serial_close:

00000000 <at_serial_close>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	4408                	lw	a0,8(s0)
   e:	c606                	sw	ra,12(sp)
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	aos_close
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <at_serial_close+0x10>

00000018 <.LVL27>:
  18:	57fd                	li	a5,-1
  1a:	c41c                	sw	a5,8(s0)
  1c:	40b2                	lw	ra,12(sp)
  1e:	4422                	lw	s0,8(sp)
  20:	4501                	li	a0,0
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

Disassembly of section .text.at_serial_lock:

00000000 <at_serial_lock>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0xc
			0: R_RISCV_RELAX	*ABS*+0xc
   4:	00c7a503          	lw	a0,12(a5) # c <at_serial_lock+0xc>
			4: R_RISCV_LO12_I	.LANCHOR0+0xc
			4: R_RISCV_RELAX	*ABS*+0xc
   8:	1141                	addi	sp,sp,-16
   a:	55fd                	li	a1,-1
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	xQueueTakeMutexRecursive
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <at_serial_lock+0xe>

00000016 <.LVL28>:
  16:	4705                	li	a4,1
  18:	4781                	li	a5,0
  1a:	00e50b63          	beq	a0,a4,30 <.L36>
			1a: R_RISCV_BRANCH	.L36
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC4
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	.LC4
			22: R_RISCV_RELAX	*ABS*
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	printf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL28+0x10>

0000002e <.LVL29>:
  2e:	57fd                	li	a5,-1

00000030 <.L36>:
  30:	40b2                	lw	ra,12(sp)
  32:	853e                	mv	a0,a5
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.at_serial_unlock:

00000000 <at_serial_unlock>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0xc
			0: R_RISCV_RELAX	*ABS*+0xc
   4:	00c7a503          	lw	a0,12(a5) # c <at_serial_unlock+0xc>
			4: R_RISCV_LO12_I	.LANCHOR0+0xc
			4: R_RISCV_RELAX	*ABS*+0xc
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	xQueueGiveMutexRecursive
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <at_serial_unlock+0xc>

00000014 <.LVL30>:
  14:	4705                	li	a4,1
  16:	4781                	li	a5,0
  18:	00e50b63          	beq	a0,a4,2e <.L41>
			18: R_RISCV_BRANCH	.L41
  1c:	00000537          	lui	a0,0x0
			1c: R_RISCV_HI20	.LC5
			1c: R_RISCV_RELAX	*ABS*
  20:	00050513          	mv	a0,a0
			20: R_RISCV_LO12_I	.LC5
			20: R_RISCV_RELAX	*ABS*
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	printf
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL30+0x10>

0000002c <.LVL31>:
  2c:	57fd                	li	a5,-1

0000002e <.L41>:
  2e:	40b2                	lw	ra,12(sp)
  30:	853e                	mv	a0,a5
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.at_data_output:

00000000 <at_data_output>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	c226                	sw	s1,4(sp)
   e:	84aa                	mv	s1,a0
  10:	4448                	lw	a0,12(s0)

00000012 <.LVL33>:
  12:	c04a                	sw	s2,0(sp)
  14:	892e                	mv	s2,a1
  16:	55fd                	li	a1,-1

00000018 <.LVL34>:
  18:	c606                	sw	ra,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	xQueueTakeMutexRecursive
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL34+0x2>

00000022 <.LVL35>:
  22:	4785                	li	a5,1
  24:	02f50263          	beq	a0,a5,48 <.L47>
			24: R_RISCV_BRANCH	.L47
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC4
			28: R_RISCV_RELAX	*ABS*
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC4
			2c: R_RISCV_RELAX	*ABS*
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	printf
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL35+0xe>

00000038 <.LVL36>:
  38:	54fd                	li	s1,-1

0000003a <.L46>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)
  3e:	8526                	mv	a0,s1
  40:	4902                	lw	s2,0(sp)

00000042 <.LVL38>:
  42:	4492                	lw	s1,4(sp)
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

00000048 <.L47>:
  48:	000007b7          	lui	a5,0x0
			48: R_RISCV_HI20	at_callback+0x4
			48: R_RISCV_RELAX	*ABS*+0x4
  4c:	0047a783          	lw	a5,4(a5) # 4 <at_data_output+0x4>
			4c: R_RISCV_LO12_I	at_callback+0x4
			4c: R_RISCV_RELAX	*ABS*+0x4
  50:	85ca                	mv	a1,s2
  52:	8526                	mv	a0,s1
  54:	9782                	jalr	a5

00000056 <.LVL40>:
  56:	84aa                	mv	s1,a0

00000058 <.LVL41>:
  58:	4448                	lw	a0,12(s0)
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	xQueueGiveMutexRecursive
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL41+0x2>

00000062 <.LVL42>:
  62:	bfe1                	j	3a <.L46>
			62: R_RISCV_RVC_JUMP	.L46

Disassembly of section .text.at_key_value_set:

00000000 <at_key_value_set>:
   0:	711d                	addi	sp,sp,-96
   2:	cca2                	sw	s0,88(sp)
   4:	caa6                	sw	s1,84(sp)
   6:	842a                	mv	s0,a0
   8:	84ae                	mv	s1,a1
   a:	04100613          	li	a2,65
   e:	4581                	li	a1,0

00000010 <.LVL44>:
  10:	0068                	addi	a0,sp,12

00000012 <.LVL45>:
  12:	ce86                	sw	ra,92(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	memset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL45+0x2>

0000001c <.LVL46>:
  1c:	000005b7          	lui	a1,0x0
			1c: R_RISCV_HI20	.LC6
			1c: R_RISCV_RELAX	*ABS*
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC6
			20: R_RISCV_RELAX	*ABS*
  24:	8522                	mv	a0,s0
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	strcmp
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL46+0xa>

0000002e <.LVL47>:
  2e:	ed11                	bnez	a0,4a <.L51>
			2e: R_RISCV_RVC_BRANCH	.L51
  30:	0004c703          	lbu	a4,0(s1)
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	.LANCHOR0
			34: R_RISCV_RELAX	*ABS*
  38:	00e7a023          	sw	a4,0(a5) # 0 <at_key_value_set>
			38: R_RISCV_LO12_S	.LANCHOR0
			38: R_RISCV_RELAX	*ABS*

0000003c <.L76>:
  3c:	000005b7          	lui	a1,0x0
			3c: R_RISCV_HI20	.LC7
			3c: R_RISCV_RELAX	*ABS*
  40:	0004c603          	lbu	a2,0(s1)
  44:	00058593          	mv	a1,a1
			44: R_RISCV_LO12_I	.LC7
			44: R_RISCV_RELAX	*ABS*
  48:	a005                	j	68 <.L77>
			48: R_RISCV_RVC_JUMP	.L77

0000004a <.L51>:
  4a:	000005b7          	lui	a1,0x0
			4a: R_RISCV_HI20	.LC8
			4a: R_RISCV_RELAX	*ABS*
  4e:	00058593          	mv	a1,a1
			4e: R_RISCV_LO12_I	.LC8
			4e: R_RISCV_RELAX	*ABS*
  52:	8522                	mv	a0,s0
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	strcmp
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.L51+0xa>

0000005c <.LVL48>:
  5c:	ed01                	bnez	a0,74 <.L53>
			5c: R_RISCV_RVC_BRANCH	.L53

0000005e <.L54>:
  5e:	000005b7          	lui	a1,0x0
			5e: R_RISCV_HI20	.LC9
			5e: R_RISCV_RELAX	*ABS*
  62:	8626                	mv	a2,s1
  64:	00058593          	mv	a1,a1
			64: R_RISCV_LO12_I	.LC9
			64: R_RISCV_RELAX	*ABS*

00000068 <.L77>:
  68:	0068                	addi	a0,sp,12
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	sprintf
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.L77+0x2>

00000072 <.LVL49>:
  72:	a0b9                	j	c0 <.L52>
			72: R_RISCV_RVC_JUMP	.L52

00000074 <.L53>:
  74:	000005b7          	lui	a1,0x0
			74: R_RISCV_HI20	.LC10
			74: R_RISCV_RELAX	*ABS*
  78:	00058593          	mv	a1,a1
			78: R_RISCV_LO12_I	.LC10
			78: R_RISCV_RELAX	*ABS*
  7c:	8522                	mv	a0,s0
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	strcmp
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.L53+0xa>

00000086 <.LVL50>:
  86:	dd61                	beqz	a0,5e <.L54>
			86: R_RISCV_RVC_BRANCH	.L54
  88:	000005b7          	lui	a1,0x0
			88: R_RISCV_HI20	.LC11
			88: R_RISCV_RELAX	*ABS*
  8c:	00058593          	mv	a1,a1
			8c: R_RISCV_LO12_I	.LC11
			8c: R_RISCV_RELAX	*ABS*
  90:	8522                	mv	a0,s0
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	strcmp
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL50+0xc>

0000009a <.LVL51>:
  9a:	e521                	bnez	a0,e2 <.L55>
			9a: R_RISCV_RVC_BRANCH	.L55
  9c:	0004c603          	lbu	a2,0(s1)
  a0:	000005b7          	lui	a1,0x0
			a0: R_RISCV_HI20	.LC7
			a0: R_RISCV_RELAX	*ABS*
  a4:	00058593          	mv	a1,a1
			a4: R_RISCV_LO12_I	.LC7
			a4: R_RISCV_RELAX	*ABS*
  a8:	0068                	addi	a0,sp,12
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	sprintf
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LVL51+0x10>

000000b2 <.LVL52>:
  b2:	0004c783          	lbu	a5,0(s1)
  b6:	c38d                	beqz	a5,d8 <.L56>
			b6: R_RISCV_RVC_BRANCH	.L56
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	wifi_mgmr_sta_autoconnect_enable
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.LVL52+0x6>

000000c0 <.L52>:
  c0:	006c                	addi	a1,sp,12
  c2:	8522                	mv	a0,s0
  c4:	00000097          	auipc	ra,0x0
			c4: R_RISCV_CALL	ef_set_env
			c4: R_RISCV_RELAX	*ABS*
  c8:	000080e7          	jalr	ra # c4 <.L52+0x4>

000000cc <.LVL54>:
  cc:	40f6                	lw	ra,92(sp)
  ce:	4466                	lw	s0,88(sp)

000000d0 <.LVL55>:
  d0:	44d6                	lw	s1,84(sp)

000000d2 <.LVL56>:
  d2:	4501                	li	a0,0
  d4:	6125                	addi	sp,sp,96
  d6:	8082                	ret

000000d8 <.L56>:
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	wifi_mgmr_sta_autoconnect_disable
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.L56>

000000e0 <.LVL58>:
  e0:	b7c5                	j	c0 <.L52>
			e0: R_RISCV_RVC_JUMP	.L52

000000e2 <.L55>:
  e2:	000005b7          	lui	a1,0x0
			e2: R_RISCV_HI20	.LC12
			e2: R_RISCV_RELAX	*ABS*
  e6:	00058593          	mv	a1,a1
			e6: R_RISCV_LO12_I	.LC12
			e6: R_RISCV_RELAX	*ABS*
  ea:	8522                	mv	a0,s0
  ec:	00000097          	auipc	ra,0x0
			ec: R_RISCV_CALL	strcmp
			ec: R_RISCV_RELAX	*ABS*
  f0:	000080e7          	jalr	ra # ec <.L55+0xa>

000000f4 <.LVL59>:
  f4:	e90d                	bnez	a0,126 <.L57>
			f4: R_RISCV_RVC_BRANCH	.L57
  f6:	4090                	lw	a2,0(s1)
  f8:	000005b7          	lui	a1,0x0
			f8: R_RISCV_HI20	.LC7
			f8: R_RISCV_RELAX	*ABS*
  fc:	00058593          	mv	a1,a1
			fc: R_RISCV_LO12_I	.LC7
			fc: R_RISCV_RELAX	*ABS*
 100:	0068                	addi	a0,sp,12
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	sprintf
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.LVL59+0xe>

0000010a <.LVL60>:
 10a:	4098                	lw	a4,0(s1)
 10c:	000007b7          	lui	a5,0x0
			10c: R_RISCV_HI20	.LANCHOR0
			10c: R_RISCV_RELAX	*ABS*
 110:	00078793          	mv	a5,a5
			110: R_RISCV_LO12_I	.LANCHOR0
			110: R_RISCV_RELAX	*ABS*
 114:	c3d8                	sw	a4,4(a5)
 116:	4090                	lw	a2,0(s1)
 118:	4788                	lw	a0,8(a5)
 11a:	458d                	li	a1,3
 11c:	00000097          	auipc	ra,0x0
			11c: R_RISCV_CALL	aos_ioctl
			11c: R_RISCV_RELAX	*ABS*
 120:	000080e7          	jalr	ra # 11c <.LVL60+0x12>

00000124 <.LVL61>:
 124:	bf71                	j	c0 <.L52>
			124: R_RISCV_RVC_JUMP	.L52

00000126 <.L57>:
 126:	000005b7          	lui	a1,0x0
			126: R_RISCV_HI20	.LC13
			126: R_RISCV_RELAX	*ABS*
 12a:	00058593          	mv	a1,a1
			12a: R_RISCV_LO12_I	.LC13
			12a: R_RISCV_RELAX	*ABS*
 12e:	8522                	mv	a0,s0
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	strcmp
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.L57+0xa>

00000138 <.LVL62>:
 138:	d11d                	beqz	a0,5e <.L54>
			138: R_RISCV_RVC_BRANCH	.L54
 13a:	000005b7          	lui	a1,0x0
			13a: R_RISCV_HI20	.LC14
			13a: R_RISCV_RELAX	*ABS*
 13e:	00058593          	mv	a1,a1
			13e: R_RISCV_LO12_I	.LC14
			13e: R_RISCV_RELAX	*ABS*
 142:	8522                	mv	a0,s0
 144:	00000097          	auipc	ra,0x0
			144: R_RISCV_CALL	strcmp
			144: R_RISCV_RELAX	*ABS*
 148:	000080e7          	jalr	ra # 144 <.LVL62+0xc>

0000014c <.LVL63>:
 14c:	d909                	beqz	a0,5e <.L54>
			14c: R_RISCV_RVC_BRANCH	.L54
 14e:	000005b7          	lui	a1,0x0
			14e: R_RISCV_HI20	.LC15
			14e: R_RISCV_RELAX	*ABS*
 152:	00058593          	mv	a1,a1
			152: R_RISCV_LO12_I	.LC15
			152: R_RISCV_RELAX	*ABS*
 156:	8522                	mv	a0,s0
 158:	00000097          	auipc	ra,0x0
			158: R_RISCV_CALL	strcmp
			158: R_RISCV_RELAX	*ABS*
 15c:	000080e7          	jalr	ra # 158 <.LVL63+0xc>

00000160 <.LVL64>:
 160:	ee050fe3          	beqz	a0,5e <.L54>
			160: R_RISCV_BRANCH	.L54
 164:	000005b7          	lui	a1,0x0
			164: R_RISCV_HI20	.LC16
			164: R_RISCV_RELAX	*ABS*
 168:	00058593          	mv	a1,a1
			168: R_RISCV_LO12_I	.LC16
			168: R_RISCV_RELAX	*ABS*
 16c:	8522                	mv	a0,s0
 16e:	00000097          	auipc	ra,0x0
			16e: R_RISCV_CALL	strcmp
			16e: R_RISCV_RELAX	*ABS*
 172:	000080e7          	jalr	ra # 16e <.LVL64+0xe>

00000176 <.LVL65>:
 176:	ee0504e3          	beqz	a0,5e <.L54>
			176: R_RISCV_BRANCH	.L54
 17a:	000005b7          	lui	a1,0x0
			17a: R_RISCV_HI20	.LC17
			17a: R_RISCV_RELAX	*ABS*
 17e:	00058593          	mv	a1,a1
			17e: R_RISCV_LO12_I	.LC17
			17e: R_RISCV_RELAX	*ABS*
 182:	8522                	mv	a0,s0
 184:	00000097          	auipc	ra,0x0
			184: R_RISCV_CALL	strcmp
			184: R_RISCV_RELAX	*ABS*
 188:	000080e7          	jalr	ra # 184 <.LVL65+0xe>

0000018c <.LVL66>:
 18c:	ec0509e3          	beqz	a0,5e <.L54>
			18c: R_RISCV_BRANCH	.L54
 190:	b575                	j	3c <.L76>
			190: R_RISCV_RVC_JUMP	.L76

Disassembly of section .text.at_key_value_get:

00000000 <at_key_value_get>:
   0:	e199                	bnez	a1,6 <.L79>
			0: R_RISCV_RVC_BRANCH	.L79
   2:	557d                	li	a0,-1

00000004 <.LVL68>:
   4:	8082                	ret

00000006 <.L79>:
   6:	1141                	addi	sp,sp,-16
   8:	c422                	sw	s0,8(sp)
   a:	c226                	sw	s1,4(sp)
   c:	c04a                	sw	s2,0(sp)
   e:	c606                	sw	ra,12(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ef_get_env
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.L79+0xe>

0000001c <.LVL70>:
  1c:	892a                	mv	s2,a0

0000001e <.LVL71>:
  1e:	e569                	bnez	a0,e8 <.L81>
			1e: R_RISCV_RVC_BRANCH	.L81
  20:	000005b7          	lui	a1,0x0
			20: R_RISCV_HI20	.LC6
			20: R_RISCV_RELAX	*ABS*
  24:	00058593          	mv	a1,a1
			24: R_RISCV_LO12_I	.LC6
			24: R_RISCV_RELAX	*ABS*
  28:	8522                	mv	a0,s0

0000002a <.LVL72>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	strcmp
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL72>

00000032 <.LVL73>:
  32:	e901                	bnez	a0,42 <.L82>
			32: R_RISCV_RVC_BRANCH	.L82
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	.LANCHOR0
			34: R_RISCV_RELAX	*ABS*
  38:	0007a783          	lw	a5,0(a5) # 0 <at_key_value_get>
			38: R_RISCV_LO12_I	.LANCHOR0
			38: R_RISCV_RELAX	*ABS*
  3c:	00f48023          	sb	a5,0(s1)
  40:	a871                	j	dc <.L78>
			40: R_RISCV_RVC_JUMP	.L78

00000042 <.L82>:
  42:	000005b7          	lui	a1,0x0
			42: R_RISCV_HI20	.LC10
			42: R_RISCV_RELAX	*ABS*
  46:	00058593          	mv	a1,a1
			46: R_RISCV_LO12_I	.LC10
			46: R_RISCV_RELAX	*ABS*
  4a:	8522                	mv	a0,s0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	strcmp
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.L82+0xa>

00000054 <.LVL74>:
  54:	e501                	bnez	a0,5c <.L83>
			54: R_RISCV_RVC_BRANCH	.L83
  56:	00048023          	sb	zero,0(s1)
  5a:	a049                	j	dc <.L78>
			5a: R_RISCV_RVC_JUMP	.L78

0000005c <.L83>:
  5c:	000005b7          	lui	a1,0x0
			5c: R_RISCV_HI20	.LC12
			5c: R_RISCV_RELAX	*ABS*
  60:	00058593          	mv	a1,a1
			60: R_RISCV_LO12_I	.LC12
			60: R_RISCV_RELAX	*ABS*
  64:	8522                	mv	a0,s0
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	strcmp
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.L83+0xa>

0000006e <.LVL75>:
  6e:	e519                	bnez	a0,7c <.L84>
			6e: R_RISCV_RVC_BRANCH	.L84
  70:	000007b7          	lui	a5,0x0
			70: R_RISCV_HI20	.LANCHOR0+0x4
			70: R_RISCV_RELAX	*ABS*+0x4
  74:	0047a783          	lw	a5,4(a5) # 4 <.LVL68>
			74: R_RISCV_LO12_I	.LANCHOR0+0x4
			74: R_RISCV_RELAX	*ABS*+0x4

00000078 <.L117>:
  78:	c09c                	sw	a5,0(s1)
  7a:	a08d                	j	dc <.L78>
			7a: R_RISCV_RVC_JUMP	.L78

0000007c <.L84>:
  7c:	000005b7          	lui	a1,0x0
			7c: R_RISCV_HI20	.LC18
			7c: R_RISCV_RELAX	*ABS*
  80:	00058593          	mv	a1,a1
			80: R_RISCV_LO12_I	.LC18
			80: R_RISCV_RELAX	*ABS*
  84:	8522                	mv	a0,s0
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	strcmp
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.L84+0xa>

0000008e <.LVL76>:
  8e:	47a1                	li	a5,8
  90:	d565                	beqz	a0,78 <.L117>
			90: R_RISCV_RVC_BRANCH	.L117
  92:	000005b7          	lui	a1,0x0
			92: R_RISCV_HI20	.LC19
			92: R_RISCV_RELAX	*ABS*
  96:	00058593          	mv	a1,a1
			96: R_RISCV_LO12_I	.LC19
			96: R_RISCV_RELAX	*ABS*
  9a:	8522                	mv	a0,s0
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	strcmp
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LVL76+0xe>

000000a4 <.LVL77>:
  a4:	e119                	bnez	a0,aa <.L86>
			a4: R_RISCV_RVC_BRANCH	.L86
  a6:	4785                	li	a5,1
  a8:	bfc1                	j	78 <.L117>
			a8: R_RISCV_RVC_JUMP	.L117

000000aa <.L86>:
  aa:	000005b7          	lui	a1,0x0
			aa: R_RISCV_HI20	.LC20
			aa: R_RISCV_RELAX	*ABS*
  ae:	00058593          	mv	a1,a1
			ae: R_RISCV_LO12_I	.LC20
			ae: R_RISCV_RELAX	*ABS*
  b2:	8522                	mv	a0,s0
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	strcmp
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.L86+0xa>

000000bc <.LVL78>:
  bc:	e509                	bnez	a0,c6 <.L87>
			bc: R_RISCV_RVC_BRANCH	.L87

000000be <.L88>:
  be:	0004a023          	sw	zero,0(s1)

000000c2 <.L116>:
  c2:	4501                	li	a0,0
  c4:	a821                	j	dc <.L78>
			c4: R_RISCV_RVC_JUMP	.L78

000000c6 <.L87>:
  c6:	000005b7          	lui	a1,0x0
			c6: R_RISCV_HI20	.LC21
			c6: R_RISCV_RELAX	*ABS*
  ca:	00058593          	mv	a1,a1
			ca: R_RISCV_LO12_I	.LC21
			ca: R_RISCV_RELAX	*ABS*
  ce:	8522                	mv	a0,s0
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	strcmp
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.L87+0xa>

000000d8 <.LVL79>:
  d8:	d17d                	beqz	a0,be <.L88>
			d8: R_RISCV_RVC_BRANCH	.L88
  da:	557d                	li	a0,-1

000000dc <.L78>:
  dc:	40b2                	lw	ra,12(sp)
  de:	4422                	lw	s0,8(sp)

000000e0 <.LVL80>:
  e0:	4492                	lw	s1,4(sp)

000000e2 <.LVL81>:
  e2:	4902                	lw	s2,0(sp)

000000e4 <.LVL82>:
  e4:	0141                	addi	sp,sp,16
  e6:	8082                	ret

000000e8 <.L81>:
  e8:	000005b7          	lui	a1,0x0
			e8: R_RISCV_HI20	.LC8
			e8: R_RISCV_RELAX	*ABS*
  ec:	00058593          	mv	a1,a1
			ec: R_RISCV_LO12_I	.LC8
			ec: R_RISCV_RELAX	*ABS*
  f0:	8522                	mv	a0,s0

000000f2 <.LVL84>:
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	strcmp
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.LVL84>

000000fa <.LVL85>:
  fa:	e901                	bnez	a0,10a <.L90>
			fa: R_RISCV_RVC_BRANCH	.L90

000000fc <.L91>:
  fc:	85ca                	mv	a1,s2
  fe:	8526                	mv	a0,s1
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	strcpy
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.L91+0x4>

00000108 <.LVL86>:
 108:	bf6d                	j	c2 <.L116>
			108: R_RISCV_RVC_JUMP	.L116

0000010a <.L90>:
 10a:	000005b7          	lui	a1,0x0
			10a: R_RISCV_HI20	.LC10
			10a: R_RISCV_RELAX	*ABS*
 10e:	00058593          	mv	a1,a1
			10e: R_RISCV_LO12_I	.LC10
			10e: R_RISCV_RELAX	*ABS*
 112:	8522                	mv	a0,s0
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	strcmp
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.L90+0xa>

0000011c <.LVL87>:
 11c:	d165                	beqz	a0,fc <.L91>
			11c: R_RISCV_RVC_BRANCH	.L91
 11e:	000005b7          	lui	a1,0x0
			11e: R_RISCV_HI20	.LC13
			11e: R_RISCV_RELAX	*ABS*
 122:	00058593          	mv	a1,a1
			122: R_RISCV_LO12_I	.LC13
			122: R_RISCV_RELAX	*ABS*
 126:	8522                	mv	a0,s0
 128:	00000097          	auipc	ra,0x0
			128: R_RISCV_CALL	strcmp
			128: R_RISCV_RELAX	*ABS*
 12c:	000080e7          	jalr	ra # 128 <.LVL87+0xc>

00000130 <.LVL88>:
 130:	d571                	beqz	a0,fc <.L91>
			130: R_RISCV_RVC_BRANCH	.L91
 132:	000005b7          	lui	a1,0x0
			132: R_RISCV_HI20	.LC14
			132: R_RISCV_RELAX	*ABS*
 136:	00058593          	mv	a1,a1
			136: R_RISCV_LO12_I	.LC14
			136: R_RISCV_RELAX	*ABS*
 13a:	8522                	mv	a0,s0
 13c:	00000097          	auipc	ra,0x0
			13c: R_RISCV_CALL	strcmp
			13c: R_RISCV_RELAX	*ABS*
 140:	000080e7          	jalr	ra # 13c <.LVL88+0xc>

00000144 <.LVL89>:
 144:	dd45                	beqz	a0,fc <.L91>
			144: R_RISCV_RVC_BRANCH	.L91
 146:	000005b7          	lui	a1,0x0
			146: R_RISCV_HI20	.LC15
			146: R_RISCV_RELAX	*ABS*
 14a:	00058593          	mv	a1,a1
			14a: R_RISCV_LO12_I	.LC15
			14a: R_RISCV_RELAX	*ABS*
 14e:	8522                	mv	a0,s0
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	strcmp
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.LVL89+0xc>

00000158 <.LVL90>:
 158:	d155                	beqz	a0,fc <.L91>
			158: R_RISCV_RVC_BRANCH	.L91
 15a:	000005b7          	lui	a1,0x0
			15a: R_RISCV_HI20	.LC16
			15a: R_RISCV_RELAX	*ABS*
 15e:	00058593          	mv	a1,a1
			15e: R_RISCV_LO12_I	.LC16
			15e: R_RISCV_RELAX	*ABS*
 162:	8522                	mv	a0,s0
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	strcmp
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.LVL90+0xc>

0000016c <.LVL91>:
 16c:	d941                	beqz	a0,fc <.L91>
			16c: R_RISCV_RVC_BRANCH	.L91
 16e:	000005b7          	lui	a1,0x0
			16e: R_RISCV_HI20	.LC17
			16e: R_RISCV_RELAX	*ABS*
 172:	00058593          	mv	a1,a1
			172: R_RISCV_LO12_I	.LC17
			172: R_RISCV_RELAX	*ABS*
 176:	8522                	mv	a0,s0
 178:	00000097          	auipc	ra,0x0
			178: R_RISCV_CALL	strcmp
			178: R_RISCV_RELAX	*ABS*
 17c:	000080e7          	jalr	ra # 178 <.LVL91+0xc>

00000180 <.LVL92>:
 180:	dd35                	beqz	a0,fc <.L91>
			180: R_RISCV_RVC_BRANCH	.L91
 182:	854a                	mv	a0,s2
 184:	00000097          	auipc	ra,0x0
			184: R_RISCV_CALL	atoi
			184: R_RISCV_RELAX	*ABS*
 188:	000080e7          	jalr	ra # 184 <.LVL92+0x4>

0000018c <.LVL93>:
 18c:	c088                	sw	a0,0(s1)
 18e:	bf15                	j	c2 <.L116>
			18e: R_RISCV_RVC_JUMP	.L116

Disassembly of section .text.at_dump_noend:

00000000 <at_dump_noend>:
   0:	711d                	addi	sp,sp,-96
   2:	dc22                	sw	s0,56(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	d64e                	sw	s3,44(sp)
   e:	89aa                	mv	s3,a0
  10:	4448                	lw	a0,12(s0)

00000012 <.LVL95>:
  12:	c2ae                	sw	a1,68(sp)
  14:	55fd                	li	a1,-1
  16:	cabe                	sw	a5,84(sp)
  18:	de06                	sw	ra,60(sp)
  1a:	da26                	sw	s1,52(sp)
  1c:	d84a                	sw	s2,48(sp)
  1e:	c4b2                	sw	a2,72(sp)
  20:	c6b6                	sw	a3,76(sp)
  22:	c8ba                	sw	a4,80(sp)
  24:	ccc2                	sw	a6,88(sp)
  26:	cec6                	sw	a7,92(sp)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	xQueueTakeMutexRecursive
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL95+0x16>

00000030 <.LVL96>:
  30:	4785                	li	a5,1
  32:	02f50363          	beq	a0,a5,58 <.L119>
			32: R_RISCV_BRANCH	.L119
  36:	00000537          	lui	a0,0x0
			36: R_RISCV_HI20	.LC4
			36: R_RISCV_RELAX	*ABS*
  3a:	00050513          	mv	a0,a0
			3a: R_RISCV_LO12_I	.LC4
			3a: R_RISCV_RELAX	*ABS*

0000003e <.L123>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	printf
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L123>

00000046 <.LVL98>:
  46:	54fd                	li	s1,-1

00000048 <.L118>:
  48:	50f2                	lw	ra,60(sp)
  4a:	5462                	lw	s0,56(sp)
  4c:	8526                	mv	a0,s1
  4e:	5942                	lw	s2,48(sp)
  50:	54d2                	lw	s1,52(sp)
  52:	59b2                	lw	s3,44(sp)

00000054 <.LVL99>:
  54:	6125                	addi	sp,sp,96
  56:	8082                	ret

00000058 <.L119>:
  58:	00c4                	addi	s1,sp,68
  5a:	86a6                	mv	a3,s1
  5c:	864e                	mv	a2,s3
  5e:	4581                	li	a1,0
  60:	4501                	li	a0,0
  62:	ce26                	sw	s1,28(sp)
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	vsnprintf
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.L119+0xc>

0000006c <.LVL101>:
  6c:	00a50593          	addi	a1,a0,10 # a <at_dump_noend+0xa>

00000070 <.LVL102>:
  70:	852e                	mv	a0,a1
  72:	c62e                	sw	a1,12(sp)
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	pvPortMalloc
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL102+0x4>

0000007c <.LVL103>:
  7c:	892a                	mv	s2,a0

0000007e <.LVL104>:
  7e:	45b2                	lw	a1,12(sp)
  80:	e511                	bnez	a0,8c <.L121>
			80: R_RISCV_RVC_BRANCH	.L121
  82:	00000537          	lui	a0,0x0
			82: R_RISCV_HI20	.LC22
			82: R_RISCV_RELAX	*ABS*

00000086 <.LVL105>:
  86:	00050513          	mv	a0,a0
			86: R_RISCV_LO12_I	.LC22
			86: R_RISCV_RELAX	*ABS*
  8a:	bf55                	j	3e <.L123>
			8a: R_RISCV_RVC_JUMP	.L123

0000008c <.L121>:
  8c:	86a6                	mv	a3,s1
  8e:	864e                	mv	a2,s3
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	vsnprintf
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L121+0x4>

00000098 <.LVL107>:
  98:	000007b7          	lui	a5,0x0
			98: R_RISCV_HI20	at_callback+0x4
			98: R_RISCV_RELAX	*ABS*+0x4
  9c:	0047a783          	lw	a5,4(a5) # 4 <at_dump_noend+0x4>
			9c: R_RISCV_LO12_I	at_callback+0x4
			9c: R_RISCV_RELAX	*ABS*+0x4
  a0:	85aa                	mv	a1,a0
  a2:	854a                	mv	a0,s2

000000a4 <.LVL108>:
  a4:	9782                	jalr	a5

000000a6 <.LVL109>:
  a6:	84aa                	mv	s1,a0

000000a8 <.LVL110>:
  a8:	4448                	lw	a0,12(s0)
  aa:	00000097          	auipc	ra,0x0
			aa: R_RISCV_CALL	xQueueGiveMutexRecursive
			aa: R_RISCV_RELAX	*ABS*
  ae:	000080e7          	jalr	ra # aa <.LVL110+0x2>

000000b2 <.LVL111>:
  b2:	854a                	mv	a0,s2
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	vPortFree
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL111+0x2>

000000bc <.LVL112>:
  bc:	b771                	j	48 <.L118>
			bc: R_RISCV_RVC_JUMP	.L118

Disassembly of section .text.at_async_event:

00000000 <at_async_event>:
   0:	716d                	addi	sp,sp,-272
   2:	10912223          	sw	s1,260(sp)
   6:	11212023          	sw	s2,256(sp)
   a:	000004b7          	lui	s1,0x0
			a: R_RISCV_HI20	.LANCHOR0
			a: R_RISCV_RELAX	*ABS*
   e:	00000937          	lui	s2,0x0
			e: R_RISCV_HI20	.L128
			e: R_RISCV_RELAX	*ABS*
  12:	10812423          	sw	s0,264(sp)
  16:	dfce                	sw	s3,252(sp)
  18:	ddd2                	sw	s4,248(sp)
  1a:	dbd6                	sw	s5,244(sp)
  1c:	d9da                	sw	s6,240(sp)
  1e:	d7de                	sw	s7,236(sp)
  20:	10112623          	sw	ra,268(sp)
  24:	d5e2                	sw	s8,232(sp)
  26:	00048493          	mv	s1,s1
			26: R_RISCV_LO12_I	.LANCHOR0
			26: R_RISCV_RELAX	*ABS*
  2a:	00090913          	mv	s2,s2
			2a: R_RISCV_LO12_I	.L128
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LBB8>:
  2e:	00000437          	lui	s0,0x0
			2e: R_RISCV_HI20	.LC23
			2e: R_RISCV_RELAX	*ABS*
  32:	000009b7          	lui	s3,0x0
			32: R_RISCV_HI20	.LC33
			32: R_RISCV_RELAX	*ABS*

00000036 <.LBE8>:
  36:	00000a37          	lui	s4,0x0
			36: R_RISCV_HI20	.LC32
			36: R_RISCV_RELAX	*ABS*

0000003a <.LBB12>:
  3a:	00000ab7          	lui	s5,0x0
			3a: R_RISCV_HI20	.LC31
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LBB15>:
  3e:	00000b37          	lui	s6,0x0
			3e: R_RISCV_HI20	.LC8
			3e: R_RISCV_RELAX	*ABS*
  42:	00000bb7          	lui	s7,0x0
			42: R_RISCV_HI20	.LC10
			42: R_RISCV_RELAX	*ABS*

00000046 <.L125>:
  46:	4c21                	li	s8,8

00000048 <.L126>:
  48:	4888                	lw	a0,16(s1)
  4a:	567d                	li	a2,-1
  4c:	08ec                	addi	a1,sp,92
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	xQueueReceive
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L126+0x6>

00000056 <.LVL115>:
  56:	47f6                	lw	a5,92(sp)
  58:	17fd                	addi	a5,a5,-1
  5a:	fefc67e3          	bltu	s8,a5,48 <.L126>
			5a: R_RISCV_BRANCH	.L126
  5e:	078a                	slli	a5,a5,0x2
  60:	97ca                	add	a5,a5,s2
  62:	439c                	lw	a5,0(a5)
  64:	8782                	jr	a5

00000066 <.L136>:
  66:	00040513          	mv	a0,s0
			66: R_RISCV_LO12_I	.LC23
			66: R_RISCV_RELAX	*ABS*
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	at_dump_noend
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.L136+0x4>

00000072 <.LVL116>:
  72:	00000537          	lui	a0,0x0
			72: R_RISCV_HI20	.LC24
			72: R_RISCV_RELAX	*ABS*
  76:	00050513          	mv	a0,a0
			76: R_RISCV_LO12_I	.LC24
			76: R_RISCV_RELAX	*ABS*

0000007a <.L143>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	at_dump_noend
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.L143>

00000082 <.LVL117>:
  82:	a0c1                	j	142 <.L142>
			82: R_RISCV_RVC_JUMP	.L142

00000084 <.L135>:
  84:	00040513          	mv	a0,s0
			84: R_RISCV_LO12_I	.LC23
			84: R_RISCV_RELAX	*ABS*
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	at_dump_noend
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.L135+0x4>

00000090 <.LVL118>:
  90:	00000537          	lui	a0,0x0
			90: R_RISCV_HI20	.LC25
			90: R_RISCV_RELAX	*ABS*
  94:	00050513          	mv	a0,a0
			94: R_RISCV_LO12_I	.LC25
			94: R_RISCV_RELAX	*ABS*
  98:	b7cd                	j	7a <.L143>
			98: R_RISCV_RVC_JUMP	.L143

0000009a <.L134>:
  9a:	00040513          	mv	a0,s0
			9a: R_RISCV_LO12_I	.LC23
			9a: R_RISCV_RELAX	*ABS*
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	at_dump_noend
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.L134+0x4>

000000a6 <.LVL119>:
  a6:	00000537          	lui	a0,0x0
			a6: R_RISCV_HI20	.LC26
			a6: R_RISCV_RELAX	*ABS*
  aa:	00050513          	mv	a0,a0
			aa: R_RISCV_LO12_I	.LC26
			aa: R_RISCV_RELAX	*ABS*
  ae:	b7f1                	j	7a <.L143>
			ae: R_RISCV_RVC_JUMP	.L143

000000b0 <.L133>:
  b0:	00040513          	mv	a0,s0
			b0: R_RISCV_LO12_I	.LC23
			b0: R_RISCV_RELAX	*ABS*
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	at_dump_noend
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.L133+0x4>

000000bc <.LVL120>:
  bc:	00000537          	lui	a0,0x0
			bc: R_RISCV_HI20	.LC27
			bc: R_RISCV_RELAX	*ABS*
  c0:	00050513          	mv	a0,a0
			c0: R_RISCV_LO12_I	.LC27
			c0: R_RISCV_RELAX	*ABS*
  c4:	bf5d                	j	7a <.L143>
			c4: R_RISCV_RVC_JUMP	.L143

000000c6 <.L132>:
  c6:	00040513          	mv	a0,s0
			c6: R_RISCV_LO12_I	.LC23
			c6: R_RISCV_RELAX	*ABS*
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	at_dump_noend
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.L132+0x4>

000000d2 <.LVL121>:
  d2:	00000537          	lui	a0,0x0
			d2: R_RISCV_HI20	.LC28
			d2: R_RISCV_RELAX	*ABS*
  d6:	00050513          	mv	a0,a0
			d6: R_RISCV_LO12_I	.LC28
			d6: R_RISCV_RELAX	*ABS*
  da:	b745                	j	7a <.L143>
			da: R_RISCV_RVC_JUMP	.L143

000000dc <.L131>:
  dc:	02100613          	li	a2,33
  e0:	4581                	li	a1,0
  e2:	18a8                	addi	a0,sp,120

000000e4 <.LBE20>:
  e4:	5c56                	lw	s8,116(sp)

000000e6 <.LBB21>:
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	memset
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.LBB21>

000000ee <.LVL123>:
  ee:	04100613          	li	a2,65
  f2:	4581                	li	a1,0
  f4:	0968                	addi	a0,sp,156
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	memset
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.LVL123+0x8>

000000fe <.LVL124>:
  fe:	18ac                	addi	a1,sp,120
 100:	000b0513          	mv	a0,s6
			100: R_RISCV_LO12_I	.LC8
			100: R_RISCV_RELAX	*ABS*
 104:	00000097          	auipc	ra,0x0
			104: R_RISCV_CALL	at_key_value_get
			104: R_RISCV_RELAX	*ABS*
 108:	000080e7          	jalr	ra # 104 <.LVL124+0x6>

0000010c <.LVL125>:
 10c:	096c                	addi	a1,sp,156
 10e:	000b8513          	mv	a0,s7
			10e: R_RISCV_LO12_I	.LC10
			10e: R_RISCV_RELAX	*ABS*
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	at_key_value_get
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.LVL125+0x6>

0000011a <.LVL126>:
 11a:	4791                	li	a5,4
 11c:	00040513          	mv	a0,s0
			11c: R_RISCV_LO12_I	.LC23
			11c: R_RISCV_RELAX	*ABS*
 120:	02fc1863          	bne	s8,a5,150 <.L138>
			120: R_RISCV_BRANCH	.L138
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	at_dump_noend
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.LVL126+0xa>

0000012c <.LVL127>:
 12c:	5686                	lw	a3,96(sp)
 12e:	00000537          	lui	a0,0x0
			12e: R_RISCV_HI20	.LC29
			12e: R_RISCV_RELAX	*ABS*
 132:	0970                	addi	a2,sp,156
 134:	18ac                	addi	a1,sp,120
 136:	00050513          	mv	a0,a0
			136: R_RISCV_LO12_I	.LC29
			136: R_RISCV_RELAX	*ABS*
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	at_dump_noend
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL127+0xe>

00000142 <.L142>:
 142:	00040513          	mv	a0,s0
			142: R_RISCV_LO12_I	.LC23
			142: R_RISCV_RELAX	*ABS*
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	at_dump_noend
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.L142+0x4>

0000014e <.LVL129>:
 14e:	bde5                	j	46 <.L125>
			14e: R_RISCV_RVC_JUMP	.L125

00000150 <.L138>:
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	at_dump_noend
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.L138>

00000158 <.LVL131>:
 158:	00000537          	lui	a0,0x0
			158: R_RISCV_HI20	.LC30
			158: R_RISCV_RELAX	*ABS*
 15c:	0970                	addi	a2,sp,156
 15e:	18ac                	addi	a1,sp,120
 160:	00050513          	mv	a0,a0
			160: R_RISCV_LO12_I	.LC30
			160: R_RISCV_RELAX	*ABS*
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	at_dump_noend
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.LVL131+0xc>

0000016c <.LVL132>:
 16c:	bfd9                	j	142 <.L142>
			16c: R_RISCV_RVC_JUMP	.L142

0000016e <.L130>:
 16e:	5756                	lw	a4,116(sp)
 170:	4799                	li	a5,6
 172:	ecf71ae3          	bne	a4,a5,46 <.L125>
			172: R_RISCV_BRANCH	.L125
 176:	00040513          	mv	a0,s0
			176: R_RISCV_LO12_I	.LC23
			176: R_RISCV_RELAX	*ABS*
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	at_dump_noend
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.L130+0xc>

00000182 <.LVL134>:
 182:	06014803          	lbu	a6,96(sp)
 186:	06114783          	lbu	a5,97(sp)
 18a:	06214703          	lbu	a4,98(sp)
 18e:	06314683          	lbu	a3,99(sp)
 192:	06414603          	lbu	a2,100(sp)
 196:	06514583          	lbu	a1,101(sp)
 19a:	000a8513          	mv	a0,s5
			19a: R_RISCV_LO12_I	.LC31
			19a: R_RISCV_RELAX	*ABS*
 19e:	00000097          	auipc	ra,0x0
			19e: R_RISCV_CALL	at_dump_noend
			19e: R_RISCV_RELAX	*ABS*
 1a2:	000080e7          	jalr	ra # 19e <.LVL134+0x1c>

000001a6 <.LVL135>:
 1a6:	bf71                	j	142 <.L142>
			1a6: R_RISCV_RVC_JUMP	.L142

000001a8 <.L129>:
 1a8:	00040513          	mv	a0,s0
			1a8: R_RISCV_LO12_I	.LC23
			1a8: R_RISCV_RELAX	*ABS*
 1ac:	00000097          	auipc	ra,0x0
			1ac: R_RISCV_CALL	at_dump_noend
			1ac: R_RISCV_RELAX	*ABS*
 1b0:	000080e7          	jalr	ra # 1ac <.L129+0x4>

000001b4 <.LVL137>:
 1b4:	000a0513          	mv	a0,s4
			1b4: R_RISCV_LO12_I	.LC32
			1b4: R_RISCV_RELAX	*ABS*
 1b8:	b5c9                	j	7a <.L143>
			1b8: R_RISCV_RVC_JUMP	.L143

000001ba <.L127>:
 1ba:	0850                	addi	a2,sp,20
 1bc:	080c                	addi	a1,sp,16
 1be:	0068                	addi	a0,sp,12
 1c0:	c602                	sw	zero,12(sp)
 1c2:	c802                	sw	zero,16(sp)
 1c4:	ca02                	sw	zero,20(sp)
 1c6:	cc02                	sw	zero,24(sp)
 1c8:	ce02                	sw	zero,28(sp)
 1ca:	00000097          	auipc	ra,0x0
			1ca: R_RISCV_CALL	wifi_mgmr_sta_ip_get
			1ca: R_RISCV_RELAX	*ABS*
 1ce:	000080e7          	jalr	ra # 1ca <.L127+0x10>

000001d2 <.LVL138>:
 1d2:	0068                	addi	a0,sp,12
 1d4:	00000097          	auipc	ra,0x0
			1d4: R_RISCV_CALL	ip4addr_ntoa
			1d4: R_RISCV_RELAX	*ABS*
 1d8:	000080e7          	jalr	ra # 1d4 <.LVL138+0x2>

000001dc <.LVL139>:
 1dc:	85aa                	mv	a1,a0
 1de:	1008                	addi	a0,sp,32
 1e0:	00000097          	auipc	ra,0x0
			1e0: R_RISCV_CALL	strcpy
			1e0: R_RISCV_RELAX	*ABS*
 1e4:	000080e7          	jalr	ra # 1e0 <.LVL139+0x4>

000001e8 <.LVL140>:
 1e8:	0808                	addi	a0,sp,16
 1ea:	00000097          	auipc	ra,0x0
			1ea: R_RISCV_CALL	ip4addr_ntoa
			1ea: R_RISCV_RELAX	*ABS*
 1ee:	000080e7          	jalr	ra # 1ea <.LVL140+0x2>

000001f2 <.LVL141>:
 1f2:	85aa                	mv	a1,a0
 1f4:	1848                	addi	a0,sp,52
 1f6:	00000097          	auipc	ra,0x0
			1f6: R_RISCV_CALL	strcpy
			1f6: R_RISCV_RELAX	*ABS*
 1fa:	000080e7          	jalr	ra # 1f6 <.LVL141+0x4>

000001fe <.LVL142>:
 1fe:	0848                	addi	a0,sp,20
 200:	00000097          	auipc	ra,0x0
			200: R_RISCV_CALL	ip4addr_ntoa
			200: R_RISCV_RELAX	*ABS*
 204:	000080e7          	jalr	ra # 200 <.LVL142+0x2>

00000208 <.LVL143>:
 208:	85aa                	mv	a1,a0
 20a:	00a8                	addi	a0,sp,72
 20c:	00000097          	auipc	ra,0x0
			20c: R_RISCV_CALL	strcpy
			20c: R_RISCV_RELAX	*ABS*
 210:	000080e7          	jalr	ra # 20c <.LVL143+0x4>

00000214 <.LVL144>:
 214:	086c                	addi	a1,sp,28
 216:	0828                	addi	a0,sp,24
 218:	00000097          	auipc	ra,0x0
			218: R_RISCV_CALL	wifi_mgmr_sta_dns_get
			218: R_RISCV_RELAX	*ABS*
 21c:	000080e7          	jalr	ra # 218 <.LVL144+0x4>

00000220 <.LVL145>:
 220:	0828                	addi	a0,sp,24
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	ip4addr_ntoa
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.LVL145+0x2>

0000022a <.LVL146>:
 22a:	85aa                	mv	a1,a0
 22c:	18a8                	addi	a0,sp,120
 22e:	00000097          	auipc	ra,0x0
			22e: R_RISCV_CALL	strcpy
			22e: R_RISCV_RELAX	*ABS*
 232:	000080e7          	jalr	ra # 22e <.LVL146+0x4>

00000236 <.LVL147>:
 236:	0868                	addi	a0,sp,28
 238:	00000097          	auipc	ra,0x0
			238: R_RISCV_CALL	ip4addr_ntoa
			238: R_RISCV_RELAX	*ABS*
 23c:	000080e7          	jalr	ra # 238 <.LVL147+0x2>

00000240 <.LVL148>:
 240:	85aa                	mv	a1,a0
 242:	0968                	addi	a0,sp,156
 244:	00000097          	auipc	ra,0x0
			244: R_RISCV_CALL	strcpy
			244: R_RISCV_RELAX	*ABS*
 248:	000080e7          	jalr	ra # 244 <.LVL148+0x4>

0000024c <.LVL149>:
 24c:	00040513          	mv	a0,s0
			24c: R_RISCV_LO12_I	.LC23
			24c: R_RISCV_RELAX	*ABS*
 250:	00000097          	auipc	ra,0x0
			250: R_RISCV_CALL	at_dump_noend
			250: R_RISCV_RELAX	*ABS*
 254:	000080e7          	jalr	ra # 250 <.LVL149+0x4>

00000258 <.LVL150>:
 258:	097c                	addi	a5,sp,156
 25a:	18b8                	addi	a4,sp,120
 25c:	00b4                	addi	a3,sp,72
 25e:	1850                	addi	a2,sp,52
 260:	100c                	addi	a1,sp,32
 262:	00098513          	mv	a0,s3
			262: R_RISCV_LO12_I	.LC33
			262: R_RISCV_RELAX	*ABS*
 266:	00000097          	auipc	ra,0x0
			266: R_RISCV_CALL	at_dump_noend
			266: R_RISCV_RELAX	*ABS*
 26a:	000080e7          	jalr	ra # 266 <.LVL150+0xe>

0000026e <.LVL151>:
 26e:	bdd1                	j	142 <.L142>
			26e: R_RISCV_RVC_JUMP	.L142

Disassembly of section .text.at_cmd_init:

00000000 <at_cmd_init>:
   0:	00000637          	lui	a2,0x0
			0: R_RISCV_HI20	at_serial_read
			0: R_RISCV_RELAX	*ABS*
   4:	00000537          	lui	a0,0x0
			4: R_RISCV_HI20	.LANCHOR0+0x14
			4: R_RISCV_RELAX	*ABS*+0x14
   8:	1101                	addi	sp,sp,-32
   a:	00060613          	mv	a2,a2
			a: R_RISCV_LO12_I	at_serial_read
			a: R_RISCV_RELAX	*ABS*
   e:	40000593          	li	a1,1024
  12:	01450513          	addi	a0,a0,20 # 14 <at_cmd_init+0x14>
			12: R_RISCV_LO12_I	.LANCHOR0+0x14
			12: R_RISCV_RELAX	*ABS*+0x14
  16:	ce06                	sw	ra,28(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	at_queue_init
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <at_cmd_init+0x18>

00000020 <.LVL152>:
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	callback
			20: R_RISCV_RELAX	*ABS*
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	callback
			24: R_RISCV_RELAX	*ABS*
  28:	c43e                	sw	a5,8(sp)
  2a:	000007b7          	lui	a5,0x0
			2a: R_RISCV_HI20	at_serial_write
			2a: R_RISCV_RELAX	*ABS*
  2e:	00078793          	mv	a5,a5
			2e: R_RISCV_LO12_I	at_serial_write
			2e: R_RISCV_RELAX	*ABS*
  32:	0028                	addi	a0,sp,8
  34:	c63e                	sw	a5,12(sp)
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	at_init
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL152+0x16>

0000003e <.LVL153>:
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	at_cmd_impl_init
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL153>

00000046 <.LVL154>:
  46:	cd09                	beqz	a0,60 <.L144>
			46: R_RISCV_RVC_BRANCH	.L144

00000048 <.LBB28>:
  48:	00000537          	lui	a0,0x0
			48: R_RISCV_HI20	.LC34
			48: R_RISCV_RELAX	*ABS*
  4c:	00050513          	mv	a0,a0
			4c: R_RISCV_LO12_I	.LC34
			4c: R_RISCV_RELAX	*ABS*
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	printf
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LBB28+0x8>

00000058 <.LVL155>:
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	abort
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL155>

00000060 <.L144>:
  60:	40f2                	lw	ra,28(sp)
  62:	6105                	addi	sp,sp,32
  64:	8082                	ret

Disassembly of section .text.at_server_init:

00000000 <at_server_init>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	47a1                	li	a5,8
   6:	00000437          	lui	s0,0x0
			6: R_RISCV_HI20	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	00f10223          	sb	a5,4(sp)
   e:	41400613          	li	a2,1044
  12:	4785                	li	a5,1
  14:	4581                	li	a1,0
  16:	00040513          	mv	a0,s0
			16: R_RISCV_LO12_I	.LANCHOR0
			16: R_RISCV_RELAX	*ABS*
  1a:	00f102a3          	sb	a5,5(sp)
  1e:	ce06                	sw	ra,28(sp)
  20:	ca26                	sw	s1,20(sp)
  22:	c84a                	sw	s2,16(sp)
  24:	c602                	sw	zero,12(sp)
  26:	00010323          	sb	zero,6(sp)
  2a:	000103a3          	sb	zero,7(sp)
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	memset
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <at_server_init+0x2e>

00000036 <.LVL157>:
  36:	00040493          	mv	s1,s0
			36: R_RISCV_LO12_I	.LANCHOR0
			36: R_RISCV_RELAX	*ABS*
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	at_serial_open
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL157+0x4>

00000042 <.LVL158>:
  42:	449c                	lw	a5,8(s1)
  44:	0207d263          	bgez	a5,68 <.L148>
			44: R_RISCV_BRANCH	.L148
  48:	00000537          	lui	a0,0x0
			48: R_RISCV_HI20	.LC35
			48: R_RISCV_RELAX	*ABS*
  4c:	00050513          	mv	a0,a0
			4c: R_RISCV_LO12_I	.LC35
			4c: R_RISCV_RELAX	*ABS*
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	printf
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL158+0xe>

00000058 <.L160>:
  58:	54fd                	li	s1,-1

0000005a <.L147>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	4462                	lw	s0,24(sp)
  5e:	8526                	mv	a0,s1
  60:	4942                	lw	s2,16(sp)
  62:	44d2                	lw	s1,20(sp)
  64:	6105                	addi	sp,sp,32
  66:	8082                	ret

00000068 <.L148>:
  68:	00000537          	lui	a0,0x0
			68: R_RISCV_HI20	.LC36
			68: R_RISCV_RELAX	*ABS*
  6c:	006c                	addi	a1,sp,12
  6e:	00050513          	mv	a0,a0
			6e: R_RISCV_LO12_I	.LC36
			6e: R_RISCV_RELAX	*ABS*
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	at_key_value_get
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L148+0xa>

0000007a <.LVL160>:
  7a:	4732                	lw	a4,12(sp)

0000007c <.LBB34>:
  7c:	00000537          	lui	a0,0x0
			7c: R_RISCV_HI20	.LC6
			7c: R_RISCV_RELAX	*ABS*

00000080 <.LBE34>:
  80:	000007b7          	lui	a5,0x0
			80: R_RISCV_HI20	at_cfg+0xe0
			80: R_RISCV_RELAX	*ABS*+0xe0

00000084 <.LBB39>:
  84:	00050513          	mv	a0,a0
			84: R_RISCV_LO12_I	.LC6
			84: R_RISCV_RELAX	*ABS*

00000088 <.LBE39>:
  88:	0ee7a023          	sw	a4,224(a5) # e0 <.LVL167+0xa>
			88: R_RISCV_LO12_S	at_cfg+0xe0
			88: R_RISCV_RELAX	*ABS*+0xe0

0000008c <.LBB40>:
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	ef_get_env
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LBB40>

00000094 <.LVL161>:
  94:	00040413          	mv	s0,s0
			94: R_RISCV_LO12_I	.LANCHOR0
			94: R_RISCV_RELAX	*ABS*

00000098 <.LBB41>:
  98:	4781                	li	a5,0
  9a:	c511                	beqz	a0,a6 <.L150>
			9a: R_RISCV_RVC_BRANCH	.L150
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	atoi
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LBB41+0x4>

000000a4 <.LVL163>:
  a4:	87aa                	mv	a5,a0

000000a6 <.L150>:
  a6:	00000537          	lui	a0,0x0
			a6: R_RISCV_HI20	.LC12
			a6: R_RISCV_RELAX	*ABS*
  aa:	00050513          	mv	a0,a0
			aa: R_RISCV_LO12_I	.LC12
			aa: R_RISCV_RELAX	*ABS*

000000ae <.LBE42>:
  ae:	c01c                	sw	a5,0(s0)

000000b0 <.LBB46>:
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	ef_get_env
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LBB46>

000000b8 <.LVL165>:
  b8:	c155                	beqz	a0,15c <.L157>
			b8: R_RISCV_RVC_BRANCH	.L157
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	atoi
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.LVL165+0x2>

000000c2 <.L151>:
  c2:	c048                	sw	a0,4(s0)
  c4:	00000537          	lui	a0,0x0
			c4: R_RISCV_HI20	.LC18
			c4: R_RISCV_RELAX	*ABS*
  c8:	004c                	addi	a1,sp,4
  ca:	00050513          	mv	a0,a0
			ca: R_RISCV_LO12_I	.LC18
			ca: R_RISCV_RELAX	*ABS*
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	at_key_value_get
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.L151+0xc>

000000d6 <.LVL167>:
  d6:	00000537          	lui	a0,0x0
			d6: R_RISCV_HI20	.LC19
			d6: R_RISCV_RELAX	*ABS*
  da:	00510593          	addi	a1,sp,5
  de:	00050513          	mv	a0,a0
			de: R_RISCV_LO12_I	.LC19
			de: R_RISCV_RELAX	*ABS*
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	at_key_value_get
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL167+0xc>

000000ea <.LVL168>:
  ea:	00000537          	lui	a0,0x0
			ea: R_RISCV_HI20	.LC20
			ea: R_RISCV_RELAX	*ABS*
  ee:	00610593          	addi	a1,sp,6
  f2:	00050513          	mv	a0,a0
			f2: R_RISCV_LO12_I	.LC20
			f2: R_RISCV_RELAX	*ABS*
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	at_key_value_get
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.LVL168+0xc>

000000fe <.LVL169>:
  fe:	00000537          	lui	a0,0x0
			fe: R_RISCV_HI20	.LC21
			fe: R_RISCV_RELAX	*ABS*
 102:	00710593          	addi	a1,sp,7
 106:	00050513          	mv	a0,a0
			106: R_RISCV_LO12_I	.LC21
			106: R_RISCV_RELAX	*ABS*
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	at_key_value_get
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.LVL169+0xc>

00000112 <.LVL170>:
 112:	00714703          	lbu	a4,7(sp)
 116:	00614683          	lbu	a3,6(sp)
 11a:	00514603          	lbu	a2,5(sp)
 11e:	00414583          	lbu	a1,4(sp)
 122:	4048                	lw	a0,4(s0)
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	at_serial_cfg_set
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.LVL170+0x12>

0000012c <.LVL171>:
 12c:	84aa                	mv	s1,a0

0000012e <.LVL172>:
 12e:	10051363          	bnez	a0,234 <.L158>
			12e: R_RISCV_BRANCH	.L158
 132:	4511                	li	a0,4
 134:	00000097          	auipc	ra,0x0
			134: R_RISCV_CALL	xQueueCreateMutex
			134: R_RISCV_RELAX	*ABS*
 138:	000080e7          	jalr	ra # 134 <.LVL172+0x6>

0000013c <.LVL173>:
 13c:	c448                	sw	a0,12(s0)
 13e:	e11d                	bnez	a0,164 <.L152>
			13e: R_RISCV_RVC_BRANCH	.L152
 140:	00000537          	lui	a0,0x0
			140: R_RISCV_HI20	.LC37
			140: R_RISCV_RELAX	*ABS*
 144:	00050513          	mv	a0,a0
			144: R_RISCV_LO12_I	.LC37
			144: R_RISCV_RELAX	*ABS*
 148:	00000097          	auipc	ra,0x0
			148: R_RISCV_CALL	printf
			148: R_RISCV_RELAX	*ABS*
 14c:	000080e7          	jalr	ra # 148 <.LVL173+0xc>

00000150 <.L161>:
 150:	4408                	lw	a0,8(s0)
 152:	00000097          	auipc	ra,0x0
			152: R_RISCV_CALL	aos_close
			152: R_RISCV_RELAX	*ABS*
 156:	000080e7          	jalr	ra # 152 <.L161+0x2>

0000015a <.LVL175>:
 15a:	bdfd                	j	58 <.L160>
			15a: R_RISCV_RVC_JUMP	.L160

0000015c <.L157>:
 15c:	6571                	lui	a0,0x1c

0000015e <.LVL177>:
 15e:	20050513          	addi	a0,a0,512 # 1c200 <.LASF340+0x19f12>
 162:	b785                	j	c2 <.L151>
			162: R_RISCV_RVC_JUMP	.L151

00000164 <.L152>:
 164:	4601                	li	a2,0
 166:	45f1                	li	a1,28
 168:	4511                	li	a0,4
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	xQueueGenericCreate
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.L152+0x6>

00000172 <.LVL179>:
 172:	c808                	sw	a0,16(s0)
 174:	ed19                	bnez	a0,192 <.L153>
			174: R_RISCV_RVC_BRANCH	.L153
 176:	00000537          	lui	a0,0x0
			176: R_RISCV_HI20	.LC38
			176: R_RISCV_RELAX	*ABS*
 17a:	00050513          	mv	a0,a0
			17a: R_RISCV_LO12_I	.LC38
			17a: R_RISCV_RELAX	*ABS*
 17e:	00000097          	auipc	ra,0x0
			17e: R_RISCV_CALL	printf
			17e: R_RISCV_RELAX	*ABS*
 182:	000080e7          	jalr	ra # 17e <.LVL179+0xc>

00000186 <.L163>:
 186:	4448                	lw	a0,12(s0)
 188:	00000097          	auipc	ra,0x0
			188: R_RISCV_CALL	vQueueDelete
			188: R_RISCV_RELAX	*ABS*
 18c:	000080e7          	jalr	ra # 188 <.L163+0x2>

00000190 <.LVL181>:
 190:	b7c1                	j	150 <.L161>
			190: R_RISCV_RVC_JUMP	.L161

00000192 <.L153>:
 192:	00000097          	auipc	ra,0x0
			192: R_RISCV_CALL	at_cmd_init
			192: R_RISCV_RELAX	*ABS*
 196:	000080e7          	jalr	ra # 192 <.L153>

0000019a <.LVL183>:
 19a:	000005b7          	lui	a1,0x0
			19a: R_RISCV_HI20	.LC39
			19a: R_RISCV_RELAX	*ABS*
 19e:	00000537          	lui	a0,0x0
			19e: R_RISCV_HI20	at_async_event
			19e: R_RISCV_RELAX	*ABS*
 1a2:	003c                	addi	a5,sp,8
 1a4:	470d                	li	a4,3
 1a6:	4681                	li	a3,0
 1a8:	10000613          	li	a2,256
 1ac:	00058593          	mv	a1,a1
			1ac: R_RISCV_LO12_I	.LC39
			1ac: R_RISCV_RELAX	*ABS*
 1b0:	00050513          	mv	a0,a0
			1b0: R_RISCV_LO12_I	at_async_event
			1b0: R_RISCV_RELAX	*ABS*
 1b4:	00000097          	auipc	ra,0x0
			1b4: R_RISCV_CALL	xTaskCreate
			1b4: R_RISCV_RELAX	*ABS*
 1b8:	000080e7          	jalr	ra # 1b4 <.LVL183+0x1a>

000001bc <.LVL184>:
 1bc:	4785                	li	a5,1
 1be:	892a                	mv	s2,a0

000001c0 <.LVL185>:
 1c0:	02f50063          	beq	a0,a5,1e0 <.L154>
			1c0: R_RISCV_BRANCH	.L154
 1c4:	00000537          	lui	a0,0x0
			1c4: R_RISCV_HI20	.LC40
			1c4: R_RISCV_RELAX	*ABS*

000001c8 <.LVL186>:
 1c8:	00050513          	mv	a0,a0
			1c8: R_RISCV_LO12_I	.LC40
			1c8: R_RISCV_RELAX	*ABS*
 1cc:	00000097          	auipc	ra,0x0
			1cc: R_RISCV_CALL	printf
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	000080e7          	jalr	ra # 1cc <.LVL186+0x4>

000001d4 <.L162>:
 1d4:	4808                	lw	a0,16(s0)
 1d6:	00000097          	auipc	ra,0x0
			1d6: R_RISCV_CALL	vQueueDelete
			1d6: R_RISCV_RELAX	*ABS*
 1da:	000080e7          	jalr	ra # 1d6 <.L162+0x2>

000001de <.LVL188>:
 1de:	b765                	j	186 <.L163>
			1de: R_RISCV_RVC_JUMP	.L163

000001e0 <.L154>:
 1e0:	000005b7          	lui	a1,0x0
			1e0: R_RISCV_HI20	.LC41
			1e0: R_RISCV_RELAX	*ABS*
 1e4:	00000537          	lui	a0,0x0
			1e4: R_RISCV_HI20	at_cmd_exec
			1e4: R_RISCV_RELAX	*ABS*

000001e8 <.LVL190>:
 1e8:	4781                	li	a5,0
 1ea:	4701                	li	a4,0
 1ec:	4681                	li	a3,0
 1ee:	60000613          	li	a2,1536
 1f2:	00058593          	mv	a1,a1
			1f2: R_RISCV_LO12_I	.LC41
			1f2: R_RISCV_RELAX	*ABS*
 1f6:	00050513          	mv	a0,a0
			1f6: R_RISCV_LO12_I	at_cmd_exec
			1f6: R_RISCV_RELAX	*ABS*
 1fa:	00000097          	auipc	ra,0x0
			1fa: R_RISCV_CALL	xTaskCreate
			1fa: R_RISCV_RELAX	*ABS*
 1fe:	000080e7          	jalr	ra # 1fa <.LVL190+0x12>

00000202 <.LVL191>:
 202:	03250063          	beq	a0,s2,222 <.L155>
			202: R_RISCV_BRANCH	.L155
 206:	00000537          	lui	a0,0x0
			206: R_RISCV_HI20	.LC42
			206: R_RISCV_RELAX	*ABS*

0000020a <.LVL192>:
 20a:	00050513          	mv	a0,a0
			20a: R_RISCV_LO12_I	.LC42
			20a: R_RISCV_RELAX	*ABS*
 20e:	00000097          	auipc	ra,0x0
			20e: R_RISCV_CALL	printf
			20e: R_RISCV_RELAX	*ABS*
 212:	000080e7          	jalr	ra # 20e <.LVL192+0x4>

00000216 <.LVL193>:
 216:	4522                	lw	a0,8(sp)
 218:	00000097          	auipc	ra,0x0
			218: R_RISCV_CALL	vTaskDelete
			218: R_RISCV_RELAX	*ABS*
 21c:	000080e7          	jalr	ra # 218 <.LVL193+0x2>

00000220 <.LVL194>:
 220:	bf55                	j	1d4 <.L162>
			220: R_RISCV_RVC_JUMP	.L162

00000222 <.L155>:
 222:	00000537          	lui	a0,0x0
			222: R_RISCV_HI20	.LC43
			222: R_RISCV_RELAX	*ABS*

00000226 <.LVL196>:
 226:	00050513          	mv	a0,a0
			226: R_RISCV_LO12_I	.LC43
			226: R_RISCV_RELAX	*ABS*
 22a:	00000097          	auipc	ra,0x0
			22a: R_RISCV_CALL	printf
			22a: R_RISCV_RELAX	*ABS*
 22e:	000080e7          	jalr	ra # 22a <.LVL196+0x4>

00000232 <.LVL197>:
 232:	b525                	j	5a <.L147>
			232: R_RISCV_RVC_JUMP	.L147

00000234 <.L158>:
 234:	4491                	li	s1,4

00000236 <.LVL199>:
 236:	b515                	j	5a <.L147>
			236: R_RISCV_RVC_JUMP	.L147

Disassembly of section .text.at_server_notify_with_ctx:

00000000 <at_server_notify_with_ctx>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	84ae                	mv	s1,a1
   a:	892a                	mv	s2,a0
   c:	8432                	mv	s0,a2
   e:	4581                	li	a1,0

00000010 <.LVL201>:
  10:	4671                	li	a2,28

00000012 <.LVL202>:
  12:	0048                	addi	a0,sp,4

00000014 <.LVL203>:
  14:	d606                	sw	ra,44(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	memset
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL203+0x2>

0000001e <.LVL204>:
  1e:	47d1                	li	a5,20
  20:	557d                	li	a0,-1
  22:	0287e663          	bltu	a5,s0,4e <.L164>
			22: R_RISCV_BRANCH	.L164
  26:	8622                	mv	a2,s0
  28:	85a6                	mv	a1,s1
  2a:	0028                	addi	a0,sp,8
  2c:	c24a                	sw	s2,4(sp)
  2e:	ce22                	sw	s0,28(sp)
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	memcpy
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL204+0x12>

00000038 <.LVL205>:
  38:	000007b7          	lui	a5,0x0
			38: R_RISCV_HI20	.LANCHOR0+0x10
			38: R_RISCV_RELAX	*ABS*+0x10
  3c:	0107a503          	lw	a0,16(a5) # 10 <.LVL201>
			3c: R_RISCV_LO12_I	.LANCHOR0+0x10
			3c: R_RISCV_RELAX	*ABS*+0x10
  40:	4681                	li	a3,0
  42:	567d                	li	a2,-1
  44:	004c                	addi	a1,sp,4
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	xQueueGenericSend
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LVL205+0xe>

0000004e <.L164>:
  4e:	50b2                	lw	ra,44(sp)
  50:	5422                	lw	s0,40(sp)

00000052 <.LVL207>:
  52:	5492                	lw	s1,36(sp)

00000054 <.LVL208>:
  54:	5902                	lw	s2,32(sp)
  56:	6145                	addi	sp,sp,48
  58:	8082                	ret

Disassembly of section .text.at_server_notify:

00000000 <at_server_notify>:
   0:	4601                	li	a2,0
   2:	4581                	li	a1,0
   4:	00000317          	auipc	t1,0x0
			4: R_RISCV_CALL	at_server_notify_with_ctx
			4: R_RISCV_RELAX	*ABS*
   8:	00030067          	jr	t1 # 4 <at_server_notify+0x4>

Disassembly of section .text.at_uart_reinit:

00000000 <at_uart_reinit>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0+0x8
			0: R_RISCV_RELAX	*ABS*+0x8
   4:	4110                	lw	a2,0(a0)
   6:	0087a503          	lw	a0,8(a5) # 8 <at_uart_reinit+0x8>
			6: R_RISCV_LO12_I	.LANCHOR0+0x8
			6: R_RISCV_RELAX	*ABS*+0x8

0000000a <.LVL212>:
   a:	458d                	li	a1,3
   c:	00000317          	auipc	t1,0x0
			c: R_RISCV_CALL	aos_ioctl
			c: R_RISCV_RELAX	*ABS*
  10:	00030067          	jr	t1 # c <.LVL212+0x2>
