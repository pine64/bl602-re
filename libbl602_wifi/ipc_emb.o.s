
ipc_emb.o:     file format elf32-littleriscv


Disassembly of section .text.ipc_emb_notify:

00000000 <ipc_emb_notify>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a703          	lw	a4,0(a5) # 0 <ipc_emb_notify>
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ce06                	sw	ra,28(sp)
   e:	00078413          	mv	s0,a5
  12:	ef19                	bnez	a4,30 <.L2>
  14:	000005b7          	lui	a1,0x0
  18:	00000537          	lui	a0,0x0
  1c:	09300613          	li	a2,147
  20:	00058593          	mv	a1,a1
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <ipc_emb_notify+0x28>

00000030 <.L2>:
  30:	000007b7          	lui	a5,0x0

00000034 <.LBE75>:
  34:	0007a783          	lw	a5,0(a5) # 0 <ipc_emb_notify>
  38:	4008                	lw	a0,0(s0)
  3a:	c385                	beqz	a5,5a <.L3>

0000003c <.LBB77>:
  3c:	006c                	addi	a1,sp,12
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LBB77+0x2>

00000046 <.LVL1>:
  46:	47b2                	lw	a5,12(sp)
  48:	c789                	beqz	a5,52 <.L1>
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL1+0x4>

00000052 <.L1>:
  52:	40f2                	lw	ra,28(sp)
  54:	4462                	lw	s0,24(sp)
  56:	6105                	addi	sp,sp,32
  58:	8082                	ret

0000005a <.L3>:
  5a:	4681                	li	a3,0
  5c:	4609                	li	a2,2
  5e:	4581                	li	a1,0
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.L3+0x6>

00000068 <.LVL3>:
  68:	b7ed                	j	52 <.L1>

Disassembly of section .text.ipc_emb_wait:

00000000 <ipc_emb_wait>:
   0:	1141                	addi	sp,sp,-16
   2:	55fd                	li	a1,-1
   4:	4505                	li	a0,1
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <ipc_emb_wait+0x8>

00000010 <.LVL5>:
  10:	00000737          	lui	a4,0x0
  14:	00072783          	lw	a5,0(a4) # 0 <ipc_emb_wait>
  18:	40b2                	lw	ra,12(sp)
  1a:	0785                	addi	a5,a5,1
  1c:	00f72023          	sw	a5,0(a4)
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret

Disassembly of section .text.ipc_emb_init:

00000000 <ipc_emb_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	00000097          	auipc	ra,0x0
   a:	000080e7          	jalr	ra # 6 <ipc_emb_init+0x6>

0000000e <.LVL6>:
   e:	000007b7          	lui	a5,0x0
  12:	00000437          	lui	s0,0x0
  16:	00a7a023          	sw	a0,0(a5) # 0 <ipc_emb_init>
  1a:	02000613          	li	a2,32
  1e:	00040513          	mv	a0,s0
  22:	4581                	li	a1,0
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL6+0x16>

0000002c <.LVL7>:
  2c:	000007b7          	lui	a5,0x0
  30:	20478793          	addi	a5,a5,516 # 204 <.LASF289+0x4>
  34:	00040413          	mv	s0,s0
  38:	cc5c                	sw	a5,28(s0)

0000003a <.LBB106>:
  3a:	448007b7          	lui	a5,0x44800
  3e:	1407a703          	lw	a4,320(a5) # 44800140 <.LASF565+0x447fddae>

00000042 <.LBE106>:
  42:	495047b7          	lui	a5,0x49504
  46:	33278793          	addi	a5,a5,818 # 49504332 <.LASF565+0x49501fa0>
  4a:	02f70063          	beq	a4,a5,6a <.L13>
  4e:	000005b7          	lui	a1,0x0
  52:	00000537          	lui	a0,0x0
  56:	0bb00613          	li	a2,187
  5a:	00058593          	mv	a1,a1
  5e:	00050513          	mv	a0,a0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LBE106+0x20>

0000006a <.L13>:
  6a:	448007b7          	lui	a5,0x44800
  6e:	1007aa23          	sw	zero,276(a5) # 44800114 <.LASF565+0x447fdd82>

00000072 <.LBB110>:
  72:	1007ac23          	sw	zero,280(a5)

00000076 <.LBB112>:
  76:	1147a703          	lw	a4,276(a5)

