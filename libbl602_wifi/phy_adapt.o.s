
phy_adapt.o:     file format elf32-littleriscv


Disassembly of section .text.pa_init:

00000000 <pa_init>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	23078613          	addi	a2,a5,560 # 230 <.LASF170>

0000000c <.L3>:
   c:	060789a3          	sb	zero,115(a5)
  10:	0607ac23          	sw	zero,120(a5)
  14:	0607a623          	sw	zero,108(a5)
  18:	06078423          	sb	zero,104(a5)
  1c:	080783a3          	sb	zero,135(a5)
  20:	0807a023          	sw	zero,128(a5)
  24:	08078423          	sb	zero,136(a5)
  28:	080784a3          	sb	zero,137(a5)

0000002c <.LVL2>:
  2c:	873e                	mv	a4,a5
  2e:	46a1                	li	a3,8

00000030 <.L2>:
  30:	00070823          	sb	zero,16(a4)
  34:	00070423          	sb	zero,8(a4)
  38:	000704a3          	sb	zero,9(a4)
  3c:	00072623          	sw	zero,12(a4)

00000040 <.LVL4>:
  40:	16fd                	addi	a3,a3,-1

00000042 <.LVL5>:
  42:	0731                	addi	a4,a4,12
  44:	f6f5                	bnez	a3,30 <.L2>
  46:	08c78793          	addi	a5,a5,140
  4a:	fcc791e3          	bne	a5,a2,c <.L3>
  4e:	8082                	ret

Disassembly of section .text.pa_alloc:

00000000 <pa_alloc>:
   0:	00000737          	lui	a4,0x0
   4:	00070693          	mv	a3,a4
   8:	4781                	li	a5,0
   a:	00070713          	mv	a4,a4
   e:	4611                	li	a2,4

00000010 <.L9>:
  10:	0006c583          	lbu	a1,0(a3)
  14:	ed91                	bnez	a1,30 <.L7>
  16:	08c00693          	li	a3,140
  1a:	02d786b3          	mul	a3,a5,a3
  1e:	9736                	add	a4,a4,a3
  20:	c348                	sw	a0,4(a4)
  22:	4685                	li	a3,1
  24:	01879513          	slli	a0,a5,0x18

00000028 <.LVL8>:
  28:	00d70023          	sb	a3,0(a4) # 0 <pa_alloc>
  2c:	8561                	srai	a0,a0,0x18
  2e:	8082                	ret

00000030 <.L7>:
  30:	0785                	addi	a5,a5,1

00000032 <.LVL10>:
  32:	08c68693          	addi	a3,a3,140
  36:	fcc79de3          	bne	a5,a2,10 <.L9>
  3a:	557d                	li	a0,-1

0000003c <.LVL11>:
  3c:	8082                	ret

Disassembly of section .text.pa_free:

00000000 <pa_free>:
   0:	478d                	li	a5,3
   2:	00a7ef63          	bltu	a5,a0,20 <.L11>
   6:	08c00793          	li	a5,140
   a:	02f507b3          	mul	a5,a0,a5
   e:	00000537          	lui	a0,0x0

00000012 <.LVL13>:
  12:	00050513          	mv	a0,a0
  16:	953e                	add	a0,a0,a5
  18:	00050023          	sb	zero,0(a0) # 0 <pa_free>
  1c:	00052223          	sw	zero,4(a0)

00000020 <.L11>:
  20:	8082                	ret

Disassembly of section .text.pa_reset:

00000000 <pa_reset>:
   0:	8082                	ret

Disassembly of section .text.pa_input:

00000000 <pa_input>:
   0:	460d                	li	a2,3
   2:	10a66b63          	bltu	a2,a0,118 <.L21>
   6:	1141                	addi	sp,sp,-16
   8:	c422                	sw	s0,8(sp)
   a:	08c00713          	li	a4,140
   e:	842a                	mv	s0,a0

00000010 <.LVL16>:
  10:	02e406b3          	mul	a3,s0,a4
  14:	c226                	sw	s1,4(sp)
  16:	000004b7          	lui	s1,0x0
  1a:	c606                	sw	ra,12(sp)
  1c:	c04a                	sw	s2,0(sp)
  1e:	00048793          	mv	a5,s1
  22:	5188                	lw	a0,32(a1)

