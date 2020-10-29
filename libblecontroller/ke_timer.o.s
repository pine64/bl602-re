
ke_timer.o:     file format elf32-littleriscv


Disassembly of section .text.ble_cmp_abs_time:

00000000 <ble_cmp_abs_time>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_cmp_abs_time>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL1>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL2>:
  1c:	9782                	jalr	a5

0000001e <.LVL3>:
  1e:	c901                	beqz	a0,2e <.L2>
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L3>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL4>:
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL5>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L2>:
  2e:	4488                	lw	a0,8(s1)
  30:	441c                	lw	a5,8(s0)
  32:	8d1d                	sub	a0,a0,a5
  34:	8159                	srli	a0,a0,0x16
  36:	8905                	andi	a0,a0,1

00000038 <.LVL7>:
  38:	b7f5                	j	24 <.L3>

Disassembly of section .text.ble_cmp_timer_id:

00000000 <ble_cmp_timer_id>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_cmp_timer_id>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL9>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL10>:
  1c:	9782                	jalr	a5

0000001e <.LVL11>:
  1e:	c901                	beqz	a0,2e <.L6>
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L7>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL13>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L6>:
  2e:	0044d703          	lhu	a4,4(s1)
  32:	01045793          	srli	a5,s0,0x10
  36:	4501                	li	a0,0
  38:	fef716e3          	bne	a4,a5,24 <.L7>

0000003c <.LVL15>:
  3c:	0064d503          	lhu	a0,6(s1)
  40:	0442                	slli	s0,s0,0x10

00000042 <.LVL16>:
  42:	8041                	srli	s0,s0,0x10
  44:	8d01                	sub	a0,a0,s0
  46:	00153513          	seqz	a0,a0
  4a:	bfe9                	j	24 <.L7>

Disassembly of section .text._patch_ke_time:

00000000 <_patch_ke_time>:
   0:	80000737          	lui	a4,0x80000
   4:	280007b7          	lui	a5,0x28000
   8:	cfd8                	sw	a4,28(a5)

0000000a <.LBB78>:
   a:	28000737          	lui	a4,0x28000

0000000e <.L12>:
   e:	4f54                	lw	a3,28(a4)

00000010 <.LBE81>:
  10:	fe06cfe3          	bltz	a3,e <.L12>

00000014 <.LBB82>:
  14:	4f54                	lw	a3,28(a4)

00000016 <.LBB84>:
  16:	531c                	lw	a5,32(a4)

00000018 <.LBE84>:
  18:	1387b793          	sltiu	a5,a5,312

0000001c <.LVL20>:
  1c:	97b6                	add	a5,a5,a3
  1e:	0796                	slli	a5,a5,0x5
  20:	83a5                	srli	a5,a5,0x9
  22:	c11c                	sw	a5,0(a0)
  24:	4505                	li	a0,1

00000026 <.LVL21>:
  26:	8082                	ret

Disassembly of section .text.ble_ke_time:

00000000 <ble_ke_time>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_time>
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	0068                	addi	a0,sp,12
   e:	9782                	jalr	a5

00000010 <.LVL22>:
  10:	c509                	beqz	a0,1a <.L15>
  12:	4532                	lw	a0,12(sp)

00000014 <.L14>:
  14:	40f2                	lw	ra,28(sp)
  16:	6105                	addi	sp,sp,32
  18:	8082                	ret

0000001a <.L15>:
  1a:	280007b7          	lui	a5,0x28000
  1e:	80000737          	lui	a4,0x80000
  22:	cfd8                	sw	a4,28(a5)

00000024 <.L17>:
  24:	4fd4                	lw	a3,28(a5)

00000026 <.LBE100>:
  26:	fe06cfe3          	bltz	a3,24 <.L17>

0000002a <.LBB102>:
  2a:	4fd8                	lw	a4,28(a5)

0000002c <.LBB104>:
  2c:	5388                	lw	a0,32(a5)

0000002e <.LBE104>:
  2e:	13853513          	sltiu	a0,a0,312

00000032 <.LVL26>:
  32:	953a                	add	a0,a0,a4
  34:	0516                	slli	a0,a0,0x5
  36:	8125                	srli	a0,a0,0x9
  38:	bff1                	j	14 <.L14>

Disassembly of section .text._patch_ble_ke_time_cmp:

00000000 <_patch_ble_ke_time_cmp>:
   0:	40c58633          	sub	a2,a1,a2

00000004 <.LVL28>:
   4:	8259                	srli	a2,a2,0x16
   6:	00164613          	xori	a2,a2,1
   a:	8a05                	andi	a2,a2,1
   c:	00c50023          	sb	a2,0(a0)
  10:	4505                	li	a0,1

00000012 <.LVL29>:
  12:	8082                	ret

Disassembly of section .text.ble_ke_time_cmp:

00000000 <ble_ke_time_cmp>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_time_cmp>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL31>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL32>:
  1c:	9782                	jalr	a5

