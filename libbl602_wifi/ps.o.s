
libbl602_wifi/ps.o:     file format elf32-littleriscv


Disassembly of section .text.ps_uapsd_timer_handle:

00000000 <ps_uapsd_timer_handle>:
   0:	1101                	addi	sp,sp,-32
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	vif_mgmt_env+0x8
			2: R_RISCV_RELAX	*ABS*+0x8
   6:	cc22                	sw	s0,24(sp)
   8:	0087a403          	lw	s0,8(a5) # 8 <ps_uapsd_timer_handle+0x8>
			8: R_RISCV_LO12_I	vif_mgmt_env+0x8
			8: R_RISCV_RELAX	*ABS*+0x8

0000000c <.LVL1>:
   c:	ca26                	sw	s1,20(sp)
   e:	000004b7          	lui	s1,0x0
			e: R_RISCV_HI20	ps_env
			e: R_RISCV_RELAX	*ABS*
  12:	c84a                	sw	s2,16(sp)
  14:	c64e                	sw	s3,12(sp)
  16:	ce06                	sw	ra,28(sp)
  18:	4901                	li	s2,0

0000001a <.LBB106>:
  1a:	44b009b7          	lui	s3,0x44b00

0000001e <.LBE106>:
  1e:	00048493          	mv	s1,s1
			1e: R_RISCV_LO12_I	ps_env
			1e: R_RISCV_RELAX	*ABS*

00000022 <.L2>:
  22:	e81d                	bnez	s0,58 <.L4>
			22: R_RISCV_RVC_BRANCH	.L4
  24:	000007b7          	lui	a5,0x0
			24: R_RISCV_HI20	ps_env
			24: R_RISCV_RELAX	*ABS*
  28:	00078793          	mv	a5,a5
			28: R_RISCV_LO12_I	ps_env
			28: R_RISCV_RELAX	*ABS*
  2c:	08090163          	beqz	s2,ae <.L5>
			2c: R_RISCV_BRANCH	.L5

00000030 <.LBB123>:
  30:	44b00737          	lui	a4,0x44b00
  34:	12072583          	lw	a1,288(a4) # 44b00120 <.LASF480+0x44afceb3>

00000038 <.LBE123>:
  38:	539c                	lw	a5,32(a5)
  3a:	4462                	lw	s0,24(sp)

0000003c <.LVL3>:
  3c:	40f2                	lw	ra,28(sp)
  3e:	44d2                	lw	s1,20(sp)
  40:	4942                	lw	s2,16(sp)

00000042 <.LVL4>:
  42:	49b2                	lw	s3,12(sp)
  44:	00000537          	lui	a0,0x0
			44: R_RISCV_HI20	ps_env+0xc
			44: R_RISCV_RELAX	*ABS*+0xc
  48:	95be                	add	a1,a1,a5
  4a:	00c50513          	addi	a0,a0,12 # c <.LVL1>
			4a: R_RISCV_LO12_I	ps_env+0xc
			4a: R_RISCV_RELAX	*ABS*+0xc
  4e:	6105                	addi	sp,sp,32
  50:	00000317          	auipc	t1,0x0
			50: R_RISCV_CALL	mm_timer_set
			50: R_RISCV_RELAX	*ABS*
  54:	00030067          	jr	t1 # 50 <.LVL4+0xe>

00000058 <.L4>:
  58:	05644783          	lbu	a5,86(s0)
  5c:	e7b9                	bnez	a5,aa <.L3>
			5c: R_RISCV_RVC_BRANCH	.L3
  5e:	05844783          	lbu	a5,88(s0)
  62:	c7a1                	beqz	a5,aa <.L3>
			62: R_RISCV_RVC_BRANCH	.L3
  64:	06844783          	lbu	a5,104(s0)
  68:	c3a9                	beqz	a5,aa <.L3>
			68: R_RISCV_RVC_BRANCH	.L3
  6a:	8522                	mv	a0,s0
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	chan_is_on_channel
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.L4+0x14>

00000074 <.LVL6>:
  74:	c91d                	beqz	a0,aa <.L3>
			74: R_RISCV_RVC_BRANCH	.L3

00000076 <.LBB117>:
  76:	509c                	lw	a5,32(s1)

00000078 <.LBB118>:
  78:	1209a703          	lw	a4,288(s3) # 44b00120 <.LASF480+0x44afceb3>

0000007c <.LBB119>:
  7c:	892a                	mv	s2,a0
  7e:	8385                	srli	a5,a5,0x1

00000080 <.LBB122>:
  80:	8f99                	sub	a5,a5,a4
  82:	5078                	lw	a4,100(s0)
  84:	97ba                	add	a5,a5,a4

00000086 <.LBE122>:
  86:	0207d263          	bgez	a5,aa <.L3>
			86: R_RISCV_BRANCH	.L3
  8a:	405c                	lw	a5,4(s0)
  8c:	06044503          	lbu	a0,96(s0)
  90:	4681                	li	a3,0
  92:	0087e793          	ori	a5,a5,8
  96:	c05c                	sw	a5,4(s0)
  98:	4601                	li	a2,0
  9a:	459d                	li	a1,7
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	txl_frame_send_qosnull_frame
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LBE122+0x16>

000000a4 <.LBB130>:
  a4:	1209a783          	lw	a5,288(s3)

000000a8 <.LBE130>:
  a8:	d07c                	sw	a5,100(s0)

000000aa <.L3>:
  aa:	4000                	lw	s0,0(s0)
  ac:	bf9d                	j	22 <.L2>
			ac: R_RISCV_RVC_JUMP	.L2

000000ae <.L5>:
  ae:	00078e23          	sb	zero,28(a5) # 1c <.LBB106+0x2>
  b2:	40f2                	lw	ra,28(sp)
  b4:	4462                	lw	s0,24(sp)

000000b6 <.LVL12>:
  b6:	44d2                	lw	s1,20(sp)
  b8:	4942                	lw	s2,16(sp)

000000ba <.LVL13>:
  ba:	49b2                	lw	s3,12(sp)
  bc:	6105                	addi	sp,sp,32
  be:	8082                	ret

Disassembly of section .text.blmac_pwr_mgt_setf:

00000000 <blmac_pwr_mgt_setf>:
   0:	44b00737          	lui	a4,0x44b00
   4:	477c                	lw	a5,76(a4)
   6:	050a                	slli	a0,a0,0x2

00000008 <.LVL15>:
   8:	9bed                	andi	a5,a5,-5
   a:	8d5d                	or	a0,a0,a5
   c:	c768                	sw	a0,76(a4)
   e:	8082                	ret

Disassembly of section .text.ps_dpsm_update:

00000000 <ps_dpsm_update>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040793          	mv	a5,s0
			8: R_RISCV_LO12_I	ps_env
			8: R_RISCV_RELAX	*ABS*
   c:	c606                	sw	ra,12(sp)
   e:	c226                	sw	s1,4(sp)
  10:	c04a                	sw	s2,0(sp)
  12:	0247c703          	lbu	a4,36(a5)
  16:	00040413          	mv	s0,s0
			16: R_RISCV_LO12_I	ps_env
			16: R_RISCV_RELAX	*ABS*
  1a:	43dc                	lw	a5,4(a5)
  1c:	c531                	beqz	a0,68 <.L19>
			1c: R_RISCV_RVC_BRANCH	.L19
  1e:	00276713          	ori	a4,a4,2
  22:	0087e793          	ori	a5,a5,8
  26:	00000937          	lui	s2,0x0
			26: R_RISCV_HI20	ps_disable_cfm
			26: R_RISCV_RELAX	*ABS*
  2a:	02e40223          	sb	a4,36(s0) # 24 <ps_dpsm_update+0x24>
  2e:	c05c                	sw	a5,4(s0)
  30:	00090913          	mv	s2,s2
			30: R_RISCV_LO12_I	ps_disable_cfm
			30: R_RISCV_RELAX	*ABS*

