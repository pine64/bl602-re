
at_config.o:     file format elf32-littleriscv


Disassembly of section .text.localecho1_verify:

00000000 <localecho1_verify>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL1>:
   2:	00253513          	sltiu	a0,a0,2
   6:	00154513          	xori	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.console1_speed_verify:

00000000 <console1_speed_verify>:
   0:	7179                	addi	sp,sp,-48
   2:	000005b7          	lui	a1,0x0
   6:	d422                	sw	s0,40(sp)
   8:	4651                	li	a2,20
   a:	842a                	mv	s0,a0
   c:	00058593          	mv	a1,a1
  10:	0068                	addi	a0,sp,12

00000012 <.LVL3>:
  12:	d606                	sw	ra,44(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL3+0x2>

0000001c <.LVL4>:
  1c:	4014                	lw	a3,0(s0)
  1e:	007c                	addi	a5,sp,12
  20:	1018                	addi	a4,sp,32

00000022 <.L4>:
  22:	4390                	lw	a2,0(a5)
  24:	00c68a63          	beq	a3,a2,38 <.L5>
  28:	0791                	addi	a5,a5,4
  2a:	fee79ce3          	bne	a5,a4,22 <.L4>
  2e:	4505                	li	a0,1

00000030 <.L2>:
  30:	50b2                	lw	ra,44(sp)
  32:	5422                	lw	s0,40(sp)

00000034 <.LVL7>:
  34:	6145                	addi	sp,sp,48
  36:	8082                	ret

00000038 <.L5>:
  38:	4501                	li	a0,0

0000003a <.LVL9>:
  3a:	bfdd                	j	30 <.L2>

Disassembly of section .text.wifi_ssid_len_verify:

00000000 <wifi_ssid_len_verify>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL11>:
   2:	02153513          	sltiu	a0,a0,33
   6:	00154513          	xori	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.wifi_mode_verify:

00000000 <wifi_mode_verify>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL13>:
   2:	00453513          	sltiu	a0,a0,4
   6:	00154513          	xori	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.ip_use_dhcp_verify:

00000000 <ip_use_dhcp_verify>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL15>:
   2:	00353513          	sltiu	a0,a0,3
   6:	00154513          	xori	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.console1_hwfc_verify:

00000000 <console1_hwfc_verify>:
   0:	4108                	lw	a0,0(a0)
   2:	00253513          	sltiu	a0,a0,2
   6:	00154513          	xori	a0,a0,1
   a:	8082                	ret

Disassembly of section .text.at_getcfg:

00000000 <at_getcfg>:
   0:	c161                	beqz	a0,c0 <.L16>
   2:	be010113          	addi	sp,sp,-1056
   6:	000007b7          	lui	a5,0x0
   a:	40812c23          	sw	s0,1048(sp)
   e:	40912a23          	sw	s1,1044(sp)
  12:	41212823          	sw	s2,1040(sp)
  16:	41312623          	sw	s3,1036(sp)
  1a:	41512223          	sw	s5,1028(sp)
  1e:	40112e23          	sw	ra,1052(sp)
  22:	41412423          	sw	s4,1032(sp)
  26:	892a                	mv	s2,a0
  28:	00078993          	mv	s3,a5
  2c:	4481                	li	s1,0
  2e:	00078413          	mv	s0,a5
  32:	4ad9                	li	s5,22

00000034 <.L15>:
  34:	0009aa03          	lw	s4,0(s3)
  38:	854a                	mv	a0,s2
  3a:	85d2                	mv	a1,s4
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.L15+0x8>

00000044 <.LVL18>:
  44:	e925                	bnez	a0,b4 <.L14>
  46:	47d1                	li	a5,20
  48:	02f487b3          	mul	a5,s1,a5
  4c:	850a                	mv	a0,sp
  4e:	97a2                	add	a5,a5,s0
  50:	4790                	lw	a2,8(a5)
  52:	0047c583          	lbu	a1,4(a5) # 4 <at_getcfg+0x4>
  56:	47d4                	lw	a3,12(a5)
  58:	00000437          	lui	s0,0x0
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL18+0x18>

00000064 <.LVL19>:
  64:	00040513          	mv	a0,s0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.LVL19+0x4>

00000070 <.LVL20>:
  70:	00000537          	lui	a0,0x0
  74:	860a                	mv	a2,sp
  76:	85d2                	mv	a1,s4
  78:	00050513          	mv	a0,a0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL20+0xc>

00000084 <.LVL21>:
  84:	00040513          	mv	a0,s0
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <.LVL21+0x4>

00000090 <.LVL22>:
  90:	4501                	li	a0,0

00000092 <.L13>:
  92:	41c12083          	lw	ra,1052(sp)
  96:	41812403          	lw	s0,1048(sp)
  9a:	41412483          	lw	s1,1044(sp)

0000009e <.LVL23>:
  9e:	41012903          	lw	s2,1040(sp)

000000a2 <.LVL24>:
  a2:	40c12983          	lw	s3,1036(sp)
  a6:	40812a03          	lw	s4,1032(sp)
  aa:	40412a83          	lw	s5,1028(sp)
  ae:	42010113          	addi	sp,sp,1056
  b2:	8082                	ret

000000b4 <.L14>:
  b4:	0485                	addi	s1,s1,1
  b6:	09d1                	addi	s3,s3,20
  b8:	f7549ee3          	bne	s1,s5,34 <.L15>
  bc:	451d                	li	a0,7
  be:	bfd1                	j	92 <.L13>

000000c0 <.L16>:
  c0:	4521                	li	a0,8

000000c2 <.LVL28>:
  c2:	8082                	ret

Disassembly of section .text.at_typecfg:

00000000 <at_typecfg>:
   0:	cd29                	beqz	a0,5a <.L26>
   2:	1101                	addi	sp,sp,-32
   4:	000007b7          	lui	a5,0x0
   8:	cc22                	sw	s0,24(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c84a                	sw	s2,16(sp)
   e:	c64e                	sw	s3,12(sp)
  10:	c452                	sw	s4,8(sp)
  12:	ce06                	sw	ra,28(sp)
  14:	892a                	mv	s2,a0
  16:	00078993          	mv	s3,a5
  1a:	4401                	li	s0,0
  1c:	00078493          	mv	s1,a5
  20:	4a59                	li	s4,22

00000022 <.L25>:
  22:	0009a583          	lw	a1,0(s3)
  26:	854a                	mv	a0,s2
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.L25+0x6>

00000030 <.LVL31>:
  30:	ed19                	bnez	a0,4e <.L24>
  32:	47d1                	li	a5,20
  34:	02f40433          	mul	s0,s0,a5

00000038 <.LVL32>:
  38:	9426                	add	s0,s0,s1
  3a:	00444503          	lbu	a0,4(s0) # 4 <at_typecfg+0x4>

0000003e <.L23>:
  3e:	40f2                	lw	ra,28(sp)
  40:	4462                	lw	s0,24(sp)
  42:	44d2                	lw	s1,20(sp)
  44:	4942                	lw	s2,16(sp)

00000046 <.LVL33>:
  46:	49b2                	lw	s3,12(sp)
  48:	4a22                	lw	s4,8(sp)
  4a:	6105                	addi	sp,sp,32
  4c:	8082                	ret

0000004e <.L24>:
  4e:	0405                	addi	s0,s0,1
  50:	09d1                	addi	s3,s3,20
  52:	fd4418e3          	bne	s0,s4,22 <.L25>
  56:	451d                	li	a0,7
  58:	b7dd                	j	3e <.L23>

0000005a <.L26>:
  5a:	4521                	li	a0,8

0000005c <.LVL37>:
  5c:	8082                	ret

Disassembly of section .text.at_setcfg:

00000000 <at_setcfg>:
   0:	c959                	beqz	a0,96 <.L49>
   2:	c9d1                	beqz	a1,96 <.L49>
   4:	1101                	addi	sp,sp,-32
   6:	ca26                	sw	s1,20(sp)
   8:	000004b7          	lui	s1,0x0
   c:	cc22                	sw	s0,24(sp)
   e:	c84a                	sw	s2,16(sp)
  10:	c64e                	sw	s3,12(sp)
  12:	c452                	sw	s4,8(sp)
  14:	c256                	sw	s5,4(sp)
  16:	00048a13          	mv	s4,s1
  1a:	ce06                	sw	ra,28(sp)
  1c:	892e                	mv	s2,a1
  1e:	89aa                	mv	s3,a0
  20:	4401                	li	s0,0
  22:	00048493          	mv	s1,s1
  26:	4ad9                	li	s5,22

00000028 <.L38>:
  28:	000a2583          	lw	a1,0(s4)
  2c:	854e                	mv	a0,s3
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.L38+0x6>

00000036 <.LVL40>:
  36:	e931                	bnez	a0,8a <.L34>
  38:	47d1                	li	a5,20
  3a:	02f407b3          	mul	a5,s0,a5
  3e:	4685                	li	a3,1
  40:	472d                	li	a4,11
  42:	97a6                	add	a5,a5,s1
  44:	0057c603          	lbu	a2,5(a5) # 5 <at_setcfg+0x5>
  48:	02d61263          	bne	a2,a3,6c <.L35>
  4c:	4b9c                	lw	a5,16(a5)
  4e:	eb8d                	bnez	a5,80 <.L36>

00000050 <.L37>:
  50:	47d1                	li	a5,20
  52:	02f40433          	mul	s0,s0,a5

00000056 <.LVL41>:
  56:	86ca                	mv	a3,s2
  58:	9426                	add	s0,s0,s1
  5a:	4450                	lw	a2,12(s0)
  5c:	440c                	lw	a1,8(s0)
  5e:	00444503          	lbu	a0,4(s0)
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL41+0xc>

0000006a <.LVL42>:
  6a:	4701                	li	a4,0

0000006c <.L35>:
  6c:	40f2                	lw	ra,28(sp)
  6e:	4462                	lw	s0,24(sp)
  70:	44d2                	lw	s1,20(sp)
  72:	4942                	lw	s2,16(sp)

00000074 <.LVL43>:
  74:	49b2                	lw	s3,12(sp)

00000076 <.LVL44>:
  76:	4a22                	lw	s4,8(sp)
  78:	4a92                	lw	s5,4(sp)
  7a:	853a                	mv	a0,a4
  7c:	6105                	addi	sp,sp,32
  7e:	8082                	ret

00000080 <.L36>:
  80:	854a                	mv	a0,s2
  82:	9782                	jalr	a5

00000084 <.LVL46>:
  84:	4725                	li	a4,9
  86:	d569                	beqz	a0,50 <.L37>
  88:	b7d5                	j	6c <.L35>

0000008a <.L34>:
  8a:	0405                	addi	s0,s0,1
  8c:	0a51                	addi	s4,s4,20
  8e:	f9541de3          	bne	s0,s5,28 <.L38>
  92:	471d                	li	a4,7
  94:	bfe1                	j	6c <.L35>

00000096 <.L49>:
  96:	471d                	li	a4,7
  98:	853a                	mv	a0,a4

0000009a <.LVL49>:
  9a:	8082                	ret

Disassembly of section .text.at_ssidtxt:

00000000 <at_ssidtxt>:
   0:	c931                	beqz	a0,54 <.L55>
   2:	1141                	addi	sp,sp,-16
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	842a                	mv	s0,a0

0000000e <.LBB2>:
   e:	00000937          	lui	s2,0x0
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LBB2+0x4>

0000001a <.LVL51>:
  1a:	84aa                	mv	s1,a0

0000001c <.LVL52>:
  1c:	02100613          	li	a2,33
  20:	4581                	li	a1,0
  22:	11890513          	addi	a0,s2,280 # 118 <.LC23>
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL52+0xa>

0000002e <.LVL53>:
  2e:	8626                	mv	a2,s1
  30:	85a2                	mv	a1,s0
  32:	11890513          	addi	a0,s2,280
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL53+0x8>

0000003e <.LBE2>:
  3e:	40b2                	lw	ra,12(sp)
  40:	4422                	lw	s0,8(sp)

00000042 <.LBB3>:
  42:	000007b7          	lui	a5,0x0
  46:	1297ae23          	sw	s1,316(a5) # 13c <.LASF432+0x1>

0000004a <.LBE3>:
  4a:	4902                	lw	s2,0(sp)
  4c:	4492                	lw	s1,4(sp)

0000004e <.LBB4>:
  4e:	4501                	li	a0,0

00000050 <.LBE4>:
  50:	0141                	addi	sp,sp,16
  52:	8082                	ret

00000054 <.L55>:
  54:	451d                	li	a0,7

00000056 <.LVL58>:
  56:	8082                	ret

Disassembly of section .text.at_config:

00000000 <at_config>:
   0:	be010113          	addi	sp,sp,-1056
   4:	40812c23          	sw	s0,1048(sp)
   8:	00000437          	lui	s0,0x0
   c:	00040413          	mv	s0,s0
  10:	40912a23          	sw	s1,1044(sp)
  14:	41212823          	sw	s2,1040(sp)
  18:	41312623          	sw	s3,1036(sp)
  1c:	40112e23          	sw	ra,1052(sp)
  20:	1b840913          	addi	s2,s0,440 # 1b8 <.LASF50+0x5>
  24:	000004b7          	lui	s1,0x0
  28:	000009b7          	lui	s3,0x0

0000002c <.L61>:
  2c:	4454                	lw	a3,12(s0)
  2e:	4410                	lw	a2,8(s0)
  30:	00444583          	lbu	a1,4(s0)
  34:	850a                	mv	a0,sp
  36:	0451                	addi	s0,s0,20
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.L61+0xc>

00000040 <.LVL61>:
  40:	00048513          	mv	a0,s1
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.LVL61+0x4>

0000004c <.LVL62>:
  4c:	fec42583          	lw	a1,-20(s0)
  50:	860a                	mv	a2,sp
  52:	00098513          	mv	a0,s3
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL62+0xa>

0000005e <.LVL63>:
  5e:	00048513          	mv	a0,s1
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL63+0x4>

0000006a <.LVL64>:
  6a:	fd2411e3          	bne	s0,s2,2c <.L61>
  6e:	41c12083          	lw	ra,1052(sp)
  72:	41812403          	lw	s0,1048(sp)
  76:	41412483          	lw	s1,1044(sp)
  7a:	41012903          	lw	s2,1040(sp)
  7e:	40c12983          	lw	s3,1036(sp)
  82:	4501                	li	a0,0
  84:	42010113          	addi	sp,sp,1056
  88:	8082                	ret

Disassembly of section .text.at_factory:

00000000 <at_factory>:
   0:	000007b7          	lui	a5,0x0
   4:	7169                	addi	sp,sp,-304
   6:	00078793          	mv	a5,a5
   a:	c23e                	sw	a5,4(sp)
   c:	000007b7          	lui	a5,0x0
  10:	0007a783          	lw	a5,0(a5) # 0 <at_factory>
  14:	12112623          	sw	ra,300(sp)
  18:	c789                	beqz	a5,22 <.L65>
  1a:	4601                	li	a2,0
  1c:	004c                	addi	a1,sp,4
  1e:	4519                	li	a0,6
  20:	9782                	jalr	a5

00000022 <.L65>:
  22:	12c12083          	lw	ra,300(sp)
  26:	4501                	li	a0,0
  28:	6155                	addi	sp,sp,304
  2a:	8082                	ret

Disassembly of section .text.at_save:

00000000 <at_save>:
   0:	000007b7          	lui	a5,0x0
   4:	7169                	addi	sp,sp,-304
   6:	00078793          	mv	a5,a5
   a:	c23e                	sw	a5,4(sp)
   c:	000007b7          	lui	a5,0x0
  10:	0007a783          	lw	a5,0(a5) # 0 <at_save>
  14:	12112623          	sw	ra,300(sp)
  18:	c789                	beqz	a5,22 <.L71>
  1a:	4601                	li	a2,0
  1c:	004c                	addi	a1,sp,4
  1e:	450d                	li	a0,3
  20:	9782                	jalr	a5

00000022 <.L71>:
  22:	12c12083          	lw	ra,300(sp)
  26:	4501                	li	a0,0
  28:	6155                	addi	sp,sp,304
  2a:	8082                	ret
