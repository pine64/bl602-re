
hci_msg.o:     file format elf32-littleriscv


Disassembly of section .text.hci_pack_bytes:

00000000 <hci_pack_bytes>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	ca26                	sw	s1,20(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	892e                	mv	s2,a1
   e:	410c                	lw	a1,0(a0)

00000010 <.LVL1>:
  10:	4405                	li	s0,1
  12:	00e587b3          	add	a5,a1,a4
  16:	02f66d63          	bltu	a2,a5,50 <.L2>
  1a:	84ba                	mv	s1,a4
  1c:	89aa                	mv	s3,a0
  1e:	4401                	li	s0,0
  20:	ce91                	beqz	a3,3c <.L3>
  22:	00092503          	lw	a0,0(s2)

00000026 <.LVL2>:
  26:	000007b7          	lui	a5,0x0
  2a:	0007a783          	lw	a5,0(a5) # 0 <hci_pack_bytes>
  2e:	00e50433          	add	s0,a0,a4
  32:	0086b433          	sltu	s0,a3,s0
  36:	863a                	mv	a2,a4

00000038 <.LVL3>:
  38:	0406                	slli	s0,s0,0x1

0000003a <.LVL4>:
  3a:	9782                	jalr	a5

0000003c <.L3>:
  3c:	0009a783          	lw	a5,0(s3)
  40:	97a6                	add	a5,a5,s1
  42:	00f9a023          	sw	a5,0(s3)
  46:	00092703          	lw	a4,0(s2)
  4a:	94ba                	add	s1,s1,a4
  4c:	00992023          	sw	s1,0(s2)

00000050 <.L2>:
  50:	8522                	mv	a0,s0
  52:	40f2                	lw	ra,28(sp)
  54:	4462                	lw	s0,24(sp)

00000056 <.LVL7>:
  56:	44d2                	lw	s1,20(sp)
  58:	4942                	lw	s2,16(sp)

0000005a <.LVL8>:
  5a:	49b2                	lw	s3,12(sp)
  5c:	6105                	addi	sp,sp,32
  5e:	8082                	ret

Disassembly of section .text.hci_host_nb_cmp_pkts_cmd_pkupk:

00000000 <hci_host_nb_cmp_pkts_cmd_pkupk>:
   0:	7139                	addi	sp,sp,-64
   2:	de06                	sw	ra,60(sp)
   4:	dc22                	sw	s0,56(sp)
   6:	da26                	sw	s1,52(sp)
   8:	d84a                	sw	s2,48(sp)
   a:	d64e                	sw	s3,44(sp)
   c:	d452                	sw	s4,40(sp)
   e:	d256                	sw	s5,36(sp)
  10:	d05a                	sw	s6,32(sp)
  12:	ce5e                	sw	s7,28(sp)
  14:	cc62                	sw	s8,24(sp)
  16:	c42e                	sw	a1,8(sp)
  18:	c62a                	sw	a0,12(sp)

0000001a <.LVL10>:
  1a:	c1dd                	beqz	a1,c0 <.L10>
  1c:	00065b83          	lhu	s7,0(a2)
  20:	00d584b3          	add	s1,a1,a3
  24:	8b32                	mv	s6,a2
  26:	9baa                	add	s7,s7,a0

00000028 <.LBB2>:
  28:	89ae                	mv	s3,a1
  2a:	842a                	mv	s0,a0
  2c:	4705                	li	a4,1
  2e:	86de                	mv	a3,s7

00000030 <.LVL12>:
  30:	8626                	mv	a2,s1

00000032 <.LVL13>:
  32:	006c                	addi	a1,sp,12

00000034 <.LVL14>:
  34:	0028                	addi	a0,sp,8

00000036 <.LVL15>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL15>

0000003e <.LVL16>:
  3e:	8aaa                	mv	s5,a0

00000040 <.LVL17>:
  40:	e919                	bnez	a0,56 <.L11>
  42:	4781                	li	a5,0
  44:	4c39                	li	s8,14

00000046 <.L12>:
  46:	4732                	lw	a4,12(sp)
  48:	0009c683          	lbu	a3,0(s3)
  4c:	8f01                	sub	a4,a4,s0
  4e:	00d7f463          	bgeu	a5,a3,56 <.L11>
  52:	02ec7463          	bgeu	s8,a4,7a <.L13>

00000056 <.L11>:
  56:	4532                	lw	a0,12(sp)
  58:	40850433          	sub	s0,a0,s0

0000005c <.LVL20>:
  5c:	008b1023          	sh	s0,0(s6)

00000060 <.L14>:
  60:	50f2                	lw	ra,60(sp)
  62:	5462                	lw	s0,56(sp)
  64:	8556                	mv	a0,s5
  66:	54d2                	lw	s1,52(sp)
  68:	5942                	lw	s2,48(sp)
  6a:	59b2                	lw	s3,44(sp)
  6c:	5a22                	lw	s4,40(sp)
  6e:	5a92                	lw	s5,36(sp)

00000070 <.LVL22>:
  70:	5b02                	lw	s6,32(sp)
  72:	4bf2                	lw	s7,28(sp)
  74:	4c62                	lw	s8,24(sp)
  76:	6121                	addi	sp,sp,64
  78:	8082                	ret

0000007a <.L13>:
  7a:	00178913          	addi	s2,a5,1
  7e:	00191a13          	slli	s4,s2,0x1
  82:	014407b3          	add	a5,s0,s4

00000086 <.LVL24>:
  86:	4709                	li	a4,2
  88:	86de                	mv	a3,s7
  8a:	8626                	mv	a2,s1
  8c:	006c                	addi	a1,sp,12
  8e:	0028                	addi	a0,sp,8
  90:	c63e                	sw	a5,12(sp)
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL24+0xc>

0000009a <.LVL25>:
  9a:	e10d                	bnez	a0,bc <.L16>
  9c:	0a19                	addi	s4,s4,6
  9e:	9a22                	add	s4,s4,s0
  a0:	4709                	li	a4,2
  a2:	86de                	mv	a3,s7
  a4:	8626                	mv	a2,s1
  a6:	006c                	addi	a1,sp,12
  a8:	0028                	addi	a0,sp,8

000000aa <.LVL26>:
  aa:	c652                	sw	s4,12(sp)
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL26+0x2>

000000b4 <.LVL27>:
  b4:	e501                	bnez	a0,bc <.L16>
  b6:	0ff97793          	andi	a5,s2,255

000000ba <.LVL28>:
  ba:	b771                	j	46 <.L12>

000000bc <.L16>:
  bc:	8aaa                	mv	s5,a0
  be:	bf61                	j	56 <.L11>

000000c0 <.L10>:
  c0:	47b9                	li	a5,14
  c2:	00f61023          	sh	a5,0(a2)

000000c6 <.LVL31>:
  c6:	4a81                	li	s5,0
  c8:	bf61                	j	60 <.L14>

Disassembly of section .text.hci_le_adv_report_evt_pkupk:

00000000 <hci_le_adv_report_evt_pkupk>:
   0:	711d                	addi	sp,sp,-96
   2:	c2d6                	sw	s5,68(sp)
   4:	ce86                	sw	ra,92(sp)
   6:	cca2                	sw	s0,88(sp)
   8:	caa6                	sw	s1,84(sp)
   a:	c8ca                	sw	s2,80(sp)
   c:	c6ce                	sw	s3,76(sp)
   e:	c4d2                	sw	s4,72(sp)
  10:	c0da                	sw	s6,64(sp)
  12:	8ab2                	mv	s5,a2
  14:	12058363          	beqz	a1,13a <.L19>
  18:	89aa                	mv	s3,a0
  1a:	c925                	beqz	a0,8a <.L25>

0000001c <.LVL33>:
  1c:	00065483          	lhu	s1,0(a2)
  20:	94aa                	add	s1,s1,a0

00000022 <.L20>:
  22:	00d58933          	add	s2,a1,a3

00000026 <.LVL35>:
  26:	4705                	li	a4,1
  28:	86a6                	mv	a3,s1

0000002a <.LVL36>:
  2a:	864a                	mv	a2,s2

0000002c <.LVL37>:
  2c:	080c                	addi	a1,sp,16

0000002e <.LVL38>:
  2e:	0068                	addi	a0,sp,12

00000030 <.LVL39>:
  30:	c84e                	sw	s3,16(sp)
  32:	c64e                	sw	s3,12(sp)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL39+0x4>

0000003c <.LVL40>:
  3c:	842a                	mv	s0,a0

0000003e <.LVL41>:
  3e:	e515                	bnez	a0,6a <.L21>
  40:	00198793          	addi	a5,s3,1
  44:	4705                	li	a4,1
  46:	86a6                	mv	a3,s1
  48:	864a                	mv	a2,s2
  4a:	080c                	addi	a1,sp,16
  4c:	0068                	addi	a0,sp,12

0000004e <.LVL42>:
  4e:	c63e                	sw	a5,12(sp)
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL42+0x2>

00000058 <.LVL43>:
  58:	842a                	mv	s0,a0

0000005a <.LVL44>:
  5a:	e901                	bnez	a0,6a <.L21>
  5c:	00a98a13          	addi	s4,s3,10

00000060 <.LBB4>:
  60:	4b01                	li	s6,0

00000062 <.L22>:
  62:	0019c783          	lbu	a5,1(s3)
  66:	02fb4763          	blt	s6,a5,94 <.L23>

0000006a <.L21>:
  6a:	47c2                	lw	a5,16(sp)
  6c:	413789b3          	sub	s3,a5,s3

00000070 <.LVL47>:
  70:	013a9023          	sh	s3,0(s5)

00000074 <.L24>:
  74:	8522                	mv	a0,s0
  76:	40f6                	lw	ra,92(sp)
  78:	4466                	lw	s0,88(sp)

0000007a <.LVL49>:
  7a:	44d6                	lw	s1,84(sp)
  7c:	4946                	lw	s2,80(sp)
  7e:	49b6                	lw	s3,76(sp)
  80:	4a26                	lw	s4,72(sp)
  82:	4a96                	lw	s5,68(sp)

00000084 <.LVL50>:
  84:	4b06                	lw	s6,64(sp)
  86:	6125                	addi	sp,sp,96
  88:	8082                	ret

0000008a <.L25>:
  8a:	03f10493          	addi	s1,sp,63
  8e:	01410993          	addi	s3,sp,20
  92:	bf41                	j	22 <.L20>

00000094 <.L23>:
  94:	ff8a0793          	addi	a5,s4,-8
  98:	4705                	li	a4,1
  9a:	86a6                	mv	a3,s1
  9c:	864a                	mv	a2,s2
  9e:	080c                	addi	a1,sp,16
  a0:	0068                	addi	a0,sp,12
  a2:	c63e                	sw	a5,12(sp)
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L23+0x10>

000000ac <.LVL53>:
  ac:	e549                	bnez	a0,136 <.L31>
  ae:	ff9a0793          	addi	a5,s4,-7
  b2:	4705                	li	a4,1
  b4:	86a6                	mv	a3,s1
  b6:	864a                	mv	a2,s2
  b8:	080c                	addi	a1,sp,16
  ba:	0068                	addi	a0,sp,12

000000bc <.LVL54>:
  bc:	c63e                	sw	a5,12(sp)
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL54+0x2>

000000c6 <.LVL55>:
  c6:	e925                	bnez	a0,136 <.L31>
  c8:	ffaa0793          	addi	a5,s4,-6
  cc:	4719                	li	a4,6
  ce:	86a6                	mv	a3,s1
  d0:	864a                	mv	a2,s2
  d2:	080c                	addi	a1,sp,16
  d4:	0068                	addi	a0,sp,12

000000d6 <.LVL56>:
  d6:	c63e                	sw	a5,12(sp)
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.LVL56+0x2>

000000e0 <.LVL57>:
  e0:	e939                	bnez	a0,136 <.L31>
  e2:	4705                	li	a4,1
  e4:	86a6                	mv	a3,s1
  e6:	864a                	mv	a2,s2
  e8:	080c                	addi	a1,sp,16
  ea:	0068                	addi	a0,sp,12

000000ec <.LVL58>:
  ec:	c652                	sw	s4,12(sp)
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.LVL58+0x2>

000000f6 <.LVL59>:
  f6:	e121                	bnez	a0,136 <.L31>

000000f8 <.LVL60>:
  f8:	000a4703          	lbu	a4,0(s4)
  fc:	001a0793          	addi	a5,s4,1
 100:	86a6                	mv	a3,s1
 102:	864a                	mv	a2,s2
 104:	080c                	addi	a1,sp,16
 106:	0068                	addi	a0,sp,12

00000108 <.LVL61>:
 108:	c63e                	sw	a5,12(sp)
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL61+0x2>

00000112 <.LVL62>:
 112:	e115                	bnez	a0,136 <.L31>
 114:	020a0793          	addi	a5,s4,32
 118:	4705                	li	a4,1
 11a:	86a6                	mv	a3,s1
 11c:	864a                	mv	a2,s2
 11e:	080c                	addi	a1,sp,16
 120:	0068                	addi	a0,sp,12

00000122 <.LVL63>:
 122:	c63e                	sw	a5,12(sp)
 124:	00000097          	auipc	ra,0x0
 128:	000080e7          	jalr	ra # 124 <.LVL63+0x2>

0000012c <.LVL64>:
 12c:	029a0a13          	addi	s4,s4,41
 130:	e119                	bnez	a0,136 <.L31>

00000132 <.LBE5>:
 132:	0b05                	addi	s6,s6,1
 134:	b73d                	j	62 <.L22>

00000136 <.L31>:
 136:	842a                	mv	s0,a0
 138:	bf0d                	j	6a <.L21>

0000013a <.L19>:
 13a:	00061023          	sh	zero,0(a2)
 13e:	4401                	li	s0,0
 140:	bf15                	j	74 <.L24>

Disassembly of section .text.hci_le_dir_adv_report_evt_pkupk:

00000000 <hci_le_dir_adv_report_evt_pkupk>:
   0:	7139                	addi	sp,sp,-64
   2:	d256                	sw	s5,36(sp)
   4:	de06                	sw	ra,60(sp)
   6:	dc22                	sw	s0,56(sp)
   8:	da26                	sw	s1,52(sp)
   a:	d84a                	sw	s2,48(sp)
   c:	d64e                	sw	s3,44(sp)
   e:	d452                	sw	s4,40(sp)
  10:	d05a                	sw	s6,32(sp)
  12:	8ab2                	mv	s5,a2
  14:	12058163          	beqz	a1,136 <.L34>
  18:	89aa                	mv	s3,a0
  1a:	c925                	beqz	a0,8a <.L40>

0000001c <.LVL68>:
  1c:	00065483          	lhu	s1,0(a2)
  20:	94aa                	add	s1,s1,a0

00000022 <.L35>:
  22:	00d58933          	add	s2,a1,a3

00000026 <.LVL70>:
  26:	4705                	li	a4,1
  28:	86a6                	mv	a3,s1

0000002a <.LVL71>:
  2a:	864a                	mv	a2,s2

0000002c <.LVL72>:
  2c:	002c                	addi	a1,sp,8

0000002e <.LVL73>:
  2e:	0048                	addi	a0,sp,4

00000030 <.LVL74>:
  30:	c44e                	sw	s3,8(sp)
  32:	c24e                	sw	s3,4(sp)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL74+0x4>

0000003c <.LVL75>:
  3c:	842a                	mv	s0,a0

0000003e <.LVL76>:
  3e:	e515                	bnez	a0,6a <.L36>
  40:	00198793          	addi	a5,s3,1
  44:	4705                	li	a4,1
  46:	86a6                	mv	a3,s1
  48:	864a                	mv	a2,s2
  4a:	002c                	addi	a1,sp,8
  4c:	0048                	addi	a0,sp,4

0000004e <.LVL77>:
  4e:	c23e                	sw	a5,4(sp)
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL77+0x2>

00000058 <.LVL78>:
  58:	842a                	mv	s0,a0

0000005a <.LVL79>:
  5a:	e901                	bnez	a0,6a <.L36>
  5c:	01198a13          	addi	s4,s3,17

00000060 <.LBB8>:
  60:	4b01                	li	s6,0

00000062 <.L37>:
  62:	0019c783          	lbu	a5,1(s3)
  66:	02fb4763          	blt	s6,a5,94 <.L38>

0000006a <.L36>:
  6a:	47a2                	lw	a5,8(sp)
  6c:	413789b3          	sub	s3,a5,s3

00000070 <.LVL82>:
  70:	013a9023          	sh	s3,0(s5)

00000074 <.L39>:
  74:	8522                	mv	a0,s0
  76:	50f2                	lw	ra,60(sp)
  78:	5462                	lw	s0,56(sp)

0000007a <.LVL84>:
  7a:	54d2                	lw	s1,52(sp)
  7c:	5942                	lw	s2,48(sp)
  7e:	59b2                	lw	s3,44(sp)
  80:	5a22                	lw	s4,40(sp)
  82:	5a92                	lw	s5,36(sp)

00000084 <.LVL85>:
  84:	5b02                	lw	s6,32(sp)
  86:	6121                	addi	sp,sp,64
  88:	8082                	ret

0000008a <.L40>:
  8a:	01e10493          	addi	s1,sp,30
  8e:	00c10993          	addi	s3,sp,12
  92:	bf41                	j	22 <.L35>

00000094 <.L38>:
  94:	ff1a0793          	addi	a5,s4,-15
  98:	4705                	li	a4,1
  9a:	86a6                	mv	a3,s1
  9c:	864a                	mv	a2,s2
  9e:	002c                	addi	a1,sp,8
  a0:	0048                	addi	a0,sp,4
  a2:	c23e                	sw	a5,4(sp)
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L38+0x10>

000000ac <.LVL88>:
  ac:	e159                	bnez	a0,132 <.L46>
  ae:	ff2a0793          	addi	a5,s4,-14
  b2:	4705                	li	a4,1
  b4:	86a6                	mv	a3,s1
  b6:	864a                	mv	a2,s2
  b8:	002c                	addi	a1,sp,8
  ba:	0048                	addi	a0,sp,4

000000bc <.LVL89>:
  bc:	c23e                	sw	a5,4(sp)
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.LVL89+0x2>

000000c6 <.LVL90>:
  c6:	e535                	bnez	a0,132 <.L46>
  c8:	ff3a0793          	addi	a5,s4,-13
  cc:	4719                	li	a4,6
  ce:	86a6                	mv	a3,s1
  d0:	864a                	mv	a2,s2
  d2:	002c                	addi	a1,sp,8
  d4:	0048                	addi	a0,sp,4

000000d6 <.LVL91>:
  d6:	c23e                	sw	a5,4(sp)
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.LVL91+0x2>

000000e0 <.LVL92>:
  e0:	e929                	bnez	a0,132 <.L46>
  e2:	ff9a0793          	addi	a5,s4,-7
  e6:	4705                	li	a4,1
  e8:	86a6                	mv	a3,s1
  ea:	864a                	mv	a2,s2
  ec:	002c                	addi	a1,sp,8
  ee:	0048                	addi	a0,sp,4

000000f0 <.LVL93>:
  f0:	c23e                	sw	a5,4(sp)
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL93+0x2>

000000fa <.LVL94>:
  fa:	ed05                	bnez	a0,132 <.L46>
  fc:	ffaa0793          	addi	a5,s4,-6
 100:	4719                	li	a4,6
 102:	86a6                	mv	a3,s1
 104:	864a                	mv	a2,s2
 106:	002c                	addi	a1,sp,8
 108:	0048                	addi	a0,sp,4

0000010a <.LVL95>:
 10a:	c23e                	sw	a5,4(sp)
 10c:	00000097          	auipc	ra,0x0
 110:	000080e7          	jalr	ra # 10c <.LVL95+0x2>

00000114 <.LVL96>:
 114:	ed19                	bnez	a0,132 <.L46>
 116:	4705                	li	a4,1
 118:	86a6                	mv	a3,s1
 11a:	864a                	mv	a2,s2
 11c:	002c                	addi	a1,sp,8
 11e:	0048                	addi	a0,sp,4

00000120 <.LVL97>:
 120:	c252                	sw	s4,4(sp)
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.LVL97+0x2>

0000012a <.LVL98>:
 12a:	0a41                	addi	s4,s4,16
 12c:	e119                	bnez	a0,132 <.L46>
 12e:	0b05                	addi	s6,s6,1
 130:	bf0d                	j	62 <.L37>

00000132 <.L46>:
 132:	842a                	mv	s0,a0
 134:	bf1d                	j	6a <.L36>

00000136 <.L34>:
 136:	00061023          	sh	zero,0(a2)
 13a:	4401                	li	s0,0
 13c:	bf25                	j	74 <.L39>

Disassembly of section .text.hci_look_for_cmd_desc:

00000000 <hci_look_for_cmd_desc>:
   0:	00a55793          	srli	a5,a0,0xa
   4:	4705                	li	a4,1
   6:	3ff57613          	andi	a2,a0,1023

0000000a <.LVL102>:
   a:	04e78063          	beq	a5,a4,4a <.L53>

0000000e <.LVL103>:
   e:	470d                	li	a4,3
  10:	02e78f63          	beq	a5,a4,4e <.L54>

00000014 <.LVL104>:
  14:	4711                	li	a4,4
  16:	02e78e63          	beq	a5,a4,52 <.L55>

0000001a <.LVL105>:
  1a:	4715                	li	a4,5
  1c:	02e78d63          	beq	a5,a4,56 <.L56>

00000020 <.LVL106>:
  20:	4721                	li	a4,8
  22:	02e78c63          	beq	a5,a4,5a <.L57>

00000026 <.LVL107>:
  26:	03f00713          	li	a4,63
  2a:	4501                	li	a0,0

0000002c <.LVL108>:
  2c:	04e79663          	bne	a5,a4,78 <.L48>
  30:	4795                	li	a5,5

00000032 <.L49>:
  32:	00000737          	lui	a4,0x0
  36:	078e                	slli	a5,a5,0x3
  38:	00070713          	mv	a4,a4
  3c:	97ba                	add	a5,a5,a4
  3e:	43c8                	lw	a0,4(a5)

00000040 <.LVL110>:
  40:	0027d683          	lhu	a3,2(a5)

00000044 <.LVL111>:
  44:	4781                	li	a5,0
  46:	e515                	bnez	a0,72 <.L51>
  48:	8082                	ret

0000004a <.L53>:
  4a:	4781                	li	a5,0

0000004c <.LVL113>:
  4c:	b7dd                	j	32 <.L49>

0000004e <.L54>:
  4e:	4785                	li	a5,1

00000050 <.LVL115>:
  50:	b7cd                	j	32 <.L49>

00000052 <.L55>:
  52:	4789                	li	a5,2

00000054 <.LVL117>:
  54:	bff9                	j	32 <.L49>

00000056 <.L56>:
  56:	478d                	li	a5,3

00000058 <.LVL119>:
  58:	bfe9                	j	32 <.L49>

0000005a <.L57>:
  5a:	4791                	li	a5,4

0000005c <.LVL121>:
  5c:	bfd9                	j	32 <.L49>

0000005e <.L52>:
  5e:	00055703          	lhu	a4,0(a0)
  62:	3ff77713          	andi	a4,a4,1023
  66:	00c70963          	beq	a4,a2,78 <.L48>
  6a:	0785                	addi	a5,a5,1

0000006c <.LVL123>:
  6c:	07c2                	slli	a5,a5,0x10
  6e:	0531                	addi	a0,a0,12
  70:	83c1                	srli	a5,a5,0x10

00000072 <.L51>:
  72:	fed796e3          	bne	a5,a3,5e <.L52>
  76:	4501                	li	a0,0

00000078 <.L48>:
  78:	8082                	ret

Disassembly of section .text.hci_look_for_evt_desc:

00000000 <hci_look_for_evt_desc>:
   0:	000007b7          	lui	a5,0x0
   4:	00078693          	mv	a3,a5
   8:	4701                	li	a4,0
   a:	00078793          	mv	a5,a5
   e:	4625                	li	a2,9

00000010 <.L64>:
  10:	0006c583          	lbu	a1,0(a3)
  14:	00a59663          	bne	a1,a0,20 <.L62>
  18:	00371513          	slli	a0,a4,0x3

0000001c <.LVL129>:
  1c:	953e                	add	a0,a0,a5

0000001e <.LVL130>:
  1e:	8082                	ret

00000020 <.L62>:
  20:	0705                	addi	a4,a4,1

00000022 <.LVL132>:
  22:	06a1                	addi	a3,a3,8
  24:	fec716e3          	bne	a4,a2,10 <.L64>
  28:	4501                	li	a0,0

0000002a <.LVL133>:
  2a:	8082                	ret

Disassembly of section .text.hci_look_for_le_evt_desc:

00000000 <hci_look_for_le_evt_desc>:
   0:	000007b7          	lui	a5,0x0
   4:	00078693          	mv	a3,a5
   8:	4701                	li	a4,0
   a:	00078793          	mv	a5,a5
   e:	4631                	li	a2,12

00000010 <.L69>:
  10:	0006c583          	lbu	a1,0(a3)
  14:	00a59663          	bne	a1,a0,20 <.L67>
  18:	00371513          	slli	a0,a4,0x3

0000001c <.LVL136>:
  1c:	953e                	add	a0,a0,a5

0000001e <.LVL137>:
  1e:	8082                	ret

00000020 <.L67>:
  20:	0705                	addi	a4,a4,1

00000022 <.LVL139>:
  22:	06a1                	addi	a3,a3,8
  24:	fec716e3          	bne	a4,a2,10 <.L69>
  28:	4501                	li	a0,0

0000002a <.LVL140>:
  2a:	8082                	ret
