
lld_evt.o:     file format elf32-littleriscv


Disassembly of section .text.lld_evt_winsize_change:

00000000 <lld_evt_winsize_change>:
   0:	555c                	lw	a5,44(a0)
   2:	5918                	lw	a4,48(a0)
   4:	01079613          	slli	a2,a5,0x10
   8:	0706                	slli	a4,a4,0x1

0000000a <.LVL1>:
   a:	00e786b3          	add	a3,a5,a4
   e:	00065b63          	bgez	a2,24 <.L3>
  12:	66a1                	lui	a3,0x8
  14:	16fd                	addi	a3,a3,-1
  16:	8ff5                	and	a5,a5,a3
  18:	27100693          	li	a3,625
  1c:	02d787b3          	mul	a5,a5,a3
  20:	00e786b3          	add	a3,a5,a4

00000024 <.L3>:
  24:	4739                	li	a4,14
  26:	87b6                	mv	a5,a3
  28:	00e6f363          	bgeu	a3,a4,2e <.L4>
  2c:	47b9                	li	a5,14

0000002e <.L4>:
  2e:	05055703          	lhu	a4,80(a0)
  32:	03655603          	lhu	a2,54(a0)
  36:	8305                	srli	a4,a4,0x1
  38:	02c70733          	mul	a4,a4,a2
  3c:	27100613          	li	a2,625
  40:	02c70733          	mul	a4,a4,a2
  44:	f6a70713          	addi	a4,a4,-150
  48:	00e7ea63          	bltu	a5,a4,5c <.L5>
  4c:	e981                	bnez	a1,5c <.L5>
  4e:	05654783          	lbu	a5,86(a0)

00000052 <.LVL4>:
  52:	0107e793          	ori	a5,a5,16
  56:	04f50b23          	sb	a5,86(a0)
  5a:	8082                	ret

0000005c <.L5>:
  5c:	6711                	lui	a4,0x4
  5e:	02e6e063          	bltu	a3,a4,7e <.L7>
  62:	27100713          	li	a4,625
  66:	27078793          	addi	a5,a5,624

0000006a <.LVL6>:
  6a:	02e7d7b3          	divu	a5,a5,a4

0000006e <.LVL7>:
  6e:	7761                	lui	a4,0xffff8
  70:	8fd9                	or	a5,a5,a4
  72:	00455703          	lhu	a4,4(a0)
  76:	07c2                	slli	a5,a5,0x10
  78:	83c1                	srli	a5,a5,0x10

0000007a <.LVL8>:
  7a:	c701                	beqz	a4,82 <.L8>
  7c:	0785                	addi	a5,a5,1

0000007e <.L7>:
  7e:	07c2                	slli	a5,a5,0x10
  80:	83c1                	srli	a5,a5,0x10

00000082 <.L8>:
  82:	04c55703          	lhu	a4,76(a0)

00000086 <.LBB267>:
  86:	05c00693          	li	a3,92
  8a:	02d70733          	mul	a4,a4,a3

0000008e <.LVL12>:
  8e:	280086b7          	lui	a3,0x28008
  92:	0a268693          	addi	a3,a3,162 # 280080a2 <.LASF706+0x28004871>
  96:	9736                	add	a4,a4,a3
  98:	00f71023          	sh	a5,0(a4) # ffff8000 <.LASF706+0xffff47cf>

0000009c <.LBE267>:
  9c:	d55c                	sw	a5,44(a0)
  9e:	8082                	ret

Disassembly of section .text.lld_evt_slave_time_compute:

00000000 <lld_evt_slave_time_compute>:
   0:	27100893          	li	a7,625
   4:	031585b3          	mul	a1,a1,a7

00000008 <.LVL15>:
   8:	02c55783          	lhu	a5,44(a0)
   c:	07455603          	lhu	a2,116(a0)
  10:	02852e03          	lw	t3,40(a0)
  14:	95be                	add	a1,a1,a5

00000016 <.LBB268>:
  16:	0315d6b3          	divu	a3,a1,a7

0000001a <.LBB273>:
  1a:	05c00793          	li	a5,92
  1e:	02f60633          	mul	a2,a2,a5

00000022 <.LVL17>:
  22:	280087b7          	lui	a5,0x28008
  26:	0a278793          	addi	a5,a5,162 # 280080a2 <.LASF706+0x28004871>

0000002a <.LBE273>:
  2a:	96f2                	add	a3,a3,t3
  2c:	0696                	slli	a3,a3,0x5
  2e:	8295                	srli	a3,a3,0x5

00000030 <.LBB274>:
  30:	97b2                	add	a5,a5,a2
  32:	0007d783          	lhu	a5,0(a5)

00000036 <.LBE274>:
  36:	0315feb3          	remu	t4,a1,a7

0000003a <.LBB275>:
  3a:	07c2                	slli	a5,a5,0x10
  3c:	83c1                	srli	a5,a5,0x10

0000003e <.LBE275>:
  3e:	01079313          	slli	t1,a5,0x10
  42:	41035313          	srai	t1,t1,0x10
  46:	06035663          	bgez	t1,b2 <.L14>
  4a:	01179813          	slli	a6,a5,0x11
  4e:	01285813          	srli	a6,a6,0x12
  52:	03180833          	mul	a6,a6,a7
  56:	410585b3          	sub	a1,a1,a6

0000005a <.L15>:
  5a:	fdf58593          	addi	a1,a1,-33

0000005e <.LVL20>:
  5e:	27100893          	li	a7,625
  62:	0315d733          	divu	a4,a1,a7

00000066 <.LVL21>:
  66:	d514                	sw	a3,40(a0)
  68:	03d51623          	sh	t4,44(a0)
  6c:	9772                	add	a4,a4,t3

0000006e <.LVL22>:
  6e:	0716                	slli	a4,a4,0x5
  70:	8315                	srli	a4,a4,0x5
  72:	c518                	sw	a4,8(a0)
  74:	0315f833          	remu	a6,a1,a7

00000078 <.LVL23>:
  78:	04035163          	bgez	t1,ba <.L16>
  7c:	07c6                	slli	a5,a5,0x11

0000007e <.LVL24>:
  7e:	83c5                	srli	a5,a5,0x11

00000080 <.L17>:
  80:	4938                	lw	a4,80(a0)
  82:	00f51923          	sh	a5,18(a0)
  86:	00875703          	lhu	a4,8(a4)
  8a:	97ba                	add	a5,a5,a4
  8c:	27100713          	li	a4,625
  90:	02e787b3          	mul	a5,a5,a4

00000094 <.LBB276>:
  94:	28008737          	lui	a4,0x28008
  98:	09070713          	addi	a4,a4,144 # 28008090 <.LASF706+0x2800485f>
  9c:	963a                	add	a2,a2,a4

0000009e <.LBE276>:
  9e:	00f51923          	sh	a5,18(a0)
  a2:	01081793          	slli	a5,a6,0x10
  a6:	83c1                	srli	a5,a5,0x10

000000a8 <.LBB279>:
  a8:	00f61023          	sh	a5,0(a2)

000000ac <.LBE279>:
  ac:	00f51a23          	sh	a5,20(a0)
  b0:	8082                	ret

000000b2 <.L14>:
  b2:	0017d713          	srli	a4,a5,0x1
  b6:	8d99                	sub	a1,a1,a4
  b8:	b74d                	j	5a <.L15>

000000ba <.L16>:
  ba:	0317d7b3          	divu	a5,a5,a7

000000be <.LVL30>:
  be:	0785                	addi	a5,a5,1
  c0:	07c2                	slli	a5,a5,0x10
  c2:	83c1                	srli	a5,a5,0x10
  c4:	bf75                	j	80 <.L17>

Disassembly of section .text.lld_evt_prevent_stop:

00000000 <lld_evt_prevent_stop>:
   0:	8082                	ret

Disassembly of section .text.lld_evt_deferred_elt_push:

00000000 <lld_evt_deferred_elt_push>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	842e                	mv	s0,a1
   8:	84aa                	mv	s1,a0
   a:	4581                	li	a1,0

0000000c <.LVL33>:
   c:	4531                	li	a0,12

0000000e <.LVL34>:
   e:	ce06                	sw	ra,28(sp)
  10:	c632                	sw	a2,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL34+0x4>

0000001a <.LVL35>:
  1a:	4632                	lw	a2,12(sp)
  1c:	c144                	sw	s1,4(a0)
  1e:	00850423          	sb	s0,8(a0)
  22:	00c504a3          	sb	a2,9(a0)
  26:	4462                	lw	s0,24(sp)
  28:	40f2                	lw	ra,28(sp)
  2a:	44d2                	lw	s1,20(sp)

0000002c <.LVL36>:
  2c:	85aa                	mv	a1,a0

0000002e <.LVL37>:
  2e:	00000537          	lui	a0,0x0

00000032 <.LVL38>:
  32:	01050513          	addi	a0,a0,16 # 10 <.LVL34+0x2>
  36:	6105                	addi	sp,sp,32
  38:	00000317          	auipc	t1,0x0
  3c:	00030067          	jr	t1 # 38 <.LVL38+0x6>

Disassembly of section .text.lld_evt_elt_wait_insert:

00000000 <lld_evt_elt_wait_insert>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	4581                	li	a1,0
   6:	842a                	mv	s0,a0
   8:	4521                	li	a0,8

0000000a <.LVL41>:
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL41+0x2>

00000014 <.LVL42>:
  14:	c140                	sw	s0,4(a0)
  16:	4422                	lw	s0,8(sp)

00000018 <.LVL43>:
  18:	40b2                	lw	ra,12(sp)
  1a:	85aa                	mv	a1,a0

0000001c <.LVL44>:
  1c:	00000537          	lui	a0,0x0

00000020 <.LVL45>:
  20:	00850513          	addi	a0,a0,8 # 8 <lld_evt_elt_wait_insert+0x8>
  24:	0141                	addi	sp,sp,16
  26:	00000317          	auipc	t1,0x0
  2a:	00030067          	jr	t1 # 26 <.LVL45+0x6>

Disassembly of section .text.lld_evt_deferred_elt_pop:

00000000 <lld_evt_deferred_elt_pop>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	84aa                	mv	s1,a0
   a:	c62e                	sw	a1,12(sp)

0000000c <.LBB282>:
   c:	30002473          	csrr	s0,mstatus

00000010 <.LBB283>:
  10:	300477f3          	csrrci	a5,mstatus,8

00000014 <.LBE283>:
  14:	00000537          	lui	a0,0x0

00000018 <.LVL50>:
  18:	01050513          	addi	a0,a0,16 # 10 <.LBB283>
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL50+0x4>

00000024 <.LVL51>:
  24:	87aa                	mv	a5,a0

00000026 <.LVL52>:
  26:	30041073          	csrw	mstatus,s0

0000002a <.LBE284>:
  2a:	c105                	beqz	a0,4a <.L23>
  2c:	00854703          	lbu	a4,8(a0)
  30:	4140                	lw	s0,4(a0)

00000032 <.LVL53>:
  32:	45b2                	lw	a1,12(sp)
  34:	00e48023          	sb	a4,0(s1)
  38:	00954783          	lbu	a5,9(a0)
  3c:	00f58023          	sb	a5,0(a1)
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL53+0xe>

00000048 <.LVL54>:
  48:	87a2                	mv	a5,s0

0000004a <.L23>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	4462                	lw	s0,24(sp)
  4e:	44d2                	lw	s1,20(sp)

00000050 <.LVL56>:
  50:	853e                	mv	a0,a5
  52:	6105                	addi	sp,sp,32

00000054 <.LVL57>:
  54:	8082                	ret

Disassembly of section .text.lld_evt_get_next_free_slot:

00000000 <lld_evt_get_next_free_slot>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5

00000008 <.LBE301>:
   8:	4398                	lw	a4,0(a5)
   a:	cf09                	beqz	a4,24 <.L30>

0000000c <.LBB303>:
   c:	43dc                	lw	a5,4(a5)

0000000e <.LVL59>:
   e:	27100713          	li	a4,625
  12:	0127d503          	lhu	a0,18(a5) # 12 <.LVL59+0x4>
  16:	479c                	lw	a5,8(a5)

00000018 <.LVL60>:
  18:	02e55533          	divu	a0,a0,a4
  1c:	953e                	add	a0,a0,a5
  1e:	0516                	slli	a0,a0,0x5
  20:	8115                	srli	a0,a0,0x5

00000022 <.LBE303>:
  22:	8082                	ret

00000024 <.L30>:
  24:	280007b7          	lui	a5,0x28000
  28:	80000737          	lui	a4,0x80000
  2c:	cfd8                	sw	a4,28(a5)

0000002e <.L32>:
  2e:	4fd4                	lw	a3,28(a5)

00000030 <.LBE310>:
  30:	fe06cfe3          	bltz	a3,2e <.L32>

00000034 <.LBB312>:
  34:	4fc8                	lw	a0,28(a5)

00000036 <.LBE304>:
  36:	8082                	ret

Disassembly of section .text.lld_evt_elt_wait_get:

00000000 <lld_evt_elt_wait_get>:
   0:	cd0d                	beqz	a0,3a <.L35>

00000002 <.LBB322>:
   2:	1141                	addi	sp,sp,-16

00000004 <.LBB327>:
   4:	000007b7          	lui	a5,0x0

00000008 <.LBE327>:
   8:	c422                	sw	s0,8(sp)

0000000a <.LBB328>:
   a:	0087a403          	lw	s0,8(a5) # 8 <.LBE327>

0000000e <.LBE328>:
   e:	c606                	sw	ra,12(sp)

00000010 <.L36>:
  10:	cc11                	beqz	s0,2c <.L34>
  12:	405c                	lw	a5,4(s0)
  14:	02a79163          	bne	a5,a0,36 <.L37>
  18:	00000537          	lui	a0,0x0

0000001c <.LVL68>:
  1c:	4601                	li	a2,0
  1e:	85a2                	mv	a1,s0
  20:	00850513          	addi	a0,a0,8 # 8 <.LBE327>
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL68+0x8>

0000002c <.L34>:
  2c:	8522                	mv	a0,s0
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL70>:
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

00000036 <.L37>:
  36:	4000                	lw	s0,0(s0)
  38:	bfe1                	j	10 <.L36>

0000003a <.L35>:
  3a:	00000537          	lui	a0,0x0

0000003e <.LVL74>:
  3e:	00850513          	addi	a0,a0,8 # 8 <.LBE327>
  42:	00000317          	auipc	t1,0x0
  46:	00030067          	jr	t1 # 42 <.LVL74+0x4>

Disassembly of section .text.lld_evt_schedule:

00000000 <lld_evt_schedule>:
   0:	18050863          	beqz	a0,190 <.L43>
   4:	1141                	addi	sp,sp,-16
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	c226                	sw	s1,4(sp)
   c:	842a                	mv	s0,a0

0000000e <.LBB363>:
   e:	4504                	lw	s1,8(a0)

00000010 <.LVL78>:
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL78>

00000018 <.LVL79>:
  18:	c509                	beqz	a0,22 <.L45>
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL79+0x2>

00000022 <.L45>:
  22:	07b44783          	lbu	a5,123(s0)
  26:	c781                	beqz	a5,2e <.L46>
  28:	4715                	li	a4,5
  2a:	04e79963          	bne	a5,a4,7c <.L47>

0000002e <.L46>:
  2e:	07e44783          	lbu	a5,126(s0)
  32:	8bc1                	andi	a5,a5,16
  34:	cf81                	beqz	a5,4c <.L48>

00000036 <.L53>:
  36:	8522                	mv	a0,s0

00000038 <.LBE363>:
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL81>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4492                	lw	s1,4(sp)

0000003e <.LBB403>:
  3e:	4601                	li	a2,0

00000040 <.LBB404>:
  40:	4585                	li	a1,1

00000042 <.LBE404>:
  42:	0141                	addi	sp,sp,16

00000044 <.LBB405>:
  44:	00000317          	auipc	t1,0x0
  48:	00030067          	jr	t1 # 44 <.LBB405>

0000004c <.L48>:
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L48>

00000054 <.LBB365>:
  54:	000007b7          	lui	a5,0x0
  58:	0147a783          	lw	a5,20(a5) # 14 <.LVL78+0x4>
  5c:	0217c783          	lbu	a5,33(a5)
  60:	ef91                	bnez	a5,7c <.L47>

00000062 <.LBB367>:
  62:	4418                	lw	a4,8(s0)
  64:	4c7c                	lw	a5,92(s0)
  66:	8f99                	sub	a5,a5,a4
  68:	873e                	mv	a4,a5
  6a:	07c2                	slli	a5,a5,0x10
  6c:	87c1                	srai	a5,a5,0x10
  6e:	00f04363          	bgtz	a5,74 <.L50>
  72:	4705                	li	a4,1

00000074 <.L50>:
  74:	280087b7          	lui	a5,0x28008
  78:	16e79023          	sh	a4,352(a5) # 28008160 <.LASF706+0x2800492f>

0000007c <.L47>:
  7c:	07b44703          	lbu	a4,123(s0)
  80:	4785                	li	a5,1
  82:	06f71963          	bne	a4,a5,f4 <.L52>

00000086 <.LBB370>:
  86:	07e44783          	lbu	a5,126(s0)
  8a:	8bc1                	andi	a5,a5,16
  8c:	f7cd                	bnez	a5,36 <.L53>
  8e:	4418                	lw	a4,8(s0)
  90:	4c7c                	lw	a5,92(s0)
  92:	8f99                	sub	a5,a5,a4
  94:	07c2                	slli	a5,a5,0x10
  96:	87c1                	srai	a5,a5,0x10

00000098 <.LVL89>:
  98:	873e                	mv	a4,a5
  9a:	00f04363          	bgtz	a5,a0 <.L54>
  9e:	4705                	li	a4,1

000000a0 <.L54>:
  a0:	01071793          	slli	a5,a4,0x10

000000a4 <.LBB371>:
  a4:	280086b7          	lui	a3,0x28008
  a8:	1ae69e23          	sh	a4,444(a3) # 280081bc <.LASF706+0x2800498b>

000000ac <.LVL91>:
  ac:	87c1                	srai	a5,a5,0x10

000000ae <.LBB374>:
  ae:	7761                	lui	a4,0xffff8

000000b0 <.LVL93>:
  b0:	8fd9                	or	a5,a5,a4
  b2:	07c2                	slli	a5,a5,0x10
  b4:	83c1                	srli	a5,a5,0x10
  b6:	1af69b23          	sh	a5,438(a3)

000000ba <.LBE375>:
  ba:	405c                	lw	a5,4(s0)
  bc:	cf85                	beqz	a5,f4 <.L52>

000000be <.LBB377>:
  be:	0787d683          	lhu	a3,120(a5)
  c2:	4418                	lw	a4,8(s0)
  c4:	479c                	lw	a5,8(a5)

000000c6 <.LVL96>:
  c6:	8f1d                	sub	a4,a4,a5
  c8:	0716                	slli	a4,a4,0x5
  ca:	8315                	srli	a4,a4,0x5
  cc:	02d777b3          	remu	a5,a4,a3
  d0:	4715                	li	a4,5
  d2:	40f687b3          	sub	a5,a3,a5
  d6:	07c2                	slli	a5,a5,0x10
  d8:	83c1                	srli	a5,a5,0x10

000000da <.LVL97>:
  da:	00f76563          	bltu	a4,a5,e4 <.L56>
  de:	97b6                	add	a5,a5,a3

000000e0 <.LVL98>:
  e0:	07c2                	slli	a5,a5,0x10
  e2:	83c1                	srli	a5,a5,0x10

000000e4 <.L56>:
  e4:	8385                	srli	a5,a5,0x1
  e6:	17fd                	addi	a5,a5,-1
  e8:	07c2                	slli	a5,a5,0x10
  ea:	83c1                	srli	a5,a5,0x10

000000ec <.LBB379>:
  ec:	28008737          	lui	a4,0x28008
  f0:	1af71d23          	sh	a5,442(a4) # 280081ba <.LASF706+0x28004989>

000000f4 <.L52>:
  f4:	0a0027b7          	lui	a5,0xa002

000000f8 <.LBE381>:
  f8:	88bd                	andi	s1,s1,15

000000fa <.LBB384>:
  fa:	94be                	add	s1,s1,a5
  fc:	048a                	slli	s1,s1,0x2
  fe:	00049023          	sh	zero,0(s1)

00000102 <.LBE384>:
 102:	07b44783          	lbu	a5,123(s0)
 106:	4705                	li	a4,1
 108:	17f5                	addi	a5,a5,-3
 10a:	0ff7f793          	andi	a5,a5,255
 10e:	00f76863          	bltu	a4,a5,11e <.L57>
 112:	07445503          	lhu	a0,116(s0)
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.LBE384+0x14>

0000011e <.L57>:
 11e:	07445783          	lhu	a5,116(s0)

00000122 <.LBB385>:
 122:	05c00713          	li	a4,92

00000126 <.LBE385>:
 126:	06045683          	lhu	a3,96(s0)

0000012a <.LBB389>:
 12a:	02e787b3          	mul	a5,a5,a4

0000012e <.LVL106>:
 12e:	28008737          	lui	a4,0x28008
 132:	0d870713          	addi	a4,a4,216 # 280080d8 <.LASF706+0x280048a7>

