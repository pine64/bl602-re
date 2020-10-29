
libblecontroller/sec_eng.o:     file format elf32-littleriscv


Disassembly of section .text.pka0_write_common_op_first_cfg:

00000000 <pka0_write_common_op_first_cfg>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	843a                	mv	s0,a4
   6:	00000737          	lui	a4,0x0
			6: R_RISCV_HI20	ble_memset_ptr
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL1>:
   a:	00072703          	lw	a4,0(a4) # 0 <pka0_write_common_op_first_cfg>
			a: R_RISCV_LO12_I	ble_memset_ptr
			a: R_RISCV_RELAX	*ABS*
   e:	da26                	sw	s1,52(sp)
  10:	d84a                	sw	s2,48(sp)
  12:	d64e                	sw	s3,44(sp)
  14:	84ae                	mv	s1,a1
  16:	89aa                	mv	s3,a0
  18:	4581                	li	a1,0

0000001a <.LVL2>:
  1a:	de06                	sw	ra,60(sp)
  1c:	8932                	mv	s2,a2
  1e:	0868                	addi	a0,sp,28

00000020 <.LVL3>:
  20:	4611                	li	a2,4

00000022 <.LVL4>:
  22:	c43e                	sw	a5,8(sp)
  24:	c636                	sw	a3,12(sp)
  26:	9702                	jalr	a4

00000028 <.LVL5>:
  28:	01310e23          	sb	s3,28(sp)
  2c:	45f2                	lw	a1,28(sp)
  2e:	777d                	lui	a4,0xfffff
  30:	0ff70713          	addi	a4,a4,255 # fffff0ff <.LLST20+0xffffe0e8>
  34:	88bd                	andi	s1,s1,15
  36:	8df9                	and	a1,a1,a4
  38:	04a2                	slli	s1,s1,0x8
  3a:	8dc5                	or	a1,a1,s1
  3c:	ce2e                	sw	a1,28(sp)
  3e:	4765                	li	a4,25
  40:	47a2                	lw	a5,8(sp)
  42:	02e40263          	beq	s0,a4,66 <.L2>
			42: R_RISCV_BRANCH	.L2
  46:	fff01737          	lui	a4,0xfff01
  4a:	46b2                	lw	a3,12(sp)
  4c:	177d                	addi	a4,a4,-1
  4e:	8df9                	and	a1,a1,a4
  50:	0932                	slli	s2,s2,0xc
  52:	ff100737          	lui	a4,0xff100
  56:	0125e5b3          	or	a1,a1,s2
  5a:	8abd                	andi	a3,a3,15
  5c:	177d                	addi	a4,a4,-1
  5e:	06d2                	slli	a3,a3,0x14
  60:	8df9                	and	a1,a1,a4
  62:	8dd5                	or	a1,a1,a3
  64:	ce2e                	sw	a1,28(sp)

00000066 <.L2>:
  66:	4772                	lw	a4,28(sp)
  68:	810006b7          	lui	a3,0x81000
  6c:	07f47413          	andi	s0,s0,127
  70:	16fd                	addi	a3,a3,-1
  72:	0462                	slli	s0,s0,0x18
  74:	8f75                	and	a4,a4,a3
  76:	8f41                	or	a4,a4,s0
  78:	0706                	slli	a4,a4,0x1
  7a:	07fe                	slli	a5,a5,0x1f
  7c:	8305                	srli	a4,a4,0x1
  7e:	8f5d                	or	a4,a4,a5
  80:	400047b7          	lui	a5,0x40004
  84:	34e7a023          	sw	a4,832(a5) # 40004340 <.LLST20+0x40003329>
  88:	50f2                	lw	ra,60(sp)
  8a:	5462                	lw	s0,56(sp)
  8c:	54d2                	lw	s1,52(sp)
  8e:	5942                	lw	s2,48(sp)
  90:	59b2                	lw	s3,44(sp)
  92:	6121                	addi	sp,sp,64
  94:	8082                	ret

Disassembly of section .text.pka0_write_common_op_snd_cfg_S1:

00000000 <pka0_write_common_op_snd_cfg_S1>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <pka0_write_common_op_snd_cfg_S1>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	84aa                	mv	s1,a0
  12:	842e                	mv	s0,a1
  14:	0068                	addi	a0,sp,12

00000016 <.LVL7>:
  16:	4581                	li	a1,0

00000018 <.LVL8>:
  18:	4611                	li	a2,4
  1a:	9782                	jalr	a5

