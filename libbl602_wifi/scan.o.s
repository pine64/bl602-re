
libbl602_wifi/scan.o:     file format elf32-littleriscv


Disassembly of section .text.scan_search_ds:

00000000 <scan_search_ds>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	scan_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040413          	mv	s0,s0
			8: R_RISCV_LO12_I	scan_env
			8: R_RISCV_RELAX	*ABS*
   c:	481c                	lw	a5,16(s0)
   e:	c606                	sw	ra,12(sp)
  10:	00000537          	lui	a0,0x0
			10: R_RISCV_HI20	scan_probe_req_ie+0x24
			10: R_RISCV_RELAX	*ABS*+0x24
  14:	14c7d583          	lhu	a1,332(a5)
  18:	460d                	li	a2,3
  1a:	02450513          	addi	a0,a0,36 # 24 <scan_search_ds+0x24>
			1a: R_RISCV_LO12_I	scan_probe_req_ie+0x24
			1a: R_RISCV_RELAX	*ABS*+0x24
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	mac_ie_find
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <scan_search_ds+0x1e>

00000026 <.LVL1>:
  26:	c848                	sw	a0,20(s0)
  28:	40b2                	lw	ra,12(sp)
  2a:	4422                	lw	s0,8(sp)
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.scan_init:

00000000 <scan_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	scan_env
			4: R_RISCV_RELAX	*ABS*
   8:	4671                	li	a2,28
   a:	4581                	li	a1,0
   c:	00040513          	mv	a0,s0
			c: R_RISCV_LO12_I	scan_env
			c: R_RISCV_RELAX	*ABS*
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	memset
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <scan_init+0x12>

0000001a <.LVL3>:
  1a:	4581                	li	a1,0
  1c:	4509                	li	a0,2
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	ke_state_set
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL3+0x4>

00000026 <.LVL4>:
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	dma_cb
			26: R_RISCV_RELAX	*ABS*
  2a:	00040713          	mv	a4,s0
			2a: R_RISCV_LO12_I	scan_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	00078793          	mv	a5,a5
			2e: R_RISCV_LO12_I	dma_cb
			2e: R_RISCV_RELAX	*ABS*
  32:	c71c                	sw	a5,8(a4)
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	scan_probe_req_ie
			34: R_RISCV_RELAX	*ABS*
  38:	00078793          	mv	a5,a5
			38: R_RISCV_LO12_I	scan_probe_req_ie
			38: R_RISCV_RELAX	*ABS*
  3c:	00072623          	sw	zero,12(a4)
  40:	c35c                	sw	a5,4(a4)
  42:	00000737          	lui	a4,0x0
			42: R_RISCV_HI20	scan_probe_req_ie+0x24
			42: R_RISCV_RELAX	*ABS*+0x24
  46:	02470713          	addi	a4,a4,36 # 24 <.LVL3+0xa>
			46: R_RISCV_LO12_I	scan_probe_req_ie+0x24
			46: R_RISCV_RELAX	*ABS*+0x24
  4a:	c3d8                	sw	a4,4(a5)
  4c:	cf98                	sw	a4,24(a5)
  4e:	caff0737          	lui	a4,0xcaff0
  52:	ade70713          	addi	a4,a4,-1314 # cafefade <.LASF358+0xcafed3dd>
  56:	0207a023          	sw	zero,32(a5) # 20 <.LVL3+0x6>
  5a:	cb98                	sw	a4,16(a5)
  5c:	0007aa23          	sw	zero,20(a5)
  60:	40b2                	lw	ra,12(sp)
  62:	4422                	lw	s0,8(sp)
  64:	0141                	addi	sp,sp,16
  66:	8082                	ret

Disassembly of section .text.scan_set_channel_request:

00000000 <scan_set_channel_request>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	scan_env
			4: R_RISCV_RELAX	*ABS*
   8:	00048493          	mv	s1,s1
			8: R_RISCV_LO12_I	scan_env
			8: R_RISCV_RELAX	*ABS*
   c:	c422                	sw	s0,8(sp)
   e:	01a4c403          	lbu	s0,26(s1) # 1a <.LVL6>
  12:	4719                	li	a4,6
  14:	489c                	lw	a5,16(s1)