00000136 <.LBE389>:
 136:	02840513          	addi	a0,s0,40

0000013a <.LBB390>:
 13a:	97ba                	add	a5,a5,a4
 13c:	00d79023          	sh	a3,0(a5) # a002000 <.LASF706+0x9ffe7cf>

00000140 <.LBB391>:
 140:	0004d783          	lhu	a5,0(s1)
 144:	07c2                	slli	a5,a5,0x10
 146:	83c1                	srli	a5,a5,0x10
 148:	fcf7f793          	andi	a5,a5,-49
 14c:	07c2                	slli	a5,a5,0x10
 14e:	83c1                	srli	a5,a5,0x10
 150:	00f49023          	sh	a5,0(s1)

00000154 <.LBB393>:
 154:	0004d783          	lhu	a5,0(s1)
 158:	07c2                	slli	a5,a5,0x10
 15a:	83c1                	srli	a5,a5,0x10
 15c:	9bc1                	andi	a5,a5,-16
 15e:	0027e793          	ori	a5,a5,2
 162:	00f49023          	sh	a5,0(s1)

00000166 <.LBE393>:
 166:	07645783          	lhu	a5,118(s0)

0000016a <.LBB395>:
 16a:	00f49123          	sh	a5,2(s1)

0000016e <.LBE395>:
 16e:	00000097          	auipc	ra,0x0
 172:	000080e7          	jalr	ra # 16e <.LBE395>

00000176 <.LVL112>:
 176:	85a2                	mv	a1,s0

00000178 <.LBE405>:
 178:	4422                	lw	s0,8(sp)

0000017a <.LVL113>:
 17a:	40b2                	lw	ra,12(sp)
 17c:	4492                	lw	s1,4(sp)

0000017e <.LBB406>:
 17e:	00000537          	lui	a0,0x0

00000182 <.LBB407>:
 182:	00050513          	mv	a0,a0

00000186 <.LBE407>:
 186:	0141                	addi	sp,sp,16

00000188 <.LBB408>:
 188:	00000317          	auipc	t1,0x0
 18c:	00030067          	jr	t1 # 188 <.LBB408>

00000190 <.L43>:
 190:	8082                	ret

Disassembly of section .text.lld_evt_delete_elt_push:

00000000 <lld_evt_delete_elt_push>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)

0000000a <.LBB411>:
   a:	300024f3          	csrr	s1,mstatus

0000000e <.LBB412>:
   e:	300477f3          	csrrci	a5,mstatus,8

00000012 <.LBE412>:
  12:	07f54783          	lbu	a5,127(a0) # 7f <.L7+0x1>
  16:	ef85                	bnez	a5,4e <.L71>
  18:	842a                	mv	s0,a0
  1a:	892e                	mv	s2,a1

0000001c <.LBB413>:
  1c:	4531                	li	a0,12

0000001e <.LVL118>:
  1e:	4581                	li	a1,0

00000020 <.LVL119>:
  20:	c632                	sw	a2,12(sp)

00000022 <.LVL120>:
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL120>

0000002a <.LVL121>:
  2a:	4632                	lw	a2,12(sp)
  2c:	c140                	sw	s0,4(a0)
  2e:	01250423          	sb	s2,8(a0)
  32:	00c504a3          	sb	a2,9(a0)
  36:	85aa                	mv	a1,a0

00000038 <.LVL122>:
  38:	4785                	li	a5,1
  3a:	00000537          	lui	a0,0x0

0000003e <.LVL123>:
  3e:	06f40fa3          	sb	a5,127(s0)
  42:	02050513          	addi	a0,a0,32 # 20 <.LVL119>
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL123+0x8>

0000004e <.L71>:
  4e:	30049073          	csrw	mstatus,s1

00000052 <.LBE414>:
  52:	02000513          	li	a0,32
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LBE414+0x4>

0000005e <.LVL125>:
  5e:	4462                	lw	s0,24(sp)
  60:	40f2                	lw	ra,28(sp)
  62:	44d2                	lw	s1,20(sp)

00000064 <.LVL126>:
  64:	4942                	lw	s2,16(sp)
  66:	4525                	li	a0,9
  68:	6105                	addi	sp,sp,32
  6a:	00000317          	auipc	t1,0x0
  6e:	00030067          	jr	t1 # 6a <.LVL126+0x6>

Disassembly of section .text.lld_evt_deffered_elt_handler:

