
at_status.o:     file format elf32-littleriscv


Disassembly of section .text.at_status:

00000000 <at_status>:
   0:	000007b7          	lui	a5,0x0
   4:	ac010113          	addi	sp,sp,-1344
   8:	00078793          	mv	a5,a5
   c:	c43e                	sw	a5,8(sp)
   e:	000007b7          	lui	a5,0x0
  12:	0007a783          	lw	a5,0(a5) # 0 <at_status>
  16:	53312623          	sw	s3,1324(sp)
  1a:	52112e23          	sw	ra,1340(sp)
  1e:	52812c23          	sw	s0,1336(sp)
  22:	52912a23          	sw	s1,1332(sp)
  26:	53212823          	sw	s2,1328(sp)
  2a:	53412423          	sw	s4,1320(sp)
  2e:	53512223          	sw	s5,1316(sp)
  32:	89aa                	mv	s3,a0
  34:	c789                	beqz	a5,3e <.L2>
  36:	4601                	li	a2,0
  38:	004c                	addi	a1,sp,4
  3a:	4515                	li	a0,5

0000003c <.LVL1>:
  3c:	9782                	jalr	a5

0000003e <.L2>:
  3e:	00000437          	lui	s0,0x0
  42:	00040913          	mv	s2,s0
  46:	00040413          	mv	s0,s0
  4a:	06099b63          	bnez	s3,c0 <.L3>
  4e:	08c40913          	addi	s2,s0,140 # 8c <.LVL6>
  52:	000004b7          	lui	s1,0x0
  56:	000009b7          	lui	s3,0x0

0000005a <.L4>:
  5a:	4454                	lw	a3,12(s0)
  5c:	4410                	lw	a2,8(s0)
  5e:	00444583          	lbu	a1,4(s0)
  62:	1208                	addi	a0,sp,288
  64:	0451                	addi	s0,s0,20
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.L4+0xc>

0000006e <.LVL4>:
  6e:	00048513          	mv	a0,s1
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL4+0x4>

0000007a <.LVL5>:
  7a:	fec42583          	lw	a1,-20(s0)
  7e:	1210                	addi	a2,sp,288
  80:	00098513          	mv	a0,s3
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL5+0xa>

0000008c <.LVL6>:
  8c:	00048513          	mv	a0,s1
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL6+0x4>

00000098 <.LVL7>:
  98:	fd2411e3          	bne	s0,s2,5a <.L4>

0000009c <.L14>:
  9c:	4501                	li	a0,0

0000009e <.L5>:
  9e:	53c12083          	lw	ra,1340(sp)
  a2:	53812403          	lw	s0,1336(sp)
  a6:	53412483          	lw	s1,1332(sp)
  aa:	53012903          	lw	s2,1328(sp)
  ae:	52c12983          	lw	s3,1324(sp)
  b2:	52812a03          	lw	s4,1320(sp)
  b6:	52412a83          	lw	s5,1316(sp)
  ba:	54010113          	addi	sp,sp,1344
  be:	8082                	ret

000000c0 <.L3>:
  c0:	4481                	li	s1,0
  c2:	4a9d                	li	s5,7

000000c4 <.L7>:
  c4:	00042a03          	lw	s4,0(s0)
  c8:	854e                	mv	a0,s3
  ca:	85d2                	mv	a1,s4
  cc:	00000097          	auipc	ra,0x0
  d0:	000080e7          	jalr	ra # cc <.L7+0x8>

000000d4 <.LVL10>:
  d4:	e539                	bnez	a0,122 <.L6>
  d6:	47d1                	li	a5,20
  d8:	02f484b3          	mul	s1,s1,a5

000000dc <.LVL11>:
  dc:	1208                	addi	a0,sp,288
  de:	00000437          	lui	s0,0x0
  e2:	94ca                	add	s1,s1,s2
  e4:	44d4                	lw	a3,12(s1)
  e6:	4490                	lw	a2,8(s1)
  e8:	0044c583          	lbu	a1,4(s1) # 4 <at_status+0x4>
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL11+0x10>

