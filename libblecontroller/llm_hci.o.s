
llm_hci.o:     file format elf32-littleriscv


Disassembly of section .text.hci_vsc_set_tx_pwr:

00000000 <hci_vsc_set_tx_pwr>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	00058503          	lb	a0,0(a1)

00000008 <.LVL1>:
   8:	47d1                	li	a5,20
   a:	45c9                	li	a1,18

0000000c <.LVL2>:
   c:	0ff57713          	andi	a4,a0,255
  10:	00e7ea63          	bltu	a5,a4,24 <.L2>
  14:	000007b7          	lui	a5,0x0
  18:	0107a783          	lw	a5,16(a5) # 10 <.LVL2+0x4>
  1c:	c636                	sw	a3,12(sp)
  1e:	9782                	jalr	a5

00000020 <.LVL3>:
  20:	46b2                	lw	a3,12(sp)
  22:	4581                	li	a1,0

00000024 <.L2>:
  24:	8536                	mv	a0,a3
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.L2+0x2>

0000002e <.LVL5>:
  2e:	40f2                	lw	ra,28(sp)
  30:	4501                	li	a0,0
  32:	6105                	addi	sp,sp,32
  34:	8082                	ret

Disassembly of section .text.hci_le_wr_rfpath_compensation_cmd_handler:

00000000 <hci_le_wr_rfpath_compensation_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0005d703          	lhu	a4,0(a1)
   8:	000007b7          	lui	a5,0x0
   c:	8536                	mv	a0,a3

0000000e <.LVL7>:
   e:	00e79023          	sh	a4,0(a5) # 0 <hci_le_wr_rfpath_compensation_cmd_handler>
  12:	0025d703          	lhu	a4,2(a1)
  16:	000007b7          	lui	a5,0x0
  1a:	4581                	li	a1,0

0000001c <.LVL8>:
  1c:	00e79023          	sh	a4,0(a5) # 0 <hci_le_wr_rfpath_compensation_cmd_handler>
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL8+0x4>

00000028 <.LVL9>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.hci_wr_le_host_supp_cmd_handler:

00000000 <hci_wr_le_host_supp_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LVL11>:
   4:	00000737          	lui	a4,0x0
   8:	0005c783          	lbu	a5,0(a1)
   c:	00070713          	mv	a4,a4
  10:	00874603          	lbu	a2,8(a4) # 8 <.LVL11+0x4>

00000014 <.LVL12>:
  14:	0786                	slli	a5,a5,0x1
  16:	8536                	mv	a0,a3

00000018 <.LVL13>:
  18:	8fd1                	or	a5,a5,a2
  1a:	4581                	li	a1,0

0000001c <.LVL14>:
  1c:	00f70423          	sb	a5,8(a4)
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL14+0x4>

00000028 <.LVL15>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4501                	li	a0,0
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.hci_le_wr_suggted_dft_data_len_cmd_handler:

00000000 <hci_le_wr_suggted_dft_data_len_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	0005d603          	lhu	a2,0(a1)

00000008 <.LVL17>:
   8:	0e000513          	li	a0,224

0000000c <.LVL18>:
   c:	872e                	mv	a4,a1
   e:	fe560793          	addi	a5,a2,-27
  12:	07c2                	slli	a5,a5,0x10
  14:	83c1                	srli	a5,a5,0x10
  16:	45c9                	li	a1,18

00000018 <.LVL19>:
  18:	02f56763          	bltu	a0,a5,46 <.L11>
  1c:	00275783          	lhu	a5,2(a4)
  20:	70000513          	li	a0,1792
  24:	eb878793          	addi	a5,a5,-328
  28:	07c2                	slli	a5,a5,0x10
  2a:	83c1                	srli	a5,a5,0x10
  2c:	00f56d63          	bltu	a0,a5,46 <.L11>
  30:	000007b7          	lui	a5,0x0
  34:	00078793          	mv	a5,a5
  38:	02c79023          	sh	a2,32(a5) # 20 <.LVL19+0x8>
  3c:	00275703          	lhu	a4,2(a4)

00000040 <.LVL20>:
  40:	4581                	li	a1,0
  42:	02e79123          	sh	a4,34(a5)

00000046 <.L11>:
  46:	8536                	mv	a0,a3
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L11+0x2>

00000050 <.LVL22>:
  50:	40b2                	lw	ra,12(sp)
  52:	4501                	li	a0,0
  54:	0141                	addi	sp,sp,16
  56:	8082                	ret

Disassembly of section .text.hci_le_set_evt_mask_cmd_handler:

00000000 <hci_le_set_evt_mask_cmd_handler>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <hci_le_set_evt_mask_cmd_handler>
   8:	1101                	addi	sp,sp,-32
   a:	00000537          	lui	a0,0x0

0000000e <.LVL24>:
   e:	ce06                	sw	ra,28(sp)
  10:	4621                	li	a2,8

00000012 <.LVL25>:
  12:	03850513          	addi	a0,a0,56 # 38 <.LVL41>
  16:	c636                	sw	a3,12(sp)
  18:	9782                	jalr	a5

0000001a <.LVL26>:
  1a:	46b2                	lw	a3,12(sp)
  1c:	4581                	li	a1,0
  1e:	8536                	mv	a0,a3
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL26+0x6>

00000028 <.LVL27>:
  28:	40f2                	lw	ra,28(sp)
  2a:	4501                	li	a0,0
  2c:	6105                	addi	sp,sp,32
  2e:	8082                	ret

Disassembly of section .text.hci_le_rd_rfpath_compensation_cmd_handler:

00000000 <hci_le_rd_rfpath_compensation_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL29>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL30>:
   4:	1141                	addi	sp,sp,-16
   6:	4699                	li	a3,6

00000008 <.LVL31>:
   8:	04c60613          	addi	a2,a2,76 # 204c <.LLST237+0x3>
   c:	4581                	li	a1,0

0000000e <.LVL32>:
   e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL32+0x6>

0000001c <.LVL33>:
  1c:	00000737          	lui	a4,0x0
  20:	00075703          	lhu	a4,0(a4) # 0 <hci_le_rd_rfpath_compensation_cmd_handler>
  24:	00e51123          	sh	a4,2(a0)
  28:	00000737          	lui	a4,0x0
  2c:	00075703          	lhu	a4,0(a4) # 0 <hci_le_rd_rfpath_compensation_cmd_handler>
  30:	00050023          	sb	zero,0(a0)
  34:	00e51223          	sh	a4,4(a0)
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL33+0x1c>

00000040 <.LVL34>:
  40:	40b2                	lw	ra,12(sp)
  42:	4501                	li	a0,0
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.hci_le_rd_trans_pwr_cmd_handler:

00000000 <hci_le_rd_trans_pwr_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL36>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL37>:
   4:	1141                	addi	sp,sp,-16
   6:	468d                	li	a3,3

00000008 <.LVL38>:
   8:	04b60613          	addi	a2,a2,75 # 204b <.LLST237+0x2>
   c:	4581                	li	a1,0

0000000e <.LVL39>:
   e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL39+0x6>

0000001c <.LVL40>:
  1c:	000500a3          	sb	zero,1(a0)
  20:	00000737          	lui	a4,0x0
  24:	02c74703          	lbu	a4,44(a4) # 2c <.LVL40+0x10>
  28:	00050023          	sb	zero,0(a0)
  2c:	00e50123          	sb	a4,2(a0)
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL40+0x14>

00000038 <.LVL41>:
  38:	40b2                	lw	ra,12(sp)
  3a:	4501                	li	a0,0
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.hci_rd_buff_size_cmd_handler:

00000000 <hci_rd_buff_size_cmd_handler>:
   0:	6505                	lui	a0,0x1

00000002 <.LVL43>:
   2:	1141                	addi	sp,sp,-16
   4:	00550613          	addi	a2,a0,5 # 1005 <.LLST74+0x7>

00000008 <.LVL44>:
   8:	46a9                	li	a3,10

0000000a <.LVL45>:
   a:	4581                	li	a1,0

0000000c <.LVL46>:
   c:	80150513          	addi	a0,a0,-2047
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL46+0x6>

0000001a <.LVL47>:
  1a:	00051323          	sh	zero,6(a0)
  1e:	00051123          	sh	zero,2(a0)
  22:	00050223          	sb	zero,4(a0)
  26:	00051423          	sh	zero,8(a0)
  2a:	00050023          	sb	zero,0(a0)
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL47+0x14>

00000036 <.LVL48>:
  36:	40b2                	lw	ra,12(sp)
  38:	4501                	li	a0,0
  3a:	0141                	addi	sp,sp,16
  3c:	8082                	ret

