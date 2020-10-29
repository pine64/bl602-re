
libbl602_wifi/bl_pmk_mgmt_internal.o:     file format elf32-littleriscv


Disassembly of section .text.pmkCacheNewElement:

00000000 <pmkCacheNewElement>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	c85a                	sw	s6,16(sp)
   e:	c462                	sw	s8,8(sp)
  10:	d606                	sw	ra,44(sp)
  12:	d226                	sw	s1,36(sp)
  14:	c65e                	sw	s7,12(sp)

00000016 <.LBB71>:
  16:	44b007b7          	lui	a5,0x44b00
  1a:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000001e <.LBE71>:
  1e:	3e800793          	li	a5,1000
  22:	00000c37          	lui	s8,0x0
			22: R_RISCV_HI20	.LANCHOR0
			22: R_RISCV_RELAX	*ABS*
  26:	02f5d5b3          	divu	a1,a1,a5
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	000c0613          	mv	a2,s8
			2e: R_RISCV_LO12_I	.LANCHOR0
			2e: R_RISCV_RELAX	*ABS*
  32:	00050513          	mv	a0,a0
			32: R_RISCV_LO12_I	.LC0
			32: R_RISCV_RELAX	*ABS*
  36:	4981                	li	s3,0
  38:	4401                	li	s0,0
  3a:	00000ab7          	lui	s5,0x0
			3a: R_RISCV_HI20	ramHook_MAX_PMK_CACHE_ENTRIES
			3a: R_RISCV_RELAX	*ABS*
  3e:	00000937          	lui	s2,0x0
			3e: R_RISCV_HI20	replacementRankMax
			3e: R_RISCV_RELAX	*ABS*
  42:	00000a37          	lui	s4,0x0
			42: R_RISCV_HI20	ramHook_pmkCache
			42: R_RISCV_RELAX	*ABS*
  46:	04300b13          	li	s6,67
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	dbg_test_print
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LBE71+0x2c>

00000052 <.L2>:
  52:	000aa783          	lw	a5,0(s5) # 0 <pmkCacheNewElement>
			52: R_RISCV_LO12_I	ramHook_MAX_PMK_CACHE_ENTRIES
			52: R_RISCV_RELAX	*ABS*
  56:	04f44163          	blt	s0,a5,98 <.L6>
			56: R_RISCV_BRANCH	.L6

0000005a <.LBB72>:
  5a:	44b007b7          	lui	a5,0x44b00
  5e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

00000062 <.LBE72>:
  62:	3e800793          	li	a5,1000
  66:	00000537          	lui	a0,0x0
			66: R_RISCV_HI20	.LC1
			66: R_RISCV_RELAX	*ABS*
  6a:	02f5d5b3          	divu	a1,a1,a5
  6e:	000c0613          	mv	a2,s8
			6e: R_RISCV_LO12_I	.LANCHOR0
			6e: R_RISCV_RELAX	*ABS*
  72:	00050513          	mv	a0,a0
			72: R_RISCV_LO12_I	.LC1
			72: R_RISCV_RELAX	*ABS*
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	dbg_test_print
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LBE72+0x14>

0000007e <.LVL2>:
  7e:	50b2                	lw	ra,44(sp)
  80:	5422                	lw	s0,40(sp)

00000082 <.LVL3>:
  82:	854e                	mv	a0,s3
  84:	5492                	lw	s1,36(sp)
  86:	5902                	lw	s2,32(sp)
  88:	49f2                	lw	s3,28(sp)

0000008a <.LVL4>:
  8a:	4a62                	lw	s4,24(sp)
  8c:	4ad2                	lw	s5,20(sp)
  8e:	4b42                	lw	s6,16(sp)
  90:	4bb2                	lw	s7,12(sp)
  92:	4c22                	lw	s8,8(sp)
  94:	6145                	addi	sp,sp,48
  96:	8082                	ret

