
tpc.o:     file format elf32-littleriscv


Disassembly of section .text.bl_tpc_update_power_table:

00000000 <bl_tpc_update_power_table>:
   0:	715d                	addi	sp,sp,-80
   2:	c4a2                	sw	s0,72(sp)
   4:	c686                	sw	ra,76(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <bl_tpc_update_power_table+0x8>

00000010 <.LVL1>:
  10:	0038                	addi	a4,sp,8
  12:	01840793          	addi	a5,s0,24
  16:	853a                	mv	a0,a4
  18:	02640413          	addi	s0,s0,38

0000001c <.L2>:
  1c:	00879a63          	bne	a5,s0,30 <.L3>
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.L2+0x4>

00000028 <.LVL3>:
  28:	40b6                	lw	ra,76(sp)
  2a:	4426                	lw	s0,72(sp)

0000002c <.LVL4>:
  2c:	6161                	addi	sp,sp,80
  2e:	8082                	ret

00000030 <.L3>:
  30:	00078683          	lb	a3,0(a5)
  34:	0711                	addi	a4,a4,4
  36:	0785                	addi	a5,a5,1

00000038 <.LVL6>:
  38:	fed72e23          	sw	a3,-4(a4)

0000003c <.LVL7>:
  3c:	b7c5                	j	1c <.L2>

Disassembly of section .text.bl_tpc_power_table_get:

00000000 <bl_tpc_power_table_get>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	842a                	mv	s0,a0
   8:	00000097          	auipc	ra,0x0
   c:	000080e7          	jalr	ra # 8 <bl_tpc_power_table_get+0x8>

00000010 <.LVL9>:
  10:	47e1                	li	a5,24
  12:	02600713          	li	a4,38

00000016 <.L6>:
  16:	00f406b3          	add	a3,s0,a5
  1a:	00068023          	sb	zero,0(a3)
  1e:	0785                	addi	a5,a5,1
  20:	fee79be3          	bne	a5,a4,16 <.L6>
  24:	40b2                	lw	ra,12(sp)
  26:	4422                	lw	s0,8(sp)

00000028 <.LVL12>:
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret

Disassembly of section .text.bl_tpc_update_power_table_rate:

00000000 <bl_tpc_update_power_table_rate>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <bl_tpc_update_power_table_rate>

Disassembly of section .text.bl_tpc_update_power_table_channel_offset:

00000000 <bl_tpc_update_power_table_channel_offset>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <bl_tpc_update_power_table_channel_offset>

Disassembly of section .text.bl_tpc_update_power_rate_11b:

00000000 <bl_tpc_update_power_rate_11b>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <bl_tpc_update_power_rate_11b>

Disassembly of section .text.bl_tpc_update_power_rate_11g:

00000000 <bl_tpc_update_power_rate_11g>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <bl_tpc_update_power_rate_11g>

Disassembly of section .text.bl_tpc_update_power_rate_11n:

00000000 <bl_tpc_update_power_rate_11n>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <bl_tpc_update_power_rate_11n>

Disassembly of section .text.tpc_update_tx_power:

00000000 <tpc_update_tx_power>:
   0:	1141                	addi	sp,sp,-16
   2:	4581                	li	a1,0
   4:	4509                	li	a0,2

00000006 <.LVL22>:
   6:	c606                	sw	ra,12(sp)
   8:	c422                	sw	s0,8(sp)
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LVL22+0x4>

00000012 <.LBB14>:
  12:	44b00437          	lui	s0,0x44b00
  16:	0a042783          	lw	a5,160(s0) # 44b000a0 <.LASF320+0x44afd7a1>

0000001a <.LBE14>:
  1a:	4581                	li	a1,0

0000001c <.LBB17>:
  1c:	f007f793          	andi	a5,a5,-256
  20:	8d5d                	or	a0,a0,a5

00000022 <.LVL24>:
  22:	0aa42023          	sw	a0,160(s0)

00000026 <.LBE17>:
  26:	4501                	li	a0,0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LBE17+0x2>

00000030 <.LBB18>:
  30:	0a042783          	lw	a5,160(s0)
  34:	7741                	lui	a4,0xffff0
  36:	0ff70713          	addi	a4,a4,255 # ffff00ff <.LASF320+0xfffed800>
  3a:	0522                	slli	a0,a0,0x8

0000003c <.LVL26>:
  3c:	8ff9                	and	a5,a5,a4
  3e:	8d5d                	or	a0,a0,a5
  40:	0aa42023          	sw	a0,160(s0)

00000044 <.LBE18>:
  44:	40b2                	lw	ra,12(sp)
  46:	4422                	lw	s0,8(sp)
  48:	0141                	addi	sp,sp,16
  4a:	8082                	ret

Disassembly of section .text.tpc_get_vif_tx_power:

00000000 <tpc_get_vif_tx_power>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	0a07a503          	lw	a0,160(a5) # 44b000a0 <.LASF320+0x44afd7a1>

00000008 <.LBE20>:
   8:	0ff57513          	andi	a0,a0,255
   c:	8082                	ret

Disassembly of section .text.tpc_update_vif_tx_power:

00000000 <tpc_update_vif_tx_power>:
   0:	00058703          	lb	a4,0(a1)
   4:	07f00793          	li	a5,127
   8:	0af70263          	beq	a4,a5,ac <.L31>
   c:	1101                	addi	sp,sp,-32
   e:	cc22                	sw	s0,24(sp)

00000010 <.LVL30>:
  10:	ca26                	sw	s1,20(sp)
  12:	c84a                	sw	s2,16(sp)
  14:	84ae                	mv	s1,a1
  16:	ce06                	sw	ra,28(sp)
  18:	c64e                	sw	s3,12(sp)
  1a:	842a                	mv	s0,a0
  1c:	05950983          	lb	s3,89(a0)
  20:	85b2                	mv	a1,a2

00000022 <.LVL31>:
  22:	8526                	mv	a0,s1

00000024 <.LVL32>:
  24:	8932                	mv	s2,a2
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL32+0x2>

0000002e <.LVL33>:
  2e:	00048703          	lb	a4,0(s1)
  32:	05a40783          	lb	a5,90(s0)
  36:	04e40ca3          	sb	a4,89(s0)
  3a:	00e7da63          	bge	a5,a4,4e <.L20>
  3e:	00f48023          	sb	a5,0(s1)
  42:	85ca                	mv	a1,s2
  44:	8526                	mv	a0,s1
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL33+0x18>

0000004e <.L20>:
  4e:	00048783          	lb	a5,0(s1)
  52:	05378663          	beq	a5,s3,9e <.L17>

00000056 <.LBB22>:
  56:	35042783          	lw	a5,848(s0)

0000005a <.L22>:
  5a:	eb95                	bnez	a5,8e <.L23>
  5c:	4028                	lw	a0,64(s0)
  5e:	c121                	beqz	a0,9e <.L17>
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.L22+0x6>

00000068 <.LVL36>:
  68:	8522                	mv	a0,s0
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL36+0x2>

00000072 <.LVL37>:
  72:	c515                	beqz	a0,9e <.L17>
  74:	403c                	lw	a5,64(s0)

00000076 <.LBE24>:
  76:	4462                	lw	s0,24(sp)

00000078 <.LVL38>:
  78:	40f2                	lw	ra,28(sp)
  7a:	44d2                	lw	s1,20(sp)

0000007c <.LVL39>:
  7c:	4942                	lw	s2,16(sp)

0000007e <.LVL40>:
  7e:	49b2                	lw	s3,12(sp)

00000080 <.LBB25>:
  80:	00c78503          	lb	a0,12(a5)

00000084 <.LBE25>:
  84:	6105                	addi	sp,sp,32

00000086 <.LBB26>:
  86:	00000317          	auipc	t1,0x0
  8a:	00030067          	jr	t1 # 86 <.LBB26>

0000008e <.L23>:
  8e:	11a7c703          	lbu	a4,282(a5)
  92:	01076713          	ori	a4,a4,16
  96:	10e78d23          	sb	a4,282(a5)
  9a:	439c                	lw	a5,0(a5)

0000009c <.LBE23>:
  9c:	bf7d                	j	5a <.L22>

0000009e <.L17>:
  9e:	40f2                	lw	ra,28(sp)
  a0:	4462                	lw	s0,24(sp)

000000a2 <.LVL44>:
  a2:	44d2                	lw	s1,20(sp)

000000a4 <.LVL45>:
  a4:	4942                	lw	s2,16(sp)

000000a6 <.LVL46>:
  a6:	49b2                	lw	s3,12(sp)
  a8:	6105                	addi	sp,sp,32
  aa:	8082                	ret

000000ac <.L31>:
  ac:	8082                	ret

Disassembly of section .text.tpc_get_vif_tx_power_vs_rate:

00000000 <tpc_get_vif_tx_power_vs_rate>:
   0:	0ff57793          	andi	a5,a0,255
   4:	812d                	srli	a0,a0,0xb

00000006 <.LVL49>:
   6:	891d                	andi	a0,a0,7
   8:	07f7f593          	andi	a1,a5,127

0000000c <.LVL50>:
   c:	ed01                	bnez	a0,24 <.L36>
   e:	07c7f513          	andi	a0,a5,124
  12:	c509                	beqz	a0,1c <.L35>
  14:	15f1                	addi	a1,a1,-4

00000016 <.LVL51>:
  16:	0ff5f593          	andi	a1,a1,255

0000001a <.LVL52>:
  1a:	4505                	li	a0,1

0000001c <.L35>:
  1c:	00000317          	auipc	t1,0x0
  20:	00030067          	jr	t1 # 1c <.L35>

00000024 <.L36>:
  24:	4509                	li	a0,2
  26:	bfdd                	j	1c <.L35>

Disassembly of section .text.tpc_update_frame_tx_power:

00000000 <tpc_update_frame_tx_power>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	55fc                	lw	a5,108(a1)
   8:	5780                	lw	s0,40(a5)

0000000a <.LVL56>:
   a:	4848                	lw	a0,20(s0)

0000000c <.LVL57>:
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL57>

00000014 <.LVL58>:
  14:	d048                	sw	a0,36(s0)
  16:	40b2                	lw	ra,12(sp)
  18:	4422                	lw	s0,8(sp)

0000001a <.LVL59>:
  1a:	0141                	addi	sp,sp,16
  1c:	8082                	ret
