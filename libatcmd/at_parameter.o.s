
libatcmd/at_parameter.o:     file format elf32-littleriscv


Disassembly of section .text.get_text_para:

00000000 <get_text_para>:
   0:	716d                	addi	sp,sp,-272
   2:	11212023          	sw	s2,256(sp)
   6:	892a                	mv	s2,a0
   8:	00092683          	lw	a3,0(s2)

0000000c <.LVL1>:
   c:	10112623          	sw	ra,268(sp)
  10:	10812423          	sw	s0,264(sp)
  14:	10912223          	sw	s1,260(sp)
  18:	852e                	mv	a0,a1

0000001a <.LVL2>:
  1a:	00010023          	sb	zero,0(sp)
  1e:	1ff67813          	andi	a6,a2,511

00000022 <.LVL3>:
  22:	4701                	li	a4,0
  24:	02c00793          	li	a5,44
  28:	48b5                	li	a7,13
  2a:	4329                	li	t1,10
  2c:	02200e13          	li	t3,34

00000030 <.L2>:
  30:	01074663          	blt	a4,a6,3c <.L6>
			30: R_RISCV_BRANCH	.L6
  34:	84b6                	mv	s1,a3
  36:	4401                	li	s0,0

00000038 <.L11>:
  38:	4785                	li	a5,1
  3a:	a0a5                	j	a2 <.L7>
			3a: R_RISCV_RVC_JUMP	.L7

0000003c <.L6>:
  3c:	0006c583          	lbu	a1,0(a3)
  40:	00168493          	addi	s1,a3,1
  44:	02f58b63          	beq	a1,a5,7a <.L8>
			44: R_RISCV_BRANCH	.L8
  48:	01159e63          	bne	a1,a7,64 <.L4>
			48: R_RISCV_BRANCH	.L4

0000004c <.LVL7>:
  4c:	0016c883          	lbu	a7,1(a3)
  50:	6785                	lui	a5,0x1
  52:	45a9                	li	a1,10
  54:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  58:	00b89463          	bne	a7,a1,60 <.L16>
			58: R_RISCV_BRANCH	.L16
  5c:	00268493          	addi	s1,a3,2

00000060 <.L16>:
  60:	4405                	li	s0,1
  62:	a839                	j	80 <.L3>
			62: R_RISCV_RVC_JUMP	.L3

00000064 <.L4>:
  64:	04658e63          	beq	a1,t1,c0 <.L10>
			64: R_RISCV_BRANCH	.L10
  68:	01c58763          	beq	a1,t3,76 <.L5>
			68: R_RISCV_BRANCH	.L5

0000006c <.LVL10>:
  6c:	0214                	addi	a3,sp,256

0000006e <.LVL11>:
  6e:	96ba                	add	a3,a3,a4
  70:	f0b68023          	sb	a1,-256(a3)
  74:	0705                	addi	a4,a4,1

00000076 <.L5>:
  76:	86a6                	mv	a3,s1
  78:	bf65                	j	30 <.L2>
			78: R_RISCV_RVC_JUMP	.L2

0000007a <.L8>:
  7a:	40000793          	li	a5,1024
  7e:	4401                	li	s0,0

00000080 <.L3>:
  80:	8ff1                	and	a5,a5,a2

00000082 <.LVL15>:
  82:	dbdd                	beqz	a5,38 <.L11>
			82: R_RISCV_RVC_BRANCH	.L11
  84:	4785                	li	a5,1
  86:	01075e63          	bge	a4,a6,a2 <.L7>
			86: R_RISCV_BRANCH	.L7

0000008a <.LVL16>:
  8a:	021c                	addi	a5,sp,256
  8c:	97ba                	add	a5,a5,a4
  8e:	00170613          	addi	a2,a4,1

00000092 <.LVL17>:
  92:	858a                	mv	a1,sp
  94:	f0078023          	sb	zero,-256(a5)
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	memcpy
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL17+0x6>

000000a0 <.LVL18>:
  a0:	4781                	li	a5,0

000000a2 <.L7>:
  a2:	00179513          	slli	a0,a5,0x1
  a6:	8d41                	or	a0,a0,s0
  a8:	10c12083          	lw	ra,268(sp)
  ac:	10812403          	lw	s0,264(sp)
  b0:	00992023          	sw	s1,0(s2)
  b4:	10412483          	lw	s1,260(sp)
  b8:	10012903          	lw	s2,256(sp)

000000bc <.LVL20>:
  bc:	6151                	addi	sp,sp,272
  be:	8082                	ret

000000c0 <.L10>:
  c0:	6785                	lui	a5,0x1
  c2:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  c6:	bf69                	j	60 <.L16>
			c6: R_RISCV_RVC_JUMP	.L16

Disassembly of section .text.get_tdata_para:

00000000 <get_tdata_para>:
   0:	716d                	addi	sp,sp,-272
   2:	11212023          	sw	s2,256(sp)
   6:	892a                	mv	s2,a0
   8:	00092683          	lw	a3,0(s2)

0000000c <.LVL23>:
   c:	10112623          	sw	ra,268(sp)
  10:	10812423          	sw	s0,264(sp)
  14:	10912223          	sw	s1,260(sp)
  18:	852e                	mv	a0,a1

0000001a <.LVL24>:
  1a:	00010023          	sb	zero,0(sp)
  1e:	1ff67813          	andi	a6,a2,511

00000022 <.LVL25>:
  22:	4701                	li	a4,0
  24:	47b5                	li	a5,13
  26:	48a9                	li	a7,10

00000028 <.L18>:
  28:	00e81663          	bne	a6,a4,34 <.L21>
			28: R_RISCV_BRANCH	.L21
  2c:	84b6                	mv	s1,a3
  2e:	4401                	li	s0,0

00000030 <.L25>:
  30:	4785                	li	a5,1
  32:	a0a1                	j	7a <.L22>
			32: R_RISCV_RVC_JUMP	.L22

00000034 <.L21>:
  34:	0006c583          	lbu	a1,0(a3)
  38:	00168493          	addi	s1,a3,1
  3c:	04f59e63          	bne	a1,a5,98 <.L19>
			3c: R_RISCV_BRANCH	.L19

00000040 <.LVL29>:
  40:	0016c883          	lbu	a7,1(a3)
  44:	6785                	lui	a5,0x1
  46:	45a9                	li	a1,10
  48:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  4c:	00b89463          	bne	a7,a1,54 <.L32>
			4c: R_RISCV_BRANCH	.L32
  50:	00268493          	addi	s1,a3,2

00000054 <.L32>:
  54:	8ff1                	and	a5,a5,a2
  56:	4405                	li	s0,1

00000058 <.LVL31>:
  58:	dfe1                	beqz	a5,30 <.L25>
			58: R_RISCV_RVC_BRANCH	.L25
  5a:	4785                	li	a5,1
  5c:	cf19                	beqz	a4,7a <.L22>
			5c: R_RISCV_RVC_BRANCH	.L22
  5e:	01075e63          	bge	a4,a6,7a <.L22>
			5e: R_RISCV_BRANCH	.L22

00000062 <.LVL32>:
  62:	021c                	addi	a5,sp,256
  64:	97ba                	add	a5,a5,a4
  66:	00170613          	addi	a2,a4,1

0000006a <.LVL33>:
  6a:	858a                	mv	a1,sp
  6c:	f0078023          	sb	zero,-256(a5)
  70:	00000097          	auipc	ra,0x0
			70: R_RISCV_CALL	memcpy
			70: R_RISCV_RELAX	*ABS*
  74:	000080e7          	jalr	ra # 70 <.LVL33+0x6>

