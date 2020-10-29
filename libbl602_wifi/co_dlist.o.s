
co_dlist.o:     file format elf32-littleriscv


Disassembly of section .text.co_dlist_init:

00000000 <co_dlist_init>:
   0:	00052023          	sw	zero,0(a0)
   4:	00052223          	sw	zero,4(a0)
   8:	00052423          	sw	zero,8(a0)
   c:	8082                	ret

Disassembly of section .text.co_dlist_push_back:

00000000 <co_dlist_push_back>:
   0:	411c                	lw	a5,0(a0)
   2:	eb99                	bnez	a5,18 <.L3>
   4:	c10c                	sw	a1,0(a0)

00000006 <.L4>:
   6:	415c                	lw	a5,4(a0)
   8:	c1dc                	sw	a5,4(a1)
   a:	c14c                	sw	a1,4(a0)
   c:	0005a023          	sw	zero,0(a1)
  10:	451c                	lw	a5,8(a0)
  12:	0785                	addi	a5,a5,1
  14:	c51c                	sw	a5,8(a0)
  16:	8082                	ret

00000018 <.L3>:
  18:	415c                	lw	a5,4(a0)
  1a:	c38c                	sw	a1,0(a5)
  1c:	b7ed                	j	6 <.L4>

Disassembly of section .text.co_dlist_push_front:

00000000 <co_dlist_push_front>:
   0:	411c                	lw	a5,0(a0)
   2:	eb99                	bnez	a5,18 <.L6>
   4:	c14c                	sw	a1,4(a0)

00000006 <.L7>:
   6:	411c                	lw	a5,0(a0)
   8:	c19c                	sw	a5,0(a1)
   a:	c10c                	sw	a1,0(a0)
   c:	0005a223          	sw	zero,4(a1)
  10:	451c                	lw	a5,8(a0)
  12:	0785                	addi	a5,a5,1
  14:	c51c                	sw	a5,8(a0)
  16:	8082                	ret

00000018 <.L6>:
  18:	c3cc                	sw	a1,4(a5)
  1a:	b7f5                	j	6 <.L7>

Disassembly of section .text.co_dlist_pop_front:

00000000 <co_dlist_pop_front>:
   0:	87aa                	mv	a5,a0
   2:	4108                	lw	a0,0(a0)

00000004 <.LVL5>:
   4:	cd01                	beqz	a0,1c <.L8>
   6:	4798                	lw	a4,8(a5)
   8:	177d                	addi	a4,a4,-1
   a:	c798                	sw	a4,8(a5)
   c:	4118                	lw	a4,0(a0)
   e:	c398                	sw	a4,0(a5)
  10:	c701                	beqz	a4,18 <.L10>
  12:	00072223          	sw	zero,4(a4)
  16:	8082                	ret

00000018 <.L10>:
  18:	0007a223          	sw	zero,4(a5)

0000001c <.L8>:
  1c:	8082                	ret

Disassembly of section .text.co_dlist_extract:

00000000 <co_dlist_extract>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	00052903          	lw	s2,0(a0)
   e:	842a                	mv	s0,a0

00000010 <.LVL9>:
  10:	84ae                	mv	s1,a1
  12:	02091063          	bnez	s2,32 <.L15>
  16:	000005b7          	lui	a1,0x0

0000001a <.LVL10>:
  1a:	00000537          	lui	a0,0x0

0000001e <.LVL11>:
  1e:	08e00613          	li	a2,142
  22:	00058593          	mv	a1,a1
  26:	00050513          	mv	a0,a0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL11+0xc>

00000032 <.L15>:
  32:	409c                	lw	a5,0(s1)
  34:	02991263          	bne	s2,s1,58 <.L16>
  38:	c01c                	sw	a5,0(s0)
  3a:	cf81                	beqz	a5,52 <.L17>
  3c:	0007a223          	sw	zero,4(a5)

00000040 <.L18>:
  40:	441c                	lw	a5,8(s0)
  42:	40b2                	lw	ra,12(sp)
  44:	4492                	lw	s1,4(sp)

00000046 <.LVL15>:
  46:	17fd                	addi	a5,a5,-1
  48:	c41c                	sw	a5,8(s0)
  4a:	4422                	lw	s0,8(sp)

0000004c <.LVL16>:
  4c:	4902                	lw	s2,0(sp)

0000004e <.LVL17>:
  4e:	0141                	addi	sp,sp,16
  50:	8082                	ret

00000052 <.L17>:
  52:	00042223          	sw	zero,4(s0)
  56:	b7ed                	j	40 <.L18>

00000058 <.L16>:
  58:	40d8                	lw	a4,4(s1)
  5a:	c31c                	sw	a5,0(a4)
  5c:	4054                	lw	a3,4(s0)
  5e:	40d8                	lw	a4,4(s1)
  60:	00969463          	bne	a3,s1,68 <.L19>
  64:	c058                	sw	a4,4(s0)
  66:	bfe9                	j	40 <.L18>

00000068 <.L19>:
  68:	c3d8                	sw	a4,4(a5)
  6a:	bfd9                	j	40 <.L18>