000000f4 <.LVL12>:
  f4:	00040513          	mv	a0,s0
  f8:	00000097          	auipc	ra,0x0
  fc:	000080e7          	jalr	ra # f8 <.LVL12+0x4>

00000100 <.LVL13>:
 100:	00000537          	lui	a0,0x0
 104:	1210                	addi	a2,sp,288
 106:	85d2                	mv	a1,s4
 108:	00050513          	mv	a0,a0
 10c:	00000097          	auipc	ra,0x0
 110:	000080e7          	jalr	ra # 10c <.LVL13+0xc>

00000114 <.LVL14>:
 114:	00040513          	mv	a0,s0
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.LVL14+0x4>

00000120 <.LVL15>:
 120:	bfb5                	j	9c <.L14>

00000122 <.L6>:
 122:	0485                	addi	s1,s1,1
 124:	0451                	addi	s0,s0,20
 126:	f9549fe3          	bne	s1,s5,c4 <.L7>
 12a:	451d                	li	a0,7
 12c:	bf8d                	j	9e <.L5>

Disassembly of section .text.at_setsts:

00000000 <at_setsts>:
   0:	47a1                	li	a5,8
   2:	c92d                	beqz	a0,74 <.L23>
   4:	c9a5                	beqz	a1,74 <.L23>
   6:	7179                	addi	sp,sp,-48
   8:	000007b7          	lui	a5,0x0
   c:	d422                	sw	s0,40(sp)
   e:	d226                	sw	s1,36(sp)
  10:	d04a                	sw	s2,32(sp)
  12:	ce4e                	sw	s3,28(sp)
  14:	cc52                	sw	s4,24(sp)
  16:	d606                	sw	ra,44(sp)
  18:	86ae                	mv	a3,a1
  1a:	892a                	mv	s2,a0
  1c:	00078993          	mv	s3,a5
  20:	4481                	li	s1,0
  22:	00078413          	mv	s0,a5
  26:	4a1d                	li	s4,7

00000028 <.L18>:
  28:	0009a583          	lw	a1,0(s3) # 0 <at_setsts>
  2c:	854a                	mv	a0,s2
  2e:	c636                	sw	a3,12(sp)

00000030 <.LVL20>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL20>

00000038 <.LVL21>:
  38:	46b2                	lw	a3,12(sp)
  3a:	e51d                	bnez	a0,68 <.L17>
  3c:	47d1                	li	a5,20
  3e:	02f487b3          	mul	a5,s1,a5
  42:	97a2                	add	a5,a5,s0
  44:	47d0                	lw	a2,12(a5)
  46:	478c                	lw	a1,8(a5)
  48:	0047c503          	lbu	a0,4(a5) # 4 <at_setsts+0x4>
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL21+0x14>

00000054 <.LVL22>:
  54:	4781                	li	a5,0

00000056 <.L16>:
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)
  5a:	5492                	lw	s1,36(sp)

0000005c <.LVL23>:
  5c:	5902                	lw	s2,32(sp)

0000005e <.LVL24>:
  5e:	49f2                	lw	s3,28(sp)
  60:	4a62                	lw	s4,24(sp)
  62:	853e                	mv	a0,a5
  64:	6145                	addi	sp,sp,48
  66:	8082                	ret

00000068 <.L17>:
  68:	0485                	addi	s1,s1,1
  6a:	09d1                	addi	s3,s3,20
  6c:	fb449ee3          	bne	s1,s4,28 <.L18>
  70:	479d                	li	a5,7
  72:	b7d5                	j	56 <.L16>

00000074 <.L23>:
  74:	853e                	mv	a0,a5

00000076 <.LVL28>:
  76:	8082                	ret

Disassembly of section .text.at_peer:

00000000 <at_peer>:
   0:	4521                	li	a0,8