0000001c <.LVL9>:
  1c:	45b2                	lw	a1,12(sp)
  1e:	fff017b7          	lui	a5,0xfff01
  22:	17fd                	addi	a5,a5,-1
  24:	04b2                	slli	s1,s1,0xc
  26:	8dfd                	and	a1,a1,a5
  28:	ff1007b7          	lui	a5,0xff100
  2c:	8dc5                	or	a1,a1,s1
  2e:	17fd                	addi	a5,a5,-1
  30:	883d                	andi	s0,s0,15
  32:	0452                	slli	s0,s0,0x14
  34:	8dfd                	and	a1,a1,a5
  36:	8dc1                	or	a1,a1,s0
  38:	400047b7          	lui	a5,0x40004
  3c:	34b7a023          	sw	a1,832(a5) # 40004340 <.LLST20+0x40003329>
  40:	40f2                	lw	ra,28(sp)
  42:	4462                	lw	s0,24(sp)
  44:	44d2                	lw	s1,20(sp)
  46:	6105                	addi	sp,sp,32
  48:	8082                	ret

Disassembly of section .text.pka0_write_common_op_snd_cfg_S1_S2:

00000000 <pka0_write_common_op_snd_cfg_S1_S2>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	ble_memset_ptr
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <pka0_write_common_op_snd_cfg_S1_S2>
			4: R_RISCV_LO12_I	ble_memset_ptr
			4: R_RISCV_RELAX	*ABS*
   8:	7179                	addi	sp,sp,-48
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	d606                	sw	ra,44(sp)
  12:	8932                	mv	s2,a2
  14:	84aa                	mv	s1,a0
  16:	842e                	mv	s0,a1
  18:	0868                	addi	a0,sp,28

0000001a <.LVL11>:
  1a:	4581                	li	a1,0

0000001c <.LVL12>:
  1c:	4611                	li	a2,4

0000001e <.LVL13>:
  1e:	c636                	sw	a3,12(sp)
  20:	9782                	jalr	a5

00000022 <.LVL14>:
  22:	45f2                	lw	a1,28(sp)
  24:	fff017b7          	lui	a5,0xfff01
  28:	17fd                	addi	a5,a5,-1
  2a:	04b2                	slli	s1,s1,0xc
  2c:	8dfd                	and	a1,a1,a5
  2e:	ff1007b7          	lui	a5,0xff100
  32:	8dc5                	or	a1,a1,s1
  34:	17fd                	addi	a5,a5,-1
  36:	883d                	andi	s0,s0,15
  38:	46b2                	lw	a3,12(sp)
  3a:	0452                	slli	s0,s0,0x14
  3c:	8dfd                	and	a1,a1,a5
  3e:	8dc1                	or	a1,a1,s0
  40:	ce2e                	sw	a1,28(sp)
  42:	01210e23          	sb	s2,28(sp)
  46:	8abd                	andi	a3,a3,15
  48:	00869793          	slli	a5,a3,0x8
  4c:	46f2                	lw	a3,28(sp)
  4e:	777d                	lui	a4,0xfffff
  50:	0ff70713          	addi	a4,a4,255 # fffff0ff <.LLST20+0xffffe0e8>
  54:	8ef9                	and	a3,a3,a4
  56:	8edd                	or	a3,a3,a5
  58:	400047b7          	lui	a5,0x40004
  5c:	34d7a023          	sw	a3,832(a5) # 40004340 <.LLST20+0x40003329>
  60:	50b2                	lw	ra,44(sp)
  62:	5422                	lw	s0,40(sp)
  64:	5492                	lw	s1,36(sp)
  66:	5902                	lw	s2,32(sp)
  68:	6145                	addi	sp,sp,48
  6a:	8082                	ret

Disassembly of section .text.sec_eng_pka0_reset:

00000000 <sec_eng_pka0_reset>:
   0:	400047b7          	lui	a5,0x40004
   4:	3007a023          	sw	zero,768(a5) # 40004300 <.LLST20+0x400032e9>
   8:	4721                	li	a4,8
   a:	30e7a023          	sw	a4,768(a5)
   e:	8082                	ret

Disassembly of section .text.sec_eng_pka0_clear_int:

00000000 <sec_eng_pka0_clear_int>:
   0:	400047b7          	lui	a5,0x40004
   4:	3007a703          	lw	a4,768(a5) # 40004300 <.LLST20+0x400032e9>
   8:	20076713          	ori	a4,a4,512
   c:	30e7a023          	sw	a4,768(a5)
  10:	3007a703          	lw	a4,768(a5)
  14:	dff77713          	andi	a4,a4,-513
  18:	30e7a023          	sw	a4,768(a5)
  1c:	8082                	ret

Disassembly of section .text.sec_eng_pka0_pld:

00000000 <sec_eng_pka0_pld>:
   0:	01451813          	slli	a6,a0,0x14
   4:	0632                	slli	a2,a2,0xc

00000006 <.LVL21>:
   6:	01485813          	srli	a6,a6,0x14
   a:	8abd                	andi	a3,a3,15

0000000c <.LVL22>:
   c:	06d2                	slli	a3,a3,0x14
   e:	00c86833          	or	a6,a6,a2
  12:	07f77713          	andi	a4,a4,127

00000016 <.LVL23>:
  16:	0762                	slli	a4,a4,0x18
  18:	00d86833          	or	a6,a6,a3
  1c:	07fe                	slli	a5,a5,0x1f

