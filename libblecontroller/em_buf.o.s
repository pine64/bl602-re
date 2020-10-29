
libblecontroller/em_buf.o:     file format elf32-littleriscv


Disassembly of section .text.em_buf_init:

00000000 <em_buf_init>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	em_buf_env
			4: R_RISCV_RELAX	*ABS*
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	ca56                	sw	s5,20(sp)
  14:	c85a                	sw	s6,16(sp)
  16:	c65e                	sw	s7,12(sp)
  18:	00090413          	mv	s0,s2
			18: R_RISCV_LO12_I	em_buf_env
			18: R_RISCV_RELAX	*ABS*
  1c:	00090513          	mv	a0,s2
			1c: R_RISCV_LO12_I	em_buf_env
			1c: R_RISCV_RELAX	*ABS*
  20:	14040e23          	sb	zero,348(s0)
  24:	000009b7          	lui	s3,0x0
			24: R_RISCV_HI20	em_buf_env+0x8
			24: R_RISCV_RELAX	*ABS*+0x8
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	ble_co_list_init
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <em_buf_init+0x28>

00000030 <.LVL0>:
  30:	00898513          	addi	a0,s3,8 # 8 <em_buf_init+0x8>
			30: R_RISCV_LO12_I	em_buf_env+0x8
			30: R_RISCV_RELAX	*ABS*+0x8
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	ble_co_list_init
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL0+0x4>

0000003c <.LVL1>:
  3c:	280087b7          	lui	a5,0x28008
  40:	2ca78713          	addi	a4,a5,714 # 280082ca <.LASF24+0x28007c56>
  44:	14e42c23          	sw	a4,344(s0)

00000048 <.LVL2>:
  48:	00090a93          	mv	s5,s2
			48: R_RISCV_LO12_I	em_buf_env
			48: R_RISCV_RELAX	*ABS*
  4c:	00090693          	mv	a3,s2
			4c: R_RISCV_LO12_I	em_buf_env
			4c: R_RISCV_RELAX	*ABS*
  50:	2ce78793          	addi	a5,a5,718
  54:	4481                	li	s1,0
  56:	00090a13          	mv	s4,s2
			56: R_RISCV_LO12_I	em_buf_env
			56: R_RISCV_RELAX	*ABS*
  5a:	02600513          	li	a0,38

0000005e <.LBB70>:
  5e:	75e1                	lui	a1,0xffff8

00000060 <.LBE70>:
  60:	4619                	li	a2,6

00000062 <.L2>:
  62:	01049713          	slli	a4,s1,0x10
  66:	8341                	srli	a4,a4,0x10
  68:	00e69a23          	sh	a4,20(a3)
  6c:	02a70733          	mul	a4,a4,a0
  70:	0485                	addi	s1,s1,1

00000072 <.LVL4>:
  72:	06b1                	addi	a3,a3,12
  74:	07a9                	addi	a5,a5,10
  76:	43e70713          	addi	a4,a4,1086
  7a:	0742                	slli	a4,a4,0x10
  7c:	8341                	srli	a4,a4,0x10

0000007e <.LBB73>:
  7e:	fee79b23          	sh	a4,-10(a5)

00000082 <.LBB75>:
  82:	fe079d23          	sh	zero,-6(a5)

00000086 <.LBB77>:
  86:	fe079c23          	sh	zero,-8(a5)

0000008a <.LBB79>:
  8a:	ff47d703          	lhu	a4,-12(a5)
  8e:	0742                	slli	a4,a4,0x10
  90:	8341                	srli	a4,a4,0x10
  92:	fdf77713          	andi	a4,a4,-33
  96:	0742                	slli	a4,a4,0x10
  98:	8341                	srli	a4,a4,0x10
  9a:	fee79a23          	sh	a4,-12(a5)