00000034 <.L20>:
  34:	00154513          	xori	a0,a0,1

00000038 <.LVL18>:
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	blmac_pwr_mgt_setf
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL18>

00000040 <.LVL19>:
  40:	000007b7          	lui	a5,0x0
			40: R_RISCV_HI20	vif_mgmt_env+0x8
			40: R_RISCV_RELAX	*ABS*+0x8
  44:	0087a483          	lw	s1,8(a5) # 8 <ps_dpsm_update+0x8>
			44: R_RISCV_LO12_I	vif_mgmt_env+0x8
			44: R_RISCV_RELAX	*ABS*+0x8
  48:	00040423          	sb	zero,8(s0)

0000004c <.L21>:
  4c:	e88d                	bnez	s1,7e <.L25>
			4c: R_RISCV_RVC_BRANCH	.L25
  4e:	00844783          	lbu	a5,8(s0)
  52:	e3bd                	bnez	a5,b8 <.L18>
			52: R_RISCV_RVC_BRANCH	.L18
  54:	4422                	lw	s0,8(sp)
  56:	40b2                	lw	ra,12(sp)
  58:	4492                	lw	s1,4(sp)

0000005a <.LVL21>:
  5a:	834a                	mv	t1,s2
  5c:	4902                	lw	s2,0(sp)

0000005e <.LVL22>:
  5e:	008005b7          	lui	a1,0x800
  62:	4501                	li	a0,0
  64:	0141                	addi	sp,sp,16
  66:	8302                	jr	t1

00000068 <.L19>:
  68:	00476713          	ori	a4,a4,4
  6c:	9bdd                	andi	a5,a5,-9
  6e:	00000937          	lui	s2,0x0
			6e: R_RISCV_HI20	ps_enable_cfm
			6e: R_RISCV_RELAX	*ABS*
  72:	02e40223          	sb	a4,36(s0)
  76:	c05c                	sw	a5,4(s0)
  78:	00090913          	mv	s2,s2
			78: R_RISCV_LO12_I	ps_enable_cfm
			78: R_RISCV_RELAX	*ABS*
  7c:	bf65                	j	34 <.L20>
			7c: R_RISCV_RVC_JUMP	.L20

0000007e <.L25>:
  7e:	0564c783          	lbu	a5,86(s1) # 56 <.L21+0xa>
  82:	eb8d                	bnez	a5,b4 <.L23>
			82: R_RISCV_RVC_BRANCH	.L23
  84:	0584c783          	lbu	a5,88(s1)
  88:	c795                	beqz	a5,b4 <.L23>
			88: R_RISCV_RVC_BRANCH	.L23
  8a:	8526                	mv	a0,s1
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	chan_is_on_channel
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.L25+0xe>

00000094 <.LVL25>:
  94:	c105                	beqz	a0,b4 <.L23>
			94: R_RISCV_RVC_BRANCH	.L23
  96:	00844783          	lbu	a5,8(s0)
  9a:	0604c503          	lbu	a0,96(s1)
  9e:	04048fa3          	sb	zero,95(s1)
  a2:	0785                	addi	a5,a5,1
  a4:	8626                	mv	a2,s1
  a6:	85ca                	mv	a1,s2
  a8:	00f40423          	sb	a5,8(s0)
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	txl_frame_send_null_frame
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL25+0x18>

000000b4 <.L23>:
  b4:	4084                	lw	s1,0(s1)
  b6:	bf59                	j	4c <.L21>
			b6: R_RISCV_RVC_JUMP	.L21

000000b8 <.L18>:
  b8:	40b2                	lw	ra,12(sp)
  ba:	4422                	lw	s0,8(sp)
  bc:	4492                	lw	s1,4(sp)

000000be <.LVL28>:
  be:	4902                	lw	s2,0(sp)

000000c0 <.LVL29>:
  c0:	0141                	addi	sp,sp,16
  c2:	8082                	ret

Disassembly of section .text.ps_send_pspoll:

00000000 <ps_send_pspoll>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	06054a03          	lbu	s4,96(a0)
  12:	4581                	li	a1,0
  14:	89aa                	mv	s3,a0
  16:	0028                	addi	a0,sp,8

00000018 <.LVL32>:
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	phy_get_channel
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL32>

00000020 <.LVL33>:
  20:	00814503          	lbu	a0,8(sp)
  24:	45c1                	li	a1,16
  26:	00a03533          	snez	a0,a0
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	txl_frame_get
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL33+0xa>

00000032 <.LVL34>:
  32:	c15d                	beqz	a0,d8 <.L36>
			32: R_RISCV_RVC_BRANCH	.L36
  34:	84aa                	mv	s1,a0
  36:	85aa                	mv	a1,a0
  38:	854e                	mv	a0,s3

0000003a <.LVL35>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	tpc_update_frame_tx_power
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL35>

00000042 <.LBB134>:
  42:	0684a903          	lw	s2,104(s1)

00000046 <.LBB137>:
  46:	fa400793          	li	a5,-92
  4a:	00000437          	lui	s0,0x0
			4a: R_RISCV_HI20	sta_info_tab
			4a: R_RISCV_RELAX	*ABS*
  4e:	14f90623          	sb	a5,332(s2) # 14c <.LASF156>
  52:	1b000793          	li	a5,432
  56:	02fa0a33          	mul	s4,s4,a5
  5a:	00040413          	mv	s0,s0
			5a: R_RISCV_LO12_I	sta_info_tab
			5a: R_RISCV_RELAX	*ABS*
  5e:	140906a3          	sb	zero,333(s2)
  62:	6731                	lui	a4,0xc
  64:	4619                	li	a2,6
  66:	15090513          	addi	a0,s2,336
  6a:	9452                	add	s0,s0,s4
  6c:	01845783          	lhu	a5,24(s0) # 18 <.LVL32>
  70:	01e40593          	addi	a1,s0,30
  74:	8fd9                	or	a5,a5,a4
  76:	14f90723          	sb	a5,334(s2)
  7a:	83a1                	srli	a5,a5,0x8
  7c:	14f907a3          	sb	a5,335(s2)
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	memcpy
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LBB137+0x3a>

00000088 <.LVL39>:
  88:	4619                	li	a2,6
  8a:	05098593          	addi	a1,s3,80
  8e:	15690513          	addi	a0,s2,342
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	memcpy
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LVL39+0xa>

0000009a <.LVL40>:
  9a:	54f4                	lw	a3,108(s1)

0000009c <.LVL41>:
  9c:	10000737          	lui	a4,0x10000
  a0:	05370713          	addi	a4,a4,83 # 10000053 <.LASF480+0xfffcde6>
  a4:	5edc                	lw	a5,60(a3)
  a6:	458d                	li	a1,3
  a8:	8526                	mv	a0,s1
  aa:	8fd9                	or	a5,a5,a4
  ac:	dedc                	sw	a5,60(a3)
  ae:	01a44783          	lbu	a5,26(s0)
  b2:	02f487a3          	sb	a5,47(s1)
  b6:	01b44783          	lbu	a5,27(s0)
  ba:	02f48823          	sb	a5,48(s1)
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	txl_frame_push
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL41+0x22>