0000001e <.LVL24>:
  1e:	00e86833          	or	a6,a6,a4
  22:	00f86833          	or	a6,a6,a5
  26:	400047b7          	lui	a5,0x40004
  2a:	3507a023          	sw	a6,832(a5) # 40004340 <.LLST20+0x40003329>

0000002e <.LBB9>:
  2e:	4701                	li	a4,0
  30:	00757813          	andi	a6,a0,7
  34:	34078893          	addi	a7,a5,832
  38:	36078693          	addi	a3,a5,864

0000003c <.L11>:
  3c:	00a74363          	blt	a4,a0,42 <.L14>
			3c: R_RISCV_BRANCH	.L14

00000040 <.LBE9>:
  40:	8082                	ret

00000042 <.L14>:
  42:	00271613          	slli	a2,a4,0x2
  46:	00777793          	andi	a5,a4,7
  4a:	962e                	add	a2,a2,a1
  4c:	078a                	slli	a5,a5,0x2
  4e:	4210                	lw	a2,0(a2)
  50:	00081663          	bnez	a6,5c <.L12>
			50: R_RISCV_BRANCH	.L12

00000054 <.LVL26>:
  54:	97b6                	add	a5,a5,a3

00000056 <.L15>:
  56:	c390                	sw	a2,0(a5)
  58:	0705                	addi	a4,a4,1
  5a:	b7cd                	j	3c <.L11>
			5a: R_RISCV_RVC_JUMP	.L11

0000005c <.L12>:
  5c:	97c6                	add	a5,a5,a7
  5e:	bfe5                	j	56 <.L15>
			5e: R_RISCV_RVC_JUMP	.L15

Disassembly of section .text.sec_eng_pka0_wait_4_isr:

00000000 <sec_eng_pka0_wait_4_isr>:
   0:	400047b7          	lui	a5,0x40004
   4:	3007a783          	lw	a5,768(a5) # 40004300 <.LLST20+0x400032e9>

00000008 <.LVL31>:
   8:	40004737          	lui	a4,0x40004

0000000c <.L17>:
   c:	1007f793          	andi	a5,a5,256

00000010 <.LVL32>:
  10:	c391                	beqz	a5,14 <.L18>
			10: R_RISCV_RVC_BRANCH	.L18
  12:	8082                	ret

00000014 <.L18>:
  14:	30072783          	lw	a5,768(a4) # 40004300 <.LLST20+0x400032e9>

00000018 <.LVL33>:
  18:	bfd5                	j	c <.L17>
			18: R_RISCV_RVC_JUMP	.L17

Disassembly of section .text.sec_eng_pka0_read_data:

00000000 <sec_eng_pka0_read_data>:
   0:	fff50793          	addi	a5,a0,-1
   4:	0ff7f793          	andi	a5,a5,255
   8:	4825                	li	a6,9
   a:	4701                	li	a4,0
   c:	00f86a63          	bltu	a6,a5,20 <.L20>
			c: R_RISCV_BRANCH	.L20
  10:	00000737          	lui	a4,0x0
			10: R_RISCV_HI20	.LANCHOR0
			10: R_RISCV_RELAX	*ABS*
  14:	00070713          	mv	a4,a4
			14: R_RISCV_LO12_I	.LANCHOR0
			14: R_RISCV_RELAX	*ABS*
  18:	0786                	slli	a5,a5,0x1
  1a:	97ba                	add	a5,a5,a4
  1c:	0007d703          	lhu	a4,0(a5)

00000020 <.L20>:
  20:	0ff77713          	andi	a4,a4,255
  24:	08d76c63          	bltu	a4,a3,bc <.L29>
			24: R_RISCV_BRANCH	.L29

00000028 <.LBB24>:
  28:	05b2                	slli	a1,a1,0xc

0000002a <.LVL36>:
  2a:	893d                	andi	a0,a0,15

0000002c <.LVL37>:
  2c:	0552                	slli	a0,a0,0x14
  2e:	8dd5                	or	a1,a1,a3

00000030 <.LBE24>:
  30:	7179                	addi	sp,sp,-48

00000032 <.LBB29>:
  32:	8dc9                	or	a1,a1,a0
  34:	b80007b7          	lui	a5,0xb8000

00000038 <.LBE29>:
  38:	d606                	sw	ra,44(sp)
  3a:	d422                	sw	s0,40(sp)
  3c:	d226                	sw	s1,36(sp)
  3e:	d04a                	sw	s2,32(sp)
  40:	ce4e                	sw	s3,28(sp)
  42:	cc52                	sw	s4,24(sp)
  44:	ca56                	sw	s5,20(sp)
  46:	c85a                	sw	s6,16(sp)

00000048 <.LBB30>:
  48:	40004937          	lui	s2,0x40004
  4c:	8ddd                	or	a1,a1,a5
  4e:	34b92023          	sw	a1,832(s2) # 40004340 <.LLST20+0x40003329>
  52:	8436                	mv	s0,a3