00000098 <.L6>:
  98:	00090703          	lb	a4,0(s2) # 0 <pmkCacheNewElement>
			98: R_RISCV_LO12_I	replacementRankMax
			98: R_RISCV_RELAX	*ABS*
  9c:	00f71c63          	bne	a4,a5,b4 <.L3>
			9c: R_RISCV_BRANCH	.L3
  a0:	036407b3          	mul	a5,s0,s6
  a4:	000a2703          	lw	a4,0(s4) # 0 <pmkCacheNewElement>
			a4: R_RISCV_LO12_I	ramHook_pmkCache
			a4: R_RISCV_RELAX	*ABS*
  a8:	97ba                	add	a5,a5,a4
  aa:	0427c703          	lbu	a4,66(a5)
  ae:	177d                	addi	a4,a4,-1
  b0:	04e78123          	sb	a4,66(a5)

000000b4 <.L3>:
  b4:	04099363          	bnez	s3,fa <.L4>
			b4: R_RISCV_BRANCH	.L4
  b8:	03640bb3          	mul	s7,s0,s6
  bc:	000a2483          	lw	s1,0(s4)
			bc: R_RISCV_LO12_I	ramHook_pmkCache
			bc: R_RISCV_RELAX	*ABS*
  c0:	94de                	add	s1,s1,s7
  c2:	04248783          	lb	a5,66(s1)
  c6:	eb95                	bnez	a5,fa <.L4>
			c6: R_RISCV_RVC_BRANCH	.L4

000000c8 <.LVL6>:
  c8:	04300613          	li	a2,67
  cc:	4581                	li	a1,0
  ce:	8526                	mv	a0,s1
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	memset
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.LVL6+0x8>

000000d8 <.LVL7>:
  d8:	00090783          	lb	a5,0(s2)
			d8: R_RISCV_LO12_I	replacementRankMax
			d8: R_RISCV_RELAX	*ABS*
  dc:	000aa703          	lw	a4,0(s5)
			dc: R_RISCV_LO12_I	ramHook_MAX_PMK_CACHE_ENTRIES
			dc: R_RISCV_RELAX	*ABS*
  e0:	00e7d563          	bge	a5,a4,ea <.L5>
			e0: R_RISCV_BRANCH	.L5
  e4:	0785                	addi	a5,a5,1
  e6:	00f90023          	sb	a5,0(s2)
			e6: R_RISCV_LO12_S	replacementRankMax
			e6: R_RISCV_RELAX	*ABS*

000000ea <.L5>:
  ea:	000a2783          	lw	a5,0(s4)
			ea: R_RISCV_LO12_I	ramHook_pmkCache
			ea: R_RISCV_RELAX	*ABS*
  ee:	00094703          	lbu	a4,0(s2)
			ee: R_RISCV_LO12_I	replacementRankMax
			ee: R_RISCV_RELAX	*ABS*
  f2:	89a6                	mv	s3,s1
  f4:	97de                	add	a5,a5,s7
  f6:	04e78123          	sb	a4,66(a5)

000000fa <.L4>:
  fa:	0405                	addi	s0,s0,1

000000fc <.LVL9>:
  fc:	0ff47413          	andi	s0,s0,255

00000100 <.LVL10>:
 100:	bf89                	j	52 <.L2>
			100: R_RISCV_RVC_JUMP	.L2

Disassembly of section .text.pmkCacheUpdateReplacementRank:

00000000 <pmkCacheUpdateReplacementRank>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)

00000008 <.LBB80>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

00000010 <.LBE80>:
  10:	3e800793          	li	a5,1000
  14:	84aa                	mv	s1,a0
  16:	02f5d5b3          	divu	a1,a1,a5
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR1
			1a: R_RISCV_RELAX	*ABS*
  1e:	00000537          	lui	a0,0x0
			1e: R_RISCV_HI20	.LC0
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL12>:
  22:	00040613          	mv	a2,s0
			22: R_RISCV_LO12_I	.LANCHOR1
			22: R_RISCV_RELAX	*ABS*
  26:	00050513          	mv	a0,a0
			26: R_RISCV_LO12_I	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	dbg_test_print
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL12+0x8>