00000078 <.LVL34>:
  78:	4781                	li	a5,0

0000007a <.L22>:
  7a:	00179513          	slli	a0,a5,0x1
  7e:	8d41                	or	a0,a0,s0
  80:	10c12083          	lw	ra,268(sp)
  84:	10812403          	lw	s0,264(sp)
  88:	00992023          	sw	s1,0(s2)
  8c:	10412483          	lw	s1,260(sp)
  90:	10012903          	lw	s2,256(sp)

00000094 <.LVL36>:
  94:	6151                	addi	sp,sp,272
  96:	8082                	ret

00000098 <.L19>:
  98:	01158963          	beq	a1,a7,aa <.L24>
			98: R_RISCV_BRANCH	.L24

0000009c <.LVL38>:
  9c:	00e106b3          	add	a3,sp,a4

000000a0 <.LVL39>:
  a0:	00b68023          	sb	a1,0(a3)
  a4:	0705                	addi	a4,a4,1

000000a6 <.LVL40>:
  a6:	86a6                	mv	a3,s1
  a8:	b741                	j	28 <.L18>
			a8: R_RISCV_RVC_JUMP	.L18

000000aa <.L24>:
  aa:	6785                	lui	a5,0x1
  ac:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  b0:	b755                	j	54 <.L32>
			b0: R_RISCV_RVC_JUMP	.L32

Disassembly of section .text.get_di_para:

00000000 <get_di_para>:
   0:	7169                	addi	sp,sp,-304
   2:	11312e23          	sw	s3,284(sp)
   6:	12112623          	sw	ra,300(sp)
   a:	12812423          	sw	s0,296(sp)
   e:	12912223          	sw	s1,292(sp)
  12:	13212023          	sw	s2,288(sp)
  16:	4100                	lw	s0,0(a0)

00000018 <.LVL43>:
  18:	89aa                	mv	s3,a0
  1a:	00010823          	sb	zero,16(sp)
  1e:	4701                	li	a4,0
  20:	02c00813          	li	a6,44
  24:	48b5                	li	a7,13
  26:	4329                	li	t1,10
  28:	03a00e13          	li	t3,58

0000002c <.LBB12>:
  2c:	4ea5                	li	t4,9

0000002e <.LBE12>:
  2e:	47ad                	li	a5,11

00000030 <.L40>:
  30:	00044683          	lbu	a3,0(s0)
  34:	05069b63          	bne	a3,a6,8a <.L34>
			34: R_RISCV_BRANCH	.L34
  38:	0405                	addi	s0,s0,1

0000003a <.LVL46>:
  3a:	40000793          	li	a5,1024
  3e:	4481                	li	s1,0
  40:	4901                	li	s2,0

00000042 <.L35>:
  42:	8ff1                	and	a5,a5,a2

00000044 <.LVL48>:
  44:	cbc9                	beqz	a5,d6 <.L45>
			44: R_RISCV_RVC_BRANCH	.L45
  46:	cb41                	beqz	a4,d6 <.L45>
			46: R_RISCV_RVC_BRANCH	.L45
  48:	47ad                	li	a5,11
  4a:	08f70663          	beq	a4,a5,d6 <.L45>
			4a: R_RISCV_BRANCH	.L45
  4e:	0a1c                	addi	a5,sp,272
  50:	973e                	add	a4,a4,a5

00000052 <.LBB15>:
  52:	0808                	addi	a0,sp,16
  54:	c62e                	sw	a1,12(sp)

00000056 <.LBE15>:
  56:	f0070023          	sb	zero,-256(a4)

0000005a <.LBB18>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	atoi
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LBB18>

00000062 <.LBE18>:
  62:	45b2                	lw	a1,12(sp)
  64:	c188                	sw	a0,0(a1)

00000066 <.L41>:
  66:	0089a023          	sw	s0,0(s3)
  6a:	12c12083          	lw	ra,300(sp)
  6e:	12812403          	lw	s0,296(sp)

00000072 <.LVL52>:
  72:	00149513          	slli	a0,s1,0x1
  76:	01256533          	or	a0,a0,s2
  7a:	12412483          	lw	s1,292(sp)

0000007e <.LVL53>:
  7e:	12012903          	lw	s2,288(sp)
  82:	11c12983          	lw	s3,284(sp)

00000086 <.LVL54>:
  86:	6155                	addi	sp,sp,304
  88:	8082                	ret

0000008a <.L34>:
  8a:	01169e63          	bne	a3,a7,a6 <.L36>
			8a: R_RISCV_BRANCH	.L36

0000008e <.LVL56>:
  8e:	00144503          	lbu	a0,1(s0)
  92:	6785                	lui	a5,0x1
  94:	46a9                	li	a3,10
  96:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  9a:	04d51063          	bne	a0,a3,da <.L37>
			9a: R_RISCV_BRANCH	.L37
  9e:	0409                	addi	s0,s0,2

000000a0 <.L50>:
  a0:	4481                	li	s1,0
  a2:	4905                	li	s2,1
  a4:	bf79                	j	42 <.L35>
			a4: R_RISCV_RVC_JUMP	.L35

000000a6 <.L36>:
  a6:	00669763          	bne	a3,t1,b4 <.L38>
			a6: R_RISCV_BRANCH	.L38

000000aa <.L51>:
  aa:	6785                	lui	a5,0x1
  ac:	0405                	addi	s0,s0,1

000000ae <.LVL59>:
  ae:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  b2:	b7fd                	j	a0 <.L50>
			b2: R_RISCV_RVC_JUMP	.L50

000000b4 <.L38>:
  b4:	ffc68be3          	beq	a3,t3,aa <.L51>
			b4: R_RISCV_BRANCH	.L51

000000b8 <.LBB19>:
  b8:	fd068513          	addi	a0,a3,-48
  bc:	0ff57513          	andi	a0,a0,255
  c0:	00aeea63          	bltu	t4,a0,d4 <.L42>
			c0: R_RISCV_BRANCH	.L42

000000c4 <.LBE19>:
  c4:	0808                	addi	a0,sp,16
  c6:	953a                	add	a0,a0,a4
  c8:	00d50023          	sb	a3,0(a0)
  cc:	0705                	addi	a4,a4,1
  ce:	0405                	addi	s0,s0,1
  d0:	f6f710e3          	bne	a4,a5,30 <.L40>
			d0: R_RISCV_BRANCH	.L40

000000d4 <.L42>:
  d4:	4901                	li	s2,0

000000d6 <.L45>:
  d6:	4485                	li	s1,1
  d8:	b779                	j	66 <.L41>
			d8: R_RISCV_RVC_JUMP	.L41

000000da <.L37>:
  da:	0405                	addi	s0,s0,1

000000dc <.LVL66>:
  dc:	b7d1                	j	a0 <.L50>
			dc: R_RISCV_RVC_JUMP	.L50

Disassembly of section .text.get_ip_para:

