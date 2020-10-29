
libatcmd/at_socket.o:     file format elf32-littleriscv


Disassembly of section .text.create_tcp_udp_handler:

00000000 <create_tcp_udp_handler>:
   0:	7165                	addi	sp,sp,-400
   2:	18812423          	sw	s0,392(sp)
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LANCHOR0
			6: R_RISCV_RELAX	*ABS*
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LC0
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL1>:
  10:	00058593          	mv	a1,a1
			10: R_RISCV_LO12_I	.LANCHOR0
			10: R_RISCV_RELAX	*ABS*
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	18112623          	sw	ra,396(sp)
  1c:	18912223          	sw	s1,388(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	printf
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL1+0x10>

00000028 <.LVL2>:
  28:	11c00613          	li	a2,284
  2c:	4581                	li	a1,0
  2e:	10c8                	addi	a0,sp,100
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	memset
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL2+0x8>

00000038 <.LVL3>:
  38:	57fd                	li	a5,-1
  3a:	d6be                	sw	a5,108(sp)

0000003c <.LVL4>:
  3c:	6685                	lui	a3,0x1
  3e:	10fc                	addi	a5,sp,108

00000040 <.LVL5>:
  40:	18d0                	addi	a2,sp,116
  42:	c43e                	sw	a5,8(sp)
  44:	d032                	sw	a2,32(sp)
  46:	c0468793          	addi	a5,a3,-1020 # c04 <.LASF159+0xd>

0000004a <.LVL6>:
  4a:	1ad0                	addi	a2,sp,372
  4c:	470d                	li	a4,3
  4e:	d0068693          	addi	a3,a3,-768
  52:	c63e                	sw	a5,12(sp)
  54:	cc3e                	sw	a5,24(sp)
  56:	d632                	sw	a2,44(sp)
  58:	d83e                	sw	a5,48(sp)
  5a:	1af0                	addi	a2,sp,380
  5c:	de3e                	sw	a5,60(sp)
  5e:	cabe                	sw	a5,84(sp)
  60:	d0be                	sw	a5,96(sp)

00000062 <.LVL7>:
  62:	401c                	lw	a5,0(s0)
  64:	00e10223          	sb	a4,4(sp)
  68:	d236                	sw	a3,36(sp)
  6a:	02e10423          	sb	a4,40(sp)
  6e:	02e10a23          	sb	a4,52(sp)
  72:	dc32                	sw	a2,56(sp)
  74:	c4b6                	sw	a3,72(sp)
  76:	04e10623          	sb	a4,76(sp)
  7a:	1ad4                	addi	a3,sp,372
  7c:	04e10c23          	sb	a4,88(sp)
  80:	1884                	addi	s1,sp,112
  82:	1ab8                	addi	a4,sp,376
  84:	18d0                	addi	a2,sp,116
  86:	c8b6                	sw	a3,80(sp)
  88:	00010823          	sb	zero,16(sp)
  8c:	ca26                	sw	s1,20(sp)
  8e:	00010e23          	sb	zero,28(sp)
  92:	04010023          	sb	zero,64(sp)
  96:	c2b2                	sw	a2,68(sp)
  98:	ceba                	sw	a4,92(sp)
  9a:	0007c703          	lbu	a4,0(a5)
  9e:	03f00693          	li	a3,63
  a2:	00d71a63          	bne	a4,a3,b6 <.L2>
			a2: R_RISCV_BRANCH	.L2
  a6:	10cc                	addi	a1,sp,100
  a8:	02900513          	li	a0,41

000000ac <.L17>:
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	at_callback_do
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.L17>

000000b4 <.LVL9>:
  b4:	a031                	j	c0 <.L3>
			b4: R_RISCV_RVC_JUMP	.L3

000000b6 <.L2>:
  b6:	03d00693          	li	a3,61
  ba:	00d70b63          	beq	a4,a3,d0 <.L4>
			ba: R_RISCV_BRANCH	.L4

000000be <.L5>:
  be:	4511                	li	a0,4

000000c0 <.L3>:
  c0:	18c12083          	lw	ra,396(sp)
  c4:	18812403          	lw	s0,392(sp)

000000c8 <.LVL12>:
  c8:	18412483          	lw	s1,388(sp)
  cc:	6159                	addi	sp,sp,400

000000ce <.LVL13>:
  ce:	8082                	ret

000000d0 <.L4>:
  d0:	0785                	addi	a5,a5,1
  d2:	c01c                	sw	a5,0(s0)
  d4:	868a                	mv	a3,sp
  d6:	4609                	li	a2,2
  d8:	004c                	addi	a1,sp,4
  da:	8522                	mv	a0,s0
  dc:	00000097          	auipc	ra,0x0
			dc: R_RISCV_CALL	at_get_parameters
			dc: R_RISCV_RELAX	*ABS*
  e0:	000080e7          	jalr	ra # dc <.L4+0xc>

000000e4 <.LVL15>:
  e4:	fd69                	bnez	a0,be <.L5>
			e4: R_RISCV_RVC_BRANCH	.L5
  e6:	5736                	lw	a4,108(sp)
  e8:	4791                	li	a5,4
  ea:	fce7cae3          	blt	a5,a4,be <.L5>
			ea: R_RISCV_BRANCH	.L5
  ee:	000005b7          	lui	a1,0x0
			ee: R_RISCV_HI20	.LC1
			ee: R_RISCV_RELAX	*ABS*
  f2:	00058593          	mv	a1,a1
			f2: R_RISCV_LO12_I	.LC1
			f2: R_RISCV_RELAX	*ABS*
  f6:	8526                	mv	a0,s1

000000f8 <.LVL16>:
  f8:	00000097          	auipc	ra,0x0
			f8: R_RISCV_CALL	strcmp
			f8: R_RISCV_RELAX	*ABS*
  fc:	000080e7          	jalr	ra # f8 <.LVL16>

00000100 <.LVL17>:
 100:	e559                	bnez	a0,18e <.L6>
			100: R_RISCV_RVC_BRANCH	.L6

00000102 <.L8>:
 102:	868a                	mv	a3,sp
 104:	460d                	li	a2,3
 106:	086c                	addi	a1,sp,28

00000108 <.L16>:
 108:	8522                	mv	a0,s0
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	at_get_parameters
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.L16+0x2>

00000112 <.LVL18>:
 112:	f555                	bnez	a0,be <.L5>
			112: R_RISCV_RVC_BRANCH	.L5
 114:	55b6                	lw	a1,108(sp)
 116:	00000537          	lui	a0,0x0
			116: R_RISCV_HI20	.LC3
			116: R_RISCV_RELAX	*ABS*

0000011a <.LVL19>:
 11a:	00050513          	mv	a0,a0
			11a: R_RISCV_LO12_I	.LC3
			11a: R_RISCV_RELAX	*ABS*
 11e:	00000097          	auipc	ra,0x0
			11e: R_RISCV_CALL	printf
			11e: R_RISCV_RELAX	*ABS*
 122:	000080e7          	jalr	ra # 11e <.LVL19+0x4>

00000126 <.LVL20>:
 126:	00000537          	lui	a0,0x0
			126: R_RISCV_HI20	.LC4
			126: R_RISCV_RELAX	*ABS*
 12a:	85a6                	mv	a1,s1
 12c:	00050513          	mv	a0,a0
			12c: R_RISCV_LO12_I	.LC4
			12c: R_RISCV_RELAX	*ABS*
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	printf
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL20+0xa>

00000138 <.LVL21>:
 138:	00000537          	lui	a0,0x0
			138: R_RISCV_HI20	.LC5
			138: R_RISCV_RELAX	*ABS*
 13c:	18cc                	addi	a1,sp,116
 13e:	00050513          	mv	a0,a0
			13e: R_RISCV_LO12_I	.LC5
			13e: R_RISCV_RELAX	*ABS*
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	printf
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.LVL21+0xa>

0000014a <.LVL22>:
 14a:	17412583          	lw	a1,372(sp)
 14e:	00000537          	lui	a0,0x0
			14e: R_RISCV_HI20	.LC6
			14e: R_RISCV_RELAX	*ABS*
 152:	00050513          	mv	a0,a0
			152: R_RISCV_LO12_I	.LC6
			152: R_RISCV_RELAX	*ABS*
 156:	00000097          	auipc	ra,0x0
			156: R_RISCV_CALL	printf
			156: R_RISCV_RELAX	*ABS*
 15a:	000080e7          	jalr	ra # 156 <.LVL22+0xc>

0000015e <.LVL23>:
 15e:	17812583          	lw	a1,376(sp)
 162:	00000537          	lui	a0,0x0
			162: R_RISCV_HI20	.LC7
			162: R_RISCV_RELAX	*ABS*
 166:	00050513          	mv	a0,a0
			166: R_RISCV_LO12_I	.LC7
			166: R_RISCV_RELAX	*ABS*
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	printf
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL23+0xc>

00000172 <.LVL24>:
 172:	17c12583          	lw	a1,380(sp)
 176:	00000537          	lui	a0,0x0
			176: R_RISCV_HI20	.LC8
			176: R_RISCV_RELAX	*ABS*
 17a:	00050513          	mv	a0,a0
			17a: R_RISCV_LO12_I	.LC8
			17a: R_RISCV_RELAX	*ABS*
 17e:	00000097          	auipc	ra,0x0
			17e: R_RISCV_CALL	printf
			17e: R_RISCV_RELAX	*ABS*
 182:	000080e7          	jalr	ra # 17e <.LVL24+0xc>

00000186 <.LVL25>:
 186:	10cc                	addi	a1,sp,100
 188:	02b00513          	li	a0,43
 18c:	b705                	j	ac <.L17>
			18c: R_RISCV_RVC_JUMP	.L17

0000018e <.L6>:
 18e:	000005b7          	lui	a1,0x0
			18e: R_RISCV_HI20	.LC2
			18e: R_RISCV_RELAX	*ABS*
 192:	00058593          	mv	a1,a1
			192: R_RISCV_LO12_I	.LC2
			192: R_RISCV_RELAX	*ABS*
 196:	8526                	mv	a0,s1
 198:	00000097          	auipc	ra,0x0
			198: R_RISCV_CALL	strcmp
			198: R_RISCV_RELAX	*ABS*
 19c:	000080e7          	jalr	ra # 198 <.L6+0xa>

000001a0 <.LVL26>:
 1a0:	d12d                	beqz	a0,102 <.L8>
			1a0: R_RISCV_RVC_BRANCH	.L8
 1a2:	000005b7          	lui	a1,0x0
			1a2: R_RISCV_HI20	.LC9
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	00058593          	mv	a1,a1
			1a6: R_RISCV_LO12_I	.LC9
			1a6: R_RISCV_RELAX	*ABS*
 1aa:	8526                	mv	a0,s1
 1ac:	00000097          	auipc	ra,0x0
			1ac: R_RISCV_CALL	strcmp
			1ac: R_RISCV_RELAX	*ABS*
 1b0:	000080e7          	jalr	ra # 1ac <.LVL26+0xc>

000001b4 <.LVL27>:
 1b4:	f509                	bnez	a0,be <.L5>
			1b4: R_RISCV_RVC_BRANCH	.L5
 1b6:	868a                	mv	a3,sp
 1b8:	460d                	li	a2,3
 1ba:	008c                	addi	a1,sp,64
 1bc:	b7b1                	j	108 <.L16>
			1bc: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.close_network_handler:

00000000 <close_network_handler>:
   0:	7129                	addi	sp,sp,-320
   2:	12812c23          	sw	s0,312(sp)
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LANCHOR1
			6: R_RISCV_RELAX	*ABS*
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LC0
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL29>:
  10:	00058593          	mv	a1,a1
			10: R_RISCV_LO12_I	.LANCHOR1
			10: R_RISCV_RELAX	*ABS*
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	.LC0
			14: R_RISCV_RELAX	*ABS*
  18:	12112e23          	sw	ra,316(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	printf
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL29+0xc>

00000024 <.LVL30>:
  24:	11c00613          	li	a2,284
  28:	4581                	li	a1,0
  2a:	0848                	addi	a0,sp,20
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	memset
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL30+0x8>

00000034 <.LVL31>:
  34:	57fd                	li	a5,-1
  36:	ce3e                	sw	a5,28(sp)

00000038 <.LVL32>:
  38:	478d                	li	a5,3
  3a:	00f10423          	sb	a5,8(sp)
  3e:	087c                	addi	a5,sp,28

00000040 <.LVL33>:
  40:	c63e                	sw	a5,12(sp)
  42:	6785                	lui	a5,0x1

00000044 <.LVL34>:
  44:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF159+0xd>
  48:	c83e                	sw	a5,16(sp)

0000004a <.LVL35>:
  4a:	401c                	lw	a5,0(s0)
  4c:	03d00713          	li	a4,61
  50:	0007c683          	lbu	a3,0(a5)
  54:	00e68963          	beq	a3,a4,66 <.L19>
			54: R_RISCV_BRANCH	.L19

00000058 <.L21>:
  58:	4511                	li	a0,4

0000005a <.L20>:
  5a:	13c12083          	lw	ra,316(sp)
  5e:	13812403          	lw	s0,312(sp)

00000062 <.LVL37>:
  62:	6131                	addi	sp,sp,320

00000064 <.LVL38>:
  64:	8082                	ret

00000066 <.L19>:
  66:	0785                	addi	a5,a5,1
  68:	c01c                	sw	a5,0(s0)
  6a:	0054                	addi	a3,sp,4
  6c:	4605                	li	a2,1
  6e:	002c                	addi	a1,sp,8
  70:	8522                	mv	a0,s0
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	at_get_parameters
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.L19+0xc>

0000007a <.LVL40>:
  7a:	fd79                	bnez	a0,58 <.L21>
			7a: R_RISCV_RVC_BRANCH	.L21
  7c:	4792                	lw	a5,4(sp)
  7e:	fcf05de3          	blez	a5,58 <.L21>
			7e: R_RISCV_BRANCH	.L21
  82:	45f2                	lw	a1,28(sp)
  84:	00000537          	lui	a0,0x0
			84: R_RISCV_HI20	.LC10
			84: R_RISCV_RELAX	*ABS*

00000088 <.LVL41>:
  88:	00050513          	mv	a0,a0
			88: R_RISCV_LO12_I	.LC10
			88: R_RISCV_RELAX	*ABS*
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	printf
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LVL41+0x4>

00000094 <.LVL42>:
  94:	084c                	addi	a1,sp,20
  96:	02d00513          	li	a0,45
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	at_callback_do
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL42+0x6>

000000a2 <.LVL43>:
  a2:	bf65                	j	5a <.L20>
			a2: R_RISCV_RVC_JUMP	.L20

Disassembly of section .text.send_data_handler:

00000000 <send_data_handler>:
   0:	710d                	addi	sp,sp,-352
   2:	14812c23          	sw	s0,344(sp)
   6:	000005b7          	lui	a1,0x0
			6: R_RISCV_HI20	.LANCHOR2
			6: R_RISCV_RELAX	*ABS*
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LC11
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL45>:
  10:	00058593          	mv	a1,a1
			10: R_RISCV_LO12_I	.LANCHOR2
			10: R_RISCV_RELAX	*ABS*
  14:	00050513          	mv	a0,a0
			14: R_RISCV_LO12_I	.LC11
			14: R_RISCV_RELAX	*ABS*
  18:	14112e23          	sw	ra,348(sp)
  1c:	14912a23          	sw	s1,340(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	printf
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL45+0x10>

00000028 <.LVL46>:
  28:	11c00613          	li	a2,284
  2c:	4581                	li	a1,0
  2e:	1848                	addi	a0,sp,52
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	memset
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL46+0x8>

00000038 <.LVL47>:
  38:	57fd                	li	a5,-1
  3a:	de3e                	sw	a5,60(sp)

0000003c <.LVL48>:
  3c:	187c                	addi	a5,sp,60

0000003e <.LVL49>:
  3e:	c43e                	sw	a5,8(sp)
  40:	6785                	lui	a5,0x1

00000042 <.LVL50>:
  42:	c0478713          	addi	a4,a5,-1020 # c04 <.LASF159+0xd>
  46:	d0078793          	addi	a5,a5,-768
  4a:	d23e                	sw	a5,36(sp)
  4c:	02bc                	addi	a5,sp,328
  4e:	d63e                	sw	a5,44(sp)
  50:	000007b7          	lui	a5,0x0
			50: R_RISCV_HI20	at_cfg
			50: R_RISCV_RELAX	*ABS*
  54:	0007a583          	lw	a1,0(a5) # 0 <send_data_handler>
			54: R_RISCV_LO12_I	at_cfg
			54: R_RISCV_RELAX	*ABS*
  58:	00000537          	lui	a0,0x0
			58: R_RISCV_HI20	.LC12
			58: R_RISCV_RELAX	*ABS*
  5c:	468d                	li	a3,3
  5e:	0090                	addi	a2,sp,64
  60:	00a4                	addi	s1,sp,72
  62:	00050513          	mv	a0,a0
			62: R_RISCV_LO12_I	.LC12
			62: R_RISCV_RELAX	*ABS*
  66:	00d10223          	sb	a3,4(sp)
  6a:	c63a                	sw	a4,12(sp)
  6c:	00d10823          	sb	a3,16(sp)
  70:	cc3a                	sw	a4,24(sp)
  72:	02d10423          	sb	a3,40(sp)
  76:	d83a                	sw	a4,48(sp)

00000078 <.LVL51>:
  78:	ca32                	sw	a2,20(sp)
  7a:	00010e23          	sb	zero,28(sp)
  7e:	d026                	sw	s1,32(sp)
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	printf
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL51+0x8>

00000088 <.LVL52>:
  88:	401c                	lw	a5,0(s0)
  8a:	03d00713          	li	a4,61
  8e:	0007c683          	lbu	a3,0(a5)
  92:	00e68b63          	beq	a3,a4,a8 <.L24>
			92: R_RISCV_BRANCH	.L24

00000096 <.L31>:
  96:	4511                	li	a0,4

00000098 <.L25>:
  98:	15c12083          	lw	ra,348(sp)
  9c:	15812403          	lw	s0,344(sp)
  a0:	15412483          	lw	s1,340(sp)
  a4:	6135                	addi	sp,sp,352

000000a6 <.LVL54>:
  a6:	8082                	ret

000000a8 <.L24>:
  a8:	0785                	addi	a5,a5,1
  aa:	c01c                	sw	a5,0(s0)
  ac:	868a                	mv	a3,sp
  ae:	4611                	li	a2,4
  b0:	004c                	addi	a1,sp,4
  b2:	8522                	mv	a0,s0
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	at_get_parameters
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.L24+0xc>

000000bc <.LVL56>:
  bc:	fd69                	bnez	a0,96 <.L31>
			bc: R_RISCV_RVC_BRANCH	.L31
  be:	4702                	lw	a4,0(sp)
  c0:	4785                	li	a5,1
  c2:	fce7dae3          	bge	a5,a4,96 <.L31>
			c2: R_RISCV_BRANCH	.L31
  c6:	00000537          	lui	a0,0x0
			c6: R_RISCV_HI20	send_cache
			c6: R_RISCV_RELAX	*ABS*

000000ca <.LVL57>:
  ca:	00050413          	mv	s0,a0
			ca: R_RISCV_LO12_I	send_cache
			ca: R_RISCV_RELAX	*ABS*

000000ce <.LVL58>:
  ce:	4018                	lw	a4,0(s0)
  d0:	eb21                	bnez	a4,120 <.L27>
			d0: R_RISCV_RVC_BRANCH	.L27
  d2:	56f2                	lw	a3,60(sp)
  d4:	4711                	li	a4,4
  d6:	00d74763          	blt	a4,a3,e4 <.L28>
			d6: R_RISCV_BRANCH	.L28
  da:	4706                	lw	a4,64(sp)
  dc:	40400613          	li	a2,1028
  e0:	00e65c63          	bge	a2,a4,f8 <.L29>
			e0: R_RISCV_BRANCH	.L29

000000e4 <.L28>:
  e4:	51800613          	li	a2,1304
  e8:	4581                	li	a1,0
  ea:	00050513          	mv	a0,a0
			ea: R_RISCV_LO12_I	send_cache
			ea: R_RISCV_RELAX	*ABS*
  ee:	00000097          	auipc	ra,0x0
			ee: R_RISCV_CALL	memset
			ee: R_RISCV_RELAX	*ABS*
  f2:	000080e7          	jalr	ra # ee <.L28+0xa>

000000f6 <.LVL59>:
  f6:	b745                	j	96 <.L31>
			f6: R_RISCV_RVC_JUMP	.L31

000000f8 <.L29>:
  f8:	c01c                	sw	a5,0(s0)
  fa:	14812783          	lw	a5,328(sp)
  fe:	00000537          	lui	a0,0x0
			fe: R_RISCV_HI20	send_cache+0x10
			fe: R_RISCV_RELAX	*ABS*+0x10
 102:	10000613          	li	a2,256
 106:	85a6                	mv	a1,s1
 108:	01050513          	addi	a0,a0,16 # 10 <.LVL45>
			108: R_RISCV_LO12_I	send_cache+0x10
			108: R_RISCV_RELAX	*ABS*+0x10
 10c:	c414                	sw	a3,8(s0)
 10e:	c458                	sw	a4,12(s0)
 110:	10f41823          	sh	a5,272(s0)
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	memcpy
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.L29+0x1c>

0000011c <.LVL60>:
 11c:	455d                	li	a0,23
 11e:	bfad                	j	98 <.L25>
			11e: R_RISCV_RVC_JUMP	.L25

00000120 <.L27>:
 120:	441c                	lw	a5,8(s0)
 122:	000005b7          	lui	a1,0x0
			122: R_RISCV_HI20	send_cache+0x10
			122: R_RISCV_RELAX	*ABS*+0x10
 126:	10000613          	li	a2,256
 12a:	de3e                	sw	a5,60(sp)
 12c:	445c                	lw	a5,12(s0)
 12e:	01058593          	addi	a1,a1,16 # 10 <.LVL45>
			12e: R_RISCV_LO12_I	send_cache+0x10
			12e: R_RISCV_RELAX	*ABS*+0x10
 132:	8526                	mv	a0,s1
 134:	c0be                	sw	a5,64(sp)
 136:	000007b7          	lui	a5,0x0
			136: R_RISCV_HI20	send_cache+0x112
			136: R_RISCV_RELAX	*ABS*+0x112
 13a:	11278793          	addi	a5,a5,274 # 112 <.L29+0x1a>
			13a: R_RISCV_LO12_I	send_cache+0x112
			13a: R_RISCV_RELAX	*ABS*+0x112
 13e:	c2be                	sw	a5,68(sp)
 140:	00000097          	auipc	ra,0x0
			140: R_RISCV_CALL	memcpy
			140: R_RISCV_RELAX	*ABS*
 144:	000080e7          	jalr	ra # 140 <.L27+0x20>

00000148 <.LVL61>:
 148:	11045783          	lhu	a5,272(s0)
 14c:	184c                	addi	a1,sp,52
 14e:	03900513          	li	a0,57
 152:	14f12423          	sw	a5,328(sp)
 156:	00000097          	auipc	ra,0x0
			156: R_RISCV_CALL	at_callback_do
			156: R_RISCV_RELAX	*ABS*
 15a:	000080e7          	jalr	ra # 156 <.LVL61+0xe>

0000015e <.LVL62>:
 15e:	bf2d                	j	98 <.L25>
			15e: R_RISCV_RVC_JUMP	.L25

Disassembly of section .text.ap_server_handler:

00000000 <ap_server_handler>:
   0:	710d                	addi	sp,sp,-352

00000002 <.LVL64>:
   2:	009c                	addi	a5,sp,64
   4:	c43e                	sw	a5,8(sp)
   6:	6785                	lui	a5,0x1
   8:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF159+0xd>
   c:	14812c23          	sw	s0,344(sp)
  10:	14112e23          	sw	ra,348(sp)
  14:	1874                	addi	a3,sp,60

00000016 <.LVL65>:
  16:	c63e                	sw	a5,12(sp)
  18:	ca36                	sw	a3,20(sp)
  1a:	cc3e                	sw	a5,24(sp)
  1c:	00d4                	addi	a3,sp,68

0000001e <.LVL66>:
  1e:	d23e                	sw	a5,36(sp)
  20:	d83e                	sw	a5,48(sp)

00000022 <.LVL67>:
  22:	411c                	lw	a5,0(a0)
  24:	440d                	li	s0,3
  26:	d036                	sw	a3,32(sp)
  28:	00b4                	addi	a3,sp,72
  2a:	d636                	sw	a3,44(sp)
  2c:	00810223          	sb	s0,4(sp)
  30:	00810823          	sb	s0,16(sp)
  34:	00810e23          	sb	s0,28(sp)
  38:	02810423          	sb	s0,40(sp)
  3c:	0007c603          	lbu	a2,0(a5)
  40:	03d00693          	li	a3,61
  44:	06d61d63          	bne	a2,a3,be <.L37>
			44: R_RISCV_BRANCH	.L37
  48:	0785                	addi	a5,a5,1
  4a:	c11c                	sw	a5,0(a0)
  4c:	868a                	mv	a3,sp
  4e:	4611                	li	a2,4
  50:	004c                	addi	a1,sp,4
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	at_get_parameters
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL67+0x30>

0000005a <.LVL68>:
  5a:	4791                	li	a5,4
  5c:	e931                	bnez	a0,b0 <.L33>
			5c: R_RISCV_RVC_BRANCH	.L33
  5e:	4702                	lw	a4,0(sp)
  60:	04e05863          	blez	a4,b0 <.L33>
			60: R_RISCV_BRANCH	.L33
  64:	4789                	li	a5,2
  66:	00f70a63          	beq	a4,a5,7a <.L34>
			66: R_RISCV_BRANCH	.L34
  6a:	00870963          	beq	a4,s0,7c <.L35>
			6a: R_RISCV_BRANCH	.L35
  6e:	4785                	li	a5,1
  70:	00f71763          	bne	a4,a5,7e <.L36>
			70: R_RISCV_BRANCH	.L36
  74:	14d00793          	li	a5,333
  78:	de3e                	sw	a5,60(sp)

0000007a <.L34>:
  7a:	c282                	sw	zero,68(sp)

0000007c <.L35>:
  7c:	c482                	sw	zero,72(sp)

0000007e <.L36>:
  7e:	4716                	lw	a4,68(sp)
  80:	46a6                	lw	a3,72(sp)
  82:	4606                	lw	a2,64(sp)
  84:	55f2                	lw	a1,60(sp)
  86:	00000537          	lui	a0,0x0
			86: R_RISCV_HI20	.LC13
			86: R_RISCV_RELAX	*ABS*

0000008a <.LVL69>:
  8a:	00050513          	mv	a0,a0
			8a: R_RISCV_LO12_I	.LC13
			8a: R_RISCV_RELAX	*ABS*
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	printf
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LVL69+0x4>

00000096 <.LVL70>:
  96:	56f2                	lw	a3,60(sp)
  98:	6741                	lui	a4,0x10
  9a:	47a5                	li	a5,9
  9c:	00e6fa63          	bgeu	a3,a4,b0 <.L33>
			9c: R_RISCV_BRANCH	.L33
  a0:	184c                	addi	a1,sp,52
  a2:	03100513          	li	a0,49
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	at_callback_do
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL70+0x10>

000000ae <.LVL71>:
  ae:	87aa                	mv	a5,a0

000000b0 <.L33>:
  b0:	15c12083          	lw	ra,348(sp)
  b4:	15812403          	lw	s0,344(sp)
  b8:	853e                	mv	a0,a5
  ba:	6135                	addi	sp,sp,352

000000bc <.LVL72>:
  bc:	8082                	ret

000000be <.L37>:
  be:	4795                	li	a5,5
  c0:	bfc5                	j	b0 <.L33>
			c0: R_RISCV_RVC_JUMP	.L33

Disassembly of section .text.client_ssl_config_path:

00000000 <client_ssl_config_path>:
   0:	7149                	addi	sp,sp,-368

00000002 <.LVL75>:
   2:	11c00613          	li	a2,284
   6:	4581                	li	a1,0
   8:	17212023          	sw	s2,352(sp)
   c:	892a                	mv	s2,a0
   e:	00c8                	addi	a0,sp,68

00000010 <.LVL76>:
  10:	16112623          	sw	ra,364(sp)
  14:	16812423          	sw	s0,360(sp)
  18:	16912223          	sw	s1,356(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	memset
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL76+0xc>

00000024 <.LVL77>:
  24:	04000513          	li	a0,64
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	pvPortMalloc
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL77+0x4>

00000030 <.LVL78>:
  30:	caaa                	sw	a0,84(sp)
  32:	04000513          	li	a0,64
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	pvPortMalloc
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL78+0x6>

0000003e <.LVL79>:
  3e:	ccaa                	sw	a0,88(sp)
  40:	04000513          	li	a0,64
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	pvPortMalloc
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL79+0x6>

0000004c <.LVL80>:
  4c:	872a                	mv	a4,a0
  4e:	ceaa                	sw	a0,92(sp)
  50:	4556                	lw	a0,84(sp)
  52:	c901                	beqz	a0,62 <.L43>
			52: R_RISCV_RVC_BRANCH	.L43
  54:	46e6                	lw	a3,88(sp)
  56:	c291                	beqz	a3,5a <.L44>
			56: R_RISCV_RVC_BRANCH	.L44
  58:	ef0d                	bnez	a4,92 <.L45>
			58: R_RISCV_RVC_BRANCH	.L45

0000005a <.L44>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	vPortFree
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.L44>

00000062 <.L43>:
  62:	4576                	lw	a0,92(sp)
  64:	c509                	beqz	a0,6e <.L46>
			64: R_RISCV_RVC_BRANCH	.L46
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	vPortFree
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.L43+0x4>

0000006e <.L46>:
  6e:	4566                	lw	a0,88(sp)
  70:	4451                	li	s0,20
  72:	c509                	beqz	a0,7c <.L47>
			72: R_RISCV_RVC_BRANCH	.L47
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	vPortFree
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.L46+0x6>

0000007c <.L47>:
  7c:	8522                	mv	a0,s0
  7e:	16c12083          	lw	ra,364(sp)
  82:	16812403          	lw	s0,360(sp)
  86:	16412483          	lw	s1,356(sp)
  8a:	16012903          	lw	s2,352(sp)

0000008e <.LVL84>:
  8e:	6175                	addi	sp,sp,368

00000090 <.LVL85>:
  90:	8082                	ret

00000092 <.L45>:
  92:	00fc                	addi	a5,sp,76

00000094 <.LVL87>:
  94:	c63e                	sw	a5,12(sp)
  96:	40400793          	li	a5,1028

0000009a <.LVL88>:
  9a:	c83e                	sw	a5,16(sp)
  9c:	089c                	addi	a5,sp,80
  9e:	cc3e                	sw	a5,24(sp)
  a0:	6785                	lui	a5,0x1
  a2:	c0478613          	addi	a2,a5,-1020 # c04 <.LASF159+0xd>
  a6:	ce32                	sw	a2,28(sp)
  a8:	c4078613          	addi	a2,a5,-960
  ac:	84078793          	addi	a5,a5,-1984
  b0:	c0be                	sw	a5,64(sp)
  b2:	00092783          	lw	a5,0(s2)
  b6:	448d                	li	s1,3
  b8:	d83a                	sw	a4,48(sp)
  ba:	00910423          	sb	s1,8(sp)
  be:	00910a23          	sb	s1,20(sp)
  c2:	02010023          	sb	zero,32(sp)
  c6:	d22a                	sw	a0,36(sp)
  c8:	d432                	sw	a2,40(sp)
  ca:	02010623          	sb	zero,44(sp)
  ce:	da32                	sw	a2,52(sp)
  d0:	02010c23          	sb	zero,56(sp)
  d4:	de36                	sw	a3,60(sp)
  d6:	0007c683          	lbu	a3,0(a5)
  da:	03d00713          	li	a4,61
  de:	4415                	li	s0,5
  e0:	f8e69ee3          	bne	a3,a4,7c <.L47>
			e0: R_RISCV_BRANCH	.L47
  e4:	0785                	addi	a5,a5,1
  e6:	00f92023          	sw	a5,0(s2)
  ea:	0054                	addi	a3,sp,4
  ec:	4615                	li	a2,5
  ee:	002c                	addi	a1,sp,8
  f0:	854a                	mv	a0,s2
  f2:	00000097          	auipc	ra,0x0
			f2: R_RISCV_CALL	at_get_parameters
			f2: R_RISCV_RELAX	*ABS*
  f6:	000080e7          	jalr	ra # f2 <.LVL88+0x58>

000000fa <.LVL89>:
  fa:	c119                	beqz	a0,100 <.L48>
			fa: R_RISCV_RVC_BRANCH	.L48

000000fc <.L84>:
  fc:	4411                	li	s0,4
  fe:	bfbd                	j	7c <.L47>
			fe: R_RISCV_RVC_JUMP	.L47

00000100 <.L48>:
 100:	4712                	lw	a4,4(sp)
 102:	4685                	li	a3,1
 104:	fee6dce3          	bge	a3,a4,fc <.L84>
			104: R_RISCV_BRANCH	.L84
 108:	47c6                	lw	a5,80(sp)
 10a:	0ad78363          	beq	a5,a3,1b0 <.L50>
			10a: R_RISCV_BRANCH	.L50
 10e:	02f6c663          	blt	a3,a5,13a <.L51>
			10e: R_RISCV_BRANCH	.L51
 112:	cbcd                	beqz	a5,1c4 <.L52>
			112: R_RISCV_RVC_BRANCH	.L52

00000114 <.L53>:
 114:	4556                	lw	a0,84(sp)
 116:	c509                	beqz	a0,120 <.L59>
			116: R_RISCV_RVC_BRANCH	.L59
 118:	00000097          	auipc	ra,0x0
			118: R_RISCV_CALL	vPortFree
			118: R_RISCV_RELAX	*ABS*
 11c:	000080e7          	jalr	ra # 118 <.L53+0x4>

00000120 <.L59>:
 120:	4576                	lw	a0,92(sp)
 122:	c509                	beqz	a0,12c <.L60>
			122: R_RISCV_RVC_BRANCH	.L60
 124:	00000097          	auipc	ra,0x0
			124: R_RISCV_CALL	vPortFree
			124: R_RISCV_RELAX	*ABS*
 128:	000080e7          	jalr	ra # 124 <.L59+0x4>

0000012c <.L60>:
 12c:	4566                	lw	a0,88(sp)
 12e:	d579                	beqz	a0,fc <.L84>
			12e: R_RISCV_RVC_BRANCH	.L84
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	vPortFree
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.L60+0x4>

00000138 <.LVL95>:
 138:	b7d1                	j	fc <.L84>
			138: R_RISCV_RVC_JUMP	.L84

0000013a <.L51>:
 13a:	4689                	li	a3,2
 13c:	04d78b63          	beq	a5,a3,192 <.L54>
			13c: R_RISCV_BRANCH	.L54
 140:	fc979ae3          	bne	a5,s1,114 <.L53>
			140: R_RISCV_BRANCH	.L53
 144:	4791                	li	a5,4
 146:	fce7d7e3          	bge	a5,a4,114 <.L53>
			146: R_RISCV_BRANCH	.L53

0000014a <.L55>:
 14a:	4656                	lw	a2,84(sp)
 14c:	45c6                	lw	a1,80(sp)
 14e:	e609                	bnez	a2,158 <.L56>
			14e: R_RISCV_RVC_BRANCH	.L56
 150:	00000637          	lui	a2,0x0
			150: R_RISCV_HI20	.LC14
			150: R_RISCV_RELAX	*ABS*
 154:	00060613          	mv	a2,a2
			154: R_RISCV_LO12_I	.LC14
			154: R_RISCV_RELAX	*ABS*

00000158 <.L56>:
 158:	46f6                	lw	a3,92(sp)
 15a:	e689                	bnez	a3,164 <.L57>
			15a: R_RISCV_RVC_BRANCH	.L57
 15c:	000006b7          	lui	a3,0x0
			15c: R_RISCV_HI20	.LC14
			15c: R_RISCV_RELAX	*ABS*
 160:	00068693          	mv	a3,a3
			160: R_RISCV_LO12_I	.LC14
			160: R_RISCV_RELAX	*ABS*

00000164 <.L57>:
 164:	4766                	lw	a4,88(sp)
 166:	e709                	bnez	a4,170 <.L58>
			166: R_RISCV_RVC_BRANCH	.L58
 168:	00000737          	lui	a4,0x0
			168: R_RISCV_HI20	.LC14
			168: R_RISCV_RELAX	*ABS*
 16c:	00070713          	mv	a4,a4
			16c: R_RISCV_LO12_I	.LC14
			16c: R_RISCV_RELAX	*ABS*

00000170 <.L58>:
 170:	00000537          	lui	a0,0x0
			170: R_RISCV_HI20	.LC15
			170: R_RISCV_RELAX	*ABS*
 174:	00050513          	mv	a0,a0
			174: R_RISCV_LO12_I	.LC15
			174: R_RISCV_RELAX	*ABS*
 178:	00000097          	auipc	ra,0x0
			178: R_RISCV_CALL	printf
			178: R_RISCV_RELAX	*ABS*
 17c:	000080e7          	jalr	ra # 178 <.L58+0x8>

00000180 <.LVL98>:
 180:	00cc                	addi	a1,sp,68
 182:	02e00513          	li	a0,46
 186:	00000097          	auipc	ra,0x0
			186: R_RISCV_CALL	at_callback_do
			186: R_RISCV_RELAX	*ABS*
 18a:	000080e7          	jalr	ra # 186 <.LVL98+0x6>

0000018e <.LVL99>:
 18e:	842a                	mv	s0,a0
 190:	b5f5                	j	7c <.L47>
			190: R_RISCV_RVC_JUMP	.L47

00000192 <.L54>:
 192:	f8f701e3          	beq	a4,a5,114 <.L53>
			192: R_RISCV_BRANCH	.L53
 196:	4576                	lw	a0,92(sp)

00000198 <.LVL101>:
 198:	00000097          	auipc	ra,0x0
			198: R_RISCV_CALL	vPortFree
			198: R_RISCV_RELAX	*ABS*
 19c:	000080e7          	jalr	ra # 198 <.LVL101>

000001a0 <.LVL102>:
 1a0:	4566                	lw	a0,88(sp)
 1a2:	00000097          	auipc	ra,0x0
			1a2: R_RISCV_CALL	vPortFree
			1a2: R_RISCV_RELAX	*ABS*
 1a6:	000080e7          	jalr	ra # 1a2 <.LVL102+0x2>

000001aa <.LVL103>:
 1aa:	ce82                	sw	zero,92(sp)
 1ac:	cc82                	sw	zero,88(sp)
 1ae:	bf71                	j	14a <.L55>
			1ae: R_RISCV_RVC_JUMP	.L55

000001b0 <.L50>:
 1b0:	4791                	li	a5,4
 1b2:	f6e7d1e3          	bge	a5,a4,114 <.L53>
			1b2: R_RISCV_BRANCH	.L53
 1b6:	4556                	lw	a0,84(sp)

000001b8 <.LVL105>:
 1b8:	00000097          	auipc	ra,0x0
			1b8: R_RISCV_CALL	vPortFree
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	000080e7          	jalr	ra # 1b8 <.LVL105>

000001c0 <.L83>:
 1c0:	ca82                	sw	zero,84(sp)
 1c2:	b761                	j	14a <.L55>
			1c2: R_RISCV_RVC_JUMP	.L55

000001c4 <.L52>:
 1c4:	4576                	lw	a0,92(sp)

000001c6 <.LVL108>:
 1c6:	00000097          	auipc	ra,0x0
			1c6: R_RISCV_CALL	vPortFree
			1c6: R_RISCV_RELAX	*ABS*
 1ca:	000080e7          	jalr	ra # 1c6 <.LVL108>

000001ce <.LVL109>:
 1ce:	4566                	lw	a0,88(sp)
 1d0:	00000097          	auipc	ra,0x0
			1d0: R_RISCV_CALL	vPortFree
			1d0: R_RISCV_RELAX	*ABS*
 1d4:	000080e7          	jalr	ra # 1d0 <.LVL109+0x2>

000001d8 <.LVL110>:
 1d8:	4556                	lw	a0,84(sp)
 1da:	00000097          	auipc	ra,0x0
			1da: R_RISCV_CALL	vPortFree
			1da: R_RISCV_RELAX	*ABS*
 1de:	000080e7          	jalr	ra # 1da <.LVL110+0x2>

000001e2 <.LVL111>:
 1e2:	ce82                	sw	zero,92(sp)
 1e4:	cc82                	sw	zero,88(sp)
 1e6:	bfe9                	j	1c0 <.L83>
			1e6: R_RISCV_RVC_JUMP	.L83

Disassembly of section .text.client_ssl_set_sni:

00000000 <client_ssl_set_sni>:
   0:	710d                	addi	sp,sp,-352

00000002 <.LVL113>:
   2:	14912a23          	sw	s1,340(sp)
   6:	11c00613          	li	a2,284
   a:	84aa                	mv	s1,a0
   c:	4581                	li	a1,0
   e:	1848                	addi	a0,sp,52

00000010 <.LVL114>:
  10:	14812c23          	sw	s0,344(sp)
  14:	14112e23          	sw	ra,348(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	memset
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL114+0x8>

00000020 <.LVL115>:
  20:	478d                	li	a5,3
  22:	00f10e23          	sb	a5,28(sp)
  26:	187c                	addi	a5,sp,60

00000028 <.LVL116>:
  28:	d03e                	sw	a5,32(sp)
  2a:	40400793          	li	a5,1028

0000002e <.LVL117>:
  2e:	d23e                	sw	a5,36(sp)
  30:	6785                	lui	a5,0x1
  32:	d0078793          	addi	a5,a5,-768 # d00 <.LASF201+0x12>
  36:	d83e                	sw	a5,48(sp)
  38:	409c                	lw	a5,0(s1)
  3a:	0080                	addi	s0,sp,64
  3c:	02010423          	sb	zero,40(sp)
  40:	d622                	sw	s0,44(sp)
  42:	0007c683          	lbu	a3,0(a5)
  46:	03d00713          	li	a4,61
  4a:	06e69563          	bne	a3,a4,b4 <.L87>
			4a: R_RISCV_BRANCH	.L87
  4e:	0785                	addi	a5,a5,1
  50:	c09c                	sw	a5,0(s1)
  52:	0834                	addi	a3,sp,24
  54:	4609                	li	a2,2
  56:	086c                	addi	a1,sp,28
  58:	8526                	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	at_get_parameters
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL117+0x2c>

00000062 <.LVL118>:
  62:	4791                	li	a5,4
  64:	ed1d                	bnez	a0,a2 <.L86>
			64: R_RISCV_RVC_BRANCH	.L86
  66:	46e2                	lw	a3,24(sp)
  68:	4705                	li	a4,1
  6a:	02d75c63          	bge	a4,a3,a2 <.L86>
			6a: R_RISCV_BRANCH	.L86
  6e:	55f2                	lw	a1,60(sp)
  70:	8522                	mv	a0,s0

00000072 <.LVL119>:
  72:	c62e                	sw	a1,12(sp)
  74:	00000097          	auipc	ra,0x0
			74: R_RISCV_CALL	strlen
			74: R_RISCV_RELAX	*ABS*
  78:	000080e7          	jalr	ra # 74 <.LVL119+0x2>

0000007c <.LVL120>:
  7c:	45b2                	lw	a1,12(sp)
  7e:	86aa                	mv	a3,a0
  80:	00000537          	lui	a0,0x0
			80: R_RISCV_HI20	.LC16
			80: R_RISCV_RELAX	*ABS*
  84:	8622                	mv	a2,s0
  86:	00050513          	mv	a0,a0
			86: R_RISCV_LO12_I	.LC16
			86: R_RISCV_RELAX	*ABS*
  8a:	00000097          	auipc	ra,0x0
			8a: R_RISCV_CALL	printf
			8a: R_RISCV_RELAX	*ABS*
  8e:	000080e7          	jalr	ra # 8a <.LVL120+0xe>

00000092 <.LVL121>:
  92:	184c                	addi	a1,sp,52
  94:	02f00513          	li	a0,47
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	at_callback_do
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL121+0x6>

000000a0 <.LVL122>:
  a0:	87aa                	mv	a5,a0

000000a2 <.L86>:
  a2:	15c12083          	lw	ra,348(sp)
  a6:	15812403          	lw	s0,344(sp)
  aa:	15412483          	lw	s1,340(sp)

000000ae <.LVL123>:
  ae:	853e                	mv	a0,a5
  b0:	6135                	addi	sp,sp,352

000000b2 <.LVL124>:
  b2:	8082                	ret

000000b4 <.L87>:
  b4:	4795                	li	a5,5
  b6:	b7f5                	j	a2 <.L86>
			b6: R_RISCV_RVC_JUMP	.L86

Disassembly of section .text.client_ssl_set_alpn:

00000000 <client_ssl_set_alpn>:
   0:	710d                	addi	sp,sp,-352

00000002 <.LVL127>:
   2:	14912a23          	sw	s1,340(sp)
   6:	11c00613          	li	a2,284
   a:	84aa                	mv	s1,a0
   c:	4581                	li	a1,0
   e:	1048                	addi	a0,sp,36

00000010 <.LVL128>:
  10:	14112e23          	sw	ra,348(sp)
  14:	14812c23          	sw	s0,344(sp)
  18:	15212823          	sw	s2,336(sp)
  1c:	15312623          	sw	s3,332(sp)
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	memset
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL128+0x10>

00000028 <.LVL129>:
  28:	478d                	li	a5,3
  2a:	00f10c23          	sb	a5,24(sp)
  2e:	107c                	addi	a5,sp,44

00000030 <.LVL130>:
  30:	ce3e                	sw	a5,28(sp)
  32:	6785                	lui	a5,0x1

00000034 <.LVL131>:
  34:	c0478793          	addi	a5,a5,-1020 # c04 <.LASF159+0xd>
  38:	d03e                	sw	a5,32(sp)
  3a:	409c                	lw	a5,0(s1)
  3c:	03d00713          	li	a4,61
  40:	0007c683          	lbu	a3,0(a5)
  44:	18e69063          	bne	a3,a4,1c4 <.L105>
			44: R_RISCV_BRANCH	.L105

00000048 <.LBB2>:
  48:	0785                	addi	a5,a5,1
  4a:	c09c                	sw	a5,0(s1)
  4c:	0854                	addi	a3,sp,20
  4e:	4605                	li	a2,1
  50:	082c                	addi	a1,sp,24
  52:	8526                	mv	a0,s1
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	at_get_parameters
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LBB2+0xc>

0000005c <.LVL133>:
  5c:	4791                	li	a5,4
  5e:	e539                	bnez	a0,ac <.L92>
			5e: R_RISCV_RVC_BRANCH	.L92
  60:	4752                	lw	a4,20(sp)
  62:	04e05563          	blez	a4,ac <.L92>
			62: R_RISCV_BRANCH	.L92
  66:	409c                	lw	a5,0(s1)

00000068 <.LVL134>:
  68:	46b5                	li	a3,13
  6a:	0007c703          	lbu	a4,0(a5)
  6e:	04d70c63          	beq	a4,a3,c6 <.L93>
			6e: R_RISCV_BRANCH	.L93
  72:	46a9                	li	a3,10
  74:	4401                	li	s0,0
  76:	04d70863          	beq	a4,a3,c6 <.L93>
			76: R_RISCV_BRANCH	.L93
  7a:	4635                	li	a2,13
  7c:	02c00593          	li	a1,44

00000080 <.L94>:
  80:	0007c703          	lbu	a4,0(a5)
  84:	06c71363          	bne	a4,a2,ea <.L96>
			84: R_RISCV_BRANCH	.L96

00000088 <.L99>:
  88:	00078023          	sb	zero,0(a5)
  8c:	4088                	lw	a0,0(s1)

0000008e <.LVL136>:
  8e:	0409                	addi	s0,s0,2

00000090 <.LVL137>:
  90:	040a                	slli	s0,s0,0x2

00000092 <.LVL138>:
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	strlen
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL138>

0000009a <.LVL139>:
  9a:	0505                	addi	a0,a0,1
  9c:	9522                	add	a0,a0,s0
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	pvPortMalloc
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LVL139+0x4>

000000a6 <.LVL140>:
  a6:	d82a                	sw	a0,48(sp)
  a8:	47d1                	li	a5,20
  aa:	e539                	bnez	a0,f8 <.L112>
			aa: R_RISCV_RVC_BRANCH	.L112

000000ac <.L92>:
  ac:	15c12083          	lw	ra,348(sp)
  b0:	15812403          	lw	s0,344(sp)
  b4:	15412483          	lw	s1,340(sp)

000000b8 <.LVL141>:
  b8:	15012903          	lw	s2,336(sp)
  bc:	14c12983          	lw	s3,332(sp)
  c0:	853e                	mv	a0,a5
  c2:	6135                	addi	sp,sp,352

000000c4 <.LVL142>:
  c4:	8082                	ret

000000c6 <.L93>:
  c6:	00000537          	lui	a0,0x0
			c6: R_RISCV_HI20	.LC17
			c6: R_RISCV_RELAX	*ABS*

000000ca <.LVL144>:
  ca:	00050513          	mv	a0,a0
			ca: R_RISCV_LO12_I	.LC17
			ca: R_RISCV_RELAX	*ABS*
  ce:	d802                	sw	zero,48(sp)
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	printf
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL144+0x6>

000000d8 <.L114>:
  d8:	104c                	addi	a1,sp,36
  da:	03000513          	li	a0,48
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	at_callback_do
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.L114+0x6>

000000e6 <.LVL146>:
  e6:	87aa                	mv	a5,a0
  e8:	b7d1                	j	ac <.L92>
			e8: R_RISCV_RVC_JUMP	.L92

000000ea <.L96>:
  ea:	f8d70fe3          	beq	a4,a3,88 <.L99>
			ea: R_RISCV_BRANCH	.L99
  ee:	00b71363          	bne	a4,a1,f4 <.L95>
			ee: R_RISCV_BRANCH	.L95
  f2:	0405                	addi	s0,s0,1

000000f4 <.L95>:
  f4:	0785                	addi	a5,a5,1
  f6:	b769                	j	80 <.L94>
			f6: R_RISCV_RVC_JUMP	.L94

000000f8 <.L112>:
  f8:	9522                	add	a0,a0,s0
  fa:	fe052e23          	sw	zero,-4(a0) # fffffffc <.LASF333+0xffffea53>
  fe:	408c                	lw	a1,0(s1)
 100:	5542                	lw	a0,48(sp)
 102:	c42e                	sw	a1,8(sp)
 104:	942a                	add	s0,s0,a0

00000106 <.LVL151>:
 106:	852e                	mv	a0,a1
 108:	00000097          	auipc	ra,0x0
			108: R_RISCV_CALL	strlen
			108: R_RISCV_RELAX	*ABS*
 10c:	000080e7          	jalr	ra # 108 <.LVL151+0x2>

00000110 <.LVL152>:
 110:	45a2                	lw	a1,8(sp)
 112:	00150613          	addi	a2,a0,1
 116:	8522                	mv	a0,s0
 118:	00000097          	auipc	ra,0x0
			118: R_RISCV_CALL	memcpy
			118: R_RISCV_RELAX	*ABS*
 11c:	000080e7          	jalr	ra # 118 <.LVL152+0x8>

00000120 <.LVL153>:
 120:	57c2                	lw	a5,48(sp)
 122:	00140513          	addi	a0,s0,1

00000126 <.LBB3>:
 126:	02c00693          	li	a3,44

0000012a <.LBE3>:
 12a:	c380                	sw	s0,0(a5)

0000012c <.LBB6>:
 12c:	4785                	li	a5,1

0000012e <.L102>:
 12e:	fff54703          	lbu	a4,-1(a0)

00000132 <.LVL156>:
 132:	cf09                	beqz	a4,14c <.L110>
			132: R_RISCV_RVC_BRANCH	.L110
 134:	00d71a63          	bne	a4,a3,148 <.L101>
			134: R_RISCV_BRANCH	.L101
 138:	fe050fa3          	sb	zero,-1(a0)

0000013c <.LVL157>:
 13c:	5742                	lw	a4,48(sp)

0000013e <.LVL158>:
 13e:	00279613          	slli	a2,a5,0x2
 142:	0785                	addi	a5,a5,1

00000144 <.LVL159>:
 144:	9732                	add	a4,a4,a2
 146:	c308                	sw	a0,0(a4)

00000148 <.L101>:
 148:	0505                	addi	a0,a0,1

0000014a <.LBE5>:
 14a:	b7d5                	j	12e <.L102>
			14a: R_RISCV_RVC_JUMP	.L102

0000014c <.L110>:
 14c:	4401                	li	s0,0

0000014e <.LBB8>:
 14e:	000009b7          	lui	s3,0x0
			14e: R_RISCV_HI20	.LC18
			14e: R_RISCV_RELAX	*ABS*

00000152 <.L100>:
 152:	5742                	lw	a4,48(sp)
 154:	00241793          	slli	a5,s0,0x2
 158:	97ba                	add	a5,a5,a4
 15a:	0007a903          	lw	s2,0(a5)

0000015e <.LVL165>:
 15e:	02090e63          	beqz	s2,19a <.L103>
			15e: R_RISCV_BRANCH	.L103
 162:	864a                	mv	a2,s2
 164:	85a2                	mv	a1,s0
 166:	00098513          	mv	a0,s3
			166: R_RISCV_LO12_I	.LC18
			166: R_RISCV_RELAX	*ABS*
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	printf
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL165+0xc>

00000172 <.LVL166>:
 172:	00094783          	lbu	a5,0(s2)
 176:	e385                	bnez	a5,196 <.L104>
			176: R_RISCV_RVC_BRANCH	.L104
 178:	00000537          	lui	a0,0x0
			178: R_RISCV_HI20	.LC19
			178: R_RISCV_RELAX	*ABS*
 17c:	00050513          	mv	a0,a0
			17c: R_RISCV_LO12_I	.LC19
			17c: R_RISCV_RELAX	*ABS*
 180:	00000097          	auipc	ra,0x0
			180: R_RISCV_CALL	printf
			180: R_RISCV_RELAX	*ABS*
 184:	000080e7          	jalr	ra # 180 <.LVL166+0xe>

00000188 <.LVL167>:
 188:	5542                	lw	a0,48(sp)
 18a:	00000097          	auipc	ra,0x0
			18a: R_RISCV_CALL	vPortFree
			18a: R_RISCV_RELAX	*ABS*
 18e:	000080e7          	jalr	ra # 18a <.LVL167+0x2>

00000192 <.LVL168>:
 192:	4791                	li	a5,4
 194:	bf21                	j	ac <.L92>
			194: R_RISCV_RVC_JUMP	.L92

00000196 <.L104>:
 196:	0405                	addi	s0,s0,1
 198:	bf6d                	j	152 <.L100>
			198: R_RISCV_RVC_JUMP	.L100

0000019a <.L103>:
 19a:	4090                	lw	a2,0(s1)
 19c:	55b2                	lw	a1,44(sp)
 19e:	8532                	mv	a0,a2
 1a0:	c62e                	sw	a1,12(sp)
 1a2:	c432                	sw	a2,8(sp)
 1a4:	00000097          	auipc	ra,0x0
			1a4: R_RISCV_CALL	strlen
			1a4: R_RISCV_RELAX	*ABS*
 1a8:	000080e7          	jalr	ra # 1a4 <.L103+0xa>

000001ac <.LVL170>:
 1ac:	4622                	lw	a2,8(sp)
 1ae:	45b2                	lw	a1,12(sp)
 1b0:	86aa                	mv	a3,a0
 1b2:	00000537          	lui	a0,0x0
			1b2: R_RISCV_HI20	.LC20
			1b2: R_RISCV_RELAX	*ABS*
 1b6:	00050513          	mv	a0,a0
			1b6: R_RISCV_LO12_I	.LC20
			1b6: R_RISCV_RELAX	*ABS*
 1ba:	00000097          	auipc	ra,0x0
			1ba: R_RISCV_CALL	printf
			1ba: R_RISCV_RELAX	*ABS*
 1be:	000080e7          	jalr	ra # 1ba <.LVL170+0xe>

000001c2 <.LVL171>:
 1c2:	bf19                	j	d8 <.L114>
			1c2: R_RISCV_RVC_JUMP	.L114

000001c4 <.L105>:
 1c4:	4795                	li	a5,5
 1c6:	b5dd                	j	ac <.L92>
			1c6: R_RISCV_RVC_JUMP	.L92
