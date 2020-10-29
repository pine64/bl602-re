
libblecontroller/llc_task.o:     file format elf32-littleriscv


Disassembly of section .text.llc_dft_handler:

00000000 <llc_dft_handler>:
   0:	4501                	li	a0,0

00000002 <.LVL1>:
   2:	8082                	ret

Disassembly of section .text.llm_enc_ind_handler:

00000000 <llm_enc_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL3>:
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	892e                	mv	s2,a1
  12:	84b2                	mv	s1,a2
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL3+0x10>

0000001c <.LBB151>:
  1c:	00f57713          	andi	a4,a0,15
  20:	47bd                	li	a5,15
  22:	0ef70c63          	beq	a4,a5,11a <.L4>
			22: R_RISCV_BRANCH	.L4
  26:	0084d413          	srli	s0,s1,0x8
  2a:	000007b7          	lui	a5,0x0
			2a: R_RISCV_HI20	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	00241713          	slli	a4,s0,0x2
  32:	00078793          	mv	a5,a5
			32: R_RISCV_LO12_I	llc_env
			32: R_RISCV_RELAX	*ABS*
  36:	97ba                	add	a5,a5,a4
  38:	0007a983          	lw	s3,0(a5) # 0 <llm_enc_ind_handler>
  3c:	47cd                	li	a5,19
  3e:	8a2a                	mv	s4,a0
  40:	0a39c703          	lbu	a4,163(s3)
  44:	06f70c63          	beq	a4,a5,bc <.L5>
			44: R_RISCV_BRANCH	.L5

00000048 <.L8>:
  48:	0a49c703          	lbu	a4,164(s3)
  4c:	47b9                	li	a5,14
  4e:	00f71a63          	bne	a4,a5,62 <.L7>
			4e: R_RISCV_BRANCH	.L7
  52:	8522                	mv	a0,s0
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	lld_get_mode
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.L8+0xc>

0000005c <.LVL6>:
  5c:	4791                	li	a5,4
  5e:	06f50763          	beq	a0,a5,cc <.L9>
			5e: R_RISCV_BRANCH	.L9

00000062 <.L7>:
  62:	8522                	mv	a0,s0
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	lld_get_mode
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.L7+0x2>

0000006c <.LVL7>:
  6c:	4791                	li	a5,4
  6e:	08f51263          	bne	a0,a5,f2 <.L10>
			6e: R_RISCV_BRANCH	.L10

00000072 <.LBB153>:
  72:	002a7793          	andi	a5,s4,2
  76:	cfb5                	beqz	a5,f2 <.L10>
			76: R_RISCV_RVC_BRANCH	.L10
  78:	0a49c703          	lbu	a4,164(s3)
  7c:	47a9                	li	a5,10
  7e:	06f71a63          	bne	a4,a5,f2 <.L10>
			7e: R_RISCV_BRANCH	.L10

00000082 <.L13>:
  82:	05c00513          	li	a0,92
  86:	02a40533          	mul	a0,s0,a0
  8a:	280087b7          	lui	a5,0x28008
  8e:	0b478793          	addi	a5,a5,180 # 280080b4 <.LASF883+0x28003673>

00000092 <.LBE155>:
  92:	0ff00613          	li	a2,255
  96:	953e                	add	a0,a0,a5

00000098 <.LBB159>:
  98:	47bd                	li	a5,15

0000009a <.L11>:
  9a:	00f906b3          	add	a3,s2,a5
  9e:	0006c703          	lbu	a4,0(a3)
  a2:	0016c683          	lbu	a3,1(a3)
  a6:	17f9                	addi	a5,a5,-2

000000a8 <.LVL10>:
  a8:	0722                	slli	a4,a4,0x8
  aa:	8f55                	or	a4,a4,a3

000000ac <.LBB160>:
  ac:	00e51023          	sh	a4,0(a0)

000000b0 <.LBE160>:
  b0:	0ff7f793          	andi	a5,a5,255

000000b4 <.LVL13>:
  b4:	0509                	addi	a0,a0,2
  b6:	fec792e3          	bne	a5,a2,9a <.L11>
			b6: R_RISCV_BRANCH	.L11
  ba:	a01d                	j	e0 <.L22>
			ba: R_RISCV_RVC_JUMP	.L22

000000bc <.L5>:
  bc:	8522                	mv	a0,s0

000000be <.LVL15>:
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	lld_get_mode
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL15>

000000c6 <.LVL16>:
  c6:	478d                	li	a5,3
  c8:	f8f510e3          	bne	a0,a5,48 <.L8>
			c8: R_RISCV_BRANCH	.L8

000000cc <.L9>:
  cc:	000007b7          	lui	a5,0x0
			cc: R_RISCV_HI20	ble_memcpy_ptr
			cc: R_RISCV_RELAX	*ABS*
  d0:	0007a783          	lw	a5,0(a5) # 0 <llm_enc_ind_handler>
			d0: R_RISCV_LO12_I	ble_memcpy_ptr
			d0: R_RISCV_RELAX	*ABS*
  d4:	4641                	li	a2,16
  d6:	00190593          	addi	a1,s2,1
  da:	09198513          	addi	a0,s3,145
  de:	9782                	jalr	a5

000000e0 <.L22>:
  e0:	8626                	mv	a2,s1
  e2:	85a6                	mv	a1,s1
  e4:	10600513          	li	a0,262
  e8:	00000097          	auipc	ra,0x0
			e8: R_RISCV_CALL	ble_ke_msg_send_basic
			e8: R_RISCV_RELAX	*ABS*
  ec:	000080e7          	jalr	ra # e8 <.L22+0x8>

000000f0 <.LVL18>:
  f0:	a02d                	j	11a <.L4>
			f0: R_RISCV_RVC_JUMP	.L4

000000f2 <.L10>:
  f2:	8522                	mv	a0,s0
  f4:	00000097          	auipc	ra,0x0
			f4: R_RISCV_CALL	lld_get_mode
			f4: R_RISCV_RELAX	*ABS*
  f8:	000080e7          	jalr	ra # f4 <.L10+0x2>

000000fc <.LVL19>:
  fc:	478d                	li	a5,3
  fe:	00f51e63          	bne	a0,a5,11a <.L4>
			fe: R_RISCV_BRANCH	.L4

00000102 <.LBB161>:
 102:	001a7a13          	andi	s4,s4,1
 106:	000a0a63          	beqz	s4,11a <.L4>
			106: R_RISCV_BRANCH	.L4
 10a:	0a39c783          	lbu	a5,163(s3)
 10e:	4705                	li	a4,1
 110:	17c9                	addi	a5,a5,-14
 112:	0ff7f793          	andi	a5,a5,255
 116:	f6f776e3          	bgeu	a4,a5,82 <.L13>
			116: R_RISCV_BRANCH	.L13

0000011a <.L4>:
 11a:	40f2                	lw	ra,28(sp)
 11c:	4462                	lw	s0,24(sp)
 11e:	44d2                	lw	s1,20(sp)
 120:	4942                	lw	s2,16(sp)

00000122 <.LVL21>:
 122:	49b2                	lw	s3,12(sp)
 124:	4a22                	lw	s4,8(sp)
 126:	4501                	li	a0,0
 128:	6105                	addi	sp,sp,32
 12a:	8082                	ret

Disassembly of section .text.llc_llcp_recv_ind_handler:

00000000 <llc_llcp_recv_ind_handler>:
   0:	8532                	mv	a0,a2

00000002 <.LVL23>:
   2:	00258613          	addi	a2,a1,2

00000006 <.LVL24>:
   6:	0005c583          	lbu	a1,0(a1)

0000000a <.LVL25>:
   a:	4681                	li	a3,0

0000000c <.LVL26>:
   c:	00000317          	auipc	t1,0x0
			c: R_RISCV_CALL	llc_llcp_recv_handler
			c: R_RISCV_RELAX	*ABS*
  10:	00030067          	jr	t1 # c <.LVL26>

Disassembly of section .text.llc_chmap_update_req_ind_handler:

00000000 <llc_chmap_update_req_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL29>:
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	8932                	mv	s2,a2
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL29+0xc>

00000018 <.LBB163>:
  18:	00f57713          	andi	a4,a0,15
  1c:	47bd                	li	a5,15
  1e:	00f71a63          	bne	a4,a5,32 <.L25>
			1e: R_RISCV_BRANCH	.L25

00000022 <.L33>:
  22:	4501                	li	a0,0

00000024 <.L24>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	44d2                	lw	s1,20(sp)
  2a:	4942                	lw	s2,16(sp)
  2c:	49b2                	lw	s3,12(sp)
  2e:	6105                	addi	sp,sp,32
  30:	8082                	ret

00000032 <.L25>:
  32:	00457793          	andi	a5,a0,4
  36:	842a                	mv	s0,a0

00000038 <.LBB165>:
  38:	f7ed                	bnez	a5,22 <.L33>
			38: R_RISCV_RVC_BRANCH	.L33

0000003a <.LBB167>:
  3a:	00157793          	andi	a5,a0,1
  3e:	4509                	li	a0,2

00000040 <.LVL35>:
  40:	f3f5                	bnez	a5,24 <.L24>
			40: R_RISCV_RVC_BRANCH	.L24
  42:	00895493          	srli	s1,s2,0x8

00000046 <.LBB169>:
  46:	000007b7          	lui	a5,0x0
			46: R_RISCV_HI20	llc_env
			46: R_RISCV_RELAX	*ABS*
  4a:	00249713          	slli	a4,s1,0x2
  4e:	00078793          	mv	a5,a5
			4e: R_RISCV_LO12_I	llc_env
			4e: R_RISCV_RELAX	*ABS*
  52:	97ba                	add	a5,a5,a4
  54:	8526                	mv	a0,s1
  56:	0007a983          	lw	s3,0(a5) # 0 <llc_chmap_update_req_ind_handler>
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	llc_ch_assess_get_current_ch_map
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LBB169+0x14>

