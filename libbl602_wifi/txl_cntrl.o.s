
libbl602_wifi/txl_cntrl.o:     file format elf32-littleriscv


Disassembly of section .text.txl_int_fake_transfer:

00000000 <txl_int_fake_transfer>:
   0:	553c                	lw	a5,104(a0)
   2:	caff0737          	lui	a4,0xcaff0
   6:	ade70713          	addi	a4,a4,-1314 # cafefade <.LASF376+0xcafec708>
   a:	df98                	sw	a4,56(a5)

0000000c <.LBB167>:
   c:	05d9                	addi	a1,a1,22

0000000e <.LVL2>:
   e:	00000737          	lui	a4,0x0
			e: R_RISCV_HI20	txl_buffer_env
			e: R_RISCV_RELAX	*ABS*
  12:	00070693          	mv	a3,a4
			12: R_RISCV_LO12_I	txl_buffer_env
			12: R_RISCV_RELAX	*ABS*
  16:	00359613          	slli	a2,a1,0x3

0000001a <.LBE167>:
  1a:	cbc8                	sw	a0,20(a5)

0000001c <.LBB171>:
  1c:	96b2                	add	a3,a3,a2
  1e:	42d0                	lw	a2,4(a3)
  20:	00070713          	mv	a4,a4
			20: R_RISCV_LO12_I	txl_buffer_env
			20: R_RISCV_RELAX	*ABS*
  24:	ea01                	bnez	a2,34 <.L2>
			24: R_RISCV_RVC_BRANCH	.L2
  26:	c2dc                	sw	a5,4(a3)

00000028 <.L3>:
  28:	058e                	slli	a1,a1,0x3
  2a:	972e                	add	a4,a4,a1
  2c:	c71c                	sw	a5,8(a4)
  2e:	0007a823          	sw	zero,16(a5)

00000032 <.LBE171>:
  32:	8082                	ret

00000034 <.L2>:
  34:	4694                	lw	a3,8(a3)
  36:	ca9c                	sw	a5,16(a3)
  38:	bfc5                	j	28 <.L3>
			38: R_RISCV_RVC_JUMP	.L3

Disassembly of section .text.blmac_abs_timer_set:

00000000 <blmac_abs_timer_set>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	47a5                	li	a5,9
   a:	842a                	mv	s0,a0
   c:	84ae                	mv	s1,a1
   e:	02a7d163          	bge	a5,a0,30 <.L5>
			e: R_RISCV_BRANCH	.L5
  12:	6609                	lui	a2,0x2
  14:	000005b7          	lui	a1,0x0
			14: R_RISCV_HI20	.LC0
			14: R_RISCV_RELAX	*ABS*

00000018 <.LVL7>:
  18:	00000537          	lui	a0,0x0
			18: R_RISCV_HI20	.LC1
			18: R_RISCV_RELAX	*ABS*

0000001c <.LVL8>:
  1c:	6a060613          	addi	a2,a2,1696 # 26a0 <.LASF617+0x8>
  20:	00058593          	mv	a1,a1
			20: R_RISCV_LO12_I	.LC0
			20: R_RISCV_RELAX	*ABS*
  24:	00050513          	mv	a0,a0
			24: R_RISCV_LO12_I	.LC1
			24: R_RISCV_RELAX	*ABS*
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	assert_err
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL8+0xc>

00000030 <.L5>:
  30:	112c07b7          	lui	a5,0x112c0
  34:	04a78793          	addi	a5,a5,74 # 112c004a <.LASF376+0x112bcc74>
  38:	943e                	add	s0,s0,a5

0000003a <.LVL10>:
  3a:	040a                	slli	s0,s0,0x2

0000003c <.LVL11>:
  3c:	c004                	sw	s1,0(s0)
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)
  42:	4492                	lw	s1,4(sp)

00000044 <.LVL12>:
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.txl_machdr_format:

00000000 <txl_machdr_format>:
   0:	01654783          	lbu	a5,22(a0) # 16 <.LVL15+0x6>
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	txl_cntrl_env
			4: R_RISCV_RELAX	*ABS*

00000008 <.LBE173>:
   8:	01650613          	addi	a2,a0,22

0000000c <.LVL14>:
   c:	00f7f693          	andi	a3,a5,15

00000010 <.LVL15>:
  10:	00070713          	mv	a4,a4
			10: R_RISCV_LO12_I	txl_cntrl_env
			10: R_RISCV_RELAX	*ABS*
  14:	e691                	bnez	a3,20 <.L8>
			14: R_RISCV_RVC_BRANCH	.L8
  16:	05475783          	lhu	a5,84(a4) # 54 <.L20>
  1a:	0785                	addi	a5,a5,1
  1c:	04f71a23          	sh	a5,84(a4)

00000020 <.L8>:
  20:	05475783          	lhu	a5,84(a4)
  24:	0792                	slli	a5,a5,0x4
  26:	8fd5                	or	a5,a5,a3

00000028 <.LBB178>:
  28:	07c2                	slli	a5,a5,0x10
  2a:	83c1                	srli	a5,a5,0x10
  2c:	00f50b23          	sb	a5,22(a0)

00000030 <.LVL17>:
  30:	83a1                	srli	a5,a5,0x8
  32:	00f600a3          	sb	a5,1(a2)

00000036 <.LBE178>:
  36:	8082                	ret

Disassembly of section .text.txl_cntrl_init:

00000000 <txl_cntrl_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	txl_hwdesc_init
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <txl_cntrl_init+0xc>

00000014 <.LVL19>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	txl_buffer_init
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LVL19>

0000001c <.LVL20>:
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	txl_cfm_init
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL20>

00000024 <.LVL21>:
  24:	4501                	li	a0,0
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	txl_frame_init
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL21+0x2>

0000002e <.LVL22>:
  2e:	000004b7          	lui	s1,0x0
			2e: R_RISCV_HI20	txl_cntrl_env
			2e: R_RISCV_RELAX	*ABS*
  32:	00048513          	mv	a0,s1
			32: R_RISCV_LO12_I	txl_cntrl_env
			32: R_RISCV_RELAX	*ABS*
  36:	05800613          	li	a2,88
  3a:	4581                	li	a1,0
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	memset
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL22+0xe>

00000044 <.LVL23>:
  44:	44a007b7          	lui	a5,0x44a00
  48:	00048413          	mv	s0,s1
			48: R_RISCV_LO12_I	txl_cntrl_env
			48: R_RISCV_RELAX	*ABS*
  4c:	08078993          	addi	s3,a5,128 # 44a00080 <.LASF376+0x449fccaa>
  50:	00048493          	mv	s1,s1
			50: R_RISCV_LO12_I	txl_cntrl_env
			50: R_RISCV_RELAX	*ABS*
  54:	09478913          	addi	s2,a5,148

00000058 <.L10>:
  58:	00440513          	addi	a0,s0,4
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	co_list_init
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.L10+0x4>

00000064 <.LVL25>:
  64:	00042023          	sw	zero,0(s0)

00000068 <.LBB181>:
  68:	0009a783          	lw	a5,0(s3)

0000006c <.LBE181>:
  6c:	00040723          	sb	zero,14(s0)
  70:	0991                	addi	s3,s3,4
  72:	00f41623          	sh	a5,12(s0)
  76:	0441                	addi	s0,s0,16
  78:	ff2990e3          	bne	s3,s2,58 <.L10>
			78: R_RISCV_BRANCH	.L10
  7c:	40f2                	lw	ra,28(sp)
  7e:	4462                	lw	s0,24(sp)
  80:	04049a23          	sh	zero,84(s1) # 54 <.LVL23+0x10>
  84:	4942                	lw	s2,16(sp)
  86:	44d2                	lw	s1,20(sp)
  88:	49b2                	lw	s3,12(sp)
  8a:	6105                	addi	sp,sp,32
  8c:	8082                	ret

Disassembly of section .text.txl_cntrl_tx_check:

00000000 <txl_cntrl_tx_check>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	txl_cntrl_env+0x56
			0: R_RISCV_RELAX	*ABS*+0x56
   4:	0567c783          	lbu	a5,86(a5) # 56 <.LVL196>
			4: R_RISCV_LO12_I	txl_cntrl_env+0x56
			4: R_RISCV_RELAX	*ABS*+0x56
   8:	e789                	bnez	a5,12 <.L14>
			8: R_RISCV_RVC_BRANCH	.L14

0000000a <.LBB185>:
   a:	00000317          	auipc	t1,0x0
			a: R_RISCV_CALL	chan_is_tx_allowed
			a: R_RISCV_RELAX	*ABS*
   e:	00030067          	jr	t1 # a <.LBB185>

00000012 <.L14>:
  12:	4501                	li	a0,0

00000014 <.LVL28>:
  14:	8082                	ret

Disassembly of section .text.txl_cntrl_halt_ac:

00000000 <txl_cntrl_halt_ac>:
   0:	4791                	li	a5,4
   2:	0aa7e763          	bltu	a5,a0,b0 <.L16>
			2: R_RISCV_BRANCH	.L16
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	.L18
			6: R_RISCV_RELAX	*ABS*
   a:	00078793          	mv	a5,a5
			a: R_RISCV_LO12_I	.L18
			a: R_RISCV_RELAX	*ABS*
   e:	050a                	slli	a0,a0,0x2

00000010 <.LVL30>:
  10:	953e                	add	a0,a0,a5
  12:	411c                	lw	a5,0(a0)
  14:	8782                	jr	a5

00000016 <.L17>:
  16:	6721                	lui	a4,0x8
  18:	44b087b7          	lui	a5,0x44b08
  1c:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

00000020 <.LBB219>:
  20:	44b08737          	lui	a4,0x44b08

00000024 <.L23>:
  24:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>

00000028 <.LBE222>:
  28:	8b8d                	andi	a5,a5,3
  2a:	ffed                	bnez	a5,24 <.L23>
			2a: R_RISCV_RVC_BRANCH	.L23

