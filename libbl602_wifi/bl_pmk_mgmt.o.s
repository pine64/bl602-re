
libbl602_wifi/bl_pmk_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.pmkCacheFindPSK:

00000000 <pmkCacheFindPSK>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB51>:
   e:	44b007b7          	lui	a5,0x44b00

00000012 <.LBE51>:
  12:	89ae                	mv	s3,a1

00000014 <.LBB52>:
  14:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

00000018 <.LBE52>:
  18:	3e800793          	li	a5,1000
  1c:	892a                	mv	s2,a0
  1e:	02f5d5b3          	divu	a1,a1,a5
  22:	000004b7          	lui	s1,0x0
			22: R_RISCV_HI20	.LANCHOR0
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*

0000002a <.LVL2>:
  2a:	00048613          	mv	a2,s1
			2a: R_RISCV_LO12_I	.LANCHOR0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL2+0x8>

0000003a <.LVL3>:
  3a:	85ce                	mv	a1,s3
  3c:	854a                	mv	a0,s2
  3e:	00000097          	auipc	ra,0x0
			3e: R_RISCV_CALL	pmkCacheFindPSKElement
			3e: R_RISCV_RELAX	*ABS*
  42:	000080e7          	jalr	ra # 3e <.LVL3+0x4>

00000046 <.LVL4>:
  46:	842a                	mv	s0,a0

00000048 <.LVL5>:
  48:	cd15                	beqz	a0,84 <.L2>
			48: R_RISCV_RVC_BRANCH	.L2
  4a:	02050413          	addi	s0,a0,32 # 20 <.LBE52+0x8>

0000004e <.L3>:
  4e:	44b007b7          	lui	a5,0x44b00
  52:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

00000056 <.LBE53>:
  56:	3e800793          	li	a5,1000
  5a:	00000537          	lui	a0,0x0
			5a: R_RISCV_HI20	.LC1
			5a: R_RISCV_RELAX	*ABS*
  5e:	02f5d5b3          	divu	a1,a1,a5
  62:	00048613          	mv	a2,s1
			62: R_RISCV_LO12_I	.LANCHOR0
			62: R_RISCV_RELAX	*ABS*
  66:	00050513          	mv	a0,a0
			66: R_RISCV_LO12_I	.LC1
			66: R_RISCV_RELAX	*ABS*
  6a:	00000097          	auipc	ra,0x0
			6a: R_RISCV_CALL	dbg_test_print
			6a: R_RISCV_RELAX	*ABS*
  6e:	000080e7          	jalr	ra # 6a <.LBE53+0x14>

00000072 <.LVL7>:
  72:	8522                	mv	a0,s0
  74:	40f2                	lw	ra,28(sp)
  76:	4462                	lw	s0,24(sp)

00000078 <.LVL8>:
  78:	44d2                	lw	s1,20(sp)
  7a:	4942                	lw	s2,16(sp)

0000007c <.LVL9>:
  7c:	49b2                	lw	s3,12(sp)
  7e:	4a22                	lw	s4,8(sp)
  80:	6105                	addi	sp,sp,32
  82:	8082                	ret

00000084 <.L2>:
  84:	00000a37          	lui	s4,0x0
			84: R_RISCV_HI20	PSKPassPhrase
			84: R_RISCV_RELAX	*ABS*
  88:	000a4783          	lbu	a5,0(s4) # 0 <pmkCacheFindPSK>
			88: R_RISCV_LO12_I	PSKPassPhrase
			88: R_RISCV_RELAX	*ABS*
  8c:	d3e9                	beqz	a5,4e <.L3>
			8c: R_RISCV_RVC_BRANCH	.L3
  8e:	4681                	li	a3,0
  90:	4601                	li	a2,0
  92:	85ce                	mv	a1,s3
  94:	854a                	mv	a0,s2
  96:	00000097          	auipc	ra,0x0
			96: R_RISCV_CALL	pmkCacheAddPSK
			96: R_RISCV_RELAX	*ABS*
  9a:	000080e7          	jalr	ra # 96 <.L2+0x12>

0000009e <.LVL11>:
  9e:	85ce                	mv	a1,s3
  a0:	854a                	mv	a0,s2
  a2:	00000097          	auipc	ra,0x0
			a2: R_RISCV_CALL	pmkCacheFindPSKElement
			a2: R_RISCV_RELAX	*ABS*
  a6:	000080e7          	jalr	ra # a2 <.LVL11+0x4>

000000aa <.LVL12>:
  aa:	842a                	mv	s0,a0
  ac:	000a0513          	mv	a0,s4
			ac: R_RISCV_LO12_I	PSKPassPhrase
			ac: R_RISCV_RELAX	*ABS*
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	strlen
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL12+0x6>

