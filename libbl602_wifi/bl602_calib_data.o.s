
bl602_calib_data.o:     file format elf32-littleriscv


Disassembly of section .text.rf_pri_init_calib_mem:

00000000 <rf_pri_init_calib_mem>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040413          	mv	s0,s0
   c:	4008                	lw	a0,0(s0)
   e:	0a800613          	li	a2,168
  12:	4581                	li	a1,0
  14:	c606                	sw	ra,12(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <rf_pri_init_calib_mem+0x16>

0000001e <.LVL0>:
  1e:	401c                	lw	a5,0(s0)
  20:	75fd                	lui	a1,0xfffff
  22:	6705                	lui	a4,0x1
  24:	ff801837          	lui	a6,0xff801
  28:	4501                	li	a0,0
  2a:	03f58893          	addi	a7,a1,63 # fffff03f <.LASF56+0xffffe536>
  2e:	80070613          	addi	a2,a4,-2048 # 800 <.LASF85+0x4>
  32:	187d                	addi	a6,a6,-1
  34:	00400e37          	lui	t3,0x400
  38:	4311                	li	t1,4

0000003a <.L2>:
  3a:	00850713          	addi	a4,a0,8
  3e:	070e                	slli	a4,a4,0x3
  40:	973e                	add	a4,a4,a5
  42:	4714                	lw	a3,8(a4)
  44:	0505                	addi	a0,a0,1

00000046 <.LVL2>:
  46:	fc06f693          	andi	a3,a3,-64
  4a:	0206e693          	ori	a3,a3,32
  4e:	c714                	sw	a3,8(a4)
  50:	4714                	lw	a3,8(a4)
  52:	0116f6b3          	and	a3,a3,a7
  56:	8ed1                	or	a3,a3,a2
  58:	c714                	sw	a3,8(a4)
  5a:	4714                	lw	a3,8(a4)
  5c:	0106f6b3          	and	a3,a3,a6
  60:	01c6e6b3          	or	a3,a3,t3
  64:	c714                	sw	a3,8(a4)
  66:	4754                	lw	a3,12(a4)
  68:	c006f693          	andi	a3,a3,-1024
  6c:	c754                	sw	a3,12(a4)
  6e:	fc6516e3          	bne	a0,t1,3a <.L2>
  72:	4794                	lw	a3,8(a5)
  74:	787d                	lui	a6,0xfffff
  76:	6505                	lui	a0,0x1
  78:	fc06f693          	andi	a3,a3,-64
  7c:	0206e693          	ori	a3,a3,32
  80:	c794                	sw	a3,8(a5)
  82:	4798                	lw	a4,8(a5)
  84:	fffc16b7          	lui	a3,0xfffc1
  88:	16fd                	addi	a3,a3,-1
  8a:	01177733          	and	a4,a4,a7
  8e:	8f51                	or	a4,a4,a2
  90:	c798                	sw	a4,8(a5)
  92:	4798                	lw	a4,8(a5)
  94:	4601                	li	a2,0
  96:	03f80813          	addi	a6,a6,63 # fffff03f <.LASF56+0xffffe536>
  9a:	8f75                	and	a4,a4,a3
  9c:	000206b7          	lui	a3,0x20
  a0:	8f55                	or	a4,a4,a3
  a2:	c798                	sw	a4,8(a5)
  a4:	4798                	lw	a4,8(a5)
  a6:	ff0406b7          	lui	a3,0xff040
  aa:	16fd                	addi	a3,a3,-1
  ac:	8f75                	and	a4,a4,a3
  ae:	008006b7          	lui	a3,0x800
  b2:	8f55                	or	a4,a4,a3
  b4:	c798                	sw	a4,8(a5)
  b6:	47d8                	lw	a4,12(a5)
  b8:	ff0016b7          	lui	a3,0xff001
  bc:	16fd                	addi	a3,a3,-1
  be:	8df9                	and	a1,a1,a4
  c0:	c7cc                	sw	a1,12(a5)
  c2:	47d8                	lw	a4,12(a5)
  c4:	ff8015b7          	lui	a1,0xff801
  c8:	80050513          	addi	a0,a0,-2048 # 800 <.LASF85+0x4>
  cc:	8f75                	and	a4,a4,a3
  ce:	c7d8                	sw	a4,12(a5)

000000d0 <.LVL3>:
  d0:	15fd                	addi	a1,a1,-1
  d2:	00400337          	lui	t1,0x400
  d6:	48a1                	li	a7,8

000000d8 <.L3>:
  d8:	00c60713          	addi	a4,a2,12
  dc:	070e                	slli	a4,a4,0x3
  de:	973e                	add	a4,a4,a5
  e0:	4714                	lw	a3,8(a4)
  e2:	0605                	addi	a2,a2,1

000000e4 <.LVL5>:
  e4:	fc06f693          	andi	a3,a3,-64
  e8:	0206e693          	ori	a3,a3,32
  ec:	c714                	sw	a3,8(a4)
  ee:	4714                	lw	a3,8(a4)
  f0:	0106f6b3          	and	a3,a3,a6
  f4:	8ec9                	or	a3,a3,a0
  f6:	c714                	sw	a3,8(a4)
  f8:	4714                	lw	a3,8(a4)
  fa:	8eed                	and	a3,a3,a1
  fc:	0066e6b3          	or	a3,a3,t1
 100:	c714                	sw	a3,8(a4)
 102:	4754                	lw	a3,12(a4)
 104:	c006f693          	andi	a3,a3,-1024
 108:	c754                	sw	a3,12(a4)
 10a:	fd1617e3          	bne	a2,a7,d8 <.L3>
 10e:	4b98                	lw	a4,16(a5)
 110:	f8f77713          	andi	a4,a4,-113
 114:	05076713          	ori	a4,a4,80
 118:	cb98                	sw	a4,16(a5)
 11a:	4b98                	lw	a4,16(a5)
 11c:	c7f77713          	andi	a4,a4,-897
 120:	28076713          	ori	a4,a4,640
 124:	cb98                	sw	a4,16(a5)
 126:	0007a023          	sw	zero,0(a5)
 12a:	40b2                	lw	ra,12(sp)
 12c:	4422                	lw	s0,8(sp)
 12e:	0141                	addi	sp,sp,16
 130:	8082                	ret