00000054 <.LBE30>:
  54:	34092023          	sw	zero,832(s2)
  58:	84b2                	mv	s1,a2

0000005a <.LBB31>:
  5a:	34090a93          	addi	s5,s2,832

0000005e <.LBE34>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBE34>

00000066 <.LBB37>:
  66:	4981                	li	s3,0

00000068 <.LBE37>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	sec_eng_pka0_clear_int
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LBE37>

00000070 <.LBB38>:
  70:	00747a13          	andi	s4,s0,7

00000074 <.LBE38>:
  74:	c602                	sw	zero,12(sp)

00000076 <.LBB39>:
  76:	36090913          	addi	s2,s2,864
  7a:	00000b37          	lui	s6,0x0
			7a: R_RISCV_HI20	ble_memcpy_ptr
			7a: R_RISCV_RELAX	*ABS*

0000007e <.L22>:
  7e:	0089cc63          	blt	s3,s0,96 <.L25>
			7e: R_RISCV_BRANCH	.L25

00000082 <.LBE32>:
  82:	50b2                	lw	ra,44(sp)
  84:	5422                	lw	s0,40(sp)

00000086 <.LVL43>:
  86:	5492                	lw	s1,36(sp)

00000088 <.LVL44>:
  88:	5902                	lw	s2,32(sp)
  8a:	49f2                	lw	s3,28(sp)

0000008c <.LVL45>:
  8c:	4a62                	lw	s4,24(sp)
  8e:	4ad2                	lw	s5,20(sp)
  90:	4b42                	lw	s6,16(sp)
  92:	6145                	addi	sp,sp,48
  94:	8082                	ret

00000096 <.L25>:
  96:	0079f513          	andi	a0,s3,7
  9a:	050a                	slli	a0,a0,0x2
  9c:	012507b3          	add	a5,a0,s2
  a0:	000a0463          	beqz	s4,a8 <.L32>
			a0: R_RISCV_BRANCH	.L32

000000a4 <.LVL47>:
  a4:	015507b3          	add	a5,a0,s5

000000a8 <.L32>:
  a8:	439c                	lw	a5,0(a5)
  aa:	4611                	li	a2,4
  ac:	006c                	addi	a1,sp,12
  ae:	c63e                	sw	a5,12(sp)

000000b0 <.LVL49>:
  b0:	000b2783          	lw	a5,0(s6) # 0 <sec_eng_pka0_read_data>
			b0: R_RISCV_LO12_I	ble_memcpy_ptr
			b0: R_RISCV_RELAX	*ABS*
  b4:	9526                	add	a0,a0,s1
  b6:	0985                	addi	s3,s3,1

000000b8 <.LVL50>:
  b8:	9782                	jalr	a5

000000ba <.LVL51>:
  ba:	b7d1                	j	7e <.L22>
			ba: R_RISCV_RVC_JUMP	.L22

000000bc <.L29>:
  bc:	8082                	ret

Disassembly of section .text.sec_eng_pka0_clir:

00000000 <sec_eng_pka0_clir>:
   0:	0632                	slli	a2,a2,0xc

00000002 <.LVL54>:
   2:	89bd                	andi	a1,a1,15

00000004 <.LVL55>:
   4:	05d2                	slli	a1,a1,0x14
   6:	8ed1                	or	a3,a3,a2

00000008 <.LVL56>:
   8:	8ecd                	or	a3,a3,a1
   a:	35000637          	lui	a2,0x35000
   e:	00a03533          	snez	a0,a0

00000012 <.LBE51>:
  12:	1141                	addi	sp,sp,-16

00000014 <.LBB55>:
  14:	057e                	slli	a0,a0,0x1f
  16:	8ed1                	or	a3,a3,a2

00000018 <.LBE55>:
  18:	c606                	sw	ra,12(sp)

0000001a <.LBB56>:
  1a:	400047b7          	lui	a5,0x40004
  1e:	8ec9                	or	a3,a3,a0
  20:	34d7a023          	sw	a3,832(a5) # 40004340 <.LLST20+0x40003329>

00000024 <.LBE56>:
  24:	3407a023          	sw	zero,832(a5)
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LBE56+0x4>

00000030 <.LVL59>:
  30:	40b2                	lw	ra,12(sp)
  32:	0141                	addi	sp,sp,16
  34:	00000317          	auipc	t1,0x0
			34: R_RISCV_CALL	sec_eng_pka0_clear_int
			34: R_RISCV_RELAX	*ABS*
  38:	00030067          	jr	t1 # 34 <.LVL59+0x4>

Disassembly of section .text.sec_eng_pka0_movdat:

00000000 <sec_eng_pka0_movdat>:
   0:	1141                	addi	sp,sp,-16
   2:	8836                	mv	a6,a3
   4:	c422                	sw	s0,8(sp)
   6:	842a                	mv	s0,a0
   8:	008037b3          	snez	a5,s0
   c:	853a                	mv	a0,a4