Disassembly of section .text.hci_rd_local_supp_feats_cmd_handler:

00000000 <hci_rd_local_supp_feats_cmd_handler>:
   0:	6505                	lui	a0,0x1

00000002 <.LVL50>:
   2:	1141                	addi	sp,sp,-16
   4:	8636                	mv	a2,a3

00000006 <.LVL51>:
   6:	4581                	li	a1,0

00000008 <.LVL52>:
   8:	46a5                	li	a3,9

0000000a <.LVL53>:
   a:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
   e:	c606                	sw	ra,12(sp)
  10:	c422                	sw	s0,8(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL53+0x8>

0000001a <.LVL54>:
  1a:	000007b7          	lui	a5,0x0
  1e:	0007a783          	lw	a5,0(a5) # 0 <hci_rd_local_supp_feats_cmd_handler>
  22:	000005b7          	lui	a1,0x0
  26:	842a                	mv	s0,a0

00000028 <.LVL55>:
  28:	4621                	li	a2,8
  2a:	00058593          	mv	a1,a1
  2e:	0505                	addi	a0,a0,1
  30:	9782                	jalr	a5

00000032 <.LVL56>:
  32:	8522                	mv	a0,s0
  34:	00040023          	sb	zero,0(s0)
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL56+0x6>

00000040 <.LVL57>:
  40:	40b2                	lw	ra,12(sp)
  42:	4422                	lw	s0,8(sp)

00000044 <.LVL58>:
  44:	4501                	li	a0,0
  46:	0141                	addi	sp,sp,16
  48:	8082                	ret

Disassembly of section .text.hci_rd_local_supp_cmds_cmd_handler:

00000000 <hci_rd_local_supp_cmds_cmd_handler>:
   0:	6505                	lui	a0,0x1

00000002 <.LVL60>:
   2:	1141                	addi	sp,sp,-16
   4:	04100693          	li	a3,65

00000008 <.LVL61>:
   8:	00250613          	addi	a2,a0,2 # 1002 <.LLST74+0x4>

0000000c <.LVL62>:
   c:	4581                	li	a1,0

0000000e <.LVL63>:
   e:	80150513          	addi	a0,a0,-2047
  12:	c606                	sw	ra,12(sp)
  14:	c422                	sw	s0,8(sp)
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL63+0x8>

0000001e <.LVL64>:
  1e:	000007b7          	lui	a5,0x0
  22:	0007a783          	lw	a5,0(a5) # 0 <hci_rd_local_supp_cmds_cmd_handler>
  26:	000005b7          	lui	a1,0x0
  2a:	842a                	mv	s0,a0

0000002c <.LVL65>:
  2c:	04000613          	li	a2,64
  30:	00058593          	mv	a1,a1
  34:	0505                	addi	a0,a0,1
  36:	9782                	jalr	a5

00000038 <.LVL66>:
  38:	8522                	mv	a0,s0
  3a:	00040023          	sb	zero,0(s0)
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL66+0x6>

00000046 <.LVL67>:
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)

0000004a <.LVL68>:
  4a:	4501                	li	a0,0
  4c:	0141                	addi	sp,sp,16
  4e:	8082                	ret

Disassembly of section .text.hci_rd_local_ver_info_cmd_handler:

00000000 <hci_rd_local_ver_info_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	6405                	lui	s0,0x1
   6:	00140613          	addi	a2,s0,1 # 1001 <.LLST74+0x3>

0000000a <.LVL70>:
   a:	46a9                	li	a3,10

0000000c <.LVL71>:
   c:	4581                	li	a1,0

0000000e <.LVL72>:
   e:	80140513          	addi	a0,s0,-2047

00000012 <.LVL73>:
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL73+0x2>

0000001c <.LVL74>:
  1c:	32100713          	li	a4,801
  20:	00e51423          	sh	a4,8(a0)
  24:	00e51123          	sh	a4,2(a0)
  28:	7af00693          	li	a3,1967
  2c:	90040413          	addi	s0,s0,-1792
  30:	4725                	li	a4,9
  32:	00851023          	sh	s0,0(a0)
  36:	00d51323          	sh	a3,6(a0)
  3a:	00e50223          	sb	a4,4(a0)
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL74+0x22>

00000046 <.LVL75>:
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)
  4a:	4501                	li	a0,0
  4c:	0141                	addi	sp,sp,16
  4e:	8082                	ret

Disassembly of section .text.hci_rd_bd_addr_cmd_handler:

00000000 <hci_rd_bd_addr_cmd_handler>:
   0:	6505                	lui	a0,0x1

00000002 <.LVL77>:
   2:	1141                	addi	sp,sp,-16
   4:	469d                	li	a3,7

00000006 <.LVL78>:
   6:	00950613          	addi	a2,a0,9 # 1009 <.LASF264+0x1>

0000000a <.LVL79>:
   a:	4581                	li	a1,0

0000000c <.LVL80>:
   c:	80150513          	addi	a0,a0,-2047
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL80+0x8>

0000001c <.LVL81>:
  1c:	000007b7          	lui	a5,0x0
  20:	0007a783          	lw	a5,0(a5) # 0 <hci_rd_bd_addr_cmd_handler>
  24:	000005b7          	lui	a1,0x0
  28:	842a                	mv	s0,a0

0000002a <.LVL82>:
  2a:	4619                	li	a2,6
  2c:	06158593          	addi	a1,a1,97 # 61 <.LVL306+0x1>
  30:	0505                	addi	a0,a0,1
  32:	9782                	jalr	a5

00000034 <.LVL83>:
  34:	8522                	mv	a0,s0
  36:	00040023          	sb	zero,0(s0)
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL83+0x6>

00000042 <.LVL84>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)

00000046 <.LVL85>:
  46:	4501                	li	a0,0
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

Disassembly of section .text.hci_le_rd_max_data_len_cmd_handler:

00000000 <hci_le_rd_max_data_len_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL87>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL88>:
   4:	1141                	addi	sp,sp,-16
   6:	46a9                	li	a3,10

00000008 <.LVL89>:
   8:	02f60613          	addi	a2,a2,47 # 202f <.LLST236+0x7>
   c:	4581                	li	a1,0

0000000e <.LVL90>:
   e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL90+0x6>

0000001c <.LVL91>:
  1c:	000007b7          	lui	a5,0x0
  20:	00078793          	mv	a5,a5
  24:	0287d683          	lhu	a3,40(a5) # 28 <.LVL91+0xc>
  28:	00d51323          	sh	a3,6(a0)
  2c:	02a7d683          	lhu	a3,42(a5)
  30:	00d51423          	sh	a3,8(a0)
  34:	0247d683          	lhu	a3,36(a5)
  38:	00d51123          	sh	a3,2(a0)
  3c:	0267d783          	lhu	a5,38(a5)
  40:	00050023          	sb	zero,0(a0)
  44:	00f51223          	sh	a5,4(a0)
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL91+0x2c>

00000050 <.LVL92>:
  50:	40b2                	lw	ra,12(sp)
  52:	4501                	li	a0,0
  54:	0141                	addi	sp,sp,16
  56:	8082                	ret

Disassembly of section .text.hci_le_rd_suggted_dft_data_len_cmd_handler:

00000000 <hci_le_rd_suggted_dft_data_len_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL94>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL95>:
   4:	1141                	addi	sp,sp,-16
   6:	4699                	li	a3,6

00000008 <.LVL96>:
   8:	02360613          	addi	a2,a2,35 # 2023 <.LASF652+0x2>
   c:	4581                	li	a1,0

0000000e <.LVL97>:
   e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL97+0x6>

0000001c <.LVL98>:
  1c:	000007b7          	lui	a5,0x0
  20:	00078793          	mv	a5,a5
  24:	0207d683          	lhu	a3,32(a5) # 20 <.LVL98+0x4>
  28:	00d51123          	sh	a3,2(a0)
  2c:	0227d783          	lhu	a5,34(a5)
  30:	00050023          	sb	zero,0(a0)
  34:	00f51223          	sh	a5,4(a0)
  38:	00000097          	auipc	ra,0x0
  3c:	000080e7          	jalr	ra # 38 <.LVL98+0x1c>

00000040 <.LVL99>:
  40:	40b2                	lw	ra,12(sp)
  42:	4501                	li	a0,0
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.hci_le_rd_supp_states_cmd_handler:

00000000 <hci_le_rd_supp_states_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL101>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL102>:
   4:	1141                	addi	sp,sp,-16
   6:	46a5                	li	a3,9

