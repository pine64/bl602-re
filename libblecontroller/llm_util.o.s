
libblecontroller/llm_util.o:     file format elf32-littleriscv


Disassembly of section .text.llm_util_bd_addr_wl_position:

00000000 <llm_util_bd_addr_wl_position>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	c85a                	sw	s6,16(sp)
   c:	d606                	sw	ra,44(sp)
   e:	d226                	sw	s1,36(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	8985                	andi	a1,a1,1

00000014 <.LVL1>:
  14:	89aa                	mv	s3,a0
  16:	00000a37          	lui	s4,0x0
			16: R_RISCV_HI20	ble_memcpy_ptr
			16: R_RISCV_RELAX	*ABS*
  1a:	4401                	li	s0,0

0000001c <.LBB57>:
  1c:	4b19                	li	s6,6
  1e:	28008937          	lui	s2,0x28008

00000022 <.LBE57>:
  22:	e5a9                	bnez	a1,6c <.L6>
			22: R_RISCV_RVC_BRANCH	.L6

00000024 <.LBB64>:
  24:	1fe90913          	addi	s2,s2,510 # 280081fe <.LASF753+0x28003663>

00000028 <.LBE64>:
  28:	4a91                	li	s5,4

0000002a <.L4>:
  2a:	036405b3          	mul	a1,s0,s6
  2e:	000a2783          	lw	a5,0(s4) # 0 <llm_util_bd_addr_wl_position>
			2e: R_RISCV_LO12_I	ble_memcpy_ptr
			2e: R_RISCV_RELAX	*ABS*
  32:	4619                	li	a2,6
  34:	0028                	addi	a0,sp,8
  36:	01041493          	slli	s1,s0,0x10
  3a:	80c1                	srli	s1,s1,0x10

0000003c <.LBB66>:
  3c:	95ca                	add	a1,a1,s2
  3e:	9782                	jalr	a5

00000040 <.LBE66>:
  40:	85ce                	mv	a1,s3
  42:	0028                	addi	a0,sp,8
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	co_bdaddr_compare
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LBE66+0x4>

0000004c <.LVL5>:
  4c:	e509                	bnez	a0,56 <.L5>
			4c: R_RISCV_RVC_BRANCH	.L5

0000004e <.LVL6>:
  4e:	0405                	addi	s0,s0,1

00000050 <.LVL7>:
  50:	fd541de3          	bne	s0,s5,2a <.L4>
			50: R_RISCV_BRANCH	.L4

00000054 <.L10>:
  54:	4491                	li	s1,4

00000056 <.L5>:
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)
  5a:	8526                	mv	a0,s1
  5c:	5902                	lw	s2,32(sp)
  5e:	5492                	lw	s1,36(sp)

00000060 <.LVL9>:
  60:	49f2                	lw	s3,28(sp)

00000062 <.LVL10>:
  62:	4a62                	lw	s4,24(sp)
  64:	4ad2                	lw	s5,20(sp)
  66:	4b42                	lw	s6,16(sp)
  68:	6145                	addi	sp,sp,48
  6a:	8082                	ret

0000006c <.L6>:
  6c:	21690913          	addi	s2,s2,534

00000070 <.LBE69>:
  70:	4a91                	li	s5,4

00000072 <.L2>:
  72:	036405b3          	mul	a1,s0,s6
  76:	000a2783          	lw	a5,0(s4)
			76: R_RISCV_LO12_I	ble_memcpy_ptr
			76: R_RISCV_RELAX	*ABS*
  7a:	4619                	li	a2,6
  7c:	0028                	addi	a0,sp,8
  7e:	01041493          	slli	s1,s0,0x10
  82:	80c1                	srli	s1,s1,0x10

00000084 <.LBB74>:
  84:	95ca                	add	a1,a1,s2
  86:	9782                	jalr	a5

00000088 <.LBE74>:
  88:	85ce                	mv	a1,s3
  8a:	0028                	addi	a0,sp,8
  8c:	00000097          	auipc	ra,0x0
			8c: R_RISCV_CALL	co_bdaddr_compare
			8c: R_RISCV_RELAX	*ABS*
  90:	000080e7          	jalr	ra # 8c <.LBE74+0x4>

00000094 <.LVL15>:
  94:	f169                	bnez	a0,56 <.L5>
			94: R_RISCV_RVC_BRANCH	.L5

00000096 <.LVL16>:
  96:	0405                	addi	s0,s0,1

00000098 <.LVL17>:
  98:	fd541de3          	bne	s0,s5,72 <.L2>
			98: R_RISCV_BRANCH	.L2
  9c:	bf65                	j	54 <.L10>
			9c: R_RISCV_RVC_JUMP	.L10

Disassembly of section .text.llm_util_check_address_validity:

00000000 <llm_util_check_address_validity>:
   0:	000005b7          	lui	a1,0x0
			0: R_RISCV_HI20	co_null_bdaddr
			0: R_RISCV_RELAX	*ABS*

00000004 <.LVL19>:
   4:	1141                	addi	sp,sp,-16
   6:	00058593          	mv	a1,a1
			6: R_RISCV_LO12_I	co_null_bdaddr
			6: R_RISCV_RELAX	*ABS*
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	co_bdaddr_compare
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL19+0x8>