0000001e <.LVL33>:
  1e:	c901                	beqz	a0,2e <.L22>
  20:	00f14503          	lbu	a0,15(sp)

00000024 <.L23>:
  24:	40f2                	lw	ra,28(sp)
  26:	4462                	lw	s0,24(sp)

00000028 <.LVL34>:
  28:	44d2                	lw	s1,20(sp)

0000002a <.LVL35>:
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L22>:
  2e:	40940533          	sub	a0,s0,s1
  32:	8159                	srli	a0,a0,0x16
  34:	00154513          	xori	a0,a0,1
  38:	8905                	andi	a0,a0,1
  3a:	b7ed                	j	24 <.L23>

Disassembly of section .text._patch_ble_ke_time_past:

00000000 <_patch_ble_ke_time_past>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	c62e                	sw	a1,12(sp)
   8:	842a                	mv	s0,a0

0000000a <.LVL38>:
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL38>

00000012 <.LVL39>:
  12:	45b2                	lw	a1,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL39+0x2>

0000001c <.LVL40>:
  1c:	00a40023          	sb	a0,0(s0)
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)

00000024 <.LVL41>:
  24:	4505                	li	a0,1
  26:	6105                	addi	sp,sp,32

00000028 <.LVL42>:
  28:	8082                	ret

Disassembly of section .text.ble_ke_time_past:

00000000 <ble_ke_time_past>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_time_past>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	00f10513          	addi	a0,sp,15

00000016 <.LVL44>:
  16:	9782                	jalr	a5

00000018 <.LVL45>:
  18:	c519                	beqz	a0,26 <.L28>
  1a:	00f14503          	lbu	a0,15(sp)

0000001e <.L29>:
  1e:	40f2                	lw	ra,28(sp)
  20:	4462                	lw	s0,24(sp)

00000022 <.LVL46>:
  22:	6105                	addi	sp,sp,32
  24:	8082                	ret

00000026 <.L28>:
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.L28>

0000002e <.LVL48>:
  2e:	85a2                	mv	a1,s0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL48+0x2>

00000038 <.LVL49>:
  38:	b7dd                	j	1e <.L29>

Disassembly of section .text._patch_ble_ke_timer_hw_set:

00000000 <_patch_ble_ke_timer_hw_set>:
   0:	c19d                	beqz	a1,26 <.L32>
   2:	4598                	lw	a4,8(a1)

00000004 <.LBB110>:
   4:	280007b7          	lui	a5,0x28000
   8:	0ee7aa23          	sw	a4,244(a5) # 280000f4 <.LASF292+0x27ffeab7>

0000000c <.LBB112>:
   c:	47d8                	lw	a4,12(a5)
   e:	8319                	srli	a4,a4,0x6

00000010 <.LBE112>:
  10:	8b05                	andi	a4,a4,1
  12:	eb01                	bnez	a4,22 <.L33>

00000014 <.LBB114>:
  14:	04000713          	li	a4,64
  18:	cf98                	sw	a4,24(a5)

0000001a <.LBB116>:
  1a:	47d8                	lw	a4,12(a5)
  1c:	04076713          	ori	a4,a4,64
  20:	c7d8                	sw	a4,12(a5)

00000022 <.L33>:
  22:	4505                	li	a0,1

00000024 <.LVL57>:
  24:	8082                	ret

00000026 <.L32>:
  26:	28000737          	lui	a4,0x28000
  2a:	475c                	lw	a5,12(a4)
  2c:	fbf7f793          	andi	a5,a5,-65
  30:	c75c                	sw	a5,12(a4)
  32:	bfc5                	j	22 <.L33>

Disassembly of section .text.ble_ke_timer_hw_set:

00000000 <ble_ke_timer_hw_set>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_hw_set>
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	4501                	li	a0,0

00000014 <.LVL60>:
  14:	9782                	jalr	a5

00000016 <.LVL61>:
  16:	e115                	bnez	a0,3a <.L34>
  18:	c40d                	beqz	s0,42 <.L37>
  1a:	4418                	lw	a4,8(s0)

0000001c <.LBB140>:
  1c:	280007b7          	lui	a5,0x28000
  20:	0ee7aa23          	sw	a4,244(a5) # 280000f4 <.LASF292+0x27ffeab7>

00000024 <.LBB142>:
  24:	47d8                	lw	a4,12(a5)
  26:	8319                	srli	a4,a4,0x6

00000028 <.LBE142>:
  28:	8b05                	andi	a4,a4,1
  2a:	eb01                	bnez	a4,3a <.L34>

0000002c <.LBB144>:
  2c:	04000713          	li	a4,64
  30:	cf98                	sw	a4,24(a5)

00000032 <.LBB146>:
  32:	47d8                	lw	a4,12(a5)
  34:	04076713          	ori	a4,a4,64
  38:	c7d8                	sw	a4,12(a5)

