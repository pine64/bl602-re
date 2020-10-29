
lld_util.o:     file format elf32-littleriscv


Disassembly of section .text.lld_util_instant_get:

00000000 <lld_util_instant_get>:
   0:	03655783          	lhu	a5,54(a0)
   4:	4719                	li	a4,6
   6:	04b502a3          	sb	a1,69(a0)
   a:	02e787b3          	mul	a5,a5,a4
   e:	03855703          	lhu	a4,56(a0)
  12:	97ba                	add	a5,a5,a4
  14:	07c2                	slli	a5,a5,0x10
  16:	83c1                	srli	a5,a5,0x10
  18:	02f51a23          	sh	a5,52(a0)
  1c:	853e                	mv	a0,a5

0000001e <.LVL2>:
  1e:	8082                	ret

Disassembly of section .text.lld_util_get_bd_address:

00000000 <lld_util_get_bd_address>:
   0:	28000737          	lui	a4,0x28000
   4:	535c                	lw	a5,36(a4)

00000006 <.LBB63>:
   6:	0087d693          	srli	a3,a5,0x8
   a:	00f50023          	sb	a5,0(a0)

0000000e <.LVL5>:
   e:	00d500a3          	sb	a3,1(a0)

00000012 <.LVL6>:
  12:	0107d693          	srli	a3,a5,0x10
  16:	83e1                	srli	a5,a5,0x18

00000018 <.LVL7>:
  18:	00d50123          	sb	a3,2(a0)
  1c:	00f501a3          	sb	a5,3(a0)

00000020 <.LBB65>:
  20:	571c                	lw	a5,40(a4)

00000022 <.LBB67>:
  22:	00f50223          	sb	a5,4(a0)
  26:	07c2                	slli	a5,a5,0x10

00000028 <.LVL10>:
  28:	83c1                	srli	a5,a5,0x10
  2a:	83a1                	srli	a5,a5,0x8
  2c:	00f502a3          	sb	a5,5(a0)

00000030 <.LBE67>:
  30:	8082                	ret

Disassembly of section .text.lld_util_set_bd_address:

00000000 <lld_util_set_bd_address>:
   0:	00354783          	lbu	a5,3(a0)
   4:	00254703          	lbu	a4,2(a0)

00000008 <.LBB81>:
   8:	00054683          	lbu	a3,0(a0)

0000000c <.LBB82>:
   c:	07a2                	slli	a5,a5,0x8

0000000e <.LBE82>:
   e:	8fd9                	or	a5,a5,a4

00000010 <.LBB83>:
  10:	00154703          	lbu	a4,1(a0)

00000014 <.LBE83>:
  14:	07c2                	slli	a5,a5,0x10

00000016 <.LBB86>:
  16:	05c2                	slli	a1,a1,0x10

00000018 <.LBB84>:
  18:	0722                	slli	a4,a4,0x8

0000001a <.LBE84>:
  1a:	8f55                	or	a4,a4,a3
  1c:	8fd9                	or	a5,a5,a4

0000001e <.LBB90>:
  1e:	28000737          	lui	a4,0x28000
  22:	d35c                	sw	a5,36(a4)

00000024 <.LBB100>:
  24:	00554783          	lbu	a5,5(a0)
  28:	00454683          	lbu	a3,4(a0)

0000002c <.LBB101>:
  2c:	5710                	lw	a2,40(a4)

0000002e <.LBB102>:
  2e:	07a2                	slli	a5,a5,0x8

00000030 <.LBB103>:
  30:	8fd5                	or	a5,a5,a3
  32:	76c1                	lui	a3,0xffff0
  34:	8e75                	and	a2,a2,a3
  36:	8fd1                	or	a5,a5,a2
  38:	d71c                	sw	a5,40(a4)

