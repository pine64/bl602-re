
co_utils.o:     file format elf32-littleriscv


Disassembly of section .text.co_bdaddr_set:

00000000 <co_bdaddr_set>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a303          	lw	t1,0(a5) # 0 <co_bdaddr_set>
   8:	85aa                	mv	a1,a0
   a:	00000537          	lui	a0,0x0

0000000e <.LVL1>:
   e:	4619                	li	a2,6
  10:	00050513          	mv	a0,a0
  14:	8302                	jr	t1

Disassembly of section .text.co_bdaddr_compare:

00000000 <co_bdaddr_compare>:
   0:	4781                	li	a5,0

00000002 <.LBB3>:
   2:	4619                	li	a2,6

00000004 <.L4>:
   4:	00f506b3          	add	a3,a0,a5
   8:	00f58733          	add	a4,a1,a5
   c:	0006c683          	lbu	a3,0(a3)
  10:	00074703          	lbu	a4,0(a4)
  14:	00e69763          	bne	a3,a4,22 <.L5>

00000018 <.LVL5>:
  18:	0785                	addi	a5,a5,1

0000001a <.LVL6>:
  1a:	fec795e3          	bne	a5,a2,4 <.L4>

0000001e <.LBE3>:
  1e:	4505                	li	a0,1

00000020 <.LBB4>:
  20:	8082                	ret

00000022 <.L5>:
  22:	4501                	li	a0,0

00000024 <.LBE4>:
  24:	8082                	ret