000000c6 <.LVL42>:
  c6:	4501                	li	a0,0

000000c8 <.L35>:
  c8:	50b2                	lw	ra,44(sp)
  ca:	5422                	lw	s0,40(sp)
  cc:	5492                	lw	s1,36(sp)
  ce:	5902                	lw	s2,32(sp)
  d0:	49f2                	lw	s3,28(sp)

000000d2 <.LVL44>:
  d2:	4a62                	lw	s4,24(sp)
  d4:	6145                	addi	sp,sp,48
  d6:	8082                	ret

000000d8 <.L36>:
  d8:	4505                	li	a0,1

000000da <.LVL46>:
  da:	b7fd                	j	c8 <.L35>
			da: R_RISCV_RVC_JUMP	.L35

Disassembly of section .text.ps_init:

00000000 <ps_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040513          	mv	a0,s0
			8: R_RISCV_LO12_I	ps_env
			8: R_RISCV_RELAX	*ABS*
   c:	02800613          	li	a2,40
  10:	4581                	li	a1,0
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	memset
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <ps_init+0x14>

0000001c <.LVL47>:
  1c:	000007b7          	lui	a5,0x0
			1c: R_RISCV_HI20	ps_uapsd_timer_handle
			1c: R_RISCV_RELAX	*ABS*
  20:	00040413          	mv	s0,s0
			20: R_RISCV_LO12_I	ps_env
			20: R_RISCV_RELAX	*ABS*
  24:	00078793          	mv	a5,a5
			24: R_RISCV_LO12_I	ps_uapsd_timer_handle
			24: R_RISCV_RELAX	*ABS*
  28:	c81c                	sw	a5,16(s0)
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret

Disassembly of section .text.ps_set_mode:

00000000 <ps_set_mode>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	00040713          	mv	a4,s0
			8: R_RISCV_LO12_I	ps_env
			8: R_RISCV_RELAX	*ABS*
   c:	ce06                	sw	ra,28(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	02474783          	lbu	a5,36(a4)
  18:	00b71123          	sh	a1,2(a4)
  1c:	00040413          	mv	s0,s0
			1c: R_RISCV_LO12_I	ps_env
			1c: R_RISCV_RELAX	*ABS*
  20:	0017f693          	andi	a3,a5,1
  24:	c28d                	beqz	a3,46 <.L41>
			24: R_RISCV_RVC_BRANCH	.L41
  26:	0067f693          	andi	a3,a5,6
  2a:	ce91                	beqz	a3,46 <.L41>
			2a: R_RISCV_RVC_BRANCH	.L41
  2c:	0107e793          	ori	a5,a5,16
  30:	02a702a3          	sb	a0,37(a4)
  34:	02f70223          	sb	a5,36(a4)

00000038 <.L40>:
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)
  3c:	44d2                	lw	s1,20(sp)
  3e:	4942                	lw	s2,16(sp)
  40:	49b2                	lw	s3,12(sp)
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L41>:
  46:	e139                	bnez	a0,8c <.L43>
			46: R_RISCV_RVC_BRANCH	.L43
  48:	00000937          	lui	s2,0x0
			48: R_RISCV_HI20	ps_disable_cfm
			48: R_RISCV_RELAX	*ABS*
  4c:	02040223          	sb	zero,36(s0) # 24 <ps_set_mode+0x24>
  50:	00090913          	mv	s2,s2
			50: R_RISCV_LO12_I	ps_disable_cfm
			50: R_RISCV_RELAX	*ABS*
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	blmac_pwr_mgt_setf
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.L41+0xe>

0000005c <.L44>:
  5c:	000007b7          	lui	a5,0x0
			5c: R_RISCV_HI20	vif_mgmt_env+0x8
			5c: R_RISCV_RELAX	*ABS*+0x8
  60:	0087a483          	lw	s1,8(a5) # 8 <ps_set_mode+0x8>
			60: R_RISCV_LO12_I	vif_mgmt_env+0x8
			60: R_RISCV_RELAX	*ABS*+0x8
  64:	00040423          	sb	zero,8(s0)
  68:	00040ea3          	sb	zero,29(s0)

0000006c <.LVL52>:
  6c:	4985                	li	s3,1

0000006e <.L46>:
  6e:	e0a1                	bnez	s1,ae <.L51>
			6e: R_RISCV_RVC_BRANCH	.L51
  70:	00844783          	lbu	a5,8(s0)
  74:	f3f1                	bnez	a5,38 <.L40>
			74: R_RISCV_RVC_BRANCH	.L40
  76:	4462                	lw	s0,24(sp)
  78:	40f2                	lw	ra,28(sp)
  7a:	44d2                	lw	s1,20(sp)

0000007c <.LVL53>:
  7c:	49b2                	lw	s3,12(sp)
  7e:	834a                	mv	t1,s2
  80:	4942                	lw	s2,16(sp)

00000082 <.LVL54>:
  82:	008005b7          	lui	a1,0x800
  86:	4501                	li	a0,0
  88:	6105                	addi	sp,sp,32
  8a:	8302                	jr	t1

0000008c <.L43>:
  8c:	4709                	li	a4,2
  8e:	00e51663          	bne	a0,a4,9a <.L45>
			8e: R_RISCV_BRANCH	.L45
  92:	0017e793          	ori	a5,a5,1
  96:	02f40223          	sb	a5,36(s0)

0000009a <.L45>:
  9a:	4505                	li	a0,1

0000009c <.LVL56>:
  9c:	00000937          	lui	s2,0x0
			9c: R_RISCV_HI20	ps_enable_cfm
			9c: R_RISCV_RELAX	*ABS*
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	blmac_pwr_mgt_setf
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL56+0x4>

000000a8 <.LVL57>:
  a8:	00090913          	mv	s2,s2
			a8: R_RISCV_LO12_I	ps_enable_cfm
			a8: R_RISCV_RELAX	*ABS*
  ac:	bf45                	j	5c <.L44>
			ac: R_RISCV_RVC_JUMP	.L44

000000ae <.L51>:
  ae:	0564c783          	lbu	a5,86(s1)
  b2:	ef95                	bnez	a5,ee <.L48>
			b2: R_RISCV_RVC_BRANCH	.L48
  b4:	0584c783          	lbu	a5,88(s1)
  b8:	cb9d                	beqz	a5,ee <.L48>
			b8: R_RISCV_RVC_BRANCH	.L48
  ba:	8526                	mv	a0,s1
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	chan_is_on_channel
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.L51+0xe>

000000c4 <.LVL59>:
  c4:	c50d                	beqz	a0,ee <.L48>
			c4: R_RISCV_RVC_BRANCH	.L48
  c6:	00844783          	lbu	a5,8(s0)
  ca:	04048fa3          	sb	zero,95(s1)
  ce:	0785                	addi	a5,a5,1
  d0:	00f40423          	sb	a5,8(s0)
  d4:	0684c783          	lbu	a5,104(s1)
  d8:	c399                	beqz	a5,de <.L50>
			d8: R_RISCV_RVC_BRANCH	.L50
  da:	01340ea3          	sb	s3,29(s0)

000000de <.L50>:
  de:	0604c503          	lbu	a0,96(s1)
  e2:	8626                	mv	a2,s1
  e4:	85ca                	mv	a1,s2
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	txl_frame_send_null_frame
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.L50+0x8>