0000003a <.LBB104>:
  3a:	571c                	lw	a5,40(a4)
  3c:	16fd                	addi	a3,a3,-1
  3e:	8efd                	and	a3,a3,a5
  40:	8ecd                	or	a3,a3,a1
  42:	d714                	sw	a3,40(a4)

00000044 <.LBE104>:
  44:	8082                	ret

Disassembly of section .text.lld_util_freq2chnl:

00000000 <lld_util_freq2chnl>:
   0:	47b1                	li	a5,12
   2:	02f50063          	beq	a0,a5,22 <.L7>
   6:	02700793          	li	a5,39
   a:	02f50163          	beq	a0,a5,2c <.L5>
   e:	cd09                	beqz	a0,28 <.L8>
  10:	47ad                	li	a5,11
  12:	00a7e663          	bltu	a5,a0,1e <.L6>
  16:	157d                	addi	a0,a0,-1

00000018 <.L9>:
  18:	0ff57513          	andi	a0,a0,255

0000001c <.LVL19>:
  1c:	8082                	ret

0000001e <.L6>:
  1e:	1579                	addi	a0,a0,-2

00000020 <.LVL20>:
  20:	bfe5                	j	18 <.L9>

00000022 <.L7>:
  22:	02600513          	li	a0,38

00000026 <.LVL22>:
  26:	8082                	ret

00000028 <.L8>:
  28:	02500513          	li	a0,37

0000002c <.L5>:
  2c:	8082                	ret

Disassembly of section .text.lld_util_get_local_offset:

00000000 <lld_util_get_local_offset>:
   0:	02b67633          	remu	a2,a2,a1

00000004 <.LVL26>:
   4:	9532                	add	a0,a0,a2

00000006 <.LVL27>:
   6:	02b56533          	rem	a0,a0,a1
   a:	8082                	ret

Disassembly of section .text.lld_util_get_peer_offset:

00000000 <lld_util_get_peer_offset>:
   0:	02b67633          	remu	a2,a2,a1

00000004 <.LVL29>:
   4:	952e                	add	a0,a0,a1

00000006 <.LVL30>:
   6:	8d11                	sub	a0,a0,a2
   8:	02b56533          	rem	a0,a0,a1
   c:	0542                	slli	a0,a0,0x10
   e:	8141                	srli	a0,a0,0x10
  10:	8082                	ret

Disassembly of section .text.lld_util_connection_param_set:

00000000 <lld_util_connection_param_set>:
   0:	0005d783          	lhu	a5,0(a1)
   4:	01954703          	lbu	a4,25(a0)
   8:	41d4                	lw	a3,4(a1)
   a:	40e78733          	sub	a4,a5,a4
   e:	00d77363          	bgeu	a4,a3,14 <.L13>
  12:	c1d8                	sw	a4,4(a1)

00000014 <.L13>:
  14:	41d8                	lw	a4,4(a1)
  16:	e319                	bnez	a4,1c <.L14>
  18:	4709                	li	a4,2
  1a:	c1d8                	sw	a4,4(a1)

0000001c <.L14>:
  1c:	41d8                	lw	a4,4(a1)
  1e:	27100693          	li	a3,625
  22:	02d70733          	mul	a4,a4,a3
  26:	0085d683          	lhu	a3,8(a1)
  2a:	c1d8                	sw	a4,4(a1)
  2c:	4518                	lw	a4,8(a0)
  2e:	02f77733          	remu	a4,a4,a5

00000032 <.LVL32>:
  32:	00e6ea63          	bltu	a3,a4,46 <.L15>
  36:	e709                	bnez	a4,40 <.L16>
  38:	e681                	bnez	a3,40 <.L16>

0000003a <.L18>:
  3a:	00f59423          	sh	a5,8(a1)
  3e:	8082                	ret

00000040 <.L16>:
  40:	40e687b3          	sub	a5,a3,a4
  44:	bfdd                	j	3a <.L18>

00000046 <.L15>:
  46:	97b6                	add	a5,a5,a3
  48:	8f99                	sub	a5,a5,a4
  4a:	bfc5                	j	3a <.L18>

