
co_math.o:     file format elf32-littleriscv


Disassembly of section .text.co_crc32:

00000000 <co_crc32>:
   0:	000006b7          	lui	a3,0x0
   4:	4701                	li	a4,0
   6:	00068693          	mv	a3,a3

0000000a <.L2>:
   a:	00b71463          	bne	a4,a1,12 <.L3>
   e:	8532                	mv	a0,a2

00000010 <.LVL2>:
  10:	8082                	ret

00000012 <.L3>:
  12:	00a707b3          	add	a5,a4,a0

00000016 <.LBE4>:
  16:	0007c783          	lbu	a5,0(a5)
  1a:	00861813          	slli	a6,a2,0x8

0000001e <.LBB7>:
  1e:	8261                	srli	a2,a2,0x18

00000020 <.LVL5>:
  20:	8e3d                	xor	a2,a2,a5
  22:	060a                	slli	a2,a2,0x2
  24:	9636                	add	a2,a2,a3
  26:	4210                	lw	a2,0(a2)
  28:	0705                	addi	a4,a4,1

0000002a <.LVL6>:
  2a:	00c84633          	xor	a2,a6,a2

0000002e <.LVL7>:
  2e:	bff1                	j	a <.L2>