00000000 <get_ip_para>:
   0:	710d                	addi	sp,sp,-352
   2:	14912a23          	sw	s1,340(sp)
   6:	15212823          	sw	s2,336(sp)
   a:	15312623          	sw	s3,332(sp)
   e:	15412423          	sw	s4,328(sp)
  12:	15512223          	sw	s5,324(sp)
  16:	13712e23          	sw	s7,316(sp)
  1a:	13812c23          	sw	s8,312(sp)
  1e:	13912a23          	sw	s9,308(sp)
  22:	13a12823          	sw	s10,304(sp)
  26:	13b12623          	sw	s11,300(sp)
  2a:	14112e23          	sw	ra,348(sp)
  2e:	14812c23          	sw	s0,344(sp)
  32:	15612023          	sw	s6,320(sp)
  36:	c632                	sw	a2,12(sp)
  38:	00052b03          	lw	s6,0(a0)

0000003c <.LVL68>:
  3c:	892a                	mv	s2,a0
  3e:	89ae                	mv	s3,a1
  40:	4611                	li	a2,4

00000042 <.LVL69>:
  42:	4581                	li	a1,0

00000044 <.LVL70>:
  44:	0868                	addi	a0,sp,28

00000046 <.LVL71>:
  46:	02010023          	sb	zero,32(sp)
  4a:	4481                	li	s1,0
  4c:	00000097          	auipc	ra,0x0
			4c: R_RISCV_CALL	memset
			4c: R_RISCV_RELAX	*ABS*
  50:	000080e7          	jalr	ra # 4c <.LVL71+0x6>

00000054 <.LVL73>:
  54:	4a81                	li	s5,0
  56:	4bb5                	li	s7,13
  58:	4c29                	li	s8,10
  5a:	02200c93          	li	s9,34
  5e:	02e00d13          	li	s10,46

00000062 <.LBB20>:
  62:	4da5                	li	s11,9

00000064 <.LBE20>:
  64:	4a09                	li	s4,2

00000066 <.L62>:
  66:	000b4703          	lbu	a4,0(s6)
  6a:	02c00793          	li	a5,44
  6e:	845a                	mv	s0,s6

00000070 <.LVL75>:
  70:	04f71e63          	bne	a4,a5,cc <.L53>
			70: R_RISCV_BRANCH	.L53
  74:	001b0413          	addi	s0,s6,1

00000078 <.LVL76>:
  78:	40000613          	li	a2,1024
  7c:	4b01                	li	s6,0
  7e:	4a01                	li	s4,0

00000080 <.L54>:
  80:	47b2                	lw	a5,12(sp)
  82:	8e7d                	and	a2,a2,a5

00000084 <.LVL78>:
  84:	c671                	beqz	a2,150 <.L65>
			84: R_RISCV_RVC_BRANCH	.L65
  86:	14fd                	addi	s1,s1,-1

00000088 <.LVL79>:
  88:	4789                	li	a5,2
  8a:	0c97e363          	bltu	a5,s1,150 <.L65>
			8a: R_RISCV_BRANCH	.L65

0000008e <.LBB23>:
  8e:	0868                	addi	a0,sp,28

00000090 <.LVL81>:
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	atoi
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL81>

00000098 <.LBE23>:
  98:	0ff00793          	li	a5,255
  9c:	0aa7ea63          	bltu	a5,a0,150 <.L65>
			9c: R_RISCV_BRANCH	.L65

000000a0 <.LVL83>:
  a0:	121c                	addi	a5,sp,288
  a2:	97d6                	add	a5,a5,s5
  a4:	f0a78023          	sb	a0,-256(a5)
  a8:	478d                	li	a5,3
  aa:	0afa9363          	bne	s5,a5,150 <.L65>
			aa: R_RISCV_BRANCH	.L65
  ae:	4611                	li	a2,4
  b0:	4581                	li	a1,0
  b2:	854e                	mv	a0,s3

000000b4 <.LVL84>:
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	memset
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL84>

000000bc <.LVL85>:
  bc:	4611                	li	a2,4
  be:	100c                	addi	a1,sp,32
  c0:	854e                	mv	a0,s3
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	memcpy
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LVL85+0x6>

000000ca <.LVL86>:
  ca:	a061                	j	152 <.L64>
			ca: R_RISCV_RVC_JUMP	.L64

000000cc <.L53>:
  cc:	01771f63          	bne	a4,s7,ea <.L55>
			cc: R_RISCV_BRANCH	.L55

000000d0 <.LVL88>:
  d0:	001b4703          	lbu	a4,1(s6)
  d4:	6605                	lui	a2,0x1
  d6:	47a9                	li	a5,10
  d8:	80060613          	addi	a2,a2,-2048 # 800 <.LASF305+0x4>
  dc:	0cf71e63          	bne	a4,a5,1b8 <.L56>
			dc: R_RISCV_BRANCH	.L56
  e0:	002b0413          	addi	s0,s6,2

000000e4 <.L73>:
  e4:	4b01                	li	s6,0
  e6:	4a05                	li	s4,1
  e8:	bf61                	j	80 <.L54>
			e8: R_RISCV_RVC_JUMP	.L54

000000ea <.L55>:
  ea:	01871863          	bne	a4,s8,fa <.L57>
			ea: R_RISCV_BRANCH	.L57
  ee:	6605                	lui	a2,0x1
  f0:	001b0413          	addi	s0,s6,1

000000f4 <.LVL91>:
  f4:	80060613          	addi	a2,a2,-2048 # 800 <.LASF305+0x4>
  f8:	b7f5                	j	e4 <.L73>
			f8: R_RISCV_RVC_JUMP	.L73

000000fa <.L57>:
  fa:	01971963          	bne	a4,s9,10c <.L58>
			fa: R_RISCV_BRANCH	.L58
  fe:	001b0413          	addi	s0,s6,1

00000102 <.L59>:
 102:	4711                	li	a4,4
 104:	0b05                	addi	s6,s6,1
 106:	f6ea90e3          	bne	s5,a4,66 <.L62>
			106: R_RISCV_BRANCH	.L62
 10a:	a091                	j	14e <.L70>
			10a: R_RISCV_RVC_JUMP	.L70

0000010c <.L58>:
 10c:	09a71563          	bne	a4,s10,196 <.L60>
			10c: R_RISCV_BRANCH	.L60
 110:	fff48713          	addi	a4,s1,-1
 114:	4485                	li	s1,1

00000116 <.LVL94>:
 116:	02ea6263          	bltu	s4,a4,13a <.L61>
			116: R_RISCV_BRANCH	.L61

0000011a <.LBB25>:
 11a:	0868                	addi	a0,sp,28

0000011c <.LVL96>:
 11c:	00000097          	auipc	ra,0x0
			11c: R_RISCV_CALL	atoi
			11c: R_RISCV_RELAX	*ABS*
 120:	000080e7          	jalr	ra # 11c <.LVL96>

00000124 <.LBE25>:
 124:	0ff00713          	li	a4,255
 128:	00a76963          	bltu	a4,a0,13a <.L61>
			128: R_RISCV_BRANCH	.L61

0000012c <.LVL98>:
 12c:	121c                	addi	a5,sp,288
 12e:	01578733          	add	a4,a5,s5
 132:	f0a70023          	sb	a0,-256(a4)
 136:	0a85                	addi	s5,s5,1

00000138 <.LVL99>:
 138:	4481                	li	s1,0

0000013a <.L61>:
 13a:	4611                	li	a2,4
 13c:	4581                	li	a1,0
 13e:	0868                	addi	a0,sp,28
 140:	001b0413          	addi	s0,s6,1

00000144 <.LVL101>:
 144:	00000097          	auipc	ra,0x0
			144: R_RISCV_CALL	memset
			144: R_RISCV_RELAX	*ABS*
 148:	000080e7          	jalr	ra # 144 <.LVL101>