Disassembly of section .text.lld_util_dle_set_cs_fields:

00000000 <lld_util_dle_set_cs_fields>:
   0:	05c00793          	li	a5,92
   4:	02f507b3          	mul	a5,a0,a5
   8:	28008637          	lui	a2,0x28008

0000000c <.LBE105>:
   c:	00000737          	lui	a4,0x0

00000010 <.LBB110>:
  10:	0b060593          	addi	a1,a2,176 # 280080b0 <.LASF514+0x28006136>

00000014 <.LBE110>:
  14:	00070713          	mv	a4,a4
  18:	050a                	slli	a0,a0,0x2

0000001a <.LVL34>:
  1a:	953a                	add	a0,a0,a4
  1c:	4118                	lw	a4,0(a0)

0000001e <.LBB111>:
  1e:	0b260613          	addi	a2,a2,178

00000022 <.LBB115>:
  22:	95be                	add	a1,a1,a5
  24:	0005d683          	lhu	a3,0(a1)
  28:	04874703          	lbu	a4,72(a4) # 48 <.LFE1558>

0000002c <.LBB116>:
  2c:	97b2                	add	a5,a5,a2

0000002e <.LBB117>:
  2e:	06c2                	slli	a3,a3,0x10
  30:	82c1                	srli	a3,a3,0x10
  32:	f006f693          	andi	a3,a3,-256
  36:	8ed9                	or	a3,a3,a4
  38:	00d59023          	sh	a3,0(a1)

0000003c <.LBE117>:
  3c:	4118                	lw	a4,0(a0)
  3e:	05075703          	lhu	a4,80(a4)

00000042 <.LBB118>:
  42:	00e79023          	sh	a4,0(a5)

00000046 <.LBE118>:
  46:	8082                	ret

Disassembly of section .text.lld_util_anchor_point_move:

00000000 <lld_util_anchor_point_move>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	de06                	sw	ra,60(sp)
   6:	07b54703          	lbu	a4,123(a0)
   a:	07455783          	lhu	a5,116(a0)
   e:	842a                	mv	s0,a0
  10:	1775                	addi	a4,a4,-3
  12:	00e03733          	snez	a4,a4
  16:	02e11523          	sh	a4,42(sp)
  1a:	05c00713          	li	a4,92
  1e:	02f11423          	sh	a5,40(sp)
  22:	02e787b3          	mul	a5,a5,a4
  26:	27100713          	li	a4,625
  2a:	006c                	addi	a1,sp,12
  2c:	00011a23          	sh	zero,20(sp)
  30:	02010323          	sb	zero,38(sp)
  34:	02010623          	sb	zero,44(sp)
  38:	08e78793          	addi	a5,a5,142
  3c:	02f11723          	sh	a5,46(sp)
  40:	07855783          	lhu	a5,120(a0)
  44:	00f11623          	sh	a5,12(sp)
  48:	01255783          	lhu	a5,18(a0)
  4c:	0828                	addi	a0,sp,24

0000004e <.LVL38>:
  4e:	27078793          	addi	a5,a5,624
  52:	02e7c7b3          	div	a5,a5,a4
  56:	c83e                	sw	a5,16(sp)
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL38+0xa>

00000060 <.LVL39>:
  60:	e15d                	bnez	a0,106 <.L20>

00000062 <.LBB119>:
  62:	07445583          	lhu	a1,116(s0)
  66:	02200693          	li	a3,34
  6a:	4609                	li	a2,2
  6c:	05a2                	slli	a1,a1,0x8
  6e:	0015e593          	ori	a1,a1,1
  72:	05c2                	slli	a1,a1,0x10
  74:	81c1                	srli	a1,a1,0x10
  76:	10900513          	li	a0,265
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LBB119+0x18>