0000002c <.LBB223>:
  2c:	67a1                	lui	a5,0x8

0000002e <.L34>:
  2e:	18f72223          	sw	a5,388(a4)

00000032 <.LBE225>:
  32:	8082                	ret

00000034 <.L19>:
  34:	00080737          	lui	a4,0x80
  38:	44b087b7          	lui	a5,0x44b08
  3c:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

00000040 <.LBB230>:
  40:	44b08737          	lui	a4,0x44b08

00000044 <.L25>:
  44:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>
  48:	83c1                	srli	a5,a5,0x10

0000004a <.LBE233>:
  4a:	8b8d                	andi	a5,a5,3
  4c:	ffe5                	bnez	a5,44 <.L25>
			4c: R_RISCV_RVC_BRANCH	.L25

0000004e <.LBB234>:
  4e:	000807b7          	lui	a5,0x80
  52:	bff1                	j	2e <.L34>
			52: R_RISCV_RVC_JUMP	.L34

00000054 <.L20>:
  54:	00040737          	lui	a4,0x40
  58:	44b087b7          	lui	a5,0x44b08
  5c:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

00000060 <.LBB238>:
  60:	44b08737          	lui	a4,0x44b08

00000064 <.L26>:
  64:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>
  68:	83b1                	srli	a5,a5,0xc

0000006a <.LBE241>:
  6a:	8b8d                	andi	a5,a5,3
  6c:	ffe5                	bnez	a5,64 <.L26>
			6c: R_RISCV_RVC_BRANCH	.L26

0000006e <.LBB242>:
  6e:	000407b7          	lui	a5,0x40
  72:	bf75                	j	2e <.L34>
			72: R_RISCV_RVC_JUMP	.L34

00000074 <.L21>:
  74:	00020737          	lui	a4,0x20
  78:	44b087b7          	lui	a5,0x44b08
  7c:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

00000080 <.LBB246>:
  80:	44b08737          	lui	a4,0x44b08

00000084 <.L27>:
  84:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>
  88:	83a1                	srli	a5,a5,0x8

0000008a <.LBE249>:
  8a:	8b8d                	andi	a5,a5,3
  8c:	ffe5                	bnez	a5,84 <.L27>
			8c: R_RISCV_RVC_BRANCH	.L27

0000008e <.LBB250>:
  8e:	000207b7          	lui	a5,0x20
  92:	bf71                	j	2e <.L34>
			92: R_RISCV_RVC_JUMP	.L34

00000094 <.L22>:
  94:	6741                	lui	a4,0x10
  96:	44b087b7          	lui	a5,0x44b08
  9a:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

0000009e <.LBB254>:
  9e:	44b08737          	lui	a4,0x44b08

000000a2 <.L28>:
  a2:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>
  a6:	8391                	srli	a5,a5,0x4

000000a8 <.LBE257>:
  a8:	8b8d                	andi	a5,a5,3
  aa:	ffe5                	bnez	a5,a2 <.L28>
			aa: R_RISCV_RVC_BRANCH	.L28

000000ac <.LBB258>:
  ac:	67c1                	lui	a5,0x10
  ae:	b741                	j	2e <.L34>
			ae: R_RISCV_RVC_JUMP	.L34

000000b0 <.L16>:
  b0:	000005b7          	lui	a1,0x0
			b0: R_RISCV_HI20	.LC0
			b0: R_RISCV_RELAX	*ABS*
  b4:	00000537          	lui	a0,0x0
			b4: R_RISCV_HI20	.LC2
			b4: R_RISCV_RELAX	*ABS*

000000b8 <.LVL48>:
  b8:	77900613          	li	a2,1913
  bc:	00058593          	mv	a1,a1
			bc: R_RISCV_LO12_I	.LC0
			bc: R_RISCV_RELAX	*ABS*
  c0:	00050513          	mv	a0,a0
			c0: R_RISCV_LO12_I	.LC2
			c0: R_RISCV_RELAX	*ABS*
  c4:	00000317          	auipc	t1,0x0
			c4: R_RISCV_CALL	assert_err
			c4: R_RISCV_RELAX	*ABS*
  c8:	00030067          	jr	t1 # c4 <.LVL48+0xc>

Disassembly of section .text.txl_cntrl_flush_ac:

00000000 <txl_cntrl_flush_ac>:
   0:	1101                	addi	sp,sp,-32
   2:	00000737          	lui	a4,0x0
			2: R_RISCV_HI20	txl_cfm_env
			2: R_RISCV_RELAX	*ABS*
   6:	c256                	sw	s5,4(sp)
   8:	00070713          	mv	a4,a4
			8: R_RISCV_LO12_I	txl_cfm_env
			8: R_RISCV_RELAX	*ABS*
   c:	8aae                	mv	s5,a1
   e:	00351593          	slli	a1,a0,0x3

00000012 <.LVL51>:
  12:	ce06                	sw	ra,28(sp)
  14:	cc22                	sw	s0,24(sp)
  16:	ca26                	sw	s1,20(sp)
  18:	c84a                	sw	s2,16(sp)
  1a:	c64e                	sw	s3,12(sp)
  1c:	c452                	sw	s4,8(sp)
  1e:	c05a                	sw	s6,0(sp)
  20:	84aa                	mv	s1,a0

00000022 <.LBB263>:
  22:	44b089b7          	lui	s3,0x44b08

00000026 <.LBE263>:
  26:	95ba                	add	a1,a1,a4
  28:	8656                	mv	a2,s5
  2a:	4905                	li	s2,1
  2c:	00a91933          	sll	s2,s2,a0

00000030 <.LBB264>:
  30:	08c9ab03          	lw	s6,140(s3) # 44b0808c <.LASF376+0x44b04cb6>

00000034 <.LBE264>:
  34:	00449a13          	slli	s4,s1,0x4
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	txl_cfm_flush
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LBE264+0x4>

00000040 <.LVL53>:
  40:	00000437          	lui	s0,0x0
			40: R_RISCV_HI20	txl_cntrl_env
			40: R_RISCV_RELAX	*ABS*
  44:	004a0593          	addi	a1,s4,4
  48:	00040413          	mv	s0,s0
			48: R_RISCV_LO12_I	txl_cntrl_env
			48: R_RISCV_RELAX	*ABS*
  4c:	8656                	mv	a2,s5
  4e:	95a2                	add	a1,a1,s0
  50:	8526                	mv	a0,s1
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	txl_cfm_flush
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL53+0x12>

0000005a <.LVL54>:
  5a:	9452                	add	s0,s0,s4
  5c:	00042023          	sw	zero,0(s0) # 0 <txl_cntrl_flush_ac>
  60:	8526                	mv	a0,s1
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	txl_buffer_reset
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL54+0x8>

0000006a <.LVL55>:
  6a:	fff94793          	not	a5,s2
  6e:	0167f7b3          	and	a5,a5,s6

00000072 <.LBB265>:
  72:	08f9a623          	sw	a5,140(s3)

00000076 <.LBB267>:
  76:	0929a423          	sw	s2,136(s3)

0000007a <.LBE267>:
  7a:	40f2                	lw	ra,28(sp)
  7c:	4462                	lw	s0,24(sp)
  7e:	44d2                	lw	s1,20(sp)

00000080 <.LVL59>:
  80:	4942                	lw	s2,16(sp)

00000082 <.LVL60>:
  82:	49b2                	lw	s3,12(sp)

00000084 <.LVL61>:
  84:	4a22                	lw	s4,8(sp)
  86:	4a92                	lw	s5,4(sp)

00000088 <.LVL62>:
  88:	4b02                	lw	s6,0(sp)

0000008a <.LVL63>:
  8a:	6105                	addi	sp,sp,32
  8c:	8082                	ret

Disassembly of section .text.txl_cntrl_clear_bcn_ac:

00000000 <txl_cntrl_clear_bcn_ac>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB272>:
   4:	30047073          	csrci	mstatus,8

00000008 <.LBE272>:
   8:	4511                	li	a0,4
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	txl_cntrl_halt_ac
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LBE272+0x2>

00000012 <.LVL64>:
  12:	400005b7          	lui	a1,0x40000
  16:	4511                	li	a0,4
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	txl_cntrl_flush_ac
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL64+0x6>

00000020 <.LBB273>:
  20:	30046073          	csrsi	mstatus,8

00000024 <.LBE273>:
  24:	40b2                	lw	ra,12(sp)
  26:	0141                	addi	sp,sp,16
  28:	8082                	ret

Disassembly of section .text.txl_cntrl_clear_all_ac:

00000000 <txl_cntrl_clear_all_ac>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB278>:
   4:	30047073          	csrci	mstatus,8

00000008 <.LBE278>:
   8:	4511                	li	a0,4
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	txl_cntrl_halt_ac
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LBE278+0x2>

00000012 <.LVL66>:
  12:	400005b7          	lui	a1,0x40000
  16:	4511                	li	a0,4
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	txl_cntrl_flush_ac
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL66+0x6>

00000020 <.LVL67>:
  20:	4501                	li	a0,0
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	txl_cntrl_halt_ac
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL67+0x2>

0000002a <.LVL68>:
  2a:	400005b7          	lui	a1,0x40000
  2e:	4501                	li	a0,0
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	txl_cntrl_flush_ac
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL68+0x6>

00000038 <.LVL69>:
  38:	4505                	li	a0,1
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	txl_cntrl_halt_ac
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL69+0x2>

00000042 <.LVL70>:
  42:	400005b7          	lui	a1,0x40000
  46:	4505                	li	a0,1
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	txl_cntrl_flush_ac
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL70+0x6>

00000050 <.LVL71>:
  50:	4509                	li	a0,2
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	txl_cntrl_halt_ac
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL71+0x2>

0000005a <.LVL72>:
  5a:	400005b7          	lui	a1,0x40000
  5e:	4509                	li	a0,2
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	txl_cntrl_flush_ac
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL72+0x6>