0000014c <.LVL102>:
 14c:	d8dd                	beqz	s1,102 <.L59>
			14c: R_RISCV_RVC_BRANCH	.L59

0000014e <.L70>:
 14e:	4a01                	li	s4,0

00000150 <.L65>:
 150:	4b05                	li	s6,1

00000152 <.L64>:
 152:	00892023          	sw	s0,0(s2)
 156:	15c12083          	lw	ra,348(sp)
 15a:	15812403          	lw	s0,344(sp)

0000015e <.LVL106>:
 15e:	001b1513          	slli	a0,s6,0x1
 162:	01456533          	or	a0,a0,s4
 166:	15412483          	lw	s1,340(sp)
 16a:	15012903          	lw	s2,336(sp)

0000016e <.LVL107>:
 16e:	14c12983          	lw	s3,332(sp)

00000172 <.LVL108>:
 172:	14812a03          	lw	s4,328(sp)
 176:	14412a83          	lw	s5,324(sp)
 17a:	14012b03          	lw	s6,320(sp)

0000017e <.LVL109>:
 17e:	13c12b83          	lw	s7,316(sp)
 182:	13812c03          	lw	s8,312(sp)
 186:	13412c83          	lw	s9,308(sp)
 18a:	13012d03          	lw	s10,304(sp)
 18e:	12c12d83          	lw	s11,300(sp)
 192:	6135                	addi	sp,sp,352

00000194 <.LVL110>:
 194:	8082                	ret

00000196 <.L60>:
 196:	fd070613          	addi	a2,a4,-48
 19a:	0ff67613          	andi	a2,a2,255
 19e:	facde8e3          	bltu	s11,a2,14e <.L70>
			19e: R_RISCV_BRANCH	.L70

000001a2 <.LBE27>:
 1a2:	fa9a46e3          	blt	s4,s1,14e <.L70>
			1a2: R_RISCV_BRANCH	.L70
 1a6:	121c                	addi	a5,sp,288
 1a8:	00978633          	add	a2,a5,s1
 1ac:	001b0413          	addi	s0,s6,1

000001b0 <.LVL113>:
 1b0:	eee60e23          	sb	a4,-260(a2)
 1b4:	0485                	addi	s1,s1,1

000001b6 <.LVL114>:
 1b6:	b7b1                	j	102 <.L59>
			1b6: R_RISCV_RVC_JUMP	.L59

000001b8 <.L56>:
 1b8:	001b0413          	addi	s0,s6,1

000001bc <.LVL116>:
 1bc:	b725                	j	e4 <.L73>
			1bc: R_RISCV_RVC_JUMP	.L73

Disassembly of section .text.hex_to_num:

00000000 <hex_to_num>:
   0:	fd050793          	addi	a5,a0,-48
   4:	0ff7f613          	andi	a2,a5,255
   8:	46a5                	li	a3,9
   a:	872a                	mv	a4,a0
   c:	00c6e463          	bltu	a3,a2,14 <.L75>
			c: R_RISCV_BRANCH	.L75
  10:	853e                	mv	a0,a5

00000012 <.LVL118>:
  12:	8082                	ret

00000014 <.L75>:
  14:	fbf50793          	addi	a5,a0,-65
  18:	0ff7f793          	andi	a5,a5,255
  1c:	4695                	li	a3,5
  1e:	00f6e563          	bltu	a3,a5,28 <.L77>
			1e: R_RISCV_BRANCH	.L77
  22:	fc950513          	addi	a0,a0,-55

00000026 <.LVL120>:
  26:	8082                	ret

00000028 <.L77>:
  28:	f9f50793          	addi	a5,a0,-97
  2c:	0ff7f793          	andi	a5,a5,255
  30:	557d                	li	a0,-1

00000032 <.LVL122>:
  32:	00f6e463          	bltu	a3,a5,3a <.L74>
			32: R_RISCV_BRANCH	.L74
  36:	fa970513          	addi	a0,a4,-87

0000003a <.L74>:
  3a:	8082                	ret

Disassembly of section .text.get_hex_para:

00000000 <get_hex_para>:
   0:	710d                	addi	sp,sp,-352
   2:	15212823          	sw	s2,336(sp)
   6:	15312623          	sw	s3,332(sp)
   a:	15412423          	sw	s4,328(sp)
   e:	15512223          	sw	s5,324(sp)
  12:	15612023          	sw	s6,320(sp)
  16:	13712e23          	sw	s7,316(sp)
  1a:	13812c23          	sw	s8,312(sp)
  1e:	13912a23          	sw	s9,308(sp)
  22:	13a12823          	sw	s10,304(sp)
  26:	13b12623          	sw	s11,300(sp)
  2a:	14112e23          	sw	ra,348(sp)
  2e:	14812c23          	sw	s0,344(sp)
  32:	14912a23          	sw	s1,340(sp)
  36:	4100                	lw	s0,0(a0)

00000038 <.LVL124>:
  38:	8a2a                	mv	s4,a0
  3a:	8aae                	mv	s5,a1
  3c:	02010023          	sb	zero,32(sp)
  40:	1ff67b13          	andi	s6,a2,511

00000044 <.LVL125>:
  44:	4681                	li	a3,0
  46:	4981                	li	s3,0
  48:	02c00913          	li	s2,44
  4c:	4bb5                	li	s7,13
  4e:	4c29                	li	s8,10
  50:	03a00c93          	li	s9,58
  54:	02200d13          	li	s10,34
  58:	4d85                	li	s11,1
  5a:	4789                	li	a5,2

0000005c <.LBB34>:
  5c:	4825                	li	a6,9
  5e:	4895                	li	a7,5

00000060 <.L80>:
  60:	0169c563          	blt	s3,s6,6a <.L90>
			60: R_RISCV_BRANCH	.L90

00000064 <.L94>:
  64:	4901                	li	s2,0

00000066 <.L96>:
  66:	4485                	li	s1,1
  68:	a049                	j	ea <.L91>
			68: R_RISCV_RVC_JUMP	.L91

0000006a <.L90>:
  6a:	00044703          	lbu	a4,0(s0)
  6e:	01271863          	bne	a4,s2,7e <.L81>
			6e: R_RISCV_BRANCH	.L81
  72:	0405                	addi	s0,s0,1

00000074 <.L92>:
  74:	40000793          	li	a5,1024
  78:	4481                	li	s1,0
  7a:	4901                	li	s2,0
  7c:	a831                	j	98 <.L82>
			7c: R_RISCV_RVC_JUMP	.L82

0000007e <.L81>:
  7e:	0b771a63          	bne	a4,s7,132 <.L83>
			7e: R_RISCV_BRANCH	.L83

00000082 <.LVL131>:
  82:	00144583          	lbu	a1,1(s0)
  86:	6785                	lui	a5,0x1
  88:	4729                	li	a4,10
  8a:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  8e:	0ae58063          	beq	a1,a4,12e <.L84>
			8e: R_RISCV_BRANCH	.L84
  92:	0405                	addi	s0,s0,1

00000094 <.L100>:
  94:	4481                	li	s1,0
  96:	4905                	li	s2,1

00000098 <.L82>:
  98:	8ff1                	and	a5,a5,a2

