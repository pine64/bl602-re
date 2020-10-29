
sysctrl.o:     file format elf32-littleriscv


Disassembly of section .text.sysctrl_init:

00000000 <sysctrl_init>:
   0:	80000737          	lui	a4,0x80000
   4:	449007b7          	lui	a5,0x44900
   8:	0731                	addi	a4,a4,12
   a:	d7b8                	sw	a4,104(a5)

0000000c <.LBB10>:
   c:	0e07a703          	lw	a4,224(a5) # 449000e0 <.LASF31+0x448ffa98>

00000010 <.LBE10>:
  10:	000206b7          	lui	a3,0x20
  14:	f0068693          	addi	a3,a3,-256 # 1ff00 <.LASF31+0x1f8b8>
  18:	8f55                	or	a4,a4,a3

0000001a <.LBB12>:
  1a:	0ee7a023          	sw	a4,224(a5)

0000001e <.LBE12>:
  1e:	8082                	ret