0000003a <.L34>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4422                	lw	s0,8(sp)

0000003e <.LVL68>:
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

00000042 <.L37>:
  42:	28000737          	lui	a4,0x28000
  46:	475c                	lw	a5,12(a4)
  48:	fbf7f793          	andi	a5,a5,-65
  4c:	c75c                	sw	a5,12(a4)
  4e:	b7f5                	j	3a <.L34>

Disassembly of section .text.ble_ke_timer_schedule:

00000000 <ble_ke_timer_schedule>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_schedule>
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	c226                	sw	s1,4(sp)
  10:	c04a                	sw	s2,0(sp)
  12:	4501                	li	a0,0
  14:	9782                	jalr	a5

00000016 <.LVL70>:
  16:	e149                	bnez	a0,98 <.L40>

00000018 <.LBB155>:
  18:	000004b7          	lui	s1,0x0
  1c:	00048493          	mv	s1,s1

00000020 <.LBB157>:
  20:	00000937          	lui	s2,0x0

00000024 <.L44>:
  24:	450d                	li	a0,3
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.L44+0x2>

0000002e <.LVL71>:
  2e:	4880                	lw	s0,16(s1)

00000030 <.LVL72>:
  30:	e819                	bnez	s0,46 <.L42>

00000032 <.LBE155>:
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL73>:
  34:	40b2                	lw	ra,12(sp)
  36:	4492                	lw	s1,4(sp)

00000038 <.LVL74>:
  38:	4902                	lw	s2,0(sp)

0000003a <.LBB163>:
  3a:	4501                	li	a0,0

0000003c <.LBE163>:
  3c:	0141                	addi	sp,sp,16

0000003e <.LBB164>:
  3e:	00000317          	auipc	t1,0x0
  42:	00030067          	jr	t1 # 3e <.LBB164>

00000046 <.L42>:
  46:	4408                	lw	a0,8(s0)
  48:	157d                	addi	a0,a0,-1
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L42+0x4>

00000052 <.LVL76>:
  52:	c905                	beqz	a0,82 <.L43>

00000054 <.L45>:
  54:	01090513          	addi	a0,s2,16 # 10 <ble_ke_timer_schedule+0x10>
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.L45+0x4>

00000060 <.LVL78>:
  60:	842a                	mv	s0,a0

00000062 <.LBE160>:
  62:	00655583          	lhu	a1,6(a0)
  66:	00455503          	lhu	a0,4(a0)
  6a:	0ff00613          	li	a2,255
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LBE160+0xc>

00000076 <.LVL80>:
  76:	8522                	mv	a0,s0
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL80+0x2>

00000080 <.LVL81>:
  80:	b755                	j	24 <.L44>

00000082 <.L43>:
  82:	8522                	mv	a0,s0
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L43+0x2>

0000008c <.LVL82>:
  8c:	4408                	lw	a0,8(s0)
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.LVL82+0x2>

00000096 <.LVL83>:
  96:	fd5d                	bnez	a0,54 <.L45>

00000098 <.L40>:
  98:	40b2                	lw	ra,12(sp)
  9a:	4422                	lw	s0,8(sp)
  9c:	4492                	lw	s1,4(sp)
  9e:	4902                	lw	s2,0(sp)
  a0:	0141                	addi	sp,sp,16
  a2:	8082                	ret

Disassembly of section .text._patch_ble_cmp_abs_time:

00000000 <_patch_ble_cmp_abs_time>:
   0:	459c                	lw	a5,8(a1)
   2:	4618                	lw	a4,8(a2)
   4:	8f99                	sub	a5,a5,a4
   6:	83d9                	srli	a5,a5,0x16
   8:	8b85                	andi	a5,a5,1
   a:	00f50023          	sb	a5,0(a0)

0000000e <.LVL86>:
   e:	4505                	li	a0,1

00000010 <.LVL87>:
  10:	8082                	ret

Disassembly of section .text._patch_ble_cmp_timer_id:

00000000 <_patch_ble_cmp_timer_id>:
   0:	0045d683          	lhu	a3,4(a1)
   4:	01065713          	srli	a4,a2,0x10
   8:	4781                	li	a5,0
   a:	00e69963          	bne	a3,a4,1c <.L49>
   e:	0065d783          	lhu	a5,6(a1)
  12:	0642                	slli	a2,a2,0x10

00000014 <.LVL89>:
  14:	8241                	srli	a2,a2,0x10
  16:	8f91                	sub	a5,a5,a2
  18:	0017b793          	seqz	a5,a5

0000001c <.L49>:
  1c:	00f50023          	sb	a5,0(a0)
  20:	4505                	li	a0,1

00000022 <.LVL90>:
  22:	8082                	ret

Disassembly of section .text._patch_ble_ke_timer_schedule:

00000000 <_patch_ble_ke_timer_schedule>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
   8:	c04a                	sw	s2,0(sp)
   a:	c606                	sw	ra,12(sp)
   c:	c422                	sw	s0,8(sp)
   e:	00048493          	mv	s1,s1