00000002 <.LVL30>:
   2:	10058a63          	beqz	a1,116 <.L36>
   6:	be010113          	addi	sp,sp,-1056
   a:	40812c23          	sw	s0,1048(sp)
   e:	41212823          	sw	s2,1040(sp)
  12:	00000437          	lui	s0,0x0
  16:	41312623          	sw	s3,1036(sp)
  1a:	40112e23          	sw	ra,1052(sp)
  1e:	40912a23          	sw	s1,1044(sp)
  22:	41412423          	sw	s4,1032(sp)
  26:	41512223          	sw	s5,1028(sp)
  2a:	00040913          	mv	s2,s0
  2e:	89b2                	mv	s3,a2
  30:	00040413          	mv	s0,s0
  34:	ea35                	bnez	a2,a8 <.L28>
  36:	1b840913          	addi	s2,s0,440 # 1b8 <.LASF148+0x3>
  3a:	000004b7          	lui	s1,0x0
  3e:	000009b7          	lui	s3,0x0

00000042 <.L29>:
  42:	4454                	lw	a3,12(s0)
  44:	4410                	lw	a2,8(s0)
  46:	00444583          	lbu	a1,4(s0)
  4a:	850a                	mv	a0,sp
  4c:	0451                	addi	s0,s0,20
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L29+0xc>

00000056 <.LVL32>:
  56:	00048513          	mv	a0,s1
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL32+0x4>

00000062 <.LVL33>:
  62:	fec42583          	lw	a1,-20(s0)
  66:	860a                	mv	a2,sp
  68:	00098513          	mv	a0,s3
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL33+0xa>

00000074 <.LVL34>:
  74:	00048513          	mv	a0,s1
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL34+0x4>

00000080 <.LVL35>:
  80:	fd2411e3          	bne	s0,s2,42 <.L29>

00000084 <.L39>:
  84:	4501                	li	a0,0

00000086 <.L27>:
  86:	41c12083          	lw	ra,1052(sp)
  8a:	41812403          	lw	s0,1048(sp)
  8e:	41412483          	lw	s1,1044(sp)
  92:	41012903          	lw	s2,1040(sp)
  96:	40c12983          	lw	s3,1036(sp)
  9a:	40812a03          	lw	s4,1032(sp)
  9e:	40412a83          	lw	s5,1028(sp)
  a2:	42010113          	addi	sp,sp,1056
  a6:	8082                	ret

000000a8 <.L28>:
  a8:	4481                	li	s1,0
  aa:	4ad9                	li	s5,22

000000ac <.L31>:
  ac:	00042a03          	lw	s4,0(s0)
  b0:	854e                	mv	a0,s3
  b2:	85d2                	mv	a1,s4
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.L31+0x8>

000000bc <.LVL38>:
  bc:	e539                	bnez	a0,10a <.L30>
  be:	47d1                	li	a5,20
  c0:	02f484b3          	mul	s1,s1,a5

000000c4 <.LVL39>:
  c4:	850a                	mv	a0,sp
  c6:	00000437          	lui	s0,0x0
  ca:	94ca                	add	s1,s1,s2
  cc:	44d4                	lw	a3,12(s1)
  ce:	4490                	lw	a2,8(s1)
  d0:	0044c583          	lbu	a1,4(s1) # 4 <.LVL30+0x2>
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.LVL39+0x10>

000000dc <.LVL40>:
  dc:	00040513          	mv	a0,s0
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.LVL40+0x4>

000000e8 <.LVL41>:
  e8:	00000537          	lui	a0,0x0
  ec:	860a                	mv	a2,sp
  ee:	85d2                	mv	a1,s4
  f0:	00050513          	mv	a0,a0
  f4:	00000097          	auipc	ra,0x0
  f8:	000080e7          	jalr	ra # f4 <.LVL41+0xc>

000000fc <.LVL42>:
  fc:	00040513          	mv	a0,s0
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.LVL42+0x4>

00000108 <.LVL43>:
 108:	bfb5                	j	84 <.L39>

0000010a <.L30>:
 10a:	0485                	addi	s1,s1,1
 10c:	0451                	addi	s0,s0,20
 10e:	f9549fe3          	bne	s1,s5,ac <.L31>
 112:	451d                	li	a0,7
 114:	bf8d                	j	86 <.L27>

00000116 <.L36>:
 116:	8082                	ret
