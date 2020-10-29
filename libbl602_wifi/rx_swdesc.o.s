
rx_swdesc.o:     file format elf32-littleriscv


Disassembly of section .text.rx_swdesc_init:

00000000 <rx_swdesc_init>:
   0:	000007b7          	lui	a5,0x0
   4:	00000737          	lui	a4,0x0
   8:	00078793          	mv	a5,a5
   c:	00070713          	mv	a4,a4
  10:	c3d8                	sw	a4,4(a5)

00000012 <.LVL1>:
  12:	00000737          	lui	a4,0x0
  16:	06470713          	addi	a4,a4,100 # 64 <.LVL8+0x4>
  1a:	d3d8                	sw	a4,36(a5)

0000001c <.LVL2>:
  1c:	00000737          	lui	a4,0x0
  20:	0c870713          	addi	a4,a4,200 # c8 <.LASF221+0x1>
  24:	c3f8                	sw	a4,68(a5)

00000026 <.LVL3>:
  26:	00000737          	lui	a4,0x0
  2a:	12c70713          	addi	a4,a4,300 # 12c <.LASF71+0x5>
  2e:	d3f8                	sw	a4,100(a5)

00000030 <.LVL4>:
  30:	00000737          	lui	a4,0x0
  34:	19070713          	addi	a4,a4,400 # 190 <.LASF220+0x1>
  38:	08e7a223          	sw	a4,132(a5) # 84 <.LVL11>

0000003c <.LVL5>:
  3c:	00000737          	lui	a4,0x0
  40:	1f470713          	addi	a4,a4,500 # 1f4 <.LASF147+0x11>
  44:	0ae7a223          	sw	a4,164(a5)

00000048 <.LVL6>:
  48:	00000737          	lui	a4,0x0
  4c:	25870713          	addi	a4,a4,600 # 258 <.LASF185+0x7>
  50:	0ce7a223          	sw	a4,196(a5)

00000054 <.LVL7>:
  54:	00000737          	lui	a4,0x0
  58:	2bc70713          	addi	a4,a4,700 # 2bc <.LASF150+0x10>
  5c:	0ee7a223          	sw	a4,228(a5)

00000060 <.LVL8>:
  60:	00000737          	lui	a4,0x0
  64:	32070713          	addi	a4,a4,800 # 320 <.LASF73+0x1>
  68:	10e7a223          	sw	a4,260(a5)

0000006c <.LVL9>:
  6c:	00000737          	lui	a4,0x0
  70:	38470713          	addi	a4,a4,900 # 384 <.LASF179+0x8>
  74:	12e7a223          	sw	a4,292(a5)

00000078 <.LVL10>:
  78:	00000737          	lui	a4,0x0
  7c:	3e870713          	addi	a4,a4,1000 # 3e8 <.LASF146+0x13>
  80:	14e7a223          	sw	a4,324(a5)

00000084 <.LVL11>:
  84:	00000737          	lui	a4,0x0
  88:	44c70713          	addi	a4,a4,1100 # 44c <.LASF17>
  8c:	16e7a223          	sw	a4,356(a5)

00000090 <.LVL12>:
  90:	00000737          	lui	a4,0x0
  94:	4b070713          	addi	a4,a4,1200 # 4b0 <.LASF206+0x3>
  98:	18e7a223          	sw	a4,388(a5)

0000009c <.LBE2>:
  9c:	8082                	ret