00000000 <lld_evt_deffered_elt_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	4521                	li	a0,8
   4:	d606                	sw	ra,44(sp)
   6:	d422                	sw	s0,40(sp)
   8:	d226                	sw	s1,36(sp)
   a:	d04a                	sw	s2,32(sp)
   c:	ce4e                	sw	s3,28(sp)
   e:	cc52                	sw	s4,24(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c85a                	sw	s6,16(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <lld_evt_deffered_elt_handler+0x14>

0000001c <.LVL129>:
  1c:	00f10593          	addi	a1,sp,15
  20:	00e10513          	addi	a0,sp,14
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL129+0x8>

0000002c <.LVL130>:
  2c:	842a                	mv	s0,a0

0000002e <.LBB415>:
  2e:	490d                	li	s2,3
  30:	4991                	li	s3,4
  32:	4485                	li	s1,1
  34:	4a09                	li	s4,2

00000036 <.L74>:
  36:	e819                	bnez	s0,4c <.L83>
  38:	50b2                	lw	ra,44(sp)
  3a:	5422                	lw	s0,40(sp)

0000003c <.LVL133>:
  3c:	5492                	lw	s1,36(sp)
  3e:	5902                	lw	s2,32(sp)
  40:	49f2                	lw	s3,28(sp)
  42:	4a62                	lw	s4,24(sp)
  44:	4ad2                	lw	s5,20(sp)
  46:	4b42                	lw	s6,16(sp)
  48:	6145                	addi	sp,sp,48
  4a:	8082                	ret

0000004c <.L83>:
  4c:	00e14783          	lbu	a5,14(sp)
  50:	02840a93          	addi	s5,s0,40
  54:	07279263          	bne	a5,s2,b8 <.L75>
  58:	07445503          	lhu	a0,116(s0)
  5c:	85a2                	mv	a1,s0
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L83+0x12>

00000066 <.LVL136>:
  66:	07445503          	lhu	a0,116(s0)
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL136+0x4>

00000072 <.L76>:
  72:	8556                	mv	a0,s5
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L76+0x2>

0000007c <.LVL138>:
  7c:	00e14783          	lbu	a5,14(sp)
  80:	17fd                	addi	a5,a5,-1
  82:	0ff7f793          	andi	a5,a5,255
  86:	00f4ef63          	bltu	s1,a5,a4 <.L81>
  8a:	ed09                	bnez	a0,a4 <.L81>
  8c:	07445503          	lhu	a0,116(s0)

00000090 <.LVL139>:
  90:	ffe50793          	addi	a5,a0,-2
  94:	07c2                	slli	a5,a5,0x10
  96:	83c1                	srli	a5,a5,0x10
  98:	08f4fa63          	bgeu	s1,a5,12c <.L82>
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.LVL139+0xc>

000000a4 <.L81>:
  a4:	00f10593          	addi	a1,sp,15
  a8:	00e10513          	addi	a0,sp,14
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.L81+0x8>

000000b4 <.LVL141>:
  b4:	842a                	mv	s0,a0
  b6:	b741                	j	36 <.L74>

000000b8 <.L75>:
  b8:	01379963          	bne	a5,s3,ca <.L77>
  bc:	07445503          	lhu	a0,116(s0)
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L75+0x8>

000000c8 <.LVL143>:
  c8:	b76d                	j	72 <.L76>

000000ca <.L77>:
  ca:	00979e63          	bne	a5,s1,e6 <.L78>
  ce:	07e44783          	lbu	a5,126(s0)
  d2:	8bc1                	andi	a5,a5,16
  d4:	dfd9                	beqz	a5,72 <.L76>
  d6:	4605                	li	a2,1
  d8:	4585                	li	a1,1

000000da <.L94>:
  da:	8522                	mv	a0,s0
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L94+0x2>

000000e4 <.LVL144>:
  e4:	b779                	j	72 <.L76>

000000e6 <.L78>:
  e6:	f94796e3          	bne	a5,s4,72 <.L76>

000000ea <.LBB416>:
  ea:	30002b73          	csrr	s6,mstatus

000000ee <.LBB418>:
  ee:	300477f3          	csrrci	a5,mstatus,8

000000f2 <.LBB419>:
  f2:	443c                	lw	a5,72(s0)
  f4:	cb99                	beqz	a5,10a <.L79>
  f6:	04840513          	addi	a0,s0,72
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LBB419+0x8>

00000102 <.LVL147>:
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL147>

0000010a <.L79>:
 10a:	581c                	lw	a5,48(s0)
 10c:	cb99                	beqz	a5,122 <.L80>
 10e:	03040513          	addi	a0,s0,48
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L79+0x8>

0000011a <.LVL149>:
 11a:	00000097          	auipc	ra,0x0
 11e:	000080e7          	jalr	ra # 11a <.LVL149>

00000122 <.L80>:
 122:	300b1073          	csrw	mstatus,s6

00000126 <.LBE416>:
 126:	4601                	li	a2,0
 128:	4581                	li	a1,0
 12a:	bf45                	j	da <.L94>

0000012c <.L82>:
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.L82>

00000134 <.LVL152>:
 134:	bf85                	j	a4 <.L81>

Disassembly of section .text.lld_evt_channel_next:

00000000 <lld_evt_channel_next>:
   0:	05c00793          	li	a5,92
   4:	02f50533          	mul	a0,a0,a5

00000008 <.LVL154>:
   8:	280087b7          	lui	a5,0x28008
   c:	09e78793          	addi	a5,a5,158 # 2800809e <.LASF706+0x2800486d>
  10:	953e                	add	a0,a0,a5
  12:	00055703          	lhu	a4,0(a0)
  16:	0742                	slli	a4,a4,0x10
  18:	8341                	srli	a4,a4,0x10

0000001a <.LBE424>:
  1a:	40875793          	srai	a5,a4,0x8
  1e:	8bfd                	andi	a5,a5,31
  20:	02b785b3          	mul	a1,a5,a1

00000024 <.LVL156>:
  24:	03f77713          	andi	a4,a4,63

00000028 <.LVL157>:
  28:	02500793          	li	a5,37
  2c:	95ba                	add	a1,a1,a4
  2e:	02f5e5b3          	rem	a1,a1,a5

00000032 <.LVL158>:
  32:	0205c063          	bltz	a1,52 <.L96>

00000036 <.L98>:
  36:	00055783          	lhu	a5,0(a0)

0000003a <.LBE426>:
  3a:	05c2                	slli	a1,a1,0x10
  3c:	85c1                	srai	a1,a1,0x10

0000003e <.LBB429>:
  3e:	07c2                	slli	a5,a5,0x10
  40:	83c1                	srli	a5,a5,0x10
  42:	fc07f793          	andi	a5,a5,-64
  46:	8ddd                	or	a1,a1,a5

00000048 <.LVL161>:
  48:	05c2                	slli	a1,a1,0x10
  4a:	81c1                	srli	a1,a1,0x10
  4c:	00b51023          	sh	a1,0(a0)

00000050 <.LBE429>:
  50:	8082                	ret

00000052 <.L96>:
  52:	02558593          	addi	a1,a1,37

00000056 <.LVL164>:
  56:	b7c5                	j	36 <.L98>

Disassembly of section .text.lld_evt_init:

00000000 <lld_evt_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)

00000004 <.LBB448>:
   4:	000004b7          	lui	s1,0x0

00000008 <.LBE448>:
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	c452                	sw	s4,8(sp)
  12:	c256                	sw	s5,4(sp)
  14:	c05a                	sw	s6,0(sp)

00000016 <.LBB449>:
  16:	00048793          	mv	a5,s1
  1a:	02079423          	sh	zero,40(a5)

0000001e <.LBE449>:
  1e:	02078523          	sb	zero,42(a5)
  22:	000009b7          	lui	s3,0x0
  26:	00000937          	lui	s2,0x0
  2a:	c53d                	beqz	a0,98 <.L100>
  2c:	01098513          	addi	a0,s3,16 # 10 <.LBE448+0x8>

00000030 <.LVL166>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL166>

00000038 <.LVL167>:
  38:	01890513          	addi	a0,s2,24 # 18 <.LBB449+0x2>
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL167+0x4>

00000044 <.LVL168>:
  44:	00048a13          	mv	s4,s1

00000048 <.LBB450>:
  48:	30002af3          	csrr	s5,mstatus

0000004c <.LBB454>:
  4c:	300477f3          	csrrci	a5,mstatus,8

00000050 <.LBE454>:
  50:	00000b37          	lui	s6,0x0

00000054 <.L101>:
  54:	000a2783          	lw	a5,0(s4)
  58:	e781                	bnez	a5,60 <.L108>

0000005a <.LBB457>:
  5a:	008a2783          	lw	a5,8(s4)
  5e:	c385                	beqz	a5,7e <.L105>

00000060 <.L108>:
  60:	00048513          	mv	a0,s1
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L108+0x4>

0000006c <.LVL174>:
  6c:	842a                	mv	s0,a0

0000006e <.LVL175>:
  6e:	e145                	bnez	a0,10e <.L102>
  70:	008b0513          	addi	a0,s6,8 # 8 <.LBE448>
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.LVL175+0x6>

0000007c <.LVL176>:
  7c:	e159                	bnez	a0,102 <.L103>

0000007e <.L105>:
  7e:	300a9073          	csrw	mstatus,s5

00000082 <.LBB461>:
  82:	00000437          	lui	s0,0x0

00000086 <.L104>:
  86:	020a2783          	lw	a5,32(s4)
  8a:	efdd                	bnez	a5,148 <.L109>
  8c:	02000513          	li	a0,32
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.L104+0xa>

00000098 <.L100>:
  98:	00048513          	mv	a0,s1
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.L100+0x4>

000000a4 <.LVL180>:
  a4:	01098513          	addi	a0,s3,16
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL180+0x4>

000000b0 <.LVL181>:
  b0:	01890513          	addi	a0,s2,24
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL181+0x4>

000000bc <.LVL182>:
  bc:	00000537          	lui	a0,0x0
  c0:	02050513          	addi	a0,a0,32 # 20 <.LBE449+0x2>
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL182+0x8>

000000cc <.LVL183>:
  cc:	000005b7          	lui	a1,0x0
  d0:	00058593          	mv	a1,a1
  d4:	4521                	li	a0,8
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL183+0xa>

000000de <.LVL184>:
  de:	4462                	lw	s0,24(sp)
  e0:	40f2                	lw	ra,28(sp)
  e2:	44d2                	lw	s1,20(sp)
  e4:	4942                	lw	s2,16(sp)
  e6:	49b2                	lw	s3,12(sp)
  e8:	4a22                	lw	s4,8(sp)
  ea:	4a92                	lw	s5,4(sp)
  ec:	4b02                	lw	s6,0(sp)
  ee:	000005b7          	lui	a1,0x0
  f2:	00058593          	mv	a1,a1
  f6:	4525                	li	a0,9
  f8:	6105                	addi	sp,sp,32
  fa:	00000317          	auipc	t1,0x0
  fe:	00030067          	jr	t1 # fa <.LVL184+0x1c>

00000102 <.L103>:
 102:	4140                	lw	s0,4(a0)
 104:	00000097          	auipc	ra,0x0
 108:	000080e7          	jalr	ra # 104 <.L103+0x2>

0000010c <.LVL187>:
 10c:	d82d                	beqz	s0,7e <.L105>

0000010e <.L102>:
 10e:	02840513          	addi	a0,s0,40 # 28 <.LBE449+0xa>

00000112 <.LVL189>:
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.LVL189>

0000011a <.LVL190>:
 11a:	4828                	lw	a0,80(s0)
 11c:	c911                	beqz	a0,130 <.L106>
 11e:	00000097          	auipc	ra,0x0
 122:	000080e7          	jalr	ra # 11e <.LVL190+0x4>

00000126 <.LVL191>:
 126:	4828                	lw	a0,80(s0)
 128:	00000097          	auipc	ra,0x0
 12c:	000080e7          	jalr	ra # 128 <.LVL191+0x2>

00000130 <.L106>:
 130:	4048                	lw	a0,4(s0)
 132:	c509                	beqz	a0,13c <.L107>
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.L106+0x4>

0000013c <.L107>:
 13c:	8522                	mv	a0,s0
 13e:	00000097          	auipc	ra,0x0
 142:	000080e7          	jalr	ra # 13e <.L107+0x2>

00000146 <.LVL194>:
 146:	b739                	j	54 <.L101>

00000148 <.L109>:
 148:	02040513          	addi	a0,s0,32
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.L109+0x4>

00000154 <.LVL196>:
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.LVL196>

0000015c <.LVL197>:
 15c:	b72d                	j	86 <.L104>

Disassembly of section .text.lld_evt_init_evt:

00000000 <lld_evt_init_evt>:
   0:	000007b7          	lui	a5,0x0
   4:	02c7c783          	lbu	a5,44(a5) # 2c <.LVL201+0x4>
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	c226                	sw	s1,4(sp)
  10:	842a                	mv	s0,a0
  12:	04f50a23          	sb	a5,84(a0)
  16:	04050923          	sb	zero,82(a0)
  1a:	04050ba3          	sb	zero,87(a0)

0000001e <.LBB466>:
  1e:	300024f3          	csrr	s1,mstatus

00000022 <.LBB468>:
  22:	300477f3          	csrrci	a5,mstatus,8

00000026 <.LBE468>:
  26:	0521                	addi	a0,a0,8

00000028 <.LVL201>:
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL201>

00000030 <.LVL202>:
  30:	01040513          	addi	a0,s0,16
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL202+0x4>

0000003c <.LVL203>:
  3c:	01840513          	addi	a0,s0,24
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL203+0x4>

00000048 <.LVL204>:
  48:	02040513          	addi	a0,s0,32
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL204+0x4>

00000054 <.LVL205>:
  54:	30049073          	csrw	mstatus,s1

00000058 <.LBE466>:
  58:	40b2                	lw	ra,12(sp)
  5a:	4422                	lw	s0,8(sp)

0000005c <.LVL206>:
  5c:	4492                	lw	s1,4(sp)

0000005e <.LVL207>:
  5e:	0141                	addi	sp,sp,16
  60:	8082                	ret

Disassembly of section .text.lld_evt_elt_delete:

00000000 <lld_evt_elt_delete>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	ca56                	sw	s5,20(sp)
   6:	c85a                	sw	s6,16(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	d04a                	sw	s2,32(sp)
   e:	ce4e                	sw	s3,28(sp)
  10:	cc52                	sw	s4,24(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	84aa                	mv	s1,a0
  16:	8aae                	mv	s5,a1
  18:	8b32                	mv	s6,a2

0000001a <.LBB471>:
  1a:	30002a73          	csrr	s4,mstatus

0000001e <.LBB472>:
  1e:	300477f3          	csrrci	a5,mstatus,8

00000022 <.LBE472>:
  22:	000009b7          	lui	s3,0x0
  26:	85aa                	mv	a1,a0

00000028 <.LVL211>:
  28:	00098513          	mv	a0,s3

0000002c <.LVL212>:
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL212>

00000034 <.LVL213>:
  34:	cd05                	beqz	a0,6c <.L157>
  36:	07e4c783          	lbu	a5,126(s1) # 7e <.LVL222+0x2>
  3a:	02000513          	li	a0,32

0000003e <.LBE475>:
  3e:	4401                	li	s0,0

00000040 <.LBB476>:
  40:	0107e793          	ori	a5,a5,16
  44:	06f48f23          	sb	a5,126(s1)
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LBB476+0x8>

00000050 <.L127>:
  50:	300a1073          	csrw	mstatus,s4

00000054 <.LBE476>:
  54:	8522                	mv	a0,s0
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)

0000005a <.LVL216>:
  5a:	5492                	lw	s1,36(sp)

0000005c <.LVL217>:
  5c:	5902                	lw	s2,32(sp)
  5e:	49f2                	lw	s3,28(sp)
  60:	4a62                	lw	s4,24(sp)

00000062 <.LVL218>:
  62:	4ad2                	lw	s5,20(sp)
  64:	4b42                	lw	s6,16(sp)
  66:	4bb2                	lw	s7,12(sp)
  68:	6145                	addi	sp,sp,48
  6a:	8082                	ret

0000006c <.L157>:
  6c:	842a                	mv	s0,a0
  6e:	4b85                	li	s7,1

00000070 <.L126>:
  70:	8526                	mv	a0,s1
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L126+0x2>

0000007a <.LVL221>:
  7a:	892a                	mv	s2,a0

0000007c <.LVL222>:
  7c:	e8c9                	bnez	s1,10e <.L128>
  7e:	d969                	beqz	a0,50 <.L127>
  80:	4140                	lw	s0,4(a0)

00000082 <.L129>:
  82:	020b0263          	beqz	s6,a6 <.L130>
  86:	07445583          	lhu	a1,116(s0)
  8a:	08bbe763          	bltu	s7,a1,118 <.L131>
  8e:	05a2                	slli	a1,a1,0x8
  90:	0015e593          	ori	a1,a1,1
  94:	05c2                	slli	a1,a1,0x10
  96:	81c1                	srli	a1,a1,0x10
  98:	4609                	li	a2,2

0000009a <.L159>:
  9a:	20000513          	li	a0,512

0000009e <.LVL224>:
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <.LVL224>

000000a6 <.L130>:
  a6:	8522                	mv	a0,s0
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.L130+0x2>

000000b0 <.LVL226>:
  b0:	4601                	li	a2,0
  b2:	85a2                	mv	a1,s0
  b4:	00098513          	mv	a0,s3
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.LVL226+0x8>

000000c0 <.LVL227>:
  c0:	000a8863          	beqz	s5,d0 <.L132>
  c4:	02840513          	addi	a0,s0,40
  c8:	00000097          	auipc	ra,0x0
  cc:	000080e7          	jalr	ra # c8 <.LVL227+0x8>

000000d0 <.L132>:
  d0:	4828                	lw	a0,80(s0)
  d2:	c911                	beqz	a0,e6 <.L133>
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.L132+0x4>

000000dc <.LVL229>:
  dc:	4828                	lw	a0,80(s0)
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.LVL229+0x2>

000000e6 <.L133>:
  e6:	4048                	lw	a0,4(s0)
  e8:	c509                	beqz	a0,f2 <.L134>
  ea:	00000097          	auipc	ra,0x0
  ee:	000080e7          	jalr	ra # ea <.L133+0x4>

000000f2 <.L134>:
  f2:	8522                	mv	a0,s0
  f4:	00000097          	auipc	ra,0x0
  f8:	000080e7          	jalr	ra # f4 <.L134+0x2>

000000fc <.LVL232>:
  fc:	00090a63          	beqz	s2,110 <.L135>
 100:	854a                	mv	a0,s2
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL232+0x6>

0000010a <.LVL233>:
 10a:	4405                	li	s0,1

0000010c <.LVL234>:
 10c:	b795                	j	70 <.L126>

0000010e <.L128>:
 10e:	c019                	beqz	s0,114 <.L136>

00000110 <.L135>:
 110:	4405                	li	s0,1
 112:	bf3d                	j	50 <.L127>

00000114 <.L136>:
 114:	8426                	mv	s0,s1

00000116 <.LVL238>:
 116:	b7b5                	j	82 <.L129>

00000118 <.L131>:
 118:	4609                	li	a2,2
 11a:	4581                	li	a1,0
 11c:	bfbd                	j	9a <.L159>

Disassembly of section .text.lld_evt_delete_elt_handler:

00000000 <lld_evt_delete_elt_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4525                	li	a0,9
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <lld_evt_delete_elt_handler+0x12>

0000001a <.LBB479>:
  1a:	30002773          	csrr	a4,mstatus

0000001e <.LBB481>:
  1e:	300477f3          	csrrci	a5,mstatus,8

00000022 <.LBB482>:
  22:	000007b7          	lui	a5,0x0
  26:	00078693          	mv	a3,a5
  2a:	5280                	lw	s0,32(a3)

0000002c <.LBE482>:
  2c:	30071073          	csrw	mstatus,a4
  30:	4905                	li	s2,1
  32:	00078493          	mv	s1,a5

00000036 <.LBB484>:
  36:	000009b7          	lui	s3,0x0

0000003a <.L161>:
  3a:	e805                	bnez	s0,6a <.L165>

0000003c <.LBB489>:
  3c:	30002473          	csrr	s0,mstatus

00000040 <.LBB491>:
  40:	300477f3          	csrrci	a5,mstatus,8

00000044 <.LBB492>:
  44:	509c                	lw	a5,32(s1)
  46:	e799                	bnez	a5,54 <.L166>
  48:	02000513          	li	a0,32
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LBB492+0x8>

00000054 <.L166>:
  54:	30041073          	csrw	mstatus,s0

00000058 <.LBE489>:
  58:	40f2                	lw	ra,28(sp)
  5a:	4462                	lw	s0,24(sp)

0000005c <.LVL249>:
  5c:	44d2                	lw	s1,20(sp)
  5e:	4942                	lw	s2,16(sp)

00000060 <.LVL250>:
  60:	49b2                	lw	s3,12(sp)
  62:	4a22                	lw	s4,8(sp)
  64:	4a92                	lw	s5,4(sp)
  66:	6105                	addi	sp,sp,32
  68:	8082                	ret

0000006a <.L165>:
  6a:	4048                	lw	a0,4(s0)

0000006c <.LVL252>:
  6c:	c911                	beqz	a0,80 <.L162>
  6e:	00944603          	lbu	a2,9(s0)
  72:	00844583          	lbu	a1,8(s0)
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL252+0xa>

0000007e <.LVL253>:
  7e:	892a                	mv	s2,a0

00000080 <.L162>:
  80:	00042a03          	lw	s4,0(s0)
  84:	02090763          	beqz	s2,b2 <.L163>

00000088 <.LBB486>:
  88:	30002af3          	csrr	s5,mstatus

0000008c <.LBB487>:
  8c:	300477f3          	csrrci	a5,mstatus,8

00000090 <.LBE487>:
  90:	4601                	li	a2,0
  92:	85a2                	mv	a1,s0
  94:	02098513          	addi	a0,s3,32 # 20 <.LBB481+0x2>
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LBE487+0x8>

000000a0 <.LVL258>:
  a0:	300a9073          	csrw	mstatus,s5

000000a4 <.LBE488>:
  a4:	8522                	mv	a0,s0
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LBE488+0x2>

000000ae <.L164>:
  ae:	8452                	mv	s0,s4
  b0:	b769                	j	3a <.L161>

000000b2 <.L163>:
  b2:	300027f3          	csrr	a5,mstatus

000000b6 <.LBB498>:
  b6:	30047773          	csrrci	a4,mstatus,8

000000ba <.LBE498>:
  ba:	30079073          	csrw	mstatus,a5
  be:	bfc5                	j	ae <.L164>

Disassembly of section .text.lld_evt_drift_compute:

00000000 <lld_evt_drift_compute>:
   0:	000007b7          	lui	a5,0x0

00000004 <.LBE502>:
   4:	0287c783          	lbu	a5,40(a5) # 28 <.LVL264+0x16>
   8:	00000737          	lui	a4,0x0
   c:	00070713          	mv	a4,a4
  10:	0586                	slli	a1,a1,0x1

00000012 <.LVL264>:
  12:	0786                	slli	a5,a5,0x1
  14:	97ba                	add	a5,a5,a4
  16:	972e                	add	a4,a4,a1
  18:	0007d783          	lhu	a5,0(a5)
  1c:	00075703          	lhu	a4,0(a4) # 0 <lld_evt_drift_compute>
  20:	97ba                	add	a5,a5,a4
  22:	02a787b3          	mul	a5,a5,a0
  26:	02900513          	li	a0,41

0000002a <.LVL267>:
  2a:	02a78533          	mul	a0,a5,a0
  2e:	8141                	srli	a0,a0,0x10
  30:	8082                	ret

Disassembly of section .text.lld_evt_rxwin_compute:

00000000 <lld_evt_rxwin_compute>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)

00000004 <.LVL269>:
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	06255503          	lhu	a0,98(a0)

0000000c <.LVL270>:
   c:	07845783          	lhu	a5,120(s0)
  10:	06e44583          	lbu	a1,110(s0)
  14:	0505                	addi	a0,a0,1
  16:	02f50533          	mul	a0,a0,a5
  1a:	0542                	slli	a0,a0,0x10
  1c:	8141                	srli	a0,a0,0x10
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL270+0x12>

00000026 <.LVL271>:
  26:	07445783          	lhu	a5,116(s0)

0000002a <.LBB503>:
  2a:	05c00713          	li	a4,92

0000002e <.LBE503>:
  2e:	cc28                	sw	a0,88(s0)

00000030 <.LBB507>:
  30:	02e787b3          	mul	a5,a5,a4
  34:	28008737          	lui	a4,0x28008
  38:	0a270713          	addi	a4,a4,162 # 280080a2 <.LASF706+0x28004871>

0000003c <.LBE507>:
  3c:	07144583          	lbu	a1,113(s0)
  40:	02840513          	addi	a0,s0,40

00000044 <.LVL273>:
  44:	40b2                	lw	ra,12(sp)

00000046 <.LBB508>:
  46:	97ba                	add	a5,a5,a4
  48:	0007d783          	lhu	a5,0(a5)

0000004c <.LBE508>:
  4c:	c87c                	sw	a5,84(s0)
  4e:	4422                	lw	s0,8(sp)

00000050 <.LVL274>:
  50:	0141                	addi	sp,sp,16
  52:	00000317          	auipc	t1,0x0
  56:	00030067          	jr	t1 # 52 <.LVL274+0x2>

Disassembly of section .text.lld_evt_restart:

00000000 <lld_evt_restart>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	d606                	sw	ra,44(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	ca56                	sw	s5,20(sp)
  10:	c85a                	sw	s6,16(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	c462                	sw	s8,8(sp)
  16:	c266                	sw	s9,4(sp)
  18:	c06a                	sw	s10,0(sp)
  1a:	07b54a83          	lbu	s5,123(a0)
  1e:	4791                	li	a5,4
  20:	842a                	mv	s0,a0
  22:	0757e163          	bltu	a5,s5,84 <.L175>
  26:	00000737          	lui	a4,0x0
  2a:	002a9793          	slli	a5,s5,0x2
  2e:	00070713          	mv	a4,a4
  32:	97ba                	add	a5,a5,a4
  34:	439c                	lw	a5,0(a5)
  36:	8b2e                	mv	s6,a1
  38:	02850b93          	addi	s7,a0,40

0000003c <.LVL277>:
  3c:	8782                	jr	a5

0000003e <.L181>:
  3e:	000007b7          	lui	a5,0x0
  42:	0147a783          	lw	a5,20(a5) # 14 <lld_evt_restart+0x14>
  46:	000004b7          	lui	s1,0x0
  4a:	00048493          	mv	s1,s1
  4e:	0217c783          	lbu	a5,33(a5)
  52:	c3a1                	beqz	a5,92 <.L182>

00000054 <.LBB574>:
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LBB574>

0000005c <.LBE575>:
  5c:	4418                	lw	a4,8(s0)
  5e:	07845783          	lhu	a5,120(s0)
  62:	893d                	andi	a0,a0,15

00000064 <.LVL279>:
  64:	0505                	addi	a0,a0,1
  66:	97ba                	add	a5,a5,a4
  68:	8979                	andi	a0,a0,30
  6a:	97aa                	add	a5,a5,a0
  6c:	0796                	slli	a5,a5,0x5
  6e:	8395                	srli	a5,a5,0x5
  70:	c41c                	sw	a5,8(s0)
  72:	00b4c783          	lbu	a5,11(s1) # b <lld_evt_restart+0xb>
  76:	6719                	lui	a4,0x6
  78:	0a070713          	addi	a4,a4,160 # 60a0 <.LASF706+0x286f>
  7c:	8bbd                	andi	a5,a5,15
  7e:	8fd9                	or	a5,a5,a4
  80:	00f41823          	sh	a5,16(s0)

00000084 <.L175>:
  84:	07e44503          	lbu	a0,126(s0)
  88:	8111                	srli	a0,a0,0x4
  8a:	00154513          	xori	a0,a0,1
  8e:	8905                	andi	a0,a0,1
  90:	a83d                	j	ce <.L257>

00000092 <.L182>:
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.L182>

0000009a <.LVL282>:
  9a:	00d4c703          	lbu	a4,13(s1)
  9e:	4c74                	lw	a3,92(s0)
  a0:	77e9                	lui	a5,0xffffa
  a2:	05078793          	addi	a5,a5,80 # ffffa050 <.LASF706+0xffff681f>
  a6:	8b3d                	andi	a4,a4,15
  a8:	8f5d                	or	a4,a4,a5
  aa:	080007b7          	lui	a5,0x8000
  ae:	00e41823          	sh	a4,16(s0)
  b2:	17fd                	addi	a5,a5,-1
  b4:	40a68733          	sub	a4,a3,a0
  b8:	c408                	sw	a0,8(s0)
  ba:	c454                	sw	a3,12(s0)
  bc:	8f7d                	and	a4,a4,a5
  be:	04000637          	lui	a2,0x4000
  c2:	fce671e3          	bgeu	a2,a4,84 <.L175>
  c6:	8d15                	sub	a0,a0,a3
  c8:	8fe9                	and	a5,a5,a0
  ca:	4501                	li	a0,0
  cc:	dfc5                	beqz	a5,84 <.L175>

000000ce <.L257>:
  ce:	50b2                	lw	ra,44(sp)
  d0:	5422                	lw	s0,40(sp)

000000d2 <.LVL284>:
  d2:	5492                	lw	s1,36(sp)
  d4:	5902                	lw	s2,32(sp)
  d6:	49f2                	lw	s3,28(sp)
  d8:	4a62                	lw	s4,24(sp)
  da:	4ad2                	lw	s5,20(sp)
  dc:	4b42                	lw	s6,16(sp)
  de:	4bb2                	lw	s7,12(sp)
  e0:	4c22                	lw	s8,8(sp)
  e2:	4c92                	lw	s9,4(sp)
  e4:	4d02                	lw	s10,0(sp)
  e6:	6145                	addi	sp,sp,48
  e8:	8082                	ret

000000ea <.L180>:
  ea:	06054783          	lbu	a5,96(a0)
  ee:	c7a9                	beqz	a5,138 <.L186>

000000f0 <.LBB578>:
  f0:	07455783          	lhu	a5,116(a0)

000000f4 <.LBB581>:
  f4:	05c00713          	li	a4,92
  f8:	02e787b3          	mul	a5,a5,a4

000000fc <.LVL288>:
  fc:	28008737          	lui	a4,0x28008
 100:	0e070693          	addi	a3,a4,224 # 280080e0 <.LASF706+0x280048af>
 104:	97b6                	add	a5,a5,a3
 106:	0007d783          	lhu	a5,0(a5) # 8000000 <.LASF706+0x7ffc7cf>

0000010a <.LBE581>:
 10a:	83bd                	srli	a5,a5,0xf
 10c:	c795                	beqz	a5,138 <.L186>
 10e:	06154783          	lbu	a5,97(a0)
 112:	c39d                	beqz	a5,138 <.L186>

00000114 <.LBB582>:
 114:	1f075683          	lhu	a3,496(a4)

00000118 <.LBB590>:
 118:	1f275783          	lhu	a5,498(a4)

0000011c <.LBE590>:
 11c:	07c2                	slli	a5,a5,0x10
 11e:	8fd5                	or	a5,a5,a3
 120:	d51c                	sw	a5,40(a0)

00000122 <.LBB591>:
 122:	1f475783          	lhu	a5,500(a4)

00000126 <.LVL292>:
 126:	3ff7f713          	andi	a4,a5,1023

0000012a <.LBE591>:
 12a:	27000793          	li	a5,624
 12e:	8f99                	sub	a5,a5,a4
 130:	02f51623          	sh	a5,44(a0)

00000134 <.LBE582>:
 134:	4501                	li	a0,0
 136:	bf61                	j	ce <.L257>

00000138 <.L186>:
 138:	4c38                	lw	a4,88(s0)
 13a:	07845783          	lhu	a5,120(s0)
 13e:	080006b7          	lui	a3,0x8000
 142:	16fd                	addi	a3,a3,-1
 144:	97ba                	add	a5,a5,a4
 146:	00d7f733          	and	a4,a5,a3
 14a:	487c                	lw	a5,84(s0)
 14c:	27100613          	li	a2,625
 150:	cc38                	sw	a4,88(s0)
 152:	02c7d7b3          	divu	a5,a5,a2
 156:	c418                	sw	a4,8(s0)
 158:	97ba                	add	a5,a5,a4
 15a:	00000737          	lui	a4,0x0
 15e:	00174703          	lbu	a4,1(a4) # 1 <lld_evt_restart+0x1>
 162:	8ff5                	and	a5,a5,a3
 164:	76e9                	lui	a3,0xffffa
 166:	8b3d                	andi	a4,a4,15
 168:	05068693          	addi	a3,a3,80 # ffffa050 <.LASF706+0xffff681f>
 16c:	8f55                	or	a4,a4,a3
 16e:	cc7c                	sw	a5,92(s0)
 170:	00e41823          	sh	a4,16(s0)
 174:	c45c                	sw	a5,12(s0)
 176:	b739                	j	84 <.L175>

00000178 <.L178>:
 178:	05c55783          	lhu	a5,92(a0)
 17c:	06055703          	lhu	a4,96(a0)
 180:	fff78693          	addi	a3,a5,-1
 184:	06c2                	slli	a3,a3,0x10
 186:	82c1                	srli	a3,a3,0x10
 188:	20d71063          	bne	a4,a3,388 <.L187>
 18c:	06d54683          	lbu	a3,109(a0)
 190:	68068663          	beqz	a3,81c <.L188>

00000194 <.LBB593>:
 194:	4785                	li	a5,1
 196:	04f68c63          	beq	a3,a5,1ee <.L189>
 19a:	4789                	li	a5,2
 19c:	1cf68f63          	beq	a3,a5,37a <.L190>

000001a0 <.L191>:
 1a0:	000b0963          	beqz	s6,1b2 <.L197>
 1a4:	07445503          	lhu	a0,116(s0)
 1a8:	4585                	li	a1,1
 1aa:	00000097          	auipc	ra,0x0
 1ae:	000080e7          	jalr	ra # 1aa <.L191+0xa>

000001b2 <.L197>:
 1b2:	4418                	lw	a4,8(s0)
 1b4:	07845783          	lhu	a5,120(s0)
 1b8:	06041123          	sh	zero,98(s0)
 1bc:	97ba                	add	a5,a5,a4
 1be:	06045703          	lhu	a4,96(s0)
 1c2:	0796                	slli	a5,a5,0x5
 1c4:	8395                	srli	a5,a5,0x5
 1c6:	c41c                	sw	a5,8(s0)
 1c8:	0705                	addi	a4,a4,1
 1ca:	07e44783          	lbu	a5,126(s0)
 1ce:	0742                	slli	a4,a4,0x10
 1d0:	8341                	srli	a4,a4,0x10
 1d2:	06e41023          	sh	a4,96(s0)
 1d6:	0027f693          	andi	a3,a5,2
 1da:	1e068163          	beqz	a3,3bc <.L198>

000001de <.L264>:
 1de:	4695                	li	a3,5
 1e0:	eae6f2e3          	bgeu	a3,a4,84 <.L175>
 1e4:	0107e793          	ori	a5,a5,16
 1e8:	06f40f23          	sb	a5,126(s0)
 1ec:	bd61                	j	84 <.L175>

000001ee <.L189>:
 1ee:	07455683          	lhu	a3,116(a0)
 1f2:	4144                	lw	s1,4(a0)

000001f4 <.LVL299>:
 1f4:	00000637          	lui	a2,0x0
 1f8:	068a                	slli	a3,a3,0x2
 1fa:	00060713          	mv	a4,a2
 1fe:	9736                	add	a4,a4,a3
 200:	431c                	lw	a5,0(a4)
 202:	07855683          	lhu	a3,120(a0)
 206:	0784d703          	lhu	a4,120(s1)
 20a:	02848593          	addi	a1,s1,40

0000020e <.LVL300>:
 20e:	00060913          	mv	s2,a2
 212:	00e69e63          	bne	a3,a4,22e <.L192>
 216:	05e55683          	lhu	a3,94(a0)
 21a:	05e4d703          	lhu	a4,94(s1)
 21e:	00e69863          	bne	a3,a4,22e <.L192>
 222:	0547d683          	lhu	a3,84(a5)
 226:	0567d703          	lhu	a4,86(a5)
 22a:	00e68863          	beq	a3,a4,23a <.L193>

0000022e <.L192>:
 22e:	05c7d703          	lhu	a4,92(a5)
 232:	08076713          	ori	a4,a4,128
 236:	04e79e23          	sh	a4,92(a5)

0000023a <.L193>:
 23a:	06045783          	lhu	a5,96(s0)

0000023e <.LVL301>:
 23e:	05800613          	li	a2,88
 242:	855e                	mv	a0,s7
 244:	06f49023          	sh	a5,96(s1)
 248:	05c45783          	lhu	a5,92(s0)
 24c:	04f49e23          	sh	a5,92(s1)
 250:	07044783          	lbu	a5,112(s0)
 254:	06f48823          	sb	a5,112(s1)
 258:	443c                	lw	a5,72(s0)
 25a:	c4bc                	sw	a5,72(s1)
 25c:	447c                	lw	a5,76(s0)
 25e:	c4fc                	sw	a5,76(s1)
 260:	581c                	lw	a5,48(s0)
 262:	d89c                	sw	a5,48(s1)
 264:	585c                	lw	a5,52(s0)
 266:	d8dc                	sw	a5,52(s1)
 268:	403c                	lw	a5,64(s0)
 26a:	c0bc                	sw	a5,64(s1)
 26c:	407c                	lw	a5,68(s0)
 26e:	c0fc                	sw	a5,68(s1)
 270:	5c1c                	lw	a5,56(s0)
 272:	dc9c                	sw	a5,56(s1)
 274:	5c5c                	lw	a5,60(s0)
 276:	dcdc                	sw	a5,60(s1)
 278:	07445783          	lhu	a5,116(s0)
 27c:	06f49a23          	sh	a5,116(s1)
 280:	07e44783          	lbu	a5,126(s0)
 284:	06f48f23          	sb	a5,126(s1)
 288:	06d44783          	lbu	a5,109(s0)
 28c:	06f486a3          	sb	a5,109(s1)
 290:	06845783          	lhu	a5,104(s0)
 294:	06f49423          	sh	a5,104(s1)
 298:	06a45783          	lhu	a5,106(s0)
 29c:	06f49523          	sh	a5,106(s1)
 2a0:	07645783          	lhu	a5,118(s0)
 2a4:	0784d703          	lhu	a4,120(s1)
 2a8:	06f49b23          	sh	a5,118(s1)
 2ac:	483c                	lw	a5,80(s0)
 2ae:	c8bc                	sw	a5,80(s1)
 2b0:	449c                	lw	a5,8(s1)
 2b2:	8f99                	sub	a5,a5,a4
 2b4:	0796                	slli	a5,a5,0x5
 2b6:	8395                	srli	a5,a5,0x5
 2b8:	c41c                	sw	a5,8(s0)
 2ba:	0784d683          	lhu	a3,120(s1)
 2be:	48b8                	lw	a4,80(s1)
 2c0:	02d7f7b3          	remu	a5,a5,a3
 2c4:	27100693          	li	a3,625
 2c8:	00f71323          	sh	a5,6(a4)
 2cc:	48bc                	lw	a5,80(s1)
 2ce:	0784d703          	lhu	a4,120(s1)
 2d2:	00e79223          	sh	a4,4(a5)
 2d6:	0124d703          	lhu	a4,18(s1)
 2da:	48bc                	lw	a5,80(s1)
 2dc:	02d77733          	remu	a4,a4,a3
 2e0:	00e03733          	snez	a4,a4
 2e4:	00e79423          	sh	a4,8(a5)
 2e8:	0124d783          	lhu	a5,18(s1)
 2ec:	48b8                	lw	a4,80(s1)
 2ee:	02d7d7b3          	divu	a5,a5,a3
 2f2:	00875683          	lhu	a3,8(a4)
 2f6:	97b6                	add	a5,a5,a3
 2f8:	00f71423          	sh	a5,8(a4)
 2fc:	07d44783          	lbu	a5,125(s0)
 300:	06f48ea3          	sb	a5,125(s1)
 304:	000007b7          	lui	a5,0x0
 308:	0007a783          	lw	a5,0(a5) # 0 <lld_evt_restart>
 30c:	9782                	jalr	a5

0000030e <.LVL302>:
 30e:	00042223          	sw	zero,4(s0)
 312:	0004a223          	sw	zero,4(s1)
 316:	0404a823          	sw	zero,80(s1)
 31a:	07445783          	lhu	a5,116(s0)
 31e:	8522                	mv	a0,s0
 320:	078a                	slli	a5,a5,0x2
 322:	97ca                	add	a5,a5,s2
 324:	439c                	lw	a5,0(a5)
 326:	0507d603          	lhu	a2,80(a5)
 32a:	04e7d583          	lhu	a1,78(a5)
 32e:	00000097          	auipc	ra,0x0
 332:	000080e7          	jalr	ra # 32e <.LVL302+0x20>

00000336 <.LBB597>:
 336:	07445783          	lhu	a5,116(s0)

0000033a <.LBB603>:
 33a:	05c00713          	li	a4,92

0000033e <.LBE603>:
 33e:	8526                	mv	a0,s1

00000340 <.LBB604>:
 340:	02e787b3          	mul	a5,a5,a4

00000344 <.LVL305>:
 344:	28008737          	lui	a4,0x28008
 348:	0a870693          	addi	a3,a4,168 # 280080a8 <.LASF706+0x28004877>

0000034c <.LBB605>:
 34c:	0a670713          	addi	a4,a4,166

00000350 <.LBE605>:
 350:	4601                	li	a2,0
 352:	4581                	li	a1,0

00000354 <.LBB609>:
 354:	96be                	add	a3,a3,a5
 356:	0006d683          	lhu	a3,0(a3)

0000035a <.LBB610>:
 35a:	97ba                	add	a5,a5,a4

0000035c <.LBB611>:
 35c:	06c2                	slli	a3,a3,0x10
 35e:	82c1                	srli	a3,a3,0x10

00000360 <.LBB612>:
 360:	00d79023          	sh	a3,0(a5)

00000364 <.LBE612>:
 364:	00000097          	auipc	ra,0x0
 368:	000080e7          	jalr	ra # 364 <.LBE612>

0000036c <.LBE595>:
 36c:	07445503          	lhu	a0,116(s0)
 370:	00000097          	auipc	ra,0x0
 374:	000080e7          	jalr	ra # 370 <.LBE595+0x4>

00000378 <.LVL309>:
 378:	b525                	j	1a0 <.L191>

0000037a <.L190>:
 37a:	07455503          	lhu	a0,116(a0)
 37e:	00000097          	auipc	ra,0x0
 382:	000080e7          	jalr	ra # 37e <.L190+0x4>

00000386 <.LVL311>:
 386:	bd29                	j	1a0 <.L191>

00000388 <.L187>:
 388:	e0f71ce3          	bne	a4,a5,1a0 <.L191>

0000038c <.LBB702>:
 38c:	06d54783          	lbu	a5,109(a0)
 390:	4705                	li	a4,1
 392:	00e78a63          	beq	a5,a4,3a6 <.L194>
 396:	4709                	li	a4,2
 398:	00e78f63          	beq	a5,a4,3b6 <.L195>

0000039c <.L196>:
 39c:	060406a3          	sb	zero,109(s0)
 3a0:	04041e23          	sh	zero,92(s0)
 3a4:	bbf5                	j	1a0 <.L191>

000003a6 <.L194>:
 3a6:	4601                	li	a2,0
 3a8:	458d                	li	a1,3

000003aa <.L259>:
 3aa:	8522                	mv	a0,s0
 3ac:	00000097          	auipc	ra,0x0
 3b0:	000080e7          	jalr	ra # 3ac <.L259+0x2>

000003b4 <.LVL317>:
 3b4:	b7e5                	j	39c <.L196>

000003b6 <.L195>:
 3b6:	4601                	li	a2,0
 3b8:	4591                	li	a1,4

000003ba <.LVL319>:
 3ba:	bfc5                	j	3aa <.L259>

000003bc <.L198>:
 3bc:	cc0b14e3          	bnez	s6,84 <.L175>
 3c0:	8b95                	andi	a5,a5,5
 3c2:	c391                	beqz	a5,3c6 <.L228>
 3c4:	4a91                	li	s5,4

000003c6 <.L228>:
 3c6:	85d6                	mv	a1,s5
 3c8:	8522                	mv	a0,s0
 3ca:	00000097          	auipc	ra,0x0
 3ce:	000080e7          	jalr	ra # 3ca <.L228+0x4>

000003d2 <.LVL321>:
 3d2:	b94d                	j	84 <.L175>

000003d4 <.L176>:
 3d4:	e599                	bnez	a1,3e2 <.L200>
 3d6:	07e54783          	lbu	a5,126(a0)
 3da:	07f7f793          	andi	a5,a5,127
 3de:	06f50f23          	sb	a5,126(a0)

000003e2 <.L200>:
 3e2:	07445783          	lhu	a5,116(s0)

000003e6 <.LBB618>:
 3e6:	05c00713          	li	a4,92
 3ea:	02e787b3          	mul	a5,a5,a4

000003ee <.LVL325>:
 3ee:	28008737          	lui	a4,0x28008
 3f2:	0e070693          	addi	a3,a4,224 # 280080e0 <.LASF706+0x280048af>
 3f6:	96be                	add	a3,a3,a5
 3f8:	0006d983          	lhu	s3,0(a3)

000003fc <.LVL326>:
 3fc:	00f9d993          	srli	s3,s3,0xf

00000400 <.LBE618>:
 400:	06098a63          	beqz	s3,474 <.L201>
 404:	894e                	mv	s2,s3
 406:	060b1c63          	bnez	s6,47e <.L202>

0000040a <.LBB619>:
 40a:	0a270713          	addi	a4,a4,162
 40e:	97ba                	add	a5,a5,a4
 410:	4739                	li	a4,14
 412:	00e79023          	sh	a4,0(a5)

00000416 <.LBB622>:
 416:	300027f3          	csrr	a5,mstatus

0000041a <.LBB624>:
 41a:	30047773          	csrrci	a4,mstatus,8

0000041e <.LBB625>:
 41e:	5818                	lw	a4,48(s0)
 420:	cb55                	beqz	a4,4d4 <.L204>

00000422 <.L260>:
 422:	30079073          	csrw	mstatus,a5

00000426 <.L205>:
 426:	06041123          	sh	zero,98(s0)

0000042a <.LBE619>:
 42a:	4901                	li	s2,0

0000042c <.L208>:
 42c:	07445783          	lhu	a5,116(s0)

00000430 <.LBB641>:
 430:	05c00713          	li	a4,92
 434:	02e787b3          	mul	a5,a5,a4
 438:	28008737          	lui	a4,0x28008
 43c:	0dc70693          	addi	a3,a4,220 # 280080dc <.LASF706+0x280048ab>

00000440 <.LBB642>:
 440:	0de70613          	addi	a2,a4,222

00000444 <.LBB643>:
 444:	0e070713          	addi	a4,a4,224

00000448 <.LBB648>:
 448:	96be                	add	a3,a3,a5

0000044a <.LBB649>:
 44a:	963e                	add	a2,a2,a5

0000044c <.LBB650>:
 44c:	0006d583          	lhu	a1,0(a3)

00000450 <.LBB651>:
 450:	00065683          	lhu	a3,0(a2) # 0 <lld_evt_restart>

00000454 <.LBB652>:
 454:	97ba                	add	a5,a5,a4

00000456 <.LBE652>:
 456:	06c2                	slli	a3,a3,0x10
 458:	8ecd                	or	a3,a3,a1
 45a:	d414                	sw	a3,40(s0)

0000045c <.LBB653>:
 45c:	0007d783          	lhu	a5,0(a5)

00000460 <.LBE653>:
 460:	060408a3          	sb	zero,113(s0)

00000464 <.LBB654>:
 464:	3ff7f713          	andi	a4,a5,1023

00000468 <.LBE654>:
 468:	27000793          	li	a5,624
 46c:	8f99                	sub	a5,a5,a4
 46e:	02f41623          	sh	a5,44(s0)
 472:	a031                	j	47e <.L202>

00000474 <.L201>:
 474:	010b1913          	slli	s2,s6,0x10
 478:	01095913          	srli	s2,s2,0x10
 47c:	4985                	li	s3,1

0000047e <.L202>:
 47e:	07e44783          	lbu	a5,126(s0)
 482:	0107f713          	andi	a4,a5,16
 486:	be071fe3          	bnez	a4,84 <.L175>
 48a:	06245a03          	lhu	s4,98(s0)
 48e:	07845503          	lhu	a0,120(s0)
 492:	0087f713          	andi	a4,a5,8
 496:	0a05                	addi	s4,s4,1
 498:	03450a33          	mul	s4,a0,s4
 49c:	0a42                	slli	s4,s4,0x10
 49e:	010a5a13          	srli	s4,s4,0x10

000004a2 <.LVL340>:
 4a2:	c31d                	beqz	a4,4c8 <.L214>
 4a4:	05c45683          	lhu	a3,92(s0)
 4a8:	06045603          	lhu	a2,96(s0)
 4ac:	fff68713          	addi	a4,a3,-1
 4b0:	0742                	slli	a4,a4,0x10
 4b2:	8341                	srli	a4,a4,0x10
 4b4:	30e61963          	bne	a2,a4,7c6 <.L215>

000004b8 <.LBB662>:
 4b8:	06d44783          	lbu	a5,109(s0)
 4bc:	4705                	li	a4,1
 4be:	0ae78763          	beq	a5,a4,56c <.L216>
 4c2:	4709                	li	a4,2
 4c4:	2ee78a63          	beq	a5,a4,7b8 <.L217>

000004c8 <.L214>:
 4c8:	8522                	mv	a0,s0
 4ca:	00000097          	auipc	ra,0x0
 4ce:	000080e7          	jalr	ra # 4ca <.L214+0x2>

000004d2 <.LVL343>:
 4d2:	aca5                	j	74a <.L220>

000004d4 <.L204>:
 4d4:	4038                	lw	a4,64(s0)
 4d6:	f731                	bnez	a4,422 <.L260>

000004d8 <.LBB629>:
 4d8:	30079073          	csrw	mstatus,a5

000004dc <.LBE655>:
 4dc:	443c                	lw	a5,72(s0)

000004de <.LVL346>:
 4de:	f7a1                	bnez	a5,426 <.L205>
 4e0:	07e44703          	lbu	a4,126(s0)
 4e4:	00977793          	andi	a5,a4,9
 4e8:	ff9d                	bnez	a5,426 <.L205>
 4ea:	06f44783          	lbu	a5,111(s0)
 4ee:	ff85                	bnez	a5,426 <.L205>

000004f0 <.LBB656>:
 4f0:	05e45903          	lhu	s2,94(s0)
 4f4:	000006b7          	lui	a3,0x0
 4f8:	06e44783          	lbu	a5,110(s0)
 4fc:	0286c683          	lbu	a3,40(a3) # 28 <lld_evt_restart+0x28>
 500:	197d                	addi	s2,s2,-1
 502:	0942                	slli	s2,s2,0x10
 504:	8fd5                	or	a5,a5,a3
 506:	01095913          	srli	s2,s2,0x10

0000050a <.LVL347>:
 50a:	ef81                	bnez	a5,522 <.L209>
 50c:	1c200693          	li	a3,450
 510:	87ca                	mv	a5,s2
 512:	0126f463          	bgeu	a3,s2,51a <.L210>
 516:	1c200793          	li	a5,450

0000051a <.L210>:
 51a:	01079913          	slli	s2,a5,0x10

0000051e <.LVL348>:
 51e:	01095913          	srli	s2,s2,0x10

00000522 <.L209>:
 522:	06d44783          	lbu	a5,109(s0)
 526:	c785                	beqz	a5,54e <.L211>
 528:	05c45783          	lhu	a5,92(s0)
 52c:	06045603          	lhu	a2,96(s0)
 530:	fff78693          	addi	a3,a5,-1
 534:	06c2                	slli	a3,a3,0x10
 536:	82c1                	srli	a3,a3,0x10
 538:	00d65b63          	bge	a2,a3,54e <.L211>

0000053c <.LBB657>:
 53c:	8f91                	sub	a5,a5,a2

0000053e <.LVL351>:
 53e:	17f9                	addi	a5,a5,-2

00000540 <.LBB660>:
 540:	00f97363          	bgeu	s2,a5,546 <.L212>
 544:	87ca                	mv	a5,s2

00000546 <.L212>:
 546:	01079913          	slli	s2,a5,0x10

0000054a <.LVL354>:
 54a:	01095913          	srli	s2,s2,0x10

0000054e <.L211>:
 54e:	4785                	li	a5,1
 550:	0127f663          	bgeu	a5,s2,55c <.L213>
 554:	f8076713          	ori	a4,a4,-128
 558:	06e40f23          	sb	a4,126(s0)

0000055c <.L213>:
 55c:	00190993          	addi	s3,s2,1
 560:	09c2                	slli	s3,s3,0x10
 562:	07241123          	sh	s2,98(s0)
 566:	0109d993          	srli	s3,s3,0x10

0000056a <.LVL356>:
 56a:	b5c9                	j	42c <.L208>

0000056c <.L216>:
 56c:	07445703          	lhu	a4,116(s0)
 570:	4044                	lw	s1,4(s0)

00000572 <.LVL358>:
 572:	000007b7          	lui	a5,0x0
 576:	070a                	slli	a4,a4,0x2
 578:	00078793          	mv	a5,a5
 57c:	97ba                	add	a5,a5,a4
 57e:	0784d703          	lhu	a4,120(s1)
 582:	02848593          	addi	a1,s1,40

00000586 <.LVL359>:
 586:	439c                	lw	a5,0(a5)

00000588 <.LVL360>:
 588:	00a71e63          	bne	a4,a0,5a4 <.L218>
 58c:	05e45683          	lhu	a3,94(s0)
 590:	05e4d703          	lhu	a4,94(s1)
 594:	00e69863          	bne	a3,a4,5a4 <.L218>
 598:	0547d683          	lhu	a3,84(a5) # 54 <.LBB574>
 59c:	0567d703          	lhu	a4,86(a5)
 5a0:	00e68863          	beq	a3,a4,5b0 <.L219>

000005a4 <.L218>:
 5a4:	05c7d703          	lhu	a4,92(a5)
 5a8:	08076713          	ori	a4,a4,128
 5ac:	04e79e23          	sh	a4,92(a5)

000005b0 <.L219>:
 5b0:	06045783          	lhu	a5,96(s0)

000005b4 <.LVL361>:
 5b4:	4e200d13          	li	s10,1250

000005b8 <.LBB666>:
 5b8:	05c00c93          	li	s9,92

000005bc <.LBE666>:
 5bc:	06f49023          	sh	a5,96(s1)
 5c0:	541c                	lw	a5,40(s0)

000005c2 <.LBB672>:
 5c2:	28008c37          	lui	s8,0x28008

000005c6 <.LBE672>:
 5c6:	855e                	mv	a0,s7
 5c8:	d49c                	sw	a5,40(s1)
 5ca:	545c                	lw	a5,44(s0)
 5cc:	d4dc                	sw	a5,44(s1)
 5ce:	443c                	lw	a5,72(s0)
 5d0:	c4bc                	sw	a5,72(s1)
 5d2:	447c                	lw	a5,76(s0)
 5d4:	c4fc                	sw	a5,76(s1)
 5d6:	581c                	lw	a5,48(s0)
 5d8:	d89c                	sw	a5,48(s1)
 5da:	585c                	lw	a5,52(s0)
 5dc:	d8dc                	sw	a5,52(s1)
 5de:	07044783          	lbu	a5,112(s0)
 5e2:	06f48823          	sb	a5,112(s1)
 5e6:	403c                	lw	a5,64(s0)
 5e8:	c0bc                	sw	a5,64(s1)
 5ea:	407c                	lw	a5,68(s0)
 5ec:	c0fc                	sw	a5,68(s1)
 5ee:	5c1c                	lw	a5,56(s0)
 5f0:	dc9c                	sw	a5,56(s1)
 5f2:	5c5c                	lw	a5,60(s0)
 5f4:	dcdc                	sw	a5,60(s1)
 5f6:	06645783          	lhu	a5,102(s0)
 5fa:	06f49323          	sh	a5,102(s1)
 5fe:	06c44783          	lbu	a5,108(s0)
 602:	06f48623          	sb	a5,108(s1)
 606:	05c45783          	lhu	a5,92(s0)
 60a:	04f49e23          	sh	a5,92(s1)
 60e:	07e44783          	lbu	a5,126(s0)
 612:	06f48f23          	sb	a5,126(s1)
 616:	06d44783          	lbu	a5,109(s0)
 61a:	0744d683          	lhu	a3,116(s1)
 61e:	0194c703          	lbu	a4,25(s1)
 622:	06f486a3          	sb	a5,109(s1)
 626:	06e44783          	lbu	a5,110(s0)

0000062a <.LBB673>:
 62a:	039686b3          	mul	a3,a3,s9

0000062e <.LBE673>:
 62e:	06f48723          	sb	a5,110(s1)
 632:	06845783          	lhu	a5,104(s0)
 636:	06f49423          	sh	a5,104(s1)
 63a:	06a45783          	lhu	a5,106(s0)
 63e:	06f49523          	sh	a5,106(s1)
 642:	07645783          	lhu	a5,118(s0)
 646:	06f49b23          	sh	a5,118(s1)
 64a:	483c                	lw	a5,80(s0)
 64c:	01a49923          	sh	s10,18(s1)
 650:	c8bc                	sw	a5,80(s1)
 652:	06c44783          	lbu	a5,108(s0)
 656:	03a787b3          	mul	a5,a5,s10
 65a:	c8fc                	sw	a5,84(s1)
 65c:	07d44783          	lbu	a5,125(s0)
 660:	06f48ea3          	sb	a5,125(s1)
 664:	0784d783          	lhu	a5,120(s1)
 668:	8f99                	sub	a5,a5,a4
 66a:	07c2                	slli	a5,a5,0x10

0000066c <.LBB674>:
 66c:	0a8c0713          	addi	a4,s8,168 # 280080a8 <.LASF706+0x28004877>
 670:	96ba                	add	a3,a3,a4

00000672 <.LBE674>:
 672:	83c1                	srli	a5,a5,0x10

00000674 <.LBB675>:
 674:	00f69023          	sh	a5,0(a3)

00000678 <.LBE675>:
 678:	06645683          	lhu	a3,102(s0)
 67c:	441c                	lw	a5,8(s0)
 67e:	48b8                	lw	a4,80(s1)
 680:	0686                	slli	a3,a3,0x1
 682:	9a36                	add	s4,s4,a3

00000684 <.LVL364>:
 684:	0784d683          	lhu	a3,120(s1)
 688:	0a42                	slli	s4,s4,0x10
 68a:	010a5a13          	srli	s4,s4,0x10

0000068e <.LVL365>:
 68e:	02d7f7b3          	remu	a5,a5,a3

00000692 <.LBB683>:
 692:	0a2c0c13          	addi	s8,s8,162

00000696 <.LBB677>:
 696:	00f71323          	sh	a5,6(a4)
 69a:	48bc                	lw	a5,80(s1)
 69c:	0784d703          	lhu	a4,120(s1)
 6a0:	00e79223          	sh	a4,4(a5)
 6a4:	0124d603          	lhu	a2,18(s1)
 6a8:	27100713          	li	a4,625
 6ac:	48bc                	lw	a5,80(s1)
 6ae:	02e67633          	remu	a2,a2,a4
 6b2:	00c03633          	snez	a2,a2
 6b6:	00c79423          	sh	a2,8(a5)
 6ba:	48bc                	lw	a5,80(s1)
 6bc:	0124d683          	lhu	a3,18(s1)
 6c0:	05800613          	li	a2,88
 6c4:	02e6d6b3          	divu	a3,a3,a4
 6c8:	0087d703          	lhu	a4,8(a5)
 6cc:	96ba                	add	a3,a3,a4
 6ce:	00d79423          	sh	a3,8(a5)
 6d2:	000007b7          	lui	a5,0x0
 6d6:	0007a783          	lw	a5,0(a5) # 0 <lld_evt_restart>
 6da:	9782                	jalr	a5

000006dc <.LVL366>:
 6dc:	00042223          	sw	zero,4(s0)
 6e0:	06041123          	sh	zero,98(s0)
 6e4:	4601                	li	a2,0
 6e6:	4581                	li	a1,0
 6e8:	8526                	mv	a0,s1
 6ea:	0004a223          	sw	zero,4(s1)
 6ee:	0404a823          	sw	zero,80(s1)
 6f2:	00000097          	auipc	ra,0x0
 6f6:	000080e7          	jalr	ra # 6f2 <.LVL366+0x16>

000006fa <.LBE677>:
 6fa:	07445503          	lhu	a0,116(s0)
 6fe:	00000097          	auipc	ra,0x0
 702:	000080e7          	jalr	ra # 6fe <.LBE677+0x4>

00000706 <.LBB695>:
 706:	06e44583          	lbu	a1,110(s0)
 70a:	8552                	mv	a0,s4
 70c:	00000097          	auipc	ra,0x0
 710:	000080e7          	jalr	ra # 70c <.LBB695+0x6>

00000714 <.LVL369>:
 714:	06c44703          	lbu	a4,108(s0)
 718:	07445783          	lhu	a5,116(s0)
 71c:	4585                	li	a1,1
 71e:	03a70733          	mul	a4,a4,s10

00000722 <.LBB690>:
 722:	039787b3          	mul	a5,a5,s9

00000726 <.LBE690>:
 726:	953a                	add	a0,a0,a4
 728:	cc28                	sw	a0,88(s0)

0000072a <.LBB691>:
 72a:	855e                	mv	a0,s7

0000072c <.LBB692>:
 72c:	97e2                	add	a5,a5,s8
 72e:	0007d783          	lhu	a5,0(a5)

00000732 <.LBE692>:
 732:	c87c                	sw	a5,84(s0)
 734:	00000097          	auipc	ra,0x0
 738:	000080e7          	jalr	ra # 734 <.LBE692+0x2>

0000073c <.LVL371>:
 73c:	4785                	li	a5,1
 73e:	06040623          	sb	zero,108(s0)
 742:	06041323          	sh	zero,102(s0)
 746:	06f408a3          	sb	a5,113(s0)

0000074a <.L220>:
 74a:	85d2                	mv	a1,s4
 74c:	8522                	mv	a0,s0
 74e:	00000097          	auipc	ra,0x0
 752:	000080e7          	jalr	ra # 74e <.L220+0x4>

00000756 <.LVL373>:
 756:	06045783          	lhu	a5,96(s0)
 75a:	06041123          	sh	zero,98(s0)
 75e:	99be                	add	s3,s3,a5

00000760 <.LVL374>:
 760:	07341023          	sh	s3,96(s0)
 764:	00090b63          	beqz	s2,77a <.L225>
 768:	07445503          	lhu	a0,116(s0)
 76c:	01091593          	slli	a1,s2,0x10
 770:	85c1                	srai	a1,a1,0x10
 772:	00000097          	auipc	ra,0x0
 776:	000080e7          	jalr	ra # 772 <.LVL374+0x12>

0000077a <.L225>:
 77a:	05c45783          	lhu	a5,92(s0)
 77e:	06045703          	lhu	a4,96(s0)
 782:	17fd                	addi	a5,a5,-1
 784:	07c2                	slli	a5,a5,0x10
 786:	83c1                	srli	a5,a5,0x10
 788:	00f71b63          	bne	a4,a5,79e <.L226>
 78c:	06d44783          	lbu	a5,109(s0)
 790:	c799                	beqz	a5,79e <.L226>
 792:	07e44783          	lbu	a5,126(s0)
 796:	0087e793          	ori	a5,a5,8
 79a:	06f40f23          	sb	a5,126(s0)

0000079e <.L226>:
 79e:	07e44783          	lbu	a5,126(s0)
 7a2:	0027f693          	andi	a3,a5,2
 7a6:	a2069ce3          	bnez	a3,1de <.L264>
 7aa:	8c0b1de3          	bnez	s6,84 <.L175>
 7ae:	8b95                	andi	a5,a5,5
 7b0:	c0079be3          	bnez	a5,3c6 <.L228>
 7b4:	4a8d                	li	s5,3
 7b6:	b901                	j	3c6 <.L228>

000007b8 <.L217>:
 7b8:	07445503          	lhu	a0,116(s0)
 7bc:	00000097          	auipc	ra,0x0
 7c0:	000080e7          	jalr	ra # 7bc <.L217+0x4>

000007c4 <.LBE698>:
 7c4:	b311                	j	4c8 <.L214>

000007c6 <.L215>:
 7c6:	04d61163          	bne	a2,a3,808 <.L221>

000007ca <.LBB699>:
 7ca:	06d44783          	lbu	a5,109(s0)
 7ce:	4705                	li	a4,1
 7d0:	00e78f63          	beq	a5,a4,7ee <.L222>
 7d4:	4709                	li	a4,2
 7d6:	02e78663          	beq	a5,a4,802 <.L223>

000007da <.L224>:
 7da:	07e44783          	lbu	a5,126(s0)
 7de:	060406a3          	sb	zero,109(s0)
 7e2:	04041e23          	sh	zero,92(s0)
 7e6:	9bdd                	andi	a5,a5,-9
 7e8:	06f40f23          	sb	a5,126(s0)
 7ec:	b9f1                	j	4c8 <.L214>

000007ee <.L222>:
 7ee:	06041323          	sh	zero,102(s0)
 7f2:	4601                	li	a2,0
 7f4:	458d                	li	a1,3

000007f6 <.L261>:
 7f6:	8522                	mv	a0,s0
 7f8:	00000097          	auipc	ra,0x0
 7fc:	000080e7          	jalr	ra # 7f8 <.L261+0x2>

00000800 <.LVL381>:
 800:	bfe9                	j	7da <.L224>

00000802 <.L223>:
 802:	4601                	li	a2,0
 804:	4591                	li	a1,4
 806:	bfc5                	j	7f6 <.L261>

00000808 <.L221>:
 808:	9bdd                	andi	a5,a5,-9
 80a:	06f40f23          	sb	a5,126(s0)
 80e:	b96d                	j	4c8 <.L214>

00000810 <.L179>:
 810:	451c                	lw	a5,8(a0)
 812:	0791                	addi	a5,a5,4
 814:	0796                	slli	a5,a5,0x5
 816:	8395                	srli	a5,a5,0x5
 818:	c51c                	sw	a5,8(a0)
 81a:	b0ad                	j	84 <.L175>

0000081c <.L188>:
 81c:	98f712e3          	bne	a4,a5,1a0 <.L191>
 820:	beb5                	j	39c <.L196>

Disassembly of section .text.lld_evt_elt_insert:

00000000 <lld_evt_elt_insert>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	842a                	mv	s0,a0

0000000e <.LVL385>:
   e:	892e                	mv	s2,a1
  10:	4485                	li	s1,1
  12:	49f9                	li	s3,30

00000014 <.L266>:
  14:	8522                	mv	a0,s0
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.L266+0x2>

0000001e <.LVL387>:
  1e:	02950463          	beq	a0,s1,46 <.L269>

00000022 <.LBB710>:
  22:	300024f3          	csrr	s1,mstatus

00000026 <.LBB714>:
  26:	300477f3          	csrrci	a5,mstatus,8

0000002a <.LBE714>:
  2a:	8522                	mv	a0,s0
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LBE714+0x2>

00000034 <.LVL391>:
  34:	30049073          	csrw	mstatus,s1

00000038 <.LBE710>:
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)

0000003c <.LVL392>:
  3c:	44d2                	lw	s1,20(sp)

0000003e <.LVL393>:
  3e:	4942                	lw	s2,16(sp)

00000040 <.LVL394>:
  40:	49b2                	lw	s3,12(sp)
  42:	6105                	addi	sp,sp,32
  44:	8082                	ret

00000046 <.L269>:
  46:	00090963          	beqz	s2,58 <.L267>
  4a:	01644783          	lbu	a5,22(s0)
  4e:	00f9e563          	bltu	s3,a5,58 <.L267>
  52:	0785                	addi	a5,a5,1
  54:	00f40b23          	sb	a5,22(s0)

00000058 <.L267>:
  58:	4585                	li	a1,1
  5a:	8522                	mv	a0,s0
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L267+0x4>

00000064 <.LVL396>:
  64:	f945                	bnez	a0,14 <.L266>
  66:	8522                	mv	a0,s0

00000068 <.LVL397>:
  68:	4601                	li	a2,0
  6a:	4585                	li	a1,1
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL397+0x4>

00000074 <.LVL398>:
  74:	4462                	lw	s0,24(sp)

00000076 <.LVL399>:
  76:	40f2                	lw	ra,28(sp)
  78:	44d2                	lw	s1,20(sp)
  7a:	4942                	lw	s2,16(sp)
  7c:	49b2                	lw	s3,12(sp)
  7e:	4521                	li	a0,8
  80:	6105                	addi	sp,sp,32
  82:	00000317          	auipc	t1,0x0
  86:	00030067          	jr	t1 # 82 <.LVL399+0xc>

Disassembly of section .text.lld_evt_canceled:

00000000 <lld_evt_canceled>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <lld_evt_canceled+0x8>

00000010 <.LVL402>:
  10:	c509                	beqz	a0,1a <.L278>
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL402+0x2>

0000001a <.L278>:
  1a:	01644783          	lbu	a5,22(s0)
  1e:	4779                	li	a4,30
  20:	00f76563          	bltu	a4,a5,2a <.L279>
  24:	0785                	addi	a5,a5,1
  26:	00f40b23          	sb	a5,22(s0)

0000002a <.L279>:
  2a:	4585                	li	a1,1
  2c:	8522                	mv	a0,s0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.L279+0x4>

00000036 <.LVL404>:
  36:	c911                	beqz	a0,4a <.L280>
  38:	8522                	mv	a0,s0
  3a:	4422                	lw	s0,8(sp)

0000003c <.LVL405>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4585                	li	a1,1
  40:	0141                	addi	sp,sp,16
  42:	00000317          	auipc	t1,0x0
  46:	00030067          	jr	t1 # 42 <.LVL405+0x6>

0000004a <.L280>:
  4a:	8522                	mv	a0,s0
  4c:	4601                	li	a2,0
  4e:	4585                	li	a1,1
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.L280+0x6>

00000058 <.LBE717>:
  58:	4422                	lw	s0,8(sp)

0000005a <.LVL408>:
  5a:	40b2                	lw	ra,12(sp)

0000005c <.LBB721>:
  5c:	4521                	li	a0,8

0000005e <.LBE721>:
  5e:	0141                	addi	sp,sp,16

00000060 <.LBB722>:
  60:	00000317          	auipc	t1,0x0
  64:	00030067          	jr	t1 # 60 <.LBB722>

Disassembly of section .text.lld_evt_schedule_next:

00000000 <lld_evt_schedule_next>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	842a                	mv	s0,a0

00000008 <.LVL411>:
   8:	ca26                	sw	s1,20(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	c452                	sw	s4,8(sp)
  10:	c256                	sw	s5,4(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL411+0xa>

0000001a <.LVL412>:
  1a:	07b44703          	lbu	a4,123(s0)
  1e:	4791                	li	a5,4
  20:	20f71263          	bne	a4,a5,224 <.L285>
  24:	07e44683          	lbu	a3,126(s0)
  28:	01869793          	slli	a5,a3,0x18
  2c:	87e1                	srai	a5,a5,0x18
  2e:	1e07db63          	bgez	a5,224 <.L285>
  32:	01944903          	lbu	s2,25(s0)
  36:	080004b7          	lui	s1,0x8000
  3a:	07845983          	lhu	s3,120(s0)
  3e:	fff48793          	addi	a5,s1,-1 # 7ffffff <.LASF706+0x7ffc7ce>
  42:	992a                	add	s2,s2,a0
  44:	00f97933          	and	s2,s2,a5

00000048 <.LBB723>:
  48:	01298733          	add	a4,s3,s2
  4c:	00f77633          	and	a2,a4,a5

00000050 <.LBB727>:
  50:	4418                	lw	a4,8(s0)
  52:	8f11                	sub	a4,a4,a2

00000054 <.LBE727>:
  54:	0030c637          	lui	a2,0x30c

00000058 <.LBB728>:
  58:	8f7d                	and	a4,a4,a5

0000005a <.LBE728>:
  5a:	b0060613          	addi	a2,a2,-1280 # 30bb00 <.LASF706+0x3082cf>
  5e:	1ce66363          	bltu	a2,a4,224 <.L285>
  62:	5404                	lw	s1,40(s0)
  64:	412484b3          	sub	s1,s1,s2
  68:	8cfd                	and	s1,s1,a5

0000006a <.LVL414>:
  6a:	1b34ed63          	bltu	s1,s3,224 <.L285>

0000006e <.LBB729>:
  6e:	30002af3          	csrr	s5,mstatus

00000072 <.LBB731>:
  72:	300477f3          	csrrci	a5,mstatus,8

00000076 <.LBB732>:
  76:	403c                	lw	a5,64(s0)
  78:	c789                	beqz	a5,82 <.L289>
  7a:	0046e693          	ori	a3,a3,4
  7e:	06d40f23          	sb	a3,126(s0)

00000082 <.L289>:
  82:	00000537          	lui	a0,0x0

00000086 <.LVL417>:
  86:	85a2                	mv	a1,s0
  88:	00050513          	mv	a0,a0
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.LVL417+0x6>

00000094 <.LVL418>:
  94:	8a2a                	mv	s4,a0

00000096 <.LVL419>:
  96:	e105                	bnez	a0,b6 <.L290>

00000098 <.LBB734>:
  98:	8522                	mv	a0,s0

0000009a <.LVL420>:
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.LVL420>

000000a2 <.LVL421>:
  a2:	c509                	beqz	a0,ac <.L291>
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL421+0x2>

000000ac <.L291>:
  ac:	8522                	mv	a0,s0
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.L291+0x2>

000000b6 <.L290>:
  b6:	300a9073          	csrw	mstatus,s5

000000ba <.LBE729>:
  ba:	160a1563          	bnez	s4,224 <.L285>
  be:	0334d4b3          	divu	s1,s1,s3

000000c2 <.LVL424>:
  c2:	07845703          	lhu	a4,120(s0)
  c6:	07445503          	lhu	a0,116(s0)
  ca:	00148793          	addi	a5,s1,1
  ce:	02e78733          	mul	a4,a5,a4
  d2:	541c                	lw	a5,40(s0)
  d4:	04c2                	slli	s1,s1,0x10
  d6:	80c1                	srli	s1,s1,0x10
  d8:	409005b3          	neg	a1,s1
  dc:	05c2                	slli	a1,a1,0x10
  de:	85c1                	srai	a1,a1,0x10
  e0:	8f99                	sub	a5,a5,a4
  e2:	0796                	slli	a5,a5,0x5
  e4:	8395                	srli	a5,a5,0x5
  e6:	d41c                	sw	a5,40(s0)
  e8:	06045783          	lhu	a5,96(s0)
  ec:	17fd                	addi	a5,a5,-1
  ee:	8f85                	sub	a5,a5,s1
  f0:	06f41023          	sh	a5,96(s0)
  f4:	00000097          	auipc	ra,0x0
  f8:	000080e7          	jalr	ra # f4 <.LVL424+0x32>

000000fc <.LVL425>:
  fc:	07e44783          	lbu	a5,126(s0)
 100:	06e44583          	lbu	a1,110(s0)
 104:	8526                	mv	a0,s1
 106:	07f7f793          	andi	a5,a5,127
 10a:	06f40f23          	sb	a5,126(s0)
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.LVL425+0x12>

00000116 <.LBB735>:
 116:	07445703          	lhu	a4,116(s0)

0000011a <.LBB738>:
 11a:	05c00793          	li	a5,92
 11e:	02f70733          	mul	a4,a4,a5

00000122 <.LVL428>:
 122:	280087b7          	lui	a5,0x28008
 126:	0a278793          	addi	a5,a5,162 # 280080a2 <.LASF706+0x28004871>
 12a:	973e                	add	a4,a4,a5
 12c:	00075783          	lhu	a5,0(a4)
 130:	07c2                	slli	a5,a5,0x10
 132:	83c1                	srli	a5,a5,0x10

00000134 <.LBE738>:
 134:	01079693          	slli	a3,a5,0x10
 138:	86c1                	srai	a3,a3,0x10
 13a:	0006d863          	bgez	a3,14a <.L293>
 13e:	07c6                	slli	a5,a5,0x11

00000140 <.LVL430>:
 140:	83c5                	srli	a5,a5,0x11
 142:	27100693          	li	a3,625
 146:	02d787b3          	mul	a5,a5,a3

0000014a <.L293>:
 14a:	0506                	slli	a0,a0,0x1

0000014c <.LVL432>:
 14c:	40a78533          	sub	a0,a5,a0

00000150 <.LVL433>:
 150:	47b5                	li	a5,13
 152:	06a7f363          	bgeu	a5,a0,1b8 <.L298>
 156:	6791                	lui	a5,0x4
 158:	00f56a63          	bltu	a0,a5,16c <.L294>
 15c:	27100793          	li	a5,625
 160:	27050513          	addi	a0,a0,624 # 270 <.LLST274+0xd>

00000164 <.LVL434>:
 164:	02f55533          	divu	a0,a0,a5

00000168 <.LVL435>:
 168:	67a1                	lui	a5,0x8
 16a:	8d5d                	or	a0,a0,a5

0000016c <.L294>:
 16c:	01051793          	slli	a5,a0,0x10
 170:	83c1                	srli	a5,a5,0x10

00000172 <.LBB739>:
 172:	00f71023          	sh	a5,0(a4)

00000176 <.LBE739>:
 176:	07845a03          	lhu	s4,120(s0)

0000017a <.LBB741>:
 17a:	080004b7          	lui	s1,0x8000

0000017e <.LBE741>:
 17e:	0030c9b7          	lui	s3,0x30c
 182:	c868                	sw	a0,84(s0)

00000184 <.LBB745>:
 184:	14fd                	addi	s1,s1,-1

00000186 <.LBE745>:
 186:	b0098993          	addi	s3,s3,-1280 # 30bb00 <.LASF706+0x3082cf>

0000018a <.L296>:
 18a:	85d2                	mv	a1,s4
 18c:	8522                	mv	a0,s0
 18e:	00000097          	auipc	ra,0x0
 192:	000080e7          	jalr	ra # 18e <.L296+0x4>

00000196 <.LBB746>:
 196:	441c                	lw	a5,8(s0)
 198:	40f907b3          	sub	a5,s2,a5
 19c:	8fe5                	and	a5,a5,s1

0000019e <.LBE746>:
 19e:	00f9ef63          	bltu	s3,a5,1bc <.L295>
 1a2:	06245783          	lhu	a5,98(s0)
 1a6:	8522                	mv	a0,s0
 1a8:	0785                	addi	a5,a5,1
 1aa:	06f41123          	sh	a5,98(s0)
 1ae:	00000097          	auipc	ra,0x0
 1b2:	000080e7          	jalr	ra # 1ae <.LBE746+0x10>

000001b6 <.LVL442>:
 1b6:	bfd1                	j	18a <.L296>

000001b8 <.L298>:
 1b8:	4539                	li	a0,14

000001ba <.LVL444>:
 1ba:	bf4d                	j	16c <.L294>

000001bc <.L295>:
 1bc:	06245583          	lhu	a1,98(s0)
 1c0:	06045783          	lhu	a5,96(s0)
 1c4:	07445503          	lhu	a0,116(s0)
 1c8:	97ae                	add	a5,a5,a1
 1ca:	0785                	addi	a5,a5,1
 1cc:	05c2                	slli	a1,a1,0x10
 1ce:	06f41023          	sh	a5,96(s0)
 1d2:	85c1                	srai	a1,a1,0x10
 1d4:	00000097          	auipc	ra,0x0
 1d8:	000080e7          	jalr	ra # 1d4 <.L295+0x18>

000001dc <.LVL446>:
 1dc:	05c45703          	lhu	a4,92(s0)
 1e0:	07e44783          	lbu	a5,126(s0)
 1e4:	06045683          	lhu	a3,96(s0)
 1e8:	177d                	addi	a4,a4,-1
 1ea:	0f77f793          	andi	a5,a5,247
 1ee:	0742                	slli	a4,a4,0x10
 1f0:	06f40f23          	sb	a5,126(s0)
 1f4:	8341                	srli	a4,a4,0x10
 1f6:	00e69963          	bne	a3,a4,208 <.L297>
 1fa:	06d44703          	lbu	a4,109(s0)
 1fe:	c709                	beqz	a4,208 <.L297>
 200:	0087e793          	ori	a5,a5,8
 204:	06f40f23          	sb	a5,126(s0)

00000208 <.L297>:
 208:	8522                	mv	a0,s0
 20a:	4462                	lw	s0,24(sp)

0000020c <.LVL447>:
 20c:	40f2                	lw	ra,28(sp)
 20e:	44d2                	lw	s1,20(sp)
 210:	4942                	lw	s2,16(sp)
 212:	49b2                	lw	s3,12(sp)
 214:	4a22                	lw	s4,8(sp)

00000216 <.LVL448>:
 216:	4a92                	lw	s5,4(sp)

00000218 <.LVL449>:
 218:	4585                	li	a1,1
 21a:	6105                	addi	sp,sp,32
 21c:	00000317          	auipc	t1,0x0
 220:	00030067          	jr	t1 # 21c <.LVL449+0x4>

00000224 <.L285>:
 224:	40f2                	lw	ra,28(sp)
 226:	4462                	lw	s0,24(sp)

00000228 <.LVL451>:
 228:	44d2                	lw	s1,20(sp)
 22a:	4942                	lw	s2,16(sp)
 22c:	49b2                	lw	s3,12(sp)
 22e:	4a22                	lw	s4,8(sp)
 230:	4a92                	lw	s5,4(sp)
 232:	6105                	addi	sp,sp,32
 234:	8082                	ret

Disassembly of section .text.lld_evt_scan_create:

00000000 <lld_evt_scan_create>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	05800513          	li	a0,88

0000000a <.LVL453>:
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	c62e                	sw	a1,12(sp)
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL453+0x6>

00000018 <.LVL454>:
  18:	842a                	mv	s0,a0

0000001a <.LVL455>:
  1a:	02850513          	addi	a0,a0,40

0000001e <.LVL456>:
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL456>

00000026 <.LVL457>:
  26:	4785                	li	a5,1
  28:	06f40da3          	sb	a5,123(s0)
  2c:	05c00793          	li	a5,92
  30:	06941a23          	sh	s1,116(s0)
  34:	02f484b3          	mul	s1,s1,a5
  38:	45b2                	lw	a1,12(sp)
  3a:	8522                	mv	a0,s0
  3c:	0585                	addi	a1,a1,1
  3e:	04b41f23          	sh	a1,94(s0)
  42:	4581                	li	a1,0
  44:	08e48493          	addi	s1,s1,142 # 800008e <.LASF706+0x7ffc85d>
  48:	06941b23          	sh	s1,118(s0)
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL457+0x26>

00000054 <.LVL458>:
  54:	000007b7          	lui	a5,0x0
  58:	00078793          	mv	a5,a5
  5c:	cc5c                	sw	a5,28(s0)
  5e:	000007b7          	lui	a5,0x0
  62:	00078793          	mv	a5,a5
  66:	d05c                	sw	a5,36(s0)
  68:	000007b7          	lui	a5,0x0
  6c:	00078793          	mv	a5,a5
  70:	d01c                	sw	a5,32(s0)
  72:	6785                	lui	a5,0x1
  74:	9c478793          	addi	a5,a5,-1596 # 9c4 <.LLST241>
  78:	00f41923          	sh	a5,18(s0)
  7c:	000007b7          	lui	a5,0x0
  80:	0017c783          	lbu	a5,1(a5) # 1 <lld_evt_scan_create+0x1>
  84:	6719                	lui	a4,0x6
  86:	05070713          	addi	a4,a4,80 # 6050 <.LASF706+0x281f>
  8a:	8bbd                	andi	a5,a5,15
  8c:	8fd9                	or	a5,a5,a4
  8e:	00f41823          	sh	a5,16(s0)
  92:	20000793          	li	a5,512
  96:	00040ba3          	sb	zero,23(s0)
  9a:	00f41c23          	sh	a5,24(s0)
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <.LVL458+0x4a>

000000a6 <.LVL459>:
  a6:	c408                	sw	a0,8(s0)
  a8:	40f2                	lw	ra,28(sp)
  aa:	8522                	mv	a0,s0
  ac:	4462                	lw	s0,24(sp)

000000ae <.LVL460>:
  ae:	44d2                	lw	s1,20(sp)
  b0:	6105                	addi	sp,sp,32
  b2:	8082                	ret

Disassembly of section .text.lld_evt_move_to_master:

00000000 <lld_evt_move_to_master>:
   0:	7139                	addi	sp,sp,-64
   2:	de06                	sw	ra,60(sp)
   4:	dc22                	sw	s0,56(sp)
   6:	da26                	sw	s1,52(sp)
   8:	d84a                	sw	s2,48(sp)
   a:	d452                	sw	s4,40(sp)
   c:	d256                	sw	s5,36(sp)
   e:	d05a                	sw	s6,32(sp)
  10:	ce5e                	sw	s7,28(sp)
  12:	cc62                	sw	s8,24(sp)
  14:	d64e                	sw	s3,44(sp)
  16:	842a                	mv	s0,a0
  18:	c636                	sw	a3,12(sp)
  1a:	8b2e                	mv	s6,a1
  1c:	00452983          	lw	s3,4(a0)

00000020 <.LVL462>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL462>

00000028 <.LVL463>:
  28:	07445783          	lhu	a5,116(s0)

0000002c <.LBB747>:
  2c:	05c00713          	li	a4,92
  30:	28008c37          	lui	s8,0x28008
  34:	02e787b3          	mul	a5,a5,a4
  38:	0ccc0713          	addi	a4,s8,204 # 280080cc <.LASF706+0x2800489b>

0000003c <.LBE747>:
  3c:	0789da03          	lhu	s4,120(s3)
  40:	0089a483          	lw	s1,8(s3)
  44:	8aaa                	mv	s5,a0

00000046 <.LBB751>:
  46:	8522                	mv	a0,s0

00000048 <.LBB752>:
  48:	3d2c0c13          	addi	s8,s8,978

0000004c <.LBB757>:
  4c:	97ba                	add	a5,a5,a4
  4e:	0007db83          	lhu	s7,0(a5)

00000052 <.LBE757>:
  52:	00042223          	sw	zero,4(s0)
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LBE757+0x4>

0000005e <.LVL466>:
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL466>

00000066 <.LBB758>:
  66:	46b2                	lw	a3,12(sp)
  68:	47b9                	li	a5,14

0000006a <.LBE758>:
  6a:	0344f4b3          	remu	s1,s1,s4
  6e:	0b86                	slli	s7,s7,0x1
  70:	0bc2                	slli	s7,s7,0x10
  72:	04000637          	lui	a2,0x4000
  76:	010bdb93          	srli	s7,s7,0x10

0000007a <.LBB759>:
  7a:	02f686b3          	mul	a3,a3,a5

0000007e <.LBE759>:
  7e:	02c45783          	lhu	a5,44(s0)
  82:	01049913          	slli	s2,s1,0x10
  86:	01095913          	srli	s2,s2,0x10

0000008a <.LBB760>:
  8a:	96e2                	add	a3,a3,s8
  8c:	0006d703          	lhu	a4,0(a3)

00000090 <.LBE760>:
  90:	8321                	srli	a4,a4,0x8

00000092 <.LVL471>:
  92:	070e                	slli	a4,a4,0x3
  94:	97ba                	add	a5,a5,a4
  96:	48e78793          	addi	a5,a5,1166
  9a:	27100713          	li	a4,625
  9e:	02e7d7b3          	divu	a5,a5,a4
  a2:	5418                	lw	a4,40(s0)
  a4:	177d                	addi	a4,a4,-1
  a6:	97ba                	add	a5,a5,a4
  a8:	08000737          	lui	a4,0x8000
  ac:	177d                	addi	a4,a4,-1
  ae:	8ff9                	and	a5,a5,a4

000000b0 <.LVL472>:
  b0:	409784b3          	sub	s1,a5,s1
  b4:	8cf9                	and	s1,s1,a4
  b6:	0344f4b3          	remu	s1,s1,s4
  ba:	00fa0433          	add	s0,s4,a5

000000be <.LVL473>:
  be:	8c05                	sub	s0,s0,s1
  c0:	8c79                	and	s0,s0,a4

000000c2 <.LVL474>:
  c2:	40f406b3          	sub	a3,s0,a5
  c6:	8ef9                	and	a3,a3,a4
  c8:	00d67663          	bgeu	a2,a3,d4 <.L313>
  cc:	8f81                	sub	a5,a5,s0

000000ce <.LVL475>:
  ce:	8ff9                	and	a5,a5,a4
  d0:	40f006b3          	neg	a3,a5

000000d4 <.L313>:
  d4:	0176d563          	bge	a3,s7,de <.L314>
  d8:	9452                	add	s0,s0,s4

000000da <.LVL476>:
  da:	0416                	slli	s0,s0,0x5
  dc:	8015                	srli	s0,s0,0x5

000000de <.L314>:
  de:	080007b7          	lui	a5,0x8000
  e2:	408504b3          	sub	s1,a0,s0
  e6:	17fd                	addi	a5,a5,-1
  e8:	8cfd                	and	s1,s1,a5
  ea:	04000737          	lui	a4,0x4000
  ee:	00977763          	bgeu	a4,s1,fc <.L316>

000000f2 <.LVL478>:
  f2:	40a40533          	sub	a0,s0,a0

000000f6 <.LVL479>:
  f6:	8d7d                	and	a0,a0,a5
  f8:	e90d                	bnez	a0,12a <.L317>
  fa:	4481                	li	s1,0

000000fc <.L316>:
  fc:	0344c4b3          	div	s1,s1,s4

00000100 <.LVL481>:
 100:	855a                	mv	a0,s6
 102:	0485                	addi	s1,s1,1
 104:	04c2                	slli	s1,s1,0x10
 106:	80c1                	srli	s1,s1,0x10

00000108 <.LVL482>:
 108:	03448a33          	mul	s4,s1,s4

0000010c <.LVL483>:
 10c:	01049593          	slli	a1,s1,0x10
 110:	85c1                	srai	a1,a1,0x10
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.LVL483+0x6>

0000011a <.LVL484>:
 11a:	0609d783          	lhu	a5,96(s3)
 11e:	94be                	add	s1,s1,a5

00000120 <.LVL485>:
 120:	06999023          	sh	s1,96(s3)
 124:	9452                	add	s0,s0,s4

00000126 <.LVL486>:
 126:	0416                	slli	s0,s0,0x5
 128:	8015                	srli	s0,s0,0x5

0000012a <.L317>:
 12a:	0789d783          	lhu	a5,120(s3)
 12e:	0089a423          	sw	s0,8(s3)
 132:	27100713          	li	a4,625
 136:	00fa9223          	sh	a5,4(s5)
 13a:	0129d783          	lhu	a5,18(s3)
 13e:	8556                	mv	a0,s5
 140:	02e7d7b3          	divu	a5,a5,a4
 144:	05c00713          	li	a4,92
 148:	00fa9423          	sh	a5,8(s5)
 14c:	0749d783          	lhu	a5,116(s3)
 150:	012a9323          	sh	s2,6(s5)
 154:	000a9623          	sh	zero,12(s5)
 158:	00fa9523          	sh	a5,10(s5)
 15c:	0749d783          	lhu	a5,116(s3)
 160:	02e787b3          	mul	a5,a5,a4
 164:	08e78793          	addi	a5,a5,142 # 800008e <.LASF706+0x7ffc85d>
 168:	00fa9723          	sh	a5,14(s5)
 16c:	00000097          	auipc	ra,0x0
 170:	000080e7          	jalr	ra # 16c <.L317+0x42>

00000174 <.LVL488>:
 174:	854e                	mv	a0,s3
 176:	0559a823          	sw	s5,80(s3)
 17a:	4589                	li	a1,2
 17c:	00000097          	auipc	ra,0x0
 180:	000080e7          	jalr	ra # 17c <.LVL488+0x8>

00000184 <.LVL489>:
 184:	07e9c783          	lbu	a5,126(s3)
 188:	854e                	mv	a0,s3
 18a:	0027e793          	ori	a5,a5,2
 18e:	06f98f23          	sb	a5,126(s3)
 192:	50f2                	lw	ra,60(sp)
 194:	5462                	lw	s0,56(sp)

00000196 <.LVL490>:
 196:	54d2                	lw	s1,52(sp)
 198:	5942                	lw	s2,48(sp)

0000019a <.LVL491>:
 19a:	59b2                	lw	s3,44(sp)

0000019c <.LVL492>:
 19c:	5a22                	lw	s4,40(sp)
 19e:	5a92                	lw	s5,36(sp)

000001a0 <.LVL493>:
 1a0:	5b02                	lw	s6,32(sp)
 1a2:	4bf2                	lw	s7,28(sp)

000001a4 <.LVL494>:
 1a4:	4c62                	lw	s8,24(sp)
 1a6:	6121                	addi	sp,sp,64
 1a8:	8082                	ret

Disassembly of section .text.lld_evt_update_create:

00000000 <lld_evt_update_create>:
   0:	711d                	addi	sp,sp,-96
   2:	c8ca                	sw	s2,80(sp)
   4:	892a                	mv	s2,a0
   6:	05800513          	li	a0,88

0000000a <.LVL496>:
   a:	cca2                	sw	s0,88(sp)
   c:	caa6                	sw	s1,84(sp)
   e:	c6ce                	sw	s3,76(sp)
  10:	c4d2                	sw	s4,72(sp)
  12:	c2d6                	sw	s5,68(sp)
  14:	c0da                	sw	s6,64(sp)
  16:	de5e                	sw	s7,60(sp)
  18:	ce86                	sw	ra,92(sp)
  1a:	8a2e                	mv	s4,a1
  1c:	8bb2                	mv	s7,a2
  1e:	8b36                	mv	s6,a3
  20:	89ba                	mv	s3,a4
  22:	8abe                	mv	s5,a5
  24:	84c2                	mv	s1,a6
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL496+0x1c>

0000002e <.LVL497>:
  2e:	842a                	mv	s0,a0

00000030 <.LVL498>:
  30:	12050d63          	beqz	a0,16a <.L320>

00000034 <.LBB765>:
  34:	000007b7          	lui	a5,0x0
  38:	0007a783          	lw	a5,0(a5) # 0 <lld_evt_update_create>
  3c:	02c00613          	li	a2,44
  40:	85ca                	mv	a1,s2
  42:	9782                	jalr	a5

00000044 <.LVL500>:
  44:	02840513          	addi	a0,s0,40

00000048 <.LVL501>:
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL501>

00000050 <.LVL502>:
  50:	478d                	li	a5,3
  52:	0985                	addi	s3,s3,1
  54:	05341f23          	sh	s3,94(s0)
  58:	06f40da3          	sb	a5,123(s0)
  5c:	07495783          	lhu	a5,116(s2)
  60:	05c00713          	li	a4,92
  64:	006c                	addi	a1,sp,12
  66:	02f11423          	sh	a5,40(sp)
  6a:	02e787b3          	mul	a5,a5,a4
  6e:	0828                	addi	a0,sp,24
  70:	01711c23          	sh	s7,24(sp)
  74:	01611d23          	sh	s6,26(sp)
  78:	03411023          	sh	s4,32(sp)
  7c:	ce52                	sw	s4,28(sp)
  7e:	03510123          	sb	s5,34(sp)
  82:	02010323          	sb	zero,38(sp)
  86:	02011523          	sh	zero,42(sp)
  8a:	08e78793          	addi	a5,a5,142
  8e:	02f11723          	sh	a5,46(sp)
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL502+0x42>

0000009a <.LVL503>:
  9a:	006c                	addi	a1,sp,12
  9c:	0828                	addi	a0,sp,24
  9e:	02011223          	sh	zero,36(sp)
  a2:	02010623          	sb	zero,44(sp)
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LVL503+0xc>

000000ae <.LVL504>:
  ae:	ed39                	bnez	a0,10c <.L322>
  b0:	00c15783          	lhu	a5,12(sp)
  b4:	006c                	addi	a1,sp,12
  b6:	8522                	mv	a0,s0
  b8:	06f41c23          	sh	a5,120(s0)
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LVL504+0xe>

000000c4 <.LBB766>:
  c4:	05e95683          	lhu	a3,94(s2)
  c8:	4799                	li	a5,6
  ca:	06095603          	lhu	a2,96(s2)
  ce:	02f686b3          	mul	a3,a3,a5
  d2:	4408                	lw	a0,8(s0)
  d4:	01069793          	slli	a5,a3,0x10
  d8:	07895683          	lhu	a3,120(s2)
  dc:	83c1                	srli	a5,a5,0x10

000000de <.LVL506>:
  de:	963e                	add	a2,a2,a5
  e0:	02f686b3          	mul	a3,a3,a5
  e4:	00892783          	lw	a5,8(s2)

000000e8 <.LVL507>:
  e8:	0642                	slli	a2,a2,0x10
  ea:	8241                	srli	a2,a2,0x10

000000ec <.LVL508>:
  ec:	96be                	add	a3,a3,a5
  ee:	080007b7          	lui	a5,0x8000
  f2:	fff78593          	addi	a1,a5,-1 # 7ffffff <.LASF706+0x7ffc7ce>
  f6:	8eed                	and	a3,a3,a1

000000f8 <.LVL509>:
  f8:	40a68733          	sub	a4,a3,a0
  fc:	00b777b3          	and	a5,a4,a1
 100:	04000737          	lui	a4,0x4000
 104:	00f76e63          	bltu	a4,a5,120 <.L323>
 108:	873e                	mv	a4,a5
 10a:	a00d                	j	12c <.L325>

0000010c <.L322>:
 10c:	4601                	li	a2,0
 10e:	4585                	li	a1,1
 110:	8522                	mv	a0,s0
 112:	00000097          	auipc	ra,0x0
 116:	000080e7          	jalr	ra # 112 <.L322+0x6>

0000011a <.LBB769>:
 11a:	00802783          	lw	a5,8(zero) # 8 <lld_evt_update_create+0x8>
 11e:	9002                	ebreak

00000120 <.L323>:
 120:	40d50733          	sub	a4,a0,a3
 124:	00b777b3          	and	a5,a4,a1
 128:	40f00733          	neg	a4,a5

0000012c <.L325>:
 12c:	07845583          	lhu	a1,120(s0)

00000130 <.LVL514>:
 130:	fff58793          	addi	a5,a1,-1
 134:	97ba                	add	a5,a5,a4
 136:	02b7c7b3          	div	a5,a5,a1
 13a:	4705                	li	a4,1

0000013c <.LVL515>:
 13c:	02b787b3          	mul	a5,a5,a1
 140:	97aa                	add	a5,a5,a0
 142:	0796                	slli	a5,a5,0x5
 144:	8395                	srli	a5,a5,0x5
 146:	c41c                	sw	a5,8(s0)
 148:	00e48223          	sb	a4,4(s1)
 14c:	04c91e23          	sh	a2,92(s2)
 150:	441c                	lw	a5,8(s0)
 152:	00c49123          	sh	a2,2(s1)
 156:	40d786b3          	sub	a3,a5,a3

0000015a <.LVL516>:
 15a:	0696                	slli	a3,a3,0x5
 15c:	8299                	srli	a3,a3,0x6
 15e:	00d49023          	sh	a3,0(s1)

00000162 <.LBE769>:
 162:	00892223          	sw	s0,4(s2)
 166:	06e906a3          	sb	a4,109(s2)

0000016a <.L320>:
 16a:	8522                	mv	a0,s0
 16c:	40f6                	lw	ra,92(sp)
 16e:	4466                	lw	s0,88(sp)

00000170 <.LVL519>:
 170:	44d6                	lw	s1,84(sp)

00000172 <.LVL520>:
 172:	4946                	lw	s2,80(sp)

00000174 <.LVL521>:
 174:	49b6                	lw	s3,76(sp)
 176:	4a26                	lw	s4,72(sp)
 178:	4a96                	lw	s5,68(sp)
 17a:	4b06                	lw	s6,64(sp)
 17c:	5bf2                	lw	s7,60(sp)
 17e:	6125                	addi	sp,sp,96
 180:	8082                	ret

Disassembly of section .text.lld_evt_move_to_slave:

00000000 <lld_evt_move_to_slave>:
   0:	7119                	addi	sp,sp,-128
   2:	d6ce                	sw	s3,108(sp)
   4:	89aa                	mv	s3,a0
   6:	05800513          	li	a0,88

0000000a <.LVL523>:
   a:	c62e                	sw	a1,12(sp)
   c:	de86                	sw	ra,124(sp)
   e:	dca2                	sw	s0,120(sp)
  10:	daa6                	sw	s1,116(sp)
  12:	d4d2                	sw	s4,104(sp)
  14:	d2d6                	sw	s5,100(sp)
  16:	d0da                	sw	s6,96(sp)
  18:	cce2                	sw	s8,88(sp)
  1a:	cae6                	sw	s9,84(sp)
  1c:	c8ea                	sw	s10,80(sp)
  1e:	c6ee                	sw	s11,76(sp)
  20:	84b6                	mv	s1,a3
  22:	8db2                	mv	s11,a2
  24:	d8ca                	sw	s2,112(sp)
  26:	cede                	sw	s7,92(sp)
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL523+0x1e>

00000030 <.LVL524>:
  30:	842a                	mv	s0,a0

00000032 <.LVL525>:
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL525>

0000003a <.LBB770>:
  3a:	28008737          	lui	a4,0x28008
  3e:	19475a03          	lhu	s4,404(a4) # 28008194 <.LASF706+0x28004963>

00000042 <.LBE770>:
  42:	45b2                	lw	a1,12(sp)

00000044 <.LBB774>:
  44:	010a1d13          	slli	s10,s4,0x10

00000048 <.LBB775>:
  48:	19675a03          	lhu	s4,406(a4)

0000004c <.LBB778>:
  4c:	19875c83          	lhu	s9,408(a4)

00000050 <.LBB782>:
  50:	15475783          	lhu	a5,340(a4)

00000054 <.LBE782>:
  54:	0145db03          	lhu	s6,20(a1)

00000058 <.LBB786>:
  58:	0215cc03          	lbu	s8,33(a1)

0000005c <.LBB789>:
  5c:	83a1                	srli	a5,a5,0x8

0000005e <.LBE789>:
  5e:	0135ca83          	lbu	s5,19(a1)

00000062 <.LBB790>:
  62:	00f988a3          	sb	a5,17(s3)

00000066 <.LBE790>:
  66:	2e040a63          	beqz	s0,35a <.L332>
  6a:	02840b93          	addi	s7,s0,40

0000006e <.LVL530>:
  6e:	892a                	mv	s2,a0

00000070 <.LBB791>:
  70:	855e                	mv	a0,s7

00000072 <.LVL531>:
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL531>

0000007a <.LVL532>:
  7a:	4601                	li	a2,0
  7c:	4585                	li	a1,1
  7e:	856e                	mv	a0,s11
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL532+0x6>

00000088 <.LVL533>:
  88:	06941a23          	sh	s1,116(s0)
  8c:	0009d783          	lhu	a5,0(s3)

00000090 <.LBE791>:
  90:	005c5c13          	srli	s8,s8,0x5

00000094 <.LBB793>:
  94:	4e200713          	li	a4,1250
  98:	0786                	slli	a5,a5,0x1
  9a:	06f41c23          	sh	a5,120(s0)
  9e:	0029d783          	lhu	a5,2(s3)
  a2:	07840723          	sb	s8,110(s0)
  a6:	060408a3          	sb	zero,113(s0)
  aa:	0785                	addi	a5,a5,1
  ac:	04f41f23          	sh	a5,94(s0)
  b0:	4791                	li	a5,4
  b2:	06f40da3          	sb	a5,123(s0)
  b6:	4789                	li	a5,2
  b8:	06f41223          	sh	a5,100(s0)
  bc:	019dc783          	lbu	a5,25(s11)
  c0:	0a42                	slli	s4,s4,0x10

000000c2 <.LVL535>:
  c2:	0cc2                	slli	s9,s9,0x10

000000c4 <.LVL536>:
  c4:	00e41923          	sh	a4,18(s0)
  c8:	00f40ca3          	sb	a5,25(s0)
  cc:	001b1713          	slli	a4,s6,0x1
  d0:	010d5d13          	srli	s10,s10,0x10

000000d4 <.LVL537>:
  d4:	010a5a13          	srli	s4,s4,0x10
  d8:	010cdc93          	srli	s9,s9,0x10

000000dc <.LVL538>:
  dc:	02e7e163          	bltu	a5,a4,fe <.L333>
  e0:	0009d983          	lhu	s3,0(s3)

000000e4 <.LVL539>:
  e4:	4585                	li	a1,1
  e6:	8526                	mv	a0,s1
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LVL539+0x4>

000000f0 <.LVL540>:
  f0:	9b4e                	add	s6,s6,s3

000000f2 <.LVL541>:
  f2:	0b42                	slli	s6,s6,0x10
  f4:	4785                	li	a5,1
  f6:	010b5b13          	srli	s6,s6,0x10

000000fa <.LVL542>:
  fa:	06f41023          	sh	a5,96(s0)

000000fe <.L333>:
  fe:	002a8993          	addi	s3,s5,2
 102:	0b06                	slli	s6,s6,0x1

00000104 <.LVL543>:
 104:	9b4e                	add	s6,s6,s3
 106:	0b42                	slli	s6,s6,0x10
 108:	010b5b13          	srli	s6,s6,0x10
 10c:	85e2                	mv	a1,s8
 10e:	855a                	mv	a0,s6
 110:	00000097          	auipc	ra,0x0
 114:	000080e7          	jalr	ra # 110 <.LVL543+0xc>

00000118 <.LVL544>:
 118:	4e200793          	li	a5,1250
 11c:	02fa8ab3          	mul	s5,s5,a5

00000120 <.LVL545>:
 120:	cc28                	sw	a0,88(s0)
 122:	4585                	li	a1,1
 124:	855e                	mv	a0,s7

00000126 <.LBB794>:
 126:	3ffcfc93          	andi	s9,s9,1023

0000012a <.LBB795>:
 12a:	0a42                	slli	s4,s4,0x10
 12c:	01aa6a33          	or	s4,s4,s10

00000130 <.LBB796>:
 130:	fdfa8a93          	addi	s5,s5,-33
 134:	05542a23          	sw	s5,84(s0)
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.LBB796+0x8>

00000140 <.LVL547>:
 140:	3a800793          	li	a5,936
 144:	419787b3          	sub	a5,a5,s9
 148:	07c2                	slli	a5,a5,0x10
 14a:	83c1                	srli	a5,a5,0x10

0000014c <.LVL548>:
 14c:	27000713          	li	a4,624
 150:	00f77963          	bgeu	a4,a5,162 <.L334>
 154:	13700793          	li	a5,311

00000158 <.LVL549>:
 158:	419787b3          	sub	a5,a5,s9
 15c:	07c2                	slli	a5,a5,0x10
 15e:	83c1                	srli	a5,a5,0x10

00000160 <.LVL550>:
 160:	0a05                	addi	s4,s4,1

00000162 <.L334>:
 162:	07445703          	lhu	a4,116(s0)
 166:	05c00a93          	li	s5,92
 16a:	02f41623          	sh	a5,44(s0)
 16e:	03570733          	mul	a4,a4,s5
 172:	6799                	lui	a5,0x6

00000174 <.LVL552>:
 174:	03442423          	sw	s4,40(s0)
 178:	00f41823          	sh	a5,16(s0)
 17c:	4589                	li	a1,2
 17e:	8522                	mv	a0,s0
 180:	4a05                	li	s4,1

00000182 <.LVL553>:
 182:	08e70713          	addi	a4,a4,142
 186:	06e41b23          	sh	a4,118(s0)
 18a:	00000737          	lui	a4,0x0
 18e:	00070713          	mv	a4,a4
 192:	cc58                	sw	a4,28(s0)
 194:	00000737          	lui	a4,0x0
 198:	00070713          	mv	a4,a4
 19c:	d058                	sw	a4,36(s0)
 19e:	00000737          	lui	a4,0x0
 1a2:	00070713          	mv	a4,a4
 1a6:	d018                	sw	a4,32(s0)
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.LVL553+0x26>

000001b0 <.LVL554>:
 1b0:	07845783          	lhu	a5,120(s0)
 1b4:	07e44703          	lbu	a4,126(s0)
 1b8:	086c                	addi	a1,sp,28
 1ba:	02f11423          	sh	a5,40(sp)
 1be:	02f11523          	sh	a5,42(sp)
 1c2:	4789                	li	a5,2
 1c4:	d63e                	sw	a5,44(sp)
 1c6:	02f11823          	sh	a5,48(sp)
 1ca:	07445783          	lhu	a5,116(s0)
 1ce:	00276713          	ori	a4,a4,2
 1d2:	06e40f23          	sb	a4,126(s0)
 1d6:	02f11c23          	sh	a5,56(sp)
 1da:	035787b3          	mul	a5,a5,s5
 1de:	1028                	addi	a0,sp,40
 1e0:	00011e23          	sh	zero,28(sp)
 1e4:	d002                	sw	zero,32(sp)
 1e6:	02011223          	sh	zero,36(sp)
 1ea:	02010923          	sb	zero,50(sp)
 1ee:	03410b23          	sb	s4,54(sp)
 1f2:	03411d23          	sh	s4,58(sp)
 1f6:	08e78793          	addi	a5,a5,142 # 608e <.LASF706+0x285d>
 1fa:	02f11f23          	sh	a5,62(sp)
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.LVL554+0x4e>

00000206 <.LVL555>:
 206:	441c                	lw	a5,8(s0)
 208:	07845703          	lhu	a4,120(s0)
 20c:	086c                	addi	a1,sp,28
 20e:	1028                	addi	a0,sp,40
 210:	02e7f7b3          	remu	a5,a5,a4
 214:	02f11a23          	sh	a5,52(sp)
 218:	8b85                	andi	a5,a5,1
 21a:	02f10e23          	sb	a5,60(sp)
 21e:	00000097          	auipc	ra,0x0
 222:	000080e7          	jalr	ra # 21e <.LVL555+0x18>

00000226 <.LVL556>:
 226:	c945                	beqz	a0,2d6 <.L336>
 228:	086c                	addi	a1,sp,28
 22a:	1028                	addi	a0,sp,40
 22c:	02010b23          	sb	zero,54(sp)
 230:	00000097          	auipc	ra,0x0
 234:	000080e7          	jalr	ra # 230 <.LVL556+0xa>

00000238 <.LVL557>:
 238:	ed59                	bnez	a0,2d6 <.L336>

0000023a <.LBB792>:
 23a:	00849593          	slli	a1,s1,0x8
 23e:	0015e593          	ori	a1,a1,1
 242:	05c2                	slli	a1,a1,0x10
 244:	81c1                	srli	a1,a1,0x10
 246:	02200693          	li	a3,34
 24a:	4609                	li	a2,2
 24c:	10900513          	li	a0,265
 250:	00000097          	auipc	ra,0x0
 254:	000080e7          	jalr	ra # 250 <.LBB792+0x16>

00000258 <.LVL558>:
 258:	01450023          	sb	s4,0(a0)
 25c:	01c15583          	lhu	a1,28(sp)
 260:	84aa                	mv	s1,a0

00000262 <.LVL559>:
 262:	0015d793          	srli	a5,a1,0x1
 266:	00f51123          	sh	a5,2(a0)
 26a:	00f51223          	sh	a5,4(a0)
 26e:	00f51723          	sh	a5,14(a0)
 272:	00f51823          	sh	a5,16(a0)
 276:	05e45783          	lhu	a5,94(s0)
 27a:	00050923          	sb	zero,18(a0)
 27e:	17fd                	addi	a5,a5,-1
 280:	00f51323          	sh	a5,6(a0)
 284:	6785                	lui	a5,0x1
 286:	bb878793          	addi	a5,a5,-1096 # bb8 <.LASF201+0x9>
 28a:	00f51423          	sh	a5,8(a0)
 28e:	06045783          	lhu	a5,96(s0)
 292:	00f51a23          	sh	a5,20(a0)
 296:	00f51523          	sh	a5,10(a0)
 29a:	06045783          	lhu	a5,96(s0)
 29e:	00f51623          	sh	a5,12(a0)
 2a2:	4410                	lw	a2,8(s0)
 2a4:	02415503          	lhu	a0,36(sp)
 2a8:	00000097          	auipc	ra,0x0
 2ac:	000080e7          	jalr	ra # 2a8 <.LVL559+0x46>

000002b0 <.LVL560>:
 2b0:	57fd                	li	a5,-1
 2b2:	8105                	srli	a0,a0,0x1
 2b4:	00a49b23          	sh	a0,22(s1)
 2b8:	00f49c23          	sh	a5,24(s1)
 2bc:	00f49d23          	sh	a5,26(s1)
 2c0:	00f49e23          	sh	a5,28(s1)
 2c4:	00f49f23          	sh	a5,30(s1)
 2c8:	02f49023          	sh	a5,32(s1)
 2cc:	8526                	mv	a0,s1
 2ce:	00000097          	auipc	ra,0x0
 2d2:	000080e7          	jalr	ra # 2ce <.LVL560+0x1e>

000002d6 <.L336>:
 2d6:	07845703          	lhu	a4,120(s0)
 2da:	441c                	lw	a5,8(s0)
 2dc:	854a                	mv	a0,s2
 2de:	02e7f7b3          	remu	a5,a5,a4
 2e2:	05c00713          	li	a4,92
 2e6:	00f91323          	sh	a5,6(s2)
 2ea:	07845783          	lhu	a5,120(s0)
 2ee:	00f91223          	sh	a5,4(s2)
 2f2:	4789                	li	a5,2
 2f4:	00f91423          	sh	a5,8(s2)
 2f8:	07445783          	lhu	a5,116(s0)
 2fc:	00f91523          	sh	a5,10(s2)
 300:	4785                	li	a5,1
 302:	00f91623          	sh	a5,12(s2)
 306:	07445783          	lhu	a5,116(s0)
 30a:	02e787b3          	mul	a5,a5,a4
 30e:	08e78793          	addi	a5,a5,142
 312:	00f91723          	sh	a5,14(s2)
 316:	00000097          	auipc	ra,0x0
 31a:	000080e7          	jalr	ra # 316 <.L336+0x40>

0000031e <.LVL562>:
 31e:	85da                	mv	a1,s6
 320:	05242823          	sw	s2,80(s0)
 324:	8522                	mv	a0,s0
 326:	00000097          	auipc	ra,0x0
 32a:	000080e7          	jalr	ra # 326 <.LVL562+0x8>

0000032e <.LVL563>:
 32e:	07e44783          	lbu	a5,126(s0)
 332:	0017e793          	ori	a5,a5,1
 336:	06f40f23          	sb	a5,126(s0)

0000033a <.L331>:
 33a:	8522                	mv	a0,s0
 33c:	50f6                	lw	ra,124(sp)
 33e:	5466                	lw	s0,120(sp)

00000340 <.LVL565>:
 340:	54d6                	lw	s1,116(sp)
 342:	5946                	lw	s2,112(sp)
 344:	59b6                	lw	s3,108(sp)
 346:	5a26                	lw	s4,104(sp)
 348:	5a96                	lw	s5,100(sp)
 34a:	5b06                	lw	s6,96(sp)
 34c:	4bf6                	lw	s7,92(sp)
 34e:	4c66                	lw	s8,88(sp)
 350:	4cd6                	lw	s9,84(sp)
 352:	4d46                	lw	s10,80(sp)
 354:	4db6                	lw	s11,76(sp)

00000356 <.LVL566>:
 356:	6109                	addi	sp,sp,128

00000358 <.LVL567>:
 358:	8082                	ret

0000035a <.L332>:
 35a:	4601                	li	a2,0
 35c:	4585                	li	a1,1
 35e:	856e                	mv	a0,s11

00000360 <.LVL569>:
 360:	00000097          	auipc	ra,0x0
 364:	000080e7          	jalr	ra # 360 <.LVL569>

00000368 <.LVL570>:
 368:	bfc9                	j	33a <.L331>

Disassembly of section .text.lld_evt_slave_update:

00000000 <lld_evt_slave_update>:
   0:	0605d703          	lhu	a4,96(a1)
   4:	00a55783          	lhu	a5,10(a0)
   8:	06f71d63          	bne	a4,a5,82 <.L341>

0000000c <.LBB797>:
   c:	0745d703          	lhu	a4,116(a1)
  10:	000007b7          	lui	a5,0x0
  14:	00078793          	mv	a5,a5
  18:	070a                	slli	a4,a4,0x2
  1a:	97ba                	add	a5,a5,a4
  1c:	00455703          	lhu	a4,4(a0)
  20:	0785d683          	lhu	a3,120(a1)
  24:	439c                	lw	a5,0(a5)

00000026 <.LVL572>:
  26:	0706                	slli	a4,a4,0x1
  28:	00e69f63          	bne	a3,a4,46 <.L342>
  2c:	00655703          	lhu	a4,6(a0)
  30:	05e5d683          	lhu	a3,94(a1)
  34:	0705                	addi	a4,a4,1
  36:	00e69863          	bne	a3,a4,46 <.L342>
  3a:	0547d683          	lhu	a3,84(a5) # 54 <.L343+0x2>
  3e:	0567d703          	lhu	a4,86(a5)
  42:	00e68863          	beq	a3,a4,52 <.L343>

00000046 <.L342>:
  46:	05c7d703          	lhu	a4,92(a5)
  4a:	08076713          	ori	a4,a4,128
  4e:	04e79e23          	sh	a4,92(a5)

00000052 <.L343>:
  52:	00455783          	lhu	a5,4(a0)

00000056 <.LVL573>:
  56:	0786                	slli	a5,a5,0x1
  58:	06f59c23          	sh	a5,120(a1)
  5c:	00655783          	lhu	a5,6(a0)
  60:	0785                	addi	a5,a5,1
  62:	04f59f23          	sh	a5,94(a1)
  66:	00a55783          	lhu	a5,10(a0)

0000006a <.LBB798>:
  6a:	04f59e23          	sh	a5,92(a1)
  6e:	4785                	li	a5,1
  70:	06f586a3          	sb	a5,109(a1)
  74:	07e5c783          	lbu	a5,126(a1)
  78:	0097e793          	ori	a5,a5,9
  7c:	06f58f23          	sb	a5,126(a1)

00000080 <.LBE798>:
  80:	8082                	ret

00000082 <.L341>:
  82:	1141                	addi	sp,sp,-16
  84:	c226                	sw	s1,4(sp)
  86:	84aa                	mv	s1,a0
  88:	05800513          	li	a0,88

0000008c <.LVL575>:
  8c:	c422                	sw	s0,8(sp)
  8e:	c04a                	sw	s2,0(sp)
  90:	c606                	sw	ra,12(sp)
  92:	842e                	mv	s0,a1
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL575+0x8>

0000009c <.LVL576>:
  9c:	892a                	mv	s2,a0

0000009e <.LVL577>:
  9e:	c165                	beqz	a0,17e <.L340>

000000a0 <.LBB799>:
  a0:	000007b7          	lui	a5,0x0
  a4:	0007a783          	lw	a5,0(a5) # 0 <lld_evt_slave_update>
  a8:	02c00613          	li	a2,44
  ac:	85a2                	mv	a1,s0
  ae:	9782                	jalr	a5

000000b0 <.LVL579>:
  b0:	02890513          	addi	a0,s2,40

000000b4 <.LVL580>:
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL580>

000000bc <.LVL581>:
  bc:	07445783          	lhu	a5,116(s0)
  c0:	06f91a23          	sh	a5,116(s2)
  c4:	0044d783          	lhu	a5,4(s1)
  c8:	0786                	slli	a5,a5,0x1
  ca:	06f91c23          	sh	a5,120(s2)
  ce:	0064d783          	lhu	a5,6(s1)
  d2:	0785                	addi	a5,a5,1
  d4:	04f91f23          	sh	a5,94(s2)
  d8:	4791                	li	a5,4
  da:	06f90da3          	sb	a5,123(s2)
  de:	06e44583          	lbu	a1,110(s0)
  e2:	06b90723          	sb	a1,110(s2)
  e6:	06445783          	lhu	a5,100(s0)
  ea:	06f91223          	sh	a5,100(s2)
  ee:	07e94783          	lbu	a5,126(s2)
  f2:	0017e793          	ori	a5,a5,1
  f6:	06f90f23          	sb	a5,126(s2)
  fa:	57fd                	li	a5,-1
  fc:	00f91923          	sh	a5,18(s2)

00000100 <.LBB800>:
 100:	0014c783          	lbu	a5,1(s1)
 104:	0024d503          	lhu	a0,2(s1)
 108:	953e                	add	a0,a0,a5
 10a:	07845783          	lhu	a5,120(s0)
 10e:	0506                	slli	a0,a0,0x1
 110:	953e                	add	a0,a0,a5
 112:	0542                	slli	a0,a0,0x10
 114:	8141                	srli	a0,a0,0x10
 116:	00000097          	auipc	ra,0x0
 11a:	000080e7          	jalr	ra # 116 <.LBB800+0x16>

0000011e <.LVL583>:
 11e:	04a92c23          	sw	a0,88(s2)
 122:	0014c783          	lbu	a5,1(s1)
 126:	4e200713          	li	a4,1250
 12a:	02e787b3          	mul	a5,a5,a4
 12e:	fdf78793          	addi	a5,a5,-33
 132:	04f92a23          	sw	a5,84(s2)
 136:	01242223          	sw	s2,4(s0)
 13a:	00a4d783          	lhu	a5,10(s1)

0000013e <.LBB801>:
 13e:	07e44703          	lbu	a4,126(s0)
 142:	06045683          	lhu	a3,96(s0)
 146:	04f41e23          	sh	a5,92(s0)
 14a:	4785                	li	a5,1
 14c:	06f406a3          	sb	a5,109(s0)
 150:	0024d783          	lhu	a5,2(s1)

00000154 <.LBB802>:
 154:	06f41323          	sh	a5,102(s0)
 158:	0014c783          	lbu	a5,1(s1)
 15c:	06f40623          	sb	a5,108(s0)
 160:	00176793          	ori	a5,a4,1
 164:	06f40f23          	sb	a5,126(s0)
 168:	00a4d783          	lhu	a5,10(s1)
 16c:	17fd                	addi	a5,a5,-1
 16e:	07c2                	slli	a5,a5,0x10
 170:	83c1                	srli	a5,a5,0x10
 172:	00f69663          	bne	a3,a5,17e <.L340>
 176:	00976713          	ori	a4,a4,9
 17a:	06e40f23          	sb	a4,126(s0)

0000017e <.L340>:
 17e:	40b2                	lw	ra,12(sp)
 180:	4422                	lw	s0,8(sp)

00000182 <.LVL587>:
 182:	4492                	lw	s1,4(sp)

00000184 <.LVL588>:
 184:	4902                	lw	s2,0(sp)

00000186 <.LVL589>:
 186:	0141                	addi	sp,sp,16
 188:	8082                	ret

Disassembly of section .text.lld_evt_adv_create:

00000000 <lld_evt_adv_create>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0
   6:	05800513          	li	a0,88

0000000a <.LVL591>:
   a:	c436                	sw	a3,8(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	c632                	sw	a2,12(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL591+0x8>

0000001a <.LVL592>:
  1a:	842a                	mv	s0,a0

0000001c <.LVL593>:
  1c:	02850513          	addi	a0,a0,40

00000020 <.LVL594>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL594>

00000028 <.LVL595>:
  28:	6785                	lui	a5,0x1
  2a:	9c478793          	addi	a5,a5,-1596 # 9c4 <.LLST241>
  2e:	00f41923          	sh	a5,18(s0)
  32:	05c00793          	li	a5,92
  36:	06941a23          	sh	s1,116(s0)
  3a:	02f484b3          	mul	s1,s1,a5
  3e:	4632                	lw	a2,12(sp)
  40:	06041d23          	sh	zero,122(s0)
  44:	4595                	li	a1,5
  46:	06c41c23          	sh	a2,120(s0)
  4a:	8522                	mv	a0,s0
  4c:	08e48493          	addi	s1,s1,142
  50:	06941b23          	sh	s1,118(s0)
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL595+0x2c>

0000005c <.LVL596>:
  5c:	20000793          	li	a5,512
  60:	00f41c23          	sh	a5,24(s0)
  64:	000007b7          	lui	a5,0x0
  68:	00078793          	mv	a5,a5
  6c:	cc5c                	sw	a5,28(s0)
  6e:	000007b7          	lui	a5,0x0
  72:	00078793          	mv	a5,a5
  76:	d05c                	sw	a5,36(s0)
  78:	000007b7          	lui	a5,0x0
  7c:	00078793          	mv	a5,a5
  80:	46a2                	lw	a3,8(sp)
  82:	d01c                	sw	a5,32(s0)
  84:	6799                	lui	a5,0x6
  86:	00040ba3          	sb	zero,23(s0)
  8a:	00f41823          	sh	a5,16(s0)
  8e:	e699                	bnez	a3,9c <.L351>
  90:	07e44783          	lbu	a5,126(s0)
  94:	0207e793          	ori	a5,a5,32
  98:	06f40f23          	sb	a5,126(s0)

0000009c <.L351>:
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.L351>

000000a4 <.LVL597>:
  a4:	c408                	sw	a0,8(s0)
  a6:	40f2                	lw	ra,28(sp)
  a8:	8522                	mv	a0,s0
  aa:	4462                	lw	s0,24(sp)

000000ac <.LVL598>:
  ac:	44d2                	lw	s1,20(sp)
  ae:	6105                	addi	sp,sp,32
  b0:	8082                	ret

Disassembly of section .text.lld_evt_end:

00000000 <lld_evt_end>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)

00000004 <.LVL600>:
   4:	ce06                	sw	ra,28(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	07455783          	lhu	a5,116(a0)

00000010 <.LBB831>:
  10:	05c00713          	li	a4,92

00000014 <.LBE831>:
  14:	842a                	mv	s0,a0

00000016 <.LBB832>:
  16:	02e787b3          	mul	a5,a5,a4
  1a:	28008737          	lui	a4,0x28008
  1e:	0e270693          	addi	a3,a4,226 # 280080e2 <.LASF706+0x280048b1>

00000022 <.LBB833>:
  22:	0e470593          	addi	a1,a4,228

00000026 <.LBB838>:
  26:	0e670713          	addi	a4,a4,230

0000002a <.LBB844>:
  2a:	96be                	add	a3,a3,a5

0000002c <.LBB845>:
  2c:	95be                	add	a1,a1,a5

0000002e <.LBB846>:
  2e:	97ba                	add	a5,a5,a4

00000030 <.LBB847>:
  30:	0006d603          	lhu	a2,0(a3)

00000034 <.LBB848>:
  34:	0005d483          	lhu	s1,0(a1)

00000038 <.LBB849>:
  38:	0006d983          	lhu	s3,0(a3)

0000003c <.LBB853>:
  3c:	0007d783          	lhu	a5,0(a5) # 6000 <.LASF706+0x27cf>

00000040 <.LBB854>:
  40:	80a1                	srli	s1,s1,0x8

00000042 <.LBB855>:
  42:	8221                	srli	a2,a2,0x8

00000044 <.LBB856>:
  44:	839d                	srli	a5,a5,0x7

00000046 <.LBE856>:
  46:	94b2                	add	s1,s1,a2

00000048 <.LBB857>:
  48:	09c2                	slli	s3,s3,0x10

0000004a <.LBE857>:
  4a:	8b85                	andi	a5,a5,1
  4c:	0ff4f493          	andi	s1,s1,255

00000050 <.LBB858>:
  50:	0109d993          	srli	s3,s3,0x10

00000054 <.LBB859>:
  54:	c399                	beqz	a5,5a <.L354>
  56:	18048a63          	beqz	s1,1ea <.L377>

0000005a <.L354>:
  5a:	07e44783          	lbu	a5,126(s0)
  5e:	0107f713          	andi	a4,a5,16
  62:	cf15                	beqz	a4,9e <.L356>

00000064 <.L403>:
  64:	4905                	li	s2,1

00000066 <.L357>:
  66:	07a44583          	lbu	a1,122(s0)
  6a:	0ab4ea63          	bltu	s1,a1,11e <.L365>
  6e:	40b485b3          	sub	a1,s1,a1
  72:	0ff5f593          	andi	a1,a1,255
  76:	02840513          	addi	a0,s0,40
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L357+0x14>

00000082 <.LVL607>:
  82:	07b44703          	lbu	a4,123(s0)
  86:	4789                	li	a5,2
  88:	0af71863          	bne	a4,a5,138 <.L366>
  8c:	0014f613          	andi	a2,s1,1
  90:	4589                	li	a1,2
  92:	8522                	mv	a0,s0
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL607+0x12>

0000009c <.LVL608>:
  9c:	a0ed                	j	186 <.L371>

0000009e <.L356>:
  9e:	0407f713          	andi	a4,a5,64
  a2:	c325                	beqz	a4,102 <.L358>
  a4:	fbf7f793          	andi	a5,a5,-65
  a8:	06f40f23          	sb	a5,126(s0)
  ac:	07b44703          	lbu	a4,123(s0)

000000b0 <.LVL610>:
  b0:	4785                	li	a5,1
  b2:	e489                	bnez	s1,bc <.L406>

000000b4 <.L359>:
  b4:	07b44783          	lbu	a5,123(s0)
  b8:	cbb9                	beqz	a5,10e <.L363>
  ba:	4705                	li	a4,1

000000bc <.L406>:
  bc:	fae794e3          	bne	a5,a4,64 <.L403>

000000c0 <.L362>:
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L362>

000000c8 <.LVL613>:
  c8:	000007b7          	lui	a5,0x0
  cc:	0017c783          	lbu	a5,1(a5) # 1 <lld_evt_end+0x1>
  d0:	7769                	lui	a4,0xffffa
  d2:	05070713          	addi	a4,a4,80 # ffffa050 <.LASF706+0xffff681f>
  d6:	8bbd                	andi	a5,a5,15
  d8:	8fd9                	or	a5,a5,a4
  da:	00f41823          	sh	a5,16(s0)
  de:	4c7c                	lw	a5,92(s0)
  e0:	c408                	sw	a0,8(s0)
  e2:	8522                	mv	a0,s0
  e4:	c45c                	sw	a5,12(s0)
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL613+0x1e>

000000ee <.LVL614>:
  ee:	f93d                	bnez	a0,64 <.L403>
  f0:	8522                	mv	a0,s0
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL614+0x4>

000000fa <.LBE860>:
  fa:	4901                	li	s2,0
  fc:	f4ad                	bnez	s1,66 <.L357>

000000fe <.L378>:
  fe:	4701                	li	a4,0
 100:	a84d                	j	1b2 <.L355>

00000102 <.L358>:
 102:	07d44783          	lbu	a5,125(s0)
 106:	00f40b23          	sb	a5,22(s0)

0000010a <.LBE865>:
 10a:	fca9                	bnez	s1,64 <.L403>
 10c:	b765                	j	b4 <.L359>

0000010e <.L363>:
 10e:	000007b7          	lui	a5,0x0
 112:	0147a783          	lw	a5,20(a5) # 14 <.LBE831>
 116:	0217c783          	lbu	a5,33(a5)
 11a:	f7a9                	bnez	a5,64 <.L403>
 11c:	b755                	j	c0 <.L362>

0000011e <.L365>:
 11e:	000005b7          	lui	a1,0x0
 122:	00000537          	lui	a0,0x0
 126:	00058593          	mv	a1,a1
 12a:	00050513          	mv	a0,a0
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.L365+0x10>

00000136 <.L368>:
 136:	a001                	j	136 <.L368>

00000138 <.L366>:
 138:	07a44603          	lbu	a2,122(s0)
 13c:	0ac4e563          	bltu	s1,a2,1e6 <.L369>
 140:	40c48633          	sub	a2,s1,a2
 144:	0ff67613          	andi	a2,a2,255

00000148 <.L404>:
 148:	4585                	li	a1,1
 14a:	8522                	mv	a0,s0
 14c:	00000097          	auipc	ra,0x0
 150:	000080e7          	jalr	ra # 14c <.L404+0x4>

00000154 <.LBB868>:
 154:	000007b7          	lui	a5,0x0

00000158 <.LBE877>:
 158:	15c7c783          	lbu	a5,348(a5) # 15c <.LBE877+0x4>
 15c:	14fd                	addi	s1,s1,-1

0000015e <.LBB878>:
 15e:	4739                	li	a4,14

00000160 <.LBE878>:
 160:	97a6                	add	a5,a5,s1
 162:	44a1                	li	s1,8

00000164 <.LVL622>:
 164:	0297e7b3          	rem	a5,a5,s1

00000168 <.LBB879>:
 168:	0ff7f793          	andi	a5,a5,255
 16c:	02e787b3          	mul	a5,a5,a4
 170:	28008737          	lui	a4,0x28008
 174:	3d270713          	addi	a4,a4,978 # 280083d2 <.LASF706+0x28004ba1>
 178:	97ba                	add	a5,a5,a4
 17a:	0007d783          	lhu	a5,0(a5)
 17e:	8391                	srli	a5,a5,0x4
 180:	8b85                	andi	a5,a5,1

00000182 <.LBE879>:
 182:	06f407a3          	sb	a5,111(s0)

00000186 <.L371>:
 186:	07b44783          	lbu	a5,123(s0)
 18a:	4705                	li	a4,1
 18c:	00e79b63          	bne	a5,a4,1a2 <.L372>
 190:	06044703          	lbu	a4,96(s0)
 194:	c719                	beqz	a4,1a2 <.L372>
 196:	0ff9f993          	andi	s3,s3,255
 19a:	00098463          	beqz	s3,1a2 <.L372>
 19e:	06f400a3          	sb	a5,97(s0)

000001a2 <.L372>:
 1a2:	06040d23          	sb	zero,122(s0)
 1a6:	4521                	li	a0,8
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.L372+0x6>

000001b0 <.LVL626>:
 1b0:	4705                	li	a4,1

000001b2 <.L355>:
 1b2:	07e44783          	lbu	a5,126(s0)
 1b6:	0307f693          	andi	a3,a5,48
 1ba:	ea95                	bnez	a3,1ee <.L373>
 1bc:	02090963          	beqz	s2,1ee <.L373>

000001c0 <.LBB880>:
 1c0:	4581                	li	a1,0
 1c2:	8522                	mv	a0,s0
 1c4:	00000097          	auipc	ra,0x0
 1c8:	000080e7          	jalr	ra # 1c4 <.LBB880+0x4>

000001cc <.LVL627>:
 1cc:	c129                	beqz	a0,20e <.L353>
 1ce:	8522                	mv	a0,s0

000001d0 <.LBE880>:
 1d0:	4462                	lw	s0,24(sp)

000001d2 <.LVL629>:
 1d2:	40f2                	lw	ra,28(sp)
 1d4:	44d2                	lw	s1,20(sp)
 1d6:	4942                	lw	s2,16(sp)
 1d8:	49b2                	lw	s3,12(sp)

000001da <.LBB881>:
 1da:	4581                	li	a1,0

000001dc <.LBE881>:
 1dc:	6105                	addi	sp,sp,32

000001de <.LBB882>:
 1de:	00000317          	auipc	t1,0x0
 1e2:	00030067          	jr	t1 # 1de <.LBB882>

000001e6 <.L369>:
 1e6:	4601                	li	a2,0
 1e8:	b785                	j	148 <.L404>

000001ea <.L377>:
 1ea:	4905                	li	s2,1
 1ec:	bf09                	j	fe <.L378>

000001ee <.L373>:
 1ee:	8bc1                	andi	a5,a5,16
 1f0:	cf99                	beqz	a5,20e <.L353>
 1f2:	ef11                	bnez	a4,20e <.L353>
 1f4:	8522                	mv	a0,s0
 1f6:	4462                	lw	s0,24(sp)

000001f8 <.LVL633>:
 1f8:	40f2                	lw	ra,28(sp)
 1fa:	44d2                	lw	s1,20(sp)
 1fc:	4942                	lw	s2,16(sp)
 1fe:	49b2                	lw	s3,12(sp)
 200:	4605                	li	a2,1
 202:	4585                	li	a1,1
 204:	6105                	addi	sp,sp,32
 206:	00000317          	auipc	t1,0x0
 20a:	00030067          	jr	t1 # 206 <.LVL633+0xe>

0000020e <.L353>:
 20e:	40f2                	lw	ra,28(sp)
 210:	4462                	lw	s0,24(sp)

00000212 <.LVL635>:
 212:	44d2                	lw	s1,20(sp)
 214:	4942                	lw	s2,16(sp)
 216:	49b2                	lw	s3,12(sp)
 218:	6105                	addi	sp,sp,32
 21a:	8082                	ret

Disassembly of section .text.lld_evt_rx:

00000000 <lld_evt_rx>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)

00000004 <.LVL637>:
   4:	cc22                	sw	s0,24(sp)
   6:	07455783          	lhu	a5,116(a0) # 74 <.L50>

0000000a <.LBB888>:
   a:	05c00713          	li	a4,92

0000000e <.LBE888>:
   e:	842a                	mv	s0,a0

00000010 <.LBB889>:
  10:	02e787b3          	mul	a5,a5,a4
  14:	28008737          	lui	a4,0x28008
  18:	09270713          	addi	a4,a4,146 # 28008092 <.LASF706+0x28004861>

0000001c <.LBE889>:
  1c:	02850513          	addi	a0,a0,40

00000020 <.LBB890>:
  20:	97ba                	add	a5,a5,a4
  22:	0007d603          	lhu	a2,0(a5)

00000026 <.LVL639>:
  26:	8231                	srli	a2,a2,0xc

00000028 <.LBE890>:
  28:	85b2                	mv	a1,a2
  2a:	c632                	sw	a2,12(sp)
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LBE890+0x4>

00000034 <.LVL641>:
  34:	07a44783          	lbu	a5,122(s0)
  38:	4632                	lw	a2,12(sp)
  3a:	8522                	mv	a0,s0
  3c:	4581                	li	a1,0
  3e:	97b2                	add	a5,a5,a2
  40:	06f40d23          	sb	a5,122(s0)
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL641+0x10>

0000004c <.LVL642>:
  4c:	4462                	lw	s0,24(sp)

0000004e <.LVL643>:
  4e:	40f2                	lw	ra,28(sp)
  50:	4521                	li	a0,8
  52:	6105                	addi	sp,sp,32

00000054 <.LVL644>:
  54:	00000317          	auipc	t1,0x0
  58:	00030067          	jr	t1 # 54 <.LVL644>

Disassembly of section .text.lld_evt_rx_afs:

00000000 <lld_evt_rx_afs>:
   0:	07a54783          	lbu	a5,122(a0)
   4:	04b7f363          	bgeu	a5,a1,4a <.L410>
   8:	1141                	addi	sp,sp,-16
   a:	c226                	sw	s1,4(sp)
   c:	84ae                	mv	s1,a1
   e:	8d9d                	sub	a1,a1,a5

00000010 <.LVL647>:
  10:	c422                	sw	s0,8(sp)
  12:	0ff5f593          	andi	a1,a1,255
  16:	842a                	mv	s0,a0
  18:	02850513          	addi	a0,a0,40

0000001c <.LVL648>:
  1c:	c606                	sw	ra,12(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL648+0x2>

00000026 <.LVL649>:
  26:	8522                	mv	a0,s0
  28:	06940d23          	sb	s1,122(s0)
  2c:	4601                	li	a2,0
  2e:	4581                	li	a1,0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL649+0xa>

00000038 <.LVL650>:
  38:	4422                	lw	s0,8(sp)

0000003a <.LVL651>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	4492                	lw	s1,4(sp)
  3e:	4521                	li	a0,8
  40:	0141                	addi	sp,sp,16
  42:	00000317          	auipc	t1,0x0
  46:	00030067          	jr	t1 # 42 <.LVL651+0x8>

0000004a <.L410>:
  4a:	a001                	j	4a <.L410>

Disassembly of section .text.lld_evt_timer_isr:

00000000 <lld_evt_timer_isr>:
   0:	450d                	li	a0,3
   2:	00000317          	auipc	t1,0x0
   6:	00030067          	jr	t1 # 2 <lld_evt_timer_isr+0x2>

Disassembly of section .text.lld_evt_end_isr:

00000000 <lld_evt_end_isr>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	84aa                	mv	s1,a0
   6:	00000537          	lui	a0,0x0

0000000a <.LVL655>:
   a:	00050513          	mv	a0,a0
   e:	c422                	sw	s0,8(sp)
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL655+0x8>

0000001a <.LVL656>:
  1a:	842a                	mv	s0,a0

0000001c <.LVL657>:
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL657>

00000024 <.LVL658>:
  24:	c085                	beqz	s1,44 <.L417>
  26:	07e44783          	lbu	a5,126(s0)
  2a:	0407e793          	ori	a5,a5,64
  2e:	06f40f23          	sb	a5,126(s0)

00000032 <.L418>:
  32:	8522                	mv	a0,s0
  34:	4422                	lw	s0,8(sp)

00000036 <.LVL659>:
  36:	40b2                	lw	ra,12(sp)
  38:	4492                	lw	s1,4(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	00000317          	auipc	t1,0x0
  40:	00030067          	jr	t1 # 3c <.LVL659+0x6>

00000044 <.L417>:
  44:	01045783          	lhu	a5,16(s0)
  48:	83b9                	srli	a5,a5,0xe
  4a:	d7e5                	beqz	a5,32 <.L418>
  4c:	00041823          	sh	zero,16(s0)
  50:	b7cd                	j	32 <.L418>

Disassembly of section .text.lld_evt_rx_isr:

00000000 <lld_evt_rx_isr>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a503          	lw	a0,0(a5) # 0 <lld_evt_rx_isr>

00000008 <.LBE891>:
   8:	c509                	beqz	a0,12 <.L423>
   a:	00000317          	auipc	t1,0x0
   e:	00030067          	jr	t1 # a <.LBE891+0x2>

00000012 <.L423>:
  12:	8082                	ret

Disassembly of section .text.lld_evt_afs_isr:

00000000 <lld_evt_afs_isr>:
   0:	000007b7          	lui	a5,0x0

00000004 <.LBE893>:
   4:	85aa                	mv	a1,a0

00000006 <.LBB896>:
   6:	0007a503          	lw	a0,0(a5) # 0 <lld_evt_afs_isr>

0000000a <.LBE896>:
   a:	c509                	beqz	a0,14 <.L425>
   c:	00000317          	auipc	t1,0x0
  10:	00030067          	jr	t1 # c <.LBE896+0x2>

00000014 <.L425>:
  14:	8082                	ret
