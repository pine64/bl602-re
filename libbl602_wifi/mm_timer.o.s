
mm_timer.o:     file format elf32-littleriscv


Disassembly of section .text.mm_timer_hw_set:

00000000 <mm_timer_hw_set>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBE78>:
   4:	c905                	beqz	a0,34 <.L2>

00000006 <.LBB80>:
   6:	4558                	lw	a4,12(a0)

00000008 <.LBB81>:
   8:	44b007b7          	lui	a5,0x44b00
   c:	14e7a223          	sw	a4,324(a5) # 44b00144 <.LASF339+0x44aff05d>

00000010 <.LBB83>:
  10:	44b08737          	lui	a4,0x44b08
  14:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF339+0x44b06fa5>

00000018 <.LBE83>:
  18:	0807f693          	andi	a3,a5,128
  1c:	ea89                	bnez	a3,2e <.L3>

0000001e <.LBB85>:
  1e:	08000693          	li	a3,128
  22:	08d72423          	sw	a3,136(a4)

00000026 <.LBE85>:
  26:	0807e793          	ori	a5,a5,128

0000002a <.L4>:
  2a:	08f72623          	sw	a5,140(a4)

0000002e <.L3>:
  2e:	30046073          	csrsi	mstatus,8

00000032 <.LBE91>:
  32:	8082                	ret

00000034 <.L2>:
  34:	44b08737          	lui	a4,0x44b08
  38:	08c72783          	lw	a5,140(a4) # 44b0808c <.LASF339+0x44b06fa5>

0000003c <.LBE93>:
  3c:	f7f7f793          	andi	a5,a5,-129
  40:	b7ed                	j	2a <.L4>

Disassembly of section .text.cmp_abs_time:

00000000 <cmp_abs_time>:
   0:	4548                	lw	a0,12(a0)

00000002 <.LVL9>:
   2:	45dc                	lw	a5,12(a1)
   4:	8d1d                	sub	a0,a0,a5

00000006 <.LBE95>:
   6:	817d                	srli	a0,a0,0x1f
   8:	8082                	ret

Disassembly of section .text.mm_timer_init:

00000000 <mm_timer_init>:
   0:	00000537          	lui	a0,0x0
   4:	00050513          	mv	a0,a0
   8:	00000317          	auipc	t1,0x0
   c:	00030067          	jr	t1 # 8 <mm_timer_init+0x8>

Disassembly of section .text.mm_timer_set:

00000000 <mm_timer_set>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	c84a                	sw	s2,16(sp)
   8:	ce06                	sw	ra,28(sp)
   a:	c64e                	sw	s3,12(sp)

0000000c <.LBB97>:
   c:	44b004b7          	lui	s1,0x44b00
  10:	1204a783          	lw	a5,288(s1) # 44b00120 <.LASF339+0x44aff039>

00000014 <.LBE97>:
  14:	892a                	mv	s2,a0

00000016 <.LBB103>:
  16:	842e                	mv	s0,a1
  18:	40f587b3          	sub	a5,a1,a5

0000001c <.LBE104>:
  1c:	0207d063          	bgez	a5,3c <.L8>
  20:	00000537          	lui	a0,0x0

00000024 <.LVL14>:
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL14+0x4>

00000030 <.LBB107>:
  30:	1204a403          	lw	s0,288(s1)

00000034 <.LBE107>:
  34:	6785                	lui	a5,0x1
  36:	bb878793          	addi	a5,a5,-1096 # bb8 <.LASF126>
  3a:	943e                	add	s0,s0,a5

0000003c <.L8>:
  3c:	000004b7          	lui	s1,0x0
  40:	0004a783          	lw	a5,0(s1) # 0 <mm_timer_set>
  44:	06f91563          	bne	s2,a5,ae <.L9>
  48:	00048513          	mv	a0,s1
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.L8+0x10>

00000054 <.LVL18>:
  54:	4985                	li	s3,1

00000056 <.L10>:
  56:	00000637          	lui	a2,0x0
  5a:	00892623          	sw	s0,12(s2)
  5e:	00060613          	mv	a2,a2
  62:	85ca                	mv	a1,s2
  64:	00048513          	mv	a0,s1
  68:	00000097          	auipc	ra,0x0
  6c:	000080e7          	jalr	ra # 68 <.L10+0x12>

00000070 <.LVL20>:
  70:	00099663          	bnez	s3,7c <.L11>

00000074 <.LVL21>:
  74:	0004a783          	lw	a5,0(s1)
  78:	00f91863          	bne	s2,a5,88 <.L12>

0000007c <.L11>:
  7c:	0004a503          	lw	a0,0(s1)
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.L11+0x4>

00000088 <.L12>:
  88:	44b007b7          	lui	a5,0x44b00
  8c:	1207a783          	lw	a5,288(a5) # 44b00120 <.LASF339+0x44aff039>

00000090 <.LBB114>:
  90:	8c1d                	sub	s0,s0,a5

00000092 <.LBE110>:
  92:	02045763          	bgez	s0,c0 <.L7>
  96:	4462                	lw	s0,24(sp)
  98:	40f2                	lw	ra,28(sp)
  9a:	44d2                	lw	s1,20(sp)
  9c:	4942                	lw	s2,16(sp)

0000009e <.LVL26>:
  9e:	49b2                	lw	s3,12(sp)
  a0:	08000537          	lui	a0,0x8000
  a4:	6105                	addi	sp,sp,32
  a6:	00000317          	auipc	t1,0x0
  aa:	00030067          	jr	t1 # a6 <.LVL26+0x8>

