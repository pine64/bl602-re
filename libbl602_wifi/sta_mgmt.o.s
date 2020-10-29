
libbl602_wifi/sta_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.sta_mgmt_entry_init:

00000000 <sta_mgmt_entry_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842a                	mv	s0,a0

0000000a <.LBB36>:
   a:	19c50493          	addi	s1,a0,412

0000000e <.L2>:
   e:	19c42783          	lw	a5,412(s0)
  12:	ef8d                	bnez	a5,4c <.L3>
			12: R_RISCV_RVC_BRANCH	.L3
  14:	1b000613          	li	a2,432
  18:	4581                	li	a1,0
  1a:	8522                	mv	a0,s0
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	memset
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.L2+0xe>

00000024 <.LVL2>:
  24:	12440793          	addi	a5,s0,292
  28:	19040693          	addi	a3,s0,400

0000002c <.LBB37>:
  2c:	4709                	li	a4,2

0000002e <.L4>:
  2e:	00e78023          	sb	a4,0(a5)
  32:	00e780a3          	sb	a4,1(a5)
  36:	07b1                	addi	a5,a5,12
  38:	fed79be3          	bne	a5,a3,2e <.L4>
			38: R_RISCV_BRANCH	.L4

0000003c <.LBE39>:
  3c:	57fd                	li	a5,-1
  3e:	00f40d23          	sb	a5,26(s0)

00000042 <.LBE37>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)

00000046 <.LVL5>:
  46:	4492                	lw	s1,4(sp)
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

0000004c <.L3>:
  4c:	8526                	mv	a0,s1
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	co_list_pop_front
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.L3+0x2>

00000056 <.LVL7>:
  56:	4585                	li	a1,1
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	txl_frame_release
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL7+0x2>

00000060 <.LVL8>:
  60:	b77d                	j	e <.L2>
			60: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.sta_mgmt_init:

00000000 <sta_mgmt_init>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	00000437          	lui	s0,0x0
			8: R_RISCV_HI20	sta_info_tab
			8: R_RISCV_RELAX	*ABS*
   c:	000009b7          	lui	s3,0x0
			c: R_RISCV_HI20	sta_info_env
			c: R_RISCV_RELAX	*ABS*
  10:	6905                	lui	s2,0x1
  12:	ca26                	sw	s1,20(sp)
  14:	00098513          	mv	a0,s3
			14: R_RISCV_LO12_I	sta_info_env
			14: R_RISCV_RELAX	*ABS*
  18:	00040493          	mv	s1,s0
			18: R_RISCV_LO12_I	sta_info_tab
			18: R_RISCV_RELAX	*ABS*
  1c:	0e090913          	addi	s2,s2,224 # 10e0 <.LASF270>
  20:	ce06                	sw	ra,28(sp)
  22:	9926                	add	s2,s2,s1
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	co_list_init
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <sta_mgmt_init+0x24>

0000002c <.LVL9>:
  2c:	00040413          	mv	s0,s0
			2c: R_RISCV_LO12_I	sta_info_tab
			2c: R_RISCV_RELAX	*ABS*

00000030 <.L8>:
  30:	8526                	mv	a0,s1
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	sta_mgmt_entry_init
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.L8+0x2>

0000003a <.LVL11>:
  3a:	85a6                	mv	a1,s1
  3c:	00098513          	mv	a0,s3
			3c: R_RISCV_LO12_I	sta_info_env
			3c: R_RISCV_RELAX	*ABS*
  40:	1b048493          	addi	s1,s1,432

00000044 <.LVL12>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	co_list_push_back
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL12>

0000004c <.LBE41>:
  4c:	ff2492e3          	bne	s1,s2,30 <.L8>
			4c: R_RISCV_BRANCH	.L8

00000050 <.LBB42>:
  50:	00001537          	lui	a0,0x1
			50: R_RISCV_HI20	sta_info_tab+0x10e0
			50: R_RISCV_RELAX	*ABS*+0x10e0
  54:	0e050513          	addi	a0,a0,224 # 10e0 <.LASF270>
			54: R_RISCV_LO12_I	sta_info_tab+0x10e0
			54: R_RISCV_RELAX	*ABS*+0x10e0
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	sta_mgmt_entry_init
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LBB42+0x8>