00000062 <.LVL37>:
  62:	000007b7          	lui	a5,0x0
			62: R_RISCV_HI20	ble_memcmp_ptr
			62: R_RISCV_RELAX	*ABS*
  66:	0007a783          	lw	a5,0(a5) # 0 <llc_chmap_update_req_ind_handler>
			66: R_RISCV_LO12_I	ble_memcmp_ptr
			66: R_RISCV_RELAX	*ABS*
  6a:	4615                	li	a2,5
  6c:	06398593          	addi	a1,s3,99
  70:	9782                	jalr	a5

00000072 <.LVL38>:
  72:	d945                	beqz	a0,22 <.L33>
			72: R_RISCV_RVC_BRANCH	.L33

00000074 <.LBB170>:
  74:	00146593          	ori	a1,s0,1
  78:	854a                	mv	a0,s2
  7a:	0ff5f593          	andi	a1,a1,255
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	ble_ke_state_set
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LBB170+0xa>

00000086 <.LBE170>:
  86:	4799                	li	a5,6
  88:	0af981a3          	sb	a5,163(s3)
  8c:	8526                	mv	a0,s1
  8e:	00000097          	auipc	ra,0x0
			8e: R_RISCV_CALL	llc_llcp_ch_map_update_pdu_send
			8e: R_RISCV_RELAX	*ABS*
  92:	000080e7          	jalr	ra # 8e <.LBE170+0x8>

00000096 <.LVL41>:
  96:	b771                	j	22 <.L33>
			96: R_RISCV_RVC_JUMP	.L33

Disassembly of section .text.llc_auth_payl_real_to_ind_handler:

00000000 <llc_auth_payl_real_to_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL43>:
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	84b2                	mv	s1,a2
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ble_ke_state_get
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL43+0xa>

00000016 <.LBB172>:
  16:	893d                	andi	a0,a0,15

00000018 <.LVL45>:
  18:	47bd                	li	a5,15
  1a:	06f50363          	beq	a0,a5,80 <.L35>
			1a: R_RISCV_BRANCH	.L35
  1e:	0084d913          	srli	s2,s1,0x8

00000022 <.LBB174>:
  22:	00000437          	lui	s0,0x0
			22: R_RISCV_HI20	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00291793          	slli	a5,s2,0x2
  2a:	00040413          	mv	s0,s0
			2a: R_RISCV_LO12_I	llc_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	943e                	add	s0,s0,a5
  30:	401c                	lw	a5,0(s0)
  32:	85a6                	mv	a1,s1
  34:	10300513          	li	a0,259
  38:	0587d603          	lhu	a2,88(a5)
  3c:	05a7d783          	lhu	a5,90(a5)
  40:	8e1d                	sub	a2,a2,a5
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	ble_ke_timer_set
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LBB174+0x20>

0000004a <.LVL46>:
  4a:	401c                	lw	a5,0(s0)
  4c:	85a6                	mv	a1,s1
  4e:	10400513          	li	a0,260
  52:	0587d603          	lhu	a2,88(a5)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	ble_ke_timer_set
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL46+0xc>

0000005e <.LVL47>:
  5e:	6505                	lui	a0,0x1
  60:	4689                	li	a3,2
  62:	05700613          	li	a2,87
  66:	85ca                	mv	a1,s2
  68:	80350513          	addi	a0,a0,-2045 # 803 <.LASF532>
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	ble_ke_msg_alloc
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL47+0xe>

00000074 <.LBB175>:
  74:	01251023          	sh	s2,0(a0)
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	hci_send_2_host
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LBB175+0x4>

00000080 <.L35>:
  80:	40b2                	lw	ra,12(sp)
  82:	4422                	lw	s0,8(sp)
  84:	4492                	lw	s1,4(sp)
  86:	4902                	lw	s2,0(sp)
  88:	4501                	li	a0,0
  8a:	0141                	addi	sp,sp,16
  8c:	8082                	ret

Disassembly of section .text.llc_con_upd_req_ind_handler:

00000000 <llc_con_upd_req_ind_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	8532                	mv	a0,a2

