
libbl602_wifi/rfc_bl602.o:     file format elf32-littleriscv


Disassembly of section .text.rf_fsm_ctrl_en_setf:

00000000 <rf_fsm_ctrl_en_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	435c                	lw	a5,4(a4)

00000006 <.LVL1>:
   6:	0506                	slli	a0,a0,0x1

00000008 <.LVL2>:
   8:	9bf5                	andi	a5,a5,-3
   a:	8d5d                	or	a0,a0,a5

0000000c <.LVL4>:
   c:	c348                	sw	a0,4(a4)
   e:	8082                	ret

Disassembly of section .text.rf_gc_tbb_setf:

00000000 <rf_gc_tbb_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	46bc                	lw	a5,72(a3)

00000006 <.LVL6>:
   6:	fe100737          	lui	a4,0xfe100
   a:	177d                	addi	a4,a4,-1
   c:	8ff9                	and	a5,a5,a4
   e:	0552                	slli	a0,a0,0x14

00000010 <.LVL8>:
  10:	01f00737          	lui	a4,0x1f00
  14:	8d79                	and	a0,a0,a4
  16:	8d5d                	or	a0,a0,a5

00000018 <.LVL9>:
  18:	c6a8                	sw	a0,72(a3)
  1a:	8082                	ret

Disassembly of section .text.rf_gc_tmx_setf:

00000000 <rf_gc_tmx_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	46bc                	lw	a5,72(a3)

00000006 <.LVL11>:
   6:	fff90737          	lui	a4,0xfff90
   a:	177d                	addi	a4,a4,-1
   c:	8ff9                	and	a5,a5,a4
   e:	0542                	slli	a0,a0,0x10

00000010 <.LVL13>:
  10:	00070737          	lui	a4,0x70
  14:	8d79                	and	a0,a0,a4
  16:	8d5d                	or	a0,a0,a5

00000018 <.LVL14>:
  18:	c6a8                	sw	a0,72(a3)
  1a:	8082                	ret

Disassembly of section .text.rf_pa_ib_fix_setf:

00000000 <rf_pa_ib_fix_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	52fc                	lw	a5,100(a3)

00000006 <.LVL16>:
   6:	7741                	lui	a4,0xffff0
   8:	177d                	addi	a4,a4,-1
   a:	8ff9                	and	a5,a5,a4
   c:	0542                	slli	a0,a0,0x10

0000000e <.LVL18>:
   e:	8d5d                	or	a0,a0,a5

00000010 <.LVL19>:
  10:	d2e8                	sw	a0,100(a3)
  12:	8082                	ret

Disassembly of section .text.rf_pa_vbcas_setf:

00000000 <rf_pa_vbcas_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	52fc                	lw	a5,100(a3)

00000006 <.LVL21>:
   6:	7765                	lui	a4,0xffff9
   8:	177d                	addi	a4,a4,-1
   a:	8ff9                	and	a5,a5,a4
   c:	0532                	slli	a0,a0,0xc

0000000e <.LVL23>:
   e:	8d5d                	or	a0,a0,a5

00000010 <.LVL24>:
  10:	d2e8                	sw	a0,100(a3)
  12:	8082                	ret

Disassembly of section .text.rf_pa_vbcore_setf:

00000000 <rf_pa_vbcore_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	52fc                	lw	a5,100(a3)

00000006 <.LVL26>:
   6:	777d                	lui	a4,0xfffff
   8:	0ff70713          	addi	a4,a4,255 # fffff0ff <.LLST60+0xffffb1bc>
   c:	8ff9                	and	a5,a5,a4
   e:	0522                	slli	a0,a0,0x8

00000010 <.LVL28>:
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL29>:
  12:	d2e8                	sw	a0,100(a3)
  14:	8082                	ret

Disassembly of section .text.rf_pa_iet_setf:

00000000 <rf_pa_iet_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	537c                	lw	a5,100(a4)

00000006 <.LVL31>:
   6:	0512                	slli	a0,a0,0x4

00000008 <.LVL32>:
   8:	f0f7f793          	andi	a5,a5,-241
   c:	8d5d                	or	a0,a0,a5

0000000e <.LVL34>:
   e:	d368                	sw	a0,100(a4)
  10:	8082                	ret

Disassembly of section .text.rf_tmx_cs_setf:

00000000 <rf_tmx_cs_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	577c                	lw	a5,108(a4)

00000006 <.LVL36>:
   6:	9be1                	andi	a5,a5,-8
   8:	8d5d                	or	a0,a0,a5

0000000a <.LVL38>:
   a:	d768                	sw	a0,108(a4)
   c:	8082                	ret

Disassembly of section .text.rf_fsm_st_dbg_en_setf:

00000000 <rf_fsm_st_dbg_en_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	26c72783          	lw	a5,620(a4) # 4000126c <.LLST60+0x3fffd329>

00000008 <.LVL40>:
   8:	050e                	slli	a0,a0,0x3

0000000a <.LVL41>:
   a:	9bdd                	andi	a5,a5,-9
   c:	8d5d                	or	a0,a0,a5

0000000e <.LVL43>:
   e:	26a72623          	sw	a0,620(a4)
  12:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc3_setf:

00000000 <rf_tx_dvga_gain_qdb_gc3_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6306a783          	lw	a5,1584(a3) # 40001630 <.LLST60+0x3fffd6ed>