00000060 <.LVL15>:
  60:	000004b7          	lui	s1,0x0
			60: R_RISCV_HI20	vif_info_tab
			60: R_RISCV_RELAX	*ABS*

00000064 <.LVL16>:
  64:	6985                	lui	s3,0x1
  66:	00048493          	mv	s1,s1
			66: R_RISCV_LO12_I	vif_info_tab
			66: R_RISCV_RELAX	*ABS*
  6a:	000007b7          	lui	a5,0x0
			6a: R_RISCV_HI20	txl_buffer_control_desc_bcmc
			6a: R_RISCV_RELAX	*ABS*
  6e:	944e                	add	s0,s0,s3
  70:	5c04a603          	lw	a2,1472(s1) # 5c0 <.LASF682+0x12>
  74:	00078793          	mv	a5,a5
			74: R_RISCV_LO12_I	txl_buffer_control_desc_bcmc
			74: R_RISCV_RELAX	*ABS*
  78:	000005b7          	lui	a1,0x0
			78: R_RISCV_HI20	vif_info_tab+0x5c0
			78: R_RISCV_RELAX	*ABS*+0x5c0
  7c:	1ef42623          	sw	a5,492(s0) # 1ec <.LLST22+0xb>
  80:	00000937          	lui	s2,0x0
			80: R_RISCV_HI20	.LC0
			80: R_RISCV_RELAX	*ABS*
  84:	5c058793          	addi	a5,a1,1472 # 5c0 <.LASF682+0x12>
			84: R_RISCV_LO12_I	vif_info_tab+0x5c0
			84: R_RISCV_RELAX	*ABS*+0x5c0
  88:	18f42623          	sw	a5,396(s0)
  8c:	5c058593          	addi	a1,a1,1472
			8c: R_RISCV_LO12_I	vif_info_tab+0x5c0
			8c: R_RISCV_RELAX	*ABS*+0x5c0
  90:	0e040d23          	sb	zero,250(s0)
  94:	100408a3          	sb	zero,273(s0)
  98:	00090513          	mv	a0,s2
			98: R_RISCV_LO12_I	.LC0
			98: R_RISCV_RELAX	*ABS*
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	printf
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LVL16+0x38>

000000a4 <.LVL17>:
  a4:	00001537          	lui	a0,0x1
			a4: R_RISCV_HI20	sta_info_tab+0x1290
			a4: R_RISCV_RELAX	*ABS*+0x1290
  a8:	29050513          	addi	a0,a0,656 # 1290 <.LASF779+0x6>
			a8: R_RISCV_LO12_I	sta_info_tab+0x1290
			a8: R_RISCV_RELAX	*ABS*+0x1290
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	sta_mgmt_entry_init
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL17+0x8>

000000b4 <.LVL18>:
  b4:	4785                	li	a5,1
  b6:	2af40523          	sb	a5,682(s0)
  ba:	000007b7          	lui	a5,0x0
			ba: R_RISCV_HI20	txl_buffer_control_desc_bcmc+0x3c
			ba: R_RISCV_RELAX	*ABS*+0x3c
  be:	03c78793          	addi	a5,a5,60 # 3c <.LVL11+0x2>
			be: R_RISCV_LO12_I	txl_buffer_control_desc_bcmc+0x3c
			be: R_RISCV_RELAX	*ABS*+0x3c
  c2:	000015b7          	lui	a1,0x1
			c2: R_RISCV_HI20	vif_info_tab+0xb98
			c2: R_RISCV_RELAX	*ABS*+0xb98
  c6:	38f42e23          	sw	a5,924(s0)
  ca:	b9858793          	addi	a5,a1,-1128 # b98 <.LASF732>
			ca: R_RISCV_LO12_I	vif_info_tab+0xb98
			ca: R_RISCV_RELAX	*ABS*+0xb98
  ce:	2c0400a3          	sb	zero,705(s0)
  d2:	32f42e23          	sw	a5,828(s0)
  d6:	94ce                	add	s1,s1,s3

000000d8 <.LBE42>:
  d8:	4462                	lw	s0,24(sp)