0000009a <.LVL134>:
  9a:	d7f1                	beqz	a5,66 <.L96>
			9a: R_RISCV_RVC_BRANCH	.L96
  9c:	4789                	li	a5,2
  9e:	fcf694e3          	bne	a3,a5,66 <.L96>
			9e: R_RISCV_BRANCH	.L96
  a2:	01c14503          	lbu	a0,28(sp)
  a6:	00198c13          	addi	s8,s3,1
  aa:	0405                	addi	s0,s0,1
  ac:	00000097          	auipc	ra,0x0
			ac: R_RISCV_CALL	hex_to_num
			ac: R_RISCV_RELAX	*ABS*
  b0:	000080e7          	jalr	ra # ac <.LVL134+0x12>

000000b4 <.LVL136>:
  b4:	8baa                	mv	s7,a0
  b6:	01d14503          	lbu	a0,29(sp)
  ba:	0b92                	slli	s7,s7,0x4
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	hex_to_num
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL136+0x8>

000000c4 <.LVL137>:
  c4:	121c                	addi	a5,sp,288
  c6:	99be                	add	s3,s3,a5
  c8:	9baa                	add	s7,s7,a0
  ca:	865a                	mv	a2,s6
  cc:	4581                	li	a1,0
  ce:	8556                	mv	a0,s5
  d0:	f1798023          	sb	s7,-256(s3)
  d4:	00000097          	auipc	ra,0x0
			d4: R_RISCV_CALL	memset
			d4: R_RISCV_RELAX	*ABS*
  d8:	000080e7          	jalr	ra # d4 <.LVL137+0x10>

000000dc <.LVL138>:
  dc:	8662                	mv	a2,s8
  de:	100c                	addi	a1,sp,32
  e0:	8556                	mv	a0,s5
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	memcpy
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL138+0x6>

000000ea <.L91>:
  ea:	008a2023          	sw	s0,0(s4)
  ee:	15c12083          	lw	ra,348(sp)
  f2:	15812403          	lw	s0,344(sp)

000000f6 <.LVL140>:
  f6:	00149513          	slli	a0,s1,0x1
  fa:	01256533          	or	a0,a0,s2
  fe:	15412483          	lw	s1,340(sp)
 102:	15012903          	lw	s2,336(sp)
 106:	14c12983          	lw	s3,332(sp)
 10a:	14812a03          	lw	s4,328(sp)

0000010e <.LVL141>:
 10e:	14412a83          	lw	s5,324(sp)

00000112 <.LVL142>:
 112:	14012b03          	lw	s6,320(sp)

00000116 <.LVL143>:
 116:	13c12b83          	lw	s7,316(sp)
 11a:	13812c03          	lw	s8,312(sp)
 11e:	13412c83          	lw	s9,308(sp)
 122:	13012d03          	lw	s10,304(sp)
 126:	12c12d83          	lw	s11,300(sp)
 12a:	6135                	addi	sp,sp,352
 12c:	8082                	ret

0000012e <.L84>:
 12e:	0409                	addi	s0,s0,2

00000130 <.LVL145>:
 130:	b795                	j	94 <.L100>
			130: R_RISCV_RVC_JUMP	.L100

00000132 <.L83>:
 132:	01871763          	bne	a4,s8,140 <.L85>
			132: R_RISCV_BRANCH	.L85
 136:	6785                	lui	a5,0x1
 138:	0405                	addi	s0,s0,1

0000013a <.LVL146>:
 13a:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
 13e:	bf99                	j	94 <.L100>
			13e: R_RISCV_RVC_JUMP	.L100

00000140 <.L85>:
 140:	f3970ae3          	beq	a4,s9,74 <.L92>
			140: R_RISCV_BRANCH	.L92
 144:	01a71463          	bne	a4,s10,14c <.L86>
			144: R_RISCV_BRANCH	.L86
 148:	0405                	addi	s0,s0,1
 14a:	bf19                	j	60 <.L80>
			14a: R_RISCV_RVC_JUMP	.L80

0000014c <.L86>:
 14c:	02ddc763          	blt	s11,a3,17a <.L88>
			14c: R_RISCV_BRANCH	.L88

00000150 <.LBB37>:
 150:	fd070593          	addi	a1,a4,-48
 154:	0ff5f593          	andi	a1,a1,255
 158:	00b87a63          	bgeu	a6,a1,16c <.L89>
			158: R_RISCV_BRANCH	.L89
 15c:	fdf77593          	andi	a1,a4,-33
 160:	fbf58593          	addi	a1,a1,-65
 164:	0ff5f593          	andi	a1,a1,255
 168:	eeb8eee3          	bltu	a7,a1,64 <.L94>
			168: R_RISCV_BRANCH	.L94

0000016c <.L89>:
 16c:	120c                	addi	a1,sp,288
 16e:	95b6                	add	a1,a1,a3
 170:	0405                	addi	s0,s0,1

00000172 <.LVL150>:
 172:	eee58e23          	sb	a4,-260(a1)
 176:	0685                	addi	a3,a3,1

00000178 <.LVL151>:
 178:	b5e5                	j	60 <.L80>
			178: R_RISCV_RVC_JUMP	.L80

0000017a <.L88>:
 17a:	c632                	sw	a2,12(sp)
 17c:	eef694e3          	bne	a3,a5,64 <.L94>
			17c: R_RISCV_BRANCH	.L94
 180:	01c14503          	lbu	a0,28(sp)
 184:	00000097          	auipc	ra,0x0
			184: R_RISCV_CALL	hex_to_num
			184: R_RISCV_RELAX	*ABS*
 188:	000080e7          	jalr	ra # 184 <.L88+0xa>

0000018c <.LVL153>:
 18c:	84aa                	mv	s1,a0
 18e:	01d14503          	lbu	a0,29(sp)
 192:	00000097          	auipc	ra,0x0
			192: R_RISCV_CALL	hex_to_num
			192: R_RISCV_RELAX	*ABS*
 196:	000080e7          	jalr	ra # 192 <.LVL153+0x6>

0000019a <.LVL154>:
 19a:	121c                	addi	a5,sp,288
 19c:	00449713          	slli	a4,s1,0x4
 1a0:	013786b3          	add	a3,a5,s3
 1a4:	953a                	add	a0,a0,a4
 1a6:	f0a68023          	sb	a0,-256(a3)

000001aa <.LVL155>:
 1aa:	0985                	addi	s3,s3,1

000001ac <.LVL156>:
 1ac:	4681                	li	a3,0
 1ae:	4895                	li	a7,5
 1b0:	4825                	li	a6,9
 1b2:	4632                	lw	a2,12(sp)
 1b4:	4789                	li	a5,2
 1b6:	b56d                	j	60 <.L80>
			1b6: R_RISCV_RVC_JUMP	.L80

Disassembly of section .text.get_hi_para:

00000000 <get_hi_para>:
   0:	712d                	addi	sp,sp,-288
   2:	11312623          	sw	s3,268(sp)

00000006 <.LVL158>:
   6:	10112e23          	sw	ra,284(sp)
   a:	10812c23          	sw	s0,280(sp)
   e:	10912a23          	sw	s1,276(sp)
  12:	11212823          	sw	s2,272(sp)
  16:	89aa                	mv	s3,a0
  18:	4108                	lw	a0,0(a0)

0000001a <.LVL159>:
  1a:	00010023          	sb	zero,0(sp)
  1e:	4701                	li	a4,0
  20:	02c00893          	li	a7,44
  24:	4335                	li	t1,13
  26:	4e29                	li	t3,10
  28:	02200e93          	li	t4,34

0000002c <.LBB40>:
  2c:	4f25                	li	t5,9
  2e:	4f95                	li	t6,5

