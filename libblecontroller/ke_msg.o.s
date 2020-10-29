
ke_msg.o:     file format elf32-littleriscv


Disassembly of section .text._patch_ble_ke_msg_alloc:

00000000 <_patch_ble_ke_msg_alloc>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	842a                	mv	s0,a0

00000008 <.LVL1>:
   8:	84ae                	mv	s1,a1
   a:	00c70513          	addi	a0,a4,12

0000000e <.LVL2>:
   e:	4581                	li	a1,0

00000010 <.LVL3>:
  10:	ce06                	sw	ra,28(sp)
  12:	c632                	sw	a2,12(sp)
  14:	c436                	sw	a3,8(sp)
  16:	c23a                	sw	a4,4(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL3+0x8>

00000020 <.LVL4>:
  20:	4632                	lw	a2,12(sp)
  22:	4712                	lw	a4,4(sp)
  24:	46a2                	lw	a3,8(sp)
  26:	57fd                	li	a5,-1
  28:	c11c                	sw	a5,0(a0)
  2a:	00951223          	sh	s1,4(a0)
  2e:	00c51323          	sh	a2,6(a0)
  32:	00d51423          	sh	a3,8(a0)
  36:	00e51523          	sh	a4,10(a0)

0000003a <.LBB37>:
  3a:	0531                	addi	a0,a0,12

0000003c <.LBE37>:
  3c:	c008                	sw	a0,0(s0)
  3e:	000007b7          	lui	a5,0x0
  42:	0007a783          	lw	a5,0(a5) # 0 <_patch_ble_ke_msg_alloc>
  46:	863a                	mv	a2,a4
  48:	4581                	li	a1,0
  4a:	9782                	jalr	a5

0000004c <.LVL7>:
  4c:	40f2                	lw	ra,28(sp)
  4e:	4462                	lw	s0,24(sp)

00000050 <.LVL8>:
  50:	44d2                	lw	s1,20(sp)
  52:	4505                	li	a0,1
  54:	6105                	addi	sp,sp,32
  56:	8082                	ret

Disassembly of section .text.ble_ke_msg_alloc:

00000000 <ble_ke_msg_alloc>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_alloc>
   8:	7179                	addi	sp,sp,-48
   a:	d422                	sw	s0,40(sp)
   c:	d226                	sw	s1,36(sp)
   e:	d04a                	sw	s2,32(sp)
  10:	ce4e                	sw	s3,28(sp)
  12:	d606                	sw	ra,44(sp)
  14:	89aa                	mv	s3,a0
  16:	892e                	mv	s2,a1
  18:	84b2                	mv	s1,a2
  1a:	8436                	mv	s0,a3
  1c:	8736                	mv	a4,a3
  1e:	c602                	sw	zero,12(sp)
  20:	86b2                	mv	a3,a2

00000022 <.LVL10>:
  22:	862e                	mv	a2,a1

00000024 <.LVL11>:
  24:	85aa                	mv	a1,a0

00000026 <.LVL12>:
  26:	0068                	addi	a0,sp,12

00000028 <.LVL13>:
  28:	9782                	jalr	a5

0000002a <.LVL14>:
  2a:	c909                	beqz	a0,3c <.L4>

0000002c <.L7>:
  2c:	50b2                	lw	ra,44(sp)
  2e:	5422                	lw	s0,40(sp)
  30:	4532                	lw	a0,12(sp)
  32:	5492                	lw	s1,36(sp)
  34:	5902                	lw	s2,32(sp)
  36:	49f2                	lw	s3,28(sp)
  38:	6145                	addi	sp,sp,48
  3a:	8082                	ret

0000003c <.L4>:
  3c:	4581                	li	a1,0
  3e:	00c40513          	addi	a0,s0,12
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.L4+0x6>

0000004a <.LVL15>:
  4a:	57fd                	li	a5,-1
  4c:	c11c                	sw	a5,0(a0)
  4e:	000007b7          	lui	a5,0x0
  52:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_alloc>
  56:	01351223          	sh	s3,4(a0)
  5a:	01251323          	sh	s2,6(a0)
  5e:	00951423          	sh	s1,8(a0)
  62:	00851523          	sh	s0,10(a0)

00000066 <.LBB39>:
  66:	0531                	addi	a0,a0,12

00000068 <.LBE39>:
  68:	c62a                	sw	a0,12(sp)
  6a:	8622                	mv	a2,s0
  6c:	4581                	li	a1,0
  6e:	9782                	jalr	a5

00000070 <.LVL18>:
  70:	bf75                	j	2c <.L7>

Disassembly of section .text._patch_ble_ke_msg_send:

00000000 <_patch_ble_ke_msg_send>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c422                	sw	s0,8(sp)

00000006 <.LBB45>:
   6:	30002473          	csrr	s0,mstatus

0000000a <.LBB46>:
   a:	300477f3          	csrrci	a5,mstatus,8

0000000e <.LBB47>:
   e:	00000537          	lui	a0,0x0

00000012 <.LVL22>:
  12:	15d1                	addi	a1,a1,-12

00000014 <.LVL23>:
  14:	00050513          	mv	a0,a0
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL23+0x4>

00000020 <.LBE47>:
  20:	30041073          	csrw	mstatus,s0

00000024 <.LBE49>:
  24:	4509                	li	a0,2
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LBE49+0x2>

0000002e <.LVL25>:
  2e:	40b2                	lw	ra,12(sp)
  30:	4422                	lw	s0,8(sp)

00000032 <.LVL26>:
  32:	4505                	li	a0,1
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.ble_ke_msg_send:

00000000 <ble_ke_msg_send>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_send>
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	c226                	sw	s1,4(sp)
  10:	842a                	mv	s0,a0
  12:	85aa                	mv	a1,a0
  14:	4501                	li	a0,0

00000016 <.LVL28>:
  16:	9782                	jalr	a5

00000018 <.LVL29>:
  18:	e915                	bnez	a0,4c <.L10>

0000001a <.LBB59>:
  1a:	300024f3          	csrr	s1,mstatus

0000001e <.LBB65>:
  1e:	300477f3          	csrrci	a5,mstatus,8

00000022 <.LBB66>:
  22:	00000537          	lui	a0,0x0
  26:	ff440593          	addi	a1,s0,-12

0000002a <.LVL33>:
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL33+0x4>

00000036 <.LBE66>:
  36:	30049073          	csrw	mstatus,s1

0000003a <.LBE59>:
  3a:	4422                	lw	s0,8(sp)

0000003c <.LVL35>:
  3c:	40b2                	lw	ra,12(sp)
  3e:	4492                	lw	s1,4(sp)

00000040 <.LBB70>:
  40:	4509                	li	a0,2

00000042 <.LBE70>:
  42:	0141                	addi	sp,sp,16

00000044 <.LBB71>:
  44:	00000317          	auipc	t1,0x0
  48:	00030067          	jr	t1 # 44 <.LBB71>

0000004c <.L10>:
  4c:	40b2                	lw	ra,12(sp)
  4e:	4422                	lw	s0,8(sp)

00000050 <.LVL38>:
  50:	4492                	lw	s1,4(sp)
  52:	0141                	addi	sp,sp,16
  54:	8082                	ret

Disassembly of section .text._patch_ble_ke_msg_get_sent_num:

00000000 <_patch_ble_ke_msg_get_sent_num>:
   0:	1141                	addi	sp,sp,-16
   2:	c226                	sw	s1,4(sp)
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	84aa                	mv	s1,a0

0000000a <.LBB72>:
   a:	30002473          	csrr	s0,mstatus

0000000e <.LBB74>:
   e:	300477f3          	csrrci	a5,mstatus,8

00000012 <.LBE74>:
  12:	00000537          	lui	a0,0x0

00000016 <.LVL43>:
  16:	00050513          	mv	a0,a0
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL43+0x4>

00000022 <.LVL44>:
  22:	00a49023          	sh	a0,0(s1)
  26:	30041073          	csrw	mstatus,s0

0000002a <.LBE72>:
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)