00000016 <.LVL5>:
  16:	02e40433          	mul	s0,s0,a4

0000001a <.LVL6>:
  1a:	c606                	sw	ra,12(sp)
  1c:	14e7c703          	lbu	a4,334(a5)
  20:	66ed                	lui	a3,0x1b
  22:	db068693          	addi	a3,a3,-592 # 1adb0 <.LASF358+0x186af>
  26:	943e                	add	s0,s0,a5
  28:	00045583          	lhu	a1,0(s0) # 0 <scan_set_channel_request>
  2c:	00440603          	lb	a2,4(s0)
  30:	00244503          	lbu	a0,2(s0)
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	chan_scan_req
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL6+0x1a>

0000003c <.LVL7>:
  3c:	48cc                	lw	a1,20(s1)
  3e:	cd9d                	beqz	a1,7c <.L6>
			3e: R_RISCV_RVC_BRANCH	.L6
  40:	00244683          	lbu	a3,2(s0)
  44:	00045703          	lhu	a4,0(s0)

00000048 <.LBB19>:
  48:	e6a1                	bnez	a3,90 <.L7>
			48: R_RISCV_RVC_BRANCH	.L7
  4a:	767d                	lui	a2,0xfffff
  4c:	69460693          	addi	a3,a2,1684 # fffff694 <.LASF358+0xffffcf93>

00000050 <.LVL9>:
  50:	96ba                	add	a3,a3,a4
  52:	06c2                	slli	a3,a3,0x10
  54:	82c1                	srli	a3,a3,0x10
  56:	04800513          	li	a0,72
  5a:	4781                	li	a5,0
  5c:	00d56e63          	bltu	a0,a3,78 <.L8>
			5c: R_RISCV_BRANCH	.L8
  60:	6685                	lui	a3,0x1
  62:	9b468693          	addi	a3,a3,-1612 # 9b4 <.LASF751+0x7>
  66:	47b9                	li	a5,14
  68:	00d70863          	beq	a4,a3,78 <.L8>
			68: R_RISCV_BRANCH	.L8
  6c:	69960793          	addi	a5,a2,1689

00000070 <.L17>:
  70:	973e                	add	a4,a4,a5

00000072 <.LVL10>:
  72:	4795                	li	a5,5
  74:	02f747b3          	div	a5,a4,a5

00000078 <.L8>:
  78:	00f58123          	sb	a5,2(a1)

0000007c <.L6>:
  7c:	4422                	lw	s0,8(sp)
  7e:	40b2                	lw	ra,12(sp)
  80:	4492                	lw	s1,4(sp)
  82:	4589                	li	a1,2
  84:	4509                	li	a0,2
  86:	0141                	addi	sp,sp,16
  88:	00000317          	auipc	t1,0x0
			88: R_RISCV_CALL	ke_state_set
			88: R_RISCV_RELAX	*ABS*
  8c:	00030067          	jr	t1 # 88 <.L6+0xc>

00000090 <.L7>:
  90:	4605                	li	a2,1
  92:	4781                	li	a5,0
  94:	fec692e3          	bne	a3,a2,78 <.L8>
			94: R_RISCV_BRANCH	.L8
  98:	767d                	lui	a2,0xfffff
  9a:	c7360693          	addi	a3,a2,-909 # ffffec73 <.LASF358+0xffffc572>

0000009e <.LVL14>:
  9e:	96ba                	add	a3,a3,a4
  a0:	06c2                	slli	a3,a3,0x10
  a2:	82c1                	srli	a3,a3,0x10
  a4:	33400513          	li	a0,820
  a8:	fcd568e3          	bltu	a0,a3,78 <.L8>
			a8: R_RISCV_BRANCH	.L8
  ac:	c7860793          	addi	a5,a2,-904
  b0:	b7c1                	j	70 <.L17>
			b0: R_RISCV_RVC_JUMP	.L17

Disassembly of section .text.dma_cb:

00000000 <dma_cb>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	00000097          	auipc	ra,0x0
			4: R_RISCV_CALL	scan_search_ds
			4: R_RISCV_RELAX	*ABS*
   8:	000080e7          	jalr	ra # 4 <dma_cb+0x4>

0000000c <.LVL16>:
   c:	40b2                	lw	ra,12(sp)
   e:	0141                	addi	sp,sp,16
  10:	00000317          	auipc	t1,0x0
			10: R_RISCV_CALL	scan_set_channel_request
			10: R_RISCV_RELAX	*ABS*
  14:	00030067          	jr	t1 # 10 <.LVL16+0x4>

Disassembly of section .text.scan_ie_download:

00000000 <scan_ie_download>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c62a                	sw	a0,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	scan_search_ds
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <scan_ie_download+0x6>

0000000e <.LVL19>:
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	scan_set_channel_request
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL19>

00000016 <.LVL20>:
  16:	4532                	lw	a0,12(sp)
  18:	000007b7          	lui	a5,0x0
			18: R_RISCV_HI20	scan_probe_req_ie
			18: R_RISCV_RELAX	*ABS*
  1c:	00078793          	mv	a5,a5
			1c: R_RISCV_LO12_I	scan_probe_req_ie
			1c: R_RISCV_RELAX	*ABS*
  20:	4f98                	lw	a4,24(a5)
  22:	14c55683          	lhu	a3,332(a0)
  26:	0207a023          	sw	zero,32(a5) # 20 <.LVL20+0xa>
  2a:	177d                	addi	a4,a4,-1
  2c:	9736                	add	a4,a4,a3
  2e:	cfd8                	sw	a4,28(a5)
  30:	40f2                	lw	ra,28(sp)
  32:	6105                	addi	sp,sp,32

00000034 <.LVL21>:
  34:	8082                	ret

Disassembly of section .text.scan_probe_req_tx:

00000000 <scan_probe_req_tx>:
   0:	7179                	addi	sp,sp,-48
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	scan_env
			2: R_RISCV_RELAX	*ABS*
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	c65e                	sw	s7,12(sp)
   e:	d606                	sw	ra,44(sp)
  10:	d422                	sw	s0,40(sp)
  12:	d226                	sw	s1,36(sp)
  14:	ca56                	sw	s5,20(sp)
  16:	c85a                	sw	s6,16(sp)
  18:	c462                	sw	s8,8(sp)
  1a:	00078793          	mv	a5,a5
			1a: R_RISCV_LO12_I	scan_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	4b84                	lw	s1,16(a5)

00000020 <.LVL22>:
  20:	01a7ca83          	lbu	s5,26(a5) # 1a <scan_probe_req_tx+0x1a>

00000024 <.LBB38>:
  24:	5d800713          	li	a4,1496

00000028 <.LBE38>:
  28:	14e4c783          	lbu	a5,334(s1)

0000002c <.LBB65>:
  2c:	00000937          	lui	s2,0x0
			2c: R_RISCV_HI20	vif_info_tab
			2c: R_RISCV_RELAX	*ABS*
  30:	00090913          	mv	s2,s2
			30: R_RISCV_LO12_I	vif_info_tab
			30: R_RISCV_RELAX	*ABS*
  34:	02e787b3          	mul	a5,a5,a4

00000038 <.LBB39>:
  38:	000009b7          	lui	s3,0x0
			38: R_RISCV_HI20	txl_cntrl_env
			38: R_RISCV_RELAX	*ABS*
  3c:	0fd48b93          	addi	s7,s1,253

00000040 <.LBE39>:
  40:	4a01                	li	s4,0

00000042 <.LBB44>:
  42:	00098993          	mv	s3,s3
			42: R_RISCV_LO12_I	txl_cntrl_env
			42: R_RISCV_RELAX	*ABS*

00000046 <.LBE44>:
  46:	993e                	add	s2,s2,a5
  48:	05090913          	addi	s2,s2,80 # 50 <.L23+0x4>

