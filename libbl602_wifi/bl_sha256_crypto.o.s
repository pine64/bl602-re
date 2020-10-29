
bl_sha256_crypto.o:     file format elf32-littleriscv


Disassembly of section .text.bl_sha256_crypto_kdf:

00000000 <bl_sha256_crypto_kdf>:
   0:	7119                	addi	sp,sp,-128
   2:	dca2                	sw	s0,120(sp)
   4:	0ff88413          	addi	s0,a7,255
   8:	d8ca                	sw	s2,112(sp)
   a:	d4d2                	sw	s4,104(sp)
   c:	00f70933          	add	s2,a4,a5

00000010 <.LVL1>:
  10:	8a3e                	mv	s4,a5
  12:	8421                	srai	s0,s0,0x8

00000014 <.LVL2>:
  14:	4785                	li	a5,1

00000016 <.LVL3>:
  16:	daa6                	sw	s1,116(sp)
  18:	d6ce                	sw	s3,108(sp)
  1a:	d2d6                	sw	s5,100(sp)
  1c:	d0da                	sw	s6,96(sp)
  1e:	cede                	sw	s7,92(sp)
  20:	cce2                	sw	s8,88(sp)
  22:	cae6                	sw	s9,84(sp)
  24:	c8ea                	sw	s10,80(sp)
  26:	c6ee                	sw	s11,76(sp)
  28:	de86                	sw	ra,124(sp)
  2a:	8b2a                	mv	s6,a0
  2c:	8bae                	mv	s7,a1
  2e:	8c32                	mv	s8,a2
  30:	8cb6                	mv	s9,a3
  32:	89ba                	mv	s3,a4
  34:	01111723          	sh	a7,14(sp)
  38:	00f11f23          	sh	a5,30(sp)
  3c:	84ca                	mv	s1,s2
  3e:	0ff47413          	andi	s0,s0,255
  42:	01e10d13          	addi	s10,sp,30
  46:	4a89                	li	s5,2
  48:	00e10d93          	addi	s11,sp,14

0000004c <.L2>:
  4c:	01e15783          	lhu	a5,30(sp)
  50:	02f47a63          	bgeu	s0,a5,84 <.L3>
  54:	00e15603          	lhu	a2,14(sp)
  58:	85ca                	mv	a1,s2
  5a:	8542                	mv	a0,a6
  5c:	820d                	srli	a2,a2,0x3
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L2+0x12>

00000066 <.LVL5>:
  66:	50f6                	lw	ra,124(sp)
  68:	5466                	lw	s0,120(sp)

0000006a <.LVL6>:
  6a:	54d6                	lw	s1,116(sp)

0000006c <.LVL7>:
  6c:	5946                	lw	s2,112(sp)

0000006e <.LVL8>:
  6e:	59b6                	lw	s3,108(sp)

00000070 <.LVL9>:
  70:	5a26                	lw	s4,104(sp)

00000072 <.LVL10>:
  72:	5a96                	lw	s5,100(sp)
  74:	5b06                	lw	s6,96(sp)

00000076 <.LVL11>:
  76:	4bf6                	lw	s7,92(sp)
  78:	4c66                	lw	s8,88(sp)

0000007a <.LVL12>:
  7a:	4cd6                	lw	s9,84(sp)
  7c:	4d46                	lw	s10,80(sp)
  7e:	4db6                	lw	s11,76(sp)
  80:	6109                	addi	sp,sp,128
  82:	8082                	ret

00000084 <.L3>:
  84:	87a6                	mv	a5,s1
  86:	1818                	addi	a4,sp,48
  88:	1014                	addi	a3,sp,32
  8a:	4611                	li	a2,4
  8c:	85de                	mv	a1,s7
  8e:	855a                	mv	a0,s6
  90:	c442                	sw	a6,8(sp)
  92:	d06a                	sw	s10,32(sp)
  94:	d856                	sw	s5,48(sp)
  96:	d262                	sw	s8,36(sp)
  98:	da66                	sw	s9,52(sp)
  9a:	d44e                	sw	s3,40(sp)
  9c:	dc52                	sw	s4,56(sp)
  9e:	d66e                	sw	s11,44(sp)
  a0:	de56                	sw	s5,60(sp)
  a2:	00000097          	auipc	ra,0x0
  a6:	000080e7          	jalr	ra # a2 <.L3+0x1e>

000000aa <.LVL14>:
  aa:	01e15783          	lhu	a5,30(sp)
  ae:	02048493          	addi	s1,s1,32
  b2:	4822                	lw	a6,8(sp)
  b4:	0785                	addi	a5,a5,1
  b6:	00f11f23          	sh	a5,30(sp)
  ba:	bf49                	j	4c <.L2>
