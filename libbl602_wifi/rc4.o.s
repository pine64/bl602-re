
rc4.o:     file format elf32-littleriscv


Disassembly of section .text.prepare_key:

00000000 <prepare_key>:
   0:	4781                	li	a5,0
   2:	10000713          	li	a4,256

00000006 <.L2>:
   6:	00f606b3          	add	a3,a2,a5
   a:	00f68023          	sb	a5,0(a3)

0000000e <.LVL2>:
   e:	0785                	addi	a5,a5,1

00000010 <.LVL3>:
  10:	fee79be3          	bne	a5,a4,6 <.L2>
  14:	10060023          	sb	zero,256(a2)
  18:	100600a3          	sb	zero,257(a2)

0000001c <.LVL4>:
  1c:	86b2                	mv	a3,a2
  1e:	10060313          	addi	t1,a2,256
  22:	4881                	li	a7,0
  24:	4701                	li	a4,0

00000026 <.L3>:
  26:	00e507b3          	add	a5,a0,a4
  2a:	0705                	addi	a4,a4,1

0000002c <.LVL6>:
  2c:	02b76733          	rem	a4,a4,a1
  30:	0006c803          	lbu	a6,0(a3)
  34:	0007c783          	lbu	a5,0(a5)
  38:	0685                	addi	a3,a3,1

0000003a <.LVL7>:
  3a:	97c2                	add	a5,a5,a6
  3c:	97c6                	add	a5,a5,a7
  3e:	0ff7f893          	andi	a7,a5,255
  42:	0ff7f793          	andi	a5,a5,255
  46:	97b2                	add	a5,a5,a2

00000048 <.LBB8>:
  48:	0007ce03          	lbu	t3,0(a5)
  4c:	ffc68fa3          	sb	t3,-1(a3)
  50:	01078023          	sb	a6,0(a5)

00000054 <.LBE8>:
  54:	0ff77713          	andi	a4,a4,255

00000058 <.LVL11>:
  58:	fcd317e3          	bne	t1,a3,26 <.L3>
  5c:	8082                	ret

Disassembly of section .text.rc4:

00000000 <rc4>:
   0:	1006ce03          	lbu	t3,256(a3)

00000004 <.LVL13>:
   4:	1016c703          	lbu	a4,257(a3)

00000008 <.LVL14>:
   8:	4781                	li	a5,0

0000000a <.L7>:
   a:	00fe0833          	add	a6,t3,a5
   e:	0ff87813          	andi	a6,a6,255

00000012 <.LVL16>:
  12:	00c7ce63          	blt	a5,a2,2e <.L8>
  16:	4881                	li	a7,0

00000018 <.L9>:
  18:	011807b3          	add	a5,a6,a7
  1c:	0ff7f793          	andi	a5,a5,255

00000020 <.LVL18>:
  20:	02b8cc63          	blt	a7,a1,58 <.L10>
  24:	10f68023          	sb	a5,256(a3)
  28:	10e680a3          	sb	a4,257(a3)
  2c:	8082                	ret

0000002e <.L8>:
  2e:	0805                	addi	a6,a6,1
  30:	0ff87813          	andi	a6,a6,255
  34:	9836                	add	a6,a6,a3
  36:	00084303          	lbu	t1,0(a6)
  3a:	0785                	addi	a5,a5,1

0000003c <.LVL20>:
  3c:	07c2                	slli	a5,a5,0x10
  3e:	971a                	add	a4,a4,t1

00000040 <.LVL21>:
  40:	0ff77713          	andi	a4,a4,255

00000044 <.LVL22>:
  44:	00e688b3          	add	a7,a3,a4

00000048 <.LBB10>:
  48:	0008ce83          	lbu	t4,0(a7)
  4c:	87c1                	srai	a5,a5,0x10
  4e:	01d80023          	sb	t4,0(a6)
  52:	00688023          	sb	t1,0(a7)

00000056 <.LVL24>:
  56:	bf55                	j	a <.L7>

00000058 <.L10>:
  58:	0785                	addi	a5,a5,1
  5a:	0ff7f793          	andi	a5,a5,255
  5e:	97b6                	add	a5,a5,a3
  60:	0007c603          	lbu	a2,0(a5)
  64:	9732                	add	a4,a4,a2

00000066 <.LVL26>:
  66:	0ff77713          	andi	a4,a4,255

0000006a <.LVL27>:
  6a:	00e68333          	add	t1,a3,a4

0000006e <.LBB12>:
  6e:	00034e03          	lbu	t3,0(t1)
  72:	01c78023          	sb	t3,0(a5)
  76:	00c30023          	sb	a2,0(t1)

0000007a <.LBE12>:
  7a:	0007c783          	lbu	a5,0(a5)

0000007e <.LVL30>:
  7e:	01150333          	add	t1,a0,a7
  82:	0885                	addi	a7,a7,1

00000084 <.LVL31>:
  84:	963e                	add	a2,a2,a5

00000086 <.LVL32>:
  86:	0ff67613          	andi	a2,a2,255
  8a:	9636                	add	a2,a2,a3
  8c:	00064783          	lbu	a5,0(a2)
  90:	00034603          	lbu	a2,0(t1)
  94:	08c2                	slli	a7,a7,0x10

00000096 <.LVL33>:
  96:	4108d893          	srai	a7,a7,0x10

0000009a <.LVL34>:
  9a:	8fb1                	xor	a5,a5,a2
  9c:	00f30023          	sb	a5,0(t1)
  a0:	bfa5                	j	18 <.L9>

Disassembly of section .text.RC4_Encrypt:

00000000 <RC4_Encrypt>:
   0:	7139                	addi	sp,sp,-64
   2:	d256                	sw	s5,36(sp)
   4:	de06                	sw	ra,60(sp)
   6:	dc22                	sw	s0,56(sp)
   8:	da26                	sw	s1,52(sp)
   a:	d84a                	sw	s2,48(sp)
   c:	d64e                	sw	s3,44(sp)
   e:	d452                	sw	s4,40(sp)
  10:	01060a93          	addi	s5,a2,16
  14:	02000893          	li	a7,32
  18:	0558c763          	blt	a7,s5,66 <.L11>
  1c:	8a2a                	mv	s4,a0
  1e:	850a                	mv	a0,sp

00000020 <.LVL36>:
  20:	84b6                	mv	s1,a3
  22:	8432                	mv	s0,a2
  24:	89be                	mv	s3,a5
  26:	893a                	mv	s2,a4
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL36+0x8>

00000030 <.LVL37>:
  30:	4641                	li	a2,16
  32:	85d2                	mv	a1,s4
  34:	00810533          	add	a0,sp,s0
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL37+0x8>

00000040 <.LVL38>:
  40:	00000437          	lui	s0,0x0
  44:	00040613          	mv	a2,s0
  48:	85d6                	mv	a1,s5
  4a:	850a                	mv	a0,sp
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL38+0xc>

00000054 <.LVL39>:
  54:	00040693          	mv	a3,s0
  58:	864e                	mv	a2,s3
  5a:	85ca                	mv	a1,s2
  5c:	8526                	mv	a0,s1
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL39+0xa>

00000066 <.L11>:
  66:	50f2                	lw	ra,60(sp)
  68:	5462                	lw	s0,56(sp)
  6a:	54d2                	lw	s1,52(sp)
  6c:	5942                	lw	s2,48(sp)
  6e:	59b2                	lw	s3,44(sp)
  70:	5a22                	lw	s4,40(sp)
  72:	5a92                	lw	s5,36(sp)
  74:	6121                	addi	sp,sp,64
  76:	8082                	ret