0000002e <.LVL45>:
  2e:	4492                	lw	s1,4(sp)

00000030 <.LVL46>:
  30:	4505                	li	a0,1
  32:	0141                	addi	sp,sp,16
  34:	8082                	ret

Disassembly of section .text.ble_ke_msg_get_sent_num:

00000000 <ble_ke_msg_get_sent_num>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_get_sent_num>
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	cc22                	sw	s0,24(sp)
   e:	00e10513          	addi	a0,sp,14
  12:	9782                	jalr	a5

00000014 <.LVL47>:
  14:	c519                	beqz	a0,22 <.L16>
  16:	00e15503          	lhu	a0,14(sp)

0000001a <.L17>:
  1a:	40f2                	lw	ra,28(sp)
  1c:	4462                	lw	s0,24(sp)
  1e:	6105                	addi	sp,sp,32
  20:	8082                	ret

00000022 <.L16>:
  22:	30002473          	csrr	s0,mstatus

00000026 <.LBB77>:
  26:	300477f3          	csrrci	a5,mstatus,8

0000002a <.LBE77>:
  2a:	00000537          	lui	a0,0x0
  2e:	00050513          	mv	a0,a0
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LBE77+0x8>

0000003a <.LVL50>:
  3a:	30041073          	csrw	mstatus,s0
  3e:	bff1                	j	1a <.L17>

