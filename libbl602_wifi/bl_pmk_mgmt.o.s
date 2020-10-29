
bl_pmk_mgmt.o:     file format elf32-littleriscv


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
  26:	00000537          	lui	a0,0x0

0000002a <.LVL2>:
  2a:	00048613          	mv	a2,s1
  2e:	00050513          	mv	a0,a0
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL2+0x8>

0000003a <.LVL3>:
  3a:	85ce                	mv	a1,s3
  3c:	854a                	mv	a0,s2
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL3+0x4>

00000046 <.LVL4>:
  46:	842a                	mv	s0,a0

00000048 <.LVL5>:
  48:	cd15                	beqz	a0,84 <.L2>
  4a:	02050413          	addi	s0,a0,32 # 20 <.LBE52+0x8>

0000004e <.L3>:
  4e:	44b007b7          	lui	a5,0x44b00
  52:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

00000056 <.LBE53>:
  56:	3e800793          	li	a5,1000
  5a:	00000537          	lui	a0,0x0
  5e:	02f5d5b3          	divu	a1,a1,a5
  62:	00048613          	mv	a2,s1
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
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
  88:	000a4783          	lbu	a5,0(s4) # 0 <pmkCacheFindPSK>
  8c:	d3e9                	beqz	a5,4e <.L3>
  8e:	4681                	li	a3,0
  90:	4601                	li	a2,0
  92:	85ce                	mv	a1,s3
  94:	854a                	mv	a0,s2
  96:	00000097          	auipc	ra,0x0
  9a:	000080e7          	jalr	ra # 96 <.L2+0x12>

0000009e <.LVL11>:
  9e:	85ce                	mv	a1,s3
  a0:	854a                	mv	a0,s2
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.LVL11+0x4>

000000aa <.LVL12>:
  aa:	842a                	mv	s0,a0
  ac:	000a0513          	mv	a0,s4
  b0:	00000097          	auipc	ra,0x0
  b4:	000080e7          	jalr	ra # b0 <.LVL12+0x6>

000000b8 <.LVL14>:
  b8:	02040413          	addi	s0,s0,32

000000bc <.LVL15>:
  bc:	0ff57693          	andi	a3,a0,255
  c0:	8722                	mv	a4,s0
  c2:	000a0613          	mv	a2,s4
  c6:	85ce                	mv	a1,s3
  c8:	854a                	mv	a0,s2
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.LVL15+0xe>

000000d2 <.LVL16>:
  d2:	bfb5                	j	4e <.L3>

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
  28:	00000537          	lui	a0,0x0

0000002c <.LVL19>:
  2c:	84b2                	mv	s1,a2
  2e:	00050513          	mv	a0,a0
  32:	00040613          	mv	a2,s0

00000036 <.LVL20>:
  36:	89b6                	mv	s3,a3
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL20+0x2>

00000040 <.LVL21>:
  40:	c4a9                	beqz	s1,8a <.L9>
  42:	00000937          	lui	s2,0x0
  46:	04000613          	li	a2,64
  4a:	85a6                	mv	a1,s1
  4c:	00090513          	mv	a0,s2
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL21+0x10>

00000058 <.LVL22>:
  58:	86ce                	mv	a3,s3
  5a:	8626                	mv	a2,s1
  5c:	85d6                	mv	a1,s5
  5e:	8552                	mv	a0,s4
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.LVL22+0x8>

00000068 <.LVL23>:
  68:	85d6                	mv	a1,s5
  6a:	8552                	mv	a0,s4
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL23+0x4>

00000074 <.LVL24>:
  74:	04054583          	lbu	a1,64(a0) # 40 <.LVL21>
  78:	02050713          	addi	a4,a0,32
  7c:	86ce                	mv	a3,s3
  7e:	00090613          	mv	a2,s2
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL24+0xe>

0000008a <.L9>:
  8a:	44b007b7          	lui	a5,0x44b00
  8e:	1207a583          	lw	a1,288(a5) # 44b00120 <.LASF58+0x44afd4b9>