0000004c <.L23>:
  4c:	1504c783          	lbu	a5,336(s1)
  50:	00fa4e63          	blt	s4,a5,6c <.L28>
			50: R_RISCV_BRANCH	.L28

00000054 <.L22>:
  54:	50b2                	lw	ra,44(sp)
  56:	5422                	lw	s0,40(sp)
  58:	5492                	lw	s1,36(sp)

0000005a <.LVL27>:
  5a:	5902                	lw	s2,32(sp)
  5c:	49f2                	lw	s3,28(sp)
  5e:	4a62                	lw	s4,24(sp)

00000060 <.LVL28>:
  60:	4ad2                	lw	s5,20(sp)
  62:	4b42                	lw	s6,16(sp)
  64:	4bb2                	lw	s7,12(sp)
  66:	4c22                	lw	s8,8(sp)
  68:	6145                	addi	sp,sp,48
  6a:	8082                	ret

0000006c <.L28>:
  6c:	4799                	li	a5,6
  6e:	02fa87b3          	mul	a5,s5,a5
  72:	4505                	li	a0,1
  74:	97a6                	add	a5,a5,s1
  76:	0027c783          	lbu	a5,2(a5)
  7a:	e399                	bnez	a5,80 <.L24>
			7a: R_RISCV_RVC_BRANCH	.L24
  7c:	1514c503          	lbu	a0,337(s1)

00000080 <.L24>:
  80:	fffbc783          	lbu	a5,-1(s7)
  84:	14c4d583          	lhu	a1,332(s1)
  88:	07e9                	addi	a5,a5,26
  8a:	95be                	add	a1,a1,a5
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	txl_frame_get
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.L24+0xc>

00000094 <.LVL31>:
  94:	8b2a                	mv	s6,a0

00000096 <.LVL32>:
  96:	dd5d                	beqz	a0,54 <.L22>
			96: R_RISCV_RVC_BRANCH	.L22

00000098 <.LBB45>:
  98:	5520                	lw	s0,104(a0)

0000009a <.LBB48>:
  9a:	04000793          	li	a5,64
  9e:	000005b7          	lui	a1,0x0
			9e: R_RISCV_HI20	mac_addr_bcst
			9e: R_RISCV_RELAX	*ABS*
  a2:	06c52c03          	lw	s8,108(a0)
  a6:	4619                	li	a2,6
  a8:	14f40623          	sb	a5,332(s0)
  ac:	00058593          	mv	a1,a1
			ac: R_RISCV_LO12_I	mac_addr_bcst
			ac: R_RISCV_RELAX	*ABS*
  b0:	140406a3          	sb	zero,333(s0)
  b4:	14040723          	sb	zero,334(s0)
  b8:	140407a3          	sb	zero,335(s0)
  bc:	15040513          	addi	a0,s0,336

000000c0 <.LVL36>:
  c0:	00000097          	auipc	ra,0x0
			c0: R_RISCV_CALL	memcpy
			c0: R_RISCV_RELAX	*ABS*
  c4:	000080e7          	jalr	ra # c0 <.LVL36>

000000c8 <.LVL37>:
  c8:	4619                	li	a2,6
  ca:	85ca                	mv	a1,s2
  cc:	15640513          	addi	a0,s0,342
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	memcpy
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL37+0x8>

000000d8 <.LVL38>:
  d8:	4619                	li	a2,6
  da:	14048593          	addi	a1,s1,320
  de:	15c40513          	addi	a0,s0,348
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	memcpy
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL38+0xa>

000000ea <.LBB49>:
  ea:	0549d783          	lhu	a5,84(s3) # 54 <.L22>

000000ee <.LBB50>:
  ee:	16040223          	sb	zero,356(s0)

000000f2 <.LBB53>:
  f2:	0785                	addi	a5,a5,1
  f4:	07c2                	slli	a5,a5,0x10
  f6:	83c1                	srli	a5,a5,0x10
  f8:	04f99a23          	sh	a5,84(s3)
  fc:	0792                	slli	a5,a5,0x4