000000b8 <.LVL14>:
  b8:	02040413          	addi	s0,s0,32

000000bc <.LVL15>:
  bc:	0ff57693          	andi	a3,a0,255
  c0:	8722                	mv	a4,s0
  c2:	000a0613          	mv	a2,s4
			c2: R_RISCV_LO12_I	PSKPassPhrase
			c2: R_RISCV_RELAX	*ABS*
  c6:	85ce                	mv	a1,s3
  c8:	854a                	mv	a0,s2
  ca:	00000097          	auipc	ra,0x0
			ca: R_RISCV_CALL	pmkCacheGeneratePSK
			ca: R_RISCV_RELAX	*ABS*
  ce:	000080e7          	jalr	ra # ca <.LVL15+0xe>

000000d2 <.LVL16>:
  d2:	bfb5                	j	4e <.L3>
			d2: R_RISCV_RVC_JUMP	.L3

Disassembly of section .text.pmkCacheSetPassphrase:

00000000 <pmkCacheSetPassphrase>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	c452                	sw	s4,8(sp)
   a:	c256                	sw	s5,4(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c84a                	sw	s2,16(sp)

00000010 <.LBB63>:
  10:	44b007b7          	lui	a5,0x44b00

00000014 <.LBE63>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB64>:
  16:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

0000001a <.LBE64>:
  1a:	3e800793          	li	a5,1000
  1e:	8a2a                	mv	s4,a0
  20:	02f5d5b3          	divu	a1,a1,a5
  24:	00000437          	lui	s0,0x0
			24: R_RISCV_HI20	.LANCHOR1
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL19>:
  2c:	84b2                	mv	s1,a2
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00040613          	mv	a2,s0
			32: R_RISCV_LO12_I	.LANCHOR1
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL20>:
  36:	89b6                	mv	s3,a3
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	dbg_test_print
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL20+0x2>

00000040 <.LVL21>:
  40:	c4a9                	beqz	s1,8a <.L9>
			40: R_RISCV_RVC_BRANCH	.L9
  42:	00000937          	lui	s2,0x0
			42: R_RISCV_HI20	PSKPassPhrase
			42: R_RISCV_RELAX	*ABS*
  46:	04000613          	li	a2,64
  4a:	85a6                	mv	a1,s1
  4c:	00090513          	mv	a0,s2
			4c: R_RISCV_LO12_I	PSKPassPhrase
			4c: R_RISCV_RELAX	*ABS*
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	memcpy
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL21+0x10>

00000058 <.LVL22>:
  58:	86ce                	mv	a3,s3
  5a:	8626                	mv	a2,s1
  5c:	85d6                	mv	a1,s5
  5e:	8552                	mv	a0,s4
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	pmkCacheAddPSK
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL22+0x8>

00000068 <.LVL23>:
  68:	85d6                	mv	a1,s5
  6a:	8552                	mv	a0,s4
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	pmkCacheFindPSKElement
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL23+0x4>

00000074 <.LVL24>:
  74:	04054583          	lbu	a1,64(a0) # 40 <.LVL21>
  78:	02050713          	addi	a4,a0,32
  7c:	86ce                	mv	a3,s3
  7e:	00090613          	mv	a2,s2
			7e: R_RISCV_LO12_I	PSKPassPhrase
			7e: R_RISCV_RELAX	*ABS*
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	pmkCacheGeneratePSK
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.LVL24+0xe>

0000008a <.L9>:
  8a:	44b007b7          	lui	a5,0x44b00
  8e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

00000092 <.LBE65>:
  92:	3e800793          	li	a5,1000
  96:	00040613          	mv	a2,s0
			96: R_RISCV_LO12_I	.LANCHOR1
			96: R_RISCV_RELAX	*ABS*
  9a:	02f5d5b3          	divu	a1,a1,a5
  9e:	4462                	lw	s0,24(sp)
  a0:	40f2                	lw	ra,28(sp)
  a2:	44d2                	lw	s1,20(sp)

000000a4 <.LVL26>:
  a4:	4942                	lw	s2,16(sp)
  a6:	49b2                	lw	s3,12(sp)
  a8:	4a22                	lw	s4,8(sp)

000000aa <.LVL27>:
  aa:	4a92                	lw	s5,4(sp)
  ac:	00000537          	lui	a0,0x0
			ac: R_RISCV_HI20	.LC1
			ac: R_RISCV_RELAX	*ABS*
  b0:	00050513          	mv	a0,a0
			b0: R_RISCV_LO12_I	.LC1
			b0: R_RISCV_RELAX	*ABS*
  b4:	6105                	addi	sp,sp,32
  b6:	00000317          	auipc	t1,0x0
			b6: R_RISCV_CALL	dbg_test_print
			b6: R_RISCV_RELAX	*ABS*
  ba:	00030067          	jr	t1 # b6 <.LVL27+0xc>

Disassembly of section .text.pmkCacheInit:

00000000 <pmkCacheInit>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB73>:
   a:	44b00937          	lui	s2,0x44b00
   e:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF58+0x44afd4b9>

00000012 <.LBE73>:
  12:	3e800413          	li	s0,1000
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	.LANCHOR2
			16: R_RISCV_RELAX	*ABS*
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR2
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LBE73+0x18>

00000032 <.LVL29>:
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	pmkCache
			32: R_RISCV_RELAX	*ABS*
  36:	08600613          	li	a2,134
  3a:	4581                	li	a1,0
  3c:	00050513          	mv	a0,a0
			3c: R_RISCV_LO12_I	pmkCache
			3c: R_RISCV_RELAX	*ABS*
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memset
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL29+0xe>

00000048 <.LVL30>:
  48:	00000537          	lui	a0,0x0
			48: R_RISCV_HI20	PSKPassPhrase
			48: R_RISCV_RELAX	*ABS*
  4c:	04000613          	li	a2,64
  50:	4581                	li	a1,0
  52:	00050513          	mv	a0,a0
			52: R_RISCV_LO12_I	PSKPassPhrase
			52: R_RISCV_RELAX	*ABS*
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	memset
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL30+0xe>

0000005e <.LVL31>:
  5e:	000007b7          	lui	a5,0x0
			5e: R_RISCV_HI20	replacementRankMax
			5e: R_RISCV_RELAX	*ABS*
  62:	00078023          	sb	zero,0(a5) # 0 <pmkCacheInit>
			62: R_RISCV_LO12_S	replacementRankMax
			62: R_RISCV_RELAX	*ABS*

00000066 <.LBB74>:
  66:	12092583          	lw	a1,288(s2)

0000006a <.LBE74>:
  6a:	40b2                	lw	ra,12(sp)
  6c:	4902                	lw	s2,0(sp)
  6e:	0285d5b3          	divu	a1,a1,s0
  72:	4422                	lw	s0,8(sp)
  74:	00048613          	mv	a2,s1
			74: R_RISCV_LO12_I	.LANCHOR2
			74: R_RISCV_RELAX	*ABS*
  78:	4492                	lw	s1,4(sp)
  7a:	00000537          	lui	a0,0x0
			7a: R_RISCV_HI20	.LC1
			7a: R_RISCV_RELAX	*ABS*
  7e:	00050513          	mv	a0,a0
			7e: R_RISCV_LO12_I	.LC1
			7e: R_RISCV_RELAX	*ABS*
  82:	0141                	addi	sp,sp,16
  84:	00000317          	auipc	t1,0x0
			84: R_RISCV_CALL	dbg_test_print
			84: R_RISCV_RELAX	*ABS*
  88:	00030067          	jr	t1 # 84 <.LBE74+0x1a>

Disassembly of section .text.pmkCacheFlush:

00000000 <pmkCacheFlush>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)