0000000e <.LVL62>:
   e:	86ae                	mv	a3,a1

00000010 <.LVL63>:
  10:	03200713          	li	a4,50

00000014 <.LVL64>:
  14:	85c2                	mv	a1,a6

00000016 <.LVL65>:
  16:	c606                	sw	ra,12(sp)
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	pka0_write_common_op_first_cfg
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL65+0x2>

00000020 <.LVL66>:
  20:	400047b7          	lui	a5,0x40004
  24:	3407a023          	sw	zero,832(a5) # 40004340 <.LLST20+0x40003329>
  28:	cc01                	beqz	s0,40 <.L35>
			28: R_RISCV_RVC_BRANCH	.L35
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.LVL66+0xa>

00000032 <.LVL67>:
  32:	4422                	lw	s0,8(sp)
  34:	40b2                	lw	ra,12(sp)
  36:	0141                	addi	sp,sp,16
  38:	00000317          	auipc	t1,0x0
			38: R_RISCV_CALL	sec_eng_pka0_clear_int
			38: R_RISCV_RELAX	*ABS*
  3c:	00030067          	jr	t1 # 38 <.LVL67+0x6>

00000040 <.L35>:
  40:	40b2                	lw	ra,12(sp)
  42:	4422                	lw	s0,8(sp)
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.sec_eng_pka0_msub:

00000000 <sec_eng_pka0_msub>:
   0:	1101                	addi	sp,sp,-32
   2:	8e36                	mv	t3,a3
   4:	833a                	mv	t1,a4
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	843e                	mv	s0,a5
   c:	02014483          	lbu	s1,32(sp)
  10:	86ae                	mv	a3,a1

00000012 <.LVL70>:
  12:	00a037b3          	snez	a5,a0

00000016 <.LVL71>:
  16:	85f2                	mv	a1,t3

00000018 <.LVL72>:
  18:	851a                	mv	a0,t1

0000001a <.LVL73>:
  1a:	02700713          	li	a4,39