000000fe <.LBE53>:
  fe:	07c2                	slli	a5,a5,0x10
 100:	83c1                	srli	a5,a5,0x10
 102:	16f40123          	sb	a5,354(s0)
 106:	83a1                	srli	a5,a5,0x8
 108:	16f401a3          	sb	a5,355(s0)

0000010c <.LBB54>:
 10c:	fffbc703          	lbu	a4,-1(s7)

00000110 <.LBB55>:
 110:	4781                	li	a5,0

00000112 <.LBB58>:
 112:	16e402a3          	sb	a4,357(s0)

00000116 <.L26>:
 116:	04f71463          	bne	a4,a5,15e <.L27>
			116: R_RISCV_BRANCH	.L27

0000011a <.LBE59>:
 11a:	000007b7          	lui	a5,0x0
			11a: R_RISCV_HI20	scan_probe_req_ie+0x10
			11a: R_RISCV_RELAX	*ABS*+0x10
 11e:	01078793          	addi	a5,a5,16 # 10 <scan_probe_req_tx+0x10>
			11e: R_RISCV_LO12_I	scan_probe_req_ie+0x10
			11e: R_RISCV_RELAX	*ABS*+0x10
 122:	00fc2823          	sw	a5,16(s8)
 126:	14c4d703          	lhu	a4,332(s1)
 12a:	018c2783          	lw	a5,24(s8)
 12e:	458d                	li	a1,3
 130:	855a                	mv	a0,s6
 132:	8f99                	sub	a5,a5,a4
 134:	00fc2c23          	sw	a5,24(s8)
 138:	2c0b2623          	sw	zero,716(s6)
 13c:	2c0b2823          	sw	zero,720(s6)
 140:	14e4c783          	lbu	a5,334(s1)

00000144 <.LBE68>:
 144:	0a05                	addi	s4,s4,1

00000146 <.LVL44>:
 146:	022b8b93          	addi	s7,s7,34

0000014a <.LBB69>:
 14a:	02fb07a3          	sb	a5,47(s6)
 14e:	57fd                	li	a5,-1
 150:	02fb0823          	sb	a5,48(s6)
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	txl_frame_push
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LBB69+0xa>

0000015c <.LVL45>:
 15c:	bdc5                	j	4c <.L23>
			15c: R_RISCV_RVC_JUMP	.L23

0000015e <.L27>:
 15e:	00fb86b3          	add	a3,s7,a5
 162:	0006c603          	lbu	a2,0(a3)

00000166 <.LBB61>:
 166:	00f406b3          	add	a3,s0,a5
 16a:	0785                	addi	a5,a5,1

0000016c <.LVL48>:
 16c:	16c68323          	sb	a2,358(a3)
 170:	b75d                	j	116 <.L26>
			170: R_RISCV_RVC_JUMP	.L26

Disassembly of section .text.scan_send_cancel_cfm:

00000000 <scan_send_cancel_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	6505                	lui	a0,0x1

00000008 <.LVL50>:
   8:	4685                	li	a3,1
   a:	4609                	li	a2,2
   c:	80450513          	addi	a0,a0,-2044 # 804 <.LASF522+0x3>
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ke_msg_alloc
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL50+0xa>

0000001a <.LVL51>:
  1a:	00850023          	sb	s0,0(a0)
  1e:	4422                	lw	s0,8(sp)
  20:	40b2                	lw	ra,12(sp)
  22:	0141                	addi	sp,sp,16
  24:	00000317          	auipc	t1,0x0
			24: R_RISCV_CALL	ke_msg_send
			24: R_RISCV_RELAX	*ABS*
  28:	00030067          	jr	t1 # 24 <.LVL51+0xa>

Disassembly of section .text.scan_get_chan:

00000000 <scan_get_chan>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	scan_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	scan_env
			4: R_RISCV_RELAX	*ABS*
   8:	01a7c703          	lbu	a4,26(a5) # 1a <.LVL3>
   c:	4519                	li	a0,6
   e:	02a70733          	mul	a4,a4,a0
  12:	4b88                	lw	a0,16(a5)
  14:	953a                	add	a0,a0,a4
  16:	8082                	ret
