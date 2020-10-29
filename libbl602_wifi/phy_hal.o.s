
phy_hal.o:     file format elf32-littleriscv


Disassembly of section .text.hal_fem_gpio_on:

00000000 <hal_fem_gpio_on>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	02011437          	lui	s0,0x2011
   8:	91440793          	addi	a5,s0,-1772 # 2010914 <.LASF18+0x2010190>
   c:	0028                	addi	a0,sp,8
   e:	ce06                	sw	ra,28(sp)
  10:	c43e                	sw	a5,8(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <hal_fem_gpio_on+0x12>

0000001a <.LVL0>:
  1a:	91540413          	addi	s0,s0,-1771
  1e:	0028                	addi	a0,sp,8
  20:	c422                	sw	s0,8(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL0+0x8>

0000002a <.LVL1>:
  2a:	40f2                	lw	ra,28(sp)
  2c:	4462                	lw	s0,24(sp)
  2e:	6105                	addi	sp,sp,32
  30:	8082                	ret

Disassembly of section .text.hal_fem_gpio_off:

00000000 <hal_fem_gpio_off>:
   0:	8082                	ret

Disassembly of section .text.hal_get_capcode:

00000000 <hal_get_capcode>:
   0:	400107b7          	lui	a5,0x40010
   4:	8847a503          	lw	a0,-1916(a5) # 4000f884 <.LASF18+0x4000f100>
   8:	8159                	srli	a0,a0,0x16
   a:	03f57513          	andi	a0,a0,63
   e:	8082                	ret

Disassembly of section .text.hal_set_capcode:

00000000 <hal_set_capcode>:
   0:	40010637          	lui	a2,0x40010
   4:	88462703          	lw	a4,-1916(a2) # 4000f884 <.LASF18+0x4000f100>

00000008 <.LVL3>:
   8:	f00106b7          	lui	a3,0xf0010
   c:	01051793          	slli	a5,a0,0x10
  10:	16fd                	addi	a3,a3,-1
  12:	055a                	slli	a0,a0,0x16

00000014 <.LVL4>:
  14:	8fc9                	or	a5,a5,a0
  16:	8f75                	and	a4,a4,a3

00000018 <.LVL5>:
  18:	8fd9                	or	a5,a5,a4
  1a:	88f62223          	sw	a5,-1916(a2)
  1e:	8082                	ret

Disassembly of section .text.hal_set_capcode_asymm:

00000000 <hal_set_capcode_asymm>:
   0:	400106b7          	lui	a3,0x40010
   4:	8846a783          	lw	a5,-1916(a3) # 4000f884 <.LASF18+0x4000f100>

00000008 <.LVL7>:
   8:	003f0737          	lui	a4,0x3f0
   c:	05c2                	slli	a1,a1,0x10

0000000e <.LVL8>:
   e:	8df9                	and	a1,a1,a4
  10:	f0010737          	lui	a4,0xf0010
  14:	177d                	addi	a4,a4,-1
  16:	8ff9                	and	a5,a5,a4

00000018 <.LVL9>:
  18:	8ddd                	or	a1,a1,a5
  1a:	055a                	slli	a0,a0,0x16

0000001c <.LVL10>:
  1c:	0fc007b7          	lui	a5,0xfc00
  20:	8d7d                	and	a0,a0,a5
  22:	8dc9                	or	a1,a1,a0
  24:	88b6a223          	sw	a1,-1916(a3)
  28:	8082                	ret

Disassembly of section .text.hal_get_capcode_asymm:

00000000 <hal_get_capcode_asymm>:
   0:	c911                	beqz	a0,14 <.L8>
   2:	400107b7          	lui	a5,0x40010
   6:	8847a783          	lw	a5,-1916(a5) # 4000f884 <.LASF18+0x4000f100>
   a:	83d9                	srli	a5,a5,0x16
   c:	03f7f793          	andi	a5,a5,63
  10:	00f50023          	sb	a5,0(a0)

00000014 <.L8>:
  14:	c991                	beqz	a1,28 <.L7>
  16:	400107b7          	lui	a5,0x40010
  1a:	8847a783          	lw	a5,-1916(a5) # 4000f884 <.LASF18+0x4000f100>
  1e:	83c1                	srli	a5,a5,0x10
  20:	03f7f793          	andi	a5,a5,63
  24:	00f58023          	sb	a5,0(a1)

00000028 <.L7>:
  28:	8082                	ret

Disassembly of section .text.hal_get_temperature:

00000000 <hal_get_temperature>:
   0:	000007b7          	lui	a5,0x0
   4:	0007d783          	lhu	a5,0(a5) # 0 <hal_get_temperature>
   8:	00f51023          	sh	a5,0(a0)
   c:	4505                	li	a0,1

0000000e <.LVL13>:
   e:	8082                	ret

Disassembly of section .text.hal_set_temperature:

00000000 <hal_set_temperature>:
   0:	000007b7          	lui	a5,0x0
   4:	00a79023          	sh	a0,0(a5) # 0 <hal_set_temperature>
   8:	8082                	ret
