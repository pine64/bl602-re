
at_wlan.o:     file format elf32-littleriscv


Disassembly of section .text.at_peers:

00000000 <at_peers>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	842a                	mv	s0,a0
   c:	862e                	mv	a2,a1
   e:	e915                	bnez	a0,42 <.L2>
  10:	ed85                	bnez	a1,48 <.L3>
  12:	000004b7          	lui	s1,0x0
  16:	00048493          	mv	s1,s1

0000001a <.LBB2>:
  1a:	4915                	li	s2,5

0000001c <.L5>:
  1c:	4601                	li	a2,0
  1e:	85a6                	mv	a1,s1
  20:	8522                	mv	a0,s0
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.L5+0x6>

0000002a <.LVL2>:
  2a:	e511                	bnez	a0,36 <.L4>
  2c:	0405                	addi	s0,s0,1
  2e:	05c48493          	addi	s1,s1,92 # 5c <.LVL6+0x8>
  32:	ff2415e3          	bne	s0,s2,1c <.L5>

00000036 <.L4>:
  36:	40b2                	lw	ra,12(sp)
  38:	4422                	lw	s0,8(sp)
  3a:	4492                	lw	s1,4(sp)
  3c:	4902                	lw	s2,0(sp)
  3e:	0141                	addi	sp,sp,16
  40:	8082                	ret

00000042 <.L2>:
  42:	4511                	li	a0,4
  44:	fe8569e3          	bltu	a0,s0,36 <.L4>

00000048 <.L3>:
  48:	05c00793          	li	a5,92
  4c:	02f407b3          	mul	a5,s0,a5
  50:	8522                	mv	a0,s0
  52:	4422                	lw	s0,8(sp)

00000054 <.LVL6>:
  54:	40b2                	lw	ra,12(sp)
  56:	4492                	lw	s1,4(sp)
  58:	4902                	lw	s2,0(sp)
  5a:	000005b7          	lui	a1,0x0

0000005e <.LVL7>:
  5e:	00058593          	mv	a1,a1
  62:	0141                	addi	sp,sp,16
  64:	95be                	add	a1,a1,a5
  66:	00000317          	auipc	t1,0x0
  6a:	00030067          	jr	t1 # 66 <.LVL7+0x8>

Disassembly of section .text.at_ping:

00000000 <at_ping>:
   0:	7169                	addi	sp,sp,-304
   2:	85aa                	mv	a1,a0
   4:	0068                	addi	a0,sp,12