0000001e <.LVL74>:
  1e:	ce06                	sw	ra,28(sp)
  20:	c642                	sw	a6,12(sp)
  22:	c446                	sw	a7,8(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	pka0_write_common_op_first_cfg
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL74+0x6>

0000002c <.LVL75>:
  2c:	48a2                	lw	a7,8(sp)
  2e:	4832                	lw	a6,12(sp)
  30:	85a2                	mv	a1,s0
  32:	4462                	lw	s0,24(sp)
  34:	40f2                	lw	ra,28(sp)
  36:	8626                	mv	a2,s1
  38:	44d2                	lw	s1,20(sp)
  3a:	86c6                	mv	a3,a7
  3c:	8542                	mv	a0,a6
  3e:	6105                	addi	sp,sp,32

00000040 <.LVL76>:
  40:	00000317          	auipc	t1,0x0
			40: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1_S2
			40: R_RISCV_RELAX	*ABS*
  44:	00030067          	jr	t1 # 40 <.LVL76>

Disassembly of section .text.sec_eng_pka0_mrem:

00000000 <sec_eng_pka0_mrem>:
   0:	7179                	addi	sp,sp,-48
   2:	8336                	mv	t1,a3
   4:	88ba                	mv	a7,a4
   6:	d422                	sw	s0,40(sp)
   8:	02600713          	li	a4,38

0000000c <.LVL79>:
   c:	86ae                	mv	a3,a1

0000000e <.LVL80>:
   e:	843e                	mv	s0,a5
  10:	859a                	mv	a1,t1

00000012 <.LVL81>:
  12:	00a037b3          	snez	a5,a0

00000016 <.LVL82>:
  16:	8546                	mv	a0,a7

00000018 <.LVL83>:
  18:	d606                	sw	ra,44(sp)
  1a:	c642                	sw	a6,12(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	pka0_write_common_op_first_cfg
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <.LVL83+0x4>

00000024 <.LBB59>:
  24:	000007b7          	lui	a5,0x0
			24: R_RISCV_HI20	ble_memset_ptr
			24: R_RISCV_RELAX	*ABS*
  28:	0007a783          	lw	a5,0(a5) # 0 <sec_eng_pka0_mrem>
			28: R_RISCV_LO12_I	ble_memset_ptr
			28: R_RISCV_RELAX	*ABS*
  2c:	0868                	addi	a0,sp,28
  2e:	4611                	li	a2,4
  30:	4581                	li	a1,0
  32:	9782                	jalr	a5

00000034 <.LVL85>:
  34:	4832                	lw	a6,12(sp)
  36:	777d                	lui	a4,0xfffff
  38:	0ff70713          	addi	a4,a4,255 # fffff0ff <.LLST20+0xffffe0e8>
  3c:	01010e23          	sb	a6,28(sp)
  40:	47f2                	lw	a5,28(sp)
  42:	883d                	andi	s0,s0,15

00000044 <.LVL86>:
  44:	0422                	slli	s0,s0,0x8
  46:	8ff9                	and	a5,a5,a4
  48:	8fc1                	or	a5,a5,s0
  4a:	40004737          	lui	a4,0x40004
  4e:	34f72023          	sw	a5,832(a4) # 40004340 <.LLST20+0x40003329>

00000052 <.LBE59>:
  52:	50b2                	lw	ra,44(sp)
  54:	5422                	lw	s0,40(sp)
  56:	6145                	addi	sp,sp,48
  58:	8082                	ret

Disassembly of section .text.sec_eng_pka0_mmul:

00000000 <sec_eng_pka0_mmul>:
   0:	1101                	addi	sp,sp,-32
   2:	8e36                	mv	t3,a3
   4:	833a                	mv	t1,a4
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	843e                	mv	s0,a5
   c:	02014483          	lbu	s1,32(sp)
  10:	86ae                	mv	a3,a1

00000012 <.LVL89>:
  12:	00a037b3          	snez	a5,a0

00000016 <.LVL90>:
  16:	85f2                	mv	a1,t3

00000018 <.LVL91>:
  18:	851a                	mv	a0,t1

0000001a <.LVL92>:
  1a:	02500713          	li	a4,37

0000001e <.LVL93>:
  1e:	ce06                	sw	ra,28(sp)
  20:	c642                	sw	a6,12(sp)
  22:	c446                	sw	a7,8(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	pka0_write_common_op_first_cfg
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL93+0x6>

0000002c <.LVL94>:
  2c:	48a2                	lw	a7,8(sp)
  2e:	4832                	lw	a6,12(sp)
  30:	85a2                	mv	a1,s0
  32:	4462                	lw	s0,24(sp)
  34:	40f2                	lw	ra,28(sp)
  36:	8626                	mv	a2,s1
  38:	44d2                	lw	s1,20(sp)
  3a:	86c6                	mv	a3,a7
  3c:	8542                	mv	a0,a6
  3e:	6105                	addi	sp,sp,32

00000040 <.LVL95>:
  40:	00000317          	auipc	t1,0x0
			40: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1_S2
			40: R_RISCV_RELAX	*ABS*
  44:	00030067          	jr	t1 # 40 <.LVL95>

Disassembly of section .text.sec_eng_pka0_mexp:

00000000 <sec_eng_pka0_mexp>:
   0:	1101                	addi	sp,sp,-32
   2:	8e36                	mv	t3,a3
   4:	833a                	mv	t1,a4
   6:	cc22                	sw	s0,24(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	843e                	mv	s0,a5
   c:	02014483          	lbu	s1,32(sp)
  10:	86ae                	mv	a3,a1

00000012 <.LVL98>:
  12:	00a037b3          	snez	a5,a0

00000016 <.LVL99>:
  16:	85f2                	mv	a1,t3

00000018 <.LVL100>:
  18:	851a                	mv	a0,t1

0000001a <.LVL101>:
  1a:	02300713          	li	a4,35

0000001e <.LVL102>:
  1e:	ce06                	sw	ra,28(sp)
  20:	c642                	sw	a6,12(sp)
  22:	c446                	sw	a7,8(sp)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	pka0_write_common_op_first_cfg
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL102+0x6>

0000002c <.LVL103>:
  2c:	48a2                	lw	a7,8(sp)
  2e:	4832                	lw	a6,12(sp)
  30:	85a2                	mv	a1,s0
  32:	4462                	lw	s0,24(sp)
  34:	40f2                	lw	ra,28(sp)
  36:	8626                	mv	a2,s1
  38:	44d2                	lw	s1,20(sp)
  3a:	86c6                	mv	a3,a7
  3c:	8542                	mv	a0,a6
  3e:	6105                	addi	sp,sp,32

00000040 <.LVL104>:
  40:	00000317          	auipc	t1,0x0
			40: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1_S2
			40: R_RISCV_RELAX	*ABS*
  44:	00030067          	jr	t1 # 40 <.LVL104>

Disassembly of section .text.sec_eng_pka0_lcmp:

00000000 <sec_eng_pka0_lcmp>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	4785                	li	a5,1
   a:	842a                	mv	s0,a0
   c:	8936                	mv	s2,a3
   e:	8532                	mv	a0,a2

00000010 <.LVL107>:
  10:	4681                	li	a3,0

00000012 <.LVL108>:
  12:	4601                	li	a2,0

00000014 <.LVL109>:
  14:	84ba                	mv	s1,a4
  16:	4765                	li	a4,25

00000018 <.LVL110>:
  18:	c606                	sw	ra,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	pka0_write_common_op_first_cfg
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL110+0x2>

00000022 <.LVL111>:
  22:	85ca                	mv	a1,s2
  24:	8526                	mv	a0,s1
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LVL111+0x4>

0000002e <.LVL112>:
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	sec_eng_pka0_wait_4_isr
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL112>

00000036 <.LVL113>:
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	sec_eng_pka0_clear_int
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL113>

0000003e <.LVL114>:
  3e:	400047b7          	lui	a5,0x40004
  42:	3007a783          	lw	a5,768(a5) # 40004300 <.LLST20+0x400032e9>

00000046 <.LVL115>:
  46:	40b2                	lw	ra,12(sp)
  48:	4492                	lw	s1,4(sp)
  4a:	83e1                	srli	a5,a5,0x18

0000004c <.LVL116>:
  4c:	8b85                	andi	a5,a5,1
  4e:	00f40023          	sb	a5,0(s0)
  52:	4422                	lw	s0,8(sp)

00000054 <.LVL117>:
  54:	4902                	lw	s2,0(sp)
  56:	0141                	addi	sp,sp,16
  58:	8082                	ret

Disassembly of section .text.sec_eng_pka0_ladd:

00000000 <sec_eng_pka0_ladd>:
   0:	1101                	addi	sp,sp,-32
   2:	8336                	mv	t1,a3
   4:	88ba                	mv	a7,a4
   6:	cc22                	sw	s0,24(sp)
   8:	86ae                	mv	a3,a1

0000000a <.LVL119>:
   a:	843e                	mv	s0,a5
   c:	859a                	mv	a1,t1

0000000e <.LVL120>:
   e:	00a037b3          	snez	a5,a0

00000012 <.LVL121>:
  12:	4761                	li	a4,24

00000014 <.LVL122>:
  14:	8546                	mv	a0,a7

00000016 <.LVL123>:
  16:	ce06                	sw	ra,28(sp)
  18:	c642                	sw	a6,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	pka0_write_common_op_first_cfg
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL123+0x4>

00000022 <.LVL124>:
  22:	4832                	lw	a6,12(sp)
  24:	85a2                	mv	a1,s0
  26:	4462                	lw	s0,24(sp)
  28:	40f2                	lw	ra,28(sp)
  2a:	8542                	mv	a0,a6
  2c:	6105                	addi	sp,sp,32
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <.LVL124+0xc>

Disassembly of section .text.sec_eng_pka0_lsub:

00000000 <sec_eng_pka0_lsub>:
   0:	1101                	addi	sp,sp,-32
   2:	8336                	mv	t1,a3
   4:	88ba                	mv	a7,a4
   6:	cc22                	sw	s0,24(sp)
   8:	86ae                	mv	a3,a1

0000000a <.LVL127>:
   a:	843e                	mv	s0,a5
   c:	859a                	mv	a1,t1

0000000e <.LVL128>:
   e:	00a037b3          	snez	a5,a0

00000012 <.LVL129>:
  12:	475d                	li	a4,23

00000014 <.LVL130>:
  14:	8546                	mv	a0,a7

00000016 <.LVL131>:
  16:	ce06                	sw	ra,28(sp)
  18:	c642                	sw	a6,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	pka0_write_common_op_first_cfg
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL131+0x4>

00000022 <.LVL132>:
  22:	4832                	lw	a6,12(sp)
  24:	85a2                	mv	a1,s0
  26:	4462                	lw	s0,24(sp)
  28:	40f2                	lw	ra,28(sp)
  2a:	8542                	mv	a0,a6
  2c:	6105                	addi	sp,sp,32
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <.LVL132+0xc>

Disassembly of section .text.sec_eng_pka0_lmul:

00000000 <sec_eng_pka0_lmul>:
   0:	1101                	addi	sp,sp,-32
   2:	8336                	mv	t1,a3
   4:	88ba                	mv	a7,a4
   6:	cc22                	sw	s0,24(sp)
   8:	86ae                	mv	a3,a1

0000000a <.LVL135>:
   a:	843e                	mv	s0,a5
   c:	859a                	mv	a1,t1

0000000e <.LVL136>:
   e:	00a037b3          	snez	a5,a0

00000012 <.LVL137>:
  12:	4759                	li	a4,22

00000014 <.LVL138>:
  14:	8546                	mv	a0,a7

00000016 <.LVL139>:
  16:	ce06                	sw	ra,28(sp)
  18:	c642                	sw	a6,12(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	pka0_write_common_op_first_cfg
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LVL139+0x4>

00000022 <.LVL140>:
  22:	4832                	lw	a6,12(sp)
  24:	85a2                	mv	a1,s0
  26:	4462                	lw	s0,24(sp)
  28:	40f2                	lw	ra,28(sp)
  2a:	8542                	mv	a0,a6
  2c:	6105                	addi	sp,sp,32
  2e:	00000317          	auipc	t1,0x0
			2e: R_RISCV_CALL	pka0_write_common_op_snd_cfg_S1
			2e: R_RISCV_RELAX	*ABS*
  32:	00030067          	jr	t1 # 2e <.LVL140+0xc>

Disassembly of section .text.sec_eng_pka0_lmul2n:

00000000 <sec_eng_pka0_lmul2n>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	843e                	mv	s0,a5
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	ble_memset_ptr
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL143>:
   a:	0007a783          	lw	a5,0(a5) # 0 <sec_eng_pka0_lmul2n>
			a: R_RISCV_LO12_I	ble_memset_ptr
			a: R_RISCV_RELAX	*ABS*
   e:	d606                	sw	ra,44(sp)
  10:	d226                	sw	s1,36(sp)
  12:	d04a                	sw	s2,32(sp)
  14:	ce4e                	sw	s3,28(sp)
  16:	cc52                	sw	s4,24(sp)
  18:	89b2                	mv	s3,a2
  1a:	8a2e                	mv	s4,a1
  1c:	4611                	li	a2,4

0000001e <.LVL144>:
  1e:	4581                	li	a1,0

00000020 <.LVL145>:
  20:	0068                	addi	a0,sp,12

00000022 <.LVL146>:
  22:	8936                	mv	s2,a3
  24:	84ba                	mv	s1,a4
  26:	9782                	jalr	a5

00000028 <.LVL147>:
  28:	86d2                	mv	a3,s4
  2a:	4781                	li	a5,0
  2c:	474d                	li	a4,19
  2e:	864e                	mv	a2,s3
  30:	85ca                	mv	a1,s2
  32:	8526                	mv	a0,s1
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	pka0_write_common_op_first_cfg
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL147+0xc>

0000003c <.LVL148>:
  3c:	47b2                	lw	a5,12(sp)
  3e:	01141713          	slli	a4,s0,0x11
  42:	76e1                	lui	a3,0xffff8
  44:	8345                	srli	a4,a4,0x11
  46:	8ff5                	and	a5,a5,a3
  48:	8fd9                	or	a5,a5,a4
  4a:	40004737          	lui	a4,0x40004
  4e:	34f72023          	sw	a5,832(a4) # 40004340 <.LLST20+0x40003329>
  52:	50b2                	lw	ra,44(sp)
  54:	5422                	lw	s0,40(sp)
  56:	5492                	lw	s1,36(sp)
  58:	5902                	lw	s2,32(sp)
  5a:	49f2                	lw	s3,28(sp)
  5c:	4a62                	lw	s4,24(sp)
  5e:	6145                	addi	sp,sp,48
  60:	8082                	ret

Disassembly of section .text.sec_eng_pka0_ldiv2n:

00000000 <sec_eng_pka0_ldiv2n>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)
   4:	843e                	mv	s0,a5
   6:	000007b7          	lui	a5,0x0
			6: R_RISCV_HI20	ble_memset_ptr
			6: R_RISCV_RELAX	*ABS*

0000000a <.LVL150>:
   a:	0007a783          	lw	a5,0(a5) # 0 <sec_eng_pka0_ldiv2n>
			a: R_RISCV_LO12_I	ble_memset_ptr
			a: R_RISCV_RELAX	*ABS*
   e:	d606                	sw	ra,44(sp)
  10:	d226                	sw	s1,36(sp)
  12:	d04a                	sw	s2,32(sp)
  14:	ce4e                	sw	s3,28(sp)
  16:	cc52                	sw	s4,24(sp)
  18:	89b2                	mv	s3,a2
  1a:	8a2e                	mv	s4,a1
  1c:	4611                	li	a2,4

0000001e <.LVL151>:
  1e:	4581                	li	a1,0

00000020 <.LVL152>:
  20:	0068                	addi	a0,sp,12

00000022 <.LVL153>:
  22:	8936                	mv	s2,a3
  24:	84ba                	mv	s1,a4
  26:	9782                	jalr	a5

00000028 <.LVL154>:
  28:	86d2                	mv	a3,s4
  2a:	4781                	li	a5,0
  2c:	4749                	li	a4,18
  2e:	864e                	mv	a2,s3
  30:	85ca                	mv	a1,s2
  32:	8526                	mv	a0,s1
  34:	00000097          	auipc	ra,0x0
			34: R_RISCV_CALL	pka0_write_common_op_first_cfg
			34: R_RISCV_RELAX	*ABS*
  38:	000080e7          	jalr	ra # 34 <.LVL154+0xc>

0000003c <.LVL155>:
  3c:	47b2                	lw	a5,12(sp)
  3e:	01141713          	slli	a4,s0,0x11
  42:	76e1                	lui	a3,0xffff8
  44:	8345                	srli	a4,a4,0x11
  46:	8ff5                	and	a5,a5,a3
  48:	8fd9                	or	a5,a5,a4
  4a:	40004737          	lui	a4,0x40004
  4e:	34f72023          	sw	a5,832(a4) # 40004340 <.LLST20+0x40003329>
  52:	50b2                	lw	ra,44(sp)
  54:	5422                	lw	s0,40(sp)
  56:	5492                	lw	s1,36(sp)
  58:	5902                	lw	s2,32(sp)
  5a:	49f2                	lw	s3,28(sp)
  5c:	4a62                	lw	s4,24(sp)
  5e:	6145                	addi	sp,sp,48
  60:	8082                	ret