0000007a <.LBB115>:
  7a:	76fd                	lui	a3,0xfffff
  7c:	3ff68693          	addi	a3,a3,1023 # fffff3ff <.LASF565+0xffffd06d>

00000080 <.LBB118>:
  80:	9b71                	andi	a4,a4,-4
  82:	10e7aa23          	sw	a4,276(a5)

00000086 <.LBB119>:
  86:	1147a703          	lw	a4,276(a5)

0000008a <.LBB122>:
  8a:	fffd0637          	lui	a2,0xfffd0
  8e:	167d                	addi	a2,a2,-1

00000090 <.LBB126>:
  90:	9b4d                	andi	a4,a4,-13
  92:	00476713          	ori	a4,a4,4
  96:	10e7aa23          	sw	a4,276(a5)

0000009a <.LBB127>:
  9a:	1147a703          	lw	a4,276(a5)
  9e:	cff77713          	andi	a4,a4,-769
  a2:	20076713          	ori	a4,a4,512
  a6:	10e7aa23          	sw	a4,276(a5)

000000aa <.LBB129>:
  aa:	1147a703          	lw	a4,276(a5)
  ae:	8f75                	and	a4,a4,a3
  b0:	6685                	lui	a3,0x1
  b2:	80068693          	addi	a3,a3,-2048 # 800 <.LASF693+0x6>
  b6:	8f55                	or	a4,a4,a3
  b8:	10e7aa23          	sw	a4,276(a5)

000000bc <.LBB130>:
  bc:	1147a703          	lw	a4,276(a5)
  c0:	76f5                	lui	a3,0xffffd
  c2:	16fd                	addi	a3,a3,-1
  c4:	8f75                	and	a4,a4,a3
  c6:	6689                	lui	a3,0x2
  c8:	8f55                	or	a4,a4,a3
  ca:	10e7aa23          	sw	a4,276(a5)

000000ce <.LBB132>:
  ce:	1147a703          	lw	a4,276(a5)

000000d2 <.LBB133>:
  d2:	f0368693          	addi	a3,a3,-253 # 1f03 <.LASF201+0x8>

000000d6 <.LBB136>:
  d6:	8f71                	and	a4,a4,a2
  d8:	00030637          	lui	a2,0x30
  dc:	8f51                	or	a4,a4,a2
  de:	10e7aa23          	sw	a4,276(a5)

000000e2 <.LBB137>:
  e2:	1147a703          	lw	a4,276(a5)
  e6:	fff40637          	lui	a2,0xfff40
  ea:	167d                	addi	a2,a2,-1
  ec:	8f71                	and	a4,a4,a2
  ee:	000c0637          	lui	a2,0xc0
  f2:	8f51                	or	a4,a4,a2
  f4:	10e7aa23          	sw	a4,276(a5)

000000f8 <.LBB139>:
  f8:	1147a703          	lw	a4,276(a5)
  fc:	ffd00637          	lui	a2,0xffd00
 100:	167d                	addi	a2,a2,-1
 102:	8f71                	and	a4,a4,a2
 104:	00300637          	lui	a2,0x300
 108:	8f51                	or	a4,a4,a2
 10a:	10e7aa23          	sw	a4,276(a5)

0000010e <.LBB141>:
 10e:	1147a703          	lw	a4,276(a5)
 112:	ff400637          	lui	a2,0xff400
 116:	167d                	addi	a2,a2,-1
 118:	8f71                	and	a4,a4,a2
 11a:	00c00637          	lui	a2,0xc00
 11e:	8f51                	or	a4,a4,a2
 120:	10e7aa23          	sw	a4,276(a5)

00000124 <.LBB143>:
 124:	1147a703          	lw	a4,276(a5)
 128:	fd000637          	lui	a2,0xfd000
 12c:	167d                	addi	a2,a2,-1
 12e:	8f71                	and	a4,a4,a2
 130:	03000637          	lui	a2,0x3000
 134:	8f51                	or	a4,a4,a2
 136:	10e7aa23          	sw	a4,276(a5)

0000013a <.LBB145>:
 13a:	10d7a623          	sw	a3,268(a5)

0000013e <.LBE145>:
 13e:	40b2                	lw	ra,12(sp)
 140:	4422                	lw	s0,8(sp)
 142:	0141                	addi	sp,sp,16
 144:	8082                	ret