00000008 <.LVL103>:
   8:	0671                	addi	a2,a2,28
   a:	4581                	li	a1,0

0000000c <.LVL104>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL104+0x8>

0000001c <.LVL105>:
  1c:	000007b7          	lui	a5,0x0
  20:	0007a783          	lw	a5,0(a5) # 0 <hci_le_rd_supp_states_cmd_handler>
  24:	000005b7          	lui	a1,0x0
  28:	842a                	mv	s0,a0

0000002a <.LVL106>:
  2a:	4621                	li	a2,8
  2c:	00058593          	mv	a1,a1
  30:	0505                	addi	a0,a0,1
  32:	9782                	jalr	a5

00000034 <.LVL107>:
  34:	8522                	mv	a0,s0
  36:	00040023          	sb	zero,0(s0)
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL107+0x6>

00000042 <.LVL108>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)

00000046 <.LVL109>:
  46:	4501                	li	a0,0
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

Disassembly of section .text.hci_le_rd_wl_size_cmd_handler:

00000000 <hci_le_rd_wl_size_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL111>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL112>:
   4:	1141                	addi	sp,sp,-16
   6:	4689                	li	a3,2

00000008 <.LVL113>:
   8:	063d                	addi	a2,a2,15
   a:	4581                	li	a1,0

0000000c <.LVL114>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL114+0x6>

0000001a <.LVL115>:
  1a:	4711                	li	a4,4
  1c:	00050023          	sb	zero,0(a0)
  20:	00e500a3          	sb	a4,1(a0)
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL115+0xa>

0000002c <.LVL116>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4501                	li	a0,0
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.hci_le_rd_adv_ch_tx_pw_cmd_handler:

00000000 <hci_le_rd_adv_ch_tx_pw_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL118>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL119>:
   4:	1141                	addi	sp,sp,-16
   6:	4689                	li	a3,2

00000008 <.LVL120>:
   8:	061d                	addi	a2,a2,7
   a:	4581                	li	a1,0

0000000c <.LVL121>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL121+0x8>

0000001c <.LVL122>:
  1c:	000007b7          	lui	a5,0x0
  20:	00078793          	mv	a5,a5
  24:	842a                	mv	s0,a0

00000026 <.LVL123>:
  26:	4bd8                	lw	a4,20(a5)
  28:	02c7c503          	lbu	a0,44(a5) # 2c <.LVL123+0x6>
  2c:	4585                	li	a1,1
  2e:	9702                	jalr	a4

00000030 <.LVL124>:
  30:	00a400a3          	sb	a0,1(s0)
  34:	00040023          	sb	zero,0(s0)
  38:	8522                	mv	a0,s0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL124+0xa>

00000042 <.LVL125>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)

00000046 <.LVL126>:
  46:	4501                	li	a0,0
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

Disassembly of section .text.hci_le_rd_local_supp_feats_cmd_handler:

00000000 <hci_le_rd_local_supp_feats_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL128>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL129>:
   4:	1141                	addi	sp,sp,-16
   6:	46a5                	li	a3,9

00000008 <.LVL130>:
   8:	060d                	addi	a2,a2,3
   a:	4581                	li	a1,0

0000000c <.LVL131>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL131+0x8>

0000001c <.LVL132>:
  1c:	000007b7          	lui	a5,0x0
  20:	0007a783          	lw	a5,0(a5) # 0 <hci_le_rd_local_supp_feats_cmd_handler>
  24:	000005b7          	lui	a1,0x0
  28:	842a                	mv	s0,a0

0000002a <.LVL133>:
  2a:	4621                	li	a2,8
  2c:	00058593          	mv	a1,a1
  30:	0505                	addi	a0,a0,1
  32:	9782                	jalr	a5

00000034 <.LVL134>:
  34:	8522                	mv	a0,s0
  36:	00040023          	sb	zero,0(s0)
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL134+0x6>

00000042 <.LVL135>:
  42:	40b2                	lw	ra,12(sp)
  44:	4422                	lw	s0,8(sp)

00000046 <.LVL136>:
  46:	4501                	li	a0,0
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

Disassembly of section .text.hci_le_rd_buff_size_cmd_handler:

00000000 <hci_le_rd_buff_size_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL138>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL139>:
   4:	1141                	addi	sp,sp,-16
   6:	4699                	li	a3,6

00000008 <.LVL140>:
   8:	0609                	addi	a2,a2,2
   a:	4581                	li	a1,0

0000000c <.LVL141>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL141+0x6>

0000001a <.LVL142>:
  1a:	4709                	li	a4,2
  1c:	00e50223          	sb	a4,4(a0)
  20:	00000737          	lui	a4,0x0
  24:	02475703          	lhu	a4,36(a4) # 24 <.LVL142+0xa>
  28:	00050023          	sb	zero,0(a0)
  2c:	00e51123          	sh	a4,2(a0)
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL142+0x16>

00000038 <.LVL143>:
  38:	40b2                	lw	ra,12(sp)
  3a:	4501                	li	a0,0
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

Disassembly of section .text.hci_le_generate_dhkey_cmd_handler:

00000000 <hci_le_generate_dhkey_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	862e                	mv	a2,a1

00000008 <.LVL145>:
   8:	8436                	mv	s0,a3
   a:	4781                	li	a5,0
   c:	02000713          	li	a4,32

00000010 <.L47>:
  10:	00f606b3          	add	a3,a2,a5
  14:	0006c683          	lbu	a3,0(a3)
  18:	e2b5                	bnez	a3,7c <.L51>

0000001a <.LVL147>:
  1a:	0785                	addi	a5,a5,1

0000001c <.LVL148>:
  1c:	fee79ae3          	bne	a5,a4,10 <.L47>
  20:	4549                	li	a0,18

00000022 <.L46>:
  22:	02060793          	addi	a5,a2,32 # 2020 <.LASF457+0xa>
  26:	04060713          	addi	a4,a2,64
  2a:	86be                	mv	a3,a5

0000002c <.L49>:
  2c:	0007c583          	lbu	a1,0(a5)
  30:	e589                	bnez	a1,3a <.L48>

00000032 <.LVL151>:
  32:	0785                	addi	a5,a5,1

00000034 <.LVL152>:
  34:	fef71ce3          	bne	a4,a5,2c <.L49>
  38:	4549                	li	a0,18

0000003a <.L48>:
  3a:	000007b7          	lui	a5,0x0
  3e:	00078793          	mv	a5,a5
  42:	0d37c703          	lbu	a4,211(a5) # d3 <.L134+0x9>
  46:	ef0d                	bnez	a4,80 <.L52>
  48:	ed19                	bnez	a0,66 <.L50>
  4a:	4709                	li	a4,2
  4c:	000005b7          	lui	a1,0x0
  50:	0ce789a3          	sb	a4,211(a5)
  54:	0b358593          	addi	a1,a1,179 # b3 <.L105+0x1>
  58:	4781                	li	a5,0
  5a:	4719                	li	a4,6
  5c:	4509                	li	a0,2

0000005e <.LVL154>:
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL154>

00000066 <.L50>:
  66:	85aa                	mv	a1,a0
  68:	8522                	mv	a0,s0

0000006a <.LVL156>:
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL156>

00000072 <.LVL157>:
  72:	40b2                	lw	ra,12(sp)
  74:	4422                	lw	s0,8(sp)
  76:	4501                	li	a0,0
  78:	0141                	addi	sp,sp,16
  7a:	8082                	ret

0000007c <.L51>:
  7c:	4501                	li	a0,0

0000007e <.LVL159>:
  7e:	b755                	j	22 <.L46>

00000080 <.L52>:
  80:	4531                	li	a0,12

00000082 <.LVL161>:
  82:	b7d5                	j	66 <.L50>

Disassembly of section .text.hci_host_nb_cmp_pkts_cmd_handler:

00000000 <hci_host_nb_cmp_pkts_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	0005c603          	lbu	a2,0(a1)

00000008 <.LVL163>:
   8:	00258793          	addi	a5,a1,2
   c:	4501                	li	a0,0

0000000e <.LVL164>:
   e:	4701                	li	a4,0
  10:	4581                	li	a1,0

00000012 <.LVL165>:
  12:	4805                	li	a6,1