000000ee <.L48>:
  ee:	4084                	lw	s1,0(s1)
  f0:	bfbd                	j	6e <.L46>
			f0: R_RISCV_RVC_JUMP	.L46

Disassembly of section .text.ps_enable_cfm:

00000000 <ps_enable_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)

00000008 <.LBB168>:
   8:	00859793          	slli	a5,a1,0x8
   c:	0207c163          	bltz	a5,2e <.L69>
			c: R_RISCV_BRANCH	.L69
  10:	05f54783          	lbu	a5,95(a0)
  14:	470d                	li	a4,3
  16:	862a                	mv	a2,a0
  18:	0785                	addi	a5,a5,1
  1a:	0ff7f793          	andi	a5,a5,255
  1e:	04f50fa3          	sb	a5,95(a0)
  22:	06e79c63          	bne	a5,a4,9a <.L70>
			22: R_RISCV_BRANCH	.L70
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	mm_send_connection_loss_ind
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBB168+0x1e>

0000002e <.L69>:
  2e:	00000437          	lui	s0,0x0
			2e: R_RISCV_HI20	ps_env
			2e: R_RISCV_RELAX	*ABS*
  32:	00040793          	mv	a5,s0
			32: R_RISCV_LO12_I	ps_env
			32: R_RISCV_RELAX	*ABS*
  36:	0087c783          	lbu	a5,8(a5)
  3a:	00040413          	mv	s0,s0
			3a: R_RISCV_LO12_I	ps_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	efa5                	bnez	a5,b6 <.L71>
			3e: R_RISCV_RVC_BRANCH	.L71

00000040 <.L74>:
  40:	01d44783          	lbu	a5,29(s0) # 1d <.LBB168+0x15>
  44:	c79d                	beqz	a5,72 <.L73>
			44: R_RISCV_RVC_BRANCH	.L73

00000046 <.LBB171>:
  46:	000007b7          	lui	a5,0x0
			46: R_RISCV_HI20	vif_mgmt_env+0x8
			46: R_RISCV_RELAX	*ABS*+0x8
  4a:	0087a483          	lw	s1,8(a5) # 8 <.LBB168>
			4a: R_RISCV_LO12_I	vif_mgmt_env+0x8
			4a: R_RISCV_RELAX	*ABS*+0x8

0000004e <.LBB172>:
  4e:	44b007b7          	lui	a5,0x44b00
  52:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF480+0x44afceb3>

00000056 <.LBE172>:
  56:	501c                	lw	a5,32(s0)
  58:	00000537          	lui	a0,0x0
			58: R_RISCV_HI20	ps_env+0xc
			58: R_RISCV_RELAX	*ABS*+0xc
  5c:	00c50513          	addi	a0,a0,12 # c <.LBB168+0x4>
			5c: R_RISCV_LO12_I	ps_env+0xc
			5c: R_RISCV_RELAX	*ABS*+0xc
  60:	95be                	add	a1,a1,a5
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	mm_timer_set
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LBE172+0xc>

0000006a <.LVL66>:
  6a:	4785                	li	a5,1
  6c:	00f40e23          	sb	a5,28(s0)

00000070 <.L78>:
  70:	ecb1                	bnez	s1,cc <.L80>
			70: R_RISCV_RVC_BRANCH	.L80

00000072 <.L73>:
  72:	02444783          	lbu	a5,36(s0)
  76:	4715                	li	a4,5
  78:	0057f693          	andi	a3,a5,5
  7c:	06e68663          	beq	a3,a4,e8 <.L76>
			7c: R_RISCV_BRANCH	.L76
  80:	00245583          	lhu	a1,2(s0)
  84:	4785                	li	a5,1
  86:	4601                	li	a2,0
  88:	03200513          	li	a0,50
  8c:	00f40023          	sb	a5,0(s0)
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	ke_msg_send_basic
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.L73+0x1e>

00000098 <.LVL68>:
  98:	a899                	j	ee <.L81>
			98: R_RISCV_RVC_JUMP	.L81

0000009a <.L70>:
  9a:	4422                	lw	s0,8(sp)
  9c:	40b2                	lw	ra,12(sp)
  9e:	4492                	lw	s1,4(sp)

000000a0 <.LBB187>:
  a0:	06054503          	lbu	a0,96(a0)

000000a4 <.LVL70>:
  a4:	000005b7          	lui	a1,0x0
			a4: R_RISCV_HI20	ps_enable_cfm
			a4: R_RISCV_RELAX	*ABS*

000000a8 <.LBB188>:
  a8:	00058593          	mv	a1,a1
			a8: R_RISCV_LO12_I	ps_enable_cfm
			a8: R_RISCV_RELAX	*ABS*

000000ac <.LBE188>:
  ac:	0141                	addi	sp,sp,16

000000ae <.LBB189>:
  ae:	00000317          	auipc	t1,0x0
			ae: R_RISCV_CALL	txl_frame_send_null_frame
			ae: R_RISCV_RELAX	*ABS*
  b2:	00030067          	jr	t1 # ae <.LBB189>

000000b6 <.L71>:
  b6:	17fd                	addi	a5,a5,-1
  b8:	0ff7f793          	andi	a5,a5,255
  bc:	00f40423          	sb	a5,8(s0)
  c0:	d3c1                	beqz	a5,40 <.L74>
			c0: R_RISCV_RVC_BRANCH	.L74

000000c2 <.L68>:
  c2:	40b2                	lw	ra,12(sp)
  c4:	4422                	lw	s0,8(sp)
  c6:	4492                	lw	s1,4(sp)
  c8:	0141                	addi	sp,sp,16
  ca:	8082                	ret

000000cc <.L80>:
  cc:	0564c783          	lbu	a5,86(s1)
  d0:	eb91                	bnez	a5,e4 <.L79>
			d0: R_RISCV_RVC_BRANCH	.L79
  d2:	0584c783          	lbu	a5,88(s1)
  d6:	c799                	beqz	a5,e4 <.L79>
			d6: R_RISCV_RVC_BRANCH	.L79
  d8:	0684c783          	lbu	a5,104(s1)
  dc:	c781                	beqz	a5,e4 <.L79>
			dc: R_RISCV_RVC_BRANCH	.L79
  de:	40dc                	lw	a5,4(s1)
  e0:	9bdd                	andi	a5,a5,-9
  e2:	c0dc                	sw	a5,4(s1)

000000e4 <.L79>:
  e4:	4084                	lw	s1,0(s1)

000000e6 <.LBE178>:
  e6:	b769                	j	70 <.L78>
			e6: R_RISCV_RVC_JUMP	.L78

000000e8 <.L76>:
  e8:	9bcd                	andi	a5,a5,-13
  ea:	02f40223          	sb	a5,36(s0)

000000ee <.L81>:
  ee:	02444783          	lbu	a5,36(s0)
  f2:	0107f713          	andi	a4,a5,16
  f6:	d771                	beqz	a4,c2 <.L68>
			f6: R_RISCV_RVC_BRANCH	.L68
  f8:	9bbd                	andi	a5,a5,-17
  fa:	02f40223          	sb	a5,36(s0)
  fe:	00245583          	lhu	a1,2(s0)
 102:	02544503          	lbu	a0,37(s0)

00000106 <.LBE191>:
 106:	4422                	lw	s0,8(sp)
 108:	40b2                	lw	ra,12(sp)
 10a:	4492                	lw	s1,4(sp)
 10c:	0141                	addi	sp,sp,16