00000068 <.LVL73>:
  68:	450d                	li	a0,3
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	txl_cntrl_halt_ac
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LVL73+0x2>

00000072 <.LVL74>:
  72:	400005b7          	lui	a1,0x40000
  76:	450d                	li	a0,3
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	txl_cntrl_flush_ac
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL74+0x6>

00000080 <.LBB279>:
  80:	30046073          	csrsi	mstatus,8

00000084 <.LBE279>:
  84:	40b2                	lw	ra,12(sp)
  86:	0141                	addi	sp,sp,16
  88:	8082                	ret

Disassembly of section .text.txl_cntrl_inc_pck_cnt:

00000000 <txl_cntrl_inc_pck_cnt>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	txl_cntrl_env
			0: R_RISCV_RELAX	*ABS*
   4:	00078793          	mv	a5,a5
			4: R_RISCV_LO12_I	txl_cntrl_env
			4: R_RISCV_RELAX	*ABS*
   8:	4bb8                	lw	a4,80(a5)
   a:	0705                	addi	a4,a4,1
   c:	cbb8                	sw	a4,80(a5)
   e:	8082                	ret

Disassembly of section .text.txl_payload_handle:

00000000 <txl_payload_handle>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB284>:
   a:	44a007b7          	lui	a5,0x44a00
   e:	53c8                	lw	a0,36(a5)

00000010 <.LBB285>:
  10:	44fd                	li	s1,31
  12:	4905                	li	s2,1

00000014 <.LBE285>:
  14:	897d                	andi	a0,a0,31

00000016 <.LBB286>:
  16:	44a00437          	lui	s0,0x44a00

0000001a <.L43>:
  1a:	e519                	bnez	a0,28 <.L44>
			1a: R_RISCV_RVC_BRANCH	.L44
  1c:	40b2                	lw	ra,12(sp)
  1e:	4422                	lw	s0,8(sp)
  20:	4492                	lw	s1,4(sp)
  22:	4902                	lw	s2,0(sp)
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

00000028 <.L44>:
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	__clzsi2
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.L44>

00000030 <.LBE289>:
  30:	40a48533          	sub	a0,s1,a0

00000034 <.LVL79>:
  34:	00a91533          	sll	a0,s2,a0

00000038 <.LBB291>:
  38:	d008                	sw	a0,32(s0)

0000003a <.LBB292>:
  3a:	5048                	lw	a0,36(s0)

0000003c <.LBE292>:
  3c:	897d                	andi	a0,a0,31

0000003e <.LVL82>:
  3e:	bff1                	j	1a <.L43>
			3e: R_RISCV_RVC_JUMP	.L43

Disassembly of section .text.txl_payload_handle_backup:

00000000 <txl_payload_handle_backup>:
   0:	715d                	addi	sp,sp,-80
   2:	de4e                	sw	s3,60(sp)
   4:	dc52                	sw	s4,56(sp)
   6:	d65e                	sw	s7,44(sp)
   8:	d462                	sw	s8,40(sp)
   a:	d266                	sw	s9,36(sp)
   c:	000009b7          	lui	s3,0x0
			c: R_RISCV_HI20	txl_buffer_env
			c: R_RISCV_RELAX	*ABS*
  10:	00000a37          	lui	s4,0x0
			10: R_RISCV_HI20	txl_cntrl_env
			10: R_RISCV_RELAX	*ABS*

00000014 <.LBB370>:
  14:	ff880bb7          	lui	s7,0xff880
  18:	00000c37          	lui	s8,0x0
			18: R_RISCV_HI20	vif_info_tab
			18: R_RISCV_RELAX	*ABS*

0000001c <.LBB387>:
  1c:	6c85                	lui	s9,0x1

0000001e <.LBE387>:
  1e:	c2a6                	sw	s1,68(sp)
  20:	d06a                	sw	s10,32(sp)
  22:	c686                	sw	ra,76(sp)
  24:	c4a2                	sw	s0,72(sp)
  26:	c0ca                	sw	s2,64(sp)
  28:	da56                	sw	s5,52(sp)
  2a:	d85a                	sw	s6,48(sp)
  2c:	ce6e                	sw	s11,28(sp)
  2e:	00098993          	mv	s3,s3
			2e: R_RISCV_LO12_I	txl_buffer_env
			2e: R_RISCV_RELAX	*ABS*
  32:	000a0a13          	mv	s4,s4
			32: R_RISCV_LO12_I	txl_cntrl_env
			32: R_RISCV_RELAX	*ABS*
  36:	4481                	li	s1,0

00000038 <.LBB373>:
  38:	1bfd                	addi	s7,s7,-1
  3a:	000c0c13          	mv	s8,s8
			3a: R_RISCV_LO12_I	vif_info_tab
			3a: R_RISCV_RELAX	*ABS*

0000003e <.LBB397>:
  3e:	800c8d13          	addi	s10,s9,-2048 # 800 <.LASF310+0x6>

00000042 <.L48>:
  42:	0b49a503          	lw	a0,180(s3) # b4 <.LBB502+0x20>

00000046 <.LVL85>:
  46:	e515                	bnez	a0,72 <.L47>
			46: R_RISCV_RVC_BRANCH	.L47

00000048 <.L76>:
  48:	0485                	addi	s1,s1,1

0000004a <.LVL87>:
  4a:	4795                	li	a5,5
  4c:	09a1                	addi	s3,s3,8
  4e:	0a41                	addi	s4,s4,16
  50:	fef499e3          	bne	s1,a5,42 <.L48>
			50: R_RISCV_BRANCH	.L48
  54:	40b6                	lw	ra,76(sp)
  56:	4426                	lw	s0,72(sp)
  58:	4496                	lw	s1,68(sp)

0000005a <.LVL88>:
  5a:	4906                	lw	s2,64(sp)
  5c:	59f2                	lw	s3,60(sp)
  5e:	5a62                	lw	s4,56(sp)
  60:	5ad2                	lw	s5,52(sp)
  62:	5b42                	lw	s6,48(sp)
  64:	5bb2                	lw	s7,44(sp)
  66:	5c22                	lw	s8,40(sp)
  68:	5c92                	lw	s9,36(sp)
  6a:	5d02                	lw	s10,32(sp)
  6c:	4df2                	lw	s11,28(sp)
  6e:	6161                	addi	sp,sp,80
  70:	8082                	ret

00000072 <.L47>:
  72:	491c                	lw	a5,16(a0)

00000074 <.LBB444>:
  74:	4a85                	li	s5,1
  76:	00062b37          	lui	s6,0x62

0000007a <.LBE444>:
  7a:	0ff4f413          	andi	s0,s1,255

0000007e <.LBB500>:
  7e:	0af9aa23          	sw	a5,180(s3)

00000082 <.LBB445>:
  82:	009a9ab3          	sll	s5,s5,s1
  86:	a80b0b13          	addi	s6,s6,-1408 # 61a80 <.LASF376+0x5e6aa>

0000008a <.L77>:
  8a:	01452903          	lw	s2,20(a0) # 14 <.LBB370>

0000008e <.LVL92>:
  8e:	00892783          	lw	a5,8(s2)
  92:	c3e1                	beqz	a5,152 <.L50>
			92: R_RISCV_RVC_BRANCH	.L50

00000094 <.LBB502>:
  94:	4791                	li	a5,4
  96:	02f49463          	bne	s1,a5,be <.L51>
			96: R_RISCV_BRANCH	.L51
  9a:	02f94783          	lbu	a5,47(s2)
  9e:	5d800713          	li	a4,1496
  a2:	14d54683          	lbu	a3,333(a0)
  a6:	02e787b3          	mul	a5,a5,a4
  aa:	8295                	srli	a3,a3,0x5
  ac:	8a85                	andi	a3,a3,1
  ae:	97e2                	add	a5,a5,s8
  b0:	3467c703          	lbu	a4,838(a5) # 44a00346 <.LASF376+0x449fcf70>
  b4:	caf1                	beqz	a3,188 <.L52>
			b4: R_RISCV_RVC_BRANCH	.L52
  b6:	00276713          	ori	a4,a4,2

000000ba <.L91>:
  ba:	34e78323          	sb	a4,838(a5)

000000be <.L51>:
  be:	02e94703          	lbu	a4,46(s2)
  c2:	0ff00793          	li	a5,255
  c6:	04f71663          	bne	a4,a5,112 <.L53>
			c6: R_RISCV_BRANCH	.L53
  ca:	03295703          	lhu	a4,50(s2)
  ce:	14c50d93          	addi	s11,a0,332
  d2:	00877793          	andi	a5,a4,8
  d6:	cb8d                	beqz	a5,108 <.L54>
			d6: R_RISCV_RVC_BRANCH	.L54

000000d8 <.LBB505>:
  d8:	14c54783          	lbu	a5,332(a0)
  dc:	46c1                	li	a3,16
  de:	0dc7f793          	andi	a5,a5,220
  e2:	02d79363          	bne	a5,a3,108 <.L54>
			e2: R_RISCV_BRANCH	.L54

000000e6 <.LBB508>:
  e6:	01bdc783          	lbu	a5,27(s11)
  ea:	01adc683          	lbu	a3,26(s11)
  ee:	07a2                	slli	a5,a5,0x8

000000f0 <.LBE508>:
  f0:	8fd5                	or	a5,a5,a3
  f2:	eb99                	bnez	a5,108 <.L54>
			f2: R_RISCV_RVC_BRANCH	.L54

000000f4 <.LBE506>:
  f4:	02076713          	ori	a4,a4,32
  f8:	02e91923          	sh	a4,50(s2)
  fc:	15050513          	addi	a0,a0,336

00000100 <.LVL100>:
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	rxu_cntrl_monitor_pm
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.LVL100>

00000108 <.L54>:
 108:	856e                	mv	a0,s11
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	txl_machdr_format
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.L54+0x2>

00000112 <.L53>:
 112:	03295783          	lhu	a5,50(s2)