00000082 <.LVL40>:
  82:	4705                	li	a4,1
  84:	00e50023          	sb	a4,0(a0)
  88:	00c15683          	lhu	a3,12(sp)
  8c:	0016d713          	srli	a4,a3,0x1
  90:	00e51123          	sh	a4,2(a0)
  94:	00e51223          	sh	a4,4(a0)
  98:	00e51723          	sh	a4,14(a0)
  9c:	00e51823          	sh	a4,16(a0)
  a0:	05e45703          	lhu	a4,94(s0)
  a4:	00050923          	sb	zero,18(a0)
  a8:	177d                	addi	a4,a4,-1
  aa:	00e51323          	sh	a4,6(a0)
  ae:	6705                	lui	a4,0x1
  b0:	bb870713          	addi	a4,a4,-1096 # bb8 <.LASF399+0x6>
  b4:	00e51423          	sh	a4,8(a0)
  b8:	06045703          	lhu	a4,96(s0)
  bc:	00e51a23          	sh	a4,20(a0)
  c0:	00e51523          	sh	a4,10(a0)
  c4:	06045703          	lhu	a4,96(s0)
  c8:	00e51623          	sh	a4,12(a0)

000000cc <.LBB120>:
  cc:	4410                	lw	a2,8(s0)
  ce:	01415703          	lhu	a4,20(sp)
  d2:	02d67633          	remu	a2,a2,a3
  d6:	9736                	add	a4,a4,a3
  d8:	8f11                	sub	a4,a4,a2
  da:	02d76733          	rem	a4,a4,a3

000000de <.LBE120>:
  de:	0742                	slli	a4,a4,0x10
  e0:	8341                	srli	a4,a4,0x10
  e2:	8305                	srli	a4,a4,0x1
  e4:	00e51b23          	sh	a4,22(a0)
  e8:	577d                	li	a4,-1
  ea:	00e51c23          	sh	a4,24(a0)
  ee:	00e51d23          	sh	a4,26(a0)
  f2:	00e51e23          	sh	a4,28(a0)
  f6:	00e51f23          	sh	a4,30(a0)
  fa:	02e51023          	sh	a4,32(a0)
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LBE120+0x20>

00000106 <.L20>:
 106:	50f2                	lw	ra,60(sp)
 108:	5462                	lw	s0,56(sp)

0000010a <.LVL43>:
 10a:	6121                	addi	sp,sp,64
 10c:	8082                	ret

Disassembly of section .text.lld_util_flush_list:

00000000 <lld_util_flush_list>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0

00000008 <.L25>:
   8:	8522                	mv	a0,s0
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.L25+0x2>

00000012 <.LVL46>:
  12:	c511                	beqz	a0,1e <.L23>
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL46+0x2>

0000001c <.LBE122>:
  1c:	b7f5                	j	8 <.L25>

0000001e <.L23>:
  1e:	40b2                	lw	ra,12(sp)
  20:	4422                	lw	s0,8(sp)

00000022 <.LVL49>:
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

Disassembly of section .text.lld_util_instant_ongoing:

00000000 <lld_util_instant_ongoing>:
   0:	06d54503          	lbu	a0,109(a0)

00000004 <.LVL51>:
   4:	00a03533          	snez	a0,a0
   8:	8082                	ret

Disassembly of section .text.lld_util_compute_ce_max:

00000000 <lld_util_compute_ce_max>:
   0:	01954703          	lbu	a4,25(a0)
   4:	07855783          	lhu	a5,120(a0)
   8:	07455683          	lhu	a3,116(a0)

0000000c <.LBB123>:
   c:	28008637          	lui	a2,0x28008

00000010 <.LBE123>:
  10:	8f99                	sub	a5,a5,a4

00000012 <.LBB128>:
  12:	05c00713          	li	a4,92
  16:	02e686b3          	mul	a3,a3,a4
  1a:	09260813          	addi	a6,a2,146 # 28008092 <.LASF514+0x28006118>

