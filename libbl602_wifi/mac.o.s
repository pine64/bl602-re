
mac.o:     file format elf32-littleriscv


Disassembly of section .text.mac_paid_gid_sta_compute:

00000000 <mac_paid_gid_sta_compute>:
   0:	00454783          	lbu	a5,4(a0)
   4:	00554503          	lbu	a0,5(a0)

00000008 <.LVL1>:
   8:	0807f793          	andi	a5,a5,128
   c:	0506                	slli	a0,a0,0x1
   e:	8d5d                	or	a0,a0,a5
  10:	055a                	slli	a0,a0,0x16
  12:	8082                	ret

Disassembly of section .text.mac_paid_gid_ap_compute:

00000000 <mac_paid_gid_ap_compute>:
   0:	00554783          	lbu	a5,5(a0)

00000004 <.LVL3>:
   4:	4047d513          	srai	a0,a5,0x4

00000008 <.LVL4>:
   8:	8d3d                	xor	a0,a0,a5

0000000a <.LVL5>:
   a:	0516                	slli	a0,a0,0x5

0000000c <.LVL6>:
   c:	1e057513          	andi	a0,a0,480
  10:	95aa                	add	a1,a1,a0

00000012 <.LVL7>:
  12:	05da                	slli	a1,a1,0x16
  14:	7fc00537          	lui	a0,0x7fc00
  18:	8de9                	and	a1,a1,a0
  1a:	003f0537          	lui	a0,0x3f0
  1e:	8d4d                	or	a0,a0,a1
  20:	8082                	ret

Disassembly of section .text.bl60x_current_time_us:

00000000 <bl60x_current_time_us>:
   0:	44b087b7          	lui	a5,0x44b08
   4:	0a47a703          	lw	a4,164(a5) # 44b080a4 <.LASF60+0x44b074bc>
   8:	0a87a783          	lw	a5,168(a5)
   c:	c118                	sw	a4,0(a0)
   e:	c15c                	sw	a5,4(a0)
  10:	8082                	ret