00000004 <.LVL51>:
   4:	d422                	sw	s0,40(sp)
   6:	ca56                	sw	s5,20(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d226                	sw	s1,36(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	842e                	mv	s0,a1
  16:	8ab2                	mv	s5,a2
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_state_get
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL51+0x14>

00000020 <.LBB176>:
  20:	00f57713          	andi	a4,a0,15
  24:	47bd                	li	a5,15
  26:	00f71d63          	bne	a4,a5,40 <.L38>
			26: R_RISCV_BRANCH	.L38

0000002a <.L53>:
  2a:	4501                	li	a0,0

0000002c <.L37>:
  2c:	50b2                	lw	ra,44(sp)
  2e:	5422                	lw	s0,40(sp)

00000030 <.LVL55>:
  30:	5492                	lw	s1,36(sp)
  32:	5902                	lw	s2,32(sp)
  34:	49f2                	lw	s3,28(sp)
  36:	4a62                	lw	s4,24(sp)
  38:	4ad2                	lw	s5,20(sp)
  3a:	4b42                	lw	s6,16(sp)
  3c:	6145                	addi	sp,sp,48
  3e:	8082                	ret

00000040 <.L38>:
  40:	00157793          	andi	a5,a0,1
  44:	84aa                	mv	s1,a0
  46:	008ad993          	srli	s3,s5,0x8

0000004a <.LBB178>:
  4a:	cf81                	beqz	a5,62 <.L40>
			4a: R_RISCV_RVC_BRANCH	.L40

0000004c <.LBB180>:
  4c:	00000737          	lui	a4,0x0
			4c: R_RISCV_HI20	llc_env
			4c: R_RISCV_RELAX	*ABS*
  50:	00299793          	slli	a5,s3,0x2
  54:	00070713          	mv	a4,a4
			54: R_RISCV_LO12_I	llc_env
			54: R_RISCV_RELAX	*ABS*
  58:	97ba                	add	a5,a5,a4
  5a:	439c                	lw	a5,0(a5)

0000005c <.LBE180>:
  5c:	4509                	li	a0,2

0000005e <.LVL59>:
  5e:	439c                	lw	a5,0(a5)
  60:	d7f1                	beqz	a5,2c <.L37>
			60: R_RISCV_RVC_BRANCH	.L37

00000062 <.L40>:
  62:	0024f793          	andi	a5,s1,2
  66:	cf99                	beqz	a5,84 <.L41>
			66: R_RISCV_RVC_BRANCH	.L41
  68:	00000737          	lui	a4,0x0
			68: R_RISCV_HI20	llc_env
			68: R_RISCV_RELAX	*ABS*
  6c:	00070713          	mv	a4,a4
			6c: R_RISCV_LO12_I	llc_env
			6c: R_RISCV_RELAX	*ABS*
  70:	00299793          	slli	a5,s3,0x2
  74:	97ba                	add	a5,a5,a4
  76:	439c                	lw	a5,0(a5)
  78:	4509                	li	a0,2
  7a:	0a47c703          	lbu	a4,164(a5)
  7e:	4791                	li	a5,4
  80:	faf706e3          	beq	a4,a5,2c <.L37>
			80: R_RISCV_BRANCH	.L37

00000084 <.L41>:
  84:	0044f793          	andi	a5,s1,4
  88:	4509                	li	a0,2
  8a:	f3cd                	bnez	a5,2c <.L37>
			8a: R_RISCV_RVC_BRANCH	.L37

0000008c <.LBB186>:
  8c:	00000937          	lui	s2,0x0
			8c: R_RISCV_HI20	llc_env
			8c: R_RISCV_RELAX	*ABS*
  90:	00090793          	mv	a5,s2
			90: R_RISCV_LO12_I	llc_env
			90: R_RISCV_RELAX	*ABS*
  94:	00299b13          	slli	s6,s3,0x2
  98:	97da                	add	a5,a5,s6
  9a:	0007aa03          	lw	s4,0(a5)
  9e:	00044783          	lbu	a5,0(s0) # 0 <llc_con_upd_req_ind_handler>
  a2:	4711                	li	a4,4
  a4:	00090913          	mv	s2,s2
			a4: R_RISCV_LO12_I	llc_env
			a4: R_RISCV_RELAX	*ABS*

000000a8 <.LBE186>:
  a8:	4501                	li	a0,0

000000aa <.LBB217>:
  aa:	f8f761e3          	bltu	a4,a5,2c <.L37>
			aa: R_RISCV_BRANCH	.L37
  ae:	00000737          	lui	a4,0x0
			ae: R_RISCV_HI20	.L43
			ae: R_RISCV_RELAX	*ABS*
  b2:	078a                	slli	a5,a5,0x2
  b4:	00070713          	mv	a4,a4
			b4: R_RISCV_LO12_I	.L43
			b4: R_RISCV_RELAX	*ABS*
  b8:	97ba                	add	a5,a5,a4
  ba:	439c                	lw	a5,0(a5)
  bc:	8782                	jr	a5

000000be <.L46>:
  be:	054a5783          	lhu	a5,84(s4)
  c2:	00f41423          	sh	a5,8(s0)

000000c6 <.L47>:
  c6:	00040923          	sb	zero,18(s0)
  ca:	0a6a4783          	lbu	a5,166(s4)
  ce:	c3d9                	beqz	a5,154 <.L48>
			ce: R_RISCV_RVC_BRANCH	.L48
  d0:	05ca5783          	lhu	a5,92(s4)
  d4:	8b85                	andi	a5,a5,1
  d6:	e7ad                	bnez	a5,140 <.L49>
			d6: R_RISCV_RVC_BRANCH	.L49

000000d8 <.L52>:
  d8:	00044703          	lbu	a4,0(s0)
  dc:	4785                	li	a5,1
  de:	02f70063          	beq	a4,a5,fe <.L51>
			de: R_RISCV_BRANCH	.L51
  e2:	05ca5783          	lhu	a5,92(s4)
  e6:	010a2583          	lw	a1,16(s4)
  ea:	8622                	mv	a2,s0
  ec:	0407e793          	ori	a5,a5,64
  f0:	04fa1e23          	sh	a5,92(s4)
  f4:	854e                	mv	a0,s3
  f6:	00000097          	auipc	ra,0x0
			f6: R_RISCV_CALL	lld_con_param_req
			f6: R_RISCV_RELAX	*ABS*
  fa:	000080e7          	jalr	ra # f6 <.L52+0x1e>

000000fe <.L51>:
  fe:	85a2                	mv	a1,s0
 100:	854e                	mv	a0,s3
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	llc_llcp_con_param_req_pdu_send
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.L51+0x4>

0000010a <.LBB187>:
 10a:	0014e593          	ori	a1,s1,1
 10e:	0ff5f593          	andi	a1,a1,255
 112:	8556                	mv	a0,s5
 114:	00000097          	auipc	ra,0x0
			114: R_RISCV_CALL	ble_ke_state_set
			114: R_RISCV_RELAX	*ABS*
 118:	000080e7          	jalr	ra # 114 <.LBB187+0xa>

0000011c <.LBE187>:
 11c:	479d                	li	a5,7
 11e:	6605                	lui	a2,0x1
 120:	0afa01a3          	sb	a5,163(s4)
 124:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST95+0x9>
 128:	85d6                	mv	a1,s5
 12a:	10200513          	li	a0,258
 12e:	00000097          	auipc	ra,0x0
			12e: R_RISCV_CALL	ble_ke_timer_set
			12e: R_RISCV_RELAX	*ABS*
 132:	000080e7          	jalr	ra # 12e <.LBE187+0x12>

00000136 <.L68>:
 136:	995a                	add	s2,s2,s6
 138:	00092783          	lw	a5,0(s2) # 0 <llc_con_upd_req_ind_handler>

0000013c <.LVL67>:
 13c:	c380                	sw	s0,0(a5)
 13e:	a0f5                	j	22a <.L69>
			13e: R_RISCV_RVC_JUMP	.L69

00000140 <.L49>:
 140:	069a4783          	lbu	a5,105(s4)
 144:	8b89                	andi	a5,a5,2
 146:	fbc9                	bnez	a5,d8 <.L52>
			146: R_RISCV_RVC_BRANCH	.L52
 148:	4515                	li	a0,5
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	llm_util_check_evt_mask
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.L49+0xa>

00000152 <.LVL69>:
 152:	d159                	beqz	a0,d8 <.L52>
			152: R_RISCV_RVC_BRANCH	.L52

00000154 <.L48>:
 154:	00245783          	lhu	a5,2(s0)
 158:	854e                	mv	a0,s3
 15a:	00f41723          	sh	a5,14(s0)
 15e:	00445783          	lhu	a5,4(s0)
 162:	00f41823          	sh	a5,16(s0)
 166:	00000097          	auipc	ra,0x0
			166: R_RISCV_CALL	lld_get_mode
			166: R_RISCV_RELAX	*ABS*
 16a:	000080e7          	jalr	ra # 166 <.L48+0x12>

0000016e <.LVL70>:
 16e:	478d                	li	a5,3
 170:	eaf51de3          	bne	a0,a5,2a <.L53>
			170: R_RISCV_BRANCH	.L53

00000174 <.LBB200>:
 174:	010a2503          	lw	a0,16(s4)
 178:	0050                	addi	a2,sp,4
 17a:	85a2                	mv	a1,s0
 17c:	00000097          	auipc	ra,0x0
			17c: R_RISCV_CALL	lld_con_update_req
			17c: R_RISCV_RELAX	*ABS*
 180:	000080e7          	jalr	ra # 17c <.LBB200+0x8>

00000184 <.L70>:
 184:	00845783          	lhu	a5,8(s0)
 188:	004c                	addi	a1,sp,4
 18a:	854e                	mv	a0,s3
 18c:	04fa1b23          	sh	a5,86(s4)
 190:	00000097          	auipc	ra,0x0
			190: R_RISCV_CALL	llc_llcp_con_update_pdu_send
			190: R_RISCV_RELAX	*ABS*
 194:	000080e7          	jalr	ra # 190 <.L70+0xc>

00000198 <.LVL72>:
 198:	00815783          	lhu	a5,8(sp)

0000019c <.LBB194>:
 19c:	0014e593          	ori	a1,s1,1
 1a0:	0ff5f593          	andi	a1,a1,255

000001a4 <.LBE194>:
 1a4:	00f41723          	sh	a5,14(s0)
 1a8:	00a15783          	lhu	a5,10(sp)

000001ac <.LBB198>:
 1ac:	8556                	mv	a0,s5

000001ae <.LBE198>:
 1ae:	00f41323          	sh	a5,6(s0)

000001b2 <.LBB199>:
 1b2:	00000097          	auipc	ra,0x0
			1b2: R_RISCV_CALL	ble_ke_state_set
			1b2: R_RISCV_RELAX	*ABS*
 1b6:	000080e7          	jalr	ra # 1b2 <.LBB199>

000001ba <.LBE199>:
 1ba:	47a5                	li	a5,9
 1bc:	0afa01a3          	sb	a5,163(s4)
 1c0:	bf9d                	j	136 <.L68>
			1c0: R_RISCV_RVC_JUMP	.L68

000001c2 <.L44>:
 1c2:	6505                	lui	a0,0x1
 1c4:	85ce                	mv	a1,s3
 1c6:	46b1                	li	a3,12
 1c8:	03e00613          	li	a2,62
 1cc:	80450513          	addi	a0,a0,-2044 # 804 <.LASF532+0x1>
 1d0:	00000097          	auipc	ra,0x0
			1d0: R_RISCV_CALL	ble_ke_msg_alloc
			1d0: R_RISCV_RELAX	*ABS*
 1d4:	000080e7          	jalr	ra # 1d0 <.L44+0xe>

000001d8 <.LVL76>:
 1d8:	4719                	li	a4,6
 1da:	00e50023          	sb	a4,0(a0)

000001de <.LBB213>:
 1de:	01351123          	sh	s3,2(a0)
 1e2:	00e45703          	lhu	a4,14(s0)

000001e6 <.LBB203>:
 1e6:	995a                	add	s2,s2,s6

000001e8 <.LBE203>:
 1e8:	00e51223          	sh	a4,4(a0)
 1ec:	01045703          	lhu	a4,16(s0)
 1f0:	00e51323          	sh	a4,6(a0)
 1f4:	00645703          	lhu	a4,6(s0)
 1f8:	00e51423          	sh	a4,8(a0)
 1fc:	00845703          	lhu	a4,8(s0)
 200:	00e51523          	sh	a4,10(a0)
 204:	00000097          	auipc	ra,0x0
			204: R_RISCV_CALL	hci_send_2_host
			204: R_RISCV_RELAX	*ABS*
 208:	000080e7          	jalr	ra # 204 <.LBE203+0x1c>

0000020c <.LBB207>:
 20c:	00092783          	lw	a5,0(s2)

00000210 <.LBB208>:
 210:	0024e593          	ori	a1,s1,2
 214:	0ff5f593          	andi	a1,a1,255

00000218 <.LBB211>:
 218:	c3c0                	sw	s0,4(a5)

0000021a <.LBE211>:
 21a:	4789                	li	a5,2
 21c:	0afa0223          	sb	a5,164(s4)

00000220 <.LBB212>:
 220:	8556                	mv	a0,s5
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	ble_ke_state_set
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.LBB212+0x2>

0000022a <.L69>:
 22a:	4505                	li	a0,1

0000022c <.LBE215>:
 22c:	b501                	j	2c <.L37>
			22c: R_RISCV_RVC_JUMP	.L37

0000022e <.L45>:
 22e:	854e                	mv	a0,s3
 230:	00000097          	auipc	ra,0x0
			230: R_RISCV_CALL	lld_get_mode
			230: R_RISCV_RELAX	*ABS*
 234:	000080e7          	jalr	ra # 230 <.L45+0x2>

00000238 <.LVL84>:
 238:	478d                	li	a5,3
 23a:	def518e3          	bne	a0,a5,2a <.L53>
			23a: R_RISCV_BRANCH	.L53

0000023e <.L42>:
 23e:	010a2583          	lw	a1,16(s4)
 242:	4705                	li	a4,1
 244:	0054                	addi	a3,sp,4
 246:	8622                	mv	a2,s0
 248:	854e                	mv	a0,s3
 24a:	00000097          	auipc	ra,0x0
			24a: R_RISCV_CALL	lld_con_update_after_param_req
			24a: R_RISCV_RELAX	*ABS*
 24e:	000080e7          	jalr	ra # 24a <.L42+0xc>

00000252 <.LVL85>:
 252:	bf0d                	j	184 <.L70>
			252: R_RISCV_RVC_JUMP	.L70

Disassembly of section .text.llc_length_req_ind_handler:

00000000 <llc_length_req_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL87>:
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	8932                	mv	s2,a2
  10:	00000097          	auipc	ra,0x0
			10: R_RISCV_CALL	ble_ke_state_get
			10: R_RISCV_RELAX	*ABS*
  14:	000080e7          	jalr	ra # 10 <.LVL87+0xc>

00000018 <.LBB219>:
  18:	00f57713          	andi	a4,a0,15
  1c:	47bd                	li	a5,15
  1e:	00f71a63          	bne	a4,a5,32 <.L72>
			1e: R_RISCV_BRANCH	.L72

00000022 <.L81>:
  22:	4501                	li	a0,0

00000024 <.L71>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	44d2                	lw	s1,20(sp)
  2a:	4942                	lw	s2,16(sp)
  2c:	49b2                	lw	s3,12(sp)
  2e:	6105                	addi	sp,sp,32
  30:	8082                	ret

00000032 <.L72>:
  32:	00557793          	andi	a5,a0,5
  36:	84aa                	mv	s1,a0
  38:	4509                	li	a0,2

0000003a <.LVL92>:
  3a:	f7ed                	bnez	a5,24 <.L71>
			3a: R_RISCV_RVC_BRANCH	.L71
  3c:	00895993          	srli	s3,s2,0x8

00000040 <.LBB221>:
  40:	000007b7          	lui	a5,0x0
			40: R_RISCV_HI20	llc_env
			40: R_RISCV_RELAX	*ABS*
  44:	00299713          	slli	a4,s3,0x2
  48:	00078793          	mv	a5,a5
			48: R_RISCV_LO12_I	llc_env
			48: R_RISCV_RELAX	*ABS*
  4c:	97ba                	add	a5,a5,a4
  4e:	4380                	lw	s0,0(a5)

00000050 <.LVL94>:
  50:	445c                	lw	a5,12(s0)

00000052 <.LBE222>:
  52:	cb89                	beqz	a5,64 <.L74>
			52: R_RISCV_RVC_BRANCH	.L74
  54:	0027d703          	lhu	a4,2(a5) # 2 <llc_length_req_ind_handler+0x2>
  58:	04e41123          	sh	a4,66(s0)
  5c:	0047d783          	lhu	a5,4(a5)

00000060 <.LVL96>:
  60:	04f41523          	sh	a5,74(s0)

00000064 <.L74>:
  64:	458d                	li	a1,3
  66:	854e                	mv	a0,s3
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	llc_util_clear_operation_ptr
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L74+0x4>

00000070 <.LVL97>:
  70:	05344783          	lbu	a5,83(s0)
  74:	8b85                	andi	a5,a5,1
  76:	f7d5                	bnez	a5,22 <.L81>
			76: R_RISCV_RVC_BRANCH	.L81

00000078 <.LBB224>:
  78:	0014e593          	ori	a1,s1,1
  7c:	0ff5f593          	andi	a1,a1,255
  80:	854a                	mv	a0,s2
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	ble_ke_state_set
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LBB224+0xa>

0000008a <.LBE224>:
  8a:	4791                	li	a5,4
  8c:	854e                	mv	a0,s3
  8e:	0af401a3          	sb	a5,163(s0)
  92:	00000097          	auipc	ra,0x0
			92: R_RISCV_CALL	llc_llcp_length_req_pdu_send
			92: R_RISCV_RELAX	*ABS*
  96:	000080e7          	jalr	ra # 92 <.LBE224+0x8>

0000009a <.LVL100>:
  9a:	6605                	lui	a2,0x1
  9c:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST95+0x9>
  a0:	85ca                	mv	a1,s2
  a2:	10200513          	li	a0,258
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	ble_ke_timer_set
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL100+0xc>

000000ae <.LVL101>:
  ae:	bf95                	j	22 <.L81>
			ae: R_RISCV_RVC_JUMP	.L81

Disassembly of section .text.llc_task_random_gen_request:

00000000 <llc_task_random_gen_request>:
   0:	7179                	addi	sp,sp,-48
   2:	862a                	mv	a2,a0
   4:	02000693          	li	a3,32
   8:	4581                	li	a1,0
   a:	4511                	li	a0,4

0000000c <.LVL103>:
   c:	d422                	sw	s0,40(sp)
   e:	d226                	sw	s1,36(sp)
  10:	d04a                	sw	s2,32(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	d606                	sw	ra,44(sp)
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_msg_alloc
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL103+0xa>

0000001e <.LVL104>:
  1e:	84aa                	mv	s1,a0

00000020 <.LVL105>:
  20:	c602                	sw	zero,12(sp)

00000022 <.LBB226>:
  22:	842a                	mv	s0,a0
  24:	01050993          	addi	s3,a0,16
  28:	00000937          	lui	s2,0x0
			28: R_RISCV_HI20	ble_memcpy_ptr
			28: R_RISCV_RELAX	*ABS*

0000002c <.L83>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	bl_rand
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.L83>

00000034 <.LBE227>:
  34:	00092783          	lw	a5,0(s2) # 0 <llc_task_random_gen_request>
			34: R_RISCV_LO12_I	ble_memcpy_ptr
			34: R_RISCV_RELAX	*ABS*
  38:	4611                	li	a2,4
  3a:	006c                	addi	a1,sp,12
  3c:	c62a                	sw	a0,12(sp)
  3e:	8522                	mv	a0,s0
  40:	9782                	jalr	a5

00000042 <.LBB229>:
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	bl_rand
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LBB229>

0000004a <.LBE229>:
  4a:	00092783          	lw	a5,0(s2)
			4a: R_RISCV_LO12_I	ble_memcpy_ptr
			4a: R_RISCV_RELAX	*ABS*
  4e:	c62a                	sw	a0,12(sp)
  50:	4611                	li	a2,4
  52:	01040513          	addi	a0,s0,16
  56:	006c                	addi	a1,sp,12
  58:	0411                	addi	s0,s0,4
  5a:	9782                	jalr	a5

0000005c <.LVL111>:
  5c:	fd3418e3          	bne	s0,s3,2c <.L83>
			5c: R_RISCV_BRANCH	.L83

00000060 <.LBE226>:
  60:	8526                	mv	a0,s1
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	ble_ke_msg_send
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LBE226+0x2>

0000006a <.LVL112>:
  6a:	50b2                	lw	ra,44(sp)
  6c:	5422                	lw	s0,40(sp)
  6e:	5492                	lw	s1,36(sp)

00000070 <.LVL113>:
  70:	5902                	lw	s2,32(sp)
  72:	49f2                	lw	s3,28(sp)

00000074 <.LVL114>:
  74:	6145                	addi	sp,sp,48
  76:	8082                	ret

Disassembly of section .text.llc_enc_mgt_ind_handler:

00000000 <llc_enc_mgt_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL116>:
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	8932                	mv	s2,a2
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	ble_ke_state_get
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL116+0x10>

0000001c <.LBB231>:
  1c:	00f57713          	andi	a4,a0,15
  20:	47bd                	li	a5,15
  22:	06f70e63          	beq	a4,a5,9e <.L88>
			22: R_RISCV_BRANCH	.L88
  26:	00895413          	srli	s0,s2,0x8
  2a:	84aa                	mv	s1,a0
  2c:	8522                	mv	a0,s0

0000002e <.LVL118>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	lld_get_mode
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL118>

00000036 <.LVL119>:
  36:	478d                	li	a5,3
  38:	12f51d63          	bne	a0,a5,172 <.L89>
			38: R_RISCV_BRANCH	.L89

0000003c <.LBB233>:
  3c:	8885                	andi	s1,s1,1
  3e:	c0a5                	beqz	s1,9e <.L88>
			3e: R_RISCV_RVC_BRANCH	.L88
  40:	000004b7          	lui	s1,0x0
			40: R_RISCV_HI20	llc_env
			40: R_RISCV_RELAX	*ABS*
  44:	00048793          	mv	a5,s1
			44: R_RISCV_LO12_I	llc_env
			44: R_RISCV_RELAX	*ABS*
  48:	00241993          	slli	s3,s0,0x2
  4c:	97ce                	add	a5,a5,s3
  4e:	4398                	lw	a4,0(a5)
  50:	46a5                	li	a3,9
  52:	00048493          	mv	s1,s1
			52: R_RISCV_LO12_I	llc_env
			52: R_RISCV_RELAX	*ABS*
  56:	0a374783          	lbu	a5,163(a4) # a3 <.L88+0x5>
  5a:	17d9                	addi	a5,a5,-10
  5c:	0ff7f793          	andi	a5,a5,255
  60:	02f6ef63          	bltu	a3,a5,9e <.L88>
			60: R_RISCV_BRANCH	.L88
  64:	000006b7          	lui	a3,0x0
			64: R_RISCV_HI20	.L92
			64: R_RISCV_RELAX	*ABS*
  68:	078a                	slli	a5,a5,0x2
  6a:	00068693          	mv	a3,a3
			6a: R_RISCV_LO12_I	.L92
			6a: R_RISCV_RELAX	*ABS*
  6e:	97b6                	add	a5,a5,a3
  70:	439c                	lw	a5,0(a5)
  72:	8782                	jr	a5

00000074 <.L96>:
  74:	0a574783          	lbu	a5,165(a4)
  78:	468d                	li	a3,3
  7a:	0037f613          	andi	a2,a5,3
  7e:	02d61a63          	bne	a2,a3,b2 <.L95>
			7e: R_RISCV_BRANCH	.L95
  82:	0307e793          	ori	a5,a5,48
  86:	94ce                	add	s1,s1,s3
  88:	0af702a3          	sb	a5,165(a4)
  8c:	409c                	lw	a5,0(s1)
  8e:	472d                	li	a4,11
  90:	8522                	mv	a0,s0
  92:	0ae781a3          	sb	a4,163(a5)
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	llc_llcp_pause_enc_req_pdu_send
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.L96+0x22>

0000009e <.L88>:
  9e:	40f2                	lw	ra,28(sp)
  a0:	4462                	lw	s0,24(sp)
  a2:	44d2                	lw	s1,20(sp)
  a4:	4942                	lw	s2,16(sp)
  a6:	49b2                	lw	s3,12(sp)
  a8:	4a22                	lw	s4,8(sp)
  aa:	4a92                	lw	s5,4(sp)
  ac:	4501                	li	a0,0
  ae:	6105                	addi	sp,sp,32
  b0:	8082                	ret

000000b2 <.L95>:
  b2:	854a                	mv	a0,s2
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	llc_task_random_gen_request
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.L95+0x2>

000000bc <.LVL122>:
  bc:	94ce                	add	s1,s1,s3
  be:	409c                	lw	a5,0(s1)
  c0:	474d                	li	a4,19
  c2:	0ae781a3          	sb	a4,163(a5)
  c6:	bfe1                	j	9e <.L88>
			c6: R_RISCV_RVC_JUMP	.L88

000000c8 <.L91>:
  c8:	47b5                	li	a5,13
  ca:	94ce                	add	s1,s1,s3
  cc:	0af701a3          	sb	a5,163(a4)

000000d0 <.LBB239>:
  d0:	470c                	lw	a1,8(a4)

000000d2 <.LBE239>:
  d2:	4098                	lw	a4,0(s1)
  d4:	8522                	mv	a0,s0
  d6:	0a574783          	lbu	a5,165(a4)
  da:	fdf7f793          	andi	a5,a5,-33
  de:	0af702a3          	sb	a5,165(a4)
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	llc_llcp_enc_req_pdu_send
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LBE239+0x10>

000000ea <.L104>:
  ea:	4589                	li	a1,2
  ec:	8522                	mv	a0,s0
  ee:	00000097          	auipc	ra,0x0
			ee: R_RISCV_CALL	llc_util_clear_operation_ptr
			ee: R_RISCV_RELAX	*ABS*
  f2:	000080e7          	jalr	ra # ee <.L104+0x4>

000000f6 <.LVL126>:
  f6:	b765                	j	9e <.L88>
			f6: R_RISCV_RVC_JUMP	.L88

000000f8 <.L94>:
  f8:	47c1                	li	a5,16
  fa:	0af701a3          	sb	a5,163(a4)
  fe:	b745                	j	9e <.L88>
			fe: R_RISCV_RVC_JUMP	.L88

00000100 <.L93>:
 100:	05c00793          	li	a5,92
 104:	02f407b3          	mul	a5,s0,a5
 108:	28008737          	lui	a4,0x28008
 10c:	0cc70693          	addi	a3,a4,204 # 280080cc <.LASF883+0x2800368b>

00000110 <.LBE240>:
 110:	94ce                	add	s1,s1,s3
 112:	8522                	mv	a0,s0

00000114 <.LBB243>:
 114:	96be                	add	a3,a3,a5
 116:	00069023          	sh	zero,0(a3) # 0 <llc_enc_mgt_ind_handler>

0000011a <.LBB244>:
 11a:	0ce70693          	addi	a3,a4,206
 11e:	96be                	add	a3,a3,a5
 120:	00069023          	sh	zero,0(a3)

00000124 <.LBB246>:
 124:	0d070693          	addi	a3,a4,208
 128:	96be                	add	a3,a3,a5
 12a:	00069023          	sh	zero,0(a3)

0000012e <.LBB248>:
 12e:	0d270693          	addi	a3,a4,210
 132:	96be                	add	a3,a3,a5
 134:	00069023          	sh	zero,0(a3)

00000138 <.LBB250>:
 138:	0d470693          	addi	a3,a4,212
 13c:	96be                	add	a3,a3,a5

0000013e <.LBB253>:
 13e:	0d670713          	addi	a4,a4,214

00000142 <.LBB256>:
 142:	00069023          	sh	zero,0(a3)

00000146 <.LBB257>:
 146:	97ba                	add	a5,a5,a4
 148:	00079023          	sh	zero,0(a5)

0000014c <.LBE257>:
 14c:	409c                	lw	a5,0(s1)
 14e:	4749                	li	a4,18
 150:	0ae781a3          	sb	a4,163(a5)
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	llc_llcp_start_enc_rsp_pdu_send
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.LBE257+0x8>

0000015c <.L116>:
 15c:	6605                	lui	a2,0x1
 15e:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST95+0x9>
 162:	85ca                	mv	a1,s2
 164:	10200513          	li	a0,258
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	ble_ke_timer_set
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.L116+0xc>

00000170 <.LVL135>:
 170:	b73d                	j	9e <.L88>
			170: R_RISCV_RVC_JUMP	.L88

00000172 <.L89>:
 172:	0024f793          	andi	a5,s1,2
 176:	d785                	beqz	a5,9e <.L88>
			176: R_RISCV_RVC_BRANCH	.L88
 178:	000006b7          	lui	a3,0x0
			178: R_RISCV_HI20	llc_env
			178: R_RISCV_RELAX	*ABS*
 17c:	00068993          	mv	s3,a3
			17c: R_RISCV_LO12_I	llc_env
			17c: R_RISCV_RELAX	*ABS*
 180:	00241a13          	slli	s4,s0,0x2
 184:	99d2                	add	s3,s3,s4
 186:	0009a503          	lw	a0,0(s3)
 18a:	4721                	li	a4,8
 18c:	00068a93          	mv	s5,a3
			18c: R_RISCV_LO12_I	llc_env
			18c: R_RISCV_RELAX	*ABS*
 190:	0a454783          	lbu	a5,164(a0)
 194:	0ae78563          	beq	a5,a4,23e <.L97>
			194: R_RISCV_BRANCH	.L97
 198:	02f76463          	bltu	a4,a5,1c0 <.L98>
			198: R_RISCV_BRANCH	.L98
 19c:	4715                	li	a4,5
 19e:	f0e790e3          	bne	a5,a4,9e <.L88>
			19e: R_RISCV_BRANCH	.L88
 1a2:	0a554783          	lbu	a5,165(a0)
 1a6:	0307e793          	ori	a5,a5,48
 1aa:	0af502a3          	sb	a5,165(a0)
 1ae:	4799                	li	a5,6
 1b0:	0af50223          	sb	a5,164(a0)
 1b4:	8522                	mv	a0,s0
 1b6:	00000097          	auipc	ra,0x0
			1b6: R_RISCV_CALL	llc_llcp_pause_enc_rsp_pdu_send
			1b6: R_RISCV_RELAX	*ABS*
 1ba:	000080e7          	jalr	ra # 1b6 <.L89+0x44>

000001be <.LVL137>:
 1be:	bf79                	j	15c <.L116>
			1be: R_RISCV_RVC_JUMP	.L116

000001c0 <.L98>:
 1c0:	4729                	li	a4,10
 1c2:	10e78663          	beq	a5,a4,2ce <.L100>
			1c2: R_RISCV_BRANCH	.L100
 1c6:	4739                	li	a4,14
 1c8:	ece79be3          	bne	a5,a4,9e <.L88>
			1c8: R_RISCV_BRANCH	.L88

000001cc <.LBB260>:
 1cc:	47a5                	li	a5,9

000001ce <.LBB264>:
 1ce:	4504                	lw	s1,8(a0)

000001d0 <.LBE264>:
 1d0:	0af50223          	sb	a5,164(a0)
 1d4:	000007b7          	lui	a5,0x0
			1d4: R_RISCV_HI20	ble_memcpy_ptr
			1d4: R_RISCV_RELAX	*ABS*
 1d8:	0007a783          	lw	a5,0(a5) # 0 <llc_enc_mgt_ind_handler>
			1d8: R_RISCV_LO12_I	ble_memcpy_ptr
			1d8: R_RISCV_RELAX	*ABS*
 1dc:	00d48593          	addi	a1,s1,13 # d <.LVL116+0x9>
 1e0:	4621                	li	a2,8
 1e2:	07150513          	addi	a0,a0,113
 1e6:	9782                	jalr	a5

000001e8 <.LBB265>:
 1e8:	0164c703          	lbu	a4,22(s1)
 1ec:	0154c783          	lbu	a5,21(s1)

000001f0 <.LBB273>:
 1f0:	280086b7          	lui	a3,0x28008

000001f4 <.LBB280>:
 1f4:	0722                	slli	a4,a4,0x8
 1f6:	8f5d                	or	a4,a4,a5

000001f8 <.LBB281>:
 1f8:	05c00793          	li	a5,92
 1fc:	02f407b3          	mul	a5,s0,a5
 200:	0c468613          	addi	a2,a3,196 # 280080c4 <.LASF883+0x28003683>
 204:	0c668693          	addi	a3,a3,198

00000208 <.LBE265>:
 208:	00248913          	addi	s2,s1,2

0000020c <.LBB282>:
 20c:	85ca                	mv	a1,s2
 20e:	8522                	mv	a0,s0

00000210 <.LBB284>:
 210:	963e                	add	a2,a2,a5
 212:	00e61023          	sh	a4,0(a2)

00000216 <.LBB285>:
 216:	0184c703          	lbu	a4,24(s1)
 21a:	0174c603          	lbu	a2,23(s1)

0000021e <.LBB286>:
 21e:	97b6                	add	a5,a5,a3

00000220 <.LBB287>:
 220:	0722                	slli	a4,a4,0x8
 222:	8f51                	or	a4,a4,a2

00000224 <.LBB288>:
 224:	00e79023          	sh	a4,0(a5)

00000228 <.LBE288>:
 228:	00000097          	auipc	ra,0x0
			228: R_RISCV_CALL	llc_llcp_enc_rsp_pdu_send
			228: R_RISCV_RELAX	*ABS*
 22c:	000080e7          	jalr	ra # 228 <.LBE288>

00000230 <.LVL145>:
 230:	85ca                	mv	a1,s2
 232:	8522                	mv	a0,s0
 234:	00000097          	auipc	ra,0x0
			234: R_RISCV_CALL	llc_ltk_req_send
			234: R_RISCV_RELAX	*ABS*
 238:	000080e7          	jalr	ra # 234 <.LVL145+0x4>

0000023c <.LVL146>:
 23c:	b57d                	j	ea <.L104>
			23c: R_RISCV_RVC_JUMP	.L104

0000023e <.L97>:
 23e:	4511                	li	a0,4
 240:	00000097          	auipc	ra,0x0
			240: R_RISCV_CALL	llm_util_check_evt_mask
			240: R_RISCV_RELAX	*ABS*
 244:	000080e7          	jalr	ra # 240 <.L97+0x2>

00000248 <.LVL148>:
 248:	cd01                	beqz	a0,260 <.L102>
			248: R_RISCV_RVC_BRANCH	.L102
 24a:	854a                	mv	a0,s2
 24c:	00000097          	auipc	ra,0x0
			24c: R_RISCV_CALL	llc_task_random_gen_request
			24c: R_RISCV_RELAX	*ABS*
 250:	000080e7          	jalr	ra # 24c <.LVL148+0x4>

00000254 <.LVL149>:
 254:	0009a783          	lw	a5,0(s3)
 258:	4739                	li	a4,14
 25a:	0ae78223          	sb	a4,164(a5)
 25e:	b581                	j	9e <.L88>
			25e: R_RISCV_RVC_JUMP	.L88

00000260 <.L102>:
 260:	0009a783          	lw	a5,0(s3)
 264:	0a57c783          	lbu	a5,165(a5)
 268:	8bc1                	andi	a5,a5,16
 26a:	cb81                	beqz	a5,27a <.L103>
			26a: R_RISCV_RVC_BRANCH	.L103
 26c:	4599                	li	a1,6
 26e:	8522                	mv	a0,s0
 270:	00000097          	auipc	ra,0x0
			270: R_RISCV_CALL	llc_llcp_terminate_ind_pdu_send
			270: R_RISCV_RELAX	*ABS*
 274:	000080e7          	jalr	ra # 270 <.L102+0x10>

00000278 <.LVL150>:
 278:	bd8d                	j	ea <.L104>
			278: R_RISCV_RVC_JUMP	.L104

0000027a <.L103>:
 27a:	0014f793          	andi	a5,s1,1
 27e:	cb99                	beqz	a5,294 <.L105>
			27e: R_RISCV_RVC_BRANCH	.L105
 280:	6605                	lui	a2,0x1
 282:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST95+0x9>
 286:	85ca                	mv	a1,s2
 288:	10200513          	li	a0,258
 28c:	00000097          	auipc	ra,0x0
			28c: R_RISCV_CALL	ble_ke_timer_set
			28c: R_RISCV_RELAX	*ABS*
 290:	000080e7          	jalr	ra # 28c <.L103+0x12>

00000294 <.L105>:
 294:	4619                	li	a2,6
 296:	458d                	li	a1,3
 298:	8522                	mv	a0,s0

0000029a <.LBB295>:
 29a:	04e2                	slli	s1,s1,0x18

0000029c <.LBE295>:
 29c:	00000097          	auipc	ra,0x0
			29c: R_RISCV_CALL	llc_llcp_reject_ind_pdu_send
			29c: R_RISCV_RELAX	*ABS*
 2a0:	000080e7          	jalr	ra # 29c <.LBE295>

000002a4 <.LBB298>:
 2a4:	84e1                	srai	s1,s1,0x18

000002a6 <.LVL154>:
 2a6:	0fd4f593          	andi	a1,s1,253
 2aa:	854a                	mv	a0,s2
 2ac:	00000097          	auipc	ra,0x0
			2ac: R_RISCV_CALL	ble_ke_state_set
			2ac: R_RISCV_RELAX	*ABS*
 2b0:	000080e7          	jalr	ra # 2ac <.LVL154+0x6>

000002b4 <.LBB299>:
 2b4:	0f94f593          	andi	a1,s1,249
 2b8:	854a                	mv	a0,s2
 2ba:	00000097          	auipc	ra,0x0
			2ba: R_RISCV_CALL	ble_ke_state_set
			2ba: R_RISCV_RELAX	*ABS*
 2be:	000080e7          	jalr	ra # 2ba <.LBB299+0x6>

000002c2 <.LBE299>:
 2c2:	014a87b3          	add	a5,s5,s4
 2c6:	439c                	lw	a5,0(a5)
 2c8:	0a078223          	sb	zero,164(a5)
 2cc:	bd39                	j	ea <.L104>
			2cc: R_RISCV_RVC_JUMP	.L104

000002ce <.L100>:
 2ce:	8522                	mv	a0,s0
 2d0:	00000097          	auipc	ra,0x0
			2d0: R_RISCV_CALL	llc_llcp_start_enc_req_pdu_send
			2d0: R_RISCV_RELAX	*ABS*
 2d4:	000080e7          	jalr	ra # 2d0 <.L100+0x2>

000002d8 <.LVL158>:
 2d8:	0009a783          	lw	a5,0(s3)
 2dc:	472d                	li	a4,11
 2de:	0ae78223          	sb	a4,164(a5)
 2e2:	bdad                	j	15c <.L116>
			2e2: R_RISCV_RVC_JUMP	.L116

Disassembly of section .text.llc_chnl_assess_timer_handler:

00000000 <llc_chnl_assess_timer_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	ce4e                	sw	s3,28(sp)
   4:	000007b7          	lui	a5,0x0
			4: R_RISCV_HI20	llc_env
			4: R_RISCV_RELAX	*ABS*
   8:	00865993          	srli	s3,a2,0x8

0000000c <.LVL160>:
   c:	00299713          	slli	a4,s3,0x2
  10:	00078793          	mv	a5,a5
			10: R_RISCV_LO12_I	llc_env
			10: R_RISCV_RELAX	*ABS*
  14:	d422                	sw	s0,40(sp)
  16:	97ba                	add	a5,a5,a4
  18:	d606                	sw	ra,44(sp)
  1a:	d226                	sw	s1,36(sp)
  1c:	d04a                	sw	s2,32(sp)
  1e:	8532                	mv	a0,a2

00000020 <.LVL161>:
  20:	0007a903          	lw	s2,0(a5) # 0 <llc_chnl_assess_timer_handler>

00000024 <.LVL162>:
  24:	8432                	mv	s0,a2
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_state_get
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL162+0x2>

0000002e <.LBB301>:
  2e:	893d                	andi	a0,a0,15

00000030 <.LVL164>:
  30:	47bd                	li	a5,15
  32:	02f50463          	beq	a0,a5,5a <.L118>
			32: R_RISCV_BRANCH	.L118
  36:	0a394703          	lbu	a4,163(s2)
  3a:	000004b7          	lui	s1,0x0
			3a: R_RISCV_HI20	llm_le_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	4799                	li	a5,6
  40:	00048493          	mv	s1,s1
			40: R_RISCV_LO12_I	llm_le_env
			40: R_RISCV_RELAX	*ABS*
  44:	02f71363          	bne	a4,a5,6a <.L119>
			44: R_RISCV_BRANCH	.L119

00000048 <.L126>:
  48:	02c4d603          	lhu	a2,44(s1) # 2c <.LVL162+0x8>
  4c:	85a2                	mv	a1,s0
  4e:	10500513          	li	a0,261
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	ble_ke_timer_set
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.L126+0xa>

0000005a <.L118>:
  5a:	50b2                	lw	ra,44(sp)
  5c:	5422                	lw	s0,40(sp)
  5e:	5492                	lw	s1,36(sp)
  60:	5902                	lw	s2,32(sp)

00000062 <.LVL166>:
  62:	49f2                	lw	s3,28(sp)

00000064 <.LVL167>:
  64:	4501                	li	a0,0
  66:	6145                	addi	sp,sp,48
  68:	8082                	ret

0000006a <.L119>:
  6a:	0028                	addi	a0,sp,8
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	llm_util_get_channel_map
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.L119+0x2>

00000074 <.LVL169>:
  74:	0030                	addi	a2,sp,8
  76:	858a                	mv	a1,sp
  78:	854e                	mv	a0,s3
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	llc_ch_assess_get_local_ch_map
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL169+0x6>

00000082 <.LVL170>:
  82:	03a94783          	lbu	a5,58(s2)
  86:	86aa                	mv	a3,a0

00000088 <.LVL171>:
  88:	17fd                	addi	a5,a5,-1
  8a:	0ff7f793          	andi	a5,a5,255
  8e:	02f90d23          	sb	a5,58(s2)
  92:	c781                	beqz	a5,9a <.L120>
			92: R_RISCV_RVC_BRANCH	.L120
  94:	4785                	li	a5,1
  96:	00a7e963          	bltu	a5,a0,a8 <.L121>
			96: R_RISCV_BRANCH	.L121

0000009a <.L120>:
  9a:	0030                	addi	a2,sp,8
  9c:	858a                	mv	a1,sp
  9e:	854e                	mv	a0,s3

000000a0 <.LVL172>:
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	llc_ch_assess_reass_ch
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL172>

000000a8 <.L121>:
  a8:	000007b7          	lui	a5,0x0
			a8: R_RISCV_HI20	ble_memcpy_ptr
			a8: R_RISCV_RELAX	*ABS*
  ac:	0007a783          	lw	a5,0(a5) # 0 <llc_chnl_assess_timer_handler>
			ac: R_RISCV_LO12_I	ble_memcpy_ptr
			ac: R_RISCV_RELAX	*ABS*
  b0:	858a                	mv	a1,sp
  b2:	4615                	li	a2,5
  b4:	06390513          	addi	a0,s2,99
  b8:	9782                	jalr	a5

000000ba <.LVL174>:
  ba:	8622                	mv	a2,s0
  bc:	85a2                	mv	a1,s0
  be:	10800513          	li	a0,264
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	ble_ke_msg_send_basic
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL174+0x8>

000000ca <.LVL175>:
  ca:	bfbd                	j	48 <.L126>
			ca: R_RISCV_RVC_JUMP	.L126

Disassembly of section .text.llc_llcp_rsp_to_ind_handler:

00000000 <llc_llcp_rsp_to_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	00865513          	srli	a0,a2,0x8

00000006 <.LVL177>:
   6:	02200593          	li	a1,34

0000000a <.LVL178>:
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	llc_util_dicon_procedure
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL178+0x2>

00000014 <.LVL179>:
  14:	40b2                	lw	ra,12(sp)
  16:	4501                	li	a0,0
  18:	0141                	addi	sp,sp,16
  1a:	8082                	ret

Disassembly of section .text.llc_link_sup_to_ind_handler:

00000000 <llc_link_sup_to_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL181>:
   4:	ce06                	sw	ra,28(sp)
   6:	c632                	sw	a2,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ble_ke_state_get
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <.LVL181+0x4>

00000010 <.LBB307>:
  10:	07f57513          	andi	a0,a0,127

00000014 <.LVL183>:
  14:	07f00793          	li	a5,127
  18:	02f50e63          	beq	a0,a5,54 <.L130>
			18: R_RISCV_BRANCH	.L130
  1c:	4632                	lw	a2,12(sp)
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	llc_env
			1e: R_RISCV_RELAX	*ABS*
  22:	00078793          	mv	a5,a5
			22: R_RISCV_LO12_I	llc_env
			22: R_RISCV_RELAX	*ABS*
  26:	00865513          	srli	a0,a2,0x8
  2a:	00251713          	slli	a4,a0,0x2
  2e:	97ba                	add	a5,a5,a4
  30:	4398                	lw	a4,0(a5)
  32:	4b1c                	lw	a5,16(a4)
  34:	07e7c783          	lbu	a5,126(a5) # 7e <.LBB224+0x6>
  38:	8b89                	andi	a5,a5,2
  3a:	c38d                	beqz	a5,5c <.L131>
			3a: R_RISCV_RVC_BRANCH	.L131
  3c:	05475603          	lhu	a2,84(a4)
  40:	00851593          	slli	a1,a0,0x8
  44:	0015e593          	ori	a1,a1,1
  48:	10100513          	li	a0,257
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	ble_ke_timer_set
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL183+0x38>

00000054 <.L130>:
  54:	40f2                	lw	ra,28(sp)
  56:	4501                	li	a0,0
  58:	6105                	addi	sp,sp,32
  5a:	8082                	ret

0000005c <.L131>:
  5c:	45a1                	li	a1,8
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	llc_util_dicon_procedure
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.L131+0x2>

00000066 <.LVL186>:
  66:	b7fd                	j	54 <.L130>
			66: R_RISCV_RVC_JUMP	.L130

Disassembly of section .text.llc_auth_payl_nearly_to_ind_handler:

00000000 <llc_auth_payl_nearly_to_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	8532                	mv	a0,a2

00000004 <.LVL188>:
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	84b2                	mv	s1,a2
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ble_ke_state_get
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL188+0xa>

00000016 <.LBB310>:
  16:	00f57713          	andi	a4,a0,15
  1a:	47bd                	li	a5,15
  1c:	00f71463          	bne	a4,a5,24 <.L134>
			1c: R_RISCV_BRANCH	.L134

00000020 <.L141>:
  20:	4501                	li	a0,0
  22:	a02d                	j	4c <.L133>
			22: R_RISCV_RVC_JUMP	.L133

00000024 <.L134>:
  24:	00157793          	andi	a5,a0,1
  28:	842a                	mv	s0,a0
  2a:	0084d913          	srli	s2,s1,0x8

0000002e <.LBB312>:
  2e:	c78d                	beqz	a5,58 <.L136>
			2e: R_RISCV_RVC_BRANCH	.L136
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	llc_env
			30: R_RISCV_RELAX	*ABS*
  34:	00078793          	mv	a5,a5
			34: R_RISCV_LO12_I	llc_env
			34: R_RISCV_RELAX	*ABS*
  38:	090a                	slli	s2,s2,0x2
  3a:	993e                	add	s2,s2,a5
  3c:	00092783          	lw	a5,0(s2)
  40:	4509                	li	a0,2

00000042 <.LVL193>:
  42:	0a37c703          	lbu	a4,163(a5) # a3 <.LVL199+0x1>
  46:	4795                	li	a5,5
  48:	fcf70ce3          	beq	a4,a5,20 <.L141>
			48: R_RISCV_BRANCH	.L141

0000004c <.L133>:
  4c:	40b2                	lw	ra,12(sp)
  4e:	4422                	lw	s0,8(sp)
  50:	4492                	lw	s1,4(sp)
  52:	4902                	lw	s2,0(sp)
  54:	0141                	addi	sp,sp,16
  56:	8082                	ret

00000058 <.L136>:
  58:	00457793          	andi	a5,a0,4
  5c:	4509                	li	a0,2

0000005e <.LVL195>:
  5e:	f7fd                	bnez	a5,4c <.L133>
			5e: R_RISCV_RVC_BRANCH	.L133
  60:	85a6                	mv	a1,s1
  62:	10200513          	li	a0,258
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	ble_ke_timer_active
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL195+0x8>

0000006e <.LVL196>:
  6e:	f94d                	bnez	a0,20 <.L141>
			6e: R_RISCV_RVC_BRANCH	.L141

00000070 <.LBB316>:
  70:	00146593          	ori	a1,s0,1
  74:	0ff5f593          	andi	a1,a1,255
  78:	8526                	mv	a0,s1
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	ble_ke_state_set
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LBB316+0xa>

00000082 <.LBE316>:
  82:	000007b7          	lui	a5,0x0
			82: R_RISCV_HI20	llc_env
			82: R_RISCV_RELAX	*ABS*
  86:	00291713          	slli	a4,s2,0x2
  8a:	00078793          	mv	a5,a5
			8a: R_RISCV_LO12_I	llc_env
			8a: R_RISCV_RELAX	*ABS*
  8e:	97ba                	add	a5,a5,a4
  90:	439c                	lw	a5,0(a5)
  92:	4715                	li	a4,5
  94:	854a                	mv	a0,s2
  96:	0ae781a3          	sb	a4,163(a5) # a3 <.LVL199+0x1>
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	llc_llcp_ping_req_pdu_send
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LBE316+0x18>

000000a2 <.LVL199>:
  a2:	6605                	lui	a2,0x1
  a4:	fa060613          	addi	a2,a2,-96 # fa0 <.LLST95+0x9>
  a8:	85a6                	mv	a1,s1
  aa:	10200513          	li	a0,258
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	ble_ke_timer_set
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.LVL199+0xc>

000000b6 <.LVL200>:
  b6:	b7ad                	j	20 <.L141>
			b6: R_RISCV_RVC_JUMP	.L141

Disassembly of section .text.llc_data_ind_handler:

00000000 <llc_data_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL202>:
   4:	cc22                	sw	s0,24(sp)
   6:	c62e                	sw	a1,12(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	00865413          	srli	s0,a2,0x8

0000000e <.LVL203>:
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	ble_ke_state_get
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL203>

00000016 <.LBB318>:
  16:	893d                	andi	a0,a0,15

00000018 <.LVL205>:
  18:	47bd                	li	a5,15
  1a:	45b2                	lw	a1,12(sp)
  1c:	00f51d63          	bne	a0,a5,36 <.L143>
			1c: R_RISCV_BRANCH	.L143
  20:	0065c503          	lbu	a0,6(a1)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	em_buf_rx_free
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL205+0xc>

0000002c <.L147>:
  2c:	4501                	li	a0,0

0000002e <.L142>:
  2e:	40f2                	lw	ra,28(sp)
  30:	4462                	lw	s0,24(sp)

00000032 <.LVL208>:
  32:	6105                	addi	sp,sp,32

00000034 <.LVL209>:
  34:	8082                	ret

00000036 <.L143>:
  36:	00000737          	lui	a4,0x0
			36: R_RISCV_HI20	llc_env
			36: R_RISCV_RELAX	*ABS*
  3a:	00241793          	slli	a5,s0,0x2
  3e:	00070713          	mv	a4,a4
			3e: R_RISCV_LO12_I	llc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	97ba                	add	a5,a5,a4
  44:	439c                	lw	a5,0(a5)
  46:	0a57c783          	lbu	a5,165(a5)
  4a:	8ba1                	andi	a5,a5,8
  4c:	cf99                	beqz	a5,6a <.L145>
			4c: R_RISCV_RVC_BRANCH	.L145
  4e:	0065c503          	lbu	a0,6(a1)
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	em_buf_rx_free
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.L143+0x1c>

0000005a <.LVL211>:
  5a:	03d00593          	li	a1,61
  5e:	8522                	mv	a0,s0
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	llc_util_dicon_procedure
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL211+0x6>

00000068 <.LVL212>:
  68:	b7d1                	j	2c <.L147>
			68: R_RISCV_RVC_JUMP	.L147

0000006a <.L145>:
  6a:	6785                	lui	a5,0x1
  6c:	80678793          	addi	a5,a5,-2042 # 806 <.LASF532+0x3>
  70:	852e                	mv	a0,a1
  72:	fef59c23          	sh	a5,-8(a1)
  76:	fe859d23          	sh	s0,-6(a1)
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	hci_send_2_host
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.L145+0x10>

00000082 <.LVL214>:
  82:	4505                	li	a0,1

00000084 <.LBE321>:
  84:	b76d                	j	2e <.L142>
			84: R_RISCV_RVC_JUMP	.L142

Disassembly of section .text.lld_stop_ind_handler:

00000000 <lld_stop_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	8532                	mv	a0,a2

00000004 <.LVL216>:
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	c05a                	sw	s6,0(sp)
  14:	84b2                	mv	s1,a2
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	ble_ke_state_get
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL216+0x12>

0000001e <.LVL217>:
  1e:	07f00793          	li	a5,127
  22:	0ef50963          	beq	a0,a5,114 <.L149>
			22: R_RISCV_BRANCH	.L149

00000026 <.LBB331>:
  26:	0084d413          	srli	s0,s1,0x8

0000002a <.LBB333>:
  2a:	05c00713          	li	a4,92
  2e:	02e40733          	mul	a4,s0,a4
  32:	280087b7          	lui	a5,0x28008
  36:	09278793          	addi	a5,a5,146 # 28008092 <.LASF883+0x28003651>

0000003a <.LBE333>:
  3a:	000009b7          	lui	s3,0x0
			3a: R_RISCV_HI20	llc_env
			3a: R_RISCV_RELAX	*ABS*
  3e:	00098a93          	mv	s5,s3
			3e: R_RISCV_LO12_I	llc_env
			3e: R_RISCV_RELAX	*ABS*
  42:	00241b13          	slli	s6,s0,0x2
  46:	9ada                	add	s5,s5,s6
  48:	8526                	mv	a0,s1
  4a:	00098993          	mv	s3,s3
			4a: R_RISCV_LO12_I	llc_env
			4a: R_RISCV_RELAX	*ABS*

0000004e <.LBB336>:
  4e:	973e                	add	a4,a4,a5
  50:	00075783          	lhu	a5,0(a4) # 0 <lld_stop_ind_handler>
  54:	07c2                	slli	a5,a5,0x10
  56:	83c1                	srli	a5,a5,0x10

00000058 <.LBE336>:
  58:	cff7f793          	andi	a5,a5,-769
  5c:	07c2                	slli	a5,a5,0x10
  5e:	83c1                	srli	a5,a5,0x10

00000060 <.LBB337>:
  60:	00f71023          	sh	a5,0(a4)

00000064 <.LBE337>:
  64:	000aaa03          	lw	s4,0(s5)

00000068 <.LVL223>:
  68:	0a1a4903          	lbu	s2,161(s4)

0000006c <.LVL224>:
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	ble_ke_state_get
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL224>

00000074 <.LVL225>:
  74:	47bd                	li	a5,15
  76:	00f50c63          	beq	a0,a5,8e <.L150>
			76: R_RISCV_BRANCH	.L150
  7a:	000aa783          	lw	a5,0(s5)
  7e:	4921                	li	s2,8

00000080 <.LVL226>:
  80:	05c7d783          	lhu	a5,92(a5)
  84:	1007f793          	andi	a5,a5,256
  88:	e399                	bnez	a5,8e <.L150>
			88: R_RISCV_RVC_BRANCH	.L150
  8a:	03e00913          	li	s2,62

0000008e <.L150>:
  8e:	8905                	andi	a0,a0,1

00000090 <.LVL228>:
  90:	c90d                	beqz	a0,c2 <.L152>
			90: R_RISCV_RVC_BRANCH	.L152
  92:	0a3a4783          	lbu	a5,163(s4)
  96:	4749                	li	a4,18
  98:	17fd                	addi	a5,a5,-1
  9a:	0ff7f793          	andi	a5,a5,255
  9e:	02f76263          	bltu	a4,a5,c2 <.L152>
			9e: R_RISCV_BRANCH	.L152
  a2:	00000737          	lui	a4,0x0
			a2: R_RISCV_HI20	.L154
			a2: R_RISCV_RELAX	*ABS*
  a6:	078a                	slli	a5,a5,0x2
  a8:	00070713          	mv	a4,a4
			a8: R_RISCV_LO12_I	.L154
			a8: R_RISCV_RELAX	*ABS*
  ac:	97ba                	add	a5,a5,a4
  ae:	439c                	lw	a5,0(a5)
  b0:	8782                	jr	a5

000000b2 <.L157>:
  b2:	069a0613          	addi	a2,s4,105
  b6:	85a2                	mv	a1,s0
  b8:	854a                	mv	a0,s2
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	llc_feats_rd_event_send
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.L157+0x8>

000000c2 <.L152>:
  c2:	86ca                	mv	a3,s2
  c4:	8622                	mv	a2,s0
  c6:	4581                	li	a1,0
  c8:	8526                	mv	a0,s1
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	llc_discon_event_complete_send
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.L152+0x8>

000000d2 <.LVL230>:
  d2:	85a6                	mv	a1,s1
  d4:	10100513          	li	a0,257
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	ble_ke_timer_clear
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL230+0x6>

000000e0 <.LVL231>:
  e0:	85a6                	mv	a1,s1
  e2:	10200513          	li	a0,258
  e6:	00000097          	auipc	ra,0x0
			e6: R_RISCV_CALL	ble_ke_timer_clear
			e6: R_RISCV_RELAX	*ABS*
  ea:	000080e7          	jalr	ra # e6 <.LVL231+0x6>

000000ee <.LVL232>:
  ee:	85a6                	mv	a1,s1
  f0:	10300513          	li	a0,259
  f4:	00000097          	auipc	ra,0x0
			f4: R_RISCV_CALL	ble_ke_timer_clear
			f4: R_RISCV_RELAX	*ABS*
  f8:	000080e7          	jalr	ra # f4 <.LVL232+0x6>

000000fc <.LVL233>:
  fc:	10400513          	li	a0,260
 100:	85a6                	mv	a1,s1
 102:	00000097          	auipc	ra,0x0
			102: R_RISCV_CALL	ble_ke_timer_clear
			102: R_RISCV_RELAX	*ABS*
 106:	000080e7          	jalr	ra # 102 <.LVL233+0x6>

0000010a <.LVL234>:
 10a:	8522                	mv	a0,s0
 10c:	00000097          	auipc	ra,0x0
			10c: R_RISCV_CALL	llc_stop
			10c: R_RISCV_RELAX	*ABS*
 110:	000080e7          	jalr	ra # 10c <.LVL234+0x2>

00000114 <.L149>:
 114:	40f2                	lw	ra,28(sp)
 116:	4462                	lw	s0,24(sp)
 118:	44d2                	lw	s1,20(sp)
 11a:	4942                	lw	s2,16(sp)
 11c:	49b2                	lw	s3,12(sp)
 11e:	4a22                	lw	s4,8(sp)
 120:	4a92                	lw	s5,4(sp)
 122:	4b02                	lw	s6,0(sp)
 124:	4501                	li	a0,0
 126:	6105                	addi	sp,sp,32
 128:	8082                	ret

0000012a <.L156>:
 12a:	85a2                	mv	a1,s0
 12c:	854a                	mv	a0,s2
 12e:	00000097          	auipc	ra,0x0
			12e: R_RISCV_CALL	llc_version_rd_event_send
			12e: R_RISCV_RELAX	*ABS*
 132:	000080e7          	jalr	ra # 12e <.L156+0x4>

00000136 <.LVL237>:
 136:	b771                	j	c2 <.L152>
			136: R_RISCV_RVC_JUMP	.L152

00000138 <.L153>:
 138:	99da                	add	s3,s3,s6
 13a:	0009a783          	lw	a5,0(s3) # 0 <lld_stop_ind_handler>
 13e:	0a57c783          	lbu	a5,165(a5)
 142:	8bc1                	andi	a5,a5,16
 144:	cb81                	beqz	a5,154 <.L158>
			144: R_RISCV_RVC_BRANCH	.L158
 146:	85ca                	mv	a1,s2
 148:	8522                	mv	a0,s0
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	llc_common_enc_key_ref_comp_evt_send
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.L153+0x12>

00000152 <.LVL238>:
 152:	bf85                	j	c2 <.L152>
			152: R_RISCV_RVC_JUMP	.L152

00000154 <.L158>:
 154:	864a                	mv	a2,s2
 156:	4581                	li	a1,0
 158:	8522                	mv	a0,s0
 15a:	00000097          	auipc	ra,0x0
			15a: R_RISCV_CALL	llc_common_enc_change_evt_send
			15a: R_RISCV_RELAX	*ABS*
 15e:	000080e7          	jalr	ra # 15a <.L158+0x6>

00000162 <.LVL239>:
 162:	b785                	j	c2 <.L152>
			162: R_RISCV_RVC_JUMP	.L152

00000164 <.L155>:
 164:	4509                	li	a0,2
 166:	00000097          	auipc	ra,0x0
			166: R_RISCV_CALL	llm_util_check_evt_mask
			166: R_RISCV_RELAX	*ABS*
 16a:	000080e7          	jalr	ra # 166 <.L155+0x2>

0000016e <.LVL240>:
 16e:	d931                	beqz	a0,c2 <.L152>
			16e: R_RISCV_RVC_BRANCH	.L152
 170:	05ca5783          	lhu	a5,92(s4)
 174:	0407f793          	andi	a5,a5,64
 178:	d7a9                	beqz	a5,c2 <.L152>
			178: R_RISCV_RVC_BRANCH	.L152
 17a:	4601                	li	a2,0
 17c:	85a2                	mv	a1,s0
 17e:	854a                	mv	a0,s2
 180:	00000097          	auipc	ra,0x0
			180: R_RISCV_CALL	llc_con_update_complete_send
			180: R_RISCV_RELAX	*ABS*
 184:	000080e7          	jalr	ra # 180 <.LVL240+0x12>

00000188 <.LVL241>:
 188:	bf2d                	j	c2 <.L152>
			188: R_RISCV_RVC_JUMP	.L152