0000009e <.LBB81>:
  9e:	ff47d703          	lhu	a4,-12(a5)
  a2:	0742                	slli	a4,a4,0x10
  a4:	8341                	srli	a4,a4,0x10
  a6:	fdf77713          	andi	a4,a4,-33
  aa:	0742                	slli	a4,a4,0x10
  ac:	8341                	srli	a4,a4,0x10
  ae:	fee79a23          	sh	a4,-12(a5)

000000b2 <.LBB83>:
  b2:	feb79923          	sh	a1,-14(a5)

000000b6 <.LBE83>:
  b6:	fac496e3          	bne	s1,a2,62 <.L2>
			b6: R_RISCV_BRANCH	.L2
  ba:	28008437          	lui	s0,0x28008
  be:	30a40413          	addi	s0,s0,778 # 2800830a <.LASF24+0x28007c96>

000000c2 <.LBB84>:
  c2:	7be1                	lui	s7,0xffff8

000000c4 <.LBE84>:
  c4:	4b69                	li	s6,26

000000c6 <.L3>:
  c6:	049a9e23          	sh	s1,92(s5)

000000ca <.LBB87>:
  ca:	00041023          	sh	zero,0(s0)

000000ce <.LBB89>:
  ce:	00041223          	sh	zero,4(s0)

000000d2 <.LBB91>:
  d2:	00041123          	sh	zero,2(s0)

000000d6 <.LBB93>:
  d6:	ffe45783          	lhu	a5,-2(s0)

000000da <.LBE93>:
  da:	058a8593          	addi	a1,s5,88
  de:	00090513          	mv	a0,s2
			de: R_RISCV_LO12_I	em_buf_env
			de: R_RISCV_RELAX	*ABS*

000000e2 <.LBB96>:
  e2:	07c2                	slli	a5,a5,0x10
  e4:	83c1                	srli	a5,a5,0x10
  e6:	fdf7f793          	andi	a5,a5,-33
  ea:	07c2                	slli	a5,a5,0x10
  ec:	83c1                	srli	a5,a5,0x10
  ee:	fef41f23          	sh	a5,-2(s0)

000000f2 <.LBB97>:
  f2:	ffe45783          	lhu	a5,-2(s0)

000000f6 <.LBE97>:
  f6:	0485                	addi	s1,s1,1

000000f8 <.LVL17>:
  f8:	0ab1                	addi	s5,s5,12

000000fa <.LBB100>:
  fa:	07c2                	slli	a5,a5,0x10
  fc:	83c1                	srli	a5,a5,0x10
  fe:	fdf7f793          	andi	a5,a5,-33
 102:	07c2                	slli	a5,a5,0x10
 104:	83c1                	srli	a5,a5,0x10
 106:	fef41f23          	sh	a5,-2(s0)

0000010a <.LBB101>:
 10a:	ff741e23          	sh	s7,-4(s0)

0000010e <.LBE101>:
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	ble_co_list_push_back
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.LBE101>

00000116 <.LVL20>:
 116:	0429                	addi	s0,s0,10
 118:	fb6497e3          	bne	s1,s6,c6 <.L3>
			118: R_RISCV_BRANCH	.L3

0000011c <.LVL21>:
 11c:	000005b7          	lui	a1,0x0
			11c: R_RISCV_HI20	em_buf_env+0x148
			11c: R_RISCV_RELAX	*ABS*+0x148
 120:	052207b7          	lui	a5,0x5220
 124:	14858593          	addi	a1,a1,328 # 148 <.LVL22+0x10>
			124: R_RISCV_LO12_I	em_buf_env+0x148
			124: R_RISCV_RELAX	*ABS*+0x148
 128:	00898513          	addi	a0,s3,8
			128: R_RISCV_LO12_I	em_buf_env+0x8
			128: R_RISCV_RELAX	*ABS*+0x8
 12c:	14fa2623          	sw	a5,332(s4)
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	ble_co_list_push_back
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL21+0x14>