Disassembly of section .text.ipc_emb_tx_flow_off:

00000000 <ipc_emb_tx_flow_off>:
   0:	6789                	lui	a5,0x2
   2:	44800737          	lui	a4,0x44800
   6:	f0078793          	addi	a5,a5,-256 # 1f00 <.LASF201+0x5>

0000000a <.LBE146>:
   a:	6505                	lui	a0,0x1

0000000c <.LBB149>:
   c:	10f72823          	sw	a5,272(a4) # 44800110 <.LASF565+0x447fdd7e>

00000010 <.LBE149>:
  10:	f8050513          	addi	a0,a0,-128 # f80 <.LASF332+0x5>
  14:	00000317          	auipc	t1,0x0
  18:	00030067          	jr	t1 # 14 <.LBE149+0x4>

Disassembly of section .text.ipc_emb_tx_flow_on:

00000000 <ipc_emb_tx_flow_on>:
   0:	6789                	lui	a5,0x2
   2:	44800737          	lui	a4,0x44800
   6:	f0078793          	addi	a5,a5,-256 # 1f00 <.LASF201+0x5>
   a:	10f72623          	sw	a5,268(a4) # 4480010c <.LASF565+0x447fdd7a>

0000000e <.LBE150>:
   e:	8082                	ret

Disassembly of section .text.ipc_emb_tx_irq:

00000000 <ipc_emb_tx_irq>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)

00000008 <.LBB155>:
   8:	448004b7          	lui	s1,0x44800
   c:	11c4a403          	lw	s0,284(s1) # 4480011c <.LASF565+0x447fdd8a>

00000010 <.LBE155>:
  10:	6789                	lui	a5,0x2
  12:	f0078793          	addi	a5,a5,-256 # 1f00 <.LASF201+0x5>
  16:	8c7d                	and	s0,s0,a5

00000018 <.LVL27>:
  18:	c819                	beqz	s0,2e <.L17>

0000001a <.LBB156>:
  1a:	00145513          	srli	a0,s0,0x1
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LBB156+0x4>

00000026 <.LBB158>:
  26:	1084a823          	sw	s0,272(s1)

0000002a <.LBB160>:
  2a:	1084a423          	sw	s0,264(s1)

0000002e <.L17>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL32>:
  32:	4492                	lw	s1,4(sp)
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.ipc_emb_tx_evt:

00000000 <ipc_emb_tx_evt>:
   0:	000007b7          	lui	a5,0x0
   4:	050a                	slli	a0,a0,0x2

00000006 <.LVL34>:
   6:	00078793          	mv	a5,a5
   a:	7179                	addi	sp,sp,-48
   c:	97aa                	add	a5,a5,a0
   e:	d04a                	sw	s2,32(sp)
  10:	0007a903          	lw	s2,0(a5) # 0 <ipc_emb_tx_evt>

00000014 <.LVL35>:
  14:	d422                	sw	s0,40(sp)
  16:	d226                	sw	s1,36(sp)
  18:	854a                	mv	a0,s2
  1a:	ce4e                	sw	s3,28(sp)
  1c:	cc52                	sw	s4,24(sp)
  1e:	ca56                	sw	s5,20(sp)
  20:	c85a                	sw	s6,16(sp)
  22:	c65e                	sw	s7,12(sp)
  24:	c462                	sw	s8,8(sp)
  26:	d606                	sw	ra,44(sp)

00000028 <.LBB173>:
  28:	00000c37          	lui	s8,0x0

0000002c <.LBE173>:
  2c:	c266                	sw	s9,4(sp)
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LBE173+0x2>

00000036 <.LBB192>:
  36:	000c0793          	mv	a5,s8
  3a:	4f80                	lw	s0,24(a5)
  3c:	01c7aa03          	lw	s4,28(a5)

00000040 <.LVL37>:
  40:	33000793          	li	a5,816
  44:	880d                	andi	s0,s0,3
  46:	02f40433          	mul	s0,s0,a5

0000004a <.LBB174>:
  4a:	6485                	lui	s1,0x1
  4c:	80048493          	addi	s1,s1,-2048 # 800 <.LASF693+0x6>
  50:	004419b7          	lui	s3,0x441
  54:	000c0c13          	mv	s8,s8

