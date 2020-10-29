
phy_helper.o:     file format elf32-littleriscv


Disassembly of section .text.phy_macbyp_reset:

00000000 <phy_macbyp_reset>:
   0:	44c607b7          	lui	a5,0x44c60
   4:	0007a023          	sw	zero,0(a5) # 44c60000 <.LASF518+0x44c5e075>

00000008 <.LBE58>:
   8:	8082                	ret

Disassembly of section .text.phy_mdm_reset:

00000000 <phy_mdm_reset>:
   0:	44c017b7          	lui	a5,0x44c01
   4:	8887a703          	lw	a4,-1912(a5) # 44c00888 <.LASF518+0x44bfe8fd>

00000008 <.LBB79>:
   8:	76fd                	lui	a3,0xfffff
   a:	16fd                	addi	a3,a3,-1

0000000c <.LBB83>:
   c:	00176713          	ori	a4,a4,1
  10:	88e7a423          	sw	a4,-1912(a5)

00000014 <.LBB84>:
  14:	8887a703          	lw	a4,-1912(a5)

00000018 <.LBE84>:
  18:	1141                	addi	sp,sp,-16

0000001a <.LBB85>:
  1a:	8f75                	and	a4,a4,a3
  1c:	6685                	lui	a3,0x1
  1e:	8f55                	or	a4,a4,a3
  20:	88e7a423          	sw	a4,-1912(a5)

00000024 <.LBB86>:
  24:	8887a703          	lw	a4,-1912(a5)
  28:	10076713          	ori	a4,a4,256
  2c:	88e7a423          	sw	a4,-1912(a5)

00000030 <.LBB88>:
  30:	67a1                	lui	a5,0x8
  32:	d0078793          	addi	a5,a5,-768 # 7d00 <.LASF518+0x5d75>
  36:	c63e                	sw	a5,12(sp)

00000038 <.L3>:
  38:	47b2                	lw	a5,12(sp)
  3a:	fff78713          	addi	a4,a5,-1
  3e:	c63a                	sw	a4,12(sp)
  40:	ffe5                	bnez	a5,38 <.L3>

00000042 <.LBB91>:
  42:	44c017b7          	lui	a5,0x44c01
  46:	8887a703          	lw	a4,-1912(a5) # 44c00888 <.LASF518+0x44bfe8fd>

0000004a <.LBB94>:
  4a:	76fd                	lui	a3,0xfffff
  4c:	16fd                	addi	a3,a3,-1

0000004e <.LBB97>:
  4e:	9b79                	andi	a4,a4,-2
  50:	88e7a423          	sw	a4,-1912(a5)

00000054 <.LBB98>:
  54:	8887a703          	lw	a4,-1912(a5)
  58:	8f75                	and	a4,a4,a3
  5a:	88e7a423          	sw	a4,-1912(a5)

0000005e <.LBB99>:
  5e:	8887a703          	lw	a4,-1912(a5)
  62:	eff77713          	andi	a4,a4,-257
  66:	88e7a423          	sw	a4,-1912(a5)

0000006a <.LBE99>:
  6a:	0141                	addi	sp,sp,16
  6c:	8082                	ret

Disassembly of section .text.helper_record_reset:

00000000 <helper_record_reset>:
   0:	000007b7          	lui	a5,0x0
   4:	00078023          	sb	zero,0(a5) # 0 <helper_record_reset>
   8:	8082                	ret

Disassembly of section .text.bl60x_check_mac_status:

00000000 <bl60x_check_mac_status>:
   0:	000007b7          	lui	a5,0x0
   4:	0007c683          	lbu	a3,0(a5) # 0 <bl60x_check_mac_status>
   8:	000007b7          	lui	a5,0x0
   c:	00078793          	mv	a5,a5
  10:	4701                	li	a4,0
  12:	8801e637          	lui	a2,0x8801e

00000016 <.L8>:
  16:	00d74563          	blt	a4,a3,20 <.L11>
  1a:	00052023          	sw	zero,0(a0)
  1e:	a809                	j	30 <.L10>

00000020 <.L11>:
  20:	02878793          	addi	a5,a5,40 # 28 <.L11+0x8>
  24:	fec7a583          	lw	a1,-20(a5)
  28:	00c58663          	beq	a1,a2,34 <.L9>
  2c:	4785                	li	a5,1
  2e:	c11c                	sw	a5,0(a0)