00000014 <.LVL20>:
  14:	c509                	beqz	a0,1e <.L13>
			14: R_RISCV_RVC_BRANCH	.L13
  16:	4549                	li	a0,18

00000018 <.L12>:
  18:	40b2                	lw	ra,12(sp)
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

0000001e <.L13>:
  1e:	4501                	li	a0,0

00000020 <.LVL23>:
  20:	bfe5                	j	18 <.L12>
			20: R_RISCV_RVC_JUMP	.L12

Disassembly of section .text.llm_util_check_map_validity:

00000000 <llm_util_check_map_validity>:
   0:	00054783          	lbu	a5,0(a0)
   4:	0f87f793          	andi	a5,a5,248
   8:	c789                	beqz	a5,12 <.L22>
			8: R_RISCV_RVC_BRANCH	.L22
   a:	4705                	li	a4,1
   c:	4781                	li	a5,0
   e:	00e58963          	beq	a1,a4,20 <.L17>
			e: R_RISCV_BRANCH	.L17

00000012 <.L22>:
  12:	4701                	li	a4,0
  14:	4891                	li	a7,4
  16:	4321                	li	t1,8

00000018 <.L18>:
  18:	0ff77693          	andi	a3,a4,255
  1c:	00b6e463          	bltu	a3,a1,24 <.L21>
			1c: R_RISCV_BRANCH	.L21

00000020 <.L17>:
  20:	853e                	mv	a0,a5
  22:	8082                	ret

00000024 <.L21>:
  24:	00e50633          	add	a2,a0,a4
  28:	00064803          	lbu	a6,0(a2)
  2c:	01169563          	bne	a3,a7,36 <.L19>
			2c: R_RISCV_BRANCH	.L19
  30:	0e087693          	andi	a3,a6,224
  34:	ee89                	bnez	a3,4e <.L24>
			34: R_RISCV_RVC_BRANCH	.L24

00000036 <.L19>:
  36:	4681                	li	a3,0

00000038 <.L20>:
  38:	40d85633          	sra	a2,a6,a3
  3c:	8a05                	andi	a2,a2,1
  3e:	97b2                	add	a5,a5,a2

00000040 <.LVL29>:
  40:	0685                	addi	a3,a3,1

00000042 <.LVL30>:
  42:	0ff7f793          	andi	a5,a5,255

00000046 <.LVL31>:
  46:	fe6699e3          	bne	a3,t1,38 <.L20>
			46: R_RISCV_BRANCH	.L20

0000004a <.LVL32>:
  4a:	0705                	addi	a4,a4,1

0000004c <.LVL33>:
  4c:	b7f1                	j	18 <.L18>
			4c: R_RISCV_RVC_JUMP	.L18

0000004e <.L24>:
  4e:	02600793          	li	a5,38

00000052 <.LVL35>:
  52:	b7f9                	j	20 <.L17>
			52: R_RISCV_RVC_JUMP	.L17

Disassembly of section .text.llm_util_apply_bd_addr:

00000000 <llm_util_apply_bd_addr>:
   0:	4785                	li	a5,1
   2:	00f50563          	beq	a0,a5,c <.L27>
			2: R_RISCV_BRANCH	.L27
   6:	478d                	li	a5,3
   8:	00f51b63          	bne	a0,a5,1e <.L28>
			8: R_RISCV_BRANCH	.L28

0000000c <.L27>:
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	llm_le_env+0x5b
			c: R_RISCV_RELAX	*ABS*+0x5b

00000010 <.LVL37>:
  10:	4585                	li	a1,1
  12:	05b50513          	addi	a0,a0,91 # 5b <.L65+0x1>
			12: R_RISCV_LO12_I	llm_le_env+0x5b
			12: R_RISCV_RELAX	*ABS*+0x5b

00000016 <.L29>:
  16:	00000317          	auipc	t1,0x0
			16: R_RISCV_CALL	lld_util_set_bd_address
			16: R_RISCV_RELAX	*ABS*
  1a:	00030067          	jr	t1 # 16 <.L29>

0000001e <.L28>:
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	llm_le_env+0x61
			1e: R_RISCV_RELAX	*ABS*+0x61

00000022 <.LVL39>:
  22:	4581                	li	a1,0
  24:	06150513          	addi	a0,a0,97 # 61 <.L106+0x1>
			24: R_RISCV_LO12_I	llm_le_env+0x61
			24: R_RISCV_RELAX	*ABS*+0x61
  28:	b7fd                	j	16 <.L29>
			28: R_RISCV_RVC_JUMP	.L29

Disassembly of section .text.llm_util_set_public_addr:

00000000 <llm_util_set_public_addr>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memcpy_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a303          	lw	t1,0(a5) # 0 <llm_util_set_public_addr>
			4: R_RISCV_LO12_I	ble_memcpy_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	85aa                	mv	a1,a0
   a:	00000537          	lui	a0,0x0
			a: R_RISCV_HI20	llm_le_env+0x61
			a: R_RISCV_RELAX	*ABS*+0x61

0000000e <.LVL41>:
   e:	4619                	li	a2,6
  10:	06150513          	addi	a0,a0,97 # 61 <.L106+0x1>
			10: R_RISCV_LO12_I	llm_le_env+0x61
			10: R_RISCV_RELAX	*ABS*+0x61
  14:	8302                	jr	t1