00000006 <.LVL10>:
   6:	12112623          	sw	ra,300(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL10+0x4>

00000012 <.LVL11>:
  12:	000007b7          	lui	a5,0x0
  16:	0007a783          	lw	a5,0(a5) # 0 <at_ping>
  1a:	c789                	beqz	a5,24 <.L10>
  1c:	4601                	li	a2,0
  1e:	004c                	addi	a1,sp,4
  20:	4521                	li	a0,8
  22:	9782                	jalr	a5

00000024 <.L10>:
  24:	12c12083          	lw	ra,300(sp)
  28:	4501                	li	a0,0
  2a:	6155                	addi	sp,sp,304
  2c:	8082                	ret

Disassembly of section .text.at_wifi:

00000000 <at_wifi>:
   0:	000007b7          	lui	a5,0x0
   4:	7169                	addi	sp,sp,-304
   6:	00078793          	mv	a5,a5
   a:	c23e                	sw	a5,4(sp)
   c:	000007b7          	lui	a5,0x0
  10:	0007a783          	lw	a5,0(a5) # 0 <at_wifi>
  14:	12112623          	sw	ra,300(sp)
  18:	c62a                	sw	a0,12(sp)
  1a:	c789                	beqz	a5,24 <.L16>
  1c:	4601                	li	a2,0
  1e:	004c                	addi	a1,sp,4
  20:	453d                	li	a0,15

00000022 <.LVL14>:
  22:	9782                	jalr	a5

00000024 <.L16>:
  24:	12c12083          	lw	ra,300(sp)
  28:	4501                	li	a0,0
  2a:	6155                	addi	sp,sp,304
  2c:	8082                	ret

Disassembly of section .text.at_reassociate:

00000000 <at_reassociate>:
   0:	000007b7          	lui	a5,0x0
   4:	7169                	addi	sp,sp,-304
   6:	00078793          	mv	a5,a5
   a:	c23e                	sw	a5,4(sp)
   c:	000007b7          	lui	a5,0x0
  10:	0007a783          	lw	a5,0(a5) # 0 <at_reassociate>
  14:	12112623          	sw	ra,300(sp)
  18:	c789                	beqz	a5,22 <.L22>
  1a:	4601                	li	a2,0
  1c:	004c                	addi	a1,sp,4
  1e:	4541                	li	a0,16
  20:	9782                	jalr	a5

00000022 <.L22>:
  22:	12c12083          	lw	ra,300(sp)
  26:	4501                	li	a0,0
  28:	6155                	addi	sp,sp,304
  2a:	8082                	ret

Disassembly of section .text.at_scan:

00000000 <at_scan>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12112623          	sw	ra,300(sp)
   a:	12912223          	sw	s1,292(sp)
   e:	842e                	mv	s0,a1
  10:	ed0d                	bnez	a0,4a <.L28>
  12:	c991                	beqz	a1,26 <.L29>

00000014 <.L32>:
  14:	4511                	li	a0,4

00000016 <.L30>:
  16:	12c12083          	lw	ra,300(sp)
  1a:	12812403          	lw	s0,296(sp)

0000001e <.LVL19>:
  1e:	12412483          	lw	s1,292(sp)
  22:	6155                	addi	sp,sp,304
  24:	8082                	ret

00000026 <.L29>:
  26:	c602                	sw	zero,12(sp)

00000028 <.L31>:
  28:	000007b7          	lui	a5,0x0
  2c:	00078793          	mv	a5,a5
  30:	c23e                	sw	a5,4(sp)
  32:	000007b7          	lui	a5,0x0
  36:	0007a783          	lw	a5,0(a5) # 0 <at_scan>
  3a:	4501                	li	a0,0
  3c:	dfe9                	beqz	a5,16 <.L30>
  3e:	4601                	li	a2,0
  40:	004c                	addi	a1,sp,4
  42:	4551                	li	a0,20
  44:	9782                	jalr	a5

00000046 <.LVL22>:
  46:	4501                	li	a0,0
  48:	b7f9                	j	16 <.L30>

0000004a <.L28>:
  4a:	d5e9                	beqz	a1,14 <.L32>
  4c:	000005b7          	lui	a1,0x0
  50:	00058593          	mv	a1,a1
  54:	84aa                	mv	s1,a0
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.L28+0xc>

0000005e <.LVL24>:
  5e:	ed01                	bnez	a0,76 <.L33>
  60:	000005b7          	lui	a1,0x0
  64:	00058593          	mv	a1,a1
  68:	8522                	mv	a0,s0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL24+0xc>

00000072 <.LVL25>:
  72:	4785                	li	a5,1
  74:	c515                	beqz	a0,a0 <.L39>

00000076 <.L33>:
  76:	000005b7          	lui	a1,0x0
  7a:	00058593          	mv	a1,a1
  7e:	8526                	mv	a0,s1
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.L33+0xa>

00000088 <.LVL26>:
  88:	f551                	bnez	a0,14 <.L32>
  8a:	000005b7          	lui	a1,0x0
  8e:	00058593          	mv	a1,a1
  92:	8522                	mv	a0,s0
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL26+0xc>

0000009c <.LVL27>:
  9c:	fd25                	bnez	a0,14 <.L32>
  9e:	4789                	li	a5,2

000000a0 <.L39>:
  a0:	c63e                	sw	a5,12(sp)
  a2:	b759                	j	28 <.L31>