00000032 <.LVL13>:
  32:	c885                	beqz	s1,62 <.L9>
			32: R_RISCV_RVC_BRANCH	.L9
  34:	000007b7          	lui	a5,0x0
			34: R_RISCV_HI20	replacementRankMax
			34: R_RISCV_RELAX	*ABS*
  38:	00078603          	lb	a2,0(a5) # 0 <pmkCacheUpdateReplacementRank>
			38: R_RISCV_LO12_I	replacementRankMax
			38: R_RISCV_RELAX	*ABS*
  3c:	04248783          	lb	a5,66(s1)
  40:	02c78163          	beq	a5,a2,62 <.L9>
			40: R_RISCV_BRANCH	.L9
  44:	000007b7          	lui	a5,0x0
			44: R_RISCV_HI20	ramHook_MAX_PMK_CACHE_ENTRIES
			44: R_RISCV_RELAX	*ABS*
  48:	0007a583          	lw	a1,0(a5) # 0 <pmkCacheUpdateReplacementRank>
			48: R_RISCV_LO12_I	ramHook_MAX_PMK_CACHE_ENTRIES
			48: R_RISCV_RELAX	*ABS*
  4c:	000007b7          	lui	a5,0x0
			4c: R_RISCV_HI20	ramHook_pmkCache
			4c: R_RISCV_RELAX	*ABS*
  50:	0007a503          	lw	a0,0(a5) # 0 <pmkCacheUpdateReplacementRank>
			50: R_RISCV_LO12_I	ramHook_pmkCache
			50: R_RISCV_RELAX	*ABS*
  54:	04300813          	li	a6,67
  58:	4781                	li	a5,0

0000005a <.L10>:
  5a:	02b7ca63          	blt	a5,a1,8e <.L12>
			5a: R_RISCV_BRANCH	.L12
  5e:	04c48123          	sb	a2,66(s1)

00000062 <.L9>:
  62:	44b007b7          	lui	a5,0x44b00
  66:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000006a <.LBE81>:
  6a:	3e800793          	li	a5,1000
  6e:	00040613          	mv	a2,s0
			6e: R_RISCV_LO12_I	.LANCHOR1
			6e: R_RISCV_RELAX	*ABS*
  72:	02f5d5b3          	divu	a1,a1,a5
  76:	4422                	lw	s0,8(sp)
  78:	40b2                	lw	ra,12(sp)
  7a:	4492                	lw	s1,4(sp)

0000007c <.LVL16>:
  7c:	00000537          	lui	a0,0x0
			7c: R_RISCV_HI20	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	00050513          	mv	a0,a0
			80: R_RISCV_LO12_I	.LC1
			80: R_RISCV_RELAX	*ABS*
  84:	0141                	addi	sp,sp,16
  86:	00000317          	auipc	t1,0x0
			86: R_RISCV_CALL	dbg_test_print
			86: R_RISCV_RELAX	*ABS*
  8a:	00030067          	jr	t1 # 86 <.LVL16+0xa>

0000008e <.L12>:
  8e:	03078733          	mul	a4,a5,a6
  92:	04248883          	lb	a7,66(s1)
  96:	972a                	add	a4,a4,a0
  98:	04270683          	lb	a3,66(a4)
  9c:	00d8d563          	bge	a7,a3,a6 <.L11>
			9c: R_RISCV_BRANCH	.L11
  a0:	16fd                	addi	a3,a3,-1
  a2:	04d70123          	sb	a3,66(a4)

000000a6 <.L11>:
  a6:	0785                	addi	a5,a5,1

000000a8 <.LVL18>:
  a8:	0ff7f793          	andi	a5,a5,255

000000ac <.LVL19>:
  ac:	b77d                	j	5a <.L10>
			ac: R_RISCV_RVC_JUMP	.L10

Disassembly of section .text.pmkCacheFindPSKElement:

00000000 <pmkCacheFindPSKElement>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	c85a                	sw	s6,16(sp)
   e:	c65e                	sw	s7,12(sp)
  10:	c462                	sw	s8,8(sp)
  12:	d606                	sw	ra,44(sp)
  14:	cc52                	sw	s4,24(sp)

00000016 <.LBB91>:
  16:	44b007b7          	lui	a5,0x44b00

0000001a <.LBE91>:
  1a:	892e                	mv	s2,a1

0000001c <.LBB92>:
  1c:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