00000092 <.LBE65>:
  92:	3e800793          	li	a5,1000
  96:	00040613          	mv	a2,s0
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
  b0:	00050513          	mv	a0,a0
  b4:	6105                	addi	sp,sp,32
  b6:	00000317          	auipc	t1,0x0
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
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
  22:	00048613          	mv	a2,s1
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LBE73+0x18>

00000032 <.LVL29>:
  32:	00000537          	lui	a0,0x0
  36:	08600613          	li	a2,134
  3a:	4581                	li	a1,0
  3c:	00050513          	mv	a0,a0
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL29+0xe>

00000048 <.LVL30>:
  48:	00000537          	lui	a0,0x0
  4c:	04000613          	li	a2,64
  50:	4581                	li	a1,0
  52:	00050513          	mv	a0,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL30+0xe>

0000005e <.LVL31>:
  5e:	000007b7          	lui	a5,0x0
  62:	00078023          	sb	zero,0(a5) # 0 <pmkCacheInit>

00000066 <.LBB74>:
  66:	12092583          	lw	a1,288(s2)

0000006a <.LBE74>:
  6a:	40b2                	lw	ra,12(sp)
  6c:	4902                	lw	s2,0(sp)
  6e:	0285d5b3          	divu	a1,a1,s0
  72:	4422                	lw	s0,8(sp)
  74:	00048613          	mv	a2,s1
  78:	4492                	lw	s1,4(sp)
  7a:	00000537          	lui	a0,0x0
  7e:	00050513          	mv	a0,a0
  82:	0141                	addi	sp,sp,16
  84:	00000317          	auipc	t1,0x0
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
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
  22:	00048613          	mv	a2,s1
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LBE82+0x18>

00000032 <.LVL33>:
  32:	00000537          	lui	a0,0x0
  36:	08600613          	li	a2,134
  3a:	4581                	li	a1,0
  3c:	00050513          	mv	a0,a0
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL33+0xe>

00000048 <.LVL34>:
  48:	000007b7          	lui	a5,0x0
  4c:	00078023          	sb	zero,0(a5) # 0 <pmkCacheFlush>

00000050 <.LBB83>:
  50:	12092583          	lw	a1,288(s2)

00000054 <.LBE83>:
  54:	40b2                	lw	ra,12(sp)
  56:	4902                	lw	s2,0(sp)
  58:	0285d5b3          	divu	a1,a1,s0
  5c:	4422                	lw	s0,8(sp)
  5e:	00048613          	mv	a2,s1
  62:	4492                	lw	s1,4(sp)
  64:	00000537          	lui	a0,0x0
  68:	00050513          	mv	a0,a0
  6c:	0141                	addi	sp,sp,16
  6e:	00000317          	auipc	t1,0x0
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
  1a:	0285d5b3          	divu	a1,a1,s0
  1e:	00000537          	lui	a0,0x0
  22:	00048613          	mv	a2,s1
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LBE91+0x18>

00000032 <.LVL36>:
  32:	000007b7          	lui	a5,0x0
  36:	4709                	li	a4,2
  38:	00e7a023          	sw	a4,0(a5) # 0 <pmkCacheRomInit>
  3c:	000007b7          	lui	a5,0x0
  40:	00000737          	lui	a4,0x0
  44:	00078793          	mv	a5,a5
  48:	00f72023          	sw	a5,0(a4) # 0 <pmkCacheRomInit>
  4c:	000007b7          	lui	a5,0x0
  50:	00000737          	lui	a4,0x0
  54:	00078793          	mv	a5,a5
  58:	00f72023          	sw	a5,0(a4) # 0 <pmkCacheRomInit>

0000005c <.LBB92>:
  5c:	12092583          	lw	a1,288(s2)

00000060 <.LBE92>:
  60:	40b2                	lw	ra,12(sp)
  62:	4902                	lw	s2,0(sp)
  64:	0285d5b3          	divu	a1,a1,s0
  68:	4422                	lw	s0,8(sp)
  6a:	00048613          	mv	a2,s1
  6e:	4492                	lw	s1,4(sp)
  70:	00000537          	lui	a0,0x0
  74:	00050513          	mv	a0,a0
  78:	0141                	addi	sp,sp,16
  7a:	00000317          	auipc	t1,0x0
  7e:	00030067          	jr	t1 # 7a <.LBE92+0x1a>