00000030 <.LBE40>:
  30:	47ad                	li	a5,11

00000032 <.L110>:
  32:	00054683          	lbu	a3,0(a0)
  36:	842a                	mv	s0,a0

00000038 <.LVL162>:
  38:	05169e63          	bne	a3,a7,94 <.L102>
			38: R_RISCV_BRANCH	.L102
  3c:	00150413          	addi	s0,a0,1

00000040 <.LVL163>:
  40:	40000793          	li	a5,1024
  44:	4481                	li	s1,0
  46:	4901                	li	s2,0

00000048 <.L103>:
  48:	8ff1                	and	a5,a5,a2

0000004a <.LVL165>:
  4a:	c3d9                	beqz	a5,d0 <.L115>
			4a: R_RISCV_RVC_BRANCH	.L115
  4c:	c351                	beqz	a4,d0 <.L115>
			4c: R_RISCV_RVC_BRANCH	.L115
  4e:	47a9                	li	a5,10
  50:	08e7c063          	blt	a5,a4,d0 <.L115>
			50: R_RISCV_BRANCH	.L115

00000054 <.LVL166>:
  54:	021c                	addi	a5,sp,256
  56:	862e                	mv	a2,a1

00000058 <.LVL167>:
  58:	000005b7          	lui	a1,0x0
			58: R_RISCV_HI20	.LC0
			58: R_RISCV_RELAX	*ABS*

0000005c <.LVL168>:
  5c:	973e                	add	a4,a4,a5

0000005e <.LVL169>:
  5e:	00058593          	mv	a1,a1
			5e: R_RISCV_LO12_I	.LC0
			5e: R_RISCV_RELAX	*ABS*
  62:	850a                	mv	a0,sp
  64:	f0070023          	sb	zero,-256(a4)
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	sscanf
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LVL169+0xa>

00000070 <.L111>:
  70:	0089a023          	sw	s0,0(s3)
  74:	11c12083          	lw	ra,284(sp)
  78:	11812403          	lw	s0,280(sp)

0000007c <.LVL171>:
  7c:	00149513          	slli	a0,s1,0x1
  80:	01256533          	or	a0,a0,s2
  84:	11412483          	lw	s1,276(sp)

00000088 <.LVL172>:
  88:	11012903          	lw	s2,272(sp)
  8c:	10c12983          	lw	s3,268(sp)

00000090 <.LVL173>:
  90:	6115                	addi	sp,sp,288
  92:	8082                	ret

00000094 <.L102>:
  94:	00669e63          	bne	a3,t1,b0 <.L104>
			94: R_RISCV_BRANCH	.L104

00000098 <.LVL175>:
  98:	00154503          	lbu	a0,1(a0)
  9c:	6785                	lui	a5,0x1
  9e:	46a9                	li	a3,10
  a0:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  a4:	04d51f63          	bne	a0,a3,102 <.L105>
			a4: R_RISCV_BRANCH	.L105
  a8:	0409                	addi	s0,s0,2

000000aa <.L120>:
  aa:	4481                	li	s1,0
  ac:	4905                	li	s2,1
  ae:	bf69                	j	48 <.L103>
			ae: R_RISCV_RVC_JUMP	.L103

000000b0 <.L104>:
  b0:	01c69863          	bne	a3,t3,c0 <.L106>
			b0: R_RISCV_BRANCH	.L106
  b4:	6785                	lui	a5,0x1
  b6:	00150413          	addi	s0,a0,1

000000ba <.LVL178>:
  ba:	80078793          	addi	a5,a5,-2048 # 800 <.LASF305+0x4>
  be:	b7f5                	j	aa <.L120>
			be: R_RISCV_RVC_JUMP	.L120

000000c0 <.L106>:
  c0:	01d69a63          	bne	a3,t4,d4 <.L107>
			c0: R_RISCV_BRANCH	.L107
  c4:	00150413          	addi	s0,a0,1

000000c8 <.L108>:
  c8:	0505                	addi	a0,a0,1
  ca:	f6f714e3          	bne	a4,a5,32 <.L110>
			ca: R_RISCV_BRANCH	.L110

000000ce <.L112>:
  ce:	4901                	li	s2,0

000000d0 <.L115>:
  d0:	4485                	li	s1,1
  d2:	bf79                	j	70 <.L111>
			d2: R_RISCV_RVC_JUMP	.L111

000000d4 <.L107>:
  d4:	fd068813          	addi	a6,a3,-48
  d8:	0ff87813          	andi	a6,a6,255
  dc:	010f7a63          	bgeu	t5,a6,f0 <.L109>
			dc: R_RISCV_BRANCH	.L109
  e0:	fdf6f813          	andi	a6,a3,-33
  e4:	fbf80813          	addi	a6,a6,-65
  e8:	0ff87813          	andi	a6,a6,255
  ec:	ff0fe1e3          	bltu	t6,a6,ce <.L112>
			ec: R_RISCV_BRANCH	.L112

000000f0 <.L109>:
  f0:	0204                	addi	s1,sp,256
  f2:	00e48833          	add	a6,s1,a4
  f6:	00150413          	addi	s0,a0,1

000000fa <.LVL183>:
  fa:	f0d80023          	sb	a3,-256(a6)
  fe:	0705                	addi	a4,a4,1

00000100 <.LVL184>:
 100:	b7e1                	j	c8 <.L108>
			100: R_RISCV_RVC_JUMP	.L108

00000102 <.L105>:
 102:	0405                	addi	s0,s0,1

00000104 <.LVL186>:
 104:	b75d                	j	aa <.L120>
			104: R_RISCV_RVC_JUMP	.L120

Disassembly of section .text.at_get_value:

00000000 <at_get_value>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	4409                	li	s0,2
  10:	c205                	beqz	a2,30 <.L122>
			10: R_RISCV_RVC_BRANCH	.L122
  12:	478d                	li	a5,3
  14:	842e                	mv	s0,a1
  16:	84b2                	mv	s1,a2

00000018 <.LVL188>:
  18:	02f59563          	bne	a1,a5,42 <.L123>
			18: R_RISCV_BRANCH	.L123
  1c:	4210                	lw	a2,0(a2)

0000001e <.LVL189>:
  1e:	000005b7          	lui	a1,0x0
			1e: R_RISCV_HI20	.LC1
			1e: R_RISCV_RELAX	*ABS*

00000022 <.LVL190>:
  22:	00058593          	mv	a1,a1
			22: R_RISCV_LO12_I	.LC1
			22: R_RISCV_RELAX	*ABS*

00000026 <.L137>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	sprintf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.L137>

0000002e <.L133>:
  2e:	4401                	li	s0,0

00000030 <.L122>:
  30:	8522                	mv	a0,s0
  32:	40f2                	lw	ra,28(sp)
  34:	4462                	lw	s0,24(sp)
  36:	44d2                	lw	s1,20(sp)
  38:	4942                	lw	s2,16(sp)
  3a:	49b2                	lw	s3,12(sp)
  3c:	4a22                	lw	s4,8(sp)
  3e:	6105                	addi	sp,sp,32
  40:	8082                	ret

