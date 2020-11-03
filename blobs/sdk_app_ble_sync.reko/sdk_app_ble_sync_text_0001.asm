;;; Segment .text (23000300)

;; lld_evt_elt_insert: 23010988
;;   Called from:
;;     23010A34 (in lld_evt_canceled)
;;     23010C42 (in lld_evt_schedule_next)
;;     230116F8 (in lld_evt_end)
;;     230133F0 (in lld_adv_start)
;;     2301359C (in lld_scan_start)
;;     23013BC6 (in lld_con_start)
;;     23013D76 (in lld_move_to_master)
;;     23014560 (in lld_move_to_slave)
;;     23014708 (in lld_test_mode_tx)
;;     2301487C (in lld_test_mode_rx)
lld_evt_elt_insert proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	s1,00000001
	c.li	s3,0000001E

l2301099C:
	c.mv	a0,s0
	jal	ra,000000002300B8E8
	beq	a0,s1,00000000230109C6

l230109A6:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.mv	a0,s0
	jal	ra,000000002300FA10
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230109C6:
	beq	s2,zero,00000000230109D8

l230109CA:
	lbu	a5,s0,+00000016
	bltu	s3,a5,00000000230109D8

l230109D2:
	c.addi	a5,00000001
	sb	a5,s0,+00000016

l230109D8:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230101AE
	c.bnez	a0,000000002301099C

l230109E2:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002300F9D8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000008
	c.addi16sp	00000020
	jal	zero,000000002300D720

;; lld_evt_canceled: 230109FE
lld_evt_canceled proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002300FABC
	c.beqz	a0,0000000023010A10

l23010A0C:
	jal	ra,000000002300DA32

l23010A10:
	lbu	a5,s0,+00000016
	c.li	a4,0000001E
	bltu	a4,a5,0000000023010A20

l23010A1A:
	c.addi	a5,00000001
	sb	a5,s0,+00000016

l23010A20:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230101AE
	c.beqz	a0,0000000023010A38

l23010A2A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,0000000023010988

l23010A38:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002300F9D8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000008
	c.addi	sp,00000010
	jal	zero,000000002300D720

;; lld_evt_schedule_next: 23010A4E
;;   Called from:
;;     2301741E (in llc_llcp_send)
;;     2301B630 (in llc_hci_acl_data_tx_handler)
lld_evt_schedule_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002300B774
	lbu	a4,s0,+0000007B
	c.li	a5,00000004
	bne	a4,a5,0000000023010C46

l23010A6E:
	lbu	a3,s0,+0000007E
	slli	a5,a3,00000018
	c.srai	a5,00000018
	bge	a5,zero,0000000023010C46

l23010A7C:
	lbu	s2,s0,+00000019
	lui	s1,00008000
	lhu	s3,s0,+00000078
	addi	a5,s1,-00000001
	c.add	s2,a0
	and	s2,s2,a5
	add	a4,s3,s2
	and	a2,a4,a5
	c.lw	s0,8(a4)
	c.sub	a4,a2
	lui	a2,0000030C
	c.and	a4,a5
	addi	a2,a2,-00000500
	bltu	a2,a4,0000000023010C46

l23010AAC:
	c.lw	s0,40(s1)
	sub	s1,s1,s2
	c.and	s1,a5
	bltu	s1,s3,0000000023010C46

l23010AB8:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023010ACC

l23010AC4:
	ori	a3,a3,+00000004
	sb	a3,s0,+0000007E

l23010ACC:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+00000328
	jal	ra,000000002300C342
	c.mv	s4,a0
	c.bnez	a0,0000000023010AF0

l23010ADE:
	c.mv	a0,s0
	jal	ra,000000002300FABC
	c.beqz	a0,0000000023010AEA

l23010AE6:
	jal	ra,000000002300DA32

l23010AEA:
	c.mv	a0,s0
	jal	ra,000000002300BB56

l23010AF0:
	csrrw	zero,mstatus,zero
	bne	s4,zero,0000000023010C46

l23010AF8:
	srl	s1,s1,s3
	lhu	a4,s0,+00000078
	lhu	a0,s0,+00000074
	addi	a5,s1,+00000001
	add	a4,a5,a4
	c.lw	s0,40(a5)
	c.slli	s1,10
	c.srli	s1,00000010
	sub	a1,zero,s1
	c.slli	a1,10
	c.srai	a1,00000010
	c.sub	a5,a4
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,40(a5)
	lhu	a5,s0,+00000060
	c.addi	a5,FFFFFFFF
	c.sub	a5,s1
	sh	a5,s0,+00000060
	jal	ra,000000002300FDD4
	lbu	a5,s0,+0000007E
	lbu	a1,s0,+0000006E
	c.mv	a0,s1
	andi	a5,a5,+0000007F
	sb	a5,s0,+0000007E
	jal	ra,000000002301012A
	lhu	a4,s0,+00000074
	addi	a5,zero,+0000005C
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000000A2
	c.add	a4,a5
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	slli	a3,a5,00000010
	c.srai	a3,00000010
	bge	a3,zero,0000000023010B7C

l23010B70:
	c.slli	a5,11
	c.srli	a5,00000011
	addi	a3,zero,+00000271
	add	a5,a5,a3

l23010B7C:
	c.slli	a0,01
	sub	a0,a5,a0
	c.li	a5,0000000D
	bgeu	a5,a0,0000000023010BE2

l23010B88:
	c.lui	a5,00004000
	bltu	a0,a5,0000000023010B9E

l23010B8E:
	addi	a5,zero,+00000271
	addi	a0,a0,+00000270
	srl	a0,a0,a5
	c.lui	a5,00008000
	c.or	a0,a5

l23010B9E:
	slli	a5,a0,00000010
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	lhu	s4,s0,+00000078
	lui	s1,00008000
	lui	s3,0000030C
	c.sw	s0,84(a0)
	c.addi	s1,FFFFFFFF
	addi	s3,s3,-00000500

l23010BBC:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002300F910
	c.lw	s0,8(a5)
	sub	a5,s2,a5
	c.and	a5,s1
	bltu	s3,a5,0000000023010BE6

l23010BD0:
	lhu	a5,s0,+00000062
	c.mv	a0,s0
	c.addi	a5,00000001
	sh	a5,s0,+00000062
	jal	ra,000000002301015C
	c.j	0000000023010BBC

l23010BE2:
	c.li	a0,0000000E
	c.j	0000000023010B9E

l23010BE6:
	lhu	a1,s0,+00000062
	lhu	a5,s0,+00000060
	lhu	a0,s0,+00000074
	c.add	a5,a1
	c.addi	a5,00000001
	c.slli	a1,10
	sh	a5,s0,+00000060
	c.srai	a1,00000010
	jal	ra,000000002300FDD4
	lhu	a4,s0,+0000005C
	lbu	a5,s0,+0000007E
	lhu	a3,s0,+00000060
	c.addi	a4,FFFFFFFF
	andi	a5,a5,+000000F7
	c.slli	a4,10
	sb	a5,s0,+0000007E
	c.srli	a4,00000010
	bne	a3,a4,0000000023010C2E

l23010C20:
	lbu	a4,s0,+0000006D
	c.beqz	a4,0000000023010C2E

l23010C26:
	ori	a5,a5,+00000008
	sb	a5,s0,+0000007E

l23010C2E:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,0000000023010988

l23010C46:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_scan_create: 23010C58
;;   Called from:
;;     2301347E (in lld_scan_start)
lld_evt_scan_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,000000002300B546
	c.mv	s0,a0
	addi	a0,a0,+00000028
	jal	ra,000000002300FF3E
	c.li	a5,00000001
	sb	a5,s0,+0000007B
	addi	a5,zero,+0000005C
	sh	s1,s0,+00000074
	add	s1,s1,a5
	c.lwsp	a2,00000064
	c.mv	a0,s0
	c.addi	a1,00000001
	sh	a1,s0,+0000005E
	c.li	a1,00000000
	addi	s1,s1,+0000008E
	sh	s1,s0,+00000076
	jal	ra,0000000023012E12
	lui	a5,00023010
	addi	a5,a5,-00000502
	c.sw	s0,28(a5)
	lui	a5,00023011
	addi	a5,a5,-00000602
	c.sw	s0,36(a5)
	lui	a5,00023010
	addi	a5,a5,-0000062A
	c.sw	s0,32(a5)
	c.lui	a5,00001000
	addi	a5,a5,-0000063C
	sh	a5,s0,+00000012
	lui	a5,00023073
	lbu	a5,a5,+000003F5
	c.lui	a4,00006000
	addi	a4,a4,+00000050
	c.andi	a5,0000000F
	c.or	a5,a4
	sh	a5,s0,+00000010
	addi	a5,zero,+00000200
	sb	zero,s0,+00000017
	sh	a5,s0,+00000018
	jal	ra,000000002300B774
	c.sw	s0,8(a0)
	c.lwsp	t3,00000020
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_move_to_master: 23010CFC
;;   Called from:
;;     23013C3C (in lld_move_to_master)
lld_evt_move_to_master proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s3,00000094
	c.mv	s0,a0
	c.swsp	a3,00000084
	c.mv	s6,a1
	lw	s3,a0,+00000004
	jal	ra,000000002300B576
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	lui	s8,00028008
	add	a5,a5,a4
	addi	a4,s8,+000000CC
	lhu	s4,s3,+00000078
	lw	s1,s3,+00000008
	c.mv	s5,a0
	c.mv	a0,s0
	addi	s8,s8,+000003D2
	c.add	a5,a4
	lhu	s7,a5,+00000000
	sw	zero,s0,+00000004
	jal	ra,00000000230135DA
	jal	ra,000000002300B774
	c.lwsp	a2,000000A4
	c.li	a5,0000000E
	and	s1,s1,s4
	c.slli	s7,01
	c.slli	s7,10
	lui	a2,00004000
	srli	s7,s7,00000010
	add	a3,a3,a5
	lhu	a5,s0,+0000002C
	slli	s2,s1,00000010
	srli	s2,s2,00000010
	c.add	a3,s8
	lhu	a4,a3,+00000000
	c.srli	a4,00000008
	c.slli	a4,03
	c.add	a5,a4
	addi	a5,a5,+0000048E
	addi	a4,zero,+00000271
	srl	a5,a5,a4
	c.lw	s0,40(a4)
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	lui	a4,00008000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sub	s1,a5,s1
	c.and	s1,a4
	and	s1,s1,s4
	add	s0,s4,a5
	c.sub	s0,s1
	c.and	s0,a4
	sub	a3,s0,a5
	c.and	a3,a4
	bgeu	a2,a3,0000000023010DC4

l23010DBC:
	c.sub	a5,s0
	c.and	a5,a4
	sub	a3,zero,a5

l23010DC4:
	bge	a3,s7,0000000023010DCE

l23010DC8:
	c.add	s0,s4
	c.slli	s0,05
	c.srli	s0,00000005

l23010DCE:
	lui	a5,00008000
	sub	s1,a0,s0
	c.addi	a5,FFFFFFFF
	c.and	s1,a5
	lui	a4,00004000
	bgeu	a4,s1,0000000023010DEC

l23010DE2:
	sub	a0,s0,a0
	c.and	a0,a5
	c.bnez	a0,0000000023010E16

l23010DEA:
	c.li	s1,00000000

l23010DEC:
	xor	s1,s1,s4
	c.mv	a0,s6
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	add	s4,s1,s4
	slli	a1,s1,00000010
	c.srai	a1,00000010
	jal	ra,000000002300FDD4
	lhu	a5,s3,+00000060
	c.add	s1,a5
	sh	s1,s3,+00000060
	c.add	s0,s4
	c.slli	s0,05
	c.srli	s0,00000005

l23010E16:
	lhu	a5,s3,+00000078
	sw	s0,s3,+00000008
	addi	a4,zero,+00000271
	sh	a5,s5,+00000004
	lhu	a5,s3,+00000012
	c.mv	a0,s5
	srl	a5,a5,a4
	addi	a4,zero,+0000005C
	sh	a5,s5,+00000008
	lhu	a5,s3,+00000074
	sh	s2,s5,+00000006
	sh	zero,s5,+0000000C
	sh	a5,s5,+0000000A
	lhu	a5,s3,+00000074
	add	a5,a5,a4
	addi	a5,a5,+0000008E
	sh	a5,s5,+0000000E
	jal	ra,000000002300B59E
	c.mv	a0,s3
	sw	s5,s3,+00000050
	c.li	a1,00000002
	jal	ra,0000000023012E12
	lbu	a5,s3,+0000007E
	c.mv	a0,s3
	ori	a5,a5,+00000002
	sb	a5,s3,+0000007E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

;; lld_evt_update_create: 23010E8E
;;   Called from:
;;     23013DCA (in lld_con_update_req)
lld_evt_update_create proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	c.mv	s2,a0
	addi	a0,zero,+00000058
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	ra,000000AC
	c.mv	s4,a1
	c.mv	s7,a2
	c.mv	s6,a3
	c.mv	s3,a4
	c.mv	s5,a5
	c.mv	s1,a6
	jal	ra,000000002300B546
	c.mv	s0,a0
	beq	a0,zero,0000000023010FE0

l23010EBE:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	a2,zero,+0000002C
	c.mv	a1,s2
	c.jalr	a5
	addi	a0,s0,+00000028
	jal	ra,000000002300FF3E
	c.li	a5,00000003
	c.addi	s3,00000001
	sh	s3,s0,+0000005E
	sb	a5,s0,+0000007B
	lhu	a5,s2,+00000074
	addi	a4,zero,+0000005C
	c.addi4spn	a1,0000000C
	sh	a5,sp,+00000028
	add	a5,a5,a4
	c.addi4spn	a0,00000018
	sh	s7,sp,+00000018
	sh	s6,sp,+0000001A
	sh	s4,sp,+00000020
	c.swsp	s4,0000008C
	sb	s5,sp,+00000022
	sb	zero,sp,+00000026
	sh	zero,sp,+0000002A
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000002E
	jal	ra,000000002300BCCA
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sh	zero,sp,+00000024
	sb	zero,sp,+0000002C
	jal	ra,000000002300B5EC
	c.bnez	a0,0000000023010F86

l23010F2E:
	lhu	a5,sp,+0000000C
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	sh	a5,s0,+00000078
	jal	ra,0000000023012B7C
	lhu	a3,s2,+0000005E
	c.li	a5,00000006
	lhu	a2,s2,+00000060
	add	a3,a3,a5
	c.lw	s0,8(a0)
	slli	a5,a3,00000010
	lhu	a3,s2,+00000078
	c.srli	a5,00000010
	c.add	a2,a5
	add	a3,a3,a5
	lw	a5,s2,+00000008
	c.slli	a2,10
	c.srli	a2,00000010
	c.add	a3,a5
	lui	a5,00008000
	addi	a1,a5,-00000001
	c.and	a3,a1
	sub	a4,a3,a0
	and	a5,a4,a1
	lui	a4,00004000
	bltu	a4,a5,0000000023010F96

l23010F82:
	c.mv	a4,a5
	c.j	0000000023010FA2

l23010F86:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002300FC74
	lw	a5,zero,+00000008
	c.ebreak

l23010F96:
	sub	a4,a0,a3
	and	a5,a4,a1
	sub	a4,zero,a5

l23010FA2:
	lhu	a1,s0,+00000078
	addi	a5,a1,-00000001
	c.add	a5,a4
	xor	a5,a5,a1
	c.li	a4,00000001
	add	a5,a5,a1
	c.add	a5,a0
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,8(a5)
	sb	a4,s1,+00000004
	sh	a2,s2,+0000005C
	c.lw	s0,8(a5)
	sh	a2,s1,+00000002
	sub	a3,a5,a3
	c.slli	a3,05
	c.srli	a3,00000006
	sh	a3,s1,+00000000
	sw	s0,s2,+00000004
	sb	a4,s2,+0000006D

l23010FE0:
	c.mv	a0,s0
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.addi16sp	00000060
	c.jr	ra

;; lld_evt_move_to_slave: 23010FF8
;;   Called from:
;;     230144B2 (in lld_move_to_slave)
lld_evt_move_to_slave proc
	c.addi16sp	FFFFFF80
	c.swsp	s3,000000B4
	c.mv	s3,a0
	addi	a0,zero,+00000058
	c.swsp	a1,00000084
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s1,a3
	c.mv	s11,a2
	c.swsp	s2,00000038
	c.swsp	s7,000000AC
	jal	ra,000000002300B546
	c.mv	s0,a0
	jal	ra,000000002300B576
	lui	a4,00028008
	lhu	s4,a4,+00000194
	c.lwsp	a2,00000064
	slli	s10,s4,00000010
	lhu	s4,a4,+00000196
	lhu	s9,a4,+00000198
	lhu	a5,a4,+00000154
	lhu	s6,a1,+00000014
	lbu	s8,a1,+00000021
	c.srli	a5,00000008
	lbu	s5,a1,+00000013
	sb	a5,s3,+00000011
	beq	s0,zero,0000000023011312

l2301105A:
	addi	s7,s0,+00000028
	c.mv	s2,a0
	c.mv	a0,s7
	jal	ra,000000002300FF3E
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,000000002300FC74
	sh	s1,s0,+00000074
	lhu	a5,s3,+00000000
	srli	s8,s8,00000005
	addi	a4,zero,+000004E2
	c.slli	a5,01
	sh	a5,s0,+00000078
	lhu	a5,s3,+00000002
	sb	s8,s0,+0000006E
	sb	zero,s0,+00000071
	c.addi	a5,00000001
	sh	a5,s0,+0000005E
	c.li	a5,00000004
	sb	a5,s0,+0000007B
	c.li	a5,00000002
	sh	a5,s0,+00000064
	lbu	a5,s11,+00000019
	c.slli	s4,10
	c.slli	s9,10
	sh	a4,s0,+00000012
	sb	a5,s0,+00000019
	slli	a4,s6,00000001
	srli	s10,s10,00000010
	srli	s4,s4,00000010
	srli	s9,s9,00000010
	bltu	a5,a4,00000000230110E2

l230110C8:
	lhu	s3,s3,+00000000
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002300FDD4
	c.add	s6,s3
	c.slli	s6,10
	c.li	a5,00000001
	srli	s6,s6,00000010
	sh	a5,s0,+00000060

l230110E2:
	addi	s3,s5,+00000002
	c.slli	s6,01
	c.add	s6,s3
	c.slli	s6,10
	srli	s6,s6,00000010
	c.mv	a1,s8
	c.mv	a0,s6
	jal	ra,000000002301012A
	addi	a5,zero,+000004E2
	add	s5,s5,a5
	c.sw	s0,88(a0)
	c.li	a1,00000001
	c.mv	a0,s7
	andi	s9,s9,+000003FF
	c.slli	s4,10
	or	s4,s4,s10
	addi	s5,s5,-00000021
	sw	s5,s0,+00000054
	jal	ra,000000002300F870
	addi	a5,zero,+000003A8
	sub	a5,a5,s9
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+00000270
	bgeu	a4,a5,000000002301113E

l23011130:
	addi	a5,zero,+00000137
	sub	a5,a5,s9
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	s4,00000001

l2301113E:
	lhu	a4,s0,+00000074
	addi	s5,zero,+0000005C
	sh	a5,s0,+0000002C
	add	a4,a4,s5
	c.lui	a5,00006000
	sw	s4,s0,+00000028
	sh	a5,s0,+00000010
	c.li	a1,00000002
	c.mv	a0,s0
	c.li	s4,00000001
	addi	a4,a4,+0000008E
	sh	a4,s0,+00000076
	lui	a4,00023010
	addi	a4,a4,-00000502
	c.sw	s0,28(a4)
	lui	a4,00023011
	addi	a4,a4,-00000602
	c.sw	s0,36(a4)
	lui	a4,00023010
	addi	a4,a4,-0000062A
	c.sw	s0,32(a4)
	jal	ra,0000000023012E12
	lhu	a5,s0,+00000078
	lbu	a4,s0,+0000007E
	c.addi4spn	a1,0000001C
	sh	a5,sp,+00000028
	sh	a5,sp,+0000002A
	c.li	a5,00000002
	c.swsp	a5,00000094
	sh	a5,sp,+00000030
	lhu	a5,s0,+00000074
	ori	a4,a4,+00000002
	sb	a4,s0,+0000007E
	sh	a5,sp,+00000038
	add	a5,a5,s5
	c.addi4spn	a0,00000028
	sh	zero,sp,+0000001C
	c.swsp	zero,00000010
	sh	zero,sp,+00000024
	sb	zero,sp,+00000032
	sb	s4,sp,+00000036
	sh	s4,sp,+0000003A
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000003E
	jal	ra,000000002300BCCA
	c.lw	s0,8(a5)
	lhu	a4,s0,+00000078
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000028
	and	a5,a5,a4
	sh	a5,sp,+00000034
	c.andi	a5,00000001
	sb	a5,sp,+0000003C
	jal	ra,000000002300B5EC
	c.beqz	a0,0000000023011296

l230111F8:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000028
	sb	zero,sp,+00000036
	jal	ra,000000002300B5EC
	c.bnez	a0,0000000023011296

l23011206:
	slli	a1,s1,00000008
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a3,zero,+00000022
	c.li	a2,00000002
	addi	a0,zero,+00000109
	jal	ra,000000002300DB74
	sb	s4,a0,+00000000
	lhu	a1,sp,+0000001C
	c.mv	s1,a0
	srli	a5,a1,00000001
	sh	a5,a0,+00000002
	sh	a5,a0,+00000004
	sh	a5,a0,+0000000E
	sh	a5,a0,+00000010
	lhu	a5,s0,+0000005E
	sb	zero,a0,+00000012
	c.addi	a5,FFFFFFFF
	sh	a5,a0,+00000006
	c.lui	a5,00001000
	addi	a5,a5,-00000448
	sh	a5,a0,+00000008
	lhu	a5,s0,+00000060
	sh	a5,a0,+00000014
	sh	a5,a0,+0000000A
	lhu	a5,s0,+00000060
	sh	a5,a0,+0000000C
	c.lw	s0,8(a2)
	lhu	a0,sp,+00000024
	jal	ra,0000000023012B6A
	c.li	a5,FFFFFFFF
	c.srli	a0,00000001
	sh	a0,s1,+00000016
	sh	a5,s1,+00000018
	sh	a5,s1,+0000001A
	sh	a5,s1,+0000001C
	sh	a5,s1,+0000001E
	sh	a5,s1,+00000020
	c.mv	a0,s1
	jal	ra,000000002300DBE2

l23011296:
	lhu	a4,s0,+00000078
	c.lw	s0,8(a5)
	c.mv	a0,s2
	and	a5,a5,a4
	addi	a4,zero,+0000005C
	sh	a5,s2,+00000006
	lhu	a5,s0,+00000078
	sh	a5,s2,+00000004
	c.li	a5,00000002
	sh	a5,s2,+00000008
	lhu	a5,s0,+00000074
	sh	a5,s2,+0000000A
	c.li	a5,00000001
	sh	a5,s2,+0000000C
	lhu	a5,s0,+00000074
	add	a5,a5,a4
	addi	a5,a5,+0000008E
	sh	a5,s2,+0000000E
	jal	ra,000000002300B59E
	c.mv	a1,s6
	sw	s2,s0,+00000050
	c.mv	a0,s0
	jal	ra,000000002300F910
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000001
	sb	a5,s0,+0000007E

l230112F2:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.addi16sp	00000080
	c.jr	ra

l23011312:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s11
	jal	ra,000000002300FC74
	c.j	00000000230112F2

;; lld_evt_slave_update: 2301131E
;;   Called from:
;;     230145D6 (in lld_con_update_ind)
lld_evt_slave_update proc
	lhu	a4,a1,+00000060
	lhu	a5,a0,+0000000A
	bne	a4,a5,00000000230113A0

l2301132A:
	lhu	a4,a1,+00000074
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	a4,02
	c.add	a5,a4
	lhu	a4,a0,+00000004
	lhu	a3,a1,+00000078
	c.lw	a5,0(a5)
	c.slli	a4,01
	bne	a3,a4,0000000023011364

l2301134A:
	lhu	a4,a0,+00000006
	lhu	a3,a1,+0000005E
	c.addi	a4,00000001
	bne	a3,a4,0000000023011364

l23011358:
	lhu	a3,a5,+00000054
	lhu	a4,a5,+00000056
	beq	a3,a4,0000000023011370

l23011364:
	lhu	a4,a5,+0000005C
	ori	a4,a4,+00000080
	sh	a4,a5,+0000005C

l23011370:
	lhu	a5,a0,+00000004
	c.slli	a5,01
	sh	a5,a1,+00000078
	lhu	a5,a0,+00000006
	c.addi	a5,00000001
	sh	a5,a1,+0000005E
	lhu	a5,a0,+0000000A
	sh	a5,a1,+0000005C
	c.li	a5,00000001
	sb	a5,a1,+0000006D
	lbu	a5,a1,+0000007E
	ori	a5,a5,+00000009
	sb	a5,a1,+0000007E
	c.jr	ra

l230113A0:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002300B546
	c.mv	s2,a0
	c.beqz	a0,0000000023011490

l230113BA:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	a2,zero,+0000002C
	c.mv	a1,s0
	c.jalr	a5
	addi	a0,s2,+00000028
	jal	ra,000000002300FF3E
	lhu	a5,s0,+00000074
	sh	a5,s2,+00000074
	lhu	a5,s1,+00000004
	c.slli	a5,01
	sh	a5,s2,+00000078
	lhu	a5,s1,+00000006
	c.addi	a5,00000001
	sh	a5,s2,+0000005E
	c.li	a5,00000004
	sb	a5,s2,+0000007B
	lbu	a1,s0,+0000006E
	sb	a1,s2,+0000006E
	lhu	a5,s0,+00000064
	sh	a5,s2,+00000064
	lbu	a5,s2,+0000007E
	ori	a5,a5,+00000001
	sb	a5,s2,+0000007E
	c.li	a5,FFFFFFFF
	sh	a5,s2,+00000012
	lbu	a5,s1,+00000001
	lhu	a0,s1,+00000002
	c.add	a0,a5
	lhu	a5,s0,+00000078
	c.slli	a0,01
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,000000002301012A
	sw	a0,s2,+00000058
	lbu	a5,s1,+00000001
	addi	a4,zero,+000004E2
	add	a5,a5,a4
	addi	a5,a5,-00000021
	sw	a5,s2,+00000054
	sw	s2,s0,+00000004
	lhu	a5,s1,+0000000A
	lbu	a4,s0,+0000007E
	lhu	a3,s0,+00000060
	sh	a5,s0,+0000005C
	c.li	a5,00000001
	sb	a5,s0,+0000006D
	lhu	a5,s1,+00000002
	sh	a5,s0,+00000066
	lbu	a5,s1,+00000001
	sb	a5,s0,+0000006C
	ori	a5,a4,+00000001
	sb	a5,s0,+0000007E
	lhu	a5,s1,+0000000A
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	bne	a3,a5,0000000023011490

l23011488:
	ori	a4,a4,+00000009
	sb	a4,s0,+0000007E

l23011490:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; lld_evt_adv_create: 2301149C
;;   Called from:
;;     230132BA (in lld_adv_start)
;;     230145FC (in lld_test_mode_tx)
;;     2301474E (in lld_test_mode_rx)
lld_evt_adv_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,zero,+00000058
	c.swsp	a3,00000004
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	s0,0000000C
	jal	ra,000000002300B546
	c.mv	s0,a0
	addi	a0,a0,+00000028
	jal	ra,000000002300FF3E
	c.lui	a5,00001000
	addi	a5,a5,-0000063C
	sh	a5,s0,+00000012
	addi	a5,zero,+0000005C
	sh	s1,s0,+00000074
	add	s1,s1,a5
	c.lwsp	a2,00000084
	sh	zero,s0,+0000007A
	c.li	a1,00000005
	sh	a2,s0,+00000078
	c.mv	a0,s0
	addi	s1,s1,+0000008E
	sh	s1,s0,+00000076
	jal	ra,0000000023012E12
	addi	a5,zero,+00000200
	sh	a5,s0,+00000018
	lui	a5,00023010
	addi	a5,a5,-00000502
	c.sw	s0,28(a5)
	lui	a5,00023011
	addi	a5,a5,-00000602
	c.sw	s0,36(a5)
	lui	a5,00023010
	addi	a5,a5,-0000062A
	c.lwsp	s0,000000A4
	c.sw	s0,32(a5)
	c.lui	a5,00006000
	sb	zero,s0,+00000017
	sh	a5,s0,+00000010
	c.bnez	a3,000000002301152C

l23011520:
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000020
	sb	a5,s0,+0000007E

l2301152C:
	jal	ra,000000002300B774
	c.sw	s0,8(a0)
	c.lwsp	t3,00000020
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_end: 2301153E
;;   Called from:
;;     230117F8 (in lld_evt_end_isr)
lld_evt_end proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a0,+00000074
	addi	a4,zero,+0000005C
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a3,a4,+000000E2
	addi	a1,a4,+000000E4
	addi	a4,a4,+000000E6
	c.add	a3,a5
	c.add	a1,a5
	c.add	a5,a4
	lhu	a2,a3,+00000000
	lhu	s1,a1,+00000000
	lhu	s3,a3,+00000000
	lhu	a5,a5,+00000000
	c.srli	s1,00000008
	c.srli	a2,00000008
	c.srli	a5,00000007
	c.add	s1,a2
	c.slli	s3,10
	c.andi	a5,00000001
	andi	s1,s1,+000000FF
	srli	s3,s3,00000010
	c.beqz	a5,0000000023011598

l23011594:
	beq	s1,zero,0000000023011700

l23011598:
	lbu	a5,s0,+0000007E
	andi	a4,a5,+00000010
	c.beqz	a4,00000000230115D4

l230115A2:
	c.li	s2,00000001

l230115A4:
	lbu	a1,s0,+0000007A
	bltu	s1,a1,0000000023011648

l230115AC:
	sub	a1,s1,a1
	andi	a1,a1,+000000FF
	addi	a0,s0,+00000028
	jal	ra,00000000230126EC
	lbu	a4,s0,+0000007B
	c.li	a5,00000002
	bne	a4,a5,000000002301165E

l230115C6:
	andi	a2,s1,+00000001
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002300F9D8
	c.j	00000000230116A8

l230115D4:
	andi	a4,a5,+00000040
	c.beqz	a4,000000002301162C

l230115DA:
	andi	a5,a5,-00000041
	sb	a5,s0,+0000007E
	lbu	a4,s0,+0000007B
	c.li	a5,00000001
	c.bnez	s1,00000000230115F2

l230115EA:
	lbu	a5,s0,+0000007B
	c.beqz	a5,0000000023011638

l230115F0:
	c.li	a4,00000001

l230115F2:
	bne	a5,a4,00000000230115A2

l230115F6:
	jal	ra,000000002300FA84
	lui	a5,00023073
	lbu	a5,a5,+000003F5
	c.lui	a4,FFFFA000
	addi	a4,a4,+00000050
	c.andi	a5,0000000F
	c.or	a5,a4
	sh	a5,s0,+00000010
	c.lw	s0,92(a5)
	c.sw	s0,8(a0)
	c.mv	a0,s0
	c.sw	s0,12(a5)
	jal	ra,000000002300B8E8
	c.bnez	a0,00000000230115A2

l2301161E:
	c.mv	a0,s0
	jal	ra,000000002300FA10
	c.li	s2,00000000
	c.bnez	s1,00000000230115A4

l23011628:
	c.li	a4,00000000
	c.j	00000000230116D0

l2301162C:
	lbu	a5,s0,+0000007D
	sb	a5,s0,+00000016
	c.bnez	s1,00000000230115A2

l23011636:
	c.j	00000000230115EA

l23011638:
	lui	a5,0004201A
	lw	a5,a5,+0000036C
	lbu	a5,a5,+00000021
	c.bnez	a5,00000000230115A2

l23011646:
	c.j	00000000230115F6

l23011648:
	lui	a1,00023074
	lui	a0,00023074
	addi	a1,a1,-00000304
	addi	a0,a0,-000002F8
	jal	ra,0000000023003AC6

l2301165C:
	c.j	000000002301165C

l2301165E:
	lbu	a2,s0,+0000007A
	bltu	s1,a2,00000000230116FC

l23011666:
	sub	a2,s1,a2
	andi	a2,a2,+000000FF

l2301166E:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002300F9D8
	lui	a5,0004201A
	lbu	a5,a5,+0000031C
	c.addi	s1,FFFFFFFF
	c.li	a4,0000000E
	c.add	a5,s1
	c.li	s1,00000008
	or	a5,a5,s1
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000003D2
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.srli	a5,00000004
	c.andi	a5,00000001
	sb	a5,s0,+0000006F

l230116A8:
	lbu	a5,s0,+0000007B
	c.li	a4,00000001
	bne	a5,a4,00000000230116C4

l230116B2:
	lbu	a4,s0,+00000060
	c.beqz	a4,00000000230116C4

l230116B8:
	andi	s3,s3,+000000FF
	beq	s3,zero,00000000230116C4

l230116C0:
	sb	a5,s0,+00000061

l230116C4:
	sb	zero,s0,+0000007A
	c.li	a0,00000008
	jal	ra,000000002300D720
	c.li	a4,00000001

l230116D0:
	lbu	a5,s0,+0000007E
	andi	a3,a5,+00000030
	c.bnez	a3,0000000023011704

l230116DA:
	beq	s2,zero,0000000023011704

l230116DE:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230101AE
	c.beqz	a0,0000000023011720

l230116E8:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023010988

l230116FC:
	c.li	a2,00000000
	c.j	000000002301166E

l23011700:
	c.li	s2,00000001
	c.j	0000000023011628

l23011704:
	c.andi	a5,00000010
	c.beqz	a5,0000000023011720

l23011708:
	c.bnez	a4,0000000023011720

l2301170A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a2,00000001
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,000000002300FC74

l23011720:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_rx: 2301172E
;;   Called from:
;;     23011814 (in lld_evt_rx_isr)
lld_evt_rx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lhu	a5,a0,+00000074
	addi	a4,zero,+0000005C
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+00000092
	addi	a0,a0,+00000028
	c.add	a5,a4
	lhu	a2,a5,+00000000
	c.srli	a2,0000000C
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,00000000230126EC
	lbu	a5,s0,+0000007A
	c.lwsp	a2,00000084
	c.mv	a0,s0
	c.li	a1,00000000
	c.add	a5,a2
	sb	a5,s0,+0000007A
	jal	ra,000000002300F9D8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000008
	c.addi16sp	00000020
	jal	zero,000000002300D720

;; lld_evt_rx_afs: 2301177E
;;   Called from:
;;     23011826 (in lld_evt_afs_isr)
lld_evt_rx_afs proc
	lbu	a5,a0,+0000007A
	bgeu	a5,a1,00000000230117BC

l23011786:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.sub	a1,a5
	c.swsp	s0,00000004
	andi	a1,a1,+000000FF
	c.mv	s0,a0
	addi	a0,a0,+00000028
	c.swsp	ra,00000084
	jal	ra,00000000230126EC
	c.mv	a0,s0
	sb	s1,s0,+0000007A
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002300F9D8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000008
	c.addi	sp,00000010
	jal	zero,000000002300D720

l230117BC:
	c.j	00000000230117BC

;; lld_evt_timer_isr: 230117BE
;;   Called from:
;;     2300B2AE (in rwble_isr)
lld_evt_timer_isr proc
	c.li	a0,00000003
	jal	zero,000000002300D720

;; lld_evt_end_isr: 230117C4
;;   Called from:
;;     2300B220 (in rwble_isr)
;;     2300B282 (in rwble_isr)
lld_evt_end_isr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000328
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002300C252
	c.mv	s0,a0
	jal	ra,000000002300BB56
	c.beqz	s1,00000000230117FC

l230117E2:
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000040
	sb	a5,s0,+0000007E

l230117EE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301153E

l230117FC:
	lhu	a5,s0,+00000010
	c.srli	a5,0000000E
	c.beqz	a5,00000000230117EE

l23011804:
	sh	zero,s0,+00000010
	c.j	00000000230117EE

;; lld_evt_rx_isr: 2301180A
;;   Called from:
;;     2300B290 (in rwble_isr)
lld_evt_rx_isr proc
	lui	a5,0004201A
	lw	a0,a5,+00000328
	c.beqz	a0,0000000023011818

l23011814:
	jal	zero,000000002301172E

l23011818:
	c.jr	ra

;; lld_evt_afs_isr: 2301181A
;;   Called from:
;;     2300B264 (in rwble_isr)
lld_evt_afs_isr proc
	lui	a5,0004201A
	c.mv	a1,a0
	lw	a0,a5,+00000328
	c.beqz	a0,000000002301182A

l23011826:
	jal	zero,000000002301177E

l2301182A:
	c.jr	ra

;; lld_pdu_llcp_con_param_req_unpk: 2301182C
lld_pdu_llcp_con_param_req_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200E
	lw	a5,s3,+0000013C
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000008
	c.slli	a1,10
	sh	a5,s1,+00000008
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000001
	addi	a0,sp,+0000000E
	c.jalr	a5
	lbu	a5,sp,+0000000E
	addi	a1,s0,+00000009
	c.slli	a1,10
	sb	a5,s1,+0000000A
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000B
	c.slli	a1,10
	sh	a5,s1,+0000000C
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000D
	c.slli	a1,10
	sh	a5,s1,+0000000E
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000F
	c.slli	a1,10
	sh	a5,s1,+00000010
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000011
	c.slli	a1,10
	sh	a5,s1,+00000012
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000013
	c.slli	a1,10
	sh	a5,s1,+00000014
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000015
	c.slli	a1,10
	sh	a5,s1,+00000016
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000018
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_con_param_rsp_unpk: 230119B4
lld_pdu_llcp_con_param_rsp_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200E
	lw	a5,s3,+0000013C
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000008
	c.slli	a1,10
	sh	a5,s1,+00000008
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000001
	addi	a0,sp,+0000000E
	c.jalr	a5
	lbu	a5,sp,+0000000E
	addi	a1,s0,+00000009
	c.slli	a1,10
	sb	a5,s1,+0000000A
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000B
	c.slli	a1,10
	sh	a5,s1,+0000000C
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000D
	c.slli	a1,10
	sh	a5,s1,+0000000E
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+0000000F
	c.slli	a1,10
	sh	a5,s1,+00000010
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000011
	c.slli	a1,10
	sh	a5,s1,+00000012
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000013
	c.slli	a1,10
	sh	a5,s1,+00000014
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000015
	c.slli	a1,10
	sh	a5,s1,+00000016
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000018
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_length_req_unpk: 23011B3C
lld_pdu_llcp_length_req_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200E
	lw	a5,s3,+0000013C
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000008
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_llcp_length_rsp_unpk: 23011BD4
lld_pdu_llcp_length_rsp_unpk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004200E
	lw	a5,s3,+0000013C
	c.swsp	s2,00000010
	lui	s2,00028008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a2
	add	a1,a0,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000002
	c.slli	a1,10
	sh	a5,s1,+00000002
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000004
	c.slli	a1,10
	sh	a5,s1,+00000004
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000002
	addi	a0,sp,+0000000E
	c.jalr	a5
	lhu	a5,sp,+0000000E
	addi	a1,s0,+00000006
	c.slli	a1,10
	sh	a5,s1,+00000006
	lw	a5,s3,+0000013C
	c.srli	a1,00000010
	c.add	a1,s2
	addi	a0,sp,+0000000E
	c.li	a2,00000002
	c.jalr	a5
	lhu	a5,sp,+0000000E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sh	a5,s1,+00000008
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; lld_pdu_pack: 23011C6C
;;   Called from:
;;     2301243A (in lld_pdu_tx_prog)
;;     230126E4 (in lld_pdu_adv_pack)
lld_pdu_pack proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s11,00000084
	c.mv	s3,a0
	c.mv	s5,a1
	c.mv	s0,a0
	c.mv	s2,a0
	c.li	s4,00000009
	c.li	s7,0000000A
	addi	s8,zero,+00000048
	addi	s9,zero,+0000004C
	addi	s6,zero,+00000042
	lui	s10,0004200E

l23011CA4:
	lbu	a0,a2,+00000000
	c.beqz	a0,0000000023011D90

l23011CAA:
	addi	a0,a0,-00000030
	andi	a5,a0,+000000FF
	c.li	s1,00000000
	bltu	s4,a5,0000000023011D5C

l23011CB8:
	slli	s1,a0,00000010
	c.addi	a2,00000001
	c.srli	s1,00000010

l23011CC0:
	lbu	a4,a2,+00000000
	addi	a3,a2,+00000001
	addi	a5,a4,-00000030
	andi	a5,a5,+000000FF
	bltu	s4,a5,0000000023011D5C

l23011CD4:
	add	s1,s1,s7
	c.mv	a2,a3
	addi	s1,s1,-00000030
	c.add	s1,a4
	c.slli	s1,10
	c.srli	s1,00000010
	c.j	0000000023011CC0

l23011CE6:
	lbu	a5,s2,+00000000
	addi	a1,s2,+00000001
	addi	a0,s0,+00000001
	sb	a5,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,s1,0000000023011D0E

l23011CFC:
	lw	a5,s10,+0000013C
	addi	a2,s1,-00000001
	c.jalr	a5
	add	a0,s0,s1
	add	a1,s2,s1

l23011D0E:
	c.mv	a2,s11
	c.mv	s0,a0
	c.mv	s2,a1
	c.j	0000000023011CA4

l23011D16:
	addi	a1,s2,+00000001
	c.andi	a1,FFFFFFFE
	lhu	a5,a1,+00000000
	addi	a0,s0,+00000002
	c.addi	a1,00000002
	sb	a5,s0,+00000000
	c.srli	a5,00000008
	sb	a5,s0,+00000001
	c.j	0000000023011D0E

l23011D32:
	addi	a1,s2,+00000003
	c.andi	a1,FFFFFFFC
	c.lw	a1,0(a5)
	addi	a0,s0,+00000004
	c.addi	a1,00000004
	srli	a4,a5,00000008
	sb	a5,s0,+00000000
	sb	a4,s0,+00000001
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+00000002
	sb	a5,s0,+00000003
	c.j	0000000023011D0E

l23011D5C:
	lbu	a5,a2,+00000000
	addi	s11,a2,+00000001
	beq	a5,s8,0000000023011D16

l23011D68:
	beq	a5,s9,0000000023011D32

l23011D6C:
	beq	a5,s6,0000000023011CE6

l23011D70:
	c.li	a0,00000001

l23011D72:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.lwsp	a6,0000004C
	c.lwsp	a2,0000006C
	c.addi16sp	00000040
	c.jr	ra

l23011D90:
	sub	s0,s0,s3
	sb	s0,s5,+00000000
	c.j	0000000023011D72

;; lld_pdu_tx_flush_list: 23011D9A
;;   Called from:
;;     2301266E (in lld_pdu_tx_flush)
;;     23012678 (in lld_pdu_tx_flush)
;;     23012682 (in lld_pdu_tx_flush)
lld_pdu_tx_flush_list proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a0
	c.li	s0,00000000
	c.li	s3,00000013
	c.li	s4,00000017

l23011DB0:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.mv	a0,s2
	jal	ra,000000002300C252
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023011DFE

l23011DC4:
	lhu	a5,a0,+00000004
	addi	a4,a5,-00000006
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	s3,a4,0000000023011DEE

l23011DD4:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002300EB66
	c.beqz	a0,0000000023011DE8

l23011DE2:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF

l23011DE8:
	csrrw	zero,mstatus,zero
	c.j	0000000023011DB0

l23011DEE:
	c.addi	a5,FFFFFFFE
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s4,a5,0000000023011DB0

l23011DF8:
	jal	ra,000000002300DA32
	c.j	0000000023011DB0

l23011DFE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; lld_pdu_cntl_aligned_unpk: 23011E10
lld_pdu_cntl_aligned_unpk proc
	c.mv	a5,a2
	c.beqz	a1,0000000023011E2A

l23011E14:
	lui	a4,0004200E
	lw	t1,a4,+0000013C
	c.mv	a2,a1
	lui	a1,00028008
	c.add	a1,a0
	addi	a0,a5,+00000001
	c.jr	t1

l23011E2A:
	c.jr	ra

;; lld_pdu_check: 23011E2C
;;   Called from:
;;     2300FD3A (in lld_evt_deffered_elt_handler)
lld_pdu_check proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.mv	s1,a0
	c.addi4spn	a0,00000018
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	jal	ra,000000002300C1BE
	lhu	s2,s1,+0000004C
	csrrs	a5,mstatus,zero
	csrrci	a4,mstatus,00000008
	lw	s3,s1,+00000020
	csrrw	zero,mstatus,zero
	lui	s4,00028008
	addi	a5,s1,+00000020
	c.li	s0,00000000
	c.li	s5,0000000A
	addi	s4,s4,+000002CA
	c.swsp	a5,00000084
	addi	s7,s1,+00000010
	c.lui	s8,FFFF8000
	c.li	s9,00000001
	c.li	s10,00000005

l23011E80:
	bne	s3,zero,0000000023011EFA

l23011E84:
	addi	s4,s2,-00000002
	slli	a4,s4,00000010
	c.srli	a4,00000010
	c.li	a5,00000001
	bgeu	a5,a4,0000000023011EB4

l23011E94:
	c.beqz	s0,0000000023011EB4

l23011E96:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lbu	a5,s1,+00000048
	c.sub	a5,s0
	sb	a5,s1,+00000048
	csrrw	zero,mstatus,zero
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002301A3C0

l23011EB4:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s3,0004201A
	addi	a0,s3,+00000340
	jal	ra,000000002300C252
	c.mv	s1,a0
	csrrw	zero,mstatus,zero
	c.slli	s4,10
	c.li	s5,00000000
	srli	s4,s4,00000010
	c.li	s6,00000001

l23011ED8:
	c.bnez	s1,0000000023011F9E

l23011EDA:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s5
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.lwsp	s4,0000013C
	c.lwsp	a6,0000015C
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l23011EFA:
	lhu	a5,s3,+00000004
	add	a5,a5,s5
	c.add	a5,s4
	lhu	a5,a5,+00000000
	c.srli	a5,0000000F
	c.beqz	a5,0000000023011E84

l23011F0C:
	csrrs	s11,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lwsp	a2,00000044
	lw	s3,s3,+00000000
	jal	ra,000000002300C252
	c.lw	s1,16(a5)
	c.mv	s6,a0
	c.beqz	a5,0000000023011F30

l23011F24:
	c.mv	a0,s7
	jal	ra,000000002300C252
	c.beqz	a0,0000000023011F30

l23011F2C:
	jal	ra,000000002300DA32

l23011F30:
	csrrw	zero,mstatus,zero
	lhu	a5,s6,+00000004
	add	a5,a5,s5
	c.add	a5,s4
	lhu	a3,a5,+00000000
	and	a3,a3,s8
	sh	a3,a5,+00000000
	lhu	a5,s6,+00000004
	bltu	s9,a5,0000000023011F88

l23011F52:
	lbu	a5,s1,+00000048
	c.addi	a5,FFFFFFFF
	sb	a5,s1,+00000048
	csrrs	s11,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,24(a5)
	c.bnez	a5,0000000023011F72

l23011F68:
	lbu	a5,s1,+00000056
	c.andi	a5,FFFFFFFB
	sb	a5,s1,+00000056

l23011F72:
	c.mv	a0,s6
	jal	ra,000000002300DA32
	csrrw	zero,mstatus,zero
	lbu	a1,s6,+0000000C
	c.mv	a0,s2
	jal	ra,000000002301A29A
	c.j	0000000023011E80

l23011F88:
	bgeu	s10,a5,0000000023011F96

l23011F8C:
	c.mv	a0,s6
	jal	ra,000000002300EB66
	beq	a0,zero,0000000023011E80

l23011F96:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	0000000023011E80

l23011F9E:
	lhu	a5,s1,+00000006
	bne	a5,s2,0000000023011FFE

l23011FA6:
	lhu	a0,s1,+00000008
	bgeu	s6,s4,0000000023011FF0

l23011FAE:
	lbu	a4,s1,+0000000A
	lbu	a3,s1,+0000000B
	lbu	a2,s1,+0000000C
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002301A3F0

l23011FC2:
	c.mv	a0,s1
	jal	ra,000000002300DA32

l23011FC8:
	csrrs	s7,mstatus,zero
	csrrci	a5,mstatus,00000008
	addi	a0,s3,+00000340
	jal	ra,000000002300C252
	c.mv	s1,a0
	c.bnez	a0,0000000023011FEA

l23011FDC:
	c.lwsp	s8,000000E4
	c.beqz	a5,0000000023011FEA

l23011FE0:
	c.addi4spn	a1,00000018
	addi	a0,s3,+00000340
	jal	ra,000000002300C386

l23011FEA:
	csrrw	zero,mstatus,zero
	c.j	0000000023011ED8

l23011FF0:
	lbu	a1,s1,+00000004
	c.mv	a2,s0
	jal	ra,0000000023014D7A
	c.mv	s5,a0
	c.j	0000000023011FC2

l23011FFE:
	c.mv	a1,s1
	c.addi4spn	a0,00000018
	jal	ra,000000002300C1E6
	c.j	0000000023011FC8

;; lld_pdu_tx_loop: 23012008
;;   Called from:
;;     230133E0 (in lld_adv_start)
;;     2301358C (in lld_scan_start)
;;     23014700 (in lld_test_mode_tx)
lld_pdu_tx_loop proc
	csrrs	a2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a0,12(a5)
	c.li	a1,0000000A
	lhu	a4,a5,+00000004
	c.li	a5,0000000A
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000002CA
	c.add	a4,a5
	c.lw	a0,8(a5)
	lhu	a3,a4,+00000000
	lhu	a5,a5,+00000004
	add	a5,a5,a1
	c.lui	a1,FFFF8000
	c.and	a3,a1
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	csrrw	zero,mstatus,zero
	c.jr	ra

;; lld_pdu_data_tx_push: 2301204E
;;   Called from:
;;     230123B8 (in lld_pdu_tx_prog)
;;     2301253C (in lld_pdu_tx_prog)
lld_pdu_data_tx_push proc
	lbu	a5,a1,+00000004
	c.li	a4,0000000A
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000002CA
	c.add	a4,a5
	sh	zero,a4,+00000000
	c.beqz	a3,0000000023012072

l23012068:
	lbu	a4,a1,+0000000B
	c.addi	a4,00000004
	sb	a4,a1,+0000000B

l23012072:
	lbu	a3,a1,+0000000B
	lbu	a4,a1,+0000000A
	c.slli	a3,08
	c.or	a3,a4
	lui	a4,00028008
	addi	a6,a4,+000002CC
	c.add	a6,a5
	sh	a3,a6,+00000000
	lhu	a6,a1,+00000008
	addi	a3,a4,+000002CE
	c.add	a3,a5
	sh	a6,a3,+00000000
	c.beqz	a2,00000000230120B8

l2301209C:
	lhu	a3,a1,+00000006
	c.lui	a2,00008000
	addi	a4,a4,+000002D2
	c.add	a5,a4
	c.or	a3,a2
	sh	a3,a5,+00000000
	lbu	a5,a0,+00000048
	c.addi	a5,00000001
	sb	a5,a0,+00000048

l230120B8:
	c.lw	a0,32(a5)
	c.bnez	a5,00000000230120C6

l230120BC:
	c.sw	a0,32(a1)

l230120BE:
	c.sw	a0,36(a1)
	sw	zero,a1,+00000000
	c.jr	ra

l230120C6:
	c.lw	a0,36(a5)
	c.li	a2,0000000A
	lhu	a4,a5,+00000004
	c.li	a5,0000000A
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000002CA
	c.add	a4,a5
	lhu	a5,a1,+00000004
	lhu	a3,a4,+00000000
	add	a5,a5,a2
	c.lui	a2,FFFF8000
	c.and	a3,a2
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	c.lw	a0,32(a5)
	c.beqz	a5,00000000230120BC

l23012100:
	c.lw	a0,36(a5)
	c.sw	a5,0(a1)
	c.j	00000000230120BE

;; lld_pdu_data_send: 23012106
;;   Called from:
;;     2301B60C (in llc_hci_acl_data_tx_handler)
lld_pdu_data_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000000
	c.mv	s0,a0
	c.li	a0,00000010
	c.swsp	ra,00000084
	jal	ra,000000002300D942
	c.beqz	a0,000000002301216E

l23012118:
	lhu	a4,s0,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	a1,a0
	c.lw	a5,16(a0)
	c.lw	s0,8(a5)
	addi	a0,a0,+00000030
	c.sw	a1,12(a5)
	lhu	a5,s0,+00000000
	sh	a5,a1,+00000006
	lhu	a5,s0,+00000004
	sh	a5,a1,+00000008
	lbu	a5,s0,+00000002
	sb	a5,a1,+0000000A
	c.li	a5,0000001A
	sh	a5,a1,+00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.li	a0,00000001

l23012166:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301216E:
	c.li	a0,00000000
	c.j	0000000023012166

;; lld_pdu_tx_push: 23012172
;;   Called from:
;;     230133CE (in lld_adv_start)
;;     230133DA (in lld_adv_start)
;;     23013584 (in lld_scan_start)
;;     23013888 (in lld_con_start)
;;     230146F8 (in lld_test_mode_tx)
lld_pdu_tx_push proc
	lhu	a5,a1,+00000004
	c.li	a6,0000000A
	lui	a3,00028008
	add	a5,a5,a6
	c.addi	sp,FFFFFFF0
	addi	a3,a3,+000002CA
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	a2,a0
	addi	a0,a0,+00000030
	c.add	a5,a3
	sh	zero,a5,+00000000
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a2,48(a5)
	c.beqz	a5,00000000230121CE

l230121A2:
	c.lw	a2,52(a5)
	c.li	a2,0000000A
	lhu	a4,a5,+00000004
	lhu	a5,a1,+00000004
	add	a4,a4,a6
	add	a5,a5,a2
	c.add	a4,a3
	lhu	a3,a4,+00000000
	c.lui	a2,FFFF8000
	c.and	a3,a2
	addi	a5,a5,+000002CA
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000

l230121CE:
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_pdu_tx_prog: 230121DE
;;   Called from:
;;     2300FC58 (in lld_evt_schedule)
lld_pdu_tx_prog proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	c.swsp	s7,000000A4
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.lw	a0,24(s0)
	c.mv	s7,a0
	addi	s1,a0,+00000020
	lhu	s5,a0,+0000004C
	c.beqz	s0,000000002301225A

l23012208:
	c.li	a4,0000000A
	add	s2,s5,a4
	lui	a4,00028008
	addi	a4,a4,+000002CA
	c.add	a4,s2
	lhu	a4,a4,+00000000
	c.srli	a4,0000000F
	c.beqz	a4,000000002301225A

l23012220:
	lui	s3,0004201A
	addi	a4,s3,+00000320
	slli	s4,s5,00000002
	c.add	a4,s4
	c.lw	a4,0(a4)
	addi	s3,s3,+00000320
	lbu	a4,a4,+000000A5
	andi	a3,a4,+00000004
	beq	a3,zero,000000002301240A

l23012240:
	andi	s6,a4,+00000020

l23012244:
	lbu	a0,s0,+0000000C
	beq	s6,zero,0000000023012402

l2301224C:
	jal	ra,000000002301947A
	c.andi	a0,00000002

l23012252:
	bne	a0,zero,000000002301240A

l23012256:
	c.lw	s0,0(s0)
	c.bnez	s0,0000000023012244

l2301225A:
	lhu	a2,s7,+0000004C
	c.li	s0,00000001
	bltu	s0,a2,0000000023012280

l23012264:
	lui	a3,0004201A
	slli	a4,s5,00000002
	addi	a3,a3,+00000320
	c.add	a4,a3
	c.lw	a4,0(a4)
	lbu	s0,a4,+000000A5
	c.srli	s0,00000002
	xori	s0,s0,+00000001
	c.andi	s0,00000001

l23012280:
	lw	a4,s7,+00000008
	beq	a4,zero,0000000023012556

l23012288:
	beq	s0,zero,0000000023012556

l2301228C:
	addi	a5,s7,+00000008
	c.swsp	a5,00000004
	c.li	a4,00000001
	bltu	a4,a2,00000000230125FA

l23012298:
	lui	s1,0004201A
	addi	a0,s1,+000001C0
	jal	ra,000000002300C424
	lw	s6,s7,+00000008
	c.swsp	s1,0000000C
	c.mv	s4,a0
	beq	s6,zero,0000000023012604

l230122B0:
	lhu	a2,s7,+0000004C
	lui	a3,0004201A
	addi	a3,a3,+00000320
	c.slli	a2,02
	c.add	a3,a2
	c.lw	a3,0(a3)
	lbu	s1,a3,+000000A5
	lw	a3,s6,+00000000
	sw	a3,s7,+00000008
	c.bnez	a3,00000000230122D4

l230122D0:
	sw	zero,s7,+0000000C

l230122D4:
	andi	a5,s1,+00000001
	c.slli	s1,02
	c.andi	s1,00000004
	c.swsp	a5,00000080
	slli	a5,s1,00000010
	c.srli	a5,00000010
	c.swsp	a5,00000084
	slli	a5,s1,00000003
	c.swsp	a5,00000008
	c.li	s3,00000000

l230122EE:
	lh	s8,s6,+00000008
	c.lwsp	a2,000000E4
	lhu	a1,s7,+00000042
	addi	a2,s8,+0000000A
	c.add	a2,a5
	c.slli	a2,03
	lhu	a3,s7,+00000040
	c.slli	a2,10
	c.srli	a2,00000010
	andi	s9,a1,+000000FF
	bgeu	a3,a2,0000000023012328

l23012310:
	c.lwsp	a6,000000E4
	c.sub	a1,s1
	c.sub	a3,a5
	addi	a3,a3,-00000050
	c.srai	a3,00000003
	andi	a2,a3,+000000FF
	blt	a1,a2,0000000023012518

l23012324:
	andi	s9,a3,+000000FF

l23012328:
	bge	s9,s8,0000000023012330

l2301232C:
	andi	s9,s9,+000000FE

l23012330:
	addi	s2,s8,-00000001
	xor	s2,s2,s9
	c.addi	s2,00000001
	andi	s2,s2,+000000FF
	slli	a5,s2,00000010
	c.srli	a5,00000010
	c.swsp	a5,00000088
	bltu	s4,a5,0000000023012544

l2301234A:
	slli	a5,s9,00000010
	c.srli	a5,00000010
	c.mv	a3,s0
	c.li	s11,00000000
	c.li	s10,00000000
	c.swsp	a5,00000000

l23012358:
	c.lwsp	s8,000000E4
	c.swsp	a3,0000008C
	addi	a0,a5,+000001C0
	jal	ra,000000002300C252
	c.lwsp	t3,000000A4
	c.mv	a1,a0
	beq	a3,zero,0000000023012522

l2301236C:
	lbu	a3,s6,+0000000A
	c.li	a5,00000001
	c.andi	a3,00000003
	beq	a3,a5,000000002301237A

l23012378:
	c.li	a3,00000002

l2301237A:
	sb	a3,a1,+0000000A
	lw	a3,s6,+0000000C
	lhu	s10,a3,+00000006
	lhu	s11,a3,+00000004

l2301238A:
	c.mv	a3,s9
	blt	s9,s8,0000000023012394

l23012390:
	andi	a3,s8,+000000FF

l23012394:
	c.lwsp	zero,000000E4
	sb	a3,a1,+0000000B
	sh	s11,a1,+00000006
	sub	a7,s8,a5
	slli	s8,a7,00000010
	sh	s10,a1,+00000008
	srai	s8,s8,00000010
	c.lwsp	tp,000000A4
	blt	zero,s8,0000000023012538

l230123B4:
	c.li	a2,00000001
	c.mv	a0,s7
	jal	ra,000000002301204E
	c.lwsp	s4,000000E4
	lw	a3,s7,+00000010
	c.add	s3,s2
	sub	s4,s4,a5
	c.slli	s4,10
	andi	s3,s3,+000000FF
	srli	s4,s4,00000010
	bne	a3,zero,00000000230125F0

l230123D6:
	sw	s6,s7,+00000010

l230123DA:
	sw	s6,s7,+00000014
	sw	zero,s6,+00000000
	c.li	a5,0000000A
	bltu	a5,s3,0000000023012556

l230123E8:
	lw	s6,s7,+00000008
	beq	s6,zero,0000000023012604

l230123F0:
	lw	a3,s6,+00000000
	sw	a3,s7,+00000008
	bne	a3,zero,00000000230122EE

l230123FC:
	sw	zero,s7,+0000000C
	c.j	00000000230122EE

l23012402:
	jal	ra,000000002301947A
	c.andi	a0,00000001
	c.j	0000000023012252

l2301240A:
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s7,+00000018
	jal	ra,000000002300C286
	lw	s6,s0,+00000008
	c.li	a3,0000000C
	lbu	a4,s6,+00000000
	add	a3,a4,a3
	lui	a4,00023074
	addi	a4,a4,-00000270
	c.add	a4,a3
	c.lw	a4,4(a2)
	beq	a2,zero,000000002301225A

l23012434:
	addi	a1,sp,+0000002F
	c.mv	a0,s6
	jal	ra,0000000023011C6C
	bne	a0,zero,000000002301225A

l23012442:
	lhu	a4,s0,+00000004
	c.li	a3,0000000A
	c.mv	a1,s6
	add	a4,a4,a3
	lui	a3,00028008
	addi	a2,a3,+000002CE
	c.add	s3,s4
	c.add	a4,a2
	lhu	a0,a4,+00000000
	lui	a4,0004200E
	lw	a4,a4,+0000013C
	lbu	a2,sp,+0000002F
	c.add	a0,a3
	c.jalr	a4
	c.lw	s0,8(a0)
	jal	ra,000000002300DA32
	lw	a4,s3,+00000000
	lbu	a4,a4,+000000A5
	c.andi	a4,00000001
	c.beqz	a4,000000002301248A

l23012480:
	lbu	a4,sp,+0000002F
	c.addi	a4,00000004
	sb	a4,sp,+0000002F

l2301248A:
	lui	a2,00028008
	addi	a4,a2,+000002CC
	c.add	a4,s2
	lhu	a1,a4,+00000000
	lbu	a3,sp,+0000002F
	c.li	a0,0000000A
	andi	a1,a1,+000000FF
	c.slli	a3,08
	c.or	a3,a1
	sh	a3,a4,+00000000
	lhu	a3,a4,+00000000
	c.slli	a3,10
	c.srli	a3,00000010
	c.andi	a3,FFFFFFFC
	ori	a3,a3,+00000003
	sh	a3,a4,+00000000
	lhu	a1,s7,+0000004C
	addi	a4,a2,+000002CA
	add	a1,a1,a0
	add	a2,a1,a4
	sh	zero,a2,+00000000
	lw	a3,s7,+00000020
	c.beqz	a3,0000000023012504

l230124D6:
	lw	a3,s7,+00000024
	c.li	a1,0000000A
	lhu	a3,a3,+00000004
	add	a3,a3,a0
	c.add	a3,a4
	lhu	a4,s0,+00000004
	lhu	a2,a3,+00000000
	add	a4,a4,a1
	c.lui	a1,FFFF8000
	c.and	a2,a1
	addi	a4,a4,+000002CA
	c.or	a4,a2
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a3,+00000000

l23012504:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300C1E6
	lbu	a4,s7,+00000048
	c.addi	a4,00000001
	sb	a4,s7,+00000048
	c.j	000000002301225A

l23012518:
	sub	a6,s9,s1
	andi	s9,a6,+000000FF
	c.j	0000000023012328

l23012522:
	c.li	a5,00000001
	sb	a5,a0,+0000000A
	c.lwsp	zero,000000E4
	add	t1,a5,s10
	slli	s10,t1,00000010
	srli	s10,s10,00000010
	c.j	000000002301238A

l23012538:
	c.li	a2,00000000
	c.mv	a0,s7
	jal	ra,000000002301204E
	c.li	a3,00000000
	c.j	0000000023012358

l23012544:
	lw	a3,s7,+00000008
	c.bnez	a3,000000002301254E

l2301254A:
	sw	s6,s7,+0000000C

l2301254E:
	sw	a3,s6,+00000000
	sw	s6,s7,+00000008

l23012556:
	addi	a4,zero,+0000005C
	add	s5,s5,a4
	lw	a5,s7,+00000020
	lui	a4,00028008
	addi	a2,a4,+0000008E
	c.add	a2,s5
	c.beqz	a5,0000000023012614

l2301256E:
	c.li	a0,0000000A
	addi	a3,a4,+000002CA

l23012574:
	lhu	a4,a5,+00000004
	add	a1,a4,a0
	c.add	a1,a3
	lhu	a1,a1,+00000000
	c.srli	a1,0000000F
	c.bnez	a1,000000002301260C

l23012586:
	c.li	a5,0000000A
	add	a4,a4,a5
	addi	a4,a4,+000002CA
	c.slli	a4,10
	c.srli	a4,00000010

l23012594:
	lui	a5,00023082
	lbu	a3,a5,+000006DD
	lhu	a1,a2,+00000000
	andi	a5,a3,+00000001
	c.andi	a1,0000001F
	c.slli	a5,0A
	c.or	a5,a1
	slli	a1,a3,00000008
	andi	a1,a1,+00000200
	c.slli	a3,06
	andi	a3,a3,+00000100
	c.or	a5,a1
	c.or	a5,a3
	c.lui	a3,0000F000
	c.or	a5,a3
	sh	a5,a2,+00000000

l230125C4:
	lui	a5,00028008
	addi	a5,a5,+000000A4
	c.add	s5,a5
	sh	a4,s5,+00000000
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l230125F0:
	lw	a3,s7,+00000014
	sw	s6,a3,+00000000
	c.j	00000000230123DA

l230125FA:
	addi	a1,s7,+00000008
	c.mv	a0,s1
	jal	ra,000000002300C386

l23012604:
	c.lwsp	s0,00000044
	jal	ra,000000002300C1BE
	c.j	0000000023012556

l2301260C:
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023012574

l23012610:
	c.li	a4,00000000
	c.j	0000000023012594

l23012614:
	lui	a5,00023082
	lbu	a4,a5,+000006DC
	lhu	a3,a2,+00000000
	andi	a5,a4,+00000001
	c.andi	a3,0000001F
	c.slli	a5,0A
	c.or	a5,a3
	slli	a3,a4,00000008
	andi	a3,a3,+00000200
	c.slli	a4,06
	andi	a4,a4,+00000100
	c.or	a5,a3
	c.or	a5,a4
	c.lui	a4,0000F000
	c.or	a5,a4
	sh	a5,a2,+00000000
	c.li	a4,00000000
	c.j	00000000230125C4

;; lld_pdu_tx_flush: 23012648
;;   Called from:
;;     2300FF0E (in lld_evt_init)
;;     23010040 (in lld_evt_elt_delete)
;;     2301B4A4 (in hci_flush_cmd_handler)
lld_pdu_tx_flush proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	addi	s3,a0,+00000018

l23012662:
	c.lw	s1,24(a5)
	c.bnez	a5,00000000230126A6

l23012666:
	csrrw	zero,mstatus,zero
	addi	a0,s1,+00000020
	jal	ra,0000000023011D9A
	c.mv	s0,a0
	addi	a0,s1,+00000008
	jal	ra,0000000023011D9A
	c.add	s0,a0
	addi	a0,s1,+00000010
	jal	ra,0000000023011D9A
	andi	s0,s0,+000000FF
	c.add	a0,s0
	andi	a1,a0,+000000FF
	c.beqz	a1,00000000230126BC

l23012692:
	c.lwsp	s8,00000004
	lhu	a0,s1,+0000004C
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300F59E

l230126A6:
	c.mv	a0,s3
	jal	ra,000000002300C252
	c.mv	s0,a0
	c.lw	a0,8(a0)
	jal	ra,000000002300DA32
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.j	0000000023012662

l230126BC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_pdu_adv_pack: 230126CA
;;   Called from:
;;     2301385E (in lld_con_start)
lld_pdu_adv_pack proc
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00023074
	addi	a5,a5,-000002C4
	c.mv	a4,a1
	c.mv	a1,a2
	c.add	a5,a0
	c.lw	a5,4(a2)
	c.beqz	a2,00000000230126E8

l230126E2:
	c.mv	a0,a4
	jal	zero,0000000023011C6C

l230126E8:
	c.li	a0,00000002
	c.jr	ra

;; lld_pdu_rx_handler: 230126EC
;;   Called from:
;;     230115B8 (in lld_evt_end)
;;     2301175A (in lld_evt_rx)
;;     2301179C (in lld_evt_rx_afs)
lld_pdu_rx_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s6,00000018
	lui	s6,0004201A
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s11,0000008C
	addi	a5,s6,+000001C0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	lbu	s2,a5,+0000015C
	lui	s7,0004201A
	lui	s8,00023074
	c.mv	s3,a0
	c.mv	s4,a1
	addi	s6,s6,+000001C0
	lui	s5,00028008
	addi	s7,s7,+00000320
	lui	s11,0004200E
	addi	s8,s8,-00000270

l23012734:
	c.addi	s4,FFFFFFFF
	andi	s4,s4,+000000FF
	addi	a5,zero,+000000FF
	bne	s4,a5,0000000023012764

l23012742:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	sb	s2,s6,+0000015C
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l23012764:
	lbu	a5,s3,+00000056
	c.andi	a5,00000010
	bne	a5,zero,0000000023012976

l2301276E:
	c.li	a1,00000000
	c.li	a0,00000010
	jal	ra,000000002300D942
	c.li	a5,0000000E
	add	a5,s2,a5
	lui	a4,00028008
	addi	a4,a4,+000003D2
	addi	a2,s5,+000003D4
	c.mv	s0,a0
	c.add	a4,a5
	lhu	a4,a4,+00000000
	sb	s2,a0,+00000004
	slli	a3,a4,00000010
	lhu	a4,s3,+0000004C
	c.srli	a3,00000010
	sh	a4,a0,+00000006
	addi	a4,s5,+000003D0
	c.add	a4,a5
	lhu	a4,a4,+00000000
	c.add	a5,a2
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a0,+00000008
	lhu	a5,a5,+00000000
	sb	zero,a0,+00000005
	c.slli	a5,10
	c.srli	a5,00000010
	srli	a2,a5,0000000F
	sb	a2,a0,+0000000D
	srai	a2,a5,00000008
	andi	a2,a2,+0000003F
	sb	a2,a0,+0000000B
	sb	a5,a0,+0000000C
	lbu	a5,s3,+00000056
	andi	a2,a5,+00000001
	c.beqz	a2,00000000230127F0

l230127E4:
	andi	a4,a4,+00000040
	c.bnez	a4,00000000230127F0

l230127EA:
	c.andi	a5,FFFFFFFE
	sb	a5,s3,+00000056

l230127F0:
	lhu	a5,s0,+00000006
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a4,a5,0000000023012960

l23012800:
	srli	a5,a3,00000008
	sb	a5,s0,+0000000A
	lbu	a5,s3,+00000056
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023012836

l23012812:
	lhu	a4,s0,+00000008
	c.andi	a4,00000001
	c.bnez	a4,0000000023012836

l2301281A:
	c.andi	a5,FFFFFFFD
	sb	a5,s3,+00000056
	lhu	a5,s0,+00000006
	c.slli	a5,02
	c.add	a5,s7
	c.lw	a5,0(a4)
	lhu	a5,a4,+0000005C
	ori	a5,a5,+00000100
	sh	a5,a4,+0000005C

l23012836:
	lhu	a5,s0,+00000008
	andi	a5,a5,+0000013F
	c.bnez	a5,00000000230128E6

l23012840:
	lbu	a5,s0,+0000000A
	c.beqz	a5,00000000230128E6

l23012846:
	lhu	s1,s0,+00000006
	andi	a4,a3,+00000003
	slli	a3,s1,00000002
	c.add	a3,s7
	c.lw	a3,0(a3)
	lbu	a3,a3,+000000A5
	c.andi	a3,00000002
	c.beqz	a3,0000000023012864

l2301285E:
	c.addi	a5,FFFFFFFC
	sb	a5,s0,+0000000A

l23012864:
	c.beqz	a4,00000000230128E6

l23012866:
	c.li	a5,00000002
	bgeu	a5,a4,0000000023012924

l2301286C:
	c.li	a5,00000003
	bne	a4,a5,00000000230128E6

l23012872:
	c.slli	s1,08
	ori	s1,s1,+00000001
	lbu	a6,s0,+0000000A
	c.slli	s1,10
	c.srli	s1,00000010
	c.li	a3,0000001C
	c.mv	a2,s1
	c.mv	a1,s1
	addi	a0,zero,+0000010A
	c.swsp	a6,00000084
	jal	ra,000000002300DB74
	lbu	a5,s0,+00000004
	c.li	a4,0000000E
	addi	s10,a0,+00000002
	add	a5,a5,a4
	addi	a4,s5,+000003D6
	c.mv	s9,a0
	c.li	a2,00000001
	c.mv	a0,s10
	c.add	a5,a4
	lhu	a4,a5,+00000000
	lw	a5,s11,+0000013C
	c.slli	a4,10
	c.srli	a4,00000010
	add	a1,a4,s5
	c.swsp	a4,00000004
	c.jalr	a5
	lbu	a5,s9,+00000002
	c.li	a3,00000015
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000008
	bgeu	a3,a5,00000000230128F6

l230128CC:
	c.li	a5,00000019

l230128CE:
	sb	a5,s9,+00000000

l230128D2:
	lbu	a1,s9,+00000000
	c.li	a3,00000001
	c.mv	a2,s10
	c.mv	a0,s1
	jal	ra,00000000230193C2
	c.mv	a0,s9
	jal	ra,000000002300DBE2

l230128E6:
	lbu	a0,s0,+00000004
	jal	ra,000000002300EB30
	c.li	a5,00000001
	sb	a5,s0,+00000005
	c.j	0000000023012960

l230128F6:
	c.li	a3,0000000C
	add	a5,a5,a3
	c.add	a5,s8
	lbu	a1,a5,+00000000
	beq	a1,a6,000000002301290A

l23012906:
	c.li	a5,0000001E
	c.j	00000000230128CE

l2301290A:
	addi	a0,a4,+00000001
	c.lw	a5,8(a5)
	c.addi	a1,FFFFFFFF
	c.slli	a0,10
	sb	zero,s9,+00000000
	c.mv	a2,s10
	andi	a1,a1,+000000FF
	c.srli	a0,00000010
	c.jalr	a5
	c.j	00000000230128D2

l23012924:
	slli	a2,s1,00000008
	ori	a2,a2,+00000001
	c.slli	a2,10
	c.srli	a2,00000010
	c.li	a3,00000008
	c.mv	a1,a2
	addi	a0,zero,+00000100
	c.swsp	a4,00000004
	jal	ra,000000002300DB74
	lhu	a3,s0,+00000006
	c.lwsp	s0,000000C4
	sh	a3,a0,+00000000
	lbu	a3,s0,+0000000A
	sb	a4,a0,+00000002
	sh	a3,a0,+00000004
	lbu	a4,s0,+00000004
	sb	a4,a0,+00000006
	jal	ra,000000002300DBE2

l23012960:
	lui	a5,0004201A
	c.mv	a1,s0
	addi	a0,a5,+00000340
	jal	ra,000000002300C1E6

l2301296E:
	c.addi	s2,00000001
	andi	s2,s2,+00000007
	c.j	0000000023012734

l23012976:
	c.mv	a0,s2
	jal	ra,000000002300EB30
	c.j	000000002301296E

;; lld_sleep_init: 2301297E
;;   Called from:
;;     230130D0 (in lld_init)
lld_sleep_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFE0
	lui	a0,00042011
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	a2,00000014
	c.li	a1,00000000
	addi	s3,a0,-000000CC
	addi	a0,a0,-000000CC
	c.jalr	a5
	c.lui	s1,00001000
	addi	a0,s1,+00000388
	jal	ra,000000002300C1AE
	c.mv	s2,a0
	addi	a0,s1,+00000388
	jal	ra,000000002300C1AE
	c.mv	s0,a0
	addi	a0,zero,+00000271
	jal	ra,000000002300C1AE
	c.slli	a0,10
	lui	a5,00004000
	addi	a5,a5,-00000400
	c.slli	s2,15
	c.srli	a0,00000010
	c.slli	s0,0A
	c.and	s0,a5
	or	a0,a0,s2
	c.or	a0,s0
	lui	s0,00028000
	c.sw	s0,60(a0)
	addi	a0,s1,+00000388
	jal	ra,000000002300C0EE
	c.lw	s0,48(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.sw	s0,48(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	zero,s3,+00000004
	sh	zero,s3,+00000008
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_sleep_wakeup: 23012A06
;;   Called from:
;;     2300C134 (in rwip_wakeup)
lld_sleep_wakeup proc
	lui	a4,00028000
	c.lw	a4,48(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.sw	a4,48(a5)
	lui	a5,00042011
	addi	a5,a5,-000000CC
	lbu	a3,a5,+00000009
	c.beqz	a3,0000000023012A40

l23012A20:
	c.lw	a5,12(a3)
	sh	zero,a5,+00000008
	c.sw	a4,68(a3)
	c.lw	a5,16(a5)
	c.sw	a4,64(a5)
	c.lw	a4,48(a5)
	ori	a5,a5,+00000008
	c.sw	a4,48(a5)
	lui	a5,00028000
	c.li	a4,00000001
	c.sw	a5,24(a4)
	c.sw	a5,12(a4)
	c.jr	ra

l23012A40:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a4,56(a0)
	lbu	a4,a5,+00000008
	c.beqz	a4,0000000023012AB6

l23012A4C:
	c.lw	a5,4(a4)
	sb	zero,a5,+00000008
	c.sub	a0,a4

l23012A54:
	jal	ra,000000002300C182
	lui	a3,0004201A
	addi	a5,a3,+00000328
	lbu	a5,a5,+0000002A
	addi	a4,zero,+00000271
	addi	a3,a3,+00000328
	c.add	a0,a5
	srl	a4,a0,a4
	addi	a5,zero,+00000271
	add	a5,a4,a5
	sub	a0,a5,a0
	addi	a0,a0,+00000270
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000000
	c.bnez	a0,0000000023012A92

l23012A8A:
	c.addi	a4,00000001
	c.li	a5,00000001
	addi	a0,zero,+00000270

l23012A92:
	sb	a5,a3,+0000002A
	lui	a5,00028000
	c.sw	a5,68(a4)
	c.sw	a5,64(a0)
	c.lw	a5,48(a4)
	ori	a4,a4,+00000008
	c.sw	a5,48(a4)
	lui	a5,00028000
	c.li	a4,00000001
	c.sw	a5,24(a4)
	c.sw	a5,12(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23012AB6:
	c.sw	a5,4(a0)
	c.j	0000000023012A54

;; lld_sleep_wakeup_end: 23012ABA
;;   Called from:
;;     2300C16C (in rwip_wakeup_end)
lld_sleep_wakeup_end proc
	lui	a5,00042011
	lw	a4,a5,-000000CC
	lui	a5,00028000
	c.sw	a5,12(a4)
	c.jr	ra

;; lld_util_instant_get: 23012ACA
;;   Called from:
;;     23017DA4 (in llc_llcp_ch_map_update_pdu_send)
lld_util_instant_get proc
	lhu	a5,a0,+00000036
	c.li	a4,00000006
	sb	a1,a0,+00000045
	add	a5,a5,a4
	lhu	a4,a0,+00000038
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a0,+00000034
	c.mv	a0,a5
	c.jr	ra

;; lld_util_set_bd_address: 23012AEA
;;   Called from:
;;     230149D8 (in llm_util_apply_bd_addr)
lld_util_set_bd_address proc
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	lbu	a3,a0,+00000000
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,a0,+00000001
	c.slli	a5,10
	c.slli	a1,10
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	lui	a4,00028000
	c.sw	a4,36(a5)
	lbu	a5,a0,+00000005
	lbu	a3,a0,+00000004
	c.lw	a4,40(a2)
	c.slli	a5,08
	c.or	a5,a3
	c.lui	a3,FFFF0000
	c.and	a2,a3
	c.or	a5,a2
	c.sw	a4,40(a5)
	c.lw	a4,40(a5)
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	c.or	a3,a1
	c.sw	a4,40(a3)
	c.jr	ra

;; lld_util_freq2chnl: 23012B30
;;   Called from:
;;     230146A2 (in lld_test_mode_tx)
;;     23014852 (in lld_test_mode_rx)
lld_util_freq2chnl proc
	c.li	a5,0000000C
	beq	a0,a5,0000000023012B52

l23012B36:
	addi	a5,zero,+00000027
	beq	a0,a5,0000000023012B5C

l23012B3E:
	c.beqz	a0,0000000023012B58

l23012B40:
	c.li	a5,0000000B
	bltu	a5,a0,0000000023012B4E

l23012B46:
	c.addi	a0,FFFFFFFF

l23012B48:
	andi	a0,a0,+000000FF
	c.jr	ra

l23012B4E:
	c.addi	a0,FFFFFFFE
	c.j	0000000023012B48

l23012B52:
	addi	a0,zero,+00000026
	c.jr	ra

l23012B58:
	addi	a0,zero,+00000025

l23012B5C:
	c.jr	ra

;; lld_util_get_local_offset: 23012B5E
;;   Called from:
;;     23013EBC (in lld_con_update_after_param_req)
;;     23014118 (in lld_con_param_rsp)
lld_util_get_local_offset proc
	and	a2,a2,a1
	c.add	a0,a2
	or	a0,a0,a1
	c.jr	ra

;; lld_util_get_peer_offset: 23012B6A
;;   Called from:
;;     23011270 (in lld_evt_move_to_slave)
;;     23013F2C (in lld_con_update_after_param_req)
;;     2301415C (in lld_con_param_rsp)
;;     23014246 (in lld_con_param_req)
lld_util_get_peer_offset proc
	and	a2,a2,a1
	c.add	a0,a1
	c.sub	a0,a2
	or	a0,a0,a1
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; lld_util_connection_param_set: 23012B7C
;;   Called from:
;;     23010F3A (in lld_evt_update_create)
;;     230134E6 (in lld_scan_start)
;;     23013890 (in lld_con_start)
lld_util_connection_param_set proc
	lhu	a5,a1,+00000000
	lbu	a4,a0,+00000019
	c.lw	a1,4(a3)
	sub	a4,a5,a4
	bgeu	a4,a3,0000000023012B90

l23012B8E:
	c.sw	a1,4(a4)

l23012B90:
	c.lw	a1,4(a4)
	c.bnez	a4,0000000023012B98

l23012B94:
	c.li	a4,00000002
	c.sw	a1,4(a4)

l23012B98:
	c.lw	a1,4(a4)
	addi	a3,zero,+00000271
	add	a4,a4,a3
	lhu	a3,a1,+00000008
	c.sw	a1,4(a4)
	c.lw	a0,8(a4)
	and	a4,a4,a5
	bltu	a3,a4,0000000023012BC2

l23012BB2:
	c.bnez	a4,0000000023012BBC

l23012BB4:
	c.bnez	a3,0000000023012BBC

l23012BB6:
	sh	a5,a1,+00000008
	c.jr	ra

l23012BBC:
	sub	a5,a3,a4
	c.j	0000000023012BB6

l23012BC2:
	c.add	a5,a3
	c.sub	a5,a4
	c.j	0000000023012BB6

;; lld_util_dle_set_cs_fields: 23012BC8
;;   Called from:
;;     2300FC04 (in lld_evt_schedule)
lld_util_dle_set_cs_fields proc
	addi	a5,zero,+0000005C
	add	a5,a0,a5
	lui	a2,00028008
	lui	a4,0004201A
	addi	a1,a2,+000000B0
	addi	a4,a4,+00000320
	c.slli	a0,02
	c.add	a0,a4
	c.lw	a0,0(a4)
	addi	a2,a2,+000000B2
	c.add	a1,a5
	lhu	a3,a1,+00000000
	lbu	a4,a4,+00000048
	c.add	a5,a2
	c.slli	a3,10
	c.srli	a3,00000010
	andi	a3,a3,-00000100
	c.or	a3,a4
	sh	a3,a1,+00000000
	c.lw	a0,0(a4)
	lhu	a4,a4,+00000050
	sh	a4,a5,+00000000
	c.jr	ra

;; lld_util_anchor_point_move: 23012C10
;;   Called from:
;;     2301A222 (in llc_util_bw_mgt)
lld_util_anchor_point_move proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	lbu	a4,a0,+0000007B
	lhu	a5,a0,+00000074
	c.mv	s0,a0
	c.addi	a4,FFFFFFFD
	sltu	a4,zero,a4
	sh	a4,sp,+0000002A
	addi	a4,zero,+0000005C
	sh	a5,sp,+00000028
	add	a5,a5,a4
	addi	a4,zero,+00000271
	c.addi4spn	a1,0000000C
	sh	zero,sp,+00000014
	sb	zero,sp,+00000026
	sb	zero,sp,+0000002C
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000002E
	lhu	a5,a0,+00000078
	sh	a5,sp,+0000000C
	lhu	a5,a0,+00000012
	c.addi4spn	a0,00000018
	addi	a5,a5,+00000270
	xor	a5,a5,a4
	c.swsp	a5,00000008
	jal	ra,000000002300B5EC
	c.bnez	a0,0000000023012D0A

l23012C6E:
	lhu	a1,s0,+00000074
	addi	a3,zero,+00000022
	c.li	a2,00000002
	c.slli	a1,08
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a0,zero,+00000109
	jal	ra,000000002300DB74
	c.li	a4,00000001
	sb	a4,a0,+00000000
	lhu	a3,sp,+0000000C
	srli	a4,a3,00000001
	sh	a4,a0,+00000002
	sh	a4,a0,+00000004
	sh	a4,a0,+0000000E
	sh	a4,a0,+00000010
	lhu	a4,s0,+0000005E
	sb	zero,a0,+00000012
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000006
	c.lui	a4,00001000
	addi	a4,a4,-00000448
	sh	a4,a0,+00000008
	lhu	a4,s0,+00000060
	sh	a4,a0,+00000014
	sh	a4,a0,+0000000A
	lhu	a4,s0,+00000060
	sh	a4,a0,+0000000C
	c.lw	s0,8(a2)
	lhu	a4,sp,+00000014
	and	a2,a2,a3
	c.add	a4,a3
	c.sub	a4,a2
	or	a4,a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.srli	a4,00000001
	sh	a4,a0,+00000016
	c.li	a4,FFFFFFFF
	sh	a4,a0,+00000018
	sh	a4,a0,+0000001A
	sh	a4,a0,+0000001C
	sh	a4,a0,+0000001E
	sh	a4,a0,+00000020
	jal	ra,000000002300DBE2

l23012D0A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; lld_util_flush_list: 23012D12
;;   Called from:
;;     2300FE5C (in lld_evt_init)
;;     2300FE64 (in lld_evt_init)
;;     23015E5C (in llm_set_scan_en)
;;     230160D8 (in llm_init)
;;     230160E4 (in llm_init)
lld_util_flush_list proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l23012D1A:
	c.mv	a0,s0
	jal	ra,000000002300C252
	c.beqz	a0,0000000023012D28

l23012D22:
	jal	ra,000000002300DA32
	c.j	0000000023012D1A

l23012D28:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_util_instant_ongoing: 23012D30
;;   Called from:
;;     23018806 (in llcp_channel_map_ind_handler)
;;     23018974 (in llcp_con_upd_ind_handler)
lld_util_instant_ongoing proc
	lbu	a0,a0,+0000006D
	sltu	a0,zero,a0
	c.jr	ra

;; lld_util_compute_ce_max: 23012D3A
;;   Called from:
;;     23013C8E (in lld_move_to_master)
;;     23013FBE (in lld_con_update_after_param_req)
;;     230144CC (in lld_move_to_slave)
;;     230181BE (in llc_llcp_start_enc_rsp_pdu_send)
;;     230184AC (in llcp_length_rsp_handler)
;;     23019300 (in llcp_length_req_handler)
lld_util_compute_ce_max proc
	lbu	a4,a0,+00000019
	lhu	a5,a0,+00000078
	lhu	a3,a0,+00000074
	lui	a2,00028008
	c.sub	a5,a4
	addi	a4,zero,+0000005C
	add	a3,a3,a4
	addi	a6,a2,+00000092
	lbu	t1,a0,+0000007B
	c.addi	a5,FFFFFFFF
	addi	a7,zero,+00000271
	c.li	a4,00000003
	c.add	a6,a3
	lhu	a6,a6,+00000000
	add	a5,a5,a7
	c.slli	a6,10
	srli	a6,a6,00000010
	bne	t1,a4,0000000023012D86

l23012D78:
	lui	a4,00028000
	c.lw	a4,0(a4)
	c.srli	a4,00000004
	c.andi	a4,0000000F

l23012D82:
	c.srai	a4,00000001
	c.j	0000000023012DA6

l23012D86:
	addi	a2,a2,+000000A2
	c.add	a2,a3
	lhu	a4,a2,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	slli	a2,a4,00000010
	c.srai	a2,00000010
	bge	a2,zero,0000000023012D82

l23012D9E:
	c.slli	a4,11
	c.srli	a4,00000012
	add	a4,a4,a7

l23012DA6:
	andi	a2,a6,+00000200
	c.sub	a5,a4
	addi	a4,a1,+0000015C
	c.beqz	a2,0000000023012DB6

l23012DB2:
	addi	a4,a1,+0000017C

l23012DB6:
	srli	a2,a4,00000001
	srl	a5,a5,a4
	add	a5,a5,a4
	addi	a4,a4,-00000271
	c.sub	a5,a2
	addi	a2,zero,+00000271
	srl	a5,a5,a2
	addi	a2,zero,+00000096
	add	a4,a4,a5
	bge	a2,a4,0000000023012DDE

l23012DDC:
	c.addi	a5,FFFFFFFF

l23012DDE:
	lui	a2,00028008
	addi	a4,a2,+000000A8
	slli	a1,a5,00000010
	c.add	a3,a4
	c.srli	a1,00000010
	sh	a1,a3,+00000000
	lhu	a4,a0,+00000074
	addi	a3,zero,+0000005C
	addi	a2,a2,+000000A6
	add	a4,a4,a3
	c.add	a4,a2
	lhu	a3,a4,+00000000
	bgeu	a5,a3,0000000023012E10

l23012E0C:
	sh	a1,a4,+00000000

l23012E10:
	c.jr	ra

;; lld_util_priority_set: 23012E12
;;   Called from:
;;     23010C9C (in lld_evt_scan_create)
;;     23010E64 (in lld_evt_move_to_master)
;;     23011184 (in lld_evt_move_to_slave)
;;     230114E8 (in lld_evt_adv_create)
;;     230136BA (in lld_con_start)
lld_util_priority_set proc
	lui	a5,00023073
	c.li	a4,00000006
	addi	a5,a5,+000003F4
	bltu	a4,a1,0000000023012E3E

l23012E20:
	lui	a4,00023074
	addi	a4,a4,-00000110
	c.slli	a1,02
	c.add	a1,a4
	c.lw	a1,0(a4)
	c.jr	a4
23012E30 37 A7 01 42 03 27 C7 36 03 47 17 02 01 C7       7..B.'.6.G.... 

l23012E3E:
	lbu	a5,a5,+0000000A
	c.j	0000000023012E48
23012E44             83 C7 C7 00                             ....       

l23012E48:
	sb	a5,a0,+00000016
	sb	a5,a0,+0000007D
	c.jr	ra
23012E52       83 C7 07 00 CD BF 83 C7 67 00 F5 B7 83 C7   ........g.....
23012E60 87 00 DD B7 83 C7 27 00 C5 B7 83 C7 47 00 E9 BF ......'.....G...

;; lld_util_get_tx_pkt_cnt: 23012E70
;;   Called from:
;;     2301791C (in llcp_pause_enc_req_handler)
;;     23017AA2 (in llcp_enc_req_handler)
;;     2301A02C (in llc_check_trafic_paused)
;;     2301AEE8 (in hci_le_start_enc_cmd_handler)
lld_util_get_tx_pkt_cnt proc
	lbu	a0,a0,+00000070
	c.jr	ra

;; lld_util_eff_tx_time_set: 23012E76
;;   Called from:
;;     23013C80 (in lld_move_to_master)
;;     230144BE (in lld_move_to_slave)
;;     230184EE (in llcp_length_rsp_handler)
;;     23019342 (in llcp_length_req_handler)
lld_util_eff_tx_time_set proc
	sh	a1,a0,+00000068
	sh	a2,a0,+0000006A
	c.jr	ra

;; lld_wlcoex_set: 23012E80
;;   Called from:
;;     2301314E (in lld_init)
;;     2301325C (in lld_core_reset)
lld_wlcoex_set proc
	lui	a5,00028000
	c.lw	a5,116(a4)
	lui	a3,000FFE10
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,116(a4)
	lw	a4,a5,+00000100
	c.beqz	a0,0000000023012EA6

l23012E96:
	lui	a3,00000220
	addi	a3,a3,+000000F3
	c.or	a4,a3

l23012EA0:
	sw	a4,a5,+00000100
	c.jr	ra

l23012EA6:
	lui	a3,000FFDE0
	addi	a3,a3,-000000F4
	c.and	a4,a3
	c.j	0000000023012EA0

;; lld_init: 23012EB2
;;   Called from:
;;     2300B116 (in rwble_init)
;;     2300B15C (in rwble_reset)
lld_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.bnez	a0,0000000023012ECC

l23012EBE:
	lui	a1,00023074
	addi	a1,a1,-000000F4
	c.li	a0,00000002
	jal	ra,000000002301725C

l23012ECC:
	lui	a5,00028000
	c.lw	a5,0(a4)
	lui	a3,000FC010
	c.addi	a3,FFFFFFFF
	andi	a4,a4,-000000F1
	ori	a4,a4,+000000E0
	c.sw	a5,0(a4)
	lw	a4,a5,+000000F0
	lui	s0,0004200E
	lui	a0,00023082
	andi	a4,a4,-00000200
	ori	a4,a4,+000000D2
	sw	a4,a5,+000000F0
	lw	a4,a5,+000000F0
	addi	a1,s0,+00000150
	addi	a0,a0,+000006E4
	c.and	a4,a3
	lui	a3,00001B80
	c.or	a4,a3
	sw	a4,a5,+000000F0
	c.lui	a4,00010000
	addi	a4,a4,+0000033A
	c.sw	a5,12(a4)
	c.lw	a5,0(a4)
	lui	a3,000FFE00
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	c.lw	a5,0(a4)
	lui	a3,000FFF00
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	jal	ra,000000002300C476
	bne	a0,zero,0000000023013176

l23012F3A:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.li	a2,00000006
	addi	a1,s0,+00000150

l23012F48:
	c.addi4spn	a0,00000008
	c.jalr	a5
	lui	a0,0004201A
	c.li	a1,00000000
	addi	a0,a0,+0000040B
	jal	ra,000000002300D54C
	lbu	a5,sp,+0000000B
	lbu	a4,sp,+0000000A
	lbu	a3,sp,+00000008
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,sp,+00000009
	c.slli	a5,10
	c.lui	a1,FFFFC000
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	lui	a4,00028000
	c.sw	a4,36(a5)
	lbu	a5,sp,+0000000D
	lbu	a3,sp,+0000000C
	addi	a1,a1,-0000012A
	c.slli	a5,08
	c.or	a5,a3
	c.sw	a4,40(a5)
	c.lw	a4,0(a5)
	c.lui	a2,FFFF9000
	addi	a2,a2,-00000177
	ori	a5,a5,+00000200
	c.sw	a4,0(a5)
	c.li	a5,00000007
	sw	a5,a4,+00000090
	addi	a5,zero,+000001FE
	sw	a5,a4,+000000B0
	addi	a5,zero,+00000216
	sw	a5,a4,+000000B4
	addi	a5,zero,+00000404
	sw	a5,a4,+000000B8
	addi	a5,zero,+0000022E
	sw	a5,a4,+00000120
	c.li	a5,00000003
	sw	a5,a4,+00000124
	lui	a5,00028008
	sh	a1,a5,+0000014C
	c.lui	a3,00005000
	sh	a2,a5,+0000014E
	addi	a3,a3,+00000555
	sh	a3,a5,+00000150
	addi	a0,zero,+00000055
	sh	a0,a5,+00000152
	sh	zero,a5,+00000162
	sh	zero,a5,+00000164
	sh	zero,a5,+00000166
	sh	a1,a5,+000001A8
	sh	a2,a5,+000001AA
	sh	a3,a5,+000001AC
	sh	a0,a5,+000001AE
	sh	zero,a5,+000001BE
	sh	zero,a5,+000001C0
	sh	zero,a5,+000001C2
	sh	zero,a5,+00000168
	sh	zero,a5,+0000016A
	sh	zero,a5,+000001C4
	addi	a3,zero,+000003CE
	sh	zero,a5,+000001C6
	lui	a2,00042019
	c.sw	a4,44(a3)
	addi	a2,a2,+00000624
	lbu	a4,a2,+0000002C
	c.lui	a1,00002000
	lui	s0,00028008
	sh	a4,a5,+00000158
	lhu	a3,a5,+0000014A
	c.lui	a4,00001000
	c.addi	a4,FFFFFFFF
	c.and	a3,a4
	c.or	a3,a1
	sh	a3,a5,+0000014A
	lhu	a3,a5,+0000019E
	c.slli	a3,10
	c.srli	a3,00000010
	andi	a3,a3,-00000081
	c.slli	a3,10
	c.srli	a3,00000010
	sh	a3,a5,+0000019E
	sh	zero,a5,+00000154
	lbu	a3,a2,+0000002C
	sh	a3,a5,+000001B4
	lhu	a3,a5,+000001A6
	c.and	a4,a3
	c.or	a4,a1
	sh	a4,a5,+000001A6
	lhu	a4,a5,+000001FA
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000081
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001FA
	sh	zero,a5,+000001B0
	sh	zero,a5,+00000194
	sh	zero,a5,+00000196
	sh	zero,a5,+00000198
	sh	zero,a5,+0000019A
	sh	zero,a5,+0000019C
	sh	zero,a5,+000001F0
	sh	zero,a5,+000001F2
	sh	zero,a5,+000001F4
	sh	zero,a5,+000001F6
	sh	zero,a5,+000001F8
	addi	a4,a5,+00000040

l230130BC:
	sh	zero,a5,+00000000
	sh	zero,a5,+00000002
	c.addi	a5,00000004
	bne	a5,a4,00000000230130BC

l230130CA:
	c.mv	a0,s1
	jal	ra,000000002300FE2C
	jal	ra,000000002301297E
	lhu	a5,s0,+00000146
	c.li	a0,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000101
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000146
	lhu	a5,s0,+00000146
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000401
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000146
	lhu	a5,s0,+00000146
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000201
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000146
	lhu	a5,s0,+000001A2
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000101
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000001A2
	lhu	a5,s0,+000001A2
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000401
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000001A2
	lhu	a5,s0,+000001A2
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000201
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000001A2
	jal	ra,0000000023012E80
	lui	a5,00028000
	lw	a4,a5,+000000E0
	c.lui	a3,FFFFF000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	sw	a4,a5,+000000E0
	c.lw	a5,0(a4)
	ori	a4,a4,+00000100
	c.sw	a5,0(a4)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23013176:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,00000006
	c.li	a1,00000007
	c.j	0000000023012F48

;; lld_core_reset: 23013184
;;   Called from:
;;     2300B156 (in rwble_reset)
lld_core_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00028000
	c.lw	a5,0(a4)
	lui	a3,00080000
	andi	a4,a4,-00000101
	c.sw	a5,0(a4)
	c.lw	a5,0(a4)
	c.or	a4,a3
	c.sw	a5,0(a4)
	lui	a4,00028000

l230131A2:
	c.lw	a4,0(a5)
	blt	a5,zero,00000000230131A2

l230131A8:
	c.lw	a4,0(a5)
	lui	a3,000C0000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00040000
	c.or	a5,a3
	c.sw	a4,0(a5)
	lui	a4,00028000

l230131BE:
	c.lw	a4,0(a5)
	slli	a3,a5,00000001
	blt	a3,zero,00000000230131BE

l230131C8:
	lui	a4,00028008
	lui	a5,00028008
	addi	a3,a4,+00000040

l230131D4:
	sh	zero,a4,+00000000
	sh	zero,a4,+00000002
	c.addi	a4,00000004
	bne	a4,a3,00000000230131D4

l230131E2:
	lhu	a4,a5,+00000146
	c.li	a0,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000101
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000146
	lhu	a4,a5,+00000146
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000401
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000146
	lhu	a4,a5,+00000146
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000201
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000146
	lhu	a4,a5,+000001A2
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000101
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001A2
	lhu	a4,a5,+000001A2
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000401
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001A2
	lhu	a4,a5,+000001A2
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000201
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001A2
	jal	ra,0000000023012E80
	lui	a5,00028000
	sw	zero,a5,+0000000C
	c.li	a4,FFFFFFFF
	c.sw	a5,24(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; lld_adv_start: 23013272
;;   Called from:
;;     23015B38 (in llm_set_adv_en)
;;     23015B68 (in llm_set_adv_en)
lld_adv_start proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	lbu	a4,a0,+0000001C
	c.li	a5,00000001
	c.mv	s2,a0
	c.mv	s6,a1
	c.mv	s3,a2
	c.mv	s4,a3
	bne	a4,a5,0000000023013426

l23013298:
	lbu	a3,a0,+00000021
	addi	s7,zero,+000005DC
	c.bnez	a3,00000000230132B0

l230132A2:
	c.lui	a5,00001000
	addi	a5,a5,-00000800
	sh	a5,a0,+00000018
	addi	s7,zero,+000004E2

l230132B0:
	lhu	a2,s2,+00000018
	lhu	a1,s2,+00000016
	c.li	a0,00000002
	jal	ra,000000002301149C
	c.mv	s1,a0
	beq	a0,zero,000000002301340E

l230132C4:
	lui	a4,00028008
	lhu	a5,a4,+0000014A
	addi	s5,a0,+00000028
	c.li	a1,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000002
	sh	a5,a4,+0000014A
	lui	a5,00023082
	lbu	a4,a5,+000006DE
	lbu	a0,s2,+0000001C
	srli	a3,a4,00000001
	andi	a5,a4,+00000001
	c.srli	a4,00000002
	andi	a2,a3,+00000001
	c.andi	a4,00000001
	c.li	a3,00000004
	bne	a0,a1,000000002301330C

l23013302:
	lbu	a3,s2,+00000021
	sltiu	a3,a3,+00000001
	c.addi	a3,00000004

l2301330C:
	c.slli	a5,0A
	c.or	a5,a3
	slli	a3,a2,00000009
	c.or	a5,a3
	c.slli	a4,08
	c.or	a5,a4
	c.lui	a4,0000F000
	lui	s0,00028008
	c.or	a5,a4
	sh	a5,s0,+00000146
	lbu	a5,s2,+0000001B
	addi	a1,s2,+00000010
	c.li	a2,00000006
	c.slli	a5,08
	sh	a5,s0,+00000154
	lhu	a5,s0,+0000019E
	addi	a0,s0,+0000016C
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000019E
	sh	zero,s0,+00000194
	sh	zero,s0,+00000196
	sh	zero,s0,+00000198
	sh	zero,s0,+0000019A
	sh	zero,s0,+0000019C
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.jalr	a5
	lbu	a5,s2,+00000020
	c.lui	a4,00002000
	c.mv	a1,s6
	sh	a5,s0,+00000172
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000027
	sh	a5,s0,+00000156
	addi	a5,zero,+00000055
	sh	a5,s0,+00000152
	slli	a5,s4,00000010
	sh	zero,s0,+0000015A
	c.srli	a5,00000010
	sh	a5,s0,+00000158
	lhu	a5,s0,+0000014A
	c.mv	a0,s1
	c.slli	a5,14
	c.srli	a5,00000014
	c.or	a5,a4
	sh	a5,s0,+0000014A
	sh	zero,s0,+00000148
	sh	zero,s0,+00000168
	sh	zero,s0,+0000016A
	c.li	a5,00000008
	sh	a5,s0,+00000160
	lbu	a4,s2,+0000001A
	lui	a5,00028000
	sw	a4,a5,+00000090
	sw	s7,a5,+000000A0
	sb	s4,s1,+0000007C
	jal	ra,0000000023012172
	beq	s3,zero,00000000230133DE

l230133D6:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023012172

l230133DE:
	c.mv	a0,s5
	jal	ra,0000000023012008
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023010988
	c.lw	s1,8(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.sw	s1,88(a5)
	c.add	a5,a4
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s1,92(a5)
	sh	zero,s1,+00000060
	csrrw	zero,mstatus,zero

l2301340E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23013426:
	c.li	a3,00000001
	addi	s7,zero,+000005DC
	c.j	00000000230132B0

;; lld_adv_stop: 2301342E
;;   Called from:
;;     23015BB2 (in llm_set_adv_en)
lld_adv_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002300FF90
	c.bnez	a0,000000002301345A

l23013440:
	lbu	a5,s0,+0000007E
	lui	a4,00028000
	lui	a3,00002000
	ori	a5,a5,+00000010
	sb	a5,s0,+0000007E
	c.lw	a4,0(a5)
	c.or	a5,a3
	c.sw	a4,0(a5)

l2301345A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_scan_start: 23013462
;;   Called from:
;;     23015F06 (in llm_set_scan_en)
lld_scan_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a1
	c.mv	s2,a0
	c.li	a1,00000000
	c.li	a0,00000003
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	sh	zero,sp,+0000000C
	c.swsp	zero,00000008
	sh	zero,sp,+00000014
	jal	ra,0000000023010C58
	c.mv	s0,a0
	beq	a0,zero,00000000230135BE

l23013488:
	lhu	a5,s2,+00000004
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sh	a5,sp,+0000001A
	sh	a5,sp,+00000018
	lhu	a5,s2,+00000006
	sb	zero,sp,+00000026
	sb	zero,sp,+00000022
	sh	a5,sp,+00000020
	c.swsp	a5,0000008C
	addi	a5,zero,+000001A2
	sh	a5,sp,+0000002E
	lui	a5,00000FF0
	c.addi	a5,00000003
	c.swsp	a5,00000014
	jal	ra,000000002300BCCA
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sh	zero,sp,+00000024
	sb	zero,sp,+0000002C
	jal	ra,000000002300B5EC
	bne	a0,zero,00000000230135CC

l230134D2:
	lhu	a5,sp,+0000001A
	c.lwsp	t3,000000C4
	c.addi4spn	a1,0000000C
	sh	a5,s0,+00000078
	c.mv	a0,s0
	sh	a5,sp,+0000000C
	c.swsp	a4,00000008
	jal	ra,0000000023012B7C
	lui	a5,00028008
	lhu	a4,a5,+000001A6
	sltu	a1,zero,s1
	c.addi	a1,00000008
	c.slli	a4,10
	c.srli	a4,00000010
	c.andi	a4,FFFFFFE0
	ori	a4,a4,+00000003
	sh	a4,a5,+000001A6
	lui	a4,00023082
	lbu	a3,a4,+000006DF
	andi	a4,a3,+00000001
	slli	a2,a3,00000008
	c.slli	a4,0A
	c.slli	a3,06
	c.or	a4,a1
	andi	a2,a2,+00000200
	andi	a3,a3,+00000100
	c.or	a4,a2
	c.or	a4,a3
	c.lui	a3,FFFFF000
	c.or	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001A2
	c.lui	a4,FFFFC000
	addi	a4,a4,+00000027
	sh	a4,a5,+000001B2
	addi	a4,zero,+00000055
	sh	a4,a5,+000001AE
	c.lwsp	a6,000000C4
	c.sw	s0,84(a4)
	sh	zero,a5,+000001C4
	sh	zero,a5,+000001C6
	sh	zero,a5,+000001A4
	lhu	a4,a5,+000001FA
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000081
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000001FA
	sh	zero,a5,+000001F0
	sh	zero,a5,+000001F2
	sh	zero,a5,+000001F4
	sh	zero,a5,+000001F6
	sh	zero,a5,+000001F8
	c.beqz	s1,0000000023013590

l23013580:
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023012172
	addi	a0,s0,+00000028
	jal	ra,0000000023012008

l23013590:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023010988
	c.lw	s0,84(a5)
	addi	a3,zero,+00000271
	c.lw	s0,8(a4)
	srl	a5,a5,a3
	sh	zero,s0,+00000060
	c.sw	s0,88(a4)
	c.add	a5,a4
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,92(a5)
	csrrw	zero,mstatus,zero

l230135BE:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l230135CC:
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,000000002300FC74
	c.li	s0,00000000
	c.j	00000000230135BE

;; lld_scan_stop: 230135DA
;;   Called from:
;;     23010D4E (in lld_evt_move_to_master)
;;     23015E50 (in llm_set_scan_en)
;;     2301C308 (in hci_le_create_con_cancel_cmd_handler)
lld_scan_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002300FF90
	c.bnez	a0,0000000023013606

l230135EC:
	lbu	a5,s0,+0000007E
	lui	a4,00028000
	lui	a3,00001000
	ori	a5,a5,+00000010
	sb	a5,s0,+0000007E
	c.lw	a4,0(a5)
	c.or	a5,a3
	c.sw	a4,0(a5)

l23013606:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; lld_con_start: 2301360E
;;   Called from:
;;     230163F4 (in llm_create_con)
lld_con_start proc
	c.addi16sp	FFFFFF80
	c.swsp	s2,00000038
	c.mv	s2,a0
	addi	a0,zero,+00000058
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s5,000000B0
	c.swsp	s9,000000A8
	c.mv	s5,a2
	c.mv	s9,a1
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	jal	ra,000000002300B546
	c.mv	s0,a0
	addi	a0,zero,+00000058
	jal	ra,000000002300B546
	sh	zero,sp,+00000004
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	beq	s0,zero,0000000023013C26

l23013650:
	c.mv	s3,a0
	beq	a0,zero,0000000023013C22

l23013656:
	c.lui	a5,00001000
	addi	a4,zero,+00000200
	addi	a5,a5,-0000063C
	sh	a4,s0,+00000018
	sb	zero,s0,+00000017
	sh	a5,s0,+00000012
	sh	a4,a0,+00000018
	sb	zero,a0,+00000017
	lhu	a5,s2,+00000002
	addi	a4,zero,+00000271
	addi	a0,s0,+00000028
	add	a5,a5,a4
	c.li	s1,00000003
	c.li	s10,00000001
	lui	s8,00023010
	lui	s7,00023011
	lui	s6,00023010
	addi	s4,zero,+0000005C
	c.sw	s0,84(a5)
	jal	ra,000000002300FF3E
	sh	s1,s0,+00000074
	sb	s10,s0,+0000007B
	lhu	a5,s2,+00000000
	c.li	a1,00000001
	c.mv	a0,s0
	sh	a5,s0,+00000078
	addi	a5,zero,+000001A2
	sh	a5,s0,+00000076
	jal	ra,0000000023012E12
	addi	a5,s8,-00000502
	c.sw	s0,28(a5)
	addi	a5,s7,-00000602
	c.sw	s0,36(a5)
	addi	a5,s6,-0000062A
	c.sw	s0,32(a5)
	c.lui	a5,00006000
	sh	a5,s0,+00000010
	jal	ra,000000002300B774
	lbu	a5,s0,+00000019
	add	s4,s5,s4
	c.addi4spn	a1,00000004
	c.addi	a5,00000003
	c.add	a0,a5
	lui	a5,00008000
	c.addi	a5,FFFFFFFE
	c.and	a0,a5
	c.sw	s0,8(a0)
	lhu	a5,s2,+0000000E
	c.addi4spn	a0,00000028
	addi	s4,s4,+0000008E
	c.slli	a5,01
	sh	a5,sp,+00000028
	lhu	a5,s2,+00000010
	c.slli	s4,10
	srli	s4,s4,00000010
	c.slli	a5,01
	sh	a5,sp,+0000002A
	lhu	a5,s2,+00000016
	sb	zero,sp,+00000032
	sb	zero,sp,+00000036
	c.swsp	a5,00000094
	lhu	a5,s2,+00000018
	sh	s5,sp,+00000038
	sh	zero,sp,+0000003A
	sh	a5,sp,+00000030
	sh	s4,sp,+0000003E
	jal	ra,000000002300BCCA
	c.addi4spn	a1,00000004
	c.addi4spn	a0,00000028
	sh	zero,sp,+00000034
	sb	zero,sp,+0000003C
	jal	ra,000000002300B5EC
	addi	s8,s8,-00000502
	addi	s7,s7,-00000602
	addi	s6,s6,-0000062A
	beq	a0,s10,0000000023013C12

l23013758:
	jal	ra,0000000023036D28
	lhu	a4,s9,+00000004
	c.li	a5,0000000A
	c.lui	a3,00002000
	add	a4,a4,a5
	lui	a5,00028008
	addi	a5,a5,+000002CC
	addi	a3,a3,+00000225
	c.mv	s10,a0
	slli	s11,a0,00000008
	srli	s11,s11,00000008
	c.add	a4,a5
	lbu	a5,s2,+00000005
	c.andi	a5,00000001
	c.slli	a5,07
	c.or	a5,a3
	sh	a5,a4,+00000000
	jal	ra,0000000023036D28
	lui	a4,0004201A
	addi	a4,a4,+00000358
	lbu	a5,a4,+00000042
	lui	a3,00023082
	addi	a3,a3,+000006F0
	c.add	a5,a3
	lbu	a5,a5,+00000000
	lbu	a3,a4,+00000040
	sh	s11,sp,+00000014
	c.slli	a5,04
	c.slli	a5,18
	c.srai	a5,00000018
	andi	a2,a3,+0000000F
	c.or	a2,a5
	sb	a2,sp,+00000010
	srli	a2,a3,00000004
	c.or	a2,a5
	sb	a2,sp,+00000011
	andi	a2,a0,+0000000F
	c.or	a5,a2
	sb	a5,sp,+00000012
	lbu	a5,a4,+00000041
	lui	a2,00023082
	addi	a2,a2,+000006EC
	c.add	a2,a5
	c.addi	a5,00000001
	or	s1,a5,s1
	c.addi	a3,00000001
	sb	a3,a4,+00000040
	lbu	a2,a2,+00000000
	andi	a0,a0,+000000FF
	c.srli	a0,00000004
	c.slli	a2,04
	c.or	a0,a2
	sb	a0,sp,+00000013
	srli	s11,s11,00000010
	c.addi4spn	a0,00000020
	sb	s11,sp,+00000016
	sb	s1,a4,+00000041
	lhu	a5,s2,+00000012
	sh	a5,sp,+0000001C
	lhu	a5,s2,+00000014
	sh	a5,sp,+0000001E
	jal	ra,0000000023014A06
	andi	a0,s10,+0000000F
	c.li	a5,00000004
	bltu	a5,a0,0000000023013832

l23013830:
	c.addi	a0,00000005

l23013832:
	lui	a5,0004201A
	lbu	a5,a5,+00000350
	addi	a2,sp,+00000003
	c.addi4spn	a1,00000010
	c.slli	a5,05
	c.or	a0,a5
	lhu	a5,sp,+00000004
	sb	a0,sp,+00000025
	c.li	a0,00000005
	c.srli	a5,00000001
	sh	a5,sp,+0000001A
	c.li	a5,00000002
	lui	s1,00028008
	sb	a5,sp,+00000017
	jal	ra,00000000230126CA
	lhu	a0,s1,+000002EC
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lbu	a2,sp,+00000003
	c.addi4spn	a1,00000010
	c.add	a0,s1
	c.jalr	a5
	lbu	a0,s2,+0000000C
	jal	ra,00000000230149C2
	c.mv	a1,s9
	c.mv	a0,s0
	sw	s3,s0,+00000004
	jal	ra,0000000023012172
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023012B7C
	lhu	a5,s1,+000001A6
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000003
	sh	a5,s1,+000001A6
	lui	a5,00023082
	lbu	a4,a5,+000006E0
	slli	a5,a4,00000008
	slli	a3,a4,00000006
	andi	a5,a5,+00000200
	andi	a3,a3,+00000100
	c.andi	a4,00000001
	c.slli	a4,0A
	c.or	a5,a3
	c.or	a5,a4
	c.lui	a4,FFFFF000
	c.addi	a4,0000000F
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s1,+000001A2
	lbu	a5,s2,+0000000C
	lbu	a4,s2,+00000004
	c.slli	a5,01
	c.slli	a4,08
	c.andi	a5,00000004
	c.or	a5,a4
	sh	a5,s1,+000001B0
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000027
	sh	a5,s1,+000001B2
	lhu	a5,s1,+000001FA
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s1,+000001FA
	sh	zero,s1,+000001F0
	sh	zero,s1,+000001F2
	sh	zero,s1,+000001F4
	sh	zero,s1,+000001F6
	sh	zero,s1,+000001F8
	sh	zero,s1,+000001A4
	lbu	a5,s2,+00000007
	lbu	a4,s2,+00000006
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s1,+000001C8
	lbu	a5,s2,+00000009
	lbu	a4,s2,+00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s1,+000001CA
	lbu	a5,s2,+0000000B
	lbu	a4,s2,+0000000A
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s1,+000001CC
	lbu	a5,s2,+00000005
	c.li	a4,00000005
	c.andi	a5,00000001
	sh	a5,s1,+000001CE
	addi	a5,zero,+00000055
	sh	a5,s1,+000001AE
	lhu	a5,sp,+0000000C
	bltu	a4,a5,0000000023013976

l2301396A:
	lhu	a4,sp,+0000001A
	c.slli	a4,01
	c.add	a5,a4
	sh	a5,sp,+0000000C

l23013976:
	addi	s1,zero,+0000005C
	add	s1,s5,s1
	lhu	a5,sp,+0000000C
	lui	a3,00028008
	addi	a4,a3,+000000A6
	c.srli	a5,00000001
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a0,s3,+00000028
	c.add	a4,s1
	sh	a5,a4,+00000000
	lhu	a5,sp,+00000004
	c.srli	a5,00000001
	sh	a5,a3,+000001BE
	jal	ra,000000002300FF3E
	lhu	a4,sp,+0000001C
	lhu	a5,sp,+0000001A
	sh	s5,s3,+00000074
	c.addi	a4,00000001
	sh	a4,s3,+0000005E
	c.li	a4,00000003
	sb	a4,s3,+0000007B
	c.slli	a5,01
	lhu	a4,sp,+0000000C
	c.slli	a5,10
	c.srli	a5,00000010
	and	a4,a4,a5
	sh	a5,s3,+00000078
	sh	s4,s3,+00000076
	c.sub	a5,a4
	c.lw	s0,8(a4)
	sub	a5,a4,a5
	c.slli	a5,05
	c.srli	a5,00000005
	sw	a5,s3,+00000008
	lhu	a5,s2,+00000016
	addi	a4,zero,+000004E2
	c.beqz	a5,0000000023013A00

l230139F2:
	addi	a4,zero,+00000271
	add	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010

l23013A00:
	lui	a5,00023073
	lbu	a5,a5,+000003FA
	lui	s2,00028008
	sh	a4,s3,+00000012
	sb	a5,s3,+00000016
	addi	a5,s2,+0000008E
	sw	s8,s3,+0000001C
	sw	s7,s3,+00000024
	sw	s6,s3,+00000020
	c.add	a5,s1
	c.li	a4,00000002
	sh	a4,a5,+00000000
	addi	a5,s2,+00000090
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+00000092
	c.add	a5,s1
	lhu	a4,a5,+00000000
	c.lui	a3,00002000
	andi	s5,s5,+0000001F
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000101
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	lhu	a4,a5,+00000000
	c.li	a1,00000005
	c.addi4spn	a0,00000020
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000201
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	lhu	a4,a5,+00000000
	c.slli	a4,14
	c.srli	a4,00000014
	c.or	a4,a3
	sh	a4,a5,+00000000
	lbu	a4,sp,+00000011
	lbu	a3,sp,+00000010
	c.slli	a4,08
	c.or	a4,a3
	addi	a3,s2,+00000094
	c.add	a3,s1
	sh	a4,a3,+00000000
	lbu	a4,sp,+00000013
	lbu	a3,sp,+00000012
	c.slli	a4,08
	c.or	a4,a3
	addi	a3,s2,+00000096
	c.add	a3,s1
	sh	a4,a3,+00000000
	lbu	a4,sp,+00000015
	lbu	a3,sp,+00000014
	c.slli	a4,08
	c.or	a4,a3
	addi	a3,s2,+00000098
	c.add	a3,s1
	sh	a4,a3,+00000000
	lbu	a3,sp,+00000016
	addi	a4,s2,+0000009A
	c.add	a4,s1
	sh	a3,a4,+00000000
	lbu	a4,sp,+00000025
	c.lui	a3,00002000
	addi	a3,a3,-00000100
	c.slli	a4,08
	c.and	a4,a3
	c.lui	a3,0000C000
	c.or	a4,a3
	addi	a3,s2,+0000009E
	c.add	a3,s1
	sh	a4,a3,+00000000
	lui	a4,00042019
	lbu	a3,a4,+00000650
	addi	a4,s2,+000000A0
	c.add	a4,s1
	sh	a3,a4,+00000000
	lbu	a3,s3,+00000019
	lhu	a4,s3,+00000078
	c.sub	a4,a3
	c.slli	a4,10
	addi	a3,s2,+000000A8
	c.add	a3,s1
	c.srli	a4,00000010
	sh	a4,a3,+00000000
	lhu	a4,a5,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	c.andi	a4,FFFFFFE0
	or	s5,a4,s5
	sh	s5,a5,+00000000
	addi	a5,s2,+000000B0
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000B2
	c.add	a5,s1
	addi	a4,s2,+000000E6
	sh	zero,a5,+00000000
	c.add	a4,s1
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	addi	a5,s2,+000000DC
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000DE
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000E0
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000E2
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000E4
	lhu	a4,sp,+00000020
	c.add	a5,s1
	sh	zero,a5,+00000000
	addi	a5,s2,+000000AA
	c.add	a5,s1
	sh	a4,a5,+00000000
	lhu	a4,sp,+00000022
	addi	a5,s2,+000000AC
	c.add	a5,s1
	sh	a4,a5,+00000000
	jal	ra,000000002301496E
	lbu	a5,sp,+00000024
	c.slli	a0,08
	addi	s2,s2,+000000AE
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.add	s1,s2
	sh	a0,s1,+00000000
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023010988
	c.lw	s0,84(a5)
	addi	a3,zero,+00000271
	c.lw	s0,8(a4)
	srl	a5,a5,a3
	c.sw	s0,88(a4)
	c.add	a5,a4
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,92(a5)
	c.li	a5,00000001
	sh	a5,s0,+00000060
	addi	a5,zero,+000004E2
	sh	a5,s0,+00000012
	csrrw	zero,mstatus,zero

l23013BF2:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.addi16sp	00000080
	c.jr	ra

l23013C12:
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.mv	a0,s3

l23013C1A:
	jal	ra,000000002300DA32
	c.li	s0,00000000
	c.j	0000000023013BF2

l23013C22:
	c.mv	a0,s0
	c.j	0000000023013C1A

l23013C26:
	jal	ra,000000002300DA32
	c.j	0000000023013BF2

;; lld_move_to_master: 23013C2C
;;   Called from:
;;     230154AA (in llm_con_req_tx_cfm)
lld_move_to_master proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a3
	c.mv	s3,a1
	jal	ra,0000000023010CFC
	c.li	a5,0000000E
	add	s0,s0,a5
	lui	s1,00028008
	addi	a5,s1,+000003D2
	addi	a3,s1,+0000009E
	c.lui	a4,FFFFC000
	c.addi	a4,FFFFFFFF
	addi	a1,zero,+00000148
	c.mv	s2,a0
	c.add	s0,a5
	lhu	a5,s0,+00000000
	addi	s0,zero,+0000005C
	add	s0,s3,s0
	c.srli	a5,00000005
	c.andi	a5,00000001
	c.slli	a5,0E
	c.add	a3,s0
	lhu	a2,a3,+00000000
	c.and	a4,a2
	c.or	a5,a4
	sh	a5,a3,+00000000
	c.li	a2,0000001B
	jal	ra,0000000023012E76
	c.mv	a0,s2
	addi	a2,zero,+00000148
	addi	a1,zero,+00000148
	jal	ra,0000000023012D3A
	addi	a5,s1,+000000A8
	c.add	a5,s0
	lhu	a4,a5,+00000000
	addi	a5,s1,+000000A6
	c.add	a5,s0
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	c.li	a5,0000000A
	add	s3,s3,a5
	addi	a5,s1,+000002CA
	c.lui	a4,00008000
	c.mv	a0,s2
	c.li	a1,00000001
	c.add	s3,a5
	lhu	a5,s3,+00000000
	c.slli	a5,11
	c.srli	a5,00000011
	c.or	a5,a4
	sh	a5,s3,+00000000
	addi	a5,s1,+00000092
	c.add	a5,s0
	lhu	a4,a5,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000101
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	lhu	a4,a5,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000201
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	lhu	a4,a5,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000401
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	addi	a4,s1,+0000009C
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000CC
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000CE
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000D0
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000D2
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000D4
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000D6
	c.add	a4,s0
	sh	zero,a4,+00000000
	addi	a4,s1,+000000D8
	c.add	a4,s0
	addi	s1,s1,+000000A4
	sh	zero,a4,+00000000
	c.add	s1,s0
	sh	zero,s1,+00000000
	lhu	a3,a5,+00000000
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a4,a3
	sh	a4,a5,+00000000
	jal	ra,0000000023010988
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; lld_con_update_req: 23013D8A
lld_con_update_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lhu	a3,a1,+00000010
	c.mv	s0,a1
	c.mv	s1,a2
	lbu	a5,a1,+00000012
	lhu	a2,a1,+0000000E
	lhu	a4,a1,+00000006
	lhu	a1,a1,+0000000A
	c.slli	a3,01
	c.slli	a2,01
	c.addi	a1,00000001
	c.slli	a3,10
	c.slli	a2,10
	c.andi	a1,FFFFFFFE
	c.li	a6,00000002
	c.srli	a3,00000010
	c.srli	a2,00000010
	bgeu	a1,a6,0000000023013DC2

l23013DC0:
	c.li	a1,00000002

l23013DC2:
	c.slli	a1,10
	addi	a6,sp,+00000008
	c.srli	a1,00000010
	jal	ra,0000000023010E8E
	lhu	a5,s0,+00000008
	c.lwsp	t3,00000020
	sh	a5,s1,+00000008
	lhu	a5,a0,+00000078
	c.srli	a5,00000001
	sh	a5,s1,+00000004
	lhu	a5,s0,+00000006
	c.lwsp	s8,00000004
	sh	a5,s1,+00000006
	lbu	a5,sp,+0000000C
	sb	a5,s1,+00000001
	lhu	a5,sp,+00000008
	sh	a5,s1,+00000002
	lhu	a5,sp,+0000000A
	sh	a5,s1,+0000000A
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; lld_con_update_after_param_req: 23013E0A
lld_con_update_after_param_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	ra,000000AC
	c.swsp	s4,00000024
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	lhu	a5,a2,+0000000E
	c.mv	s0,a4
	c.lui	a4,FFFF0000
	c.slli	a5,01
	sh	a5,sp,+00000018
	lhu	a5,a2,+00000010
	c.addi	a4,00000001
	c.mv	s5,a1
	c.slli	a5,01
	sh	a5,sp,+0000001A
	lhu	a5,a2,+0000000A
	sh	a0,sp,+00000028
	c.addi4spn	a1,0000000C
	c.swsp	a5,0000008C
	lhu	a5,a2,+0000000C
	c.mv	s3,a0
	c.mv	s1,a2
	sh	a5,sp,+00000020
	lbu	a5,a2,+00000012
	c.mv	s2,a3
	sh	zero,sp,+0000002A
	c.slli	a5,01
	sb	a5,sp,+00000022
	lhu	a5,a2,+00000016
	c.add	a5,a4
	sltu	a5,zero,a5
	sb	a5,sp,+00000026
	addi	a5,zero,+0000005C
	add	a5,a0,a5
	c.addi4spn	a0,00000018
	addi	a5,a5,+0000008E
	sh	a5,sp,+0000002E
	jal	ra,000000002300BCCA
	lhu	a0,s1,+00000016
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	lw	a2,s5,+00000008
	lhu	a1,sp,+0000000C
	beq	a0,a5,000000002301401C

l23013E9C:
	lhu	a4,s5,+00000060
	lhu	a5,s1,+00000014
	lhu	a3,s5,+00000078
	bgeu	a5,a4,0000000023014012

l23013EAC:
	sub	a5,a4,a5
	add	a5,a5,a3
	c.sub	a2,a5

l23013EB6:
	c.slli	a0,01
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023012B5E
	sh	a0,sp,+00000024

l23013EC4:
	lbu	a5,sp,+00000024
	lbu	a4,sp,+00000026
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	c.li	a5,00000001
	beq	a4,a5,0000000023014026

l23013ED8:
	c.li	s4,00000000

l23013EDA:
	addi	a0,zero,+00000058
	jal	ra,000000002300B546
	c.mv	s7,a0
	beq	a0,zero,0000000023014048

l23013EE8:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	a1,s5
	addi	a2,zero,+0000002C
	c.jalr	a5
	addi	a0,s7,+00000028
	jal	ra,000000002300FF3E
	lhu	a5,s1,+00000006
	lhu	a1,sp,+0000000C
	c.addi	a5,00000001
	sh	a5,s7,+0000005E
	c.li	a5,00000003
	sb	a5,s7,+0000007B
	sh	a1,s7,+00000078
	lhu	a0,s1,+00000016
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a0,a5,0000000023014062

l23013F24:
	lw	a2,s5,+00000008
	lhu	a0,sp,+00000014
	jal	ra,0000000023012B6A
	c.srli	a0,00000001
	lhu	a5,s5,+00000060
	c.slli	a0,10
	c.srli	a0,00000010

l23013F3A:
	lhu	a4,s5,+0000005E
	c.li	a3,00000007
	lhu	s6,s5,+00000060
	add	a4,a4,a3
	lhu	s0,s5,+00000078
	c.addi	s6,FFFFFFFF
	lw	a3,s5,+00000008
	c.slli	a0,01
	c.slli	a4,10
	c.srli	a4,00000010
	c.add	s6,a4
	c.addi	a4,FFFFFFFF
	add	a4,a4,s0
	c.slli	s6,10
	srli	s6,s6,00000010
	c.add	a4,a3
	c.slli	a4,05
	c.srli	a4,00000005
	lhu	a3,s7,+00000078
	bgeu	s6,a5,0000000023014068

l23013F74:
	sub	a5,a5,s6
	add	s0,a5,s0
	c.add	s0,a0

l23013F7E:
	or	s0,s0,a3
	c.li	s8,00000001
	c.mv	a0,s7
	c.slli	s0,10
	c.srli	s0,00000010
	add	a5,s0,a4
	c.slli	a5,05
	c.srli	a5,00000005
	sw	a5,s7,+00000008
	lui	a5,0004201A
	slli	a4,s3,00000002
	addi	s3,a5,+00000320
	sw	s7,s5,+00000004
	c.add	s3,a4
	lw	a5,s3,+00000000
	sh	s6,s5,+0000005C
	sb	s8,s5,+0000006D
	lhu	a2,a5,+00000050
	lhu	a1,a5,+0000004E
	c.srli	s0,00000001
	jal	ra,0000000023012D3A
	lhu	a5,s5,+00000074
	addi	a4,zero,+0000005C
	add	a5,a5,a4
	lui	a4,00028008
	addi	a3,a4,+000000A8
	addi	a4,a4,+000000A6
	c.add	a3,a5
	lhu	a3,a3,+00000000
	c.add	a5,a4
	c.slli	a3,10
	c.srli	a3,00000010
	sh	a3,a5,+00000000
	lhu	a5,s1,+00000008
	sh	a5,s2,+00000008
	lhu	a5,s7,+00000078
	c.srli	a5,00000001
	sh	a5,s2,+00000004
	lhu	a5,s1,+00000006
	sb	s8,s2,+00000001
	sh	s0,s2,+00000002
	sh	a5,s2,+00000006
	sh	s6,s2,+0000000A
	c.j	0000000023014048

l23014012:
	c.sub	a5,a4
	add	a5,a5,a3
	c.add	a2,a5
	c.j	0000000023013EB6

l2301401C:
	and	a2,a2,a1
	sh	a2,sp,+00000024
	c.j	0000000023013EC4

l23014026:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002300B5EC
	beq	a0,zero,0000000023013ED8

l23014032:
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	sb	zero,sp,+00000026
	jal	ra,000000002300B5EC
	beq	a0,zero,0000000023013ED8

l23014042:
	c.li	s4,0000001F
	bne	s0,zero,0000000023013EDA

l23014048:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s4
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.addi16sp	00000060
	c.jr	ra

l23014062:
	lhu	a5,s1,+00000014
	c.j	0000000023013F3A

l23014068:
	sub	a5,s6,a5
	add	s0,a5,s0
	c.sub	s0,a0
	or	s0,s0,a3
	sub	s0,a3,s0
	c.j	0000000023013F7E

;; lld_con_param_rsp: 2301407C
;;   Called from:
;;     23018E5C (in llcp_con_param_req_handler)
;;     2301ABB2 (in hci_le_rem_con_param_req_reply_cmd_handler)
lld_con_param_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	lhu	a5,a2,+0000000E
	c.lui	a4,FFFF0000
	c.addi	a4,00000001
	c.slli	a5,01
	sh	a5,sp,+00000018
	lhu	a5,a2,+00000010
	sh	a0,sp,+00000028
	c.mv	s1,a1
	c.slli	a5,01
	sh	a5,sp,+0000001A
	lhu	a5,a1,+00000064
	c.addi4spn	a1,0000000C
	c.mv	s0,a2
	c.swsp	a5,0000008C
	sh	a5,sp,+00000020
	lbu	a5,a2,+00000012
	c.slli	a5,01
	sb	a5,sp,+00000022
	lhu	a5,a2,+00000016
	c.add	a5,a4
	sltu	a5,zero,a5
	sb	a5,sp,+00000026
	c.li	a5,00000001
	sh	a5,sp,+0000002A
	addi	a5,zero,+0000005C
	add	a0,a0,a5
	addi	a0,a0,+0000008E
	sh	a0,sp,+0000002E
	c.addi4spn	a0,00000018
	jal	ra,000000002300BCCA
	lhu	a0,s0,+00000016
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.lw	s1,8(a2)
	lhu	a1,sp,+0000000C
	beq	a0,a5,000000002301419C

l230140F8:
	lhu	a4,s1,+00000060
	lhu	a5,s0,+00000014
	lhu	a3,s1,+00000078
	bgeu	a5,a4,0000000023014192

l23014108:
	sub	a5,a4,a5
	add	a5,a5,a3
	c.sub	a2,a5

l23014112:
	c.slli	a0,01
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023012B5E
	sh	a0,sp,+00000024

l23014120:
	lbu	a5,sp,+00000024
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	jal	ra,000000002300B5EC
	c.mv	s2,a0
	c.bnez	a0,00000000230141A6

l23014136:
	lhu	a1,sp,+0000000C
	lhu	a4,s0,+00000016
	sb	zero,s0,+00000012
	srli	a5,a1,00000001
	sh	a5,s0,+0000000E
	sh	a5,s0,+00000010
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,000000002301416E

l23014156:
	c.lw	s1,8(a2)
	lhu	a0,sp,+00000014
	jal	ra,0000000023012B6A
	c.srli	a0,00000001
	sh	a0,s0,+00000016
	lhu	a5,s1,+00000060
	sh	a5,s0,+00000014

l2301416E:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000018
	sh	a5,s0,+0000001A
	sh	a5,s0,+0000001C
	sh	a5,s0,+0000001E
	sh	a5,s0,+00000020

l23014184:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23014192:
	c.sub	a5,a4
	add	a5,a5,a3
	c.add	a2,a5
	c.j	0000000023014112

l2301419C:
	and	a2,a2,a1
	sh	a2,sp,+00000024
	c.j	0000000023014120

l230141A6:
	c.li	s2,0000001F
	c.j	0000000023014184

;; lld_con_param_req: 230141AA
lld_con_param_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	lhu	a5,a2,+00000002
	c.mv	s1,a1
	c.mv	s0,a2
	c.slli	a5,01
	sh	a5,sp,+00000018
	lhu	a5,a2,+00000004
	c.slli	a5,01
	sh	a5,sp,+0000001A
	lhu	a5,a2,+0000000A
	c.bnez	a5,00000000230141D4

l230141D0:
	lhu	a5,a1,+00000064

l230141D4:
	c.swsp	a5,0000008C
	lhu	a5,s0,+0000000C
	sh	a0,sp,+00000028
	c.addi4spn	a1,0000000C
	sh	a5,sp,+00000020
	lbu	a5,s1,+0000007B
	sb	zero,sp,+00000022
	sb	zero,sp,+00000026
	c.addi	a5,FFFFFFFD
	sltu	a5,zero,a5
	sh	a5,sp,+0000002A
	addi	a5,zero,+0000005C
	add	a0,a0,a5
	addi	a0,a0,+0000008E
	sh	a0,sp,+0000002E
	c.addi4spn	a0,00000018
	jal	ra,000000002300BCCA
	lhu	a4,sp,+0000000C
	c.lw	s1,8(a5)
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	and	a5,a5,a4
	sh	a5,sp,+00000024
	c.andi	a5,00000001
	sb	a5,sp,+0000002C
	jal	ra,000000002300B5EC
	lhu	a5,sp,+00000024
	c.bnez	a0,000000002301427E

l23014232:
	lhu	a1,sp,+0000000C

l23014236:
	srli	a4,a1,00000001
	sh	a4,s0,+0000000E
	sh	a4,s0,+00000010
	c.lw	s1,8(a2)
	c.mv	a0,a5
	jal	ra,0000000023012B6A
	c.srli	a0,00000001
	sh	a0,s0,+00000016
	sb	zero,s0,+00000012
	lhu	a5,s1,+00000060
	c.lwsp	t3,00000130
	c.lwsp	s4,00000134
	c.addi	a5,00000002
	sh	a5,s0,+00000014
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000018
	sh	a5,s0,+0000001A
	sh	a5,s0,+0000001C
	sh	a5,s0,+0000001E
	sh	a5,s0,+00000020
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l2301427E:
	lhu	a1,sp,+0000001A
	c.j	0000000023014236

;; lld_con_stop: 23014284
;;   Called from:
;;     2301A11E (in llc_util_dicon_procedure)
lld_con_stop proc
	c.li	a2,00000001
	c.li	a1,00000001
	jal	zero,000000002300FC74

;; lld_get_mode: 2301428C
;;   Called from:
;;     2300EDAE (in llc_le_con_cmp_evt_send)
;;     2300EF08 (in llc_le_con_cmp_evt_send)
;;     2300F75A (in llc_con_update_finished)
;;     2300F802 (in llc_map_update_finished)
;;     230174EA (in llcp_terminate_ind_handler)
;;     230176B6 (in llc_llcp_reject_ind)
;;     23017736 (in llc_llcp_reject_ind)
;;     230178B2 (in llcp_pause_enc_req_handler)
;;     23017A34 (in llcp_enc_req_handler)
;;     23017BB4 (in fn23017B9A)
;;     23018250 (in llcp_start_enc_rsp_handler)
;;     230182A0 (in llcp_start_enc_rsp_handler)
;;     230185DA (in llcp_con_param_rsp_handler)
;;     23018832 (in llcp_channel_map_ind_handler)
;;     23018996 (in llcp_con_upd_ind_handler)
;;     23018C5A (in llcp_con_param_req_handler)
;;     23018D88 (in llcp_con_param_req_handler)
;;     23018DEA (in llcp_con_param_req_handler)
;;     23018E9C (in llc_llcp_feats_req_pdu_send)
;;     23019098 (in llcp_feats_req_handler)
;;     23019124 (in llcp_slave_feature_req_handler)
;;     230194EC (in llm_enc_ind_handler)
;;     230194F8 (in llm_enc_ind_handler)
;;     2301954E (in llm_enc_ind_handler)
;;     2301957C (in llm_enc_ind_handler)
;;     23019A08 (in llc_enc_mgt_ind_handler)
;;     2301A200 (in llc_util_bw_mgt)
;;     2301AAE0 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AB7E (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AE78 (in hci_le_start_enc_cmd_handler)
;;     2301B23A (in hci_le_con_update_cmd_handler)
lld_get_mode proc
	c.li	a5,00000002
	bne	a0,a5,00000000230142A4

l23014292:
	lui	a5,0004201A
	lw	a5,a5,+000003A0

l2301429A:
	c.li	a0,00000008
	c.beqz	a5,00000000230142A2

l2301429E:
	lbu	a0,a5,+0000007B

l230142A2:
	c.jr	ra

l230142A4:
	c.li	a5,00000003
	bne	a0,a5,00000000230142B4

l230142AA:
	lui	a5,0004201A
	lw	a5,a5,+000003AC
	c.j	000000002301429A

l230142B4:
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.li	a0,00000008
	c.beqz	a5,00000000230142A2

l230142C6:
	c.lw	a5,16(a5)
	c.j	000000002301429A

;; lld_move_to_slave: 230142CA
;;   Called from:
;;     23014FE0 (in llm_con_req_ind)
lld_move_to_slave proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	addi	s0,zero,+0000005C
	add	s0,a3,s0
	c.swsp	s4,0000000C
	c.mv	s4,a0
	c.li	a0,0000000A
	c.swsp	s1,00000090
	lui	s1,00028008
	addi	a5,s1,+0000008E
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	add	a0,a3,a0
	c.mv	s3,a1
	c.add	a5,s0
	c.li	a1,00000003
	sh	a1,a5,+00000000
	addi	a5,s1,+000002CA
	c.lui	a6,FFFF8000
	addi	s2,s1,+00000092
	c.add	s2,s0
	c.swsp	a2,00000084
	c.add	a0,a5
	lhu	a1,a0,+00000000
	c.swsp	a3,00000004
	c.slli	a1,11
	c.srli	a1,00000011
	or	a1,a1,a6
	c.slli	a1,10
	c.srli	a1,00000010
	sh	a1,a0,+00000000
	c.li	a1,0000000E
	add	a4,a4,a1
	addi	a1,s1,+000003D2
	addi	a0,s3,+0000001C
	c.add	a4,a1
	lhu	a5,a4,+00000000
	lbu	a4,s3,+00000021
	c.lui	a1,00002000
	c.srli	a5,00000005
	addi	a1,a1,-00000100
	c.andi	a5,00000001
	c.slli	a4,08
	c.and	a4,a1
	c.slli	a5,0E
	c.or	a5,a4
	or	a5,a5,a6
	addi	a4,s1,+0000009E
	c.slli	a5,10
	c.add	a4,s0
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	lbu	a5,s3,+0000000D
	lbu	a4,s3,+0000000C
	c.li	a1,00000005
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,s1,+00000094
	c.add	a4,s0
	sh	a5,a4,+00000000
	lbu	a5,s3,+0000000F
	lbu	a4,s3,+0000000E
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,s1,+00000096
	c.add	a4,s0
	sh	a5,a4,+00000000
	lbu	a5,s3,+00000011
	lbu	a4,s3,+00000010
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,s1,+00000098
	c.add	a4,s0
	sh	a5,a4,+00000000
	lbu	a4,s3,+00000012
	addi	a5,s1,+0000009A
	c.add	a5,s0
	sh	a4,a5,+00000000
	lui	a5,00042019
	lbu	a4,a5,+00000650
	addi	a5,s1,+000000A0
	c.add	a5,s0
	sh	a4,a5,+00000000
	lhu	a5,s2,+00000000
	c.lui	a4,00002000
	c.slli	a5,14
	c.srli	a5,00000014
	c.or	a5,a4
	sh	a5,s2,+00000000
	lhu	a5,s2,+00000000
	andi	a4,a3,+0000001F
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	c.or	a5,a4
	sh	a5,s2,+00000000
	lhu	a4,s3,+0000001C
	addi	a5,s1,+000000AA
	c.add	a5,s0
	sh	a4,a5,+00000000
	lhu	a4,s3,+0000001E
	addi	a5,s1,+000000AC
	c.add	a5,s0
	sh	a4,a5,+00000000
	c.jal	000000002301496E
	lbu	a5,s3,+00000020
	c.slli	a0,08
	addi	a4,s1,+000000E6
	c.or	a0,a5
	c.slli	a0,10
	addi	a5,s1,+000000AE
	c.add	a5,s0
	c.srli	a0,00000010
	sh	a0,a5,+00000000
	lhu	a5,s2,+00000000
	c.add	a4,s0
	c.lwsp	s0,000000A4
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000101
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s2,+00000000
	lhu	a5,s2,+00000000
	c.lwsp	a2,00000084
	c.mv	a1,s3
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000201
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s2,+00000000
	lhu	a5,s2,+00000000
	c.mv	a0,s4
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000401
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s2,+00000000
	addi	a5,s1,+0000009C
	c.add	a5,s0
	sh	zero,a5,+00000000
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	addi	a5,s1,+000000DC
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000DE
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000E0
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000E2
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000E4
	c.add	a5,s0
	sh	zero,a5,+00000000
	jal	ra,0000000023010FF8
	c.li	a2,0000001B
	addi	a1,zero,+00000148
	c.mv	s3,a0
	jal	ra,0000000023012E76
	c.mv	a0,s3
	addi	a2,zero,+00000148
	addi	a1,zero,+00000148
	jal	ra,0000000023012D3A
	addi	a5,s1,+000000A8
	c.add	a5,s0
	lhu	a4,a5,+00000000
	addi	a5,s1,+000000A6
	c.add	a5,s0
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000000
	addi	a5,s1,+000000B0
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000B2
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000CC
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000CE
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000D0
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000D2
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000D4
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000D6
	c.add	a5,s0
	sh	zero,a5,+00000000
	addi	a5,s1,+000000D8
	c.add	a5,s0
	addi	s1,s1,+000000A4
	sh	zero,a5,+00000000
	c.add	s1,s0
	sh	zero,s1,+00000000
	lhu	a4,s2,+00000000
	c.lui	a5,FFFFF000
	addi	a5,a5,+000007FF
	c.and	a5,a4
	c.mv	a0,s3
	sh	a5,s2,+00000000
	c.li	a1,00000001
	jal	ra,0000000023010988
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; lld_ch_map_ind: 23014576
;;   Called from:
;;     2301887C (in llcp_channel_map_ind_handler)
lld_ch_map_ind proc
	c.li	a5,00000002
	sb	a5,a0,+0000006D
	lbu	a5,a0,+0000007E
	lhu	a3,a0,+00000060
	sh	a1,a0,+0000005C
	ori	a4,a5,+00000001
	sb	a4,a0,+0000007E
	addi	a4,a1,-00000001
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a3,a4,00000000230145A6

l2301459C:
	ori	a5,a5,+00000009
	sb	a5,a0,+0000007E
	c.jr	ra

l230145A6:
	bne	a3,a1,00000000230145CE

l230145AA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a0,a0,+00000074
	jal	ra,000000002300F69C
	lbu	a5,s0,+0000007E
	ori	a5,a5,+00000008
	sb	a5,s0,+0000007E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230145CE:
	c.jr	ra

;; lld_con_update_ind: 230145D0
;;   Called from:
;;     230189E6 (in llcp_con_upd_ind_handler)
lld_con_update_ind proc
	c.mv	a5,a1
	c.mv	a1,a0
	c.mv	a0,a5
	jal	zero,000000002301131E

;; lld_crypt_isr: 230145DA
;;   Called from:
;;     2300B2BC (in rwble_isr)
lld_crypt_isr proc
	c.li	a0,00000001
	jal	zero,000000002300D720

;; lld_test_mode_tx: 230145E0
;;   Called from:
;;     230156F6 (in llm_test_mode_start_tx)
lld_test_mode_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	a3,00000000
	c.mv	s4,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.mv	s1,a2
	c.li	a0,00000002
	c.li	a2,00000001
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	jal	ra,000000002301149C
	c.li	a5,00000002
	sb	a5,a0,+0000007B
	lui	a3,00028000
	lw	a5,a3,+000000E0
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	sw	a5,a3,+000000E0
	lui	s0,00028008
	sh	zero,s0,+00000184
	sh	zero,s0,+00000186
	sh	zero,s0,+00000188
	c.li	a5,0000001C
	sh	a5,s0,+00000146
	c.lui	a5,00004000
	addi	a5,a5,+00000129
	sh	a5,s0,+0000014C
	c.lui	a5,00007000
	addi	a5,a5,+00000176
	sh	a5,s0,+0000014E
	lhu	a5,s0,+00000158
	c.mv	s2,a0
	c.mv	a0,s4
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000100
	ori	a5,a5,+0000000F
	sh	a5,s0,+00000158
	sh	zero,s0,+00000148
	lhu	a5,s0,+0000019E
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000019E
	lhu	a5,s0,+0000014A
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000014A
	sh	zero,s0,+00000194
	sh	zero,s0,+00000196
	sh	zero,s0,+00000198
	sh	zero,s0,+0000019A
	sh	zero,s0,+0000019C
	jal	ra,0000000023012B30
	lhu	a5,s0,+00000156
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,s0,+00000156
	c.beqz	s1,00000000230146F4

l230146BE:
	c.li	a5,00000004
	bne	s1,a5,000000002301471E

l230146C4:
	lhu	a5,s0,+000001A0
	c.li	s1,00000003
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	ori	a5,a5,+00000010
	sh	a5,s0,+000001A0

l230146DA:
	lui	a4,00028008
	lhu	a5,a4,+000001A0
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFFC
	c.or	s1,a5
	sh	s1,a4,+000001A0

l230146F4:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023012172
	addi	a0,s2,+00000028
	jal	ra,0000000023012008
	c.mv	a0,s2
	c.li	a1,00000001
	jal	ra,0000000023010988
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301471E:
	c.li	a5,00000003
	bne	s1,a5,00000000230146DA

l23014724:
	lhu	a5,s0,+000001A0
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000001A0
	c.j	00000000230146DA

;; lld_test_mode_rx: 2301473A
;;   Called from:
;;     23015828 (in llm_test_mode_start_rx)
lld_test_mode_rx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.li	a3,00000000
	c.mv	s2,a0
	c.li	a2,00000001
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,000000002301149C
	c.li	a5,00000002
	sb	a5,a0,+0000007B
	lui	a5,00028000
	lw	a4,a5,+000000E0
	lui	a3,000F8000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	lui	a3,00008000
	c.or	a4,a3
	sw	a4,a5,+000000E0
	lui	s0,00028008
	sh	zero,s0,+0000018A
	sh	zero,s0,+0000018C
	sh	zero,s0,+0000018E
	c.li	a4,0000001D
	c.lui	a2,FFFF8000
	sh	a4,s0,+00000146
	addi	a4,a2,+0000004B
	sh	a4,s0,+0000015A
	lw	a4,a5,+000001AC
	lui	a3,0004201A
	c.mv	s1,a0
	andi	a4,a4,+0000003F
	sb	a4,a3,+00000355
	lw	a4,a5,+000001AC
	lui	a3,0004201A
	lui	a0,00010000
	andi	a4,a4,-00000040
	ori	a4,a4,+0000000F
	sw	a4,a5,+000001AC
	c.lw	a5,120(a4)
	lui	a1,00040003
	c.addi	a2,FFFFFFFF
	c.srli	a4,0000001C
	sb	a4,a3,+00000354
	c.lw	a5,120(a3)
	addi	a4,a0,-00000001
	c.and	a3,a4
	lui	a4,000F0000
	c.or	a3,a4
	c.sw	a5,120(a3)
	lw	a4,a1,-000007B0
	lui	a3,000D0000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.or	a4,a0
	sw	a4,a1,+00000850
	c.lw	a5,0(a4)
	c.mv	a0,s2
	c.and	a2,a4
	c.sw	a5,0(a2)
	c.lui	a5,00004000
	addi	a5,a5,+00000129
	sh	a5,s0,+0000014C
	c.lui	a5,00007000
	addi	a5,a5,+00000176
	sh	a5,s0,+0000014E
	sh	zero,s0,+00000148
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000168
	sh	zero,s0,+0000016A
	lhu	a5,s0,+0000019E
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000081
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000019E
	lhu	a5,s0,+0000014A
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFE0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000014A
	sh	zero,s0,+00000194
	sh	zero,s0,+00000196
	sh	zero,s0,+00000198
	sh	zero,s0,+0000019A
	sh	zero,s0,+0000019C
	jal	ra,0000000023012B30
	lhu	a5,s0,+00000156
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,s0,+00000156
	lui	a5,00042019
	lw	a5,a5,+00000628
	c.li	a0,00000000
	c.jalr	a5
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,0000000023010988
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; lld_test_stop: 2301488E
;;   Called from:
;;     2301C2A2 (in hci_le_test_end_cmd_handler)
lld_test_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00028000
	c.lw	s0,0(a5)
	lui	a4,00004000
	c.li	a0,00000001
	c.or	a5,a4
	c.sw	s0,0(a5)
	lui	a5,00042019
	lw	a5,a5,+00000628
	c.jalr	a5
	sw	zero,s0,+000000E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llm_util_bd_addr_wl_position: 230148BA
;;   Called from:
;;     23014B48 (in llm_util_bd_addr_in_wl)
;;     23014BAE (in llm_util_bl_add)
;;     2301615E (in llm_wl_dev_add)
;;     2301619E (in llm_wl_dev_rem)
llm_util_bd_addr_wl_position proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.andi	a1,00000001
	c.mv	s3,a0
	lui	s4,0004200E
	c.li	s0,00000000
	c.li	s6,00000006
	lui	s2,00028008
	c.bnez	a1,0000000023014922

l230148DE:
	addi	s2,s2,+000001FE
	c.li	s5,00000004

l230148E4:
	add	a1,s0,s6
	lw	a5,s4,+0000013C
	c.li	a2,00000006
	c.addi4spn	a0,00000008
	slli	s1,s0,00000010
	c.srli	s1,00000010
	c.add	a1,s2
	c.jalr	a5
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002300C476
	c.bnez	a0,000000002301490C

l23014904:
	c.addi	s0,00000001
	bne	s0,s5,00000000230148E4

l2301490A:
	c.li	s1,00000004

l2301490C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l23014922:
	addi	s2,s2,+00000216
	c.li	s5,00000004

l23014928:
	add	a1,s0,s6
	lw	a5,s4,+0000013C
	c.li	a2,00000006
	c.addi4spn	a0,00000008
	slli	s1,s0,00000010
	c.srli	s1,00000010
	c.add	a1,s2
	c.jalr	a5
	c.mv	a1,s3
	c.addi4spn	a0,00000008
	jal	ra,000000002300C476
	c.bnez	a0,000000002301490C

l23014948:
	c.addi	s0,00000001
	bne	s0,s5,0000000023014928

l2301494E:
	c.j	000000002301490A

;; llm_util_check_address_validity: 23014950
llm_util_check_address_validity proc
	lui	a1,00023082
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000006E4
	c.swsp	ra,00000084
	jal	ra,000000002300C476
	c.beqz	a0,000000002301496A

l23014962:
	c.li	a0,00000012

l23014964:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2301496A:
	c.li	a0,00000000
	c.j	0000000023014964

;; llm_util_check_map_validity: 2301496E
;;   Called from:
;;     2300F6C0 (in llc_map_update_ind)
;;     23013BA0 (in lld_con_start)
;;     23014400 (in lld_move_to_slave)
;;     2301BE3A (in hci_le_set_host_ch_class_cmd_handler)
llm_util_check_map_validity proc
	lbu	a5,a0,+00000000
	andi	a5,a5,+000000F8
	c.beqz	a5,0000000023014980

l23014978:
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a1,a4,000000002301498E

l23014980:
	c.li	a4,00000000
	c.li	a7,00000004
	c.li	t1,00000008

l23014986:
	andi	a3,a4,+000000FF
	bltu	a3,a1,0000000023014992

l2301498E:
	c.mv	a0,a5
	c.jr	ra

l23014992:
	add	a2,a0,a4
	lbu	a6,a2,+00000000
	bne	a3,a7,00000000230149A4

l2301499E:
	andi	a3,a6,+000000E0
	c.bnez	a3,00000000230149BC

l230149A4:
	c.li	a3,00000000

l230149A6:
	sra	a2,a6,a3
	c.andi	a2,00000001
	c.add	a5,a2
	c.addi	a3,00000001
	andi	a5,a5,+000000FF
	bne	a3,t1,00000000230149A6

l230149B8:
	c.addi	a4,00000001
	c.j	0000000023014986

l230149BC:
	addi	a5,zero,+00000026
	c.j	000000002301498E

;; llm_util_apply_bd_addr: 230149C2
;;   Called from:
;;     2301387C (in lld_con_start)
;;     23015ADC (in llm_set_adv_en)
;;     23015EDA (in llm_set_scan_en)
llm_util_apply_bd_addr proc
	c.li	a5,00000001
	beq	a0,a5,00000000230149CE

l230149C8:
	c.li	a5,00000003
	bne	a0,a5,00000000230149DC

l230149CE:
	lui	a0,0004201A
	c.li	a1,00000001
	addi	a0,a0,+000003B3

l230149D8:
	jal	zero,0000000023012AEA

l230149DC:
	lui	a0,0004201A
	c.li	a1,00000000
	addi	a0,a0,+000003B9
	c.j	00000000230149D8

;; llm_util_check_evt_mask: 230149E8
;;   Called from:
;;     2300ED78 (in llc_le_con_cmp_evt_send)
;;     2300ED80 (in llc_le_con_cmp_evt_send)
;;     2300EE5C (in llc_le_con_cmp_evt_send)
;;     2300F09C (in llc_le_ch_sel_algo_evt_send)
;;     2300F3AA (in llc_feats_rd_event_send)
;;     2300F60C (in llc_con_update_ind)
;;     23015176 (in llm_le_adv_report_ind)
;;     23015292 (in llm_le_adv_report_ind)
;;     23017778 (in llc_llcp_reject_ind)
;;     23017BE6 (in fn23017B9A)
;;     23017C20 (in fn23017C04)
;;     23018502 (in llcp_length_rsp_handler)
;;     23018684 (in llcp_con_param_rsp_handler)
;;     23018CFE (in llcp_con_param_req_handler)
;;     23019366 (in llcp_length_req_handler)
;;     23019BF0 (in llc_enc_mgt_ind_handler)
;;     23019FE2 (in llc_enc_mgt_ind_handler)
;;     2301A52A (in llm_ecc_result_ind_handler)
;;     2301A584 (in llm_ecc_result_ind_handler)
;;     2301B35A (in hci_le_con_update_cmd_handler)
llm_util_check_evt_mask proc
	lui	a5,0004201A
	srli	a4,a0,00000003
	addi	a5,a5,+00000358
	c.add	a5,a4
	lbu	a5,a5,+00000038
	c.slli	a4,03
	c.sub	a0,a4
	sra	a0,a5,a0
	c.andi	a0,00000001
	c.jr	ra

;; llm_util_get_channel_map: 23014A06
;;   Called from:
;;     2300F14E (in llc_start)
;;     2300F156 (in llc_start)
;;     23013822 (in lld_con_start)
;;     23019CD8 (in llc_chnl_assess_timer_handler)
llm_util_get_channel_map proc
	lui	a5,0004200E
	lw	t1,a5,+0000013C
	lui	a1,0004201A
	c.li	a2,00000005
	addi	a1,a1,+0000038A
	c.jr	t1

;; llm_util_get_supp_features: 23014A1A
;;   Called from:
;;     2300F1C6 (in llc_start)
;;     23018EB2 (in llc_llcp_feats_req_pdu_send)
;;     23018EDE (in llc_llcp_feats_rsp_pdu_send)
llm_util_get_supp_features proc
	lui	a5,0004200E
	lw	t1,a5,+0000013C
	lui	a1,00023082
	c.li	a2,00000008
	addi	a1,a1,+00000704
	c.jr	t1

;; llm_util_adv_data_update: 23014A2E
;;   Called from:
;;     2300FB3E (in lld_evt_schedule)
llm_util_adv_data_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	c.swsp	ra,00000084
	addi	a5,s0,+00000358
	c.lw	a5,20(a5)
	addi	s0,s0,+00000358
	c.lw	a5,0(a0)
	c.beqz	a0,0000000023014A5A

l23014A46:
	c.addi	a0,0000000C
	jal	ra,0000000023015BB8
	c.lw	s0,20(a5)
	c.lw	a5,0(a0)
	jal	ra,000000002300DCB6
	c.lw	s0,20(a5)
	sw	zero,a5,+00000000

l23014A5A:
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023014A74

l23014A60:
	c.addi	a0,0000000C
	jal	ra,0000000023015C8A
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	jal	ra,000000002300DCB6
	c.lw	s0,20(a5)
	sw	zero,a5,+00000004

l23014A74:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llm_util_bl_check: 23014A7C
;;   Called from:
;;     23014B2C (in llm_util_bd_addr_in_wl)
;;     23014F7C (in llm_con_req_ind)
;;     2301622A (in llm_wl_dev_add_hdl)
;;     23016286 (in llm_wl_dev_rem_hdl)
;;     230162E2 (in llm_create_con)
;;     2301BDDC (in hci_le_wl_mngt_cmd_handler)
llm_util_bl_check proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201A
	c.swsp	s0,00000014
	lw	s0,a5,+00000370
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s1,a0
	andi	s2,a1,+00000001
	c.li	s3,00000001

l23014A98:
	c.bnez	s0,0000000023014A9E

l23014A9A:
	c.li	a0,00000000
	c.j	0000000023014AEC

l23014A9E:
	c.bnez	s1,0000000023014AAC

l23014AA0:
	bne	a3,s3,0000000023014AAC

l23014AA4:
	sb	zero,s0,+0000000D

l23014AA8:
	c.lw	s0,0(s0)
	c.j	0000000023014A98

l23014AAC:
	addi	a1,s0,+00000004
	c.mv	a0,s1
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,000000002300C476
	c.lwsp	tp,00000084
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	c.beqz	a0,0000000023014AA8

l23014AC4:
	lbu	a5,s0,+0000000C
	bne	a5,s2,0000000023014AA8

l23014ACC:
	c.beqz	a2,0000000023014AD6

l23014ACE:
	lhu	a5,s0,+0000000A
	sh	a5,a2,+00000000

l23014AD6:
	c.li	a5,00000001
	bne	a3,a5,0000000023014AFA

l23014ADC:
	sb	zero,s0,+0000000D

l23014AE0:
	c.li	a0,0000000B
	c.beqz	a4,0000000023014AEC

l23014AE4:
	lbu	a5,s0,+0000000D
	sb	a5,a4,+00000000

l23014AEC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23014AFA:
	c.li	a2,00000002
	bne	a3,a2,0000000023014AE0

l23014B00:
	sb	a5,s0,+0000000D
	c.j	0000000023014AE0

;; llm_util_bd_addr_in_wl: 23014B06
;;   Called from:
;;     23016202 (in llm_wl_dev_add_hdl)
;;     23016270 (in llm_wl_dev_rem_hdl)
llm_util_bd_addr_in_wl proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	sb	zero,sp,+0000000F
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s0,a2
	c.beqz	a2,0000000023014B20

l23014B1C:
	sb	zero,a2,+00000000

l23014B20:
	addi	a4,sp,+0000000F
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023014A7C
	c.li	a5,0000000B
	bne	a0,a5,0000000023014B3E

l23014B36:
	c.beqz	s0,0000000023014B3E

l23014B38:
	c.li	a5,00000001
	sb	a5,s0,+00000000

l23014B3E:
	lbu	a5,sp,+0000000F
	c.bnez	a5,0000000023014B58

l23014B44:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230148BA
	c.li	a5,00000003
	bltu	a5,a0,0000000023014B58

l23014B52:
	c.li	a5,00000001
	sb	a5,sp,+0000000F

l23014B58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; llm_util_bl_add: 23014B68
;;   Called from:
;;     23014F8C (in llm_con_req_ind)
;;     2301549A (in llm_con_req_tx_cfm)
llm_util_bl_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s3,a0
	c.mv	s4,a1
	c.li	a0,00000010
	c.li	a1,00000000
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a2
	jal	ra,000000002300D942
	c.li	s0,00000007
	c.beqz	a0,0000000023014BD8

l23014B88:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	s1,a0,+00000004
	c.mv	s0,a0
	c.li	a2,00000006
	c.mv	a1,s3
	c.mv	a0,s1
	c.jalr	a5
	sh	s2,s0,+0000000A
	andi	s2,s4,+00000001
	sb	s2,s0,+0000000C
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,00000000230148BA
	sltiu	a0,a0,+00000004
	sb	a0,s0,+0000000D
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+00000370
	jal	ra,000000002300C1E6
	lbu	a5,s0,+0000000D
	c.li	s0,00000000
	c.beqz	a5,0000000023014BD8

l23014BD0:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023016196

l23014BD8:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; llm_util_bl_rem: 23014BEA
;;   Called from:
;;     2300ECD8 (in llc_stop)
llm_util_bl_rem proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201A
	c.swsp	s0,00000004
	lw	s0,a5,+00000370
	c.swsp	ra,00000084

l23014BF8:
	c.bnez	s0,0000000023014C04

l23014BFA:
	c.li	a0,00000002

l23014BFC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23014C04:
	lhu	a5,s0,+0000000A
	beq	a5,a0,0000000023014C10

l23014C0C:
	c.lw	s0,0(s0)
	c.j	0000000023014BF8

l23014C10:
	lui	a0,0004201A
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,a0,+00000370
	jal	ra,000000002300C286
	lbu	a5,s0,+0000000D
	c.beqz	a5,0000000023014C32

l23014C26:
	lbu	a1,s0,+0000000C
	addi	a0,s0,+00000004
	jal	ra,000000002301614A

l23014C32:
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.li	a0,00000000
	c.j	0000000023014BFC

;; llm_end_evt_defer: 23014C3C
;;   Called from:
;;     2300FDCE (in lld_evt_deffered_elt_handler)
llm_end_evt_defer proc
	c.addi16sp	FFFFFFD0
	c.li	a0,00000000
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	jal	ra,000000002301732C
	lui	s0,0004201A
	andi	a0,a0,+000000F0
	c.li	a5,00000010
	addi	s0,s0,+00000358
	bne	a0,a5,0000000023014CAC

l23014C5A:
	c.lw	s0,20(a1)
	c.li	a5,00000001
	lbu	a4,a1,+0000001C
	bne	a4,a5,0000000023014CAC

l23014C66:
	lbu	a5,a1,+00000021
	c.bnez	a5,0000000023014CAC

l23014C6C:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.li	a2,00000006
	c.addi	a1,00000010
	c.addi4spn	a0,00000014
	c.jalr	a5
	c.lw	s0,20(a5)
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	lbu	a5,a5,+00000020
	addi	a0,zero,+0000003C
	sb	a5,sp,+0000001A
	jal	ra,000000002300ED60
	c.lw	s0,72(a0)
	c.li	a1,00000001
	c.li	a2,00000000
	jal	ra,000000002300FC74
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+0000000F
	c.li	a0,00000000
	jal	ra,00000000230172BC

l23014CAC:
	lbu	a4,s0,+0000005A
	c.li	a5,00000003
	beq	a4,a5,0000000023014D72

l23014CB6:
	lbu	a5,s0,+00000059
	c.beqz	a5,0000000023014D72

l23014CBC:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.li	a3,00000004
	c.addi	a2,0000001F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	lui	a5,00028000
	sb	zero,s0,+00000059
	c.lw	a5,0(a4)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	lbu	a3,s0,+0000005A
	c.li	a4,00000001
	bne	a3,a4,0000000023014D30

l23014CEC:
	lw	a4,a5,+000001AC
	lui	a3,0004201A
	lbu	a3,a3,+00000355
	andi	a4,a4,-00000040
	c.or	a4,a3
	sw	a4,a5,+000001AC
	c.lw	a5,120(a3)
	lui	a4,0004201A
	lbu	a4,a4,+00000354
	c.slli	a3,04
	c.srli	a3,00000004
	c.slli	a4,1C
	c.or	a4,a3
	c.sw	a5,120(a4)
	lui	a3,00040003
	lw	a5,a3,-000007B0
	lui	a4,000D0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00020000
	c.or	a5,a4
	sw	a5,a3,+00000850

l23014D30:
	lui	a3,00028000
	c.lw	a3,0(a5)
	c.lui	a4,FFFF8000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	a3,0(a5)
	lbu	a4,s0,+0000005A
	c.li	a5,00000000
	c.beqz	a4,0000000023014D56

l23014D4A:
	lui	a5,00028008
	lhu	a5,a5,+0000018A
	c.slli	a5,10
	c.srli	a5,00000010

l23014D56:
	sh	a5,a0,+00000002
	c.li	a5,00000003
	sb	a5,s0,+0000005A
	sb	zero,a0,+00000000
	jal	ra,000000002300BD76
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,000000002300DC6C

l23014D72:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; llm_pdu_defer: 23014D7A
;;   Called from:
;;     23011FF6 (in lld_pdu_check)
llm_pdu_defer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	a2,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	jal	ra,000000002301732C
	andi	a3,a0,+0000000F
	c.li	a5,00000002
	c.lwsp	a2,00000084
	bne	a3,a5,0000000023014DC0

l23014D9C:
	andi	a5,s2,+00000003
	c.bnez	a5,0000000023014E26

l23014DA2:
	c.li	s0,00000000
	c.beqz	a2,0000000023014DAC

l23014DA6:
	c.mv	a0,s1
	c.jal	00000000230153BE
	c.li	s0,00000001

l23014DAC:
	c.mv	a0,s1
	jal	ra,000000002300EB30
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23014DC0:
	addi	a5,zero,+00000023
	c.li	s0,00000000
	beq	a0,a5,0000000023014DAC

l23014DCA:
	c.beqz	a0,0000000023014DAC

l23014DCC:
	addi	a5,zero,+00000024
	c.li	s0,00000000
	beq	a0,a5,0000000023014DAC

l23014DD6:
	andi	a5,s2,+0000001F
	c.bnez	a5,0000000023014DAC

l23014DDC:
	c.li	a5,0000000E
	add	a5,s1,a5
	lui	a4,00028008
	addi	a4,a4,+000003D2
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.li	a4,00000006
	c.andi	a5,0000000F
	bltu	a4,a5,0000000023014DAC

l23014DF8:
	c.li	a4,00000001
	sll	a5,a4,a5
	andi	a2,a5,+00000057
	c.bnez	a2,0000000023014E1C

l23014E04:
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023014DAC

l23014E0A:
	andi	a0,a0,+000000F0
	c.li	a5,00000010
	bne	a0,a5,0000000023014DAC

l23014E14:
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023014E8E
	c.j	0000000023014DAC

l23014E1C:
	bne	a3,a4,0000000023014DAC

l23014E20:
	c.mv	a0,s1
	c.jal	0000000023015036
	c.j	0000000023014DAC

l23014E26:
	addi	a5,zero,+00000023
	bne	a0,a5,0000000023014DCC

l23014E2E:
	c.li	s0,00000000
	c.j	0000000023014DAC

;; llm_wlpub_addr_set: 23014E32
;;   Called from:
;;     23015F56 (in llm_wl_clr)
;;     23016188 (in llm_wl_dev_add)
;;     230161D4 (in llm_wl_dev_rem)
llm_wlpub_addr_set proc
	c.li	a5,00000006
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+000001FE
	addi	a4,a1,+00000006
	c.add	a0,a5

l23014E46:
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.addi	a1,00000002
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000000
	c.addi	a0,00000002
	bne	a4,a1,0000000023014E46

l23014E5E:
	c.jr	ra

;; llm_wlpriv_addr_set: 23014E60
;;   Called from:
;;     23015F3E (in llm_wl_clr)
;;     23016190 (in llm_wl_dev_add)
;;     230161B6 (in llm_wl_dev_rem)
llm_wlpriv_addr_set proc
	c.li	a5,00000006
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+00000216
	addi	a4,a1,+00000006
	c.add	a0,a5

l23014E74:
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.addi	a1,00000002
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000000
	c.addi	a0,00000002
	bne	a4,a1,0000000023014E74

l23014E8C:
	c.jr	ra

;; llm_con_req_ind: 23014E8E
;;   Called from:
;;     23014E18 (in llm_pdu_defer)
llm_con_req_ind proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.li	s1,0000000E
	add	s1,a0,s1
	c.swsp	s4,00000024
	lui	s4,00028008
	addi	a5,s4,+000003D6
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	ra,000000AC
	c.mv	s0,a1
	lui	s2,0004200E
	c.add	a5,s1
	lhu	a1,a5,+00000000
	lw	a5,s2,+0000013C
	addi	a2,zero,+00000022
	c.mv	s3,a0
	c.add	a1,s4
	c.addi4spn	a0,0000001C
	c.jalr	a5
	lhu	a5,sp,+00000036
	c.lui	a4,00001000
	addi	a2,a4,-0000038A
	addi	a3,a5,-0000000A
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a2,a3,000000002301500C

l23014EDC:
	lhu	a1,sp,+00000032
	addi	a4,a4,-00000386
	addi	a2,a1,-00000006
	c.slli	a2,10
	c.srli	a2,00000010
	bltu	a4,a2,000000002301500C

l23014EF0:
	lhu	a3,sp,+00000034
	addi	a4,zero,+000001F3
	bltu	a4,a3,000000002301500C

l23014EFC:
	c.addi	a3,00000001
	add	a3,a3,a1
	c.slli	a5,02
	bgeu	a3,a5,000000002301500C

l23014F08:
	addi	a0,sp,+00000006
	jal	ra,000000002301A06A
	bne	a0,zero,000000002301500C

l23014F14:
	andi	s0,s0,+00000200
	bne	s0,zero,000000002301501C

l23014F1C:
	addi	a5,s4,+000003D8
	c.add	a5,s1
	lhu	s0,a5,+00000000
	c.slli	s0,10
	c.srli	s0,00000010
	beq	s0,zero,000000002301501C

l23014F2E:
	addi	a1,s0,+00000018
	lw	a5,s2,+0000013C
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	a2,00000006
	c.add	a1,s4
	c.addi4spn	a0,0000001C
	c.jalr	a5
	addi	a4,zero,+00000034
	addi	a5,s0,-0000022E
	srl	a5,a5,a4
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	addi	a4,s4,+0000022E
	c.add	a5,a4
	lhu	a4,a5,+00000000
	lhu	a5,a5,+00000000
	c.andi	a4,00000001
	c.andi	a5,00000002
	c.or	a5,a4
	sb	a5,sp,+00000016

l23014F6E:
	lbu	a1,sp,+00000016
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,sp,+00000006
	c.addi4spn	a0,0000001C
	jal	ra,0000000023014A7C
	c.bnez	a0,000000002301500C

l23014F82:
	lhu	a2,sp,+00000006
	lbu	a1,sp,+00000016
	c.addi4spn	a0,0000001C
	jal	ra,0000000023014B68
	c.bnez	a0,0000000023014FFC

l23014F92:
	lhu	a5,sp,+00000032
	sh	s0,sp,+0000000E
	c.li	a2,00000006
	sh	a5,sp,+00000008
	lhu	a5,sp,+00000034
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000010
	sh	a5,sp,+0000000A
	lhu	a5,sp,+00000036
	lui	s0,0004201A
	addi	s0,s0,+00000358
	sh	a5,sp,+0000000C
	lbu	a5,sp,+0000003D
	srli	a4,a5,00000005
	c.andi	a5,0000001F
	sb	a5,sp,+00000017
	lw	a5,s2,+0000013C
	sb	a4,sp,+00000018
	c.jalr	a5
	lhu	a3,sp,+00000006
	c.lw	s0,72(a2)
	c.mv	a4,s3
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000008
	jal	ra,00000000230142CA
	c.mv	a1,a0
	c.sw	s0,72(a0)
	c.addi4spn	a0,00000008
	jal	ra,000000002300F0D6
	lhu	a0,sp,+00000006
	c.addi4spn	a1,00000038
	sw	zero,s0,+00000048
	jal	ra,000000002301A130

l23014FFC:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+0000000F
	c.li	a0,00000000
	jal	ra,00000000230172BC

l2301500C:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2301501C:
	lui	a5,00028008
	addi	a5,a5,+000003D2
	c.add	s1,a5
	lhu	a5,s1,+00000000
	c.li	s0,00000000
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,sp,+00000016
	c.j	0000000023014F6E

;; llm_le_adv_report_ind: 23015036
;;   Called from:
;;     23014E22 (in llm_pdu_defer)
llm_le_adv_report_ind proc
	c.addi16sp	FFFFFFB0
	c.swsp	s5,00000098
	c.li	s5,0000000E
	add	s5,a0,s5
	lui	a5,00028008
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	addi	s3,a5,+000003D2
	addi	s4,a5,+000003D6
	c.swsp	s2,00000020
	c.swsp	s7,00000094
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s6,00000018
	c.swsp	s8,00000014
	c.add	s3,s5
	c.add	s4,s5
	lhu	s1,s3,+00000000
	lui	s2,0004200E
	lhu	a1,s4,+00000000
	lw	a4,s2,+0000013C
	c.li	a2,00000006
	c.add	a1,a5
	c.addi4spn	a0,00000008
	c.jalr	a4
	lui	s7,0004201A
	addi	a5,s7,+00000358
	c.lw	a5,16(a5)
	c.andi	s1,0000000F
	addi	s7,s7,+00000358
	lbu	a4,a5,+0000000A
	c.li	a5,00000001
	beq	a4,a5,0000000023015098

l23015094:
	bne	s1,a5,00000000230150D6

l23015098:
	lw	s0,s7,+00000008

l2301509C:
	bne	s0,zero,000000002301524C

l230150A0:
	lui	s6,0004201A
	addi	a0,s6,+00000360
	jal	ra,000000002300C424
	c.li	a5,0000000A
	beq	a0,a5,0000000023015234

l230150B2:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002300D942
	lw	a5,s2,+0000013C
	c.mv	s0,a0
	c.addi4spn	a1,00000008
	c.li	a2,00000006
	c.addi	a0,00000005
	c.jalr	a5
	c.mv	a1,s0
	sb	s1,s0,+00000004
	addi	a0,s6,+00000360
	jal	ra,000000002300C1E6

l230150D6:
	lui	a5,0004200E
	lbu	a5,a5,+00000129
	andi	a5,a5,+000000FF
	bne	a5,zero,0000000023015234

l230150E6:
	jal	ra,000000002300DC30
	c.li	a5,00000014
	bltu	a5,a0,0000000023015234

l230150F0:
	lui	s8,00028008
	addi	a5,s8,+000003D8
	c.add	a5,s5
	lhu	s0,a5,+00000000
	addi	a5,s8,+000003D0
	c.add	a5,s5
	lhu	s6,a5,+00000000
	lhu	a1,s4,+00000000
	lw	a5,s2,+0000013C
	c.li	a2,00000006
	c.addi	a1,00000006
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a1,s8
	c.addi4spn	a0,00000010
	c.jalr	a5
	lhu	a1,s4,+00000000
	lw	a5,s2,+0000013C
	c.li	a2,00000006
	c.add	a1,s8
	c.addi4spn	a0,00000018
	c.jalr	a5
	c.slli	s0,10
	c.slli	s6,10
	c.li	a5,00000001
	c.srli	s0,00000010
	srli	s6,s6,00000010
	bne	s1,a5,0000000023015290

l2301513E:
	lw	a5,s7,+00000010
	lbu	a5,a5,+00000008
	bgeu	s1,a5,0000000023015290

l2301514A:
	lhu	a5,s3,+00000000
	c.srli	a5,00000007
	c.andi	a5,00000001
	beq	a5,zero,0000000023015290

l23015156:
	lbu	a5,sp,+00000015
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,0000000023015290

l23015166:
	c.beqz	s0,0000000023015174

l23015168:
	andi	a5,s6,+00000600
	addi	a4,zero,+00000600
	bne	a5,a4,0000000023015290

l23015174:
	c.li	a0,0000000A
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023015234

l2301517C:
	c.lui	a0,00001000
	c.li	a3,00000012
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,0000000B
	lui	s6,00028008
	sb	a5,a0,+00000000
	c.li	s7,00000001
	addi	a5,s6,+000003D4
	sb	s7,a0,+00000001
	c.add	s5,a5
	c.mv	s1,a0
	lui	a5,00042019
	lhu	a0,s5,+00000000
	lw	a5,a5,+00000640
	addi	s5,s1,+0000000B
	andi	a0,a0,+000000FF
	c.jalr	a5
	sb	a0,s1,+00000011
	lhu	a5,s3,+00000000
	addi	a0,s1,+00000004
	c.andi	a5,0000000F
	sb	a5,s1,+00000002
	c.beqz	s0,0000000023015264

l230151CE:
	addi	a1,s0,+00000018
	lw	a5,s2,+0000013C
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a1,s6
	c.li	a2,00000006
	c.jalr	a5
	addi	a5,s0,-0000022E
	addi	s0,zero,+00000034
	srl	a5,a5,s0
	addi	s6,s6,+0000022E
	addi	a3,zero,+00000040
	andi	a5,a5,+000000FF
	add	a5,a5,s0
	c.add	a5,s6
	lhu	a5,a5,+00000000
	c.andi	a5,00000001
	sb	a5,s1,+00000003
	lbu	a4,sp,+0000001D
	andi	a4,a4,+000000C0
	bne	a4,a3,000000002301521C

l23015214:
	ori	a5,a5,+00000002
	sb	a5,s1,+00000003

l2301521C:
	lw	a5,s2,+0000013C
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.mv	a0,s5
	c.jalr	a5
	c.li	a5,00000001
	sb	a5,s1,+0000000A

l2301522E:
	c.mv	a0,s1
	jal	ra,000000002300BD76

l23015234:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.addi16sp	00000050
	c.jr	ra

l2301524C:
	addi	a1,s0,+00000005
	c.addi4spn	a0,00000008
	jal	ra,000000002300C476
	c.beqz	a0,0000000023015260

l23015258:
	lbu	a5,s0,+00000004
	beq	a5,s1,0000000023015234

l23015260:
	c.lw	s0,0(s0)
	c.j	000000002301509C

l23015264:
	lhu	a1,s4,+00000000
	lw	a5,s2,+0000013C
	c.li	a2,00000006
	c.add	a1,s6
	c.jalr	a5
	lhu	a5,s3,+00000000
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,s1,+00000003
	lw	a5,s2,+0000013C
	c.mv	a0,s5
	c.jalr	a5
	sb	s7,s1,+0000000A
	c.j	000000002301522E

l23015290:
	c.li	a0,00000001
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023015234

l23015298:
	c.lui	a0,00001000
	addi	a3,zero,+0000002B
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,00000001
	sb	a5,a0,+00000001
	lui	a5,00028008
	addi	a5,a5,+000003D4
	c.li	s7,00000002
	sb	s7,a0,+00000000
	c.add	s5,a5
	c.mv	s1,a0
	lui	a5,00042019
	lhu	a0,s5,+00000000
	lw	a5,a5,+00000640
	andi	a0,a0,+000000FF
	c.jalr	a5
	sb	a0,s1,+0000002A
	lhu	a5,s3,+00000000
	c.andi	a5,0000000F
	beq	a5,s7,000000002301532C

l230152E2:
	c.li	a4,00000006
	beq	a5,a4,0000000023015330

l230152E8:
	sb	a5,s1,+00000002

l230152EC:
	lbu	a4,s1,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023015336

l230152F6:
	sb	zero,s1,+0000000A

l230152FA:
	addi	a0,s1,+00000004
	lw	a5,s2,+0000013C
	c.beqz	s0,0000000023015310

l23015304:
	andi	s6,s6,+00000600
	addi	a4,zero,+00000200
	bne	s6,a4,0000000023015372

l23015310:
	lhu	a4,s4,+00000000
	lui	a1,00028008
	c.li	a2,00000006
	c.add	a1,a4
	c.jalr	a5
	lhu	a5,s3,+00000000
	c.srli	a5,00000006
	c.andi	a5,00000001

l23015326:
	sb	a5,s1,+00000003
	c.j	000000002301522E

l2301532C:
	c.li	a5,00000003
	c.j	00000000230152E8

l23015330:
	sb	s7,s1,+00000002
	c.j	00000000230152EC

l23015336:
	lhu	a5,s3,+00000000
	c.li	a4,0000001F
	c.srli	a5,00000008
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002301536C

l23015348:
	sb	a5,s1,+0000000A

l2301534C:
	lhu	a5,s4,+00000000
	lw	a4,s2,+0000013C
	lbu	a2,s1,+0000000A
	c.addi	a5,00000006
	c.slli	a5,10
	c.srli	a5,00000010
	lui	a1,00028008
	c.add	a1,a5
	addi	a0,s1,+0000000B
	c.jalr	a4
	c.j	00000000230152FA

l2301536C:
	sb	a4,s1,+0000000A
	c.j	000000002301534C

l23015372:
	addi	a1,s0,+00000018
	c.slli	a1,10
	lui	s2,00028008
	c.srli	a1,00000010
	c.add	a1,s2
	c.li	a2,00000006
	c.jalr	a5
	addi	a5,s0,-0000022E
	addi	s0,zero,+00000034
	srl	a5,a5,s0
	addi	s2,s2,+0000022E
	addi	a3,zero,+00000040
	andi	a5,a5,+000000FF
	add	a5,a5,s0
	c.add	a5,s2
	lhu	a5,a5,+00000000
	c.andi	a5,00000001
	sb	a5,s1,+00000003
	lbu	a4,sp,+0000001D
	andi	a4,a4,+000000C0
	bne	a4,a3,000000002301522E

l230153B8:
	ori	a5,a5,+00000002
	c.j	0000000023015326

;; llm_con_req_tx_cfm: 230153BE
;;   Called from:
;;     23014DA8 (in llm_pdu_defer)
llm_con_req_tx_cfm proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.li	s1,0000000E
	add	s1,a0,s1
	c.swsp	s0,0000002C
	lui	s0,00028008
	addi	a5,s0,+000003D6
	c.swsp	ra,000000AC
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	lui	s4,0004200E
	c.li	a2,00000006
	c.add	a5,s1
	lhu	a1,a5,+00000000
	lw	a5,s4,+0000013C
	c.mv	s2,a0
	c.add	a1,s0
	c.addi4spn	a0,00000008
	c.jalr	a5
	lhu	a1,s0,+000002EC
	lw	a5,s4,+0000013C
	c.li	a2,00000016
	c.add	a1,s0
	c.addi4spn	a0,00000028
	c.jalr	a5
	addi	a5,s0,+000003D8
	c.add	a5,s1
	lhu	s3,a5,+00000000
	c.slli	s3,10
	srli	s3,s3,00000010
	beq	s3,zero,00000000230154DC

l23015416:
	addi	a1,s3,+00000018
	lw	a5,s4,+0000013C
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a1,s0
	c.li	a2,00000006
	c.addi4spn	a0,0000001C
	c.jalr	a5
	addi	a4,zero,+00000034
	addi	a5,s3,-0000022E
	srl	a5,a5,a4
	addi	s0,s0,+0000022E
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	c.add	s0,a5
	lhu	a4,s0,+00000000
	lhu	a5,s0,+00000000
	c.andi	a4,00000001
	c.andi	a5,00000002
	c.or	a5,a4
	sb	a5,sp,+00000022

l23015456:
	lhu	a5,sp,+00000032
	lui	s0,0004201A
	addi	s0,s0,+00000358
	sh	a5,sp,+00000014
	lhu	a5,sp,+00000034
	sh	s3,sp,+0000001A
	sh	a5,sp,+00000016
	lhu	a5,sp,+00000036
	sh	a5,sp,+00000018
	lbu	a5,sp,+0000003D
	srli	a4,a5,00000005
	c.andi	a5,0000001F
	sb	a5,sp,+00000023
	c.lw	s0,84(a5)
	sb	a4,sp,+00000024
	c.beqz	a5,00000000230154BC

l23015490:
	lhu	a2,s0,+00000044
	lbu	a1,sp,+00000022
	c.addi4spn	a0,0000001C
	jal	ra,0000000023014B68
	c.bnez	a0,00000000230154BC

l230154A0:
	lhu	a1,s0,+00000044
	c.lw	s0,84(a0)
	c.mv	a3,s2
	c.addi4spn	a2,00000014
	jal	ra,0000000023013C2C
	c.mv	a1,a0
	c.sw	s0,84(a0)
	c.addi4spn	a0,00000014
	jal	ra,000000002300F0D6
	sw	zero,s0,+00000054

l230154BC:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+000000F0
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l230154DC:
	addi	s0,s0,+000003D2
	c.add	s0,s1
	lhu	a5,s0,+00000000
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	c.srli	a5,00000006
	c.andi	a5,00000001
	sb	a5,sp,+00000022
	lw	a5,s4,+0000013C
	c.addi4spn	a0,0000001C
	c.jalr	a5
	c.j	0000000023015456

;; llm_common_cmd_complete_send: 230154FC
;;   Called from:
;;     2301A662 (in lld_stop_ind_handler)
;;     2301A6AE (in lld_stop_ind_handler)
;;     2301A6D6 (in lld_stop_ind_handler)
;;     2301B65C (in hci_vsc_set_tx_pwr)
;;     2301B688 (in hci_le_wr_rfpath_compensation_cmd_handler)
;;     2301B6B4 (in hci_wr_le_host_supp_cmd_handler)
;;     2301B708 (in hci_le_wr_suggted_dft_data_len_cmd_handler)
;;     2301B734 (in hci_le_set_evt_mask_cmd_handler)
;;     2301BB68 (in hci_host_nb_cmp_pkts_cmd_handler)
;;     2301BBAE (in hci_host_buf_size_cmd_handler)
;;     2301BBCE (in hci_set_evt_mask_page_2_cmd_handler)
;;     2301BBEE (in hci_set_evt_mask_cmd_handler)
;;     2301BC24 (in hci_set_ctrl_to_host_flow_ctrl_cmd_handler)
;;     2301BC40 (in hci_reset_cmd_handler)
;;     2301BC72 (in hci_le_tx_test_cmd_handler)
;;     2301BCAA (in hci_le_rx_test_cmd_handler)
;;     2301BDE4 (in hci_le_wl_mngt_cmd_handler)
;;     2301BE70 (in hci_le_set_host_ch_class_cmd_handler)
;;     2301BF70 (in hci_le_set_scan_en_cmd_handler)
;;     2301C008 (in hci_le_set_scan_param_cmd_handler)
;;     2301C072 (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2301C118 (in hci_le_set_adv_en_cmd_handler)
;;     2301C17A (in hci_le_set_adv_data_cmd_handler)
;;     2301C1C6 (in hci_le_set_adv_param_cmd_handler)
;;     2301C218 (in hci_le_set_rand_add_cmd_handler)
;;     2301C348 (in hci_le_create_con_cancel_cmd_handler)
llm_common_cmd_complete_send proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.lui	a0,00001000
	c.swsp	s0,00000004
	c.li	a3,00000001
	c.mv	s0,a1
	addi	a0,a0,-000007FF
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llm_common_cmd_status_send: 23015522
;;   Called from:
;;     2301BB2A (in hci_le_generate_dhkey_cmd_handler)
;;     2301BEFA (in hci_le_create_con_cmd_handler)
;;     2301C24E (in hci_le_rd_local_p256_public_key_cmd_handler)
llm_common_cmd_status_send proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.lui	a0,00001000
	c.swsp	s0,00000004
	c.li	a3,00000001
	c.mv	s0,a1
	addi	a0,a0,-000007FE
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llm_test_mode_start_tx: 23015548
;;   Called from:
;;     2301BC6A (in hci_le_tx_test_cmd_handler)
llm_test_mode_start_tx proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000027
	bltu	a5,a4,000000002301577E

l23015554:
	lbu	a4,a0,+00000001
	c.li	a5,00000012
	beq	a4,zero,0000000023015780

l2301555E:
	c.addi16sp	FFFFFEE0
	sw	s3,sp,+0000010C
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s4,sp,+00000108
	lbu	a4,a0,+00000002
	c.li	s3,00000007
	bltu	s3,a4,0000000023015706

l23015582:
	c.mv	s0,a0
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,0004201A
	addi	a0,a0,+000001C8
	jal	ra,000000002300C252
	c.mv	s1,a0
	csrrw	zero,mstatus,zero
	lui	s2,0004201A
	addi	a0,s2,+000001C0
	jal	ra,000000002300C252
	c.mv	s4,a0
	c.li	a5,00000007
	beq	s1,zero,0000000023015706

l230155B2:
	beq	a0,zero,0000000023015706

l230155B6:
	lhu	a5,a0,+00000004
	c.li	a2,0000000A
	lhu	a4,s1,+00000006
	add	a5,a5,a2
	lui	a3,00028008
	addi	a1,a3,+000002CE
	addi	a3,a3,+000002D2
	c.add	a5,a1
	sh	a4,a5,+00000000
	lhu	a4,a0,+00000004
	addi	a1,zero,+00000024
	c.li	a0,00000000
	add	a4,a4,a2
	c.add	a4,a3
	lhu	a5,a4,+00000000
	c.lui	a3,00008000
	c.slli	a5,11
	c.srli	a5,00000011
	c.or	a5,a3
	sh	a5,a4,+00000000
	jal	ra,00000000230172BC
	lui	a4,00028000
	c.lw	a4,0(a5)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00000040
	c.or	a5,a3
	c.sw	a4,0(a5)
	lbu	a5,s0,+00000002
	bltu	s3,a5,0000000023015650

l23015618:
	c.li	a3,00000001
	sll	a3,a3,a5
	andi	a2,a3,+000000F6
	bne	a2,zero,0000000023015724

l23015626:
	c.andi	a3,00000009
	c.beqz	a3,0000000023015650

l2301562A:
	lw	a3,a4,+000000E0
	c.lui	a2,FFFFE000
	c.andi	a5,00000001
	c.addi	a2,FFFFFFFF
	c.and	a3,a2
	c.slli	a5,0D
	c.or	a5,a3
	sw	a5,a4,+000000E0
	lw	a5,a4,+000000E0
	c.lui	a3,FFFFF000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	c.lui	a3,00001000
	c.or	a5,a3
	sw	a5,a4,+000000E0

l23015650:
	lui	s1,0004201A
	addi	a5,s1,+00000358
	c.lw	a5,20(a5)
	addi	s1,s1,+00000358
	c.bnez	a5,00000000230156BA

l23015660:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s1,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s1,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s1,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l230156BA:
	lhu	a5,s4,+00000004
	c.li	a4,0000000A
	lbu	a3,s0,+00000002
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000002CC
	c.li	a0,0000000C
	c.li	a2,00000000
	c.add	a5,a4
	lbu	a4,s0,+00000001
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,a5,+00000000
	lhu	a5,s4,+00000004
	lbu	a1,s0,+00000000
	add	a5,a5,a0
	addi	a0,s2,+000001C0
	c.addi	a5,00000010
	c.add	a0,a5
	jal	ra,00000000230145E0
	c.sw	s1,72(a0)
	c.li	a5,0000001F
	c.beqz	a0,0000000023015706

l23015700:
	sb	zero,s1,+0000005A
	c.li	a5,00000000

l23015706:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	lw	s3,sp,+0000010C
	lw	s4,sp,+00000108
	c.mv	a0,a5
	c.addi16sp	00000120
	c.jr	ra

l23015724:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000006
	lbu	a2,s0,+00000001
	c.li	a1,00000000
	bltu	a4,a5,0000000023015744

l23015736:
	lui	a4,00023082
	addi	a4,a4,+000006F4
	c.add	a5,a4
	lbu	a1,a5,+00000000

l23015744:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.mv	a0,sp
	c.jalr	a5
	lhu	a0,s1,+00000006
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lbu	a2,s0,+00000001
	lui	a4,00028008
	c.add	a0,a4
	c.mv	a1,sp
	c.jalr	a5
	lui	a3,00028000
	lw	a5,a3,+000000E0
	c.lui	a4,FFFFF000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	a5,a3,+000000E0
	c.j	0000000023015650

l2301577E:
	c.li	a5,00000012

l23015780:
	c.mv	a0,a5
	c.jr	ra

;; llm_test_mode_start_rx: 23015784
;;   Called from:
;;     2301BCA2 (in hci_le_rx_test_cmd_handler)
llm_test_mode_start_rx proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000027
	bltu	a5,a4,0000000023015846

l23015790:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	c.swsp	s1,00000080
	addi	a5,s0,+00000358
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000358
	c.bnez	a5,0000000023015804

l230157AA:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s0,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s0,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s0,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l23015804:
	lui	a3,00028000
	c.lw	a3,0(a5)
	lui	a4,000FFFC0
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00000040
	c.or	a5,a4
	c.sw	a3,0(a5)
	addi	a1,zero,+00000024
	c.li	a0,00000000
	jal	ra,00000000230172BC
	lbu	a0,s1,+00000000
	jal	ra,000000002301473A
	c.sw	s0,72(a0)
	c.li	a5,0000001F
	c.beqz	a0,000000002301583A

l23015832:
	c.li	a5,00000001
	sb	a5,s0,+0000005A
	c.li	a5,00000000

l2301583A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23015846:
	c.li	a5,00000012
	c.mv	a0,a5
	c.jr	ra

;; llm_set_adv_param: 2301584C
;;   Called from:
;;     2301C1BE (in hci_le_set_adv_param_cmd_handler)
llm_set_adv_param proc
	lhu	a4,a0,+00000000
	lhu	a5,a0,+00000002
	bgeu	a5,a4,000000002301586E

l23015858:
	c.li	a0,00000012
	c.jr	ra
2301585C                                     49 45                   IE 

l2301585E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301586E:
	lbu	a2,a0,+0000000D
	c.li	a3,00000007
	bltu	a3,a2,0000000023015858

l23015878:
	lbu	a2,a0,+0000000E
	c.li	a3,00000003
	bltu	a3,a2,0000000023015858

l23015882:
	lbu	a3,a0,+00000004
	andi	a2,a3,+000000FB
	c.bnez	a2,0000000023015892

l2301588C:
	c.li	a2,0000001F
	bgeu	a2,a4,0000000023015858

l23015892:
	lbu	a2,a0,+00000005
	c.li	a4,00000003
	bltu	a4,a2,0000000023015858

l2301589C:
	lbu	a2,a0,+00000006
	c.li	a4,00000001
	bltu	a4,a2,0000000023015858

l230158A6:
	beq	a3,a4,00000000230158B0

l230158AA:
	c.lui	a4,00004000
	bltu	a4,a5,0000000023015858

l230158B0:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s0,0000000C
	addi	a5,s1,+00000358
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a5,20(a5)
	c.mv	s0,a0
	addi	s1,s1,+00000358
	c.bnez	a5,000000002301592A

l230158D0:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s1,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s1,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s1,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l2301592A:
	c.lw	s1,20(a5)
	c.li	a4,00000008
	c.li	a3,00000004
	sb	a4,a5,+0000001C
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a4,s0,+00000004
	c.li	a0,00000012
	bltu	a3,a4,000000002301585E

l23015944:
	lui	a3,00023074
	c.slli	a4,02
	addi	a3,a3,-000000E4
	c.add	a4,a3
	c.lw	a4,0(a4)
	addi	s3,s0,+00000007
	lui	s4,0004200E
	c.jr	a4
2301595C                                     05 47 23 8E             .G#.
23015960 E7 00 85 67 37 89 00 28 93 87 17 C2 23 10 F9 2E ...g7..(....#...
23015970 83 45 64 00 4E 85 EF E0 BF FD 0D E5 03 57 09 2E .Ed.N........W..
23015980 83 47 64 00 19 46 42 07 41 83 9E 07 13 77 F7 F7 .Gd..FB.A....w..
23015990 D9 8F 23 10 F9 2E 03 55 29 2E 83 27 CA 13 CE 85 ..#....U)..'....
230159A0 4A 95 82 97 83 46 44 00 11 47 DC 48 63 9B E6 00 J....FD..G.Hc...
230159B0 03 57 24 00 23 9C E7 00 03 57 04 00 23 9B E7 00 .W$.#....W..#...
230159C0 19 A0 A3 80 07 02 C8 48 83 47 64 00 CE 85 19 46 .......H.Gd....F
230159D0 23 00 F5 02 83 27 CA 13 41 05 82 97 03 47 54 00 #....'..A....GT.
230159E0 DC 48 85 45 13 05 D4 00 A3 8F E7 00 EF E0 3F F8 .H.E..........?.
230159F0 E3 06 05 E6 03 47 D4 00 DC 48 01 45 23 8D E7 00 .....G...H.E#...
23015A00 B9 BD 19 47 23 8E E7 00 83 C6 C7 01 19 47 63 84 ...G#........Gc.
23015A10 E6 00 23 8E 07 00 03 C7 C7 01 99 46 63 06 D7 00 ..#........Fc...
23015A20 01 C7 09 47 23 8E E7 00 03 47 E4 00 A3 8D E7 00 ...G#....G......
23015A30 41 B7                                           A.             

;; llm_set_adv_en: 23015A32
;;   Called from:
;;     2301C0EC (in hci_le_set_adv_en_cmd_handler)
llm_set_adv_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	s1,a0,+00000000
	lui	s0,0004201A
	addi	s0,s0,+00000358
	beq	s1,zero,0000000023015B9C

l23015A4A:
	c.lw	s0,20(a5)
	c.bnez	a5,0000000023015AA8

l23015A4E:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s0,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s0,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s0,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l23015AA8:
	lui	a1,00023082
	lui	a0,0004201A
	addi	a1,a1,+000006E4
	addi	a0,a0,+000003B3
	jal	ra,000000002300C476
	c.beqz	a0,0000000023015AD6

l23015ABE:
	c.lw	s0,20(a5)
	lbu	a5,a5,+0000001F
	c.andi	a5,00000001
	c.beqz	a5,0000000023015AD6

l23015AC8:
	c.li	s1,00000012

l23015ACA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23015AD6:
	c.lw	s0,20(a5)
	lbu	a0,a5,+0000001F
	jal	ra,00000000230149C2
	c.lw	s0,20(a0)
	c.li	a5,00000001
	lbu	a4,a0,+0000001C
	beq	a4,a5,0000000023015B88

l23015AEC:
	c.beqz	a4,0000000023015AFC

l23015AEE:
	c.li	a5,00000002
	beq	a4,a5,0000000023015AFC

l23015AF4:
	c.li	a5,00000006
	c.li	s1,00000012
	bne	a4,a5,0000000023015ACA

l23015AFC:
	lbu	a5,a0,+0000001D
	lui	a3,00028008
	lui	a1,0004201A
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a5,a4
	ori	a5,a5,+00000020
	sh	a5,a3,+000002FE
	c.lw	s0,20(a0)
	lui	a4,00042019
	c.li	a5,00000002
	lbu	a2,a0,+0000001C
	addi	a4,a4,+00000624
	bne	a2,a5,0000000023015B42

l23015B2E:
	lbu	a3,a4,+0000002C
	c.li	a2,00000000
	addi	a1,a1,+0000020C

l23015B38:
	jal	ra,0000000023013272
	c.sw	s0,72(a0)
	c.bnez	a0,0000000023015B70

l23015B40:
	c.j	0000000023015AC8

l23015B42:
	lbu	a5,a0,+0000001E
	lui	a2,0004201A
	addi	a2,a2,+00000200
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	ori	a5,a5,+00000024
	sh	a5,a3,+000002F4
	lbu	a3,a4,+0000002C
	addi	a1,a1,+0000020C
	c.li	s1,0000001F
	jal	ra,0000000023013272
	c.sw	s0,72(a0)
	c.beqz	a0,0000000023015ACA

l23015B70:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+0000000F
	ori	a1,a1,+00000010
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.li	s1,00000000
	c.j	0000000023015ACA

l23015B88:
	lui	a5,00042019
	lui	a1,0004201A
	lbu	a3,a5,+00000650
	c.li	a2,00000000
	addi	a1,a1,+000001E8
	c.j	0000000023015B38

l23015B9C:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+0000000F
	ori	a1,a1,+00000020
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.lw	s0,72(a0)
	jal	ra,000000002301342E
	c.j	0000000023015ACA

;; llm_set_adv_data: 23015BB8
;;   Called from:
;;     23014A48 (in llm_util_adv_data_update)
;;     2301C190 (in hci_le_set_adv_data_cmd_handler)
llm_set_adv_data proc
	lbu	a4,a0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,0000000023015C86

l23015BC2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	c.swsp	s1,00000080
	addi	a5,s0,+00000358
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000358
	c.bnez	a5,0000000023015C36

l23015BDC:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s0,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s0,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s0,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l23015C36:
	lbu	a2,s1,+00000000
	c.lw	s0,20(a5)
	sb	a2,a5,+0000001D
	c.beqz	a2,0000000023015C5A

l23015C42:
	lui	a5,00028008
	lhu	a0,a5,+00000300
	lui	a4,0004200E
	lw	a4,a4,+0000013C
	addi	a1,s1,+00000001
	c.add	a0,a5
	c.jalr	a4

l23015C5A:
	c.lw	s0,20(a5)
	lui	a3,00028008
	lhu	a4,a3,+000002FE
	lbu	a5,a5,+0000001D
	c.li	a0,00000000
	andi	a4,a4,+000000FF
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a3,+000002FE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23015C86:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_rsp_data: 23015C8A
;;   Called from:
;;     23014A62 (in llm_util_adv_data_update)
;;     2301C088 (in hci_le_set_scan_rsp_data_cmd_handler)
llm_set_scan_rsp_data proc
	lbu	a4,a0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,0000000023015D58

l23015C94:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	c.swsp	s1,00000080
	addi	a5,s0,+00000358
	c.swsp	ra,00000084
	c.lw	a5,20(a5)
	c.mv	s1,a0
	addi	s0,s0,+00000358
	c.bnez	a5,0000000023015D08

l23015CAE:
	c.li	a1,00000000
	addi	a0,zero,+00000024
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s0,20(a0)
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.jalr	a5
	c.lw	s0,20(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sh	a4,a5,+00000016
	sb	zero,a5,+0000001C
	sh	a4,a5,+00000018
	sb	zero,a5,+0000001B
	c.lw	s0,20(a5)
	c.li	a4,00000007
	sb	a4,a5,+0000001A
	c.li	a4,00000001
	sb	a4,a5,+00000021
	lbu	a5,a5,+0000001C
	lui	a4,00028008
	ori	a5,a5,+00000600
	sh	a5,a4,+000002FE
	addi	a5,zero,+00000604
	sh	a5,a4,+000002F4

l23015D08:
	lbu	a2,s1,+00000000
	c.lw	s0,20(a5)
	sb	a2,a5,+0000001E
	c.beqz	a2,0000000023015D2C

l23015D14:
	lui	a5,00028008
	lhu	a0,a5,+000002F6
	lui	a4,0004200E
	lw	a4,a4,+0000013C
	addi	a1,s1,+00000001
	c.add	a0,a5
	c.jalr	a4

l23015D2C:
	c.lw	s0,20(a5)
	lui	a3,00028008
	lhu	a4,a3,+000002F4
	lbu	a5,a5,+0000001E
	c.li	a0,00000000
	andi	a4,a4,+000000FF
	c.addi	a5,00000006
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a3,+000002F4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23015D58:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_param: 23015D5C
;;   Called from:
;;     2301BFFE (in hci_le_set_scan_param_cmd_handler)
llm_set_scan_param proc
	lhu	a4,a0,+00000004
	lhu	a5,a0,+00000002
	bltu	a5,a4,0000000023015E1E

l23015D68:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a2,a0,+00000000
	c.li	a3,00000001
	c.mv	s0,a0
	c.li	a0,00000012
	bltu	a3,a2,0000000023015E14

l23015D7E:
	c.addi	a4,FFFFFFFC
	c.slli	a4,10
	c.lui	a3,00004000
	c.srli	a4,00000010
	c.addi	a3,FFFFFFFC
	bltu	a3,a4,0000000023015E14

l23015D8C:
	c.addi	a5,FFFFFFFC
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a3,a5,0000000023015E14

l23015D96:
	lbu	a4,s0,+00000007
	c.li	a5,00000003
	bltu	a5,a4,0000000023015E14

l23015DA0:
	lui	s1,0004201A
	addi	a5,s1,+00000358
	c.lw	a5,16(a5)
	addi	s1,s1,+00000358
	c.bnez	a5,0000000023015DC8

l23015DB0:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.sw	s1,16(a0)
	c.li	a2,0000000C
	c.li	a1,00000000
	c.jalr	a5

l23015DC8:
	c.lw	s1,16(a5)
	lbu	a4,s0,+00000007
	c.li	a0,00000000
	sb	a4,a5,+00000008
	c.lw	s1,16(a5)
	lhu	a4,s0,+00000002
	sh	a4,a5,+00000004
	c.lw	s1,16(a5)
	lhu	a4,s0,+00000004
	sh	a4,a5,+00000006
	c.lw	s1,16(a5)
	lbu	a4,s0,+00000000
	sb	a4,a5,+00000009
	c.lw	s1,16(a5)
	lbu	a4,s0,+00000006
	sb	a4,a5,+0000000B
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023015E14

l23015E06:
	c.lui	a5,00001000
	lui	a4,00028008
	addi	a5,a5,-000003FD
	sh	a5,a4,+000002EA

l23015E14:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23015E1E:
	c.li	a0,00000012
	c.jr	ra

;; llm_set_scan_en: 23015E22
;;   Called from:
;;     2301BF5C (in hci_le_set_scan_en_cmd_handler)
llm_set_scan_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+00000000
	lui	s0,0004201A
	addi	s0,s0,+00000358
	c.bnez	s1,0000000023015E6E

l23015E3A:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000003
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.lw	s0,84(a0)
	jal	ra,00000000230135DA
	lui	a0,0004201A
	addi	a0,a0,+00000360
	jal	ra,0000000023012D12

l23015E60:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23015E6E:
	c.lw	s0,16(a5)
	c.mv	s2,a0
	c.bnez	a5,0000000023015E9E

l23015E74:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002300D942
	c.sw	s0,16(a0)
	sb	zero,a0,+00000008
	c.lw	s0,16(a5)
	c.li	a4,00000010
	sh	a4,a5,+00000004
	c.lw	s0,16(a5)
	c.li	a4,00000008
	sh	a4,a5,+00000006
	c.lw	s0,16(a5)
	sb	zero,a5,+00000009
	c.lw	s0,16(a5)
	sb	zero,a5,+0000000A

l23015E9E:
	lui	a1,00023082
	lui	a0,0004201A
	addi	a1,a1,+000006E4
	addi	a0,a0,+000003B3
	jal	ra,000000002300C476
	c.beqz	a0,0000000023015ECA

l23015EB4:
	c.lw	s0,16(a4)
	lbu	a5,a4,+0000000B
	c.andi	a5,00000001
	c.beqz	a5,0000000023015ECA

l23015EBE:
	lbu	a4,a4,+00000009
	c.li	a5,00000001
	c.li	s1,00000012
	beq	a4,a5,0000000023015E60

l23015ECA:
	c.lw	s0,16(a5)
	lbu	a4,s2,+00000001
	sb	a4,a5,+0000000A
	c.lw	s0,16(a5)
	lbu	a0,a5,+0000000B
	jal	ra,00000000230149C2
	c.lw	s0,16(a0)
	lbu	a5,a0,+00000009
	c.beqz	a5,0000000023015F04

l23015EE6:
	c.li	a4,00000001
	beq	a5,a4,0000000023015F12

l23015EEC:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000001
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.li	s1,00000000
	c.j	0000000023015E60

l23015F04:
	c.li	a1,00000000

l23015F06:
	jal	ra,0000000023013462
	c.sw	s0,84(a0)
	c.li	s1,0000001F
	c.bnez	a0,0000000023015EEC

l23015F10:
	c.j	0000000023015E60

l23015F12:
	lui	a1,0004201A
	addi	a1,a1,+000001F4
	c.j	0000000023015F06

;; llm_wl_clr: 23015F1C
;;   Called from:
;;     23016026 (in llm_init)
;;     2301BDCC (in hci_le_wl_mngt_cmd_handler)
llm_wl_clr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00023082
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	s0,00000000
	c.li	s3,00000004
	c.mv	s2,s1

l23015F32:
	c.mv	a0,s0
	c.addi	s0,00000001
	c.slli	s0,10
	addi	a1,s1,+000006FC
	c.srli	s0,00000010
	jal	ra,0000000023014E60
	bne	s0,s3,0000000023015F32

l23015F46:
	c.li	s0,00000000
	c.li	s1,00000004

l23015F4A:
	c.mv	a0,s0
	c.addi	s0,00000001
	c.slli	s0,10
	addi	a1,s2,+000006FC
	c.srli	s0,00000010
	jal	ra,0000000023014E32
	bne	s0,s1,0000000023015F4A

l23015F5E:
	lui	a4,00028008
	lhu	a3,a4,+0000022E
	c.lui	a5,FFFFE000
	c.addi	a5,FFFFFFFF
	c.and	a3,a5
	sh	a3,a4,+0000022E
	lhu	a3,a4,+00000262
	c.and	a3,a5
	sh	a3,a4,+00000262
	lhu	a3,a4,+00000296
	c.and	a5,a3
	sh	a5,a4,+00000296
	lui	a5,0004201A
	addi	a5,a5,+00000358
	sb	zero,a5,+00000071
	sb	zero,a5,+00000072
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llm_init: 23015FA2
;;   Called from:
;;     2300B120 (in rwble_init)
;;     2300B166 (in rwble_reset)
llm_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,0004201A
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	addi	s0,s1,+00000358
	lui	s3,0004201A
	bne	a0,zero,00000000230160B0

l23015FC0:
	lui	a1,00023074
	addi	a1,a1,-000000D0
	jal	ra,000000002301725C
	lui	a1,00023016
	addi	a1,a1,+000004C8
	c.li	a0,00000001
	jal	ra,000000002300D6D2

l23015FDA:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.li	a5,00000003
	lui	s2,0004200E
	sb	a5,s0,+0000005A
	sb	zero,s0,+0000004C
	sw	zero,s0,+00000054
	sb	zero,s0,+00000059
	jal	ra,0000000023036D28
	lw	a5,s2,+00000140
	sb	a0,s0,+00000040
	lui	a0,0004201A
	c.li	a2,00000004
	addi	a1,zero,+000000FF
	sb	zero,s0,+00000041
	sb	zero,s0,+00000042
	addi	a0,a0,+0000038A
	c.jalr	a5
	c.li	s4,0000001F
	sb	s4,s0,+00000036
	sw	zero,s0,+00000048
	jal	ra,0000000023015F1C
	c.li	a5,00000010
	sh	a5,s0,+0000006A
	lw	a5,s2,+00000140
	lui	a0,0004201A
	c.li	a2,00000007
	c.li	a1,00000000
	sb	zero,s0,+000000D3
	sb	s4,s0,+00000038
	addi	a0,a0,+00000391
	c.jalr	a5
	addi	a0,s3,+00000360
	sb	zero,s0,+00000058
	sw	zero,s0,+00000010
	jal	ra,000000002300C1BE
	lw	a5,s2,+00000140
	lui	a0,0004201A
	sw	zero,s0,+00000014
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,a0,+000003B3
	c.jalr	a5
	lui	a4,00028000
	c.lw	a4,36(a5)
	srli	a3,a5,00000008
	sb	a5,s0,+00000061
	sb	a3,s0,+00000062
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+00000063
	sb	a5,s0,+00000064
	c.lw	a4,40(a5)
	sb	a5,s0,+00000065
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	sb	a5,s0,+00000066

l230160A0:
	addi	a0,s1,+00000358
	jal	ra,000000002300C252
	c.beqz	a0,00000000230160EA

l230160AA:
	jal	ra,000000002300DCB6
	c.j	00000000230160A0

l230160B0:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230160CC

l230160B4:
	c.lw	a5,0(a0)
	c.beqz	a0,00000000230160BC

l230160B8:
	jal	ra,000000002300DCB6

l230160BC:
	c.lw	s0,20(a5)
	c.lw	a5,4(a0)
	c.beqz	a0,00000000230160C6

l230160C2:
	jal	ra,000000002300DCB6

l230160C6:
	c.lw	s0,20(a0)
	jal	ra,000000002300DA32

l230160CC:
	c.lw	s0,16(a0)
	c.beqz	a0,00000000230160D4

l230160D0:
	jal	ra,000000002300DA32

l230160D4:
	addi	a0,s3,+00000360
	jal	ra,0000000023012D12
	lui	a0,0004201A
	addi	a0,a0,+00000370
	jal	ra,0000000023012D12
	c.j	0000000023015FDA

l230160EA:
	addi	a0,s1,+00000358
	jal	ra,000000002300C1BE
	lui	a0,0004201A
	addi	a0,a0,+00000370
	jal	ra,000000002300C1BE
	lui	a1,00023074
	addi	a0,s0,+00000020
	c.li	a2,0000000C
	addi	a1,a1,-00000080
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s0,+00000037
	lui	a5,0000AF60
	addi	a5,a5,+00000064
	c.sw	s0,44(a5)
	c.lui	a5,00001000
	addi	a5,a5,-0000073C
	sh	a5,s0,+00000030
	sb	zero,s0,+0000006E
	sh	zero,s0,+0000006C
	sb	zero,s0,+00000050
	sh	zero,s0,+0000004E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; llm_wl_dev_add: 2301614A
;;   Called from:
;;     23014C2E (in llm_util_bl_rem)
;;     23016238 (in llm_wl_dev_add_hdl)
llm_wl_dev_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00023082
	c.swsp	s1,00000080
	addi	a0,a0,+000006FC
	c.mv	s1,a1
	c.swsp	ra,00000084
	jal	ra,00000000230148BA
	c.beqz	s1,0000000023016186

l23016164:
	c.li	a5,00000001
	beq	s1,a5,000000002301618E

l2301616A:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+00000072
	c.addi	a4,00000001
	sb	a4,a5,+00000072
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23016186:
	c.mv	a1,s0
	jal	ra,0000000023014E32
	c.j	000000002301616A

l2301618E:
	c.mv	a1,s0
	jal	ra,0000000023014E60
	c.j	000000002301616A

;; llm_wl_dev_rem: 23016196
;;   Called from:
;;     23014BD4 (in llm_util_bl_add)
;;     230162A4 (in llm_wl_dev_rem_hdl)
llm_wl_dev_rem proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230148BA
	c.li	a5,00000003
	bltu	a5,a0,00000000230161CC

l230161A8:
	lui	a1,00023082
	c.li	a5,00000001
	addi	a1,a1,+000006FC
	bne	s0,a5,00000000230161D4

l230161B6:
	jal	ra,0000000023014E60

l230161BA:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+00000072
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000072

l230161CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230161D4:
	jal	ra,0000000023014E32
	c.j	00000000230161BA

;; llm_wl_dev_add_hdl: 230161DA
;;   Called from:
;;     2301BE00 (in hci_le_wl_mngt_cmd_handler)
llm_wl_dev_add_hdl proc
	c.li	a5,00000001
	bgeu	a5,a1,00000000230161F2

l230161E0:
	c.li	a0,00000012
	c.jr	ra

l230161E4:
	c.li	a0,00000012

l230161E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230161F2:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s2,a0
	c.mv	s1,a1
	jal	ra,0000000023014B06
	c.bnez	a0,00000000230161E4

l23016208:
	lui	s0,0004201A
	addi	a5,s0,+00000358
	lbu	a4,a5,+00000071
	c.li	a5,00000003
	addi	s0,s0,+00000358
	c.li	a0,00000007
	bltu	a5,a4,00000000230161E6

l23016220:
	c.li	a4,00000000
	c.li	a3,00000002
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023014A7C
	c.li	a5,0000000B
	beq	a0,a5,000000002301623C

l23016234:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002301614A

l2301623C:
	lbu	a5,s0,+00000071
	c.li	a0,00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000071
	c.j	00000000230161E6

;; llm_wl_dev_rem_hdl: 2301624A
;;   Called from:
;;     2301BE10 (in hci_le_wl_mngt_cmd_handler)
llm_wl_dev_rem_hdl proc
	c.li	a5,00000001
	bgeu	a5,a1,0000000023016260

l23016250:
	c.li	a0,00000012
	c.jr	ra

l23016254:
	c.li	a0,00000012

l23016256:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23016260:
	c.addi	sp,FFFFFFE0
	addi	a2,sp,+0000000F
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023014B06
	c.beqz	a0,0000000023016254

l23016276:
	lbu	a5,sp,+0000000F
	c.beqz	a5,00000000230162A0

l2301627C:
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023014A7C

l2301628A:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+00000071
	c.li	a0,00000000
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000071
	c.j	0000000023016256

l230162A0:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023016196
	c.j	000000002301628A

;; llm_create_con: 230162AA
;;   Called from:
;;     2301BED2 (in hci_le_create_con_cmd_handler)
llm_create_con proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004201A
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,s2,+0000039C
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,000000002301A06A
	c.li	s1,00000009
	c.bnez	a0,00000000230162EA

l230162C6:
	lbu	a4,s0,+00000004
	c.li	a5,00000001
	c.mv	s1,a0
	beq	a4,a5,00000000230162F8

l230162D2:
	lbu	a1,s0,+00000005
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,s2,+0000039C
	addi	a0,s0,+00000006
	jal	ra,0000000023014A7C
	c.beqz	a0,0000000023016312

l230162E8:
	c.mv	s1,a0

l230162EA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230162F8:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+00000072
	c.bnez	a4,0000000023016312

l23016306:
	lbu	s1,a5,+00000071
	sltiu	s1,s1,+00000001
	c.addi	s1,0000000B
	c.j	00000000230162EA

l23016312:
	lhu	a3,s0,+00000002
	lhu	a4,s0,+00000000
	bgeu	a4,a3,0000000023016322

l2301631E:
	c.li	s1,00000012
	c.j	00000000230162EA

l23016322:
	lhu	a5,s0,+0000000E
	lhu	a1,s0,+00000010
	bltu	a1,a5,000000002301631E

l2301632E:
	c.addi	a3,FFFFFFFC
	c.slli	a3,10
	c.lui	a2,00004000
	c.srli	a3,00000010
	c.addi	a2,FFFFFFFC
	bltu	a2,a3,000000002301631E

l2301633C:
	c.addi	a4,FFFFFFFC
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a2,a4,000000002301631E

l23016346:
	lhu	a3,s0,+00000016
	lhu	a4,s0,+00000018
	bltu	a4,a3,000000002301631E

l23016352:
	c.li	a4,00000005
	bgeu	a4,a5,000000002301631E

l23016358:
	c.lui	a3,00001000
	addi	a5,a3,-00000380
	bltu	a5,a1,000000002301631E

l23016362:
	lhu	a4,s0,+00000014
	addi	a3,a3,-0000038A
	addi	a5,a4,-0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a3,a5,000000002301631E

l23016376:
	lhu	a5,s0,+00000012
	addi	a3,zero,+000001F3
	bltu	a3,a5,000000002301631E

l23016382:
	c.addi	a5,00000001
	add	a5,a5,a1
	c.slli	a4,02
	bgeu	a5,a4,000000002301631E

l2301638E:
	lui	a1,00023082
	lui	a0,0004201A
	addi	a1,a1,+000006E4
	addi	a0,a0,+000003B3
	jal	ra,000000002300C476
	lbu	a5,s0,+0000000C
	c.beqz	a0,00000000230163AE

l230163A8:
	andi	a4,a5,+00000001
	c.bnez	a4,000000002301631E

l230163AE:
	lui	s2,0004201A
	addi	a4,s2,+00000358
	lbu	a4,a4,+0000006F
	c.andi	a5,00000002
	addi	s2,s2,+00000358
	c.andi	a4,00000001
	c.bnez	a4,00000000230163D0

l230163C4:
	c.bnez	a5,000000002301631E

l230163C6:
	lbu	a5,s0,+00000005
	c.andi	a5,00000002
	c.beqz	a5,00000000230163D2

l230163CE:
	c.j	000000002301631E

l230163D0:
	c.beqz	a5,00000000230163C6

l230163D2:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000002
	c.li	a0,00000000
	jal	ra,00000000230172BC
	lhu	a2,s2,+00000044
	lui	a1,0004201A
	addi	a1,a1,+000001F4
	c.mv	a0,s0
	jal	ra,000000002301360E
	sw	a0,s2,+00000054
	bne	a0,zero,00000000230162EA

l23016400:
	c.li	s1,0000001F
	c.j	00000000230162EA

;; llm_encryption_start: 23016404
;;   Called from:
;;     2301654A (in llm_encryption_done)
;;     2301A5F2 (in llm_enc_req_handler)
;;     2301BD56 (in hci_le_enc_cmd_handler)
llm_encryption_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	lbu	a3,a0,+00000000
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,a0,+00000001
	c.slli	a5,10
	lui	s0,00028000
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	sw	a5,s0,+000000C4
	lbu	a5,a0,+00000007
	lbu	a4,a0,+00000006
	lbu	a3,a0,+00000004
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,a0,+00000005
	c.slli	a5,10
	addi	a1,a0,+00000010
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	sw	a5,s0,+000000C8
	lbu	a5,a0,+0000000B
	lbu	a4,a0,+0000000A
	lbu	a3,a0,+00000008
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,a0,+00000009
	c.slli	a5,10
	c.li	a2,00000010
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	sw	a5,s0,+000000CC
	lbu	a5,a0,+0000000F
	lbu	a4,a0,+0000000E
	lbu	a3,a0,+0000000C
	c.slli	a5,08
	c.or	a5,a4
	lbu	a4,a0,+0000000D
	c.slli	a5,10
	lui	a0,00028008
	c.slli	a4,08
	c.or	a4,a3
	c.or	a5,a4
	sw	a5,s0,+000000D0
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	a0,a0,+0000006E
	c.jalr	a5
	addi	a5,zero,+0000006E
	sw	a5,s0,+000000D4
	c.li	a5,00000001
	sw	a5,s0,+000000C0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a4,0004201A
	sb	a5,a4,+000003B0
	c.li	a0,00000010
	c.addi	sp,00000010
	jal	zero,000000002300C106

;; llm_encryption_done: 230164C8
llm_encryption_done proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	addi	a0,s0,+00000358
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002300C252
	c.mv	s3,a0
	c.li	a0,00000001
	jal	ra,000000002300D77C
	beq	s3,zero,0000000023016580

l230164EC:
	lhu	a1,s3,+00000008
	c.li	a5,00000001
	lui	s2,0004200E
	andi	a4,a1,+000000FF
	c.li	a3,00000011
	beq	a4,a5,000000002301654E

l23016500:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	a2,00000017
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	lw	a5,s2,+0000013C
	lui	a1,00028008
	c.mv	s1,a0
	c.li	a2,00000010
	addi	a1,a1,+0000007E
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s1
	sb	zero,s1,+00000000
	jal	ra,000000002300BD76

l2301652E:
	c.mv	a0,s3
	jal	ra,000000002300DCB6
	addi	s0,s0,+00000358
	c.lw	s0,0(a0)
	c.beqz	a0,0000000023016576

l2301653C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,0000000C
	c.addi16sp	00000020
	jal	zero,0000000023016404

l2301654E:
	c.li	a2,00000000
	c.li	a0,00000005
	jal	ra,000000002300DB74
	lw	a5,s2,+0000013C
	lui	a1,00028008
	c.mv	s1,a0
	c.li	a2,00000010
	addi	a1,a1,+0000007E
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s1
	sb	zero,s1,+00000000
	jal	ra,000000002300DBE2
	c.j	000000002301652E

l23016576:
	c.li	a0,00000010
	jal	ra,000000002300C138
	sb	zero,s0,+00000058

l23016580:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; hci_fc_init: 2301658E
;;   Called from:
;;     2300BFC2 (in hci_init)
;;     2300BFF8 (in hci_reset)
hci_fc_init proc
	lui	a5,0004200E
	lw	t1,a5,+00000140
	lui	a0,0004201A
	c.li	a2,0000000A
	c.li	a1,00000000
	addi	a0,a0,+0000042C
	c.jr	t1

;; hci_fc_acl_buf_size_set: 230165A4
;;   Called from:
;;     2301BBA4 (in hci_host_buf_size_cmd_handler)
hci_fc_acl_buf_size_set proc
	c.li	a5,00000012
	c.beqz	a0,00000000230165C6

l230165A8:
	c.beqz	a1,00000000230165C6

l230165AA:
	addi	a4,zero,+000003FC
	c.li	a5,00000011
	bgeu	a4,a0,00000000230165C6

l230165B4:
	lui	a5,0004201A
	addi	a5,a5,+0000042C
	sh	a0,a5,+00000002
	sh	a1,a5,+00000004
	c.li	a5,00000000

l230165C6:
	c.mv	a0,a5
	c.jr	ra

;; hci_fc_acl_en: 230165CA
;;   Called from:
;;     2301BC1A (in hci_set_ctrl_to_host_flow_ctrl_cmd_handler)
hci_fc_acl_en proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002301732C
	addi	a5,zero,+0000007F
	beq	a0,a5,00000000230165EE

l230165E2:
	c.li	a0,0000000C

l230165E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230165EE:
	c.mv	s0,a0
	addi	a0,zero,+00000101
	jal	ra,000000002301732C
	bne	a0,s0,00000000230165E2

l230165FC:
	lui	a5,0004201A
	sb	s1,a5,+0000042C
	c.li	a0,00000000
	c.j	00000000230165E4

;; hci_fc_host_nb_acl_pkts_complete: 23016608
;;   Called from:
;;     2301BB5C (in hci_host_nb_cmp_pkts_cmd_handler)
hci_fc_host_nb_acl_pkts_complete proc
	lui	a5,0004201A
	addi	a4,a5,+0000042C
	lhu	a4,a4,+00000008
	addi	a5,a5,+0000042C
	c.li	a3,00000000
	bgeu	a0,a4,0000000023016626

l2301661E:
	c.sub	a4,a0
	slli	a3,a4,00000010
	c.srli	a3,00000010

l23016626:
	sh	a3,a5,+00000008
	c.jr	ra

;; hci_pack_bytes: 2301662C
;;   Called from:
;;     230166C2 (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     2301671A (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     23016730 (in hci_host_nb_cmp_pkts_cmd_pkupk)
;;     2301677E (in hci_le_adv_report_evt_pkupk)
;;     23016796 (in hci_le_adv_report_evt_pkupk)
;;     230167E6 (in hci_le_adv_report_evt_pkupk)
;;     230167FC (in hci_le_adv_report_evt_pkupk)
;;     23016812 (in hci_le_adv_report_evt_pkupk)
;;     23016824 (in hci_le_adv_report_evt_pkupk)
;;     2301683C (in hci_le_adv_report_evt_pkupk)
;;     23016852 (in hci_le_adv_report_evt_pkupk)
;;     230168A0 (in hci_le_dir_adv_report_evt_pkupk)
;;     230168B8 (in hci_le_dir_adv_report_evt_pkupk)
;;     23016908 (in hci_le_dir_adv_report_evt_pkupk)
;;     2301691E (in hci_le_dir_adv_report_evt_pkupk)
;;     23016934 (in hci_le_dir_adv_report_evt_pkupk)
;;     2301694A (in hci_le_dir_adv_report_evt_pkupk)
;;     23016960 (in hci_le_dir_adv_report_evt_pkupk)
;;     23016972 (in hci_le_dir_adv_report_evt_pkupk)
hci_pack_bytes proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a1
	c.lw	a0,0(a1)
	c.li	s0,00000001
	add	a5,a1,a4
	bltu	a2,a5,000000002301667C

l23016646:
	c.mv	s1,a4
	c.mv	s3,a0
	c.li	s0,00000000
	c.beqz	a3,0000000023016668

l2301664E:
	lw	a0,s2,+00000000
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	add	s0,a0,a4
	sltu	s0,a3,s0
	c.mv	a2,a4
	c.slli	s0,01
	c.jalr	a5

l23016668:
	lw	a5,s3,+00000000
	c.add	a5,s1
	sw	a5,s3,+00000000
	lw	a4,s2,+00000000
	c.add	s1,a4
	sw	s1,s2,+00000000

l2301667C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; hci_host_nb_cmp_pkts_cmd_pkupk: 2301668C
hci_host_nb_cmp_pkts_cmd_pkupk proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	a1,00000004
	c.swsp	a0,00000084
	c.beqz	a1,0000000023016740

l230166A8:
	lhu	s7,a2,+00000000
	add	s1,a1,a3
	c.mv	s6,a2
	c.add	s7,a0
	c.mv	s3,a1
	c.mv	s0,a0
	c.li	a4,00000001
	c.mv	a3,s7
	c.mv	a2,s1
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	jal	ra,000000002301662C
	c.mv	s5,a0
	c.bnez	a0,00000000230166DE

l230166CA:
	c.li	a5,00000000
	c.li	s8,0000000E

l230166CE:
	c.lwsp	a2,000000C4
	lbu	a3,s3,+00000000
	c.sub	a4,s0
	bgeu	a5,a3,00000000230166DE

l230166DA:
	bgeu	s8,a4,0000000023016702

l230166DE:
	c.lwsp	a2,00000044
	sub	s0,a0,s0
	sh	s0,s6,+00000000

l230166E8:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s5
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l23016702:
	addi	s2,a5,+00000001
	slli	s4,s2,00000001
	add	a5,s0,s4
	c.li	a4,00000002
	c.mv	a3,s7
	c.mv	a2,s1
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.bnez	a0,000000002301673C

l23016720:
	c.addi	s4,00000006
	c.add	s4,s0
	c.li	a4,00000002
	c.mv	a3,s7
	c.mv	a2,s1
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	s4,00000084
	jal	ra,000000002301662C
	c.bnez	a0,000000002301673C

l23016736:
	andi	a5,s2,+000000FF
	c.j	00000000230166CE

l2301673C:
	c.mv	s5,a0
	c.j	00000000230166DE

l23016740:
	c.li	a5,0000000E
	sh	a5,a2,+00000000
	c.li	s5,00000000
	c.j	00000000230166E8

;; hci_le_adv_report_evt_pkupk: 2301674A
hci_le_adv_report_evt_pkupk proc
	c.addi16sp	FFFFFFA0
	c.swsp	s5,000000A0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s6,00000020
	c.mv	s5,a2
	beq	a1,zero,0000000023016864

l23016762:
	c.mv	s3,a0
	c.beqz	a0,00000000230167CC

l23016766:
	lhu	s1,a2,+00000000
	c.add	s1,a0

l2301676C:
	add	s2,a1,a3
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	s3,00000008
	c.swsp	s3,00000084
	jal	ra,000000002301662C
	c.mv	s0,a0
	c.bnez	a0,00000000230167AC

l23016786:
	addi	a5,s3,+00000001
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.mv	s0,a0
	c.bnez	a0,00000000230167AC

l2301679E:
	addi	s4,s3,+0000000A
	c.li	s6,00000000

l230167A4:
	lbu	a5,s3,+00000001
	blt	s6,a5,00000000230167D6

l230167AC:
	c.lwsp	a6,000000E4
	sub	s3,a5,s3
	sh	s3,s5,+00000000

l230167B6:
	c.mv	a0,s0
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.addi16sp	00000060
	c.jr	ra

l230167CC:
	addi	s1,sp,+0000003F
	addi	s3,sp,+00000014
	c.j	000000002301676C

l230167D6:
	addi	a5,s4,-00000008
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.bnez	a0,0000000023016860

l230167EC:
	addi	a5,s4,-00000007
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.bnez	a0,0000000023016860

l23016802:
	addi	a5,s4,-00000006
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.bnez	a0,0000000023016860

l23016818:
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	s4,00000084
	jal	ra,000000002301662C
	c.bnez	a0,0000000023016860

l2301682A:
	lbu	a4,s4,+00000000
	addi	a5,s4,+00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	c.bnez	a0,0000000023016860

l23016842:
	addi	a5,s4,+00000020
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	c.swsp	a5,00000084
	jal	ra,000000002301662C
	addi	s4,s4,+00000029
	c.bnez	a0,0000000023016860

l2301685C:
	c.addi	s6,00000001
	c.j	00000000230167A4

l23016860:
	c.mv	s0,a0
	c.j	00000000230167AC

l23016864:
	sh	zero,a2,+00000000
	c.li	s0,00000000
	c.j	00000000230167B6

;; hci_le_dir_adv_report_evt_pkupk: 2301686C
hci_le_dir_adv_report_evt_pkupk proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.mv	s5,a2
	beq	a1,zero,0000000023016982

l23016884:
	c.mv	s3,a0
	c.beqz	a0,00000000230168EE

l23016888:
	lhu	s1,a2,+00000000
	c.add	s1,a0

l2301688E:
	add	s2,a1,a3
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	s3,00000004
	c.swsp	s3,00000080
	jal	ra,000000002301662C
	c.mv	s0,a0
	c.bnez	a0,00000000230168CE

l230168A8:
	addi	a5,s3,+00000001
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.mv	s0,a0
	c.bnez	a0,00000000230168CE

l230168C0:
	addi	s4,s3,+00000011
	c.li	s6,00000000

l230168C6:
	lbu	a5,s3,+00000001
	blt	s6,a5,00000000230168F8

l230168CE:
	c.lwsp	s0,000000E4
	sub	s3,a5,s3
	sh	s3,s5,+00000000

l230168D8:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l230168EE:
	addi	s1,sp,+0000001E
	addi	s3,sp,+0000000C
	c.j	000000002301688E

l230168F8:
	addi	a5,s4,-0000000F
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.bnez	a0,000000002301697E

l2301690E:
	addi	a5,s4,-0000000E
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.bnez	a0,000000002301697E

l23016924:
	addi	a5,s4,-0000000D
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.bnez	a0,000000002301697E

l2301693A:
	addi	a5,s4,-00000007
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.bnez	a0,000000002301697E

l23016950:
	addi	a5,s4,-00000006
	c.li	a4,00000006
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	jal	ra,000000002301662C
	c.bnez	a0,000000002301697E

l23016966:
	c.li	a4,00000001
	c.mv	a3,s1
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	s4,00000080
	jal	ra,000000002301662C
	c.addi	s4,00000010
	c.bnez	a0,000000002301697E

l2301697A:
	c.addi	s6,00000001
	c.j	00000000230168C6

l2301697E:
	c.mv	s0,a0
	c.j	00000000230168CE

l23016982:
	sh	zero,a2,+00000000
	c.li	s0,00000000
	c.j	00000000230168D8

;; hci_look_for_cmd_desc: 2301698A
;;   Called from:
;;     2300BED4 (in hci_send_2_controller)
;;     23016DDC (in hci_build_cc_evt)
;;     230674D2 (in bt_onchiphci_send)
hci_look_for_cmd_desc proc
	srli	a5,a0,0000000A
	c.li	a4,00000001
	andi	a2,a0,+000003FF
	beq	a5,a4,00000000230169D4

l23016998:
	c.li	a4,00000003
	beq	a5,a4,00000000230169D8

l2301699E:
	c.li	a4,00000004
	beq	a5,a4,00000000230169DC

l230169A4:
	c.li	a4,00000005
	beq	a5,a4,00000000230169E0

l230169AA:
	c.li	a4,00000008
	beq	a5,a4,00000000230169E4

l230169B0:
	addi	a4,zero,+0000003F
	c.li	a0,00000000
	bne	a5,a4,0000000023016A02

l230169BA:
	c.li	a5,00000005

l230169BC:
	lui	a4,00023074
	c.slli	a5,03
	addi	a4,a4,-00000074
	c.add	a5,a4
	c.lw	a5,4(a0)
	lhu	a3,a5,+00000002
	c.li	a5,00000000
	c.bnez	a0,00000000230169FC

l230169D2:
	c.jr	ra

l230169D4:
	c.li	a5,00000000
	c.j	00000000230169BC

l230169D8:
	c.li	a5,00000001
	c.j	00000000230169BC

l230169DC:
	c.li	a5,00000002
	c.j	00000000230169BC

l230169E0:
	c.li	a5,00000003
	c.j	00000000230169BC

l230169E4:
	c.li	a5,00000004
	c.j	00000000230169BC

l230169E8:
	lhu	a4,a0,+00000000
	andi	a4,a4,+000003FF
	beq	a4,a2,0000000023016A02

l230169F4:
	c.addi	a5,00000001
	c.slli	a5,10
	c.addi	a0,0000000C
	c.srli	a5,00000010

l230169FC:
	bne	a5,a3,00000000230169E8

l23016A00:
	c.li	a0,00000000

l23016A02:
	c.jr	ra

;; hci_look_for_evt_desc: 23016A04
;;   Called from:
;;     23016E48 (in hci_build_evt)
hci_look_for_evt_desc proc
	lui	a5,00023074
	addi	a3,a5,+0000031C
	c.li	a4,00000000
	addi	a5,a5,+0000031C
	c.li	a2,00000009

l23016A14:
	lbu	a1,a3,+00000000
	bne	a1,a0,0000000023016A24

l23016A1C:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l23016A24:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023016A14

l23016A2C:
	c.li	a0,00000000
	c.jr	ra

;; hci_look_for_le_evt_desc: 23016A30
;;   Called from:
;;     23016EA4 (in hci_build_le_evt)
hci_look_for_le_evt_desc proc
	lui	a5,00023074
	addi	a3,a5,+00000364
	c.li	a4,00000000
	addi	a5,a5,+00000364
	c.li	a2,0000000C

l23016A40:
	lbu	a1,a3,+00000000
	bne	a1,a0,0000000023016A50

l23016A48:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l23016A50:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023016A40

l23016A58:
	c.li	a0,00000000
	c.jr	ra

;; hci_tl_init: 23016A5C
;;   Called from:
;;     2300BFBA (in hci_init)
;;     2300BFF0 (in hci_reset)
hci_tl_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	s1,00042011
	addi	s0,s1,-000000B8
	c.bnez	a0,0000000023016A96

l23016A6E:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s1,-000000B8
	c.jalr	a5
	addi	a0,s1,-000000B8
	jal	ra,000000002300C1BE
	addi	a0,s0,+00000008
	jal	ra,000000002300C1BE
	c.li	a5,00000001
	sb	a5,s0,+00000018

l23016A96:
	c.li	a5,00000005
	sb	a5,s0,+00000019
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; hci_util_read_array_size: 23016AA6
;;   Called from:
;;     23016B6C (in hci_util_pack)
;;     23016CCA (in hci_util_unpack)
hci_util_read_array_size proc
	c.lw	a0,0(a5)
	c.li	a2,00000009
	c.li	a1,0000000A
	addi	a4,a5,+00000001
	c.sw	a0,0(a4)
	lbu	a5,a5,+00000000
	addi	a5,a5,-00000030
	c.slli	a5,10
	c.srli	a5,00000010

l23016ABE:
	c.lw	a0,0(a3)
	lbu	a4,a3,+00000000
	addi	a4,a4,-00000030
	andi	a4,a4,+000000FF
	bgeu	a2,a4,0000000023016AD4

l23016AD0:
	c.mv	a0,a5
	c.jr	ra

l23016AD4:
	add	a5,a5,a1
	addi	a4,a3,+00000001
	c.sw	a0,0(a4)
	lbu	a4,a3,+00000000
	addi	a4,a4,-00000030
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023016ABE

;; hci_util_pack: 23016AEE
;;   Called from:
;;     23016E00 (in hci_build_cc_evt)
;;     23016E64 (in hci_build_evt)
;;     23016EC0 (in hci_build_le_evt)
hci_util_pack proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s4,00000024
	lhu	s4,a1,+00000000
	c.mv	s3,a0
	c.mv	s5,a1
	c.add	s4,a0
	c.swsp	a2,0000008C
	c.mv	s0,a0
	c.mv	s1,a0
	c.li	s2,00000000
	c.li	s6,00000009
	addi	s7,zero,+00000048
	c.li	s8,00000001
	addi	s9,zero,+0000004C
	addi	s10,zero,+00000042
	lui	s11,0004200E

l23016B30:
	c.lwsp	t3,000000E4
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023016C2C

l23016B38:
	beq	s2,zero,0000000023016B5C

l23016B3C:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s2
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.lwsp	s4,0000013C
	c.lwsp	a6,0000015C
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l23016B5C:
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	c.li	a4,00000000
	bltu	s6,a5,0000000023016B72

l23016B6A:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023016AA6
	c.mv	a4,a0

l23016B72:
	c.lwsp	t3,000000E4
	addi	a3,a5,+00000001
	c.swsp	a3,0000008C
	lbu	a5,a5,+00000000
	beq	a5,s7,0000000023016BC2

l23016B82:
	beq	a5,s9,0000000023016BE8

l23016B86:
	bne	a5,s10,0000000023016C1A

l23016B8A:
	addi	a1,s1,+00000001
	beq	s3,zero,0000000023016B9E

l23016B92:
	bltu	s4,a1,0000000023016C28

l23016B96:
	lbu	a5,s1,+00000000
	sb	a5,s0,+00000000

l23016B9E:
	addi	a0,s0,+00000001
	bgeu	s8,a4,0000000023016C1E

l23016BA6:
	c.add	s1,a4
	beq	s3,zero,0000000023016BBE

l23016BAC:
	bltu	s4,s1,0000000023016C24

l23016BB0:
	lw	a5,s11,+0000013C
	addi	a2,a4,-00000001
	c.swsp	a4,00000084
	c.jalr	a5
	c.lwsp	a2,000000C4

l23016BBE:
	c.add	s0,a4
	c.j	0000000023016B30

l23016BC2:
	addi	a5,s1,+00000001
	c.andi	a5,FFFFFFFE
	addi	a4,a5,+00000002
	beq	s3,zero,0000000023016BE2

l23016BD0:
	bltu	s4,a4,0000000023016C28

l23016BD4:
	lhu	a5,a5,+00000000
	sb	a5,s0,+00000000
	c.srli	a5,00000008
	sb	a5,s0,+00000001

l23016BE2:
	c.addi	s0,00000002

l23016BE4:
	c.mv	s1,a4
	c.j	0000000023016B30

l23016BE8:
	addi	a5,s1,+00000003
	c.andi	a5,FFFFFFFC
	addi	a4,a5,+00000004
	beq	s3,zero,0000000023016C16

l23016BF6:
	bltu	s4,a4,0000000023016C28

l23016BFA:
	c.lw	a5,0(a5)
	srli	a3,a5,00000008
	sb	a5,s0,+00000000
	sb	a3,s0,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+00000002
	sb	a5,s0,+00000003

l23016C16:
	c.addi	s0,00000004
	c.j	0000000023016BE4

l23016C1A:
	c.li	s2,00000003
	c.j	0000000023016B30

l23016C1E:
	c.mv	s0,a0
	c.mv	s1,a1
	c.j	0000000023016B30

l23016C24:
	c.mv	s0,a0
	c.mv	s1,a1

l23016C28:
	c.li	s2,00000001
	c.j	0000000023016B30

l23016C2C:
	bne	s2,zero,0000000023016B3C

l23016C30:
	sub	s0,s0,s3
	sh	s0,s5,+00000000
	c.j	0000000023016B3C

;; hci_util_unpack: 23016C3A
;;   Called from:
;;     2306751C (in bt_onchiphci_send)
;;     2306755A (in bt_onchiphci_send)
hci_util_unpack proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s11,0000008C
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	lhu	s9,a2,+00000000
	c.swsp	a4,00000084
	c.mv	s4,a0
	c.mv	s0,a1
	c.mv	s3,a2
	add	s11,a1,a3
	c.add	s9,a0
	sltu	s5,zero,a1
	c.bnez	a0,0000000023016C70

l23016C6E:
	c.li	s5,00000000

l23016C70:
	c.mv	s1,s4
	c.li	s2,00000000
	c.li	s6,00000001
	addi	s7,zero,+0000004C
	lui	s8,0004200E

l23016C7E:
	c.lwsp	a2,000000E4
	lbu	a5,a5,+00000000
	c.beqz	a5,0000000023016C8A

l23016C86:
	beq	s2,zero,0000000023016CB8

l23016C8A:
	bgeu	s11,s0,0000000023016C90

l23016C8E:
	c.li	s2,00000001

l23016C90:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	sub	s1,s1,s4
	sh	s1,s3,+00000000
	c.mv	a0,s2
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l23016CB8:
	addi	a5,a5,-00000030
	andi	a5,a5,+000000FF
	c.li	a4,00000009
	c.li	s10,00000000
	bltu	a4,a5,0000000023016CD0

l23016CC8:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023016AA6
	c.mv	s10,a0

l23016CD0:
	c.lwsp	a2,000000E4
	addi	a4,zero,+00000048
	addi	a3,a5,+00000001
	c.swsp	a3,00000084
	lbu	a5,a5,+00000000
	beq	a5,a4,0000000023016D34

l23016CE4:
	beq	a5,s7,0000000023016D66

l23016CE8:
	addi	a3,zero,+00000042
	bne	a5,a3,0000000023016DA6

l23016CF0:
	addi	a1,s0,+00000001
	beq	s5,zero,0000000023016D0C

l23016CF8:
	bltu	s11,a1,0000000023016DB2

l23016CFC:
	addi	a5,s1,+00000001
	bltu	s9,a5,0000000023016DBA

l23016D04:
	lbu	a5,s0,+00000000
	sb	a5,s1,+00000000

l23016D0C:
	addi	a0,s1,+00000001
	bgeu	s6,s10,0000000023016DAA

l23016D14:
	c.add	s0,s10
	beq	s5,zero,0000000023016D30

l23016D1A:
	bltu	s11,s0,0000000023016DAE

l23016D1E:
	add	a5,s1,s10
	bltu	s9,a5,0000000023016DB6

l23016D26:
	lw	a5,s8,+0000013C
	addi	a2,s10,-00000001
	c.jalr	a5

l23016D30:
	c.add	s1,s10
	c.j	0000000023016C7E

l23016D34:
	addi	a5,s1,+00000001
	c.andi	a5,FFFFFFFE
	addi	a2,s0,+00000002
	beq	s5,zero,0000000023016D5E

l23016D42:
	bltu	s11,a2,0000000023016DB2

l23016D46:
	addi	a3,a5,+00000002
	bltu	s9,a3,0000000023016DBA

l23016D4E:
	lbu	a3,s0,+00000001
	lbu	a1,s0,+00000000
	c.slli	a3,08
	c.or	a3,a1
	sh	a3,a5,+00000000

l23016D5E:
	addi	s1,a5,+00000002
	c.mv	s0,a2
	c.j	0000000023016C7E

l23016D66:
	addi	a3,s1,+00000003
	c.andi	a3,FFFFFFFC
	addi	a1,s0,+00000004
	beq	s5,zero,0000000023016D9E

l23016D74:
	bltu	s11,a1,0000000023016DB2

l23016D78:
	addi	a5,a3,+00000004
	bltu	s9,a5,0000000023016DBA

l23016D80:
	lbu	a5,s0,+00000003
	lbu	a2,s0,+00000002
	lbu	a0,s0,+00000000
	c.slli	a5,08
	c.or	a5,a2
	lbu	a2,s0,+00000001
	c.slli	a5,10
	c.slli	a2,08
	c.or	a2,a0
	c.or	a5,a2
	c.sw	a3,0(a5)

l23016D9E:
	addi	s1,a3,+00000004

l23016DA2:
	c.mv	s0,a1
	c.j	0000000023016C7E

l23016DA6:
	c.li	s2,00000003
	c.j	0000000023016C7E

l23016DAA:
	c.mv	s1,a0
	c.j	0000000023016DA2

l23016DAE:
	c.mv	s1,a0
	c.mv	s0,a1

l23016DB2:
	c.li	s2,00000001
	c.j	0000000023016C7E

l23016DB6:
	c.mv	s1,a0
	c.mv	s0,a1

l23016DBA:
	c.li	s2,00000002
	c.j	0000000023016C7E

;; hci_build_cc_evt: 23016DBE
hci_build_cc_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lhu	s1,a0,+00000008
	lhu	a5,a0,+0000000A
	c.mv	s0,a0
	addi	s2,a0,+00000007
	c.mv	a0,s1
	sh	a5,sp,+0000000E
	jal	ra,000000002301698A
	c.beqz	a0,0000000023016E24

l23016DE2:
	lhu	a3,sp,+0000000E
	c.beqz	a3,0000000023016E24

l23016DE8:
	c.lw	a0,8(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023016E04

l23016DEE:
	lb	a4,a4,+00000002
	addi	a0,s0,+0000000C
	blt	a4,zero,0000000023016E1A

l23016DFA:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023016AEE

l23016E04:
	lhu	a5,sp,+0000000E
	c.lwsp	t3,00000020
	c.mv	a0,s2
	sh	a5,s0,+0000000A
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23016E1A:
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	c.j	0000000023016E04

l23016E24:
	c.beqz	s1,0000000023016E04

l23016E26:
	c.li	a5,00000001
	sb	a5,s0,+0000000C
	c.j	0000000023016E04

;; hci_build_evt: 23016E2E
;;   Called from:
;;     2300BE34 (in hci_send_2_host)
hci_build_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lhu	a5,a0,+0000000A
	c.mv	s0,a0
	addi	s1,a0,+0000000A
	lbu	a0,a0,+00000008
	sh	a5,sp,+0000000E
	jal	ra,0000000023016A04
	c.beqz	a0,0000000023016E70

l23016E4E:
	c.lw	a0,4(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023016E68

l23016E54:
	lbu	a4,a4,+00000002
	addi	a0,s0,+0000000C
	c.bnez	a4,0000000023016E7C

l23016E5E:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023016AEE

l23016E68:
	lhu	a5,sp,+0000000E
	sh	a5,s0,+0000000A

l23016E70:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23016E7C:
	lhu	a3,sp,+0000000E
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	c.j	0000000023016E68

;; hci_build_le_evt: 23016E8A
hci_build_le_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lhu	a5,a0,+0000000A
	c.mv	s0,a0
	addi	s1,a0,+0000000A
	lbu	a0,a0,+0000000C
	sh	a5,sp,+0000000E
	jal	ra,0000000023016A30
	c.beqz	a0,0000000023016ECE

l23016EAA:
	c.lw	a0,4(a5)
	c.mv	a4,a0
	c.beqz	a5,0000000023016ECE

l23016EB0:
	lbu	a4,a4,+00000002
	addi	a0,s0,+0000000C
	c.bnez	a4,0000000023016EDA

l23016EBA:
	c.mv	a2,a5
	addi	a1,sp,+0000000E
	jal	ra,0000000023016AEE

l23016EC4:
	c.bnez	a0,0000000023016ECE

l23016EC6:
	lhu	a5,sp,+0000000E
	sh	a5,s0,+0000000A

l23016ECE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23016EDA:
	lhu	a3,sp,+0000000E
	addi	a2,sp,+0000000E
	c.mv	a1,a0
	c.jalr	a5
	andi	a0,a0,+000000FF
	c.j	0000000023016EC4

;; hci_build_acl_rx_data: 23016EEC
;;   Called from:
;;     230675EC (in bt_onchiphci_hanlde_rx_acl)
hci_build_acl_rx_data proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lbu	a0,a0,+00000012
	jal	ra,000000002300EB4E
	lhu	a4,s0,+0000000C
	lbu	a5,s0,+0000000E
	c.addi	a0,FFFFFFFC
	c.slli	a4,14
	c.slli	a5,0C
	c.srli	a4,00000014
	c.or	a5,a4
	c.slli	a5,10
	c.srai	a5,00000010
	sb	a5,a0,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000010
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_queue_extract: 23016F36
;;   Called from:
;;     2300DF84 (in ble_ke_timer_set)
;;     2300E098 (in ble_ke_timer_clear)
;;     23017072 (in ble_ke_task_saved_update)
ble_ke_queue_extract proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,0000000023016F6C

l23016F5C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	a2,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23016F6C:
	c.lw	s1,0(a5)
	c.li	s0,00000000
	c.swsp	a5,00000084

l23016F72:
	c.lwsp	a2,00000044
	c.beqz	a0,0000000023016F5C

l23016F76:
	c.mv	a1,s3
	c.jalr	s2
	c.lwsp	a2,000000E4
	c.beqz	a0,0000000023016F98

l23016F7E:
	c.lw	a5,0(a5)
	c.beqz	s0,0000000023016F90

l23016F82:
	c.sw	s0,0(a5)

l23016F84:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023016F94

l23016F8A:
	sw	zero,a5,+00000000
	c.j	0000000023016F5C

l23016F90:
	c.sw	s1,0(a5)
	c.j	0000000023016F84

l23016F94:
	c.sw	s1,4(s0)
	c.j	0000000023016F5C

l23016F98:
	c.mv	s0,a5
	c.lw	a5,0(a5)
	c.swsp	a5,00000084
	c.j	0000000023016F72

;; ble_ke_queue_insert: 23016FA0
;;   Called from:
;;     2300DFBA (in ble_ke_timer_set)
ble_ke_queue_insert proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	s4,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,0000000023016FEC

l23016FC8:
	lw	s1,s2,+00000000
	c.li	s3,00000000

l23016FCE:
	c.beqz	s1,0000000023016FDE

l23016FD0:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	s4
	c.bnez	a0,0000000023016FE2

l23016FD8:
	c.mv	s3,s1
	c.lw	s1,0(s1)
	c.j	0000000023016FCE

l23016FDE:
	sw	s0,s2,+00000004

l23016FE2:
	c.sw	s0,0(s1)
	beq	s3,zero,0000000023016FFC

l23016FE8:
	sw	s0,s3,+00000000

l23016FEC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23016FFC:
	sw	s0,s2,+00000000
	c.j	0000000023016FEC

;; ble_cmp_dest_id: 23017002
ble_cmp_dest_id proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,0000000023017030

l23017022:
	lbu	a0,sp,+0000000F

l23017026:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23017030:
	lhu	a0,s1,+00000006
	c.sub	a0,s0
	sltiu	a0,a0,+00000001
	c.j	0000000023017026

;; ble_ke_task_saved_update: 2301703C
;;   Called from:
;;     23017318 (in ble_ke_state_set)
ble_ke_task_saved_update proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,0000000023017096

l2301705C:
	lui	s3,00023017
	lui	s4,0004201A
	lui	s2,0004201A

l23017068:
	addi	a1,s3,+00000002
	c.mv	a2,s0
	addi	a0,s4,+000001A4
	jal	ra,0000000023016F36
	c.mv	a1,a0
	c.beqz	a0,0000000023017096

l2301707A:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	addi	a0,s2,+0000019C
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.li	a0,00000002
	jal	ra,000000002300D720
	c.j	0000000023017068

l23017096:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ble_ke_handler_search: 230170A6
;;   Called from:
;;     23017160 (in ble_ke_task_handler_get)
;;     23017170 (in ble_ke_task_handler_get)
ble_ke_handler_search proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,00000000230170D0

l230170C4:
	c.lwsp	a2,00000044

l230170C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230170D0:
	lhu	a5,s0,+00000004
	c.lui	a2,00010000
	c.li	a1,FFFFFFFF
	c.addi	a5,FFFFFFFF
	c.addi	a2,FFFFFFFF

l230170DC:
	bne	a5,a1,00000000230170E4

l230170E0:
	c.li	a0,00000000
	c.j	00000000230170C6

l230170E4:
	c.lw	s0,0(a3)
	slli	a4,a5,00000003
	c.add	a4,a3
	lhu	a3,a4,+00000000
	bne	s1,a3,00000000230170F8

l230170F4:
	c.lw	a4,4(a0)
	c.j	00000000230170C6

l230170F8:
	beq	a3,a2,00000000230170F4

l230170FC:
	c.addi	a5,FFFFFFFF
	c.j	00000000230170DC

;; ble_ke_task_handler_get: 23017100
;;   Called from:
;;     230171BE (in ble_ke_task_schedule)
ble_ke_task_handler_get proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.swsp	zero,00000084
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,0000000023017130

l23017122:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	a2,00000044
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23017130:
	lui	a5,0004201A
	andi	a4,s0,+000000FF
	c.slli	a4,02
	addi	a5,a5,+00000438
	c.add	a5,a4
	c.lw	a5,0(s1)
	lhu	a5,s1,+0000000E
	c.beqz	a5,0000000023017122

l23017148:
	c.srli	s0,00000008
	bgeu	s0,a5,0000000023017122

l2301714E:
	c.lw	s1,0(a1)
	c.beqz	a1,0000000023017166

l23017152:
	c.lw	s1,8(a5)
	c.mv	a0,s2
	c.add	s0,a5
	lbu	a5,s0,+00000000
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,00000000230170A6
	c.swsp	a0,00000084

l23017166:
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023017122

l2301716A:
	c.lw	s1,4(a1)
	c.beqz	a1,0000000023017122

l2301716E:
	c.mv	a0,s2
	jal	ra,00000000230170A6
	c.swsp	a0,00000084
	c.j	0000000023017122

;; ble_ke_task_schedule: 23017178
ble_ke_task_schedule proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,00000000230171F8

l23017190:
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,0004201A
	addi	a0,s1,+0000019C
	jal	ra,000000002300C252
	c.mv	s0,a0
	csrrw	zero,mstatus,zero
	c.beqz	a0,00000000230171E0

l230171AC:
	c.li	a5,FFFFFFFF
	c.sw	a0,0(a5)
	jal	ra,000000002300DB3C
	c.bnez	a0,00000000230171E0

l230171B6:
	lhu	a1,s0,+00000006
	lhu	a0,s0,+00000004
	jal	ra,0000000023017100
	c.mv	a5,a0
	c.beqz	a0,0000000023017204

l230171C6:
	lhu	a3,s0,+00000008
	lhu	a2,s0,+00000006
	lhu	a0,s0,+00000004
	addi	a1,s0,+0000000C
	c.jalr	a5
	c.beqz	a0,0000000023017204

l230171DA:
	c.li	a5,00000002
	beq	a0,a5,000000002301720C

l230171E0:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a5,s1,+0000019C
	c.bnez	a5,00000000230171F4

l230171EE:
	c.li	a0,00000002
	jal	ra,000000002300D77C

l230171F4:
	csrrw	zero,mstatus,zero

l230171F8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23017204:
	c.mv	a0,s0
	jal	ra,000000002300DCB6
	c.j	00000000230171E0

l2301720C:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+000001A4
	jal	ra,000000002300C1E6
	c.j	00000000230171E0

;; ble_ke_task_init: 2301721C
;;   Called from:
;;     2300E168 (in ble_ke_init)
ble_ke_task_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,0000000023017256

l2301722E:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	lui	a0,0004201A
	c.li	a1,00000000
	c.li	a2,00000014
	addi	a0,a0,+00000438
	c.jalr	a5
	c.lwsp	a2,00000020
	lui	a1,00023017
	addi	a1,a1,+00000178
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002300D6D2

l23017256:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_task_create: 2301725C
;;   Called from:
;;     2300EC2E (in llc_init)
;;     23012EC8 (in lld_init)
;;     23015FC8 (in llm_init)
;;     230674A0 (in bt_onchiphci_interface_init)
ble_ke_task_create proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	sb	zero,sp,+0000000F
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002301728E

l23017280:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301728E:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a5,00000004
	bgeu	a5,s0,00000000230172A8

l2301729C:
	c.li	a5,00000003

l2301729E:
	sb	a5,sp,+0000000F

l230172A2:
	csrrw	zero,mstatus,zero
	c.j	0000000023017280

l230172A8:
	lui	a0,0004201A
	c.slli	s0,02
	addi	a0,a0,+00000438
	c.add	a0,s0
	c.lw	a0,0(a3)
	c.bnez	a3,000000002301729E

l230172B8:
	c.sw	a0,0(s1)
	c.j	00000000230172A2

;; ble_ke_state_set: 230172BC
;;   Called from:
;;     2300EC38 (in llc_init)
;;     2300EC44 (in llc_init)
;;     2300EC86 (in llc_stop)
;;     2300F1DE (in llc_start)
;;     2300F77E (in llc_con_update_finished)
;;     2300F7AE (in llc_con_update_finished)
;;     2300F81C (in llc_map_update_finished)
;;     2300F84A (in llc_map_update_finished)
;;     23014CA8 (in llm_end_evt_defer)
;;     23015008 (in llm_con_req_ind)
;;     230154C8 (in llm_con_req_tx_cfm)
;;     230155F6 (in llm_test_mode_start_tx)
;;     23015820 (in llm_test_mode_start_rx)
;;     23015B80 (in llm_set_adv_en)
;;     23015BAC (in llm_set_adv_en)
;;     23015E4A (in llm_set_scan_en)
;;     23015EFC (in llm_set_scan_en)
;;     23015FDE (in llm_init)
;;     230163E2 (in llm_create_con)
;;     23017490 (in llcp_ping_rsp_handler)
;;     230174E4 (in llcp_terminate_ind_handler)
;;     230176E8 (in llc_llcp_reject_ind)
;;     2301770A (in llc_llcp_reject_ind)
;;     2301779C (in llc_llcp_reject_ind)
;;     230177F8 (in llc_llcp_reject_ind)
;;     230178CE (in llcp_pause_enc_req_handler)
;;     230178E6 (in llcp_pause_enc_req_handler)
;;     230178F4 (in llcp_pause_enc_req_handler)
;;     23017A5A (in llcp_enc_req_handler)
;;     23017A68 (in llcp_enc_req_handler)
;;     23017B6E (in fn23017B56)
;;     23017C8C (in fn23017C7C)
;;     23017D6C (in llcp_vers_ind_handler)
;;     2301830E (in llcp_start_enc_rsp_handler)
;;     2301833A (in llcp_start_enc_rsp_handler)
;;     2301842C (in llcp_length_rsp_handler)
;;     2301869E (in llcp_con_param_rsp_handler)
;;     23018766 (in llcp_feats_rsp_handler)
;;     230188DE (in fn23018888)
;;     23018A20 (in fn230189F4)
;;     23018AA4 (in fn230189F4)
;;     23018E70 (in llcp_con_param_req_handler)
;;     23018FF8 (in llc_llcp_terminate_ind_pdu_send)
;;     23019636 (in llc_chmap_update_req_ind_handler)
;;     23019954 (in llc_length_req_ind_handler)
;;     23019C48 (in llc_enc_mgt_ind_handler)
;;     23019C52 (in llc_enc_mgt_ind_handler)
;;     23019E0A (in llc_auth_payl_nearly_to_ind_handler)
;;     2301A104 (in llc_util_dicon_procedure)
;;     2301A350 (in llc_pdu_llcp_tx_ack_defer)
;;     2301A35A (in llc_pdu_llcp_tx_ack_defer)
;;     2301A724 (in lld_stop_ind_handler)
;;     2301AA40 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     2301AB36 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AEB4 (in hci_le_start_enc_cmd_handler)
;;     2301AEC4 (in hci_le_start_enc_cmd_handler)
;;     2301AF74 (in hci_le_rd_rem_used_feats_cmd_handler)
;;     2301B54A (in hci_rd_rem_ver_info_cmd_handler)
;;     2301C2AC (in hci_le_test_end_cmd_handler)
;;     2301C334 (in hci_le_create_con_cancel_cmd_handler)
ble_ke_state_set proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,0000000023017322

l230172DA:
	andi	a4,s0,+000000FF
	c.li	a5,00000004
	bltu	a5,a4,000000002301731C

l230172E4:
	lui	a5,0004201A
	c.slli	a4,02
	addi	a5,a5,+00000438
	c.add	a5,a4
	c.lw	a5,0(a5)
	srli	a3,s0,00000008
	lhu	a4,a5,+0000000E
	bgeu	a3,a4,0000000023017322

l230172FE:
	c.lw	a5,8(a5)
	c.add	a5,a3
	lbu	a4,a5,+00000000
	beq	a4,s1,0000000023017322

l2301730A:
	sb	s1,a5,+00000000
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301703C

l2301731C:
	lhu	a5,zero,+0000000E
	c.ebreak

l23017322:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_state_get: 2301732C
;;   Called from:
;;     2300ECF4 (in llc_reset)
;;     2300ED0A (in llc_reset)
;;     2300F748 (in llc_con_update_finished)
;;     2300F7F0 (in llc_map_update_finished)
;;     23014C44 (in llm_end_evt_defer)
;;     23014C9E (in llm_end_evt_defer)
;;     23014D8C (in llm_pdu_defer)
;;     23014FFE (in llm_con_req_ind)
;;     230154BE (in llm_con_req_tx_cfm)
;;     23015B72 (in llm_set_adv_en)
;;     23015B9E (in llm_set_adv_en)
;;     23015E3C (in llm_set_scan_en)
;;     23015EEE (in llm_set_scan_en)
;;     230163D4 (in llm_create_con)
;;     230165D6 (in hci_fc_acl_en)
;;     230165F4 (in hci_fc_acl_en)
;;     23017446 (in llcp_ping_rsp_handler)
;;     2301752C (in llcp_enc_rsp_handler)
;;     23017662 (in llc_llcp_reject_ind)
;;     2301786E (in llcp_pause_enc_req_handler)
;;     23017954 (in llcp_start_enc_req_handler)
;;     230179E4 (in llcp_enc_req_handler)
;;     23017AE2 (in llcp_unknown_rsp_handler)
;;     23017CDC (in llcp_vers_ind_handler)
;;     23017E88 (in llcp_pause_enc_rsp_handler)
;;     230181F2 (in llcp_start_enc_rsp_handler)
;;     230183C8 (in llcp_length_rsp_handler)
;;     23018580 (in llcp_con_param_rsp_handler)
;;     230186C6 (in llcp_feats_rsp_handler)
;;     230187A4 (in llcp_channel_map_ind_handler)
;;     2301891E (in llcp_con_upd_ind_handler)
;;     23018C04 (in llcp_con_param_req_handler)
;;     23018FD0 (in llc_llcp_terminate_ind_pdu_send)
;;     230193D8 (in llc_llcp_recv_handler)
;;     230194B0 (in llm_enc_ind_handler)
;;     230195D0 (in llc_chmap_update_req_ind_handler)
;;     23019656 (in llc_auth_payl_real_to_ind_handler)
;;     230196DA (in llc_con_upd_req_ind_handler)
;;     230198EA (in llc_length_req_ind_handler)
;;     230199F2 (in llc_enc_mgt_ind_handler)
;;     23019C9A (in llc_chnl_assess_timer_handler)
;;     23019D46 (in llc_link_sup_to_ind_handler)
;;     23019DA6 (in llc_auth_payl_nearly_to_ind_handler)
;;     23019E4A (in llc_data_ind_handler)
;;     23019EC2 (in lld_stop_ind_handler)
;;     23019F14 (in lld_stop_ind_handler)
;;     2301A07A (in llc_util_get_free_conhdl)
;;     2301A086 (in llc_util_get_free_conhdl)
;;     2301A0B0 (in llc_util_get_nb_active_link)
;;     2301A0C0 (in llc_util_get_nb_active_link)
;;     2301A258 (in llc_end_evt_defer)
;;     2301A2C0 (in llc_pdu_llcp_tx_ack_defer)
;;     2301A2E6 (in llc_pdu_llcp_tx_ack_defer)
;;     2301A60A (in lld_stop_ind_handler)
;;     2301A61C (in lld_stop_ind_handler)
;;     2301A62A (in lld_stop_ind_handler)
;;     2301A678 (in lld_stop_ind_handler)
;;     2301A704 (in lld_stop_ind_handler)
;;     2301A732 (in lld_stop_ind_handler)
;;     2301A93A (in hci_le_set_data_len_cmd_handler)
;;     2301A9F0 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     2301AA9E (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301ABF4 (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     2301ACC2 (in hci_le_ltk_req_reply_cmd_handler)
;;     2301AD70 (in hci_disconnect_cmd_handler)
;;     2301AE2A (in hci_le_start_enc_cmd_handler)
;;     2301AF38 (in hci_le_rd_rem_used_feats_cmd_handler)
;;     2301B00E (in hci_le_rd_chnl_map_cmd_handler)
;;     2301B074 (in hci_rd_auth_payl_to_cmd_handler)
;;     2301B0FA (in hci_rd_rssi_cmd_handler)
;;     2301B172 (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     2301B214 (in hci_le_con_update_cmd_handler)
;;     2301B3A6 (in hci_wr_auth_payl_to_cmd_handler)
;;     2301B4D8 (in hci_rd_rem_ver_info_cmd_handler)
;;     2301B5B4 (in llc_hci_acl_data_tx_handler)
;;     2301BC58 (in hci_le_tx_test_cmd_handler)
;;     2301BC90 (in hci_le_rx_test_cmd_handler)
;;     2301BD7A (in hci_le_wl_mngt_cmd_handler)
;;     2301BE92 (in hci_le_create_con_cmd_handler)
;;     2301BEE8 (in hci_le_create_con_cmd_handler)
;;     2301BF12 (in hci_le_set_scan_en_cmd_handler)
;;     2301BF40 (in hci_le_set_scan_en_cmd_handler)
;;     2301BFE0 (in hci_le_set_scan_param_cmd_handler)
;;     2301C028 (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2301C0A4 (in hci_le_set_adv_en_cmd_handler)
;;     2301C0D6 (in hci_le_set_adv_en_cmd_handler)
;;     2301C130 (in hci_le_set_adv_data_cmd_handler)
;;     2301C1AA (in hci_le_set_adv_param_cmd_handler)
;;     2301C1E4 (in hci_le_set_rand_add_cmd_handler)
;;     2301C286 (in hci_le_test_end_cmd_handler)
;;     2301C2E6 (in hci_le_create_con_cancel_cmd_handler)
;;     2301C326 (in hci_le_create_con_cancel_cmd_handler)
ble_ke_state_get proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,0000000023017352

l23017346:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.addi16sp	00000020
	c.jr	ra

l23017352:
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F
	andi	a4,s0,+000000FF
	c.li	a5,00000004
	bltu	a5,a4,0000000023017388

l23017362:
	lui	a5,0004201A
	c.slli	a4,02
	addi	a5,a5,+00000438
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.srli	s0,00000008
	lhu	a4,a5,+0000000E
	bgeu	s0,a4,0000000023017346

l2301737A:
	c.lw	a5,8(a5)
	c.add	s0,a5
	lbu	a5,s0,+00000000
	sb	a5,sp,+0000000F
	c.j	0000000023017346

l23017388:
	lhu	a5,zero,+0000000E
	c.ebreak

;; llc_llcp_send: 2301738E
;;   Called from:
;;     2301738C (in ble_ke_state_get)
;;     23017CBE (in llc_llcp_version_ind_pdu_send)
;;     23017DCA (in llc_llcp_ch_map_update_pdu_send)
;;     23017E0A (in llc_llcp_pause_enc_req_pdu_send)
;;     23017E68 (in llc_llcp_pause_enc_rsp_pdu_send)
;;     230180AC (in llc_llcp_enc_req_pdu_send)
;;     2301815C (in llc_llcp_enc_rsp_pdu_send)
;;     230181CC (in llc_llcp_start_enc_rsp_pdu_send)
;;     2301838C (in llc_llcp_reject_ind_pdu_send)
;;     23018AEA (in llc_llcp_con_update_pdu_send)
;;     23018B66 (in llc_llcp_con_param_req_pdu_send)
;;     23018BE2 (in llc_llcp_con_param_rsp_pdu_send)
;;     23018EC0 (in llc_llcp_feats_req_pdu_send)
;;     23018F04 (in llc_llcp_feats_rsp_pdu_send)
;;     23018F98 (in llc_llcp_start_enc_req_pdu_send)
;;     23019006 (in llc_llcp_terminate_ind_pdu_send)
;;     2301903A (in llc_llcp_unknown_rsp_send_pdu)
;;     23019164 (in llc_llcp_ping_req_pdu_send)
;;     23019180 (in llc_llcp_ping_rsp_pdu_send)
;;     230191FE (in llc_llcp_length_req_pdu_send)
;;     2301924A (in llc_llcp_length_rsp_pdu_send)
llc_llcp_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.mv	s4,a0
	c.mv	s6,a1
	c.li	a0,0000001A
	c.li	a1,00000000
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s5,a2
	jal	ra,000000002300D942
	c.mv	s3,a0
	c.li	a1,00000000
	c.li	a0,00000010
	jal	ra,000000002300D942
	beq	s3,zero,0000000023017422

l230173BC:
	c.mv	s1,a0
	c.beqz	a0,0000000023017422

l230173C0:
	lui	s0,0004201A
	slli	a5,s4,00000002
	addi	s0,s0,+00000320
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.li	a2,0000001A
	c.mv	a1,s6
	lw	s2,a5,+00000010
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	a0,s3
	addi	s2,s2,+00000040
	c.jalr	a5
	sw	s3,s1,+00000008
	sh	s4,s1,+00000004
	sb	s5,s1,+0000000C
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.lw	s0,0(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.lw	a5,16(a0)
	c.addi16sp	00000020
	jal	zero,0000000023010A4E

l23017422:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

;; llcp_ping_rsp_handler: 23017436
llcp_ping_rsp_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s2,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s1)
	lbu	a5,s1,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002301747A

l23017462:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,000000002301A0D8

l2301746C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301747A:
	andi	a5,a0,+00000001
	c.beqz	a5,000000002301746C

l23017480:
	lbu	a4,s1,+000000A3
	c.li	a5,00000005
	bne	a4,a5,000000002301746C

l2301748A:
	andi	a1,a0,+000000FE
	c.mv	a0,s0
	jal	ra,00000000230172BC
	c.mv	a1,s0
	sb	zero,s1,+000000A3
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.j	000000002301746C

;; llcp_terminate_ind_handler: 230174A4
llcp_terminate_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,zero,+00000102
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a3
	c.mv	s2,a1
	jal	ra,000000002300E00C
	lui	a5,0004201A
	slli	a4,s0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,s1,+00000001
	c.li	a1,0000000F
	c.mv	a0,s2
	sb	a4,a5,+000000A1
	lhu	a4,a5,+0000005C
	ori	a4,a4,+00000200
	sh	a4,a5,+0000005C
	jal	ra,00000000230172BC
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,00000000230174FE

l230174F4:
	lbu	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,000000002301A0D8

l230174FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_enc_rsp_handler: 2301750C
llcp_enc_rsp_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s2,0004201A
	c.swsp	ra,00000094
	c.swsp	s7,00000084
	c.mv	s4,a1
	c.mv	s3,a3
	jal	ra,000000002301732C
	addi	a5,s2,+00000320
	slli	s5,s0,00000002
	c.add	a5,s5
	c.lw	a5,0(s1)
	c.mv	s6,a0
	addi	s2,s2,+00000320
	lbu	a5,s1,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,000000002301755E

l2301754A:
	lbu	a4,s1,+000000A3
	c.li	a5,0000000D
	beq	a4,a5,000000002301755E

l23017554:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,000000002301A0D8

l2301755E:
	andi	s6,s6,+00000001
	beq	s6,zero,0000000023017570

l23017566:
	lbu	a4,s1,+000000A3
	c.li	a5,0000000D
	bne	a4,a5,0000000023017624

l23017570:
	addi	a3,zero,+00000020
	c.mv	a2,s4
	c.li	a1,00000000
	c.li	a0,00000004
	jal	ra,000000002300DB74
	lui	s7,0004200E
	lw	a5,s7,+0000013C
	c.mv	s6,a0
	addi	a1,s3,+00000001
	c.li	a2,00000008
	addi	a0,s1,+00000079
	c.jalr	a5
	lw	a5,s7,+0000013C
	addi	a1,s1,+00000081
	c.li	a2,00000010
	c.mv	a0,s6
	c.jalr	a5
	lw	a5,s7,+0000013C
	c.li	a2,00000010
	addi	a1,s1,+00000071
	addi	a0,s6,+00000010
	c.jalr	a5
	c.mv	a0,s6
	jal	ra,000000002300DBE2
	lbu	a5,s3,+0000000A
	lbu	a4,s3,+00000009
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+0000005C
	add	s0,s0,a4
	lui	a4,00028008
	addi	a3,a4,+000000C8
	addi	a4,a4,+000000CA
	c.add	a3,s0
	sh	a5,a3,+00000000
	lbu	a5,s3,+0000000C
	lbu	a3,s3,+0000000B
	c.add	s0,a4
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s0,+00000000
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.add	s2,s5
	lw	a4,s2,+00000000
	lbu	a5,a4,+000000A5
	ori	a5,a5,+00000008
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero
	c.li	a5,0000000E
	c.lui	a2,00001000
	sb	a5,s1,+000000A3
	addi	a2,a2,-00000060
	c.mv	a1,s4
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E

l23017624:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; llc_llcp_reject_ind: 2301763C
;;   Called from:
;;     23017836 (in llcp_reject_ind_ext_handler)
;;     2301784C (in llcp_reject_ind_handler)
llc_llcp_reject_ind proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	lui	s0,0004201A
	c.mv	s4,a0
	c.mv	a0,a1
	c.swsp	a3,00000084
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s1,a1
	c.mv	s6,a2
	addi	s5,s0,+00000320
	jal	ra,000000002301732C
	slli	s7,s4,00000002
	c.mv	s3,a0
	c.add	s5,s7
	c.mv	a1,s1
	addi	a0,zero,+00000102
	lw	s2,s5,+00000000
	jal	ra,000000002300E00C
	andi	a5,s3,+00000001
	addi	s0,s0,+00000320
	c.lwsp	a2,000000A4
	beq	a5,zero,00000000230177D4

l2301768A:
	lbu	a5,s2,+000000A3
	c.li	a4,0000000C
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023017802

l2301769A:
	lui	a4,00023074
	c.slli	a5,02
	addi	a4,a4,+000004C0
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l230176AA:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a0,s4
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,00000000230177A4

l230176C0:
	c.add	s0,s7
	c.lw	s0,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,00000010
	bne	a5,zero,00000000230177A4

l230176CE:
	c.mv	a2,s6
	c.mv	a0,s4
	sb	zero,a4,+000000A5
	c.li	a1,00000000
	c.slli	s3,18
	jal	ra,000000002300F504
	srai	s3,s3,00000018
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	sb	zero,s2,+000000A3
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	a6,00000158
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	andi	a1,s3,+000000FA
	c.mv	a0,s1
	c.lwsp	a2,00000178
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	jal	zero,00000000230172BC

l2301770E:
	beq	a3,zero,0000000023017802

l23017712:
	add	s5,s0,s7
	lw	a5,s5,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	bne	a5,zero,0000000023017802

l23017724:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.li	a5,0000001A
	bne	s6,a5,0000000023017764

l23017734:
	c.mv	a0,s4
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,0000000023017764

l23017740:
	lw	a5,s5,+00000000
	c.lw	a5,0(a0)
	c.li	a5,00000002
	sb	a5,a0,+00000000
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	jal	zero,000000002300DBE2

l23017764:
	lhu	a5,s2,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,000000002301778E

l2301776E:
	andi	a5,a5,-00000041
	sh	a5,s2,+0000005C
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,000000002301778E

l2301777E:
	lw	a2,s2,+00000010
	c.mv	a1,s4
	c.mv	a0,s6
	addi	a2,a2,+00000028
	jal	ra,000000002300F2A8

l2301778E:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002301A18A

l23017796:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	sb	zero,s2,+000000A3

l230177A4:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l230177BA:
	add	a5,s0,s7
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.bnez	a5,0000000023017802

l230177C8:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.j	0000000023017796

l230177D4:
	andi	a5,s3,+00000002
	c.beqz	a5,0000000023017802

l230177DA:
	c.beqz	a3,0000000023017802

l230177DC:
	lw	a5,s5,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.bnez	a5,0000000023017802

l230177E8:
	lbu	a4,s2,+000000A4
	c.li	a5,00000003
	bne	a4,a5,00000000230177A4

l230177F2:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230172BC
	sb	zero,s2,+000000A4
	c.j	00000000230177A4

l23017802:
	c.add	s0,s7
	c.lw	s0,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230177A4

l2301780E:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.mv	a0,s4
	c.lwsp	s0,00000198
	addi	a1,zero,+0000003D
	c.addi16sp	00000040
	jal	zero,000000002301A0D8

;; llcp_reject_ind_ext_handler: 2301782C
llcp_reject_ind_ext_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a3,+00000002
	c.li	a3,00000001
	jal	ra,000000002301763C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_reject_ind_handler: 23017842
llcp_reject_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a3,+00000001
	c.li	a3,00000000
	jal	ra,000000002301763C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llcp_pause_enc_req_handler: 23017858
llcp_pause_enc_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	a4,a5,+00000320
	slli	s3,s1,00000002
	c.add	a4,s3
	lw	s2,a4,+00000000
	lbu	a4,s2,+000000A5
	c.andi	a4,00000008
	c.beqz	a4,00000000230178AA

l2301788C:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8

l23017896:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230178AA:
	c.mv	s4,a0
	c.mv	a0,s1
	addi	s5,a5,+00000320
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,0000000023017896

l230178BC:
	andi	a5,s4,+00000002
	c.bnez	a5,0000000023017896

l230178C2:
	ori	s1,s4,+00000002
	andi	s1,s1,+000000FF
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230172BC
	andi	a5,s4,+00000001
	c.beqz	a5,00000000230178E2

l230178D8:
	c.mv	a1,s0
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C

l230178E2:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230172BC
	ori	a1,s4,+00000006
	andi	a1,a1,+000000FF
	c.mv	a0,s0
	jal	ra,00000000230172BC
	c.li	a5,00000005
	sb	a5,s2,+000000A4
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	add	a5,s5,s3
	c.lw	a5,0(a4)
	lbu	a5,a4,+000000A5
	ori	a5,a5,+0000000C
	sb	a5,a4,+000000A5
	lw	a0,s2,+00000010
	jal	ra,0000000023012E70
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023017934

l23017926:
	lhu	a5,s2,+0000005C
	ori	a5,a5,+00000004
	sh	a5,s2,+0000005C
	c.j	0000000023017896

l23017934:
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	0000000023017896

;; llcp_start_enc_req_handler: 23017942
llcp_start_enc_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s3,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.mv	s1,a0
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023017988

l23017972:
	lbu	a5,s0,+000000A3
	c.addi	a5,FFFFFFF2
	andi	a5,a5,+000000FD
	c.beqz	a5,0000000023017988

l2301797E:
	addi	a1,zero,+0000003D
	c.mv	a0,s3
	jal	ra,000000002301A0D8

l23017988:
	c.andi	s1,00000001
	lbu	a5,s0,+000000A3
	c.li	a4,0000000E
	c.beqz	s1,00000000230179B0

l23017992:
	beq	a5,a4,00000000230179B4

l23017996:
	c.li	a4,00000010
	bne	a5,a4,00000000230179BA

l2301799C:
	c.li	a5,00000011
	sb	a5,s0,+000000A3
	c.mv	a2,s2
	c.mv	a1,s2
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	00000000230179BA

l230179B0:
	bne	a5,a4,000000002301799C

l230179B4:
	c.li	a5,0000000F
	sb	a5,s0,+000000A3

l230179BA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llcp_enc_req_handler: 230179CA
llcp_enc_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.mv	s3,a3
	jal	ra,000000002301732C
	lui	a4,0004201A
	addi	a5,a4,+00000320
	slli	s5,s4,00000002
	c.add	a5,s5
	c.lw	a5,0(s0)
	c.mv	s1,a0
	addi	s6,a4,+00000320
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023017A32

l23017A06:
	lbu	a4,s0,+000000A4
	c.li	a5,00000007
	beq	a4,a5,0000000023017A32

l23017A10:
	addi	a1,zero,+0000003D
	c.mv	a0,s4
	jal	ra,000000002301A0D8
	c.li	a5,00000000

l23017A1C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23017A32:
	c.mv	a0,s4
	jal	ra,000000002301428C
	c.li	a4,00000004
	c.li	a5,00000000
	bne	a0,a4,0000000023017A1C

l23017A40:
	andi	a4,s1,+00000002
	c.beqz	a4,0000000023017A50

l23017A46:
	lbu	a3,s0,+000000A4
	c.li	a4,00000007
	bne	a3,a4,0000000023017A1C

l23017A50:
	ori	a1,s1,+00000002
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230172BC
	ori	a1,s1,+00000006
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230172BC
	c.li	a5,00000008
	c.add	s5,s6
	sb	a5,s0,+000000A4
	lw	a5,s5,+00000000
	c.addi	s3,FFFFFFFE
	c.mv	a1,s2
	sw	s3,a5,+00000008
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a4,s5,+00000000
	lbu	a5,a4,+000000A5
	ori	a5,a5,+0000000C
	sb	a5,a4,+000000A5
	c.lw	s0,16(a0)
	jal	ra,0000000023012E70
	csrrw	zero,mstatus,zero
	c.beqz	a0,0000000023017ABC

l23017AAC:
	lhu	a5,s0,+0000005C
	ori	a5,a5,+00000004
	sh	a5,s0,+0000005C

l23017AB8:
	c.li	a5,00000001
	c.j	0000000023017A1C

l23017ABC:
	c.mv	a2,s2
	c.mv	a1,s2
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	0000000023017AB8

;; llcp_unknown_rsp_handler: 23017ACA
llcp_unknown_rsp_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.mv	s1,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	a4,a5,+00000320
	slli	s5,s2,00000002
	c.add	a4,s5
	c.lw	a4,0(s0)
	c.mv	s3,a0
	addi	s4,a5,+00000320
	lbu	a4,s0,+000000A5
	c.lwsp	a2,000000A4
	andi	a2,a4,+00000008
	c.beqz	a2,0000000023017B30

l23017B08:
	lbu	a2,s0,+000000A3
	c.li	a5,0000000D
	beq	a2,a5,0000000023017B30

l23017B12:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,000000002301A0D8

l23017B1C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23017B30:
	andi	a5,s3,+00000001
	c.beqz	a5,0000000023017B1C

l23017B36:
	lbu	a5,s0,+000000A3
	c.li	a2,0000000C
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a2,a5,0000000023017B1C

l23017B46:
	lui	a2,00023074
	c.slli	a5,02
	addi	a2,a2,+000004F4
	c.add	a5,a2
	c.lw	a5,0(a5)
	c.jr	a5

;; fn23017B56: 23017B56
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B18 (in llcp_unknown_rsp_handler)
;;     23017B34 (in llcp_unknown_rsp_handler)
;;     23017B42 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23017B7E (in fn23017B78)
;;     23017B98 (in fn23017B78)
;;     23017BA0 (in fn23017B9A)
;;     23017BD0 (in fn23017B9A)
;;     23017C02 (in fn23017B9A)
;;     23017C0A (in fn23017C04)
;;     23017C24 (in fn23017C04)
;;     23017C2C (in fn23017C04)
;;     23017C7A (in fn23017C04)
;;     23017C82 (in fn23017C7C)
;;     23017C9E (in fn23017C7C)
fn23017B56 proc
	c.andi	a4,00000010
	c.bnez	a4,0000000023017B1C

l23017B5A:
	sb	zero,s0,+000000A5
	c.li	a2,0000001A
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002300F504

l23017B68:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	sb	zero,s0,+000000A3
	c.j	0000000023017B1C

;; fn23017B78: 23017B78
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
fn23017B78 proc
	lbu	a4,a3,+00000001
	c.li	a5,0000000E
	bne	a4,a5,0000000023017B1C

l23017B82:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	addi	a2,s0,+00000069
	c.mv	a1,s2
	c.li	a0,0000001A
	jal	ra,000000002300F396
	c.j	0000000023017B68

;; fn23017B9A: 23017B9A
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
fn23017B9A proc
	lbu	a4,a3,+00000001
	c.li	a5,0000000F
	bne	a4,a5,0000000023017B1C

l23017BA4:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a0,s2
	sb	zero,s0,+000000A6
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,0000000023017BD2

l23017BBE:
	add	a5,s4,s5
	c.lw	a5,0(a5)
	c.lw	a5,0(a0)
	c.li	a5,00000002
	sb	a5,a0,+00000000
	jal	ra,000000002300DBE2
	c.j	0000000023017B1C

l23017BD2:
	lhu	a5,s0,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,0000000023017BFA

l23017BDC:
	andi	a5,a5,-00000041
	sh	a5,s0,+0000005C
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023017BFA

l23017BEC:
	c.lw	s0,16(a2)
	c.mv	a1,s2
	c.li	a0,0000001A
	addi	a2,a2,+00000028
	jal	ra,000000002300F2A8

l23017BFA:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002301A18A
	c.j	0000000023017B68

;; fn23017C04: 23017C04
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
fn23017C04 proc
	lbu	a4,a3,+00000001
	c.li	a5,00000014
	bne	a4,a5,0000000023017B1C

l23017C0E:
	addi	a0,zero,+00000102
	c.mv	a1,s1
	jal	ra,000000002300E00C
	c.li	a5,00000001
	sb	a5,s0,+00000052
	c.li	a0,00000006
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023017B68

l23017C26:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	c.bnez	a5,0000000023017B68

l23017C2E:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s2
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a4,00000007
	sb	a4,a0,+00000000
	sh	s2,a0,+00000002
	lhu	a4,s0,+00000048
	sh	a4,a0,+00000008
	lhu	a4,s0,+00000050
	sh	a4,a0,+0000000A
	lhu	a4,s0,+00000046
	sh	a4,a0,+00000004
	lhu	a4,s0,+0000004E
	sh	a4,a0,+00000006
	jal	ra,000000002300BD76
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	0000000023017B68

;; fn23017C7C: 23017C7C
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
fn23017C7C proc
	lbu	a4,a3,+00000001
	c.li	a5,00000012
	bne	a4,a5,0000000023017B1C

l23017C86:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	c.mv	a1,s1
	sb	zero,s0,+000000A3
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.j	0000000023017B1C

;; llc_llcp_version_ind_pdu_send: 23017CA0
;;   Called from:
;;     23017D76 (in llcp_vers_ind_handler)
;;     2301B558 (in hci_rd_rem_ver_info_cmd_handler)
llc_llcp_version_ind_pdu_send proc
	lui	a5,00007AF1
	c.addi	sp,FFFFFFE0
	addi	a5,a5,-000006F4
	c.swsp	a5,00000004
	c.addi4spn	a1,00000008
	addi	a5,zero,+00000321
	c.li	a2,0000000C
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sh	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_vers_ind_handler: 23017CC8
llcp_vers_ind_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s2,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s1,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.lwsp	a2,000000A4
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023017D14

l23017CFA:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8

l23017D04:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23017D14:
	lbu	a2,a3,+00000001
	lhu	a5,s0,+0000005C
	c.mv	s3,a0
	sb	a2,s0,+0000003C
	lhu	a2,a3,+00000002
	srai	a4,a5,00000001
	ori	a5,a5,+00000002
	sh	a2,s0,+0000003E
	lhu	a3,a3,+00000004
	sh	a5,s0,+0000005C
	andi	a5,a0,+00000001
	sh	a3,s0,+00000040
	c.andi	a4,00000001
	c.beqz	a5,0000000023017D72

l23017D46:
	lbu	a3,s0,+000000A3
	c.li	a5,00000002
	bne	a3,a5,0000000023017D72

l23017D50:
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002300F400
	andi	a1,s3,+000000FE
	sb	zero,s0,+000000A3
	c.mv	a0,s2
	jal	ra,00000000230172BC
	c.j	0000000023017D04

l23017D72:
	c.bnez	a4,0000000023017D04

l23017D74:
	c.mv	a0,s1
	jal	ra,0000000023017CA0
	c.j	0000000023017D04

;; llc_llcp_ch_map_update_pdu_send: 23017D7C
;;   Called from:
;;     23019642 (in llc_chmap_update_req_ind_handler)
llc_llcp_ch_map_update_pdu_send proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.add	a5,a4
	c.lw	a5,0(s1)
	c.mv	s0,a0
	c.li	a5,00000001
	c.lw	s1,16(a0)
	c.li	a1,00000002
	sb	a5,sp,+00000008
	addi	a0,a0,+00000028
	jal	ra,0000000023012ACA
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	sh	a0,sp,+0000000E
	addi	a1,s1,+00000063
	c.li	a2,00000005
	addi	a0,sp,+00000009
	c.jalr	a5
	lbu	a2,sp,+00000008
	c.addi4spn	a1,00000008
	andi	a0,s0,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_pause_enc_req_pdu_send: 23017DD8
;;   Called from:
;;     23019A6C (in llc_enc_mgt_ind_handler)
llc_llcp_pause_enc_req_pdu_send proc
	slli	a1,a0,00000008
	ori	a1,a1,+00000001
	c.addi	sp,FFFFFFE0
	c.slli	a1,10
	c.lui	a2,00001000
	c.swsp	s0,0000000C
	c.li	a5,0000000A
	c.mv	s0,a0
	c.srli	a1,00000010
	addi	a2,a2,-00000060
	addi	a0,zero,+00000102
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,000000002300DF0E
	lbu	a2,sp,+0000000C
	c.addi4spn	a1,0000000C
	andi	a0,s0,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_pause_enc_rsp_pdu_send: 23017E16
;;   Called from:
;;     23017EEA (in llcp_pause_enc_rsp_handler)
;;     23019B72 (in llc_enc_mgt_ind_handler)
llc_llcp_pause_enc_rsp_pdu_send proc
	addi	a4,zero,+0000005C
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.li	a5,0000000B
	sb	a5,sp,+0000000C
	lui	a5,00028008
	addi	a5,a5,+00000092
	c.swsp	ra,0000008C
	c.addi4spn	a1,0000000C
	c.li	a2,0000000B
	c.add	a4,a5
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000101
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	lui	a5,0004201A
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a4)
	andi	a0,a0,+000000FF
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFFD
	sb	a5,a4,+000000A5
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_pause_enc_rsp_handler: 23017E72
llcp_pause_enc_rsp_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s3,a1
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	s4,a5,+00000320
	slli	s5,s1,00000002
	c.add	s4,s5
	andi	a4,a0,+00000001
	lw	s2,s4,+00000000
	addi	s0,a5,+00000320
	c.beqz	a4,0000000023017F20

l23017EA8:
	lbu	a4,s2,+000000A3
	c.li	a5,0000000B
	bne	a4,a5,0000000023017F20

l23017EB2:
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	addi	a4,zero,+0000005C
	add	a4,s1,a4
	lui	a5,00028008
	addi	a5,a5,+00000092
	c.mv	a0,s1
	c.add	a4,a5
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000301
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	c.li	a5,0000000C
	sb	a5,s2,+000000A3
	jal	ra,0000000023017E16
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lw	a4,s4,+00000000
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFFC
	ori	a5,a5,+00000008
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero

l23017F0C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23017F20:
	lbu	a4,s2,+000000A4
	c.addi	a4,FFFFFFFA
	c.bnez	a4,0000000023017F88

l23017F28:
	c.srli	a0,00000001
	c.andi	a0,00000001
	c.beqz	a0,0000000023017F88

l23017F2E:
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	addi	a0,zero,+0000005C
	add	a0,s1,a0
	lui	a4,00028008
	addi	a4,a4,+00000092
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	c.add	a0,a4
	lhu	a5,a0,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000301
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a0,+00000000
	add	a5,s0,s5
	c.lw	a5,0(a4)
	addi	a0,zero,+00000102
	lbu	a5,a4,+000000A5
	andi	a5,a5,-00000024
	sb	a5,a4,+000000A5
	c.li	a5,00000007
	sb	a5,s2,+000000A4
	jal	ra,000000002300DF0E
	c.j	0000000023017F0C

l23017F88:
	lbu	a5,s2,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023017F0C

l23017F90:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8
	c.j	0000000023017F0C

;; llc_llcp_enc_req_pdu_send: 23017F9C
;;   Called from:
;;     23019AB0 (in llc_enc_mgt_ind_handler)
llc_llcp_enc_req_pdu_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,0004201A
	slli	a5,a0,00000002
	addi	s1,s1,+00000320
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s5,00000090
	c.add	s1,a5
	c.li	a5,00000003
	sb	a5,sp,+00000008
	lhu	a5,a1,+0000000A
	lui	s4,0004200E
	c.mv	s2,a0
	sb	a5,sp,+00000011
	c.srli	a5,00000008
	sb	a5,sp,+00000012
	lw	a5,s4,+0000013C
	c.mv	s6,a1
	c.li	a2,00000008
	c.addi	a1,00000002
	addi	a0,sp,+00000009
	lw	s5,s1,+00000000
	c.jalr	a5
	lw	a5,s4,+0000013C
	addi	a1,s5,+00000091
	c.li	a2,00000004
	addi	a0,sp,+0000001B
	addi	s0,zero,+0000005C
	c.jalr	a5
	add	s0,s2,s0
	lw	a5,s4,+0000013C
	addi	a1,s5,+00000095
	c.li	a2,00000008
	addi	a0,sp,+00000013
	c.jalr	a5
	lbu	a5,sp,+0000001C
	lbu	a4,sp,+0000001B
	lui	s3,00028008
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,s3,+000000C4
	c.add	a4,s0
	sh	a5,a4,+00000000
	lbu	a5,sp,+0000001E
	lbu	a4,sp,+0000001D
	addi	a1,s6,+0000000C
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,s3,+000000C6
	c.add	a4,s0
	sh	a5,a4,+00000000
	lw	a5,s4,+0000013C
	c.li	a2,00000010
	addi	a0,s5,+00000081
	c.jalr	a5
	lw	a5,s4,+0000013C
	addi	a1,sp,+00000013
	c.li	a2,00000008
	addi	a0,s5,+00000071
	addi	s3,s3,+00000092
	c.jalr	a5
	c.add	s0,s3
	lhu	a5,s0,+00000000
	slli	a1,s2,00000008
	ori	a1,a1,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000101
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000000
	c.lw	s1,0(a4)
	c.slli	a1,10
	c.lui	a2,00001000
	lbu	a5,a4,+000000A5
	c.srli	a1,00000010
	addi	a2,a2,-00000060
	c.andi	a5,FFFFFFFD
	sb	a5,a4,+000000A5
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	lbu	a2,sp,+00000008
	c.addi4spn	a1,00000008
	andi	a0,s2,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

;; llc_llcp_enc_rsp_pdu_send: 230180C4
;;   Called from:
;;     23019BE0 (in llc_enc_mgt_ind_handler)
llc_llcp_enc_rsp_pdu_send proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s1,00000088
	c.add	a5,a4
	c.lw	a5,0(s1)
	lui	s2,0004200E
	c.li	a5,00000004
	sb	a5,sp,+00000000
	lw	a5,s2,+0000013C
	c.mv	s0,a0
	addi	a1,s1,+00000091
	c.li	a2,00000004
	addi	a0,sp,+00000009
	c.jalr	a5
	lw	a5,s2,+0000013C
	addi	a1,s1,+00000095
	c.li	a2,00000008
	addi	a0,sp,+00000001
	c.jalr	a5
	lbu	a4,sp,+0000000A
	lbu	a5,sp,+00000009
	lui	a3,00028008
	c.slli	a4,08
	c.or	a4,a5
	addi	a5,zero,+0000005C
	add	a5,s0,a5
	addi	a2,a3,+000000C8
	addi	a3,a3,+000000CA
	addi	a1,sp,+00000001
	addi	a0,s1,+00000079
	c.add	a2,a5
	sh	a4,a2,+00000000
	lbu	a4,sp,+0000000C
	lbu	a2,sp,+0000000B
	c.add	a5,a3
	c.slli	a4,08
	c.or	a4,a2
	sh	a4,a5,+00000000
	lw	a5,s2,+0000013C
	c.li	a2,00000008
	c.jalr	a5
	lbu	a2,sp,+00000000
	c.mv	a1,sp
	andi	a0,s0,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_start_enc_rsp_pdu_send: 2301816C
;;   Called from:
;;     230182C6 (in llcp_start_enc_rsp_handler)
;;     23019B18 (in llc_enc_mgt_ind_handler)
llc_llcp_start_enc_rsp_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000006
	sb	a5,sp,+0000000C
	addi	a5,zero,+0000005C
	add	a5,a0,a5
	lui	a4,00028008
	addi	a4,a4,+00000092
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.add	a5,a4
	lhu	a4,a5,+00000000
	ori	a4,a4,+00000300
	sh	a4,a5,+00000000
	lui	a5,0004201A
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,a5,+000000A5
	lhu	a2,a5,+00000050
	lhu	a1,a5,+0000004E
	c.lw	a5,16(a0)
	ori	a4,a4,+00000003
	sb	a4,a5,+000000A5
	jal	ra,0000000023012D3A
	lbu	a2,sp,+0000000C
	c.addi4spn	a1,0000000C
	andi	a0,s0,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llcp_start_enc_rsp_handler: 230181D8
llcp_start_enc_rsp_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	s0,0004201A
	c.swsp	ra,0000008C
	c.mv	s5,a1
	jal	ra,000000002301732C
	addi	a5,s0,+00000320
	slli	s4,s2,00000002
	c.add	a5,s4
	lw	s3,a5,+00000000
	c.mv	s1,a0
	addi	s0,s0,+00000320
	lbu	a5,s3,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023018244

l23018212:
	lbu	a4,s3,+000000A3
	c.li	a5,00000012
	beq	a4,a5,0000000023018244

l2301821C:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000B
	beq	a4,a5,0000000023018244

l23018226:
	addi	a1,zero,+0000003D
	c.mv	a0,s2
	jal	ra,000000002301A0D8

l23018230:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23018244:
	andi	a5,s1,+0000000F
	c.li	a4,0000000F
	bne	a5,a4,0000000023018294

l2301824E:
	c.mv	a0,s2
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,0000000023018230

l2301825A:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000B
	bne	a4,a5,0000000023018230

l23018264:
	addi	a5,zero,+0000005C
	add	s2,s2,a5
	lui	a5,00028008
	addi	a5,a5,+00000092
	c.add	s0,s4
	c.add	s2,a5
	lhu	a5,s2,+00000000
	ori	a5,a5,+00000300
	sh	a5,s2,+00000000
	c.lw	s0,0(a4)
	lbu	a5,a4,+000000A5
	ori	a5,a5,+00000003
	sb	a5,a4,+000000A5
	c.j	0000000023018230

l23018294:
	c.mv	a1,s5
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a0,s2
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,0000000023018304

l230182AA:
	c.li	a5,0000000C
	sb	a5,s3,+000000A4
	c.andi	s1,00000001
	c.beqz	s1,00000000230182C4

l230182B4:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s5
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E

l230182C4:
	c.mv	a0,s2
	jal	ra,000000002301816C
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	add	a5,s0,s4
	c.lw	a5,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFF7
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero

l230182E6:
	c.add	s0,s4
	c.lw	s0,0(a4)
	lbu	a5,a4,+000000A5
	andi	a3,a5,+00000010
	c.beqz	a3,0000000023018340

l230182F4:
	c.andi	a5,FFFFFFEF
	sb	a5,a4,+000000A5
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002300F4D2
	c.j	0000000023018230

l23018304:
	c.slli	s1,18
	c.srai	s1,00000018
	andi	a1,s1,+000000FE
	c.mv	a0,s5
	jal	ra,00000000230172BC
	sb	zero,s3,+000000A3
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	add	a5,s0,s4
	c.lw	a5,0(a4)
	lbu	a5,a4,+000000A5
	andi	a5,a5,-0000002D
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero
	andi	a1,s1,+000000FA
	c.mv	a0,s5
	jal	ra,00000000230172BC
	c.j	00000000230182E6

l23018340:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002300F504
	c.j	0000000023018230

;; llc_llcp_reject_ind_pdu_send: 2301834C
;;   Called from:
;;     23018460 (in llcp_length_rsp_handler)
;;     230185C6 (in llcp_con_param_rsp_handler)
;;     2301866C (in llcp_con_param_rsp_handler)
;;     23018774 (in llcp_feats_rsp_handler)
;;     230188C0 (in fn2301884A)
;;     2301898E (in fn23018984)
;;     23018C52 (in llcp_con_param_req_handler)
;;     23019C3C (in llc_enc_mgt_ind_handler)
;;     2301AA5C (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     2301ACA6 (in hci_le_ltk_req_neg_reply_cmd_handler)
llc_llcp_reject_ind_pdu_send proc
	lui	a5,0004201A
	slli	a4,a0,00000002
	c.addi	sp,FFFFFFE0
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.add	a5,a4
	c.lw	a5,0(a5)
	andi	a0,a0,+000000FF
	lhu	a4,a5,+0000005C
	c.andi	a4,00000001
	c.beqz	a4,0000000023018374

l2301836C:
	lbu	a4,a5,+00000069
	c.andi	a4,00000004
	c.bnez	a4,000000002301837A

l23018374:
	c.li	a4,0000000D
	bgeu	a4,a1,0000000023018396

l2301837A:
	c.li	a5,00000011
	sb	a2,sp,+0000000E
	sb	a5,sp,+0000000C
	sb	a1,sp,+0000000D
	c.li	a2,00000011

l2301838A:
	c.addi4spn	a1,0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23018396:
	c.addi	a1,FFFFFFFD
	sb	a4,sp,+0000000C
	sb	a2,sp,+0000000D
	andi	a1,a1,+000000FD
	c.bnez	a1,00000000230183AA

l230183A6:
	sb	zero,a5,+000000A5

l230183AA:
	c.li	a2,0000000D
	c.j	000000002301838A

;; llcp_length_rsp_handler: 230183AE
llcp_length_rsp_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s2,a1
	c.mv	s1,a3
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s4,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s0)
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023018404

l230183E4:
	addi	a1,zero,+0000003D
	c.mv	a0,s4
	jal	ra,000000002301A0D8

l230183EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23018404:
	c.mv	s3,a0
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	andi	a5,s3,+00000001
	beq	a5,zero,0000000023018562

l23018418:
	lbu	a4,s0,+000000A3
	c.li	a5,00000004
	bne	a4,a5,0000000023018562

l23018422:
	sb	zero,s0,+000000A3
	andi	a1,s3,+000000FE
	c.mv	a0,s2
	jal	ra,00000000230172BC
	lhu	a3,s1,+00000002
	c.li	a5,0000001A
	bgeu	a5,a3,0000000023018456

l2301843A:
	lhu	a1,s1,+00000006
	bgeu	a5,a1,0000000023018456

l23018442:
	lhu	a4,s1,+00000004
	addi	a5,zero,+00000147
	bgeu	a5,a4,0000000023018456

l2301844E:
	lhu	a2,s1,+00000008
	bltu	a5,a2,0000000023018466

l23018456:
	addi	a2,zero,+00000020

l2301845A:
	lbu	a1,s1,+00000000
	c.mv	a0,s4
	jal	ra,000000002301834C
	c.j	00000000230183EE

l23018466:
	lhu	a5,s0,+00000044
	bgeu	a1,a5,0000000023018470

l2301846E:
	c.mv	a5,a1

l23018470:
	lhu	s3,s0,+0000004C
	slli	s5,a5,00000010
	srli	s5,s5,00000010
	bgeu	a2,s3,0000000023018482

l23018480:
	c.mv	s3,a2

l23018482:
	lhu	s2,s0,+00000042
	c.slli	s3,10
	srli	s3,s3,00000010
	bgeu	a3,s2,0000000023018492

l23018490:
	c.mv	s2,a3

l23018492:
	lhu	s1,s0,+0000004A
	c.slli	s2,10
	srli	s2,s2,00000010
	bgeu	a4,s1,00000000230184A2

l230184A0:
	c.mv	s1,a4

l230184A2:
	c.slli	s1,10
	c.lw	s0,16(a0)
	c.srli	s1,00000010
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023012D3A
	lhu	a5,s0,+00000048
	bne	a5,s5,00000000230184D0

l230184B8:
	lhu	a5,s0,+00000050
	bne	a5,s3,00000000230184D0

l230184C0:
	lhu	a5,s0,+00000046
	bne	a5,s2,00000000230184D0

l230184C8:
	lhu	a5,s0,+0000004E
	beq	a5,s1,0000000023018500

l230184D0:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,16(a0)
	sh	s5,s0,+00000048
	sh	s3,s0,+00000050
	sh	s2,s0,+00000046
	sh	s1,s0,+0000004E
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023012E76
	csrrw	zero,mstatus,zero
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFD
	sb	a5,s0,+00000053

l23018500:
	c.li	a0,00000006
	jal	ra,00000000230149E8
	beq	a0,zero,00000000230183EE

l2301850A:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	bne	a5,zero,00000000230183EE

l23018514:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s4
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a4,00000007
	sb	a4,a0,+00000000
	sh	s4,a0,+00000002
	lhu	a4,s0,+00000048
	sh	a4,a0,+00000008
	lhu	a4,s0,+00000050
	sh	a4,a0,+0000000A
	lhu	a4,s0,+00000046
	sh	a4,a0,+00000004
	lhu	a4,s0,+0000004E
	sh	a4,a0,+00000006
	jal	ra,000000002300BD76
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	00000000230183EE

l23018562:
	c.li	a2,00000011
	c.j	000000002301845A

;; llcp_con_param_rsp_handler: 23018566
llcp_con_param_rsp_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.mv	s3,a1
	c.mv	s2,a3
	lui	s1,0004201A
	jal	ra,000000002301732C
	slli	a5,s0,00000002
	addi	s1,s1,+00000320
	c.add	s1,a5
	c.lw	s1,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230185B4

l23018598:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,000000002301A0D8

l230185A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230185B4:
	lbu	a4,a4,+000000A3
	c.li	a5,00000007
	beq	a4,a5,00000000230185CC

l230185BE:
	lbu	a1,s2,+00000000
	c.li	a2,0000001F
	c.mv	a0,s0
	jal	ra,000000002301834C
	c.j	00000000230185A2

l230185CC:
	c.mv	a1,s3
	c.mv	s4,a0
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,00000000230185A2

l230185E4:
	c.lw	s1,0(s1)
	lhu	a4,s2,+00000002
	c.lw	s1,0(a0)
	lhu	a5,a0,+00000004
	bltu	a5,a4,0000000023018660

l230185F4:
	lhu	a4,s2,+00000004
	lhu	a5,a0,+00000002
	bltu	a4,a5,0000000023018660

l23018600:
	c.li	a5,00000004
	sb	a5,a0,+00000000
	lhu	a5,s2,+00000002
	lhu	a4,a0,+00000006
	sh	a5,a0,+00000002
	lhu	a5,s2,+00000004
	sh	a5,a0,+00000004
	lhu	a5,s2,+00000006
	bgeu	a5,a4,0000000023018624

l23018622:
	c.mv	a5,a4

l23018624:
	sh	a5,a0,+00000006
	lhu	a4,a0,+00000008
	lhu	a5,s2,+00000008
	bgeu	a5,a4,0000000023018636

l23018634:
	c.mv	a5,a4

l23018636:
	sh	a5,a0,+00000008
	c.lw	s1,16(a5)
	addi	a3,zero,+00000271
	lhu	a4,a5,+00000012
	srl	a4,a4,a3
	sh	a4,a0,+0000000A
	c.lw	s1,16(a5)
	lhu	a5,a5,+00000012
	srl	a5,a5,a3
	sh	a5,a0,+0000000C
	jal	ra,000000002300DBE2
	c.j	00000000230185A2

l23018660:
	addi	a2,zero,+00000020
	c.li	a1,00000010
	c.mv	a0,s0
	lw	s2,s1,+00000010
	jal	ra,000000002301834C
	lhu	a5,s1,+0000005C
	andi	a4,a5,+00000040
	c.beqz	a4,0000000023018698

l2301867A:
	andi	a5,a5,-00000041
	sh	a5,s1,+0000005C
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023018698

l2301868A:
	addi	a2,s2,+00000028
	c.mv	a1,s0
	addi	a0,zero,+00000020
	jal	ra,000000002300F2A8

l23018698:
	andi	a1,s4,+000000FE
	c.mv	a0,s3
	jal	ra,00000000230172BC
	c.li	a1,00000000
	sb	zero,s1,+000000A3
	c.mv	a0,s0
	jal	ra,000000002301A18A
	c.j	00000000230185A2

;; llcp_feats_rsp_handler: 230186B0
llcp_feats_rsp_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s2,a1
	c.mv	s4,a3
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s1,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s0)
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230186FE

l230186E2:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8

l230186EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230186FE:
	andi	a5,a0,+00000001
	c.mv	s3,a0
	c.beqz	a5,000000002301876C

l23018706:
	lbu	a4,s0,+000000A3
	c.li	a5,00000001
	bne	a4,a5,000000002301876C

l23018710:
	slli	a1,s1,00000008
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	addi	a3,s4,+00000001
	addi	a5,s0,+00000069
	addi	a1,s0,+00000071
	c.mv	a2,a3

l23018732:
	lbu	a4,a5,+00000000
	lbu	a0,a3,+00000000
	c.addi	a5,00000001
	c.addi	a3,00000001
	c.and	a4,a0
	sb	a4,a5,+00000FFF
	bne	a5,a1,0000000023018732

l23018748:
	lhu	a5,s0,+0000005C
	c.mv	a1,s1
	c.li	a0,00000000
	ori	a5,a5,+00000001
	sh	a5,s0,+0000005C
	jal	ra,000000002300F396
	andi	a1,s3,+000000FE
	sb	zero,s0,+000000A3
	c.mv	a0,s2
	jal	ra,00000000230172BC
	c.j	00000000230186EC

l2301876C:
	lbu	a1,s4,+00000000
	c.li	a2,00000011
	c.mv	a0,s1
	jal	ra,000000002301834C
	c.j	00000000230186EC

;; llcp_channel_map_ind_handler: 2301877A
llcp_channel_map_ind_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	c.mv	s6,a0
	c.mv	a0,a1
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	sltu	s3,zero,a2
	c.mv	s7,a3
	addi	s5,a3,-00000002
	c.swsp	ra,00000094
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s4,a1
	c.mv	s1,a2
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	a4,a5,+00000320
	slli	a3,s6,00000002
	c.add	a4,a3
	c.lw	a4,0(s0)
	c.slli	s3,01
	c.mv	s2,a0
	addi	a4,a5,+00000320
	c.beqz	s1,00000000230187E2

l230187C2:
	sb	zero,s5,+00000001

l230187C6:
	add	a5,a4,a3
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023018804

l230187D4:
	c.li	a5,00000004
	sb	a5,s5,+00000001
	c.bnez	s1,0000000023018814

;; fn230187DC: 230187DC
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     230187DA (in llcp_channel_map_ind_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
fn230187DC proc
	addi	a1,zero,+0000003D
	c.j	00000000230188AE

l230187E2:
	lbu	a5,s5,+00000001
	c.beqz	a5,00000000230187C6

l230187E8:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000004
	bltu	a4,a5,0000000023018814

l230187F4:
	lui	a4,00023074
	c.slli	a5,02
	addi	a4,a4,+00000528
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23018804:
	c.lw	s0,16(a0)
	jal	ra,0000000023012D30
	c.beqz	a0,0000000023018830

l2301880C:
	c.li	a5,00000002
	sb	a5,s5,+00000001
	c.beqz	s1,00000000230188B6

l23018814:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23018830:
	c.mv	a0,s6
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,0000000023018842

l2301883C:
	andi	a5,s2,+00000002
	c.beqz	a5,000000002301884E

l23018842:
	c.li	a5,00000005
	sb	a5,s5,+00000001
	c.bnez	s1,0000000023018814

;; fn2301884A: 2301884A
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018848 (in llcp_channel_map_ind_handler)
;;     230188B6 (in fn230188B6)
fn2301884A proc
	c.li	a2,00000011
	c.j	00000000230188BA

l2301884E:
	lw	s8,s0,+00000010
	lhu	s9,s7,+00000006
	c.lui	a4,00008000
	lhu	a5,s8,+00000060
	c.addi	a4,FFFFFFFE
	sub	a5,s9,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,00000000230188A2

l2301886A:
	c.li	a2,00000005
	addi	a1,s7,+00000001
	addi	a0,s0,+00000063
	jal	ra,000000002306CF80
	c.mv	a1,s9
	c.mv	a0,s8
	jal	ra,0000000023014576
	c.li	a5,00000001
	sb	a5,s5,+00000001
	c.bnez	s1,0000000023018814

;; fn23018888: 23018888
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018886 (in llcp_channel_map_ind_handler)
fn23018888 proc
	lhu	a5,s0,+0000005C
	slli	a4,a5,00000014
	bge	a4,zero,00000000230188C6

l23018894:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000005C
	c.j	0000000023018814

l230188A2:
	c.li	a5,00000003
	sb	a5,s5,+00000001
	c.bnez	s1,0000000023018814

;; fn230188AA: 230188AA
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     230187DA (in llcp_channel_map_ind_handler)
;;     230187E0 (in fn230187DC)
;;     230187F0 (in llcp_channel_map_ind_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018812 (in llcp_channel_map_ind_handler)
;;     23018848 (in llcp_channel_map_ind_handler)
;;     23018886 (in llcp_channel_map_ind_handler)
;;     230188A0 (in fn23018888)
;;     230188A8 (in llcp_channel_map_ind_handler)
;;     230188A8 (in llcp_channel_map_ind_handler)
;;     230188C4 (in fn2301884A)
;;     230188E2 (in fn23018888)
fn230188AA proc
	addi	a1,zero,+00000028

l230188AE:
	c.mv	a0,s6
	jal	ra,000000002301A0D8
	c.j	0000000023018814

;; fn230188B6: 230188B6
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018812 (in llcp_channel_map_ind_handler)
fn230188B6 proc
	addi	a2,zero,+00000023

l230188BA:
	lbu	a1,s7,+00000000
	c.mv	a0,s6
	jal	ra,000000002301834C
	c.j	0000000023018814

l230188C6:
	ori	a5,a5,+00000400
	sh	a5,s0,+0000005C
	ori	a1,s2,+00000002
	c.li	a5,00000001
	sb	a5,s0,+000000A4
	andi	a1,a1,+000000FF
	c.mv	a0,s4
	jal	ra,00000000230172BC
	c.j	0000000023018814

;; llcp_con_upd_ind_handler: 230188E4
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
llcp_con_upd_ind_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s8,00000004
	lui	s8,0004201A
	c.swsp	s9,00000080
	addi	a5,s8,+00000320
	slli	s9,a0,00000002
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.add	a5,s9
	c.mv	s5,a0
	c.mv	a0,a1
	sltu	s3,zero,a2
	c.mv	s4,a1
	c.mv	s6,a2
	c.mv	s1,a3
	addi	s7,a3,-00000002
	c.lw	a5,0(s0)
	jal	ra,000000002301732C
	c.slli	s3,01
	c.mv	s2,a0
	addi	s8,s8,+00000320
	beq	s6,zero,0000000023018950

l2301892E:
	sb	zero,s7,+00000001

l23018932:
	c.add	s8,s9
	lw	a5,s8,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023018972

l23018940:
	c.li	a5,00000004
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023018A64

;; fn2301894A: 2301894A
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018946 (in llcp_con_upd_ind_handler)
;;     23018970 (in llcp_con_upd_ind_handler)
fn2301894A proc
	addi	a1,zero,+0000003D
	c.j	0000000023018A84

l23018950:
	lbu	a5,s7,+00000001
	c.beqz	a5,0000000023018932

l23018956:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a4,00000004
	bltu	a4,a5,0000000023018A64

l23018962:
	lui	a4,00023074
	c.slli	a5,02
	addi	a4,a4,+0000053C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23018972:
	c.lw	s0,16(a0)
	jal	ra,0000000023012D30
	c.beqz	a0,0000000023018994

l2301897A:
	c.li	a5,00000002
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023018A64

;; fn23018984: 23018984
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018970 (in llcp_con_upd_ind_handler)
;;     23018980 (in llcp_con_upd_ind_handler)
;;     230189AC (in fn230189AA)
fn23018984 proc
	addi	a2,zero,+00000023

l23018988:
	lbu	a1,s1,+00000000
	c.mv	a0,s5
	jal	ra,000000002301834C
	c.j	0000000023018A64

l23018994:
	c.mv	a0,s5
	jal	ra,000000002301428C
	c.li	a5,00000004
	beq	a0,a5,00000000230189AE

l230189A0:
	c.li	a5,00000005
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023018A64

;; fn230189AA: 230189AA
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018970 (in llcp_con_upd_ind_handler)
;;     230189A6 (in llcp_con_upd_ind_handler)
fn230189AA proc
	c.li	a2,00000011
	c.j	0000000023018988

l230189AE:
	c.lw	s0,16(a3)
	lhu	a5,s1,+0000000A
	lhu	a4,a3,+00000060
	c.sub	a5,a4
	c.slli	a5,10
	c.lui	a4,00008000
	c.srli	a5,00000010
	c.addi	a4,FFFFFFFE
	bltu	a4,a5,0000000023018A5A

l230189C6:
	lhu	a5,a3,+00000078
	lbu	a4,s1,+00000001
	c.srli	a5,00000001
	bltu	a4,a5,00000000230189DA

l230189D4:
	c.addi	a5,FFFFFFFF
	sb	a5,s1,+00000001

l230189DA:
	lhu	a5,s1,+00000008
	c.lw	s0,16(a0)
	c.mv	a1,s1
	sh	a5,s0,+00000056
	jal	ra,00000000230145D0
	c.li	a5,00000001
	sb	a5,s7,+00000001
	bne	s6,zero,0000000023018A64

;; fn230189F4: 230189F4
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018970 (in llcp_con_upd_ind_handler)
;;     230189F0 (in llcp_con_upd_ind_handler)
fn230189F4 proc
	andi	a5,s2,+00000001
	c.beqz	a5,0000000023018A2C

l230189FA:
	lbu	a5,s0,+000000A3
	c.li	a4,00000001
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023018A2C

l23018A0A:
	c.mv	a1,s4
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	andi	s2,s2,+000000FE
	c.mv	a1,s2
	c.mv	a0,s4
	sb	zero,s0,+000000A3
	jal	ra,00000000230172BC
	c.li	a1,00000000
	c.mv	a0,s5
	jal	ra,000000002301A18A

l23018A2C:
	lbu	a4,s0,+000000A4
	c.li	a5,00000003
	bne	a4,a5,0000000023018A40

l23018A36:
	c.mv	a1,s4
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C

l23018A40:
	lhu	a5,s0,+0000005C
	slli	a4,a5,00000014
	bge	a4,zero,0000000023018A8C

l23018A4C:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	sh	a5,s0,+0000005C
	c.j	0000000023018A64

l23018A5A:
	c.li	a5,00000003
	sb	a5,s7,+00000001
	beq	s6,zero,0000000023018A80

l23018A64:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

;; fn23018A80: 23018A80
;;   Called from:
;;     230176A8 (in llc_llcp_reject_ind)
;;     23017B54 (in llcp_unknown_rsp_handler)
;;     23018802 (in llcp_channel_map_ind_handler)
;;     23018946 (in llcp_con_upd_ind_handler)
;;     2301894E (in fn2301894A)
;;     2301895E (in llcp_con_upd_ind_handler)
;;     23018970 (in llcp_con_upd_ind_handler)
;;     23018980 (in llcp_con_upd_ind_handler)
;;     23018992 (in fn23018984)
;;     230189A6 (in llcp_con_upd_ind_handler)
;;     230189F0 (in llcp_con_upd_ind_handler)
;;     23018A58 (in fn230189F4)
;;     23018A60 (in llcp_con_upd_ind_handler)
;;     23018A60 (in llcp_con_upd_ind_handler)
;;     23018AA8 (in fn230189F4)
fn23018A80 proc
	addi	a1,zero,+00000028

l23018A84:
	c.mv	a0,s5
	jal	ra,000000002301A0D8
	c.j	0000000023018A64

l23018A8C:
	ori	a5,a5,+00000400
	sh	a5,s0,+0000005C
	ori	a1,s2,+00000002
	c.li	a5,00000004
	sb	a5,s0,+000000A4
	andi	a1,a1,+000000FF
	c.mv	a0,s4
	jal	ra,00000000230172BC
	c.j	0000000023018A64

;; llc_llcp_con_update_pdu_send: 23018AAA
llc_llcp_con_update_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000001
	c.li	a2,00000000
	andi	a0,a0,+000000FF
	sb	a5,sp,+00000005
	lhu	a5,a1,+00000002
	sb	zero,sp,+00000004
	sh	a5,sp,+00000006
	lhu	a5,a1,+00000004
	sh	a5,sp,+00000008
	lhu	a5,a1,+00000006
	sh	a5,sp,+0000000A
	lhu	a5,a1,+00000008
	sh	a5,sp,+0000000C
	lhu	a5,a1,+0000000A
	c.addi4spn	a1,00000004
	sh	a5,sp,+0000000E
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_con_param_req_pdu_send: 23018AF4
llc_llcp_con_param_req_pdu_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.li	a5,0000000F
	sb	a5,sp,+00000004
	lhu	a5,a1,+0000000E
	c.li	a2,0000000F
	andi	a0,a0,+000000FF
	sh	a5,sp,+00000006
	lhu	a5,a1,+00000010
	sh	a5,sp,+00000008
	lhu	a5,a1,+00000006
	sh	a5,sp,+0000000A
	lhu	a5,a1,+00000008
	sh	a5,sp,+0000000C
	lbu	a5,a1,+00000012
	sb	a5,sp,+0000000E
	lhu	a5,a1,+00000014
	sh	a5,sp,+00000010
	lhu	a5,a1,+00000016
	sh	a5,sp,+00000012
	lhu	a5,a1,+00000018
	sh	a5,sp,+00000014
	lhu	a5,a1,+0000001A
	sh	a5,sp,+00000016
	lhu	a5,a1,+0000001C
	sh	a5,sp,+00000018
	lhu	a5,a1,+0000001E
	sh	a5,sp,+0000001A
	lhu	a5,a1,+00000020
	c.addi4spn	a1,00000004
	sh	a5,sp,+0000001C
	jal	ra,000000002301738E
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; llc_llcp_con_param_rsp_pdu_send: 23018B70
;;   Called from:
;;     23018E78 (in llcp_con_param_req_handler)
;;     2301ABC0 (in hci_le_rem_con_param_req_reply_cmd_handler)
llc_llcp_con_param_rsp_pdu_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.li	a5,00000010
	sb	a5,sp,+00000004
	lhu	a5,a1,+0000000E
	c.li	a2,00000010
	andi	a0,a0,+000000FF
	sh	a5,sp,+00000006
	lhu	a5,a1,+00000010
	sh	a5,sp,+00000008
	lhu	a5,a1,+00000006
	sh	a5,sp,+0000000A
	lhu	a5,a1,+00000008
	sh	a5,sp,+0000000C
	lbu	a5,a1,+00000012
	sb	a5,sp,+0000000E
	lhu	a5,a1,+00000014
	sh	a5,sp,+00000010
	lhu	a5,a1,+00000016
	sh	a5,sp,+00000012
	lhu	a5,a1,+00000018
	sh	a5,sp,+00000014
	lhu	a5,a1,+0000001A
	sh	a5,sp,+00000016
	lhu	a5,a1,+0000001C
	sh	a5,sp,+00000018
	lhu	a5,a1,+0000001E
	sh	a5,sp,+0000001A
	lhu	a5,a1,+00000020
	c.addi4spn	a1,00000004
	sh	a5,sp,+0000001C
	jal	ra,000000002301738E
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; llcp_con_param_req_handler: 23018BEC
llcp_con_param_req_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s3,a1
	c.mv	s0,a3
	jal	ra,000000002301732C
	lui	a5,0004201A
	slli	a4,s1,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	lw	s2,a5,+00000000
	lbu	a5,s2,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023018C40

l23018C22:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8

l23018C2C:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23018C40:
	andi	a5,a0,+00000002
	c.mv	s4,a0
	c.beqz	a5,0000000023018C58

l23018C48:
	addi	a2,zero,+00000023

l23018C4C:
	lbu	a1,s0,+00000000

l23018C50:
	c.mv	a0,s1
	jal	ra,000000002301834C
	c.j	0000000023018C2C

l23018C58:
	c.mv	a0,s1
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,0000000023018C86

l23018C64:
	andi	a5,s4,+00000001
	c.beqz	a5,0000000023018C86

l23018C6A:
	lbu	a5,s2,+000000A3
	c.li	a4,00000007
	beq	a5,a4,0000000023018C48

l23018C74:
	c.li	a4,00000009
	beq	a5,a4,0000000023018C48

l23018C7A:
	c.li	a4,00000006
	bne	a5,a4,0000000023018C86

l23018C80:
	addi	a2,zero,+0000002A
	c.j	0000000023018C4C

l23018C86:
	lhu	a1,s0,+00000002
	lhu	a4,s0,+00000004
	bltu	a4,a1,0000000023018CD2

l23018C92:
	lhu	a2,s0,+00000006
	addi	a5,zero,+000001F3
	bltu	a5,a2,0000000023018CD2

l23018C9E:
	c.lui	a5,00001000
	addi	a3,a5,-00000380
	bltu	a3,a4,0000000023018CD2

l23018CA8:
	c.li	a3,00000005
	bgeu	a3,a1,0000000023018CD2

l23018CAE:
	lhu	a3,s0,+00000008
	addi	a5,a5,-0000038A
	addi	a0,a3,-0000000A
	c.slli	a0,10
	c.srli	a0,00000010
	bltu	a5,a0,0000000023018CD2

l23018CC2:
	addi	a5,a2,+00000001
	add	a5,a5,a4
	slli	a0,a3,00000002
	bltu	a5,a0,0000000023018CD8

l23018CD2:
	c.li	a2,0000001E

l23018CD4:
	c.li	a1,0000000F
	c.j	0000000023018C50

l23018CD8:
	lw	a0,s2,+00000010
	lhu	a5,a0,+00000078
	c.srli	a5,00000001
	bltu	a5,a1,0000000023018CFC

l23018CE6:
	bltu	a4,a5,0000000023018CFC

l23018CEA:
	lhu	a5,a0,+0000005E
	c.addi	a5,FFFFFFFF
	bne	a2,a5,0000000023018CFC

l23018CF4:
	lhu	a5,s2,+00000054
	beq	a5,a3,0000000023018D86

l23018CFC:
	c.li	a0,00000005
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023018D82

l23018D04:
	addi	a3,zero,+00000022
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000109
	jal	ra,000000002300DB74
	c.li	a4,00000003
	c.mv	a5,a0
	sb	a4,a0,+00000000

l23018D1C:
	lhu	a4,s0,+00000002
	sh	a4,a5,+0000000E
	lhu	a4,s0,+00000004
	sh	a4,a5,+00000010
	lhu	a4,s0,+00000006
	sh	a4,a5,+00000006
	lhu	a4,s0,+00000008
	sh	a4,a5,+00000008
	lbu	a4,s0,+0000000A
	sb	a4,a5,+00000012
	lhu	a4,s0,+0000000C
	sh	a4,a5,+00000014
	lhu	a4,s0,+0000000E
	sh	a4,a5,+00000016
	lhu	a4,s0,+00000010
	sh	a4,a5,+00000018
	lhu	a4,s0,+00000012
	sh	a4,a5,+0000001A
	lhu	a4,s0,+00000014
	sh	a4,a5,+0000001C
	lhu	a4,s0,+00000016
	sh	a4,a5,+0000001E
	lhu	a4,s0,+00000018
	sh	a4,a5,+00000020
	jal	ra,000000002300DBE2
	c.j	0000000023018C2C

l23018D82:
	c.li	a2,0000001A
	c.j	0000000023018CD4

l23018D86:
	c.mv	a0,s1
	jal	ra,000000002301428C
	c.li	s5,00000003
	bne	a0,s5,0000000023018DE8

l23018D92:
	addi	a3,zero,+00000022
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000109
	jal	ra,000000002300DB74
	c.li	a4,00000002
	sb	a4,a0,+00000000
	lhu	a4,s0,+00000002
	addi	a2,zero,+00000271
	c.mv	a5,a0
	sh	a4,a0,+00000002
	lhu	a4,s0,+00000004
	sh	a4,a0,+00000004
	lhu	a4,s2,+00000054
	sh	a4,a0,+00000008
	lw	a4,s2,+00000010
	lhu	a3,a4,+00000012
	srl	a3,a3,a2
	sh	a3,a0,+0000000A
	lw	a4,s2,+00000010
	lhu	a4,a4,+00000012
	srl	a4,a4,a2
	sh	a4,a0,+0000000C
	c.j	0000000023018D1C

l23018DE8:
	c.mv	a0,s1
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,0000000023018C2C

l23018DF4:
	lhu	a5,s0,+00000002
	c.addi4spn	a2,0000000C
	c.mv	a0,s1
	sh	a5,sp,+0000001A
	lhu	a5,s0,+00000004
	sh	a5,sp,+0000001C
	lhu	a5,s0,+00000006
	sh	a5,sp,+00000012
	lhu	a5,s0,+00000008
	sh	a5,sp,+00000014
	lbu	a5,s0,+0000000A
	sb	a5,sp,+0000001E
	lhu	a5,s0,+0000000C
	sh	a5,sp,+00000020
	lhu	a5,s0,+0000000E
	sh	a5,sp,+00000022
	lhu	a5,s0,+00000010
	sh	a5,sp,+00000024
	lhu	a5,s0,+00000012
	sh	a5,sp,+00000026
	lhu	a5,s0,+00000014
	sh	a5,sp,+00000028
	lhu	a5,s0,+00000016
	sh	a5,sp,+0000002A
	lhu	a5,s0,+00000018
	sh	a5,sp,+0000002C
	lw	a1,s2,+00000010
	jal	ra,000000002301407C
	c.bnez	a0,0000000023018E8E

l23018E62:
	ori	a1,s4,+00000002
	c.mv	a0,s3
	sb	s5,s2,+000000A4
	andi	a1,a1,+000000FF
	jal	ra,00000000230172BC
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023018B70
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	c.j	0000000023018C2C

l23018E8E:
	addi	a2,zero,+00000020
	c.j	0000000023018CD4

;; llc_llcp_feats_req_pdu_send: 23018E94
;;   Called from:
;;     2301AF8C (in hci_le_rd_rem_used_feats_cmd_handler)
llc_llcp_feats_req_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002301428C
	c.li	a4,00000003
	c.li	a5,0000000E
	bne	a0,a4,0000000023018EAA

l23018EA8:
	c.li	a5,00000008

l23018EAA:
	addi	a0,sp,+00000005
	sb	a5,sp,+00000004
	jal	ra,0000000023014A1A
	lbu	a2,sp,+00000004
	c.addi4spn	a1,00000004
	andi	a0,s0,+000000FF
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_feats_rsp_pdu_send: 23018ECC
;;   Called from:
;;     23019110 (in llcp_feats_req_handler)
llc_llcp_feats_rsp_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a5,00000009
	c.mv	s0,a0
	addi	a0,sp,+00000005
	c.swsp	ra,0000008C
	sb	a5,sp,+00000004
	jal	ra,0000000023014A1A
	lui	a5,0004201A
	slli	a4,s0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a2,sp,+00000004
	c.addi4spn	a1,00000004
	lbu	a5,a5,+00000069
	andi	a0,s0,+000000FF
	sb	a5,sp,+00000005
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_start_enc_req_pdu_send: 23018F10
;;   Called from:
;;     23019C64 (in llc_enc_mgt_ind_handler)
llc_llcp_start_enc_req_pdu_send proc
	addi	a5,zero,+0000005C
	add	a5,a0,a5
	lui	a4,00028008
	c.addi	sp,FFFFFFE0
	addi	a3,a4,+00000092
	c.swsp	ra,0000008C
	c.addi4spn	a1,0000000C
	c.add	a3,a5
	lhu	a2,a3,+00000000
	ori	a2,a2,+00000100
	sh	a2,a3,+00000000
	lui	a3,0004201A
	slli	a2,a0,00000002
	addi	a3,a3,+00000320
	c.add	a3,a2
	c.lw	a3,0(a2)
	andi	a0,a0,+000000FF
	lbu	a3,a2,+000000A5
	ori	a3,a3,+00000002
	sb	a3,a2,+000000A5
	addi	a3,a4,+000000CC
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000CE
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D0
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D2
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D4
	c.add	a3,a5
	addi	a4,a4,+000000D6
	c.add	a5,a4
	sh	zero,a3,+00000000
	sh	zero,a5,+00000000
	c.li	a2,00000005
	c.li	a5,00000005
	sb	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_terminate_ind_pdu_send: 23018FA2
;;   Called from:
;;     23019C18 (in llc_enc_mgt_ind_handler)
;;     2301AC3A (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     2301ADBC (in hci_disconnect_cmd_handler)
llc_llcp_terminate_ind_pdu_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	slli	s0,a0,00000008
	ori	s0,s0,+00000001
	lui	a5,0004201A
	c.slli	s0,10
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.srli	s0,00000010
	c.add	a5,a4
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.mv	a0,s0
	c.swsp	a1,00000084
	lw	s2,a5,+00000000
	jal	ra,000000002301732C
	c.lwsp	a2,00000064
	c.li	a4,00000013
	c.li	a5,00000016
	beq	a1,a4,0000000023018FE0

l23018FDE:
	c.mv	a5,a1

l23018FE0:
	sb	a1,sp,+0000001D
	ori	a1,a0,+0000000F
	sb	a5,s2,+000000A1
	c.mv	a0,s0
	c.li	a5,00000002
	andi	a1,a1,+000000FF
	sb	a5,sp,+0000001C
	jal	ra,00000000230172BC
	lbu	a2,sp,+0000001C
	c.addi4spn	a1,0000001C
	andi	a0,s1,+000000FF
	jal	ra,000000002301738E
	lhu	a2,s2,+00000054
	c.mv	a1,s0
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; llc_llcp_unknown_rsp_send_pdu: 23019024
;;   Called from:
;;     23019070 (in llc_llcp_unknown_ind_handler.isra.1)
llc_llcp_unknown_rsp_send_pdu proc
	c.addi	sp,FFFFFFE0
	sb	a1,sp,+0000000D
	c.li	a5,00000007
	c.addi4spn	a1,0000000C
	c.li	a2,00000007
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_unknown_ind_handler.isra.1: 23019044
;;   Called from:
;;     230190B6 (in llcp_feats_req_handler)
;;     23019144 (in llcp_slave_feature_req_handler)
;;     23019468 (in llc_llcp_recv_handler)
llc_llcp_unknown_ind_handler.isra.1 proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,00000084
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023019070

l23019060:
	addi	a1,zero,+0000003D
	jal	ra,000000002301A0D8

l23019068:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23019070:
	jal	ra,0000000023019024
	c.j	0000000023019068

;; llcp_feats_req_handler: 23019076
;;   Called from:
;;     2301913C (in llcp_slave_feature_req_handler)
llcp_feats_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	s3,0000008C
	addi	a5,s0,+00000320
	slli	s3,a0,00000002
	c.swsp	s1,00000090
	c.add	a5,s3
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	a3,00000084
	lw	s2,a5,+00000000
	c.mv	s1,a0
	jal	ra,000000002301428C
	c.li	a5,00000004
	addi	s0,s0,+00000320
	c.lwsp	a2,000000A4
	beq	a0,a5,00000000230190CA

l230190A8:
	lbu	a4,a3,+00000000
	c.li	a5,00000008
	bne	a4,a5,00000000230190CA

l230190B2:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023019044

l230190BA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l230190CA:
	c.add	s0,s3
	c.lw	s0,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230190E2

l230190D6:
	addi	a1,zero,+0000003D
	c.mv	a0,s1
	jal	ra,000000002301A0D8
	c.j	00000000230190BA

l230190E2:
	addi	a5,s2,+00000069
	c.addi	a3,00000001
	addi	a2,s2,+00000071

l230190EC:
	lbu	a4,a5,+00000000
	lbu	a1,a3,+00000000
	c.addi	a5,00000001
	c.addi	a3,00000001
	c.and	a4,a1
	sb	a4,a5,+00000FFF
	bne	a5,a2,00000000230190EC

l23019102:
	lhu	a5,s2,+0000005C
	c.mv	a0,s1
	ori	a5,a5,+00000001
	sh	a5,s2,+0000005C
	jal	ra,0000000023018ECC
	c.j	00000000230190BA

;; llcp_slave_feature_req_handler: 23019116
llcp_slave_feature_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002301428C
	c.li	a5,00000003
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	bne	a0,a5,0000000023019140

l23019134:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023019076

l23019140:
	c.mv	a0,s0
	c.li	a1,0000000E
	jal	ra,0000000023019044
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_ping_req_pdu_send: 23019152
;;   Called from:
;;     23019E26 (in llc_auth_payl_nearly_to_ind_handler)
llc_llcp_ping_req_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000012
	c.addi4spn	a1,0000000C
	c.li	a2,00000012
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_ping_rsp_pdu_send: 2301916E
;;   Called from:
;;     230191B6 (in llcp_ping_req_handler)
llc_llcp_ping_rsp_pdu_send proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000013
	c.addi4spn	a1,0000000C
	c.li	a2,00000013
	andi	a0,a0,+000000FF
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_ping_req_handler: 2301918A
llcp_ping_req_handler proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,00000084
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230191B6

l230191A6:
	addi	a1,zero,+0000003D
	jal	ra,000000002301A0D8

l230191AE:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230191B6:
	jal	ra,000000002301916E
	c.j	00000000230191AE

;; llc_llcp_length_req_pdu_send: 230191BC
;;   Called from:
;;     23019960 (in llc_length_req_ind_handler)
llc_llcp_length_req_pdu_send proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a4,00000014
	sb	a4,sp,+00000004
	lhu	a4,a5,+00000044
	c.addi4spn	a1,00000004
	c.li	a2,00000014
	sh	a4,sp,+00000006
	lhu	a4,a5,+0000004C
	andi	a0,a0,+000000FF
	sh	a4,sp,+00000008
	lhu	a4,a5,+00000042
	lhu	a5,a5,+0000004A
	sh	a4,sp,+0000000A
	sh	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_length_rsp_pdu_send: 23019208
;;   Called from:
;;     23019356 (in llcp_length_req_handler)
llc_llcp_length_rsp_pdu_send proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a4,00000015
	sb	a4,sp,+00000004
	lhu	a4,a5,+00000044
	c.addi4spn	a1,00000004
	c.li	a2,00000015
	sh	a4,sp,+00000006
	lhu	a4,a5,+0000004C
	andi	a0,a0,+000000FF
	sh	a4,sp,+00000008
	lhu	a4,a5,+00000042
	lhu	a5,a5,+0000004A
	sh	a4,sp,+0000000A
	sh	a5,sp,+0000000C
	jal	ra,000000002301738E
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; llcp_length_req_handler: 23019254
llcp_length_req_handler proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFE0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	a5,a4
	c.lw	a5,0(s0)
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000001
	sb	a5,s0,+00000053
	lbu	a5,s0,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,00000000230192A8

l2301928A:
	addi	a1,zero,+0000003D
	jal	ra,000000002301A0D8

l23019292:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230192A8:
	lhu	a4,a3,+00000006
	lhu	a5,s0,+00000044
	c.mv	s5,a0
	bgeu	a4,a5,00000000230192B8

l230192B6:
	c.mv	a5,a4

l230192B8:
	slli	s4,a5,00000010
	lhu	s3,s0,+0000004C
	lhu	a5,a3,+00000008
	srli	s4,s4,00000010
	bgeu	a5,s3,00000000230192CE

l230192CC:
	c.mv	s3,a5

l230192CE:
	lhu	a5,a3,+00000002
	lhu	s2,s0,+00000042
	c.slli	s3,10
	srli	s3,s3,00000010
	bgeu	a5,s2,00000000230192E2

l230192E0:
	c.mv	s2,a5

l230192E2:
	lhu	a5,a3,+00000004
	lhu	s1,s0,+0000004A
	c.slli	s2,10
	srli	s2,s2,00000010
	bgeu	a5,s1,00000000230192F6

l230192F4:
	c.mv	s1,a5

l230192F6:
	c.slli	s1,10
	c.lw	s0,16(a0)
	c.srli	s1,00000010
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023012D3A
	lhu	a5,s0,+00000048
	bne	a5,s4,0000000023019324

l2301930C:
	lhu	a5,s0,+00000050
	bne	a5,s3,0000000023019324

l23019314:
	lhu	a5,s0,+00000046
	bne	a5,s2,0000000023019324

l2301931C:
	lhu	a5,s0,+0000004E
	beq	a5,s1,0000000023019354

l23019324:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,16(a0)
	sh	s4,s0,+00000048
	sh	s3,s0,+00000050
	sh	s2,s0,+00000046
	sh	s1,s0,+0000004E
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023012E76
	csrrw	zero,mstatus,zero
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFD
	sb	a5,s0,+00000053

l23019354:
	c.mv	a0,s5
	jal	ra,0000000023019208
	lbu	a5,s0,+00000053
	c.li	a0,00000006
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000053
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023019292

l2301936C:
	lbu	a5,s0,+00000053
	c.andi	a5,00000002
	c.bnez	a5,0000000023019292

l23019374:
	c.lui	a0,00001000
	c.li	a3,0000000C
	addi	a2,zero,+0000003E
	c.mv	a1,s5
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a4,00000007
	sb	a4,a0,+00000000
	sh	s5,a0,+00000002
	lhu	a4,s0,+00000048
	sh	a4,a0,+00000008
	lhu	a4,s0,+00000050
	sh	a4,a0,+0000000A
	lhu	a4,s0,+00000046
	sh	a4,a0,+00000004
	lhu	a4,s0,+0000004E
	sh	a4,a0,+00000006
	jal	ra,000000002300BD76
	lbu	a5,s0,+00000053
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.j	0000000023019292

;; llc_llcp_recv_handler: 230193C2
;;   Called from:
;;     230128DC (in lld_pdu_rx_handler)
;;     230195BC (in llc_llcp_recv_ind_handler)
llc_llcp_recv_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	sltu	s1,zero,a3
	c.swsp	ra,0000008C
	c.mv	s2,a0
	c.swsp	a1,00000084
	c.mv	s0,a2
	c.swsp	a3,00000004
	jal	ra,000000002301732C
	andi	a4,a0,+0000007F
	addi	a5,zero,+0000007F
	c.slli	s1,01
	beq	a4,a5,000000002301946C

l230193EA:
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	bne	a0,a5,0000000023019404

l230193F6:
	lbu	a5,s0,+00000000
	c.li	a4,00000002
	andi	a5,a5,+000000FB
	bne	a5,a4,000000002301946C

l23019404:
	srli	a0,s2,00000008
	lui	a5,0004201A
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000008
	c.bnez	a5,000000002301946C

l23019420:
	c.bnez	a1,0000000023019452

l23019422:
	lbu	a4,s0,+00000000
	lui	a5,00023074
	addi	a5,a5,+00000550
	c.slli	a4,03
	c.beqz	a2,000000002301943C

l23019432:
	add	a3,a5,a4
	lbu	a3,a3,+00000004
	c.beqz	a3,000000002301946C

l2301943C:
	c.add	a5,a4
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lw	t1,a5,+00000000
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	t1

l23019452:
	c.li	a5,00000019
	bne	a1,a5,000000002301946C

l23019458:
	c.bnez	a2,000000002301946C

l2301945A:
	lbu	a1,s0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023019044

l2301946C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_get_autorize: 2301947A
;;   Called from:
;;     2301224C (in lld_pdu_tx_prog)
;;     23012402 (in lld_pdu_tx_prog)
llc_llcp_get_autorize proc
	c.li	a5,00000015
	bltu	a5,a0,0000000023019494

l23019480:
	slli	a5,a0,00000003
	lui	a0,00023074
	addi	a0,a0,+00000550
	c.add	a0,a5
	lbu	a0,a0,+00000005
	c.jr	ra

l23019494:
	c.li	a0,00000000
	c.jr	ra

;; llc_dft_handler: 23019498
llc_dft_handler proc
	c.li	a0,00000000
	c.jr	ra

;; llm_enc_ind_handler: 2301949C
llm_enc_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s2,a1
	c.mv	s1,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,000000002301959E

l230194BE:
	srli	s0,s1,00000008
	lui	a5,0004201A
	slli	a4,s0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	lw	s3,a5,+00000000
	c.li	a5,00000013
	c.mv	s4,a0
	lbu	a4,s3,+000000A3
	beq	a4,a5,000000002301954C

l230194E0:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000E
	bne	a4,a5,00000000230194F6

l230194EA:
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000004
	beq	a0,a5,0000000023019558

l230194F6:
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,000000002301957A

l23019502:
	andi	a5,s4,+00000002
	c.beqz	a5,000000002301957A

l23019508:
	lbu	a4,s3,+000000A4
	c.li	a5,0000000A
	bne	a4,a5,000000002301957A

l23019512:
	addi	a0,zero,+0000005C
	add	a0,s0,a0
	lui	a5,00028008
	addi	a5,a5,+000000B4
	addi	a2,zero,+000000FF
	c.add	a0,a5
	c.li	a5,0000000F

l2301952A:
	add	a3,s2,a5
	lbu	a4,a3,+00000000
	lbu	a3,a3,+00000001
	c.addi	a5,FFFFFFFE
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,a0,+00000000
	andi	a5,a5,+000000FF
	c.addi	a0,00000002
	bne	a5,a2,000000002301952A

l2301954A:
	c.j	000000002301956C

l2301954C:
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,00000000230194E0

l23019558:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.li	a2,00000010
	addi	a1,s2,+00000001
	addi	a0,s3,+00000091
	c.jalr	a5

l2301956C:
	c.mv	a2,s1
	c.mv	a1,s1
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	000000002301959E

l2301957A:
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,000000002301959E

l23019586:
	andi	s4,s4,+00000001
	beq	s4,zero,000000002301959E

l2301958E:
	lbu	a5,s3,+000000A3
	c.li	a4,00000001
	c.addi	a5,FFFFFFF2
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023019512

l2301959E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; llc_llcp_recv_ind_handler: 230195B0
llc_llcp_recv_ind_handler proc
	c.mv	a0,a2
	addi	a2,a1,+00000002
	lbu	a1,a1,+00000000
	c.li	a3,00000000
	jal	zero,00000000230193C2

;; llc_chmap_update_req_ind_handler: 230195C0
llc_chmap_update_req_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230195EE

l230195DE:
	c.li	a0,00000000

l230195E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230195EE:
	andi	a5,a0,+00000004
	c.mv	s0,a0
	c.bnez	a5,00000000230195DE

l230195F6:
	andi	a5,a0,+00000001
	c.li	a0,00000002
	c.bnez	a5,00000000230195E0

l230195FE:
	srli	s1,s2,00000008
	lui	a5,0004201A
	slli	a4,s1,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.mv	a0,s1
	lw	s3,a5,+00000000
	jal	ra,000000002301A86E
	lui	a5,0004200E
	lw	a5,a5,+00000138
	c.li	a2,00000005
	addi	a1,s3,+00000063
	c.jalr	a5
	c.beqz	a0,00000000230195DE

l2301962C:
	ori	a1,s0,+00000001
	c.mv	a0,s2
	andi	a1,a1,+000000FF
	jal	ra,00000000230172BC
	c.li	a5,00000006
	sb	a5,s3,+000000A3
	c.mv	a0,s1
	jal	ra,0000000023017D7C
	c.j	00000000230195DE

;; llc_auth_payl_real_to_ind_handler: 23019648
llc_auth_payl_real_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a2
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,00000000230196B4

l23019662:
	srli	s2,s1,00000008
	lui	s0,0004201A
	slli	a5,s2,00000002
	addi	s0,s0,+00000320
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.mv	a1,s1
	addi	a0,zero,+00000103
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.sub	a2,a5
	jal	ra,000000002300DF0E
	c.lw	s0,0(a5)
	c.mv	a1,s1
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002300DF0E
	c.lui	a0,00001000
	c.li	a3,00000002
	addi	a2,zero,+00000057
	c.mv	a1,s2
	addi	a0,a0,-000007FD
	jal	ra,000000002300DB74
	sh	s2,a0,+00000000
	jal	ra,000000002300BD76

l230196B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llc_con_upd_req_ind_handler: 230196C2
llc_con_upd_req_ind_handler proc
	c.addi16sp	FFFFFFD0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.mv	s0,a1
	c.mv	s5,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,00000000230196FE

l230196E8:
	c.li	a0,00000000

l230196EA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l230196FE:
	andi	a5,a0,+00000001
	c.mv	s1,a0
	srli	s3,s5,00000008
	c.beqz	a5,0000000023019720

l2301970A:
	lui	a4,0004201A
	slli	a5,s3,00000002
	addi	a4,a4,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a0,00000002
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230196EA

l23019720:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023019742

l23019726:
	lui	a4,0004201A
	addi	a4,a4,+00000320
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a0,00000002
	lbu	a4,a5,+000000A4
	c.li	a5,00000004
	beq	a4,a5,00000000230196EA

l23019742:
	andi	a5,s1,+00000004
	c.li	a0,00000002
	c.bnez	a5,00000000230196EA

l2301974A:
	lui	s2,0004201A
	addi	a5,s2,+00000320
	slli	s6,s3,00000002
	c.add	a5,s6
	lw	s4,a5,+00000000
	lbu	a5,s0,+00000000
	c.li	a4,00000004
	addi	s2,s2,+00000320
	c.li	a0,00000000
	bltu	a4,a5,00000000230196EA

l2301976C:
	lui	a4,00023074
	c.slli	a5,02
	addi	a4,a4,+00000600
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2301977C                                     83 57 4A 05             .WJ.
23019780 23 14 F4 00 23 09 04 00 83 47 6A 0A AD CB 83 57 #...#....Gj....W
23019790 CA 05 85 8B A9 EF 03 47 04 00 85 47 63 0E F7 00 .......G...Gc...
230197A0 83 57 CA 05 83 25 0A 01 22 86 93 E7 07 04 23 1E .W...%..".....#.
230197B0 FA 04 4E 85 EF A0 7F 9F A2 85 4E 85 EF F0 8F B3 ..N.......N.....
230197C0 93 E5 14 00 93 F5 F5 0F 56 85 EF D0 3F AF 9D 47 ........V...?..G
230197D0 05 66 A3 01 FA 0A 13 06 06 FA D6 85 13 05 20 10 .f............ .
230197E0 EF 40 EF F2 5A 99 83 27 09 00 80 C3 F1 A0 83 47 .@..Z..'.......G
230197F0 9A 06 89 8B CD F3 15 45 EF B0 0F 9F 49 DD 83 57 .......E....I..W
23019800 24 00 4E 85 23 17 F4 00 83 57 44 00 23 18 F4 00 $.N.#....WD.#...
23019810 EF A0 DF A7 8D 47 E3 19 F5 EC 03 25 0A 01 50 00 .....G.....%..P.
23019820 A2 85 EF A0 8F D6 83 57 84 00 4C 00 4E 85 23 1B .......W..L.N.#.
23019830 FA 04 EF F0 8F A7 83 57 81 00 93 E5 14 00 93 F5 .......W........
23019840 F5 0F 23 17 F4 00 83 57 A1 00 56 85 23 13 F4 00 ..#....W..V.#...
23019850 EF D0 DF A6 A5 47 A3 01 FA 0A 69 B7 05 65 CE 85 .....G....i..e..
23019860 B1 46 13 06 E0 03 13 05 45 80 EF 40 AF B0 19 47 .F......E..@...G
23019870 23 00 E5 00 23 11 35 01 03 57 E4 00 5A 99 23 12 #...#.5..W..Z.#.
23019880 E5 00 03 57 04 01 23 13 E5 00 03 57 64 00 23 14 ...W..#....Wd.#.
23019890 E5 00 03 57 84 00 23 15 E5 00 EF 20 CF CD 83 27 ...W..#.... ...'
230198A0 09 00 93 E5 24 00 93 F5 F5 0F C0 C3 89 47 23 02 ....$........G#.
230198B0 FA 0A 56 85 EF D0 9F A0 05 45 05 BD 4E 85 EF A0 ..V......E..N...
230198C0 FF 9C 8D 47 E3 12 F5 E2 83 25 0A 01 05 47 54 00 ...G.....%...GT.
230198D0 22 86 4E 85 EF A0 6F D3 B9 B7                   ".N...o...     

;; llc_length_req_ind_handler: 230198DA
llc_length_req_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,0000000023019908

l230198F8:
	c.li	a0,00000000

l230198FA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23019908:
	andi	a5,a0,+00000005
	c.mv	s1,a0
	c.li	a0,00000002
	c.bnez	a5,00000000230198FA

l23019912:
	srli	s3,s2,00000008
	lui	a5,0004201A
	slli	a4,s3,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(s0)
	c.lw	s0,12(a5)
	c.beqz	a5,000000002301993A

l2301992A:
	lhu	a4,a5,+00000002
	sh	a4,s0,+00000042
	lhu	a5,a5,+00000004
	sh	a5,s0,+0000004A

l2301993A:
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,000000002301A18A
	lbu	a5,s0,+00000053
	c.andi	a5,00000001
	c.bnez	a5,00000000230198F8

l2301994A:
	ori	a1,s1,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,00000000230172BC
	c.li	a5,00000004
	c.mv	a0,s3
	sb	a5,s0,+000000A3
	jal	ra,00000000230191BC
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	c.j	00000000230198F8

;; llc_task_random_gen_request: 23019976
;;   Called from:
;;     23019A86 (in llc_enc_mgt_ind_handler)
;;     23019BF8 (in llc_enc_mgt_ind_handler)
llc_task_random_gen_request proc
	c.addi16sp	FFFFFFD0
	c.mv	a2,a0
	addi	a3,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	jal	ra,000000002300DB74
	c.mv	s1,a0
	c.swsp	zero,00000084
	c.mv	s0,a0
	addi	s3,a0,+00000010
	lui	s2,0004200E

l2301999E:
	jal	ra,0000000023036D28
	lw	a5,s2,+0000013C
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.swsp	a0,00000084
	c.mv	a0,s0
	c.jalr	a5
	jal	ra,0000000023036D28
	lw	a5,s2,+0000013C
	c.swsp	a0,00000084
	c.li	a2,00000004
	addi	a0,s0,+00000010
	c.addi4spn	a1,0000000C
	c.addi	s0,00000004
	c.jalr	a5
	bne	s0,s3,000000002301999E

l230199CA:
	c.mv	a0,s1
	jal	ra,000000002300DBE2
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; llc_enc_mgt_ind_handler: 230199DE
llc_enc_mgt_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s2,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,0000000023019A70

l23019A00:
	srli	s0,s2,00000008
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,0000000023019B2E

l23019A12:
	c.andi	s1,00000001
	c.beqz	s1,0000000023019A70

l23019A16:
	lui	s1,0004201A
	addi	a5,s1,+00000320
	slli	s3,s0,00000002
	c.add	a5,s3
	c.lw	a5,0(a4)
	c.li	a3,00000009
	addi	s1,s1,+00000320
	lbu	a5,a4,+000000A3
	c.addi	a5,FFFFFFF6
	andi	a5,a5,+000000FF
	bltu	a3,a5,0000000023019A70

l23019A3A:
	lui	a3,00023074
	c.slli	a5,02
	addi	a3,a3,+00000614
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.jr	a5

l23019A4A:
	lbu	a5,a4,+000000A5
	c.li	a3,00000003
	andi	a2,a5,+00000003
	bne	a2,a3,0000000023019A84

l23019A58:
	ori	a5,a5,+00000030
	c.add	s1,s3
	sb	a5,a4,+000000A5
	c.lw	s1,0(a5)
	c.li	a4,0000000B
	c.mv	a0,s0
	sb	a4,a5,+000000A3
	jal	ra,0000000023017DD8

l23019A70:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23019A84:
	c.mv	a0,s2
	jal	ra,0000000023019976
	c.add	s1,s3
	c.lw	s1,0(a5)
	c.li	a4,00000013
	sb	a4,a5,+000000A3
	c.j	0000000023019A70

l23019A96:
	c.li	a5,0000000D
	c.add	s1,s3
	sb	a5,a4,+000000A3
	c.lw	a4,8(a1)
	c.lw	s1,0(a4)
	c.mv	a0,s0
	lbu	a5,a4,+000000A5
	andi	a5,a5,-00000021
	sb	a5,a4,+000000A5
	jal	ra,0000000023017F9C

l23019AB4:
	c.li	a1,00000002
	c.mv	a0,s0
	c.jal	000000002301A18A
	c.j	0000000023019A70

l23019ABC:
	c.li	a5,00000010
	sb	a5,a4,+000000A3
	c.j	0000000023019A70

l23019AC4:
	addi	a5,zero,+0000005C
	add	a5,s0,a5
	lui	a4,00028008
	addi	a3,a4,+000000CC
	c.add	s1,s3
	c.mv	a0,s0
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000CE
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D0
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D2
	c.add	a3,a5
	sh	zero,a3,+00000000
	addi	a3,a4,+000000D4
	c.add	a3,a5
	addi	a4,a4,+000000D6
	sh	zero,a3,+00000000
	c.add	a5,a4
	sh	zero,a5,+00000000
	c.lw	s1,0(a5)
	c.li	a4,00000012
	sb	a4,a5,+000000A3
	jal	ra,000000002301816C

l23019B1C:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	c.j	0000000023019A70

l23019B2E:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023019A70

l23019B34:
	lui	a3,0004201A
	addi	s3,a3,+00000320
	slli	s4,s0,00000002
	c.add	s3,s4
	lw	a0,s3,+00000000
	c.li	a4,00000008
	addi	s5,a3,+00000320
	lbu	a5,a0,+000000A4
	beq	a5,a4,0000000023019BEE

l23019B54:
	bltu	a4,a5,0000000023019B78

l23019B58:
	c.li	a4,00000005
	bne	a5,a4,0000000023019A70

l23019B5E:
	lbu	a5,a0,+000000A5
	ori	a5,a5,+00000030
	sb	a5,a0,+000000A5
	c.li	a5,00000006
	sb	a5,a0,+000000A4
	c.mv	a0,s0
	jal	ra,0000000023017E16
	c.j	0000000023019B1C

l23019B78:
	c.li	a4,0000000A
	beq	a5,a4,0000000023019C62

l23019B7E:
	c.li	a4,0000000E
	bne	a5,a4,0000000023019A70

l23019B84:
	c.li	a5,00000009
	c.lw	a0,8(s1)
	sb	a5,a0,+000000A4
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	a1,s1,+0000000D
	c.li	a2,00000008
	addi	a0,a0,+00000071
	c.jalr	a5
	lbu	a4,s1,+00000016
	lbu	a5,s1,+00000015
	lui	a3,00028008
	c.slli	a4,08
	c.or	a4,a5
	addi	a5,zero,+0000005C
	add	a5,s0,a5
	addi	a2,a3,+000000C4
	addi	a3,a3,+000000C6
	addi	s2,s1,+00000002
	c.mv	a1,s2
	c.mv	a0,s0
	c.add	a2,a5
	sh	a4,a2,+00000000
	lbu	a4,s1,+00000018
	lbu	a2,s1,+00000017
	c.add	a5,a3
	c.slli	a4,08
	c.or	a4,a2
	sh	a4,a5,+00000000
	jal	ra,00000000230180C4
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002300F33A
	c.j	0000000023019AB4

l23019BEE:
	c.li	a0,00000004
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023019C08

l23019BF6:
	c.mv	a0,s2
	jal	ra,0000000023019976
	lw	a5,s3,+00000000
	c.li	a4,0000000E
	sb	a4,a5,+000000A4
	c.j	0000000023019A70

l23019C08:
	lw	a5,s3,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000010
	c.beqz	a5,0000000023019C1E

l23019C14:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023018FA2
	c.j	0000000023019AB4

l23019C1E:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023019C34

l23019C24:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s2
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E

l23019C34:
	c.li	a2,00000006
	c.li	a1,00000003
	c.mv	a0,s0
	c.slli	s1,18
	jal	ra,000000002301834C
	c.srai	s1,00000018
	andi	a1,s1,+000000FD
	c.mv	a0,s2
	jal	ra,00000000230172BC
	andi	a1,s1,+000000F9
	c.mv	a0,s2
	jal	ra,00000000230172BC
	add	a5,s5,s4
	c.lw	a5,0(a5)
	sb	zero,a5,+000000A4
	c.j	0000000023019AB4

l23019C62:
	c.mv	a0,s0
	jal	ra,0000000023018F10
	lw	a5,s3,+00000000
	c.li	a4,0000000B
	sb	a4,a5,+000000A4
	c.j	0000000023019B1C

;; llc_chnl_assess_timer_handler: 23019C74
llc_chnl_assess_timer_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	a5,0004201A
	srli	s3,a2,00000008
	slli	a4,s3,00000002
	addi	a5,a5,+00000320
	c.swsp	s0,00000014
	c.add	a5,a4
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	a0,a2
	lw	s2,a5,+00000000
	c.mv	s0,a2
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,0000000023019CC6

l23019CA6:
	lbu	a4,s2,+000000A3
	lui	s1,0004201A
	c.li	a5,00000006
	addi	s1,s1,+00000358
	bne	a4,a5,0000000023019CD6

l23019CB8:
	lhu	a2,s1,+0000002C
	c.mv	a1,s0
	addi	a0,zero,+00000105
	jal	ra,000000002300DF0E

l23019CC6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23019CD6:
	c.addi4spn	a0,00000008
	jal	ra,0000000023014A06
	c.addi4spn	a2,00000008
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,000000002301A7DC
	lbu	a5,s2,+0000003A
	c.mv	a3,a0
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s2,+0000003A
	c.beqz	a5,0000000023019CFE

l23019CF8:
	c.li	a5,00000001
	bltu	a5,a0,0000000023019D08

l23019CFE:
	c.addi4spn	a2,00000008
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,000000002301A882

l23019D08:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	a1,sp
	c.li	a2,00000005
	addi	a0,s2,+00000063
	c.jalr	a5
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000108
	jal	ra,000000002300DC6C
	c.j	0000000023019CB8

;; llc_llcp_rsp_to_ind_handler: 23019D28
llc_llcp_rsp_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	srli	a0,a2,00000008
	addi	a1,zero,+00000022
	c.swsp	ra,00000084
	c.jal	000000002301A0D8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; llc_link_sup_to_ind_handler: 23019D3E
llc_link_sup_to_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002301732C
	andi	a0,a0,+0000007F
	addi	a5,zero,+0000007F
	beq	a0,a5,0000000023019D8A

l23019D56:
	c.lwsp	a2,00000084
	lui	a5,0004201A
	addi	a5,a5,+00000320
	srli	a0,a2,00000008
	slli	a4,a0,00000002
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.lw	a4,16(a5)
	lbu	a5,a5,+0000007E
	c.andi	a5,00000002
	c.beqz	a5,0000000023019D92

l23019D76:
	lhu	a2,a4,+00000054
	slli	a1,a0,00000008
	ori	a1,a1,+00000001
	addi	a0,zero,+00000101
	jal	ra,000000002300DF0E

l23019D8A:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23019D92:
	c.li	a1,00000008
	c.jal	000000002301A0D8
	c.j	0000000023019D8A

;; llc_auth_payl_nearly_to_ind_handler: 23019D98
llc_auth_payl_nearly_to_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a2
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,0000000023019DB8

l23019DB4:
	c.li	a0,00000000
	c.j	0000000023019DE0

l23019DB8:
	andi	a5,a0,+00000001
	c.mv	s0,a0
	srli	s2,s1,00000008
	c.beqz	a5,0000000023019DEC

l23019DC4:
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	s2,02
	c.add	s2,a5
	lw	a5,s2,+00000000
	c.li	a0,00000002
	lbu	a4,a5,+000000A3
	c.li	a5,00000005
	beq	a4,a5,0000000023019DB4

l23019DE0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23019DEC:
	andi	a5,a0,+00000004
	c.li	a0,00000002
	c.bnez	a5,0000000023019DE0

l23019DF4:
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E0AE
	c.bnez	a0,0000000023019DB4

l23019E00:
	ori	a1,s0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s1
	jal	ra,00000000230172BC
	lui	a5,0004201A
	slli	a4,s2,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.li	a4,00000005
	c.mv	a0,s2
	sb	a4,a5,+000000A3
	jal	ra,0000000023019152
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	c.j	0000000023019DB4

;; llc_data_ind_handler: 23019E3C
llc_data_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	srli	s0,a2,00000008
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.lwsp	a2,00000064
	bne	a0,a5,0000000023019E6A

l23019E58:
	lbu	a0,a1,+00000006
	jal	ra,000000002300EB30

l23019E60:
	c.li	a0,00000000

l23019E62:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23019E6A:
	lui	a4,0004201A
	slli	a5,s0,00000002
	addi	a4,a4,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a5,a5,+000000A5
	c.andi	a5,00000008
	c.beqz	a5,0000000023019E94

l23019E82:
	lbu	a0,a1,+00000006
	jal	ra,000000002300EB30
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	c.jal	000000002301A0D8
	c.j	0000000023019E60

l23019E94:
	c.lui	a5,00001000
	addi	a5,a5,-000007FA
	c.mv	a0,a1
	sh	a5,a1,+00000FF8
	sh	s0,a1,+00000FFA
	jal	ra,000000002300BD76
	c.li	a0,00000001
	c.j	0000000023019E62

;; lld_stop_ind_handler: 23019EAC
lld_stop_ind_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s1,a2
	jal	ra,000000002301732C
	addi	a5,zero,+0000007F
	beq	a0,a5,0000000023019F9C

l23019ECE:
	srli	s0,s1,00000008
	addi	a4,zero,+0000005C
	add	a4,s0,a4
	lui	a5,00028008
	addi	a5,a5,+00000092
	lui	s3,0004201A
	addi	s5,s3,+00000320
	slli	s6,s0,00000002
	c.add	s5,s6
	c.mv	a0,s1
	addi	s3,s3,+00000320
	c.add	a4,a5
	lhu	a5,a4,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000301
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000000
	lw	s4,s5,+00000000
	lbu	s2,s4,+000000A1
	jal	ra,000000002301732C
	c.li	a5,0000000F
	beq	a0,a5,0000000023019F32

l23019F1E:
	lw	a5,s5,+00000000
	c.li	s2,00000008
	lhu	a5,a5,+0000005C
	andi	a5,a5,+00000100
	c.bnez	a5,0000000023019F32

l23019F2E:
	addi	s2,zero,+0000003E

l23019F32:
	c.andi	a0,00000001
	c.beqz	a0,0000000023019F62

l23019F36:
	lbu	a5,s4,+000000A3
	c.li	a4,00000012
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023019F62

l23019F46:
	lui	a4,00023074
	c.slli	a5,02
	addi	a4,a4,+0000063C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23019F56:
	addi	a2,s4,+00000069
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002300F396

;; fn23019F62: 23019F62
;;   Called from:
;;     23019A48 (in llc_enc_mgt_ind_handler)
;;     23019A48 (in llc_enc_mgt_ind_handler)
;;     23019A48 (in llc_enc_mgt_ind_handler)
;;     23019A48 (in llc_enc_mgt_ind_handler)
;;     23019ECA (in lld_stop_ind_handler)
;;     23019F34 (in lld_stop_ind_handler)
;;     23019F42 (in lld_stop_ind_handler)
;;     23019F5E (in llc_enc_mgt_ind_handler)
;;     23019FBA (in llc_enc_mgt_ind_handler)
;;     23019FD2 (in llc_enc_mgt_ind_handler)
;;     23019FDE (in llc_enc_mgt_ind_handler)
;;     23019FE6 (in llc_enc_mgt_ind_handler)
;;     23019FF0 (in llc_enc_mgt_ind_handler)
;;     23019FFC (in llc_enc_mgt_ind_handler)
fn23019F62 proc
	c.mv	a3,s2
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002300ED26
	c.mv	a1,s1
	addi	a0,zero,+00000101
	jal	ra,000000002300E00C
	c.mv	a1,s1
	addi	a0,zero,+00000102
	jal	ra,000000002300E00C
	c.mv	a1,s1
	addi	a0,zero,+00000103
	jal	ra,000000002300E00C
	addi	a0,zero,+00000104
	c.mv	a1,s1
	jal	ra,000000002300E00C
	c.mv	a0,s0
	jal	ra,000000002300EC62

l23019F9C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23019FB2:
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002300F400
	c.j	0000000023019F62

l23019FBC:
	c.add	s3,s6
	lw	a5,s3,+00000000
	lbu	a5,a5,+000000A5
	c.andi	a5,00000010
	c.beqz	a5,0000000023019FD4

l23019FCA:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002300F4D2
	c.j	0000000023019F62

l23019FD4:
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300F504
	c.j	0000000023019F62

l23019FE0:
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,0000000023019F62

l23019FE8:
	lhu	a5,s4,+0000005C
	andi	a5,a5,+00000040
	c.beqz	a5,0000000023019F62

l23019FF2:
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002300F2A8
	c.j	0000000023019F62

;; llc_check_trafic_paused: 23019FFE
;;   Called from:
;;     2301A32C (in llc_pdu_llcp_tx_ack_defer)
;;     2301A3EA (in llc_pdu_acl_tx_ack_defer)
llc_check_trafic_paused proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201A
	slli	a5,a0,00000002
	addi	s1,s1,+00000320
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.add	s1,a5
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	c.andi	a5,00000004
	c.beqz	a5,000000002301A05E

l2301A020:
	c.mv	s0,a0
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	a4,16(a0)
	jal	ra,0000000023012E70
	csrrw	zero,mstatus,zero
	c.bnez	a0,000000002301A05E

l2301A036:
	c.lw	s1,0(a4)
	slli	a0,s0,00000008
	ori	a2,a0,+00000001
	lhu	a5,a4,+0000005C
	c.mv	a1,a2
	addi	a0,zero,+00000106
	c.andi	a5,FFFFFFFB
	sh	a5,a4,+0000005C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300DC6C

l2301A05E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_get_free_conhdl: 2301A06A
;;   Called from:
;;     23014F0C (in llm_con_req_ind)
;;     230162BE (in llm_create_con)
llc_util_get_free_conhdl proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,zero,+0000007F
	jal	ra,000000002301732C
	beq	a0,s0,000000002301A0A4

l2301A082:
	addi	a0,zero,+00000101
	jal	ra,000000002301732C
	c.li	a5,00000009
	bne	a0,s0,000000002301A098

l2301A090:
	c.li	a5,00000001

l2301A092:
	sh	a5,s1,+00000000
	c.li	a5,00000000

l2301A098:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2301A0A4:
	c.li	a5,00000000
	c.j	000000002301A092

;; llc_util_get_nb_active_link: 2301A0A8
;;   Called from:
;;     2301A20E (in llc_util_bw_mgt)
llc_util_get_nb_active_link proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002301732C
	addi	a0,a0,-0000007F
	sltu	s0,zero,a0
	addi	a0,zero,+00000101
	jal	ra,000000002301732C
	addi	a5,zero,+0000007F
	beq	a0,a5,000000002301A0CE

l2301A0CC:
	c.addi	s0,00000001

l2301A0CE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_dicon_procedure: 2301A0D8
;;   Called from:
;;     23017468 (in llcp_ping_rsp_handler)
;;     230174FA (in llcp_terminate_ind_handler)
;;     2301755A (in llcp_enc_rsp_handler)
;;     23017828 (in llc_llcp_reject_ind)
;;     23017892 (in llcp_pause_enc_req_handler)
;;     23017984 (in llcp_start_enc_req_handler)
;;     23017A16 (in llcp_enc_req_handler)
;;     23017B18 (in llcp_unknown_rsp_handler)
;;     23017D00 (in llcp_vers_ind_handler)
;;     23017F96 (in llcp_pause_enc_rsp_handler)
;;     2301822C (in llcp_start_enc_rsp_handler)
;;     230183EA (in llcp_length_rsp_handler)
;;     2301859E (in llcp_con_param_rsp_handler)
;;     230186E8 (in llcp_feats_rsp_handler)
;;     230188B0 (in fn230188AA)
;;     23018A86 (in fn23018A80)
;;     23018C28 (in llcp_con_param_req_handler)
;;     23019064 (in llc_llcp_unknown_ind_handler.isra.1)
;;     230190DC (in llcp_feats_req_handler)
;;     230191AA (in llcp_ping_req_handler)
;;     2301928E (in llcp_length_req_handler)
;;     23019D34 (in llc_llcp_rsp_to_ind_handler)
;;     23019D94 (in llc_link_sup_to_ind_handler)
;;     23019E90 (in llc_data_ind_handler)
;;     2301A27E (in llc_end_evt_defer)
;;     2301A310 (in llc_pdu_llcp_tx_ack_defer)
;;     2301A454 (in llc_pdu_defer)
llc_util_dicon_procedure proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201A
	slli	a5,a0,00000002
	addi	s1,s1,+00000320
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.add	s1,a5
	slli	s0,a0,00000008
	c.lw	s1,0(a5)
	ori	s0,s0,+00000001
	c.slli	s0,10
	c.srli	s0,00000010
	sb	a1,a5,+000000A1
	c.mv	a0,s0
	c.li	a1,0000000F
	jal	ra,00000000230172BC
	c.mv	a1,s0
	addi	a0,zero,+00000105
	jal	ra,000000002300E00C
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,0(a5)
	c.lw	a5,16(a0)
	jal	ra,0000000023014284
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_util_update_channel_map: 2301A130
;;   Called from:
;;     23014FF8 (in llm_con_req_ind)
llc_util_update_channel_map proc
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	c.lw	a5,0(a0)
	lui	a5,0004200E
	lw	t1,a5,+0000013C
	c.li	a2,00000005
	addi	a0,a0,+0000005E
	c.jr	t1

;; llc_util_set_auth_payl_to_margin: 2301A14E
;;   Called from:
;;     2300F1FA (in llc_start)
;;     2301B410 (in hci_wr_auth_payl_to_cmd_handler)
llc_util_set_auth_payl_to_margin proc
	lhu	a5,a0,+00000036
	lhu	a3,a0,+00000050
	lhu	a2,a0,+0000004C
	lui	a4,0004201A
	add	a3,a3,a5
	c.slli	a2,02
	addi	a4,a4,+00000320
	c.add	a4,a2
	c.lw	a4,0(a2)
	lhu	a4,a2,+00000058
	slli	a5,a3,00000003
	c.slli	a4,04

l2301A176:
	bltu	a4,a5,000000002301A186

l2301A17A:
	c.srli	a5,00000004
	c.bnez	a5,000000002301A180

l2301A17E:
	c.li	a5,00000001

l2301A180:
	sh	a5,a2,+0000005A
	c.jr	ra

l2301A186:
	c.sub	a5,a3
	c.j	000000002301A176

;; llc_util_clear_operation_ptr: 2301A18A
;;   Called from:
;;     2300F774 (in llc_con_update_finished)
;;     23017792 (in llc_llcp_reject_ind)
;;     23017BFE (in fn23017B9A)
;;     230186AA (in llcp_con_param_rsp_handler)
;;     23018A28 (in fn230189F4)
;;     2301993E (in llc_length_req_ind_handler)
;;     23019AB8 (in llc_enc_mgt_ind_handler)
;;     2301AA36 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     2301ABDA (in hci_le_rem_con_param_req_reply_cmd_handler)
llc_util_clear_operation_ptr proc
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a0)
	c.beqz	a0,000000002301A1AA

l2301A1A0:
	sw	zero,a1,+00000000
	c.addi	a0,FFFFFFF4
	jal	zero,000000002300DCB6

l2301A1AA:
	c.jr	ra

;; llc_util_bw_mgt: 2301A1AC
;;   Called from:
;;     2301A28C (in llc_end_evt_defer)
llc_util_bw_mgt proc
	lui	a5,0004201A
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,000000002301A230

l2301A1BE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a5,16(s1)
	lhu	s0,a5,+00000050
	lhu	a5,a5,+0000004E
	c.lw	s1,80(a4)
	addi	a3,zero,+00000271
	c.add	s0,a5
	lhu	a5,a4,+00000008
	addi	s0,s0,+00000096
	c.slli	s0,10
	add	a5,a5,a3
	c.srli	s0,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a5,s0,000000002301A226

l2301A1F0:
	addi	a3,zero,+00000271
	addi	a5,s0,+00000270
	xor	a5,a5,a3
	sh	a5,a4,+00000008
	jal	ra,000000002301428C
	c.li	a5,00000003
	bne	a0,a5,000000002301A20E

l2301A20A:
	sh	s0,s1,+00000012

l2301A20E:
	jal	ra,000000002301A0A8
	c.li	a5,00000001
	beq	a0,a5,000000002301A226

l2301A218:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023012C10

l2301A226:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301A230:
	c.jr	ra

;; llc_end_evt_defer: 2301A232
;;   Called from:
;;     2300FD5E (in lld_evt_deffered_elt_handler)
llc_end_evt_defer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201A
	slli	a5,a0,00000002
	addi	s1,s1,+00000320
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.add	s1,a5
	c.lw	s1,0(a5)
	c.beqz	a5,000000002301A290

l2301A24C:
	c.mv	s0,a0
	c.slli	a0,08
	ori	a0,a0,+00000001
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,000000002301A282

l2301A264:
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	andi	a3,a5,+00000200
	c.beqz	a3,000000002301A282

l2301A270:
	lbu	a1,a4,+000000A1
	andi	a5,a5,-00000201
	sh	a5,a4,+0000005C
	c.mv	a0,s0
	jal	ra,000000002301A0D8

l2301A282:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301A1AC

l2301A290:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_pdu_llcp_tx_ack_defer: 2301A29A
;;   Called from:
;;     23011F82 (in lld_pdu_check)
llc_pdu_llcp_tx_ack_defer proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	slli	s0,a0,00000008
	ori	s0,s0,+00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,s0
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.mv	s4,a1
	jal	ra,000000002301732C
	andi	a4,a0,+0000007F
	addi	a5,zero,+0000007F
	beq	a4,a5,000000002301A3AA

l2301A2D0:
	lui	s2,0004201A
	addi	s5,s2,+00000320
	slli	s7,s3,00000002
	c.mv	s1,a0
	c.add	s5,s7
	c.mv	a0,s0
	lw	s6,s5,+00000000
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	addi	s2,s2,+00000320
	bne	a0,a5,000000002301A330

l2301A2F6:
	lw	a4,s5,+00000000
	lhu	a5,a4,+0000005C
	andi	a5,a5,+00000200
	c.bnez	a5,000000002301A314

l2301A304:
	c.li	a5,00000002
	bne	s4,a5,000000002301A314

l2301A30A:
	lbu	a1,a4,+000000A1
	c.mv	a0,s3
	jal	ra,000000002301A0D8

l2301A314:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	andi	a0,s3,+000000FF
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,0000000023019FFE

l2301A330:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002301A388

l2301A336:
	lbu	a5,s6,+000000A4
	c.li	a4,0000000C
	bne	a5,a4,000000002301A382

l2301A340:
	c.li	a5,00000006

l2301A342:
	bne	s4,a5,000000002301A388

l2301A346:
	c.slli	s1,18
	c.srai	s1,00000018
	andi	a1,s1,+000000FD
	c.mv	a0,s0
	jal	ra,00000000230172BC
	andi	a1,s1,+000000F9
	c.mv	a0,s0
	jal	ra,00000000230172BC
	sb	zero,s6,+000000A4
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.add	s2,s7
	lw	a4,s2,+00000000
	lbu	a5,a4,+000000A5
	andi	a5,a5,-00000025
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero
	c.j	000000002301A314

l2301A382:
	c.li	a4,0000000D
	beq	a5,a4,000000002301A342

l2301A388:
	c.andi	s1,00000001
	c.beqz	s1,000000002301A314

l2301A38C:
	lbu	a4,s6,+000000A3
	c.li	a5,0000000C
	bne	a4,a5,000000002301A314

l2301A396:
	c.li	a5,0000000B
	bne	s4,a5,000000002301A314

l2301A39C:
	c.mv	a2,s0
	c.mv	a1,s0
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	000000002301A314

l2301A3AA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

;; llc_pdu_acl_tx_ack_defer: 2301A3C0
;;   Called from:
;;     23011EB0 (in lld_pdu_check)
llc_pdu_acl_tx_ack_defer proc
	lui	a5,0004201A
	slli	a2,a0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a2
	c.lw	a5,0(a5)
	c.beqz	a5,000000002301A3EE

l2301A3D2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a1,000000002301A3E0

l2301A3DC:
	jal	ra,000000002300F59E

l2301A3E0:
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023019FFE

l2301A3EE:
	c.jr	ra

;; llc_pdu_defer: 2301A3F0
;;   Called from:
;;     23011FBE (in lld_pdu_check)
llc_pdu_defer proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,0004201A
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	addi	s2,s3,+00000320
	slli	s4,a0,00000002
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.add	s2,s4
	lw	s6,s2,+00000000
	beq	s6,zero,000000002301A478

l2301A418:
	lui	a5,00042019
	lw	a5,a5,+00000640
	c.mv	s0,a0
	c.mv	a0,a2
	c.mv	s1,a1
	c.mv	s5,a4
	c.swsp	a3,00000084
	c.jalr	a5
	lw	a5,s2,+00000000
	sb	a0,s6,+00000068
	c.lwsp	a2,000000A4
	lb	a2,a5,+00000068
	c.mv	a1,s1
	c.mv	a0,s0
	c.jal	000000002301A778
	andi	a5,s1,+0000001D
	addi	s3,s3,+00000320
	c.beqz	a5,000000002301A48C

l2301A44A:
	c.andi	s1,00000010
	c.beqz	s1,000000002301A458

l2301A44E:
	addi	a1,zero,+0000003D
	c.mv	a0,s0
	jal	ra,000000002301A0D8

l2301A458:
	c.add	s3,s4
	lw	a5,s3,+00000000
	lhu	a4,a5,+0000005C
	andi	a3,a4,+00000020
	c.beqz	a3,000000002301A478

l2301A468:
	andi	a4,a4,-00000021
	sh	a4,a5,+0000005C
	lhu	a4,a5,+00000056
	sh	a4,a5,+00000054

l2301A478:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l2301A48C:
	lw	a5,s2,+00000000
	c.slli	s0,08
	ori	s0,s0,+00000001
	c.slli	s0,10
	lhu	a2,a5,+00000054
	c.srli	s0,00000010
	c.mv	a1,s0
	addi	a0,zero,+00000101
	andi	s1,s1,+00000120
	jal	ra,000000002300DF0E
	c.bnez	s1,000000002301A458

l2301A4AE:
	beq	s5,zero,000000002301A458

l2301A4B2:
	lw	a5,s2,+00000000
	c.li	a3,00000003
	lbu	a4,a5,+000000A5
	c.andi	a4,00000003
	bne	a4,a3,000000002301A458

l2301A4C2:
	lhu	a4,a5,+0000005C
	c.andi	a4,00000008
	c.bnez	a4,000000002301A458

l2301A4CA:
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.mv	a1,s0
	addi	a0,zero,+00000103
	c.sub	a2,a5
	jal	ra,000000002300DF0E
	lw	a5,s2,+00000000
	c.mv	a1,s0
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002300DF0E
	c.j	000000002301A458

;; llm_dft_handler: 2301A4F2
llm_dft_handler proc
	c.li	a0,00000000
	c.jr	ra

;; llm_le_set_host_ch_class_cmd_sto_handler: 2301A4F6
llm_le_set_host_ch_class_cmd_sto_handler proc
	lui	a5,0004201A
	c.li	a4,00000001
	sb	a4,a5,+0000038F
	c.li	a0,00000000
	c.jr	ra

;; llm_ecc_result_ind_handler: 2301A504
llm_ecc_result_ind_handler proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004201A
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	a5,a4,+00000358
	lbu	a5,a5,+000000D3
	c.li	a3,00000002
	c.mv	s3,a1
	addi	s2,a4,+00000358
	bne	a5,a3,000000002301A57C

l2301A528:
	c.li	a0,00000008
	jal	ra,00000000230149E8
	c.beqz	a0,000000002301A568

l2301A530:
	c.lui	a0,00001000
	addi	a2,zero,+0000003E
	c.li	a1,00000000
	addi	a3,zero,+00000022
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,00000009
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.addi	a0,00000002

l2301A560:
	c.jalr	a5
	c.mv	a0,s0
	jal	ra,000000002300BD76

l2301A568:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sb	zero,s2,+000000D3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301A57C:
	c.li	a4,00000001
	bne	a5,a4,000000002301A568

l2301A582:
	c.li	a0,00000007
	jal	ra,00000000230149E8
	c.beqz	a0,000000002301A568

l2301A58A:
	c.lui	a0,00001000
	addi	a3,zero,+00000042
	addi	a2,zero,+0000003E
	c.li	a1,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,00000008
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lui	s1,0004200E
	lw	a5,s1,+0000013C
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.addi	a0,00000002
	c.jalr	a5
	lw	a5,s1,+0000013C
	addi	a2,zero,+00000020
	addi	a1,s3,+00000020
	addi	a0,s0,+00000022
	c.j	000000002301A560

;; llm_enc_req_handler: 2301A5CE
llm_enc_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	c.swsp	s1,00000080
	addi	a0,s0,+00000358
	c.mv	s1,a1
	c.addi	a1,FFFFFFF4
	c.swsp	ra,00000084
	addi	s0,s0,+00000358
	jal	ra,000000002300C1E6
	lbu	a5,s0,+00000058
	c.bnez	a5,000000002301A5F6

l2301A5F0:
	c.mv	a0,s1
	jal	ra,0000000023016404

l2301A5F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; lld_stop_ind_handler: 2301A602
lld_stop_ind_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002301732C
	andi	a0,a0,+000000F0
	addi	a5,zero,+00000020
	bne	a0,a5,000000002301A676

l2301A61A:
	c.li	a0,00000000
	jal	ra,000000002301732C
	addi	a5,zero,+00000023
	beq	a0,a5,000000002301A68E

l2301A628:
	c.li	a0,00000000
	jal	ra,000000002301732C
	andi	a0,a0,+000000F0
	addi	a5,zero,+00000020
	bne	a0,a5,000000002301A730

l2301A63A:
	lui	s0,0004201A
	addi	a5,s0,+00000358
	lbu	a5,a5,+0000004C
	addi	s0,s0,+00000358
	bne	a5,zero,000000002301A730

l2301A64E:
	lbu	a5,s0,+0000006E
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002301A670

l2301A65C:
	lhu	a0,s0,+0000006C
	c.li	a1,00000000
	jal	ra,00000000230154FC
	lbu	a5,s0,+0000006E
	c.andi	a5,0000000F
	sb	a5,s0,+0000006E

l2301A670:
	sw	zero,s0,+00000048
	c.j	000000002301A702

l2301A676:
	c.li	a0,00000000
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,00000003
	beq	a0,a5,000000002301A61A

l2301A684:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301A68E:
	lui	s0,0004201A
	addi	a5,s0,+00000358
	lbu	a5,a5,+0000006E
	c.li	a4,00000010
	addi	s0,s0,+00000358
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002301A6BC

l2301A6A8:
	lhu	a0,s0,+0000006C
	c.li	a1,00000000
	jal	ra,00000000230154FC
	lbu	a5,s0,+0000006E
	c.andi	a5,0000000F
	sb	a5,s0,+0000006E

l2301A6BC:
	lbu	a5,s0,+00000050
	sw	zero,s0,+00000048
	c.li	a4,00000001
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002301A6FA

l2301A6D0:
	lhu	a0,s0,+0000004E
	c.li	a1,00000000
	jal	ra,00000000230154FC
	lbu	a4,s0,+00000050
	c.li	a5,00000002
	bne	a4,a5,000000002301A6F0

l2301A6E4:
	c.lui	a1,00010000
	c.li	a2,00000000
	c.addi	a1,FFFFFFFF
	c.li	a0,00000002
	jal	ra,000000002300ED60

l2301A6F0:
	lbu	a5,s0,+00000050
	c.andi	a5,FFFFFFF0
	sb	a5,s0,+00000050

l2301A6FA:
	lui	a5,0004201A
	sw	zero,a5,+000003AC

l2301A702:
	c.li	a0,00000000
	jal	ra,000000002301732C
	lui	s0,0004201A
	addi	a5,s0,+00000358
	c.lw	a5,72(a5)
	addi	s0,s0,+00000358
	c.bnez	a5,000000002301A76C

l2301A718:
	c.lw	s0,84(a5)
	c.li	a1,00000000
	c.beqz	a5,000000002301A722

l2301A71E:
	andi	a1,a0,+0000000F

l2301A722:
	c.li	a0,00000000
	jal	ra,00000000230172BC
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000044
	c.j	000000002301A684

l2301A730:
	c.li	a0,00000000
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,00000003
	bne	a0,a5,000000002301A76A

l2301A73E:
	lui	s0,0004201A
	addi	a5,s0,+00000358
	lbu	a5,a5,+0000004C
	addi	s0,s0,+00000358
	c.beqz	a5,000000002301A76A

l2301A750:
	lbu	a4,s0,+00000050
	c.li	a3,00000001
	addi	a5,a4,-00000001
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002301A6D0

l2301A762:
	c.li	a5,00000011
	bne	a4,a5,000000002301A6FA

l2301A768:
	c.j	000000002301A6D0

l2301A76A:
	c.j	000000002301A76A

l2301A76C:
	c.lw	s0,84(a5)
	c.bnez	a5,000000002301A776

l2301A770:
	andi	a1,a0,+000000F0
	c.j	000000002301A722

l2301A776:
	c.j	000000002301A776

;; llc_ch_assess_local: 2301A778
;;   Called from:
;;     2301A43E (in llc_pdu_defer)
llc_ch_assess_local proc
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	c.lw	a5,0(a0)
	lui	a4,0004201A
	andi	a6,a1,+00000001
	c.add	a3,a0
	lb	a5,a3,+00000014
	addi	a4,a4,+00000358
	beq	a6,zero,000000002301A7C6

l2301A79C:
	lb	a1,a4,+00000030
	bge	a1,a2,000000002301A7AC

l2301A7A4:
	c.addi	a5,FFFFFFFD

l2301A7A6:
	sb	a5,a3,+00000014
	c.j	000000002301A7B4

l2301A7AC:
	lbu	a2,a0,+00000039
	c.addi	a5,FFFFFFFF
	c.beqz	a2,000000002301A7A6

l2301A7B4:
	lb	a2,a3,+00000014
	lb	a5,a4,+0000002E
	bge	a2,a5,000000002301A7D2

l2301A7C0:
	sb	a5,a3,+00000014
	c.j	000000002301A7DA

l2301A7C6:
	c.andi	a1,00000008
	andi	a5,a5,+000000FF
	c.bnez	a1,000000002301A7A4

l2301A7CE:
	c.addi	a5,00000003
	c.j	000000002301A7A6

l2301A7D2:
	lb	a5,a4,+0000002F
	blt	a5,a2,000000002301A7C0

l2301A7DA:
	c.jr	ra

;; llc_ch_assess_get_local_ch_map: 2301A7DC
;;   Called from:
;;     23019CE2 (in llc_chnl_assess_timer_handler)
llc_ch_assess_get_local_ch_map proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFF0
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.add	a5,a0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a5,0(s1)
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.mv	s0,a1
	c.mv	s2,a2
	c.li	a1,00000000
	c.li	a2,00000005
	c.mv	a0,s0
	c.jalr	a5
	lui	a2,0004201A
	addi	a3,zero,+00000024
	c.li	a0,00000000
	c.li	a7,00000001
	addi	a2,a2,+00000358
	c.li	a6,FFFFFFFF

l2301A81A:
	slli	a4,a3,00000018
	c.srai	a4,00000018
	c.srai	a4,00000003
	add	a1,s2,a4
	andi	a5,a3,+00000007
	lbu	a1,a1,+00000000
	sll	a5,a7,a5
	andi	a5,a5,+000000FF
	c.and	a1,a5
	c.beqz	a1,000000002301A85C

l2301A83A:
	add	a1,s1,a3
	lb	t1,a1,+00000014
	lb	a1,a2,+0000002E
	bge	a1,t1,000000002301A85C

l2301A84A:
	c.add	a4,s0
	lbu	a1,a4,+00000000
	c.addi	a0,00000001
	andi	a0,a0,+000000FF
	c.or	a5,a1
	sb	a5,a4,+00000000

l2301A85C:
	c.addi	a3,FFFFFFFF
	bne	a3,a6,000000002301A81A

l2301A862:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_ch_assess_get_current_ch_map: 2301A86E
;;   Called from:
;;     23019616 (in llc_chmap_update_req_ind_handler)
llc_ch_assess_get_current_ch_map proc
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	c.lw	a5,0(a0)
	addi	a0,a0,+0000005E
	c.jr	ra

;; llc_ch_assess_reass_ch: 2301A882
;;   Called from:
;;     23019D04 (in llc_chnl_assess_timer_handler)
llc_ch_assess_reass_ch proc
	lui	a5,0004201A
	c.slli	a0,02
	addi	a5,a5,+00000320
	c.add	a5,a0
	lw	t5,a5,+00000000
	c.li	a4,00000002
	c.li	a0,0000000A
	lbu	a5,t5,+0000003B
	bgeu	a4,a3,000000002301A8A8

l2301A89E:
	slli	a0,a3,00000005
	addi	a0,a0,+0000007F
	c.srli	a0,00000007

l2301A8A8:
	lui	a4,0004201A
	lbu	a4,a4,+00000389
	addi	a6,zero,+00000025
	addi	t3,zero,+00000024
	sb	a4,t5,+0000003A
	c.li	t4,00000001

l2301A8BE:
	addi	a4,a5,+0000000B
	andi	a4,a4,+000000FF
	bgeu	t3,a4,000000002301A924

l2301A8CA:
	c.addi	a5,FFFFFFE6
	andi	a5,a5,+000000FF

l2301A8D0:
	srli	a3,a5,00000003
	add	a7,a1,a3
	andi	a4,a5,+00000007
	lbu	t1,a7,+00000000
	sll	a4,t4,a4
	andi	a4,a4,+000000FF
	and	t1,a4,t1
	bne	t1,zero,000000002301A912

l2301A8F0:
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.and	a3,a4
	c.beqz	a3,000000002301A912

l2301A8FA:
	add	a3,t5,a5
	sb	zero,a3,+00000014
	lbu	a3,a7,+00000000
	c.addi	a0,FFFFFFFF
	c.slli	a0,10
	c.or	a4,a3
	sb	a4,a7,+00000000
	c.srli	a0,00000010

l2301A912:
	c.addi	a6,FFFFFFFF
	andi	a6,a6,+000000FF
	beq	a6,zero,000000002301A91E

l2301A91C:
	c.bnez	a0,000000002301A8BE

l2301A91E:
	sb	a5,t5,+0000003B
	c.jr	ra

l2301A924:
	c.mv	a5,a4
	c.j	000000002301A8D0

;; hci_le_set_data_len_cmd_handler: 2301A928
hci_le_set_data_len_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	c.mv	s2,a3
	c.swsp	a2,00000084
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,000000002301A9C8

l2301A946:
	lhu	a0,s1,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	slli	a4,a0,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	lbu	a4,a5,+00000052
	c.bnez	a4,000000002301A9CE

l2301A960:
	lhu	a1,s1,+00000002
	addi	a3,zero,+000000E0
	addi	a4,a1,-0000001B
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a3,a4,000000002301A9D2

l2301A974:
	lhu	a3,s1,+00000004
	addi	a6,zero,+00000700
	addi	a4,a3,-00000148
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a6,a4,000000002301A9D2

l2301A988:
	c.li	a4,00000002
	bltu	a4,a0,000000002301A9D2

l2301A98E:
	lhu	a4,a5,+00000046
	c.lwsp	a2,00000084
	bne	a4,a1,000000002301A9A0

l2301A998:
	lhu	a4,a5,+0000004E
	beq	a4,a3,000000002301A9D6

l2301A9A0:
	c.mv	a1,a2
	c.sw	a5,12(s1)
	addi	a0,zero,+00000107
	jal	ra,000000002300DC6C
	c.li	a1,00000000
	c.li	s0,00000001

l2301A9B0:
	lhu	a2,s1,+00000000
	c.mv	a0,s2
	jal	ra,000000002300F456
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2301A9C8:
	c.li	a1,0000000C

l2301A9CA:
	c.li	s0,00000000
	c.j	000000002301A9B0

l2301A9CE:
	c.li	a1,0000001A
	c.j	000000002301A9CA

l2301A9D2:
	c.li	a1,00000012
	c.j	000000002301A9CA

l2301A9D6:
	c.li	a1,00000000
	c.j	000000002301A9CA

;; hci_le_rem_con_param_req_neg_reply_cmd_handler: 2301A9DA
hci_le_rem_con_param_req_neg_reply_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s4,a2
	c.mv	s3,a3
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a4,a5,000000002301AA62

l2301AA00:
	andi	a5,a0,+00000002
	c.mv	s2,a0
	c.beqz	a5,000000002301AA62

l2301AA08:
	lhu	a0,s0,+00000000
	lui	s1,0004201A
	addi	s1,s1,+00000320
	slli	a5,a0,00000002
	c.add	a5,s1
	c.lw	a5,0(a5)
	lbu	a4,a5,+000000A4
	c.li	a5,00000002
	bne	a4,a5,000000002301AA62

l2301AA26:
	lbu	a4,s0,+00000002
	addi	a5,zero,+0000003B
	c.li	a1,00000012
	bne	a4,a5,000000002301AA62

l2301AA34:
	c.li	a1,00000001
	jal	ra,000000002301A18A
	andi	a1,s2,+000000FD
	c.mv	a0,s4
	jal	ra,00000000230172BC
	lhu	a5,s0,+00000000
	c.li	a1,0000000F
	c.slli	a5,02
	c.add	s1,a5
	c.lw	s1,0(a5)
	sb	zero,a5,+000000A4
	lbu	a2,s0,+00000002
	lhu	a0,s0,+00000000
	jal	ra,000000002301834C
	c.li	a1,00000000

l2301AA62:
	lhu	a2,s0,+00000000
	c.mv	a0,s3
	jal	ra,000000002300F456
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_rem_con_param_req_reply_cmd_handler: 2301AA7E
hci_le_rem_con_param_req_reply_cmd_handler proc
	c.addi16sp	FFFFFFD0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s0,a1
	c.mv	s5,a2
	c.mv	s7,a3
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	s4,0000000C
	beq	a4,a5,000000002301AB50

l2301AAAE:
	andi	a5,a0,+00000002
	c.mv	s6,a0
	c.beqz	a5,000000002301AB50

l2301AAB6:
	lhu	a0,s0,+00000000
	lui	s2,0004201A
	addi	a5,s2,+00000320
	slli	a4,a0,00000002
	c.add	a5,a4
	lw	s3,a5,+00000000
	c.li	a5,00000002
	addi	s2,s2,+00000320
	lbu	s9,s3,+000000A4
	bne	s9,a5,000000002301AB50

l2301AADA:
	lw	s1,s3,+00000004
	c.li	s8,00000003
	jal	ra,000000002301428C
	bne	a0,s8,000000002301AB78

l2301AAE8:
	sb	s9,s1,+00000000
	lhu	a4,s0,+00000002
	lhu	a5,s1,+0000000E
	bgeu	a4,a5,000000002301AAFA

l2301AAF8:
	c.mv	a5,a4

l2301AAFA:
	sh	a5,s1,+0000000E
	lhu	a4,s0,+00000004
	lhu	a5,s1,+00000010
	bgeu	a5,a4,000000002301AB0C

l2301AB0A:
	c.mv	a5,a4

l2301AB0C:
	sh	a5,s1,+00000010
	lhu	a5,s0,+00000006
	sh	a5,s1,+00000006
	lhu	a4,s0,+00000008
	lhu	a5,s1,+00000008
	bgeu	a5,a4,000000002301AB26

l2301AB24:
	c.mv	a5,a4

l2301AB26:
	sh	a5,s1,+00000008
	c.mv	a0,s1
	jal	ra,000000002300DBE2
	andi	a1,s6,+000000FD
	c.mv	a0,s5
	jal	ra,00000000230172BC
	sb	zero,s3,+000000A4
	lhu	a5,s0,+00000000
	c.li	s4,00000000
	c.slli	a5,02
	c.add	s2,a5
	lw	a5,s2,+00000000
	sw	zero,a5,+00000004

l2301AB50:
	lhu	a2,s0,+00000000
	c.mv	a0,s7
	c.mv	a1,s4
	jal	ra,000000002300F456
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301AB78:
	lhu	a0,s0,+00000000
	c.li	s4,00000000
	jal	ra,000000002301428C
	c.li	a5,00000004
	bne	a0,a5,000000002301AB50

l2301AB88:
	lhu	a5,s0,+00000002
	c.mv	a2,s1
	sh	a5,s1,+0000000E
	lhu	a5,s0,+00000004
	sh	a5,s1,+00000010
	lhu	a5,s0,+00000006
	sh	a5,s1,+00000006
	lhu	a5,s0,+00000008
	sh	a5,s1,+00000008
	lw	a1,s3,+00000010
	lhu	a0,s0,+00000000
	jal	ra,000000002301407C
	sb	s8,s3,+000000A4
	lhu	a0,s0,+00000000
	c.mv	a1,s1
	jal	ra,0000000023018B70
	c.lui	a2,00001000
	c.mv	a1,s5
	addi	a2,a2,-00000060
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,000000002301A18A
	c.j	000000002301AB50

;; hci_le_ltk_req_neg_reply_cmd_handler: 2301ABE0
hci_le_ltk_req_neg_reply_cmd_handler proc
	c.addi16sp	FFFFFFD0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s3,a3
	c.swsp	s1,00000090
	c.mv	s2,a1
	c.swsp	a2,00000084
	jal	ra,000000002301732C
	andi	a3,a0,+0000000F
	c.li	a4,0000000F
	c.li	s0,0000000C
	beq	a3,a4,000000002301AC40

l2301AC04:
	andi	a4,a0,+00000002
	c.mv	a5,a0
	c.beqz	a4,000000002301AC40

l2301AC0C:
	lhu	a0,s2,+00000000
	lui	s1,0004201A
	addi	a4,s1,+00000320
	slli	a3,a0,00000002
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.li	a3,00000009
	addi	s1,s1,+00000320
	lbu	a2,a4,+000000A4
	c.lwsp	a2,00000064
	bne	a2,a3,000000002301AC40

l2301AC30:
	lbu	s0,a4,+000000A5
	c.andi	s0,00000010
	c.beqz	s0,000000002301AC5C

l2301AC38:
	c.li	a1,00000006
	jal	ra,0000000023018FA2
	c.li	s0,00000000

l2301AC40:
	lhu	a2,s2,+00000000
	c.mv	a0,s3
	c.mv	a1,s0
	jal	ra,000000002300F456
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301AC5C:
	c.andi	a5,00000001
	c.beqz	a5,000000002301AC6E

l2301AC60:
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E

l2301AC6E:
	lhu	a5,s2,+00000000
	c.li	a4,0000000D
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	sb	a4,a5,+000000A4
	csrrs	a3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lhu	a5,s2,+00000000
	c.slli	a5,02
	c.add	s1,a5
	c.lw	s1,0(a4)
	lbu	a5,a4,+000000A5
	c.andi	a5,FFFFFFF7
	sb	a5,a4,+000000A5
	csrrw	zero,mstatus,zero
	lhu	a0,s2,+00000000
	c.li	a2,00000006
	c.li	a1,00000003
	jal	ra,000000002301834C
	c.j	000000002301AC40

;; hci_le_ltk_req_reply_cmd_handler: 2301ACAC
hci_le_ltk_req_reply_cmd_handler proc
	c.addi16sp	FFFFFFD0
	c.mv	a0,a2
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a1
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s2,a3
	c.swsp	a2,00000084
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a4,a5,000000002301AD44

l2301ACD2:
	c.andi	a0,00000002
	c.beqz	a0,000000002301AD44

l2301ACD6:
	lhu	a5,s1,+00000000
	lui	s0,0004201A
	addi	s0,s0,+00000320
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	c.lwsp	a2,00000084
	lbu	a4,a5,+000000A4
	c.li	a5,00000009
	bne	a4,a5,000000002301AD44

l2301ACF4:
	addi	a3,zero,+00000020
	c.li	a1,00000000
	c.li	a0,00000004
	jal	ra,000000002300DB74
	lui	s4,0004200E
	lw	a5,s4,+0000013C
	c.li	a2,00000010
	addi	a1,s1,+00000002
	c.mv	s3,a0
	c.jalr	a5
	lhu	a5,s1,+00000000
	c.li	a2,00000010
	addi	a0,s3,+00000010
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a1)
	lw	a5,s4,+0000013C
	addi	a1,a1,+00000071
	c.jalr	a5
	c.mv	a0,s3
	jal	ra,000000002300DBE2
	lhu	a5,s1,+00000000
	c.li	a4,0000000A
	c.li	a1,00000000
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	sb	a4,a5,+000000A4

l2301AD44:
	lhu	a2,s1,+00000000
	c.mv	a0,s2
	jal	ra,000000002300F456
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; hci_disconnect_cmd_handler: 2301AD60
hci_disconnect_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s2,a3
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	c.li	a1,0000000C
	beq	a0,a5,000000002301ADC2

l2301AD7E:
	lui	a5,00015141
	addi	a5,a5,+00000305
	c.swsp	a5,00000004
	c.lui	a5,00003000
	addi	a5,a5,-000006E6
	lbu	a1,s1,+00000002
	sh	a5,sp,+0000000C
	addi	a5,zero,+0000003B
	sb	a5,sp,+0000000E
	c.li	a4,00000007
	c.li	a5,00000000

l2301ADA2:
	c.addi4spn	a3,00000008
	c.add	a3,a5
	lbu	a3,a3,+00000000
	beq	a3,a1,000000002301ADB8

l2301ADAE:
	c.addi	a5,00000001
	bne	a5,a4,000000002301ADA2

l2301ADB4:
	c.li	a1,00000012
	c.j	000000002301ADC2

l2301ADB8:
	lhu	a0,s1,+00000000
	jal	ra,0000000023018FA2
	c.li	a1,00000000

l2301ADC2:
	lhu	a2,s1,+00000000
	lui	s0,0004201A
	addi	a5,s0,+00000320
	slli	a4,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	addi	s0,s0,+00000320
	lbu	a5,a5,+000000A2
	c.bnez	a5,000000002301ADF6

l2301ADE0:
	c.mv	a0,s2
	jal	ra,000000002300F486
	lhu	a5,s1,+00000000
	c.li	a4,00000001
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	sb	a4,a5,+000000A2

l2301ADF6:
	lhu	a5,s1,+00000000
	c.li	a0,00000000
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	sb	zero,a5,+000000A2
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_start_enc_cmd_handler: 2301AE12
hci_le_start_enc_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s4,a1
	c.mv	s3,a2
	c.mv	s5,a3
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,000000002301AE40

l2301AE38:
	lhu	a2,s4,+00000000

l2301AE3C:
	c.li	a1,0000000C
	c.j	000000002301AE50

l2301AE40:
	andi	a5,a0,+00000004
	c.mv	s2,a0
	c.beqz	a5,000000002301AE6A

l2301AE48:
	lhu	a2,s4,+00000000
	addi	a1,zero,+0000003A

l2301AE50:
	c.mv	a0,s5
	jal	ra,000000002300F486
	c.li	a0,00000000

l2301AE58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2301AE6A:
	andi	a5,a0,+00000001
	c.li	a0,00000002
	c.bnez	a5,000000002301AE58

l2301AE72:
	srli	s1,s3,00000008
	c.mv	a0,s1
	jal	ra,000000002301428C
	c.li	a5,00000003
	lhu	a2,s4,+00000000
	bne	a0,a5,000000002301AE3C

l2301AE86:
	lui	s0,0004201A
	addi	a5,s0,+00000320
	slli	a4,a2,00000002
	c.add	a5,a4
	c.lw	a5,0(a5)
	addi	s0,s0,+00000320
	lbu	a5,a5,+00000069
	c.andi	a5,00000001
	c.beqz	a5,000000002301AE3C

l2301AEA2:
	c.mv	a0,s5
	c.li	a1,00000000
	jal	ra,000000002300F486
	ori	a1,s2,+00000001
	c.mv	a0,s3
	andi	a1,a1,+000000FF
	jal	ra,00000000230172BC
	ori	a1,s2,+00000005
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	c.slli	s1,02
	jal	ra,00000000230172BC
	c.add	s1,s0
	c.lw	s1,0(a5)
	c.li	a4,0000000A
	sb	a4,a5,+000000A3
	csrrs	s2,mstatus,zero
	csrrci	a4,mstatus,00000008
	lbu	a4,a5,+000000A5
	c.lw	a5,16(a0)
	ori	a4,a4,+00000004
	sb	a4,a5,+000000A5
	jal	ra,0000000023012E70
	csrrw	zero,mstatus,zero
	c.beqz	a0,000000002301AF12

l2301AEF2:
	c.lw	s1,0(a4)
	lhu	a5,a4,+0000005C
	ori	a5,a5,+00000004
	sh	a5,a4,+0000005C

l2301AF00:
	lhu	a5,s4,+00000000
	c.li	a0,00000001
	c.slli	a5,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	sw	s4,a5,+00000008
	c.j	000000002301AE58

l2301AF12:
	c.mv	a2,s3
	c.mv	a1,s3
	addi	a0,zero,+00000106
	jal	ra,000000002300DC6C
	c.j	000000002301AF00

;; hci_le_rd_rem_used_feats_cmd_handler: 2301AF20
hci_le_rd_rem_used_feats_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.mv	s1,a1
	c.mv	s3,a2
	c.mv	s4,a3
	jal	ra,000000002301732C
	lui	s0,0004201A
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	addi	s0,s0,+00000320
	beq	a4,a5,000000002301AFE0

l2301AF4E:
	lhu	a5,s1,+00000000
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000001
	c.bnez	a5,000000002301AFE4

l2301AF60:
	andi	s2,a0,+00000005
	c.li	s5,00000002
	bne	s2,zero,000000002301AFCC

l2301AF6A:
	ori	a1,a0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	jal	ra,00000000230172BC
	lhu	a5,s1,+00000000
	c.li	a4,00000001
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	sb	a4,a5,+000000A3
	lhu	a0,s1,+00000000
	jal	ra,0000000023018E94
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E

l2301AFA0:
	lhu	a2,s1,+00000000
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002300F486
	lhu	a1,s1,+00000000
	c.li	s5,00000000
	slli	a5,a1,00000002
	c.add	s0,a5
	c.lw	s0,0(a2)
	lhu	a5,a2,+0000005C
	c.andi	a5,00000001
	c.beqz	a5,000000002301AFCC

l2301AFC2:
	addi	a2,a2,+00000069
	c.li	a0,00000000
	jal	ra,000000002300F396

l2301AFCC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2301AFE0:
	c.li	s2,0000000C
	c.j	000000002301AFA0

l2301AFE4:
	c.li	s2,00000000
	c.j	000000002301AFA0

;; hci_le_rd_chnl_map_cmd_handler: 2301AFE8
hci_le_rd_chnl_map_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	lhu	a1,a1,+00000000
	c.mv	s2,a2
	c.lui	a0,00001000
	c.lui	a2,00002000
	c.li	a3,0000000A
	c.addi	a2,00000015
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a4,0000000F
	c.li	a5,0000000C
	beq	a0,a4,000000002301B044

l2301B01C:
	lhu	a4,s1,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a1)
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.li	a2,00000005
	addi	a1,a1,+0000005E
	addi	a0,s0,+00000004
	c.jalr	a5
	c.li	a5,00000000

l2301B044:
	sb	a5,s0,+00000000
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_auth_payl_to_cmd_handler: 2301B064
hci_rd_auth_payl_to_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a2
	c.mv	s2,a1
	jal	ra,000000002301732C
	lhu	a1,s2,+00000000
	c.mv	s1,a0
	c.lui	a0,00001000
	addi	a2,a0,-00000385
	c.li	a3,00000006
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.andi	s1,0000000F
	c.li	a5,0000000F
	bne	s1,a5,000000002301B0B6

l2301B096:
	c.li	a5,0000000C
	sb	a5,a0,+00000000

l2301B09C:
	lhu	a5,s2,+00000000
	sh	a5,a0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B0B6:
	lui	a5,0004201A
	c.srli	s0,00000008
	addi	a5,a5,+00000320
	c.slli	s0,02
	sb	zero,a0,+00000000
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000058
	sh	a5,a0,+00000004
	c.j	000000002301B09C

;; hci_rd_rssi_cmd_handler: 2301B0D4
hci_rd_rssi_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	lhu	a1,a1,+00000000
	c.lui	a0,00001000
	c.mv	s2,a2
	c.li	a3,00000006
	addi	a2,a0,+00000405
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,000000002301B12C

l2301B106:
	c.li	a5,0000000C
	sb	a5,s0,+00000000
	sb	zero,s0,+00000004

l2301B110:
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B12C:
	sb	zero,s0,+00000000
	lhu	a4,s1,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	lb	a5,a5,+00000068
	sb	a5,s0,+00000004
	c.j	000000002301B110

;; hci_rd_tx_pwr_lvl_cmd_handler: 2301B14C
hci_rd_tx_pwr_lvl_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	lhu	a1,a1,+00000000
	c.lui	a0,00001000
	c.mv	s2,a2
	c.li	a3,00000006
	addi	a2,a0,-000003D3
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	bne	a0,a5,000000002301B18A

l2301B17E:
	c.li	a5,0000000C

l2301B180:
	sb	a5,s0,+00000000
	sb	zero,s0,+00000004
	c.j	000000002301B1CC

l2301B18A:
	sb	zero,s0,+00000000
	lbu	a5,s1,+00000002
	c.beqz	a5,000000002301B19E

l2301B194:
	c.li	a4,00000001
	beq	a5,a4,000000002301B1E8

l2301B19A:
	c.li	a5,00000012
	c.j	000000002301B180

l2301B19E:
	lhu	a5,s1,+00000000
	addi	a4,zero,+0000005C
	c.li	a1,00000001
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000A0
	c.add	a5,a4
	lhu	a0,a5,+00000000
	lui	a5,00042019
	lw	a5,a5,+00000638
	andi	a0,a0,+000000FF
	c.jalr	a5

l2301B1C8:
	sb	a0,s0,+00000004

l2301B1CC:
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	sh	a5,s0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B1E8:
	lui	a5,00042019
	addi	a5,a5,+00000624
	c.lw	a5,20(a4)
	lbu	a0,a5,+0000002C
	c.li	a1,00000001
	c.jalr	a4
	c.j	000000002301B1C8

;; hci_le_con_update_cmd_handler: 2301B1FC
hci_le_con_update_cmd_handler proc
	c.addi16sp	FFFFFFD0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s0,a1
	c.mv	s3,a3
	c.swsp	a2,00000084
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,000000002301B346

l2301B220:
	lhu	a0,s0,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	slli	a4,a0,00000002
	c.add	a5,a4
	lw	s2,a5,+00000000
	lw	s5,s2,+00000010
	jal	ra,000000002301428C
	c.li	a5,00000004
	addi	s4,s5,+00000028
	c.lwsp	a2,00000084
	bne	a0,a5,000000002301B264

l2301B24A:
	lhu	a5,s2,+0000005C
	c.andi	a5,00000001
	c.beqz	a5,000000002301B25C

l2301B252:
	lbu	a1,s2,+00000069
	c.li	s1,0000001A
	c.andi	a1,00000002
	c.beqz	a1,000000002301B34E

l2301B25C:
	lbu	a5,s2,+000000A6
	beq	a5,zero,000000002301B388

l2301B264:
	lhu	a0,s0,+00000002
	lhu	a4,s0,+00000004
	bltu	a4,a0,000000002301B38C

l2301B270:
	lhu	t1,s0,+0000000A
	lhu	a7,s0,+0000000C
	bltu	a7,t1,000000002301B38C

l2301B27C:
	c.lui	a5,00001000
	addi	a3,a5,-00000380
	bltu	a3,a4,000000002301B38C

l2301B286:
	c.li	a3,00000005
	bgeu	a3,a0,000000002301B38C

l2301B28C:
	lhu	a3,s0,+00000006
	addi	a1,zero,+000001F3
	bltu	a1,a3,000000002301B38C

l2301B298:
	lhu	a1,s0,+00000008
	addi	a5,a5,-0000038A
	addi	a6,a1,-0000000A
	c.slli	a6,10
	srli	a6,a6,00000010
	bltu	a5,a6,000000002301B38C

l2301B2AE:
	addi	a5,a3,+00000001
	add	a5,a5,a4
	slli	a6,a1,00000002
	bgeu	a5,a6,000000002301B38C

l2301B2BE:
	lhu	a5,s5,+00000078
	c.srli	a5,00000001
	bltu	a5,a0,000000002301B2F8

l2301B2C8:
	bltu	a4,a5,000000002301B2F8

l2301B2CC:
	lw	a5,s2,+00000010
	addi	a4,zero,+000004E2
	lhu	a5,a5,+00000012
	srl	a5,a5,a4
	bltu	a5,t1,000000002301B2F8

l2301B2E0:
	bltu	a7,a5,000000002301B2F8

l2301B2E4:
	lhu	a5,s2,+00000054
	bne	a5,a1,000000002301B2F8

l2301B2EC:
	lhu	a5,s5,+0000005E
	c.li	s1,00000000
	c.addi	a5,FFFFFFFF
	beq	a5,a3,000000002301B342

l2301B2F8:
	addi	a3,zero,+00000022
	c.mv	a1,a2
	addi	a0,zero,+00000109
	jal	ra,000000002300DB74
	sb	zero,a0,+00000000
	lhu	a4,s0,+00000002
	addi	s1,zero,+000000FF
	sh	a4,a0,+00000002
	lhu	a4,s0,+00000004
	sh	a4,a0,+00000004
	lhu	a4,s0,+00000006
	sh	a4,a0,+00000006
	lhu	a4,s0,+00000008
	sh	a4,a0,+00000008
	lhu	a4,s0,+0000000A
	sh	a4,a0,+0000000A
	lhu	a4,s0,+0000000C
	sh	a4,a0,+0000000C
	jal	ra,000000002300DBE2

l2301B342:
	c.li	a1,00000000
	c.j	000000002301B34E

l2301B346:
	c.li	s4,00000000
	addi	s1,zero,+000000FF
	c.li	a1,0000000C

l2301B34E:
	lhu	a2,s0,+00000000
	c.mv	a0,s3
	jal	ra,000000002300F486
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,000000002301B374

l2301B360:
	addi	a5,zero,+000000FF
	beq	s1,a5,000000002301B374

l2301B368:
	lhu	a1,s0,+00000000
	c.mv	a2,s4
	c.mv	a0,s1
	jal	ra,000000002300F2A8

l2301B374:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301B388:
	c.li	s1,0000001A
	c.j	000000002301B342

l2301B38C:
	addi	s1,zero,+000000FF
	c.li	a1,00000012
	c.j	000000002301B34E

;; hci_wr_auth_payl_to_cmd_handler: 2301B394
hci_wr_auth_payl_to_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s2,a1
	c.mv	s3,a2
	jal	ra,000000002301732C
	lhu	a1,s2,+00000000
	c.mv	s0,a0
	c.lui	a0,00001000
	addi	a2,a0,-00000384
	c.li	a3,00000004
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.andi	s0,0000000F
	c.li	a5,0000000F
	c.mv	s1,a0
	bne	s0,a5,000000002301B3D2

l2301B3CA:
	c.li	a5,0000000C

l2301B3CC:
	sb	a5,s1,+00000000
	c.j	000000002301B446

l2301B3D2:
	srli	a5,s3,00000008
	lui	s0,0004201A
	c.slli	a5,02
	addi	s0,s0,+00000320
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a4,s2,+00000002
	c.lw	a5,16(a3)
	c.slli	a4,04
	lhu	a5,a3,+00000078
	lhu	a3,a3,+0000005E
	add	a5,a5,a3
	bltu	a4,a5,000000002301B464

l2301B3FC:
	sb	zero,a0,+00000000
	c.lw	s0,0(a5)
	lhu	a4,s2,+00000002
	c.lw	a5,16(a0)
	sh	a4,a5,+00000058
	addi	a0,a0,+00000028
	jal	ra,000000002301A14E
	c.lw	s0,0(a5)
	c.li	a3,00000003
	lbu	a4,a5,+000000A5
	c.andi	a4,00000003
	bne	a4,a3,000000002301B446

l2301B422:
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.mv	a1,s3
	addi	a0,zero,+00000103
	c.sub	a2,a5
	jal	ra,000000002300DF0E
	c.lw	s0,0(a5)
	c.mv	a1,s3
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002300DF0E

l2301B446:
	lhu	a5,s2,+00000000
	c.mv	a0,s1
	sh	a5,s1,+00000002
	jal	ra,000000002300BD76
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301B464:
	c.li	a5,00000012
	c.j	000000002301B3CC

;; hci_flush_cmd_handler: 2301B468
hci_flush_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	lhu	s0,a1,+00000000
	c.lui	a0,00001000
	addi	a2,a0,-000003F8
	c.mv	a1,s0
	c.li	a3,00000004
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002300F4AC
	lui	a5,0004201A
	slli	a4,s0,00000002
	addi	a5,a5,+00000320
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lw	a5,16(a0)
	addi	a0,a0,+00000028
	jal	ra,0000000023012648
	c.mv	a0,s1
	sh	s0,s1,+00000002
	sb	zero,s1,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_rem_ver_info_cmd_handler: 2301B4C2
hci_rd_rem_ver_info_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s4,a3
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	bne	a4,a5,000000002301B4F4

l2301B4E6:
	lhu	a2,s2,+00000000
	c.li	a1,0000000C

l2301B4EC:
	c.mv	a0,s4
	jal	ra,000000002300F486
	c.j	000000002301B524

l2301B4F4:
	srli	s1,s3,00000008
	lui	a5,0004201A
	addi	a5,a5,+00000320
	slli	s0,s1,00000002
	c.add	s0,a5
	c.lw	s0,0(a5)
	lhu	a5,a5,+0000005C
	c.andi	a5,00000002
	c.beqz	a5,000000002301B538

l2301B510:
	lhu	a2,s2,+00000000
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002300F486
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002300F400

l2301B524:
	c.li	s1,00000000

l2301B526:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301B538:
	andi	a5,a0,+00000005
	c.li	s1,00000002
	c.bnez	a5,000000002301B526

l2301B540:
	ori	a1,a0,+00000001
	andi	a1,a1,+000000FF
	c.mv	a0,s3
	jal	ra,00000000230172BC
	c.lw	s0,0(a5)
	sb	s1,a5,+000000A3
	lhu	a0,s2,+00000000
	jal	ra,0000000023017CA0
	c.lui	a2,00001000
	addi	a2,a2,-00000060
	c.mv	a1,s3
	addi	a0,zero,+00000102
	jal	ra,000000002300DF0E
	lhu	a2,s2,+00000000
	c.li	a1,00000000
	c.j	000000002301B4EC

;; llc_hci_command_handler: 2301B574
llc_hci_command_handler proc
	lui	a4,00023074
	addi	a0,a4,+00000740
	c.li	a5,00000000
	addi	a4,a4,+00000740
	c.li	a6,00000010

l2301B584:
	lhu	a7,a0,+00000000
	bne	a7,a3,000000002301B59C

l2301B58C:
	c.slli	a5,03
	c.add	a5,a4
	lw	t1,a5,+00000004
	beq	t1,zero,000000002301B5A4

l2301B598:
	c.mv	a0,a3
	c.jr	t1

l2301B59C:
	c.addi	a5,00000001
	c.addi	a0,00000008
	bne	a5,a6,000000002301B584

l2301B5A4:
	c.li	a0,00000000
	c.jr	ra

;; llc_hci_acl_data_tx_handler: 2301B5A8
llc_hci_acl_data_tx_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a1
	jal	ra,000000002301732C
	c.andi	a0,0000000F
	c.li	a5,0000000F
	beq	a0,a5,000000002301B5C6

l2301B5C0:
	lhu	a5,s0,+00000004
	c.bnez	a5,000000002301B60A

l2301B5C6:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,8(a5)
	lui	a1,0004201A
	addi	a1,a1,+000001C0
	lhu	a5,a5,+00000004
	lui	a0,0004201A
	addi	a0,a0,+000001C8
	addi	a5,a5,+00000029
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,000000002300F59E

l2301B5FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301B60A:
	c.mv	a0,s0
	jal	ra,0000000023012106
	c.bnez	a0,000000002301B61C

l2301B612:
	lhu	a0,s0,+00000000
	c.li	a1,00000001
	jal	ra,000000002300F59E

l2301B61C:
	lhu	a4,s0,+00000000
	lui	a5,0004201A
	addi	a5,a5,+00000320
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lw	a5,16(a0)
	jal	ra,0000000023010A4E
	c.j	000000002301B5FE

;; hci_vsc_set_tx_pwr: 2301B636
hci_vsc_set_tx_pwr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lb	a0,a1,+00000000
	c.li	a5,00000014
	c.li	a1,00000012
	andi	a4,a0,+000000FF
	bltu	a5,a4,000000002301B65A

l2301B64A:
	lui	a5,00042019
	lw	a5,a5,+00000634
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	a2,000000A4
	c.li	a1,00000000

l2301B65A:
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_wr_rfpath_compensation_cmd_handler: 2301B668
hci_le_wr_rfpath_compensation_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a4,a1,+00000000
	lui	a5,0004200E
	c.mv	a0,a3
	sh	a4,a5,+0000015A
	lhu	a4,a1,+00000002
	lui	a5,0004200E
	c.li	a1,00000000
	sh	a4,a5,+00000158
	jal	ra,00000000230154FC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_wr_le_host_supp_cmd_handler: 2301B694
hci_wr_le_host_supp_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,0004200D
	lbu	a5,a1,+00000000
	addi	a4,a4,+00000340
	lbu	a2,a4,+00000008
	c.slli	a5,01
	c.mv	a0,a3
	c.or	a5,a2
	c.li	a1,00000000
	sb	a5,a4,+00000008
	jal	ra,00000000230154FC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_wr_suggted_dft_data_len_cmd_handler: 2301B6C0
hci_le_wr_suggted_dft_data_len_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lhu	a2,a1,+00000000
	addi	a0,zero,+000000E0
	c.mv	a4,a1
	addi	a5,a2,-0000001B
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a1,00000012
	bltu	a0,a5,000000002301B706

l2301B6DC:
	lhu	a5,a4,+00000002
	addi	a0,zero,+00000700
	addi	a5,a5,-00000148
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a0,a5,000000002301B706

l2301B6F0:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	sh	a2,a5,+00000020
	lhu	a4,a4,+00000002
	c.li	a1,00000000
	sh	a4,a5,+00000022

l2301B706:
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_set_evt_mask_cmd_handler: 2301B714
hci_le_set_evt_mask_cmd_handler proc
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.addi	sp,FFFFFFE0
	lui	a0,0004201A
	c.swsp	ra,0000008C
	c.li	a2,00000008
	addi	a0,a0,+00000390
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_rd_rfpath_compensation_cmd_handler: 2301B740
hci_le_rd_rfpath_compensation_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	addi	a2,a2,+0000004C
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	lui	a4,0004200E
	lhu	a4,a4,+0000015A
	sh	a4,a0,+00000002
	lui	a4,0004200E
	lhu	a4,a4,+00000158
	sb	zero,a0,+00000000
	sh	a4,a0,+00000004
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_trans_pwr_cmd_handler: 2301B780
hci_le_rd_trans_pwr_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000003
	addi	a2,a2,+0000004B
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	zero,a0,+00000001
	lui	a4,00042019
	lbu	a4,a4,+00000650
	sb	zero,a0,+00000000
	sb	a4,a0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_buff_size_cmd_handler: 2301B7B8
hci_rd_buff_size_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	addi	a2,a0,+00000005
	c.li	a3,0000000A
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sh	zero,a0,+00000006
	sh	zero,a0,+00000002
	sb	zero,a0,+00000004
	sh	zero,a0,+00000008
	sb	zero,a0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_supp_feats_cmd_handler: 2301B7EE
hci_rd_local_supp_feats_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.mv	a2,a3
	c.li	a1,00000000
	c.li	a3,00000009
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a1,0004200D
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,+00000340
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_supp_cmds_cmd_handler: 2301B830
hci_rd_local_supp_cmds_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	addi	a3,zero,+00000041
	addi	a2,a0,+00000002
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a1,00023074
	c.mv	s0,a0
	addi	a2,zero,+00000040
	addi	a1,a1,-000000C0
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_local_ver_info_cmd_handler: 2301B878
hci_rd_local_ver_info_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00001000
	addi	a2,s0,+00000001
	c.li	a3,0000000A
	c.li	a1,00000000
	addi	a0,s0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	addi	a4,zero,+00000321
	sh	a4,a0,+00000008
	sh	a4,a0,+00000002
	addi	a3,zero,+000007AF
	addi	s0,s0,-00000700
	c.li	a4,00000009
	sh	s0,a0,+00000000
	sh	a3,a0,+00000006
	sb	a4,a0,+00000004
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_rd_bd_addr_cmd_handler: 2301B8C0
hci_rd_bd_addr_cmd_handler proc
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000007
	addi	a2,a0,+00000009
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a1,0004201A
	c.mv	s0,a0
	c.li	a2,00000006
	addi	a1,a1,+000003B9
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_max_data_len_cmd_handler: 2301B904
hci_le_rd_max_data_len_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,0000000A
	addi	a2,a2,+0000002F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lhu	a3,a5,+00000028
	sh	a3,a0,+00000006
	lhu	a3,a5,+0000002A
	sh	a3,a0,+00000008
	lhu	a3,a5,+00000024
	sh	a3,a0,+00000002
	lhu	a5,a5,+00000026
	sb	zero,a0,+00000000
	sh	a5,a0,+00000004
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_suggted_dft_data_len_cmd_handler: 2301B954
hci_le_rd_suggted_dft_data_len_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	addi	a2,a2,+00000023
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lhu	a3,a5,+00000020
	sh	a3,a0,+00000002
	lhu	a5,a5,+00000022
	sb	zero,a0,+00000000
	sh	a5,a0,+00000004
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_supp_states_cmd_handler: 2301B994
hci_le_rd_supp_states_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000009
	c.addi	a2,0000001C
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a1,00023082
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,+0000070C
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_wl_size_cmd_handler: 2301B9D8
hci_le_rd_wl_size_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.addi	a2,0000000F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	c.li	a4,00000004
	sb	zero,a0,+00000000
	sb	a4,a0,+00000001
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_adv_ch_tx_pw_cmd_handler: 2301BA04
hci_le_rd_adv_ch_tx_pw_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.addi	a2,00000007
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,00042019
	addi	a5,a5,+00000624
	c.mv	s0,a0
	c.lw	a5,20(a4)
	lbu	a0,a5,+0000002C
	c.li	a1,00000001
	c.jalr	a4
	sb	a0,s0,+00000001
	sb	zero,s0,+00000000
	c.mv	a0,s0
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_local_supp_feats_cmd_handler: 2301BA48
hci_le_rd_local_supp_feats_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000009
	c.addi	a2,00000003
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a1,00023082
	c.mv	s0,a0
	c.li	a2,00000008
	addi	a1,a1,+00000704
	c.addi	a0,00000001
	c.jalr	a5
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_rd_buff_size_cmd_handler: 2301BA8C
hci_le_rd_buff_size_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000006
	c.addi	a2,00000002
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	c.li	a4,00000002
	sb	a4,a0,+00000004
	lui	a4,0004201A
	lhu	a4,a4,+0000037C
	sb	zero,a0,+00000000
	sh	a4,a0,+00000002
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_generate_dhkey_cmd_handler: 2301BAC4
hci_le_generate_dhkey_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	a2,a1
	c.mv	s0,a3
	c.li	a5,00000000
	addi	a4,zero,+00000020

l2301BAD4:
	add	a3,a2,a5
	lbu	a3,a3,+00000000
	c.bnez	a3,000000002301BB38

l2301BADE:
	c.addi	a5,00000001
	bne	a5,a4,000000002301BAD4

l2301BAE4:
	c.li	a0,00000012

l2301BAE6:
	addi	a5,a2,+00000020
	addi	a4,a2,+00000040
	c.mv	a3,a5

l2301BAF0:
	lbu	a1,a5,+00000000
	c.bnez	a1,000000002301BAFE

l2301BAF6:
	c.addi	a5,00000001
	bne	a4,a5,000000002301BAF0

l2301BAFC:
	c.li	a0,00000012

l2301BAFE:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+000000D3
	c.bnez	a4,000000002301BB3C

l2301BB0C:
	c.bnez	a0,000000002301BB26

l2301BB0E:
	c.li	a4,00000002
	lui	a1,0004201A
	sb	a4,a5,+000000D3
	addi	a1,a1,+0000040B
	c.li	a5,00000000
	c.li	a4,00000006
	c.li	a0,00000002
	jal	ra,000000002300D098

l2301BB26:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023015522
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301BB38:
	c.li	a0,00000000
	c.j	000000002301BAE6

l2301BB3C:
	c.li	a0,0000000C
	c.j	000000002301BB26

;; hci_host_nb_cmp_pkts_cmd_handler: 2301BB40
hci_host_nb_cmp_pkts_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a2,a1,+00000000
	addi	a5,a1,+00000002
	c.li	a0,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	a6,00000001

l2301BB54:
	bne	a2,a4,000000002301BB74

l2301BB58:
	c.swsp	a3,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023016608
	c.lwsp	s0,00000064
	c.lwsp	a2,000000A4
	c.beqz	a1,000000002301BB6C

l2301BB66:
	c.mv	a0,a3
	jal	ra,00000000230154FC

l2301BB6C:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301BB74:
	lhu	a7,a5,+00000000
	bltu	a6,a7,000000002301BB90

l2301BB7C:
	lhu	a7,a5,+00000006
	c.add	a0,a7
	c.slli	a0,10
	c.srli	a0,00000010

l2301BB86:
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.addi	a5,00000002
	c.j	000000002301BB54

l2301BB90:
	c.li	a1,00000012
	c.j	000000002301BB86

;; hci_host_buf_size_cmd_handler: 2301BB94
hci_host_buf_size_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	a5,a1
	lhu	a0,a5,+00000000
	lhu	a1,a1,+00000004
	c.swsp	a3,00000084
	jal	ra,00000000230165A4
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_evt_mask_page_2_cmd_handler: 2301BBBA
hci_set_evt_mask_page_2_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002300BF1A
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_evt_mask_cmd_handler: 2301BBDA
hci_set_evt_mask_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.li	a1,00000003
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002300BF1A
	c.lwsp	a2,000000A4
	c.mv	a1,a0
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_set_ctrl_to_host_flow_ctrl_cmd_handler: 2301BBFA
hci_set_ctrl_to_host_flow_ctrl_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000000
	c.li	a4,00000003
	c.li	a1,00000012
	bltu	a4,a5,000000002301BC22

l2301BC0A:
	c.li	a4,00000001
	c.li	a0,00000001
	beq	a5,a4,000000002301BC18

l2301BC12:
	c.addi	a5,FFFFFFFD
	sltiu	a0,a5,+00000001

l2301BC18:
	c.swsp	a3,00000084
	jal	ra,00000000230165CA
	c.lwsp	a2,000000A4
	c.mv	a1,a0

l2301BC22:
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_reset_cmd_handler: 2301BC30
hci_reset_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002300BFFC
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.mv	a0,a3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_tx_test_cmd_handler: 2301BC4C
hci_le_tx_test_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,000000002301732C
	c.bnez	a0,000000002301BC80

l2301BC5E:
	c.lui	a5,00002000
	c.addi	a5,0000001E
	c.lwsp	a2,00000064
	bne	s0,a5,000000002301BC6E

l2301BC68:
	c.mv	a0,a1
	jal	ra,0000000023015548

l2301BC6E:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301BC80:
	c.li	a0,0000000C
	c.j	000000002301BC6E

;; hci_le_rx_test_cmd_handler: 2301BC84
hci_le_rx_test_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,000000002301732C
	c.bnez	a0,000000002301BCB8

l2301BC96:
	c.lui	a5,00002000
	c.addi	a5,0000001D
	c.lwsp	a2,00000064
	bne	s0,a5,000000002301BCA6

l2301BCA0:
	c.mv	a0,a1
	jal	ra,0000000023015784

l2301BCA6:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301BCB8:
	c.li	a0,0000000C
	c.j	000000002301BCA6

;; hci_le_rand_cmd_handler: 2301BCBC
hci_le_rand_cmd_handler proc
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.addi	sp,FFFFFFF0
	c.li	a3,00000009
	c.addi	a2,00000018
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	c.mv	s0,a0
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000001
	sb	a5,s0,+00000002
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000003
	sb	a0,s0,+00000004
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000005
	sb	a5,s0,+00000006
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s0,+00000008
	sb	a5,s0,+00000007
	c.mv	a0,s0
	sb	zero,s0,+00000000
	jal	ra,000000002300BD76
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_enc_cmd_handler: 2301BD26
hci_le_enc_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000004
	sh	a5,a1,+00000FF8
	lui	s1,0004201A
	c.li	a5,00000008
	sh	a5,a1,+00000FFC
	addi	a0,s1,+00000358
	c.mv	s0,a1
	c.addi	a1,FFFFFFF4
	jal	ra,000000002300C1E6
	addi	s1,s1,+00000358
	lbu	a5,s1,+00000058
	c.bnez	a5,000000002301BD5A

l2301BD54:
	c.mv	a0,s0
	jal	ra,0000000023016404

l2301BD5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_wl_mngt_cmd_handler: 2301BD66
hci_le_wl_mngt_cmd_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.li	a0,00000000
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s1,a1
	c.mv	s3,a3
	jal	ra,000000002301732C
	andi	a4,a0,+000000F0
	c.li	a5,00000010
	bne	a4,a5,000000002301BD98

l2301BD88:
	lui	a5,0004201A
	lw	a5,a5,+0000036C
	c.li	s0,0000000C
	lbu	a5,a5,+0000001B
	c.bnez	a5,000000002301BDE0

l2301BD98:
	c.andi	a0,0000000F
	c.addi	a0,FFFFFFFF
	c.li	a5,00000001
	bltu	a5,a0,000000002301BDB2

l2301BDA2:
	lui	a5,0004201A
	lw	a5,a5,+00000368
	c.li	s0,0000000C
	lbu	a5,a5,+00000008
	c.bnez	a5,000000002301BDE0

l2301BDB2:
	c.lui	a5,00002000
	addi	a4,a5,+00000011
	beq	s2,a4,000000002301BDF8

l2301BDBC:
	addi	a4,a5,+00000012
	beq	s2,a4,000000002301BE08

l2301BDC4:
	c.addi	a5,00000010
	c.li	s0,00000000
	bne	s2,a5,000000002301BDE0

l2301BDCC:
	jal	ra,0000000023015F1C
	c.li	a4,00000000
	c.li	a3,00000001
	addi	a2,sp,+0000000E
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023014A7C

l2301BDE0:
	c.mv	a0,s3
	c.mv	a1,s0
	jal	ra,00000000230154FC
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2301BDF8:
	lbu	a1,s1,+00000000
	addi	a0,s1,+00000001
	jal	ra,00000000230161DA

l2301BE04:
	c.mv	s0,a0
	c.j	000000002301BDE0

l2301BE08:
	lbu	a1,s1,+00000000
	addi	a0,s1,+00000001
	jal	ra,000000002301624A
	c.j	000000002301BE04

;; hci_le_set_host_ch_class_cmd_handler: 2301BE16
hci_le_set_host_ch_class_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	addi	s0,s0,+00000358
	lbu	a5,s0,+00000037
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a1
	c.mv	s3,a3
	c.li	a1,0000000C
	c.beqz	a5,000000002301BE6E

l2301BE36:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002301496E
	c.mv	s1,a0
	c.li	a1,00000000
	addi	a2,zero,+00000064
	c.li	a0,00000000
	jal	ra,000000002300DF0E
	c.addi	s1,FFFFFFFE
	sb	zero,s0,+00000037
	andi	s1,s1,+000000FF
	addi	a5,zero,+00000023
	c.li	a1,00000012
	bltu	a5,s1,000000002301BE6E

l2301BE60:
	c.mv	a1,s2
	c.li	a2,00000005
	addi	a0,s0,+00000032
	jal	ra,000000002306CF80
	c.li	a1,00000000

l2301BE6E:
	c.mv	a0,s3
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_create_con_cmd_handler: 2301BE84
hci_le_create_con_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a3
	jal	ra,000000002301732C
	c.li	a4,00000010
	c.lwsp	a2,00000064
	beq	a0,a4,000000002301BED0

l2301BE9E:
	c.mv	a5,a0
	bltu	a4,a0,000000002301BEBA

l2301BEA4:
	c.beqz	a0,000000002301BED0

l2301BEA6:
	c.li	a4,00000003
	c.li	a0,00000002

l2301BEAA:
	c.li	a1,0000000C
	bne	a5,a4,000000002301BEF8

l2301BEB0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301BEBA:
	addi	a4,zero,+00000020
	beq	a0,a4,000000002301BED0

l2301BEC2:
	addi	a4,zero,+00000023
	c.li	a0,00000002
	beq	a5,a4,000000002301BEB0

l2301BECC:
	c.li	a4,00000013
	c.j	000000002301BEAA

l2301BED0:
	c.mv	a0,a1
	jal	ra,00000000230162AA
	c.mv	a1,a0
	c.bnez	a0,000000002301BEF8

l2301BEDA:
	lui	s0,0004201A
	addi	s0,s0,+00000358
	c.swsp	a0,00000084
	sh	s1,s0,+0000004E
	jal	ra,000000002301732C
	c.lwsp	a2,00000064
	c.li	a5,00000001
	sb	a0,s0,+00000050
	sb	a5,s0,+0000004C

l2301BEF8:
	c.mv	a0,s1
	jal	ra,0000000023015522
	c.li	a0,00000000
	c.j	000000002301BEB0

;; hci_le_set_scan_en_cmd_handler: 2301BF02
hci_le_set_scan_en_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a1
	c.mv	s1,a3
	jal	ra,000000002301732C
	c.li	a4,00000012
	beq	a0,a4,000000002301BFD0

l2301BF1C:
	c.mv	a5,a0
	bltu	a4,a0,000000002301BF9C

l2301BF22:
	c.li	a4,00000002
	beq	a0,a4,000000002301BFD0

l2301BF28:
	bltu	a4,a0,000000002301BF90

l2301BF2C:
	c.li	a4,00000001

l2301BF2E:
	beq	a5,a4,000000002301BFCA

l2301BF32:
	lbu	a3,s0,+00000000
	c.li	a4,00000001
	c.li	a1,0000000C
	bne	a3,a4,000000002301BF6E

l2301BF3E:
	c.li	a0,00000000
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	a5,a5,+00000358
	sb	a0,a5,+00000050
	c.li	s2,00000001
	c.mv	a0,s0
	sh	s1,a5,+0000004E
	sb	s2,a5,+0000004C
	jal	ra,0000000023015E22
	c.mv	a1,a0
	c.bnez	a0,000000002301BF6E

l2301BF64:
	lbu	a4,s0,+00000000
	c.li	a0,00000000
	bne	a4,s2,000000002301BFB0

l2301BF6E:
	c.mv	a0,s1
	jal	ra,00000000230154FC
	lui	a5,0004201A
	addi	a5,a5,+00000358
	lbu	a4,a5,+00000050
	c.li	a0,00000000
	c.andi	a4,FFFFFFF0
	sb	a4,a5,+00000050
	c.li	a4,00000001
	sb	a4,a5,+0000004C
	c.j	000000002301BFB0

l2301BF90:
	c.li	a4,00000003
	c.li	a0,00000002
	beq	a5,a4,000000002301BFB0

l2301BF98:
	c.li	a4,00000011
	c.j	000000002301BF2E

l2301BF9C:
	addi	a4,zero,+00000021
	beq	a0,a4,000000002301BFCA

l2301BFA4:
	bltu	a4,a0,000000002301BFBC

l2301BFA8:
	c.li	a4,00000013

l2301BFAA:
	c.li	a0,00000002
	bne	a5,a4,000000002301BF32

l2301BFB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301BFBC:
	addi	a4,zero,+00000022
	beq	a0,a4,000000002301BFD0

l2301BFC4:
	addi	a4,zero,+00000023
	c.j	000000002301BFAA

l2301BFCA:
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002301BF3E

l2301BFD0:
	c.li	a1,0000000C
	c.j	000000002301BF6E

;; hci_le_set_scan_param_cmd_handler: 2301BFD4
hci_le_set_scan_param_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.mv	s0,a3
	jal	ra,000000002301732C
	c.li	a4,00000011
	c.li	a5,0000000C
	beq	a0,a4,000000002301C004

l2301BFEC:
	addi	a4,zero,+00000021
	beq	a0,a4,000000002301C004

l2301BFF4:
	c.li	a4,00000001
	beq	a0,a4,000000002301C004

l2301BFFA:
	c.lwsp	a2,00000064
	c.mv	a0,a1
	jal	ra,0000000023015D5C
	c.mv	a5,a0

l2301C004:
	c.mv	a0,s0
	c.mv	a1,a5
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_set_scan_rsp_data_cmd_handler: 2301C016
hci_le_set_scan_rsp_data_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a1
	c.mv	s2,a3
	jal	ra,000000002301732C
	c.addi	a0,FFFFFFF0
	c.li	a5,00000003
	bltu	a5,a0,000000002301C086

l2301C034:
	lbu	a4,s0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,000000002301C092

l2301C03E:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,0004201A
	addi	a5,s1,+00000358
	c.lw	a5,20(a5)
	addi	s1,s1,+00000358
	c.lw	a5,4(a0)
	c.beqz	a0,000000002301C062

l2301C058:
	jal	ra,000000002300DCB6
	c.lw	s1,20(a5)
	sw	zero,a5,+00000004

l2301C062:
	csrrw	zero,mstatus,zero
	c.lw	s1,20(a5)
	c.addi	s0,FFFFFFF4
	c.li	a1,00000000
	c.sw	a5,4(s0)
	c.li	s0,00000001

l2301C070:
	c.mv	a0,s2
	jal	ra,00000000230154FC
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301C086:
	c.mv	a0,s0
	jal	ra,0000000023015C8A
	c.mv	a1,a0

l2301C08E:
	c.li	s0,00000000
	c.j	000000002301C070

l2301C092:
	c.li	a1,00000012
	c.j	000000002301C08E

;; hci_le_set_adv_en_cmd_handler: 2301C096
hci_le_set_adv_en_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.mv	s1,a3
	jal	ra,000000002301732C
	c.li	a5,00000010
	bltu	a0,a5,000000002301C108

l2301C0AE:
	c.li	a5,00000013
	bgeu	a5,a0,000000002301C0CC

l2301C0B4:
	c.addi	a0,FFFFFFE0
	andi	a0,a0,+000000FF
	c.li	a5,00000003
	bltu	a5,a0,000000002301C108

l2301C0C0:
	c.li	a0,00000002

l2301C0C2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C0CC:
	lbu	a5,s0,+00000000
	c.li	a0,0000000C
	c.bnez	a5,000000002301C114

l2301C0D4:
	c.li	a0,00000000
	jal	ra,000000002301732C
	lui	a5,0004201A
	addi	a5,a5,+00000358
	sb	a0,a5,+0000006E
	c.mv	a0,s0
	sh	s1,a5,+0000006C
	jal	ra,0000000023015A32
	c.bnez	a0,000000002301C114

l2301C0F2:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	beq	a4,a5,000000002301C114

l2301C0FC:
	lui	a5,0004201A
	sb	zero,a5,+000003A4
	c.li	a0,00000000
	c.j	000000002301C0C2

l2301C108:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	c.li	a0,0000000C
	beq	a4,a5,000000002301C0D4

l2301C114:
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,00000000230154FC
	c.j	000000002301C0FC

;; hci_le_set_adv_data_cmd_handler: 2301C11E
hci_le_set_adv_data_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a1
	c.mv	s2,a3
	jal	ra,000000002301732C
	c.addi	a0,FFFFFFF0
	c.li	a5,00000003
	bltu	a5,a0,000000002301C18E

l2301C13C:
	lbu	a4,s0,+00000000
	c.li	a5,0000001F
	bltu	a5,a4,000000002301C19A

l2301C146:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s1,0004201A
	addi	a5,s1,+00000358
	c.lw	a5,20(a5)
	addi	s1,s1,+00000358
	c.lw	a5,0(a0)
	c.beqz	a0,000000002301C16A

l2301C160:
	jal	ra,000000002300DCB6
	c.lw	s1,20(a5)
	sw	zero,a5,+00000000

l2301C16A:
	csrrw	zero,mstatus,zero
	c.lw	s1,20(a5)
	c.addi	s0,FFFFFFF4
	c.li	a1,00000000
	c.sw	a5,0(s0)
	c.li	s0,00000001

l2301C178:
	c.mv	a0,s2
	jal	ra,00000000230154FC
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301C18E:
	c.mv	a0,s0
	jal	ra,0000000023015BB8
	c.mv	a1,a0

l2301C196:
	c.li	s0,00000000
	c.j	000000002301C178

l2301C19A:
	c.li	a1,00000012
	c.j	000000002301C196

;; hci_le_set_adv_param_cmd_handler: 2301C19E
hci_le_set_adv_param_cmd_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a3
	jal	ra,000000002301732C
	addi	a4,a0,-00000010
	c.li	a5,00000003
	c.lwsp	a2,00000064
	c.li	a0,0000000C
	bgeu	a5,a4,000000002301C1C2

l2301C1BC:
	c.mv	a0,a1
	jal	ra,000000002301584C

l2301C1C2:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,00000000230154FC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; hci_le_set_rand_add_cmd_handler: 2301C1D4
hci_le_set_rand_add_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s2,a3
	jal	ra,000000002301732C
	c.li	s0,0000000C
	c.bnez	a0,000000002301C214

l2301C1EC:
	lui	a1,00023082
	c.mv	s0,a0
	addi	a1,a1,+000006E4
	c.mv	a0,s1
	jal	ra,000000002300C476
	c.bnez	a0,000000002301C22A

l2301C1FE:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	a0,0004201A
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,a0,+000003B3
	c.jalr	a5

l2301C214:
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,00000000230154FC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301C22A:
	c.li	s0,00000012
	c.j	000000002301C214

;; hci_le_rd_local_p256_public_key_cmd_handler: 2301C22E
hci_le_rd_local_p256_public_key_cmd_handler proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201A
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	a4,a5,+00000358
	lbu	s1,a4,+000000D3
	addi	s0,a5,+00000358
	c.beqz	s1,000000002301C24A

l2301C248:
	c.li	s1,0000000C

l2301C24A:
	c.mv	a1,s1
	c.mv	a0,a3
	jal	ra,0000000023015522
	c.bnez	s1,000000002301C274

l2301C254:
	lui	s1,0004201A
	c.li	a1,00000000
	addi	a0,s1,+0000040B
	jal	ra,000000002300D54C
	c.li	a5,00000001
	c.li	a2,00000000
	c.li	a1,00000006
	addi	a0,s1,+0000040B
	sb	a5,s0,+000000D3
	jal	ra,000000002300D530

l2301C274:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hci_le_test_end_cmd_handler: 2301C280
hci_le_test_end_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002301732C
	addi	a5,zero,+00000024
	bne	a0,a5,000000002301C2B8

l2301C292:
	lui	a5,0004201A
	addi	a5,a5,+00000358
	c.lw	a5,72(a0)
	c.li	a4,00000001
	sb	a4,a5,+00000059
	jal	ra,000000002301488E
	addi	a1,zero,+00000023
	c.li	a0,00000000
	jal	ra,00000000230172BC

l2301C2B0:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301C2B8:
	c.lui	a2,00002000
	c.lui	a0,00001000
	c.li	a3,00000004
	c.addi	a2,0000001F
	c.li	a1,00000000
	addi	a0,a0,-000007FF
	jal	ra,000000002300DB74
	c.li	a4,0000000C
	sh	zero,a0,+00000002
	sb	a4,a0,+00000000
	jal	ra,000000002300BD76
	c.j	000000002301C2B0

;; hci_le_create_con_cancel_cmd_handler: 2301C2DA
hci_le_create_con_cancel_cmd_handler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a3
	jal	ra,000000002301732C
	c.li	a5,00000012
	beq	a0,a5,000000002301C2FE

l2301C2F0:
	addi	a5,zero,+00000022
	beq	a0,a5,000000002301C2FE

l2301C2F8:
	c.li	a5,00000002
	bne	a0,a5,000000002301C344

l2301C2FE:
	lui	s0,0004201A
	addi	s0,s0,+00000358
	c.lw	s0,84(a0)
	jal	ra,00000000230135DA
	lbu	a5,s0,+00000050
	c.li	a0,00000000
	sh	s1,s0,+0000004E
	c.andi	a5,FFFFFFF0
	ori	a5,a5,+00000002
	sb	a5,s0,+00000050
	c.li	a5,00000001
	sb	a5,s0,+0000004C
	jal	ra,000000002301732C
	andi	a1,a0,+000000F0
	ori	a1,a1,+00000003
	c.li	a0,00000000
	jal	ra,00000000230172BC

l2301C338:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2301C344:
	c.li	a1,0000000C
	c.mv	a0,s1
	jal	ra,00000000230154FC
	c.j	000000002301C338

;; hci_command_handler: 2301C34E
hci_command_handler proc
	lui	a4,00023074
	addi	a2,a4,+000007C0
	c.li	a5,00000000
	addi	a4,a4,+000007C0
	addi	a0,zero,+0000002D

l2301C360:
	lhu	a6,a2,+00000000
	bne	a6,a3,000000002301C37A

l2301C368:
	c.slli	a5,03
	c.add	a5,a4
	lw	t1,a5,+00000004
	beq	t1,zero,000000002301C382

l2301C374:
	c.mv	a2,a3
	c.mv	a0,a3
	c.jr	t1

l2301C37A:
	c.addi	a5,00000001
	c.addi	a2,00000008
	bne	a5,a0,000000002301C360

l2301C382:
	c.li	a0,00000000
	c.jr	ra

;; hci_driver_send: 2301C386
hci_driver_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lhu	a5,a0,+0000000C
	c.bnez	a5,000000002301C3AE

l2301C394:
	lui	a0,00023075
	addi	a0,a0,-000006B8
	jal	ra,0000000023003AC6
	c.li	s0,FFFFFFEA

l2301C3A2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301C3AE:
	c.mv	s1,a0
	jal	ra,00000000230266E8
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002302574E
	c.j	000000002301C3A2

;; hci_driver_open: 2301C3BE
hci_driver_open proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	c.li	a1,00000014
	addi	a0,a0,-000002E8
	c.swsp	ra,00000084
	jal	ra,0000000023025092
	lui	a3,0002301C
	c.lui	a2,00001000
	lui	a1,00023075
	lui	a0,0004201A
	c.li	a4,0000001C
	addi	a3,a3,+000003FC
	addi	a2,a2,-00000800
	addi	a1,a1,-000006C4
	addi	a0,a0,+00000454
	jal	ra,000000002302523A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; recv_thread: 2301C3FC
recv_thread proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200E

l2301C406:
	c.li	a1,FFFFFFFF
	addi	a0,s0,-000002E8
	jal	ra,00000000230256E4
	c.beqz	a0,000000002301C416

l2301C412:
	jal	ra,000000002301E468

l2301C416:
	jal	ra,0000000023025290
	c.j	000000002301C406

;; hci_driver_enque_recvq: 2301C41C
hci_driver_enque_recvq proc
	c.mv	a1,a0
	lui	a0,0004200E
	addi	a0,a0,-000002E8
	jal	zero,0000000023025734

;; hci_driver_init: 2301C42A
;;   Called from:
;;     230017DE (in blsync_ble_start)
hci_driver_init proc
	lui	a0,00023075
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000006D8
	c.swsp	ra,00000084
	jal	ra,000000002301E5F4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; le_dhkey_complete: 2301C442
le_dhkey_complete proc
	lui	a5,0004200E
	lw	a4,a5,+0000015C
	c.beqz	a4,000000002301C472

l2301C44C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,a5,+0000015C
	c.lw	a0,8(a5)
	c.li	a0,00000000
	lbu	a3,a5,+00000000
	c.bnez	a3,000000002301C464

l2301C460:
	addi	a0,a5,+00000001

l2301C464:
	c.jalr	a4
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301C472:
	c.jr	ra

;; hci_data_buf_overflow: 2301C474
hci_data_buf_overflow proc
	c.lw	a0,8(a5)
	lui	a0,00023075
	addi	a0,a0,-00000244
	lbu	a1,a5,+00000000
	jal	zero,0000000023003AC6

;; atomic_test_bit: 2301C486
;;   Called from:
;;     2301C54A (in slave_update_conn_param)
;;     2301CE96 (in set_le_scan_enable)
;;     2301D10E (in hci_disconn_complete)
;;     2301D118 (in hci_disconn_complete)
;;     2301D4A2 (in bt_id_add)
;;     2301D4B4 (in bt_id_add)
;;     2301D63E (in bt_id_del)
;;     2301D650 (in bt_id_del)
;;     2301D992 (in start_le_scan)
;;     2301D9BC (in start_le_scan)
;;     2301DA50 (in bt_le_scan_update)
;;     2301DA66 (in bt_le_scan_update)
;;     2301DBCC (in le_adv_report)
;;     2301DBEC (in le_adv_report)
;;     2301E16C (in enh_conn_complete)
;;     2301E18C (in enh_conn_complete)
;;     2301E726 (in bt_disable)
;;     2301E730 (in bt_disable)
;;     2301E796 (in bt_set_name)
;;     2301E7C4 (in bt_set_name)
;;     2301E994 (in bt_id_create)
;;     2301EAA8 (in init_work)
;;     2301EE5A (in bt_le_adv_start_internal)
;;     2301EF10 (in bt_le_adv_start_internal)
;;     2301F16A (in bt_le_adv_stop)
;;     2301F18C (in bt_le_adv_stop)
;;     2301F196 (in bt_le_adv_stop)
;;     2301F1C2 (in bt_le_scan_start)
;;     2301F238 (in bt_le_scan_start)
;;     2301F49A (in bt_pub_key_get)
;;     2301F4EC (in bt_dh_key_gen)
;;     2301F4F6 (in bt_dh_key_gen)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230254AC
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; bt_addr_le_copy: 2301C49E
;;   Called from:
;;     2301CFC2 (in hci_id_add)
;;     2301D570 (in bt_id_add)
;;     2301D6EE (in bt_id_del)
;;     2301D81A (in id_create.isra.25)
;;     2301D83C (in id_create.isra.25)
;;     2301DB6E (in le_adv_report)
;;     2301DBFC (in le_adv_report)
;;     2301DC7C (in le_adv_report)
;;     2301DCF8 (in le_adv_report)
;;     2301E078 (in enh_conn_complete)
;;     2301E0F4 (in enh_conn_complete)
;;     2301E104 (in enh_conn_complete)
;;     2301E150 (in enh_conn_complete)
;;     2301E164 (in enh_conn_complete)
;;     2301E1A6 (in enh_conn_complete)
;;     2301E1BA (in enh_conn_complete)
;;     2301E2AA (in le_legacy_conn_complete)
;;     2301E2F2 (in le_legacy_conn_complete)
;;     2301EFE2 (in bt_le_adv_start_internal)
;;     2301F118 (in bt_get_local_public_address)
;;     2301F130 (in bt_get_local_ramdon_address)
bt_addr_le_copy proc
	c.li	a2,00000007
	jal	zero,000000002306CF80

;; le_pkey_complete: 2301C4A4
le_pkey_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,0004200D
	lw	s2,a0,+00000008
	addi	s0,s0,+000003C4
	addi	a1,zero,-00000021
	c.mv	a0,s0
	jal	ra,0000000023025522
	lbu	a5,s2,+00000000
	c.bnez	a5,000000002301C4E8

l2301C4CC:
	lui	a0,00042012
	addi	a1,s2,+00000001
	addi	a2,zero,+00000040
	addi	a0,a0,-00000784
	jal	ra,000000002306CF80
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,00000000230254FA

l2301C4E8:
	lui	a5,0004200E
	lw	s1,a5,+00000164
	lui	s3,00042012
	addi	s0,a5,+00000164
	addi	s3,s3,-00000784

l2301C4FC:
	c.bnez	s1,000000002301C510

l2301C4FE:
	sw	zero,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301C510:
	lbu	a4,s2,+00000000
	c.lw	s1,0(a5)
	c.mv	a0,s3
	c.beqz	a4,000000002301C51C

l2301C51A:
	c.li	a0,00000000

l2301C51C:
	c.jalr	a5
	c.lw	s1,4(s1)
	c.j	000000002301C4FC

;; atomic_set_bit_to: 2301C522
;;   Called from:
;;     2301CB44 (in hci_cmd_done)
;;     2301DA0C (in start_le_scan)
;;     2301F058 (in bt_le_adv_start_internal)
;;     2301F068 (in bt_le_adv_start_internal)
;;     2301F076 (in bt_le_adv_start_internal)
;;     2301F270 (in bt_le_scan_start)
;;     2301F280 (in bt_le_scan_start)
atomic_set_bit_to proc
	c.mv	a5,a1
	c.li	a1,00000001
	sll	a1,a1,a5
	c.srli	a5,00000005
	c.slli	a5,02
	c.add	a0,a5
	c.beqz	a2,000000002301C536

l2301C532:
	jal	zero,00000000230254FA

l2301C536:
	xori	a1,a1,-00000001
	jal	zero,0000000023025522

;; slave_update_conn_param: 2301C53E
;;   Called from:
;;     2301C5C8 (in le_remote_feat_complete)
;;     2301E21C (in enh_conn_complete)
slave_update_conn_param proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000008
	c.mv	s0,a0
	c.addi	a0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002301C486
	c.bnez	a0,000000002301C564

l2301C550:
	addi	a0,s0,+0000004C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.addi	sp,00000010
	jal	zero,0000000023025FC2

l2301C564:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; le_remote_feat_complete: 2301C56C
le_remote_feat_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000008
	lbu	s0,s2,+00000002
	lbu	a1,s2,+00000001
	c.slli	s0,08
	c.or	s0,a1
	c.mv	a0,s0
	jal	ra,0000000023027294
	c.bnez	a0,000000002301C5A6

l2301C58E:
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023075
	addi	a0,a0,-000000C0
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2301C5A6:
	lbu	a5,s2,+00000000
	c.mv	s1,a0
	c.bnez	a5,000000002301C5BC

l2301C5AE:
	c.li	a2,00000008
	addi	a1,s2,+00000003
	addi	a0,a0,+00000094
	jal	ra,000000002306CF80

l2301C5BC:
	lbu	a4,s1,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002301C5CC

l2301C5C6:
	c.mv	a0,s1
	jal	ra,000000002301C53E

l2301C5CC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302753A

;; le_conn_update_complete: 2301C5DC
le_conn_update_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023027294
	c.lwsp	a2,00000064
	c.bnez	a0,000000002301C614

l2301C5FE:
	lui	a0,00023075
	addi	a0,a0,-000000C0
	jal	ra,0000000023003AC6

l2301C60A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2301C614:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.bnez	a5,000000002301C658

l2301C61C:
	lbu	a5,s1,+00000004
	lbu	a4,s1,+00000003
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+00000086
	lbu	a5,s1,+00000006
	lbu	a4,s1,+00000005
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000008C
	lbu	a5,s1,+00000008
	lbu	a4,s1,+00000007
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000008E
	jal	ra,0000000023026A68

l2301C650:
	c.mv	a0,s0
	jal	ra,000000002302753A
	c.j	000000002301C60A

l2301C658:
	c.li	a4,0000001A
	bne	a5,a4,000000002301C650

l2301C65E:
	lbu	a4,a0,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002301C650

l2301C668:
	addi	a1,zero,+00000400
	c.addi	a0,00000004
	jal	ra,00000000230254FA
	andi	a0,a0,+00000400
	c.bnez	a0,000000002301C650

l2301C678:
	lw	a5,s0,+00000088
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.swsp	a5,0000000C
	lw	a5,s0,+00000090
	c.swsp	a5,0000008C
	jal	ra,000000002301FFE0
	c.j	000000002301C650

;; hci_num_completed_packets: 2301C68E
hci_num_completed_packets proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s8,00000004
	lw	s4,a0,+00000008
	c.li	s3,00000000
	lui	s5,0004201A
	lui	s6,00023075
	lui	s7,00023075

l2301C6B6:
	lbu	a5,s4,+00000000
	blt	s3,a5,000000002301C6D6

l2301C6BE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l2301C6D6:
	slli	a5,s3,00000002
	c.add	a5,s4
	lbu	s1,a5,+00000002
	lbu	a4,a5,+00000001
	lbu	s2,a5,+00000004
	c.slli	s1,08
	c.or	s1,a4
	lbu	a4,a5,+00000003
	c.slli	s2,08
	or	s2,s2,a4
	jal	ra,0000000023025298
	c.mv	s8,a0
	c.mv	a0,s1
	jal	ra,0000000023027294
	c.mv	s0,a0
	c.mv	a0,s8
	c.bnez	s0,000000002301C71A

l2301C708:
	jal	ra,00000000230252A8
	c.mv	a1,s1
	addi	a0,s7,-000001F0
	jal	ra,0000000023003AC6

l2301C716:
	c.addi	s3,00000001
	c.j	000000002301C6B6

l2301C71A:
	jal	ra,00000000230252A8
	addi	s8,s0,+00000028

l2301C722:
	beq	s2,zero,000000002301C76C

l2301C726:
	jal	ra,0000000023025298
	c.lw	s0,28(a5)
	c.mv	a4,a0
	c.beqz	a5,000000002301C74C

l2301C730:
	c.addi	a5,FFFFFFFF
	c.sw	s0,28(a5)
	jal	ra,00000000230252A8
	c.mv	a0,s0
	jal	ra,0000000023026A5E

l2301C73E:
	c.addi	s2,FFFFFFFF
	c.slli	s2,10
	jal	ra,00000000230251D2
	srli	s2,s2,00000010
	c.j	000000002301C722

l2301C74C:
	c.lw	s0,20(s1)
	c.beqz	s1,000000002301C75C

l2301C750:
	c.lw	s1,0(a5)
	c.lw	s0,24(a3)
	c.sw	s0,20(a5)
	bne	s1,a3,000000002301C75C

l2301C75A:
	c.sw	s0,24(a5)

l2301C75C:
	c.mv	a0,a4
	jal	ra,00000000230252A8
	c.bnez	s1,000000002301C774

l2301C764:
	addi	a0,s6,-000001D0
	jal	ra,0000000023003AC6

l2301C76C:
	c.mv	a0,s0
	jal	ra,000000002302753A
	c.j	000000002301C716

l2301C774:
	jal	ra,0000000023025298
	c.lw	s1,12(a5)
	c.sw	s0,28(a5)
	sw	zero,s1,+0000000C
	sw	zero,s1,+00000000
	c.lw	s0,36(a5)
	c.bnez	a5,000000002301C7A6

l2301C788:
	c.sw	s0,36(s1)
	c.sw	s0,32(s1)

l2301C78C:
	jal	ra,00000000230252A8
	c.mv	a0,s8
	jal	ra,0000000023025E96
	c.mv	a0,s0
	jal	ra,0000000023026A5E
	jal	ra,00000000230251D2
	addi	a0,s5,+00000464
	c.j	000000002301C73E

l2301C7A6:
	c.sw	a5,0(s1)
	c.sw	s0,36(s1)
	c.j	000000002301C78C

;; update_sec_level: 2301C7AC
;;   Called from:
;;     2301C8A4 (in hci_encrypt_key_refresh_complete)
;;     2301C956 (in hci_encrypt_change)
update_sec_level proc
	lbu	a5,a0,+0000000B
	c.bnez	a5,000000002301C7BA

l2301C7B2:
	c.li	a5,00000001
	sb	a5,a0,+00000009
	c.jr	ra

l2301C7BA:
	lw	a4,a0,+0000009C
	c.beqz	a4,000000002301C810

l2301C7C0:
	lbu	a5,a4,+00000009
	andi	a3,a5,+00000001
	c.beqz	a3,000000002301C810

l2301C7CA:
	c.andi	a5,00000010
	c.beqz	a5,000000002301C80C

l2301C7CE:
	lbu	a4,a4,+00000008
	c.li	a5,00000010
	bne	a4,a5,000000002301C80C

l2301C7D8:
	c.li	a5,00000004

l2301C7DA:
	sb	a5,a0,+00000009
	lbu	a4,a0,+0000000A
	lbu	a5,a0,+00000009
	bgeu	a5,a4,000000002301C814

l2301C7EA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00023075
	addi	a0,a0,+00000014
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000005
	c.addi	sp,00000010
	jal	zero,000000002302761C

l2301C80C:
	c.li	a5,00000003
	c.j	000000002301C7DA

l2301C810:
	c.li	a5,00000002
	c.j	000000002301C7DA

l2301C814:
	c.jr	ra

;; hci_encrypt_key_refresh_complete: 2301C816
hci_encrypt_key_refresh_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023027294
	c.lwsp	a2,00000064
	c.bnez	a0,000000002301C84C

l2301C838:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,00023075
	addi	a0,a0,-00000218
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2301C84C:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.beqz	a5,000000002301C894

l2301C854:
	lbu	a5,a0,+00000009
	sb	a5,a0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,000000002301FAB4
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000029
	c.li	a1,00000008
	bltu	a5,a4,000000002301C880

l2301C872:
	lui	a5,00023075
	addi	a5,a5,-00000698
	c.add	a5,a4
	lbu	a1,a5,+00000000

l2301C880:
	c.mv	a0,s0
	jal	ra,0000000023026C4C
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302753A

l2301C894:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002301C8A8

l2301C89E:
	jal	ra,0000000023023744
	c.mv	a0,s0
	jal	ra,000000002301C7AC

l2301C8A8:
	lbu	a5,s0,+00000009
	c.mv	a0,s0
	sb	a5,s0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,000000002301FAB4
	c.li	a1,00000000
	c.j	000000002301C880

;; hci_encrypt_change: 2301C8BE
hci_encrypt_change proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023027294
	c.lwsp	a2,00000064
	c.bnez	a0,000000002301C8F4

l2301C8E0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,00023075
	addi	a0,a0,-00000218
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2301C8F4:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.beqz	a5,000000002301C93C

l2301C8FC:
	lbu	a5,a0,+00000009
	sb	a5,a0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,000000002301FAB4
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000029
	c.li	a1,00000008
	bltu	a5,a4,000000002301C928

l2301C91A:
	lui	a5,00023075
	addi	a5,a5,-00000698
	c.add	a5,a4
	lbu	a1,a5,+00000000

l2301C928:
	c.mv	a0,s0
	jal	ra,0000000023026C4C
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302753A

l2301C93C:
	lbu	a5,s1,+00000003
	lbu	a3,a0,+00000002
	c.li	a4,00000001
	sb	a5,a0,+0000000B
	bne	a3,a4,000000002301C95A

l2301C94E:
	c.beqz	a5,000000002301C954

l2301C950:
	jal	ra,0000000023023744

l2301C954:
	c.mv	a0,s0
	jal	ra,000000002301C7AC

l2301C95A:
	lbu	a5,s0,+00000009
	c.mv	a0,s0
	sb	a5,s0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,000000002301FAB4
	c.li	a1,00000000
	c.j	000000002301C928

;; find_pending_connect: 2301C970
;;   Called from:
;;     2301E00A (in enh_conn_complete)
;;     2301E0A4 (in enh_conn_complete)
find_pending_connect proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302749E
	c.bnez	a0,000000002301C98E

l2301C980:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000002
	c.addi	sp,00000010
	jal	zero,000000002302749E

l2301C98E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hci_vendor_event: 2301C996
hci_vendor_event proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,+00000160
	c.lw	s1,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a5,000000002301C9D8

l2301C9B0:
	addi	s3,a0,+00000008
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,000000002302595E
	c.lw	s1,0(a5)
	c.mv	s2,a0
	c.mv	a0,s3
	lhu	s4,s0,+0000000C
	c.jalr	a5
	c.lw	s0,16(a0)
	c.slli	s2,10
	srli	s2,s2,00000010
	c.add	a0,s2
	c.sw	s0,8(a0)
	sh	s4,s0,+0000000C

l2301C9D8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; handle_event: 2301C9E8
;;   Called from:
;;     2301CA7C (in hci_le_meta_event)
;;     2301E566 (in bt_recv)
;;     2301E5E0 (in bt_recv_prio)
handle_event proc
	c.addi	sp,FFFFFFE0
	c.slli	a3,03
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.add	a3,a2
	c.mv	a0,a1

l2301C9F6:
	lbu	a5,a2,+00000000
	beq	a5,s0,000000002301CA2A

l2301C9FE:
	c.addi	a2,00000008
	bne	a2,a3,000000002301C9F6

l2301CA04:
	lhu	a2,a0,+0000000C
	c.lw	a0,8(a0)
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,0000000023025A08
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.mv	a3,a0
	lui	a0,00023075
	addi	a0,a0,-000002D8
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2301CA2A:
	lhu	a1,a0,+0000000C
	lbu	a5,a2,+00000001
	bgeu	a1,a5,000000002301CA4A

l2301CA36:
	c.mv	a2,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,00023075
	addi	a0,a0,-000002FC
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2301CA4A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lw	t1,a2,+00000004
	c.addi16sp	00000020
	c.jr	t1

;; hci_le_meta_event: 2301CA56
hci_le_meta_event proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000001
	c.mv	s0,a0
	c.addi	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002302590A
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lbu	a0,a0,+00000000
	lui	a2,00023075
	c.li	a3,00000009
	addi	a2,a2,-00000098
	c.addi	sp,00000010
	jal	zero,000000002301C9E8

;; hci_cmd_done: 2301CA80
;;   Called from:
;;     2301CBC4 (in hci_cmd_status)
;;     2301CC10 (in hci_cmd_complete)
;;     2301E42E (in hci_tx_thread)
hci_cmd_done proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s4,a0
	lbu	a0,a2,+00000006
	c.mv	s3,a1
	c.mv	s1,a2
	lui	s0,0004200E
	jal	ra,000000002302554C
	addi	a5,s0,-000002B4
	beq	a5,a0,000000002301CAD8

l2301CAA8:
	lbu	a2,s1,+00000006
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,000000002302554C
	addi	a4,s0,-000002B4
	c.lwsp	s0,00000114
	c.lwsp	a2,00000084
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a1,s4
	c.lwsp	s8,00000088
	c.mv	a3,a0
	lui	a0,00023075
	addi	a0,a0,-000002B4
	c.addi16sp	00000030
	jal	zero,0000000023003AC6

l2301CAD8:
	c.mv	a0,s1
	jal	ra,000000002302555E
	c.li	s2,0000000C
	add	a0,a0,s2
	lui	s0,00042011
	addi	a5,s0,-0000009C
	addi	s0,s0,-0000009C
	c.add	a5,a0
	lhu	a5,a5,+00000002
	beq	a5,s4,000000002301CB18

l2301CAFA:
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.mv	a1,s4
	c.add	a0,s0
	lhu	a2,a0,+00000002
	lui	a0,00023075
	addi	a0,a0,-0000027C
	jal	ra,0000000023003AC6

l2301CB18:
	c.mv	a0,s1
	jal	ra,000000002302555E
	c.li	s2,0000000C
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,4(a5)
	c.beqz	a5,000000002301CB48

l2301CB2A:
	bne	s3,zero,000000002301CB48

l2301CB2E:
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,4(a5)
	lbu	a2,a5,+00000008
	c.lw	a5,4(a1)
	c.lw	a5,0(a0)
	jal	ra,000000002301C522

l2301CB48:
	c.mv	a0,s1
	jal	ra,000000002302555E
	c.li	s2,0000000C
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,8(a5)
	c.beqz	a5,000000002301CB8A

l2301CB5A:
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.add	a0,s0
	sb	s3,a0,+00000000
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.add	s0,a0
	c.lw	s0,8(a0)
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	jal	zero,00000000230251D2

l2301CB8A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; hci_cmd_status: 2301CB9A
hci_cmd_status proc
	c.addi	sp,FFFFFFE0
	c.mv	a2,a0
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002302590A
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	lbu	s0,a0,+00000001
	lbu	a1,a0,+00000000
	c.lwsp	a2,00000084
	c.slli	a5,08
	or	a0,a5,a4
	jal	ra,000000002301CA80
	c.beqz	s0,000000002301CBDC

l2301CBCA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,0004200D
	addi	a0,a0,+000003F0
	c.addi16sp	00000020
	jal	zero,00000000230251D2

l2301CBDC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; hci_cmd_complete: 2301CBE4
hci_cmd_complete proc
	c.addi	sp,FFFFFFE0
	c.mv	a2,a0
	c.li	a1,00000003
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002302590A
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	lbu	a4,a0,+00000001
	c.lw	a2,8(a3)
	lbu	s0,a0,+00000000
	c.slli	a5,08
	lbu	a1,a3,+00000000
	or	a0,a5,a4
	jal	ra,000000002301CA80
	c.beqz	s0,000000002301CC28

l2301CC16:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,0004200D
	addi	a0,a0,+000003F0
	c.addi16sp	00000020
	jal	zero,00000000230251D2

l2301CC28:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; id_find: 2301CC30
;;   Called from:
;;     2301D830 (in id_create.isra.25)
;;     2301E95C (in bt_id_create)
id_find proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200D
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s3,a0
	c.li	s0,00000000
	addi	s1,s1,+00000358
	c.li	s4,00000007

l2301CC4C:
	lbu	a5,s1,+00000007
	bltu	s0,a5,000000002301CC68

l2301CC54:
	c.li	s2,FFFFFFFE

l2301CC56:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301CC68:
	add	a1,s0,s4
	c.li	a2,00000007
	c.mv	a0,s3
	c.mv	s2,s0
	c.add	a1,s1
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301CC56

l2301CC7A:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	000000002301CC4C

;; sys_put_le64: 2301CC82
;;   Called from:
;;     2301ECDA (in init_work)
;;     2301ED7C (in init_work)
sys_put_le64 proc
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.srli	a5,00000008
	sb	a5,a2,+00000001
	slli	a5,a1,00000010
	c.srli	a5,00000010
	sb	a0,a2,+00000000
	c.srli	a5,00000008
	c.srli	a0,00000018
	c.srli	a1,00000018
	sb	zero,a2,+00000002
	sb	a0,a2,+00000003
	sb	zero,a2,+00000004
	sb	a5,a2,+00000005
	sb	zero,a2,+00000006
	sb	a1,a2,+00000007
	c.jr	ra

;; bt_hci_cmd_create: 2301CCB8
;;   Called from:
;;     2301CD6A (in bt_hci_cmd_send_sync)
;;     2301CE70 (in set_le_scan_enable)
;;     2301CF20 (in set_random_address)
;;     2301CFAC (in hci_id_add)
;;     2301D02A (in addr_res_enable)
;;     2301D070 (in set_advertise_enable)
;;     2301D190 (in set_ad)
;;     2301D582 (in bt_id_add)
;;     2301D6DA (in bt_id_del)
;;     2301D866 (in bt_hci_cmd_send)
;;     2301D8E2 (in bt_le_set_data_len)
;;     2301D9D6 (in start_le_scan)
;;     2301DC36 (in le_adv_report)
;;     2301DDC0 (in le_ltk_request)
;;     2301DE0C (in le_ltk_request)
;;     2301DE46 (in le_conn_param_neg_reply)
;;     2301DF3E (in le_conn_param_req)
;;     2301E1E6 (in enh_conn_complete)
;;     2301EC8E (in init_work)
;;     2301ED50 (in init_work)
;;     2301EDB8 (in init_work)
;;     2301F00E (in bt_le_adv_start_internal)
;;     2301F306 (in bt_set_tx_pwr)
;;     2301F50E (in bt_dh_key_gen)
;;     23026BC0 (in bt_conn_le_start_encryption)
;;     230276B2 (in bt_conn_disconnect)
;;     23027844 (in bt_conn_le_conn_update)
bt_hci_cmd_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	lui	a0,0004200E
	c.swsp	s5,00000080
	addi	a0,a0,-000002B4
	c.mv	s5,a1
	c.li	a1,FFFFFFFF
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,00000000230256D8
	addi	s4,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,000000002302572C
	c.mv	a0,s1
	sb	zero,s1,+00000014
	jal	ra,000000002302555E
	c.li	s3,0000000C
	add	a0,a0,s3
	lui	s0,00042011
	addi	s0,s0,-0000009C
	c.add	a0,s0
	sh	s2,a0,+00000002
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s3
	c.add	a0,s0
	sw	zero,a0,+00000008
	c.mv	a0,s1
	jal	ra,000000002302555E
	add	a0,a0,s3
	c.li	a1,00000003
	c.add	s0,a0
	sw	zero,s0,+00000004
	c.mv	a0,s4
	jal	ra,000000002302586C
	sb	s2,a0,+00000000
	srli	s2,s2,00000008
	sb	s2,a0,+00000001
	sb	s5,a0,+00000002
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; bt_hci_cmd_send_sync: 2301CD52
;;   Called from:
;;     2301CED0 (in set_le_scan_enable)
;;     2301CF3E (in set_random_address)
;;     2301CFF4 (in hci_id_add)
;;     2301D04C (in addr_res_enable)
;;     2301D0B8 (in set_advertise_enable)
;;     2301D1DC (in set_ad)
;;     2301D500 (in bt_id_add)
;;     2301D5A6 (in bt_id_add)
;;     2301D6FA (in bt_id_del)
;;     2301DCC4 (in le_adv_report)
;;     2301E9E8 (in init_work)
;;     2301EA28 (in init_work)
;;     2301EA50 (in init_work)
;;     2301EAB6 (in init_work)
;;     2301EB1A (in init_work)
;;     2301EB76 (in init_work)
;;     2301EB9C (in init_work)
;;     2301EBEA (in init_work)
;;     2301EC4A (in init_work)
;;     2301EC6E (in init_work)
;;     2301ECE6 (in init_work)
;;     2301ED08 (in init_work)
;;     2301ED8A (in init_work)
;;     2301EDE0 (in init_work)
;;     2301F02E (in bt_le_adv_start_internal)
;;     2301F326 (in bt_set_tx_pwr)
;;     2301F468 (in bt_pub_key_gen)
;;     2301F53C (in bt_dh_key_gen)
;;     23026C30 (in bt_conn_le_start_encryption)
;;     230278BA (in bt_conn_le_conn_update)
bt_hci_cmd_send_sync proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s4,a0
	c.mv	s5,a2
	c.mv	s0,a1
	c.bnez	a1,000000002301CD76

l2301CD6A:
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	addi	s1,zero,-00000037
	c.beqz	a0,000000002301CE34

l2301CD76:
	addi	s3,sp,+00000004
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002302517E
	c.mv	a0,s0
	jal	ra,000000002302555E
	c.li	s2,0000000C
	add	a0,a0,s2
	lui	s1,00042011
	addi	s1,s1,-0000009C
	c.add	a0,s1
	sw	s3,a0,+00000008
	c.mv	a0,s0
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.li	a5,FFFFFFFF
	c.add	a0,s1
	sb	a5,a0,+00000000
	c.mv	a0,s0
	jal	ra,00000000230257FC
	lui	a0,0004200D
	c.mv	a1,s0
	addi	a0,a0,+00000400
	jal	ra,0000000023025734
	lui	a0,0004201A
	addi	a0,a0,+00000464
	jal	ra,00000000230251D2
	c.lui	a1,00002000
	addi	a1,a1,+00000710
	c.mv	a0,s3
	jal	ra,00000000230251B2
	c.mv	a0,s3
	jal	ra,0000000023025204
	c.mv	a0,s0
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.add	a0,s1
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002301CE48

l2301CDF4:
	c.mv	a0,s0
	jal	ra,000000002302555E
	add	a0,a0,s2
	c.li	a4,00000009
	c.add	s1,a0
	lbu	a5,s1,+00000000
	addi	s1,zero,-0000003D
	beq	a5,a4,000000002301CE2E

l2301CE0E:
	addi	a4,zero,+000000FF
	c.li	s1,FFFFFFFB
	bne	a5,a4,000000002301CE2E

l2301CE18:
	lui	a0,00023075
	c.mv	a1,s4
	addi	a0,a0,-000005D8
	jal	ra,0000000023003AC6
	jal	ra,000000002300149E
	addi	s1,zero,-0000004F

l2301CE2E:
	c.mv	a0,s0
	jal	ra,000000002302574E

l2301CE34:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2301CE48:
	beq	s5,zero,000000002301CE54

l2301CE4C:
	sw	s0,s5,+00000000

l2301CE50:
	c.li	s1,00000000
	c.j	000000002301CE34

l2301CE54:
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.j	000000002301CE50

;; set_le_scan_enable: 2301CE5C
;;   Called from:
;;     2301D4BE (in bt_id_add)
;;     2301D526 (in bt_id_add)
;;     2301D65A (in bt_id_del)
;;     2301D686 (in bt_id_del)
;;     2301D9F8 (in start_le_scan)
;;     2301DAAE (in bt_le_scan_update)
;;     2301DD00 (in le_adv_report)
;;     2301F240 (in bt_le_scan_start)
set_le_scan_enable proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a1,00000002
	c.addi	a0,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,000000002301CCB8
	c.beqz	a0,000000002301CEE8

l2301CE76:
	c.mv	s1,a0
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	s2,a0
	c.li	a5,00000001
	lui	a0,0004200D
	addi	s3,a0,+000003C4
	bne	s0,a5,000000002301CEE2

l2301CE90:
	c.li	a1,0000000D
	addi	a0,a0,+000003C4
	jal	ra,000000002301C486
	sb	a0,s2,+00000001

l2301CE9E:
	sb	s0,s2,+00000000
	c.li	a5,0000000A
	c.andi	s0,00000001
	c.mv	a0,s1
	c.swsp	a5,00000004
	c.swsp	s3,00000080
	sb	s0,sp,+0000000C
	jal	ra,000000002302555E
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042011
	addi	a5,a5,-0000009C
	c.addi4spn	a4,00000004
	c.li	a2,00000000
	c.mv	a1,s1
	c.add	a5,a0
	c.lui	a0,00002000
	c.sw	a5,4(a4)
	c.addi	a0,0000000C
	jal	ra,000000002301CD52

l2301CED4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2301CEE2:
	sb	zero,s2,+00000001
	c.j	000000002301CE9E

l2301CEE8:
	addi	a0,zero,-00000037
	c.j	000000002301CED4

;; set_random_address: 2301CEEE
;;   Called from:
;;     2301CF86 (in le_set_private_addr.isra.19)
;;     2301DA20 (in start_le_scan)
;;     2301DC1C (in le_adv_report)
;;     2301EFC4 (in bt_le_adv_start_internal)
;;     2301F098 (in bt_le_adv_start_internal)
set_random_address proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200D
	addi	s1,s1,+00000358
	c.swsp	s3,00000084
	addi	s3,s1,+0000000A
	c.li	a2,00000006
	c.mv	a1,s3
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.mv	s4,a0
	jal	ra,000000002306CEF8
	c.mv	s0,a0
	c.beqz	a0,000000002301CF56

l2301CF18:
	c.lui	s5,00002000
	c.li	a1,00000006
	addi	a0,s5,+00000005
	jal	ra,000000002301CCB8
	c.mv	s2,a0
	addi	s0,zero,-00000037
	c.beqz	a0,000000002301CF56

l2301CF2C:
	c.li	a2,00000006
	c.mv	a1,s4
	c.addi	a0,00000008
	jal	ra,000000002302587E
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,s5,+00000005
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301CF56

l2301CF46:
	c.li	a2,00000006
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s1,+00000009

l2301CF56:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; le_set_private_addr.isra.19: 2301CF6A
;;   Called from:
;;     2301D9C2 (in start_le_scan)
;;     2301F0C0 (in bt_le_adv_start_internal)
;;     2301F19C (in bt_le_adv_stop)
le_set_private_addr.isra.19 proc
	c.addi	sp,FFFFFFE0
	c.li	a1,00000006
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023027DC8
	c.bnez	a0,000000002301CF8A

l2301CF78:
	lbu	a5,sp,+0000000D
	c.addi4spn	a0,00000008
	andi	a5,a5,+0000003F
	sb	a5,sp,+0000000D
	jal	ra,000000002301CEEE

l2301CF8A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; hci_id_add: 2301CF90
;;   Called from:
;;     2301D012 (in keys_add_id)
;;     2301D540 (in bt_id_add)
hci_id_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.lui	s1,00002000
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s3,a1
	c.mv	s4,a0
	addi	a1,zero,+00000027
	addi	a0,s1,+00000027
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	jal	ra,000000002301CCB8
	c.beqz	a0,000000002301CFF8

l2301CFB2:
	c.mv	s0,a0
	addi	a1,zero,+00000027
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	a1,s4
	c.mv	s2,a0
	jal	ra,000000002301C49E
	c.mv	a1,s3
	c.li	a2,00000010
	addi	a0,s2,+00000007
	jal	ra,000000002306CF80
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,s2,+00000017
	jal	ra,000000002306D1BC
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,s1,+00000027
	c.lwsp	s4,00000024
	c.li	a2,00000000
	c.addi16sp	00000020
	jal	zero,000000002301CD52

l2301CFF8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; keys_add_id: 2301D00C
keys_add_id proc
	addi	a1,a0,+00000026
	c.addi	a0,00000001
	jal	zero,000000002301CF90

;; addr_res_enable: 2301D016
;;   Called from:
;;     2301D4CA (in bt_id_add)
;;     2301D51C (in bt_id_add)
;;     2301D660 (in bt_id_del)
;;     2301D67C (in bt_id_del)
addr_res_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00002000
	c.swsp	s2,00000000
	c.li	a1,00000001
	c.mv	s2,a0
	addi	a0,s1,+0000002D
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002301CCB8
	c.beqz	a0,000000002301D050

l2301D030:
	c.mv	s0,a0
	c.mv	a1,s2
	c.addi	a0,00000008
	jal	ra,0000000023025894
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a0,s1,+0000002D
	c.lwsp	tp,00000024
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,000000002301CD52

l2301D050:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a0,zero,-00000037
	c.addi	sp,00000010
	c.jr	ra

;; set_advertise_enable: 2301D060
;;   Called from:
;;     2301D128 (in hci_disconn_complete)
;;     2301D4AC (in bt_id_add)
;;     2301D530 (in bt_id_add)
;;     2301D648 (in bt_id_del)
;;     2301D6A0 (in bt_id_del)
;;     2301E17E (in enh_conn_complete)
;;     2301E7CC (in bt_set_name)
;;     2301E7D2 (in bt_set_name)
;;     2301F03E (in bt_le_adv_start_internal)
;;     2301F180 (in bt_le_adv_stop)
set_advertise_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.lui	a0,00002000
	c.li	a1,00000001
	c.addi	a0,0000000A
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002301CCB8
	c.beqz	a0,000000002301D0C6

l2301D076:
	c.mv	s0,a0
	c.li	a1,00000001
	c.addi	a0,00000008
	c.bnez	s1,000000002301D080

l2301D07E:
	c.li	a1,00000000

l2301D080:
	jal	ra,0000000023025894
	lui	a5,0004200D
	addi	a5,a5,+000003C4
	c.swsp	a5,00000080
	c.mv	a0,s0
	c.li	a5,00000006
	c.swsp	a5,00000004
	sb	s1,sp,+0000000C
	jal	ra,000000002302555E
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042011
	addi	a5,a5,-0000009C
	c.addi4spn	a4,00000004
	c.li	a2,00000000
	c.mv	a1,s0
	c.add	a5,a0
	c.lui	a0,00002000
	c.sw	a5,4(a4)
	c.addi	a0,0000000A
	jal	ra,000000002301CD52

l2301D0BC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301D0C6:
	addi	a0,zero,-00000037
	c.j	000000002301D0BC

;; hci_disconn_complete: 2301D0CC
hci_disconn_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a5,s1,+00000000
	c.bnez	a5,000000002301D164

l2301D0DC:
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023027294
	c.mv	s0,a0
	c.lwsp	a2,00000064
	c.bnez	a0,000000002301D12C

l2301D0F6:
	lui	a0,00023075
	addi	a0,a0,-00000218
	jal	ra,0000000023003AC6

l2301D102:
	lui	s0,0004200D
	addi	s0,s0,+000003C4
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.beqz	a0,000000002301D164

l2301D114:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301D164

l2301D11E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002301D060

l2301D12C:
	lbu	a5,s1,+00000003
	c.li	a1,00000000
	sb	a5,a0,+0000000C
	jal	ra,00000000230270C8
	lbu	a4,s0,+00000002
	sh	zero,s0,+00000000
	c.li	a5,00000001
	c.mv	a0,s0
	beq	a4,a5,000000002301D156

l2301D14A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302753A

l2301D156:
	jal	ra,000000002302753A
	addi	a0,s0,+00000048
	jal	ra,00000000230254D6
	c.j	000000002301D102

l2301D164:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; set_ad: 2301D16E
;;   Called from:
;;     2301D2AA (in le_adv_update)
;;     2301D2FC (in le_adv_update)
;;     2301E7BC (in bt_set_name)
set_ad proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a1
	addi	a1,zero,+00000020
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s3,a0
	c.mv	s2,a2
	jal	ra,000000002301CCB8
	beq	a0,zero,000000002301D282

l2301D198:
	addi	a1,zero,+00000020
	c.mv	s6,a0
	c.addi	a0,00000008
	jal	ra,000000002302586C
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.slli	s2,03
	c.mv	s1,a0
	add	s4,s0,s2
	jal	ra,000000002306D1BC
	c.li	s8,0000001D
	c.li	s9,00000009

l2301D1BA:
	bne	s0,s4,000000002301D1E0

l2301D1BE:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a1,s6
	c.mv	a0,s3
	c.lwsp	a6,000000C8
	c.lwsp	t3,00000068
	c.li	a2,00000000
	c.addi16sp	00000030
	jal	zero,000000002301CD52

l2301D1E0:
	lw	s5,s0,+00000000
	c.li	s7,00000000

l2301D1E6:
	c.lw	s0,4(a5)
	bltu	s7,a5,000000002301D1F0

l2301D1EC:
	c.addi	s0,00000008
	c.j	000000002301D1BA

l2301D1F0:
	lbu	a2,s5,+00000001
	lbu	a5,s1,+00000000
	lbu	a4,s5,+00000000
	add	a3,a5,a2
	bge	s8,a3,000000002301D23E

l2301D204:
	sub	a2,s8,a5
	bne	a4,s9,000000002301D20E

l2301D20C:
	c.bnez	a2,000000002301D23C

l2301D20E:
	c.mv	a0,s6
	jal	ra,000000002302574E
	lui	a0,00023075
	addi	a0,a0,-00000008
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA

l2301D222:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l2301D23C:
	c.li	a4,00000008

l2301D23E:
	andi	s2,a2,+000000FF
	add	a3,s1,a5
	addi	a1,s2,+00000001
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	sb	a1,a3,+00000001
	andi	a0,a0,+000000FF
	andi	a5,a5,+000000FF
	sb	a0,s1,+00000000
	c.add	a5,s1
	sb	a4,a5,+00000001
	lw	a1,s5,+00000004
	c.addi	a0,00000001
	c.add	a0,s1
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000000
	c.addi	s7,00000001
	c.addi	s5,00000008
	c.add	s2,a5
	sb	s2,s1,+00000000
	c.j	000000002301D1E6

l2301D282:
	addi	a0,zero,-00000037
	c.j	000000002301D222

;; le_adv_update: 2301D288
;;   Called from:
;;     2301F0DE (in bt_le_adv_start_internal)
le_adv_update proc
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000010
	c.lui	a0,00002000
	c.swsp	s1,00000098
	c.swsp	a1,00000090
	c.mv	s1,a2
	c.addi4spn	a1,00000020
	c.li	a2,00000001
	c.addi	a0,00000008
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	a3,00000084
	c.mv	s2,a4
	c.swsp	a5,00000004
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,000000002301D16E
	c.mv	s0,a0
	c.bnez	a0,000000002301D302

l2301D2B2:
	c.lwsp	a2,000000A4
	c.lwsp	s0,000000E4
	c.swsp	s1,00000010
	c.swsp	a3,00000090
	c.beqz	a5,000000002301D2E8

l2301D2BC:
	c.beqz	s1,000000002301D2C6

l2301D2BE:
	c.li	a2,00000000
	c.li	a4,00000001

l2301D2C2:
	bne	a2,a3,000000002301D310

l2301D2C6:
	lui	s1,0004200D
	addi	s1,s1,+00000410
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.li	a5,00000009
	sb	a5,sp,+00000018
	c.addi4spn	a5,00000018
	c.swsp	a5,00000014
	c.li	a5,00000001
	sb	a0,sp,+00000019
	c.swsp	s1,0000008C
	c.swsp	a5,00000094

l2301D2E8:
	c.lwsp	zero,000001F4
	c.bnez	a5,000000002301D2F4

l2301D2EC:
	c.lwsp	s0,000001F4
	c.bnez	a5,000000002301D2F4

l2301D2F0:
	beq	s2,zero,000000002301D302

l2301D2F4:
	c.lui	a0,00002000
	c.li	a2,00000002
	c.addi4spn	a1,00000020
	c.addi	a0,00000009
	jal	ra,000000002301D16E
	c.mv	s0,a0

l2301D302:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2301D310:
	slli	a5,a2,00000003
	c.add	a5,s1
	lbu	a5,a5,+00000000
	c.addi	a5,FFFFFFF8
	andi	a5,a5,+000000FF
	bgeu	a4,a5,000000002301D328

l2301D324:
	c.addi	a2,00000001
	c.j	000000002301D2C2

l2301D328:
	c.li	s0,FFFFFFEA
	c.j	000000002301D302

;; bt_lookup_id_addr: 2301D32C
;;   Called from:
;;     2301DCF0 (in le_adv_report)
;;     2301E2D6 (in le_legacy_conn_complete)
;;     2302781A (in bt_conn_create_le)
bt_lookup_id_addr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,0000000023023B66
	c.beqz	a0,000000002301D33E

l2301D33A:
	addi	s0,a0,+00000001

l2301D33E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_le_conn_params_valid: 2301D348
;;   Called from:
;;     23026AE8 (in le_param_req)
;;     23026B1E (in le_param_req)
;;     23027732 (in bt_conn_create_le)
bt_le_conn_params_valid proc
	lhu	a4,a0,+00000000
	lhu	a1,a0,+00000002
	c.li	a5,00000000
	bltu	a1,a4,000000002301D396

l2301D356:
	c.li	a3,00000005
	c.li	a5,00000000
	bgeu	a3,a4,000000002301D396

l2301D35E:
	c.lui	a2,00001000
	addi	a4,a2,-00000380
	bltu	a4,a1,000000002301D396

l2301D368:
	lhu	a4,a0,+00000004
	addi	a3,zero,+000001F3
	bltu	a3,a4,000000002301D396

l2301D374:
	lhu	a3,a0,+00000006
	addi	a2,a2,-0000038A
	addi	a0,a3,-0000000A
	c.slli	a0,10
	c.srli	a0,00000010
	bltu	a2,a0,000000002301D396

l2301D388:
	addi	a5,a4,+00000001
	add	a5,a5,a1
	c.slli	a3,02
	sltu	a5,a5,a3

l2301D396:
	c.mv	a0,a5
	c.jr	ra

;; bt_unpair: 2301D39A
;;   Called from:
;;     23023A46 (in bt_keys_get_addr)
;;     23024B0A (in ble_unpair)
bt_unpair proc
	c.bnez	a0,000000002301D422

l2301D39C:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.bnez	a1,000000002301D3C4

l2301D3AA:
	c.li	a0,00000000
	jal	ra,000000002302751A
	c.li	a0,00000000
	jal	ra,0000000023023C9E

l2301D3B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2301D3C4:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301D3AA

l2301D3DA:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,0000000023027404
	c.mv	s0,a0
	c.bnez	a0,000000002301D3FA

l2301D3E6:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,0000000023023C56
	c.mv	s2,a0
	c.beqz	a0,000000002301D3B6

l2301D3F2:
	c.mv	a0,s2
	jal	ra,0000000023023C66
	c.j	000000002301D3B6

l2301D3FA:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	c.li	s2,00000000
	bne	a4,a5,000000002301D40E

l2301D406:
	lw	s2,a0,+0000009C
	sw	zero,a0,+0000009C

l2301D40E:
	c.li	a1,00000013
	c.mv	a0,s0
	jal	ra,000000002302761C
	c.mv	a0,s0
	jal	ra,000000002302753A
	bne	s2,zero,000000002301D3F2

l2301D420:
	c.j	000000002301D3E6

l2301D422:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_id_add: 2301D426
;;   Called from:
;;     2301D72A (in update_pending_id)
;;     23022A46 (in smp_ident_addr_info)
bt_id_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200D
	addi	a5,s0,+00000358
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a4,a5,+00000090
	addi	s0,s0,+00000358
	lbu	a5,a5,+00000091
	c.beqz	a4,000000002301D44E

l2301D44A:
	bgeu	a4,a5,000000002301D464

l2301D44E:
	c.addi	a5,00000001
	sb	a5,s0,+00000091

l2301D454:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2301D464:
	c.mv	s1,a0
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302749E
	c.mv	s2,a0
	lui	a0,0004200D
	addi	s3,a0,+000003C4
	beq	s2,zero,000000002301D49C

l2301D47C:
	lui	a1,00000020
	addi	a0,a0,+000003C4
	jal	ra,00000000230254FA
	lbu	a5,s1,+00000009
	c.mv	a0,s2
	ori	a5,a5,+00000004
	sb	a5,s1,+00000009
	jal	ra,000000002302753A
	c.j	000000002301D454

l2301D49C:
	c.li	a1,00000006
	addi	a0,a0,+000003C4
	jal	ra,000000002301C486
	c.mv	s2,a0
	c.beqz	a0,000000002301D4B0

l2301D4AA:
	c.li	a0,00000000
	jal	ra,000000002301D060

l2301D4B0:
	c.mv	a0,s3
	c.li	a1,0000000A
	jal	ra,000000002301C486
	c.mv	s3,a0
	c.beqz	a0,000000002301D4C2

l2301D4BC:
	c.li	a0,00000000
	jal	ra,000000002301CE5C

l2301D4C2:
	lbu	a5,s0,+00000091
	c.beqz	a5,000000002301D4DE

l2301D4C8:
	c.li	a0,00000000
	jal	ra,000000002301D016
	c.beqz	a0,000000002301D4DE

l2301D4D0:
	lui	a0,00023075
	addi	a0,a0,-000005B0

l2301D4D8:
	jal	ra,0000000023003AC6
	c.j	000000002301D51A

l2301D4DE:
	lbu	a4,s0,+00000091
	lbu	a5,s0,+00000090
	bne	a4,a5,000000002301D536

l2301D4EA:
	lui	a0,00023075
	addi	a0,a0,-00000588
	jal	ra,0000000023003AC6
	c.lui	a0,00002000
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,+00000029
	jal	ra,000000002301CD52
	c.beqz	a0,000000002301D510

l2301D506:
	lui	a0,00023075
	addi	a0,a0,-00000554
	c.j	000000002301D4D8

l2301D510:
	lbu	a5,s0,+00000091
	c.addi	a5,00000001
	sb	a5,s0,+00000091

l2301D51A:
	c.li	a0,00000001
	jal	ra,000000002301D016
	beq	s3,zero,000000002301D52A

l2301D524:
	c.li	a0,00000001
	jal	ra,000000002301CE5C

l2301D52A:
	beq	s2,zero,000000002301D454

l2301D52E:
	c.li	a0,00000001
	jal	ra,000000002301D060
	c.j	000000002301D454

l2301D536:
	addi	s4,s1,+00000001
	addi	a1,s1,+00000026
	c.mv	a0,s4
	jal	ra,000000002301CF90
	c.beqz	a0,000000002301D550

l2301D546:
	lui	a0,00023075
	addi	a0,a0,-00000530
	c.j	000000002301D4D8

l2301D550:
	lbu	a5,s0,+00000091
	c.addi	a5,00000001
	sb	a5,s0,+00000091
	lbu	a5,s0,+00000047
	c.andi	a5,00000004
	c.bnez	a5,000000002301D56C

l2301D562:
	lui	a0,00023075
	addi	a0,a0,-0000050C
	c.j	000000002301D4D8

l2301D56C:
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,000000002301C49E
	c.lui	s1,00002000
	c.li	a5,00000001
	c.li	a1,00000008
	addi	a0,s1,+0000004E
	sb	a5,sp,+0000000F
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	c.bnez	a0,000000002301D594

l2301D58A:
	lui	a0,00023075
	addi	a0,a0,-000004E0
	c.j	000000002301D4D8

l2301D594:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi	a0,00000008
	jal	ra,000000002302587E
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,+0000004E
	jal	ra,000000002301CD52
	c.beqz	a0,000000002301D51A

l2301D5AC:
	c.j	000000002301D58A

;; bt_id_del: 2301D5AE
;;   Called from:
;;     2301D73A (in update_pending_id)
;;     23023C76 (in bt_keys_clear)
bt_id_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200D
	addi	a5,s0,+00000358
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lbu	a4,a5,+00000090
	addi	s0,s0,+00000358
	lbu	a5,a5,+00000091
	c.beqz	a4,000000002301D5DA

l2301D5D4:
	c.addi	a4,00000001
	bge	a4,a5,000000002301D5F2

l2301D5DA:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091

l2301D5E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2301D5F2:
	c.mv	s1,a0
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302749E
	c.mv	s2,a0
	lui	a0,0004200D
	addi	s4,a0,+000003C4
	beq	s2,zero,000000002301D638

l2301D60A:
	lui	a1,00000020
	addi	a0,a0,+000003C4
	jal	ra,00000000230254FA
	lbu	a5,s1,+00000009
	c.mv	a0,s2
	ori	a5,a5,+00000008
	sb	a5,s1,+00000009
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002302753A

l2301D638:
	c.li	a1,00000006
	addi	a0,a0,+000003C4
	jal	ra,000000002301C486
	c.mv	s3,a0
	c.beqz	a0,000000002301D64C

l2301D646:
	c.li	a0,00000000
	jal	ra,000000002301D060

l2301D64C:
	c.mv	a0,s4
	c.li	a1,0000000A
	jal	ra,000000002301C486
	c.mv	s4,a0
	c.beqz	a0,000000002301D65E

l2301D658:
	c.li	a0,00000000
	jal	ra,000000002301CE5C

l2301D65E:
	c.li	a0,00000000
	jal	ra,000000002301D016
	c.mv	a1,a0
	c.beqz	a0,000000002301D6A4

l2301D668:
	lui	a0,00023075
	addi	a0,a0,-00000490
	jal	ra,0000000023003AC6

l2301D674:
	lbu	a5,s0,+00000091
	c.beqz	a5,000000002301D680

l2301D67A:
	c.li	a0,00000001
	jal	ra,000000002301D016

l2301D680:
	beq	s4,zero,000000002301D68A

l2301D684:
	c.li	a0,00000001
	jal	ra,000000002301CE5C

l2301D68A:
	beq	s3,zero,000000002301D5E0

l2301D68E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002301D060

l2301D6A4:
	lbu	a5,s0,+00000091
	lbu	a4,s0,+00000090
	bgeu	a4,a5,000000002301D6D2

l2301D6B0:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091
	lhu	a5,s1,+0000000A
	lui	a1,0002301D
	c.li	a2,00000000
	c.andi	a5,FFFFFFFD
	sh	a5,s1,+0000000A
	addi	a1,a1,+0000000C
	c.li	a0,00000002
	jal	ra,0000000023023AD2
	c.j	000000002301D674

l2301D6D2:
	c.lui	s5,00002000
	c.li	a1,00000007
	addi	a0,s5,+00000028
	jal	ra,000000002301CCB8
	c.mv	s2,a0
	c.beqz	a0,000000002301D674

l2301D6E2:
	c.li	a1,00000007
	c.addi	a0,00000008
	jal	ra,000000002302586C
	addi	a1,s1,+00000001
	jal	ra,000000002301C49E
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,s5,+00000028
	jal	ra,000000002301CD52
	c.beqz	a0,000000002301D70E

l2301D700:
	lui	a0,00023075
	addi	a0,a0,-00000460
	jal	ra,0000000023003AC6
	c.j	000000002301D674

l2301D70E:
	lbu	a5,s0,+00000091
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091
	c.j	000000002301D674

;; update_pending_id: 2301D71A
update_pending_id proc
	lbu	a5,a0,+00000009
	andi	a3,a5,+00000004
	c.beqz	a3,000000002301D72E

l2301D724:
	c.andi	a5,FFFFFFFB
	sb	a5,a0,+00000009
	jal	zero,000000002301D426

l2301D72E:
	andi	a3,a5,+00000008
	c.beqz	a3,000000002301D73E

l2301D734:
	c.andi	a5,FFFFFFF7
	sb	a5,a0,+00000009
	jal	zero,000000002301D5AE

l2301D73E:
	c.jr	ra

;; bt_data_parse: 2301D740
;;   Called from:
;;     23024D08 (in device_found)
bt_data_parse proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.li	s2,00000001

l2301D756:
	lhu	a5,s0,+00000004
	bgeu	s2,a5,000000002301D782

l2301D75E:
	c.mv	a0,s0
	jal	ra,000000002302591E
	c.mv	s1,a0
	c.beqz	a0,000000002301D782

l2301D768:
	lhu	a4,s0,+00000004
	slli	a5,a0,00000010
	c.srli	a5,00000010
	bgeu	a4,a5,000000002301D792

l2301D776:
	lui	a0,00023075
	addi	a0,a0,-0000066C
	jal	ra,0000000023003AC6

l2301D782:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2301D792:
	c.mv	a0,s0
	jal	ra,000000002302591E
	c.lw	s0,0(a5)
	sb	a0,sp,+00000008
	c.addi	s1,FFFFFFFF
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	sb	s1,sp,+00000009
	c.swsp	a5,00000084
	c.jalr	s3
	c.beqz	a0,000000002301D782

l2301D7AE:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230258F6
	c.j	000000002301D756

;; bt_addr_le_create_static: 2301D7B8
;;   Called from:
;;     2301D82A (in id_create.isra.25)
bt_addr_le_create_static proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	sb	a5,a0,+00000000
	c.li	a1,00000006
	c.addi	a0,00000001
	jal	ra,0000000023027DC8
	c.bnez	a0,000000002301D7DC

l2301D7D0:
	lbu	a5,s0,+00000006
	ori	a5,a5,-00000040
	sb	a5,s0,+00000006

l2301D7DC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; id_create.isra.25: 2301D7E4
;;   Called from:
;;     2301E9A6 (in bt_id_create)
id_create.isra.25 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	s0,00000007
	add	a0,a0,s0
	lui	s0,0004200D
	c.swsp	s1,00000088
	addi	s0,s0,+00000358
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.add	s0,a0
	c.beqz	a1,000000002301D828

l2301D800:
	c.li	a2,00000007
	c.mv	a1,sp
	c.mv	a0,s1
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301D828

l2301D816:
	c.mv	a1,s1
	c.mv	a0,s0

l2301D81A:
	jal	ra,000000002301C49E

l2301D81E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301D828:
	c.addi4spn	a0,00000008
	jal	ra,000000002301D7B8
	c.addi4spn	a0,00000008
	jal	ra,000000002301CC30
	bge	a0,zero,000000002301D828

l2301D838:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002301C49E
	c.beqz	s1,000000002301D81E

l2301D842:
	c.mv	a1,s0
	c.mv	a0,s1
	c.j	000000002301D81A

;; bt_send: 2301D848
;;   Called from:
;;     2301D87E (in bt_hci_cmd_send)
;;     2301E402 (in hci_tx_thread)
;;     23026890 (in send_frag)
bt_send proc
	lui	a5,0004200D
	lw	a5,a5,+0000040C
	lw	t1,a5,+00000010
	c.jr	t1

;; bt_hci_cmd_send: 2301D856
;;   Called from:
;;     2301D928 (in bt_le_set_data_len)
;;     2301D9F2 (in start_le_scan)
;;     2301DDFE (in le_ltk_request)
;;     2301DE8E (in le_conn_param_neg_reply)
;;     2301DFA4 (in le_conn_param_req)
;;     2301E20A (in enh_conn_complete)
;;     230276A8 (in bt_conn_disconnect)
;;     230276DE (in bt_conn_disconnect)
;;     2302799C (in conn_update_timeout)
bt_hci_cmd_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s2,a0
	c.mv	s0,a1
	c.bnez	a1,000000002301D872

l2301D866:
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	addi	s1,zero,-00000037
	c.beqz	a0,000000002301D89A

l2301D872:
	c.lui	a5,00001000
	addi	a5,a5,-000003CB
	bne	s2,a5,000000002301D8A8

l2301D87C:
	c.mv	a0,s0
	jal	ra,000000002301D848
	c.mv	s1,a0
	c.beqz	a0,000000002301D89A

l2301D886:
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,-000005FC
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E

l2301D89A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301D8A8:
	lui	a0,0004200D
	c.mv	a1,s0
	addi	a0,a0,+00000400
	jal	ra,0000000023025734
	lui	a0,0004201A
	addi	a0,a0,+00000464
	jal	ra,00000000230251D2
	c.li	s1,00000000
	c.j	000000002301D89A

;; bt_le_set_data_len: 2301D8C6
;;   Called from:
;;     230245A8 (in ble_set_data_len)
;;     2302D954 (in blsync_connected)
bt_le_set_data_len proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.lui	s3,00002000
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a1
	c.mv	s4,a0
	c.li	a1,00000006
	addi	a0,s3,+00000022
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a2
	jal	ra,000000002301CCB8
	c.beqz	a0,000000002301D92C

l2301D8E8:
	c.mv	s2,a0
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s4,+00000000
	sb	s1,a0,+00000002
	sb	s0,a0,+00000004
	sb	a5,a0,+00000000
	c.srli	s1,00000008
	c.srli	s0,00000008
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	sb	s1,a0,+00000003
	sb	s0,a0,+00000005
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.mv	a1,s2
	addi	a0,s3,+00000022
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002301D856

l2301D92C:
	lui	a0,00023075
	addi	a0,a0,-00000438
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; start_le_scan: 2301D94C
;;   Called from:
;;     2301DAA8 (in bt_le_scan_update)
;;     2301F290 (in bt_le_scan_start)
start_le_scan proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000007
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	jal	ra,000000002306D1BC
	sb	s0,sp,+0000000B
	c.srli	s0,00000008
	sb	s2,sp,+00000009
	sb	s0,sp,+0000000C
	srli	s2,s2,00000008
	lui	s0,0004200D
	sb	s2,sp,+0000000A
	addi	s2,s0,+00000358
	addi	a0,s2,+0000006C
	c.li	a1,0000000E
	sb	s1,sp,+00000008
	jal	ra,000000002301C486
	lbu	a5,s2,+00000000
	sltu	a0,zero,a0
	lui	s2,0004200D
	sb	a5,sp,+0000000D
	sb	a0,sp,+0000000E
	c.li	a5,00000001
	addi	s0,s0,+00000358
	addi	s2,s2,+000003C4
	bne	s1,a5,000000002301DA12

l2301D9B8:
	c.li	a1,00000006
	c.mv	a0,s2
	jal	ra,000000002301C486
	c.bnez	a0,000000002301DA12

l2301D9C2:
	jal	ra,000000002301CF6A
	c.mv	s0,a0
	c.bnez	a0,000000002301DA28

l2301D9CA:
	sb	s1,sp,+0000000D

l2301D9CE:
	c.lui	s4,00002000
	c.li	a1,00000007
	addi	a0,s4,+0000000B
	jal	ra,000000002301CCB8
	c.mv	s3,a0
	addi	s0,zero,-00000037
	c.beqz	a0,000000002301DA28

l2301D9E2:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.addi	a0,00000008
	jal	ra,000000002302587E
	c.mv	a1,s3
	addi	a0,s4,+0000000B
	jal	ra,000000002301D856
	c.li	a0,00000001
	jal	ra,000000002301CE5C
	c.mv	s0,a0
	c.bnez	a0,000000002301DA28

l2301DA00:
	addi	a2,s1,-00000001
	sltiu	a2,a2,+00000001
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002301C522
	c.j	000000002301DA28

l2301DA12:
	lbu	a4,sp,+0000000D
	c.li	a5,00000001
	bne	a4,a5,000000002301D9CE

l2301DA1C:
	addi	a0,s0,+00000001
	jal	ra,000000002301CEEE
	c.mv	s0,a0
	c.beqz	a0,000000002301D9CE

l2301DA28:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; bt_le_scan_update: 2301DA3A
;;   Called from:
;;     2301DD1E (in le_adv_report)
;;     2301E03C (in enh_conn_complete)
;;     2301E634 (in bt_finalize_init)
;;     2301F2CE (in bt_le_scan_stop)
;;     2302766C (in bt_conn_disconnect)
;;     230277D6 (in bt_conn_create_le)
bt_le_scan_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	lui	a0,0004200D
	c.li	a1,0000000B
	addi	a0,a0,+000003C4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,000000002301C486
	c.beqz	a0,000000002301DA5A

l2301DA56:
	c.li	a0,00000000
	c.j	000000002301DAB4

l2301DA5A:
	lui	s0,0004200D
	addi	s0,s0,+000003C4
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301DAAC

l2301DA6C:
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002302749E
	c.bnez	a0,000000002301DAC0

l2301DA76:
	c.li	a1,00000001
	jal	ra,000000002302749E
	c.mv	s1,a0
	c.beqz	a0,000000002301DA56

l2301DA80:
	c.lui	a1,FFFFE000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s0
	jal	ra,0000000023025522
	c.mv	a0,s1
	jal	ra,000000002302753A
	bne	s2,zero,000000002301DAC6

l2301DA94:
	c.lui	a1,00001000
	c.li	a2,00000012
	addi	a1,a1,-00000800

l2301DA9C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002301D94C

l2301DAAC:
	c.li	a0,00000000
	jal	ra,000000002301CE5C
	c.beqz	a0,000000002301DA6C

l2301DAB4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301DAC0:
	jal	ra,000000002302753A
	c.j	000000002301DA56

l2301DAC6:
	addi	a2,zero,+00000030
	addi	a1,zero,+00000060
	c.j	000000002301DA9C

;; le_adv_report: 2301DAD0
le_adv_report proc
	c.addi16sp	FFFFFFB0
	c.swsp	s5,00000098
	addi	s5,a0,+00000008
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	lui	s1,0004200D
	c.mv	s3,a0
	c.mv	a0,s5
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s7,00000094
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	addi	s1,s1,+00000358
	jal	ra,000000002302591E
	c.lui	s6,00010000
	c.mv	s4,a0
	c.addi	s6,FFFFFFFF
	addi	s8,s1,+0000006C

l2301DB0A:
	beq	s4,zero,000000002301DB24

l2301DB0E:
	lhu	a5,s3,+0000000C
	c.li	a4,00000008
	bltu	a4,a5,000000002301DB42

l2301DB18:
	lui	a0,00023075
	addi	a0,a0,-00000114
	jal	ra,0000000023003AC6

l2301DB24:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l2301DB42:
	c.li	a1,00000009
	c.mv	a0,s5
	jal	ra,000000002302590A
	lbu	a5,a0,+00000008
	addi	s11,a0,+00000001
	c.li	a4,00000001
	c.add	a5,a0
	lbu	s0,a5,+00000009
	lbu	a5,a0,+00000001
	c.mv	s2,a0
	c.mv	a1,s11
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002301DCEC

l2301DB6C:
	c.addi4spn	a0,00000008
	jal	ra,000000002301C49E
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	sb	a5,sp,+00000008

l2301DB7C:
	lui	a5,0004200E
	addi	s10,a5,+00000170
	lw	a4,s10,+00000000
	c.beqz	a4,000000002301DBC4

l2301DB8A:
	c.mv	a0,s5
	jal	ra,000000002302595E
	lbu	a3,s2,+00000008
	lhu	s9,s3,+0000000C
	lw	a5,s10,+00000000
	sh	a3,s3,+0000000C
	lbu	a2,s2,+00000000
	slli	a1,s0,00000018
	c.mv	s7,a0
	c.mv	a3,s5
	c.addi4spn	a0,00000008
	c.srai	a1,00000018
	c.jalr	a5
	lw	a0,s3,+00000010
	and	s7,s7,s6
	sh	s9,s3,+0000000C
	c.add	a0,s7
	sw	a0,s3,+00000008

l2301DBC4:
	c.li	a1,0000000B
	c.mv	a0,s8
	lbu	s0,s2,+00000000
	jal	ra,000000002301C486
	bne	a0,zero,000000002301DCD8

l2301DBD4:
	c.li	a5,00000001
	bltu	a5,s0,000000002301DCD8

l2301DBDA:
	c.li	a1,00000001
	c.addi4spn	a0,00000008
	jal	ra,000000002302749E
	c.mv	s0,a0
	beq	a0,zero,000000002301DCD8

l2301DBE8:
	c.li	a1,0000000A
	c.mv	a0,s8
	jal	ra,000000002301C486
	bne	a0,zero,000000002301DCFE

l2301DBF4:
	addi	s7,s0,+0000007E
	c.mv	a1,s11
	c.mv	a0,s7
	jal	ra,000000002301C49E
	lbu	s11,s0,+00000008
	c.li	a0,00000007
	add	a0,s11,a0
	add	a5,s1,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002301DC24

l2301DC18:
	c.addi	a0,00000001
	c.add	a0,s1
	jal	ra,000000002301CEEE
	bne	a0,zero,000000002301DD08

l2301DC24:
	c.li	a5,00000007
	add	s11,s11,a5
	c.lui	a0,00002000
	c.li	a1,00000019
	c.addi	a0,0000000D
	c.add	s11,s1
	lbu	s11,s11,+00000000
	jal	ra,000000002301CCB8
	c.mv	s9,a0
	c.beqz	a0,000000002301DD08

l2301DC3E:
	c.li	a1,00000019
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,00000019
	c.li	a1,00000000
	c.mv	s10,a0
	jal	ra,000000002306D1BC
	addi	a4,zero,+00000060
	sb	a4,s10,+00000000
	sb	zero,s10,+00000001
	sb	a4,s10,+00000002
	sb	zero,s10,+00000003
	lbu	a4,s1,+00000090
	c.beqz	a4,000000002301DC76

l2301DC6A:
	lbu	a2,s1,+00000091
	bltu	a4,a2,000000002301DC76

l2301DC72:
	addi	s7,s0,+00000070

l2301DC76:
	c.mv	a1,s7
	addi	a0,s10,+00000005
	jal	ra,000000002301C49E
	sb	s11,s10,+0000000C
	lhu	a4,s0,+00000088
	c.lui	a0,00002000
	c.li	a2,00000000
	sb	a4,s10,+0000000D
	c.srli	a4,00000008
	sb	a4,s10,+0000000E
	lhu	a4,s0,+0000008A
	c.mv	a1,s9
	c.addi	a0,0000000D
	sb	a4,s10,+0000000F
	c.srli	a4,00000008
	sb	a4,s10,+00000010
	lhu	a4,s0,+0000008C
	sb	a4,s10,+00000011
	c.srli	a4,00000008
	sb	a4,s10,+00000012
	lhu	a4,s0,+0000008E
	sb	a4,s10,+00000013
	c.srli	a4,00000008
	sb	a4,s10,+00000014
	jal	ra,000000002301CD52
	c.bnez	a0,000000002301DD08

l2301DCCA:
	c.mv	a0,s0
	c.li	a1,00000003
	jal	ra,00000000230270C8
	c.mv	a0,s0
	jal	ra,000000002302753A

l2301DCD8:
	lbu	a1,s2,+00000008
	c.mv	a0,s5
	c.addi	s4,FFFFFFFF
	c.addi	a1,00000001
	jal	ra,00000000230258F6
	andi	s4,s4,+000000FF
	c.j	000000002301DB0A

l2301DCEC:
	lbu	a0,s1,+00000008
	jal	ra,000000002301D32C
	c.mv	a1,a0
	c.addi4spn	a0,00000008
	jal	ra,000000002301C49E
	c.j	000000002301DB7C

l2301DCFE:
	c.li	a0,00000000
	jal	ra,000000002301CE5C
	beq	a0,zero,000000002301DBF4

l2301DD08:
	c.li	a5,0000001F
	sb	a5,s0,+0000000C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230270C8
	c.mv	a0,s0
	jal	ra,000000002302753A
	c.li	a0,00000000
	jal	ra,000000002301DA3A
	c.j	000000002301DCD8

;; le_ltk_request: 2301DD24
le_ltk_request proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a0,8(s1)
	lbu	s0,s1,+00000001
	lbu	a5,s1,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.mv	a0,s0
	jal	ra,0000000023027294
	c.bnez	a0,000000002301DD62

l2301DD46:
	lui	a0,00023075
	c.mv	a1,s0
	addi	a0,a0,-000000C0
	jal	ra,0000000023003AC6

l2301DD54:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2301DD62:
	lbu	a1,s1,+00000003
	lbu	a2,s1,+00000007
	lbu	a6,s1,+00000002
	lbu	a5,s1,+00000006
	c.slli	a1,08
	c.slli	a2,08
	or	a1,a1,a6
	c.or	a2,a5
	lbu	a6,s1,+00000004
	lbu	a5,s1,+00000008
	lbu	a3,s1,+0000000B
	c.slli	a6,10
	c.slli	a5,10
	or	a6,a6,a1
	c.or	a5,a2
	lbu	a1,s1,+00000005
	lbu	a2,s1,+00000009
	lbu	a7,s1,+0000000A
	c.slli	a3,08
	c.slli	a1,18
	c.slli	a2,18
	c.mv	a4,sp
	or	a3,a3,a7
	or	a1,a1,a6
	c.or	a2,a5
	c.mv	s2,a0
	jal	ra,000000002302309E
	c.beqz	a0,000000002301DE04

l2301DDB8:
	c.lui	s3,00002000
	c.li	a1,00000012
	addi	a0,s3,+0000001A
	jal	ra,000000002301CCB8
	c.mv	s1,a0
	c.bnez	a0,000000002301DDDC

l2301DDC8:
	lui	a0,00023075
	addi	a0,a0,-000000DC
	jal	ra,0000000023003AC6

l2301DDD4:
	c.mv	a0,s2
	jal	ra,000000002302753A
	c.j	000000002301DD54

l2301DDDC:
	c.li	a1,00000012
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,sp
	c.li	a2,00000010
	c.addi	a0,00000002
	jal	ra,000000002306CF80
	c.mv	a1,s1
	addi	a0,s3,+0000001A

l2301DDFE:
	jal	ra,000000002301D856
	c.j	000000002301DDD4

l2301DE04:
	c.lui	s3,00002000
	c.li	a1,00000002
	addi	a0,s3,+0000001B
	jal	ra,000000002301CCB8
	c.mv	s1,a0
	c.beqz	a0,000000002301DDC8

l2301DE14:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,s1
	addi	a0,s3,+0000001B
	c.j	000000002301DDFE

;; le_conn_param_neg_reply: 2301DE2E
;;   Called from:
;;     2301DF08 (in le_conn_param_req)
;;     2301DF2A (in le_conn_param_req)
le_conn_param_neg_reply proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.lui	s2,00002000
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.mv	s0,a0
	c.mv	s3,a1
	addi	a0,s2,+00000021
	c.li	a1,00000003
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002301CCB8
	c.bnez	a0,000000002301DE64

l2301DE4C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00023075
	addi	a0,a0,-000000F8
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2301DE64:
	c.mv	s1,a0
	c.li	a1,00000003
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	sb	s3,a0,+00000002
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.mv	a1,s1
	addi	a0,s2,+00000021
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002301D856

;; le_conn_param_req: 2301DE92
le_conn_param_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,8(a5)
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	lbu	a3,a5,+00000002
	c.slli	s0,08
	c.or	s0,a4
	lbu	a4,a5,+00000003
	c.mv	a0,s0
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+00000008
	lbu	a4,a5,+00000005
	lbu	a3,a5,+00000004
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000000A
	lbu	a4,a5,+00000007
	lbu	a3,a5,+00000006
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000000C
	lbu	a4,a5,+00000008
	lbu	a5,a5,+00000009
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000E
	jal	ra,0000000023027294
	c.bnez	a0,000000002301DF1C

l2301DEF6:
	lui	a0,00023075
	c.mv	a1,s0
	addi	a0,a0,-000000C0
	jal	ra,0000000023003AC6
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002301DE2E

l2301DF0C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2301DF1C:
	c.addi4spn	a1,00000008
	c.mv	s3,a0
	jal	ra,0000000023026AD6
	c.bnez	a0,000000002301DF36

l2301DF26:
	c.li	a1,0000001E
	c.mv	a0,s0
	jal	ra,000000002301DE2E

l2301DF2E:
	c.mv	a0,s3
	jal	ra,000000002302753A
	c.j	000000002301DF0C

l2301DF36:
	c.lui	s4,00002000
	c.li	a1,0000000E
	addi	a0,s4,+00000020
	jal	ra,000000002301CCB8
	c.mv	s2,a0
	c.beqz	a0,000000002301DF2E

l2301DF46:
	c.li	a1,0000000E
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	s1,a0
	c.li	a2,0000000E
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	sb	s0,s1,+00000000
	c.srli	s0,00000008
	sb	s0,s1,+00000001
	lbu	a5,sp,+00000008
	c.mv	a1,s2
	addi	a0,s4,+00000020
	sb	a5,s1,+00000002
	lbu	a5,sp,+00000009
	sb	a5,s1,+00000003
	lhu	a5,sp,+0000000A
	sb	a5,s1,+00000004
	c.srli	a5,00000008
	sb	a5,s1,+00000005
	lbu	a5,sp,+0000000C
	sb	a5,s1,+00000006
	lbu	a5,sp,+0000000D
	sb	a5,s1,+00000007
	lhu	a5,sp,+0000000E
	sb	a5,s1,+00000008
	c.srli	a5,00000008
	sb	a5,s1,+00000009
	jal	ra,000000002301D856
	c.j	000000002301DF2E

;; enh_conn_complete: 2301DFAA
;;   Called from:
;;     2301E224 (in le_enh_conn_complete)
;;     2301E302 (in le_legacy_conn_complete)
enh_conn_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lbu	s4,a0,+00000002
	lbu	a5,a0,+00000001
	lui	s2,0004200D
	c.mv	s1,a0
	c.lui	a1,FFFE0000
	addi	a0,s2,+00000358
	c.slli	s4,08
	c.addi	a1,FFFFFFFF
	addi	a0,a0,+0000006C
	or	s4,s4,a5
	jal	ra,0000000023025522
	lui	s3,0004200D
	slli	a5,a0,0000000E
	addi	s2,s2,+00000358
	addi	s3,s3,+000003C4
	bge	a5,zero,000000002301E002

l2301DFF2:
	lui	a1,0002301D
	c.li	a2,00000000
	addi	a1,a1,+0000071A
	c.li	a0,00000002
	jal	ra,0000000023023AD2

l2301E002:
	lbu	a5,s1,+00000000
	c.beqz	a5,000000002301E070

l2301E008:
	c.li	a0,00000000
	jal	ra,000000002301C970
	c.mv	s0,a0
	c.beqz	a0,000000002301E05E

l2301E012:
	lbu	a1,s1,+00000000
	addi	a5,zero,+0000003C
	sb	a1,a0,+0000000C
	bne	a1,a5,000000002301E042

l2301E022:
	addi	a1,zero,-00000041
	c.mv	a0,s3
	jal	ra,0000000023025522
	c.li	a1,00000000
	c.mv	a0,s0

l2301E030:
	jal	ra,00000000230270C8

l2301E034:
	c.mv	a0,s0
	jal	ra,000000002302753A
	c.li	a0,00000000
	jal	ra,000000002301DA3A
	c.j	000000002301E05E

l2301E042:
	c.li	a5,00000002
	bne	a1,a5,000000002301E04C

l2301E048:
	c.li	a1,00000000
	c.j	000000002301E030

l2301E04C:
	lui	a0,00023075
	addi	a0,a0,-00000340
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302753A

l2301E05E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2301E070:
	addi	s0,s1,+00000004
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,000000002301C49E
	lbu	a5,sp,+00000008
	c.li	s5,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s5,a5,000000002301E0F0

l2301E08C:
	c.li	a2,00000006
	addi	a1,s1,+00000011
	addi	a0,sp,+00000001
	sb	a5,sp,+00000008
	jal	ra,000000002306CF80
	sb	s5,sp,+00000000

l2301E0A2:
	c.addi4spn	a0,00000008
	jal	ra,000000002301C970
	lbu	a4,s1,+00000003
	c.li	a5,00000001
	c.mv	s0,a0
	bne	a4,a5,000000002301E0CC

l2301E0B4:
	addi	a1,zero,-00000041
	c.mv	a0,s3
	jal	ra,0000000023025522
	c.bnez	s0,000000002301E0CC

l2301E0C0:
	lbu	a0,s2,+00000008
	c.addi4spn	a1,00000008
	jal	ra,000000002302700E
	c.mv	s0,a0

l2301E0CC:
	lbu	a5,s1,+00000003
	c.bnez	a5,000000002301E0DE

l2301E0D2:
	c.bnez	s0,000000002301E0FA

l2301E0D4:
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	jal	ra,000000002302700E
	c.mv	s0,a0

l2301E0DE:
	c.bnez	s0,000000002301E0FA

l2301E0E0:
	lui	a0,00023075
	c.mv	a1,s4
	addi	a0,a0,-00000324
	jal	ra,0000000023003AC6
	c.j	000000002301E05E

l2301E0F0:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002301C49E
	c.j	000000002301E0A2

l2301E0FA:
	sh	s4,s0,+00000000
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000070
	jal	ra,000000002301C49E
	lbu	a5,s1,+00000018
	lbu	a4,s1,+00000017
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000086
	lbu	a5,s1,+0000001A
	lbu	a4,s1,+00000019
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008C
	lbu	a5,s1,+0000001C
	lbu	a4,s1,+0000001B
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008E
	lbu	a5,s1,+00000003
	c.li	a4,00000001
	sb	zero,s0,+0000000C
	sb	a5,s0,+00000003
	bne	a5,a4,000000002301E182

l2301E14A:
	c.mv	a1,sp
	addi	a0,s0,+00000077
	jal	ra,000000002301C49E
	lbu	a1,s0,+00000008
	c.li	a5,00000007
	addi	a0,s0,+0000007E
	add	a1,a1,a5
	c.add	a1,s2
	jal	ra,000000002301C49E
	c.li	a1,00000009
	c.mv	a0,s3
	jal	ra,000000002301C486
	c.beqz	a0,000000002301E182

l2301E172:
	lw	a5,s2,+0000007C
	andi	a5,a5,+00000040
	c.beqz	a5,000000002301E182

l2301E17C:
	c.li	a0,00000001
	jal	ra,000000002301D060

l2301E182:
	lbu	a5,s0,+00000003
	c.bnez	a5,000000002301E1BE

l2301E188:
	c.li	a1,0000000F
	c.mv	a0,s3
	jal	ra,000000002301C486
	c.beqz	a0,000000002301E1A0

l2301E192:
	c.lui	a1,FFFF8000
	sb	zero,s0,+00000008
	c.addi	a1,FFFFFFFF
	c.mv	a0,s3
	jal	ra,0000000023025522

l2301E1A0:
	c.mv	a1,sp
	addi	a0,s0,+0000007E
	jal	ra,000000002301C49E
	lbu	a1,s0,+00000008
	c.li	a5,00000007
	addi	a0,s0,+00000077
	add	a1,a1,a5
	c.add	a1,s2
	jal	ra,000000002301C49E

l2301E1BE:
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230270C8
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002301E034

l2301E1D0:
	lbu	a5,s1,+00000003
	c.beqz	a5,000000002301E1DE

l2301E1D6:
	lbu	a5,s2,+00000070
	c.andi	a5,00000008
	c.beqz	a5,000000002301E210

l2301E1DE:
	c.lui	s2,00002000
	c.li	a1,00000002
	addi	a0,s2,+00000016
	jal	ra,000000002301CCB8
	c.mv	s1,a0
	c.beqz	a0,000000002301E210

l2301E1EE:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s0,+00000000
	c.mv	a1,s1
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	addi	a0,s2,+00000016
	jal	ra,000000002301D856
	c.j	000000002301E034

l2301E210:
	lbu	a4,s0,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002301E034

l2301E21A:
	c.mv	a0,s0
	jal	ra,000000002301C53E
	c.j	000000002301E034

;; le_enh_conn_complete: 2301E222
le_enh_conn_complete proc
	c.lw	a0,8(a0)
	jal	zero,000000002301DFAA

;; le_legacy_conn_complete: 2301E228
le_legacy_conn_complete proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s0,0000001C
	c.lw	a0,8(s0)
	c.addi4spn	s1,00000014
	c.mv	a0,s1
	lbu	a5,s0,+00000000
	lbu	a4,s0,+00000001
	addi	a1,s0,+00000004
	sb	a5,sp,+00000010
	lbu	a5,s0,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000011
	c.srli	a5,00000008
	sb	a5,sp,+00000012
	lbu	a5,s0,+00000003
	sb	a5,sp,+00000013
	lbu	a5,s0,+0000000C
	lbu	a4,s0,+0000000B
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000027
	c.srli	a5,00000008
	sb	a5,sp,+00000028
	lbu	a5,s0,+0000000E
	lbu	a4,s0,+0000000D
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000029
	c.srli	a5,00000008
	sb	a5,sp,+0000002A
	lbu	a5,s0,+00000010
	lbu	a4,s0,+0000000F
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+0000002B
	c.srli	a5,00000008
	sb	a5,sp,+0000002C
	lbu	a5,s0,+00000011
	sb	a5,sp,+0000002D
	jal	ra,000000002301C49E
	c.mv	a1,sp
	c.li	a2,00000006
	addi	a0,sp,+0000001B
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	jal	ra,000000002306CF80
	lbu	a4,s0,+00000003
	c.li	a5,00000001
	c.mv	a1,s1
	c.li	a0,00000000
	bne	a4,a5,000000002301E2D6

l2301E2CE:
	lui	a5,0004200D
	lbu	a0,a5,+00000360

l2301E2D6:
	jal	ra,000000002301D32C
	c.mv	s0,a0
	beq	a0,s1,000000002301E310

l2301E2E0:
	c.li	a2,00000006
	addi	a1,sp,+00000015
	addi	a0,sp,+00000021
	jal	ra,000000002306CF80
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002301C49E
	lbu	a5,sp,+00000014
	c.addi	a5,00000002
	sb	a5,sp,+00000014

l2301E300:
	c.addi4spn	a0,00000010
	jal	ra,000000002301DFAA
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l2301E310:
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	addi	a0,sp,+00000021
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	jal	ra,000000002306CF80
	c.j	000000002301E300

;; hci_tx_thread: 2301E324
hci_tx_thread proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,0004200D
	lui	s1,0004200D
	c.swsp	s4,0000000C
	addi	s1,s1,+00000430
	c.lui	s4,FFFF1000
	addi	s0,s0,+00000358
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.addi	s4,FFFFFFFF
	addi	s7,s1,+00000014
	addi	s8,s0,+000000A8

l2301E35A:
	c.lw	s1,12(a5)
	c.mv	a0,s7
	and	a5,a5,s4
	c.sw	s1,12(a5)
	jal	ra,0000000023026F26
	addi	s3,a0,+00000001
	c.li	a2,FFFFFFFF
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023025C5E
	c.beqz	a0,000000002301E37C

l2301E378:
	jal	ra,000000002300149E

l2301E37C:
	lui	s5,0004200D
	lui	s6,00042011
	c.mv	s2,s1
	addi	s5,s5,+000003F0
	lui	s9,00023075
	addi	s6,s6,-0000009C

l2301E392:
	bne	s3,zero,000000002301E39C

l2301E396:
	jal	ra,0000000023025290
	c.j	000000002301E35A

l2301E39C:
	lw	a1,s2,+0000000C
	c.li	a5,00000002
	c.srli	a1,0000000C
	c.andi	a1,0000000F
	beq	a1,a5,000000002301E3B2

l2301E3AA:
	c.li	a5,00000004
	beq	a1,a5,000000002301E3B8

l2301E3B0:
	c.bnez	a1,000000002301E45A

l2301E3B2:
	c.addi	s2,00000014
	c.addi	s3,FFFFFFFF
	c.j	000000002301E392

l2301E3B8:
	lbu	a5,s2,+0000000C
	c.bnez	a5,000000002301E446

l2301E3BE:
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,00000000230256E4
	c.mv	s10,a0
	c.bnez	a0,000000002301E3CE

l2301E3CA:
	jal	ra,000000002300149E

l2301E3CE:
	c.li	a1,FFFFFFFF
	addi	a0,s0,+00000098
	jal	ra,00000000230251B2
	lw	a5,s0,+000000A4
	c.beqz	a5,000000002301E3F6

l2301E3DE:
	lui	a0,00023075
	addi	a0,a0,-000001B4
	jal	ra,0000000023003AC6
	lw	a0,s0,+000000A4
	jal	ra,000000002302574E
	sw	zero,s0,+000000A4

l2301E3F6:
	c.mv	a0,s10
	jal	ra,00000000230257FC
	sw	a0,s0,+000000A4
	c.mv	a0,s10
	jal	ra,000000002301D848
	c.mv	a1,a0
	c.beqz	a0,000000002301E3B2

l2301E40A:
	addi	a0,s9,-000005FC
	jal	ra,0000000023003AC6
	c.mv	a0,s5
	jal	ra,00000000230251D2
	c.mv	a0,s10
	jal	ra,000000002302555E
	c.li	a5,0000000C
	add	a0,a0,a5
	c.li	a2,00000000
	c.li	a1,0000001F
	c.add	a0,s6
	lhu	a0,a0,+00000002
	jal	ra,000000002301CA80
	lw	a0,s0,+000000A4
	jal	ra,000000002302574E
	c.mv	a0,s10
	sw	zero,s0,+000000A4
	jal	ra,000000002302574E
	c.j	000000002301E3B2

l2301E446:
	c.li	a4,00000001
	bne	a5,a4,000000002301E3B2

l2301E44C:
	lw	a0,s2,+00000010
	addi	a0,a0,-00000034
	jal	ra,0000000023027B66
	c.j	000000002301E3B2

l2301E45A:
	lui	a0,00023075
	addi	a0,a0,-00000194
	jal	ra,0000000023003AC6
	c.j	000000002301E3B2

;; bt_recv: 2301E468
;;   Called from:
;;     2301C412 (in recv_thread)
bt_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lbu	a1,a0,+00000014
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a1,a5,000000002301E520

l2301E47E:
	c.li	a5,00000003
	bne	a1,a5,000000002301E56C

l2301E484:
	lhu	a5,a0,+0000000C
	bltu	a1,a5,000000002301E490

l2301E48C:
	jal	ra,000000002300149E

l2301E490:
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,000000002302590A
	lbu	a2,a0,+00000003
	lbu	a5,a0,+00000002
	lbu	s1,a0,+00000001
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,a0,+00000000
	c.slli	s1,08
	lhu	a1,s0,+0000000C
	c.or	s1,a5
	slli	a0,s1,00000014
	c.srli	a0,00000014
	c.li	a5,FFFFFFFF
	sh	a0,s0,+00000016
	sb	a5,s0,+00000015
	beq	a2,a1,000000002301E4DE

l2301E4CA:
	lui	a0,00023075
	addi	a0,a0,-000003A4
	jal	ra,0000000023003AC6

l2301E4D6:
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.j	000000002301E512

l2301E4DE:
	jal	ra,0000000023027294
	c.mv	s2,a0
	c.bnez	a0,000000002301E4F8

l2301E4E6:
	lhu	a1,s0,+00000016
	lui	a0,00023075
	addi	a0,a0,-0000037C
	jal	ra,0000000023003AC6
	c.j	000000002301E4D6

l2301E4F8:
	jal	ra,0000000023027CEC
	sb	a0,s0,+00000015
	srli	a2,s1,0000000C
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,0000000023026D30
	c.mv	a0,s2
	jal	ra,000000002302753A

l2301E512:
	c.li	a0,00000000

l2301E514:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2301E520:
	lhu	a5,a0,+0000000C
	bltu	a1,a5,000000002301E52C

l2301E528:
	jal	ra,000000002300149E

l2301E52C:
	c.li	a1,00000002
	addi	a0,s0,+00000008
	jal	ra,000000002302590A
	lbu	a4,a0,+00000000
	c.li	a5,0000001A
	bltu	a5,a4,000000002301E556

l2301E540:
	c.li	a5,00000001
	sll	a5,a5,a4
	lui	a4,0000408C
	c.and	a5,a4
	c.beqz	a5,000000002301E556

l2301E54E:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044

l2301E556:
	lbu	a0,a0,+00000000
	lui	a2,00023075
	c.li	a3,00000005
	addi	a2,a2,-00000050
	c.mv	a1,s0
	jal	ra,000000002301C9E8
	c.j	000000002301E4D6

l2301E56C:
	lui	a0,00023075
	addi	a0,a0,-00000358
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.li	a0,FFFFFFEA
	c.j	000000002301E514

;; bt_recv_prio: 2301E582
bt_recv_prio proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a4,a5,000000002301E598

l2301E594:
	jal	ra,000000002300149E

l2301E598:
	lhu	a4,s0,+0000000C
	c.li	a5,00000001
	bltu	a5,a4,000000002301E5A6

l2301E5A2:
	jal	ra,000000002300149E

l2301E5A6:
	c.li	a1,00000002
	addi	a0,s0,+00000008
	jal	ra,000000002302590A
	lbu	a4,a0,+00000000
	c.li	a5,0000001A
	bltu	a5,a4,000000002301E5C8

l2301E5BA:
	c.li	a5,00000001
	sll	a5,a5,a4
	lui	a4,0000408C
	c.and	a5,a4
	c.bnez	a5,000000002301E5D0

l2301E5C8:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044

l2301E5D0:
	lbu	a0,a0,+00000000
	lui	a2,00023075
	c.mv	a1,s0
	c.li	a3,00000004
	addi	a2,a2,-00000028
	jal	ra,000000002301C9E8
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_hci_driver_register: 2301E5F4
;;   Called from:
;;     2301C436 (in hci_driver_init)
bt_hci_driver_register proc
	lui	a4,0004200D
	addi	a4,a4,+00000358
	lw	a5,a4,+000000B4
	c.bnez	a5,000000002301E616

l2301E602:
	c.lw	a0,12(a3)
	c.li	a5,FFFFFFEA
	c.beqz	a3,000000002301E612

l2301E608:
	c.lw	a0,16(a3)
	c.beqz	a3,000000002301E612

l2301E60C:
	sw	a0,a4,+000000B4
	c.li	a5,00000000

l2301E612:
	c.mv	a0,a5
	c.jr	ra

l2301E616:
	addi	a5,zero,-00000045
	c.j	000000002301E612

;; bt_finalize_init: 2301E61C
;;   Called from:
;;     2301EE04 (in init_work)
bt_finalize_init proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	c.li	a1,00000002
	addi	a0,a0,+000003C4
	c.swsp	ra,00000084
	jal	ra,00000000230254FA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002301DA3A

;; bt_delete_queue: 2301E638
;;   Called from:
;;     2301E694 (in bt_disable_action)
;;     2301E6A4 (in bt_disable_action)
;;     2301E6B0 (in bt_disable_action)
bt_delete_queue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.li	a1,00000000

l2301E642:
	jal	ra,00000000230256E4
	c.bnez	a0,000000002301E654

l2301E648:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230250E6

l2301E654:
	jal	ra,000000002302574E
	c.li	a1,00000000
	c.mv	a0,s0
	c.j	000000002301E642

;; bt_disable_action: 2301E65E
;;   Called from:
;;     2301E73C (in bt_disable)
bt_disable_action proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302893C
	lui	a0,0004200E
	addi	a0,a0,+00000174
	jal	ra,0000000023025264
	lui	a0,0004201A
	addi	a0,a0,+00000454
	jal	ra,0000000023025264
	lui	a0,0004201A
	addi	a0,a0,+0000047C
	jal	ra,0000000023025264
	lui	a0,0004200E
	addi	a0,a0,-000002E8
	jal	ra,000000002301E638
	lui	a0,0004201A
	addi	a0,a0,+00000470
	lui	s0,0004200D
	jal	ra,000000002301E638
	addi	s0,s0,+00000358
	addi	a0,s0,+000000A8
	jal	ra,000000002301E638
	lui	a0,0004200E
	addi	a0,a0,-000002DC
	jal	ra,00000000230250E6
	addi	a0,s0,+00000098
	jal	ra,0000000023025204
	lui	a0,0004201A
	addi	a0,a0,+00000464
	jal	ra,0000000023025204
	lui	a0,0004201A
	addi	a0,a0,+00000458
	jal	ra,0000000023025204
	addi	a0,s0,+00000084
	jal	ra,0000000023025204
	lui	a5,0004200E
	c.li	a4,00000001
	c.li	a1,FFFFFFFE
	addi	a0,s0,+0000006C
	sb	a4,a5,+00000168
	jal	ra,0000000023025522
	jal	ra,000000002302666C
	jal	ra,000000002300B0A4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_disable: 2301E70E
;;   Called from:
;;     230243B0 (in ble_disable)
bt_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023026B26
	c.bnez	a0,000000002301E740

l2301E71A:
	lui	s0,0004200D
	addi	s0,s0,+000003C4
	c.li	a1,0000000B
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301E740

l2301E72C:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301E740

l2301E736:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301E65E

l2301E740:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

;; bt_set_name: 2301E74A
;;   Called from:
;;     2301E898 (in bt_enable)
;;     23024BBA (in ble_set_device_name)
bt_set_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	jal	ra,000000002306D630
	c.li	a5,0000001D
	bltu	a5,a0,000000002301E7D8

l2301E760:
	lui	s0,0004200D
	addi	s0,s0,+00000358
	addi	s2,s0,+000000B8
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306D404
	c.bnez	a0,000000002301E784

l2301E776:
	c.li	a0,00000000

l2301E778:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2301E784:
	c.mv	a1,s1
	c.li	a2,0000001E
	c.mv	a0,s2
	jal	ra,000000002306D7AC
	addi	s0,s0,+0000006C
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.beqz	a0,000000002301E776

l2301E79C:
	c.li	a5,00000009
	c.mv	a0,s1
	sb	a5,sp,+00000000
	jal	ra,000000002306D630
	sb	a0,sp,+00000001
	c.lui	a0,00002000
	c.li	a5,00000001
	c.addi4spn	a1,00000008
	c.li	a2,00000001
	c.addi	a0,00000009
	c.swsp	s1,00000080
	c.swsp	sp,00000004
	c.swsp	a5,00000084
	jal	ra,000000002301D16E
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.beqz	a0,000000002301E776

l2301E7CA:
	c.li	a0,00000000
	jal	ra,000000002301D060
	c.li	a0,00000001
	jal	ra,000000002301D060
	c.j	000000002301E776

l2301E7D8:
	c.li	a0,FFFFFFF4
	c.j	000000002301E778

;; bt_enable: 2301E7DC
;;   Called from:
;;     230017EA (in blsync_ble_start)
bt_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200D
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,s0,+00000358
	lw	a5,a5,+000000B4
	c.bnez	a5,000000002301E814

l2301E7F6:
	lui	a0,00023075
	addi	a0,a0,-00000658
	jal	ra,0000000023003AC6
	c.li	s1,FFFFFFED

l2301E804:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301E814:
	addi	s0,s0,+00000358
	c.mv	s3,a0
	c.li	a1,00000001
	addi	a0,s0,+0000006C
	jal	ra,00000000230254FA
	c.andi	a0,00000001
	addi	s1,zero,-00000045
	c.bnez	a0,000000002301E804

l2301E82C:
	lui	a1,0002301F
	addi	a1,a1,-0000064C
	addi	a0,s0,+00000060
	jal	ra,0000000023025E74
	jal	ra,0000000023025E0C
	c.li	a2,00000001
	c.li	a1,00000001
	addi	a0,s0,+00000098
	jal	ra,000000002302517E
	c.li	a1,00000014
	addi	a0,s0,+000000A8
	jal	ra,0000000023025092
	lui	a5,0004200E
	lbu	a5,a5,+00000168
	lui	s2,0004200D
	c.bnez	a5,000000002301E880

l2301E864:
	lui	a0,0004200E
	c.li	a1,00000002
	addi	a0,a0,-000002B4
	jal	ra,0000000023025092
	lui	a0,0004200E
	c.li	a1,00000005
	addi	a0,a0,-00000298
	jal	ra,0000000023025092

l2301E880:
	lui	a0,0004201A
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000464
	jal	ra,000000002302517E
	lui	a0,00023075
	addi	a0,a0,-0000063C
	jal	ra,000000002301E74A
	lui	a3,0002301E
	lui	a1,00023075
	lui	a0,0004200E
	lui	a5,0004200E
	c.li	a4,0000001D
	addi	a3,a3,+00000324
	addi	a2,zero,+00000600
	addi	a1,a1,-0000062C
	addi	a0,a0,+00000174
	sw	s3,a5,+0000016C
	jal	ra,000000002302523A
	lw	a5,s0,+000000B4
	c.lw	a5,12(a5)
	c.jalr	a5
	c.mv	s1,a0
	c.beqz	a0,000000002301E8E2

l2301E8D2:
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,-0000061C
	jal	ra,0000000023003AC6
	c.j	000000002301E804

l2301E8E2:
	addi	a0,s2,+000003B8
	jal	ra,0000000023025E96
	c.j	000000002301E804

;; bt_get_name: 2301E8EC
;;   Called from:
;;     23024170 (in ble_get_device_name)
;;     23024240 (in ble_start_advertise)
;;     23028486 (in read_name)
bt_get_name proc
	lui	a0,0004200D
	addi	a0,a0,+00000410
	c.jr	ra

;; bt_id_create: 2301E8F6
;;   Called from:
;;     2301E9B0 (in bt_setup_id_addr)
bt_id_create proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s3,a0
	c.mv	s0,a1
	c.bnez	a0,000000002301E91C

l2301E908:
	c.li	s1,FFFFFFEA
	c.beqz	s0,000000002301E96A

l2301E90C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2301E91C:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301E908

l2301E930:
	lbu	a4,s3,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002301E94A

l2301E93A:
	lbu	a5,s3,+00000006
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,000000002301E95A

l2301E94A:
	lui	a0,00023075
	addi	a0,a0,-000004C0
	jal	ra,0000000023003AC6
	c.li	s1,FFFFFFEA
	c.j	000000002301E90C

l2301E95A:
	c.mv	a0,s3
	jal	ra,000000002301CC30
	addi	s1,zero,-00000045
	blt	a0,zero,000000002301E908

l2301E968:
	c.j	000000002301E90C

l2301E96A:
	lui	a0,0004200D
	addi	a0,a0,+00000358
	lbu	s2,a0,+00000007
	c.li	a5,00000001
	c.li	s1,FFFFFFF4
	beq	s2,a5,000000002301E90C

l2301E97E:
	addi	a5,s2,+00000001
	sb	a5,a0,+00000007
	c.mv	s1,s2
	bne	s2,zero,000000002301E9A2

l2301E98C:
	addi	s0,a0,+0000006C
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301E9A2

l2301E99A:
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,00000000230254FA

l2301E9A2:
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002301D7E4
	c.j	000000002301E90C

;; bt_setup_id_addr: 2301E9AC
;;   Called from:
;;     2301ED9A (in init_work)
bt_setup_id_addr proc
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,000000002301E8F6

;; init_work: 2301E9B4
init_work proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	jal	ra,00000000230266B4
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301E9C8:
	lui	s1,0004200D
	addi	a5,s1,+00000358
	lw	a5,a5,+000000B4
	addi	s1,s1,+00000358
	c.lw	a5,8(a5)
	c.andi	a5,00000001
	c.bnez	a5,000000002301EA1E

l2301E9DE:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,a0,-000003FD
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301E9F2:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a5)
	lbu	a5,a5,+00000000
	c.bnez	a5,000000002301EA18

l2301E9FC:
	addi	s0,s1,+0000006C
	lui	a5,0004200E
	c.mv	a0,s0
	sw	zero,a5,+00000170
	jal	ra,00000000230254AC
	andi	a1,a0,+0000000D
	c.mv	a0,s0
	jal	ra,00000000230254B0

l2301EA18:
	c.lwsp	a2,00000044
	jal	ra,000000002302574E

l2301EA1E:
	c.lui	s2,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000003
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301EA32:
	c.lwsp	a2,000000E4
	c.li	a2,00000008
	addi	a0,s1,+00000018
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,000000002306CF80
	c.lwsp	a2,00000044
	jal	ra,000000002302574E
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000001
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301EA5A:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a4,a5,+00000001
	sb	a4,s1,+00000010
	lbu	a4,a5,+00000003
	lbu	a3,a5,+00000002
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,s1,+00000012
	lbu	a4,a5,+00000004
	sb	a4,s1,+00000011
	lbu	a4,a5,+00000008
	lbu	a3,a5,+00000007
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,s1,+00000014
	lbu	a4,a5,+00000005
	lbu	a5,a5,+00000006
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s1,+00000016
	jal	ra,000000002302574E
	c.li	a1,00000003
	addi	a0,s1,+0000006C
	jal	ra,000000002301C486
	c.bnez	a0,000000002301EB12

l2301EAAE:
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000009
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301EB52

l2301EABE:
	c.lwsp	a2,000000E4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	c.lw	a5,8(s0)
	c.swsp	zero,00000008
	sh	zero,sp,+00000014
	c.addi	s0,00000001
	c.mv	a0,s0
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301EB0C

l2301EAD6:
	lui	a5,0004200E
	addi	a5,a5,-00000308
	c.lw	a5,0(a4)
	lhu	a5,a5,+00000004
	c.li	a2,00000006
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.swsp	a4,0000000C
	sh	a5,sp,+0000001C
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301EB0C

l2301EAF6:
	c.li	a2,00000006
	c.mv	a1,s0
	addi	a0,s1,+00000001
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	zero,s1,+00000000
	sb	a5,s1,+00000007

l2301EB0C:
	c.lwsp	a2,00000044
	jal	ra,000000002302574E

l2301EB12:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,00000002
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301EB52

l2301EB22:
	c.lwsp	a2,000000E4
	addi	a2,zero,+00000040
	addi	a0,s1,+00000020
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,000000002306CF80
	c.lwsp	a2,00000044
	jal	ra,000000002302574E
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000040
	c.bnez	a5,000000002301EB6C

l2301EB44:
	lui	a0,00023075
	addi	a0,a0,-00000160
	jal	ra,0000000023003AC6
	c.li	s0,FFFFFFED

l2301EB52:
	lui	a5,0004200E
	lw	a5,a5,+0000016C
	c.beqz	a5,000000002301EB60

l2301EB5C:
	c.mv	a0,s0
	c.jalr	a5

l2301EB60:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2301EB6C:
	c.lui	s2,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000003
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301EB52

l2301EB7E:
	c.lwsp	a2,000000E4
	c.li	a2,00000008
	addi	a0,s1,+00000070
	c.lw	a5,8(a1)
	c.addi	a1,00000001
	jal	ra,000000002306CF80
	c.lwsp	a2,00000044
	jal	ra,000000002302574E
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+00000002
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301EB52

l2301EBA4:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a4)
	lbu	a5,a4,+00000002
	lbu	a3,a4,+00000001
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s1,+00000080
	c.beqz	a5,000000002301EBC8

l2301EBBA:
	lbu	a2,a4,+00000003
	addi	a0,s1,+00000084
	c.mv	a1,a2
	jal	ra,000000002302517E

l2301EBC8:
	c.lwsp	a2,00000044
	jal	ra,000000002302574E
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000020
	beq	a5,zero,000000002301EDB0

l2301EBDA:
	lbu	a5,s1,+0000003C
	c.andi	a5,00000008
	c.beqz	a5,000000002301EC36

l2301EBE2:
	c.lui	a0,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,0000001C
	jal	ra,000000002301CD52
	c.mv	s0,a0
	c.bnez	a0,000000002301EB52

l2301EBF2:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a3,a5,+00000002
	lbu	a4,a5,+00000001
	lbu	a2,a5,+00000005
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,a5,+00000003
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,a5,+00000004
	c.slli	a4,18
	c.or	a4,a3
	lbu	a3,a5,+00000006
	c.slli	a3,08
	c.or	a2,a3
	lbu	a3,a5,+00000007
	lbu	a5,a5,+00000008
	c.sw	s1,120(a4)
	c.slli	a3,10
	c.or	a3,a2
	c.slli	a5,18
	c.or	a5,a3
	c.sw	s1,124(a5)
	jal	ra,000000002302574E

l2301EC36:
	lbu	a5,s1,+00000070
	andi	a5,a5,+00000040
	c.beqz	a5,000000002301EC64

l2301EC40:
	c.lui	a0,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,a0,+0000002A
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301EC54:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a5,a5,+00000001
	sb	a5,s1,+00000090
	jal	ra,000000002302574E

l2301EC64:
	c.lui	s2,00002000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	addi	a0,s2,+0000000F
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301EC78:
	c.lwsp	a2,00000044
	c.lw	a0,8(a5)
	lbu	a5,a5,+00000001
	sb	a5,s1,+00000092
	jal	ra,000000002302574E
	c.li	a1,00000008
	addi	a0,s2,+00000001
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	beq	a0,zero,000000002301EDC0

l2301EC98:
	c.li	a1,00000008
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lbu	a4,s1,+00000070
	c.mv	a2,a0
	addi	a3,zero,+00000202
	andi	a5,a4,+00000040
	c.bnez	a5,000000002301ECB2

l2301ECB0:
	c.li	a3,00000003

l2301ECB2:
	andi	a1,a4,+00000002
	ori	a0,a3,+0000002C
	c.bnez	a1,000000002301ECC0

l2301ECBC:
	ori	a0,a3,+0000000C

l2301ECC0:
	c.andi	a4,00000001
	c.beqz	a4,000000002301ECC8

l2301ECC4:
	ori	a0,a0,+00000010

l2301ECC8:
	lbu	a4,s1,+00000042
	c.li	a3,00000006
	c.andi	a4,00000006
	bne	a4,a3,000000002301ECD8

l2301ECD4:
	ori	a0,a0,+00000180

l2301ECD8:
	c.li	a1,00000000
	jal	ra,000000002301CC82
	c.lui	a0,00002000
	c.mv	a1,s0
	c.li	a2,00000000
	c.addi	a0,00000001
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301ECF0:
	lbu	a5,s1,+0000001C
	andi	a5,a5,+00000020
	c.bnez	a5,000000002301ED48

l2301ECFA:
	lhu	a5,s1,+00000080
	c.bnez	a5,000000002301ED48

l2301ED00:
	c.lui	a0,00001000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi	a0,00000005
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301ED12:
	lhu	a5,s1,+00000080
	c.bnez	a5,000000002301ED42

l2301ED18:
	c.lwsp	a2,000000E4
	addi	a0,s1,+00000084
	c.lw	a5,8(a4)
	lbu	a5,a4,+00000002
	lbu	a3,a4,+00000001
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s1,+00000080
	lbu	a2,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a2,08
	c.or	a2,a5
	c.mv	a1,a2
	jal	ra,000000002302517E

l2301ED42:
	c.lwsp	a2,00000044
	jal	ra,000000002302574E

l2301ED48:
	c.lui	a0,00001000
	c.li	a1,00000008
	addi	a0,a0,-000003FF
	jal	ra,000000002301CCB8
	c.mv	s2,a0
	addi	s0,zero,-00000037
	beq	a0,zero,000000002301EB52

l2301ED5E:
	c.li	a1,00000008
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lbu	a5,s1,+00000070
	c.mv	a2,a0
	c.andi	a5,00000001
	c.beqz	a5,000000002301EDEC

l2301ED70:
	lui	a5,00023075
	lw	a0,a5,-00000168
	lw	a1,a5,-00000164

l2301ED7C:
	jal	ra,000000002301CC82
	c.lui	a0,00001000
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,a0,-000003FF
	jal	ra,000000002301CD52
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301ED94:
	lbu	a5,s1,+00000007
	c.bnez	a5,000000002301EDFA

l2301ED9A:
	jal	ra,000000002301E9AC
	c.mv	s0,a0
	c.beqz	a0,000000002301EDFA

l2301EDA2:
	lui	a0,00023075
	addi	a0,a0,-00000138
	jal	ra,0000000023003AC6
	c.j	000000002301EB52

l2301EDB0:
	c.lui	s2,00001000
	c.li	a1,00000002
	addi	a0,s2,-00000393
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	c.bnez	a0,000000002301EDC6

l2301EDC0:
	addi	s0,zero,-00000037
	c.j	000000002301EB52

l2301EDC6:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a5,00000001
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.mv	a1,s0
	c.li	a2,00000000
	addi	a0,s2,-00000393
	jal	ra,000000002301CD52
	c.mv	s0,a0
	beq	a0,zero,000000002301EBDA

l2301EDEA:
	c.j	000000002301EB52

l2301EDEC:
	lui	a5,00023075
	lw	a0,a5,-00000170
	lw	a1,a5,-0000016C
	c.j	000000002301ED7C

l2301EDFA:
	jal	ra,0000000023027D0A
	c.mv	s0,a0
	bne	a0,zero,000000002301EB52

l2301EE04:
	jal	ra,000000002301E61C
	c.j	000000002301EB52

;; bt_addr_le_is_bonded: 2301EE0A
;;   Called from:
;;     230282CE (in disconnected_cb)
;;     2302A1DC (in bt_gatt_connected)
;;     2302A2F6 (in bt_gatt_disconnected)
bt_addr_le_is_bonded proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023023C56
	c.beqz	a0,000000002301EE22

l2301EE14:
	lhu	a0,a0,+0000000A
	sltu	a0,zero,a0

l2301EE1C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2301EE22:
	c.li	a0,00000000
	c.j	000000002301EE1C

;; bt_le_adv_start_internal: 2301EE26
;;   Called from:
;;     2301F144 (in bt_le_adv_start)
bt_le_adv_start_internal proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200D
	c.swsp	s2,00000020
	c.mv	s2,a0
	addi	a0,s0,+00000358
	c.swsp	s7,00000094
	addi	a0,a0,+0000006C
	c.mv	s7,a1
	c.li	a1,00000001
	c.swsp	s1,000000A0
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s10,00000010
	c.mv	s8,a2
	c.mv	s6,a3
	c.mv	s9,a4
	c.mv	s5,a5
	jal	ra,000000002301C486
	c.li	s1,FFFFFFF5
	c.beqz	a0,000000002301EE74

l2301EE62:
	addi	s0,s0,+00000358
	lbu	a0,s2,+00000000
	lbu	a5,s0,+00000007
	bltu	a0,a5,000000002301EE92

l2301EE72:
	c.li	s1,FFFFFFEA

l2301EE74:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.addi16sp	00000050
	c.jr	ra

l2301EE92:
	c.li	a5,00000007
	add	a0,a0,a5
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	c.add	a0,s0
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002301EE72

l2301EEAE:
	lbu	a5,s2,+00000001
	lui	s3,0004200D
	addi	s3,s3,+000003C4
	andi	a4,a5,+00000001
	c.bnez	a4,000000002301EED6

l2301EEC0:
	lbu	a3,s0,+00000010
	c.li	a4,00000008
	bltu	a4,a3,000000002301EED6

l2301EECA:
	lhu	a3,s2,+00000002
	addi	a4,zero,+0000009F
	bgeu	a4,a3,000000002301EE72

l2301EED6:
	lbu	a4,s0,+00000093
	c.bnez	a4,000000002301EEEC

l2301EEDC:
	andi	a4,a5,+00000040
	c.bnez	a4,000000002301EE72

l2301EEE2:
	slli	a4,a5,00000018
	c.srai	a4,00000018
	blt	a4,zero,000000002301EE72

l2301EEEC:
	c.andi	a5,00000010
	c.bnez	a5,000000002301EEF4

l2301EEF0:
	bne	s5,zero,000000002301EF0C

l2301EEF4:
	lhu	a4,s2,+00000002
	lhu	a5,s2,+00000004
	bltu	a5,a4,000000002301EE72

l2301EF00:
	c.li	a3,0000001F
	bgeu	a3,a4,000000002301EE72

l2301EF06:
	c.lui	a4,00004000
	bltu	a4,a5,000000002301EE72

l2301EF0C:
	c.li	a1,00000006
	c.mv	a0,s3
	jal	ra,000000002301C486
	c.mv	s1,a0
	bne	a0,zero,000000002301F0E8

l2301EF1A:
	c.li	a2,0000000F
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002306D1BC
	lhu	a5,s2,+00000002
	lbu	a4,s0,+00000008
	sh	a5,sp,+00000010
	lhu	a5,s2,+00000004
	sh	a5,sp,+00000012
	lui	a5,0004200E
	lbu	a5,a5,-0000044B
	sb	a5,sp,+0000001D
	lbu	a5,s2,+00000000
	beq	a4,a5,000000002301EF56

l2301EF4C:
	c.lui	a1,FFFF0000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s3
	jal	ra,0000000023025522

l2301EF56:
	lbu	a5,s2,+00000001
	slli	a4,a5,00000018
	andi	a5,a5,+00000040
	c.srai	a4,00000018
	c.beqz	a5,000000002301EFB4

l2301EF66:
	c.li	a5,00000003
	blt	a4,zero,000000002301EF6E

l2301EF6C:
	c.li	a5,00000001

l2301EF6E:
	sb	a5,sp,+0000001E

l2301EF72:
	lbu	s4,s2,+00000000
	sb	s4,s0,+00000008
	lbu	a5,s2,+00000001
	andi	s10,a5,+00000001
	beq	s10,zero,000000002301F07C

l2301EF86:
	c.li	a0,00000007
	add	a0,s4,a0
	add	a5,s0,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	beq	a4,a5,000000002301EFC0

l2301EF9A:
	c.li	a5,00000007
	add	s4,s4,a5
	c.add	s4,s0
	lbu	a5,s4,+00000000
	sb	a5,sp,+00000015
	bne	s5,zero,000000002301EFCE

l2301EFAE:
	sb	zero,sp,+00000014
	c.j	000000002301F006

l2301EFB4:
	c.li	a5,00000002
	blt	a4,zero,000000002301EF6E

l2301EFBA:
	sb	zero,sp,+0000001E
	c.j	000000002301EF72

l2301EFC0:
	c.addi	a0,00000001
	c.add	a0,s0
	jal	ra,000000002301CEEE
	c.mv	s1,a0
	c.beqz	a0,000000002301EF9A

l2301EFCC:
	c.j	000000002301EE74

l2301EFCE:
	lbu	a5,s2,+00000001
	c.andi	a5,00000010
	c.beqz	a5,000000002301EFD8

l2301EFD6:
	c.li	s10,00000004

l2301EFD8:
	c.mv	a1,s5
	addi	a0,sp,+00000016
	sb	s10,sp,+00000014
	jal	ra,000000002301C49E
	lbu	a5,s0,+00000070
	andi	a5,a5,+00000040
	c.beqz	a5,000000002301F006

l2301EFF0:
	lbu	a5,s2,+00000001
	andi	a5,a5,+00000020
	c.beqz	a5,000000002301F006

l2301EFFA:
	lbu	a5,sp,+00000015
	ori	a5,a5,+00000002
	sb	a5,sp,+00000015

l2301F006:
	c.lui	s4,00002000
	c.li	a1,0000000F
	addi	a0,s4,+00000006
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	addi	s1,zero,-00000037
	beq	a0,zero,000000002301EE74

l2301F01C:
	c.li	a2,0000000F
	c.addi4spn	a1,00000010
	c.addi	a0,00000008
	jal	ra,000000002302587E
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s4,+00000006
	jal	ra,000000002301CD52
	c.mv	s1,a0
	bne	a0,zero,000000002301EE74

l2301F038:
	beq	s5,zero,000000002301F0CA

l2301F03C:
	c.li	a0,00000001
	jal	ra,000000002301D060
	c.mv	s1,a0
	bne	a0,zero,000000002301EE74

l2301F048:
	lbu	a2,s2,+00000001
	c.mv	a0,s3
	c.li	a1,00000009
	c.srli	a2,00000001
	xori	a2,a2,+00000001
	c.andi	a2,00000001
	jal	ra,000000002301C522
	lbu	a2,s2,+00000001
	c.mv	a0,s3
	c.li	a1,00000007
	c.srli	a2,00000003
	c.andi	a2,00000001
	jal	ra,000000002301C522
	lbu	a2,s2,+00000001
	c.li	a1,00000008
	c.mv	a0,s3
	c.andi	a2,00000001
	jal	ra,000000002301C522
	c.j	000000002301EE74

l2301F07C:
	c.andi	a5,00000004
	c.beqz	a5,000000002301F0C0

l2301F080:
	c.li	a0,00000007
	add	a0,s4,a0
	add	a5,s0,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002301F09E

l2301F094:
	c.addi	a0,00000001
	c.add	a0,s0
	jal	ra,000000002301CEEE
	c.mv	s1,a0

l2301F09E:
	c.li	a5,00000007
	add	s4,s4,a5
	c.add	s0,s4
	lbu	a5,s0,+00000000

l2301F0AA:
	sb	a5,sp,+00000015
	bne	s1,zero,000000002301EE74

l2301F0B2:
	c.li	a5,00000002
	bne	s6,zero,000000002301F0BA

l2301F0B8:
	c.li	a5,00000003

l2301F0BA:
	sb	a5,sp,+00000014
	c.j	000000002301F006

l2301F0C0:
	jal	ra,000000002301CF6A
	c.mv	s1,a0
	c.li	a5,00000001
	c.j	000000002301F0AA

l2301F0CA:
	lbu	a4,s2,+00000001
	c.mv	a3,s9
	c.mv	a2,s6
	srli	a5,a4,00000003
	c.andi	a5,00000001
	c.andi	a4,00000001
	c.mv	a1,s8
	c.mv	a0,s7
	jal	ra,000000002301D288
	c.mv	s1,a0
	c.beqz	a0,000000002301F03C

l2301F0E6:
	c.j	000000002301EE74

l2301F0E8:
	addi	s1,zero,-00000045
	c.j	000000002301EE74

;; set_adv_channel_map: 2301F0EE
;;   Called from:
;;     23024366 (in ble_set_adv_channel)
set_adv_channel_map proc
	addi	a5,a0,-00000001
	andi	a5,a5,+000000FF
	c.li	a4,00000006
	bltu	a4,a5,000000002301F108

l2301F0FC:
	lui	a5,0004200E
	sb	a0,a5,+00000BB5
	c.li	a0,00000000
	c.jr	ra

l2301F108:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bt_get_local_public_address: 2301F10C
;;   Called from:
;;     23024D3A (in ble_read_local_address)
bt_get_local_public_address proc
	lui	a1,0004200D
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+00000358
	c.swsp	ra,00000084
	jal	ra,000000002301C49E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_get_local_ramdon_address: 2301F124
;;   Called from:
;;     23024D56 (in ble_read_local_address)
bt_get_local_ramdon_address proc
	lui	a1,0004200D
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+00000361
	c.swsp	ra,00000084
	jal	ra,000000002301C49E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_le_adv_start: 2301F13C
;;   Called from:
;;     230242AC (in ble_start_advertise)
bt_le_adv_start proc
	lbu	a5,a0,+00000001
	c.andi	a5,00000010
	c.bnez	a5,000000002301F148

l2301F144:
	jal	zero,000000002301EE26

l2301F148:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_le_adv_stop: 2301F14C
;;   Called from:
;;     2302414C (in ble_stop_advertise)
;;     2302768A (in bt_conn_disconnect)
bt_le_adv_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	s0,s0,+000003C4
	addi	a1,zero,-00000201
	c.mv	a0,s0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023025522
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.bnez	a0,000000002301F17E

l2301F170:
	c.li	s1,00000000

l2301F172:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301F17E:
	c.li	a0,00000000
	jal	ra,000000002301D060
	c.mv	s1,a0
	c.bnez	a0,000000002301F172

l2301F188:
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.beqz	a0,000000002301F170

l2301F192:
	c.li	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002301C486
	c.beqz	a0,000000002301F170

l2301F19C:
	jal	ra,000000002301CF6A
	c.j	000000002301F172

;; bt_le_scan_start: 2301F1A2
;;   Called from:
;;     23024B76 (in ble_start_scan)
bt_le_scan_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,0004200D
	addi	s3,s3,+00000358
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a0
	c.mv	s4,a1
	addi	a0,s3,+0000006C
	c.li	a1,00000001
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	jal	ra,000000002301C486
	c.li	s0,FFFFFFF5
	c.beqz	a0,000000002301F254

l2301F1CA:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	c.li	s0,FFFFFFEA
	bltu	a5,a4,000000002301F254

l2301F1D6:
	lbu	a5,s1,+00000001
	andi	a4,a5,-00000004
	c.bnez	a4,000000002301F254

l2301F1E0:
	lbu	a4,s3,+00000093
	lui	s2,0004200D
	addi	s2,s2,+000003C4
	c.bnez	a4,000000002301F1F2

l2301F1EE:
	c.andi	a5,00000002
	c.bnez	a5,000000002301F254

l2301F1F2:
	lhu	a2,s1,+00000002
	c.lui	a5,00004000
	c.addi	a5,FFFFFFFC
	addi	a4,a2,-00000004
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	s0,FFFFFFEA
	bltu	a5,a4,000000002301F254

l2301F208:
	lhu	a3,s1,+00000004
	addi	a4,a3,-00000004
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a4,000000002301F254

l2301F218:
	bltu	a2,a3,000000002301F254

l2301F21C:
	c.lui	s0,00001000
	addi	a1,s0,-00000800
	c.mv	a0,s2
	addi	s0,s0,-00000800
	jal	ra,00000000230254FA
	c.and	a0,s0
	addi	s0,zero,-00000045
	c.bnez	a0,000000002301F254

l2301F234:
	c.li	a1,0000000A
	c.mv	a0,s2
	jal	ra,000000002301C486
	c.beqz	a0,000000002301F266

l2301F23E:
	c.li	a0,00000000
	jal	ra,000000002301CE5C
	c.mv	s0,a0
	c.beqz	a0,000000002301F266

l2301F248:
	c.lui	a1,FFFFF000
	addi	a1,a1,+000007FF
	c.mv	a0,s2
	jal	ra,0000000023025522

l2301F254:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301F266:
	lbu	a2,s1,+00000001
	c.li	a1,0000000D
	c.mv	a0,s2
	c.andi	a2,00000001
	jal	ra,000000002301C522
	lbu	a2,s1,+00000001
	c.li	a1,0000000E
	c.mv	a0,s2
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002301C522
	lhu	a2,s1,+00000004
	lhu	a1,s1,+00000002
	lbu	a0,s1,+00000000
	jal	ra,000000002301D94C
	c.mv	s0,a0
	c.bnez	a0,000000002301F248

l2301F298:
	lui	a5,0004200E
	sw	s4,a5,+00000170
	c.j	000000002301F254

;; bt_le_scan_stop: 2301F2A2
;;   Called from:
;;     23024384 (in ble_stop_scan)
bt_le_scan_stop proc
	c.lui	a1,FFFFF000
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000007FF
	addi	a0,a0,+000003C4
	c.swsp	ra,00000084
	jal	ra,0000000023025522
	slli	a5,a0,00000014
	bge	a5,zero,000000002301F2D2

l2301F2C0:
	c.lwsp	a2,00000020
	lui	a5,0004200E
	sw	zero,a5,+00000170
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002301DA3A

l2301F2D2:
	c.lwsp	a2,00000020
	addi	a0,zero,-00000045
	c.addi	sp,00000010
	c.jr	ra

;; bt_set_tx_pwr: 2301F2DC
;;   Called from:
;;     23023D80 (in ble_set_tx_pwr)
bt_set_tx_pwr proc
	andi	a4,a0,+000000FF
	c.li	a5,00000014
	bltu	a5,a4,000000002301F334

l2301F2E6:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000001
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002306D1BC
	c.lui	s1,00010000
	c.li	a1,00000001
	addi	a0,s1,-0000039F
	sb	s0,sp,+0000000C
	jal	ra,000000002301CCB8
	c.mv	s0,a0
	addi	a0,zero,-00000037
	c.beqz	s0,000000002301F32A

l2301F312:
	c.li	a2,00000001
	c.addi4spn	a1,0000000C
	addi	a0,s0,+00000008
	jal	ra,000000002302587E
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,-0000039F
	jal	ra,000000002301CD52

l2301F32A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2301F334:
	c.li	a0,00000012
	c.jr	ra

;; bt_buf_get_rx_avail_cnt: 2301F338
;;   Called from:
;;     2302642E (in bl_onchiphci_rx_packet_handler)
bt_buf_get_rx_avail_cnt proc
	c.addi	sp,FFFFFFF0
	lui	a0,0004200E
	c.swsp	s0,00000004
	addi	s0,a0,-00000298
	addi	a0,a0,-00000298
	c.swsp	ra,00000084
	jal	ra,0000000023025178
	lhu	a5,s0,+0000000E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.add	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_buf_get_rx: 2301F35C
;;   Called from:
;;     2301F3BA (in bt_buf_get_cmd_complete)
;;     2302641E (in bl_onchiphci_rx_packet_handler)
;;     230265E8 (in bl_handle_queued_msg)
bt_buf_get_rx proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0004200E
	addi	a0,a0,-00000298
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230256D8
	c.mv	s0,a0
	c.beqz	a0,000000002301F382

l2301F376:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302572C
	sb	s1,s0,+00000014

l2301F382:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_buf_get_cmd_complete: 2301F38E
;;   Called from:
;;     230263E2 (in bl_onchiphci_rx_packet_handler)
bt_buf_get_cmd_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,0000000023025298
	lui	a5,0004200D
	addi	a5,a5,+00000358
	lw	s0,a5,+000000A4
	sw	zero,a5,+000000A4
	jal	ra,00000000230252A8
	c.lwsp	a2,00000064
	c.bnez	s0,000000002301F3BE

l2301F3B2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002301F35C

l2301F3BE:
	c.li	a5,00000001
	addi	a0,s0,+00000008
	sb	a5,s0,+00000014
	sh	zero,s0,+0000000C
	c.li	a1,00000001
	jal	ra,000000002302572C
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bt_pub_key_gen: 2301F3DC
;;   Called from:
;;     230238B6 (in bt_smp_init)
bt_pub_key_gen proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	a5,s0,+00000358
	lbu	a5,a5,+00000042
	c.li	a4,00000006
	c.andi	a5,00000006
	beq	a5,a4,000000002301F418

l2301F3FA:
	lui	a0,00023075
	addi	a0,a0,-000003F4
	jal	ra,0000000023003AC6
	addi	s2,zero,-00000023

l2301F40A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301F418:
	lui	s1,0004200E
	lw	a5,s1,+00000164
	addi	s0,s0,+00000358
	addi	s1,s1,+00000164
	c.beqz	a5,000000002301F43E

l2301F42A:
	c.lw	a0,0(a3)

l2301F42C:
	c.lw	a5,0(a4)
	beq	a3,a4,000000002301F440

l2301F432:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002301F43A

l2301F436:
	c.sw	a5,4(a0)
	c.j	000000002301F440

l2301F43A:
	c.mv	a5,a4
	c.j	000000002301F42C

l2301F43E:
	c.sw	s1,0(a0)

l2301F440:
	addi	s0,s0,+0000006C
	addi	a1,zero,+00000020
	c.mv	a0,s0
	jal	ra,00000000230254FA
	andi	a0,a0,+00000020
	c.li	s2,00000000
	c.bnez	a0,000000002301F40A

l2301F456:
	c.li	a1,FFFFFFEF
	c.mv	a0,s0
	jal	ra,0000000023025522
	c.lui	a0,00002000
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,+00000025
	jal	ra,000000002301CD52
	c.mv	s2,a0
	c.beqz	a0,000000002301F40A

l2301F470:
	lui	a0,00023075
	addi	a0,a0,-000003D0
	jal	ra,0000000023003AC6
	addi	a1,zero,-00000021
	c.mv	a0,s0
	jal	ra,0000000023025522
	sw	zero,s1,+00000000
	c.j	000000002301F40A

;; bt_pub_key_get: 2301F48C
;;   Called from:
;;     23021CBC (in smp_init)
bt_pub_key_get proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	c.li	a1,00000004
	addi	a0,a0,+000003C4
	c.swsp	ra,00000084
	jal	ra,000000002301C486
	c.li	a5,00000000
	c.beqz	a0,000000002301F4AA

l2301F4A2:
	lui	a5,00042012
	addi	a5,a5,-00000784

l2301F4AA:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_dh_key_gen: 2301F4B2
bt_dh_key_gen proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	s0,s0,+0000015C
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.beqz	a5,000000002301F4DC

l2301F4CA:
	c.li	a5,FFFFFFF0

l2301F4CC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2301F4DC:
	lui	s1,0004200D
	addi	s1,s1,+000003C4
	c.mv	s3,a1
	c.mv	s2,a0
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002301C486
	c.bnez	a0,000000002301F4CA

l2301F4F2:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002301C486
	addi	a5,zero,-00000031
	c.beqz	a0,000000002301F4CC

l2301F500:
	sw	s3,s0,+00000000
	c.lui	s3,00002000
	addi	a1,zero,+00000040
	addi	a0,s3,+00000026
	jal	ra,000000002301CCB8
	c.mv	s1,a0
	c.bnez	a0,000000002301F520

l2301F516:
	sw	zero,s0,+00000000
	addi	a5,zero,-00000037
	c.j	000000002301F4CC

l2301F520:
	addi	a1,zero,+00000040
	c.addi	a0,00000008
	jal	ra,000000002302586C
	addi	a2,zero,+00000040
	c.mv	a1,s2
	jal	ra,000000002306CF80
	c.li	a2,00000000
	c.mv	a1,s1
	addi	a0,s3,+00000026
	jal	ra,000000002301CD52
	c.mv	a5,a0
	c.beqz	a0,000000002301F4CC

l2301F544:
	sw	zero,s0,+00000000
	c.j	000000002301F4CC

;; sys_slist_remove: 2301F54A
;;   Called from:
;;     2301F5C2 (in __l2cap_lookup_ident)
;;     2301F634 (in l2cap_remove_rx_cid)
;;     2301F870 (in bt_l2cap_chan_remove)
sys_slist_remove proc
	c.lw	a2,0(a5)
	c.bnez	a1,000000002301F55E

l2301F54E:
	c.lw	a0,4(a4)
	c.sw	a0,0(a5)
	bne	a4,a2,000000002301F558

l2301F556:
	c.sw	a0,4(a5)

l2301F558:
	sw	zero,a2,+00000000
	c.jr	ra

l2301F55E:
	c.sw	a1,0(a5)
	c.lw	a0,4(a5)
	bne	a5,a2,000000002301F558

l2301F566:
	c.sw	a0,4(a1)
	c.j	000000002301F558

;; net_buf_frags_len: 2301F56A
;;   Called from:
;;     2301FBE0 (in l2cap_chan_le_send)
;;     2301FC36 (in l2cap_chan_le_send)
;;     2301FD2A (in l2cap_chan_le_send_sdu)
;;     230200EE (in l2cap_chan_le_recv_seg)
;;     23020188 (in l2cap_chan_le_recv_seg)
;;     230201AE (in l2cap_chan_le_recv_seg)
net_buf_frags_len proc
	c.mv	a5,a0
	c.li	a0,00000000

l2301F56E:
	c.bnez	a5,000000002301F572

l2301F570:
	c.jr	ra

l2301F572:
	lhu	a4,a5,+0000000C
	c.lw	a5,0(a5)
	c.add	a0,a4
	c.j	000000002301F56E

;; get_ident: 2301F57C
;;   Called from:
;;     2301F9BA (in l2cap_chan_send_credits.isra.10)
;;     2301FA28 (in l2cap_le_conn_req)
;;     2301FFEC (in bt_l2cap_update_conn_param)
;;     23020068 (in bt_l2cap_chan_disconnect)
get_ident proc
	lui	a5,0004200E
	lbu	a4,a5,+00000178
	addi	a5,a5,+00000178
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.beqz	a4,000000002301F59A

l2301F590:
	sb	a4,a5,+00000000
	lbu	a0,a5,+00000000
	c.jr	ra

l2301F59A:
	c.li	a4,00000001
	c.j	000000002301F590

;; __l2cap_lookup_ident: 2301F59E
;;   Called from:
;;     230205D0 (in l2cap_recv)
;;     2302080A (in l2cap_recv)
__l2cap_lookup_ident proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,64(s0)
	c.beqz	s0,000000002301F5C6

l2301F5A8:
	c.addi	s0,FFFFFFF8
	c.li	a5,00000000

l2301F5AC:
	c.beqz	s0,000000002301F5C6

l2301F5AE:
	lbu	a4,s0,+0000003C
	bne	a4,a1,000000002301F5D0

l2301F5B6:
	c.beqz	a2,000000002301F5C6

l2301F5B8:
	addi	a2,s0,+00000008
	c.mv	a1,a5
	addi	a0,a0,+00000040
	jal	ra,000000002301F54A

l2301F5C6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301F5D0:
	c.lw	s0,8(a4)
	c.beqz	a4,000000002301F5DE

l2301F5D4:
	addi	a5,s0,+00000008
	addi	s0,a4,-00000008
	c.j	000000002301F5AC

l2301F5DE:
	c.li	s0,00000000
	c.j	000000002301F5C6

;; l2cap_server_lookup_psm: 2301F5E2
;;   Called from:
;;     2302046A (in l2cap_recv)
l2cap_server_lookup_psm proc
	lui	a5,0004200E
	lw	a5,a5,+0000017C

l2301F5EA:
	c.beqz	a5,000000002301F5F0

l2301F5EC:
	c.addi	a5,FFFFFFF8
	c.bnez	a5,000000002301F5F4

l2301F5F0:
	c.mv	a0,a5
	c.jr	ra

l2301F5F4:
	lhu	a4,a5,+00000000
	beq	a4,a0,000000002301F5F0

l2301F5FC:
	c.lw	a5,8(a5)
	c.j	000000002301F5EA

;; l2cap_remove_rx_cid: 2301F600
;;   Called from:
;;     230206B6 (in l2cap_recv)
;;     23020754 (in l2cap_recv)
l2cap_remove_rx_cid proc
	addi	a5,a1,-00000040
	c.addi	sp,FFFFFFF0
	c.slli	a5,10
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.srli	a5,00000010
	addi	a4,zero,+0000003F
	c.li	s0,00000000
	bltu	a4,a5,000000002301F638

l2301F618:
	c.lw	a0,64(s0)
	c.beqz	s0,000000002301F638

l2301F61C:
	c.addi	s0,FFFFFFF8
	c.li	a5,00000000

l2301F620:
	c.beqz	s0,000000002301F638

l2301F622:
	lhu	a4,s0,+00000040
	addi	a2,s0,+00000008
	bne	a4,a1,000000002301F642

l2301F62E:
	c.mv	a1,a5
	addi	a0,a0,+00000040
	jal	ra,000000002301F54A

l2301F638:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301F642:
	c.lw	s0,8(s0)
	c.beqz	s0,000000002301F638

l2301F646:
	c.addi	s0,FFFFFFF8
	c.mv	a5,a2
	c.j	000000002301F620

;; l2cap_chan_sdu_sent: 2301F64C
l2cap_chan_sdu_sent proc
	c.lw	a1,4(a5)
	lw	t1,a5,+00000014
	beq	t1,zero,000000002301F65A

l2301F656:
	c.mv	a0,a1
	c.jr	t1

l2301F65A:
	c.jr	ra

;; l2cap_alloc_frag: 2301F65C
l2cap_alloc_frag proc
	c.lw	a1,4(a5)
	c.mv	a0,a1
	lw	t1,a5,+0000000C
	c.jr	t1

;; l2cap_connected: 2301F666
l2cap_connected proc
	c.jr	ra

;; l2cap_chan_destroy: 2301F668
l2cap_chan_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023025F66
	c.lw	s0,116(a0)
	c.beqz	a0,000000002301F684

l2301F67C:
	jal	ra,000000002302574E
	sw	zero,s0,+00000074

l2301F684:
	addi	s1,s0,+00000068

l2301F688:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230256E4
	c.bnez	a0,000000002301F6BA

l2301F692:
	addi	s1,s0,+0000008C

l2301F696:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230256E4
	c.bnez	a0,000000002301F6C0

l2301F6A0:
	c.lw	s0,120(a0)
	c.beqz	a0,000000002301F6B0

l2301F6A4:
	jal	ra,000000002302574E
	sw	zero,s0,+00000078
	sh	zero,s0,+0000007C

l2301F6B0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2301F6BA:
	jal	ra,000000002302574E
	c.j	000000002301F688

l2301F6C0:
	jal	ra,000000002302574E
	c.j	000000002301F696

;; l2cap_chan_tx_init: 2301F6C6
;;   Called from:
;;     2302050E (in l2cap_recv)
l2cap_chan_tx_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000014
	c.mv	s0,a0
	c.li	a1,00000000
	addi	a0,a0,+00000054
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	c.li	a1,00000000
	addi	a0,s0,+0000005C
	c.li	a2,FFFFFFFF
	jal	ra,000000002302517E
	addi	a0,s0,+00000068
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000014
	c.addi	sp,00000010
	jal	zero,0000000023025092

;; l2cap_chan_rx_init: 2301F6F6
;;   Called from:
;;     2302052C (in l2cap_recv)
l2cap_chan_rx_init proc
	lhu	a5,a0,+00000042
	c.bnez	a5,000000002301F704

l2301F6FC:
	addi	a5,zero,+000000F5
	sh	a5,a0,+00000042

l2301F704:
	lhu	a5,a0,+00000046
	lhu	a4,a0,+00000042
	c.bnez	a5,000000002301F724

l2301F70E:
	c.lw	a0,4(a5)
	c.lw	a5,12(a5)
	c.beqz	a5,000000002301F744

l2301F714:
	addi	a5,a4,+000000F6
	addi	a3,zero,+000000F7
	xor	a5,a5,a3

l2301F720:
	sh	a5,a0,+00000046

l2301F724:
	addi	a3,zero,+000000F5
	c.mv	a5,a4
	bgeu	a3,a4,000000002301F732

l2301F72E:
	addi	a5,zero,+000000F5

l2301F732:
	c.addi	a5,00000002
	sh	a5,a0,+00000044
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	addi	a0,a0,+00000048
	jal	zero,000000002302517E

l2301F744:
	c.li	a5,00000004
	c.j	000000002301F720

;; l2cap_accept: 2301F748
l2cap_accept proc
	lui	a5,00042012
	addi	a4,a5,-00000744
	c.lw	a4,0(a3)
	addi	a5,a5,-00000744
	c.beqz	a3,000000002301F778

l2301F758:
	lw	a4,a4,+00000098
	c.beqz	a4,000000002301F794

l2301F75E:
	c.mv	a1,a0
	lui	a0,00023075
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000000DC
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

l2301F778:
	c.li	a4,00000000

l2301F77A:
	addi	a3,zero,+00000098
	add	a4,a4,a3
	c.li	a0,00000000
	c.add	a5,a4
	lui	a4,0004200D
	addi	a4,a4,+00000480
	c.sw	a5,4(a4)
	c.sw	a1,0(a5)
	c.jr	ra

l2301F794:
	c.li	a4,00000001
	c.j	000000002301F77A

;; l2cap_create_le_sig_pdu.isra.7: 2301F798
;;   Called from:
;;     2301F9C4 (in l2cap_chan_send_credits.isra.10)
;;     2301FA36 (in l2cap_le_conn_req)
;;     2301FB32 (in l2cap_send_reject)
;;     2301FFF6 (in bt_l2cap_update_conn_param)
;;     23020076 (in bt_l2cap_chan_disconnect)
;;     2302044E (in l2cap_recv)
;;     230206F4 (in l2cap_recv)
;;     2302087E (in l2cap_recv)
l2cap_create_le_sig_pdu.isra.7 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s0,a2
	c.li	a1,00000004
	addi	a2,zero,+000007D0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	jal	ra,0000000023027A96
	c.mv	s1,a0
	c.bnez	a0,000000002301F7D8

l2301F7BA:
	lui	a0,00023075
	c.mv	a1,s2
	addi	a0,a0,+00000164
	jal	ra,0000000023003AC6

l2301F7C8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2301F7D8:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s0,a0,+00000002
	c.srli	s0,00000008
	sb	s2,a0,+00000000
	sb	s3,a0,+00000001
	sb	s0,a0,+00000003
	c.j	000000002301F7C8

;; l2cap_chan_tx_give_credits: 2301F7F4
;;   Called from:
;;     23020526 (in l2cap_recv)
;;     23020624 (in l2cap_recv)
;;     230207C6 (in l2cap_recv)
l2cap_chan_tx_give_credits proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.lui	s1,00010000
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.addi	s1,FFFFFFFF
	addi	s2,a0,+0000005C

l2301F808:
	c.addi	a1,FFFFFFFF
	c.slli	a1,10
	c.srli	a1,00000010
	bne	a1,s1,000000002301F83C

l2301F812:
	addi	s1,s0,+00000034
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,00000000230254FA
	c.andi	a0,00000001
	c.beqz	a0,000000002301F848

l2301F822:
	c.lw	s0,4(a5)
	lw	t1,a5,+00000018
	beq	t1,zero,000000002301F848

l2301F82C:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l2301F83C:
	c.mv	a0,s2
	c.swsp	a1,00000084
	jal	ra,00000000230251D2
	c.lwsp	a2,00000064
	c.j	000000002301F808

l2301F848:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; l2cap_disconnected: 2301F854
l2cap_disconnected proc
	c.jr	ra

;; bt_l2cap_chan_remove: 2301F856
;;   Called from:
;;     2301F8E2 (in l2cap_rtx_timeout)
;;     2301FACE (in bt_l2cap_encrypt_change)
;;     23020672 (in l2cap_recv)
bt_l2cap_chan_remove proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002301F860

l2301F85A:
	c.addi	a5,FFFFFFF8
	c.li	a4,00000000

l2301F85E:
	c.bnez	a5,000000002301F862

l2301F860:
	c.jr	ra

l2301F862:
	addi	a2,a5,+00000008
	bne	a5,a1,000000002301F874

l2301F86A:
	c.mv	a1,a4
	addi	a0,a0,+00000040
	jal	zero,000000002301F54A

l2301F874:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002301F860

l2301F878:
	c.addi	a5,FFFFFFF8
	c.mv	a4,a2
	c.j	000000002301F85E

;; bt_l2cap_chan_del: 2301F87E
;;   Called from:
;;     2301F8F0 (in l2cap_rtx_timeout)
;;     2301F90A (in bt_l2cap_disconnected)
;;     2301FAD4 (in bt_l2cap_encrypt_change)
;;     23020678 (in l2cap_recv)
;;     23020726 (in l2cap_recv)
bt_l2cap_chan_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002301F896

l2301F88A:
	c.lw	a0,4(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,000000002301F892

l2301F890:
	c.jalr	a5

l2301F892:
	sw	zero,s0,+00000000

l2301F896:
	c.lw	s0,12(a5)
	sb	zero,s0,+00000038
	sh	zero,s0,+0000003A
	c.beqz	a5,000000002301F8A6

l2301F8A2:
	c.mv	a0,s0
	c.jalr	a5

l2301F8A6:
	c.lw	s0,32(a5)
	c.beqz	a5,000000002301F8B8

l2301F8AA:
	addi	a0,s0,+00000010
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023025ECE

l2301F8B8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; l2cap_rtx_timeout: 2301F8C0
l2cap_rtx_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	s0,a0,-00000010
	c.mv	s1,a0
	lui	a0,00023075
	c.mv	a1,s0
	addi	a0,a0,+0000037C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	lw	a0,s1,-00000010
	c.mv	a1,s0
	jal	ra,000000002301F856
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301F87E

;; bt_l2cap_disconnected: 2301F8F4
;;   Called from:
;;     2302794E (in conn_update_timeout)
bt_l2cap_disconnected proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002301F924

l2301F8F8:
	addi	a0,a5,-00000008
	c.beqz	a0,000000002301F924

l2301F8FE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,0(s0)
	c.beqz	s0,000000002301F90A

l2301F908:
	c.addi	s0,FFFFFFF8

l2301F90A:
	jal	ra,000000002301F87E
	c.beqz	s0,000000002301F91C

l2301F910:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002301F916

l2301F914:
	c.addi	a5,FFFFFFF8

l2301F916:
	c.mv	a0,s0
	c.mv	s0,a5
	c.j	000000002301F90A

l2301F91C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2301F924:
	c.jr	ra

;; bt_l2cap_create_pdu_timeout: 2301F926
;;   Called from:
;;     2302152C (in smp_create_pdu.isra.7)
;;     2302B7A0 (in bt_att_create_pdu)
bt_l2cap_create_pdu_timeout proc
	c.addi	a1,00000004
	jal	zero,0000000023027A96

;; bt_l2cap_send_cb: 2301F92C
;;   Called from:
;;     2301F984 (in bt_l2cap_send)
;;     2301FCD8 (in l2cap_chan_le_send)
;;     2302156A (in smp_send.isra.9)
;;     230221D6 (in smp_error)
;;     23023730 (in bt_smp_start_security)
;;     2302B048 (in att_send)
;;     2302B0D8 (in att_send_req)
;;     2302B4E0 (in bt_att_encrypt_change)
;;     2302B804 (in att_indicate)
;;     2302B86C (in att_mtu_req)
;;     2302B8F0 (in send_err_rsp.part.7)
;;     2302BB14 (in att_read_group_req)
;;     2302BB6C (in att_read_mult_req)
;;     2302BC62 (in att_read_rsp)
;;     2302BDA8 (in att_read_type_req)
;;     2302BEBA (in att_find_type_req)
;;     2302BF62 (in att_find_info_req)
;;     2302C02E (in att_write_rsp.constprop.10)
bt_l2cap_send_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a2
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a1
	c.mv	s2,a0
	c.li	a1,00000004
	addi	a0,s1,+00000008
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	jal	ra,00000000230258C4
	lhu	a5,s1,+0000000C
	sb	s0,a0,+00000002
	c.srli	s0,00000008
	c.addi	a5,FFFFFFFC
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	sb	s0,a0,+00000003
	c.lwsp	s0,000000C4
	c.lwsp	s8,00000004
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a3,a4
	c.addi16sp	00000020
	jal	zero,0000000023026E68

;; bt_l2cap_send: 2301F980
;;   Called from:
;;     2301FA04 (in l2cap_chan_send_credits.isra.10)
;;     2301FAA2 (in l2cap_le_conn_req)
;;     2301FB74 (in l2cap_send_reject)
;;     2301FD06 (in l2cap_chan_le_send)
;;     23020046 (in bt_l2cap_update_conn_param)
;;     230200BA (in bt_l2cap_chan_disconnect)
;;     230204A2 (in l2cap_recv)
;;     230208AE (in l2cap_recv)
bt_l2cap_send proc
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,000000002301F92C

;; l2cap_chan_send_credits.isra.10: 2301F988
;;   Called from:
;;     230201E0 (in l2cap_chan_le_recv_seg)
;;     23020228 (in l2cap_chan_le_recv_seg)
;;     23020314 (in l2cap_rx_process)
l2cap_chan_send_credits.isra.10 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lhu	s0,a0,+00000046
	c.mv	s2,a0
	bgeu	a1,s0,000000002301F9A2

l2301F9A0:
	c.mv	s0,a1

l2301F9A2:
	c.slli	s0,10
	c.srli	s0,00000010
	c.lui	s3,00010000
	c.mv	s1,s0
	c.addi	s3,FFFFFFFF
	addi	s4,s2,+00000048

l2301F9B0:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s1,s3,000000002301FA08

l2301F9BA:
	jal	ra,000000002301F57C
	c.li	a2,00000004
	c.mv	a1,a0
	c.li	a0,00000016
	jal	ra,000000002301F798
	c.mv	a2,a0
	c.beqz	a0,000000002301FA10

l2301F9CC:
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	lhu	a5,s2,+00000040
	sb	s0,a0,+00000002
	c.srli	s0,00000008
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	sb	s0,a0,+00000003
	c.lwsp	s0,00000114
	c.lwsp	a2,00000084
	lw	a0,s2,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a1,00000005
	c.addi16sp	00000030
	jal	zero,000000002301F980

l2301FA08:
	c.mv	a0,s4
	jal	ra,00000000230251D2
	c.j	000000002301F9B0

l2301FA10:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; l2cap_le_conn_req: 2301FA20
;;   Called from:
;;     2301FAFA (in bt_l2cap_encrypt_change)
l2cap_le_conn_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002301F57C
	c.mv	a1,a0
	sb	a0,s0,+0000003C
	c.li	a2,0000000A
	c.li	a0,00000014
	jal	ra,000000002301F798
	c.beqz	a0,000000002301FAB0

l2301FA3C:
	c.mv	a2,a0
	c.li	a1,0000000A
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	lhu	a5,s0,+0000003A
	c.lui	a1,0000A000
	addi	a1,a1,-000003C0
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000040
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	lhu	a5,s0,+00000042
	sb	a5,a0,+00000004
	c.srli	a5,00000008
	sb	a5,a0,+00000005
	lhu	a5,s0,+00000044
	sb	a5,a0,+00000006
	c.srli	a5,00000008
	sb	a5,a0,+00000007
	lhu	a5,s0,+00000046
	sb	a5,a0,+00000008
	c.srli	a5,00000008
	sb	a5,a0,+00000009
	addi	a0,s0,+00000010
	jal	ra,0000000023025FC2
	c.lw	s0,0(a0)
	c.lwsp	a2,00000084
	c.li	a1,00000005
	jal	ra,000000002301F980
	c.li	a0,00000000

l2301FAA8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2301FAB0:
	c.li	a0,FFFFFFF4
	c.j	000000002301FAA8

;; bt_l2cap_encrypt_change: 2301FAB4
;;   Called from:
;;     2301C860 (in hci_encrypt_key_refresh_complete)
;;     2301C8B6 (in hci_encrypt_key_refresh_complete)
;;     2301C908 (in hci_encrypt_change)
;;     2301C968 (in hci_encrypt_change)
bt_l2cap_encrypt_change proc
	c.lw	a0,64(a5)
	c.bnez	a5,000000002301FB00

l2301FAB8:
	c.jr	ra

l2301FABA:
	lbu	a5,s0,+00000038
	bne	a5,s2,000000002301FAD8

l2301FAC2:
	lbu	a5,s0,+0000003C
	c.bnez	a5,000000002301FAD8

l2301FAC8:
	c.beqz	s1,000000002301FAF8

l2301FACA:
	c.lw	s0,0(a0)
	c.mv	a1,s0
	jal	ra,000000002301F856
	c.mv	a0,s0
	jal	ra,000000002301F87E

l2301FAD8:
	c.lw	s0,4(a5)
	c.lw	a5,8(a5)
	c.beqz	a5,000000002301FAE4

l2301FADE:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5

l2301FAE4:
	c.lw	s0,8(s0)
	c.beqz	s0,000000002301FAEC

l2301FAE8:
	c.addi	s0,FFFFFFF8

l2301FAEA:
	c.bnez	s0,000000002301FABA

l2301FAEC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2301FAF8:
	c.mv	a0,s0
	jal	ra,000000002301FA20
	c.j	000000002301FAD8

l2301FB00:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	addi	s0,a5,-00000008
	c.li	s2,00000001
	c.j	000000002301FAEA

;; l2cap_send_reject: 2301FB14
;;   Called from:
;;     230206E8 (in l2cap_recv)
l2cap_send_reject proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s5,00000080
	c.mv	s0,a2
	c.mv	s5,a0
	addi	a2,a4,+00000002
	c.li	a0,00000001
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s3,a3
	c.mv	s4,a4
	jal	ra,000000002301F798
	c.beqz	a0,000000002301FB78

l2301FB38:
	addi	s2,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002302586C
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	beq	s3,zero,000000002301FB5E

l2301FB54:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002302587E

l2301FB5E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a2,s1
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	tp,000000A8
	c.li	a1,00000005
	c.addi16sp	00000020
	jal	zero,000000002301F980

l2301FB78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; l2cap_chan_le_send: 2301FB8A
;;   Called from:
;;     2301FD56 (in l2cap_chan_le_send_sdu)
;;     2301FDB6 (in l2cap_chan_le_send_sdu)
l2cap_chan_le_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s6,00000000
	addi	s6,a0,+0000005C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a1
	c.mv	s2,a0
	c.li	a1,00000000
	c.mv	a0,s6
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s3,a2
	jal	ra,00000000230251B2
	bne	a0,zero,000000002301FD0C

l2301FBB2:
	lhu	a5,s0,+0000000C
	lhu	a4,s2,+00000058
	c.add	a5,s3
	bltu	a4,a5,000000002301FC12

l2301FBC0:
	addi	s1,s0,+00000008
	c.mv	a0,s1
	jal	ra,000000002302595E
	addi	a5,s3,+00000009
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a0,a5,000000002301FC12

l2301FBD6:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002301FC12

l2301FBDA:
	beq	s3,zero,000000002301FBF0

l2301FBDE:
	c.mv	a0,s0
	jal	ra,000000002301F56A
	slli	a1,a0,00000010
	c.srli	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230258D8

l2301FBF0:
	c.mv	a0,s0
	jal	ra,00000000230257FC
	c.mv	s1,a0
	c.bnez	a0,000000002301FC88

l2301FBFA:
	c.li	s3,FFFFFFF4

l2301FBFC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2301FC12:
	lbu	a0,s0,+00000006
	jal	ra,000000002302554C
	c.li	a1,00000000
	jal	ra,00000000230256D8
	c.mv	s1,a0
	c.beqz	a0,000000002301FC9A

l2301FC24:
	c.li	a1,00000009
	c.addi	a0,00000008
	jal	ra,000000002302572C

l2301FC2C:
	addi	s5,s1,+00000008
	beq	s3,zero,000000002301FC46

l2301FC34:
	c.mv	a0,s0
	jal	ra,000000002301F56A
	slli	a1,a0,00000010
	c.srli	a1,00000010
	c.mv	a0,s5
	jal	ra,00000000230258AA

l2301FC46:
	c.mv	a0,s5
	jal	ra,0000000023025968
	lhu	a5,s2,+00000058
	sub	a5,a5,s3
	bgeu	a0,a5,000000002301FCA8

l2301FC58:
	c.mv	a0,s5
	jal	ra,0000000023025968
	c.slli	a0,10

l2301FC60:
	lhu	a1,s0,+0000000C
	c.srli	a0,00000010
	bgeu	a0,a1,000000002301FC6C

l2301FC6A:
	c.mv	a1,a0

l2301FC6C:
	slli	s4,a1,00000010
	c.lw	s0,8(a1)
	srli	s4,s4,00000010
	c.mv	a2,s4
	c.mv	a0,s5
	jal	ra,000000002302587E
	c.mv	a1,s4
	addi	a0,s0,+00000008
	jal	ra,00000000230258F6

l2301FC88:
	lw	a0,s2,+00000000
	c.bnez	a0,000000002301FCAE

l2301FC8E:
	c.mv	a0,s0
	jal	ra,000000002302574E
	addi	s3,zero,-00000036
	c.j	000000002301FBFC

l2301FC9A:
	c.li	a2,FFFFFFFF
	c.li	a1,00000004
	jal	ra,0000000023027A96
	c.mv	s1,a0
	c.bnez	a0,000000002301FC2C

l2301FCA6:
	c.j	000000002301FBFA

l2301FCA8:
	slli	a0,a5,00000010
	c.j	000000002301FC60

l2301FCAE:
	lhu	a5,s1,+0000000C
	lhu	a1,s2,+00000054
	sub	s3,a5,s3
	beq	s0,s1,000000002301FCC4

l2301FCBE:
	lhu	a5,s0,+0000000C
	c.bnez	a5,000000002301FD04

l2301FCC4:
	lw	a5,s2,+00000004
	c.lw	a5,20(a5)
	c.beqz	a5,000000002301FD04

l2301FCCC:
	lui	a3,0002301F
	c.mv	a4,s2
	addi	a3,a3,+0000064C
	c.mv	a2,s1
	jal	ra,000000002301F92C

l2301FCDC:
	c.mv	a0,s6
	jal	ra,0000000023025234
	bne	a0,zero,000000002301FBFC

l2301FCE6:
	addi	s0,s2,+00000034
	c.li	a1,FFFFFFFE
	c.mv	a0,s0
	jal	ra,0000000023025522
	lw	a5,s2,+00000004
	c.lw	a5,24(a5)
	beq	a5,zero,000000002301FBFC

l2301FCFC:
	c.mv	a1,s0
	c.mv	a0,s2
	c.jalr	a5
	c.j	000000002301FBFC

l2301FD04:
	c.mv	a2,s1
	jal	ra,000000002301F980
	c.j	000000002301FCDC

l2301FD0C:
	c.li	s3,FFFFFFF5
	c.j	000000002301FBFC

;; l2cap_chan_le_send_sdu: 2301FD10
;;   Called from:
;;     230207E4 (in l2cap_recv)
l2cap_chan_le_send_sdu proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a1,0(s0)
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	a0,s0
	sh	a2,sp,+0000000E
	jal	ra,000000002301F56A
	lhu	a5,sp,+0000000E
	lhu	a4,s2,+00000056
	addi	s1,zero,-00000024
	add	s4,a5,a0
	blt	a4,s4,000000002301FD78

l2301FD42:
	lhu	a4,s0,+0000000C
	c.bnez	a4,000000002301FD4E

l2301FD48:
	c.lw	s0,0(a4)
	c.beqz	a4,000000002301FD4E

l2301FD4C:
	c.mv	s0,a4

l2301FD4E:
	c.bnez	a5,000000002301FD8E

l2301FD50:
	c.li	a2,00000002
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002301FB8A
	c.mv	s1,a0
	bge	a0,zero,000000002301FD8A

l2301FD60:
	c.li	a5,FFFFFFF5
	bne	s1,a5,000000002301FD74

l2301FD66:
	c.li	a2,00000002
	addi	a1,sp,+0000000E
	addi	a0,s0,+00000014
	jal	ra,000000002306CF80

l2301FD74:
	sw	s0,s3,+00000000

l2301FD78:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2301FD8A:
	sh	a0,sp,+0000000E

l2301FD8E:
	c.li	s1,00000000

l2301FD90:
	lhu	a5,sp,+0000000E
	blt	a5,s4,000000002301FDA0

l2301FD98:
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.j	000000002301FD78

l2301FDA0:
	lhu	a5,s0,+0000000C
	c.bnez	a5,000000002301FDB0

l2301FDA6:
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,000000002302584A
	c.mv	s0,a0

l2301FDB0:
	c.li	a2,00000000
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002301FB8A
	c.mv	s1,a0
	blt	a0,zero,000000002301FD60

l2301FDC0:
	lhu	a5,sp,+0000000E
	c.add	a5,a0
	sh	a5,sp,+0000000E
	c.j	000000002301FD90

;; bt_l2cap_le_lookup_tx_cid: 2301FDCC
;;   Called from:
;;     230204AC (in l2cap_recv)
;;     2302077E (in l2cap_recv)
;;     2302212E (in smp_check_complete.part.16)
;;     2302B50C (in att_pdu_sent)
;;     2302B5DA (in att_req_sent)
;;     2302B610 (in att_cfm_sent)
bt_l2cap_le_lookup_tx_cid proc
	c.lw	a0,64(a0)

l2301FDCE:
	c.beqz	a0,000000002301FDD4

l2301FDD0:
	c.addi	a0,FFFFFFF8
	c.bnez	a0,000000002301FDD6

l2301FDD4:
	c.jr	ra

l2301FDD6:
	lhu	a5,a0,+00000054
	beq	a5,a1,000000002301FDD4

l2301FDDE:
	c.lw	a0,8(a0)
	c.j	000000002301FDCE

;; bt_l2cap_le_lookup_rx_cid: 2301FDE2
;;   Called from:
;;     2301FE22 (in l2cap_chan_add)
;;     2301FF88 (in bt_l2cap_recv)
;;     23020966 (in smp_chan_get)
;;     2302B596 (in att_chan_get)
bt_l2cap_le_lookup_rx_cid proc
	c.lw	a0,64(a0)

l2301FDE4:
	c.beqz	a0,000000002301FDEA

l2301FDE6:
	c.addi	a0,FFFFFFF8
	c.bnez	a0,000000002301FDEC

l2301FDEA:
	c.jr	ra

l2301FDEC:
	lhu	a5,a0,+00000040
	beq	a5,a1,000000002301FDEA

l2301FDF4:
	c.lw	a0,8(a0)
	c.j	000000002301FDE4

;; l2cap_chan_add: 2301FDF8
;;   Called from:
;;     2301FF0C (in bt_l2cap_connected)
;;     23020502 (in l2cap_recv)
l2cap_chan_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	s3,a2
	c.beqz	a1,000000002301FE14

l2301FE0E:
	lhu	a5,a1,+00000040
	c.bnez	a5,000000002301FE2C

l2301FE14:
	addi	s1,zero,+00000040
	addi	s4,zero,+00000080

l2301FE1C:
	c.beqz	s0,000000002301FEA0

l2301FE1E:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002301FDE2
	c.bnez	a0,000000002301FEA0

l2301FE28:
	sh	s1,s0,+00000040

l2301FE2C:
	lui	a1,00023020
	addi	a1,a1,-00000740
	addi	a0,s0,+00000010
	jal	ra,0000000023025EA4
	sw	zero,s0,+00000008
	lw	a4,s2,+00000044
	addi	a5,s0,+00000008
	c.bnez	a4,000000002301FEBA

l2301FE4A:
	sw	a5,s2,+00000044
	sw	a5,s2,+00000040

l2301FE52:
	lhu	a5,s0,+00000040
	sw	s2,s0,+00000000
	sw	s3,s0,+0000000C
	addi	a5,a5,-00000040
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+0000003F
	c.li	s1,00000001
	bltu	a4,a5,000000002301FE8E

l2301FE70:
	lui	a1,00023020
	addi	a1,a1,+0000022E
	addi	a0,s0,+00000080
	jal	ra,0000000023025E74
	c.li	a1,00000014
	addi	a0,s0,+0000008C
	jal	ra,0000000023025092
	sb	s1,s0,+00000038

l2301FE8E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2301FEA0:
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s1,s4,000000002301FE1C

l2301FEAA:
	lui	a0,00023075
	addi	a0,a0,+00000108
	jal	ra,0000000023003AC6
	c.li	s1,00000000
	c.j	000000002301FE8E

l2301FEBA:
	c.sw	a4,0(a5)
	sw	a5,s2,+00000044
	c.j	000000002301FE52

;; bt_l2cap_connected: 2301FEC2
bt_l2cap_connected proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s0,0004200E
	lui	s1,0004200E
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s0,s0,-00000250
	addi	s1,s1,-0000022C

l2301FEDE:
	bltu	s0,s1,000000002301FEEE

l2301FEE2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2301FEEE:
	c.lw	s0,4(a5)
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	c.jalr	a5
	blt	a0,zero,000000002301FF36

l2301FEFA:
	c.lwsp	a2,00000064
	lhu	a5,s0,+00000000
	c.li	a2,00000000
	c.mv	a0,s2
	sh	a5,a1,+00000040
	sh	a5,a1,+00000054
	jal	ra,000000002301FDF8
	c.beqz	a0,000000002301FEE2

l2301FF12:
	c.lwsp	a2,00000044
	c.lw	a0,4(a5)
	c.lw	a5,0(a5)
	c.beqz	a5,000000002301FF1C

l2301FF1A:
	c.jalr	a5

l2301FF1C:
	c.lwsp	a2,00000044
	c.li	a1,00000001
	addi	a0,a0,+00000034
	jal	ra,00000000230254FA
	c.lwsp	a2,00000044
	c.lw	a0,4(a5)
	c.lw	a5,24(a5)
	c.beqz	a5,000000002301FF36

l2301FF30:
	addi	a1,a0,+00000034
	c.jalr	a5

l2301FF36:
	c.addi	s0,0000000C
	c.j	000000002301FEDE

;; bt_l2cap_recv: 2301FF3A
;;   Called from:
;;     23026E64 (in bt_conn_recv)
bt_l2cap_recv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a1,+0000000C
	c.li	a5,00000003
	c.mv	s0,a1
	bltu	a5,a4,000000002301FF6C

l2301FF50:
	lui	a0,00023075
	addi	a0,a0,+00000094
	jal	ra,0000000023003AC6

l2301FF5C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302574E

l2301FF6C:
	c.mv	s2,a0
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,000000002302590A
	lbu	s1,a0,+00000003
	lbu	a5,a0,+00000002
	c.mv	a0,s2
	c.slli	s1,08
	c.or	s1,a5
	c.mv	a1,s1
	jal	ra,000000002301FDE2
	c.mv	s2,a0
	c.bnez	a0,000000002301FFA0

l2301FF90:
	lui	a0,00023075
	c.mv	a1,s1
	addi	a0,a0,+000000B4
	jal	ra,0000000023003AC6
	c.j	000000002301FF5C

l2301FFA0:
	lhu	a5,a0,+00000040
	addi	a4,zero,+0000003F
	addi	a5,a5,-00000040
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,000000002301FFD6

l2301FFB4:
	c.mv	a0,s0
	jal	ra,00000000230257FC
	c.mv	a1,a0
	addi	a0,s2,+0000008C
	jal	ra,0000000023025734
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a0,s2,+00000080
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023025E96

l2301FFD6:
	c.lw	a0,4(a5)
	c.mv	a1,s0
	c.lw	a5,16(a5)
	c.jalr	a5
	c.j	000000002301FF5C

;; bt_l2cap_update_conn_param: 2301FFE0
;;   Called from:
;;     2301C688 (in le_conn_update_complete)
;;     230278FC (in send_conn_le_param_update)
bt_l2cap_update_conn_param proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s1,a0
	jal	ra,000000002301F57C
	c.mv	a1,a0
	c.li	a2,00000008
	c.li	a0,00000012
	jal	ra,000000002301F798
	c.beqz	a0,0000000023020056

l2301FFFC:
	c.mv	a2,a0
	c.li	a1,00000008
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	lhu	a5,s0,+00000000
	c.lwsp	a2,00000084
	c.li	a1,00000005
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000002
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	lhu	a5,s0,+00000004
	sb	a5,a0,+00000004
	c.srli	a5,00000008
	sb	a5,a0,+00000005
	lhu	a5,s0,+00000006
	sb	a5,a0,+00000006
	c.srli	a5,00000008
	sb	a5,a0,+00000007
	c.mv	a0,s1
	jal	ra,000000002301F980
	c.li	a0,00000000

l2302004C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23020056:
	c.li	a0,FFFFFFF4
	c.j	000000002302004C

;; bt_l2cap_init: 2302005A
;;   Called from:
;;     23027D62 (in bt_conn_init)
bt_l2cap_init proc
	c.jr	ra

;; bt_l2cap_chan_disconnect: 2302005C
;;   Called from:
;;     2302012A (in l2cap_chan_le_recv_seg)
;;     23020218 (in l2cap_chan_le_recv_seg)
;;     230202A6 (in l2cap_rx_process)
;;     230207BE (in l2cap_recv)
bt_l2cap_chan_disconnect proc
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230200CE

l23020060:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s0,a0
	jal	ra,000000002301F57C
	c.mv	a1,a0
	sb	a0,s0,+0000003C
	c.li	a2,00000004
	c.li	a0,00000006
	jal	ra,000000002301F798
	c.mv	a2,a0
	c.li	a0,FFFFFFF4
	c.beqz	a2,00000000230200C6

l23020080:
	addi	a0,a2,+00000008
	c.li	a1,00000004
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	lhu	a5,s0,+00000040
	addi	a1,zero,+000007D0
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000054
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	addi	a0,s0,+00000010
	jal	ra,0000000023025FC2
	c.lw	s0,0(a0)
	c.lwsp	a2,00000084
	c.li	a1,00000005
	jal	ra,000000002301F980
	c.li	a5,00000004
	sb	a5,s0,+00000038
	c.li	a0,00000000

l230200C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230200CE:
	addi	a0,zero,-00000039
	c.jr	ra

;; l2cap_chan_le_recv_seg: 230200D4
;;   Called from:
;;     230202BC (in l2cap_rx_process)
l2cap_chan_le_recv_seg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	lw	s3,a0,+00000078
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a0,s3
	sh	zero,sp,+0000000E
	jal	ra,000000002301F56A
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.mv	s1,a0
	c.beqz	a5,000000002302010A

l230200FC:
	c.li	a2,00000002
	addi	a1,s3,+00000014
	addi	a0,sp,+0000000E
	jal	ra,000000002306CF80

l2302010A:
	lhu	a5,s2,+0000000C
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s1,a5
	lhu	a5,s0,+0000007C
	bge	a5,s1,000000002302013C

l2302011C:
	lui	a0,00023075
	addi	a0,a0,+00000128

l23020124:
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302005C

l2302012E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302013C:
	lhu	a5,sp,+0000000E
	c.lw	s0,120(a0)
	c.li	a2,00000002
	c.addi	a5,00000001
	addi	a1,sp,+0000000E
	c.addi	a0,00000014
	sh	a5,sp,+0000000E
	jal	ra,000000002306CF80
	lw	a2,s2,+00000008
	lhu	a1,s2,+0000000C
	c.lw	s0,120(a0)
	lui	a4,0002301F
	c.mv	a5,s0
	addi	a4,a4,+0000065C
	c.li	a3,00000000
	jal	ra,0000000023025980
	lhu	a5,s2,+0000000C
	c.slli	a0,10
	c.srli	a0,00000010
	beq	a5,a0,0000000023020184

l2302017A:
	lui	a0,00023075
	addi	a0,a0,+00000140
	c.j	0000000023020124

l23020184:
	c.lw	s0,120(s1)
	c.mv	a0,s1
	jal	ra,000000002301F56A
	lhu	a5,s0,+0000007C
	bgeu	a0,a5,00000000230201E6

l23020194:
	addi	s3,s0,+00000048
	c.mv	a0,s3
	jal	ra,0000000023025234
	c.bnez	a0,000000002302012E

l230201A0:
	lhu	a4,s0,+00000046
	lhu	a5,sp,+0000000E
	bne	a4,a5,000000002302012E

l230201AC:
	c.mv	a0,s2
	jal	ra,000000002301F56A
	lhu	a1,s0,+00000044
	lhu	s1,s0,+0000007C
	c.add	s1,a1
	c.addi	s1,FFFFFFFF
	c.sub	s1,a0
	srl	s1,s1,a1
	c.mv	a0,s3
	jal	ra,0000000023025234
	sub	a0,s1,a0
	slli	a1,a0,00000010
	c.srli	a1,00000010
	slli	a5,a1,00000010
	c.srai	a5,00000010
	bge	zero,a5,000000002302012E

l230201DE:
	c.mv	a0,s0
	jal	ra,000000002301F988
	c.j	000000002302012E

l230201E6:
	c.lw	s0,4(a5)
	sw	zero,s0,+00000078
	sh	zero,s0,+0000007C
	c.lw	a5,16(a5)
	c.mv	a1,s1
	c.mv	a0,s0
	lhu	s2,sp,+0000000E
	c.jalr	a5
	c.mv	a1,a0
	bge	a0,zero,0000000023020224

l23020202:
	addi	a5,zero,-00000044
	beq	a0,a5,000000002302012E

l2302020A:
	lui	a0,00023075
	addi	a0,a0,+00000158
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302005C

l2302021C:
	c.mv	a0,s1
	jal	ra,000000002302574E
	c.j	000000002302012E

l23020224:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002301F988
	c.j	000000002302021C

;; l2cap_rx_process: 2302022E
l2cap_rx_process proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s10,00000000
	c.mv	s1,a0
	addi	s0,a0,-00000080
	addi	s3,a0,+0000000C
	addi	s4,a0,-00000038
	addi	s5,zero,-00000044
	lui	s6,00023075
	lui	s7,00023075
	lui	s8,00023075
	lui	s9,00023075

l2302026A:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230256E4
	c.mv	s2,a0
	c.bnez	a0,0000000023020292

l23020276:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.addi16sp	00000030
	c.jr	ra

l23020292:
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,00000000230251B2
	c.beqz	a0,00000000230202B2

l2302029C:
	addi	a0,s9,+00000390

l230202A0:
	jal	ra,0000000023003AC6

l230202A4:
	c.mv	a0,s0
	jal	ra,000000002302005C

l230202AA:
	c.mv	a0,s2
	jal	ra,000000002302574E
	c.j	000000002302026A

l230202B2:
	lw	a5,s1,-00000008
	c.beqz	a5,00000000230202C2

l230202B8:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230200D4
	c.j	00000000230202AA

l230202C2:
	addi	a0,s2,+00000008
	jal	ra,000000002302593A
	lhu	a5,s1,-0000003E
	c.mv	s10,a0
	addi	a0,s8,+000003B0
	bltu	a5,s10,00000000230202A0

l230202D8:
	lw	a5,s1,-0000007C
	c.lw	a5,12(a4)
	c.beqz	a4,00000000230202F6

l230202E0:
	c.mv	a0,s0
	c.jalr	a4
	sw	a0,s1,+00000FF8
	c.bnez	a0,00000000230202F0

l230202EA:
	addi	a0,s7,+000003C8
	c.j	00000000230202A0

l230202F0:
	sh	s10,s1,+00000FFC
	c.j	00000000230202B8

l230202F6:
	c.lw	a5,16(a5)
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,0000000023020310