0000010e <.LBB192>:
 10e:	00000317          	auipc	t1,0x0
			10e: R_RISCV_CALL	ps_set_mode
			10e: R_RISCV_RELAX	*ABS*
 112:	00030067          	jr	t1 # 10e <.LBB192>

Disassembly of section .text.ps_disable_cfm:

00000000 <ps_disable_cfm>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB214>:
   6:	00859793          	slli	a5,a1,0x8
   a:	0207c163          	bltz	a5,2c <.L98>
			a: R_RISCV_BRANCH	.L98
   e:	05f54783          	lbu	a5,95(a0)
  12:	470d                	li	a4,3
  14:	862a                	mv	a2,a0
  16:	0785                	addi	a5,a5,1
  18:	0ff7f793          	andi	a5,a5,255
  1c:	04f50fa3          	sb	a5,95(a0)
  20:	04e79c63          	bne	a5,a4,78 <.L99>
			20: R_RISCV_BRANCH	.L99
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	mm_send_connection_loss_ind
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LBB214+0x1e>

0000002c <.L98>:
  2c:	00000437          	lui	s0,0x0
			2c: R_RISCV_HI20	ps_env
			2c: R_RISCV_RELAX	*ABS*
  30:	00040793          	mv	a5,s0
			30: R_RISCV_LO12_I	ps_env
			30: R_RISCV_RELAX	*ABS*
  34:	0087c783          	lbu	a5,8(a5)
  38:	00040413          	mv	s0,s0
			38: R_RISCV_LO12_I	ps_env
			38: R_RISCV_RELAX	*ABS*
  3c:	ebb9                	bnez	a5,92 <.L100>
			3c: R_RISCV_RVC_BRANCH	.L100

0000003e <.L103>:
  3e:	00000537          	lui	a0,0x0
			3e: R_RISCV_HI20	ps_env+0xc
			3e: R_RISCV_RELAX	*ABS*+0xc
  42:	00c50513          	addi	a0,a0,12 # c <.LBB214+0x6>
			42: R_RISCV_LO12_I	ps_env+0xc
			42: R_RISCV_RELAX	*ABS*+0xc
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	mm_timer_clear
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L103+0x8>

0000004e <.LVL80>:
  4e:	02444783          	lbu	a5,36(s0) # 24 <.LBB214+0x1e>
  52:	00040e23          	sb	zero,28(s0)
  56:	470d                	li	a4,3
  58:	0037f693          	andi	a3,a5,3
  5c:	04e68563          	beq	a3,a4,a6 <.L101>
			5c: R_RISCV_BRANCH	.L101
  60:	00245583          	lhu	a1,2(s0)
  64:	4601                	li	a2,0
  66:	03200513          	li	a0,50
  6a:	00040023          	sb	zero,0(s0)
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ke_msg_send_basic
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL80+0x20>

00000076 <.LVL81>:
  76:	a82d                	j	b0 <.L105>
			76: R_RISCV_RVC_JUMP	.L105

00000078 <.L99>:
  78:	4422                	lw	s0,8(sp)
  7a:	40b2                	lw	ra,12(sp)

0000007c <.LBB220>:
  7c:	06054503          	lbu	a0,96(a0)

00000080 <.LVL83>:
  80:	000005b7          	lui	a1,0x0
			80: R_RISCV_HI20	ps_disable_cfm
			80: R_RISCV_RELAX	*ABS*

00000084 <.LBB221>:
  84:	00058593          	mv	a1,a1
			84: R_RISCV_LO12_I	ps_disable_cfm
			84: R_RISCV_RELAX	*ABS*

00000088 <.LBE221>:
  88:	0141                	addi	sp,sp,16

0000008a <.LBB222>:
  8a:	00000317          	auipc	t1,0x0
			8a: R_RISCV_CALL	txl_frame_send_null_frame
			8a: R_RISCV_RELAX	*ABS*
  8e:	00030067          	jr	t1 # 8a <.LBB222>

00000092 <.L100>:
  92:	17fd                	addi	a5,a5,-1
  94:	0ff7f793          	andi	a5,a5,255
  98:	00f40423          	sb	a5,8(s0)
  9c:	d3cd                	beqz	a5,3e <.L103>
			9c: R_RISCV_RVC_BRANCH	.L103

0000009e <.L97>:
  9e:	40b2                	lw	ra,12(sp)
  a0:	4422                	lw	s0,8(sp)
  a2:	0141                	addi	sp,sp,16
  a4:	8082                	ret

000000a6 <.L101>:
  a6:	9bf5                	andi	a5,a5,-3
  a8:	0087e793          	ori	a5,a5,8
  ac:	02f40223          	sb	a5,36(s0)

000000b0 <.L105>:
  b0:	02444783          	lbu	a5,36(s0)
  b4:	0107f713          	andi	a4,a5,16
  b8:	d37d                	beqz	a4,9e <.L97>
			b8: R_RISCV_RVC_BRANCH	.L97
  ba:	9bbd                	andi	a5,a5,-17
  bc:	02f40223          	sb	a5,36(s0)
  c0:	00245583          	lhu	a1,2(s0)
  c4:	02544503          	lbu	a0,37(s0)

000000c8 <.LBE223>:
  c8:	4422                	lw	s0,8(sp)
  ca:	40b2                	lw	ra,12(sp)
  cc:	0141                	addi	sp,sp,16

000000ce <.LBB224>:
  ce:	00000317          	auipc	t1,0x0
			ce: R_RISCV_CALL	ps_set_mode
			ce: R_RISCV_RELAX	*ABS*
  d2:	00030067          	jr	t1 # ce <.LBB224>

Disassembly of section .text.ps_polling_frame:

00000000 <ps_polling_frame>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	ps_send_pspoll
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <ps_polling_frame>

Disassembly of section .text.ps_check_beacon:

00000000 <ps_check_beacon>:
   0:	06064883          	lbu	a7,96(a2)
   4:	1b000713          	li	a4,432
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	sta_info_tab
			8: R_RISCV_RELAX	*ABS*
   c:	02e88733          	mul	a4,a7,a4
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	sta_info_tab
			10: R_RISCV_RELAX	*ABS*
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	ps_env
			14: R_RISCV_RELAX	*ABS*

00000018 <.LVL91>:
  18:	00058593          	mv	a1,a1
			18: R_RISCV_LO12_I	ps_env
			18: R_RISCV_RELAX	*ABS*
  1c:	0005c803          	lbu	a6,0(a1) # 0 <ps_check_beacon>
  20:	97ba                	add	a5,a5,a4
  22:	0187d703          	lhu	a4,24(a5) # 18 <.LVL91>

00000026 <.LVL92>:
  26:	425c                	lw	a5,4(a2)
  28:	ffe7f693          	andi	a3,a5,-2
  2c:	c254                	sw	a3,4(a2)
  2e:	0a080c63          	beqz	a6,e6 <.L132>
			2e: R_RISCV_BRANCH	.L132
  32:	0245c583          	lbu	a1,36(a1)
  36:	89a1                	andi	a1,a1,8
  38:	e5dd                	bnez	a1,e6 <.L132>
			38: R_RISCV_RVC_BRANCH	.L132
  3a:	c555                	beqz	a0,e6 <.L132>
			3a: R_RISCV_RVC_BRANCH	.L132
  3c:	05e64583          	lbu	a1,94(a2)
  40:	e981                	bnez	a1,50 <.L120>
			40: R_RISCV_RVC_BRANCH	.L120
  42:	00454583          	lbu	a1,4(a0)
  46:	8985                	andi	a1,a1,1
  48:	c9ad                	beqz	a1,ba <.L121>
			48: R_RISCV_RVC_BRANCH	.L121
  4a:	0026e693          	ori	a3,a3,2
  4e:	c254                	sw	a3,4(a2)