00000116 <.LBB378>:
 116:	06892703          	lw	a4,104(s2)

0000011a <.LBB379>:
 11a:	06c92d83          	lw	s11,108(s2)

0000011e <.LVL104>:
 11e:	8ba1                	andi	a5,a5,8
 120:	0f070693          	addi	a3,a4,240 # f0 <.LBE508>

00000124 <.LVL105>:
 124:	c7a5                	beqz	a5,18c <.L55>
			124: R_RISCV_RVC_BRANCH	.L55

00000126 <.LBB380>:
 126:	03cda783          	lw	a5,60(s11)
 12a:	0177f7b3          	and	a5,a5,s7
 12e:	02fdae23          	sw	a5,60(s11)
 132:	15074783          	lbu	a5,336(a4)
 136:	040da023          	sw	zero,64(s11)
 13a:	8b85                	andi	a5,a5,1
 13c:	0017b793          	seqz	a5,a5
 140:	07a6                	slli	a5,a5,0x9
 142:	02fdac23          	sw	a5,56(s11)

00000146 <.L92>:
 146:	02dda423          	sw	a3,40(s11)
 14a:	12872783          	lw	a5,296(a4)
 14e:	02fda223          	sw	a5,36(s11)

00000152 <.L50>:
 152:	00ca5783          	lhu	a5,12(s4) # c <txl_payload_handle_backup+0xc>
 156:	0785                	addi	a5,a5,1
 158:	00fa1623          	sh	a5,12(s4)

0000015c <.LBB514>:
 15c:	06c92903          	lw	s2,108(s2)

00000160 <.LBB478>:
 160:	000a2783          	lw	a5,0(s4)

00000164 <.LBE478>:
 164:	0911                	addi	s2,s2,4

00000166 <.LBB479>:
 166:	cbbd                	beqz	a5,1dc <.L58>
			166: R_RISCV_RVC_BRANCH	.L58
 168:	0127a223          	sw	s2,4(a5)

0000016c <.LBB446>:
 16c:	4709                	li	a4,2
 16e:	44b087b7          	lui	a5,0x44b08

00000172 <.LVL113>:
 172:	06e40163          	beq	s0,a4,1d4 <.L59>
			172: R_RISCV_BRANCH	.L59
 176:	02876a63          	bltu	a4,s0,1aa <.L60>
			176: R_RISCV_BRANCH	.L60
 17a:	4705                	li	a4,1
 17c:	04e40e63          	beq	s0,a4,1d8 <.L61>
			17c: R_RISCV_BRANCH	.L61

00000180 <.L62>:
 180:	44b087b7          	lui	a5,0x44b08
 184:	4709                	li	a4,2
 186:	a80d                	j	1b8 <.L97>
			186: R_RISCV_RVC_JUMP	.L97

00000188 <.L52>:
 188:	9b75                	andi	a4,a4,-3
 18a:	bf05                	j	ba <.L91>
			18a: R_RISCV_RVC_JUMP	.L91

0000018c <.L55>:
 18c:	85a2                	mv	a1,s0
 18e:	854a                	mv	a0,s2
 190:	c63a                	sw	a4,12(sp)
 192:	c436                	sw	a3,8(sp)
 194:	00000097          	auipc	ra,0x0
			194: R_RISCV_CALL	txu_cntrl_tkip_mic_append
			194: R_RISCV_RELAX	*ABS*
 198:	000080e7          	jalr	ra # 194 <.L55+0x8>

0000019c <.LVL117>:
 19c:	4732                	lw	a4,12(sp)
 19e:	46a2                	lw	a3,8(sp)
 1a0:	12472783          	lw	a5,292(a4)
 1a4:	02fdac23          	sw	a5,56(s11)
 1a8:	bf79                	j	146 <.L92>
			1a8: R_RISCV_RVC_JUMP	.L92

000001aa <.L60>:
 1aa:	470d                	li	a4,3
 1ac:	02e40263          	beq	s0,a4,1d0 <.L63>
			1ac: R_RISCV_BRANCH	.L63
 1b0:	4711                	li	a4,4
 1b2:	fce417e3          	bne	s0,a4,180 <.L62>
			1b2: R_RISCV_BRANCH	.L62

000001b6 <.LBB450>:
 1b6:	4705                	li	a4,1

000001b8 <.L97>:
 1b8:	18e7a023          	sw	a4,384(a5) # 44b08180 <.LASF376+0x44b04daa>

000001bc <.L64>:
 1bc:	0b49a503          	lw	a0,180(s3)

000001c0 <.LBB481>:
 1c0:	012a2023          	sw	s2,0(s4)

000001c4 <.LBB522>:
 1c4:	e80502e3          	beqz	a0,48 <.L76>
			1c4: R_RISCV_BRANCH	.L76
 1c8:	491c                	lw	a5,16(a0)
 1ca:	0af9aa23          	sw	a5,180(s3)
 1ce:	bd75                	j	8a <.L77>
			1ce: R_RISCV_RVC_JUMP	.L77

000001d0 <.L63>:
 1d0:	4741                	li	a4,16
 1d2:	b7dd                	j	1b8 <.L97>
			1d2: R_RISCV_RVC_JUMP	.L97

000001d4 <.L59>:
 1d4:	4721                	li	a4,8
 1d6:	b7cd                	j	1b8 <.L97>
			1d6: R_RISCV_RVC_JUMP	.L97

000001d8 <.L61>:
 1d8:	4711                	li	a4,4
 1da:	bff9                	j	1b8 <.L97>
			1da: R_RISCV_RVC_JUMP	.L97

000001dc <.L58>:
 1dc:	44b007b7          	lui	a5,0x44b00

000001e0 <.LVL127>:
 1e0:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF376+0x44afcd4a>

000001e4 <.LBE398>:
 1e4:	4709                	li	a4,2
 1e6:	0ce40b63          	beq	s0,a4,2bc <.L65>
			1e6: R_RISCV_BRANCH	.L65
 1ea:	44b087b7          	lui	a5,0x44b08
 1ee:	02876963          	bltu	a4,s0,220 <.L66>
			1ee: R_RISCV_BRANCH	.L66
 1f2:	4685                	li	a3,1
 1f4:	0ed40e63          	beq	s0,a3,2f0 <.L67>
			1f4: R_RISCV_BRANCH	.L67

000001f8 <.L68>:
 1f8:	44b08737          	lui	a4,0x44b08
 1fc:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>

00000200 <.LBE401>:
 200:	4689                	li	a3,2

00000202 <.LBB404>:
 202:	8391                	srli	a5,a5,0x4

00000204 <.LBE404>:
 204:	8b8d                	andi	a5,a5,3
 206:	12d79263          	bne	a5,a3,32a <.L75>
			206: R_RISCV_BRANCH	.L75
 20a:	000005b7          	lui	a1,0x0
			20a: R_RISCV_HI20	.LC0
			20a: R_RISCV_RELAX	*ABS*

0000020e <.LVL130>:
 20e:	00000537          	lui	a0,0x0
			20e: R_RISCV_HI20	.LC7
			20e: R_RISCV_RELAX	*ABS*
 212:	24800613          	li	a2,584
 216:	00058593          	mv	a1,a1
			216: R_RISCV_LO12_I	.LC0
			216: R_RISCV_RELAX	*ABS*
 21a:	00050513          	mv	a0,a0
			21a: R_RISCV_LO12_I	.LC7
			21a: R_RISCV_RELAX	*ABS*
 21e:	a035                	j	24a <.L98>
			21e: R_RISCV_RVC_JUMP	.L98

00000220 <.L66>:
 220:	468d                	li	a3,3
 222:	06d40363          	beq	s0,a3,288 <.L69>
			222: R_RISCV_BRANCH	.L69
 226:	4691                	li	a3,4
 228:	fcd418e3          	bne	s0,a3,1f8 <.L68>
			228: R_RISCV_BRANCH	.L68

0000022c <.LBB405>:
 22c:	1887a683          	lw	a3,392(a5) # 44b08188 <.LASF376+0x44b04db2>

00000230 <.LBE405>:
 230:	8a8d                	andi	a3,a3,3
 232:	02e69163          	bne	a3,a4,254 <.L70>
			232: R_RISCV_BRANCH	.L70
 236:	000005b7          	lui	a1,0x0
			236: R_RISCV_HI20	.LC0
			236: R_RISCV_RELAX	*ABS*

0000023a <.LVL133>:
 23a:	00000537          	lui	a0,0x0
			23a: R_RISCV_HI20	.LC3
			23a: R_RISCV_RELAX	*ABS*
 23e:	22f00613          	li	a2,559
 242:	00058593          	mv	a1,a1
			242: R_RISCV_LO12_I	.LC0
			242: R_RISCV_RELAX	*ABS*
 246:	00050513          	mv	a0,a0
			246: R_RISCV_LO12_I	.LC3
			246: R_RISCV_RELAX	*ABS*

0000024a <.L98>:
 24a:	00000097          	auipc	ra,0x0
			24a: R_RISCV_CALL	assert_rec
			24a: R_RISCV_RELAX	*ABS*
 24e:	000080e7          	jalr	ra # 24a <.L98>

00000252 <.LVL134>:
 252:	b7ad                	j	1bc <.L64>
			252: R_RISCV_RVC_JUMP	.L64

00000254 <.L70>:
 254:	1927ac23          	sw	s2,408(a5)

00000258 <.LBB409>:
 258:	10000713          	li	a4,256
 25c:	18e7a023          	sw	a4,384(a5)

00000260 <.LBE409>:
 260:	67b1                	lui	a5,0xc
 262:	35078793          	addi	a5,a5,848 # c350 <.LASF376+0x8f7a>
 266:	95be                	add	a1,a1,a5

00000268 <.LVL138>:
 268:	4511                	li	a0,4

0000026a <.L93>:
 26a:	00000097          	auipc	ra,0x0
			26a: R_RISCV_CALL	blmac_abs_timer_set
			26a: R_RISCV_RELAX	*ABS*
 26e:	000080e7          	jalr	ra # 26a <.L93>