Disassembly of section .text._patch_ble_ke_msg_send_basic:

00000000 <_patch_ble_ke_msg_send_basic>:
   0:	1141                	addi	sp,sp,-16
   2:	852e                	mv	a0,a1

00000004 <.LVL52>:
   4:	85b2                	mv	a1,a2

00000006 <.LVL53>:
   6:	8636                	mv	a2,a3

00000008 <.LVL54>:
   8:	4681                	li	a3,0

0000000a <.LVL55>:
   a:	c606                	sw	ra,12(sp)
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <.LVL55+0x2>

00000014 <.LVL56>:
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL56>

0000001c <.LVL57>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	4505                	li	a0,1
  20:	0141                	addi	sp,sp,16
  22:	8082                	ret

Disassembly of section .text.ble_ke_msg_send_basic:

00000000 <ble_ke_msg_send_basic>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_send_basic>
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c226                	sw	s1,4(sp)
   e:	c04a                	sw	s2,0(sp)
  10:	c606                	sw	ra,12(sp)
  12:	842a                	mv	s0,a0
  14:	84ae                	mv	s1,a1
  16:	8932                	mv	s2,a2
  18:	86b2                	mv	a3,a2
  1a:	862e                	mv	a2,a1

0000001c <.LVL59>:
  1c:	85aa                	mv	a1,a0

0000001e <.LVL60>:
  1e:	4501                	li	a0,0

00000020 <.LVL61>:
  20:	9782                	jalr	a5

00000022 <.LVL62>:
  22:	e115                	bnez	a0,46 <.L21>
  24:	864a                	mv	a2,s2
  26:	85a6                	mv	a1,s1
  28:	8522                	mv	a0,s0
  2a:	4681                	li	a3,0
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.LVL62+0xa>

00000034 <.LVL63>:
  34:	4422                	lw	s0,8(sp)
  36:	40b2                	lw	ra,12(sp)
  38:	4492                	lw	s1,4(sp)
  3a:	4902                	lw	s2,0(sp)
  3c:	0141                	addi	sp,sp,16
  3e:	00000317          	auipc	t1,0x0
  42:	00030067          	jr	t1 # 3e <.LVL63+0xa>