00000020 <.LBE92>:
  20:	3e800793          	li	a5,1000
  24:	8b2a                	mv	s6,a0
  26:	02f5d5b3          	divu	a1,a1,a5
  2a:	00000ab7          	lui	s5,0x0
			2a: R_RISCV_HI20	.LANCHOR2
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000537          	lui	a0,0x0
			2e: R_RISCV_HI20	.LC0
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LVL22>:
  32:	000a8613          	mv	a2,s5
			32: R_RISCV_LO12_I	.LANCHOR2
			32: R_RISCV_RELAX	*ABS*
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	4481                	li	s1,0
  3c:	4401                	li	s0,0
  3e:	00000bb7          	lui	s7,0x0
			3e: R_RISCV_HI20	ramHook_MAX_PMK_CACHE_ENTRIES
			3e: R_RISCV_RELAX	*ABS*
  42:	04300c13          	li	s8,67
  46:	000009b7          	lui	s3,0x0
			46: R_RISCV_HI20	ramHook_pmkCache
			46: R_RISCV_RELAX	*ABS*
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	dbg_test_print
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL22+0x18>

00000052 <.L18>:
  52:	000ba783          	lw	a5,0(s7) # 0 <pmkCacheFindPSKElement>
			52: R_RISCV_LO12_I	ramHook_MAX_PMK_CACHE_ENTRIES
			52: R_RISCV_RELAX	*ABS*
  56:	04f44663          	blt	s0,a5,a2 <.L20>
			56: R_RISCV_BRANCH	.L20
  5a:	8526                	mv	a0,s1
  5c:	00000097          	auipc	ra,0x0
			5c: R_RISCV_CALL	pmkCacheUpdateReplacementRank
			5c: R_RISCV_RELAX	*ABS*
  60:	000080e7          	jalr	ra # 5c <.L18+0xa>

00000064 <.LBB93>:
  64:	44b007b7          	lui	a5,0x44b00
  68:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000006c <.LBE93>:
  6c:	3e800793          	li	a5,1000
  70:	00000537          	lui	a0,0x0
			70: R_RISCV_HI20	.LC1
			70: R_RISCV_RELAX	*ABS*
  74:	02f5d5b3          	divu	a1,a1,a5
  78:	000a8613          	mv	a2,s5
			78: R_RISCV_LO12_I	.LANCHOR2
			78: R_RISCV_RELAX	*ABS*
  7c:	00050513          	mv	a0,a0
			7c: R_RISCV_LO12_I	.LC1
			7c: R_RISCV_RELAX	*ABS*
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	dbg_test_print
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LBE93+0x14>

00000088 <.LVL25>:
  88:	50b2                	lw	ra,44(sp)
  8a:	5422                	lw	s0,40(sp)

0000008c <.LVL26>:
  8c:	8526                	mv	a0,s1
  8e:	5902                	lw	s2,32(sp)
  90:	5492                	lw	s1,36(sp)

00000092 <.LVL27>:
  92:	49f2                	lw	s3,28(sp)
  94:	4a62                	lw	s4,24(sp)
  96:	4ad2                	lw	s5,20(sp)
  98:	4b42                	lw	s6,16(sp)

0000009a <.LVL28>:
  9a:	4bb2                	lw	s7,12(sp)
  9c:	4c22                	lw	s8,8(sp)
  9e:	6145                	addi	sp,sp,48
  a0:	8082                	ret

000000a2 <.L20>:
  a2:	03840a33          	mul	s4,s0,s8
  a6:	0009a503          	lw	a0,0(s3) # 0 <pmkCacheFindPSKElement>
			a6: R_RISCV_LO12_I	ramHook_pmkCache
			a6: R_RISCV_RELAX	*ABS*
  aa:	9552                	add	a0,a0,s4
  ac:	04250783          	lb	a5,66(a0) # 42 <.LVL22+0x10>
  b0:	cf99                	beqz	a5,ce <.L19>
			b0: R_RISCV_RVC_BRANCH	.L19
  b2:	04054783          	lbu	a5,64(a0)
  b6:	01279c63          	bne	a5,s2,ce <.L19>
			b6: R_RISCV_BRANCH	.L19
  ba:	864a                	mv	a2,s2
  bc:	85da                	mv	a1,s6
  be:	00000097          	auipc	ra,0x0
			be: R_RISCV_CALL	memcmp
			be: R_RISCV_RELAX	*ABS*
  c2:	000080e7          	jalr	ra # be <.L20+0x1c>

000000c6 <.LVL30>:
  c6:	e501                	bnez	a0,ce <.L19>
			c6: R_RISCV_RVC_BRANCH	.L19
  c8:	0009a483          	lw	s1,0(s3)
			c8: R_RISCV_LO12_I	ramHook_pmkCache
			c8: R_RISCV_RELAX	*ABS*