Disassembly of section .text.llm_util_check_evt_mask:

00000000 <llm_util_check_evt_mask>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	llm_le_env
			0: R_RISCV_RELAX	*ABS*
   4:	00355713          	srli	a4,a0,0x3
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	llm_le_env
			8: R_RISCV_RELAX	*ABS*
   c:	97ba                	add	a5,a5,a4
   e:	0387c783          	lbu	a5,56(a5) # 38 <.LVL77>
  12:	070e                	slli	a4,a4,0x3
  14:	8d19                	sub	a0,a0,a4

00000016 <.LVL44>:
  16:	40a7d533          	sra	a0,a5,a0
  1a:	8905                	andi	a0,a0,1
  1c:	8082                	ret

Disassembly of section .text.llm_util_get_channel_map:

00000000 <llm_util_get_channel_map>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memcpy_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a303          	lw	t1,0(a5) # 0 <llm_util_get_channel_map>
			4: R_RISCV_LO12_I	ble_memcpy_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	000005b7          	lui	a1,0x0
			8: R_RISCV_HI20	llm_le_env+0x32
			8: R_RISCV_RELAX	*ABS*+0x32
   c:	4615                	li	a2,5
   e:	03258593          	addi	a1,a1,50 # 32 <.LVL121>
			e: R_RISCV_LO12_I	llm_le_env+0x32
			e: R_RISCV_RELAX	*ABS*+0x32
  12:	8302                	jr	t1

Disassembly of section .text.llm_util_get_supp_features:

00000000 <llm_util_get_supp_features>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memcpy_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a303          	lw	t1,0(a5) # 0 <llm_util_get_supp_features>
			4: R_RISCV_LO12_I	ble_memcpy_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	000005b7          	lui	a1,0x0
			8: R_RISCV_HI20	llm_local_le_feats
			8: R_RISCV_RELAX	*ABS*
   c:	4621                	li	a2,8
   e:	00058593          	mv	a1,a1
			e: R_RISCV_LO12_I	llm_local_le_feats
			e: R_RISCV_RELAX	*ABS*
  12:	8302                	jr	t1

Disassembly of section .text.llm_util_adv_data_update:

00000000 <llm_util_adv_data_update>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
			4: R_RISCV_HI20	llm_le_env
			4: R_RISCV_RELAX	*ABS*
   8:	c606                	sw	ra,12(sp)
   a:	00040793          	mv	a5,s0
			a: R_RISCV_LO12_I	llm_le_env
			a: R_RISCV_RELAX	*ABS*
   e:	4bdc                	lw	a5,20(a5)
  10:	00040413          	mv	s0,s0
			10: R_RISCV_LO12_I	llm_le_env
			10: R_RISCV_RELAX	*ABS*
  14:	4388                	lw	a0,0(a5)
  16:	cd19                	beqz	a0,34 <.L35>
			16: R_RISCV_RVC_BRANCH	.L35

00000018 <.LBB75>:
  18:	0531                	addi	a0,a0,12
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	llm_set_adv_data
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LBB75+0x2>

00000022 <.LVL50>:
  22:	485c                	lw	a5,20(s0)
  24:	4388                	lw	a0,0(a5)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	ble_ke_msg_free
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL50+0x4>

0000002e <.LVL51>:
  2e:	485c                	lw	a5,20(s0)
  30:	0007a023          	sw	zero,0(a5)

00000034 <.L35>:
  34:	485c                	lw	a5,20(s0)
  36:	43c8                	lw	a0,4(a5)
  38:	cd19                	beqz	a0,56 <.L34>
			38: R_RISCV_RVC_BRANCH	.L34

0000003a <.LBB77>:
  3a:	0531                	addi	a0,a0,12
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	llm_set_scan_rsp_data
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LBB77+0x2>

00000044 <.LVL53>:
  44:	485c                	lw	a5,20(s0)
  46:	43c8                	lw	a0,4(a5)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	ble_ke_msg_free
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL53+0x4>

00000050 <.LVL54>:
  50:	485c                	lw	a5,20(s0)
  52:	0007a223          	sw	zero,4(a5)

00000056 <.L34>:
  56:	40b2                	lw	ra,12(sp)
  58:	4422                	lw	s0,8(sp)
  5a:	0141                	addi	sp,sp,16
  5c:	8082                	ret

Disassembly of section .text.llm_util_bl_check:

00000000 <llm_util_bl_check>:
   0:	7179                	addi	sp,sp,-48

00000002 <.LBB83>:
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	llm_le_env+0x18
			2: R_RISCV_RELAX	*ABS*+0x18

00000006 <.LBE83>:
   6:	d422                	sw	s0,40(sp)

00000008 <.LBB84>:
   8:	0187a403          	lw	s0,24(a5) # 18 <.LBE84+0xc>
			8: R_RISCV_LO12_I	llm_le_env+0x18
			8: R_RISCV_RELAX	*ABS*+0x18

0000000c <.LBE84>:
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	d606                	sw	ra,44(sp)
  14:	84aa                	mv	s1,a0
  16:	0015f913          	andi	s2,a1,1
  1a:	4985                	li	s3,1