00000046 <.L21>:
  46:	40b2                	lw	ra,12(sp)
  48:	4422                	lw	s0,8(sp)
  4a:	4492                	lw	s1,4(sp)
  4c:	4902                	lw	s2,0(sp)
  4e:	0141                	addi	sp,sp,16
  50:	8082                	ret

Disassembly of section .text.ble_ke_msg_forward:

00000000 <ble_ke_msg_forward>:
   0:	feb51d23          	sh	a1,-6(a0) # fffffffa <.LLST25+0xfffff8af>
   4:	fec51e23          	sh	a2,-4(a0)
   8:	00000317          	auipc	t1,0x0
   c:	00030067          	jr	t1 # 8 <ble_ke_msg_forward+0x8>

Disassembly of section .text.ble_ke_msg_forward_new_id:

00000000 <ble_ke_msg_forward_new_id>:
   0:	feb51c23          	sh	a1,-8(a0)
   4:	fec51d23          	sh	a2,-6(a0)
   8:	fed51e23          	sh	a3,-4(a0)
   c:	00000317          	auipc	t1,0x0
  10:	00030067          	jr	t1 # c <ble_ke_msg_forward_new_id+0xc>

Disassembly of section .text._patch_ble_ke_msg_free:

00000000 <_patch_ble_ke_msg_free>:
   0:	1141                	addi	sp,sp,-16
   2:	852e                	mv	a0,a1

00000004 <.LVL70>:
   4:	c606                	sw	ra,12(sp)
   6:	00000097          	auipc	ra,0x0
   a:	000080e7          	jalr	ra # 6 <.LVL70+0x2>

0000000e <.LVL71>:
   e:	40b2                	lw	ra,12(sp)
  10:	4505                	li	a0,1
  12:	0141                	addi	sp,sp,16
  14:	8082                	ret

Disassembly of section .text.ble_ke_msg_free:

00000000 <ble_ke_msg_free>:
   0:	000007b7          	lui	a5,0x0
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_ke_msg_free>
   8:	1141                	addi	sp,sp,-16
   a:	c422                	sw	s0,8(sp)
   c:	c606                	sw	ra,12(sp)
   e:	842a                	mv	s0,a0
  10:	85aa                	mv	a1,a0
  12:	4501                	li	a0,0

00000014 <.LVL73>:
  14:	9782                	jalr	a5

00000016 <.LVL74>:
  16:	e909                	bnez	a0,28 <.L28>
  18:	8522                	mv	a0,s0
  1a:	4422                	lw	s0,8(sp)

0000001c <.LVL75>:
  1c:	40b2                	lw	ra,12(sp)
  1e:	0141                	addi	sp,sp,16
  20:	00000317          	auipc	t1,0x0
  24:	00030067          	jr	t1 # 20 <.LVL75+0x4>

00000028 <.L28>:
  28:	40b2                	lw	ra,12(sp)
  2a:	4422                	lw	s0,8(sp)

0000002c <.LVL77>:
  2c:	0141                	addi	sp,sp,16
  2e:	8082                	ret

Disassembly of section .text.ble_ke_msg_dest_id_get:

00000000 <ble_ke_msg_dest_id_get>:
   0:	ffa55503          	lhu	a0,-6(a0)

00000004 <.LVL79>:
   4:	8082                	ret

Disassembly of section .text.ble_ke_msg_src_id_get:

00000000 <ble_ke_msg_src_id_get>:
   0:	ffc55503          	lhu	a0,-4(a0)

00000004 <.LVL81>:
   4:	8082                	ret

Disassembly of section .text.ble_ke_msg_in_queue:

00000000 <ble_ke_msg_in_queue>:
   0:	ff452503          	lw	a0,-12(a0)

00000004 <.LVL83>:
   4:	0505                	addi	a0,a0,1
   6:	00a03533          	snez	a0,a0
   a:	8082                	ret
