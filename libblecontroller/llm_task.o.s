
llm_task.o:     file format elf32-littleriscv


Disassembly of section .text.llm_dft_handler:

00000000 <llm_dft_handler>:
   0:	4501                	li	a0,0

00000002 <.LVL1>:
   2:	8082                	ret

Disassembly of section .text.llm_le_set_host_ch_class_cmd_sto_handler:

00000000 <llm_le_set_host_ch_class_cmd_sto_handler>:
   0:	000007b7          	lui	a5,0x0
   4:	4705                	li	a4,1
   6:	02e78ba3          	sb	a4,55(a5) # 37 <.LVL25+0x1>
   a:	4501                	li	a0,0

0000000c <.LVL3>:
   c:	8082                	ret

Disassembly of section .text.llm_ecc_result_ind_handler:

00000000 <llm_ecc_result_ind_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	00000737          	lui	a4,0x0
   6:	c84a                	sw	s2,16(sp)
   8:	c64e                	sw	s3,12(sp)
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)
  10:	00070793          	mv	a5,a4
  14:	0d37c783          	lbu	a5,211(a5)
  18:	4689                	li	a3,2

0000001a <.LVL5>:
  1a:	89ae                	mv	s3,a1
  1c:	00070913          	mv	s2,a4
  20:	06d79263          	bne	a5,a3,84 <.L4>
  24:	4521                	li	a0,8

00000026 <.LVL6>:
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL6>

0000002e <.LVL7>:
  2e:	c129                	beqz	a0,70 <.L6>

00000030 <.LBB5>:
  30:	6505                	lui	a0,0x1
  32:	03e00613          	li	a2,62
  36:	4581                	li	a1,0
  38:	02200693          	li	a3,34
  3c:	80450513          	addi	a0,a0,-2044 # 804 <.LASF130+0xf>
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LBB5+0x10>

00000048 <.LVL8>:
  48:	47a5                	li	a5,9
  4a:	00f50023          	sb	a5,0(a0)
  4e:	000500a3          	sb	zero,1(a0)
  52:	000007b7          	lui	a5,0x0
  56:	0007a783          	lw	a5,0(a5) # 0 <llm_ecc_result_ind_handler>
  5a:	842a                	mv	s0,a0

0000005c <.LVL9>:
  5c:	02000613          	li	a2,32
  60:	85ce                	mv	a1,s3
  62:	0509                	addi	a0,a0,2

00000064 <.L12>:
  64:	9782                	jalr	a5
  66:	8522                	mv	a0,s0
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.L12+0x4>

00000070 <.L6>:
  70:	40f2                	lw	ra,28(sp)
  72:	4462                	lw	s0,24(sp)
  74:	0c0909a3          	sb	zero,211(s2)
  78:	44d2                	lw	s1,20(sp)
  7a:	4942                	lw	s2,16(sp)
  7c:	49b2                	lw	s3,12(sp)

0000007e <.LVL13>:
  7e:	4501                	li	a0,0
  80:	6105                	addi	sp,sp,32
  82:	8082                	ret

00000084 <.L4>:
  84:	4705                	li	a4,1
  86:	fee795e3          	bne	a5,a4,70 <.L6>
  8a:	451d                	li	a0,7

0000008c <.LVL15>:
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.LVL15>

00000094 <.LVL16>:
  94:	dd71                	beqz	a0,70 <.L6>

00000096 <.LBB7>:
  96:	6505                	lui	a0,0x1
  98:	04200693          	li	a3,66
  9c:	03e00613          	li	a2,62
  a0:	4581                	li	a1,0
  a2:	80450513          	addi	a0,a0,-2044 # 804 <.LASF130+0xf>
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LBB7+0x10>

000000ae <.LVL17>:
  ae:	47a1                	li	a5,8
  b0:	00f50023          	sb	a5,0(a0)
  b4:	000500a3          	sb	zero,1(a0)
  b8:	000004b7          	lui	s1,0x0
  bc:	0004a783          	lw	a5,0(s1) # 0 <llm_ecc_result_ind_handler>
  c0:	842a                	mv	s0,a0
  c2:	02000613          	li	a2,32
  c6:	85ce                	mv	a1,s3
  c8:	0509                	addi	a0,a0,2
  ca:	9782                	jalr	a5

