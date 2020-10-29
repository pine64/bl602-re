
bl_connection_mgmt.o:     file format elf32-littleriscv


Disassembly of section .text.cm_GetApInfo:

00000000 <cm_GetApInfo>:
   0:	c909                	beqz	a0,12 <.L2>
   2:	00054703          	lbu	a4,0(a0)
   6:	4789                	li	a5,2
   8:	00f71463          	bne	a4,a5,10 <.L3>
   c:	4568                	lw	a0,76(a0)

0000000e <.LVL1>:
   e:	8082                	ret

00000010 <.L3>:
  10:	4501                	li	a0,0

00000012 <.L2>:
  12:	8082                	ret

Disassembly of section .text.cm_GetApData:

00000000 <cm_GetApData>:
   0:	c911                	beqz	a0,14 <.L8>
   2:	00054703          	lbu	a4,0(a0)
   6:	4789                	li	a5,2
   8:	00f71563          	bne	a4,a5,12 <.L9>
   c:	04c50513          	addi	a0,a0,76

00000010 <.LVL5>:
  10:	8082                	ret

00000012 <.L9>:
  12:	4501                	li	a0,0

00000014 <.L8>:
  14:	8082                	ret

Disassembly of section .text.cm_AllocAPResources:

00000000 <cm_AllocAPResources>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	892a                	mv	s2,a0
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <cm_AllocAPResources+0xc>

00000014 <.LVL9>:
  14:	415c                	lw	a5,4(a0)
  16:	eb8d                	bnez	a5,48 <.L15>
  18:	84aa                	mv	s1,a0
  1a:	4531                	li	a0,12

0000001c <.LVL10>:
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL10>

00000024 <.LVL11>:
  24:	842a                	mv	s0,a0

00000026 <.LVL12>:
  26:	4505                	li	a0,1
  28:	c00d                	beqz	s0,4a <.L14>
  2a:	12000513          	li	a0,288
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL12+0x8>

00000036 <.LVL13>:
  36:	c408                	sw	a0,8(s0)
  38:	c0c0                	sw	s0,4(s1)
  3a:	441c                	lw	a5,8(s0)
  3c:	854a                	mv	a0,s2
  3e:	c09c                	sw	a5,0(s1)
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL13+0xa>

00000048 <.L15>:
  48:	4501                	li	a0,0

0000004a <.L14>:
  4a:	40b2                	lw	ra,12(sp)
  4c:	4422                	lw	s0,8(sp)
  4e:	4492                	lw	s1,4(sp)
  50:	4902                	lw	s2,0(sp)

00000052 <.LVL15>:
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text.cm_AllocResources:

00000000 <cm_AllocResources>:
   0:	00054703          	lbu	a4,0(a0)
   4:	4789                	li	a5,2
   6:	00f71663          	bne	a4,a5,12 <.L19>
   a:	00000317          	auipc	t1,0x0
   e:	00030067          	jr	t1 # a <cm_AllocResources+0xa>

00000012 <.L19>:
  12:	4501                	li	a0,0

00000014 <.LVL18>:
  14:	8082                	ret

Disassembly of section .text.cm_InitConnection:

00000000 <cm_InitConnection>:
   0:	1101                	addi	sp,sp,-32
   2:	c64e                	sw	s3,12(sp)
   4:	89aa                	mv	s3,a0
   6:	0ec00513          	li	a0,236

0000000a <.LVL20>:
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	84b6                	mv	s1,a3
  14:	893a                	mv	s2,a4
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL20+0xc>

0000001e <.LVL21>:
  1e:	842a                	mv	s0,a0

00000020 <.LVL22>:
  20:	c905                	beqz	a0,50 <.L20>
  22:	0ec00613          	li	a2,236
  26:	4581                	li	a1,0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL22+0x8>

00000030 <.LVL23>:
  30:	8522                	mv	a0,s0
  32:	01340023          	sb	s3,0(s0)
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL23+0x6>

0000003e <.LVL24>:
  3e:	4785                	li	a5,1
  40:	02f51063          	bne	a0,a5,60 <.L22>
  44:	8522                	mv	a0,s0
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL24+0x8>

0000004e <.LVL25>:
  4e:	4401                	li	s0,0

00000050 <.L20>:
  50:	8522                	mv	a0,s0
  52:	40f2                	lw	ra,28(sp)
  54:	4462                	lw	s0,24(sp)
  56:	44d2                	lw	s1,20(sp)

00000058 <.LVL27>:
  58:	4942                	lw	s2,16(sp)
  5a:	49b2                	lw	s3,12(sp)
  5c:	6105                	addi	sp,sp,32
  5e:	8082                	ret

00000060 <.L22>:
  60:	00090a63          	beqz	s2,74 <.L23>
  64:	4619                	li	a2,6
  66:	85ca                	mv	a1,s2
  68:	04040513          	addi	a0,s0,64
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.L22+0xc>

