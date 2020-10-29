
txl_buffer.o:     file format elf32-littleriscv


Disassembly of section .text.txl_buffer_reinit:

00000000 <txl_buffer_reinit>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	0a07aa23          	sw	zero,180(a5) # b4 <.LASF562>
   c:	0a07ac23          	sw	zero,184(a5)
  10:	8082                	ret

Disassembly of section .text.txl_buffer_init:

00000000 <txl_buffer_init>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	00000437          	lui	s0,0x0
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	00040413          	mv	s0,s0

00000012 <.LBB16>:
  12:	badcba37          	lui	s4,0xbadcb
  16:	79c1                	lui	s3,0xffff0
  18:	6909                	lui	s2,0x2

0000001a <.LBE16>:
  1a:	d226                	sw	s1,36(sp)
  1c:	ca56                	sw	s5,20(sp)
  1e:	c85a                	sw	s6,16(sp)
  20:	c65e                	sw	s7,12(sp)
  22:	d606                	sw	ra,44(sp)
  24:	25840a93          	addi	s5,s0,600 # 258 <.LASF280+0x1>
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LBE16+0xe>

00000030 <.LBB27>:
  30:	b1ea0a13          	addi	s4,s4,-1250 # badcab1e <.LASF356+0xbadc8fa0>
  34:	4b85                	li	s7,1
  36:	70498993          	addi	s3,s3,1796 # ffff0704 <.LASF356+0xfffeeb86>

0000003a <.LBB17>:
  3a:	44b004b7          	lui	s1,0x44b00

0000003e <.LBE17>:
  3e:	20090913          	addi	s2,s2,512 # 2200 <.LASF356+0x682>
  42:	003f0b37          	lui	s6,0x3f0

00000046 <.L3>:
  46:	01442023          	sw	s4,0(s0)
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L3+0x4>

00000052 <.LVL2>:
  52:	053a                	slli	a0,a0,0xe
  54:	c048                	sw	a0,4(s0)
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL2+0x4>

0000005e <.LVL3>:
  5e:	0505                	addi	a0,a0,1
  60:	00ab9533          	sll	a0,s7,a0
  64:	157d                	addi	a0,a0,-1
  66:	c408                	sw	a0,8(s0)
  68:	00042623          	sw	zero,12(s0)
  6c:	01342823          	sw	s3,16(s0)
  70:	00042a23          	sw	zero,20(s0)
  74:	00042c23          	sw	zero,24(s0)
  78:	00042e23          	sw	zero,28(s0)
  7c:	02042023          	sw	zero,32(s0)

00000080 <.LBB20>:
  80:	0a04a783          	lw	a5,160(s1) # 44b000a0 <.LASF356+0x44afe522>
  84:	03c40413          	addi	s0,s0,60

00000088 <.LBE20>:
  88:	0ff7f793          	andi	a5,a5,255
  8c:	fef42423          	sw	a5,-24(s0)

00000090 <.LBB21>:
  90:	0a04a783          	lw	a5,160(s1)

00000094 <.LBE21>:
  94:	0ff7f793          	andi	a5,a5,255
  98:	fef42623          	sw	a5,-20(s0)

0000009c <.LBB23>:
  9c:	0a04a783          	lw	a5,160(s1)

000000a0 <.LBE23>:
  a0:	0ff7f793          	andi	a5,a5,255
  a4:	fef42823          	sw	a5,-16(s0)

000000a8 <.LBB25>:
  a8:	0a04a783          	lw	a5,160(s1)

000000ac <.LBE25>:
  ac:	ff242c23          	sw	s2,-8(s0)
  b0:	ff642e23          	sw	s6,-4(s0)
  b4:	0ff7f793          	andi	a5,a5,255
  b8:	fef42a23          	sw	a5,-12(s0)

000000bc <.LBE27>:
  bc:	f95415e3          	bne	s0,s5,46 <.L3>
  c0:	00000437          	lui	s0,0x0
  c4:	00040413          	mv	s0,s0

000000c8 <.LBB28>:
  c8:	badcb937          	lui	s2,0xbadcb
  cc:	74c1                	lui	s1,0xffff0
  ce:	07840993          	addi	s3,s0,120 # 78 <.LVL3+0x1a>
  d2:	b1e90913          	addi	s2,s2,-1250 # badcab1e <.LASF356+0xbadc8fa0>
  d6:	4b05                	li	s6,1
  d8:	70448493          	addi	s1,s1,1796 # ffff0704 <.LASF356+0xfffeeb86>