00000058 <.LBE174>:
  58:	5afd                	li	s5,-1

0000005a <.LBB188>:
  5a:	009974b3          	and	s1,s2,s1

0000005e <.LBB175>:
  5e:	00000b37          	lui	s6,0x0

00000062 <.LBE175>:
  62:	80098993          	addi	s3,s3,-2048 # 440800 <.LASF565+0x43e46e>

00000066 <.LBB178>:
  66:	44800bb7          	lui	s7,0x44800

0000006a <.LBE178>:
  6a:	9452                	add	s0,s0,s4

0000006c <.L24>:
  6c:	401c                	lw	a5,0(s0)
  6e:	03578563          	beq	a5,s5,98 <.L27>

00000072 <.LBB193>:
  72:	448007b7          	lui	a5,0x44800
  76:	10000713          	li	a4,256
  7a:	10e7a623          	sw	a4,268(a5) # 4480010c <.LASF565+0x447fdd7a>

0000007e <.LBE193>:
  7e:	50b2                	lw	ra,44(sp)
  80:	5422                	lw	s0,40(sp)

00000082 <.LVL40>:
  82:	5492                	lw	s1,36(sp)
  84:	5902                	lw	s2,32(sp)

00000086 <.LVL41>:
  86:	49f2                	lw	s3,28(sp)
  88:	4a62                	lw	s4,24(sp)

0000008a <.LVL42>:
  8a:	4ad2                	lw	s5,20(sp)
  8c:	4b42                	lw	s6,16(sp)
  8e:	4bb2                	lw	s7,12(sp)
  90:	4c22                	lw	s8,8(sp)
  92:	4c92                	lw	s9,4(sp)
  94:	6145                	addi	sp,sp,48
  96:	8082                	ret

00000098 <.L27>:
  98:	e885                	bnez	s1,c8 <.L25>

0000009a <.LBB182>:
  9a:	000b0793          	mv	a5,s6
  9e:	439c                	lw	a5,0(a5)

000000a0 <.LBE182>:
  a0:	0137f7b3          	and	a5,a5,s3
  a4:	c395                	beqz	a5,c8 <.L25>

000000a6 <.LBE189>:
  a6:	5422                	lw	s0,40(sp)

000000a8 <.LVL44>:
  a8:	50b2                	lw	ra,44(sp)
  aa:	5492                	lw	s1,36(sp)
  ac:	49f2                	lw	s3,28(sp)
  ae:	4a62                	lw	s4,24(sp)

000000b0 <.LVL45>:
  b0:	4ad2                	lw	s5,20(sp)
  b2:	4b42                	lw	s6,16(sp)
  b4:	4bb2                	lw	s7,12(sp)
  b6:	4c22                	lw	s8,8(sp)
  b8:	4c92                	lw	s9,4(sp)

000000ba <.LBB190>:
  ba:	854a                	mv	a0,s2

000000bc <.LBE190>:
  bc:	5902                	lw	s2,32(sp)

000000be <.LVL46>:
  be:	6145                	addi	sp,sp,48

000000c0 <.LBB191>:
  c0:	00000317          	auipc	t1,0x0
  c4:	00030067          	jr	t1 # c0 <.LBB191>

000000c8 <.L25>:
  c8:	10000793          	li	a5,256

000000cc <.LBE183>:
  cc:	05440c93          	addi	s9,s0,84 # 54 <.LBB174+0xa>

000000d0 <.LBB184>:
  d0:	10fba423          	sw	a5,264(s7) # 44800108 <.LASF565+0x447fdd76>

000000d4 <.LBE184>:
  d4:	2cc00613          	li	a2,716
  d8:	4581                	li	a1,0
  da:	8566                	mv	a0,s9
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.LBE184+0x8>

000000e4 <.LVL49>:
  e4:	10c40793          	addi	a5,s0,268
  e8:	0cf42223          	sw	a5,196(s0)
  ec:	0c440793          	addi	a5,s0,196

000000f0 <.LVL50>:
  f0:	0cf42023          	sw	a5,192(s0)

000000f4 <.LBB185>:
  f4:	00440793          	addi	a5,s0,4

000000f8 <.L26>:
  f8:	4398                	lw	a4,0(a5)
  fa:	0791                	addi	a5,a5,4
  fc:	cbb8                	sw	a4,80(a5)
  fe:	fefc9de3          	bne	s9,a5,f8 <.L26>