0000001c <.L45>:
  1c:	e019                	bnez	s0,22 <.L52>
			1c: R_RISCV_RVC_BRANCH	.L52
  1e:	4501                	li	a0,0
  20:	a891                	j	74 <.L51>
			20: R_RISCV_RVC_JUMP	.L51

00000022 <.L52>:
  22:	e499                	bnez	s1,30 <.L46>
			22: R_RISCV_RVC_BRANCH	.L46
  24:	01369663          	bne	a3,s3,30 <.L46>
			24: R_RISCV_BRANCH	.L46
  28:	000406a3          	sb	zero,13(s0) # d <.LBE84+0x1>

0000002c <.L47>:
  2c:	4000                	lw	s0,0(s0)
  2e:	b7fd                	j	1c <.L45>
			2e: R_RISCV_RVC_JUMP	.L45

00000030 <.L46>:
  30:	00440593          	addi	a1,s0,4
  34:	8526                	mv	a0,s1
  36:	c63a                	sw	a4,12(sp)
  38:	c436                	sw	a3,8(sp)
  3a:	c232                	sw	a2,4(sp)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	co_bdaddr_compare
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.L46+0xc>

00000044 <.LVL59>:
  44:	4612                	lw	a2,4(sp)
  46:	46a2                	lw	a3,8(sp)
  48:	4732                	lw	a4,12(sp)
  4a:	d16d                	beqz	a0,2c <.L47>
			4a: R_RISCV_RVC_BRANCH	.L47
  4c:	00c44783          	lbu	a5,12(s0)
  50:	fd279ee3          	bne	a5,s2,2c <.L47>
			50: R_RISCV_BRANCH	.L47

00000054 <.LVL60>:
  54:	c609                	beqz	a2,5e <.L48>
			54: R_RISCV_RVC_BRANCH	.L48
  56:	00a45783          	lhu	a5,10(s0)
  5a:	00f61023          	sh	a5,0(a2)

0000005e <.L48>:
  5e:	4785                	li	a5,1
  60:	02f69163          	bne	a3,a5,82 <.L49>
			60: R_RISCV_BRANCH	.L49
  64:	000406a3          	sb	zero,13(s0)

00000068 <.L50>:
  68:	452d                	li	a0,11
  6a:	c709                	beqz	a4,74 <.L51>
			6a: R_RISCV_RVC_BRANCH	.L51
  6c:	00d44783          	lbu	a5,13(s0)
  70:	00f70023          	sb	a5,0(a4)

00000074 <.L51>:
  74:	50b2                	lw	ra,44(sp)
  76:	5422                	lw	s0,40(sp)

00000078 <.LVL62>:
  78:	5492                	lw	s1,36(sp)

0000007a <.LVL63>:
  7a:	5902                	lw	s2,32(sp)
  7c:	49f2                	lw	s3,28(sp)
  7e:	6145                	addi	sp,sp,48
  80:	8082                	ret

00000082 <.L49>:
  82:	4609                	li	a2,2
  84:	fec692e3          	bne	a3,a2,68 <.L50>
			84: R_RISCV_BRANCH	.L50
  88:	00f406a3          	sb	a5,13(s0)
  8c:	bff1                	j	68 <.L50>
			8c: R_RISCV_RVC_JUMP	.L50

Disassembly of section .text.llm_util_bd_addr_in_wl:

00000000 <llm_util_bd_addr_in_wl>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	000107a3          	sb	zero,15(sp)
   e:	84aa                	mv	s1,a0
  10:	892e                	mv	s2,a1
  12:	8432                	mv	s0,a2
  14:	c219                	beqz	a2,1a <.L62>
			14: R_RISCV_RVC_BRANCH	.L62
  16:	00060023          	sb	zero,0(a2)

0000001a <.L62>:
  1a:	00f10713          	addi	a4,sp,15
  1e:	4681                	li	a3,0
  20:	4601                	li	a2,0

00000022 <.LVL66>:
  22:	85ca                	mv	a1,s2

00000024 <.LVL67>:
  24:	8526                	mv	a0,s1

00000026 <.LVL68>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	llm_util_bl_check
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL68>

0000002e <.LVL69>:
  2e:	47ad                	li	a5,11
  30:	00f51663          	bne	a0,a5,3c <.L63>
			30: R_RISCV_BRANCH	.L63
  34:	c401                	beqz	s0,3c <.L63>
			34: R_RISCV_RVC_BRANCH	.L63
  36:	4785                	li	a5,1
  38:	00f40023          	sb	a5,0(s0)

0000003c <.L63>:
  3c:	00f14783          	lbu	a5,15(sp)
  40:	ef89                	bnez	a5,5a <.L65>
			40: R_RISCV_RVC_BRANCH	.L65
  42:	85ca                	mv	a1,s2
  44:	8526                	mv	a0,s1
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	llm_util_bd_addr_wl_position
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L63+0xa>

0000004e <.LVL70>:
  4e:	478d                	li	a5,3
  50:	00a7e563          	bltu	a5,a0,5a <.L65>
			50: R_RISCV_BRANCH	.L65
  54:	4785                	li	a5,1
  56:	00f107a3          	sb	a5,15(sp)