0000000a <.LBB82>:
   a:	44b00937          	lui	s2,0x44b00
   e:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF58+0x44afd4b9>

00000012 <.LBE82>:
  12:	3e800413          	li	s0,1000
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	.LANCHOR3
			16: R_RISCV_RELAX	*ABS*
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR3
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LBE82+0x18>

00000032 <.LVL33>:
  32:	00000537          	lui	a0,0x0
			32: R_RISCV_HI20	pmkCache
			32: R_RISCV_RELAX	*ABS*
  36:	08600613          	li	a2,134
  3a:	4581                	li	a1,0
  3c:	00050513          	mv	a0,a0
			3c: R_RISCV_LO12_I	pmkCache
			3c: R_RISCV_RELAX	*ABS*
  40:	00000097          	auipc	ra,0x0
			40: R_RISCV_CALL	memset
			40: R_RISCV_RELAX	*ABS*
  44:	000080e7          	jalr	ra # 40 <.LVL33+0xe>

00000048 <.LVL34>:
  48:	000007b7          	lui	a5,0x0
			48: R_RISCV_HI20	replacementRankMax
			48: R_RISCV_RELAX	*ABS*
  4c:	00078023          	sb	zero,0(a5) # 0 <pmkCacheFlush>
			4c: R_RISCV_LO12_S	replacementRankMax
			4c: R_RISCV_RELAX	*ABS*

00000050 <.LBB83>:
  50:	12092583          	lw	a1,288(s2)

