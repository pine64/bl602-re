
ke_queue.o:     file format elf32-littleriscv


Disassembly of section .text.ke_queue_extract:

00000000 <ke_queue_extract>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	d606                	sw	ra,44(sp)
   a:	d422                	sw	s0,40(sp)
   c:	4100                	lw	s0,0(a0)

0000000e <.LVL1>:
   e:	892a                	mv	s2,a0
  10:	89ae                	mv	s3,a1
  12:	4481                	li	s1,0

00000014 <.L2>:
  14:	cc11                	beqz	s0,30 <.L1>
  16:	85b2                	mv	a1,a2
  18:	8522                	mv	a0,s0
  1a:	c632                	sw	a2,12(sp)
  1c:	9982                	jalr	s3

0000001e <.LVL3>:
  1e:	401c                	lw	a5,0(s0)
  20:	4632                	lw	a2,12(sp)
  22:	c50d                	beqz	a0,4c <.L3>
  24:	cc91                	beqz	s1,40 <.L4>
  26:	c09c                	sw	a5,0(s1)

00000028 <.L5>:
  28:	401c                	lw	a5,0(s0)
  2a:	cf91                	beqz	a5,46 <.L6>
  2c:	00042023          	sw	zero,0(s0)

00000030 <.L1>:
  30:	8522                	mv	a0,s0
  32:	50b2                	lw	ra,44(sp)
  34:	5422                	lw	s0,40(sp)

00000036 <.LVL4>:
  36:	5492                	lw	s1,36(sp)

00000038 <.LVL5>:
  38:	5902                	lw	s2,32(sp)

0000003a <.LVL6>:
  3a:	49f2                	lw	s3,28(sp)

0000003c <.LVL7>:
  3c:	6145                	addi	sp,sp,48
  3e:	8082                	ret

00000040 <.L4>:
  40:	00f92023          	sw	a5,0(s2)
  44:	b7d5                	j	28 <.L5>

00000046 <.L6>:
  46:	00992223          	sw	s1,4(s2)
  4a:	b7dd                	j	30 <.L1>

0000004c <.L3>:
  4c:	84a2                	mv	s1,s0
  4e:	843e                	mv	s0,a5

00000050 <.LVL10>:
  50:	b7d1                	j	14 <.L2>