00000074 <.L23>:
  74:	03040913          	addi	s2,s0,48

00000078 <.LVL30>:
  78:	4619                	li	a2,6
  7a:	4581                	li	a1,0
  7c:	854a                	mv	a0,s2
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL30+0x6>

00000086 <.LVL31>:
  86:	02000613          	li	a2,32
  8a:	4581                	li	a1,0
  8c:	00c40513          	addi	a0,s0,12
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL31+0xa>

00000098 <.LVL32>:
  98:	02040623          	sb	zero,44(s0)
  9c:	d8d5                	beqz	s1,50 <.L20>
  9e:	85a6                	mv	a1,s1
  a0:	4619                	li	a2,6
  a2:	854a                	mv	a0,s2
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL32+0xc>

000000ac <.LVL33>:
  ac:	4619                	li	a2,6
  ae:	85a6                	mv	a1,s1
  b0:	04640513          	addi	a0,s0,70
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL33+0x8>

000000bc <.LVL34>:
  bc:	bf51                	j	50 <.L20>

Disassembly of section .text.cm_DeleteConnection:

00000000 <cm_DeleteConnection>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	00054703          	lbu	a4,0(a0)
   c:	4789                	li	a5,2
   e:	84aa                	mv	s1,a0
  10:	02f71763          	bne	a4,a5,3e <.L35>

00000014 <.LBB10>:
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LBB10>

0000001c <.LVL37>:
  1c:	415c                	lw	a5,4(a0)
  1e:	842a                	mv	s0,a0

00000020 <.LVL38>:
  20:	cf99                	beqz	a5,3e <.L35>
  22:	4788                	lw	a0,8(a5)
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL38+0x4>

0000002c <.LVL39>:
  2c:	4048                	lw	a0,4(s0)
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL39+0x2>

00000036 <.LVL40>:
  36:	00042223          	sw	zero,4(s0)
  3a:	00042023          	sw	zero,0(s0)

0000003e <.L35>:
  3e:	4422                	lw	s0,8(sp)
  40:	40b2                	lw	ra,12(sp)
  42:	8526                	mv	a0,s1
  44:	4492                	lw	s1,4(sp)

00000046 <.LVL42>:
  46:	0141                	addi	sp,sp,16
  48:	00000317          	auipc	t1,0x0
  4c:	00030067          	jr	t1 # 48 <.LVL42+0x2>

Disassembly of section .text.cm_SetPeerAddr:

00000000 <cm_SetPeerAddr>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	842a                	mv	s0,a0
   a:	84b2                	mv	s1,a2
   c:	c981                	beqz	a1,1c <.L41>
   e:	4619                	li	a2,6

00000010 <.LVL45>:
  10:	03050513          	addi	a0,a0,48

00000014 <.LVL46>:
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL46>

0000001c <.L41>:
  1c:	cc89                	beqz	s1,36 <.L40>
  1e:	04040513          	addi	a0,s0,64
  22:	4422                	lw	s0,8(sp)

00000024 <.LVL48>:
  24:	40b2                	lw	ra,12(sp)
  26:	85a6                	mv	a1,s1
  28:	4492                	lw	s1,4(sp)

0000002a <.LVL49>:
  2a:	4619                	li	a2,6
  2c:	0141                	addi	sp,sp,16
  2e:	00000317          	auipc	t1,0x0
  32:	00030067          	jr	t1 # 2e <.LVL49+0x4>

00000036 <.L40>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL51>:
  3a:	4492                	lw	s1,4(sp)

0000003c <.LVL52>:
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.cm_SetComData:

00000000 <cm_SetComData>:
   0:	c1b1                	beqz	a1,44 <.L52>
   2:	1101                	addi	sp,sp,-32
   4:	cc22                	sw	s0,24(sp)
   6:	842a                	mv	s0,a0
   8:	852e                	mv	a0,a1

0000000a <.LVL54>:
   a:	ce06                	sw	ra,28(sp)
   c:	c62e                	sw	a1,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL54+0x4>

00000016 <.LVL55>:
  16:	45b2                	lw	a1,12(sp)
  18:	02a40623          	sb	a0,44(s0)
  1c:	02000613          	li	a2,32
  20:	00c40513          	addi	a0,s0,12
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL55+0xe>

0000002c <.LVL56>:
  2c:	02c44503          	lbu	a0,44(s0)
  30:	47fd                	li	a5,31
  32:	00a7e563          	bltu	a5,a0,3c <.L47>
  36:	942a                	add	s0,s0,a0

00000038 <.LVL57>:
  38:	00040623          	sb	zero,12(s0)

0000003c <.L47>:
  3c:	40f2                	lw	ra,28(sp)
  3e:	4462                	lw	s0,24(sp)
  40:	6105                	addi	sp,sp,32

00000042 <.LVL58>:
  42:	8082                	ret

00000044 <.L52>:
  44:	8082                	ret