00000272 <.LBB411>:
 272:	44b087b7          	lui	a5,0x44b08
 276:	0957a423          	sw	s5,136(a5) # 44b08088 <.LASF376+0x44b04cb2>

0000027a <.LBB413>:
 27a:	08c7a703          	lw	a4,140(a5)

0000027e <.LBE413>:
 27e:	00eae733          	or	a4,s5,a4

00000282 <.LBB415>:
 282:	08e7a623          	sw	a4,140(a5)
 286:	bf1d                	j	1bc <.L64>
			286: R_RISCV_RVC_JUMP	.L64

00000288 <.L69>:
 288:	1887a683          	lw	a3,392(a5)
 28c:	82c1                	srli	a3,a3,0x10

0000028e <.LBE417>:
 28e:	8a8d                	andi	a3,a3,3
 290:	00e69d63          	bne	a3,a4,2aa <.L72>
			290: R_RISCV_BRANCH	.L72
 294:	000005b7          	lui	a1,0x0
			294: R_RISCV_HI20	.LC0
			294: R_RISCV_RELAX	*ABS*

00000298 <.LVL145>:
 298:	00000537          	lui	a0,0x0
			298: R_RISCV_HI20	.LC4
			298: R_RISCV_RELAX	*ABS*
 29c:	23600613          	li	a2,566
 2a0:	00058593          	mv	a1,a1
			2a0: R_RISCV_LO12_I	.LC0
			2a0: R_RISCV_RELAX	*ABS*
 2a4:	00050513          	mv	a0,a0
			2a4: R_RISCV_LO12_I	.LC4
			2a4: R_RISCV_RELAX	*ABS*
 2a8:	b74d                	j	24a <.L98>
			2a8: R_RISCV_RVC_JUMP	.L98

000002aa <.L72>:
 2aa:	1b27a423          	sw	s2,424(a5)

000002ae <.LBB421>:
 2ae:	1997a023          	sw	s9,384(a5)

000002b2 <.L96>:
 2b2:	000317b7          	lui	a5,0x31
 2b6:	d4078793          	addi	a5,a5,-704 # 30d40 <.LASF376+0x2d96a>
 2ba:	a0b5                	j	326 <.L94>
			2ba: R_RISCV_RVC_JUMP	.L94

000002bc <.L65>:
 2bc:	44b08737          	lui	a4,0x44b08
 2c0:	18872783          	lw	a5,392(a4) # 44b08188 <.LASF376+0x44b04db2>
 2c4:	83b1                	srli	a5,a5,0xc

000002c6 <.LBE423>:
 2c6:	8b8d                	andi	a5,a5,3
 2c8:	00879d63          	bne	a5,s0,2e2 <.L73>
			2c8: R_RISCV_BRANCH	.L73
 2cc:	000005b7          	lui	a1,0x0
			2cc: R_RISCV_HI20	.LC0
			2cc: R_RISCV_RELAX	*ABS*

000002d0 <.LVL151>:
 2d0:	00000537          	lui	a0,0x0
			2d0: R_RISCV_HI20	.LC5
			2d0: R_RISCV_RELAX	*ABS*
 2d4:	23c00613          	li	a2,572
 2d8:	00058593          	mv	a1,a1
			2d8: R_RISCV_LO12_I	.LC0
			2d8: R_RISCV_RELAX	*ABS*
 2dc:	00050513          	mv	a0,a0
			2dc: R_RISCV_LO12_I	.LC5
			2dc: R_RISCV_RELAX	*ABS*
 2e0:	b7ad                	j	24a <.L98>
			2e0: R_RISCV_RVC_JUMP	.L98

000002e2 <.L73>:
 2e2:	1b272223          	sw	s2,420(a4)

000002e6 <.LBB427>:
 2e6:	19a72023          	sw	s10,384(a4)

000002ea <.LBE427>:
 2ea:	95da                	add	a1,a1,s6

000002ec <.L95>:
 2ec:	8526                	mv	a0,s1
 2ee:	bfb5                	j	26a <.L93>
			2ee: R_RISCV_RVC_JUMP	.L93

000002f0 <.L67>:
 2f0:	1887a683          	lw	a3,392(a5)
 2f4:	82a1                	srli	a3,a3,0x8

000002f6 <.LBE428>:
 2f6:	8a8d                	andi	a3,a3,3
 2f8:	00e69d63          	bne	a3,a4,312 <.L74>
			2f8: R_RISCV_BRANCH	.L74
 2fc:	000005b7          	lui	a1,0x0
			2fc: R_RISCV_HI20	.LC0
			2fc: R_RISCV_RELAX	*ABS*

00000300 <.LVL158>:
 300:	00000537          	lui	a0,0x0
			300: R_RISCV_HI20	.LC6
			300: R_RISCV_RELAX	*ABS*
 304:	24200613          	li	a2,578
 308:	00058593          	mv	a1,a1
			308: R_RISCV_LO12_I	.LC0
			308: R_RISCV_RELAX	*ABS*
 30c:	00050513          	mv	a0,a0
			30c: R_RISCV_LO12_I	.LC6
			30c: R_RISCV_RELAX	*ABS*
 310:	bf2d                	j	24a <.L98>
			310: R_RISCV_RVC_JUMP	.L98

00000312 <.L74>:
 312:	1b27a023          	sw	s2,416(a5)

00000316 <.LBB432>:
 316:	40000713          	li	a4,1024
 31a:	18e7a023          	sw	a4,384(a5)

0000031e <.LBE432>:
 31e:	001e87b7          	lui	a5,0x1e8
 322:	48078793          	addi	a5,a5,1152 # 1e8480 <.LASF376+0x1e50aa>

00000326 <.L94>:
 326:	95be                	add	a1,a1,a5

00000328 <.LVL162>:
 328:	b7d1                	j	2ec <.L95>
			328: R_RISCV_RVC_JUMP	.L95

0000032a <.L75>:
 32a:	19272e23          	sw	s2,412(a4)

0000032e <.LBB436>:
 32e:	20000793          	li	a5,512
 332:	18f72023          	sw	a5,384(a4)
 336:	bfb5                	j	2b2 <.L96>
			336: R_RISCV_RVC_JUMP	.L96

Disassembly of section .text.txl_cntrl_push_int:

00000000 <txl_cntrl_push_int>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	02f54783          	lbu	a5,47(a0) # 2f <.LVL167+0x7>
  10:	842a                	mv	s0,a0
  12:	06c52983          	lw	s3,108(a0)
  16:	5d800513          	li	a0,1496

0000001a <.LVL166>:
  1a:	02a787b3          	mul	a5,a5,a0
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	vif_info_tab
			1e: R_RISCV_RELAX	*ABS*
  22:	00050513          	mv	a0,a0
			22: R_RISCV_LO12_I	vif_info_tab
			22: R_RISCV_RELAX	*ABS*
  26:	84ae                	mv	s1,a1

00000028 <.LVL167>:
  28:	953e                	add	a0,a0,a5
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	txl_cntrl_tx_check
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL167+0x2>

00000032 <.LVL168>:
  32:	ed19                	bnez	a0,50 <.L100>
			32: R_RISCV_RVC_BRANCH	.L100

00000034 <.L104>:
  34:	03044903          	lbu	s2,48(s0) # 44a00030 <.LASF376+0x449fcc5a>
  38:	0ff00793          	li	a5,255
  3c:	06f91663          	bne	s2,a5,a8 <.L101>
			3c: R_RISCV_BRANCH	.L101
  40:	4581                	li	a1,0
  42:	8522                	mv	a0,s0
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	txl_frame_release
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L104+0x10>

0000004c <.LVL169>:
  4c:	4901                	li	s2,0
  4e:	a851                	j	e2 <.L105>
			4e: R_RISCV_RVC_JUMP	.L105

00000050 <.L100>:
  50:	8522                	mv	a0,s0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	apm_tx_int_ps_check
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.L100+0x2>

0000005a <.LVL170>:
  5a:	892a                	mv	s2,a0
  5c:	dd61                	beqz	a0,34 <.L104>
			5c: R_RISCV_RVC_BRANCH	.L104
  5e:	03c9a783          	lw	a5,60(s3)
  62:	1007e793          	ori	a5,a5,256
  66:	02f9ae23          	sw	a5,60(s3)

0000006a <.LBB531>:
  6a:	30047073          	csrci	mstatus,8

0000006e <.LBE531>:
  6e:	85a6                	mv	a1,s1
  70:	8522                	mv	a0,s0
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	txl_int_fake_transfer
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LBE531+0x4>

0000007a <.LVL171>:
  7a:	00449513          	slli	a0,s1,0x4
  7e:	000004b7          	lui	s1,0x0
			7e: R_RISCV_HI20	txl_cntrl_env
			7e: R_RISCV_RELAX	*ABS*

00000082 <.LVL172>:
  82:	00048493          	mv	s1,s1
			82: R_RISCV_LO12_I	txl_cntrl_env
			82: R_RISCV_RELAX	*ABS*
  86:	0511                	addi	a0,a0,4
  88:	85a2                	mv	a1,s0
  8a:	9526                	add	a0,a0,s1
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	co_list_push_back
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LVL172+0xa>

00000094 <.LBB533>:
  94:	30046073          	csrsi	mstatus,8

00000098 <.LBE533>:
  98:	48bc                	lw	a5,80(s1)
  9a:	0785                	addi	a5,a5,1
  9c:	c8bc                	sw	a5,80(s1)
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	txl_payload_handle_backup
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LBE533+0x6>

000000a6 <.LVL174>:
  a6:	a835                	j	e2 <.L105>
			a6: R_RISCV_RVC_JUMP	.L105

000000a8 <.L101>:
  a8:	1b000793          	li	a5,432
  ac:	02f90933          	mul	s2,s2,a5