00000008 <.LVL45>:
   8:	81000737          	lui	a4,0x81000
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL47>:
  12:	7f000737          	lui	a4,0x7f000
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL48>:
  1a:	62a6a823          	sw	a0,1584(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc2_setf:

00000000 <rf_tx_dvga_gain_qdb_gc2_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6306a783          	lw	a5,1584(a3) # 40001630 <.LLST60+0x3fffd6ed>

00000008 <.LVL50>:
   8:	ff810737          	lui	a4,0xff810
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0542                	slli	a0,a0,0x10

00000012 <.LVL52>:
  12:	007f0737          	lui	a4,0x7f0
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL53>:
  1a:	62a6a823          	sw	a0,1584(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc1_setf:

00000000 <rf_tx_dvga_gain_qdb_gc1_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6306a783          	lw	a5,1584(a3) # 40001630 <.LLST60+0x3fffd6ed>

00000008 <.LVL55>:
   8:	7761                	lui	a4,0xffff8
   a:	0ff70713          	addi	a4,a4,255 # ffff80ff <.LLST60+0xffff41bc>
   e:	8ff9                	and	a5,a5,a4
  10:	6721                	lui	a4,0x8
  12:	0522                	slli	a0,a0,0x8

00000014 <.LVL57>:
  14:	f0070713          	addi	a4,a4,-256 # 7f00 <.LLST60+0x3fbd>
  18:	8d79                	and	a0,a0,a4
  1a:	8d5d                	or	a0,a0,a5

0000001c <.LVL58>:
  1c:	62a6a823          	sw	a0,1584(a3)
  20:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc0_setf:

00000000 <rf_tx_dvga_gain_qdb_gc0_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	63072783          	lw	a5,1584(a4) # 40001630 <.LLST60+0x3fffd6ed>

00000008 <.LVL60>:
   8:	07f57513          	andi	a0,a0,127

0000000c <.LVL61>:
   c:	f807f793          	andi	a5,a5,-128
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL63>:
  12:	62a72823          	sw	a0,1584(a4)
  16:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc7_setf:

00000000 <rf_tx_dvga_gain_qdb_gc7_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6346a783          	lw	a5,1588(a3) # 40001634 <.LLST60+0x3fffd6f1>

00000008 <.LVL65>:
   8:	81000737          	lui	a4,0x81000
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL67>:
  12:	7f000737          	lui	a4,0x7f000
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL68>:
  1a:	62a6aa23          	sw	a0,1588(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc6_setf:

00000000 <rf_tx_dvga_gain_qdb_gc6_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6346a783          	lw	a5,1588(a3) # 40001634 <.LLST60+0x3fffd6f1>

00000008 <.LVL70>:
   8:	ff810737          	lui	a4,0xff810
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0542                	slli	a0,a0,0x10

00000012 <.LVL72>:
  12:	007f0737          	lui	a4,0x7f0
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL73>:
  1a:	62a6aa23          	sw	a0,1588(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc5_setf:

00000000 <rf_tx_dvga_gain_qdb_gc5_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6346a783          	lw	a5,1588(a3) # 40001634 <.LLST60+0x3fffd6f1>

00000008 <.LVL75>:
   8:	7761                	lui	a4,0xffff8
   a:	0ff70713          	addi	a4,a4,255 # ffff80ff <.LLST60+0xffff41bc>
   e:	8ff9                	and	a5,a5,a4
  10:	6721                	lui	a4,0x8
  12:	0522                	slli	a0,a0,0x8

00000014 <.LVL77>:
  14:	f0070713          	addi	a4,a4,-256 # 7f00 <.LLST60+0x3fbd>
  18:	8d79                	and	a0,a0,a4
  1a:	8d5d                	or	a0,a0,a5

0000001c <.LVL78>:
  1c:	62a6aa23          	sw	a0,1588(a3)
  20:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc4_setf:

00000000 <rf_tx_dvga_gain_qdb_gc4_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	63472783          	lw	a5,1588(a4) # 40001634 <.LLST60+0x3fffd6f1>

00000008 <.LVL80>:
   8:	07f57513          	andi	a0,a0,127

0000000c <.LVL81>:
   c:	f807f793          	andi	a5,a5,-128
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL83>:
  12:	62a72a23          	sw	a0,1588(a4)
  16:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc11_setf:

00000000 <rf_tx_dvga_gain_qdb_gc11_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6386a783          	lw	a5,1592(a3) # 40001638 <.LLST60+0x3fffd6f5>

00000008 <.LVL85>:
   8:	81000737          	lui	a4,0x81000
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL87>:
  12:	7f000737          	lui	a4,0x7f000
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL88>:
  1a:	62a6ac23          	sw	a0,1592(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc10_setf:

00000000 <rf_tx_dvga_gain_qdb_gc10_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6386a783          	lw	a5,1592(a3) # 40001638 <.LLST60+0x3fffd6f5>

00000008 <.LVL90>:
   8:	ff810737          	lui	a4,0xff810
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0542                	slli	a0,a0,0x10

00000012 <.LVL92>:
  12:	007f0737          	lui	a4,0x7f0
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL93>:
  1a:	62a6ac23          	sw	a0,1592(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc9_setf:

00000000 <rf_tx_dvga_gain_qdb_gc9_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	6386a783          	lw	a5,1592(a3) # 40001638 <.LLST60+0x3fffd6f5>

00000008 <.LVL95>:
   8:	7761                	lui	a4,0xffff8
   a:	0ff70713          	addi	a4,a4,255 # ffff80ff <.LLST60+0xffff41bc>
   e:	8ff9                	and	a5,a5,a4
  10:	6721                	lui	a4,0x8
  12:	0522                	slli	a0,a0,0x8

00000014 <.LVL97>:
  14:	f0070713          	addi	a4,a4,-256 # 7f00 <.LLST60+0x3fbd>
  18:	8d79                	and	a0,a0,a4
  1a:	8d5d                	or	a0,a0,a5

0000001c <.LVL98>:
  1c:	62a6ac23          	sw	a0,1592(a3)
  20:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc8_setf:

00000000 <rf_tx_dvga_gain_qdb_gc8_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	63872783          	lw	a5,1592(a4) # 40001638 <.LLST60+0x3fffd6f5>

00000008 <.LVL100>:
   8:	07f57513          	andi	a0,a0,127

0000000c <.LVL101>:
   c:	f807f793          	andi	a5,a5,-128
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL103>:
  12:	62a72c23          	sw	a0,1592(a4)
  16:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc15_setf:

00000000 <rf_tx_dvga_gain_qdb_gc15_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	63c6a783          	lw	a5,1596(a3) # 4000163c <.LLST60+0x3fffd6f9>

00000008 <.LVL105>:
   8:	81000737          	lui	a4,0x81000
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0562                	slli	a0,a0,0x18

00000012 <.LVL107>:
  12:	7f000737          	lui	a4,0x7f000
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL108>:
  1a:	62a6ae23          	sw	a0,1596(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc14_setf:

00000000 <rf_tx_dvga_gain_qdb_gc14_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	63c6a783          	lw	a5,1596(a3) # 4000163c <.LLST60+0x3fffd6f9>

00000008 <.LVL110>:
   8:	ff810737          	lui	a4,0xff810
   c:	177d                	addi	a4,a4,-1
   e:	8ff9                	and	a5,a5,a4
  10:	0542                	slli	a0,a0,0x10

00000012 <.LVL112>:
  12:	007f0737          	lui	a4,0x7f0
  16:	8d79                	and	a0,a0,a4
  18:	8d5d                	or	a0,a0,a5

0000001a <.LVL113>:
  1a:	62a6ae23          	sw	a0,1596(a3)
  1e:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc13_setf:

00000000 <rf_tx_dvga_gain_qdb_gc13_setf>:
   0:	400016b7          	lui	a3,0x40001
   4:	63c6a783          	lw	a5,1596(a3) # 4000163c <.LLST60+0x3fffd6f9>

00000008 <.LVL115>:
   8:	7761                	lui	a4,0xffff8
   a:	0ff70713          	addi	a4,a4,255 # ffff80ff <.LLST60+0xffff41bc>
   e:	8ff9                	and	a5,a5,a4
  10:	6721                	lui	a4,0x8
  12:	0522                	slli	a0,a0,0x8

00000014 <.LVL117>:
  14:	f0070713          	addi	a4,a4,-256 # 7f00 <.LLST60+0x3fbd>
  18:	8d79                	and	a0,a0,a4
  1a:	8d5d                	or	a0,a0,a5

0000001c <.LVL118>:
  1c:	62a6ae23          	sw	a0,1596(a3)
  20:	8082                	ret

Disassembly of section .text.rf_tx_dvga_gain_qdb_gc12_setf:

00000000 <rf_tx_dvga_gain_qdb_gc12_setf>:
   0:	40001737          	lui	a4,0x40001
   4:	63c72783          	lw	a5,1596(a4) # 4000163c <.LLST60+0x3fffd6f9>

00000008 <.LVL120>:
   8:	07f57513          	andi	a0,a0,127

0000000c <.LVL121>:
   c:	f807f793          	andi	a5,a5,-128
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL123>:
  12:	62a72e23          	sw	a0,1596(a4)
  16:	8082                	ret

Disassembly of section .text.wait_us:

00000000 <wait_us>:
   0:	1141                	addi	sp,sp,-16
   2:	0512                	slli	a0,a0,0x4

00000004 <.LVL125>:
   4:	c62a                	sw	a0,12(sp)

00000006 <.L27>:
   6:	47b2                	lw	a5,12(sp)
   8:	fff78713          	addi	a4,a5,-1
   c:	c63a                	sw	a4,12(sp)
   e:	ffe5                	bnez	a5,6 <.L27>
			e: R_RISCV_RVC_BRANCH	.L27
  10:	0141                	addi	sp,sp,16
  12:	8082                	ret

Disassembly of section .text.rf_pa_etb_en_setf.constprop.16:

00000000 <rf_pa_etb_en_setf.constprop.16>:
   0:	40001737          	lui	a4,0x40001
   4:	537c                	lw	a5,100(a4)
   6:	9bdd                	andi	a5,a5,-9
   8:	d37c                	sw	a5,100(a4)
   a:	8082                	ret

Disassembly of section .text.rf_pa_half_on_setf.constprop.17:

00000000 <rf_pa_half_on_setf.constprop.17>:
   0:	400016b7          	lui	a3,0x40001
   4:	52fc                	lw	a5,100(a3)
   6:	7761                	lui	a4,0xffff8
   8:	177d                	addi	a4,a4,-1
   a:	8ff9                	and	a5,a5,a4
   c:	6721                	lui	a4,0x8
   e:	8fd9                	or	a5,a5,a4
  10:	d2fc                	sw	a5,100(a3)
  12:	8082                	ret

Disassembly of section .text.rfc_read_reg:

00000000 <rfc_read_reg>:
   0:	4108                	lw	a0,0(a0)

00000002 <.LVL134>:
   2:	8082                	ret

Disassembly of section .text.rfc_write_reg:

00000000 <rfc_write_reg>:
   0:	c10c                	sw	a1,0(a0)
   2:	8082                	ret

Disassembly of section .text.rfc_write_reg_bits:

00000000 <rfc_write_reg_bits>:
   0:	02c5e363          	bltu	a1,a2,26 <.L34>
			0: R_RISCV_BRANCH	.L34
   4:	8d91                	sub	a1,a1,a2

00000006 <.LVL137>:
   6:	0585                	addi	a1,a1,1
   8:	4785                	li	a5,1
   a:	00b797b3          	sll	a5,a5,a1
   e:	17fd                	addi	a5,a5,-1

00000010 <.LBB39>:
  10:	4118                	lw	a4,0(a0)

00000012 <.LBE39>:
  12:	8efd                	and	a3,a3,a5

00000014 <.LVL140>:
  14:	00c797b3          	sll	a5,a5,a2
  18:	fff7c793          	not	a5,a5
  1c:	00c696b3          	sll	a3,a3,a2

00000020 <.LVL141>:
  20:	8ff9                	and	a5,a5,a4
  22:	8fd5                	or	a5,a5,a3

00000024 <.LBB41>:
  24:	c11c                	sw	a5,0(a0)

00000026 <.L34>:
  26:	8082                	ret

Disassembly of section .text._print_channel_info:

00000000 <_print_channel_info>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	4421                	li	s0,8

00000008 <.L37>:
   8:	3e800513          	li	a0,1000
   c:	147d                	addi	s0,s0,-1

0000000e <.LVL146>:
   e:	00000097          	auipc	ra,0x0
			e: R_RISCV_CALL	wait_us
			e: R_RISCV_RELAX	*ABS*
  12:	000080e7          	jalr	ra # e <.LVL146>

00000016 <.LBE43>:
  16:	f86d                	bnez	s0,8 <.L37>
			16: R_RISCV_RVC_BRANCH	.L37
  18:	4421                	li	s0,8

0000001a <.L38>:
  1a:	3e800513          	li	a0,1000
  1e:	147d                	addi	s0,s0,-1

00000020 <.LVL149>:
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	wait_us
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL149>

00000028 <.LBE45>:
  28:	f86d                	bnez	s0,1a <.L38>
			28: R_RISCV_RVC_BRANCH	.L38
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	0141                	addi	sp,sp,16
  30:	8082                	ret

Disassembly of section .text._check_config:

00000000 <_check_config>:
   0:	8082                	ret

Disassembly of section .text.rfc_init:

00000000 <rfc_init>:
   0:	711d                	addi	sp,sp,-96
   2:	caa6                	sw	s1,84(sp)
   4:	ce86                	sw	ra,92(sp)
   6:	cca2                	sw	s0,88(sp)
   8:	c8ca                	sw	s2,80(sp)
   a:	c6ce                	sw	s3,76(sp)
   c:	c4d2                	sw	s4,72(sp)
   e:	c2d6                	sw	s5,68(sp)
  10:	c0da                	sw	s6,64(sp)
  12:	de5e                	sw	s7,60(sp)
  14:	dc62                	sw	s8,56(sp)
  16:	da66                	sw	s9,52(sp)
  18:	d86a                	sw	s10,48(sp)
  1a:	d66e                	sw	s11,44(sp)
  1c:	ee22                	fsw	fs0,28(sp)
  1e:	ec26                	fsw	fs1,24(sp)

00000020 <.LBB129>:
  20:	40001737          	lui	a4,0x40001
  24:	22072783          	lw	a5,544(a4) # 40001220 <.LLST60+0x3fffd2dd>

00000028 <.LVL152>:
  28:	fc0006b7          	lui	a3,0xfc000
  2c:	16fd                	addi	a3,a3,-1
  2e:	8ff5                	and	a5,a5,a3
  30:	22f72023          	sw	a5,544(a4)

00000034 <.LBB130>:
  34:	22072783          	lw	a5,544(a4)

00000038 <.LVL155>:
  38:	f80006b7          	lui	a3,0xf8000
  3c:	16fd                	addi	a3,a3,-1
  3e:	8ff5                	and	a5,a5,a3
  40:	080006b7          	lui	a3,0x8000
  44:	8fd5                	or	a5,a5,a3
  46:	22f72023          	sw	a5,544(a4)

0000004a <.LBE130>:
  4a:	01e857b7          	lui	a5,0x1e85
  4e:	80078793          	addi	a5,a5,-2048 # 1e84800 <.LLST60+0x1e808bd>
  52:	84aa                	mv	s1,a0
  54:	04f50763          	beq	a0,a5,a2 <.L44>
			54: R_RISCV_BRANCH	.L44
  58:	02a7e263          	bltu	a5,a0,7c <.L45>
			58: R_RISCV_BRANCH	.L45
  5c:	016e37b7          	lui	a5,0x16e3
  60:	60078793          	addi	a5,a5,1536 # 16e3600 <.LLST60+0x16df6bd>
  64:	4501                	li	a0,0

00000066 <.LVL159>:
  66:	02f48f63          	beq	s1,a5,a4 <.L61>
			66: R_RISCV_BRANCH	.L61
  6a:	018cc7b7          	lui	a5,0x18cc
  6e:	a8078793          	addi	a5,a5,-1408 # 18cba80 <.LLST60+0x18c7b3d>
  72:	4505                	li	a0,1
  74:	02f48863          	beq	s1,a5,a4 <.L61>
			74: R_RISCV_BRANCH	.L61

00000078 <.L48>:
  78:	4511                	li	a0,4
  7a:	a02d                	j	a4 <.L61>
			7a: R_RISCV_RVC_JUMP	.L61

0000007c <.L45>:
  7c:	026267b7          	lui	a5,0x2626
  80:	a0078793          	addi	a5,a5,-1536 # 2625a00 <.LLST60+0x2621abd>
  84:	fef50ae3          	beq	a0,a5,78 <.L48>
			84: R_RISCV_BRANCH	.L48
  88:	031977b7          	lui	a5,0x3197
  8c:	50078793          	addi	a5,a5,1280 # 3197500 <.LLST60+0x31935bd>
  90:	4515                	li	a0,5
  92:	00f48963          	beq	s1,a5,a4 <.L61>
			92: R_RISCV_BRANCH	.L61
  96:	0249f7b7          	lui	a5,0x249f
  9a:	fcf49fe3          	bne	s1,a5,78 <.L48>
			9a: R_RISCV_BRANCH	.L48
  9e:	450d                	li	a0,3
  a0:	a011                	j	a4 <.L61>
			a0: R_RISCV_RVC_JUMP	.L61

000000a2 <.L44>:
  a2:	4509                	li	a0,2

000000a4 <.L61>:
  a4:	00000437          	lui	s0,0x0
			a4: R_RISCV_HI20	.LANCHOR0
			a4: R_RISCV_RELAX	*ABS*
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	rf_pri_xtalfreq
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.L61+0x4>

000000b0 <.LVL160>:
  b0:	00040413          	mv	s0,s0
			b0: R_RISCV_LO12_I	.LANCHOR0
			b0: R_RISCV_RELAX	*ABS*
  b4:	00044503          	lbu	a0,0(s0) # 0 <rfc_init>
  b8:	4585                	li	a1,1

000000ba <.LBB132>:
  ba:	00000937          	lui	s2,0x0
			ba: R_RISCV_HI20	.LANCHOR1
			ba: R_RISCV_RELAX	*ABS*

000000be <.LBE132>:
  be:	00153513          	seqz	a0,a0
  c2:	00000097          	auipc	ra,0x0
			c2: R_RISCV_CALL	rf_pri_init
			c2: R_RISCV_RELAX	*ABS*
  c6:	000080e7          	jalr	ra # c2 <.LBE132+0x4>

000000ca <.LVL161>:
  ca:	4785                	li	a5,1
  cc:	00f40023          	sb	a5,0(s0)

000000d0 <.LBB322>:
  d0:	000f4437          	lui	s0,0xf4
  d4:	24040413          	addi	s0,s0,576 # f4240 <.LLST60+0xf02fd>
  d8:	0284d433          	divu	s0,s1,s0
  dc:	8522                	mv	a0,s0
  de:	00000097          	auipc	ra,0x0
			de: R_RISCV_CALL	__floatunsidf
			de: R_RISCV_RELAX	*ABS*
  e2:	000080e7          	jalr	ra # de <.LBB322+0xe>

000000e6 <.LBB134>:
  e6:	026267b7          	lui	a5,0x2626

000000ea <.LBE134>:
  ea:	00a92023          	sw	a0,0(s2) # 0 <rfc_init>
			ea: R_RISCV_LO12_S	.LANCHOR1
			ea: R_RISCV_RELAX	*ABS*
  ee:	00b92223          	sw	a1,4(s2)
			ee: R_RISCV_LO12_S	.LANCHOR1+0x4
			ee: R_RISCV_RELAX	*ABS*+0x4

000000f2 <.LBB173>:
  f2:	a0078793          	addi	a5,a5,-1536 # 2625a00 <.LLST60+0x2621abd>
  f6:	5af48b63          	beq	s1,a5,6ac <.L57>
			f6: R_RISCV_BRANCH	.L57
  fa:	000007b7          	lui	a5,0x0
			fa: R_RISCV_HI20	.LC1
			fa: R_RISCV_RELAX	*ABS*
  fe:	0007a507          	flw	fa0,0(a5) # 0 <rfc_init>
			fe: R_RISCV_LO12_I	.LC1
			fe: R_RISCV_RELAX	*ABS*

00000102 <.L52>:
 102:	d0047453          	fcvt.s.w	fs0,s0

00000106 <.LBB141>:
 106:	40001437          	lui	s0,0x40001
 10a:	1c042783          	lw	a5,448(s0) # 400011c0 <.LLST60+0x3fffd27d>

0000010e <.LVL167>:
 10e:	777d                	lui	a4,0xfffff
 110:	6485                	lui	s1,0x1

00000112 <.LVL168>:
 112:	8f7d                	and	a4,a4,a5

00000114 <.LBB178>:
 114:	c01517d3          	fcvt.wu.s	a5,fa0,rtz

00000118 <.LBB179>:
 118:	fff48693          	addi	a3,s1,-1 # fff <.LLST373+0x5>

0000011c <.LBB180>:
 11c:	e0000937          	lui	s2,0xe0000

00000120 <.LBB187>:
 120:	8ff5                	and	a5,a5,a3

00000122 <.LVL171>:
 122:	8fd9                	or	a5,a5,a4

00000124 <.LVL172>:
 124:	1cf42023          	sw	a5,448(s0)

00000128 <.LBB152>:
 128:	000007b7          	lui	a5,0x0
			128: R_RISCV_HI20	.LC2
			128: R_RISCV_RELAX	*ABS*
 12c:	0007a787          	flw	fa5,0(a5) # 0 <rfc_init>
			12c: R_RISCV_LO12_I	.LC2
			12c: R_RISCV_RELAX	*ABS*
 130:	000007b7          	lui	a5,0x0
			130: R_RISCV_HI20	.LC3
			130: R_RISCV_RELAX	*ABS*

00000134 <.LBB190>:
 134:	1c442503          	lw	a0,452(s0)

00000138 <.LBB153>:
 138:	10f57553          	fmul.s	fa0,fa0,fa5

0000013c <.LVL175>:
 13c:	0007a787          	flw	fa5,0(a5) # 0 <rfc_init>
			13c: R_RISCV_LO12_I	.LC3
			13c: R_RISCV_RELAX	*ABS*
 140:	000007b7          	lui	a5,0x0
			140: R_RISCV_HI20	.LC4
			140: R_RISCV_RELAX	*ABS*
 144:	0007a487          	flw	fs1,0(a5) # 0 <rfc_init>
			144: R_RISCV_LO12_I	.LC4
			144: R_RISCV_RELAX	*ABS*
 148:	00000a37          	lui	s4,0x0
			148: R_RISCV_HI20	.LC5
			148: R_RISCV_RELAX	*ABS*
 14c:	18f57553          	fdiv.s	fa0,fa0,fa5

00000150 <.LBB192>:
 150:	01257933          	and	s2,a0,s2

00000154 <.LBB193>:
 154:	fff009b7          	lui	s3,0xfff00

00000158 <.LBB198>:
 158:	96448493          	addi	s1,s1,-1692
 15c:	8ba6                	mv	s7,s1
 15e:	13c40413          	addi	s0,s0,316

00000162 <.LBB154>:
 162:	18857553          	fdiv.s	fa0,fa0,fs0

00000166 <.LVL177>:
 166:	10957553          	fmul.s	fa0,fa0,fs1

0000016a <.LVL178>:
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	__extendsfdf2
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL178>
 172:	000a2603          	lw	a2,0(s4) # 0 <rfc_init>
			172: R_RISCV_LO12_I	.LC5
			172: R_RISCV_RELAX	*ABS*
 176:	004a2683          	lw	a3,4(s4)
			176: R_RISCV_LO12_I	.LC5+0x4
			176: R_RISCV_RELAX	*ABS*+0x4
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	__adddf3
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.LVL178+0x10>
 182:	00000097          	auipc	ra,0x0
			182: R_RISCV_CALL	__fixunsdfsi
			182: R_RISCV_RELAX	*ABS*
 186:	000080e7          	jalr	ra # 182 <.LVL178+0x18>

0000018a <.LBB155>:
 18a:	000007b7          	lui	a5,0x0
			18a: R_RISCV_HI20	.LC6
			18a: R_RISCV_RELAX	*ABS*
 18e:	0007a507          	flw	fa0,0(a5) # 0 <rfc_init>
			18e: R_RISCV_LO12_I	.LC6
			18e: R_RISCV_RELAX	*ABS*

00000192 <.LBB200>:
 192:	050e                	slli	a0,a0,0x3
 194:	810d                	srli	a0,a0,0x3

00000196 <.LBB156>:
 196:	18857553          	fdiv.s	fa0,fa0,fs0

0000019a <.LBB202>:
 19a:	01256533          	or	a0,a0,s2

0000019e <.LVL183>:
 19e:	08a42423          	sw	a0,136(s0)

000001a2 <.LBB203>:
 1a2:	08c42503          	lw	a0,140(s0)

000001a6 <.LVL185>:
 1a6:	00100937          	lui	s2,0x100
 1aa:	197d                	addi	s2,s2,-1
 1ac:	01357ab3          	and	s5,a0,s3

000001b0 <.LBB157>:
 1b0:	10957553          	fmul.s	fa0,fa0,fs1

000001b4 <.LVL187>:
 1b4:	00000097          	auipc	ra,0x0
			1b4: R_RISCV_CALL	__extendsfdf2
			1b4: R_RISCV_RELAX	*ABS*
 1b8:	000080e7          	jalr	ra # 1b4 <.LVL187>
 1bc:	000a2603          	lw	a2,0(s4)
			1bc: R_RISCV_LO12_I	.LC5
			1bc: R_RISCV_RELAX	*ABS*
 1c0:	004a2683          	lw	a3,4(s4)
			1c0: R_RISCV_LO12_I	.LC5+0x4
			1c0: R_RISCV_RELAX	*ABS*+0x4
 1c4:	00000097          	auipc	ra,0x0
			1c4: R_RISCV_CALL	__adddf3
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	000080e7          	jalr	ra # 1c4 <.LVL187+0x10>
 1cc:	00000097          	auipc	ra,0x0
			1cc: R_RISCV_CALL	__fixunsdfsi
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	000080e7          	jalr	ra # 1cc <.LVL187+0x18>

000001d4 <.LBB158>:
 1d4:	000007b7          	lui	a5,0x0
			1d4: R_RISCV_HI20	.LC7
			1d4: R_RISCV_RELAX	*ABS*
 1d8:	0007a507          	flw	fa0,0(a5) # 0 <rfc_init>
			1d8: R_RISCV_LO12_I	.LC7
			1d8: R_RISCV_RELAX	*ABS*

000001dc <.LBB205>:
 1dc:	01257533          	and	a0,a0,s2
 1e0:	01556533          	or	a0,a0,s5

000001e4 <.LBB159>:
 1e4:	18857553          	fdiv.s	fa0,fa0,fs0

000001e8 <.LBB207>:
 1e8:	08a42623          	sw	a0,140(s0)

000001ec <.LBB208>:
 1ec:	09042503          	lw	a0,144(s0)

000001f0 <.LBE208>:
 1f0:	4a81                	li	s5,0

000001f2 <.LBB213>:
 1f2:	013579b3          	and	s3,a0,s3

000001f6 <.LBB160>:
 1f6:	10957553          	fmul.s	fa0,fa0,fs1

000001fa <.LVL196>:
 1fa:	00000097          	auipc	ra,0x0
			1fa: R_RISCV_CALL	__extendsfdf2
			1fa: R_RISCV_RELAX	*ABS*
 1fe:	000080e7          	jalr	ra # 1fa <.LVL196>
 202:	000a2603          	lw	a2,0(s4)
			202: R_RISCV_LO12_I	.LC5
			202: R_RISCV_RELAX	*ABS*
 206:	004a2683          	lw	a3,4(s4)
			206: R_RISCV_LO12_I	.LC5+0x4
			206: R_RISCV_RELAX	*ABS*+0x4

0000020a <.LBB215>:
 20a:	4a01                	li	s4,0

0000020c <.LBB161>:
 20c:	00000097          	auipc	ra,0x0
			20c: R_RISCV_CALL	__adddf3
			20c: R_RISCV_RELAX	*ABS*
 210:	000080e7          	jalr	ra # 20c <.LBB161>
 214:	00000097          	auipc	ra,0x0
			214: R_RISCV_CALL	__fixunsdfsi
			214: R_RISCV_RELAX	*ABS*
 218:	000080e7          	jalr	ra # 214 <.LBB161+0x8>

0000021c <.LBB217>:
 21c:	01257533          	and	a0,a0,s2
 220:	01356533          	or	a0,a0,s3

00000224 <.LBB218>:
 224:	6985                	lui	s3,0x1

00000226 <.LBB219>:
 226:	08a42823          	sw	a0,144(s0)

0000022a <.LBB220>:
 22a:	9b498c13          	addi	s8,s3,-1612 # 9b4 <.LLST444>
 22e:	9b898b13          	addi	s6,s3,-1608

00000232 <.L56>:
 232:	8526                	mv	a0,s1
 234:	00000097          	auipc	ra,0x0
			234: R_RISCV_CALL	rf_pri_get_vco_freq_cw
			234: R_RISCV_RELAX	*ABS*
 238:	000080e7          	jalr	ra # 234 <.L56+0x2>

0000023c <.LVL203>:
 23c:	892a                	mv	s2,a0

0000023e <.LVL204>:
 23e:	8526                	mv	a0,s1

00000240 <.LVL205>:
 240:	00000097          	auipc	ra,0x0
			240: R_RISCV_CALL	rf_pri_get_vco_idac_cw
			240: R_RISCV_RELAX	*ABS*
 244:	000080e7          	jalr	ra # 240 <.LVL205>

00000248 <.LVL206>:
 248:	01749363          	bne	s1,s7,24e <.L53>
			248: R_RISCV_BRANCH	.L53

0000024c <.LVL207>:
 24c:	0905                	addi	s2,s2,1

0000024e <.L53>:
 24e:	0922                	slli	s2,s2,0x8

00000250 <.LVL209>:
 250:	001a7793          	andi	a5,s4,1
 254:	00a96533          	or	a0,s2,a0

00000258 <.LVL210>:
 258:	44078f63          	beqz	a5,6b6 <.L58>
			258: R_RISCV_BRANCH	.L58
 25c:	401a5793          	srai	a5,s4,0x1
 260:	0542                	slli	a0,a0,0x10

00000262 <.LVL211>:
 262:	078a                	slli	a5,a5,0x2
 264:	00aaeab3          	or	s5,s5,a0

00000268 <.LVL212>:
 268:	97a2                	add	a5,a5,s0
 26a:	0157a023          	sw	s5,0(a5)

0000026e <.L54>:
 26e:	01849863          	bne	s1,s8,27e <.L55>
			26e: R_RISCV_BRANCH	.L55
 272:	401a5793          	srai	a5,s4,0x1
 276:	078a                	slli	a5,a5,0x2
 278:	97a2                	add	a5,a5,s0
 27a:	0157a023          	sw	s5,0(a5)

0000027e <.L55>:
 27e:	0491                	addi	s1,s1,4

00000280 <.LVL213>:
 280:	0a05                	addi	s4,s4,1

00000282 <.LVL214>:
 282:	fb6498e3          	bne	s1,s6,232 <.L56>
			282: R_RISCV_BRANCH	.L56

00000286 <.LBE220>:
 286:	0070                	addi	a2,sp,12
 288:	002c                	addi	a1,sp,8
 28a:	4501                	li	a0,0

0000028c <.LBB221>:
 28c:	40001437          	lui	s0,0x40001

00000290 <.LBE221>:
 290:	00000097          	auipc	ra,0x0
			290: R_RISCV_CALL	rf_pri_query_txgain_table
			290: R_RISCV_RELAX	*ABS*
 294:	000080e7          	jalr	ra # 290 <.LBE221>

00000298 <.LBB226>:
 298:	64042783          	lw	a5,1600(s0) # 40001640 <.LLST60+0x3fffd6fd>

0000029c <.LBB227>:
 29c:	7de5                	lui	s11,0xffff9
 29e:	1dfd                	addi	s11,s11,-1

000002a0 <.LBB231>:
 2a0:	ff87f713          	andi	a4,a5,-8

000002a4 <.LVL218>:
 2a4:	47a2                	lw	a5,8(sp)

000002a6 <.LBB232>:
 2a6:	6d1d                	lui	s10,0x7

000002a8 <.LBB233>:
 2a8:	fff90cb7          	lui	s9,0xfff90

000002ac <.LBB237>:
 2ac:	8b9d                	andi	a5,a5,7
 2ae:	8fd9                	or	a5,a5,a4

000002b0 <.LVL219>:
 2b0:	64f42023          	sw	a5,1600(s0)

000002b4 <.LBE237>:
 2b4:	4532                	lw	a0,12(sp)

000002b6 <.LBB238>:
 2b6:	1cfd                	addi	s9,s9,-1
 2b8:	00070c37          	lui	s8,0x70

000002bc <.LBE238>:
 2bc:	00000097          	auipc	ra,0x0
			2bc: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc0_setf
			2bc: R_RISCV_RELAX	*ABS*
 2c0:	000080e7          	jalr	ra # 2bc <.LBE238>

000002c4 <.LVL221>:
 2c4:	0070                	addi	a2,sp,12
 2c6:	002c                	addi	a1,sp,8
 2c8:	4505                	li	a0,1
 2ca:	00000097          	auipc	ra,0x0
			2ca: R_RISCV_CALL	rf_pri_query_txgain_table
			2ca: R_RISCV_RELAX	*ABS*
 2ce:	000080e7          	jalr	ra # 2ca <.LVL221+0x6>

000002d2 <.LBB239>:
 2d2:	64042783          	lw	a5,1600(s0)

000002d6 <.LBB243>:
 2d6:	ff900bb7          	lui	s7,0xff900
 2da:	1bfd                	addi	s7,s7,-1

000002dc <.LBB247>:
 2dc:	f8f7f713          	andi	a4,a5,-113

000002e0 <.LVL224>:
 2e0:	47a2                	lw	a5,8(sp)

000002e2 <.LBB248>:
 2e2:	00700b37          	lui	s6,0x700

000002e6 <.LBB249>:
 2e6:	f9000ab7          	lui	s5,0xf9000

000002ea <.LBB253>:
 2ea:	0792                	slli	a5,a5,0x4
 2ec:	0707f793          	andi	a5,a5,112
 2f0:	8fd9                	or	a5,a5,a4

000002f2 <.LVL226>:
 2f2:	64f42023          	sw	a5,1600(s0)

000002f6 <.LBE253>:
 2f6:	4532                	lw	a0,12(sp)

000002f8 <.LBB254>:
 2f8:	1afd                	addi	s5,s5,-1
 2fa:	07000a37          	lui	s4,0x7000

000002fe <.LBE254>:
 2fe:	00000097          	auipc	ra,0x0
			2fe: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc1_setf
			2fe: R_RISCV_RELAX	*ABS*
 302:	000080e7          	jalr	ra # 2fe <.LBE254>

00000306 <.LVL229>:
 306:	0070                	addi	a2,sp,12
 308:	002c                	addi	a1,sp,8
 30a:	4509                	li	a0,2
 30c:	00000097          	auipc	ra,0x0
			30c: R_RISCV_CALL	rf_pri_query_txgain_table
			30c: R_RISCV_RELAX	*ABS*
 310:	000080e7          	jalr	ra # 30c <.LVL229+0x6>

00000314 <.LBB255>:
 314:	64042783          	lw	a5,1600(s0)

00000318 <.LBB259>:
 318:	90000937          	lui	s2,0x90000
 31c:	700004b7          	lui	s1,0x70000

00000320 <.LBB263>:
 320:	8ff7f713          	andi	a4,a5,-1793

00000324 <.LVL232>:
 324:	47a2                	lw	a5,8(sp)

00000326 <.LBB264>:
 326:	197d                	addi	s2,s2,-1

00000328 <.LBB265>:
 328:	04098993          	addi	s3,s3,64

0000032c <.LBB270>:
 32c:	07a2                	slli	a5,a5,0x8
 32e:	7007f793          	andi	a5,a5,1792
 332:	8fd9                	or	a5,a5,a4

00000334 <.LVL233>:
 334:	64f42023          	sw	a5,1600(s0)

00000338 <.LBE270>:
 338:	4532                	lw	a0,12(sp)
 33a:	00000097          	auipc	ra,0x0
			33a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc2_setf
			33a: R_RISCV_RELAX	*ABS*
 33e:	000080e7          	jalr	ra # 33a <.LBE270+0x2>

00000342 <.LVL235>:
 342:	0070                	addi	a2,sp,12
 344:	002c                	addi	a1,sp,8
 346:	450d                	li	a0,3
 348:	00000097          	auipc	ra,0x0
			348: R_RISCV_CALL	rf_pri_query_txgain_table
			348: R_RISCV_RELAX	*ABS*
 34c:	000080e7          	jalr	ra # 348 <.LVL235+0x6>

00000350 <.LBB271>:
 350:	64042783          	lw	a5,1600(s0)

00000354 <.LVL237>:
 354:	01b7f733          	and	a4,a5,s11

00000358 <.LVL238>:
 358:	47a2                	lw	a5,8(sp)
 35a:	07b2                	slli	a5,a5,0xc
 35c:	01a7f7b3          	and	a5,a5,s10
 360:	8fd9                	or	a5,a5,a4

00000362 <.LVL239>:
 362:	64f42023          	sw	a5,1600(s0)

00000366 <.LBE271>:
 366:	4532                	lw	a0,12(sp)
 368:	00000097          	auipc	ra,0x0
			368: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc3_setf
			368: R_RISCV_RELAX	*ABS*
 36c:	000080e7          	jalr	ra # 368 <.LBE271+0x2>

00000370 <.LVL241>:
 370:	0070                	addi	a2,sp,12
 372:	002c                	addi	a1,sp,8
 374:	4511                	li	a0,4
 376:	00000097          	auipc	ra,0x0
			376: R_RISCV_CALL	rf_pri_query_txgain_table
			376: R_RISCV_RELAX	*ABS*
 37a:	000080e7          	jalr	ra # 376 <.LVL241+0x6>

0000037e <.LBB272>:
 37e:	64042783          	lw	a5,1600(s0)

00000382 <.LVL243>:
 382:	0197f733          	and	a4,a5,s9

00000386 <.LVL244>:
 386:	47a2                	lw	a5,8(sp)
 388:	07c2                	slli	a5,a5,0x10
 38a:	0187f7b3          	and	a5,a5,s8
 38e:	8fd9                	or	a5,a5,a4

00000390 <.LVL245>:
 390:	64f42023          	sw	a5,1600(s0)

00000394 <.LBE272>:
 394:	4532                	lw	a0,12(sp)
 396:	00000097          	auipc	ra,0x0
			396: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc4_setf
			396: R_RISCV_RELAX	*ABS*
 39a:	000080e7          	jalr	ra # 396 <.LBE272+0x2>

0000039e <.LVL247>:
 39e:	0070                	addi	a2,sp,12
 3a0:	002c                	addi	a1,sp,8
 3a2:	4515                	li	a0,5
 3a4:	00000097          	auipc	ra,0x0
			3a4: R_RISCV_CALL	rf_pri_query_txgain_table
			3a4: R_RISCV_RELAX	*ABS*
 3a8:	000080e7          	jalr	ra # 3a4 <.LVL247+0x6>

000003ac <.LBB273>:
 3ac:	64042783          	lw	a5,1600(s0)

000003b0 <.LVL249>:
 3b0:	0177f733          	and	a4,a5,s7

000003b4 <.LVL250>:
 3b4:	47a2                	lw	a5,8(sp)
 3b6:	07d2                	slli	a5,a5,0x14
 3b8:	0167f7b3          	and	a5,a5,s6
 3bc:	8fd9                	or	a5,a5,a4

000003be <.LVL251>:
 3be:	64f42023          	sw	a5,1600(s0)

000003c2 <.LBE273>:
 3c2:	4532                	lw	a0,12(sp)
 3c4:	00000097          	auipc	ra,0x0
			3c4: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc5_setf
			3c4: R_RISCV_RELAX	*ABS*
 3c8:	000080e7          	jalr	ra # 3c4 <.LBE273+0x2>

000003cc <.LVL253>:
 3cc:	0070                	addi	a2,sp,12
 3ce:	002c                	addi	a1,sp,8
 3d0:	4519                	li	a0,6
 3d2:	00000097          	auipc	ra,0x0
			3d2: R_RISCV_CALL	rf_pri_query_txgain_table
			3d2: R_RISCV_RELAX	*ABS*
 3d6:	000080e7          	jalr	ra # 3d2 <.LVL253+0x6>

000003da <.LBB274>:
 3da:	64042783          	lw	a5,1600(s0)

000003de <.LVL255>:
 3de:	0157f733          	and	a4,a5,s5

000003e2 <.LVL256>:
 3e2:	47a2                	lw	a5,8(sp)
 3e4:	07e2                	slli	a5,a5,0x18
 3e6:	0147f7b3          	and	a5,a5,s4
 3ea:	8fd9                	or	a5,a5,a4

000003ec <.LVL257>:
 3ec:	64f42023          	sw	a5,1600(s0)

000003f0 <.LBE274>:
 3f0:	4532                	lw	a0,12(sp)
 3f2:	00000097          	auipc	ra,0x0
			3f2: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc6_setf
			3f2: R_RISCV_RELAX	*ABS*
 3f6:	000080e7          	jalr	ra # 3f2 <.LBE274+0x2>

000003fa <.LVL259>:
 3fa:	0070                	addi	a2,sp,12
 3fc:	002c                	addi	a1,sp,8
 3fe:	451d                	li	a0,7
 400:	00000097          	auipc	ra,0x0
			400: R_RISCV_CALL	rf_pri_query_txgain_table
			400: R_RISCV_RELAX	*ABS*
 404:	000080e7          	jalr	ra # 400 <.LVL259+0x6>

00000408 <.LBB275>:
 408:	47a2                	lw	a5,8(sp)
 40a:	64042703          	lw	a4,1600(s0)

0000040e <.LVL261>:
 40e:	07f2                	slli	a5,a5,0x1c
 410:	01277733          	and	a4,a4,s2
 414:	8fe5                	and	a5,a5,s1
 416:	8fd9                	or	a5,a5,a4

00000418 <.LVL263>:
 418:	64f42023          	sw	a5,1600(s0)

0000041c <.LBE275>:
 41c:	4532                	lw	a0,12(sp)
 41e:	00000097          	auipc	ra,0x0
			41e: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc7_setf
			41e: R_RISCV_RELAX	*ABS*
 422:	000080e7          	jalr	ra # 41e <.LBE275+0x2>

00000426 <.LVL265>:
 426:	0070                	addi	a2,sp,12
 428:	002c                	addi	a1,sp,8
 42a:	4521                	li	a0,8
 42c:	00000097          	auipc	ra,0x0
			42c: R_RISCV_CALL	rf_pri_query_txgain_table
			42c: R_RISCV_RELAX	*ABS*
 430:	000080e7          	jalr	ra # 42c <.LVL265+0x6>

00000434 <.LBB276>:
 434:	64442783          	lw	a5,1604(s0)

00000438 <.LVL267>:
 438:	ff87f713          	andi	a4,a5,-8

0000043c <.LVL268>:
 43c:	47a2                	lw	a5,8(sp)
 43e:	8b9d                	andi	a5,a5,7
 440:	8fd9                	or	a5,a5,a4

00000442 <.LVL269>:
 442:	64f42223          	sw	a5,1604(s0)

00000446 <.LBE276>:
 446:	4532                	lw	a0,12(sp)
 448:	00000097          	auipc	ra,0x0
			448: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc8_setf
			448: R_RISCV_RELAX	*ABS*
 44c:	000080e7          	jalr	ra # 448 <.LBE276+0x2>

00000450 <.LVL271>:
 450:	0070                	addi	a2,sp,12
 452:	002c                	addi	a1,sp,8
 454:	4525                	li	a0,9
 456:	00000097          	auipc	ra,0x0
			456: R_RISCV_CALL	rf_pri_query_txgain_table
			456: R_RISCV_RELAX	*ABS*
 45a:	000080e7          	jalr	ra # 456 <.LVL271+0x6>

0000045e <.LBB278>:
 45e:	64442783          	lw	a5,1604(s0)

00000462 <.LVL273>:
 462:	f8f7f713          	andi	a4,a5,-113

00000466 <.LVL274>:
 466:	47a2                	lw	a5,8(sp)
 468:	0792                	slli	a5,a5,0x4
 46a:	0707f793          	andi	a5,a5,112
 46e:	8fd9                	or	a5,a5,a4

00000470 <.LVL275>:
 470:	64f42223          	sw	a5,1604(s0)

00000474 <.LBE278>:
 474:	4532                	lw	a0,12(sp)
 476:	00000097          	auipc	ra,0x0
			476: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc9_setf
			476: R_RISCV_RELAX	*ABS*
 47a:	000080e7          	jalr	ra # 476 <.LBE278+0x2>

0000047e <.LVL277>:
 47e:	002c                	addi	a1,sp,8
 480:	0070                	addi	a2,sp,12
 482:	4529                	li	a0,10
 484:	00000097          	auipc	ra,0x0
			484: R_RISCV_CALL	rf_pri_query_txgain_table
			484: R_RISCV_RELAX	*ABS*
 488:	000080e7          	jalr	ra # 484 <.LVL277+0x6>

0000048c <.LBB280>:
 48c:	64442603          	lw	a2,1604(s0)

00000490 <.LVL279>:
 490:	8ff67793          	andi	a5,a2,-1793

00000494 <.LVL280>:
 494:	4622                	lw	a2,8(sp)
 496:	0622                	slli	a2,a2,0x8
 498:	70067613          	andi	a2,a2,1792
 49c:	8e5d                	or	a2,a2,a5

0000049e <.LVL281>:
 49e:	64c42223          	sw	a2,1604(s0)

000004a2 <.LBE280>:
 4a2:	4532                	lw	a0,12(sp)
 4a4:	00000097          	auipc	ra,0x0
			4a4: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc10_setf
			4a4: R_RISCV_RELAX	*ABS*
 4a8:	000080e7          	jalr	ra # 4a4 <.LBE280+0x2>

000004ac <.LVL283>:
 4ac:	002c                	addi	a1,sp,8
 4ae:	0070                	addi	a2,sp,12
 4b0:	452d                	li	a0,11
 4b2:	00000097          	auipc	ra,0x0
			4b2: R_RISCV_CALL	rf_pri_query_txgain_table
			4b2: R_RISCV_RELAX	*ABS*
 4b6:	000080e7          	jalr	ra # 4b2 <.LVL283+0x6>

000004ba <.LBB282>:
 4ba:	64442603          	lw	a2,1604(s0)

000004be <.LVL285>:
 4be:	01b67db3          	and	s11,a2,s11

000004c2 <.LVL286>:
 4c2:	4622                	lw	a2,8(sp)
 4c4:	0632                	slli	a2,a2,0xc
 4c6:	01a67633          	and	a2,a2,s10
 4ca:	01b66633          	or	a2,a2,s11

000004ce <.LVL287>:
 4ce:	64c42223          	sw	a2,1604(s0)

000004d2 <.LBE282>:
 4d2:	4532                	lw	a0,12(sp)
 4d4:	00000097          	auipc	ra,0x0
			4d4: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc11_setf
			4d4: R_RISCV_RELAX	*ABS*
 4d8:	000080e7          	jalr	ra # 4d4 <.LBE282+0x2>

000004dc <.LVL289>:
 4dc:	002c                	addi	a1,sp,8
 4de:	0070                	addi	a2,sp,12
 4e0:	4531                	li	a0,12
 4e2:	00000097          	auipc	ra,0x0
			4e2: R_RISCV_CALL	rf_pri_query_txgain_table
			4e2: R_RISCV_RELAX	*ABS*
 4e6:	000080e7          	jalr	ra # 4e2 <.LVL289+0x6>

000004ea <.LBB284>:
 4ea:	64442603          	lw	a2,1604(s0)

000004ee <.LVL291>:
 4ee:	01967cb3          	and	s9,a2,s9

000004f2 <.LVL292>:
 4f2:	4622                	lw	a2,8(sp)
 4f4:	0642                	slli	a2,a2,0x10
 4f6:	01867633          	and	a2,a2,s8
 4fa:	01966633          	or	a2,a2,s9

000004fe <.LVL293>:
 4fe:	64c42223          	sw	a2,1604(s0)

00000502 <.LBE284>:
 502:	4532                	lw	a0,12(sp)
 504:	00000097          	auipc	ra,0x0
			504: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc12_setf
			504: R_RISCV_RELAX	*ABS*
 508:	000080e7          	jalr	ra # 504 <.LBE284+0x2>

0000050c <.LVL295>:
 50c:	0070                	addi	a2,sp,12
 50e:	002c                	addi	a1,sp,8
 510:	4535                	li	a0,13
 512:	00000097          	auipc	ra,0x0
			512: R_RISCV_CALL	rf_pri_query_txgain_table
			512: R_RISCV_RELAX	*ABS*
 516:	000080e7          	jalr	ra # 512 <.LVL295+0x6>

0000051a <.LBB286>:
 51a:	64442683          	lw	a3,1604(s0)

0000051e <.LVL297>:
 51e:	0176fbb3          	and	s7,a3,s7

00000522 <.LVL298>:
 522:	46a2                	lw	a3,8(sp)
 524:	06d2                	slli	a3,a3,0x14
 526:	0166f6b3          	and	a3,a3,s6
 52a:	0176e6b3          	or	a3,a3,s7

0000052e <.LVL299>:
 52e:	64d42223          	sw	a3,1604(s0)

00000532 <.LBE286>:
 532:	4532                	lw	a0,12(sp)
 534:	00000097          	auipc	ra,0x0
			534: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc13_setf
			534: R_RISCV_RELAX	*ABS*
 538:	000080e7          	jalr	ra # 534 <.LBE286+0x2>

0000053c <.LVL301>:
 53c:	0070                	addi	a2,sp,12
 53e:	002c                	addi	a1,sp,8
 540:	4539                	li	a0,14
 542:	00000097          	auipc	ra,0x0
			542: R_RISCV_CALL	rf_pri_query_txgain_table
			542: R_RISCV_RELAX	*ABS*
 546:	000080e7          	jalr	ra # 542 <.LVL301+0x6>

0000054a <.LBB288>:
 54a:	64442703          	lw	a4,1604(s0)

0000054e <.LVL303>:
 54e:	01577ab3          	and	s5,a4,s5

00000552 <.LVL304>:
 552:	4722                	lw	a4,8(sp)
 554:	0762                	slli	a4,a4,0x18
 556:	01477733          	and	a4,a4,s4
 55a:	01576733          	or	a4,a4,s5

0000055e <.LVL305>:
 55e:	64e42223          	sw	a4,1604(s0)

00000562 <.LBE288>:
 562:	4532                	lw	a0,12(sp)
 564:	00000097          	auipc	ra,0x0
			564: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc14_setf
			564: R_RISCV_RELAX	*ABS*
 568:	000080e7          	jalr	ra # 564 <.LBE288+0x2>

0000056c <.LVL307>:
 56c:	0070                	addi	a2,sp,12
 56e:	002c                	addi	a1,sp,8
 570:	453d                	li	a0,15
 572:	00000097          	auipc	ra,0x0
			572: R_RISCV_CALL	rf_pri_query_txgain_table
			572: R_RISCV_RELAX	*ABS*
 576:	000080e7          	jalr	ra # 572 <.LVL307+0x6>

0000057a <.LBB290>:
 57a:	64442783          	lw	a5,1604(s0)

0000057e <.LVL309>:
 57e:	0127f933          	and	s2,a5,s2

00000582 <.LVL310>:
 582:	47a2                	lw	a5,8(sp)
 584:	07f2                	slli	a5,a5,0x1c
 586:	8fe5                	and	a5,a5,s1
 588:	0127e7b3          	or	a5,a5,s2

0000058c <.LVL311>:
 58c:	64f42223          	sw	a5,1604(s0)

00000590 <.LBE290>:
 590:	4532                	lw	a0,12(sp)

00000592 <.LBB292>:
 592:	74c1                	lui	s1,0xffff0

00000594 <.LBE292>:
 594:	00000097          	auipc	ra,0x0
			594: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc15_setf
			594: R_RISCV_RELAX	*ABS*
 598:	000080e7          	jalr	ra # 594 <.LBE292>

0000059c <.LBB293>:
 59c:	405c                	lw	a5,4(s0)

0000059e <.LVL314>:
 59e:	777d                	lui	a4,0xfffff
 5a0:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LLST60+0xffffb8bc>
 5a4:	8ff9                	and	a5,a5,a4
 5a6:	c05c                	sw	a5,4(s0)

000005a8 <.LBE293>:
 5a8:	4501                	li	a0,0
 5aa:	00000097          	auipc	ra,0x0
			5aa: R_RISCV_CALL	rf_fsm_st_dbg_en_setf
			5aa: R_RISCV_RELAX	*ABS*
 5ae:	000080e7          	jalr	ra # 5aa <.LBE293+0x2>

000005b2 <.LBB295>:
 5b2:	26842783          	lw	a5,616(s0)

000005b6 <.LBE295>:
 5b6:	4505                	li	a0,1

000005b8 <.LBB296>:
 5b8:	8fe5                	and	a5,a5,s1
 5ba:	0137e9b3          	or	s3,a5,s3

000005be <.LVL320>:
 5be:	27342423          	sw	s3,616(s0)

000005c2 <.LBE296>:
 5c2:	00000097          	auipc	ra,0x0
			5c2: R_RISCV_CALL	rf_fsm_ctrl_en_setf
			5c2: R_RISCV_RELAX	*ABS*
 5c6:	000080e7          	jalr	ra # 5c2 <.LBE296>

000005ca <.LBB297>:
 5ca:	4458                	lw	a4,12(s0)

000005cc <.LBB300>:
 5cc:	800007b7          	lui	a5,0x80000

000005d0 <.LBB304>:
 5d0:	810006b7          	lui	a3,0x81000

000005d4 <.LBB308>:
 5d4:	00476713          	ori	a4,a4,4

000005d8 <.LVL324>:
 5d8:	c458                	sw	a4,12(s0)

000005da <.LBB309>:
 5da:	60042703          	lw	a4,1536(s0)

000005de <.LBB310>:
 5de:	16fd                	addi	a3,a3,-1

000005e0 <.LBE310>:
 5e0:	4505                	li	a0,1

000005e2 <.LBB311>:
 5e2:	8f5d                	or	a4,a4,a5

000005e4 <.LVL327>:
 5e4:	60e42023          	sw	a4,1536(s0)

000005e8 <.LBB312>:
 5e8:	60042703          	lw	a4,1536(s0)

000005ec <.LVL329>:
 5ec:	8f75                	and	a4,a4,a3
 5ee:	60e42023          	sw	a4,1536(s0)

000005f2 <.LBB313>:
 5f2:	4458                	lw	a4,12(s0)

000005f4 <.LVL332>:
 5f4:	02076713          	ori	a4,a4,32

000005f8 <.LVL333>:
 5f8:	c458                	sw	a4,12(s0)

000005fa <.LBB315>:
 5fa:	4458                	lw	a4,12(s0)

000005fc <.LVL335>:
 5fc:	00276713          	ori	a4,a4,2

00000600 <.LVL336>:
 600:	c458                	sw	a4,12(s0)

00000602 <.LBB324>:
 602:	44c0c737          	lui	a4,0x44c0c
 606:	21872783          	lw	a5,536(a4) # 44c0c218 <.LLST60+0x44c082d5>

0000060a <.LVL338>:
 60a:	8fe5                	and	a5,a5,s1
 60c:	20f72c23          	sw	a5,536(a4)

00000610 <.LBE326>:
 610:	44c037b7          	lui	a5,0x44c03
 614:	0a028737          	lui	a4,0xa028
 618:	0207a823          	sw	zero,48(a5) # 44c03030 <.LLST60+0x44bff0ed>
 61c:	f7f70713          	addi	a4,a4,-129 # a027f7f <.LLST60+0xa02403c>
 620:	dbd8                	sw	a4,52(a5)
 622:	23282737          	lui	a4,0x23282
 626:	31770713          	addi	a4,a4,791 # 23282317 <.LLST60+0x2327e3d4>
 62a:	df98                	sw	a4,56(a5)
 62c:	7f021737          	lui	a4,0x7f021
 630:	a1770713          	addi	a4,a4,-1513 # 7f020a17 <.LLST60+0x7f01cad4>
 634:	dfd8                	sw	a4,60(a5)
 636:	07f00713          	li	a4,127
 63a:	c3b8                	sw	a4,64(a5)

0000063c <.LBB328>:
 63c:	22042783          	lw	a5,544(s0)

00000640 <.LVL342>:
 640:	f8000737          	lui	a4,0xf8000
 644:	177d                	addi	a4,a4,-1
 646:	8ff9                	and	a5,a5,a4
 648:	22f42023          	sw	a5,544(s0)

0000064c <.LBB330>:
 64c:	405c                	lw	a5,4(s0)

0000064e <.LBE330>:
 64e:	4000e4b7          	lui	s1,0x4000e

00000652 <.LBB333>:
 652:	9bcd                	andi	a5,a5,-13
 654:	c05c                	sw	a5,4(s0)

00000656 <.LBE333>:
 656:	41c4a783          	lw	a5,1052(s1) # 4000e41c <.LLST60+0x4000a4d9>

0000065a <.LVL348>:
 65a:	fbf7f793          	andi	a5,a5,-65
 65e:	40f4ae23          	sw	a5,1052(s1)
 662:	00000097          	auipc	ra,0x0
			662: R_RISCV_CALL	wait_us
			662: R_RISCV_RELAX	*ABS*
 666:	000080e7          	jalr	ra # 662 <.LVL348+0x8>

0000066a <.LBB334>:
 66a:	405c                	lw	a5,4(s0)

0000066c <.LBE334>:
 66c:	4505                	li	a0,1

0000066e <.LBB337>:
 66e:	9bcd                	andi	a5,a5,-13
 670:	0047e793          	ori	a5,a5,4
 674:	c05c                	sw	a5,4(s0)

00000676 <.LBE337>:
 676:	00000097          	auipc	ra,0x0
			676: R_RISCV_CALL	wait_us
			676: R_RISCV_RELAX	*ABS*
 67a:	000080e7          	jalr	ra # 676 <.LBE337>

0000067e <.LVL355>:
 67e:	41c4a783          	lw	a5,1052(s1)

00000682 <.LVL356>:
 682:	0407e793          	ori	a5,a5,64

00000686 <.LVL357>:
 686:	40f4ae23          	sw	a5,1052(s1)
 68a:	40f6                	lw	ra,92(sp)
 68c:	4466                	lw	s0,88(sp)
 68e:	44d6                	lw	s1,84(sp)
 690:	4946                	lw	s2,80(sp)
 692:	49b6                	lw	s3,76(sp)
 694:	4a26                	lw	s4,72(sp)
 696:	4a96                	lw	s5,68(sp)
 698:	4b06                	lw	s6,64(sp)
 69a:	5bf2                	lw	s7,60(sp)
 69c:	5c62                	lw	s8,56(sp)
 69e:	5cd2                	lw	s9,52(sp)
 6a0:	5d42                	lw	s10,48(sp)
 6a2:	5db2                	lw	s11,44(sp)
 6a4:	6472                	flw	fs0,28(sp)

000006a6 <.LVL358>:
 6a6:	64e2                	flw	fs1,24(sp)
 6a8:	6125                	addi	sp,sp,96
 6aa:	8082                	ret

000006ac <.L57>:
 6ac:	000007b7          	lui	a5,0x0
			6ac: R_RISCV_HI20	.LC0
			6ac: R_RISCV_RELAX	*ABS*
 6b0:	0007a507          	flw	fa0,0(a5) # 0 <rfc_init>
			6b0: R_RISCV_LO12_I	.LC0
			6b0: R_RISCV_RELAX	*ABS*
 6b4:	b4b9                	j	102 <.L52>
			6b4: R_RISCV_RVC_JUMP	.L52

000006b6 <.L58>:
 6b6:	8aaa                	mv	s5,a0
 6b8:	be5d                	j	26e <.L54>
			6b8: R_RISCV_RVC_JUMP	.L54

Disassembly of section .text.rfc_reset:

00000000 <rfc_reset>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	00078023          	sb	zero,0(a5) # 0 <rfc_reset>
			4: R_RISCV_LO12_S	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	8082                	ret

Disassembly of section .text.rfc_ver_set:

00000000 <rfc_ver_set>:
   0:	8082                	ret

Disassembly of section .text.rfc_txdfe_start:

00000000 <rfc_txdfe_start>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB347>:
   6:	40001437          	lui	s0,0x40001
   a:	22042783          	lw	a5,544(s0) # 40001220 <.LLST60+0x3fffd2dd>

0000000e <.LBE347>:
   e:	4505                	li	a0,1

00000010 <.LBB348>:
  10:	0807e793          	ori	a5,a5,128

00000014 <.LVL364>:
  14:	22f42023          	sw	a5,544(s0)

00000018 <.LBE348>:
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	wait_us
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LBE348>

00000020 <.LBB349>:
  20:	22042783          	lw	a5,544(s0)

00000024 <.LVL367>:
  24:	1007e793          	ori	a5,a5,256

00000028 <.LVL368>:
  28:	22f42023          	sw	a5,544(s0)

0000002c <.LBE349>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4422                	lw	s0,8(sp)
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.rfc_txdfe_stop:

00000000 <rfc_txdfe_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB359>:
   6:	40001437          	lui	s0,0x40001
   a:	22042783          	lw	a5,544(s0) # 40001220 <.LLST60+0x3fffd2dd>

0000000e <.LBE359>:
   e:	4505                	li	a0,1

00000010 <.LBB360>:
  10:	f7f7f793          	andi	a5,a5,-129
  14:	22f42023          	sw	a5,544(s0)

00000018 <.LBE360>:
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	wait_us
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LBE360>

00000020 <.LBB361>:
  20:	22042783          	lw	a5,544(s0)

00000024 <.LVL375>:
  24:	eff7f793          	andi	a5,a5,-257
  28:	22f42023          	sw	a5,544(s0)

0000002c <.LBE361>:
  2c:	40b2                	lw	ra,12(sp)
  2e:	4422                	lw	s0,8(sp)
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

Disassembly of section .text.rfc_txdfe_mux:

00000000 <rfc_txdfe_mux>:
   0:	400016b7          	lui	a3,0x40001
   4:	2206a783          	lw	a5,544(a3) # 40001220 <.LLST60+0x3fffd2dd>

00000008 <.LVL379>:
   8:	7779                	lui	a4,0xffffe
   a:	7ff70713          	addi	a4,a4,2047 # ffffe7ff <.LLST60+0xffffa8bc>
   e:	8ff9                	and	a5,a5,a4
  10:	6709                	lui	a4,0x2
  12:	052e                	slli	a0,a0,0xb

00000014 <.LVL381>:
  14:	80070713          	addi	a4,a4,-2048 # 1800 <.LASF355+0x7>
  18:	8d79                	and	a0,a0,a4
  1a:	8d5d                	or	a0,a0,a5

0000001c <.LVL382>:
  1c:	22a6a023          	sw	a0,544(a3)

00000020 <.LBE365>:
  20:	8082                	ret

Disassembly of section .text.rfc_txdfe_set_dvga:

00000000 <rfc_txdfe_set_dvga>:
   0:	03050793          	addi	a5,a0,48
   4:	0ff7f793          	andi	a5,a5,255
   8:	04800713          	li	a4,72
   c:	02f76163          	bltu	a4,a5,2e <.L69>
			c: R_RISCV_BRANCH	.L69

00000010 <.LBB369>:
  10:	400016b7          	lui	a3,0x40001
  14:	6006a783          	lw	a5,1536(a3) # 40001600 <.LLST60+0x3fffd6bd>

00000018 <.LVL386>:
  18:	81000737          	lui	a4,0x81000
  1c:	177d                	addi	a4,a4,-1
  1e:	8ff9                	and	a5,a5,a4
  20:	0562                	slli	a0,a0,0x18

00000022 <.LVL388>:
  22:	7f000737          	lui	a4,0x7f000
  26:	8d79                	and	a0,a0,a4
  28:	8d5d                	or	a0,a0,a5

0000002a <.LVL389>:
  2a:	60a6a023          	sw	a0,1536(a3)

0000002e <.L69>:
  2e:	8082                	ret

Disassembly of section .text.rfc_txdfe_set_iqgaincomp:

00000000 <rfc_txdfe_set_iqgaincomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6007a703          	lw	a4,1536(a5) # 40001600 <.LLST60+0x3fffd6bd>

00000008 <.LVL392>:
   8:	ff8006b7          	lui	a3,0xff800
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3
  10:	055e                	slli	a0,a0,0x17

00000012 <.LVL394>:
  12:	008006b7          	lui	a3,0x800
  16:	8d75                	and	a0,a0,a3
  18:	8d59                	or	a0,a0,a4

0000001a <.LVL395>:
  1a:	60a7a023          	sw	a0,1536(a5)

0000001e <.LBB377>:
  1e:	6007a703          	lw	a4,1536(a5)

00000022 <.LVL397>:
  22:	ff8016b7          	lui	a3,0xff801
  26:	16fd                	addi	a3,a3,-1
  28:	8f75                	and	a4,a4,a3
  2a:	05b2                	slli	a1,a1,0xc

0000002c <.LVL399>:
  2c:	007ff6b7          	lui	a3,0x7ff
  30:	8df5                	and	a1,a1,a3
  32:	8dd9                	or	a1,a1,a4

00000034 <.LVL400>:
  34:	60b7a023          	sw	a1,1536(a5)

00000038 <.LBE377>:
  38:	8082                	ret

Disassembly of section .text.rfc_txdfe_set_iqphasecomp:

00000000 <rfc_txdfe_set_iqphasecomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6007a703          	lw	a4,1536(a5) # 40001600 <.LLST60+0x3fffd6bd>

00000008 <.LVL403>:
   8:	052a                	slli	a0,a0,0xa

0000000a <.LVL404>:
   a:	40057513          	andi	a0,a0,1024
   e:	bff77713          	andi	a4,a4,-1025
  12:	8d59                	or	a0,a0,a4

00000014 <.LVL406>:
  14:	60a7a023          	sw	a0,1536(a5)

00000018 <.LBB385>:
  18:	6007a703          	lw	a4,1536(a5)

0000001c <.LVL408>:
  1c:	3ff5f593          	andi	a1,a1,1023

00000020 <.LVL409>:
  20:	c0077713          	andi	a4,a4,-1024
  24:	8dd9                	or	a1,a1,a4

00000026 <.LVL411>:
  26:	60b7a023          	sw	a1,1536(a5)

0000002a <.LBE385>:
  2a:	8082                	ret

Disassembly of section .text.rfc_txdfe_set_dccomp:

00000000 <rfc_txdfe_set_dccomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6047a703          	lw	a4,1540(a5) # 40001604 <.LLST60+0x3fffd6c1>

00000008 <.LVL414>:
   8:	76fd                	lui	a3,0xfffff
   a:	0552                	slli	a0,a0,0x14

0000000c <.LVL415>:
   c:	8f75                	and	a4,a4,a3
   e:	8151                	srli	a0,a0,0x14
  10:	8d59                	or	a0,a0,a4

00000012 <.LVL417>:
  12:	60a7a223          	sw	a0,1540(a5)

00000016 <.LBB393>:
  16:	6047a703          	lw	a4,1540(a5)

0000001a <.LVL419>:
  1a:	f00106b7          	lui	a3,0xf0010
  1e:	16fd                	addi	a3,a3,-1
  20:	8f75                	and	a4,a4,a3
  22:	05c2                	slli	a1,a1,0x10

00000024 <.LVL421>:
  24:	0fff06b7          	lui	a3,0xfff0
  28:	8df5                	and	a1,a1,a3
  2a:	8dd9                	or	a1,a1,a4

0000002c <.LVL422>:
  2c:	60b7a223          	sw	a1,1540(a5)

00000030 <.LBE393>:
  30:	8082                	ret

Disassembly of section .text.rfc_txdfe_set_iqswap:

00000000 <rfc_txdfe_set_iqswap>:
   0:	40001737          	lui	a4,0x40001
   4:	60472783          	lw	a5,1540(a4) # 40001604 <.LLST60+0x3fffd6c1>

00000008 <.LVL425>:
   8:	057e                	slli	a0,a0,0x1f

0000000a <.LVL426>:
   a:	0786                	slli	a5,a5,0x1

0000000c <.LVL427>:
   c:	8385                	srli	a5,a5,0x1

0000000e <.LVL428>:
   e:	8fc9                	or	a5,a5,a0
  10:	60f72223          	sw	a5,1540(a4)

00000014 <.LBE397>:
  14:	8082                	ret

Disassembly of section .text.rfc_rxdfe_start:

00000000 <rfc_rxdfe_start>:
   0:	400017b7          	lui	a5,0x40001
   4:	2207a703          	lw	a4,544(a5) # 40001220 <.LLST60+0x3fffd2dd>

00000008 <.LVL432>:
   8:	02076713          	ori	a4,a4,32

0000000c <.LVL433>:
   c:	22e7a023          	sw	a4,544(a5)

00000010 <.LBB405>:
  10:	2207a703          	lw	a4,544(a5)

00000014 <.LVL435>:
  14:	04076713          	ori	a4,a4,64

00000018 <.LVL436>:
  18:	22e7a023          	sw	a4,544(a5)

0000001c <.LBE405>:
  1c:	8082                	ret

Disassembly of section .text.rfc_rxdfe_stop:

00000000 <rfc_rxdfe_stop>:
   0:	400017b7          	lui	a5,0x40001
   4:	2207a703          	lw	a4,544(a5) # 40001220 <.LLST60+0x3fffd2dd>

00000008 <.LVL439>:
   8:	fdf77713          	andi	a4,a4,-33
   c:	22e7a023          	sw	a4,544(a5)

00000010 <.LBB413>:
  10:	2207a703          	lw	a4,544(a5)

00000014 <.LVL442>:
  14:	fbf77713          	andi	a4,a4,-65
  18:	22e7a023          	sw	a4,544(a5)

0000001c <.LBE413>:
  1c:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_iqgaincomp:

00000000 <rfc_rxdfe_set_iqgaincomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6147a703          	lw	a4,1556(a5) # 40001614 <.LLST60+0x3fffd6d1>

00000008 <.LVL446>:
   8:	ff8006b7          	lui	a3,0xff800
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3
  10:	055e                	slli	a0,a0,0x17

00000012 <.LVL448>:
  12:	008006b7          	lui	a3,0x800
  16:	8d75                	and	a0,a0,a3
  18:	8d59                	or	a0,a0,a4

0000001a <.LVL449>:
  1a:	60a7aa23          	sw	a0,1556(a5)

0000001e <.LBB421>:
  1e:	6147a703          	lw	a4,1556(a5)

00000022 <.LVL451>:
  22:	ff8016b7          	lui	a3,0xff801
  26:	16fd                	addi	a3,a3,-1
  28:	8f75                	and	a4,a4,a3
  2a:	05b2                	slli	a1,a1,0xc

0000002c <.LVL453>:
  2c:	007ff6b7          	lui	a3,0x7ff
  30:	8df5                	and	a1,a1,a3
  32:	8dd9                	or	a1,a1,a4

00000034 <.LVL454>:
  34:	60b7aa23          	sw	a1,1556(a5)

00000038 <.LBE421>:
  38:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_iqphasecomp:

00000000 <rfc_rxdfe_set_iqphasecomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6147a703          	lw	a4,1556(a5) # 40001614 <.LLST60+0x3fffd6d1>

00000008 <.LVL457>:
   8:	052a                	slli	a0,a0,0xa

0000000a <.LVL458>:
   a:	40057513          	andi	a0,a0,1024
   e:	bff77713          	andi	a4,a4,-1025
  12:	8d59                	or	a0,a0,a4

00000014 <.LVL460>:
  14:	60a7aa23          	sw	a0,1556(a5)

00000018 <.LBB429>:
  18:	6147a703          	lw	a4,1556(a5)

0000001c <.LVL462>:
  1c:	3ff5f593          	andi	a1,a1,1023

00000020 <.LVL463>:
  20:	c0077713          	andi	a4,a4,-1024
  24:	8dd9                	or	a1,a1,a4

00000026 <.LVL465>:
  26:	60b7aa23          	sw	a1,1556(a5)

0000002a <.LBE429>:
  2a:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_dccomp:

00000000 <rfc_rxdfe_set_dccomp>:
   0:	400017b7          	lui	a5,0x40001
   4:	6087a703          	lw	a4,1544(a5) # 40001608 <.LLST60+0x3fffd6c5>

00000008 <.LVL468>:
   8:	3ff57513          	andi	a0,a0,1023

0000000c <.LBB438>:
   c:	fc0106b7          	lui	a3,0xfc010

00000010 <.LBB441>:
  10:	c0077713          	andi	a4,a4,-1024
  14:	8d59                	or	a0,a0,a4

00000016 <.LVL471>:
  16:	60a7a423          	sw	a0,1544(a5)

0000001a <.LBB442>:
  1a:	6087a703          	lw	a4,1544(a5)

0000001e <.LVL473>:
  1e:	16fd                	addi	a3,a3,-1
  20:	05c2                	slli	a1,a1,0x10

00000022 <.LVL474>:
  22:	8f75                	and	a4,a4,a3
  24:	03ff06b7          	lui	a3,0x3ff0
  28:	8df5                	and	a1,a1,a3
  2a:	8dd9                	or	a1,a1,a4

0000002c <.LVL476>:
  2c:	60b7a423          	sw	a1,1544(a5)

00000030 <.LBE442>:
  30:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_iqswap:

00000000 <rfc_rxdfe_set_iqswap>:
   0:	40001737          	lui	a4,0x40001
   4:	60872783          	lw	a5,1544(a4) # 40001608 <.LLST60+0x3fffd6c5>

00000008 <.LVL479>:
   8:	057e                	slli	a0,a0,0x1f

0000000a <.LVL480>:
   a:	0786                	slli	a5,a5,0x1

0000000c <.LVL481>:
   c:	8385                	srli	a5,a5,0x1

0000000e <.LVL482>:
   e:	8fc9                	or	a5,a5,a0
  10:	60f72423          	sw	a5,1544(a4)

00000014 <.LBE445>:
  14:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_notch0:

00000000 <rfc_rxdfe_set_notch0>:
   0:	400017b7          	lui	a5,0x40001
   4:	7007a703          	lw	a4,1792(a5) # 40001700 <.LLST60+0x3fffd7bd>

00000008 <.LVL486>:
   8:	899d                	andi	a1,a1,7

0000000a <.LBB456>:
   a:	76c1                	lui	a3,0xffff0

0000000c <.LBB459>:
   c:	9b61                	andi	a4,a4,-8
   e:	8dd9                	or	a1,a1,a4

00000010 <.LVL489>:
  10:	70b7a023          	sw	a1,1792(a5)

00000014 <.LBB460>:
  14:	7007a703          	lw	a4,1792(a5)

00000018 <.LVL491>:
  18:	0ff68693          	addi	a3,a3,255 # ffff00ff <.LLST60+0xfffec1bc>
  1c:	0622                	slli	a2,a2,0x8

0000001e <.LVL492>:
  1e:	8f75                	and	a4,a4,a3
  20:	66c1                	lui	a3,0x10
  22:	16fd                	addi	a3,a3,-1
  24:	8e75                	and	a2,a2,a3
  26:	8e59                	or	a2,a2,a4

00000028 <.LVL494>:
  28:	70c7a023          	sw	a2,1792(a5)

0000002c <.LBB461>:
  2c:	7007a703          	lw	a4,1792(a5)

00000030 <.LVL496>:
  30:	051a                	slli	a0,a0,0x6

00000032 <.LVL497>:
  32:	04057513          	andi	a0,a0,64
  36:	fbf77713          	andi	a4,a4,-65
  3a:	8d59                	or	a0,a0,a4

0000003c <.LVL499>:
  3c:	70a7a023          	sw	a0,1792(a5)

00000040 <.LBE461>:
  40:	8082                	ret

Disassembly of section .text.rfc_config_channel:

00000000 <rfc_config_channel>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)

00000008 <.LBB490>:
   8:	40001437          	lui	s0,0x40001

0000000c <.LBE490>:
   c:	c84a                	sw	s2,16(sp)

0000000e <.LBB491>:
   e:	22842783          	lw	a5,552(s0) # 40001228 <.LLST60+0x3fffd2e5>

00000012 <.LBB492>:
  12:	777d                	lui	a4,0xfffff

00000014 <.LBB497>:
  14:	7481                	lui	s1,0xfffe0

00000016 <.LBB520>:
  16:	0087e793          	ori	a5,a5,8

0000001a <.LVL503>:
  1a:	22f42423          	sw	a5,552(s0)

0000001e <.LBB521>:
  1e:	445c                	lw	a5,12(s0)

00000020 <.LBB502>:
  20:	14fd                	addi	s1,s1,-1

00000022 <.LBE502>:
  22:	892a                	mv	s2,a0

00000024 <.LBB525>:
  24:	0407e793          	ori	a5,a5,64

00000028 <.LVL506>:
  28:	c45c                	sw	a5,12(s0)

0000002a <.LBB526>:
  2a:	445c                	lw	a5,12(s0)

0000002c <.LVL508>:
  2c:	2007e793          	ori	a5,a5,512

00000030 <.LVL509>:
  30:	c45c                	sw	a5,12(s0)

00000032 <.LBB528>:
  32:	445c                	lw	a5,12(s0)

00000034 <.LVL511>:
  34:	0017e793          	ori	a5,a5,1

00000038 <.LVL512>:
  38:	c45c                	sw	a5,12(s0)

0000003a <.LBB503>:
  3a:	26442783          	lw	a5,612(s0)

0000003e <.LVL514>:
  3e:	8f7d                	and	a4,a4,a5

00000040 <.LVL515>:
  40:	01451793          	slli	a5,a0,0x14
  44:	83d1                	srli	a5,a5,0x14
  46:	8fd9                	or	a5,a5,a4

00000048 <.LVL516>:
  48:	26f42223          	sw	a5,612(s0)

0000004c <.LBB504>:
  4c:	26842783          	lw	a5,616(s0)

00000050 <.LVL518>:
  50:	00020737          	lui	a4,0x20

00000054 <.LBE504>:
  54:	4529                	li	a0,10

00000056 <.LBB505>:
  56:	8fe5                	and	a5,a5,s1
  58:	8fd9                	or	a5,a5,a4
  5a:	26f42423          	sw	a5,616(s0)

0000005e <.LBE505>:
  5e:	00000097          	auipc	ra,0x0
			5e: R_RISCV_CALL	wait_us
			5e: R_RISCV_RELAX	*ABS*
  62:	000080e7          	jalr	ra # 5e <.LBE505>

00000066 <.LBB506>:
  66:	26842783          	lw	a5,616(s0)

0000006a <.LBE506>:
  6a:	4529                	li	a0,10

0000006c <.LBB509>:
  6c:	8cfd                	and	s1,s1,a5

0000006e <.LVL525>:
  6e:	26942423          	sw	s1,616(s0)

00000072 <.LBE509>:
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	wait_us
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LBE509>

0000007a <.LVL527>:
  7a:	4501                	li	a0,0
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	rf_fsm_ctrl_en_setf
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LVL527+0x2>

00000084 <.LVL528>:
  84:	4529                	li	a0,10
  86:	00000097          	auipc	ra,0x0
			86: R_RISCV_CALL	wait_us
			86: R_RISCV_RELAX	*ABS*
  8a:	000080e7          	jalr	ra # 86 <.LVL528+0x2>

0000008e <.LVL529>:
  8e:	4505                	li	a0,1
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	rf_fsm_ctrl_en_setf
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL529+0x2>

00000098 <.LVL530>:
  98:	4529                	li	a0,10
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	wait_us
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LVL530+0x2>

000000a2 <.LBB510>:
  a2:	26c42783          	lw	a5,620(s0)

000000a6 <.LBE510>:
  a6:	4529                	li	a0,10

000000a8 <.LBB513>:
  a8:	9be1                	andi	a5,a5,-8
  aa:	0017e793          	ori	a5,a5,1
  ae:	26f42623          	sw	a5,620(s0)

000000b2 <.LBE513>:
  b2:	00000097          	auipc	ra,0x0
			b2: R_RISCV_CALL	wait_us
			b2: R_RISCV_RELAX	*ABS*
  b6:	000080e7          	jalr	ra # b2 <.LBE513>

000000ba <.LVL536>:
  ba:	4505                	li	a0,1
  bc:	00000097          	auipc	ra,0x0
			bc: R_RISCV_CALL	rf_fsm_st_dbg_en_setf
			bc: R_RISCV_RELAX	*ABS*
  c0:	000080e7          	jalr	ra # bc <.LVL536+0x2>

000000c4 <.LVL537>:
  c4:	4529                	li	a0,10
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	wait_us
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.LVL537+0x2>

000000ce <.LBB514>:
  ce:	26c42783          	lw	a5,620(s0)

000000d2 <.LBE514>:
  d2:	06400513          	li	a0,100

000000d6 <.LBB517>:
  d6:	9be1                	andi	a5,a5,-8
  d8:	0027e793          	ori	a5,a5,2
  dc:	26f42623          	sw	a5,620(s0)

000000e0 <.LBE517>:
  e0:	00000097          	auipc	ra,0x0
			e0: R_RISCV_CALL	wait_us
			e0: R_RISCV_RELAX	*ABS*
  e4:	000080e7          	jalr	ra # e0 <.LBE517>

000000e8 <.LVL543>:
  e8:	4501                	li	a0,0
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	rf_fsm_st_dbg_en_setf
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL543+0x2>

000000f2 <.LVL544>:
  f2:	4529                	li	a0,10
  f4:	00000097          	auipc	ra,0x0
			f4: R_RISCV_CALL	wait_us
			f4: R_RISCV_RELAX	*ABS*
  f8:	000080e7          	jalr	ra # f4 <.LVL544+0x2>

000000fc <.LBE530>:
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	_print_channel_info
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.LBE530>

00000104 <.LVL546>:
 104:	854a                	mv	a0,s2
 106:	00000097          	auipc	ra,0x0
			106: R_RISCV_CALL	rf_pri_update_param
			106: R_RISCV_RELAX	*ABS*
 10a:	000080e7          	jalr	ra # 106 <.LVL546+0x2>

0000010e <.LVL547>:
 10e:	0070                	addi	a2,sp,12
 110:	00b10593          	addi	a1,sp,11
 114:	854a                	mv	a0,s2
 116:	00000097          	auipc	ra,0x0
			116: R_RISCV_CALL	rf_pri_get_notch_param
			116: R_RISCV_RELAX	*ABS*
 11a:	000080e7          	jalr	ra # 116 <.LVL547+0x8>

0000011e <.LVL548>:
 11e:	4532                	lw	a0,12(sp)
 120:	00000097          	auipc	ra,0x0
			120: R_RISCV_CALL	__floatsidf
			120: R_RISCV_RELAX	*ABS*
 124:	000080e7          	jalr	ra # 120 <.LVL548+0x2>

00000128 <.LVL549>:
 128:	000007b7          	lui	a5,0x0
			128: R_RISCV_HI20	.LC8
			128: R_RISCV_RELAX	*ABS*
 12c:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel>
			12c: R_RISCV_LO12_I	.LC8
			12c: R_RISCV_RELAX	*ABS*
 130:	0047a683          	lw	a3,4(a5)
			130: R_RISCV_LO12_I	.LC8+0x4
			130: R_RISCV_RELAX	*ABS*+0x4
 134:	00000097          	auipc	ra,0x0
			134: R_RISCV_CALL	__divdf3
			134: R_RISCV_RELAX	*ABS*
 138:	000080e7          	jalr	ra # 134 <.LVL549+0xc>
 13c:	000007b7          	lui	a5,0x0
			13c: R_RISCV_HI20	.LC9
			13c: R_RISCV_RELAX	*ABS*
 140:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel>
			140: R_RISCV_LO12_I	.LC9
			140: R_RISCV_RELAX	*ABS*
 144:	0047a683          	lw	a3,4(a5)
			144: R_RISCV_LO12_I	.LC9+0x4
			144: R_RISCV_RELAX	*ABS*+0x4
 148:	00000097          	auipc	ra,0x0
			148: R_RISCV_CALL	__muldf3
			148: R_RISCV_RELAX	*ABS*
 14c:	000080e7          	jalr	ra # 148 <.LVL549+0x20>
 150:	000007b7          	lui	a5,0x0
			150: R_RISCV_HI20	.LC5
			150: R_RISCV_RELAX	*ABS*
 154:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel>
			154: R_RISCV_LO12_I	.LC5
			154: R_RISCV_RELAX	*ABS*
 158:	0047a683          	lw	a3,4(a5)
			158: R_RISCV_LO12_I	.LC5+0x4
			158: R_RISCV_RELAX	*ABS*+0x4
 15c:	00000097          	auipc	ra,0x0
			15c: R_RISCV_CALL	__adddf3
			15c: R_RISCV_RELAX	*ABS*
 160:	000080e7          	jalr	ra # 15c <.LVL549+0x34>
 164:	00000097          	auipc	ra,0x0
			164: R_RISCV_CALL	__fixdfsi
			164: R_RISCV_RELAX	*ABS*
 168:	000080e7          	jalr	ra # 164 <.LVL549+0x3c>
 16c:	01851613          	slli	a2,a0,0x18
 170:	00b14503          	lbu	a0,11(sp)
 174:	8661                	srai	a2,a2,0x18
 176:	4585                	li	a1,1
 178:	00000097          	auipc	ra,0x0
			178: R_RISCV_CALL	rfc_rxdfe_set_notch0
			178: R_RISCV_RELAX	*ABS*
 17c:	000080e7          	jalr	ra # 178 <.LVL549+0x50>

00000180 <.LBB531>:
 180:	22842783          	lw	a5,552(s0)

00000184 <.LVL555>:
 184:	9bdd                	andi	a5,a5,-9
 186:	22f42423          	sw	a5,552(s0)

0000018a <.LBE531>:
 18a:	40f2                	lw	ra,28(sp)
 18c:	4462                	lw	s0,24(sp)
 18e:	44d2                	lw	s1,20(sp)
 190:	4942                	lw	s2,16(sp)

00000192 <.LVL558>:
 192:	6105                	addi	sp,sp,32
 194:	8082                	ret

Disassembly of section .text.rfc_config_channel_sw:

00000000 <rfc_config_channel_sw>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)

00000008 <.LBB578>:
   8:	40001437          	lui	s0,0x40001

0000000c <.LBE578>:
   c:	c84a                	sw	s2,16(sp)

0000000e <.LBB579>:
   e:	445c                	lw	a5,12(s0)

00000010 <.LBE579>:
  10:	892a                	mv	s2,a0

00000012 <.LBB580>:
  12:	fbf7f793          	andi	a5,a5,-65
  16:	c45c                	sw	a5,12(s0)

00000018 <.LBB581>:
  18:	445c                	lw	a5,12(s0)

0000001a <.LVL563>:
  1a:	dff7f793          	andi	a5,a5,-513
  1e:	c45c                	sw	a5,12(s0)

00000020 <.LBB583>:
  20:	445c                	lw	a5,12(s0)

00000022 <.LVL566>:
  22:	9bf9                	andi	a5,a5,-2
  24:	c45c                	sw	a5,12(s0)

00000026 <.LBB585>:
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	__floatunsidf
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBB585>

0000002e <.LVL569>:
  2e:	000007b7          	lui	a5,0x0
			2e: R_RISCV_HI20	.LC10
			2e: R_RISCV_RELAX	*ABS*
  32:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			32: R_RISCV_LO12_I	.LC10
			32: R_RISCV_RELAX	*ABS*
  36:	0047a683          	lw	a3,4(a5)
			36: R_RISCV_LO12_I	.LC10+0x4
			36: R_RISCV_RELAX	*ABS*+0x4
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	__muldf3
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL569+0xc>
  42:	000007b7          	lui	a5,0x0
			42: R_RISCV_HI20	.LC11
			42: R_RISCV_RELAX	*ABS*
  46:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			46: R_RISCV_LO12_I	.LC11
			46: R_RISCV_RELAX	*ABS*
  4a:	0047a683          	lw	a3,4(a5)
			4a: R_RISCV_LO12_I	.LC11+0x4
			4a: R_RISCV_RELAX	*ABS*+0x4
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	__divdf3
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL569+0x20>
  56:	000007b7          	lui	a5,0x0
			56: R_RISCV_HI20	.LANCHOR1
			56: R_RISCV_RELAX	*ABS*
  5a:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			5a: R_RISCV_LO12_I	.LANCHOR1
			5a: R_RISCV_RELAX	*ABS*
  5e:	0047a683          	lw	a3,4(a5)
			5e: R_RISCV_LO12_I	.LANCHOR1+0x4
			5e: R_RISCV_RELAX	*ABS*+0x4
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	__divdf3
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL569+0x34>
  6a:	000007b7          	lui	a5,0x0
			6a: R_RISCV_HI20	.LC12
			6a: R_RISCV_RELAX	*ABS*
  6e:	0047a683          	lw	a3,4(a5) # 4 <rfc_config_channel_sw+0x4>
			6e: R_RISCV_LO12_I	.LC12+0x4
			6e: R_RISCV_RELAX	*ABS*+0x4
  72:	0007a603          	lw	a2,0(a5)
			72: R_RISCV_LO12_I	.LC12
			72: R_RISCV_RELAX	*ABS*
  76:	00000097          	auipc	ra,0x0
			76: R_RISCV_CALL	__muldf3
			76: R_RISCV_RELAX	*ABS*
  7a:	000080e7          	jalr	ra # 76 <.LVL569+0x48>
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	__fixunsdfsi
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.LVL569+0x50>

00000086 <.LBB587>:
  86:	445c                	lw	a5,12(s0)

00000088 <.LBB591>:
  88:	fff00737          	lui	a4,0xfff00
  8c:	177d                	addi	a4,a4,-1

0000008e <.LBB594>:
  8e:	fbf7f793          	andi	a5,a5,-65
  92:	c45c                	sw	a5,12(s0)

00000094 <.LBB595>:
  94:	445c                	lw	a5,12(s0)

00000096 <.LBE595>:
  96:	84aa                	mv	s1,a0

00000098 <.LBB599>:
  98:	854a                	mv	a0,s2

0000009a <.LBB601>:
  9a:	dff7f793          	andi	a5,a5,-513
  9e:	c45c                	sw	a5,12(s0)

000000a0 <.LBB602>:
  a0:	581c                	lw	a5,48(s0)

000000a2 <.LVL578>:
  a2:	8ff9                	and	a5,a5,a4
  a4:	00100737          	lui	a4,0x100
  a8:	8fd9                	or	a5,a5,a4
  aa:	d81c                	sw	a5,48(s0)

000000ac <.LBB603>:
  ac:	581c                	lw	a5,48(s0)

000000ae <.LVL582>:
  ae:	ffe00737          	lui	a4,0xffe00
  b2:	177d                	addi	a4,a4,-1
  b4:	8ff9                	and	a5,a5,a4
  b6:	00200737          	lui	a4,0x200
  ba:	8fd9                	or	a5,a5,a4
  bc:	d81c                	sw	a5,48(s0)

000000be <.LBB605>:
  be:	581c                	lw	a5,48(s0)

000000c0 <.LVL586>:
  c0:	ffc00737          	lui	a4,0xffc00
  c4:	177d                	addi	a4,a4,-1
  c6:	8ff9                	and	a5,a5,a4
  c8:	00400737          	lui	a4,0x400
  cc:	8fd9                	or	a5,a5,a4
  ce:	d81c                	sw	a5,48(s0)

000000d0 <.LBB607>:
  d0:	581c                	lw	a5,48(s0)

000000d2 <.LVL590>:
  d2:	ff800737          	lui	a4,0xff800
  d6:	177d                	addi	a4,a4,-1
  d8:	8ff9                	and	a5,a5,a4
  da:	00800737          	lui	a4,0x800
  de:	8fd9                	or	a5,a5,a4
  e0:	d81c                	sw	a5,48(s0)

000000e2 <.LBB609>:
  e2:	445c                	lw	a5,12(s0)

000000e4 <.LVL594>:
  e4:	9bf9                	andi	a5,a5,-2
  e6:	c45c                	sw	a5,12(s0)

000000e8 <.LBE609>:
  e8:	00000097          	auipc	ra,0x0
			e8: R_RISCV_CALL	rf_pri_get_vco_freq_cw
			e8: R_RISCV_RELAX	*ABS*
  ec:	000080e7          	jalr	ra # e8 <.LBE609>

000000f0 <.LBB611>:
  f0:	0a042783          	lw	a5,160(s0) # 400010a0 <.LLST60+0x3fffd15d>

000000f4 <.LVL598>:
  f4:	0ff57513          	andi	a0,a0,255

000000f8 <.LVL599>:
  f8:	f007f793          	andi	a5,a5,-256
  fc:	8d5d                	or	a0,a0,a5

000000fe <.LVL601>:
  fe:	0aa42023          	sw	a0,160(s0)

00000102 <.LBE611>:
 102:	854a                	mv	a0,s2
 104:	00000097          	auipc	ra,0x0
			104: R_RISCV_CALL	rf_pri_get_vco_idac_cw
			104: R_RISCV_RELAX	*ABS*
 108:	000080e7          	jalr	ra # 104 <.LBE611+0x2>

0000010c <.LBB613>:
 10c:	0a042783          	lw	a5,160(s0)

00000110 <.LVL604>:
 110:	ffe10737          	lui	a4,0xffe10
 114:	177d                	addi	a4,a4,-1
 116:	8ff9                	and	a5,a5,a4
 118:	0542                	slli	a0,a0,0x10

0000011a <.LVL606>:
 11a:	001f0737          	lui	a4,0x1f0
 11e:	8d79                	and	a0,a0,a4
 120:	8d5d                	or	a0,a0,a5

00000122 <.LVL607>:
 122:	0aa42023          	sw	a0,160(s0)

00000126 <.LBE613>:
 126:	854a                	mv	a0,s2
 128:	00000097          	auipc	ra,0x0
			128: R_RISCV_CALL	rf_pri_get_vco_freq_cw
			128: R_RISCV_RELAX	*ABS*
 12c:	000080e7          	jalr	ra # 128 <.LBE613+0x2>

00000130 <.LBB615>:
 130:	0bc42783          	lw	a5,188(s0)

00000134 <.LVL610>:
 134:	ff100737          	lui	a4,0xff100
 138:	177d                	addi	a4,a4,-1
 13a:	8ff9                	and	a5,a5,a4
 13c:	0542                	slli	a0,a0,0x10

0000013e <.LVL612>:
 13e:	00f00737          	lui	a4,0xf00
 142:	8d79                	and	a0,a0,a4
 144:	8d5d                	or	a0,a0,a5

00000146 <.LVL613>:
 146:	0aa42e23          	sw	a0,188(s0)

0000014a <.LBB617>:
 14a:	0c442503          	lw	a0,196(s0)

0000014e <.LVL615>:
 14e:	c00007b7          	lui	a5,0xc0000

00000152 <.LBB620>:
 152:	777d                	lui	a4,0xfffff

00000154 <.LBB624>:
 154:	8fe9                	and	a5,a5,a0

00000156 <.LVL616>:
 156:	00249513          	slli	a0,s1,0x2
 15a:	8109                	srli	a0,a0,0x2
 15c:	8d5d                	or	a0,a0,a5

0000015e <.LVL617>:
 15e:	0ca42223          	sw	a0,196(s0)

00000162 <.LBB625>:
 162:	0c042783          	lw	a5,192(s0)

00000166 <.LVL619>:
 166:	177d                	addi	a4,a4,-1

00000168 <.LBB626>:
 168:	74c1                	lui	s1,0xffff0

0000016a <.LBB629>:
 16a:	8ff9                	and	a5,a5,a4
 16c:	0cf42023          	sw	a5,192(s0)

00000170 <.LBB630>:
 170:	0b842783          	lw	a5,184(s0)

00000174 <.LVL623>:
 174:	14fd                	addi	s1,s1,-1
 176:	6741                	lui	a4,0x10
 178:	8fe5                	and	a5,a5,s1
 17a:	8fd9                	or	a5,a5,a4
 17c:	0af42c23          	sw	a5,184(s0)

00000180 <.LBE630>:
 180:	4529                	li	a0,10
 182:	00000097          	auipc	ra,0x0
			182: R_RISCV_CALL	wait_us
			182: R_RISCV_RELAX	*ABS*
 186:	000080e7          	jalr	ra # 182 <.LBE630+0x2>

0000018a <.LBB631>:
 18a:	0b842783          	lw	a5,184(s0)

0000018e <.LBE631>:
 18e:	03200513          	li	a0,50

00000192 <.LBB634>:
 192:	8cfd                	and	s1,s1,a5

00000194 <.LVL629>:
 194:	0a942c23          	sw	s1,184(s0)

00000198 <.LBE634>:
 198:	00000097          	auipc	ra,0x0
			198: R_RISCV_CALL	wait_us
			198: R_RISCV_RELAX	*ABS*
 19c:	000080e7          	jalr	ra # 198 <.LBE634>

000001a0 <.LBB635>:
 1a0:	0b042783          	lw	a5,176(s0)

000001a4 <.LVL632>:
 1a4:	f00004b7          	lui	s1,0xf0000
 1a8:	14fd                	addi	s1,s1,-1
 1aa:	10000737          	lui	a4,0x10000
 1ae:	8fe5                	and	a5,a5,s1
 1b0:	8fd9                	or	a5,a5,a4
 1b2:	0af42823          	sw	a5,176(s0)

000001b6 <.LBE635>:
 1b6:	4529                	li	a0,10
 1b8:	00000097          	auipc	ra,0x0
			1b8: R_RISCV_CALL	wait_us
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	000080e7          	jalr	ra # 1b8 <.LBE635+0x2>

000001c0 <.LBB637>:
 1c0:	0b042783          	lw	a5,176(s0)

000001c4 <.LBE637>:
 1c4:	03200513          	li	a0,50

000001c8 <.LBB640>:
 1c8:	8cfd                	and	s1,s1,a5

000001ca <.LVL638>:
 1ca:	0a942823          	sw	s1,176(s0)

000001ce <.LBE640>:
 1ce:	00000097          	auipc	ra,0x0
			1ce: R_RISCV_CALL	wait_us
			1ce: R_RISCV_RELAX	*ABS*
 1d2:	000080e7          	jalr	ra # 1ce <.LBE640>

000001d6 <.LBE585>:
 1d6:	00000097          	auipc	ra,0x0
			1d6: R_RISCV_CALL	_print_channel_info
			1d6: R_RISCV_RELAX	*ABS*
 1da:	000080e7          	jalr	ra # 1d6 <.LBE585>

000001de <.LVL641>:
 1de:	854a                	mv	a0,s2
 1e0:	00000097          	auipc	ra,0x0
			1e0: R_RISCV_CALL	rf_pri_update_param
			1e0: R_RISCV_RELAX	*ABS*
 1e4:	000080e7          	jalr	ra # 1e0 <.LVL641+0x2>

000001e8 <.LVL642>:
 1e8:	0070                	addi	a2,sp,12
 1ea:	00b10593          	addi	a1,sp,11
 1ee:	854a                	mv	a0,s2
 1f0:	00000097          	auipc	ra,0x0
			1f0: R_RISCV_CALL	rf_pri_get_notch_param
			1f0: R_RISCV_RELAX	*ABS*
 1f4:	000080e7          	jalr	ra # 1f0 <.LVL642+0x8>

000001f8 <.LVL643>:
 1f8:	4532                	lw	a0,12(sp)
 1fa:	00000097          	auipc	ra,0x0
			1fa: R_RISCV_CALL	__floatsidf
			1fa: R_RISCV_RELAX	*ABS*
 1fe:	000080e7          	jalr	ra # 1fa <.LVL643+0x2>

00000202 <.LVL644>:
 202:	000007b7          	lui	a5,0x0
			202: R_RISCV_HI20	.LC8
			202: R_RISCV_RELAX	*ABS*
 206:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			206: R_RISCV_LO12_I	.LC8
			206: R_RISCV_RELAX	*ABS*
 20a:	0047a683          	lw	a3,4(a5)
			20a: R_RISCV_LO12_I	.LC8+0x4
			20a: R_RISCV_RELAX	*ABS*+0x4
 20e:	00000097          	auipc	ra,0x0
			20e: R_RISCV_CALL	__divdf3
			20e: R_RISCV_RELAX	*ABS*
 212:	000080e7          	jalr	ra # 20e <.LVL644+0xc>
 216:	000007b7          	lui	a5,0x0
			216: R_RISCV_HI20	.LC9
			216: R_RISCV_RELAX	*ABS*
 21a:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			21a: R_RISCV_LO12_I	.LC9
			21a: R_RISCV_RELAX	*ABS*
 21e:	0047a683          	lw	a3,4(a5)
			21e: R_RISCV_LO12_I	.LC9+0x4
			21e: R_RISCV_RELAX	*ABS*+0x4
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	__muldf3
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.LVL644+0x20>
 22a:	000007b7          	lui	a5,0x0
			22a: R_RISCV_HI20	.LC5
			22a: R_RISCV_RELAX	*ABS*
 22e:	0007a603          	lw	a2,0(a5) # 0 <rfc_config_channel_sw>
			22e: R_RISCV_LO12_I	.LC5
			22e: R_RISCV_RELAX	*ABS*
 232:	0047a683          	lw	a3,4(a5)
			232: R_RISCV_LO12_I	.LC5+0x4
			232: R_RISCV_RELAX	*ABS*+0x4
 236:	00000097          	auipc	ra,0x0
			236: R_RISCV_CALL	__adddf3
			236: R_RISCV_RELAX	*ABS*
 23a:	000080e7          	jalr	ra # 236 <.LVL644+0x34>
 23e:	00000097          	auipc	ra,0x0
			23e: R_RISCV_CALL	__fixdfsi
			23e: R_RISCV_RELAX	*ABS*
 242:	000080e7          	jalr	ra # 23e <.LVL644+0x3c>
 246:	01851613          	slli	a2,a0,0x18
 24a:	00b14503          	lbu	a0,11(sp)
 24e:	8661                	srai	a2,a2,0x18
 250:	4585                	li	a1,1
 252:	00000097          	auipc	ra,0x0
			252: R_RISCV_CALL	rfc_rxdfe_set_notch0
			252: R_RISCV_RELAX	*ABS*
 256:	000080e7          	jalr	ra # 252 <.LVL644+0x50>

0000025a <.LVL649>:
 25a:	40f2                	lw	ra,28(sp)
 25c:	4462                	lw	s0,24(sp)
 25e:	44d2                	lw	s1,20(sp)
 260:	4942                	lw	s2,16(sp)

00000262 <.LVL650>:
 262:	6105                	addi	sp,sp,32
 264:	8082                	ret

Disassembly of section .text.rfc_rxdfe_set_notch1:

00000000 <rfc_rxdfe_set_notch1>:
   0:	400017b7          	lui	a5,0x40001
   4:	7007a703          	lw	a4,1792(a5) # 40001700 <.LLST60+0x3fffd7bd>

00000008 <.LVL652>:
   8:	058e                	slli	a1,a1,0x3

0000000a <.LVL653>:
   a:	0385f593          	andi	a1,a1,56
   e:	fc777713          	andi	a4,a4,-57
  12:	8dd9                	or	a1,a1,a4

00000014 <.LVL655>:
  14:	70b7a023          	sw	a1,1792(a5)

00000018 <.LBB649>:
  18:	7007a703          	lw	a4,1792(a5)

0000001c <.LVL657>:
  1c:	ff0106b7          	lui	a3,0xff010
  20:	16fd                	addi	a3,a3,-1
  22:	8f75                	and	a4,a4,a3
  24:	0642                	slli	a2,a2,0x10

00000026 <.LVL659>:
  26:	00ff06b7          	lui	a3,0xff0
  2a:	8e75                	and	a2,a2,a3
  2c:	8e59                	or	a2,a2,a4

0000002e <.LVL660>:
  2e:	70c7a023          	sw	a2,1792(a5)

00000032 <.LBB651>:
  32:	7007a703          	lw	a4,1792(a5)

00000036 <.LVL662>:
  36:	051e                	slli	a0,a0,0x7

00000038 <.LVL663>:
  38:	0ff57513          	andi	a0,a0,255
  3c:	f7f77713          	andi	a4,a4,-129
  40:	8d59                	or	a0,a0,a4

00000042 <.LVL665>:
  42:	70a7a023          	sw	a0,1792(a5)

00000046 <.LBE651>:
  46:	8082                	ret

Disassembly of section .text.rfc_sg_start:

00000000 <rfc_sg_start>:
   0:	400017b7          	lui	a5,0x40001
   4:	20c7a303          	lw	t1,524(a5) # 4000120c <.LLST60+0x3fffd2c9>

00000008 <.LVL668>:
   8:	80000837          	lui	a6,0x80000
   c:	fff84893          	not	a7,a6
  10:	01137333          	and	t1,t1,a7
  14:	2067a623          	sw	t1,524(a5)

00000018 <.LBB675>:
  18:	20c7a303          	lw	t1,524(a5)

0000001c <.LVL671>:
  1c:	fc010e37          	lui	t3,0xfc010
  20:	1e7d                	addi	t3,t3,-1
  22:	01c37333          	and	t1,t1,t3
  26:	0542                	slli	a0,a0,0x10

00000028 <.LVL673>:
  28:	03ff0e37          	lui	t3,0x3ff0
  2c:	01c57533          	and	a0,a0,t3
  30:	00656533          	or	a0,a0,t1

00000034 <.LVL674>:
  34:	20a7a623          	sw	a0,524(a5)

00000038 <.LBB677>:
  38:	20c7a503          	lw	a0,524(a5)

0000003c <.LVL676>:
  3c:	a0000337          	lui	t1,0xa0000
  40:	137d                	addi	t1,t1,-1
  42:	00657533          	and	a0,a0,t1
  46:	20a7a623          	sw	a0,524(a5)

0000004a <.LBB679>:
  4a:	2107a503          	lw	a0,528(a5)

0000004e <.LBB682>:
  4e:	7345                	lui	t1,0xffff1
  50:	137d                	addi	t1,t1,-1

00000052 <.LBB686>:
  52:	0512                	slli	a0,a0,0x4

00000054 <.LVL680>:
  54:	8111                	srli	a0,a0,0x4

00000056 <.LVL681>:
  56:	20a7a823          	sw	a0,528(a5)

0000005a <.LBB687>:
  5a:	2107a503          	lw	a0,528(a5)

0000005e <.LBB688>:
  5e:	7ff5f593          	andi	a1,a1,2047

00000062 <.LBB692>:
  62:	7ff67613          	andi	a2,a2,2047

00000066 <.LBB695>:
  66:	00657533          	and	a0,a0,t1
  6a:	20a7a823          	sw	a0,528(a5)

0000006e <.LBB696>:
  6e:	2147a503          	lw	a0,532(a5)

00000072 <.LBB697>:
  72:	06da                	slli	a3,a3,0x16

00000074 <.LBB700>:
  74:	075a                	slli	a4,a4,0x16

00000076 <.LBB703>:
  76:	80057513          	andi	a0,a0,-2048
  7a:	8dc9                	or	a1,a1,a0

0000007c <.LVL692>:
  7c:	20b7aa23          	sw	a1,532(a5)

00000080 <.LBB704>:
  80:	2187a583          	lw	a1,536(a5)

00000084 <.LVL694>:
  84:	8005f593          	andi	a1,a1,-2048
  88:	8e4d                	or	a2,a2,a1

0000008a <.LVL696>:
  8a:	20c7ac23          	sw	a2,536(a5)

0000008e <.LBB705>:
  8e:	2147a583          	lw	a1,532(a5)

00000092 <.LVL698>:
  92:	00400637          	lui	a2,0x400
  96:	167d                	addi	a2,a2,-1
  98:	8df1                	and	a1,a1,a2
  9a:	8ecd                	or	a3,a3,a1

0000009c <.LVL700>:
  9c:	20d7aa23          	sw	a3,532(a5)

000000a0 <.LBB706>:
  a0:	2187a683          	lw	a3,536(a5)

000000a4 <.LVL702>:
  a4:	8e75                	and	a2,a2,a3

000000a6 <.LVL703>:
  a6:	8f51                	or	a4,a4,a2

000000a8 <.LVL704>:
  a8:	20e7ac23          	sw	a4,536(a5)

000000ac <.LBB707>:
  ac:	20c7a703          	lw	a4,524(a5)

000000b0 <.LVL706>:
  b0:	01177733          	and	a4,a4,a7
  b4:	01076733          	or	a4,a4,a6
  b8:	20e7a623          	sw	a4,524(a5)

000000bc <.LBE707>:
  bc:	8082                	ret

Disassembly of section .text.rfc_sg_stop:

00000000 <rfc_sg_stop>:
   0:	40001737          	lui	a4,0x40001
   4:	20c72783          	lw	a5,524(a4) # 4000120c <.LLST60+0x3fffd2c9>

00000008 <.LVL711>:
   8:	0786                	slli	a5,a5,0x1

0000000a <.LVL712>:
   a:	8385                	srli	a5,a5,0x1

0000000c <.LVL713>:
   c:	20f72623          	sw	a5,524(a4)

00000010 <.LBE711>:
  10:	8082                	ret

Disassembly of section .text.rfc_pm_start:

00000000 <rfc_pm_start>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	c636                	sw	a3,12(sp)
   6:	c43a                	sw	a4,8(sp)
   8:	c23e                	sw	a5,4(sp)

0000000a <.LBB735>:
   a:	40001437          	lui	s0,0x40001

0000000e <.LBE735>:
   e:	ce06                	sw	ra,28(sp)

00000010 <.LBB736>:
  10:	61842803          	lw	a6,1560(s0) # 40001618 <.LLST60+0x3fffd6d5>

00000014 <.LVL716>:
  14:	e00008b7          	lui	a7,0xe0000
  18:	18fd                	addi	a7,a7,-1
  1a:	01187833          	and	a6,a6,a7
  1e:	61042c23          	sw	a6,1560(s0)

00000022 <.LBB737>:
  22:	61c42803          	lw	a6,1564(s0)

00000026 <.LVL719>:
  26:	7341                	lui	t1,0xffff0

00000028 <.LBB740>:
  28:	0642                	slli	a2,a2,0x10

0000002a <.LBB744>:
  2a:	00687833          	and	a6,a6,t1
  2e:	40086813          	ori	a6,a6,1024
  32:	61042e23          	sw	a6,1564(s0)

00000036 <.LBB745>:
  36:	61c42803          	lw	a6,1564(s0)

0000003a <.LBB746>:
  3a:	fff00e37          	lui	t3,0xfff00
  3e:	fffe0313          	addi	t1,t3,-1 # ffefffff <.LLST60+0xffefc0bc>

00000042 <.LBB751>:
  42:	0842                	slli	a6,a6,0x10

00000044 <.LVL725>:
  44:	01085813          	srli	a6,a6,0x10

00000048 <.LVL726>:
  48:	01066633          	or	a2,a2,a6

0000004c <.LVL727>:
  4c:	60c42e23          	sw	a2,1564(s0)

00000050 <.LBB752>:
  50:	61842803          	lw	a6,1560(s0)

00000054 <.LBB753>:
  54:	057a                	slli	a0,a0,0x1e

00000056 <.LBB756>:
  56:	00687333          	and	t1,a6,t1

0000005a <.LBE756>:
  5a:	00b03833          	snez	a6,a1

0000005e <.LBB757>:
  5e:	0852                	slli	a6,a6,0x14
  60:	00686833          	or	a6,a6,t1

00000064 <.LVL732>:
  64:	61042c23          	sw	a6,1560(s0)

00000068 <.LBB758>:
  68:	61842603          	lw	a2,1560(s0)

0000006c <.LVL734>:
  6c:	05b2                	slli	a1,a1,0xc

0000006e <.LVL735>:
  6e:	81b1                	srli	a1,a1,0xc
  70:	01c67633          	and	a2,a2,t3
  74:	8dd1                	or	a1,a1,a2

00000076 <.LVL737>:
  76:	60b42c23          	sw	a1,1560(s0)

0000007a <.LBB760>:
  7a:	61842583          	lw	a1,1560(s0)

0000007e <.LVL739>:
  7e:	058a                	slli	a1,a1,0x2

00000080 <.LVL740>:
  80:	8189                	srli	a1,a1,0x2

00000082 <.LVL741>:
  82:	8dc9                	or	a1,a1,a0
  84:	60b42c23          	sw	a1,1560(s0)

00000088 <.LBB761>:
  88:	61842603          	lw	a2,1560(s0)

0000008c <.LVL744>:
  8c:	200005b7          	lui	a1,0x20000

00000090 <.LBE761>:
  90:	06400513          	li	a0,100

00000094 <.LBB764>:
  94:	01167633          	and	a2,a2,a7
  98:	8e4d                	or	a2,a2,a1
  9a:	60c42c23          	sw	a2,1560(s0)

0000009e <.LBE764>:
  9e:	00000097          	auipc	ra,0x0
			9e: R_RISCV_CALL	wait_us
			9e: R_RISCV_RELAX	*ABS*
  a2:	000080e7          	jalr	ra # 9e <.LBE764>

000000a6 <.LBB765>:
  a6:	62042503          	lw	a0,1568(s0)

000000aa <.LBB767>:
  aa:	62442603          	lw	a2,1572(s0)

000000ae <.LBE767>:
  ae:	4722                	lw	a4,8(sp)
  b0:	051e                	slli	a0,a0,0x7

000000b2 <.LVL751>:
  b2:	061e                	slli	a2,a2,0x7

000000b4 <.LVL752>:
  b4:	851d                	srai	a0,a0,0x7

000000b6 <.LVL753>:
  b6:	861d                	srai	a2,a2,0x7

000000b8 <.LVL754>:
  b8:	4792                	lw	a5,4(sp)
  ba:	46b2                	lw	a3,12(sp)
  bc:	c311                	beqz	a4,c0 <.L90>
			bc: R_RISCV_RVC_BRANCH	.L90
  be:	c308                	sw	a0,0(a4)

000000c0 <.L90>:
  c0:	c391                	beqz	a5,c4 <.L91>
			c0: R_RISCV_RVC_BRANCH	.L91
  c2:	c390                	sw	a2,0(a5)

000000c4 <.L91>:
  c4:	40d55533          	sra	a0,a0,a3
  c8:	40d65633          	sra	a2,a2,a3

000000cc <.LVL756>:
  cc:	02a50533          	mul	a0,a0,a0

000000d0 <.LVL757>:
  d0:	40f2                	lw	ra,28(sp)
  d2:	4462                	lw	s0,24(sp)
  d4:	6105                	addi	sp,sp,32
  d6:	02c60633          	mul	a2,a2,a2

000000da <.LVL758>:
  da:	9532                	add	a0,a0,a2

000000dc <.LVL759>:
  dc:	8082                	ret

Disassembly of section .text.rfc_pm_stop:

00000000 <rfc_pm_stop>:
   0:	400017b7          	lui	a5,0x40001
   4:	6187a703          	lw	a4,1560(a5) # 40001618 <.LLST60+0x3fffd6d5>

00000008 <.LVL761>:
   8:	e00006b7          	lui	a3,0xe0000
   c:	16fd                	addi	a3,a3,-1
   e:	8f75                	and	a4,a4,a3
  10:	60e7ac23          	sw	a4,1560(a5)

00000014 <.LBB775>:
  14:	6187a703          	lw	a4,1560(a5)

00000018 <.LVL764>:
  18:	fff006b7          	lui	a3,0xfff00
  1c:	16fd                	addi	a3,a3,-1
  1e:	8f75                	and	a4,a4,a3
  20:	60e7ac23          	sw	a4,1560(a5)

00000024 <.LBE775>:
  24:	8082                	ret

Disassembly of section .text.rfc_hwctrl_txrfgain:

00000000 <rfc_hwctrl_txrfgain>:
   0:	40001737          	lui	a4,0x40001
   4:	475c                	lw	a5,12(a4)

00000006 <.LVL768>:
   6:	050a                	slli	a0,a0,0x2

00000008 <.LVL769>:
   8:	8911                	andi	a0,a0,4
   a:	9bed                	andi	a5,a5,-5
   c:	8d5d                	or	a0,a0,a5

0000000e <.LVL771>:
   e:	c748                	sw	a0,12(a4)

00000010 <.LBE779>:
  10:	8082                	ret

Disassembly of section .text.rfc_hwctrl_rxgain:

00000000 <rfc_hwctrl_rxgain>:
   0:	40001737          	lui	a4,0x40001
   4:	475c                	lw	a5,12(a4)

00000006 <.LVL774>:
   6:	0506                	slli	a0,a0,0x1

00000008 <.LVL775>:
   8:	8909                	andi	a0,a0,2
   a:	9bf5                	andi	a5,a5,-3
   c:	8d5d                	or	a0,a0,a5

0000000e <.LVL777>:
   e:	c748                	sw	a0,12(a4)

00000010 <.LBE783>:
  10:	8082                	ret

Disassembly of section .text.rfc_hwctrl_txdvga:

00000000 <rfc_hwctrl_txdvga>:
   0:	40001737          	lui	a4,0x40001
   4:	60072783          	lw	a5,1536(a4) # 40001600 <.LLST60+0x3fffd6bd>

00000008 <.LVL780>:
   8:	057e                	slli	a0,a0,0x1f

0000000a <.LVL781>:
   a:	0786                	slli	a5,a5,0x1

0000000c <.LVL782>:
   c:	8385                	srli	a5,a5,0x1

0000000e <.LVL783>:
   e:	8fc9                	or	a5,a5,a0
  10:	60f72023          	sw	a5,1536(a4)

00000014 <.LBE787>:
  14:	8082                	ret

Disassembly of section .text.rfc_hwctrl_calparam:

00000000 <rfc_hwctrl_calparam>:
   0:	40001737          	lui	a4,0x40001
   4:	475c                	lw	a5,12(a4)

00000006 <.LVL787>:
   6:	0516                	slli	a0,a0,0x5

00000008 <.LVL788>:
   8:	02057513          	andi	a0,a0,32
   c:	fdf7f793          	andi	a5,a5,-33
  10:	8d5d                	or	a0,a0,a5

00000012 <.LVL790>:
  12:	c748                	sw	a0,12(a4)

00000014 <.LBE791>:
  14:	8082                	ret

Disassembly of section .text.rfc_fsm_force:

00000000 <rfc_fsm_force>:
   0:	47bd                	li	a5,15
   2:	00f51763          	bne	a0,a5,10 <.L105>
			2: R_RISCV_BRANCH	.L105
   6:	4501                	li	a0,0

00000008 <.L108>:
   8:	00000317          	auipc	t1,0x0
			8: R_RISCV_CALL	rf_fsm_st_dbg_en_setf
			8: R_RISCV_RELAX	*ABS*
   c:	00030067          	jr	t1 # 8 <.L108>

00000010 <.L105>:
  10:	1141                	addi	sp,sp,-16
  12:	c606                	sw	ra,12(sp)

00000014 <.LBB798>:
  14:	40001737          	lui	a4,0x40001
  18:	26c72783          	lw	a5,620(a4) # 4000126c <.LLST60+0x3fffd329>

0000001c <.LVL795>:
  1c:	891d                	andi	a0,a0,7

0000001e <.LVL796>:
  1e:	9be1                	andi	a5,a5,-8
  20:	8d5d                	or	a0,a0,a5

00000022 <.LVL798>:
  22:	26a72623          	sw	a0,620(a4)

00000026 <.LBE798>:
  26:	4551                	li	a0,20
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	wait_us
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LBE798+0x2>

00000030 <.LVL800>:
  30:	40b2                	lw	ra,12(sp)
  32:	4505                	li	a0,1
  34:	0141                	addi	sp,sp,16
  36:	bfc9                	j	8 <.L108>
			36: R_RISCV_RVC_JUMP	.L108

Disassembly of section .text.rfc_rc_fsm_force:

00000000 <rfc_rc_fsm_force>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)
   6:	47bd                	li	a5,15

00000008 <.LBB807>:
   8:	40001437          	lui	s0,0x40001

0000000c <.LBE807>:
   c:	02f51563          	bne	a0,a5,36 <.L110>
			c: R_RISCV_BRANCH	.L110

00000010 <.LBB811>:
  10:	405c                	lw	a5,4(s0)

00000012 <.LBE811>:
  12:	4551                	li	a0,20

00000014 <.LBB812>:
  14:	8ff7f793          	andi	a5,a5,-1793
  18:	c05c                	sw	a5,4(s0)

0000001a <.LBE812>:
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	wait_us
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <.LBE812>

00000022 <.LBB813>:
  22:	405c                	lw	a5,4(s0)

00000024 <.LVL808>:
  24:	777d                	lui	a4,0xfffff
  26:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LLST60+0xffffb8bc>
  2a:	8ff9                	and	a5,a5,a4

0000002c <.L113>:
  2c:	c05c                	sw	a5,4(s0)

0000002e <.LBE815>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

00000036 <.L110>:
  36:	405c                	lw	a5,4(s0)

00000038 <.LVL811>:
  38:	0522                	slli	a0,a0,0x8

0000003a <.LVL812>:
  3a:	70057513          	andi	a0,a0,1792
  3e:	8ff7f793          	andi	a5,a5,-1793
  42:	8d5d                	or	a0,a0,a5

00000044 <.LVL814>:
  44:	c048                	sw	a0,4(s0)

00000046 <.LBE818>:
  46:	4551                	li	a0,20
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	wait_us
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LBE818+0x2>

00000050 <.LBB820>:
  50:	405c                	lw	a5,4(s0)

00000052 <.LVL817>:
  52:	777d                	lui	a4,0xfffff
  54:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LLST60+0xffffb8bc>
  58:	8ff9                	and	a5,a5,a4
  5a:	6705                	lui	a4,0x1
  5c:	80070713          	addi	a4,a4,-2048 # 800 <.LASF226+0x6>
  60:	8fd9                	or	a5,a5,a4

00000062 <.LVL819>:
  62:	b7e9                	j	2c <.L113>
			62: R_RISCV_RVC_JUMP	.L113

Disassembly of section .text.rfc_coex_force_to:

00000000 <rfc_coex_force_to>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	842a                	mv	s0,a0
   6:	4501                	li	a0,0

00000008 <.LVL821>:
   8:	ce06                	sw	ra,28(sp)
   a:	c62e                	sw	a1,12(sp)
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	rf_fsm_ctrl_en_setf
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL821+0x4>

00000014 <.LVL822>:
  14:	4529                	li	a0,10
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	wait_us
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL822+0x2>

0000001e <.LBB825>:
  1e:	400017b7          	lui	a5,0x40001
  22:	2207a703          	lw	a4,544(a5) # 40001220 <.LLST60+0x3fffd2dd>

00000026 <.LVL824>:
  26:	45b2                	lw	a1,12(sp)
  28:	fc0006b7          	lui	a3,0xfc000
  2c:	16fd                	addi	a3,a3,-1
  2e:	8f75                	and	a4,a4,a3
  30:	05ea                	slli	a1,a1,0x1a
  32:	040006b7          	lui	a3,0x4000
  36:	8df5                	and	a1,a1,a3
  38:	8dd9                	or	a1,a1,a4

0000003a <.LVL826>:
  3a:	22b7a023          	sw	a1,544(a5)

0000003e <.LBB827>:
  3e:	2207a703          	lw	a4,544(a5)

00000042 <.LVL828>:
  42:	f80006b7          	lui	a3,0xf8000
  46:	16fd                	addi	a3,a3,-1

00000048 <.LBE827>:
  48:	00803433          	snez	s0,s0

0000004c <.LBB830>:
  4c:	8f75                	and	a4,a4,a3
  4e:	046e                	slli	s0,s0,0x1b
  50:	8c59                	or	s0,s0,a4

00000052 <.LVL831>:
  52:	2287a023          	sw	s0,544(a5)

00000056 <.LBE830>:
  56:	4529                	li	a0,10
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	wait_us
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LBE830+0x2>

00000060 <.LVL833>:
  60:	4462                	lw	s0,24(sp)
  62:	40f2                	lw	ra,28(sp)
  64:	4505                	li	a0,1
  66:	6105                	addi	sp,sp,32
  68:	00000317          	auipc	t1,0x0
			68: R_RISCV_CALL	rf_fsm_ctrl_en_setf
			68: R_RISCV_RELAX	*ABS*
  6c:	00030067          	jr	t1 # 68 <.LVL833+0x8>

Disassembly of section .text.rfc_config_power:

00000000 <rfc_config_power>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	84aa                	mv	s1,a0

00000006 <.LBB857>:
   6:	4501                	li	a0,0

00000008 <.LBE857>:
   8:	cc22                	sw	s0,24(sp)
   a:	c84a                	sw	s2,16(sp)
   c:	c64e                	sw	s3,12(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	c452                	sw	s4,8(sp)
  12:	842e                	mv	s0,a1
  14:	89b2                	mv	s3,a2
  16:	8936                	mv	s2,a3

00000018 <.LBB890>:
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	rf_pa_ib_fix_setf
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LBB890>

00000020 <.LVL838>:
  20:	4519                	li	a0,6
  22:	00000097          	auipc	ra,0x0
			22: R_RISCV_CALL	rf_tmx_cs_setf
			22: R_RISCV_RELAX	*ABS*
  26:	000080e7          	jalr	ra # 22 <.LVL838+0x2>

0000002a <.LVL839>:
  2a:	12049763          	bnez	s1,158 <.L117>
			2a: R_RISCV_BRANCH	.L117

0000002e <.LBB859>:
  2e:	400017b7          	lui	a5,0x40001
  32:	12c7a683          	lw	a3,300(a5) # 4000112c <.LLST60+0x3fffd1e9>

00000036 <.LVL841>:
  36:	fff10737          	lui	a4,0xfff10
  3a:	fff70613          	addi	a2,a4,-1 # fff0ffff <.LLST60+0xfff0c0bc>
  3e:	8ef1                	and	a3,a3,a2
  40:	000f0737          	lui	a4,0xf0
  44:	8ed9                	or	a3,a3,a4
  46:	12d7a623          	sw	a3,300(a5)

0000004a <.LBB861>:
  4a:	1287a703          	lw	a4,296(a5)

0000004e <.LVL845>:
  4e:	000a06b7          	lui	a3,0xa0

00000052 <.LBB864>:
  52:	005005b7          	lui	a1,0x500

00000056 <.LBB867>:
  56:	8f71                	and	a4,a4,a2
  58:	8f55                	or	a4,a4,a3
  5a:	12e7a423          	sw	a4,296(a5)

0000005e <.LBB868>:
  5e:	12c7a703          	lw	a4,300(a5)

00000062 <.LVL849>:
  62:	f0f77713          	andi	a4,a4,-241
  66:	0a076713          	ori	a4,a4,160
  6a:	12e7a623          	sw	a4,300(a5)

0000006e <.LBB870>:
  6e:	12c7a683          	lw	a3,300(a5)

00000072 <.LVL853>:
  72:	ff900737          	lui	a4,0xff900
  76:	fff70613          	addi	a2,a4,-1 # ff8fffff <.LLST60+0xff8fc0bc>
  7a:	8ef1                	and	a3,a3,a2
  7c:	8ecd                	or	a3,a3,a1
  7e:	12d7a623          	sw	a3,300(a5)

00000082 <.LBB871>:
  82:	1287a703          	lw	a4,296(a5)

00000086 <.LVL857>:
  86:	8f71                	and	a4,a4,a2
  88:	8f4d                	or	a4,a4,a1
  8a:	12e7a423          	sw	a4,296(a5)

0000008e <.LBB873>:
  8e:	12c7a703          	lw	a4,300(a5)

00000092 <.LVL861>:
  92:	8ff77713          	andi	a4,a4,-1793
  96:	50076713          	ori	a4,a4,1280
  9a:	12e7a623          	sw	a4,300(a5)

0000009e <.LBB875>:
  9e:	12c7a683          	lw	a3,300(a5)

000000a2 <.LVL865>:
  a2:	7745                	lui	a4,0xffff1
  a4:	fff70613          	addi	a2,a4,-1 # ffff0fff <.LLST60+0xfffed0bc>
  a8:	8ef1                	and	a3,a3,a2
  aa:	671d                	lui	a4,0x7
  ac:	8ed9                	or	a3,a3,a4
  ae:	12d7a623          	sw	a3,300(a5)

000000b2 <.LBB877>:
  b2:	1287a703          	lw	a4,296(a5)

000000b6 <.LVL869>:
  b6:	6695                	lui	a3,0x5
  b8:	8f71                	and	a4,a4,a2
  ba:	8f55                	or	a4,a4,a3
  bc:	12e7a423          	sw	a4,296(a5)

000000c0 <.LBB879>:
  c0:	12c7a703          	lw	a4,300(a5)

000000c4 <.LVL873>:
  c4:	9b41                	andi	a4,a4,-16
  c6:	00576713          	ori	a4,a4,5
  ca:	12e7a623          	sw	a4,300(a5)

000000ce <.L121>:
  ce:	453d                	li	a0,15
  d0:	00000097          	auipc	ra,0x0
			d0: R_RISCV_CALL	rf_pa_vbcore_setf
			d0: R_RISCV_RELAX	*ABS*
  d4:	000080e7          	jalr	ra # d0 <.L121+0x2>

000000d8 <.LVL877>:
  d8:	4515                	li	a0,5
  da:	00000097          	auipc	ra,0x0
			da: R_RISCV_CALL	rf_pa_vbcas_setf
			da: R_RISCV_RELAX	*ABS*
  de:	000080e7          	jalr	ra # da <.LVL877+0x2>

000000e2 <.LVL878>:
  e2:	451d                	li	a0,7

000000e4 <.L123>:
  e4:	00000097          	auipc	ra,0x0
			e4: R_RISCV_CALL	rf_pa_iet_setf
			e4: R_RISCV_RELAX	*ABS*
  e8:	000080e7          	jalr	ra # e4 <.L123>

000000ec <.L118>:
  ec:	400014b7          	lui	s1,0x40001

000000f0 <.LVL880>:
  f0:	44bc                	lw	a5,72(s1)

000000f2 <.LVL881>:
  f2:	d0000a37          	lui	s4,0xd0000
  f6:	1a7d                	addi	s4,s4,-1
  f8:	0147f7b3          	and	a5,a5,s4
  fc:	c4bc                	sw	a5,72(s1)

000000fe <.LBE881>:
  fe:	4519                	li	a0,6
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	rf_gc_tbb_setf
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.LBE881+0x2>

00000108 <.LVL884>:
 108:	4515                	li	a0,5
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	rf_gc_tmx_setf
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.LVL884+0x2>

00000112 <.LBB883>:
 112:	08c4a783          	lw	a5,140(s1) # 4000108c <.LLST60+0x3fffd149>

00000116 <.LBB891>:
 116:	0472                	slli	s0,s0,0x1c

00000118 <.LBE891>:
 118:	854e                	mv	a0,s3

0000011a <.LBB886>:
 11a:	fcf7f793          	andi	a5,a5,-49
 11e:	0107e793          	ori	a5,a5,16
 122:	08f4a623          	sw	a5,140(s1)

00000126 <.LBB895>:
 126:	44bc                	lw	a5,72(s1)

00000128 <.LVL891>:
 128:	0147fa33          	and	s4,a5,s4

0000012c <.LVL892>:
 12c:	300007b7          	lui	a5,0x30000
 130:	8c7d                	and	s0,s0,a5
 132:	01446433          	or	s0,s0,s4

00000136 <.LVL893>:
 136:	c4a0                	sw	s0,72(s1)

00000138 <.LBE895>:
 138:	00000097          	auipc	ra,0x0
			138: R_RISCV_CALL	rf_gc_tbb_setf
			138: R_RISCV_RELAX	*ABS*
 13c:	000080e7          	jalr	ra # 138 <.LBE895>

00000140 <.LVL895>:
 140:	4462                	lw	s0,24(sp)
 142:	40f2                	lw	ra,28(sp)
 144:	44d2                	lw	s1,20(sp)
 146:	49b2                	lw	s3,12(sp)

00000148 <.LVL896>:
 148:	4a22                	lw	s4,8(sp)
 14a:	854a                	mv	a0,s2
 14c:	4942                	lw	s2,16(sp)

0000014e <.LVL897>:
 14e:	6105                	addi	sp,sp,32
 150:	00000317          	auipc	t1,0x0
			150: R_RISCV_CALL	rf_gc_tmx_setf
			150: R_RISCV_RELAX	*ABS*
 154:	00030067          	jr	t1 # 150 <.LVL897+0x2>

00000158 <.L117>:
 158:	4785                	li	a5,1
 15a:	f6f48ae3          	beq	s1,a5,ce <.L121>
			15a: R_RISCV_BRANCH	.L121
 15e:	ffe48713          	addi	a4,s1,-2
 162:	00e7ee63          	bltu	a5,a4,17e <.L120>
			162: R_RISCV_BRANCH	.L120
 166:	4529                	li	a0,10
 168:	00000097          	auipc	ra,0x0
			168: R_RISCV_CALL	rf_pa_vbcore_setf
			168: R_RISCV_RELAX	*ABS*
 16c:	000080e7          	jalr	ra # 168 <.L117+0x10>

00000170 <.LVL899>:
 170:	4515                	li	a0,5
 172:	00000097          	auipc	ra,0x0
			172: R_RISCV_CALL	rf_pa_vbcas_setf
			172: R_RISCV_RELAX	*ABS*
 176:	000080e7          	jalr	ra # 172 <.LVL899+0x2>

0000017a <.LVL900>:
 17a:	4515                	li	a0,5
 17c:	b7a5                	j	e4 <.L123>
			17c: R_RISCV_RVC_JUMP	.L123

0000017e <.L120>:
 17e:	4791                	li	a5,4
 180:	f6f496e3          	bne	s1,a5,ec <.L118>
			180: R_RISCV_BRANCH	.L118
 184:	b7a9                	j	ce <.L121>
			184: R_RISCV_RVC_JUMP	.L121

Disassembly of section .text.rfc_config_power_ble:

00000000 <rfc_config_power_ble>:
   0:	47bd                	li	a5,15
   2:	20a7e863          	bltu	a5,a0,212 <.L131>
			2: R_RISCV_BRANCH	.L131
   6:	1141                	addi	sp,sp,-16
   8:	c422                	sw	s0,8(sp)
   a:	c606                	sw	ra,12(sp)
   c:	478d                	li	a5,3
   e:	842a                	mv	s0,a0

00000010 <.LVL902>:
  10:	0aa7c763          	blt	a5,a0,be <.L126>
			10: R_RISCV_BRANCH	.L126
  14:	4505                	li	a0,1

00000016 <.LVL903>:
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	rf_pa_ib_fix_setf
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL903>

0000001e <.LVL904>:
  1e:	00000097          	auipc	ra,0x0
			1e: R_RISCV_CALL	rf_pa_half_on_setf.constprop.17
			1e: R_RISCV_RELAX	*ABS*
  22:	000080e7          	jalr	ra # 1e <.LVL904>

00000026 <.LVL905>:
  26:	4511                	li	a0,4
  28:	00000097          	auipc	ra,0x0
			28: R_RISCV_CALL	rf_pa_vbcas_setf
			28: R_RISCV_RELAX	*ABS*
  2c:	000080e7          	jalr	ra # 28 <.LVL905+0x2>

00000030 <.LVL906>:
  30:	4525                	li	a0,9
  32:	00000097          	auipc	ra,0x0
			32: R_RISCV_CALL	rf_pa_vbcore_setf
			32: R_RISCV_RELAX	*ABS*
  36:	000080e7          	jalr	ra # 32 <.LVL906+0x2>

0000003a <.LVL907>:
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	rf_pa_etb_en_setf.constprop.16
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL907>

00000042 <.LVL908>:
  42:	4515                	li	a0,5
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	rf_tmx_cs_setf
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.LVL908+0x2>

0000004c <.LVL909>:
  4c:	4509                	li	a0,2
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	rf_gc_tbb_setf
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL909+0x2>

00000056 <.LVL910>:
  56:	4515                	li	a0,5
  58:	040a                	slli	s0,s0,0x2

0000005a <.LVL911>:
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	rf_gc_tmx_setf
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL911>

00000062 <.LVL912>:
  62:	1439                	addi	s0,s0,-18

00000064 <.L127>:
  64:	400017b7          	lui	a5,0x40001
  68:	6487a703          	lw	a4,1608(a5) # 40001648 <.LLST60+0x3fffd705>

0000006c <.LBE903>:
  6c:	147d                	addi	s0,s0,-1

0000006e <.LBB907>:
  6e:	6621                	lui	a2,0x8

00000070 <.LBB911>:
  70:	f8077693          	andi	a3,a4,-128

00000074 <.LVL915>:
  74:	07f47713          	andi	a4,s0,127
  78:	8f55                	or	a4,a4,a3

0000007a <.LVL916>:
  7a:	64e7a423          	sw	a4,1608(a5)

0000007e <.LBB912>:
  7e:	6487a703          	lw	a4,1608(a5)

00000082 <.LVL918>:
  82:	76e1                	lui	a3,0xffff8
  84:	0ff68693          	addi	a3,a3,255 # ffff80ff <.LLST60+0xffff41bc>
  88:	8ef9                	and	a3,a3,a4

0000008a <.LVL919>:
  8a:	f0060613          	addi	a2,a2,-256 # 7f00 <.LLST60+0x3fbd>
  8e:	00841713          	slli	a4,s0,0x8
  92:	8f71                	and	a4,a4,a2
  94:	8f55                	or	a4,a4,a3

00000096 <.LVL920>:
  96:	64e7a423          	sw	a4,1608(a5)

0000009a <.LBB913>:
  9a:	6487a703          	lw	a4,1608(a5)

0000009e <.LVL922>:
  9e:	ff8106b7          	lui	a3,0xff810
  a2:	16fd                	addi	a3,a3,-1
  a4:	8f75                	and	a4,a4,a3
  a6:	0442                	slli	s0,s0,0x10

000000a8 <.LVL924>:
  a8:	007f06b7          	lui	a3,0x7f0
  ac:	8c75                	and	s0,s0,a3
  ae:	8c59                	or	s0,s0,a4

000000b0 <.LVL925>:
  b0:	6487a423          	sw	s0,1608(a5)

000000b4 <.LBE913>:
  b4:	40b2                	lw	ra,12(sp)
  b6:	4422                	lw	s0,8(sp)

000000b8 <.LVL926>:
  b8:	4505                	li	a0,1
  ba:	0141                	addi	sp,sp,16
  bc:	8082                	ret

000000be <.L126>:
  be:	4799                	li	a5,6
  c0:	04a7cb63          	blt	a5,a0,116 <.L128>
			c0: R_RISCV_BRANCH	.L128
  c4:	4505                	li	a0,1
  c6:	00000097          	auipc	ra,0x0
			c6: R_RISCV_CALL	rf_pa_ib_fix_setf
			c6: R_RISCV_RELAX	*ABS*
  ca:	000080e7          	jalr	ra # c6 <.L126+0x8>

000000ce <.LVL928>:
  ce:	00000097          	auipc	ra,0x0
			ce: R_RISCV_CALL	rf_pa_half_on_setf.constprop.17
			ce: R_RISCV_RELAX	*ABS*
  d2:	000080e7          	jalr	ra # ce <.LVL928>

000000d6 <.LVL929>:
  d6:	4511                	li	a0,4
  d8:	00000097          	auipc	ra,0x0
			d8: R_RISCV_CALL	rf_pa_vbcas_setf
			d8: R_RISCV_RELAX	*ABS*
  dc:	000080e7          	jalr	ra # d8 <.LVL929+0x2>

000000e0 <.LVL930>:
  e0:	4525                	li	a0,9
  e2:	00000097          	auipc	ra,0x0
			e2: R_RISCV_CALL	rf_pa_vbcore_setf
			e2: R_RISCV_RELAX	*ABS*
  e6:	000080e7          	jalr	ra # e2 <.LVL930+0x2>

000000ea <.LVL931>:
  ea:	00000097          	auipc	ra,0x0
			ea: R_RISCV_CALL	rf_pa_etb_en_setf.constprop.16
			ea: R_RISCV_RELAX	*ABS*
  ee:	000080e7          	jalr	ra # ea <.LVL931>

000000f2 <.LVL932>:
  f2:	4515                	li	a0,5
  f4:	00000097          	auipc	ra,0x0
			f4: R_RISCV_CALL	rf_tmx_cs_setf
			f4: R_RISCV_RELAX	*ABS*
  f8:	000080e7          	jalr	ra # f4 <.LVL932+0x2>

000000fc <.LVL933>:
  fc:	4509                	li	a0,2
  fe:	00000097          	auipc	ra,0x0
			fe: R_RISCV_CALL	rf_gc_tbb_setf
			fe: R_RISCV_RELAX	*ABS*
 102:	000080e7          	jalr	ra # fe <.LVL933+0x2>

00000106 <.LVL934>:
 106:	451d                	li	a0,7
 108:	040a                	slli	s0,s0,0x2

0000010a <.LVL935>:
 10a:	00000097          	auipc	ra,0x0
			10a: R_RISCV_CALL	rf_gc_tmx_setf
			10a: R_RISCV_RELAX	*ABS*
 10e:	000080e7          	jalr	ra # 10a <.LVL935>

00000112 <.LVL936>:
 112:	1409                	addi	s0,s0,-30

00000114 <.LVL937>:
 114:	bf81                	j	64 <.L127>
			114: R_RISCV_RVC_JUMP	.L127

00000116 <.L128>:
 116:	47a5                	li	a5,9
 118:	04a7cb63          	blt	a5,a0,16e <.L129>
			118: R_RISCV_BRANCH	.L129
 11c:	4505                	li	a0,1
 11e:	00000097          	auipc	ra,0x0
			11e: R_RISCV_CALL	rf_pa_ib_fix_setf
			11e: R_RISCV_RELAX	*ABS*
 122:	000080e7          	jalr	ra # 11e <.L128+0x8>

00000126 <.LVL939>:
 126:	00000097          	auipc	ra,0x0
			126: R_RISCV_CALL	rf_pa_half_on_setf.constprop.17
			126: R_RISCV_RELAX	*ABS*
 12a:	000080e7          	jalr	ra # 126 <.LVL939>

0000012e <.LVL940>:
 12e:	4511                	li	a0,4
 130:	00000097          	auipc	ra,0x0
			130: R_RISCV_CALL	rf_pa_vbcas_setf
			130: R_RISCV_RELAX	*ABS*
 134:	000080e7          	jalr	ra # 130 <.LVL940+0x2>

00000138 <.LVL941>:
 138:	4525                	li	a0,9
 13a:	00000097          	auipc	ra,0x0
			13a: R_RISCV_CALL	rf_pa_vbcore_setf
			13a: R_RISCV_RELAX	*ABS*
 13e:	000080e7          	jalr	ra # 13a <.LVL941+0x2>

00000142 <.LVL942>:
 142:	00000097          	auipc	ra,0x0
			142: R_RISCV_CALL	rf_pa_etb_en_setf.constprop.16
			142: R_RISCV_RELAX	*ABS*
 146:	000080e7          	jalr	ra # 142 <.LVL942>

0000014a <.LVL943>:
 14a:	4515                	li	a0,5
 14c:	00000097          	auipc	ra,0x0
			14c: R_RISCV_CALL	rf_tmx_cs_setf
			14c: R_RISCV_RELAX	*ABS*
 150:	000080e7          	jalr	ra # 14c <.LVL943+0x2>

00000154 <.LVL944>:
 154:	450d                	li	a0,3
 156:	00000097          	auipc	ra,0x0
			156: R_RISCV_CALL	rf_gc_tbb_setf
			156: R_RISCV_RELAX	*ABS*
 15a:	000080e7          	jalr	ra # 156 <.LVL944+0x2>

0000015e <.LVL945>:
 15e:	451d                	li	a0,7
 160:	00000097          	auipc	ra,0x0
			160: R_RISCV_CALL	rf_gc_tmx_setf
			160: R_RISCV_RELAX	*ABS*
 164:	000080e7          	jalr	ra # 160 <.LVL945+0x2>

00000168 <.LVL946>:
 168:	1459                	addi	s0,s0,-10

0000016a <.L136>:
 16a:	040a                	slli	s0,s0,0x2

0000016c <.LVL948>:
 16c:	bde5                	j	64 <.L127>
			16c: R_RISCV_RVC_JUMP	.L127

0000016e <.L129>:
 16e:	47ad                	li	a5,11
 170:	4505                	li	a0,1
 172:	0487c963          	blt	a5,s0,1c4 <.L130>
			172: R_RISCV_BRANCH	.L130
 176:	00000097          	auipc	ra,0x0
			176: R_RISCV_CALL	rf_pa_ib_fix_setf
			176: R_RISCV_RELAX	*ABS*
 17a:	000080e7          	jalr	ra # 176 <.L129+0x8>

0000017e <.LVL950>:
 17e:	00000097          	auipc	ra,0x0
			17e: R_RISCV_CALL	rf_pa_half_on_setf.constprop.17
			17e: R_RISCV_RELAX	*ABS*
 182:	000080e7          	jalr	ra # 17e <.LVL950>

00000186 <.LVL951>:
 186:	4511                	li	a0,4
 188:	00000097          	auipc	ra,0x0
			188: R_RISCV_CALL	rf_pa_vbcas_setf
			188: R_RISCV_RELAX	*ABS*
 18c:	000080e7          	jalr	ra # 188 <.LVL951+0x2>

00000190 <.LVL952>:
 190:	4525                	li	a0,9
 192:	00000097          	auipc	ra,0x0
			192: R_RISCV_CALL	rf_pa_vbcore_setf
			192: R_RISCV_RELAX	*ABS*
 196:	000080e7          	jalr	ra # 192 <.LVL952+0x2>

0000019a <.LVL953>:
 19a:	00000097          	auipc	ra,0x0
			19a: R_RISCV_CALL	rf_pa_etb_en_setf.constprop.16
			19a: R_RISCV_RELAX	*ABS*
 19e:	000080e7          	jalr	ra # 19a <.LVL953>

000001a2 <.LVL954>:
 1a2:	4515                	li	a0,5
 1a4:	00000097          	auipc	ra,0x0
			1a4: R_RISCV_CALL	rf_tmx_cs_setf
			1a4: R_RISCV_RELAX	*ABS*
 1a8:	000080e7          	jalr	ra # 1a4 <.LVL954+0x2>

000001ac <.LVL955>:
 1ac:	4511                	li	a0,4
 1ae:	00000097          	auipc	ra,0x0
			1ae: R_RISCV_CALL	rf_gc_tbb_setf
			1ae: R_RISCV_RELAX	*ABS*
 1b2:	000080e7          	jalr	ra # 1ae <.LVL955+0x2>

000001b6 <.LVL956>:
 1b6:	451d                	li	a0,7
 1b8:	00000097          	auipc	ra,0x0
			1b8: R_RISCV_CALL	rf_gc_tmx_setf
			1b8: R_RISCV_RELAX	*ABS*
 1bc:	000080e7          	jalr	ra # 1b8 <.LVL956+0x2>

000001c0 <.LVL957>:
 1c0:	1451                	addi	s0,s0,-12

000001c2 <.LVL958>:
 1c2:	b765                	j	16a <.L136>
			1c2: R_RISCV_RVC_JUMP	.L136

000001c4 <.L130>:
 1c4:	00000097          	auipc	ra,0x0
			1c4: R_RISCV_CALL	rf_pa_ib_fix_setf
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	000080e7          	jalr	ra # 1c4 <.L130>

000001cc <.LVL960>:
 1cc:	00000097          	auipc	ra,0x0
			1cc: R_RISCV_CALL	rf_pa_half_on_setf.constprop.17
			1cc: R_RISCV_RELAX	*ABS*
 1d0:	000080e7          	jalr	ra # 1cc <.LVL960>

000001d4 <.LVL961>:
 1d4:	4511                	li	a0,4
 1d6:	00000097          	auipc	ra,0x0
			1d6: R_RISCV_CALL	rf_pa_vbcas_setf
			1d6: R_RISCV_RELAX	*ABS*
 1da:	000080e7          	jalr	ra # 1d6 <.LVL961+0x2>

000001de <.LVL962>:
 1de:	4525                	li	a0,9
 1e0:	00000097          	auipc	ra,0x0
			1e0: R_RISCV_CALL	rf_pa_vbcore_setf
			1e0: R_RISCV_RELAX	*ABS*
 1e4:	000080e7          	jalr	ra # 1e0 <.LVL962+0x2>

000001e8 <.LVL963>:
 1e8:	00000097          	auipc	ra,0x0
			1e8: R_RISCV_CALL	rf_pa_etb_en_setf.constprop.16
			1e8: R_RISCV_RELAX	*ABS*
 1ec:	000080e7          	jalr	ra # 1e8 <.LVL963>

000001f0 <.LVL964>:
 1f0:	4515                	li	a0,5
 1f2:	00000097          	auipc	ra,0x0
			1f2: R_RISCV_CALL	rf_tmx_cs_setf
			1f2: R_RISCV_RELAX	*ABS*
 1f6:	000080e7          	jalr	ra # 1f2 <.LVL964+0x2>

000001fa <.LVL965>:
 1fa:	4519                	li	a0,6
 1fc:	00000097          	auipc	ra,0x0
			1fc: R_RISCV_CALL	rf_gc_tbb_setf
			1fc: R_RISCV_RELAX	*ABS*
 200:	000080e7          	jalr	ra # 1fc <.LVL965+0x2>

00000204 <.LVL966>:
 204:	451d                	li	a0,7
 206:	00000097          	auipc	ra,0x0
			206: R_RISCV_CALL	rf_gc_tmx_setf
			206: R_RISCV_RELAX	*ABS*
 20a:	000080e7          	jalr	ra # 206 <.LVL966+0x2>

0000020e <.LVL967>:
 20e:	1445                	addi	s0,s0,-15

00000210 <.LVL968>:
 210:	bfa9                	j	16a <.L136>
			210: R_RISCV_RVC_JUMP	.L136

00000212 <.L131>:
 212:	4501                	li	a0,0

00000214 <.LVL970>:
 214:	8082                	ret

Disassembly of section .text.rfc_config_bandwidth:

00000000 <rfc_config_bandwidth>:
   0:	e939                	bnez	a0,56 <.L138>
			0: R_RISCV_RVC_BRANCH	.L138

00000002 <.LBB943>:
   2:	4000e737          	lui	a4,0x4000e
   6:	41c72783          	lw	a5,1052(a4) # 4000e41c <.LLST60+0x4000a4d9>

0000000a <.LBB950>:
   a:	f00006b7          	lui	a3,0xf0000
   e:	16fd                	addi	a3,a3,-1

00000010 <.LBB953>:
  10:	dff7f793          	andi	a5,a5,-513

00000014 <.LBB947>:
  14:	40f72e23          	sw	a5,1052(a4)

00000018 <.LBB954>:
  18:	400017b7          	lui	a5,0x40001

0000001c <.LVL976>:
  1c:	0907a703          	lw	a4,144(a5) # 40001090 <.LLST60+0x3fffd14d>

00000020 <.LVL977>:
  20:	8f75                	and	a4,a4,a3
  22:	100006b7          	lui	a3,0x10000
  26:	8f55                	or	a4,a4,a3
  28:	08e7a823          	sw	a4,144(a5)

0000002c <.LBB955>:
  2c:	2287a703          	lw	a4,552(a5)

00000030 <.LBB958>:
  30:	fd0006b7          	lui	a3,0xfd000
  34:	16fd                	addi	a3,a3,-1

00000036 <.LBB961>:
  36:	9b6d                	andi	a4,a4,-5
  38:	22e7a423          	sw	a4,552(a5)

0000003c <.LBB962>:
  3c:	0847a703          	lw	a4,132(a5)

00000040 <.LVL984>:
  40:	8f75                	and	a4,a4,a3
  42:	020006b7          	lui	a3,0x2000
  46:	8f55                	or	a4,a4,a3
  48:	08e7a223          	sw	a4,132(a5)

0000004c <.LBB963>:
  4c:	5fb8                	lw	a4,120(a5)

0000004e <.LVL988>:
  4e:	eff77713          	andi	a4,a4,-257

00000052 <.L140>:
  52:	dfb8                	sw	a4,120(a5)

00000054 <.L137>:
  54:	8082                	ret

00000056 <.L138>:
  56:	4785                	li	a5,1
  58:	fef51ee3          	bne	a0,a5,54 <.L137>
			58: R_RISCV_BRANCH	.L137

0000005c <.LBB968>:
  5c:	4000e737          	lui	a4,0x4000e
  60:	41c72783          	lw	a5,1052(a4) # 4000e41c <.LLST60+0x4000a4d9>

00000064 <.LBB975>:
  64:	f00006b7          	lui	a3,0xf0000
  68:	16fd                	addi	a3,a3,-1

0000006a <.LBB978>:
  6a:	2007e793          	ori	a5,a5,512

0000006e <.LBB972>:
  6e:	40f72e23          	sw	a5,1052(a4)

00000072 <.LBB979>:
  72:	400017b7          	lui	a5,0x40001

00000076 <.LVL995>:
  76:	0907a703          	lw	a4,144(a5) # 40001090 <.LLST60+0x3fffd14d>

0000007a <.LVL996>:
  7a:	8f75                	and	a4,a4,a3
  7c:	08e7a823          	sw	a4,144(a5)

00000080 <.LBB980>:
  80:	2287a703          	lw	a4,552(a5)

00000084 <.LBB983>:
  84:	fd0006b7          	lui	a3,0xfd000
  88:	16fd                	addi	a3,a3,-1

0000008a <.LBB986>:
  8a:	00476713          	ori	a4,a4,4

0000008e <.LVL1000>:
  8e:	22e7a423          	sw	a4,552(a5)

00000092 <.LBB987>:
  92:	0847a703          	lw	a4,132(a5)

00000096 <.LVL1002>:
  96:	8f75                	and	a4,a4,a3
  98:	010006b7          	lui	a3,0x1000
  9c:	8f55                	or	a4,a4,a3
  9e:	08e7a223          	sw	a4,132(a5)

000000a2 <.LBB988>:
  a2:	5fb8                	lw	a4,120(a5)

000000a4 <.LVL1006>:
  a4:	10076713          	ori	a4,a4,256

000000a8 <.LVL1007>:
  a8:	b76d                	j	52 <.L140>
			a8: R_RISCV_RVC_JUMP	.L140

Disassembly of section .text.rfc_get_power_level:

00000000 <rfc_get_power_level>:
   0:	1141                	addi	sp,sp,-16
   2:	87aa                	mv	a5,a0
   4:	c606                	sw	ra,12(sp)
   6:	852e                	mv	a0,a1

00000008 <.LVL1009>:
   8:	4581                	li	a1,0

0000000a <.LVL1010>:
   a:	c791                	beqz	a5,16 <.L146>
			a: R_RISCV_RVC_BRANCH	.L146
   c:	4705                	li	a4,1
   e:	4585                	li	a1,1
  10:	00e78363          	beq	a5,a4,16 <.L146>
			10: R_RISCV_BRANCH	.L146
  14:	4589                	li	a1,2

00000016 <.L146>:
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	rf_pri_get_txgain_index
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.L146>

0000001e <.LVL1011>:
  1e:	40b2                	lw	ra,12(sp)
  20:	050a                	slli	a0,a0,0x2

00000022 <.LVL1012>:
  22:	0141                	addi	sp,sp,16
  24:	8082                	ret

Disassembly of section .text.rfc_wlan_mode_force:

00000000 <rfc_wlan_mode_force>:
   0:	fe800737          	lui	a4,0xfe800
   4:	4789                	li	a5,2
   6:	177d                	addi	a4,a4,-1
   8:	02a7e763          	bltu	a5,a0,36 <.L148>
			8: R_RISCV_BRANCH	.L148

0000000c <.LBB997>:
   c:	400016b7          	lui	a3,0x40001
  10:	2206a783          	lw	a5,544(a3) # 40001220 <.LLST60+0x3fffd2dd>

00000014 <.LVL1015>:
  14:	055e                	slli	a0,a0,0x17

00000016 <.LVL1016>:
  16:	8f7d                	and	a4,a4,a5

00000018 <.LVL1017>:
  18:	8d59                	or	a0,a0,a4

0000001a <.LVL1018>:
  1a:	22a6a023          	sw	a0,544(a3)

0000001e <.LBB1000>:
  1e:	2206a783          	lw	a5,544(a3)

00000022 <.LVL1020>:
  22:	fe000737          	lui	a4,0xfe000
  26:	177d                	addi	a4,a4,-1
  28:	8ff9                	and	a5,a5,a4
  2a:	02000737          	lui	a4,0x2000
  2e:	8fd9                	or	a5,a5,a4
  30:	22f6a023          	sw	a5,544(a3)
  34:	8082                	ret

00000036 <.L148>:
  36:	400017b7          	lui	a5,0x40001
  3a:	2207a503          	lw	a0,544(a5) # 40001220 <.LLST60+0x3fffd2dd>

0000003e <.LBB1004>:
  3e:	fe0006b7          	lui	a3,0xfe000
  42:	16fd                	addi	a3,a3,-1

00000044 <.LBB1007>:
  44:	8f69                	and	a4,a4,a0

00000046 <.LVL1025>:
  46:	22e7a023          	sw	a4,544(a5)

0000004a <.LBB1008>:
  4a:	2207a703          	lw	a4,544(a5)
  4e:	8f75                	and	a4,a4,a3
  50:	22e7a023          	sw	a4,544(a5)

00000054 <.LBE1008>:
  54:	8082                	ret

Disassembly of section .text.rfc_apply_tx_dvga_offset:

00000000 <rfc_apply_tx_dvga_offset>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB1044>:
   6:	400017b7          	lui	a5,0x40001
   a:	6307a783          	lw	a5,1584(a5) # 40001630 <.LLST60+0x3fffd6ed>

0000000e <.LBE1044>:
   e:	842a                	mv	s0,a0
  10:	07e6                	slli	a5,a5,0x19

00000012 <.LVL1031>:
  12:	87e5                	srai	a5,a5,0x19
  14:	97aa                	add	a5,a5,a0
  16:	4561                	li	a0,24

00000018 <.LVL1032>:
  18:	00f54963          	blt	a0,a5,2a <.L151>
			18: R_RISCV_BRANCH	.L151
  1c:	853e                	mv	a0,a5
  1e:	fd000793          	li	a5,-48
  22:	00f55463          	bge	a0,a5,2a <.L151>
			22: R_RISCV_BRANCH	.L151
  26:	fd000513          	li	a0,-48

0000002a <.L151>:
  2a:	00000097          	auipc	ra,0x0
			2a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc0_setf
			2a: R_RISCV_RELAX	*ABS*
  2e:	000080e7          	jalr	ra # 2a <.L151>

00000032 <.LBB1045>:
  32:	400017b7          	lui	a5,0x40001
  36:	6307a783          	lw	a5,1584(a5) # 40001630 <.LLST60+0x3fffd6ed>

0000003a <.LBE1045>:
  3a:	4561                	li	a0,24
  3c:	07c6                	slli	a5,a5,0x11

0000003e <.LVL1035>:
  3e:	87e5                	srai	a5,a5,0x19
  40:	97a2                	add	a5,a5,s0
  42:	00f54963          	blt	a0,a5,54 <.L153>
			42: R_RISCV_BRANCH	.L153
  46:	853e                	mv	a0,a5
  48:	fd000793          	li	a5,-48
  4c:	00f55463          	bge	a0,a5,54 <.L153>
			4c: R_RISCV_BRANCH	.L153
  50:	fd000513          	li	a0,-48

00000054 <.L153>:
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc1_setf
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.L153>

0000005c <.LBB1047>:
  5c:	400017b7          	lui	a5,0x40001
  60:	6307a783          	lw	a5,1584(a5) # 40001630 <.LLST60+0x3fffd6ed>

00000064 <.LBE1047>:
  64:	4561                	li	a0,24
  66:	07a6                	slli	a5,a5,0x9

00000068 <.LVL1038>:
  68:	87e5                	srai	a5,a5,0x19
  6a:	97a2                	add	a5,a5,s0
  6c:	00f54963          	blt	a0,a5,7e <.L155>
			6c: R_RISCV_BRANCH	.L155
  70:	853e                	mv	a0,a5
  72:	fd000793          	li	a5,-48
  76:	00f55463          	bge	a0,a5,7e <.L155>
			76: R_RISCV_BRANCH	.L155
  7a:	fd000513          	li	a0,-48

0000007e <.L155>:
  7e:	00000097          	auipc	ra,0x0
			7e: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc2_setf
			7e: R_RISCV_RELAX	*ABS*
  82:	000080e7          	jalr	ra # 7e <.L155>

00000086 <.LBB1049>:
  86:	400017b7          	lui	a5,0x40001
  8a:	6307a783          	lw	a5,1584(a5) # 40001630 <.LLST60+0x3fffd6ed>

0000008e <.LBE1049>:
  8e:	4561                	li	a0,24
  90:	0786                	slli	a5,a5,0x1

00000092 <.LVL1041>:
  92:	87e5                	srai	a5,a5,0x19
  94:	97a2                	add	a5,a5,s0
  96:	00f54963          	blt	a0,a5,a8 <.L157>
			96: R_RISCV_BRANCH	.L157
  9a:	853e                	mv	a0,a5
  9c:	fd000793          	li	a5,-48
  a0:	00f55463          	bge	a0,a5,a8 <.L157>
			a0: R_RISCV_BRANCH	.L157
  a4:	fd000513          	li	a0,-48

000000a8 <.L157>:
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc3_setf
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.L157>

000000b0 <.LBB1051>:
  b0:	400017b7          	lui	a5,0x40001
  b4:	6347a783          	lw	a5,1588(a5) # 40001634 <.LLST60+0x3fffd6f1>

000000b8 <.LBE1051>:
  b8:	4561                	li	a0,24
  ba:	07e6                	slli	a5,a5,0x19

000000bc <.LVL1044>:
  bc:	87e5                	srai	a5,a5,0x19
  be:	97a2                	add	a5,a5,s0
  c0:	00f54963          	blt	a0,a5,d2 <.L159>
			c0: R_RISCV_BRANCH	.L159
  c4:	853e                	mv	a0,a5
  c6:	fd000793          	li	a5,-48
  ca:	00f55463          	bge	a0,a5,d2 <.L159>
			ca: R_RISCV_BRANCH	.L159
  ce:	fd000513          	li	a0,-48

000000d2 <.L159>:
  d2:	00000097          	auipc	ra,0x0
			d2: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc4_setf
			d2: R_RISCV_RELAX	*ABS*
  d6:	000080e7          	jalr	ra # d2 <.L159>

000000da <.LBB1053>:
  da:	400017b7          	lui	a5,0x40001
  de:	6347a783          	lw	a5,1588(a5) # 40001634 <.LLST60+0x3fffd6f1>

000000e2 <.LBE1053>:
  e2:	4561                	li	a0,24
  e4:	07c6                	slli	a5,a5,0x11

000000e6 <.LVL1047>:
  e6:	87e5                	srai	a5,a5,0x19
  e8:	97a2                	add	a5,a5,s0
  ea:	00f54963          	blt	a0,a5,fc <.L161>
			ea: R_RISCV_BRANCH	.L161
  ee:	853e                	mv	a0,a5
  f0:	fd000793          	li	a5,-48
  f4:	00f55463          	bge	a0,a5,fc <.L161>
			f4: R_RISCV_BRANCH	.L161
  f8:	fd000513          	li	a0,-48

000000fc <.L161>:
  fc:	00000097          	auipc	ra,0x0
			fc: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc5_setf
			fc: R_RISCV_RELAX	*ABS*
 100:	000080e7          	jalr	ra # fc <.L161>

00000104 <.LBB1055>:
 104:	400017b7          	lui	a5,0x40001
 108:	6347a783          	lw	a5,1588(a5) # 40001634 <.LLST60+0x3fffd6f1>

0000010c <.LBE1055>:
 10c:	4561                	li	a0,24
 10e:	07a6                	slli	a5,a5,0x9

00000110 <.LVL1050>:
 110:	87e5                	srai	a5,a5,0x19
 112:	97a2                	add	a5,a5,s0
 114:	00f54963          	blt	a0,a5,126 <.L163>
			114: R_RISCV_BRANCH	.L163
 118:	853e                	mv	a0,a5
 11a:	fd000793          	li	a5,-48
 11e:	00f55463          	bge	a0,a5,126 <.L163>
			11e: R_RISCV_BRANCH	.L163
 122:	fd000513          	li	a0,-48

00000126 <.L163>:
 126:	00000097          	auipc	ra,0x0
			126: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc6_setf
			126: R_RISCV_RELAX	*ABS*
 12a:	000080e7          	jalr	ra # 126 <.L163>

0000012e <.LBB1057>:
 12e:	400017b7          	lui	a5,0x40001
 132:	6347a783          	lw	a5,1588(a5) # 40001634 <.LLST60+0x3fffd6f1>

00000136 <.LBE1057>:
 136:	4561                	li	a0,24
 138:	0786                	slli	a5,a5,0x1

0000013a <.LVL1053>:
 13a:	87e5                	srai	a5,a5,0x19
 13c:	97a2                	add	a5,a5,s0
 13e:	00f54963          	blt	a0,a5,150 <.L165>
			13e: R_RISCV_BRANCH	.L165
 142:	853e                	mv	a0,a5
 144:	fd000793          	li	a5,-48
 148:	00f55463          	bge	a0,a5,150 <.L165>
			148: R_RISCV_BRANCH	.L165
 14c:	fd000513          	li	a0,-48

00000150 <.L165>:
 150:	00000097          	auipc	ra,0x0
			150: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc7_setf
			150: R_RISCV_RELAX	*ABS*
 154:	000080e7          	jalr	ra # 150 <.L165>

00000158 <.LBB1059>:
 158:	400017b7          	lui	a5,0x40001
 15c:	6387a783          	lw	a5,1592(a5) # 40001638 <.LLST60+0x3fffd6f5>

00000160 <.LBE1059>:
 160:	4561                	li	a0,24
 162:	07e6                	slli	a5,a5,0x19

00000164 <.LVL1056>:
 164:	87e5                	srai	a5,a5,0x19
 166:	97a2                	add	a5,a5,s0
 168:	00f54963          	blt	a0,a5,17a <.L167>
			168: R_RISCV_BRANCH	.L167
 16c:	853e                	mv	a0,a5
 16e:	fd000793          	li	a5,-48
 172:	00f55463          	bge	a0,a5,17a <.L167>
			172: R_RISCV_BRANCH	.L167
 176:	fd000513          	li	a0,-48

0000017a <.L167>:
 17a:	00000097          	auipc	ra,0x0
			17a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc8_setf
			17a: R_RISCV_RELAX	*ABS*
 17e:	000080e7          	jalr	ra # 17a <.L167>

00000182 <.LBB1061>:
 182:	400017b7          	lui	a5,0x40001
 186:	6387a783          	lw	a5,1592(a5) # 40001638 <.LLST60+0x3fffd6f5>

0000018a <.LBE1061>:
 18a:	4561                	li	a0,24
 18c:	07c6                	slli	a5,a5,0x11

0000018e <.LVL1059>:
 18e:	87e5                	srai	a5,a5,0x19
 190:	97a2                	add	a5,a5,s0
 192:	00f54963          	blt	a0,a5,1a4 <.L169>
			192: R_RISCV_BRANCH	.L169
 196:	853e                	mv	a0,a5
 198:	fd000793          	li	a5,-48
 19c:	00f55463          	bge	a0,a5,1a4 <.L169>
			19c: R_RISCV_BRANCH	.L169
 1a0:	fd000513          	li	a0,-48

000001a4 <.L169>:
 1a4:	00000097          	auipc	ra,0x0
			1a4: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc9_setf
			1a4: R_RISCV_RELAX	*ABS*
 1a8:	000080e7          	jalr	ra # 1a4 <.L169>

000001ac <.LBB1063>:
 1ac:	400017b7          	lui	a5,0x40001
 1b0:	6387a783          	lw	a5,1592(a5) # 40001638 <.LLST60+0x3fffd6f5>

000001b4 <.LBE1063>:
 1b4:	4561                	li	a0,24
 1b6:	07a6                	slli	a5,a5,0x9

000001b8 <.LVL1062>:
 1b8:	87e5                	srai	a5,a5,0x19
 1ba:	97a2                	add	a5,a5,s0
 1bc:	00f54963          	blt	a0,a5,1ce <.L171>
			1bc: R_RISCV_BRANCH	.L171
 1c0:	853e                	mv	a0,a5
 1c2:	fd000793          	li	a5,-48
 1c6:	00f55463          	bge	a0,a5,1ce <.L171>
			1c6: R_RISCV_BRANCH	.L171
 1ca:	fd000513          	li	a0,-48

000001ce <.L171>:
 1ce:	00000097          	auipc	ra,0x0
			1ce: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc10_setf
			1ce: R_RISCV_RELAX	*ABS*
 1d2:	000080e7          	jalr	ra # 1ce <.L171>

000001d6 <.LBB1065>:
 1d6:	400017b7          	lui	a5,0x40001
 1da:	6387a783          	lw	a5,1592(a5) # 40001638 <.LLST60+0x3fffd6f5>

000001de <.LBE1065>:
 1de:	4561                	li	a0,24
 1e0:	0786                	slli	a5,a5,0x1

000001e2 <.LVL1065>:
 1e2:	87e5                	srai	a5,a5,0x19
 1e4:	97a2                	add	a5,a5,s0
 1e6:	00f54963          	blt	a0,a5,1f8 <.L173>
			1e6: R_RISCV_BRANCH	.L173
 1ea:	853e                	mv	a0,a5
 1ec:	fd000793          	li	a5,-48
 1f0:	00f55463          	bge	a0,a5,1f8 <.L173>
			1f0: R_RISCV_BRANCH	.L173
 1f4:	fd000513          	li	a0,-48

000001f8 <.L173>:
 1f8:	00000097          	auipc	ra,0x0
			1f8: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc11_setf
			1f8: R_RISCV_RELAX	*ABS*
 1fc:	000080e7          	jalr	ra # 1f8 <.L173>

00000200 <.LBB1067>:
 200:	400017b7          	lui	a5,0x40001
 204:	63c7a783          	lw	a5,1596(a5) # 4000163c <.LLST60+0x3fffd6f9>

00000208 <.LBE1067>:
 208:	4561                	li	a0,24
 20a:	07e6                	slli	a5,a5,0x19

0000020c <.LVL1068>:
 20c:	87e5                	srai	a5,a5,0x19
 20e:	97a2                	add	a5,a5,s0
 210:	00f54963          	blt	a0,a5,222 <.L175>
			210: R_RISCV_BRANCH	.L175
 214:	853e                	mv	a0,a5
 216:	fd000793          	li	a5,-48
 21a:	00f55463          	bge	a0,a5,222 <.L175>
			21a: R_RISCV_BRANCH	.L175
 21e:	fd000513          	li	a0,-48

00000222 <.L175>:
 222:	00000097          	auipc	ra,0x0
			222: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc12_setf
			222: R_RISCV_RELAX	*ABS*
 226:	000080e7          	jalr	ra # 222 <.L175>

0000022a <.LBB1069>:
 22a:	400017b7          	lui	a5,0x40001
 22e:	63c7a783          	lw	a5,1596(a5) # 4000163c <.LLST60+0x3fffd6f9>

00000232 <.LBE1069>:
 232:	4561                	li	a0,24
 234:	07c6                	slli	a5,a5,0x11

00000236 <.LVL1071>:
 236:	87e5                	srai	a5,a5,0x19
 238:	97a2                	add	a5,a5,s0
 23a:	00f54963          	blt	a0,a5,24c <.L177>
			23a: R_RISCV_BRANCH	.L177
 23e:	853e                	mv	a0,a5
 240:	fd000793          	li	a5,-48
 244:	00f55463          	bge	a0,a5,24c <.L177>
			244: R_RISCV_BRANCH	.L177
 248:	fd000513          	li	a0,-48

0000024c <.L177>:
 24c:	00000097          	auipc	ra,0x0
			24c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc13_setf
			24c: R_RISCV_RELAX	*ABS*
 250:	000080e7          	jalr	ra # 24c <.L177>

00000254 <.LBB1071>:
 254:	400017b7          	lui	a5,0x40001
 258:	63c7a783          	lw	a5,1596(a5) # 4000163c <.LLST60+0x3fffd6f9>

0000025c <.LBE1071>:
 25c:	4561                	li	a0,24
 25e:	07a6                	slli	a5,a5,0x9

00000260 <.LVL1074>:
 260:	87e5                	srai	a5,a5,0x19
 262:	97a2                	add	a5,a5,s0
 264:	00f54963          	blt	a0,a5,276 <.L179>
			264: R_RISCV_BRANCH	.L179
 268:	853e                	mv	a0,a5
 26a:	fd000793          	li	a5,-48
 26e:	00f55463          	bge	a0,a5,276 <.L179>
			26e: R_RISCV_BRANCH	.L179
 272:	fd000513          	li	a0,-48

00000276 <.L179>:
 276:	00000097          	auipc	ra,0x0
			276: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc14_setf
			276: R_RISCV_RELAX	*ABS*
 27a:	000080e7          	jalr	ra # 276 <.L179>

0000027e <.LBB1073>:
 27e:	400017b7          	lui	a5,0x40001
 282:	63c7a783          	lw	a5,1596(a5) # 4000163c <.LLST60+0x3fffd6f9>

00000286 <.LBE1073>:
 286:	4561                	li	a0,24
 288:	0786                	slli	a5,a5,0x1

0000028a <.LVL1077>:
 28a:	87e5                	srai	a5,a5,0x19
 28c:	943e                	add	s0,s0,a5
 28e:	00854963          	blt	a0,s0,2a0 <.L181>
			28e: R_RISCV_BRANCH	.L181
 292:	fd000793          	li	a5,-48
 296:	8522                	mv	a0,s0
 298:	00f45463          	bge	s0,a5,2a0 <.L181>
			298: R_RISCV_BRANCH	.L181
 29c:	fd000513          	li	a0,-48

000002a0 <.L181>:
 2a0:	4422                	lw	s0,8(sp)
 2a2:	40b2                	lw	ra,12(sp)
 2a4:	0141                	addi	sp,sp,16
 2a6:	00000317          	auipc	t1,0x0
			2a6: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc15_setf
			2a6: R_RISCV_RELAX	*ABS*
 2aa:	00030067          	jr	t1 # 2a6 <.L181+0x6>

Disassembly of section .text.rfc_apply_tx_dvga:

00000000 <rfc_apply_tx_dvga>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)
   6:	842a                	mv	s0,a0
   8:	00050503          	lb	a0,0(a0)

0000000c <.LVL1080>:
   c:	00000097          	auipc	ra,0x0
			c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc0_setf
			c: R_RISCV_RELAX	*ABS*
  10:	000080e7          	jalr	ra # c <.LVL1080>

00000014 <.LVL1081>:
  14:	00140503          	lb	a0,1(s0) # 40001001 <.LLST60+0x3fffd0be>
  18:	00000097          	auipc	ra,0x0
			18: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc1_setf
			18: R_RISCV_RELAX	*ABS*
  1c:	000080e7          	jalr	ra # 18 <.LVL1081+0x4>

00000020 <.LVL1082>:
  20:	00240503          	lb	a0,2(s0)
  24:	00000097          	auipc	ra,0x0
			24: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc2_setf
			24: R_RISCV_RELAX	*ABS*
  28:	000080e7          	jalr	ra # 24 <.LVL1082+0x4>

0000002c <.LVL1083>:
  2c:	00340503          	lb	a0,3(s0)
  30:	00000097          	auipc	ra,0x0
			30: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc3_setf
			30: R_RISCV_RELAX	*ABS*
  34:	000080e7          	jalr	ra # 30 <.LVL1083+0x4>

00000038 <.LVL1084>:
  38:	00440503          	lb	a0,4(s0)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc4_setf
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL1084+0x4>

00000044 <.LVL1085>:
  44:	00540503          	lb	a0,5(s0)
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc5_setf
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.LVL1085+0x4>

00000050 <.LVL1086>:
  50:	00640503          	lb	a0,6(s0)
  54:	00000097          	auipc	ra,0x0
			54: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc6_setf
			54: R_RISCV_RELAX	*ABS*
  58:	000080e7          	jalr	ra # 54 <.LVL1086+0x4>

0000005c <.LVL1087>:
  5c:	00740503          	lb	a0,7(s0)
  60:	00000097          	auipc	ra,0x0
			60: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc7_setf
			60: R_RISCV_RELAX	*ABS*
  64:	000080e7          	jalr	ra # 60 <.LVL1087+0x4>

00000068 <.LVL1088>:
  68:	00840503          	lb	a0,8(s0)
  6c:	00000097          	auipc	ra,0x0
			6c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc8_setf
			6c: R_RISCV_RELAX	*ABS*
  70:	000080e7          	jalr	ra # 6c <.LVL1088+0x4>

00000074 <.LVL1089>:
  74:	00940503          	lb	a0,9(s0)
  78:	00000097          	auipc	ra,0x0
			78: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc9_setf
			78: R_RISCV_RELAX	*ABS*
  7c:	000080e7          	jalr	ra # 78 <.LVL1089+0x4>

00000080 <.LVL1090>:
  80:	00a40503          	lb	a0,10(s0)
  84:	00000097          	auipc	ra,0x0
			84: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc10_setf
			84: R_RISCV_RELAX	*ABS*
  88:	000080e7          	jalr	ra # 84 <.LVL1090+0x4>

0000008c <.LVL1091>:
  8c:	00b40503          	lb	a0,11(s0)
  90:	00000097          	auipc	ra,0x0
			90: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc11_setf
			90: R_RISCV_RELAX	*ABS*
  94:	000080e7          	jalr	ra # 90 <.LVL1091+0x4>

00000098 <.LVL1092>:
  98:	00c40503          	lb	a0,12(s0)
  9c:	00000097          	auipc	ra,0x0
			9c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc12_setf
			9c: R_RISCV_RELAX	*ABS*
  a0:	000080e7          	jalr	ra # 9c <.LVL1092+0x4>

000000a4 <.LVL1093>:
  a4:	00d40503          	lb	a0,13(s0)
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc13_setf
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL1093+0x4>

000000b0 <.LVL1094>:
  b0:	00e40503          	lb	a0,14(s0)
  b4:	00000097          	auipc	ra,0x0
			b4: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc14_setf
			b4: R_RISCV_RELAX	*ABS*
  b8:	000080e7          	jalr	ra # b4 <.LVL1094+0x4>

000000bc <.LVL1095>:
  bc:	00f40503          	lb	a0,15(s0)
  c0:	4422                	lw	s0,8(sp)

000000c2 <.LVL1096>:
  c2:	40b2                	lw	ra,12(sp)
  c4:	0141                	addi	sp,sp,16
  c6:	00000317          	auipc	t1,0x0
			c6: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc15_setf
			c6: R_RISCV_RELAX	*ABS*
  ca:	00030067          	jr	t1 # c6 <.LVL1096+0x4>

Disassembly of section .text.rfc_dump:

00000000 <rfc_dump>:
   0:	400017b7          	lui	a5,0x40001
   4:	2207a683          	lw	a3,544(a5) # 40001220 <.LLST60+0x3fffd2dd>

00000008 <.LVL1099>:
   8:	10000737          	lui	a4,0x10000
   c:	fff70613          	addi	a2,a4,-1 # fffffff <.LLST60+0xfffc0bc>
  10:	8ef1                	and	a3,a3,a2
  12:	8ed9                	or	a3,a3,a4
  14:	22d7a023          	sw	a3,544(a5)

00000018 <.LBB1092>:
  18:	2247a703          	lw	a4,548(a5)

0000001c <.LBB1094>:
  1c:	2207a703          	lw	a4,544(a5)

00000020 <.LVL1104>:
  20:	200006b7          	lui	a3,0x20000
  24:	8f71                	and	a4,a4,a2
  26:	8f55                	or	a4,a4,a3
  28:	22e7a023          	sw	a4,544(a5)

0000002c <.LBB1096>:
  2c:	2247a703          	lw	a4,548(a5)

00000030 <.LBB1098>:
  30:	479c                	lw	a5,8(a5)

00000032 <.LBE1098>:
  32:	00b79713          	slli	a4,a5,0xb
  36:	06075063          	bgez	a4,96 <.L210>
			36: R_RISCV_BRANCH	.L210
  3a:	1101                	addi	sp,sp,-32
  3c:	ca26                	sw	s1,20(sp)

0000003e <.LBB1100>:
  3e:	f00004b7          	lui	s1,0xf0000

00000042 <.LBE1100>:
  42:	cc22                	sw	s0,24(sp)
  44:	c84a                	sw	s2,16(sp)
  46:	c64e                	sw	s3,12(sp)
  48:	ce06                	sw	ra,28(sp)
  4a:	4921                	li	s2,8

0000004c <.LBB1106>:
  4c:	40001437          	lui	s0,0x40001
  50:	14fd                	addi	s1,s1,-1
  52:	100009b7          	lui	s3,0x10000

00000056 <.L204>:
  56:	0b042783          	lw	a5,176(s0) # 400010b0 <.LLST60+0x3fffd16d>

0000005a <.LBE1107>:
  5a:	4529                	li	a0,10
  5c:	197d                	addi	s2,s2,-1

0000005e <.LBB1108>:
  5e:	8fe5                	and	a5,a5,s1
  60:	0137e7b3          	or	a5,a5,s3
  64:	0af42823          	sw	a5,176(s0)

00000068 <.LBE1108>:
  68:	00000097          	auipc	ra,0x0
			68: R_RISCV_CALL	wait_us
			68: R_RISCV_RELAX	*ABS*
  6c:	000080e7          	jalr	ra # 68 <.LBE1108>

00000070 <.LBB1109>:
  70:	0b042783          	lw	a5,176(s0)

00000074 <.LBE1109>:
  74:	4529                	li	a0,10

00000076 <.LBB1112>:
  76:	8fe5                	and	a5,a5,s1
  78:	0af42823          	sw	a5,176(s0)

0000007c <.LBE1112>:
  7c:	00000097          	auipc	ra,0x0
			7c: R_RISCV_CALL	wait_us
			7c: R_RISCV_RELAX	*ABS*
  80:	000080e7          	jalr	ra # 7c <.LBE1112>

00000084 <.LVL1120>:
  84:	fc0919e3          	bnez	s2,56 <.L204>
			84: R_RISCV_BRANCH	.L204

00000088 <.LBE1113>:
  88:	40f2                	lw	ra,28(sp)
  8a:	4462                	lw	s0,24(sp)
  8c:	44d2                	lw	s1,20(sp)
  8e:	4942                	lw	s2,16(sp)
  90:	49b2                	lw	s3,12(sp)
  92:	6105                	addi	sp,sp,32
  94:	8082                	ret

00000096 <.L210>:
  96:	8082                	ret

Disassembly of section .text.rfc_apply_tx_power_offset:

00000000 <rfc_apply_tx_power_offset>:
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
  16:	ca66                	sw	s9,20(sp)
  18:	c86a                	sw	s10,16(sp)
  1a:	00000097          	auipc	ra,0x0
			1a: R_RISCV_CALL	rf_pri_update_tx_power_offset
			1a: R_RISCV_RELAX	*ABS*
  1e:	000080e7          	jalr	ra # 1a <rfc_apply_tx_power_offset+0x1a>

00000022 <.LVL1122>:
  22:	0070                	addi	a2,sp,12
  24:	002c                	addi	a1,sp,8
  26:	4501                	li	a0,0

00000028 <.LBB1146>:
  28:	40001437          	lui	s0,0x40001

0000002c <.LBE1146>:
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	rf_pri_query_txgain_table
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LBE1146>

00000034 <.LBB1151>:
  34:	64042783          	lw	a5,1600(s0) # 40001640 <.LLST60+0x3fffd6fd>

00000038 <.LBB1152>:
  38:	7d65                	lui	s10,0xffff9
  3a:	1d7d                	addi	s10,s10,-1

0000003c <.LBB1156>:
  3c:	ff87f713          	andi	a4,a5,-8

00000040 <.LVL1125>:
  40:	47a2                	lw	a5,8(sp)

00000042 <.LBB1157>:
  42:	6c9d                	lui	s9,0x7

00000044 <.LBB1158>:
  44:	fff90c37          	lui	s8,0xfff90

00000048 <.LBB1162>:
  48:	8b9d                	andi	a5,a5,7
  4a:	8fd9                	or	a5,a5,a4

0000004c <.LVL1126>:
  4c:	64f42023          	sw	a5,1600(s0)

00000050 <.LBE1162>:
  50:	4532                	lw	a0,12(sp)

00000052 <.LBB1163>:
  52:	1c7d                	addi	s8,s8,-1
  54:	00070bb7          	lui	s7,0x70

00000058 <.LBE1163>:
  58:	00000097          	auipc	ra,0x0
			58: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc0_setf
			58: R_RISCV_RELAX	*ABS*
  5c:	000080e7          	jalr	ra # 58 <.LBE1163>

00000060 <.LVL1128>:
  60:	0070                	addi	a2,sp,12
  62:	002c                	addi	a1,sp,8
  64:	4505                	li	a0,1
  66:	00000097          	auipc	ra,0x0
			66: R_RISCV_CALL	rf_pri_query_txgain_table
			66: R_RISCV_RELAX	*ABS*
  6a:	000080e7          	jalr	ra # 66 <.LVL1128+0x6>

0000006e <.LBB1164>:
  6e:	64042783          	lw	a5,1600(s0)

00000072 <.LBB1168>:
  72:	ff900b37          	lui	s6,0xff900
  76:	1b7d                	addi	s6,s6,-1

00000078 <.LBB1172>:
  78:	f8f7f713          	andi	a4,a5,-113

0000007c <.LVL1131>:
  7c:	47a2                	lw	a5,8(sp)

0000007e <.LBB1173>:
  7e:	00700ab7          	lui	s5,0x700

00000082 <.LBB1174>:
  82:	f9000a37          	lui	s4,0xf9000

00000086 <.LBB1178>:
  86:	0792                	slli	a5,a5,0x4
  88:	0707f793          	andi	a5,a5,112
  8c:	8fd9                	or	a5,a5,a4

0000008e <.LVL1132>:
  8e:	64f42023          	sw	a5,1600(s0)

00000092 <.LBE1178>:
  92:	4532                	lw	a0,12(sp)

00000094 <.LBB1179>:
  94:	1a7d                	addi	s4,s4,-1
  96:	070009b7          	lui	s3,0x7000

0000009a <.LBE1179>:
  9a:	00000097          	auipc	ra,0x0
			9a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc1_setf
			9a: R_RISCV_RELAX	*ABS*
  9e:	000080e7          	jalr	ra # 9a <.LBE1179>

000000a2 <.LVL1134>:
  a2:	0070                	addi	a2,sp,12
  a4:	002c                	addi	a1,sp,8
  a6:	4509                	li	a0,2
  a8:	00000097          	auipc	ra,0x0
			a8: R_RISCV_CALL	rf_pri_query_txgain_table
			a8: R_RISCV_RELAX	*ABS*
  ac:	000080e7          	jalr	ra # a8 <.LVL1134+0x6>

000000b0 <.LBB1180>:
  b0:	64042783          	lw	a5,1600(s0)

000000b4 <.LBB1184>:
  b4:	90000937          	lui	s2,0x90000
  b8:	700004b7          	lui	s1,0x70000

000000bc <.LBB1188>:
  bc:	8ff7f713          	andi	a4,a5,-1793

000000c0 <.LVL1137>:
  c0:	47a2                	lw	a5,8(sp)

000000c2 <.LBB1189>:
  c2:	197d                	addi	s2,s2,-1

000000c4 <.LBB1190>:
  c4:	07a2                	slli	a5,a5,0x8
  c6:	7007f793          	andi	a5,a5,1792
  ca:	8fd9                	or	a5,a5,a4

000000cc <.LVL1138>:
  cc:	64f42023          	sw	a5,1600(s0)

000000d0 <.LBE1190>:
  d0:	4532                	lw	a0,12(sp)
  d2:	00000097          	auipc	ra,0x0
			d2: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc2_setf
			d2: R_RISCV_RELAX	*ABS*
  d6:	000080e7          	jalr	ra # d2 <.LBE1190+0x2>

000000da <.LVL1140>:
  da:	0070                	addi	a2,sp,12
  dc:	002c                	addi	a1,sp,8
  de:	450d                	li	a0,3
  e0:	00000097          	auipc	ra,0x0
			e0: R_RISCV_CALL	rf_pri_query_txgain_table
			e0: R_RISCV_RELAX	*ABS*
  e4:	000080e7          	jalr	ra # e0 <.LVL1140+0x6>

000000e8 <.LBB1191>:
  e8:	64042783          	lw	a5,1600(s0)

000000ec <.LVL1142>:
  ec:	01a7f733          	and	a4,a5,s10

000000f0 <.LVL1143>:
  f0:	47a2                	lw	a5,8(sp)
  f2:	07b2                	slli	a5,a5,0xc
  f4:	0197f7b3          	and	a5,a5,s9
  f8:	8fd9                	or	a5,a5,a4

000000fa <.LVL1144>:
  fa:	64f42023          	sw	a5,1600(s0)

000000fe <.LBE1191>:
  fe:	4532                	lw	a0,12(sp)
 100:	00000097          	auipc	ra,0x0
			100: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc3_setf
			100: R_RISCV_RELAX	*ABS*
 104:	000080e7          	jalr	ra # 100 <.LBE1191+0x2>

00000108 <.LVL1146>:
 108:	0070                	addi	a2,sp,12
 10a:	002c                	addi	a1,sp,8
 10c:	4511                	li	a0,4
 10e:	00000097          	auipc	ra,0x0
			10e: R_RISCV_CALL	rf_pri_query_txgain_table
			10e: R_RISCV_RELAX	*ABS*
 112:	000080e7          	jalr	ra # 10e <.LVL1146+0x6>

00000116 <.LBB1192>:
 116:	64042783          	lw	a5,1600(s0)

0000011a <.LVL1148>:
 11a:	0187f733          	and	a4,a5,s8

0000011e <.LVL1149>:
 11e:	47a2                	lw	a5,8(sp)
 120:	07c2                	slli	a5,a5,0x10
 122:	0177f7b3          	and	a5,a5,s7
 126:	8fd9                	or	a5,a5,a4

00000128 <.LVL1150>:
 128:	64f42023          	sw	a5,1600(s0)

0000012c <.LBE1192>:
 12c:	4532                	lw	a0,12(sp)
 12e:	00000097          	auipc	ra,0x0
			12e: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc4_setf
			12e: R_RISCV_RELAX	*ABS*
 132:	000080e7          	jalr	ra # 12e <.LBE1192+0x2>

00000136 <.LVL1152>:
 136:	0070                	addi	a2,sp,12
 138:	002c                	addi	a1,sp,8
 13a:	4515                	li	a0,5
 13c:	00000097          	auipc	ra,0x0
			13c: R_RISCV_CALL	rf_pri_query_txgain_table
			13c: R_RISCV_RELAX	*ABS*
 140:	000080e7          	jalr	ra # 13c <.LVL1152+0x6>

00000144 <.LBB1193>:
 144:	64042783          	lw	a5,1600(s0)

00000148 <.LVL1154>:
 148:	0167f733          	and	a4,a5,s6

0000014c <.LVL1155>:
 14c:	47a2                	lw	a5,8(sp)
 14e:	07d2                	slli	a5,a5,0x14
 150:	0157f7b3          	and	a5,a5,s5
 154:	8fd9                	or	a5,a5,a4

00000156 <.LVL1156>:
 156:	64f42023          	sw	a5,1600(s0)

0000015a <.LBE1193>:
 15a:	4532                	lw	a0,12(sp)
 15c:	00000097          	auipc	ra,0x0
			15c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc5_setf
			15c: R_RISCV_RELAX	*ABS*
 160:	000080e7          	jalr	ra # 15c <.LBE1193+0x2>

00000164 <.LVL1158>:
 164:	0070                	addi	a2,sp,12
 166:	002c                	addi	a1,sp,8
 168:	4519                	li	a0,6
 16a:	00000097          	auipc	ra,0x0
			16a: R_RISCV_CALL	rf_pri_query_txgain_table
			16a: R_RISCV_RELAX	*ABS*
 16e:	000080e7          	jalr	ra # 16a <.LVL1158+0x6>

00000172 <.LBB1194>:
 172:	64042783          	lw	a5,1600(s0)

00000176 <.LVL1160>:
 176:	0147f733          	and	a4,a5,s4

0000017a <.LVL1161>:
 17a:	47a2                	lw	a5,8(sp)
 17c:	07e2                	slli	a5,a5,0x18
 17e:	0137f7b3          	and	a5,a5,s3
 182:	8fd9                	or	a5,a5,a4

00000184 <.LVL1162>:
 184:	64f42023          	sw	a5,1600(s0)

00000188 <.LBE1194>:
 188:	4532                	lw	a0,12(sp)
 18a:	00000097          	auipc	ra,0x0
			18a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc6_setf
			18a: R_RISCV_RELAX	*ABS*
 18e:	000080e7          	jalr	ra # 18a <.LBE1194+0x2>

00000192 <.LVL1164>:
 192:	0070                	addi	a2,sp,12
 194:	002c                	addi	a1,sp,8
 196:	451d                	li	a0,7
 198:	00000097          	auipc	ra,0x0
			198: R_RISCV_CALL	rf_pri_query_txgain_table
			198: R_RISCV_RELAX	*ABS*
 19c:	000080e7          	jalr	ra # 198 <.LVL1164+0x6>

000001a0 <.LBB1195>:
 1a0:	47a2                	lw	a5,8(sp)
 1a2:	64042703          	lw	a4,1600(s0)

000001a6 <.LVL1166>:
 1a6:	07f2                	slli	a5,a5,0x1c
 1a8:	01277733          	and	a4,a4,s2
 1ac:	8fe5                	and	a5,a5,s1
 1ae:	8fd9                	or	a5,a5,a4

000001b0 <.LVL1168>:
 1b0:	64f42023          	sw	a5,1600(s0)

000001b4 <.LBE1195>:
 1b4:	4532                	lw	a0,12(sp)
 1b6:	00000097          	auipc	ra,0x0
			1b6: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc7_setf
			1b6: R_RISCV_RELAX	*ABS*
 1ba:	000080e7          	jalr	ra # 1b6 <.LBE1195+0x2>

000001be <.LVL1170>:
 1be:	0070                	addi	a2,sp,12
 1c0:	002c                	addi	a1,sp,8
 1c2:	4521                	li	a0,8
 1c4:	00000097          	auipc	ra,0x0
			1c4: R_RISCV_CALL	rf_pri_query_txgain_table
			1c4: R_RISCV_RELAX	*ABS*
 1c8:	000080e7          	jalr	ra # 1c4 <.LVL1170+0x6>

000001cc <.LBB1196>:
 1cc:	64442783          	lw	a5,1604(s0)

000001d0 <.LVL1172>:
 1d0:	ff87f713          	andi	a4,a5,-8

000001d4 <.LVL1173>:
 1d4:	47a2                	lw	a5,8(sp)
 1d6:	8b9d                	andi	a5,a5,7
 1d8:	8fd9                	or	a5,a5,a4

000001da <.LVL1174>:
 1da:	64f42223          	sw	a5,1604(s0)

000001de <.LBE1196>:
 1de:	4532                	lw	a0,12(sp)
 1e0:	00000097          	auipc	ra,0x0
			1e0: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc8_setf
			1e0: R_RISCV_RELAX	*ABS*
 1e4:	000080e7          	jalr	ra # 1e0 <.LBE1196+0x2>

000001e8 <.LVL1176>:
 1e8:	002c                	addi	a1,sp,8
 1ea:	0070                	addi	a2,sp,12
 1ec:	4525                	li	a0,9
 1ee:	00000097          	auipc	ra,0x0
			1ee: R_RISCV_CALL	rf_pri_query_txgain_table
			1ee: R_RISCV_RELAX	*ABS*
 1f2:	000080e7          	jalr	ra # 1ee <.LVL1176+0x6>

000001f6 <.LBB1198>:
 1f6:	64442603          	lw	a2,1604(s0)

000001fa <.LVL1178>:
 1fa:	f8f67793          	andi	a5,a2,-113

000001fe <.LVL1179>:
 1fe:	4622                	lw	a2,8(sp)
 200:	0612                	slli	a2,a2,0x4
 202:	07067613          	andi	a2,a2,112
 206:	8e5d                	or	a2,a2,a5

00000208 <.LVL1180>:
 208:	64c42223          	sw	a2,1604(s0)

0000020c <.LBE1198>:
 20c:	4532                	lw	a0,12(sp)
 20e:	00000097          	auipc	ra,0x0
			20e: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc9_setf
			20e: R_RISCV_RELAX	*ABS*
 212:	000080e7          	jalr	ra # 20e <.LBE1198+0x2>

00000216 <.LVL1182>:
 216:	002c                	addi	a1,sp,8
 218:	0070                	addi	a2,sp,12
 21a:	4529                	li	a0,10
 21c:	00000097          	auipc	ra,0x0
			21c: R_RISCV_CALL	rf_pri_query_txgain_table
			21c: R_RISCV_RELAX	*ABS*
 220:	000080e7          	jalr	ra # 21c <.LVL1182+0x6>

00000224 <.LBB1200>:
 224:	64442603          	lw	a2,1604(s0)

00000228 <.LVL1184>:
 228:	8ff67793          	andi	a5,a2,-1793

0000022c <.LVL1185>:
 22c:	4622                	lw	a2,8(sp)
 22e:	0622                	slli	a2,a2,0x8
 230:	70067613          	andi	a2,a2,1792
 234:	8e5d                	or	a2,a2,a5

00000236 <.LVL1186>:
 236:	64c42223          	sw	a2,1604(s0)

0000023a <.LBE1200>:
 23a:	4532                	lw	a0,12(sp)
 23c:	00000097          	auipc	ra,0x0
			23c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc10_setf
			23c: R_RISCV_RELAX	*ABS*
 240:	000080e7          	jalr	ra # 23c <.LBE1200+0x2>

00000244 <.LVL1188>:
 244:	002c                	addi	a1,sp,8
 246:	0070                	addi	a2,sp,12
 248:	452d                	li	a0,11
 24a:	00000097          	auipc	ra,0x0
			24a: R_RISCV_CALL	rf_pri_query_txgain_table
			24a: R_RISCV_RELAX	*ABS*
 24e:	000080e7          	jalr	ra # 24a <.LVL1188+0x6>

00000252 <.LBB1202>:
 252:	64442603          	lw	a2,1604(s0)

00000256 <.LVL1190>:
 256:	01a67d33          	and	s10,a2,s10

0000025a <.LVL1191>:
 25a:	4622                	lw	a2,8(sp)
 25c:	0632                	slli	a2,a2,0xc
 25e:	01967633          	and	a2,a2,s9
 262:	01a66633          	or	a2,a2,s10

00000266 <.LVL1192>:
 266:	64c42223          	sw	a2,1604(s0)

0000026a <.LBE1202>:
 26a:	4532                	lw	a0,12(sp)
 26c:	00000097          	auipc	ra,0x0
			26c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc11_setf
			26c: R_RISCV_RELAX	*ABS*
 270:	000080e7          	jalr	ra # 26c <.LBE1202+0x2>

00000274 <.LVL1194>:
 274:	002c                	addi	a1,sp,8
 276:	0070                	addi	a2,sp,12
 278:	4531                	li	a0,12
 27a:	00000097          	auipc	ra,0x0
			27a: R_RISCV_CALL	rf_pri_query_txgain_table
			27a: R_RISCV_RELAX	*ABS*
 27e:	000080e7          	jalr	ra # 27a <.LVL1194+0x6>

00000282 <.LBB1204>:
 282:	64442603          	lw	a2,1604(s0)

00000286 <.LVL1196>:
 286:	01867c33          	and	s8,a2,s8

0000028a <.LVL1197>:
 28a:	4622                	lw	a2,8(sp)
 28c:	0642                	slli	a2,a2,0x10
 28e:	01767633          	and	a2,a2,s7
 292:	01866633          	or	a2,a2,s8

00000296 <.LVL1198>:
 296:	64c42223          	sw	a2,1604(s0)

0000029a <.LBE1204>:
 29a:	4532                	lw	a0,12(sp)
 29c:	00000097          	auipc	ra,0x0
			29c: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc12_setf
			29c: R_RISCV_RELAX	*ABS*
 2a0:	000080e7          	jalr	ra # 29c <.LBE1204+0x2>

000002a4 <.LVL1200>:
 2a4:	0070                	addi	a2,sp,12
 2a6:	002c                	addi	a1,sp,8
 2a8:	4535                	li	a0,13
 2aa:	00000097          	auipc	ra,0x0
			2aa: R_RISCV_CALL	rf_pri_query_txgain_table
			2aa: R_RISCV_RELAX	*ABS*
 2ae:	000080e7          	jalr	ra # 2aa <.LVL1200+0x6>

000002b2 <.LBB1206>:
 2b2:	64442683          	lw	a3,1604(s0)

000002b6 <.LVL1202>:
 2b6:	0166fb33          	and	s6,a3,s6

000002ba <.LVL1203>:
 2ba:	46a2                	lw	a3,8(sp)
 2bc:	06d2                	slli	a3,a3,0x14
 2be:	0156f6b3          	and	a3,a3,s5
 2c2:	0166e6b3          	or	a3,a3,s6

000002c6 <.LVL1204>:
 2c6:	64d42223          	sw	a3,1604(s0)

000002ca <.LBE1206>:
 2ca:	4532                	lw	a0,12(sp)
 2cc:	00000097          	auipc	ra,0x0
			2cc: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc13_setf
			2cc: R_RISCV_RELAX	*ABS*
 2d0:	000080e7          	jalr	ra # 2cc <.LBE1206+0x2>

000002d4 <.LVL1206>:
 2d4:	0070                	addi	a2,sp,12
 2d6:	002c                	addi	a1,sp,8
 2d8:	4539                	li	a0,14
 2da:	00000097          	auipc	ra,0x0
			2da: R_RISCV_CALL	rf_pri_query_txgain_table
			2da: R_RISCV_RELAX	*ABS*
 2de:	000080e7          	jalr	ra # 2da <.LVL1206+0x6>

000002e2 <.LBB1208>:
 2e2:	64442703          	lw	a4,1604(s0)

000002e6 <.LVL1208>:
 2e6:	01477a33          	and	s4,a4,s4

000002ea <.LVL1209>:
 2ea:	4722                	lw	a4,8(sp)
 2ec:	0762                	slli	a4,a4,0x18
 2ee:	01377733          	and	a4,a4,s3
 2f2:	01476733          	or	a4,a4,s4

000002f6 <.LVL1210>:
 2f6:	64e42223          	sw	a4,1604(s0)

000002fa <.LBE1208>:
 2fa:	4532                	lw	a0,12(sp)
 2fc:	00000097          	auipc	ra,0x0
			2fc: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc14_setf
			2fc: R_RISCV_RELAX	*ABS*
 300:	000080e7          	jalr	ra # 2fc <.LBE1208+0x2>

00000304 <.LVL1212>:
 304:	0070                	addi	a2,sp,12
 306:	002c                	addi	a1,sp,8
 308:	453d                	li	a0,15
 30a:	00000097          	auipc	ra,0x0
			30a: R_RISCV_CALL	rf_pri_query_txgain_table
			30a: R_RISCV_RELAX	*ABS*
 30e:	000080e7          	jalr	ra # 30a <.LVL1212+0x6>

00000312 <.LBB1210>:
 312:	64442783          	lw	a5,1604(s0)

00000316 <.LVL1214>:
 316:	0127f933          	and	s2,a5,s2

0000031a <.LVL1215>:
 31a:	47a2                	lw	a5,8(sp)
 31c:	07f2                	slli	a5,a5,0x1c
 31e:	8fe5                	and	a5,a5,s1
 320:	0127e7b3          	or	a5,a5,s2

00000324 <.LVL1216>:
 324:	64f42223          	sw	a5,1604(s0)

00000328 <.LBE1210>:
 328:	4532                	lw	a0,12(sp)
 32a:	00000097          	auipc	ra,0x0
			32a: R_RISCV_CALL	rf_tx_dvga_gain_qdb_gc15_setf
			32a: R_RISCV_RELAX	*ABS*
 32e:	000080e7          	jalr	ra # 32a <.LBE1210+0x2>

00000332 <.LVL1218>:
 332:	50f2                	lw	ra,60(sp)
 334:	5462                	lw	s0,56(sp)
 336:	54d2                	lw	s1,52(sp)
 338:	5942                	lw	s2,48(sp)
 33a:	59b2                	lw	s3,44(sp)
 33c:	5a22                	lw	s4,40(sp)
 33e:	5a92                	lw	s5,36(sp)
 340:	5b02                	lw	s6,32(sp)
 342:	4bf2                	lw	s7,28(sp)
 344:	4c62                	lw	s8,24(sp)
 346:	4cd2                	lw	s9,20(sp)
 348:	4d42                	lw	s10,16(sp)
 34a:	6121                	addi	sp,sp,64
 34c:	8082                	ret