00000024 <.LVL17>:
  24:	00048493          	mv	s1,s1
  28:	00d78733          	add	a4,a5,a3
  2c:	06870903          	lb	s2,104(a4)
  30:	d768                	sw	a0,108(a4)
  32:	4731                	li	a4,12
  34:	02e90733          	mul	a4,s2,a4
  38:	9736                	add	a4,a4,a3
  3a:	97ba                	add	a5,a5,a4
  3c:	4705                	li	a4,1
  3e:	00e78823          	sb	a4,16(a5)
  42:	03358703          	lb	a4,51(a1)
  46:	00e78423          	sb	a4,8(a5)
  4a:	59d8                	lw	a4,52(a1)
  4c:	0752                	slli	a4,a4,0x14
  4e:	8771                	srai	a4,a4,0x1c
  50:	00e784a3          	sb	a4,9(a5)

00000054 <.LBB14>:
  54:	55d8                	lw	a4,44(a1)
  56:	000707b7          	lui	a5,0x70
  5a:	8ff9                	and	a5,a5,a4
  5c:	ebbd                	bnez	a5,d2 <.L16>
  5e:	559c                	lw	a5,40(a1)
  60:	03b5c503          	lbu	a0,59(a1)
  64:	83b1                	srli	a5,a5,0xc
  66:	8bbd                	andi	a5,a5,15
  68:	06f66563          	bltu	a2,a5,d2 <.L16>

0000006c <.LBB16>:
  6c:	0562                	slli	a0,a0,0x18

0000006e <.LVL20>:
  6e:	8561                	srai	a0,a0,0x18
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL20+0x2>

00000078 <.LVL21>:
  78:	000007b7          	lui	a5,0x0
  7c:	0007a603          	lw	a2,0(a5) # 0 <pa_input>
  80:	0047a683          	lw	a3,4(a5)
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL21+0xc>

0000008c <.L24>:
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.L24>

00000094 <.LBE14>:
  94:	47b1                	li	a5,12
  96:	08c00713          	li	a4,140
  9a:	02e40733          	mul	a4,s0,a4
  9e:	02f907b3          	mul	a5,s2,a5
  a2:	97ba                	add	a5,a5,a4
  a4:	97a6                	add	a5,a5,s1
  a6:	e7c8                	fsw	fa0,12(a5)
  a8:	471d                	li	a4,7
  aa:	4781                	li	a5,0
  ac:	00e90663          	beq	s2,a4,b8 <.L18>
  b0:	0905                	addi	s2,s2,1
  b2:	01891793          	slli	a5,s2,0x18
  b6:	87e1                	srai	a5,a5,0x18

000000b8 <.L18>:
  b8:	08c00513          	li	a0,140
  bc:	02a40433          	mul	s0,s0,a0

000000c0 <.LVL24>:
  c0:	9426                	add	s0,s0,s1
  c2:	06f40423          	sb	a5,104(s0)
  c6:	40b2                	lw	ra,12(sp)
  c8:	4422                	lw	s0,8(sp)
  ca:	4492                	lw	s1,4(sp)
  cc:	4902                	lw	s2,0(sp)
  ce:	0141                	addi	sp,sp,16
  d0:	8082                	ret

000000d2 <.L16>:
  d2:	03c5c503          	lbu	a0,60(a1)
  d6:	03b5c783          	lbu	a5,59(a1)
  da:	0522                	slli	a0,a0,0x8
  dc:	953e                	add	a0,a0,a5

000000de <.LBB23>:
  de:	0542                	slli	a0,a0,0x10
  e0:	8541                	srai	a0,a0,0x10
  e2:	40a00533          	neg	a0,a0
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LBB23+0x8>

000000ee <.LVL26>:
  ee:	000007b7          	lui	a5,0x0
  f2:	0007a603          	lw	a2,0(a5) # 0 <pa_input>
  f6:	0047a683          	lw	a3,4(a5)
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LVL26+0xc>
 102:	000007b7          	lui	a5,0x0
 106:	0007a603          	lw	a2,0(a5) # 0 <pa_input>
 10a:	0047a683          	lw	a3,4(a5)
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.LVL26+0x20>
 116:	bf9d                	j	8c <.L24>

00000118 <.L21>:
 118:	8082                	ret

Disassembly of section .text.pa_adapt:

00000000 <pa_adapt>:
   0:	478d                	li	a5,3
   2:	2ca7ed63          	bltu	a5,a0,2dc <.L68>
   6:	1101                	addi	sp,sp,-32
   8:	000007b7          	lui	a5,0x0
   c:	cc22                	sw	s0,24(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	ca26                	sw	s1,20(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	c652                	sw	s4,12(sp)
  16:	c456                	sw	s5,8(sp)
  18:	c25a                	sw	s6,4(sp)
  1a:	c05e                	sw	s7,0(sp)
  1c:	00078793          	mv	a5,a5
  20:	4390                	lw	a2,0(a5)
  22:	00000437          	lui	s0,0x0
  26:	00040713          	mv	a4,s0
  2a:	0605                	addi	a2,a2,1
  2c:	c390                	sw	a2,0(a5)

0000002e <.LVL31>:
  2e:	08c00793          	li	a5,140
  32:	02f507b3          	mul	a5,a0,a5
  36:	00040413          	mv	s0,s0
  3a:	973e                	add	a4,a4,a5
  3c:	06870e03          	lb	t3,104(a4)
  40:	1a0e1163          	bnez	t3,1e2 <.L28>
  44:	05c78713          	addi	a4,a5,92 # 5c <.L29+0x12>
  48:	9722                	add	a4,a4,s0

0000004a <.L29>:
  4a:	00874783          	lbu	a5,8(a4)
  4e:	18078063          	beqz	a5,1ce <.L25>
  52:	08c00693          	li	a3,140
  56:	02d506b3          	mul	a3,a0,a3
  5a:	00070903          	lb	s2,0(a4)
  5e:	00d407b3          	add	a5,s0,a3
  62:	07378583          	lb	a1,115(a5)
  66:	1c058263          	beqz	a1,22a <.L31>
  6a:	0747c583          	lbu	a1,116(a5)
  6e:	4691                	li	a3,4
  70:	18b6f363          	bgeu	a3,a1,1f6 <.L32>
  74:	06078a23          	sb	zero,116(a5)

00000078 <.LVL33>:
  78:	060789a3          	sb	zero,115(a5)
  7c:	0607ac23          	sw	zero,120(a5)

00000080 <.L33>:
  80:	8a3d                	andi	a2,a2,15
  82:	47bd                	li	a5,15
  84:	14f61563          	bne	a2,a5,1ce <.L25>
  88:	08c00793          	li	a5,140
  8c:	02f507b3          	mul	a5,a0,a5
  90:	46d1                	li	a3,20
  92:	84aa                	mv	s1,a0
  94:	97a2                	add	a5,a5,s0
  96:	07078783          	lb	a5,112(a5)
  9a:	40f907b3          	sub	a5,s2,a5
  9e:	07a9                	addi	a5,a5,10
  a0:	08f6e163          	bltu	a3,a5,122 <.L39>

000000a4 <.LVL34>:
  a4:	6348                	flw	fa0,4(a4)
  a6:	f00007d3          	fmv.w.x	fa5,zero
  aa:	a0a787d3          	fle.s	a5,fa5,fa0
  ae:	1e078563          	beqz	a5,298 <.L65>
  b2:	000007b7          	lui	a5,0x0
  b6:	0007a787          	flw	fa5,0(a5) # 0 <pa_adapt>
  ba:	a0a797d3          	flt.s	a5,fa5,fa0

000000be <.L42>:
  be:	c3b5                	beqz	a5,122 <.L39>
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L42+0x2>

000000c8 <.LVL35>:
  c8:	fab00793          	li	a5,-85
  cc:	8a2a                	mv	s4,a0
  ce:	8aae                	mv	s5,a1
  d0:	1cf95b63          	bge	s2,a5,2a6 <.L43>
  d4:	08c00913          	li	s2,140

000000d8 <.LVL36>:
  d8:	03248933          	mul	s2,s1,s2
  dc:	9922                	add	s2,s2,s0
  de:	08092507          	flw	fa0,128(s2)
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL36+0xa>
  ea:	000007b7          	lui	a5,0x0
  ee:	0007a603          	lw	a2,0(a5) # 0 <pa_adapt>
  f2:	0047a683          	lw	a3,4(a5)
  f6:	8b2a                	mv	s6,a0
  f8:	8bae                	mv	s7,a1

000000fa <.L71>:
  fa:	8552                	mv	a0,s4
  fc:	85d6                	mv	a1,s5
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.L71+0x4>
 106:	862a                	mv	a2,a0
 108:	86ae                	mv	a3,a1
 10a:	855a                	mv	a0,s6
 10c:	85de                	mv	a1,s7
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.L71+0x14>
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.L71+0x1c>
 11e:	08a92027          	fsw	fa0,128(s2)

00000122 <.L39>:
 122:	08c00793          	li	a5,140
 126:	02f487b3          	mul	a5,s1,a5
 12a:	f0000753          	fmv.w.x	fa4,zero
 12e:	97a2                	add	a5,a5,s0
 130:	0807a787          	flw	fa5,128(a5)
 134:	a0f707d3          	fle.s	a5,fa4,fa5
 138:	18078b63          	beqz	a5,2ce <.L66>
 13c:	000007b7          	lui	a5,0x0
 140:	0007a707          	flw	fa4,0(a5) # 0 <pa_adapt>
 144:	a0e797d3          	flt.s	a5,fa5,fa4

00000148 <.L46>:
 148:	e3d9                	bnez	a5,1ce <.L25>

0000014a <.LBB26>:
 14a:	30047073          	csrci	mstatus,8

0000014e <.LBE26>:
 14e:	08c00793          	li	a5,140
 152:	02f487b3          	mul	a5,s1,a5
 156:	f0000753          	fmv.w.x	fa4,zero
 15a:	97a2                	add	a5,a5,s0
 15c:	0807a787          	flw	fa5,128(a5)
 160:	a0f717d3          	flt.s	a5,fa4,fa5
 164:	cf99                	beqz	a5,182 <.L48>
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.LBE26+0x18>

0000016e <.LVL41>:
 16e:	c911                	beqz	a0,182 <.L48>
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL41+0x2>

00000178 <.LVL42>:
 178:	157d                	addi	a0,a0,-1
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.LVL42+0x2>

00000182 <.L48>:
 182:	08c00793          	li	a5,140
 186:	02f487b3          	mul	a5,s1,a5
 18a:	f0000753          	fmv.w.x	fa4,zero
 18e:	97a2                	add	a5,a5,s0
 190:	0807a787          	flw	fa5,128(a5)
 194:	a0e797d3          	flt.s	a5,fa5,fa4
 198:	c395                	beqz	a5,1bc <.L51>
 19a:	00000097          	auipc	ra,0x0
 19e:	000080e7          	jalr	ra # 19a <.L48+0x18>

000001a2 <.LVL44>:
 1a2:	03e00793          	li	a5,62
 1a6:	00a7eb63          	bltu	a5,a0,1bc <.L51>
 1aa:	00000097          	auipc	ra,0x0
 1ae:	000080e7          	jalr	ra # 1aa <.LVL44+0x8>

000001b2 <.LVL45>:
 1b2:	0505                	addi	a0,a0,1
 1b4:	00000097          	auipc	ra,0x0
 1b8:	000080e7          	jalr	ra # 1b4 <.LVL45+0x2>

000001bc <.L51>:
 1bc:	08c00513          	li	a0,140
 1c0:	02a484b3          	mul	s1,s1,a0

000001c4 <.LVL47>:
 1c4:	9426                	add	s0,s0,s1
 1c6:	08042023          	sw	zero,128(s0) # 80 <.L33>

000001ca <.LBB28>:
 1ca:	30046073          	csrsi	mstatus,8

000001ce <.L25>:
 1ce:	40f2                	lw	ra,28(sp)
 1d0:	4462                	lw	s0,24(sp)
 1d2:	44d2                	lw	s1,20(sp)
 1d4:	4942                	lw	s2,16(sp)
 1d6:	4a32                	lw	s4,12(sp)
 1d8:	4aa2                	lw	s5,8(sp)
 1da:	4b12                	lw	s6,4(sp)
 1dc:	4b82                	lw	s7,0(sp)
 1de:	6105                	addi	sp,sp,32
 1e0:	8082                	ret

000001e2 <.L28>:
 1e2:	fffe0713          	addi	a4,t3,-1
 1e6:	46b1                	li	a3,12
 1e8:	02d70733          	mul	a4,a4,a3
 1ec:	07a1                	addi	a5,a5,8
 1ee:	97ba                	add	a5,a5,a4
 1f0:	00f40733          	add	a4,s0,a5
 1f4:	bd99                	j	4a <.L29>

000001f6 <.L32>:
 1f6:	06490693          	addi	a3,s2,100
 1fa:	06400813          	li	a6,100
 1fe:	e8d861e3          	bltu	a6,a3,80 <.L33>
 202:	07078803          	lb	a6,112(a5)
 206:	48d1                	li	a7,20
 208:	410906b3          	sub	a3,s2,a6
 20c:	00a68313          	addi	t1,a3,10
 210:	0068f663          	bgeu	a7,t1,21c <.L34>
 214:	0585                	addi	a1,a1,1
 216:	06b78a23          	sb	a1,116(a5)

0000021a <.LVL50>:
 21a:	b59d                	j	80 <.L33>

0000021c <.L34>:
 21c:	8689                	srai	a3,a3,0x2
 21e:	96c2                	add	a3,a3,a6
 220:	06078a23          	sb	zero,116(a5)

00000224 <.LVL52>:
 224:	06d78823          	sb	a3,112(a5)
 228:	bda1                	j	80 <.L33>

0000022a <.L31>:
 22a:	5fac                	lw	a1,120(a5)
 22c:	4819                	li	a6,6
 22e:	06b87263          	bgeu	a6,a1,292 <.L35>
 232:	4585                	li	a1,1
 234:	06b789a3          	sb	a1,115(a5)

00000238 <.LVL54>:
 238:	4805                	li	a6,1
 23a:	06400893          	li	a7,100
 23e:	f9c00313          	li	t1,-100
 242:	4781                	li	a5,0
 244:	4f21                	li	t5,8
 246:	4fb1                	li	t6,12
 248:	85b6                	mv	a1,a3
 24a:	4e9d                	li	t4,7

0000024c <.L38>:
 24c:	410e06b3          	sub	a3,t3,a6
 250:	03e6e6b3          	rem	a3,a3,t5
 254:	03f686b3          	mul	a3,a3,t6
 258:	96ae                	add	a3,a3,a1
 25a:	96a2                	add	a3,a3,s0
 25c:	00868683          	lb	a3,8(a3)

00000260 <.LVL56>:
 260:	97b6                	add	a5,a5,a3
 262:	00d35363          	bge	t1,a3,268 <.L36>
 266:	8336                	mv	t1,a3

00000268 <.L36>:
 268:	0116d363          	bge	a3,a7,26e <.L37>
 26c:	88b6                	mv	a7,a3

0000026e <.L37>:
 26e:	0805                	addi	a6,a6,1

00000270 <.LVL60>:
 270:	fdd81ee3          	bne	a6,t4,24c <.L38>
 274:	406787b3          	sub	a5,a5,t1

00000278 <.LVL61>:
 278:	411787b3          	sub	a5,a5,a7
 27c:	4591                	li	a1,4
 27e:	02b7c7b3          	div	a5,a5,a1
 282:	08c00693          	li	a3,140

00000286 <.LVL62>:
 286:	02d506b3          	mul	a3,a0,a3

0000028a <.LVL63>:
 28a:	96a2                	add	a3,a3,s0
 28c:	06f68823          	sb	a5,112(a3)
 290:	bbc5                	j	80 <.L33>

00000292 <.L35>:
 292:	0585                	addi	a1,a1,1
 294:	dfac                	sw	a1,120(a5)

00000296 <.LVL65>:
 296:	b3ed                	j	80 <.L33>

00000298 <.L65>:
 298:	000007b7          	lui	a5,0x0
 29c:	0007a787          	flw	fa5,0(a5) # 0 <pa_adapt>
 2a0:	a0f517d3          	flt.s	a5,fa0,fa5
 2a4:	bd29                	j	be <.L42>

000002a6 <.L43>:
 2a6:	08c00913          	li	s2,140

000002aa <.LVL68>:
 2aa:	03248933          	mul	s2,s1,s2
 2ae:	9922                	add	s2,s2,s0
 2b0:	08092507          	flw	fa0,128(s2)
 2b4:	00000097          	auipc	ra,0x0
 2b8:	000080e7          	jalr	ra # 2b4 <.LVL68+0xa>
 2bc:	000007b7          	lui	a5,0x0
 2c0:	8b2a                	mv	s6,a0
 2c2:	8bae                	mv	s7,a1
 2c4:	0007a603          	lw	a2,0(a5) # 0 <pa_adapt>
 2c8:	0047a683          	lw	a3,4(a5)
 2cc:	b53d                	j	fa <.L71>

000002ce <.L66>:
 2ce:	000007b7          	lui	a5,0x0
 2d2:	0007a707          	flw	fa4,0(a5) # 0 <pa_adapt>
 2d6:	a0f717d3          	flt.s	a5,fa4,fa5
 2da:	b5bd                	j	148 <.L46>

000002dc <.L68>:
 2dc:	8082                	ret