0000001e <.LBE128>:
  1e:	07b54303          	lbu	t1,123(a0)
  22:	17fd                	addi	a5,a5,-1
  24:	27100893          	li	a7,625
  28:	470d                	li	a4,3

0000002a <.LBB129>:
  2a:	9836                	add	a6,a6,a3
  2c:	00085803          	lhu	a6,0(a6)

00000030 <.LBE129>:
  30:	031787b3          	mul	a5,a5,a7

00000034 <.LBB130>:
  34:	0842                	slli	a6,a6,0x10
  36:	01085813          	srli	a6,a6,0x10

0000003a <.LBE130>:
  3a:	00e31963          	bne	t1,a4,4c <.L29>

0000003e <.LBB131>:
  3e:	28000737          	lui	a4,0x28000
  42:	4318                	lw	a4,0(a4)
  44:	8311                	srli	a4,a4,0x4

00000046 <.LBE131>:
  46:	8b3d                	andi	a4,a4,15

00000048 <.L30>:
  48:	8705                	srai	a4,a4,0x1

0000004a <.LVL58>:
  4a:	a00d                	j	6c <.L37>

0000004c <.L29>:
  4c:	0a260613          	addi	a2,a2,162
  50:	9636                	add	a2,a2,a3
  52:	00065703          	lhu	a4,0(a2)
  56:	0742                	slli	a4,a4,0x10
  58:	8341                	srli	a4,a4,0x10

0000005a <.LBE133>:
  5a:	01071613          	slli	a2,a4,0x10
  5e:	8641                	srai	a2,a2,0x10
  60:	fe0654e3          	bgez	a2,48 <.L30>
  64:	0746                	slli	a4,a4,0x11

00000066 <.LVL61>:
  66:	8349                	srli	a4,a4,0x12
  68:	03170733          	mul	a4,a4,a7

0000006c <.L37>:
  6c:	20087613          	andi	a2,a6,512
  70:	8f99                	sub	a5,a5,a4
  72:	15c58713          	addi	a4,a1,348
  76:	c219                	beqz	a2,7c <.L33>
  78:	17c58713          	addi	a4,a1,380

0000007c <.L33>:
  7c:	00175613          	srli	a2,a4,0x1
  80:	02e7d7b3          	divu	a5,a5,a4

00000084 <.LVL64>:
  84:	02e787b3          	mul	a5,a5,a4

00000088 <.LVL65>:
  88:	d8f70713          	addi	a4,a4,-625 # 27fffd8f <.LASF514+0x27ffde15>

0000008c <.LVL66>:
  8c:	8f91                	sub	a5,a5,a2
  8e:	27100613          	li	a2,625
  92:	02c7d7b3          	divu	a5,a5,a2

00000096 <.LVL67>:
  96:	09600613          	li	a2,150
  9a:	02f70733          	mul	a4,a4,a5

0000009e <.LVL68>:
  9e:	00e65363          	bge	a2,a4,a4 <.L34>
  a2:	17fd                	addi	a5,a5,-1

000000a4 <.L34>:
  a4:	28008637          	lui	a2,0x28008
  a8:	0a860713          	addi	a4,a2,168 # 280080a8 <.LASF514+0x2800612e>

000000ac <.LBE135>:
  ac:	01079593          	slli	a1,a5,0x10

000000b0 <.LBB139>:
  b0:	96ba                	add	a3,a3,a4

000000b2 <.LBE139>:
  b2:	81c1                	srli	a1,a1,0x10

000000b4 <.LBB140>:
  b4:	00b69023          	sh	a1,0(a3) # ffff0000 <.LASF514+0xfffee086>

000000b8 <.LBB141>:
  b8:	07455703          	lhu	a4,116(a0)

000000bc <.LBB144>:
  bc:	05c00693          	li	a3,92
  c0:	0a660613          	addi	a2,a2,166
  c4:	02d70733          	mul	a4,a4,a3
  c8:	9732                	add	a4,a4,a2
  ca:	00075683          	lhu	a3,0(a4)