000000cc <.LVL19>:
  cc:	0004a783          	lw	a5,0(s1)
  d0:	02000613          	li	a2,32
  d4:	02098593          	addi	a1,s3,32
  d8:	02240513          	addi	a0,s0,34
  dc:	b761                	j	64 <.L12>

Disassembly of section .text.llm_enc_req_handler:

00000000 <llm_enc_req_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	c226                	sw	s1,4(sp)
   a:	00040513          	mv	a0,s0

0000000e <.LVL21>:
   e:	84ae                	mv	s1,a1
  10:	15d1                	addi	a1,a1,-12

00000012 <.LVL22>:
  12:	c606                	sw	ra,12(sp)
  14:	00040413          	mv	s0,s0
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL22+0x6>

00000020 <.LVL23>:
  20:	05844783          	lbu	a5,88(s0) # 58 <.LASF88+0x3>
  24:	e791                	bnez	a5,30 <.L14>
  26:	8526                	mv	a0,s1
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL23+0x8>

00000030 <.L14>:
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)
  34:	4492                	lw	s1,4(sp)

00000036 <.LVL25>:
  36:	4505                	li	a0,1
  38:	0141                	addi	sp,sp,16
  3a:	8082                	ret

Disassembly of section .text.lld_stop_ind_handler:

00000000 <lld_stop_ind_handler>:
   0:	1141                	addi	sp,sp,-16
   2:	4501                	li	a0,0

00000004 <.LVL27>:
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <.LVL27+0x4>

00000010 <.LVL28>:
  10:	0f057513          	andi	a0,a0,240
  14:	02000793          	li	a5,32
  18:	06f51663          	bne	a0,a5,84 <.L17>

0000001c <.L20>:
  1c:	4501                	li	a0,0
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.L20+0x2>

00000026 <.LVL30>:
  26:	02300793          	li	a5,35
  2a:	06f50b63          	beq	a0,a5,a0 <.L18>
  2e:	4501                	li	a0,0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL30+0xa>

00000038 <.LVL31>:
  38:	0f057513          	andi	a0,a0,240
  3c:	02000793          	li	a5,32
  40:	10f51b63          	bne	a0,a5,156 <.L27>
  44:	00000437          	lui	s0,0x0
  48:	00040793          	mv	a5,s0
  4c:	04c7c783          	lbu	a5,76(a5)
  50:	00040413          	mv	s0,s0
  54:	10079163          	bnez	a5,156 <.L27>
  58:	06e44783          	lbu	a5,110(s0) # 6e <.LVL31+0x36>
  5c:	4741                	li	a4,16
  5e:	0f07f793          	andi	a5,a5,240
  62:	00e79e63          	bne	a5,a4,7e <.L28>
  66:	06c45503          	lhu	a0,108(s0)
  6a:	4581                	li	a1,0
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.LVL31+0x34>

00000074 <.LVL32>:
  74:	06e44783          	lbu	a5,110(s0)
  78:	8bbd                	andi	a5,a5,15
  7a:	06f40723          	sb	a5,110(s0)

0000007e <.L28>:
  7e:	04042423          	sw	zero,72(s0)
  82:	a879                	j	120 <.L26>

00000084 <.L17>:
  84:	4501                	li	a0,0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.L17+0x2>

0000008e <.LVL34>:
  8e:	893d                	andi	a0,a0,15
  90:	478d                	li	a5,3
  92:	f8f505e3          	beq	a0,a5,1c <.L20>

00000096 <.L21>:
  96:	40b2                	lw	ra,12(sp)
  98:	4422                	lw	s0,8(sp)
  9a:	4501                	li	a0,0
  9c:	0141                	addi	sp,sp,16
  9e:	8082                	ret

000000a0 <.L18>:
  a0:	00000437          	lui	s0,0x0
  a4:	00040793          	mv	a5,s0
  a8:	06e7c783          	lbu	a5,110(a5)
  ac:	4741                	li	a4,16
  ae:	00040413          	mv	s0,s0
  b2:	0f07f793          	andi	a5,a5,240
  b6:	00e79e63          	bne	a5,a4,d2 <.L22>
  ba:	06c45503          	lhu	a0,108(s0) # 6c <.LVL31+0x34>
  be:	4581                	li	a1,0
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.L18+0x20>