00000102 <.LBE185>:
 102:	0c042783          	lw	a5,192(s0)
 106:	0a042c23          	sw	zero,184(s0)
 10a:	4581                	li	a1,0
 10c:	439c                	lw	a5,0(a5)
 10e:	8566                	mv	a0,s9
 110:	0007a823          	sw	zero,16(a5)
 114:	0e042823          	sw	zero,240(s0)
 118:	0e042a23          	sw	zero,244(s0)
 11c:	0e042c23          	sw	zero,248(s0)
 120:	0a042423          	sw	zero,168(s0)
 124:	00000097          	auipc	ra,0x0
 128:	000080e7          	jalr	ra # 124 <.LBE185+0x22>

0000012c <.LVL54>:
 12c:	4785                	li	a5,1
 12e:	c01c                	sw	a5,0(s0)
 130:	018c2403          	lw	s0,24(s8) # 18 <.LVL35+0x4>

00000134 <.LVL55>:
 134:	33000793          	li	a5,816
 138:	0405                	addi	s0,s0,1
 13a:	008c2c23          	sw	s0,24(s8)
 13e:	880d                	andi	s0,s0,3
 140:	02f40433          	mul	s0,s0,a5
 144:	9452                	add	s0,s0,s4

00000146 <.LVL56>:
 146:	b71d                	j	6c <.L24>

Disassembly of section .text.ipc_emb_cfmback_irq:

00000000 <ipc_emb_cfmback_irq>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB201>:
   6:	448007b7          	lui	a5,0x44800
   a:	11c7a403          	lw	s0,284(a5) # 4480011c <.LASF565+0x447fdd8a>

0000000e <.LBE201>:
   e:	02047713          	andi	a4,s0,32
  12:	cf09                	beqz	a4,2c <.L34>

00000014 <.LBB202>:
  14:	02000713          	li	a4,32
  18:	10e7a823          	sw	a4,272(a5)

0000001c <.LBB204>:
  1c:	10e7a423          	sw	a4,264(a5)

00000020 <.LBE204>:
  20:	00040537          	lui	a0,0x40
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LBE204+0x4>

0000002c <.L34>:
  2c:	8841                	andi	s0,s0,16

0000002e <.LVL62>:
  2e:	c00d                	beqz	s0,50 <.L33>

00000030 <.LBB206>:
  30:	448007b7          	lui	a5,0x44800
  34:	4741                	li	a4,16
  36:	10e7a823          	sw	a4,272(a5) # 44800110 <.LASF565+0x447fdd7e>

0000003a <.LBB208>:
  3a:	10e7a423          	sw	a4,264(a5)

0000003e <.LBE208>:
  3e:	4422                	lw	s0,8(sp)
  40:	40b2                	lw	ra,12(sp)
  42:	00080537          	lui	a0,0x80
  46:	0141                	addi	sp,sp,16
  48:	00000317          	auipc	t1,0x0
  4c:	00030067          	jr	t1 # 48 <.LBE208+0xa>

00000050 <.L33>:
  50:	40b2                	lw	ra,12(sp)
  52:	4422                	lw	s0,8(sp)
  54:	0141                	addi	sp,sp,16
  56:	8082                	ret

Disassembly of section .text.ipc_emb_hostrxdesc_check:

00000000 <ipc_emb_hostrxdesc_check>:
   0:	4505                	li	a0,1
   2:	8082                	ret

Disassembly of section .text.ipc_emb_radar_event_ind:

00000000 <ipc_emb_radar_event_ind>:
   0:	448007b7          	lui	a5,0x44800
   4:	04000713          	li	a4,64
   8:	10e7a023          	sw	a4,256(a5) # 44800100 <.LASF565+0x447fdd6e>

0000000c <.LBE210>:
   c:	8082                	ret

Disassembly of section .text.ipc_emb_txcfm_ind:

00000000 <ipc_emb_txcfm_ind>:
   0:	051e                	slli	a0,a0,0x7

00000002 <.LBB212>:
   2:	448007b7          	lui	a5,0x44800
   6:	10a7a023          	sw	a0,256(a5) # 44800100 <.LASF565+0x447fdd6e>

0000000a <.LBE212>:
   a:	8082                	ret