00000054 <.LBE83>:
  54:	40b2                	lw	ra,12(sp)
  56:	4902                	lw	s2,0(sp)
  58:	0285d5b3          	divu	a1,a1,s0
  5c:	4422                	lw	s0,8(sp)
  5e:	00048613          	mv	a2,s1
			5e: R_RISCV_LO12_I	.LANCHOR3
			5e: R_RISCV_RELAX	*ABS*
  62:	4492                	lw	s1,4(sp)
  64:	00000537          	lui	a0,0x0
			64: R_RISCV_HI20	.LC1
			64: R_RISCV_RELAX	*ABS*
  68:	00050513          	mv	a0,a0
			68: R_RISCV_LO12_I	.LC1
			68: R_RISCV_RELAX	*ABS*
  6c:	0141                	addi	sp,sp,16
  6e:	00000317          	auipc	t1,0x0
			6e: R_RISCV_CALL	dbg_test_print
			6e: R_RISCV_RELAX	*ABS*
  72:	00030067          	jr	t1 # 6e <.LBE83+0x1a>

Disassembly of section .text.pmkCacheRomInit:

00000000 <pmkCacheRomInit>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	c606                	sw	ra,12(sp)

0000000a <.LBB91>:
   a:	44b00937          	lui	s2,0x44b00
   e:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF58+0x44afd4b9>

00000012 <.LBE91>:
  12:	3e800413          	li	s0,1000
  16:	000004b7          	lui	s1,0x0
			16: R_RISCV_HI20	.LANCHOR4
			16: R_RISCV_RELAX	*ABS*
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*
  22:	00048613          	mv	a2,s1
			22: R_RISCV_LO12_I	.LANCHOR4
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LBE91+0x18>

00000032 <.LVL36>:
  32:	000007b7          	lui	a5,0x0
			32: R_RISCV_HI20	ramHook_MAX_PMK_CACHE_ENTRIES
			32: R_RISCV_RELAX	*ABS*
  36:	4709                	li	a4,2
  38:	00e7a023          	sw	a4,0(a5) # 0 <pmkCacheRomInit>
			38: R_RISCV_LO12_S	ramHook_MAX_PMK_CACHE_ENTRIES
			38: R_RISCV_RELAX	*ABS*
  3c:	000007b7          	lui	a5,0x0
			3c: R_RISCV_HI20	pmkCache
			3c: R_RISCV_RELAX	*ABS*
  40:	00000737          	lui	a4,0x0
			40: R_RISCV_HI20	ramHook_pmkCache
			40: R_RISCV_RELAX	*ABS*
  44:	00078793          	mv	a5,a5
			44: R_RISCV_LO12_I	pmkCache
			44: R_RISCV_RELAX	*ABS*
  48:	00f72023          	sw	a5,0(a4) # 0 <pmkCacheRomInit>
			48: R_RISCV_LO12_S	ramHook_pmkCache
			48: R_RISCV_RELAX	*ABS*
  4c:	000007b7          	lui	a5,0x0
			4c: R_RISCV_HI20	PSKPassPhrase
			4c: R_RISCV_RELAX	*ABS*
  50:	00000737          	lui	a4,0x0
			50: R_RISCV_HI20	ramHook_PSKPassPhrase
			50: R_RISCV_RELAX	*ABS*
  54:	00078793          	mv	a5,a5
			54: R_RISCV_LO12_I	PSKPassPhrase
			54: R_RISCV_RELAX	*ABS*
  58:	00f72023          	sw	a5,0(a4) # 0 <pmkCacheRomInit>
			58: R_RISCV_LO12_S	ramHook_PSKPassPhrase
			58: R_RISCV_RELAX	*ABS*

0000005c <.LBB92>:
  5c:	12092583          	lw	a1,288(s2)

00000060 <.LBE92>:
  60:	40b2                	lw	ra,12(sp)
  62:	4902                	lw	s2,0(sp)
  64:	0285d5b3          	divu	a1,a1,s0
  68:	4422                	lw	s0,8(sp)
  6a:	00048613          	mv	a2,s1
			6a: R_RISCV_LO12_I	.LANCHOR4
			6a: R_RISCV_RELAX	*ABS*
  6e:	4492                	lw	s1,4(sp)
  70:	00000537          	lui	a0,0x0
			70: R_RISCV_HI20	.LC1
			70: R_RISCV_RELAX	*ABS*
  74:	00050513          	mv	a0,a0
			74: R_RISCV_LO12_I	.LC1
			74: R_RISCV_RELAX	*ABS*
  78:	0141                	addi	sp,sp,16
  7a:	00000317          	auipc	t1,0x0
			7a: R_RISCV_CALL	dbg_test_print
			7a: R_RISCV_RELAX	*ABS*
  7e:	00030067          	jr	t1 # 7a <.LBE92+0x1a>