000000c8 <.LVL36>:
  c8:	06e44783          	lbu	a5,110(s0)
  cc:	8bbd                	andi	a5,a5,15
  ce:	06f40723          	sb	a5,110(s0)

000000d2 <.L22>:
  d2:	05044783          	lbu	a5,80(s0)
  d6:	04042423          	sw	zero,72(s0)
  da:	4705                	li	a4,1
  dc:	17fd                	addi	a5,a5,-1
  de:	0ff7f793          	andi	a5,a5,255
  e2:	02f76b63          	bltu	a4,a5,118 <.L24>

000000e6 <.L46>:
  e6:	04e45503          	lhu	a0,78(s0)
  ea:	4581                	li	a1,0
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.L46+0x6>

000000f4 <.LVL37>:
  f4:	05044703          	lbu	a4,80(s0)
  f8:	4789                	li	a5,2
  fa:	00f71a63          	bne	a4,a5,10e <.L25>
  fe:	65c1                	lui	a1,0x10
 100:	4601                	li	a2,0
 102:	15fd                	addi	a1,a1,-1
 104:	4509                	li	a0,2
 106:	00000097          	auipc	ra,0x0
 10a:	000080e7          	jalr	ra # 106 <.LVL37+0x12>

0000010e <.L25>:
 10e:	05044783          	lbu	a5,80(s0)
 112:	9bc1                	andi	a5,a5,-16
 114:	04f40823          	sb	a5,80(s0)

00000118 <.L24>:
 118:	000007b7          	lui	a5,0x0
 11c:	0407aa23          	sw	zero,84(a5) # 54 <.LVL31+0x1c>

00000120 <.L26>:
 120:	4501                	li	a0,0
 122:	00000097          	auipc	ra,0x0
 126:	000080e7          	jalr	ra # 122 <.L26+0x2>

0000012a <.LVL39>:
 12a:	00000437          	lui	s0,0x0
 12e:	00040793          	mv	a5,s0
 132:	47bc                	lw	a5,72(a5)
 134:	00040413          	mv	s0,s0
 138:	efb9                	bnez	a5,196 <.L33>
 13a:	487c                	lw	a5,84(s0)
 13c:	4581                	li	a1,0
 13e:	c399                	beqz	a5,144 <.L43>
 140:	00f57593          	andi	a1,a0,15

00000144 <.L43>:
 144:	4501                	li	a0,0

00000146 <.LVL40>:
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.LVL40>

0000014e <.LBE13>:
 14e:	57fd                	li	a5,-1
 150:	04f41223          	sh	a5,68(s0) # 44 <.LVL31+0xc>
 154:	b789                	j	96 <.L21>

00000156 <.L27>:
 156:	4501                	li	a0,0
 158:	00000097          	auipc	ra,0x0
 15c:	000080e7          	jalr	ra # 158 <.L27+0x2>

00000160 <.LVL42>:
 160:	893d                	andi	a0,a0,15
 162:	478d                	li	a5,3
 164:	02f51863          	bne	a0,a5,194 <.L29>
 168:	00000437          	lui	s0,0x0
 16c:	00040793          	mv	a5,s0
 170:	04c7c783          	lbu	a5,76(a5)
 174:	00040413          	mv	s0,s0
 178:	cf91                	beqz	a5,194 <.L29>
 17a:	05044703          	lbu	a4,80(s0) # 50 <.LVL31+0x18>
 17e:	4685                	li	a3,1
 180:	fff70793          	addi	a5,a4,-1
 184:	0ff7f793          	andi	a5,a5,255
 188:	f4f6ffe3          	bgeu	a3,a5,e6 <.L46>
 18c:	47c5                	li	a5,17
 18e:	f8f715e3          	bne	a4,a5,118 <.L24>
 192:	bf91                	j	e6 <.L46>

00000194 <.L29>:
 194:	a001                	j	194 <.L29>

00000196 <.L33>:
 196:	487c                	lw	a5,84(s0)
 198:	e781                	bnez	a5,1a0 <.L36>
 19a:	0f057593          	andi	a1,a0,240
 19e:	b75d                	j	144 <.L43>

000001a0 <.L36>:
 1a0:	a001                	j	1a0 <.L36>