000000dc <.LBB29>:
  dc:	44b00ab7          	lui	s5,0x44b00

000000e0 <.LBE29>:
  e0:	003f0a37          	lui	s4,0x3f0

000000e4 <.L4>:
  e4:	01242023          	sw	s2,0(s0)
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.L4+0x4>

000000f0 <.LVL9>:
  f0:	053a                	slli	a0,a0,0xe
  f2:	c048                	sw	a0,4(s0)
  f4:	00000097          	auipc	ra,0x0
  f8:	000080e7          	jalr	ra # f4 <.LVL9+0x4>

000000fc <.LVL10>:
  fc:	0505                	addi	a0,a0,1
  fe:	00ab1533          	sll	a0,s6,a0
 102:	157d                	addi	a0,a0,-1
 104:	c408                	sw	a0,8(s0)
 106:	00042623          	sw	zero,12(s0)
 10a:	c804                	sw	s1,16(s0)
 10c:	00042a23          	sw	zero,20(s0)
 110:	00042c23          	sw	zero,24(s0)
 114:	00042e23          	sw	zero,28(s0)
 118:	02042023          	sw	zero,32(s0)

0000011c <.LBB32>:
 11c:	0a0aa783          	lw	a5,160(s5) # 44b000a0 <.LASF356+0x44afe522>
 120:	03c40413          	addi	s0,s0,60

00000124 <.LBE32>:
 124:	fe042623          	sw	zero,-20(s0)
 128:	0ff7f793          	andi	a5,a5,255
 12c:	fef42423          	sw	a5,-24(s0)
 130:	fe042823          	sw	zero,-16(s0)
 134:	fe042a23          	sw	zero,-12(s0)
 138:	fe042c23          	sw	zero,-8(s0)
 13c:	ff442e23          	sw	s4,-4(s0)

00000140 <.LBE28>:
 140:	fb3412e3          	bne	s0,s3,e4 <.L4>
 144:	50b2                	lw	ra,44(sp)
 146:	5422                	lw	s0,40(sp)
 148:	5492                	lw	s1,36(sp)
 14a:	5902                	lw	s2,32(sp)
 14c:	49f2                	lw	s3,28(sp)
 14e:	4a62                	lw	s4,24(sp)
 150:	4ad2                	lw	s5,20(sp)
 152:	4b42                	lw	s6,16(sp)
 154:	4bb2                	lw	s7,12(sp)
 156:	6145                	addi	sp,sp,48
 158:	8082                	ret

Disassembly of section .text.txl_buffer_reset:

00000000 <txl_buffer_reset>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	0a07aa23          	sw	zero,180(a5) # b4 <.LASF562>
   c:	0a07ac23          	sw	zero,184(a5)
  10:	8082                	ret

Disassembly of section .text.txl_buffer_alloc:

00000000 <txl_buffer_alloc>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	05e54703          	lbu	a4,94(a0)
   c:	1ac50c23          	sb	a2,440(a0)
  10:	842a                	mv	s0,a0

00000012 <.LBB39>:
  12:	00f70793          	addi	a5,a4,15
  16:	9bc1                	andi	a5,a5,-16
  18:	8f99                	sub	a5,a5,a4
  1a:	0cf52a23          	sw	a5,212(a0)
  1e:	caff07b7          	lui	a5,0xcaff0
  22:	ade78793          	addi	a5,a5,-1314 # cafefade <.LASF356+0xcafedf60>
  26:	10f52223          	sw	a5,260(a0)
  2a:	03255783          	lhu	a5,50(a0)
  2e:	0ce52823          	sw	a4,208(a0)

00000032 <.LBE39>:
  32:	0cc50493          	addi	s1,a0,204

00000036 <.LBB51>:
  36:	8ba1                	andi	a5,a5,8
  38:	eb81                	bnez	a5,48 <.L10>
  3a:	21850593          	addi	a1,a0,536

0000003e <.LVL14>:
  3e:	95ba                	add	a1,a1,a4
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL14+0x2>

00000048 <.L10>:
  48:	486c                	lw	a1,84(s0)

0000004a <.LBB41>:
  4a:	4781                	li	a5,0

0000004c <.LBB44>:
  4c:	03c00713          	li	a4,60

00000050 <.L11>:
  50:	00f586b3          	add	a3,a1,a5
  54:	4290                	lw	a2,0(a3)
  56:	00f406b3          	add	a3,s0,a5
  5a:	0791                	addi	a5,a5,4