00000138 <.LVL22>:
 138:	062607b7          	lui	a5,0x6260
 13c:	000005b7          	lui	a1,0x0
			13c: R_RISCV_HI20	em_buf_env+0x150
			13c: R_RISCV_RELAX	*ABS*+0x150
 140:	0785                	addi	a5,a5,1
 142:	15058593          	addi	a1,a1,336 # 150 <.LVL22+0x18>
			142: R_RISCV_LO12_I	em_buf_env+0x150
			142: R_RISCV_RELAX	*ABS*+0x150
 146:	00898513          	addi	a0,s3,8
			146: R_RISCV_LO12_I	em_buf_env+0x8
			146: R_RISCV_RELAX	*ABS*+0x8
 14a:	14fa2a23          	sw	a5,340(s4)
 14e:	00000097          	auipc	ra,0x0
			14e: R_RISCV_CALL	ble_co_list_push_back
			14e: R_RISCV_RELAX	*ABS*
 152:	000080e7          	jalr	ra # 14e <.LVL22+0x16>

00000156 <.LVL23>:
 156:	280087b7          	lui	a5,0x28008
 15a:	3d678793          	addi	a5,a5,982 # 280083d6 <.LASF24+0x28007d62>
 15e:	4681                	li	a3,0
 160:	10400513          	li	a0,260

00000164 <.LBB102>:
 164:	45b9                	li	a1,14

00000166 <.LBE102>:
 166:	4621                	li	a2,8

00000168 <.L4>:
 168:	0685                	addi	a3,a3,1

0000016a <.LBE103>:
 16a:	02a68733          	mul	a4,a3,a0
 16e:	07b9                	addi	a5,a5,14
 170:	62670713          	addi	a4,a4,1574
 174:	0742                	slli	a4,a4,0x10
 176:	8341                	srli	a4,a4,0x10

00000178 <.LBB106>:
 178:	fee79923          	sh	a4,-14(a5)

0000017c <.LBB108>:
 17c:	0076f713          	andi	a4,a3,7

00000180 <.LBE108>:
 180:	02b70733          	mul	a4,a4,a1

00000184 <.LVL29>:
 184:	3ce70713          	addi	a4,a4,974

00000188 <.LBB109>:
 188:	fee79523          	sh	a4,-22(a5)

0000018c <.LBB111>:
 18c:	fe079b23          	sh	zero,-10(a5)

00000190 <.LBB113>:
 190:	fee7d703          	lhu	a4,-18(a5)
 194:	0742                	slli	a4,a4,0x10
 196:	8341                	srli	a4,a4,0x10
 198:	fdf77713          	andi	a4,a4,-33
 19c:	0742                	slli	a4,a4,0x10
 19e:	8341                	srli	a4,a4,0x10
 1a0:	fee79723          	sh	a4,-18(a5)

000001a4 <.LBB115>:
 1a4:	fee7d703          	lhu	a4,-18(a5)
 1a8:	0742                	slli	a4,a4,0x10
 1aa:	8341                	srli	a4,a4,0x10
 1ac:	fdf77713          	andi	a4,a4,-33
 1b0:	0742                	slli	a4,a4,0x10
 1b2:	8341                	srli	a4,a4,0x10
 1b4:	fee79723          	sh	a4,-18(a5)

000001b8 <.LBE115>:
 1b8:	fac698e3          	bne	a3,a2,168 <.L4>
			1b8: R_RISCV_BRANCH	.L4
 1bc:	28008737          	lui	a4,0x28008

000001c0 <.LBB118>:
 1c0:	7671                	lui	a2,0xffffc

000001c2 <.LBE118>:
 1c2:	09e70793          	addi	a5,a4,158 # 2800809e <.LASF24+0x28007a2a>

000001c6 <.LBB122>:
 1c6:	167d                	addi	a2,a2,-1

000001c8 <.LBE122>:
 1c8:	20e70693          	addi	a3,a4,526

000001cc <.L5>:
 1cc:	0007d703          	lhu	a4,0(a5)
 1d0:	05c78793          	addi	a5,a5,92
 1d4:	8f71                	and	a4,a4,a2
 1d6:	fae79223          	sh	a4,-92(a5)