000000da <.LBB43>:
  da:	b984a603          	lw	a2,-1128(s1)

000000de <.LBE43>:
  de:	40f2                	lw	ra,28(sp)
  e0:	44d2                	lw	s1,20(sp)
  e2:	49b2                	lw	s3,12(sp)

000000e4 <.LBB44>:
  e4:	00090513          	mv	a0,s2
			e4: R_RISCV_LO12_I	.LC0
			e4: R_RISCV_RELAX	*ABS*

000000e8 <.LBE44>:
  e8:	4942                	lw	s2,16(sp)

000000ea <.LBB45>:
  ea:	b9858593          	addi	a1,a1,-1128
			ea: R_RISCV_LO12_I	vif_info_tab+0xb98
			ea: R_RISCV_RELAX	*ABS*+0xb98

000000ee <.LBE45>:
  ee:	6105                	addi	sp,sp,32

000000f0 <.LBB46>:
  f0:	00000317          	auipc	t1,0x0
			f0: R_RISCV_CALL	printf
			f0: R_RISCV_RELAX	*ABS*
  f4:	00030067          	jr	t1 # f0 <.LBB46>

Disassembly of section .text.sta_mgmt_register:

00000000 <sta_mgmt_register>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	84aa                	mv	s1,a0
   e:	01154903          	lbu	s2,17(a0)
  12:	00000537          	lui	a0,0x0
			12: R_RISCV_HI20	sta_info_env
			12: R_RISCV_RELAX	*ABS*

00000016 <.LVL22>:
  16:	00050513          	mv	a0,a0
			16: R_RISCV_LO12_I	sta_info_env
			16: R_RISCV_RELAX	*ABS*
  1a:	89ae                	mv	s3,a1
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	co_list_pop_front
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL22+0x6>

00000024 <.LVL23>:
  24:	14050e63          	beqz	a0,180 <.L18>
			24: R_RISCV_BRANCH	.L18
  28:	842a                	mv	s0,a0
  2a:	4619                	li	a2,6
  2c:	00a48593          	addi	a1,s1,10
  30:	0579                	addi	a0,a0,30

00000032 <.LVL24>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	memcpy
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL24>

0000003a <.LVL25>:
  3a:	0104c783          	lbu	a5,16(s1)
  3e:	4741                	li	a4,16
  40:	00e7f363          	bgeu	a5,a4,46 <.L13>
			40: R_RISCV_BRANCH	.L13
  44:	47c1                	li	a5,16

00000046 <.L13>:
  46:	00f40a23          	sb	a5,20(s0)
  4a:	0084d783          	lhu	a5,8(s1)
  4e:	684be737          	lui	a4,0x684be
  52:	a1370713          	addi	a4,a4,-1517 # 684bda13 <.LASF262+0x684bb27c>
  56:	00f41623          	sh	a5,12(s0)
  5a:	409c                	lw	a5,0(s1)

0000005c <.LBB47>:
  5c:	56fd                	li	a3,-1

0000005e <.LBE47>:
  5e:	c41c                	sw	a5,8(s0)
  60:	40dc                	lw	a5,4(s1)
  62:	c81c                	sw	a5,16(s0)
  64:	0114c783          	lbu	a5,17(s1)
  68:	00f40d23          	sb	a5,26(s0)
  6c:	01348783          	lb	a5,19(s1)
  70:	02f40223          	sb	a5,36(s0)
  74:	48dc                	lw	a5,20(s1)
  76:	d41c                	sw	a5,40(s0)
  78:	4c9c                	lw	a5,24(s1)
  7a:	d45c                	sw	a5,44(s0)
  7c:	01c4c783          	lbu	a5,28(s1)
  80:	02f40823          	sb	a5,48(s0)
  84:	000007b7          	lui	a5,0x0
			84: R_RISCV_HI20	sta_info_tab
			84: R_RISCV_RELAX	*ABS*
  88:	00078793          	mv	a5,a5
			88: R_RISCV_LO12_I	sta_info_tab
			88: R_RISCV_RELAX	*ABS*
  8c:	40f407b3          	sub	a5,s0,a5
  90:	8791                	srai	a5,a5,0x4
  92:	02e787b3          	mul	a5,a5,a4
  96:	19c40713          	addi	a4,s0,412
  9a:	0ff7f793          	andi	a5,a5,255
  9e:	00f98023          	sb	a5,0(s3) # 1000 <.LASF848+0x33>
  a2:	00f40da3          	sb	a5,27(s0)
  a6:	67e5                	lui	a5,0x19
  a8:	c05c                	sw	a5,4(s0)
  aa:	57fd                	li	a5,-1
  ac:	18f41423          	sh	a5,392(s0)