000000ce <.LBE144>:
  ce:	00d7f463          	bgeu	a5,a3,d6 <.L28>

000000d2 <.LBB145>:
  d2:	00b71023          	sh	a1,0(a4)

000000d6 <.L28>:
  d6:	8082                	ret

Disassembly of section .text.lld_util_elt_programmed:

00000000 <lld_util_elt_programmed>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <lld_util_elt_programmed+0x8>

00000010 <.LVL76>:
  10:	441c                	lw	a5,8(s0)
  12:	40b2                	lw	ra,12(sp)
  14:	40a78533          	sub	a0,a5,a0

00000018 <.LVL77>:
  18:	01944783          	lbu	a5,25(s0)
  1c:	4422                	lw	s0,8(sp)

0000001e <.LVL78>:
  1e:	0ff57513          	andi	a0,a0,255
  22:	00f53533          	sltu	a0,a0,a5
  26:	00154513          	xori	a0,a0,1
  2a:	0141                	addi	sp,sp,16
  2c:	8082                	ret

Disassembly of section .text.lld_util_priority_set:

00000000 <lld_util_priority_set>:
   0:	000007b7          	lui	a5,0x0
   4:	4719                	li	a4,6
   6:	00078793          	mv	a5,a5
   a:	02b76163          	bltu	a4,a1,2c <.L41>
   e:	00000737          	lui	a4,0x0
  12:	00070713          	mv	a4,a4
  16:	058a                	slli	a1,a1,0x2

00000018 <.LVL80>:
  18:	95ba                	add	a1,a1,a4
  1a:	4198                	lw	a4,0(a1)
  1c:	8702                	jr	a4

0000001e <.L44>:
  1e:	00000737          	lui	a4,0x0
  22:	01472703          	lw	a4,20(a4) # 14 <lld_util_priority_set+0x14>
  26:	02174703          	lbu	a4,33(a4)
  2a:	c701                	beqz	a4,32 <.L42>

0000002c <.L41>:
  2c:	00a7c783          	lbu	a5,10(a5) # a <lld_util_priority_set+0xa>
  30:	a019                	j	36 <.L52>

00000032 <.L42>:
  32:	00c7c783          	lbu	a5,12(a5)

00000036 <.L52>:
  36:	00f50b23          	sb	a5,22(a0)
  3a:	06f50ea3          	sb	a5,125(a0)
  3e:	8082                	ret

00000040 <.L49>:
  40:	0007c783          	lbu	a5,0(a5)
  44:	bfcd                	j	36 <.L52>

00000046 <.L46>:
  46:	0067c783          	lbu	a5,6(a5)
  4a:	b7f5                	j	36 <.L52>

0000004c <.L45>:
  4c:	0087c783          	lbu	a5,8(a5)
  50:	b7dd                	j	36 <.L52>

00000052 <.L48>:
  52:	0027c783          	lbu	a5,2(a5)
  56:	b7c5                	j	36 <.L52>

00000058 <.L47>:
  58:	0047c783          	lbu	a5,4(a5)
  5c:	bfe9                	j	36 <.L52>

Disassembly of section .text.lld_util_priority_update:

00000000 <lld_util_priority_update>:
   0:	06b50ea3          	sb	a1,125(a0)
   4:	8082                	ret

Disassembly of section .text.lld_util_get_tx_pkt_cnt:

00000000 <lld_util_get_tx_pkt_cnt>:
   0:	07054503          	lbu	a0,112(a0)

00000004 <.LVL83>:
   4:	8082                	ret

Disassembly of section .text.lld_util_eff_tx_time_set:

00000000 <lld_util_eff_tx_time_set>:
   0:	06b51423          	sh	a1,104(a0)
   4:	06c51523          	sh	a2,106(a0)
   8:	8082                	ret