00000042 <.L123>:
  42:	4791                	li	a5,4
  44:	00f59863          	bne	a1,a5,54 <.L124>
			44: R_RISCV_BRANCH	.L124
  48:	000005b7          	lui	a1,0x0
			48: R_RISCV_HI20	.LC2
			48: R_RISCV_RELAX	*ABS*
  4c:	4210                	lw	a2,0(a2)
  4e:	00058593          	mv	a1,a1
			4e: R_RISCV_LO12_I	.LC2
			4e: R_RISCV_RELAX	*ABS*
  52:	bfd1                	j	26 <.L137>
			52: R_RISCV_RVC_JUMP	.L137

00000054 <.L124>:
  54:	4789                	li	a5,2
  56:	89aa                	mv	s3,a0
  58:	8936                	mv	s2,a3
  5a:	04f59563          	bne	a1,a5,a4 <.L125>
			5a: R_RISCV_BRANCH	.L125
  5e:	00d05c63          	blez	a3,76 <.L126>
			5e: R_RISCV_BRANCH	.L126
  62:	00064603          	lbu	a2,0(a2)
  66:	000005b7          	lui	a1,0x0
			66: R_RISCV_HI20	.LC3
			66: R_RISCV_RELAX	*ABS*
  6a:	00058593          	mv	a1,a1
			6a: R_RISCV_LO12_I	.LC3
			6a: R_RISCV_RELAX	*ABS*
  6e:	00000097          	auipc	ra,0x0
			6e: R_RISCV_CALL	sprintf
			6e: R_RISCV_RELAX	*ABS*
  72:	000080e7          	jalr	ra # 6e <.L124+0x1a>

00000076 <.L126>:
  76:	4405                	li	s0,1

00000078 <.LVL195>:
  78:	00000a37          	lui	s4,0x0
			78: R_RISCV_HI20	.LC4
			78: R_RISCV_RELAX	*ABS*

0000007c <.L127>:
  7c:	fb2459e3          	bge	s0,s2,2e <.L133>
			7c: R_RISCV_BRANCH	.L133
  80:	854e                	mv	a0,s3
  82:	00000097          	auipc	ra,0x0
			82: R_RISCV_CALL	strlen
			82: R_RISCV_RELAX	*ABS*
  86:	000080e7          	jalr	ra # 82 <.L127+0x6>

0000008a <.LVL197>:
  8a:	008487b3          	add	a5,s1,s0
  8e:	0007c603          	lbu	a2,0(a5)
  92:	000a0593          	mv	a1,s4
			92: R_RISCV_LO12_I	.LC4
			92: R_RISCV_RELAX	*ABS*
  96:	954e                	add	a0,a0,s3
  98:	00000097          	auipc	ra,0x0
			98: R_RISCV_CALL	sprintf
			98: R_RISCV_RELAX	*ABS*
  9c:	000080e7          	jalr	ra # 98 <.LVL197+0xe>

000000a0 <.LVL198>:
  a0:	0405                	addi	s0,s0,1
  a2:	bfe9                	j	7c <.L127>
			a2: R_RISCV_RVC_JUMP	.L127

000000a4 <.L125>:
  a4:	4795                	li	a5,5
  a6:	04f59563          	bne	a1,a5,f0 <.L129>
			a6: R_RISCV_BRANCH	.L129
  aa:	00d05c63          	blez	a3,c2 <.L130>
			aa: R_RISCV_BRANCH	.L130
  ae:	00064603          	lbu	a2,0(a2)
  b2:	000005b7          	lui	a1,0x0
			b2: R_RISCV_HI20	.LC1
			b2: R_RISCV_RELAX	*ABS*
  b6:	00058593          	mv	a1,a1
			b6: R_RISCV_LO12_I	.LC1
			b6: R_RISCV_RELAX	*ABS*
  ba:	00000097          	auipc	ra,0x0
			ba: R_RISCV_CALL	sprintf
			ba: R_RISCV_RELAX	*ABS*
  be:	000080e7          	jalr	ra # ba <.L125+0x16>

000000c2 <.L130>:
  c2:	4405                	li	s0,1

000000c4 <.LVL202>:
  c4:	00000a37          	lui	s4,0x0
			c4: R_RISCV_HI20	.LC5
			c4: R_RISCV_RELAX	*ABS*

000000c8 <.L131>:
  c8:	f72453e3          	bge	s0,s2,2e <.L133>
			c8: R_RISCV_BRANCH	.L133
  cc:	854e                	mv	a0,s3
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	strlen
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.L131+0x6>

000000d6 <.LVL204>:
  d6:	008487b3          	add	a5,s1,s0
  da:	0007c603          	lbu	a2,0(a5)
  de:	000a0593          	mv	a1,s4
			de: R_RISCV_LO12_I	.LC5
			de: R_RISCV_RELAX	*ABS*
  e2:	954e                	add	a0,a0,s3
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	sprintf
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.LVL204+0xe>

000000ec <.LVL205>:
  ec:	0405                	addi	s0,s0,1
  ee:	bfe9                	j	c8 <.L131>
			ee: R_RISCV_RVC_JUMP	.L131

000000f0 <.L129>:
  f0:	e991                	bnez	a1,104 <.L135>
			f0: R_RISCV_RVC_BRANCH	.L135
  f2:	000005b7          	lui	a1,0x0
			f2: R_RISCV_HI20	.LC6
			f2: R_RISCV_RELAX	*ABS*
  f6:	00058593          	mv	a1,a1
			f6: R_RISCV_LO12_I	.LC6
			f6: R_RISCV_RELAX	*ABS*
  fa:	00000097          	auipc	ra,0x0
			fa: R_RISCV_CALL	sprintf
			fa: R_RISCV_RELAX	*ABS*
  fe:	000080e7          	jalr	ra # fa <.L129+0xa>

00000102 <.LVL208>:
 102:	b73d                	j	30 <.L122>
			102: R_RISCV_RVC_JUMP	.L122

00000104 <.L135>:
 104:	4405                	li	s0,1

00000106 <.LVL210>:
 106:	b72d                	j	30 <.L122>
			106: R_RISCV_RVC_JUMP	.L122

Disassembly of section .text.at_set_value:

00000000 <at_set_value>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	4795                	li	a5,5
   8:	842a                	mv	s0,a0
   a:	02a7ef63          	bltu	a5,a0,48 <.L145>
			a: R_RISCV_BRANCH	.L145
   e:	00000737          	lui	a4,0x0
			e: R_RISCV_HI20	.L141
			e: R_RISCV_RELAX	*ABS*
  12:	00241793          	slli	a5,s0,0x2
  16:	00070713          	mv	a4,a4
			16: R_RISCV_LO12_I	.L141
			16: R_RISCV_RELAX	*ABS*
  1a:	97ba                	add	a5,a5,a4
  1c:	439c                	lw	a5,0(a5)
  1e:	852e                	mv	a0,a1

00000020 <.LVL212>:
  20:	85b6                	mv	a1,a3

00000022 <.LVL213>:
  22:	8782                	jr	a5

00000024 <.L144>:
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	strcpy
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.L144>

0000002c <.L139>:
  2c:	8522                	mv	a0,s0
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

00000036 <.L140>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	memcpy
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.L140>

0000003e <.L147>:
  3e:	4401                	li	s0,0

00000040 <.LVL217>:
  40:	b7f5                	j	2c <.L139>
			40: R_RISCV_RVC_JUMP	.L139

00000042 <.L143>:
  42:	429c                	lw	a5,0(a3)
  44:	c11c                	sw	a5,0(a0)
  46:	bfe5                	j	3e <.L147>
			46: R_RISCV_RVC_JUMP	.L147

00000048 <.L145>:
  48:	547d                	li	s0,-1