000000cc <.LVL31>:
  cc:	94d2                	add	s1,s1,s4

000000ce <.L19>:
  ce:	0405                	addi	s0,s0,1

000000d0 <.LVL33>:
  d0:	0ff47413          	andi	s0,s0,255

000000d4 <.LVL34>:
  d4:	bfbd                	j	52 <.L18>
			d4: R_RISCV_RVC_JUMP	.L18

Disassembly of section .text.pmkCacheAddPSK:

00000000 <pmkCacheAddPSK>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)

00000010 <.LBB103>:
  10:	44b007b7          	lui	a5,0x44b00

00000014 <.LBE103>:
  14:	892e                	mv	s2,a1

00000016 <.LBB104>:
  16:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000001a <.LBE104>:
  1a:	3e800793          	li	a5,1000
  1e:	8a2a                	mv	s4,a0
  20:	02f5d5b3          	divu	a1,a1,a5
  24:	000004b7          	lui	s1,0x0
			24: R_RISCV_HI20	.LANCHOR3
			24: R_RISCV_RELAX	*ABS*
  28:	00000537          	lui	a0,0x0
			28: R_RISCV_HI20	.LC0
			28: R_RISCV_RELAX	*ABS*

0000002c <.LVL37>:
  2c:	00050513          	mv	a0,a0
			2c: R_RISCV_LO12_I	.LC0
			2c: R_RISCV_RELAX	*ABS*
  30:	89b2                	mv	s3,a2
  32:	00048613          	mv	a2,s1
			32: R_RISCV_LO12_I	.LANCHOR3
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL38>:
  36:	8ab6                	mv	s5,a3
  38:	00000097          	auipc	ra,0x0
			38: R_RISCV_CALL	dbg_test_print
			38: R_RISCV_RELAX	*ABS*
  3c:	000080e7          	jalr	ra # 38 <.LVL38+0x2>

00000040 <.LVL39>:
  40:	85ca                	mv	a1,s2
  42:	8552                	mv	a0,s4
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	pmkCacheFindPSKElement
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL39+0x4>

0000004c <.LVL40>:
  4c:	842a                	mv	s0,a0
  4e:	ed11                	bnez	a0,6a <.L26>
			4e: R_RISCV_RVC_BRANCH	.L26
  50:	00000097          	auipc	ra,0x0
			50: R_RISCV_CALL	pmkCacheNewElement
			50: R_RISCV_RELAX	*ABS*
  54:	000080e7          	jalr	ra # 50 <.LVL40+0x4>

00000058 <.LVL41>:
  58:	842a                	mv	s0,a0
  5a:	864a                	mv	a2,s2
  5c:	85d2                	mv	a1,s4
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	memcpy
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL41+0x6>

00000066 <.LVL43>:
  66:	05240023          	sb	s2,64(s0) # 40 <.LVL39>

0000006a <.L26>:
  6a:	00098d63          	beqz	s3,84 <.L27>
			6a: R_RISCV_BRANCH	.L27
  6e:	02000613          	li	a2,32
  72:	85ce                	mv	a1,s3
  74:	02040513          	addi	a0,s0,32
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	memcpy
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.L26+0xe>

00000080 <.LVL45>:
  80:	055400a3          	sb	s5,65(s0)

00000084 <.L27>:
  84:	44b007b7          	lui	a5,0x44b00
  88:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000008c <.LBE105>:
  8c:	3e800793          	li	a5,1000
  90:	4462                	lw	s0,24(sp)

00000092 <.LVL46>:
  92:	02f5d5b3          	divu	a1,a1,a5
  96:	40f2                	lw	ra,28(sp)
  98:	4942                	lw	s2,16(sp)
  9a:	49b2                	lw	s3,12(sp)

0000009c <.LVL47>:
  9c:	4a22                	lw	s4,8(sp)