000000b0 <.LBB48>:
  b0:	18a40793          	addi	a5,s0,394

000000b4 <.L14>:
  b4:	00d79023          	sh	a3,0(a5) # 19000 <.LASF262+0x16869>
  b8:	0789                	addi	a5,a5,2
  ba:	fee79de3          	bne	a5,a4,b4 <.L14>
			ba: R_RISCV_BRANCH	.L14

000000be <.LBE48>:
  be:	0009c783          	lbu	a5,0(s3)
  c2:	03c00713          	li	a4,60
  c6:	5d800493          	li	s1,1496

000000ca <.LVL28>:
  ca:	02e787b3          	mul	a5,a5,a4
  ce:	00000737          	lui	a4,0x0
			ce: R_RISCV_HI20	txl_buffer_control_desc
			ce: R_RISCV_RELAX	*ABS*
  d2:	00070713          	mv	a4,a4
			d2: R_RISCV_LO12_I	txl_buffer_control_desc
			d2: R_RISCV_RELAX	*ABS*
  d6:	020408a3          	sb	zero,49(s0)
  da:	029904b3          	mul	s1,s2,s1
  de:	97ba                	add	a5,a5,a4
  e0:	00000937          	lui	s2,0x0
			e0: R_RISCV_HI20	vif_info_tab
			e0: R_RISCV_RELAX	*ABS*
  e4:	10f42623          	sw	a5,268(s0)
  e8:	00090793          	mv	a5,s2
			e8: R_RISCV_LO12_I	vif_info_tab
			e8: R_RISCV_RELAX	*ABS*
  ec:	00090913          	mv	s2,s2
			ec: R_RISCV_LO12_I	vif_info_tab
			ec: R_RISCV_RELAX	*ABS*
  f0:	97a6                	add	a5,a5,s1
  f2:	5c47a703          	lw	a4,1476(a5)
  f6:	8b21                	andi	a4,a4,8
  f8:	c735                	beqz	a4,164 <.L15>
			f8: R_RISCV_RVC_BRANCH	.L15

000000fa <.LBB49>:
  fa:	0a842683          	lw	a3,168(s0)
  fe:	0a840613          	addi	a2,s0,168
 102:	00000537          	lui	a0,0x0
			102: R_RISCV_HI20	.LC1
			102: R_RISCV_RELAX	*ABS*
 106:	0ac42623          	sw	a2,172(s0)
 10a:	10200593          	li	a1,258
 10e:	00050513          	mv	a0,a0
			10e: R_RISCV_LO12_I	.LC1
			10e: R_RISCV_RELAX	*ABS*

00000112 <.L22>:
 112:	00000097          	auipc	ra,0x0
			112: R_RISCV_CALL	printf
			112: R_RISCV_RELAX	*ABS*
 116:	000080e7          	jalr	ra # 112 <.L22>

0000011a <.LBB51>:
 11a:	44b007b7          	lui	a5,0x44b00
 11e:	1207a683          	lw	a3,288(a5) # 44b00120 <.LASF262+0x44afd989>

00000122 <.LBB54>:
 122:	fff0c737          	lui	a4,0xfff0c
 126:	dc070713          	addi	a4,a4,-576 # fff0bdc0 <.LASF262+0xfff09629>
 12a:	11c40793          	addi	a5,s0,284
 12e:	18840613          	addi	a2,s0,392
 132:	9736                	add	a4,a4,a3

00000134 <.L17>:
 134:	c394                	sw	a3,0(a5)
 136:	c3d8                	sw	a4,4(a5)
 138:	07b1                	addi	a5,a5,12
 13a:	fec79de3          	bne	a5,a2,134 <.L17>
			13a: R_RISCV_BRANCH	.L17