00000050 <.L120>:
  50:	00454683          	lbu	a3,4(a0)
  54:	06864803          	lbu	a6,104(a2)
  58:	00375793          	srli	a5,a4,0x3

0000005c <.LBB237>:
  5c:	0fe6f693          	andi	a3,a3,254

00000060 <.LBB239>:
  60:	00f87813          	andi	a6,a6,15
  64:	06d7e863          	bltu	a5,a3,d4 <.L122>
			64: R_RISCV_BRANCH	.L122
  68:	00154583          	lbu	a1,1(a0)
  6c:	15f1                	addi	a1,a1,-4
  6e:	95b6                	add	a1,a1,a3
  70:	06f5e263          	bltu	a1,a5,d4 <.L122>
			70: R_RISCV_BRANCH	.L122

00000074 <.LBB241>:
  74:	97aa                	add	a5,a5,a0

00000076 <.LVL98>:
  76:	8f95                	sub	a5,a5,a3
  78:	0057c783          	lbu	a5,5(a5)
  7c:	00777693          	andi	a3,a4,7

00000080 <.LVL99>:
  80:	4705                	li	a4,1

00000082 <.LVL100>:
  82:	00d71733          	sll	a4,a4,a3
  86:	8ff9                	and	a5,a5,a4
  88:	c7b1                	beqz	a5,d4 <.L122>
			88: R_RISCV_RVC_BRANCH	.L122

0000008a <.LBE235>:
  8a:	1141                	addi	sp,sp,-16
  8c:	c422                	sw	s0,8(sp)

0000008e <.LVL101>:
  8e:	c606                	sw	ra,12(sp)
  90:	47bd                	li	a5,15
  92:	8432                	mv	s0,a2

00000094 <.LBB244>:
  94:	02f81663          	bne	a6,a5,c0 <.L123>
			94: R_RISCV_BRANCH	.L123

00000098 <.LVL103>:
  98:	4681                	li	a3,0
  9a:	4601                	li	a2,0
  9c:	459d                	li	a1,7
  9e:	8546                	mv	a0,a7

000000a0 <.LVL104>:
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	txl_frame_send_qosnull_frame
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL104>

000000a8 <.LVL105>:
  a8:	e509                	bnez	a0,b2 <.L116>
			a8: R_RISCV_RVC_BRANCH	.L116
  aa:	405c                	lw	a5,4(s0)
  ac:	0087e793          	ori	a5,a5,8

000000b0 <.L135>:
  b0:	c05c                	sw	a5,4(s0)

000000b2 <.L116>:
  b2:	40b2                	lw	ra,12(sp)
  b4:	4422                	lw	s0,8(sp)

000000b6 <.LVL106>:
  b6:	0141                	addi	sp,sp,16
  b8:	8082                	ret

000000ba <.L121>:
  ba:	9bf1                	andi	a5,a5,-4
  bc:	c25c                	sw	a5,4(a2)
  be:	bf49                	j	50 <.L120>
			be: R_RISCV_RVC_JUMP	.L120

000000c0 <.L123>:
  c0:	8532                	mv	a0,a2

000000c2 <.LVL109>:
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	ps_send_pspoll
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL109>

000000ca <.LVL110>:
  ca:	f565                	bnez	a0,b2 <.L116>
			ca: R_RISCV_RVC_BRANCH	.L116
  cc:	405c                	lw	a5,4(s0)
  ce:	0047e793          	ori	a5,a5,4
  d2:	bff9                	j	b0 <.L135>
			d2: R_RISCV_RVC_JUMP	.L135

000000d4 <.L122>:
  d4:	473d                	li	a4,15
  d6:	425c                	lw	a5,4(a2)
  d8:	00e81563          	bne	a6,a4,e2 <.L124>
			d8: R_RISCV_BRANCH	.L124
  dc:	9bdd                	andi	a5,a5,-9

000000de <.L136>:
  de:	c25c                	sw	a5,4(a2)

000000e0 <.LVL112>:
  e0:	8082                	ret

000000e2 <.L124>:
  e2:	9bed                	andi	a5,a5,-5
  e4:	bfed                	j	de <.L136>
			e4: R_RISCV_RVC_JUMP	.L136

000000e6 <.L132>:
  e6:	8082                	ret

Disassembly of section .text.ps_check_frame:

00000000 <ps_check_frame>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)

