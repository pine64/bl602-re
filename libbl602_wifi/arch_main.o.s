
libbl602_wifi/arch_main.o:     file format elf32-littleriscv


Disassembly of section .text.assert_rec:

00000000 <assert_rec>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	mac_hw_reset
			0: R_RISCV_RELAX	*ABS*
   4:	0007c703          	lbu	a4,0(a5) # 0 <assert_rec>
			4: R_RISCV_LO12_I	mac_hw_reset
			4: R_RISCV_RELAX	*ABS*
   8:	4785                	li	a5,1
   a:	02f71e63          	bne	a4,a5,46 <.L5>
			a: R_RISCV_BRANCH	.L5

0000000e <.LBB53>:
   e:	30047073          	csrci	mstatus,8

00000012 <.LBB55>:
  12:	000007b7          	lui	a5,0x0
			12: R_RISCV_HI20	ke_env
			12: R_RISCV_RELAX	*ABS*
  16:	0007a783          	lw	a5,0(a5) # 0 <assert_rec>
			16: R_RISCV_LO12_I	ke_env
			16: R_RISCV_RELAX	*ABS*

0000001a <.LBE55>:
  1a:	0207c363          	bltz	a5,40 <.L6>
			1a: R_RISCV_BRANCH	.L6
  1e:	1141                	addi	sp,sp,-16
  20:	c606                	sw	ra,12(sp)
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	hal_machw_disable_int
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LBE55+0x8>

0000002a <.LVL1>:
  2a:	80000537          	lui	a0,0x80000
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	ke_evt_set
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL1+0x4>

00000036 <.LBB57>:
  36:	30046073          	csrsi	mstatus,8

