
at_extend.o:     file format elf32-littleriscv


Disassembly of section .text.at_version:

00000000 <at_version>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL1>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL1+0xe>

0000001e <.LVL2>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_version>
  30:	c789                	beqz	a5,3a <.L2>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	4555                	li	a0,21
  38:	9782                	jalr	a5

0000003a <.L2>:
  3a:	12c12083          	lw	ra,300(sp)
  3e:	4501                	li	a0,0
  40:	6155                	addi	sp,sp,304
  42:	8082                	ret

Disassembly of section .text.at_restore:

00000000 <at_restore>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL5>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL5+0xe>

0000001e <.LVL6>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_restore>
  30:	c789                	beqz	a5,3a <.L8>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	4559                	li	a0,22
  38:	9782                	jalr	a5

0000003a <.L8>:
  3a:	12c12083          	lw	ra,300(sp)
  3e:	4501                	li	a0,0
  40:	6155                	addi	sp,sp,304
  42:	8082                	ret

Disassembly of section .text.at_uart_config_get:

00000000 <at_uart_config_get>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12812423          	sw	s0,296(sp)
  16:	12112623          	sw	ra,300(sp)
  1a:	12912223          	sw	s1,292(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <at_uart_config_get+0x1e>

00000026 <.LVL8>:
  26:	000007b7          	lui	a5,0x0
  2a:	00078793          	mv	a5,a5
  2e:	c23e                	sw	a5,4(sp)
  30:	000007b7          	lui	a5,0x0
  34:	0007a783          	lw	a5,0(a5) # 0 <at_uart_config_get>
  38:	4419                	li	s0,6
  3a:	c3b1                	beqz	a5,7e <.L14>
  3c:	4601                	li	a2,0
  3e:	004c                	addi	a1,sp,4
  40:	4561                	li	a0,24
  42:	9782                	jalr	a5

00000044 <.LVL9>:
  44:	842a                	mv	s0,a0

00000046 <.LVL10>:
  46:	ed05                	bnez	a0,7e <.L14>
  48:	000004b7          	lui	s1,0x0
  4c:	00048513          	mv	a0,s1

00000050 <.LVL11>:
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL11>

00000058 <.LVL12>:
  58:	5782                	lw	a5,32(sp)
  5a:	4762                	lw	a4,24(sp)
  5c:	46f2                	lw	a3,28(sp)
  5e:	4652                	lw	a2,20(sp)
  60:	45c2                	lw	a1,16(sp)
  62:	00000537          	lui	a0,0x0
  66:	00050513          	mv	a0,a0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL12+0x12>

00000072 <.LVL13>:
  72:	00048513          	mv	a0,s1
  76:	00000097          	auipc	ra,0x0
  7a:	000080e7          	jalr	ra # 76 <.LVL13+0x4>

0000007e <.L14>:
  7e:	8522                	mv	a0,s0
  80:	12c12083          	lw	ra,300(sp)
  84:	12812403          	lw	s0,296(sp)
  88:	12412483          	lw	s1,292(sp)
  8c:	6155                	addi	sp,sp,304
  8e:	8082                	ret

Disassembly of section .text.at_uart_config:

00000000 <at_uart_config>:
   0:	7129                	addi	sp,sp,-320
   2:	12812c23          	sw	s0,312(sp)
   6:	12912a23          	sw	s1,308(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL16>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL17>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	c632                	sw	a2,12(sp)
  20:	c436                	sw	a3,8(sp)
  22:	c23a                	sw	a4,4(sp)
  24:	c03e                	sw	a5,0(sp)
  26:	12112e23          	sw	ra,316(sp)
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL17+0x14>

00000032 <.LVL18>:
  32:	4782                	lw	a5,0(sp)
  34:	4632                	lw	a2,12(sp)
  36:	46a2                	lw	a3,8(sp)
  38:	d83e                	sw	a5,48(sp)
  3a:	000007b7          	lui	a5,0x0
  3e:	00078793          	mv	a5,a5
  42:	4712                	lw	a4,4(sp)
  44:	ca3e                	sw	a5,20(sp)
  46:	000007b7          	lui	a5,0x0
  4a:	0007a783          	lw	a5,0(a5) # 0 <at_uart_config>
  4e:	ce26                	sw	s1,28(sp)
  50:	d022                	sw	s0,32(sp)
  52:	d232                	sw	a2,36(sp)
  54:	d436                	sw	a3,40(sp)
  56:	d63a                	sw	a4,44(sp)
  58:	c789                	beqz	a5,62 <.L18>
  5a:	4601                	li	a2,0
  5c:	084c                	addi	a1,sp,20
  5e:	455d                	li	a0,23
  60:	9782                	jalr	a5

00000062 <.L18>:
  62:	13c12083          	lw	ra,316(sp)
  66:	13812403          	lw	s0,312(sp)

0000006a <.LVL20>:
  6a:	13412483          	lw	s1,308(sp)

0000006e <.LVL21>:
  6e:	4501                	li	a0,0
  70:	6131                	addi	sp,sp,320

00000072 <.LVL22>:
  72:	8082                	ret

Disassembly of section .text.at_deep_sleep_mode:

00000000 <at_deep_sleep_mode>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12912223          	sw	s1,292(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL24>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL25>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	12112623          	sw	ra,300(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL25+0xc>

0000002a <.LVL26>:
  2a:	000007b7          	lui	a5,0x0
  2e:	00078793          	mv	a5,a5
  32:	c23e                	sw	a5,4(sp)
  34:	000007b7          	lui	a5,0x0
  38:	0007a783          	lw	a5,0(a5) # 0 <at_deep_sleep_mode>
  3c:	c626                	sw	s1,12(sp)
  3e:	c822                	sw	s0,16(sp)
  40:	450d                	li	a0,3
  42:	c789                	beqz	a5,4c <.L24>
  44:	4601                	li	a2,0
  46:	004c                	addi	a1,sp,4
  48:	4569                	li	a0,26
  4a:	9782                	jalr	a5

0000004c <.L24>:
  4c:	12c12083          	lw	ra,300(sp)
  50:	12812403          	lw	s0,296(sp)

00000054 <.LVL28>:
  54:	12412483          	lw	s1,292(sp)

00000058 <.LVL29>:
  58:	6155                	addi	sp,sp,304
  5a:	8082                	ret

Disassembly of section .text.at_wifi_mode:

00000000 <at_wifi_mode>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL31>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL31+0xc>

00000024 <.LVL32>:
  24:	000007b7          	lui	a5,0x0
  28:	00078793          	mv	a5,a5
  2c:	c23e                	sw	a5,4(sp)
  2e:	000007b7          	lui	a5,0x0
  32:	0007a783          	lw	a5,0(a5) # 0 <at_wifi_mode>
  36:	c622                	sw	s0,12(sp)
  38:	4501                	li	a0,0
  3a:	c789                	beqz	a5,44 <.L28>
  3c:	4601                	li	a2,0
  3e:	004c                	addi	a1,sp,4
  40:	4571                	li	a0,28
  42:	9782                	jalr	a5

00000044 <.L28>:
  44:	12c12083          	lw	ra,300(sp)
  48:	12812403          	lw	s0,296(sp)

0000004c <.LVL34>:
  4c:	6155                	addi	sp,sp,304
  4e:	8082                	ret

Disassembly of section .text.at_wifi_mode_get:

00000000 <at_wifi_mode_get>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12812423          	sw	s0,296(sp)
  16:	12112623          	sw	ra,300(sp)
  1a:	12912223          	sw	s1,292(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <at_wifi_mode_get+0x1e>

00000026 <.LVL35>:
  26:	000007b7          	lui	a5,0x0
  2a:	00078793          	mv	a5,a5
  2e:	c23e                	sw	a5,4(sp)
  30:	000007b7          	lui	a5,0x0
  34:	0007a783          	lw	a5,0(a5) # 0 <at_wifi_mode_get>
  38:	4401                	li	s0,0
  3a:	cf95                	beqz	a5,76 <.L32>
  3c:	4601                	li	a2,0
  3e:	004c                	addi	a1,sp,4
  40:	4575                	li	a0,29
  42:	9782                	jalr	a5

00000044 <.LVL36>:
  44:	842a                	mv	s0,a0

00000046 <.LVL37>:
  46:	e905                	bnez	a0,76 <.L32>
  48:	000004b7          	lui	s1,0x0
  4c:	00048513          	mv	a0,s1

00000050 <.LVL38>:
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL38>

00000058 <.LVL39>:
  58:	45b2                	lw	a1,12(sp)
  5a:	00000537          	lui	a0,0x0
  5e:	00050513          	mv	a0,a0
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL39+0xa>

0000006a <.LVL40>:
  6a:	00048513          	mv	a0,s1
  6e:	00000097          	auipc	ra,0x0
  72:	000080e7          	jalr	ra # 6e <.LVL40+0x4>

00000076 <.L32>:
  76:	8522                	mv	a0,s0
  78:	12c12083          	lw	ra,300(sp)
  7c:	12812403          	lw	s0,296(sp)
  80:	12412483          	lw	s1,292(sp)
  84:	6155                	addi	sp,sp,304
  86:	8082                	ret

Disassembly of section .text.at_get_apinfo:

00000000 <at_get_apinfo>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a303          	lw	t1,0(a5) # 0 <at_get_apinfo>
   8:	00030663          	beqz	t1,14 <.L36>
   c:	4601                	li	a2,0
   e:	4581                	li	a1,0
  10:	457d                	li	a0,31
  12:	8302                	jr	t1

00000014 <.L36>:
  14:	4509                	li	a0,2
  16:	8082                	ret

Disassembly of section .text.at_join_ap:

00000000 <at_join_ap>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12912223          	sw	s1,292(sp)
   a:	842a                	mv	s0,a0
   c:	84ae                	mv	s1,a1
   e:	00000537          	lui	a0,0x0

00000012 <.LVL44>:
  12:	000005b7          	lui	a1,0x0

00000016 <.LVL45>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	12112623          	sw	ra,300(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL45+0xc>

0000002a <.LVL46>:
  2a:	85a2                	mv	a1,s0
  2c:	0068                	addi	a0,sp,12
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL46+0x4>

00000036 <.LVL47>:
  36:	85a6                	mv	a1,s1
  38:	02d10513          	addi	a0,sp,45
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL47+0x6>

00000044 <.LVL48>:
  44:	000007b7          	lui	a5,0x0
  48:	00078793          	mv	a5,a5
  4c:	8522                	mv	a0,s0
  4e:	c23e                	sw	a5,4(sp)
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL48+0xc>

00000058 <.LVL49>:
  58:	4792                	lw	a5,4(sp)
  5a:	02000713          	li	a4,32
  5e:	12a7ae23          	sw	a0,316(a5) # 13c <.LASF309+0xe>
  62:	06a76863          	bltu	a4,a0,d2 <.L40>
  66:	11878513          	addi	a0,a5,280
  6a:	02100613          	li	a2,33
  6e:	4581                	li	a1,0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL49+0x18>

00000078 <.LVL50>:
  78:	4512                	lw	a0,4(sp)
  7a:	04100613          	li	a2,65
  7e:	4581                	li	a1,0
  80:	1d850513          	addi	a0,a0,472 # 1d8 <.LASF229+0x9>
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL50+0xc>

0000008c <.LVL51>:
  8c:	4512                	lw	a0,4(sp)
  8e:	85a2                	mv	a1,s0
  90:	11850513          	addi	a0,a0,280
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL51+0x8>

0000009c <.LVL52>:
  9c:	4512                	lw	a0,4(sp)
  9e:	85a6                	mv	a1,s1
  a0:	1d850513          	addi	a0,a0,472
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL52+0x8>

000000ac <.LVL53>:
  ac:	000007b7          	lui	a5,0x0
  b0:	0007a783          	lw	a5,0(a5) # 0 <at_join_ap>
  b4:	c791                	beqz	a5,c0 <.L39>
  b6:	4601                	li	a2,0
  b8:	004c                	addi	a1,sp,4
  ba:	4579                	li	a0,30
  bc:	9782                	jalr	a5

000000be <.LVL54>:
  be:	c111                	beqz	a0,c2 <.L38>

000000c0 <.L39>:
  c0:	4509                	li	a0,2

000000c2 <.L38>:
  c2:	12c12083          	lw	ra,300(sp)
  c6:	12812403          	lw	s0,296(sp)

000000ca <.LVL56>:
  ca:	12412483          	lw	s1,292(sp)

000000ce <.LVL57>:
  ce:	6155                	addi	sp,sp,304
  d0:	8082                	ret

000000d2 <.L40>:
  d2:	4545                	li	a0,17
  d4:	b7fd                	j	c2 <.L38>

Disassembly of section .text.at_scan_attr:

00000000 <at_scan_attr>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL60>:
   8:	1141                	addi	sp,sp,-16
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL60+0xc>

0000001c <.LVL61>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	4501                	li	a0,0
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret

Disassembly of section .text.at_disconnect:

00000000 <at_disconnect>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL63>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL63+0xe>

0000001e <.LVL64>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_disconnect>
  30:	c791                	beqz	a5,3c <.L51>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	02200513          	li	a0,34
  3a:	9782                	jalr	a5

0000003c <.L51>:
  3c:	12c12083          	lw	ra,300(sp)
  40:	4501                	li	a0,0
  42:	6155                	addi	sp,sp,304
  44:	8082                	ret

Disassembly of section .text.at_set_dhcp:

00000000 <at_set_dhcp>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL67>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL67+0xe>

0000001e <.LVL68>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_set_dhcp>
  30:	c791                	beqz	a5,3c <.L57>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	02200513          	li	a0,34
  3a:	9782                	jalr	a5

0000003c <.L57>:
  3c:	12c12083          	lw	ra,300(sp)
  40:	4501                	li	a0,0
  42:	6155                	addi	sp,sp,304
  44:	8082                	ret

Disassembly of section .text.at_set_mac:

00000000 <at_set_mac>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12912223          	sw	s1,292(sp)
   a:	00000437          	lui	s0,0x0
   e:	000004b7          	lui	s1,0x0
  12:	00048593          	mv	a1,s1
  16:	00040513          	mv	a0,s0

0000001a <.LVL71>:
  1a:	12112623          	sw	ra,300(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL71+0x4>

00000026 <.LVL72>:
  26:	00048593          	mv	a1,s1
  2a:	00040513          	mv	a0,s0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL72+0x8>

00000036 <.LVL73>:
  36:	000007b7          	lui	a5,0x0
  3a:	00078793          	mv	a5,a5
  3e:	c23e                	sw	a5,4(sp)
  40:	000007b7          	lui	a5,0x0
  44:	0007a783          	lw	a5,0(a5) # 0 <at_set_mac>
  48:	c791                	beqz	a5,54 <.L63>
  4a:	4601                	li	a2,0
  4c:	004c                	addi	a1,sp,4
  4e:	02200513          	li	a0,34
  52:	9782                	jalr	a5

00000054 <.L63>:
  54:	12c12083          	lw	ra,300(sp)
  58:	12812403          	lw	s0,296(sp)
  5c:	12412483          	lw	s1,292(sp)
  60:	4501                	li	a0,0
  62:	6155                	addi	sp,sp,304
  64:	8082                	ret

Disassembly of section .text.at_set_hostname:

00000000 <at_set_hostname>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL76>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL76+0xc>

00000024 <.LVL77>:
  24:	85a2                	mv	a1,s0
  26:	0068                	addi	a0,sp,12
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL77+0x4>

00000030 <.LVL78>:
  30:	000007b7          	lui	a5,0x0
  34:	00078793          	mv	a5,a5
  38:	c23e                	sw	a5,4(sp)
  3a:	000007b7          	lui	a5,0x0
  3e:	0007a783          	lw	a5,0(a5) # 0 <at_set_hostname>
  42:	c791                	beqz	a5,4e <.L69>
  44:	4601                	li	a2,0
  46:	004c                	addi	a1,sp,4
  48:	02200513          	li	a0,34
  4c:	9782                	jalr	a5

0000004e <.L69>:
  4e:	12c12083          	lw	ra,300(sp)
  52:	12812403          	lw	s0,296(sp)

00000056 <.LVL80>:
  56:	4501                	li	a0,0
  58:	6155                	addi	sp,sp,304
  5a:	8082                	ret

Disassembly of section .text.at_network_status:

00000000 <at_network_status>:
   0:	7129                	addi	sp,sp,-320
   2:	c62e                	sw	a1,12(sp)
   4:	00000537          	lui	a0,0x0

00000008 <.LVL82>:
   8:	000005b7          	lui	a1,0x0

0000000c <.LVL83>:
   c:	00058593          	mv	a1,a1
  10:	00050513          	mv	a0,a0
  14:	12112e23          	sw	ra,316(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL83+0xc>

00000020 <.LVL84>:
  20:	000007b7          	lui	a5,0x0
  24:	00078793          	mv	a5,a5
  28:	ca3e                	sw	a5,20(sp)
  2a:	000007b7          	lui	a5,0x0
  2e:	0007a783          	lw	a5,0(a5) # 0 <at_network_status>
  32:	c791                	beqz	a5,3e <.L75>
  34:	4632                	lw	a2,12(sp)
  36:	084c                	addi	a1,sp,20
  38:	02900513          	li	a0,41
  3c:	9782                	jalr	a5

0000003e <.L75>:
  3e:	13c12083          	lw	ra,316(sp)
  42:	4501                	li	a0,0
  44:	6131                	addi	sp,sp,320

00000046 <.LVL86>:
  46:	8082                	ret

Disassembly of section .text.at_domain_query:

00000000 <at_domain_query>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL88>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL88+0xc>

00000024 <.LVL89>:
  24:	000007b7          	lui	a5,0x0
  28:	00078793          	mv	a5,a5
  2c:	02000613          	li	a2,32
  30:	85a2                	mv	a1,s0
  32:	0068                	addi	a0,sp,12
  34:	c23e                	sw	a5,4(sp)
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL89+0x12>

0000003e <.LVL90>:
  3e:	000007b7          	lui	a5,0x0
  42:	0007a783          	lw	a5,0(a5) # 0 <at_domain_query>
  46:	4501                	li	a0,0
  48:	c791                	beqz	a5,54 <.L81>
  4a:	4601                	li	a2,0
  4c:	004c                	addi	a1,sp,4
  4e:	02a00513          	li	a0,42
  52:	9782                	jalr	a5

00000054 <.L81>:
  54:	12c12083          	lw	ra,300(sp)
  58:	12812403          	lw	s0,296(sp)

0000005c <.LVL92>:
  5c:	0ff57513          	andi	a0,a0,255

00000060 <.LVL93>:
  60:	6155                	addi	sp,sp,304
  62:	8082                	ret

Disassembly of section .text.at_send_tcp_buffer:

00000000 <at_send_tcp_buffer>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL95>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL95+0xe>

0000001e <.LVL96>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_send_tcp_buffer>
  30:	c791                	beqz	a5,3c <.L85>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	02200513          	li	a0,34
  3a:	9782                	jalr	a5

0000003c <.L85>:
  3c:	12c12083          	lw	ra,300(sp)
  40:	4501                	li	a0,0
  42:	6155                	addi	sp,sp,304
  44:	8082                	ret

Disassembly of section .text.at_set_ap:

00000000 <at_set_ap>:
   0:	7129                	addi	sp,sp,-320
   2:	12812c23          	sw	s0,312(sp)
   6:	12912a23          	sw	s1,308(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL99>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL100>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	c636                	sw	a3,12(sp)
  20:	12112e23          	sw	ra,316(sp)
  24:	13212823          	sw	s2,304(sp)
  28:	8932                	mv	s2,a2
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL100+0x14>

00000032 <.LVL101>:
  32:	04000613          	li	a2,64
  36:	4581                	li	a1,0
  38:	0868                	addi	a0,sp,28
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL101+0x8>

00000042 <.LVL102>:
  42:	04000613          	li	a2,64
  46:	4581                	li	a1,0
  48:	08e8                	addi	a0,sp,92
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL102+0x8>

00000052 <.LVL103>:
  52:	8526                	mv	a0,s1
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL103+0x2>

0000005c <.LVL104>:
  5c:	862a                	mv	a2,a0
  5e:	85a6                	mv	a1,s1
  60:	0868                	addi	a0,sp,28
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL104+0x6>

0000006a <.LVL105>:
  6a:	8522                	mv	a0,s0
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL105+0x2>

00000074 <.LVL106>:
  74:	862a                	mv	a2,a0
  76:	85a2                	mv	a1,s0
  78:	08e8                	addi	a0,sp,92
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL106+0x6>

00000082 <.LVL107>:
  82:	000007b7          	lui	a5,0x0
  86:	00078793          	mv	a5,a5
  8a:	46b2                	lw	a3,12(sp)
  8c:	ca3e                	sw	a5,20(sp)
  8e:	000007b7          	lui	a5,0x0
  92:	0007a783          	lw	a5,0(a5) # 0 <at_set_ap>
  96:	cf4a                	sw	s2,156(sp)
  98:	d336                	sw	a3,164(sp)
  9a:	4509                	li	a0,2
  9c:	c791                	beqz	a5,a8 <.L91>
  9e:	4601                	li	a2,0
  a0:	084c                	addi	a1,sp,20
  a2:	02700513          	li	a0,39
  a6:	9782                	jalr	a5

000000a8 <.L91>:
  a8:	13c12083          	lw	ra,316(sp)
  ac:	13812403          	lw	s0,312(sp)

000000b0 <.LVL109>:
  b0:	13412483          	lw	s1,308(sp)

000000b4 <.LVL110>:
  b4:	13012903          	lw	s2,304(sp)
  b8:	6131                	addi	sp,sp,320

000000ba <.LVL111>:
  ba:	8082                	ret

Disassembly of section .text.at_ap_sta_get:

00000000 <at_ap_sta_get>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <at_ap_sta_get+0x16>

0000001e <.LVL112>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_ap_sta_get>
  30:	c791                	beqz	a5,3c <.L95>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	02800513          	li	a0,40
  3a:	9782                	jalr	a5

0000003c <.L95>:
  3c:	12c12083          	lw	ra,300(sp)
  40:	4501                	li	a0,0
  42:	6155                	addi	sp,sp,304
  44:	8082                	ret

Disassembly of section .text.at_mux_network:

00000000 <at_mux_network>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL115>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL115+0xc>

00000024 <.LVL116>:
  24:	000007b7          	lui	a5,0x0
  28:	00078793          	mv	a5,a5
  2c:	c23e                	sw	a5,4(sp)
  2e:	c380                	sw	s0,0(a5)
  30:	000007b7          	lui	a5,0x0
  34:	0007a783          	lw	a5,0(a5) # 0 <at_mux_network>
  38:	c791                	beqz	a5,44 <.L101>
  3a:	4601                	li	a2,0
  3c:	004c                	addi	a1,sp,4
  3e:	02200513          	li	a0,34
  42:	9782                	jalr	a5

00000044 <.L101>:
  44:	12c12083          	lw	ra,300(sp)
  48:	12812403          	lw	s0,296(sp)

0000004c <.LVL118>:
  4c:	4501                	li	a0,0
  4e:	6155                	addi	sp,sp,304
  50:	8082                	ret

Disassembly of section .text.at_set_trans_mode:

00000000 <at_set_trans_mode>:
   0:	000005b7          	lui	a1,0x0
   4:	00000537          	lui	a0,0x0

00000008 <.LVL120>:
   8:	7169                	addi	sp,sp,-304
   a:	00058593          	mv	a1,a1
   e:	00050513          	mv	a0,a0
  12:	12112623          	sw	ra,300(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL120+0xe>

0000001e <.LVL121>:
  1e:	000007b7          	lui	a5,0x0
  22:	00078793          	mv	a5,a5
  26:	c23e                	sw	a5,4(sp)
  28:	000007b7          	lui	a5,0x0
  2c:	0007a783          	lw	a5,0(a5) # 0 <at_set_trans_mode>
  30:	c791                	beqz	a5,3c <.L107>
  32:	4601                	li	a2,0
  34:	004c                	addi	a1,sp,4
  36:	02200513          	li	a0,34
  3a:	9782                	jalr	a5

0000003c <.L107>:
  3c:	12c12083          	lw	ra,300(sp)
  40:	4501                	li	a0,0
  42:	6155                	addi	sp,sp,304
  44:	8082                	ret

Disassembly of section .text.at_http_request:

00000000 <at_http_request>:
   0:	7129                	addi	sp,sp,-320
   2:	12912a23          	sw	s1,308(sp)
   6:	13212823          	sw	s2,304(sp)
   a:	84ae                	mv	s1,a1
   c:	892a                	mv	s2,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL124>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL125>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	c636                	sw	a3,12(sp)
  20:	12112e23          	sw	ra,316(sp)
  24:	12812c23          	sw	s0,312(sp)
  28:	c43a                	sw	a4,8(sp)
  2a:	8432                	mv	s0,a2
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL125+0x16>

00000034 <.LVL126>:
  34:	08000613          	li	a2,128
  38:	85ca                	mv	a1,s2
  3a:	0868                	addi	a0,sp,28
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.LVL126+0x8>

00000044 <.LVL127>:
  44:	000007b7          	lui	a5,0x0
  48:	00078793          	mv	a5,a5
  4c:	46b2                	lw	a3,12(sp)
  4e:	ca3e                	sw	a5,20(sp)
  50:	000007b7          	lui	a5,0x0
  54:	0007a783          	lw	a5,0(a5) # 0 <at_http_request>
  58:	08910e23          	sb	s1,156(sp)
  5c:	d136                	sw	a3,160(sp)
  5e:	08810ea3          	sb	s0,157(sp)
  62:	4519                	li	a0,6
  64:	c799                	beqz	a5,72 <.L113>
  66:	4722                	lw	a4,8(sp)
  68:	084c                	addi	a1,sp,20
  6a:	03500513          	li	a0,53
  6e:	863a                	mv	a2,a4
  70:	9782                	jalr	a5

00000072 <.L113>:
  72:	13c12083          	lw	ra,316(sp)
  76:	13812403          	lw	s0,312(sp)
  7a:	13412483          	lw	s1,308(sp)
  7e:	13012903          	lw	s2,304(sp)

00000082 <.LVL129>:
  82:	6131                	addi	sp,sp,320

00000084 <.LVL130>:
  84:	8082                	ret

Disassembly of section .text.at_set_dns:

00000000 <at_set_dns>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL132>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL132+0xc>

00000024 <.LVL133>:
  24:	4611                	li	a2,4
  26:	85a2                	mv	a1,s0
  28:	0068                	addi	a0,sp,12
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL133+0x6>

00000032 <.LVL134>:
  32:	000007b7          	lui	a5,0x0
  36:	00078793          	mv	a5,a5
  3a:	c23e                	sw	a5,4(sp)
  3c:	000007b7          	lui	a5,0x0
  40:	0007a783          	lw	a5,0(a5) # 0 <at_set_dns>
  44:	c791                	beqz	a5,50 <.L117>
  46:	4601                	li	a2,0
  48:	004c                	addi	a1,sp,4
  4a:	03600513          	li	a0,54
  4e:	9782                	jalr	a5

00000050 <.L117>:
  50:	12c12083          	lw	ra,300(sp)
  54:	12812403          	lw	s0,296(sp)

00000058 <.LVL136>:
  58:	4501                	li	a0,0
  5a:	6155                	addi	sp,sp,304
  5c:	8082                	ret

Disassembly of section .text.at_io_cfg:

00000000 <at_io_cfg>:
   0:	7129                	addi	sp,sp,-320
   2:	12812c23          	sw	s0,312(sp)
   6:	12912a23          	sw	s1,308(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL138>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL139>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	c632                	sw	a2,12(sp)
  20:	12112e23          	sw	ra,316(sp)
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL139+0xe>

0000002c <.LVL140>:
  2c:	000007b7          	lui	a5,0x0
  30:	00078793          	mv	a5,a5
  34:	4632                	lw	a2,12(sp)
  36:	ca3e                	sw	a5,20(sp)
  38:	000007b7          	lui	a5,0x0
  3c:	0007a783          	lw	a5,0(a5) # 0 <at_io_cfg>
  40:	ce26                	sw	s1,28(sp)
  42:	d022                	sw	s0,32(sp)
  44:	d232                	sw	a2,36(sp)
  46:	c791                	beqz	a5,52 <.L123>
  48:	4601                	li	a2,0
  4a:	084c                	addi	a1,sp,20
  4c:	03a00513          	li	a0,58
  50:	9782                	jalr	a5

00000052 <.L123>:
  52:	13c12083          	lw	ra,316(sp)
  56:	13812403          	lw	s0,312(sp)

0000005a <.LVL142>:
  5a:	13412483          	lw	s1,308(sp)

0000005e <.LVL143>:
  5e:	4501                	li	a0,0
  60:	6131                	addi	sp,sp,320

00000062 <.LVL144>:
  62:	8082                	ret

Disassembly of section .text.at_get_io_cfg:

00000000 <at_get_io_cfg>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <at_get_io_cfg>
   8:	cf81                	beqz	a5,20 <.L134>
   a:	1141                	addi	sp,sp,-16
   c:	c606                	sw	ra,12(sp)
   e:	4601                	li	a2,0
  10:	4581                	li	a1,0
  12:	03b00513          	li	a0,59
  16:	9782                	jalr	a5

00000018 <.LVL145>:
  18:	40b2                	lw	ra,12(sp)
  1a:	4501                	li	a0,0
  1c:	0141                	addi	sp,sp,16
  1e:	8082                	ret

00000020 <.L134>:
  20:	4501                	li	a0,0
  22:	8082                	ret

Disassembly of section .text.at_set_iodir_cfg:

00000000 <at_set_iodir_cfg>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12912223          	sw	s1,292(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL147>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL148>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	12112623          	sw	ra,300(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL148+0xc>

0000002a <.LVL149>:
  2a:	000007b7          	lui	a5,0x0
  2e:	00078793          	mv	a5,a5
  32:	c23e                	sw	a5,4(sp)
  34:	000007b7          	lui	a5,0x0
  38:	0007a783          	lw	a5,0(a5) # 0 <at_set_iodir_cfg>
  3c:	c626                	sw	s1,12(sp)
  3e:	c822                	sw	s0,16(sp)
  40:	c791                	beqz	a5,4c <.L138>
  42:	4601                	li	a2,0
  44:	004c                	addi	a1,sp,4
  46:	03c00513          	li	a0,60
  4a:	9782                	jalr	a5

0000004c <.L138>:
  4c:	12c12083          	lw	ra,300(sp)
  50:	12812403          	lw	s0,296(sp)

00000054 <.LVL151>:
  54:	12412483          	lw	s1,292(sp)

00000058 <.LVL152>:
  58:	4501                	li	a0,0
  5a:	6155                	addi	sp,sp,304
  5c:	8082                	ret

Disassembly of section .text.at_write_io_data:

00000000 <at_write_io_data>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	12912223          	sw	s1,292(sp)
   a:	842e                	mv	s0,a1
   c:	84aa                	mv	s1,a0
   e:	000005b7          	lui	a1,0x0

00000012 <.LVL154>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL155>:
  16:	00058593          	mv	a1,a1
  1a:	00050513          	mv	a0,a0
  1e:	12112623          	sw	ra,300(sp)
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL155+0xc>

0000002a <.LVL156>:
  2a:	000007b7          	lui	a5,0x0
  2e:	00078793          	mv	a5,a5
  32:	c23e                	sw	a5,4(sp)
  34:	000007b7          	lui	a5,0x0
  38:	0007a783          	lw	a5,0(a5) # 0 <at_write_io_data>
  3c:	c626                	sw	s1,12(sp)
  3e:	c822                	sw	s0,16(sp)
  40:	c791                	beqz	a5,4c <.L144>
  42:	4601                	li	a2,0
  44:	004c                	addi	a1,sp,4
  46:	03d00513          	li	a0,61
  4a:	9782                	jalr	a5

0000004c <.L144>:
  4c:	12c12083          	lw	ra,300(sp)
  50:	12812403          	lw	s0,296(sp)

00000054 <.LVL158>:
  54:	12412483          	lw	s1,292(sp)

00000058 <.LVL159>:
  58:	4501                	li	a0,0
  5a:	6155                	addi	sp,sp,304
  5c:	8082                	ret

Disassembly of section .text.at_read_io_data:

00000000 <at_read_io_data>:
   0:	7169                	addi	sp,sp,-304
   2:	12812423          	sw	s0,296(sp)
   6:	000005b7          	lui	a1,0x0

0000000a <.LVL161>:
   a:	842a                	mv	s0,a0
   c:	00000537          	lui	a0,0x0

00000010 <.LVL162>:
  10:	00058593          	mv	a1,a1
  14:	00050513          	mv	a0,a0
  18:	12112623          	sw	ra,300(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL162+0xc>

00000024 <.LVL163>:
  24:	000007b7          	lui	a5,0x0
  28:	00078793          	mv	a5,a5
  2c:	c23e                	sw	a5,4(sp)
  2e:	000007b7          	lui	a5,0x0
  32:	0007a783          	lw	a5,0(a5) # 0 <at_read_io_data>
  36:	c622                	sw	s0,12(sp)
  38:	c791                	beqz	a5,44 <.L150>
  3a:	4601                	li	a2,0
  3c:	004c                	addi	a1,sp,4
  3e:	03e00513          	li	a0,62
  42:	9782                	jalr	a5

00000044 <.L150>:
  44:	12c12083          	lw	ra,300(sp)
  48:	12812403          	lw	s0,296(sp)

0000004c <.LVL165>:
  4c:	4501                	li	a0,0
  4e:	6155                	addi	sp,sp,304
  50:	8082                	ret