0000004a <.LVL220>:
  4a:	b7cd                	j	2c <.L139>
			4a: R_RISCV_RVC_JUMP	.L139

Disassembly of section .text.at_atoi:

00000000 <at_atoi>:
   0:	00000317          	auipc	t1,0x0
			0: R_RISCV_CALL	atoi
			0: R_RISCV_RELAX	*ABS*
   4:	00030067          	jr	t1 # 0 <at_atoi>

Disassembly of section .text.at_get_newline:

00000000 <at_get_newline>:
   0:	00054783          	lbu	a5,0(a0)
   4:	4729                	li	a4,10
   6:	00e78863          	beq	a5,a4,16 <.L151>
			6: R_RISCV_BRANCH	.L151
   a:	4735                	li	a4,13
   c:	4501                	li	a0,0

0000000e <.LVL224>:
   e:	00e78563          	beq	a5,a4,18 <.L150>
			e: R_RISCV_BRANCH	.L150
  12:	450d                	li	a0,3
  14:	8082                	ret

00000016 <.L151>:
  16:	4501                	li	a0,0

00000018 <.L150>:
  18:	8082                	ret

Disassembly of section .text.at_get_parameters:

00000000 <at_get_parameters>:
   0:	7139                	addi	sp,sp,-64
   2:	d452                	sw	s4,40(sp)
   4:	de06                	sw	ra,60(sp)
   6:	dc22                	sw	s0,56(sp)
   8:	da26                	sw	s1,52(sp)
   a:	d84a                	sw	s2,48(sp)
   c:	d64e                	sw	s3,44(sp)
   e:	d256                	sw	s5,36(sp)
  10:	d05a                	sw	s6,32(sp)
  12:	ce5e                	sw	s7,28(sp)
  14:	8a2a                	mv	s4,a0
  16:	4108                	lw	a0,0(a0)

00000018 <.LVL228>:
  18:	c62a                	sw	a0,12(sp)
  1a:	c595                	beqz	a1,46 <.L154>
			1a: R_RISCV_RVC_BRANCH	.L154
  1c:	8ab2                	mv	s5,a2
  1e:	c605                	beqz	a2,46 <.L154>
			1e: R_RISCV_RVC_BRANCH	.L154
  20:	000009b7          	lui	s3,0x0
			20: R_RISCV_HI20	.L158
			20: R_RISCV_RELAX	*ABS*
  24:	8b36                	mv	s6,a3
  26:	842e                	mv	s0,a1
  28:	4901                	li	s2,0
  2a:	4481                	li	s1,0
  2c:	4b95                	li	s7,5
  2e:	00098993          	mv	s3,s3
			2e: R_RISCV_LO12_I	.L158
			2e: R_RISCV_RELAX	*ABS*

00000032 <.L155>:
  32:	03594a63          	blt	s2,s5,66 <.L167>
			32: R_RISCV_BRANCH	.L167
  36:	4501                	li	a0,0

00000038 <.L166>:
  38:	47b2                	lw	a5,12(sp)
  3a:	050a                	slli	a0,a0,0x2

0000003c <.LVL231>:
  3c:	00fa2023          	sw	a5,0(s4) # 0 <at_get_parameters>
  40:	009b2023          	sw	s1,0(s6)
  44:	a031                	j	50 <.L156>
			44: R_RISCV_RVC_JUMP	.L156

00000046 <.L154>:
  46:	4589                	li	a1,2

00000048 <.LVL233>:
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	at_get_newline
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL233>

00000050 <.L156>:
  50:	50f2                	lw	ra,60(sp)
  52:	5462                	lw	s0,56(sp)
  54:	54d2                	lw	s1,52(sp)
  56:	5942                	lw	s2,48(sp)
  58:	59b2                	lw	s3,44(sp)
  5a:	5a22                	lw	s4,40(sp)

0000005c <.LVL235>:
  5c:	5a92                	lw	s5,36(sp)
  5e:	5b02                	lw	s6,32(sp)
  60:	4bf2                	lw	s7,28(sp)
  62:	6121                	addi	sp,sp,64
  64:	8082                	ret

00000066 <.L167>:
  66:	00044783          	lbu	a5,0(s0)

0000006a <.LVL237>:
  6a:	06fbe163          	bltu	s7,a5,cc <.L168>
			6a: R_RISCV_BRANCH	.L168
  6e:	078a                	slli	a5,a5,0x2

00000070 <.LVL238>:
  70:	97ce                	add	a5,a5,s3
  72:	439c                	lw	a5,0(a5)
  74:	4410                	lw	a2,8(s0)
  76:	404c                	lw	a1,4(s0)
  78:	0068                	addi	a0,sp,12
  7a:	8782                	jr	a5

0000007c <.L163>:
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	get_text_para
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.L163>

00000084 <.L164>:
  84:	00157793          	andi	a5,a0,1

00000088 <.LVL240>:
  88:	8105                	srli	a0,a0,0x1

0000008a <.LVL241>:
  8a:	8905                	andi	a0,a0,1

0000008c <.LVL242>:
  8c:	e111                	bnez	a0,90 <.L165>
			8c: R_RISCV_RVC_BRANCH	.L165
  8e:	0485                	addi	s1,s1,1

00000090 <.L165>:
  90:	f7c5                	bnez	a5,38 <.L166>
			90: R_RISCV_RVC_BRANCH	.L166
  92:	0431                	addi	s0,s0,12
  94:	f155                	bnez	a0,38 <.L166>
			94: R_RISCV_RVC_BRANCH	.L166
  96:	0905                	addi	s2,s2,1
  98:	bf69                	j	32 <.L155>
			98: R_RISCV_RVC_JUMP	.L155

0000009a <.L162>:
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	get_tdata_para
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.L162>

000000a2 <.LVL246>:
  a2:	b7cd                	j	84 <.L164>
			a2: R_RISCV_RVC_JUMP	.L164

000000a4 <.L161>:
  a4:	00000097          	auipc	ra,0x0
			a4: R_RISCV_CALL	get_hex_para
			a4: R_RISCV_RELAX	*ABS*
  a8:	000080e7          	jalr	ra # a4 <.L161>

000000ac <.LVL248>:
  ac:	bfe1                	j	84 <.L164>
			ac: R_RISCV_RVC_JUMP	.L164

000000ae <.L160>:
  ae:	00000097          	auipc	ra,0x0
			ae: R_RISCV_CALL	get_di_para
			ae: R_RISCV_RELAX	*ABS*
  b2:	000080e7          	jalr	ra # ae <.L160>

000000b6 <.LVL250>:
  b6:	b7f9                	j	84 <.L164>
			b6: R_RISCV_RVC_JUMP	.L164

000000b8 <.L159>:
  b8:	00000097          	auipc	ra,0x0
			b8: R_RISCV_CALL	get_hi_para
			b8: R_RISCV_RELAX	*ABS*
  bc:	000080e7          	jalr	ra # b8 <.L159>

000000c0 <.LVL252>:
  c0:	b7d1                	j	84 <.L164>
			c0: R_RISCV_RVC_JUMP	.L164

000000c2 <.L157>:
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	get_ip_para
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.L157>

000000ca <.LVL254>:
  ca:	bf6d                	j	84 <.L164>
			ca: R_RISCV_RVC_JUMP	.L164

000000cc <.L168>:
  cc:	4511                	li	a0,4
  ce:	b749                	j	50 <.L156>
			ce: R_RISCV_RVC_JUMP	.L156
