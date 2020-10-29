
libbl602_wifi/rx_swdesc.o:     file format elf32-littleriscv


Disassembly of section .text.rx_swdesc_init:

00000000 <rx_swdesc_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	rx_swdesc_tab
			0: R_RISCV_RELAX	*ABS*
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	rx_dma_hdrdesc
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	rx_swdesc_tab
			8: R_RISCV_RELAX	*ABS*
   c:	00070713          	mv	a4,a4
			c: R_RISCV_LO12_I	rx_dma_hdrdesc
			c: R_RISCV_RELAX	*ABS*
  10:	c3d8                	sw	a4,4(a5)

00000012 <.LVL1>:
  12:	00000737          	lui	a4,0x0
			12: R_RISCV_HI20	rx_dma_hdrdesc+0x64
			12: R_RISCV_RELAX	*ABS*+0x64
  16:	06470713          	addi	a4,a4,100 # 64 <.LVL8+0x4>
			16: R_RISCV_LO12_I	rx_dma_hdrdesc+0x64
			16: R_RISCV_RELAX	*ABS*+0x64
  1a:	d3d8                	sw	a4,36(a5)

0000001c <.LVL2>:
  1c:	00000737          	lui	a4,0x0
			1c: R_RISCV_HI20	rx_dma_hdrdesc+0xc8
			1c: R_RISCV_RELAX	*ABS*+0xc8
  20:	0c870713          	addi	a4,a4,200 # c8 <.LASF221+0x1>
			20: R_RISCV_LO12_I	rx_dma_hdrdesc+0xc8
			20: R_RISCV_RELAX	*ABS*+0xc8
  24:	c3f8                	sw	a4,68(a5)

00000026 <.LVL3>:
  26:	00000737          	lui	a4,0x0
			26: R_RISCV_HI20	rx_dma_hdrdesc+0x12c
			26: R_RISCV_RELAX	*ABS*+0x12c
  2a:	12c70713          	addi	a4,a4,300 # 12c <.LASF71+0x5>
			2a: R_RISCV_LO12_I	rx_dma_hdrdesc+0x12c
			2a: R_RISCV_RELAX	*ABS*+0x12c
  2e:	d3f8                	sw	a4,100(a5)

00000030 <.LVL4>:
  30:	00000737          	lui	a4,0x0
			30: R_RISCV_HI20	rx_dma_hdrdesc+0x190
			30: R_RISCV_RELAX	*ABS*+0x190
  34:	19070713          	addi	a4,a4,400 # 190 <.LASF220+0x1>
			34: R_RISCV_LO12_I	rx_dma_hdrdesc+0x190
			34: R_RISCV_RELAX	*ABS*+0x190
  38:	08e7a223          	sw	a4,132(a5) # 84 <.LVL11>

0000003c <.LVL5>:
  3c:	00000737          	lui	a4,0x0
			3c: R_RISCV_HI20	rx_dma_hdrdesc+0x1f4
			3c: R_RISCV_RELAX	*ABS*+0x1f4
  40:	1f470713          	addi	a4,a4,500 # 1f4 <.LASF147+0x11>
			40: R_RISCV_LO12_I	rx_dma_hdrdesc+0x1f4
			40: R_RISCV_RELAX	*ABS*+0x1f4
  44:	0ae7a223          	sw	a4,164(a5)

00000048 <.LVL6>:
  48:	00000737          	lui	a4,0x0
			48: R_RISCV_HI20	rx_dma_hdrdesc+0x258
			48: R_RISCV_RELAX	*ABS*+0x258
  4c:	25870713          	addi	a4,a4,600 # 258 <.LASF185+0x7>
			4c: R_RISCV_LO12_I	rx_dma_hdrdesc+0x258
			4c: R_RISCV_RELAX	*ABS*+0x258
  50:	0ce7a223          	sw	a4,196(a5)

00000054 <.LVL7>:
  54:	00000737          	lui	a4,0x0
			54: R_RISCV_HI20	rx_dma_hdrdesc+0x2bc
			54: R_RISCV_RELAX	*ABS*+0x2bc
  58:	2bc70713          	addi	a4,a4,700 # 2bc <.LASF150+0x10>
			58: R_RISCV_LO12_I	rx_dma_hdrdesc+0x2bc
			58: R_RISCV_RELAX	*ABS*+0x2bc
  5c:	0ee7a223          	sw	a4,228(a5)

00000060 <.LVL8>:
  60:	00000737          	lui	a4,0x0
			60: R_RISCV_HI20	rx_dma_hdrdesc+0x320
			60: R_RISCV_RELAX	*ABS*+0x320
  64:	32070713          	addi	a4,a4,800 # 320 <.LASF73+0x1>
			64: R_RISCV_LO12_I	rx_dma_hdrdesc+0x320
			64: R_RISCV_RELAX	*ABS*+0x320
  68:	10e7a223          	sw	a4,260(a5)

0000006c <.LVL9>:
  6c:	00000737          	lui	a4,0x0
			6c: R_RISCV_HI20	rx_dma_hdrdesc+0x384
			6c: R_RISCV_RELAX	*ABS*+0x384
  70:	38470713          	addi	a4,a4,900 # 384 <.LASF179+0x8>
			70: R_RISCV_LO12_I	rx_dma_hdrdesc+0x384
			70: R_RISCV_RELAX	*ABS*+0x384
  74:	12e7a223          	sw	a4,292(a5)

00000078 <.LVL10>:
  78:	00000737          	lui	a4,0x0
			78: R_RISCV_HI20	rx_dma_hdrdesc+0x3e8
			78: R_RISCV_RELAX	*ABS*+0x3e8
  7c:	3e870713          	addi	a4,a4,1000 # 3e8 <.LASF146+0x13>
			7c: R_RISCV_LO12_I	rx_dma_hdrdesc+0x3e8
			7c: R_RISCV_RELAX	*ABS*+0x3e8
  80:	14e7a223          	sw	a4,324(a5)

00000084 <.LVL11>:
  84:	00000737          	lui	a4,0x0
			84: R_RISCV_HI20	rx_dma_hdrdesc+0x44c
			84: R_RISCV_RELAX	*ABS*+0x44c
  88:	44c70713          	addi	a4,a4,1100 # 44c <.LASF17>
			88: R_RISCV_LO12_I	rx_dma_hdrdesc+0x44c
			88: R_RISCV_RELAX	*ABS*+0x44c
  8c:	16e7a223          	sw	a4,356(a5)

00000090 <.LVL12>:
  90:	00000737          	lui	a4,0x0
			90: R_RISCV_HI20	rx_dma_hdrdesc+0x4b0
			90: R_RISCV_RELAX	*ABS*+0x4b0
  94:	4b070713          	addi	a4,a4,1200 # 4b0 <.LASF206+0x3>
			94: R_RISCV_LO12_I	rx_dma_hdrdesc+0x4b0
			94: R_RISCV_RELAX	*ABS*+0x4b0
  98:	18e7a223          	sw	a4,388(a5)

0000009c <.LBE2>:
  9c:	8082                	ret