0000009e <.LVL48>:
  9e:	4a92                	lw	s5,4(sp)
  a0:	00048613          	mv	a2,s1
			a0: R_RISCV_LO12_I	.LANCHOR3
			a0: R_RISCV_RELAX	*ABS*
  a4:	44d2                	lw	s1,20(sp)
  a6:	00000537          	lui	a0,0x0
			a6: R_RISCV_HI20	.LC1
			a6: R_RISCV_RELAX	*ABS*
  aa:	00050513          	mv	a0,a0
			aa: R_RISCV_LO12_I	.LC1
			aa: R_RISCV_RELAX	*ABS*
  ae:	6105                	addi	sp,sp,32
  b0:	00000317          	auipc	t1,0x0
			b0: R_RISCV_CALL	dbg_test_print
			b0: R_RISCV_RELAX	*ABS*
  b4:	00030067          	jr	t1 # b0 <.LVL48+0x12>

Disassembly of section .text.pmkCacheDeletePSK:

00000000 <pmkCacheDeletePSK>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
			8: R_RISCV_CALL	pmkCacheFindPSKElement
			8: R_RISCV_RELAX	*ABS*
   c:	000080e7          	jalr	ra # 8 <pmkCacheDeletePSK+0x8>

00000010 <.LBB108>:
  10:	44b007b7          	lui	a5,0x44b00
  14:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

00000018 <.LBE108>:
  18:	3e800793          	li	a5,1000
  1c:	84aa                	mv	s1,a0

0000001e <.LBB113>:
  1e:	02f5d5b3          	divu	a1,a1,a5
  22:	00000437          	lui	s0,0x0
			22: R_RISCV_HI20	.LANCHOR4
			22: R_RISCV_RELAX	*ABS*
  26:	00000537          	lui	a0,0x0
			26: R_RISCV_HI20	.LC0
			26: R_RISCV_RELAX	*ABS*
  2a:	00040613          	mv	a2,s0
			2a: R_RISCV_LO12_I	.LANCHOR4
			2a: R_RISCV_RELAX	*ABS*
  2e:	00050513          	mv	a0,a0
			2e: R_RISCV_LO12_I	.LC0
			2e: R_RISCV_RELAX	*ABS*
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	dbg_test_print
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LBB113+0x14>

0000003a <.LVL53>:
  3a:	c085                	beqz	s1,5a <.L34>
			3a: R_RISCV_RVC_BRANCH	.L34
  3c:	04300613          	li	a2,67
  40:	4581                	li	a1,0
  42:	8526                	mv	a0,s1
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	memset
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL53+0xa>

0000004c <.LVL54>:
  4c:	00000737          	lui	a4,0x0
			4c: R_RISCV_HI20	replacementRankMax
			4c: R_RISCV_RELAX	*ABS*
  50:	00074783          	lbu	a5,0(a4) # 0 <pmkCacheDeletePSK>
			50: R_RISCV_LO12_I	replacementRankMax
			50: R_RISCV_RELAX	*ABS*
  54:	17fd                	addi	a5,a5,-1
  56:	00f70023          	sb	a5,0(a4)
			56: R_RISCV_LO12_S	replacementRankMax
			56: R_RISCV_RELAX	*ABS*

0000005a <.L34>:
  5a:	44b007b7          	lui	a5,0x44b00
  5e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

00000062 <.LBE114>:
  62:	3e800793          	li	a5,1000
  66:	00040613          	mv	a2,s0
			66: R_RISCV_LO12_I	.LANCHOR4
			66: R_RISCV_RELAX	*ABS*
  6a:	02f5d5b3          	divu	a1,a1,a5
  6e:	4422                	lw	s0,8(sp)
  70:	40b2                	lw	ra,12(sp)
  72:	4492                	lw	s1,4(sp)

00000074 <.LVL55>:
  74:	00000537          	lui	a0,0x0
			74: R_RISCV_HI20	.LC1
			74: R_RISCV_RELAX	*ABS*
  78:	00050513          	mv	a0,a0
			78: R_RISCV_LO12_I	.LC1
			78: R_RISCV_RELAX	*ABS*
  7c:	0141                	addi	sp,sp,16
  7e:	00000317          	auipc	t1,0x0
			7e: R_RISCV_CALL	dbg_test_print
			7e: R_RISCV_RELAX	*ABS*
  82:	00030067          	jr	t1 # 7e <.LVL55+0xa>

Disassembly of section .text.pmkCacheGetHexNibble:

00000000 <pmkCacheGetHexNibble>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)