000000ae <.L9>:
  ae:	85ca                	mv	a1,s2
  b0:	00048513          	mv	a0,s1
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.L9+0x6>

000000bc <.LVL28>:
  bc:	4981                	li	s3,0
  be:	bf61                	j	56 <.L10>

000000c0 <.L7>:
  c0:	40f2                	lw	ra,28(sp)
  c2:	4462                	lw	s0,24(sp)
  c4:	44d2                	lw	s1,20(sp)
  c6:	4942                	lw	s2,16(sp)

000000c8 <.LVL30>:
  c8:	49b2                	lw	s3,12(sp)
  ca:	6105                	addi	sp,sp,32
  cc:	8082                	ret

Disassembly of section .text.mm_timer_clear:

00000000 <mm_timer_clear>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00042783          	lw	a5,0(s0) # 0 <mm_timer_clear>
   c:	c606                	sw	ra,12(sp)
   e:	02f51163          	bne	a0,a5,30 <.L17>
  12:	00040513          	mv	a0,s0

00000016 <.LVL32>:
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL32>

0000001e <.LVL33>:
  1e:	00042503          	lw	a0,0(s0)
  22:	4422                	lw	s0,8(sp)
  24:	40b2                	lw	ra,12(sp)
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
  2c:	00030067          	jr	t1 # 28 <.LVL33+0xa>

00000030 <.L17>:
  30:	85aa                	mv	a1,a0
  32:	00040513          	mv	a0,s0

00000036 <.LVL35>:
  36:	4422                	lw	s0,8(sp)
  38:	40b2                	lw	ra,12(sp)
  3a:	0141                	addi	sp,sp,16
  3c:	00000317          	auipc	t1,0x0
  40:	00030067          	jr	t1 # 3c <.LVL35+0x6>

Disassembly of section .text.mm_timer_schedule:

00000000 <mm_timer_schedule>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	000004b7          	lui	s1,0x0
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	cc22                	sw	s0,24(sp)
  14:	89a6                	mv	s3,s1

00000016 <.LBB116>:
  16:	44b00937          	lui	s2,0x44b00

0000001a <.LBE116>:
  1a:	00000a37          	lui	s4,0x0
  1e:	00000ab7          	lui	s5,0x0

00000022 <.L26>:
  22:	08000537          	lui	a0,0x8000
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.L26+0x4>

0000002e <.LVL39>:
  2e:	0004a403          	lw	s0,0(s1) # 0 <mm_timer_schedule>

00000032 <.LVL40>:
  32:	ec11                	bnez	s0,4e <.L20>
  34:	4462                	lw	s0,24(sp)

00000036 <.LVL41>:
  36:	40f2                	lw	ra,28(sp)
  38:	44d2                	lw	s1,20(sp)

0000003a <.LVL42>:
  3a:	4942                	lw	s2,16(sp)
  3c:	49b2                	lw	s3,12(sp)

0000003e <.LVL43>:
  3e:	4a22                	lw	s4,8(sp)
  40:	4a92                	lw	s5,4(sp)
  42:	4501                	li	a0,0
  44:	6105                	addi	sp,sp,32
  46:	00000317          	auipc	t1,0x0
  4a:	00030067          	jr	t1 # 46 <.LVL43+0x8>

0000004e <.L20>:
  4e:	12092703          	lw	a4,288(s2) # 44b00120 <.LASF339+0x44aff039>

00000052 <.LBB123>:
  52:	445c                	lw	a5,12(s0)
  54:	8f99                	sub	a5,a5,a4
  56:	fce78793          	addi	a5,a5,-50

0000005a <.LBE123>:
  5a:	0207d863          	bgez	a5,8a <.L21>

0000005e <.L25>:
  5e:	00098513          	mv	a0,s3
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.L25+0x4>

0000006a <.LVL46>:
  6a:	405c                	lw	a5,4(s0)
  6c:	eb99                	bnez	a5,82 <.L23>
  6e:	0de00613          	li	a2,222
  72:	000a0593          	mv	a1,s4
  76:	000a8513          	mv	a0,s5
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL46+0x10>

00000082 <.L23>:
  82:	405c                	lw	a5,4(s0)
  84:	4408                	lw	a0,8(s0)
  86:	9782                	jalr	a5
  88:	bf69                	j	22 <.L26>

0000008a <.L21>:
  8a:	8522                	mv	a0,s0
  8c:	00000097          	auipc	ra,0x0
  90:	000080e7          	jalr	ra # 8c <.L21+0x2>

00000094 <.LBB126>:
  94:	12092703          	lw	a4,288(s2)

00000098 <.LBB130>:
  98:	445c                	lw	a5,12(s0)
  9a:	8f99                	sub	a5,a5,a4

0000009c <.LBE126>:
  9c:	fc07c1e3          	bltz	a5,5e <.L25>
  a0:	40f2                	lw	ra,28(sp)
  a2:	4462                	lw	s0,24(sp)

000000a4 <.LVL51>:
  a4:	44d2                	lw	s1,20(sp)
  a6:	4942                	lw	s2,16(sp)
  a8:	49b2                	lw	s3,12(sp)
  aa:	4a22                	lw	s4,8(sp)
  ac:	4a92                	lw	s5,4(sp)
  ae:	6105                	addi	sp,sp,32
  b0:	8082                	ret