000000b0 <.LVL176>:
  b0:	02940723          	sb	s1,46(s0)
  b4:	000004b7          	lui	s1,0x0
			b4: R_RISCV_HI20	sta_info_tab
			b4: R_RISCV_RELAX	*ABS*

000000b8 <.LVL177>:
  b8:	4785                	li	a5,1
  ba:	00048493          	mv	s1,s1
			ba: R_RISCV_LO12_I	sta_info_tab
			ba: R_RISCV_RELAX	*ABS*
  be:	2cf40aa3          	sb	a5,725(s0)
  c2:	85a2                	mv	a1,s0
  c4:	19c90513          	addi	a0,s2,412
  c8:	9526                	add	a0,a0,s1
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	co_list_push_back
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.LVL177+0x12>

000000d2 <.LVL178>:
  d2:	012485b3          	add	a1,s1,s2
  d6:	8522                	mv	a0,s0
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	apm_tx_int_ps_postpone
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL178+0x6>

000000e0 <.LBE535>:
  e0:	4905                	li	s2,1

000000e2 <.L105>:
  e2:	40f2                	lw	ra,28(sp)
  e4:	4462                	lw	s0,24(sp)

000000e6 <.LVL181>:
  e6:	854a                	mv	a0,s2
  e8:	44d2                	lw	s1,20(sp)
  ea:	4942                	lw	s2,16(sp)
  ec:	49b2                	lw	s3,12(sp)

000000ee <.LVL182>:
  ee:	6105                	addi	sp,sp,32
  f0:	8082                	ret

Disassembly of section .text.txl_cntrl_push_int_force:

00000000 <txl_cntrl_push_int_force>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	5578                	lw	a4,108(a0)
   a:	84aa                	mv	s1,a0
   c:	842e                	mv	s0,a1

0000000e <.LVL184>:
   e:	5f5c                	lw	a5,60(a4)
  10:	1007e793          	ori	a5,a5,256
  14:	df5c                	sw	a5,60(a4)

00000016 <.LBB537>:
  16:	30047073          	csrci	mstatus,8

0000001a <.LBE537>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	txl_int_fake_transfer
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LBE537>

00000022 <.LVL185>:
  22:	00441513          	slli	a0,s0,0x4
  26:	00000437          	lui	s0,0x0
			26: R_RISCV_HI20	txl_cntrl_env
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL186>:
  2a:	00040413          	mv	s0,s0
			2a: R_RISCV_LO12_I	txl_cntrl_env
			2a: R_RISCV_RELAX	*ABS*
  2e:	0511                	addi	a0,a0,4
  30:	85a6                	mv	a1,s1
  32:	9522                	add	a0,a0,s0
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	co_list_push_back
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL186+0xa>

0000003c <.LBB539>:
  3c:	30046073          	csrsi	mstatus,8

00000040 <.LBE539>:
  40:	483c                	lw	a5,80(s0)
  42:	0785                	addi	a5,a5,1
  44:	c83c                	sw	a5,80(s0)
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	txl_payload_handle_backup
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.LBE539+0x6>

0000004e <.LVL188>:
  4e:	40b2                	lw	ra,12(sp)
  50:	4422                	lw	s0,8(sp)
  52:	4492                	lw	s1,4(sp)

00000054 <.LVL189>:
  54:	4505                	li	a0,1
  56:	0141                	addi	sp,sp,16
  58:	8082                	ret

Disassembly of section .text.txl_cntrl_push:

00000000 <txl_cntrl_push>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB556>:
   8:	06054683          	lbu	a3,96(a0) # 60 <.L112>
   c:	05e54703          	lbu	a4,94(a0)
  10:	557c                	lw	a5,108(a0)

00000012 <.LBE556>:
  12:	842a                	mv	s0,a0

00000014 <.LBB557>:
  14:	9736                	add	a4,a4,a3

00000016 <.LVL192>:
  16:	00c55683          	lhu	a3,12(a0)

0000001a <.LBE557>:
  1a:	84ae                	mv	s1,a1

0000001c <.LBB558>:
  1c:	0007a623          	sw	zero,12(a5)
  20:	9736                	add	a4,a4,a3

00000022 <.LVL193>:
  22:	0711                	addi	a4,a4,4
  24:	cfd8                	sw	a4,28(a5)
  26:	cafec737          	lui	a4,0xcafec
  2a:	abe70713          	addi	a4,a4,-1346 # cafebabe <.LASF376+0xcafe86e8>
  2e:	c3d8                	sw	a4,4(a5)
  30:	0007a423          	sw	zero,8(a5)
  34:	0007a823          	sw	zero,16(a5)
  38:	0207a423          	sw	zero,40(a5)
  3c:	0207ae23          	sw	zero,60(a5)
  40:	0007aa23          	sw	zero,20(a5)
  44:	0007ac23          	sw	zero,24(a5)
  48:	0207a023          	sw	zero,32(a5)
  4c:	0407a023          	sw	zero,64(a5)

00000050 <.LBB559>:
  50:	30047073          	csrci	mstatus,8

00000054 <.LBB561>:
  54:	451c                	lw	a5,8(a0)

00000056 <.LVL196>:
  56:	e3b5                	bnez	a5,ba <.L111>
			56: R_RISCV_RVC_BRANCH	.L111
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	txl_int_fake_transfer
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LVL196+0x2>

00000060 <.L112>:
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	txl_payload_handle_backup
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.L112>

00000068 <.LBE571>:
  68:	00449513          	slli	a0,s1,0x4
  6c:	000004b7          	lui	s1,0x0
			6c: R_RISCV_HI20	txl_cntrl_env
			6c: R_RISCV_RELAX	*ABS*
  70:	00048493          	mv	s1,s1
			70: R_RISCV_LO12_I	txl_cntrl_env
			70: R_RISCV_RELAX	*ABS*
  74:	0511                	addi	a0,a0,4
  76:	85a2                	mv	a1,s0
  78:	9526                	add	a0,a0,s1
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	co_list_push_back
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LBE571+0x12>

00000082 <.LBB572>:
  82:	30046073          	csrsi	mstatus,8

00000086 <.LBE572>:
  86:	48bc                	lw	a5,80(s1)
  88:	4601                	li	a2,0
  8a:	0785                	addi	a5,a5,1
  8c:	c8bc                	sw	a5,80(s1)
  8e:	03044583          	lbu	a1,48(s0) # 30 <.LVL193+0xe>
  92:	02f44503          	lbu	a0,47(s0)
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	td_pck_ind
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.LBE572+0x10>

0000009e <.LVL200>:
  9e:	03044503          	lbu	a0,48(s0)
  a2:	02e44583          	lbu	a1,46(s0)
  a6:	00000097          	auipc	ra,0x0
			a6: R_RISCV_CALL	ps_check_tx_frame
			a6: R_RISCV_RELAX	*ABS*
  aa:	000080e7          	jalr	ra # a6 <.LVL200+0x8>

000000ae <.LVL201>:
  ae:	40b2                	lw	ra,12(sp)
  b0:	4422                	lw	s0,8(sp)

000000b2 <.LVL202>:
  b2:	4492                	lw	s1,4(sp)
  b4:	4501                	li	a0,0
  b6:	0141                	addi	sp,sp,16
  b8:	8082                	ret

000000ba <.L111>:
  ba:	4601                	li	a2,0
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	txl_buffer_alloc
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.L111+0x2>

000000c4 <.LVL204>:
  c4:	d428                	sw	a0,104(s0)
  c6:	c940                	sw	s0,20(a0)
  c8:	8522                	mv	a0,s0

000000ca <.LVL205>:
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	txl_buffer_update_thd
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.LVL205>

000000d2 <.LVL206>:
  d2:	b779                	j	60 <.L112>
			d2: R_RISCV_RVC_JUMP	.L112

Disassembly of section .text.txl_transmit_trigger:

00000000 <txl_transmit_trigger>:
   0:	44b087b7          	lui	a5,0x44b08
   4:	5fa8                	lw	a0,120(a5)

00000006 <.LBE607>:
   6:	7c057513          	andi	a0,a0,1984
   a:	18050363          	beqz	a0,190 <.L133>
			a: R_RISCV_BRANCH	.L133

0000000e <.LBB609>:
   e:	715d                	addi	sp,sp,-80
  10:	c4a2                	sw	s0,72(sp)
  12:	c686                	sw	ra,76(sp)
  14:	c2a6                	sw	s1,68(sp)
  16:	c0ca                	sw	s2,64(sp)
  18:	de4e                	sw	s3,60(sp)
  1a:	dc52                	sw	s4,56(sp)
  1c:	da56                	sw	s5,52(sp)
  1e:	d85a                	sw	s6,48(sp)
  20:	d65e                	sw	s7,44(sp)
  22:	d462                	sw	s8,40(sp)
  24:	d266                	sw	s9,36(sp)
  26:	d06a                	sw	s10,32(sp)
  28:	ce6e                	sw	s11,28(sp)
  2a:	4465                	li	s0,25

0000002c <.LBB612>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	__clzsi2
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LBB612>

00000034 <.LBE612>:
  34:	8c09                	sub	s0,s0,a0
  36:	0ff47413          	andi	s0,s0,255

0000003a <.LVL211>:
  3a:	4791                	li	a5,4
  3c:	0287f163          	bgeu	a5,s0,5e <.L117>
			3c: R_RISCV_BRANCH	.L117
  40:	6605                	lui	a2,0x1
  42:	000005b7          	lui	a1,0x0
			42: R_RISCV_HI20	.LC0
			42: R_RISCV_RELAX	*ABS*
  46:	00000537          	lui	a0,0x0
			46: R_RISCV_HI20	.LC8
			46: R_RISCV_RELAX	*ABS*
  4a:	90b60613          	addi	a2,a2,-1781 # 90b <.LLST61+0xa>
  4e:	00058593          	mv	a1,a1
			4e: R_RISCV_LO12_I	.LC0
			4e: R_RISCV_RELAX	*ABS*
  52:	00050513          	mv	a0,a0
			52: R_RISCV_LO12_I	.LC8
			52: R_RISCV_RELAX	*ABS*
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	assert_err
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL211+0x1c>