00000004 <.LVL116>:
   4:	00000937          	lui	s2,0x0
			4: R_RISCV_HI20	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	00094783          	lbu	a5,0(s2) # 0 <ps_check_frame>
			8: R_RISCV_LO12_I	ps_env
			8: R_RISCV_RELAX	*ABS*
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	ca26                	sw	s1,20(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c78d                	beqz	a5,3e <.L137>
			14: R_RISCV_RVC_BRANCH	.L137
  16:	00154483          	lbu	s1,1(a0)
  1a:	00054783          	lbu	a5,0(a0)
  1e:	04a2                	slli	s1,s1,0x8
  20:	8cdd                	or	s1,s1,a5
  22:	00454783          	lbu	a5,4(a0)
  26:	8b85                	andi	a5,a5,1
  28:	c395                	beqz	a5,4c <.L140>
			28: R_RISCV_RVC_BRANCH	.L140
  2a:	01249793          	slli	a5,s1,0x12
  2e:	0007d563          	bgez	a5,38 <.L141>
			2e: R_RISCV_BRANCH	.L141
  32:	05e64783          	lbu	a5,94(a2)
  36:	c781                	beqz	a5,3e <.L137>
			36: R_RISCV_RVC_BRANCH	.L137

00000038 <.L141>:
  38:	425c                	lw	a5,4(a2)
  3a:	9bf5                	andi	a5,a5,-3

0000003c <.L168>:
  3c:	c25c                	sw	a5,4(a2)

0000003e <.L137>:
  3e:	40f2                	lw	ra,28(sp)
  40:	4462                	lw	s0,24(sp)
  42:	44d2                	lw	s1,20(sp)
  44:	4942                	lw	s2,16(sp)
  46:	49b2                	lw	s3,12(sp)
  48:	6105                	addi	sp,sp,32
  4a:	8082                	ret

0000004c <.L140>:
  4c:	2005f593          	andi	a1,a1,512

00000050 <.LVL120>:
  50:	f5fd                	bnez	a1,3e <.L137>
			50: R_RISCV_RVC_BRANCH	.L137
  52:	00090913          	mv	s2,s2
			52: R_RISCV_LO12_I	ps_env
			52: R_RISCV_RELAX	*ABS*

00000056 <.LBB260>:
  56:	01d94983          	lbu	s3,29(s2)
  5a:	06098e63          	beqz	s3,d6 <.L143>
			5a: R_RISCV_BRANCH	.L143
  5e:	0884f793          	andi	a5,s1,136
  62:	08800713          	li	a4,136
  66:	04e79c63          	bne	a5,a4,be <.L144>
			66: R_RISCV_BRANCH	.L144

0000006a <.LBB254>:
  6a:	3004f793          	andi	a5,s1,768
  6e:	30000713          	li	a4,768
  72:	04e79163          	bne	a5,a4,b4 <.L145>
			72: R_RISCV_BRANCH	.L145

00000076 <.LBB247>:
  76:	01e54703          	lbu	a4,30(a0)
  7a:	01f54783          	lbu	a5,31(a0)

0000007e <.L167>:
  7e:	07a2                	slli	a5,a5,0x8
  80:	8fd9                	or	a5,a5,a4

00000082 <.LBE248>:
  82:	000005b7          	lui	a1,0x0
			82: R_RISCV_HI20	mac_tid2ac
			82: R_RISCV_RELAX	*ABS*
  86:	0077f693          	andi	a3,a5,7
  8a:	00058593          	mv	a1,a1
			8a: R_RISCV_LO12_I	mac_tid2ac
			8a: R_RISCV_RELAX	*ABS*
  8e:	96ae                	add	a3,a3,a1
  90:	06864703          	lbu	a4,104(a2)
  94:	0006c683          	lbu	a3,0(a3)
  98:	00d75733          	srl	a4,a4,a3
  9c:	8b05                	andi	a4,a4,1
  9e:	cb25                	beqz	a4,10e <.L150>
			9e: R_RISCV_RVC_BRANCH	.L150

000000a0 <.LBB249>:
  a0:	44b00737          	lui	a4,0x44b00
  a4:	12072703          	lw	a4,288(a4) # 44b00120 <.LASF480+0x44afceb3>

000000a8 <.LBE249>:
  a8:	8bc1                	andi	a5,a5,16

000000aa <.LVL126>:
  aa:	d278                	sw	a4,100(a2)
  ac:	dbc9                	beqz	a5,3e <.L137>
			ac: R_RISCV_RVC_BRANCH	.L137
  ae:	425c                	lw	a5,4(a2)
  b0:	9bdd                	andi	a5,a5,-9
  b2:	b769                	j	3c <.L168>
			b2: R_RISCV_RVC_JUMP	.L168

000000b4 <.L145>:
  b4:	01854703          	lbu	a4,24(a0)
  b8:	01954783          	lbu	a5,25(a0)
  bc:	b7c9                	j	7e <.L167>
			bc: R_RISCV_RVC_JUMP	.L167

000000be <.L144>:
  be:	00c4f793          	andi	a5,s1,12
  c2:	e7b1                	bnez	a5,10e <.L150>
			c2: R_RISCV_RVC_BRANCH	.L150
  c4:	06864783          	lbu	a5,104(a2)
  c8:	8ba1                	andi	a5,a5,8
  ca:	c3b1                	beqz	a5,10e <.L150>
			ca: R_RISCV_RVC_BRANCH	.L150

000000cc <.LBB256>:
  cc:	44b007b7          	lui	a5,0x44b00
  d0:	1207a783          	lw	a5,288(a5) # 44b00120 <.LASF480+0x44afceb3>

000000d4 <.LBE256>:
  d4:	d27c                	sw	a5,100(a2)

000000d6 <.L143>:
  d6:	05764503          	lbu	a0,87(a2)

000000da <.LVL131>:
  da:	4585                	li	a1,1
  dc:	8432                	mv	s0,a2

000000de <.LVL132>:
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	td_pck_ps_ind
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LVL132>

000000e6 <.LVL133>:
  e6:	f4099ce3          	bnez	s3,3e <.L137>
			e6: R_RISCV_BRANCH	.L137

000000ea <.LVL134>:
  ea:	01249793          	slli	a5,s1,0x12
  ee:	0007dc63          	bgez	a5,106 <.L147>
			ee: R_RISCV_BRANCH	.L147
  f2:	02494783          	lbu	a5,36(s2)
  f6:	8ba1                	andi	a5,a5,8
  f8:	f3b9                	bnez	a5,3e <.L137>
			f8: R_RISCV_RVC_BRANCH	.L137
  fa:	8522                	mv	a0,s0
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	ps_send_pspoll
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LVL134+0x12>

00000104 <.LVL135>:
 104:	dd0d                	beqz	a0,3e <.L137>
			104: R_RISCV_RVC_BRANCH	.L137

00000106 <.L147>:
 106:	405c                	lw	a5,4(s0)
 108:	9bed                	andi	a5,a5,-5
 10a:	c05c                	sw	a5,4(s0)

0000010c <.LBE262>:
 10c:	bf0d                	j	3e <.L137>
			10c: R_RISCV_RVC_JUMP	.L137

0000010e <.L150>:
 10e:	4981                	li	s3,0
 110:	b7d9                	j	d6 <.L143>
			110: R_RISCV_RVC_JUMP	.L143

Disassembly of section .text.ps_check_tx_frame:

00000000 <ps_check_tx_frame>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ps_env
			0: R_RISCV_RELAX	*ABS*
   4:	0007c783          	lbu	a5,0(a5) # 0 <ps_check_tx_frame>
			4: R_RISCV_LO12_I	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	cfbd                	beqz	a5,86 <.L169>
			8: R_RISCV_RVC_BRANCH	.L169
   a:	0ff00793          	li	a5,255
   e:	06f50c63          	beq	a0,a5,86 <.L169>
			e: R_RISCV_BRANCH	.L169
  12:	06f58a63          	beq	a1,a5,86 <.L169>
			12: R_RISCV_BRANCH	.L169
  16:	1b000713          	li	a4,432
  1a:	02e50533          	mul	a0,a0,a4

0000001e <.LVL139>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	sta_info_tab
			1e: R_RISCV_RELAX	*ABS*
  22:	00078793          	mv	a5,a5
			22: R_RISCV_LO12_I	sta_info_tab
			22: R_RISCV_RELAX	*ABS*
  26:	5d800693          	li	a3,1496
  2a:	97aa                	add	a5,a5,a0
  2c:	01a7c703          	lbu	a4,26(a5) # 1a <ps_check_tx_frame+0x1a>
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	vif_info_tab
			30: R_RISCV_RELAX	*ABS*
  34:	00078793          	mv	a5,a5
			34: R_RISCV_LO12_I	vif_info_tab
			34: R_RISCV_RELAX	*ABS*
  38:	02d70733          	mul	a4,a4,a3
  3c:	97ba                	add	a5,a5,a4
  3e:	0567c703          	lbu	a4,86(a5) # 56 <.LVL139+0x38>
  42:	e331                	bnez	a4,86 <.L169>
			42: R_RISCV_RVC_BRANCH	.L169
  44:	0587c703          	lbu	a4,88(a5)
  48:	cf1d                	beqz	a4,86 <.L169>
			48: R_RISCV_RVC_BRANCH	.L169
  4a:	000006b7          	lui	a3,0x0
			4a: R_RISCV_HI20	mac_tid2ac
			4a: R_RISCV_RELAX	*ABS*
  4e:	00068693          	mv	a3,a3
			4e: R_RISCV_LO12_I	mac_tid2ac
			4e: R_RISCV_RELAX	*ABS*
  52:	96ae                	add	a3,a3,a1
  54:	0687c703          	lbu	a4,104(a5)
  58:	0006c683          	lbu	a3,0(a3) # 0 <ps_check_tx_frame>
  5c:	00d75733          	srl	a4,a4,a3
  60:	8b05                	andi	a4,a4,1
  62:	cb19                	beqz	a4,78 <.L171>
			62: R_RISCV_RVC_BRANCH	.L171
  64:	43d8                	lw	a4,4(a5)
  66:	00876713          	ori	a4,a4,8
  6a:	c3d8                	sw	a4,4(a5)

0000006c <.LBB264>:
  6c:	44b00737          	lui	a4,0x44b00
  70:	12072703          	lw	a4,288(a4) # 44b00120 <.LASF480+0x44afceb3>

00000074 <.LBE264>:
  74:	d3f8                	sw	a4,100(a5)
  76:	8082                	ret

00000078 <.L171>:
  78:	0577c503          	lbu	a0,87(a5)
  7c:	4581                	li	a1,0

0000007e <.LVL143>:
  7e:	00000317          	auipc	t1,0x0
			7e: R_RISCV_CALL	td_pck_ps_ind
			7e: R_RISCV_RELAX	*ABS*
  82:	00030067          	jr	t1 # 7e <.LVL143>

00000086 <.L169>:
  86:	8082                	ret

Disassembly of section .text.ps_uapsd_set:

00000000 <ps_uapsd_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	4485                	li	s1,1
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	00b495b3          	sll	a1,s1,a1

0000000e <.LVL146>:
   e:	06854783          	lbu	a5,104(a0)
  12:	0ff5f593          	andi	a1,a1,255
  16:	c629                	beqz	a2,60 <.L179>
			16: R_RISCV_RVC_BRANCH	.L179
  18:	00000437          	lui	s0,0x0
			18: R_RISCV_HI20	ps_env
			18: R_RISCV_RELAX	*ABS*
  1c:	8fcd                	or	a5,a5,a1
  1e:	00040413          	mv	s0,s0
			1e: R_RISCV_LO12_I	ps_env
			1e: R_RISCV_RELAX	*ABS*
  22:	06f50423          	sb	a5,104(a0)
  26:	00044783          	lbu	a5,0(s0) # 0 <ps_uapsd_set>
  2a:	c795                	beqz	a5,56 <.L178>
			2a: R_RISCV_RVC_BRANCH	.L178
  2c:	01c44783          	lbu	a5,28(s0)
  30:	e39d                	bnez	a5,56 <.L178>
			30: R_RISCV_RVC_BRANCH	.L178
  32:	00940ea3          	sb	s1,29(s0)

00000036 <.LBB268>:
  36:	44b007b7          	lui	a5,0x44b00
  3a:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF480+0x44afceb3>

0000003e <.LBE268>:
  3e:	501c                	lw	a5,32(s0)
  40:	00000537          	lui	a0,0x0
			40: R_RISCV_HI20	ps_env+0xc
			40: R_RISCV_RELAX	*ABS*+0xc

00000044 <.LVL147>:
  44:	00c50513          	addi	a0,a0,12 # c <ps_uapsd_set+0xc>
			44: R_RISCV_LO12_I	ps_env+0xc
			44: R_RISCV_RELAX	*ABS*+0xc
  48:	95be                	add	a1,a1,a5
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	mm_timer_set
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL147+0x6>

00000052 <.LVL148>:
  52:	00940e23          	sb	s1,28(s0)

00000056 <.L178>:
  56:	40b2                	lw	ra,12(sp)
  58:	4422                	lw	s0,8(sp)
  5a:	4492                	lw	s1,4(sp)
  5c:	0141                	addi	sp,sp,16
  5e:	8082                	ret

00000060 <.L179>:
  60:	fff5c593          	not	a1,a1
  64:	8fed                	and	a5,a5,a1
  66:	06f50423          	sb	a5,104(a0)
  6a:	b7f5                	j	56 <.L178>
			6a: R_RISCV_RVC_JUMP	.L178

Disassembly of section .text.ps_traffic_status_update:

00000000 <ps_traffic_status_update>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ps_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	ps_env
			4: R_RISCV_RELAX	*ABS*
   8:	0007c703          	lbu	a4,0(a5) # 0 <ps_traffic_status_update>
   c:	cf09                	beqz	a4,26 <.L185>
			c: R_RISCV_RVC_BRANCH	.L185
   e:	0247c783          	lbu	a5,36(a5)
  12:	0017f713          	andi	a4,a5,1
  16:	cb01                	beqz	a4,26 <.L185>
			16: R_RISCV_RVC_BRANCH	.L185
  18:	0067f713          	andi	a4,a5,6
  1c:	e709                	bnez	a4,26 <.L185>
			1c: R_RISCV_RVC_BRANCH	.L185
  1e:	c589                	beqz	a1,28 <.L187>
			1e: R_RISCV_RVC_BRANCH	.L187

00000020 <.LVL151>:
  20:	8ba1                	andi	a5,a5,8

00000022 <.L188>:
  22:	4505                	li	a0,1

00000024 <.LVL153>:
  24:	c395                	beqz	a5,48 <.L206>
			24: R_RISCV_RVC_BRANCH	.L206

00000026 <.L185>:
  26:	8082                	ret

00000028 <.L187>:
  28:	00000737          	lui	a4,0x0
			28: R_RISCV_HI20	vif_mgmt_env+0x8
			28: R_RISCV_RELAX	*ABS*+0x8
  2c:	00872703          	lw	a4,8(a4) # 8 <ps_traffic_status_update+0x8>
			2c: R_RISCV_LO12_I	vif_mgmt_env+0x8
			2c: R_RISCV_RELAX	*ABS*+0x8

00000030 <.LBB272>:
  30:	000005b7          	lui	a1,0x0
			30: R_RISCV_HI20	td_env
			30: R_RISCV_RELAX	*ABS*

00000034 <.LVL157>:
  34:	00058593          	mv	a1,a1
			34: R_RISCV_LO12_I	td_env
			34: R_RISCV_RELAX	*ABS*
  38:	02400813          	li	a6,36

0000003c <.L189>:
  3c:	eb11                	bnez	a4,50 <.L192>
			3c: R_RISCV_RVC_BRANCH	.L192
  3e:	4601                	li	a2,0

00000040 <.L191>:
  40:	8ba1                	andi	a5,a5,8

00000042 <.LVL159>:
  42:	f265                	bnez	a2,22 <.L188>
			42: R_RISCV_RVC_BRANCH	.L188

00000044 <.LVL160>:
  44:	d3ed                	beqz	a5,26 <.L185>
			44: R_RISCV_RVC_BRANCH	.L185
  46:	4501                	li	a0,0

00000048 <.L206>:
  48:	00000317          	auipc	t1,0x0
			48: R_RISCV_CALL	ps_dpsm_update
			48: R_RISCV_RELAX	*ABS*
  4c:	00030067          	jr	t1 # 48 <.L206>

00000050 <.L192>:
  50:	05774683          	lbu	a3,87(a4)
  54:	02a68063          	beq	a3,a0,74 <.L190>
			54: R_RISCV_BRANCH	.L190
  58:	05874603          	lbu	a2,88(a4)
  5c:	ce01                	beqz	a2,74 <.L190>
			5c: R_RISCV_RVC_BRANCH	.L190
  5e:	05674883          	lbu	a7,86(a4)
  62:	00089963          	bnez	a7,74 <.L190>
			62: R_RISCV_BRANCH	.L190

00000066 <.LBB275>:
  66:	030686b3          	mul	a3,a3,a6
  6a:	96ae                	add	a3,a3,a1
  6c:	0216c683          	lbu	a3,33(a3)

00000070 <.LBE275>:
  70:	8ab1                	andi	a3,a3,12
  72:	f6f9                	bnez	a3,40 <.L191>
			72: R_RISCV_RVC_BRANCH	.L191

00000074 <.L190>:
  74:	4318                	lw	a4,0(a4)
  76:	b7d9                	j	3c <.L189>
			76: R_RISCV_RVC_JUMP	.L189