Disassembly of section .text.ipc_emb_prim_tbtt_ind:

00000000 <ipc_emb_prim_tbtt_ind>:
   0:	448007b7          	lui	a5,0x44800
   4:	4741                	li	a4,16
   6:	10e7a023          	sw	a4,256(a5) # 44800100 <.LASF565+0x447fdd6e>

0000000a <.LBE214>:
   a:	8082                	ret

Disassembly of section .text.ipc_emb_sec_tbtt_ind:

00000000 <ipc_emb_sec_tbtt_ind>:
   0:	448007b7          	lui	a5,0x44800
   4:	02000713          	li	a4,32
   8:	10e7a023          	sw	a4,256(a5) # 44800100 <.LASF565+0x447fdd6e>

0000000c <.LBE216>:
   c:	8082                	ret

Disassembly of section .text.ipc_emb_msg_irq:

00000000 <ipc_emb_msg_irq>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB221>:
   6:	44800437          	lui	s0,0x44800
   a:	11c42783          	lw	a5,284(s0) # 4480011c <.LASF565+0x447fdd8a>

0000000e <.LBE221>:
   e:	8b89                	andi	a5,a5,2
  10:	cb91                	beqz	a5,24 <.L45>
  12:	02000537          	lui	a0,0x2000
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LBE221+0x8>

0000001e <.LBB222>:
  1e:	4789                	li	a5,2
  20:	10f42823          	sw	a5,272(s0)

00000024 <.L45>:
  24:	40b2                	lw	ra,12(sp)
  26:	4422                	lw	s0,8(sp)
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

Disassembly of section .text.ipc_emb_msg_evt:

00000000 <ipc_emb_msg_evt>:
   0:	7179                	addi	sp,sp,-48
   2:	d226                	sw	s1,36(sp)
   4:	d04a                	sw	s2,32(sp)
   6:	ce4e                	sw	s3,28(sp)
   8:	cc52                	sw	s4,24(sp)
   a:	ca56                	sw	s5,20(sp)
   c:	c85a                	sw	s6,16(sp)
   e:	d606                	sw	ra,44(sp)
  10:	d422                	sw	s0,40(sp)
  12:	c65e                	sw	s7,12(sp)

00000014 <.LBB243>:
  14:	448007b7          	lui	a5,0x44800
  18:	1047a783          	lw	a5,260(a5) # 44800104 <.LASF565+0x447fdd72>

0000001c <.LBB244>:
  1c:	000004b7          	lui	s1,0x0
  20:	00000937          	lui	s2,0x0
  24:	00048493          	mv	s1,s1
  28:	000009b7          	lui	s3,0x0
  2c:	00000a37          	lui	s4,0x0
  30:	00090913          	mv	s2,s2
  34:	00000ab7          	lui	s5,0x0

00000038 <.LBB246>:
  38:	00000b37          	lui	s6,0x0

0000003c <.L52>:
  3c:	8b89                	andi	a5,a5,2

0000003e <.LVL81>:
  3e:	e79d                	bnez	a5,6c <.L59>
  40:	02000537          	lui	a0,0x2000
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL81+0x6>

0000004c <.LBB257>:
  4c:	448007b7          	lui	a5,0x44800
  50:	4709                	li	a4,2
  52:	10e7a623          	sw	a4,268(a5) # 4480010c <.LASF565+0x447fdd7a>

00000056 <.LBE257>:
  56:	50b2                	lw	ra,44(sp)
  58:	5422                	lw	s0,40(sp)
  5a:	5492                	lw	s1,36(sp)
  5c:	5902                	lw	s2,32(sp)
  5e:	49f2                	lw	s3,28(sp)
  60:	4a62                	lw	s4,24(sp)
  62:	4ad2                	lw	s5,20(sp)
  64:	4b42                	lw	s6,16(sp)
  66:	4bb2                	lw	s7,12(sp)
  68:	6145                	addi	sp,sp,48
  6a:	8082                	ret

0000006c <.L59>:
  6c:	448007b7          	lui	a5,0x44800
  70:	4709                	li	a4,2
  72:	10e7a423          	sw	a4,264(a5) # 44800108 <.LASF565+0x447fdd76>