0000005e <.L117>:
  5e:	4485                	li	s1,1
  60:	00640793          	addi	a5,s0,6
  64:	00f497b3          	sll	a5,s1,a5

00000068 <.LBB613>:
  68:	00441b13          	slli	s6,s0,0x4
  6c:	000009b7          	lui	s3,0x0
			6c: R_RISCV_HI20	txl_cntrl_env
			6c: R_RISCV_RELAX	*ABS*

00000070 <.LBB692>:
  70:	44b08737          	lui	a4,0x44b08
  74:	00000a37          	lui	s4,0x0
			74: R_RISCV_HI20	.LANCHOR0
			74: R_RISCV_RELAX	*ABS*
  78:	df7c                	sw	a5,124(a4)

0000007a <.LBB679>:
  7a:	004b0a93          	addi	s5,s6,4
  7e:	00098793          	mv	a5,s3
			7e: R_RISCV_LO12_I	txl_cntrl_env
			7e: R_RISCV_RELAX	*ABS*

00000082 <.LBB619>:
  82:	008494b3          	sll	s1,s1,s0
  86:	00098993          	mv	s3,s3
			86: R_RISCV_LO12_I	txl_cntrl_env
			86: R_RISCV_RELAX	*ABS*
  8a:	000a0a13          	mv	s4,s4
			8a: R_RISCV_LO12_I	.LANCHOR0
			8a: R_RISCV_RELAX	*ABS*
  8e:	00241b93          	slli	s7,s0,0x2

00000092 <.LBE619>:
  92:	9abe                	add	s5,s5,a5

00000094 <.LBB629>:
  94:	fff4c493          	not	s1,s1

00000098 <.LBB623>:
  98:	44b08c37          	lui	s8,0x44b08

0000009c <.LBE623>:
  9c:	01698db3          	add	s11,s3,s6

000000a0 <.LBB651>:
  a0:	44b00d37          	lui	s10,0x44b00

000000a4 <.LBE653>:
  a4:	017a0cb3          	add	s9,s4,s7

000000a8 <.L125>:
  a8:	000aa903          	lw	s2,0(s5)

000000ac <.LBB681>:
  ac:	0a090963          	beqz	s2,15e <.L118>
			ac: R_RISCV_BRANCH	.L118

000000b0 <.LBB669>:
  b0:	06c92783          	lw	a5,108(s2)

000000b4 <.LVL217>:
  b4:	43ac                	lw	a1,64(a5)

000000b6 <.LVL218>:
  b6:	0a05de63          	bgez	a1,172 <.L114>
			b6: R_RISCV_BRANCH	.L114

000000ba <.LBB661>:
  ba:	00892703          	lw	a4,8(s2)
  be:	c711                	beqz	a4,ca <.L120>
			be: R_RISCV_RVC_BRANCH	.L120
  c0:	06892703          	lw	a4,104(s2)
  c4:	c319                	beqz	a4,ca <.L120>
			c4: R_RISCV_RVC_BRANCH	.L120
  c6:	06092423          	sw	zero,104(s2)

000000ca <.L120>:
  ca:	4398                	lw	a4,0(a5)
  cc:	cb0c                	sw	a1,16(a4)

000000ce <.LBB646>:
  ce:	479c                	lw	a5,8(a5)

000000d0 <.LVL221>:
  d0:	cf9d                	beqz	a5,10e <.L121>
			d0: R_RISCV_RVC_BRANCH	.L121
  d2:	5fdc                	lw	a5,60(a5)

000000d4 <.LVL222>:
  d4:	0407c463          	bltz	a5,11c <.L122>
			d4: R_RISCV_BRANCH	.L122

000000d8 <.LBB630>:
  d8:	9a5e                	add	s4,s4,s7

000000da <.LBB637>:
  da:	44b007b7          	lui	a5,0x44b00
  de:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF376+0x44afcd4a>

000000e2 <.LBE637>:
  e2:	8522                	mv	a0,s0
  e4:	000a2783          	lw	a5,0(s4) # 0 <txl_transmit_trigger>

000000e8 <.LBE641>:
  e8:	4426                	lw	s0,72(sp)

000000ea <.LVL225>:
  ea:	40b6                	lw	ra,76(sp)
  ec:	4496                	lw	s1,68(sp)
  ee:	4906                	lw	s2,64(sp)

000000f0 <.LVL226>:
  f0:	59f2                	lw	s3,60(sp)
  f2:	5a62                	lw	s4,56(sp)
  f4:	5ad2                	lw	s5,52(sp)
  f6:	5b42                	lw	s6,48(sp)
  f8:	5bb2                	lw	s7,44(sp)
  fa:	5c22                	lw	s8,40(sp)
  fc:	5c92                	lw	s9,36(sp)
  fe:	5d02                	lw	s10,32(sp)
 100:	4df2                	lw	s11,28(sp)

00000102 <.LBB642>:
 102:	95be                	add	a1,a1,a5

00000104 <.LBE642>:
 104:	6161                	addi	sp,sp,80

00000106 <.LBB643>:
 106:	00000317          	auipc	t1,0x0
			106: R_RISCV_CALL	blmac_abs_timer_set
			106: R_RISCV_RELAX	*ABS*
 10a:	00030067          	jr	t1 # 106 <.LBB643>

0000010e <.L121>:
 10e:	08cc2783          	lw	a5,140(s8) # 44b0808c <.LASF376+0x44b04cb6>

00000112 <.LBE626>:
 112:	000da023          	sw	zero,0(s11)
 116:	8fe5                	and	a5,a5,s1

00000118 <.LBB627>:
 118:	08fc2623          	sw	a5,140(s8)

0000011c <.L122>:
 11c:	8556                	mv	a0,s5
 11e:	c62e                	sw	a1,12(sp)

00000120 <.LBB665>:
 120:	00000097          	auipc	ra,0x0
			120: R_RISCV_CALL	co_list_pop_front
			120: R_RISCV_RELAX	*ABS*
 124:	000080e7          	jalr	ra # 120 <.LBB665>

00000128 <.LVL232>:
 128:	00892783          	lw	a5,8(s2)
 12c:	45b2                	lw	a1,12(sp)
 12e:	e38d                	bnez	a5,150 <.L123>
			12e: R_RISCV_RVC_BRANCH	.L123
 130:	854a                	mv	a0,s2
 132:	00000097          	auipc	ra,0x0
			132: R_RISCV_CALL	txl_frame_cfm
			132: R_RISCV_RELAX	*ABS*
 136:	000080e7          	jalr	ra # 132 <.LVL232+0xa>

0000013a <.L124>:
 13a:	120d2583          	lw	a1,288(s10) # 44b00120 <.LASF376+0x44afcd4a>

0000013e <.LBE658>:
 13e:	000ca783          	lw	a5,0(s9)
 142:	8522                	mv	a0,s0
 144:	95be                	add	a1,a1,a5

00000146 <.LVL235>:
 146:	00000097          	auipc	ra,0x0
			146: R_RISCV_CALL	blmac_abs_timer_set
			146: R_RISCV_RELAX	*ABS*
 14a:	000080e7          	jalr	ra # 146 <.LVL235>

0000014e <.LVL236>:
 14e:	bfa9                	j	a8 <.L125>
			14e: R_RISCV_RVC_JUMP	.L125

00000150 <.L123>:
 150:	8622                	mv	a2,s0
 152:	854a                	mv	a0,s2
 154:	00000097          	auipc	ra,0x0
			154: R_RISCV_CALL	txl_cfm_push
			154: R_RISCV_RELAX	*ABS*
 158:	000080e7          	jalr	ra # 154 <.L123+0x4>

0000015c <.LVL238>:
 15c:	bff9                	j	13a <.L124>
			15c: R_RISCV_RVC_JUMP	.L124

0000015e <.L118>:
 15e:	44b087b7          	lui	a5,0x44b08
 162:	08c7a703          	lw	a4,140(a5) # 44b0808c <.LASF376+0x44b04cb6>

00000166 <.LBE675>:
 166:	99da                	add	s3,s3,s6
 168:	0009a023          	sw	zero,0(s3) # 0 <txl_transmit_trigger>
 16c:	8cf9                	and	s1,s1,a4

0000016e <.LBB677>:
 16e:	0897a623          	sw	s1,140(a5)

00000172 <.L114>:
 172:	40b6                	lw	ra,76(sp)
 174:	4426                	lw	s0,72(sp)

00000176 <.LVL243>:
 176:	4496                	lw	s1,68(sp)
 178:	4906                	lw	s2,64(sp)

0000017a <.LVL244>:
 17a:	59f2                	lw	s3,60(sp)
 17c:	5a62                	lw	s4,56(sp)
 17e:	5ad2                	lw	s5,52(sp)
 180:	5b42                	lw	s6,48(sp)
 182:	5bb2                	lw	s7,44(sp)
 184:	5c22                	lw	s8,40(sp)
 186:	5c92                	lw	s9,36(sp)
 188:	5d02                	lw	s10,32(sp)
 18a:	4df2                	lw	s11,28(sp)
 18c:	6161                	addi	sp,sp,80
 18e:	8082                	ret

00000190 <.L133>:
 190:	8082                	ret

Disassembly of section .text.txl_current_desc_get:

00000000 <txl_current_desc_get>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	txl_cntrl_env+0x4
			0: R_RISCV_RELAX	*ABS*+0x4
   4:	00478793          	addi	a5,a5,4 # 4 <txl_current_desc_get+0x4>
			4: R_RISCV_LO12_I	txl_cntrl_env+0x4
			4: R_RISCV_RELAX	*ABS*+0x4
   8:	0512                	slli	a0,a0,0x4

0000000a <.LVL247>:
   a:	953e                	add	a0,a0,a5
   c:	411c                	lw	a5,0(a0)