0000005a <.L65>:
  5a:	40f2                	lw	ra,28(sp)
  5c:	4462                	lw	s0,24(sp)

0000005e <.LVL71>:
  5e:	00f14503          	lbu	a0,15(sp)
  62:	44d2                	lw	s1,20(sp)

00000064 <.LVL72>:
  64:	4942                	lw	s2,16(sp)
  66:	6105                	addi	sp,sp,32
  68:	8082                	ret

Disassembly of section .text.llm_util_bl_add:

00000000 <llm_util_bl_add>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	c452                	sw	s4,8(sp)
   6:	89aa                	mv	s3,a0
   8:	8a2e                	mv	s4,a1
   a:	4541                	li	a0,16

0000000c <.LVL74>:
   c:	4581                	li	a1,0

0000000e <.LVL75>:
   e:	cc22                	sw	s0,24(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	ca26                	sw	s1,20(sp)
  16:	8932                	mv	s2,a2
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	ble_ke_malloc
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL75+0xa>

00000020 <.LVL76>:
  20:	441d                	li	s0,7
  22:	cd39                	beqz	a0,80 <.L75>
			22: R_RISCV_RVC_BRANCH	.L75
  24:	000007b7          	lui	a5,0x0
			24: R_RISCV_HI20	ble_memcpy_ptr
			24: R_RISCV_RELAX	*ABS*
  28:	0007a783          	lw	a5,0(a5) # 0 <llm_util_bl_add>
			28: R_RISCV_LO12_I	ble_memcpy_ptr
			28: R_RISCV_RELAX	*ABS*
  2c:	00450493          	addi	s1,a0,4
  30:	842a                	mv	s0,a0
  32:	4619                	li	a2,6
  34:	85ce                	mv	a1,s3
  36:	8526                	mv	a0,s1

00000038 <.LVL77>:
  38:	9782                	jalr	a5

0000003a <.LVL78>:
  3a:	01241523          	sh	s2,10(s0)
  3e:	001a7913          	andi	s2,s4,1
  42:	01240623          	sb	s2,12(s0)
  46:	85d2                	mv	a1,s4
  48:	854e                	mv	a0,s3
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	llm_util_bd_addr_wl_position
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL78+0x10>

00000052 <.LVL79>:
  52:	00453513          	sltiu	a0,a0,4
  56:	00a406a3          	sb	a0,13(s0)
  5a:	00000537          	lui	a0,0x0
			5a: R_RISCV_HI20	llm_le_env+0x18
			5a: R_RISCV_RELAX	*ABS*+0x18
  5e:	85a2                	mv	a1,s0
  60:	01850513          	addi	a0,a0,24 # 18 <.LVL75+0xa>
			60: R_RISCV_LO12_I	llm_le_env+0x18
			60: R_RISCV_RELAX	*ABS*+0x18
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	ble_co_list_push_back
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL79+0x12>

0000006c <.LVL80>:
  6c:	00d44783          	lbu	a5,13(s0)
  70:	4401                	li	s0,0

00000072 <.LVL81>:
  72:	c799                	beqz	a5,80 <.L75>
			72: R_RISCV_RVC_BRANCH	.L75
  74:	85ca                	mv	a1,s2
  76:	8526                	mv	a0,s1
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	llm_wl_dev_rem
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL81+0x6>

00000080 <.L75>:
  80:	8522                	mv	a0,s0
  82:	40f2                	lw	ra,28(sp)
  84:	4462                	lw	s0,24(sp)

00000086 <.LVL83>:
  86:	44d2                	lw	s1,20(sp)
  88:	4942                	lw	s2,16(sp)
  8a:	49b2                	lw	s3,12(sp)

0000008c <.LVL84>:
  8c:	4a22                	lw	s4,8(sp)
  8e:	6105                	addi	sp,sp,32
  90:	8082                	ret

Disassembly of section .text.llm_util_bl_rem:

00000000 <llm_util_bl_rem>:
   0:	1141                	addi	sp,sp,-16

00000002 <.LBB89>:
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	llm_le_env+0x18
			2: R_RISCV_RELAX	*ABS*+0x18

00000006 <.LBE89>:
   6:	c422                	sw	s0,8(sp)

00000008 <.LBB90>:
   8:	0187a403          	lw	s0,24(a5) # 18 <.LVL88+0x2>
			8: R_RISCV_LO12_I	llm_le_env+0x18
			8: R_RISCV_RELAX	*ABS*+0x18

0000000c <.LBE90>:
   c:	c606                	sw	ra,12(sp)

0000000e <.L81>:
   e:	e411                	bnez	s0,1a <.L83>
			e: R_RISCV_RVC_BRANCH	.L83
  10:	4509                	li	a0,2

00000012 <.L87>:
  12:	40b2                	lw	ra,12(sp)
  14:	4422                	lw	s0,8(sp)

00000016 <.LVL88>:
  16:	0141                	addi	sp,sp,16
  18:	8082                	ret

0000001a <.L83>:
  1a:	00a45783          	lhu	a5,10(s0)
  1e:	00a78463          	beq	a5,a0,26 <.L82>
			1e: R_RISCV_BRANCH	.L82
  22:	4000                	lw	s0,0(s0)
  24:	b7ed                	j	e <.L81>
			24: R_RISCV_RVC_JUMP	.L81

00000026 <.L82>:
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	llm_le_env+0x18
			26: R_RISCV_RELAX	*ABS*+0x18

0000002a <.LVL92>:
  2a:	4601                	li	a2,0
  2c:	85a2                	mv	a1,s0
  2e:	01850513          	addi	a0,a0,24 # 18 <.LVL88+0x2>
			2e: R_RISCV_LO12_I	llm_le_env+0x18
			2e: R_RISCV_RELAX	*ABS*+0x18
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	ble_co_list_extract
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL92+0x8>

0000003a <.LVL93>:
  3a:	00d44783          	lbu	a5,13(s0)
  3e:	cb89                	beqz	a5,50 <.L86>
			3e: R_RISCV_RVC_BRANCH	.L86
  40:	00c44583          	lbu	a1,12(s0)
  44:	00440513          	addi	a0,s0,4
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	llm_wl_dev_add
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL93+0xe>

00000050 <.L86>:
  50:	8522                	mv	a0,s0
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	ble_ke_free
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.L86+0x2>

0000005a <.LBE91>:
  5a:	4501                	li	a0,0
  5c:	bf5d                	j	12 <.L87>
			5c: R_RISCV_RVC_JUMP	.L87

Disassembly of section .text.llm_end_evt_defer:

00000000 <llm_end_evt_defer>:
   0:	7179                	addi	sp,sp,-48
   2:	4501                	li	a0,0
   4:	d422                	sw	s0,40(sp)
   6:	d606                	sw	ra,44(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	ble_ke_state_get
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <llm_end_evt_defer+0x8>

00000010 <.LVL96>:
  10:	00000437          	lui	s0,0x0
			10: R_RISCV_HI20	llm_le_env
			10: R_RISCV_RELAX	*ABS*
  14:	0f057513          	andi	a0,a0,240

00000018 <.LVL97>:
  18:	47c1                	li	a5,16
  1a:	00040413          	mv	s0,s0
			1a: R_RISCV_LO12_I	llm_le_env
			1a: R_RISCV_RELAX	*ABS*
  1e:	06f51363          	bne	a0,a5,84 <.L90>
			1e: R_RISCV_BRANCH	.L90
  22:	484c                	lw	a1,20(s0)
  24:	4785                	li	a5,1
  26:	01c5c703          	lbu	a4,28(a1) # 1c <.LVL97+0x4>
  2a:	04f71d63          	bne	a4,a5,84 <.L90>
			2a: R_RISCV_BRANCH	.L90
  2e:	0215c783          	lbu	a5,33(a1)
  32:	eba9                	bnez	a5,84 <.L90>
			32: R_RISCV_RVC_BRANCH	.L90

00000034 <.LBB92>:
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	ble_memcpy_ptr
			34: R_RISCV_RELAX	*ABS*
  38:	0007a783          	lw	a5,0(a5) # 0 <llm_end_evt_defer>
			38: R_RISCV_LO12_I	ble_memcpy_ptr
			38: R_RISCV_RELAX	*ABS*
  3c:	4619                	li	a2,6
  3e:	05c1                	addi	a1,a1,16
  40:	0848                	addi	a0,sp,20
  42:	9782                	jalr	a5

00000044 <.LVL98>:
  44:	485c                	lw	a5,20(s0)
  46:	0070                	addi	a2,sp,12
  48:	4581                	li	a1,0
  4a:	0207c783          	lbu	a5,32(a5)
  4e:	03c00513          	li	a0,60
  52:	00f10d23          	sb	a5,26(sp)
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	llc_le_con_cmp_evt_send
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL98+0x12>

0000005e <.LVL99>:
  5e:	4428                	lw	a0,72(s0)
  60:	4585                	li	a1,1
  62:	4601                	li	a2,0
  64:	00000097          	auipc	ra,0x0
			64: R_RISCV_CALL	lld_evt_delete_elt_push
			64: R_RISCV_RELAX	*ABS*
  68:	000080e7          	jalr	ra # 64 <.LVL99+0x6>

0000006c <.LVL100>:
  6c:	4501                	li	a0,0
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	ble_ke_state_get
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.LVL100+0x2>

00000076 <.LVL101>:
  76:	00f57593          	andi	a1,a0,15
  7a:	4501                	li	a0,0
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	ble_ke_state_set
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL101+0x6>

00000084 <.L90>:
  84:	05a44703          	lbu	a4,90(s0) # 5a <.LVL98+0x16>
  88:	478d                	li	a5,3
  8a:	0cf70663          	beq	a4,a5,156 <.L89>
			8a: R_RISCV_BRANCH	.L89
  8e:	05944783          	lbu	a5,89(s0)
  92:	c3f1                	beqz	a5,156 <.L89>
			92: R_RISCV_RVC_BRANCH	.L89

00000094 <.LBB95>:
  94:	6609                	lui	a2,0x2
  96:	6505                	lui	a0,0x1
  98:	4691                	li	a3,4
  9a:	067d                	addi	a2,a2,31
  9c:	4581                	li	a1,0
  9e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF275+0x15>
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	ble_ke_msg_alloc
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LBB95+0xe>

000000aa <.LBB96>:
  aa:	280007b7          	lui	a5,0x28000

000000ae <.LBE96>:
  ae:	04040ca3          	sb	zero,89(s0)

000000b2 <.LBB99>:
  b2:	4398                	lw	a4,0(a5)
  b4:	fffc06b7          	lui	a3,0xfffc0
  b8:	16fd                	addi	a3,a3,-1
  ba:	8f75                	and	a4,a4,a3
  bc:	c398                	sw	a4,0(a5)

000000be <.LBE99>:
  be:	05a44683          	lbu	a3,90(s0)
  c2:	4705                	li	a4,1
  c4:	04e69463          	bne	a3,a4,10c <.L92>
			c4: R_RISCV_BRANCH	.L92

000000c8 <.LBB100>:
  c8:	1ac7a703          	lw	a4,428(a5) # 280001ac <.LASF753+0x27ffb611>

000000cc <.LBE101>:
  cc:	000006b7          	lui	a3,0x0
			cc: R_RISCV_HI20	orig_rxsyncwinszdef
			cc: R_RISCV_RELAX	*ABS*

000000d0 <.LBB104>:
  d0:	0006c683          	lbu	a3,0(a3) # 0 <llm_end_evt_defer>
			d0: R_RISCV_LO12_I	orig_rxsyncwinszdef
			d0: R_RISCV_RELAX	*ABS*
  d4:	fc077713          	andi	a4,a4,-64
  d8:	8f55                	or	a4,a4,a3
  da:	1ae7a623          	sw	a4,428(a5)

000000de <.LBB105>:
  de:	5fb4                	lw	a3,120(a5)

000000e0 <.LBE105>:
  e0:	00000737          	lui	a4,0x0
			e0: R_RISCV_HI20	orig_rfrxtmda
			e0: R_RISCV_RELAX	*ABS*

000000e4 <.LBB108>:
  e4:	00074703          	lbu	a4,0(a4) # 0 <llm_end_evt_defer>
			e4: R_RISCV_LO12_I	orig_rfrxtmda
			e4: R_RISCV_RELAX	*ABS*
  e8:	0692                	slli	a3,a3,0x4
  ea:	8291                	srli	a3,a3,0x4
  ec:	0772                	slli	a4,a4,0x1c
  ee:	8f55                	or	a4,a4,a3
  f0:	dfb8                	sw	a4,120(a5)

000000f2 <.LBE108>:
  f2:	400036b7          	lui	a3,0x40003
  f6:	8506a783          	lw	a5,-1968(a3) # 40002850 <.LASF753+0x3fffdcb5>

000000fa <.LVL109>:
  fa:	d0000737          	lui	a4,0xd0000
  fe:	177d                	addi	a4,a4,-1
 100:	8ff9                	and	a5,a5,a4
 102:	20000737          	lui	a4,0x20000
 106:	8fd9                	or	a5,a5,a4
 108:	84f6a823          	sw	a5,-1968(a3)

0000010c <.L92>:
 10c:	280006b7          	lui	a3,0x28000
 110:	429c                	lw	a5,0(a3)
 112:	7761                	lui	a4,0xffff8
 114:	177d                	addi	a4,a4,-1
 116:	8ff9                	and	a5,a5,a4
 118:	6721                	lui	a4,0x8
 11a:	8fd9                	or	a5,a5,a4
 11c:	c29c                	sw	a5,0(a3)

0000011e <.LBE109>:
 11e:	05a44703          	lbu	a4,90(s0)
 122:	4781                	li	a5,0
 124:	c719                	beqz	a4,132 <.L93>
			124: R_RISCV_RVC_BRANCH	.L93

00000126 <.LBB111>:
 126:	280087b7          	lui	a5,0x28008
 12a:	18a7d783          	lhu	a5,394(a5) # 2800818a <.LASF753+0x280035ef>
 12e:	07c2                	slli	a5,a5,0x10
 130:	83c1                	srli	a5,a5,0x10

00000132 <.L93>:
 132:	00f51123          	sh	a5,2(a0)

00000136 <.LBE111>:
 136:	478d                	li	a5,3
 138:	04f40d23          	sb	a5,90(s0)
 13c:	00050023          	sb	zero,0(a0)
 140:	00000097          	auipc	ra,0x0
			140: R_RISCV_CALL	hci_send_2_host
			140: R_RISCV_RELAX	*ABS*
 144:	000080e7          	jalr	ra # 140 <.LBE111+0xa>

00000148 <.LVL116>:
 148:	4601                	li	a2,0
 14a:	4581                	li	a1,0
 14c:	4505                	li	a0,1
 14e:	00000097          	auipc	ra,0x0
			14e: R_RISCV_CALL	ble_ke_msg_send_basic
			14e: R_RISCV_RELAX	*ABS*
 152:	000080e7          	jalr	ra # 14e <.LVL116+0x6>

00000156 <.L89>:
 156:	50b2                	lw	ra,44(sp)
 158:	5422                	lw	s0,40(sp)
 15a:	6145                	addi	sp,sp,48
 15c:	8082                	ret

Disassembly of section .text.llm_pdu_defer:

00000000 <llm_pdu_defer>:
   0:	1101                	addi	sp,sp,-32
   2:	c84a                	sw	s2,16(sp)
   4:	892a                	mv	s2,a0
   6:	4501                	li	a0,0

00000008 <.LVL119>:
   8:	ca26                	sw	s1,20(sp)
   a:	c632                	sw	a2,12(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	84ae                	mv	s1,a1
  12:	00000097          	auipc	ra,0x0
			12: R_RISCV_CALL	ble_ke_state_get
			12: R_RISCV_RELAX	*ABS*
  16:	000080e7          	jalr	ra # 12 <.LVL119+0xa>

0000001a <.LVL120>:
  1a:	00f57693          	andi	a3,a0,15
  1e:	4789                	li	a5,2
  20:	4632                	lw	a2,12(sp)
  22:	02f69963          	bne	a3,a5,54 <.L101>
			22: R_RISCV_BRANCH	.L101
  26:	00397793          	andi	a5,s2,3
  2a:	efd1                	bnez	a5,c6 <.L102>
			2a: R_RISCV_RVC_BRANCH	.L102
  2c:	4401                	li	s0,0
  2e:	c619                	beqz	a2,3c <.L103>
			2e: R_RISCV_RVC_BRANCH	.L103
  30:	8526                	mv	a0,s1

00000032 <.LVL121>:
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	llm_con_req_tx_cfm
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL121>

0000003a <.LVL122>:
  3a:	4405                	li	s0,1

0000003c <.L103>:
  3c:	8526                	mv	a0,s1
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	em_buf_rx_free
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.L103+0x2>

00000046 <.LVL124>:
  46:	8522                	mv	a0,s0
  48:	40f2                	lw	ra,28(sp)
  4a:	4462                	lw	s0,24(sp)

0000004c <.LVL125>:
  4c:	44d2                	lw	s1,20(sp)
  4e:	4942                	lw	s2,16(sp)
  50:	6105                	addi	sp,sp,32
  52:	8082                	ret

00000054 <.L101>:
  54:	02300793          	li	a5,35
  58:	4401                	li	s0,0
  5a:	fef501e3          	beq	a0,a5,3c <.L103>
			5a: R_RISCV_BRANCH	.L103
  5e:	dd79                	beqz	a0,3c <.L103>
			5e: R_RISCV_RVC_BRANCH	.L103

00000060 <.L106>:
  60:	02400793          	li	a5,36
  64:	4401                	li	s0,0
  66:	fcf50be3          	beq	a0,a5,3c <.L103>
			66: R_RISCV_BRANCH	.L103
  6a:	01f97793          	andi	a5,s2,31
  6e:	f7f9                	bnez	a5,3c <.L103>
			6e: R_RISCV_RVC_BRANCH	.L103

00000070 <.LBB113>:
  70:	47b9                	li	a5,14
  72:	02f487b3          	mul	a5,s1,a5
  76:	28008737          	lui	a4,0x28008
  7a:	3d270713          	addi	a4,a4,978 # 280083d2 <.LASF753+0x28003837>
  7e:	97ba                	add	a5,a5,a4
  80:	0007d783          	lhu	a5,0(a5)

00000084 <.LVL128>:
  84:	4719                	li	a4,6
  86:	8bbd                	andi	a5,a5,15

00000088 <.LBE114>:
  88:	faf76ae3          	bltu	a4,a5,3c <.L103>
			88: R_RISCV_BRANCH	.L103
  8c:	4705                	li	a4,1
  8e:	00f717b3          	sll	a5,a4,a5

00000092 <.LVL130>:
  92:	0577f613          	andi	a2,a5,87
  96:	e205                	bnez	a2,b6 <.L104>
			96: R_RISCV_RVC_BRANCH	.L104
  98:	0207f793          	andi	a5,a5,32
  9c:	d3c5                	beqz	a5,3c <.L103>
			9c: R_RISCV_RVC_BRANCH	.L103
  9e:	0f057513          	andi	a0,a0,240

000000a2 <.LVL131>:
  a2:	47c1                	li	a5,16
  a4:	f8f51ce3          	bne	a0,a5,3c <.L103>
			a4: R_RISCV_BRANCH	.L103
  a8:	85ca                	mv	a1,s2
  aa:	8526                	mv	a0,s1
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	llm_con_req_ind
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL131+0xa>

000000b4 <.LVL132>:
  b4:	b761                	j	3c <.L103>
			b4: R_RISCV_RVC_JUMP	.L103

000000b6 <.L104>:
  b6:	f8e693e3          	bne	a3,a4,3c <.L103>
			b6: R_RISCV_BRANCH	.L103
  ba:	8526                	mv	a0,s1

000000bc <.LVL134>:
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	llm_le_adv_report_ind
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL134>

000000c4 <.LVL135>:
  c4:	bfa5                	j	3c <.L103>
			c4: R_RISCV_RVC_JUMP	.L103

000000c6 <.L102>:
  c6:	02300793          	li	a5,35
  ca:	f8f51be3          	bne	a0,a5,60 <.L106>
			ca: R_RISCV_BRANCH	.L106
  ce:	4401                	li	s0,0
  d0:	b7b5                	j	3c <.L103>
			d0: R_RISCV_RVC_JUMP	.L103