000001da <.LBB124>:
 1da:	fb67d703          	lhu	a4,-74(a5)
 1de:	0742                	slli	a4,a4,0x10
 1e0:	8341                	srli	a4,a4,0x10
 1e2:	cff77713          	andi	a4,a4,-769
 1e6:	0742                	slli	a4,a4,0x10
 1e8:	8341                	srli	a4,a4,0x10
 1ea:	fae79b23          	sh	a4,-74(a5)

000001ee <.LBB126>:
 1ee:	fe079723          	sh	zero,-18(a5)

000001f2 <.LBE126>:
 1f2:	fcd79de3          	bne	a5,a3,1cc <.L5>
			1f2: R_RISCV_BRANCH	.L5
 1f6:	50b2                	lw	ra,44(sp)
 1f8:	5422                	lw	s0,40(sp)
 1fa:	5492                	lw	s1,36(sp)
 1fc:	5902                	lw	s2,32(sp)
 1fe:	49f2                	lw	s3,28(sp)
 200:	4a62                	lw	s4,24(sp)
 202:	4ad2                	lw	s5,20(sp)
 204:	4b42                	lw	s6,16(sp)
 206:	4bb2                	lw	s7,12(sp)
 208:	6145                	addi	sp,sp,48
 20a:	8082                	ret

Disassembly of section .text.em_buf_rx_free:

00000000 <em_buf_rx_free>:
   0:	47b9                	li	a5,14
   2:	02f50533          	mul	a0,a0,a5

00000006 <.LVL40>:
   6:	280087b7          	lui	a5,0x28008
   a:	3ce78793          	addi	a5,a5,974 # 280083ce <.LASF24+0x28007d5a>
   e:	953e                	add	a0,a0,a5
  10:	00055783          	lhu	a5,0(a0)
  14:	07c6                	slli	a5,a5,0x11
  16:	83c5                	srli	a5,a5,0x11
  18:	00f51023          	sh	a5,0(a0)

0000001c <.LBE128>:
  1c:	8082                	ret

Disassembly of section .text.em_buf_rx_buff_addr_get:

00000000 <em_buf_rx_buff_addr_get>:
   0:	47b9                	li	a5,14
   2:	02f507b3          	mul	a5,a0,a5
   6:	28008737          	lui	a4,0x28008
   a:	3d670513          	addi	a0,a4,982 # 280083d6 <.LASF24+0x28007d62>

0000000e <.LVL43>:
   e:	97aa                	add	a5,a5,a0
  10:	0007d503          	lhu	a0,0(a5)

00000014 <.LBE130>:
  14:	953a                	add	a0,a0,a4
  16:	8082                	ret

Disassembly of section .text.em_buf_tx_buff_addr_get:

00000000 <em_buf_tx_buff_addr_get>:
   0:	00455503          	lhu	a0,4(a0)

00000004 <.LVL45>:
   4:	280087b7          	lui	a5,0x28008
   8:	953e                	add	a0,a0,a5
   a:	8082                	ret

Disassembly of section .text.em_buf_tx_free:

00000000 <em_buf_tx_free>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)

00000004 <.LVL47>:
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	00455783          	lhu	a5,4(a0)

00000010 <.LBB136>:
  10:	4729                	li	a4,10

00000012 <.LBE136>:
  12:	842a                	mv	s0,a0

00000014 <.LBB137>:
  14:	02e787b3          	mul	a5,a5,a4
  18:	28008737          	lui	a4,0x28008
  1c:	2d270713          	addi	a4,a4,722 # 280082d2 <.LASF24+0x28007c5e>
  20:	97ba                	add	a5,a5,a4
  22:	0007d583          	lhu	a1,0(a5) # 28008000 <.LASF24+0x2800798c>
  26:	05c2                	slli	a1,a1,0x10
  28:	81c1                	srli	a1,a1,0x10

0000002a <.LBB138>:
  2a:	300024f3          	csrr	s1,mstatus