00000076 <.LBB261>:
  76:	00a4d503          	lhu	a0,10(s1) # a <ipc_emb_msg_evt+0xa>
  7a:	0531                	addi	a0,a0,12
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LBB261+0x6>

00000084 <.LVL86>:
  84:	842a                	mv	s0,a0

00000086 <.LVL87>:
  86:	e919                	bnez	a0,9c <.L53>
  88:	1d900613          	li	a2,473
  8c:	00098593          	mv	a1,s3
  90:	000a0513          	mv	a0,s4
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL87+0xe>

0000009c <.L53>:
  9c:	00042023          	sw	zero,0(s0)
  a0:	0044d783          	lhu	a5,4(s1)
  a4:	00f41223          	sh	a5,4(s0)
  a8:	0064d783          	lhu	a5,6(s1)
  ac:	00f41323          	sh	a5,6(s0)
  b0:	47b5                	li	a5,13
  b2:	00f41423          	sh	a5,8(s0)
  b6:	00a4d783          	lhu	a5,10(s1)
  ba:	00f41523          	sh	a5,10(s0)

000000be <.LVL89>:
  be:	47b1                	li	a5,12

000000c0 <.L54>:
  c0:	00a45683          	lhu	a3,10(s0)
  c4:	ff478713          	addi	a4,a5,-12

000000c8 <.LVL91>:
  c8:	04d74463          	blt	a4,a3,110 <.L55>
  cc:	01594783          	lbu	a5,21(s2) # 15 <.LBB243+0x1>

000000d0 <.LVL92>:
  d0:	00178713          	addi	a4,a5,1

000000d4 <.LVL93>:
  d4:	00e90aa3          	sb	a4,21(s2)
  d8:	00f49423          	sh	a5,8(s1)
  dc:	00645783          	lhu	a5,6(s0)

000000e0 <.LBB250>:
  e0:	4739                	li	a4,14
  e2:	02f77f63          	bgeu	a4,a5,120 <.L56>
  e6:	0b600613          	li	a2,182
  ea:	00098593          	mv	a1,s3
  ee:	000b0513          	mv	a0,s6
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LBB250+0x12>

000000fa <.L57>:
  fa:	1ed00613          	li	a2,493
  fe:	00098593          	mv	a1,s3
 102:	000a8513          	mv	a0,s5
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.L57+0xc>

0000010e <.LVL96>:
 10e:	a821                	j	126 <.L58>

00000110 <.L55>:
 110:	00f48733          	add	a4,s1,a5

00000114 <.LVL98>:
 114:	4314                	lw	a3,0(a4)
 116:	00f40733          	add	a4,s0,a5
 11a:	0791                	addi	a5,a5,4

0000011c <.LVL99>:
 11c:	c314                	sw	a3,0(a4)

0000011e <.LVL100>:
 11e:	b74d                	j	c0 <.L54>

00000120 <.L56>:
 120:	4731                	li	a4,12
 122:	fcf76ce3          	bltu	a4,a5,fa <.L57>

00000126 <.L58>:
 126:	4791                	li	a5,4
 128:	44800bb7          	lui	s7,0x44800
 12c:	10fba023          	sw	a5,256(s7) # 44800100 <.LASF565+0x447fdd6e>

00000130 <.LBB254>:
 130:	00c40513          	addi	a0,s0,12
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.LBB254+0x4>

0000013c <.LBB262>:
 13c:	104ba783          	lw	a5,260(s7)

00000140 <.LVL105>:
 140:	bdf5                	j	3c <.L52>

Disassembly of section .text.ipc_emb_msg_dma_int_handler:

00000000 <ipc_emb_msg_dma_int_handler>:
   0:	8082                	ret

Disassembly of section .text.ipc_emb_dbg_dma_int_handler:

00000000 <ipc_emb_dbg_dma_int_handler>:
   0:	44a007b7          	lui	a5,0x44a00
   4:	08000713          	li	a4,128
   8:	d398                	sw	a4,32(a5)

0000000a <.LBB266>:
   a:	448007b7          	lui	a5,0x44800
   e:	4705                	li	a4,1
  10:	10e7a023          	sw	a4,256(a5) # 44800100 <.LASF565+0x447fdd6e>

00000014 <.LBE266>:
  14:	8082                	ret

Disassembly of section .text.ipc_emb_dump:

00000000 <ipc_emb_dump>:
   0:	8082                	ret
