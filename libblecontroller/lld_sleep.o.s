
lld_sleep.o:     file format elf32-littleriscv


Disassembly of section .text.lld_sleep_init:

00000000 <lld_sleep_init>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <lld_sleep_init>
   8:	1101                	addi	sp,sp,-32
   a:	00000537          	lui	a0,0x0
   e:	ce06                	sw	ra,28(sp)
  10:	cc22                	sw	s0,24(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	4651                	li	a2,20
  1a:	4581                	li	a1,0
  1c:	00050993          	mv	s3,a0
  20:	00050513          	mv	a0,a0
  24:	9782                	jalr	a5

00000026 <.LVL0>:
  26:	6485                	lui	s1,0x1
  28:	38848513          	addi	a0,s1,904 # 1388 <.LASF8+0x9>
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL0+0x6>

00000034 <.LVL1>:
  34:	892a                	mv	s2,a0
  36:	38848513          	addi	a0,s1,904
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL1+0x6>

00000042 <.LVL2>:
  42:	842a                	mv	s0,a0
  44:	27100513          	li	a0,625
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL2+0x6>

00000050 <.LBB104>:
  50:	0542                	slli	a0,a0,0x10

00000052 <.LVL4>:
  52:	040007b7          	lui	a5,0x4000
  56:	c0078793          	addi	a5,a5,-1024 # 3fffc00 <.LASF346+0x3ffe2ef>
  5a:	0956                	slli	s2,s2,0x15

0000005c <.LVL5>:
  5c:	8141                	srli	a0,a0,0x10
  5e:	042a                	slli	s0,s0,0xa

00000060 <.LVL6>:
  60:	8c7d                	and	s0,s0,a5
  62:	01256533          	or	a0,a0,s2
  66:	8d41                	or	a0,a0,s0
  68:	28000437          	lui	s0,0x28000
  6c:	dc48                	sw	a0,60(s0)

0000006e <.LBE104>:
  6e:	38848513          	addi	a0,s1,904
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LBE104+0x4>

0000007a <.LBB106>:
  7a:	581c                	lw	a5,48(s0)
  7c:	0786                	slli	a5,a5,0x1
  7e:	8385                	srli	a5,a5,0x1
  80:	d81c                	sw	a5,48(s0)

00000082 <.LBB108>:
  82:	40f2                	lw	ra,28(sp)
  84:	4462                	lw	s0,24(sp)

00000086 <.LBB114>:
  86:	0009a223          	sw	zero,4(s3)

0000008a <.LBB115>:
  8a:	00099423          	sh	zero,8(s3)

0000008e <.LBE115>:
  8e:	44d2                	lw	s1,20(sp)
  90:	4942                	lw	s2,16(sp)
  92:	49b2                	lw	s3,12(sp)
  94:	6105                	addi	sp,sp,32
  96:	8082                	ret

Disassembly of section .text.lld_sleep_enter:

00000000 <lld_sleep_enter>:
   0:	280007b7          	lui	a5,0x28000
   4:	47d4                	lw	a3,12(a5)

00000006 <.LBE116>:
   6:	00000737          	lui	a4,0x0
   a:	00d72023          	sw	a3,0(a4) # 0 <lld_sleep_enter>

0000000e <.LBB118>:
   e:	dbc8                	sw	a0,52(a5)

00000010 <.LBB120>:
  10:	10e00713          	li	a4,270
  14:	cf98                	sw	a4,24(a5)

00000016 <.LBB122>:
  16:	4711                	li	a4,4
  18:	c7d8                	sw	a4,12(a5)

0000001a <.LBB124>:
  1a:	47d8                	lw	a4,12(a5)
  1c:	831d                	srli	a4,a4,0x7

0000001e <.LBE124>:
  1e:	8b05                	andi	a4,a4,1
  20:	cb01                	beqz	a4,30 <.L4>

00000022 <.LBB126>:
  22:	08000713          	li	a4,128
  26:	cf98                	sw	a4,24(a5)

00000028 <.LBB128>:
  28:	47d8                	lw	a4,12(a5)
  2a:	f7f77713          	andi	a4,a4,-129
  2e:	c7d8                	sw	a4,12(a5)

00000030 <.L4>:
  30:	e981                	bnez	a1,40 <.L3>

00000032 <.LBB130>:
  32:	28000737          	lui	a4,0x28000
  36:	5b1c                	lw	a5,48(a4)
  38:	800006b7          	lui	a3,0x80000
  3c:	8fd5                	or	a5,a5,a3
  3e:	db1c                	sw	a5,48(a4)

00000040 <.L3>:
  40:	8082                	ret

Disassembly of section .text.lld_sleep_wakeup:

00000000 <lld_sleep_wakeup>:
   0:	28000737          	lui	a4,0x28000
   4:	5b1c                	lw	a5,48(a4)
   6:	0786                	slli	a5,a5,0x1
   8:	8385                	srli	a5,a5,0x1
   a:	db1c                	sw	a5,48(a4)

0000000c <.LBB170>:
   c:	000007b7          	lui	a5,0x0
  10:	00078793          	mv	a5,a5

00000014 <.LBE170>:
  14:	0097c683          	lbu	a3,9(a5) # 9 <lld_sleep_wakeup+0x9>
  18:	c28d                	beqz	a3,3a <.L10>

0000001a <.LBB172>:
  1a:	47d4                	lw	a3,12(a5)

0000001c <.LBB175>:
  1c:	00079423          	sh	zero,8(a5)

00000020 <.LBB176>:
  20:	c374                	sw	a3,68(a4)

00000022 <.LBE176>:
  22:	4b9c                	lw	a5,16(a5)

00000024 <.LBB178>:
  24:	c33c                	sw	a5,64(a4)

00000026 <.LBB180>:
  26:	5b1c                	lw	a5,48(a4)
  28:	0087e793          	ori	a5,a5,8
  2c:	db1c                	sw	a5,48(a4)

0000002e <.LBB182>:
  2e:	280007b7          	lui	a5,0x28000
  32:	4705                	li	a4,1
  34:	cf98                	sw	a4,24(a5)

00000036 <.LBB185>:
  36:	c7d8                	sw	a4,12(a5)

00000038 <.LVL31>:
  38:	8082                	ret

0000003a <.L10>:
  3a:	1141                	addi	sp,sp,-16
  3c:	c606                	sw	ra,12(sp)

0000003e <.LBB193>:
  3e:	5f08                	lw	a0,56(a4)

00000040 <.LBB194>:
  40:	0087c703          	lbu	a4,8(a5) # 28000008 <.LASF346+0x27ffe6f7>
  44:	cb25                	beqz	a4,b4 <.L12>

00000046 <.LBB196>:
  46:	43d8                	lw	a4,4(a5)

00000048 <.LBB198>:
  48:	00078423          	sb	zero,8(a5)

0000004c <.LBE198>:
  4c:	8d19                	sub	a0,a0,a4

0000004e <.L13>:
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L13>

00000056 <.LVL35>:
  56:	000006b7          	lui	a3,0x0
  5a:	00068793          	mv	a5,a3
  5e:	02a7c783          	lbu	a5,42(a5)
  62:	27100713          	li	a4,625
  66:	00068693          	mv	a3,a3
  6a:	953e                	add	a0,a0,a5

0000006c <.LVL36>:
  6c:	02e55733          	divu	a4,a0,a4

00000070 <.LVL37>:
  70:	27100793          	li	a5,625
  74:	02f707b3          	mul	a5,a4,a5
  78:	40a78533          	sub	a0,a5,a0

0000007c <.LVL38>:
  7c:	27050513          	addi	a0,a0,624 # 270 <.LASF443+0x1>
  80:	0542                	slli	a0,a0,0x10
  82:	8141                	srli	a0,a0,0x10

00000084 <.LVL39>:
  84:	4781                	li	a5,0
  86:	e509                	bnez	a0,90 <.L14>

00000088 <.LVL40>:
  88:	0705                	addi	a4,a4,1
  8a:	4785                	li	a5,1
  8c:	27000513          	li	a0,624

00000090 <.L14>:
  90:	02f68523          	sb	a5,42(a3) # 2a <.LBB180+0x4>

00000094 <.LBB202>:
  94:	280007b7          	lui	a5,0x28000
  98:	c3f8                	sw	a4,68(a5)

0000009a <.LBB204>:
  9a:	c3a8                	sw	a0,64(a5)

0000009c <.LBB206>:
  9c:	5b98                	lw	a4,48(a5)

0000009e <.LVL46>:
  9e:	00876713          	ori	a4,a4,8
  a2:	db98                	sw	a4,48(a5)

000000a4 <.LBB213>:
  a4:	280007b7          	lui	a5,0x28000
  a8:	4705                	li	a4,1
  aa:	cf98                	sw	a4,24(a5)

000000ac <.LBB214>:
  ac:	c7d8                	sw	a4,12(a5)

000000ae <.LBE214>:
  ae:	40b2                	lw	ra,12(sp)
  b0:	0141                	addi	sp,sp,16
  b2:	8082                	ret

000000b4 <.L12>:
  b4:	c3c8                	sw	a0,4(a5)
  b6:	bf61                	j	4e <.L13>

Disassembly of section .text.lld_sleep_wakeup_end:

00000000 <lld_sleep_wakeup_end>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a703          	lw	a4,0(a5) # 0 <lld_sleep_wakeup_end>

00000008 <.LBB216>:
   8:	280007b7          	lui	a5,0x28000
   c:	c7d8                	sw	a4,12(a5)

0000000e <.LBE216>:
   e:	8082                	ret

Disassembly of section .text.lld_sleep_set_sw_wakeup:

00000000 <lld_sleep_set_sw_wakeup>:
   0:	000007b7          	lui	a5,0x0
   4:	00a78423          	sb	a0,8(a5) # 8 <lld_sleep_set_sw_wakeup+0x8>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_is_sw_wakeup:

00000000 <lld_sleep_is_sw_wakeup>:
   0:	000007b7          	lui	a5,0x0
   4:	0087c503          	lbu	a0,8(a5) # 8 <lld_sleep_is_sw_wakeup+0x8>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_set_last_sleep_dur:

00000000 <lld_sleep_set_last_sleep_dur>:
   0:	000007b7          	lui	a5,0x0
   4:	00a7a223          	sw	a0,4(a5) # 4 <lld_sleep_set_last_sleep_dur+0x4>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_get_last_sleep_dur:

00000000 <lld_sleep_get_last_sleep_dur>:
   0:	000007b7          	lui	a5,0x0
   4:	0047a503          	lw	a0,4(a5) # 4 <lld_sleep_get_last_sleep_dur+0x4>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_set_pds_reset:

00000000 <lld_sleep_set_pds_reset>:
   0:	000007b7          	lui	a5,0x0
   4:	00a784a3          	sb	a0,9(a5) # 9 <lld_sleep_set_pds_reset+0x9>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_get_pds_reset:

00000000 <lld_sleep_get_pds_reset>:
   0:	000007b7          	lui	a5,0x0
   4:	0097c503          	lbu	a0,9(a5) # 9 <lld_sleep_get_pds_reset+0x9>
   8:	8082                	ret

Disassembly of section .text.lld_sleep_set_current_time:

00000000 <lld_sleep_set_current_time>:
   0:	80000737          	lui	a4,0x80000
   4:	280007b7          	lui	a5,0x28000
   8:	cfd8                	sw	a4,28(a5)

0000000a <.LBB220>:
   a:	28000737          	lui	a4,0x28000

0000000e <.L27>:
   e:	4f54                	lw	a3,28(a4)

00000010 <.LBE223>:
  10:	fe06cfe3          	bltz	a3,e <.L27>

00000014 <.LBB224>:
  14:	4f54                	lw	a3,28(a4)

00000016 <.LBE224>:
  16:	000007b7          	lui	a5,0x0
  1a:	00078793          	mv	a5,a5
  1e:	c7d4                	sw	a3,12(a5)

00000020 <.LBB226>:
  20:	5318                	lw	a4,32(a4)

00000022 <.LBE226>:
  22:	cb98                	sw	a4,16(a5)
  24:	8082                	ret