0000000c <.LBB133>:
   c:	44b009b7          	lui	s3,0x44b00
  10:	1209a583          	lw	a1,288(s3) # 44b00120 <.LASF90+0x44aff230>

00000014 <.LBE133>:
  14:	3e800493          	li	s1,1000
  18:	842a                	mv	s0,a0
  1a:	0295d5b3          	divu	a1,a1,s1
  1e:	00000937          	lui	s2,0x0
			1e: R_RISCV_HI20	.LANCHOR5
			1e: R_RISCV_RELAX	*ABS*
  22:	00000537          	lui	a0,0x0
			22: R_RISCV_HI20	.LC0
			22: R_RISCV_RELAX	*ABS*

00000026 <.LVL58>:
  26:	00090613          	mv	a2,s2
			26: R_RISCV_LO12_I	.LANCHOR5
			26: R_RISCV_RELAX	*ABS*
  2a:	00050513          	mv	a0,a0
			2a: R_RISCV_LO12_I	.LC0
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	dbg_test_print
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL58+0x8>

00000036 <.LVL59>:
  36:	06000793          	li	a5,96
  3a:	0087fd63          	bgeu	a5,s0,54 <.L40>
			3a: R_RISCV_BRANCH	.L40
  3e:	fa940413          	addi	s0,s0,-87 # ffffffa9 <.LASF90+0xfffff0b9>

00000042 <.L44>:
  42:	0ff47513          	andi	a0,s0,255

00000046 <.LBE134>:
  46:	40f2                	lw	ra,28(sp)
  48:	4462                	lw	s0,24(sp)
  4a:	44d2                	lw	s1,20(sp)
  4c:	4942                	lw	s2,16(sp)
  4e:	49b2                	lw	s3,12(sp)
  50:	6105                	addi	sp,sp,32
  52:	8082                	ret

00000054 <.L40>:
  54:	04000793          	li	a5,64
  58:	0087f563          	bgeu	a5,s0,62 <.L42>
			58: R_RISCV_BRANCH	.L42
  5c:	fc940413          	addi	s0,s0,-55
  60:	b7cd                	j	42 <.L44>
			60: R_RISCV_RVC_JUMP	.L44

00000062 <.L42>:
  62:	1209a583          	lw	a1,288(s3)

00000066 <.LBE136>:
  66:	00000537          	lui	a0,0x0
			66: R_RISCV_HI20	.LC1
			66: R_RISCV_RELAX	*ABS*
  6a:	00090613          	mv	a2,s2
			6a: R_RISCV_LO12_I	.LANCHOR5
			6a: R_RISCV_RELAX	*ABS*
  6e:	0295d5b3          	divu	a1,a1,s1
  72:	00050513          	mv	a0,a0
			72: R_RISCV_LO12_I	.LC1
			72: R_RISCV_RELAX	*ABS*
  76:	fd040413          	addi	s0,s0,-48

0000007a <.LVL61>:
  7a:	00000097          	auipc	ra,0x0
			7a: R_RISCV_CALL	dbg_test_print
			7a: R_RISCV_RELAX	*ABS*
  7e:	000080e7          	jalr	ra # 7a <.LVL61>

00000082 <.LVL62>:
  82:	b7c1                	j	42 <.L44>
			82: R_RISCV_RVC_JUMP	.L44

Disassembly of section .text.pmkCacheGeneratePSK:

00000000 <pmkCacheGeneratePSK>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d226                	sw	s1,36(sp)
   6:	d04a                	sw	s2,32(sp)
   8:	ce4e                	sw	s3,28(sp)
   a:	cc52                	sw	s4,24(sp)
   c:	d606                	sw	ra,44(sp)
   e:	ca56                	sw	s5,20(sp)

00000010 <.LBB150>:
  10:	44b007b7          	lui	a5,0x44b00

00000014 <.LBE150>:
  14:	c636                	sw	a3,12(sp)
  16:	89ae                	mv	s3,a1

00000018 <.LBB151>:
  18:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000001c <.LBE151>:
  1c:	3e800793          	li	a5,1000
  20:	84aa                	mv	s1,a0
  22:	02f5d5b3          	divu	a1,a1,a5
  26:	00000937          	lui	s2,0x0
			26: R_RISCV_HI20	.LANCHOR6
			26: R_RISCV_RELAX	*ABS*
  2a:	00000537          	lui	a0,0x0
			2a: R_RISCV_HI20	.LC0
			2a: R_RISCV_RELAX	*ABS*