0000013e <.LBE54>:
 13e:	35048513          	addi	a0,s1,848
 142:	954a                	add	a0,a0,s2
 144:	85a2                	mv	a1,s0
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	co_list_push_back
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.LBE54+0x8>

0000014e <.LVL35>:
 14e:	4785                	li	a5,1
 150:	00f40ea3          	sb	a5,29(s0)
 154:	4501                	li	a0,0

00000156 <.L12>:
 156:	40f2                	lw	ra,28(sp)
 158:	4462                	lw	s0,24(sp)
 15a:	44d2                	lw	s1,20(sp)
 15c:	4942                	lw	s2,16(sp)
 15e:	49b2                	lw	s3,12(sp)

00000160 <.LVL37>:
 160:	6105                	addi	sp,sp,32
 162:	8082                	ret

00000164 <.L15>:
 164:	5c048613          	addi	a2,s1,1472
 168:	964a                	add	a2,a2,s2
 16a:	0ac42623          	sw	a2,172(s0)
 16e:	00000537          	lui	a0,0x0
			16e: R_RISCV_HI20	.LC2
			16e: R_RISCV_RELAX	*ABS*
 172:	5c07a683          	lw	a3,1472(a5)
 176:	10d00593          	li	a1,269
 17a:	00050513          	mv	a0,a0
			17a: R_RISCV_LO12_I	.LC2
			17a: R_RISCV_RELAX	*ABS*
 17e:	bf51                	j	112 <.L22>
			17e: R_RISCV_RVC_JUMP	.L22

00000180 <.L18>:
 180:	4505                	li	a0,1

00000182 <.LVL40>:
 182:	bfd1                	j	156 <.L12>
			182: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.sta_mgmt_unregister:

00000000 <sta_mgmt_unregister>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	1b000413          	li	s0,432
   8:	02850433          	mul	s0,a0,s0
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	sta_info_tab
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL42>:
  10:	00050513          	mv	a0,a0
			10: R_RISCV_LO12_I	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	c606                	sw	ra,12(sp)
  16:	942a                	add	s0,s0,a0

00000018 <.LVL43>:
  18:	01a44783          	lbu	a5,26(s0)
  1c:	5d800513          	li	a0,1496
  20:	85a2                	mv	a1,s0
  22:	02a787b3          	mul	a5,a5,a0
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	vif_info_tab
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	vif_info_tab
			2a: R_RISCV_RELAX	*ABS*
  2e:	35078793          	addi	a5,a5,848
  32:	953e                	add	a0,a0,a5
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	co_list_extract
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL43+0x1c>

0000003c <.LVL44>:
  3c:	8522                	mv	a0,s0
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	sta_mgmt_entry_init
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL44+0x2>

00000046 <.LVL45>:
  46:	85a2                	mv	a1,s0
  48:	4422                	lw	s0,8(sp)

0000004a <.LVL46>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	00000537          	lui	a0,0x0
			4c: R_RISCV_HI20	sta_info_env
			4c: R_RISCV_RELAX	*ABS*
  50:	00050513          	mv	a0,a0
			50: R_RISCV_LO12_I	sta_info_env
			50: R_RISCV_RELAX	*ABS*
  54:	0141                	addi	sp,sp,16
  56:	00000317          	auipc	t1,0x0
			56: R_RISCV_CALL	co_list_push_back
			56: R_RISCV_RELAX	*ABS*
  5a:	00030067          	jr	t1 # 56 <.LVL46+0xc>

Disassembly of section .text.sta_mgmt_add_key:

00000000 <sta_mgmt_add_key>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c452                	sw	s4,8(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	00154983          	lbu	s3,1(a0) # 1 <sta_mgmt_add_key+0x1>

00000012 <.LVL49>:
  12:	1b000413          	li	s0,432
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	sta_info_tab
			16: R_RISCV_RELAX	*ABS*
  1a:	028987b3          	mul	a5,s3,s0
  1e:	00048413          	mv	s0,s1
			1e: R_RISCV_LO12_I	sta_info_tab
			1e: R_RISCV_RELAX	*ABS*
  22:	892a                	mv	s2,a0
  24:	04800613          	li	a2,72
  28:	00048493          	mv	s1,s1
			28: R_RISCV_LO12_I	sta_info_tab
			28: R_RISCV_RELAX	*ABS*
  2c:	04078a13          	addi	s4,a5,64
  30:	9a22                	add	s4,s4,s0

00000032 <.LVL50>:
  32:	943e                	add	s0,s0,a5
  34:	0ab40123          	sb	a1,162(s0)
  38:	02854783          	lbu	a5,40(a0)
  3c:	4581                	li	a1,0

0000003e <.LVL51>:
  3e:	0af40023          	sb	a5,160(s0)
  42:	00054783          	lbu	a5,0(a0)
  46:	8552                	mv	a0,s4

00000048 <.LVL52>:
  48:	0af400a3          	sb	a5,161(s0)
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memset
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL52+0x4>

00000054 <.LVL53>:
  54:	0a044783          	lbu	a5,160(s0)
  58:	4705                	li	a4,1
  5a:	06e78263          	beq	a5,a4,be <.L26>
			5a: R_RISCV_BRANCH	.L26
  5e:	c781                	beqz	a5,66 <.L27>
			5e: R_RISCV_RVC_BRANCH	.L27
  60:	470d                	li	a4,3
  62:	08e79563          	bne	a5,a4,ec <.L28>
			62: R_RISCV_BRANCH	.L28

00000066 <.L27>:
  66:	00000737          	lui	a4,0x0
			66: R_RISCV_HI20	.LANCHOR0
			66: R_RISCV_RELAX	*ABS*
  6a:	00070713          	mv	a4,a4
			6a: R_RISCV_LO12_I	.LANCHOR0
			6a: R_RISCV_RELAX	*ABS*
  6e:	431c                	lw	a5,0(a4)
  70:	41c656b7          	lui	a3,0x41c65
  74:	e6d68693          	addi	a3,a3,-403 # 41c64e6d <.LASF262+0x41c626d6>
  78:	02d787b3          	mul	a5,a5,a3
  7c:	668d                	lui	a3,0x3
  7e:	03968693          	addi	a3,a3,57 # 3039 <.LASF262+0x8a2>
  82:	97b6                	add	a5,a5,a3
  84:	c31c                	sw	a5,0(a4)

00000086 <.LBE60>:
  86:	1b000713          	li	a4,432
  8a:	02e98733          	mul	a4,s3,a4

0000008e <.LBB65>:
  8e:	83c1                	srli	a5,a5,0x10

00000090 <.LBE65>:
  90:	9726                	add	a4,a4,s1
  92:	08f72423          	sw	a5,136(a4) # 88 <.LBE60+0x2>
  96:	08072623          	sw	zero,140(a4)

0000009a <.L29>:
  9a:	1b000793          	li	a5,432
  9e:	02f989b3          	mul	s3,s3,a5

000000a2 <.LVL54>:
  a2:	4785                	li	a5,1
  a4:	94ce                	add	s1,s1,s3
  a6:	0af481a3          	sb	a5,163(s1) # a3 <.LVL54+0x1>
  aa:	0b44a423          	sw	s4,168(s1)
  ae:	40f2                	lw	ra,28(sp)
  b0:	4462                	lw	s0,24(sp)
  b2:	44d2                	lw	s1,20(sp)
  b4:	4942                	lw	s2,16(sp)

000000b6 <.LVL55>:
  b6:	49b2                	lw	s3,12(sp)
  b8:	4a22                	lw	s4,8(sp)

000000ba <.LVL56>:
  ba:	6105                	addi	sp,sp,32
  bc:	8082                	ret

000000be <.L26>:
  be:	4781                	li	a5,0
  c0:	4801                	li	a6,0
  c2:	08f42423          	sw	a5,136(s0)
  c6:	09042623          	sw	a6,140(s0)
  ca:	01892783          	lw	a5,24(s2) # 18 <.LVL49+0x6>
  ce:	08f42823          	sw	a5,144(s0)
  d2:	01c92783          	lw	a5,28(s2)
  d6:	08f42a23          	sw	a5,148(s0)
  da:	02092783          	lw	a5,32(s2)
  de:	08f42c23          	sw	a5,152(s0)
  e2:	02492783          	lw	a5,36(s2)
  e6:	08f42e23          	sw	a5,156(s0)
  ea:	bf45                	j	9a <.L29>
			ea: R_RISCV_RVC_JUMP	.L29

000000ec <.L28>:
  ec:	4781                	li	a5,0
  ee:	4801                	li	a6,0
  f0:	08f42423          	sw	a5,136(s0)
  f4:	09042623          	sw	a6,140(s0)
  f8:	b74d                	j	9a <.L29>
			f8: R_RISCV_RVC_JUMP	.L29

Disassembly of section .text.sta_mgmt_del_key:

00000000 <sta_mgmt_del_key>:
   0:	4785                	li	a5,1
   2:	0a0501a3          	sb	zero,163(a0)
   6:	0a052423          	sw	zero,168(a0)
   a:	02f508a3          	sb	a5,49(a0)
   e:	8082                	ret

Disassembly of section .text.sta_mgmt_send_postponed_frame:

00000000 <sta_mgmt_send_postponed_frame>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	d606                	sw	ra,44(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	89aa                	mv	s3,a0
  12:	84ae                	mv	s1,a1
  14:	8a32                	mv	s4,a2
  16:	4401                	li	s0,0

00000018 <.LBB66>:
  18:	19c58a93          	addi	s5,a1,412

0000001c <.L36>:
  1c:	19c4a903          	lw	s2,412(s1)
  20:	04090b63          	beqz	s2,76 <.L35>
			20: R_RISCV_BRANCH	.L35

00000024 <.LBB67>:
  24:	854e                	mv	a0,s3
  26:	c602                	sw	zero,12(sp)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	txl_cntrl_tx_check
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LBB67+0x4>

00000030 <.LVL63>:
  30:	c139                	beqz	a0,76 <.L35>
			30: R_RISCV_RVC_BRANCH	.L35
  32:	854a                	mv	a0,s2
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	apm_tx_int_ps_check
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL63+0x4>

0000003c <.LVL64>:
  3c:	cd0d                	beqz	a0,76 <.L35>
			3c: R_RISCV_RVC_BRANCH	.L35
  3e:	0070                	addi	a2,sp,12
  40:	85a6                	mv	a1,s1
  42:	854e                	mv	a0,s3
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	apm_tx_int_ps_get_postpone
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL64+0x8>

0000004c <.LVL65>:
  4c:	47b2                	lw	a5,12(sp)
  4e:	e785                	bnez	a5,76 <.L35>
			4e: R_RISCV_RVC_BRANCH	.L35
  50:	e511                	bnez	a0,5c <.L38>
			50: R_RISCV_RVC_BRANCH	.L38
  52:	8556                	mv	a0,s5

00000054 <.LVL66>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	co_list_pop_front
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL66>

0000005c <.L38>:
  5c:	02e54583          	lbu	a1,46(a0)
  60:	2c050aa3          	sb	zero,725(a0)
  64:	0405                	addi	s0,s0,1

00000066 <.LVL68>:
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	txl_cntrl_push_int
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL68>

0000006e <.LVL69>:
  6e:	fa0a07e3          	beqz	s4,1c <.L36>
			6e: R_RISCV_BRANCH	.L36
  72:	fb4415e3          	bne	s0,s4,1c <.L36>
			72: R_RISCV_BRANCH	.L36

00000076 <.L35>:
  76:	8522                	mv	a0,s0
  78:	50b2                	lw	ra,44(sp)
  7a:	5422                	lw	s0,40(sp)

0000007c <.LVL71>:
  7c:	5492                	lw	s1,36(sp)

0000007e <.LVL72>:
  7e:	5902                	lw	s2,32(sp)
  80:	49f2                	lw	s3,28(sp)

00000082 <.LVL73>:
  82:	4a62                	lw	s4,24(sp)

00000084 <.LVL74>:
  84:	4ad2                	lw	s5,20(sp)

00000086 <.LVL75>:
  86:	6145                	addi	sp,sp,48
  88:	8082                	ret