00000030 <.L10>:
  30:	4501                	li	a0,0

00000032 <.LVL14>:
  32:	8082                	ret

00000034 <.L9>:
  34:	0705                	addi	a4,a4,1

00000036 <.LVL16>:
  36:	b7c5                	j	16 <.L8>

Disassembly of section .text.helper_record_dump:

00000000 <helper_record_dump>:
   0:	7179                	addi	sp,sp,-48
   2:	00000537          	lui	a0,0x0
   6:	d422                	sw	s0,40(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	00050513          	mv	a0,a0
  10:	00000437          	lui	s0,0x0

00000014 <.LBB101>:
  14:	00000937          	lui	s2,0x0
  18:	000009b7          	lui	s3,0x0

0000001c <.LBE101>:
  1c:	d226                	sw	s1,36(sp)
  1e:	cc52                	sw	s4,24(sp)
  20:	ca56                	sw	s5,20(sp)
  22:	c85a                	sw	s6,16(sp)
  24:	c65e                	sw	s7,12(sp)
  26:	d606                	sw	ra,44(sp)
  28:	00040413          	mv	s0,s0
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LBE101+0x10>

00000034 <.LBB102>:
  34:	4481                	li	s1,0
  36:	00000b37          	lui	s6,0x0
  3a:	00000bb7          	lui	s7,0x0
  3e:	00000a37          	lui	s4,0x0
  42:	00000ab7          	lui	s5,0x0
  46:	00090913          	mv	s2,s2
  4a:	00098993          	mv	s3,s3

0000004e <.L13>:
  4e:	000b4783          	lbu	a5,0(s6) # 0 <helper_record_dump>
  52:	02f4c463          	blt	s1,a5,7a <.L14>

00000056 <.LBE102>:
  56:	5422                	lw	s0,40(sp)
  58:	50b2                	lw	ra,44(sp)
  5a:	5492                	lw	s1,36(sp)

0000005c <.LVL19>:
  5c:	5902                	lw	s2,32(sp)
  5e:	49f2                	lw	s3,28(sp)
  60:	4a62                	lw	s4,24(sp)
  62:	4ad2                	lw	s5,20(sp)
  64:	4b42                	lw	s6,16(sp)
  66:	4bb2                	lw	s7,12(sp)
  68:	00000537          	lui	a0,0x0
  6c:	00050513          	mv	a0,a0
  70:	6145                	addi	sp,sp,48
  72:	00000317          	auipc	t1,0x0
  76:	00030067          	jr	t1 # 72 <.LVL19+0x16>

0000007a <.L14>:
  7a:	4054                	lw	a3,4(s0)
  7c:	4010                	lw	a2,0(s0)
  7e:	85a6                	mv	a1,s1
  80:	000b8513          	mv	a0,s7
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L14+0xa>

0000008c <.LVL21>:
  8c:	4850                	lw	a2,20(s0)
  8e:	01744703          	lbu	a4,23(s0) # 17 <.LBB101+0x3>
  92:	484c                	lw	a1,20(s0)
  94:	00865693          	srli	a3,a2,0x8
  98:	1ff6f693          	andi	a3,a3,511
  9c:	03f67613          	andi	a2,a2,63
  a0:	000a0513          	mv	a0,s4
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL21+0x18>

000000ac <.LVL22>:
  ac:	01e45703          	lhu	a4,30(s0)
  b0:	01c45683          	lhu	a3,28(s0)
  b4:	01a45603          	lhu	a2,26(s0)
  b8:	01845583          	lhu	a1,24(s0)
  bc:	000a8513          	mv	a0,s5
  c0:	0485                	addi	s1,s1,1

000000c2 <.LVL23>:
  c2:	00000097          	auipc	ra,0x0
  c6:	000080e7          	jalr	ra # c2 <.LVL23>

000000ca <.LVL24>:
  ca:	02645703          	lhu	a4,38(s0)
  ce:	02445683          	lhu	a3,36(s0)
  d2:	02245603          	lhu	a2,34(s0)
  d6:	02045583          	lhu	a1,32(s0)
  da:	00000537          	lui	a0,0x0
  de:	00050513          	mv	a0,a0
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.LVL24+0x18>

000000ea <.LVL25>:
  ea:	4458                	lw	a4,12(s0)
  ec:	441c                	lw	a5,8(s0)
  ee:	00000537          	lui	a0,0x0
  f2:	070a                	slli	a4,a4,0x2
  f4:	078a                	slli	a5,a5,0x2
  f6:	974a                	add	a4,a4,s2
  f8:	97ce                	add	a5,a5,s3
  fa:	4310                	lw	a2,0(a4)
  fc:	438c                	lw	a1,0(a5)
  fe:	00050513          	mv	a0,a0
 102:	02840413          	addi	s0,s0,40

00000106 <.LVL26>:
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.LVL26>

0000010e <.LVL27>:
 10e:	b781                	j	4e <.L13>

Disassembly of section .text.helper_record_rc_rf_states:

00000000 <helper_record_rc_rf_states>:
   0:	400017b7          	lui	a5,0x40001
   4:	2207a683          	lw	a3,544(a5) # 40001220 <.LASF518+0x3ffff295>

00000008 <.LVL29>:
   8:	10000737          	lui	a4,0x10000
   c:	fff70613          	addi	a2,a4,-1 # fffffff <.LASF518+0xfffe074>
  10:	8ef1                	and	a3,a3,a2
  12:	8ed9                	or	a3,a3,a4
  14:	22d7a023          	sw	a3,544(a5)

00000018 <.LBB114>:
  18:	2247a703          	lw	a4,548(a5)

0000001c <.LBB116>:
  1c:	2207a703          	lw	a4,544(a5)

00000020 <.LVL34>:
  20:	200006b7          	lui	a3,0x20000

00000024 <.LBE116>:
  24:	1141                	addi	sp,sp,-16

00000026 <.LBB119>:
  26:	8f71                	and	a4,a4,a2
  28:	8f55                	or	a4,a4,a3
  2a:	22e7a023          	sw	a4,544(a5)

0000002e <.LBB120>:
  2e:	2247a783          	lw	a5,548(a5)

00000032 <.LBE120>:
  32:	01c7d713          	srli	a4,a5,0x1c
  36:	8b1d                	andi	a4,a4,7
  38:	83e5                	srli	a5,a5,0x19
  3a:	c118                	sw	a4,0(a0)
  3c:	8b9d                	andi	a5,a5,7
  3e:	c19c                	sw	a5,0(a1)
  40:	0141                	addi	sp,sp,16

00000042 <.LVL39>:
  42:	8082                	ret

Disassembly of section .text.helper_record_all_states:

00000000 <helper_record_all_states>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	00000937          	lui	s2,0x0
   8:	00090913          	mv	s2,s2
   c:	00094783          	lbu	a5,0(s2) # 0 <helper_record_all_states>

00000010 <.LBB160>:
  10:	02800613          	li	a2,40
  14:	c422                	sw	s0,8(sp)
  16:	02c787b3          	mul	a5,a5,a2

0000001a <.LBB170>:
  1a:	44b00437          	lui	s0,0x44b00

0000001e <.LBE170>:
  1e:	c226                	sw	s1,4(sp)
  20:	c606                	sw	ra,12(sp)
  22:	00000737          	lui	a4,0x0

00000026 <.LBB171>:
  26:	12042683          	lw	a3,288(s0) # 44b00120 <.LASF518+0x44afe195>

0000002a <.LBE171>:
  2a:	00070713          	mv	a4,a4
  2e:	00f704b3          	add	s1,a4,a5
  32:	c0c8                	sw	a0,4(s1)
  34:	00c78593          	addi	a1,a5,12
  38:	00878513          	addi	a0,a5,8

0000003c <.LVL43>:
  3c:	c094                	sw	a3,0(s1)
  3e:	95ba                	add	a1,a1,a4
  40:	953a                	add	a0,a0,a4
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL43+0x6>

0000004a <.LBB172>:
  4a:	50042783          	lw	a5,1280(s0)

0000004e <.LBB174>:
  4e:	7641                	lui	a2,0xffff0

00000050 <.LBE174>:
  50:	c89c                	sw	a5,16(s1)

00000052 <.LBB177>:
  52:	50442783          	lw	a5,1284(s0)

00000056 <.LBE177>:
  56:	c8dc                	sw	a5,20(s1)

00000058 <.LBB179>:
  58:	51042783          	lw	a5,1296(s0)
  5c:	f007f793          	andi	a5,a5,-256
  60:	0317e793          	ori	a5,a5,49
  64:	50f42823          	sw	a5,1296(s0)

00000068 <.LBB181>:
  68:	51042683          	lw	a3,1296(s0)
  6c:	0ff60793          	addi	a5,a2,255 # ffff00ff <.LASF518+0xfffee174>
  70:	8efd                	and	a3,a3,a5
  72:	50d42823          	sw	a3,1296(s0)

00000076 <.LBB182>:
  76:	50c42703          	lw	a4,1292(s0)

0000007a <.LBE182>:
  7a:	cc98                	sw	a4,24(s1)

0000007c <.LBB184>:
  7c:	51042683          	lw	a3,1296(s0)
  80:	f006f693          	andi	a3,a3,-256
  84:	00b6e693          	ori	a3,a3,11
  88:	50d42823          	sw	a3,1296(s0)

0000008c <.LBB186>:
  8c:	51042703          	lw	a4,1296(s0)

00000090 <.LVL51>:
  90:	668d                	lui	a3,0x3
  92:	f0068693          	addi	a3,a3,-256 # 2f00 <.LASF518+0xf75>
  96:	8f7d                	and	a4,a4,a5
  98:	8f55                	or	a4,a4,a3
  9a:	50e42823          	sw	a4,1296(s0)

0000009e <.LBB188>:
  9e:	50c42783          	lw	a5,1292(s0)

000000a2 <.LBE188>:
  a2:	44900737          	lui	a4,0x44900
  a6:	ccdc                	sw	a5,28(s1)
  a8:	33a00793          	li	a5,826

000000ac <.LVL54>:
  ac:	db7c                	sw	a5,116(a4)

000000ae <.LBB190>:
  ae:	573c                	lw	a5,104(a4)
  b0:	8ff1                	and	a5,a5,a2
  b2:	0147e793          	ori	a5,a5,20
  b6:	d73c                	sw	a5,104(a4)

000000b8 <.LBB192>:
  b8:	400007b7          	lui	a5,0x40000
  bc:	0d07a683          	lw	a3,208(a5) # 400000d0 <.LASF518+0x3fffe145>

000000c0 <.LVL57>:
  c0:	4691                	li	a3,4
  c2:	0cd7a823          	sw	a3,208(a5)

000000c6 <.LBB194>:
  c6:	0d47a683          	lw	a3,212(a5)

000000ca <.LVL59>:
  ca:	00478693          	addi	a3,a5,4
  ce:	0cd7aa23          	sw	a3,212(a5)

000000d2 <.LBB196>:
  d2:	0d87a683          	lw	a3,216(a5)

000000d6 <.LVL61>:
  d6:	800006b7          	lui	a3,0x80000
  da:	0691                	addi	a3,a3,4
  dc:	0cd7ac23          	sw	a3,216(a5)

000000e0 <.LBB198>:
  e0:	0dc7a683          	lw	a3,220(a5)

000000e4 <.LVL63>:
  e4:	c00006b7          	lui	a3,0xc0000
  e8:	0691                	addi	a3,a3,4
  ea:	0cd7ae23          	sw	a3,220(a5)

000000ee <.LBB200>:
  ee:	0e07a683          	lw	a3,224(a5)

000000f2 <.LVL65>:
  f2:	9af9                	andi	a3,a3,-2
  f4:	0ed7a023          	sw	a3,224(a5)

000000f8 <.LBB202>:
  f8:	0e07a683          	lw	a3,224(a5)

000000fc <.LBE202>:
  fc:	0116d613          	srli	a2,a3,0x11

00000100 <.LBB205>:
 100:	8285                	srli	a3,a3,0x1

00000102 <.LBE205>:
 102:	02d49123          	sh	a3,34(s1)
 106:	6685                	lui	a3,0x1

00000108 <.LVL70>:
 108:	02c49023          	sh	a2,32(s1)
 10c:	b0968693          	addi	a3,a3,-1271 # b09 <.LASF324+0x7>
 110:	db74                	sw	a3,116(a4)

00000112 <.LBB206>:
 112:	0e07a703          	lw	a4,224(a5)

00000116 <.LVL72>:
 116:	9b79                	andi	a4,a4,-2
 118:	0ee7a023          	sw	a4,224(a5)

0000011c <.LBB208>:
 11c:	0e07a783          	lw	a5,224(a5)

00000120 <.LBE208>:
 120:	0117d713          	srli	a4,a5,0x11

00000124 <.LBB211>:
 124:	8385                	srli	a5,a5,0x1

00000126 <.LBE211>:
 126:	02f49223          	sh	a5,36(s1)
 12a:	00094783          	lbu	a5,0(s2)

0000012e <.LVL77>:
 12e:	02e49323          	sh	a4,38(s1)
 132:	40b2                	lw	ra,12(sp)
 134:	4422                	lw	s0,8(sp)
 136:	0785                	addi	a5,a5,1
 138:	8bbd                	andi	a5,a5,15
 13a:	00f90023          	sb	a5,0(s2)
 13e:	4492                	lw	s1,4(sp)
 140:	4902                	lw	s2,0(sp)
 142:	0141                	addi	sp,sp,16
 144:	8082                	ret

Disassembly of section .text.calc_ppm_ofdm:

00000000 <calc_ppm_ofdm>:
   0:	0542                	slli	a0,a0,0x10

00000002 <.LVL79>:
   2:	8541                	srai	a0,a0,0x10
   4:	1141                	addi	sp,sp,-16
   6:	40a00533          	neg	a0,a0
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL79+0xa>
  14:	000007b7          	lui	a5,0x0
  18:	0007a603          	lw	a2,0(a5) # 0 <calc_ppm_ofdm>
  1c:	0047a683          	lw	a3,4(a5)
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL79+0x1e>
  28:	000007b7          	lui	a5,0x0
  2c:	0007a603          	lw	a2,0(a5) # 0 <calc_ppm_ofdm>
  30:	0047a683          	lw	a3,4(a5)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL79+0x32>
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL79+0x3a>
  44:	40b2                	lw	ra,12(sp)
  46:	0141                	addi	sp,sp,16
  48:	8082                	ret

Disassembly of section .text.calc_ppm_dsss:

00000000 <calc_ppm_dsss>:
   0:	0562                	slli	a0,a0,0x18

00000002 <.LVL85>:
   2:	1141                	addi	sp,sp,-16
   4:	8561                	srai	a0,a0,0x18
   6:	c606                	sw	ra,12(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <.LVL85+0x6>
  10:	000007b7          	lui	a5,0x0
  14:	0007a603          	lw	a2,0(a5) # 0 <calc_ppm_dsss>
  18:	0047a683          	lw	a3,4(a5)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL85+0x1a>
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL85+0x22>
  2c:	40b2                	lw	ra,12(sp)
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret

Disassembly of section .text.helper_channel_monitor:

00000000 <helper_channel_monitor>:
   0:	01051713          	slli	a4,a0,0x10
   4:	7139                	addi	sp,sp,-64
   6:	8341                	srli	a4,a4,0x10
   8:	d84a                	sw	s2,48(sp)
   a:	d64e                	sw	s3,44(sp)
   c:	d256                	sw	s5,36(sp)
   e:	89b6                	mv	s3,a3
  10:	892e                	mv	s2,a1
  12:	8ab2                	mv	s5,a2
  14:	4781                	li	a5,0
  16:	86ba                	mv	a3,a4

00000018 <.LVL90>:
  18:	4601                	li	a2,0

0000001a <.LVL91>:
  1a:	4581                	li	a1,0

0000001c <.LVL92>:
  1c:	4501                	li	a0,0

0000001e <.LVL93>:
  1e:	dc22                	sw	s0,56(sp)
  20:	da26                	sw	s1,52(sp)
  22:	d452                	sw	s4,40(sp)
  24:	d05a                	sw	s6,32(sp)
  26:	ce5e                	sw	s7,28(sp)
  28:	de06                	sw	ra,60(sp)
  2a:	cc62                	sw	s8,24(sp)
  2c:	ca66                	sw	s9,20(sp)

0000002e <.LBB235>:
  2e:	4481                	li	s1,0

00000030 <.LBE235>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LBE235>

00000038 <.LBB236>:
  38:	44c60437          	lui	s0,0x44c60

0000003c <.LBB239>:
  3c:	10100b13          	li	s6,257

00000040 <.LBE239>:
  40:	41f9da13          	srai	s4,s3,0x1f

00000044 <.LBB244>:
  44:	00000bb7          	lui	s7,0x0

00000048 <.L25>:
  48:	0354c663          	blt	s1,s5,74 <.L30>

0000004c <.LBE270>:
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LBE270>

00000054 <.LVL96>:
  54:	5462                	lw	s0,56(sp)
  56:	50f2                	lw	ra,60(sp)
  58:	54d2                	lw	s1,52(sp)

0000005a <.LVL97>:
  5a:	5942                	lw	s2,48(sp)

0000005c <.LVL98>:
  5c:	59b2                	lw	s3,44(sp)

0000005e <.LVL99>:
  5e:	5a22                	lw	s4,40(sp)
  60:	5a92                	lw	s5,36(sp)

00000062 <.LVL100>:
  62:	5b02                	lw	s6,32(sp)
  64:	4bf2                	lw	s7,28(sp)
  66:	4c62                	lw	s8,24(sp)
  68:	4cd2                	lw	s9,20(sp)
  6a:	6121                	addi	sp,sp,64
  6c:	00000317          	auipc	t1,0x0
  70:	00030067          	jr	t1 # 6c <.LVL100+0xa>

00000074 <.L30>:
  74:	00000097          	auipc	ra,0x0
  78:	000080e7          	jalr	ra # 74 <.L30>

0000007c <.LVL102>:
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL102>

00000084 <.LBB263>:
  84:	401c                	lw	a5,0(s0)

00000086 <.LVL104>:
  86:	0017f713          	andi	a4,a5,1

0000008a <.LVL105>:
  8a:	e319                	bnez	a4,90 <.L26>
  8c:	0017e793          	ori	a5,a5,1

00000090 <.L26>:
  90:	0107e693          	ori	a3,a5,16

00000094 <.LVL107>:
  94:	c014                	sw	a3,0(s0)
  96:	fef7f693          	andi	a3,a5,-17
  9a:	c014                	sw	a3,0(s0)
  9c:	e319                	bnez	a4,a2 <.L27>
  9e:	9bb9                	andi	a5,a5,-18

000000a0 <.LVL109>:
  a0:	c01c                	sw	a5,0(s0)

000000a2 <.L27>:
  a2:	01642023          	sw	s6,0(s0) # 44c60000 <.LASF518+0x44c5e075>

000000a6 <.LBE264>:
  a6:	9902                	jalr	s2
  a8:	8c2a                	mv	s8,a0
  aa:	8cae                	mv	s9,a1

000000ac <.L32>:
  ac:	9902                	jalr	s2

000000ae <.LBB265>:
  ae:	418507b3          	sub	a5,a0,s8
  b2:	00f53533          	sltu	a0,a0,a5

000000b6 <.LVL115>:
  b6:	419585b3          	sub	a1,a1,s9
  ba:	8d89                	sub	a1,a1,a0

000000bc <.LBE265>:
  bc:	00ba4663          	blt	s4,a1,c8 <.L31>
  c0:	ff4596e3          	bne	a1,s4,ac <.L32>
  c4:	fef9f4e3          	bgeu	s3,a5,ac <.L32>

000000c8 <.L31>:
  c8:	08042c03          	lw	s8,128(s0)

000000cc <.LBB248>:
  cc:	08442783          	lw	a5,132(s0)

000000d0 <.LBB250>:
  d0:	08842603          	lw	a2,136(s0)

000000d4 <.LBE250>:
  d4:	0485                	addi	s1,s1,1

000000d6 <.LBB253>:
  d6:	c632                	sw	a2,12(sp)

000000d8 <.LBB254>:
  d8:	08c42783          	lw	a5,140(s0)

000000dc <.LBB256>:
  dc:	09042503          	lw	a0,144(s0)

000000e0 <.LBB258>:
  e0:	09442783          	lw	a5,148(s0)

000000e4 <.LBB269>:
  e4:	8141                	srli	a0,a0,0x10

000000e6 <.LVL119>:
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <.LVL119>

000000ee <.LVL120>:
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.LVL120>

000000f6 <.LVL121>:
  f6:	4632                	lw	a2,12(sp)
  f8:	872a                	mv	a4,a0
  fa:	87ae                	mv	a5,a1
  fc:	000b8513          	mv	a0,s7
 100:	85e2                	mv	a1,s8
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL121+0xc>

0000010a <.LBE269>:
 10a:	bf3d                	j	48 <.L25>