00000012 <.LBB165>:
  12:	00000937          	lui	s2,0x0

00000016 <.L55>:
  16:	450d                	li	a0,3
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.L55+0x2>

00000020 <.LVL93>:
  20:	4880                	lw	s0,16(s1)

00000022 <.LVL94>:
  22:	ec09                	bnez	s0,3c <.L52>
  24:	4501                	li	a0,0
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL94+0x4>

0000002e <.L53>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL96>:
  32:	4492                	lw	s1,4(sp)
  34:	4902                	lw	s2,0(sp)
  36:	4505                	li	a0,1
  38:	0141                	addi	sp,sp,16
  3a:	8082                	ret

0000003c <.L52>:
  3c:	4408                	lw	a0,8(s0)
  3e:	157d                	addi	a0,a0,-1
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.L52+0x4>

00000048 <.LVL98>:
  48:	c905                	beqz	a0,78 <.L54>

0000004a <.L56>:
  4a:	01090513          	addi	a0,s2,16 # 10 <_patch_ble_ke_timer_schedule+0x10>
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L56+0x4>

00000056 <.LVL100>:
  56:	842a                	mv	s0,a0

00000058 <.LBE168>:
  58:	00655583          	lhu	a1,6(a0)
  5c:	00455503          	lhu	a0,4(a0)
  60:	0ff00613          	li	a2,255
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LBE168+0xc>

0000006c <.LVL102>:
  6c:	8522                	mv	a0,s0
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL102+0x2>

00000076 <.LVL103>:
  76:	b745                	j	16 <.L55>

00000078 <.L54>:
  78:	8522                	mv	a0,s0
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L54+0x2>

00000082 <.LVL104>:
  82:	4408                	lw	a0,8(s0)
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL104+0x2>

0000008c <.LVL105>:
  8c:	fd5d                	bnez	a0,4a <.L56>
  8e:	b745                	j	2e <.L53>

Disassembly of section .text._patch_ble_ke_timer_init:

00000000 <_patch_ble_ke_timer_init>:
   0:	000005b7          	lui	a1,0x0
   4:	1141                	addi	sp,sp,-16
   6:	00058593          	mv	a1,a1
   a:	450d                	li	a0,3

