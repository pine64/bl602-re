
notifier.o:     file format elf32-littleriscv


Disassembly of section .text.notifier_chain_regsiter:

00000000 <notifier_chain_regsiter>:
   0:	1101                	addi	sp,sp,-32
   2:	c62a                	sw	a0,12(sp)
   4:	c42e                	sw	a1,8(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <notifier_chain_regsiter+0x8>

00000010 <.LVL1>:
  10:	45a2                	lw	a1,8(sp)
  12:	4532                	lw	a0,12(sp)

00000014 <.L2>:
  14:	411c                	lw	a5,0(a0)
  16:	eb99                	bnez	a5,2c <.L4>

00000018 <.L3>:
  18:	c1dc                	sw	a5,4(a1)
  1a:	c10c                	sw	a1,0(a0)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.L3+0x4>

00000024 <.LVL3>:
  24:	40f2                	lw	ra,28(sp)
  26:	4501                	li	a0,0
  28:	6105                	addi	sp,sp,32

0000002a <.LVL4>:
  2a:	8082                	ret

0000002c <.L4>:
  2c:	4594                	lw	a3,8(a1)
  2e:	4798                	lw	a4,8(a5)
  30:	fed744e3          	blt	a4,a3,18 <.L3>
  34:	00478513          	addi	a0,a5,4
  38:	bff1                	j	14 <.L2>

Disassembly of section .text.notifier_chain_regsiter_fromCritical:

00000000 <notifier_chain_regsiter_fromCritical>:
   0:	411c                	lw	a5,0(a0)
   2:	e789                	bnez	a5,c <.L9>

00000004 <.L8>:
   4:	c1dc                	sw	a5,4(a1)
   6:	c10c                	sw	a1,0(a0)
   8:	4501                	li	a0,0

0000000a <.LVL8>:
   a:	8082                	ret

0000000c <.L9>:
   c:	4594                	lw	a3,8(a1)
   e:	4798                	lw	a4,8(a5)
  10:	fed74ae3          	blt	a4,a3,4 <.L8>
  14:	00478513          	addi	a0,a5,4
  18:	b7e5                	j	0 <notifier_chain_regsiter_fromCritical>

Disassembly of section .text.notifier_chain_unregsiter:

00000000 <notifier_chain_unregsiter>:
   0:	1101                	addi	sp,sp,-32
   2:	c62a                	sw	a0,12(sp)
   4:	c42e                	sw	a1,8(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <notifier_chain_unregsiter+0x8>

00000010 <.LVL12>:
  10:	45a2                	lw	a1,8(sp)
  12:	4532                	lw	a0,12(sp)

00000014 <.L11>:
  14:	411c                	lw	a5,0(a0)
  16:	e791                	bnez	a5,22 <.L14>
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.L11+0x4>

00000020 <.LVL14>:
  20:	a029                	j	2a <.L13>

00000022 <.L14>:
  22:	00b79863          	bne	a5,a1,32 <.L12>
  26:	41dc                	lw	a5,4(a1)
  28:	c11c                	sw	a5,0(a0)

0000002a <.L13>:
  2a:	40f2                	lw	ra,28(sp)
  2c:	4501                	li	a0,0
  2e:	6105                	addi	sp,sp,32

00000030 <.LVL17>:
  30:	8082                	ret

00000032 <.L12>:
  32:	00478513          	addi	a0,a5,4
  36:	bff9                	j	14 <.L11>

Disassembly of section .text.notifier_chain_unregsiter_fromCritical:

00000000 <notifier_chain_unregsiter_fromCritical>:
   0:	411c                	lw	a5,0(a0)
   2:	c789                	beqz	a5,c <.L19>
   4:	00b79663          	bne	a5,a1,10 <.L18>
   8:	41dc                	lw	a5,4(a1)
   a:	c11c                	sw	a5,0(a0)

0000000c <.L19>:
   c:	4501                	li	a0,0

0000000e <.LVL21>:
   e:	8082                	ret

00000010 <.L18>:
  10:	00478513          	addi	a0,a5,4
  14:	b7f5                	j	0 <notifier_chain_unregsiter_fromCritical>

Disassembly of section .text.notifier_chain_call:

00000000 <notifier_chain_call>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	84ae                	mv	s1,a1
   c:	8932                	mv	s2,a2
   e:	4100                	lw	s0,0(a0)

00000010 <.LVL25>:
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL25>

00000018 <.L22>:
  18:	ec01                	bnez	s0,30 <.L23>
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.L22+0x2>

00000022 <.LVL27>:
  22:	40b2                	lw	ra,12(sp)
  24:	4422                	lw	s0,8(sp)

00000026 <.LVL28>:
  26:	4492                	lw	s1,4(sp)

00000028 <.LVL29>:
  28:	4902                	lw	s2,0(sp)

0000002a <.LVL30>:
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

00000030 <.L23>:
  30:	401c                	lw	a5,0(s0)
  32:	8522                	mv	a0,s0
  34:	864a                	mv	a2,s2
  36:	85a6                	mv	a1,s1
  38:	9782                	jalr	a5

0000003a <.LVL32>:
  3a:	4040                	lw	s0,4(s0)
  3c:	bff1                	j	18 <.L22>

Disassembly of section .text.notifier_chain_call_fromeCritical:

00000000 <notifier_chain_call_fromeCritical>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c04a                	sw	s2,0(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	4100                	lw	s0,0(a0)

0000000c <.LVL35>:
   c:	84ae                	mv	s1,a1
   e:	8932                	mv	s2,a2

00000010 <.L26>:
  10:	e801                	bnez	s0,20 <.L27>
  12:	40b2                	lw	ra,12(sp)
  14:	4422                	lw	s0,8(sp)

00000016 <.LVL37>:
  16:	4492                	lw	s1,4(sp)

00000018 <.LVL38>:
  18:	4902                	lw	s2,0(sp)

0000001a <.LVL39>:
  1a:	4501                	li	a0,0
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

00000020 <.L27>:
  20:	401c                	lw	a5,0(s0)
  22:	8522                	mv	a0,s0
  24:	864a                	mv	a2,s2
  26:	85a6                	mv	a1,s1
  28:	9782                	jalr	a5

0000002a <.LVL41>:
  2a:	4040                	lw	s0,4(s0)
  2c:	b7d5                	j	10 <.L26>