00000014 <.L57>:
  14:	02e61463          	bne	a2,a4,3c <.L59>
  18:	c636                	sw	a3,12(sp)
  1a:	c42e                	sw	a1,8(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.L57+0x8>

00000024 <.LVL167>:
  24:	45a2                	lw	a1,8(sp)
  26:	46b2                	lw	a3,12(sp)
  28:	c591                	beqz	a1,34 <.L60>
  2a:	8536                	mv	a0,a3
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL167+0x8>

00000034 <.L60>:
  34:	40f2                	lw	ra,28(sp)
  36:	4501                	li	a0,0
  38:	6105                	addi	sp,sp,32
  3a:	8082                	ret

0000003c <.L59>:
  3c:	0007d883          	lhu	a7,0(a5)
  40:	01186c63          	bltu	a6,a7,58 <.L61>
  44:	0067d883          	lhu	a7,6(a5)
  48:	9546                	add	a0,a0,a7

0000004a <.LVL170>:
  4a:	0542                	slli	a0,a0,0x10
  4c:	8141                	srli	a0,a0,0x10

0000004e <.L58>:
  4e:	0705                	addi	a4,a4,1

00000050 <.LVL172>:
  50:	0ff77713          	andi	a4,a4,255

00000054 <.LVL173>:
  54:	0789                	addi	a5,a5,2
  56:	bf7d                	j	14 <.L57>

00000058 <.L61>:
  58:	45c9                	li	a1,18

0000005a <.LVL174>:
  5a:	bfd5                	j	4e <.L58>

Disassembly of section .text.hci_host_buf_size_cmd_handler:

00000000 <hci_host_buf_size_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	87ae                	mv	a5,a1
   6:	0007d503          	lhu	a0,0(a5)

0000000a <.LVL176>:
   a:	0045d583          	lhu	a1,4(a1)

0000000e <.LVL177>:
   e:	c636                	sw	a3,12(sp)
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL177+0x2>

00000018 <.LVL178>:
  18:	46b2                	lw	a3,12(sp)
  1a:	85aa                	mv	a1,a0
  1c:	8536                	mv	a0,a3

0000001e <.LVL179>:
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL179>

00000026 <.LVL180>:
  26:	40f2                	lw	ra,28(sp)
  28:	4501                	li	a0,0
  2a:	6105                	addi	sp,sp,32
  2c:	8082                	ret

Disassembly of section .text.hci_set_evt_mask_page_2_cmd_handler:

00000000 <hci_set_evt_mask_page_2_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	852e                	mv	a0,a1

00000004 <.LVL182>:
   4:	4589                	li	a1,2

00000006 <.LVL183>:
   6:	ce06                	sw	ra,28(sp)
   8:	c636                	sw	a3,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL183+0x4>

00000012 <.LVL184>:
  12:	46b2                	lw	a3,12(sp)
  14:	85aa                	mv	a1,a0
  16:	8536                	mv	a0,a3

00000018 <.LVL185>:
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL185>

00000020 <.LVL186>:
  20:	40f2                	lw	ra,28(sp)
  22:	4501                	li	a0,0
  24:	6105                	addi	sp,sp,32
  26:	8082                	ret

Disassembly of section .text.hci_set_evt_mask_cmd_handler:

00000000 <hci_set_evt_mask_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	852e                	mv	a0,a1

00000004 <.LVL188>:
   4:	458d                	li	a1,3

00000006 <.LVL189>:
   6:	ce06                	sw	ra,28(sp)
   8:	c636                	sw	a3,12(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL189+0x4>

00000012 <.LVL190>:
  12:	46b2                	lw	a3,12(sp)
  14:	85aa                	mv	a1,a0
  16:	8536                	mv	a0,a3

00000018 <.LVL191>:
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL191>

00000020 <.LVL192>:
  20:	40f2                	lw	ra,28(sp)
  22:	4501                	li	a0,0
  24:	6105                	addi	sp,sp,32
  26:	8082                	ret

Disassembly of section .text.hci_set_ctrl_to_host_flow_ctrl_cmd_handler:

00000000 <hci_set_ctrl_to_host_flow_ctrl_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	0005c783          	lbu	a5,0(a1)
   8:	470d                	li	a4,3
   a:	45c9                	li	a1,18

0000000c <.LVL194>:
   c:	02f76063          	bltu	a4,a5,2c <.L73>
  10:	4705                	li	a4,1
  12:	4505                	li	a0,1

00000014 <.LVL195>:
  14:	00e78563          	beq	a5,a4,1e <.L74>
  18:	17f5                	addi	a5,a5,-3
  1a:	0017b513          	seqz	a0,a5

0000001e <.L74>:
  1e:	c636                	sw	a3,12(sp)

00000020 <.LVL196>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL196>

00000028 <.LVL197>:
  28:	46b2                	lw	a3,12(sp)
  2a:	85aa                	mv	a1,a0

0000002c <.L73>:
  2c:	8536                	mv	a0,a3
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.L73+0x2>

00000036 <.LVL199>:
  36:	40f2                	lw	ra,28(sp)
  38:	4501                	li	a0,0
  3a:	6105                	addi	sp,sp,32
  3c:	8082                	ret

Disassembly of section .text.hci_reset_cmd_handler:

00000000 <hci_reset_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c636                	sw	a3,12(sp)
   6:	00000097          	auipc	ra,0x0
   a:	000080e7          	jalr	ra # 6 <hci_reset_cmd_handler+0x6>

0000000e <.LVL201>:
   e:	46b2                	lw	a3,12(sp)
  10:	4581                	li	a1,0
  12:	8536                	mv	a0,a3
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL201+0x6>

0000001c <.LVL202>:
  1c:	40f2                	lw	ra,28(sp)
  1e:	4501                	li	a0,0
  20:	6105                	addi	sp,sp,32
  22:	8082                	ret

Disassembly of section .text.hci_le_tx_test_cmd_handler:

00000000 <hci_le_tx_test_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL204>:
   4:	cc22                	sw	s0,24(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	c62e                	sw	a1,12(sp)
   a:	8436                	mv	s0,a3
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL204+0x8>

00000014 <.LVL205>:
  14:	e515                	bnez	a0,40 <.L84>
  16:	6789                	lui	a5,0x2
  18:	07f9                	addi	a5,a5,30
  1a:	45b2                	lw	a1,12(sp)
  1c:	00f41763          	bne	s0,a5,2a <.L83>
  20:	852e                	mv	a0,a1
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL205+0xe>

0000002a <.L83>:
  2a:	85aa                	mv	a1,a0
  2c:	8522                	mv	a0,s0

0000002e <.LVL207>:
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL207>

00000036 <.LVL208>:
  36:	40f2                	lw	ra,28(sp)
  38:	4462                	lw	s0,24(sp)
  3a:	4501                	li	a0,0
  3c:	6105                	addi	sp,sp,32

0000003e <.LVL209>:
  3e:	8082                	ret

00000040 <.L84>:
  40:	4531                	li	a0,12
  42:	b7e5                	j	2a <.L83>

Disassembly of section .text.hci_le_rx_test_cmd_handler:

00000000 <hci_le_rx_test_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL212>:
   4:	cc22                	sw	s0,24(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	c62e                	sw	a1,12(sp)
   a:	8436                	mv	s0,a3
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL212+0x8>

00000014 <.LVL213>:
  14:	e515                	bnez	a0,40 <.L88>
  16:	6789                	lui	a5,0x2
  18:	07f5                	addi	a5,a5,29
  1a:	45b2                	lw	a1,12(sp)
  1c:	00f41763          	bne	s0,a5,2a <.L87>
  20:	852e                	mv	a0,a1
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL213+0xe>

0000002a <.L87>:
  2a:	85aa                	mv	a1,a0
  2c:	8522                	mv	a0,s0

0000002e <.LVL215>:
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL215>

00000036 <.LVL216>:
  36:	40f2                	lw	ra,28(sp)
  38:	4462                	lw	s0,24(sp)
  3a:	4501                	li	a0,0
  3c:	6105                	addi	sp,sp,32

0000003e <.LVL217>:
  3e:	8082                	ret

00000040 <.L88>:
  40:	4531                	li	a0,12
  42:	b7e5                	j	2a <.L87>

Disassembly of section .text.hci_le_rand_cmd_handler:

00000000 <hci_le_rand_cmd_handler>:
   0:	6609                	lui	a2,0x2

00000002 <.LVL220>:
   2:	6505                	lui	a0,0x1

00000004 <.LVL221>:
   4:	1141                	addi	sp,sp,-16
   6:	46a5                	li	a3,9

00000008 <.LVL222>:
   8:	0661                	addi	a2,a2,24
   a:	4581                	li	a1,0

0000000c <.LVL223>:
   c:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  10:	c606                	sw	ra,12(sp)
  12:	c422                	sw	s0,8(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL223+0x8>

0000001c <.LVL224>:
  1c:	842a                	mv	s0,a0

0000001e <.LBB24>:
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LBB24>

00000026 <.LBB26>:
  26:	00855793          	srli	a5,a0,0x8
  2a:	00a400a3          	sb	a0,1(s0)

0000002e <.LVL227>:
  2e:	00f40123          	sb	a5,2(s0)

00000032 <.LVL228>:
  32:	01055793          	srli	a5,a0,0x10
  36:	8161                	srli	a0,a0,0x18

00000038 <.LVL229>:
  38:	00f401a3          	sb	a5,3(s0)
  3c:	00a40223          	sb	a0,4(s0)

00000040 <.LBB28>:
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LBB28>

00000048 <.LBB30>:
  48:	00855793          	srli	a5,a0,0x8
  4c:	00a402a3          	sb	a0,5(s0)

00000050 <.LVL232>:
  50:	00f40323          	sb	a5,6(s0)

00000054 <.LVL233>:
  54:	01055793          	srli	a5,a0,0x10
  58:	8161                	srli	a0,a0,0x18

0000005a <.LVL234>:
  5a:	00a40423          	sb	a0,8(s0)
  5e:	00f403a3          	sb	a5,7(s0)

00000062 <.LBE30>:
  62:	8522                	mv	a0,s0
  64:	00040023          	sb	zero,0(s0)
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.LBE30+0x6>

00000070 <.LVL236>:
  70:	40b2                	lw	ra,12(sp)
  72:	4422                	lw	s0,8(sp)

00000074 <.LVL237>:
  74:	4501                	li	a0,0
  76:	0141                	addi	sp,sp,16
  78:	8082                	ret

Disassembly of section .text.hci_le_enc_cmd_handler:

00000000 <hci_le_enc_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	4791                	li	a5,4
   a:	fef59c23          	sh	a5,-8(a1)
   e:	000004b7          	lui	s1,0x0
  12:	47a1                	li	a5,8
  14:	fef59e23          	sh	a5,-4(a1)
  18:	00048513          	mv	a0,s1

0000001c <.LVL239>:
  1c:	842e                	mv	s0,a1
  1e:	15d1                	addi	a1,a1,-12

00000020 <.LVL240>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL240>

00000028 <.LVL241>:
  28:	00048493          	mv	s1,s1
  2c:	0584c783          	lbu	a5,88(s1) # 58 <.LFE1553>
  30:	e791                	bnez	a5,3c <.L93>
  32:	8522                	mv	a0,s0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL241+0xc>

0000003c <.L93>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4422                	lw	s0,8(sp)

00000040 <.LVL243>:
  40:	4492                	lw	s1,4(sp)
  42:	4505                	li	a0,1
  44:	0141                	addi	sp,sp,16
  46:	8082                	ret

Disassembly of section .text.hci_le_wl_mngt_cmd_handler:

00000000 <hci_le_wl_mngt_cmd_handler>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	892a                	mv	s2,a0

00000006 <.LBB36>:
   6:	4501                	li	a0,0

00000008 <.LBE36>:
   8:	d226                	sw	s1,36(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	d606                	sw	ra,44(sp)
   e:	d422                	sw	s0,40(sp)
  10:	84ae                	mv	s1,a1
  12:	89b6                	mv	s3,a3

00000014 <.LBB37>:
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LBB37>

0000001c <.LVL246>:
  1c:	0f057713          	andi	a4,a0,240
  20:	47c1                	li	a5,16
  22:	00f71a63          	bne	a4,a5,36 <.L96>
  26:	000007b7          	lui	a5,0x0
  2a:	0147a783          	lw	a5,20(a5) # 14 <.LBB37>

0000002e <.LBE37>:
  2e:	4431                	li	s0,12

00000030 <.LBB38>:
  30:	01b7c783          	lbu	a5,27(a5)
  34:	eba9                	bnez	a5,86 <.L97>

00000036 <.L96>:
  36:	893d                	andi	a0,a0,15

00000038 <.LVL247>:
  38:	157d                	addi	a0,a0,-1
  3a:	4785                	li	a5,1
  3c:	00a7ea63          	bltu	a5,a0,50 <.L98>
  40:	000007b7          	lui	a5,0x0
  44:	0107a783          	lw	a5,16(a5) # 10 <.LBE36+0x8>

00000048 <.LBE38>:
  48:	4431                	li	s0,12

0000004a <.LBB39>:
  4a:	0087c783          	lbu	a5,8(a5)
  4e:	ef85                	bnez	a5,86 <.L97>

00000050 <.L98>:
  50:	6789                	lui	a5,0x2
  52:	01178713          	addi	a4,a5,17 # 2011 <.LLST235+0xa>
  56:	04e90663          	beq	s2,a4,a2 <.L99>
  5a:	01278713          	addi	a4,a5,18
  5e:	04e90c63          	beq	s2,a4,b6 <.L100>
  62:	07c1                	addi	a5,a5,16
  64:	4401                	li	s0,0
  66:	02f91063          	bne	s2,a5,86 <.L97>
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.L98+0x1a>

00000072 <.LVL249>:
  72:	4701                	li	a4,0
  74:	4685                	li	a3,1
  76:	00e10613          	addi	a2,sp,14
  7a:	4581                	li	a1,0
  7c:	4501                	li	a0,0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL249+0xc>

00000086 <.L97>:
  86:	854e                	mv	a0,s3
  88:	85a2                	mv	a1,s0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L97+0x4>

00000092 <.LVL251>:
  92:	50b2                	lw	ra,44(sp)
  94:	5422                	lw	s0,40(sp)

00000096 <.LVL252>:
  96:	5492                	lw	s1,36(sp)

00000098 <.LVL253>:
  98:	5902                	lw	s2,32(sp)
  9a:	49f2                	lw	s3,28(sp)
  9c:	4501                	li	a0,0
  9e:	6145                	addi	sp,sp,48
  a0:	8082                	ret

000000a2 <.L99>:
  a2:	0004c583          	lbu	a1,0(s1)
  a6:	00148513          	addi	a0,s1,1
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.L99+0x8>

000000b2 <.L105>:
  b2:	842a                	mv	s0,a0

000000b4 <.LBE34>:
  b4:	bfc9                	j	86 <.L97>

000000b6 <.L100>:
  b6:	0004c583          	lbu	a1,0(s1)
  ba:	00148513          	addi	a0,s1,1
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <.L100+0x8>

000000c6 <.LVL258>:
  c6:	b7f5                	j	b2 <.L105>

Disassembly of section .text.hci_le_set_host_ch_class_cmd_handler:

00000000 <hci_le_set_host_ch_class_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040413          	mv	s0,s0
   c:	03744783          	lbu	a5,55(s0) # 37 <.LVL263+0x9>
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	ce06                	sw	ra,28(sp)
  16:	ca26                	sw	s1,20(sp)
  18:	892e                	mv	s2,a1
  1a:	89b6                	mv	s3,a3
  1c:	45b1                	li	a1,12

0000001e <.LVL260>:
  1e:	c3b9                	beqz	a5,64 <.L107>

00000020 <.LBB41>:
  20:	4595                	li	a1,5
  22:	854a                	mv	a0,s2

00000024 <.LVL261>:
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL261>

0000002c <.LVL262>:
  2c:	84aa                	mv	s1,a0

0000002e <.LVL263>:
  2e:	4581                	li	a1,0
  30:	06400613          	li	a2,100
  34:	4501                	li	a0,0
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL263+0x8>

0000003e <.LVL264>:
  3e:	14f9                	addi	s1,s1,-2

00000040 <.LVL265>:
  40:	02040ba3          	sb	zero,55(s0)
  44:	0ff4f493          	andi	s1,s1,255
  48:	02300793          	li	a5,35
  4c:	45c9                	li	a1,18
  4e:	0097eb63          	bltu	a5,s1,64 <.L107>
  52:	85ca                	mv	a1,s2
  54:	4615                	li	a2,5
  56:	03240513          	addi	a0,s0,50
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL265+0x1a>

00000062 <.LVL266>:
  62:	4581                	li	a1,0

00000064 <.L107>:
  64:	854e                	mv	a0,s3
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.L107+0x2>

0000006e <.LVL268>:
  6e:	40f2                	lw	ra,28(sp)
  70:	4462                	lw	s0,24(sp)
  72:	44d2                	lw	s1,20(sp)
  74:	4942                	lw	s2,16(sp)

00000076 <.LVL269>:
  76:	49b2                	lw	s3,12(sp)
  78:	4501                	li	a0,0
  7a:	6105                	addi	sp,sp,32
  7c:	8082                	ret

Disassembly of section .text.hci_le_create_con_cmd_handler:

00000000 <hci_le_create_con_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL271>:
   4:	ca26                	sw	s1,20(sp)
   6:	c62e                	sw	a1,12(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	cc22                	sw	s0,24(sp)
   c:	84b6                	mv	s1,a3
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL271+0xa>

00000016 <.LVL272>:
  16:	4741                	li	a4,16
  18:	45b2                	lw	a1,12(sp)
  1a:	02e50b63          	beq	a0,a4,50 <.L113>
  1e:	87aa                	mv	a5,a0
  20:	00a76d63          	bltu	a4,a0,3a <.L114>
  24:	c515                	beqz	a0,50 <.L113>
  26:	470d                	li	a4,3
  28:	4509                	li	a0,2

0000002a <.L126>:
  2a:	45b1                	li	a1,12
  2c:	04e79a63          	bne	a5,a4,80 <.L116>

00000030 <.L112>:
  30:	40f2                	lw	ra,28(sp)
  32:	4462                	lw	s0,24(sp)
  34:	44d2                	lw	s1,20(sp)
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

0000003a <.L114>:
  3a:	02000713          	li	a4,32
  3e:	00e50963          	beq	a0,a4,50 <.L113>
  42:	02300713          	li	a4,35
  46:	4509                	li	a0,2
  48:	fee784e3          	beq	a5,a4,30 <.L112>
  4c:	474d                	li	a4,19
  4e:	bff1                	j	2a <.L126>

00000050 <.L113>:
  50:	852e                	mv	a0,a1
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.L113+0x2>

0000005a <.LVL275>:
  5a:	85aa                	mv	a1,a0

0000005c <.LVL276>:
  5c:	e115                	bnez	a0,80 <.L116>
  5e:	00000437          	lui	s0,0x0
  62:	00040413          	mv	s0,s0
  66:	c62a                	sw	a0,12(sp)

00000068 <.LVL277>:
  68:	04941723          	sh	s1,78(s0) # 4e <.L114+0x14>
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL277+0x4>

00000074 <.LVL278>:
  74:	45b2                	lw	a1,12(sp)
  76:	4785                	li	a5,1
  78:	04a40823          	sb	a0,80(s0)
  7c:	04f40623          	sb	a5,76(s0)

00000080 <.L116>:
  80:	8526                	mv	a0,s1
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.L116+0x2>

0000008a <.LVL280>:
  8a:	4501                	li	a0,0
  8c:	b755                	j	30 <.L112>

Disassembly of section .text.hci_le_set_scan_en_cmd_handler:

00000000 <hci_le_set_scan_en_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL282>:
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c606                	sw	ra,12(sp)
   a:	c04a                	sw	s2,0(sp)
   c:	842e                	mv	s0,a1
   e:	84b6                	mv	s1,a3
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL282+0xc>

00000018 <.LVL283>:
  18:	4749                	li	a4,18
  1a:	0ce50263          	beq	a0,a4,de <.L140>
  1e:	87aa                	mv	a5,a0
  20:	08a76563          	bltu	a4,a0,aa <.L129>
  24:	4709                	li	a4,2
  26:	0ae50c63          	beq	a0,a4,de <.L140>
  2a:	06a76a63          	bltu	a4,a0,9e <.L130>
  2e:	4705                	li	a4,1

00000030 <.L149>:
  30:	0ae78463          	beq	a5,a4,d8 <.L131>

00000034 <.L132>:
  34:	00044683          	lbu	a3,0(s0)
  38:	4705                	li	a4,1
  3a:	45b1                	li	a1,12
  3c:	02e69e63          	bne	a3,a4,78 <.L128>

00000040 <.L135>:
  40:	4501                	li	a0,0
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.L135+0x2>

0000004a <.LVL284>:
  4a:	000007b7          	lui	a5,0x0
  4e:	00078793          	mv	a5,a5
  52:	04a78823          	sb	a0,80(a5) # 50 <.LVL284+0x6>
  56:	4905                	li	s2,1
  58:	8522                	mv	a0,s0
  5a:	04979723          	sh	s1,78(a5)
  5e:	05278623          	sb	s2,76(a5)
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL284+0x18>

0000006a <.LVL285>:
  6a:	85aa                	mv	a1,a0

0000006c <.LVL286>:
  6c:	e511                	bnez	a0,78 <.L128>
  6e:	00044703          	lbu	a4,0(s0)
  72:	4501                	li	a0,0

00000074 <.LVL287>:
  74:	05271563          	bne	a4,s2,be <.L127>

00000078 <.L128>:
  78:	8526                	mv	a0,s1
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L128+0x2>

00000082 <.LVL288>:
  82:	000007b7          	lui	a5,0x0
  86:	00078793          	mv	a5,a5
  8a:	0507c703          	lbu	a4,80(a5) # 50 <.LVL284+0x6>
  8e:	4501                	li	a0,0
  90:	9b41                	andi	a4,a4,-16
  92:	04e78823          	sb	a4,80(a5)
  96:	4705                	li	a4,1
  98:	04e78623          	sb	a4,76(a5)
  9c:	a00d                	j	be <.L127>

0000009e <.L130>:
  9e:	470d                	li	a4,3
  a0:	4509                	li	a0,2
  a2:	00e78e63          	beq	a5,a4,be <.L127>
  a6:	4745                	li	a4,17
  a8:	b761                	j	30 <.L149>

000000aa <.L129>:
  aa:	02100713          	li	a4,33
  ae:	02e50563          	beq	a0,a4,d8 <.L131>
  b2:	00a76c63          	bltu	a4,a0,ca <.L134>
  b6:	474d                	li	a4,19

000000b8 <.L151>:
  b8:	4509                	li	a0,2
  ba:	f6e79de3          	bne	a5,a4,34 <.L132>

000000be <.L127>:
  be:	40b2                	lw	ra,12(sp)
  c0:	4422                	lw	s0,8(sp)

000000c2 <.LVL289>:
  c2:	4492                	lw	s1,4(sp)
  c4:	4902                	lw	s2,0(sp)
  c6:	0141                	addi	sp,sp,16
  c8:	8082                	ret

000000ca <.L134>:
  ca:	02200713          	li	a4,34
  ce:	00e50863          	beq	a0,a4,de <.L140>
  d2:	02300713          	li	a4,35
  d6:	b7cd                	j	b8 <.L151>

000000d8 <.L131>:
  d8:	00044783          	lbu	a5,0(s0)
  dc:	d3b5                	beqz	a5,40 <.L135>

000000de <.L140>:
  de:	45b1                	li	a1,12
  e0:	bf61                	j	78 <.L128>

Disassembly of section .text.hci_le_set_scan_param_cmd_handler:

00000000 <hci_le_set_scan_param_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL292>:
   4:	cc22                	sw	s0,24(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	c62e                	sw	a1,12(sp)
   a:	8436                	mv	s0,a3
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL292+0x8>

00000014 <.LVL293>:
  14:	4745                	li	a4,17
  16:	47b1                	li	a5,12
  18:	02e50063          	beq	a0,a4,38 <.L153>
  1c:	02100713          	li	a4,33
  20:	00e50c63          	beq	a0,a4,38 <.L153>
  24:	4705                	li	a4,1
  26:	00e50963          	beq	a0,a4,38 <.L153>
  2a:	45b2                	lw	a1,12(sp)
  2c:	852e                	mv	a0,a1
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL293+0x1a>

00000036 <.LVL294>:
  36:	87aa                	mv	a5,a0

00000038 <.L153>:
  38:	8522                	mv	a0,s0
  3a:	85be                	mv	a1,a5
  3c:	00000097          	auipc	ra,0x0
  40:	000080e7          	jalr	ra # 3c <.L153+0x4>

00000044 <.LVL296>:
  44:	40f2                	lw	ra,28(sp)
  46:	4462                	lw	s0,24(sp)
  48:	4501                	li	a0,0
  4a:	6105                	addi	sp,sp,32

0000004c <.LVL297>:
  4c:	8082                	ret

Disassembly of section .text.hci_le_set_scan_rsp_data_cmd_handler:

00000000 <hci_le_set_scan_rsp_data_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL299>:
   4:	cc22                	sw	s0,24(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	842e                	mv	s0,a1
  10:	8936                	mv	s2,a3
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL299+0xe>

0000001a <.LVL300>:
  1a:	1541                	addi	a0,a0,-16
  1c:	478d                	li	a5,3
  1e:	04a7ef63          	bltu	a5,a0,7c <.L159>
  22:	00044703          	lbu	a4,0(s0)
  26:	47fd                	li	a5,31
  28:	06e7e263          	bltu	a5,a4,8c <.L162>

0000002c <.LBB42>:
  2c:	300029f3          	csrr	s3,mstatus

00000030 <.LBB44>:
  30:	300477f3          	csrrci	a5,mstatus,8

00000034 <.LBE44>:
  34:	000004b7          	lui	s1,0x0
  38:	00048793          	mv	a5,s1
  3c:	4bdc                	lw	a5,20(a5)
  3e:	00048493          	mv	s1,s1
  42:	43c8                	lw	a0,4(a5)
  44:	c901                	beqz	a0,54 <.L161>
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LBE44+0x12>

0000004e <.LVL303>:
  4e:	48dc                	lw	a5,20(s1)
  50:	0007a223          	sw	zero,4(a5)

00000054 <.L161>:
  54:	30099073          	csrw	mstatus,s3

00000058 <.LBE42>:
  58:	48dc                	lw	a5,20(s1)

0000005a <.LBB45>:
  5a:	1451                	addi	s0,s0,-12

0000005c <.LBE45>:
  5c:	4581                	li	a1,0
  5e:	c3c0                	sw	s0,4(a5)

00000060 <.LVL306>:
  60:	4405                	li	s0,1

00000062 <.L160>:
  62:	854a                	mv	a0,s2
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L160+0x2>

0000006c <.LVL308>:
  6c:	8522                	mv	a0,s0
  6e:	40f2                	lw	ra,28(sp)
  70:	4462                	lw	s0,24(sp)

00000072 <.LVL309>:
  72:	44d2                	lw	s1,20(sp)
  74:	4942                	lw	s2,16(sp)
  76:	49b2                	lw	s3,12(sp)
  78:	6105                	addi	sp,sp,32
  7a:	8082                	ret

0000007c <.L159>:
  7c:	8522                	mv	a0,s0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L159+0x2>

00000086 <.LVL311>:
  86:	85aa                	mv	a1,a0

00000088 <.L167>:
  88:	4401                	li	s0,0

0000008a <.LVL313>:
  8a:	bfe1                	j	62 <.L160>

0000008c <.L162>:
  8c:	45c9                	li	a1,18
  8e:	bfed                	j	88 <.L167>

Disassembly of section .text.hci_le_set_adv_en_cmd_handler:

00000000 <hci_le_set_adv_en_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL316>:
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c606                	sw	ra,12(sp)
   a:	842e                	mv	s0,a1
   c:	84b6                	mv	s1,a3
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LVL316+0xa>

00000016 <.LVL317>:
  16:	47c1                	li	a5,16
  18:	06f56363          	bltu	a0,a5,7e <.L169>
  1c:	47cd                	li	a5,19
  1e:	00a7fe63          	bgeu	a5,a0,3a <.L170>
  22:	1501                	addi	a0,a0,-32
  24:	0ff57513          	andi	a0,a0,255
  28:	478d                	li	a5,3
  2a:	04a7ea63          	bltu	a5,a0,7e <.L169>
  2e:	4509                	li	a0,2

00000030 <.L168>:
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL318>:
  34:	4492                	lw	s1,4(sp)
  36:	0141                	addi	sp,sp,16
  38:	8082                	ret

0000003a <.L170>:
  3a:	00044783          	lbu	a5,0(s0)
  3e:	4531                	li	a0,12
  40:	e7a9                	bnez	a5,8a <.L173>

00000042 <.L172>:
  42:	4501                	li	a0,0
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <.L172+0x2>

0000004c <.LVL320>:
  4c:	000007b7          	lui	a5,0x0
  50:	00078793          	mv	a5,a5
  54:	06a78723          	sb	a0,110(a5) # 6e <.LVL321+0x8>
  58:	8522                	mv	a0,s0
  5a:	06979623          	sh	s1,108(a5)
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LVL320+0x12>

00000066 <.LVL321>:
  66:	e115                	bnez	a0,8a <.L173>
  68:	00044703          	lbu	a4,0(s0)
  6c:	4785                	li	a5,1
  6e:	00f70e63          	beq	a4,a5,8a <.L173>

00000072 <.L174>:
  72:	000007b7          	lui	a5,0x0
  76:	04078623          	sb	zero,76(a5) # 4c <.LVL320>
  7a:	4501                	li	a0,0
  7c:	bf55                	j	30 <.L168>

0000007e <.L169>:
  7e:	00044703          	lbu	a4,0(s0)
  82:	4785                	li	a5,1
  84:	4531                	li	a0,12
  86:	faf70ee3          	beq	a4,a5,42 <.L172>

0000008a <.L173>:
  8a:	85aa                	mv	a1,a0
  8c:	8526                	mv	a0,s1
  8e:	00000097          	auipc	ra,0x0
  92:	000080e7          	jalr	ra # 8e <.L173+0x4>

00000096 <.LVL323>:
  96:	bff1                	j	72 <.L174>

Disassembly of section .text.hci_le_set_adv_data_cmd_handler:

00000000 <hci_le_set_adv_data_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL325>:
   4:	cc22                	sw	s0,24(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	ca26                	sw	s1,20(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	842e                	mv	s0,a1
  10:	8936                	mv	s2,a3
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL325+0xe>

0000001a <.LVL326>:
  1a:	1541                	addi	a0,a0,-16
  1c:	478d                	li	a5,3
  1e:	04a7ef63          	bltu	a5,a0,7c <.L181>
  22:	00044703          	lbu	a4,0(s0)
  26:	47fd                	li	a5,31
  28:	06e7e263          	bltu	a5,a4,8c <.L184>

0000002c <.LBB47>:
  2c:	300029f3          	csrr	s3,mstatus

00000030 <.LBB49>:
  30:	300477f3          	csrrci	a5,mstatus,8

00000034 <.LBE49>:
  34:	000004b7          	lui	s1,0x0
  38:	00048793          	mv	a5,s1
  3c:	4bdc                	lw	a5,20(a5)
  3e:	00048493          	mv	s1,s1
  42:	4388                	lw	a0,0(a5)
  44:	c901                	beqz	a0,54 <.L183>
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LBE49+0x12>

0000004e <.LVL329>:
  4e:	48dc                	lw	a5,20(s1)
  50:	0007a023          	sw	zero,0(a5)

00000054 <.L183>:
  54:	30099073          	csrw	mstatus,s3

00000058 <.LBE47>:
  58:	48dc                	lw	a5,20(s1)

0000005a <.LBB50>:
  5a:	1451                	addi	s0,s0,-12

0000005c <.LBE50>:
  5c:	4581                	li	a1,0
  5e:	c380                	sw	s0,0(a5)

00000060 <.LVL332>:
  60:	4405                	li	s0,1

00000062 <.L182>:
  62:	854a                	mv	a0,s2
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L182+0x2>

0000006c <.LVL334>:
  6c:	8522                	mv	a0,s0
  6e:	40f2                	lw	ra,28(sp)
  70:	4462                	lw	s0,24(sp)

00000072 <.LVL335>:
  72:	44d2                	lw	s1,20(sp)
  74:	4942                	lw	s2,16(sp)
  76:	49b2                	lw	s3,12(sp)
  78:	6105                	addi	sp,sp,32
  7a:	8082                	ret

0000007c <.L181>:
  7c:	8522                	mv	a0,s0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L181+0x2>

00000086 <.LVL337>:
  86:	85aa                	mv	a1,a0

00000088 <.L189>:
  88:	4401                	li	s0,0

0000008a <.LVL339>:
  8a:	bfe1                	j	62 <.L182>

0000008c <.L184>:
  8c:	45c9                	li	a1,18
  8e:	bfed                	j	88 <.L189>

Disassembly of section .text.hci_le_set_adv_param_cmd_handler:

00000000 <hci_le_set_adv_param_cmd_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	4501                	li	a0,0

00000004 <.LVL342>:
   4:	cc22                	sw	s0,24(sp)
   6:	c62e                	sw	a1,12(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	8436                	mv	s0,a3
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL342+0x8>

00000014 <.LVL343>:
  14:	ff050713          	addi	a4,a0,-16
  18:	478d                	li	a5,3
  1a:	45b2                	lw	a1,12(sp)
  1c:	4531                	li	a0,12
  1e:	00e7f763          	bgeu	a5,a4,2c <.L191>
  22:	852e                	mv	a0,a1
  24:	00000097          	auipc	ra,0x0
  28:	000080e7          	jalr	ra # 24 <.LVL343+0x10>

0000002c <.L191>:
  2c:	85aa                	mv	a1,a0
  2e:	8522                	mv	a0,s0

00000030 <.LVL345>:
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL345>

00000038 <.LVL346>:
  38:	40f2                	lw	ra,28(sp)
  3a:	4462                	lw	s0,24(sp)
  3c:	4501                	li	a0,0
  3e:	6105                	addi	sp,sp,32

00000040 <.LVL347>:
  40:	8082                	ret

Disassembly of section .text.hci_le_set_rand_add_cmd_handler:

00000000 <hci_le_set_rand_add_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL349>:
   4:	c422                	sw	s0,8(sp)
   6:	c226                	sw	s1,4(sp)
   8:	c04a                	sw	s2,0(sp)
   a:	c606                	sw	ra,12(sp)
   c:	84ae                	mv	s1,a1
   e:	8936                	mv	s2,a3
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <.LVL349+0xc>

00000018 <.LVL350>:
  18:	4431                	li	s0,12
  1a:	e51d                	bnez	a0,48 <.L196>
  1c:	000005b7          	lui	a1,0x0
  20:	842a                	mv	s0,a0
  22:	00058593          	mv	a1,a1
  26:	8526                	mv	a0,s1
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL350+0x10>

00000030 <.LVL351>:
  30:	e90d                	bnez	a0,62 <.L198>
  32:	000007b7          	lui	a5,0x0
  36:	0007a783          	lw	a5,0(a5) # 0 <hci_le_set_rand_add_cmd_handler>
  3a:	00000537          	lui	a0,0x0
  3e:	4619                	li	a2,6
  40:	85a6                	mv	a1,s1
  42:	05b50513          	addi	a0,a0,91 # 5b <.LVL355+0x1>
  46:	9782                	jalr	a5

00000048 <.L196>:
  48:	854a                	mv	a0,s2
  4a:	85a2                	mv	a1,s0
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L196+0x4>

00000054 <.LVL353>:
  54:	40b2                	lw	ra,12(sp)
  56:	4422                	lw	s0,8(sp)

00000058 <.LVL354>:
  58:	4492                	lw	s1,4(sp)

0000005a <.LVL355>:
  5a:	4902                	lw	s2,0(sp)
  5c:	4501                	li	a0,0
  5e:	0141                	addi	sp,sp,16
  60:	8082                	ret

00000062 <.L198>:
  62:	4449                	li	s0,18
  64:	b7d5                	j	48 <.L196>

Disassembly of section .text.hci_le_rd_local_p256_public_key_cmd_handler:

00000000 <hci_le_rd_local_p256_public_key_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	000007b7          	lui	a5,0x0
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	c226                	sw	s1,4(sp)
   c:	00078713          	mv	a4,a5
  10:	0d374483          	lbu	s1,211(a4)
  14:	00078413          	mv	s0,a5
  18:	c091                	beqz	s1,1c <.L201>
  1a:	44b1                	li	s1,12

0000001c <.L201>:
  1c:	85a6                	mv	a1,s1

0000001e <.LVL359>:
  1e:	8536                	mv	a0,a3

00000020 <.LVL360>:
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LVL360>

00000028 <.LVL361>:
  28:	e48d                	bnez	s1,52 <.L202>

0000002a <.LBB55>:
  2a:	000004b7          	lui	s1,0x0
  2e:	4581                	li	a1,0
  30:	0b348513          	addi	a0,s1,179 # b3 <.L105+0x1>
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LBB55+0xa>

0000003c <.LVL363>:
  3c:	4785                	li	a5,1
  3e:	4601                	li	a2,0
  40:	4599                	li	a1,6
  42:	0b348513          	addi	a0,s1,179
  46:	0cf409a3          	sb	a5,211(s0)
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL363+0xe>

00000052 <.L202>:
  52:	40b2                	lw	ra,12(sp)
  54:	4422                	lw	s0,8(sp)
  56:	4492                	lw	s1,4(sp)
  58:	4501                	li	a0,0
  5a:	0141                	addi	sp,sp,16
  5c:	8082                	ret

Disassembly of section .text.hci_le_test_end_cmd_handler:

00000000 <hci_le_test_end_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL366>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
   a:	000080e7          	jalr	ra # 6 <.LVL366+0x2>

0000000e <.LVL367>:
   e:	02400793          	li	a5,36
  12:	02f51963          	bne	a0,a5,44 <.L208>

00000016 <.LBB62>:
  16:	000007b7          	lui	a5,0x0
  1a:	00078793          	mv	a5,a5
  1e:	47a8                	lw	a0,72(a5)
  20:	4705                	li	a4,1
  22:	04e78ca3          	sb	a4,89(a5) # 59 <.L208+0x15>
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LBB62+0x10>

0000002e <.LVL369>:
  2e:	02300593          	li	a1,35
  32:	4501                	li	a0,0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL369+0x6>

0000003c <.L209>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4501                	li	a0,0
  40:	0141                	addi	sp,sp,16
  42:	8082                	ret

00000044 <.L208>:
  44:	6609                	lui	a2,0x2
  46:	6505                	lui	a0,0x1
  48:	4691                	li	a3,4
  4a:	067d                	addi	a2,a2,31
  4c:	4581                	li	a1,0
  4e:	80150513          	addi	a0,a0,-2047 # 801 <.LASF1000+0x8>
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.L208+0xe>

0000005a <.LVL371>:
  5a:	4731                	li	a4,12
  5c:	00051123          	sh	zero,2(a0)
  60:	00e50023          	sb	a4,0(a0)
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL371+0xa>

0000006c <.LVL372>:
  6c:	bfc1                	j	3c <.L209>

Disassembly of section .text.hci_le_create_con_cancel_cmd_handler:

00000000 <hci_le_create_con_cancel_cmd_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL374>:
   4:	c226                	sw	s1,4(sp)
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	84b6                	mv	s1,a3
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL374+0x8>

00000014 <.LVL375>:
  14:	47c9                	li	a5,18
  16:	00f50963          	beq	a0,a5,28 <.L212>
  1a:	02200793          	li	a5,34
  1e:	00f50563          	beq	a0,a5,28 <.L212>
  22:	4789                	li	a5,2
  24:	04f51b63          	bne	a0,a5,7a <.L213>

00000028 <.L212>:
  28:	00000437          	lui	s0,0x0
  2c:	00040413          	mv	s0,s0
  30:	4868                	lw	a0,84(s0)
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.L212+0xa>

0000003a <.LVL377>:
  3a:	05044783          	lbu	a5,80(s0) # 50 <.LVL377+0x16>
  3e:	4501                	li	a0,0
  40:	04941723          	sh	s1,78(s0)
  44:	9bc1                	andi	a5,a5,-16
  46:	0027e793          	ori	a5,a5,2
  4a:	04f40823          	sb	a5,80(s0)
  4e:	4785                	li	a5,1
  50:	04f40623          	sb	a5,76(s0)
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL377+0x1a>

0000005c <.LVL378>:
  5c:	0f057593          	andi	a1,a0,240
  60:	0035e593          	ori	a1,a1,3
  64:	4501                	li	a0,0
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL378+0xa>

0000006e <.L214>:
  6e:	40b2                	lw	ra,12(sp)
  70:	4422                	lw	s0,8(sp)
  72:	4492                	lw	s1,4(sp)
  74:	4501                	li	a0,0
  76:	0141                	addi	sp,sp,16
  78:	8082                	ret

0000007a <.L213>:
  7a:	45b1                	li	a1,12
  7c:	8526                	mv	a0,s1
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L213+0x4>

00000086 <.LVL381>:
  86:	b7e5                	j	6e <.L214>

Disassembly of section .text.hci_command_handler:

00000000 <hci_command_handler>:
   0:	00000737          	lui	a4,0x0
   4:	00070613          	mv	a2,a4

00000008 <.LVL383>:
   8:	4781                	li	a5,0
   a:	00070713          	mv	a4,a4
   e:	02d00513          	li	a0,45

00000012 <.L219>:
  12:	00065803          	lhu	a6,0(a2) # 2000 <.LASF502+0xb>
  16:	00d81b63          	bne	a6,a3,2c <.L217>
  1a:	078e                	slli	a5,a5,0x3

0000001c <.LVL385>:
  1c:	97ba                	add	a5,a5,a4
  1e:	0047a303          	lw	t1,4(a5)
  22:	00030963          	beqz	t1,34 <.L216>
  26:	8636                	mv	a2,a3
  28:	8536                	mv	a0,a3
  2a:	8302                	jr	t1

0000002c <.L217>:
  2c:	0785                	addi	a5,a5,1
  2e:	0621                	addi	a2,a2,8
  30:	fea791e3          	bne	a5,a0,12 <.L219>

00000034 <.L216>:
  34:	4501                	li	a0,0
  36:	8082                	ret