0000000c <.LVL107>:
   c:	c606                	sw	ra,12(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL107+0x2>

00000016 <.LVL108>:
  16:	40b2                	lw	ra,12(sp)
  18:	4505                	li	a0,1
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret

Disassembly of section .text.ble_ke_timer_init:

00000000 <ble_ke_timer_init>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_init>
   8:	1141                	addi	sp,sp,-16
   a:	c606                	sw	ra,12(sp)
   c:	4501                	li	a0,0
   e:	9782                	jalr	a5

00000010 <.LVL109>:
  10:	ed01                	bnez	a0,28 <.L60>
  12:	40b2                	lw	ra,12(sp)
  14:	000005b7          	lui	a1,0x0
  18:	00058593          	mv	a1,a1
  1c:	450d                	li	a0,3
  1e:	0141                	addi	sp,sp,16
  20:	00000317          	auipc	t1,0x0
  24:	00030067          	jr	t1 # 20 <.LVL109+0x10>

00000028 <.L60>:
  28:	40b2                	lw	ra,12(sp)
  2a:	0141                	addi	sp,sp,16
  2c:	8082                	ret

Disassembly of section .text._patch_ble_ke_timer_set:

00000000 <_patch_ble_ke_timer_set>:
   0:	1101                	addi	sp,sp,-32
   2:	c05a                	sw	s6,0(sp)
   4:	00000b37          	lui	s6,0x0
   8:	cc22                	sw	s0,24(sp)
   a:	c452                	sw	s4,8(sp)
   c:	c256                	sw	s5,4(sp)
   e:	000b0793          	mv	a5,s6
  12:	ce06                	sw	ra,28(sp)
  14:	ca26                	sw	s1,20(sp)
  16:	c84a                	sw	s2,16(sp)
  18:	c64e                	sw	s3,12(sp)
  1a:	00400737          	lui	a4,0x400
  1e:	8aae                	mv	s5,a1
  20:	8a32                	mv	s4,a2
  22:	4b9c                	lw	a5,16(a5)

00000024 <.LVL112>:
  24:	000b0b13          	mv	s6,s6
  28:	fff70413          	addi	s0,a4,-1 # 3fffff <.LASF292+0x3fe9c2>
  2c:	00e6f563          	bgeu	a3,a4,36 <.L64>
  30:	8436                	mv	s0,a3
  32:	e291                	bnez	a3,36 <.L64>
  34:	4405                	li	s0,1

00000036 <.L64>:
  36:	4901                	li	s2,0
  38:	cb99                	beqz	a5,4e <.L65>
  3a:	0047d703          	lhu	a4,4(a5)
  3e:	01571863          	bne	a4,s5,4e <.L65>
  42:	0067d903          	lhu	s2,6(a5)
  46:	41490933          	sub	s2,s2,s4
  4a:	00193913          	seqz	s2,s2

0000004e <.L65>:
  4e:	010a9613          	slli	a2,s5,0x10

00000052 <.LVL115>:
  52:	000005b7          	lui	a1,0x0

00000056 <.LVL116>:
  56:	000009b7          	lui	s3,0x0
  5a:	01466633          	or	a2,a2,s4
  5e:	00058593          	mv	a1,a1
  62:	01098513          	addi	a0,s3,16 # 10 <_patch_ble_ke_timer_set+0x10>

00000066 <.LVL117>:
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL117>

0000006e <.LVL118>:
  6e:	84aa                	mv	s1,a0

00000070 <.LVL119>:
  70:	ed01                	bnez	a0,88 <.L66>
  72:	4581                	li	a1,0
  74:	4531                	li	a0,12
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL119+0x6>

0000007e <.LVL120>:
  7e:	84aa                	mv	s1,a0
  80:	01551223          	sh	s5,4(a0)
  84:	01451323          	sh	s4,6(a0)

00000088 <.L66>:
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.L66>

00000090 <.LVL122>:
  90:	942a                	add	s0,s0,a0

00000092 <.LVL123>:
  92:	00941793          	slli	a5,s0,0x9
  96:	83a5                	srli	a5,a5,0x9
  98:	00000637          	lui	a2,0x0
  9c:	c49c                	sw	a5,8(s1)
  9e:	00060613          	mv	a2,a2
  a2:	85a6                	mv	a1,s1
  a4:	01098513          	addi	a0,s3,16
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL123+0x16>

000000b0 <.LVL124>:
  b0:	00091663          	bnez	s2,bc <.L67>
  b4:	010b2783          	lw	a5,16(s6) # 10 <_patch_ble_ke_timer_set+0x10>
  b8:	00979863          	bne	a5,s1,c8 <.L68>

000000bc <.L67>:
  bc:	010b2503          	lw	a0,16(s6)
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L67+0x4>

000000c8 <.L68>:
  c8:	8522                	mv	a0,s0
  ca:	00000097          	auipc	ra,0x0
  ce:	000080e7          	jalr	ra # ca <.L68+0x2>

000000d2 <.LVL126>:
  d2:	c511                	beqz	a0,de <.L69>
  d4:	450d                	li	a0,3
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL126+0x4>

000000de <.L69>:
  de:	40f2                	lw	ra,28(sp)
  e0:	4462                	lw	s0,24(sp)

000000e2 <.LVL128>:
  e2:	44d2                	lw	s1,20(sp)

000000e4 <.LVL129>:
  e4:	4942                	lw	s2,16(sp)

000000e6 <.LVL130>:
  e6:	49b2                	lw	s3,12(sp)
  e8:	4a22                	lw	s4,8(sp)
  ea:	4a92                	lw	s5,4(sp)
  ec:	4b02                	lw	s6,0(sp)
  ee:	4505                	li	a0,1
  f0:	6105                	addi	sp,sp,32
  f2:	8082                	ret

Disassembly of section .text.ble_ke_timer_set:

00000000 <ble_ke_timer_set>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_set>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	c256                	sw	s5,4(sp)
   e:	c05a                	sw	s6,0(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	8b2a                	mv	s6,a0
  1c:	8aae                	mv	s5,a1
  1e:	8432                	mv	s0,a2
  20:	86b2                	mv	a3,a2
  22:	862e                	mv	a2,a1

00000024 <.LVL132>:
  24:	85aa                	mv	a1,a0

00000026 <.LVL133>:
  26:	4501                	li	a0,0

00000028 <.LVL134>:
  28:	9782                	jalr	a5

0000002a <.LVL135>:
  2a:	ed71                	bnez	a0,106 <.L77>

0000002c <.LVL136>:
  2c:	00000a37          	lui	s4,0x0
  30:	000a0793          	mv	a5,s4
  34:	00400737          	lui	a4,0x400
  38:	4b9c                	lw	a5,16(a5)

0000003a <.LVL137>:
  3a:	000a0a13          	mv	s4,s4
  3e:	0ce47163          	bgeu	s0,a4,100 <.L86>
  42:	e011                	bnez	s0,46 <.L80>
  44:	4405                	li	s0,1

00000046 <.L80>:
  46:	4901                	li	s2,0
  48:	cb99                	beqz	a5,5e <.L81>
  4a:	0047d703          	lhu	a4,4(a5)
  4e:	01671863          	bne	a4,s6,5e <.L81>
  52:	0067d903          	lhu	s2,6(a5)
  56:	41590933          	sub	s2,s2,s5
  5a:	00193913          	seqz	s2,s2

0000005e <.L81>:
  5e:	010b1613          	slli	a2,s6,0x10
  62:	000005b7          	lui	a1,0x0
  66:	000009b7          	lui	s3,0x0
  6a:	01566633          	or	a2,a2,s5
  6e:	00058593          	mv	a1,a1
  72:	01098513          	addi	a0,s3,16 # 10 <ble_ke_timer_set+0x10>
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.L81+0x18>

0000007e <.LVL140>:
  7e:	84aa                	mv	s1,a0

00000080 <.LVL141>:
  80:	ed01                	bnez	a0,98 <.L82>
  82:	4581                	li	a1,0
  84:	4531                	li	a0,12
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LVL141+0x6>

0000008e <.LVL142>:
  8e:	84aa                	mv	s1,a0
  90:	01651223          	sh	s6,4(a0)
  94:	01551323          	sh	s5,6(a0)

00000098 <.L82>:
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.L82>

000000a0 <.LVL144>:
  a0:	942a                	add	s0,s0,a0

000000a2 <.LVL145>:
  a2:	00941793          	slli	a5,s0,0x9
  a6:	83a5                	srli	a5,a5,0x9
  a8:	00000637          	lui	a2,0x0
  ac:	c49c                	sw	a5,8(s1)
  ae:	00060613          	mv	a2,a2
  b2:	85a6                	mv	a1,s1
  b4:	01098513          	addi	a0,s3,16
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.LVL145+0x16>

000000c0 <.LVL146>:
  c0:	00091663          	bnez	s2,cc <.L83>
  c4:	010a2783          	lw	a5,16(s4) # 10 <ble_ke_timer_set+0x10>
  c8:	00979863          	bne	a5,s1,d8 <.L84>

000000cc <.L83>:
  cc:	010a2503          	lw	a0,16(s4)
  d0:	00000097          	auipc	ra,0x0
  d4:	000080e7          	jalr	ra # d0 <.L83+0x4>

000000d8 <.L84>:
  d8:	8522                	mv	a0,s0
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.L84+0x2>

000000e2 <.LVL148>:
  e2:	c115                	beqz	a0,106 <.L77>
  e4:	4462                	lw	s0,24(sp)

000000e6 <.LVL149>:
  e6:	40f2                	lw	ra,28(sp)
  e8:	44d2                	lw	s1,20(sp)

000000ea <.LVL150>:
  ea:	4942                	lw	s2,16(sp)

000000ec <.LVL151>:
  ec:	49b2                	lw	s3,12(sp)
  ee:	4a22                	lw	s4,8(sp)
  f0:	4a92                	lw	s5,4(sp)
  f2:	4b02                	lw	s6,0(sp)
  f4:	450d                	li	a0,3
  f6:	6105                	addi	sp,sp,32
  f8:	00000317          	auipc	t1,0x0
  fc:	00030067          	jr	t1 # f8 <.LVL151+0xc>

00000100 <.L86>:
 100:	fff70413          	addi	s0,a4,-1 # 3fffff <.LASF292+0x3fe9c2>

00000104 <.LVL153>:
 104:	b789                	j	46 <.L80>

00000106 <.L77>:
 106:	40f2                	lw	ra,28(sp)
 108:	4462                	lw	s0,24(sp)
 10a:	44d2                	lw	s1,20(sp)
 10c:	4942                	lw	s2,16(sp)
 10e:	49b2                	lw	s3,12(sp)
 110:	4a22                	lw	s4,8(sp)
 112:	4a92                	lw	s5,4(sp)
 114:	4b02                	lw	s6,0(sp)
 116:	6105                	addi	sp,sp,32
 118:	8082                	ret

Disassembly of section .text._patch_ble_ke_timer_clear:

00000000 <_patch_ble_ke_timer_clear>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	000004b7          	lui	s1,0x0
   8:	c606                	sw	ra,12(sp)
   a:	c422                	sw	s0,8(sp)
   c:	00048493          	mv	s1,s1
  10:	4880                	lw	s0,16(s1)

00000012 <.LVL156>:
  12:	c43d                	beqz	s0,80 <.L95>
  14:	00445783          	lhu	a5,4(s0)
  18:	00000537          	lui	a0,0x0

0000001c <.LVL157>:
  1c:	04b79463          	bne	a5,a1,64 <.L96>
  20:	00645783          	lhu	a5,6(s0)
  24:	04c79063          	bne	a5,a2,64 <.L96>

00000028 <.LBB169>:
  28:	01050513          	addi	a0,a0,16 # 10 <_patch_ble_ke_timer_clear+0x10>
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LBB169+0x4>

00000034 <.LBE170>:
  34:	4884                	lw	s1,16(s1)

00000036 <.LVL160>:
  36:	8526                	mv	a0,s1
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL160+0x2>

00000040 <.LVL161>:
  40:	cc81                	beqz	s1,58 <.L97>
  42:	4488                	lw	a0,8(s1)
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL161+0x4>

0000004c <.LVL162>:
  4c:	c511                	beqz	a0,58 <.L97>
  4e:	450d                	li	a0,3
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL162+0x4>

00000058 <.L97>:
  58:	8522                	mv	a0,s0
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.L97+0x2>

00000062 <.LVL164>:
  62:	a839                	j	80 <.L95>

00000064 <.L96>:
  64:	05c2                	slli	a1,a1,0x10

00000066 <.LVL166>:
  66:	8e4d                	or	a2,a2,a1

00000068 <.LVL167>:
  68:	000005b7          	lui	a1,0x0
  6c:	00058593          	mv	a1,a1
  70:	01050513          	addi	a0,a0,16
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.LVL167+0xc>

0000007c <.LVL168>:
  7c:	842a                	mv	s0,a0
  7e:	fd69                	bnez	a0,58 <.L97>

00000080 <.L95>:
  80:	40b2                	lw	ra,12(sp)
  82:	4422                	lw	s0,8(sp)

00000084 <.LVL170>:
  84:	4492                	lw	s1,4(sp)
  86:	4505                	li	a0,1
  88:	0141                	addi	sp,sp,16
  8a:	8082                	ret

Disassembly of section .text.ble_ke_timer_clear:

00000000 <ble_ke_timer_clear>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_clear>
   8:	1101                	addi	sp,sp,-32
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	84aa                	mv	s1,a0
  16:	89ae                	mv	s3,a1
  18:	862e                	mv	a2,a1
  1a:	85aa                	mv	a1,a0

0000001c <.LVL172>:
  1c:	4501                	li	a0,0

0000001e <.LVL173>:
  1e:	9782                	jalr	a5

00000020 <.LVL174>:
  20:	e551                	bnez	a0,ac <.L109>
  22:	00000937          	lui	s2,0x0
  26:	00090913          	mv	s2,s2
  2a:	01092403          	lw	s0,16(s2) # 10 <ble_ke_timer_clear+0x10>

0000002e <.LVL175>:
  2e:	cc3d                	beqz	s0,ac <.L109>
  30:	00445783          	lhu	a5,4(s0)
  34:	00000537          	lui	a0,0x0
  38:	04979a63          	bne	a5,s1,8c <.L113>
  3c:	00645783          	lhu	a5,6(s0)
  40:	05379663          	bne	a5,s3,8c <.L113>

00000044 <.LBB172>:
  44:	01050513          	addi	a0,a0,16 # 10 <ble_ke_timer_clear+0x10>
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LBB172+0x4>

00000050 <.LBE173>:
  50:	01092483          	lw	s1,16(s2)

00000054 <.LVL178>:
  54:	8526                	mv	a0,s1
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL178+0x2>

0000005e <.LVL179>:
  5e:	cc81                	beqz	s1,76 <.L114>
  60:	4488                	lw	a0,8(s1)
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL179+0x4>

0000006a <.LVL180>:
  6a:	c511                	beqz	a0,76 <.L114>
  6c:	450d                	li	a0,3
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL180+0x4>

00000076 <.L114>:
  76:	8522                	mv	a0,s0
  78:	4462                	lw	s0,24(sp)

0000007a <.LVL182>:
  7a:	40f2                	lw	ra,28(sp)
  7c:	44d2                	lw	s1,20(sp)
  7e:	4942                	lw	s2,16(sp)
  80:	49b2                	lw	s3,12(sp)
  82:	6105                	addi	sp,sp,32
  84:	00000317          	auipc	t1,0x0
  88:	00030067          	jr	t1 # 84 <.LVL182+0xa>

0000008c <.L113>:
  8c:	01049613          	slli	a2,s1,0x10
  90:	000005b7          	lui	a1,0x0
  94:	01366633          	or	a2,a2,s3
  98:	00058593          	mv	a1,a1
  9c:	01050513          	addi	a0,a0,16
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.L113+0x14>

000000a8 <.LVL184>:
  a8:	842a                	mv	s0,a0
  aa:	f571                	bnez	a0,76 <.L114>

000000ac <.L109>:
  ac:	40f2                	lw	ra,28(sp)
  ae:	4462                	lw	s0,24(sp)
  b0:	44d2                	lw	s1,20(sp)
  b2:	4942                	lw	s2,16(sp)
  b4:	49b2                	lw	s3,12(sp)
  b6:	6105                	addi	sp,sp,32
  b8:	8082                	ret

Disassembly of section .text._patch_ble_ke_timer_active:

00000000 <_patch_ble_ke_timer_active>:
   0:	000007b7          	lui	a5,0x0
   4:	0107a783          	lw	a5,16(a5) # 10 <.L132>

00000008 <.L129>:
   8:	e781                	bnez	a5,10 <.L132>
   a:	00050023          	sb	zero,0(a0)
   e:	a831                	j	2a <.L136>

00000010 <.L132>:
  10:	0047d703          	lhu	a4,4(a5)
  14:	00b71663          	bne	a4,a1,20 <.L130>
  18:	0067d703          	lhu	a4,6(a5)
  1c:	00c70463          	beq	a4,a2,24 <.L131>

00000020 <.L130>:
  20:	439c                	lw	a5,0(a5)
  22:	b7dd                	j	8 <.L129>

00000024 <.L131>:
  24:	4785                	li	a5,1

00000026 <.LVL190>:
  26:	00f50023          	sb	a5,0(a0)

0000002a <.L136>:
  2a:	4505                	li	a0,1

0000002c <.LVL191>:
  2c:	8082                	ret

Disassembly of section .text.ble_ke_timer_active:

00000000 <ble_ke_timer_active>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_active>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	842a                	mv	s0,a0
  12:	84ae                	mv	s1,a1
  14:	862e                	mv	a2,a1
  16:	85aa                	mv	a1,a0

00000018 <.LVL193>:
  18:	00f10513          	addi	a0,sp,15

0000001c <.LVL194>:
  1c:	9782                	jalr	a5

0000001e <.LVL195>:
  1e:	c901                	beqz	a0,2e <.L138>

00000020 <.L145>:
  20:	40f2                	lw	ra,28(sp)
  22:	4462                	lw	s0,24(sp)
  24:	00f14503          	lbu	a0,15(sp)
  28:	44d2                	lw	s1,20(sp)
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

0000002e <.L138>:
  2e:	000007b7          	lui	a5,0x0
  32:	0107a783          	lw	a5,16(a5) # 10 <ble_ke_timer_active+0x10>

00000036 <.L140>:
  36:	e781                	bnez	a5,3e <.L143>
  38:	000107a3          	sb	zero,15(sp)
  3c:	b7d5                	j	20 <.L145>

0000003e <.L143>:
  3e:	0047d703          	lhu	a4,4(a5)
  42:	00871663          	bne	a4,s0,4e <.L141>
  46:	0067d703          	lhu	a4,6(a5)
  4a:	00970463          	beq	a4,s1,52 <.L142>

0000004e <.L141>:
  4e:	439c                	lw	a5,0(a5)
  50:	b7dd                	j	36 <.L140>

00000052 <.L142>:
  52:	4785                	li	a5,1

00000054 <.LVL198>:
  54:	00f107a3          	sb	a5,15(sp)
  58:	b7e1                	j	20 <.L145>

Disassembly of section .text.ble_ke_timer_adjust_all:

00000000 <ble_ke_timer_adjust_all>:
   0:	000007b7          	lui	a5,0x0
   4:	0107a783          	lw	a5,16(a5) # 10 <.L151+0x4>

00000008 <.L150>:
   8:	e391                	bnez	a5,c <.L151>
   a:	8082                	ret

0000000c <.L151>:
   c:	4798                	lw	a4,8(a5)
   e:	972a                	add	a4,a4,a0
  10:	c798                	sw	a4,8(a5)
  12:	439c                	lw	a5,0(a5)
  14:	bfd5                	j	8 <.L150>

Disassembly of section .text._patch_ble_ke_timer_target_get:

00000000 <_patch_ble_ke_timer_target_get>:
   0:	57fd                	li	a5,-1
   2:	c11c                	sw	a5,0(a0)
   4:	000007b7          	lui	a5,0x0
   8:	0107a783          	lw	a5,16(a5) # 10 <.LVL204>

0000000c <.LVL203>:
   c:	c781                	beqz	a5,14 <.L153>
   e:	479c                	lw	a5,8(a5)

00000010 <.LVL204>:
  10:	0792                	slli	a5,a5,0x4
  12:	c11c                	sw	a5,0(a0)

00000014 <.L153>:
  14:	4505                	li	a0,1

00000016 <.LVL206>:
  16:	8082                	ret

Disassembly of section .text.ble_ke_timer_target_get:

00000000 <ble_ke_timer_target_get>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_timer_target_get>
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	0068                	addi	a0,sp,12
   e:	9782                	jalr	a5

00000010 <.LVL207>:
  10:	c509                	beqz	a0,1a <.L158>

00000012 <.L160>:
  12:	40f2                	lw	ra,28(sp)
  14:	4532                	lw	a0,12(sp)
  16:	6105                	addi	sp,sp,32
  18:	8082                	ret

0000001a <.L158>:
  1a:	57fd                	li	a5,-1
  1c:	c63e                	sw	a5,12(sp)
  1e:	000007b7          	lui	a5,0x0
  22:	0107a783          	lw	a5,16(a5) # 10 <.LVL207>

00000026 <.LVL208>:
  26:	d7f5                	beqz	a5,12 <.L160>
  28:	479c                	lw	a5,8(a5)

0000002a <.LVL209>:
  2a:	0792                	slli	a5,a5,0x4
  2c:	c63e                	sw	a5,12(sp)
  2e:	b7d5                	j	12 <.L160>
