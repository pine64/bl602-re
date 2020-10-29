
scan_task.o:     file format elf32-littleriscv


Disassembly of section .text.scan_cancel_req_handler:

00000000 <scan_cancel_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4509                	li	a0,2

00000004 <.LVL1>:
   4:	c636                	sw	a3,12(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <.LVL1+0x4>

00000010 <.LVL2>:
  10:	46b2                	lw	a3,12(sp)
  12:	c911                	beqz	a0,26 <.L2>
  14:	000007b7          	lui	a5,0x0
  18:	4705                	li	a4,1
  1a:	00e78da3          	sb	a4,27(a5) # 1b <.LVL2+0xb>

0000001e <.L3>:
  1e:	40f2                	lw	ra,28(sp)
  20:	4501                	li	a0,0
  22:	6105                	addi	sp,sp,32
  24:	8082                	ret

00000026 <.L2>:
  26:	85b6                	mv	a1,a3
  28:	4505                	li	a0,1

0000002a <.LVL5>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL5>

00000032 <.LVL6>:
  32:	b7f5                	j	1e <.L3>

Disassembly of section .text.scan_start_req_handler:

00000000 <scan_start_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	6505                	lui	a0,0x1

00000006 <.LVL8>:
   6:	8936                	mv	s2,a3
   8:	c226                	sw	s1,4(sp)
   a:	4685                	li	a3,1

0000000c <.LVL9>:
   c:	84ae                	mv	s1,a1
   e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF648+0x5f>
  12:	85ca                	mv	a1,s2

00000014 <.LVL10>:
  14:	c422                	sw	s0,8(sp)
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL10+0x4>

00000020 <.LVL11>:
  20:	842a                	mv	s0,a0

00000022 <.LVL12>:
  22:	4509                	li	a0,2
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL12+0x2>

0000002c <.LVL13>:
  2c:	ed39                	bnez	a0,8a <.L6>
  2e:	14f4c783          	lbu	a5,335(s1)
  32:	ef99                	bnez	a5,50 <.L7>
  34:	000005b7          	lui	a1,0x0
  38:	00000537          	lui	a0,0x0
  3c:	04600613          	li	a2,70
  40:	00058593          	mv	a1,a1
  44:	00050513          	mv	a0,a0
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL13+0x1c>

00000050 <.L7>:
  50:	000007b7          	lui	a5,0x0
  54:	00040023          	sb	zero,0(s0)
  58:	00078793          	mv	a5,a5
  5c:	8526                	mv	a0,s1
  5e:	cb84                	sw	s1,16(a5)
  60:	00078d23          	sb	zero,26(a5) # 1a <.LVL10+0x6>
  64:	01279c23          	sh	s2,24(a5)
  68:	4485                	li	s1,1

0000006a <.LVL15>:
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL15>

00000072 <.L8>:
  72:	8522                	mv	a0,s0
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L8+0x2>

0000007c <.LVL17>:
  7c:	40b2                	lw	ra,12(sp)
  7e:	4422                	lw	s0,8(sp)

00000080 <.LVL18>:
  80:	8526                	mv	a0,s1
  82:	4902                	lw	s2,0(sp)
  84:	4492                	lw	s1,4(sp)

00000086 <.LVL19>:
  86:	0141                	addi	sp,sp,16
  88:	8082                	ret

0000008a <.L6>:
  8a:	47a1                	li	a5,8
  8c:	00f40023          	sb	a5,0(s0)
  90:	4481                	li	s1,0

00000092 <.LVL21>:
  92:	b7c5                	j	72 <.L8>

Disassembly of section .text.mm_scan_channel_end_ind_handler:

00000000 <mm_scan_channel_end_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4509                	li	a0,2

00000004 <.LVL23>:
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <.LVL23+0x4>

00000010 <.LVL24>:
  10:	478d                	li	a5,3
  12:	02f50063          	beq	a0,a5,32 <.L11>
  16:	000005b7          	lui	a1,0x0
  1a:	00000537          	lui	a0,0x0
  1e:	0c400613          	li	a2,196
  22:	00058593          	mv	a1,a1
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL24+0x1a>

00000032 <.L11>:
  32:	00000737          	lui	a4,0x0
  36:	00070713          	mv	a4,a4
  3a:	435c                	lw	a5,4(a4)
  3c:	76f9                	lui	a3,0xffffe
  3e:	dff68693          	addi	a3,a3,-513 # ffffddff <.LASF169+0xffffbc98>
  42:	8ff5                	and	a5,a5,a3
  44:	c35c                	sw	a5,4(a4)

00000046 <.LBB16>:
  46:	4318                	lw	a4,0(a4)

00000048 <.LBE14>:
  48:	00000437          	lui	s0,0x0

0000004c <.LBB21>:
  4c:	8fd9                	or	a5,a5,a4

0000004e <.LBB18>:
  4e:	44b00737          	lui	a4,0x44b00
  52:	d33c                	sw	a5,96(a4)

00000054 <.LBE18>:
  54:	00040713          	mv	a4,s0
  58:	01a74783          	lbu	a5,26(a4) # 44b0001a <.LASF169+0x44afdeb3>
  5c:	4b08                	lw	a0,16(a4)
  5e:	00040413          	mv	s0,s0
  62:	0785                	addi	a5,a5,1
  64:	14f54683          	lbu	a3,335(a0) # 14f <.LLST22+0x4>
  68:	0ff7f793          	andi	a5,a5,255
  6c:	00f70d23          	sb	a5,26(a4)
  70:	00d7fe63          	bgeu	a5,a3,8c <.L12>
  74:	01b74783          	lbu	a5,27(a4)
  78:	eb91                	bnez	a5,8c <.L12>
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LBE18+0x26>

00000082 <.L13>:
  82:	40b2                	lw	ra,12(sp)
  84:	4422                	lw	s0,8(sp)
  86:	4501                	li	a0,0
  88:	0141                	addi	sp,sp,16
  8a:	8082                	ret

0000008c <.L12>:
  8c:	1551                	addi	a0,a0,-12
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.L12+0x2>

00000096 <.LVL30>:
  96:	01b44783          	lbu	a5,27(s0) # 1b <.LVL24+0xb>
  9a:	01845583          	lhu	a1,24(s0)
  9e:	cf99                	beqz	a5,bc <.L14>
  a0:	4501                	li	a0,0
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.LVL30+0xc>

000000aa <.LVL31>:
  aa:	00040da3          	sb	zero,27(s0)

000000ae <.L15>:
  ae:	4581                	li	a1,0
  b0:	4509                	li	a0,2
  b2:	00000097          	auipc	ra,0x0
  b6:	000080e7          	jalr	ra # b2 <.L15+0x4>

000000ba <.LVL32>:
  ba:	b7e1                	j	82 <.L13>

000000bc <.L14>:
  bc:	6505                	lui	a0,0x1
  be:	4609                	li	a2,2
  c0:	80250513          	addi	a0,a0,-2046 # 802 <.LASF648+0x60>
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.L14+0x8>

000000cc <.LVL33>:
  cc:	b7cd                	j	ae <.L15>

Disassembly of section .text.mm_scan_channel_start_ind_handler:

00000000 <mm_scan_channel_start_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
   6:	00078793          	mv	a5,a5
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	c226                	sw	s1,4(sp)
  10:	4509                	li	a0,2

00000012 <.LVL35>:
  12:	4b80                	lw	s0,16(a5)
  14:	01a7c483          	lbu	s1,26(a5) # 1a <.LVL36+0x2>

00000018 <.LVL36>:
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL36>

00000020 <.LVL37>:
  20:	4789                	li	a5,2
  22:	02f50063          	beq	a0,a5,42 <.L18>
  26:	000005b7          	lui	a1,0x0
  2a:	00000537          	lui	a0,0x0
  2e:	09d00613          	li	a2,157
  32:	00058593          	mv	a1,a1
  36:	00050513          	mv	a0,a0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL37+0x1a>

00000042 <.L18>:
  42:	00000737          	lui	a4,0x0
  46:	00070713          	mv	a4,a4
  4a:	435c                	lw	a5,4(a4)
  4c:	6689                	lui	a3,0x2
  4e:	20068693          	addi	a3,a3,512 # 2200 <.LASF169+0x99>
  52:	8fd5                	or	a5,a5,a3
  54:	c35c                	sw	a5,4(a4)

00000056 <.LBB34>:
  56:	4318                	lw	a4,0(a4)
  58:	8fd9                	or	a5,a5,a4

0000005a <.LBB36>:
  5a:	44b00737          	lui	a4,0x44b00
  5e:	d33c                	sw	a5,96(a4)

00000060 <.LBE32>:
  60:	4799                	li	a5,6
  62:	02f484b3          	mul	s1,s1,a5

00000066 <.LVL41>:
  66:	9426                	add	s0,s0,s1
  68:	00344783          	lbu	a5,3(s0)
  6c:	8b85                	andi	a5,a5,1
  6e:	e789                	bnez	a5,78 <.L19>
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL41+0xa>

00000078 <.L19>:
  78:	4509                	li	a0,2
  7a:	458d                	li	a1,3
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L19+0x4>

00000084 <.LVL43>:
  84:	40b2                	lw	ra,12(sp)
  86:	4422                	lw	s0,8(sp)
  88:	4492                	lw	s1,4(sp)
  8a:	4501                	li	a0,0
  8c:	0141                	addi	sp,sp,16
  8e:	8082                	ret
