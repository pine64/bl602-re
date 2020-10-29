
bl_md5_wrapper.o:     file format elf32-littleriscv


Disassembly of section .text.Bl_hmac_md5:

00000000 <Bl_hmac_md5>:
   0:	db010113          	addi	sp,sp,-592

00000004 <.LVL1>:
   4:	24912223          	sw	s1,580(sp)
   8:	23312e23          	sw	s3,572(sp)
   c:	23412c23          	sw	s4,568(sp)
  10:	23512a23          	sw	s5,564(sp)
  14:	23612823          	sw	s6,560(sp)
  18:	24112623          	sw	ra,588(sp)
  1c:	24812423          	sw	s0,584(sp)
  20:	25212023          	sw	s2,576(sp)
  24:	04000793          	li	a5,64
  28:	8aaa                	mv	s5,a0
  2a:	8b2e                	mv	s6,a1
  2c:	84b2                	mv	s1,a2
  2e:	89b6                	mv	s3,a3
  30:	8a3a                	mv	s4,a4
  32:	02d7d663          	bge	a5,a3,5e <.L2>

00000036 <.LBB2>:
  36:	0028                	addi	a0,sp,8

00000038 <.LVL2>:
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL2>

00000040 <.LVL3>:
  40:	864e                	mv	a2,s3
  42:	85a6                	mv	a1,s1
  44:	0028                	addi	a0,sp,8
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL3+0x6>

0000004e <.LVL4>:
  4e:	002c                	addi	a1,sp,8
  50:	1a28                	addi	a0,sp,312
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL4+0x4>

0000005a <.LVL5>:
  5a:	49c1                	li	s3,16
  5c:	1a24                	addi	s1,sp,312

0000005e <.L2>:
  5e:	04000613          	li	a2,64
  62:	4581                	li	a1,0
  64:	1108                	addi	a0,sp,160

00000066 <.LVL7>:
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL7>

0000006e <.LVL8>:
  6e:	864e                	mv	a2,s3
  70:	85a6                	mv	a1,s1
  72:	1108                	addi	a0,sp,160

00000074 <.LVL9>:
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.LVL9>

0000007c <.LVL10>:
  7c:	1100                	addi	s0,sp,160

0000007e <.LVL11>:
  7e:	363636b7          	lui	a3,0x36363
  82:	0e010913          	addi	s2,sp,224

00000086 <.LVL12>:
  86:	87a2                	mv	a5,s0
  88:	63668693          	addi	a3,a3,1590 # 36363636 <.LASF56+0x36362ec4>

0000008c <.L3>:
  8c:	4398                	lw	a4,0(a5)
  8e:	0791                	addi	a5,a5,4
  90:	8f35                	xor	a4,a4,a3
  92:	fee7ae23          	sw	a4,-4(a5)
  96:	ff279be3          	bne	a5,s2,8c <.L3>
  9a:	854a                	mv	a0,s2
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.L3+0x10>

000000a4 <.LVL14>:
  a4:	04000613          	li	a2,64
  a8:	110c                	addi	a1,sp,160
  aa:	854a                	mv	a0,s2
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL14+0x8>

000000b4 <.LVL15>:
  b4:	865a                	mv	a2,s6
  b6:	85d6                	mv	a1,s5
  b8:	854a                	mv	a0,s2
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.LVL15+0x6>

000000c2 <.LVL16>:
  c2:	85ca                	mv	a1,s2
  c4:	8552                	mv	a0,s4
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL16+0x4>

000000ce <.LVL17>:
  ce:	04000613          	li	a2,64
  d2:	4581                	li	a1,0
  d4:	1108                	addi	a0,sp,160
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL17+0x8>

000000de <.LVL18>:
  de:	864e                	mv	a2,s3
  e0:	85a6                	mv	a1,s1
  e2:	1108                	addi	a0,sp,160
  e4:	00000097          	auipc	ra,0x0
  e8:	000080e7          	jalr	ra # e4 <.LVL18+0x6>

000000ec <.LVL19>:
  ec:	5c5c6737          	lui	a4,0x5c5c6
  f0:	c5c70713          	addi	a4,a4,-932 # 5c5c5c5c <.LASF56+0x5c5c54ea>

000000f4 <.L4>:
  f4:	401c                	lw	a5,0(s0)
  f6:	0411                	addi	s0,s0,4
  f8:	8fb9                	xor	a5,a5,a4
  fa:	fef42e23          	sw	a5,-4(s0)
  fe:	ff241be3          	bne	s0,s2,f4 <.L4>
 102:	8522                	mv	a0,s0
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.L4+0x10>

0000010c <.LVL21>:
 10c:	110c                	addi	a1,sp,160

0000010e <.LVL22>:
 10e:	8522                	mv	a0,s0
 110:	04000613          	li	a2,64
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.LVL22+0x6>

0000011c <.LVL23>:
 11c:	85d2                	mv	a1,s4
 11e:	8522                	mv	a0,s0
 120:	4641                	li	a2,16
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.LVL23+0x6>

0000012a <.LVL24>:
 12a:	85a2                	mv	a1,s0
 12c:	8552                	mv	a0,s4
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.LVL24+0x4>

00000136 <.LVL25>:
 136:	24c12083          	lw	ra,588(sp)
 13a:	24812403          	lw	s0,584(sp)
 13e:	24412483          	lw	s1,580(sp)

00000142 <.LVL26>:
 142:	24012903          	lw	s2,576(sp)

00000146 <.LVL27>:
 146:	23c12983          	lw	s3,572(sp)

0000014a <.LVL28>:
 14a:	23812a03          	lw	s4,568(sp)

0000014e <.LVL29>:
 14e:	23412a83          	lw	s5,564(sp)

00000152 <.LVL30>:
 152:	23012b03          	lw	s6,560(sp)

00000156 <.LVL31>:
 156:	25010113          	addi	sp,sp,592

0000015a <.LVL32>:
 15a:	8082                	ret