0000002e <.LBB140>:
  2e:	300477f3          	csrrci	a5,mstatus,8

00000032 <.LBE140>:
  32:	01059793          	slli	a5,a1,0x10
  36:	87c1                	srai	a5,a5,0x10
  38:	000009b7          	lui	s3,0x0
			38: R_RISCV_HI20	em_buf_env
			38: R_RISCV_RELAX	*ABS*

0000003c <.LBE138>:
  3c:	4901                	li	s2,0

0000003e <.LBB163>:
  3e:	0207d363          	bgez	a5,64 <.L15>
			3e: R_RISCV_BRANCH	.L15

00000042 <.LBB141>:
  42:	0ff5f593          	andi	a1,a1,255

00000046 <.LVL52>:
  46:	02958593          	addi	a1,a1,41
  4a:	00098793          	mv	a5,s3
			4a: R_RISCV_LO12_I	em_buf_env
			4a: R_RISCV_RELAX	*ABS*
  4e:	058e                	slli	a1,a1,0x3
  50:	00000537          	lui	a0,0x0
			50: R_RISCV_HI20	em_buf_env+0x8
			50: R_RISCV_RELAX	*ABS*+0x8

00000054 <.LVL53>:
  54:	95be                	add	a1,a1,a5
  56:	00850513          	addi	a0,a0,8 # 8 <.LVL47+0x4>
			56: R_RISCV_LO12_I	em_buf_env+0x8
			56: R_RISCV_RELAX	*ABS*+0x8
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	ble_co_list_push_back
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL53+0x6>

00000062 <.LBE141>:
  62:	4905                	li	s2,1

00000064 <.L15>:
  64:	00445683          	lhu	a3,4(s0)

00000068 <.LBB149>:
  68:	4629                	li	a2,10
  6a:	28008737          	lui	a4,0x28008
  6e:	02c686b3          	mul	a3,a3,a2

00000072 <.LVL57>:
  72:	2cc70793          	addi	a5,a4,716 # 280082cc <.LASF24+0x28007c58>

00000076 <.LBE149>:
  76:	85a2                	mv	a1,s0
  78:	00098513          	mv	a0,s3
			78: R_RISCV_LO12_I	em_buf_env
			78: R_RISCV_RELAX	*ABS*

0000007c <.LBB150>:
  7c:	96be                	add	a3,a3,a5
  7e:	00069023          	sh	zero,0(a3)

00000082 <.LBB151>:
  82:	00445683          	lhu	a3,4(s0)

00000086 <.LBB155>:
  86:	2d270793          	addi	a5,a4,722

0000008a <.LBB156>:
  8a:	2ce70713          	addi	a4,a4,718

0000008e <.LBB160>:
  8e:	02c686b3          	mul	a3,a3,a2

00000092 <.LVL60>:
  92:	96be                	add	a3,a3,a5
  94:	00069023          	sh	zero,0(a3)

00000098 <.LBB161>:
  98:	00445783          	lhu	a5,4(s0)

0000009c <.LBB162>:
  9c:	02c787b3          	mul	a5,a5,a2

000000a0 <.LVL63>:
  a0:	97ba                	add	a5,a5,a4
  a2:	00079023          	sh	zero,0(a5)

000000a6 <.LBE162>:
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	ble_co_list_push_back
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LBE162>

000000ae <.LBE143>:
  ae:	30049073          	csrw	mstatus,s1

000000b2 <.LBE163>:
  b2:	40f2                	lw	ra,28(sp)
  b4:	4462                	lw	s0,24(sp)

000000b6 <.LVL66>:
  b6:	854a                	mv	a0,s2
  b8:	44d2                	lw	s1,20(sp)

000000ba <.LVL67>:
  ba:	4942                	lw	s2,16(sp)

000000bc <.LVL68>:
  bc:	49b2                	lw	s3,12(sp)
  be:	6105                	addi	sp,sp,32
  c0:	8082                	ret