0000005c <.LVL18>:
  5c:	1ac6ae23          	sw	a2,444(a3)
  60:	fee798e3          	bne	a5,a4,50 <.L11>

00000064 <.LBB45>:
  64:	000007b7          	lui	a5,0x0
  68:	00078713          	mv	a4,a5
  6c:	0b472703          	lw	a4,180(a4)
  70:	00078793          	mv	a5,a5
  74:	ef09                	bnez	a4,8e <.L12>
  76:	0a97aa23          	sw	s1,180(a5) # b4 <.LASF562>

0000007a <.L13>:
  7a:	0a97ac23          	sw	s1,184(a5)
  7e:	0c042e23          	sw	zero,220(s0)

00000082 <.LBE45>:
  82:	40b2                	lw	ra,12(sp)
  84:	4422                	lw	s0,8(sp)

00000086 <.LVL21>:
  86:	8526                	mv	a0,s1
  88:	4492                	lw	s1,4(sp)

0000008a <.LVL22>:
  8a:	0141                	addi	sp,sp,16
  8c:	8082                	ret

0000008e <.L12>:
  8e:	0b87a703          	lw	a4,184(a5)
  92:	cb04                	sw	s1,16(a4)
  94:	b7dd                	j	7a <.L13>

Disassembly of section .text.txl_buffer_update_thd:

00000000 <txl_buffer_update_thd>:
   0:	553c                	lw	a5,104(a0)
   2:	caff0837          	lui	a6,0xcaff0
   6:	06c52883          	lw	a7,108(a0)

0000000a <.LVL25>:
   a:	04c78713          	addi	a4,a5,76

0000000e <.LVL26>:
   e:	03450513          	addi	a0,a0,52

00000012 <.LVL27>:
  12:	4581                	li	a1,0
  14:	833a                	mv	t1,a4
  16:	ade80813          	addi	a6,a6,-1314 # cafefade <.LASF356+0xcafedf60>

0000001a <.L17>:
  1a:	4114                	lw	a3,0(a0)
  1c:	e28d                	bnez	a3,3e <.L18>
  1e:	e1b9                	bnez	a1,64 <.L19>
  20:	000005b7          	lui	a1,0x0

00000024 <.LVL29>:
  24:	00000537          	lui	a0,0x0
  28:	1141                	addi	sp,sp,-16
  2a:	00058593          	mv	a1,a1
  2e:	00050513          	mv	a0,a0
  32:	c606                	sw	ra,12(sp)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL29+0x10>

0000003c <.L20>:
  3c:	a001                	j	3c <.L20>

0000003e <.L18>:
  3e:	01072023          	sw	a6,0(a4)
  42:	4114                	lw	a3,0(a0)
  44:	863a                	mv	a2,a4
  46:	0751                	addi	a4,a4,20
  48:	fed72a23          	sw	a3,-12(a4)
  4c:	01052e03          	lw	t3,16(a0) # 10 <.LVL26+0x2>
  50:	fe072e23          	sw	zero,-4(a4)
  54:	0585                	addi	a1,a1,1

00000056 <.LVL33>:
  56:	96f2                	add	a3,a3,t3
  58:	16fd                	addi	a3,a3,-1
  5a:	fed72c23          	sw	a3,-8(a4)
  5e:	c258                	sw	a4,4(a2)

00000060 <.LVL34>:
  60:	0511                	addi	a0,a0,4
  62:	bf65                	j	1a <.L17>

00000064 <.L19>:
  64:	43d8                	lw	a4,4(a5)
  66:	14c78593          	addi	a1,a5,332

0000006a <.LVL35>:
  6a:	caff06b7          	lui	a3,0xcaff0
  6e:	177d                	addi	a4,a4,-1
  70:	ade68693          	addi	a3,a3,-1314 # cafefade <.LASF356+0xcafedf60>
  74:	972e                	add	a4,a4,a1
  76:	df94                	sw	a3,56(a5)
  78:	c3ac                	sw	a1,64(a5)
  7a:	c3f8                	sw	a4,68(a5)
  7c:	0267ae23          	sw	t1,60(a5)
  80:	0407a423          	sw	zero,72(a5)
  84:	03878793          	addi	a5,a5,56

00000088 <.LVL36>:
  88:	00f8a823          	sw	a5,16(a7)
  8c:	00062823          	sw	zero,16(a2)
  90:	10000793          	li	a5,256

00000094 <.LVL37>:
  94:	02f8ae23          	sw	a5,60(a7)
  98:	00062223          	sw	zero,4(a2)
  9c:	8082                	ret