0000003a <.LBE57>:
  3a:	40b2                	lw	ra,12(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	8082                	ret

00000040 <.L6>:
  40:	30046073          	csrsi	mstatus,8
  44:	8082                	ret

00000046 <.L5>:
  46:	8082                	ret

Disassembly of section .text.assert_err:

00000000 <assert_err>:
   0:	a001                	j	0 <assert_err>
			0: R_RISCV_RVC_JUMP	.L10

Disassembly of section .text.assert_warn:

00000000 <assert_warn>:
   0:	8082                	ret

Disassembly of section .text.force_trigger:

00000000 <force_trigger>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBB63>:
   4:	449007b7          	lui	a5,0x44900
   8:	4705                	li	a4,1
   a:	dbb8                	sw	a4,112(a5)

0000000c <.LBB65>:
   c:	0607a823          	sw	zero,112(a5) # 44900070 <.LASF280+0x448fe87b>

00000010 <.LBB67>:
  10:	30046073          	csrsi	mstatus,8

00000014 <.LBE67>:
  14:	8082                	ret

Disassembly of section .text.coex_dump_pta:

00000000 <coex_dump_pta>:
   0:	449207b7          	lui	a5,0x44920
   4:	43dc                	lw	a5,4(a5)

00000006 <.LBE73>:
   6:	8082                	ret

Disassembly of section .text.coex_dump_wifi:

00000000 <coex_dump_wifi>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	4007a703          	lw	a4,1024(a5) # 44b00400 <.LASF280+0x44afec0b>

00000008 <.LBB93>:
   8:	4047a703          	lw	a4,1028(a5)

0000000c <.LBB100>:
   c:	4087a783          	lw	a5,1032(a5)

00000010 <.LBE100>:
  10:	8082                	ret

Disassembly of section .text.coex_wifi_rf_forece_enable:

00000000 <coex_wifi_rf_forece_enable>:
   0:	4581                	li	a1,0
   2:	c111                	beqz	a0,6 <.L16>
			2: R_RISCV_RVC_BRANCH	.L16
   4:	4505                	li	a0,1

00000006 <.L16>:
   6:	00000317          	auipc	t1,0x0
			6: R_RISCV_CALL	rfc_coex_force_to
			6: R_RISCV_RELAX	*ABS*
   a:	00030067          	jr	t1 # 6 <.L16>

Disassembly of section .text.coex_wifi_pti_forece_enable:

00000000 <coex_wifi_pti_forece_enable>:
   0:	44b007b7          	lui	a5,0x44b00
   4:	4007a703          	lw	a4,1024(a5) # 44b00400 <.LASF280+0x44afec0b>

00000008 <.LBE119>:
   8:	cd05                	beqz	a0,40 <.L18>
			8: R_RISCV_RVC_BRANCH	.L18

0000000a <.LBB122>:
   a:	f00006b7          	lui	a3,0xf0000
   e:	8f55                	or	a4,a4,a3
  10:	40e7a023          	sw	a4,1024(a5)

00000014 <.LBB123>:
  14:	4007a703          	lw	a4,1024(a5)
  18:	01076713          	ori	a4,a4,16

0000001c <.L25>:
  1c:	40e7a023          	sw	a4,1024(a5)

00000020 <.LBB128>:
  20:	4007a603          	lw	a2,1024(a5)
  24:	fc000737          	lui	a4,0xfc000
  28:	fff70693          	addi	a3,a4,-1 # fbffffff <.LASF280+0xfbffe80a>

0000002c <.LBE128>:
  2c:	00461713          	slli	a4,a2,0x4
  30:	00075a63          	bgez	a4,44 <.L21>
			30: R_RISCV_BRANCH	.L21

00000034 <.LBB130>:
  34:	4007a703          	lw	a4,1024(a5)
  38:	8f75                	and	a4,a4,a3

0000003a <.L22>:
  3a:	40e7a023          	sw	a4,1024(a5)

0000003e <.LBE132>:
  3e:	8082                	ret

00000040 <.L18>:
  40:	9b3d                	andi	a4,a4,-17
  42:	bfe9                	j	1c <.L25>
			42: R_RISCV_RVC_JUMP	.L25

00000044 <.L21>:
  44:	4007a703          	lw	a4,1024(a5)
  48:	8f75                	and	a4,a4,a3
  4a:	040006b7          	lui	a3,0x4000
  4e:	8f55                	or	a4,a4,a3
  50:	b7ed                	j	3a <.L22>
			50: R_RISCV_RVC_JUMP	.L22

Disassembly of section .text.coex_wifi_pta_forece_enable:

00000000 <coex_wifi_pta_forece_enable>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
			4: R_RISCV_HI20	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	0004a783          	lw	a5,0(s1) # 0 <coex_wifi_pta_forece_enable>
			8: R_RISCV_LO12_I	.LANCHOR0
			8: R_RISCV_RELAX	*ABS*
   c:	ce06                	sw	ra,28(sp)
   e:	cc22                	sw	s0,24(sp)
  10:	c84a                	sw	s2,16(sp)
  12:	c64e                	sw	s3,12(sp)
  14:	c452                	sw	s4,8(sp)
  16:	02a78e63          	beq	a5,a0,52 <.L26>
			16: R_RISCV_BRANCH	.L26
  1a:	00000437          	lui	s0,0x0
			1a: R_RISCV_HI20	.LANCHOR2
			1a: R_RISCV_RELAX	*ABS*
  1e:	00048493          	mv	s1,s1
			1e: R_RISCV_LO12_I	.LANCHOR0
			1e: R_RISCV_RELAX	*ABS*
  22:	892a                	mv	s2,a0
  24:	00040413          	mv	s0,s0
			24: R_RISCV_LO12_I	.LANCHOR2
			24: R_RISCV_RELAX	*ABS*
  28:	ef8d                	bnez	a5,62 <.L28>
			28: R_RISCV_RVC_BRANCH	.L28
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	xTaskGetTickCount
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <coex_wifi_pta_forece_enable+0x2a>

00000032 <.LVL29>:
  32:	00000737          	lui	a4,0x0
			32: R_RISCV_HI20	.LANCHOR1
			32: R_RISCV_RELAX	*ABS*
  36:	00070713          	mv	a4,a4
			36: R_RISCV_LO12_I	.LANCHOR1
			36: R_RISCV_RELAX	*ABS*
  3a:	431c                	lw	a5,0(a4)
  3c:	4014                	lw	a3,0(s0)
  3e:	8f95                	sub	a5,a5,a3
  40:	97aa                	add	a5,a5,a0
  42:	c31c                	sw	a5,0(a4)

00000044 <.L29>:
  44:	0124a023          	sw	s2,0(s1)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	xTaskGetTickCount
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L29+0x4>

00000050 <.LVL30>:
  50:	c008                	sw	a0,0(s0)

00000052 <.L26>:
  52:	40f2                	lw	ra,28(sp)
  54:	4462                	lw	s0,24(sp)
  56:	44d2                	lw	s1,20(sp)
  58:	4942                	lw	s2,16(sp)
  5a:	49b2                	lw	s3,12(sp)
  5c:	4a22                	lw	s4,8(sp)
  5e:	6105                	addi	sp,sp,32
  60:	8082                	ret

00000062 <.L28>:
  62:	4705                	li	a4,1
  64:	fee790e3          	bne	a5,a4,44 <.L29>
			64: R_RISCV_BRANCH	.L29
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	xTaskGetTickCount
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.L28+0x6>

00000070 <.LVL33>:
  70:	00000737          	lui	a4,0x0
			70: R_RISCV_HI20	.LANCHOR3
			70: R_RISCV_RELAX	*ABS*
  74:	00070713          	mv	a4,a4
			74: R_RISCV_LO12_I	.LANCHOR3
			74: R_RISCV_RELAX	*ABS*
  78:	431c                	lw	a5,0(a4)
  7a:	4014                	lw	a3,0(s0)
  7c:	8f95                	sub	a5,a5,a3
  7e:	97aa                	add	a5,a5,a0
  80:	c31c                	sw	a5,0(a4)

00000082 <.LBB137>:
  82:	30047073          	csrci	mstatus,8

00000086 <.LBE137>:
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	bl_nap_calculate
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LBE137>

0000008e <.LVL34>:
  8e:	8a2a                	mv	s4,a0

00000090 <.LBB139>:
  90:	30046073          	csrsi	mstatus,8

00000094 <.LBE139>:
  94:	3e800993          	li	s3,1000
  98:	faa9f6e3          	bgeu	s3,a0,44 <.L29>
			98: R_RISCV_BRANCH	.L29
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	AON_LowPower_Enter_PDS0
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LBE139+0x8>

000000a4 <.LVL36>:
  a4:	033a5533          	divu	a0,s4,s3
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	vTaskDelay
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL36+0x4>

000000b0 <.LVL37>:
  b0:	00000097          	auipc	ra,0x0
			b0: R_RISCV_CALL	AON_LowPower_Exit_PDS0
			b0: R_RISCV_RELAX	*ABS*
  b4:	000080e7          	jalr	ra # b0 <.LVL37>

000000b8 <.LVL38>:
  b8:	b771                	j	44 <.L29>
			b8: R_RISCV_RVC_JUMP	.L29

Disassembly of section .text.wifi_main:

00000000 <wifi_main>:
   0:	02626537          	lui	a0,0x2626

00000004 <.LVL40>:
   4:	1101                	addi	sp,sp,-32
   6:	a0050513          	addi	a0,a0,-1536 # 2625a00 <.LASF280+0x262420b>
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	ca26                	sw	s1,20(sp)

00000010 <.LBB167>:
  10:	44b00437          	lui	s0,0x44b00

00000014 <.LBE167>:
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	c256                	sw	s5,4(sp)
  1c:	c05a                	sw	s6,0(sp)
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	rfc_init
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LBE167+0xa>

00000026 <.LBB171>:
  26:	40042783          	lw	a5,1024(s0) # 44b00400 <.LASF280+0x44afec0b>

0000002a <.LBB172>:
  2a:	44b00937          	lui	s2,0x44b00

0000002e <.LBB178>:
  2e:	000009b7          	lui	s3,0x0
			2e: R_RISCV_HI20	ke_env
			2e: R_RISCV_RELAX	*ABS*

00000032 <.LBB207>:
  32:	0017e793          	ori	a5,a5,1
  36:	40f42023          	sw	a5,1024(s0)

0000003a <.LBE207>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	mpif_clk_init
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LBE207>

00000042 <.LVL43>:
  42:	00000097          	auipc	ra,0x0
			42: R_RISCV_CALL	sysctrl_init
			42: R_RISCV_RELAX	*ABS*
  46:	000080e7          	jalr	ra # 42 <.LVL43>

0000004a <.LVL44>:
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	intc_init
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.LVL44>

00000052 <.LVL45>:
  52:	00000097          	auipc	ra,0x0
			52: R_RISCV_CALL	ipc_emb_init
			52: R_RISCV_RELAX	*ABS*
  56:	000080e7          	jalr	ra # 52 <.LVL45>

0000005a <.LVL46>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	bl_init
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL46>

00000062 <.LVL47>:
  62:	0024f7b7          	lui	a5,0x24f
  66:	03778793          	addi	a5,a5,55 # 24f037 <.LASF280+0x24d842>
  6a:	40f42223          	sw	a5,1028(s0)
  6e:	4785                	li	a5,1
  70:	40f42023          	sw	a5,1024(s0)
  74:	40042023          	sw	zero,1024(s0)
  78:	06900793          	li	a5,105
  7c:	40f42023          	sw	a5,1024(s0)

00000080 <.LBB208>:
  80:	40042783          	lw	a5,1024(s0)

00000084 <.LBE208>:
  84:	44920737          	lui	a4,0x44920

00000088 <.LBB181>:
  88:	00000a37          	lui	s4,0x0
			88: R_RISCV_HI20	.LANCHOR4
			88: R_RISCV_RELAX	*ABS*

0000008c <.LBB212>:
  8c:	fdf7f793          	andi	a5,a5,-33
  90:	40f42023          	sw	a5,1024(s0)

00000094 <.LBE212>:
  94:	501007b7          	lui	a5,0x50100
  98:	07fd                	addi	a5,a5,31
  9a:	c35c                	sw	a5,4(a4)
  9c:	44900437          	lui	s0,0x44900

000000a0 <.LBB193>:
  a0:	40007ab7          	lui	s5,0x40007

000000a4 <.LBB183>:
  a4:	400004b7          	lui	s1,0x40000
  a8:	005c2b37          	lui	s6,0x5c2

000000ac <.L34>:
  ac:	12092783          	lw	a5,288(s2) # 44b00120 <.LASF280+0x44afe92b>

000000b0 <.LBE194>:
  b0:	00c79713          	slli	a4,a5,0xc

000000b4 <.LBB195>:
  b4:	08442783          	lw	a5,132(s0) # 44900084 <.LASF280+0x448fe88f>

000000b8 <.LBE195>:
  b8:	08075e63          	bgez	a4,154 <.L35>
			b8: R_RISCV_BRANCH	.L35

000000bc <.LBB198>:
  bc:	0017e793          	ori	a5,a5,1

000000c0 <.L56>:
  c0:	08f42223          	sw	a5,132(s0)

000000c4 <.LBB203>:
  c4:	00098793          	mv	a5,s3
			c4: R_RISCV_LO12_I	ke_env
			c4: R_RISCV_RELAX	*ABS*

000000c8 <.LVL51>:
  c8:	439c                	lw	a5,0(a5)

000000ca <.LBE203>:
  ca:	e789                	bnez	a5,d4 <.L37>
			ca: R_RISCV_RVC_BRANCH	.L37
  cc:	00000097          	auipc	ra,0x0
			cc: R_RISCV_CALL	ipc_emb_wait
			cc: R_RISCV_RELAX	*ABS*
  d0:	000080e7          	jalr	ra # cc <.LBE203+0x2>

000000d4 <.L37>:
  d4:	000a0713          	mv	a4,s4
			d4: R_RISCV_LO12_I	.LANCHOR4
			d4: R_RISCV_RELAX	*ABS*
  d8:	431c                	lw	a5,0(a4)
  da:	00178693          	addi	a3,a5,1 # 50100001 <.LASF280+0x500fe80c>
  de:	c314                	sw	a3,0(a4)
  e0:	8bbd                	andi	a5,a5,15
  e2:	ebb1                	bnez	a5,136 <.L39>
			e2: R_RISCV_RVC_BRANCH	.L39
  e4:	018aa783          	lw	a5,24(s5) # 40007018 <.LASF280+0x40005823>

000000e8 <.LVL53>:
  e8:	83e1                	srli	a5,a5,0x18

000000ea <.LVL54>:
  ea:	0077f713          	andi	a4,a5,7

000000ee <.LVL55>:
  ee:	c70d                	beqz	a4,118 <.L41>
			ee: R_RISCV_RVC_BRANCH	.L41
  f0:	468d                	li	a3,3
  f2:	00d70763          	beq	a4,a3,100 <.L40>
			f2: R_RISCV_BRANCH	.L40

000000f6 <.LBB186>:
  f6:	48d4                	lw	a3,20(s1)

000000f8 <.LVL56>:
  f8:	00040637          	lui	a2,0x40
  fc:	8ed1                	or	a3,a3,a2
  fe:	c8d4                	sw	a3,20(s1)

00000100 <.L40>:
 100:	cf01                	beqz	a4,118 <.L41>
			100: R_RISCV_RVC_BRANCH	.L41
 102:	468d                	li	a3,3
 104:	00d70a63          	beq	a4,a3,118 <.L41>
			104: R_RISCV_BRANCH	.L41

00000108 <.LBB188>:
 108:	40002737          	lui	a4,0x40002

0000010c <.LVL59>:
 10c:	4334                	lw	a3,64(a4)

0000010e <.LVL60>:
 10e:	9af1                	andi	a3,a3,-4
 110:	c334                	sw	a3,64(a4)
 112:	4374                	lw	a3,68(a4)
 114:	9af9                	andi	a3,a3,-2
 116:	c374                	sw	a3,68(a4)

00000118 <.L41>:
 118:	8b91                	andi	a5,a5,4

0000011a <.LVL65>:
 11a:	cf91                	beqz	a5,136 <.L39>
			11a: R_RISCV_RVC_BRANCH	.L39

0000011c <.LBB190>:
 11c:	48dc                	lw	a5,20(s1)

0000011e <.LVL66>:
 11e:	40010737          	lui	a4,0x40010
 122:	0167e7b3          	or	a5,a5,s6

00000126 <.LVL67>:
 126:	c8dc                	sw	a5,20(s1)
 128:	90c72783          	lw	a5,-1780(a4) # 4000f90c <.LASF280+0x4000e117>
 12c:	9bf9                	andi	a5,a5,-2
 12e:	0047e793          	ori	a5,a5,4
 132:	90f72623          	sw	a5,-1780(a4)

00000136 <.L39>:
 136:	00000097          	auipc	ra,0x0
			136: R_RISCV_CALL	ke_evt_schedule
			136: R_RISCV_RELAX	*ABS*
 13a:	000080e7          	jalr	ra # 136 <.L39>

0000013e <.LVL72>:
 13e:	00000097          	auipc	ra,0x0
			13e: R_RISCV_CALL	bl_sleep
			13e: R_RISCV_RELAX	*ABS*
 142:	000080e7          	jalr	ra # 13e <.LVL72>

00000146 <.LVL73>:
 146:	c909                	beqz	a0,158 <.L43>
			146: R_RISCV_RVC_BRANCH	.L43
 148:	4501                	li	a0,0

0000014a <.L55>:
 14a:	00000097          	auipc	ra,0x0
			14a: R_RISCV_CALL	coex_wifi_pta_forece_enable
			14a: R_RISCV_RELAX	*ABS*
 14e:	000080e7          	jalr	ra # 14a <.L55>

00000152 <.LVL74>:
 152:	bfa9                	j	ac <.L34>
			152: R_RISCV_RVC_JUMP	.L34

00000154 <.L35>:
 154:	9bf9                	andi	a5,a5,-2
 156:	b7ad                	j	c0 <.L56>
			156: R_RISCV_RVC_JUMP	.L56

00000158 <.L43>:
 158:	4505                	li	a0,1
 15a:	bfc5                	j	14a <.L55>
			15a: R_RISCV_RVC_JUMP	.L55