0000000e <.LBB701>:
   e:	c399                	beqz	a5,14 <.L137>
			e: R_RISCV_RVC_BRANCH	.L137

00000010 <.LBB700>:
  10:	57fc                	lw	a5,108(a5)

00000012 <.LVL249>:
  12:	0791                	addi	a5,a5,4

00000014 <.L137>:
  14:	c19c                	sw	a5,0(a1)

00000016 <.LBE700>:
  16:	8082                	ret

Disassembly of section .text.txl_reset:

00000000 <txl_reset>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	txl_cntrl_env
			4: R_RISCV_RELAX	*ABS*
   8:	ca56                	sw	s5,20(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	txl_cntrl_env
			a: R_RISCV_RELAX	*ABS*
   e:	d606                	sw	ra,44(sp)
  10:	d226                	sw	s1,36(sp)
  12:	d04a                	sw	s2,32(sp)
  14:	ce4e                	sw	s3,28(sp)
  16:	cc52                	sw	s4,24(sp)
  18:	c85a                	sw	s6,16(sp)
  1a:	c65e                	sw	s7,12(sp)
  1c:	c462                	sw	s8,8(sp)
  1e:	c266                	sw	s9,4(sp)
  20:	657d                	lui	a0,0x1f
  22:	0547db03          	lhu	s6,84(a5)

00000026 <.LVL252>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ke_evt_clear
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL252>

0000002e <.LVL253>:
  2e:	67c1                	lui	a5,0x10
  30:	00040a93          	mv	s5,s0
			30: R_RISCV_LO12_I	txl_cntrl_env
			30: R_RISCV_RELAX	*ABS*

00000034 <.LBB709>:
  34:	44a006b7          	lui	a3,0x44a00

00000038 <.LBE709>:
  38:	17fd                	addi	a5,a5,-1

0000003a <.L142>:
  3a:	4a98                	lw	a4,16(a3)

0000003c <.LBE712>:
  3c:	0742                	slli	a4,a4,0x10
  3e:	8341                	srli	a4,a4,0x10
  40:	fef71de3          	bne	a4,a5,3a <.L142>
			40: R_RISCV_BRANCH	.L142
  44:	4785                	li	a5,1
  46:	00000a37          	lui	s4,0x0
			46: R_RISCV_HI20	txl_cfm_env
			46: R_RISCV_RELAX	*ABS*
  4a:	000009b7          	lui	s3,0x0
			4a: R_RISCV_HI20	txl_cntrl_env+0x4
			4a: R_RISCV_RELAX	*ABS*+0x4
  4e:	04fa8b23          	sb	a5,86(s5)

00000052 <.LVL255>:
  52:	000a0a13          	mv	s4,s4
			52: R_RISCV_LO12_I	txl_cfm_env
			52: R_RISCV_RELAX	*ABS*
  56:	00498993          	addi	s3,s3,4 # 4 <txl_reset+0x4>
			56: R_RISCV_LO12_I	txl_cntrl_env+0x4
			56: R_RISCV_RELAX	*ABS*+0x4
  5a:	4901                	li	s2,0

0000005c <.LBB713>:
  5c:	4c85                	li	s9,1

0000005e <.LBB714>:
  5e:	44a004b7          	lui	s1,0x44a00

00000062 <.LBE713>:
  62:	4c15                	li	s8,5

00000064 <.L143>:
  64:	012c97b3          	sll	a5,s9,s2
  68:	0ff97b93          	andi	s7,s2,255

0000006c <.LBB718>:
  6c:	85d2                	mv	a1,s4

0000006e <.LBB719>:
  6e:	d09c                	sw	a5,32(s1)

00000070 <.LBE719>:
  70:	40000637          	lui	a2,0x40000
  74:	855e                	mv	a0,s7
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	txl_cfm_flush
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LBE719+0x6>

0000007e <.LVL259>:
  7e:	85ce                	mv	a1,s3
  80:	40000637          	lui	a2,0x40000
  84:	855e                	mv	a0,s7

00000086 <.LBE720>:
  86:	0905                	addi	s2,s2,1

00000088 <.LBB721>:
  88:	00000097          	auipc	ra,0x0
			88: R_RISCV_CALL	txl_cfm_flush
			88: R_RISCV_RELAX	*ABS*
  8c:	000080e7          	jalr	ra # 88 <.LBB721>

00000090 <.LVL261>:
  90:	0a21                	addi	s4,s4,8
  92:	09c1                	addi	s3,s3,16

00000094 <.LBE721>:
  94:	fd8918e3          	bne	s2,s8,64 <.L143>
			94: R_RISCV_BRANCH	.L143
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	txl_hwdesc_reset
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LBE721+0x4>

000000a0 <.LVL262>:
  a0:	00000097          	auipc	ra,0x0
			a0: R_RISCV_CALL	txl_buffer_reinit
			a0: R_RISCV_RELAX	*ABS*
  a4:	000080e7          	jalr	ra # a0 <.LVL262>

000000a8 <.LVL263>:
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	txl_cfm_init
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL263>

000000b0 <.LVL264>:
  b0:	00040513          	mv	a0,s0
			b0: R_RISCV_LO12_I	txl_cntrl_env
			b0: R_RISCV_RELAX	*ABS*
  b4:	05800613          	li	a2,88
  b8:	4581                	li	a1,0
  ba:	44a00937          	lui	s2,0x44a00

000000be <.LVL265>:
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	memset
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.LVL265>

000000c6 <.LVL266>:
  c6:	00040413          	mv	s0,s0
			c6: R_RISCV_LO12_I	txl_cntrl_env
			c6: R_RISCV_RELAX	*ABS*
  ca:	056a9a23          	sh	s6,84(s5)

000000ce <.LVL267>:
  ce:	08048493          	addi	s1,s1,128 # 44a00080 <.LASF376+0x449fccaa>
  d2:	09490913          	addi	s2,s2,148 # 44a00094 <.LASF376+0x449fccbe>

000000d6 <.L144>:
  d6:	00440513          	addi	a0,s0,4 # 4 <txl_reset+0x4>
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	co_list_init
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.L144+0x4>

000000e2 <.LVL269>:
  e2:	00042023          	sw	zero,0(s0)

000000e6 <.LBB722>:
  e6:	409c                	lw	a5,0(s1)

000000e8 <.LBE722>:
  e8:	00040723          	sb	zero,14(s0)
  ec:	0491                	addi	s1,s1,4
  ee:	00f41623          	sh	a5,12(s0)
  f2:	0441                	addi	s0,s0,16
  f4:	ff2491e3          	bne	s1,s2,d6 <.L144>
			f4: R_RISCV_BRANCH	.L144
  f8:	50b2                	lw	ra,44(sp)
  fa:	5422                	lw	s0,40(sp)
  fc:	5492                	lw	s1,36(sp)
  fe:	5902                	lw	s2,32(sp)
 100:	49f2                	lw	s3,28(sp)
 102:	4a62                	lw	s4,24(sp)
 104:	4ad2                	lw	s5,20(sp)
 106:	4b42                	lw	s6,16(sp)

00000108 <.LVL270>:
 108:	4bb2                	lw	s7,12(sp)

0000010a <.LVL271>:
 10a:	4c22                	lw	s8,8(sp)
 10c:	4c92                	lw	s9,4(sp)
 10e:	6145                	addi	sp,sp,48
 110:	8082                	ret

Disassembly of section .text.txl_cntrl_env_dump:

00000000 <txl_cntrl_env_dump>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	txl_cntrl_env
			4: R_RISCV_RELAX	*ABS*
   8:	cc22                	sw	s0,24(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	4411                	li	s0,4
  12:	00048493          	mv	s1,s1
			12: R_RISCV_LO12_I	txl_cntrl_env
			12: R_RISCV_RELAX	*ABS*
  16:	05400993          	li	s3,84

0000001a <.L157>:
  1a:	00940933          	add	s2,s0,s1
  1e:	854a                	mv	a0,s2
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	co_list_cnt
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.L157+0x6>

00000028 <.LVL274>:
  28:	c511                	beqz	a0,34 <.L150>
			28: R_RISCV_RVC_BRANCH	.L150
  2a:	00092783          	lw	a5,0(s2)
  2e:	873e                	mv	a4,a5

00000030 <.L151>:
  30:	ef01                	bnez	a4,48 <.L152>
			30: R_RISCV_RVC_BRANCH	.L152

00000032 <.L153>:
  32:	ef89                	bnez	a5,4c <.L156>
			32: R_RISCV_RVC_BRANCH	.L156

00000034 <.L150>:
  34:	0441                	addi	s0,s0,16
  36:	ff3412e3          	bne	s0,s3,1a <.L157>
			36: R_RISCV_BRANCH	.L157
  3a:	40f2                	lw	ra,28(sp)
  3c:	4462                	lw	s0,24(sp)
  3e:	44d2                	lw	s1,20(sp)
  40:	4942                	lw	s2,16(sp)
  42:	49b2                	lw	s3,12(sp)
  44:	6105                	addi	sp,sp,32
  46:	8082                	ret

00000048 <.L152>:
  48:	4318                	lw	a4,0(a4)

0000004a <.LVL281>:
  4a:	b7dd                	j	30 <.L151>
			4a: R_RISCV_RVC_JUMP	.L151

0000004c <.L156>:
  4c:	57f8                	lw	a4,108(a5)
  4e:	4b18                	lw	a4,16(a4)

00000050 <.L154>:
  50:	e319                	bnez	a4,56 <.L155>
			50: R_RISCV_RVC_BRANCH	.L155

00000052 <.LBE726>:
  52:	439c                	lw	a5,0(a5)

00000054 <.LVL285>:
  54:	bff9                	j	32 <.L153>
			54: R_RISCV_RVC_JUMP	.L153

00000056 <.L155>:
  56:	4358                	lw	a4,4(a4)
  58:	bfe5                	j	50 <.L154>
			58: R_RISCV_RVC_JUMP	.L154