0000002e <.LVL65>:
  2e:	8432                	mv	s0,a2
  30:	8a3a                	mv	s4,a4
  32:	00090613          	mv	a2,s2
			32: R_RISCV_LO12_I	.LANCHOR6
			32: R_RISCV_RELAX	*ABS*

00000036 <.LVL66>:
  36:	00050513          	mv	a0,a0
			36: R_RISCV_LO12_I	.LC0
			36: R_RISCV_RELAX	*ABS*
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	dbg_test_print
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL66+0x4>

00000042 <.LVL67>:
  42:	020a0263          	beqz	s4,66 <.L48>
			42: R_RISCV_BRANCH	.L48
  46:	c005                	beqz	s0,66 <.L48>
			46: R_RISCV_RVC_BRANCH	.L48

00000048 <.LVL68>:
  48:	46b2                	lw	a3,12(sp)
  4a:	03700713          	li	a4,55
  4e:	ff868793          	addi	a5,a3,-8
  52:	04f76463          	bltu	a4,a5,9a <.L47>
			52: R_RISCV_BRANCH	.L47
  56:	86d2                	mv	a3,s4
  58:	864e                	mv	a2,s3
  5a:	85a6                	mv	a1,s1
  5c:	8522                	mv	a0,s0
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	utils_wifi_psk_cal_fast_bin
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LVL68+0x16>

00000066 <.L48>:
  66:	44b007b7          	lui	a5,0x44b00
  6a:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF90+0x44aff230>

0000006e <.LBE152>:
  6e:	3e800793          	li	a5,1000
  72:	5422                	lw	s0,40(sp)
  74:	02f5d5b3          	divu	a1,a1,a5
  78:	50b2                	lw	ra,44(sp)
  7a:	5492                	lw	s1,36(sp)
  7c:	49f2                	lw	s3,28(sp)
  7e:	4a62                	lw	s4,24(sp)

00000080 <.LVL70>:
  80:	4ad2                	lw	s5,20(sp)
  82:	00090613          	mv	a2,s2
			82: R_RISCV_LO12_I	.LANCHOR6
			82: R_RISCV_RELAX	*ABS*
  86:	5902                	lw	s2,32(sp)
  88:	00000537          	lui	a0,0x0
			88: R_RISCV_HI20	.LC1
			88: R_RISCV_RELAX	*ABS*
  8c:	00050513          	mv	a0,a0
			8c: R_RISCV_LO12_I	.LC1
			8c: R_RISCV_RELAX	*ABS*
  90:	6145                	addi	sp,sp,48
  92:	00000317          	auipc	t1,0x0
			92: R_RISCV_CALL	dbg_test_print
			92: R_RISCV_RELAX	*ABS*
  96:	00030067          	jr	t1 # 92 <.LVL70+0x12>

0000009a <.L47>:
  9a:	04000793          	li	a5,64
  9e:	fcf694e3          	bne	a3,a5,66 <.L48>
			9e: R_RISCV_BRANCH	.L48
  a2:	4981                	li	s3,0
  a4:	04000a93          	li	s5,64

000000a8 <.L49>:
  a8:	00044503          	lbu	a0,0(s0)
  ac:	0409                	addi	s0,s0,2
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	pmkCacheGetHexNibble
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L49+0x6>

000000b6 <.LVL73>:
  b6:	84aa                	mv	s1,a0
  b8:	fff44503          	lbu	a0,-1(s0)
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	pmkCacheGetHexNibble
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL73+0x6>

000000c4 <.LVL74>:
  c4:	4019d613          	srai	a2,s3,0x1
  c8:	00449793          	slli	a5,s1,0x4
  cc:	9652                	add	a2,a2,s4
  ce:	8d5d                	or	a0,a0,a5
  d0:	00a60023          	sb	a0,0(a2)
  d4:	0989                	addi	s3,s3,2
  d6:	fd5999e3          	bne	s3,s5,a8 <.L49>
			d6: R_RISCV_BRANCH	.L49
  da:	b771                	j	66 <.L48>
			da: R_RISCV_RVC_JUMP	.L48
